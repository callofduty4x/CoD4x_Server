;Imports of r_state:
	extern _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
	extern gfxCmdBufState
	extern memcpy
	extern memset
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
	extern r_aaAlpha
	extern r_polygonOffsetBias
	extern r_polygonOffsetScale
	extern sm_polygonOffsetBias
	extern sm_polygonOffsetScale
	extern _Z17MatrixTranspose44PKfPf
	extern _Z15MatrixInverse44PKfPf
	extern _Z23MatrixTransformVector44PKfPA4_S_Pf
	extern r_outdoorAwayBias
	extern r_outdoorDownBias
	extern _Z16MatrixMultiply44PA4_KfS1_PA4_f
	extern gfxRenderTargets
	extern vidConfig
	extern _Z33RB_PixelCost_OverrideRenderTarget17GfxRenderTargetId
	extern floorf
	extern _ZN14MacOpenGLUtils34ConvertD3DProjectionMatrixToOpenGLEPfff
	extern _ZN15CDirect3DDevice24DrawIndexedPrimitiveFastEjjj
	extern rg
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z14UnitQuatToAxisPKfPA3_f
	extern _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
	extern _Z11MatrixSet44PA4_fPKfPA3_S1_f

;Exports of r_state:
	global s_cullTable
	global s_depthTestTable
	global s_viewportBehaviorForRenderTarget
	global s_stencilOpTable
	global s_stencilFuncTable
	global s_blendTable
	global s_blendOpTable
	global s_mipFilterTable
	global _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
	global _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	global _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	global _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport
	global _Z13R_SetLightmap16GfxCmdBufContextj
	global _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport
	global _Z14R_SetTexFilterv
	global _Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType
	global _Z15R_ChangeState_0P14GfxCmdBufStatej
	global _Z15R_ChangeState_1P14GfxCmdBufStatej
	global _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	global _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData
	global _Z16R_DisableSamplerP14GfxCmdBufStatej
	global _Z16R_UpdateViewportP20GfxCmdBufSourceStateP11GfxViewport
	global _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	global _Z17R_SetSamplerStateP14GfxCmdBufStatejh
	global _Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType
	global _Z18R_SetCompleteStateP16IDirect3DDevice9PKj
	global _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	global _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	global _Z20R_GetTextureFromCodeP20GfxCmdBufSourceStatejPh
	global _Z20R_SetReflectionProbe16GfxCmdBufContextj
	global _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport
	global _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	global _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	global _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	global _Z22R_ForceSetStencilStateP16IDirect3DDevice9j
	global _Z22R_TextureFromCodeErrorP20GfxCmdBufSourceStatej
	global _Z23R_ChangeObjectPlacementP20GfxCmdBufSourceStatePK18GfxScaledPlacement
	global _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState
	global _Z24R_OverrideGrayscaleImagePK6dvar_s
	global _Z24R_SetInitialContextStateP16IDirect3DDevice9
	global _Z25R_ChangeDepthHackNearClipP20GfxCmdBufSourceStatej
	global _Z27R_SetAlphaAntiAliasingStateP16IDirect3DDevice9i
	global shadowmapClearColor
	global g_renderTargetIsOverridden
	global s_decodeSamplerFilterState
	global s_manualObjectPlacement


SECTION .text


;R_DrawCall(void (*)(void const*, GfxCmdBufContext, GfxCmdBufContext), void const*, GfxCmdBufSourceState*, GfxViewInfo const*, GfxDrawSurfListInfo const*, GfxViewParms const*, GfxCmdBuf*, GfxCmdBuf*)
_Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_:
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
	call _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
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
	jz _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG__10
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
_Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG__20:
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
_Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG__10:
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
	jmp _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG__20
	nop


