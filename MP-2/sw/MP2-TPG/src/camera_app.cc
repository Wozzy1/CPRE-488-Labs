/*
 * main2.cc
 *
 *  Created on: Apr 12, 2019
 *      Author: ROGyorgE
 */

#include "./camera_app.h"
#include "xtime_l.h"

#include <stdio.h>
#include <stdbool.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "xuartps_hw.h"
#include "xgpio.h"
#include "sleep.h"
#include <math.h>
#include <string.h>
#include "ff.h"


/* SW0 comes from AXI GPIO channel 1, bit 0. */
#define SW0_MASK 0x1U
#define SW1_MASK 0x2U
#define SW2_MASK 0x4U
#define SW3_MASK 0x8U
#define SW4_MASK 0x10U
#define SW7_MASK 0x80U

/* Button bit mapping: bit4=BTNU, bit3=BTNR, bit2=BTNL, bit1=BTND, bit0=BTNC */
#define BTNC_MASK 0x1U
#define BTND_MASK 0x2U
#define BTNL_MASK 0x4U
#define BTNR_MASK 0x8U
#define BTNU_MASK 0x10U

static XGpio sw_gpio_inst;
static XGpio btn_gpio_inst;
static bool user_gpio_ready = false;

static int init_user_gpio(void)
{
  int status;

  status = XGpio_Initialize(&btn_gpio_inst, XPAR_AXI_GPIO_0_DEVICE_ID);
  if (status != XST_SUCCESS) {
    xil_printf("ERROR: AXI GPIO button init failed (%d)\r\n", status);
    return status;
  }

  status = XGpio_Initialize(&sw_gpio_inst, XPAR_AXI_GPIO_1_DEVICE_ID);
  if (status != XST_SUCCESS) {
    xil_printf("ERROR: AXI GPIO switch init failed (%d)\r\n", status);
    return status;
  }

  // All bits are board inputs for both GPIO blocks.
  XGpio_SetDataDirection(&btn_gpio_inst, 1, 0xFFFFFFFFU);
  XGpio_SetDataDirection(&sw_gpio_inst, 1, 0xFFFFFFFFU);
  user_gpio_ready = true;
  xil_printf("AXI GPIO ready (btn/switch)\r\n");
  return XST_SUCCESS;
}

int main()
{
  // Bring up board-level services first (UART, caches, HDMI I2C, camera reset GPIO).
  configure_platform();

  // Bring up HDMI output path (VTC + read VDMA + frame buffers with known test colors).
  start_output_video_pipeline(vdma_a_driver, vid, Resolution::R1920_1080_60_PP,read_master_select);

  // Bring up camera input path (write VDMA + camera mode + CSI enable).
  if (!start_input_video_pipeline(vdma_a_driver, *cam_a_ptr, Resolution::R1920_1080_60_PP, OV5640_cfg::mode_t::MODE_1080P_1920_1080_30fps_336M_MIPI, csi_baseaddr_tmp)) {
    xil_printf("ERROR: input pipeline startup failed; staying on static frame.\r\n");
    while (1) {
      sleep(1);
    }
  }

  // Run software image-processing loop (demosaic + RGB->YCbCr422 pack).
  camera_loop();

  // If camera_loop ever returns, perform clean platform shutdown.
  cleanup_platform();
}

static inline u32 access_switches(void)
{
    if (!user_gpio_ready) {
      return 0U;
    }
    return XGpio_DiscreteRead(&sw_gpio_inst, 1);
}

static inline u32 access_buttons(void)
{
    if (!user_gpio_ready) {
      return 0U;
    }
    return XGpio_DiscreteRead(&btn_gpio_inst, 1);
}

static constexpr int CAPTURE_MAX_IMAGES = 32;
static constexpr int FRAME_WIDTH = 1920;
static constexpr int FRAME_HEIGHT = 1080;
static constexpr int FRAME_BYTES = FRAME_WIDTH * FRAME_HEIGHT * 2;
// Reserve a DDR region for up to 32 raw YUV422 frames (about 132 MiB).
static constexpr uintptr_t capture_baseaddr = 0x0B200000U;
static constexpr uintptr_t zoom_baseaddr = capture_baseaddr + static_cast<uintptr_t>(CAPTURE_MAX_IMAGES) * FRAME_BYTES;
static constexpr uintptr_t ddr_end_addr = 0x20000000U;
static constexpr uintptr_t record_baseaddr = zoom_baseaddr + FRAME_BYTES;
static constexpr int RECORD_SECONDS = 10;
static constexpr int RECORD_SAMPLE_FPS = 5;
static constexpr u32 RECORD_SAMPLE_MS = 1000U / RECORD_SAMPLE_FPS;
static constexpr int RECORD_BUFFER_CAPACITY = static_cast<int>((ddr_end_addr - record_baseaddr) / FRAME_BYTES);
static constexpr int RECORD_FRAME_CAPACITY = ((RECORD_SECONDS * RECORD_SAMPLE_FPS) < RECORD_BUFFER_CAPACITY) ? (RECORD_SECONDS * RECORD_SAMPLE_FPS) : RECORD_BUFFER_CAPACITY;

static inline volatile Xuint16 *frame_store_ptr(int frame_idx)
{
  return reinterpret_cast<volatile Xuint16 *>(frame_baseaddr + static_cast<uintptr_t>(frame_idx) * FRAME_BYTES);
}

static inline volatile Xuint16 *capture_slot_ptr(int slot_idx)
{
  return reinterpret_cast<volatile Xuint16 *>(capture_baseaddr + static_cast<uintptr_t>(slot_idx) * FRAME_BYTES);
}

static inline volatile Xuint16 *zoom_frame_ptr(void)
{
  return reinterpret_cast<volatile Xuint16 *>(zoom_baseaddr);
}

static inline volatile Xuint16 *record_slot_ptr(int slot_idx)
{
  return reinterpret_cast<volatile Xuint16 *>(record_baseaddr + static_cast<uintptr_t>(slot_idx) * FRAME_BYTES);
}

static inline void copy_frame_words(volatile Xuint16 *dst, volatile Xuint16 *src)
{
  memcpy((void *)dst, (const void *)src, FRAME_BYTES);
}

static inline int current_read_frame_index(void)
{
  u32 parkptr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET);
  return static_cast<int>((parkptr & XAXIVDMA_PARKPTR_READSTR_MASK) >> XAXIVDMA_READSTR_SHIFT);
}

static inline int current_write_frame_index(void)
{
  u32 parkptr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET);
  return static_cast<int>((parkptr & XAXIVDMA_PARKPTR_WRTSTR_MASK) >> XAXIVDMA_WRTSTR_SHIFT);
}

struct CameraZoomPreset {
  int numer;
  int denom;
  const char *label;
};

static constexpr CameraZoomPreset CAMERA_ZOOM_PRESETS[] = {
  {1, 1, "1.0x"},
  {5, 4, "1.25x"},
  {3, 2, "1.5x"},
  {2, 1, "2.0x"},
};

static int current_zoom_level = 0;
static bool playback_active = false;
static bool preview_active = false;
static bool record_armed = false;
static bool record_active = false;
static bool record_playback_active = false;
static bool record_clip_ready = false;
static int record_frame_count = 0;
static int displayed_record_slot = -1;
static int playback_record_slot = 0;
static bool target_overlay_active = false;
static XTime record_start_tick = 0;
static XTime record_next_frame_tick = 0;
static XTime record_playback_next_tick = 0;
static FATFS sd_fatfs;
static bool sd_card_mounted = false;
static u32 saved_image_count = 0;
static u8 ppm_scanline[FRAME_WIDTH * 3];

enum class DisplaySource { LIVE, STATIC, ZOOM, RECORD, SW };
static DisplaySource display_source = DisplaySource::LIVE;
static int displayed_capture_slot = -1;
static bool write_stream_paused = false;
static constexpr int PARKED_FRAME_INDEX = 0;

static inline void park_mm2s_on_frame(int frame_idx)
{
  u32 parkptr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET);
  parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
  parkptr |= (static_cast<u32>(frame_idx) << XAXIVDMA_READREF_SHIFT) & XAXIVDMA_PARKPTR_READREF_MASK;
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET, parkptr);

  u32 mm2s_dmacr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, mm2s_dmacr & ~XAXIVDMA_CR_TAIL_EN_MASK);
}

static inline void unpark_mm2s(void)
{
  u32 mm2s_dmacr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET + XAXIVDMA_CR_OFFSET, mm2s_dmacr | XAXIVDMA_CR_TAIL_EN_MASK);
}

static bool pause_live_write_stream(void)
{
  if (write_stream_paused) {
    return true;
  }

  try {
    vdma_a_driver.stopWrite();
    write_stream_paused = true;
    return true;
  } catch (const std::exception& e) {
    xil_printf("ERROR: failed to pause write stream: %s\r\n", e.what());
    return false;
  }
}

static bool resume_live_write_stream(void)
{
  if (!write_stream_paused) {
    return true;
  }

  try {
    vdma_a_driver.enableWrite();
    write_stream_paused = false;
    return true;
  } catch (const std::exception& e) {
    xil_printf("WARN: write resume failed, reinitializing write stream: %s\r\n", e.what());
  }

  try {
    vdma_a_driver.resetWrite();
    vdma_a_driver.configureWrite(FRAME_WIDTH, FRAME_HEIGHT, FRAME_WIDTH, FRAME_HEIGHT);
    vdma_a_driver.enableWrite();
    write_stream_paused = false;
    return true;
  } catch (const std::exception& e) {
    xil_printf("ERROR: failed to restart write stream: %s\r\n", e.what());
    return false;
  }
}

static bool switch_display_to_live(void)
{
  if (display_source == DisplaySource::LIVE) {
    return true;
  }

  try {
    vdma_a_driver.stopRead();
  } catch (const std::exception&) {
  }
  vdma_a_driver.resetRead();
  vdma_a_driver.configureRead(FRAME_WIDTH, FRAME_HEIGHT, read_master_select);
  vdma_a_driver.enableRead();
  display_source = DisplaySource::LIVE;
  displayed_capture_slot = -1;
  xil_printf("Display source -> LIVE\r\n");
  return true;
}

static bool switch_display_to_zoom(void)
{
  if (display_source == DisplaySource::ZOOM) {
    return true;
  }

  try {
    vdma_a_driver.stopRead();
  } catch (const std::exception&) {
  }
  vdma_a_driver.resetRead();
  vdma_a_driver.configureReadFromAddress(FRAME_WIDTH, FRAME_HEIGHT, static_cast<uint32_t>(zoom_baseaddr));
  vdma_a_driver.enableRead();
  display_source = DisplaySource::ZOOM;
  displayed_capture_slot = -1;
  xil_printf("Display source -> ZOOM\r\n");
  return true;
}

