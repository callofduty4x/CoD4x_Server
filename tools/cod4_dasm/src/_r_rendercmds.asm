;Imports of r_rendercmds:
	extern rg
	extern gfxBuf
	extern R_ToggleModelLightingFrame
	extern R_ResetMesh
	extern Z_VirtualDecommitInternal
	extern CG_CalculateFPS
	extern R_ConvertColorToBytes
	extern memcpy
	extern CL_UpdateDebugClientData
	extern R_TransferDebugGlobals
	extern Sys_IsMainThread
	extern rgp
	extern r_lightTweakAmbient
	extern R_CheckDvarModified
	extern r_lightTweakDiffuseFraction
	extern r_lightTweakSunLight
	extern r_lightTweakAmbientColor
	extern r_lightTweakSunColor
	extern r_lightTweakSunDiffuseColor
	extern r_lightTweakSunDirection
	extern r_sun_from_dvars
	extern R_SetSunFromDvars
	extern r_gpuSync
	extern r_multiGpu
	extern r_forceLod
	extern XModelSetTestLods
	extern r_colorMap
	extern r_showMissingLightGrid
	extern r_fullbright
	extern r_debugShader
	extern Cvar_ClearModified
	extern R_InitDrawMethod
	extern r_outdoorFeather
	extern gfxCmdBufInput
	extern r_distortion
	extern Material_OverrideTechniqueSets
	extern CL_FlushDebugClientData
	extern r_skinCache
	extern useFastFile
	extern r_fastSkin
	extern R_LockSkinnedCache
	extern R_UpdateGpuSyncType
	extern CL_GetLocalClientActiveCount
	extern r_normalMap
	extern r_specularMap
	extern gfxRenderTargets
	extern Material_Sort
	extern R_SortWorldSurfaces
	extern R_ResetModelLighting
	extern R_UpdateLightsFromDvars
	extern r_highLodDist
	extern r_mediumLodDist
	extern r_lowLodDist
	extern r_lowestLodDist
	extern R_AllocGlobalVariable
	extern R_InitDynamicVertexBufferState
	extern g_assetEntryPool
	extern Z_VirtualReserve
	extern g_OptimizeVBTransfers
	extern gfxMeshGlob
	extern vidConfig
	extern R_SetQuadMesh
	extern _ZN10MacDisplay10Is1900CardEv
	extern R_SetQuadMeshData
	extern R_InitDynamicIndices
	extern gfxCfg
	extern R_InitModelLightingGlobals
	extern R_InitDebugEntry
	extern R_InitSceneBuffers
	extern R_UnlockSkinnedCache
	extern R_CheckLostDevice
	extern _ZZ17CL_CheckForResendiE9msgBuffer
	extern g_disableRendering
	extern PIXBeginNamedEvent
	extern R_Cinematic_UpdateFrame
	extern RB_BeginFrame
	extern RB_Draw3D
	extern RB_CallExecuteRenderCommands
	extern RB_EndFrame
	extern R_FreeGlobalVariable
	extern alwaysfails
	extern Z_VirtualFreeInternal
	extern Material_IsDefault
	extern Material_GetName
	extern Com_PrintWarning
	extern dx_ctx
	extern R_ShutdownDynamicIndices
	extern R_ShutdownModelLightingGlobals
	extern R_ShutdownDebugEntry
	extern R_ShutdownSceneBuffers
	extern R_WarnOncePerFrame
	extern AngleNormalize360

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
	global R_ToggleSmpFrame
	global AddBaseDrawTextCmd
	global AddBaseDrawConsoleTextCmd
	global R_EndFrame
	global R_BeginFrame
	global R_AddCmdDrawText
	global R_AllocViewParms
	global R_AddCmdEndOfList
	global R_InitDynamicMesh
	global R_InitTempSkinBuf
	global R_AddCmdSaveScreen
	global R_SyncRenderThread
	global R_AddCmdClearScreen
	global R_AddCmdDrawQuadPic
	global R_InitRenderBuffers
	global R_BeginSharedCmdList
	global R_InitRenderCommands
	global R_AbortRenderCommands
	global R_IssueRenderCommands
	global R_ShutdownDynamicMesh
	global R_ShutdownTempSkinBuf
	global R_AddCmdDrawStretchPic
	global R_BeginClientCmdList2D
	global R_ClearClientCmdList2D
	global R_AddCmdDrawConsoleText
	global R_AddCmdProjectionSet2D
	global R_ShutdownRenderBuffers
	global R_AddCmdDrawTextSubtitle
	global R_ShutdownRenderCommands
	global R_AddCmdSaveScreenSection
	global R_AddCmdDrawTextWithCursor
	global R_AddCmdDrawTextWithEffects
	global R_AddCmdDrawStretchPicFlipST
	global R_AddCmdDrawConsoleTextPulseFX
	global R_AddCmdDrawStretchPicRotateST
	global R_AddCmdDrawStretchPicRotateXY
	global R_AddCmdDrawConsoleTextSubtitle
	global R_AddCmdBlendSavedScreenShockBlurred
	global R_AddCmdBlendSavedScreenShockFlashed
	global frontEndDataOut


SECTION .text


;R_ToggleSmpFrame()
R_ToggleSmpFrame:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, rg
	mov ebx, [esi+0x22dc]
	test ebx, ebx
	jz R_ToggleSmpFrame_10
R_ToggleSmpFrame_60:
	mov dword [s_smpFrame], 0x0
	mov edx, [esi+0x15c]
	add edx, 0x1
	mov [esi+0x15c], edx
	mov ebx, gfxBuf
	mov dword [ebx+0x7c], 0x0
	mov eax, [ebx+0x34]
	add eax, 0x1
	and eax, 0x80000001
	js R_ToggleSmpFrame_20
R_ToggleSmpFrame_70:
	mov [ebx+0x34], eax
	mov dword [frontEndDataOut], s_backEndData
	mov eax, [s_backEndData+0x11e69c]
	test eax, eax
	jnz R_ToggleSmpFrame_30
R_ToggleSmpFrame_50:
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
	jnz R_ToggleSmpFrame_40
	call R_ToggleModelLightingFrame
R_ToggleSmpFrame_40:
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
	call R_ResetMesh
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11866c], 0x0
	mov eax, [frontEndDataOut]
	add eax, 0x11e670
	mov [esp], eax
	call R_ResetMesh
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
R_ToggleSmpFrame_30:
	mov eax, [s_backEndData+0x11e69c]
	mov [esp+0x4], eax
	mov eax, [s_backEndData+0x11e698]
	mov [esp], eax
	call Z_VirtualDecommitInternal
	mov eax, [frontEndDataOut]
	mov dword [eax+0x11e69c], 0x0
	mov edx, [esi+0x15c]
	jmp R_ToggleSmpFrame_50
