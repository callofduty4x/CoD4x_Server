;Imports of db_registry:
	extern strcmp
	extern Material_ReleaseTechniqueSetResources
	extern Image_Release
	extern Z_FreeInternal
	extern Com_UnloadWorld
	extern Material_DirtySort
	extern DB_GetXAssetHeaderName
	extern Com_Printf
	extern Win_GetLanguage
	extern Sys_DefaultInstallPath
	extern Com_sprintf
	extern fs_gameDirVar
	extern strstr
	extern Q_strncpyz
	extern Sys_GetValue
	extern _setjmp
	extern Com_ErrorAbort
	extern Sys_DatabaseCompleted
	extern Sys_WaitStartDatabase
	extern _ZN10MacDisplay16GetSharedContextEv
	extern _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	extern _CreateFileA
	extern Com_PrintWarning
	extern Q_stricmp
	extern memset
	extern _GetFileSize
	extern PMem_BeginAlloc
	extern DB_ResetZoneSize
	extern DB_LoadXFile
	extern DB_LoadXFileInternal
	extern PMem_EndAlloc
	extern Sys_Sleep
	extern Sys_Milliseconds
	extern _CloseHandle
	extern Com_Error
	extern R_SyncRenderThread
	extern RB_UnbindAllImages
	extern R_ShutdownStreams
	extern RB_ClearPixelShader
	extern RB_ClearVertexShader
	extern RB_ClearVertexDecl
	extern Sys_InterlockedDecrement
	extern g_assetNames
	extern Com_PrintError
	extern DB_EnumXAssets
	extern SL_TransferSystem
	extern varXAsset
	extern Mark_XAsset
	extern DB_GetXAssetName
	extern SL_GetString
	extern SL_ConvertToString
	extern DB_SetXAssetName
	extern SL_ShutdownSystem
	extern tolower
	extern DB_GetXAssetTypeSize
	extern memcpy
	extern Sys_Error
	extern Sys_InterlockedIncrement
	extern Sys_IsDatabaseReady2
	extern Material_DirtyTechniqueSetOverrides
	extern Material_OverrideTechniqueSets
	extern DB_LoadSounds
	extern DB_LoadDObjs
	extern BG_FillInAllWeaponItems
	extern Sys_DatabaseCompleted2
	extern R_ClearAllStaticModelCacheRefs
	extern DB_SaveSounds
	extern DB_SaveDObjs
	extern Sys_SyncDatabase
	extern Sys_SpawnDatabaseThread
	extern Material_ClearShaderUploadList
	extern DB_FreeXZoneMemory
	extern PMem_Free
	extern Sys_WakeDatabase2
	extern Sys_WakeDatabase
	extern Sys_NotifyDatabase
	extern va
	extern FS_AddUserMapDirIWDs
	extern CM_Unload
	extern R_UnloadWorld
	extern DB_ResetMinimumFastFileLoaded
	extern Com_SyncThreads
	extern CG_VisionSetMyChanges
	extern Sys_IsDatabaseThread
	extern DB_IsMinimumFastFileLoaded
	extern Sys_IsRenderThread
	extern Sys_IsDatabaseReady
	extern Sys_IsMainThread
	extern Sys_HaveSuspendedDatabaseThread
	extern Sys_SuspendDatabaseThread
	extern Sys_FastFileBlockedCallback
	extern Sys_ResumeDatabaseThread
	extern com_developer
	extern loc_warnings
	extern loc_warningsAsErrors
	extern Sys_EnterCriticalSection
	extern FS_FOpenTextFileWrite
	extern com_missingAssetOpenFailed
	extern Sys_LeaveCriticalSection
	extern FS_FOpenFileAppend
	extern FS_Write
	extern FS_FCloseFile
	extern R_DelayLoadImage
	extern DB_RecoverGeometryBuffers
	extern Q_strncmp
	extern Q_strncat
	extern com_dedicated
	extern itoa
	extern DB_ReleaseGeometryBuffers
	extern Material_OriginalRemapTechniqueSet
	extern Material_UploadShaders
	extern DB_SyncXAssets
	extern DB_FileExists
	extern DB_FileSize
	extern cm
	extern comWorld
	extern gameWorldMp
	extern s_world
	extern g_zones
	extern g_assetEntryPool
	extern g_zoneHandles
	extern g_zoneNameList
	extern db_hashTable
	extern DB_RemoveLoadedSound
	extern DB_BuildOSPath
	extern DB_BuildZoneFilePath
	extern Sys_SleepSec
	extern g_loadingZone
	extern g_zoneInfoCount
	extern g_zoneInfo
	extern g_zoneIndex
	extern g_zoneCount
	extern g_initializing
	extern g_mayRecoverLostAssets
	extern g_isRecoveringLostDevice
	extern DB_XAssetPool
	extern g_poolSize
	extern DB_LoadXAssets
	extern Load_WeaponDefAsset
	extern DB_CreateDefaultEntry
	extern DB_FindXAssetHeaderReal
	extern DB_AddXAssetInternal

