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
	extern setjmp
	extern Com_ErrorAbort
	extern Sys_DatabaseCompleted
	extern Sys_WaitStartDatabase
	extern _ZN10MacDisplay16GetSharedContextEv
	extern _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	extern CreateFileA
	extern Com_PrintWarning
	extern g_loadingAssets
	extern Q_stricmp
	extern memset
	extern GetFileSize
	extern PMem_BeginAlloc
	extern DB_ResetZoneSize
	extern DB_LoadXFile
	extern DB_LoadXFileInternal
	extern PMem_EndAlloc
	extern Sys_Sleep
	extern Sys_Milliseconds
	extern CloseHandle
	extern Com_Error
	extern R_SyncRenderThread
	extern RB_UnbindAllImages
	extern R_ShutdownStreams
	extern RB_ClearPixelShader
	extern RB_ClearVertexShader
	extern RB_ClearVertexDecl
	extern InterlockedDecrement
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
	extern InterlockedIncrement
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
	extern cm
	extern comWorld
	extern gameWorldMp
	extern s_world

;Exports of db_registry:
	global g_zones
	global g_zoneNameList
	global g_zoneIndex
	global DB_DynamicCloneXAssetHandler
	global DB_DynamicCloneMenu
	global DB_DynamicCloneWeaponDef
	global g_zoneHandles
	global g_zoneCount
	global db_hashCritSect
	global g_defaultAssetCount
	global g_defaultAssetName
	global g_assetEntryPool
	global db_hashTable
	global DB_RemoveXAssetHandler
	global DB_RemoveTechniqueSet
	global DB_RemoveImage
	global DB_RemoveLoadedSound
	global DB_RemoveComWorld
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
	global g_missingAssetFile
	global DB_PrintAssetName
	global DB_BuildOSPath_FromSource
	global DB_Thread
	global DB_SyncExternalAssets
	global DB_AllocXAssetHeader
	global DB_FreeUnusedResources
	global DB_CreateDefaultEntry
	global DB_LinkXAssetEntry
	global DB_UnloadXZone
	global DB_AddXAsset
	global DB_PostLoadXZone
	global DB_Cleanup
	global DB_FileSize
	global DB_FileExists
	global DB_InitThread
	global DB_LoadXAssets
	global DB_SyncXAssets
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
	global DB_ReleaseXAssets
	global DB_RemoveGfxWorld
	global Load_ClipMapAsset
	global Load_MapEntsAsset
	global Load_RawFileAsset
	global Mark_ClipMapAsset
	global Mark_MapEntsAsset
	global Mark_RawFileAsset
	global DB_IsXAssetDefault
	global DB_SetInitializing
	global DB_ShutdownXAssets
	global DB_UpdateDebugZone
	global Load_ComWorldAsset
	global Load_GfxImageAsset
	global Load_GfxWorldAsset
	global Load_LightDefAsset
	global Load_MaterialAsset
	global Load_MenuListAsset
	global Load_SndCurveAsset
	global Mark_ComWorldAsset
	global Mark_GfxImageAsset
	global Mark_GfxWorldAsset
	global Mark_LightDefAsset
	global Mark_MaterialAsset
	global Mark_MenuListAsset
	global Mark_SndCurveAsset
	global DB_FindXAssetHeader
	global Load_WeaponDefAsset
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
	global DB_EndRecoverLostDevice
	global DB_EnumXAssets_FastFile
	global DB_ReferencedFFNameList
	global Load_FxImpactTableAsset
	global Load_LocalizeEntryAsset
	global Mark_FxImpactTableAsset
	global Mark_LocalizeEntryAsset
	global DB_GetIndexBufferAndBase
	global DB_ReferencedFFChecksums
	global Load_FxEffectDefFromName
	global DB_BeginRecoverLostDevice
	global Load_GetCurrentZoneHandle
	global Load_snd_alias_list_Asset
	global Mark_snd_alias_list_Asset
	global DB_GetVertexBufferAndOffset
	global DB_GetAllXAssetOfType_FastFile
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


;DB_RemoveLoadedSound(XAssetHeader)
DB_RemoveLoadedSound:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x28]
	mov [ebp+0x8], eax
	pop ebp
	jmp Z_FreeInternal


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


;DB_BuildOSPath_FromSource(char const*, FF_DIR, int, char*)
DB_BuildOSPath_FromSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, eax
	mov edi, ecx
	cmp edx, 0x1
	jz DB_BuildOSPath_FromSource_10
	cmp edx, 0x2
	jz DB_BuildOSPath_FromSource_20
	test edx, edx
	jz DB_BuildOSPath_FromSource_30
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_BuildOSPath_FromSource_30:
	call Win_GetLanguage
	mov ebx, eax
	call Sys_DefaultInstallPath
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_BuildOSPath_FromSource_10:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov ebx, [eax+0xc]
	call Sys_DefaultInstallPath
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_sssff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_BuildOSPath_FromSource_20:
	mov dword [esp+0x4], _cstring__load
	mov [esp], eax
	call strstr
	test eax, eax
	jz DB_BuildOSPath_FromSource_40
	sub eax, esi
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
DB_BuildOSPath_FromSource_50:
	call Sys_DefaultInstallPath
	mov [esp+0x18], esi
	mov [esp+0x14], ebx
	mov dword [esp+0x10], _cstring_usermaps
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ssssff
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_sprintf
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_BuildOSPath_FromSource_40:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	jmp DB_BuildOSPath_FromSource_50
	nop
	add [eax], al


;DB_Thread(unsigned int)
DB_Thread:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34c
DB_Thread_20:
	mov dword [esp], 0x2
	call Sys_GetValue
	mov [esp], eax
	call setjmp
	test eax, eax
	jz DB_Thread_10
	call Com_ErrorAbort
	jmp DB_Thread_20
DB_Thread_30:
	call Sys_DatabaseCompleted
DB_Thread_10:
	call Sys_WaitStartDatabase
	call _ZN10MacDisplay16GetSharedContextEv
	mov [esp], eax
	call _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	mov eax, [g_zoneInfoCount]
	test eax, eax
	jz DB_Thread_10
	mov eax, [g_zoneInfoCount]
	mov [ebp-0x32c], eax
	mov dword [g_zoneInfoCount], 0x0
	test eax, eax
	jz DB_Thread_30
	mov dword [ebp-0x330], 0x0
	mov dword [ebp-0x31c], g_zoneInfo
	jmp DB_Thread_40
DB_Thread_80:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz DB_Thread_50
DB_Thread_240:
	call Win_GetLanguage
	mov ebx, eax
	call Sys_DefaultInstallPath
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call Com_sprintf
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call CreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jnz DB_Thread_60
	mov dword [esp+0x4], _cstring__load
	mov [esp], ebx
	call strstr
	test eax, eax
	jz DB_Thread_70
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xa
	call Com_PrintWarning
DB_Thread_280:
	mov edx, g_loadingAssets
	mov eax, [edx]
	sub eax, 0x1
	mov [edx], eax
DB_Thread_170:
	add dword [ebp-0x330], 0x1
	add dword [ebp-0x31c], 0x44
	mov edx, [ebp-0x330]
	cmp [ebp-0x32c], edx
	jz DB_Thread_30
DB_Thread_40:
	mov edx, [ebp-0x31c]
	mov edx, [edx+0x40]
	mov [ebp-0x320], edx
	mov eax, [ebp-0x330]
	shl eax, 0x6
	mov edx, [ebp-0x330]
	lea edi, [eax+edx*4+g_zoneInfo]
	mov dword [esp+0x4], _cstring_mp_patch
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz DB_Thread_80
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x80000000
	mov dword [esp], _cstring_updatemp_patchff
	call CreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz DB_Thread_90
DB_Thread_60:
	mov dword [ebp-0x324], 0x0
DB_Thread_250:
	mov dword [g_zoneIndex], 0x0
	mov edx, 0x1
	mov eax, g_zones
	jmp DB_Thread_100
DB_Thread_120:
	add edx, 0x1
	add eax, 0xa8
	cmp edx, 0x21
	jz DB_Thread_110
DB_Thread_100:
	cmp byte [eax+0xa8], 0x0
	jnz DB_Thread_120
	mov [g_zoneIndex], edx
	mov eax, edx
DB_Thread_260:
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
	call Q_strncpyz
	mov edx, [ebp-0x320]
	mov [ebx+0x40], edx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call GetFileSize
	mov [ebx+0xa0], eax
	mov eax, [ebp-0x324]
	mov [ebx+0xa4], eax
	add dword [g_zoneCount], 0x1
	mov byte [g_loadingZone], 0x1
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz DB_Thread_130
DB_Thread_180:
	mov byte [g_mayRecoverLostAssets], 0x0
	cmp dword [ebp-0x320], 0x4
	jz DB_Thread_140
	jg DB_Thread_150
	cmp dword [ebp-0x320], 0x1
	jz DB_Thread_140
DB_Thread_190:
	xor eax, eax
	mov [g_zoneAllocType], eax
	mov eax, [g_zoneAllocType]
	sub eax, 0x1
	jz DB_Thread_160
DB_Thread_200:
	mov eax, [g_zoneAllocType]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_BeginAlloc
	mov eax, [g_zoneAllocType]
	mov edx, [ebp-0x328]
	mov [edx+0x44], eax
	shr dword [ebp-0x320], 0x3
	and dword [ebp-0x320], 0x1
	mov eax, [ebp-0x320]
	mov [esp], eax
	call DB_ResetZoneSize
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
	call DB_LoadXFile
	call DB_LoadXFileInternal
	mov eax, [g_zoneAllocType]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_EndAlloc
	mov byte [g_loadingZone], 0x0
	mov byte [g_mayRecoverLostAssets], 0x1
	jmp DB_Thread_170
DB_Thread_130:
	mov dword [esp], 0x19
	call Sys_Sleep
	cmp byte [g_isRecoveringLostDevice], 0x0
	jz DB_Thread_180
	mov dword [esp], 0x19
	call Sys_Sleep
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz DB_Thread_130
	jmp DB_Thread_180
