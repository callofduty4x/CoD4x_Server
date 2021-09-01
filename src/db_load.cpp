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
#include <ctype.h>

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

int XAssetEntryHighCount, XAssetEntryHighWaterMark;
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
int g_poolSize[ASSET_TYPE_COUNT];
bool g_poolSizeModified[ASSET_TYPE_COUNT];
extern int g_defaultAssetCount;

cvar_t* db_xassetdebug;
cvar_t* db_xassetdebugtype;


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
union XAssetEntryPoolEntry g_assetEntryPool[32768];
uint16_t db_hashTable[32768];
extern XAssetEntry *g_copyInfo[2048];

extern void (__cdecl *DB_InitPoolHeaderHandler[ASSET_TYPE_COUNT])(void *, int);
XAnimParts g_XAnimPartsPool[4096];

/*
float* varfloat;
int16_t* varshort;
byte* varbyte;
XModel* varXModel;
*/
extern char** varXString;
extern void (__cdecl *DB_FreeXAssetHeaderHandler[ASSET_TYPE_COUNT])(void *, XAssetHeader);

void *DB_XAssetPool[ASSET_TYPE_COUNT];


extern "C"{
  void DB_SaveSounds();
  void DB_SaveDObjs();
  void DB_SyncExternalAssets();
  //void __regparm2 DB_UnloadXZone(unsigned int zoneIndex, bool createDefault);
  void DB_LoadSounds();
  void __cdecl Load_SndAliasCustom(snd_alias_list_t **var);
  void Mark_XAsset();
  XAssetEntryPoolEntry *__cdecl DB_LinkXAssetEntry(XAssetEntry *newEntry, int allowOverride);
  void __cdecl DB_RecoverGeometryBuffers(XZoneMemory *xzonemem);
  void __cdecl DB_ReleaseGeometryBuffers(XZoneMemory *zonemem);
};

void XAssetUsage_f();
void __cdecl DB_UnloadXZone(XZone *zone, bool createDefault);
void __cdecl DB_UnloadXZoneInternal(unsigned int zone, bool createDefault);


void* XAssetAllocPool(int type, int sizeoftype)
{
  assert(type >= 0 && type < ASSET_TYPE_COUNT);

  if(g_poolSize[type] == 0)
  {
    return NULL;
  }
  assert(sizeoftype > 0);

//  return (void *)_PMem_AllocNamed(g_poolSize[type] * sizeoftype, 0x4u, 0, 0, "xasset_pool", TRACK_FASTFILE);
  return Z_TagMalloc(g_poolSize[type] * sizeoftype +4, TAG_XZONE);
}



qboolean DB_XAssetNoAlloc(enum XAssetType i)
{
	if(i == ASSET_TYPE_CLIPMAP)
		return qtrue;
	if(i == ASSET_TYPE_CLIPMAP_PVS)
		return qtrue;
	if(i == ASSET_TYPE_COMWORLD)
		return qtrue;
	if(i ==	ASSET_TYPE_GAMEWORLD_SP)
		return qtrue;
	if(i == ASSET_TYPE_GAMEWORLD_MP)
		return qtrue;
	if(i == ASSET_TYPE_MAP_ENTS)
		return qtrue;
	if(i == ASSET_TYPE_GFXWORLD)
		return qtrue;
	if(i == ASSET_TYPE_UI_MAP)
		return qtrue;
	if(i == ASSET_TYPE_SNDDRIVER_GLOBALS)
		return qtrue;
	if(i == ASSET_TYPE_AITYPE)
		return qtrue;
	if(i == ASSET_TYPE_MPTYPE)
		return qtrue;
	if(i == ASSET_TYPE_CHARACTER)
		return qtrue;
	if(i == ASSET_TYPE_LOCALIZE_ENTRY)
		return qtrue;
	if(i == ASSET_TYPE_XMODELALIAS)
		return qtrue;
	if(i == ASSET_TYPE_RAWFILE)
		return qtrue;
	if(i == ASSET_TYPE_MENU)
		return qtrue;
	if(i == ASSET_TYPE_WEAPON)
		return qtrue;
	if(i == ASSET_TYPE_STRINGTABLE)
		return qtrue;

	return qfalse;
}

void DB_ParseRequestedXAssetNum()
{
	char toparse[1024];
	const char* type_name;
	char* scanpos;
	char scanstring[64];
	int i, count;

	cvar_t *r_xassetnum = Cvar_RegisterString("r_xassetnum", "", CVAR_INIT, "The list of xassets with their count in the key=value key=value... format");

	Com_sprintf(toparse, sizeof(toparse), " %s", r_xassetnum->string);

	for(i = 0;  i < ASSET_TYPE_COUNT; ++i)
	{
		if(DB_XAssetNoAlloc((XAssetType)i) || i == ASSET_TYPE_MENU || i == ASSET_TYPE_WEAPON || i == ASSET_TYPE_STRINGTABLE)
		{
			continue;
		}

		type_name = g_assetNames[ i ];

		Com_sprintf(scanstring, sizeof(scanstring), " %s=", type_name);

		scanpos = strstr(toparse, scanstring);
		if(scanpos == NULL)
		{
			continue;
		}

		scanpos += strlen(scanstring);

		count = atoi(scanpos);
		if(count < 1 || count > 65535)
		{
			continue;
		}
		
		if(count <= g_poolSize[i])
		{
			continue;
		}
		g_poolSize[i] = count;
		g_poolSizeModified[i] = true;
	}
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
  memset(g_poolSizeModified, 0, sizeof(g_poolSizeModified));
}