;Exports of db_registry:
	global DB_DynamicCloneXAssetHandler
	global DB_DynamicCloneMenu
	global DB_DynamicCloneWeaponDef
	global db_hashCritSect
	global g_defaultAssetCount
	global g_defaultAssetName
	global DB_RemoveXAssetHandler
	global DB_RemoveTechniqueSet
	global DB_RemoveImage
	global DB_RemoveComWorld
	global g_freeAssetEntryHead
	global DB_FreeXAssetHeaderHandler
	global DB_FreeXAssetHeader_XModelPieces
	global DB_FreeXAssetHeader_PhysPreset
	global DB_FreeXAssetHeader_XAnimParts
	global DB_FreeXAssetHeader_XModel
	global DB_FreeMaterial
	global DB_FreeXAssetHeader_MaterialTechniqueSet
	global DB_FreeXAssetHeader_GfxImage
	global DB_FreeXAssetHeader_snd_alias_list_t
	global DB_FreeXAssetHeader_SndCurve
	global DB_FreeXAssetHeader_LoadedSound
	global DB_FreeXAssetSingleton
	global DB_FreeXAssetHeader_MapEnts
	global DB_FreeXAssetHeader_GfxLightDef
	global DB_FreeXAssetHeader_Font_s
	global DB_FreeXAssetHeader_MenuList
	global DB_FreeXAssetHeader_menuDef_t
	global DB_FreeXAssetHeader_LocalizeEntry
	global DB_FreeXAssetHeader_WeaponDef
	global DB_FreeXAssetHeader_FxEffectDef
	global DB_FreeXAssetHeader_FxImpactTable
	global DB_FreeXAssetHeader_RawFile
	global DB_FreeXAssetHeader_StringTable
	global g_fileBuf
	global g_zoneAllocType
	global g_sync
	global g_zoneInited
	global DB_InitPoolHeaderHandler
	global DB_InitPool_XModelPieces
	global DB_InitPool_PhysPreset
	global DB_InitPool_XAnimParts
	global DB_InitPool_XModel
	global DB_InitPool_Material
	global DB_InitPool_MaterialTechniqueSet
	global DB_InitPool_GfxImage
	global DB_InitPool_snd_alias_list_t
	global DB_InitPool_SndCurve
	global DB_InitPool_LoadedSound
	global DB_InitSingleton
	global DB_InitPool_MapEnts
	global DB_InitPool_GfxLightDef
	global DB_InitPool_Font_s
	global DB_InitPool_MenuList
	global DB_InitPool_menuDef_t
	global DB_InitPool_LocalizeEntry
	global DB_InitPool_WeaponDef
	global DB_InitPool_FxEffectDef
	global DB_InitPool_FxImpactTable
	global DB_InitPool_RawFile
	global DB_InitPool_StringTable
	global g_archiveBuf
	global g_copyInfo
	global g_copyInfoCount
	global DB_AllocXAssetHeaderHandler
	global DB_AllocXAsset_XModelPieces
	global DB_AllocXAsset_PhysPreset
	global DB_AllocXAsset_XAnimParts
	global DB_AllocXAsset_XModel
	global DB_AllocMaterial
	global DB_AllocXAsset_MaterialTechniqueSet
	global DB_AllocXAsset_GfxImage
	global DB_AllocXAsset_snd_alias_list_t
	global DB_AllocXAsset_SndCurve
	global DB_AllocXAsset_LoadedSound
	global DB_AllocXAssetSingleton
	global DB_AllocXAsset_MapEnts
	global DB_AllocXAsset_GfxLightDef
	global DB_AllocXAsset_Font_s
	global DB_AllocXAsset_MenuList
	global DB_AllocXAsset_menuDef_t
	global DB_AllocXAsset_LocalizeEntry
	global DB_AllocXAsset_WeaponDef
	global DB_AllocXAsset_FxEffectDef
	global DB_AllocXAsset_FxImpactTable
	global DB_AllocXAsset_RawFile
	global DB_AllocXAsset_StringTable
	global g_debugZoneName
	global DB_PrintAssetName
	global DB_SyncExternalAssets
	global DB_AllocXAssetHeader
	global DB_FreeUnusedResources
	global DB_UnloadXZone
	global DB_Cleanup
	global Load_FontAsset
	global Load_MenuAsset
	global Mark_FontAsset
	global Mark_MenuAsset
	global DB_ReplaceModel
	global DB_AddUserMapDir
	global DB_ModFileExists
	global DB_RemoveClipMap
	global Load_XModelAsset
	global Mark_XModelAsset
	global DB_RemoveGfxWorld
	global Load_ClipMapAsset
	global Load_MapEntsAsset
	global Load_RawFileAsset
	global Mark_ClipMapAsset
	global Mark_MapEntsAsset
	global Mark_RawFileAsset
	global DB_UpdateDebugZone
	global Load_ComWorldAsset
	global Load_GfxImageAsset
	global Load_GfxWorldAsset
	global Load_LightDefAsset
	global Load_MenuListAsset
	global Load_SndCurveAsset
	global Mark_ComWorldAsset
	global Mark_GfxImageAsset
	global Mark_GfxWorldAsset
	global Mark_LightDefAsset
	global Mark_MaterialAsset
	global Mark_MenuListAsset
	global Mark_WeaponDefAsset
	global DB_LoadDelayedImages
	global Load_PhysPresetAsset
	global Load_XAnimPartsAsset
	global Mark_PhysPresetAsset
	global Mark_XAnimPartsAsset
	global Load_FxEffectDefAsset
	global Load_GameWorldMpAsset
	global Load_GameWorldSpAsset
	global Load_LoadedSoundAsset
	global Load_StringTableAsset
	global Mark_FxEffectDefAsset
	global Mark_GameWorldMpAsset
	global Mark_GameWorldSpAsset
	global Mark_LoadedSoundAsset
	global Mark_StringTableAsset
	global Load_FxImpactTableAsset
	global Load_LocalizeEntryAsset
	global Mark_FxImpactTableAsset
	global Mark_LocalizeEntryAsset
	global DB_GetIndexBufferAndBase
	global Load_FxEffectDefFromName
	global Load_GetCurrentZoneHandle
	global Load_snd_alias_list_Asset
	global DB_GetVertexBufferAndOffset
	global Load_MaterialTechniqueSetAsset
	global Mark_MaterialTechniqueSetAsset
	global DB_Update
	global g_mainThreadBlocked


SECTION .text


;DB_DynamicCloneMenu(XAssetHeader, XAssetHeader, int)
DB_DynamicCloneMenu:
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
	jle DB_DynamicCloneMenu_10
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp+0xc]
DB_DynamicCloneMenu_70:
	mov eax, [edx+0x118]
	mov edx, [ebp-0x1c]
	mov edi, [eax+edx*4]
	mov eax, [edi]
	mov [ebp-0x28], eax
	test eax, eax
	jz DB_DynamicCloneMenu_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0xa4]
	mov [ebp-0x24], edx
	test edx, edx
	jle DB_DynamicCloneMenu_20
	mov eax, [ebp+0x8]
	mov eax, [eax+0x118]
	mov [ebp-0x20], eax
	xor ebx, ebx
	mov edx, eax
	jmp DB_DynamicCloneMenu_30
DB_DynamicCloneMenu_60:
	mov edx, [ebp-0x20]
DB_DynamicCloneMenu_30:
	mov esi, [edx+ebx*4]
	mov eax, [esi]
	test eax, eax
	jz DB_DynamicCloneMenu_40
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz DB_DynamicCloneMenu_50
DB_DynamicCloneMenu_40:
	add ebx, 0x1
	cmp ebx, [ebp-0x24]
	jnz DB_DynamicCloneMenu_60
DB_DynamicCloneMenu_20:
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg DB_DynamicCloneMenu_70
DB_DynamicCloneMenu_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_DynamicCloneMenu_50:
	mov eax, [esi+0x50]
	mov [edi+0x50], eax
	and dword [edi+0x50], 0xfffffffd
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0xc]
	cmp [edx+0xa4], eax
	jg DB_DynamicCloneMenu_70
	jmp DB_DynamicCloneMenu_10
	nop


;DB_DynamicCloneWeaponDef(XAssetHeader, XAssetHeader, int)
DB_DynamicCloneWeaponDef:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;DB_RemoveTechniqueSet(XAssetHeader)
DB_RemoveTechniqueSet:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Material_ReleaseTechniqueSetResources
	nop


;DB_RemoveImage(XAssetHeader)
DB_RemoveImage:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Image_Release
	nop


;DB_RemoveComWorld(XAssetHeader)
DB_RemoveComWorld:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Com_UnloadWorld
	nop


;void DB_FreeXAssetHeader<XModelPieces>(void*, XAssetHeader)
DB_FreeXAssetHeader_XModelPieces:
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
DB_FreeXAssetHeader_PhysPreset:
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
DB_FreeXAssetHeader_XAnimParts:
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
DB_FreeXAssetHeader_XModel:
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
DB_FreeMaterial:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	call Material_DirtySort
	mov eax, [ebx]
	mov [ebx], esi
	mov [esi], eax
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_FreeXAssetHeader<MaterialTechniqueSet>(void*, XAssetHeader)
DB_FreeXAssetHeader_MaterialTechniqueSet:
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
DB_FreeXAssetHeader_GfxImage:
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
DB_FreeXAssetHeader_snd_alias_list_t:
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
DB_FreeXAssetHeader_SndCurve:
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
DB_FreeXAssetHeader_LoadedSound:
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
DB_FreeXAssetSingleton:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_FreeXAssetHeader<MapEnts>(void*, XAssetHeader)
DB_FreeXAssetHeader_MapEnts:
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
DB_FreeXAssetHeader_GfxLightDef:
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
DB_FreeXAssetHeader_Font_s:
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
DB_FreeXAssetHeader_MenuList:
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
DB_FreeXAssetHeader_menuDef_t:
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
DB_FreeXAssetHeader_LocalizeEntry:
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
DB_FreeXAssetHeader_WeaponDef:
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
DB_FreeXAssetHeader_FxEffectDef:
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
DB_FreeXAssetHeader_FxImpactTable:
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
DB_FreeXAssetHeader_RawFile:
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
DB_FreeXAssetHeader_StringTable:
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
DB_InitPool_XModelPieces:
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
	jle DB_InitPool_XModelPieces_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XModelPieces_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_XModelPieces_20
DB_InitPool_XModelPieces_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<PhysPreset>(void*, int)
DB_InitPool_PhysPreset:
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
	jle DB_InitPool_PhysPreset_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_PhysPreset_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz DB_InitPool_PhysPreset_20
