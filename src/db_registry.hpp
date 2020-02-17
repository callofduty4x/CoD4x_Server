#pragma once
#include "xassets.hpp"


struct XAssetEntry
{
    XAsset asset;
    byte zoneIndex;
    bool inuse;
    uint16_t nextHash;
    uint16_t nextOverride;
    uint16_t usageFrame;
};


union XAssetEntryPoolEntry
{
    XAssetEntry entry;
    XAssetEntryPoolEntry* next;
};


enum DBCloneMethod
{
    DB_CLONE_NORMAL = 0x0,
    DB_CLONE_FROM_DEFAULT = 0x1,
    DB_CLONE_SWAP = 0x2,
};

extern bool g_archiveBuf;
extern void(CCDECL* DB_InitPoolHeaderHandler[ASSET_TYPE_COUNT])(void*, int);

extern "C"
{
    extern int g_defaultAssetCount;
    extern XAssetEntryPoolEntry* g_freeAssetEntryHead;
    extern unsigned int g_zoneAllocType;
    extern int g_sync;
    extern bool g_zoneInited;
    extern XAssetEntry* g_copyInfo[2048];
    extern unsigned int g_copyInfoCount;
    extern void(CCDECL* DB_DynamicCloneXAssetHandler[ASSET_TYPE_COUNT])(XAssetHeader, XAssetHeader, DBCloneMethod);
    extern const char* g_defaultAssetName[ASSET_TYPE_COUNT];
    extern void(CCDECL* DB_RemoveXAssetHandler[ASSET_TYPE_COUNT])(XAssetHeader Header_);
    extern void(CCDECL* DB_FreeXAssetHeaderHandler[ASSET_TYPE_COUNT])(void*, XAssetHeader);
    extern void* (CCDECL* DB_AllocXAssetHeaderHandler[ASSET_TYPE_COUNT])(void*);

    void CCDECL DB_DynamicCloneMenu(XAssetHeader From_, XAssetHeader To_, DBCloneMethod CloneType_);
    void CCDECL DB_DynamicCloneWeaponDef(XAssetHeader From_, XAssetHeader To_, DBCloneMethod CloneType_);

    void CCDECL DB_RemoveTechniqueSet(XAssetHeader Header_);
    void CCDECL DB_RemoveImage(XAssetHeader Header_);
    void CCDECL DB_RemoveLoadedSound(XAssetHeader Header_);
    void CCDECL DB_RemoveClipMap(XAssetHeader Header_);
    void CCDECL DB_RemoveClipMap(XAssetHeader Header_);
    void CCDECL DB_RemoveComWorld(XAssetHeader Header_);
    void CCDECL DB_RemoveGfxWorld(XAssetHeader Header_);

    void CCDECL DB_FreeXAssetHeader_XModelPieces(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_PhysPreset(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_XAnimParts(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_XModel(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeMaterial(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_MaterialTechniqueSet(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_GfxImage(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_snd_alias_list_t(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_SndCurve(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_LoadedSound(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetSingleton(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_MapEnts(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_GfxLightDef(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_Font_s(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_MenuList(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_menuDef_t(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_LocalizeEntry(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_WeaponDef(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_FxEffectDef(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_FxImpactTable(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_RawFile(void* Pool_, XAssetHeader Header_);
    void CCDECL DB_FreeXAssetHeader_StringTable(void* Pool_, XAssetHeader Header_);

    void CCDECL DB_InitPool_XModelPieces(void* Pool_, int Size_);
    void CCDECL DB_InitPool_PhysPreset(void* Pool_, int Size_);
    void CCDECL DB_InitPool_XAnimParts(void* Pool_, int Size_);
    void CCDECL DB_InitPool_XModel(void* Pool_, int Size_);
    void CCDECL DB_InitPool_Material(void* Pool_, int Size_);
    void CCDECL DB_InitPool_MaterialTechniqueSet(void* Pool_, int Size_);
    void CCDECL DB_InitPool_GfxImage(void* Pool_, int Size_);
    void CCDECL DB_InitPool_snd_alias_list_t(void* Pool_, int Size_);
    void CCDECL DB_InitPool_SndCurve(void* Pool_, int Size_);
    void CCDECL DB_InitPool_LoadedSound(void* Pool_, int Size_);
    void CCDECL DB_InitSingleton(void* Pool_, int Size_);
    void CCDECL DB_InitPool_MapEnts(void* Pool_, int Size_);
    void CCDECL DB_InitPool_GfxLightDef(void* Pool_, int Size_);
    void CCDECL DB_InitPool_Font_s(void* Pool_, int Size_);
    void CCDECL DB_InitPool_MenuList(void* Pool_, int Size_);
    void CCDECL DB_InitPool_menuDef_t(void* Pool_, int Size_);
    void CCDECL DB_InitPool_LocalizeEntry(void* Pool_, int Size_);
    void CCDECL DB_InitPool_WeaponDef(void* Pool_, int Size_);
    void CCDECL DB_InitPool_FxEffectDef(void* Pool_, int Size_);
    void CCDECL DB_InitPool_FxImpactTable(void* Pool_, int Size_);
    void CCDECL DB_InitPool_RawFile(void* Pool_, int Size_);
    void CCDECL DB_InitPool_StringTable(void* Pool_, int Size_);

    void* CCDECL DB_AllocXAsset_XModelPieces(void* Pool_);
    void* CCDECL DB_AllocXAsset_PhysPreset(void* Pool_);
    void* CCDECL DB_AllocXAsset_XAnimParts(void* Pool_);
    void* CCDECL DB_AllocXAsset_XModel(void* Pool_);
    void* CCDECL DB_AllocMaterial(void* Pool_);
    void* CCDECL DB_AllocXAsset_MaterialTechniqueSet(void* Pool_);
    void* CCDECL DB_AllocXAsset_GfxImage(void* Pool_);
    void* CCDECL DB_AllocXAsset_snd_alias_list_t(void* Pool_);
    void* CCDECL DB_AllocXAsset_SndCurve(void* Pool_);
    void* CCDECL DB_AllocXAsset_LoadedSound(void* Pool_);
    void* CCDECL DB_AllocXAssetSingleton(void* Pool_);
    void* CCDECL DB_AllocXAsset_MapEnts(void* Pool_);
    void* CCDECL DB_AllocXAsset_GfxLightDef(void* Pool_);
    void* CCDECL DB_AllocXAsset_Font_s(void* Pool_);
    void* CCDECL DB_AllocXAsset_MenuList(void* Pool_);
    void* CCDECL DB_AllocXAsset_menuDef_t(void* Pool_);
    void* CCDECL DB_AllocXAsset_LocalizeEntry(void* Pool_);
    void* CCDECL DB_AllocXAsset_WeaponDef(void* Pool_);
    void* CCDECL DB_AllocXAsset_FxEffectDef(void* Pool_);
    void* CCDECL DB_AllocXAsset_FxImpactTable(void* Pool_);
    void* CCDECL DB_AllocXAsset_RawFile(void* Pool_);
    void* CCDECL DB_AllocXAsset_StringTable(void* Pool_);
}
