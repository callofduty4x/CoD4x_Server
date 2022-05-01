;Imports of rb_shadowcookie:
	extern tess
	extern _Z17RB_EndTessSurfacev
	extern gfxCmdBufSourceState
	extern gfxRenderTargets
	extern gfxCmdBufContext
	extern _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	extern _Z7R_Set2DP20GfxCmdBufSourceState
	extern rgp
	extern _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern gfxCmdBufState
	extern memcpy
	extern memset
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	extern _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
	extern _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	extern _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
	extern _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	extern sc_blur
	extern _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	extern colorWhite
	extern _Z16MatrixIdentity44PA4_f
	extern vidConfig
	extern _Z21R_ConvertColorToBytesPKfPh

;Exports of rb_shadowcookie:
	global _Z17RB_BlurShadowPassff
	global _Z20RB_DrawShadowCookiesPK11GfxViewInfo
	global _Z22RB_ShadowCookieOverlayv


SECTION .text


;RB_BlurShadowPass(float, float)
_Z17RB_BlurShadowPassff:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	movss [ebp-0x14], xmm0
	movss [ebp-0x18], xmm1
	mov eax, tess
	mov eax, [eax+0x22a948]
	test eax, eax
	jz _Z17RB_BlurShadowPassff_10
	call _Z17RB_EndTessSurfacev
_Z17RB_BlurShadowPassff_10:
	mov ebx, gfxCmdBufSourceState
	cvtsi2ss xmm0, dword [ebx+0xf68]
	movss [ebp-0x10], xmm0
	cvtsi2ss xmm1, dword [ebx+0xf6c]
	movss [ebp-0xc], xmm1
	mov eax, gfxRenderTargets
	mov esi, [eax+0xc8]
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], esi
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z9R_Resolve16GfxCmdBufContextP8GfxImage
	mov [ebx+0xc44], esi
	mov [esp], ebx
	call _Z7R_Set2DP20GfxCmdBufSourceState
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	movss xmm0, dword [ebp-0x18]
	movss [esp+0x20], xmm0
	movss [esp+0x1c], xmm0
	movss xmm1, dword [ebp-0x14]
	movss [esp+0x18], xmm1
	movss [esp+0x14], xmm1
	movss xmm0, dword [_float_2_00000000]
	movss xmm1, dword [ebp-0xc]
	subss xmm1, xmm0
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp-0x10]
	subss xmm1, xmm0
	movss [esp+0xc], xmm1
	mov eax, 0x3f800000
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x2054]
	mov [esp], eax
	call _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp _Z17RB_EndTessSurfacev


;RB_DrawShadowCookies(GfxViewInfo const*)
_Z20RB_DrawShadowCookiesPK11GfxViewInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp+0x4], _cstring_shadow_cookies
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	add eax, 0x6380
	mov [esp+0x4], eax
	mov esi, gfxCmdBufSourceState
	mov [esp], esi
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
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
	mov eax, [ebp+0x8]
	add eax, 0x190
	mov [ebp-0x34], eax
	mov eax, 0x3f000000
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp-0x34]
	mov eax, [edx+0x1200]
	test eax, eax
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_10
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	mov ecx, [ebp+0x8]
	add ecx, 0x140
	mov [ebp-0x40], ecx
	mov edi, edx
	mov [ebp-0x3c], ebx
	jmp _Z20RB_DrawShadowCookiesPK11GfxViewInfo_20
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_40:
	add dword [ebp-0x30], 0x1
	add edi, 0xc0
	mov ecx, [ebp-0x30]
	mov edx, [ebp-0x34]
	cmp ecx, [edx+0x1200]
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_30
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_20:
	mov eax, [edi+0x90]
	mov [ebp-0x38], eax
	mov eax, [edi+0x68]
	test eax, eax
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_40
	mov dword [esp+0x4], 0x9
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov ecx, gfxCmdBufContext
	mov edx, [ecx]
	mov ecx, [ecx+0x4]
	mov [ebp-0x50], edx
	mov [ebp-0x4c], ecx
	mov dword [esp+0x8], 0x9
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	mov eax, [edi+0x58]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x40]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
	mov dword [esp+0x10], 0x7e
	mov dword [esp+0xc], 0x7e
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	mov ebx, [edi+0x5c]
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
	mov dword [esi+0x900], 0x0
	mov dword [esi+0x904], 0x0
	mov dword [esi+0x908], 0x0
	mov [esi+0x90c], ebx
	add word [esi+0xe40], 0x1
	lea eax, [edi+0x64]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z19R_SetViewportValuesP20GfxCmdBufSourceStateiiii
	mov eax, sc_blur
	mov eax, [eax]
	cmp dword [eax+0xc], 0x0
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_50
	jg _Z20RB_DrawShadowCookiesPK11GfxViewInfo_60
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_50:
	mov dword [esp+0x4], 0x6
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov ecx, gfxCmdBufContext
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov dword [esp+0x8], 0x6
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_70
	mov eax, [ebp+0x8]
	cmp byte [eax+0x13a8], 0x0
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_80
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_100:
	mov dword [ebp-0x2c], 0x0
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_70:
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11R_BeginViewP20GfxCmdBufSourceStatePK11GfxSceneDefPK12GfxViewParms
	mov eax, [ebp+0x8]
	add eax, 0x154
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	mov ecx, [ebp-0x38]
	test ecx, ecx
	jz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_40
	mov eax, gfxCmdBufContext
	mov edx, [eax]
	mov ecx, [eax+0x4]
	lea eax, [edi+0x8c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	add dword [ebp-0x30], 0x1
	add edi, 0xc0
	mov ecx, [ebp-0x30]
	mov edx, [ebp-0x34]
	cmp ecx, [edx+0x1200]
	jnz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_20
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_30:
	mov edx, [ebp-0x2c]
	test edx, edx
	jnz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_10
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_90:
	mov eax, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], eax
	mov [esp], eax
	call memcpy
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_10:
	mov dword [esp+0x4], 0x6
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x6
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov eax, [ebp+0x8]
	cmp byte [eax+0x13a8], 0x0
	jnz _Z20RB_DrawShadowCookiesPK11GfxViewInfo_90
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufState
	mov eax, [eax+0x90]
	mov [esp], eax
	call _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	mov eax, gfxCmdBufState
	mov dword [esp+0x8], 0xa10
	mov [esp+0x4], eax
	mov [esp], eax
	call memcpy
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_80:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call _Z13R_ClearScreenP16IDirect3DDevice9hPKffhPK11GfxViewport
	jmp _Z20RB_DrawShadowCookiesPK11GfxViewInfo_100
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_60:
	xor ebx, ebx