;R_SetSampler(GfxCmdBufContext, unsigned int, unsigned char, GfxImage const*)
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage:
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
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_10
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
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_10
	cmp ebx, 0xffffffff
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_20
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [esi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_10:
	mov eax, [ebp-0x18]
	cmp dword [eax+0xf38], 0x2
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_30
	mov edx, edi
	mov ecx, [ebp-0x14]
	cmp [ecx+ebx], dl
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_40
	mov [ecx+ebx], dl
	mov eax, edi
	movzx edx, al
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, 0x1500000
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
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_210:
	mov edx, [ebp-0x14]
	mov edx, [edx+ebx*4+0x10]
	mov [ebp-0x20], edx
	cmp esi, edx
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_40
	mov ecx, [ebp-0x14]
	mov edi, [ecx+0x90]
	xor edx, esi
	mov [ebp-0x1c], edx
	and dh, 0xf
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_50
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
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_60
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_50:
	test word [ebp-0x1c], 0xf000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_70
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_230:
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
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_80
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_70:
	cmp byte [ebp-0x1c], 0x0
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_90
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_220:
	mov ecx, esi
	and ecx, 0xff
	cmp ecx, 0x1
	jle _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_100
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	mov [eax+0x28], ecx
	cmp ebx, 0xffffffff
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_110
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_90:
	mov [ebp-0x10], esi
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_240:
	test dword [ebp-0x1c], 0xf0000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_120
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
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_130
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_120:
	test dword [ebp-0x1c], 0x3f00000
	jnz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_140
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_190:
	mov edx, [ebp-0x10]
	mov eax, [ebp-0x14]
	mov [eax+ebx*4+0x10], edx
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_40:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_140:
	test dword [ebp-0x1c], 0x300000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_150
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0x300000
	shr eax, 0x14
	mov [edx+0x4], eax
	cmp ebx, 0xffffffff
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_160
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_150:
	test dword [ebp-0x1c], 0xc00000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_170
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xc00000
	shr eax, 0x16
	mov [edx+0x8], eax
	cmp ebx, 0xffffffff
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_180
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_170:
	test dword [ebp-0x1c], 0x3000000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_190
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	and esi, 0x3000000
	shr esi, 0x18
	mov [eax+0xc], esi
	cmp ebx, 0xffffffff
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_200
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_190
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_30:
	mov edx, edi
	mov ecx, [ebp-0x14]
	mov [ecx+ebx], dl
	mov eax, edi
	movzx edx, al
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, 0x1500000
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
	jnz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_210
	and esi, 0xfff0ffff
	or esi, 0x20000
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_210
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_20:
	mov ecx, [esi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [esi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_10
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_80:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	cmp byte [ebp-0x1c], 0x0
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_90
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_220
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_130:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test dword [ebp-0x1c], 0x3f00000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_190
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_140
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_60:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test word [ebp-0x1c], 0xf000
	jz _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_70
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_230
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_110:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_90
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_100:
	mov eax, esi
	and eax, 0xffffff00
	mov [ebp-0x10], eax
	movzx eax, byte [ebp-0x20]
	or [ebp-0x10], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_240
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_180:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_170
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_160:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_150
_Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_200:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage_190


;R_ClearScreen(IDirect3DDevice9*, unsigned char, float const*, float, unsigned char, GfxViewport const*)
_Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport:
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
	jle _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport_10
	and dl, 0xfe
	jz _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport_20
_Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport_10:
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
	jmp _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport
_Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport_20:
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;R_GetViewport(GfxCmdBufSourceState*, GfxViewport*)
_Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp dword [edx+0xf64], 0x1
	jz _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_10
	mov eax, [edx+0xf50]
	mov [ecx], eax
	mov eax, [edx+0xf54]
	mov [ecx+0x4], eax
	mov eax, [edx+0xf58]
	mov [ecx+0x8], eax
	mov eax, [edx+0xf5c]
	mov [ecx+0xc], eax
_Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_40:
	cmp dword [edx+0xf38], 0x2
	jz _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_20
	mov ebx, r_scaleViewport
	mov eax, [ebx]
	movss xmm0, dword [eax+0xc]
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	jp _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_30
	jz _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_20
_Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_30:
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
_Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_20:
	pop ebx
	pop ebp
	ret
_Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_10:
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
	mov eax, [edx+0xf68]
	mov [ecx+0x8], eax
	mov eax, [edx+0xf6c]
	mov [ecx+0xc], eax
	jmp _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport_40


;R_SetLightmap(GfxCmdBufContext, unsigned int)
_Z13R_SetLightmap16GfxCmdBufContextj:
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
	jz _Z13R_SetLightmap16GfxCmdBufContextj_10
	mov eax, r_lightMap
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp eax, 0x1
	jz _Z13R_SetLightmap16GfxCmdBufContextj_20
	cmp eax, 0x2
	jz _Z13R_SetLightmap16GfxCmdBufContextj_30
	test eax, eax
	jnz _Z13R_SetLightmap16GfxCmdBufContextj_40
	mov eax, rgp
	mov ebx, [eax+0x200c]
_Z13R_SetLightmap16GfxCmdBufContextj_90:
	mov edx, [ebp-0x24]
	test byte [edx+0xf], 0x2
	jnz _Z13R_SetLightmap16GfxCmdBufContextj_50
_Z13R_SetLightmap16GfxCmdBufContextj_80:
	test byte [edx+0xf], 0x4
	jz _Z13R_SetLightmap16GfxCmdBufContextj_10
	mov esi, [ebp-0x20]
	mov edi, [ebp-0x1c]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x62
	mov dword [esp+0x8], 0x3
	mov [esp], esi
	mov [esp+0x4], edi
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
_Z13R_SetLightmap16GfxCmdBufContextj_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_SetLightmap16GfxCmdBufContextj_20:
	mov eax, [ebp-0x24]
	test byte [eax+0xf], 0x2
	jz _Z13R_SetLightmap16GfxCmdBufContextj_60
	mov edx, [ebp-0x20]
	mov eax, [edx+0xca8]
	mov esi, [eax+0x11822c]
	test esi, esi
	jz _Z13R_SetLightmap16GfxCmdBufContextj_70
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	mov edx, [ebp-0x24]
_Z13R_SetLightmap16GfxCmdBufContextj_100:
	test byte [edx+0xf], 0x4
	jz _Z13R_SetLightmap16GfxCmdBufContextj_10
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_SetLightmap16GfxCmdBufContextj_40:
	mov eax, rgp
	mov ebx, [eax+0x2018]
	mov edx, [ebp-0x24]
	test byte [edx+0xf], 0x2
	jz _Z13R_SetLightmap16GfxCmdBufContextj_80
_Z13R_SetLightmap16GfxCmdBufContextj_50:
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	mov edx, [ebp-0x24]
	jmp _Z13R_SetLightmap16GfxCmdBufContextj_80
_Z13R_SetLightmap16GfxCmdBufContextj_30:
	mov eax, rgp
	mov ebx, [eax+0x2008]
	jmp _Z13R_SetLightmap16GfxCmdBufContextj_90
_Z13R_SetLightmap16GfxCmdBufContextj_60:
	mov edx, eax
	jmp _Z13R_SetLightmap16GfxCmdBufContextj_100
_Z13R_SetLightmap16GfxCmdBufContextj_70:
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	mov edx, [ebp-0x24]
	jmp _Z13R_SetLightmap16GfxCmdBufContextj_100
	add [eax], al


;R_SetViewport(GfxCmdBufState*, GfxViewport const*)
_Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [esi]
	cmp edx, [ecx+0x9f4]
	jz _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_10
_Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_20:
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
_Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_10:
	mov eax, [esi+0x4]
	cmp eax, [ecx+0x9f8]
	jnz _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_20
	mov eax, [esi+0x8]
	cmp eax, [ecx+0x9fc]
	jnz _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_20
	mov eax, [esi+0xc]
	cmp eax, [ecx+0xa00]
	jnz _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_20
	jmp _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport_30


;R_SetTexFilter()
_Z14R_SetTexFilterv:
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
	jle _Z14R_SetTexFilterv_10
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
_Z14R_SetTexFilterv_150:
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
	jle _Z14R_SetTexFilterv_20
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x1c], 0x4
	cmp ecx, 0x4
	jle _Z14R_SetTexFilterv_30
_Z14R_SetTexFilterv_120:
	lea edx, [ebp-0x1c]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov eax, r_texFilterDisable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14R_SetTexFilterv_40
_Z14R_SetTexFilterv_130:
	mov dword [ebp-0x30], 0x1100
	mov edi, 0x1
	mov dword [ebp-0x34], 0x1100
	mov dword [ebp-0x2c], 0x1
	mov edx, 0x1
	mov dword [ebp-0x38], 0x1100
	mov eax, 0x3
_Z14R_SetTexFilterv_140:
	xor ecx, ecx
	mov ebx, s_decodeSamplerFilterState
	lea esi, [eax+eax*2]
	or edi, [ebp-0x34]
	mov [ebp-0x3c], edi
	mov edi, [ebp-0x30]
	or edi, [ebp-0x2c]
	or edx, [ebp-0x30]
	mov [ebp-0x40], edx
	jmp _Z14R_SetTexFilterv_50
_Z14R_SetTexFilterv_90:
	cmp edx, 0x3
	jz _Z14R_SetTexFilterv_60
	cmp edx, 0x4
	jz _Z14R_SetTexFilterv_70
	or eax, 0x1101
_Z14R_SetTexFilterv_110:
	mov [ebx], eax
	add ecx, 0x1
	add ebx, 0x4
	cmp ecx, 0x18
	jz _Z14R_SetTexFilterv_80
_Z14R_SetTexFilterv_50:
	mov edx, ecx
	and edx, 0x7
	mov eax, ecx
	and eax, 0x18
	sar eax, 0x3
	lea eax, [esi+eax]
	mov eax, [eax*4+s_mipFilterTable]
	shl eax, 0x10
	cmp edx, 0x2
	jnz _Z14R_SetTexFilterv_90
	test eax, eax
	jnz _Z14R_SetTexFilterv_100
	mov eax, [ebp-0x38]
	or eax, 0x1
	mov [ebx], eax
	add ecx, 0x1
	add ebx, 0x4
	cmp ecx, 0x18
	jnz _Z14R_SetTexFilterv_50
_Z14R_SetTexFilterv_80:
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
_Z14R_SetTexFilterv_60:
	or eax, edi
	jmp _Z14R_SetTexFilterv_110
_Z14R_SetTexFilterv_70:
	or eax, [ebp-0x40]
	jmp _Z14R_SetTexFilterv_110
_Z14R_SetTexFilterv_100:
	or eax, [ebp-0x3c]
	jmp _Z14R_SetTexFilterv_110
_Z14R_SetTexFilterv_20:
	mov edx, ebx
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x1c], 0x4
	cmp ecx, 0x4
	jg _Z14R_SetTexFilterv_120
_Z14R_SetTexFilterv_30:
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x28]
	cmp edi, [edx]
	cmovge edx, eax
	mov edx, [edx]
	mov eax, r_texFilterDisable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z14R_SetTexFilterv_130
