#include <stdint.h>

unsigned long Crc32_ComputeBuf( unsigned long inCrc32, const void *buf, size_t bufLen );
/// compute CRC32 (Slicing-by-16 algorithm)
uint32_t crc32_16bytes(const void* data, size_t length, uint32_t previousCrc32);
