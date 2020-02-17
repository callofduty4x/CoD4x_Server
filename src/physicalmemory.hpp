#pragma once

#include "qshared.hpp"
#include "qcommon_io.hpp"
#include "qcommon_mem.hpp"
#include "mem_track.hpp"
#include "sys_main.hpp"
#include "mem_track.hpp"

#ifdef __cplusplus

byte* _PMem_AllocNamed(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, const char *name, EMemTrack memTrack);
byte* _PMem_Alloc(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, EMemTrack memTrack, const char *file, int lineNum);
int PMem_GetOverAllocatedSize();

extern "C"{
#endif

void CCDECL PMem_Init();
void CCDECL PMem_BeginAlloc(const char *name, unsigned int allocType, enum EMemTrack memTrack);
void CCDECL PMem_EndAlloc(const char *name, unsigned int allocType);
void CCDECL PMem_Free(const char *name);

#ifdef __cplusplus
}
#endif

