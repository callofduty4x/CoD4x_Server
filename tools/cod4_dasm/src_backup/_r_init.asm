;Imports of r_init:
	extern r_reflectionProbeGenerate
	extern r_vsync
	extern _Z10Com_PrintfiPKcz
	extern _Z12R_InitImagesv
	extern _Z13Material_Initv
	extern _Z11R_InitFontsv
	extern _Z15R_InitLoadWaterv
	extern _Z15R_InitLightDefsv
	extern _Z11R_ClearFogsv
	extern _Z11R_InitDebugv
	extern alwaysfails
	extern _Z23R_ShutdownRenderTargetsv
	extern _Z28R_ShutdownModelLightingImagev
	extern _Z26R_ShutdownStaticModelCachev
	extern _Z23R_DestroyDynamicBuffersv
	extern _Z28R_DestroyParticleCloudBufferv
	extern _Z23RB_FreeSunSpriteQueriesv
	extern _Z23R_ShutdownRenderBuffersv
	extern _Z19R_InitRenderTargetsv
	extern _Z22R_CreateDynamicBuffersv
	extern _Z24RB_AllocSunSpriteQueriesv
	extern _Z27R_CreateParticleCloudBufferv
	extern _Z19R_InitRenderBuffersv
	extern _Z24R_InitModelLightingImagev
	extern _Z22R_InitStaticModelCachev
	extern WinSleep
	extern _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	extern _Z18R_SyncRenderThreadv
	extern _Z15R_ShutdownDebugv
	extern _Z21R_SaveLightVisHistoryv
	extern _Z19R_ShutdownLightDefsv
	extern _Z15R_ShutdownWorldv
	extern useFastFile
	extern _Z20R_ResetModelLightingv
	extern _Z20R_UnlockSkinnedCachev
	extern _Z23R_FlushStaticModelCachev
	extern _Z20R_Cinematic_Shutdownv
	extern _Z24R_ShutdownRenderCommandsv
	extern _Z16R_UnregisterCmdsv
	extern _Z18DB_ShutdownXAssetsv
	extern _Z19R_ShutdownLoadWaterv
	extern _Z15R_ShutdownFontsv
	extern _Z17Material_Shutdownv
	extern _Z16R_ShutdownImagesv
	extern gfxCmdBufState
	extern _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState
	extern _Z9Sys_ErrorPKcz
	extern r_gamma
	extern pow
	extern floorf
	extern r_loadForRenderer
	extern _Z12Dvar_SetBoolPK6dvar_sh
	extern _Z28Dvar_MakeLatchedValueCurrentPK6dvar_s
	extern _Z14DB_LoadXAssetsP9XZoneInfoji
	extern _Z14DB_SyncXAssetsv
	extern _Z15R_RegisterDvarsv
	extern _Z21Sys_DirectXFatalErrorv
	extern _Z16Sys_IsMainThreadv
	extern _Z27R_Cinematic_BeginLostDevicev
	extern _Z25DB_BeginRecoverLostDevicev
	extern _Z19R_ReleaseLostImagesv
	extern _Z19Material_ReleaseAllv
	extern _Z14R_ReleaseWorldv
	extern r_aaSamples
	extern gfxCmdBufInput
	extern gfxCmdBufSourceState
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern _Z17R_InitCmdBufStateP14GfxCmdBufState
	extern _Z20RB_InitSceneViewportv
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern gfxCmdBufContext
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z13R_ReloadWorldv
	extern _Z18Material_ReloadAllv
	extern _Z18R_ReloadLostImagesv
	extern _Z23RB_CalcSunSpriteSamplesv
	extern _Z23DB_EndRecoverLostDevicev
	extern _Z25R_Cinematic_EndLostDevicev
	extern _Z2vaPKcz
	extern _Z21R_AbortRenderCommandsv
	extern _Z22Material_FinishLoadingv
	extern _Z17RB_TouchAllImagesv
	extern _Z15RB_SetGammaRampPK12GfxGammaRamp
	extern _Z9Swap_Initv
	extern _Z14R_RegisterCmdsv
	extern memset
	extern _Z27RB_InitBackendGlobalStructsv
	extern _Z16MatrixIdentity44PA4_f
	extern _Z16R_InitDrawMethodv
	extern _Z24RB_RegisterBackendAssetsv
	extern _Z11R_InitWaterv
	extern _Z13R_CheckDxCapsPK9_D3DCAPS9
	extern r_rendererPreference
	extern r_rendererInUse
	extern _Z11Dvar_SetIntPK6dvar_si
	extern qsort
	extern _Z17Dvar_RegisterEnumPKcPS0_itS0_
	extern r_mode
	extern r_displayRefresh
	extern _Z12Dvar_GetBoolPKc
	extern r_customMode
	extern sscanf
	extern _Z17Dvar_EnumToStringPK6dvar_s
	extern _Z11Dvar_GetIntPKc
	extern _ZN10MacDisplay13GetMainWindowEv
	extern _Z23R_GetDepthStencilFormat10_D3DFORMAT
	extern r_multiGpu
	extern r_aspectRatio
	extern com_wideScreen
	extern _Z20RB_InitCodeConstantsv
	extern r_gpuSync
	extern _Z16R_Cinematic_Initv
	extern _Z18RB_SetInitialStatev
	extern _Z16Dvar_SetModifiedPK6dvar_s
	extern _Z11R_InitScenev
	extern _Z17RB_PixelCost_Initv
	extern _Z20Sys_HideSplashWindowv
	extern sprintf
	extern _Z9Com_Error11errorParm_tPKcz
	extern Direct3DCreate9
	extern _Z20R_InitRenderCommandsv
	extern _Z21R_AcquireGpuFenceLockv
	extern _Z21RB_IsGpuFenceFinishedv
	extern _Z21R_ReleaseGpuFenceLockv

;Exports of r_init:
	global _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms
	global formats.160670
	global _Z13R_InitSystemsv
	global _Z27R_ReleaseForShutdownOrResetv
	global _Z21R_CompareDisplayModesPKvS0_
	global _Z21R_CompareRefreshRatesPKvS0_
	global _Z22R_CreateForInitOrResetv
	global _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS_
	global _Z10R_InitOncev
	global _Z10R_Shutdowni
	global _Z13R_UnloadWorldv
	global _Z14R_GammaCorrectPhi
	global _Z15R_MakeDedicatedPK16GfxConfiguration
	global _Z16R_FatalInitErrorPKc
	global _Z16R_FatalLockErrorl
	global _Z17R_CheckLostDevicev
	global _Z17R_ComErrorCleanupv
	global _Z17R_EndRegistrationv
	global _Z17R_ShutdownStreamsv
	global _Z17R_TrackStatisticsP14trStatistics_t
	global _Z18R_ErrorDescriptionl
	global _Z18R_SetColorMappingsv
	global _Z18R_UpdateTeamColorsiPKfS0_
	global _Z19R_BeginRegistrationP11vidConfig_t
	global _Z19R_ConfigureRendererPK16GfxConfiguration
	global _Z19R_UpdateGpuSyncTypev
	global _Z24R_IsUsingAdaptiveGpuSyncv
	global _Z9R_SyncGpuPFiyE
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
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms:
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
	jnz _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_10
	mov eax, [edx+0x24]
	cmp eax, 0x1
	jle _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_10
	mov edi, eax
	lea eax, [eax-0x2]
	neg eax
	lea eax, [eax+edi-0x1]
	mov [ebp-0x2c], eax
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_30:
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
	jns _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_20
	sub edi, 0x1
	cmp edi, [ebp-0x2c]
	jnz _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_30
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_10:
	mov dword [dx_ctx+0x2c5c], 0x0
	mov dword [dx_ctx+0x2c60], 0x0
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_70:
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
	jz _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_40
	mov eax, 0x1
	mov [ebx+0x34], eax
	mov eax, [esi]
	mov [ebx+0x1c], eax
	mov dword [ebx+0x2c], 0x0
	cmp byte [esi+0x8], 0x0
	jz _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_50
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_60:
	mov dword [ebx+0x20], 0x0
	mov eax, [esi+0x4]
	mov [ebx+0x30], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_40:
	mov eax, 0x80000000
	mov [ebx+0x34], eax
	mov eax, [esi]
	mov [ebx+0x1c], eax
	mov dword [ebx+0x2c], 0x0
	cmp byte [esi+0x8], 0x0
	jnz _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_60
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_50:
	mov dword [ebx+0x20], 0x1
	mov dword [ebx+0x30], 0x0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_using_ix_antiali
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	mov [dx_ctx+0x2c60], eax
	jmp _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms_70
	nop