DB_Thread_150:
	cmp dword [ebp-0x320], 0x20
	jz DB_Thread_140
	cmp dword [ebp-0x320], 0x40
	jnz DB_Thread_190
DB_Thread_140:
	mov eax, 0x1
	mov [g_zoneAllocType], eax
	mov eax, [g_zoneAllocType]
	sub eax, 0x1
	jnz DB_Thread_200
DB_Thread_160:
	cmp byte [g_initializing], 0x0
	jz DB_Thread_200
	call Sys_Milliseconds
	mov edi, eax
	mov dword [esp+0x4], _cstring_waiting_for_init
	mov dword [esp], 0x0
	call Com_Printf
	cmp byte [g_initializing], 0x0
	jz DB_Thread_210
DB_Thread_220:
	mov dword [esp], 0x1
	call Sys_Sleep
	cmp byte [g_initializing], 0x0
	jnz DB_Thread_220
DB_Thread_210:
	call Sys_Milliseconds
	sub eax, edi
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_d_ms_for_
	mov dword [esp], 0x10
	call Com_Printf
	jmp DB_Thread_200
DB_Thread_50:
	mov dword [esp+0x4], _cstring_mod
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz DB_Thread_230
	lea eax, [ebp-0x218]
	mov [esp], eax
	mov ecx, 0x100
	mov edx, 0x1
	mov eax, edi
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x218]
	mov [esp], edx
	call CreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz DB_Thread_240
	mov dword [ebp-0x324], 0x1
	jmp DB_Thread_250
DB_Thread_110:
	mov eax, [g_zoneIndex]
	jmp DB_Thread_260
DB_Thread_230:
	lea eax, [ebp-0x318]
	mov [esp], eax
	mov ecx, 0x100
	xor edx, edx
	mov eax, edi
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x318]
	mov [esp], edx
	call CreateFileA
	cmp eax, 0xffffffff
	jz DB_Thread_270
	mov [esp], eax
	call CloseHandle
	mov eax, 0x1
DB_Thread_290:
	test al, al
	jnz DB_Thread_240
	lea eax, [ebp-0x218]
	mov [esp], eax
	mov ecx, 0x100
	mov edx, 0x2
	mov eax, edi
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x218]
	mov [esp], edx
	call CreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jz DB_Thread_240
	mov dword [ebp-0x324], 0x2
	jmp DB_Thread_250
DB_Thread_70:
	call Sys_DatabaseCompleted
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_could_not_
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_Thread_280
DB_Thread_270:
	xor eax, eax
	jmp DB_Thread_290
DB_Thread_90:
	mov dword [esp+0x4], _cstring_loading_mp_patch
	mov dword [esp], 0x10
	call Com_Printf
	call Win_GetLanguage
	mov ebx, eax
	call Sys_DefaultInstallPath
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_szonessff
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Com_sprintf
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x80000000
	lea edx, [ebp-0x118]
	mov [esp], edx
	call CreateFileA
	mov esi, eax
	cmp eax, 0xffffffff
	jnz DB_Thread_60
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xa
	call Com_PrintWarning
	jmp DB_Thread_280


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
	call InterlockedDecrement
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
	mov esi, db_hashTable
	mov edi, varXAsset
DB_FreeUnusedResources_40:
	movzx eax, word [esi]
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
	mov eax, g_freeAssetEntryHead
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


;DB_CreateDefaultEntry(XAssetType, char const*)
DB_CreateDefaultEntry:
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
	jmp DB_CreateDefaultEntry_10
DB_CreateDefaultEntry_30:
	test eax, eax
	jz DB_CreateDefaultEntry_20
	mov edx, eax
DB_CreateDefaultEntry_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
DB_CreateDefaultEntry_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_CreateDefaultEntry_30
	mov edx, 0x2f
	jmp DB_CreateDefaultEntry_40
DB_CreateDefaultEntry_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz DB_CreateDefaultEntry_50
	jmp DB_CreateDefaultEntry_60
DB_CreateDefaultEntry_70:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_CreateDefaultEntry_60
DB_CreateDefaultEntry_50:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	mov edx, [ebp-0x1c]
	cmp edx, [eax+g_assetEntryPool]
	jnz DB_CreateDefaultEntry_70
	mov [esp], ebx
	call DB_GetXAssetName
	mov [esp+0x4], edi
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz DB_CreateDefaultEntry_80
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_CreateDefaultEntry_50
DB_CreateDefaultEntry_60:
	xor ebx, ebx
DB_CreateDefaultEntry_180:
	test ebx, ebx
	jz DB_CreateDefaultEntry_90
DB_CreateDefaultEntry_200:
	add dword [g_defaultAssetCount], 0x1
	mov edi, [g_freeAssetEntryHead]
	test edi, edi
	jz DB_CreateDefaultEntry_100