DB_InitPool_PhysPreset_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XAnimParts>(void*, int)
DB_InitPool_XAnimParts:
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
	jle DB_InitPool_XAnimParts_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XAnimParts_20:
	add ecx, 0x1
	add eax, 0x58
	mov [edx+0x4], eax
	add edx, 0x58
	cmp ecx, ebx
	jnz DB_InitPool_XAnimParts_20
DB_InitPool_XAnimParts_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<XModel>(void*, int)
DB_InitPool_XModel:
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
	jle DB_InitPool_XModel_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_XModel_20:
	add ecx, 0x1
	add eax, 0xdc
	mov [edx+0x4], eax
	add edx, 0xdc
	cmp ecx, ebx
	jnz DB_InitPool_XModel_20
DB_InitPool_XModel_10:
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
DB_InitPool_Material:
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
	jle DB_InitPool_Material_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_Material_20:
	add ecx, 0x1
	add eax, 0x50
	mov [edx+0x4], eax
	add edx, 0x50
	cmp ecx, ebx
	jnz DB_InitPool_Material_20
DB_InitPool_Material_10:
	lea eax, [ebx+ebx*4]
	shl eax, 0x4
	mov dword [eax+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<MaterialTechniqueSet>(void*, int)
DB_InitPool_MaterialTechniqueSet:
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
	jle DB_InitPool_MaterialTechniqueSet_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MaterialTechniqueSet_20:
	add ecx, 0x1
	add eax, 0x94
	mov [edx+0x4], eax
	add edx, 0x94
	cmp ecx, ebx
	jnz DB_InitPool_MaterialTechniqueSet_20
DB_InitPool_MaterialTechniqueSet_10:
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*4]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxImage>(void*, int)
DB_InitPool_GfxImage:
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
	jle DB_InitPool_GfxImage_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_GfxImage_20:
	add ecx, 0x1
	add eax, 0x24
	mov [edx+0x4], eax
	add edx, 0x24
	cmp ecx, ebx
	jnz DB_InitPool_GfxImage_20
DB_InitPool_GfxImage_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<snd_alias_list_t>(void*, int)
DB_InitPool_snd_alias_list_t:
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
	jle DB_InitPool_snd_alias_list_t_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_snd_alias_list_t_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_snd_alias_list_t_20
DB_InitPool_snd_alias_list_t_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<SndCurve>(void*, int)
DB_InitPool_SndCurve:
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
	jle DB_InitPool_SndCurve_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_SndCurve_20:
	add ecx, 0x1
	add eax, 0x48
	mov [edx+0x4], eax
	add edx, 0x48
	cmp ecx, ebx
	jnz DB_InitPool_SndCurve_20
DB_InitPool_SndCurve_10:
	lea eax, [ebx+ebx*8]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LoadedSound>(void*, int)
DB_InitPool_LoadedSound:
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
	jle DB_InitPool_LoadedSound_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_LoadedSound_20:
	add ecx, 0x1
	add eax, 0x2c
	mov [edx+0x4], eax
	add edx, 0x2c
	cmp ecx, ebx
	jnz DB_InitPool_LoadedSound_20
DB_InitPool_LoadedSound_10:
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DB_InitSingleton(void*, int)
DB_InitSingleton:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;void DB_InitPool<MapEnts>(void*, int)
DB_InitPool_MapEnts:
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
	jle DB_InitPool_MapEnts_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MapEnts_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_MapEnts_20
DB_InitPool_MapEnts_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<GfxLightDef>(void*, int)
DB_InitPool_GfxLightDef:
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
	jle DB_InitPool_GfxLightDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_GfxLightDef_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz DB_InitPool_GfxLightDef_20
DB_InitPool_GfxLightDef_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<Font_s>(void*, int)
DB_InitPool_Font_s:
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
	jle DB_InitPool_Font_s_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_Font_s_20:
	add ecx, 0x1
	add eax, 0x18
	mov [edx+0x4], eax
	add edx, 0x18
	cmp ecx, ebx
	jnz DB_InitPool_Font_s_20
DB_InitPool_Font_s_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<MenuList>(void*, int)
DB_InitPool_MenuList:
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
	jle DB_InitPool_MenuList_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_MenuList_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_MenuList_20
DB_InitPool_MenuList_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<menuDef_t>(void*, int)
DB_InitPool_menuDef_t:
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
	jle DB_InitPool_menuDef_t_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_menuDef_t_20:
	add ecx, 0x1
	add eax, 0x11c
	mov [edx+0x4], eax
	add edx, 0x11c
	cmp ecx, ebx
	jnz DB_InitPool_menuDef_t_20
DB_InitPool_menuDef_t_10:
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	sub eax, ebx
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<LocalizeEntry>(void*, int)
DB_InitPool_LocalizeEntry:
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
	jle DB_InitPool_LocalizeEntry_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_LocalizeEntry_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz DB_InitPool_LocalizeEntry_20
DB_InitPool_LocalizeEntry_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<WeaponDef>(void*, int)
DB_InitPool_WeaponDef:
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
	jle DB_InitPool_WeaponDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_WeaponDef_20:
	add ecx, 0x1
	add eax, 0x878
	mov [edx+0x4], eax
	add edx, 0x878
	cmp ecx, ebx
	jnz DB_InitPool_WeaponDef_20
DB_InitPool_WeaponDef_10:
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
DB_InitPool_FxEffectDef:
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
	jle DB_InitPool_FxEffectDef_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_FxEffectDef_20:
	add ecx, 0x1
	add eax, 0x20
	mov [edx+0x4], eax
	add edx, 0x20
	cmp ecx, ebx
	jnz DB_InitPool_FxEffectDef_20
DB_InitPool_FxEffectDef_10:
	shl ebx, 0x5
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<FxImpactTable>(void*, int)
DB_InitPool_FxImpactTable:
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
	jle DB_InitPool_FxImpactTable_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_FxImpactTable_20:
	add ecx, 0x1
	add eax, 0x8
	mov [edx+0x4], eax
	add edx, 0x8
	cmp ecx, ebx
	jnz DB_InitPool_FxImpactTable_20
