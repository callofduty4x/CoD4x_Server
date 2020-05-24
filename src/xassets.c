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

        int i = 0;
        XZoneInfo XZoneInfoStack[6];

        XZoneInfoStack[i].name = "code_post_gfx_mp";
        XZoneInfoStack[i].allocFlags = 2;
        XZoneInfoStack[i].freeFlags = 0;
        ++i;

        XZoneInfoStack[i].name = "localized_code_post_gfx_mp";
        XZoneInfoStack[i].allocFlags = 0;
        XZoneInfoStack[i].freeFlags = 0;
        ++i;

#ifndef DEDICATEDONLY
        XZoneInfoStack[i].name = "ui_mp";
        XZoneInfoStack[i].allocFlags = 8;
        XZoneInfoStack[i].freeFlags = 0;
        ++i;
#endif

        XZoneInfoStack[i].name = "common_mp";
        XZoneInfoStack[i].allocFlags = 4;
        XZoneInfoStack[i].freeFlags = 0;
        ++i;

#ifndef DEDICATEDONLY
        XZoneInfoStack[i].name = "localized_common_mp";
        XZoneInfoStack[i].allocFlags = 1;
        XZoneInfoStack[i].freeFlags = 0;
        ++i;
#endif

        if(DB_ModFileExists()){

            XZoneInfoStack[i].name = "mod";
            XZoneInfoStack[i].allocFlags = 16;
            XZoneInfoStack[i].freeFlags = 0;
            ++i;
        } else {
            XZoneInfoStack[i].name = "cod4x_patchv2";
            XZoneInfoStack[i].allocFlags = 16;
            XZoneInfoStack[i].freeFlags = 0;
            ++i;
        }
        DB_LoadXAssets(&XZoneInfoStack[0], i, 0);
		
		
}


extern const char* g_assetNames[];
extern int g_zoneCount;
extern int g_poolSize[];



qboolean DB_FileExists(const char* filename, int FF_DIR)
{
	char ospath[MAX_OSPATH];

	DB_BuildOSPath(filename, FF_DIR, sizeof(ospath), ospath);

	return FS_FileExistsOSPath(ospath);
}

void DB_PrintXAsset(void* header, void *none)
{
    union XAssetHeader head;
    head.data = header;
    XModel* xmodelhead = head.model;

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


void DB_PrintMaterialAsset(void* header, void *none)
{
    union XAssetHeader head;
    head.data = header;
    struct Material* mathead = head.material;

    Com_Printf(CON_CHANNEL_DONT_FILTER,"%s\n", mathead->info.name);
}

void MaterialList_f()
{

    Com_Printf(CON_CHANNEL_DONT_FILTER,"Material list:\n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"Name                          \n");
    Com_Printf(CON_CHANNEL_DONT_FILTER,"------------------------------\n");

    DB_EnumXAssets_FastFile(ASSET_TYPE_MATERIAL, DB_PrintMaterialAsset, NULL, qtrue);

    Com_Printf(CON_CHANNEL_DONT_FILTER,"\n");
}