_Z14R_SetTexFilterv_40:
	mov eax, r_texFilterMipMode
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov dword [ebp-0x38], 0x2200
	jmp _Z14R_SetTexFilterv_140
_Z14R_SetTexFilterv_10:
	mov dword [ebp-0x24], 0x1
	mov dword [ebp-0x30], 0x2200
	jmp _Z14R_SetTexFilterv_150
	nop


;R_BeginMaterial(GfxCmdBufState*, Material const*, MaterialTechniqueType)
_Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType:
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
	jz _Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType_10
	mov [edx+0xb8], ecx
	mov [edx+0xbc], ebx
	mov [edx+0xc0], eax
	mov eax, 0x1
_Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType_10:
	pop ebx
	pop ebp
	ret
	nop


;R_ChangeState_0(GfxCmdBufState*, unsigned int)
_Z15R_ChangeState_0P14GfxCmdBufStatej:
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
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_10
	mov edx, eax
	mov eax, esi
	xor eax, [edx+0x9dc]
	test eax, 0x7000700
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_20
	mov ecx, edx
	mov ecx, [ecx+0x90]
	mov [ebp-0x20], ecx
	test edi, 0x18000000
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_30
_Z15R_ChangeState_0P14GfxCmdBufStatej_210:
	test edi, 0x800
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_40
_Z15R_ChangeState_0P14GfxCmdBufStatej_220:
	mov ebx, esi
	shr ebx, 0xb
	and ebx, 0x1
	test ebx, ebx
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_50
_Z15R_ChangeState_0P14GfxCmdBufStatej_230:
	test edi, 0x3000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_60
_Z15R_ChangeState_0P14GfxCmdBufStatej_240:
	mov eax, esi
	and eax, 0x3000
	cmp eax, 0x1000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_70
	cmp eax, 0x2000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_80
	mov edx, 0x7
	mov byte [ebp-0x19], 0x80
_Z15R_ChangeState_0P14GfxCmdBufStatej_330:
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
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_60
	mov edx, [ebx]
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], ebx
	call dword [edx+0xe4]
	movzx ecx, byte [ebp-0x19]
	mov ebx, [ebp+0x8]
	mov [ebx+0x9d8], cl
_Z15R_ChangeState_0P14GfxCmdBufStatej_60:
	test di, 0xc000
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_90
	test edi, edi
	js _Z15R_ChangeState_0P14GfxCmdBufStatej_100
_Z15R_ChangeState_0P14GfxCmdBufStatej_280:
	mov eax, [ebp+0x8]
	test dword [eax+0x9dc], 0x700
	setnz dl
	test esi, 0x700
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_110
	test esi, 0x7000000
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_120
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
_Z15R_ChangeState_0P14GfxCmdBufStatej_120:
	test dl, dl
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_130
	test edi, 0x700
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_140
_Z15R_ChangeState_0P14GfxCmdBufStatej_310:
	test edi, 0xf
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_150
_Z15R_ChangeState_0P14GfxCmdBufStatej_320:
	test edi, 0xf0
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_160
_Z15R_ChangeState_0P14GfxCmdBufStatej_300:
	test edi, 0x7000000
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_170
	test edi, 0xf0000
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_180
_Z15R_ChangeState_0P14GfxCmdBufStatej_290:
	test edi, 0xf00000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_190
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
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_200
_Z15R_ChangeState_0P14GfxCmdBufStatej_260:
	mov ebx, [ebp+0x8]
	mov [ebx+0x9e4], esi
