/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/

#ifdef __WIN32
#include <d3d9.h>
#endif

#include "q_shared.h"
#include "qcommon_io.h"
#include "cvar.h"
#include "xassets.h"
#include "sys_patch.h"
#include "sys_main.h"
#include "qcommon_mem.h"
#include "filesystem.h"
#include "qcommon.h"
#include "cmd.h"
#include "xassets/xmodel.h"
#include "xassets/phys.h"
#include "xassets/xanims.h"
#include "xassets/gfximage.h"
#include "xassets/sounds.h"
#include "xassets/mapents.h"
#include "xassets/gfxworld.h"
#include "xassets/menu.h"
#include "xassets/menulist.h"
#include "xassets/font.h"
#include "xassets/localized.h"
#include "xassets/weapondef.h"
#include "xassets/rawfile.h"
#include "xassets/stringtable.h"
#include "xassets/fx.h"
#include "world.h"
#include "cm_local.h"
#include "sys_thread.h"
#include "zlib/unzip.h"
#include "physicalmemory.h"
#include "cscr_stringlist.h"
#include "r_public.h"

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>


#define XBLOCK_COUNT_IW3 9
#define XBLOCK_COUNT_T5 7
#define XBLOCK_COUNT XBLOCK_COUNT_IW3
#define DM_MEMORY_PHYSICAL 2
#define DEFLATE_BUFFER_SIZE 0x8000
#define DBFILE_BUFFER_SIZE 0x80000
#define FASTFILE_VERSION 5
#define XASSET_ENTRY_POOL_SIZE 32768

extern "C" void PrintScriptStrings();

struct XBlock
{
  byte *data;
  unsigned int size;
};

struct XFile
{
  unsigned int size;
  unsigned int externalSize;
  unsigned int blockSize[XBLOCK_COUNT];
};

byte* g_streamPos;
unsigned int g_streamPosIndex;

volatile int g_totalSize;
volatile int g_loadedSize;
volatile int g_totalExternalBytes;
volatile int g_loadedExternalBytes;
volatile int g_totalStreamBytes;
bool g_trackLoadProgress;
int g_totalWait;
struct XBlock* g_streamBlocks;
unsigned int g_streamDelayIndex;
byte* g_streamPosArray[XBLOCK_COUNT];
unsigned int g_streamPosStackIndex;
bool g_minimumFastFileLoaded;
volatile unsigned int g_loadingAssets;
volatile bool g_loadingZone;
volatile unsigned int g_zoneInfoCount;
unsigned int g_zoneIndex;
bool g_initializing;
int g_zoneCount;
bool g_isRecoveringLostDevice;
bool g_mayRecoverLostAssets;
extern bool g_archiveBuf;
extern int g_sync;
extern unsigned int g_copyInfoCount;
extern struct CriticalSection_t db_hashCritSect;
int g_poolSize[ASSET_TYPE_COUNT];


struct XAssetEntry
{
  struct XAsset asset;
  byte zoneIndex;
  bool inuse;
  uint16_t nextHash;
  uint16_t nextOverride;
  uint16_t usageFrame;
};

union XAssetEntryPoolEntry
{
  struct XAssetEntry entry;
  union XAssetEntryPoolEntry *next;
};

extern union XAssetEntryPoolEntry *g_freeAssetEntryHead;
extern union XAssetEntryPoolEntry g_assetEntryPool[32768];



struct XZoneInfoInternal
{
  char name[64];
  int flags;
};

XZoneInfoInternal g_zoneInfo[32];


typedef struct
{
  XBlock blocks[XBLOCK_COUNT];
  int allocVertexBuffer;
  int allocIndexBuffer;
  IDirect3DVertexBuffer9 *vertexBufferHandle;
  IDirect3DIndexBuffer9 *indexBufferHandle;
}XZoneMemory;


typedef struct
{
  XZoneInfoInternal zoneinfo;
  int index;
  XZoneMemory zonememory;
  int zoneSize;
  int ff_dir;
}XZone;

XZone g_zones[33];
uint8_t g_zoneHandles[ARRAY_COUNT(g_zones)];



extern void (__cdecl *DB_InitPoolHeaderHandler[ASSET_TYPE_COUNT])(void *, int);
XAnimParts g_XAnimPartsPool[4096];

/*
float* varfloat;
int16_t* varshort;
byte* varbyte;
XModel* varXModel;
*/
extern char** varXString;


void *DB_XAssetPool[ASSET_TYPE_COUNT];


extern "C"{
  void DB_SaveSounds();
  void DB_SaveDObjs();
  void DB_SyncExternalAssets();
  void __regparm2 DB_UnloadXZone(unsigned int zoneIndex, bool createDefault);
  void DB_LoadSounds();
};


void* XAssetAllocPool(int type, int sizeoftype)
{
  assert(type >= 0 && type < ASSET_TYPE_COUNT);

  if(g_poolSize[type] == 0)
  {
    return NULL;
  }
  assert(sizeoftype > 0);

  return (void *)_PMem_AllocNamed(g_poolSize[type] * sizeoftype, 0x4u, 0, 0, "xasset_pool", TRACK_FASTFILE);

}


void DB_InitPoolSize( )
{
  g_poolSize[ASSET_TYPE_XMODELPIECES] = 64;
  g_poolSize[ASSET_TYPE_PHYSPRESET] = 64;
  g_poolSize[ASSET_TYPE_XANIMPARTS] = 4096;
  g_poolSize[ASSET_TYPE_XMODEL] = 1000;
  g_poolSize[ASSET_TYPE_MATERIAL] = 2048;
  g_poolSize[ASSET_TYPE_TECHNIQUE_SET] = 1024;
  g_poolSize[ASSET_TYPE_IMAGE] = 2400;
  g_poolSize[ASSET_TYPE_SOUND] = 16000;
  g_poolSize[ASSET_TYPE_SOUND_CURVE] = 64;
  g_poolSize[ASSET_TYPE_LOADED_SOUND] = 1200;
  g_poolSize[ASSET_TYPE_CLIPMAP] = 1;
  g_poolSize[ASSET_TYPE_CLIPMAP_PVS] = 1;
  g_poolSize[ASSET_TYPE_COMWORLD] = 1;
  g_poolSize[ASSET_TYPE_GAMEWORLD_SP] = 1;
  g_poolSize[ASSET_TYPE_GAMEWORLD_MP] = 1;
  g_poolSize[ASSET_TYPE_MAP_ENTS] = 2;
  g_poolSize[ASSET_TYPE_GFXWORLD] = 1;
  g_poolSize[ASSET_TYPE_LIGHT_DEF] = 32;
  g_poolSize[ASSET_TYPE_UI_MAP] = 0;
  g_poolSize[ASSET_TYPE_FONT] = 16;
  g_poolSize[ASSET_TYPE_MENULIST] = 128;
  g_poolSize[ASSET_TYPE_MENU] = 640;
  g_poolSize[ASSET_TYPE_LOCALIZE_ENTRY] = 6144;
  g_poolSize[ASSET_TYPE_WEAPON] = 128;
  g_poolSize[ASSET_TYPE_SNDDRIVER_GLOBALS] = 1;
  g_poolSize[ASSET_TYPE_FX] = 400;
  g_poolSize[ASSET_TYPE_IMPACT_FX] = 4;
  g_poolSize[ASSET_TYPE_AITYPE] = 0;
  g_poolSize[ASSET_TYPE_MPTYPE] = 0;
  g_poolSize[ASSET_TYPE_CHARACTER] = 0;
  g_poolSize[ASSET_TYPE_XMODELALIAS] = 0;
  g_poolSize[ASSET_TYPE_RAWFILE] = 1024;
  g_poolSize[ASSET_TYPE_STRINGTABLE] = 100;
}