R_ToggleSmpFrame_10:
	call CG_CalculateFPS
	jmp R_ToggleSmpFrame_60
R_ToggleSmpFrame_20:
	sub eax, 0x1
	or eax, 0xfffffffe
	add eax, 0x1
	jmp R_ToggleSmpFrame_70
	nop


;AddBaseDrawTextCmd(char const*, int, Font_s*, float, float, float, float, float, float const*, int, int, char)
AddBaseDrawTextCmd:
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
	jnz AddBaseDrawTextCmd_10
	mov eax, [ebp+0x14]
	test eax, eax
	js AddBaseDrawTextCmd_20
AddBaseDrawTextCmd_10:
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
	jg AddBaseDrawTextCmd_30
	mov edx, ecx
	add edx, [edi]
	lea eax, [ebx+ecx]
	mov [edi+0x4], eax
	mov [edi+0xc], edx
	mov word [edx], 0xd
	mov [edx+0x2], bx
	mov edi, edx
	test edx, edx
	jz AddBaseDrawTextCmd_20
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
	call R_ConvertColorToBytes
	mov eax, [ebp-0x20]
	mov [edi+0x20], eax
	mov dword [edi+0x24], 0x0
	cmp dword [ebp+0x10], 0x3
	jz AddBaseDrawTextCmd_40
	cmp dword [ebp+0x10], 0x6
	jz AddBaseDrawTextCmd_50
	cmp dword [ebp+0x10], 0x80
	jz AddBaseDrawTextCmd_60
AddBaseDrawTextCmd_80:
	cmp dword [ebp+0x14], 0xffffffff
	jle AddBaseDrawTextCmd_70
	or dword [edi+0x24], 0x2
	mov edx, [ebp+0x14]
	mov [edi+0x28], edx
	movzx eax, byte [ebp-0x25]
	mov [edi+0x2c], al
AddBaseDrawTextCmd_70:
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
AddBaseDrawTextCmd_30:
	mov dword [edi+0xc], 0x0
AddBaseDrawTextCmd_20:
	xor edi, edi
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AddBaseDrawTextCmd_50:
	mov dword [edi+0x24], 0xc
	jmp AddBaseDrawTextCmd_80
AddBaseDrawTextCmd_40:
	mov dword [edi+0x24], 0x4
	jmp AddBaseDrawTextCmd_80
AddBaseDrawTextCmd_60:
	mov dword [edi+0x24], 0x1
	jmp AddBaseDrawTextCmd_80
	nop


;AddBaseDrawConsoleTextCmd(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int)
AddBaseDrawConsoleTextCmd:
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
	jnz AddBaseDrawConsoleTextCmd_10
AddBaseDrawConsoleTextCmd_30:
	xor ebx, ebx
AddBaseDrawConsoleTextCmd_80:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AddBaseDrawConsoleTextCmd_10:
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
	jle AddBaseDrawConsoleTextCmd_20
	mov dword [ecx+0xc], 0x0
	jmp AddBaseDrawConsoleTextCmd_30
AddBaseDrawConsoleTextCmd_20:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [esi+ebx]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xd
	mov [edx+0x2], si
	mov ebx, edx
	test edx, edx
	jz AddBaseDrawConsoleTextCmd_30
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
	call R_ConvertColorToBytes
	mov dword [ebx+0x20], 0x7fffffff
	mov dword [ebx+0x24], 0x0
	cmp dword [ebp+0x14], 0x3
	jz AddBaseDrawConsoleTextCmd_40
	cmp dword [ebp+0x14], 0x6
	jz AddBaseDrawConsoleTextCmd_50
	cmp dword [ebp+0x14], 0x80
	jz AddBaseDrawConsoleTextCmd_60
AddBaseDrawConsoleTextCmd_100:
	mov esi, [ebp-0x20]
	sub esi, edi
	cmp [ebp+0x8], esi
	jg AddBaseDrawConsoleTextCmd_70
	lea edx, [ebx+0x50]
	mov eax, [ebp-0x1c]
	add eax, edi
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
AddBaseDrawConsoleTextCmd_90:
	mov ecx, [ebp+0x8]
	mov byte [ecx+ebx+0x50], 0x0
	jmp AddBaseDrawConsoleTextCmd_80
AddBaseDrawConsoleTextCmd_70:
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
	jmp AddBaseDrawConsoleTextCmd_90
AddBaseDrawConsoleTextCmd_40:
	mov dword [ebx+0x24], 0x4
	jmp AddBaseDrawConsoleTextCmd_100
AddBaseDrawConsoleTextCmd_50:
	mov dword [ebx+0x24], 0xc
	jmp AddBaseDrawConsoleTextCmd_100
AddBaseDrawConsoleTextCmd_60:
	mov dword [ebx+0x24], 0x1
	jmp AddBaseDrawConsoleTextCmd_100


;R_EndFrame()
R_EndFrame:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, rg
	cmp byte [eax+0x140], 0x0
	jnz R_EndFrame_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_EndFrame_10:
	call CL_UpdateDebugClientData
	mov eax, [frontEndDataOut]
	add eax, 0x11e71c
	mov [esp], eax
	call R_TransferDebugGlobals
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x3
	jg R_EndFrame_20
	mov dword [ecx+0xc], 0x0
R_EndFrame_30:
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
R_EndFrame_20:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x4]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x4
	mov [ecx+0xc], edx
	mov word [edx], 0x0
	mov word [edx+0x2], 0x4
	jmp R_EndFrame_30
	nop


;R_BeginFrame()
R_BeginFrame:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, rg
	cmp byte [eax+0x140], 0x0
	jnz R_BeginFrame_10
R_BeginFrame_250:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_BeginFrame_10:
	call Sys_IsMainThread
	test al, al
	jz R_BeginFrame_20
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	test ebx, ebx
	jz R_BeginFrame_30
	mov eax, r_lightTweakAmbient
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	mov ebx, eax
	mov eax, r_lightTweakDiffuseFraction
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	mov eax, r_lightTweakSunLight
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	mov eax, r_lightTweakAmbientColor
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	mov eax, r_lightTweakSunColor
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	mov eax, r_lightTweakSunDiffuseColor
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	mov eax, r_lightTweakSunDirection
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	jnz R_BeginFrame_40
R_BeginFrame_30:
	mov eax, r_sun_from_dvars
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_BeginFrame_50
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz R_BeginFrame_50
	add eax, 0x17c
	mov [esp], eax
	call R_SetSunFromDvars
R_BeginFrame_50:
	mov eax, r_gpuSync
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	mov ebx, eax
	mov eax, r_multiGpu
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	or bl, al
	jnz R_BeginFrame_60
