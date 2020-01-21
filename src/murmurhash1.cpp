//-----------------------------------------------------------------------------
// MurmurHash was written by Austin Appleby, and is placed in the public
// domain. The author hereby disclaims copyright to this source code.

// Note - This code makes a few assumptions about how your machine behaves -

// 1. We can read a 4-byte value from any address without crashing
// 2. sizeof(int) == 4

// And it has a few limitations -

// 1. It will not work incrementally.
// 2. It will not produce the same results on little-endian and big-endian
//    machines.

#include "murmurhash1.h"

//-----------------------------------------------------------------------------

uint32_t MurmurHash1 ( const void * key, int len, uint32_t seed )
{
  const unsigned int m = 0xc6a4a793;

  const int r = 16;

  unsigned int h = seed ^ (len * m);

  //----------

  const unsigned char * data = (const unsigned char *)key;

  while(len >= 4)
  {
    unsigned int k = *(unsigned int *)data;

    h += k;
    h *= m;
    h ^= h >> 16;

    data += 4;
    len -= 4;
  }

  //----------

  switch(len)
  {
  case 3:
    h += data[2] << 16;
  case 2:
    h += data[1] << 8;
  case 1:
    h += data[0];
    h *= m;
    h ^= h >> r;
  };

  //----------

  h *= m;
  h ^= h >> 10;
  h *= m;
  h ^= h >> 17;

  return h;
}
