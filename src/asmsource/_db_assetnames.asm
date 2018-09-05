;Imports of db_assetnames:
	extern DB_MaterialSetName

;Exports of db_assetnames:
	global DB_GetXAssetSizeHandler
	global DB_SizeofXAsset_XModelPieces
	global DB_SizeofXAsset_PhysPreset
	global DB_SizeofXAsset_XAnimParts
	global DB_SizeofXAsset_XModel
	global DB_SizeofXAsset_Material
	global DB_SizeofXAsset_MaterialTechniqueSet
	global DB_SizeofXAsset_GfxImage
	global DB_SizeofXAsset_snd_alias_list_t
	global DB_SizeofXAsset_SndCurve
	global DB_SizeofXAsset_LoadedSound
	global DB_SizeofXAsset_clipMap_t
	global DB_SizeofXAsset_ComWorld
	global DB_SizeofXAsset_GameWorldSp
	global DB_SizeofXAsset_GameWorldMp
	global DB_SizeofXAsset_MapEnts
	global DB_SizeofXAsset_GfxWorld
	global DB_SizeofXAsset_GfxLightDef
	global DB_SizeofXAsset_Font_s
	global DB_SizeofXAsset_MenuList
	global DB_SizeofXAsset_menuDef_t
	global DB_SizeofXAsset_LocalizeEntry
	global DB_SizeofXAsset_WeaponDef
	global DB_SizeofXAsset_FxEffectDef
	global DB_SizeofXAsset_FxImpactTable
	global DB_SizeofXAsset_RawFile
	global DB_SizeofXAsset_StringTable
	global DB_XAssetSetNameHandler
	global DB_XModelPiecesSetName
	global DB_PhysPresetSetName
	global DB_XAnimPartsSetName
	global DB_XModelSetName
	global DB_MaterialTechniqueSetSetName
	global DB_ImageSetName
	global DB_SoundSetName
	global DB_SndCurveSetName
	global DB_LoadedSoundSetName
	global DB_ClipMapSetName
	global DB_ComWorldSetName
	global DB_GameWorldSpSetName
	global DB_GameWorldMpSetName
	global DB_MapEntsSetName
	global DB_GfxWorldSetName
	global DB_LightDefSetName
	global DB_FontSetName
	global DB_MenuListSetName
	global DB_MenuSetName
	global DB_LocalizeEntrySetName
	global DB_WeaponDefSetName
	global DB_EffectDefSetName
	global DB_FxImpactTableSetName
	global DB_RawFileSetName
	global DB_StringTableSetName
	global DB_XAssetGetNameHandler
	global DB_XModelPiecesGetName
	global DB_PhysPresetGetName
	global DB_XAnimPartsGetName
	global DB_XModelGetName
	global DB_MaterialGetName
	global DB_MaterialTechniqueSetGetName
	global DB_ImageGetName
	global DB_SoundGetName
	global DB_SndCurveGetName
	global DB_LoadedSoundGetName
	global DB_ClipMapGetName
	global DB_ComWorldGetName
	global DB_GameWorldSpGetName
	global DB_GameWorldMpGetName
	global DB_MapEntsGetName
	global DB_GfxWorldGetName
	global DB_LightDefGetName
	global DB_FontGetName
	global DB_MenuListGetName
	global DB_MenuGetName
	global DB_LocalizeEntryGetName
	global DB_WeaponDefGetName
	global DB_EffectDefGetName
	global DB_FxImpactTableGetName
	global DB_RawFileGetName
	global DB_StringTableGetName
	global DB_GetXAssetTypeSize
	global g_assetNames


SECTION .text


;int DB_SizeofXAsset<XModelPieces>()
DB_SizeofXAsset_XModelPieces:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<PhysPreset>()
DB_SizeofXAsset_PhysPreset:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<XAnimParts>()
DB_SizeofXAsset_XAnimParts:
	push ebp
	mov ebp, esp
	mov eax, 0x58
	pop ebp
	ret


;int DB_SizeofXAsset<XModel>()
DB_SizeofXAsset_XModel:
	push ebp
	mov ebp, esp
	mov eax, 0xdc
	pop ebp
	ret


;int DB_SizeofXAsset<Material>()
DB_SizeofXAsset_Material:
	push ebp
	mov ebp, esp
	mov eax, 0x50
	pop ebp
	ret


;int DB_SizeofXAsset<MaterialTechniqueSet>()
DB_SizeofXAsset_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	mov eax, 0x94
	pop ebp
	ret


