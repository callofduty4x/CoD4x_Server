;Imports of rb_draw3d:
	extern R_SetRenderTarget
	extern R_DrawSurfs
	extern R_Set3D
	extern PIXBeginNamedEvent
	extern R_Set2D
	extern rgp
	extern R_DrawQuadMesh
	extern backEndData
	extern dx_ctx
	extern R_InitCmdBufSourceState
	extern gfxCmdBufState
	extern memcpy
	extern memset
	extern gfxCmdBufSourceState
	extern R_SetRenderTargetSize
	extern R_BeginView
	extern R_SetViewportStruct
	extern gfxCmdBufContext
	extern developer
	extern RB_DrawDebug
	extern R_GetClearColor
	extern R_ClearScreen
	extern gfxDrawMethod
	extern gfxCmdBufInput
	extern RB_ExecuteRenderCommandsLoop
	extern RB_ProcessPostEffects
	extern r_showFbColorDebug
	extern r_showFloatZDebug
	extern gfxRenderTargets
	extern tess
	extern RB_DrawStretchPic
	extern RB_EndTessSurface
	extern RB_DrawSunPostEffects
	extern RB_UsingColorManipulation
	extern RB_ApplyColorManipulationSplitscreen
	extern sc_showDebug
	extern sc_showOverlay
	extern RB_ShadowCookieOverlay
	extern r_depthPrepass
	extern R_InitContext
	extern R_DrawLit
	extern R_DrawDecal
	extern RB_DrawSun
	extern rg
	extern R_DrawCall
	extern colorWhite
	extern R_SetupViewProjectionMatrices
	extern R_InitDynamicMesh
	extern R_SetQuadMesh
	extern R_DepthPrepass
	extern R_ShutdownDynamicMesh
	extern RB_DrawShadowCookies
	extern RB_SpotShadowMaps
	extern R_Resolve
	extern R_ConvertColorToBytes
	extern floorf
	extern ceilf
	extern R_SetQuadMeshData
	extern RB_SunShadowMaps

;Exports of rb_draw3d:
	global R_DrawFullbrightEmissiveCallback
	global R_DrawDebugShaderDecalCallback
	global R_DrawEmissiveCallback
	global R_DrawPointLitSurfsCallback
	global R_DrawDebugShaderLitCallback
	global R_DrawDebugShaderEmissiveCallback
	global R_DrawFullbrightLitCallback
	global R_DrawFullbrightDecalCallback
	global RB_EndSceneRendering
	global R_SetAndClearSceneTarget
	global RB_Draw3DCommon
	global RB_Draw3DInternal


SECTION .text


;R_DrawFullbrightEmissiveCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawFullbrightEmissiveCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov edx, [edi+0x180]
	mov ebx, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [edi+0x17c]
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, ebx
	mov [ebp-0x1c], edx
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x12c]
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	add edi, 0x6354
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_DrawDebugShaderDecalCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawDebugShaderDecalCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x2
	mov [esp], esi
	mov [esp+0x4], edi
	call R_SetRenderTarget
	add ebx, 0x632c
	mov [ebp+0x14], ebx
	mov dword [ebp+0x10], 0x0
	mov [ebp+0x8], esi
	mov [ebp+0xc], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_DrawSurfs


;R_DrawEmissiveCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawEmissiveCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call R_Set3D
	mov eax, [ebp+0x8]
	mov edx, [eax+0x180]
	mov ecx, eax
	mov eax, [eax+0x17c]
	mov esi, [ecx+0x178]
	mov ecx, [ecx+0x174]
	mov ebx, [ebp-0x2c]
	mov edi, [ebx+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], esi
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, esi
	mov [ebp-0x1c], edx
	mov eax, [edi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], edi
	call dword [eax+0xe4]
	mov edx, [edi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [edx+0x12c]
	mov dword [esp+0x4], _cstring_emissive
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebp+0x10]
	mov [ebp-0x34], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov eax, [ebp+0x8]
	add eax, 0x6354
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov ecx, [ebp-0x38]
	mov ebx, [ebp-0x34]
	mov [esp], ecx
	mov [esp+0x4], ebx
	call R_DrawSurfs
	mov ebx, [ebp-0x2c]
	mov eax, [ebx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DrawPointLitSurfsCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawPointLitSurfsCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call R_Set2D
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, rgp
	mov eax, [eax+0x2048]
	mov ecx, [ebp+0x10]
	mov [ebp-0x3c], ecx
	mov ebx, [ebp+0xc]
	mov [ebp-0x40], ebx
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawQuadMesh
	mov edx, [ebp+0xc]
	mov [esp], edx
	call R_Set3D
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x18]
	mov eax, [ecx+0x14]
	mov esi, [ecx+0x10]
	mov ecx, [ecx+0xc]
	mov ebx, [ebp-0x2c]
	mov edi, [ebx+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], esi
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, esi
	mov [ebp-0x1c], edx
	mov eax, [edi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], edi
	call dword [eax+0xe4]
	mov edx, [edi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [edx+0x12c]
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	mov ebx, [ebp+0xc]
	mov [ebp-0x38], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DrawDebugShaderLitCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawDebugShaderLitCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov edx, [edi+0x180]
	mov ebx, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [edi+0x17c]
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, ebx
	mov [ebp-0x1c], edx
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x12c]
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	add edi, 0x6304
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_DrawDebugShaderEmissiveCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawDebugShaderEmissiveCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov edx, [edi+0x180]
	mov ebx, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [edi+0x17c]
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, ebx
	mov [ebp-0x1c], edx
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x12c]
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	add edi, 0x6354
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_DrawFullbrightLitCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawFullbrightLitCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov edx, [edi+0x180]
	mov ebx, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [edi+0x17c]
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, ebx
	mov [ebp-0x1c], edx
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x12c]
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	add edi, 0x6304
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_DrawFullbrightDecalCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawFullbrightDecalCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov edx, [edi+0x180]
	mov ebx, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ebx
	mov eax, [edi+0x17c]
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, ebx
	mov [ebp-0x1c], edx
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x12c]
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x34], ecx
	add edi, 0x632c
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_EndSceneRendering(GfxCmdBufContext, GfxCmdBufInput const*, GfxViewInfo const*)
RB_EndSceneRendering:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov edi, ecx
	mov esi, [ebp+0x8]
	mov ebx, [ebp-0x1c]
	mov eax, backEndData
	mov ecx, [eax]
	mov edx, dx_ctx
	mov eax, [edx+0x2c54]
	mov eax, [edx+eax*4+0x2c34]
	mov [ecx+0x11e694], eax
	mov eax, [edx+0x2c54]
	add eax, 0x1
	and eax, 0x7
	mov [edx+0x2c54], eax
	mov eax, [ecx+0x11e694]
	mov edx, [eax]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x18]
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov eax, [ebp-0x20]
	mov [esp], eax
	call R_InitCmdBufSourceState
	mov edi, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], edi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add ebx, 0x1d8
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [esp+0x4], 0x2
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov [esp+0x8], esi
	lea eax, [esi+0x140]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_BeginView
	add esi, 0x154
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_SetViewportStruct
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov eax, developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RB_EndSceneRendering_10
	mov [esp], ebx
	call R_Set3D
	lea eax, [ebx+0xcb0]
	mov [esp], eax
	call RB_DrawDebug
