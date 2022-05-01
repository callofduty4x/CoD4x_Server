;Imports of r_rendercmds:
	extern rg
	extern gfxBuf
	extern _Z26R_ToggleModelLightingFramev
	extern _Z11R_ResetMeshP11GfxMeshData
	extern Z_VirtualDecommitInternal
	extern _Z15CG_CalculateFPSv
	extern _Z21R_ConvertColorToBytesPKfPh
	extern memcpy
	extern _Z24CL_UpdateDebugClientDatav
	extern _Z22R_TransferDebugGlobalsP12DebugGlobals
	extern _Z16Sys_IsMainThreadv
	extern rgp
	extern r_lightTweakAmbient
	extern _Z19R_CheckDvarModifiedPK6dvar_s
	extern r_lightTweakDiffuseFraction
	extern r_lightTweakSunLight
	extern r_lightTweakAmbientColor
	extern r_lightTweakSunColor
	extern r_lightTweakSunDiffuseColor
	extern r_lightTweakSunDirection
	extern r_sun_from_dvars
	extern _Z17R_SetSunFromDvarsP10sunflare_t
	extern r_gpuSync
	extern r_multiGpu
	extern r_forceLod
	extern _Z17XModelSetTestLodsif
	extern r_colorMap
	extern r_showMissingLightGrid
	extern r_fullbright
	extern r_debugShader
	extern _Z18Dvar_ClearModifiedPK6dvar_s
	extern _Z16R_InitDrawMethodv
	extern r_outdoorFeather
	extern gfxCmdBufInput
	extern r_distortion
	extern _Z30Material_OverrideTechniqueSetsv
	extern _Z23CL_FlushDebugClientDatav
	extern r_skinCache
	extern useFastFile
	extern r_fastSkin
	extern _Z18R_LockSkinnedCachev
	extern _Z19R_UpdateGpuSyncTypev
	extern _Z28CL_GetLocalClientActiveCountv
	extern r_normalMap
	extern r_specularMap
	extern gfxRenderTargets
	extern _Z13Material_Sortv
	extern _Z19R_SortWorldSurfacesv
	extern _Z20R_ResetModelLightingv
	extern _Z23R_UpdateLightsFromDvarsv
	extern r_highLodDist
	extern r_mediumLodDist
	extern r_lowLodDist
	extern r_lowestLodDist
	extern _Z21R_AllocGlobalVariablejPKc
	extern _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	extern Z_VirtualReserve
	extern g_OptimizeVBTransfers
	extern gfxMeshGlob
	extern vidConfig
	extern _Z13R_SetQuadMeshP15GfxQuadMeshDataffffffffm
	extern _ZN10MacDisplay10Is1900CardEv
	extern _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm
	extern _Z20R_InitDynamicIndicesP17GfxDynamicIndicesi
	extern gfxCfg
	extern _Z26R_InitModelLightingGlobalsv
	extern _Z16R_InitDebugEntryP12DebugGlobals
	extern _Z18R_InitSceneBuffersv
	extern _Z20R_UnlockSkinnedCachev
	extern _Z17R_CheckLostDevicev
	extern g_disableRendering
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z23R_Cinematic_UpdateFramev
	extern _Z13RB_BeginFramePKv
	extern _Z9RB_Draw3Dv
	extern _Z28RB_CallExecuteRenderCommandsv
	extern _Z11RB_EndFramej
	extern _Z20R_FreeGlobalVariablePv
	extern alwaysfails
	extern Z_VirtualFreeInternal
	extern _Z18Material_IsDefaultPK8Material
	extern _Z16Material_GetNameP8Material
	extern _Z16Com_PrintWarningiPKcz
	extern dx_ctx
	extern _Z24R_ShutdownDynamicIndicesP17GfxDynamicIndices
	extern _Z30R_ShutdownModelLightingGlobalsv
	extern _Z20R_ShutdownDebugEntryP12DebugGlobals
	extern _Z22R_ShutdownSceneBuffersv
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern _Z17AngleNormalize360f

;Exports of r_rendercmds:
	global s_cmdList
	global s_renderCmdBufferSize
	global g_frameIndex
	global s_debugShaderConsts
	global g_frontEndCmds
	global g_viewInfo
	global s_backEndData
	global s_smpFrame
	global s_renderCmdWarnSize
	global _Z16R_ToggleSmpFramev
	global _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic
	global _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi
	global _Z10R_EndFramev
	global _Z12R_BeginFramev
	global _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	global _Z16R_AllocViewParmsv
	global _Z17R_AddCmdEndOfListv
	global _Z17R_InitDynamicMeshP11GfxMeshDatajjj
	global _Z17R_InitTempSkinBufv
	global _Z18R_AddCmdSaveScreeni
	global _Z18R_SyncRenderThreadv
	global _Z19R_AddCmdClearScreeniPKffh
	global _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material
	global _Z19R_InitRenderBuffersv
	global _Z20R_BeginSharedCmdListv
	global _Z20R_InitRenderCommandsv
	global _Z21R_AbortRenderCommandsv
	global _Z21R_IssueRenderCommandsj
	global _Z21R_ShutdownDynamicMeshP11GfxMeshData
	global _Z21R_ShutdownTempSkinBufv
	global _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	global _Z22R_BeginClientCmdList2Dv
	global _Z22R_ClearClientCmdList2Dv
	global _Z23R_AddCmdDrawConsoleTextPKciiiP6Font_sffffPKfi
	global _Z23R_AddCmdProjectionSet2Dv
	global _Z23R_ShutdownRenderBuffersv
	global _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h
	global _Z24R_ShutdownRenderCommandsv
	global _Z25R_AddCmdSaveScreenSectionffffi
	global _Z26R_AddCmdDrawTextWithCursorPKciP6Font_sfffffPKfiic
	global _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii
	global _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material
	global _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6_
	global _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material
	global _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material
	global _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4_
	global _Z36R_AddCmdBlendSavedScreenShockBlurrediffffi
	global _Z36R_AddCmdBlendSavedScreenShockFlashedffffff
	global frontEndDataOut


SECTION .text


;R_ToggleSmpFrame()
_Z16R_ToggleSmpFramev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, rg
	mov ebx, [esi+0x22dc]
	test ebx, ebx
	jz _Z16R_ToggleSmpFramev_10
_Z16R_ToggleSmpFramev_60:
	mov dword [s_smpFrame], 0x0
	mov edx, [esi+0x15c]
	add edx, 0x1
	mov [esi+0x15c], edx
	mov ebx, gfxBuf
	mov dword [ebx+0x7c], 0x0
	mov eax, [ebx+0x34]
	add eax, 0x1
	and eax, 0x80000001
	js _Z16R_ToggleSmpFramev_20
_Z16R_ToggleSmpFramev_70:
	mov [ebx+0x34], eax
	mov dword [frontEndDataOut], s_backEndData
	mov eax, [s_backEndData+0x11e69c]
	test eax, eax
	jnz _Z16R_ToggleSmpFramev_30