static bool switch_display_to_sw(void)
{
  if (display_source == DisplaySource::SW) {
    return true;
  }

  try {
    vdma_a_driver.stopRead();
  } catch (const std::exception&) {
  }
  vdma_a_driver.resetRead();
  vdma_a_driver.configureReadFromAddress(FRAME_WIDTH, FRAME_HEIGHT, XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET));
  vdma_a_driver.enableRead();
  display_source = DisplaySource::SW;
  displayed_capture_slot = -1;
  xil_printf("Display source -> SW\r\n");
  return true;
}
static bool switch_display_to_record_slot(int slot_idx)
{
  if (slot_idx < 0 || slot_idx >= record_frame_count) {
    return false;
  }
  volatile Xuint16 *dst = zoom_frame_ptr();
  volatile Xuint16 *src = record_slot_ptr(slot_idx);
  copy_frame_words(dst, src);
  Xil_DCacheFlushRange((INTPTR)(uintptr_t)dst, FRAME_BYTES);

  if (display_source != DisplaySource::RECORD) {
    try {
      vdma_a_driver.stopRead();
    } catch (const std::exception&) {
    }
    vdma_a_driver.resetRead();
    vdma_a_driver.configureReadFromAddress(FRAME_WIDTH, FRAME_HEIGHT, static_cast<uint32_t>(zoom_baseaddr));
    vdma_a_driver.enableRead();
  }

  display_source = DisplaySource::RECORD;
  displayed_capture_slot = -1;
  displayed_record_slot = slot_idx;
  return true;
}

static bool switch_display_to_capture_slot(int slot_idx)
{
  if (slot_idx < 0 || slot_idx >= CAPTURE_MAX_IMAGES) {
    return false;
  }

  if (display_source == DisplaySource::STATIC && displayed_capture_slot == slot_idx) {
    return true;
  }

  // Copy chosen capture into a known frame-store, then park MM2S on it.
  copy_frame_words(frame_store_ptr(PARKED_FRAME_INDEX), capture_slot_ptr(slot_idx));
  Xil_DCacheFlushRange((INTPTR)(uintptr_t)frame_store_ptr(PARKED_FRAME_INDEX), FRAME_BYTES);
  park_mm2s_on_frame(PARKED_FRAME_INDEX);
  display_source = DisplaySource::STATIC;
  displayed_capture_slot = slot_idx;
  xil_printf("Display source -> STATIC slot %d\r\n", slot_idx);
  return true;
}

static void capture_current_frame_to_slot(int slot_idx)
{
  int rd_idx = current_read_frame_index();
  if (rd_idx < 0 || rd_idx >= XPAR_AXIVDMA_0_NUM_FSTORES) {
    rd_idx = 0;
  }
  volatile Xuint16 *dst = capture_slot_ptr(slot_idx);
  copy_frame_words(dst, frame_store_ptr(rd_idx));
  Xil_DCacheFlushRange((INTPTR)(uintptr_t)dst, FRAME_BYTES);
}

static int latest_completed_write_frame_index(void)
{
  int wr_idx = current_write_frame_index();
  if (wr_idx < 0 || wr_idx >= XPAR_AXIVDMA_0_NUM_FSTORES) {
    return 0;
  }

  wr_idx -= 1;
  if (wr_idx < 0) {
    wr_idx += XPAR_AXIVDMA_0_NUM_FSTORES;
  }
  return wr_idx;
}

static void capture_live_frame_to_record_slot(int slot_idx)
{
  int src_idx = latest_completed_write_frame_index();
  volatile Xuint16 *src = frame_store_ptr(src_idx);
  volatile Xuint16 *dst = record_slot_ptr(slot_idx);
  Xil_DCacheInvalidateRange((INTPTR)(uintptr_t)src, FRAME_BYTES);
  copy_frame_words(dst, src);
  Xil_DCacheFlushRange((INTPTR)(uintptr_t)dst, FRAME_BYTES);
}

static inline u8 clamp_color_channel(int value)
{
  if (value < 0) {
    return 0;
  }
  if (value > 255) {
    return 255;
  }
  return static_cast<u8>(value);
}

static inline void yuv422_pair_to_rgb888(Xuint16 yuv0, Xuint16 yuv1,
                                         u8 &r0, u8 &g0, u8 &b0,
                                         u8 &r1, u8 &g1, u8 &b1)
{
  const int cb = static_cast<int>((yuv0 >> 8) & 0xFFU) - 128;
  const int y0 = static_cast<int>(yuv0 & 0xFFU);
  const int cr = static_cast<int>((yuv1 >> 8) & 0xFFU) - 128;
  const int y1 = static_cast<int>(yuv1 & 0xFFU);

  const int c0 = y0 - 16;
  const int c1 = y1 - 16;
  const int d = cb;
  const int e = cr;

  r0 = clamp_color_channel((298 * c0 + 409 * e + 128) >> 8);
  g0 = clamp_color_channel((298 * c0 - 100 * d - 208 * e + 128) >> 8);
  b0 = clamp_color_channel((298 * c0 + 516 * d + 128) >> 8);

  r1 = clamp_color_channel((298 * c1 + 409 * e + 128) >> 8);
  g1 = clamp_color_channel((298 * c1 - 100 * d - 208 * e + 128) >> 8);
  b1 = clamp_color_channel((298 * c1 + 516 * d + 128) >> 8);
}

static bool ensure_sd_card_ready(void)
{
  if (sd_card_mounted) {
    return true;
  }

  FRESULT fr = f_mount(&sd_fatfs, "0:/", 1);
  if (fr != FR_OK) {
    xil_printf("ERROR: SD mount failed (%d)\r\n", fr);
    return false;
  }

  fr = f_mkdir("0:/PHOTOS");
  if (fr != FR_OK && fr != FR_EXIST) {
    xil_printf("ERROR: photo dir create failed (%d)\r\n", fr);
    return false;
  }

  sd_card_mounted = true;
  xil_printf("SD card mounted at 0:/PHOTOS\r\n");
  return true;
}

static bool save_capture_slot_to_sd(int slot_idx)
{
  if (slot_idx < 0 || slot_idx >= CAPTURE_MAX_IMAGES) {
    xil_printf("ERROR: invalid capture slot %d\r\n", slot_idx);
    return false;
  }

  if (!ensure_sd_card_ready()) {
    return false;
  }

  volatile Xuint16 *src = capture_slot_ptr(slot_idx);
  Xil_DCacheInvalidateRange((INTPTR)(uintptr_t)src, FRAME_BYTES);

  char filename[64];
  snprintf(filename, sizeof(filename), "0:/PHOTOS/CAP%03lu.PPM",
           static_cast<unsigned long>(saved_image_count));

  FIL fil;
  FRESULT fr = f_open(&fil, filename, FA_CREATE_ALWAYS | FA_WRITE);
  if (fr != FR_OK) {
    xil_printf("ERROR: open %s failed (%d)\r\n", filename, fr);
    return false;
  }

  char header[32];
  int header_len = snprintf(header, sizeof(header), "P6\n%d %d\n255\n", FRAME_WIDTH, FRAME_HEIGHT);
  UINT bytes_written = 0;
  fr = f_write(&fil, header, static_cast<UINT>(header_len), &bytes_written);
  if (fr != FR_OK || bytes_written != static_cast<UINT>(header_len)) {
    xil_printf("ERROR: write header failed (%d, %u)\r\n", fr, bytes_written);
    f_close(&fil);
    return false;
  }

  for (int y = 0; y < FRAME_HEIGHT; ++y) {
    for (int x = 0; x < FRAME_WIDTH; x += 2) {
      const int pixel_idx = y * FRAME_WIDTH + x;
      u8 r0, g0, b0, r1, g1, b1;
      yuv422_pair_to_rgb888(src[pixel_idx], src[pixel_idx + 1], r0, g0, b0, r1, g1, b1);

      const int line_idx = x * 3;
      ppm_scanline[line_idx + 0] = r0;
      ppm_scanline[line_idx + 1] = g0;
      ppm_scanline[line_idx + 2] = b0;
      ppm_scanline[line_idx + 3] = r1;
      ppm_scanline[line_idx + 4] = g1;
      ppm_scanline[line_idx + 5] = b1;
    }

    bytes_written = 0;
    fr = f_write(&fil, ppm_scanline, static_cast<UINT>(sizeof(ppm_scanline)), &bytes_written);
    if (fr != FR_OK || bytes_written != static_cast<UINT>(sizeof(ppm_scanline))) {
      xil_printf("ERROR: image row write failed at y=%d (%d, %u)\r\n", y, fr, bytes_written);
      f_close(&fil);
      return false;
    }
  }

  fr = f_close(&fil);
  if (fr != FR_OK) {
    xil_printf("ERROR: close %s failed (%d)\r\n", filename, fr);
    return false;
  }

  ++saved_image_count;
  xil_printf("Saved image to %s\r\n", filename);
  return true;
}

static void update_zoom_level(int next_zoom_level)
{
  if (next_zoom_level < 0) {
    next_zoom_level = 0;
  }
  int max_zoom_level = static_cast<int>(sizeof(CAMERA_ZOOM_PRESETS) / sizeof(CAMERA_ZOOM_PRESETS[0])) - 1;
  if (next_zoom_level > max_zoom_level) {
    next_zoom_level = max_zoom_level;
  }
  if (next_zoom_level == current_zoom_level) {
    return;
  }

  current_zoom_level = next_zoom_level;
  xil_printf("Zoom -> %s\r\n", CAMERA_ZOOM_PRESETS[current_zoom_level].label);
}

static void render_zoomed_live_frame(void)
{
  if (current_zoom_level == 0) {
    return;
  }

  const CameraZoomPreset& zoom = CAMERA_ZOOM_PRESETS[current_zoom_level];
  int rd_idx = current_read_frame_index();
  if (rd_idx < 0 || rd_idx >= XPAR_AXIVDMA_0_NUM_FSTORES) {
    rd_idx = 0;
  }

  volatile Xuint16 *src = frame_store_ptr(rd_idx);
  volatile Xuint16 *dst = zoom_frame_ptr();
  const int center_x = FRAME_WIDTH / 2;
  const int center_y = FRAME_HEIGHT / 2;

  Xil_DCacheInvalidateRange((INTPTR)(uintptr_t)src, FRAME_BYTES);

  for (int y = 0; y < FRAME_HEIGHT; ++y) {
    int src_y = center_y + ((y - center_y) * zoom.denom) / zoom.numer;
    if (src_y < 0) {
      src_y = 0;
    } else if (src_y >= FRAME_HEIGHT) {
      src_y = FRAME_HEIGHT - 1;
    }

    for (int x = 0; x < FRAME_WIDTH; x += 2) {
      int src_x = center_x + ((x - center_x) * zoom.denom) / zoom.numer;
      if (src_x < 0) {
        src_x = 0;
      } else if (src_x >= FRAME_WIDTH - 1) {
        src_x = FRAME_WIDTH - 2;
      }
      src_x &= ~1;

      int dst_idx0 = y * FRAME_WIDTH + x;
      int dst_idx1 = dst_idx0 + 1;
      int src_idx0 = src_y * FRAME_WIDTH + src_x;
      int src_idx1 = src_idx0 + 1;
      dst[dst_idx0] = src[src_idx0];
      dst[dst_idx1] = src[src_idx1];
    }
  }

  Xil_DCacheFlushRange((INTPTR)(uintptr_t)dst, FRAME_BYTES);
}

