;Imports of db_registry:
	extern strcmp
	extern _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet
	extern _Z13Image_ReleaseP8GfxImage
	extern Z_FreeInternal
	extern _Z15Com_UnloadWorldv
	extern _Z18Material_DirtySortv
	extern _Z22DB_GetXAssetHeaderNameiPK12XAssetHeader
	extern _Z10Com_PrintfiPKcz
	extern _Z15Win_GetLanguagev
	extern _Z22Sys_DefaultInstallPathv
	extern _Z11Com_sprintfPciPKcz
	extern fs_gameDirVar
	extern strstr
	extern _Z10I_strncpyzPcPKci
	extern _Z12Sys_GetValuei
	extern setjmp
	extern _Z14Com_ErrorAbortv
	extern _Z21Sys_DatabaseCompletedv
	extern _Z21Sys_WaitStartDatabasev
	extern _ZN10MacDisplay16GetSharedContextEv
	extern _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	extern iCreateFileA
	extern _Z16Com_PrintWarningiPKcz
	extern g_loadingAssets
	extern _Z9I_stricmpPKcS0_
	extern memset
	extern iGetFileSize
	extern _Z15PMem_BeginAllocPKcj
	extern _Z16DB_ResetZoneSizei
	extern _Z12DB_LoadXFilePKcPvS0_P11XZoneMemoryPFvvEPhi
	extern _Z20DB_LoadXFileInternalv
	extern _Z13PMem_EndAllocPKcj
	extern _Z9Sys_Sleepi
	extern _Z16Sys_Millisecondsv
	extern CloseHandle
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18R_SyncRenderThreadv
	extern _Z18RB_UnbindAllImagesv
	extern _Z17R_ShutdownStreamsv
	extern _Z19RB_ClearPixelShaderv
	extern _Z20RB_ClearVertexShaderv
	extern _Z18RB_ClearVertexDeclv
	extern iInterlockedDecrement
	extern g_assetNames
	extern _Z14Com_PrintErroriPKcz
	extern _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	extern _Z17SL_TransferSystemjj
	extern varXAsset
	extern _Z11Mark_XAssetv
	extern _Z16DB_GetXAssetNamePK6XAsset
	extern _Z12SL_GetStringPKcj
	extern _Z18SL_ConvertToStringj
	extern _Z16DB_SetXAssetNameP6XAssetPKc
	extern _Z17SL_ShutdownSystemj
	extern tolower
	extern _Z20DB_GetXAssetTypeSizei
	extern memcpy
	extern _Z9Sys_ErrorPKcz
	extern iInterlockedIncrement
	extern _Z20Sys_IsDatabaseReady2v
	extern _Z35Material_DirtyTechniqueSetOverridesv
	extern _Z30Material_OverrideTechniqueSetsv
	extern _Z13DB_LoadSoundsv
	extern _Z12DB_LoadDObjsv
	extern _Z23BG_FillInAllWeaponItemsv
	extern _Z22Sys_DatabaseCompleted2v
	extern _Z30R_ClearAllStaticModelCacheRefsv
	extern _Z13DB_SaveSoundsv
	extern _Z12DB_SaveDObjsv
	extern _Z16Sys_SyncDatabasev
	extern _Z23Sys_SpawnDatabaseThreadPFvjE
	extern _Z30Material_ClearShaderUploadListv
	extern _Z18DB_FreeXZoneMemoryP11XZoneMemory
	extern _Z9PMem_FreePKcj
	extern _Z17Sys_WakeDatabase2v
	extern _Z16Sys_WakeDatabasev
	extern _Z18Sys_NotifyDatabasev
	extern _Z2vaPKcz
	extern _Z20FS_AddUserMapDirIWDsPKc
	extern _Z9CM_Unloadv
	extern _Z13R_UnloadWorldv
	extern _Z29DB_ResetMinimumFastFileLoadedv
	extern _Z15Com_SyncThreadsv
	extern _Z21CG_VisionSetMyChangesv
	extern Sys_IsDatabaseThread
	extern _Z26DB_IsMinimumFastFileLoadedv
	extern _Z18Sys_IsRenderThreadv
	extern _Z19Sys_IsDatabaseReadyv
	extern _Z16Sys_IsMainThreadv
	extern _Z31Sys_HaveSuspendedDatabaseThread11ThreadOwner
	extern _Z25Sys_SuspendDatabaseThread11ThreadOwner
	extern _Z27Sys_FastFileBlockedCallbackv
	extern _Z24Sys_ResumeDatabaseThread11ThreadOwner
	extern com_developer
	extern loc_warnings
	extern loc_warningsAsErrors
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z21FS_FOpenTextFileWritePKc
	extern com_missingAssetOpenFailed
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _Z18FS_FOpenFileAppendPKc
	extern _Z8FS_WritePKvii
	extern _Z13FS_FCloseFilei
	extern _Z16R_DelayLoadImage12XAssetHeaderPv
	extern _Z25DB_RecoverGeometryBuffersP11XZoneMemory
	extern _Z9I_strncmpPKcS0_i
	extern _Z9I_strncatPciPKc
	extern com_dedicated
	extern _Z4itoaiPci
	extern _Z25DB_ReleaseGeometryBuffersP11XZoneMemory
	extern _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet
	extern _Z22Material_UploadShadersP20MaterialTechniqueSet
	extern cm
	extern comWorld
	extern gameWorldMp
	extern s_world

;Exports of db_registry:
	global g_zones
	global g_zoneNameList
	global g_zoneIndex
	global DB_DynamicCloneXAssetHandler
	global _Z19DB_DynamicCloneMenu12XAssetHeaderS_i
	global _Z24DB_DynamicCloneWeaponDef12XAssetHeaderS_i
	global g_zoneHandles
	global g_zoneCount
	global db_hashCritSect
	global g_defaultAssetCount
	global g_defaultAssetName
	global g_assetEntryPool
	global db_hashTable
	global DB_RemoveXAssetHandler
	global _Z21DB_RemoveTechniqueSet12XAssetHeader
	global _Z14DB_RemoveImage12XAssetHeader
	global _Z20DB_RemoveLoadedSound12XAssetHeader
	global _Z17DB_RemoveComWorld12XAssetHeader
	global g_freeAssetEntryHead
	global DB_XAssetPool
	global g_XModelPiecesPool
	global g_PhysPresetPool
	global g_XAnimPartsPool
	global g_XModelPool
	global g_MaterialPool
	global g_MaterialTechniqueSetPool
	global g_GfxImagePool
	global g_SoundPool
	global g_SndCurvePool
	global g_LoadedSoundPool
	global g_MapEntsPool
	global g_GfxLightDefPool
	global g_FontPool
	global g_MenuListPool
	global g_MenuPool
	global g_LocalizeEntryPool
	global g_WeaponDefPool
	global g_FxEffectDefPool
	global g_FxImpactTablePool
	global g_RawFilePool
	global g_StringTablePool
	global DB_FreeXAssetHeaderHandler
	global _Z19DB_FreeXAssetHeaderI12XModelPiecesEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI10PhysPresetEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI10XAnimPartsEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI6XModelEvPv12XAssetHeader
	global _Z15DB_FreeMaterialPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI20MaterialTechniqueSetEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI8GfxImageEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI16snd_alias_list_tEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI8SndCurveEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI11LoadedSoundEvPv12XAssetHeader
	global _Z22DB_FreeXAssetSingletonPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI7MapEntsEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI11GfxLightDefEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI6Font_sEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI8MenuListEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI9menuDef_tEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI13LocalizeEntryEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI9WeaponDefEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI11FxEffectDefEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI13FxImpactTableEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI7RawFileEvPv12XAssetHeader
	global _Z19DB_FreeXAssetHeaderI11StringTableEvPv12XAssetHeader
	global g_zoneInfo
	global g_zoneInfoCount
	global g_fileBuf
	global g_initializing
	global g_zoneAllocType
	global g_mayRecoverLostAssets
	global g_isRecoveringLostDevice
	global g_loadingZone
	global g_sync
	global g_zoneInited
	global g_poolSize
	global DB_InitPoolHeaderHandler
	global _Z11DB_InitPoolI12XModelPiecesEvPvi
	global _Z11DB_InitPoolI10PhysPresetEvPvi
	global _Z11DB_InitPoolI10XAnimPartsEvPvi
	global _Z11DB_InitPoolI6XModelEvPvi
	global _Z11DB_InitPoolI8MaterialEvPvi
	global _Z11DB_InitPoolI20MaterialTechniqueSetEvPvi
	global _Z11DB_InitPoolI8GfxImageEvPvi
	global _Z11DB_InitPoolI16snd_alias_list_tEvPvi
	global _Z11DB_InitPoolI8SndCurveEvPvi
	global _Z11DB_InitPoolI11LoadedSoundEvPvi
	global _Z16DB_InitSingletonPvi
	global _Z11DB_InitPoolI7MapEntsEvPvi
	global _Z11DB_InitPoolI11GfxLightDefEvPvi
	global _Z11DB_InitPoolI6Font_sEvPvi
	global _Z11DB_InitPoolI8MenuListEvPvi
	global _Z11DB_InitPoolI9menuDef_tEvPvi
	global _Z11DB_InitPoolI13LocalizeEntryEvPvi
	global _Z11DB_InitPoolI9WeaponDefEvPvi
	global _Z11DB_InitPoolI11FxEffectDefEvPvi
	global _Z11DB_InitPoolI13FxImpactTableEvPvi
	global _Z11DB_InitPoolI7RawFileEvPvi
	global _Z11DB_InitPoolI11StringTableEvPvi
	global g_archiveBuf
	global g_copyInfo
	global g_copyInfoCount
	global DB_AllocXAssetHeaderHandler
	global _Z14DB_AllocXAssetI12XModelPiecesE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI10PhysPresetE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI10XAnimPartsE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI6XModelE12XAssetHeaderPv
	global _Z16DB_AllocMaterialPv
	global _Z14DB_AllocXAssetI20MaterialTechniqueSetE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI8GfxImageE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI16snd_alias_list_tE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI8SndCurveE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI11LoadedSoundE12XAssetHeaderPv
	global _Z23DB_AllocXAssetSingletonPv
	global _Z14DB_AllocXAssetI7MapEntsE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI11GfxLightDefE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI6Font_sE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI8MenuListE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI9menuDef_tE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI13LocalizeEntryE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI9WeaponDefE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI11FxEffectDefE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI13FxImpactTableE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI7RawFileE12XAssetHeaderPv
	global _Z14DB_AllocXAssetI11StringTableE12XAssetHeaderPv
	global g_debugZoneName
	global g_missingAssetFile
	global _Z17DB_PrintAssetName12XAssetHeaderPv
	global _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	global _Z9DB_Threadj
	global _Z21DB_SyncExternalAssetsv
	global _Z20DB_AllocXAssetHeader10XAssetType
	global _Z22DB_FreeUnusedResourcesv
	global _Z21DB_CreateDefaultEntry10XAssetTypePKc
	global _Z18DB_LinkXAssetEntryP11XAssetEntryi
	global _Z14DB_UnloadXZonejh
	global _Z12DB_AddXAsset10XAssetType12XAssetHeader
	global _Z16DB_PostLoadXZonev
	global _Z10DB_Cleanupv
	global _Z11DB_FileSizePKc6FF_DIR
	global _Z13DB_FileExistsPKc6FF_DIR
	global _Z13DB_InitThreadv
	global _Z14DB_LoadXAssetsP9XZoneInfoji
	global _Z14DB_SyncXAssetsv
	global _Z14Load_FontAssetPP6Font_s
	global _Z14Load_MenuAssetPP9menuDef_t
	global _Z14Mark_FontAssetP6Font_s
	global _Z14Mark_MenuAssetP9menuDef_t
	global _Z15DB_ReplaceModelPKcS0_
	global _Z16DB_AddUserMapDirPKc
	global _Z16DB_ModFileExistsv
	global _Z16DB_RemoveClipMap12XAssetHeader
	global _Z16Load_XModelAssetPP6XModel
	global _Z16Mark_XModelAssetP6XModel
	global _Z17DB_ReleaseXAssetsv
	global _Z17DB_RemoveGfxWorld12XAssetHeader
	global _Z17Load_ClipMapAssetPP9clipMap_t
	global _Z17Load_MapEntsAssetPP7MapEnts
	global _Z17Load_RawFileAssetPP7RawFile
	global _Z17Mark_ClipMapAssetP9clipMap_t
	global _Z17Mark_MapEntsAssetP7MapEnts
	global _Z17Mark_RawFileAssetP7RawFile
	global _Z18DB_IsXAssetDefault10XAssetTypePKc
	global _Z18DB_SetInitializingh
	global _Z18DB_ShutdownXAssetsv
	global _Z18DB_UpdateDebugZonev
	global _Z18Load_ComWorldAssetPP8ComWorld
	global _Z18Load_GfxImageAssetPP8GfxImage
	global _Z18Load_GfxWorldAssetPP8GfxWorld
	global _Z18Load_LightDefAssetPP11GfxLightDef
	global _Z18Load_MaterialAssetPP8Material
	global _Z18Load_MenuListAssetPP8MenuList
	global _Z18Load_SndCurveAssetPP8SndCurve
	global _Z18Mark_ComWorldAssetP8ComWorld
	global _Z18Mark_GfxImageAssetP8GfxImage
	global _Z18Mark_GfxWorldAssetP8GfxWorld
	global _Z18Mark_LightDefAssetP11GfxLightDef
	global _Z18Mark_MaterialAssetP8Material
	global _Z18Mark_MenuListAssetP8MenuList
	global _Z18Mark_SndCurveAssetP8SndCurve
	global _Z19DB_FindXAssetHeader10XAssetTypePKc
	global _Z19Load_WeaponDefAssetPP9WeaponDef
	global _Z19Mark_WeaponDefAssetP9WeaponDef
	global _Z20DB_LoadDelayedImagesv
	global _Z20Load_PhysPresetAssetPP10PhysPreset
	global _Z20Load_XAnimPartsAssetPP10XAnimParts
	global _Z20Mark_PhysPresetAssetP10PhysPreset
	global _Z20Mark_XAnimPartsAssetP10XAnimParts
	global _Z21Load_FxEffectDefAssetPPK11FxEffectDef
	global _Z21Load_GameWorldMpAssetPP11GameWorldMp
	global _Z21Load_GameWorldSpAssetPP11GameWorldSp
	global _Z21Load_LoadedSoundAssetPP11LoadedSound
	global _Z21Load_StringTableAssetPP11StringTable
	global _Z21Mark_FxEffectDefAssetP11FxEffectDef
	global _Z21Mark_GameWorldMpAssetP11GameWorldMp
	global _Z21Mark_GameWorldSpAssetP11GameWorldSp
	global _Z21Mark_LoadedSoundAssetP11LoadedSound
	global _Z21Mark_StringTableAssetP11StringTable
	global _Z23DB_EndRecoverLostDevicev
	global _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h
	global _Z23DB_ReferencedFFNameListv
	global _Z23Load_FxImpactTableAssetPP13FxImpactTable
	global _Z23Load_LocalizeEntryAssetPP13LocalizeEntry
	global _Z23Mark_FxImpactTableAssetP13FxImpactTable
	global _Z23Mark_LocalizeEntryAssetP13LocalizeEntry
	global _Z24DB_GetIndexBufferAndBasehPvS_Pi
	global _Z24DB_ReferencedFFChecksumsv
	global _Z24Load_FxEffectDefFromNamePPKc
	global _Z25DB_BeginRecoverLostDevicev
	global _Z25Load_GetCurrentZoneHandlePh
	global _Z25Load_snd_alias_list_AssetPP16snd_alias_list_t
	global _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t
	global _Z27DB_GetVertexBufferAndOffsethPvS_Pi
	global _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi
	global _Z30Load_MaterialTechniqueSetAssetPP20MaterialTechniqueSet
	global _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet
	global _Z9DB_Updatev
	global g_mainThreadBlocked


SECTION .text


;DB_DynamicCloneMenu(XAssetHeader, XAssetHeader, int)
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x50]
	mov edx, [ebp+0xc]
	mov [edx+0x50], eax
	mov eax, [edx+0xa4]
	test eax, eax
	jle _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_10
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0xc]
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_70:
	mov eax, [edx+0x118]
	mov edx, [ebp-0x1c]
	mov edi, [eax+edx*4]
	mov eax, [edi]
	mov [ebp-0x28], eax
	test eax, eax
	jz _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0xa4]
	mov [ebp-0x24], edx
	test edx, edx
	jle _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_20
	mov eax, [ebp+0x8]
	mov eax, [eax+0x118]
	mov [ebp-0x20], eax
	xor ebx, ebx
	mov edx, eax
	jmp _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_30
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_60:
	mov edx, [ebp-0x20]
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_30:
	mov esi, [edx+ebx*4]
	mov eax, [esi]
	test eax, eax
	jz _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_40
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_50
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_40:
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jnz _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_60
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_20:
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_70
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DB_DynamicCloneMenu12XAssetHeaderS_i_50:
	mov eax, [esi+0x50]
	mov [edi+0x50], eax
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_70
	jmp _Z19DB_DynamicCloneMenu12XAssetHeaderS_i_10
	nop


;DB_DynamicCloneWeaponDef(XAssetHeader, XAssetHeader, int)
_Z24DB_DynamicCloneWeaponDef12XAssetHeaderS_i:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;DB_RemoveTechniqueSet(XAssetHeader)
_Z21DB_RemoveTechniqueSet12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet
	nop


;DB_RemoveImage(XAssetHeader)
_Z14DB_RemoveImage12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z13Image_ReleaseP8GfxImage
	nop


;DB_RemoveLoadedSound(XAssetHeader)
_Z20DB_RemoveLoadedSound12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x28]
	mov [ebp+0x8], eax
	pop ebp
	jmp Z_FreeInternal


;DB_RemoveComWorld(XAssetHeader)
_Z17DB_RemoveComWorld12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z15Com_UnloadWorldv
	nop


;void DB_FreeXAssetHeader<XModelPieces>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI12XModelPiecesEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<PhysPreset>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI10PhysPresetEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<XAnimParts>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI10XAnimPartsEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<XModel>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI6XModelEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;DB_FreeMaterial(void*, XAssetHeader)
_Z15DB_FreeMaterialPv12XAssetHeader:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	call _Z18Material_DirtySortv
	mov eax, [ebx]
	mov [ebx], esi
	mov [esi], eax
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_FreeXAssetHeader<MaterialTechniqueSet>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI20MaterialTechniqueSetEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<GfxImage>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI8GfxImageEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<snd_alias_list_t>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI16snd_alias_list_tEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<SndCurve>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI8SndCurveEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<LoadedSound>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI11LoadedSoundEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;DB_FreeXAssetSingleton(void*, XAssetHeader)
_Z22DB_FreeXAssetSingletonPv12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MapEnts>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI7MapEntsEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<GfxLightDef>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI11GfxLightDefEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<Font_s>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI6Font_sEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MenuList>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI8MenuListEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<menuDef_t>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI9menuDef_tEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<LocalizeEntry>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI13LocalizeEntryEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<WeaponDef>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI9WeaponDefEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<FxEffectDef>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI11FxEffectDefEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<FxImpactTable>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI13FxImpactTableEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<RawFile>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI7RawFileEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<StringTable>(void*, XAssetHeader)
_Z19DB_FreeXAssetHeaderI11StringTableEvPv12XAssetHeader:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [eax]
	mov [eax], edx
	mov [edx], ecx
	pop ebp
	ret
	nop


;void DB_InitPool<XModelPieces>(void*, int)
_Z11DB_InitPoolI12XModelPiecesEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI12XModelPiecesEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI12XModelPiecesEvPvi_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI12XModelPiecesEvPvi_20
_Z11DB_InitPoolI12XModelPiecesEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<PhysPreset>(void*, int)
_Z11DB_InitPoolI10PhysPresetEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI10PhysPresetEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI10PhysPresetEvPvi_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI10PhysPresetEvPvi_20
_Z11DB_InitPoolI10PhysPresetEvPvi_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XAnimParts>(void*, int)
_Z11DB_InitPoolI10XAnimPartsEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI10XAnimPartsEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI10XAnimPartsEvPvi_20:
	add ecx, 0x1
	add eax, 0x58
	mov [edx+0x4], eax
	add edx, 0x58
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI10XAnimPartsEvPvi_20
_Z11DB_InitPoolI10XAnimPartsEvPvi_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XModel>(void*, int)
_Z11DB_InitPoolI6XModelEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI6XModelEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI6XModelEvPvi_20:
	add ecx, 0x1
	add eax, 0xdc
	mov [edx+0x4], eax
	add edx, 0xdc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI6XModelEvPvi_20
