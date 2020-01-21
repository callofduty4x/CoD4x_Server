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
#include "xassets/weapondef.h"
#include "xassets/material.h"
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
  struct LoadedSound_s* loadedsound;
  struct clipMap_s *clipMap;
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

struct XAsset
{
  enum XAssetType type;
  union XAssetHeader header;
};

extern char*** varXStringPtr;
extern struct XModel** varXModelPtr;
extern struct Material **varMaterialHandle;
extern uint16_t* varScriptString;
extern struct FxEffectDef** varFxEffectDefHandle;

#ifdef __cplusplus
extern "C"
{
#endif

void R_Init();
void __cdecl DB_SetInitializing(bool);
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
int __cdecl DB_GetAllXAssetOfType(enum XAssetType type, union XAssetHeader *assets, int maxCount);
void __cdecl DB_ConvertOffsetToPointer(void *data);
void __cdecl Load_Stream(bool atStreamStart, const void *ptr, int size);
byte *__cdecl DB_AllocStreamPos(int alignment);
void __cdecl DB_LoadXFileData(byte *pos, int count);
void __cdecl DB_LoadDelayedImages();
void Load_XAssetListCustom();
void __cdecl Load_XAsset(bool atStreamStart);
void __cdecl Load_XStringCustom(const char **str);
void __cdecl Load_ScriptStringList(bool atStreamStart);
void __cdecl DB_IncStreamPos(int size);
void __cdecl DB_PushStreamPos(unsigned int index);
void __cdecl DB_PopStreamPos();
void __cdecl Load_MaterialHandle(bool atStreamStart);
void __cdecl Load_FxEffectDefHandle(bool atStreamStart);
void __cdecl Load_ScriptStringCustom(uint16_t *var);
void __cdecl Load_XModelPtr(bool atStreamStart);
void __cdecl Load_XString(bool atStreamStart);
void __cdecl Load_XAssetHeader(bool atStreamStart);
const char* DB_GetXAssetName(struct XAsset*);
void __cdecl Load_ScriptStringArray(bool atStreamStart, int count);
union XAssetHeader __cdecl DB_AddXAsset(enum XAssetType type, union XAssetHeader header);
void __cdecl DB_EnumXAssets_FastFile(enum XAssetType type, void (__cdecl *func)(void* header, void *), void *inData, bool includeOverride);
void __cdecl DB_EnumXAssets(enum XAssetType type, void (__cdecl *func)(union XAssetHeader, void *), void *inData, bool includeOverride);
union XAssetHeader __cdecl DB_FindXAssetHeader(enum XAssetType type, const char *name, bool errorIfMissing, int waitTime);

/*
#if defined( __GNUC__ ) && !defined( __MINGW32__ )
//For GCC
void* __cdecl DB_FindXAssetHeaderReal(enum XAssetType type, const char *name);
static inline __attribute__((always_inline)) union XAssetHeader DB_FindXAssetHeader(enum XAssetType type, const char *name)
{
    union XAssetHeader r;

    r.data = DB_FindXAssetHeaderReal(type, name);
    return r;
}

#else

//For MSVC & MinGW
union XAssetHeader __cdecl DB_FindXAssetHeaderReal(enum XAssetType type, const char *name);
#define DB_FindXAssetHeader DB_FindXAssetHeaderReal

#endif

*/

void __cdecl Load_XStringPtr(bool atStreamstart);





#ifdef __cplusplus
}
#endif



struct ScriptStringList
{
  int count;
  const char **strings;
};


struct XAssetList
{
  struct ScriptStringList stringList;
  int assetCount;
  struct XAsset *assets;
};


extern struct XAssetList* varXAssetList;
extern struct XAsset* varXAsset;
extern union XAssetHeader *varXAssetHeader;
extern int g_poolSize[ASSET_TYPE_COUNT];
extern const char* g_assetNames[ASSET_TYPE_COUNT];

/*
------------------------------------------------------------------------
Just structures here I am too lazy to create headerfiles for now
------------------------------------------------------------------------
*/

typedef struct
{
  AILSOUNDINFO ailInfo;
  byte *data;
}MssSound;


#endif


