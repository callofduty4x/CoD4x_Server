;Imports of r_state:
	extern R_BeginView
	extern gfxCmdBufState
	extern memcpy
	extern memset
	extern clients
	extern g_xAnimInfo
	extern pixelCostMode
	extern r_scaleViewport
	extern r_lightMap
	extern rgp
	extern r_texFilterAnisoMax
	extern gfxMetrics
	extern r_texFilterAnisoMin
	extern r_texFilterDisable
	extern r_texFilterMipBias
	extern dx_ctx
	extern r_texFilterMipMode
	extern x1900ClearData1
	extern r_aaAlpha
	extern r_polygonOffsetBias
	extern r_polygonOffsetScale
	extern sm_polygonOffsetBias
	extern sm_polygonOffsetScale
	extern MatrixTranspose44
	extern MatrixInverse44
	extern MatrixTransformVector44
	extern r_outdoorAwayBias
	extern r_outdoorDownBias
	extern MatrixMultiply44
	extern gfxRenderTargets
	extern vidConfig
	extern RB_PixelCost_OverrideRenderTarget
	extern floorf
	extern _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	extern _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj
	extern rg
	extern Com_Error
	extern UnitQuatToAxis
	extern R_GetActiveWorldMatrix
	extern MatrixSet44

;Exports of r_state:
	global s_cullTable
	global s_depthTestTable
	global s_viewportBehaviorForRenderTarget
	global s_stencilOpTable
	global s_stencilFuncTable
	global s_blendTable
	global s_blendOpTable
	global s_mipFilterTable
	global R_DrawCall
	global R_SetSampler
	global R_ClearScreen
	global R_GetViewport
	global R_SetLightmap
	global R_SetViewport
	global R_SetTexFilter
	global R_BeginMaterial
	global R_ChangeState_0
	global R_ChangeState_1
	global R_GetCodeMatrix
	global R_SetMeshStream
	global R_DisableSampler
	global R_UpdateViewport
	global R_SetRenderTarget
	global R_SetSamplerState
	global R_ChangeDepthRange
	global R_SetCompleteState
	global R_SetViewportStruct
	global R_SetViewportValues
	global R_GetTextureFromCode
	global R_SetReflectionProbe
	global R_ClearScreenInternal
	global R_SetRenderTargetSize
	global R_DeriveOpenGLMatrices
	global R_DrawIndexedPrimitive
	global R_ForceSetStencilState
	global R_TextureFromCodeError
	global R_ChangeObjectPlacement
	global R_ClearAllStreamSources
	global R_OverrideGrayscaleImage
	global R_SetInitialContextState
	global R_ChangeDepthHackNearClip
	global R_SetAlphaAntiAliasingState
	global shadowmapClearColor
	global g_renderTargetIsOverridden
	global s_decodeSamplerFilterState
	global s_manualObjectPlacement


SECTION .text


;R_DrawCall(void (*)(void const*, GfxCmdBufContext, GfxCmdBufContext), void const*, GfxCmdBufSourceState*, GfxViewInfo const*, GfxDrawSurfListInfo const*, GfxViewParms const*, GfxCmdBuf*, GfxCmdBuf*)
R_DrawCall:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x146c
	mov dword [ebp-0x1440], 0x0
	mov dword [ebp-0x143c], 0x0
	mov dword [ebp-0x1448], 0x0
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x1450], 0x0
	mov dword [ebp-0x144c], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	add eax, 0x140
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call R_BeginView
	mov dword [esp+0x8], 0xa10
	mov edx, gfxCmdBufState
	mov [esp+0x4], edx
	lea eax, [ebp-0xa28]
	mov [esp], eax
	call memcpy
	lea eax, [ebp-0x950]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x850]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0x24]
	test ebx, ebx
	jz R_DrawCall_10
	lea ebx, [ebp-0x1438]
	mov dword [esp+0x8], 0xa10
	mov edx, gfxCmdBufState
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	lea eax, [ebp-0x1360]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	lea eax, [ebp-0x1260]
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov esi, [ebp+0x10]
	lea eax, [ebp-0xa28]
	mov [ebp-0x144c], eax
	mov [ebp-0x1450], esi
	mov [esp+0xc], esi
	mov [esp+0x10], ebx
	mov eax, [ebp-0x1450]
	mov edx, [ebp-0x144c]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dword [ebp+0x8]
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], ebx
	mov eax, gfxCmdBufState
	mov [esp], eax
	call memcpy
R_DrawCall_20:
	mov dword [esp+0x8], 0xa10
	lea eax, [ebp-0xa28]
	mov [esp+0x4], eax
	mov eax, gfxCmdBufState
	mov [esp], eax
	call memcpy
	add esp, 0x146c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawCall_10:
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x1448], 0x0
	lea edx, [ebp-0xa28]
	mov [ebp-0x143c], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x1440], eax
	mov eax, [ebp-0x1448]
	mov edx, [ebp-0x1444]
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov eax, [ebp-0x1440]
	mov edx, [ebp-0x143c]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call dword [ebp+0x8]
	jmp R_DrawCall_20
	nop


;R_SetSampler(GfxCmdBufContext, unsigned int, unsigned char, GfxImage const*)
R_SetSampler:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x10]
	mov edx, [ebp+0x18]
	movzx edi, byte [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [ebp-0x18], eax
	mov ecx, [ebp+0xc]
	mov [ebp-0x14], ecx
	lea eax, [edx+0x4]
	cmp [ecx+ebx*4+0x50], eax
	jz R_SetSampler_10
	mov [ecx+ebx*4+0x50], eax
	mov ecx, [edx+0x4]
	mov eax, [ebp-0x14]
	mov esi, [eax+0x90]
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [esi+0x3a0]
	mov [eax], ecx
	test ecx, ecx
	jz R_SetSampler_10
	cmp ebx, 0xffffffff
	jz R_SetSampler_20
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [esi+0x444], eax
R_SetSampler_10:
	mov eax, [ebp-0x18]
	cmp dword [eax+0xf38], 0x2
	jz R_SetSampler_30
	mov edx, edi
	mov ecx, [ebp-0x14]
	cmp [ecx+ebx], dl
	jz R_SetSampler_40
	mov [ecx+ebx], dl
	mov eax, edi
	movzx edx, al
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, clients+0x46cc0
	mov eax, edx
	and eax, 0x20
	shl eax, 0x10
	or esi, eax
	mov eax, edx
	and eax, 0x40
	shl eax, 0x11
	or esi, eax
	and edx, 0x80
	shl edx, 0x12
	or esi, edx
R_SetSampler_210:
	mov edx, [ebp-0x14]
	mov edx, [edx+ebx*4+0x10]
	mov [ebp-0x20], edx
	cmp esi, edx
	jz R_SetSampler_40
	mov ecx, [ebp-0x14]
	mov edi, [ecx+0x90]
	xor edx, esi
	mov [ebp-0x1c], edx
	and dh, 0xf
	jz R_SetSampler_50
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf00
	shr eax, 0x8
	mov [edx+0x18], eax
	cmp ebx, 0xffffffff
	jz R_SetSampler_60
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_50:
	test word [ebp-0x1c], 0xf000
	jz R_SetSampler_70
R_SetSampler_230:
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf000
	shr eax, 0xc
	mov [edx+0x14], eax
	cmp ebx, 0xffffffff
	jz R_SetSampler_80
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_70:
	cmp byte [ebp-0x1c], 0x0
	jz R_SetSampler_90
R_SetSampler_220:
	mov ecx, esi
	and ecx, 0xff
	cmp ecx, 0x1
	jle R_SetSampler_100
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	mov [eax+0x28], ecx
	cmp ebx, 0xffffffff
	jz R_SetSampler_110
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_90:
	mov [ebp-0x10], esi
R_SetSampler_240:
	test dword [ebp-0x1c], 0xf0000
	jz R_SetSampler_120
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf0000
	shr eax, 0x10
	mov [edx+0x1c], eax
	cmp ebx, 0xffffffff
	jz R_SetSampler_130
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_120:
	test dword [ebp-0x1c], 0x3f00000
	jnz R_SetSampler_140
R_SetSampler_190:
	mov edx, [ebp-0x10]
	mov eax, [ebp-0x14]
	mov [eax+ebx*4+0x10], edx
R_SetSampler_40:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetSampler_140:
	test dword [ebp-0x1c], _cstring_olprio_pain
	jz R_SetSampler_150
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, _cstring_olprio_pain
	shr eax, 0x14
	mov [edx+0x4], eax
	cmp ebx, 0xffffffff
	jz R_SetSampler_160
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_150:
	test dword [ebp-0x1c], g_xAnimInfo+0x20360
	jz R_SetSampler_170
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, g_xAnimInfo+0x20360
	shr eax, 0x16
	mov [edx+0x8], eax
	cmp ebx, 0xffffffff
	jz R_SetSampler_180
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSampler_170:
	test dword [ebp-0x1c], 0x3000000
	jz R_SetSampler_190
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	and esi, 0x3000000
	shr esi, 0x18
	mov [eax+0xc], esi
	cmp ebx, 0xffffffff
	jz R_SetSampler_200
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
	jmp R_SetSampler_190
R_SetSampler_30:
	mov edx, edi
	mov ecx, [ebp-0x14]
	mov [ecx+ebx], dl
	mov eax, edi
	movzx edx, al
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, clients+0x46cc0
	mov eax, edx
	and eax, 0x20
	shl eax, 0x10
	or esi, eax
	mov eax, edx
	and eax, 0x40
	shl eax, 0x11
	or esi, eax
	and edx, 0x80
	shl edx, 0x12
	or esi, edx
	mov eax, esi
	and eax, 0xf0000
	cmp eax, 0x10000
	jnz R_SetSampler_210
	and esi, 0xfff0ffff
	or esi, 0x20000
	jmp R_SetSampler_210
R_SetSampler_20:
	mov ecx, [esi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [esi+0x444], eax
	jmp R_SetSampler_10
R_SetSampler_80:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	cmp byte [ebp-0x1c], 0x0
	jz R_SetSampler_90
	jmp R_SetSampler_220
R_SetSampler_130:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test dword [ebp-0x1c], 0x3f00000
	jz R_SetSampler_190
	jmp R_SetSampler_140
R_SetSampler_60:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test word [ebp-0x1c], 0xf000
	jz R_SetSampler_70
	jmp R_SetSampler_230
R_SetSampler_110:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSampler_90
R_SetSampler_100:
	mov eax, esi
	and eax, 0xffffff00
	mov [ebp-0x10], eax
	movzx eax, byte [ebp-0x20]
	or [ebp-0x10], eax
	jmp R_SetSampler_240
R_SetSampler_180:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSampler_170
R_SetSampler_160:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSampler_150
R_SetSampler_200:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSampler_190


;R_ClearScreen(IDirect3DDevice9*, unsigned char, float const*, float, unsigned char, GfxViewport const*)
R_ClearScreen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov [ebp-0x10], eax
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov ebx, [ebp+0x1c]
	movzx edx, byte [ebp+0xc]
	movzx ecx, byte [ebp+0x18]
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jle R_ClearScreen_10
	and dl, 0xfe
	jz R_ClearScreen_20
R_ClearScreen_10:
	mov [ebp+0x1c], ebx
	movzx eax, cl
	mov [ebp+0x18], eax
	mov [ebp+0x14], esi
	mov [ebp+0x10], edi
	movzx eax, dl
	mov [ebp+0xc], eax
	mov eax, [ebp-0x10]
	mov [ebp+0x8], eax
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_ClearScreenInternal
R_ClearScreen_20:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_GetViewport(GfxCmdBufSourceState*, GfxViewport*)
R_GetViewport:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp dword [edx+0xf64], 0x1
	jz R_GetViewport_10
	mov eax, [edx+0xf50]
	mov [ecx], eax
	mov eax, [edx+0xf54]
	mov [ecx+0x4], eax
	mov eax, [edx+0xf58]
	mov [ecx+0x8], eax
	mov eax, [edx+0xf5c]
	mov [ecx+0xc], eax
R_GetViewport_40:
	cmp dword [edx+0xf38], 0x2
	jz R_GetViewport_20
	mov ebx, r_scaleViewport
	mov eax, [ebx]
	movss xmm0, dword [eax+0xc]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	jp R_GetViewport_30
	jz R_GetViewport_20
R_GetViewport_30:
	cvtsi2ss xmm1, dword [ecx+0x8]
	movaps xmm2, xmm4
	subss xmm2, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	movss xmm3, dword [_float_0_50000000]
	mulss xmm0, xmm3
	cvttss2si eax, xmm0
	add [ecx], eax
	cvtsi2ss xmm2, dword [ecx+0xc]
	mov eax, [ebx]
	movaps xmm0, xmm4
	subss xmm0, [eax+0xc]
	mulss xmm0, xmm2
	mulss xmm0, xmm3
	cvttss2si eax, xmm0
	add [ecx+0x4], eax
	mov eax, [ebx]
	mulss xmm1, [eax+0xc]
	cvttss2si eax, xmm1
	mov edx, 0x1
	cmp eax, 0x1
	cmovle eax, edx
	mov [ecx+0x8], eax
	mov eax, [ebx]
	mulss xmm2, [eax+0xc]
	cvttss2si eax, xmm2
	cmp eax, 0x1
	cmovle eax, edx
	mov [ecx+0xc], eax
R_GetViewport_20:
	pop ebx
	pop ebp
	ret
R_GetViewport_10:
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
	mov eax, [edx+0xf68]
	mov [ecx+0x8], eax
	mov eax, [edx+0xf6c]
	mov [ecx+0xc], eax
	jmp R_GetViewport_40


;R_SetLightmap(GfxCmdBufContext, unsigned int)
R_SetLightmap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x1c], edx
	mov eax, [edx+0xc4]
	mov [ebp-0x24], eax
	cmp dword [ebp+0x10], 0x1f
	jz R_SetLightmap_10
	mov eax, r_lightMap
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jz R_SetLightmap_20
	cmp eax, 0x2
	jz R_SetLightmap_30
	test eax, eax
	jnz R_SetLightmap_40
	mov eax, rgp
	mov ebx, [eax+0x200c]
R_SetLightmap_90:
	mov edx, [ebp-0x24]
	test byte [edx+0xf], 0x2
	jnz R_SetLightmap_50
R_SetLightmap_80:
	test byte [edx+0xf], 0x4
	jz R_SetLightmap_10
	mov esi, [ebp-0x20]
	mov edi, [ebp-0x1c]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x3
	mov [esp], esi
	mov [esp+0x4], edi
	call R_SetSampler
R_SetLightmap_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetLightmap_20:
	mov eax, [ebp-0x24]
	test byte [eax+0xf], 0x2
	jz R_SetLightmap_60
	mov edx, [ebp-0x20]
	mov eax, [edx+0xca8]
	mov esi, [eax+0x11822c]
	test esi, esi
	jz R_SetLightmap_70
	mov eax, rgp
	mov eax, [eax+0x2008]
	mov edx, [ebp+0x8]
	mov [ebp-0x40], edx
	mov edx, [ebp+0xc]
	mov [ebp-0x3c], edx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	mov edx, [ebp-0x24]
R_SetLightmap_100:
	test byte [edx+0xf], 0x4
	jz R_SetLightmap_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x10c]
	mov edx, [ebp+0x10]
	mov eax, [eax+edx*8+0x4]
	mov edx, [ebp-0x20]
	mov [ebp-0x30], edx
	mov edx, [ebp-0x1c]
	mov [ebp-0x2c], edx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x3
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetLightmap_40:
	mov eax, rgp
	mov ebx, [eax+0x2018]
	mov edx, [ebp-0x24]
	test byte [edx+0xf], 0x2
	jz R_SetLightmap_80