DB_CreateDefaultEntry_210:
	mov eax, [edi]
	mov [g_freeAssetEntryHead], eax
	mov eax, [ebp-0x1c]
	mov [edi], eax
	mov eax, [ebp-0x1c]
	call DB_AllocXAssetHeader
	mov [edi+0x4], eax
	mov byte [edi+0x8], 0x0
	mov byte [edi+0x9], 0x0
	mov word [edi+0xa], 0x0
	mov word [edi+0xc], 0x0
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call DB_GetXAssetTypeSize
	mov edx, [edi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call memcpy
	cmp dword [ebp-0x1c], 0x7
	jz DB_CreateDefaultEntry_110
DB_CreateDefaultEntry_160:
	mov esi, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	jmp DB_CreateDefaultEntry_120
DB_CreateDefaultEntry_140:
	test eax, eax
	jz DB_CreateDefaultEntry_130
	mov edx, eax
DB_CreateDefaultEntry_150:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
DB_CreateDefaultEntry_120:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_CreateDefaultEntry_140
	mov edx, 0x2f
	jmp DB_CreateDefaultEntry_150
DB_CreateDefaultEntry_130:
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
	call SL_GetString
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov [esp], edi
	call DB_SetXAssetName
	mov byte [edi+0x9], 0x1
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_CreateDefaultEntry_110:
	mov eax, [edi+0x4]
	mov dword [eax+0x8], 0x0
	mov eax, [edi+0x4]
	mov dword [eax+0x4], 0x0
	jmp DB_CreateDefaultEntry_160
DB_CreateDefaultEntry_170:
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
DB_CreateDefaultEntry_80:
	movzx eax, word [ebx+0xc]
	test ax, ax
	jnz DB_CreateDefaultEntry_170
	mov ebx, [ebx+0x4]
	jmp DB_CreateDefaultEntry_180
DB_CreateDefaultEntry_90:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	mov eax, [ebp-0x1c]
	sub eax, 0xa
	cmp eax, 0x1
	jbe DB_CreateDefaultEntry_190
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
	call Com_Error
	jmp DB_CreateDefaultEntry_200
DB_CreateDefaultEntry_100:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_CreateDefaultEntry_210
DB_CreateDefaultEntry_190:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_find_the
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_CreateDefaultEntry_200
	nop


;DB_LinkXAssetEntry(XAssetEntry*, int)
DB_LinkXAssetEntry:
DB_LinkXAssetEntry_290:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8dc
	mov [ebp-0x8b4], eax
	mov [ebp-0x8b8], edx
	mov [esp], eax
	call DB_GetXAssetName
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
	jmp DB_LinkXAssetEntry_10
DB_LinkXAssetEntry_30:
	test eax, eax
	jz DB_LinkXAssetEntry_20
	mov edx, eax
DB_LinkXAssetEntry_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
DB_LinkXAssetEntry_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_LinkXAssetEntry_30
	mov edx, 0x2f
	jmp DB_LinkXAssetEntry_40
DB_LinkXAssetEntry_20:
	and esi, 0x7fff
	mov [ebp-0x8a8], esi
	movzx eax, word [esi+esi+db_hashTable]
	movzx ebx, ax
	test ax, ax
	jnz DB_LinkXAssetEntry_50
	mov dword [ebp-0x8b0], 0x0
DB_LinkXAssetEntry_80:
	mov edx, [ebp-0x8b8]
	test edx, edx
	jz DB_LinkXAssetEntry_60
	test ebx, ebx
	jnz DB_LinkXAssetEntry_70
DB_LinkXAssetEntry_130:
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
DB_LinkXAssetEntry_180:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_LinkXAssetEntry_100:
	mov [esp], ecx
	call DB_GetXAssetName
	mov edx, [ebp-0x8ac]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz DB_LinkXAssetEntry_80
	mov ecx, [ebp-0x8b0]
DB_LinkXAssetEntry_90:
	movzx eax, word [ecx+0xa]
	movzx ebx, ax
	test ax, ax
	jz DB_LinkXAssetEntry_80
DB_LinkXAssetEntry_50:
	mov eax, ebx
	shl eax, 0x4
	lea ecx, [eax+g_assetEntryPool]
	mov [ebp-0x8b0], ecx
	mov esi, [ebp-0x8a4]
	cmp esi, [eax+g_assetEntryPool]
	jnz DB_LinkXAssetEntry_90
	jmp DB_LinkXAssetEntry_100
DB_LinkXAssetEntry_60:
	mov eax, edi
	test al, al
	jnz DB_LinkXAssetEntry_110
	mov edx, [ebp-0x8b4]
	mov esi, [edx]
	mov edi, [edx+0x4]
	mov ecx, [g_zoneIndex]
	mov [ebp-0x8a0], ecx
	mov eax, [g_freeAssetEntryHead]
	mov [ebp-0x89c], eax
	test eax, eax
	jz DB_LinkXAssetEntry_120
	mov edx, eax
DB_LinkXAssetEntry_320:
	mov [ebp-0x8b4], edx
	mov eax, [edx]
	mov [g_freeAssetEntryHead], eax
	mov [edx], esi
	mov eax, esi
	call DB_AllocXAssetHeader
	mov ecx, [ebp-0x8b4]
	mov [ecx+0x4], eax
	movzx eax, byte [ebp-0x8a0]
	mov [ecx+0x8], al
	mov byte [ecx+0x9], 0x0
	mov word [ecx+0xa], 0x0
	mov word [ecx+0xc], 0x0
	mov [esp], esi
	call DB_GetXAssetTypeSize
	mov ecx, [ebp-0x8b4]
	mov edx, [ecx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call memcpy
	test ebx, ebx
	jz DB_LinkXAssetEntry_130
DB_LinkXAssetEntry_70:
	mov eax, [ebp-0x8b0]
	cmp byte [eax+0x8], 0x0
	jnz DB_LinkXAssetEntry_140
	mov eax, [ebp-0x8b8]
	test eax, eax
	jz DB_LinkXAssetEntry_150
	sub dword [g_defaultAssetCount], 0x1
	mov ebx, [ebp-0x8b0]
	cmp byte [ebx+0x9], 0x0
	jnz DB_LinkXAssetEntry_160
	mov esi, ebx
DB_LinkXAssetEntry_310:
	xor ebx, ebx
	cmp byte [esi+0x8], 0x0
	setz bl
	mov eax, [esi]
	mov edx, [ebp-0x8b4]
	mov ecx, [edx+0x4]
	mov edx, [esi+0x4]
	mov eax, [eax*4+DB_DynamicCloneXAssetHandler]
	test eax, eax
	jz DB_LinkXAssetEntry_170
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
DB_LinkXAssetEntry_170:
	mov ecx, [ebp-0x8b4]
	mov eax, [ecx]
	mov [esp], eax
	call DB_GetXAssetTypeSize
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
	jmp DB_LinkXAssetEntry_180
DB_LinkXAssetEntry_110:
	test ebx, ebx
	jz DB_LinkXAssetEntry_190
	mov eax, [ebp-0x8b0]
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_LinkXAssetEntry_140:
	mov edx, [ebp-0x8a4]
	mov eax, [edx*4+g_defaultAssetName]
	cmp byte [eax], 0x0
	jnz DB_LinkXAssetEntry_200
	cmp edx, 0x1f
	jz DB_LinkXAssetEntry_200
	cmp edx, 0xf
	jz DB_LinkXAssetEntry_200
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
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
	call Com_Error
DB_LinkXAssetEntry_200:
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
	jge DB_LinkXAssetEntry_210
	mov esi, ebx
	add esi, 0xc
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz DB_LinkXAssetEntry_220
	movzx eax, ax
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	movzx eax, byte [ebx+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov eax, [edx*8+g_zones+0x40]
	cmp eax, [ecx+g_zones+0x40]
	jle DB_LinkXAssetEntry_220
DB_LinkXAssetEntry_230:
	lea esi, [ebx+0xc]
	movzx eax, word [ebx+0xc]
	test ax, ax
	jz DB_LinkXAssetEntry_220
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
	jg DB_LinkXAssetEntry_230
DB_LinkXAssetEntry_220:
	movzx eax, word [esi]
	mov ecx, [ebp-0x8b4]
	mov [ecx+0xc], ax
	sub ecx, g_assetEntryPool
	mov [ebp-0x8b4], ecx
	sar ecx, 0x4
	mov [esi], cx
	mov eax, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_180
DB_LinkXAssetEntry_190:
	mov edx, [ebp-0x8ac]
	mov eax, [ebp-0x8a4]
	call DB_CreateDefaultEntry
	mov [ebp-0x8b0], eax
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_LinkXAssetEntry_210:
	mov eax, [ebp-0x8b8]
	test eax, eax
	jnz DB_LinkXAssetEntry_240
DB_LinkXAssetEntry_150:
	mov eax, [g_sync]
	test eax, eax
	jnz DB_LinkXAssetEntry_250
	cmp dword [g_copyInfoCount], 0x7ff
	ja DB_LinkXAssetEntry_260
DB_LinkXAssetEntry_300:
	mov eax, [g_copyInfoCount]
	mov edx, [ebp-0x8b4]
	mov [eax*4+g_copyInfo], edx
	add eax, 0x1
	mov [g_copyInfoCount], eax
	mov eax, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_180
DB_LinkXAssetEntry_240:
	mov eax, [ebp-0x8b0]
	cmp byte [eax+0x9], 0x0
	jnz DB_LinkXAssetEntry_270
	mov ecx, eax
DB_LinkXAssetEntry_330:
	movzx eax, word [ecx+0xc]
	mov ebx, [ebp-0x8b4]
	mov [ebx+0xc], ax
	mov eax, ebx
	sub eax, g_assetEntryPool
	sar eax, 0x4
	mov [ecx+0xc], ax
	mov eax, [ecx]
	mov [esp], eax
	call DB_GetXAssetTypeSize
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
	jz DB_LinkXAssetEntry_280
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call eax
DB_LinkXAssetEntry_280:
	mov ecx, [ebp-0x8b4]
	mov eax, [ecx]
	mov [esp], eax
	call DB_GetXAssetTypeSize
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
	call DB_GetXAssetTypeSize
	mov ebx, [ebp-0x8b4]
	mov edx, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call memcpy
	mov eax, esi
	mov [ebx+0x8], al
	mov eax, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_180
DB_LinkXAssetEntry_250:
	mov edx, 0x1
	mov eax, [ebp-0x8b4]
	call DB_LinkXAssetEntry_290
	mov eax, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_180
DB_LinkXAssetEntry_260:
	mov dword [esp], _cstring_g_copyinfo_excee
	call Sys_Error
	jmp DB_LinkXAssetEntry_300
DB_LinkXAssetEntry_160:
	mov eax, varXAsset
	mov [eax], ebx
	call Mark_XAsset
	mov esi, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_310
DB_LinkXAssetEntry_120:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x89c]
	jmp DB_LinkXAssetEntry_320
DB_LinkXAssetEntry_270:
	mov edx, eax
	mov eax, varXAsset
	mov [eax], edx
	call Mark_XAsset
	mov ecx, [ebp-0x8b0]
	jmp DB_LinkXAssetEntry_330
	nop


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
	mov edx, [eax*4+DB_RemoveXAssetHandler]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call edx
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
	call InterlockedDecrement
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


;DB_AddXAsset(XAssetType, XAssetHeader)
DB_AddXAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov [ebp-0x18], eax
	mov [ebp-0x14], edx
	jmp DB_AddXAsset_10
DB_AddXAsset_30:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_AddXAsset_20:
	mov dword [esp], 0x0
	call Sys_Sleep
DB_AddXAsset_10:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_AddXAsset_20
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz DB_AddXAsset_30
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_AddXAsset_30
	lea eax, [ebp-0x18]
	xor edx, edx
	call DB_LinkXAssetEntry
	mov ebx, eax
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	cmp byte [g_isRecoveringLostDevice], 0x0
	jz DB_AddXAsset_40
	mov byte [g_mayRecoverLostAssets], 0x1
DB_AddXAsset_50:
	mov dword [esp], 0x19
	call Sys_Sleep
	cmp byte [g_isRecoveringLostDevice], 0x0
	jnz DB_AddXAsset_50
DB_AddXAsset_40:
	mov eax, [ebx+0x4]
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;DB_PostLoadXZone()
DB_PostLoadXZone:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	call Sys_IsDatabaseReady2
	test eax, eax
	jnz DB_PostLoadXZone_10
	mov eax, [g_copyInfoCount]
	test eax, eax
	jz DB_PostLoadXZone_20
	cmp byte [g_archiveBuf], 0x0
	jnz DB_PostLoadXZone_30
	jmp DB_PostLoadXZone_40
DB_PostLoadXZone_60:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_PostLoadXZone_50:
	mov dword [esp], 0x0
	call Sys_Sleep
DB_PostLoadXZone_30:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_PostLoadXZone_50
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz DB_PostLoadXZone_60
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_PostLoadXZone_60
	mov eax, [g_copyInfoCount]
	test eax, eax
	jnz DB_PostLoadXZone_70
DB_PostLoadXZone_90:
	mov dword [g_copyInfoCount], 0x0
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	call Material_DirtyTechniqueSetOverrides
	call Material_OverrideTechniqueSets
	mov byte [g_archiveBuf], 0x0
	call DB_LoadSounds
	call DB_LoadDObjs
DB_PostLoadXZone_20:
	call Material_DirtyTechniqueSetOverrides
	call BG_FillInAllWeaponItems
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Sys_DatabaseCompleted2
DB_PostLoadXZone_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
DB_PostLoadXZone_40:
	mov byte [g_archiveBuf], 0x1
	call R_SyncRenderThread
	call R_ClearAllStaticModelCacheRefs
	call DB_SaveSounds
	call DB_SaveDObjs
	jmp DB_PostLoadXZone_30
DB_PostLoadXZone_70:
	xor esi, esi
	mov ebx, g_copyInfo
DB_PostLoadXZone_80:
	mov edx, 0x1
	mov eax, [ebx]
	call DB_LinkXAssetEntry
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [g_copyInfoCount]
	jb DB_PostLoadXZone_80
	jmp DB_PostLoadXZone_90
	nop


;DB_Cleanup()
DB_Cleanup:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Sys_SyncDatabase
	nop


;DB_FileSize(char const*, FF_DIR)
DB_FileSize:
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
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call CreateFileA
	mov ebx, eax
	cmp eax, 0xffffffff
	jz DB_FileSize_10
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call GetFileSize
	mov esi, eax
	mov [esp], ebx
	call CloseHandle
	mov eax, esi
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
DB_FileSize_10:
	xor esi, esi
	mov eax, esi
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DB_FileExists(char const*, FF_DIR)
DB_FileExists:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x124
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	mov ecx, 0x100
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call CreateFileA
	cmp eax, 0xffffffff
	jz DB_FileExists_10
	mov [esp], eax
	call CloseHandle
	mov eax, 0x1
	add esp, 0x124
	pop ebx
	pop ebp
	ret
DB_FileExists_10:
	xor eax, eax
	add esp, 0x124
	pop ebx
	pop ebp
	ret
	nop


;DB_InitThread()
DB_InitThread:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], DB_Thread
	call Sys_SpawnDatabaseThread
	test al, al
	jz DB_InitThread_10
	leave
	ret
DB_InitThread_10:
	mov dword [esp], _cstring_failed_to_create
	call Sys_Error
	leave
	ret


;DB_LoadXAssets(XZoneInfo*, unsigned int, int)
DB_LoadXAssets:
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
	jnz DB_LoadXAssets_10
	mov byte [g_zoneInited], 0x1
	xor esi, esi
	xor ebx, ebx
DB_LoadXAssets_30:
	mov edx, [ebx+DB_XAssetPool]
	test edx, edx
	jz DB_LoadXAssets_20
	mov eax, [ebx+g_poolSize]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ebx+DB_InitPoolHeaderHandler]