R_BeginFrame_280:
	mov ecx, r_forceLod
	mov edx, [ecx]
	mov eax, [edx+0xc]
	cmp eax, [edx+0x2c]
	jz R_BeginFrame_70
	xor ebx, ebx
	mov eax, [ecx]
	cmp [eax+0xc], ebx
	jz R_BeginFrame_80
R_BeginFrame_100:
	mov eax, 0x3a83126f
	mov [esp+0x4], eax
	mov [esp], ebx
	call XModelSetTestLods
	add ebx, 0x1
	cmp ebx, 0x4
	jz R_BeginFrame_90
R_BeginFrame_110:
	mov ecx, r_forceLod
	mov eax, [ecx]
	cmp [eax+0xc], ebx
	jnz R_BeginFrame_100
R_BeginFrame_80:
	xor eax, eax
	mov [esp+0x4], eax
	mov [esp], ebx
	call XModelSetTestLods
	add ebx, 0x1
	cmp ebx, 0x4
	jnz R_BeginFrame_110
R_BeginFrame_90:
	mov eax, r_colorMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz R_BeginFrame_120
R_BeginFrame_310:
	mov edx, 0x1
R_BeginFrame_320:
	mov eax, rg
	mov [eax+0x2214], dl
	mov eax, r_showMissingLightGrid
	mov eax, [eax]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jnz R_BeginFrame_130
R_BeginFrame_350:
	mov eax, r_fullbright
	mov edx, [eax]
	cmp byte [edx+0xb], 0x0
	jnz R_BeginFrame_140
	mov eax, r_debugShader
	mov eax, [eax]
	cmp byte [eax+0xb], 0x0
	jz R_BeginFrame_150
R_BeginFrame_140:
	mov [esp], edx
	call Cvar_ClearModified
	mov eax, r_debugShader
	mov eax, [eax]
	mov [esp], eax
	call Cvar_ClearModified
	call R_InitDrawMethod
R_BeginFrame_150:
	mov ebx, r_outdoorFeather
	mov eax, [ebx]
	mov [esp], eax
	call R_CheckDvarModified
	test al, al
	jz R_BeginFrame_160
	mov eax, [ebx]
	mov eax, [eax+0xc]
	mov ebx, gfxCmdBufInput
	mov [ebx+0x300], eax
	mov [ebx+0x304], eax
	mov [ebx+0x308], eax
	mov [ebx+0x30c], eax
R_BeginFrame_330:
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
	jnz R_BeginFrame_170
R_BeginFrame_300:
	xor ecx, ecx
	xor edx, edx
R_BeginFrame_360:
	mov eax, rg
	mov [eax+0x226c], dl
	test cl, cl
	jnz R_BeginFrame_180
	xor eax, eax
R_BeginFrame_340:
	mov [ebx+0x3c8], eax
R_BeginFrame_20:
	call Material_OverrideTechniqueSets
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	test ecx, ecx
	jz R_BeginFrame_190
	mov edx, [eax+0x2000]
	test edx, edx
	jnz R_BeginFrame_200
R_BeginFrame_190:
	call CL_FlushDebugClientData
	mov eax, r_skinCache
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_BeginFrame_210
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_BeginFrame_220
R_BeginFrame_210:
	xor ecx, ecx
	xor eax, eax
R_BeginFrame_270:
	mov edx, gfxBuf
	mov [edx+0x24008d], al
	test cl, cl
	jz R_BeginFrame_230
	mov eax, r_fastSkin
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_BeginFrame_240
R_BeginFrame_230:
	xor eax, eax
R_BeginFrame_260:
	mov [edx+0x24008c], al
	cmp byte [edx+0x24008d], 0x0
	jz R_BeginFrame_250
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_LockSkinnedCache
R_BeginFrame_240:
	mov eax, 0x1
	jmp R_BeginFrame_260
R_BeginFrame_220:
	mov ecx, 0x1
	mov eax, 0x1
	jmp R_BeginFrame_270
R_BeginFrame_60:
	call R_UpdateGpuSyncType
	jmp R_BeginFrame_280
R_BeginFrame_170:
	call CL_GetLocalClientActiveCount
	sub eax, 0x1
	jz R_BeginFrame_290
	mov ebx, gfxCmdBufInput
	jmp R_BeginFrame_300
R_BeginFrame_120:
	mov eax, r_normalMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz R_BeginFrame_310
	mov eax, r_specularMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz R_BeginFrame_310
	xor edx, edx
	jmp R_BeginFrame_320
R_BeginFrame_160:
	mov ebx, gfxCmdBufInput
	jmp R_BeginFrame_330
R_BeginFrame_180:
	mov eax, gfxRenderTargets
	mov eax, [eax+0x3c]
	jmp R_BeginFrame_340
R_BeginFrame_200:
	mov dword [eax+0x2000], 0x0
	call Sys_IsMainThread
	call Material_Sort
	call R_SortWorldSurfaces
	jmp R_BeginFrame_190
R_BeginFrame_130:
	call R_ResetModelLighting
	jmp R_BeginFrame_350
R_BeginFrame_40:
	call R_UpdateLightsFromDvars
	jmp R_BeginFrame_30
R_BeginFrame_70:
	mov eax, r_highLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call XModelSetTestLods
	mov eax, r_mediumLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call XModelSetTestLods
	mov eax, r_lowLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call XModelSetTestLods
	mov eax, r_lowestLodDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call XModelSetTestLods
	jmp R_BeginFrame_90
R_BeginFrame_290:
	mov ecx, 0x1
	mov edx, 0x1
	mov ebx, gfxCmdBufInput
	jmp R_BeginFrame_360
	nop


;R_AddCmdDrawText(char const*, int, Font_s*, float, float, float, float, float, float const*, int)
R_AddCmdDrawText:
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
	call AddBaseDrawTextCmd
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;R_AllocViewParms()
R_AllocViewParms:
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
R_AddCmdEndOfList:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x3
	jg R_AddCmdEndOfList_10
	mov dword [ecx+0xc], 0x0
	pop ebx
	pop ebp
	ret
R_AddCmdEndOfList_10:
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
R_InitDynamicMesh:
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
	call R_AllocGlobalVariable
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
	jmp R_InitDynamicVertexBufferState
	nop


;R_InitTempSkinBuf()
R_InitTempSkinBuf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], g_assetEntryPool+0x48ec0
	call Z_VirtualReserve
	mov [s_backEndData+0x11e698], eax
	leave
	ret
	nop


;R_AddCmdSaveScreen(int)
R_AddCmdSaveScreen:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x7
	jg R_AddCmdSaveScreen_10
	mov dword [ecx+0xc], 0x0
	xor edx, edx
	mov eax, [ebp+0x8]
	mov [edx+0x4], eax
	pop ebx
	pop ebp
	ret