RB_EndSceneRendering_10:
	mov dword [esp+0x8], 0xa10
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_SetAndClearSceneTarget(GfxViewport const*)
R_SetAndClearSceneTarget:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebx+0x1d8]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], _cstring_clear_render_tar
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x4], 0x2
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov edi, [ebx+0x90]
	lea esi, [ebp-0x28]
	mov [esp], esi
	call R_GetClearColor
	mov eax, [ebp-0x2c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x7
	mov [esp], edi
	call R_ClearScreen
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_Draw3DCommon()
RB_Draw3DCommon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x98], 0x0
	mov dword [ebp-0x94], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	mov eax, gfxDrawMethod
	mov eax, [eax]
	cmp eax, 0x1
	jz RB_Draw3DCommon_10
	cmp eax, 0x2
	jz RB_Draw3DCommon_20
	test eax, eax
	jnz RB_Draw3DCommon_30
RB_Draw3DCommon_40:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DCommon_30:
	mov eax, backEndData
	mov eax, [eax]
	mov [ebp-0x80], eax
	mov eax, [eax+0x11e6c4]
	test eax, eax
	jz RB_Draw3DCommon_40
	mov dword [esp+0x4], _cstring_post_effects
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebp-0x80]
	mov ecx, [eax+0x11e6c4]
	test ecx, ecx
	jnz RB_Draw3DCommon_50
RB_Draw3DCommon_180:
	mov eax, backEndData
	mov eax, [eax]
	mov esi, [eax+0x11e6c8]
	mov dword [esp+0x8], 0x0
	lea eax, [esi+0x6380]
	mov [esp+0x4], eax
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_InitCmdBufSourceState
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
	mov [esp+0x8], esi
	lea eax, [esi+0x140]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_BeginView
	lea eax, [esi+0x164]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_SetViewportStruct
	mov [esp], ebx
	call R_Set2D
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add ebx, 0x1d8
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	cmp dword [esi+0x184], 0x1
	jz RB_Draw3DCommon_60
RB_Draw3DCommon_220:
	mov eax, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], eax
	mov [esp], eax
	call memcpy
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DCommon_10:
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov [ebp-0x44], edx
	mov esi, [eax]
	mov eax, backEndData
	mov edi, [eax]
	mov eax, [edi+0x11e6c4]
	test eax, eax
	jz RB_Draw3DCommon_40
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0x3c], 0x0
	lea eax, [edx+0xd8]
	mov [ebp-0xbc], eax
	add edx, 0x1d8
	mov [ebp-0xc4], edx
RB_Draw3DCommon_80:
	mov ebx, [ebp-0x3c]
	add ebx, [edi+0x11e6c8]
	mov [ebx+0x67a8], edi
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov [esi+0xca8], edi
	mov dword [esp+0x8], 0xa10
	mov eax, gfxCmdBufState
	mov [esp+0x4], eax
	mov edx, [ebp-0x44]
	mov [esp], edx
	call memcpy
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xbc]
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call memset
	mov eax, [ebp-0x44]
	mov [ebp-0xa4], eax
	mov [ebp-0xa8], esi
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call R_SetRenderTargetSize
	mov edx, [ebp-0xa4]
	mov [ebp-0x94], edx
	mov [ebp-0x98], esi
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x98]
	mov edx, [ebp-0x94]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov [esp+0x8], ebx
	lea eax, [ebx+0x140]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_BeginView
	lea eax, [ebx+0x164]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportStruct
	mov eax, [ebx+0x5688]
	test eax, eax
	jz RB_Draw3DCommon_70
	mov [esp], eax
	call RB_ExecuteRenderCommandsLoop
RB_Draw3DCommon_70:
	mov dword [esp+0x8], 0xa10
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, gfxCmdBufState
	mov [esp], eax
	call memcpy
	add dword [ebp-0x9c], 0x1
	add dword [ebp-0x3c], 0x67b0
	mov edx, [ebp-0x9c]
	cmp [edi+0x11e6c4], edx
	ja RB_Draw3DCommon_80
	jmp RB_Draw3DCommon_40
RB_Draw3DCommon_20:
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov [ebp-0x40], edx
	mov esi, [eax]
	mov eax, backEndData
	mov edi, [eax]
	mov ebx, [edi+0x11e6c4]
	test ebx, ebx
	jz RB_Draw3DCommon_40
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x38], 0x0
	lea eax, [edx+0xd8]
	mov [ebp-0xb8], eax
	add edx, 0x1d8
	mov [ebp-0xc0], edx
RB_Draw3DCommon_100:
	mov ebx, [ebp-0x38]
	add ebx, [edi+0x11e6c8]
	mov [ebx+0x67a8], edi
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov [esi+0xca8], edi
	mov dword [esp+0x8], 0xa10
	mov eax, gfxCmdBufState
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call memcpy
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xb8]
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0xc0]
	mov [esp], edx
	call memset
	mov eax, [ebp-0x40]
	mov [ebp-0xac], eax
	mov [ebp-0xb0], esi
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call R_SetRenderTargetSize
	mov edx, [ebp-0xac]
	mov [ebp-0x84], edx
	mov [ebp-0x88], esi
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x88]
	mov edx, [ebp-0x84]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov [esp+0x8], ebx
	lea eax, [ebx+0x140]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_BeginView
	lea eax, [ebx+0x164]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportStruct
	mov eax, [ebx+0x5688]
	test eax, eax
	jz RB_Draw3DCommon_90
	mov [esp], eax
	call RB_ExecuteRenderCommandsLoop