DB_LoadXAssets_20:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x21
	jnz DB_LoadXAssets_30
	mov dword [g_freeAssetEntryHead], g_assetEntryPool+0x10
	mov ecx, 0x1
	mov edx, g_assetEntryPool
	mov eax, g_assetEntryPool+0x10
DB_LoadXAssets_40:
	add ecx, 0x1
	add eax, 0x10
	mov [edx+0x10], eax
	add edx, 0x10
	cmp ecx, 0x7fff
	jnz DB_LoadXAssets_40
	mov dword [g_assetEntryPool+0x7fff0], 0x0
DB_LoadXAssets_10:
	call Material_ClearShaderUploadList
	call Sys_SyncDatabase
	call DB_PostLoadXZone
	mov eax, [ebp-0x50]
	test eax, eax
	jz DB_LoadXAssets_50
	mov edx, [ebp-0x4c]
	mov [ebp-0x20], edx
	mov dword [ebp-0x48], 0x0
	xor edi, edi
DB_LoadXAssets_140:
	mov eax, [ebp-0x20]
	mov eax, [eax+0x8]
	mov [ebp-0x44], eax
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js DB_LoadXAssets_60
	lea esi, [eax+g_zoneHandles]
	jmp DB_LoadXAssets_70
DB_LoadXAssets_90:
	mov edx, 0x1
	mov eax, ebx
	call DB_UnloadXZone
DB_LoadXAssets_80:
	sub esi, 0x1
	cmp esi, g_zoneIndex+0x1f
	jz DB_LoadXAssets_60
DB_LoadXAssets_70:
	movzx ebx, byte [esi]
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*4]
	mov edx, [ebp-0x44]
	test [eax*8+g_zones+0x40], edx
	jz DB_LoadXAssets_80
	mov eax, edi
	test al, al
	jnz DB_LoadXAssets_90
	call DB_SyncExternalAssets
	cmp byte [g_archiveBuf], 0x0
	jnz DB_LoadXAssets_100
	jmp DB_LoadXAssets_110
DB_LoadXAssets_130:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_LoadXAssets_120:
	mov dword [esp], 0x0
	call Sys_Sleep
DB_LoadXAssets_100:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_LoadXAssets_120
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz DB_LoadXAssets_130
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_LoadXAssets_130
	mov edi, 0x1
	jmp DB_LoadXAssets_90
DB_LoadXAssets_60:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x20], 0xc
	mov edx, [ebp-0x48]
	cmp [ebp-0x50], edx
	jnz DB_LoadXAssets_140
	mov eax, edi
	test al, al
	jz DB_LoadXAssets_50
	call DB_FreeUnusedResources
	mov edx, [ebp-0x4c]
	mov [ebp-0x24], edx
	mov dword [ebp-0x1c], 0x0
DB_LoadXAssets_500:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
	test dl, 0x40
	jz DB_LoadXAssets_150
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js DB_LoadXAssets_150
	add ecx, g_zoneHandles
	mov [ebp-0x28], ecx
	mov esi, eax
	mov edx, ecx
	jmp DB_LoadXAssets_160
DB_LoadXAssets_180:
	sub dword [ebp-0x28], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz DB_LoadXAssets_170
DB_LoadXAssets_200:
	mov edx, [ebp-0x28]
DB_LoadXAssets_160:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x58], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x40
	jz DB_LoadXAssets_180
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x58]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle DB_LoadXAssets_180
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
DB_LoadXAssets_190:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz DB_LoadXAssets_190
	sub dword [ebp-0x28], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz DB_LoadXAssets_200
DB_LoadXAssets_170:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
DB_LoadXAssets_150:
	test dl, 0x20
	jz DB_LoadXAssets_210
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js DB_LoadXAssets_210
	add ecx, g_zoneHandles
	mov [ebp-0x2c], ecx
	mov esi, eax
	mov edx, ecx
	jmp DB_LoadXAssets_220
DB_LoadXAssets_240:
	sub dword [ebp-0x2c], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz DB_LoadXAssets_230
DB_LoadXAssets_260:
	mov edx, [ebp-0x2c]
DB_LoadXAssets_220:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x5c], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x20
	jz DB_LoadXAssets_240
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x5c]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle DB_LoadXAssets_240
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
DB_LoadXAssets_250:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz DB_LoadXAssets_250
	sub dword [ebp-0x2c], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz DB_LoadXAssets_260
DB_LoadXAssets_230:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
DB_LoadXAssets_210:
	test dl, 0x10
	jz DB_LoadXAssets_270
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js DB_LoadXAssets_270
	add ecx, g_zoneHandles
	mov [ebp-0x30], ecx
	mov esi, eax
	mov edx, ecx
	jmp DB_LoadXAssets_280
DB_LoadXAssets_300:
	sub dword [ebp-0x30], 0x1
	mov esi, edi
	cmp edi, 0x0
	jz DB_LoadXAssets_290
DB_LoadXAssets_320:
	mov edx, [ebp-0x30]
DB_LoadXAssets_280:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x60], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x10
	jz DB_LoadXAssets_300
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x60]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle DB_LoadXAssets_300
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
DB_LoadXAssets_310:
	movzx eax, byte [edx]
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, ecx
	jnz DB_LoadXAssets_310
	sub dword [ebp-0x30], 0x1
	mov esi, edi
	cmp edi, 0x0
	jnz DB_LoadXAssets_320
DB_LoadXAssets_290:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
DB_LoadXAssets_270:
	test dl, 0x8
	jz DB_LoadXAssets_330
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js DB_LoadXAssets_330
	add ecx, g_zoneHandles
	mov [ebp-0x34], ecx
	mov esi, eax
	mov edx, ecx
	jmp DB_LoadXAssets_340
DB_LoadXAssets_360:
	sub dword [ebp-0x34], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz DB_LoadXAssets_350
DB_LoadXAssets_380:
	mov edx, [ebp-0x34]
DB_LoadXAssets_340:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x64], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x8
	jz DB_LoadXAssets_360
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x64]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp edi, eax
	jge DB_LoadXAssets_360
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [edx+eax]
DB_LoadXAssets_370:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp edx, ecx
	jnz DB_LoadXAssets_370
	sub dword [ebp-0x34], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz DB_LoadXAssets_380
DB_LoadXAssets_350:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
DB_LoadXAssets_330:
	test dl, 0x4
	jz DB_LoadXAssets_390
	mov eax, [g_zoneCount]
	mov ecx, eax
	sub ecx, 0x1
	js DB_LoadXAssets_390
	add ecx, g_zoneHandles
	mov [ebp-0x38], ecx
	mov esi, eax
	mov edx, ecx
	jmp DB_LoadXAssets_400
DB_LoadXAssets_420:
	sub dword [ebp-0x38], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz DB_LoadXAssets_410
DB_LoadXAssets_440:
	mov edx, [ebp-0x38]
DB_LoadXAssets_400:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x68], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x4
	jz DB_LoadXAssets_420
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x68]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle DB_LoadXAssets_420
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [eax+edx]
DB_LoadXAssets_430:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp ecx, edx
	jnz DB_LoadXAssets_430
	sub dword [ebp-0x38], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz DB_LoadXAssets_440
DB_LoadXAssets_410:
	mov eax, [ebp-0x24]
	mov edx, [eax+0x8]
DB_LoadXAssets_390:
	and dl, 0x1
	jz DB_LoadXAssets_450
	mov eax, [g_zoneCount]
	mov edx, eax
	sub edx, 0x1
	js DB_LoadXAssets_450
	add edx, g_zoneHandles
	mov [ebp-0x3c], edx
	mov esi, eax
	jmp DB_LoadXAssets_460
DB_LoadXAssets_470:
	sub dword [ebp-0x3c], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jz DB_LoadXAssets_450
DB_LoadXAssets_490:
	mov edx, [ebp-0x3c]
DB_LoadXAssets_460:
	lea edi, [esi-0x1]
	movzx eax, byte [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [ebp-0x6c], edx
	mov ebx, edx
	add ebx, g_zones
	test byte [ebx+0x40], 0x1
	jz DB_LoadXAssets_470
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov eax, [ebp-0x6c]
	mov byte [eax+g_zones], 0x0
	mov eax, [g_zoneCount]
	sub eax, 0x1
	mov [g_zoneCount], eax
	cmp eax, edi
	jle DB_LoadXAssets_470
	lea edx, [esi+g_zoneHandles]
	mov ebx, edi
	sub ebx, esi
	sub eax, edi
	lea ecx, [eax+edx]
DB_LoadXAssets_480:
	movzx eax, byte [edx]
	mov [ebx+edx], al
	add edx, 0x1
	cmp ecx, edx
	jnz DB_LoadXAssets_480
	sub dword [ebp-0x3c], 0x1
	mov esi, edi
	xor edx, edx
	cmp edx, edi
	jnz DB_LoadXAssets_490
DB_LoadXAssets_450:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x24], 0xc
	mov eax, [ebp-0x1c]
	cmp [ebp-0x50], eax
	jnz DB_LoadXAssets_500
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	mov byte [g_archiveBuf], 0x0
	call DB_LoadSounds
	call DB_LoadDObjs
	call Material_DirtyTechniqueSetOverrides
	call BG_FillInAllWeaponItems