_Z16R_ToggleSmpFramev_50:
	mov eax, [frontEndDataOut]
	mov [eax+0x118250], edx
	mov edx, [esi+0x22dc]
	mov eax, [frontEndDataOut]
	mov [eax+0x11e6c4], edx
	mov edx, [g_frameIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x5
	sub eax, edx
	shl eax, 0x2
	sub eax, edx
	shl eax, 0x6
	add eax, g_viewInfo
	mov ecx, [frontEndDataOut]
	mov [ecx+0x11e6c8], eax
	shl edx, 0x4
	add edx, g_frontEndCmds
	mov eax, [frontEndDataOut]
	mov [eax+0x11e6bc], edx
	mov ecx, [esi+0x22dc]
	test ecx, ecx
	jnz _Z16R_ToggleSmpFramev_40
	call _Z26R_ToggleModelLightingFramev
_Z16R_ToggleSmpFramev_40:
	mov eax, [ebx+0x7c]
	shl eax, 0x4
	lea eax, [eax+ebx+0x4c]
	mov edx, [frontEndDataOut]
	mov [edx+0x11e690], eax
	mov eax, [ebx+0x34]
	shl eax, 0x4
	lea eax, [eax+ebx+0x10]
	mov [ebx+0x30], eax
	mov edx, [eax+0x8]
	mov eax, [frontEndDataOut]
	mov [eax+0x11e6a0], edx
	mov eax, [frontEndDataOut]
	mov dword [eax+0xf0220], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0xf0224], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x118228], 0x0
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e690]
	mov dword [eax], 0x0
	mov edx, [frontEndDataOut]
	mov eax, [edx+0x11e6bc]
	mov [s_cmdList], eax
	mov dword [edx+0x118254], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11e714], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x118258], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11825c], 0x1
	mov eax, [frontEndDataOut]
	mov dword [eax+0x118660], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x118664], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x118668], 0x0
	mov eax, [frontEndDataOut]
	add eax, 0xb0000
	mov [esp], eax
	call _Z11R_ResetMeshP11GfxMeshData
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11866c], 0x0
	mov eax, [frontEndDataOut]
	add eax, 0x11e670
	mov [esp], eax
	call _Z11R_ResetMeshP11GfxMeshData
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11e6a4], 0x0
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11e6cc], 0x0
	mov eax, [frontEndDataOut]
	add eax, 0x11e71c
	mov dword [eax+0x34], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x4], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16R_ToggleSmpFramev_30:
	mov eax, [s_backEndData+0x11e69c]
	mov [esp+0x4], eax
	mov eax, [s_backEndData+0x11e698]
	mov [esp], eax
	call Z_VirtualDecommitInternal
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11e69c], 0x0
	mov edx, [esi+0x15c]
	jmp _Z16R_ToggleSmpFramev_50
_Z16R_ToggleSmpFramev_10:
	call _Z15CG_CalculateFPSv
	jmp _Z16R_ToggleSmpFramev_60
_Z16R_ToggleSmpFramev_20:
	sub eax, 0x1
	or eax, 0xfffffffe
	add eax, 0x1
	jmp _Z16R_ToggleSmpFramev_70
	nop