_Z11DB_InitPoolI6XModelEvPvi_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	lea eax, [eax+eax*4]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<Material>(void*, int)
_Z11DB_InitPoolI8MaterialEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI8MaterialEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI8MaterialEvPvi_20:
	add ecx, 0x1
	add eax, 0x50
	mov [edx+0x4], eax
	add edx, 0x50
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI8MaterialEvPvi_20
_Z11DB_InitPoolI8MaterialEvPvi_10:
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	mov dword [eax+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<MaterialTechniqueSet>(void*, int)
_Z11DB_InitPoolI20MaterialTechniqueSetEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI20MaterialTechniqueSetEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI20MaterialTechniqueSetEvPvi_20:
	add ecx, 0x1
	add eax, 0x94
	mov [edx+0x4], eax
	add edx, 0x94
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI20MaterialTechniqueSetEvPvi_20
_Z11DB_InitPoolI20MaterialTechniqueSetEvPvi_10:
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxImage>(void*, int)
_Z11DB_InitPoolI8GfxImageEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI8GfxImageEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI8GfxImageEvPvi_20:
	add ecx, 0x1
	add eax, 0x24
	mov [edx+0x4], eax
	add edx, 0x24
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI8GfxImageEvPvi_20
_Z11DB_InitPoolI8GfxImageEvPvi_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<snd_alias_list_t>(void*, int)
_Z11DB_InitPoolI16snd_alias_list_tEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI16snd_alias_list_tEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI16snd_alias_list_tEvPvi_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI16snd_alias_list_tEvPvi_20
_Z11DB_InitPoolI16snd_alias_list_tEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<SndCurve>(void*, int)
_Z11DB_InitPoolI8SndCurveEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI8SndCurveEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI8SndCurveEvPvi_20:
	add ecx, 0x1
	add eax, 0x48
	mov [edx+0x4], eax
	add edx, 0x48
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI8SndCurveEvPvi_20
_Z11DB_InitPoolI8SndCurveEvPvi_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LoadedSound>(void*, int)
_Z11DB_InitPoolI11LoadedSoundEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI11LoadedSoundEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI11LoadedSoundEvPvi_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI11LoadedSoundEvPvi_20
_Z11DB_InitPoolI11LoadedSoundEvPvi_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DB_InitSingleton(void*, int)
_Z16DB_InitSingletonPvi:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_InitPool<MapEnts>(void*, int)
_Z11DB_InitPoolI7MapEntsEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI7MapEntsEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI7MapEntsEvPvi_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI7MapEntsEvPvi_20
_Z11DB_InitPoolI7MapEntsEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxLightDef>(void*, int)
_Z11DB_InitPoolI11GfxLightDefEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI11GfxLightDefEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI11GfxLightDefEvPvi_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI11GfxLightDefEvPvi_20
_Z11DB_InitPoolI11GfxLightDefEvPvi_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<Font_s>(void*, int)
_Z11DB_InitPoolI6Font_sEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI6Font_sEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI6Font_sEvPvi_20:
	add ecx, 0x1
	add eax, 0x18
	mov [edx+0x4], eax
	add edx, 0x18
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI6Font_sEvPvi_20
_Z11DB_InitPoolI6Font_sEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<MenuList>(void*, int)
_Z11DB_InitPoolI8MenuListEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI8MenuListEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI8MenuListEvPvi_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI8MenuListEvPvi_20
_Z11DB_InitPoolI8MenuListEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<menuDef_t>(void*, int)
_Z11DB_InitPoolI9menuDef_tEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI9menuDef_tEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI9menuDef_tEvPvi_20:
	add ecx, 0x1
	add eax, 0x11c
	mov [edx+0x4], eax
	add edx, 0x11c
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI9menuDef_tEvPvi_20
_Z11DB_InitPoolI9menuDef_tEvPvi_10:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LocalizeEntry>(void*, int)
_Z11DB_InitPoolI13LocalizeEntryEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI13LocalizeEntryEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI13LocalizeEntryEvPvi_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI13LocalizeEntryEvPvi_20
_Z11DB_InitPoolI13LocalizeEntryEvPvi_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<WeaponDef>(void*, int)
_Z11DB_InitPoolI9WeaponDefEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI9WeaponDefEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI9WeaponDefEvPvi_20:
	add ecx, 0x1
	add eax, 0x878
	mov [edx+0x4], eax
	add edx, 0x878
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI9WeaponDefEvPvi_20
_Z11DB_InitPoolI9WeaponDefEvPvi_10:
	mov eax, ebx
	shl eax, 0x4
	mov edx, ebx
	shl edx, 0x8
	add eax, edx
	sub eax, ebx
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<FxEffectDef>(void*, int)
_Z11DB_InitPoolI11FxEffectDefEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI11FxEffectDefEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI11FxEffectDefEvPvi_20:
	add ecx, 0x1
	add eax, 0x20
	mov [edx+0x4], eax
	add edx, 0x20
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI11FxEffectDefEvPvi_20
_Z11DB_InitPoolI11FxEffectDefEvPvi_10:
	shl ebx, 0x5
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<FxImpactTable>(void*, int)
_Z11DB_InitPoolI13FxImpactTableEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI13FxImpactTableEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI13FxImpactTableEvPvi_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI13FxImpactTableEvPvi_20
_Z11DB_InitPoolI13FxImpactTableEvPvi_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<RawFile>(void*, int)
_Z11DB_InitPoolI7RawFileEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI7RawFileEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI7RawFileEvPvi_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI7RawFileEvPvi_20
_Z11DB_InitPoolI7RawFileEvPvi_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<StringTable>(void*, int)
_Z11DB_InitPoolI11StringTableEvPvi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	lea eax, [esi+0x4]
	mov [esi], eax
	mov ebx, [ebp+0xc]
	sub ebx, 0x1
	test ebx, ebx
	jle _Z11DB_InitPoolI11StringTableEvPvi_10
	mov edx, esi
	xor ecx, ecx
_Z11DB_InitPoolI11StringTableEvPvi_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz _Z11DB_InitPoolI11StringTableEvPvi_20
_Z11DB_InitPoolI11StringTableEvPvi_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XModelPieces>(void*)
_Z14DB_AllocXAssetI12XModelPiecesE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI12XModelPiecesE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI12XModelPiecesE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<PhysPreset>(void*)
_Z14DB_AllocXAssetI10PhysPresetE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI10PhysPresetE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI10PhysPresetE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XAnimParts>(void*)
_Z14DB_AllocXAssetI10XAnimPartsE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI10XAnimPartsE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI10XAnimPartsE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XModel>(void*)
_Z14DB_AllocXAssetI6XModelE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI6XModelE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI6XModelE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocMaterial(void*)
_Z16DB_AllocMaterialPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call _Z18Material_DirtySortv
	mov eax, [ebx]
	test eax, eax
	jz _Z16DB_AllocMaterialPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ebx], eax
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z16DB_AllocMaterialPv_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;XAssetHeader DB_AllocXAsset<MaterialTechniqueSet>(void*)
_Z14DB_AllocXAssetI20MaterialTechniqueSetE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI20MaterialTechniqueSetE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI20MaterialTechniqueSetE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxImage>(void*)
_Z14DB_AllocXAssetI8GfxImageE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI8GfxImageE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI8GfxImageE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<snd_alias_list_t>(void*)
_Z14DB_AllocXAssetI16snd_alias_list_tE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI16snd_alias_list_tE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI16snd_alias_list_tE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<SndCurve>(void*)
_Z14DB_AllocXAssetI8SndCurveE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI8SndCurveE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI8SndCurveE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LoadedSound>(void*)
_Z14DB_AllocXAssetI11LoadedSoundE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI11LoadedSoundE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI11LoadedSoundE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocXAssetSingleton(void*)
_Z23DB_AllocXAssetSingletonPv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MapEnts>(void*)
_Z14DB_AllocXAssetI7MapEntsE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI7MapEntsE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI7MapEntsE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxLightDef>(void*)
_Z14DB_AllocXAssetI11GfxLightDefE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI11GfxLightDefE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI11GfxLightDefE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<Font_s>(void*)
_Z14DB_AllocXAssetI6Font_sE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI6Font_sE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI6Font_sE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MenuList>(void*)
_Z14DB_AllocXAssetI8MenuListE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI8MenuListE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI8MenuListE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<menuDef_t>(void*)
_Z14DB_AllocXAssetI9menuDef_tE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI9menuDef_tE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI9menuDef_tE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LocalizeEntry>(void*)
_Z14DB_AllocXAssetI13LocalizeEntryE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI13LocalizeEntryE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI13LocalizeEntryE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<WeaponDef>(void*)
_Z14DB_AllocXAssetI9WeaponDefE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI9WeaponDefE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI9WeaponDefE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxEffectDef>(void*)
_Z14DB_AllocXAssetI11FxEffectDefE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI11FxEffectDefE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI11FxEffectDefE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxImpactTable>(void*)
_Z14DB_AllocXAssetI13FxImpactTableE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI13FxImpactTableE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI13FxImpactTableE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<RawFile>(void*)
_Z14DB_AllocXAssetI7RawFileE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI7RawFileE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI7RawFileE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<StringTable>(void*)
_Z14DB_AllocXAssetI11StringTableE12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z14DB_AllocXAssetI11StringTableE12XAssetHeaderPv_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
_Z14DB_AllocXAssetI11StringTableE12XAssetHeaderPv_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_PrintAssetName(XAssetHeader, void*)
_Z17DB_PrintAssetName12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp], eax
	call _Z22DB_GetXAssetHeaderNameiPK12XAssetHeader
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;DB_BuildOSPath_FromSource(char const*, FF_DIR, int, char*)
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, eax
	mov edi, ecx
	cmp edx, 0x1
	jz _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_10
	cmp edx, 0x2
	jz _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_20
	test edx, edx
	jz _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_30
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_30:
	call _Z15Win_GetLanguagev
	mov ebx, eax
	call _Z22Sys_DefaultInstallPathv
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_10:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov ebx, [eax+0xc]
	call _Z22Sys_DefaultInstallPathv
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sssff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_20:
	mov dword [esp+0x4], _cstring__load
	mov [esp], eax
	call strstr
	test eax, eax
	jz _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_40
	sub eax, esi
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_50:
	call _Z22Sys_DefaultInstallPathv
	mov [esp+0x18], esi
	mov [esp+0x14], ebx
	mov dword [esp+0x10], _cstring_usermaps
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ssssff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_40:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	jmp _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc_50
	nop
	add [eax], al


;DB_Thread(unsigned int)
_Z9DB_Threadj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34c
_Z9DB_Threadj_20:
	mov dword [esp], 0x2
	call _Z12Sys_GetValuei
	mov [esp], eax
	call setjmp
	test eax, eax
	jz _Z9DB_Threadj_10
	call _Z14Com_ErrorAbortv
	jmp _Z9DB_Threadj_20
_Z9DB_Threadj_30:
	call _Z21Sys_DatabaseCompletedv
_Z9DB_Threadj_10:
	call _Z21Sys_WaitStartDatabasev
	call _ZN10MacDisplay16GetSharedContextEv
	mov [esp], eax
	call _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	mov eax, [g_zoneInfoCount]
	test eax, eax
	jz _Z9DB_Threadj_10
	mov eax, [g_zoneInfoCount]
	mov [ebp-0x32c], eax
	mov dword [g_zoneInfoCount], 0x0
	test eax, eax
	jz _Z9DB_Threadj_30
	mov dword [ebp-0x330], 0x0
	mov dword [ebp-0x31c], g_zoneInfo
	jmp _Z9DB_Threadj_40
_Z9DB_Threadj_80:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z9DB_Threadj_50
_Z9DB_Threadj_240:
	call _Z15Win_GetLanguagev
	mov ebx, eax
	call _Z22Sys_DefaultInstallPathv
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call iCreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jnz _Z9DB_Threadj_60
	mov dword [esp+0x4], _cstring__load
	mov [esp], ebx
	call strstr
	test eax, eax
	jz _Z9DB_Threadj_70
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
_Z9DB_Threadj_280:
	mov edx, g_loadingAssets
	mov eax, [edx]
	sub eax, 0x1
	mov [edx], eax
_Z9DB_Threadj_170:
	add dword [ebp-0x330], 0x1
	add dword [ebp-0x31c], 0x44
	mov edx, [ebp-0x330]
	cmp [ebp-0x32c], edx
	jz _Z9DB_Threadj_30
_Z9DB_Threadj_40:
	mov edx, [ebp-0x31c]
	mov edx, [edx+0x40]
	mov [ebp-0x320], edx
	mov eax, [ebp-0x330]
	shl eax, 0x6
	mov edx, [ebp-0x330]
	lea edi, [eax+edx*4+g_zoneInfo]
	mov dword [esp+0x4], _cstring_mp_patch
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z9DB_Threadj_80
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x80000000
	mov dword [esp], _cstring_updatemp_patchff
	call iCreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz _Z9DB_Threadj_90
_Z9DB_Threadj_60:
	mov dword [ebp-0x324], 0x0
_Z9DB_Threadj_250:
	mov dword [g_zoneIndex], 0x0
	mov edx, 0x1
	mov eax, g_zones
	jmp _Z9DB_Threadj_100
_Z9DB_Threadj_120:
	add edx, 0x1
	add eax, 0xa8
	cmp edx, 0x21
	jz _Z9DB_Threadj_110
_Z9DB_Threadj_100:
	cmp byte [eax+0xa8], 0x0
	jnz _Z9DB_Threadj_120
	mov [g_zoneIndex], edx
	mov eax, edx
_Z9DB_Threadj_260:
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones]
	mov [ebp-0x328], edx
	mov dword [esp+0x8], 0xa8
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	movzx edx, byte [g_zoneIndex]
	mov eax, [g_zoneCount]
	mov [eax+g_zoneHandles], dl
	mov ebx, [ebp-0x328]
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov edx, [ebp-0x320]
	mov [ebx+0x40], edx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call iGetFileSize
	mov [ebx+0xa0], eax
	mov eax, [ebp-0x324]
	mov [ebx+0xa4], eax
	add dword [g_zoneCount], 0x1
	mov byte [g_loadingZone], 0x1
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz _Z9DB_Threadj_130
_Z9DB_Threadj_180:
	mov byte [g_mayRecoverLostAssets], 0x0
	cmp dword [ebp-0x320], 0x4
	jz _Z9DB_Threadj_140
	jg _Z9DB_Threadj_150
	cmp dword [ebp-0x320], 0x1
	jz _Z9DB_Threadj_140
_Z9DB_Threadj_190:
	xor eax, eax
	mov [g_zoneAllocType], eax
	mov eax, [g_zoneAllocType]
	sub eax, 0x1
	jz _Z9DB_Threadj_160
_Z9DB_Threadj_200:
	mov eax, [g_zoneAllocType]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15PMem_BeginAllocPKcj
	mov eax, [g_zoneAllocType]
	mov edx, [ebp-0x328]
	mov [edx+0x44], eax
	shr dword [ebp-0x320], 0x3
	and dword [ebp-0x320], 0x1
	mov eax, [ebp-0x320]
	mov [esp], eax
	call _Z16DB_ResetZoneSizei
	mov eax, [g_zoneAllocType]
	mov [esp+0x18], eax
	mov dword [esp+0x14], g_fileBuf
	mov dword [esp+0x10], 0x0
	mov eax, [ebp-0x328]
	add eax, 0x48
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z12DB_LoadXFilePKcPvS0_P11XZoneMemoryPFvvEPhi
	call _Z20DB_LoadXFileInternalv
	mov eax, [g_zoneAllocType]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z13PMem_EndAllocPKcj
	mov byte [g_loadingZone], 0x0
	mov byte [g_mayRecoverLostAssets], 0x1
	jmp _Z9DB_Threadj_170
_Z9DB_Threadj_130:
	mov dword [esp], 0x19
	call _Z9Sys_Sleepi
	cmp byte [g_isRecoveringLostDevice], 0x0
	jz _Z9DB_Threadj_180
	mov dword [esp], 0x19
	call _Z9Sys_Sleepi
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz _Z9DB_Threadj_130
	jmp _Z9DB_Threadj_180
_Z9DB_Threadj_150:
	cmp dword [ebp-0x320], 0x20
	jz _Z9DB_Threadj_140
	cmp dword [ebp-0x320], 0x40
	jnz _Z9DB_Threadj_190
_Z9DB_Threadj_140:
	mov eax, 0x1
	mov [g_zoneAllocType], eax
	mov eax, [g_zoneAllocType]
	sub eax, 0x1
	jnz _Z9DB_Threadj_200
_Z9DB_Threadj_160:
	cmp byte [g_initializing], 0x0
	jz _Z9DB_Threadj_200
	call _Z16Sys_Millisecondsv
	mov edi, eax
	mov dword [esp+0x4], _cstring_waiting_for_init
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	cmp byte [g_initializing], 0x0
	jz _Z9DB_Threadj_210
_Z9DB_Threadj_220:
	mov dword [esp], 0x1
	call _Z9Sys_Sleepi
	cmp byte [g_initializing], 0x0
	jnz _Z9DB_Threadj_220
_Z9DB_Threadj_210:
	call _Z16Sys_Millisecondsv
	sub eax, edi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_d_ms_for_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z9DB_Threadj_200
_Z9DB_Threadj_50:
	mov dword [esp+0x4], _cstring_mod
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z9DB_Threadj_230
	lea eax, [ebp-0x218]
	mov [esp], eax
	mov ecx, 0x100
	mov edx, 0x1
	mov eax, edi
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x218]
	mov [esp], edx
	call iCreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz _Z9DB_Threadj_240
	mov dword [ebp-0x324], 0x1
	jmp _Z9DB_Threadj_250
_Z9DB_Threadj_110:
	mov eax, [g_zoneIndex]
	jmp _Z9DB_Threadj_260
_Z9DB_Threadj_230:
	lea eax, [ebp-0x318]
	mov [esp], eax
	mov ecx, 0x100
	xor edx, edx
	mov eax, edi
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x318]
	mov [esp], edx
	call iCreateFileA
	cmp eax, 0xffffffff
	jz _Z9DB_Threadj_270
	mov [esp], eax
	call CloseHandle
	mov eax, 0x1
_Z9DB_Threadj_290:
	test al, al
	jnz _Z9DB_Threadj_240
	lea eax, [ebp-0x218]
	mov [esp], eax
	mov ecx, 0x100
	mov edx, 0x2
	mov eax, edi
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x218]
	mov [esp], edx
	call iCreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz _Z9DB_Threadj_240
	mov dword [ebp-0x324], 0x2
	jmp _Z9DB_Threadj_250
_Z9DB_Threadj_70:
	call _Z21Sys_DatabaseCompletedv
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_could_not_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z9DB_Threadj_280
_Z9DB_Threadj_270:
	xor eax, eax
	jmp _Z9DB_Threadj_290
_Z9DB_Threadj_90:
	mov dword [esp+0x4], _cstring_loading_mp_patch
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	call _Z15Win_GetLanguagev
	mov ebx, eax
	call _Z22Sys_DefaultInstallPathv
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x118]
	mov [esp], edx
	call iCreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jnz _Z9DB_Threadj_60
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z9DB_Threadj_280


;DB_SyncExternalAssets()
_Z21DB_SyncExternalAssetsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z18R_SyncRenderThreadv
	call _Z18RB_UnbindAllImagesv
	call _Z17R_ShutdownStreamsv
	call _Z19RB_ClearPixelShaderv
	call _Z20RB_ClearVertexShaderv
	leave
	jmp _Z18RB_ClearVertexDeclv
	nop