DB_LoadXAssets_50:
	mov eax, [ebp-0x54]
	test eax, eax
	jz DB_LoadXAssets_510
	cmp byte [g_archiveBuf], 0x0
	jz DB_LoadXAssets_520
DB_LoadXAssets_510:
	mov edx, [ebp-0x54]
	mov [g_sync], edx
	cmp dword [g_zoneCount], 0x20
	jz DB_LoadXAssets_530
DB_LoadXAssets_580:
	mov eax, [ebp-0x50]
	test eax, eax
	jz DB_LoadXAssets_540
	mov esi, [ebp-0x4c]
	mov dword [ebp-0x40], 0x0
	xor edi, edi
	mov dword [ebp-0x70], 0x0
DB_LoadXAssets_560:
	mov eax, [esi]
	test eax, eax
	jz DB_LoadXAssets_550
	mov ebx, [ebp-0x70]
	add ebx, g_zoneInfo
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_loading_fastfile
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [esi+0x4]
	mov edx, [ebp-0x70]
	mov [edx+g_zoneInfo+0x40], eax
	add edi, 0x1
	add edx, 0x44
	mov [ebp-0x70], edx
DB_LoadXAssets_550:
	add dword [ebp-0x40], 0x1
	add esi, 0xc
	mov eax, [ebp-0x40]
	cmp [ebp-0x50], eax
	jnz DB_LoadXAssets_560
	test edi, edi
	jz DB_LoadXAssets_540
	mov eax, g_loadingAssets
	mov [eax], edi
	call Sys_WakeDatabase2
	call Sys_WakeDatabase
	mov [g_zoneInfoCount], edi
	call Sys_NotifyDatabase
DB_LoadXAssets_540:
	mov eax, [ebp-0x54]
	test eax, eax
	jnz DB_LoadXAssets_570
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_LoadXAssets_110:
	mov byte [g_archiveBuf], 0x1
	call R_SyncRenderThread
	call R_ClearAllStaticModelCacheRefs
	call DB_SaveSounds
	call DB_SaveDObjs
	jmp DB_LoadXAssets_100
DB_LoadXAssets_570:
	call Sys_SyncDatabase
	mov byte [g_archiveBuf], 0x0
	call DB_LoadSounds
	call DB_LoadDObjs
	call Material_DirtyTechniqueSetOverrides
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp BG_FillInAllWeaponItems
DB_LoadXAssets_520:
	mov byte [g_archiveBuf], 0x1
	call R_SyncRenderThread
	call R_ClearAllStaticModelCacheRefs
	call DB_SaveSounds
	call DB_SaveDObjs
	jmp DB_LoadXAssets_510
DB_LoadXAssets_530:
	mov dword [esp+0x4], _cstring_max_zone_count_e
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_LoadXAssets_580
	nop


;DB_SyncXAssets()
DB_SyncXAssets:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_SyncDatabase
	leave
	jmp DB_PostLoadXZone
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_FindXAssetHeader
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	call DB_GetXAssetName
	mov esi, eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call DB_FindXAssetHeader
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
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call CreateFileA
	cmp eax, 0xffffffff
	jz DB_AddUserMapDir_20
	mov [esp], eax
	call CloseHandle
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
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	mov [esp], ebx
	call CreateFileA
	cmp eax, 0xffffffff
	jz DB_ModFileExists_20
	mov [esp], eax
	call CloseHandle
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
	call DB_AddXAsset
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


;DB_ReleaseXAssets()
DB_ReleaseXAssets:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_SyncDatabase
	mov ecx, db_hashTable
DB_ReleaseXAssets_30:
	movzx eax, word [ecx]
	movzx edx, ax
	test ax, ax
	jz DB_ReleaseXAssets_10
DB_ReleaseXAssets_20:
	shl edx, 0x4
	lea eax, [edx+g_assetEntryPool]
	mov byte [eax+0x9], 0x0
	movzx eax, word [eax+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_ReleaseXAssets_20
DB_ReleaseXAssets_10:
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz DB_ReleaseXAssets_30
	leave
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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


;DB_IsXAssetDefault(XAssetType, char const*)
DB_IsXAssetDefault:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, edi
	mov ebx, [ebp+0xc]
	jmp DB_IsXAssetDefault_10
DB_IsXAssetDefault_30:
	test eax, eax
	jz DB_IsXAssetDefault_20
	mov edx, eax
DB_IsXAssetDefault_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
DB_IsXAssetDefault_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_IsXAssetDefault_30
	mov edx, 0x2f
	jmp DB_IsXAssetDefault_40
DB_IsXAssetDefault_20:
	mov ebx, esi
	and ebx, 0x7fff
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_IsXAssetDefault_50
DB_IsXAssetDefault_100:
	movzx eax, word [ebx+ebx+db_hashTable]
	movzx edx, ax
	test ax, ax
	jz DB_IsXAssetDefault_60
	jmp DB_IsXAssetDefault_70
DB_IsXAssetDefault_80:
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_IsXAssetDefault_60
DB_IsXAssetDefault_70:
	mov eax, edx
	shl eax, 0x4
	lea ebx, [eax+g_assetEntryPool]
	cmp edi, [eax+g_assetEntryPool]
	jnz DB_IsXAssetDefault_80
	mov [esp], ebx
	call DB_GetXAssetName
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DB_IsXAssetDefault_80
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	xor eax, eax
	cmp byte [ebx+0x8], 0x0
	setz al
	jmp DB_IsXAssetDefault_90
DB_IsXAssetDefault_50:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz DB_IsXAssetDefault_100
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_IsXAssetDefault_50
	jmp DB_IsXAssetDefault_100
DB_IsXAssetDefault_60:
	mov eax, 0x1
DB_IsXAssetDefault_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_SetInitializing(unsigned char)
DB_SetInitializing:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_initializing], al
	pop ebp
	ret
	nop


;DB_ShutdownXAssets()
DB_ShutdownXAssets:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call Sys_SyncDatabase
	call DB_PostLoadXZone
	call DB_SyncExternalAssets
	jmp DB_ShutdownXAssets_10
DB_ShutdownXAssets_30:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_ShutdownXAssets_20:
	mov dword [esp], 0x0
	call Sys_Sleep
DB_ShutdownXAssets_10:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_ShutdownXAssets_20
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz DB_ShutdownXAssets_30
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_ShutdownXAssets_30
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js DB_ShutdownXAssets_40
	lea ebx, [eax+g_zoneHandles]
	mov esi, g_zoneIndex+0x1f
DB_ShutdownXAssets_50:
	movzx eax, byte [ebx]
	xor edx, edx
	call DB_UnloadXZone
	sub ebx, 0x1
	cmp ebx, esi
	jnz DB_ShutdownXAssets_50
DB_ShutdownXAssets_40:
	mov dword [ebp-0x1c], db_hashTable
	mov edx, [ebp-0x1c]
	jmp DB_ShutdownXAssets_60
DB_ShutdownXAssets_80:
	mov edx, [ebp-0x1c]
	mov word [edx], 0x0
	add edx, 0x2
	mov [ebp-0x1c], edx
	mov eax, g_freeAssetEntryHead
	cmp eax, edx
	jz DB_ShutdownXAssets_70
DB_ShutdownXAssets_60:
	movzx eax, word [edx]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz DB_ShutdownXAssets_80
	mov esi, edx
	jmp DB_ShutdownXAssets_90
DB_ShutdownXAssets_100:
	mov esi, [ebp-0x20]
DB_ShutdownXAssets_90:
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
	jnz DB_ShutdownXAssets_100
	mov edx, [ebp-0x1c]
	mov word [edx], 0x0
	add edx, 0x2
	mov [ebp-0x1c], edx
	mov eax, g_freeAssetEntryHead
	cmp eax, edx
	jnz DB_ShutdownXAssets_60
DB_ShutdownXAssets_70:
	call DB_FreeUnusedResources
	mov eax, [g_zoneCount]
	sub eax, 0x1
	js DB_ShutdownXAssets_110
	lea edi, [eax+g_zoneHandles]
DB_ShutdownXAssets_120:
	movzx eax, byte [edi]
	lea esi, [eax+eax*4]
	lea esi, [eax+esi*4]
	shl esi, 0x3
	lea ebx, [esi+g_zones]
	lea eax, [ebx+0x48]
	mov [esp], eax
	call DB_FreeXZoneMemory
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unloaded_fastfil
	mov dword [esp], 0x10
	call Com_Printf
	mov eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PMem_Free
	mov byte [esi+g_zones], 0x0
	sub edi, 0x1
	mov edx, g_zoneIndex+0x1f
	cmp edx, edi
	jnz DB_ShutdownXAssets_120
DB_ShutdownXAssets_110:
	mov dword [g_zoneCount], 0x0
	call DB_ResetMinimumFastFileLoaded
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Load_MaterialAsset(Material**)
Load_MaterialAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x4
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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


;Mark_SndCurveAsset(SndCurve*)
Mark_SndCurveAsset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x8
	jmp Mark_SndCurveAsset_10
Mark_SndCurveAsset_30:
	test eax, eax
	jz Mark_SndCurveAsset_20
	mov edx, eax
Mark_SndCurveAsset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_SndCurveAsset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_SndCurveAsset_30
	mov edx, 0x2f
	jmp Mark_SndCurveAsset_40
Mark_SndCurveAsset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x8
	jz Mark_SndCurveAsset_50
Mark_SndCurveAsset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x8
	jnz Mark_SndCurveAsset_60
Mark_SndCurveAsset_50:
	cmp [edx+0x4], edi
	jnz Mark_SndCurveAsset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DB_FindXAssetHeader(XAssetType, char const*)
DB_FindXAssetHeader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov dword [ebp-0x41c], 0x0
DB_FindXAssetHeader_140:
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_FindXAssetHeader_10
DB_FindXAssetHeader_60:
	mov edi, esi
	mov ebx, [ebp+0xc]
	jmp DB_FindXAssetHeader_20
