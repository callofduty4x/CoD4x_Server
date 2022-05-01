;Imports of rb_state:
	extern _Z17RB_InitCodeImagesv
	extern rgp
	extern _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	extern memset
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern dx_ctx
	extern _Z24R_SetInitialContextStateP16IDirect3DDevice9
	extern _Z14R_SetTexFilterv
	extern _Z17R_InitCmdBufStateP14GfxCmdBufState
	extern vidConfig
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z16R_DisableSamplerP14GfxCmdBufStatej

;Exports of rb_state:
	global _Z13RB_InitImagesv
	global _Z18RB_SetInitialStatev
	global _Z18RB_UnbindAllImagesv
	global _Z20RB_BindDefaultImagesv
	global _Z20RB_InitSceneViewportv
	global gfxCmdBufContext
	global gfxCmdBufInput
	global gfxCmdBufSourceState
	global gfxCmdBufState


SECTION .text


;RB_InitImages()
_Z13RB_InitImagesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	call _Z17RB_InitCodeImagesv
	xor edi, edi
_Z13RB_InitImagesv_10:
	mov edx, rgp
	mov eax, [edx+0x2008]
	mov esi, gfxCmdBufState
	mov ebx, gfxCmdBufSourceState
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add edi, 0x1
	cmp edi, 0x10
	jnz _Z13RB_InitImagesv_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_SetInitialState()
_Z18RB_SetInitialStatev:
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
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov [gfxCmdBufState+0x90], eax
	mov [esp], eax
	call _Z24R_SetInitialContextStateP16IDirect3DDevice9
	call _Z14R_SetTexFilterv
	mov dword [esp], gfxCmdBufState
	call _Z17R_InitCmdBufStateP14GfxCmdBufState
	mov dword [gfxCmdBufSourceState+0xf50], 0x0
	mov dword [gfxCmdBufSourceState+0xf54], 0x0
	mov edx, vidConfig
	mov eax, [edx+0x8]
	mov [gfxCmdBufSourceState+0xf58], eax
	mov eax, [edx+0xc]
	mov [gfxCmdBufSourceState+0xf5c], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], gfxCmdBufSourceState
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov dword [esp+0x8], 0x1
	mov eax, [gfxCmdBufContext]
	mov edx, [gfxCmdBufContext+0x4]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	leave
	ret
	nop


;RB_UnbindAllImages()
_Z18RB_UnbindAllImagesv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	test edx, edx
	jz _Z18RB_UnbindAllImagesv_10
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z18RB_UnbindAllImagesv_10
	mov eax, vidConfig
	mov eax, [eax+0x28]
	test eax, eax
	jnz _Z18RB_UnbindAllImagesv_20
_Z18RB_UnbindAllImagesv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18RB_UnbindAllImagesv_20:
	xor ebx, ebx
_Z18RB_UnbindAllImagesv_30:
	mov [esp+0x4], ebx
	mov dword [esp], gfxCmdBufState
	call _Z16R_DisableSamplerP14GfxCmdBufStatej
	add ebx, 0x1
	mov eax, vidConfig
	cmp ebx, [eax+0x28]
	jb _Z18RB_UnbindAllImagesv_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;RB_BindDefaultImages()
_Z20RB_BindDefaultImagesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor edi, edi
_Z20RB_BindDefaultImagesv_10:
	mov edx, rgp
	mov eax, [edx+0x2008]
	mov esi, gfxCmdBufState
	mov ebx, gfxCmdBufSourceState
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add edi, 0x1
	cmp edi, 0x10
	jnz _Z20RB_BindDefaultImagesv_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;RB_InitSceneViewport()
_Z20RB_InitSceneViewportv:
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

