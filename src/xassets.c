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
#include "xassets/sounds.h"
#include "sys_thread.h"
#include "zlib/unzip.h"
//#include "physicalmemory.h"

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>

void XAssetUsage_f();
void XAssetUsage2_f();
void XModelList_f();

void R_Init(){

        int XAssetscount;
        XZoneInfo XZoneInfoStack[6];

        XZoneInfoStack[4].name = "localized_common_mp";
        XZoneInfoStack[4].allocFlags = 1;
        XZoneInfoStack[4].freeFlags = 0;
        XZoneInfoStack[3].name = "common_mp";
        XZoneInfoStack[3].allocFlags = 4;
        XZoneInfoStack[3].freeFlags = 0;
        XZoneInfoStack[2].name = "ui_mp";
        XZoneInfoStack[2].allocFlags = 8;
        XZoneInfoStack[2].freeFlags = 0;
        XZoneInfoStack[1].name = "localized_code_post_gfx_mp";
        XZoneInfoStack[1].allocFlags = 0;
        XZoneInfoStack[1].freeFlags = 0;
        XZoneInfoStack[0].name = "code_post_gfx_mp";
        XZoneInfoStack[0].allocFlags = 2;
        XZoneInfoStack[0].freeFlags = 0;

        if(DB_ModFileExists()){
            XAssetscount = 6;
            XZoneInfoStack[5].name = "mod";
            XZoneInfoStack[5].allocFlags = 16;
            XZoneInfoStack[5].freeFlags = 0;
        }else{
            XAssetscount = 5;
        }
        DB_LoadXAssets(&XZoneInfoStack[0],XAssetscount,0);

        Cmd_AddCommand("XAssetUsage", XAssetUsage_f);
//        Cmd_AddCommand("XModelList", XModelList_f);
}

#define NUM_ASSETTYPES 33

#define MAX_XMODELS 2000
#define MAX_GFXIMAGE 3800
#define MAX_WEAPON 196
//#define MAX_FX 680


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


union XAssetEntryPoolEntry g_assetEntryPool[32768];
uint16_t db_hashTable[32768];


typedef struct WeaponDefHeader_s{
        struct WeaponDefHeader_s*	next;
        char			data[2164];
}WeaponDefHeader_t;

typedef struct XAssetsHeaderCommon_s{
        struct XAssetsHeaderCommon_s*	next;
}XAssetsHeaderCommon_t;


int XAssetStdCount[ASSET_TYPE_COUNT];
int XAssetRequestedCount[ASSET_TYPE_COUNT];