_Z15R_ChangeState_0P14GfxCmdBufStatej_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_ChangeState_0P14GfxCmdBufStatej_10:
	mov ecx, eax
	mov ecx, [ecx+0x90]
	mov [ebp-0x20], ecx
	test edi, 0x18000000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_210
_Z15R_ChangeState_0P14GfxCmdBufStatej_30:
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
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_220
_Z15R_ChangeState_0P14GfxCmdBufStatej_40:
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
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_230
_Z15R_ChangeState_0P14GfxCmdBufStatej_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e4]
	and eax, 0x3000
	or esi, eax
	and edi, 0xffffcfff
	test edi, 0x3000
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_60
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_240
_Z15R_ChangeState_0P14GfxCmdBufStatej_110:
	and esi, 0xf800f800
	mov eax, [eax+0x9e4]
	and eax, 0x7ff07ff
	or esi, eax
	and edi, 0xf800f800
	test dl, dl
	jnz _Z15R_ChangeState_0P14GfxCmdBufStatej_250
_Z15R_ChangeState_0P14GfxCmdBufStatej_190:
	mov eax, gfxMetrics
	cmp byte [eax+0x27], 0x0
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_260
_Z15R_ChangeState_0P14GfxCmdBufStatej_200:
	mov eax, r_aaAlpha
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_260
	and edi, 0xf00
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_260
	test esi, 0xf00
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_270
	xor edx, edx
_Z15R_ChangeState_0P14GfxCmdBufStatej_340:
	mov ecx, [ebp-0x20]
	mov eax, [ecx]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xb5
	mov [esp], ecx
	call dword [eax+0xe4]
	mov ebx, [ebp+0x8]
	mov [ebx+0x9e4], esi
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_20
_Z15R_ChangeState_0P14GfxCmdBufStatej_90:
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
	jns _Z15R_ChangeState_0P14GfxCmdBufStatej_280
_Z15R_ChangeState_0P14GfxCmdBufStatej_100:
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
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_280
_Z15R_ChangeState_0P14GfxCmdBufStatej_170:
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
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_290
_Z15R_ChangeState_0P14GfxCmdBufStatej_180:
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
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_290
_Z15R_ChangeState_0P14GfxCmdBufStatej_160:
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
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_300
_Z15R_ChangeState_0P14GfxCmdBufStatej_130:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1b
	mov [esp], ebx
	call dword [eax+0xe4]
	test edi, 0x700
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_310
_Z15R_ChangeState_0P14GfxCmdBufStatej_140:
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
	jz _Z15R_ChangeState_0P14GfxCmdBufStatej_320
_Z15R_ChangeState_0P14GfxCmdBufStatej_150:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov edx, esi
	and edx, 0xf
	mov edx, [edx*4+s_blendTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x13
	mov [esp], ebx
	call dword [eax+0xe4]
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_320
_Z15R_ChangeState_0P14GfxCmdBufStatej_250:
	mov ebx, [ebp-0x20]
	mov eax, [ebx]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1b
	mov [esp], ebx
	call dword [eax+0xe4]
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_190
_Z15R_ChangeState_0P14GfxCmdBufStatej_70:
	mov edx, 0x5
	mov byte [ebp-0x19], 0x0
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_330
_Z15R_ChangeState_0P14GfxCmdBufStatej_80:
	mov edx, 0x2
	mov byte [ebp-0x19], 0x80
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_330
_Z15R_ChangeState_0P14GfxCmdBufStatej_270:
	mov edx, 0x41415353
	cmp eax, 0x2
	mov eax, 0x434f5441
	cmovnz edx, eax
	jmp _Z15R_ChangeState_0P14GfxCmdBufStatej_340


;R_ChangeState_1(GfxCmdBufState*, unsigned int)
_Z15R_ChangeState_1P14GfxCmdBufStatej:
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
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_10
	mov edx, [eax+0x90]
	mov [ebp-0x2c], edx
	test edi, 0x1
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_20
	test edi, 0x2
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_30
_Z15R_ChangeState_1P14GfxCmdBufStatej_180:
	mov ebx, esi
	shr ebx, 1
	and ebx, 0x1
_Z15R_ChangeState_1P14GfxCmdBufStatej_170:
	test ebx, ebx
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_40
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e8]
	and eax, 0xc
	or esi, eax
	and edi, 0xfffffff3
_Z15R_ChangeState_1P14GfxCmdBufStatej_40:
	test edi, 0xc
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_50
_Z15R_ChangeState_1P14GfxCmdBufStatej_210:
	test edi, 0x30
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_60
	mov eax, esi
	and eax, 0x30
	cmp eax, 0x30
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_70
	mov edx, eax
	shr edx, 0x4
	js _Z15R_ChangeState_1P14GfxCmdBufStatej_80
	cvtsi2ss xmm0, edx
_Z15R_ChangeState_1P14GfxCmdBufStatej_290:
	mov eax, r_polygonOffsetBias
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [_float_0_00001526]
	mov eax, r_polygonOffsetScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
_Z15R_ChangeState_1P14GfxCmdBufStatej_280:
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	mov eax, gfxMetrics
	cmp byte [eax+0x25], 0x0
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_90
	addss xmm1, xmm1
	movss [ebp-0x1c], xmm1
_Z15R_ChangeState_1P14GfxCmdBufStatej_270:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc3
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
_Z15R_ChangeState_1P14GfxCmdBufStatej_60:
	test esi, 0x40
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_100
	test edi, 0x40
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_110
_Z15R_ChangeState_1P14GfxCmdBufStatej_200:
	mov ecx, esi
	test cl, cl
	js _Z15R_ChangeState_1P14GfxCmdBufStatej_120
	mov eax, esi
	and eax, 0xfffff
	and esi, 0xfff00
	shl esi, 0xc
	or esi, eax
	mov edi, esi
	mov eax, [ebp+0x8]
	xor edi, [eax+0x9e8]