;R_InitSystems()
_Z13R_InitSystemsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z12R_InitImagesv
	call _Z13Material_Initv
	call _Z11R_InitFontsv
	call _Z15R_InitLoadWaterv
	call _Z15R_InitLightDefsv
	call _Z11R_ClearFogsv
	call _Z11R_InitDebugv
	mov byte [rg+0x140], 0x1
	leave
	ret


;R_ReleaseForShutdownOrReset()
_Z27R_ReleaseForShutdownOrResetv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jle _Z27R_ReleaseForShutdownOrResetv_10
	xor edi, edi
	mov ebx, dx_ctx
	mov esi, alwaysfails
_Z27R_ReleaseForShutdownOrResetv_20:
	mov eax, [ebx+0x2c7c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x2c7c], 0x0
	mov eax, [esi]
	test eax, eax
	jnz _Z27R_ReleaseForShutdownOrResetv_20
	add edi, 0x1
	add ebx, 0x10
	cmp edi, [dx_ctx+0x2c74]
	jl _Z27R_ReleaseForShutdownOrResetv_20
_Z27R_ReleaseForShutdownOrResetv_10:
	call _Z23R_ShutdownRenderTargetsv
	call _Z28R_ShutdownModelLightingImagev
	call _Z26R_ShutdownStaticModelCachev
	call _Z23R_DestroyDynamicBuffersv
	call _Z28R_DestroyParticleCloudBufferv
	cmp byte [g_allocateMinimalResources], 0x0
	jz _Z27R_ReleaseForShutdownOrResetv_30
_Z27R_ReleaseForShutdownOrResetv_110:
	mov eax, [dx_ctx+0x2c88]
	test eax, eax
	jz _Z27R_ReleaseForShutdownOrResetv_40
	mov ebx, alwaysfails
_Z27R_ReleaseForShutdownOrResetv_50:
	mov eax, [dx_ctx+0x2c88]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x2c88], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z27R_ReleaseForShutdownOrResetv_50
_Z27R_ReleaseForShutdownOrResetv_40:
	mov esi, dx_ctx
	mov edi, alwaysfails
_Z27R_ReleaseForShutdownOrResetv_80:
	lea ebx, [esi+0x2c34]
	mov eax, [esi+0x2c34]
	test eax, eax
	jz _Z27R_ReleaseForShutdownOrResetv_60
_Z27R_ReleaseForShutdownOrResetv_70:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx], 0x0
	mov ecx, [edi]
	test ecx, ecx
	jnz _Z27R_ReleaseForShutdownOrResetv_70
_Z27R_ReleaseForShutdownOrResetv_60:
	add esi, 0x4
	mov eax, dx_ctx+0x20
	cmp eax, esi
	jnz _Z27R_ReleaseForShutdownOrResetv_80
	call _Z23RB_FreeSunSpriteQueriesv
	mov edx, [gfxAssets]
	test edx, edx
	jz _Z27R_ReleaseForShutdownOrResetv_90
	mov ebx, alwaysfails
_Z27R_ReleaseForShutdownOrResetv_100:
	mov eax, [gfxAssets]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxAssets], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z27R_ReleaseForShutdownOrResetv_100
_Z27R_ReleaseForShutdownOrResetv_90:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_ReleaseForShutdownOrResetv_30:
	call _Z23R_ShutdownRenderBuffersv
	jmp _Z27R_ReleaseForShutdownOrResetv_110


;R_CompareDisplayModes(void const*, void const*)
_Z21R_CompareDisplayModesPKvS0_:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ecx]
	sub eax, [edx]
	jnz _Z21R_CompareDisplayModesPKvS0__10
	mov eax, [ecx+0x4]
	sub eax, [edx+0x4]
	jnz _Z21R_CompareDisplayModesPKvS0__10
	mov eax, [ecx+0x8]
	sub eax, [edx+0x8]
_Z21R_CompareDisplayModesPKvS0__10:
	pop ebp
	ret
	nop


;R_CompareRefreshRates(void const*, void const*)
_Z21R_CompareRefreshRatesPKvS0_:
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
_Z22R_CreateForInitOrResetv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x4], _cstring_initializing_ren
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z19R_InitRenderTargetsv
	cmp byte [g_allocateMinimalResources], 0x0
	jz _Z22R_CreateForInitOrResetv_10
_Z22R_CreateForInitOrResetv_90:
	mov dword [esp+0x4], _cstring_initializing_dyn
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z22R_CreateDynamicBuffersv
	cmp byte [g_allocateMinimalResources], 0x0
	jz _Z22R_CreateForInitOrResetv_20
_Z22R_CreateForInitOrResetv_80:
	mov dword [esp+0x4], _cstring_creating_direct3
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [dx_ctx+0x2c54], 0x0
	mov byte [dx_ctx+0x2ca4], 0x0
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov dword [esp+0x8], dx_ctx+0x2c88
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call dword [edx+0x1d8]
	test eax, eax
	js _Z22R_CreateForInitOrResetv_30
	xor esi, esi
	mov ebx, dx_ctx+0x2c34
_Z22R_CreateForInitOrResetv_40:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x8
	mov [esp], eax
	call dword [edx+0x1d8]
	test eax, eax
	js _Z22R_CreateForInitOrResetv_30
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x8
	jnz _Z22R_CreateForInitOrResetv_40
	cmp byte [g_allocateMinimalResources], 0x0
	jz _Z22R_CreateForInitOrResetv_50
_Z22R_CreateForInitOrResetv_70:
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z22R_CreateForInitOrResetv_50:
	call _Z24RB_AllocSunSpriteQueriesv
	mov eax, [dx_ctx+0x8]
	mov ecx, [eax]
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x9
	mov [esp], eax
	call dword [ecx+0x1d8]
	test eax, eax
	js _Z22R_CreateForInitOrResetv_60
	mov eax, [ebp-0xc]
_Z22R_CreateForInitOrResetv_100:
	mov [gfxAssets], eax
	jmp _Z22R_CreateForInitOrResetv_70
_Z22R_CreateForInitOrResetv_30:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_event_query_crea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z22R_CreateForInitOrResetv_20:
	mov dword [esp+0x4], _cstring_initializing_par
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z27R_CreateParticleCloudBufferv
	jmp _Z22R_CreateForInitOrResetv_80
_Z22R_CreateForInitOrResetv_10:
	call _Z19R_InitRenderBuffersv
	call _Z24R_InitModelLightingImagev
	mov dword [esp+0x4], _cstring_initializing_sta
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z22R_InitStaticModelCachev
	jmp _Z22R_CreateForInitOrResetv_90
_Z22R_CreateForInitOrResetv_60:
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_occlusion_query_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z22R_CreateForInitOrResetv_100