void DB_InitXAssetPools( )
{
        DB_InitPoolSize();
        DB_ParseRequestedXAssetNum();

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


bool DB_CanFreeXAssetPool(int type )
{
    switch(type)
    {
        case ASSET_TYPE_XANIMPARTS:
        case ASSET_TYPE_CLIPMAP:
        case ASSET_TYPE_CLIPMAP_PVS:
        case ASSET_TYPE_COMWORLD:
        case ASSET_TYPE_GAMEWORLD_MP:
        case ASSET_TYPE_GFXWORLD:
            return false;
        default:
            break;
    }
    if(DB_XAssetPool[type] != NULL)
    {
        return true;
    }
    return false;
}



extern "C"
{

void __cdecl DB_ShutdownXAssetPools()
{
    int i;

    for(i = 0; i < ASSET_TYPE_COUNT; ++i)
    {
        if(DB_CanFreeXAssetPool(i ))
        {
            Z_Free(DB_XAssetPool[i]);
            DB_XAssetPool[i] = NULL;
        }
    }

}



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
  bool ateof;
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

//#pragma message "StaticIndexBuffer? StaticVertexBuffer?"
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

//g_load.outstandingReads get increased by 1 when we have read data of amount 0x40000 or less on end of file
//g_load.outstandingReads gets lowered by 1 when 

void DB_ReadXFileStage()
{
    g_load.ateof = false;
    if ( !g_load.f )
    {
        return;
    }
    assert ( !g_load.outstandingReads );
    if ( !DB_ReadData() )
    {
      if(_GetLastError() == 38)
      {
        g_load.ateof = true;
      }else{
        Com_Error(ERR_DROP, "Read error of file '%s'", g_load.filename);
      }
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
    while ( g_load.outstandingReads > 0)
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
        if(err == Z_STREAM_END)
        {
          if(g_load.stream.avail_out > 0 && g_load.ateof)
          {
            DB_CancelLoadXFile();
            Com_Error(ERR_DROP, "Fastfile for zone '%s' appears corrupt or unreadable. Unexpected end of stream. Missing %d bytes.",
              g_load.filename, g_load.stream.avail_out + g_load.deflateRemainingFileSize);
          }
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

int DB_BuildZoneFilePath(const char* zoneName, char* oFilename, int maxlen)
{
    if(fs_gameDirVar->string && fs_gameDirVar->string[0] && Q_stricmp(zoneName, "mod") == 0)
    {
        //We look for mod files
        DB_BuildOSPath(zoneName, 1, maxlen, oFilename);
        return 1;
    }

    if(fs_gameDirVar->string && fs_gameDirVar->string[0]) //Load from fs_gamedirvar or from zone/language
    {
      if ( Q_stricmp(zoneName, "common_mp") == 0 || Q_stricmp(zoneName, "localized_common_mp") == 0 ||
         Q_stricmp(zoneName, "code_post_gfx_mp") == 0 || Q_stricmp(zoneName, "localized_code_post_gfx_mp") == 0
      ){
        DB_BuildOSPath(zoneName, 1, maxlen, oFilename);

        if(FS_FileExistsOSPath(oFilename))
        {
          return 1;
        }
      }
    }

    //We look for files in zone/language/*
    DB_BuildOSPath(zoneName, 0, maxlen, oFilename);

    if(FS_FileExistsOSPath(oFilename))
    {
      return 0;
    }

    //Nothing found in zone dir? Look in Usermaps if running mods
    if(fs_gameDirVar->string && fs_gameDirVar->string[0])
    {
        //We look for usermap files
        DB_BuildOSPath(zoneName, 2, maxlen, oFilename);
        return 2;
    }
    return -1;
}


bool DB_GetQPathForZone(const char* zonePath, int maxlen, char* opath)
{
	int i;
	XZone *zone;
	const char* fi;
	char zoneName[256];
	int zoneNameLen;
	bool loadimage;
  assert(opath);
  assert(zonePath);

	opath[0] = '\0';

  if(zonePath[0] == 0)
  {
    return false;
  }
    if((fi = strrchr(zonePath, '/')) != NULL)
    {
        Q_strncpyz(zoneName, fi +1, sizeof(zoneName));
    }else{
        Q_strncpyz(zoneName, zonePath, sizeof(zoneName));
    }
    zoneNameLen = strlen(zoneName);
    if(zoneNameLen > 5 && Q_stricmp(zoneName + zoneNameLen -5, "_load") == 0)
    {
        loadimage = true;
        zoneName[zoneNameLen -5] = 0;
    }else{
        loadimage = false;
    }

	for(i = 0, zone = g_zones; i < 32; i++, ++zone)
	{
		if ( Q_stricmp(zone->zoneinfo.name, zoneName) != 0 )
		{
			continue;
		}
    if(loadimage)
    {
        Q_strncat(zoneName,  sizeof(zoneName), "_load");
    }
    DB_BuildQPath(zoneName, zone->ff_dir, maxlen, opath);
    if(*opath)
    {
      return true;
    }
    return false;
  }
  return false;
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
    int ff_dir;
    XZone* z;
    unsigned int startWaitingTime;
    unsigned int g_zoneAllocType;
//    char g_fileBuf[DBFILE_BUFFER_SIZE];

    ff_dir = DB_BuildZoneFilePath(zoneName, filename, sizeof(filename));
    zoneFile = (HANDLE)-1;

    if(ff_dir >= 0)
    {
      zoneFile = _CreateFileA(filename, 0x80000000, 1, 0, 3, 0x60000000, 0);
    }
    if (ff_dir >= 0 && zoneFile == (HANDLE)-1 )
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
    if (zoneFile == (HANDLE)-1 )
    {
        Sys_DatabaseCompleted();
//        Com_Error(ERR_DROP, "ERROR: Could not find zone '%s'\n", filename);
        Com_PrintError(CON_CHANNEL_FILES, "ERROR: Could not find zone '%s'\n", filename);
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
    z->ff_dir = ff_dir;

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
  //bool isCodeZone;
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
      //isCodeZone = (g_zoneInfo[j].flags & 1) != 0;
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

cvar_t* db_nobspweapon;


void __cdecl DB_Init()
{
  int type;
  unsigned int i;

  db_xassetdebug = Cvar_RegisterBool("db_xassetdebug", qfalse, 0, "debug assets loading");
  db_xassetdebugtype = Cvar_RegisterInt("db_xassetdebugtype", -2, -2, 43, 0, "debug assets loading type: -1 all; indexes start at 0");
  db_nobspweapon = Cvar_RegisterBool("db_nobspweapon", qfalse, 0, "Do not load weapons from map/usermap fastfiles. Can free up to 2 weapons");

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

  Cmd_AddCommand("XAssetUsage", XAssetUsage_f);

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
  Sys_WaitDatabaseThread(); //Required here so it can not clash with PMem_Free()

  DB_FreeXZoneMemory(&zone->zonememory);

  Com_Printf(CON_CHANNEL_SYSTEM, "Unloaded fastfile '%s'\n", zone->zoneinfo.name);
  PMem_Free(zone->zoneinfo.name);

  zone->zoneinfo.name[0] = 0;
}


void __cdecl DB_UnloadXAssetsMemory(XZone *zone)
{
  int zoneIter;

  for ( zoneIter = 0; zone != &g_zones[g_zoneHandles[zoneIter]]; ++zoneIter )
  {
    assert(zoneIter < g_zoneCount);
  }

  DB_UnloadXZoneMemory(zone);
  --g_zoneCount;
  while ( zoneIter < g_zoneCount )
  {
    g_zoneHandles[zoneIter] = g_zoneHandles[zoneIter + 1];
    ++zoneIter;
  }
}

void __cdecl DB_UnloadXAssetsMemoryForZone(int zoneFreeFlags, int zoneFreeBit)
{
  int i, zh;

  if ( zoneFreeBit & zoneFreeFlags )
  {
    for ( i = g_zoneCount - 1; i >= 0; --i )
    {
      zh = g_zoneHandles[i];

      if ( zoneFreeBit & g_zones[zh].zoneinfo.flags )
      {
        DB_UnloadXAssetsMemory(&g_zones[zh]);
      }
    }
  }
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
    g_zoneInfoCount = zoneInfoCount;

    Sys_WakeDatabase2();
    Sys_WakeDatabase();
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
			DB_SyncExternalAssets( );
            DB_ArchiveAssets( );
            Sys_EnterCriticalSection(CRITSECT_DBHASH);
        }
        DB_UnloadXZoneInternal(zh, true);
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
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);
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



void __cdecl DB_FreeXAssetHeader(XAssetType type, XAssetHeader header)
{
  DB_FreeXAssetHeaderHandler[type](DB_XAssetPool[type], header);
}


void __cdecl DB_FreeXAssetEntry(XAssetEntry *assetEntry)
{
  XAssetEntryPoolEntry *oldFreeHead;

  DB_FreeXAssetHeader(assetEntry->asset.type, assetEntry->asset.header);
  --XAssetEntryHighCount;
  oldFreeHead = g_freeAssetEntryHead;
  g_freeAssetEntryHead = (XAssetEntryPoolEntry *)assetEntry;
  *(XAssetEntryPoolEntry **)assetEntry = oldFreeHead;
}


void DB_FreeDefaultEntries()
{
  unsigned int nextAssetEntryIndex;
  unsigned int hash;
  unsigned int assetEntryIndex;
  XAssetEntryPoolEntry *assetEntry;

  for ( hash = 0; hash < ARRAY_COUNT(db_hashTable); ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = nextAssetEntryIndex )
    {
      assetEntry = &g_assetEntryPool[assetEntryIndex];
      nextAssetEntryIndex = assetEntry->entry.nextHash;

//      assert(!assetEntry->entry.zoneIndex); Will fail on some mods. Won't bother anymore why
      assert(!assetEntry->entry.nextOverride);
      assert(g_defaultAssetCount);

//      --g_defaultAssetCount;
      DB_FreeXAssetEntry(&assetEntry->entry);
    }
    db_hashTable[hash] = 0;
  }
//  assert(!g_defaultAssetCount);
}



void __cdecl DB_ShutdownXAssets()
{
  int i, zh;

  if(db_xassetdebug == NULL) //Got never initialized
  {
    return;
  }

  DB_SyncXAssets();
  DB_SyncExternalAssets();
  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  for ( i = g_zoneCount - 1; i >= 0; --i )
  {
    DB_UnloadXZoneInternal(g_zoneHandles[i], false);
  }
  DB_FreeDefaultEntries();
  DB_FreeUnusedResources();
  for ( i = g_zoneCount - 1; i >= 0; --i )
  {
    zh = g_zoneHandles[i];
    DB_UnloadXZoneMemory(&g_zones[zh]);
  }
  g_zoneCount = 0;
  DB_ResetMinimumFastFileLoaded();

  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
}







int DB_FileSize(const char *filename, int FF_DIR)
{
    char ospath[MAX_OSPATH];
    DB_BuildOSPath(filename, FF_DIR, sizeof(ospath), ospath);
    return FS_filelengthForOSPath(ospath);
}



void DB_ReferencedFastFiles(char* g_zoneSumList, char* g_zoneNameList, int maxsize)
{
	int i;
	XZone *zone;
	char fileName[MAX_OSPATH];
	int filesize;
	char checkSum[64];

	g_zoneSumList[0] = '\0';
	g_zoneNameList[0] = '\0';

	for(i = 0, zone = g_zones; i < 32; i++, ++zone)
	{
		if ( zone->zoneinfo.name[0] == '\0' || !Q_strncmp(zone->zoneinfo.name, "localized_", 10) )
		{
			continue;
		}

		if ( zone->ff_dir == 1 )
		{
			if ( g_zoneNameList[0] )
			{
				Q_strncat(g_zoneNameList, maxsize, " ");
			}
          Q_strncat(g_zoneNameList, maxsize, fs_gameDirVar->string);
          Q_strncat(g_zoneNameList, maxsize, "/");
          Q_strncat(g_zoneNameList, maxsize, zone->zoneinfo.name);
		if ( g_zoneSumList[0] )
		{
			Q_strncat(g_zoneSumList, maxsize, " ");
		}
		Com_sprintf(checkSum, sizeof(checkSum), "%u", zone->zoneSize);
		Q_strncat(g_zoneSumList, maxsize, checkSum);

		  continue;
		}
		if ( zone->ff_dir != 2 )
		{
			if ( g_zoneNameList[0] )
			{
				Q_strncat(g_zoneNameList, maxsize, " ");
			}
			Q_strncat(g_zoneNameList, maxsize, zone->zoneinfo.name);
		if ( g_zoneSumList[0] )
		{
			Q_strncat(g_zoneSumList, maxsize, " ");
		}
		Com_sprintf(checkSum, sizeof(checkSum), "%u", zone->zoneSize);
		Q_strncat(g_zoneSumList, maxsize, checkSum);

			continue;
		}

/* Can't be right...? Hmm. Won't have effect anyway
		if ( !(com_dedicated->integer) )
		{
			continue;
		}
*/
		Com_sprintf(fileName, sizeof(fileName), "%s_load", zone->zoneinfo.name);
        filesize = DB_FileSize(fileName, 2);
        if ( !filesize )
        {
			continue;
		}

		if ( g_zoneSumList[0] )
		{
			Q_strncat(g_zoneSumList, maxsize, " ");
		}
		Com_sprintf(checkSum, sizeof(checkSum), "%u %u", zone->zoneSize, filesize);
		Q_strncat(g_zoneSumList, maxsize, checkSum);


		Q_strncat(g_zoneNameList, maxsize, " usermaps/");
		Q_strncat(g_zoneNameList, maxsize, zone->zoneinfo.name);
		Q_strncat(g_zoneNameList, maxsize, " usermaps/");
		Q_strncat(g_zoneNameList, maxsize, zone->zoneinfo.name);
		Q_strncat(g_zoneNameList, maxsize, "_load");
	}
}


void DB_SyncXAssets()
{
    Sys_SyncDatabase();
    DB_PostLoadXZone();
}

extern const char *(__cdecl *DB_XAssetGetNameHandler[ASSET_TYPE_COUNT])(union XAssetHeader *);

//char g_zoneNameList[2080];

const char *__cdecl DB_GetXAssetHeaderName(int type, union XAssetHeader *header)
{
    const char *name;

    assert(header);
//    assert(DB_XAssetGetNameHandler[type]);
    assert(header->data);
    if(DB_XAssetGetNameHandler[type] == NULL)
    {
        return "Name not found for asset";
    }

    name = DB_XAssetGetNameHandler[type](header);

    assertx(name, "Name not found for asset type %s\n", g_assetNames[type]);

    return name;
}

const char *__cdecl DB_GetXAssetName(struct XAsset *asset)
{
    assert(asset);
    return DB_GetXAssetHeaderName(asset->type, &asset->header);
}


void __cdecl DB_MaterialSetName(union XAssetHeader *xasset, const char *name)
{
  xasset->material->info.name = name;
//    *(const char**)xasset->data = name;
}

const char *__cdecl DB_GetXAssetTypeName(int type)
{
  assert(type >= 0 && type < ASSET_TYPE_COUNT);
  return g_assetNames[type];
}


enum DBCloneMethod
{
  DB_CLONE_NORMAL = 0x0,
  DB_CLONE_FROM_DEFAULT = 0x1,
  DB_CLONE_SWAP = 0x2,
};



extern void (__cdecl *DB_RemoveXAssetHandler[])(void*);
extern void (__cdecl *DB_DynamicCloneXAssetHandler[])(void*, void*, DBCloneMethod);
extern void (__cdecl *DB_XAssetSetNameHandler[])(void *, const char *);
extern const char* g_defaultAssetName[];

unsigned int DB_HashForName(const char *name, enum XAssetType type)
{
  const char *pos;
  unsigned int hash;
  int c;

  hash = type;
  for ( pos = name; *pos; ++pos )
  {
    c = tolower(*pos);
    if ( c == '\\' )
    {
      c = '/';
    }
    hash = 31 * hash + c;
  }
  return hash;
}


void __cdecl DB_SetXAssetName(XAsset *asset, const char *name)
{
  assert(DB_XAssetSetNameHandler[asset->type]);
  DB_XAssetSetNameHandler[asset->type](&asset->header, name);
}




void __cdecl DB_RemoveXAsset(XAsset *asset)
{
  if ( DB_RemoveXAssetHandler[asset->type] )
  {
    DB_RemoveXAssetHandler[asset->type](asset->header.data);
  }
}

void __cdecl DB_CloneXAssetInternal(XAsset *from, XAsset *to)
{
  int size;
  assert(from->type == to->type);
  size = DB_GetXAssetTypeSize(from->type);
  memcpy(to->header.data, from->header.data, size);
}


bool __cdecl DB_DynamicCloneXAsset(XAssetHeader from, XAssetHeader to, XAssetType type, DBCloneMethod cloneMethod)
{
  if ( !DB_DynamicCloneXAssetHandler[type] )
  {
    return 0;
  }
  DB_DynamicCloneXAssetHandler[type](from.data, to.data, cloneMethod);
  return 1;
}

void __cdecl DB_CloneXAsset(XAsset *from, XAsset *to, DBCloneMethod cloneMethod)
{
  assert(from->type == to->type);

  DB_DynamicCloneXAsset(from->header, to->header, to->type, cloneMethod);
  DB_CloneXAssetInternal(from, to);
}

void __cdecl DB_CloneXAssetEntry(XAssetEntry *from, XAssetEntry *to, DBCloneMethod cloneMethod)
{
  DB_CloneXAsset(&from->asset, &to->asset, cloneMethod);
  to->zoneIndex = from->zoneIndex;
}


void* __cdecl DB_FindXAssetDefaultHeaderInternal(XAssetType type)
{
  unsigned int assetEntryIndex;
  const char *name;
  XAssetEntryPoolEntry *assetEntry;

  name = g_defaultAssetName[type];
  for ( assetEntryIndex = db_hashTable[DB_HashForName(name, type) % 0x8000]; ; assetEntryIndex = assetEntry->entry.nextHash )
  {
    if ( !assetEntryIndex )
    {
      return NULL;
    }
    assetEntry = &g_assetEntryPool[assetEntryIndex];
    if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
    {
      if ( !Q_stricmp(DB_GetXAssetName(&assetEntry->entry.asset), name) )
      {
        break;
      }
    }
  }
  while ( assetEntry->entry.nextOverride )
  {
    assetEntry = &g_assetEntryPool[assetEntry->entry.nextOverride];
  }
  return assetEntry->entry.asset.header.data;
}



void __cdecl DB_SwapXAsset(XAsset *from, XAsset *to)
{
  XAsset asset;
  unsigned int size;

  assert(from->type == to->type);

  DB_DynamicCloneXAsset(from->header, to->header, to->type, DB_CLONE_SWAP);
  size = DB_GetXAssetTypeSize(from->type);
  void* mem = malloc(size + 4);
  asset.header.data = mem;
  if(asset.header.data == NULL)
  {
    Com_Error(ERR_FATAL, "DB_SwapXAsset: No memory");
    return;
  }
  asset.type = from->type;
  DB_CloneXAssetInternal(to, &asset);
  DB_CloneXAssetInternal(from, to);
  DB_CloneXAssetInternal(&asset, from);
  free(mem);
}



extern const char* varConstChar;

void __cdecl Load_XStringCustom(const char **str)
{
  int numBytesLoaded;
  const char* string = *str;
  for ( numBytesLoaded = 1; ; ++numBytesLoaded )
  {
    DB_LoadXFileData((byte *)string, 1);
    if ( !*string )
    {
      break;
    }
    ++string;
  }
  DB_IncStreamPos((int)numBytesLoaded);
}

void __cdecl Load_XStringPtr(bool atStreamstart)
{
    Load_Stream(atStreamstart, varXStringPtr, 4);
    if ( !*varXStringPtr )
    {
        return;
    }
    if ( (signed int)*varXStringPtr != -1 )
    {
      DB_ConvertOffsetToPointer(varXStringPtr);
      return;
    }
    *varXStringPtr = (char**)DB_AllocStreamPos(3);
    varXString = *varXStringPtr;
    Load_Stream(1u, varXString, 4);
    if ( !*varXString )
    {
        return;
    }
    if ( (int)*varXString != -1 )
    {
        DB_ConvertOffsetToPointer(varXString);
        return;

    }
    *varXString = (char*)DB_AllocStreamPos(0);
    varConstChar = *varXString;
    Load_XStringCustom((const char**)varXString);

}

/*
void __cdecl Load_ScriptStringCustom(uint16_t *var)
{
  *var = (uint16_t)varXAssetList->stringList.strings[*var];
}
*/

extern struct WeaponDef* varWeaponDef;
extern snd_alias_list_name* varsnd_alias_list_name;


void __cdecl Load_WeaponDef(bool atStreamStart)
{
  XModel **v1; // ebx@1
  signed int v2; // esi@1
  uint16_t *v5; // ebx@5
  signed int v6; // esi@5
  uint16_t *v7; // ebx@7
  signed int v8; // esi@7
  uint16_t *v9; // ebx@9
  signed int v10; // esi@9
  struct WeaponDef *v11; // ebx@11
  struct snd_alias_list_t **v12; // eax@11
  struct XModel **v13; // ebx@15
  signed int v14; // esi@15
  struct WeaponDef *v15; // ebx@17
  float (*v16)[2]; // eax@17
  float (*v17)[2]; // eax@20
  struct WeaponDef *v18; // ebx@23
  float (*v19)[2]; // eax@23
  float (*v20)[2]; // eax@26
  struct snd_alias_list_t **v21; // ebx@31
  signed int v22; // esi@31
  vec2_t *varvec2_t;
  unsigned int i;

  Load_Stream(atStreamStart, varWeaponDef, sizeof(struct WeaponDef));
  DB_PushStreamPos(4);
  varXString = (char**)&varWeaponDef->szInternalName;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->szDisplayName;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->szOverlayName;
  Load_XString(0);
  varXModelPtr = varWeaponDef->gunXModel;
  Load_Stream(0, varWeaponDef->gunXModel, 64);
  v1 = varXModelPtr;
  v2 = 16;
  do
  {
    varXModelPtr = v1;
    Load_XModelPtr(0);
    ++v1;
    --v2;
  }
  while ( v2 );
  varXModelPtr = &varWeaponDef->handXModel;
  Load_XModelPtr(0);

  varXString = (char**)varWeaponDef->szXAnims;
  Load_Stream(0, varWeaponDef->szXAnims, 132);
  for(i = 0; i < ARRAY_COUNT(varWeaponDef->szXAnims); ++i, ++varXString)
  {
    Load_XString(0);
  }
  varXString = (char**)&varWeaponDef->szModeName;
  Load_XString(0);
  varScriptString = varWeaponDef->hideTags;
  Load_Stream(0, varWeaponDef->hideTags, 16);
  v5 = varScriptString;
  v6 = 8;
  do
  {
    varScriptString = v5;
    Load_Stream(0, v5, 2);
    Load_ScriptStringCustom(varScriptString);
    ++v5;
    --v6;
  }
  while ( v6 );
  varScriptString = varWeaponDef->notetrackSoundMapKeys;
  Load_Stream(0, varWeaponDef->notetrackSoundMapKeys, 32);
  v7 = varScriptString;
  v8 = 16;
  do
  {
    varScriptString = v7;
    Load_Stream(0, v7, 2);
    Load_ScriptStringCustom(varScriptString);
    ++v7;
    --v8;
  }
  while ( v8 );
  varScriptString = varWeaponDef->notetrackSoundMapValues;
  Load_Stream(0, varWeaponDef->notetrackSoundMapValues, 32);
  v9 = varScriptString;
  v10 = 16;
  do
  {
    varScriptString = v9;
    Load_Stream(0, v9, 2);
    Load_ScriptStringCustom(varScriptString);
    ++v9;
    --v10;
  }
  while ( v10 );
  varFxEffectDefHandle = &varWeaponDef->viewFlashEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->worldFlashEffect;
  Load_FxEffectDefHandle(0);
  varsnd_alias_list_name = &varWeaponDef->pickupSound;
  Load_Stream(0, &varWeaponDef->pickupSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->pickupSoundPlayer;
  Load_Stream(0, &varWeaponDef->pickupSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->ammoPickupSound;
  Load_Stream(0, &varWeaponDef->ammoPickupSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->ammoPickupSoundPlayer;
  Load_Stream(0, &varWeaponDef->ammoPickupSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->projectileSound;
  Load_Stream(0, &varWeaponDef->projectileSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->pullbackSound;
  Load_Stream(0, &varWeaponDef->pullbackSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->pullbackSoundPlayer;
  Load_Stream(0, &varWeaponDef->pullbackSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireSound;
  Load_Stream(0, &varWeaponDef->fireSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireSoundPlayer;
  Load_Stream(0, &varWeaponDef->fireSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireLoopSound;
  Load_Stream(0, &varWeaponDef->fireLoopSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireLoopSoundPlayer;
  Load_Stream(0, &varWeaponDef->fireLoopSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireStopSound;
  Load_Stream(0, &varWeaponDef->fireStopSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireStopSoundPlayer;
  Load_Stream(0, &varWeaponDef->fireStopSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireLastSound;
  Load_Stream(0, &varWeaponDef->fireLastSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->fireLastSoundPlayer;
  Load_Stream(0, &varWeaponDef->fireLastSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->emptyFireSound;
  Load_Stream(0, &varWeaponDef->emptyFireSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->emptyFireSoundPlayer;
  Load_Stream(0, &varWeaponDef->emptyFireSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->meleeSwipeSound;
  Load_Stream(0, &varWeaponDef->meleeSwipeSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->meleeSwipeSoundPlayer;
  Load_Stream(0, &varWeaponDef->meleeSwipeSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->meleeHitSound;
  Load_Stream(0, &varWeaponDef->meleeHitSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->meleeMissSound;
  Load_Stream(0, &varWeaponDef->meleeMissSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->rechamberSound;
  Load_Stream(0, &varWeaponDef->rechamberSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->rechamberSoundPlayer;
  Load_Stream(0, &varWeaponDef->rechamberSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadSound;
  Load_Stream(0, &varWeaponDef->reloadSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadSoundPlayer;
  Load_Stream(0, &varWeaponDef->reloadSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadEmptySound;
  Load_Stream(0, &varWeaponDef->reloadEmptySound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadEmptySoundPlayer;
  Load_Stream(0, &varWeaponDef->reloadEmptySoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadStartSound;
  Load_Stream(0, &varWeaponDef->reloadStartSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadStartSoundPlayer;
  Load_Stream(0, &varWeaponDef->reloadStartSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadEndSound;
  Load_Stream(0, &varWeaponDef->reloadEndSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->reloadEndSoundPlayer;
  Load_Stream(0, &varWeaponDef->reloadEndSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->detonateSound;
  Load_Stream(0, &varWeaponDef->detonateSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->detonateSoundPlayer;
  Load_Stream(0, &varWeaponDef->detonateSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->nightVisionWearSound;
  Load_Stream(0, &varWeaponDef->nightVisionWearSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->nightVisionWearSoundPlayer;
  Load_Stream(0, &varWeaponDef->nightVisionWearSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->nightVisionRemoveSound;
  Load_Stream(0, &varWeaponDef->nightVisionRemoveSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->nightVisionRemoveSoundPlayer;
  Load_Stream(0, &varWeaponDef->nightVisionRemoveSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->altSwitchSound;
  Load_Stream(0, &varWeaponDef->altSwitchSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->altSwitchSoundPlayer;
  Load_Stream(0, &varWeaponDef->altSwitchSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->raiseSound;
  Load_Stream(0, &varWeaponDef->raiseSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->raiseSoundPlayer;
  Load_Stream(0, &varWeaponDef->raiseSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->firstRaiseSound;
  Load_Stream(0, &varWeaponDef->firstRaiseSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->firstRaiseSoundPlayer;
  Load_Stream(0, &varWeaponDef->firstRaiseSoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->putawaySound;
  Load_Stream(0, &varWeaponDef->putawaySound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->putawaySoundPlayer;
  Load_Stream(0, &varWeaponDef->putawaySoundPlayer, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  v11 = varWeaponDef;
  v12 = varWeaponDef->bounceSound;
  if ( v12 )
  {
    if ( (int)v12 == -1 )
    {
      v11->bounceSound = (struct snd_alias_list_t **)DB_AllocStreamPos(3);
      varsnd_alias_list_name = varWeaponDef->bounceSound;
      Load_Stream(1, varsnd_alias_list_name, 116);
      v21 = varsnd_alias_list_name;
      v22 = 29;
      do
      {
        varsnd_alias_list_name = v21;
        Load_Stream(0, v21, 4);
        Load_SndAliasCustom(varsnd_alias_list_name);
        ++v21;
        --v22;
      }
      while ( v22 );
    }
    else
    {
      DB_ConvertOffsetToPointer(&varWeaponDef->bounceSound);
    }
    v11 = varWeaponDef;
  }
  varFxEffectDefHandle = &v11->viewShellEjectEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->worldShellEjectEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->viewLastShotEjectEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->worldLastShotEjectEffect;
  Load_FxEffectDefHandle(0);
  varMaterialHandle = &varWeaponDef->reticleCenter;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->reticleSide;
  Load_MaterialHandle(0);
  varXModelPtr = varWeaponDef->worldModel;
  Load_Stream(0, varWeaponDef->worldModel, 64);
  v13 = varXModelPtr;
  v14 = 16;
  do
  {
    varXModelPtr = v13;
    Load_XModelPtr(0);
    ++v13;
    --v14;
  }
  while ( v14 );
  varXModelPtr = &varWeaponDef->worldClipModel;
  Load_XModelPtr(0);
  varXModelPtr = &varWeaponDef->rocketModel;
  Load_XModelPtr(0);
  varXModelPtr = &varWeaponDef->knifeModel;
  Load_XModelPtr(0);
  varXModelPtr = &varWeaponDef->worldKnifeModel;
  Load_XModelPtr(0);
  varMaterialHandle = &varWeaponDef->hudIcon;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->ammoCounterIcon;
  Load_MaterialHandle(0);
  varXString = (char**)&varWeaponDef->szAmmoName;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->szClipName;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->szSharedAmmoCapName;
  Load_XString(0);
  varMaterialHandle = &varWeaponDef->overlayMaterial;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->overlayMaterialLowRes;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->killIcon;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->dpadIcon;
  Load_MaterialHandle(0);
  varXString = (char**)&varWeaponDef->szAltWeaponName;
  Load_XString(0);
  varXModelPtr = &varWeaponDef->projectileModel;
  Load_XModelPtr(0);
  varFxEffectDefHandle = &varWeaponDef->projExplosionEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->projDudEffect;
  Load_FxEffectDefHandle(0);
  varsnd_alias_list_name = &varWeaponDef->projExplosionSound;
  Load_Stream(0, &varWeaponDef->projExplosionSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varsnd_alias_list_name = &varWeaponDef->projDudSound;
  Load_Stream(0, &varWeaponDef->projDudSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varFxEffectDefHandle = &varWeaponDef->projTrailEffect;
  Load_FxEffectDefHandle(0);
  varFxEffectDefHandle = &varWeaponDef->projIgnitionEffect;
  Load_FxEffectDefHandle(0);
  varsnd_alias_list_name = &varWeaponDef->projIgnitionSound;
  Load_Stream(0, &varWeaponDef->projIgnitionSound, 4);
  Load_SndAliasCustom(varsnd_alias_list_name);
  varXString = (char**)varWeaponDef->accuracyGraphName;
  Load_XString(0);
  v15 = varWeaponDef;
  v16 = varWeaponDef->accuracyGraphKnots[0];
  if ( v16 )
  {
    if ( v16 == (float (*)[2])-1 )
    {
      v15->accuracyGraphKnots[0] = (float (*)[2])DB_AllocStreamPos(3);
      varvec2_t = varWeaponDef->accuracyGraphKnots[0];
      Load_Stream(1, varvec2_t, 8 * varWeaponDef->accuracyGraphKnotCount[0]);
      v15 = varWeaponDef;
    }
    else
    {
      DB_ConvertOffsetToPointer(varWeaponDef->accuracyGraphKnots);
      v15 = varWeaponDef;
    }
  }
  v17 = v15->originalAccuracyGraphKnots[0];
  if ( v17 )
  {
    if ( v17 == (float (*)[2])-1 )
    {
      v15->originalAccuracyGraphKnots[0] = (float (*)[2])DB_AllocStreamPos(3);
      varvec2_t = varWeaponDef->originalAccuracyGraphKnots[0];
      Load_Stream(1, varvec2_t, 8 * varWeaponDef->accuracyGraphKnotCount[0]);
      v15 = varWeaponDef;
    }
    else
    {
      DB_ConvertOffsetToPointer(v15->originalAccuracyGraphKnots);
      v15 = varWeaponDef;
    }
  }
  varXString = (char**)&v15->accuracyGraphName[1];
  Load_XString(0);
  v18 = varWeaponDef;
  v19 = varWeaponDef->accuracyGraphKnots[1];
  if ( v19 )
  {
    if ( v19 == (float (*)[2])-1 )
    {
      v18->accuracyGraphKnots[1] = (float (*)[2])DB_AllocStreamPos(3);
      varvec2_t = varWeaponDef->accuracyGraphKnots[1];
      Load_Stream(1, varvec2_t, 8 * varWeaponDef->accuracyGraphKnotCount[1]);
      v18 = varWeaponDef;
    }
    else
    {
      DB_ConvertOffsetToPointer(&varWeaponDef->accuracyGraphKnots[1]);
      v18 = varWeaponDef;
    }
  }
  v20 = v18->originalAccuracyGraphKnots[1];
  if ( v20 )
  {
    if ( v20 == (float (*)[2])-1 )
    {
      v18->originalAccuracyGraphKnots[1] = (float (*)[2])DB_AllocStreamPos(3);
      varvec2_t = varWeaponDef->originalAccuracyGraphKnots[1];
      Load_Stream(1, varvec2_t, 8 * varWeaponDef->accuracyGraphKnotCount[1]);
      v18 = varWeaponDef;
    }
    else
    {
      DB_ConvertOffsetToPointer(&v18->originalAccuracyGraphKnots[1]);
      v18 = varWeaponDef;
    }
  }
  varXString = (char**)&v18->szUseHintString;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->dropHintString;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->szScript;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->fireRumble;
  Load_XString(0);
  varXString = (char**)&varWeaponDef->meleeImpactRumble;
  Load_XString(0);
  DB_PopStreamPos( );
}


void __cdecl DB_ReleaseXAssets()
{
  unsigned int hash;
  unsigned int assetEntryIndex;

  assert( Sys_IsMainThread());

  Sys_SyncDatabase();

  for ( hash = 0; hash < ARRAY_COUNT(db_hashTable); ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = g_assetEntryPool[assetEntryIndex].entry.nextHash )
    {
      g_assetEntryPool[assetEntryIndex].entry.inuse = 0;
    }
  }
}



void __cdecl Mark_SndCurveAsset(struct SndCurve *sndCurve)
{
  const char *name;
  int hash, index;
  union XAssetEntryPoolEntry *entry;
  struct XAsset asset;

  asset.type = ASSET_TYPE_SOUND_CURVE;
  asset.header.sndCurve = sndCurve;
  name = DB_GetXAssetName(&asset);
  hash = DB_HashForName(name, asset.type);

  for( index = db_hashTable[hash & (ARRAY_COUNT(db_hashTable) -1)]; ; index = entry->entry.nextHash)
  {
    entry = &g_assetEntryPool[index];
    if(entry->entry.asset.type != ASSET_TYPE_SOUND_CURVE)
    {
        continue;
    }
    if(entry->entry.asset.header.sndCurve == sndCurve)
    {
        break;
    }
  }
  entry->entry.inuse = 1;
}

void __cdecl Mark_snd_alias_list_Asset(struct snd_alias_list_t *sound)
{
  const char *name;
  int hash, index;
  union XAssetEntryPoolEntry *entry;
  struct XAsset asset;

  asset.type = ASSET_TYPE_SOUND;
  asset.header.sound = sound;
  name = DB_GetXAssetName(&asset);
  hash = DB_HashForName(name, asset.type);

  for( index = db_hashTable[hash & (ARRAY_COUNT(db_hashTable) -1)]; ; index = entry->entry.nextHash)
  {
    entry = &g_assetEntryPool[index];
    if(entry->entry.asset.type != ASSET_TYPE_SOUND)
    {
        continue;
    }
    if(entry->entry.asset.header.sound == sound)
    {
        break;
    }
  }
  entry->entry.inuse = 1;
}

void __cdecl DB_RemoveLoadedSound(union XAssetHeader sound)
{
    if(sound.loadedsound->sounds.data == NULL)
    {
        return;
    }
    Z_Free(sound.loadedsound->sounds.data);
}



void DB_BuildOverallocatedXAssetList(char* configstring, int len)
{
    int i;
    char cstring[64];

    configstring[0] = '\0';

    for(i = 0; i < ASSET_TYPE_COUNT; ++i)
    {
        if(!g_poolSizeModified[i])
        {
            continue;
        }

        Com_sprintf(cstring, sizeof(cstring), "%s=%d ", g_assetNames[i], g_poolSize[i]);
        Q_strncat(configstring, len, cstring);
    }

}


};



void __cdecl DB_UnloadXZoneInternal(unsigned int zoneIndex, bool createDefault)
{
  unsigned int hash;
  uint16_t *pAssetEntryIndex;
  XAssetEntryPoolEntry *overrideAssetEntry;
  XAsset asset;
  const char *name;
  XAssetEntry *assetEntry;
  uint16_t *pOverrideAssetEntryIndex;
  unsigned int overrideAssetEntryIndex;
  const char* debugname;

  assert(zoneIndex);

//  R_StreamPushSyncDisable();
  Com_Printf(CON_CHANNEL_SYSTEM, "Unloading assets from fastfile '%s' ", &g_zones[zoneIndex].zoneinfo.name);
  if ( createDefault )
  {
    Com_Printf(CON_CHANNEL_SYSTEM, "and creating default assets stubs\n");
  }
  else
  {
    Com_Printf(CON_CHANNEL_SYSTEM, "and deleting all assets\n");
  }
  for (hash = 0, pAssetEntryIndex = &db_hashTable[hash]; hash < ARRAY_COUNT(db_hashTable); )
  {
      if ( !*pAssetEntryIndex )
      {
        ++hash;
        pAssetEntryIndex = &db_hashTable[hash];
        continue;
      }
      assetEntry = &g_assetEntryPool[*pAssetEntryIndex].entry;
      if ( (uint8_t)assetEntry->zoneIndex == zoneIndex )
      {
        if ( assetEntry->inuse )
        {
          if ( createDefault )
          {
            varXAsset = (XAsset*)assetEntry;
            Mark_XAsset();
          }
        }
        if ( db_xassetdebug->boolean )
        {
          debugname = Cvar_GetVariantString("db_xassetdebugname");
          if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == assetEntry->asset.type
              || (debugname[0] && !Q_stricmp(DB_GetXAssetName(&assetEntry->asset), debugname)) )
          {
            Com_Printf(CON_CHANNEL_SYSTEM, "DB_UnloadXZoneInternal: removing asset: '%s','%s'\n",
                DB_GetXAssetTypeName(assetEntry->asset.type), DB_GetXAssetName(&assetEntry->asset));
          }
        }
        DB_RemoveXAsset(&assetEntry->asset);
        overrideAssetEntryIndex = assetEntry->nextOverride;
        if ( overrideAssetEntryIndex )
        {
          DB_CloneXAssetEntry(&g_assetEntryPool[overrideAssetEntryIndex].entry, assetEntry, DB_CLONE_NORMAL);
          assetEntry->nextOverride = g_assetEntryPool[overrideAssetEntryIndex].entry.nextOverride;
          DB_FreeXAssetEntry(&g_assetEntryPool[overrideAssetEntryIndex].entry);
          if ( db_xassetdebug->boolean )
          {
            debugname = Cvar_GetVariantString("db_xassetdebugname");
            if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == assetEntry->asset.type
              || (debugname[0] && !Q_stricmp(DB_GetXAssetName(&assetEntry->asset), debugname)) )
            {

              Com_Printf(CON_CHANNEL_SYSTEM, "DB_UnloadXZoneInternal: reverted to asset: '%s','%s' from %s\n", 
		DB_GetXAssetTypeName(assetEntry->asset.type), DB_GetXAssetName(&assetEntry->asset), 
		g_zones[(uint8_t)assetEntry->zoneIndex].zoneinfo.name);
            }
          }
          goto LABEL_48;
        }
        if ( createDefault )
        {
          asset.type = assetEntry->asset.type;
          asset.header.data = DB_FindXAssetDefaultHeaderInternal(asset.type);
          if ( asset.header.data )
          {
            ++g_defaultAssetCount;
            assetEntry->zoneIndex = 0;
            name = DB_GetXAssetName(&assetEntry->asset);
            DB_CloneXAssetInternal(&asset, &assetEntry->asset);
            DB_SetXAssetName(&assetEntry->asset, name);
            if ( db_xassetdebug->boolean )
            {
              debugname = Cvar_GetVariantString("db_xassetdebugname");
              if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == assetEntry->asset.type
                  || (debugname[0] && !Q_stricmp(DB_GetXAssetName(&assetEntry->asset), debugname)) )
              {
                Com_Printf(CON_CHANNEL_SYSTEM, "DB_UnloadXZoneInternal: using default for asset: '%s','%s'\n", 
                    DB_GetXAssetTypeName(assetEntry->asset.type), DB_GetXAssetName(&assetEntry->asset));
              }
            }
            goto LABEL_48;
          }
          if ( assetEntry->nextOverride )
          {
            assert(!assetEntry->nextOverride);
          }
          *pAssetEntryIndex = assetEntry->nextHash;
          DB_FreeXAssetEntry(assetEntry);
          if ( *g_defaultAssetName[asset.type] )
          {
            Sys_LeaveCriticalSection(CRITSECT_DBHASH);
            Sys_Error("Could not load default asset for asset type '%s'", (&g_assetNames)[asset.type]);
          }
        }
        else
        {
          if ( assetEntry->nextOverride )
          {
            assert(!assetEntry->nextOverride);
          }
          *pAssetEntryIndex = assetEntry->nextHash;
          DB_FreeXAssetEntry(assetEntry);
        }
      }
      else
      {
LABEL_48:
        pOverrideAssetEntryIndex = &assetEntry->nextOverride;
        while ( *pOverrideAssetEntryIndex )
        {
          overrideAssetEntry = &g_assetEntryPool[*pOverrideAssetEntryIndex];
          if ( overrideAssetEntry->entry.inuse )
          {
            assert(!overrideAssetEntry->entry.inuse);
          }
          if ( (uint8_t)overrideAssetEntry->entry.zoneIndex == zoneIndex )
          {
            DB_RemoveXAsset(&overrideAssetEntry->entry.asset);
            *pOverrideAssetEntryIndex = overrideAssetEntry->entry.nextOverride;
            DB_FreeXAssetEntry(&overrideAssetEntry->entry);
          }
          else
          {
            pOverrideAssetEntryIndex = &overrideAssetEntry->entry.nextOverride;
          }
        }
        pAssetEntryIndex = &assetEntry->nextHash;
      }

  }
//  R_StreamPopSyncDisable();
}


void __cdecl DB_UnloadXZone(XZone *zone, bool createDefault)
{
  DB_UnloadXZoneInternal(zone->index, createDefault);
}


void DB_CountXAssets(int *count, int len ,qboolean a4)
{
  int index, sindex;
  unsigned int i;
  union XAssetEntryPoolEntry *listselector, *slistselect;
  enum XAssetType type;

  Sys_EnterCriticalSection(CRITSECT_DBHASH);

  if((len / sizeof(int)) < ASSET_TYPE_COUNT)
  {
    return;
  }

  Com_Memset(count, 0, len);

  for(i = 0; i < ARRAY_COUNT(db_hashTable); ++i)
  {
    for(index = db_hashTable[i]; index; index = listselector->entry.nextHash)
    {
	listselector = &g_assetEntryPool[index];

	type = listselector->entry.asset.type;

	if(type < 0 || type >= ASSET_TYPE_COUNT)
	{
		continue;
	}

	++count[type];

	if ( !a4 )
		continue;

	for(sindex = listselector->entry.nextOverride; sindex; sindex = slistselect->entry.nextOverride)
	{
            slistselect = &g_assetEntryPool[sindex];
	    ++count[type];
	}
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
}





void XAssetUsage_f()
{
    int assettype, j, l;
    int countlist[ASSET_TYPE_COUNT];


    Com_Printf(CON_CHANNEL_DONT_FILTER,"XAsset usage:\n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"Name                 Used  Free \n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"-------------------- ----- -----\n");

    DB_CountXAssets(countlist, sizeof(countlist), qtrue);

    for(assettype = 0; assettype < ASSET_TYPE_COUNT; assettype++)
    {
	Com_Printf(CON_CHANNEL_DONT_FILTER,"%s", g_assetNames[assettype]);

	l = 20 - strlen(g_assetNames[assettype]);
	j = 0;

	do
	{
		Com_Printf(CON_CHANNEL_DONT_FILTER," ");
		j++;
	} while(j < l);

	Com_Printf(CON_CHANNEL_DONT_FILTER," %5d %5d\n", countlist[assettype], g_poolSize[assettype] - countlist[assettype]);

    }
    Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");

}

void __cdecl DB_PrintXAssetsForType_FastFile(XAssetType type, void *inData, bool includeOverride)
{
  unsigned int hash;
  unsigned int assetEntryIndex;
  XAssetEntryPoolEntry *assetEntry;
  unsigned int overrideAssetEntryIndex;

  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  for ( hash = 0; hash < ARRAY_COUNT(db_hashTable); ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = assetEntry->entry.nextHash )
    {
      assetEntry = &g_assetEntryPool[assetEntryIndex];
      if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
      {
        Com_Printf(CON_CHANNEL_DONT_FILTER, "'%s','%s'\n", DB_GetXAssetHeaderName(type, &assetEntry->entry.asset.header), g_zones[assetEntry->entry.zoneIndex].zoneinfo.name);
        if ( includeOverride )
        {
          for ( overrideAssetEntryIndex = assetEntry->entry.nextOverride; overrideAssetEntryIndex; overrideAssetEntryIndex = g_assetEntryPool[overrideAssetEntryIndex].entry.nextOverride )
          {
            Com_Printf(CON_CHANNEL_DONT_FILTER, "'%s','%s'\n", DB_GetXAssetHeaderName(type, &g_assetEntryPool[overrideAssetEntryIndex].entry.asset.header), g_zones[(uint8_t)g_assetEntryPool[overrideAssetEntryIndex].entry.zoneIndex].zoneinfo.name);
          }
        }
      }
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
}


void __cdecl DB_PrintXAssetsForType(XAssetType type, void (__cdecl *func)(XAssetHeader, void *), void *inData, bool includeOverride)
{
  if ( useFastFile->boolean )
  {
    DB_PrintXAssetsForType_FastFile(type, &inData, includeOverride);
  }
  else
  {
    DB_EnumXAssets(type, func, &inData, includeOverride);
  }
}

void __cdecl DB_PrintAssetName(XAssetHeader header, void *data)
{
  const char *name;

  name = DB_GetXAssetHeaderName(*(DWORD *)data, &header);
  Com_Printf(CON_CHANNEL_DONT_FILTER, "%s\n", name);
}
//actually XAssetHeader
extern void* (__cdecl *DB_AllocXAssetHeaderHandler[ ])(void *);

XAssetHeader __cdecl DB_AllocXAssetHeader(XAssetType type)
{
  XAssetHeader header;

  header.data = DB_AllocXAssetHeaderHandler[type](DB_XAssetPool[type]);
  if ( !header.data )
  {
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);
    Com_PrintError(CON_CHANNEL_ERROR, "Exceeded limit of %d '%s' assets.\n", g_poolSize[type], g_assetNames[type]);
    DB_PrintXAssetsForType(type, DB_PrintAssetName, &type, 1);
    Com_Error(ERR_DROP, "Exceeded limit of %d '%s' assets.\n", g_poolSize[type], g_assetNames[type]);
  }
  return header;
}


XAssetEntryPoolEntry *__cdecl DB_AllocXAssetEntry(XAssetType type, unsigned int zoneIndex)
{
  XAssetEntryPoolEntry *freeHead;

  freeHead = g_freeAssetEntryHead;
  if ( !g_freeAssetEntryHead )
  {
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);
    Com_Error(ERR_DROP, "Could not allocate asset - increase XASSET_ENTRY_POOL_SIZE");
  }
  if ( ++XAssetEntryHighCount > XAssetEntryHighWaterMark )
  {
    XAssetEntryHighWaterMark = XAssetEntryHighCount;
  }
  g_freeAssetEntryHead = freeHead->next;
  freeHead->entry.asset.type = type;
  freeHead->entry.asset.header = DB_AllocXAssetHeader(type);
  freeHead->entry.zoneIndex = zoneIndex;
  freeHead->entry.inuse = 0;
  freeHead->entry.nextHash = 0;
  freeHead->entry.nextOverride = 0;
  return freeHead;
}

extern "C"
{

bool DB_DiscardBspWeapons()
{
    return db_nobspweapon->boolean;
}

void __cdecl Load_WeaponDefAsset(struct WeaponDef **weapon)
{
    const char* weapname;
    weapname = (*weapon)->szInternalName;

    if(DB_DiscardBspWeapons()) //saving high valuable resources when we don't use weapons from maps
    {
        if(Q_stricmp(g_load.filename, "common_mp") && Q_stricmp(g_load.filename, "mod") && Q_stricmp(g_load.filename, "ui_mp"))
        {
          Com_Printf(CON_CHANNEL_SYSTEM, "Skip weapon '%s' from '%s'\n", weapname, g_load.filename);
          *weapon = NULL;
          return;
        }
    }
    XAssetHeader hweapon;
    hweapon.weapon = *weapon;
    *weapon = DB_AddXAsset(ASSET_TYPE_WEAPON, hweapon).weapon;

}

bool IsFastFileLoad()
{
  return useFastFile->boolean;
}

XAssetEntryPoolEntry *__cdecl DB_FindXAssetEntry(XAssetType type, const char *name)
{
  unsigned int assetEntryIndex;
  XAssetEntryPoolEntry *assetEntry;

  for ( assetEntryIndex = db_hashTable[DB_HashForName(name, type) % ARRAY_COUNT(db_hashTable)]; assetEntryIndex; assetEntryIndex = assetEntry->entry.nextHash )
  {
    assetEntry = &g_assetEntryPool[assetEntryIndex];
    if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
    {
      const char* assetname = DB_GetXAssetName(&assetEntry->entry.asset);
      if ( !Q_stricmp(assetname, name) )
      {
        return &g_assetEntryPool[assetEntryIndex];
      }
    }
  }
  return NULL;
}

bool __cdecl DB_GetInitializing()
{
  return g_initializing;
}

fileHandle_t g_missingAssetFile;

void __cdecl DB_LogMissingAsset(XAssetType type, const char *name)
{
  char msg[1024];

  switch ( type )
  {
    case ASSET_TYPE_SOUND:
    case ASSET_TYPE_MENU:
    case ASSET_TYPE_LOCALIZE_ENTRY:
    case ASSET_TYPE_SNDDRIVER_GLOBALS:
//    case ASSET_TYPE_XGLOBALS:
      return;
    case ASSET_TYPE_WEAPON:
      Com_sprintf(msg, sizeof(msg), "%s,mp/%s\n", g_assetNames[type], name);
      break;
    default:
      Com_sprintf(msg, sizeof(msg), "%s,%s\n", g_assetNames[type], name);
      break;
  }
  Sys_EnterCriticalSection(CRITSECT_MISSING_ASSET);
  if ( g_missingAssetFile )
  {
    g_missingAssetFile = FS_FOpenFileAppend("missingasset.csv");
  }
  else
  {
    g_missingAssetFile = FS_FOpenFileWrite("missingasset.csv");
  }
  if ( g_missingAssetFile )
  {
    FS_Write(msg, strlen(msg), g_missingAssetFile);
    FS_FCloseFile(g_missingAssetFile);
  }
  Sys_LeaveCriticalSection(CRITSECT_MISSING_ASSET);
}


XAssetEntryPoolEntry *__cdecl DB_CreateDefaultEntry(XAssetType type, const char *name)
{
  unsigned int nhash;
  XAsset asset;
  XAssetEntryPoolEntry *newEntry;

  asset.header.data = DB_FindXAssetDefaultHeaderInternal(type);
  if ( !asset.header.xmodelPieces )
  {
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);
    if ( type != ASSET_TYPE_CLIPMAP && type != ASSET_TYPE_CLIPMAP_PVS )
    {
      Com_Error(ERR_DROP, "Could not load default asset '%s' for asset type '%s'.\nTried to load asset '%s'.", g_defaultAssetName[type], DB_GetXAssetTypeName(type), name);
    }
    else
    {
      Com_Error(ERR_DROP, "Couldn't find the bsp for this map.  Please build the fast file associated with %s and try again.", name);
    }
  }
  asset.type = type;
  ++g_defaultAssetCount;
  newEntry = DB_AllocXAssetEntry(type, 0);
  DB_CloneXAssetInternal(&asset, &newEntry->entry.asset);
  nhash = DB_HashForName(name, type);
  newEntry->entry.nextHash  = db_hashTable[nhash % ARRAY_COUNT(db_hashTable)];
  db_hashTable[nhash % ARRAY_COUNT(db_hashTable)] = newEntry - g_assetEntryPool;

  DB_SetXAssetName(&newEntry->entry.asset, SL_ConvertToString(SL_GetString(name, 4u)));
  newEntry->entry.inuse = 1;
  if ( db_xassetdebug->boolean )
  {
    const char* db_xassetdebugname = Cvar_GetVariantString("db_xassetdebugname");

    if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == type
      || (db_xassetdebugname[0] && !Q_stricmp(name, db_xassetdebugname)) )
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "DB_CreateDefaultEntry: used default asset: '%s','%s' for asset name: '%s'\n", DB_GetXAssetTypeName(asset.type), DB_GetXAssetName(&asset), name);
    }
  }
  return newEntry;
}


bool __cdecl IsConfigFile(const char *name)
{
  assert(name != NULL);
  return strstr((char *)name, ".cfg") != NULL || strstr((char *)name, ".gsx") != NULL;
}


void __cdecl PrintWaitedError(XAssetType type, const char *name, int waitedMsec)
{
  if ( waitedMsec > 100 )
  {
    if ( type == ASSET_TYPE_SOUND )
    {
      Com_Printf(CON_CHANNEL_FILES, "Waited %i msec for missing asset \"%s\".\n", waitedMsec, name);
    }
    else
    {
      Com_PrintError(CON_CHANNEL_ERROR, "Waited %i msec for missing asset \"%s\".\n", waitedMsec, name);
    }
  }
  switch ( type )
  {
    case ASSET_TYPE_XANIMPARTS:
      Com_PrintWarning(CON_CHANNEL_FILES, "Could not load %s \"%s\".\n", g_assetNames[type], name);
      break;
    case ASSET_TYPE_SOUND:
      return;
    case ASSET_TYPE_LOCALIZE_ENTRY:
      if ( loc_warnings->boolean )
      {
        if ( loc_warningsAsErrors->boolean )
        {
          Com_PrintError(CON_CHANNEL_ERROR, "Could not load %s \"%s\".\n", g_assetNames[type], name);
        }
        else
        {
          Com_PrintWarning(CON_CHANNEL_FILES, "Could not load %s \"%s\".\n", g_assetNames[type], name);
        }
      }
      break;
    case ASSET_TYPE_RAWFILE:
      if ( IsConfigFile(name) )
      {
        break;
      }
    default:
      Com_PrintError(CON_CHANNEL_ERROR, "Could not load %s \"%s\".\n", g_assetNames[type], name);
      break;
  }
}

XAssetHeader __cdecl DB_FindXAssetHeader(XAssetType type, const char *name, bool errorIfMissing, int waitTime)
{
  XAssetEntryPoolEntry *ent;
  XAssetHeader result;
//  int semaphore;
  const char *n;
  signed int bspextlen;
  signed int namelen;
  bool suspendedThread;
  const char *basename;
  unsigned int start;
  char so_name[64];
  const char *so_prefix;
  int use_so_name;
  XAssetEntry *assetEntry;
  XAssetEntry *newEntry;
  const char *bspext;
  XAssetEntryPoolEntry *newEntryPoolEntry;

  assert(IsFastFileLoad());

  start = 0;
  so_prefix = "maps/so_";
  bspext = ".d3dbsp";
  use_so_name = 0;
  if ( !Q_strncmp(so_prefix, name, strlen(so_prefix)) )
  {
    namelen = strlen(name);
    bspextlen = strlen(bspext);
    if ( namelen > bspextlen && !Q_strncmp(bspext, &name[namelen - bspextlen], bspextlen) )
    {
      for ( basename = &name[strlen(so_prefix)]; *basename && *basename != '_'; ++basename );
      
      if ( !*basename )
      {
        Com_PrintError(CON_CHANNEL_ERROR, "Bad specop level name\n");
      }
      if ( Q_strncmp("_mp_", basename, 4) )
      {
        Com_sprintf(so_name, sizeof(so_name), "maps/%s", basename + 1);
      }
      else
      {
        Com_sprintf(so_name, sizeof(so_name), "maps/mp/%s", basename + 1);
      }
      use_so_name = 1;
    }
  }

  do
  {
    while ( 1 )
    {
      Sys_EnterCriticalSection(CRITSECT_DBHASH);
      if ( use_so_name )
      {
        ent = DB_FindXAssetEntry(type, so_name);
      }
      else
      {
        ent = DB_FindXAssetEntry(type, name);
      }
      assetEntry = &ent->entry;
      Sys_LeaveCriticalSection(CRITSECT_DBHASH);
      /*
      if ( use_so_name )
      {
        DB_RegisteredReorderAsset(type, so_name, assetEntry);
      }
      else
      {
        DB_RegisteredReorderAsset(type, name, assetEntry);
      }
      */
      if ( assetEntry && (assetEntry->zoneIndex || Sys_IsDatabaseReady2()) )
      {
        goto returnAsset;
      }
      if ( Sys_IsDatabaseThread() )
      {
        goto LABEL_62;
      }
      if ( start )
      {
        break;
      }
//      ProfLoad_Begin("Wait for fastfile asset");
      start = Sys_Milliseconds();
      if ( !Sys_IsDatabaseReady2() )
      {
        break;
      }
    }
    if ( Sys_IsDatabaseReady2() )
    {
      break;
    }
    if ( DB_IsMinimumFastFileLoaded() && DB_GetInitializing() )
    {
      break;
    }

    if ( Sys_IsDatabaseReady() && (Sys_IsMainThread()
    /* || Sys_IsRenderThread() && R_IsInRemoteScreenUpdate() && Sys_QueryRGRegisteredEvent()*/))
    {
      DB_PostLoadXZone();
    }
    else
    {
//      if ( Sys_IsRenderThread() )
      {
//        RB_Resource_Update(5);
      }
      suspendedThread = Sys_HaveSuspendedDatabaseThread(THREAD_OWNER_DATABASE);
      if ( suspendedThread )
      {
        Sys_ResumeDatabaseThread(THREAD_OWNER_DATABASE);
      }
      /*
      semaphore = R_ReleaseDXDeviceOwnership();
      DB_Sleep(0);
      if ( semaphore )
      {
        R_AcquireDXDeviceOwnership(0);
      }
      */
      DB_Sleep(0);

      if ( suspendedThread )
      {
        Sys_SuspendDatabaseThread(THREAD_OWNER_DATABASE);
      }
    }
  }
  while ( waitTime == -1 || Sys_Milliseconds() - start < (unsigned int)waitTime || !Sys_IsDatabaseReady2());
//  ProfLoad_End();
LABEL_62:
  if ( assetEntry )
  {
returnAsset:
    assert(assetEntry->asset.header.data);

    assetEntry->inuse = 1;
    if ( start )
    {
      if ( use_so_name )
      {
        n = so_name;
      }
      else
      {
        n = name;
      }
      Com_Printf(CON_CHANNEL_FILES, "Waited %i msec for asset '%s' of type '%s'.\n", Sys_Milliseconds() - start, n, g_assetNames[type]);
//      ProfLoad_End();
    }
    return assetEntry->asset.header;
  }
  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  if ( use_so_name )
  {
    ent = DB_FindXAssetEntry(type, so_name);
  }
  else
  {
    ent = DB_FindXAssetEntry(type, name);
  }
  assetEntry = &ent->entry;
  if ( ent )
  {
    assert(assetEntry->asset.header.data);
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);
    goto returnAsset;
  }
  if ( errorIfMissing && type != ASSET_TYPE_XANIMPARTS )
  {
    if ( com_developer->boolean )
    {
      if ( use_so_name )
      {
        DB_LogMissingAsset(type, so_name);
      }
      else
      {
        DB_LogMissingAsset(type, name);
      }
    }
  }
  if ( start )
  {
    if ( errorIfMissing )
    {
      if ( use_so_name )
      {
        n = so_name;
      }
      else
      {
        n = name;
      }
      PrintWaitedError(type, n, Sys_Milliseconds() - start);
    }
  }
  switch ( type )
  {
    case ASSET_TYPE_LOCALIZE_ENTRY:
    case ASSET_TYPE_RAWFILE:
//    case ASSET_TYPE_XGLOBALS:
//    case ASSET_TYPE_GLASSES:
      Sys_LeaveCriticalSection(CRITSECT_DBHASH);
      result.xmodelPieces = 0;
      break;
    default:
      if ( db_xassetdebug )
      {
        if ( db_xassetdebug->boolean )
        {
          const char* db_xassetdebugname = Cvar_GetVariantString("db_xassetdebugname");
          if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == type
            || (db_xassetdebugname[0] && !Q_stricmp(name, db_xassetdebugname)) )
          {
            Com_Printf(CON_CHANNEL_SYSTEM, "***db_xassetdebug:***\nDB_FindXAssetHeader: missing asset: '%s','%s'\n", DB_GetXAssetTypeName(type), name);
          }
        }
      }
      if ( use_so_name )
      {
        newEntryPoolEntry = DB_CreateDefaultEntry(type, so_name);
      }
      else
      {
        newEntryPoolEntry = DB_CreateDefaultEntry(type, name);
      }
      newEntry = &newEntryPoolEntry->entry;
      Sys_LeaveCriticalSection(CRITSECT_DBHASH);
      result.data = newEntry->asset.header.data;
      break;
  }
  return result;
}


//For ASM calls
void* __cdecl DB_FindXAssetHeaderReal(enum XAssetType type, const char *name)
{
  union XAssetHeader r;

  r = DB_FindXAssetHeader(type, name, true, 100);
  return r.data;
}

void DB_SyncLostDevice()
{
  if ( g_isRecoveringLostDevice )
  {
    assert(!g_mayRecoverLostAssets);
    g_mayRecoverLostAssets = 1;
    do
    {
      Sys_SleepSec(0);
    }
    while ( g_isRecoveringLostDevice );
    assert(!g_mayRecoverLostAssets);
  }
}

XAssetHeader __cdecl DB_AddXAsset(XAssetType type, XAssetHeader header)
{
  XAssetEntryPoolEntry *existingEntry;
  XAssetEntry newEntry;

  newEntry.asset.type = type;
  newEntry.asset.header = header;
  Sys_EnterCriticalSection(CRITSECT_DBHASH);


  //Debug start...
/*
  const char* name = DB_GetXAssetName(&newEntry.asset);

  XAssetEntryPoolEntry *pEntry = DB_FindXAssetEntry(newEntry.asset.type, name);
  if(pEntry != NULL)
  {
    if(pEntry->entry.zoneIndex == g_zoneIndex)
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "Duplicate asset %d %s\n", g_zoneIndex, name);
    }
  }
*/
  //End



  existingEntry = DB_LinkXAssetEntry(&newEntry, 0);
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
  DB_SyncLostDevice();
  return existingEntry->entry.asset.header;
}

void* REGPARM(2) DB_AddXAssetInternal(XAssetType xassetType, void* header)
{
  XAssetHeader h;
  h.data = header;
  return DB_AddXAsset(xassetType, h).data;
}

void DB_PostLoadXZone()
{
  unsigned int i;

  assert(Sys_IsMainThread() || Sys_IsRenderThread());
  assert(!g_loadingZone);
  assert(!g_zoneInfoCount);

  if ( Sys_IsDatabaseReady2() )
  {
    return;
  }
  if ( g_copyInfoCount ){

    DB_ArchiveAssets();
    Sys_EnterCriticalSection(CRITSECT_DBHASH);
    for ( i = 0; i < g_copyInfoCount; ++i )
    {
      if(db_xassetdebug->boolean)
      {
        Com_Printf(CON_CHANNEL_SYSTEM, "Redundant asset: '%s','%s'\n", DB_GetXAssetTypeName(g_copyInfo[i]->asset.type), DB_GetXAssetName(&g_copyInfo[i]->asset));
      }
      DB_LinkXAssetEntry(g_copyInfo[i], 1);
    }
    g_copyInfoCount = 0;
    Sys_LeaveCriticalSection(CRITSECT_DBHASH);

    DB_UnarchiveAssets();
  }
  Material_DirtyTechniqueSetOverrides();
  BG_FillInAllWeaponItems();
  Sys_DatabaseCompleted2();
}


bool __cdecl DB_IsXAssetDefault(XAssetType type, const char *name)
{
  unsigned int hash;
  unsigned int assetEntryIndex;
  XAssetEntryPoolEntry *assetEntry;

  hash = DB_HashForName(name, type);
  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  for ( assetEntryIndex = db_hashTable[hash % ARRAY_COUNT(db_hashTable)]; assetEntryIndex; assetEntryIndex = assetEntry->entry.nextHash )
  {
    assetEntry = &g_assetEntryPool[assetEntryIndex];
    if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
    {
      if ( !Q_stricmp(DB_GetXAssetName(&assetEntry->entry.asset), name) )
      {
        Sys_LeaveCriticalSection(CRITSECT_DBHASH);
        return assetEntry->entry.zoneIndex == 0;
      }
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
  return 1;
}

void DB_EndRecoverLostDevice()
{
  int i;

  assert(Sys_IsRenderThread());
  assert(g_isRecoveringLostDevice);
  assert(g_mayRecoverLostAssets);

  Sys_EnterCriticalSection(CRITSECT_DBHASH);

  for( i = 0; i < g_zoneCount; ++i)
  {
    DB_RecoverGeometryBuffers(&g_zones[g_zoneHandles[i]].zonememory);
  }
  g_mayRecoverLostAssets = g_loadingZone == 0;
  g_isRecoveringLostDevice = 0;

  Sys_LeaveCriticalSection(CRITSECT_DBHASH);

}

void __cdecl DB_EnumXAssets_FastFile(XAssetType type, void (__cdecl *func)(void* header, void * indata), void *inData, bool includeOverride)
{
  unsigned int hash;
  unsigned int assetEntryIndex;
  XAssetEntryPoolEntry *assetEntry;
  unsigned int overrideAssetEntryIndex;

  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  for ( hash = 0; hash < ARRAY_COUNT(db_hashTable); ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = assetEntry->entry.nextHash )
    {
      assetEntry = &g_assetEntryPool[assetEntryIndex];
      if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
      {
        func(assetEntry->entry.asset.header.data, inData);
        if ( includeOverride )
        {
          for ( overrideAssetEntryIndex = assetEntry->entry.nextOverride; overrideAssetEntryIndex; overrideAssetEntryIndex = g_assetEntryPool[overrideAssetEntryIndex].entry.nextOverride )
          {
            func(g_assetEntryPool[overrideAssetEntryIndex].entry.asset.header.data, inData);
          }
        }
      }
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
}


void __cdecl DB_BeginRecoverLostDevice()
{
  int i;

  g_isRecoveringLostDevice = 1;
  while ( !g_mayRecoverLostAssets )
  {
    Sys_SleepSec(0);
  }
  Sys_EnterCriticalSection(CRITSECT_DBHASH);

  for ( i = 0; i < g_zoneCount; ++i )
  {
    DB_ReleaseGeometryBuffers(&g_zones[g_zoneHandles[i]].zonememory);
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
}

int __cdecl DB_GetAllXAssetOfType_FastFile(XAssetType type, XAssetHeader *assets, int maxCount)
{
  unsigned int hash;
  unsigned int assetEntryIndex;
  int assetCount;
  XAssetEntryPoolEntry *assetEntry;

  assetCount = 0;
  Sys_EnterCriticalSection(CRITSECT_DBHASH);
  for ( hash = 0; hash < ARRAY_COUNT(db_hashTable); ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = assetEntry->entry.nextHash )
    {
      assetEntry = &g_assetEntryPool[assetEntryIndex];
      if ( g_assetEntryPool[assetEntryIndex].entry.asset.type == type )
      {
        if ( assets )
        {
          assert(assetCount < maxCount);
          assets[assetCount] = assetEntry->entry.asset.header;
        }
        ++assetCount;
      }
    }
  }
  Sys_LeaveCriticalSection(CRITSECT_DBHASH);
  return assetCount;
}



void __cdecl DB_DelayedCloneXAsset(XAssetEntry *newEntry)
{
  const char *assetname;
  const char *debugname;
  unsigned int i;
  
  if ( g_sync )
  {
    if ( db_xassetdebug->boolean )
    {
      debugname = Cvar_GetVariantString("db_xassetdebugname");
      assetname = DB_GetXAssetName(&newEntry->asset);
      if ( db_xassetdebugtype->integer == -1
        || db_xassetdebugtype->integer == newEntry->asset.type
        || (debugname[0] && !Q_stricmp(debugname, assetname)) )
      {
        assetname = DB_GetXAssetName(&newEntry->asset);
        Com_Printf(CON_CHANNEL_SYSTEM, "DB_DelayedCloneXAsset: g_sync forced load asset: '%s','%s'\n", DB_GetXAssetTypeName(newEntry->asset.type), assetname);
      }
    }
    DB_LinkXAssetEntry(newEntry, 1);
  }
  else
  {
    if ( g_copyInfoCount >= 2048 )
    {
      Com_Printf(CON_CHANNEL_DONT_FILTER, "g_copyInfo exceeded: too many asset overrides in one call to DB_LoadXAssets.\n");
      for ( i = 0; i < 2048; ++i )
      {
        assetname = DB_GetXAssetName(&g_copyInfo[i]->asset);
        Com_Printf(CON_CHANNEL_DONT_FILTER, "'%s','%s'\n", DB_GetXAssetTypeName(g_copyInfo[i]->asset.type), assetname);
      }
      Sys_Error("g_copyInfo exceeded");
    }
    if ( db_xassetdebug->boolean )
    {
      debugname = Cvar_GetVariantString("db_xassetdebugname");
      assetname = DB_GetXAssetName(&newEntry->asset);
      if ( db_xassetdebugtype->integer == -1
        || db_xassetdebugtype->integer == newEntry->asset.type
        || (debugname[0] && !Q_stricmp(debugname, assetname)) )
      {
        assetname = DB_GetXAssetName(&newEntry->asset);
        Com_Printf(CON_CHANNEL_SYSTEM, "DB_DelayedCloneXAsset: postponed load asset: '%s','%s' from fastfile %s\n", 
          DB_GetXAssetTypeName(newEntry->asset.type), assetname, g_zones[newEntry->zoneIndex].zoneinfo.name);
      }
    }
    g_copyInfo[g_copyInfoCount++] = newEntry;
  }
}

bool DB_OverrideAsset(unsigned int newZoneIndex, unsigned int existingZoneIndex, XAssetType type)
{
  assert(newZoneIndex != 0);
  assert(existingZoneIndex != 0);

  if(g_zones[newZoneIndex].zoneinfo.flags >= g_zones[existingZoneIndex].zoneinfo.flags)
  {
    return true;
  }
  return false;
}


XAssetEntryPoolEntry *__cdecl DB_LinkXAssetEntry(XAssetEntry *argNewEntry, int allowOverride)
{
  const char *poolname;
  XAssetEntryPoolEntry *existingEntry;
  unsigned int hash;
  unsigned int existingEntryIndex;
  XAssetEntryPoolEntry *overrideAssetEntry;
  XAsset asset;
  int isStubAsset;
  const char *name;
  const char* locname;
  char zoneIndex;
  XAssetType type;
  uint16_t *pOverrideAssetEntryIndex;
  const char* debugname;
  bool q;
  XAssetEntryPoolEntry *newEntry = (XAssetEntryPoolEntry*)argNewEntry;

  name = DB_GetXAssetName(&newEntry->entry.asset);
  if ( db_xassetdebug->boolean )
  {
    debugname = Cvar_GetVariantString("db_xassetdebugname");

    if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
      || (debugname[0] && !Q_stricmp(name, debugname)) )
    {
      Com_Printf(CON_CHANNEL_SYSTEM, "***db_xassetdebug:***\nDB_LinkXAssetEntry: link asset: '%s','%s'\n", DB_GetXAssetTypeName(newEntry->entry.asset.type), name);
    }
  }
  isStubAsset = false;
  if ( name[0] == ',' )
  {
    ++name;
    isStubAsset = true;
  }
  type = newEntry->entry.asset.type;
  hash = DB_HashForName(name, type);
  for ( existingEntryIndex = db_hashTable[hash % ARRAY_COUNT(db_hashTable)]; existingEntryIndex; existingEntryIndex = existingEntry->entry.nextHash )
  {
    existingEntry = &g_assetEntryPool[existingEntryIndex];
    if ( g_assetEntryPool[existingEntryIndex].entry.asset.type == type )
    {
      locname = DB_GetXAssetName(&existingEntry->entry.asset);
      if ( hash == DB_HashForName(locname, type) )
      {
        if ( Q_stricmp(locname, name) )
        {
          break;
        }
      }
    }
  }
  existingEntry = 0;
  for ( existingEntryIndex = db_hashTable[hash % ARRAY_COUNT(db_hashTable)]; existingEntryIndex; existingEntryIndex = existingEntry->entry.nextHash )
  {
    existingEntry = &g_assetEntryPool[existingEntryIndex];
    if ( g_assetEntryPool[existingEntryIndex].entry.asset.type == type )
    {
      locname = DB_GetXAssetName(&existingEntry->entry.asset);
      if ( !Q_stricmp(locname, name) )
      {
        if ( db_xassetdebug->boolean )
        {
          debugname = Cvar_GetVariantString("db_xassetdebugname");
          if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
            || (debugname[0] && !Q_stricmp(name, debugname)) )
          {
            if ( g_zones[existingEntry->entry.zoneIndex].zoneinfo.name[0] )
            {
              poolname = g_zones[existingEntry->entry.zoneIndex].zoneinfo.name;
            }
            else
            {
              poolname = "default asset pool";
            }
            locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
            Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: existing asset: '%s','%s' loaded from fastfile: '%s'\n", locname, name, poolname);
          }
        }
        break;
      }
    }
  }
  if ( allowOverride )
  {
    assert(!isStubAsset);
  }
  else
  {
    if ( isStubAsset )
    {
      if ( !existingEntryIndex )
      {
        return DB_CreateDefaultEntry(type, name);
      }
      assert(existingEntry);
      if ( db_xassetdebug->boolean )
      {
        debugname = Cvar_GetVariantString("db_xassetdebugname");
        if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
          || (debugname[0] && !Q_stricmp(name, debugname)) )
        {
          locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
          Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: stub asset: '%s','%s' already exists. Using existingEntry\n", locname, name);
        }
      }
      return existingEntry;
    }
    asset.type = newEntry->entry.asset.type;
    asset.header = newEntry->entry.asset.header;
    newEntry = DB_AllocXAssetEntry(asset.type, g_zoneIndex);
    DB_CloneXAssetInternal(&asset, &newEntry->entry.asset);
  }
  if ( !existingEntryIndex )
  {
    if ( db_xassetdebug->boolean )
    {
      debugname = Cvar_GetVariantString("db_xassetdebugname");
      if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
        || (debugname[0] && !Q_stricmp(name, debugname)) )
      {
        locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
        Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: created new asset: '%s','%s'\n", locname, name);
      }
    }
    newEntry->entry.nextHash = db_hashTable[hash % ARRAY_COUNT(db_hashTable)];
    db_hashTable[hash % ARRAY_COUNT(db_hashTable)] = newEntry - g_assetEntryPool;
    if ( db_xassetdebug->boolean )
    {
      debugname = Cvar_GetVariantString("db_xassetdebugname");
      if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
        || (debugname[0] && !Q_stricmp(name, debugname)) )
      {
        locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
        Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: return new asset: '%s','%s' loaded from fastfile: '%s'\n", locname, name, g_zones[newEntry->entry.zoneIndex].zoneinfo.name);
      }
    }
    return newEntry;
  }
  assert(existingEntry);
  q = false;
  if ( existingEntry->entry.zoneIndex )
  {
//    assert(existingEntry->entry.zoneIndex != newEntry->entry.zoneIndex);
    if ( !g_defaultAssetName[type][0] && type != ASSET_TYPE_RAWFILE && type != ASSET_TYPE_MAP_ENTS )
    {
      Sys_LeaveCriticalSection(CRITSECT_DBHASH);
      Com_Error(ERR_DROP, "Attempting to override asset '%s' from zone '%s' with zone '%s'", name,
        g_zones[existingEntry->entry.zoneIndex].zoneinfo.name, g_zones[newEntry->entry.zoneIndex].zoneinfo.name);
    }
    if ( !DB_OverrideAsset(newEntry->entry.zoneIndex, existingEntry->entry.zoneIndex, type) )
    {
      for ( pOverrideAssetEntryIndex = &existingEntry->entry.nextOverride; *pOverrideAssetEntryIndex; pOverrideAssetEntryIndex = &overrideAssetEntry->entry.nextOverride )
      {
        overrideAssetEntry = &g_assetEntryPool[*pOverrideAssetEntryIndex];
        if ( DB_OverrideAsset(newEntry->entry.zoneIndex, overrideAssetEntry->entry.zoneIndex, type) )
        {
          break;
        }
      }
      if ( db_xassetdebug->boolean )
      {
        debugname = Cvar_GetVariantString("db_xassetdebugname");
        if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
          || (debugname[0] && !Q_stricmp(name, debugname)) )
        {
          Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: keep existing asset, and put new in its override position\n");
        }
      }
      newEntry->entry.nextOverride = *pOverrideAssetEntryIndex;
      *pOverrideAssetEntryIndex = newEntry - g_assetEntryPool;
      return existingEntry;
    }
    q = true;
  }else{
    assert(g_defaultAssetName[type][0]);
    assert(!existingEntry->entry.nextOverride);
    assert(g_defaultAssetCount != 0);
  }
  if ( !allowOverride || q)
  {
    if ( allowOverride )
    {
      assert(existingEntry->entry.zoneIndex);
      if ( existingEntry->entry.inuse )
      {
        varXAsset = &existingEntry->entry.asset;
        Mark_XAsset();
      }
      if ( db_xassetdebug->boolean )
      {
        debugname = Cvar_GetVariantString("db_xassetdebugname");
        if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
          || (debugname[0] && !Q_stricmp(name, debugname)) )
        {
          locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
          Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: swapping existing asset: '%s','%s' with new asset loaded from fastfile: '%s'\n", 
            locname, name, g_zones[newEntry->entry.zoneIndex].zoneinfo.name);
        }
      }
      newEntry->entry.nextOverride = existingEntry->entry.nextOverride;
      existingEntry->entry.nextOverride = newEntry - g_assetEntryPool;
      DB_SwapXAsset(&newEntry->entry.asset, &existingEntry->entry.asset);
      zoneIndex = existingEntry->entry.zoneIndex;
      existingEntry->entry.zoneIndex = newEntry->entry.zoneIndex;
      newEntry->entry.zoneIndex = zoneIndex;
    }
    else
    {
      DB_DelayedCloneXAsset(&newEntry->entry);
    }
    if ( db_xassetdebug->boolean )
    {
      debugname = Cvar_GetVariantString("db_xassetdebugname");
      if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == existingEntry->entry.asset.type
        || (debugname[0] && !Q_stricmp(name, debugname)) )
      {
        if ( g_zones[existingEntry->entry.zoneIndex].zoneinfo.name[0] )
        {
          poolname = g_zones[existingEntry->entry.zoneIndex].zoneinfo.name;
        }
        else
        {
          poolname = "default asset pool";
        }
        locname = DB_GetXAssetTypeName(existingEntry->entry.asset.type);
        Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: return asset: '%s','%s' loaded from fastfile: '%s'\n", locname, name, poolname);
      }
    }
    return existingEntry;
  }
  if ( db_xassetdebug->boolean )
  {
    debugname = Cvar_GetVariantString("db_xassetdebugname");
    if ( db_xassetdebugtype->integer == -1 || db_xassetdebugtype->integer == newEntry->entry.asset.type
      || (debugname[0] && !Q_stricmp(name, debugname)) )
    {
      locname = DB_GetXAssetTypeName(newEntry->entry.asset.type);
      Com_Printf(CON_CHANNEL_SYSTEM, "DB_LinkXAssetEntry: replacing default asset in asset: '%s','%s'\n", locname, name);
    }
  }
  --g_defaultAssetCount;
  if ( existingEntry->entry.inuse )
  {
    varXAsset = &existingEntry->entry.asset;
    Mark_XAsset();
  }
  DB_CloneXAssetEntry(&newEntry->entry, &existingEntry->entry, DB_CLONE_FROM_DEFAULT);
  DB_FreeXAssetEntry(&newEntry->entry);
  return existingEntry;
}

extern Material* varMaterial;
extern "C" void __cdecl Load_Material(bool atStreamStart);

void __cdecl Load_MaterialAsset(Material **material)
{
  XAssetHeader hmat;
  hmat.material = *material;
  *material = DB_AddXAsset(ASSET_TYPE_MATERIAL, hmat).material;
}

void __cdecl Load_MaterialHandle(bool atStreamStart)
{
  const void **v1;
  signed int value;

  Load_Stream(atStreamStart, varMaterialHandle, 4);
  DB_PushStreamPos(0);
  value = (signed int)*varMaterialHandle; 
  if ( value )
  {
    if ( value != -1 && value != -2 )
    {
      DB_ConvertOffsetToAlias(varMaterialHandle);
    }
    else
    {
      *varMaterialHandle = (Material *)DB_AllocStreamPos(3);
      varMaterial = *varMaterialHandle;
      if ( value == -2 )
      {
        v1 = DB_InsertPointer();
      }
      else
      {
        v1 = 0;
      }
      Load_Material(1);
      Load_MaterialAsset(varMaterialHandle);
      if ( v1 )
      {
        *v1 = *varMaterialHandle;
      }
    }
/*
    XAssetHeader head;
    head.material = *varMaterialHandle;
    const char* name = DB_GetXAssetHeaderName(ASSET_TYPE_MATERIAL, &head);
    Com_Printf(CON_CHANNEL_SYSTEM, " name=%s\n", name);
    if(strcmp("mc/mtl_opforce_body_sp", name) == 0)
    {
      __asm__("int $3");
    }
*/
  }
  DB_PopStreamPos();
}


};