R_SetLightmap_50:
	mov eax, [ebp-0x20]
	mov [ebp-0x50], eax
	mov edx, [ebp-0x1c]
	mov [ebp-0x4c], edx
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	mov edx, [ebp-0x24]
	jmp R_SetLightmap_80
R_SetLightmap_30:
	mov eax, rgp
	mov ebx, [eax+0x2008]
	jmp R_SetLightmap_90
R_SetLightmap_60:
	mov edx, eax
	jmp R_SetLightmap_100
R_SetLightmap_70:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x10c]
	mov edx, [ebp+0x10]
	mov eax, [eax+edx*8]
	mov edx, [ebp+0x8]
	mov [ebp-0x38], edx
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	mov edx, [ebp-0x24]
	jmp R_SetLightmap_100
	add [eax], al


;R_SetViewport(GfxCmdBufState*, GfxViewport const*)
R_SetViewport:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [esi]
	cmp edx, [ecx+0x9f4]
	jz R_SetViewport_10
R_SetViewport_20:
	mov [ecx+0x9f4], edx
	mov eax, [esi+0x4]
	mov [ecx+0x9f8], eax
	mov eax, [esi+0x8]
	mov [ecx+0x9fc], eax
	mov eax, [esi+0xc]
	mov [ecx+0xa00], eax
	mov ebx, [ecx+0xd4]
	mov edx, [ecx+0xd0]
	mov ecx, [ecx+0x90]
	mov eax, [esi]
	mov [ebp-0x20], eax
	mov eax, [esi+0x4]
	mov [ebp-0x1c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x18], eax
	mov eax, [esi+0xc]
	mov [ebp-0x14], eax
	mov [ebp-0x10], edx
	mov [ebp-0xc], ebx
	mov edx, [ecx]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ecx
	call dword [edx+0xbc]
R_SetViewport_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_SetViewport_10:
	mov eax, [esi+0x4]
	cmp eax, [ecx+0x9f8]
	jnz R_SetViewport_20
	mov eax, [esi+0x8]
	cmp eax, [ecx+0x9fc]
	jnz R_SetViewport_20
	mov eax, [esi+0xc]
	cmp eax, [ecx+0xa00]
	jnz R_SetViewport_20
	jmp R_SetViewport_30


;R_SetTexFilter()
R_SetTexFilter:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, r_texFilterAnisoMax
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov [ebp-0x24], edx
	mov ecx, gfxMetrics
	mov eax, [ecx+0xc]
	cmp edx, eax
	cmovle eax, [ebp-0x24]
	mov [ebp-0x24], eax
	sub eax, 0x1
	jle R_SetTexFilter_10
	cmp byte [ecx+0x8], 0x1
	sbb eax, eax
	and eax, 0xffffff00
	add eax, 0x300
	mov [ebp-0x30], eax
	cmp byte [ecx+0x9], 0x1
	sbb eax, eax
	and eax, 0xfffff000
	add eax, 0x3000
	or [ebp-0x30], eax
R_SetTexFilter_150:
	mov eax, r_texFilterAnisoMin
	mov edx, [eax]
	lea eax, [edx+0xc]
	mov ecx, [ebp-0x24]
	lea ebx, [ebp-0x24]
	cmp [edx+0xc], ecx
	cmovge eax, ebx
	mov edi, [eax]
	mov [ebp-0x28], edi
	cmp edi, 0x1
	mov eax, 0x2200
	cmovnz eax, [ebp-0x30]
	mov [ebp-0x34], eax
	mov dword [ebp-0x20], 0x2
	cmp ecx, 0x2
	jle R_SetTexFilter_20
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x1c], 0x4
	cmp ecx, 0x4
	jle R_SetTexFilter_30
R_SetTexFilter_120:
	lea edx, [ebp-0x1c]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov eax, r_texFilterDisable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SetTexFilter_40
R_SetTexFilter_130:
	mov dword [ebp-0x30], 0x1100
	mov edi, 0x1
	mov dword [ebp-0x34], 0x1100
	mov dword [ebp-0x2c], 0x1
	mov edx, 0x1
	mov dword [ebp-0x38], 0x1100
	mov eax, 0x3
R_SetTexFilter_140:
	xor ecx, ecx
	mov ebx, s_decodeSamplerFilterState
	lea esi, [eax+eax*2]
	or edi, [ebp-0x34]
	mov [ebp-0x3c], edi
	mov edi, [ebp-0x30]
	or edi, [ebp-0x2c]
	or edx, [ebp-0x30]
	mov [ebp-0x40], edx
	jmp R_SetTexFilter_50
R_SetTexFilter_90:
	cmp edx, 0x3
	jz R_SetTexFilter_60
	cmp edx, 0x4
	jz R_SetTexFilter_70
	or eax, 0x1101
R_SetTexFilter_110:
	mov [ebx], eax
	add ecx, 0x1
	add ebx, 0x4
	cmp ecx, 0x18
	jz R_SetTexFilter_80
R_SetTexFilter_50:
	mov edx, ecx
	and edx, 0x7
	mov eax, ecx
	and eax, 0x18
	sar eax, 0x3
	lea eax, [esi+eax]
	mov eax, [eax*4+s_mipFilterTable]
	shl eax, 0x10
	cmp edx, 0x2
	jnz R_SetTexFilter_90
	test eax, eax
	jnz R_SetTexFilter_100
	mov eax, [ebp-0x38]
	or eax, 0x1
	mov [ebx], eax
	add ecx, 0x1
	add ebx, 0x4
	cmp ecx, 0x18
	jnz R_SetTexFilter_50
R_SetTexFilter_80:
	mov eax, r_texFilterMipBias
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov eax, dx_ctx
	mov [eax+0x2cd0], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetTexFilter_60:
	or eax, edi
	jmp R_SetTexFilter_110
R_SetTexFilter_70:
	or eax, [ebp-0x40]
	jmp R_SetTexFilter_110
R_SetTexFilter_100:
	or eax, [ebp-0x3c]
	jmp R_SetTexFilter_110
R_SetTexFilter_20:
	mov edx, ebx
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x1c], 0x4
	cmp ecx, 0x4
	jg R_SetTexFilter_120
R_SetTexFilter_30:
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov eax, r_texFilterDisable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SetTexFilter_130
R_SetTexFilter_40:
	mov eax, r_texFilterMipMode
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov dword [ebp-0x38], 0x2200
	jmp R_SetTexFilter_140
R_SetTexFilter_10:
	mov dword [ebp-0x24], 0x1
	mov dword [ebp-0x30], 0x2200
	jmp R_SetTexFilter_150
	nop


;R_BeginMaterial(GfxCmdBufState*, Material const*, MaterialTechniqueType)
R_BeginMaterial:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ecx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+ebx*4+0xc]
	test eax, eax
	jz R_BeginMaterial_10
	mov [edx+0xb8], ecx
	mov [edx+0xbc], ebx
	mov [edx+0xc0], eax
	mov eax, 0x1
R_BeginMaterial_10:
	pop ebx
	pop ebp
	ret
	nop


;R_ChangeState_0(GfxCmdBufState*, unsigned int)
R_ChangeState_0:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	mov edi, esi
	mov eax, [ebp+0x8]
	xor edi, [eax+0x9e4]
	jnz R_ChangeState_0_10
	mov edx, eax
	mov eax, esi
	xor eax, [edx+0x9dc]
	test eax, 0x7000700
	jz R_ChangeState_0_20
	mov ecx, edx
	mov ecx, [ecx+0x90]
	mov [ebp-0x20], ecx
	test edi, 0x18000000
	jnz R_ChangeState_0_30
R_ChangeState_0_210:
	test edi, 0x800
	jnz R_ChangeState_0_40
R_ChangeState_0_220:
	mov ebx, esi
	shr ebx, 0xb
	and ebx, 0x1
	test ebx, ebx
	jnz R_ChangeState_0_50