void DB_InitXAssetPools( )
{
        DB_InitPoolSize();

        DB_XAssetPool[ASSET_TYPE_XMODELPIECES] = XAssetAllocPool(ASSET_TYPE_XMODELPIECES, sizeof(XModelPieces));
        DB_XAssetPool[ASSET_TYPE_PHYSPRESET] = XAssetAllocPool(ASSET_TYPE_PHYSPRESET, sizeof(PhysPreset));
        DB_XAssetPool[ASSET_TYPE_XANIMPARTS] = &g_XAnimPartsPool;
        DB_XAssetPool[ASSET_TYPE_XMODEL] = XAssetAllocPool(ASSET_TYPE_XMODEL, sizeof(XModel));
        DB_XAssetPool[ASSET_TYPE_MATERIAL] = XAssetAllocPool(ASSET_TYPE_MATERIAL, sizeof(Material));
        DB_XAssetPool[ASSET_TYPE_TECHNIQUE_SET] = XAssetAllocPool(ASSET_TYPE_TECHNIQUE_SET, sizeof(MaterialTechniqueSet));
        DB_XAssetPool[ASSET_TYPE_IMAGE] = XAssetAllocPool(ASSET_TYPE_IMAGE, sizeof(GfxImage));
        DB_XAssetPool[ASSET_TYPE_SOUND] = XAssetAllocPool(ASSET_TYPE_SOUND, sizeof(snd_alias_list_t));
        DB_XAssetPool[ASSET_TYPE_SOUND_CURVE] = XAssetAllocPool(ASSET_TYPE_SOUND_CURVE, sizeof(SndCurve));
        DB_XAssetPool[ASSET_TYPE_LOADED_SOUND] = XAssetAllocPool(ASSET_TYPE_LOADED_SOUND, sizeof(SoundFileInfo));
        DB_XAssetPool[ASSET_TYPE_CLIPMAP] = &cm;
        DB_XAssetPool[ASSET_TYPE_CLIPMAP_PVS] = &cm;
        DB_XAssetPool[ASSET_TYPE_COMWORLD] = &comWorld;
        DB_XAssetPool[ASSET_TYPE_GAMEWORLD_SP] = NULL;
        DB_XAssetPool[ASSET_TYPE_GAMEWORLD_MP] = &gameWorldMp;
        DB_XAssetPool[ASSET_TYPE_MAP_ENTS] = XAssetAllocPool(ASSET_TYPE_MAP_ENTS, sizeof(MapEnts));
        DB_XAssetPool[ASSET_TYPE_GFXWORLD] = &s_world;
        DB_XAssetPool[ASSET_TYPE_LIGHT_DEF] = XAssetAllocPool(ASSET_TYPE_LIGHT_DEF, sizeof(GfxLightDef));
        DB_XAssetPool[ASSET_TYPE_UI_MAP] = NULL;
        DB_XAssetPool[ASSET_TYPE_FONT] = XAssetAllocPool(ASSET_TYPE_FONT, sizeof(Font_s));
        DB_XAssetPool[ASSET_TYPE_MENULIST] = XAssetAllocPool(ASSET_TYPE_MENULIST, sizeof(MenuList));
        DB_XAssetPool[ASSET_TYPE_MENU] = XAssetAllocPool(ASSET_TYPE_MENU, sizeof(MenuDef_t));
        DB_XAssetPool[ASSET_TYPE_LOCALIZE_ENTRY] = XAssetAllocPool(ASSET_TYPE_LOCALIZE_ENTRY, sizeof(LocalizeEntry));
        DB_XAssetPool[ASSET_TYPE_WEAPON] = XAssetAllocPool(ASSET_TYPE_WEAPON, sizeof(WeaponDef));
        DB_XAssetPool[ASSET_TYPE_SNDDRIVER_GLOBALS] = NULL;
        DB_XAssetPool[ASSET_TYPE_FX] = XAssetAllocPool(ASSET_TYPE_FX, sizeof(FxEffectDef));
        DB_XAssetPool[ASSET_TYPE_IMPACT_FX] = XAssetAllocPool(ASSET_TYPE_IMPACT_FX, sizeof(FxImpactTable));
        DB_XAssetPool[ASSET_TYPE_AITYPE] = NULL;
        DB_XAssetPool[ASSET_TYPE_MPTYPE] = NULL;
        DB_XAssetPool[ASSET_TYPE_CHARACTER] = NULL;
        DB_XAssetPool[ASSET_TYPE_XMODELALIAS] = NULL;
        DB_XAssetPool[ASSET_TYPE_RAWFILE] = XAssetAllocPool(ASSET_TYPE_RAWFILE, sizeof(RawFile));
        DB_XAssetPool[ASSET_TYPE_STRINGTABLE] = XAssetAllocPool(ASSET_TYPE_STRINGTABLE, sizeof(StringTable));

}



