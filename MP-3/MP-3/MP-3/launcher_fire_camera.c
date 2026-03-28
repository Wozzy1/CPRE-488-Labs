#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define LAUNCHER_NODE "/dev/launcher0"

#define LAUNCHER_STOP  0x20
#define LAUNCHER_UP    0x02
#define LAUNCHER_DOWN  0x01
#define LAUNCHER_LEFT  0x04
#define LAUNCHER_RIGHT 0x08
#define LAUNCHER_FIRE  0x10

#define FRAME_PHYS_ADDR 0x0A000000UL
#define FRAME_WIDTH     1920
#define FRAME_HEIGHT    1080
#define FRAME_BPP       2
#define FRAME_BYTES     (FRAME_WIDTH * FRAME_HEIGHT * FRAME_BPP)

#define SAMPLE_STRIDE          4
#define MIN_TARGET_PIXELS      1500
#define HORIZONTAL_DEADBAND    10
#define VERTICAL_DEADBAND      10
#define LOCK_FRAMES_REQUIRED   3
#define REARM_MISSING_FRAMES   8
#define STARTUP_ARM_DELAY_SEC  3
#define FIRE_COOLDOWN_SEC      5
#define POST_FIRE_HOLD_SEC     1
#define FIRE_PULSE_US          500000
#define MOVE_PULSE_US          120000
#define MOVE_COOLDOWN_US       300000
#define LOOP_DELAY_US          80000
#define STATUS_PRINT_EVERY     1
#define LAUNCHER_CMD_RETRIES   20

#define RGB565_BLACK           0x0000
#define RGB565_WHITE           0xFFFF
#define RGB565_GREEN           0x07E0

static volatile sig_atomic_t keep_running = 1;

struct target_info {
  int found;
  int center_x;
  int center_y;
  unsigned int pixels;
};

static void handle_signal(int signum)
{
  (void)signum;
  keep_running = 0;
}

static void launcher_cmd(int fd, unsigned char cmd)
{
  ssize_t retval = 0;
  int retries = LAUNCHER_CMD_RETRIES;

  do {
    retval = write(fd, &cmd, 1);
    if (retval < 0) {
      fprintf(stderr, "launcher write failed: %s\n", strerror(errno));
      usleep(50000);
    } else if (retval == 0) {
      fprintf(stderr, "launcher write busy for cmd=0x%02x\n", cmd);
      usleep(10000);
    }
  } while (retval != 1 && keep_running && --retries > 0);

  if (retval != 1) {
    fprintf(stderr, "launcher command 0x%02x did not complete after retries\n", cmd);
  }
}

static void launcher_move_pulse(int fd, unsigned char cmd, useconds_t duration_us)
{
  launcher_cmd(fd, cmd);
  usleep(duration_us);
  launcher_cmd(fd, LAUNCHER_STOP);
}

static int pixel_is_red(uint16_t pixel)
{
  unsigned int r = (pixel >> 11) & 0x1F;
  unsigned int g = (pixel >> 5) & 0x3F;
  unsigned int b = pixel & 0x1F;

  return (r >= 18U) && (g <= 24U) && (b <= 16U) && (r > (b + 6U));
}

static struct target_info find_target(const uint16_t *frame)
{
  unsigned long long sum_x = 0;
  unsigned long long sum_y = 0;
  unsigned int pixels = 0;
  int y = 0;

  for (y = 0; y < FRAME_HEIGHT; y += SAMPLE_STRIDE) {
    int x = 0;
    const uint16_t *row = frame + (y * FRAME_WIDTH);

    for (x = 0; x < FRAME_WIDTH; x += SAMPLE_STRIDE) {
      if (pixel_is_red(row[x])) {
        sum_x += (unsigned int)x;
        sum_y += (unsigned int)y;
        ++pixels;
      }
    }
  }

  if (pixels < MIN_TARGET_PIXELS) {
    struct target_info missing = {0, 0, 0, pixels};
    return missing;
  }