DB_InitPool_FxImpactTable_10:
	mov dword [esi+ebx*8+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;void DB_InitPool<RawFile>(void*, int)
DB_InitPool_RawFile:
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
	jle DB_InitPool_RawFile_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_RawFile_20:
	add ecx, 0x1
	add eax, 0xc
	mov [edx+0x4], eax
	add edx, 0xc
	cmp ecx, ebx
	jnz DB_InitPool_RawFile_20
DB_InitPool_RawFile_10:
	lea eax, [ebx+ebx*2]
	mov dword [esi+eax*4+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;void DB_InitPool<StringTable>(void*, int)
DB_InitPool_StringTable:
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
	jle DB_InitPool_StringTable_10
	mov edx, esi
	xor ecx, ecx
DB_InitPool_StringTable_20:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x4], eax
	add edx, 0x10
	cmp ecx, ebx
	jnz DB_InitPool_StringTable_20
DB_InitPool_StringTable_10:
	shl ebx, 0x4
	mov dword [ebx+esi+0x4], 0x0
	pop ebx
	pop esi
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XModelPieces>(void*)
DB_AllocXAsset_XModelPieces:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XModelPieces_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XModelPieces_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<PhysPreset>(void*)
DB_AllocXAsset_PhysPreset:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_PhysPreset_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_PhysPreset_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XAnimParts>(void*)
DB_AllocXAsset_XAnimParts:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XAnimParts_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XAnimParts_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<XModel>(void*)
DB_AllocXAsset_XModel:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_XModel_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_XModel_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocMaterial(void*)
DB_AllocMaterial:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	call Material_DirtySort
	mov eax, [ebx]
	test eax, eax
	jz DB_AllocMaterial_10
	mov edx, eax
	mov eax, [eax]
	mov [ebx], eax
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
DB_AllocMaterial_10:
	xor edx, edx
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop ebp
	ret
	nop


;XAssetHeader DB_AllocXAsset<MaterialTechniqueSet>(void*)
DB_AllocXAsset_MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MaterialTechniqueSet_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MaterialTechniqueSet_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxImage>(void*)
DB_AllocXAsset_GfxImage:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_GfxImage_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_GfxImage_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<snd_alias_list_t>(void*)
DB_AllocXAsset_snd_alias_list_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_snd_alias_list_t_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_snd_alias_list_t_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<SndCurve>(void*)
DB_AllocXAsset_SndCurve:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_SndCurve_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_SndCurve_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LoadedSound>(void*)
DB_AllocXAsset_LoadedSound:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_LoadedSound_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_LoadedSound_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_AllocXAssetSingleton(void*)
DB_AllocXAssetSingleton:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MapEnts>(void*)
DB_AllocXAsset_MapEnts:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MapEnts_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MapEnts_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<GfxLightDef>(void*)
DB_AllocXAsset_GfxLightDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_GfxLightDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_GfxLightDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<Font_s>(void*)
DB_AllocXAsset_Font_s:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_Font_s_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_Font_s_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<MenuList>(void*)
DB_AllocXAsset_MenuList:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_MenuList_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_MenuList_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<menuDef_t>(void*)
DB_AllocXAsset_menuDef_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_menuDef_t_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_menuDef_t_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<LocalizeEntry>(void*)
DB_AllocXAsset_LocalizeEntry:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_LocalizeEntry_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_LocalizeEntry_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<WeaponDef>(void*)
DB_AllocXAsset_WeaponDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_WeaponDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_WeaponDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxEffectDef>(void*)
DB_AllocXAsset_FxEffectDef:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_FxEffectDef_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_FxEffectDef_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<FxImpactTable>(void*)
DB_AllocXAsset_FxImpactTable:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_FxImpactTable_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_FxImpactTable_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<RawFile>(void*)
DB_AllocXAsset_RawFile:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_RawFile_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_RawFile_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;XAssetHeader DB_AllocXAsset<StringTable>(void*)
DB_AllocXAsset_StringTable:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz DB_AllocXAsset_StringTable_10
	mov edx, eax
	mov eax, [eax]
	mov [ecx], eax
	mov eax, edx
	pop ebp
	ret
DB_AllocXAsset_StringTable_10:
	xor edx, edx
	mov eax, edx
	pop ebp
	ret


;DB_PrintAssetName(XAssetHeader, void*)
DB_PrintAssetName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	lea eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp], eax
	call DB_GetXAssetHeaderName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	leave
	ret



;DB_SyncExternalAssets()
DB_SyncExternalAssets:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_SyncRenderThread
	call RB_UnbindAllImages
	call R_ShutdownStreams
	call RB_ClearPixelShader
	call RB_ClearVertexShader
	leave
	jmp RB_ClearVertexDecl
	nop


;DB_AllocXAssetHeader(XAssetType)
DB_AllocXAssetHeader:
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
	jz DB_AllocXAssetHeader_10
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
DB_AllocXAssetHeader_10:
	mov dword [esp], db_hashCritSect+0x4
	call Sys_InterlockedDecrement
	mov edx, [ebp-0xc]
	mov ebx, g_assetNames
	mov eax, [ebx+edx*4]
	mov [esp+0xc], eax
	mov eax, [edx*4+g_poolSize]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_exceeded_limit_o
	mov dword [esp], 0x1
	call Com_PrintError
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], DB_PrintAssetName
	mov eax, [ebp-0xc]
	mov [esp], eax
	call DB_EnumXAssets
	mov edx, [ebp-0xc]
	mov eax, [ebx+edx*4]
	mov [esp+0xc], eax
	mov eax, [edx*4+g_poolSize]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_exceeded_limit_o
	mov dword [esp], 0x2
	call Com_Error
	mov eax, esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;DB_FreeUnusedResources()
DB_FreeUnusedResources:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x4
	call SL_TransferSystem
	xor esi, esi
	mov edi, varXAsset
DB_FreeUnusedResources_40:
	lea eax, [db_hashTable+esi]
	movzx eax, word [eax]
	movzx edx, ax
	test ax, ax
	jz DB_FreeUnusedResources_10
	jmp DB_FreeUnusedResources_20
DB_FreeUnusedResources_30:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_FreeUnusedResources_10
DB_FreeUnusedResources_20:
	shl edx, 0x4
	lea ebx, [edx+g_assetEntryPool]
	cmp byte [ebx+0x8], 0x0
	jz DB_FreeUnusedResources_30
	mov [edi], ebx
	call Mark_XAsset
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_FreeUnusedResources_20
DB_FreeUnusedResources_10:
	add esi, 0x2
	mov eax, 65536
	cmp eax, esi
	jnz DB_FreeUnusedResources_40
	mov dword [ebp-0x1c], 0x0
DB_FreeUnusedResources_90:
	mov eax, [ebp-0x1c]
	lea edi, [eax+eax+db_hashTable]
DB_FreeUnusedResources_100:
	movzx eax, word [edi]
	test ax, ax
	jz DB_FreeUnusedResources_50
DB_FreeUnusedResources_80:
	movzx ebx, ax
	shl ebx, 0x4
	lea esi, [ebx+g_assetEntryPool]
	cmp byte [esi+0x8], 0x0
	jnz DB_FreeUnusedResources_60
	cmp byte [esi+0x9], 0x0
	jz DB_FreeUnusedResources_70
	mov [esp], esi
	call DB_GetXAssetName
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call SL_GetString
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov [esp], esi
	call DB_SetXAssetName
DB_FreeUnusedResources_60:
	lea edi, [esi+0xa]
	movzx eax, word [edi]
	test ax, ax
	jnz DB_FreeUnusedResources_80
DB_FreeUnusedResources_50:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x8000
	jnz DB_FreeUnusedResources_90
	mov dword [esp], 0x8
	call SL_ShutdownSystem
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_FreeUnusedResources_70:
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
	jmp DB_FreeUnusedResources_100




;DB_UnloadXZone(unsigned int, unsigned char)
DB_UnloadXZone:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov [ebp-0x2d], dl
	mov dword [ebp-0x28], 0x0
DB_UnloadXZone_70:
	mov eax, [ebp-0x28]
	lea edi, [eax+eax+db_hashTable]
DB_UnloadXZone_270:
	movzx eax, word [edi]
	test ax, ax
	jz DB_UnloadXZone_10
DB_UnloadXZone_60:
	movzx eax, ax
	shl eax, 0x4
	add eax, g_assetEntryPool
	mov [ebp-0x24], eax
	mov edx, eax
	movzx eax, byte [eax+0x8]
	cmp eax, [ebp-0x2c]
	jz DB_UnloadXZone_20
DB_UnloadXZone_200:
	mov edi, [ebp-0x24]
	add edi, 0xc
DB_UnloadXZone_90:
	movzx eax, word [edi]
	test ax, ax
	jz DB_UnloadXZone_30
DB_UnloadXZone_50:
	movzx ebx, ax
	shl ebx, 0x4
	lea esi, [ebx+g_assetEntryPool]
	movzx eax, byte [esi+0x8]
	cmp [ebp-0x2c], eax
	jz DB_UnloadXZone_40
	lea edi, [esi+0xc]
	movzx eax, word [edi]
	test ax, ax
	jnz DB_UnloadXZone_50
DB_UnloadXZone_30:
	mov edi, [ebp-0x24]
	add edi, 0xa
	movzx eax, word [edi]
	test ax, ax
	jnz DB_UnloadXZone_60