DB_FindXAssetHeader_40:
	test eax, eax
	jz DB_FindXAssetHeader_30
	mov edx, eax
DB_FindXAssetHeader_50:
	mov eax, edi
	shl eax, 0x5
	sub eax, edi
	lea edi, [eax+edx]
	add ebx, 0x1
DB_FindXAssetHeader_20:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_FindXAssetHeader_40
	mov edx, 0x2f
	jmp DB_FindXAssetHeader_50
DB_FindXAssetHeader_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz DB_FindXAssetHeader_60
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_FindXAssetHeader_10
	jmp DB_FindXAssetHeader_60
DB_FindXAssetHeader_30:
	and edi, 0x7fff
	movzx eax, word [edi+edi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz DB_FindXAssetHeader_70
	jmp DB_FindXAssetHeader_80
DB_FindXAssetHeader_90:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_FindXAssetHeader_80
DB_FindXAssetHeader_70:
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+g_assetEntryPool]
	cmp esi, [eax+g_assetEntryPool]
	jnz DB_FindXAssetHeader_90
	mov [esp], edi
	call DB_GetXAssetName
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DB_FindXAssetHeader_90
DB_FindXAssetHeader_210:
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	test edi, edi
	jz DB_FindXAssetHeader_100
	cmp byte [edi+0x8], 0x0
	jnz DB_FindXAssetHeader_110
	call Sys_IsDatabaseReady2
	test eax, eax
	jnz DB_FindXAssetHeader_110
DB_FindXAssetHeader_100:
	call Sys_IsDatabaseThread
	test al, al
	jnz DB_FindXAssetHeader_120
	mov edx, [ebp-0x41c]
	test edx, edx
	jnz DB_FindXAssetHeader_130
	call Sys_Milliseconds
	mov [ebp-0x41c], eax
	call Sys_IsDatabaseReady2
	test eax, eax
	jnz DB_FindXAssetHeader_140
DB_FindXAssetHeader_130:
	call Sys_IsDatabaseReady2
	test eax, eax
	jnz DB_FindXAssetHeader_120
	call DB_IsMinimumFastFileLoaded
	test al, al
	jz DB_FindXAssetHeader_150
	cmp byte [g_initializing], 0x0
	jnz DB_FindXAssetHeader_120
DB_FindXAssetHeader_150:
	call Sys_IsRenderThread
	test al, al
	jz DB_FindXAssetHeader_160
	mov eax, [g_mainThreadBlocked]
	test eax, eax
	jz DB_FindXAssetHeader_160
	mov ebx, 0x1
DB_FindXAssetHeader_220:
	call Sys_IsDatabaseReady
	test eax, eax
	jz DB_FindXAssetHeader_170
	call Sys_IsMainThread
	test al, al
	jnz DB_FindXAssetHeader_180
	test bl, bl
	jnz DB_FindXAssetHeader_180
DB_FindXAssetHeader_170:
	call Sys_IsMainThread
	test al, al
	jnz DB_FindXAssetHeader_190
	mov dword [esp], 0x1
	call Sys_HaveSuspendedDatabaseThread
	mov ebx, eax
	test eax, eax
	jnz DB_FindXAssetHeader_200
DB_FindXAssetHeader_230:
	mov dword [esp], 0x1
	call Sys_Sleep
	test ebx, ebx
	jz DB_FindXAssetHeader_140
	mov dword [esp], 0x1
	call Sys_SuspendDatabaseThread
	jmp DB_FindXAssetHeader_140
DB_FindXAssetHeader_80:
	xor edi, edi
	jmp DB_FindXAssetHeader_210
DB_FindXAssetHeader_160:
	xor ebx, ebx
	jmp DB_FindXAssetHeader_220
DB_FindXAssetHeader_180:
	call DB_PostLoadXZone
	jmp DB_FindXAssetHeader_140
DB_FindXAssetHeader_190:
	call Sys_FastFileBlockedCallback
	mov dword [esp], 0x1
	call Sys_HaveSuspendedDatabaseThread
	mov ebx, eax
	test eax, eax
	jz DB_FindXAssetHeader_230
DB_FindXAssetHeader_200:
	mov dword [esp], 0x1
	call Sys_ResumeDatabaseThread
	jmp DB_FindXAssetHeader_230