extern "C"
{

void __cdecl DB_LoadedExternalData(int size)
{
  InterlockedExchangeAdd((volatile DWORD*)&g_loadedExternalBytes, size);
}

double __cdecl DB_GetLoadedFraction()
{
  double loadedBytesInternal;
  double totalBytesInternal;
  double loadedBytesExternal;

    if ( !g_totalSize )
    {
        return 0.0;
    }

    totalBytesInternal = (double)g_totalSize * 262144.0;
    loadedBytesInternal = (double)g_loadedSize * 262144.0;

    assert(loadedBytesInternal >= 0);

    if ( loadedBytesInternal > totalBytesInternal )
    {
      loadedBytesInternal = totalBytesInternal;
    }
    if(loadedBytesInternal <= 0)
    {
        return 0.0;
    }
    loadedBytesExternal = (double)g_loadedExternalBytes;
    if ( (double)g_loadedExternalBytes > (double)g_totalExternalBytes )
    {
      loadedBytesExternal = (double)g_totalExternalBytes;
    }
    if ( g_loadedSize < g_totalSize )
    {
        return loadedBytesInternal / totalBytesInternal;
    }

    if ( g_loadedSize >= g_totalSize )
    {
        return 1.0;
    }
    return 0.5 * ( (loadedBytesInternal + loadedBytesExternal) / (totalBytesInternal + (double)g_totalExternalBytes) );
}

int __cdecl DB_AuthLoad_InflateInit(z_stream_s *stream, bool isSecure)
{
  assert(!isSecure);
  return inflateInit(stream);
}


void __cdecl DB_IncStreamPos(int size)
{
  assert(g_streamPos);
  assert(g_streamPos + size <= g_streamBlocks[g_streamPosIndex].data + g_streamBlocks[g_streamPosIndex].size);
  g_streamPos += size;
}

void __cdecl DB_InitStreams(XBlock *blocks)
{
  int i;

  g_streamBlocks = blocks;
  g_streamPos = blocks->data;
  g_streamPosIndex = 0;
  g_streamDelayIndex = 0;
  g_streamPosArray[0] = 0;
  g_streamPosStackIndex = 0;
  for ( i = 0; i < XBLOCK_COUNT; ++i )
  {
//    if ( i )
    {
      g_streamPosArray[i] = (byte *)blocks[i].data;
    }
  }
}

struct StreamDelayInfo
{
  const void *ptr;
  int size;
};

struct DB_LoadData
{
  HANDLE f;
  const char *filename;
  struct XBlock *blocks;
  int outstandingReads;
  struct _OVERLAPPED overlapped;
  struct z_stream_s stream;
  char *compressBufferStart;
  char *compressBufferEnd;
  void (__cdecl *interrupt)();
  int allocType;
  int deflateBufferPos;
  int deflateRemainingFileSize;
  int flags;
  int startTime;
  bool abort;
  byte deflateBuffer[DEFLATE_BUFFER_SIZE];
};

struct StreamPosInfo
{
  byte *pos;
  unsigned int index;
};

const char *g_block_mem_name[9] =
{
  "temp",
  "runtime",
  "large_runtime",
  "physical_runtime",
  "virtual",
  "large",
  "physical",
  "vertex",
  "index"
};

int g_block_mem_type[] = { 0, 1, 1, 2, 1, 1, 2, 2, 2 };

struct StreamDelayInfo g_streamDelayArray[4096];
struct DB_LoadData g_load;
struct StreamPosInfo g_streamPosStack[64];

byte* DB_MemAlloc(unsigned int size, unsigned int type, unsigned int allocType, const char *filename, int flags)
{
  int mtype = 0x004;
  if ( type > 1 )
  {
    assert(type == DM_MEMORY_PHYSICAL);
    mtype |= 0x400;
  }else{
    size += 15;
  }
  return (byte *)_PMem_AllocNamed(size, 0x1000u, mtype, allocType, filename, TRACK_FASTFILE);
}


void __cdecl DB_AllocXBlocks(unsigned int *blockSize, const char *filename, XBlock *blocks, unsigned int allocType, int flags)
{
  unsigned int blockIndex;
  byte *buf;
  unsigned int size;
  float total_size;

  total_size = 0.0;
  for ( blockIndex = 0; blockIndex < XBLOCK_COUNT; ++blockIndex )
  {
    size = blockSize[blockIndex];
    if ( size )
    {
      total_size = (double)size + total_size;
      buf = DB_MemAlloc(size, g_block_mem_type[blockIndex], allocType, filename, flags);
      if ( !buf )
      {
        Com_Error(ERR_DROP, "Could not allocate %.2f MB of type '%s' for zone '%s' needed an additional %.2f MB",
          (double)size * 0.00000095367432, g_block_mem_name[blockIndex], filename, (float)((float)PMem_GetOverAllocatedSize() * 0.00000095367432));
      }
      blocks[blockIndex].size = size;
      blocks[blockIndex].data = buf;
    }
  }
  Com_Printf(CON_CHANNEL_SYSTEM, "used %0.2f MB memory in DB alloc\n", (float)(total_size / 1048576.0));

#pragma warning "StaticIndexBuffer? StaticVertexBuffer?"
}


byte* __cdecl DB_GetStreamPos()
{
  return g_streamPos;
}

void __cdecl DB_SetStreamIndex(unsigned int index)
{
  if ( index != g_streamPosIndex )
  {
    g_streamPosArray[g_streamPosIndex] = g_streamPos;
    g_streamPosIndex = index;
    g_streamPos = g_streamPosArray[index];
    g_streamPosArray[index] = 0;
  }
}

void __cdecl DB_PushStreamPos(unsigned int index)
{
  assert(index < ARRAY_COUNT( g_streamPosArray ));
  assert(g_streamPosIndex < ARRAY_COUNT( g_streamPosArray ));
  assert(g_streamPosStackIndex < ARRAY_COUNT( g_streamPosStack ));

  g_streamPosStack[g_streamPosStackIndex].index = g_streamPosIndex;
  DB_SetStreamIndex(index);
  g_streamPosStack[g_streamPosStackIndex].pos = g_streamPos;
  ++g_streamPosStackIndex;
}

void __cdecl DB_PopStreamPos()
{
  assertx(g_streamPosStackIndex > 0, "(g_streamPosStackIndex) = %i", g_streamPosStackIndex);

  --g_streamPosStackIndex;
  if ( !g_streamPosIndex )
  {
    g_streamPos = g_streamPosStack[g_streamPosStackIndex].pos;
  }
  DB_SetStreamIndex(g_streamPosStack[g_streamPosStackIndex].index);
}

byte *__cdecl DB_AllocStreamPos(int alignment)
{
    assert(g_streamPos);
    g_streamPos = (byte *)(~alignment & (unsigned int)&g_streamPos[alignment]);
    return g_streamPos;
}

void __cdecl DB_ConvertOffsetToPointer(void *data)
{
//  *(DWORD*)data = (DWORD)&g_streamBlocks[(unsigned int)(*(DWORD *)data - 1) >> 29].data[(*(DWORD *)data - 1) & 0x1FFFFFFF];
  *(DWORD*)data = (DWORD)&g_streamBlocks[(unsigned int)(*(DWORD *)data - 1) >> 28].data[(*(DWORD *)data - 1) & 0xFFFFFFF];
}

void __cdecl DB_ConvertOffsetToAlias(void *data)
{
  unsigned int offset;

  offset = *(DWORD *)data;
  assert(offset && (offset != 0xFFFFFFFF) && (offset != 0xFFFFFFFE));
//  *(DWORD *)data = *(DWORD *)&g_streamBlocks[(offset - 1) >> 29].data[(offset - 1) & 0x1FFFFFFF];
  *(DWORD *)data = *(DWORD *)&g_streamBlocks[(offset - 1) >> 28].data[(offset - 1) & 0xFFFFFFF];

}

const void **__cdecl DB_InsertPointer()
{
  const void **pData;

  DB_PushStreamPos(4u);
  pData = (const void **)DB_AllocStreamPos(3);
  DB_IncStreamPos(4);
  DB_PopStreamPos();
  return pData;
}

void __cdecl Load_TempStringCustom(const char **str)
{
  Load_XStringCustom(str);
  if ( *str )
  {
    *str = (const char *)SL_GetString(*str, 4u);
  }
  else
  {
    *str = 0;
  }
}

void __cdecl Load_Stream(bool atStreamStart, const void *ptr, int size)
{
    assert(atStreamStart == (ptr == DB_GetStreamPos()));
    if ( !atStreamStart || !size )
    {
        return;
    }
    if ( g_streamPosIndex - 1 < 3 )
    {
        if ( g_streamPosIndex == 1 )
        {
          memset((void*)ptr, 0, size);
        }
        else
        {
          assert(g_streamDelayIndex < ARRAY_COUNT( g_streamDelayArray ));

          g_streamDelayArray[g_streamDelayIndex].ptr = ptr;
          g_streamDelayArray[g_streamDelayIndex].size = size;
          ++g_streamDelayIndex;
        }
    }
    else
    {
        DB_LoadXFileData((byte*)ptr, size);
    }
    DB_IncStreamPos(size);
}

void __stdcall DB_FileReadCompletionDummyCallback(long unsigned int dwErrorCode, long unsigned int dwNumberOfBytesTransfered, struct _OVERLAPPED *lpOverlapped)
{

}


int __cdecl DB_AuthLoad_Inflate(struct z_stream_s *stream, int flush)
{
  return inflate(stream, flush);
}

void __cdecl DB_AuthLoad_InflateEnd(struct z_stream_s *stream)
{
  inflateEnd(stream);
}

XAsset *__cdecl AllocLoad_FxElemVisStateSample()
{
  return (XAsset *)DB_AllocStreamPos(3);
}

qboolean __cdecl DB_ReadData()
{
  char *fileBuffer;

  assert(g_load.compressBufferStart);
  assert(g_load.f);

  if ( g_load.interrupt )
  {
    g_load.interrupt();
  }
  fileBuffer = &g_load.compressBufferStart[g_load.overlapped.Offset % DBFILE_BUFFER_SIZE];

  Sys_WaitDatabaseThread();

  if ( _ReadFileEx(g_load.f, fileBuffer, 0x40000u, &g_load.overlapped, DB_FileReadCompletionDummyCallback) )
  {
    ++g_load.outstandingReads;
    g_load.overlapped.Offset += 0x40000;
    return qtrue;
  }
  return qfalse;
}

void DB_ReadXFileStage()
{
    if ( !g_load.f )
    {
        return;
    }
    assert ( !g_load.outstandingReads );
    if ( !DB_ReadData() && _GetLastError() != 38 )
    {
      Com_Error(ERR_DROP, "Read error of file '%s'", g_load.filename);
    }
}

void __cdecl DB_ResetZoneSize(bool trackLoadProgress)
{
  g_totalSize = 0;
  g_loadedSize = 0;
  g_totalExternalBytes = 0;
  g_loadedExternalBytes = 0;
  g_totalStreamBytes = 0;
  g_trackLoadProgress = trackLoadProgress;
}

void DB_WaitXFileStage()
{
    int waitStart;
    assert(g_load.f);
    assert(g_load.outstandingReads > 0);

    --g_load.outstandingReads;
    waitStart = Sys_Milliseconds();
    _SleepEx(-1, TRUE);
    g_totalWait += Sys_Milliseconds() - waitStart;
    InterlockedIncrement((DWORD*)&g_loadedSize);
    g_load.stream.avail_in += 0x40000;
}


#define INVALID_DBFILE -1

void __cdecl DB_CancelLoadXFile()
{
  if ( g_load.compressBufferStart )
  {
    while ( g_load.outstandingReads )
    {
      DB_WaitXFileStage();
    }

    DB_AuthLoad_InflateEnd(&g_load.stream);

    assert ( g_load.f );
    assert ( (signed int)g_load.f != INVALID_DBFILE );

    _CloseHandle(g_load.f);
  }
}



void __cdecl DB_LoadXFileData(byte *pos, int size)
{
  signed int lastAvailOutSize;
  int lastDeflateRemainingFileSize;
  int bytesToCopy;
  int err;

  assert(size);
  assert(g_load.f);
  assert(!g_load.stream.avail_out);
  if ( size <= 0 )
  {
    return;
  }
  while( size + g_load.deflateBufferPos > DEFLATE_BUFFER_SIZE && size > 0)
  {
      assert(g_load.deflateBufferPos <= DEFLATE_BUFFER_SIZE);

      if ( g_load.deflateBufferPos < DEFLATE_BUFFER_SIZE )
      {
        bytesToCopy = DEFLATE_BUFFER_SIZE - g_load.deflateBufferPos;
        if ( g_load.deflateBufferPos == DEFLATE_BUFFER_SIZE -1 )
        {
          *pos = g_load.deflateBuffer[g_load.deflateBufferPos];
        }
        else
        {
          memcpy(pos, &g_load.deflateBuffer[g_load.deflateBufferPos], bytesToCopy);
        }
        g_load.deflateBufferPos += bytesToCopy;
        pos += bytesToCopy;
        size -= bytesToCopy;
      }
      if ( g_load.deflateRemainingFileSize < DEFLATE_BUFFER_SIZE )
      {
        lastDeflateRemainingFileSize = g_load.deflateRemainingFileSize;
      }
      else
      {
        lastDeflateRemainingFileSize = DEFLATE_BUFFER_SIZE;
      }
      g_load.stream.avail_out = lastDeflateRemainingFileSize;
      g_load.deflateBufferPos = DEFLATE_BUFFER_SIZE - lastDeflateRemainingFileSize;
      g_load.stream.next_out = &g_load.deflateBuffer[DEFLATE_BUFFER_SIZE - lastDeflateRemainingFileSize];
      if ( lastDeflateRemainingFileSize < size )
      {
        lastAvailOutSize = g_load.stream.avail_out;
      }
      else
      {
        lastAvailOutSize = size;
      }
      size -= lastAvailOutSize;
      g_load.deflateRemainingFileSize -= g_load.stream.avail_out;
      do
      {
        if ( !g_load.stream.avail_in )
        {
          DB_WaitXFileStage();
          DB_ReadXFileStage();
          continue;
        }
        err = DB_AuthLoad_Inflate(&g_load.stream, 2);
        if ( err && err != 1)
        {
          //R_ShowDirtyDiscError();
          DB_CancelLoadXFile();
          Com_Error(ERR_DROP, "Fastfile for zone '%s' appears corrupt or unreadable (code %i.)", g_load.filename, err + 110);
        }
        if ( g_load.f)
        {
          assert((unsigned int)( g_load.stream.next_in - (byte*)g_load.compressBufferStart ) <= DBFILE_BUFFER_SIZE);
          if( g_load.stream.next_in == (byte*)g_load.compressBufferEnd)
          {
            g_load.stream.next_in = (byte*)g_load.compressBufferStart;
          }
        }
//        assertx(err == Z_OK, "Invalid fast file '%s' (%d != Z_OK)", g_load.filename, err);
        if ( g_load.stream.avail_out )
        {
          DB_WaitXFileStage();
          DB_ReadXFileStage();
        }
      }while(g_load.stream.avail_out);
      assert(lastAvailOutSize <= DEFLATE_BUFFER_SIZE);
      if ( lastAvailOutSize == 1 )
      {
        *pos = g_load.deflateBuffer[g_load.deflateBufferPos];
      }
      else
      {
        memcpy(pos, &g_load.deflateBuffer[g_load.deflateBufferPos], lastAvailOutSize);
      }
      g_load.deflateBufferPos += lastAvailOutSize;
      pos += lastAvailOutSize;
  }
  if ( size == 1 )
  {
    *pos = g_load.deflateBuffer[g_load.deflateBufferPos];
  }
  else
  {
    memcpy(pos, &g_load.deflateBuffer[g_load.deflateBufferPos], size);
  }
  g_load.deflateBufferPos += size;
}











#if 0
void __cdecl DB_LoadXFileData(byte *pos, int count)
{
  unsigned int err;
  int i;

  assert( size );
  assert( g_load.f );
  assert ( !g_load.stream.avail_out );

  g_load.stream.next_out = (byte *)pos;
  g_load.stream.avail_out = count;
  while ( 1 )
  {
    if ( g_load.stream.avail_in )
    {
        err = DB_AuthLoad_Inflate(&g_load.stream, 2);
        if ( err > 1 )
        {
//          R_ShowDirtyDiscError();
          if ( g_load.compressBufferStart )
          {
            for ( i = g_load.outstandingReads; g_load.outstandingReads; i = g_load.outstandingReads )
            {
              g_load.outstandingReads = i - 1;
              SleepEx(-1, TRUE);
              InterlockedIncrement((DWORD*)&g_loadedSize);
              g_load.stream.avail_in += 0x40000;
            }
            DB_AuthLoad_InflateEnd(&g_load.stream);
            _CloseHandle(g_load.f);
          }
          Com_Error(2, "Fastfile for zone '%s' appears corrupt or unreadable (code %i.)", g_load.filename, err + 110);
        }
        if ( g_load.f && g_load.stream.next_in == (byte*)g_load.compressBufferEnd )
        {
          g_load.stream.next_in = (byte*)g_load.compressBufferStart;
        }
        if ( !g_load.stream.avail_out )
        {
          return;
        }
    }
    DB_WaitXFileStage();
    DB_ReadXFileStage();
  }
}
#endif


void __cdecl DB_LoadXFileSetSize(int size)
{
  assert(g_load.deflateRemainingFileSize == 0);
  g_load.deflateRemainingFileSize = size;
}



bool s_usageUpToDate[ASSET_TYPE_COUNT];
int s_usageCounts[ASSET_TYPE_COUNT];

void __cdecl DB_GetAssetTypeUsageInfo(XAssetType assetType, const char **outName, int *outUsed, int *outPool)
{
  if ( !s_usageUpToDate[assetType] )
  {
    s_usageUpToDate[assetType] = 1;
    s_usageCounts[assetType] = DB_GetAllXAssetOfType(assetType, 0, 0);
  }
  *outUsed = s_usageCounts[assetType];
  *outPool = g_poolSize[assetType];
  *outName = g_assetNames[assetType];
}

void __cdecl DB_MarkAssetTypeUsageDirty()
{
  memset(s_usageUpToDate, 0, sizeof(s_usageUpToDate));
}

void __cdecl Load_DelayStream()
{
  unsigned int index;

  for ( index = 0; index < g_streamDelayIndex; ++index )
  {
    DB_LoadXFileData((byte*)g_streamDelayArray[index].ptr, g_streamDelayArray[index].size);
  }
}

bool __cdecl DB_IsMinimumFastFileLoaded()
{
  return g_minimumFastFileLoaded;
}
void __cdecl DB_ResetMinimumFastFileLoaded()
{
  g_minimumFastFileLoaded = 0;
}

int StreamPos()
{

    int pos = g_streamPos - g_streamBlocks[g_streamPosIndex].data;
    return pos;
}

void __cdecl Load_XAssetArrayCustom(int count)
{
  XAsset *var;
  int i;

  Load_Stream(1, varXAsset, 8 * count);
  var = (XAsset *)varXAsset;
  for ( i = 0; i < count; ++i )
  {
    varXAsset = var;
    Load_XAsset(0);
/*
    int spos = g_streamPos - g_streamBlocks[g_streamPosIndex].data;
    Com_Printf(CON_CHANNEL_SYSTEM, "%d, %d   -   Loaded %s\n", spos, g_streamPosIndex ,DB_GetXAssetName(varXAsset));
*/
    ++var;
    if ( g_load.abort )
    {
      break;
    }
  }
}

void __cdecl DB_LoadXFileInternal()
{
  bool fileIsSecure;
  int err;
  unsigned int version;
  XFile file;
  int fileSize;
  const char *failureReason;
  char magic[8];

  g_totalWait = 0;
  assert(g_load.f);

  DB_ReadXFileStage();

  if ( !g_load.outstandingReads )
  {
    Com_Error(ERR_DROP, "Fastfile for zone '%s' is empty.", g_load.filename);
  }

  DB_WaitXFileStage();
  DB_ReadXFileStage();

  assert(sizeof( magic ) <= g_load.stream.avail_in);

  memcpy(magic, g_load.stream.next_in, sizeof(magic));

  g_load.stream.next_in += 8;
  g_load.stream.avail_in -= 8;
  if ( memcmp(magic, "IWff0100", 8u) )
  {
    if ( memcmp(magic, "IWffu100", 8u) )
    {
//      R_ShowDirtyDiscError();
      Com_Error(ERR_DROP, "Fastfile for zone '%s' is corrupt or unreadable.", g_load.filename);
    }
  }

  assert(sizeof( version ) <= g_load.stream.avail_in);
  version = *(unsigned int*)g_load.stream.next_in;

  g_load.stream.next_in += 4;
  g_load.stream.avail_in -= 4;
  if ( version != FASTFILE_VERSION )
  {
    if ( version >= FASTFILE_VERSION )
    {
      Com_Error(ERR_DROP, "Fastfile for zone '%s' is newer than client executable (version %d, expecting %d)", g_load.filename, version, FASTFILE_VERSION);
    }
    else
    {
      Com_Error(ERR_DROP, "Fastfile for zone '%s' is out of date (version %d, expecting %d)", g_load.filename, version, FASTFILE_VERSION);
    }
  }
  fileIsSecure = memcmp(magic, "IWffu100", 8u) != 0;
  err = DB_AuthLoad_InflateInit(&g_load.stream, fileIsSecure);
  failureReason = 0;
  if ( fileIsSecure )
  {
    failureReason = "authenticated file not supported";
  }
  if ( err )
  {
    failureReason = "init failed";
  }
  if ( failureReason )
  {
//    R_ShowDirtyDiscError();
    DB_CancelLoadXFile();
    Com_Error(ERR_DROP, "Fastfile for zone '%s' could not be loaded (%s)", g_load.filename, failureReason);
  }

  assert(g_load.deflateBufferPos == DEFLATE_BUFFER_SIZE);

  DB_LoadXFileSetSize(sizeof(file));
  DB_LoadXFileData((byte*)&file, sizeof(file));

  DB_LoadXFileSetSize(file.size);

  if ( g_trackLoadProgress )
  {
    fileSize = _GetFileSize(g_load.f, 0);
    if ( file.externalSize + fileSize >= 0x100000 )
    {
      g_totalSize = (fileSize + 0x3FFFF) / 0x40000 - g_loadedSize;
      g_loadedSize = 0;
      g_totalExternalBytes = file.externalSize - g_loadedExternalBytes;
      g_loadedExternalBytes = 0;
    }
  }
  Com_Printf(CON_CHANNEL_SYSTEM, "Loading fastfile '%s'\n", g_load.filename);

  DB_AllocXBlocks(file.blockSize, g_load.filename, g_load.blocks, g_load.allocType, g_load.flags);

  DB_InitStreams(g_load.blocks);

  Load_XAssetListCustom();

//  PrintScriptStrings();

  DB_PushStreamPos(4u);

  if ( varXAssetList->assets )
  {
    varXAssetList->assets = AllocLoad_FxElemVisStateSample();
    varXAsset = varXAssetList->assets;
    Load_XAssetArrayCustom(varXAssetList->assetCount);
  }

  DB_PopStreamPos();
  Load_DelayStream();

  --g_loadingAssets;

  DB_MarkAssetTypeUsageDirty();
  DB_LoadDelayedImages();

  assert(g_load.compressBufferStart);

  Com_Printf(CON_CHANNEL_FILES, "Loaded fastfile '%s' in %ims (%dms waiting)\n", g_load.filename, Sys_Milliseconds() - g_load.startTime, g_totalWait);
  if ( g_load.flags & 1 )
  {
    g_minimumFastFileLoaded = 1;
  }
  DB_CancelLoadXFile();
}

bool __cdecl DB_LoadXFile(const char *path, HANDLE f, const char *filename, XBlock *blocks, void (__cdecl *interrupt)(), char *buf, int allocType, int flags)
{
//  assert ( (byte)buf & 3 );

  memset(&g_load, 0, sizeof(g_load));
  g_load.f = f;
  g_load.filename = filename;
  g_load.flags = flags;
  g_load.blocks = blocks;
  g_load.interrupt = interrupt;
  g_load.allocType = allocType;
  g_load.startTime = Sys_Milliseconds();

  assert( !g_load.compressBufferStart );
  assert( g_load.f);
  assert( buf);

  g_load.compressBufferStart = buf;
  g_load.compressBufferEnd = buf + DBFILE_BUFFER_SIZE;
  g_load.stream.next_in = (byte*)buf;
  g_load.stream.avail_in = 0;
  g_load.deflateBufferPos = DEFLATE_BUFFER_SIZE;
  DB_LoadXFileInternal();
  return 1;
}

byte *__cdecl AllocLoad_raw_byte()
{
  return DB_AllocStreamPos(0);
}


char** varTempString;
extern const char* varConstChar;
ScriptStringList* varScriptStringList;

void Load_XAssetListCustom()
{
  static struct XAssetList g_varXAssetList;

  varXAssetList = &g_varXAssetList;
  DB_LoadXFileData((byte *)&g_varXAssetList, 16);
  DB_PushStreamPos(4u);
  varScriptStringList = (ScriptStringList *)varXAssetList;
  Load_ScriptStringList(0);
  DB_PopStreamPos();
}

void __cdecl Load_XAsset(bool atStreamStart)
{
  Load_Stream(atStreamStart, varXAsset, 8);
  varXAssetHeader = &varXAsset->header;
  Load_XAssetHeader(0);
}

void __cdecl Load_XString(bool atStreamStart)
{
  Load_Stream(atStreamStart, varXString, 4);
  if ( *varXString )
  {
    if ( (signed int)*varXString == -1 )
    {
      *varXString = (char *)AllocLoad_raw_byte();
      varConstChar = *varXString;
      Load_XStringCustom((const char **)varXString);
    }
    else
    {
      DB_ConvertOffsetToPointer(varXString);
    }
  }
}

void __cdecl Load_ScriptStringCustom(uint16_t *var)
{
  *var = (uint16_t)(uint32_t)varXAssetList->stringList.strings[*var];
}

void __cdecl Load_ScriptString(bool atStreamStart)
{
  Load_Stream(atStreamStart, varScriptString, 2);
  Load_ScriptStringCustom(varScriptString);
}

void __cdecl Load_TempString(bool atStreamStart)
{
  Load_Stream(atStreamStart, varTempString, 4);
  if ( *varTempString )
  {
    if ( (signed int)*varTempString == -1 )
    {
      *varTempString = (char *)AllocLoad_raw_byte();
      varConstChar = *varTempString;
      Load_TempStringCustom((const char **)varTempString);
    }
    else
    {
      DB_ConvertOffsetToPointer(varTempString);
    }
  }
}

void __cdecl Load_TempStringArray(bool atStreamStart, int count)
{
  char **var;
  int i;

  Load_Stream(atStreamStart, varTempString, 4 * count);
  var = varTempString;
  for ( i = 0; i < count; ++i )
  {
    varTempString = var;
    Load_TempString(0);
    ++var;
  }
}


void __cdecl Load_ScriptStringList(bool atStreamStart)
{
  Load_Stream(atStreamStart, varScriptStringList, 8);
  DB_PushStreamPos(4u);
  if ( varScriptStringList->strings )
  {
    varScriptStringList->strings = (const char **)AllocLoad_FxElemVisStateSample();
    varTempString = (char **)varScriptStringList->strings;
    Load_TempStringArray(1, varScriptStringList->count);
  }
  DB_PopStreamPos();
}


void __cdecl Load_ScriptStringArray(bool atStreamStart, int count)
{
  uint16_t *var;
  int i;

  Load_Stream(atStreamStart, varScriptString, 2 * count);
  var = varScriptString;
  for ( i = 0; i < count; ++i )
  {
    varScriptString = var;
    Load_ScriptString(0);
    ++var;
  }
}

extern XModel* varXModel;

void Load_XModelBoneNames()
{
  if ( varXModel->boneNames )
  {
    if ( (signed int)(varXModel->boneNames) == -1 )
    {
      varXModel->boneNames = (uint16_t *)DB_AllocStreamPos(1);
      varScriptString = varXModel->boneNames;
      Load_ScriptStringArray(1, varXModel->numBones);
    }
    else
    {
      DB_ConvertOffsetToPointer(&varXModel->boneNames);
    }
  }
}

void DB_BuildZoneFilePath(const char* zoneName, char* oFilename, int maxlen)
{
    if(fs_gameDirVar->string && fs_gameDirVar->string[0] && Q_stricmp(zoneName, "mod") == 0)
    {
        //We look for mod files
        DB_BuildOSPath(zoneName, 1, maxlen, oFilename);
        return;
    }

    //We look for files in zone/language/*
    DB_BuildOSPath(zoneName, 0, maxlen, oFilename);

    if(FS_FileExists(oFilename))
    {
        return;
    }

    //Nothing found in zone dir? Look in Usermaps if running mods
    if(fs_gameDirVar->string && fs_gameDirVar->string[0])
    {
        //We look for usermap files
        DB_BuildOSPath(zoneName, 2, maxlen, oFilename);
        return;
    }
}


void __cdecl DB_Sleep(int usec)
{
    Sys_SleepUSec(usec);
}

int DB_GetZoneAllocType(int zoneFlags)
{
  switch ( zoneFlags )
  {
    case 1:
    case 4:
    case 0x20:
    case 0x40:
      return 1;
    default:
      return 0;
  }
}


bool __cdecl DB_TryLoadXFileInternal(const char *zoneName, signed int zoneFlags, char* g_fileBuf)
{
    HANDLE zoneFile;
    char filename[256];
    unsigned int i;
    XZone* z;
    unsigned int startWaitingTime;
    unsigned int g_zoneAllocType;
//    char g_fileBuf[DBFILE_BUFFER_SIZE];

    DB_BuildZoneFilePath(zoneName, filename, sizeof(filename));
    zoneFile = _CreateFileA(filename, 0x80000000, 1, 0, 3, 0x60000000, 0);
    if ( zoneFile == (HANDLE)-1 )
    {
      if ( strstr(filename, "_load") )
      {
        Com_PrintWarning(CON_CHANNEL_FILES, "WARNING: Could not find zone '%s'\n", filename);
      }
      else
      {
        Sys_DatabaseCompleted();
        Com_Error(ERR_DROP, "ERROR: Could not find zone '%s'\n", filename);
      }
      return 0;
    }
    g_zoneIndex = 0;
    for ( i = 1; i < ARRAY_COUNT(g_zones); ++i )
    {
      if ( !g_zones[i].zoneinfo.name[0] )
      {
        g_zoneIndex = i;
        break;
      }
    }

    z = &g_zones[g_zoneIndex];
    memset(z, 0, sizeof(XZone));
    g_zoneHandles[g_zoneCount] = g_zoneIndex;

    Q_strncpyz(z->zoneinfo.name, zoneName, sizeof(z->zoneinfo.name));
    z->zoneinfo.flags = zoneFlags;
    z->zoneSize = _GetFileSize(zoneFile, 0);
    z->ff_dir = 0;

    ++g_zoneCount;
    g_loadingZone = 1;

    while ( g_isRecoveringLostDevice )
    {
      Sys_SleepUSec(25000);
    }
    g_mayRecoverLostAssets = 0;

    g_zoneAllocType = DB_GetZoneAllocType(zoneFlags);

    if(g_zoneAllocType == 1 && g_initializing)
    {
      startWaitingTime = Sys_Milliseconds();
      Com_Printf(CON_CHANNEL_DONT_FILTER, "Waiting for $init to finish.  There may be assets missing from code_post_gfx.\n");

      while ( g_initializing )
      {
        DB_Sleep(1000);
      }

      Com_Printf(CON_CHANNEL_SYSTEM, "Waited %d ms for $init to finish.\n", Sys_Milliseconds() - startWaitingTime);
    }

    PMem_BeginAlloc(z->zoneinfo.name, g_zoneAllocType, TRACK_FASTFILE);

    z->index = g_zoneAllocType;

    DB_ResetZoneSize((zoneFlags & 8) != 0);
    DB_LoadXFile(filename, zoneFile, z->zoneinfo.name, z->zonememory.blocks, NULL, g_fileBuf, g_zoneAllocType, 0);

    PMem_EndAlloc(z->zoneinfo.name, g_zoneAllocType);
    g_loadingZone = 0;
    g_mayRecoverLostAssets = 1;
    return 1;
}


void DB_TryLoadXFile()
{
  bool isCodeZone;
  unsigned int j;
  unsigned int zoneInfoCount;

  if ( g_zoneInfoCount )
  {
    zoneInfoCount = g_zoneInfoCount;
    g_zoneInfoCount = 0;
    assert(!g_loadingZone);
    char *g_fileBuf = (char*)Z_Malloc(DBFILE_BUFFER_SIZE);

    for ( j = 0; j < zoneInfoCount; ++j )
    {
      isCodeZone = (g_zoneInfo[j].flags & 1) != 0;
      if ( !DB_TryLoadXFileInternal(g_zoneInfo[j].name, g_zoneInfo[j].flags, g_fileBuf) )
      {
          --g_loadingAssets;
      }
    }
    assert(!g_loadingZone);
    assert(!g_loadingAssets);
/*
    Sys_LockWrite(&s_dbReorder.critSect);
    DB_EndReorderZone();
    Sys_UnlockWrite(&s_dbReorder.critSect);
*/
    Sys_DatabaseCompleted();
    Z_Free(g_fileBuf);
    return;
  }
  assert(!g_loadingAssets);
}



void __cdecl __noreturn DB_Thread(unsigned int threadContext)
{
  jmp_buf* savestate;

  assertx( threadContext == THREAD_CONTEXT_DATABASE, "%i, %i", threadContext, THREAD_CONTEXT_DATABASE);

  savestate = (jmp_buf*)Sys_GetValue(2);
  if ( setjmp( *savestate ) )
  {
    Com_ErrorAbort();
  }

  R_ReleaseDXDeviceOwnership();

  while ( 1 )
  {
    Sys_WaitStartDatabase();
    DB_TryLoadXFile();
  }
}


void __cdecl DB_InitThread()
{
  if ( !Sys_SpawnDatabaseThread(DB_Thread) )
  {
    Sys_Error("Failed to create database thread");
  }
}


void __cdecl DB_SetInitializing(bool inUse)
{
  g_initializing = inUse;
}

void DB_ArchiveAssets()
{
  if ( !g_archiveBuf )
  {
    g_archiveBuf = 1;
    R_SyncRenderThread();
    R_ClearAllStaticModelCacheRefs();
    DB_SaveSounds();
    DB_SaveDObjs();
  }
}

void __cdecl DB_InitPoolHeader(XAssetType type)
{
  if ( DB_XAssetPool[type] )
  {
    DB_InitPoolHeaderHandler[type](DB_XAssetPool[type], g_poolSize[type]);
  }
}



void __cdecl DB_Init()
{
  int type;
  unsigned int i;
/*
  db_xassetdebug = _Dvar_RegisterBool("db_xassetdebug", 0, 0, "debug assets loading");
  db_xassetdebugtype = _Dvar_RegisterInt("db_xassetdebugtype", -1, -2, 43, 0, "debug assets loading type: -1 all; indexes start at 0");
*/
  DB_InitXAssetPools( );

  for ( type = 0; type < ASSET_TYPE_COUNT; ++type )
  {
    DB_InitPoolHeader((XAssetType)type);
  }
  g_freeAssetEntryHead = &g_assetEntryPool[1];
  for ( i = 1; i < XASSET_ENTRY_POOL_SIZE -1; ++i )
  {
    g_assetEntryPool[i].next = &g_assetEntryPool[i + 1];
  }
  g_assetEntryPool[XASSET_ENTRY_POOL_SIZE -1].next = NULL;
}


void DB_LockWrite()
{
  while ( 1 )
  {
    if ( !db_hashCritSect.readcount )
    {
      if ( InterlockedIncrement(&db_hashCritSect.writecount) == 1 && !db_hashCritSect.readcount )
      {
        break;
      }
      InterlockedDecrement(&db_hashCritSect.writecount);
    }
    Sys_SleepSec(0);
  }
}

void DB_FreeXBlocks(XBlock *blocks)
{
	Com_Memset(blocks, 0, sizeof(XBLOCK_COUNT * sizeof(XBlock)));
}

void DB_FreeXZoneMemory(XZoneMemory* zonemem)
{
	if(zonemem->vertexBufferHandle)
	{
		R_UnlockVertexBuffer(zonemem->vertexBufferHandle);
		R_FreeStaticVertexBuffer(zonemem->vertexBufferHandle);
	}

	if(zonemem->indexBufferHandle)
	{
		R_UnlockIndexBuffer(zonemem->indexBufferHandle);
		R_FreeStaticIndexBuffer(zonemem->indexBufferHandle);
	}
	DB_FreeXBlocks(zonemem->blocks);
}

void __cdecl DB_UnloadXZoneMemory(XZone *zone)
{
  DB_FreeXZoneMemory(&zone->zonememory);

  Com_Printf(CON_CHANNEL_SYSTEM, "Unloaded fastfile '%s'\n", zone->zoneinfo.name);
  PMem_Free(zone->zoneinfo.name);

  zone->zoneinfo.name[0] = 0;
}


void __cdecl DB_UnloadXAssetsMemory(XZone *zone)
{
  int zoneIter;

  for ( zoneIter = 0; zone != &g_zones[zoneIter]; ++zoneIter )
  {
    assert(zoneIter < g_zoneCount);
  }

  DB_UnloadXZoneMemory(zone);
  --g_zoneCount;
  while ( zoneIter < g_zoneCount )
  {
    memcpy(&g_zones[zoneIter], &g_zones[zoneIter + 1], sizeof(XZone));
    ++zoneIter;
  }
}

void __cdecl DB_UnloadXAssetsMemoryForZone(int zoneFreeFlags, int zoneFreeBit)
{
  int i;

  if ( zoneFreeBit & zoneFreeFlags )
  {
    for ( i = g_zoneCount - 1; i >= 0; --i )
    {
      if ( zoneFreeBit & g_zones[i].zoneinfo.flags )
      {
        DB_UnloadXAssetsMemory(&g_zones[i]);
      }
    }
  }
}


void DB_UnlockWrite()
{
  InterlockedDecrement(&db_hashCritSect.writecount);
}


void DB_UnarchiveAssets()
{
  assert(g_archiveBuf);
  assert(Sys_IsMainThread() || Sys_IsRenderThread());

  g_archiveBuf = 0;
  DB_LoadSounds();
  DB_LoadDObjs();
  Material_DirtyTechniqueSetOverrides();
  BG_FillInAllWeaponItems();
}


void __cdecl DB_LoadXZone(XZoneInfo *zoneInfo, unsigned int zoneCount)
{
  unsigned int j;
  const char *zoneName;
  unsigned int zoneInfoCount;

  if ( g_zoneCount == ARRAY_COUNT( g_zoneInfo ) )
  {
    Com_Error(ERR_DROP, "Max zone count exceeded");
  }
  assert(!g_zoneInfoCount);
  assert(!g_loadingAssets);

  zoneInfoCount = 0;
  for ( j = 0; j < zoneCount; ++j )
  {
    zoneName = zoneInfo[j].name;
    if ( zoneName )
    {
      assert(zoneInfoCount < ARRAY_COUNT( g_zoneInfo ));

      Q_strncpyz(g_zoneInfo[zoneInfoCount].name, zoneName, sizeof(g_zoneInfo[zoneInfoCount].name));
      Com_Printf(CON_CHANNEL_SYSTEM, "Adding fastfile '%s' to queue\n", g_zoneInfo[zoneInfoCount].name);
      g_zoneInfo[zoneInfoCount].flags = zoneInfo[j].allocFlags;
      zoneInfoCount++;
    }
  }
  if ( zoneInfoCount )
  {
    g_loadingAssets = zoneInfoCount;
    Sys_WakeDatabase2();
    Sys_WakeDatabase();
    g_zoneInfoCount = zoneInfoCount;
    Sys_NotifyDatabase();
  }
}

void __cdecl DB_LoadXAssets(XZoneInfo *zoneInfo, unsigned int zoneCount, int sync)
{
  static bool g_zoneInited = false;
  bool unloadedZone;
  int zh;
  unsigned int j;
  int i;
  int zoneFreeFlags;

  assert(Sys_IsMainThread() || Sys_IsRenderThread());
  assert(zoneCount);


  if ( !g_zoneInited )
  {
    g_zoneInited = true;
    DB_Init();
    /*
    Cmd_AddCommandInternal("loadzone", DB_LoadZone_f, &DB_LoadZone_f_VAR);
    Cmd_AddCommandInternal("listdefaultassets", DB_ListDefaultEntries_f, &DB_ListDefaultEntries_f_VAR);
    Cmd_AddCommandInternal("listassetpool", DB_ListAssetPool_f, &DB_ListAssetPool_f_VAR);
    Cmd_AddCommandInternal("dumpmateriallist", DB_DumpMaterialList_f, &DB_DumpMaterialList_f_VAR);
  */
  }
  unloadedZone = 0;
  Material_ClearShaderUploadList();
  Sys_SyncDatabase();
  DB_PostLoadXZone();

  assert(!g_archiveBuf);

  for ( j = 0; j < zoneCount; ++j )
  {
    zoneFreeFlags = zoneInfo[j].freeFlags;
    for ( i = g_zoneCount - 1; i >= 0; --i )
    {
      zh = g_zoneHandles[i];
      if ( zoneFreeFlags & g_zones[zh].zoneinfo.flags )
      {
        if ( !unloadedZone )
        {
            unloadedZone = 1;
            DB_SyncExternalAssets();
            DB_ArchiveAssets( );
            DB_LockWrite();
        }
        DB_UnloadXZone(zh, 1);
      }
    }
  }
  
  if ( unloadedZone )
  {
    DB_FreeUnusedResources();
    for ( j = 0; j < zoneCount; ++j )
    {
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 64);
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 32);
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 16);
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 8);
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 4);
      DB_UnloadXAssetsMemoryForZone(zoneInfo[j].freeFlags, 1);
    }
    DB_UnlockWrite();
    DB_UnarchiveAssets();
  }
  
  if ( sync )
  {
    DB_ArchiveAssets();
  }

  g_sync = sync;
  DB_LoadXZone(zoneInfo, zoneCount);

  if ( sync )
  {
    assert(!g_copyInfoCount);
    Sys_SyncDatabase();
    DB_UnarchiveAssets();
  }
}




};






