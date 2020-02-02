#pragma once
#include "cm_public.hpp"
#include "entity.hpp"
#include "dobj.hpp"


extern "C"
{
    void SV_PointTraceToEntityIntern(const pointtrace_t* clip, gentity_t* touch, trace_t*, DObj_t* obj);
    void __cdecl G_TraceCapsule(trace_t* results, const float* start, const float* mins, const float* maxs, const float* end, int passEntityNum, int contentmask);
};

