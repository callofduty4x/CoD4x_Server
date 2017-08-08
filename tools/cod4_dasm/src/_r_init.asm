;Imports of r_init:
	extern r_reflectionProbeGenerate
	extern r_vsync
	extern Com_Printf
	extern R_InitImages
	extern Material_Init
	extern R_InitFonts
	extern R_InitLoadWater
	extern R_InitLightDefs
	extern R_ClearFogs
	extern R_InitDebug
	extern alwaysfails
	extern R_ShutdownRenderTargets
	extern R_ShutdownModelLightingImage
	extern R_ShutdownStaticModelCache
	extern R_DestroyDynamicBuffers
	extern R_DestroyParticleCloudBuffer
	extern RB_FreeSunSpriteQueries
	extern R_ShutdownRenderBuffers
	extern R_InitRenderTargets
	extern R_CreateDynamicBuffers
	extern RB_AllocSunSpriteQueries
	extern R_CreateParticleCloudBuffer
	extern R_InitRenderBuffers
	extern R_InitModelLightingImage
	extern R_InitStaticModelCache
	extern WinSleep
	extern _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	extern R_SyncRenderThread
	extern R_ShutdownDebug
	extern R_SaveLightVisHistory
	extern R_ShutdownLightDefs
	extern R_ShutdownWorld
	extern useFastFile
	extern R_ResetModelLighting
	extern R_UnlockSkinnedCache
	extern R_FlushStaticModelCache
	extern R_Cinematic_Shutdown
	extern R_ShutdownRenderCommands
	extern R_UnregisterCmds
	extern DB_ShutdownXAssets
	extern R_ShutdownLoadWater
	extern R_ShutdownFonts
	extern Material_Shutdown
	extern R_ShutdownImages
	extern gfxCmdBufState
	extern R_ClearAllStreamSources
	extern Sys_Error
	extern r_gamma
	extern pow
	extern floorf
	extern r_loadForRenderer
	extern Cvar_SetBool
	extern Cvar_MakeLatchedValueCurrent
	extern DB_LoadXAssets
	extern DB_SyncXAssets
	extern R_RegisterDvars
	extern Sys_DirectXFatalError
	extern Sys_IsMainThread
	extern R_Cinematic_BeginLostDevice
	extern DB_BeginRecoverLostDevice
	extern R_ReleaseLostImages
	extern Material_ReleaseAll
	extern R_ReleaseWorld
	extern r_aaSamples
	extern gfxCmdBufInput
	extern gfxCmdBufSourceState
	extern R_InitCmdBufSourceState
	extern R_InitCmdBufState
	extern RB_InitSceneViewport
	extern R_SetRenderTargetSize
	extern gfxCmdBufContext
	extern R_SetRenderTarget
	extern R_ReloadWorld
	extern Material_ReloadAll
	extern R_ReloadLostImages
	extern RB_CalcSunSpriteSamples
	extern DB_EndRecoverLostDevice
	extern R_Cinematic_EndLostDevice
	extern va
	extern R_AbortRenderCommands
	extern Material_FinishLoading
	extern RB_TouchAllImages
	extern RB_SetGammaRamp
	extern Swap_Init
	extern R_RegisterCmds
	extern memset
	extern RB_InitBackendGlobalStructs
	extern MatrixIdentity44
	extern R_InitDrawMethod
	extern RB_RegisterBackendAssets
	extern R_InitWater
	extern R_CheckDxCaps
	extern r_rendererPreference
	extern r_rendererInUse
	extern Cvar_SetInt
	extern qsort
	extern Cvar_RegisterEnum
	extern r_mode
	extern r_displayRefresh
	extern Cvar_VariableBooleanValue
	extern r_customMode
	extern sscanf
	extern Cvar_EnumToString
	extern Cvar_VariableIntegerValue
	extern _ZN10MacDisplay13GetMainWindowEv
	extern R_GetDepthStencilFormat
	extern r_multiGpu
	extern r_aspectRatio
	extern com_wideScreen
	extern RB_InitCodeConstants
	extern r_gpuSync
	extern R_Cinematic_Init
	extern RB_SetInitialState
	extern Cvar_SetModified
	extern R_InitScene
	extern RB_PixelCost_Init
	extern Sys_HideSplashWindow
	extern sprintf
	extern Com_Error
	extern Direct3DCreate9
	extern R_InitRenderCommands
	extern R_AcquireGpuFenceLock
	extern RB_IsGpuFenceFinished
	extern R_ReleaseGpuFenceLock

;Exports of r_init:
	global R_SetD3DPresentParameters
	global formats.160670
	global R_InitSystems
	global R_ReleaseForShutdownOrReset
	global R_CompareDisplayModes
	global R_CompareRefreshRates
	global R_CreateForInitOrReset
	global R_CreateDeviceInternal
	global R_InitOnce
	global R_Shutdown
	global R_UnloadWorld
	global R_GammaCorrect
	global R_MakeDedicated
	global R_FatalInitError
	global R_FatalLockError
	global R_CheckLostDevice
	global R_ComErrorCleanup
	global R_EndRegistration
	global R_ShutdownStreams
	global R_TrackStatistics
	global R_ErrorDescription
	global R_SetColorMappings
	global R_UpdateTeamColors
	global R_BeginRegistration
	global R_ConfigureRenderer
	global R_UpdateGpuSyncType
	global R_IsUsingAdaptiveGpuSync
	global R_SyncGpu
	global dx_ctx
	global rgp
	global rg
	global gfxCfg
	global gfxMetrics
	global g_allocateMinimalResources
	global g_disableRendering
	global gfxAssets
	global r_glob
	global vidConfig


SECTION .text


;R_SetD3DPresentParameters(_D3DPRESENT_PARAMETERS_*, GfxWindowParms const*)
R_SetD3DPresentParameters:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov esi, edx
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SetD3DPresentParameters_10
	mov eax, [edx+0x24]
	cmp eax, 0x1
	jle R_SetD3DPresentParameters_10
	mov edi, eax
	lea eax, [eax-0x2]
	neg eax
	lea eax, [eax+edi-0x1]
	mov [ebp-0x2c], eax
R_SetD3DPresentParameters_30:
	mov [dx_ctx+0x2c5c], edi
	mov edx, [dx_ctx+0x4]
	mov ecx, [edx]
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	xor eax, eax
	cmp byte [esi+0x8], 0x0
	setz al
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x15
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x2c]
	test eax, eax
	jns R_SetD3DPresentParameters_20
	sub edi, 0x1
	cmp edi, [ebp-0x2c]
	jnz R_SetD3DPresentParameters_30
R_SetD3DPresentParameters_10:
	mov dword [dx_ctx+0x2c5c], 0x0
	mov dword [dx_ctx+0x2c60], 0x0
R_SetD3DPresentParameters_70:
	cld
	mov ecx, 0xe
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, [esi+0x1c]
	mov [ebx], eax
	mov eax, [esi+0x20]
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x15
	mov dword [ebx+0xc], 0x1
	mov eax, [dx_ctx+0x2c5c]
	mov [ebx+0x10], eax
	mov eax, [dx_ctx+0x2c60]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0x1
	mov dword [ebx+0x24], 0x0
	mov eax, [dx_ctx+0x24]
	mov [ebx+0x28], eax
	mov eax, r_vsync
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SetD3DPresentParameters_40
	mov eax, 0x1
	mov [ebx+0x34], eax
	mov eax, [esi]
	mov [ebx+0x1c], eax
	mov dword [ebx+0x2c], 0x0
	cmp byte [esi+0x8], 0x0
	jz R_SetD3DPresentParameters_50
R_SetD3DPresentParameters_60:
	mov dword [ebx+0x20], 0x0
	mov eax, [esi+0x4]
	mov [ebx+0x30], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetD3DPresentParameters_40:
	mov eax, 0x80000000
	mov [ebx+0x34], eax
	mov eax, [esi]
	mov [ebx+0x1c], eax
	mov dword [ebx+0x2c], 0x0
	cmp byte [esi+0x8], 0x0
	jnz R_SetD3DPresentParameters_60
R_SetD3DPresentParameters_50:
	mov dword [ebx+0x20], 0x1
	mov dword [ebx+0x30], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetD3DPresentParameters_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_using_ix_antiali
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	mov [dx_ctx+0x2c60], eax
	jmp R_SetD3DPresentParameters_70
	nop


;R_InitSystems()
R_InitSystems:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_InitImages
	call Material_Init
	call R_InitFonts
	call R_InitLoadWater
	call R_InitLightDefs
	call R_ClearFogs
	call R_InitDebug
	mov byte [rg+0x140], 0x1
	leave
	ret


;R_ReleaseForShutdownOrReset()
R_ReleaseForShutdownOrReset:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jle R_ReleaseForShutdownOrReset_10
	xor edi, edi
	mov ebx, dx_ctx
	mov esi, alwaysfails