RB_Draw3DCommon_90:
	mov dword [esp+0x8], 0xa10
	mov edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov eax, gfxCmdBufState
	mov [esp], eax
	call memcpy
	add dword [ebp-0x8c], 0x1
	add dword [ebp-0x38], 0x67b0
	mov edx, [ebp-0x8c]
	cmp [edi+0x11e6c4], edx
	ja RB_Draw3DCommon_100
	jmp RB_Draw3DCommon_40
RB_Draw3DCommon_50:
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x34], 0x0
	mov edi, gfxCmdBufSourceState
	mov edx, gfxCmdBufState
	add edx, 0x1d8
	mov [ebp-0xb4], edx
	mov eax, gfxCmdBufState
	mov [ebp-0xc8], eax
	mov edx, [ebp-0x80]
	jmp RB_Draw3DCommon_110
RB_Draw3DCommon_190:
	mov [esp], eax
	call RB_ProcessPostEffects
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x1
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov eax, r_showFbColorDebug
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jz RB_Draw3DCommon_120
	cmp eax, 0x2
	jz RB_Draw3DCommon_130
	mov eax, r_showFloatZDebug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz RB_Draw3DCommon_140
	mov eax, gfxRenderTargets
	mov ebx, [eax+0x68]
	test ebx, ebx
	jz RB_Draw3DCommon_150
	mov eax, tess
	mov ecx, [eax+0x22a948]
	test ecx, ecx
	jnz RB_Draw3DCommon_160
RB_Draw3DCommon_270:
	cvtsi2ss xmm1, dword [edi+0xf68]
	mulss xmm1, [_float_0_50000000]
	cvtsi2ss xmm0, dword [edi+0xf6c]
	mulss xmm0, [_float_0_50000000]
	mov [esp], edi
	movss [ebp-0xd8], xmm0
	movss [ebp-0xe8], xmm1
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f400000
	mov dword [esp+0x1c], 0x3f400000
	mov dword [esp+0x18], 0x3e800000
	mov dword [esp+0x14], 0x3e800000
	movss xmm0, dword [ebp-0xd8]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp-0xe8]
	movss [esp+0xc], xmm1
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x8], xmm0
	mulss xmm1, [_float_0_50000000]
	movss [esp+0x4], xmm1
	mov edx, rgp
	mov eax, [edx+0x208c]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
RB_Draw3DCommon_150:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [esp+0x8], 0x1
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov edx, [ebp-0x70]
	mov eax, [edx+0x13a0]
	mov [esp], eax
	call RB_DrawSunPostEffects
	mov dword [esp+0x8], 0xa10
	mov eax, [ebp-0xc8]
	mov [esp+0x4], eax
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x0
	mov eax, gfxCmdBufInput
	mov [esp+0x4], eax
	mov [esp], edi
	call R_InitCmdBufSourceState
	mov eax, backEndData
	mov eax, [eax]
	mov [edi+0xca8], eax
	mov dword [esp+0x8], 0xa10
	mov edx, [ebp-0xc8]
	mov [esp+0x4], edx
	mov [esp], edx
	call memcpy
	mov eax, [ebp-0xc8]
	add eax, 0xd8
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [ebp-0xc8]
	add eax, 0x1d8
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x1
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov eax, [ebp-0x70]
	mov [esp+0x8], eax
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov [esp], edi
	call R_BeginView
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_SetViewportStruct
	mov edx, [ebp-0x70]
	mov eax, [edx+0x5688]
	test eax, eax
	jz RB_Draw3DCommon_170
	mov [esp], eax
	call RB_ExecuteRenderCommandsLoop
RB_Draw3DCommon_170:
	mov dword [esp+0x8], 0xa10
	mov eax, [ebp-0xc8]
	mov [esp+0x4], eax
	mov [esp], eax
	call memcpy
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x34], 0x67b0
	mov eax, [ebp-0x7c]
	mov edx, [ebp-0x80]
	cmp [edx+0x11e6c4], eax
	jbe RB_Draw3DCommon_180
RB_Draw3DCommon_110:
	mov eax, [ebp-0x34]
	add eax, [edx+0x11e6c8]
	mov [ebp-0x70], eax
	mov [eax+0x67a8], edx
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x70]
	add eax, 0x6380
	mov [esp+0x4], eax
	mov [esp], edi
	call R_InitCmdBufSourceState
	mov dword [esp+0x8], 0xa10
	mov edx, gfxCmdBufState
	mov [esp+0x4], edx
	mov [esp], edx
	call memcpy
	mov eax, gfxCmdBufState
	add eax, 0xd8
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xb4]
	mov [esp], eax
	call memset
	mov eax, gfxCmdBufContext
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov [ebp-0x74], esi
	mov [ebp-0x78], ebx
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov edx, [ebp-0x70]
	add edx, 0x140
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x70]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call R_BeginView
	mov edx, [ebp-0x70]
	add edx, 0x164
	mov [ebp-0x30], edx
	mov [esp+0x4], edx
	mov [esp], edi
	call R_SetViewportStruct
	mov eax, [ebp-0x70]
	mov edx, [eax+0x13a4]
	test edx, edx
	jnz RB_Draw3DCommon_190
	mov [esp], eax
	call RB_UsingColorManipulation
	test al, al
	jz RB_Draw3DCommon_150
	mov edx, [ebp-0x70]
	mov [esp], edx
	call RB_ApplyColorManipulationSplitscreen
	jmp RB_Draw3DCommon_150
RB_Draw3DCommon_120:
	mov edx, tess
	mov eax, [edx+0x22a948]
	test eax, eax
	jnz RB_Draw3DCommon_200
