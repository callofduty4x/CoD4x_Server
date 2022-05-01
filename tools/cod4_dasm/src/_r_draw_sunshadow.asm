;Imports of r_draw_sunshadow:
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _ZN10MacDisplay10Is1900CardEv
	extern _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	extern shadowmapClearColor
	extern _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern r_rendererInUse
	extern gfxMetrics
	extern sm_polygonOffsetScale
	extern sm_polygonOffsetBias
	extern _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	extern _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_

;Exports of r_draw_sunshadow:
	global _Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1_
	global _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf


SECTION .text


;R_DrawSunShadowMapCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
_Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov ecx, [ebp+0x10]
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0xd
	mov [esp], eax
	mov [esp+0x4], ecx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x140]
	test eax, eax
	jz _Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1__10
	mov ecx, ebx
_Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1__20:
	mov ecx, [ecx+0x150]
	mov [ebp-0x30], ecx
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14c]
	mov ebx, [ebx+0x148]
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov edx, [ebp+0x8]
	imul eax, [edx+0x140]
	add ebx, eax
	mov eax, [edx+0x144]
	mov ecx, [ebp-0x2c]
	mov esi, [ecx+0x90]
	mov [ebp-0x28], eax
	mov [ebp-0x24], ebx
	add edi, eax
	mov [ebp-0x20], edi
	mov eax, [ebp-0x30]
	add eax, ebx
	mov [ebp-0x1c], eax
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
	mov ebx, [ebp+0xc]
	mov [ebp-0x38], ebx
	mov eax, [ebp+0x10]
	mov [ebp-0x34], eax
	mov eax, [ebp+0x8]
	add eax, 0x154
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x38]
	mov ecx, [ebp-0x34]
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x90]
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
_Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1__10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov eax, shadowmapClearColor
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	mov ecx, [ebp+0x8]
	jmp _Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1__20
	nop


;R_DrawSunShadowMap(GfxViewInfo const*, unsigned int, GfxCmdBuf*)
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfac
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	add eax, 0x6380
	mov [esp+0x4], eax
	lea eax, [ebp-0xf98]
	mov [esp], eax
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov dword [esp+0x4], 0xd
	lea edx, [ebp-0xf98]
	mov [esp], edx
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, [ebp+0xc]
	shl eax, 0x9
	mov edx, [ebp+0x8]
	lea edi, [eax+edx+0x5730]
	movss xmm1, dword [edi+0x68]
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jnz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_10
	mov eax, gfxMetrics
	cmp dword [eax+0x20], 0x3
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_20
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_10:
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm0, dword [_float_0_25000000]
	mulss xmm0, [eax+0xc]
	mulss xmm0, xmm1
	ucomiss xmm0, [ebp-0x688]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_30
	jnz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_30
	lea edx, [ebp-0x684]
	ucomiss xmm2, [ebp-0x684]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_40
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_50
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_40:
	lea eax, [ebp-0x680]
	lea ecx, [ebp-0x67c]
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_60
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_30:
	lea edx, [ebp-0x684]
	lea eax, [ebp-0x680]
	lea ecx, [ebp-0x67c]
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_60:
	movss [ebp-0x688], xmm0
	movss [edx], xmm2
	mov dword [eax], 0x0
	mov dword [ecx], 0x0
	add word [ebp-0x156], 0x1
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_80:
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb esi, esi
	and esi, 0x200
	add esi, 0x200
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb ebx, ebx
	and ebx, 0x200
	add ebx, 0x200
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb eax, eax
	and eax, 0x200
	add eax, 0x200
	mov [esp+0x10], esi
	mov [esp+0xc], ebx
	imul eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xf98]
	mov [esp], eax
	call _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	lea eax, [edi+0x154]
	mov [esp+0x10], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	lea eax, [ebp-0xf98]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _Z26R_DrawSunShadowMapCallbackPKv16GfxCmdBufContextS1_
	call _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
	add esp, 0xfac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_50:
	lea eax, [ebp-0x680]
	pxor xmm1, xmm1
	ucomiss xmm1, [ebp-0x680]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_70
	jnz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_70
	lea ecx, [ebp-0x67c]
	ucomiss xmm1, [ebp-0x67c]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_60
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_80
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_60
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_20:
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm0, dword [_float_4_00000000]
	mulss xmm0, [eax+0xc]
	mulss xmm0, xmm1
	ucomiss xmm0, [ebp-0x688]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_90
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_100
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_90:
	lea edx, [ebp-0x684]
	lea eax, [ebp-0x680]
	lea ecx, [ebp-0x67c]
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_140:
	movss [ebp-0x688], xmm0
	mov dword [edx], 0x0
	mov dword [eax], 0x0
	mov dword [ecx], 0x0
	add word [ebp-0x156], 0x1
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_80
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_70:
	lea ecx, [ebp-0x67c]
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_60
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_100:
	lea edx, [ebp-0x684]
	pxor xmm1, xmm1
	ucomiss xmm1, [ebp-0x684]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_110
	jnz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_110
	lea eax, [ebp-0x680]
	ucomiss xmm1, [ebp-0x680]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_120
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_130
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_120:
	lea ecx, [ebp-0x67c]
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_140
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_110:
	lea eax, [ebp-0x680]
	lea ecx, [ebp-0x67c]
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_140
_Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_130:
	lea ecx, [ebp-0x67c]
	ucomiss xmm1, [ebp-0x67c]
	jp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_140
	jz _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_80
	jmp _Z18R_DrawSunShadowMapPK11GfxViewInfojP9GfxCmdBuf_140


;Initialized global or static variables of r_draw_sunshadow:
SECTION .data


;Initialized constant data of r_draw_sunshadow:
SECTION .rdata


;Zero initialized global or static variables of r_draw_sunshadow:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_4_00000000:		dd 0x40800000	; 4