_Z15R_ChangeState_1P14GfxCmdBufStatej_120:
	test edi, 0x1ff00
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_130
_Z15R_ChangeState_1P14GfxCmdBufStatej_250:
	test edi, 0x1ff00000
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_140
_Z15R_ChangeState_1P14GfxCmdBufStatej_240:
	test edi, 0xe0000
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_150
_Z15R_ChangeState_1P14GfxCmdBufStatej_230:
	and edi, 0xe0000000
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_160
_Z15R_ChangeState_1P14GfxCmdBufStatej_220:
	mov eax, [ebp+0x8]
	mov [eax+0x9e8], esi
_Z15R_ChangeState_1P14GfxCmdBufStatej_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_ChangeState_1P14GfxCmdBufStatej_30:
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
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_170
_Z15R_ChangeState_1P14GfxCmdBufStatej_20:
	mov ecx, edx
	mov edx, [edx]
	mov eax, esi
	and eax, 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	mov [esp], ecx
	call dword [edx+0xe4]
	test edi, 0x2
	jz _Z15R_ChangeState_1P14GfxCmdBufStatej_180
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_30
_Z15R_ChangeState_1P14GfxCmdBufStatej_100:
	test edi, 0x40
	jnz _Z15R_ChangeState_1P14GfxCmdBufStatej_190
_Z15R_ChangeState_1P14GfxCmdBufStatej_260:
	and esi, 0x7f
	mov edx, [ebp+0x8]
	mov eax, [edx+0x9e8]
	and eax, 0xffffff80
	or esi, eax
	and edi, 0x7f
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_200
_Z15R_ChangeState_1P14GfxCmdBufStatej_50:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov edx, esi
	and edx, 0xc
	mov edx, [edx+s_depthTestTable]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x17
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_210
_Z15R_ChangeState_1P14GfxCmdBufStatej_160:
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
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_220
_Z15R_ChangeState_1P14GfxCmdBufStatej_150:
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
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_230
_Z15R_ChangeState_1P14GfxCmdBufStatej_140:
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
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_240
_Z15R_ChangeState_1P14GfxCmdBufStatej_130:
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
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_250
_Z15R_ChangeState_1P14GfxCmdBufStatej_190:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x34
	mov [esp], ecx
	call dword [eax+0xe4]
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_260
_Z15R_ChangeState_1P14GfxCmdBufStatej_110:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x34
	mov [esp], edx
	call dword [eax+0xe4]
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_200
_Z15R_ChangeState_1P14GfxCmdBufStatej_90:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xaf
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call dword [edx+0xe4]
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_270
_Z15R_ChangeState_1P14GfxCmdBufStatej_70:
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, [eax+0xc]
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_280
_Z15R_ChangeState_1P14GfxCmdBufStatej_80:
	shr eax, 0x5
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z15R_ChangeState_1P14GfxCmdBufStatej_290