;AddBaseDrawTextCmd(char const*, int, Font_s*, float, float, float, float, float, float const*, int, int, char)
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x25], al
	cmp byte [esi], 0x0
	jnz _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_10
	mov eax, [ebp+0x14]
	test eax, eax
	js _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_20
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	mov [ebp-0x1c], edx
	lea ebx, [ecx+0x53]
	and ebx, 0xfffffffc
	mov edi, [s_cmdList]
	mov ecx, [edi+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ecx
	add eax, [edi+0x8]
	sub eax, 0x2000
	cmp ebx, eax
	jg _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_30
	mov edx, ecx
	add edx, [edi]
	lea eax, [ebx+ecx]
	mov [edi+0x4], eax
	mov [edi+0xc], edx
	mov word [edx], 0xd
	mov [edx+0x2], bx
	mov edi, edx
	test edx, edx
	jz _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_20
	movss [edx+0x4], xmm0
	movss [edx+0x8], xmm1
	movss xmm0, dword [ebp+0x8]
	movss [edx+0xc], xmm0
	mov eax, [ebp-0x24]
	mov [edx+0x10], eax
	movss [edx+0x14], xmm2
	movss [edx+0x18], xmm3
	lea eax, [edx+0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z21R_ConvertColorToBytesPKfPh
	mov eax, [ebp-0x20]
	mov [edi+0x20], eax
	mov dword [edi+0x24], 0x0
	cmp dword [ebp+0x10], 0x3
	jz _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_40
	cmp dword [ebp+0x10], 0x6
	jz _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_50
	cmp dword [ebp+0x10], 0x80
	jz _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_60
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_80:
	cmp dword [ebp+0x14], 0xffffffff
	jle _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_70
	or dword [edi+0x24], 0x2
	mov edx, [ebp+0x14]
	mov [edi+0x28], edx
	movzx eax, byte [ebp-0x25]
	mov [edi+0x2c], al
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_70:
	lea eax, [edi+0x50]
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x1c]
	mov byte [eax+edi+0x50], 0x0
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_30:
	mov dword [edi+0xc], 0x0
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_20:
	xor edi, edi
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_50:
	mov dword [edi+0x24], 0xc
	jmp _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_80
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_40:
	mov dword [edi+0x24], 0x4
	jmp _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_80
_Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_60:
	mov dword [edi+0x24], 0x1
	jmp _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic_80
	nop


;AddBaseDrawConsoleTextCmd(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int)
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov edi, ecx
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jnz _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_10
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_30:
	xor ebx, ebx
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_80:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_10:
	mov esi, [ebp+0x8]
	add esi, 0x54
	and esi, 0xfffffffc
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp esi, eax
	jle _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_20
	mov dword [ecx+0xc], 0x0
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_30
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_20:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [esi+ebx]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xd
	mov [edx+0x2], si
	mov ebx, edx
	test edx, edx
	jz _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_30
	movss [edx+0x4], xmm0
	movss [edx+0x8], xmm1
	mov dword [edx+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [edx+0x10], eax
	movss [edx+0x14], xmm2
	movss [edx+0x18], xmm3
	lea eax, [edx+0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call _Z21R_ConvertColorToBytesPKfPh
	mov dword [ebx+0x20], 0x7fffffff
	mov dword [ebx+0x24], 0x0
	cmp dword [ebp+0x14], 0x3
	jz _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_40
	cmp dword [ebp+0x14], 0x6
	jz _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_50
	cmp dword [ebp+0x14], 0x80
	jz _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_60
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_100:
	mov esi, [ebp-0x20]
	sub esi, edi
	cmp [ebp+0x8], esi
	jg _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_70
	lea edx, [ebx+0x50]
	mov eax, [ebp-0x1c]
	add eax, edi
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_90:
	mov ecx, [ebp+0x8]
	mov byte [ecx+ebx+0x50], 0x0
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_80
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_70:
	lea edx, [ebx+0x50]
	mov eax, [ebp-0x1c]
	add eax, edi
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	lea edx, [esi+ebx+0x50]
	mov eax, [ebp+0x8]
	sub eax, esi
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_90
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_40:
	mov dword [ebx+0x24], 0x4
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_100
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_50:
	mov dword [ebx+0x24], 0xc
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_100
_Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_60:
	mov dword [ebx+0x24], 0x1
	jmp _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi_100


;R_EndFrame()
_Z10R_EndFramev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, rg
	cmp byte [eax+0x140], 0x0
	jnz _Z10R_EndFramev_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10R_EndFramev_10:
	call _Z24CL_UpdateDebugClientDatav
	mov eax, [frontEndDataOut]
	add eax, 0x11e71c
	mov [esp], eax
	call _Z22R_TransferDebugGlobalsP12DebugGlobals
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x3
	jg _Z10R_EndFramev_20
	mov dword [ecx+0xc], 0x0
_Z10R_EndFramev_30:
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e6bc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov eax, rg
	mov dword [eax+0x22dc], 0x0
	mov dword [g_frameIndex], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z10R_EndFramev_20:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x4]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x4
	mov [ecx+0xc], edx
	mov word [edx], 0x0
	mov word [edx+0x2], 0x4
	jmp _Z10R_EndFramev_30
	nop


;R_BeginFrame()
_Z12R_BeginFramev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, rg
	cmp byte [eax+0x140], 0x0
	jnz _Z12R_BeginFramev_10
_Z12R_BeginFramev_250:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12R_BeginFramev_10:
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z12R_BeginFramev_20
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	test ebx, ebx
	jz _Z12R_BeginFramev_30
	mov eax, r_lightTweakAmbient
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	mov ebx, eax
	mov eax, r_lightTweakDiffuseFraction
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	mov eax, r_lightTweakSunLight
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	mov eax, r_lightTweakAmbientColor
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	mov eax, r_lightTweakSunColor
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	mov eax, r_lightTweakSunDiffuseColor
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	mov eax, r_lightTweakSunDirection
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	jnz _Z12R_BeginFramev_40
_Z12R_BeginFramev_30:
	mov eax, r_sun_from_dvars
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12R_BeginFramev_50
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz _Z12R_BeginFramev_50
	add eax, 0x17c
	mov [esp], eax
	call _Z17R_SetSunFromDvarsP10sunflare_t
_Z12R_BeginFramev_50:
	mov eax, r_gpuSync
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	mov ebx, eax
	mov eax, r_multiGpu
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	or bl, al
	jnz _Z12R_BeginFramev_60
_Z12R_BeginFramev_280:
	mov ecx, r_forceLod
	mov edx, [ecx]
	mov eax, [edx+0xc]
	cmp eax, [edx+0x2c]
	jz _Z12R_BeginFramev_70
	xor ebx, ebx
	mov eax, [ecx]
	cmp [eax+0xc], ebx
	jz _Z12R_BeginFramev_80
_Z12R_BeginFramev_100:
	mov eax, 0x3a83126f
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17XModelSetTestLodsif
	add ebx, 0x1
	cmp ebx, 0x4
	jz _Z12R_BeginFramev_90
_Z12R_BeginFramev_110:
	mov ecx, r_forceLod
	mov eax, [ecx]
	cmp [eax+0xc], ebx
	jnz _Z12R_BeginFramev_100
_Z12R_BeginFramev_80:
	xor eax, eax
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17XModelSetTestLodsif
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z12R_BeginFramev_110
_Z12R_BeginFramev_90:
	mov eax, r_colorMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz _Z12R_BeginFramev_120
_Z12R_BeginFramev_310:
	mov edx, 0x1
_Z12R_BeginFramev_320:
	mov eax, rg
	mov [eax+0x2214], dl
	mov eax, r_showMissingLightGrid
	mov eax, [eax]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	test al, al
	jnz _Z12R_BeginFramev_130
_Z12R_BeginFramev_350:
	mov eax, r_fullbright
	mov edx, [eax]
	cmp byte [edx+0xb], 0x0
	jnz _Z12R_BeginFramev_140
	mov eax, r_debugShader
	mov eax, [eax]
	cmp byte [eax+0xb], 0x0
	jz _Z12R_BeginFramev_150
_Z12R_BeginFramev_140:
	mov [esp], edx
	call _Z18Dvar_ClearModifiedPK6dvar_s
	mov eax, r_debugShader
	mov eax, [eax]
	mov [esp], eax
	call _Z18Dvar_ClearModifiedPK6dvar_s
	call _Z16R_InitDrawMethodv
_Z12R_BeginFramev_150:
	mov ebx, r_outdoorFeather
	mov eax, [ebx]
	mov [esp], eax
	call _Z19R_CheckDvarModifiedPK6dvar_s
	test al, al
	jz _Z12R_BeginFramev_160
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov ebx, gfxCmdBufInput
	mov [ebx+0x300], eax
	mov [ebx+0x304], eax
	mov [ebx+0x308], eax
	mov [ebx+0x30c], eax
_Z12R_BeginFramev_330:
	mov eax, r_debugShader
	mov eax, [eax]
	mov eax, [eax+0xc]
	shl eax, 0x4
	lea edx, [eax+s_debugShaderConsts]
	mov eax, [eax+s_debugShaderConsts]
	mov [ebx+0x270], eax
	mov eax, [edx+0x4]
	mov [ebx+0x274], eax
	mov eax, [edx+0x8]
	mov [ebx+0x278], eax
	mov eax, [edx+0xc]
	mov [ebx+0x27c], eax
	mov eax, r_distortion
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12R_BeginFramev_170
_Z12R_BeginFramev_300:
	xor ecx, ecx
	xor edx, edx
_Z12R_BeginFramev_360:
	mov eax, rg
	mov [eax+0x226c], dl
	test cl, cl
	jnz _Z12R_BeginFramev_180
	xor eax, eax
_Z12R_BeginFramev_340:
	mov [ebx+0x3c8], eax
_Z12R_BeginFramev_20:
	call _Z30Material_OverrideTechniqueSetsv
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	test ecx, ecx
	jz _Z12R_BeginFramev_190
	mov edx, [eax+0x2000]
	test edx, edx
	jnz _Z12R_BeginFramev_200
_Z12R_BeginFramev_190:
	call _Z23CL_FlushDebugClientDatav
	mov eax, r_skinCache
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12R_BeginFramev_210
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12R_BeginFramev_220
_Z12R_BeginFramev_210:
	xor ecx, ecx
	xor eax, eax
_Z12R_BeginFramev_270:
	mov edx, gfxBuf
	mov [edx+0x24008d], al
	test cl, cl
	jz _Z12R_BeginFramev_230
	mov eax, r_fastSkin
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z12R_BeginFramev_240
_Z12R_BeginFramev_230:
	xor eax, eax
_Z12R_BeginFramev_260:
	mov [edx+0x24008c], al
	cmp byte [edx+0x24008d], 0x0
	jz _Z12R_BeginFramev_250
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z18R_LockSkinnedCachev
_Z12R_BeginFramev_240:
	mov eax, 0x1
	jmp _Z12R_BeginFramev_260
_Z12R_BeginFramev_220:
	mov ecx, 0x1
	mov eax, 0x1
	jmp _Z12R_BeginFramev_270
_Z12R_BeginFramev_60:
	call _Z19R_UpdateGpuSyncTypev
	jmp _Z12R_BeginFramev_280
_Z12R_BeginFramev_170:
	call _Z28CL_GetLocalClientActiveCountv
	sub eax, 0x1
	jz _Z12R_BeginFramev_290
	mov ebx, gfxCmdBufInput
	jmp _Z12R_BeginFramev_300
_Z12R_BeginFramev_120:
	mov eax, r_normalMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz _Z12R_BeginFramev_310
	mov eax, r_specularMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz _Z12R_BeginFramev_310
	xor edx, edx
	jmp _Z12R_BeginFramev_320
_Z12R_BeginFramev_160:
	mov ebx, gfxCmdBufInput
	jmp _Z12R_BeginFramev_330
_Z12R_BeginFramev_180:
	mov eax, gfxRenderTargets
	mov eax, [eax+0x3c]
	jmp _Z12R_BeginFramev_340
_Z12R_BeginFramev_200:
	mov dword [eax+0x2000], 0x0
	call _Z16Sys_IsMainThreadv
	call _Z13Material_Sortv
	call _Z19R_SortWorldSurfacesv
	jmp _Z12R_BeginFramev_190
_Z12R_BeginFramev_130:
	call _Z20R_ResetModelLightingv
	jmp _Z12R_BeginFramev_350
_Z12R_BeginFramev_40:
	call _Z23R_UpdateLightsFromDvarsv
	jmp _Z12R_BeginFramev_30
_Z12R_BeginFramev_70:
	mov eax, r_highLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z17XModelSetTestLodsif
	mov eax, r_mediumLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z17XModelSetTestLodsif
	mov eax, r_lowLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z17XModelSetTestLodsif
	mov eax, r_lowestLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z17XModelSetTestLodsif
	jmp _Z12R_BeginFramev_90
_Z12R_BeginFramev_290:
	mov ecx, 0x1
	mov edx, 0x1
	mov ebx, gfxCmdBufInput
	jmp _Z12R_BeginFramev_360
	nop


;R_AddCmdDrawText(char const*, int, Font_s*, float, float, float, float, float, float const*, int)
_Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xffffffff
	mov ebx, [ebp+0x2c]
	mov [esp+0x8], ebx
	mov ebx, [ebp+0x28]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x24]
	mov [esp], ebx
	movss xmm3, dword [ebp+0x20]
	movss xmm2, dword [ebp+0x1c]
	movss xmm1, dword [ebp+0x18]
	movss xmm0, dword [ebp+0x14]
	call _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;R_AllocViewParms()
_Z16R_AllocViewParmsv:
	push ebp
	mov ebp, esp
	mov edx, [frontEndDataOut]
	mov eax, [edx+0x11e6a4]
	lea ecx, [eax+0x1]
	mov [edx+0x11e6a4], ecx
	lea eax, [eax+eax*4]
	shl eax, 0x6
	lea eax, [eax+edx+0x68000]
	pop ebp
	ret
	nop


;R_AddCmdEndOfList()
_Z17R_AddCmdEndOfListv:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x3
	jg _Z17R_AddCmdEndOfListv_10
	mov dword [ecx+0xc], 0x0
	pop ebx
	pop ebp
	ret
_Z17R_AddCmdEndOfListv_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x4]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x4
	mov [ecx+0xc], edx
	mov word [edx], 0x0
	mov word [edx+0x2], 0x4
	pop ebx
	pop ebp
	ret