  {
    struct target_info target;
    target.found = 1;
    target.center_x = (int)(sum_x / pixels);
    target.center_y = (int)(sum_y / pixels);
    target.pixels = pixels;
    return target;
  }
}

static int time_since_sec(time_t now, time_t then)
{
  return (int)difftime(now, then);
}

static long long monotonic_time_us(void)
{
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((long long)ts.tv_sec * 1000000LL) + (ts.tv_nsec / 1000LL);
}

static void put_pixel(uint16_t *frame, int x, int y, uint16_t color)
{
  if (x < 0 || x >= FRAME_WIDTH || y < 0 || y >= FRAME_HEIGHT) {
    return;
  }

  frame[(y * FRAME_WIDTH) + x] = color;
}

static void draw_crosshair(uint16_t *frame, int cx, int cy, uint16_t color)
{
  int i = 0;

  for (i = -20; i <= 20; ++i) {
    put_pixel(frame, cx + i, cy, color);
    put_pixel(frame, cx, cy + i, color);
  }
}

static void draw_box(uint16_t *frame, int cx, int cy, int half_w, int half_h, uint16_t color)
{
  int x = 0;
  int y = 0;

  for (x = cx - half_w; x <= cx + half_w; ++x) {
    put_pixel(frame, x, cy - half_h, color);
    put_pixel(frame, x, cy + half_h, color);
  }

  for (y = cy - half_h; y <= cy + half_h; ++y) {
    put_pixel(frame, cx - half_w, y, color);
    put_pixel(frame, cx + half_w, y, color);
  }
}