static void camera_interface_step(void) {
  static int capture_count = 0;
  static int next_capture_slot = 0;
  static int playback_slot = 0;
  static int preview_slot = 0;
  static int prev_sw0 = 0;
  static int prev_sw7 = 0;
  static int prev_btnc = 0;
  static int prev_btnd = 0;
  static int prev_btnl = 0;
  static int prev_btnr = 0;
  static int prev_btnu = 0;
  static XTime preview_end_tick = 0;
  const u64 preview_ticks = 2ULL * static_cast<u64>(COUNTS_PER_SECOND);

  u32 sw_data = access_switches();
  u32 btn_data = access_buttons();

  int sw0 = ((sw_data & SW0_MASK) != 0U) ? 1 : 0;
  int sw7 = ((sw_data & SW7_MASK) != 0U) ? 1 : 0;	// sw7 requests switch into software pipeline
  int btnc = ((btn_data & BTNC_MASK) != 0U) ? 1 : 0;
  int btnd = ((btn_data & BTND_MASK) != 0U) ? 1 : 0;
  int btnl = ((btn_data & BTNL_MASK) != 0U) ? 1 : 0;
  int btnr = ((btn_data & BTNR_MASK) != 0U) ? 1 : 0;
  int btnu = ((btn_data & BTNU_MASK) != 0U) ? 1 : 0;

  // Playback mode toggle via SW0.
  if (sw0 && !prev_sw0) {
    if (record_active || record_playback_active || record_armed) {
      prev_sw0 = sw0;
      prev_btnc = btnc;
      prev_btnd = btnd;
      prev_btnl = btnl;
      prev_btnr = btnr;
      prev_btnu = btnu;
      return;
    }
    if (preview_active) {
      preview_active = false;
      (void)switch_display_to_live();
      (void)resume_live_write_stream();
    }
    preview_active = false;
    playback_active = true;
    if (capture_count > 0) {
      playback_slot = (next_capture_slot - 1 + CAPTURE_MAX_IMAGES) % CAPTURE_MAX_IMAGES; // newest image
      (void)pause_live_write_stream();
      (void)switch_display_to_capture_slot(playback_slot);
    } else {
      xil_printf("Playback mode ON (no captures yet)\r\n");
    }
    xil_printf("Playback mode ON\r\n");
  } else if (!sw0 && prev_sw0) {
    playback_active = false;
    preview_active = false;
    if (current_zoom_level == 0) {
      (void)switch_display_to_live();
    } else {
      (void)switch_display_to_zoom();
    }
    (void)resume_live_write_stream();
    xil_printf("Playback mode OFF\r\n");
  }

  // Capture on BTNC rising edge while in live mode.
  if (!playback_active && !preview_active && btnc && !prev_btnc) {
    int slot = next_capture_slot;
    capture_current_frame_to_slot(slot);
    if (!save_capture_slot_to_sd(slot)) {
      xil_printf("WARN: capture kept in DDR slot %d, but SD save failed\r\n", slot);
    }
    if (capture_count < CAPTURE_MAX_IMAGES) {
      ++capture_count;
    }
    next_capture_slot = (next_capture_slot + 1) % CAPTURE_MAX_IMAGES;

    // Freeze immediately for 2 seconds by parking display and pausing writes.
    preview_slot = slot;
    (void)pause_live_write_stream();
    (void)switch_display_to_capture_slot(preview_slot);
    Capture_Frame();
    XTime now;
    XTime_GetTime(&now);
    preview_end_tick = now + preview_ticks;
    preview_active = true;
  }

  if (!playback_active && !preview_active && btnu && !prev_btnu) {
    update_zoom_level(current_zoom_level + 1);
    if (current_zoom_level == 0) {
      (void)switch_display_to_live();
    } else {
      (void)switch_display_to_zoom();
    }
  }

  if (!playback_active && !preview_active && btnd && !prev_btnd) {
    update_zoom_level(current_zoom_level - 1);
    if (current_zoom_level == 0) {
      (void)switch_display_to_live();
    } else {
      (void)switch_display_to_zoom();
    }
  }

  // Rotate through captured images in playback mode using left/right buttons.
  if (playback_active && capture_count > 0) {
    int valid_count = (capture_count < CAPTURE_MAX_IMAGES) ? capture_count : CAPTURE_MAX_IMAGES;
    int low_slot = 0;
    int high_slot = valid_count - 1;

    if (btnl && !prev_btnl) {
      if (capture_count < CAPTURE_MAX_IMAGES) {
        playback_slot = (playback_slot <= low_slot) ? high_slot : (playback_slot - 1);
      } else {
        playback_slot = (playback_slot - 1 + CAPTURE_MAX_IMAGES) % CAPTURE_MAX_IMAGES;
      }
      (void)switch_display_to_capture_slot(playback_slot);
    }

    if (btnr && !prev_btnr) {
      if (capture_count < CAPTURE_MAX_IMAGES) {
        playback_slot = (playback_slot >= high_slot) ? low_slot : (playback_slot + 1);
      } else {
        playback_slot = (playback_slot + 1) % CAPTURE_MAX_IMAGES;
      }
      (void)switch_display_to_capture_slot(playback_slot);
    }
  } else if (preview_active) {
    XTime now;
    XTime_GetTime(&now);
    if (now >= preview_end_tick) {
      preview_active = false;
      (void)switch_display_to_live();
      (void)resume_live_write_stream();
    }
  }

  prev_sw0 = sw0;
  prev_sw7 = sw7;
  prev_btnc = btnc;
  prev_btnd = btnd;
  prev_btnl = btnl;
  prev_btnr = btnr;
  prev_btnu = btnu;
}

void camera_interface(void) {
  while (1) {
    camera_interface_step();
    usleep(20000);
  }
}

void Playback_Mode(void) {
	 xil_printf("Playback Mode Activated!");
}

void Capture_Frame(void) {
	 xil_printf("Captured Frame");
}


/////////////////////////////////
// Start bringing up the board //
/////////////////////////////////
void configure_platform(void)
{
  // Initialize BSP/platform services used by the rest of the app.
  init_platform();

  // Program HDMI transmitter over I2C so display sink can lock properly.
  hdmi_config(XPAR_AXI_IIC_HDMI_BASEADDR);

  // Initialize user button/switch GPIO through the driver (safer than raw MMIO reads).
  init_user_gpio();

  xil_printf("Initializing...\r\n");

  // Start message after base platform init completes.
  xil_printf("Starting system...\r\n");
  // Assert camera reset/power GPIO low to force a clean camera restart.
  gpio_driver.clearBit(gpio_driver.Bits::CAM_GPIO0);
  // Hold reset long enough for hardware to settle.
  ::usleep(1000000);
  // Release camera reset/power GPIO high.
  gpio_driver.setBit(gpio_driver.Bits::CAM_GPIO0);
  // Wait after release so sensor is stable before I2C transactions.
  ::usleep(1000000);
  xil_printf("CAM GPIO complete\r\n");

  // Select TCA9546 I2C mux channel connected to the camera.
  muxch_a_ptr = std::make_unique<TCA9546>(iic_driver, 0, 1 << 0);
  // Create OV5640 camera driver instance on selected mux channel.
  cam_a_ptr = std::make_unique<OV5640>(*muxch_a_ptr, nopgpio);
  // Select frame-store index 0 as default MM2S master selection.
  read_master_select  = 0x00;
}


////////////////////////////////////////////
// Bring up output pipeline back-to-front //
////////////////////////////////////////////
void start_output_video_pipeline(AXI_VDMA<ScuGicInterruptController>& vdma_driver, VideoOutput& vid, Resolution VideoOutputRes, u8 master_select)
{

  // Reset VTC so timing state starts from a known baseline.
  xil_printf("\r\nVTC resetting...\r\n");
  vid.reset();

  // Reset MM2S/read side so HDMI reads start from known channel state.
  xil_printf("VDMA Read Channel resetting...\r\n");
  vdma_driver.resetRead();

  // Configure VTC + dynamic clock for requested output resolution/timing.
  xil_printf("Waiting for clocks to lock...\r\n");
  vid.configure(VideoOutputRes);
  xil_printf("Clocks locked\r\n");

  // Configure MM2S dimensions so each line/frame matches output timing.
  vdma_driver.configureRead(timing[static_cast<int>(VideoOutputRes)].h_active, timing[static_cast<int>(VideoOutputRes)].v_active,master_select);

  // Compute total bytes across all frame stores at 16 bpp (2 bytes/pixel).
  Xuint32 i;
  Xuint32 storage_size = XPAR_AXIVDMA_0_NUM_FSTORES * ((1920*1080)<<1);
  // Base pointer to contiguous frame-buffer memory region.
  volatile Xuint32 *pStorageMem = (Xuint32 *)frame_baseaddr;

  // Frame #1 - Red pixels
  for (i = 0; i < storage_size / XPAR_AXIVDMA_0_NUM_FSTORES; i += 4) {
	  *pStorageMem++ = 0xF0525A52;  // Red
  }
  // Frame #2 - Green pixels
  for (i = 0; i < storage_size / XPAR_AXIVDMA_0_NUM_FSTORES; i += 4) {
	  *pStorageMem++ = 0x36912291; // Green
  }
  // Frame #3 - Blue pixels
  for (i = 0; i < storage_size / XPAR_AXIVDMA_0_NUM_FSTORES; i += 4) {
	  *pStorageMem++ = 0x6E29F029;  // Blue
  }

  // Flush CPU cache lines so VDMA sees the initialized frame memory.
  Xil_DCacheFlush();

  // Enable timing generation first so downstream pipeline is active.
  vid.enable();

  // Start MM2S/read DMA to display initialized frames over HDMI.
  vdma_driver.enableRead();

  xil_printf("\r\nStarting HDMI Output:\r\n");
  xil_printf("If Static Image does not display within 10s restart program\r\n");
  sleep(10);

  xil_printf("Output Static Image for 5 more seconds\r\n");
  xil_printf("If Static Image currently not displaying, then restart program\r\n");
  sleep(5);
}



///////////////////////////////////////////
// Bring up input pipeline back-to-front //
///////////////////////////////////////////
bool start_input_video_pipeline(AXI_VDMA<ScuGicInterruptController>& vdma_driver, OV5640& cam, Resolution VideoOutputRes, OV5640_cfg::mode_t mode, uintptr_t csi_baseaddr)
{

  xil_printf("\r\nStart selected Video stream: 1. TPG, or 2. Camera...\r\n");
  xil_printf("CSI baseaddr = 0x%08lx\r\n", (unsigned long)csi_baseaddr);
  if (csi_baseaddr == 0U) {
    xil_printf("ERROR: CSI base address is 0; check BSP/bitstream match.\r\n");
    return false;
  }

  // Reset S2MM/write side before receiving new camera frames.
  vdma_driver.resetWrite();

  // Force CSI block disabled during reconfiguration to avoid partial frames.
  *(int *)csi_baseaddr = 0;

  // Write full 1920x1080 frame geometry so S2MM/MM2S strides match.
  // Mismatch here can leave HDMI stuck on the static startup frame.
  vdma_driver.configureWrite(1920, 1080, 1920, 1080);

  // Initialize camera over I2C and apply sensor default register sequence.
  cam.init();

  // Start S2MM DMA so incoming camera stream is written into memory.
  vdma_driver.enableWrite();

  // Configure and enable Color HW pipeline
    // Uncomment when using Color HW pipeline
  enable_color_pipeline();

  // Chose Video Input source: 1) TPG, or 2) Camera
    // Option 1: Uncomment for TPG option
  // Define convenient volatile pointers for accessing TPG registers

//  volatile unsigned int *TPG_CR       = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0);    // TPG Control
//  volatile unsigned int *TPG_Act_H    = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x10); // Active Height
//  volatile unsigned int *TPG_Act_W    = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x18); // Active Width
//  volatile unsigned int *TPG_BGP      = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x20); // Background Pattern
//  volatile unsigned int *TPG_FGP      = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x28); // Foreground Pattern
//  volatile unsigned int *TPG_MS       = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x38); // Motion Speed
//  volatile unsigned int *TPG_CF       = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0x40); // TPG Color Format

  xil_printf("Start Test Pattern Generator...\n\r");
  // Direct Memory Mapped access of TPG configuration registers
  // See TPG data sheet for configuring the TPG for other features
//  TPG_Act_H[0]  = 0x438; // Active Height
//  TPG_Act_W[0]  = 0x780; // Active Width
//  TPG_BGP[0]    = 0x0A;  // Background Pattern
//  TPG_FGP[0]    = 0x00;  // Foreground Pattern
//  TPG_MS[0]     = 0x04;  // Motion Speed
//  TPG_CF[0]     = 0x02;  // TPG Color Format
//  TPG_CR[0]     = 0x81;  // TPG Control

	// Enable CSI stream path after camera and DMA are ready.
	*(int *)csi_baseaddr = 1; // CSI Enable
	// Apply requested sensor mode (currently RAW MIPI mode in this lab setup).
	cam.set_mode(mode);
	// Enable camera auto white balance profile to improve scene brightness balance.
	cam.set_awb(OV5640_cfg::awb_t::AWB_ADVANCED);

  xil_printf("VDMA pass-through for 5 Seconds\r\n");
  sleep(5);

  return true;
}


