#ifndef __COM_PACK_H__
#define __COM_PACK_H__
#include <stdint.h>

union PackedUnitVec
{
  unsigned int packed;
  char array[4];
};

union PackedTexCoords
{
  unsigned int packed;
  uint16_t w;
};


#endif