;int DB_SizeofXAsset<GfxImage>()
DB_SizeofXAsset_GfxImage:
	push ebp
	mov ebp, esp
	mov eax, 0x24
	pop ebp
	ret


;int DB_SizeofXAsset<snd_alias_list_t>()
DB_SizeofXAsset_snd_alias_list_t:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<SndCurve>()
DB_SizeofXAsset_SndCurve:
	push ebp
	mov ebp, esp
	mov eax, 0x48
	pop ebp
	ret


;int DB_SizeofXAsset<LoadedSound>()
DB_SizeofXAsset_LoadedSound:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<clipMap_t>()
DB_SizeofXAsset_clipMap_t:
	push ebp
	mov ebp, esp
	mov eax, 0x11c
	pop ebp
	ret


;int DB_SizeofXAsset<ComWorld>()
DB_SizeofXAsset_ComWorld:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;int DB_SizeofXAsset<GameWorldSp>()
DB_SizeofXAsset_GameWorldSp:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<GameWorldMp>()
DB_SizeofXAsset_GameWorldMp:
	push ebp
	mov ebp, esp
	mov eax, 0x4
	pop ebp
	ret


;int DB_SizeofXAsset<MapEnts>()
DB_SizeofXAsset_MapEnts:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<GfxWorld>()
DB_SizeofXAsset_GfxWorld:
	push ebp
	mov ebp, esp
	mov eax, 0x2dc
	pop ebp
	ret


;int DB_SizeofXAsset<GfxLightDef>()
DB_SizeofXAsset_GfxLightDef:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;int DB_SizeofXAsset<Font_s>()
DB_SizeofXAsset_Font_s:
	push ebp
	mov ebp, esp
	mov eax, 0x18
	pop ebp
	ret


;int DB_SizeofXAsset<MenuList>()
DB_SizeofXAsset_MenuList:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<menuDef_t>()
DB_SizeofXAsset_menuDef_t:
	push ebp
	mov ebp, esp
	mov eax, 0x11c
	pop ebp
	ret


;int DB_SizeofXAsset<LocalizeEntry>()
DB_SizeofXAsset_LocalizeEntry:
	push ebp
	mov ebp, esp
	mov eax, 0x8
	pop ebp
	ret


;int DB_SizeofXAsset<WeaponDef>()
DB_SizeofXAsset_WeaponDef:
	push ebp
	mov ebp, esp
	mov eax, 0x878
	pop ebp
	ret


;int DB_SizeofXAsset<FxEffectDef>()
DB_SizeofXAsset_FxEffectDef:
	push ebp
	mov ebp, esp
	mov eax, 0x20
	pop ebp
	ret


;int DB_SizeofXAsset<FxImpactTable>()
DB_SizeofXAsset_FxImpactTable:
	push ebp
	mov ebp, esp
	mov eax, 0x8
	pop ebp
	ret


;int DB_SizeofXAsset<RawFile>()
DB_SizeofXAsset_RawFile:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<StringTable>()
DB_SizeofXAsset_StringTable:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;DB_XModelPiecesSetName(XAssetHeader*, char const*)
DB_XModelPiecesSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_PhysPresetSetName(XAssetHeader*, char const*)
DB_PhysPresetSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_XAnimPartsSetName(XAssetHeader*, char const*)
DB_XAnimPartsSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_XModelSetName(XAssetHeader*, char const*)
DB_XModelSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_MaterialTechniqueSetSetName(XAssetHeader*, char const*)
DB_MaterialTechniqueSetSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_ImageSetName(XAssetHeader*, char const*)
DB_ImageSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx+0x20], eax
	pop ebp
	ret


;DB_SoundSetName(XAssetHeader*, char const*)
DB_SoundSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_SndCurveSetName(XAssetHeader*, char const*)
DB_SndCurveSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_LoadedSoundSetName(XAssetHeader*, char const*)
DB_LoadedSoundSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_ClipMapSetName(XAssetHeader*, char const*)
DB_ClipMapSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_ComWorldSetName(XAssetHeader*, char const*)
DB_ComWorldSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_GameWorldSpSetName(XAssetHeader*, char const*)
DB_GameWorldSpSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_GameWorldMpSetName(XAssetHeader*, char const*)
DB_GameWorldMpSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_MapEntsSetName(XAssetHeader*, char const*)
DB_MapEntsSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_GfxWorldSetName(XAssetHeader*, char const*)
DB_GfxWorldSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_LightDefSetName(XAssetHeader*, char const*)
DB_LightDefSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_FontSetName(XAssetHeader*, char const*)
DB_FontSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_MenuListSetName(XAssetHeader*, char const*)
DB_MenuListSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_MenuSetName(XAssetHeader*, char const*)
DB_MenuSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_LocalizeEntrySetName(XAssetHeader*, char const*)
DB_LocalizeEntrySetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	pop ebp
	ret