///////////////////////////////////
// SW processing of video frames //
///////////////////////////////////
enum class BayerPattern { RGGB, BGGR, GRBG, GBRG };

enum class BayerColor { R, G, B };

static inline int clamp_int(int v, int lo, int hi)
{
  // Saturate helper prevents out-of-bounds neighbor access near image edges.
  if (v < lo) return lo;
  if (v > hi) return hi;
  return v;
}

static inline BayerColor bayer_color_at(int x, int y, BayerPattern pat)
{
  // Parity of x/y indexes determines color site in a Bayer CFA tile.
  bool yEven = ((y & 1) == 0);
  bool xEven = ((x & 1) == 0);

  switch (pat) {
    case BayerPattern::RGGB:
      if (yEven && xEven)  return BayerColor::R;
      if (yEven && !xEven) return BayerColor::G;
      if (!yEven && xEven) return BayerColor::G;
      return BayerColor::B;
    case BayerPattern::BGGR:
      if (yEven && xEven)  return BayerColor::B;
      if (yEven && !xEven) return BayerColor::G;
      if (!yEven && xEven) return BayerColor::G;
      return BayerColor::R;
    case BayerPattern::GRBG:
      if (yEven && xEven)  return BayerColor::G;
      if (yEven && !xEven) return BayerColor::R;
      if (!yEven && xEven) return BayerColor::B;
      return BayerColor::G;
    case BayerPattern::GBRG:
      if (yEven && xEven)  return BayerColor::G;
      if (yEven && !xEven) return BayerColor::B;
      if (!yEven && xEven) return BayerColor::R;
      return BayerColor::G;
  }
  return BayerColor::G;
}

static inline uint8_t raw_bayer_sample(volatile Xuint16 *pS2MM_Mem, int x, int y, int width, int height, bool low_byte)
{
  // Clamp coordinates so edge taps use nearest valid pixel instead of branching.
  int xx = clamp_int(x, 0, width - 1);
  int yy = clamp_int(y, 0, height - 1);
  // Read one 16-bit memory word produced by VDMA from camera stream.
  uint16_t w = pS2MM_Mem[yy * width + xx];
  // Lab datapath carries valid camera sample in only one byte of this 16-bit word.
  return low_byte ? static_cast<uint8_t>(w & 0x00FFU) : static_cast<uint8_t>((w >> 8) & 0x00FFU);
}

static inline uint8_t frame_word_sample(volatile Xuint16 *frame_mem, int offset_words, bool low_byte)
{
  uint16_t w = frame_mem[offset_words];
  return low_byte ? static_cast<uint8_t>(w & 0x00FFU) : static_cast<uint8_t>((w >> 8) & 0x00FFU);
}

static inline void demosaic_bilinear_pixel(volatile Xuint16 *pS2MM_Mem, int x, int y, int width, int height, BayerPattern pat, bool low_byte, uint8_t &R, uint8_t &G, uint8_t &B)
{
  // Identify which primary color this sensor site directly measures.
  BayerColor c = bayer_color_at(x, y, pat);
  // Center sample is the measured value at this pixel location.
  uint8_t center = raw_bayer_sample(pS2MM_Mem, x, y, width, height, low_byte);

  // Gather 4-neighborhood and diagonal taps for bilinear reconstruction.
  uint8_t l  = raw_bayer_sample(pS2MM_Mem, x - 1, y,     width, height, low_byte);
  uint8_t r  = raw_bayer_sample(pS2MM_Mem, x + 1, y,     width, height, low_byte);
  uint8_t u  = raw_bayer_sample(pS2MM_Mem, x,     y - 1, width, height, low_byte);
  uint8_t d  = raw_bayer_sample(pS2MM_Mem, x,     y + 1, width, height, low_byte);
  uint8_t ul = raw_bayer_sample(pS2MM_Mem, x - 1, y - 1, width, height, low_byte);
  uint8_t ur = raw_bayer_sample(pS2MM_Mem, x + 1, y - 1, width, height, low_byte);
  uint8_t dl = raw_bayer_sample(pS2MM_Mem, x - 1, y + 1, width, height, low_byte);
  uint8_t dr = raw_bayer_sample(pS2MM_Mem, x + 1, y + 1, width, height, low_byte);

  if (c == BayerColor::R) {
    // Red site: keep measured R, interpolate G from cross, B from diagonals.
    R = center;
    G = static_cast<uint8_t>((static_cast<int>(l) + static_cast<int>(r) + static_cast<int>(u) + static_cast<int>(d)) / 4);
    B = static_cast<uint8_t>((static_cast<int>(ul) + static_cast<int>(ur) + static_cast<int>(dl) + static_cast<int>(dr)) / 4);
    return;
  }

  if (c == BayerColor::B) {
    // Blue site: keep measured B, interpolate G from cross, R from diagonals.
    B = center;
    G = static_cast<uint8_t>((static_cast<int>(l) + static_cast<int>(r) + static_cast<int>(u) + static_cast<int>(d)) / 4);
    R = static_cast<uint8_t>((static_cast<int>(ul) + static_cast<int>(ur) + static_cast<int>(dl) + static_cast<int>(dr)) / 4);
    return;
  }

  // Green site: keep measured G, then infer which axis corresponds to R/B.
  G = center;
  BayerColor left_color = bayer_color_at(x - 1, y, pat);
  if (left_color == BayerColor::R) {
    // Horizontal neighbors are red, vertical neighbors are blue.
    R = static_cast<uint8_t>((static_cast<int>(l) + static_cast<int>(r)) / 2);
    B = static_cast<uint8_t>((static_cast<int>(u) + static_cast<int>(d)) / 2);
  } else {
    // Horizontal neighbors are blue, vertical neighbors are red.
    R = static_cast<uint8_t>((static_cast<int>(u) + static_cast<int>(d)) / 2);
    B = static_cast<uint8_t>((static_cast<int>(l) + static_cast<int>(r)) / 2);
  }
}

static inline uint8_t clamp_u8_int(int v)
{
  // Clamp signed integer math results into byte range for pixel storage.
  if (v < 0) return 0;
  if (v > 255) return 255;
  return static_cast<uint8_t>(v);
}

static inline void rgb_to_ycbcr(uint8_t R, uint8_t G, uint8_t B, uint8_t &Y, uint8_t &Cb, uint8_t &Cr)
{
  // Fixed-point approximation of provided RGB->YCbCr conversion matrix.
  int yv  = ((47 * static_cast<int>(R) + 157 * static_cast<int>(G) + 16 * static_cast<int>(B)) >> 8) + 16;
  int cbv = ((-26 * static_cast<int>(R) - 87 * static_cast<int>(G) + 112 * static_cast<int>(B)) >> 8) + 128;
  int crv = ((112 * static_cast<int>(R) - 102 * static_cast<int>(G) - 10 * static_cast<int>(B)) >> 8) + 128;

  // Clamp channel values to legal 8-bit range after matrix + offset math.
  Y  = clamp_u8_int(yv);
  Cb = clamp_u8_int(cbv);
  Cr = clamp_u8_int(crv);
}

inline int my_abs(int x) {
	return x < 0 ? x * -1 : x;
}

struct TargetBox {
  bool valid;
  int min_x;
  int min_y;
  int max_x;
  int max_y;
  int pixel_count;
};

struct PageBox {
  bool valid;
  int min_x;
  int min_y;
  int max_x;
  int max_y;
  int pixel_count;
};

struct TargetCross {
  bool valid;
  int center_x;
  int center_y;
};

struct TargetCircle {
  bool valid;
  int center_x;
  int center_y;
  int radius;
};

static TargetCircle last_detected_circle = {false, 0, 0, 0};
static int overlay_detection_frame_divider = 0;

static inline bool is_red_target_pixel(uint8_t r, uint8_t g, uint8_t b)
{
  const int red_over_green = static_cast<int>(r) - static_cast<int>(g);
  const int red_over_blue = static_cast<int>(r) - static_cast<int>(b);
  const int green_blue_gap = my_abs(static_cast<int>(g) - static_cast<int>(b));
  const int red_strength = red_over_green + red_over_blue;

  return (r >= 122U) &&
         (red_over_green >= 34) &&
         (red_over_blue >= 34) &&
         (red_strength >= 82) &&
         (g <= 168U) &&
         (b <= 168U) &&
         (green_blue_gap <= 55);
}

static inline bool is_white_page_pixel(uint8_t r, uint8_t g, uint8_t b)
{
  const int max_rgb = (r > g) ? ((r > b) ? r : b) : ((g > b) ? g : b);
  const int min_rgb = (r < g) ? ((r < b) ? r : b) : ((g < b) ? g : b);
  return (r >= 150U) &&
         (g >= 150U) &&
         (b >= 150U) &&
         ((max_rgb - min_rgb) <= 55);
}

static inline void reset_target_box(TargetBox &box)
{
  box.valid = false;
  box.min_x = FRAME_WIDTH;
  box.min_y = FRAME_HEIGHT;
  box.max_x = -1;
  box.max_y = -1;
  box.pixel_count = 0;
}

static inline void reset_page_box(PageBox &box)
{
  box.valid = false;
  box.min_x = FRAME_WIDTH;
  box.min_y = FRAME_HEIGHT;
  box.max_x = -1;
  box.max_y = -1;
  box.pixel_count = 0;
}

static inline void accumulate_target_pixel(TargetBox &box, int x, int y)
{
  if (x < box.min_x) box.min_x = x;
  if (x > box.max_x) box.max_x = x;
  if (y < box.min_y) box.min_y = y;
  if (y > box.max_y) box.max_y = y;
  ++box.pixel_count;
}