DB_FindXAssetHeader_250:
	movzx eax, word [edi+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_FindXAssetHeader_240
DB_FindXAssetHeader_350:
	mov eax, edx
	shl eax, 0x4
	lea edi, [eax+g_assetEntryPool]
	cmp esi, [eax+g_assetEntryPool]
	jnz DB_FindXAssetHeader_250
	mov [esp], edi
	call DB_GetXAssetName
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz DB_FindXAssetHeader_250
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_FindXAssetHeader_110:
	mov byte [edi+0x9], 0x1
	mov ecx, [ebp-0x41c]
	test ecx, ecx
	jnz DB_FindXAssetHeader_260
DB_FindXAssetHeader_280:
	mov eax, [edi+0x4]
DB_FindXAssetHeader_410:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_FindXAssetHeader_120:
	test edi, edi
	jz DB_FindXAssetHeader_270
	mov byte [edi+0x9], 0x1
	mov ecx, [ebp-0x41c]
	test ecx, ecx
	jz DB_FindXAssetHeader_280
	jmp DB_FindXAssetHeader_260
DB_FindXAssetHeader_300:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
DB_FindXAssetHeader_290:
	mov dword [esp], 0x0
	call Sys_Sleep
DB_FindXAssetHeader_270:
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_FindXAssetHeader_290
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedIncrement
	sub eax, 0x1
	jnz DB_FindXAssetHeader_300
	mov eax, [db_hashCritSect]
	test eax, eax
	jnz DB_FindXAssetHeader_300
	mov edi, esi
	mov ebx, [ebp+0xc]
	jmp DB_FindXAssetHeader_310
DB_FindXAssetHeader_330:
	test eax, eax
	jz DB_FindXAssetHeader_320
	mov edx, eax
DB_FindXAssetHeader_340:
	mov eax, edi
	shl eax, 0x5
	sub eax, edi
	lea edi, [eax+edx]
	add ebx, 0x1
DB_FindXAssetHeader_310:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz DB_FindXAssetHeader_330
	mov edx, 0x2f
	jmp DB_FindXAssetHeader_340
DB_FindXAssetHeader_260:
	mov eax, g_assetNames
	mov ebx, [eax+esi*4]
	call Sys_Milliseconds
	mov [esp+0x10], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	sub eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo
	mov dword [esp], 0xa
	call Com_Printf
	jmp DB_FindXAssetHeader_280
DB_FindXAssetHeader_320:
	and edi, 0x7fff
	movzx eax, word [edi+edi+db_hashTable]
	movzx edx, ax
	test ax, ax
	jnz DB_FindXAssetHeader_350
DB_FindXAssetHeader_240:
	mov eax, com_developer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz DB_FindXAssetHeader_360
	cmp esi, 0x18
	ja DB_FindXAssetHeader_370
	mov eax, 0x1
	mov ecx, esi
	shl eax, cl
	test eax, 0x1600080
	jz DB_FindXAssetHeader_380
DB_FindXAssetHeader_360:
	mov eax, [ebp-0x41c]
	test eax, eax
	jnz DB_FindXAssetHeader_390
DB_FindXAssetHeader_470:
	cmp esi, 0x16
	jz DB_FindXAssetHeader_400
	cmp esi, 0x1f
	jz DB_FindXAssetHeader_400
DB_FindXAssetHeader_530:
	mov edx, [ebp+0xc]
	mov eax, esi
	call DB_CreateDefaultEntry
	mov ebx, eax
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	mov eax, [ebx+0x4]
	jmp DB_FindXAssetHeader_410
DB_FindXAssetHeader_450:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz DB_FindXAssetHeader_400
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz DB_FindXAssetHeader_420
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, g_assetNames
	mov eax, [eax+0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x1
	call Com_PrintError
DB_FindXAssetHeader_400:
	mov dword [esp], db_hashCritSect+0x4
	call InterlockedDecrement
	xor eax, eax
	jmp DB_FindXAssetHeader_410
DB_FindXAssetHeader_390:
	call Sys_Milliseconds
	sub eax, [ebp-0x41c]
	cmp eax, 0x64
	jle DB_FindXAssetHeader_430
	cmp esi, 0x7
	jz DB_FindXAssetHeader_440
	mov edx, [ebp+0xc]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo1
	mov dword [esp], 0x1
	call Com_PrintError
DB_FindXAssetHeader_430:
	cmp esi, 0x16
	jz DB_FindXAssetHeader_450
	cmp esi, 0x1f
	jz DB_FindXAssetHeader_460
	cmp esi, 0x7
	jz DB_FindXAssetHeader_470
DB_FindXAssetHeader_540:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov eax, g_assetNames
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x1
	call Com_PrintError
	jmp DB_FindXAssetHeader_470
DB_FindXAssetHeader_370:
	mov edx, [ebp+0xc]
	mov [esp+0x10], edx
	mov eax, g_assetNames
	mov eax, [eax+esi*4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ss1
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Com_sprintf
DB_FindXAssetHeader_510:
	mov dword [esp], 0xa
	call Sys_EnterCriticalSection
	mov eax, [g_missingAssetFile]
	test eax, eax
	jnz DB_FindXAssetHeader_480
	mov dword [esp], _cstring_missingassetcsv
	call FS_FOpenTextFileWrite
	mov [g_missingAssetFile], eax
DB_FindXAssetHeader_500:
	mov eax, [g_missingAssetFile]
	test eax, eax
	jnz DB_FindXAssetHeader_490
	mov eax, com_missingAssetOpenFailed
	mov dword [eax], 0x1
DB_FindXAssetHeader_520:
	mov dword [esp], 0xa
	call Sys_LeaveCriticalSection
	jmp DB_FindXAssetHeader_360
DB_FindXAssetHeader_480:
	mov dword [esp], _cstring_missingassetcsv
	call FS_FOpenFileAppend
	mov [g_missingAssetFile], eax
	jmp DB_FindXAssetHeader_500
DB_FindXAssetHeader_380:
	test eax, 0x800000
	jz DB_FindXAssetHeader_370
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov eax, g_assetNames
	mov eax, [eax+0x5c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_smps
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Com_sprintf
	jmp DB_FindXAssetHeader_510
DB_FindXAssetHeader_490:
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
	call FS_Write
	mov eax, [g_missingAssetFile]
	mov [esp], eax
	call FS_FCloseFile
	jmp DB_FindXAssetHeader_520
DB_FindXAssetHeader_440:
	mov ecx, [ebp+0xc]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_waited_i_msec_fo1
	mov dword [esp], 0xa
	call Com_Printf
	jmp DB_FindXAssetHeader_530
DB_FindXAssetHeader_460:
	mov dword [esp+0x4], _cstring_cfg
	mov edx, [ebp+0xc]
	mov [esp], edx
	call strstr
	test eax, eax
	jnz DB_FindXAssetHeader_400
	jmp DB_FindXAssetHeader_540
DB_FindXAssetHeader_420:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, g_assetNames
	mov eax, [eax+0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0xa
	call Com_PrintWarning
	jmp DB_FindXAssetHeader_400
	nop


;Load_WeaponDefAsset(WeaponDef**)
Load_WeaponDefAsset:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, 0x17
	call DB_AddXAsset
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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


;DB_EndRecoverLostDevice()
DB_EndRecoverLostDevice:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_EndRecoverLostDevice_10
DB_EndRecoverLostDevice_30:
	mov ecx, [g_zoneCount]
	test ecx, ecx
	jg DB_EndRecoverLostDevice_20
DB_EndRecoverLostDevice_50:
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	movzx eax, byte [g_loadingZone]
	test al, al
	setz byte [g_mayRecoverLostAssets]
	mov byte [g_isRecoveringLostDevice], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
DB_EndRecoverLostDevice_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz DB_EndRecoverLostDevice_30
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_EndRecoverLostDevice_10
	jmp DB_EndRecoverLostDevice_30
DB_EndRecoverLostDevice_20:
	xor ebx, ebx
DB_EndRecoverLostDevice_40:
	movzx eax, byte [ebx+g_zoneHandles]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	mov [esp], edx
	call DB_RecoverGeometryBuffers
	add ebx, 0x1
	cmp ebx, [g_zoneCount]
	jl DB_EndRecoverLostDevice_40
	jmp DB_EndRecoverLostDevice_50


;DB_EnumXAssets_FastFile(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
DB_EnumXAssets_FastFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x19], al
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_EnumXAssets_FastFile_10
DB_EnumXAssets_FastFile_60:
	mov edi, db_hashTable
DB_EnumXAssets_FastFile_70:
	movzx eax, word [edi]
	movzx edx, ax
	test ax, ax
	jz DB_EnumXAssets_FastFile_20
	jmp DB_EnumXAssets_FastFile_30
DB_EnumXAssets_FastFile_40:
	movzx eax, word [esi+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_EnumXAssets_FastFile_20
DB_EnumXAssets_FastFile_30:
	mov eax, edx
	shl eax, 0x4
	lea esi, [eax+g_assetEntryPool]
	mov edx, [ebp+0x8]
	cmp [eax+g_assetEntryPool], edx
	jnz DB_EnumXAssets_FastFile_40
	mov eax, [esi+0x4]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ebp+0xc]
	cmp byte [ebp-0x19], 0x0
	jz DB_EnumXAssets_FastFile_40
	movzx eax, word [esi+0xc]
	movzx edx, ax
	test ax, ax
	jz DB_EnumXAssets_FastFile_40
DB_EnumXAssets_FastFile_50:
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
	jnz DB_EnumXAssets_FastFile_50
	jmp DB_EnumXAssets_FastFile_40
DB_EnumXAssets_FastFile_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_EnumXAssets_FastFile_10
	jmp DB_EnumXAssets_FastFile_60
DB_EnumXAssets_FastFile_20:
	add edi, 0x2
	mov eax, g_freeAssetEntryHead
	cmp eax, edi
	jnz DB_EnumXAssets_FastFile_70
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DB_ReferencedFFNameList()
DB_ReferencedFFNameList:
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
	jmp DB_ReferencedFFNameList_10
DB_ReferencedFFNameList_30:
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jz DB_ReferencedFFNameList_20
DB_ReferencedFFNameList_10:
	cmp byte [ebx], 0x0
	jz DB_ReferencedFFNameList_30
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], edi
	call Q_strncmp
	test eax, eax
	jz DB_ReferencedFFNameList_30
	cmp byte [g_zoneNameList], 0x0
	jnz DB_ReferencedFFNameList_40
	lea eax, [ebx+0xa4]
	mov [ebp-0x11c], eax
	mov eax, [ebx+0xa4]
	cmp eax, 0x1
	jz DB_ReferencedFFNameList_50
DB_ReferencedFFNameList_70:
	cmp eax, 0x2
	jz DB_ReferencedFFNameList_60
DB_ReferencedFFNameList_80:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov edx, [ebp-0x11c]
	cmp dword [edx], 0x2
	jnz DB_ReferencedFFNameList_30
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz DB_ReferencedFFNameList_30
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_load
	call va
	lea edx, [ebp-0x118]
	mov [esp], edx
	mov ecx, 0x100
	mov edx, 0x2
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea eax, [ebp-0x118]
	mov [esp], eax
	call CreateFileA
	cmp eax, 0xffffffff
	jz DB_ReferencedFFNameList_30
	mov [esp], eax
	call CloseHandle
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov dword [esp+0x8], _cstring_usermaps
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov dword [esp+0x8], _cstring__load
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jnz DB_ReferencedFFNameList_10
DB_ReferencedFFNameList_20:
	mov eax, g_zoneNameList
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_ReferencedFFNameList_40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	lea eax, [ebx+0xa4]
	mov [ebp-0x11c], eax
	mov eax, [ebx+0xa4]
	cmp eax, 0x1
	jnz DB_ReferencedFFNameList_70
DB_ReferencedFFNameList_50:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
DB_ReferencedFFNameList_90:
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	jmp DB_ReferencedFFNameList_80
DB_ReferencedFFNameList_60:
	mov dword [esp+0x8], _cstring_usermaps
	jmp DB_ReferencedFFNameList_90
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
	call DB_AddXAsset
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
	call DB_AddXAsset
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


;DB_ReferencedFFChecksums()
DB_ReferencedFFChecksums:
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
	jmp DB_ReferencedFFChecksums_10
DB_ReferencedFFChecksums_30:
	add esi, 0x1
	add edi, 0xa8
	add ebx, 0xa8
	cmp esi, 0x20
	jz DB_ReferencedFFChecksums_20
DB_ReferencedFFChecksums_10:
	cmp byte [ebx], 0x0
	jz DB_ReferencedFFChecksums_30
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_localized_
	mov [esp], edi
	call Q_strncmp
	test eax, eax
	jz DB_ReferencedFFChecksums_30
	cmp byte [g_zoneNameList], 0x0
	jnz DB_ReferencedFFChecksums_40
DB_ReferencedFFChecksums_50:
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov eax, [ebx+0xa0]
	mov [esp], eax
	call itoa
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	cmp dword [ebx+0xa4], 0x2
	jnz DB_ReferencedFFChecksums_30
	mov eax, com_dedicated
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz DB_ReferencedFFChecksums_30
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_load
	call va
	lea edx, [ebp-0x128]
	mov [esp], edx
	mov ecx, 0x100
	mov edx, 0x2
	call DB_BuildOSPath_FromSource
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x60000000
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x80000000
	lea eax, [ebp-0x128]
	mov [esp], eax
	call CreateFileA
	mov [ebp-0x12c], eax
	cmp eax, 0xffffffff
	jz DB_ReferencedFFChecksums_30
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call GetFileSize
	mov [ebp-0x130], eax
	mov edx, [ebp-0x12c]
	mov [esp], edx
	call CloseHandle
	mov eax, [ebp-0x130]
	test eax, eax
	jz DB_ReferencedFFChecksums_30
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x130]
	mov [esp], edx
	call itoa
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	jmp DB_ReferencedFFChecksums_30
DB_ReferencedFFChecksums_40:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x820
	mov dword [esp], g_zoneNameList
	call Q_strncat
	jmp DB_ReferencedFFChecksums_50
DB_ReferencedFFChecksums_20:
	mov eax, g_zoneNameList
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
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
	call DB_FindXAssetHeader
	mov [ebx], eax
Load_FxEffectDefFromName_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;DB_BeginRecoverLostDevice()
DB_BeginRecoverLostDevice:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov byte [g_isRecoveringLostDevice], 0x1
	cmp byte [g_mayRecoverLostAssets], 0x0
	jz DB_BeginRecoverLostDevice_10
DB_BeginRecoverLostDevice_40:
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_BeginRecoverLostDevice_20
DB_BeginRecoverLostDevice_50:
	mov eax, [g_zoneCount]
	test eax, eax
	jg DB_BeginRecoverLostDevice_30
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	add esp, 0x14
	pop ebx
	pop ebp
	ret
DB_BeginRecoverLostDevice_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	cmp byte [g_mayRecoverLostAssets], 0x0
	jnz DB_BeginRecoverLostDevice_40
	mov dword [esp], 0x0
	call Sys_Sleep
	cmp byte [g_mayRecoverLostAssets], 0x0
	jz DB_BeginRecoverLostDevice_10
	jmp DB_BeginRecoverLostDevice_40
DB_BeginRecoverLostDevice_20:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jz DB_BeginRecoverLostDevice_50
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_BeginRecoverLostDevice_20
	jmp DB_BeginRecoverLostDevice_50
DB_BeginRecoverLostDevice_30:
	xor ebx, ebx
DB_BeginRecoverLostDevice_60:
	movzx eax, byte [ebx+g_zoneHandles]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+g_zones+0x48]
	mov [esp], edx
	call DB_ReleaseGeometryBuffers
	add ebx, 0x1
	cmp ebx, [g_zoneCount]
	jl DB_BeginRecoverLostDevice_60
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
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
	call DB_AddXAsset
	mov [ebx], eax
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;Mark_snd_alias_list_Asset(snd_alias_list_t*)
Mark_snd_alias_list_Asset:
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
	call DB_GetXAssetName
	mov ebx, eax
	mov esi, 0x7
	jmp Mark_snd_alias_list_Asset_10
Mark_snd_alias_list_Asset_30:
	test eax, eax
	jz Mark_snd_alias_list_Asset_20
	mov edx, eax
Mark_snd_alias_list_Asset_40:
	mov eax, esi
	shl eax, 0x5
	sub eax, esi
	lea esi, [eax+edx]
	add ebx, 0x1
Mark_snd_alias_list_Asset_10:
	movsx eax, byte [ebx]
	mov [esp], eax
	call tolower
	cmp eax, 0x5c
	jnz Mark_snd_alias_list_Asset_30
	mov edx, 0x2f
	jmp Mark_snd_alias_list_Asset_40
Mark_snd_alias_list_Asset_20:
	and esi, 0x7fff
	movzx eax, word [esi+esi+db_hashTable]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x7
	jz Mark_snd_alias_list_Asset_50
Mark_snd_alias_list_Asset_60:
	movzx eax, word [edx+0xa]
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp dword [eax+g_assetEntryPool], 0x7
	jnz Mark_snd_alias_list_Asset_60
Mark_snd_alias_list_Asset_50:
	cmp [edx+0x4], edi
	jnz Mark_snd_alias_list_Asset_60
	mov byte [edx+0x9], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


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


;DB_GetAllXAssetOfType_FastFile(XAssetType, XAssetHeader*, int)
DB_GetAllXAssetOfType_FastFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [esp], db_hashCritSect
	call InterlockedIncrement
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_GetAllXAssetOfType_FastFile_10
DB_GetAllXAssetOfType_FastFile_70:
	xor ebx, ebx
	mov ecx, db_hashTable
DB_GetAllXAssetOfType_FastFile_60:
	movzx eax, word [ecx]
	movzx edx, ax
	test ax, ax
	jz DB_GetAllXAssetOfType_FastFile_20
	test edi, edi
	jz DB_GetAllXAssetOfType_FastFile_30
	jmp DB_GetAllXAssetOfType_FastFile_40
DB_GetAllXAssetOfType_FastFile_50:
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jz DB_GetAllXAssetOfType_FastFile_20
DB_GetAllXAssetOfType_FastFile_30:
	mov eax, edx
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	cmp [eax+g_assetEntryPool], esi
	jnz DB_GetAllXAssetOfType_FastFile_50
	add ebx, 0x1
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_GetAllXAssetOfType_FastFile_30
DB_GetAllXAssetOfType_FastFile_20:
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz DB_GetAllXAssetOfType_FastFile_60
DB_GetAllXAssetOfType_FastFile_100:
	mov dword [esp], db_hashCritSect
	call InterlockedDecrement
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_GetAllXAssetOfType_FastFile_10:
	mov dword [esp], 0x0
	call Sys_Sleep
	mov eax, [db_hashCritSect+0x4]
	test eax, eax
	jnz DB_GetAllXAssetOfType_FastFile_10
	jmp DB_GetAllXAssetOfType_FastFile_70
DB_GetAllXAssetOfType_FastFile_40:
	lea eax, [edi+ebx*4]
	mov [ebp-0x1c], eax
DB_GetAllXAssetOfType_FastFile_90:
	mov eax, edx
	shl eax, 0x4
	lea edx, [eax+g_assetEntryPool]
	mov [ebp-0x2c], edx
	cmp [eax+g_assetEntryPool], esi
	jnz DB_GetAllXAssetOfType_FastFile_80
	mov eax, [edx+0x4]
	mov edx, [ebp-0x1c]
	mov [edx], eax
	add ebx, 0x1
	add edx, 0x4
	mov [ebp-0x1c], edx
DB_GetAllXAssetOfType_FastFile_80:
	mov edx, [ebp-0x2c]
	movzx eax, word [edx+0xa]
	movzx edx, ax
	test ax, ax
	jnz DB_GetAllXAssetOfType_FastFile_90
	add ecx, 0x2
	cmp ecx, g_freeAssetEntryHead
	jnz DB_GetAllXAssetOfType_FastFile_60
	jmp DB_GetAllXAssetOfType_FastFile_100
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
	call DB_AddXAsset
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


;DB_Update()
DB_Update:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_IsDatabaseReady2
	test eax, eax
	jz DB_Update_10
DB_Update_20:
	leave
	ret
DB_Update_10:
	call Sys_IsDatabaseReady
	test eax, eax
	jz DB_Update_20
	leave
	jmp DB_PostLoadXZone


;Initialized global or static variables of db_registry:
SECTION .data
DB_DynamicCloneXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, DB_DynamicCloneMenu, 0x0, DB_DynamicCloneWeaponDef, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_defaultAssetName: dd _cstring_null, _cstring_default, _cstring_void, _cstring_void, _cstring_default1, _cstring_default, _cstring_white, _cstring_null1, _cstring_default, _cstring_nullwav, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_light_dynamic, _cstring_null, _cstring_fontsconsolefont, _cstring_uidefaultmenu, _cstring_default_menu, _cstring_cgame_unknown, _cstring_defaultweapon_mp, _cstring_null, _cstring_miscmissing_fx, _cstring_default, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_null, _cstring_mpdefaultstringt, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_RemoveXAssetHandler: dd 0x0, 0x0, 0x0, 0x0, 0x0, DB_RemoveTechniqueSet, DB_RemoveImage, 0x0, 0x0, DB_RemoveLoadedSound, DB_RemoveClipMap, DB_RemoveClipMap, DB_RemoveComWorld, 0x0, 0x0, 0x0, DB_RemoveGfxWorld, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_XAssetPool: dd g_XModelPiecesPool, g_PhysPresetPool, g_XAnimPartsPool, g_XModelPool, g_MaterialPool, g_MaterialTechniqueSetPool, g_GfxImagePool, g_SoundPool, g_SndCurvePool, g_LoadedSoundPool, cm, cm, comWorld, 0x0, gameWorldMp, g_MapEntsPool, s_world, g_GfxLightDefPool, 0x0, g_FontPool, g_MenuListPool, g_MenuPool, g_LocalizeEntryPool, g_WeaponDefPool, 0x0, g_FxEffectDefPool, g_FxImpactTablePool, 0x0, 0x0, 0x0, 0x0, g_RawFilePool, g_StringTablePool, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_FreeXAssetHeaderHandler: dd DB_FreeXAssetHeader_XModelPieces, DB_FreeXAssetHeader_PhysPreset, DB_FreeXAssetHeader_XAnimParts, DB_FreeXAssetHeader_XModel, DB_FreeMaterial, DB_FreeXAssetHeader_MaterialTechniqueSet, DB_FreeXAssetHeader_GfxImage, DB_FreeXAssetHeader_snd_alias_list_t, DB_FreeXAssetHeader_SndCurve, DB_FreeXAssetHeader_LoadedSound, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_MapEnts, DB_FreeXAssetSingleton, DB_FreeXAssetHeader_GfxLightDef, 0x0, DB_FreeXAssetHeader_Font_s, DB_FreeXAssetHeader_MenuList, DB_FreeXAssetHeader_menuDef_t, DB_FreeXAssetHeader_LocalizeEntry, DB_FreeXAssetHeader_WeaponDef, 0x0, DB_FreeXAssetHeader_FxEffectDef, DB_FreeXAssetHeader_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_FreeXAssetHeader_RawFile, DB_FreeXAssetHeader_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_poolSize: dd 0x40, 0x40, 0x1000, 0x3e8, 0x800, 0x400, 0x960, 0x3e80, 0x40, 0x4b0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x1, 0x20, 0x0, 0x10, 0x80, 0x280, 0x1800, 0x80, 0x1, 0x190, 0x4, 0x0, 0x0, 0x0, 0x0, 0x400, 0x32, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_InitPoolHeaderHandler: dd DB_InitPool_XModelPieces, DB_InitPool_PhysPreset, DB_InitPool_XAnimParts, DB_InitPool_XModel, DB_InitPool_Material, DB_InitPool_MaterialTechniqueSet, DB_InitPool_GfxImage, DB_InitPool_snd_alias_list_t, DB_InitPool_SndCurve, DB_InitPool_LoadedSound, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitSingleton, DB_InitPool_MapEnts, DB_InitSingleton, DB_InitPool_GfxLightDef, 0x0, DB_InitPool_Font_s, DB_InitPool_MenuList, DB_InitPool_menuDef_t, DB_InitPool_LocalizeEntry, DB_InitPool_WeaponDef, 0x0, DB_InitPool_FxEffectDef, DB_InitPool_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_InitPool_RawFile, DB_InitPool_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
DB_AllocXAssetHeaderHandler: dd DB_AllocXAsset_XModelPieces, DB_AllocXAsset_PhysPreset, DB_AllocXAsset_XAnimParts, DB_AllocXAsset_XModel, DB_AllocMaterial, DB_AllocXAsset_MaterialTechniqueSet, DB_AllocXAsset_GfxImage, DB_AllocXAsset_snd_alias_list_t, DB_AllocXAsset_SndCurve, DB_AllocXAsset_LoadedSound, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAssetSingleton, DB_AllocXAsset_MapEnts, DB_AllocXAssetSingleton, DB_AllocXAsset_GfxLightDef, 0x0, DB_AllocXAsset_Font_s, DB_AllocXAsset_MenuList, DB_AllocXAsset_menuDef_t, DB_AllocXAsset_LocalizeEntry, DB_AllocXAsset_WeaponDef, 0x0, DB_AllocXAsset_FxEffectDef, DB_AllocXAsset_FxImpactTable, 0x0, 0x0, 0x0, 0x0, DB_AllocXAsset_RawFile, DB_AllocXAsset_StringTable, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


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

