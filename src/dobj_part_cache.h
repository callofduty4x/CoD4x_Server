#ifndef __DOBJ_PART_CACHE__
#define __DOBJ_PART_CACHE__

#include "q_shared.h"

typedef struct DObjPartCacheVectorSet_s
{
  vec3_t forward;
  vec3_t left;
  vec3_t up;
  vec3_t origin;
} DObjPartCacheVectorSet_t;

typedef struct DObjPartCache_s
{
	int svsFrameTime;
	int entNum;
	WORD partNameIdx;
	WORD pad;
	DObjPartCacheVectorSet_t vectorSet;
} DObjPartCache_t;

//What is this?
#define DOBJ_PART_CACHE (*(DObjPartCache_t*)0x0)

#endif // __DOBJ_PART_CACHE__