R_ReleaseForShutdownOrReset_20:
	mov eax, [ebx+0x2c7c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x2c7c], 0x0
	mov eax, [esi]
	test eax, eax
	jnz R_ReleaseForShutdownOrReset_20
	add edi, 0x1
	add ebx, 0x10
	cmp edi, [dx_ctx+0x2c74]
	jl R_ReleaseForShutdownOrReset_20
R_ReleaseForShutdownOrReset_10:
	call R_ShutdownRenderTargets
	call R_ShutdownModelLightingImage
	call R_ShutdownStaticModelCache
	call R_DestroyDynamicBuffers
	call R_DestroyParticleCloudBuffer
	cmp byte [g_allocateMinimalResources], 0x0
	jz R_ReleaseForShutdownOrReset_30
R_ReleaseForShutdownOrReset_110:
	mov eax, [dx_ctx+0x2c88]
	test eax, eax
	jz R_ReleaseForShutdownOrReset_40
	mov ebx, alwaysfails
R_ReleaseForShutdownOrReset_50:
	mov eax, [dx_ctx+0x2c88]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x2c88], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_ReleaseForShutdownOrReset_50
R_ReleaseForShutdownOrReset_40:
	mov esi, dx_ctx
	mov edi, alwaysfails
R_ReleaseForShutdownOrReset_80:
	lea ebx, [esi+0x2c34]
	mov eax, [esi+0x2c34]
	test eax, eax
	jz R_ReleaseForShutdownOrReset_60
R_ReleaseForShutdownOrReset_70:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx], 0x0
	mov ecx, [edi]
	test ecx, ecx
	jnz R_ReleaseForShutdownOrReset_70
R_ReleaseForShutdownOrReset_60:
	add esi, 0x4
	mov eax, dx_ctx+0x20
	cmp eax, esi
	jnz R_ReleaseForShutdownOrReset_80
	call RB_FreeSunSpriteQueries
	mov edx, [gfxAssets]
	test edx, edx
	jz R_ReleaseForShutdownOrReset_90
	mov ebx, alwaysfails
R_ReleaseForShutdownOrReset_100:
	mov eax, [gfxAssets]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxAssets], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_ReleaseForShutdownOrReset_100
R_ReleaseForShutdownOrReset_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ReleaseForShutdownOrReset_30:
	call R_ShutdownRenderBuffers
	jmp R_ReleaseForShutdownOrReset_110


;R_CompareDisplayModes(void const*, void const*)
R_CompareDisplayModes:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ecx]
	sub eax, [edx]
	jnz R_CompareDisplayModes_10
	mov eax, [ecx+0x4]
	sub eax, [edx+0x4]
	jnz R_CompareDisplayModes_10
	mov eax, [ecx+0x8]
	sub eax, [edx+0x8]
R_CompareDisplayModes_10:
	pop ebp
	ret
	nop


;R_CompareRefreshRates(void const*, void const*)
R_CompareRefreshRates:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov edx, [ebp+0xc]
	sub eax, [edx]
	pop ebp
	ret
	nop


;R_CreateForInitOrReset()
R_CreateForInitOrReset:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x4], _cstring_initializing_ren
	mov dword [esp], 0x8
	call Com_Printf
	call R_InitRenderTargets
	cmp byte [g_allocateMinimalResources], 0x0
	jz R_CreateForInitOrReset_10
R_CreateForInitOrReset_90:
	mov dword [esp+0x4], _cstring_initializing_dyn
	mov dword [esp], 0x8
	call Com_Printf
	call R_CreateDynamicBuffers
	cmp byte [g_allocateMinimalResources], 0x0
	jz R_CreateForInitOrReset_20
R_CreateForInitOrReset_80:
	mov dword [esp+0x4], _cstring_creating_direct3
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [dx_ctx+0x2c54], 0x0
	mov byte [dx_ctx+0x2ca4], 0x0
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov dword [esp+0x8], dx_ctx+0x2c88
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call dword [edx+0x1d8]
	test eax, eax
	js R_CreateForInitOrReset_30
	xor esi, esi
	mov ebx, dx_ctx+0x2c34
R_CreateForInitOrReset_40:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call dword [edx+0x1d8]
	test eax, eax
	js R_CreateForInitOrReset_30
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x8
	jnz R_CreateForInitOrReset_40
	cmp byte [g_allocateMinimalResources], 0x0
	jz R_CreateForInitOrReset_50
R_CreateForInitOrReset_70:
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_CreateForInitOrReset_50:
	call RB_AllocSunSpriteQueries
	mov eax, [dx_ctx+0x8]
	mov ecx, [eax]
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x9
	mov [esp], eax
	call dword [ecx+0x1d8]
	test eax, eax
	js R_CreateForInitOrReset_60
	mov eax, [ebp-0xc]
R_CreateForInitOrReset_100:
	mov [gfxAssets], eax
	jmp R_CreateForInitOrReset_70
R_CreateForInitOrReset_30:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_event_query_crea
	mov dword [esp], 0x8
	call Com_Printf
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_CreateForInitOrReset_20:
	mov dword [esp+0x4], _cstring_initializing_par
	mov dword [esp], 0x8
	call Com_Printf
	call R_CreateParticleCloudBuffer
	jmp R_CreateForInitOrReset_80
R_CreateForInitOrReset_10:
	call R_InitRenderBuffers
	call R_InitModelLightingImage
	mov dword [esp+0x4], _cstring_initializing_sta
	mov dword [esp], 0x8
	call Com_Printf
	call R_InitStaticModelCache
	jmp R_CreateForInitOrReset_90
R_CreateForInitOrReset_60:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_occlusion_query_
	mov dword [esp], 0x8
	call Com_Printf
	xor eax, eax
	jmp R_CreateForInitOrReset_100


;R_CreateDeviceInternal(HWND__*, unsigned long, _D3DPRESENT_PARAMETERS_*)
R_CreateDeviceInternal:
R_CreateDeviceInternal_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov edi, ecx
	mov dword [esp+0x4], _cstring_creating_direct31
	mov dword [esp], 0x8
	call Com_Printf
	xor esi, esi
	jmp R_CreateDeviceInternal_10
R_CreateDeviceInternal_50:
	mov eax, [dx_ctx+0x18]
	test eax, eax
	jle R_CreateDeviceInternal_20
	mov eax, 0x1
R_CreateDeviceInternal_60:
	mov [dx_ctx+0x10], al
	mov eax, [dx_ctx+0x4]
	mov ecx, [eax]
	mov dword [esp+0x18], dx_ctx+0x8
	mov [esp+0x14], edi
	mov edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov edx, [dx_ctx+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x40]
	mov ebx, eax
	test eax, eax
	jns R_CreateDeviceInternal_30
	mov dword [esp], 0x64
	call WinSleep
	add esi, 0x1
	cmp esi, 0x14
	jz R_CreateDeviceInternal_40
R_CreateDeviceInternal_10:
	mov dword [esp+0x4], dx_ctx+0x18
	mov dword [esp], dx_ctx+0x14
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	mov eax, [dx_ctx+0x14]
	test eax, eax
	jg R_CreateDeviceInternal_50
R_CreateDeviceInternal_20:
	xor eax, eax
	jmp R_CreateDeviceInternal_60
R_CreateDeviceInternal_30:
	mov edx, [dx_ctx+0x4]
	mov ecx, [edx]
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [dx_ctx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x20]
	test eax, eax
	js R_CreateDeviceInternal_70
	mov eax, [ebp-0x28]
	mov [dx_ctx+0x1c], eax
	mov eax, [ebp-0x24]
	mov [dx_ctx+0x20], eax
R_CreateDeviceInternal_80:
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CreateDeviceInternal_40:
	mov esi, [dx_ctx+0xc]
	test esi, esi
	jz R_CreateDeviceInternal_80
	mov dword [dx_ctx+0xc], 0x0
	mov ecx, edi
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x2c]
	call R_CreateDeviceInternal_90
	mov ebx, eax
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CreateDeviceInternal_70:
	mov eax, [edi]
	mov [dx_ctx+0x1c], eax
	mov eax, [edi+0x4]
	mov [dx_ctx+0x20], eax
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_InitOnce()
R_InitOnce:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_Shutdown(int)
R_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [rg+0x140], 0x0
	jnz R_Shutdown_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_Shutdown_10:
	call R_SyncRenderThread
	mov byte [rg+0x140], 0x0
	mov edx, [dx_ctx+0x8]
	test edx, edx
	jz R_Shutdown_20
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz R_Shutdown_30
R_Shutdown_20:
	call R_ShutdownDebug
	call R_SaveLightVisHistory
	call R_ShutdownLightDefs
	call R_ShutdownWorld
	mov esi, useFastFile
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz R_Shutdown_40
R_Shutdown_140:
	call R_ResetModelLighting
	mov dword [rgp+0x20a0], 0x0
	call R_UnlockSkinnedCache
	call R_FlushStaticModelCache
	test ebx, ebx
	jz R_Shutdown_50
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz R_Shutdown_60
R_Shutdown_130:
	call R_Cinematic_Shutdown
	call R_ReleaseForShutdownOrReset
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jz R_Shutdown_70
	mov edx, dx_ctx+0x2c70