DB_UnloadXZone_10:
	add dword [ebp-0x28], 0x1
	cmp dword [ebp-0x28], 0x8000
	jnz DB_UnloadXZone_70
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_UnloadXZone_40:
	mov eax, [ebx+g_assetEntryPool]
	mov ecx, [eax*4+DB_RemoveXAssetHandler]
	test ecx, ecx
	jz DB_UnloadXZone_80
	mov edx, [eax*4+DB_RemoveXAssetHandler]
	mov eax, [esi+0x4]
	mov [esp], eax
	call edx
DB_UnloadXZone_80:
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
	jmp DB_UnloadXZone_90
DB_UnloadXZone_20:
	cmp byte [edx+0x9], 0x0
	jz DB_UnloadXZone_100
	cmp byte [ebp-0x2d], 0x0
	jnz DB_UnloadXZone_110
DB_UnloadXZone_100:
	mov ecx, [ebp-0x24]
	mov eax, [ecx]
	mov ebx, [eax*4+DB_RemoveXAssetHandler]
	test ebx, ebx
	jz DB_UnloadXZone_120
	mov eax, [ecx+0x4]
	mov [esp], eax
	call ebx
	mov edx, [ebp-0x24]
DB_UnloadXZone_210:
	movzx eax, word [edx+0xc]
	movzx edx, ax
	test ax, ax
	jnz DB_UnloadXZone_130
	cmp byte [ebp-0x2d], 0x0
	jz DB_UnloadXZone_140
	mov ecx, [ebp-0x24]
	mov ecx, [ecx]
	mov [ebp-0x20], ecx
	mov eax, [ecx*4+g_defaultAssetName]
	mov [ebp-0x1c], eax
	mov esi, ecx
	mov ebx, eax
	jmp DB_UnloadXZone_150
DB_UnloadXZone_170:
	test eax, eax
	jz DB_UnloadXZone_160
	mov edx, eax
DB_UnloadXZone_180:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
DB_UnloadXZone_150:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_UnloadXZone_170
	mov edx, 0x2f
	jmp DB_UnloadXZone_180
DB_UnloadXZone_130:
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
	jz DB_UnloadXZone_190
	mov [esp+0x8], edi
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
DB_UnloadXZone_190:
	mov eax, [esi+g_assetEntryPool]
	mov [esp], eax
	call DB_GetXAssetTypeSize
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
	jmp DB_UnloadXZone_200
DB_UnloadXZone_120:
	mov edx, ecx
	jmp DB_UnloadXZone_210
DB_UnloadXZone_160:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz DB_UnloadXZone_220
	jmp DB_UnloadXZone_230
DB_UnloadXZone_240:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_UnloadXZone_230
DB_UnloadXZone_220:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	mov edx, [ebp-0x20]
	cmp edx, [eax+g_assetEntryPool]
	jnz DB_UnloadXZone_240
	mov [esp], ebx
	call DB_GetXAssetName
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz DB_UnloadXZone_250
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_UnloadXZone_220
DB_UnloadXZone_230:
	xor esi, esi
	test esi, esi
	jnz DB_UnloadXZone_260