RB_Draw3DCommon_250:
	mov [esp], edi
	call R_Set2D
	cvtsi2ss xmm0, dword [edi+0xf68]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	cvtsi2ss xmm0, dword [edi+0xf6c]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x6c]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x68]
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x1c], 0xffff0000
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffff0000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2094]
	mov [esp], eax
	call RB_DrawStretchPic
	mov dword [ebp-0x1c], 0xff00ff00
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xff00ff00
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2094]
	mov [esp], eax
	call RB_DrawStretchPic
	mov dword [ebp-0x1c], 0xff0000ff
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xff0000ff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x68]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2094]
	mov [esp], eax
	call RB_DrawStretchPic
	mov dword [ebp-0x1c], 0xffffffff
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x68]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2098]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_150
RB_Draw3DCommon_140:
	mov eax, sc_showDebug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz RB_Draw3DCommon_150
	mov eax, tess
	mov edx, [eax+0x22a948]
	test edx, edx
	jnz RB_Draw3DCommon_210
RB_Draw3DCommon_280:
	cvtsi2ss xmm0, dword [edi+0xf68]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	cvtsi2ss xmm0, dword [edi+0xf6c]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x1
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov [esp], edi
	call R_Set2D
	mov eax, gfxRenderTargets
	mov eax, [eax+0x78]
	mov [edi+0xc44], eax
	mov dword [edi+0xa50], 0x3f800000
	mov dword [edi+0xa54], 0x0
	mov dword [edi+0xa58], 0x0
	mov dword [edi+0xa5c], 0x0
	add word [edi+0xe6a], 0x1
	mov dword [edi+0xa60], 0x0
	mov dword [edi+0xa64], 0x3f800000
	mov dword [edi+0xa68], 0x0
	mov dword [edi+0xa6c], 0x0
	add word [edi+0xe6c], 0x1
	mov dword [edi+0xa70], 0x0
	mov dword [edi+0xa74], 0x0
	mov dword [edi+0xa78], 0x3f800000
	mov dword [edi+0xa7c], 0x0
	add word [edi+0xe6e], 0x1
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f400000
	mov dword [esp+0x1c], 0x3f400000
	mov dword [esp+0x18], 0x3e800000
	mov dword [esp+0x14], 0x3e800000
	movss xmm0, dword [ebp-0x48]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [_float_0_50000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [_float_0_50000000]
RB_Draw3DCommon_240:
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2090]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_150
RB_Draw3DCommon_60:
	mov eax, sc_showOverlay
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz RB_Draw3DCommon_220
	call RB_ShadowCookieOverlay
	jmp RB_Draw3DCommon_220
RB_Draw3DCommon_130:
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jnz RB_Draw3DCommon_230
RB_Draw3DCommon_260:
	cvtsi2ss xmm0, dword [edi+0xf68]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	cvtsi2ss xmm0, dword [edi+0xf6c]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x5c]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x50], xmm0
	mov eax, gfxRenderTargets
	mov eax, [eax+0x78]
	mov [edi+0xc44], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x1
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov [esp], edi
	call R_Set2D
	mov dword [edi+0xa50], 0x3f800000
	mov dword [edi+0xa54], 0x0
	mov dword [edi+0xa58], 0x0
	mov dword [edi+0xa5c], 0x0
	add word [edi+0xe6a], 0x1
	mov dword [edi+0xa60], 0x0
	mov dword [edi+0xa64], 0x0
	mov dword [edi+0xa68], 0x0
	mov dword [edi+0xa6c], 0x0
	add word [edi+0xe6c], 0x1
	mov dword [edi+0xa70], 0x0
	mov dword [edi+0xa74], 0x0
	mov dword [edi+0xa78], 0x0
	mov dword [edi+0xa7c], 0x0
	add word [edi+0xe6e], 0x1
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x3f000000
	mov dword [esp+0x18], 0x3e800000
	mov dword [esp+0x14], 0x3e800000
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2090]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	mov dword [edi+0xa50], 0x0
	mov dword [edi+0xa54], 0x0
	mov dword [edi+0xa58], 0x0
	mov dword [edi+0xa5c], 0x0
	add word [edi+0xe6a], 0x1
	mov dword [edi+0xa60], 0x0
	mov dword [edi+0xa64], 0x3f800000
	mov dword [edi+0xa68], 0x0
	mov dword [edi+0xa6c], 0x0
	add word [edi+0xe6c], 0x1
	mov dword [edi+0xa70], 0x0
	mov dword [edi+0xa74], 0x0
	mov dword [edi+0xa78], 0x0
	mov dword [edi+0xa7c], 0x0
	add word [edi+0xe6e], 0x1
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x3f400000
	mov dword [esp+0x18], 0x3e800000
	mov dword [esp+0x14], 0x3f000000
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x5c]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2090]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	mov dword [edi+0xa50], 0x0
	mov dword [edi+0xa54], 0x0
	mov dword [edi+0xa58], 0x0
	mov dword [edi+0xa5c], 0x0
	add word [edi+0xe6a], 0x1
	mov dword [edi+0xa60], 0x0
	mov dword [edi+0xa64], 0x0
	mov dword [edi+0xa68], 0x0
	mov dword [edi+0xa6c], 0x0
	add word [edi+0xe6c], 0x1
	mov dword [edi+0xa70], 0x0
	mov dword [edi+0xa74], 0x0
	mov dword [edi+0xa78], 0x3f800000
	mov dword [edi+0xa7c], 0x0
	add word [edi+0xe6e], 0x1
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f400000
	mov dword [esp+0x1c], 0x3f000000
	mov dword [esp+0x18], 0x3f000000
	mov dword [esp+0x14], 0x3e800000
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x58]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0x4], xmm0
	mov edx, rgp
	mov eax, [edx+0x2090]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	mov dword [edi+0xa50], 0x0
	mov dword [edi+0xa54], 0x0
	mov dword [edi+0xa58], 0x0
	mov dword [edi+0xa5c], 0x3f800000
	add word [edi+0xe6a], 0x1
	mov dword [edi+0xa60], 0x0
	mov dword [edi+0xa64], 0x0
	mov dword [edi+0xa68], 0x0
	mov dword [edi+0xa6c], 0x3f800000
	add word [edi+0xe6c], 0x1
	mov dword [edi+0xa70], 0x0
	mov dword [edi+0xa74], 0x0
	mov dword [edi+0xa78], 0x0
	mov dword [edi+0xa7c], 0x3f800000
	add word [edi+0xe6e], 0x1
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f400000
	mov dword [esp+0x1c], 0x3f400000
	mov dword [esp+0x18], 0x3f000000
	mov dword [esp+0x14], 0x3f000000
	movss xmm0, dword [ebp-0x50]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x58]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x5c]
	jmp RB_Draw3DCommon_240