;R_CreateDeviceInternal(HWND__*, unsigned long, _D3DPRESENT_PARAMETERS_*)
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS_:
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__90:
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
	call _Z10Com_PrintfiPKcz
	xor esi, esi
	jmp _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__10
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__50:
	mov eax, [dx_ctx+0x18]
	test eax, eax
	jle _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__20
	mov eax, 0x1
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__60:
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
	jns _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__30
	mov dword [esp], 0x64
	call WinSleep
	add esi, 0x1
	cmp esi, 0x14
	jz _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__40
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__10:
	mov dword [esp+0x4], dx_ctx+0x18
	mov dword [esp], dx_ctx+0x14
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	mov eax, [dx_ctx+0x14]
	test eax, eax
	jg _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__50
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__20:
	xor eax, eax
	jmp _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__60
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__30:
	mov edx, [dx_ctx+0x4]
	mov ecx, [edx]
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov eax, [dx_ctx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x20]
	test eax, eax
	js _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__70
	mov eax, [ebp-0x28]
	mov [dx_ctx+0x1c], eax
	mov eax, [ebp-0x24]
	mov [dx_ctx+0x20], eax
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__80:
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__40:
	mov esi, [dx_ctx+0xc]
	test esi, esi
	jz _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__80
	mov dword [dx_ctx+0xc], 0x0
	mov ecx, edi
	mov edx, [ebp-0x30]
	mov eax, [ebp-0x2c]
	call _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__90
	mov ebx, eax
	mov eax, ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS__70:
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
_Z10R_InitOncev:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_Shutdown(int)
_Z10R_Shutdowni:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [rg+0x140], 0x0
	jnz _Z10R_Shutdowni_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z10R_Shutdowni_10:
	call _Z18R_SyncRenderThreadv
	mov byte [rg+0x140], 0x0
	mov edx, [dx_ctx+0x8]
	test edx, edx
	jz _Z10R_Shutdowni_20
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz _Z10R_Shutdowni_30
_Z10R_Shutdowni_20:
	call _Z15R_ShutdownDebugv
	call _Z21R_SaveLightVisHistoryv
	call _Z19R_ShutdownLightDefsv
	call _Z15R_ShutdownWorldv
	mov esi, useFastFile
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz _Z10R_Shutdowni_40
_Z10R_Shutdowni_140:
	call _Z20R_ResetModelLightingv
	mov dword [rgp+0x20a0], 0x0
	call _Z20R_UnlockSkinnedCachev
	call _Z23R_FlushStaticModelCachev
	test ebx, ebx
	jz _Z10R_Shutdowni_50
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz _Z10R_Shutdowni_60
_Z10R_Shutdowni_130:
	call _Z20R_Cinematic_Shutdownv
	call _Z27R_ReleaseForShutdownOrResetv
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jz _Z10R_Shutdowni_70
	mov edx, dx_ctx+0x2c70
_Z10R_Shutdowni_80:
	sub eax, 0x1
	mov [dx_ctx+0x2c74], eax
	shl eax, 0x4
	mov dword [eax+edx+0x8], 0x0
	mov eax, [dx_ctx+0x2c74]
	test eax, eax
	jnz _Z10R_Shutdowni_80
_Z10R_Shutdowni_70:
	mov eax, [dx_ctx+0x8]
	test eax, eax
	jz _Z10R_Shutdowni_90
	mov ebx, alwaysfails
_Z10R_Shutdowni_100:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x8], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z10R_Shutdowni_100
_Z10R_Shutdowni_90:
	mov eax, [dx_ctx+0x4]
	test eax, eax
	jz _Z10R_Shutdowni_110
	mov ebx, alwaysfails
_Z10R_Shutdowni_120:
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [dx_ctx+0x4], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z10R_Shutdowni_120
_Z10R_Shutdowni_110:
	call _Z24R_ShutdownRenderCommandsv
_Z10R_Shutdowni_50:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z16R_UnregisterCmdsv
_Z10R_Shutdowni_60:
	call _Z18DB_ShutdownXAssetsv
	jmp _Z10R_Shutdowni_130
_Z10R_Shutdowni_40:
	call _Z19R_ShutdownLoadWaterv
	call _Z15R_ShutdownFontsv
	call _Z17Material_Shutdownv
	call _Z16R_ShutdownImagesv
	jmp _Z10R_Shutdowni_140
_Z10R_Shutdowni_30:
	mov eax, gfxCmdBufState
	add eax, 0x90
	mov [esp], eax
	call _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState
	jmp _Z10R_Shutdowni_20
	nop


;R_UnloadWorld()
_Z13R_UnloadWorldv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [rgp+0x20a0]
	test edx, edx
	jz _Z13R_UnloadWorldv_10
	mov dword [esp], _cstring_cannot_unload_bs
	call _Z9Sys_ErrorPKcz
_Z13R_UnloadWorldv_10:
	leave
	ret


;R_GammaCorrect(unsigned char*, int)
_Z14R_GammaCorrectPhi:
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
	jp _Z14R_GammaCorrectPhi_10
	jnz _Z14R_GammaCorrectPhi_10
_Z14R_GammaCorrectPhi_20:
	mov eax, ebx
	shl eax, 0x8
	add eax, ebx
	mov [ebp+ebx*2-0x218], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz _Z14R_GammaCorrectPhi_20
_Z14R_GammaCorrectPhi_50:
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jle _Z14R_GammaCorrectPhi_30
	xor ebx, ebx
	mov esi, 0x7f807f81
_Z14R_GammaCorrectPhi_40:
	lea ecx, [ebx+edi]
	movzx eax, byte [ecx]
	movzx edx, word [ebp+eax*2-0x218]
	mov eax, edx
	imul esi
	shr edx, 0x7
	mov [ecx], dl
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz _Z14R_GammaCorrectPhi_40
_Z14R_GammaCorrectPhi_30:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_GammaCorrectPhi_10:
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
	jnz _Z14R_GammaCorrectPhi_10
	jmp _Z14R_GammaCorrectPhi_50
	nop


;R_MakeDedicated(GfxConfiguration const*)
_Z15R_MakeDedicatedPK16GfxConfiguration:
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
	jz _Z15R_MakeDedicatedPK16GfxConfiguration_10
_Z15R_MakeDedicatedPK16GfxConfiguration_90:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call _Z12Dvar_SetBoolPK6dvar_sh
	mov eax, [ebx]
	mov [esp], eax
	call _Z28Dvar_MakeLatchedValueCurrentPK6dvar_s
	mov eax, [gfxCfg+0x18]
	mov [ebp-0x60], eax
	mov dword [ebp-0x5c], 0x2
	mov dword [ebp-0x58], 0x0
	mov eax, [gfxCfg+0x24]
	test eax, eax
	jz _Z15R_MakeDedicatedPK16GfxConfiguration_20
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, 0x2
	mov ebx, 0x3
_Z15R_MakeDedicatedPK16GfxConfiguration_80:
	mov ecx, [gfxCfg+0x2c]
	test ecx, ecx
	jz _Z15R_MakeDedicatedPK16GfxConfiguration_30
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
	call _Z14DB_LoadXAssetsP9XZoneInfoji
	call _Z14DB_SyncXAssetsv
	xor eax, eax
	mov esi, 0x1
	mov ecx, [gfxCfg+0x1c]
	test ecx, ecx
	jz _Z15R_MakeDedicatedPK16GfxConfiguration_40
_Z15R_MakeDedicatedPK16GfxConfiguration_60:
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x18]
	lea edx, [eax-0x48]
	mov [eax-0x48], ecx
	mov dword [edx+0x4], 0x8
	mov dword [edx+0x8], 0x0
	lea ebx, [esi+0x1]
_Z15R_MakeDedicatedPK16GfxConfiguration_70:
	lea eax, [esi+esi*2]
	lea eax, [ebp+eax*4-0x18]
	lea ecx, [eax-0x48]
	mov edx, [gfxCfg+0x20]
	mov [eax-0x48], edx
	mov dword [ecx+0x4], 0x4
	mov dword [ecx+0x8], 0x0
	mov ecx, [gfxCfg+0x28]
	test ecx, ecx
	jz _Z15R_MakeDedicatedPK16GfxConfiguration_50
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x18]
	lea edx, [eax-0x48]
	mov [eax-0x48], ecx
	mov dword [edx+0x4], 0x1
	mov dword [edx+0x8], 0x0
	lea ebx, [esi+0x2]
_Z15R_MakeDedicatedPK16GfxConfiguration_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z14DB_LoadXAssetsP9XZoneInfoji
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_MakeDedicatedPK16GfxConfiguration_30:
	lea esi, [eax+0x1]
	lea edi, [ebp-0x60]
	mov ecx, [gfxCfg+0x1c]
	test ecx, ecx
	jnz _Z15R_MakeDedicatedPK16GfxConfiguration_60
_Z15R_MakeDedicatedPK16GfxConfiguration_40:
	mov ebx, esi
	mov esi, eax
	jmp _Z15R_MakeDedicatedPK16GfxConfiguration_70
_Z15R_MakeDedicatedPK16GfxConfiguration_20:
	mov al, 0x1
	mov ebx, 0x2
	jmp _Z15R_MakeDedicatedPK16GfxConfiguration_80
_Z15R_MakeDedicatedPK16GfxConfiguration_10:
	call _Z15R_RegisterDvarsv
	jmp _Z15R_MakeDedicatedPK16GfxConfiguration_90


;R_FatalInitError(char const*)
_Z16R_FatalInitErrorPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z21Sys_DirectXFatalErrorv


;R_FatalLockError(long)
_Z16R_FatalLockErrorl:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring__directx_failed_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring__error_informati
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	leave
	jmp _Z21Sys_DirectXFatalErrorv


