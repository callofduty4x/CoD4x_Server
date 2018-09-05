#include "q_shared.h"
#include "qcommon_io.h"
#include "qcommon_mem.h"
#include "mem_track.h"
#include "sys_main.h"
#include "physicalmemory.h"
#include "sys_thread.h"

#define PHYS_ALLOC_HIGH 1
#define MAX_PHYSICAL_ALLOCATIONS 32
#define PHYS_ALLOC_COUNT 2

struct PhysicalMemoryAllocation
{
  const char *name;
  unsigned int pos;
};

struct PhysicalMemoryPrim
{
  const char *allocName;
  unsigned int allocListCount;
  unsigned int pos;
  PhysicalMemoryAllocation allocList[MAX_PHYSICAL_ALLOCATIONS];
  EMemTrack memTrack;
};

struct PhysicalMemory
{
  const char *name;
  byte *buf;
  PhysicalMemoryPrim prim[PHYS_ALLOC_COUNT];
  unsigned int size;
};

int g_overAllocatedSize;
PhysicalMemory g_mem;
bool g_physicalMemoryInit;
unsigned int freeTot;

void PMem_InitPhysicalMemory(PhysicalMemory *pmem, const char *name, void *memory, unsigned int memorySize)
{
  assert ( pmem );
  assert ( memory );

  memset(pmem, 0, sizeof(PhysicalMemory));
  pmem->name = name;
  pmem->buf = (byte*)memory;
  pmem->prim[1].pos = memorySize;
  pmem->size = memorySize;
}





byte* __cdecl _PMem_AllocNamed(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, const char *name, EMemTrack memTrack)
{
  //int alignedSize;
  unsigned int highPos;
  signed int location;
  unsigned int lowPos;
  unsigned int allocedSize;
  byte* allocptr;

  Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);

  location = 0;
  PMem_Init();
  if ( type & 0x80000000 )
  {
    location = 1;
  }
  assert(size > 0);
  assert(alignment != 0);
  --alignment;
  if ( allocType )
  {
    assert(allocType == PHYS_ALLOC_HIGH);
    //v7 = size + (~alignment & (alignment + g_mem.prim[allocType].pos)) - g_mem.prim[allocType].pos;
    lowPos = ~alignment & (g_mem.prim[allocType].pos - size);
    g_overAllocatedSize = g_mem.prim[0].pos - lowPos;
    if ( g_overAllocatedSize > 0 )
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "requested size:  %d  over allocation:  %d\n", size, g_overAllocatedSize);
      Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);
      Sys_OutOfMemError(__FILE__, __LINE__);
    }
    allocedSize = g_mem.prim[allocType].pos - lowPos;
    g_mem.prim[allocType].pos = lowPos;
  }
  else
  {
    lowPos = ~alignment & (alignment + g_mem.prim[allocType].pos);
    highPos = size + lowPos;
    //alignedSize = size + lowPos - g_mem.prim[allocType].pos;
    g_overAllocatedSize = size + lowPos - g_mem.prim[1].pos;
    if ( g_overAllocatedSize > 0 )
    {
      Com_PrintError(CON_CHANNEL_SYSTEM, "Need %i more bytes of '%s' physical ram for alloc to succeed\n", g_overAllocatedSize, g_mem.name);
      Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);
      Sys_OutOfMemError(__FILE__, __LINE__);
    }
    allocedSize = highPos - g_mem.prim[allocType].pos;
    g_mem.prim[allocType].pos = highPos;
  }
  track_physical_alloc(allocedSize, name, memTrack, location);
  allocptr = &g_mem.buf[lowPos];

  Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);
  return allocptr;
}


byte *__cdecl _PMem_Alloc(unsigned int size, unsigned int alignment, unsigned int type, unsigned int allocType, EMemTrack memTrack, const char *file, int lineNum)
{
  char allocIdBuf[256];

  Com_sprintf(allocIdBuf, sizeof(allocIdBuf), "%s::%s %d", g_mem.prim[allocType].allocName, file, lineNum);
  return _PMem_AllocNamed(size, alignment, type, allocType, allocIdBuf, memTrack);
}

int __cdecl PMem_GetOverAllocatedSize()
{
  return g_overAllocatedSize;
}

void PMem_BeginAllocInPrim(PhysicalMemoryPrim *prim, const char *name, EMemTrack memTrack)
{
  PhysicalMemoryAllocation *allocEntry;

  assert(!prim->allocName);
  assert(prim->allocListCount < MAX_PHYSICAL_ALLOCATIONS);

  prim->allocName = name;
  prim->memTrack = memTrack;
  allocEntry = &prim->allocList[prim->allocListCount++];
  allocEntry->name = name;
  allocEntry->pos = prim->pos;
}

void PMem_EndAllocInPrim(PhysicalMemoryPrim *prim, const char *name)
{
  assert ( Q_stricmp(prim->allocName, name) == 0);
  prim->allocName = 0;
}