;R_GetCodeMatrix(GfxCmdBufSourceState*, unsigned int, unsigned int)
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj:
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_90:
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
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_10
	mov ecx, [ebp-0xc4]
	and ecx, 0xfffffffc
	mov [ebp-0xc8], ecx
	movzx eax, word [edi+ecx*2+0xea4]
	cmp [ebp-0xcc], eax
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_20
	mov eax, ecx
	sub eax, 0x4
	cmp eax, 0x18
	jbe _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_30
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80:
	mov edx, [ebp-0xc8]
	cmp [ebp-0xc4], edx
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_10
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_20:
	movzx eax, word [ebp-0xcc]
	mov ecx, [ebp+0xc]
	mov [edi+ecx*2+0xe30], ax
	mov edx, [ebp-0xc4]
	xor edx, 0x2
	movzx eax, word [edi+edx*2+0xea4]
	cmp [ebp-0xcc], eax
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_40
	mov edx, [ebp-0xc4]
	xor edx, 0x1
	lea esi, [edx+0x3a]
	movzx eax, word [edi+esi*2+0xe30]
	cmp [ebp-0xcc], eax
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_50
	shl edx, 0x6
	lea ebx, [edx+edi+0x80]
	mov [esp+0x4], ebx
	shl dword [ebp-0xc8], 0x6
	mov edx, [ebp-0xc8]
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	call _Z17MatrixTranspose44PKfPf
	movzx ecx, word [ebp-0xcc]
	mov [edi+esi*2+0xe30], cx
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	mov [esp], ebx
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_70:
	call _Z15MatrixInverse44PKfPf
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_60:
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
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_30:
	jmp dword [eax*4+_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_jumptab_0]
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_10:
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
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_40:
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	shl edx, 0x6
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	call _Z17MatrixTranspose44PKfPf
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_60
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_50:
	mov eax, [ebp-0xc4]
	shl eax, 0x6
	lea eax, [eax+edi+0x80]
	mov [esp+0x4], eax
	shl edx, 0x6
	lea eax, [edx+edi+0x80]
	mov [esp], eax
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_70
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_260:
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
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
	movzx eax, word [edi+0xee6]
	mov [edi+0xeac], ax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_320:
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
	call _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_90
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
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
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
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
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
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_310:
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
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
	movzx eax, word [edi+0xef0]
	mov [edi+0xed4], ax
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_300:
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
	jnz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_100
	movzx eax, word [edi+0xeec]
	cmp ax, [edi+0xec4]
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_110
	lea ebx, [edi+0x480]
	movzx eax, word [edi+0xee8]
	cmp ax, [edi+0xeb4]
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_120
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
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_130
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_250:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_230:
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	lea eax, [ebx+0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
	movzx eax, word [edi+0xeec]
	mov [edi+0xec4], ax
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_210:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x78]
	mov [esp], eax
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_160:
	movzx eax, word [edi+0xeee]
	mov [edi+0xecc], ax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_290:
	lea edx, [edi+0xcb0]
	lea ebx, [edi+0x480]
	cmp dword [edi+0xf10], 0x2
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_140
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
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_190:
	lea eax, [ebx+0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [edi+0xef4]
	mov [esp], eax
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
	movzx eax, word [edi+0xeec]
	mov [edi+0xec4], ax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_280:
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	movzx eax, word [edi+0xeea]
	mov [edi+0xebc], ax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_270:
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
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_150
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_200:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
	mov [esp], edi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_100:
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_160
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_140:
	movzx eax, word [edi+0xee8]
	cmp ax, [edi+0xeb4]
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_170
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
	jz _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_180
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_240:
	movzx eax, word [edi+0xee8]
	mov [edi+0xeb4], ax
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_220:
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_190
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_150:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_200
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_110:
	lea ebx, [edi+0x480]
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_210
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_170:
	lea ecx, [edi+0x280]
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_220
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_120:
	lea ecx, [edi+0x280]
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_230
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_180:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_240
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_130:
	mov eax, [edx+0x134]
	mov [ecx+0x38], eax
	jmp _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_250
	
	
_Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_jumptab_0:
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_260
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_270
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_280
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_290
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_300
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_310
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_80
	dd _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj_320


;R_SetMeshStream(GfxCmdBufState*, GfxMeshData*)
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData:
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
	jz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_10
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_30:
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
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_40:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_20
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_50:
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
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_60:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_10:
	mov edx, [ebx+0x14]
	test edx, edx
	jnz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_30
	cmp esi, [ebx+0xc]
	jnz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_30
	jmp _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_40
_Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_20:
	mov eax, [ebx+0x20]
	test eax, eax
	jnz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_50
	mov eax, [ebx+0x18]
	test eax, eax
	jnz _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_50
	jmp _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData_60
	nop


;R_DisableSampler(GfxCmdBufState*, unsigned int)
_Z16R_DisableSamplerP14GfxCmdBufStatej:
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
_Z16R_UpdateViewportP20GfxCmdBufSourceStateP11GfxViewport:
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
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId:
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
	jg _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_10
	mov edi, [ebp+0x10]
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_100:
	cmp edi, [esi+0xa04]
	jz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_20
	lea eax, [edi+edi*4]
	mov edx, gfxRenderTargets
	mov eax, [edx+eax*4]
	test eax, eax
	jz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_30
	mov edi, vidConfig
	mov ebx, [edi+0x28]
	test ebx, ebx
	jnz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_40
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_80:
	mov edi, gfxRenderTargets
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_110:
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
	jz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_50
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
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_50:
	mov ecx, [ebx+0x8]
	lea eax, [edx+edx*4]
	cmp [edi+eax*4+0x8], ecx
	jz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_60
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x4], ecx
	mov [esp], edx
	call dword [eax+0x9c]
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_60:
	mov edi, [ebp+0x10]
	mov [esi+0xa04], edi
	mov eax, [ebp-0x1c]
	mov dword [eax+0xf38], 0x0
	mov byte [eax+0xf70], 0x1
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_40:
	mov edx, [ebp+0xc]
	xor ecx, ecx
	xor ebx, ebx
	add eax, 0x4
	mov [ebp-0x24], eax
	jmp _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_70
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_90:
	add ecx, 0x1
	add edx, 0x4
	add ebx, 0x38
	mov edi, vidConfig
	cmp ecx, [edi+0x28]
	jae _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_80
	mov eax, [ebp-0x24]
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_70:
	cmp [edx+0x50], eax
	jnz _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_90
	mov dword [edx+0x50], 0x0
	mov edi, [esi+0x90]
	mov eax, [edi+0x3a0]
	add eax, ebx
	mov [ebp-0x2c], eax
	mov dword [eax], 0x0
	jmp _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_90
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_10:
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z33RB_PixelCost_OverrideRenderTarget17GfxRenderTargetId
	mov [ebp+0x10], eax
	mov edi, eax
	jmp _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_100
_Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_30:
	mov edi, edx
	jmp _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId_110
	nop
	add [eax], al


;R_SetSamplerState(GfxCmdBufState*, unsigned int, unsigned char)
_Z17R_SetSamplerStateP14GfxCmdBufStatejh:
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
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_10
	mov [ecx+ebx], dl
	movzx edx, dl
	mov eax, edx
	and eax, 0x1f
	mov esi, [eax*4+s_decodeSamplerFilterState]
	or esi, 0x1500000
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
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_10
	mov edi, [ecx+0x90]
	xor eax, esi
	mov [ebp-0x10], eax
	test ah, 0xf
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_20
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
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_30
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_20:
	test word [ebp-0x10], 0xf000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_40
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_180:
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
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_50
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_40:
	cmp byte [ebp-0x10], 0x0
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_60
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_190:
	mov ecx, esi
	and ecx, 0xff
	cmp ecx, 0x1
	jle _Z17R_SetSamplerStateP14GfxCmdBufStatejh_70
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	mov [eax+0x28], ecx
	cmp ebx, 0xffffffff
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_80
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_60:
	mov [ebp-0x14], esi
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_200:
	test dword [ebp-0x10], 0xf0000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_90
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
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_100
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_90:
	test dword [ebp-0x10], 0x3f00000
	jnz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_110
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_160:
	mov edx, [ebp-0x14]
	mov eax, [ebp+0x8]
	mov [eax+ebx*4+0x10], edx
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_110:
	test dword [ebp-0x10], 0x300000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_120
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0x300000
	shr eax, 0x14
	mov [edx+0x4], eax
	cmp ebx, 0xffffffff
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_130
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_120:
	test dword [ebp-0x10], 0xc00000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_140
	lea eax, [ebx*8]
	mov edx, ebx
	shl edx, 0x6
	sub edx, eax
	add edx, [edi+0x3a0]
	mov eax, esi
	and eax, 0xc00000
	shr eax, 0x16
	mov [edx+0x8], eax
	cmp ebx, 0xffffffff
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_150
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_140:
	test dword [ebp-0x10], 0x3000000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_160
	lea edx, [ebx*8]
	mov eax, ebx
	shl eax, 0x6
	sub eax, edx
	add eax, [edi+0x3a0]
	and esi, 0x3000000
	shr esi, 0x18
	mov [eax+0xc], esi
	cmp ebx, 0xffffffff
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_170
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edi+0x444], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_160
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_80:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_60
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_30:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test word [ebp-0x10], 0xf000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_40
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_180
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_50:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	cmp byte [ebp-0x10], 0x0
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_60
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_190
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_100:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	test dword [ebp-0x10], 0x3f00000
	jz _Z17R_SetSamplerStateP14GfxCmdBufStatejh_160
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_110
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_70:
	mov eax, esi
	and eax, 0xffffff00
	mov [ebp-0x14], eax
	movzx eax, byte [ebp-0x18]
	or [ebp-0x14], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_200
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_130:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_120
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_170:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_160
_Z17R_SetSamplerStateP14GfxCmdBufStatejh_150:
	mov ecx, [edi+0x2d4]
	mov eax, 0x1
	shl eax, cl
	sub eax, 0x1
	mov [edi+0x444], eax
	jmp _Z17R_SetSamplerStateP14GfxCmdBufStatejh_140
	nop