R_ChangeState_0_230:
	test edi, 0x3000
	jz R_ChangeState_0_60
R_ChangeState_0_240:
	mov eax, esi
	and eax, 0x3000
	cmp eax, 0x1000
	jz R_ChangeState_0_70
	cmp eax, 0x2000
	jz R_ChangeState_0_80
	mov edx, 0x7
	mov byte [ebp-0x19], 0x80
R_ChangeState_0_330:
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x90]
	mov eax, [ebx]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x19
	mov [esp], ebx
	call dword [eax+0xe4]
	movzx eax, byte [ebp-0x19]
	mov edx, [ebp+0x8]
	cmp al, [edx+0x9d8]
	jz R_ChangeState_0_60
	mov edx, [ebx]
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], ebx
	call dword [edx+0xe4]
	movzx ecx, byte [ebp-0x19]
	mov ebx, [ebp+0x8]
	mov [ebx+0x9d8], cl
R_ChangeState_0_60:
	test di, 0xc000
	jnz R_ChangeState_0_90
	test edi, edi
	js R_ChangeState_0_100
R_ChangeState_0_280:
	mov eax, [ebp+0x8]
	test dword [eax+0x9dc], 0x700
	setnz dl
	test esi, 0x700
	jz R_ChangeState_0_110
	test esi, 0x7000000
	jnz R_ChangeState_0_120
	mov eax, esi
	and eax, 0xf800ffff
	and esi, 0x7ff
	shl esi, 0x10
	or esi, eax
	and edi, 0xf800ffff
	mov eax, esi
	mov ecx, [ebp+0x8]
	xor eax, [ecx+0x9e4]
	and eax, 0x7ff0000
	or edi, eax
R_ChangeState_0_120:
	test dl, dl
	jz R_ChangeState_0_130
	test edi, 0x700
	jnz R_ChangeState_0_140
R_ChangeState_0_310:
	test edi, 0xf
	jnz R_ChangeState_0_150
R_ChangeState_0_320:
	test edi, 0xf0
	jnz R_ChangeState_0_160
R_ChangeState_0_300:
	test edi, 0x7000000
	jnz R_ChangeState_0_170
	test edi, 0xf0000
	jnz R_ChangeState_0_180
R_ChangeState_0_290:
	test edi, x1900ClearData1+0x17d00
	jz R_ChangeState_0_190
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov edx, esi
	shr edx, 0x14
	and edx, 0xf
	mov edx, [edx*4+s_blendTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call dword [eax+0xe4]
	mov eax, gfxMetrics
	cmp byte [eax+0x27], 0x0
	jnz R_ChangeState_0_200
R_ChangeState_0_260:
	mov ebx, [ebp+0x8]
	mov [ebx+0x9e4], esi
R_ChangeState_0_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ChangeState_0_10:
	mov ecx, eax
	mov ecx, [ecx+0x90]
	mov [ebp-0x20], ecx
	test edi, 0x18000000
	jz R_ChangeState_0_210
R_ChangeState_0_30:
	mov eax, esi
	and eax, 0x8000000
	cmp eax, 0x1
	sbb edx, edx
	not edx
	and edx, 0x7
	mov eax, esi
	and eax, 0x10000000
	cmp eax, 0x1
	sbb eax, eax
	not eax
	and eax, 0x8
	mov ebx, ecx
	mov ecx, [ecx]
	or edx, eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xa8
	mov [esp], ebx
	call dword [ecx+0xe4]
	test edi, 0x800
	jz R_ChangeState_0_220
R_ChangeState_0_40:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x90]
	mov eax, esi
	shr eax, 0xb
	mov ecx, [edx]
	mov ebx, eax
	and ebx, 0x1
	setz al
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xf
	mov [esp], edx
	call dword [ecx+0xe4]
	test ebx, ebx
	jz R_ChangeState_0_230
R_ChangeState_0_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e4]
	and eax, 0x3000
	or esi, eax
	and edi, 0xffffcfff
	test edi, 0x3000
	jz R_ChangeState_0_60
	jmp R_ChangeState_0_240
R_ChangeState_0_110:
	and esi, 0xf800f800
	mov eax, [eax+0x9e4]
	and eax, 0x7ff07ff
	or esi, eax
	and edi, 0xf800f800
	test dl, dl
	jnz R_ChangeState_0_250
R_ChangeState_0_190:
	mov eax, gfxMetrics
	cmp byte [eax+0x27], 0x0
	jz R_ChangeState_0_260
R_ChangeState_0_200:
	mov eax, r_aaAlpha
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz R_ChangeState_0_260
	and edi, 0xf00
	jz R_ChangeState_0_260
	test esi, 0xf00
	jz R_ChangeState_0_270
	xor edx, edx
R_ChangeState_0_340:
	mov ecx, [ebp-0x20]
	mov eax, [ecx]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xb5
	mov [esp], ecx
	call dword [eax+0xe4]
	mov ebx, [ebp+0x8]
	mov [ebx+0x9e4], esi
	jmp R_ChangeState_0_20