static inline void accumulate_page_pixel(PageBox &box, int x, int y)
{
  if (x < box.min_x) box.min_x = x;
  if (x > box.max_x) box.max_x = x;
  if (y < box.min_y) box.min_y = y;
  if (y > box.max_y) box.max_y = y;
  ++box.pixel_count;
}

static bool detect_white_page_box(volatile Xuint16 *pS2MM_Mem, int width, int height,
                                  BayerPattern pat, bool low_byte, PageBox &box)
{
  reset_page_box(box);

  static constexpr int X_STEP = 8;
  static constexpr int Y_STEP = 8;
  static constexpr int MIN_PAGE_PIXELS = 500;
  static constexpr int MIN_PAGE_WIDTH = FRAME_WIDTH / 5;
  static constexpr int MIN_PAGE_HEIGHT = FRAME_HEIGHT / 5;

  for (int y = 0; y < height; y += Y_STEP) {
    const int src_y = height - 1 - y;
    for (int x = 0; x < width; x += X_STEP) {
      uint8_t r, g, b;
      demosaic_bilinear_pixel(pS2MM_Mem, x, src_y, width, height, pat, low_byte, r, g, b);
      if (is_white_page_pixel(r, g, b)) {
        accumulate_page_pixel(box, x, y);
      }
    }
  }

  if (box.pixel_count < MIN_PAGE_PIXELS || box.max_x < box.min_x || box.max_y < box.min_y) {
    reset_page_box(box);
    return false;
  }

  box.min_x = clamp_int(box.min_x - 12, 0, width - 1);
  box.min_y = clamp_int(box.min_y - 12, 0, height - 1);
  box.max_x = clamp_int(box.max_x + 12, 0, width - 1);
  box.max_y = clamp_int(box.max_y + 12, 0, height - 1);

  const int page_width = box.max_x - box.min_x + 1;
  const int page_height = box.max_y - box.min_y + 1;
  if (page_width < MIN_PAGE_WIDTH || page_height < MIN_PAGE_HEIGHT) {
    reset_page_box(box);
    return false;
  }

  box.valid = true;
  return true;
}

static bool detect_red_target_box(volatile Xuint16 *pS2MM_Mem, int width, int height,
                                  BayerPattern pat, bool low_byte,
                                  const PageBox &page_box, TargetBox &box)
{
  reset_target_box(box);

  static constexpr int X_STEP = 4;
  static constexpr int Y_STEP = 4;
  static constexpr int MIN_TARGET_PIXELS = 40;
  static constexpr int MIN_BOX_WIDTH = 12;
  static constexpr int MIN_BOX_HEIGHT = 12;
  static constexpr int MAX_BOX_WIDTH = FRAME_WIDTH / 2;
  static constexpr int MAX_BOX_HEIGHT = FRAME_HEIGHT / 2;

  int start_x = 0;
  int start_y = 0;
  int end_x = width - 1;
  int end_y = height - 1;
  if (page_box.valid) {
    const int page_width = page_box.max_x - page_box.min_x + 1;
    const int page_height = page_box.max_y - page_box.min_y + 1;
    start_x = clamp_int(page_box.min_x + page_width / 8, 0, width - 1);
    end_x = clamp_int(page_box.max_x - page_width / 8, 0, width - 1);
    start_y = clamp_int(page_box.min_y + page_height / 8, 0, height - 1);
    end_y = clamp_int(page_box.max_y - page_height / 8, 0, height - 1);
  }

  for (int y = start_y; y <= end_y; y += Y_STEP) {
    const int src_y = height - 1 - y;
    for (int x = start_x; x <= end_x; x += X_STEP) {
      uint8_t r, g, b;
      demosaic_bilinear_pixel(pS2MM_Mem, x, src_y, width, height, pat, low_byte, r, g, b);
      if (is_red_target_pixel(r, g, b)) {
        accumulate_target_pixel(box, x, y);
      }
    }
  }

  if (box.pixel_count < MIN_TARGET_PIXELS || box.max_x < box.min_x || box.max_y < box.min_y) {
    reset_target_box(box);
    return false;
  }

  box.min_x = clamp_int(box.min_x - 8, 0, width - 1);
  box.min_y = clamp_int(box.min_y - 8, 0, height - 1);
  box.max_x = clamp_int(box.max_x + 8, 0, width - 1);
  box.max_y = clamp_int(box.max_y + 8, 0, height - 1);

  const int box_width = box.max_x - box.min_x + 1;
  const int box_height = box.max_y - box.min_y + 1;
  if (box_width < MIN_BOX_WIDTH || box_height < MIN_BOX_HEIGHT ||
      box_width > MAX_BOX_WIDTH || box_height > MAX_BOX_HEIGHT) {
    reset_target_box(box);
    return false;
  }

  box.valid = true;
  return true;
}

static inline bool pixel_on_target_box_border(const TargetBox &box, int x, int y)
{
  if (!box.valid) {
    return false;
  }

  static constexpr int BORDER_THICKNESS = 4;
  const bool within_x = (x >= box.min_x && x <= box.max_x);
  const bool within_y = (y >= box.min_y && y <= box.max_y);
  const bool on_left = within_y && (x >= box.min_x) && (x < box.min_x + BORDER_THICKNESS);
  const bool on_right = within_y && (x <= box.max_x) && (x > box.max_x - BORDER_THICKNESS);
  const bool on_top = within_x && (y >= box.min_y) && (y < box.min_y + BORDER_THICKNESS);
  const bool on_bottom = within_x && (y <= box.max_y) && (y > box.max_y - BORDER_THICKNESS);

  return on_left || on_right || on_top || on_bottom;
}

static inline bool sample_rgb_from_yuv_frame(volatile Xuint16 *src, int width, int height, int x, int y,
                                             u8 &r, u8 &g, u8 &b)
{
  if (x < 0 || x >= width || y < 0 || y >= height) {
    r = g = b = 0;
    return false;
  }

  const int pair_x = x & ~1;
  const int idx = y * width + pair_x;
  u8 r0, g0, b0, r1, g1, b1;
  yuv422_pair_to_rgb888(src[idx], src[idx + 1], r0, g0, b0, r1, g1, b1);
  if ((x & 1) == 0) {
    r = r0;
    g = g0;
    b = b0;
  } else {
    r = r1;
    g = g1;
    b = b1;
  }
  return true;
}

static bool pixel_has_nearby_red(volatile Xuint16 *src, int width, int height, int x, int y)
{
  static const int red_probe_offsets[][2] = {
    {-20, 0}, {-12, 0}, {12, 0}, {20, 0},
    {0, -20}, {0, -12}, {0, 12}, {0, 20},
    {-14, -14}, {14, -14}, {-14, 14}, {14, 14}
  };

  for (unsigned i = 0; i < (sizeof(red_probe_offsets) / sizeof(red_probe_offsets[0])); ++i) {
    u8 r, g, b;
    if (!sample_rgb_from_yuv_frame(src, width, height,
                                   x + red_probe_offsets[i][0],
                                   y + red_probe_offsets[i][1],
                                   r, g, b)) {
      continue;
    }
    if (is_red_target_pixel(r, g, b)) {
      return true;
    }
  }

  return false;
}

static bool is_target_white_mask_pixel(volatile Xuint16 *src, int width, int height, int x, int y)
{
  u8 r, g, b;
  if (!sample_rgb_from_yuv_frame(src, width, height, x, y, r, g, b)) {
    return false;
  }

  if (!is_white_page_pixel(r, g, b)) {
    return false;
  }

  return pixel_has_nearby_red(src, width, height, x, y);
}

static bool is_target_white_edge_pixel(volatile Xuint16 *src, int width, int height, int x, int y)
{
  if (!is_target_white_mask_pixel(src, width, height, x, y)) {
    return false;
  }

  static const int edge_offsets[8][2] = {
    {-4, 0}, {4, 0}, {0, -4}, {0, 4},
    {-4, -4}, {4, -4}, {-4, 4}, {4, 4}
  };

  int white_neighbors = 0;
  for (int i = 0; i < 8; ++i) {
    if (is_target_white_mask_pixel(src, width, height,
                                   x + edge_offsets[i][0],
                                   y + edge_offsets[i][1])) {
      ++white_neighbors;
    }
  }

  return white_neighbors <= 6;
}

static int circle_angle_bin(int dx, int dy)
{
  const int adx = my_abs(dx);
  const int ady = my_abs(dy);

  if (adx >= ady) {
    if (dx >= 0) {
      if (dy <= 0) {
        return (ady * 3 <= adx) ? 0 : 1;
      }
      return (ady * 3 <= adx) ? 11 : 10;
    }
    if (dy <= 0) {
      return (ady * 3 <= adx) ? 6 : 5;
    }
    return (ady * 3 <= adx) ? 6 : 7;
  }

  if (dy <= 0) {
    if (dx >= 0) {
      return (adx * 3 <= ady) ? 3 : 2;
    }
    return (adx * 3 <= ady) ? 3 : 4;
  }

  if (dx >= 0) {
    return (adx * 3 <= ady) ? 9 : 10;
  }
  return (adx * 3 <= ady) ? 9 : 8;
}

static bool evaluate_circle_from_seed(volatile Xuint16 *src, int width, int height,
                                      int seed_x, int seed_y, TargetCircle &best_circle)
{
  bool found = false;
  int best_score = 0;
  static constexpr int SAMPLE_STEP = 6;
  static constexpr int START_SPAN = 40;
  static constexpr int SPAN_STEP = 24;
  static constexpr int MAX_SPAN = FRAME_HEIGHT / 3;

  for (int half_span = START_SPAN; half_span <= MAX_SPAN; half_span += SPAN_STEP) {
    const int min_x = clamp_int(seed_x - half_span, 0, width - 1);
    const int max_x = clamp_int(seed_x + half_span, 0, width - 1);
    const int min_y = clamp_int(seed_y - half_span, 0, height - 1);
    const int max_y = clamp_int(seed_y + half_span, 0, height - 1);

    int white_min_x = width;
    int white_max_x = -1;
    int white_min_y = height;
    int white_max_y = -1;
    int white_count = 0;

    for (int y = min_y; y <= max_y; y += SAMPLE_STEP) {
      for (int x = min_x; x <= max_x; x += SAMPLE_STEP) {
        if (!is_target_white_mask_pixel(src, width, height, x, y)) {
          continue;
        }
        ++white_count;
        if (x < white_min_x) white_min_x = x;
        if (x > white_max_x) white_max_x = x;
        if (y < white_min_y) white_min_y = y;
        if (y > white_max_y) white_max_y = y;
      }
    }

    if (white_count < 10 || white_max_x <= white_min_x || white_max_y <= white_min_y) {
      continue;
    }

    const int center_x = (white_min_x + white_max_x) / 2;
    const int center_y = (white_min_y + white_max_y) / 2;
    const int radius_x = (white_max_x - white_min_x) / 2;
    const int radius_y = (white_max_y - white_min_y) / 2;
    const int radius = (radius_x + radius_y) / 2;
    if (radius < 20 || radius > half_span) {
      continue;
    }

    const int tolerance = (radius / 5 > 6) ? (radius / 5) : 6;
    int support = 0;
    int edge_support = 0;
    double radius_error_sum = 0.0;
    bool bins[12] = {false};
    int covered_bins = 0;

    for (int y = min_y; y <= max_y; y += SAMPLE_STEP) {
      for (int x = min_x; x <= max_x; x += SAMPLE_STEP) {
        if (!is_target_white_mask_pixel(src, width, height, x, y)) {
          continue;
        }

        const int dx = x - center_x;
        const int dy = y - center_y;
        const int dist = static_cast<int>(sqrtf(static_cast<float>(dx * dx + dy * dy)) + 0.5f);
        if (my_abs(dist - radius) > tolerance) {
          continue;
        }

        ++support;
        radius_error_sum += static_cast<double>(my_abs(dist - radius));
        if (is_target_white_edge_pixel(src, width, height, x, y)) {
          ++edge_support;
        }

        const int bin = circle_angle_bin(dx, dy);
        if (!bins[bin]) {
          bins[bin] = true;
          ++covered_bins;
        }
      }
    }

    if (support < 8 || edge_support < 5 || covered_bins < 3) {
      continue;
    }

    const double mean_error = radius_error_sum / static_cast<double>(support);
    if (mean_error > static_cast<double>(tolerance)) {
      continue;
    }

    const int roundness_penalty = my_abs(radius_x - radius_y);
    const int score = support * 8 + edge_support * 6 + covered_bins * 20 - roundness_penalty * 2;
    if (!found || score > best_score) {
      found = true;
      best_score = score;
      best_circle.valid = true;
      best_circle.center_x = center_x;
      best_circle.center_y = center_y;
      best_circle.radius = radius;
    }
  }

  return found;
}

