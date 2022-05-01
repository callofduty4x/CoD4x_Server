;Imports of db_assetnames:

;Exports of db_assetnames:
	global DB_GetXAssetSizeHandler
	global _Z15DB_SizeofXAssetI12XModelPiecesEiv
	global _Z15DB_SizeofXAssetI10PhysPresetEiv
	global _Z15DB_SizeofXAssetI10XAnimPartsEiv
	global _Z15DB_SizeofXAssetI6XModelEiv
	global _Z15DB_SizeofXAssetI8MaterialEiv
	global _Z15DB_SizeofXAssetI20MaterialTechniqueSetEiv
	global _Z15DB_SizeofXAssetI8GfxImageEiv
	global _Z15DB_SizeofXAssetI16snd_alias_list_tEiv
	global _Z15DB_SizeofXAssetI8SndCurveEiv
	global _Z15DB_SizeofXAssetI11LoadedSoundEiv
	global _Z15DB_SizeofXAssetI9clipMap_tEiv
	global _Z15DB_SizeofXAssetI8ComWorldEiv
	global _Z15DB_SizeofXAssetI11GameWorldSpEiv
	global _Z15DB_SizeofXAssetI11GameWorldMpEiv
	global _Z15DB_SizeofXAssetI7MapEntsEiv
	global _Z15DB_SizeofXAssetI8GfxWorldEiv
	global _Z15DB_SizeofXAssetI11GfxLightDefEiv
	global _Z15DB_SizeofXAssetI6Font_sEiv
	global _Z15DB_SizeofXAssetI8MenuListEiv
	global _Z15DB_SizeofXAssetI9menuDef_tEiv
	global _Z15DB_SizeofXAssetI13LocalizeEntryEiv
	global _Z15DB_SizeofXAssetI9WeaponDefEiv
	global _Z15DB_SizeofXAssetI11FxEffectDefEiv
	global _Z15DB_SizeofXAssetI13FxImpactTableEiv
	global _Z15DB_SizeofXAssetI7RawFileEiv
	global _Z15DB_SizeofXAssetI11StringTableEiv
	global DB_XAssetSetNameHandler
	global _Z22DB_XModelPiecesSetNameP12XAssetHeaderPKc
	global _Z20DB_PhysPresetSetNameP12XAssetHeaderPKc
	global _Z20DB_XAnimPartsSetNameP12XAssetHeaderPKc
	global _Z16DB_XModelSetNameP12XAssetHeaderPKc
	global _Z18DB_MaterialSetNameP12XAssetHeaderPKc
	global _Z30DB_MaterialTechniqueSetSetNameP12XAssetHeaderPKc
	global _Z15DB_ImageSetNameP12XAssetHeaderPKc
	global _Z15DB_SoundSetNameP12XAssetHeaderPKc
	global _Z18DB_SndCurveSetNameP12XAssetHeaderPKc
	global _Z21DB_LoadedSoundSetNameP12XAssetHeaderPKc
	global _Z17DB_ClipMapSetNameP12XAssetHeaderPKc
	global _Z18DB_ComWorldSetNameP12XAssetHeaderPKc
	global _Z21DB_GameWorldSpSetNameP12XAssetHeaderPKc
	global _Z21DB_GameWorldMpSetNameP12XAssetHeaderPKc
	global _Z17DB_MapEntsSetNameP12XAssetHeaderPKc
	global _Z18DB_GfxWorldSetNameP12XAssetHeaderPKc
	global _Z18DB_LightDefSetNameP12XAssetHeaderPKc
	global _Z14DB_FontSetNameP12XAssetHeaderPKc
	global _Z18DB_MenuListSetNameP12XAssetHeaderPKc
	global _Z14DB_MenuSetNameP12XAssetHeaderPKc
	global _Z23DB_LocalizeEntrySetNameP12XAssetHeaderPKc
	global _Z19DB_WeaponDefSetNameP12XAssetHeaderPKc
	global _Z19DB_EffectDefSetNameP12XAssetHeaderPKc
	global _Z23DB_FxImpactTableSetNameP12XAssetHeaderPKc
	global _Z17DB_RawFileSetNameP12XAssetHeaderPKc
	global _Z21DB_StringTableSetNameP12XAssetHeaderPKc
	global DB_XAssetGetNameHandler
	global _Z22DB_XModelPiecesGetNamePK12XAssetHeader
	global _Z20DB_PhysPresetGetNamePK12XAssetHeader
	global _Z20DB_XAnimPartsGetNamePK12XAssetHeader
	global _Z16DB_XModelGetNamePK12XAssetHeader
	global _Z18DB_MaterialGetNamePK12XAssetHeader
	global _Z30DB_MaterialTechniqueSetGetNamePK12XAssetHeader
	global _Z15DB_ImageGetNamePK12XAssetHeader
	global _Z15DB_SoundGetNamePK12XAssetHeader
	global _Z18DB_SndCurveGetNamePK12XAssetHeader
	global _Z21DB_LoadedSoundGetNamePK12XAssetHeader
	global _Z17DB_ClipMapGetNamePK12XAssetHeader
	global _Z18DB_ComWorldGetNamePK12XAssetHeader
	global _Z21DB_GameWorldSpGetNamePK12XAssetHeader
	global _Z21DB_GameWorldMpGetNamePK12XAssetHeader
	global _Z17DB_MapEntsGetNamePK12XAssetHeader
	global _Z18DB_GfxWorldGetNamePK12XAssetHeader
	global _Z18DB_LightDefGetNamePK12XAssetHeader
	global _Z14DB_FontGetNamePK12XAssetHeader
	global _Z18DB_MenuListGetNamePK12XAssetHeader
	global _Z14DB_MenuGetNamePK12XAssetHeader
	global _Z23DB_LocalizeEntryGetNamePK12XAssetHeader
	global _Z19DB_WeaponDefGetNamePK12XAssetHeader
	global _Z19DB_EffectDefGetNamePK12XAssetHeader
	global _Z23DB_FxImpactTableGetNamePK12XAssetHeader
	global _Z17DB_RawFileGetNamePK12XAssetHeader
	global _Z21DB_StringTableGetNamePK12XAssetHeader
	global _Z16DB_GetXAssetNamePK6XAsset
	global _Z16DB_SetXAssetNameP6XAssetPKc
	global _Z20DB_GetXAssetTypeSizei
	global _Z22DB_GetXAssetHeaderNameiPK12XAssetHeader
	global g_assetNames