;R_InitDynamicMesh(GfxMeshData*, unsigned int, unsigned int, unsigned int)
_Z17R_InitDynamicMeshP11GfxMeshDatajjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0x14]
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	lea eax, [edi+edi]
	mov [esp], eax
	call _Z21R_AllocGlobalVariablejPKc
	mov [ebx+0x8], eax
	mov [ebx+0x4], edi
	mov dword [ebx], 0x0
	mov [ebx+0x1c], esi
	imul esi, [ebp-0x1c]
	mov [ebp+0xc], esi
	add ebx, 0xc
	mov [ebp+0x8], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	nop


;R_InitTempSkinBuf()
_Z17R_InitTempSkinBufv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x480000
	call Z_VirtualReserve
	mov [s_backEndData+0x11e698], eax
	leave
	ret
	nop


;R_AddCmdSaveScreen(int)
_Z18R_AddCmdSaveScreeni:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x7
	jg _Z18R_AddCmdSaveScreeni_10
	mov dword [ecx+0xc], 0x0
	xor edx, edx
	mov eax, [ebp+0x8]
	mov [edx+0x4], eax
	pop ebx
	pop ebp
	ret
_Z18R_AddCmdSaveScreeni_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x8]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x8
	mov [ecx+0xc], edx
	mov word [edx], 0x2
	mov word [edx+0x2], 0x8
	mov eax, [ebp+0x8]
	mov [edx+0x4], eax
	pop ebx
	pop ebp
	ret


;R_SyncRenderThread()
_Z18R_SyncRenderThreadv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_AddCmdClearScreen(int, float const*, float, unsigned char)
_Z19R_AddCmdClearScreeniPKffh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	movzx edi, byte [ebp+0x14]
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x1b
	jg _Z19R_AddCmdClearScreeniPKffh_10
	mov dword [ecx+0xc], 0x0
	xor ecx, ecx
_Z19R_AddCmdClearScreeniPKffh_20:
	mov eax, [ebp+0x8]
	mov [ecx+0x4], al
	mov eax, edi
	mov [ecx+0x5], al
	mov eax, [ebp+0x10]
	mov [ecx+0x8], eax
	lea edx, [ecx+0xc]
	mov eax, [esi]
	mov [ecx+0xc], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_AddCmdClearScreeniPKffh_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x1c
	mov [ecx+0xc], edx
	mov word [edx], 0x4
	mov word [edx+0x2], 0x1c
	mov ecx, edx
	jmp _Z19R_AddCmdClearScreeniPKffh_20
	nop


;R_AddCmdDrawQuadPic(float const (*) [2], float const*, Material*)
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov [ebp-0x10], eax
	mov eax, [ebp+0xc]
	mov [ebp-0x14], eax
	mov edi, [ebp+0x10]
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2b
	jg _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_10
	mov dword [ecx+0xc], 0x0
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xb
	mov word [edx+0x2], 0x2c
	mov esi, edx
	test edx, edx
	jz _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_20
	test edi, edi
	jz _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_30
	mov eax, edi
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_50:
	mov [esi+0x4], eax
	xor ebx, ebx
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_40:
	lea eax, [ebx*8]
	lea ecx, [esi+eax]
	add eax, [ebp-0x10]
	mov edx, [eax]
	mov [ecx+0x8], edx
	mov eax, [eax+0x4]
	mov [ecx+0xc], eax
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_40
	lea eax, [esi+0x28]
	mov [ebp+0xc], eax
	mov eax, [ebp-0x14]
	mov [ebp+0x8], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21R_ConvertColorToBytesPKfPh
_Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp _Z19R_AddCmdDrawQuadPicPA2_KfPS_P8Material_50
	add [eax], al


;R_InitRenderBuffers()
_Z19R_InitRenderBuffersv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, g_OptimizeVBTransfers
	mov byte [ebx], 0x1
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc000
	call _Z21R_AllocGlobalVariablejPKc
	mov [s_backEndData+0xb0008], eax
	mov dword [s_backEndData+0xb0004], 0x6000
	mov dword [s_backEndData+0xb0000], 0x0
	mov dword [s_backEndData+0xb001c], 0x20
	mov dword [esp+0x4], 0x80000
	mov dword [esp], s_backEndData+0xb000c
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0x4800
	call _Z21R_AllocGlobalVariablejPKc
	mov [s_backEndData+0x11e678], eax
	mov dword [s_backEndData+0x11e674], 0x2400
	mov dword [s_backEndData+0x11e670], 0x0
	mov dword [s_backEndData+0x11e68c], 0x2c
	mov dword [esp+0x4], 0x42000
	mov dword [esp], s_backEndData+0x11e67c
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	mov byte [ebx], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x28], 0x0
_Z19R_InitRenderBuffersv_20:
	xor edi, edi
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x20]
	lea esi, [eax+edx+0x5510]
_Z19R_InitRenderBuffersv_10:
	lea ebx, [esi+g_viewInfo]
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call _Z21R_AllocGlobalVariablejPKc
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [esi+g_viewInfo], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	add ebx, 0xc
	mov [esp], ebx
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	add edi, 0x1
	add esi, 0x20
	cmp edi, 0x4
	jnz _Z19R_InitRenderBuffersv_10
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x28], 0x67af
	cmp dword [ebp-0x20], 0x4
	jnz _Z19R_InitRenderBuffersv_20
	xor di, di
	mov esi, gfxMeshGlob
	lea ebx, [esi+0x10]
_Z19R_InitRenderBuffersv_50:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call _Z21R_AllocGlobalVariablejPKc
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, vidConfig
	mov edx, [eax+0x4]
	test edx, edx
	js _Z19R_InitRenderBuffersv_30
	cvtsi2ss xmm0, edx
_Z19R_InitRenderBuffersv_210:
	movss [esp+0x10], xmm0
	mov eax, vidConfig
	mov edx, [eax]
	test edx, edx
	js _Z19R_InitRenderBuffersv_40
	cvtsi2ss xmm0, edx
_Z19R_InitRenderBuffersv_200:
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z13R_SetQuadMeshP15GfxQuadMeshDataffffffffm
	add edi, 0x1
	add ebx, 0x30
	add esi, 0x30
	cmp edi, 0x4
	jnz _Z19R_InitRenderBuffersv_50
	pxor xmm0, xmm0
	movss [ebp-0x1c], xmm0
	xor esi, esi
	mov ebx, gfxMeshGlob
	add ebx, 0xc0
_Z19R_InitRenderBuffersv_90:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call _Z21R_AllocGlobalVariablejPKc
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_60
	mov edi, 0x43800000
_Z19R_InitRenderBuffersv_160:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_70
	mov eax, 0x43800000
_Z19R_InitRenderBuffersv_150:
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_80
	movss xmm0, dword [_float_256_00000000]
_Z19R_InitRenderBuffersv_140:
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x4
	jnz _Z19R_InitRenderBuffersv_90
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	xor si, si
	mov ebx, gfxMeshGlob
	add ebx, 0x140
_Z19R_InitRenderBuffersv_130:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call _Z21R_AllocGlobalVariablejPKc
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_100
	mov edi, 0x44000000
_Z19R_InitRenderBuffersv_190:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_110
	mov eax, 0x44000000
_Z19R_InitRenderBuffersv_180:
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz _Z19R_InitRenderBuffersv_120
	movss xmm0, dword [_float_512_00000000]