R_Shutdown_80:
	sub eax, 0x1
	mov [dx_ctx+0x2c74], eax
	shl eax, 0x4
	mov dword [eax+edx+0x8], 0x0
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jnz R_Shutdown_80
R_Shutdown_70:
	mov eax, [dx_ctx+0x8]
	test eax, eax
	jz R_Shutdown_90
	mov ebx, alwaysfails
R_Shutdown_100:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x8], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_Shutdown_100
R_Shutdown_90:
	mov eax, [dx_ctx+0x4]
	test eax, eax
	jz R_Shutdown_110
	mov ebx, alwaysfails
R_Shutdown_120:
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x4], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_Shutdown_120
R_Shutdown_110:
	call R_ShutdownRenderCommands
R_Shutdown_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp R_UnregisterCmds
R_Shutdown_60:
	call DB_ShutdownXAssets
	jmp R_Shutdown_130
R_Shutdown_40:
	call R_ShutdownLoadWater
	call R_ShutdownFonts
	call Material_Shutdown
	call R_ShutdownImages
	jmp R_Shutdown_140
R_Shutdown_30:
	mov eax, gfxCmdBufState
	add eax, 0x90
	mov [esp], eax
	call R_ClearAllStreamSources
	jmp R_Shutdown_20
	nop


;R_UnloadWorld()
R_UnloadWorld:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [rgp+0x20a0]
	test edx, edx
	jz R_UnloadWorld_10
	mov dword [esp], _cstring_cannot_unload_bs
	call Sys_Error
R_UnloadWorld_10:
	leave
	ret


;R_GammaCorrect(unsigned char*, int)
R_GammaCorrect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov edi, [ebp+0x8]
	mov eax, r_gamma
	mov eax, [eax]
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	divss xmm0, dword [eax+0xc]
	xor ebx, ebx
	cvtss2sd xmm2, xmm0
	movsd [ebp-0x220], xmm2
	ucomiss xmm0, xmm1
	jp R_GammaCorrect_10
	jnz R_GammaCorrect_10
R_GammaCorrect_20:
	mov eax, ebx
	shl eax, 0x8
	add eax, ebx
	mov [ebp+ebx*2-0x218], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz R_GammaCorrect_20
R_GammaCorrect_50:
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle R_GammaCorrect_30
	xor ebx, ebx
	mov esi, 0x7f807f81
R_GammaCorrect_40:
	lea ecx, [ebx+edi]
	movzx eax, byte [ecx]
	movzx edx, word [ebp+eax*2-0x218]
	mov eax, edx
	imul esi
	shr edx, 0x7
	mov [ecx], dl
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz R_GammaCorrect_40
R_GammaCorrect_30:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GammaCorrect_10:
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [_float_255_00000000]
	movsd xmm1, qword [ebp-0x220]
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0x228]
	cvtsd2ss xmm0, [ebp-0x228]
	mulss xmm0, [_float_65535_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x22c]
	cvttss2si eax, [ebp-0x22c]
	mov [ebp+ebx*2-0x218], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz R_GammaCorrect_10
	jmp R_GammaCorrect_50
	nop


;R_MakeDedicated(GfxConfiguration const*)
R_MakeDedicated:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [gfxCfg], eax
	mov eax, [edx+0x4]
	mov [gfxCfg+0x4], eax
	mov eax, [edx+0x8]
	mov [gfxCfg+0x8], eax
	mov eax, [edx+0xc]
	mov [gfxCfg+0xc], eax
	mov eax, [edx+0x10]
	mov [gfxCfg+0x10], eax
	mov eax, [edx+0x14]
	mov [gfxCfg+0x14], eax
	mov eax, [edx+0x18]
	mov [gfxCfg+0x18], eax
	mov eax, [edx+0x1c]
	mov [gfxCfg+0x1c], eax
	mov eax, [edx+0x20]
	mov [gfxCfg+0x20], eax
	mov eax, [edx+0x24]
	mov [gfxCfg+0x24], eax
	mov eax, [edx+0x28]
	mov [gfxCfg+0x28], eax
	mov eax, [edx+0x2c]
	mov [gfxCfg+0x2c], eax
	mov ebx, r_loadForRenderer
	mov ecx, [ebx]
	test ecx, ecx
	jz R_MakeDedicated_10
R_MakeDedicated_90:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_SetBool
	mov eax, [ebx]
	mov [esp], eax
	call Cvar_MakeLatchedValueCurrent
	mov eax, [gfxCfg+0x18]
	mov [ebp-0x60], eax
	mov dword [ebp-0x5c], 0x2
	mov dword [ebp-0x58], 0x0
	mov eax, [gfxCfg+0x24]
	test eax, eax
	jz R_MakeDedicated_20
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, 0x2
	mov ebx, 0x3
R_MakeDedicated_80:
	mov ecx, [gfxCfg+0x2c]
	test ecx, ecx
	jz R_MakeDedicated_30
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x18]
	lea edx, [eax-0x48]
	mov [eax-0x48], ecx
	mov dword [edx+0x4], 0x10
	mov dword [edx+0x8], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea edi, [ebp-0x60]
	mov [esp], edi
	call DB_LoadXAssets
	call DB_SyncXAssets
	xor eax, eax
	mov esi, 0x1
	mov ecx, [gfxCfg+0x1c]
	test ecx, ecx
	jz R_MakeDedicated_40
R_MakeDedicated_60:
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x18]
	lea edx, [eax-0x48]
	mov [eax-0x48], ecx
	mov dword [edx+0x4], 0x8
	mov dword [edx+0x8], 0x0
	lea ebx, [esi+0x1]
R_MakeDedicated_70:
	lea eax, [esi+esi*2]
	lea eax, [ebp+eax*4-0x18]
	lea ecx, [eax-0x48]
	mov edx, [gfxCfg+0x20]
	mov [eax-0x48], edx
	mov dword [ecx+0x4], 0x4
	mov dword [ecx+0x8], 0x0
	mov ecx, [gfxCfg+0x28]
	test ecx, ecx
	jz R_MakeDedicated_50
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x18]
	lea edx, [eax-0x48]
	mov [eax-0x48], ecx
	mov dword [edx+0x4], 0x1
	mov dword [edx+0x8], 0x0
	lea ebx, [esi+0x2]
R_MakeDedicated_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edi
	call DB_LoadXAssets
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_MakeDedicated_30:
	lea esi, [eax+0x1]
	lea edi, [ebp-0x60]
	mov ecx, [gfxCfg+0x1c]
	test ecx, ecx
	jnz R_MakeDedicated_60
R_MakeDedicated_40:
	mov ebx, esi
	mov esi, eax
	jmp R_MakeDedicated_70
R_MakeDedicated_20:
	mov al, 0x1
	mov ebx, 0x2
	jmp R_MakeDedicated_80
R_MakeDedicated_10:
	call R_RegisterDvars
	jmp R_MakeDedicated_90


;R_FatalInitError(char const*)
R_FatalInitError:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Sys_DirectXFatalError


;R_FatalLockError(long)
R_FatalLockError:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring__directx_failed_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__error_informati
	mov dword [esp], 0x8
	call Com_Printf
	leave
	jmp Sys_DirectXFatalError


;R_CheckLostDevice()
R_CheckLostDevice:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x74
	mov edx, [dx_ctx+0x8]
	test edx, edx
	jz R_CheckLostDevice_10
	cmp byte [dx_ctx+0x2c6c], 0x0
	jnz R_CheckLostDevice_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe R_CheckLostDevice_30
	mov eax, 0x1
	add esp, 0x74
	pop ebx
	pop ebp
	ret
R_CheckLostDevice_30:
	call R_SyncRenderThread
	mov byte [dx_ctx+0x2c6c], 0x1
R_CheckLostDevice_20:
	call Sys_IsMainThread
	test al, al
	jnz R_CheckLostDevice_40
R_CheckLostDevice_10:
	xor eax, eax
	add esp, 0x74
	pop ebx
	pop ebp
	ret
R_CheckLostDevice_40:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	cmp eax, 0x88760868
	jz R_CheckLostDevice_10
	mov dword [esp+0x4], _cstring_recovering_lost_
	mov dword [esp], 0x8
	call Com_Printf
	call R_Cinematic_BeginLostDevice
	call DB_BeginRecoverLostDevice
	call R_ResetModelLighting
	call R_ReleaseLostImages
	call Material_ReleaseAll
	call R_ReleaseWorld
	mov eax, [dx_ctx+0x2c78]
	mov [ebp-0x30], eax
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov edx, [dx_ctx+0x2c80]
	mov [ebp-0x14], edx
	mov eax, [dx_ctx+0x2c84]
	mov [ebp-0x10], eax
	mov [ebp-0x1c], edx
	mov [ebp-0x18], eax
	mov eax, [vidConfig+0x10]
	mov [ebp-0x2c], eax
	mov eax, [vidConfig+0x14]
	test eax, eax
	setnz byte [ebp-0x28]
	mov eax, r_aaSamples
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0xc], eax
	lea edx, [ebp-0x30]
	lea ebx, [ebp-0x68]
	mov eax, ebx
	call R_SetD3DPresentParameters
	call R_ReleaseForShutdownOrReset
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp+0x4], ebx
	mov [esp], eax
	call dword [edx+0x40]
	test eax, eax
	js R_CheckLostDevice_50