;R_ChangeDepthRange(GfxCmdBufState*, GfxDepthRangeType)
_Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [eax+0xcc], edx
	test edx, edx
	jnz _Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_10
	mov ecx, 0x3c800000
	mov [eax+0xd0], ecx
	mov esi, 0x3f800000
	test edx, edx
	jnz _Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_20
_Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_30:
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
_Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_10:
	xor ecx, ecx
	mov [eax+0xd0], ecx
	mov esi, 0x3f800000
	test edx, edx
	jz _Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_30
_Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_20:
	mov esi, 0x3c800000
	jmp _Z18R_ChangeDepthRangeP14GfxCmdBufState17GfxDepthRangeType_30


;R_SetCompleteState(IDirect3DDevice9*, unsigned int const*)
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj:
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
	jnz _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_10
	mov eax, [esi]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1b
	mov [esp], esi
	call dword [eax+0xe4]
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_50:
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
	jz _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_20
	mov edx, eax
	shr edx, 0x4
	js _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_30
	cvtsi2ss xmm0, edx
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_80:
	mov eax, r_polygonOffsetBias
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [_float_0_00001526]
	mov eax, r_polygonOffsetScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_70:
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	mov eax, gfxMetrics
	cmp byte [eax+0x25], 0x0
	jnz _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_40
	addss xmm1, xmm1
	movss [ebp-0x1c], xmm1
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_60:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xc3
	mov [esp], esi
	call dword [eax+0xe4]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z22R_ForceSetStencilStateP16IDirect3DDevice9j
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_10:
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
	jmp _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_50
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_40:
	mov edx, [esi]
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xaf
	mov [esp], esi
	call dword [edx+0xe4]
	jmp _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_60
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_20:
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, [eax+0xc]
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	jmp _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_70
_Z18R_SetCompleteStateP16IDirect3DDevice9PKj_30:
	shr eax, 0x5
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z18R_SetCompleteStateP16IDirect3DDevice9PKj_80


;R_SetViewportStruct(GfxCmdBufSourceState*, GfxViewport const*)
_Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport:
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
_Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii:
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
_Z20R_GetTextureFromCodeP20GfxCmdBufSourceStatejPh:
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
_Z20R_SetReflectionProbe16GfxCmdBufContextj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov eax, [eax+0xc4]
	test byte [eax+0xf], 0x1
	jz _Z20R_SetReflectionProbe16GfxCmdBufContextj_10
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
_Z20R_SetReflectionProbe16GfxCmdBufContextj_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;R_ClearScreenInternal(IDirect3DDevice9*, unsigned char, float const*, float, unsigned char, GfxViewport const*)
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport:
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
	jle _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_10
	mov eax, 0xffffffff
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_50:
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
	jle _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_20
	mov eax, 0xffffffff
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_80:
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
	jle _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_30
	mov edx, 0xffffffff
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_70:
	mov bl, dl
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [esi+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si edx, [ebp-0x2c]
	cmp edx, 0xfe
	jle _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_40
	mov eax, 0xffffffff
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_60:
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
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_10:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_50
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_40:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_60
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_70
_Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_20:
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	jmp _Z21R_ClearScreenInternalP16IDirect3DDevice9hPKffhPK11GfxViewport_80
	nop


;R_SetRenderTargetSize(GfxCmdBufSourceState*, GfxRenderTargetId)
_Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId:
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
	jle _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId_10
	mov [esp], ebx
	call _Z33RB_PixelCost_OverrideRenderTarget17GfxRenderTargetId
	cmp ebx, eax
	setnz byte [g_renderTargetIsOverridden]
	mov ebx, eax
_Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId_10:
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
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState:
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
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_10
	mov edx, [eax+0xf58]
	test edx, edx
	jnz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_20
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_50:
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0xf6c]
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, dword [eax+0xf68]
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_80:
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
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
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_30
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_130:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z17MatrixTranspose44PKfPf
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
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_40
	lea edx, [ebp-0x158]
	add eax, 0x40
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z17MatrixTranspose44PKfPf
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_20:
	mov ecx, [eax+0xf5c]
	test ecx, ecx
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_50
	cmp dword [eax+0xf38], 0x2
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_60
	mov eax, r_scaleViewport
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm1, xmm3
	jnz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_70
	jp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_70
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_60:
	cvtsi2ss xmm0, ecx
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, edx
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_80
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_10:
	mov ecx, [eax+0xf68]
	mov edx, [eax+0xf6c]
	cmp dword [eax+0xf38], 0x2
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_90
	mov eax, r_scaleViewport
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm1, xmm3
	jz _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_100
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_140:
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, ecx
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0x1
	jle _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_110
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_150:
	cvtsi2ss xmm0, eax
	movss [ebp-0x21c], xmm0
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_160:
	mulss xmm1, xmm2
	cvttss2si eax, xmm1
	cmp eax, 0x1
	jle _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_120
	cvtsi2ss xmm0, eax
	movss [ebp-0x220], xmm0
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_80
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_30:
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
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	lea eax, [ebp-0x1a8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xef4
	mov [esp], eax
	call _Z23MatrixTransformVector44PKfPA4_S_Pf
	lea esi, [ebp-0xd8]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x218]
	mov [esp], eax
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_130
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_40:
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
	call _Z17MatrixTranspose44PKfPf
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_100:
	jp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_140
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_90:
	cvtsi2ss xmm0, edx
	movss [ebp-0x220], xmm0
	cvtsi2ss xmm0, ecx
	movss [ebp-0x21c], xmm0
	movss xmm0, dword [ebp-0x220]
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_80
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_70:
	cvtsi2ss xmm2, ecx
	cvtsi2ss xmm0, edx
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	cmp eax, 0x1
	jg _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_150
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_110:
	movss [ebp-0x21c], xmm3
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_160
_Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_120:
	movss [ebp-0x220], xmm3
	movaps xmm0, xmm3
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState_80
	nop