void PMem_FreeIndex(PhysicalMemoryPrim *prim, unsigned int allocIndex, int location)
{
  PhysicalMemoryAllocation *allocEntry;
  const char *name;
  int freecount;

  assert(!prim->allocName);

  allocEntry = &prim->allocList[allocIndex];
  name = allocEntry->name;

  assert(name);

  allocEntry->name = NULL;
  track_flush_physical_alloc(name, prim->memTrack);
  if ( allocIndex == prim->allocListCount - 1 )
  {
    freecount = prim->pos - prim->allocList[allocIndex].pos;
    track_physical_alloc(-freecount, name, prim->memTrack, location);
    freeTot -= freecount;
    Com_DPrintf(CON_CHANNEL_SYSTEM, "freed %.2f\n", (float)((float)freeTot / 1048576.0));
    do
    {
      prim->pos = allocEntry->pos;

      assert(prim->allocListCount);

      --prim->allocListCount;

      if ( !prim->allocListCount )
      {
        break;
      }
      allocEntry = &prim->allocList[prim->allocListCount -1];
    }
    while ( !allocEntry->name );
  }
  else
  {
    track_PrintInfo();
    Com_Error(ERR_FATAL, "free does not match allocation");
  }
}


void PMem_FreeInPrim(PhysicalMemoryPrim *prim, const char *name, int location)
{
  unsigned int allocIndex;

  for ( allocIndex = 0; allocIndex < prim->allocListCount; ++allocIndex )
  {
    if ( prim->allocList[allocIndex].name == name )
    {
      assert(allocIndex == prim->allocListCount - 1);
      PMem_FreeIndex(prim, allocIndex, location);
      return;
    }
  }
}

extern "C"{

void __cdecl PMem_Free(const char *name)
{
  int i;
  for ( i = 0; i < 2; ++i )
  {
    if ( i )
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "PMem_Free( %s, %s )\n", name, "High");
    }
    else
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "PMem_Free( %s, %s )\n", name, "Low");
    }
    Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);
    PMem_FreeInPrim(&g_mem.prim[i], name, 0);
    Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);

  }
}

void __cdecl PMem_EndAlloc(const char *name, unsigned int allocType)
{
  assert ( allocType < PHYS_ALLOC_COUNT);

  Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);
  PMem_EndAllocInPrim(&g_mem.prim[allocType], name);
  Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);

}

void __cdecl PMem_BeginAlloc(const char *name, unsigned int allocType, EMemTrack memTrack)
{
  assert ( allocType < PHYS_ALLOC_COUNT);

  Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);
  PMem_BeginAllocInPrim(&g_mem.prim[allocType], name, memTrack);
  Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);

}

void __cdecl PMem_Init()
{
  void* memory;

  if ( !g_physicalMemoryInit )
  {
    Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);

    g_physicalMemoryInit = true;
    memory = _VirtualAlloc(0, 0x14800000u, 0x1000u, 4u);
    if(memory == NULL)
    {
        Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);
        Com_Error(ERR_FATAL, "PMem_Init(): not enough virtual memory within a single block available");
    }
    PMem_InitPhysicalMemory(&g_mem, "main", memory, 0x14800000u);

    Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);

  }
}

void PMem_DumpMemStats()
{
  unsigned int h;
  signed int i;

  Sys_EnterCriticalSection(CRITSECT_PHYSICAL_MEMORY);

  if ( g_mem.prim[1].allocListCount )
  {
    for ( i = 0; i < (signed int)g_mem.prim[1].allocListCount; ++i)
    {
      if ( i == (signed int)g_mem.prim[1].allocListCount - 1 )
      {
        h = g_mem.prim[1].pos;
      }
      else
      {
        h = g_mem.prim[1].allocList[i +1].pos;
      }
      Com_Printf(CON_CHANNEL_SYSTEM, "%-18.18s %5.1f\n", g_mem.prim[1].allocList[i].name, (float)((signed int)(g_mem.prim[1].allocList[i].pos - h) * 0.00000095367432));
    }
  }
  Com_Printf(CON_CHANNEL_SYSTEM, "free physical      %5.1f\n", (float)((float)(g_mem.prim[1].pos - g_mem.prim[0].pos) * 0.00000095367432));

  h = g_mem.prim[0].pos;
  for ( i = g_mem.prim[0].allocListCount - 1; i >= 0; --i )
  {
    Com_Printf(CON_CHANNEL_SYSTEM, "%-18.18s %5.1f\n",
      g_mem.prim[0].allocList[i].name, (double)(0.00000095367432 * (long double)(signed int)(h - g_mem.prim[0].allocList[i].pos)));
    h = g_mem.prim[0].allocList[i].pos;
  }
  Sys_LeaveCriticalSection(CRITSECT_PHYSICAL_MEMORY);

  Com_Printf(CON_CHANNEL_SYSTEM, "------------------------\n");

}

};