R_ChangeState_0_90:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov edx, esi
	and edx, 0xc000
	shr edx, 0xe
	mov edx, [edx*4+s_cullTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x16
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call dword [eax+0xe4]
	test edi, edi
	jns R_ChangeState_0_280
R_ChangeState_0_100:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov edx, [eax+0xe4]
	mov eax, esi
	sar eax, 0x1f
	add eax, 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov [esp], ebx
	call edx
	jmp R_ChangeState_0_280
R_ChangeState_0_170:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov edx, esi
	shr edx, 0x18
	and edx, 0x7
	mov edx, [edx*4+s_blendOpTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xd1
	mov [esp], ebx
	call dword [eax+0xe4]
	test edi, 0xf0000
	jz R_ChangeState_0_290
R_ChangeState_0_180:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov edx, esi
	shr edx, 0x10
	and edx, 0xf
	mov edx, [edx*4+s_blendTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xcf
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_0_290
R_ChangeState_0_160:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov edx, esi
	shr edx, 0x4
	and edx, 0xf
	mov edx, [edx*4+s_blendTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x14
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_0_300
R_ChangeState_0_130:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1b
	mov [esp], ebx
	call dword [eax+0xe4]
	test edi, 0x700
	jz R_ChangeState_0_310
R_ChangeState_0_140:
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov edx, esi
	shr edx, 0x8
	and edx, 0x7
	mov edx, [edx*4+s_blendOpTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xab
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call dword [eax+0xe4]
	test edi, 0xf
	jz R_ChangeState_0_320
R_ChangeState_0_150:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov edx, esi
	and edx, 0xf
	mov edx, [edx*4+s_blendTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x13
	mov [esp], ebx
	call dword [eax+0xe4]
	jmp R_ChangeState_0_320
R_ChangeState_0_250:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1b
	mov [esp], ebx
	call dword [eax+0xe4]
	jmp R_ChangeState_0_190
R_ChangeState_0_70:
	mov edx, 0x5
	mov byte [ebp-0x19], 0x0
	jmp R_ChangeState_0_330
R_ChangeState_0_80:
	mov edx, 0x2
	mov byte [ebp-0x19], 0x80
	jmp R_ChangeState_0_330
R_ChangeState_0_270:
	mov edx, 0x41415353
	cmp eax, 0x2
	mov eax, 0x434f5441
	cmovnz edx, eax
	jmp R_ChangeState_0_340


;R_ChangeState_1(GfxCmdBufState*, unsigned int)
R_ChangeState_1:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0xc]
	mov edi, esi
	mov eax, [ebp+0x8]
	xor edi, [eax+0x9e8]
	jz R_ChangeState_1_10
	mov edx, [eax+0x90]
	mov [ebp-0x2c], edx
	test edi, 0x1
	jnz R_ChangeState_1_20
	test edi, 0x2
	jnz R_ChangeState_1_30
R_ChangeState_1_180:
	mov ebx, esi
	shr ebx, 1
	and ebx, 0x1
R_ChangeState_1_170:
	test ebx, ebx
	jz R_ChangeState_1_40
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e8]
	and eax, 0xc
	or esi, eax
	and edi, 0xfffffff3
R_ChangeState_1_40:
	test edi, 0xc
	jnz R_ChangeState_1_50
R_ChangeState_1_210:
	test edi, 0x30
	jz R_ChangeState_1_60
	mov eax, esi
	and eax, 0x30
	cmp eax, 0x30
	jz R_ChangeState_1_70
	mov edx, eax
	shr edx, 0x4
	js R_ChangeState_1_80
	cvtsi2ss xmm0, edx
R_ChangeState_1_290:
	mov eax, r_polygonOffsetBias
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [_float_0_00001526]
	mov eax, r_polygonOffsetScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
R_ChangeState_1_280:
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	mov eax, gfxMetrics
	cmp byte [eax+0x25], 0x0
	jnz R_ChangeState_1_90
	addss xmm1, xmm1
	movss [ebp-0x1c], xmm1
R_ChangeState_1_270:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc3
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
R_ChangeState_1_60:
	test esi, 0x40
	jz R_ChangeState_1_100
	test edi, 0x40
	jnz R_ChangeState_1_110
R_ChangeState_1_200:
	mov ecx, esi
	test cl, cl
	js R_ChangeState_1_120
	mov eax, esi
	and eax, 0xfffff
	and esi, 0xfff00
	shl esi, 0xc
	or esi, eax
	mov edi, esi
	mov eax, [ebp+0x8]
	xor edi, [eax+0x9e8]
R_ChangeState_1_120:
	test edi, 0x1ff00
	jnz R_ChangeState_1_130
R_ChangeState_1_250:
	test edi, 0x1ff00000
	jnz R_ChangeState_1_140
R_ChangeState_1_240:
	test edi, 0xe0000
	jnz R_ChangeState_1_150
R_ChangeState_1_230:
	and edi, 0xe0000000
	jnz R_ChangeState_1_160
R_ChangeState_1_220:
	mov eax, [ebp+0x8]
	mov [eax+0x9e8], esi
R_ChangeState_1_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ChangeState_1_30:
	mov eax, esi
	shr eax, 1
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	mov ebx, eax
	and ebx, 0x1
	setz al
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	mov [esp], ecx
	call dword [edx+0xe4]
	jmp R_ChangeState_1_170
R_ChangeState_1_20:
	mov ecx, edx
	mov edx, [edx]
	mov eax, esi
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	mov [esp], ecx
	call dword [edx+0xe4]
	test edi, 0x2
	jz R_ChangeState_1_180
	jmp R_ChangeState_1_30
R_ChangeState_1_100:
	test edi, 0x40
	jnz R_ChangeState_1_190
R_ChangeState_1_260:
	and esi, 0x7f
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e8]
	and eax, 0xffffff80
	or esi, eax
	and edi, 0x7f
	jmp R_ChangeState_1_200
R_ChangeState_1_50:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov edx, esi
	and edx, 0xc
	mov edx, [edx+s_depthTestTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x17
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_1_210
R_ChangeState_1_160:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov edx, esi
	shr edx, 0x1d
	mov edx, [edx*4+s_stencilFuncTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xbd
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_1_220
R_ChangeState_1_150:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov edx, esi
	shr edx, 0x11
	and edx, 0x7
	mov edx, [edx*4+s_stencilFuncTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x38
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_1_230
R_ChangeState_1_140:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, esi
	shr eax, 0x14
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbc
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, esi
	shr eax, 0x17
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xba
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, esi
	shr eax, 0x1a
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbb
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	jmp R_ChangeState_1_240
R_ChangeState_1_130:
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	mov eax, esi
	shr eax, 0x8
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x37
	mov [esp], ecx
	call dword [edx+0xe4]
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, esi
	shr eax, 0xb
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x35
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, esi
	shr eax, 0xe
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x36
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	jmp R_ChangeState_1_250
R_ChangeState_1_190:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x34
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp R_ChangeState_1_260
R_ChangeState_1_110:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x34
	mov [esp], edx
	call dword [eax+0xe4]
	jmp R_ChangeState_1_200
R_ChangeState_1_90:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xaf
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	jmp R_ChangeState_1_270
R_ChangeState_1_70:
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, [eax+0xc]
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	jmp R_ChangeState_1_280
R_ChangeState_1_80:
	shr eax, 0x5
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_ChangeState_1_290


;R_GetCodeMatrix(GfxCmdBufSourceState*, unsigned int, unsigned int)
R_GetCodeMatrix:
R_GetCodeMatrix_90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	sub eax, 0x3a
	mov [ebp-0xc4], eax
	shr eax, 0x2
	movzx eax, word [edi+eax*2+0xee4]
	mov [ebp-0xcc], eax
	mov edx, [ebp+0xc]
	movzx eax, word [edi+edx*2+0xe30]
	cmp [ebp-0xcc], eax
	jz R_GetCodeMatrix_10
	mov ecx, [ebp-0xc4]
	and ecx, 0xfffffffc
	mov [ebp-0xc8], ecx
	movzx eax, word [edi+ecx*2+0xea4]
	cmp [ebp-0xcc], eax
	jz R_GetCodeMatrix_20
	mov eax, ecx
	sub eax, 0x4
	cmp eax, 0x18
	jbe R_GetCodeMatrix_30
R_GetCodeMatrix_80:
	mov edx, [ebp-0xc8]
	cmp [ebp-0xc4], edx
	jz R_GetCodeMatrix_10
R_GetCodeMatrix_20:
	movzx eax, word [ebp-0xcc]
	mov ecx, [ebp+0xc]
	mov [edi+ecx*2+0xe30], ax
	mov edx, [ebp-0xc4]
	xor edx, 0x2
	movzx eax, word [edi+edx*2+0xea4]
	cmp [ebp-0xcc], eax
	jz R_GetCodeMatrix_40
	mov edx, [ebp-0xc4]
	xor edx, 0x1
	lea esi, [edx+0x3a]
	movzx eax, word [edi+esi*2+0xe30]
	cmp [ebp-0xcc], eax
	jz R_GetCodeMatrix_50
	shl edx, 0x6
	lea ebx, [edx+edi+0x80]
	mov [esp+0x4], ebx
	shl dword [ebp-0xc8], 0x6
	mov edx, [ebp-0xc8]
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	call MatrixTranspose44
	movzx ecx, word [ebp-0xcc]
	mov [edi+esi*2+0xe30], cx
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	mov [esp], ebx
R_GetCodeMatrix_70:
	call MatrixInverse44
R_GetCodeMatrix_60:
	mov edx, [ebp-0xc4]
	mov ecx, [ebp+0x10]
	lea eax, [ecx+edx*4]
	shl eax, 0x4
	lea eax, [eax+edi+0x80]
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetCodeMatrix_30:
	jmp dword [eax*4+R_GetCodeMatrix_jumptab_0]
R_GetCodeMatrix_10:
	mov ecx, [ebp-0xc4]
	mov edx, [ebp+0x10]
	lea eax, [edx+ecx*4]
	shl eax, 0x4
	lea eax, [eax+edi+0x80]
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetCodeMatrix_40:
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	shl edx, 0x6
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	call MatrixTranspose44
	jmp R_GetCodeMatrix_60
R_GetCodeMatrix_50:
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	shl edx, 0x6
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	jmp R_GetCodeMatrix_70
R_GetCodeMatrix_260:
	lea edx, [edi+0x180]
	mov eax, [edi+0xcb0]
	mov [edi+0x180], eax
	mov eax, [edi+0xcb4]
	mov [edx+0x4], eax
	mov eax, [edi+0xcb8]
	mov [edx+0x8], eax
	mov eax, [edi+0xcbc]
	mov [edx+0xc], eax
	mov eax, [edi+0xcc0]
	mov [edx+0x10], eax
	mov eax, [edi+0xcc4]
	mov [edx+0x14], eax
	mov eax, [edi+0xcc8]
	mov [edx+0x18], eax
	mov eax, [edi+0xccc]
	mov [edx+0x1c], eax
	mov eax, [edi+0xcd0]
	mov [edx+0x20], eax
	mov eax, [edi+0xcd4]
	mov [edx+0x24], eax
	mov eax, [edi+0xcd8]
	mov [edx+0x28], eax
	mov eax, [edi+0xcdc]
	mov [edx+0x2c], eax
	mov eax, [edi+0xce0]
	mov [edx+0x30], eax
	mov eax, [edi+0xce4]
	mov [edx+0x34], eax
	mov eax, [edi+0xce8]
	mov [edx+0x38], eax
	mov eax, [edi+0xcec]
	mov [edx+0x3c], eax
	lea eax, [edi+0x1b0]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call MatrixTransformVector44
	movzx eax, word [edi+0xee6]
	mov [edi+0xeac], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_320:
	lea eax, [edi+0x780]
	mov [ebp-0xc0], eax
	mov eax, r_outdoorAwayBias
	mov eax, [eax]
	mov ebx, [eax+0xc]
	mov eax, r_outdoorDownBias
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xbc], xmm0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f
	mov [esp], edi
	call R_GetCodeMatrix_90
	xor edx, edx
	mov [ebp-0x28], edx
	mov [ebp-0x24], edx
	xor ebx, 0x80000000
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], edx
	lea ebx, [ebp-0x38]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call MatrixTransformVector44
	movss xmm0, dword [ebp-0xbc]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	lea eax, [ebp-0x78]
	mov [esp+0x8], eax
	mov esi, rgp
	mov eax, [esi+0x20a0]
	add eax, 0x1dc
	mov [esp+0x4], eax
	mov [esp], ebx
	call MatrixTransformVector44
	mov eax, [edi+0x80]
	mov [ebp-0xb8], eax
	mov eax, [edi+0x84]
	mov [ebp-0xb4], eax
	mov eax, [edi+0x88]
	mov [ebp-0xb0], eax
	mov eax, [edi+0x8c]
	mov [ebp-0xac], eax
	mov eax, [edi+0x90]
	mov [ebp-0xa8], eax
	mov eax, [edi+0x94]
	mov [ebp-0xa4], eax
	mov eax, [edi+0x98]
	mov [ebp-0xa0], eax
	mov eax, [edi+0x9c]
	mov [ebp-0x9c], eax
	mov eax, [edi+0xa0]
	mov [ebp-0x98], eax
	mov eax, [edi+0xa4]
	mov [ebp-0x94], eax
	mov eax, [edi+0xa8]
	mov [ebp-0x90], eax
	mov eax, [edi+0xac]
	mov [ebp-0x8c], eax
	mov eax, [edi+0xb0]
	mov [ebp-0x88], eax
	mov eax, [edi+0xb4]
	mov [ebp-0x84], eax
	mov eax, [edi+0xb8]
	mov [ebp-0x80], eax
	mov eax, [edi+0xbc]
	mov [ebp-0x7c], eax
	lea eax, [edi+0xef4]
	movss xmm0, dword [ebp-0x88]
	addss xmm0, [edi+0xef4]
	movss [ebp-0x88], xmm0
	lea edx, [ebp-0xb8]
	movss xmm0, dword [ebp-0x84]
	addss xmm0, [eax+0x4]
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebp-0x80]
	addss xmm0, [eax+0x8]
	movss [ebp-0x80], xmm0
	mov eax, [ebp-0xc0]
	mov [esp+0x8], eax
	mov eax, [esi+0x20a0]
	add eax, 0x1dc
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixMultiply44
	lea eax, [edi+0x7b0]
	movss xmm0, dword [edi+0x7b0]
	addss xmm0, [ebp-0x78]
	movss [edi+0x7b0], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebp-0x74]
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebp-0x70]
	movss [eax+0x8], xmm0
	movss xmm0, dword [eax+0xc]
	addss xmm0, [ebp-0x6c]
	movss [eax+0xc], xmm0
	movzx eax, word [edi+0xef2]
	mov [edi+0xedc], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_310:
	lea edx, [edi+0x680]
	mov eax, [edi+0xdf0]
	mov [edi+0x680], eax
	mov eax, [edi+0xdf4]
	mov [edx+0x4], eax
	mov eax, [edi+0xdf8]
	mov [edx+0x8], eax
	mov eax, [edi+0xdfc]
	mov [edx+0xc], eax
	mov eax, [edi+0xe00]
	mov [edx+0x10], eax
	mov eax, [edi+0xe04]
	mov [edx+0x14], eax
	mov eax, [edi+0xe08]
	mov [edx+0x18], eax
	mov eax, [edi+0xe0c]
	mov [edx+0x1c], eax
	mov eax, [edi+0xe10]
	mov [edx+0x20], eax
	mov eax, [edi+0xe14]
	mov [edx+0x24], eax
	mov eax, [edi+0xe18]
	mov [edx+0x28], eax
	mov eax, [edi+0xe1c]
	mov [edx+0x2c], eax
	mov eax, [edi+0xe20]
	mov [edx+0x30], eax
	mov eax, [edi+0xe24]
	mov [edx+0x34], eax
	mov eax, [edi+0xe28]
	mov [edx+0x38], eax
	mov eax, [edi+0xe2c]
	mov [edx+0x3c], eax
	lea eax, [edi+0x6b0]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call MatrixTransformVector44
	movzx eax, word [edi+0xef0]
	mov [edi+0xed4], ax
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_300:
	lea edx, [edi+0xcb0]
	mov eax, [edi+0x80]
	mov [ebp-0x78], eax
	mov eax, [edi+0x84]
	mov [ebp-0x74], eax
	mov eax, [edi+0x88]
	mov [ebp-0x70], eax
	mov eax, [edi+0x8c]
	mov [ebp-0x6c], eax
	mov eax, [edi+0x90]
	mov [ebp-0x68], eax
	mov eax, [edi+0x94]
	mov [ebp-0x64], eax
	mov eax, [edi+0x98]
	mov [ebp-0x60], eax
	mov eax, [edi+0x9c]
	mov [ebp-0x5c], eax
	mov eax, [edi+0xa0]
	mov [ebp-0x58], eax
	mov eax, [edi+0xa4]
	mov [ebp-0x54], eax
	mov eax, [edi+0xa8]
	mov [ebp-0x50], eax
	mov eax, [edi+0xac]
	mov [ebp-0x4c], eax
	mov eax, [edi+0xb0]
	mov [ebp-0x48], eax
	mov eax, [edi+0xb4]
	mov [ebp-0x44], eax
	mov eax, [edi+0xb8]
	mov [ebp-0x40], eax
	mov eax, [edi+0xbc]
	mov [ebp-0x3c], eax
	lea esi, [edi+0x580]
	cmp dword [edi+0xf10], 0x2
	jnz R_GetCodeMatrix_100
	movzx eax, word [edi+0xeec]
	cmp ax, [edi+0xec4]
	jz R_GetCodeMatrix_110
	lea ebx, [edi+0x480]
	movzx eax, word [edi+0xee8]
	cmp ax, [edi+0xeb4]
	jz R_GetCodeMatrix_120
	lea ecx, [edi+0x280]
	mov eax, [edx+0x40]
	mov [edi+0x280], eax
	mov eax, [edx+0x44]
	mov [ecx+0x4], eax
	mov eax, [edx+0x48]
	mov [ecx+0x8], eax
	mov eax, [edx+0x4c]
	mov [ecx+0xc], eax
	mov eax, [edx+0x50]
	mov [ecx+0x10], eax
	mov eax, [edx+0x54]
	mov [ecx+0x14], eax
	mov eax, [edx+0x58]
	mov [ecx+0x18], eax
	mov eax, [edx+0x5c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x60]
	mov [ecx+0x20], eax
	mov eax, [edx+0x64]
	mov [ecx+0x24], eax
	mov eax, [edx+0x68]
	mov [ecx+0x28], eax
	mov eax, [edx+0x6c]
	mov [ecx+0x2c], eax
	mov eax, [edx+0x70]
	mov [ecx+0x30], eax
	mov eax, [edx+0x74]
	mov [ecx+0x34], eax
	mov eax, [edx+0x78]
	mov [ecx+0x38], eax
	mov eax, [edx+0x7c]
	mov [ecx+0x3c], eax
	cmp dword [edi+0xf10], 0x2
	jz R_GetCodeMatrix_130
R_GetCodeMatrix_250:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
R_GetCodeMatrix_230:
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call MatrixMultiply44
	lea eax, [ebx+0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call MatrixTransformVector44
	movzx eax, word [edi+0xeec]
	mov [edi+0xec4], ax
R_GetCodeMatrix_210:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x78]
	mov [esp], eax
	call MatrixMultiply44
R_GetCodeMatrix_160:
	movzx eax, word [edi+0xeee]
	mov [edi+0xecc], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_290:
	lea edx, [edi+0xcb0]
	lea ebx, [edi+0x480]
	cmp dword [edi+0xf10], 0x2
	jz R_GetCodeMatrix_140
	mov eax, [edx+0x80]
	mov [edi+0x480], eax
	mov eax, [edx+0x84]
	mov [ebx+0x4], eax
	mov eax, [edx+0x88]
	mov [ebx+0x8], eax
	mov eax, [edx+0x8c]
	mov [ebx+0xc], eax
	mov eax, [edx+0x90]
	mov [ebx+0x10], eax
	mov eax, [edx+0x94]
	mov [ebx+0x14], eax
	mov eax, [edx+0x98]
	mov [ebx+0x18], eax
	mov eax, [edx+0x9c]
	mov [ebx+0x1c], eax
	mov eax, [edx+0xa0]
	mov [ebx+0x20], eax
	mov eax, [edx+0xa4]
	mov [ebx+0x24], eax
	mov eax, [edx+0xa8]
	mov [ebx+0x28], eax
	mov eax, [edx+0xac]
	mov [ebx+0x2c], eax
	mov eax, [edx+0xb0]
	mov [ebx+0x30], eax
	mov eax, [edx+0xb4]
	mov [ebx+0x34], eax
	mov eax, [edx+0xb8]
	mov [ebx+0x38], eax
	mov eax, [edx+0xbc]
	mov [ebx+0x3c], eax
R_GetCodeMatrix_190:
	lea eax, [ebx+0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call MatrixTransformVector44
	movzx eax, word [edi+0xeec]
	mov [edi+0xec4], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_280:
	mov eax, [edi+0x80]
	mov [ebp-0x78], eax
	mov eax, [edi+0x84]
	mov [ebp-0x74], eax
	mov eax, [edi+0x88]
	mov [ebp-0x70], eax
	mov eax, [edi+0x8c]
	mov [ebp-0x6c], eax
	mov eax, [edi+0x90]
	mov [ebp-0x68], eax
	mov eax, [edi+0x94]
	mov [ebp-0x64], eax
	mov eax, [edi+0x98]
	mov [ebp-0x60], eax
	mov eax, [edi+0x9c]
	mov [ebp-0x5c], eax
	mov eax, [edi+0xa0]
	mov [ebp-0x58], eax
	mov eax, [edi+0xa4]
	mov [ebp-0x54], eax
	mov eax, [edi+0xa8]
	mov [ebp-0x50], eax
	mov eax, [edi+0xac]
	mov [ebp-0x4c], eax
	mov eax, [edi+0xb0]
	mov [ebp-0x48], eax
	mov eax, [edi+0xb4]
	mov [ebp-0x44], eax
	mov eax, [edi+0xb8]
	mov [ebp-0x40], eax
	mov eax, [edi+0xbc]
	mov [ebp-0x3c], eax
	lea eax, [edi+0xef4]
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [edi+0xef4]
	movss [ebp-0x48], xmm0
	lea edx, [ebp-0x78]
	movss xmm0, dword [ebp-0x44]
	addss xmm0, [eax+0x4]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, [eax+0x8]
	movss [ebp-0x40], xmm0
	lea eax, [edi+0x380]
	mov [esp+0x8], eax
	lea eax, [edi+0xcb0]
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixMultiply44
	movzx eax, word [edi+0xeea]
	mov [edi+0xebc], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_270:
	lea edx, [edi+0xcb0]
	lea ecx, [edi+0x280]
	mov eax, [edx+0x40]
	mov [edi+0x280], eax
	mov eax, [edx+0x44]
	mov [ecx+0x4], eax
	mov eax, [edx+0x48]
	mov [ecx+0x8], eax
	mov eax, [edx+0x4c]
	mov [ecx+0xc], eax
	mov eax, [edx+0x50]
	mov [ecx+0x10], eax
	mov eax, [edx+0x54]
	mov [ecx+0x14], eax
	mov eax, [edx+0x58]
	mov [ecx+0x18], eax
	mov eax, [edx+0x5c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x60]
	mov [ecx+0x20], eax
	mov eax, [edx+0x64]
	mov [ecx+0x24], eax
	mov eax, [edx+0x68]
	mov [ecx+0x28], eax
	mov eax, [edx+0x6c]
	mov [ecx+0x2c], eax
	mov eax, [edx+0x70]
	mov [ecx+0x30], eax
	mov eax, [edx+0x74]
	mov [ecx+0x34], eax
	mov eax, [edx+0x78]
	mov [ecx+0x38], eax
	mov eax, [edx+0x7c]
	mov [ecx+0x3c], eax
	cmp dword [edi+0xf10], 0x2
	jz R_GetCodeMatrix_150
R_GetCodeMatrix_200:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
	mov [esp], edi
	call R_DeriveOpenGLMatrices
	jmp R_GetCodeMatrix_80
R_GetCodeMatrix_100:
	lea eax, [edi+0xef4]
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [edi+0xef4]
	movss [ebp-0x48], xmm0
	lea edx, [ebp-0x78]
	movss xmm0, dword [ebp-0x44]
	addss xmm0, [eax+0x4]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, [eax+0x8]
	movss [ebp-0x40], xmm0
	mov [esp+0x8], esi
	lea eax, [edi+0xd30]
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixMultiply44
	jmp R_GetCodeMatrix_160
R_GetCodeMatrix_140:
	movzx eax, word [edi+0xee8]
	cmp ax, [edi+0xeb4]
	jz R_GetCodeMatrix_170
	lea ecx, [edi+0x280]
	mov eax, [edx+0x40]
	mov [edi+0x280], eax
	mov eax, [edx+0x44]
	mov [ecx+0x4], eax
	mov eax, [edx+0x48]
	mov [ecx+0x8], eax
	mov eax, [edx+0x4c]
	mov [ecx+0xc], eax
	mov eax, [edx+0x50]
	mov [ecx+0x10], eax
	mov eax, [edx+0x54]
	mov [ecx+0x14], eax
	mov eax, [edx+0x58]
	mov [ecx+0x18], eax
	mov eax, [edx+0x5c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x60]
	mov [ecx+0x20], eax
	mov eax, [edx+0x64]
	mov [ecx+0x24], eax
	mov eax, [edx+0x68]
	mov [ecx+0x28], eax
	mov eax, [edx+0x6c]
	mov [ecx+0x2c], eax
	mov eax, [edx+0x70]
	mov [ecx+0x30], eax
	mov eax, [edx+0x74]
	mov [ecx+0x34], eax
	mov eax, [edx+0x78]
	mov [ecx+0x38], eax
	mov eax, [edx+0x7c]
	mov [ecx+0x3c], eax
	cmp dword [edi+0xf10], 0x2
	jz R_GetCodeMatrix_180
R_GetCodeMatrix_240:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
R_GetCodeMatrix_220:
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call MatrixMultiply44
	jmp R_GetCodeMatrix_190
R_GetCodeMatrix_150:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp R_GetCodeMatrix_200
R_GetCodeMatrix_110:
	lea ebx, [edi+0x480]
	jmp R_GetCodeMatrix_210
R_GetCodeMatrix_170:
	lea ecx, [edi+0x280]
	jmp R_GetCodeMatrix_220
R_GetCodeMatrix_120:
	lea ecx, [edi+0x280]
	jmp R_GetCodeMatrix_230
R_GetCodeMatrix_180:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp R_GetCodeMatrix_240
R_GetCodeMatrix_130:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp R_GetCodeMatrix_250
	
	
R_GetCodeMatrix_jumptab_0:
	dd R_GetCodeMatrix_260
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_270
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_280
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_290
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_300
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_310
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_80
	dd R_GetCodeMatrix_320


;R_SetMeshStream(GfxCmdBufState*, GfxMeshData*)
R_SetMeshStream:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0xc]
	mov esi, [eax+0x1c]
	mov ecx, [eax+0x14]
	mov ebx, [ebp+0x8]
	add ebx, 0x90
	cmp ecx, [ebx+0x10]
	jz R_SetMeshStream_10
R_SetMeshStream_30:
	mov [ebx+0x10], ecx
	mov dword [ebx+0x14], 0x0
	mov [ebx+0xc], esi
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
R_SetMeshStream_40:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz R_SetMeshStream_20
R_SetMeshStream_50:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x18], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
R_SetMeshStream_60:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_SetMeshStream_10:
	mov edx, [ebx+0x14]
	test edx, edx
	jnz R_SetMeshStream_30
	cmp esi, [ebx+0xc]
	jnz R_SetMeshStream_30
	jmp R_SetMeshStream_40