;DB_AllocXAssetHeader(XAssetType)
_Z20DB_AllocXAssetHeader10XAssetType:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov [ebp-0xc], eax
	mov edx, eax
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call dword [edx*4+DB_AllocXAssetHeaderHandler]
	mov esi, eax
	test eax, eax
	jz _Z20DB_AllocXAssetHeader10XAssetType_10
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20DB_AllocXAssetHeader10XAssetType_10:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov edx, [ebp-0xc]
	mov ebx, g_assetNames
	mov eax, [ebx+edx*4]
	mov [esp+0xc], eax
	mov eax, [edx*4+g_poolSize]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_exceeded_limit_o
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z17DB_PrintAssetName12XAssetHeaderPv
	mov eax, [ebp-0xc]
	mov [esp], eax
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	mov edx, [ebp-0xc]
	mov eax, [ebx+edx*4]
	mov [esp+0xc], eax
	mov eax, [edx*4+g_poolSize]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_exceeded_limit_o
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;DB_FreeUnusedResources()
_Z22DB_FreeUnusedResourcesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x4
	call _Z17SL_TransferSystemjj
	mov esi, db_hashTable
	mov edi, varXAsset
_Z22DB_FreeUnusedResourcesv_40:
	movzx eax, word [esi]
	movzx edx, ax
	test ax, ax
	jz _Z22DB_FreeUnusedResourcesv_10
	jmp _Z22DB_FreeUnusedResourcesv_20
_Z22DB_FreeUnusedResourcesv_30:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z22DB_FreeUnusedResourcesv_10
_Z22DB_FreeUnusedResourcesv_20:
	shl edx, 0x4
	lea ebx, [edx+g_assetEntryPool]
	cmp byte [ebx+0x8], 0x0
	jz _Z22DB_FreeUnusedResourcesv_30
	mov [edi], ebx
	call _Z11Mark_XAssetv
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z22DB_FreeUnusedResourcesv_20
_Z22DB_FreeUnusedResourcesv_10:
	add esi, 0x2
	mov eax, g_freeAssetEntryHead
	cmp eax, esi
	jnz _Z22DB_FreeUnusedResourcesv_40
	mov dword [ebp-0x1c], 0x0
_Z22DB_FreeUnusedResourcesv_90:
	mov eax, [ebp-0x1c]
	lea edi, [eax+eax+db_hashTable]
_Z22DB_FreeUnusedResourcesv_100:
	movzx eax, word [edi]
	test ax, ax
	jz _Z22DB_FreeUnusedResourcesv_50
_Z22DB_FreeUnusedResourcesv_80:
	movzx ebx, ax
	shl ebx, 0x4
	lea esi, [ebx+g_assetEntryPool]
	cmp byte [esi+0x8], 0x0
	jnz _Z22DB_FreeUnusedResourcesv_60
	cmp byte [esi+0x9], 0x0
	jz _Z22DB_FreeUnusedResourcesv_70
	mov [esp], esi
	call _Z16DB_GetXAssetNamePK6XAsset
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call _Z12SL_GetStringPKcj
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16DB_SetXAssetNameP6XAssetPKc
_Z22DB_FreeUnusedResourcesv_60:
	lea edi, [esi+0xa]
	movzx eax, word [edi]
	test ax, ax
	jnz _Z22DB_FreeUnusedResourcesv_80
_Z22DB_FreeUnusedResourcesv_50:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x8000
	jnz _Z22DB_FreeUnusedResourcesv_90
	mov dword [esp], 0x8
	call _Z17SL_ShutdownSystemj
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22DB_FreeUnusedResourcesv_70:
	movzx eax, word [esi+0xa]
	mov [edi], ax
	sub dword [g_defaultAssetCount], 0x1
	mov edx, [esi+0x4]
	mov eax, [ebx+g_assetEntryPool]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov [g_freeAssetEntryHead], esi
	mov [ebx+g_assetEntryPool], eax
	jmp _Z22DB_FreeUnusedResourcesv_100


;DB_CreateDefaultEntry(XAssetType, char const*)
_Z21DB_CreateDefaultEntry10XAssetTypePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov edi, [eax*4+g_defaultAssetName]
	mov esi, eax
	mov ebx, edi
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_10
_Z21DB_CreateDefaultEntry10XAssetTypePKc_30:
	test eax, eax
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_20
	mov edx, eax
_Z21DB_CreateDefaultEntry10XAssetTypePKc_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21DB_CreateDefaultEntry10XAssetTypePKc_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_30
	mov edx, 0x2f
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_40
_Z21DB_CreateDefaultEntry10XAssetTypePKc_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_50
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_60
_Z21DB_CreateDefaultEntry10XAssetTypePKc_70:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_60
_Z21DB_CreateDefaultEntry10XAssetTypePKc_50:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	mov edx, [ebp-0x1c]
	cmp edx, [eax+g_assetEntryPool]
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_70
	mov [esp], ebx
	call _Z16DB_GetXAssetNamePK6XAsset
	mov [esp+0x4], edi
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_80
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_50
_Z21DB_CreateDefaultEntry10XAssetTypePKc_60:
	xor ebx, ebx
_Z21DB_CreateDefaultEntry10XAssetTypePKc_180:
	test ebx, ebx
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_90
_Z21DB_CreateDefaultEntry10XAssetTypePKc_200:
	add dword [g_defaultAssetCount], 0x1
	mov edi, [g_freeAssetEntryHead]
	test edi, edi
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_100
_Z21DB_CreateDefaultEntry10XAssetTypePKc_210:
	mov eax, [edi]
	mov [g_freeAssetEntryHead], eax
	mov eax, [ebp-0x1c]
	mov [edi], eax
	mov eax, [ebp-0x1c]
	call _Z20DB_AllocXAssetHeader10XAssetType
	mov [edi+0x4], eax
	mov byte [edi+0x8], 0x0
	mov byte [edi+0x9], 0x0
	mov word [edi+0xa], 0x0
	mov word [edi+0xc], 0x0
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z20DB_GetXAssetTypeSizei
	mov edx, [edi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call memcpy
	cmp dword [ebp-0x1c], 0x7
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_110
_Z21DB_CreateDefaultEntry10XAssetTypePKc_160:
	mov esi, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_120
_Z21DB_CreateDefaultEntry10XAssetTypePKc_140:
	test eax, eax
	jz _Z21DB_CreateDefaultEntry10XAssetTypePKc_130
	mov edx, eax
_Z21DB_CreateDefaultEntry10XAssetTypePKc_150:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21DB_CreateDefaultEntry10XAssetTypePKc_120:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_140
	mov edx, 0x2f
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_150
_Z21DB_CreateDefaultEntry10XAssetTypePKc_130:
	mov edx, esi
	and edx, 0x7fff
	movzx eax, word [edx+edx+db_hashTable]
	mov [edi+0xa], ax
	mov eax, edi
	sub eax, g_assetEntryPool
	sar eax, 0x4
	mov [edx+edx+db_hashTable], ax
	mov dword [esp+0x4], 0x4
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z12SL_GetStringPKcj
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16DB_SetXAssetNameP6XAssetPKc
	mov byte [edi+0x9], 0x1
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21DB_CreateDefaultEntry10XAssetTypePKc_110:
	mov eax, [edi+0x4]
	mov dword [eax+0x8], 0x0
	mov eax, [edi+0x4]
	mov dword [eax+0x4], 0x0
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_160
_Z21DB_CreateDefaultEntry10XAssetTypePKc_170:
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
_Z21DB_CreateDefaultEntry10XAssetTypePKc_80:
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz _Z21DB_CreateDefaultEntry10XAssetTypePKc_170
	mov ebx, [ebx+0x4]
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_180
_Z21DB_CreateDefaultEntry10XAssetTypePKc_90:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov eax, [ebp-0x1c]
	sub eax, 0xa
	cmp eax, 0x1
	jbe _Z21DB_CreateDefaultEntry10XAssetTypePKc_190
	mov edx, [ebp-0x20]
	mov [esp+0x10], edx
	mov eax, g_assetNames
	mov edx, [ebp-0x1c]
	mov eax, [eax+edx*4]
	mov [esp+0xc], eax
	mov eax, [edx*4+g_defaultAssetName]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_d
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_200
_Z21DB_CreateDefaultEntry10XAssetTypePKc_100:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_210
_Z21DB_CreateDefaultEntry10XAssetTypePKc_190:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_find_the
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21DB_CreateDefaultEntry10XAssetTypePKc_200
	nop


;DB_LinkXAssetEntry(XAssetEntry*, int)
_Z18DB_LinkXAssetEntryP11XAssetEntryi:
_Z18DB_LinkXAssetEntryP11XAssetEntryi_290:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8dc
	mov [ebp-0x8b4], eax
	mov [ebp-0x8b8], edx
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov [ebp-0x8ac], eax
	cmp byte [eax], 0x2c
	setz al
	mov edi, eax
	cmp al, 0x1
	sbb dword [ebp-0x8ac], 0xffffffff
	mov edx, [ebp-0x8b4]
	mov edx, [edx]
	mov [ebp-0x8a4], edx
	mov esi, edx
	mov ebx, [ebp-0x8ac]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_10
_Z18DB_LinkXAssetEntryP11XAssetEntryi_30:
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_20
	mov edx, eax
_Z18DB_LinkXAssetEntryP11XAssetEntryi_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18DB_LinkXAssetEntryP11XAssetEntryi_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_30
	mov edx, 0x2f
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_40
_Z18DB_LinkXAssetEntryP11XAssetEntryi_20:
	and esi, 0x7fff
	mov [ebp-0x8a8], esi
	movzx eax, word [esi+esi+db_hashTable]
	movzx ebx, ax
	test ax, ax
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_50
	mov dword [ebp-0x8b0], 0x0
_Z18DB_LinkXAssetEntryP11XAssetEntryi_80:
	mov edx, [ebp-0x8b8]
	test edx, edx
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_60
	test ebx, ebx
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_70
_Z18DB_LinkXAssetEntryP11XAssetEntryi_130:
	mov ebx, [ebp-0x8a8]
	movzx eax, word [ebx+ebx+db_hashTable]
	mov esi, [ebp-0x8b4]
	mov [esi+0xa], ax
	mov eax, esi
	sub eax, g_assetEntryPool
	sar eax, 0x4
	mov [ebx+ebx+db_hashTable], ax
	mov [ebp-0x8b0], esi
	mov eax, esi
_Z18DB_LinkXAssetEntryP11XAssetEntryi_180:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18DB_LinkXAssetEntryP11XAssetEntryi_100:
	mov [esp], ecx
	call _Z16DB_GetXAssetNamePK6XAsset
	mov edx, [ebp-0x8ac]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_80
	mov ecx, [ebp-0x8b0]
_Z18DB_LinkXAssetEntryP11XAssetEntryi_90:
	movzx eax, word [ecx+0xa]
	movzx ebx, ax
	test ax, ax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_80
_Z18DB_LinkXAssetEntryP11XAssetEntryi_50:
	mov eax, ebx
	shl eax, 0x4
	lea ecx, [eax+g_assetEntryPool]
	mov [ebp-0x8b0], ecx
	mov esi, [ebp-0x8a4]
	cmp esi, [eax+g_assetEntryPool]
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_90
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_100
_Z18DB_LinkXAssetEntryP11XAssetEntryi_60:
	mov eax, edi
	test al, al
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_110
	mov edx, [ebp-0x8b4]
	mov esi, [edx]
	mov edi, [edx+0x4]
	mov ecx, [g_zoneIndex]
	mov [ebp-0x8a0], ecx
	mov eax, [g_freeAssetEntryHead]
	mov [ebp-0x89c], eax
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_120
	mov edx, eax
_Z18DB_LinkXAssetEntryP11XAssetEntryi_320:
	mov [ebp-0x8b4], edx
	mov eax, [edx]
	mov [g_freeAssetEntryHead], eax
	mov [edx], esi
	mov eax, esi
	call _Z20DB_AllocXAssetHeader10XAssetType
	mov ecx, [ebp-0x8b4]
	mov [ecx+0x4], eax
	movzx eax, byte [ebp-0x8a0]
	mov [ecx+0x8], al
	mov byte [ecx+0x9], 0x0
	mov word [ecx+0xa], 0x0
	mov word [ecx+0xc], 0x0
	mov [esp], esi
	call _Z20DB_GetXAssetTypeSizei
	mov ecx, [ebp-0x8b4]
	mov edx, [ecx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call memcpy
	test ebx, ebx
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_130
_Z18DB_LinkXAssetEntryP11XAssetEntryi_70:
	mov eax, [ebp-0x8b0]
	cmp byte [eax+0x8], 0x0
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_140
	mov eax, [ebp-0x8b8]
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_150
	sub dword [g_defaultAssetCount], 0x1
	mov ebx, [ebp-0x8b0]
	cmp byte [ebx+0x9], 0x0
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_160
	mov esi, ebx
_Z18DB_LinkXAssetEntryP11XAssetEntryi_310:
	xor ebx, ebx
	cmp byte [esi+0x8], 0x0
	setz bl
	mov eax, [esi]
	mov edx, [ebp-0x8b4]
	mov ecx, [edx+0x4]
	mov edx, [esi+0x4]
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_170
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
_Z18DB_LinkXAssetEntryP11XAssetEntryi_170:
	mov ecx, [ebp-0x8b4]
	mov eax, [ecx]
	mov [esp], eax
	call _Z20DB_GetXAssetTypeSizei
	mov ebx, [ebp-0x8b4]
	mov edx, [ebx+0x4]
	mov esi, [ebp-0x8b0]
	mov ecx, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	movzx eax, byte [ebx+0x8]
	mov [esi+0x8], al
	mov edx, [ebx+0x4]
	mov eax, [ebx]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov [g_freeAssetEntryHead], ebx
	mov [ebx], eax
	mov eax, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_180
_Z18DB_LinkXAssetEntryP11XAssetEntryi_110:
	test ebx, ebx
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_190
	mov eax, [ebp-0x8b0]
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18DB_LinkXAssetEntryP11XAssetEntryi_140:
	mov edx, [ebp-0x8a4]
	mov eax, [edx*4+g_defaultAssetName]
	cmp byte [eax], 0x0
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_200
	cmp edx, 0x1f
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_200
	cmp edx, 0xf
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_200
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov ecx, [ebp-0x8b4]
	movzx eax, byte [ecx+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones]
	mov [esp+0x10], edx
	mov ebx, [ebp-0x8b0]
	movzx eax, byte [ebx+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones]
	mov [esp+0xc], edx
	mov esi, [ebp-0x8ac]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_attempting_to_ov
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18DB_LinkXAssetEntryP11XAssetEntryi_200:
	mov eax, [ebp-0x8b4]
	movzx edi, byte [eax+0x8]
	mov edx, edi
	movzx eax, dl
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea ecx, [edx*8]
	mov ebx, [ebp-0x8b0]
	movzx eax, byte [ebx+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov eax, [ecx+g_zones+0x40]
	cmp eax, [edx*8+g_zones+0x40]
	jge _Z18DB_LinkXAssetEntryP11XAssetEntryi_210
	mov esi, ebx
	add esi, 0xc
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_220
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	movzx eax, byte [ebx+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov eax, [edx*8+g_zones+0x40]
	cmp eax, [ecx+g_zones+0x40]
	jle _Z18DB_LinkXAssetEntryP11XAssetEntryi_220
_Z18DB_LinkXAssetEntryP11XAssetEntryi_230:
	lea esi, [ebx+0xc]
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_220
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	movzx eax, byte [ebx+0x8]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*4]
	mov edx, edi
	movzx eax, dl
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov eax, [ecx*8+g_zones+0x40]
	cmp eax, [edx*8+g_zones+0x40]
	jg _Z18DB_LinkXAssetEntryP11XAssetEntryi_230
_Z18DB_LinkXAssetEntryP11XAssetEntryi_220:
	movzx eax, word [esi]
	mov ecx, [ebp-0x8b4]
	mov [ecx+0xc], ax
	sub ecx, g_assetEntryPool
	mov [ebp-0x8b4], ecx
	sar ecx, 0x4
	mov [esi], cx
	mov eax, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_180
_Z18DB_LinkXAssetEntryP11XAssetEntryi_190:
	mov edx, [ebp-0x8ac]
	mov eax, [ebp-0x8a4]
	call _Z21DB_CreateDefaultEntry10XAssetTypePKc
	mov [ebp-0x8b0], eax
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18DB_LinkXAssetEntryP11XAssetEntryi_210:
	mov eax, [ebp-0x8b8]
	test eax, eax
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_240
_Z18DB_LinkXAssetEntryP11XAssetEntryi_150:
	mov eax, [g_sync]
	test eax, eax
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_250
	cmp dword [g_copyInfoCount], 0x7ff
	ja _Z18DB_LinkXAssetEntryP11XAssetEntryi_260
_Z18DB_LinkXAssetEntryP11XAssetEntryi_300:
	mov eax, [g_copyInfoCount]
	mov edx, [ebp-0x8b4]
	mov [eax*4+g_copyInfo], edx
	add eax, 0x1
	mov [g_copyInfoCount], eax
	mov eax, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_180
_Z18DB_LinkXAssetEntryP11XAssetEntryi_240:
	mov eax, [ebp-0x8b0]
	cmp byte [eax+0x9], 0x0
	jnz _Z18DB_LinkXAssetEntryP11XAssetEntryi_270
	mov ecx, eax
_Z18DB_LinkXAssetEntryP11XAssetEntryi_330:
	movzx eax, word [ecx+0xc]
	mov ebx, [ebp-0x8b4]
	mov [ebx+0xc], ax
	mov eax, ebx
	sub eax, g_assetEntryPool
	sar eax, 0x4
	mov [ecx+0xc], ax
	mov eax, [ecx]
	mov [esp], eax
	call _Z20DB_GetXAssetTypeSizei
	mov esi, [ebp-0x8b0]
	mov edx, [esi+0x4]
	lea edi, [ebp-0x890]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov eax, [ebp-0x8b0]
	movzx esi, byte [eax+0x8]
	mov edx, esi
	xor ebx, ebx
	test dl, dl
	setz bl
	mov ecx, [ebp-0x8b0]
	mov eax, [ecx]
	mov edx, [ebp-0x8b4]
	mov ecx, [edx+0x4]
	mov edx, [ebp-0x8b0]
	mov edx, [edx+0x4]
	mov [ebp-0x8bc], edx
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz _Z18DB_LinkXAssetEntryP11XAssetEntryi_280
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
_Z18DB_LinkXAssetEntryP11XAssetEntryi_280:
	mov ecx, [ebp-0x8b4]
	mov eax, [ecx]
	mov [esp], eax
	call _Z20DB_GetXAssetTypeSizei
	mov ebx, [ebp-0x8b4]
	mov edx, [ebx+0x4]
	mov ebx, [ebp-0x8b0]
	mov ecx, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	mov edx, [ebp-0x8b4]
	movzx eax, byte [edx+0x8]
	mov [ebx+0x8], al
	mov ecx, [ebp-0x8a4]
	mov [esp], ecx
	call _Z20DB_GetXAssetTypeSizei
	mov ebx, [ebp-0x8b4]
	mov edx, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call memcpy
	mov eax, esi
	mov [ebx+0x8], al
	mov eax, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_180
_Z18DB_LinkXAssetEntryP11XAssetEntryi_250:
	mov edx, 0x1
	mov eax, [ebp-0x8b4]
	call _Z18DB_LinkXAssetEntryP11XAssetEntryi_290
	mov eax, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_180
_Z18DB_LinkXAssetEntryP11XAssetEntryi_260:
	mov dword [esp], _cstring_g_copyinfo_excee
	call _Z9Sys_ErrorPKcz
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_300
_Z18DB_LinkXAssetEntryP11XAssetEntryi_160:
	mov eax, varXAsset
	mov [eax], ebx
	call _Z11Mark_XAssetv
	mov esi, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_310
_Z18DB_LinkXAssetEntryP11XAssetEntryi_120:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x89c]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_320
_Z18DB_LinkXAssetEntryP11XAssetEntryi_270:
	mov edx, eax
	mov eax, varXAsset
	mov [eax], edx
	call _Z11Mark_XAssetv
	mov ecx, [ebp-0x8b0]
	jmp _Z18DB_LinkXAssetEntryP11XAssetEntryi_330
	nop


;DB_UnloadXZone(unsigned int, unsigned char)
_Z14DB_UnloadXZonejh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov [ebp-0x2d], dl
	mov dword [ebp-0x28], 0x0
_Z14DB_UnloadXZonejh_70:
	mov eax, [ebp-0x28]
	lea edi, [eax+eax+db_hashTable]
_Z14DB_UnloadXZonejh_270:
	movzx eax, word [edi]
	test ax, ax
	jz _Z14DB_UnloadXZonejh_10
_Z14DB_UnloadXZonejh_60:
	movzx eax, ax
	shl eax, 0x4
	add eax, g_assetEntryPool
	mov [ebp-0x24], eax
	mov edx, eax
	movzx eax, byte [eax+0x8]
	cmp eax, [ebp-0x2c]
	jz _Z14DB_UnloadXZonejh_20
_Z14DB_UnloadXZonejh_200:
	mov edi, [ebp-0x24]
	add edi, 0xc
_Z14DB_UnloadXZonejh_90:
	movzx eax, word [edi]
	test ax, ax
	jz _Z14DB_UnloadXZonejh_30
_Z14DB_UnloadXZonejh_50:
	movzx ebx, ax
	shl ebx, 0x4
	lea esi, [ebx+g_assetEntryPool]
	movzx eax, byte [esi+0x8]
	cmp [ebp-0x2c], eax
	jz _Z14DB_UnloadXZonejh_40
	lea edi, [esi+0xc]
	movzx eax, word [edi]
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_50
_Z14DB_UnloadXZonejh_30:
	mov edi, [ebp-0x24]
	add edi, 0xa
	movzx eax, word [edi]
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_60
_Z14DB_UnloadXZonejh_10:
	add dword [ebp-0x28], 0x1
	cmp dword [ebp-0x28], 0x8000
	jnz _Z14DB_UnloadXZonejh_70
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14DB_UnloadXZonejh_40:
	mov eax, [ebx+g_assetEntryPool]
	mov ecx, [eax*4+DB_RemoveXAssetHandler]
	test ecx, ecx
	jz _Z14DB_UnloadXZonejh_80
	mov edx, [eax*4+DB_RemoveXAssetHandler]
	mov eax, [esi+0x4]
	mov [esp], eax
	call edx
_Z14DB_UnloadXZonejh_80:
	movzx eax, word [esi+0xc]
	mov [edi], ax
	mov edx, [esi+0x4]
	mov eax, [ebx+g_assetEntryPool]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov [g_freeAssetEntryHead], esi
	mov [ebx+g_assetEntryPool], eax
	jmp _Z14DB_UnloadXZonejh_90
_Z14DB_UnloadXZonejh_20:
	cmp byte [edx+0x9], 0x0
	jz _Z14DB_UnloadXZonejh_100
	cmp byte [ebp-0x2d], 0x0
	jnz _Z14DB_UnloadXZonejh_110
_Z14DB_UnloadXZonejh_100:
	mov ecx, [ebp-0x24]
	mov eax, [ecx]
	mov ebx, [eax*4+DB_RemoveXAssetHandler]
	test ebx, ebx
	jz _Z14DB_UnloadXZonejh_120
	mov edx, [eax*4+DB_RemoveXAssetHandler]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call edx
	mov edx, [ebp-0x24]
_Z14DB_UnloadXZonejh_210:
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_130
	cmp byte [ebp-0x2d], 0x0
	jz _Z14DB_UnloadXZonejh_140
	mov ecx, [ebp-0x24]
	mov ecx, [ecx]
	mov [ebp-0x20], ecx
	mov eax, [ecx*4+g_defaultAssetName]
	mov [ebp-0x1c], eax
	mov esi, ecx
	mov ebx, eax
	jmp _Z14DB_UnloadXZonejh_150
_Z14DB_UnloadXZonejh_170:
	test eax, eax
	jz _Z14DB_UnloadXZonejh_160
	mov edx, eax
_Z14DB_UnloadXZonejh_180:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z14DB_UnloadXZonejh_150:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z14DB_UnloadXZonejh_170
	mov edx, 0x2f
	jmp _Z14DB_UnloadXZonejh_180
_Z14DB_UnloadXZonejh_130:
	mov esi, edx
	shl esi, 0x4
	lea ebx, [esi+g_assetEntryPool]
	mov eax, [ebp-0x24]
	cmp byte [eax+0x8], 0x0
	setz al
	movzx edi, al
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov ecx, [ebx+0x4]
	mov edx, [edx+0x4]
	mov [ebp-0x3c], edx
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz _Z14DB_UnloadXZonejh_190
	mov [esp+0x8], edi
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
_Z14DB_UnloadXZonejh_190:
	mov eax, [esi+g_assetEntryPool]
	mov [esp], eax
	call _Z20DB_GetXAssetTypeSizei
	mov edx, [ebx+0x4]
	mov edi, [ebp-0x24]
	mov ecx, [edi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	movzx eax, byte [ebx+0x8]
	mov [edi+0x8], al
	movzx eax, word [ebx+0xc]
	mov [edi+0xc], ax
	mov edx, [ebx+0x4]
	mov eax, [esi+g_assetEntryPool]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov [g_freeAssetEntryHead], ebx
	mov [esi+g_assetEntryPool], eax
	jmp _Z14DB_UnloadXZonejh_200
_Z14DB_UnloadXZonejh_120:
	mov edx, ecx
	jmp _Z14DB_UnloadXZonejh_210
_Z14DB_UnloadXZonejh_160:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_220
	jmp _Z14DB_UnloadXZonejh_230
_Z14DB_UnloadXZonejh_240:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z14DB_UnloadXZonejh_230
_Z14DB_UnloadXZonejh_220:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	mov edx, [ebp-0x20]
	cmp edx, [eax+g_assetEntryPool]
	jnz _Z14DB_UnloadXZonejh_240
	mov [esp], ebx
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14DB_UnloadXZonejh_250
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_220
_Z14DB_UnloadXZonejh_230:
	xor esi, esi
	test esi, esi
	jnz _Z14DB_UnloadXZonejh_260
_Z14DB_UnloadXZonejh_290:
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0xa]
	mov [edi], ax
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x4]
	mov eax, [ecx]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov edx, [ebp-0x24]
	mov [g_freeAssetEntryHead], edx
	mov [edx], eax
	mov ecx, [ebp-0x20]
	mov eax, [ecx*4+g_defaultAssetName]
	cmp byte [eax], 0x0
	jz _Z14DB_UnloadXZonejh_270
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov eax, g_assetNames
	mov edx, [ebp-0x20]
	mov eax, [eax+edx*4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_could_not_load_d1
	call _Z9Sys_ErrorPKcz
	jmp _Z14DB_UnloadXZonejh_270
_Z14DB_UnloadXZonejh_280:
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
_Z14DB_UnloadXZonejh_250:
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz _Z14DB_UnloadXZonejh_280
	mov esi, [ebx+0x4]
	test esi, esi
	jz _Z14DB_UnloadXZonejh_290
_Z14DB_UnloadXZonejh_260:
	add dword [g_defaultAssetCount], 0x1
	mov ecx, [ebp-0x24]
	mov byte [ecx+0x8], 0x0
	mov [esp], ecx
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov edi, [ebp-0x20]
	mov [esp], edi
	call _Z20DB_GetXAssetTypeSizei
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	mov [esp+0x4], ebx
	mov edi, [ebp-0x24]
	mov [esp], edi
	call _Z16DB_SetXAssetNameP6XAssetPKc
	jmp _Z14DB_UnloadXZonejh_200
_Z14DB_UnloadXZonejh_140:
	mov ecx, [ebp-0x24]
	movzx eax, word [ecx+0xa]
	mov [edi], ax
	mov edx, [ecx+0x4]
	mov eax, [ecx]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov edx, [ebp-0x24]
	mov [g_freeAssetEntryHead], edx
	mov [edx], eax
	jmp _Z14DB_UnloadXZonejh_270
_Z14DB_UnloadXZonejh_110:
	mov eax, varXAsset
	mov [eax], edx
	call _Z11Mark_XAssetv
	jmp _Z14DB_UnloadXZonejh_100


;DB_AddXAsset(XAssetType, XAssetHeader)
_Z12DB_AddXAsset10XAssetType12XAssetHeader:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov [ebp-0x18], eax
	mov [ebp-0x14], edx
	jmp _Z12DB_AddXAsset10XAssetType12XAssetHeader_10
_Z12DB_AddXAsset10XAssetType12XAssetHeader_30:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z12DB_AddXAsset10XAssetType12XAssetHeader_20:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z12DB_AddXAsset10XAssetType12XAssetHeader_10:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z12DB_AddXAsset10XAssetType12XAssetHeader_20
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z12DB_AddXAsset10XAssetType12XAssetHeader_30
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z12DB_AddXAsset10XAssetType12XAssetHeader_30
	lea eax, [ebp-0x18]
	xor edx, edx
	call _Z18DB_LinkXAssetEntryP11XAssetEntryi
	mov ebx, eax
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	cmp byte [g_isRecoveringLostDevice], 0x0
	jz _Z12DB_AddXAsset10XAssetType12XAssetHeader_40
	mov byte [g_mayRecoverLostAssets], 0x1
_Z12DB_AddXAsset10XAssetType12XAssetHeader_50:
	mov dword [esp], 0x19
	call _Z9Sys_Sleepi
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz _Z12DB_AddXAsset10XAssetType12XAssetHeader_50
_Z12DB_AddXAsset10XAssetType12XAssetHeader_40:
	mov eax, [ebx+0x4]
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;DB_PostLoadXZone()
_Z16DB_PostLoadXZonev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call _Z20Sys_IsDatabaseReady2v
	test eax, eax
	jnz _Z16DB_PostLoadXZonev_10
	mov eax, [g_copyInfoCount]
	test eax, eax
	jz _Z16DB_PostLoadXZonev_20
	cmp byte [g_archiveBuf], 0x0
	jnz _Z16DB_PostLoadXZonev_30
	jmp _Z16DB_PostLoadXZonev_40
_Z16DB_PostLoadXZonev_60:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z16DB_PostLoadXZonev_50:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z16DB_PostLoadXZonev_30:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z16DB_PostLoadXZonev_50
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z16DB_PostLoadXZonev_60
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z16DB_PostLoadXZonev_60
	mov eax, [g_copyInfoCount]
	test eax, eax
	jnz _Z16DB_PostLoadXZonev_70
_Z16DB_PostLoadXZonev_90:
	mov dword [g_copyInfoCount], 0x0
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	call _Z35Material_DirtyTechniqueSetOverridesv
	call _Z30Material_OverrideTechniqueSetsv
	mov byte [g_archiveBuf], 0x0
	call _Z13DB_LoadSoundsv
	call _Z12DB_LoadDObjsv
_Z16DB_PostLoadXZonev_20:
	call _Z35Material_DirtyTechniqueSetOverridesv
	call _Z23BG_FillInAllWeaponItemsv
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z22Sys_DatabaseCompleted2v
_Z16DB_PostLoadXZonev_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16DB_PostLoadXZonev_40:
	mov byte [g_archiveBuf], 0x1
	call _Z18R_SyncRenderThreadv
	call _Z30R_ClearAllStaticModelCacheRefsv
	call _Z13DB_SaveSoundsv
	call _Z12DB_SaveDObjsv
	jmp _Z16DB_PostLoadXZonev_30
_Z16DB_PostLoadXZonev_70:
	xor esi, esi
	mov ebx, g_copyInfo
_Z16DB_PostLoadXZonev_80:
	mov edx, 0x1
	mov eax, [ebx]
	call _Z18DB_LinkXAssetEntryP11XAssetEntryi
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [g_copyInfoCount]
	jb _Z16DB_PostLoadXZonev_80
	jmp _Z16DB_PostLoadXZonev_90
	nop


;DB_Cleanup()
_Z10DB_Cleanupv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z16Sys_SyncDatabasev
	nop


;DB_FileSize(char const*, FF_DIR)
_Z11DB_FileSizePKc6FF_DIR:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call iCreateFileA
	mov ebx, eax
	cmp eax, 0xffffffff
	jz _Z11DB_FileSizePKc6FF_DIR_10
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call iGetFileSize
	mov esi, eax
	mov [esp], ebx
	call CloseHandle
	mov eax, esi
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
_Z11DB_FileSizePKc6FF_DIR_10:
	xor esi, esi
	mov eax, esi
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DB_FileExists(char const*, FF_DIR)
_Z13DB_FileExistsPKc6FF_DIR:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call iCreateFileA
	cmp eax, 0xffffffff
	jz _Z13DB_FileExistsPKc6FF_DIR_10
	mov [esp], eax
	call CloseHandle
	mov eax, 0x1
	add esp, 0x124
	pop ebx
	pop ebp
	ret
_Z13DB_FileExistsPKc6FF_DIR_10:
	xor eax, eax
	add esp, 0x124
	pop ebx
	pop ebp
	ret
	nop


;DB_InitThread()
_Z13DB_InitThreadv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _Z9DB_Threadj
	call _Z23Sys_SpawnDatabaseThreadPFvjE
	test al, al
	jz _Z13DB_InitThreadv_10
	leave
	ret
_Z13DB_InitThreadv_10:
	mov dword [esp], _cstring_failed_to_create
	call _Z9Sys_ErrorPKcz
	leave
	ret


;DB_LoadXAssets(XZoneInfo*, unsigned int, int)
_Z14DB_LoadXAssetsP9XZoneInfoji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov [ebp-0x4c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x50], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x54], eax
	cmp byte [g_zoneInited], 0x0
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_10
	mov byte [g_zoneInited], 0x1
	xor esi, esi
	xor ebx, ebx
_Z14DB_LoadXAssetsP9XZoneInfoji_30:
	mov edx, [ebx+DB_XAssetPool]
	test edx, edx
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_20
	mov eax, [ebx+g_poolSize]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ebx+DB_InitPoolHeaderHandler]