R_AddCmdSaveScreen_10:
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
R_SyncRenderThread:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_AddCmdClearScreen(int, float const*, float, unsigned char)
R_AddCmdClearScreen:
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
	jg R_AddCmdClearScreen_10
	mov dword [ecx+0xc], 0x0
	xor ecx, ecx
R_AddCmdClearScreen_20:
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
R_AddCmdClearScreen_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	add dword [ecx+0x8], 0x1c
	mov [ecx+0xc], edx
	mov word [edx], 0x4
	mov word [edx+0x2], 0x1c
	mov ecx, edx
	jmp R_AddCmdClearScreen_20
	nop


;R_AddCmdDrawQuadPic(float const (*) [2], float const*, Material*)
R_AddCmdDrawQuadPic:
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
	jg R_AddCmdDrawQuadPic_10
	mov dword [ecx+0xc], 0x0
R_AddCmdDrawQuadPic_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawQuadPic_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xb
	mov word [edx+0x2], 0x2c
	mov esi, edx
	test edx, edx
	jz R_AddCmdDrawQuadPic_20
	test edi, edi
	jz R_AddCmdDrawQuadPic_30
	mov eax, edi
R_AddCmdDrawQuadPic_50:
	mov [esi+0x4], eax
	xor ebx, ebx
R_AddCmdDrawQuadPic_40:
	lea eax, [ebx*8]
	lea ecx, [esi+eax]
	add eax, [ebp-0x10]
	mov edx, [eax]
	mov [ecx+0x8], edx
	mov eax, [eax+0x4]
	mov [ecx+0xc], eax
	add ebx, 0x1
	cmp ebx, 0x4
	jnz R_AddCmdDrawQuadPic_40
	lea eax, [esi+0x28]
	mov [ebp+0xc], eax
	mov eax, [ebp-0x14]
	mov [ebp+0x8], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_ConvertColorToBytes
R_AddCmdDrawQuadPic_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp R_AddCmdDrawQuadPic_50
	add [eax], al


;R_InitRenderBuffers()
R_InitRenderBuffers:
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
	call R_AllocGlobalVariable
	mov [s_backEndData+0xb0008], eax
	mov dword [s_backEndData+0xb0004], 0x6000
	mov dword [s_backEndData+0xb0000], 0x0
	mov dword [s_backEndData+0xb001c], 0x20
	mov dword [esp+0x4], 0x80000
	mov dword [esp], s_backEndData+0xb000c
	call R_InitDynamicVertexBufferState
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0x4800
	call R_AllocGlobalVariable
	mov [s_backEndData+0x11e678], eax
	mov dword [s_backEndData+0x11e674], 0x2400
	mov dword [s_backEndData+0x11e670], 0x0
	mov dword [s_backEndData+0x11e68c], 0x2c
	mov dword [esp+0x4], 0x42000
	mov dword [esp], s_backEndData+0x11e67c
	call R_InitDynamicVertexBufferState
	mov byte [ebx], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x28], 0x0
R_InitRenderBuffers_20:
	xor edi, edi
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x20]
	lea esi, [eax+edx+0x5510]
R_InitRenderBuffers_10:
	lea ebx, [esi+g_viewInfo]
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call R_AllocGlobalVariable
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [esi+g_viewInfo], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	add ebx, 0xc
	mov [esp], ebx
	call R_InitDynamicVertexBufferState
	add edi, 0x1
	add esi, 0x20
	cmp edi, 0x4
	jnz R_InitRenderBuffers_10
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x28], 0x67af
	cmp dword [ebp-0x20], 0x4
	jnz R_InitRenderBuffers_20
	xor di, di
	mov esi, gfxMeshGlob
	lea ebx, [esi+0x10]
R_InitRenderBuffers_50:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call R_AllocGlobalVariable
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_InitDynamicVertexBufferState
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, vidConfig
	mov edx, [eax+0x4]
	test edx, edx
	js R_InitRenderBuffers_30
	cvtsi2ss xmm0, edx
R_InitRenderBuffers_210:
	movss [esp+0x10], xmm0
	mov eax, vidConfig
	mov edx, [eax]
	test edx, edx
	js R_InitRenderBuffers_40
	cvtsi2ss xmm0, edx
R_InitRenderBuffers_200:
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_SetQuadMesh
	add edi, 0x1
	add ebx, 0x30
	add esi, 0x30
	cmp edi, 0x4
	jnz R_InitRenderBuffers_50
	pxor xmm0, xmm0
	movss [ebp-0x1c], xmm0
	xor esi, esi
	mov ebx, gfxMeshGlob
	add ebx, 0xc0
R_InitRenderBuffers_90:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call R_AllocGlobalVariable
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_InitDynamicVertexBufferState
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_60
	mov edi, 0x43800000
R_InitRenderBuffers_160:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_70
	mov eax, 0x43800000
R_InitRenderBuffers_150:
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
	call R_SetQuadMeshData
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_80
	movss xmm0, dword [_float_256_00000000]
R_InitRenderBuffers_140:
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x4
	jnz R_InitRenderBuffers_90
	pxor xmm0, xmm0
	movss [ebp-0x24], xmm0
	xor si, si
	mov ebx, gfxMeshGlob
	add ebx, 0x140
R_InitRenderBuffers_130:
	mov dword [esp+0x4], _cstring_r_initdynamicmes
	mov dword [esp], 0xc
	call R_AllocGlobalVariable
	mov [ebx+0x8], eax
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov dword [ebx+0x1c], 0x20
	mov dword [esp+0x4], 0x80
	lea eax, [ebx+0xc]
	mov [esp], eax
	call R_InitDynamicVertexBufferState
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_100
	mov edi, 0x44000000
R_InitRenderBuffers_190:
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_110
	mov eax, 0x44000000
R_InitRenderBuffers_180:
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
	call R_SetQuadMeshData
	call _ZN10MacDisplay10Is1900CardEv
	test al, al
	jz R_InitRenderBuffers_120
	movss xmm0, dword [_float_512_00000000]
R_InitRenderBuffers_170:
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x2
	jnz R_InitRenderBuffers_130
	mov dword [esp+0x4], 0x100000
	mov eax, gfxBuf
	mov [esp], eax
	call R_InitDynamicIndices
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitRenderBuffers_80:
	movss xmm0, dword [_float_512_00000000]
	jmp R_InitRenderBuffers_140
R_InitRenderBuffers_70:
	mov eax, 0x44000000
	jmp R_InitRenderBuffers_150
R_InitRenderBuffers_60:
	mov edi, 0x44000000
	jmp R_InitRenderBuffers_160
R_InitRenderBuffers_120:
	movss xmm0, dword [_float_1024_00000000]
	jmp R_InitRenderBuffers_170
R_InitRenderBuffers_110:
	mov eax, 0x44800000
	jmp R_InitRenderBuffers_180
R_InitRenderBuffers_100:
	mov edi, 0x44800000
	jmp R_InitRenderBuffers_190