RB_Draw3DCommon_200:
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_250
RB_Draw3DCommon_230:
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_260
RB_Draw3DCommon_160:
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_270
RB_Draw3DCommon_210:
	call RB_EndTessSurface
	jmp RB_Draw3DCommon_280


;RB_Draw3DInternal(GfxViewInfo const*)
RB_Draw3DInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x785c
	mov dword [ebp-0x7810], 0x0
	mov dword [ebp-0x780c], 0x0
	mov dword [ebp-0x7818], 0x0
	mov dword [ebp-0x7814], 0x0
	mov eax, gfxDrawMethod
	mov eax, [eax]
	cmp eax, 0x1
	jz RB_Draw3DInternal_10
	cmp eax, 0x2
	jz RB_Draw3DInternal_20
	test eax, eax
	jnz RB_Draw3DInternal_30
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebx+0x1d8]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	add esp, 0x785c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DInternal_30:
	mov eax, backEndData
	mov eax, [eax]
	mov [ebp-0x77e0], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x184]
	mov [ebp-0x77e4], eax
	cmp eax, 0x2
	jz RB_Draw3DInternal_40
RB_Draw3DInternal_140:
	mov eax, r_depthPrepass
	mov eax, [eax]
	movzx eax, byte [eax+0xc]
	mov [ebp-0x77d5], al
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x77e0]
	mov [esp], esi
	call R_InitContext
	mov eax, [ebp+0x8]
	cmp byte [eax+0x13a8], 0x0
	jnz RB_Draw3DInternal_50
	cmp dword [ebp-0x77e4], 0x1
	jz RB_Draw3DInternal_60
RB_Draw3DInternal_120:
	mov esi, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], esi
	mov [esp], esi
	call memcpy
	lea eax, [esi+0xd8]
	mov [ebp-0x781c], eax
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea edx, [esi+0x1d8]
	mov [ebp-0x7820], edx
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov dword [esp+0x4], 0x2
	mov edi, gfxCmdBufSourceState
	mov [esp], edi
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax]
	mov ecx, [eax+0x4]
	mov [ebp-0x77f8], edx
	mov [ebp-0x77f4], ecx
	mov dword [esp+0x8], 0x2
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	call R_GetClearColor
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x7
	mov eax, [esi+0x90]
	mov [esp], eax
	call R_ClearScreen
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], esi
	mov [esp], esi
	call memcpy
	cmp byte [ebp-0x77d5], 0x0
	jnz RB_Draw3DInternal_70
RB_Draw3DInternal_230:
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x77e0]
	mov [esp], eax
	call R_InitContext
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_DrawLit
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0x77e0]
	mov [esp], edx
	call R_InitContext
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_DrawDecal
	mov dword [esp+0x4], _cstring_resolve_floatz
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x4], _cstring_sun
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov edx, [ebp+0x8]
	add edx, 0x6380
	mov [ebp-0x77ec], edx
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edx
	mov [esp], edi
	call R_InitCmdBufSourceState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], esi
	mov [esp], esi
	call memcpy
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x781c]
	mov [esp], ecx
	call memset
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x7820]
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x2
	mov edx, [ebp-0x77f8]
	mov ecx, [ebp-0x77f4]
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov eax, ecx
	add eax, 0x140
	mov [esp+0x4], eax
	mov [esp], edi
	call R_BeginView
	mov eax, [ebp+0x8]
	add eax, 0x154
	mov [ebp-0x77e8], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call R_SetViewportStruct
	mov edx, [ebp+0x8]
	mov eax, [edx+0x13a0]
	mov [esp], eax
	call RB_DrawSun
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], esi
	mov [esp], esi
	call memcpy
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x77e0]
	mov [esp], esi
	call R_InitContext
	mov dword [esp+0x4], _cstring_dynamic_lights
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x77ec]
	mov [esp+0x4], eax
	lea edx, [ebp-0x7778]
	mov [esp], edx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	lea ecx, [ebp-0x7778]
	mov [esp], ecx
	call R_SetRenderTargetSize
	mov esi, [ebp-0x77e8]
	mov [esp+0x4], esi
	lea eax, [ebp-0x7778]
	mov [esp], eax
	call R_SetViewportStruct
	mov edx, [ebp+0x8]
	mov edx, [edx+0x5590]
	mov [ebp-0x77c4], edx
	test edx, edx
	jnz RB_Draw3DInternal_80
RB_Draw3DInternal_160:
	mov eax, rg
	cmp byte [eax+0x226c], 0x0
	jnz RB_Draw3DInternal_90