_Z14DB_LoadXAssetsP9XZoneInfoji_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x21
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_30
	mov dword [g_freeAssetEntryHead], g_assetEntryPool+0x10
	mov ecx, 0x1
	mov edx, g_assetEntryPool
	mov eax, g_assetEntryPool+0x10
_Z14DB_LoadXAssetsP9XZoneInfoji_40:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x10], eax
	add edx, 0x10
	cmp ecx, 0x7fff
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_40
	mov dword [g_assetEntryPool+0x7fff0], 0x0
_Z14DB_LoadXAssetsP9XZoneInfoji_10:
	call _Z30Material_ClearShaderUploadListv
	call _Z16Sys_SyncDatabasev
	call _Z16DB_PostLoadXZonev
	mov eax, [ebp-0x50]
	test eax, eax
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_50
	mov edx, [ebp-0x4c]
	mov [ebp-0x20], edx
	mov dword [ebp-0x48], 0x0
	xor edi, edi
_Z14DB_LoadXAssetsP9XZoneInfoji_140:
	mov eax, [ebp-0x20]
	mov eax, [eax+0x8]
	mov [ebp-0x44], eax
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_60
	lea esi, [eax+g_zoneHandles]
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_70
_Z14DB_LoadXAssetsP9XZoneInfoji_90:
	mov edx, 0x1
	mov eax, ebx
	call _Z14DB_UnloadXZonejh
_Z14DB_LoadXAssetsP9XZoneInfoji_80:
	sub esi, 0x1
	cmp esi, g_zoneIndex+0x1f
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_60
_Z14DB_LoadXAssetsP9XZoneInfoji_70:
	movzx ebx, byte [esi]
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*4]
	mov edx, [ebp-0x44]
	test [eax*8+g_zones+0x40], edx
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_80
	mov eax, edi
	test al, al
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_90
	call _Z21DB_SyncExternalAssetsv
	cmp byte [g_archiveBuf], 0x0
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_100
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_110
_Z14DB_LoadXAssetsP9XZoneInfoji_130:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z14DB_LoadXAssetsP9XZoneInfoji_120:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z14DB_LoadXAssetsP9XZoneInfoji_100:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_120
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_130
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_130
	mov edi, 0x1
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_90
_Z14DB_LoadXAssetsP9XZoneInfoji_60:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x20], 0xc
	mov edx, [ebp-0x48]
	cmp [ebp-0x50], edx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_140
	mov eax, edi
	test al, al
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_50
	call _Z22DB_FreeUnusedResourcesv
	mov edx, [ebp-0x4c]
	mov [ebp-0x24], edx
	mov dword [ebp-0x1c], 0x0
_Z14DB_LoadXAssetsP9XZoneInfoji_500:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
	test dl, 0x40
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_150
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_150
	add ecx, g_zoneHandles
	mov [ebp-0x28], ecx
	mov esi, eax
	mov edx, ecx
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_160
_Z14DB_LoadXAssetsP9XZoneInfoji_180:
	sub dword [ebp-0x28], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_170
_Z14DB_LoadXAssetsP9XZoneInfoji_200:
	mov edx, [ebp-0x28]
_Z14DB_LoadXAssetsP9XZoneInfoji_160:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x58], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x40
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_180
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x58]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle _Z14DB_LoadXAssetsP9XZoneInfoji_180
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
_Z14DB_LoadXAssetsP9XZoneInfoji_190:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_190
	sub dword [ebp-0x28], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_200
_Z14DB_LoadXAssetsP9XZoneInfoji_170:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
_Z14DB_LoadXAssetsP9XZoneInfoji_150:
	test dl, 0x20
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_210
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_210
	add ecx, g_zoneHandles
	mov [ebp-0x2c], ecx
	mov esi, eax
	mov edx, ecx
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_220
_Z14DB_LoadXAssetsP9XZoneInfoji_240:
	sub dword [ebp-0x2c], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_230
_Z14DB_LoadXAssetsP9XZoneInfoji_260:
	mov edx, [ebp-0x2c]
_Z14DB_LoadXAssetsP9XZoneInfoji_220:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x5c], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x20
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_240
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x5c]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle _Z14DB_LoadXAssetsP9XZoneInfoji_240
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
_Z14DB_LoadXAssetsP9XZoneInfoji_250:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_250
	sub dword [ebp-0x2c], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_260
_Z14DB_LoadXAssetsP9XZoneInfoji_230:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
_Z14DB_LoadXAssetsP9XZoneInfoji_210:
	test dl, 0x10
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_270
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_270
	add ecx, g_zoneHandles
	mov [ebp-0x30], ecx
	mov esi, eax
	mov edx, ecx
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_280
_Z14DB_LoadXAssetsP9XZoneInfoji_300:
	sub dword [ebp-0x30], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_290
_Z14DB_LoadXAssetsP9XZoneInfoji_320:
	mov edx, [ebp-0x30]
_Z14DB_LoadXAssetsP9XZoneInfoji_280:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x60], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x10
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_300
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x60]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle _Z14DB_LoadXAssetsP9XZoneInfoji_300
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
_Z14DB_LoadXAssetsP9XZoneInfoji_310:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_310
	sub dword [ebp-0x30], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_320
_Z14DB_LoadXAssetsP9XZoneInfoji_290:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
_Z14DB_LoadXAssetsP9XZoneInfoji_270:
	test dl, 0x8
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_330
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_330
	add ecx, g_zoneHandles
	mov [ebp-0x34], ecx
	mov esi, eax
	mov edx, ecx
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_340
_Z14DB_LoadXAssetsP9XZoneInfoji_360:
	sub dword [ebp-0x34], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_350
_Z14DB_LoadXAssetsP9XZoneInfoji_380:
	mov edx, [ebp-0x34]
_Z14DB_LoadXAssetsP9XZoneInfoji_340:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x64], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x8
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_360
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x64]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp edi, eax
	jge _Z14DB_LoadXAssetsP9XZoneInfoji_360
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
_Z14DB_LoadXAssetsP9XZoneInfoji_370:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp edx, ecx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_370
	sub dword [ebp-0x34], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_380
_Z14DB_LoadXAssetsP9XZoneInfoji_350:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
_Z14DB_LoadXAssetsP9XZoneInfoji_330:
	test dl, 0x4
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_390
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_390
	add ecx, g_zoneHandles
	mov [ebp-0x38], ecx
	mov esi, eax
	mov edx, ecx
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_400
_Z14DB_LoadXAssetsP9XZoneInfoji_420:
	sub dword [ebp-0x38], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_410
_Z14DB_LoadXAssetsP9XZoneInfoji_440:
	mov edx, [ebp-0x38]