int DB_GetXAssetStdCount(enum XAssetType type)
{
	return XAssetStdCount[type];
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


void XAssetsInitStdCount()
{
	XAssetStdCount[ASSET_TYPE_XMODELPIECES] = 64;
	XAssetStdCount[ASSET_TYPE_PHYSPRESET] = 64;
	XAssetStdCount[ASSET_TYPE_XANIMPARTS] = 4096;
	XAssetStdCount[ASSET_TYPE_XMODEL] = 1000;
	XAssetStdCount[ASSET_TYPE_MATERIAL] = 2048;
	XAssetStdCount[ASSET_TYPE_TECHNIQUE_SET] = 1024;
	XAssetStdCount[ASSET_TYPE_IMAGE] = 2400;
	XAssetStdCount[ASSET_TYPE_SOUND] = 16000;
	XAssetStdCount[ASSET_TYPE_SOUND_CURVE] = 64;
	XAssetStdCount[ASSET_TYPE_LOADED_SOUND] = 1200;
	XAssetStdCount[ASSET_TYPE_CLIPMAP] = 1;
	XAssetStdCount[ASSET_TYPE_CLIPMAP_PVS] = 1;
	XAssetStdCount[ASSET_TYPE_COMWORLD] = 1;
	XAssetStdCount[ASSET_TYPE_GAMEWORLD_SP] = 1;
	XAssetStdCount[ASSET_TYPE_GAMEWORLD_MP] = 1;
	XAssetStdCount[ASSET_TYPE_MAP_ENTS] = 2;
	XAssetStdCount[ASSET_TYPE_GFXWORLD] = 1;
	XAssetStdCount[ASSET_TYPE_LIGHT_DEF] = 32;
	XAssetStdCount[ASSET_TYPE_UI_MAP] = 0;
	XAssetStdCount[ASSET_TYPE_FONT] = 16;
	XAssetStdCount[ASSET_TYPE_MENULIST] = 128;
	XAssetStdCount[ASSET_TYPE_MENU] = 1280;
	XAssetStdCount[ASSET_TYPE_LOCALIZE_ENTRY] = 6144;
	XAssetStdCount[ASSET_TYPE_WEAPON] = 720;
	XAssetStdCount[ASSET_TYPE_SNDDRIVER_GLOBALS] = 1;
	XAssetStdCount[ASSET_TYPE_FX] = 400;
	XAssetStdCount[ASSET_TYPE_IMPACT_FX] = 4;
	XAssetStdCount[ASSET_TYPE_AITYPE] = 0;
	XAssetStdCount[ASSET_TYPE_MPTYPE] = 0;
	XAssetStdCount[ASSET_TYPE_CHARACTER] = 0;
	XAssetStdCount[ASSET_TYPE_XMODELALIAS] = 0;
	XAssetStdCount[ASSET_TYPE_RAWFILE] = 1024;
	XAssetStdCount[ASSET_TYPE_STRINGTABLE] = 100;
}

cvar_t* r_xassetnum;
extern const char* g_assetNames[];
extern int g_zoneCount;
extern int g_poolSize[];

void __cdecl DB_EnumXAssets_FastFile(enum XAssetType type, void (__cdecl *func)(union XAssetHeader, void *), void *inData, bool includeOverride);


void DB_ParseRequestedXAssetNum()
{

	char toparse[1024];
	const char* typename;
	char* scanpos;
	char scanstring[64];
	int i, count;

	r_xassetnum = Cvar_RegisterString("r_xassetnum", "", CVAR_INIT, "The list of xassets with their count in the key=value key=value... format");

	Com_Memcpy(XAssetRequestedCount, XAssetStdCount, sizeof(XAssetRequestedCount));
	Com_sprintf(toparse, sizeof(toparse), " %s", r_xassetnum->string);

	for(i = 0;  i < ASSET_TYPE_COUNT; ++i)
	{

		if(DB_XAssetNoAlloc(i) || i == ASSET_TYPE_MENU || i == ASSET_TYPE_WEAPON || i == ASSET_TYPE_STRINGTABLE)
		{
			continue;
		}

		typename = g_assetNames[ i ];

		Com_sprintf(scanstring, sizeof(scanstring), " %s=", typename);

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

		if(count <= DB_GetXAssetStdCount(i))
		{
			continue;
		}
		XAssetRequestedCount[i] = count;
	}
}

#if 0
void DB_CustomAllocOnce(enum XAssetType type)
{
	int count = DB_GetXAssetStdCount(type);
	int typesize = DB_GetXAssetTypeSize(type);
	void *alloc;

	alloc = Z_TagMalloc(count * typesize, TAG_XZONE);
	if(alloc)
	{
		DB_XAssetPool[type] = alloc;
		g_poolSize[type] = count;
	}
}

void DB_RelocateXAssetMem()
{
	int i, typesize, count;

	void* newmem;

	for(i = 0;  i < ASSET_TYPE_COUNT; ++i)
	{
		if(DB_XAssetNoAlloc(i))
		{
			continue;
		}

		if(XAssetRequestedCount[i] <= g_poolSize[i])
		{
			//Only allocate if we need more than what is already allocated
			continue;
		}

		count = XAssetRequestedCount[i];
		typesize = DB_GetXAssetTypeSize(i);

		newmem = Z_TagMalloc(count * typesize, TAG_XZONE);

		if(newmem == NULL)
		{
			continue;
		}

		Com_Printf(CON_CHANNEL_FILES,"^2Reallocate %d XAssets on request of type: %s\n", count, g_assetNames[i]);
		DB_XAssetPool[i] = newmem;
		g_poolSize[i] = count;
	}
}


void XAssets_PatchLimits(){

        void* ptrpool, *ptrsize;

        int size = NUM_ASSETTYPES * sizeof(void*);

        ptrpool = &DB_XAssetPool[0];
	ptrsize = &g_poolSize[0];

	if(!Sys_MemoryProtectWrite(ptrpool, size) || !Sys_MemoryProtectWrite(ptrsize, size))
	{
		Com_Error(ERR_FATAL,"XAssets_PatchLimits: Failed to change memory to writeable\n");
	}

	XAssetsInitStdCount();
	DB_ParseRequestedXAssetNum();

	DB_CustomAllocOnce( menuDef_t );
	DB_CustomAllocOnce( WeaponDef );
	DB_CustomAllocOnce( StringTable );

	DB_RelocateXAssetMem();

	if(!Sys_MemoryProtectReadonly(ptrpool, size) || !Sys_MemoryProtectReadonly(ptrsize, size))
	{
		Com_Error(ERR_FATAL,"XAssets_PatchLimits: Failed to change memory to read only\n");
	}
}
#endif

typedef struct
{
  char field_0[54];
}IDirect3DVertexBuffer9;

typedef struct
{
  char field_0[54];
}IDirect3DIndexBuffer9;


typedef struct
{
  char *data;
  unsigned int size;
}XBlock;

typedef struct
{
  XBlock blocks[9];
  int allocVertexBuffer;
  int allocIndexBuffer;
  IDirect3DVertexBuffer9 *vertexBufferHandle;
  IDirect3DIndexBuffer9 *indexBufferHandle;
}XZoneMemory;


typedef struct
{
  char name[64];
  int flags;
}XZoneInfoInternal;

typedef struct
{
  XZoneInfoInternal zoneinfo;
  int index;
  XZoneMemory zonememory;
  int zoneSize;
  int ff_dir;
}XZone;

void R_UnlockVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_FreeStaticVertexBuffer(IDirect3DVertexBuffer9* vertexbuf){}
void R_UnlockIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9* indexbuf){}
void Material_DirtyTechniqueSetOverrides(){};

