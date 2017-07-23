;Imports of rb_state:
	extern RB_InitCodeImages
	extern rgp
	extern R_SetSampler
	extern memset
	extern R_InitCmdBufSourceState
	extern dx_ctx
	extern R_SetInitialContextState
	extern R_SetTexFilter
	extern R_InitCmdBufState
	extern vidConfig
	extern R_SetRenderTargetSize
	extern R_SetRenderTarget
	extern R_DisableSampler

;Exports of rb_state:
	global RB_InitImages
	global RB_SetInitialState
	global RB_UnbindAllImages
	global RB_BindDefaultImages
	global RB_InitSceneViewport
	global gfxCmdBufContext
	global gfxCmdBufInput
	global gfxCmdBufSourceState
	global gfxCmdBufState


SECTION .text


;RB_InitImages()
RB_InitImages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call RB_InitCodeImages
	xor edi, edi
RB_InitImages_10:
	mov edx, rgp
	mov eax, [edx+0x2008]
	mov esi, gfxCmdBufState
	mov ebx, gfxCmdBufSourceState
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetSampler
	add edi, 0x1
	cmp edi, 0x10
	jnz RB_InitImages_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_SetInitialState()
RB_SetInitialState:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x430
	mov dword [esp+0x4], 0x0
	mov dword [esp], gfxCmdBufInput
	call memset
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], gfxCmdBufInput
	mov dword [esp], gfxCmdBufSourceState
	call R_InitCmdBufSourceState
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov [gfxCmdBufState+0x90], eax
	mov [esp], eax
	call R_SetInitialContextState
	call R_SetTexFilter
	mov dword [esp], gfxCmdBufState
	call R_InitCmdBufState
	mov dword [gfxCmdBufSourceState+0xf50], 0x0
	mov dword [gfxCmdBufSourceState+0xf54], 0x0
	mov edx, vidConfig
	mov eax, [edx+0x8]
	mov [gfxCmdBufSourceState+0xf58], eax
	mov eax, [edx+0xc]
	mov [gfxCmdBufSourceState+0xf5c], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], gfxCmdBufSourceState
	call R_SetRenderTargetSize
	mov dword [esp+0x8], 0x1
	mov eax, [gfxCmdBufContext]
	mov edx, [gfxCmdBufContext+0x4]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	leave
	ret
	nop


;RB_UnbindAllImages()
RB_UnbindAllImages:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	test edx, edx
	jz RB_UnbindAllImages_10
	cmp byte [eax+0x2c6c], 0x0
	jnz RB_UnbindAllImages_10
	mov eax, vidConfig
	mov eax, [eax+0x28]
	test eax, eax
	jnz RB_UnbindAllImages_20
RB_UnbindAllImages_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_UnbindAllImages_20:
	xor ebx, ebx
RB_UnbindAllImages_30:
	mov [esp+0x4], ebx
	mov dword [esp], gfxCmdBufState
	call R_DisableSampler
	add ebx, 0x1
	mov eax, vidConfig
	cmp ebx, [eax+0x28]
	jb RB_UnbindAllImages_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;RB_BindDefaultImages()
RB_BindDefaultImages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor edi, edi
RB_BindDefaultImages_10:
	mov edx, rgp
	mov eax, [edx+0x2008]
	mov esi, gfxCmdBufState
	mov ebx, gfxCmdBufSourceState
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetSampler
	add edi, 0x1
	cmp edi, 0x10
	jnz RB_BindDefaultImages_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_InitSceneViewport()
RB_InitSceneViewport:
	push ebp
	mov ebp, esp
	mov dword [gfxCmdBufSourceState+0xf50], 0x0
	mov dword [gfxCmdBufSourceState+0xf54], 0x0
	mov eax, vidConfig
	mov edx, [eax+0x8]
	mov [gfxCmdBufSourceState+0xf58], edx
	mov eax, [eax+0xc]
	mov [gfxCmdBufSourceState+0xf5c], eax
	pop ebp
	ret
	nop


;Initialized global or static variables of rb_state:
SECTION .data


;Initialized constant data of rb_state:
SECTION .rdata
gfxCmdBufContext: dd gfxCmdBufSourceState, gfxCmdBufState, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of rb_state:
SECTION .bss
gfxCmdBufInput: resb 0x444
gfxCmdBufSourceState: resb 0xf80
gfxCmdBufState: resb 0xa20


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