_Z14DB_LoadXAssetsP9XZoneInfoji_400:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x68], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x4
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_420
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x68]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle _Z14DB_LoadXAssetsP9XZoneInfoji_420
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [eax+edx]
_Z14DB_LoadXAssetsP9XZoneInfoji_430:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp ecx, edx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_430
	sub dword [ebp-0x38], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_440
_Z14DB_LoadXAssetsP9XZoneInfoji_410:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
_Z14DB_LoadXAssetsP9XZoneInfoji_390:
	and dl, 0x1
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_450
	mov eax, [g_zoneCount]
	mov edx, eax
	sub edx, 0x1
	js _Z14DB_LoadXAssetsP9XZoneInfoji_450
	add edx, g_zoneHandles
	mov [ebp-0x3c], edx
	mov esi, eax
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_460
_Z14DB_LoadXAssetsP9XZoneInfoji_470:
	sub dword [ebp-0x3c], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_450
_Z14DB_LoadXAssetsP9XZoneInfoji_490:
	mov edx, [ebp-0x3c]
_Z14DB_LoadXAssetsP9XZoneInfoji_460:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x6c], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x1
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_470
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov eax, [ebp-0x6c]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle _Z14DB_LoadXAssetsP9XZoneInfoji_470
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [eax+edx]
_Z14DB_LoadXAssetsP9XZoneInfoji_480:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp ecx, edx
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_480
	sub dword [ebp-0x3c], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_490
_Z14DB_LoadXAssetsP9XZoneInfoji_450:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x24], 0xc
	mov eax, [ebp-0x1c]
	cmp [ebp-0x50], eax
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_500
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov byte [g_archiveBuf], 0x0
	call _Z13DB_LoadSoundsv
	call _Z12DB_LoadDObjsv
	call _Z35Material_DirtyTechniqueSetOverridesv
	call _Z23BG_FillInAllWeaponItemsv
_Z14DB_LoadXAssetsP9XZoneInfoji_50:
	mov eax, [ebp-0x54]
	test eax, eax
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_510
	cmp byte [g_archiveBuf], 0x0
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_520
_Z14DB_LoadXAssetsP9XZoneInfoji_510:
	mov edx, [ebp-0x54]
	mov [g_sync], edx
	cmp dword [g_zoneCount], 0x20
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_530
_Z14DB_LoadXAssetsP9XZoneInfoji_580:
	mov eax, [ebp-0x50]
	test eax, eax
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_540
	mov esi, [ebp-0x4c]
	mov dword [ebp-0x40], 0x0
	xor edi, edi
	mov dword [ebp-0x70], 0x0
_Z14DB_LoadXAssetsP9XZoneInfoji_560:
	mov eax, [esi]
	test eax, eax
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_550
	mov ebx, [ebp-0x70]
	add ebx, g_zoneInfo
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_loading_fastfile
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [esi+0x4]
	mov edx, [ebp-0x70]
	mov [edx+g_zoneInfo+0x40], eax
	add edi, 0x1
	add edx, 0x44
	mov [ebp-0x70], edx
_Z14DB_LoadXAssetsP9XZoneInfoji_550:
	add dword [ebp-0x40], 0x1
	add esi, 0xc
	mov eax, [ebp-0x40]
	cmp [ebp-0x50], eax
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_560
	test edi, edi
	jz _Z14DB_LoadXAssetsP9XZoneInfoji_540
	mov eax, g_loadingAssets
	mov [eax], edi
	call _Z17Sys_WakeDatabase2v
	call _Z16Sys_WakeDatabasev
	mov [g_zoneInfoCount], edi
	call _Z18Sys_NotifyDatabasev
_Z14DB_LoadXAssetsP9XZoneInfoji_540:
	mov eax, [ebp-0x54]
	test eax, eax
	jnz _Z14DB_LoadXAssetsP9XZoneInfoji_570
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14DB_LoadXAssetsP9XZoneInfoji_110:
	mov byte [g_archiveBuf], 0x1
	call _Z18R_SyncRenderThreadv
	call _Z30R_ClearAllStaticModelCacheRefsv
	call _Z13DB_SaveSoundsv
	call _Z12DB_SaveDObjsv
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_100
_Z14DB_LoadXAssetsP9XZoneInfoji_570:
	call _Z16Sys_SyncDatabasev
	mov byte [g_archiveBuf], 0x0
	call _Z13DB_LoadSoundsv
	call _Z12DB_LoadDObjsv
	call _Z35Material_DirtyTechniqueSetOverridesv
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z23BG_FillInAllWeaponItemsv
_Z14DB_LoadXAssetsP9XZoneInfoji_520:
	mov byte [g_archiveBuf], 0x1
	call _Z18R_SyncRenderThreadv
	call _Z30R_ClearAllStaticModelCacheRefsv
	call _Z13DB_SaveSoundsv
	call _Z12DB_SaveDObjsv
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_510
_Z14DB_LoadXAssetsP9XZoneInfoji_530:
	mov dword [esp+0x4], _cstring_max_zone_count_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14DB_LoadXAssetsP9XZoneInfoji_580
	nop


;DB_SyncXAssets()
_Z14DB_SyncXAssetsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_SyncDatabasev
	leave
	jmp _Z16DB_PostLoadXZonev
	nop


;Load_FontAsset(Font_s**)
_Z14Load_FontAssetPP6Font_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x13
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MenuAsset(menuDef_t**)
_Z14Load_MenuAssetPP9menuDef_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov edx, ebx
	mov eax, 0x15
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [esi], eax
	mov eax, [ebx+0xa4]
	test eax, eax
	jle _Z14Load_MenuAssetPP9menuDef_t_10
	xor ecx, ecx
_Z14Load_MenuAssetPP9menuDef_t_20:
	mov eax, [ebx+0x118]
	mov edx, [eax+ecx*4]
	mov eax, [esi]
	mov [edx+0xe8], eax
	add ecx, 0x1
	cmp [ebx+0xa4], ecx
	jg _Z14Load_MenuAssetPP9menuDef_t_20
_Z14Load_MenuAssetPP9menuDef_t_10:
	pop ebx
	pop esi
	pop ebp
	ret


;Mark_FontAsset(Font_s*)
_Z14Mark_FontAssetP6Font_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x13
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x13
	jmp _Z14Mark_FontAssetP6Font_s_10
_Z14Mark_FontAssetP6Font_s_30:
	test eax, eax
	jz _Z14Mark_FontAssetP6Font_s_20
	mov edx, eax
_Z14Mark_FontAssetP6Font_s_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z14Mark_FontAssetP6Font_s_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z14Mark_FontAssetP6Font_s_30
	mov edx, 0x2f
	jmp _Z14Mark_FontAssetP6Font_s_40
_Z14Mark_FontAssetP6Font_s_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x13
	jz _Z14Mark_FontAssetP6Font_s_50
_Z14Mark_FontAssetP6Font_s_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x13
	jnz _Z14Mark_FontAssetP6Font_s_60
_Z14Mark_FontAssetP6Font_s_50:
	cmp [edx+0x4], edi
	jnz _Z14Mark_FontAssetP6Font_s_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MenuAsset(menuDef_t*)
_Z14Mark_MenuAssetP9menuDef_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x15
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x15
	jmp _Z14Mark_MenuAssetP9menuDef_t_10
_Z14Mark_MenuAssetP9menuDef_t_30:
	test eax, eax
	jz _Z14Mark_MenuAssetP9menuDef_t_20
	mov edx, eax
_Z14Mark_MenuAssetP9menuDef_t_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z14Mark_MenuAssetP9menuDef_t_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z14Mark_MenuAssetP9menuDef_t_30
	mov edx, 0x2f
	jmp _Z14Mark_MenuAssetP9menuDef_t_40
_Z14Mark_MenuAssetP9menuDef_t_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x15
	jz _Z14Mark_MenuAssetP9menuDef_t_50
_Z14Mark_MenuAssetP9menuDef_t_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x15
	jnz _Z14Mark_MenuAssetP9menuDef_t_60
_Z14Mark_MenuAssetP9menuDef_t_50:
	cmp [edx+0x4], edi
	jnz _Z14Mark_MenuAssetP9menuDef_t_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_ReplaceModel(char const*, char const*)
_Z15DB_ReplaceModelPKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [ebp-0x20], 0x3
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z16DB_GetXAssetNamePK6XAsset
	mov esi, eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov ebx, eax
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz _Z15DB_ReplaceModelPKcS0__10
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edx
	call eax
_Z15DB_ReplaceModelPKcS0__10:
	mov dword [esp], 0x3
	call _Z20DB_GetXAssetTypeSizei
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memcpy
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z16DB_SetXAssetNameP6XAssetPKc
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_AddUserMapDir(char const*)
_Z16DB_AddUserMapDirPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z16DB_AddUserMapDirPKc_10
_Z16DB_AddUserMapDirPKc_20:
	add esp, 0x124
	pop ebx
	pop ebp
	ret
_Z16DB_AddUserMapDirPKc_10:
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	mov edx, 0x2
	mov eax, [ebp+0x8]
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call iCreateFileA
	cmp eax, 0xffffffff
	jz _Z16DB_AddUserMapDirPKc_20
	mov [esp], eax
	call CloseHandle
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usermaps
	mov dword [esp], _cstring_ss
	call _Z2vaPKcz
	mov [esp], eax
	call _Z20FS_AddUserMapDirIWDsPKc
	add esp, 0x124
	pop ebx
	pop ebp
	ret


;DB_ModFileExists()
_Z16DB_ModFileExistsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz _Z16DB_ModFileExistsv_10
_Z16DB_ModFileExistsv_20:
	xor eax, eax
	add esp, 0x124
	pop ebx
	pop ebp
	ret
_Z16DB_ModFileExistsv_10:
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	mov edx, 0x1
	mov eax, _cstring_mod
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call iCreateFileA
	cmp eax, 0xffffffff
	jz _Z16DB_ModFileExistsv_20
	mov [esp], eax
	call CloseHandle
	mov eax, 0x1
	add esp, 0x124
	pop ebx
	pop ebp
	ret


;DB_RemoveClipMap(XAssetHeader)
_Z16DB_RemoveClipMap12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z9CM_Unloadv
	nop


;Load_XModelAsset(XModel**)
_Z16Load_XModelAssetPP6XModel:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x3
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_XModelAsset(XModel*)
_Z16Mark_XModelAssetP6XModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x3
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x3
	jmp _Z16Mark_XModelAssetP6XModel_10
_Z16Mark_XModelAssetP6XModel_30:
	test eax, eax
	jz _Z16Mark_XModelAssetP6XModel_20
	mov edx, eax
_Z16Mark_XModelAssetP6XModel_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z16Mark_XModelAssetP6XModel_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z16Mark_XModelAssetP6XModel_30
	mov edx, 0x2f
	jmp _Z16Mark_XModelAssetP6XModel_40
_Z16Mark_XModelAssetP6XModel_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x3
	jz _Z16Mark_XModelAssetP6XModel_50
_Z16Mark_XModelAssetP6XModel_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x3
	jnz _Z16Mark_XModelAssetP6XModel_60
_Z16Mark_XModelAssetP6XModel_50:
	cmp [edx+0x4], edi
	jnz _Z16Mark_XModelAssetP6XModel_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_ReleaseXAssets()
_Z17DB_ReleaseXAssetsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_SyncDatabasev
	mov ecx, db_hashTable
_Z17DB_ReleaseXAssetsv_30:
	movzx eax, word [ecx]
	movzx edx, ax
	test ax, ax
	jz _Z17DB_ReleaseXAssetsv_10
_Z17DB_ReleaseXAssetsv_20:
	shl edx, 0x4
	lea eax, [edx+g_assetEntryPool]
	mov byte [eax+0x9], 0x0
	movzx eax, word [eax+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z17DB_ReleaseXAssetsv_20
_Z17DB_ReleaseXAssetsv_10:
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz _Z17DB_ReleaseXAssetsv_30
	leave
	ret
	nop


;DB_RemoveGfxWorld(XAssetHeader)
_Z17DB_RemoveGfxWorld12XAssetHeader:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z13R_UnloadWorldv
	nop


;Load_ClipMapAsset(clipMap_t**)
_Z17Load_ClipMapAssetPP9clipMap_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xb
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MapEntsAsset(MapEnts**)
_Z17Load_MapEntsAssetPP7MapEnts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xf
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_RawFileAsset(RawFile**)
_Z17Load_RawFileAssetPP7RawFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1f
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_ClipMapAsset(clipMap_t*)
_Z17Mark_ClipMapAssetP9clipMap_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0xb
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0xb
	jmp _Z17Mark_ClipMapAssetP9clipMap_t_10
_Z17Mark_ClipMapAssetP9clipMap_t_30:
	test eax, eax
	jz _Z17Mark_ClipMapAssetP9clipMap_t_20
	mov edx, eax
_Z17Mark_ClipMapAssetP9clipMap_t_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z17Mark_ClipMapAssetP9clipMap_t_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z17Mark_ClipMapAssetP9clipMap_t_30
	mov edx, 0x2f
	jmp _Z17Mark_ClipMapAssetP9clipMap_t_40
_Z17Mark_ClipMapAssetP9clipMap_t_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xb
	jz _Z17Mark_ClipMapAssetP9clipMap_t_50
_Z17Mark_ClipMapAssetP9clipMap_t_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xb
	jnz _Z17Mark_ClipMapAssetP9clipMap_t_60
_Z17Mark_ClipMapAssetP9clipMap_t_50:
	cmp [edx+0x4], edi
	jnz _Z17Mark_ClipMapAssetP9clipMap_t_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MapEntsAsset(MapEnts*)
_Z17Mark_MapEntsAssetP7MapEnts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0xf
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0xf
	jmp _Z17Mark_MapEntsAssetP7MapEnts_10
_Z17Mark_MapEntsAssetP7MapEnts_30:
	test eax, eax
	jz _Z17Mark_MapEntsAssetP7MapEnts_20
	mov edx, eax
_Z17Mark_MapEntsAssetP7MapEnts_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z17Mark_MapEntsAssetP7MapEnts_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z17Mark_MapEntsAssetP7MapEnts_30
	mov edx, 0x2f
	jmp _Z17Mark_MapEntsAssetP7MapEnts_40
_Z17Mark_MapEntsAssetP7MapEnts_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xf
	jz _Z17Mark_MapEntsAssetP7MapEnts_50
_Z17Mark_MapEntsAssetP7MapEnts_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xf
	jnz _Z17Mark_MapEntsAssetP7MapEnts_60
_Z17Mark_MapEntsAssetP7MapEnts_50:
	cmp [edx+0x4], edi
	jnz _Z17Mark_MapEntsAssetP7MapEnts_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_RawFileAsset(RawFile*)
_Z17Mark_RawFileAssetP7RawFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x1f
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x1f
	jmp _Z17Mark_RawFileAssetP7RawFile_10
_Z17Mark_RawFileAssetP7RawFile_30:
	test eax, eax
	jz _Z17Mark_RawFileAssetP7RawFile_20
	mov edx, eax
_Z17Mark_RawFileAssetP7RawFile_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z17Mark_RawFileAssetP7RawFile_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z17Mark_RawFileAssetP7RawFile_30
	mov edx, 0x2f
	jmp _Z17Mark_RawFileAssetP7RawFile_40
_Z17Mark_RawFileAssetP7RawFile_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1f
	jz _Z17Mark_RawFileAssetP7RawFile_50
_Z17Mark_RawFileAssetP7RawFile_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1f
	jnz _Z17Mark_RawFileAssetP7RawFile_60
_Z17Mark_RawFileAssetP7RawFile_50:
	cmp [edx+0x4], edi
	jnz _Z17Mark_RawFileAssetP7RawFile_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;DB_IsXAssetDefault(XAssetType, char const*)
_Z18DB_IsXAssetDefault10XAssetTypePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, edi
	mov ebx, [ebp+0xc]
	jmp _Z18DB_IsXAssetDefault10XAssetTypePKc_10
_Z18DB_IsXAssetDefault10XAssetTypePKc_30:
	test eax, eax
	jz _Z18DB_IsXAssetDefault10XAssetTypePKc_20
	mov edx, eax
_Z18DB_IsXAssetDefault10XAssetTypePKc_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18DB_IsXAssetDefault10XAssetTypePKc_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18DB_IsXAssetDefault10XAssetTypePKc_30
	mov edx, 0x2f
	jmp _Z18DB_IsXAssetDefault10XAssetTypePKc_40
_Z18DB_IsXAssetDefault10XAssetTypePKc_20:
	mov ebx, esi
	and ebx, 0x7fff
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z18DB_IsXAssetDefault10XAssetTypePKc_50
_Z18DB_IsXAssetDefault10XAssetTypePKc_100:
	movzx eax, word [ebx+ebx+db_hashTable]
	movzx edx, ax
	test ax, ax
	jz _Z18DB_IsXAssetDefault10XAssetTypePKc_60
	jmp _Z18DB_IsXAssetDefault10XAssetTypePKc_70
_Z18DB_IsXAssetDefault10XAssetTypePKc_80:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z18DB_IsXAssetDefault10XAssetTypePKc_60
_Z18DB_IsXAssetDefault10XAssetTypePKc_70:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	cmp edi, [eax+g_assetEntryPool]
	jnz _Z18DB_IsXAssetDefault10XAssetTypePKc_80
	mov [esp], ebx
	call _Z16DB_GetXAssetNamePK6XAsset
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z18DB_IsXAssetDefault10XAssetTypePKc_80
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	xor eax, eax
	cmp byte [ebx+0x8], 0x0
	setz al
	jmp _Z18DB_IsXAssetDefault10XAssetTypePKc_90
_Z18DB_IsXAssetDefault10XAssetTypePKc_50:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz _Z18DB_IsXAssetDefault10XAssetTypePKc_100
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z18DB_IsXAssetDefault10XAssetTypePKc_50
	jmp _Z18DB_IsXAssetDefault10XAssetTypePKc_100
_Z18DB_IsXAssetDefault10XAssetTypePKc_60:
	mov eax, 0x1
_Z18DB_IsXAssetDefault10XAssetTypePKc_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_SetInitializing(unsigned char)
_Z18DB_SetInitializingh:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_initializing], al
	pop ebp
	ret
	nop


;DB_ShutdownXAssets()
_Z18DB_ShutdownXAssetsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z16Sys_SyncDatabasev
	call _Z16DB_PostLoadXZonev
	call _Z21DB_SyncExternalAssetsv
	jmp _Z18DB_ShutdownXAssetsv_10
_Z18DB_ShutdownXAssetsv_30:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z18DB_ShutdownXAssetsv_20:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z18DB_ShutdownXAssetsv_10:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z18DB_ShutdownXAssetsv_20
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z18DB_ShutdownXAssetsv_30
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z18DB_ShutdownXAssetsv_30
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js _Z18DB_ShutdownXAssetsv_40
	lea ebx, [eax+g_zoneHandles]
	mov esi, g_zoneIndex+0x1f
_Z18DB_ShutdownXAssetsv_50:
	movzx eax, byte [ebx]
	xor edx, edx
	call _Z14DB_UnloadXZonejh
	sub ebx, 0x1
	cmp ebx, esi
	jnz _Z18DB_ShutdownXAssetsv_50
_Z18DB_ShutdownXAssetsv_40:
	mov dword [ebp-0x1c], db_hashTable
	mov edx, [ebp-0x1c]
	jmp _Z18DB_ShutdownXAssetsv_60
_Z18DB_ShutdownXAssetsv_80:
	mov edx, [ebp-0x1c]
	mov word [edx], 0x0
	add edx, 0x2
	mov [ebp-0x1c], edx
	mov eax, g_freeAssetEntryHead
	cmp eax, edx
	jz _Z18DB_ShutdownXAssetsv_70
_Z18DB_ShutdownXAssetsv_60:
	movzx eax, word [edx]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz _Z18DB_ShutdownXAssetsv_80
	mov esi, edx
	jmp _Z18DB_ShutdownXAssetsv_90
_Z18DB_ShutdownXAssetsv_100:
	mov esi, [ebp-0x20]