XZone g_zones[33];
uint8_t g_zoneHandles[33];

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
	//DB_FreeXBlocks
	Com_Memset(zonemem->blocks, 0, sizeof(zonemem->blocks));
}

void DB_UnloadXAssetsMemoryInternal(XZone* zone)
{
        DB_FreeXZoneMemory(&zone->zonememory);
        Com_Printf(CON_CHANNEL_FILES,"Unloaded fastfile %s\n", zone->zoneinfo.name);
        PMem_Free(zone->zoneinfo.name, zone->index);
        zone->zoneinfo.name[0] = '\0';
}


void DB_UnloadXAssetsMemoryForZone(byte freeflags)
{
	byte bitmask;
	int i;

	for(bitmask = 64; bitmask > 0 ; bitmask >>= 1)
	{
		if(bitmask == 2)
			bitmask >>= 1;

		if(!(freeflags & bitmask))
			continue;

		//DB_UnloadXAssetsMemory() inlined here
		for ( i = g_zoneCount - 1; i >= 0; --i )
		{

			if ( g_zones[g_zoneHandles[i]].zoneinfo.flags & bitmask )
			{
				DB_UnloadXAssetsMemoryInternal(&g_zones[g_zoneHandles[i]]);
				g_zoneCount--;
				if (i < g_zoneCount)
				{
					memcpy(&g_zoneHandles[i], &g_zoneHandles[i + 1], g_zoneCount - i);
				}
			}
		}
	}
}

int DB_FileSize(const char *filename, int FF_DIR)
{
	char ospath[MAX_OSPATH];

	DB_BuildOSPath(filename, FF_DIR, sizeof(ospath), ospath);

	return FS_filelengthForOSPath(ospath);
}

