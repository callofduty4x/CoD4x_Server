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

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

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


struct XAsset
{
  enum XAssetType type;
  union XAssetHeader header;
};

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
unsigned short db_hashTable[32768];


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

/* No multithreading here :P */
void _InterlockedExchangeAdd(int* lockedvar, int num)
{
    *lockedvar += num;
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

char g_zoneNameList[2080];

