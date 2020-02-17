#pragma once
#include "xassets.hpp"

extern void (*DB_XAssetSetNameHandler[ASSET_TYPE_COUNT])(XAssetHeader*, const char*);
extern const char* (*DB_XAssetGetNameHandler[ASSET_TYPE_COUNT])(const XAssetHeader*);

extern "C"
{
    extern const char* g_assetNames[ASSET_TYPE_COUNT];
    extern int(*DB_GetXAssetSizeHandler[ASSET_TYPE_COUNT])();

    int CDECL DB_SizeofXAsset_XModelPieces();
    int CDECL DB_SizeofXAsset_PhysPreset();
    int CDECL DB_SizeofXAsset_XAnimParts();
    int CDECL DB_SizeofXAsset_XModel();
    int CDECL DB_SizeofXAsset_Material();
    int CDECL DB_SizeofXAsset_MaterialTechniqueSet();
    int CDECL DB_SizeofXAsset_GfxImage();
    int CDECL DB_SizeofXAsset_snd_alias_list_t();
    int CDECL DB_SizeofXAsset_SndCurve();
    int CDECL DB_SizeofXAsset_LoadedSound();
    int CDECL DB_SizeofXAsset_clipMap_t();
    int CDECL DB_SizeofXAsset_clipMap_t();
    int CDECL DB_SizeofXAsset_ComWorld();
    int CDECL DB_SizeofXAsset_GameWorldSp();
    int CDECL DB_SizeofXAsset_GameWorldMp();
    int CDECL DB_SizeofXAsset_MapEnts();
    int CDECL DB_SizeofXAsset_GfxWorld();
    int CDECL DB_SizeofXAsset_GfxLightDef();
    int CDECL DB_SizeofXAsset_Font_s();
    int CDECL DB_SizeofXAsset_MenuList();
    int CDECL DB_SizeofXAsset_menuDef_t();
    int CDECL DB_SizeofXAsset_LocalizeEntry();
    int CDECL DB_SizeofXAsset_WeaponDef();
    int CDECL DB_SizeofXAsset_FxEffectDef();
    int CDECL DB_SizeofXAsset_FxImpactTable();
    int CDECL DB_SizeofXAsset_RawFile();
    int CDECL DB_SizeofXAsset_StringTable();

    void CDECL DB_XModelPiecesSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_PhysPresetSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_XAnimPartsSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_XModelSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_MaterialSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_MaterialTechniqueSetSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_ImageSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_SoundSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_SndCurveSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_LoadedSoundSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_ComWorldSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_GameWorldSpSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_GameWorldMpSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_MapEntsSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_GfxWorldSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_LightDefSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_FontSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_MenuListSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_MenuSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_LocalizeEntrySetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_WeaponDefSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_EffectDefSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_FxImpactTableSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_RawFileSetName(XAssetHeader* Header_, const char* Name_);
    void CDECL DB_StringTableSetName(XAssetHeader* Header_, const char* Name_);

    const char* CDECL DB_XModelPiecesGetName(const XAssetHeader* Header_);
    const char* CDECL DB_PhysPresetGetName(const XAssetHeader* Header_);
    const char* CDECL DB_XAnimPartsGetName(const XAssetHeader* Header_);
    const char* CDECL DB_XModelGetName(const XAssetHeader* Header_);
    const char* CDECL DB_MaterialGetName(const XAssetHeader* Header_);
    const char* CDECL DB_MaterialTechniqueSetGetName(const XAssetHeader* Header_);
    const char* CDECL DB_ImageGetName(const XAssetHeader* Header_);
    const char* CDECL DB_SoundGetName(const XAssetHeader* Header_);
    const char* CDECL DB_SndCurveGetName(const XAssetHeader* Header_);
    const char* CDECL DB_LoadedSoundGetName(const XAssetHeader* Header_);
    const char* CDECL DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* CDECL DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* CDECL DB_ComWorldGetName(const XAssetHeader* Header_);
    const char* CDECL DB_GameWorldSpGetName(const XAssetHeader* Header_);
    const char* CDECL DB_GameWorldMpGetName(const XAssetHeader* Header_);
    const char* CDECL DB_MapEntsGetName(const XAssetHeader* Header_);
    const char* CDECL DB_GfxWorldGetName(const XAssetHeader* Header_);
    const char* CDECL DB_LightDefGetName(const XAssetHeader* Header_);
    const char* CDECL DB_FontGetName(const XAssetHeader* Header_);
    const char* CDECL DB_MenuListGetName(const XAssetHeader* Header_);
    const char* CDECL DB_MenuGetName(const XAssetHeader* Header_);
    const char* CDECL DB_LocalizeEntryGetName(const XAssetHeader* Header_);
    const char* CDECL DB_WeaponDefGetName(const XAssetHeader* Header_);
    const char* CDECL DB_EffectDefGetName(const XAssetHeader* Header_);
    const char* CDECL DB_FxImpactTableGetName(const XAssetHeader* Header_);
    const char* CDECL DB_RawFileGetName(const XAssetHeader* Header_);
    const char* CDECL DB_StringTableGetName(const XAssetHeader* Header_);
}
