;Imports of r_draw_lit:
	extern R_SetRenderTarget
	extern R_DrawSurfs
	extern R_InitCmdBufSourceState
	extern R_SetRenderTargetSize
	extern R_SetViewportStruct
	extern R_DrawCall

;Exports of r_draw_lit:
	global R_DrawLitCallback
	global R_DrawDecalCallback
	global R_DrawDecal
	global R_DrawLit


SECTION .text


;R_DrawLitCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawLitCallback:
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
	mov ebx, [ebp+0x18]
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	test ebx, ebx
	jz R_DrawLitCallback_10
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov dword [esp+0x8], 0x2
	mov [esp], esi
	mov [esp+0x4], edi
	call R_SetRenderTarget
R_DrawLitCallback_10:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x180]
	mov eax, [ebx+0x17c]
	mov esi, [ebx+0x178]
	mov ecx, [ebx+0x174]
	mov edi, [ebp-0x2c]
	mov ebx, [edi+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], esi
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, esi
	mov [ebp-0x1c], edx
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], ebx
	call dword [eax+0xe4]
	mov edx, [ebx]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0x12c]
	mov eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x34], edx
	mov eax, [ebp+0x8]
	add eax, 0x6304
	mov [esp+0xc], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov eax, [edi+0x90]
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


;R_DrawDecalCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
R_DrawDecalCallback:
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
	mov ebx, [ebp+0x18]
	mov eax, [ebp+0xc]
	mov dword [esp+0x8], 0x2
	mov [esp], eax
	mov [esp+0x4], ecx
	call R_SetRenderTarget
	test ebx, ebx
	jz R_DrawDecalCallback_10
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov dword [esp+0x8], 0x2
	mov [esp], esi
	mov [esp+0x4], edi
	call R_SetRenderTarget
R_DrawDecalCallback_10:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x180]
	mov eax, [ebx+0x17c]
	mov esi, [ebx+0x178]
	mov ecx, [ebx+0x174]
	mov edi, [ebp-0x2c]
	mov ebx, [edi+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], esi
	add eax, ecx
	mov [ebp-0x20], eax
	add edx, esi
	mov [ebp-0x1c], edx
	mov eax, [ebx]
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xae
	mov [esp], ebx
	call dword [eax+0xe4]
	mov edx, [ebx]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0x12c]
	mov eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x34], edx
	mov eax, [ebp+0x8]
	add eax, 0x632c
	mov [esp+0xc], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x34]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_DrawSurfs
	mov eax, [edi+0x90]
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


;R_DrawDecal(GfxViewInfo const*, GfxCmdBuf*, GfxCmdBuf*)
R_DrawDecal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xfa0
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x1
	lea eax, [ebx+0x6380]
	mov [esp+0x4], eax
	lea esi, [ebp-0xf88]
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call R_SetRenderTargetSize
	lea eax, [ebx+0x154]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportStruct
	mov eax, [ebp+0x10]
	mov [esp+0x1c], eax
	mov eax, [ebp+0xc]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	lea eax, [ebx+0x632c]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], R_DrawDecalCallback
	call R_DrawCall
	add esp, 0xfa0
	pop ebx
	pop esi
	pop ebp
	ret


;R_DrawLit(GfxViewInfo const*, GfxCmdBuf*, GfxCmdBuf*)
R_DrawLit:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xfa0
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x1
	lea eax, [ebx+0x6380]
	mov [esp+0x4], eax
	lea esi, [ebp-0xf88]
	mov [esp], esi
	call R_InitCmdBufSourceState
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call R_SetRenderTargetSize
	lea eax, [ebx+0x154]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SetViewportStruct
	mov eax, [ebp+0x10]
	mov [esp+0x1c], eax
	mov eax, [ebp+0xc]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	lea eax, [ebx+0x6304]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], R_DrawLitCallback
	call R_DrawCall
	add esp, 0xfa0
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of r_draw_lit:
SECTION .data


;Initialized constant data of r_draw_lit:
SECTION .rdata


;Zero initialized global or static variables of r_draw_lit:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