R_InitRenderBuffers_40:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_InitRenderBuffers_200
R_InitRenderBuffers_30:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_InitRenderBuffers_210


;R_BeginSharedCmdList()
R_BeginSharedCmdList:
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
R_InitRenderCommands:
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
	js R_InitRenderCommands_10
R_InitRenderCommands_30:
	sar eax, 0x2
	mov [s_renderCmdWarnSize], eax
	call R_InitModelLightingGlobals
	mov dword [esp+0x4], _cstring_rendercmds
	mov eax, [s_renderCmdBufferSize]
	mov [esp], eax
	call R_AllocGlobalVariable
	mov [g_frontEndCmds], eax
	mov dword [esp], s_backEndData+0x11e71c
	call R_InitDebugEntry
	call R_InitSceneBuffers
	mov eax, [frontEndDataOut]
	test eax, eax
	jz R_InitRenderCommands_20
	mov eax, [eax+0x11e6bc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	leave
	ret
R_InitRenderCommands_10:
	add eax, 0x3
	jmp R_InitRenderCommands_30
R_InitRenderCommands_20:
	call R_UnlockSkinnedCache
	leave
	jmp R_ToggleSmpFrame


;R_AbortRenderCommands()
R_AbortRenderCommands:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, rg
	cmp byte [ebx+0x140], 0x0
	jnz R_AbortRenderCommands_10
	add esp, 0x4
	pop ebx
	pop ebp
	ret
R_AbortRenderCommands_10:
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e6bc]
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	call R_UnlockSkinnedCache
	mov dword [ebx+0x22dc], 0x0
	add esp, 0x4
	pop ebx
	pop ebp
	jmp R_ToggleSmpFrame
	nop


;R_IssueRenderCommands(unsigned int)
R_IssueRenderCommands:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	call R_CheckLostDevice
	test al, al
	jz R_IssueRenderCommands_10
	mov eax, [frontEndDataOut]
	mov [eax+0x11e770], ebx
	and bl, 0x2
	jnz R_IssueRenderCommands_20
R_IssueRenderCommands_50:
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e690]
	mov eax, [eax]
	cmp eax, _ZZ17CL_CheckForResendiE9msgBuffer+0x2ff
	seta al
	movzx eax, al
	mov edx, rg
	mov [edx+0x22f8], eax
	call R_CheckLostDevice
	test al, al
	jz R_IssueRenderCommands_30
	mov eax, g_disableRendering
	mov eax, [eax]
	test eax, eax
	jz R_IssueRenderCommands_40
R_IssueRenderCommands_30:
	call R_UnlockSkinnedCache
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_ToggleSmpFrame
R_IssueRenderCommands_20:
	mov dword [esp+0x4], _cstring_dev_perf_counter
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	jmp R_IssueRenderCommands_50
R_IssueRenderCommands_10:
	call R_Cinematic_UpdateFrame
	call R_UnlockSkinnedCache
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_ToggleSmpFrame
R_IssueRenderCommands_40:
	mov eax, [frontEndDataOut]
	mov [esp], eax
	call RB_BeginFrame
	call RB_Draw3D
	call RB_CallExecuteRenderCommands
	mov eax, [frontEndDataOut]
	mov eax, [eax+0x11e770]
	mov [esp], eax
	call RB_EndFrame
	call R_UnlockSkinnedCache
	add esp, 0x14
	pop ebx
	pop ebp
	jmp R_ToggleSmpFrame
	nop


;R_ShutdownDynamicMesh(GfxMeshData*)
R_ShutdownDynamicMesh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov edx, [ebx+0x14]
	test edx, edx
	jz R_ShutdownDynamicMesh_10
	mov esi, alwaysfails
R_ShutdownDynamicMesh_20:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz R_ShutdownDynamicMesh_20
R_ShutdownDynamicMesh_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_ShutdownTempSkinBuf()
R_ShutdownTempSkinBuf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [s_backEndData+0x11e698]
	test eax, eax
	jz R_ShutdownTempSkinBuf_10
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [s_backEndData+0x11e698], 0x0
	mov dword [s_backEndData+0x11e69c], 0x0
R_ShutdownTempSkinBuf_10:
	leave
	ret
	nop


;R_AddCmdDrawStretchPic(float, float, float, float, float, float, float, float, float const*, Material*)
R_AddCmdDrawStretchPic:
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
	jz R_AddCmdDrawStretchPic_10
	mov esi, ebx
R_AddCmdDrawStretchPic_100:
	mov eax, [esi+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz R_AddCmdDrawStretchPic_20
	mov eax, [eax+0x20]
	test eax, eax
	jz R_AddCmdDrawStretchPic_30
R_AddCmdDrawStretchPic_20:
	mov eax, 0x1
	test eax, eax
	jnz R_AddCmdDrawStretchPic_40
R_AddCmdDrawStretchPic_80:
	test byte [esi+0x3d], 0x10
	jnz R_AddCmdDrawStretchPic_50
R_AddCmdDrawStretchPic_90:
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2b
	jg R_AddCmdDrawStretchPic_60
	mov dword [ecx+0xc], 0x0
R_AddCmdDrawStretchPic_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawStretchPic_60:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x6
	mov word [edx+0x2], 0x2c
	mov eax, edx
	test edx, edx
	jz R_AddCmdDrawStretchPic_70
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
	jmp R_ConvertColorToBytes
R_AddCmdDrawStretchPic_30:
	xor eax, eax
	test eax, eax
	jz R_AddCmdDrawStretchPic_80
R_AddCmdDrawStretchPic_40:
	mov [esp], esi
	call Material_IsDefault
	test al, al
	jnz R_AddCmdDrawStretchPic_80
	mov [esp], ebx
	call Material_GetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPic_90
R_AddCmdDrawStretchPic_50:
	mov [esp], ebx
	call Material_GetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre1
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPic_90
R_AddCmdDrawStretchPic_10:
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPic_100


;R_BeginClientCmdList2D()
R_BeginClientCmdList2D:
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
R_ClearClientCmdList2D:
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
R_AddCmdDrawConsoleText:
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
	call AddBaseDrawConsoleTextCmd
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddCmdProjectionSet2D()
R_AddCmdProjectionSet2D:
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
	jg R_AddCmdProjectionSet2D_10
	mov dword [ecx+0xc], 0x0
R_AddCmdProjectionSet2D_20:
	pop ebx
	pop ebp
	ret
R_AddCmdProjectionSet2D_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x8]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x14
	mov word [edx+0x2], 0x8
	test edx, edx
	jz R_AddCmdProjectionSet2D_20
	mov dword [edx+0x4], 0x0
	pop ebx
	pop ebp
	ret
	nop


