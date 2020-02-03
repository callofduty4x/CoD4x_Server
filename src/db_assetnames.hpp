#pragma once
#include "xassets.hpp"

extern void (*DB_XAssetSetNameHandler[ASSET_TYPE_COUNT])(XAssetHeader*, const char*);
extern const char* (*DB_XAssetGetNameHandler[ASSET_TYPE_COUNT])(const XAssetHeader*);

extern "C"
{
    extern const char* g_assetNames[ASSET_TYPE_COUNT];
    extern int(*DB_GetXAssetSizeHandler[ASSET_TYPE_COUNT])();

    int __cdecl DB_SizeofXAsset_XModelPieces();
    int __cdecl DB_SizeofXAsset_PhysPreset();
    int __cdecl DB_SizeofXAsset_XAnimParts();
    int __cdecl DB_SizeofXAsset_XModel();
    int __cdecl DB_SizeofXAsset_Material();
    int __cdecl DB_SizeofXAsset_MaterialTechniqueSet();
    int __cdecl DB_SizeofXAsset_GfxImage();
    int __cdecl DB_SizeofXAsset_snd_alias_list_t();
    int __cdecl DB_SizeofXAsset_SndCurve();
    int __cdecl DB_SizeofXAsset_LoadedSound();
    int __cdecl DB_SizeofXAsset_clipMap_t();
    int __cdecl DB_SizeofXAsset_clipMap_t();
    int __cdecl DB_SizeofXAsset_ComWorld();
    int __cdecl DB_SizeofXAsset_GameWorldSp();
    int __cdecl DB_SizeofXAsset_GameWorldMp();
    int __cdecl DB_SizeofXAsset_MapEnts();
    int __cdecl DB_SizeofXAsset_GfxWorld();
    int __cdecl DB_SizeofXAsset_GfxLightDef();
    int __cdecl DB_SizeofXAsset_Font_s();
    int __cdecl DB_SizeofXAsset_MenuList();
    int __cdecl DB_SizeofXAsset_menuDef_t();
    int __cdecl DB_SizeofXAsset_LocalizeEntry();
    int __cdecl DB_SizeofXAsset_WeaponDef();
    int __cdecl DB_SizeofXAsset_FxEffectDef();
    int __cdecl DB_SizeofXAsset_FxImpactTable();
    int __cdecl DB_SizeofXAsset_RawFile();
    int __cdecl DB_SizeofXAsset_StringTable();

    void __cdecl DB_XModelPiecesSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_PhysPresetSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_XAnimPartsSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_XModelSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_MaterialSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_MaterialTechniqueSetSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_ImageSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_SoundSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_SndCurveSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_LoadedSoundSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_ComWorldSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_GameWorldSpSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_GameWorldMpSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_MapEntsSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_GfxWorldSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_LightDefSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_FontSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_MenuListSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_MenuSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_LocalizeEntrySetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_WeaponDefSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_EffectDefSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_FxImpactTableSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_RawFileSetName(XAssetHeader* Header_, const char* Name_);
    void __cdecl DB_StringTableSetName(XAssetHeader* Header_, const char* Name_);

    const char* __cdecl DB_XModelPiecesGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_PhysPresetGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_XAnimPartsGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_XModelGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_MaterialGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_MaterialTechniqueSetGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_ImageGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_SoundGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_SndCurveGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_LoadedSoundGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_ComWorldGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_GameWorldSpGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_GameWorldMpGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_MapEntsGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_GfxWorldGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_LightDefGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_FontGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_MenuListGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_MenuGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_LocalizeEntryGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_WeaponDefGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_EffectDefGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_FxImpactTableGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_RawFileGetName(const XAssetHeader* Header_);
    const char* __cdecl DB_StringTableGetName(const XAssetHeader* Header_);
}