;R_CheckLostDevice()
_Z17R_CheckLostDevicev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x74
	mov edx, [dx_ctx+0x8]
	test edx, edx
	jz _Z17R_CheckLostDevicev_10
	cmp byte [dx_ctx+0x2c6c], 0x0
	jnz _Z17R_CheckLostDevicev_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe _Z17R_CheckLostDevicev_30
	mov eax, 0x1
	add esp, 0x74
	pop ebx
	pop ebp
	ret
_Z17R_CheckLostDevicev_30:
	call _Z18R_SyncRenderThreadv
	mov byte [dx_ctx+0x2c6c], 0x1
_Z17R_CheckLostDevicev_20:
	call _Z16Sys_IsMainThreadv
	test al, al
	jnz _Z17R_CheckLostDevicev_40
_Z17R_CheckLostDevicev_10:
	xor eax, eax
	add esp, 0x74
	pop ebx
	pop ebp
	ret
_Z17R_CheckLostDevicev_40:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	cmp eax, 0x88760868
	jz _Z17R_CheckLostDevicev_10
	mov dword [esp+0x4], _cstring_recovering_lost_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z27R_Cinematic_BeginLostDevicev
	call _Z25DB_BeginRecoverLostDevicev
	call _Z20R_ResetModelLightingv
	call _Z19R_ReleaseLostImagesv
	call _Z19Material_ReleaseAllv
	call _Z14R_ReleaseWorldv
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
	call _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms
	call _Z27R_ReleaseForShutdownOrResetv
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp+0x4], ebx
	mov [esp], eax
	call dword [edx+0x40]
	test eax, eax
	js _Z17R_CheckLostDevicev_50
_Z17R_CheckLostDevicev_80:
	mov byte [dx_ctx+0x2c6c], 0x0
	call _Z22R_CreateForInitOrResetv
	test al, al
	jz _Z17R_CheckLostDevicev_60
_Z17R_CheckLostDevicev_70:
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov eax, gfxCmdBufState
	mov [esp], eax
	call _Z17R_InitCmdBufStateP14GfxCmdBufState
	call _Z20RB_InitSceneViewportv
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	call _Z13R_ReloadWorldv
	call _Z18Material_ReloadAllv
	call _Z18R_ReloadLostImagesv
	call _Z23RB_CalcSunSpriteSamplesv
	mov [dx_ctx+0x2c64], eax
	call _Z23DB_EndRecoverLostDevicev
	call _Z25R_Cinematic_EndLostDevicev
	mov dword [esp+0x4], _cstring_finished_recover
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x74
	pop ebx
	pop ebp
	ret
_Z17R_CheckLostDevicev_60:
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], _cstring_couldnt_reinitia
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z21Sys_DirectXFatalErrorv
	jmp _Z17R_CheckLostDevicev_70
_Z17R_CheckLostDevicev_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_couldnt_reset_a_
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z21Sys_DirectXFatalErrorv
	jmp _Z17R_CheckLostDevicev_80
	add [eax], al


;R_ComErrorCleanup()
_Z17R_ComErrorCleanupv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z21R_AbortRenderCommandsv
	call _Z18R_SyncRenderThreadv
	cmp byte [dx_ctx+0x2c6d], 0x0
	jnz _Z17R_ComErrorCleanupv_10
	leave
	ret
_Z17R_ComErrorCleanupv_10:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xa8]
	mov byte [dx_ctx+0x2c6d], 0x0
	leave
	ret


;R_EndRegistration()
_Z17R_EndRegistrationv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z22Material_FinishLoadingv
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17R_EndRegistrationv_10
	leave
	ret
_Z17R_EndRegistrationv_10:
	call _Z18R_SyncRenderThreadv
	leave
	jmp _Z17RB_TouchAllImagesv
	nop


;R_ShutdownStreams()
_Z17R_ShutdownStreamsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [dx_ctx+0x8]
	test eax, eax
	jz _Z17R_ShutdownStreamsv_10
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz _Z17R_ShutdownStreamsv_20
_Z17R_ShutdownStreamsv_10:
	leave
	ret
_Z17R_ShutdownStreamsv_20:
	mov eax, gfxCmdBufState
	add eax, 0x90
	mov [esp], eax
	call _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState
	leave
	ret


;R_TrackStatistics(trStatistics_t*)
_Z17R_TrackStatisticsP14trStatistics_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [rg+0x21d8], eax
	pop ebp
	ret
	nop


;R_ErrorDescription(long)
_Z18R_ErrorDescriptionl:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;R_SetColorMappings()
_Z18R_SetColorMappingsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x234
	cmp byte [vidConfig+0x2c], 0x0
	jz _Z18R_SetColorMappingsv_10
	mov eax, r_gamma
	mov eax, [eax]
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	divss xmm0, dword [eax+0xc]
	xor ebx, ebx
	cvtss2sd xmm2, xmm0
	movsd [ebp-0x210], xmm2
	ucomiss xmm0, xmm1
	jp _Z18R_SetColorMappingsv_20
	jnz _Z18R_SetColorMappingsv_20
_Z18R_SetColorMappingsv_30:
	mov eax, ebx
	shl eax, 0x8
	add eax, ebx
	mov [ebp+ebx*2-0x208], ax
	add ebx, 0x1
	cmp ebx, 0x100
	jnz _Z18R_SetColorMappingsv_30
_Z18R_SetColorMappingsv_40:
	lea eax, [ebp-0x208]
	mov [esp], eax
	call _Z15RB_SetGammaRampPK12GfxGammaRamp
_Z18R_SetColorMappingsv_10:
	add esp, 0x234
	pop ebx
	pop ebp
	ret
_Z18R_SetColorMappingsv_20:
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
	jnz _Z18R_SetColorMappingsv_20
	jmp _Z18R_SetColorMappingsv_40


;R_UpdateTeamColors(int, float const*, float const*)
_Z18R_UpdateTeamColorsiPKfS0_:
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
	jle _Z18R_UpdateTeamColorsiPKfS0__10
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__90:
	mov [rg+0x21d0], dl
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10]
	cvttss2si eax, [ebp-0x10]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__20
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__150:
	mov [rg+0x21d1], dl
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x14]
	cvttss2si eax, [ebp-0x14]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__30
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__140:
	mov [rg+0x21d2], dl
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x18]
	cvttss2si eax, [ebp-0x18]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__40
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__130:
	mov [rg+0x21d3], dl
	movss xmm0, dword [esi]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__50
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__120:
	mov [rg+0x21cc], dl
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__60
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__110:
	mov [rg+0x21cd], dl
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__70
	mov edx, 0xffffffff