RB_Draw3DInternal_150:
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x77e0]
	mov [esp], esi
	call R_InitContext
	mov dword [esp+0x4], _cstring_emissive1
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x77ec]
	mov [esp+0x4], eax
	lea edx, [ebp-0xfc8]
	mov [esp], edx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	lea ecx, [ebp-0xfc8]
	mov [esp], ecx
	call R_SetRenderTargetSize
	mov esi, [ebp-0x77e8]
	mov [esp+0x4], esi
	lea eax, [ebp-0xfc8]
	mov [esp], eax
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	lea edx, [ebp-0x20]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov eax, ecx
	add eax, 0x6354
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea esi, [ebp-0xfc8]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov dword [esp], R_DrawEmissiveCallback
	call R_DrawCall
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, [ebp-0x77ec]
	call RB_EndSceneRendering
	add esp, 0x785c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DInternal_10:
	mov eax, gfxCmdBufContext
	mov edi, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x7794], eax
	mov eax, backEndData
	mov ebx, [eax]
	xor eax, eax
	call R_SetAndClearSceneTarget
	lea esi, [ebp-0x1c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_InitContext
	mov eax, [ebp+0x8]
	add eax, 0x6380
	mov [ebp-0x7804], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	lea ebx, [ebp-0x7778]
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov edx, [ebp+0x8]
	add edx, 0x154
	mov [ebp-0x7800], edx
	mov [esp+0x4], edx
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov eax, ecx
	add eax, 0x6304
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov dword [esp], R_DrawFullbrightLitCallback
	call R_DrawCall
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x7804]
	mov [esp+0x4], eax
	lea ebx, [ebp-0xfc8]
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov edx, [ebp-0x7800]
	mov [esp+0x4], edx
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov eax, ecx
	add eax, 0x632c
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov dword [esp], R_DrawFullbrightDecalCallback
	call R_DrawCall
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x7804]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov edx, [ebp-0x7800]
	mov [esp+0x4], edx
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov eax, ecx
	add eax, 0x6354
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov dword [esp], R_DrawFullbrightEmissiveCallback
	call R_DrawCall
	mov dword [esp+0x8], 0x0
	mov esi, [ebp-0x7804]
	mov [esp+0x4], esi
	mov eax, [ebp-0x7794]
	mov [esp], eax
	call R_InitCmdBufSourceState
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], edi
	call memcpy
	lea eax, [edi+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [edi+0x1d8]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x4], 0x2
	mov edx, [ebp-0x7794]
	mov [esp], edx
	call R_SetRenderTargetSize
	mov [ebp-0x7814], edi
	mov ecx, [ebp-0x7794]
	mov [ebp-0x7818], ecx
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x7818]
	mov edx, [ebp-0x7814]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov eax, edx
	add eax, 0x140
	mov [esp+0x4], eax
	mov ecx, [ebp-0x7794]
	mov [esp], ecx
	call R_BeginView
	mov esi, [ebp-0x7800]
	mov [esp+0x4], esi
	mov eax, [ebp-0x7794]
	mov [esp], eax
	call R_SetViewportStruct
	mov edx, [ebp+0x8]
	mov eax, [edx+0x13a0]
	mov [esp], eax
	call RB_DrawSun
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], edi
	mov [esp], ebx
	call memcpy
	mov [ebp-0x780c], edi
	mov ecx, [ebp-0x7794]
	mov [ebp-0x7810], ecx
	mov esi, [ebp+0x8]
	mov [esp], esi
	mov ecx, [ebp-0x7804]
	mov eax, [ebp-0x7810]
	mov edx, [ebp-0x780c]
	call RB_EndSceneRendering
	add esp, 0x785c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DInternal_20:
	mov eax, gfxCmdBufContext
	mov edx, [eax]
	mov ecx, [eax+0x4]
	mov [ebp-0x7790], edx
	mov [ebp-0x778c], ecx
	mov eax, backEndData
	mov ebx, [eax]
	xor eax, eax
	call R_SetAndClearSceneTarget
	lea edi, [ebp-0x1c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call R_InitContext
	mov ecx, [ebp+0x8]
	add ecx, 0x6380
	mov [ebp-0x77fc], ecx
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ecx
	lea ebx, [ebp-0xfc8]
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov esi, [ebp+0x8]
	add esi, 0x154
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], edi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	add eax, 0x6304
	mov [esp+0x10], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov dword [esp], R_DrawDebugShaderLitCallback
	call R_DrawCall
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x77fc]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], edi
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	add eax, 0x632c
	mov [esp+0x10], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov dword [esp], R_DrawDebugShaderDecalCallback
	call R_DrawCall
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x77fc]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call R_SetRenderTargetSize
	mov [esp+0x4], esi
	mov [esp], ebx
	call R_SetViewportStruct
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], edi
	mov esi, [ebp+0x8]
	mov [esp+0x14], esi
	mov eax, esi
	add eax, 0x6354
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], R_DrawDebugShaderEmissiveCallback
	call R_DrawCall
	mov [esp], esi
	mov ecx, [ebp-0x77fc]
	mov eax, [ebp-0x7790]
	mov edx, [ebp-0x778c]
	call RB_EndSceneRendering
	add esp, 0x785c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_Draw3DInternal_50:
	mov dword [ebp-0x77dc], 0x5
	mov esi, 0x6
RB_Draw3DInternal_300:
	mov ebx, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea eax, [ebx+0xd8]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebx+0x1d8]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov edx, [ebp-0x77dc]
	mov [esp+0x4], edx
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov ecx, [ebp-0x77dc]
	mov [esp+0x8], ecx
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x90]
	mov [esp], eax
	call R_ClearScreen
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov [esp], ebx
	call memcpy
	lea esi, [ebp-0x20]
	mov [esp+0x4], esi
	mov eax, [ebp-0x77e0]
	mov [esp], eax
	call R_InitContext
	mov dword [esp+0x8], 0x67b0
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x7778]
	mov [esp], ecx
	call memcpy
	lea esi, [ebp-0x7778]
	mov [esp], esi
	call R_SetupViewProjectionMatrices
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x15c]
	cmp ecx, 0x1
	ja RB_Draw3DInternal_100
	xor edi, edi
RB_Draw3DInternal_290:
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x160]
	cmp ecx, 0x1
	ja RB_Draw3DInternal_110
	xor esi, esi
RB_Draw3DInternal_260:
	mov [ebp-0x75fc], edi
	mov [ebp-0x760c], edi
	mov [ebp-0x761c], edi
	mov [ebp-0x75f8], esi
	mov [ebp-0x7608], esi
	mov [ebp-0x7618], esi
	lea ecx, [ebp-0xfc8]
	mov [ebp-0x1478], ecx
	mov dword [esp+0xc], 0x20
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x6
	lea ebx, [ebp-0xfb8]
	mov [esp], ebx
	call R_InitDynamicMesh
	mov dword [esp+0x24], 0xffffffff
	mov eax, 0x3f800000
	mov [esp+0x20], eax
	mov [esp+0x1c], eax
	xor eax, eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	cvtsi2ss xmm0, esi
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, edi
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	lea esi, [ebp-0xfc8]
	mov [esp], esi
	call R_SetQuadMesh
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea edx, [ebp-0x7778]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x77dc]
	mov [esp], ecx
	call R_DepthPrepass
	mov [esp], ebx
	call R_ShutdownDynamicMesh
	cmp dword [ebp-0x77e4], 0x1
	jnz RB_Draw3DInternal_120
	mov esi, [ebp+0x8]
	mov [esp], esi
	call RB_DrawShadowCookies
	jmp RB_Draw3DInternal_120