SECTION .text


;int DB_SizeofXAsset<XModelPieces>()
_Z15DB_SizeofXAssetI12XModelPiecesEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<PhysPreset>()
_Z15DB_SizeofXAssetI10PhysPresetEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<XAnimParts>()
_Z15DB_SizeofXAssetI10XAnimPartsEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x58
	pop ebp
	ret


;int DB_SizeofXAsset<XModel>()
_Z15DB_SizeofXAssetI6XModelEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xdc
	pop ebp
	ret


;int DB_SizeofXAsset<Material>()
_Z15DB_SizeofXAssetI8MaterialEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x50
	pop ebp
	ret


;int DB_SizeofXAsset<MaterialTechniqueSet>()
_Z15DB_SizeofXAssetI20MaterialTechniqueSetEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x94
	pop ebp
	ret


;int DB_SizeofXAsset<GfxImage>()
_Z15DB_SizeofXAssetI8GfxImageEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x24
	pop ebp
	ret


;int DB_SizeofXAsset<snd_alias_list_t>()
_Z15DB_SizeofXAssetI16snd_alias_list_tEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<SndCurve>()
_Z15DB_SizeofXAssetI8SndCurveEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x48
	pop ebp
	ret


;int DB_SizeofXAsset<LoadedSound>()
_Z15DB_SizeofXAssetI11LoadedSoundEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<clipMap_t>()
_Z15DB_SizeofXAssetI9clipMap_tEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x11c
	pop ebp
	ret