_Z18R_UpdateTeamColorsiPKfS0__100:
	mov [rg+0x21ce], dl
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [esi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	cmp eax, 0xfe
	jle _Z18R_UpdateTeamColorsiPKfS0__80
	mov edx, 0xffffffff
	mov [rg+0x21cf], dl
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z18R_UpdateTeamColorsiPKfS0__10:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__90
_Z18R_UpdateTeamColorsiPKfS0__80:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	mov [rg+0x21cf], dl
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z18R_UpdateTeamColorsiPKfS0__70:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__100
_Z18R_UpdateTeamColorsiPKfS0__60:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__110
_Z18R_UpdateTeamColorsiPKfS0__50:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__120
_Z18R_UpdateTeamColorsiPKfS0__40:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__130
_Z18R_UpdateTeamColorsiPKfS0__30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__140
_Z18R_UpdateTeamColorsiPKfS0__20:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z18R_UpdateTeamColorsiPKfS0__150


;R_BeginRegistration(vidConfig_t*)
_Z19R_BeginRegistrationP11vidConfig_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc9c
	mov dword [esp+0x4], _cstring__r_init_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z9Swap_Initv
	call _Z15R_RegisterDvarsv
	call _Z14R_RegisterCmdsv
	mov dword [esp+0x8], 0x2300
	mov dword [esp+0x4], 0x0
	mov dword [esp], rg
	call memset
	mov dword [esp+0x8], 0x2180
	mov dword [esp+0x4], 0x0
	mov dword [esp], rgp
	call memset
	call _Z27RB_InitBackendGlobalStructsv
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
	call _Z16MatrixIdentity44PA4_f
	mov dword [esp], rg+0x40
	call _Z16MatrixIdentity44PA4_f
	mov dword [esp], rg+0x80
	call _Z16MatrixIdentity44PA4_f
	mov dword [esp], rg+0xc0
	call _Z16MatrixIdentity44PA4_f
	call _Z16R_InitDrawMethodv
	mov esi, [dx_ctx+0x8]
	test esi, esi
	jz _Z19R_BeginRegistrationP11vidConfig_t_10
	call _Z13R_InitSystemsv
_Z19R_BeginRegistrationP11vidConfig_t_550:
	call _Z24RB_RegisterBackendAssetsv
	call _Z11R_InitWaterv
	cmp byte [dx_ctx+0x2c6c], 0x0
	jz _Z19R_BeginRegistrationP11vidConfig_t_20
_Z19R_BeginRegistrationP11vidConfig_t_30:
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
_Z19R_BeginRegistrationP11vidConfig_t_20:
	mov eax, [dx_ctx+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe _Z19R_BeginRegistrationP11vidConfig_t_30
	call _Z23RB_CalcSunSpriteSamplesv
	mov [dx_ctx+0x2c64], eax
	test eax, eax
	jnz _Z19R_BeginRegistrationP11vidConfig_t_30
	mov dword [esp+0x4], _cstring_sun_sprite_occlu
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z23RB_FreeSunSpriteQueriesv
	jmp _Z19R_BeginRegistrationP11vidConfig_t_30
_Z19R_BeginRegistrationP11vidConfig_t_10:
	mov ebx, [dx_ctx+0x4]
	test ebx, ebx
	jz _Z19R_BeginRegistrationP11vidConfig_t_40
_Z19R_BeginRegistrationP11vidConfig_t_890:
	mov dword [dx_ctx+0xc], 0x0
	xor ebx, ebx
	jmp _Z19R_BeginRegistrationP11vidConfig_t_50
_Z19R_BeginRegistrationP11vidConfig_t_70:
	mov dword [esp], 0x64
	call WinSleep
	add ebx, 0x1
	cmp ebx, 0x14
	jz _Z19R_BeginRegistrationP11vidConfig_t_60
_Z19R_BeginRegistrationP11vidConfig_t_50:
	mov eax, [dx_ctx+0x4]
	mov edx, [eax]
	lea ecx, [ebp-0x44c]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x38]
	test eax, eax
	js _Z19R_BeginRegistrationP11vidConfig_t_70
_Z19R_BeginRegistrationP11vidConfig_t_800:
	mov eax, [ebp-0x380]
	movzx edx, al
	mov [esp+0xc], edx
	movzx eax, ah
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pixel_shader_ver
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x388]
	movzx edx, al
	mov [esp+0xc], edx
	movzx eax, ah
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vertex_shader_ve
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	lea ebx, [ebp-0x44c]
	mov [esp], ebx
	call _Z13R_CheckDxCapsPK9_D3DCAPS9
	mov esi, eax
	mov edi, 0x2
	xor ebx, ebx
_Z19R_BeginRegistrationP11vidConfig_t_90:
	mov eax, esi
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z19R_BeginRegistrationP11vidConfig_t_80
	mov edi, ebx
	mov eax, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_code_path_is_a
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z19R_BeginRegistrationP11vidConfig_t_80:
	add ebx, 0x1
	cmp ebx, 0x2
	jnz _Z19R_BeginRegistrationP11vidConfig_t_90
	cmp edi, 0x2
	jz _Z19R_BeginRegistrationP11vidConfig_t_100
_Z19R_BeginRegistrationP11vidConfig_t_880:
	mov eax, r_rendererPreference
	mov eax, [eax]
	mov ecx, [eax+0xc]
	cmp ecx, 0x2
	jz _Z19R_BeginRegistrationP11vidConfig_t_110
	sar esi, cl
	and esi, 0x1
	jnz _Z19R_BeginRegistrationP11vidConfig_t_120
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
	call _Z10Com_PrintfiPKcz
_Z19R_BeginRegistrationP11vidConfig_t_410:
	mov [esp+0x4], edi
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_130
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
	jnz _Z19R_BeginRegistrationP11vidConfig_t_130
	mov eax, 0x1
_Z19R_BeginRegistrationP11vidConfig_t_570:
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_140
_Z19R_BeginRegistrationP11vidConfig_t_830:
	mov dword [gfxMetrics+0x18], 0x72
	mov dword [gfxMetrics+0x1c], 0x4d
	mov dword [gfxMetrics+0x20], 0x3
	mov byte [gfxMetrics+0x14], 0x0
	mov byte [gfxMetrics+0x24], 0x61
_Z19R_BeginRegistrationP11vidConfig_t_840:
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_150
	xor esi, esi
	xor ebx, ebx
_Z19R_BeginRegistrationP11vidConfig_t_180:
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
	js _Z19R_BeginRegistrationP11vidConfig_t_160
	mov eax, [dx_ctx+0x28]
	mov edx, eax
	shl edx, 0x4
	mov ecx, [edx+dx_ctx+0x34]
	test ecx, ecx
	jnz _Z19R_BeginRegistrationP11vidConfig_t_170
	mov eax, dx_ctx+0x20
	mov dword [edx+eax+0x14], 0x3c
	mov eax, [dx_ctx+0x28]
_Z19R_BeginRegistrationP11vidConfig_t_170:
	add eax, 0x1
	mov [dx_ctx+0x28], eax
_Z19R_BeginRegistrationP11vidConfig_t_160:
	add esi, 0x1
	cmp edi, esi
	jz _Z19R_BeginRegistrationP11vidConfig_t_150
	mov eax, [dx_ctx+0x28]
	mov ebx, eax
	cmp eax, 0xff
	jbe _Z19R_BeginRegistrationP11vidConfig_t_180
_Z19R_BeginRegistrationP11vidConfig_t_600:
	mov dword [esp+0xc], _Z21R_CompareDisplayModesPKvS0_
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], eax
	mov dword [esp], dx_ctx+0x2c
	call qsort
	mov ebx, [dx_ctx+0x28]
	test ebx, ebx
	jnz _Z19R_BeginRegistrationP11vidConfig_t_190
	mov dword [ebp-0xc74], 0x0
	mov dword [ebp-0xc60], 0x0
_Z19R_BeginRegistrationP11vidConfig_t_700:
	mov dword [esp+0x8], 0x1e0
	mov dword [esp+0x4], 0x280
	mov dword [esp], _cstring_no_valid_resolut
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z21Sys_DirectXFatalErrorv
	mov esi, [ebp-0xc60]
	test esi, esi
	jg _Z19R_BeginRegistrationP11vidConfig_t_200
_Z19R_BeginRegistrationP11vidConfig_t_710:
	mov dword [ebp-0xc70], dx_ctx+0x1834
	mov dword [ebp-0xc78], 0x0
	mov dword [ebp-0xc60], 0x0
_Z19R_BeginRegistrationP11vidConfig_t_750:
	mov edx, [ebp-0xc60]
	mov dword [edx*4+dx_ctx+0x102c], 0x0
	mov dword [esp+0x10], _cstring_direct_x_resolut
	mov dword [esp+0xc], 0x21
	mov ecx, [ebp-0xc78]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], dx_ctx+0x102c
	mov dword [esp], _cstring_r_mode
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov edx, r_mode
	mov [edx], eax
	mov dword [esp+0xc], _Z21R_CompareRefreshRatesPKvS0_
	mov dword [esp+0x8], 0x4
	mov ebx, [ebp-0xc74]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x44c]
	mov [esp], esi
	call qsort
	test ebx, ebx
	jg _Z19R_BeginRegistrationP11vidConfig_t_210
	xor edi, edi
	mov dword [ebp-0xc74], 0x0
_Z19R_BeginRegistrationP11vidConfig_t_860:
	mov ebx, [ebp-0xc74]
	mov dword [ebx*4+dx_ctx+0x1430], 0x0
	mov dword [esp+0x10], _cstring_refresh_rate
	mov dword [esp+0xc], 0x221
	mov [esp+0x8], edi
	mov dword [esp+0x4], dx_ctx+0x1430
	mov dword [esp], _cstring_r_displayrefresh
	call _Z17Dvar_RegisterEnumPKcPS0_itS0_
	mov edx, r_displayRefresh
	mov [edx], eax
_Z19R_BeginRegistrationP11vidConfig_t_540:
	mov dword [esp], _cstring_r_fullscreen
	call _Z12Dvar_GetBoolPKc
	mov [ebp-0x44], al
	test al, al
	jnz _Z19R_BeginRegistrationP11vidConfig_t_220