int main(void)
{
  int mem_fd = -1;
  int launcher_fd = -1;
  void *map_base = MAP_FAILED;
  uint16_t *frame = NULL;
  int lock_frames = 0;
  int launcher_stopped = 1;
  int armed_to_fire = 1;
  int missing_frames = 0;
  unsigned int loop_count = 0;
  long long next_move_time_us = 0;
  time_t last_fire_time = 0;
  time_t start_time = 0;

  signal(SIGINT, handle_signal);
  signal(SIGTERM, handle_signal);
  setvbuf(stdout, NULL, _IONBF, 0);
  setvbuf(stderr, NULL, _IONBF, 0);

  launcher_fd = open(LAUNCHER_NODE, O_RDWR);
  if (launcher_fd < 0) {
    fprintf(stderr, "failed to open %s: %s\n", LAUNCHER_NODE, strerror(errno));
    return EXIT_FAILURE;
  }

  mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
  if (mem_fd < 0) {
    fprintf(stderr, "failed to open /dev/mem: %s\n", strerror(errno));
    close(launcher_fd);
    return EXIT_FAILURE;
  }

  map_base = mmap(NULL, FRAME_BYTES, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, FRAME_PHYS_ADDR);
  if (map_base == MAP_FAILED) {
    fprintf(stderr, "mmap failed for framebuffer 0x%08lx: %s\n",
            (unsigned long)FRAME_PHYS_ADDR, strerror(errno));
    close(mem_fd);
    close(launcher_fd);
    return EXIT_FAILURE;
  }

  frame = (uint16_t *)map_base;
  launcher_cmd(launcher_fd, LAUNCHER_STOP);
  start_time = time(NULL);
  last_fire_time = start_time - POST_FIRE_HOLD_SEC;

  printf("launcher_fire_camera: monitoring framebuffer at 0x%08lx\n",
         (unsigned long)FRAME_PHYS_ADDR);

  while (keep_running) {
    struct target_info target = find_target(frame);
    const char *state = "SEARCH";

    draw_crosshair(frame, FRAME_WIDTH / 2, FRAME_HEIGHT / 2, RGB565_GREEN);

    if (!target.found) {
      lock_frames = 0;
      ++missing_frames;
      if (missing_frames >= REARM_MISSING_FRAMES) {
        armed_to_fire = 1;
      }
      if (!launcher_stopped) {
        launcher_cmd(launcher_fd, LAUNCHER_STOP);
        launcher_stopped = 1;
      }
      if ((loop_count % STATUS_PRINT_EVERY) == 0U) {
        printf("launcher_fire_camera: target not found armed=%d missing=%d\n",
               armed_to_fire, missing_frames);
      }
      ++loop_count;
      usleep(LOOP_DELAY_US);
      continue;
    }

    missing_frames = 0;

    {
      int dx = target.center_x - (FRAME_WIDTH / 2);
      int dy = target.center_y - (FRAME_HEIGHT / 2);
      int aligned_x = (dx >= -HORIZONTAL_DEADBAND) && (dx <= HORIZONTAL_DEADBAND);
      int aligned_y = (dy >= -VERTICAL_DEADBAND) && (dy <= VERTICAL_DEADBAND);
      long long now_us = monotonic_time_us();
      time_t now = time(NULL);
      int movement_allowed = time_since_sec(now, last_fire_time) >= POST_FIRE_HOLD_SEC;

      draw_box(frame, target.center_x, target.center_y, 25, 25, RGB565_WHITE);

      if (movement_allowed && now_us >= next_move_time_us && !aligned_x) {
        lock_frames = 0;
        state = (dx < 0) ? "MOVE_LEFT" : "MOVE_RIGHT";
        launcher_move_pulse(launcher_fd, (dx < 0) ? LAUNCHER_LEFT : LAUNCHER_RIGHT, MOVE_PULSE_US);
        launcher_stopped = 1;
        next_move_time_us = monotonic_time_us() + MOVE_COOLDOWN_US;
      } else if (movement_allowed && now_us >= next_move_time_us && !aligned_y) {
        lock_frames = 0;
        state = (dy < 0) ? "MOVE_UP" : "MOVE_DOWN";
        launcher_move_pulse(launcher_fd, (dy < 0) ? LAUNCHER_UP : LAUNCHER_DOWN, MOVE_PULSE_US);
        launcher_stopped = 1;
        next_move_time_us = monotonic_time_us() + MOVE_COOLDOWN_US;
      } else if (!movement_allowed && (!aligned_x || !aligned_y)) {
        lock_frames = 0;
        state = "POST_FIRE_HOLD";
      } else {
        ++lock_frames;
        state = "LOCKED";
        if (!launcher_stopped) {
          launcher_cmd(launcher_fd, LAUNCHER_STOP);
          launcher_stopped = 1;
        }

        if (armed_to_fire &&
            lock_frames >= LOCK_FRAMES_REQUIRED &&
            time_since_sec(now, start_time) >= STARTUP_ARM_DELAY_SEC &&
            time_since_sec(now, last_fire_time) >= FIRE_COOLDOWN_SEC) {
          printf("launcher_fire_camera: firing at target x=%d y=%d pixels=%u\n",
                 target.center_x, target.center_y, target.pixels);
          launcher_cmd(launcher_fd, LAUNCHER_FIRE);
          usleep(FIRE_PULSE_US);
          launcher_cmd(launcher_fd, LAUNCHER_STOP);
          launcher_stopped = 1;
          last_fire_time = now;
          armed_to_fire = 0;
          lock_frames = 0;
        }
      }

      if ((loop_count % STATUS_PRINT_EVERY) == 0U) {
        printf("launcher_fire_camera: x=%d y=%d pixels=%u state=%s dx=%d dy=%d lock=%d armed=%d\n",
               target.center_x, target.center_y, target.pixels, state, dx, dy, lock_frames, armed_to_fire);
      }
    }

    ++loop_count;
    usleep(LOOP_DELAY_US);
  }

  launcher_cmd(launcher_fd, LAUNCHER_STOP);

  if (map_base != MAP_FAILED) {
    munmap(map_base, FRAME_BYTES);
  }
  if (mem_fd >= 0) {
    close(mem_fd);
  }
  if (launcher_fd >= 0) {
    close(launcher_fd);
  }

  return EXIT_SUCCESS;
}