static bool target_pattern_matches(volatile Xuint16 *src, int width, int height, int center_x, int center_y, int radius_guess)
{
  if (radius_guess < 20) {
    return false;
  }

  static const int numerators[] = {18, 36, 54, 72, 88};
  static const bool expect_red[] = {true, false, true, false, true};
  int matched_bands = 0;

  for (int i = 0; i < 5; ++i) {
    const int radius = (radius_guess * numerators[i]) / 100;
    int red_hits = 0;
    int white_hits = 0;
    int samples = 0;

    const int sample_offsets[8][2] = {
      { radius, 0 }, {-radius, 0 }, { 0, radius }, { 0, -radius },
      { radius * 7 / 10, radius * 7 / 10 }, { -radius * 7 / 10, radius * 7 / 10 },
      { radius * 7 / 10, -radius * 7 / 10 }, { -radius * 7 / 10, -radius * 7 / 10 }
    };

    for (int s = 0; s < 8; ++s) {
      u8 r, g, b;
      if (!sample_rgb_from_yuv_frame(src, width, height,
                                     center_x + sample_offsets[s][0],
                                     center_y + sample_offsets[s][1],
                                     r, g, b)) {
        continue;
      }
      ++samples;
      if (is_red_target_pixel(r, g, b)) {
        ++red_hits;
      } else if (is_white_page_pixel(r, g, b)) {
        ++white_hits;
      }
    }

    if (samples < 5) {
      continue;
    }

    if (expect_red[i]) {
      if (red_hits >= 3) {
        ++matched_bands;
      }
    } else {
      if (white_hits >= 3) {
        ++matched_bands;
      }
    }
  }

  return matched_bands >= 3;
}

static bool target_center_has_strong_red_mass(volatile Xuint16 *src, int width, int height,
                                              int center_x, int center_y, int radius_guess)
{
  if (radius_guess < 16) {
    return false;
  }

  const int inner_radius = radius_guess / 3;
  const int outer_radius = radius_guess;
  int inner_red_hits = 0;
  int outer_red_hits = 0;
  int sample_count = 0;

  for (int dy = -outer_radius; dy <= outer_radius; dy += 6) {
    for (int dx = -outer_radius; dx <= outer_radius; dx += 6) {
      const int dist2 = dx * dx + dy * dy;
      if (dist2 > outer_radius * outer_radius) {
        continue;
      }

      u8 r, g, b;
      if (!sample_rgb_from_yuv_frame(src, width, height, center_x + dx, center_y + dy, r, g, b)) {
        continue;
      }

      ++sample_count;
      if (is_red_target_pixel(r, g, b)) {
        if (dist2 <= inner_radius * inner_radius) {
          ++inner_red_hits;
        } else {
          ++outer_red_hits;
        }
      }
    }
  }

  if (sample_count < 20) {
    return false;
  }

  return (inner_red_hits >= 4) && (outer_red_hits >= 8);
}

static bool detect_red_target_box_from_yuv_frame(volatile Xuint16 *src, int width, int height, TargetBox &box)
{
  reset_target_box(box);
  PageBox page_box;
  reset_page_box(page_box);

  static constexpr int X_STEP = 8;
  static constexpr int Y_STEP = 8;
  for (int y = 0; y < height; y += Y_STEP) {
    for (int x = 0; x < width; x += X_STEP) {
      const int pair_x = x & ~1;
      const int idx = y * width + pair_x;
      u8 r0, g0, b0, r1, g1, b1;
      yuv422_pair_to_rgb888(src[idx], src[idx + 1], r0, g0, b0, r1, g1, b1);
      if (is_white_page_pixel(r0, g0, b0)) {
        accumulate_page_pixel(page_box, pair_x, y);
      }
      if (is_white_page_pixel(r1, g1, b1)) {
        accumulate_page_pixel(page_box, pair_x + 1, y);
      }
    }
  }

  bool page_visible = false;
  if (page_box.pixel_count >= 400 && page_box.max_x >= page_box.min_x && page_box.max_y >= page_box.min_y) {
    page_box.min_x = clamp_int(page_box.min_x - 12, 0, width - 1);
    page_box.min_y = clamp_int(page_box.min_y - 12, 0, height - 1);
    page_box.max_x = clamp_int(page_box.max_x + 12, 0, width - 1);
    page_box.max_y = clamp_int(page_box.max_y + 12, 0, height - 1);
    page_box.valid = true;
    page_visible = true;
  }

  int start_x = 0;
  int end_x = width - 2;
  int start_y = 0;
  int end_y = height - 1;
  int allowed_width = width;
  int allowed_height = height;
  if (page_visible) {
    const int page_width = page_box.max_x - page_box.min_x + 1;
    const int page_height = page_box.max_y - page_box.min_y + 1;
    start_x = clamp_int(page_box.min_x - page_width / 8, 0, width - 2);
    end_x = clamp_int(page_box.max_x + page_width / 8, 0, width - 2);
    start_y = clamp_int(page_box.min_y - page_height / 8, 0, height - 1);
    end_y = clamp_int(page_box.max_y + page_height / 8, 0, height - 1);
    allowed_width = page_width * 5 / 4;
    allowed_height = page_height * 5 / 4;
  }
  start_x &= ~1;
  end_x &= ~1;

  u32 sum_x = 0;
  u32 sum_y = 0;

  for (int y = start_y; y <= end_y; y += 4) {
    for (int x = start_x; x <= end_x; x += 4) {
      const int idx = y * width + (x & ~1);
      u8 r0, g0, b0, r1, g1, b1;
      yuv422_pair_to_rgb888(src[idx], src[idx + 1], r0, g0, b0, r1, g1, b1);
      if (is_red_target_pixel(r0, g0, b0)) {
        accumulate_target_pixel(box, x, y);
        sum_x += static_cast<u32>(x);
        sum_y += static_cast<u32>(y);
      }
      if (is_red_target_pixel(r1, g1, b1)) {
        accumulate_target_pixel(box, x + 1, y);
        sum_x += static_cast<u32>(x + 1);
        sum_y += static_cast<u32>(y);
      }
    }
  }

  if (box.pixel_count < 45 || box.max_x < box.min_x || box.max_y < box.min_y) {
    reset_target_box(box);
    return false;
  }

  int center_x = static_cast<int>(sum_x / static_cast<u32>(box.pixel_count));
  int center_y = static_cast<int>(sum_y / static_cast<u32>(box.pixel_count));
  if (page_visible) {
    center_x = (page_box.min_x + page_box.max_x) / 2;
    center_y = (page_box.min_y + page_box.max_y) / 2;
  }

  int max_dx = 0;
  int max_dy = 0;
  for (int y = start_y; y <= end_y; y += 4) {
    for (int x = start_x; x <= end_x; x += 4) {
      const int idx = y * width + (x & ~1);
      u8 r0, g0, b0, r1, g1, b1;
      yuv422_pair_to_rgb888(src[idx], src[idx + 1], r0, g0, b0, r1, g1, b1);
      if (is_red_target_pixel(r0, g0, b0)) {
        const int dx = my_abs(x - center_x);
        const int dy = my_abs(y - center_y);
        if (dx > max_dx) max_dx = dx;
        if (dy > max_dy) max_dy = dy;
      }
      if (is_red_target_pixel(r1, g1, b1)) {
        const int dx = my_abs((x + 1) - center_x);
        const int dy = my_abs(y - center_y);
        if (dx > max_dx) max_dx = dx;
        if (dy > max_dy) max_dy = dy;
      }
    }
  }

  const int half_width = max_dx + 28;
  const int half_height = max_dy + 28;
  const int radius_guess = (half_width > half_height) ? half_width : half_height;
  const bool pattern_ok = target_pattern_matches(src, width, height, center_x, center_y, radius_guess);
  const bool mass_ok = target_center_has_strong_red_mass(src, width, height, center_x, center_y, radius_guess);
  if (!pattern_ok && !mass_ok) {
    reset_target_box(box);
    return false;
  }

  box.min_x = clamp_int(center_x - half_width, 0, width - 1);
  box.min_y = clamp_int(center_y - half_height, 0, height - 1);
  box.max_x = clamp_int(center_x + half_width, 0, width - 1);
  box.max_y = clamp_int(center_y + half_height, 0, height - 1);
  const int box_width = box.max_x - box.min_x + 1;
  const int box_height = box.max_y - box.min_y + 1;
  if (box_width < 30 || box_height < 30 ||
      box_width > allowed_width || box_height > allowed_height) {
    reset_target_box(box);
    return false;
  }

  box.valid = true;
  return true;
}

static bool detect_red_target_cross_from_yuv_frame(volatile Xuint16 *src, int width, int height, TargetCross &cross)
{
  cross.valid = false;
  cross.center_x = 0;
  cross.center_y = 0;

  static u16 row_red_counts[FRAME_HEIGHT];
  static u16 col_red_counts[FRAME_WIDTH];
  memset(row_red_counts, 0, sizeof(row_red_counts));
  memset(col_red_counts, 0, sizeof(col_red_counts));

  int start_x = 0;
  int end_x = width - 2;
  int start_y = 0;
  int end_y = height - 1;
  start_x &= ~1;
  end_x &= ~1;

  int total_red_hits = 0;
  static constexpr int SAMPLE_STEP = 2;
  for (int y = start_y; y <= end_y; y += SAMPLE_STEP) {
    for (int x = start_x; x <= end_x; x += SAMPLE_STEP) {
      const int idx = y * width + (x & ~1);
      u8 r0, g0, b0, r1, g1, b1;
      yuv422_pair_to_rgb888(src[idx], src[idx + 1], r0, g0, b0, r1, g1, b1);
      if (is_red_target_pixel(r0, g0, b0)) {
        ++row_red_counts[y];
        ++col_red_counts[x];
        ++total_red_hits;
      }
      if (is_red_target_pixel(r1, g1, b1)) {
        ++row_red_counts[y];
        ++col_red_counts[x + 1];
        ++total_red_hits;
      }
    }
  }

  if (total_red_hits < 20) {
    return false;
  }

  int best_row = -1;
  int best_row_count = 0;
  for (int y = start_y; y <= end_y; ++y) {
    if (row_red_counts[y] > best_row_count) {
      best_row_count = row_red_counts[y];
      best_row = y;
    }
  }

  int best_col = -1;
  int best_col_count = 0;
  for (int x = start_x; x <= end_x; ++x) {
    if (col_red_counts[x] > best_col_count) {
      best_col_count = col_red_counts[x];
      best_col = x;
    }
  }

  if (best_row < 0 || best_col < 0 || best_row_count < 3 || best_col_count < 3) {
    return false;
  }

  cross.valid = true;
  cross.center_x = best_col;
  cross.center_y = best_row;
  return true;
}