R_CheckLostDevice_80:
	mov byte [dx_ctx+0x2c6c], 0x0
	call R_CreateForInitOrReset
	test al, al
	jz R_CheckLostDevice_60
R_CheckLostDevice_70:
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov eax, gfxCmdBufState
	mov [esp], eax
	call R_InitCmdBufState
	call RB_InitSceneViewport
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	call R_ReloadWorld
	call Material_ReloadAll
	call R_ReloadLostImages
	call RB_CalcSunSpriteSamples
	mov [dx_ctx+0x2c64], eax
	call DB_EndRecoverLostDevice
	call R_Cinematic_EndLostDevice
	mov dword [esp+0x4], _cstring_finished_recover
	mov dword [esp], 0x8
	call Com_Printf
	xor eax, eax
	add esp, 0x74
	pop ebx
	pop ebp
	ret
R_CheckLostDevice_60:
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x8], _cstring_couldnt_reinitia
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	call Sys_DirectXFatalError
	jmp R_CheckLostDevice_70
R_CheckLostDevice_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_couldnt_reset_a_
	call va
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	call Sys_DirectXFatalError
	jmp R_CheckLostDevice_80
	add [eax], al


;R_ComErrorCleanup()
R_ComErrorCleanup:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_AbortRenderCommands
	call R_SyncRenderThread
	cmp byte [dx_ctx+0x2c6d], 0x0
	jnz R_ComErrorCleanup_10
	leave
	ret
R_ComErrorCleanup_10:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
	mov byte [dx_ctx+0x2c6d], 0x0
	leave
	ret


;R_EndRegistration()
R_EndRegistration:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Material_FinishLoading
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_EndRegistration_10
	leave
	ret
R_EndRegistration_10:
	call R_SyncRenderThread
	leave
	jmp RB_TouchAllImages
	nop


;R_ShutdownStreams()
R_ShutdownStreams:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [dx_ctx+0x8]
	test eax, eax
	jz R_ShutdownStreams_10
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz R_ShutdownStreams_20
R_ShutdownStreams_10:
	leave
	ret
R_ShutdownStreams_20:
	mov eax, gfxCmdBufState
	add eax, 0x90
	mov [esp], eax
	call R_ClearAllStreamSources
	leave
	ret


;R_TrackStatistics(trStatistics_t*)
R_TrackStatistics:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [rg+0x21d8], eax
	pop ebp
	ret
	nop


;R_ErrorDescription(long)
R_ErrorDescription:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;R_SetColorMappings()
R_SetColorMappings:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x234
	cmp byte [vidConfig+0x2c], 0x0
	jz R_SetColorMappings_10
	mov eax, r_gamma
	mov eax, [eax]
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	divss xmm0, dword [eax+0xc]
	xor ebx, ebx
	cvtss2sd xmm2, xmm0
	movsd [ebp-0x210], xmm2
	ucomiss xmm0, xmm1
	jp R_SetColorMappings_20
	jnz R_SetColorMappings_20
R_SetColorMappings_30:
	mov eax, ebx
	shl eax, 0x8
	add eax, ebx
	mov [ebp+ebx*2-0x208], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz R_SetColorMappings_30
R_SetColorMappings_40:
	lea eax, [ebp-0x208]
	mov [esp], eax
	call RB_SetGammaRamp
R_SetColorMappings_10:
	add esp, 0x234
	pop ebx
	pop ebp
	ret
R_SetColorMappings_20:
	cvtsi2ss xmm0, ebx
	divss xmm0, dword [_float_255_00000000]
	movsd xmm1, qword [ebp-0x210]
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0x218]
	cvtsd2ss xmm0, [ebp-0x218]
	mulss xmm0, [_float_65535_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x21c]
	cvttss2si eax, [ebp-0x21c]
	mov [ebp+ebx*2-0x208], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz R_SetColorMappings_20
	jmp R_SetColorMappings_40


;R_UpdateTeamColors(int, float const*, float const*)
R_UpdateTeamColors:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [rg+0x21d4], eax
	movss xmm0, dword [ebx]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_10
	mov edx, 0xffffffff
R_UpdateTeamColors_90:
	mov [rg+0x21d0], dl
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10]
	cvttss2si eax, [ebp-0x10]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_20
	mov edx, 0xffffffff
R_UpdateTeamColors_150:
	mov [rg+0x21d1], dl
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x14]
	cvttss2si eax, [ebp-0x14]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_30
	mov edx, 0xffffffff
R_UpdateTeamColors_140:
	mov [rg+0x21d2], dl
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x18]
	cvttss2si eax, [ebp-0x18]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_40
	mov edx, 0xffffffff
R_UpdateTeamColors_130:
	mov [rg+0x21d3], dl
	movss xmm0, dword [esi]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_50
	mov edx, 0xffffffff
R_UpdateTeamColors_120:
	mov [rg+0x21cc], dl
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_60
	mov edx, 0xffffffff
R_UpdateTeamColors_110:
	mov [rg+0x21cd], dl
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_70
	mov edx, 0xffffffff
R_UpdateTeamColors_100:
	mov [rg+0x21ce], dl
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [esi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	cmp eax, 0xfe
	jle R_UpdateTeamColors_80
	mov edx, 0xffffffff
	mov [rg+0x21cf], dl
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_UpdateTeamColors_10:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_90
R_UpdateTeamColors_80:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	mov [rg+0x21cf], dl
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_UpdateTeamColors_70:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_100
R_UpdateTeamColors_60:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_110
R_UpdateTeamColors_50:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_120
R_UpdateTeamColors_40:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_130
R_UpdateTeamColors_30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_140
R_UpdateTeamColors_20:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_UpdateTeamColors_150


;R_BeginRegistration(vidConfig_t*)
R_BeginRegistration:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc9c
	mov dword [esp+0x4], _cstring__r_init_
	mov dword [esp], 0x8
	call Com_Printf
	call Swap_Init
	call R_RegisterDvars
	call R_RegisterCmds
	mov dword [esp+0x8], 0x2300
	mov dword [esp+0x4], 0x0
	mov dword [esp], rg
	call memset
	mov dword [esp+0x8], 0x2180
	mov dword [esp+0x4], 0x0
	mov dword [esp], rgp
	call memset
	call RB_InitBackendGlobalStructs
	xor eax, eax
	mov [rg+0x2244], eax
	mov [rg+0x2248], eax
	mov [rg+0x224c], eax
	mov edx, 0x3f800000
	mov [rg+0x2250], edx
	mov [rg+0x2254], eax
	mov [rg+0x2258], eax
	mov [rg+0x225c], eax
	mov [rg+0x2260], edx
	mov dword [esp], rg
	call MatrixIdentity44
	mov dword [esp], rg+0x40
	call MatrixIdentity44
	mov dword [esp], rg+0x80
	call MatrixIdentity44
	mov dword [esp], rg+0xc0
	call MatrixIdentity44
	call R_InitDrawMethod
	mov esi, [dx_ctx+0x8]
	test esi, esi
	jz R_BeginRegistration_10
	call R_InitSystems
R_BeginRegistration_550:
	call RB_RegisterBackendAssets
	call R_InitWater
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz R_BeginRegistration_20
R_BeginRegistration_30:
	mov eax, [vidConfig]
	mov edi, [ebp+0x8]
	mov [edi], eax
	mov eax, [vidConfig+0x4]
	mov [edi+0x4], eax
	mov eax, [vidConfig+0x8]
	mov [edi+0x8], eax
	mov eax, [vidConfig+0xc]
	mov [edi+0xc], eax
	mov eax, [vidConfig+0x10]
	mov [edi+0x10], eax
	mov eax, [vidConfig+0x14]
	mov [edi+0x14], eax
	mov eax, [vidConfig+0x18]
	mov [edi+0x18], eax
	mov eax, [vidConfig+0x1c]
	mov [edi+0x1c], eax
	mov eax, [vidConfig+0x20]
	mov [edi+0x20], eax
	mov eax, [vidConfig+0x24]
	mov [edi+0x24], eax
	mov eax, [vidConfig+0x28]
	mov [edi+0x28], eax
	mov eax, [vidConfig+0x2c]
	mov [edi+0x2c], eax
	add esp, 0xc9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_BeginRegistration_20:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe R_BeginRegistration_30
	call RB_CalcSunSpriteSamples
	mov [dx_ctx+0x2c64], eax
	test eax, eax
	jnz R_BeginRegistration_30
	mov dword [esp+0x4], _cstring_sun_sprite_occlu
	mov dword [esp], 0x8
	call Com_Printf
	call RB_FreeSunSpriteQueries
	jmp R_BeginRegistration_30
R_BeginRegistration_10:
	mov ebx, [dx_ctx+0x4]
	test ebx, ebx
	jz R_BeginRegistration_40
R_BeginRegistration_890:
	mov dword [dx_ctx+0xc], 0x0
	xor ebx, ebx
	jmp R_BeginRegistration_50
R_BeginRegistration_70:
	mov dword [esp], 0x64
	call WinSleep
	add ebx, 0x1
	cmp ebx, 0x14
	jz R_BeginRegistration_60
R_BeginRegistration_50:
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	lea ecx, [ebp-0x44c]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x38]
	test eax, eax
	js R_BeginRegistration_70