_Z18DB_ShutdownXAssetsv_90:
	shl esi, 0x4
	lea ebx, [esi+g_assetEntryPool]
	movzx edi, word [ebx+0xa]
	movzx eax, di
	mov [ebp-0x20], eax
	sub dword [g_defaultAssetCount], 0x1
	mov edx, [ebx+0x4]
	mov eax, [esi+g_assetEntryPool]
	mov ecx, [eax*4+DB_FreeXAssetHeaderHandler]
	mov [esp+0x4], edx
	mov eax, [eax*4+DB_XAssetPool]
	mov [esp], eax
	call ecx
	mov eax, [g_freeAssetEntryHead]
	mov [g_freeAssetEntryHead], ebx
	mov [esi+g_assetEntryPool], eax
	test di, di
	jnz _Z18DB_ShutdownXAssetsv_100
	mov edx, [ebp-0x1c]
	mov word [edx], 0x0
	add edx, 0x2
	mov [ebp-0x1c], edx
	mov eax, g_freeAssetEntryHead
	cmp eax, edx
	jnz _Z18DB_ShutdownXAssetsv_60
_Z18DB_ShutdownXAssetsv_70:
	call _Z22DB_FreeUnusedResourcesv
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js _Z18DB_ShutdownXAssetsv_110
	lea edi, [eax+g_zoneHandles]
_Z18DB_ShutdownXAssetsv_120:
	movzx eax, byte [edi]
	lea esi, [eax+eax*4]
	lea esi, [eax+esi*4]
	shl esi, 0x3
	lea ebx, [esi+g_zones]
	lea eax, [ebx+0x48]
	mov [esp], eax
	call _Z18DB_FreeXZoneMemoryP11XZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9PMem_FreePKcj
	mov byte [esi+g_zones], 0x0
	sub edi, 0x1
	mov edx, g_zoneIndex+0x1f
	cmp edx, edi
	jnz _Z18DB_ShutdownXAssetsv_120
_Z18DB_ShutdownXAssetsv_110:
	mov dword [g_zoneCount], 0x0
	call _Z29DB_ResetMinimumFastFileLoadedv
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_UpdateDebugZone()
_Z18DB_UpdateDebugZonev:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x30
	cmp byte [g_debugZoneName], 0x0
	jz _Z18DB_UpdateDebugZonev_10
	lea ebx, [ebp-0x20]
	cld
	mov ecx, 0x6
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov dword [ebp-0x14], g_debugZoneName
	call _Z15Com_SyncThreadsv
	mov dword [ebp-0x18], 0x40
	mov dword [ebp-0x10], 0x40
	mov dword [ebp-0xc], 0x40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call _Z14DB_LoadXAssetsP9XZoneInfoji
	call _Z21CG_VisionSetMyChangesv
_Z18DB_UpdateDebugZonev_10:
	add esp, 0x30
	pop ebx
	pop edi
	pop ebp
	ret
	nop


;Load_ComWorldAsset(ComWorld**)
_Z18Load_ComWorldAssetPP8ComWorld:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xc
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GfxImageAsset(GfxImage**)
_Z18Load_GfxImageAssetPP8GfxImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x6
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GfxWorldAsset(GfxWorld**)
_Z18Load_GfxWorldAssetPP8GfxWorld:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x10
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LightDefAsset(GfxLightDef**)
_Z18Load_LightDefAssetPP11GfxLightDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x11
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MaterialAsset(Material**)
_Z18Load_MaterialAssetPP8Material:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x4
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MenuListAsset(MenuList**)
_Z18Load_MenuListAssetPP8MenuList:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x14
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_SndCurveAsset(SndCurve**)
_Z18Load_SndCurveAssetPP8SndCurve:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x8
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_ComWorldAsset(ComWorld*)
_Z18Mark_ComWorldAssetP8ComWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0xc
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0xc
	jmp _Z18Mark_ComWorldAssetP8ComWorld_10
_Z18Mark_ComWorldAssetP8ComWorld_30:
	test eax, eax
	jz _Z18Mark_ComWorldAssetP8ComWorld_20
	mov edx, eax
_Z18Mark_ComWorldAssetP8ComWorld_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_ComWorldAssetP8ComWorld_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_ComWorldAssetP8ComWorld_30
	mov edx, 0x2f
	jmp _Z18Mark_ComWorldAssetP8ComWorld_40
_Z18Mark_ComWorldAssetP8ComWorld_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xc
	jz _Z18Mark_ComWorldAssetP8ComWorld_50
_Z18Mark_ComWorldAssetP8ComWorld_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xc
	jnz _Z18Mark_ComWorldAssetP8ComWorld_60
_Z18Mark_ComWorldAssetP8ComWorld_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_ComWorldAssetP8ComWorld_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GfxImageAsset(GfxImage*)
_Z18Mark_GfxImageAssetP8GfxImage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x6
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x6
	jmp _Z18Mark_GfxImageAssetP8GfxImage_10
_Z18Mark_GfxImageAssetP8GfxImage_30:
	test eax, eax
	jz _Z18Mark_GfxImageAssetP8GfxImage_20
	mov edx, eax
_Z18Mark_GfxImageAssetP8GfxImage_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_GfxImageAssetP8GfxImage_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_GfxImageAssetP8GfxImage_30
	mov edx, 0x2f
	jmp _Z18Mark_GfxImageAssetP8GfxImage_40
_Z18Mark_GfxImageAssetP8GfxImage_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x6
	jz _Z18Mark_GfxImageAssetP8GfxImage_50
_Z18Mark_GfxImageAssetP8GfxImage_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x6
	jnz _Z18Mark_GfxImageAssetP8GfxImage_60
_Z18Mark_GfxImageAssetP8GfxImage_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_GfxImageAssetP8GfxImage_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GfxWorldAsset(GfxWorld*)
_Z18Mark_GfxWorldAssetP8GfxWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x10
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x10
	jmp _Z18Mark_GfxWorldAssetP8GfxWorld_10
_Z18Mark_GfxWorldAssetP8GfxWorld_30:
	test eax, eax
	jz _Z18Mark_GfxWorldAssetP8GfxWorld_20
	mov edx, eax
_Z18Mark_GfxWorldAssetP8GfxWorld_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_GfxWorldAssetP8GfxWorld_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_GfxWorldAssetP8GfxWorld_30
	mov edx, 0x2f
	jmp _Z18Mark_GfxWorldAssetP8GfxWorld_40
_Z18Mark_GfxWorldAssetP8GfxWorld_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x10
	jz _Z18Mark_GfxWorldAssetP8GfxWorld_50
_Z18Mark_GfxWorldAssetP8GfxWorld_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x10
	jnz _Z18Mark_GfxWorldAssetP8GfxWorld_60
_Z18Mark_GfxWorldAssetP8GfxWorld_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_GfxWorldAssetP8GfxWorld_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LightDefAsset(GfxLightDef*)
_Z18Mark_LightDefAssetP11GfxLightDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x11
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x11
	jmp _Z18Mark_LightDefAssetP11GfxLightDef_10
_Z18Mark_LightDefAssetP11GfxLightDef_30:
	test eax, eax
	jz _Z18Mark_LightDefAssetP11GfxLightDef_20
	mov edx, eax
_Z18Mark_LightDefAssetP11GfxLightDef_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_LightDefAssetP11GfxLightDef_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_LightDefAssetP11GfxLightDef_30
	mov edx, 0x2f
	jmp _Z18Mark_LightDefAssetP11GfxLightDef_40
_Z18Mark_LightDefAssetP11GfxLightDef_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x11
	jz _Z18Mark_LightDefAssetP11GfxLightDef_50
_Z18Mark_LightDefAssetP11GfxLightDef_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x11
	jnz _Z18Mark_LightDefAssetP11GfxLightDef_60
_Z18Mark_LightDefAssetP11GfxLightDef_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_LightDefAssetP11GfxLightDef_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MaterialAsset(Material*)
_Z18Mark_MaterialAssetP8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x4
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x4
	jmp _Z18Mark_MaterialAssetP8Material_10
_Z18Mark_MaterialAssetP8Material_30:
	test eax, eax
	jz _Z18Mark_MaterialAssetP8Material_20
	mov edx, eax
_Z18Mark_MaterialAssetP8Material_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_MaterialAssetP8Material_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_MaterialAssetP8Material_30
	mov edx, 0x2f
	jmp _Z18Mark_MaterialAssetP8Material_40
_Z18Mark_MaterialAssetP8Material_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x4
	jz _Z18Mark_MaterialAssetP8Material_50
_Z18Mark_MaterialAssetP8Material_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x4
	jnz _Z18Mark_MaterialAssetP8Material_60
_Z18Mark_MaterialAssetP8Material_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_MaterialAssetP8Material_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MenuListAsset(MenuList*)
_Z18Mark_MenuListAssetP8MenuList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x14
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x14
	jmp _Z18Mark_MenuListAssetP8MenuList_10
_Z18Mark_MenuListAssetP8MenuList_30:
	test eax, eax
	jz _Z18Mark_MenuListAssetP8MenuList_20
	mov edx, eax
_Z18Mark_MenuListAssetP8MenuList_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_MenuListAssetP8MenuList_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_MenuListAssetP8MenuList_30
	mov edx, 0x2f
	jmp _Z18Mark_MenuListAssetP8MenuList_40
_Z18Mark_MenuListAssetP8MenuList_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x14
	jz _Z18Mark_MenuListAssetP8MenuList_50
_Z18Mark_MenuListAssetP8MenuList_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x14
	jnz _Z18Mark_MenuListAssetP8MenuList_60
_Z18Mark_MenuListAssetP8MenuList_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_MenuListAssetP8MenuList_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_SndCurveAsset(SndCurve*)
_Z18Mark_SndCurveAssetP8SndCurve:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x8
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x8
	jmp _Z18Mark_SndCurveAssetP8SndCurve_10
_Z18Mark_SndCurveAssetP8SndCurve_30:
	test eax, eax
	jz _Z18Mark_SndCurveAssetP8SndCurve_20
	mov edx, eax
_Z18Mark_SndCurveAssetP8SndCurve_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z18Mark_SndCurveAssetP8SndCurve_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z18Mark_SndCurveAssetP8SndCurve_30
	mov edx, 0x2f
	jmp _Z18Mark_SndCurveAssetP8SndCurve_40
_Z18Mark_SndCurveAssetP8SndCurve_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x8
	jz _Z18Mark_SndCurveAssetP8SndCurve_50
_Z18Mark_SndCurveAssetP8SndCurve_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x8
	jnz _Z18Mark_SndCurveAssetP8SndCurve_60
_Z18Mark_SndCurveAssetP8SndCurve_50:
	cmp [edx+0x4], edi
	jnz _Z18Mark_SndCurveAssetP8SndCurve_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_FindXAssetHeader(XAssetType, char const*)
_Z19DB_FindXAssetHeader10XAssetTypePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov dword [ebp-0x41c], 0x0
_Z19DB_FindXAssetHeader10XAssetTypePKc_140:
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_10
_Z19DB_FindXAssetHeader10XAssetTypePKc_60:
	mov edi, esi
	mov ebx, [ebp+0xc]
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_20
_Z19DB_FindXAssetHeader10XAssetTypePKc_40:
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_30
	mov edx, eax
_Z19DB_FindXAssetHeader10XAssetTypePKc_50:
	mov eax, edi
	shl eax, 0x5
	sub eax, edi
	lea edi, [eax+edx]
	add ebx, 0x1
_Z19DB_FindXAssetHeader10XAssetTypePKc_20:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_40
	mov edx, 0x2f
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_50
_Z19DB_FindXAssetHeader10XAssetTypePKc_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_60
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_10
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_60
_Z19DB_FindXAssetHeader10XAssetTypePKc_30:
	and edi, 0x7fff
	movzx eax, word [edi+edi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_70
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_80
_Z19DB_FindXAssetHeader10XAssetTypePKc_90:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_80
_Z19DB_FindXAssetHeader10XAssetTypePKc_70:
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+g_assetEntryPool]
	cmp esi, [eax+g_assetEntryPool]
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_90
	mov [esp], edi
	call _Z16DB_GetXAssetNamePK6XAsset
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_90
_Z19DB_FindXAssetHeader10XAssetTypePKc_210:
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	test edi, edi
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_100
	cmp byte [edi+0x8], 0x0
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_110
	call _Z20Sys_IsDatabaseReady2v
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_110
_Z19DB_FindXAssetHeader10XAssetTypePKc_100:
	call Sys_IsDatabaseThread
	test al, al
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_120
	mov edx, [ebp-0x41c]
	test edx, edx
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_130
	call _Z16Sys_Millisecondsv
	mov [ebp-0x41c], eax
	call _Z20Sys_IsDatabaseReady2v
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_140
_Z19DB_FindXAssetHeader10XAssetTypePKc_130:
	call _Z20Sys_IsDatabaseReady2v
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_120
	call _Z26DB_IsMinimumFastFileLoadedv
	test al, al
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_150
	cmp byte [g_initializing], 0x0
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_120
_Z19DB_FindXAssetHeader10XAssetTypePKc_150:
	call _Z18Sys_IsRenderThreadv
	test al, al
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_160
	mov eax, [g_mainThreadBlocked]
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_160
	mov ebx, 0x1
_Z19DB_FindXAssetHeader10XAssetTypePKc_220:
	call _Z19Sys_IsDatabaseReadyv
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_170
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_180
	test bl, bl
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_180
_Z19DB_FindXAssetHeader10XAssetTypePKc_170:
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_190
	mov dword [esp], 0x1
	call _Z31Sys_HaveSuspendedDatabaseThread11ThreadOwner
	mov ebx, eax
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_200
_Z19DB_FindXAssetHeader10XAssetTypePKc_230:
	mov dword [esp], 0x1
	call _Z9Sys_Sleepi
	test ebx, ebx
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_140
	mov dword [esp], 0x1
	call _Z25Sys_SuspendDatabaseThread11ThreadOwner
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_140
_Z19DB_FindXAssetHeader10XAssetTypePKc_80:
	xor edi, edi
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_210
_Z19DB_FindXAssetHeader10XAssetTypePKc_160:
	xor ebx, ebx
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_220
_Z19DB_FindXAssetHeader10XAssetTypePKc_180:
	call _Z16DB_PostLoadXZonev
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_140
_Z19DB_FindXAssetHeader10XAssetTypePKc_190:
	call _Z27Sys_FastFileBlockedCallbackv
	mov dword [esp], 0x1
	call _Z31Sys_HaveSuspendedDatabaseThread11ThreadOwner
	mov ebx, eax
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_230
_Z19DB_FindXAssetHeader10XAssetTypePKc_200:
	mov dword [esp], 0x1
	call _Z24Sys_ResumeDatabaseThread11ThreadOwner
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_230
_Z19DB_FindXAssetHeader10XAssetTypePKc_250:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_240
_Z19DB_FindXAssetHeader10XAssetTypePKc_350:
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+g_assetEntryPool]
	cmp esi, [eax+g_assetEntryPool]
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_250
	mov [esp], edi
	call _Z16DB_GetXAssetNamePK6XAsset
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_250
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z19DB_FindXAssetHeader10XAssetTypePKc_110:
	mov byte [edi+0x9], 0x1
	mov ecx, [ebp-0x41c]
	test ecx, ecx
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_260
_Z19DB_FindXAssetHeader10XAssetTypePKc_280:
	mov eax, [edi+0x4]
_Z19DB_FindXAssetHeader10XAssetTypePKc_410:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DB_FindXAssetHeader10XAssetTypePKc_120:
	test edi, edi
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_270
	mov byte [edi+0x9], 0x1
	mov ecx, [ebp-0x41c]
	test ecx, ecx
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_280
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_260
_Z19DB_FindXAssetHeader10XAssetTypePKc_300:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
_Z19DB_FindXAssetHeader10XAssetTypePKc_290:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
_Z19DB_FindXAssetHeader10XAssetTypePKc_270:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_290
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedIncrement
	sub eax, 0x1
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_300
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_300
	mov edi, esi
	mov ebx, [ebp+0xc]
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_310
_Z19DB_FindXAssetHeader10XAssetTypePKc_330:
	test eax, eax
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_320
	mov edx, eax
_Z19DB_FindXAssetHeader10XAssetTypePKc_340:
	mov eax, edi
	shl eax, 0x5
	sub eax, edi
	lea edi, [eax+edx]
	add ebx, 0x1
_Z19DB_FindXAssetHeader10XAssetTypePKc_310:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_330
	mov edx, 0x2f
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_340
_Z19DB_FindXAssetHeader10XAssetTypePKc_260:
	mov eax, g_assetNames
	mov ebx, [eax+esi*4]
	call _Z16Sys_Millisecondsv
	mov [esp+0x10], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	sub eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_280
