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



#include "q_shared.h"
#include "qcommon_io.h"
#include "cvar.h"
#include "xassets.h"
#include "sys_patch.h"
#include "qcommon_mem.h"
#include "filesystem.h"
#include "qcommon.h"
#include "cmd.h"
#include "xassets/xmodel.h"
#include "sys_thread.h"
#include "zlib/unzip.h"

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#define XBLOCK_COUNT_IW3 9
#define XBLOCK_COUNT_T5 7
#define XBLOCK_COUNT XBLOCK_COUNT_IW3
#define DM_MEMORY_PHYSICAL 2
#define DEFLATE_BUFFER_SIZE 0x8000
#define FASTFILE_VERSION 5

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
qboolean g_trackLoadProgress;
int g_totalWait;
struct XBlock* g_streamBlocks;
unsigned int g_streamDelayIndex;
byte* g_streamPosArray[XBLOCK_COUNT];
unsigned int g_streamPosStackIndex;
bool g_minimumFastFileLoaded;
volatile unsigned int g_loadingAssets;

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
/*  return (byte *)_PMem_AllocNamed(size, 0x1000u, mtype, allocType, filename, TRACK_FASTFILE,
                    "C:\\projects_pc\\cod\\codsrc\\src\\database\\db_memory.cpp", 77);
*/
  return (byte *)PMem_Alloc(size, 0x1000u, mtype, allocType);
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
//      Com_DPrintf(CON_CHANNEL_SYSTEM, "Block %d: %d bytes\n", blockIndex, size);
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

void __stdcall DB_FileReadCompletionDummyCallback(unsigned int dwErrorCode, unsigned int dwNumberOfBytesTransfered, struct _OVERLAPPED *lpOverlapped)
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
  fileBuffer = &g_load.compressBufferStart[g_load.overlapped.Offset % 0x80000];

  Sys_WaitDatabaseThread();

  if ( ReadFileEx(g_load.f, fileBuffer, 0x40000u, &g_load.overlapped, DB_FileReadCompletionDummyCallback) )
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
    if ( !DB_ReadData() && GetLastError() != 38 )
    {
      Com_Error(ERR_DROP, "Read error of file '%s'", g_load.filename);
    }
}

void __cdecl DB_ResetZoneSize(qboolean trackLoadProgress)
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
    SleepEx(-1, TRUE);
    g_totalWait += Sys_Milliseconds() - waitStart;
    InterlockedIncrement((DWORD*)&g_loadedSize);
    g_load.stream.avail_in += 0x40000;
}

void __cdecl DB_LoadXFileData(byte *pos, int count)
{
  unsigned int err;
  int i;

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
            CloseHandle(g_load.f);
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

void __cdecl DB_LoadXFileSetSize(int size)
{
  assert(g_load.deflateRemainingFileSize == 0);
  g_load.deflateRemainingFileSize = size;
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

    CloseHandle(g_load.f);
  }
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
    fileSize = GetFileSize(g_load.f, 0);
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
  g_load.flags = 0;//flags;
  g_load.blocks = blocks;
  g_load.interrupt = interrupt;
  g_load.allocType = allocType;
  g_load.startTime = Sys_Milliseconds();

  assert ( !g_load.compressBufferStart );
  assert( g_load.f);
  assert( buf);

  g_load.compressBufferStart = buf;
  g_load.compressBufferEnd = buf + 0x80000;
  g_load.stream.next_in = (byte*)buf;
  g_load.stream.avail_in = 0;
  g_load.deflateBufferPos = 0x8000;
  //DB_LoadXFileInternal();
  return 1;
}


}