DB_UnloadXZone_290:
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
	jz DB_UnloadXZone_270
	mov dword [esp], db_hashCritSect+0x4
	call Sys_InterlockedDecrement
	mov eax, g_assetNames
	mov edx, [ebp-0x20]
	mov eax, [eax+edx*4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_could_not_load_d1
	call Sys_Error
	jmp DB_UnloadXZone_270
DB_UnloadXZone_280:
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
DB_UnloadXZone_250:
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz DB_UnloadXZone_280
	mov esi, [ebx+0x4]
	test esi, esi
	jz DB_UnloadXZone_290
DB_UnloadXZone_260:
	add dword [g_defaultAssetCount], 0x1
	mov ecx, [ebp-0x24]
	mov byte [ecx+0x8], 0x0
	mov [esp], ecx
	call DB_GetXAssetName
	mov ebx, eax
	mov edi, [ebp-0x20]
	mov [esp], edi
	call DB_GetXAssetTypeSize
	mov ecx, [ebp-0x24]
	mov edx, [ecx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	mov [esp+0x4], ebx
	mov edi, [ebp-0x24]
	mov [esp], edi
	call DB_SetXAssetName
	jmp DB_UnloadXZone_200
DB_UnloadXZone_140:
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
	jmp DB_UnloadXZone_270
DB_UnloadXZone_110:
	mov eax, varXAsset
	mov [eax], edx
	call Mark_XAsset
	jmp DB_UnloadXZone_100



;DB_Cleanup()
DB_Cleanup:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Sys_SyncDatabase
	nop



;Load_FontAsset(Font_s**)
Load_FontAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x13
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MenuAsset(menuDef_t**)
Load_MenuAsset:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov edx, ebx
	mov eax, 0x15
	call DB_AddXAssetInternal
	mov [esi], eax
	mov eax, [ebx+0xa4]
	test eax, eax
	jle Load_MenuAsset_10
	xor ecx, ecx
Load_MenuAsset_20:
	mov eax, [ebx+0x118]
	mov edx, [eax+ecx*4]
	mov eax, [esi]
	mov [edx+0xe8], eax
	add ecx, 0x1
	cmp [ebx+0xa4], ecx
	jg Load_MenuAsset_20
Load_MenuAsset_10:
	pop ebx
	pop esi
	pop ebp
	ret


;Mark_FontAsset(Font_s*)
Mark_FontAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x13
	jmp Mark_FontAsset_10
Mark_FontAsset_30:
	test eax, eax
	jz Mark_FontAsset_20
	mov edx, eax
Mark_FontAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_FontAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_FontAsset_30
	mov edx, 0x2f
	jmp Mark_FontAsset_40
Mark_FontAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x13
	jz Mark_FontAsset_50
Mark_FontAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x13
	jnz Mark_FontAsset_60
Mark_FontAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_FontAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MenuAsset(menuDef_t*)
Mark_MenuAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x15
	jmp Mark_MenuAsset_10
Mark_MenuAsset_30:
	test eax, eax
	jz Mark_MenuAsset_20
	mov edx, eax
Mark_MenuAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_MenuAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_MenuAsset_30
	mov edx, 0x2f
	jmp Mark_MenuAsset_40
Mark_MenuAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x15
	jz Mark_MenuAsset_50
Mark_MenuAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x15
	jnz Mark_MenuAsset_60
Mark_MenuAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_MenuAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_ReplaceModel(char const*, char const*)
DB_ReplaceModel:
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
	call DB_FindXAssetHeaderReal
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call DB_GetXAssetName
	mov esi, eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call DB_FindXAssetHeaderReal
	mov ebx, eax
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz DB_ReplaceModel_10
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edx
	call eax
DB_ReplaceModel_10:
	mov dword [esp], 0x3
	call DB_GetXAssetTypeSize
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memcpy
	mov [esp+0x4], esi
	mov [esp], edi
	call DB_SetXAssetName
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_AddUserMapDir(char const*)
DB_AddUserMapDir:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz DB_AddUserMapDir_10
DB_AddUserMapDir_20:
	add esp, 0x124
	pop ebx
	pop ebp
	ret
DB_AddUserMapDir_10:
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	mov edx, 0x2
	mov eax, [ebp+0x8]
	call DB_BuildOSPath
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call _CreateFileA
	cmp eax, 0xffffffff
	jz DB_AddUserMapDir_20
	mov [esp], eax
	call _CloseHandle
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_usermaps
	mov dword [esp], _cstring_ss
	call va
	mov [esp], eax
	call FS_AddUserMapDirIWDs
	add esp, 0x124
	pop ebx
	pop ebp
	ret


;DB_ModFileExists()
DB_ModFileExists:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz DB_ModFileExists_10
DB_ModFileExists_20:
	xor eax, eax
	add esp, 0x124
	pop ebx
	pop ebp
	ret
DB_ModFileExists_10:
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	mov edx, 0x1
	mov eax, _cstring_mod
	call DB_BuildOSPath
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call _CreateFileA
	cmp eax, 0xffffffff
	jz DB_ModFileExists_20
	mov [esp], eax
	call _CloseHandle
	mov eax, 0x1
	add esp, 0x124
	pop ebx
	pop ebp
	ret


;DB_RemoveClipMap(XAssetHeader)
DB_RemoveClipMap:
	push ebp
	mov ebp, esp
	pop ebp
	jmp CM_Unload
	nop


;Load_XModelAsset(XModel**)
Load_XModelAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x3
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_XModelAsset(XModel*)
Mark_XModelAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x3
	jmp Mark_XModelAsset_10
Mark_XModelAsset_30:
	test eax, eax
	jz Mark_XModelAsset_20
	mov edx, eax
Mark_XModelAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_XModelAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_XModelAsset_30
	mov edx, 0x2f
	jmp Mark_XModelAsset_40
Mark_XModelAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x3
	jz Mark_XModelAsset_50
Mark_XModelAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x3
	jnz Mark_XModelAsset_60
Mark_XModelAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_XModelAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_RemoveGfxWorld(XAssetHeader)
DB_RemoveGfxWorld:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_UnloadWorld
	nop


;Load_ClipMapAsset(clipMap_t**)
Load_ClipMapAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xb
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MapEntsAsset(MapEnts**)
Load_MapEntsAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xf
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_RawFileAsset(RawFile**)
Load_RawFileAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1f
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_ClipMapAsset(clipMap_t*)
Mark_ClipMapAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0xb
	jmp Mark_ClipMapAsset_10
Mark_ClipMapAsset_30:
	test eax, eax
	jz Mark_ClipMapAsset_20
	mov edx, eax
Mark_ClipMapAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_ClipMapAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_ClipMapAsset_30
	mov edx, 0x2f
	jmp Mark_ClipMapAsset_40
Mark_ClipMapAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xb
	jz Mark_ClipMapAsset_50
Mark_ClipMapAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xb
	jnz Mark_ClipMapAsset_60
Mark_ClipMapAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_ClipMapAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MapEntsAsset(MapEnts*)
Mark_MapEntsAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0xf
	jmp Mark_MapEntsAsset_10
Mark_MapEntsAsset_30:
	test eax, eax
	jz Mark_MapEntsAsset_20
	mov edx, eax
Mark_MapEntsAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_MapEntsAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_MapEntsAsset_30
	mov edx, 0x2f
	jmp Mark_MapEntsAsset_40
Mark_MapEntsAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xf
	jz Mark_MapEntsAsset_50
Mark_MapEntsAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xf
	jnz Mark_MapEntsAsset_60
Mark_MapEntsAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_MapEntsAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_RawFileAsset(RawFile*)
Mark_RawFileAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x1f
	jmp Mark_RawFileAsset_10
Mark_RawFileAsset_30:
	test eax, eax
	jz Mark_RawFileAsset_20
	mov edx, eax
Mark_RawFileAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_RawFileAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_RawFileAsset_30
	mov edx, 0x2f
	jmp Mark_RawFileAsset_40
Mark_RawFileAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1f
	jz Mark_RawFileAsset_50
Mark_RawFileAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1f
	jnz Mark_RawFileAsset_60
Mark_RawFileAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_RawFileAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;DB_UpdateDebugZone()
DB_UpdateDebugZone:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x30
	cmp byte [g_debugZoneName], 0x0
	jz DB_UpdateDebugZone_10
	lea ebx, [ebp-0x20]
	cld
	mov ecx, 0x6
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov dword [ebp-0x14], g_debugZoneName
	call Com_SyncThreads
	mov dword [ebp-0x18], 0x40
	mov dword [ebp-0x10], 0x40
	mov dword [ebp-0xc], 0x40
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call DB_LoadXAssets
	call CG_VisionSetMyChanges
DB_UpdateDebugZone_10:
	add esp, 0x30
	pop ebx
	pop edi
	pop ebp
	ret
	nop


;Load_ComWorldAsset(ComWorld**)
Load_ComWorldAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xc
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GfxImageAsset(GfxImage**)
Load_GfxImageAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x6
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GfxWorldAsset(GfxWorld**)
Load_GfxWorldAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x10
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LightDefAsset(GfxLightDef**)
Load_LightDefAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x11
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MenuListAsset(MenuList**)
Load_MenuListAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x14
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_SndCurveAsset(SndCurve**)
Load_SndCurveAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x8
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_ComWorldAsset(ComWorld*)
Mark_ComWorldAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0xc
	jmp Mark_ComWorldAsset_10
Mark_ComWorldAsset_30:
	test eax, eax
	jz Mark_ComWorldAsset_20
	mov edx, eax
Mark_ComWorldAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_ComWorldAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_ComWorldAsset_30
	mov edx, 0x2f
	jmp Mark_ComWorldAsset_40
Mark_ComWorldAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xc
	jz Mark_ComWorldAsset_50
Mark_ComWorldAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xc
	jnz Mark_ComWorldAsset_60
Mark_ComWorldAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_ComWorldAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GfxImageAsset(GfxImage*)
Mark_GfxImageAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x6
	jmp Mark_GfxImageAsset_10
Mark_GfxImageAsset_30:
	test eax, eax
	jz Mark_GfxImageAsset_20
	mov edx, eax
Mark_GfxImageAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_GfxImageAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_GfxImageAsset_30
	mov edx, 0x2f
	jmp Mark_GfxImageAsset_40
Mark_GfxImageAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x6
	jz Mark_GfxImageAsset_50
Mark_GfxImageAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x6
	jnz Mark_GfxImageAsset_60
Mark_GfxImageAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_GfxImageAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GfxWorldAsset(GfxWorld*)
Mark_GfxWorldAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x10
	jmp Mark_GfxWorldAsset_10
Mark_GfxWorldAsset_30:
	test eax, eax
	jz Mark_GfxWorldAsset_20
	mov edx, eax
Mark_GfxWorldAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_GfxWorldAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_GfxWorldAsset_30
	mov edx, 0x2f
	jmp Mark_GfxWorldAsset_40
Mark_GfxWorldAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x10
	jz Mark_GfxWorldAsset_50
Mark_GfxWorldAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x10
	jnz Mark_GfxWorldAsset_60
Mark_GfxWorldAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_GfxWorldAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LightDefAsset(GfxLightDef*)
Mark_LightDefAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x11
	jmp Mark_LightDefAsset_10
Mark_LightDefAsset_30:
	test eax, eax
	jz Mark_LightDefAsset_20
	mov edx, eax
Mark_LightDefAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_LightDefAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_LightDefAsset_30
	mov edx, 0x2f
	jmp Mark_LightDefAsset_40
Mark_LightDefAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x11
	jz Mark_LightDefAsset_50
Mark_LightDefAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x11
	jnz Mark_LightDefAsset_60
Mark_LightDefAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_LightDefAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MaterialAsset(Material*)
Mark_MaterialAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x4
	jmp Mark_MaterialAsset_10
Mark_MaterialAsset_30:
	test eax, eax
	jz Mark_MaterialAsset_20
	mov edx, eax
Mark_MaterialAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_MaterialAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_MaterialAsset_30
	mov edx, 0x2f
	jmp Mark_MaterialAsset_40
Mark_MaterialAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x4
	jz Mark_MaterialAsset_50
Mark_MaterialAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x4
	jnz Mark_MaterialAsset_60
Mark_MaterialAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_MaterialAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_MenuListAsset(MenuList*)
Mark_MenuListAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x14
	jmp Mark_MenuListAsset_10
Mark_MenuListAsset_30:
	test eax, eax
	jz Mark_MenuListAsset_20
	mov edx, eax
Mark_MenuListAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_MenuListAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_MenuListAsset_30
	mov edx, 0x2f
	jmp Mark_MenuListAsset_40
Mark_MenuListAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x14
	jz Mark_MenuListAsset_50
Mark_MenuListAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x14
	jnz Mark_MenuListAsset_60
Mark_MenuListAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_MenuListAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_WeaponDefAsset(WeaponDef*)
Mark_WeaponDefAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x17
	jmp Mark_WeaponDefAsset_10
Mark_WeaponDefAsset_30:
	test eax, eax
	jz Mark_WeaponDefAsset_20
	mov edx, eax
Mark_WeaponDefAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_WeaponDefAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_WeaponDefAsset_30
	mov edx, 0x2f
	jmp Mark_WeaponDefAsset_40
Mark_WeaponDefAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x17
	jz Mark_WeaponDefAsset_50
Mark_WeaponDefAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x17
	jnz Mark_WeaponDefAsset_60
Mark_WeaponDefAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_WeaponDefAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_LoadDelayedImages()
DB_LoadDelayedImages:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, R_DelayLoadImage
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call DB_EnumXAssets
	mov edx, [g_copyInfoCount]
	test edx, edx
	jz DB_LoadDelayedImages_10
	xor esi, esi
	mov ebx, g_copyInfo
	jmp DB_LoadDelayedImages_20
DB_LoadDelayedImages_30:
	add esi, 0x1
	add ebx, 0x4
	cmp [g_copyInfoCount], esi
	jbe DB_LoadDelayedImages_10
DB_LoadDelayedImages_20:
	mov eax, [ebx]
	cmp dword [eax], 0x6
	jnz DB_LoadDelayedImages_30
	mov eax, [eax+0x4]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call R_DelayLoadImage
	add esi, 0x1
	add ebx, 0x4
	cmp [g_copyInfoCount], esi
	ja DB_LoadDelayedImages_20
DB_LoadDelayedImages_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Load_PhysPresetAsset(PhysPreset**)
Load_PhysPresetAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_XAnimPartsAsset(XAnimParts**)
Load_XAnimPartsAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x2
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_PhysPresetAsset(PhysPreset*)
Mark_PhysPresetAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x1
	jmp Mark_PhysPresetAsset_10
Mark_PhysPresetAsset_30:
	test eax, eax
	jz Mark_PhysPresetAsset_20
	mov edx, eax
Mark_PhysPresetAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_PhysPresetAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_PhysPresetAsset_30
	mov edx, 0x2f
	jmp Mark_PhysPresetAsset_40
Mark_PhysPresetAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1
	jz Mark_PhysPresetAsset_50
Mark_PhysPresetAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1
	jnz Mark_PhysPresetAsset_60
Mark_PhysPresetAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_PhysPresetAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_XAnimPartsAsset(XAnimParts*)
Mark_XAnimPartsAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x2
	jmp Mark_XAnimPartsAsset_10
Mark_XAnimPartsAsset_30:
	test eax, eax
	jz Mark_XAnimPartsAsset_20
	mov edx, eax
Mark_XAnimPartsAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_XAnimPartsAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_XAnimPartsAsset_30
	mov edx, 0x2f
	jmp Mark_XAnimPartsAsset_40
Mark_XAnimPartsAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x2
	jz Mark_XAnimPartsAsset_50
Mark_XAnimPartsAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x2
	jnz Mark_XAnimPartsAsset_60
Mark_XAnimPartsAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_XAnimPartsAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_FxEffectDefAsset(FxEffectDef const**)
Load_FxEffectDefAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x19
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GameWorldMpAsset(GameWorldMp**)
Load_GameWorldMpAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xe
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_GameWorldSpAsset(GameWorldSp**)
Load_GameWorldSpAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0xd
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LoadedSoundAsset(LoadedSound**)
Load_LoadedSoundAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x9
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_StringTableAsset(StringTable**)
Load_StringTableAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x20
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_FxEffectDefAsset(FxEffectDef*)
Mark_FxEffectDefAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x19
	jmp Mark_FxEffectDefAsset_10
Mark_FxEffectDefAsset_30:
	test eax, eax
	jz Mark_FxEffectDefAsset_20
	mov edx, eax
Mark_FxEffectDefAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_FxEffectDefAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_FxEffectDefAsset_30
	mov edx, 0x2f
	jmp Mark_FxEffectDefAsset_40
Mark_FxEffectDefAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x19
	jz Mark_FxEffectDefAsset_50
Mark_FxEffectDefAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x19
	jnz Mark_FxEffectDefAsset_60
Mark_FxEffectDefAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_FxEffectDefAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GameWorldMpAsset(GameWorldMp*)
Mark_GameWorldMpAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0xe
	jmp Mark_GameWorldMpAsset_10
Mark_GameWorldMpAsset_30:
	test eax, eax
	jz Mark_GameWorldMpAsset_20
	mov edx, eax
Mark_GameWorldMpAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_GameWorldMpAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_GameWorldMpAsset_30
	mov edx, 0x2f
	jmp Mark_GameWorldMpAsset_40
Mark_GameWorldMpAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xe
	jz Mark_GameWorldMpAsset_50
Mark_GameWorldMpAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xe
	jnz Mark_GameWorldMpAsset_60
Mark_GameWorldMpAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_GameWorldMpAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_GameWorldSpAsset(GameWorldSp*)
Mark_GameWorldSpAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0xd
	jmp Mark_GameWorldSpAsset_10
Mark_GameWorldSpAsset_30:
	test eax, eax
	jz Mark_GameWorldSpAsset_20
	mov edx, eax
Mark_GameWorldSpAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_GameWorldSpAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_GameWorldSpAsset_30
	mov edx, 0x2f
	jmp Mark_GameWorldSpAsset_40
Mark_GameWorldSpAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xd
	jz Mark_GameWorldSpAsset_50
Mark_GameWorldSpAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0xd
	jnz Mark_GameWorldSpAsset_60
Mark_GameWorldSpAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_GameWorldSpAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LoadedSoundAsset(LoadedSound*)
Mark_LoadedSoundAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x9
	jmp Mark_LoadedSoundAsset_10
Mark_LoadedSoundAsset_30:
	test eax, eax
	jz Mark_LoadedSoundAsset_20
	mov edx, eax
Mark_LoadedSoundAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_LoadedSoundAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_LoadedSoundAsset_30
	mov edx, 0x2f
	jmp Mark_LoadedSoundAsset_40
Mark_LoadedSoundAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x9
	jz Mark_LoadedSoundAsset_50
Mark_LoadedSoundAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x9
	jnz Mark_LoadedSoundAsset_60
Mark_LoadedSoundAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_LoadedSoundAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_StringTableAsset(StringTable*)
Mark_StringTableAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x20
	jmp Mark_StringTableAsset_10
Mark_StringTableAsset_30:
	test eax, eax
	jz Mark_StringTableAsset_20
	mov edx, eax
Mark_StringTableAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_StringTableAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_StringTableAsset_30
	mov edx, 0x2f
	jmp Mark_StringTableAsset_40
Mark_StringTableAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x20
	jz Mark_StringTableAsset_50
Mark_StringTableAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x20
	jnz Mark_StringTableAsset_60
Mark_StringTableAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_StringTableAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Load_FxImpactTableAsset(FxImpactTable**)
Load_FxImpactTableAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x1a
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_LocalizeEntryAsset(LocalizeEntry**)
Load_LocalizeEntryAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x16
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_FxImpactTableAsset(FxImpactTable*)
Mark_FxImpactTableAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x1a
	jmp Mark_FxImpactTableAsset_10
Mark_FxImpactTableAsset_30:
	test eax, eax
	jz Mark_FxImpactTableAsset_20
	mov edx, eax
Mark_FxImpactTableAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_FxImpactTableAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_FxImpactTableAsset_30
	mov edx, 0x2f
	jmp Mark_FxImpactTableAsset_40
Mark_FxImpactTableAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1a
	jz Mark_FxImpactTableAsset_50
Mark_FxImpactTableAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x1a
	jnz Mark_FxImpactTableAsset_60
Mark_FxImpactTableAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_FxImpactTableAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mark_LocalizeEntryAsset(LocalizeEntry*)
Mark_LocalizeEntryAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x16
	jmp Mark_LocalizeEntryAsset_10
Mark_LocalizeEntryAsset_30:
	test eax, eax
	jz Mark_LocalizeEntryAsset_20
	mov edx, eax
Mark_LocalizeEntryAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_LocalizeEntryAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_LocalizeEntryAsset_30
	mov edx, 0x2f
	jmp Mark_LocalizeEntryAsset_40
Mark_LocalizeEntryAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x16
	jz Mark_LocalizeEntryAsset_50
Mark_LocalizeEntryAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x16
	jnz Mark_LocalizeEntryAsset_60
Mark_LocalizeEntryAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_LocalizeEntryAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_GetIndexBufferAndBase(unsigned char, void*, void*, int*)
DB_GetIndexBufferAndBase:
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


;Load_FxEffectDefFromName(char const**)
Load_FxEffectDefFromName:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	test eax, eax
	jz Load_FxEffectDefFromName_10
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x19
	call DB_FindXAssetHeaderReal
	mov [ebx], eax
Load_FxEffectDefFromName_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Load_GetCurrentZoneHandle(unsigned char*)
Load_GetCurrentZoneHandle:
	push ebp
	mov ebp, esp
	movzx edx, byte [g_zoneIndex]
	mov eax, [ebp+0x8]
	mov [eax], dl
	pop ebp
	ret
	nop


;Load_snd_alias_list_Asset(snd_alias_list_t**)
Load_snd_alias_list_Asset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x7
	call DB_AddXAssetInternal
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;DB_GetVertexBufferAndOffset(unsigned char, void*, void*, int*)
DB_GetVertexBufferAndOffset:
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


;Load_MaterialTechniqueSetAsset(MaterialTechniqueSet**)
Load_MaterialTechniqueSetAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x5
	call DB_AddXAssetInternal
	mov [ebx], eax
	mov [esp], eax
	call Material_OriginalRemapTechniqueSet
	mov eax, [ebx]
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Material_UploadShaders
	nop


;Mark_MaterialTechniqueSetAsset(MaterialTechniqueSet*)
Mark_MaterialTechniqueSetAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x5
	jmp Mark_MaterialTechniqueSetAsset_10
Mark_MaterialTechniqueSetAsset_30:
	test eax, eax
	jz Mark_MaterialTechniqueSetAsset_20
	mov edx, eax
Mark_MaterialTechniqueSetAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_MaterialTechniqueSetAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_MaterialTechniqueSetAsset_30
	mov edx, 0x2f
	jmp Mark_MaterialTechniqueSetAsset_40
Mark_MaterialTechniqueSetAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x5
	jz Mark_MaterialTechniqueSetAsset_50
Mark_MaterialTechniqueSetAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x5
	jnz Mark_MaterialTechniqueSetAsset_60
Mark_MaterialTechniqueSetAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_MaterialTechniqueSetAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop



;Zero initialized global or static variables of db_registry:
SECTION .bss
db_hashCritSect: resb 0x8
g_defaultAssetCount: resb 0x14
g_freeAssetEntryHead: resb 0x20
g_zoneAllocType: resb 0x4
g_sync: resb 0x4
g_zoneInited: resb 0x1
g_archiveBuf: resb 0xf
g_copyInfo: resb 0x2000
g_copyInfoCount: resb 0x20
g_debugZoneName: resb 0x40
g_mainThreadBlocked: resb 0x80


;Initialized global or static variables of db_registry:
SECTION .data
DB_DynamicCloneXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, DB_DynamicCloneMenu, 0x0, DB_DynamicCloneWeaponDef, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_defaultAssetName: dd _cstring_null, _cstring_default, _cstring_void, _cstring_void, _cstring_default1, _cstring_default, _cstring_white, _cstring_null1, _cstring_default, _cstring_nullwav, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_light_dynamic, _cstring_null, _cstring_fontsconsolefont, _cstring_uidefaultmenu, _cstring_default_menu, _cstring_cgame_unknown, _cstring_defaultweapon_mp, _cstring_null, _cstring_miscmissing_fx, _cstring_default, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_mpdefaultstringt, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_RemoveXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, DB_RemoveTechniqueSet, DB_RemoveImage, 0x0, 0x0, DB_RemoveLoadedSound, DB_RemoveClipMap, DB_RemoveClipMap, DB_RemoveComWorld, 0x0, 0x0, 0x0, DB_RemoveGfxWorld, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_FreeXAssetHeaderHandler: dd DB_FreeXAssetHeader_XModelPieces, DB_FreeXAssetHeader_PhysPreset, DB_FreeXAssetHeader_XAnimParts, DB_FreeXAssetHeader_XModel, DB_FreeMaterial, DB_FreeXAssetHeader_MaterialTechniqueSet, DB_FreeXAssetHeader_GfxImage, DB_FreeXAssetHeader_snd_alias_list_t, DB_FreeXAssetHeader_SndCurve, DB_FreeXAssetHeader_LoadedSound, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_MapEnts, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_GfxLightDef, 0x0, DB_FreeXAssetHeader_Font_s, DB_FreeXAssetHeader_MenuList, DB_FreeXAssetHeader_menuDef_t, DB_FreeXAssetHeader_LocalizeEntry, DB_FreeXAssetHeader_WeaponDef, 0x0, DB_FreeXAssetHeader_FxEffectDef, DB_FreeXAssetHeader_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_FreeXAssetHeader_RawFile, DB_FreeXAssetHeader_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_InitPoolHeaderHandler: dd DB_InitPool_XModelPieces, DB_InitPool_PhysPreset, DB_InitPool_XAnimParts, DB_InitPool_XModel, DB_InitPool_Material, DB_InitPool_MaterialTechniqueSet, DB_InitPool_GfxImage, DB_InitPool_snd_alias_list_t, DB_InitPool_SndCurve, DB_InitPool_LoadedSound, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitPool_MapEnts, DB_InitSingleton, DB_InitPool_GfxLightDef, 0x0, DB_InitPool_Font_s, DB_InitPool_MenuList, DB_InitPool_menuDef_t, DB_InitPool_LocalizeEntry, DB_InitPool_WeaponDef, 0x0, DB_InitPool_FxEffectDef, DB_InitPool_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_InitPool_RawFile, DB_InitPool_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_AllocXAssetHeaderHandler: dd DB_AllocXAsset_XModelPieces, DB_AllocXAsset_PhysPreset, DB_AllocXAsset_XAnimParts, DB_AllocXAsset_XModel, DB_AllocMaterial, DB_AllocXAsset_MaterialTechniqueSet, DB_AllocXAsset_GfxImage, DB_AllocXAsset_snd_alias_list_t, DB_AllocXAsset_SndCurve, DB_AllocXAsset_LoadedSound, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAsset_MapEnts, DB_AllocXAssetSingleton, DB_AllocXAsset_GfxLightDef, 0x0, DB_AllocXAsset_Font_s, DB_AllocXAsset_MenuList, DB_AllocXAsset_menuDef_t, DB_AllocXAsset_LocalizeEntry, DB_AllocXAsset_WeaponDef, 0x0, DB_AllocXAsset_FxEffectDef, DB_AllocXAsset_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_AllocXAsset_RawFile, DB_AllocXAsset_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_registry:
SECTION .rdata


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
_cstring_smps:		db "%s,mp/%s",0ah,0
_cstring_cfg:		db ".cfg",0
_cstring_gsx:		db ".gsx",0
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