_Z19R_BeginRegistrationP11vidConfig_t_400:
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_230
_Z19R_BeginRegistrationP11vidConfig_t_220:
	mov eax, r_mode
	mov eax, [eax]
	mov [esp], eax
	call _Z17Dvar_EnumToStringPK6dvar_s
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ixi
	mov [esp], eax
	call sscanf
_Z19R_BeginRegistrationP11vidConfig_t_870:
	mov eax, [ebp-0x30]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x34], eax
	cmp byte [ebp-0x44], 0x0
	jnz _Z19R_BeginRegistrationP11vidConfig_t_240
	mov dword [ebp-0x48], 0x3c
_Z19R_BeginRegistrationP11vidConfig_t_490:
	mov dword [esp], _cstring_vid_xpos
	call _Z11Dvar_GetIntPKc
	mov [ebp-0x40], eax
	mov dword [esp], _cstring_vid_ypos
	call _Z11Dvar_GetIntPKc
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
	call _Z10Com_PrintfiPKcz
	mov ebx, [ebp-0x4c]
	mov dword [esp], 0x15
	call _Z23R_GetDepthStencilFormat10_D3DFORMAT
	mov [dx_ctx+0x24], eax
	lea edx, [ebp-0x4c]
	lea eax, [ebp-0x44c]
	call _Z25R_SetD3DPresentParametersP23_D3DPRESENT_PARAMETERS_PK14GfxWindowParms
	lea ecx, [ebp-0x44c]
	mov edx, 0x46
	mov eax, ebx
	call _Z22R_CreateDeviceInternalP6HWND__mP23_D3DPRESENT_PARAMETERS_
	test eax, eax
	js _Z19R_BeginRegistrationP11vidConfig_t_250
	mov byte [dx_ctx+0x2c6c], 0x0
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19R_BeginRegistrationP11vidConfig_t_260
	mov eax, [gfxCfg+0x18]
	mov [ebp-0x44c], eax
	mov dword [ebp-0x448], 0x2
	mov dword [ebp-0x444], 0x0
	mov eax, [gfxCfg+0x24]
	test eax, eax
	jz _Z19R_BeginRegistrationP11vidConfig_t_270
	mov [ebp-0x440], eax
	mov dword [ebp-0x43c], 0x0
	mov dword [ebp-0x438], 0x0
	mov ecx, 0x2
	mov ebx, 0x3
_Z19R_BeginRegistrationP11vidConfig_t_820:
	mov edx, [gfxCfg+0x2c]
	test edx, edx
	jz _Z19R_BeginRegistrationP11vidConfig_t_280
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x10
	mov dword [eax-0x42c], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x44c]
	mov [esp], ebx
	call _Z14DB_LoadXAssetsP9XZoneInfoji
	call _Z14DB_SyncXAssetsv
	xor ecx, ecx
	mov ebx, 0x1
_Z19R_BeginRegistrationP11vidConfig_t_280:
	mov edx, [gfxCfg+0x1c]
	test edx, edx
	jz _Z19R_BeginRegistrationP11vidConfig_t_290
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x8
	mov dword [eax-0x42c], 0x0
	mov ecx, ebx
	add ebx, 0x1
_Z19R_BeginRegistrationP11vidConfig_t_290:
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x18]
	mov edx, [gfxCfg+0x20]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x4
	mov dword [eax-0x42c], 0x0
	mov edx, [gfxCfg+0x28]
	test edx, edx
	jz _Z19R_BeginRegistrationP11vidConfig_t_300
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x18]
	mov [eax-0x434], edx
	mov dword [eax-0x430], 0x1
	mov dword [eax-0x42c], 0x0
	lea ebx, [ecx+0x2]
_Z19R_BeginRegistrationP11vidConfig_t_300:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	lea esi, [ebp-0x44c]
	mov [esp], esi
	call _Z14DB_LoadXAssetsP9XZoneInfoji
_Z19R_BeginRegistrationP11vidConfig_t_260:
	mov eax, r_multiGpu
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19R_BeginRegistrationP11vidConfig_t_310
	xor eax, eax
_Z19R_BeginRegistrationP11vidConfig_t_420:
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_320
	jle _Z19R_BeginRegistrationP11vidConfig_t_330
	cmp eax, 0x2
	jz _Z19R_BeginRegistrationP11vidConfig_t_340
	cmp eax, 0x3
	jz _Z19R_BeginRegistrationP11vidConfig_t_350
_Z19R_BeginRegistrationP11vidConfig_t_500:
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
	call _Z12Dvar_SetBoolPK6dvar_sh
	mov edx, [vidConfig+0x4]
	test edx, edx
	js _Z19R_BeginRegistrationP11vidConfig_t_360
	cvtsi2ss xmm0, edx
_Z19R_BeginRegistrationP11vidConfig_t_590:
	movaps xmm1, xmm0
	mulss xmm1, [vidConfig+0x18]
	mov edx, [vidConfig]
	test edx, edx
	js _Z19R_BeginRegistrationP11vidConfig_t_370
	cvtsi2ss xmm0, edx
_Z19R_BeginRegistrationP11vidConfig_t_580:
	divss xmm1, xmm0
	movss [vidConfig+0x1c], xmm1
	mov dword [vidConfig+0x20], 0x3f800000
	call _Z20RB_InitSceneViewportv
	call _Z20RB_InitCodeConstantsv
	call _Z22R_CreateForInitOrResetv
	test al, al
	jnz _Z19R_BeginRegistrationP11vidConfig_t_380
_Z19R_BeginRegistrationP11vidConfig_t_810:
	mov eax, r_aaSamples
	mov edx, [eax]
	mov eax, [edx+0xc]
	cmp eax, 0x1
	jle _Z19R_BeginRegistrationP11vidConfig_t_390
_Z19R_BeginRegistrationP11vidConfig_t_520:
	sub eax, 0x1
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11Dvar_SetIntPK6dvar_si
	mov dword [esp], _cstring_r_fullscreen
	call _Z12Dvar_GetBoolPKc
	mov [ebp-0x44], al
	test al, al
	jnz _Z19R_BeginRegistrationP11vidConfig_t_220
	jmp _Z19R_BeginRegistrationP11vidConfig_t_400
_Z19R_BeginRegistrationP11vidConfig_t_120:
	mov edi, ecx
	mov [esp], eax
	call _Z17Dvar_EnumToStringPK6dvar_s
	mov ecx, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz ecx, edx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_using_s_code_pat1
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z19R_BeginRegistrationP11vidConfig_t_410
_Z19R_BeginRegistrationP11vidConfig_t_310:
	mov eax, r_gpuSync
	mov eax, [eax]
	mov eax, [eax+0xc]
	jmp _Z19R_BeginRegistrationP11vidConfig_t_420
_Z19R_BeginRegistrationP11vidConfig_t_240:
	mov eax, r_displayRefresh
	mov eax, [eax]
	mov [esp], eax
	call _Z17Dvar_EnumToStringPK6dvar_s
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
	js _Z19R_BeginRegistrationP11vidConfig_t_430
	xor edi, edi
_Z19R_BeginRegistrationP11vidConfig_t_470:
	lea edx, [edi+ebx]
	mov eax, edx
	shr eax, 0x1f
	lea ecx, [eax+edx]
	sar ecx, 1
	mov edx, ecx
	shl edx, 0x4
	mov eax, [edx+dx_ctx+0x2c]
	sub eax, esi
	jnz _Z19R_BeginRegistrationP11vidConfig_t_440
	mov eax, [edx+dx_ctx+0x30]
	sub eax, [ebp-0xc68]
	jnz _Z19R_BeginRegistrationP11vidConfig_t_440
	mov eax, [edx+dx_ctx+0x34]
	sub eax, [ebp-0xc6c]
	jz _Z19R_BeginRegistrationP11vidConfig_t_450
_Z19R_BeginRegistrationP11vidConfig_t_440:
	test eax, eax
	js _Z19R_BeginRegistrationP11vidConfig_t_460
	lea ebx, [ecx-0x1]
	cmp ebx, edi
	jge _Z19R_BeginRegistrationP11vidConfig_t_470
_Z19R_BeginRegistrationP11vidConfig_t_560:
	mov eax, ebx
	shl eax, 0x4
	cmp esi, [eax+dx_ctx+0x2c]
	jz _Z19R_BeginRegistrationP11vidConfig_t_480
