;Imports of rb_depthprepass:
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern rgp
	extern _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData
	extern _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	extern _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	extern _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_

;Exports of rb_depthprepass:
	global _Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1_
	global _Z14R_DepthPrepass17GfxRenderTargetIdPK11GfxViewInfoP9GfxCmdBuf


SECTION .text


;R_DepthPrepassCallback(void const*, GfxCmdBufContext, GfxCmdBufContext)
_Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x60], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x5c], edx
	mov edx, [edi+0x180]
	mov esi, [edi+0x178]
	mov ecx, [edi+0x174]
	mov eax, [ebp-0x5c]
	mov ebx, [eax+0x90]
	mov [ebp-0x28], ecx
	mov [ebp-0x24], esi
	mov eax, [edi+0x17c]
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
	cmp byte [edi+0x13a8], 0x0
	jz _Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1__10
	mov edx, [ebp+0xc]
	mov [ebp-0x88], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x84], ecx
	mov dword [esp+0x8], 0x5
	mov eax, [ebp-0x88]
	mov edx, [ebp-0x84]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov edx, [edi+0x6300]
	add edx, 0x10
	mov eax, rgp
	mov eax, [eax+0x204c]
	mov ecx, [ebp+0xc]
	mov [ebp-0x80], ecx
	mov ecx, [ebp+0x10]
	mov [ebp-0x7c], ecx
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov eax, [ebp-0x80]
	mov edx, [ebp-0x7c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData
	mov edx, [ebp-0x60]
	add edx, 0xbe0
	xor eax, eax
	mov ecx, [ebp-0x60]
	mov [ecx+0xbe0], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [edx+0xc], 0x3f800000
	add word [ecx+0xe9c], 0x1
	mov esi, 0x1
_Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1__20:
	mov eax, [edi+0x6304]
	mov [ebp-0x50], eax
	mov eax, [edi+0x6308]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x6310]
	mov [ebp-0x44], eax
	mov eax, [edi+0x6314]
	mov [ebp-0x40], eax
	mov eax, [edi+0x6318]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x631c]
	mov [ebp-0x38], eax
	mov eax, [edi+0x6320]
	mov [ebp-0x34], eax
	mov eax, [edi+0x6324]
	mov [ebp-0x30], eax
	mov eax, [edi+0x6328]
	mov [ebp-0x2c], eax
	mov [ebp-0x48], esi
	mov edx, [ebp-0x60]
	mov [ebp-0x70], edx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x6c], ecx
	lea ebx, [ebp-0x50]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x70]
	mov edx, [ebp-0x6c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	mov eax, [edi+0x632c]
	mov [ebp-0x50], eax
	mov eax, [edi+0x6330]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x6338]
	mov [ebp-0x44], eax
	mov eax, [edi+0x633c]
	mov [ebp-0x40], eax
	mov eax, [edi+0x6340]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x6344]
	mov [ebp-0x38], eax
	mov eax, [edi+0x6348]
	mov [ebp-0x34], eax
	mov eax, [edi+0x634c]
	mov [ebp-0x30], eax
	mov eax, [edi+0x6350]
	mov [ebp-0x2c], eax
	mov [ebp-0x48], esi
	mov edx, [ebp-0x60]
	mov [ebp-0x68], edx
	mov ecx, [ebp-0x5c]
	mov [ebp-0x64], ecx
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z11R_DrawSurfs16GfxCmdBufContextP14GfxCmdBufStatePK19GfxDrawSurfListInfo
	mov edx, [ebp-0x5c]
	mov eax, [edx+0x90]
	mov edx, [eax]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xae
	mov [esp], eax
	call dword [edx+0xe4]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1__10:
	mov eax, [ebp+0xc]
	mov [ebp-0x78], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x74], edx
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	xor esi, esi
	jmp _Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1__20
	nop


;R_DepthPrepass(GfxRenderTargetId, GfxViewInfo const*, GfxCmdBuf*)
_Z14R_DepthPrepass17GfxRenderTargetIdPK11GfxViewInfoP9GfxCmdBuf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xfa0
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x1
	lea eax, [esi+0x6380]
	mov [esp+0x4], eax
	lea ebx, [ebp-0xf88]
	mov [esp], ebx
	call _Z23R_InitCmdBufSourceStateP20GfxCmdBufSourceStatePK14GfxCmdBufInputi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	lea eax, [esi+0x154]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19R_SetViewportStructP20GfxCmdBufSourceStatePK11GfxViewport
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x18], eax
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _Z22R_DepthPrepassCallbackPKv16GfxCmdBufContextS1_
	call _Z10R_DrawCallPFvPKv16GfxCmdBufContextS1_ES0_P20GfxCmdBufSourceStatePK11GfxViewInfoPK19GfxDrawSurfListInfoPK12GfxViewParmsP9GfxCmdBufSG_
	add esp, 0xfa0
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of rb_depthprepass:
SECTION .data


;Initialized constant data of rb_depthprepass:
SECTION .rdata


;Zero initialized global or static variables of rb_depthprepass:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