R_SetMeshStream_20:
	mov eax, [ebx+0x20]
	test eax, eax
	jnz R_SetMeshStream_50
	mov eax, [ebx+0x18]
	test eax, eax
	jnz R_SetMeshStream_50
	jmp R_SetMeshStream_60
	nop


;R_DisableSampler(GfxCmdBufState*, unsigned int)
R_DisableSampler:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov dword [edx+eax*4+0x50], 0x0
	mov ecx, [edx+0x90]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	add eax, [ecx+0x3a0]
	mov dword [eax], 0x0
	pop ebp
	ret
	nop


;R_UpdateViewport(GfxCmdBufSourceState*, GfxViewport*)
R_UpdateViewport:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov byte [edx+0xf70], 0x0
	cvtsi2ss xmm6, dword [edx+0xf68]
	movss xmm4, dword [_float_1_00000000]
	divss xmm4, xmm6
	cvtsi2ss xmm7, dword [edx+0xf6c]
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm7
	cvtsi2ss xmm3, dword [eax+0x8]
	mulss xmm3, xmm4
	mulss xmm3, [_float_0_50000000]
	cvtsi2ss xmm0, dword [eax+0xc]
	mulss xmm0, xmm5
	mulss xmm0, [_float_0_50000000]
	cvtsi2ss xmm1, dword [eax]
	mulss xmm1, xmm4
	addss xmm1, xmm3
	cvtsi2ss xmm2, dword [eax+0x4]
	mulss xmm2, xmm5
	addss xmm2, xmm0
	lea eax, [edx+0x920]
	movss [edx+0x920], xmm6
	movss [eax+0x4], xmm7
	movss [eax+0x8], xmm4
	movss [eax+0xc], xmm5
	add word [edx+0xe44], 0x1
	lea eax, [edx+0xbb0]
	movss [edx+0xbb0], xmm3
	xorps xmm0, [s_mipFilterTable+0x30]
	movss [eax+0x4], xmm0
	xor ecx, ecx
	mov [eax+0x8], ecx
	mov dword [eax+0xc], 0x3f800000
	add word [edx+0xe96], 0x1
	lea eax, [edx+0xbc0]
	mulss xmm4, [_float_0_50000000]
	addss xmm1, xmm4
	movss [edx+0xbc0], xmm1
	mulss xmm5, [_float_0_50000000]
	addss xmm2, xmm5
	movss [eax+0x4], xmm2
	mov [eax+0x8], ecx
	mov [eax+0xc], ecx
	add word [edx+0xe98], 0x1
	leave
	ret