_Z19R_InitRenderBuffersv_170:
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x2
	jnz _Z19R_InitRenderBuffersv_130
	mov dword [esp+0x4], 0x100000
	mov eax, gfxBuf
	mov [esp], eax
	call _Z20R_InitDynamicIndicesP17GfxDynamicIndicesi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_InitRenderBuffersv_80:
	movss xmm0, dword [_float_512_00000000]
	jmp _Z19R_InitRenderBuffersv_140
_Z19R_InitRenderBuffersv_70:
	mov eax, 0x44000000
	jmp _Z19R_InitRenderBuffersv_150
_Z19R_InitRenderBuffersv_60:
	mov edi, 0x44000000
	jmp _Z19R_InitRenderBuffersv_160
_Z19R_InitRenderBuffersv_120:
	movss xmm0, dword [_float_1024_00000000]
	jmp _Z19R_InitRenderBuffersv_170
_Z19R_InitRenderBuffersv_110:
	mov eax, 0x44800000
	jmp _Z19R_InitRenderBuffersv_180
_Z19R_InitRenderBuffersv_100:
	mov edi, 0x44800000
	jmp _Z19R_InitRenderBuffersv_190
_Z19R_InitRenderBuffersv_40:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z19R_InitRenderBuffersv_200
_Z19R_InitRenderBuffersv_30:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z19R_InitRenderBuffersv_210


;R_BeginSharedCmdList()
_Z20R_BeginSharedCmdListv:
	push ebp
	mov ebp, esp
	mov eax, [s_cmdList]
	mov edx, [eax]
	add edx, [eax+0x4]
	mov eax, [frontEndDataOut]
	mov [eax+0x11e6cc], edx
	pop ebp
	ret


;R_InitRenderCommands()
_Z20R_InitRenderCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, gfxCfg
	mov eax, [eax]
	lea eax, [eax+eax*2]
	mov edx, eax
	shl edx, 0xf
	mov [s_renderCmdBufferSize], edx
	shl eax, 0x10
	add eax, edx
	js _Z20R_InitRenderCommandsv_10
_Z20R_InitRenderCommandsv_30:
	sar eax, 0x2
	mov [s_renderCmdWarnSize], eax
	call _Z26R_InitModelLightingGlobalsv
	mov dword [esp+0x4], _cstring_rendercmds
	mov eax, [s_renderCmdBufferSize]
	mov [esp], eax
	call _Z21R_AllocGlobalVariablejPKc
	mov [g_frontEndCmds], eax
	mov dword [esp], s_backEndData+0x11e71c
	call _Z16R_InitDebugEntryP12DebugGlobals
	call _Z18R_InitSceneBuffersv
	mov eax, [frontEndDataOut]
	test eax, eax
	jz _Z20R_InitRenderCommandsv_20
	mov eax, [eax+0x11e6bc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	leave
	ret
_Z20R_InitRenderCommandsv_10:
	add eax, 0x3
	jmp _Z20R_InitRenderCommandsv_30
_Z20R_InitRenderCommandsv_20:
	call _Z20R_UnlockSkinnedCachev
	leave
	jmp _Z16R_ToggleSmpFramev


;R_AbortRenderCommands()
_Z21R_AbortRenderCommandsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, rg
	cmp byte [ebx+0x140], 0x0
	jnz _Z21R_AbortRenderCommandsv_10
	add esp, 0x4
	pop ebx
	pop ebp
	ret
_Z21R_AbortRenderCommandsv_10:
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e6bc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	call _Z20R_UnlockSkinnedCachev
	mov dword [ebx+0x22dc], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	jmp _Z16R_ToggleSmpFramev
	nop


;R_IssueRenderCommands(unsigned int)
_Z21R_IssueRenderCommandsj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call _Z17R_CheckLostDevicev
	test al, al
	jz _Z21R_IssueRenderCommandsj_10
	mov eax, [frontEndDataOut]
	mov [eax+0x11e770], ebx
	and bl, 0x2
	jnz _Z21R_IssueRenderCommandsj_20
_Z21R_IssueRenderCommandsj_50:
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e690]
	mov eax, [eax]
	cmp eax, 0x40ffff
	seta al
	movzx eax, al
	mov edx, rg
	mov [edx+0x22f8], eax
	call _Z17R_CheckLostDevicev
	test al, al
	jz _Z21R_IssueRenderCommandsj_30
	mov eax, g_disableRendering
	mov eax, [eax]
	test eax, eax
	jz _Z21R_IssueRenderCommandsj_40
_Z21R_IssueRenderCommandsj_30:
	call _Z20R_UnlockSkinnedCachev
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z16R_ToggleSmpFramev
_Z21R_IssueRenderCommandsj_20:
	mov dword [esp+0x4], _cstring_dev_perf_counter
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	jmp _Z21R_IssueRenderCommandsj_50
_Z21R_IssueRenderCommandsj_10:
	call _Z23R_Cinematic_UpdateFramev
	call _Z20R_UnlockSkinnedCachev
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z16R_ToggleSmpFramev
_Z21R_IssueRenderCommandsj_40:
	mov eax, [frontEndDataOut]
	mov [esp], eax
	call _Z13RB_BeginFramePKv
	call _Z9RB_Draw3Dv
	call _Z28RB_CallExecuteRenderCommandsv
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e770]
	mov [esp], eax
	call _Z11RB_EndFramej
	call _Z20R_UnlockSkinnedCachev
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z16R_ToggleSmpFramev
	nop


;R_ShutdownDynamicMesh(GfxMeshData*)
_Z21R_ShutdownDynamicMeshP11GfxMeshData:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov edx, [ebx+0x14]
	test edx, edx
	jz _Z21R_ShutdownDynamicMeshP11GfxMeshData_10
	mov esi, alwaysfails
_Z21R_ShutdownDynamicMeshP11GfxMeshData_20:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz _Z21R_ShutdownDynamicMeshP11GfxMeshData_20
_Z21R_ShutdownDynamicMeshP11GfxMeshData_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_ShutdownTempSkinBuf()
_Z21R_ShutdownTempSkinBufv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [s_backEndData+0x11e698]
	test eax, eax
	jz _Z21R_ShutdownTempSkinBufv_10
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [s_backEndData+0x11e698], 0x0
	mov dword [s_backEndData+0x11e69c], 0x0
_Z21R_ShutdownTempSkinBufv_10:
	leave
	ret
	nop


;R_AddCmdDrawStretchPic(float, float, float, float, float, float, float, float, float const*, Material*)
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x28]
	mov [ebp-0x38], eax
	mov ebx, [ebp+0x2c]
	test ebx, ebx
	jz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_10
	mov esi, ebx
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_100:
	mov eax, [esi+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_20
	mov eax, [eax+0x20]
	test eax, eax
	jz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_30
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_20:
	mov eax, 0x1
	test eax, eax
	jnz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_40
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_80:
	test byte [esi+0x3d], 0x10
	jnz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_50
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_90:
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2b
	jg _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_60
	mov dword [ecx+0xc], 0x0
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_60:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x6
	mov word [edx+0x2], 0x2c
	mov eax, edx
	test edx, edx
	jz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_70
	mov [edx+0x4], esi
	mov [edx+0x8], edi
	movss xmm0, dword [ebp-0x1c]
	movss [edx+0xc], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [edx+0x18], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [edx+0x1c], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [edx+0x20], xmm0
	movss xmm0, dword [ebp-0x34]
	movss [edx+0x24], xmm0
	add eax, 0x28
	mov [ebp+0xc], eax
	mov eax, [ebp-0x38]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21R_ConvertColorToBytesPKfPh
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_30:
	xor eax, eax
	test eax, eax
	jz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_80
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_40:
	mov [esp], esi
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jnz _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_80
	mov [esp], ebx
	call _Z16Material_GetNameP8Material
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_90
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_50:
	mov [esp], ebx
	call _Z16Material_GetNameP8Material
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre1
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_90
_Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_10:
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material_100


;R_BeginClientCmdList2D()
_Z22R_BeginClientCmdList2Dv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [frontEndDataOut]
	mov ebx, [s_cmdList]
	mov ecx, [eax+0x11e6c4]
	mov esi, [eax+0x11e6c8]
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	shl eax, 0x4
	add eax, ecx
	mov edx, eax
	shl edx, 0x7
	sub edx, eax
	add edx, ecx
	mov eax, [ebx]
	add eax, [ebx+0x4]
	mov [edx+esi+0x5688], eax
	pop ebx
	pop esi
	pop ebp
	ret


;R_ClearClientCmdList2D()
_Z22R_ClearClientCmdList2Dv:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [frontEndDataOut]
	mov ecx, [eax+0x11e6c4]
	mov ebx, [eax+0x11e6c8]
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	shl eax, 0x4
	add eax, ecx
	mov edx, eax
	shl edx, 0x7
	sub edx, eax
	add edx, ecx
	mov dword [edx+ebx+0x5688], 0x0
	pop ebx
	pop ebp
	ret
	nop


;R_AddCmdDrawConsoleText(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int)
_Z23R_AddCmdDrawConsoleTextPKciiiP6Font_sffffPKfi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x30]
	mov [esp+0xc], ebx
	mov ebx, [ebp+0x2c]
	mov [esp+0x8], ebx
	mov ebx, [ebp+0x18]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	movss xmm3, dword [ebp+0x28]
	movss xmm2, dword [ebp+0x24]
	movss xmm1, dword [ebp+0x20]
	movss xmm0, dword [ebp+0x1c]
	call _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddCmdProjectionSet2D()
