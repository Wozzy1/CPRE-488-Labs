#include <sys/stat.h>
#include <sys/types.h>
#include <errno.h>
#include <cstddef>

extern "C" {

int _open(const char *, int, int)
{
  errno = ENOSYS;
  return -1;
}

int _close(int)
{
  return -1;
}

int _isatty(int)
{
  return 1;
}

int _fstat(int, struct stat *st)
{
  if (st != nullptr) {
    st->st_mode = S_IFCHR;
  }
  return 0;
}

int _lseek(int, int, int)
{
  return 0;
}

int _read(int, char *, int)
{
  return 0;
}

int _write(int, const char *, int len)
{
  return len;
}

void* _sbrk(ptrdiff_t)
{
  errno = ENOMEM;
  return reinterpret_cast<void*>(-1);
}

}