_Z19DB_FindXAssetHeader10XAssetTypePKc_320:
	and edi, 0x7fff
	movzx eax, word [edi+edi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_350
_Z19DB_FindXAssetHeader10XAssetTypePKc_240:
	mov eax, com_developer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_360
	cmp esi, 0x18
	ja _Z19DB_FindXAssetHeader10XAssetTypePKc_370
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	test eax, 0x1600080
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_380
_Z19DB_FindXAssetHeader10XAssetTypePKc_360:
	mov eax, [ebp-0x41c]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_390
_Z19DB_FindXAssetHeader10XAssetTypePKc_470:
	cmp esi, 0x16
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_400
	cmp esi, 0x1f
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_400
_Z19DB_FindXAssetHeader10XAssetTypePKc_530:
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z21DB_CreateDefaultEntry10XAssetTypePKc
	mov ebx, eax
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	mov eax, [ebx+0x4]
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_410
_Z19DB_FindXAssetHeader10XAssetTypePKc_450:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_400
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_420
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, g_assetNames
	mov eax, [eax+0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z19DB_FindXAssetHeader10XAssetTypePKc_400:
	mov dword [esp], db_hashCritSect+0x4
	call iInterlockedDecrement
	xor eax, eax
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_410
_Z19DB_FindXAssetHeader10XAssetTypePKc_390:
	call _Z16Sys_Millisecondsv
	sub eax, [ebp-0x41c]
	cmp eax, 0x64
	jle _Z19DB_FindXAssetHeader10XAssetTypePKc_430
	cmp esi, 0x7
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_440
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo1
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
_Z19DB_FindXAssetHeader10XAssetTypePKc_430:
	cmp esi, 0x16
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_450
	cmp esi, 0x1f
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_460
	cmp esi, 0x7
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_470
_Z19DB_FindXAssetHeader10XAssetTypePKc_540:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, g_assetNames
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_470
_Z19DB_FindXAssetHeader10XAssetTypePKc_370:
	mov edx, [ebp+0xc]
	mov [esp+0x10], edx
	mov eax, g_assetNames
	mov eax, [eax+esi*4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z19DB_FindXAssetHeader10XAssetTypePKc_510:
	mov dword [esp], 0xa
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, [g_missingAssetFile]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_480
	mov dword [esp], _cstring_missingassetcsv
	call _Z21FS_FOpenTextFileWritePKc
	mov [g_missingAssetFile], eax
_Z19DB_FindXAssetHeader10XAssetTypePKc_500:
	mov eax, [g_missingAssetFile]
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_490
	mov eax, com_missingAssetOpenFailed
	mov dword [eax], 0x1
_Z19DB_FindXAssetHeader10XAssetTypePKc_520:
	mov dword [esp], 0xa
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_360
_Z19DB_FindXAssetHeader10XAssetTypePKc_480:
	mov dword [esp], _cstring_missingassetcsv
	call _Z18FS_FOpenFileAppendPKc
	mov [g_missingAssetFile], eax
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_500
_Z19DB_FindXAssetHeader10XAssetTypePKc_380:
	test eax, 0x800000
	jz _Z19DB_FindXAssetHeader10XAssetTypePKc_370
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov eax, g_assetNames
	mov eax, [eax+0x5c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_smps
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_510
_Z19DB_FindXAssetHeader10XAssetTypePKc_490:
	mov [esp+0x8], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z8FS_WritePKvii
	mov eax, [g_missingAssetFile]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_520
_Z19DB_FindXAssetHeader10XAssetTypePKc_440:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo1
	mov dword [esp], 0xa
	call _Z10Com_PrintfiPKcz
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_530
_Z19DB_FindXAssetHeader10XAssetTypePKc_460:
	mov dword [esp+0x4], _cstring_cfg
	mov edx, [ebp+0xc]
	mov [esp], edx
	call strstr
	test eax, eax
	jnz _Z19DB_FindXAssetHeader10XAssetTypePKc_400
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_540
_Z19DB_FindXAssetHeader10XAssetTypePKc_420:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, g_assetNames
	mov eax, [eax+0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z19DB_FindXAssetHeader10XAssetTypePKc_400
	nop


;Load_WeaponDefAsset(WeaponDef**)
_Z19Load_WeaponDefAssetPP9WeaponDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x17
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_WeaponDefAsset(WeaponDef*)
_Z19Mark_WeaponDefAssetP9WeaponDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x17
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x17
	jmp _Z19Mark_WeaponDefAssetP9WeaponDef_10
_Z19Mark_WeaponDefAssetP9WeaponDef_30:
	test eax, eax
	jz _Z19Mark_WeaponDefAssetP9WeaponDef_20
	mov edx, eax
_Z19Mark_WeaponDefAssetP9WeaponDef_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z19Mark_WeaponDefAssetP9WeaponDef_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z19Mark_WeaponDefAssetP9WeaponDef_30
	mov edx, 0x2f
	jmp _Z19Mark_WeaponDefAssetP9WeaponDef_40
_Z19Mark_WeaponDefAssetP9WeaponDef_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x17
	jz _Z19Mark_WeaponDefAssetP9WeaponDef_50
_Z19Mark_WeaponDefAssetP9WeaponDef_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x17
	jnz _Z19Mark_WeaponDefAssetP9WeaponDef_60
_Z19Mark_WeaponDefAssetP9WeaponDef_50:
	cmp [edx+0x4], edi
	jnz _Z19Mark_WeaponDefAssetP9WeaponDef_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_LoadDelayedImages()
_Z20DB_LoadDelayedImagesv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, _Z16R_DelayLoadImage12XAssetHeaderPv
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	mov edx, [g_copyInfoCount]
	test edx, edx
	jz _Z20DB_LoadDelayedImagesv_10
	xor esi, esi
	mov ebx, g_copyInfo
	jmp _Z20DB_LoadDelayedImagesv_20
_Z20DB_LoadDelayedImagesv_30:
	add esi, 0x1
	add ebx, 0x4
	cmp [g_copyInfoCount], esi
	jbe _Z20DB_LoadDelayedImagesv_10
_Z20DB_LoadDelayedImagesv_20:
	mov eax, [ebx]
	cmp dword [eax], 0x6
	jnz _Z20DB_LoadDelayedImagesv_30
	mov eax, [eax+0x4]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z16R_DelayLoadImage12XAssetHeaderPv
	add esi, 0x1
	add ebx, 0x4
	cmp [g_copyInfoCount], esi
	ja _Z20DB_LoadDelayedImagesv_20
_Z20DB_LoadDelayedImagesv_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Load_PhysPresetAsset(PhysPreset**)
_Z20Load_PhysPresetAssetPP10PhysPreset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_XAnimPartsAsset(XAnimParts**)
_Z20Load_XAnimPartsAssetPP10XAnimParts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x2
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_PhysPresetAsset(PhysPreset*)
_Z20Mark_PhysPresetAssetP10PhysPreset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x1
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x1
	jmp _Z20Mark_PhysPresetAssetP10PhysPreset_10
_Z20Mark_PhysPresetAssetP10PhysPreset_30:
	test eax, eax
	jz _Z20Mark_PhysPresetAssetP10PhysPreset_20
	mov edx, eax
_Z20Mark_PhysPresetAssetP10PhysPreset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z20Mark_PhysPresetAssetP10PhysPreset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z20Mark_PhysPresetAssetP10PhysPreset_30
	mov edx, 0x2f
	jmp _Z20Mark_PhysPresetAssetP10PhysPreset_40
_Z20Mark_PhysPresetAssetP10PhysPreset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1
	jz _Z20Mark_PhysPresetAssetP10PhysPreset_50
_Z20Mark_PhysPresetAssetP10PhysPreset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1
	jnz _Z20Mark_PhysPresetAssetP10PhysPreset_60
_Z20Mark_PhysPresetAssetP10PhysPreset_50:
	cmp [edx+0x4], edi
	jnz _Z20Mark_PhysPresetAssetP10PhysPreset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_XAnimPartsAsset(XAnimParts*)
_Z20Mark_XAnimPartsAssetP10XAnimParts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x2
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x2
	jmp _Z20Mark_XAnimPartsAssetP10XAnimParts_10
_Z20Mark_XAnimPartsAssetP10XAnimParts_30:
	test eax, eax
	jz _Z20Mark_XAnimPartsAssetP10XAnimParts_20
	mov edx, eax
_Z20Mark_XAnimPartsAssetP10XAnimParts_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z20Mark_XAnimPartsAssetP10XAnimParts_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z20Mark_XAnimPartsAssetP10XAnimParts_30
	mov edx, 0x2f
	jmp _Z20Mark_XAnimPartsAssetP10XAnimParts_40
_Z20Mark_XAnimPartsAssetP10XAnimParts_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x2
	jz _Z20Mark_XAnimPartsAssetP10XAnimParts_50
_Z20Mark_XAnimPartsAssetP10XAnimParts_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x2
	jnz _Z20Mark_XAnimPartsAssetP10XAnimParts_60
_Z20Mark_XAnimPartsAssetP10XAnimParts_50:
	cmp [edx+0x4], edi
	jnz _Z20Mark_XAnimPartsAssetP10XAnimParts_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_FxEffectDefAsset(FxEffectDef const**)
_Z21Load_FxEffectDefAssetPPK11FxEffectDef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x19
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GameWorldMpAsset(GameWorldMp**)
_Z21Load_GameWorldMpAssetPP11GameWorldMp:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xe
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GameWorldSpAsset(GameWorldSp**)
_Z21Load_GameWorldSpAssetPP11GameWorldSp:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xd
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LoadedSoundAsset(LoadedSound**)
_Z21Load_LoadedSoundAssetPP11LoadedSound:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x9
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_StringTableAsset(StringTable**)
_Z21Load_StringTableAssetPP11StringTable:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x20
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_FxEffectDefAsset(FxEffectDef*)
_Z21Mark_FxEffectDefAssetP11FxEffectDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x19
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x19
	jmp _Z21Mark_FxEffectDefAssetP11FxEffectDef_10
_Z21Mark_FxEffectDefAssetP11FxEffectDef_30:
	test eax, eax
	jz _Z21Mark_FxEffectDefAssetP11FxEffectDef_20
	mov edx, eax
_Z21Mark_FxEffectDefAssetP11FxEffectDef_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21Mark_FxEffectDefAssetP11FxEffectDef_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21Mark_FxEffectDefAssetP11FxEffectDef_30
	mov edx, 0x2f
	jmp _Z21Mark_FxEffectDefAssetP11FxEffectDef_40
_Z21Mark_FxEffectDefAssetP11FxEffectDef_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x19
	jz _Z21Mark_FxEffectDefAssetP11FxEffectDef_50
_Z21Mark_FxEffectDefAssetP11FxEffectDef_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x19
	jnz _Z21Mark_FxEffectDefAssetP11FxEffectDef_60
_Z21Mark_FxEffectDefAssetP11FxEffectDef_50:
	cmp [edx+0x4], edi
	jnz _Z21Mark_FxEffectDefAssetP11FxEffectDef_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GameWorldMpAsset(GameWorldMp*)
_Z21Mark_GameWorldMpAssetP11GameWorldMp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0xe
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0xe
	jmp _Z21Mark_GameWorldMpAssetP11GameWorldMp_10
_Z21Mark_GameWorldMpAssetP11GameWorldMp_30:
	test eax, eax
	jz _Z21Mark_GameWorldMpAssetP11GameWorldMp_20
	mov edx, eax
_Z21Mark_GameWorldMpAssetP11GameWorldMp_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21Mark_GameWorldMpAssetP11GameWorldMp_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21Mark_GameWorldMpAssetP11GameWorldMp_30
	mov edx, 0x2f
	jmp _Z21Mark_GameWorldMpAssetP11GameWorldMp_40
_Z21Mark_GameWorldMpAssetP11GameWorldMp_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xe
	jz _Z21Mark_GameWorldMpAssetP11GameWorldMp_50
_Z21Mark_GameWorldMpAssetP11GameWorldMp_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xe
	jnz _Z21Mark_GameWorldMpAssetP11GameWorldMp_60
_Z21Mark_GameWorldMpAssetP11GameWorldMp_50:
	cmp [edx+0x4], edi
	jnz _Z21Mark_GameWorldMpAssetP11GameWorldMp_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GameWorldSpAsset(GameWorldSp*)
_Z21Mark_GameWorldSpAssetP11GameWorldSp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0xd
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0xd
	jmp _Z21Mark_GameWorldSpAssetP11GameWorldSp_10
_Z21Mark_GameWorldSpAssetP11GameWorldSp_30:
	test eax, eax
	jz _Z21Mark_GameWorldSpAssetP11GameWorldSp_20
	mov edx, eax
_Z21Mark_GameWorldSpAssetP11GameWorldSp_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21Mark_GameWorldSpAssetP11GameWorldSp_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21Mark_GameWorldSpAssetP11GameWorldSp_30
	mov edx, 0x2f
	jmp _Z21Mark_GameWorldSpAssetP11GameWorldSp_40
_Z21Mark_GameWorldSpAssetP11GameWorldSp_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xd
	jz _Z21Mark_GameWorldSpAssetP11GameWorldSp_50
_Z21Mark_GameWorldSpAssetP11GameWorldSp_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xd
	jnz _Z21Mark_GameWorldSpAssetP11GameWorldSp_60
_Z21Mark_GameWorldSpAssetP11GameWorldSp_50:
	cmp [edx+0x4], edi
	jnz _Z21Mark_GameWorldSpAssetP11GameWorldSp_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LoadedSoundAsset(LoadedSound*)
_Z21Mark_LoadedSoundAssetP11LoadedSound:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x9
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x9
	jmp _Z21Mark_LoadedSoundAssetP11LoadedSound_10
_Z21Mark_LoadedSoundAssetP11LoadedSound_30:
	test eax, eax
	jz _Z21Mark_LoadedSoundAssetP11LoadedSound_20
	mov edx, eax
_Z21Mark_LoadedSoundAssetP11LoadedSound_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21Mark_LoadedSoundAssetP11LoadedSound_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21Mark_LoadedSoundAssetP11LoadedSound_30
	mov edx, 0x2f
	jmp _Z21Mark_LoadedSoundAssetP11LoadedSound_40
_Z21Mark_LoadedSoundAssetP11LoadedSound_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x9
	jz _Z21Mark_LoadedSoundAssetP11LoadedSound_50
_Z21Mark_LoadedSoundAssetP11LoadedSound_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x9
	jnz _Z21Mark_LoadedSoundAssetP11LoadedSound_60
_Z21Mark_LoadedSoundAssetP11LoadedSound_50:
	cmp [edx+0x4], edi
	jnz _Z21Mark_LoadedSoundAssetP11LoadedSound_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_StringTableAsset(StringTable*)
_Z21Mark_StringTableAssetP11StringTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x20
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x20
	jmp _Z21Mark_StringTableAssetP11StringTable_10
_Z21Mark_StringTableAssetP11StringTable_30:
	test eax, eax
	jz _Z21Mark_StringTableAssetP11StringTable_20
	mov edx, eax
_Z21Mark_StringTableAssetP11StringTable_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z21Mark_StringTableAssetP11StringTable_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z21Mark_StringTableAssetP11StringTable_30
	mov edx, 0x2f
	jmp _Z21Mark_StringTableAssetP11StringTable_40
_Z21Mark_StringTableAssetP11StringTable_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x20
	jz _Z21Mark_StringTableAssetP11StringTable_50
_Z21Mark_StringTableAssetP11StringTable_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x20
	jnz _Z21Mark_StringTableAssetP11StringTable_60
_Z21Mark_StringTableAssetP11StringTable_50:
	cmp [edx+0x4], edi
	jnz _Z21Mark_StringTableAssetP11StringTable_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_EndRecoverLostDevice()
_Z23DB_EndRecoverLostDevicev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z23DB_EndRecoverLostDevicev_10
_Z23DB_EndRecoverLostDevicev_30:
	mov ecx, [g_zoneCount]
	test ecx, ecx
	jg _Z23DB_EndRecoverLostDevicev_20
_Z23DB_EndRecoverLostDevicev_50:
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	movzx eax, byte [g_loadingZone]
	test al, al
	setz byte [g_mayRecoverLostAssets]
	mov byte [g_isRecoveringLostDevice], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23DB_EndRecoverLostDevicev_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz _Z23DB_EndRecoverLostDevicev_30
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z23DB_EndRecoverLostDevicev_10
	jmp _Z23DB_EndRecoverLostDevicev_30
_Z23DB_EndRecoverLostDevicev_20:
	xor ebx, ebx
_Z23DB_EndRecoverLostDevicev_40:
	movzx eax, byte [ebx+g_zoneHandles]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	mov [esp], edx
	call _Z25DB_RecoverGeometryBuffersP11XZoneMemory
	add ebx, 0x1
	cmp ebx, [g_zoneCount]
	jl _Z23DB_EndRecoverLostDevicev_40
	jmp _Z23DB_EndRecoverLostDevicev_50


;DB_EnumXAssets_FastFile(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x19], al
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_10
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_60:
	mov edi, db_hashTable
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_70:
	movzx eax, word [edi]
	movzx edx, ax
	test ax, ax
	jz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_20
	jmp _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_30
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_40:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_20
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_30:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+g_assetEntryPool]
	mov edx, [ebp+0x8]
	cmp [eax+g_assetEntryPool], edx
	jnz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_40
	mov eax, [esi+0x4]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ebp+0xc]
	cmp byte [ebp-0x19], 0x0
	jz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_40
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_40
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_50:
	shl edx, 0x4
	lea ebx, [edx+g_assetEntryPool]
	mov eax, [ebx+0x4]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ebp+0xc]
	movzx eax, word [ebx+0xc]
	movzx edx, ax
	test ax, ax
	jnz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_50
	jmp _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_40
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_10
	jmp _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_60
_Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_20:
	add edi, 0x2
	mov eax, g_freeAssetEntryHead
	cmp eax, edi
	jnz _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h_70
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DB_ReferencedFFNameList()
_Z23DB_ReferencedFFNameListv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov byte [g_zoneNameList], 0x0
	xor esi, esi
	mov ebx, g_zones
	mov edi, g_zones
	jmp _Z23DB_ReferencedFFNameListv_10
_Z23DB_ReferencedFFNameListv_30:
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jz _Z23DB_ReferencedFFNameListv_20
_Z23DB_ReferencedFFNameListv_10:
	cmp byte [ebx], 0x0
	jz _Z23DB_ReferencedFFNameListv_30
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], edi
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z23DB_ReferencedFFNameListv_30
	cmp byte [g_zoneNameList], 0x0
	jnz _Z23DB_ReferencedFFNameListv_40
	lea eax, [ebx+0xa4]
	mov [ebp-0x11c], eax
	mov eax, [ebx+0xa4]
	cmp eax, 0x1
	jz _Z23DB_ReferencedFFNameListv_50
_Z23DB_ReferencedFFNameListv_70:
	cmp eax, 0x2
	jz _Z23DB_ReferencedFFNameListv_60
_Z23DB_ReferencedFFNameListv_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov edx, [ebp-0x11c]
	cmp dword [edx], 0x2
	jnz _Z23DB_ReferencedFFNameListv_30
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z23DB_ReferencedFFNameListv_30
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_load
	call _Z2vaPKcz
	lea edx, [ebp-0x118]
	mov [esp], edx
	mov ecx, 0x100
	mov edx, 0x2
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea eax, [ebp-0x118]
	mov [esp], eax
	call iCreateFileA
	cmp eax, 0xffffffff
	jz _Z23DB_ReferencedFFNameListv_30
	mov [esp], eax
	call CloseHandle
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_usermaps
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring__load
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jnz _Z23DB_ReferencedFFNameListv_10
_Z23DB_ReferencedFFNameListv_20:
	mov eax, g_zoneNameList
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23DB_ReferencedFFNameListv_40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	lea eax, [ebx+0xa4]
	mov [ebp-0x11c], eax
	mov eax, [ebx+0xa4]
	cmp eax, 0x1
	jnz _Z23DB_ReferencedFFNameListv_70
_Z23DB_ReferencedFFNameListv_50:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
_Z23DB_ReferencedFFNameListv_90:
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	jmp _Z23DB_ReferencedFFNameListv_80
_Z23DB_ReferencedFFNameListv_60:
	mov dword [esp+0x8], _cstring_usermaps
	jmp _Z23DB_ReferencedFFNameListv_90
	nop


;Load_FxImpactTableAsset(FxImpactTable**)
_Z23Load_FxImpactTableAssetPP13FxImpactTable:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1a
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LocalizeEntryAsset(LocalizeEntry**)
_Z23Load_LocalizeEntryAssetPP13LocalizeEntry:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x16
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_FxImpactTableAsset(FxImpactTable*)
_Z23Mark_FxImpactTableAssetP13FxImpactTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x1a
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x1a
	jmp _Z23Mark_FxImpactTableAssetP13FxImpactTable_10
_Z23Mark_FxImpactTableAssetP13FxImpactTable_30:
	test eax, eax
	jz _Z23Mark_FxImpactTableAssetP13FxImpactTable_20
	mov edx, eax
_Z23Mark_FxImpactTableAssetP13FxImpactTable_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z23Mark_FxImpactTableAssetP13FxImpactTable_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z23Mark_FxImpactTableAssetP13FxImpactTable_30
	mov edx, 0x2f
	jmp _Z23Mark_FxImpactTableAssetP13FxImpactTable_40
_Z23Mark_FxImpactTableAssetP13FxImpactTable_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1a
	jz _Z23Mark_FxImpactTableAssetP13FxImpactTable_50
_Z23Mark_FxImpactTableAssetP13FxImpactTable_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1a
	jnz _Z23Mark_FxImpactTableAssetP13FxImpactTable_60
_Z23Mark_FxImpactTableAssetP13FxImpactTable_50:
	cmp [edx+0x4], edi
	jnz _Z23Mark_FxImpactTableAssetP13FxImpactTable_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LocalizeEntryAsset(LocalizeEntry*)
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x16
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x16
	jmp _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_10
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_30:
	test eax, eax
	jz _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_20
	mov edx, eax
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_30
	mov edx, 0x2f
	jmp _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_40
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x16
	jz _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_50
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x16
	jnz _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_60
_Z23Mark_LocalizeEntryAssetP13LocalizeEntry_50:
	cmp [edx+0x4], edi
	jnz _Z23Mark_LocalizeEntryAssetP13LocalizeEntry_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_GetIndexBufferAndBase(unsigned char, void*, void*, int*)
_Z24DB_GetIndexBufferAndBasehPvS_Pi:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0xc]
	movzx eax, byte [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	mov ebx, [edx+0x54]
	mov eax, [ebp+0x10]
	mov [eax], ebx
	sub ecx, [edx+0x40]
	shr ecx, 1
	mov eax, [ebp+0x14]
	mov [eax], ecx
	pop ebx
	pop ebp
	ret
	nop


;DB_ReferencedFFChecksums()
_Z24DB_ReferencedFFChecksumsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov byte [g_zoneNameList], 0x0
	xor esi, esi
	mov ebx, g_zones
	mov edi, g_zones
	jmp _Z24DB_ReferencedFFChecksumsv_10
_Z24DB_ReferencedFFChecksumsv_30:
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jz _Z24DB_ReferencedFFChecksumsv_20
_Z24DB_ReferencedFFChecksumsv_10:
	cmp byte [ebx], 0x0
	jz _Z24DB_ReferencedFFChecksumsv_30
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], edi
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z24DB_ReferencedFFChecksumsv_30
	cmp byte [g_zoneNameList], 0x0
	jnz _Z24DB_ReferencedFFChecksumsv_40