;DB_WeaponDefSetName(XAssetHeader*, char const*)
DB_WeaponDefSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_EffectDefSetName(XAssetHeader*, char const*)
DB_EffectDefSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_FxImpactTableSetName(XAssetHeader*, char const*)
DB_FxImpactTableSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_RawFileSetName(XAssetHeader*, char const*)
DB_RawFileSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_StringTableSetName(XAssetHeader*, char const*)
DB_StringTableSetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_XModelPiecesGetName(XAssetHeader const*)
DB_XModelPiecesGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_PhysPresetGetName(XAssetHeader const*)
DB_PhysPresetGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_XAnimPartsGetName(XAssetHeader const*)
DB_XAnimPartsGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_XModelGetName(XAssetHeader const*)
DB_XModelGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MaterialGetName(XAssetHeader const*)
DB_MaterialGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MaterialTechniqueSetGetName(XAssetHeader const*)
DB_MaterialTechniqueSetGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ImageGetName(XAssetHeader const*)
DB_ImageGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax+0x20]
	pop ebp
	ret
	nop


;DB_SoundGetName(XAssetHeader const*)
DB_SoundGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_SndCurveGetName(XAssetHeader const*)
DB_SndCurveGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LoadedSoundGetName(XAssetHeader const*)
DB_LoadedSoundGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ClipMapGetName(XAssetHeader const*)
DB_ClipMapGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ComWorldGetName(XAssetHeader const*)
DB_ComWorldGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GameWorldSpGetName(XAssetHeader const*)
DB_GameWorldSpGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GameWorldMpGetName(XAssetHeader const*)
DB_GameWorldMpGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MapEntsGetName(XAssetHeader const*)
DB_MapEntsGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GfxWorldGetName(XAssetHeader const*)
DB_GfxWorldGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LightDefGetName(XAssetHeader const*)
DB_LightDefGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_FontGetName(XAssetHeader const*)
DB_FontGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MenuListGetName(XAssetHeader const*)
DB_MenuListGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MenuGetName(XAssetHeader const*)
DB_MenuGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LocalizeEntryGetName(XAssetHeader const*)
DB_LocalizeEntryGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;DB_WeaponDefGetName(XAssetHeader const*)
DB_WeaponDefGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_EffectDefGetName(XAssetHeader const*)
DB_EffectDefGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_FxImpactTableGetName(XAssetHeader const*)
DB_FxImpactTableGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_RawFileGetName(XAssetHeader const*)
DB_RawFileGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_StringTableGetName(XAssetHeader const*)
DB_StringTableGetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GetXAssetTypeSize(int)
DB_GetXAssetTypeSize:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax*4+DB_GetXAssetSizeHandler]
	pop ebp
	jmp ecx


;Zero initialized global or static variables of db_assetnames:
SECTION .bss


