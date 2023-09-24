;Imports of r_draw_lit:
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	extern _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_

;Exports of r_draw_lit:
	global _Z17R_DrawLitCallbackPKv16GfxCmdBufContextS1_
	global _Z19R_DrawDecalCallbackPKv16GfxCmdBufContextS1_
	global _Z11R_DrawDecalPK11GfxViewInfoP9GfxCmdBufS3_
	global _Z9R_DrawLitPK11GfxViewInfoP9GfxCmdBufS3_


SECTION .text


;R_DrawLitCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
_Z17R_DrawLitCallbackPKv16GfxCmdBufContextS1_:
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
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	test ebx, ebx
	jz _Z17R_DrawLitCallbackPKv16GfxCmdBufContextS1__10
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov dword [esp+0x8], 0x2
	mov [esp], esi
	mov [esp+0x4], edi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
_Z17R_DrawLitCallbackPKv16GfxCmdBufContextS1__10:
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
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
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
_Z19R_DrawDecalCallbackPKv16GfxCmdBufContextS1_:
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
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	test ebx, ebx
	jz _Z19R_DrawDecalCallbackPKv16GfxCmdBufContextS1__10
	mov esi, [ebp+0x14]
	mov edi, [ebp+0x18]
	mov dword [esp+0x8], 0x2
	mov [esp], esi
	mov [esp+0x4], edi
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
_Z19R_DrawDecalCallbackPKv16GfxCmdBufContextS1__10:
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
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
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
_Z11R_DrawDecalPK11GfxViewInfoP9GfxCmdBufS3_:
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
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	lea eax, [ebx+0x154]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
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
	mov dword [esp], _Z19R_DrawDecalCallbackPKv16GfxCmdBufContextS1_
	call _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
	add esp, 0xfa0
	pop ebx
	pop esi
	pop ebp
	ret


;R_DrawLit(GfxViewInfo const*, GfxCmdBuf*, GfxCmdBuf*)
_Z9R_DrawLitPK11GfxViewInfoP9GfxCmdBufS3_:
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
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	lea eax, [ebx+0x154]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
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
	mov dword [esp], _Z17R_DrawLitCallbackPKv16GfxCmdBufContextS1_
	call _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
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