R_BeginRegistration_800:
	mov eax, [ebp-0x380]
	movzx edx, al
	mov [esp+0xc], edx
	movzx eax, ah
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pixel_shader_ver
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [ebp-0x388]
	movzx edx, al
	mov [esp+0xc], edx
	movzx eax, ah
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vertex_shader_ve
	mov dword [esp], 0x8
	call Com_Printf
	lea ebx, [ebp-0x44c]
	mov [esp], ebx
	call R_CheckDxCaps
	mov esi, eax
	mov edi, 0x2
	xor ebx, ebx
R_BeginRegistration_90:
	mov eax, esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz R_BeginRegistration_80
	mov edi, ebx
	mov eax, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_code_path_is_a
	mov dword [esp], 0x8
	call Com_Printf
R_BeginRegistration_80:
	add ebx, 0x1
	cmp ebx, 0x2
	jnz R_BeginRegistration_90
	cmp edi, 0x2
	jz R_BeginRegistration_100
R_BeginRegistration_880:
	mov eax, r_rendererPreference
	mov eax, [eax]
	mov ecx, [eax+0xc]
	cmp ecx, 0x2
	jz R_BeginRegistration_110
	sar esi, cl
	and esi, 0x1
	jnz R_BeginRegistration_120
	mov eax, _cstring_shader_model_20
	mov edx, _cstring_shader_model_30
	sub ecx, 0x1
	mov ecx, edx
	cmovnz ecx, eax
	cmp edi, 0x1
	cmovnz edx, eax
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_using_s_code_pat
	mov dword [esp], 0x8
	call Com_Printf
R_BeginRegistration_410:
	mov [esp+0x4], edi
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [ebp-0x3f0]
	mov edx, [ebp-0x3f4]
	cmp eax, edx
	cmovge eax, edx
	mov [vidConfig+0x24], eax
	mov eax, [ebp-0x3b4]
	mov [vidConfig+0x28], eax
	mov eax, [ebp-0x440]
	shr eax, 0x11
	and eax, 0x1
	mov [vidConfig+0x2c], al
	mov eax, [ebp-0x3a8]
	cmp eax, 0x6
	mov edx, 0x6
	cmovge eax, edx
	mov [gfxMetrics+0x10], eax
	mov eax, [ebp-0x40c]
	shr eax, 0xa
	mov edx, eax
	and edx, 0x1
	mov [gfxMetrics+0x8], dl
	shr eax, 0x10
	and eax, 0x1
	mov [gfxMetrics+0x9], al
	mov eax, [ebp-0x3e0]
	mov [gfxMetrics+0xc], eax
	mov eax, [ebp-0x428]
	shr eax, 0x19
	and eax, 0x1
	mov [gfxMetrics+0x25], al
	movzx eax, word [ebp-0x40e]
	and eax, 0x1
	mov [gfxMetrics+0x26], al
	mov eax, r_aaSamples
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz R_BeginRegistration_130
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov dword [esp+0x18], 0x41415353
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x28]
	test eax, eax
	jnz R_BeginRegistration_130
	mov eax, 0x1
R_BeginRegistration_570:
	mov [gfxMetrics+0x27], al
	mov ebx, [formats.160670+0x10]
	mov esi, [formats.160670+0x14]
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov [esp+0x14], ebx
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x30]
	test eax, eax
	jz R_BeginRegistration_140
R_BeginRegistration_830:
	mov dword [gfxMetrics+0x18], 0x72
	mov dword [gfxMetrics+0x1c], 0x4d
	mov dword [gfxMetrics+0x20], 0x3
	mov byte [gfxMetrics+0x14], 0x0
	mov byte [gfxMetrics+0x24], 0x61
R_BeginRegistration_840:
	mov ebx, [dx_ctx+0xc]
	mov [ebp-0xc7c], ebx
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov dword [esp+0x8], 0x16
	mov [esp+0x4], ebx
	mov [esp], eax
	call dword [edx+0x18]
	mov edi, eax
	mov dword [dx_ctx+0x28], 0x0
	test eax, eax
	jz R_BeginRegistration_150
	xor esi, esi
	xor ebx, ebx
R_BeginRegistration_180:
	mov edx, [dx_ctx+0x4]
	mov ecx, [edx]
	shl ebx, 0x4
	lea eax, [ebx+dx_ctx+0x2c]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x16
	mov eax, [ebp-0xc7c]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x1c]
	test eax, eax
	js R_BeginRegistration_160
	mov eax, [dx_ctx+0x28]
	mov edx, eax
	shl edx, 0x4
	mov ecx, [edx+dx_ctx+0x34]
	test ecx, ecx
	jnz R_BeginRegistration_170
	mov eax, dx_ctx+0x20
	mov dword [edx+eax+0x14], 0x3c
	mov eax, [dx_ctx+0x28]
R_BeginRegistration_170:
	add eax, 0x1
	mov [dx_ctx+0x28], eax
R_BeginRegistration_160:
	add esi, 0x1
	cmp edi, esi
	jz R_BeginRegistration_150
	mov eax, [dx_ctx+0x28]
	mov ebx, eax
	cmp eax, 0xff
	jbe R_BeginRegistration_180
R_BeginRegistration_600:
	mov dword [esp+0xc], R_CompareDisplayModes
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], dx_ctx+0x2c
	call qsort
	mov ebx, [dx_ctx+0x28]
	test ebx, ebx
	jnz R_BeginRegistration_190
	mov dword [ebp-0xc74], 0x0
	mov dword [ebp-0xc60], 0x0
R_BeginRegistration_700:
	mov dword [esp+0x8], 0x1e0
	mov dword [esp+0x4], 0x280
	mov dword [esp], _cstring_no_valid_resolut
	call va
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	call Sys_DirectXFatalError
	mov esi, [ebp-0xc60]
	test esi, esi
	jg R_BeginRegistration_200
R_BeginRegistration_710:
	mov dword [ebp-0xc70], dx_ctx+0x1834
	mov dword [ebp-0xc78], 0x0
	mov dword [ebp-0xc60], 0x0
R_BeginRegistration_750:
	mov edx, [ebp-0xc60]
	mov dword [edx*4+dx_ctx+0x102c], 0x0
	mov dword [esp+0x10], _cstring_direct_x_resolut
	mov dword [esp+0xc], 0x21
	mov ecx, [ebp-0xc78]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], dx_ctx+0x102c
	mov dword [esp], _cstring_r_mode
	call Cvar_RegisterEnum
	mov edx, r_mode
	mov [edx], eax
	mov dword [esp+0xc], R_CompareRefreshRates
	mov dword [esp+0x8], 0x4
	mov ebx, [ebp-0xc74]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x44c]
	mov [esp], esi
	call qsort
	test ebx, ebx
	jg R_BeginRegistration_210
	xor edi, edi
	mov dword [ebp-0xc74], 0x0
R_BeginRegistration_860:
	mov ebx, [ebp-0xc74]
	mov dword [ebx*4+dx_ctx+0x1430], 0x0
	mov dword [esp+0x10], _cstring_refresh_rate
	mov dword [esp+0xc], 0x221
	mov [esp+0x8], edi
	mov dword [esp+0x4], dx_ctx+0x1430
	mov dword [esp], _cstring_r_displayrefresh
	call Cvar_RegisterEnum
	mov edx, r_displayRefresh
	mov [edx], eax
R_BeginRegistration_540:
	mov dword [esp], _cstring_r_fullscreen
	call Cvar_VariableBooleanValue
	mov [ebp-0x44], al
	test al, al
	jnz R_BeginRegistration_220
R_BeginRegistration_400:
	lea esi, [ebp-0x2c]
	mov [esp+0xc], esi
	lea edi, [ebp-0x30]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_ixi
	mov eax, r_customMode
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call sscanf
	cmp eax, 0x2
	jz R_BeginRegistration_230
R_BeginRegistration_220:
	mov eax, r_mode
	mov eax, [eax]
	mov [esp], eax
	call Cvar_EnumToString
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ixi
	mov [esp], eax
	call sscanf
R_BeginRegistration_870:
	mov eax, [ebp-0x30]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x34], eax
	cmp byte [ebp-0x44], 0x0
	jnz R_BeginRegistration_240
	mov dword [ebp-0x48], 0x3c