;R_DrawIndexedPrimitive(GfxCmdBufPrimState*, GfxDrawPrimArgs const*)
_Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs:
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
_Z22R_ForceSetStencilStateP16IDirect3DDevice9j:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	test bl, 0x40
	jnz _Z22R_ForceSetStencilStateP16IDirect3DDevice9j_10
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
_Z22R_ForceSetStencilStateP16IDirect3DDevice9j_10:
	mov eax, [esi]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call dword [eax+0xe4]
	test bl, bl
	jns _Z22R_ForceSetStencilStateP16IDirect3DDevice9j_20
_Z22R_ForceSetStencilStateP16IDirect3DDevice9j_30:
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
_Z22R_ForceSetStencilStateP16IDirect3DDevice9j_20:
	mov eax, ebx
	and eax, 0xfffff
	and ebx, 0xfff00
	shl ebx, 0xc
	or ebx, eax
	jmp _Z22R_ForceSetStencilStateP16IDirect3DDevice9j_30
	nop


;R_TextureFromCodeError(GfxCmdBufSourceState*, unsigned int)
_Z22R_TextureFromCodeErrorP20GfxCmdBufSourceStatej:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov edx, rg
	mov eax, [edx+eax*4+0x2270]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tried_to_use_s_w
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	leave
	ret


;R_ChangeObjectPlacement(GfxCmdBufSourceState*, GfxScaledPlacement const*)
_Z23R_ChangeObjectPlacementP20GfxCmdBufSourceStatePK18GfxScaledPlacement:
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
	call _Z14UnitQuatToAxisPKfPA3_f
	mov [esp], esi
	call _Z22R_GetActiveWorldMatrixP20GfxCmdBufSourceState
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
	call _Z11MatrixSet44PA4_fPKfPA3_S1_f
	mov [esp], esi
	call _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
	mov [esi+0xf08], ebx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_ClearAllStreamSources(GfxCmdBufPrimState*)
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_10
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_30:
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
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_40:
	mov ecx, [ebx+0x1c]
	test ecx, ecx
	jz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_20
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_50:
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
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_60:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_10:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_30
	mov eax, [ebx+0xc]
	test eax, eax
	jz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_40
	jmp _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_30
_Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_20:
	mov edx, [ebx+0x20]
	test edx, edx
	jnz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_50
	mov eax, [ebx+0x18]
	test eax, eax
	jnz _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_50
	jmp _Z23R_ClearAllStreamSourcesP18GfxCmdBufPrimState_60
	nop


;R_OverrideGrayscaleImage(dvar_s const*)
_Z24R_OverrideGrayscaleImagePK6dvar_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	cmp eax, 0x2
	jz _Z24R_OverrideGrayscaleImagePK6dvar_s_10
	test eax, eax
	jz _Z24R_OverrideGrayscaleImagePK6dvar_s_20
	mov eax, rgp
	mov eax, [eax+0x2018]
	pop ebp
	ret
_Z24R_OverrideGrayscaleImagePK6dvar_s_20:
	mov eax, rgp
	mov eax, [eax+0x200c]
	pop ebp
	ret
_Z24R_OverrideGrayscaleImagePK6dvar_s_10:
	mov eax, rgp
	mov eax, [eax+0x2008]
	pop ebp
	ret
	nop


;R_SetInitialContextState(IDirect3DDevice9*)
_Z24R_SetInitialContextStateP16IDirect3DDevice9:
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
_Z25R_ChangeDepthHackNearClipP20GfxCmdBufSourceStatej:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp [edx+0xf10], ecx
	jz _Z25R_ChangeDepthHackNearClipP20GfxCmdBufSourceStatej_10
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
	jmp _Z22R_DeriveOpenGLMatricesP20GfxCmdBufSourceState
_Z25R_ChangeDepthHackNearClipP20GfxCmdBufSourceStatej_10:
	leave
	ret


;R_SetAlphaAntiAliasingState(IDirect3DDevice9*, int)
_Z27R_SetAlphaAntiAliasingStateP16IDirect3DDevice9i:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	test dword [ebp+0xc], 0xf00
	jnz _Z27R_SetAlphaAntiAliasingStateP16IDirect3DDevice9i_10
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
_Z27R_SetAlphaAntiAliasingStateP16IDirect3DDevice9i_10:
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
s_mipFilterTable: dd 0x0, 0x1, 0x2, 0x0, 0x2, 0x2, 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0
shadowmapClearColor: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000


;Zero initialized global or static variables of r_state:
SECTION .bss
g_renderTargetIsOverridden: resb 0x20
s_decodeSamplerFilterState: resb 0x60
s_manualObjectPlacement: resb 0x20


;All cstrings:
SECTION .rdata
_cstring_tried_to_use_s_w:		db "Tried to use ",27h,"%s",27h," when it isn",27h,"t valid",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00001526:		dd 0x37800000	; 1.52588e-05
_float_255_00000000:		dd 0x437f0000	; 255