;int DB_SizeofXAsset<ComWorld>()
_Z15DB_SizeofXAssetI8ComWorldEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;int DB_SizeofXAsset<GameWorldSp>()
_Z15DB_SizeofXAssetI11GameWorldSpEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x2c
	pop ebp
	ret


;int DB_SizeofXAsset<GameWorldMp>()
_Z15DB_SizeofXAssetI11GameWorldMpEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x4
	pop ebp
	ret


;int DB_SizeofXAsset<MapEnts>()
_Z15DB_SizeofXAssetI7MapEntsEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<GfxWorld>()
_Z15DB_SizeofXAssetI8GfxWorldEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x2dc
	pop ebp
	ret


;int DB_SizeofXAsset<GfxLightDef>()
_Z15DB_SizeofXAssetI11GfxLightDefEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;int DB_SizeofXAsset<Font_s>()
_Z15DB_SizeofXAssetI6Font_sEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x18
	pop ebp
	ret


;int DB_SizeofXAsset<MenuList>()
_Z15DB_SizeofXAssetI8MenuListEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<menuDef_t>()
_Z15DB_SizeofXAssetI9menuDef_tEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x11c
	pop ebp
	ret


;int DB_SizeofXAsset<LocalizeEntry>()
_Z15DB_SizeofXAssetI13LocalizeEntryEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x8
	pop ebp
	ret


;int DB_SizeofXAsset<WeaponDef>()
_Z15DB_SizeofXAssetI9WeaponDefEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x878
	pop ebp
	ret


;int DB_SizeofXAsset<FxEffectDef>()
_Z15DB_SizeofXAssetI11FxEffectDefEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x20
	pop ebp
	ret


;int DB_SizeofXAsset<FxImpactTable>()
_Z15DB_SizeofXAssetI13FxImpactTableEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x8
	pop ebp
	ret


;int DB_SizeofXAsset<RawFile>()
_Z15DB_SizeofXAssetI7RawFileEiv:
	push ebp
	mov ebp, esp
	mov eax, 0xc
	pop ebp
	ret


;int DB_SizeofXAsset<StringTable>()
_Z15DB_SizeofXAssetI11StringTableEiv:
	push ebp
	mov ebp, esp
	mov eax, 0x10
	pop ebp
	ret


;DB_XModelPiecesSetName(XAssetHeader*, char const*)
_Z22DB_XModelPiecesSetNameP12XAssetHeaderPKc:
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
_Z20DB_PhysPresetSetNameP12XAssetHeaderPKc:
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
_Z20DB_XAnimPartsSetNameP12XAssetHeaderPKc:
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
_Z16DB_XModelSetNameP12XAssetHeaderPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx], eax
	pop ebp
	ret
	nop


;DB_MaterialSetName(XAssetHeader*, char const*)
_Z18DB_MaterialSetNameP12XAssetHeaderPKc:
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
_Z30DB_MaterialTechniqueSetSetNameP12XAssetHeaderPKc:
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
_Z15DB_ImageSetNameP12XAssetHeaderPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx+0x20], eax
	pop ebp
	ret


;DB_SoundSetName(XAssetHeader*, char const*)
_Z15DB_SoundSetNameP12XAssetHeaderPKc:
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
_Z18DB_SndCurveSetNameP12XAssetHeaderPKc:
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
_Z21DB_LoadedSoundSetNameP12XAssetHeaderPKc:
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
_Z17DB_ClipMapSetNameP12XAssetHeaderPKc:
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
_Z18DB_ComWorldSetNameP12XAssetHeaderPKc:
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
_Z21DB_GameWorldSpSetNameP12XAssetHeaderPKc:
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
_Z21DB_GameWorldMpSetNameP12XAssetHeaderPKc:
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
_Z17DB_MapEntsSetNameP12XAssetHeaderPKc:
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
_Z18DB_GfxWorldSetNameP12XAssetHeaderPKc:
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
_Z18DB_LightDefSetNameP12XAssetHeaderPKc:
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
_Z14DB_FontSetNameP12XAssetHeaderPKc:
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
_Z18DB_MenuListSetNameP12XAssetHeaderPKc:
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
_Z14DB_MenuSetNameP12XAssetHeaderPKc:
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
_Z23DB_LocalizeEntrySetNameP12XAssetHeaderPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov [edx+0x4], eax
	pop ebp
	ret