RB_Draw3DInternal_40:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0xd8]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x77e0]
	test [ecx+edx*4+0x118230], eax
	jnz RB_Draw3DInternal_130
	mov edx, ecx
RB_Draw3DInternal_330:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call RB_SpotShadowMaps
	jmp RB_Draw3DInternal_140
RB_Draw3DInternal_90:
	mov dword [esp+0x4], _cstring_resolve_distorti
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x4], 0x2
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov dword [esp+0x8], 0x2
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov eax, gfxRenderTargets
	mov eax, [eax+0x3c]
	mov [esp+0x8], eax
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_Resolve
	jmp RB_Draw3DInternal_150
RB_Draw3DInternal_80:
	mov ebx, [ebp+0x8]
	add ebx, 0x5370
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, colorWhite
	mov [esp], eax
	call R_ConvertColorToBytes
	mov ecx, [ebp+0x8]
	mov [ebp-0xfc8], ecx
	mov eax, [ebp-0x77c4]
	test eax, eax
	jle RB_Draw3DInternal_160
	mov edi, ebx
	mov dword [ebp-0x77c8], 0x0
	lea esi, [ecx+0x100]
	mov [ebp-0x7834], esi
	add ecx, 0x5510
	mov [ebp-0x7838], ecx
	mov edx, ecx
RB_Draw3DInternal_220:
	lea eax, [edi+0x40]
	mov [ebp-0x77d4], eax
	mov [ebp-0xfc0], eax
	mov [ebp-0xfc4], edx
	mov dword [ebp-0x40], 0x3f800000
	mov dword [ebp-0x3c], 0xbf800000
	mov dword [ebp-0x38], 0x3f800000
	mov dword [ebp-0x34], 0xbf800000
	lea eax, [edi+0x1c]
	movss xmm0, dword [edi+0x1c]
	movss [ebp-0x77b0], xmm0
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x100]
	movss [ebp-0x77ac], xmm0
	movss xmm1, dword [ebp-0x77b0]
	subss xmm1, xmm0
	movss [ebp-0x7780], xmm1
	movss xmm2, dword [eax+0x4]
	movss [ebp-0x77a8], xmm2
	mov edx, [ebp-0x7834]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x77a4], xmm0
	subss xmm2, xmm0
	movss [ebp-0x7784], xmm2
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x77a0], xmm1
	movss xmm2, dword [edx+0x8]
	movss [ebp-0x779c], xmm2
	subss xmm1, xmm2
	movss [ebp-0x7788], xmm1
	movss xmm1, dword [ebp-0x7780]
	mulss xmm1, xmm1
	movss xmm0, dword [ebp-0x7784]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x7788]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss xmm7, dword [edi+0x28]
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm3, xmm1
	subss xmm3, xmm0
	ucomiss xmm3, [_float_1_00000000]
	jbe RB_Draw3DInternal_170
	sqrtss xmm0, xmm3
	divss xmm1, xmm0
	movss [ebp-0x777c], xmm1
	movss xmm6, dword [_data16_80000000]
	xor dword [ebp-0x777c], 0x80000000
	mov dword [ebp-0x7798], 0x3f800000
	xor ebx, ebx
	mov edx, [ebp+0x8]
	add edx, 0x55e0
RB_Draw3DInternal_210:
	mov ecx, ebx
	shr ecx, 1
	mov eax, 0x2
	sub eax, ecx
	lea eax, [eax+eax*2]
	mov esi, [ebp+0x8]
	lea eax, [esi+eax*4+0x110]
	movss xmm3, dword [ebp-0x7798]
	mulss xmm3, [eax]
	movss xmm1, dword [ebp-0x7798]
	mulss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x7798]
	mulss xmm2, [eax+0x8]
	movss xmm4, dword [ebp-0x7788]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x7784]
	mulss xmm0, xmm2
	subss xmm4, xmm0
	mulss xmm2, [ebp-0x7780]
	movss xmm0, dword [ebp-0x7788]
	mulss xmm0, xmm3
	subss xmm2, xmm0
	movss xmm5, dword [ebp-0x7784]
	mulss xmm5, xmm3
	mulss xmm1, [ebp-0x7780]
	subss xmm5, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jb RB_Draw3DInternal_180
	movss xmm0, dword [_float_1_00000000]
RB_Draw3DInternal_320:
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0x777c]
	addss xmm4, [ebp-0x77ac]
	subss xmm4, [ebp-0x77b0]
	movaps xmm3, xmm2
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x777c]
	addss xmm3, [ebp-0x77a4]
	subss xmm3, [ebp-0x77a8]
	movaps xmm2, xmm5
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0x777c]
	addss xmm2, [ebp-0x779c]
	subss xmm2, [ebp-0x77a0]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm6
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jb RB_Draw3DInternal_190
	movss xmm0, dword [_float_1_00000000]
RB_Draw3DInternal_310:
	mulss xmm4, xmm0
	mulss xmm4, xmm7
	addss xmm4, [ebp-0x77b0]
	mulss xmm3, xmm0
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x77a8]
	mulss xmm2, xmm0
	mulss xmm2, xmm7
	addss xmm2, [ebp-0x77a0]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0xc]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x10]
	addss xmm0, xmm1
	addss xmm0, [edx+0x14]
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	jae RB_Draw3DInternal_200
	movaps xmm1, xmm4
	mov eax, [ebp+0x8]
	mulss xmm1, [eax+0x8c]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x9c]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0xac]
	addss xmm1, xmm0
	addss xmm1, [eax+0xbc]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	jae RB_Draw3DInternal_200
	movaps xmm0, xmm4
	mulss xmm0, [eax+ecx*4+0x80]
	mulss xmm3, [eax+ecx*4+0x90]
	addss xmm0, xmm3
	mulss xmm2, [eax+ecx*4+0xa0]
	addss xmm0, xmm2
	addss xmm0, [eax+ecx*4+0xb0]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm1
	movss xmm3, dword [_float_1_00000000]
	andnps xmm1, xmm3
	orps xmm1, xmm2
	movss xmm5, dword [_float__1_00000000]
	subss xmm5, xmm0
	pxor xmm2, xmm2
	cmpss xmm2, xmm5, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm3, dword [_float__1_00000000]
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp+ebx*4-0x40], xmm0
RB_Draw3DInternal_200:
	add ebx, 0x1
	add edx, 0x10
	xor dword [ebp-0x7798], 0x80000000
	cmp ebx, 0x4
	jnz RB_Draw3DInternal_210
