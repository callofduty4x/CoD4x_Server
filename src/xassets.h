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



#ifndef __XASSETS_H__
#define __XASSETS_H__

#include "q_shared.h"
#include "dobj.h"

#ifndef __cplusplus
#include <stdbool.h>
#endif


typedef struct
{
  const char *name;
  int allocFlags;
  int freeFlags;
}XZoneInfo;

enum XAssetType
{
  ASSET_TYPE_XMODELPIECES,
  ASSET_TYPE_PHYSPRESET,
  ASSET_TYPE_XANIMPARTS,
  ASSET_TYPE_XMODEL,
  ASSET_TYPE_MATERIAL,
  ASSET_TYPE_TECHNIQUE_SET,
  ASSET_TYPE_IMAGE,
  ASSET_TYPE_SOUND,
  ASSET_TYPE_SOUND_CURVE,
  ASSET_TYPE_LOADED_SOUND,
  ASSET_TYPE_CLIPMAP,
  ASSET_TYPE_CLIPMAP_PVS,
  ASSET_TYPE_COMWORLD,
  ASSET_TYPE_GAMEWORLD_SP,
  ASSET_TYPE_GAMEWORLD_MP,
  ASSET_TYPE_MAP_ENTS,
  ASSET_TYPE_GFXWORLD,
  ASSET_TYPE_LIGHT_DEF,
  ASSET_TYPE_UI_MAP,
  ASSET_TYPE_FONT,
  ASSET_TYPE_MENULIST,
  ASSET_TYPE_MENU,
  ASSET_TYPE_LOCALIZE_ENTRY,
  ASSET_TYPE_WEAPON,
  ASSET_TYPE_SNDDRIVER_GLOBALS,
  ASSET_TYPE_FX,
  ASSET_TYPE_IMPACT_FX,
  ASSET_TYPE_AITYPE,
  ASSET_TYPE_MPTYPE,
  ASSET_TYPE_CHARACTER,
  ASSET_TYPE_XMODELALIAS,
  ASSET_TYPE_RAWFILE,
  ASSET_TYPE_STRINGTABLE,
  ASSET_TYPE_COUNT
};

union XAssetHeader
{
  struct XModelPieces *xmodelPieces;
  struct PhysPreset *physPreset;
  struct XAnimParts *parts;
  struct XModel *model;
  struct Material *material;
  struct MaterialPixelShader *pixelShader;
  struct MaterialVertexShader *vertexShader;
  struct MaterialTechniqueSet *techniqueSet;
  struct GfxImage *image;
  struct snd_alias_list_t *sound;
  struct SndCurve *sndCurve;
  struct clipMap_t *clipMap;
  struct ComWorld *comWorld;
  struct GameWorldSp *gameWorldSp;
  struct GameWorldMp *gameWorldMp;
  struct MapEnts *mapEnts;
  struct GfxWorld *gfxWorld;
  struct GfxLightDef *lightDef;
  struct Font_s *font;
  struct MenuList *menuList;
  struct menuDef_t *menu;
  struct LocalizeEntry *localize;
  struct WeaponDef *weapon;
  struct SndDriverGlobals *sndDriverGlobals;
  struct FxEffectDef *fx;
  struct FxImpactTable *impactFx;
  struct RawFile *rawfile;
  struct StringTable *stringTable;
  void *data;
};

typedef struct
{
  enum XAssetType type;
  union XAssetHeader header;
}XAsset;



extern char*** varXStringPtr;

#ifdef __cplusplus
extern "C"
{
#endif

void R_Init();
void __cdecl DB_SetInitializing(qboolean);
qboolean __cdecl DB_FileExists(const char* filename, int mode);
qboolean __cdecl DB_ModFileExists(void);
void __cdecl DB_LoadXAssets(XZoneInfo*, unsigned int assetscount, int);
int __cdecl DB_GetXAssetTypeSize(int type);
void __cdecl XAnimInit(void);
void XAssets_PatchLimits(void);
void Material_DirtyTechniqueSetOverrides();
void BG_FillInAllWeaponItems();
void DB_FreeUnusedResources();
void DB_LoadXAssets_Hook(XZoneInfo*, unsigned int assetscount);
void DB_BuildOverallocatedXAssetList(char* configstring, int len);
void DB_SyncXAssets();
void DB_PostLoadXZone();
void DB_UpdateDebugZone();
void DB_AddUserMapDir(const char *dir);
void DB_ReferencedFastFiles(char* g_zoneSumList, char* g_zoneNameList, int maxsize);
union XAssetHeader __cdecl DB_FindXAssetHeader(enum XAssetType type, const char *name);
void __cdecl Load_XStringPtr(bool atStreamstart);





#ifdef __cplusplus
}
#endif







/*
------------------------------------------------------------------------
Just structures here I am too lazy to create headerfiles for now
------------------------------------------------------------------------
*/

typedef struct _AILSOUNDINFO
{
  signed int format;
  const void *data_ptr;
  unsigned int data_len;
  unsigned int rate;
  signed int bits;
  signed int channels;
  unsigned int samples;
  unsigned int block_size;
  const void *initial_ptr;
}AILSOUNDINFO;

typedef struct
{
  AILSOUNDINFO ailInfo;
  byte *data;
}MssSound;


#endif

