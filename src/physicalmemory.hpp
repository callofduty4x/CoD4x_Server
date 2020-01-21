#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "mem_track.h"
#include "sys_main.h"
#include "mem_track.h"

#ifdef __cplusplus

byte* _PMem_AllocNamed(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, const char *name, EMemTrack memTrack);
byte* _PMem_Alloc(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, EMemTrack memTrack, const char *file, int lineNum);
int PMem_GetOverAllocatedSize();

extern "C"{
#endif

void __cdecl PMem_Init();
void __cdecl PMem_BeginAlloc(const char *name, unsigned int allocType, enum EMemTrack memTrack);
void __cdecl PMem_EndAlloc(const char *name, unsigned int allocType);
void __cdecl PMem_Free(const char *name);

#ifdef __cplusplus
}
#endif