;Initialized global or static variables of db_assetnames:
SECTION .data
DB_GetXAssetSizeHandler: dd DB_SizeofXAsset_XModelPieces, DB_SizeofXAsset_PhysPreset, DB_SizeofXAsset_XAnimParts, DB_SizeofXAsset_XModel, DB_SizeofXAsset_Material, DB_SizeofXAsset_MaterialTechniqueSet, DB_SizeofXAsset_GfxImage, DB_SizeofXAsset_snd_alias_list_t, DB_SizeofXAsset_SndCurve, DB_SizeofXAsset_LoadedSound, DB_SizeofXAsset_clipMap_t, DB_SizeofXAsset_clipMap_t, DB_SizeofXAsset_ComWorld, DB_SizeofXAsset_GameWorldSp, DB_SizeofXAsset_GameWorldMp, DB_SizeofXAsset_MapEnts, DB_SizeofXAsset_GfxWorld, DB_SizeofXAsset_GfxLightDef, 0x0, DB_SizeofXAsset_Font_s, DB_SizeofXAsset_MenuList, DB_SizeofXAsset_menuDef_t, DB_SizeofXAsset_LocalizeEntry, DB_SizeofXAsset_WeaponDef, 0x0, DB_SizeofXAsset_FxEffectDef, DB_SizeofXAsset_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_SizeofXAsset_RawFile, DB_SizeofXAsset_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetSetNameHandler: dd DB_XModelPiecesSetName, DB_PhysPresetSetName, DB_XAnimPartsSetName, DB_XModelSetName, DB_MaterialSetName, DB_MaterialTechniqueSetSetName, DB_ImageSetName, DB_SoundSetName, DB_SndCurveSetName, DB_LoadedSoundSetName, DB_ClipMapSetName, DB_ClipMapSetName, DB_ComWorldSetName, DB_GameWorldSpSetName, DB_GameWorldMpSetName, DB_MapEntsSetName, DB_GfxWorldSetName, DB_LightDefSetName, 0x0, DB_FontSetName, DB_MenuListSetName, DB_MenuSetName, DB_LocalizeEntrySetName, DB_WeaponDefSetName, 0x0, DB_EffectDefSetName, DB_FxImpactTableSetName, 0x0, 0x0, 0x0, 0x0, DB_RawFileSetName, DB_StringTableSetName, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetGetNameHandler: dd DB_XModelPiecesGetName, DB_PhysPresetGetName, DB_XAnimPartsGetName, DB_XModelGetName, DB_MaterialGetName, DB_MaterialTechniqueSetGetName, DB_ImageGetName, DB_SoundGetName, DB_SndCurveGetName, DB_LoadedSoundGetName, DB_ClipMapGetName, DB_ClipMapGetName, DB_ComWorldGetName, DB_GameWorldSpGetName, DB_GameWorldMpGetName, DB_MapEntsGetName, DB_GfxWorldGetName, DB_LightDefGetName, 0x0, DB_FontGetName, DB_MenuListGetName, DB_MenuGetName, DB_LocalizeEntryGetName, DB_WeaponDefGetName, 0x0, DB_EffectDefGetName, DB_FxImpactTableGetName, 0x0, 0x0, 0x0, 0x0, DB_RawFileGetName, DB_StringTableGetName, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_assetNames: dd _cstring_xmodelpieces, _cstring_physpreset, _cstring_xanim, _cstring_xmodel, _cstring_material, _cstring_techset, _cstring_image, _cstring_sound, _cstring_sndcurve, _cstring_loaded_sound, _cstring_col_map_sp, _cstring_col_map_mp, _cstring_com_map, _cstring_game_map_sp, _cstring_game_map_mp, _cstring_map_ents, _cstring_gfx_map, _cstring_lightdef, _cstring_ui_map, _cstring_font, _cstring_menufile, _cstring_menu, _cstring_localize, _cstring_weapon, _cstring_snddriverglobals, _cstring_fx, _cstring_impactfx, _cstring_aitype, _cstring_mptype, _cstring_character, _cstring_xmodelalias, _cstring_rawfile, _cstring_stringtable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_assetnames:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_xmodelpieces:		db "xmodelpieces",0
_cstring_physpreset:		db "physpreset",0
_cstring_xanim:		db "xanim",0
_cstring_xmodel:		db "xmodel",0
_cstring_material:		db "material",0
_cstring_techset:		db "techset",0
_cstring_image:		db "image",0
_cstring_sound:		db "sound",0
_cstring_sndcurve:		db "sndcurve",0
_cstring_loaded_sound:		db "loaded_sound",0
_cstring_col_map_sp:		db "col_map_sp",0
_cstring_col_map_mp:		db "col_map_mp",0
_cstring_com_map:		db "com_map",0
_cstring_game_map_sp:		db "game_map_sp",0
_cstring_game_map_mp:		db "game_map_mp",0
_cstring_map_ents:		db "map_ents",0
_cstring_gfx_map:		db "gfx_map",0
_cstring_lightdef:		db "lightdef",0
_cstring_ui_map:		db "ui_map",0
_cstring_font:		db "font",0
_cstring_menufile:		db "menufile",0
_cstring_menu:		db "menu",0
_cstring_localize:		db "localize",0
_cstring_weapon:		db "weapon",0
_cstring_snddriverglobals:		db "snddriverglobals",0
_cstring_fx:		db "fx",0
_cstring_impactfx:		db "impactfx",0
_cstring_aitype:		db "aitype",0
_cstring_mptype:		db "mptype",0
_cstring_character:		db "character",0
_cstring_xmodelalias:		db "xmodelalias",0
_cstring_rawfile:		db "rawfile",0
_cstring_stringtable:		db "stringtable",0



;All constant floats and doubles:
SECTION .rdata