;DB_WeaponDefSetName(XAssetHeader*, char const*)
_Z19DB_WeaponDefSetNameP12XAssetHeaderPKc:
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
_Z19DB_EffectDefSetNameP12XAssetHeaderPKc:
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
_Z23DB_FxImpactTableSetNameP12XAssetHeaderPKc:
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
_Z17DB_RawFileSetNameP12XAssetHeaderPKc:
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
_Z21DB_StringTableSetNameP12XAssetHeaderPKc:
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
_Z22DB_XModelPiecesGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_PhysPresetGetName(XAssetHeader const*)
_Z20DB_PhysPresetGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_XAnimPartsGetName(XAssetHeader const*)
_Z20DB_XAnimPartsGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_XModelGetName(XAssetHeader const*)
_Z16DB_XModelGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MaterialGetName(XAssetHeader const*)
_Z18DB_MaterialGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MaterialTechniqueSetGetName(XAssetHeader const*)
_Z30DB_MaterialTechniqueSetGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ImageGetName(XAssetHeader const*)
_Z15DB_ImageGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax+0x20]
	pop ebp
	ret
	nop


;DB_SoundGetName(XAssetHeader const*)
_Z15DB_SoundGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_SndCurveGetName(XAssetHeader const*)
_Z18DB_SndCurveGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LoadedSoundGetName(XAssetHeader const*)
_Z21DB_LoadedSoundGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ClipMapGetName(XAssetHeader const*)
_Z17DB_ClipMapGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_ComWorldGetName(XAssetHeader const*)
_Z18DB_ComWorldGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GameWorldSpGetName(XAssetHeader const*)
_Z21DB_GameWorldSpGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GameWorldMpGetName(XAssetHeader const*)
_Z21DB_GameWorldMpGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MapEntsGetName(XAssetHeader const*)
_Z17DB_MapEntsGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GfxWorldGetName(XAssetHeader const*)
_Z18DB_GfxWorldGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LightDefGetName(XAssetHeader const*)
_Z18DB_LightDefGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_FontGetName(XAssetHeader const*)
_Z14DB_FontGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MenuListGetName(XAssetHeader const*)
_Z18DB_MenuListGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_MenuGetName(XAssetHeader const*)
_Z14DB_MenuGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_LocalizeEntryGetName(XAssetHeader const*)
_Z23DB_LocalizeEntryGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax+0x4]
	pop ebp
	ret
	nop


;DB_WeaponDefGetName(XAssetHeader const*)
_Z19DB_WeaponDefGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_EffectDefGetName(XAssetHeader const*)
_Z19DB_EffectDefGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_FxImpactTableGetName(XAssetHeader const*)
_Z23DB_FxImpactTableGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_RawFileGetName(XAssetHeader const*)
_Z17DB_RawFileGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_StringTableGetName(XAssetHeader const*)
_Z21DB_StringTableGetNamePK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov eax, [eax]
	pop ebp
	ret


;DB_GetXAssetName(XAsset const*)
_Z16DB_GetXAssetNamePK6XAsset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	add eax, 0x4
	mov [ebp+0x8], eax
	mov ecx, [edx*4+DB_XAssetGetNameHandler]
	pop ebp
	jmp ecx
	add [eax], al