_Z19R_BeginRegistrationP11vidConfig_t_610:
	shl edi, 0x4
	mov edi, [edi+dx_ctx+0x34]
	mov [ebp-0xc6c], edi
	mov ecx, edi
	mov [ebp-0x48], ecx
	jmp _Z19R_BeginRegistrationP11vidConfig_t_490
_Z19R_BeginRegistrationP11vidConfig_t_330:
	test eax, eax
	jnz _Z19R_BeginRegistrationP11vidConfig_t_500
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
	jz _Z19R_BeginRegistrationP11vidConfig_t_340
	cmp eax, 0x9
	jle _Z19R_BeginRegistrationP11vidConfig_t_350
_Z19R_BeginRegistrationP11vidConfig_t_320:
	mov dword [vidConfig+0x18], 0x3faaaaab
	jmp _Z19R_BeginRegistrationP11vidConfig_t_500
_Z19R_BeginRegistrationP11vidConfig_t_390:
	mov eax, r_displayRefresh
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jle _Z19R_BeginRegistrationP11vidConfig_t_510
	cmp dword [vidConfig+0x10], 0x3c
	ja _Z19R_BeginRegistrationP11vidConfig_t_520
_Z19R_BeginRegistrationP11vidConfig_t_510:
	mov eax, r_mode
	mov edx, [eax]
	mov eax, [edx+0xc]
	test eax, eax
	jle _Z19R_BeginRegistrationP11vidConfig_t_530
	cmp dword [vidConfig+0x8], 0x280
	ja _Z19R_BeginRegistrationP11vidConfig_t_520
	cmp dword [vidConfig+0xc], 0x1e0
	ja _Z19R_BeginRegistrationP11vidConfig_t_520
_Z19R_BeginRegistrationP11vidConfig_t_530:
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x8], _cstring_couldnt_initiali
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z21Sys_DirectXFatalErrorv
	jmp _Z19R_BeginRegistrationP11vidConfig_t_540
_Z19R_BeginRegistrationP11vidConfig_t_380:
	call _Z16R_Cinematic_Initv
	mov dword [esp+0x4], _cstring_setting_initial_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z18RB_SetInitialStatev
	mov eax, r_gamma
	mov eax, [eax]
	mov [esp], eax
	call _Z16Dvar_SetModifiedPK6dvar_s
	call _Z11R_InitScenev
	call _Z13R_InitSystemsv
	call _Z17RB_PixelCost_Initv
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
	call _Z20Sys_HideSplashWindowv
	jmp _Z19R_BeginRegistrationP11vidConfig_t_550
_Z19R_BeginRegistrationP11vidConfig_t_460:
	lea edi, [ecx+0x1]
	cmp ebx, edi
	jge _Z19R_BeginRegistrationP11vidConfig_t_470
	jmp _Z19R_BeginRegistrationP11vidConfig_t_560
_Z19R_BeginRegistrationP11vidConfig_t_130:
	xor eax, eax
	jmp _Z19R_BeginRegistrationP11vidConfig_t_570
_Z19R_BeginRegistrationP11vidConfig_t_370:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z19R_BeginRegistrationP11vidConfig_t_580
_Z19R_BeginRegistrationP11vidConfig_t_360:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z19R_BeginRegistrationP11vidConfig_t_590
_Z19R_BeginRegistrationP11vidConfig_t_150:
	mov eax, [dx_ctx+0x28]
	jmp _Z19R_BeginRegistrationP11vidConfig_t_600
_Z19R_BeginRegistrationP11vidConfig_t_340:
	mov dword [vidConfig+0x18], 0x3fcccccd
	jmp _Z19R_BeginRegistrationP11vidConfig_t_500
_Z19R_BeginRegistrationP11vidConfig_t_430:
	xor edi, edi
	mov eax, ebx
	shl eax, 0x4
	cmp esi, [eax+dx_ctx+0x2c]
	jnz _Z19R_BeginRegistrationP11vidConfig_t_610
_Z19R_BeginRegistrationP11vidConfig_t_480:
	mov edx, [ebp-0xc68]
	cmp edx, [eax+dx_ctx+0x30]
	jnz _Z19R_BeginRegistrationP11vidConfig_t_610
	mov eax, [eax+dx_ctx+0x34]
	mov [ebp-0xc6c], eax
	mov ecx, eax
	mov [ebp-0x48], ecx
	jmp _Z19R_BeginRegistrationP11vidConfig_t_490
_Z19R_BeginRegistrationP11vidConfig_t_350:
	mov dword [vidConfig+0x18], 0x3fe38e39
	jmp _Z19R_BeginRegistrationP11vidConfig_t_500
_Z19R_BeginRegistrationP11vidConfig_t_190:
	mov dword [ebp-0xc5c], 0x0
	mov dword [ebp-0xc60], 0x0
	mov dword [ebp-0xc74], 0x0
	mov dword [ebp-0xc64], dx_ctx
	lea edx, [ebp-0xc4c]
	mov [ebp-0xc88], edx
_Z19R_BeginRegistrationP11vidConfig_t_690:
	mov ecx, [ebp-0xc64]
	mov edx, [ecx+0x30]
	mov eax, [ecx+0x2c]
	mov ecx, [ebp-0xc60]
	test ecx, ecx
	jle _Z19R_BeginRegistrationP11vidConfig_t_620
	mov ecx, [ebp-0xc88]
	sub ecx, 0x8
	mov ebx, [ebp-0xc88]
	cmp eax, [ebx-0x8]
	jz _Z19R_BeginRegistrationP11vidConfig_t_630
_Z19R_BeginRegistrationP11vidConfig_t_620:
	cmp eax, 0x27f
	jle _Z19R_BeginRegistrationP11vidConfig_t_640
	cmp edx, 0x1df
	jle _Z19R_BeginRegistrationP11vidConfig_t_640
	mov esi, [ebp-0xc88]
	mov [esi], eax
	mov [esi+0x4], edx
	add dword [ebp-0xc60], 0x1
	add esi, 0x8
	mov [ebp-0xc88], esi
_Z19R_BeginRegistrationP11vidConfig_t_640:
	mov edi, [ebp-0xc64]
	mov edx, [edi+0x34]
	mov eax, [ebp-0xc74]
	test eax, eax
	jle _Z19R_BeginRegistrationP11vidConfig_t_650
	cmp [ebp-0x44c], edx
	jz _Z19R_BeginRegistrationP11vidConfig_t_660
	xor eax, eax
_Z19R_BeginRegistrationP11vidConfig_t_680:
	add eax, 0x1
	cmp [ebp-0xc74], eax
	jz _Z19R_BeginRegistrationP11vidConfig_t_670
	cmp [ebp+eax*4-0x44c], edx
	jnz _Z19R_BeginRegistrationP11vidConfig_t_680
_Z19R_BeginRegistrationP11vidConfig_t_660:
	add dword [ebp-0xc5c], 0x1
	add dword [ebp-0xc64], 0x10
	mov eax, [ebp-0xc5c]
	cmp [dx_ctx+0x28], eax
	ja _Z19R_BeginRegistrationP11vidConfig_t_690
	mov edi, [ebp-0xc60]
	test edi, edi
	jz _Z19R_BeginRegistrationP11vidConfig_t_700
	mov esi, [ebp-0xc60]
	test esi, esi
	jle _Z19R_BeginRegistrationP11vidConfig_t_710
_Z19R_BeginRegistrationP11vidConfig_t_200:
	mov dword [ebp-0xc70], dx_ctx+0x1834
	mov dword [ebp-0xc78], 0x0
	xor esi, esi
	mov edi, dx_ctx
	xor ebx, ebx
_Z19R_BeginRegistrationP11vidConfig_t_740:
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
	jle _Z19R_BeginRegistrationP11vidConfig_t_720
	cmp dword [ebp+eax*8-0xc48], 0x1df
	jg _Z19R_BeginRegistrationP11vidConfig_t_730
_Z19R_BeginRegistrationP11vidConfig_t_720:
	mov [ebp-0xc78], esi
_Z19R_BeginRegistrationP11vidConfig_t_730:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x4
	cmp [ebp-0xc60], esi
	jnz _Z19R_BeginRegistrationP11vidConfig_t_740
	jmp _Z19R_BeginRegistrationP11vidConfig_t_750