;R_SetRenderTarget(GfxCmdBufContext, GfxRenderTargetId)
R_SetRenderTarget:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0xc]
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jg R_SetRenderTarget_10
	mov edi, [ebp+0x10]
R_SetRenderTarget_100:
	cmp edi, [esi+0xa04]
	jz R_SetRenderTarget_20
	lea eax, [edi+edi*4]
	mov edx, gfxRenderTargets
	mov eax, [edx+eax*4]
	test eax, eax
	jz R_SetRenderTarget_30
	mov edi, vidConfig
	mov ebx, [edi+0x28]
	test ebx, ebx
	jnz R_SetRenderTarget_40
R_SetRenderTarget_80:
	mov edi, gfxRenderTargets
R_SetRenderTarget_110:
	mov eax, [esi+0x90]
	mov [ebp-0x20], eax
	mov edx, [ebp+0x10]
	lea eax, [edx+edx*4]
	lea ebx, [edi+eax*4]
	mov ecx, [ebx+0x4]
	mov edx, [esi+0xa04]
	lea eax, [edx+edx*4]
	mov [ebp-0x2c], eax
	cmp [edi+eax*4+0x4], ecx
	jz R_SetRenderTarget_50
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [eax+0x94]
	mov dword [esi+0x9f4], 0x0
	mov dword [esi+0x9f8], 0x0
	mov eax, [ebx+0xc]
	mov [esi+0x9fc], eax
	mov eax, [ebx+0x10]
	mov [esi+0xa00], eax
	mov dword [esi+0xcc], 0xffffffff
	mov dword [esi+0xd0], 0x0
	mov dword [esi+0xd4], 0x3f800000
	mov edx, [esi+0xa04]
	mov edi, gfxRenderTargets
R_SetRenderTarget_50:
	mov ecx, [ebx+0x8]
	lea eax, [edx+edx*4]
	cmp [edi+eax*4+0x8], ecx
	jz R_SetRenderTarget_60
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], ecx
	mov [esp], edx
	call dword [eax+0x9c]
R_SetRenderTarget_60:
	mov edi, [ebp+0x10]
	mov [esi+0xa04], edi
	mov eax, [ebp-0x1c]
	mov dword [eax+0xf38], 0x0
	mov byte [eax+0xf70], 0x1
R_SetRenderTarget_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetRenderTarget_40:
	mov edx, [ebp+0xc]
	xor ecx, ecx
	xor ebx, ebx
	add eax, 0x4
	mov [ebp-0x24], eax
	jmp R_SetRenderTarget_70
R_SetRenderTarget_90:
	add ecx, 0x1
	add edx, 0x4
	add ebx, 0x38
	mov edi, vidConfig
	cmp ecx, [edi+0x28]
	jae R_SetRenderTarget_80
	mov eax, [ebp-0x24]
R_SetRenderTarget_70:
	cmp [edx+0x50], eax
	jnz R_SetRenderTarget_90
	mov dword [edx+0x50], 0x0
	mov edi, [esi+0x90]
	mov eax, [edi+0x3a0]
	add eax, ebx
	mov [ebp-0x2c], eax
	mov dword [eax], 0x0
	jmp R_SetRenderTarget_90
R_SetRenderTarget_10:
	mov edx, [ebp+0x10]
	mov [esp], edx
	call RB_PixelCost_OverrideRenderTarget
	mov [ebp+0x10], eax
	mov edi, eax
	jmp R_SetRenderTarget_100
R_SetRenderTarget_30:
	mov edi, edx
	jmp R_SetRenderTarget_110
	nop
	add [eax], al


;R_SetSamplerState(GfxCmdBufState*, unsigned int, unsigned char)
R_SetSamplerState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov dword [ecx+ebx*4+0x50], 0x0
	cmp [ecx+ebx], dl
	jz R_SetSamplerState_10
	mov [ecx+ebx], dl
	movzx edx, dl
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, clients+0x46cc0
	mov eax, edx
	and eax, 0x20
	shl eax, 0x10
	or esi, eax
	mov eax, edx
	and eax, 0x40
	shl eax, 0x11
	or esi, eax
	and edx, 0x80
	shl edx, 0x12
	or esi, edx
	mov eax, [ecx+ebx*4+0x10]
	mov [ebp-0x18], eax
	cmp esi, eax
	jz R_SetSamplerState_10
	mov edi, [ecx+0x90]
	xor eax, esi
	mov [ebp-0x10], eax
	test ah, 0xf
	jz R_SetSamplerState_20
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf00
	shr eax, 0x8
	mov [edx+0x18], eax
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_30
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_20:
	test word [ebp-0x10], 0xf000
	jz R_SetSamplerState_40
R_SetSamplerState_180:
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf000
	shr eax, 0xc
	mov [edx+0x14], eax
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_50
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_40:
	cmp byte [ebp-0x10], 0x0
	jz R_SetSamplerState_60
R_SetSamplerState_190:
	mov ecx, esi
	and ecx, 0xff
	cmp ecx, 0x1
	jle R_SetSamplerState_70
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	mov [eax+0x28], ecx
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_80
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_60:
	mov [ebp-0x14], esi
R_SetSamplerState_200:
	test dword [ebp-0x10], 0xf0000
	jz R_SetSamplerState_90
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xf0000
	shr eax, 0x10
	mov [edx+0x1c], eax
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_100
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_90:
	test dword [ebp-0x10], 0x3f00000
	jnz R_SetSamplerState_110
R_SetSamplerState_160:
	mov edx, [ebp-0x14]
	mov eax, [ebp+0x8]
	mov [eax+ebx*4+0x10], edx
R_SetSamplerState_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetSamplerState_110:
	test dword [ebp-0x10], _cstring_olprio_pain
	jz R_SetSamplerState_120
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, _cstring_olprio_pain
	shr eax, 0x14
	mov [edx+0x4], eax
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_130
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_120:
	test dword [ebp-0x10], g_xAnimInfo+0x20360
	jz R_SetSamplerState_140
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, g_xAnimInfo+0x20360
	shr eax, 0x16
	mov [edx+0x8], eax
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_150
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
R_SetSamplerState_140:
	test dword [ebp-0x10], 0x3000000
	jz R_SetSamplerState_160
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	and esi, 0x3000000
	shr esi, 0x18
	mov [eax+0xc], esi
	cmp ebx, 0xffffffff
	jz R_SetSamplerState_170
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
	jmp R_SetSamplerState_160
R_SetSamplerState_80:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSamplerState_60
R_SetSamplerState_30:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test word [ebp-0x10], 0xf000
	jz R_SetSamplerState_40
	jmp R_SetSamplerState_180
R_SetSamplerState_50:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	cmp byte [ebp-0x10], 0x0
	jz R_SetSamplerState_60
	jmp R_SetSamplerState_190
R_SetSamplerState_100:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test dword [ebp-0x10], 0x3f00000
	jz R_SetSamplerState_160
	jmp R_SetSamplerState_110
R_SetSamplerState_70:
	mov eax, esi
	and eax, 0xffffff00
	mov [ebp-0x14], eax
	movzx eax, byte [ebp-0x18]
	or [ebp-0x14], eax
	jmp R_SetSamplerState_200
R_SetSamplerState_130:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSamplerState_120
R_SetSamplerState_170:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSamplerState_160
R_SetSamplerState_150:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp R_SetSamplerState_140
	nop


;R_ChangeDepthRange(GfxCmdBufState*, GfxDepthRangeType)
R_ChangeDepthRange:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [eax+0xcc], edx
	test edx, edx
	jnz R_ChangeDepthRange_10
	mov ecx, 0x3c800000
	mov [eax+0xd0], ecx
	mov esi, 0x3f800000
	test edx, edx
	jnz R_ChangeDepthRange_20
R_ChangeDepthRange_30:
	mov [eax+0xd4], esi
	mov ebx, [eax+0x90]
	mov ecx, [eax+0xd0]
	lea edx, [eax+0x9f4]
	mov eax, [eax+0x9f4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x4]
	mov [ebp-0x1c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x18], eax
	mov eax, [edx+0xc]
	mov [ebp-0x14], eax
	mov [ebp-0x10], ecx
	mov [ebp-0xc], esi
	mov edx, [ebx]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0xbc]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_ChangeDepthRange_10:
	xor ecx, ecx
	mov [eax+0xd0], ecx
	mov esi, 0x3f800000
	test edx, edx
	jz R_ChangeDepthRange_30
R_ChangeDepthRange_20:
	mov esi, 0x3c800000
	jmp R_ChangeDepthRange_30