;R_ShutdownRenderBuffers()
R_ShutdownRenderBuffers:
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
	call R_FreeGlobalVariable
	mov ebx, [s_backEndData+0xb0014]
	test ebx, ebx
	jz R_ShutdownRenderBuffers_10
	mov ebx, alwaysfails
R_ShutdownRenderBuffers_20:
	mov eax, [s_backEndData+0xb0014]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [esi+0x14], 0x0
	mov ecx, [ebx]
	test ecx, ecx
	jnz R_ShutdownRenderBuffers_20
R_ShutdownRenderBuffers_10:
	mov esi, s_backEndData+0x11e670
	mov eax, [s_backEndData+0x11e678]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov edx, [s_backEndData+0x11e684]
	test edx, edx
	jz R_ShutdownRenderBuffers_30
	mov ebx, alwaysfails
R_ShutdownRenderBuffers_40:
	mov eax, [s_backEndData+0x11e684]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [esi+0x14], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_ShutdownRenderBuffers_40
R_ShutdownRenderBuffers_30:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov edi, alwaysfails
R_ShutdownRenderBuffers_80:
	xor esi, esi
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	lea ebx, [eax+edx+g_viewInfo+0x5510]
R_ShutdownRenderBuffers_70:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov eax, [ebx+0x14]
	test eax, eax
	jz R_ShutdownRenderBuffers_50
R_ShutdownRenderBuffers_60:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [edi]
	test eax, eax
	jnz R_ShutdownRenderBuffers_60
R_ShutdownRenderBuffers_50:
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x4
	jnz R_ShutdownRenderBuffers_70
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x20], 0x67af
	cmp dword [ebp-0x1c], 0x4
	jnz R_ShutdownRenderBuffers_80
	mov eax, dx_ctx
	mov dword [eax+0x2cd4], 0x0
	xor edi, edi
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0x10
R_ShutdownRenderBuffers_110:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov eax, [ebx+0x14]
	test eax, eax
	jz R_ShutdownRenderBuffers_90
R_ShutdownRenderBuffers_100:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz R_ShutdownRenderBuffers_100
R_ShutdownRenderBuffers_90:
	add edi, 0x1
	add ebx, 0x30
	cmp edi, 0x4
	jnz R_ShutdownRenderBuffers_110
	xor di, di
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0xc0
R_ShutdownRenderBuffers_140:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov eax, [ebx+0x14]
	test eax, eax
	jz R_ShutdownRenderBuffers_120
R_ShutdownRenderBuffers_130:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov ecx, [esi]
	test ecx, ecx
	jnz R_ShutdownRenderBuffers_130
R_ShutdownRenderBuffers_120:
	add edi, 0x1
	add ebx, 0x20
	cmp edi, 0x4
	jnz R_ShutdownRenderBuffers_140
	xor di, di
	mov esi, alwaysfails
	mov ebx, gfxMeshGlob
	add ebx, 0x140
R_ShutdownRenderBuffers_170:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov edx, [ebx+0x14]
	test edx, edx
	jz R_ShutdownRenderBuffers_150
R_ShutdownRenderBuffers_160:
	mov eax, [ebx+0x14]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx+0x14], 0x0
	mov eax, [esi]
	test eax, eax
	jnz R_ShutdownRenderBuffers_160
R_ShutdownRenderBuffers_150:
	add edi, 0x1
	add ebx, 0x20
	cmp edi, 0x2
	jnz R_ShutdownRenderBuffers_170
	mov eax, gfxBuf
	mov [esp], eax
	call R_ShutdownDynamicIndices
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AddCmdDrawTextSubtitle(char const*, int, Font_s*, float, float, float, float, float, float const*, int, float const*, unsigned char)
R_AddCmdDrawTextSubtitle:
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
	call AddBaseDrawTextCmd
	mov ecx, eax
	test eax, eax
	jz R_AddCmdDrawTextSubtitle_10
	mov eax, esi
	test al, al
	jz R_AddCmdDrawTextSubtitle_20
	mov edx, [ecx+0x24]
	or dh, 0x2
	mov [ecx+0x24], edx
R_AddCmdDrawTextSubtitle_40:
	mov eax, edx
	or dh, 0x1
	mov [ecx+0x24], edx
	test edi, edi
	jz R_AddCmdDrawTextSubtitle_10
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0xc]
	jp R_AddCmdDrawTextSubtitle_30
	jz R_AddCmdDrawTextSubtitle_10
R_AddCmdDrawTextSubtitle_30:
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
	call R_ConvertColorToBytes
R_AddCmdDrawTextSubtitle_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawTextSubtitle_20:
	mov edx, [ecx+0x24]
	jmp R_AddCmdDrawTextSubtitle_40
	nop


;R_ShutdownRenderCommands()
R_ShutdownRenderCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_ShutdownModelLightingGlobals
	mov eax, [s_backEndData+0x11e6bc]
	mov eax, [eax]
	mov [esp], eax
	call R_FreeGlobalVariable
	mov dword [esp], s_backEndData+0x11e71c
	call R_ShutdownDebugEntry
	leave
	jmp R_ShutdownSceneBuffers


;R_AddCmdSaveScreenSection(float, float, float, float, int)
R_AddCmdSaveScreenSection:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	cmp eax, 0x17
	jg R_AddCmdSaveScreenSection_10
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
R_AddCmdSaveScreenSection_10:
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
R_AddCmdDrawTextWithCursor:
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
	call AddBaseDrawTextCmd
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;R_AddCmdDrawTextWithEffects(char const*, int, Font_s*, float, float, float, float, float, float const*, int, float const*, Material*, Material*, int, int, int, int)
R_AddCmdDrawTextWithEffects:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x34]
	mov edi, [ebp+0x38]
	test esi, esi
	jz R_AddCmdDrawTextWithEffects_10
	mov ebx, esi
R_AddCmdDrawTextWithEffects_180:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz R_AddCmdDrawTextWithEffects_20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz R_AddCmdDrawTextWithEffects_30
R_AddCmdDrawTextWithEffects_20:
	mov eax, 0x1
	test eax, eax
	jnz R_AddCmdDrawTextWithEffects_40
R_AddCmdDrawTextWithEffects_140:
	test edi, edi
	jz R_AddCmdDrawTextWithEffects_50
R_AddCmdDrawTextWithEffects_160:
	mov ebx, edi
R_AddCmdDrawTextWithEffects_170:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jz R_AddCmdDrawTextWithEffects_60
R_AddCmdDrawTextWithEffects_120:
	mov eax, 0x1
R_AddCmdDrawTextWithEffects_130:
	test eax, eax
	jnz R_AddCmdDrawTextWithEffects_70