static bool detect_white_target_circle_from_yuv_frame(volatile Xuint16 *src, int width, int height, TargetCircle &circle)
{
  circle.valid = false;
  circle.center_x = 0;
  circle.center_y = 0;
  circle.radius = 0;
  const int scan_row_step = height / 8;
  const int x_step = 8;
  bool found = false;
  int best_score = 0;

  for (int row = scan_row_step / 2; row < height; row += scan_row_step) {
    for (int x = 0; x < width; x += x_step) {
      if (!is_target_white_mask_pixel(src, width, height, x, row)) {
        continue;
      }

      TargetCircle candidate = {};
      if (!evaluate_circle_from_seed(src, width, height, x, row, candidate)) {
        continue;
      }

      const int score = candidate.radius;
      if (!found || score > best_score) {
        found = true;
        best_score = score;
        circle = candidate;
      }

      x += candidate.radius;
    }
  }

  return found;
}

static inline void draw_red_pair(volatile Xuint16 *dst, int width, int height, int x, int y)
{
  if (x < 0 || x >= width || y < 0 || y >= height) {
    return;
  }

  static constexpr u8 RED_Y = 82U;
  static constexpr u8 RED_CB = 90U;
  static constexpr u8 RED_CR = 240U;

  const int pair_x = clamp_int(x & ~1, 0, width - 2);
  const int idx = y * width + pair_x;
  dst[idx] = static_cast<uint16_t>((static_cast<uint16_t>(RED_CB) << 8) | RED_Y);
  dst[idx + 1] = static_cast<uint16_t>((static_cast<uint16_t>(RED_CR) << 8) | RED_Y);
}

static void render_target_overlay_frame(void)
{
  const int src_idx = latest_completed_write_frame_index();
  volatile Xuint16 *src = frame_store_ptr(src_idx);
  volatile Xuint16 *dst = zoom_frame_ptr();
  Xil_DCacheInvalidateRange((INTPTR)(uintptr_t)src, FRAME_BYTES);
  copy_frame_words(dst, src);

  TargetCircle circle = last_detected_circle;
  const bool should_refresh_detection = (overlay_detection_frame_divider == 0);
  overlay_detection_frame_divider = (overlay_detection_frame_divider + 1) % 3;

  if (should_refresh_detection) {
    if (detect_white_target_circle_from_yuv_frame(src, FRAME_WIDTH, FRAME_HEIGHT, circle)) {
      last_detected_circle = circle;
    } else {
      last_detected_circle.valid = false;
      circle.valid = false;
    }
  }

  if (circle.valid) {
    static constexpr int OUTLINE_THICKNESS = 3;
    static constexpr int CROSS_HALF_SIZE = 18;
    const int radius_sq = circle.radius * circle.radius;

    for (int y = clamp_int(circle.center_y - circle.radius - OUTLINE_THICKNESS, 0, FRAME_HEIGHT - 1);
         y <= clamp_int(circle.center_y + circle.radius + OUTLINE_THICKNESS, 0, FRAME_HEIGHT - 1);
         ++y) {
      for (int x = clamp_int(circle.center_x - circle.radius - OUTLINE_THICKNESS, 0, FRAME_WIDTH - 1);
           x <= clamp_int(circle.center_x + circle.radius + OUTLINE_THICKNESS, 0, FRAME_WIDTH - 1);
           ++x) {
        const int dx = x - circle.center_x;
        const int dy = y - circle.center_y;
        const int dist_sq = dx * dx + dy * dy;
        const int delta = my_abs(dist_sq - radius_sq);
        if (delta <= (2 * circle.radius * OUTLINE_THICKNESS)) {
          draw_red_pair(dst, FRAME_WIDTH, FRAME_HEIGHT, x, y);
        }
      }
    }

    for (int y = clamp_int(circle.center_y - 2, 0, FRAME_HEIGHT - 1);
         y <= clamp_int(circle.center_y + 2, 0, FRAME_HEIGHT - 1);
         ++y) {
      for (int x = clamp_int(circle.center_x - CROSS_HALF_SIZE, 0, FRAME_WIDTH - 1);
           x <= clamp_int(circle.center_x + CROSS_HALF_SIZE, 0, FRAME_WIDTH - 1);
           ++x) {
        draw_red_pair(dst, FRAME_WIDTH, FRAME_HEIGHT, x, y);
      }
    }

    for (int x = clamp_int(circle.center_x - 2, 0, FRAME_WIDTH - 1);
         x <= clamp_int(circle.center_x + 2, 0, FRAME_WIDTH - 1);
         ++x) {
      for (int y = clamp_int(circle.center_y - CROSS_HALF_SIZE, 0, FRAME_HEIGHT - 1);
           y <= clamp_int(circle.center_y + CROSS_HALF_SIZE, 0, FRAME_HEIGHT - 1);
           ++y) {
        draw_red_pair(dst, FRAME_WIDTH, FRAME_HEIGHT, x, y);
      }
    }
  }

  Xil_DCacheFlushRange((INTPTR)(uintptr_t)dst, FRAME_BYTES);
  target_overlay_active = true;
}

