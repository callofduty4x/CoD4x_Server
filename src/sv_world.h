#ifndef _SV_WORLD_H_
#define _SV_WORLD_H_
#include "cm_public.h"
#include "entity.h"
#include "dobj.h"

void SV_PointTraceToEntityIntern(const pointtrace_t* clip, gentity_t* touch, trace_t*, DObj_t* obj);

#endif