R_AddCmdDrawTextWithEffects_110:
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
	call AddBaseDrawTextCmd
	mov ebx, eax
	test eax, eax
	jz R_AddCmdDrawTextWithEffects_80
	mov eax, [ebp+0x30]
	test eax, eax
	jz R_AddCmdDrawTextWithEffects_90
	pxor xmm0, xmm0
	mov eax, [ebp+0x30]
	ucomiss xmm0, [eax+0xc]
	jp R_AddCmdDrawTextWithEffects_100
	jnz R_AddCmdDrawTextWithEffects_100
R_AddCmdDrawTextWithEffects_90:
	test esi, esi
	jz R_AddCmdDrawTextWithEffects_80
	test edi, edi
	jz R_AddCmdDrawTextWithEffects_80
	mov eax, [ebp+0x3c]
	test eax, eax
	jz R_AddCmdDrawTextWithEffects_80
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
R_AddCmdDrawTextWithEffects_80:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawTextWithEffects_70:
	mov [esp], ebx
	call Material_IsDefault
	test al, al
	jnz R_AddCmdDrawTextWithEffects_110
R_AddCmdDrawTextWithEffects_150:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call R_WarnOncePerFrame
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawTextWithEffects_60:
	mov eax, [eax+0x20]
	test eax, eax
	jnz R_AddCmdDrawTextWithEffects_120
	xor eax, eax
	jmp R_AddCmdDrawTextWithEffects_130
R_AddCmdDrawTextWithEffects_30:
	xor eax, eax
	test eax, eax
	jz R_AddCmdDrawTextWithEffects_140
R_AddCmdDrawTextWithEffects_40:
	mov [esp], ebx
	call Material_IsDefault
	test al, al
	jz R_AddCmdDrawTextWithEffects_150
	test edi, edi
	jnz R_AddCmdDrawTextWithEffects_160
R_AddCmdDrawTextWithEffects_50:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp R_AddCmdDrawTextWithEffects_170
R_AddCmdDrawTextWithEffects_100:
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
	call R_ConvertColorToBytes
	jmp R_AddCmdDrawTextWithEffects_90
R_AddCmdDrawTextWithEffects_10:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp R_AddCmdDrawTextWithEffects_180


;R_AddCmdDrawStretchPicFlipST(float, float, float, float, float, float, float, float, float const*, Material*)
R_AddCmdDrawStretchPicFlipST:
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
	jz R_AddCmdDrawStretchPicFlipST_10
	mov esi, ebx
R_AddCmdDrawStretchPicFlipST_100:
	mov eax, [esi+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz R_AddCmdDrawStretchPicFlipST_20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz R_AddCmdDrawStretchPicFlipST_30
R_AddCmdDrawStretchPicFlipST_20:
	mov eax, 0x1
	test eax, eax
	jnz R_AddCmdDrawStretchPicFlipST_40
R_AddCmdDrawStretchPicFlipST_80:
	test byte [esi+0x3d], 0x10
	jnz R_AddCmdDrawStretchPicFlipST_50
R_AddCmdDrawStretchPicFlipST_90:
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x2b
	jg R_AddCmdDrawStretchPicFlipST_60
	mov dword [ecx+0xc], 0x0
R_AddCmdDrawStretchPicFlipST_70:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawStretchPicFlipST_60:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x2c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x7
	mov word [edx+0x2], 0x2c
	mov eax, edx
	test edx, edx
	jz R_AddCmdDrawStretchPicFlipST_70
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
	jmp R_ConvertColorToBytes
R_AddCmdDrawStretchPicFlipST_30:
	xor eax, eax
	test eax, eax
	jz R_AddCmdDrawStretchPicFlipST_80
R_AddCmdDrawStretchPicFlipST_40:
	mov [esp], esi
	call Material_IsDefault
	test al, al
	jnz R_AddCmdDrawStretchPicFlipST_80
	mov [esp], ebx
	call Material_GetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre2
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPicFlipST_90
R_AddCmdDrawStretchPicFlipST_50:
	mov [esp], ebx
	call Material_GetName
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_addcmddrawstre3
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPicFlipST_90
R_AddCmdDrawStretchPicFlipST_10:
	mov eax, rgp
	mov esi, [eax+0x2030]
	jmp R_AddCmdDrawStretchPicFlipST_100


;R_AddCmdDrawConsoleTextPulseFX(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int, float const*, int, int, int, int, Material*, Material*)
R_AddCmdDrawConsoleTextPulseFX:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x48]
	mov edi, [ebp+0x4c]
	test esi, esi
	jz R_AddCmdDrawConsoleTextPulseFX_10
	mov ebx, esi
R_AddCmdDrawConsoleTextPulseFX_180:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jnz R_AddCmdDrawConsoleTextPulseFX_20
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz R_AddCmdDrawConsoleTextPulseFX_30
R_AddCmdDrawConsoleTextPulseFX_20:
	mov eax, 0x1
	test eax, eax
	jnz R_AddCmdDrawConsoleTextPulseFX_40
R_AddCmdDrawConsoleTextPulseFX_140:
	test edi, edi
	jz R_AddCmdDrawConsoleTextPulseFX_50
R_AddCmdDrawConsoleTextPulseFX_160:
	mov ebx, edi
R_AddCmdDrawConsoleTextPulseFX_170:
	mov eax, [ebx+0x40]
	mov eax, [eax+0x8]
	mov edx, [eax+0x28]
	test edx, edx
	jz R_AddCmdDrawConsoleTextPulseFX_60
R_AddCmdDrawConsoleTextPulseFX_120:
	mov eax, 0x1
R_AddCmdDrawConsoleTextPulseFX_130:
	test eax, eax
	jnz R_AddCmdDrawConsoleTextPulseFX_70
R_AddCmdDrawConsoleTextPulseFX_110:
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
	call AddBaseDrawConsoleTextCmd
	mov ebx, eax
	test eax, eax
	jz R_AddCmdDrawConsoleTextPulseFX_80
	mov eax, [ebp+0x34]
	test eax, eax
	jz R_AddCmdDrawConsoleTextPulseFX_90
	pxor xmm0, xmm0
	mov eax, [ebp+0x34]
	ucomiss xmm0, [eax+0xc]
	jp R_AddCmdDrawConsoleTextPulseFX_100
	jnz R_AddCmdDrawConsoleTextPulseFX_100
R_AddCmdDrawConsoleTextPulseFX_90:
	test esi, esi
	jz R_AddCmdDrawConsoleTextPulseFX_80
	test edi, edi
	jz R_AddCmdDrawConsoleTextPulseFX_80
	mov eax, [ebp+0x38]
	test eax, eax
	jz R_AddCmdDrawConsoleTextPulseFX_80
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
R_AddCmdDrawConsoleTextPulseFX_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawConsoleTextPulseFX_70:
	mov [esp], ebx
	call Material_IsDefault
	test al, al
	jnz R_AddCmdDrawConsoleTextPulseFX_110