RB_Draw3DInternal_170:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss [ebp-0x77b8], xmm0
	mov eax, [edx+0x160]
	sar eax, 1
	cvtsi2ss xmm1, eax
	movss [ebp-0x77b4], xmm1
	movss xmm2, dword [_float_1_00000000]
	addss xmm2, [ebp-0x3c]
	mulss xmm0, xmm2
	movss [ebp-0x77c0], xmm0
	movss xmm3, dword [ebp-0x38]
	movss [ebp-0x77d0], xmm3
	movss xmm5, dword [_float_1_00000000]
	subss xmm5, xmm3
	mulss xmm1, xmm5
	movss [ebp-0x77bc], xmm1
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0x77cc], xmm0
	movss xmm1, dword [ebp-0x77c0]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x7824]
	cvttss2si esi, [ebp-0x7824]
	movss xmm2, dword [ebp-0x77bc]
	movss [esp], xmm2
	call floorf
	fstp dword [ebp-0x7828]
	cvttss2si ebx, [ebp-0x7828]
	movss xmm0, dword [ebp-0x77cc]
	addss xmm0, [_float_1_00000000]
	mulss xmm0, [ebp-0x77b8]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x782c]
	cvttss2si eax, [ebp-0x782c]
	sub eax, esi
	mov [ebp-0xfb4], eax
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x34]
	mulss xmm0, [ebp-0x77b4]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x7830]
	cvttss2si eax, [ebp-0x7830]
	sub eax, ebx
	mov [ebp-0xfb0], eax
	mov eax, [ebp+0x8]
	add esi, [eax+0x154]
	mov [ebp-0xfbc], esi
	add ebx, [eax+0x158]
	mov [ebp-0xfb8], ebx
	mov dword [esp+0x24], 0xffffffff
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x77d0]
	subss xmm0, [ebp-0x34]
	movss xmm1, dword [ebp-0x77b4]
	mulss xmm1, xmm0
	movss [esp+0x10], xmm1
	movss xmm2, dword [ebp-0x77cc]
	subss xmm2, [ebp-0x3c]
	movss xmm3, dword [ebp-0x77b8]
	mulss xmm3, xmm2
	movss [esp+0xc], xmm3
	movss xmm5, dword [ebp-0x77bc]
	movss [esp+0x8], xmm5
	movss xmm0, dword [ebp-0x77c0]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0xfc4]
	mov [esp], eax
	call R_SetQuadMeshData
	mov dword [esp+0x1c], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov edx, [ebp+0x8]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x77d4]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea esi, [ebp-0x7778]
	mov [esp+0x8], esi
	lea eax, [ebp-0xfc8]
	mov [esp+0x4], eax
	mov dword [esp], R_DrawPointLitSurfsCallback
	call R_DrawCall
	add dword [ebp-0x77c8], 0x1
	add dword [ebp-0x7838], 0x20
	add edi, 0x68
	mov edx, [ebp-0x77c8]
	cmp [ebp-0x77c4], edx
	jz RB_Draw3DInternal_160
	mov edx, [ebp-0x7838]
	jmp RB_Draw3DInternal_220
RB_Draw3DInternal_70:
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x77e0]
	mov [esp], eax
	call R_InitContext
	mov dword [esp+0x8], 0x67b0
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x7778]
	mov [esp], ecx
	call memcpy
	mov byte [ebp-0x63d0], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea edx, [ebp-0x7778]
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call R_DepthPrepass
	jmp RB_Draw3DInternal_230
RB_Draw3DInternal_110:
	mov edx, 0x1
	mov eax, 0x20
RB_Draw3DInternal_250:
	add edx, edx
	cmp ecx, edx
	jbe RB_Draw3DInternal_240
	sub eax, 0x1
	jnz RB_Draw3DInternal_250
RB_Draw3DInternal_240:
	mov esi, edx
	shr esi, 1
	jmp RB_Draw3DInternal_260
RB_Draw3DInternal_100:
	mov edx, 0x1
	mov eax, 0x20
RB_Draw3DInternal_280:
	add edx, edx
	cmp ecx, edx
	jbe RB_Draw3DInternal_270
	sub eax, 0x1
	jnz RB_Draw3DInternal_280
RB_Draw3DInternal_270:
	mov edi, edx
	shr edi, 1
	jmp RB_Draw3DInternal_290
RB_Draw3DInternal_60:
	mov dword [ebp-0x77dc], 0x6
	mov esi, 0x7
	jmp RB_Draw3DInternal_300
RB_Draw3DInternal_190:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp RB_Draw3DInternal_310
RB_Draw3DInternal_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp RB_Draw3DInternal_320
RB_Draw3DInternal_130:
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov [esp], ecx
	call RB_SunShadowMaps
	mov edx, [ebp-0x77e0]
	jmp RB_Draw3DInternal_330
	add [eax], al


;Initialized global or static variables of rb_draw3d:
SECTION .data


;Initialized constant data of rb_draw3d:
SECTION .rdata


;Zero initialized global or static variables of rb_draw3d:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_emissive:		db "emissive",0
_cstring_clear_render_tar:		db "Clear Render Target",0
_cstring_post_effects:		db "Post Effects",0
_cstring_resolve_floatz:		db "Resolve FloatZ",0
_cstring_sun:		db "Sun",0
_cstring_dynamic_lights:		db "Dynamic Lights",0
_cstring_emissive1:		db "Emissive",0
_cstring_resolve_distorti:		db "Resolve Distortion",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__1_00000000:		dd 0xbf800000	; -1