R_BeginRegistration_490:
	mov dword [esp], _cstring_vid_xpos
	call Cvar_VariableIntegerValue
	mov [ebp-0x40], eax
	mov dword [esp], _cstring_vid_ypos
	call Cvar_VariableIntegerValue
	mov [ebp-0x3c], eax
	mov dword [ebp-0x4c], 0x0
	mov eax, r_aaSamples
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x28], eax
	call _ZN10MacDisplay13GetMainWindowEv
	mov [ebp-0x4c], eax
	mov dword [esp+0x4], _cstring_game_window_succ
	mov dword [esp], 0x8
	call Com_Printf
	mov ebx, [ebp-0x4c]
	mov dword [esp], 0x15
	call R_GetDepthStencilFormat
	mov [dx_ctx+0x24], eax
	lea edx, [ebp-0x4c]
	lea eax, [ebp-0x44c]
	call R_SetD3DPresentParameters
	lea ecx, [ebp-0x44c]
	mov edx, 0x46
	mov eax, ebx
	call R_CreateDeviceInternal
	test eax, eax
	js R_BeginRegistration_250
	mov byte [dx_ctx+0x2c6c], 0x0
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_BeginRegistration_260
	mov eax, [gfxCfg+0x18]
	mov [ebp-0x44c], eax
	mov dword [ebp-0x448], 0x2
	mov dword [ebp-0x444], 0x0
	mov eax, [gfxCfg+0x24]
	test eax, eax
	jz R_BeginRegistration_270
	mov [ebp-0x440], eax
	mov dword [ebp-0x43c], 0x0
	mov dword [ebp-0x438], 0x0
	mov ecx, 0x2
	mov ebx, 0x3
R_BeginRegistration_820:
	mov edx, [gfxCfg+0x2c]
	test edx, edx
	jz R_BeginRegistration_280
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x10
	mov dword [eax-0x42c], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x44c]
	mov [esp], ebx
	call DB_LoadXAssets
	call DB_SyncXAssets
	xor ecx, ecx
	mov ebx, 0x1
R_BeginRegistration_280:
	mov edx, [gfxCfg+0x1c]
	test edx, edx
	jz R_BeginRegistration_290
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x8
	mov dword [eax-0x42c], 0x0
	mov ecx, ebx
	add ebx, 0x1
R_BeginRegistration_290:
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov edx, [gfxCfg+0x20]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x4
	mov dword [eax-0x42c], 0x0
	mov edx, [gfxCfg+0x28]
	test edx, edx
	jz R_BeginRegistration_300
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x1
	mov dword [eax-0x42c], 0x0
	lea ebx, [ecx+0x2]
R_BeginRegistration_300:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea esi, [ebp-0x44c]
	mov [esp], esi
	call DB_LoadXAssets
R_BeginRegistration_260:
	mov eax, r_multiGpu
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_BeginRegistration_310
	xor eax, eax
R_BeginRegistration_420:
	mov [dx_ctx+0x2c58], eax
	mov eax, [ebp-0x38]
	mov [vidConfig], eax
	mov eax, [ebp-0x34]
	mov [vidConfig+0x4], eax
	mov eax, [ebp-0x30]
	mov [vidConfig+0x8], eax
	mov eax, [ebp-0x2c]
	mov [vidConfig+0xc], eax
	mov eax, [ebp-0x48]
	mov [vidConfig+0x10], eax
	movzx eax, byte [ebp-0x44]
	mov [vidConfig+0x14], eax
	mov eax, r_aspectRatio
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jz R_BeginRegistration_320
	jle R_BeginRegistration_330
	cmp eax, 0x2
	jz R_BeginRegistration_340
	cmp eax, 0x3
	jz R_BeginRegistration_350
R_BeginRegistration_500:
	movss xmm0, dword [vidConfig+0x18]
	ucomiss xmm0, [_float_1_33333337]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, com_wideScreen
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetBool
	mov edx, [vidConfig+0x4]
	test edx, edx
	js R_BeginRegistration_360
	cvtsi2ss xmm0, edx
R_BeginRegistration_590:
	movaps xmm1, xmm0
	mulss xmm1, [vidConfig+0x18]
	mov edx, [vidConfig]
	test edx, edx
	js R_BeginRegistration_370
	cvtsi2ss xmm0, edx
R_BeginRegistration_580:
	divss xmm1, xmm0
	movss [vidConfig+0x1c], xmm1
	mov dword [vidConfig+0x20], 0x3f800000
	call RB_InitSceneViewport
	call RB_InitCodeConstants
	call R_CreateForInitOrReset
	test al, al
	jnz R_BeginRegistration_380
R_BeginRegistration_810:
	mov eax, r_aaSamples
	mov edx, [eax]
	mov eax, [edx+0xc]
	cmp eax, 0x1
	jle R_BeginRegistration_390
R_BeginRegistration_520:
	sub eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetInt
	mov dword [esp], _cstring_r_fullscreen
	call Cvar_VariableBooleanValue
	mov [ebp-0x44], al
	test al, al
	jnz R_BeginRegistration_220
	jmp R_BeginRegistration_400
R_BeginRegistration_120:
	mov edi, ecx
	mov [esp], eax
	call Cvar_EnumToString
	mov ecx, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz ecx, edx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_using_s_code_pat1
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_BeginRegistration_410
R_BeginRegistration_310:
	mov eax, r_gpuSync
	mov eax, [eax]
	mov eax, [eax+0xc]
	jmp R_BeginRegistration_420
R_BeginRegistration_240:
	mov eax, r_displayRefresh
	mov eax, [eax]
	mov [esp], eax
	call Cvar_EnumToString
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_i_hz
	mov [esp], eax
	call sscanf
	mov ebx, [ebp-0x1c]
	mov [ebp-0xc6c], ebx
	mov esi, [ebp-0x2c]
	mov [ebp-0xc68], esi
	mov esi, [ebp-0x30]
	mov ebx, [dx_ctx+0x28]
	sub ebx, 0x1
	js R_BeginRegistration_430
	xor edi, edi
R_BeginRegistration_470:
	lea edx, [edi+ebx]
	mov eax, edx
	shr eax, 0x1f
	lea ecx, [eax+edx]
	sar ecx, 1
	mov edx, ecx
	shl edx, 0x4
	mov eax, [edx+dx_ctx+0x2c]
	sub eax, esi
	jnz R_BeginRegistration_440
	mov eax, [edx+dx_ctx+0x30]
	sub eax, [ebp-0xc68]
	jnz R_BeginRegistration_440
	mov eax, [edx+dx_ctx+0x34]
	sub eax, [ebp-0xc6c]
	jz R_BeginRegistration_450
R_BeginRegistration_440:
	test eax, eax
	js R_BeginRegistration_460
	lea ebx, [ecx-0x1]
	cmp ebx, edi
	jge R_BeginRegistration_470
R_BeginRegistration_560:
	mov eax, ebx
	shl eax, 0x4
	cmp esi, [eax+dx_ctx+0x2c]
	jz R_BeginRegistration_480
R_BeginRegistration_610:
	shl edi, 0x4
	mov edi, [edi+dx_ctx+0x34]
	mov [ebp-0xc6c], edi
	mov ecx, edi
	mov [ebp-0x48], ecx
	jmp R_BeginRegistration_490
R_BeginRegistration_330:
	test eax, eax
	jnz R_BeginRegistration_500
	cvtsi2ss xmm0, dword [vidConfig+0xc]
	mulss xmm0, [_float_16_00000000]
	cvtsi2ss xmm1, dword [vidConfig+0x8]
	divss xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc80]
	cvttss2si eax, [ebp-0xc80]
	cmp eax, 0xa
	jz R_BeginRegistration_340
	cmp eax, 0x9
	jle R_BeginRegistration_350
R_BeginRegistration_320:
	mov dword [vidConfig+0x18], 0x3faaaaab
	jmp R_BeginRegistration_500
R_BeginRegistration_390:
	mov eax, r_displayRefresh
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jle R_BeginRegistration_510
	cmp dword [vidConfig+0x10], 0x3c
	ja R_BeginRegistration_520
R_BeginRegistration_510:
	mov eax, r_mode
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jle R_BeginRegistration_530
	cmp dword [vidConfig+0x8], 0x280
	ja R_BeginRegistration_520
	cmp dword [vidConfig+0xc], 0x1e0
	ja R_BeginRegistration_520
R_BeginRegistration_530:
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x8], _cstring_couldnt_initiali
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	call Sys_DirectXFatalError
	jmp R_BeginRegistration_540