R_AddCmdDrawConsoleTextPulseFX_150:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x26
	call R_WarnOncePerFrame
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawConsoleTextPulseFX_60:
	mov eax, [eax+0x20]
	test eax, eax
	jnz R_AddCmdDrawConsoleTextPulseFX_120
	xor eax, eax
	jmp R_AddCmdDrawConsoleTextPulseFX_130
R_AddCmdDrawConsoleTextPulseFX_30:
	xor eax, eax
	test eax, eax
	jz R_AddCmdDrawConsoleTextPulseFX_140
R_AddCmdDrawConsoleTextPulseFX_40:
	mov [esp], ebx
	call Material_IsDefault
	test al, al
	jz R_AddCmdDrawConsoleTextPulseFX_150
	test edi, edi
	jnz R_AddCmdDrawConsoleTextPulseFX_160
R_AddCmdDrawConsoleTextPulseFX_50:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp R_AddCmdDrawConsoleTextPulseFX_170
R_AddCmdDrawConsoleTextPulseFX_100:
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
	call R_ConvertColorToBytes
	jmp R_AddCmdDrawConsoleTextPulseFX_90
R_AddCmdDrawConsoleTextPulseFX_10:
	mov eax, rgp
	mov ebx, [eax+0x2030]
	jmp R_AddCmdDrawConsoleTextPulseFX_180
	nop


;R_AddCmdDrawStretchPicRotateST(float, float, float, float, float, float, float, float, float, float, float const*, Material*)
R_AddCmdDrawStretchPicRotateST:
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
	jg R_AddCmdDrawStretchPicRotateST_10
	mov dword [ecx+0xc], 0x0
R_AddCmdDrawStretchPicRotateST_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_AddCmdDrawStretchPicRotateST_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x34]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x9
	mov word [edx+0x2], 0x34
	mov ebx, edx
	test edx, edx
	jz R_AddCmdDrawStretchPicRotateST_20
	mov eax, [ebp+0x34]
	test eax, eax
	jz R_AddCmdDrawStretchPicRotateST_30
	mov eax, [ebp+0x34]
R_AddCmdDrawStretchPicRotateST_40:
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
	call R_ConvertColorToBytes
	movss xmm0, dword [ebp+0x2c]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebx+0x30]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_AddCmdDrawStretchPicRotateST_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp R_AddCmdDrawStretchPicRotateST_40
	add [eax], al


;R_AddCmdDrawStretchPicRotateXY(float, float, float, float, float, float, float, float, float, float const*, Material*)
R_AddCmdDrawStretchPicRotateXY:
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
	jg R_AddCmdDrawStretchPicRotateXY_10
	mov dword [ecx+0xc], 0x0
R_AddCmdDrawStretchPicRotateXY_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_AddCmdDrawStretchPicRotateXY_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x30]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x8
	mov word [edx+0x2], 0x30
	mov ebx, edx
	test edx, edx
	jz R_AddCmdDrawStretchPicRotateXY_20
	mov ecx, [ebp+0x30]
	test ecx, ecx
	jz R_AddCmdDrawStretchPicRotateXY_30
	mov eax, [ebp+0x30]
R_AddCmdDrawStretchPicRotateXY_40:
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
	call R_ConvertColorToBytes
	movss xmm0, dword [ebp+0x28]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebx+0x2c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_AddCmdDrawStretchPicRotateXY_30:
	mov eax, rgp
	mov eax, [eax+0x2030]
	jmp R_AddCmdDrawStretchPicRotateXY_40


;R_AddCmdDrawConsoleTextSubtitle(char const*, int, int, int, Font_s*, float, float, float, float, float const*, int, float const*)
R_AddCmdDrawConsoleTextSubtitle:
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
	call AddBaseDrawConsoleTextCmd
	mov ecx, eax
	test eax, eax
	jz R_AddCmdDrawConsoleTextSubtitle_10
	mov edx, [eax+0x24]
	mov eax, edx
	or ah, 0x1
	mov [ecx+0x24], eax
	test esi, esi
	jz R_AddCmdDrawConsoleTextSubtitle_10
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0xc]
	jp R_AddCmdDrawConsoleTextSubtitle_20
	jnz R_AddCmdDrawConsoleTextSubtitle_20
R_AddCmdDrawConsoleTextSubtitle_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCmdDrawConsoleTextSubtitle_20:
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
	call R_ConvertColorToBytes
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_AddCmdBlendSavedScreenShockBlurred(int, float, float, float, float, int)
R_AddCmdBlendSavedScreenShockBlurred:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	test esi, esi
	jle R_AddCmdBlendSavedScreenShockBlurred_10
	mov ecx, [s_cmdList]
	mov ebx, [ecx+0x4]
	mov eax, [s_renderCmdBufferSize]
	sub eax, ebx
	add eax, [ecx+0x8]
	sub eax, 0x2000
	cmp eax, 0x1b
	jle R_AddCmdBlendSavedScreenShockBlurred_20
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0xf
	mov word [edx+0x2], 0x1c
	mov eax, edx
	test edx, edx
	jz R_AddCmdBlendSavedScreenShockBlurred_10
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
R_AddCmdBlendSavedScreenShockBlurred_10:
	pop ebx
	pop esi
	pop ebp
	ret
R_AddCmdBlendSavedScreenShockBlurred_20:
	mov dword [ecx+0xc], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_AddCmdBlendSavedScreenShockFlashed(float, float, float, float, float, float)
R_AddCmdBlendSavedScreenShockFlashed:
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
	jg R_AddCmdBlendSavedScreenShockFlashed_10
	mov dword [ecx+0xc], 0x0
R_AddCmdBlendSavedScreenShockFlashed_20:
	pop ebx
	pop ebp
	ret
R_AddCmdBlendSavedScreenShockFlashed_10:
	mov edx, ebx
	add edx, [ecx]
	lea eax, [ebx+0x1c]
	mov [ecx+0x4], eax
	mov [ecx+0xc], edx
	mov word [edx], 0x10
	mov word [edx+0x2], 0x1c
	test edx, edx
	jz R_AddCmdBlendSavedScreenShockFlashed_20
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
s_debugShaderConsts: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x27247d, 0x272448, 0x27245a, 0x272448, 0x272484, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x27247d, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272448, 0x272461, 0x272448, 0x272448, 0x272476, 0x272448, 0x27246f, 0x272448, 0x272468, 0x272448, 0x272448, 0x272461, 0x2730c4, 0x272bef, 0x2730d8, 0x272bef, 0x2730ce, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x2730c4, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x272bef, 0x27309c, 0x272bef, 0x272bef, 0x2730ba, 0x272bef, 0x2730b0, 0x272bef, 0x2730a6, 0x272bef, 0x272bef, 0x27309c


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

