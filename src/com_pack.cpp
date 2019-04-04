#include "com_pack.h"
#include "q_shared.h"
#include "q_shared.h"

extern "C"
{

void __cdecl Vec3UnpackUnitVec(union PackedUnitVec in, float *out)
{
  float decodeScale;

  decodeScale = (in.array[3] - -192.0) / 32385.0;
  out[0] = (in.array[0] - 127.0) * decodeScale;
  out[1] = (in.array[1] - 127.0) * decodeScale;
  out[2] = (in.array[2] - 127.0) * decodeScale;
}

PackedUnitVec __cdecl Vec3PackUnitVec(const float *unitVec)
{
  float encodeScale;
  float decodeScale;
  float v4;
  float dirError;
  PackedUnitVec out;
  char testEncoding[4];
  vec3_t normalized;
  float bestLenError;
  float bestDirError;
  float lenError;
  vec3_t decoded;

  Vec3NormalizeTo(unitVec, normalized);
  out.packed = 0;
  bestDirError = 3.4028235e38;
  bestLenError = 3.4028235e38;
  testEncoding[3] = 0;
  do
  {
    encodeScale = 32385.0 / (testEncoding[3] - -192.0);
    testEncoding[0] = floor((normalized[0] * encodeScale) + 127.5);
    testEncoding[1] = floor((normalized[1] * encodeScale) + 127.5);
    testEncoding[2] = floor((normalized[2] * encodeScale) + 127.5);
    decodeScale = (testEncoding[3] - -192.0) / 32385.0;
    decoded[0] = (testEncoding[0] - 127.0) * decodeScale;
    decoded[1] = (testEncoding[1] - 127.0) * decodeScale;
    decoded[2] = (testEncoding[2] - 127.0) * decodeScale;

    lenError = fabs(Vec3Normalize(decoded) - 1.0);
    if ( lenError < 0.001 )
    {
      v4 = DotProduct(decoded, normalized);
      dirError = fabs(v4 - 1.0);
      if ( bestDirError > dirError || (bestDirError == dirError && bestLenError > lenError) )
      {
        bestDirError = dirError;
        bestLenError = lenError;
        out.packed = *testEncoding;
        if ( bestLenError + bestDirError == 0 )
        {
          return out;
        }
      }
    }
    ++testEncoding[3];
  }
  while ( testEncoding[3] );
  assert(out.packed != 0);
  return out;
}


union floatdwordpack_t
{
  float f;
  uint32_t dw;
  int32_t sdw;
};


void __cdecl Vec2UnpackTexCoords(PackedTexCoords in, float *out)
{
  floatdwordpack_t v2;
  floatdwordpack_t v3;

  if ( in.packed >> 16 )
  {
    v3.dw = ((in.packed >> 16 << 16) & 0x80000000) | (((((in.packed >> 16 << 14) & 0xFFFC000) - (~(in.packed >> 16 << 14) & 0x10000000)) ^ 0x80000000) >> 1);
  }
  else
  {
    v3.f = 0.0;
  }
  *out = v3.f;
  if ( in.w )
  {
    v2.dw = ((in.w << 16) & 0x80000000) | (((((in.w << 14) & 0xFFFC000) - (~(in.w << 14) & 0x10000000)) ^ 0x80000000) >> 1);
  }
  else
  {
    v2.f = 0.0;
  }
  out[1] = v2.f;
}

PackedTexCoords __cdecl Vec2PackTexCoords(const float *in)
{
  int16_t v2;
  int16_t v3;
  signed int v4;
  floatdwordpack_t _in[2];
  signed int v6;

  _in[0].f = in[0];
  _in[1].f = in[1];


  if ( (signed int)(2 * _in[0].dw ^ 0x80000000) >> 14 < 0x3FFF )
  {
    v6 = (signed int)(2 * _in[0].dw ^ 0x80000000) >> 14;
  }
  else
  {
    v6 = 0x3FFF;
  }
  if ( v6 > -16384 )
  {
    v3 = v6;
  }
  else
  {
    v3 = -16384;
  }
  if ( (signed int)(2 * _in[1].dw ^ 0x80000000) >> 14 < 0x3FFF )
  {
    v4 = (signed int)(2 * _in[1].dw ^ 0x80000000) >> 14;
  }
  else
  {
    v4 = 0x3FFF;
  }
  if ( v4 > -16384 )
  {
    v2 = v4;
  }
  else
  {
    v2 = -16384;
  }
  PackedTexCoords ptc;

  ptc.packed = (((v2 & 0x3FFF) | ((_in[1].sdw >> 16) & 0xC000)) + (((v3 & 0x3FFF) | ((_in[0].dw >> 16) & 0xC000)) << 16));
  return ptc;
}



}