;R_SetCompleteState(IDirect3DDevice9*, unsigned int const*)
R_SetCompleteState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ecx, [edi]
	mov eax, ecx
	and eax, 0x8000000
	cmp eax, 0x1
	sbb edx, edx
	not edx
	and edx, 0x7
	and ecx, 0x10000000
	cmp ecx, 0x1
	sbb eax, eax
	not eax
	and eax, 0x8
	mov ecx, [esi]
	or edx, eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xa8
	mov [esp], esi
	call dword [ecx+0xe4]
	mov edx, [esi]
	mov eax, [edi]
	shr eax, 0xb
	not eax
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xf
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, [edi]
	and eax, 0xc000
	shr eax, 0xe
	mov eax, [eax*4+s_cullTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x16
	mov [esp], esi
	call dword [edx+0xe4]
	mov eax, [esi]
	mov edx, [eax+0xe4]
	mov eax, [edi]
	sar eax, 0x1f
	add eax, 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov [esp], esi
	call edx
	mov ebx, [edi]
	test bh, 0x7
	jnz R_SetCompleteState_10
	mov eax, [esi]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1b
	mov [esp], esi
	call dword [eax+0xe4]
R_SetCompleteState_50:
	lea ebx, [edi+0x4]
	mov edx, [esi]
	mov eax, [edi+0x4]
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, [edi+0x4]
	shr eax, 1
	not eax
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, [edi+0x4]
	and eax, 0xc
	mov eax, [eax+s_depthTestTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x17
	mov [esp], esi
	call dword [edx+0xe4]
	mov eax, [edi+0x4]
	and eax, 0x30
	cmp eax, 0x30
	jz R_SetCompleteState_20
	mov edx, eax
	shr edx, 0x4
	js R_SetCompleteState_30
	cvtsi2ss xmm0, edx
R_SetCompleteState_80:
	mov eax, r_polygonOffsetBias
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [_float_0_00001526]
	mov eax, r_polygonOffsetScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
R_SetCompleteState_70:
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	mov eax, gfxMetrics
	cmp byte [eax+0x25], 0x0
	jnz R_SetCompleteState_40
	addss xmm1, xmm1
	movss [ebp-0x1c], xmm1
R_SetCompleteState_60:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xc3
	mov [esp], esi
	call dword [eax+0xe4]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_ForceSetStencilState
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetCompleteState_10:
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1b
	mov [esp], esi
	call dword [eax+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x8
	and eax, 0x7
	mov eax, [eax*4+s_blendOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xab
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	and eax, 0xf
	mov eax, [eax*4+s_blendTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x4
	and eax, 0xf
	mov eax, [eax*4+s_blendTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x14
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x18
	and eax, 0x7
	mov eax, [eax*4+s_blendOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xd1
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	shr ebx, 0x10
	mov eax, ebx
	and eax, 0xf
	mov eax, [eax*4+s_blendTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xcf
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	shr ebx, 0x4
	and ebx, 0xf
	mov eax, [ebx*4+s_blendTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xd0
	mov [esp], esi
	call dword [edx+0xe4]
	jmp R_SetCompleteState_50
R_SetCompleteState_40:
	mov edx, [esi]
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xaf
	mov [esp], esi
	call dword [edx+0xe4]
	jmp R_SetCompleteState_60
R_SetCompleteState_20:
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, [eax+0xc]
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	jmp R_SetCompleteState_70
R_SetCompleteState_30:
	shr eax, 0x5
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_SetCompleteState_80


;R_SetViewportStruct(GfxCmdBufSourceState*, GfxViewport const*)
R_SetViewportStruct:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx+0xf50], eax
	mov eax, [edx+0x4]
	mov [ecx+0xf54], eax
	mov eax, [edx+0x8]
	mov [ecx+0xf58], eax
	mov eax, [edx+0xc]
	mov [ecx+0xf5c], eax
	mov dword [ecx+0xf38], 0x0
	mov byte [ecx+0xf70], 0x1
	pop ebp
	ret
	nop
	add [eax], al


;R_SetViewportValues(GfxCmdBufSourceState*, int, int, int, int)
R_SetViewportValues:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x18]
	mov [edx+0xf5c], eax
	mov eax, [ebp+0x14]
	mov [edx+0xf58], eax
	mov eax, [ebp+0x10]
	mov [edx+0xf54], eax
	mov eax, [ebp+0xc]
	mov [edx+0xf50], eax
	mov dword [edx+0xf38], 0x0
	mov byte [edx+0xf70], 0x1
	pop ebp
	ret
	nop
	add [eax], al


;R_GetTextureFromCode(GfxCmdBufSourceState*, unsigned int, unsigned char*)
R_GetTextureFromCode:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movzx edx, byte [ecx+ebx+0xc8c]
	mov eax, [ebp+0x10]
	mov [eax], dl
	mov eax, [ebx+ecx*4+0xc20]
	pop ebx
	pop ebp
	ret
	nop


;R_SetReflectionProbe(GfxCmdBufContext, unsigned int)
R_SetReflectionProbe:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc4]
	test byte [eax+0xf], 0x1
	jz R_SetReflectionProbe_10
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0xe8]
	shl edx, 0x4
	mov eax, [edx+eax+0xc]
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x72
	mov dword [esp+0x8], 0x1
	mov [esp], ecx
	mov [esp+0x4], ebx
	call R_SetSampler
R_SetReflectionProbe_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;R_ClearScreenInternal(IDirect3DDevice9*, unsigned char, float const*, float, unsigned char, GfxViewport const*)
R_ClearScreenInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x10]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x19], al
	movzx edi, byte [ebp+0x18]
	movss xmm0, dword [esi]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si edx, [ebp-0x20]
	cmp edx, 0xfe
	jle R_ClearScreenInternal_10
	mov eax, 0xffffffff
R_ClearScreenInternal_50:
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si edx, [ebp-0x24]
	cmp edx, 0xfe
	jle R_ClearScreenInternal_20
	mov eax, 0xffffffff
R_ClearScreenInternal_80:
	movzx eax, al
	mov bh, al
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	cmp eax, 0xfe
	jle R_ClearScreenInternal_30
	mov edx, 0xffffffff
R_ClearScreenInternal_70:
	mov bl, dl
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [esi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si edx, [ebp-0x2c]
	cmp edx, 0xfe
	jle R_ClearScreenInternal_40
	mov eax, 0xffffffff
R_ClearScreenInternal_60:
	shl eax, 0x18
	and ebx, 0xffffff
	or ebx, eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov ecx, edi
	movzx eax, cl
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	movzx eax, byte [ebp-0x19]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [edx+0xac]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ClearScreenInternal_10:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp R_ClearScreenInternal_50
R_ClearScreenInternal_40:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp R_ClearScreenInternal_60
R_ClearScreenInternal_30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp R_ClearScreenInternal_70
R_ClearScreenInternal_20:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp R_ClearScreenInternal_80
	nop


;R_SetRenderTargetSize(GfxCmdBufSourceState*, GfxRenderTargetId)
R_SetRenderTargetSize:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov byte [g_renderTargetIsOverridden], 0x0
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jle R_SetRenderTargetSize_10
	mov [esp], ebx
	call RB_PixelCost_OverrideRenderTarget
	cmp ebx, eax
	setnz byte [g_renderTargetIsOverridden]
	mov ebx, eax
R_SetRenderTargetSize_10:
	mov eax, [ebx*4+s_viewportBehaviorForRenderTarget]
	mov [esi+0xf64], eax
	lea eax, [ebx+ebx*4]
	shl eax, 0x2
	add eax, gfxRenderTargets
	mov edx, [eax+0xc]
	mov [esi+0xf68], edx
	mov eax, [eax+0x10]
	mov [esi+0xf6c], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_DeriveOpenGLMatrices(GfxCmdBufSourceState*)
R_DeriveOpenGLMatrices:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edi, [ebp+0x8]
	add edi, 0xcb0
	mov eax, [ebp+0x8]
	cmp dword [eax+0xf64], 0x1
	jz R_DeriveOpenGLMatrices_10
	mov edx, [eax+0xf58]
	test edx, edx
	jnz R_DeriveOpenGLMatrices_20
R_DeriveOpenGLMatrices_50:
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0xf6c]
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, dword [eax+0xf68]
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
R_DeriveOpenGLMatrices_80:
	mov eax, [edi]
	mov [ebp-0x58], eax
	mov eax, [edi+0x4]
	mov [ebp-0x54], eax
	mov eax, [edi+0x8]
	mov [ebp-0x50], eax
	mov eax, [edi+0xc]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x10]
	mov [ebp-0x48], eax
	mov eax, [edi+0x14]
	mov [ebp-0x44], eax
	mov eax, [edi+0x18]
	mov [ebp-0x40], eax
	mov eax, [edi+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x20]
	mov [ebp-0x38], eax
	mov eax, [edi+0x24]
	mov [ebp-0x34], eax
	mov eax, [edi+0x28]
	mov [ebp-0x30], eax
	mov eax, [edi+0x2c]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x30]
	mov [ebp-0x28], eax
	mov eax, [edi+0x34]
	mov [ebp-0x24], eax
	mov eax, [edi+0x38]
	mov [ebp-0x20], eax
	mov eax, [edi+0x3c]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x40]
	mov [ebp-0x118], eax
	mov eax, [edi+0x44]
	mov [ebp-0x114], eax
	mov eax, [edi+0x48]
	mov [ebp-0x110], eax
	mov eax, [edi+0x4c]
	mov [ebp-0x10c], eax
	mov eax, [edi+0x50]
	mov [ebp-0x108], eax
	mov eax, [edi+0x54]
	mov [ebp-0x104], eax
	mov eax, [edi+0x58]
	mov [ebp-0x100], eax
	mov eax, [edi+0x5c]
	mov [ebp-0xfc], eax
	mov eax, [edi+0x60]
	mov [ebp-0xf8], eax
	mov eax, [edi+0x64]
	mov [ebp-0xf4], eax
	mov eax, [edi+0x68]
	mov [ebp-0xf0], eax
	mov eax, [edi+0x6c]
	mov [ebp-0xec], eax
	mov eax, [edi+0x70]
	mov [ebp-0xe8], eax
	mov eax, [edi+0x74]
	mov [ebp-0xe4], eax
	mov eax, [edi+0x78]
	mov [ebp-0xe0], eax
	mov eax, [edi+0x7c]
	mov [ebp-0xdc], eax
	lea ebx, [ebp-0x118]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x21c]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	lea eax, [ebp-0x98]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea edx, [ebp-0x58]
	mov [esp], edx
	call MatrixMultiply44
	mov edx, [ebp+0x8]
	mov eax, [edx+0x80]
	mov [ebp-0x218], eax
	mov eax, [edx+0x84]
	mov [ebp-0x214], eax
	mov eax, [edx+0x88]
	mov [ebp-0x210], eax
	mov eax, [edx+0x8c]
	mov [ebp-0x20c], eax
	mov eax, [edx+0x90]
	mov [ebp-0x208], eax
	mov eax, [edx+0x94]
	mov [ebp-0x204], eax
	mov eax, [edx+0x98]
	mov [ebp-0x200], eax
	mov eax, [edx+0x9c]
	mov [ebp-0x1fc], eax
	mov eax, [edx+0xa0]
	mov [ebp-0x1f8], eax
	mov eax, [edx+0xa4]
	mov [ebp-0x1f4], eax
	mov eax, [edx+0xa8]
	mov [ebp-0x1f0], eax
	mov eax, [edx+0xac]
	mov [ebp-0x1ec], eax
	mov eax, [edx+0xb0]
	mov [ebp-0x1e8], eax
	mov eax, [edx+0xb4]
	mov [ebp-0x1e4], eax
	mov eax, [edx+0xb8]
	mov [ebp-0x1e0], eax
	mov eax, [edx+0xbc]
	mov [ebp-0x1dc], eax
	cmp dword [edx+0xf10], 0x2
	jz R_DeriveOpenGLMatrices_30
	mov eax, edx
	add eax, 0xef4
	movss xmm0, dword [ebp-0x1e8]
	mov edx, [ebp+0x8]
	addss xmm0, [edx+0xef4]
	movss [ebp-0x1e8], xmm0
	lea edx, [ebp-0x218]
	movss xmm0, dword [ebp-0x1e4]
	addss xmm0, [eax+0x4]
	movss [ebp-0x1e4], xmm0
	movss xmm0, dword [ebp-0x1e0]
	addss xmm0, [eax+0x8]
	movss [ebp-0x1e0], xmm0
	lea esi, [ebp-0xd8]
	mov [esp+0x8], esi
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixMultiply44
R_DeriveOpenGLMatrices_130:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call MatrixTranspose44
	mov eax, [ebp-0x118]
	mov [ebp-0x158], eax
	mov eax, [ebp-0x114]
	mov [ebp-0x154], eax
	mov eax, [ebp-0x110]
	mov [ebp-0x150], eax
	mov eax, [ebp-0x10c]
	mov [ebp-0x14c], eax
	mov eax, [ebp-0x108]
	mov [ebp-0x148], eax
	mov eax, [ebp-0x104]
	mov [ebp-0x144], eax
	mov eax, [ebp-0x100]
	mov [ebp-0x140], eax
	mov eax, [ebp-0xfc]
	mov [ebp-0x13c], eax
	mov eax, [ebp-0xf8]
	mov [ebp-0x138], eax
	mov eax, [ebp-0xf4]
	mov [ebp-0x134], eax
	mov eax, [ebp-0xf0]
	mov [ebp-0x130], eax
	mov eax, [ebp-0xec]
	mov [ebp-0x12c], eax
	mov eax, [ebp-0xe8]
	mov [ebp-0x128], eax
	mov eax, [ebp-0xe4]
	mov [ebp-0x124], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0x120], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0x11c], eax
	mov eax, [ebp+0x8]
	cmp dword [eax+0xf10], 0x2
	jz R_DeriveOpenGLMatrices_40
	lea edx, [ebp-0x158]
	add eax, 0x40
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixTranspose44
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DeriveOpenGLMatrices_20:
	mov ecx, [eax+0xf5c]
	test ecx, ecx
	jz R_DeriveOpenGLMatrices_50
	cmp dword [eax+0xf38], 0x2
	jz R_DeriveOpenGLMatrices_60
	mov eax, r_scaleViewport
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm1, xmm3
	jnz R_DeriveOpenGLMatrices_70
	jp R_DeriveOpenGLMatrices_70
R_DeriveOpenGLMatrices_60:
	cvtsi2ss xmm0, ecx
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, edx
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
	jmp R_DeriveOpenGLMatrices_80
R_DeriveOpenGLMatrices_10:
	mov ecx, [eax+0xf68]
	mov edx, [eax+0xf6c]
	cmp dword [eax+0xf38], 0x2
	jz R_DeriveOpenGLMatrices_90
	mov eax, r_scaleViewport
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm1, xmm3
	jz R_DeriveOpenGLMatrices_100