qboolean DB_FileExists(const char* filename, int FF_DIR)
{
	char ospath[MAX_OSPATH];

	DB_BuildOSPath(filename, FF_DIR, sizeof(ospath), ospath);

	return FS_FileExistsOSPath(ospath);
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

void DB_PrintXAsset(union XAssetHeader header, void *none)
{
    XModel* xmodelhead = header.model;

    Com_Printf(CON_CHANNEL_DONT_FILTER,"%s\n", xmodelhead->name);
}

void XModelList_f()
{

    Com_Printf(CON_CHANNEL_DONT_FILTER,"XModel list:\n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"Name                          \n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"------------------------------\n");

    DB_EnumXAssets_FastFile(ASSET_TYPE_XMODEL, DB_PrintXAsset, NULL, qtrue);

    Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");
}


void DB_CountXAssets(int *count, int len ,qboolean a4)
{
  int index, sindex, i;
  union XAssetEntryPoolEntry *listselector, *slistselect;
  enum XAssetType type;

  Sys_EnterCriticalSection(CRITSECT_DBHASH);

/*
  InterlockedIncrement(&db_hashCritSect);
  while ( xasset_interlock )
  {
    Sys_SleepUSec(0);
  }
*/
  if((len / sizeof(int)) < ASSET_TYPE_COUNT)
  {
    return;
  }

  Com_Memset(count, 0, len);

  for(i = 0; i < 32768; ++i)
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


void DB_BuildOverallocatedXAssetList(char* configstring, int len)
{
    int i;
    char cstring[64];

    configstring[0] = '\0';

    for(i = 0; i < ASSET_TYPE_COUNT; ++i)
    {
        if(DB_XAssetNoAlloc(i))
        {
            continue;
        }

		if(g_poolSize[i] <= DB_GetXAssetStdCount(i))
        {
            continue;
        }
/*
        if(countlist[i] < 1)
        {
            continue;
        }
*/
        Com_sprintf(cstring, sizeof(cstring), "%s=%d ", g_assetNames[i], g_poolSize[i]);
        Q_strncat(configstring, len, cstring);
    }

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


/*


void XAssetUsage_f()
{
    int i, assettype, j, l;

    XAssetsHeaderCommon_t *header;

    Com_Printf(CON_CHANNEL_FILES,"XAsset usage:\n");
    Com_Printf(CON_CHANNEL_FILES,"Name                 Used  Free \n");
    Com_Printf(CON_CHANNEL_FILES,"-------------------- ----- -----\n");

    for(assettype = 0; assettype < NumXAssets; assettype++)
    {

	header = DB_XAssetPool[assettype];

	for(i = 0; i < g_poolSize[assettype]; i++)
	{
	    if(header == NULL)
	        break;

	    else
	        header = header->next;
	}

	Com_Printf(CON_CHANNEL_FILES,"%s", g_assetNames[assettype]);

	l = 20 - strlen(g_assetNames[assettype]);
	j = 0;

	do
	{
		Com_Printf(CON_CHANNEL_FILES,CON_CHANNEL_FILES," ");
		j++;
	} while(j < l);


	Com_Printf(CON_CHANNEL_FILES," %5d %5d\n", g_poolSize[assettype] - i, i);


    }
    Com_Printf(CON_CHANNEL_FILES,"\n");
}

*/


void DB_SyncXAssets()
{
    Sys_SyncDatabase();
    DB_PostLoadXZone();
}

extern const char *(__cdecl *DB_XAssetGetNameHandler[ASSET_TYPE_COUNT])(union XAssetHeader *);

char g_zoneNameList[2080];

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
/*
void CheckXAssetEntryTab()
{
    int i;
    const char* name;
  union XAssetEntryPoolEntry *existingEntry;
  for ( i = 0; i < 0x8000; ++i )
  {
    existingEntry = &g_assetEntryPool[i];
    if ( existingEntry->entry.asset.type > 0 && existingEntry->entry.asset.type < 40)
    {
	XAsset *asset = &existingEntry->entry.asset;
	name = DB_XAssetGetNameHandler[asset->type](&asset->header);
	
        if(name < (const char*)0xFFFF)
        {

		Com_Printf(0, "Invalid %d!!!\n", i);
	Com_Printf(0, "Name b: %x\n", (int)name);

//		__builtin_trap();
        }
    }
  }
}
*/


void __cdecl DB_MaterialSetName(union XAssetHeader *xasset, const char *name)
{
//  xasset->material->info.name = name;
    *(const char**)xasset->data = name;
}

extern byte* g_streamPos;
//extern XBlock* g_streamBlocks;
extern unsigned int g_streamPosIndex;


extern const char* varConstChar;
extern const char** varXString;
extern char*** varXStringPtr;

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
    Load_XStringCustom(varXString);

}

/*
void __cdecl Load_ScriptStringCustom(uint16_t *var)
{
  *var = (uint16_t)varXAssetList->stringList.strings[*var];
}
*/

extern struct WeaponDef* varWeaponDef;
extern snd_alias_list_name* varsnd_alias_list_name;
/*
void __cdecl Load_WeaponDefSounds()
{
  int i;
  Com_Printf(0, "Weapon sounds for %s\n", varWeaponDef->szInternalName);
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

  if ( varWeaponDef->bounceSound )
  {
    if ( varWeaponDef->bounceSound == (struct snd_alias_list_t **)-1 )
    {
      varWeaponDef->bounceSound = (struct snd_alias_list_t **)DB_AllocStreamPos(3);
      varsnd_alias_list_name = varWeaponDef->bounceSound;
      Load_Stream(1, varsnd_alias_list_name, 116);
      i = 29;
      do
      {
        Load_Stream(0, varsnd_alias_list_name, 4);
        Load_SndAliasCustom(varsnd_alias_list_name);
        ++varsnd_alias_list_name;
        --i;
      }
      while ( i );
    }
    else
    {
      DB_ConvertOffsetToPointer(&varWeaponDef->bounceSound);
    }
  }
}
*/


void __cdecl Load_WeaponDef(bool atStreamStart)
{
  XModel **v1; // ebx@1
  signed int v2; // esi@1
  const char **v3; // ebx@3
  signed int v4; // esi@3
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
  int i;

  Load_Stream(atStreamStart, varWeaponDef, sizeof(struct WeaponDef));
  DB_PushStreamPos(4);
  varXString = &varWeaponDef->szInternalName;
  Load_XString(0);
  varXString = &varWeaponDef->szDisplayName;
  Load_XString(0);
  varXString = &varWeaponDef->szOverlayName;
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

  varXString = varWeaponDef->szXAnims;
  Load_Stream(0, varWeaponDef->szXAnims, 132);
  for(i = 0; i < ARRAY_COUNT(varWeaponDef->szXAnims); ++i, ++varXString)
  {
    Load_XString(0);
  }
  varXString = &varWeaponDef->szModeName;
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
  varXString = &varWeaponDef->szAmmoName;
  Load_XString(0);
  varXString = &varWeaponDef->szClipName;
  Load_XString(0);
  varXString = &varWeaponDef->szSharedAmmoCapName;
  Load_XString(0);
  varMaterialHandle = &varWeaponDef->overlayMaterial;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->overlayMaterialLowRes;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->killIcon;
  Load_MaterialHandle(0);
  varMaterialHandle = &varWeaponDef->dpadIcon;
  Load_MaterialHandle(0);
  varXString = &varWeaponDef->szAltWeaponName;
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
  varXString = varWeaponDef->accuracyGraphName;
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
  varXString = &v15->accuracyGraphName[1];
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
  varXString = &v18->szUseHintString;
  Load_XString(0);
  varXString = &varWeaponDef->dropHintString;
  Load_XString(0);
  varXString = &varWeaponDef->szScript;
  Load_XString(0);
  varXString = &varWeaponDef->fireRumble;
  Load_XString(0);
  varXString = &varWeaponDef->meleeImpactRumble;
  Load_XString(0);
  DB_PopStreamPos(atStreamStart);
}


void __cdecl DB_ReleaseXAssets()
{
  unsigned int hash;
  unsigned int assetEntryIndex;

  assert( Sys_IsMainThread());

  Sys_SyncDatabase();

  for ( hash = 0; hash < 32768; ++hash )
  {
    for ( assetEntryIndex = db_hashTable[hash]; assetEntryIndex; assetEntryIndex = g_assetEntryPool[assetEntryIndex].entry.nextHash )
    {
      g_assetEntryPool[assetEntryIndex].entry.inuse = 0;
    }
  }
}

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

  for( index = db_hashTable[hash & 0x7FFF]; ; index = entry->entry.nextHash)
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

  for( index = db_hashTable[hash & 0x7FFF]; ; index = entry->entry.nextHash)
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