void camera_loop(void)
{
  // Holds combined VDMA park register (controls selected read/write frame store).
  Xuint32 parkptr;
  // Snapshot of S2MM control register for park/unpark operations.
  Xuint32 vdma_S2MM_DMACR;
  // Snapshot of MM2S control register for park/unpark operations.
  Xuint32 vdma_MM2S_DMACR;
  // Frame-loop counter used for periodic FPS reporting.
  int j;

  xil_printf("\r\nEntering SW processing loop...\r\n");

  // In HW-pipeline mode, keep VDMA in its normal circular/genlock path:
  // camera -> color pipeline -> S2MM and MM2S -> HDMI.
  XTime fps_window_start;
  XTime_GetTime(&fps_window_start);
  int last_write_frame_idx = current_write_frame_index();
  u64 hw_frame_count = 0;
  int prev_sw1 = 0;
  int prev_sw2 = 0;
  int prev_sw7 = 0;
  while (1) {
    camera_interface_step();

    u32 sw_data = access_switches();
    int sw1 = ((sw_data & SW1_MASK) != 0U) ? 1 : 0;
    int sw2 = ((sw_data & SW2_MASK) != 0U) ? 1 : 0;
    int sw7 = ((sw_data & 0x80) != 0U) ? 1 : 0;
    XTime now;
    XTime_GetTime(&now);

    if (sw7 && !prev_sw7) {
      xil_printf("SW7 asserted: switching to software processing pipeline\r\n");
    	break;
    }

    if (sw1 && !prev_sw1 && !record_active) {
      record_armed = true;
      record_playback_active = false;
      record_clip_ready = false;
      record_frame_count = 0;
      playback_record_slot = 0;
      displayed_record_slot = -1;
      record_start_tick = now + static_cast<u64>(COUNTS_PER_SECOND);
      if (current_zoom_level == 0) {
        (void)switch_display_to_live();
      }
      xil_printf("Recording armed: starting in 1 second\r\n");
    }

    if (record_armed && now >= record_start_tick) {
      record_armed = false;
      record_active = true;
      record_frame_count = 0;
      record_next_frame_tick = now;
      xil_printf("Recording 10-second clip at %d FPS\r\n", RECORD_SAMPLE_FPS);
    }

    if (record_active && now >= record_next_frame_tick) {
      if (record_frame_count < RECORD_FRAME_CAPACITY) {
        capture_live_frame_to_record_slot(record_frame_count);
        ++record_frame_count;
        record_next_frame_tick += (static_cast<u64>(COUNTS_PER_SECOND) * RECORD_SAMPLE_MS) / 1000ULL;
      }
      if (record_frame_count >= RECORD_FRAME_CAPACITY) {
        record_active = false;
        record_clip_ready = (record_frame_count > 0);
        xil_printf("Recording complete: %d frames captured\r\n", record_frame_count);
      }
    }

    if (sw2 && record_clip_ready && !record_active && !record_armed) {
      if (!record_playback_active) {
        record_playback_active = true;
        playback_record_slot = 0;
        record_playback_next_tick = now;
        xil_printf("Recorded clip playback ON\r\n");
      }
    } else if ((!sw2 || !record_clip_ready) && record_playback_active) {
      record_playback_active = false;
      displayed_record_slot = -1;
      if (current_zoom_level == 0) {
        (void)switch_display_to_live();
      } else {
        (void)switch_display_to_zoom();
      }
      xil_printf("Recorded clip playback OFF\r\n");
    }

    if (record_playback_active && record_frame_count > 0 && now >= record_playback_next_tick) {
      (void)switch_display_to_record_slot(playback_record_slot);
      playback_record_slot = (playback_record_slot + 1) % record_frame_count;
      record_playback_next_tick += (static_cast<u64>(COUNTS_PER_SECOND) * RECORD_SAMPLE_MS) / 1000ULL;
    }

    if (!record_active && !record_armed && !record_playback_active &&
        !playback_active && !preview_active) {
      render_target_overlay_frame();
      (void)switch_display_to_zoom();
    } else if (!record_active && !record_armed && !record_playback_active &&
               !playback_active && !preview_active && current_zoom_level > 0) {
      render_zoomed_live_frame();
      (void)switch_display_to_zoom();
    } else if (!record_active && !record_armed && !record_playback_active &&
               !playback_active && !preview_active &&
               current_zoom_level == 0 && display_source == DisplaySource::ZOOM) {
      (void)switch_display_to_live();
    }

    int write_frame_idx = current_write_frame_index();
    int frame_delta = write_frame_idx - last_write_frame_idx;
    if (frame_delta < 0) {
      frame_delta += XPAR_AXIVDMA_0_NUM_FSTORES;
    }
    hw_frame_count += static_cast<u64>(frame_delta);
    last_write_frame_idx = write_frame_idx;

    u64 ticks = static_cast<u64>(now - fps_window_start);
    if (ticks >= static_cast<u64>(COUNTS_PER_SECOND)) {
      u64 fps_x100 = (hw_frame_count * static_cast<u64>(COUNTS_PER_SECOND) * 100ULL) / ticks;
      u32 elapsed_ms = static_cast<u32>((ticks * 1000ULL) / static_cast<u64>(COUNTS_PER_SECOND));
      u32 frames_in_window = static_cast<u32>(hw_frame_count);
      xil_printf("HW camera FPS: %d.%02d (%u frames, %u ms)\r\n",
                 static_cast<int>(fps_x100 / 100ULL),
                 static_cast<int>(fps_x100 % 100ULL),
                 frames_in_window,
                 elapsed_ms);
      fps_window_start = now;
      hw_frame_count = 0;
    }

    prev_sw1 = sw1;
    prev_sw2 = sw2;
    prev_sw7 = sw7;
    usleep(20000);
  }

  // Read current park pointer state from VDMA core.
  parkptr = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET);
  // Clear read-reference bits so we can explicitly set MM2S park frame.
  parkptr &= ~XAXIVDMA_PARKPTR_READREF_MASK;
  // Clear write-reference bits so we can explicitly set S2MM park frame.
  parkptr &= ~XAXIVDMA_PARKPTR_WRTREF_MASK;
  // Set park refs so S2MM writes frame 0 while MM2S reads frame 1.
  parkptr |= 0x1;
  // Commit updated park-pointer routing.
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET, parkptr);

  // Put MM2S and S2MM into park mode (disable circular frame-store traversal).
  vdma_MM2S_DMACR = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);
  vdma_S2MM_DMACR = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR & ~XAXIVDMA_CR_TAIL_EN_MASK);

  // Resolve address of parked S2MM frame buffer (camera input frame in memory).
  // Resolve address of parked MM2S frame buffer (HDMI output frame in memory).
  volatile Xuint16 *pS2MM_Mem = (Xuint16 *)XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_S2MM_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET);
  volatile Xuint16 *pMM2S_Mem = (Xuint16 *)XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_MM2S_ADDR_OFFSET+XAXIVDMA_START_ADDR_OFFSET+4);

  xil_printf("SW processing frames...\r\n");
  xil_printf("pS2MM_Mem = %X\n\r", pS2MM_Mem);
  xil_printf("pMM2S_Mem = %X\n\r", pMM2S_Mem);

  // Frame dimensions fixed by selected mode and VDMA config.
  const int WIDTH  = 1920;
  const int HEIGHT = 1080;
  // Number of frames per timing window for FPS reporting.
  // Keep this small so timing output appears quickly on UART.
  const int NUM_FRAMES = 30;
  // Match the original SA-4B software path exactly while we re-establish color.
  const bool CAMERA_RAW_IN_LOW_BYTE = true;

  // Timestamps used to compute software pipeline throughput.
  XTime tStart, tEnd;
  XTime_GetTime(&tStart);

  // Run continuously so processed output remains on screen.
  while (1) {
    // Process a block of frames, then print FPS once per block.
    for (j = 0; j < NUM_FRAMES; j++) {
      // Invalidate cached input frame so CPU reads fresh DMA-written camera pixels.
      Xil_DCacheInvalidateRange((INTPTR)pS2MM_Mem, WIDTH * HEIGHT * sizeof(Xuint16));
      // First restore the exact SA-4B software color path before re-adding target overlay.
      for (int y = 0; y < HEIGHT; y += 2) {
        for (int x = 0; x < WIDTH; x += 2) {
          const int offset = WIDTH * y + x;
          const uint8_t b = frame_word_sample(pS2MM_Mem, offset, CAMERA_RAW_IN_LOW_BYTE);
          const uint8_t g = frame_word_sample(pS2MM_Mem, offset + 1, CAMERA_RAW_IN_LOW_BYTE);
          const uint8_t r = frame_word_sample(pS2MM_Mem, offset + WIDTH + 1, CAMERA_RAW_IN_LOW_BYTE);

          const uint8_t yv = static_cast<uint8_t>((r >> 2) + (g >> 1) + (b >> 3));
          const uint8_t cb = static_cast<uint8_t>((((int)b - (int)yv) >> 1) + (((int)b - (int)yv) >> 2) + 128);
          const uint8_t cr = static_cast<uint8_t>((((int)r - (int)yv) >> 1) + (((int)r - (int)yv) >> 2) + 128);

          pMM2S_Mem[offset] = static_cast<uint16_t>((static_cast<uint16_t>(cb) << 8) | yv);
          pMM2S_Mem[offset + 1] = static_cast<uint16_t>((static_cast<uint16_t>(cr) << 8) | yv);
          pMM2S_Mem[offset + WIDTH] = static_cast<uint16_t>((static_cast<uint16_t>(cb) << 8) | yv);
          pMM2S_Mem[offset + WIDTH + 1] = static_cast<uint16_t>((static_cast<uint16_t>(cr) << 8) | yv);
        }
      }
      // Flush output frame cache so MM2S/HDMI sees newly written processed pixels.
      Xil_DCacheFlush();
    }

    // End timing window and convert elapsed cycles to frames-per-second.
    XTime_GetTime(&tEnd);
    u64 ticks = static_cast<u64>(tEnd - tStart);
    // Guard against divide-by-zero in case timer delta is unexpectedly zero.
    if (ticks == 0) {
      ticks = 1;
    }
    // Also compute elapsed milliseconds for easier sanity checking on UART.
    u64 elapsed_ms = (ticks * 1000ULL) / static_cast<u64>(COUNTS_PER_SECOND);
    // Scale by 100 to print two decimal digits without floating point.
    u64 fps_x100 = (static_cast<u64>(NUM_FRAMES) * static_cast<u64>(COUNTS_PER_SECOND) * 100ULL) / ticks;
    xil_printf("SW demosaic+YCbCr422: %d.%02d FPS over %d frames (%llu ms)\r\n",
               static_cast<int>(fps_x100 / 100ULL),
               static_cast<int>(fps_x100 % 100ULL),
               NUM_FRAMES,
               elapsed_ms);
    // Restart timing window for next FPS report period.
    XTime_GetTime(&tStart);
  }

  // Grab the VDMA Control Registers, and take VDMA channels out of Park
  // (i.e., Allow each VDMA channel to sequence through all frame buffers)
  vdma_MM2S_DMACR = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_TX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_MM2S_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);
  vdma_S2MM_DMACR = XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET);
  XAxiVdma_WriteReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_RX_OFFSET+XAXIVDMA_CR_OFFSET, vdma_S2MM_DMACR | XAXIVDMA_CR_TAIL_EN_MASK);

  xil_printf("SW processing loop complete!\r\n");
  xil_printf("\r\nReturning to VDMA pass-through operation for 10 seconds\r\n");
//  sleep(10);

  // Uncomment when using TPG for Video input
  // Define convenient volatile pointers for accessing TPG registers
//  volatile unsigned int *TPG_CR  = (unsigned int *)(XPAR_V_TPG_0_S_AXI_CTRL_BASEADDR + 0);    // TPG Control
//  xil_printf("\r\nShutting down: Disabling Test Pattern Generator...\n\r");
//  TPG_CR[0]     = 0x00;  // TPG Control Register (Disable TPG)

  sleep(1);

  return;
}



// Uncomment for Hardware Image color Pipeline
 XVprocSs proc_ss_RGB_YCrCb_444;  // To hold info for the Video Processing Subsystem: Color Conversion Only IP core: See xv_procss.h, and xv_csc_l2.h
 XVprocSs_Config *Config_ptr;

/////////////////////////////////////////
// Enable HW Color processing pipeline //
/////////////////////////////////////////
int enable_color_pipeline(void) {

   xil_printf("Hardware Color Image Processing Pipeline Initialization ...\n\r" );

   // Video Processing Subsystem (Only re-sampling) 4:4:4 to 4:2:2  (See IP documentation for register details)
   // TODO Add additional register assignments here to fully configure this core. See Video Processing Subsystem IP documentation for register details.
   // Hint 1: You will need to configure 4 additional registers,
   // Hint 2: You will need to dig through some header files for some of the values,
   // Hint 3: Set up the Demosaic IP block first. It is a good warm up.

   // Add assignments here

   // Uncomment as part of Re-sampler IP setup
   Xil_Out32((XPAR_V_PROC_SS_1_BASEADDR) + (XV_HCRESAMPLER_CTRL_ADDR_AP_CTRL), (u32)(0x81));  // Control
   Xil_Out32((XPAR_V_PROC_SS_1_BASEADDR) + (XV_HCRESAMPLER_CTRL_ADDR_HWREG_WIDTH_DATA), (u32)(1920));
   Xil_Out32((XPAR_V_PROC_SS_1_BASEADDR) + (XV_HCRESAMPLER_CTRL_ADDR_HWREG_HEIGHT_DATA), (u32)(1080));

   Xil_Out32((XPAR_V_PROC_SS_1_BASEADDR) + (XV_HCRESAMPLER_CTRL_ADDR_HWREG_INPUT_VIDEO_FORMAT_DATA), (u32)(1));
   Xil_Out32((XPAR_V_PROC_SS_1_BASEADDR) + (XV_HCRESAMPLER_CTRL_ADDR_HWREG_OUTPUT_VIDEO_FORMAT_DATA), (u32)(2));

   xil_printf("4:4:4 to 4:2:2 Re-sampling IP Configuration and Enable done\r\n");

   // Video Processing Subsystem Hardware IP (configured for Only Color Conversion) from 24-bit RGB to YCrCb 4:4:4
   // For this IP core there was a High level API for setting it up.  Trace through these calls to see how much work they do.
   // This could have been set up with direct register writes, but there are about 20 registers that need to be set for this IP block

   // Uncomment to setup Color Conversion IP
   Config_ptr = XVprocSs_LookupConfig(XPAR_XVPROCSS_0_DEVICE_ID);
   XVprocSs_CfgInitialize(&proc_ss_RGB_YCrCb_444, Config_ptr, XPAR_XVPROCSS_0_BASEADDR);
   XVprocSs_SetSubsystemConfig(&proc_ss_RGB_YCrCb_444);
   XV_CscSetColorspace(proc_ss_RGB_YCrCb_444.CscPtr, XVIDC_CSF_RGB, XVIDC_CSF_YCRCB_444, XVIDC_BT_709, XVIDC_BT_709, XVIDC_CR_0_255);
   XVprocSs_Start(&proc_ss_RGB_YCrCb_444);
   xil_printf("RGB to 4:4:4 IP Configuration and Enable done\r\n");


   // Demosaic to convert sensor Bayer pattern into 24-bit RGB
   // TODO Add additional register assignments here to fully configure this core. See Demosaic IP documentation for register details.
   // Hint 1: You will need to configure 3 addition registers
   // Add assignment here

   // Uncomment as part of Demosaic IP setup
   Xil_Out32((XPAR_XV_DEMOSAIC_0_S_AXI_CTRL_BASEADDR) + (XV_DEMOSAIC_CTRL_ADDR_AP_CTRL), (u32)(0x81));// 0b10000001 means start and freerun mode (page 16 in PG286)
   Xil_Out32((XPAR_XV_DEMOSAIC_0_S_AXI_CTRL_BASEADDR) + (XV_DEMOSAIC_CTRL_ADDR_HWREG_WIDTH_DATA), (u32)(1920));
   Xil_Out32((XPAR_XV_DEMOSAIC_0_S_AXI_CTRL_BASEADDR) + (XV_DEMOSAIC_CTRL_ADDR_HWREG_HEIGHT_DATA), (u32)(1080));
   Xil_Out32((XPAR_XV_DEMOSAIC_0_S_AXI_CTRL_BASEADDR) + (XV_DEMOSAIC_CTRL_ADDR_HWREG_BAYER_PHASE_DATA), (u32)(0x3));

   xil_printf("Demosaic IP Configuring and Enable done\r\n"); // RGRG sensor pattern

   return 0;
}