R_DeriveOpenGLMatrices_140:
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, ecx
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0x1
	jle R_DeriveOpenGLMatrices_110
R_DeriveOpenGLMatrices_150:
	cvtsi2ss xmm0, eax
	movss [ebp-0x21c], xmm0
R_DeriveOpenGLMatrices_160:
	mulss xmm1, xmm2
	cvttss2si eax, xmm1
	cmp eax, 0x1
	jle R_DeriveOpenGLMatrices_120
	cvtsi2ss xmm0, eax
	movss [ebp-0x220], xmm0
	jmp R_DeriveOpenGLMatrices_80
R_DeriveOpenGLMatrices_30:
	mov eax, [edi+0x40]
	mov [ebp-0x198], eax
	mov eax, [edi+0x44]
	mov [ebp-0x194], eax
	mov eax, [edi+0x48]
	mov [ebp-0x190], eax
	mov eax, [edi+0x4c]
	mov [ebp-0x18c], eax
	mov eax, [edi+0x50]
	mov [ebp-0x188], eax
	mov eax, [edi+0x54]
	mov [ebp-0x184], eax
	mov eax, [edi+0x58]
	mov [ebp-0x180], eax
	mov eax, [edi+0x5c]
	mov [ebp-0x17c], eax
	mov eax, [edi+0x60]
	mov [ebp-0x178], eax
	mov eax, [edi+0x64]
	mov [ebp-0x174], eax
	mov eax, [edi+0x68]
	mov [ebp-0x170], eax
	mov eax, [edi+0x6c]
	mov [ebp-0x16c], eax
	mov eax, [edi+0x70]
	mov [ebp-0x168], eax
	mov eax, [edi+0x74]
	mov [ebp-0x164], eax
	mov eax, [edi+0x7c]
	mov [ebp-0x15c], eax
	mov eax, [edi+0x134]
	mov [ebp-0x160], eax
	lea esi, [ebp-0x198]
	movss xmm0, dword [ebp-0x220]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x21c]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	lea ebx, [ebp-0x1d8]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea eax, [ebp-0x58]
	mov [esp], eax
	call MatrixMultiply44
	lea eax, [ebp-0x1a8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xef4
	mov [esp], eax
	call MatrixTransformVector44
	lea esi, [ebp-0xd8]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x218]
	mov [esp], eax
	call MatrixMultiply44
	jmp R_DeriveOpenGLMatrices_130
R_DeriveOpenGLMatrices_40:
	mov eax, [edi+0x40]
	mov [ebp-0x198], eax
	mov eax, [edi+0x44]
	mov [ebp-0x194], eax
	mov eax, [edi+0x48]
	mov [ebp-0x190], eax
	mov eax, [edi+0x4c]
	mov [ebp-0x18c], eax
	mov eax, [edi+0x50]
	mov [ebp-0x188], eax
	mov eax, [edi+0x54]
	mov [ebp-0x184], eax
	mov eax, [edi+0x58]
	mov [ebp-0x180], eax
	mov eax, [edi+0x5c]
	mov [ebp-0x17c], eax
	mov eax, [edi+0x60]
	mov [ebp-0x178], eax
	mov eax, [edi+0x64]
	mov [ebp-0x174], eax
	mov eax, [edi+0x68]
	mov [ebp-0x170], eax
	mov eax, [edi+0x6c]
	mov [ebp-0x16c], eax
	mov eax, [edi+0x70]
	mov [ebp-0x168], eax
	mov eax, [edi+0x74]
	mov [ebp-0x164], eax
	mov eax, [edi+0x7c]
	mov [ebp-0x15c], eax
	mov eax, [edi+0x134]
	mov [ebp-0x160], eax
	lea eax, [ebp-0x198]
	movss xmm0, dword [ebp-0x220]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x21c]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	mov eax, [ebp+0x8]
	lea edx, [ebp-0x158]
	add eax, 0x40
	mov [esp+0x4], eax
	mov [esp], edx
	call MatrixTranspose44
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DeriveOpenGLMatrices_100:
	jp R_DeriveOpenGLMatrices_140
R_DeriveOpenGLMatrices_90:
	cvtsi2ss xmm0, edx
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, ecx
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
	jmp R_DeriveOpenGLMatrices_80
R_DeriveOpenGLMatrices_70:
	cvtsi2ss xmm2, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0x1
	jg R_DeriveOpenGLMatrices_150
R_DeriveOpenGLMatrices_110:
	movss [ebp-0x21c], xmm3
	jmp R_DeriveOpenGLMatrices_160
R_DeriveOpenGLMatrices_120:
	movss [ebp-0x220], xmm3
	movaps xmm0, xmm3
	jmp R_DeriveOpenGLMatrices_80
	nop


;R_DrawIndexedPrimitive(GfxCmdBufPrimState*, GfxDrawPrimArgs const*)
R_DrawIndexedPrimitive:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov [esp+0xc], eax
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj
	leave
	ret


;R_ForceSetStencilState(IDirect3DDevice9*, unsigned int)
R_ForceSetStencilState:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	test bl, 0x40
	jnz R_ForceSetStencilState_10
	mov eax, [esi]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call dword [eax+0xe4]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_ForceSetStencilState_10:
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call dword [eax+0xe4]
	test bl, bl
	jns R_ForceSetStencilState_20
R_ForceSetStencilState_30:
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x8
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x37
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0xb
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x35
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0xe
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x36
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x14
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbc
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x17
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xba
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	mov eax, ebx
	shr eax, 0x1a
	and eax, 0x7
	mov eax, [eax*4+s_stencilOpTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbb
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	shr ebx, 0x11
	mov eax, ebx
	and eax, 0x7
	mov eax, [eax*4+s_stencilFuncTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x38
	mov [esp], esi
	call dword [edx+0xe4]
	mov edx, [esi]
	shr ebx, 0xc
	mov eax, [ebx*4+s_stencilFuncTable]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xbd
	mov [esp], esi
	call dword [edx+0xe4]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_ForceSetStencilState_20:
	mov eax, ebx
	and eax, 0xfffff
	and ebx, 0xfff00
	shl ebx, 0xc
	or ebx, eax
	jmp R_ForceSetStencilState_30
	nop


;R_TextureFromCodeError(GfxCmdBufSourceState*, unsigned int)
R_TextureFromCodeError:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov edx, rg
	mov eax, [edx+eax*4+0x2270]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_use_s_w
	mov dword [esp], 0x2
	call Com_Error
	leave
	ret


;R_ChangeObjectPlacement(GfxCmdBufSourceState*, GfxScaledPlacement const*)
R_ChangeObjectPlacement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea edi, [ebp-0x48]
	mov [esp+0x4], edi
	mov [esp], ebx
	call UnitQuatToAxis
	mov [esp], esi
	call R_GetActiveWorldMatrix
	lea edx, [ebx+0x10]
	lea ecx, [esi+0xef4]
	movss xmm0, dword [ebx+0x10]
	subss xmm0, [esi+0xef4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ecx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [ecx+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebx+0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call MatrixSet44
	mov [esp], esi
	call R_DeriveOpenGLMatrices
	mov [esi+0xf08], ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_ClearAllStreamSources(GfxCmdBufPrimState*)
R_ClearAllStreamSources:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x10]
	test eax, eax
	jz R_ClearAllStreamSources_10
R_ClearAllStreamSources_30:
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [ebx+0xc], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
R_ClearAllStreamSources_40:
	mov ecx, [ebx+0x1c]
	test ecx, ecx
	jz R_ClearAllStreamSources_20
R_ClearAllStreamSources_50:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x18], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
R_ClearAllStreamSources_60:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_ClearAllStreamSources_10:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz R_ClearAllStreamSources_30
	mov eax, [ebx+0xc]
	test eax, eax
	jz R_ClearAllStreamSources_40
	jmp R_ClearAllStreamSources_30
R_ClearAllStreamSources_20:
	mov edx, [ebx+0x20]
	test edx, edx
	jnz R_ClearAllStreamSources_50
	mov eax, [ebx+0x18]
	test eax, eax
	jnz R_ClearAllStreamSources_50
	jmp R_ClearAllStreamSources_60
	nop


;R_OverrideGrayscaleImage(dvar_s const*)
R_OverrideGrayscaleImage:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	cmp eax, 0x2
	jz R_OverrideGrayscaleImage_10
	test eax, eax
	jz R_OverrideGrayscaleImage_20
	mov eax, rgp
	mov eax, [eax+0x2018]
	pop ebp
	ret
R_OverrideGrayscaleImage_20:
	mov eax, rgp
	mov eax, [eax+0x200c]
	pop ebp
	ret
R_OverrideGrayscaleImage_10:
	mov eax, rgp
	mov eax, [eax+0x2008]
	pop ebp
	ret
	nop


;R_SetInitialContextState(IDirect3DDevice9*)
R_SetInitialContextState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xce
	mov [esp], ebx
	call dword [eax+0xe4]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb9
	mov [esp], ebx
	call dword [eax+0xe4]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call dword [eax+0xe4]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_ChangeDepthHackNearClip(GfxCmdBufSourceState*, unsigned int)
R_ChangeDepthHackNearClip:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp [edx+0xf10], ecx
	jz R_ChangeDepthHackNearClip_10
	add word [edx+0xee8], 0x1
	add word [edx+0xeec], 0x1
	add word [edx+0xeee], 0x1
	mov eax, [edx+0xbec]
	xor eax, 0x80000000
	mov [edx+0xbec], eax
	add word [edx+0xe9c], 0x1
	mov [edx+0xf10], ecx
	mov [ebp+0x8], edx
	leave
	jmp R_DeriveOpenGLMatrices
R_ChangeDepthHackNearClip_10:
	leave
	ret


;R_SetAlphaAntiAliasingState(IDirect3DDevice9*, int)
R_SetAlphaAntiAliasingState:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	test dword [ebp+0xc], 0xf00
	jnz R_SetAlphaAntiAliasingState_10
	mov eax, r_aaAlpha
	mov eax, [eax]
	mov edx, 0x41415353
	cmp dword [eax+0xc], 0x2
	mov eax, 0x434f5441
	cmovnz edx, eax
	mov eax, [ecx]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xb5
	mov [esp], ecx
	call dword [eax+0xe4]
	leave
	ret
R_SetAlphaAntiAliasingState_10:
	xor edx, edx
	mov eax, [ecx]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xb5
	mov [esp], ecx
	call dword [eax+0xe4]
	leave
	ret
	add [eax], al


;Initialized global or static variables of r_state:
SECTION .data


;Initialized constant data of r_state:
SECTION .rdata
s_cullTable: dd 0x0, 0x1, 0x3, 0x2
s_depthTestTable: dd 0x8, 0x2, 0x3, 0x4, 0x0, 0x0, 0x0, 0x0
s_viewportBehaviorForRenderTarget: dd 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0x0, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0
s_stencilOpTable: dd 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
s_stencilFuncTable: dd 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
s_blendTable: dd 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
s_blendOpTable: dd 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_mipFilterTable: dd 0x0, 0x1, 0x2, 0x0, 0x2, 0x2, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x27fcab, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x28040b, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x28030b, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x28022b, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x28006b, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x27ffa3, 0x27fb5e, 0x27fb5e, 0x27fb5e, 0x27fd7b, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
shadowmapClearColor: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000


;Zero initialized global or static variables of r_state:
SECTION .bss
g_renderTargetIsOverridden: resb 0x20
s_decodeSamplerFilterState: resb 0x60
s_manualObjectPlacement: resb 0x20


;All cstrings:
SECTION .rdata
_cstring_olprio_pain:		db "olprio_pain",0
_cstring_tried_to_use_s_w:		db "Tried to use ",27h,"%s",27h," when it isn",27h,"t valid",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00001526:		dd 0x37800000	; 1.52588e-05
_float_255_00000000:		dd 0x437f0000	; 255