;DB_SetXAssetName(XAsset*, char const*)
_Z16DB_SetXAssetNameP6XAssetPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	add eax, 0x4
	mov [ebp+0x8], eax
	mov ecx, [edx*4+DB_XAssetSetNameHandler]
	pop ebp
	jmp ecx


;DB_GetXAssetTypeSize(int)
_Z20DB_GetXAssetTypeSizei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax*4+DB_GetXAssetSizeHandler]
	pop ebp
	jmp ecx


;DB_GetXAssetHeaderName(int, XAssetHeader const*)
_Z22DB_GetXAssetHeaderNameiPK12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp+0x8], edx
	mov ecx, [eax*4+DB_XAssetGetNameHandler]
	pop ebp
	jmp ecx


;Initialized global or static variables of db_assetnames:
SECTION .data
DB_GetXAssetSizeHandler: dd _Z15DB_SizeofXAssetI12XModelPiecesEiv, _Z15DB_SizeofXAssetI10PhysPresetEiv, _Z15DB_SizeofXAssetI10XAnimPartsEiv, _Z15DB_SizeofXAssetI6XModelEiv, _Z15DB_SizeofXAssetI8MaterialEiv, _Z15DB_SizeofXAssetI20MaterialTechniqueSetEiv, _Z15DB_SizeofXAssetI8GfxImageEiv, _Z15DB_SizeofXAssetI16snd_alias_list_tEiv, _Z15DB_SizeofXAssetI8SndCurveEiv, _Z15DB_SizeofXAssetI11LoadedSoundEiv, _Z15DB_SizeofXAssetI9clipMap_tEiv, _Z15DB_SizeofXAssetI9clipMap_tEiv, _Z15DB_SizeofXAssetI8ComWorldEiv, _Z15DB_SizeofXAssetI11GameWorldSpEiv, _Z15DB_SizeofXAssetI11GameWorldMpEiv, _Z15DB_SizeofXAssetI7MapEntsEiv, _Z15DB_SizeofXAssetI8GfxWorldEiv, _Z15DB_SizeofXAssetI11GfxLightDefEiv, 0x0, _Z15DB_SizeofXAssetI6Font_sEiv, _Z15DB_SizeofXAssetI8MenuListEiv, _Z15DB_SizeofXAssetI9menuDef_tEiv, _Z15DB_SizeofXAssetI13LocalizeEntryEiv, _Z15DB_SizeofXAssetI9WeaponDefEiv, 0x0, _Z15DB_SizeofXAssetI11FxEffectDefEiv, _Z15DB_SizeofXAssetI13FxImpactTableEiv, 0x0, 0x0, 0x0, 0x0, _Z15DB_SizeofXAssetI7RawFileEiv, _Z15DB_SizeofXAssetI11StringTableEiv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetSetNameHandler: dd _Z22DB_XModelPiecesSetNameP12XAssetHeaderPKc, _Z20DB_PhysPresetSetNameP12XAssetHeaderPKc, _Z20DB_XAnimPartsSetNameP12XAssetHeaderPKc, _Z16DB_XModelSetNameP12XAssetHeaderPKc, _Z18DB_MaterialSetNameP12XAssetHeaderPKc, _Z30DB_MaterialTechniqueSetSetNameP12XAssetHeaderPKc, _Z15DB_ImageSetNameP12XAssetHeaderPKc, _Z15DB_SoundSetNameP12XAssetHeaderPKc, _Z18DB_SndCurveSetNameP12XAssetHeaderPKc, _Z21DB_LoadedSoundSetNameP12XAssetHeaderPKc, _Z17DB_ClipMapSetNameP12XAssetHeaderPKc, _Z17DB_ClipMapSetNameP12XAssetHeaderPKc, _Z18DB_ComWorldSetNameP12XAssetHeaderPKc, _Z21DB_GameWorldSpSetNameP12XAssetHeaderPKc, _Z21DB_GameWorldMpSetNameP12XAssetHeaderPKc, _Z17DB_MapEntsSetNameP12XAssetHeaderPKc, _Z18DB_GfxWorldSetNameP12XAssetHeaderPKc, _Z18DB_LightDefSetNameP12XAssetHeaderPKc, 0x0, _Z14DB_FontSetNameP12XAssetHeaderPKc, _Z18DB_MenuListSetNameP12XAssetHeaderPKc, _Z14DB_MenuSetNameP12XAssetHeaderPKc, _Z23DB_LocalizeEntrySetNameP12XAssetHeaderPKc, _Z19DB_WeaponDefSetNameP12XAssetHeaderPKc, 0x0, _Z19DB_EffectDefSetNameP12XAssetHeaderPKc, _Z23DB_FxImpactTableSetNameP12XAssetHeaderPKc, 0x0, 0x0, 0x0, 0x0, _Z17DB_RawFileSetNameP12XAssetHeaderPKc, _Z21DB_StringTableSetNameP12XAssetHeaderPKc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetGetNameHandler: dd _Z22DB_XModelPiecesGetNamePK12XAssetHeader, _Z20DB_PhysPresetGetNamePK12XAssetHeader, _Z20DB_XAnimPartsGetNamePK12XAssetHeader, _Z16DB_XModelGetNamePK12XAssetHeader, _Z18DB_MaterialGetNamePK12XAssetHeader, _Z30DB_MaterialTechniqueSetGetNamePK12XAssetHeader, _Z15DB_ImageGetNamePK12XAssetHeader, _Z15DB_SoundGetNamePK12XAssetHeader, _Z18DB_SndCurveGetNamePK12XAssetHeader, _Z21DB_LoadedSoundGetNamePK12XAssetHeader, _Z17DB_ClipMapGetNamePK12XAssetHeader, _Z17DB_ClipMapGetNamePK12XAssetHeader, _Z18DB_ComWorldGetNamePK12XAssetHeader, _Z21DB_GameWorldSpGetNamePK12XAssetHeader, _Z21DB_GameWorldMpGetNamePK12XAssetHeader, _Z17DB_MapEntsGetNamePK12XAssetHeader, _Z18DB_GfxWorldGetNamePK12XAssetHeader, _Z18DB_LightDefGetNamePK12XAssetHeader, 0x0, _Z14DB_FontGetNamePK12XAssetHeader, _Z18DB_MenuListGetNamePK12XAssetHeader, _Z14DB_MenuGetNamePK12XAssetHeader, _Z23DB_LocalizeEntryGetNamePK12XAssetHeader, _Z19DB_WeaponDefGetNamePK12XAssetHeader, 0x0, _Z19DB_EffectDefGetNamePK12XAssetHeader, _Z23DB_FxImpactTableGetNamePK12XAssetHeader, 0x0, 0x0, 0x0, 0x0, _Z17DB_RawFileGetNamePK12XAssetHeader, _Z21DB_StringTableGetNamePK12XAssetHeader, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_assetNames: dd _cstring_xmodelpieces, _cstring_physpreset, _cstring_xanim, _cstring_xmodel, _cstring_material, _cstring_techset, _cstring_image, _cstring_sound, _cstring_sndcurve, _cstring_loaded_sound, _cstring_col_map_sp, _cstring_col_map_mp, _cstring_com_map, _cstring_game_map_sp, _cstring_game_map_mp, _cstring_map_ents, _cstring_gfx_map, _cstring_lightdef, _cstring_ui_map, _cstring_font, _cstring_menufile, _cstring_menu, _cstring_localize, _cstring_weapon, _cstring_snddriverglobals, _cstring_fx, _cstring_impactfx, _cstring_aitype, _cstring_mptype, _cstring_character, _cstring_xmodelalias, _cstring_rawfile, _cstring_stringtable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_assetnames:
SECTION .rdata


;Zero initialized global or static variables of db_assetnames:
SECTION .bss


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

