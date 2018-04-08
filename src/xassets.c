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
#include "physicalmemory.h"

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>


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



cvar_t* r_xassetnum;
extern const char* g_assetNames[];
extern int g_zoneCount;
extern int g_poolSize[];

void __cdecl DB_EnumXAssets_FastFile(enum XAssetType type, void (__cdecl *func)(union XAssetHeader, void *), void *inData, bool includeOverride);

#if 0

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



qboolean DB_FileExists(const char* filename, int FF_DIR)
{
	char ospath[MAX_OSPATH];

	DB_BuildOSPath(filename, FF_DIR, sizeof(ospath), ospath);

	return FS_FileExistsOSPath(ospath);
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
#if 0

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







#endif
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