_Z23R_AddCmdProjectionSet2Dv:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x7
	jg _Z23R_AddCmdProjectionSet2Dv_10
	mov dword [ecx+0xc], 0x0
_Z23R_AddCmdProjectionSet2Dv_20:
	pop ebx
	pop ebp
	ret
_Z23R_AddCmdProjectionSet2Dv_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x8]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x14
	mov word [edx+0x2], 0x8
	test edx, edx
	jz _Z23R_AddCmdProjectionSet2Dv_20
	mov dword [edx+0x4], 0x0
	pop ebx
	pop ebp
	ret
	nop


;R_ShutdownRenderBuffers()
_Z23R_ShutdownRenderBuffersv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [s_backEndData+0x11e694], 0x0
	mov dword [s_backEndData+0x11e6a0], 0x0
	mov esi, s_backEndData+0xb0000
	mov eax, [s_backEndData+0xb0008]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov ebx, [s_backEndData+0xb0014]
	test ebx, ebx
	jz _Z23R_ShutdownRenderBuffersv_10
	mov ebx, alwaysfails
_Z23R_ShutdownRenderBuffersv_20:
	mov eax, [s_backEndData+0xb0014]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [esi+0x14], 0x0
	mov ecx, [ebx]
	test ecx, ecx
	jnz _Z23R_ShutdownRenderBuffersv_20
_Z23R_ShutdownRenderBuffersv_10:
	mov esi, s_backEndData+0x11e670
	mov eax, [s_backEndData+0x11e678]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov edx, [s_backEndData+0x11e684]
	test edx, edx
	jz _Z23R_ShutdownRenderBuffersv_30
	mov ebx, alwaysfails
_Z23R_ShutdownRenderBuffersv_40:
	mov eax, [s_backEndData+0x11e684]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [esi+0x14], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z23R_ShutdownRenderBuffersv_40
_Z23R_ShutdownRenderBuffersv_30:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov edi, alwaysfails
_Z23R_ShutdownRenderBuffersv_80:
	xor esi, esi
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	lea ebx, [eax+edx+g_viewInfo+0x5510]
_Z23R_ShutdownRenderBuffersv_70:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov eax, [ebx+0x14]
	test eax, eax
	jz _Z23R_ShutdownRenderBuffersv_50
_Z23R_ShutdownRenderBuffersv_60:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [edi]
	test eax, eax
	jnz _Z23R_ShutdownRenderBuffersv_60
_Z23R_ShutdownRenderBuffersv_50:
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x4
	jnz _Z23R_ShutdownRenderBuffersv_70
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x20], 0x67af
	cmp dword [ebp-0x1c], 0x4
	jnz _Z23R_ShutdownRenderBuffersv_80
	mov eax, dx_ctx
	mov dword [eax+0x2cd4], 0x0
	xor edi, edi
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0x10
_Z23R_ShutdownRenderBuffersv_110:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov eax, [ebx+0x14]
	test eax, eax
	jz _Z23R_ShutdownRenderBuffersv_90
_Z23R_ShutdownRenderBuffersv_100:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz _Z23R_ShutdownRenderBuffersv_100
_Z23R_ShutdownRenderBuffersv_90:
	add edi, 0x1
	add ebx, 0x30
	cmp edi, 0x4
	jnz _Z23R_ShutdownRenderBuffersv_110
	xor di, di
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0xc0
_Z23R_ShutdownRenderBuffersv_140:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov eax, [ebx+0x14]
	test eax, eax
	jz _Z23R_ShutdownRenderBuffersv_120
_Z23R_ShutdownRenderBuffersv_130:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov ecx, [esi]
	test ecx, ecx
	jnz _Z23R_ShutdownRenderBuffersv_130
_Z23R_ShutdownRenderBuffersv_120:
	add edi, 0x1
	add ebx, 0x20
	cmp edi, 0x4
	jnz _Z23R_ShutdownRenderBuffersv_140
	xor di, di
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0x140
_Z23R_ShutdownRenderBuffersv_170:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov edx, [ebx+0x14]
	test edx, edx
	jz _Z23R_ShutdownRenderBuffersv_150
_Z23R_ShutdownRenderBuffersv_160:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz _Z23R_ShutdownRenderBuffersv_160
_Z23R_ShutdownRenderBuffersv_150:
	add edi, 0x1
	add ebx, 0x20
	cmp edi, 0x2
	jnz _Z23R_ShutdownRenderBuffersv_170
	mov eax, gfxBuf
	mov [esp], eax
	call _Z24R_ShutdownDynamicIndicesP17GfxDynamicIndices
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AddCmdDrawTextSubtitle(char const*, int, Font_s*, float, float, float, float, float, float const*, int, float const*, unsigned char)
_Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov edi, [ebp+0x30]
	movzx esi, byte [ebp+0x34]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xffffffff
	mov ebx, [ebp+0x2c]
	mov [esp+0x8], ebx
	mov ebx, [ebp+0x28]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x24]
	mov [esp], ebx
	movss xmm3, dword [ebp+0x20]
	movss xmm2, dword [ebp+0x1c]
	movss xmm1, dword [ebp+0x18]
	movss xmm0, dword [ebp+0x14]
	call _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic
	mov ecx, eax
	test eax, eax
	jz _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_10
	mov eax, esi
	test al, al
	jz _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_20
	mov edx, [ecx+0x24]
	or dh, 0x2
	mov [ecx+0x24], edx
_Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_40:
	mov eax, edx
	or dh, 0x1
	mov [ecx+0x24], edx
	test edi, edi
	jz _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_10
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0xc]
	jp _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_30
	jz _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_10
_Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_30:
	or eax, 0x130
	mov [ecx+0x24], eax
	movss xmm0, dword [_float_0_10000000]
	movss xmm1, dword [edi]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [edi+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [edi+0x8]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0xc]
	mov ebx, [ebp+0x28]
	mulss xmm0, [ebx+0xc]
	movss [ebp-0x1c], xmm0
	lea eax, [ecx+0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
_Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_20:
	mov edx, [ecx+0x24]
	jmp _Z24R_AddCmdDrawTextSubtitlePKciP6Font_sfffffPKfiS4_h_40
	nop


;R_ShutdownRenderCommands()
_Z24R_ShutdownRenderCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z30R_ShutdownModelLightingGlobalsv
	mov eax, [s_backEndData+0x11e6bc]
	mov eax, [eax]
	mov [esp], eax
	call _Z20R_FreeGlobalVariablePv
	mov dword [esp], s_backEndData+0x11e71c
	call _Z20R_ShutdownDebugEntryP12DebugGlobals
	leave
	jmp _Z22R_ShutdownSceneBuffersv


;R_AddCmdSaveScreenSection(float, float, float, float, int)
_Z25R_AddCmdSaveScreenSectionffffi:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x17
	jg _Z25R_AddCmdSaveScreenSectionffffi_10
	mov dword [ecx+0xc], 0x0
	xor edx, edx
	mov eax, [ebp+0x8]
	mov [edx+0x4], eax
	mov eax, [ebp+0xc]
	mov [edx+0x8], eax
	mov eax, [ebp+0x10]
	mov [edx+0xc], eax
	mov eax, [ebp+0x14]
	mov [edx+0x10], eax
	mov eax, [ebp+0x18]
	mov [edx+0x14], eax
	pop ebx
	pop ebp
	ret
_Z25R_AddCmdSaveScreenSectionffffi_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x18]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x18
	mov [ecx+0xc], edx
	mov word [edx], 0x3
	mov word [edx+0x2], 0x18
	mov eax, [ebp+0x8]
	mov [edx+0x4], eax
	mov eax, [ebp+0xc]
	mov [edx+0x8], eax
	mov eax, [ebp+0x10]
	mov [edx+0xc], eax
	mov eax, [ebp+0x14]
	mov [edx+0x10], eax
	mov eax, [ebp+0x18]
	mov [edx+0x14], eax
	pop ebx
	pop ebp
	ret


;R_AddCmdDrawTextWithCursor(char const*, int, Font_s*, float, float, float, float, float, float const*, int, int, char)
_Z26R_AddCmdDrawTextWithCursorPKciP6Font_sfffffPKfiic:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movsx ebx, byte [ebp+0x34]
	mov [esp+0x10], ebx
	mov ebx, [ebp+0x30]
	mov [esp+0xc], ebx
	mov ebx, [ebp+0x2c]
	mov [esp+0x8], ebx
	mov ebx, [ebp+0x28]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x24]
	mov [esp], ebx
	movss xmm3, dword [ebp+0x20]
	movss xmm2, dword [ebp+0x1c]
	movss xmm1, dword [ebp+0x18]
	movss xmm0, dword [ebp+0x14]
	call _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;R_AddCmdDrawTextWithEffects(char const*, int, Font_s*, float, float, float, float, float, float const*, int, float const*, Material*, Material*, int, int, int, int)
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x34]
	mov edi, [ebp+0x38]
	test esi, esi
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_10
	mov ebx, esi
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_180:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_30
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_20:
	mov eax, 0x1
	test eax, eax
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_40
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_140:
	test edi, edi
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_50
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_160:
	mov ebx, edi
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_170:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_60
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_120:
	mov eax, 0x1
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_130:
	test eax, eax
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_70
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_110:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xffffffff
	mov eax, [ebp+0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	movss xmm0, dword [ebp+0x24]
	movss [esp], xmm0
	movss xmm3, dword [ebp+0x20]
	movss xmm2, dword [ebp+0x1c]
	movss xmm1, dword [ebp+0x18]
	movss xmm0, dword [ebp+0x14]
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z18AddBaseDrawTextCmdPKciP6Font_sfffffPKfiic
	mov ebx, eax
	test eax, eax
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_80
	mov eax, [ebp+0x30]
	test eax, eax
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_90
	pxor xmm0, xmm0
	mov eax, [ebp+0x30]
	ucomiss xmm0, [eax+0xc]
	jp _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_100
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_100
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_90:
	test esi, esi
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_80
	test edi, edi
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_80
	mov eax, [ebp+0x3c]
	test eax, eax
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_80
	or dword [ebx+0x24], 0xc0
	mov [ebx+0x44], esi
	mov [ebx+0x48], edi
	mov eax, [ebp+0x3c]
	mov [ebx+0x34], eax
	mov eax, [ebp+0x40]
	mov [ebx+0x38], eax
	mov eax, [ebp+0x44]
	mov [ebx+0x3c], eax
	mov eax, [ebp+0x48]
	mov [ebx+0x40], eax
	mov dword [ebx+0x4c], 0x0
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_70:
	mov [esp], ebx
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_110
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_150:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_60:
	mov eax, [eax+0x20]
	test eax, eax
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_120
	xor eax, eax
	jmp _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_130
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_30:
	xor eax, eax
	test eax, eax
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_140
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_40:
	mov [esp], ebx
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_150
	test edi, edi
	jnz _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_160
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_50:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_170
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_100:
	or dword [ebx+0x24], 0x30
	movss xmm0, dword [_float_0_10000000]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [eax+0x8]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0xc]
	mov eax, [ebp+0x28]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x1c], xmm0
	lea eax, [ebx+0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	jmp _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_90
_Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_10:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp _Z27R_AddCmdDrawTextWithEffectsPKciP6Font_sfffffPKfiS4_P8MaterialS6_iiii_180


;R_AddCmdDrawStretchPicFlipST(float, float, float, float, float, float, float, float, float const*, Material*)
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x28]
	mov [ebp-0x38], eax
	mov ebx, [ebp+0x2c]
	test ebx, ebx
	jz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_10
	mov esi, ebx
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_100:
	mov eax, [esi+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_30
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_20:
	mov eax, 0x1
	test eax, eax
	jnz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_40
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_80:
	test byte [esi+0x3d], 0x10
	jnz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_50
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_90:
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2b
	jg _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_60
	mov dword [ecx+0xc], 0x0
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_60:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x7
	mov word [edx+0x2], 0x2c
	mov eax, edx
	test edx, edx
	jz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_70
	mov [edx+0x4], esi
	mov [edx+0x8], edi
	movss xmm0, dword [ebp-0x1c]
	movss [edx+0xc], xmm0
	movss xmm0, dword [ebp-0x20]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [edx+0x18], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [edx+0x1c], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [edx+0x20], xmm0
	movss xmm0, dword [ebp-0x34]
	movss [edx+0x24], xmm0
	add eax, 0x28
	mov [ebp+0xc], eax
	mov eax, [ebp-0x38]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21R_ConvertColorToBytesPKfPh
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_30:
	xor eax, eax
	test eax, eax
	jz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_80
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_40:
	mov [esp], esi
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jnz _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_80
	mov [esp], ebx
	call _Z16Material_GetNameP8Material
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre2
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_90
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_50:
	mov [esp], ebx
	call _Z16Material_GetNameP8Material
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre3
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_90
_Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_10:
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp _Z28R_AddCmdDrawStretchPicFlipSTffffffffPKfP8Material_100


;R_AddCmdDrawConsoleTextPulseFX(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int, float const*, int, int, int, int, Material*, Material*)
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x48]
	mov edi, [ebp+0x4c]
	test esi, esi
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__10
	mov ebx, esi
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__180:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__30
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__20:
	mov eax, 0x1
	test eax, eax
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__40
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__140:
	test edi, edi
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__50
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__160:
	mov ebx, edi
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__170:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__60
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__120:
	mov eax, 0x1
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__130:
	test eax, eax
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__70
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__110:
	mov eax, [ebp+0x30]
	mov [esp+0xc], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	movss xmm3, dword [ebp+0x28]
	movss xmm2, dword [ebp+0x24]
	movss xmm1, dword [ebp+0x20]
	movss xmm0, dword [ebp+0x1c]
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi
	mov ebx, eax
	test eax, eax
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__80
	mov eax, [ebp+0x34]
	test eax, eax
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__90
	pxor xmm0, xmm0
	mov eax, [ebp+0x34]
	ucomiss xmm0, [eax+0xc]
	jp _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__100
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__100
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__90:
	test esi, esi
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__80
	test edi, edi
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__80
	mov eax, [ebp+0x38]
	test eax, eax
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__80
	or dword [ebx+0x24], 0xc0
	mov [ebx+0x44], esi
	mov [ebx+0x48], edi
	mov eax, [ebp+0x38]
	mov [ebx+0x34], eax
	mov eax, [ebp+0x3c]
	mov [ebx+0x38], eax
	mov eax, [ebp+0x40]
	mov [ebx+0x3c], eax
	mov eax, [ebp+0x44]
	mov [ebx+0x40], eax
	mov dword [ebx+0x4c], 0x0
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__70:
	mov [esp], ebx
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__110
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__150:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__60:
	mov eax, [eax+0x20]
	test eax, eax
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__120
	xor eax, eax
	jmp _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__130
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__30:
	xor eax, eax
	test eax, eax
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__140
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__40:
	mov [esp], ebx
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__150
	test edi, edi
	jnz _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__160
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__50:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__170
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__100:
	or dword [ebx+0x24], 0x30
	movss xmm0, dword [_float_0_10000000]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [eax+0x8]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0xc]
	mov eax, [ebp+0x2c]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x1c], xmm0
	lea eax, [ebx+0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	jmp _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__90
_Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__10:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6__180
	nop


;R_AddCmdDrawStretchPicRotateST(float, float, float, float, float, float, float, float, float, float, float const*, Material*)
_Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x33
	jg _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_10
	mov dword [ecx+0xc], 0x0
_Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x34]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x9
	mov word [edx+0x2], 0x34
	mov ebx, edx
	test edx, edx
	jz _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_20
	mov eax, [ebp+0x34]
	test eax, eax
	jz _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_30
	mov eax, [ebp+0x34]
_Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_40:
	mov [ebx+0x4], eax
	movss xmm0, dword [ebp+0x8]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [ebx+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebx+0x10], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebx+0x14], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebx+0x18], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [ebx+0x1c], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [ebx+0x20], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [ebx+0x24], xmm0
	movss xmm0, dword [ebp+0x28]
	movss [ebx+0x28], xmm0
	lea eax, [ebx+0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x30]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	movss xmm0, dword [ebp+0x2c]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebx+0x30]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp _Z30R_AddCmdDrawStretchPicRotateSTffffffffffPKfP8Material_40
	add [eax], al


;R_AddCmdDrawStretchPicRotateXY(float, float, float, float, float, float, float, float, float, float const*, Material*)
_Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2f
	jg _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_10
	mov dword [ecx+0xc], 0x0
_Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x30]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x8
	mov word [edx+0x2], 0x30
	mov ebx, edx
	test edx, edx
	jz _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_20
	mov ecx, [ebp+0x30]
	test ecx, ecx
	jz _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_30
	mov eax, [ebp+0x30]
_Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_40:
	mov [ebx+0x4], eax
	movss xmm0, dword [ebp+0x8]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [ebx+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [ebx+0x10], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebx+0x14], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebx+0x18], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [ebx+0x1c], xmm0
	movss xmm0, dword [ebp+0x20]
	movss [ebx+0x20], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [ebx+0x24], xmm0
	lea eax, [ebx+0x28]
	mov [esp+0x4], eax
	mov eax, [ebp+0x2c]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	movss xmm0, dword [ebp+0x28]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebx+0x2c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp _Z30R_AddCmdDrawStretchPicRotateXYfffffffffPKfP8Material_40


;R_AddCmdDrawConsoleTextSubtitle(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int, float const*)
_Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov edi, [ebp+0x2c]
	mov esi, [ebp+0x34]
	mov ebx, [ebp+0x30]
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov ebx, [ebp+0x18]
	mov [esp+0x4], ebx
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	movss xmm3, dword [ebp+0x28]
	movss xmm2, dword [ebp+0x24]
	movss xmm1, dword [ebp+0x20]
	movss xmm0, dword [ebp+0x1c]
	call _Z25AddBaseDrawConsoleTextCmdPKciiiP6Font_sffffPKfi
	mov ecx, eax
	test eax, eax
	jz _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__10
	mov edx, [eax+0x24]
	mov eax, edx
	or ah, 0x1
	mov [ecx+0x24], eax
	test esi, esi
	jz _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__10
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0xc]
	jp _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__20
	jnz _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__20
_Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4__20:
	or edx, 0x130
	mov [ecx+0x24], edx
	movss xmm0, dword [_float_0_10000000]
	movss xmm1, dword [esi]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [esi+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [esi+0x8]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm0, [edi+0xc]
	movss [ebp-0x1c], xmm0
	lea eax, [ecx+0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_AddCmdBlendSavedScreenShockBlurred(int, float, float, float, float, int)
_Z36R_AddCmdBlendSavedScreenShockBlurrediffffi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	test esi, esi
	jle _Z36R_AddCmdBlendSavedScreenShockBlurrediffffi_10
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x1b
	jle _Z36R_AddCmdBlendSavedScreenShockBlurrediffffi_20
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xf
	mov word [edx+0x2], 0x1c
	mov eax, edx
	test edx, edx
	jz _Z36R_AddCmdBlendSavedScreenShockBlurrediffffi_10
	mov [edx+0x4], esi
	movss xmm0, dword [ebp+0xc]
	movss [edx+0x8], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [edx+0xc], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [edx+0x14], xmm0
	mov edx, [ebp+0x1c]
	mov [eax+0x18], edx
_Z36R_AddCmdBlendSavedScreenShockBlurrediffffi_10:
	pop ebx
	pop esi
	pop ebp
	ret
_Z36R_AddCmdBlendSavedScreenShockBlurrediffffi_20:
	mov dword [ecx+0xc], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_AddCmdBlendSavedScreenShockFlashed(float, float, float, float, float, float)
_Z36R_AddCmdBlendSavedScreenShockFlashedffffff:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x1b
	jg _Z36R_AddCmdBlendSavedScreenShockFlashedffffff_10
	mov dword [ecx+0xc], 0x0
_Z36R_AddCmdBlendSavedScreenShockFlashedffffff_20:
	pop ebx
	pop ebp
	ret
_Z36R_AddCmdBlendSavedScreenShockFlashedffffff_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x10
	mov word [edx+0x2], 0x1c
	test edx, edx
	jz _Z36R_AddCmdBlendSavedScreenShockFlashedffffff_20
	movss xmm0, dword [ebp+0x8]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [edx+0x8], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [edx+0xc], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [edx+0x18], xmm0
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of r_rendercmds:
SECTION .data


;Initialized constant data of r_rendercmds:
SECTION .rdata
s_debugShaderConsts: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_rendercmds:
SECTION .bss
s_cmdList: resb 0x4
s_renderCmdBufferSize: resb 0x4
g_frameIndex: resb 0x4
g_frontEndCmds: resb 0x14
g_viewInfo: resb 0x19ee0
s_backEndData: resb 0x11e780
s_smpFrame: resb 0x4
s_renderCmdWarnSize: resb 0x7c
frontEndDataOut: resb 0x1c


;All cstrings:
SECTION .rdata
_cstring_r_initdynamicmes:		db "R_InitDynamicMesh",0
_cstring_rendercmds:		db "rendercmds",0
_cstring_dev_perf_counter:		db "dev perf counters",0
_cstring_r_addcmddrawstre:		db "R_AddCmdDrawStretchPic: NOT DRAWING WITH MATERIAL ",22h,"%s",22h,", because it has a fogable technique.",0ah,0
_cstring_r_addcmddrawstre1:		db "R_AddCmdDrawStretchPic: NOT DRAWING WITH MATERIAL ",22h,"%s",22h,", because it uses the depth buffer. Set materialType to 2d.",0ah,0
_cstring_r_addcmddrawstre2:		db "R_AddCmdDrawStretchPicFlipST: NOT DRAWING WITH MATERIAL ",22h,"%s",22h,", because it has a fogable technique.",0ah,0
_cstring_r_addcmddrawstre3:		db "R_AddCmdDrawStretchPicFlipST: NOT DRAWING WITH MATERIAL ",22h,"%s",22h,", because it uses the depth buffer. Set materialType to 2d.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_256_00000000:		dd 0x43800000	; 256
_float_512_00000000:		dd 0x44000000	; 512
_float_1024_00000000:		dd 0x44800000	; 1024
_float_0_10000000:		dd 0x3dcccccd	; 0.1