R_BeginRegistration_380:
	call R_Cinematic_Init
	mov dword [esp+0x4], _cstring_setting_initial_
	mov dword [esp], 0x8
	call Com_Printf
	call RB_SetInitialState
	mov eax, r_gamma
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetModified
	call R_InitScene
	call R_InitSystems
	call RB_PixelCost_Init
	mov eax, [dx_ctx+0x2c74]
	mov ecx, dx_ctx+0x2c70
	shl eax, 0x4
	mov edx, [ebp-0x4c]
	mov [eax+ecx+0x8], edx
	mov eax, [dx_ctx+0x2c74]
	shl eax, 0x4
	mov edx, [ebp-0x30]
	mov [eax+ecx+0x10], edx
	mov eax, [dx_ctx+0x2c74]
	shl eax, 0x4
	mov edx, [ebp-0x2c]
	mov [eax+ecx+0x14], edx
	add dword [dx_ctx+0x2c74], 0x1
	mov dword [dx_ctx+0x2c70], 0x0
	call Sys_HideSplashWindow
	jmp R_BeginRegistration_550
R_BeginRegistration_460:
	lea edi, [ecx+0x1]
	cmp ebx, edi
	jge R_BeginRegistration_470
	jmp R_BeginRegistration_560
R_BeginRegistration_130:
	xor eax, eax
	jmp R_BeginRegistration_570
R_BeginRegistration_370:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_BeginRegistration_580
R_BeginRegistration_360:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_BeginRegistration_590
R_BeginRegistration_150:
	mov eax, [dx_ctx+0x28]
	jmp R_BeginRegistration_600
R_BeginRegistration_340:
	mov dword [vidConfig+0x18], 0x3fcccccd
	jmp R_BeginRegistration_500
R_BeginRegistration_430:
	xor edi, edi
	mov eax, ebx
	shl eax, 0x4
	cmp esi, [eax+dx_ctx+0x2c]
	jnz R_BeginRegistration_610
R_BeginRegistration_480:
	mov edx, [ebp-0xc68]
	cmp edx, [eax+dx_ctx+0x30]
	jnz R_BeginRegistration_610
	mov eax, [eax+dx_ctx+0x34]
	mov [ebp-0xc6c], eax
	mov ecx, eax
	mov [ebp-0x48], ecx
	jmp R_BeginRegistration_490
R_BeginRegistration_350:
	mov dword [vidConfig+0x18], 0x3fe38e39
	jmp R_BeginRegistration_500
R_BeginRegistration_190:
	mov dword [ebp-0xc5c], 0x0
	mov dword [ebp-0xc60], 0x0
	mov dword [ebp-0xc74], 0x0
	mov dword [ebp-0xc64], dx_ctx
	lea edx, [ebp-0xc4c]
	mov [ebp-0xc88], edx
R_BeginRegistration_690:
	mov ecx, [ebp-0xc64]
	mov edx, [ecx+0x30]
	mov eax, [ecx+0x2c]
	mov ecx, [ebp-0xc60]
	test ecx, ecx
	jle R_BeginRegistration_620
	mov ecx, [ebp-0xc88]
	sub ecx, 0x8
	mov ebx, [ebp-0xc88]
	cmp eax, [ebx-0x8]
	jz R_BeginRegistration_630
R_BeginRegistration_620:
	cmp eax, 0x27f
	jle R_BeginRegistration_640
	cmp edx, 0x1df
	jle R_BeginRegistration_640
	mov esi, [ebp-0xc88]
	mov [esi], eax
	mov [esi+0x4], edx
	add dword [ebp-0xc60], 0x1
	add esi, 0x8
	mov [ebp-0xc88], esi
R_BeginRegistration_640:
	mov edi, [ebp-0xc64]
	mov edx, [edi+0x34]
	mov eax, [ebp-0xc74]
	test eax, eax
	jle R_BeginRegistration_650
	cmp [ebp-0x44c], edx
	jz R_BeginRegistration_660
	xor eax, eax
R_BeginRegistration_680:
	add eax, 0x1
	cmp [ebp-0xc74], eax
	jz R_BeginRegistration_670
	cmp [ebp+eax*4-0x44c], edx
	jnz R_BeginRegistration_680
R_BeginRegistration_660:
	add dword [ebp-0xc5c], 0x1
	add dword [ebp-0xc64], 0x10
	mov eax, [ebp-0xc5c]
	cmp [dx_ctx+0x28], eax
	ja R_BeginRegistration_690
	mov edi, [ebp-0xc60]
	test edi, edi
	jz R_BeginRegistration_700
	mov esi, [ebp-0xc60]
	test esi, esi
	jle R_BeginRegistration_710
R_BeginRegistration_200:
	mov dword [ebp-0xc70], dx_ctx+0x1834
	mov dword [ebp-0xc78], 0x0
	xor esi, esi
	mov edi, dx_ctx
	xor ebx, ebx
R_BeginRegistration_740:
	mov edx, [ebp-0xc70]
	mov [edi+0x102c], edx
	mov eax, [ebx+ebp-0xc48]
	mov [esp+0xc], eax
	mov eax, [ebx+ebp-0xc4c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ixi
	mov [esp], edx
	call sprintf
	mov ecx, [ebp-0xc70]
	lea eax, [ecx+eax+0x1]
	mov [ebp-0xc70], eax
	mov eax, [ebp-0xc78]
	cmp dword [ebp+eax*8-0xc4c], 0x27f
	jle R_BeginRegistration_720
	cmp dword [ebp+eax*8-0xc48], 0x1df
	jg R_BeginRegistration_730
R_BeginRegistration_720:
	mov [ebp-0xc78], esi
R_BeginRegistration_730:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x4
	cmp [ebp-0xc60], esi
	jnz R_BeginRegistration_740
	jmp R_BeginRegistration_750
R_BeginRegistration_650:
	mov eax, [ebp-0xc74]
R_BeginRegistration_780:
	shl eax, 0x2
R_BeginRegistration_760:
	mov [ebp+eax-0x44c], edx
	add dword [ebp-0xc74], 0x1
	jmp R_BeginRegistration_660
R_BeginRegistration_630:
	cmp edx, [ecx+0x4]
	jnz R_BeginRegistration_620
	jmp R_BeginRegistration_640
R_BeginRegistration_670:
	mov eax, [ebp-0xc74]
	shl eax, 0x2
	mov ecx, [ebp+eax-0x450]
	cmp ecx, edx
	jle R_BeginRegistration_760
	mov esi, [ebp-0xc74]
	lea ebx, [esi*4-0x4]
	mov edi, esi
	sub edi, 0x1
	mov [ebp-0xc84], edi
	jmp R_BeginRegistration_770
R_BeginRegistration_790:
	mov eax, ebx
	mov ebx, edi
R_BeginRegistration_770:
	mov [ebp+eax-0x44c], ecx
	sub esi, 0x1
	mov eax, [ebp-0xc74]
	sub eax, [ebp-0xc84]
	sub eax, 0x1
	cmp eax, esi
	jz R_BeginRegistration_780
	mov ecx, [ebp+ebx-0x450]
	lea edi, [ebx-0x4]
	cmp ecx, edx
	jg R_BeginRegistration_790
	mov eax, ebx
	jmp R_BeginRegistration_760
R_BeginRegistration_60:
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_getdevicecaps_fa
	call va
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call Com_Printf
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	call Sys_DirectXFatalError
	jmp R_BeginRegistration_800
R_BeginRegistration_250:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_BeginRegistration_810
R_BeginRegistration_270:
	mov ecx, 0x1
	mov ebx, 0x2
	jmp R_BeginRegistration_820
R_BeginRegistration_140:
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x28]
	test eax, eax
	jnz R_BeginRegistration_830
	mov [gfxMetrics+0x18], ebx
	mov [gfxMetrics+0x1c], esi
	mov dword [gfxMetrics+0x20], 0x2
	mov byte [gfxMetrics+0x14], 0x1
	mov byte [gfxMetrics+0x24], 0x62
	jmp R_BeginRegistration_840
R_BeginRegistration_210:
	xor edi, edi
	xor ebx, ebx
	mov esi, dx_ctx
	mov eax, [ebp-0xc70]
R_BeginRegistration_850:
	mov [esi+0x1430], eax
	mov eax, [ebp+ebx*4-0x44c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_hz
	mov edx, [ebp-0xc70]
	mov [esp], edx
	call sprintf
	mov ecx, [ebp-0xc70]
	lea eax, [ecx+eax+0x1]
	mov [ebp-0xc70], eax
	cmp dword [ebp+edi*4-0x44c], 0x3b
	cmovle edi, ebx
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, [ebp-0xc74]
	jnz R_BeginRegistration_850
	jmp R_BeginRegistration_860
R_BeginRegistration_110:
	mov eax, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_using_s_code_pat2
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_BeginRegistration_410
R_BeginRegistration_230:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	mov eax, [ebp-0x24]
	test eax, eax
	jle R_BeginRegistration_870
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jle R_BeginRegistration_870
	cmp eax, [ebp-0x30]
	jl R_BeginRegistration_220
	mov eax, [ebp-0x2c]
	cmp eax, [ebp-0x20]
	jle R_BeginRegistration_870
	jmp R_BeginRegistration_220
R_BeginRegistration_100:
	mov dword [esp+0x4], _cstring_no_valid_renderi
	mov dword [esp], 0x1
	call Com_Error
	jmp R_BeginRegistration_880
R_BeginRegistration_40:
	mov dword [esp+0x4], _cstring_getting_direct3d
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp], 0x20
	call Direct3DCreate9
	mov [dx_ctx+0x4], eax
	test eax, eax
	jnz R_BeginRegistration_890
	mov dword [esp+0x4], _cstring_direct3d_9_faile
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_BeginRegistration_540
R_BeginRegistration_450:
	mov ecx, [ebp-0xc6c]
	mov [ebp-0x48], ecx
	jmp R_BeginRegistration_490