_Z19R_BeginRegistrationP11vidConfig_t_650:
	mov eax, [ebp-0xc74]
_Z19R_BeginRegistrationP11vidConfig_t_780:
	shl eax, 0x2
_Z19R_BeginRegistrationP11vidConfig_t_760:
	mov [ebp+eax-0x44c], edx
	add dword [ebp-0xc74], 0x1
	jmp _Z19R_BeginRegistrationP11vidConfig_t_660
_Z19R_BeginRegistrationP11vidConfig_t_630:
	cmp edx, [ecx+0x4]
	jnz _Z19R_BeginRegistrationP11vidConfig_t_620
	jmp _Z19R_BeginRegistrationP11vidConfig_t_640
_Z19R_BeginRegistrationP11vidConfig_t_670:
	mov eax, [ebp-0xc74]
	shl eax, 0x2
	mov ecx, [ebp+eax-0x450]
	cmp ecx, edx
	jle _Z19R_BeginRegistrationP11vidConfig_t_760
	mov esi, [ebp-0xc74]
	lea ebx, [esi*4-0x4]
	mov edi, esi
	sub edi, 0x1
	mov [ebp-0xc84], edi
	jmp _Z19R_BeginRegistrationP11vidConfig_t_770
_Z19R_BeginRegistrationP11vidConfig_t_790:
	mov eax, ebx
	mov ebx, edi
_Z19R_BeginRegistrationP11vidConfig_t_770:
	mov [ebp+eax-0x44c], ecx
	sub esi, 0x1
	mov eax, [ebp-0xc74]
	sub eax, [ebp-0xc84]
	sub eax, 0x1
	cmp eax, esi
	jz _Z19R_BeginRegistrationP11vidConfig_t_780
	mov ecx, [ebp+ebx-0x450]
	lea edi, [ebx-0x4]
	cmp ecx, edx
	jg _Z19R_BeginRegistrationP11vidConfig_t_790
	mov eax, ebx
	jmp _Z19R_BeginRegistrationP11vidConfig_t_760
_Z19R_BeginRegistrationP11vidConfig_t_60:
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_getdevicecaps_fa
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp+0x4], _cstring__directx_returne
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__initialization_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring__consult_the_rea
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z21Sys_DirectXFatalErrorv
	jmp _Z19R_BeginRegistrationP11vidConfig_t_800
_Z19R_BeginRegistrationP11vidConfig_t_250:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z19R_BeginRegistrationP11vidConfig_t_810
_Z19R_BeginRegistrationP11vidConfig_t_270:
	mov ecx, 0x1
	mov ebx, 0x2
	jmp _Z19R_BeginRegistrationP11vidConfig_t_820
_Z19R_BeginRegistrationP11vidConfig_t_140:
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
	jnz _Z19R_BeginRegistrationP11vidConfig_t_830
	mov [gfxMetrics+0x18], ebx
	mov [gfxMetrics+0x1c], esi
	mov dword [gfxMetrics+0x20], 0x2
	mov byte [gfxMetrics+0x14], 0x1
	mov byte [gfxMetrics+0x24], 0x62
	jmp _Z19R_BeginRegistrationP11vidConfig_t_840
_Z19R_BeginRegistrationP11vidConfig_t_210:
	xor edi, edi
	xor ebx, ebx
	mov esi, dx_ctx
	mov eax, [ebp-0xc70]
_Z19R_BeginRegistrationP11vidConfig_t_850:
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
	jnz _Z19R_BeginRegistrationP11vidConfig_t_850
	jmp _Z19R_BeginRegistrationP11vidConfig_t_860
_Z19R_BeginRegistrationP11vidConfig_t_110:
	mov eax, _cstring_shader_model_30
	cmp edi, 0x1
	mov edx, _cstring_shader_model_20
	cmovnz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_using_s_code_pat2
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z19R_BeginRegistrationP11vidConfig_t_410
_Z19R_BeginRegistrationP11vidConfig_t_230:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	mov eax, [ebp-0x24]
	test eax, eax
	jle _Z19R_BeginRegistrationP11vidConfig_t_870
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jle _Z19R_BeginRegistrationP11vidConfig_t_870
	cmp eax, [ebp-0x30]
	jl _Z19R_BeginRegistrationP11vidConfig_t_220
	mov eax, [ebp-0x2c]
	cmp eax, [ebp-0x20]
	jle _Z19R_BeginRegistrationP11vidConfig_t_870
	jmp _Z19R_BeginRegistrationP11vidConfig_t_220
_Z19R_BeginRegistrationP11vidConfig_t_100:
	mov dword [esp+0x4], _cstring_no_valid_renderi
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19R_BeginRegistrationP11vidConfig_t_880
_Z19R_BeginRegistrationP11vidConfig_t_40:
	mov dword [esp+0x4], _cstring_getting_direct3d
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp], 0x20
	call Direct3DCreate9
	mov [dx_ctx+0x4], eax
	test eax, eax
	jnz _Z19R_BeginRegistrationP11vidConfig_t_890
	mov dword [esp+0x4], _cstring_direct3d_9_faile
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z19R_BeginRegistrationP11vidConfig_t_540
_Z19R_BeginRegistrationP11vidConfig_t_450:
	mov ecx, [ebp-0xc6c]
	mov [ebp-0x48], ecx
	jmp _Z19R_BeginRegistrationP11vidConfig_t_490


;R_ConfigureRenderer(GfxConfiguration const*)
_Z19R_ConfigureRendererPK16GfxConfiguration:
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
	jmp _Z20R_InitRenderCommandsv
	nop


;R_UpdateGpuSyncType()
_Z19R_UpdateGpuSyncTypev:
	push ebp
	mov ebp, esp
	mov eax, r_multiGpu
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19R_UpdateGpuSyncTypev_10
	mov eax, r_gpuSync
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [dx_ctx+0x2c58], eax
	pop ebp
	ret
_Z19R_UpdateGpuSyncTypev_10:
	xor eax, eax
	mov [dx_ctx+0x2c58], eax
	pop ebp
	ret


;R_IsUsingAdaptiveGpuSync()
_Z24R_IsUsingAdaptiveGpuSyncv:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [dx_ctx+0x2c58], 0x1
	setz al
	pop ebp
	ret
	nop


;R_SyncGpu(int (*)(unsigned long long))
_Z9R_SyncGpuPFiyE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov ecx, [dx_ctx+0x2c58]
	test ecx, ecx
	jnz _Z9R_SyncGpuPFiyE_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z9R_SyncGpuPFiyE_10:
	test ebx, ebx
	setnz al
	movzx esi, al
	rdtsc
	mov [dx_ctx+0x2c94], eax
	mov dword [dx_ctx+0x2c98], 0x0
	call _Z21R_AcquireGpuFenceLockv
_Z9R_SyncGpuPFiyE_60:
	call _Z21RB_IsGpuFenceFinishedv
	test al, al
	jnz _Z9R_SyncGpuPFiyE_20
_Z9R_SyncGpuPFiyE_50:
	rdtsc
	xor edx, edx
	mov [dx_ctx+0x2c9c], eax
	mov [dx_ctx+0x2ca0], edx
	sub eax, [dx_ctx+0x2c94]
	sbb edx, [dx_ctx+0x2c98]
	cmp edx, [dx_ctx+0x2c90]
	jb _Z9R_SyncGpuPFiyE_30
	ja _Z9R_SyncGpuPFiyE_20
	cmp eax, [dx_ctx+0x2c8c]
	jae _Z9R_SyncGpuPFiyE_20
_Z9R_SyncGpuPFiyE_30:
	test esi, esi
	jz _Z9R_SyncGpuPFiyE_40
	call _Z21R_ReleaseGpuFenceLockv
	mov eax, [dx_ctx+0x2c9c]
	mov edx, [dx_ctx+0x2ca0]
	mov [esp], eax
	mov [esp+0x4], edx
	call ebx
	mov esi, eax
	call _Z21R_AcquireGpuFenceLockv
	call _Z21RB_IsGpuFenceFinishedv
	test al, al
	jz _Z9R_SyncGpuPFiyE_50
_Z9R_SyncGpuPFiyE_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z21R_ReleaseGpuFenceLockv
_Z9R_SyncGpuPFiyE_40:
	mov dword [esp], 0x1
	call WinSleep
	jmp _Z9R_SyncGpuPFiyE_60


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

