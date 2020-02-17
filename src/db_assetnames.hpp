#pragma once
#include "xassets.hpp"

extern void (*DB_XAssetSetNameHandler[ASSET_TYPE_COUNT])(XAssetHeader*, const char*);
extern const char* (*DB_XAssetGetNameHandler[ASSET_TYPE_COUNT])(const XAssetHeader*);

extern "C"
{
    extern const char* g_assetNames[ASSET_TYPE_COUNT];
    extern int(*DB_GetXAssetSizeHandler[ASSET_TYPE_COUNT])();

    int CCDECL DB_SizeofXAsset_XModelPieces();
    int CCDECL DB_SizeofXAsset_PhysPreset();
    int CCDECL DB_SizeofXAsset_XAnimParts();
    int CCDECL DB_SizeofXAsset_XModel();
    int CCDECL DB_SizeofXAsset_Material();
    int CCDECL DB_SizeofXAsset_MaterialTechniqueSet();
    int CCDECL DB_SizeofXAsset_GfxImage();
    int CCDECL DB_SizeofXAsset_snd_alias_list_t();
    int CCDECL DB_SizeofXAsset_SndCurve();
    int CCDECL DB_SizeofXAsset_LoadedSound();
    int CCDECL DB_SizeofXAsset_clipMap_t();
    int CCDECL DB_SizeofXAsset_clipMap_t();
    int CCDECL DB_SizeofXAsset_ComWorld();
    int CCDECL DB_SizeofXAsset_GameWorldSp();
    int CCDECL DB_SizeofXAsset_GameWorldMp();
    int CCDECL DB_SizeofXAsset_MapEnts();
    int CCDECL DB_SizeofXAsset_GfxWorld();
    int CCDECL DB_SizeofXAsset_GfxLightDef();
    int CCDECL DB_SizeofXAsset_Font_s();
    int CCDECL DB_SizeofXAsset_MenuList();
    int CCDECL DB_SizeofXAsset_menuDef_t();
    int CCDECL DB_SizeofXAsset_LocalizeEntry();
    int CCDECL DB_SizeofXAsset_WeaponDef();
    int CCDECL DB_SizeofXAsset_FxEffectDef();
    int CCDECL DB_SizeofXAsset_FxImpactTable();
    int CCDECL DB_SizeofXAsset_RawFile();
    int CCDECL DB_SizeofXAsset_StringTable();

    void CCDECL DB_XModelPiecesSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_PhysPresetSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_XAnimPartsSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_XModelSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_MaterialSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_MaterialTechniqueSetSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_ImageSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_SoundSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_SndCurveSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_LoadedSoundSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_ClipMapSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_ComWorldSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_GameWorldSpSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_GameWorldMpSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_MapEntsSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_GfxWorldSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_LightDefSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_FontSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_MenuListSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_MenuSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_LocalizeEntrySetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_WeaponDefSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_EffectDefSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_FxImpactTableSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_RawFileSetName(XAssetHeader* Header_, const char* Name_);
    void CCDECL DB_StringTableSetName(XAssetHeader* Header_, const char* Name_);

    const char* CCDECL DB_XModelPiecesGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_PhysPresetGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_XAnimPartsGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_XModelGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_MaterialGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_MaterialTechniqueSetGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_ImageGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_SoundGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_SndCurveGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_LoadedSoundGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_ClipMapGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_ComWorldGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_GameWorldSpGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_GameWorldMpGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_MapEntsGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_GfxWorldGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_LightDefGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_FontGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_MenuListGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_MenuGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_LocalizeEntryGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_WeaponDefGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_EffectDefGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_FxImpactTableGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_RawFileGetName(const XAssetHeader* Header_);
    const char* CCDECL DB_StringTableGetName(const XAssetHeader* Header_);
}