;R_ConfigureRenderer(GfxConfiguration const*)
R_ConfigureRenderer:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [gfxCfg], eax
	mov eax, [edx+0x4]
	mov [gfxCfg+0x4], eax
	mov eax, [edx+0x8]
	mov [gfxCfg+0x8], eax
	mov eax, [edx+0xc]
	mov [gfxCfg+0xc], eax
	mov eax, [edx+0x10]
	mov [gfxCfg+0x10], eax
	mov eax, [edx+0x14]
	mov [gfxCfg+0x14], eax
	mov eax, [edx+0x18]
	mov [gfxCfg+0x18], eax
	mov eax, [edx+0x1c]
	mov [gfxCfg+0x1c], eax
	mov eax, [edx+0x20]
	mov [gfxCfg+0x20], eax
	mov eax, [edx+0x24]
	mov [gfxCfg+0x24], eax
	mov eax, [edx+0x28]
	mov [gfxCfg+0x28], eax
	mov eax, [edx+0x2c]
	mov [gfxCfg+0x2c], eax
	pop ebp
	jmp R_InitRenderCommands
	nop


;R_UpdateGpuSyncType()
R_UpdateGpuSyncType:
	push ebp
	mov ebp, esp
	mov eax, r_multiGpu
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_UpdateGpuSyncType_10
	mov eax, r_gpuSync
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [dx_ctx+0x2c58], eax
	pop ebp
	ret
R_UpdateGpuSyncType_10:
	xor eax, eax
	mov [dx_ctx+0x2c58], eax
	pop ebp
	ret


;R_IsUsingAdaptiveGpuSync()
R_IsUsingAdaptiveGpuSync:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [dx_ctx+0x2c58], 0x1
	setz al
	pop ebp
	ret
	nop


;R_SyncGpu(int (*)(unsigned long long))
R_SyncGpu:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov ecx, [dx_ctx+0x2c58]
	test ecx, ecx
	jnz R_SyncGpu_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_SyncGpu_10:
	test ebx, ebx
	setnz al
	movzx esi, al
	rdtsc
	mov [dx_ctx+0x2c94], eax
	mov dword [dx_ctx+0x2c98], 0x0
	call R_AcquireGpuFenceLock
R_SyncGpu_60:
	call RB_IsGpuFenceFinished
	test al, al
	jnz R_SyncGpu_20
R_SyncGpu_50:
	rdtsc
	xor edx, edx
	mov [dx_ctx+0x2c9c], eax
	mov [dx_ctx+0x2ca0], edx
	sub eax, [dx_ctx+0x2c94]
	sbb edx, [dx_ctx+0x2c98]
	cmp edx, [dx_ctx+0x2c90]
	jb R_SyncGpu_30
	ja R_SyncGpu_20
	cmp eax, [dx_ctx+0x2c8c]
	jae R_SyncGpu_20
R_SyncGpu_30:
	test esi, esi
	jz R_SyncGpu_40
	call R_ReleaseGpuFenceLock
	mov eax, [dx_ctx+0x2c9c]
	mov edx, [dx_ctx+0x2ca0]
	mov [esp], eax
	mov [esp+0x4], edx
	call ebx
	mov esi, eax
	call R_AcquireGpuFenceLock
	call RB_IsGpuFenceFinished
	test al, al
	jz R_SyncGpu_50
R_SyncGpu_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp R_ReleaseGpuFenceLock
R_SyncGpu_40:
	mov dword [esp], 0x1
	call WinSleep
	jmp R_SyncGpu_60


;Initialized global or static variables of r_init:
SECTION .data
g_allocateMinimalResources: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_init:
SECTION .rdata
formats.160670: dd 0x4b, 0x17, 0x4b, 0x16, 0x4b, 0x14, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_init:
SECTION .bss
dx_ctx: resb 0x2ce0
rgp: resb 0x2180
rg: resb 0x2340
gfxCfg: resb 0x30
gfxMetrics: resb 0x28
g_disableRendering: resb 0x18
gfxAssets: resb 0x10
r_glob: resb 0x1c
vidConfig: resb 0x40


;All cstrings:
SECTION .rdata
_cstring_using_ix_antiali:		db "Using %ix anti-aliasing",0ah,0
_cstring_initializing_ren:		db "Initializing render targets...",0ah,0
_cstring_initializing_dyn:		db "Initializing dynamic buffers...",0ah,0
_cstring_creating_direct3:		db "Creating Direct3D queries...",0ah,0
_cstring_event_query_crea:		db "Event query creation failed: %s (0x%08x)",0ah,0
_cstring_initializing_par:		db "Initializing particle cloud buffer...",0ah,0
_cstring_initializing_sta:		db "Initializing static model cache...",0ah,0
_cstring_occlusion_query_:		db "Occlusion query creation failed: %s (0x%08x)",0ah,0
_cstring_creating_direct31:		db "Creating Direct3D device...",0ah,0
_cstring_cannot_unload_bs:		db "Cannot unload bsp while it is in use",0
_cstring__directx_returne:		db "********** DirectX returned an unrecoverable error code during initialization  **********",0ah,0
_cstring__initialization_:		db "********** Initialization also happens while playing if DirectX loses a device **********",0ah,0
_cstring__consult_the_rea:		db "********** Consult the readme for how to continue from this problem            **********",0ah,0
_cstring_s:		db 0ah,"%s",0ah,0
_cstring__directx_failed_:		db "********** DirectX failed a call to lock a vertex buffer or an index buffer **********",0ah,0
_cstring__error_informati:		db "********** error information:  %s",0ah,0
_cstring_recovering_lost_:		db "Recovering lost device...",0ah,0
_cstring_finished_recover:		db "Finished recovering lost device.",0ah,0
_cstring_couldnt_reinitia:		db "Couldn",27h,"t reinitialize after a lost Direct3D device",0
_cstring_couldnt_reset_a_:		db "Couldn",27h,"t reset a lost Direct3D device - IDirect3DDevice9::Reset returned 0x%08x (%s)",0
_cstring__r_init_:		db "----- R_Init -----",0ah,0
_cstring_sun_sprite_occlu:		db "Sun sprite occlusion query calibration failed; reverting to low-quality sun visibility test",0
_cstring_pixel_shader_ver:		db "Pixel shader version is %i.%i",0ah,0
_cstring_vertex_shader_ve:		db "Vertex shader version is %i.%i",0ah,0
_cstring_shader_model_30:		db "Shader model 3.0",0
_cstring_shader_model_20:		db "Shader model 2.0",0
_cstring_s_code_path_is_a:		db "%s code path is available.",0ah,0
_cstring_using_s_code_pat:		db "Using %s code path because the requested %s code path is unavailable.",0ah,0
_cstring_no_valid_resolut:		db "No valid resolutions of %i x %i or above found",0
_cstring_direct_x_resolut:		db "Direct X resolution mode",0
_cstring_r_mode:		db "r_mode",0
_cstring_refresh_rate:		db "Refresh rate",0
_cstring_r_displayrefresh:		db "r_displayRefresh",0
_cstring_r_fullscreen:		db "r_fullscreen",0
_cstring_ixi:		db "%ix%i",0
_cstring_vid_xpos:		db "vid_xpos",0
_cstring_vid_ypos:		db "vid_ypos",0
_cstring_game_window_succ:		db "Game window successfully created.",0ah,0
_cstring_using_s_code_pat1:		db "Using %s code path because r_rendererPreference is set to %s.",0ah,0
_cstring_i_hz:		db "%i Hz",0
_cstring_couldnt_initiali:		db "Couldn",27h,"t initialize renderer",0
_cstring_setting_initial_:		db "Setting initial state...",0ah,0
_cstring_getdevicecaps_fa:		db "GetDeviceCaps failed: %s",0
_cstring_couldnt_create_a:		db "Couldn",27h,"t create a Direct3D device: %s",0ah,0
_cstring_using_s_code_pat2:		db "Using %s code path because it is the best available path on this hardware.",0ah,0
_cstring_no_valid_renderi:		db "No valid rendering code path detected.",0ah,0
_cstring_getting_direct3d:		db "Getting Direct3D 9 interface...",0ah,0
_cstring_direct3d_9_faile:		db "Direct3D 9 failed to initialize",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_255_00000000:		dd 0x437f0000	; 255
_float_65535_00000000:		dd 0x477fff00	; 65535
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_33333337:		dd 0x3faaaaab	; 1.33333
_float_16_00000000:		dd 0x41800000	; 16

