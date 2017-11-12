//-----------------------------------------------------------------------------
// MurmurHash1 was written by Austin Appleby, and is placed in the public
// domain. The author hereby disclaims copyright to this source code.

#ifndef _MURMURHASH1_H_
#define _MURMURHASH1_H_

#include <stdint.h>

//-----------------------------------------------------------------------------

uint32_t MurmurHash1        ( const void * key, int len, uint32_t seed );
uint32_t MurmurHash1Aligned ( const void * key, int len, uint32_t seed );

//-----------------------------------------------------------------------------

#endif // _MURMURHASH1_H_