_Z20RB_DrawShadowCookiesPK11GfxViewInfo_110:
	movss xmm1, dword [_float_0_99609375]
	movss xmm0, dword [_float_0_01171875]
	call _Z17RB_BlurShadowPassff
	movss xmm1, dword [_float_0_98828125]
	movss xmm0, dword [_float_0_00390625]
	call _Z17RB_BlurShadowPassff
	add ebx, 0x1
	mov edx, sc_blur
	mov eax, [edx]
	cmp [eax+0xc], ebx
	jg _Z20RB_DrawShadowCookiesPK11GfxViewInfo_110
	jmp _Z20RB_DrawShadowCookiesPK11GfxViewInfo_50


;RB_ShadowCookieOverlay()
_Z22RB_ShadowCookieOverlayv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call _Z16MatrixIdentity44PA4_f
	mov eax, vidConfig
	mov edx, [eax+0x8]
	test edx, edx
	js _Z22RB_ShadowCookieOverlayv_10
	cvtsi2ss xmm0, edx
_Z22RB_ShadowCookieOverlayv_20:
	mulss xmm0, [_float_0_25000000]
	movss [ebp-0x6c], xmm0
	mov [esp+0x4], ebx
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call _Z23R_SetShadowLookupMatrixP20GfxCmdBufSourceStatePK9GfxMatrix
	xor esi, esi
	mov [ebx+0x900], esi
	mov [ebx+0x904], esi
	mov [ebx+0x908], esi
	mov edi, 0x3f800000
	mov [ebx+0x90c], edi
	add word [ebx+0xe40], 0x1
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, colorWhite
	mov [esp], eax
	call _Z21R_ConvertColorToBytesPKfPh
	mov dword [esp+0x28], 0x7
	mov eax, [ebp-0x1c]
	mov [esp+0x24], eax
	mov [esp+0x20], edi
	mov [esp+0x1c], edi
	mov [esp+0x18], esi
	mov [esp+0x14], esi
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	mov eax, 0x40800000
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, rgp
	mov eax, [eax+0x2050]
	mov [esp], eax
	call _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	call _Z17RB_EndTessSurfacev
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22RB_ShadowCookieOverlayv_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z22RB_ShadowCookieOverlayv_20
	nop


;Initialized global or static variables of rb_shadowcookie:
SECTION .data


;Initialized constant data of rb_shadowcookie:
SECTION .rdata


;Zero initialized global or static variables of rb_shadowcookie:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_shadow_cookies:		db "Shadow cookies",0



;All constant floats and doubles:
SECTION .rdata
_float_2_00000000:		dd 0x40000000	; 2
_float_0_99609375:		dd 0x3f7f0000	; 0.996094
_float_0_01171875:		dd 0x3c400000	; 0.0117188
_float_0_98828125:		dd 0x3f7d0000	; 0.988281
_float_0_00390625:		dd 0x3b800000	; 0.00390625
_float_0_25000000:		dd 0x3e800000	; 0.25

