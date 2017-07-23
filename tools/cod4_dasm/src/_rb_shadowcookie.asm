;Imports of rb_shadowcookie:
	extern tess
	extern RB_EndTessSurface
	extern gfxCmdBufSourceState
	extern gfxRenderTargets
	extern gfxCmdBufContext
	extern R_Resolve
	extern R_Set2D
	extern rgp
	extern RB_DrawStretchPic
	extern PIXBeginNamedEvent
	extern R_InitCmdBufSourceState
	extern gfxCmdBufState
	extern memcpy
	extern memset
	extern R_SetRenderTargetSize
	extern R_SetRenderTarget
	extern R_ClearScreen
	extern R_BeginView
	extern R_SetViewportValues
	extern R_SetShadowLookupMatrix
	extern R_DrawSurfs
	extern sc_blur
	extern R_SetViewportStruct
	extern colorWhite
	extern MatrixIdentity44
	extern vidConfig
	extern R_ConvertColorToBytes

;Exports of rb_shadowcookie:
	global RB_BlurShadowPass
	global RB_DrawShadowCookies
	global RB_ShadowCookieOverlay


SECTION .text


;RB_BlurShadowPass(float, float)
RB_BlurShadowPass:
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
	jz RB_BlurShadowPass_10
	call RB_EndTessSurface
RB_BlurShadowPass_10:
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
	call R_Resolve
	mov [ebx+0xc44], esi
	mov [esp], ebx
	call R_Set2D
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
	call RB_DrawStretchPic
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	jmp RB_EndTessSurface


;RB_DrawShadowCookies(GfxViewInfo const*)
RB_DrawShadowCookies:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp+0x4], _cstring_shadow_cookies
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	add eax, 0x6380
	mov [esp+0x4], eax
	mov esi, gfxCmdBufSourceState
	mov [esp], esi
	call R_InitCmdBufSourceState
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
	jz RB_DrawShadowCookies_10
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	mov ecx, [ebp+0x8]
	add ecx, 0x140
	mov [ebp-0x40], ecx
	mov edi, edx
	mov [ebp-0x3c], ebx
	jmp RB_DrawShadowCookies_20
RB_DrawShadowCookies_40:
	add dword [ebp-0x30], 0x1
	add edi, 0xc0
	mov ecx, [ebp-0x30]
	mov edx, [ebp-0x34]
	cmp ecx, [edx+0x1200]
	jz RB_DrawShadowCookies_30
RB_DrawShadowCookies_20:
	mov eax, [edi+0x90]
	mov [ebp-0x38], eax
	mov eax, [edi+0x68]
	test eax, eax
	jz RB_DrawShadowCookies_40
	mov dword [esp+0x4], 0x9
	mov [esp], esi
	call R_SetRenderTargetSize
	mov ecx, gfxCmdBufContext
	mov edx, [ecx]
	mov ecx, [ecx+0x4]
	mov [ebp-0x50], edx
	mov [ebp-0x4c], ecx
	mov dword [esp+0x8], 0x9
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call R_ClearScreen
	mov eax, [edi+0x58]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x40]
	mov [esp+0x4], ecx
	mov [esp], esi
	call R_BeginView
	mov dword [esp+0x10], 0x7e
	mov dword [esp+0xc], 0x7e
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call R_SetViewportValues
	mov ebx, [edi+0x5c]
	mov [esp+0x4], edi
	mov [esp], esi
	call R_SetShadowLookupMatrix
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
	call R_DrawSurfs
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_SetViewportValues
	mov eax, sc_blur
	mov eax, [eax]
	cmp dword [eax+0xc], 0x0
	jz RB_DrawShadowCookies_50
	jg RB_DrawShadowCookies_60
RB_DrawShadowCookies_50:
	mov dword [esp+0x4], 0x6
	mov [esp], esi
	call R_SetRenderTargetSize
	mov ecx, gfxCmdBufContext
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov dword [esp+0x8], 0x6
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jz RB_DrawShadowCookies_70
	mov eax, [ebp+0x8]
	cmp byte [eax+0x13a8], 0x0
	jz RB_DrawShadowCookies_80
RB_DrawShadowCookies_100:
	mov dword [ebp-0x2c], 0x0
RB_DrawShadowCookies_70:
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_BeginView
	mov eax, [ebp+0x8]
	add eax, 0x154
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportStruct
	mov ecx, [ebp-0x38]
	test ecx, ecx
	jz RB_DrawShadowCookies_40
	mov eax, gfxCmdBufContext
	mov edx, [eax]
	mov ecx, [eax+0x4]
	lea eax, [edi+0x8c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_DrawSurfs
	add dword [ebp-0x30], 0x1
	add edi, 0xc0
	mov ecx, [ebp-0x30]
	mov edx, [ebp-0x34]
	cmp ecx, [edx+0x1200]
	jnz RB_DrawShadowCookies_20
RB_DrawShadowCookies_30:
	mov edx, [ebp-0x2c]
	test edx, edx
	jnz RB_DrawShadowCookies_10
RB_DrawShadowCookies_90:
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
RB_DrawShadowCookies_10:
	mov dword [esp+0x4], 0x6
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x6
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov eax, [ebp+0x8]
	cmp byte [eax+0x13a8], 0x0
	jnz RB_DrawShadowCookies_90
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufState
	mov eax, [eax+0x90]
	mov [esp], eax
	call R_ClearScreen
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
RB_DrawShadowCookies_80:
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov eax, colorWhite
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x90]
	mov [esp], eax
	call R_ClearScreen
	jmp RB_DrawShadowCookies_100
RB_DrawShadowCookies_60:
	xor ebx, ebx
RB_DrawShadowCookies_110:
	movss xmm1, dword [_float_0_99609375]
	movss xmm0, dword [_float_0_01171875]
	call RB_BlurShadowPass
	movss xmm1, dword [_float_0_98828125]
	movss xmm0, dword [_float_0_00390625]
	call RB_BlurShadowPass
	add ebx, 0x1
	mov edx, sc_blur
	mov eax, [edx]
	cmp [eax+0xc], ebx
	jg RB_DrawShadowCookies_110
	jmp RB_DrawShadowCookies_50


;RB_ShadowCookieOverlay()
RB_ShadowCookieOverlay:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call MatrixIdentity44
	mov eax, vidConfig
	mov edx, [eax+0x8]
	test edx, edx
	js RB_ShadowCookieOverlay_10
	cvtsi2ss xmm0, edx
RB_ShadowCookieOverlay_20:
	mulss xmm0, [_float_0_25000000]
	movss [ebp-0x6c], xmm0
	mov [esp+0x4], ebx
	mov ebx, gfxCmdBufSourceState
	mov [esp], ebx
	call R_SetShadowLookupMatrix
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
	call R_ConvertColorToBytes
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
	call RB_DrawStretchPic
	call RB_EndTessSurface
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_ShadowCookieOverlay_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp RB_ShadowCookieOverlay_20
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

