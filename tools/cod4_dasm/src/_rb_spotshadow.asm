;Imports of rb_spotshadow:
	extern R_SetRenderTarget
	extern gfxMetrics
	extern rgp
	extern R_DrawQuadMesh
	extern R_DrawSurfs
	extern shadowmapClearColor
	extern R_ClearScreen
	extern pixelCostMode
	extern R_InitContext
	extern PIXBeginNamedEvent
	extern R_InitCmdBufSourceState
	extern R_SetRenderTargetSize
	extern sm_polygonOffsetScale
	extern sm_polygonOffsetBias
	extern R_SetViewportValues
	extern R_DrawCall

;Exports of rb_spotshadow:
	global R_DrawSpotShadowMapCallback
	global RB_SpotShadowMaps


SECTION .text


;R_DrawSpotShadowMapCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawSpotShadowMapCallback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [ebp-0x1c], esi
	mov ecx, [edi+0x1c8]
	mov [esp+0x8], ecx
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetRenderTarget
	mov eax, [edi+0x1dc]
	test eax, eax
	jnz R_DrawSpotShadowMapCallback_10
R_DrawSpotShadowMapCallback_30:
	mov eax, gfxMetrics
	cmp byte [eax+0x14], 0x0
	jnz R_DrawSpotShadowMapCallback_20
	mov eax, [edi+0x1e0]
	mov edx, rgp
	mov edx, [edx+0x204c]
	mov [ebp-0x30], ebx
	mov [ebp-0x2c], esi
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x2c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawQuadMesh
R_DrawSpotShadowMapCallback_20:
	mov [ebp-0x28], ebx
	mov [ebp-0x24], esi
	lea eax, [edi+0x18c]
	mov [ebp+0x14], eax
	mov dword [ebp+0x10], 0x0
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [ebp+0x8], eax
	mov [ebp+0xc], edx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_DrawSurfs
R_DrawSpotShadowMapCallback_10:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov eax, shadowmapClearColor
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call R_ClearScreen
	jmp R_DrawSpotShadowMapCallback_30
	nop


;RB_SpotShadowMaps(GfxBackEndData const*, GfxViewInfo const*)
RB_SpotShadowMaps:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfbc
	mov eax, pixelCostMode
	mov ecx, [eax]
	test ecx, ecx
	jz RB_SpotShadowMaps_10
RB_SpotShadowMaps_20:
	add esp, 0xfbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_SpotShadowMaps_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_InitContext
	mov dword [esp+0x4], _cstring_spot_shadow_maps
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	add eax, 0x6380
	mov [esp+0x4], eax
	lea esi, [ebp-0xfa8]
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov eax, [ebp+0xc]
	mov edx, [eax+0x5b30]
	test edx, edx
	jz RB_SpotShadowMaps_20
	xor edi, edi
	mov ebx, eax
	add ebx, 0x5b40
RB_SpotShadowMaps_50:
	mov eax, [ebx+0x1c8]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetRenderTargetSize
	mov eax, sm_polygonOffsetScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mov eax, sm_polygonOffsetBias
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_25000000]
	ucomiss xmm0, [ebp-0x698]
	jnz RB_SpotShadowMaps_30
	jp RB_SpotShadowMaps_30
	ucomiss xmm1, [ebp-0x694]
	jnz RB_SpotShadowMaps_30
	jp RB_SpotShadowMaps_30
	pxor xmm2, xmm2
	ucomiss xmm2, [ebp-0x690]
	jnz RB_SpotShadowMaps_30
	jp RB_SpotShadowMaps_30
	ucomiss xmm2, [ebp-0x68c]
	jp RB_SpotShadowMaps_30
	jz RB_SpotShadowMaps_40
RB_SpotShadowMaps_30:
	movss [ebp-0x698], xmm0
	movss [ebp-0x694], xmm1
	mov dword [ebp-0x690], 0x0
	mov dword [ebp-0x68c], 0x0
	add word [ebp-0x166], 0x1
RB_SpotShadowMaps_40:
	mov eax, [ebx+0x1c0]
	mov [esp+0x10], eax
	mov eax, [ebx+0x1bc]
	mov [esp+0xc], eax
	mov eax, [ebx+0x1b8]
	mov [esp+0x8], eax
	mov eax, [ebx+0x1b4]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportValues
	mov dword [esp+0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	lea eax, [ebx+0x18c]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], R_DrawSpotShadowMapCallback
	call R_DrawCall
	add edi, 0x1
	add ebx, 0x1f0
	mov eax, [ebp+0xc]
	cmp edi, [eax+0x5b30]
	jb RB_SpotShadowMaps_50
	add esp, 0xfbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of rb_spotshadow:
SECTION .data


;Initialized constant data of rb_spotshadow:
SECTION .rdata


;Zero initialized global or static variables of rb_spotshadow:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_spot_shadow_maps:		db "Spot Shadow Maps",0



;All constant floats and doubles:
SECTION .rdata
_float_0_25000000:		dd 0x3e800000	; 0.25