_Z24DB_ReferencedFFChecksumsv_50:
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebx+0xa0]
	mov [esp], eax
	call _Z4itoaiPci
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	cmp dword [ebx+0xa4], 0x2
	jnz _Z24DB_ReferencedFFChecksumsv_30
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z24DB_ReferencedFFChecksumsv_30
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_load
	call _Z2vaPKcz
	lea edx, [ebp-0x128]
	mov [esp], edx
	mov ecx, 0x100
	mov edx, 0x2
	call _Z25DB_BuildOSPath_FromSourcePKc6FF_DIRiPc
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea eax, [ebp-0x128]
	mov [esp], eax
	call iCreateFileA
	mov [ebp-0x12c], eax
	cmp eax, 0xffffffff
	jz _Z24DB_ReferencedFFChecksumsv_30
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call iGetFileSize
	mov [ebp-0x130], eax
	mov edx, [ebp-0x12c]
	mov [esp], edx
	call CloseHandle
	mov eax, [ebp-0x130]
	test eax, eax
	jz _Z24DB_ReferencedFFChecksumsv_30
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x130]
	mov [esp], edx
	call _Z4itoaiPci
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	jmp _Z24DB_ReferencedFFChecksumsv_30
_Z24DB_ReferencedFFChecksumsv_40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call _Z9I_strncatPciPKc
	jmp _Z24DB_ReferencedFFChecksumsv_50
_Z24DB_ReferencedFFChecksumsv_20:
	mov eax, g_zoneNameList
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_FxEffectDefFromName(char const**)
_Z24Load_FxEffectDefFromNamePPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz _Z24Load_FxEffectDefFromNamePPKc_10
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x19
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov [ebx], eax
_Z24Load_FxEffectDefFromNamePPKc_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;DB_BeginRecoverLostDevice()
_Z25DB_BeginRecoverLostDevicev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [g_isRecoveringLostDevice], 0x1
	cmp byte [g_mayRecoverLostAssets], 0x0
	jz _Z25DB_BeginRecoverLostDevicev_10
_Z25DB_BeginRecoverLostDevicev_40:
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z25DB_BeginRecoverLostDevicev_20
_Z25DB_BeginRecoverLostDevicev_50:
	mov eax, [g_zoneCount]
	test eax, eax
	jg _Z25DB_BeginRecoverLostDevicev_30
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25DB_BeginRecoverLostDevicev_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	cmp byte [g_mayRecoverLostAssets], 0x0
	jnz _Z25DB_BeginRecoverLostDevicev_40
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	cmp byte [g_mayRecoverLostAssets], 0x0
	jz _Z25DB_BeginRecoverLostDevicev_10
	jmp _Z25DB_BeginRecoverLostDevicev_40
_Z25DB_BeginRecoverLostDevicev_20:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz _Z25DB_BeginRecoverLostDevicev_50
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z25DB_BeginRecoverLostDevicev_20
	jmp _Z25DB_BeginRecoverLostDevicev_50
_Z25DB_BeginRecoverLostDevicev_30:
	xor ebx, ebx
_Z25DB_BeginRecoverLostDevicev_60:
	movzx eax, byte [ebx+g_zoneHandles]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	mov [esp], edx
	call _Z25DB_ReleaseGeometryBuffersP11XZoneMemory
	add ebx, 0x1
	cmp ebx, [g_zoneCount]
	jl _Z25DB_BeginRecoverLostDevicev_60
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Load_GetCurrentZoneHandle(unsigned char*)
_Z25Load_GetCurrentZoneHandlePh:
	push ebp
	mov ebp, esp
	movzx edx, byte [g_zoneIndex]
	mov eax, [ebp+0x8]
	mov [eax], dl
	pop ebp
	ret
	nop


;Load_snd_alias_list_Asset(snd_alias_list_t**)
_Z25Load_snd_alias_list_AssetPP16snd_alias_list_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x7
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_snd_alias_list_Asset(snd_alias_list_t*)
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x7
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x7
	jmp _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_10
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_30:
	test eax, eax
	jz _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_20
	mov edx, eax
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_30
	mov edx, 0x2f
	jmp _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_40
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x7
	jz _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_50
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x7
	jnz _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_60
_Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_50:
	cmp [edx+0x4], edi
	jnz _Z25Mark_snd_alias_list_AssetP16snd_alias_list_t_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_GetVertexBufferAndOffset(unsigned char, void*, void*, int*)
_Z27DB_GetVertexBufferAndOffsethPvS_Pi:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	movzx eax, byte [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	sub ecx, [edx+0x38]
	mov eax, [ebp+0x14]
	mov [eax], ecx
	mov edx, [edx+0x50]
	mov eax, [ebp+0x10]
	mov [eax], edx
	pop ebp
	ret
	nop


;DB_GetAllXAssetOfType_FastFile(XAssetType, XAssetHeader*, int)
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp], db_hashCritSect
	call iInterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_10
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_70:
	xor ebx, ebx
	mov ecx, db_hashTable
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_60:
	movzx eax, word [ecx]
	movzx edx, ax
	test ax, ax
	jz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_20
	test edi, edi
	jz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_30
	jmp _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_40
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_50:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_20
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_30:
	mov eax, edx
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp [eax+g_assetEntryPool], esi
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_50
	add ebx, 0x1
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_30
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_20:
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_60
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_100:
	mov dword [esp], db_hashCritSect
	call iInterlockedDecrement
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_10:
	mov dword [esp], 0x0
	call _Z9Sys_Sleepi
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_10
	jmp _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_70
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_40:
	lea eax, [edi+ebx*4]
	mov [ebp-0x1c], eax
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_90:
	mov eax, edx
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	mov [ebp-0x2c], edx
	cmp [eax+g_assetEntryPool], esi
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_80
	mov eax, [edx+0x4]
	mov edx, [ebp-0x1c]
	mov [edx], eax
	add ebx, 0x1
	add edx, 0x4
	mov [ebp-0x1c], edx
_Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_80:
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_90
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_60
	jmp _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi_100
	nop


;Load_MaterialTechniqueSetAsset(MaterialTechniqueSet**)
_Z30Load_MaterialTechniqueSetAssetPP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x5
	call _Z12DB_AddXAsset10XAssetType12XAssetHeader
	mov [ebx], eax
	mov [esp], eax
	call _Z34Material_OriginalRemapTechniqueSetP20MaterialTechniqueSet
	mov eax, [ebx]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z22Material_UploadShadersP20MaterialTechniqueSet
	nop


;Mark_MaterialTechniqueSetAsset(MaterialTechniqueSet*)
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x20], 0x5
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z16DB_GetXAssetNamePK6XAsset
	mov ebx, eax
	mov esi, 0x5
	jmp _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_10
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_30:
	test eax, eax
	jz _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_20
	mov edx, eax
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_30
	mov edx, 0x2f
	jmp _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_40
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x5
	jz _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_50
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x5
	jnz _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_60
_Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_50:
	cmp [edx+0x4], edi
	jnz _Z30Mark_MaterialTechniqueSetAssetP20MaterialTechniqueSet_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_Update()
_Z9DB_Updatev:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z20Sys_IsDatabaseReady2v
	test eax, eax
	jz _Z9DB_Updatev_10
_Z9DB_Updatev_20:
	leave
	ret
_Z9DB_Updatev_10:
	call _Z19Sys_IsDatabaseReadyv
	test eax, eax
	jz _Z9DB_Updatev_20
	leave
	jmp _Z16DB_PostLoadXZonev


;Initialized global or static variables of db_registry:
SECTION .data
DB_DynamicCloneXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, _Z19DB_DynamicCloneMenu12XAssetHeaderS_i, 0x0, _Z24DB_DynamicCloneWeaponDef12XAssetHeaderS_i, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_defaultAssetName: dd _cstring_null, _cstring_default, _cstring_void, _cstring_void, _cstring_default1, _cstring_default, _cstring_white, _cstring_null1, _cstring_default, _cstring_nullwav, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_light_dynamic, _cstring_null, _cstring_fontsconsolefont, _cstring_uidefaultmenu, _cstring_default_menu, _cstring_cgame_unknown, _cstring_defaultweapon_mp, _cstring_null, _cstring_miscmissing_fx, _cstring_default, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_mpdefaultstringt, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_RemoveXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, _Z21DB_RemoveTechniqueSet12XAssetHeader, _Z14DB_RemoveImage12XAssetHeader, 0x0, 0x0, _Z20DB_RemoveLoadedSound12XAssetHeader, _Z16DB_RemoveClipMap12XAssetHeader, _Z16DB_RemoveClipMap12XAssetHeader, _Z17DB_RemoveComWorld12XAssetHeader, 0x0, 0x0, 0x0, _Z17DB_RemoveGfxWorld12XAssetHeader, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetPool: dd g_XModelPiecesPool, g_PhysPresetPool, g_XAnimPartsPool, g_XModelPool, g_MaterialPool, g_MaterialTechniqueSetPool, g_GfxImagePool, g_SoundPool, g_SndCurvePool, g_LoadedSoundPool, cm, cm, comWorld, 0x0, gameWorldMp, g_MapEntsPool, s_world, g_GfxLightDefPool, 0x0, g_FontPool, g_MenuListPool, g_MenuPool, g_LocalizeEntryPool, g_WeaponDefPool, 0x0, g_FxEffectDefPool, g_FxImpactTablePool, 0x0, 0x0, 0x0, 0x0, g_RawFilePool, g_StringTablePool, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_FreeXAssetHeaderHandler: dd _Z19DB_FreeXAssetHeaderI12XModelPiecesEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI10PhysPresetEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI10XAnimPartsEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI6XModelEvPv12XAssetHeader, _Z15DB_FreeMaterialPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI20MaterialTechniqueSetEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI8GfxImageEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI16snd_alias_list_tEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI8SndCurveEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI11LoadedSoundEvPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI7MapEntsEvPv12XAssetHeader, _Z22DB_FreeXAssetSingletonPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI11GfxLightDefEvPv12XAssetHeader, 0x0, _Z19DB_FreeXAssetHeaderI6Font_sEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI8MenuListEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI9menuDef_tEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI13LocalizeEntryEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI9WeaponDefEvPv12XAssetHeader, 0x0, _Z19DB_FreeXAssetHeaderI11FxEffectDefEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI13FxImpactTableEvPv12XAssetHeader, 0x0, 0x0, 0x0, 0x0, _Z19DB_FreeXAssetHeaderI7RawFileEvPv12XAssetHeader, _Z19DB_FreeXAssetHeaderI11StringTableEvPv12XAssetHeader, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_poolSize: dd 0x40, 0x40, 0x1000, 0x3e8, 0x800, 0x400, 0x960, 0x3e80, 0x40, 0x4b0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x1, 0x20, 0x0, 0x10, 0x80, 0x280, 0x1800, 0x80, 0x1, 0x190, 0x4, 0x0, 0x0, 0x0, 0x0, 0x400, 0x32, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_InitPoolHeaderHandler: dd _Z11DB_InitPoolI12XModelPiecesEvPvi, _Z11DB_InitPoolI10PhysPresetEvPvi, _Z11DB_InitPoolI10XAnimPartsEvPvi, _Z11DB_InitPoolI6XModelEvPvi, _Z11DB_InitPoolI8MaterialEvPvi, _Z11DB_InitPoolI20MaterialTechniqueSetEvPvi, _Z11DB_InitPoolI8GfxImageEvPvi, _Z11DB_InitPoolI16snd_alias_list_tEvPvi, _Z11DB_InitPoolI8SndCurveEvPvi, _Z11DB_InitPoolI11LoadedSoundEvPvi, _Z16DB_InitSingletonPvi, _Z16DB_InitSingletonPvi, _Z16DB_InitSingletonPvi, _Z16DB_InitSingletonPvi, _Z16DB_InitSingletonPvi, _Z11DB_InitPoolI7MapEntsEvPvi, _Z16DB_InitSingletonPvi, _Z11DB_InitPoolI11GfxLightDefEvPvi, 0x0, _Z11DB_InitPoolI6Font_sEvPvi, _Z11DB_InitPoolI8MenuListEvPvi, _Z11DB_InitPoolI9menuDef_tEvPvi, _Z11DB_InitPoolI13LocalizeEntryEvPvi, _Z11DB_InitPoolI9WeaponDefEvPvi, 0x0, _Z11DB_InitPoolI11FxEffectDefEvPvi, _Z11DB_InitPoolI13FxImpactTableEvPvi, 0x0, 0x0, 0x0, 0x0, _Z11DB_InitPoolI7RawFileEvPvi, _Z11DB_InitPoolI11StringTableEvPvi, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_AllocXAssetHeaderHandler: dd _Z14DB_AllocXAssetI12XModelPiecesE12XAssetHeaderPv, _Z14DB_AllocXAssetI10PhysPresetE12XAssetHeaderPv, _Z14DB_AllocXAssetI10XAnimPartsE12XAssetHeaderPv, _Z14DB_AllocXAssetI6XModelE12XAssetHeaderPv, _Z16DB_AllocMaterialPv, _Z14DB_AllocXAssetI20MaterialTechniqueSetE12XAssetHeaderPv, _Z14DB_AllocXAssetI8GfxImageE12XAssetHeaderPv, _Z14DB_AllocXAssetI16snd_alias_list_tE12XAssetHeaderPv, _Z14DB_AllocXAssetI8SndCurveE12XAssetHeaderPv, _Z14DB_AllocXAssetI11LoadedSoundE12XAssetHeaderPv, _Z23DB_AllocXAssetSingletonPv, _Z23DB_AllocXAssetSingletonPv, _Z23DB_AllocXAssetSingletonPv, _Z23DB_AllocXAssetSingletonPv, _Z23DB_AllocXAssetSingletonPv, _Z14DB_AllocXAssetI7MapEntsE12XAssetHeaderPv, _Z23DB_AllocXAssetSingletonPv, _Z14DB_AllocXAssetI11GfxLightDefE12XAssetHeaderPv, 0x0, _Z14DB_AllocXAssetI6Font_sE12XAssetHeaderPv, _Z14DB_AllocXAssetI8MenuListE12XAssetHeaderPv, _Z14DB_AllocXAssetI9menuDef_tE12XAssetHeaderPv, _Z14DB_AllocXAssetI13LocalizeEntryE12XAssetHeaderPv, _Z14DB_AllocXAssetI9WeaponDefE12XAssetHeaderPv, 0x0, _Z14DB_AllocXAssetI11FxEffectDefE12XAssetHeaderPv, _Z14DB_AllocXAssetI13FxImpactTableE12XAssetHeaderPv, 0x0, 0x0, 0x0, 0x0, _Z14DB_AllocXAssetI7RawFileE12XAssetHeaderPv, _Z14DB_AllocXAssetI11StringTableE12XAssetHeaderPv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_registry:
SECTION .rdata


;Zero initialized global or static variables of db_registry:
SECTION .bss
g_zones: resb 0x15c0
g_zoneNameList: resb 0x820
g_zoneIndex: resb 0x20
g_zoneHandles: resb 0x20
g_zoneCount: resb 0x4
db_hashCritSect: resb 0x8
g_defaultAssetCount: resb 0x14
g_assetEntryPool: resb 0x80000
db_hashTable: resb 0x10000
g_freeAssetEntryHead: resb 0x20
g_XModelPiecesPool: resb 0x320
g_PhysPresetPool: resb 0xb20
g_XAnimPartsPool: resb 0x58020
g_XModelPool: resb 0x35b80
g_MaterialPool: resb 0x28020
g_MaterialTechniqueSetPool: resb 0x25020
g_GfxImagePool: resb 0x151a0
g_SoundPool: resb 0x2ee20
g_SndCurvePool: resb 0x1220
g_LoadedSoundPool: resb 0xce60
g_MapEntsPool: resb 0x1c
g_GfxLightDefPool: resb 0x204
g_FontPool: resb 0x1a0
g_MenuListPool: resb 0x620
g_MenuPool: resb 0x2c620
g_LocalizeEntryPool: resb 0xc020
g_WeaponDefPool: resb 0x43c20
g_FxEffectDefPool: resb 0x3220
g_FxImpactTablePool: resb 0x40
g_RawFilePool: resb 0x3020
g_StringTablePool: resb 0x340
g_zoneInfo: resb 0x220
g_zoneInfoCount: resb 0x20
g_fileBuf: resb 0x80000
g_initializing: resb 0x4
g_zoneAllocType: resb 0x4
g_mayRecoverLostAssets: resb 0x1
g_isRecoveringLostDevice: resb 0x1
g_loadingZone: resb 0x2
g_sync: resb 0x4
g_zoneInited: resb 0x1
g_archiveBuf: resb 0xf
g_copyInfo: resb 0x2000
g_copyInfoCount: resb 0x20
g_debugZoneName: resb 0x40
g_missingAssetFile: resb 0x80
g_mainThreadBlocked: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_s:		db "%s",0ah,0
_cstring_szonessff:		db "%s/zone/%s/%s.ff",0
_cstring_sssff:		db "%s/%s/%s.ff",0
_cstring__load:		db "_load",0
_cstring_usermaps:		db "usermaps",0
_cstring_ssssff:		db "%s/%s/%s/%s.ff",0
_cstring_warning_could_no:		db "WARNING: Could not find zone ",27h,"%s",27h,0ah,0
_cstring_mp_patch:		db "mp_patch",0
_cstring_updatemp_patchff:		db "update:",5ch,"mp_patch.ff",0
_cstring_waiting_for_init:		db "Waiting for $init to finish.  There may be assets missing from code_post_gfx.",0ah,0
_cstring_waited_d_ms_for_:		db "Waited %d ms for $init to finish.",0ah,0
_cstring_mod:		db "mod",0
_cstring_error_could_not_:		db "ERROR: Could not find zone ",27h,"%s",27h,0ah,0
_cstring_loading_mp_patch:		db "Loading mp_patch.ff from disc, not from the update drive",0ah,0
_cstring_exceeded_limit_o:		db "Exceeded limit of %d ",27h,"%s",27h," assets.",0ah,0
_cstring_could_not_load_d:		db "Could not load default asset ",27h,"%s",27h," for asset type ",27h,"%s",27h,".",0ah,"Tried to load asset ",27h,"%s",27h,".",0
_cstring_could_not_alloca:		db "Could not allocate asset - increase XASSET_ENTRY_POOL_SIZE",0
_cstring_couldnt_find_the:		db "Couldn",27h,"t find the bsp for this map.  Please build the fast file associated with %s and try again.",0
_cstring_attempting_to_ov:		db "Attempting to override asset ",27h,"%s",27h," from zone ",27h,"%s",27h," with zone ",27h,"%s",27h,0
_cstring_g_copyinfo_excee:		db "g_copyInfo exceeded",0
_cstring_could_not_load_d1:		db "Could not load default asset for asset type ",27h,"%s",27h,0
_cstring_failed_to_create:		db "Failed to create database thread",0
_cstring_unloaded_fastfil:		db "Unloaded fastfile %s",0ah,0
_cstring_loading_fastfile:		db "Loading fastfile %s",0ah,0
_cstring_max_zone_count_e:		db "Max zone count exceeded",0
_cstring_ss:		db "%s/%s",0
_cstring_waited_i_msec_fo:		db "Waited %i msec for asset ",27h,"%s",27h," of type ",27h,"%s",27h,".",0ah,0
_cstring_could_not_load_s:		db "Could not load %s ",22h,"%s",22h,".",0ah,0
_cstring_waited_i_msec_fo1:		db "Waited %i msec for missing asset ",22h,"%s",22h,".",0ah,0
_cstring_ss1:		db "%s,%s",0ah,0
_cstring_missingassetcsv:		db "missingasset.csv",0
_cstring_smps:		db "%s,mp/%s",0ah,0
_cstring_cfg:		db ".cfg",0
_cstring_localized_:		db "localized_",0
_cstring_s_load:		db "%s_load",0
_cstring_space:		db " ",0
_cstring_:		db "/",0
_cstring_null:		db 0
_cstring_default:		db "default",0
_cstring_void:		db "void",0
_cstring_default1:		db "$default",0
_cstring_white:		db "$white",0
_cstring_null1:		db "null",0
_cstring_nullwav:		db "null.wav",0
_cstring_light_dynamic:		db "light_dynamic",0
_cstring_fontsconsolefont:		db "fonts/consolefont",0
_cstring_uidefaultmenu:		db "ui/default.menu",0
_cstring_default_menu:		db "default_menu",0
_cstring_cgame_unknown:		db "CGAME_UNKNOWN",0
_cstring_defaultweapon_mp:		db "defaultweapon_mp",0
_cstring_miscmissing_fx:		db "misc/missing_fx",0
_cstring_mpdefaultstringt:		db "mp/defaultStringTable.csv",0



;All constant floats and doubles:
SECTION .rdata

