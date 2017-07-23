;Imports of rb_shade:
	extern gfxCmdBufSourceState
	extern tess
	extern gfxCmdBufState
	extern R_SetIndexData
	extern gfxCmdBufContext
	extern pixelCostMode
	extern gfxBuf
	extern R_SetVertexData
	extern R_PixelCost_EndSurface
	extern R_SetupPassPerObjectArgs
	extern R_SetupPassPerPrimArgs
	extern R_DrawIndexedPrimitive
	extern R_SetupPass
	extern R_UpdateVertexDecl
	extern R_SetupPassCriticalPixelShaderArgs
	extern R_PixelCost_BeginSurface
	extern R_GetViewport
	extern R_SetViewport
	extern R_UpdateViewport
	extern R_PixelCost_GetAccumulationMaterial

;Exports of rb_shade:
	global RB_DrawTessSurface
	global RB_BeginSurface
	global RB_TessOverflow
	global RB_EndTessSurface
	global RB_ClearVertexDecl
	global RB_ClearPixelShader
	global RB_SetTessTechnique
	global RB_ClearVertexShader


SECTION .text


;RB_DrawTessSurface()
RB_DrawTessSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	mov esi, gfxCmdBufSourceState
	cmp byte [esi+0xf70], 0x0
	jnz RB_DrawTessSurface_10
RB_DrawTessSurface_140:
	mov edx, tess
	mov eax, [edx+0x22a94c]
	mov [ebp-0x24], eax
	mov ecx, [edx+0x22a948]
	mov edx, 0x55555556
	mov eax, ecx
	imul edx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov [ebp-0x20], edx
	mov [esp+0x8], edx
	mov eax, tess
	add eax, 0x2a940
	mov [esp+0x4], eax
	mov eax, gfxCmdBufState
	add eax, 0x90
	mov [esp], eax
	call R_SetIndexData
	mov [ebp-0x1c], eax
	mov eax, gfxCmdBufContext
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov [ebp-0x3c], ebx
	mov edi, esi
	mov edx, [esi+0xc0]
	mov [ebp-0x40], edx
	mov eax, pixelCostMode
	mov eax, [eax]
	test eax, eax
	setnz byte [ebp-0x45]
	cmp byte [ebp-0x45], 0x0
	jnz RB_DrawTessSurface_20
RB_DrawTessSurface_130:
	mov eax, gfxBuf
	mov ecx, [eax+0x70]
	mov edx, [ecx]
	mov [ebp-0x7c], edx
	mov edx, tess
	mov eax, [edx+0x22a94c]
	shl eax, 0x5
	add eax, [ebp-0x7c]
	cmp eax, [ecx+0x4]
	jle RB_DrawTessSurface_30
	mov dword [ecx], 0x0
	mov edx, tess
RB_DrawTessSurface_30:
	mov dword [esp+0xc], 0x20
	mov eax, [edx+0x22a94c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call R_SetVertexData
	mov esi, eax
	mov eax, [ebp-0x40]
	cmp word [eax+0x6], 0x0
	jnz RB_DrawTessSurface_40
RB_DrawTessSurface_80:
	cmp byte [ebp-0x45], 0x0
	jz RB_DrawTessSurface_50
	mov eax, [ebp-0x3c]
	mov [ebp-0x50], eax
	mov [ebp-0x4c], edi
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_PixelCost_EndSurface
RB_DrawTessSurface_50:
	mov eax, tess
	mov dword [eax+0x22a948], 0x0
	mov dword [eax+0x22a94c], 0x0
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_DrawTessSurface_40:
	mov dword [ebp-0x44], 0x0
	lea ebx, [edi+0x90]
	jmp RB_DrawTessSurface_60
RB_DrawTessSurface_90:
	mov [ebx+0x10], ecx
	mov [ebx+0x14], esi
	mov dword [ebx+0xc], 0x20
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x20
	mov [esp+0xc], esi
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
RB_DrawTessSurface_100:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz RB_DrawTessSurface_70
RB_DrawTessSurface_110:
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
RB_DrawTessSurface_120:
	mov edx, [ebp-0x3c]
	mov [ebp-0x60], edx
	mov [ebp-0x5c], edi
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerObjectArgs
	mov edx, [ebp-0x3c]
	mov [ebp-0x58], edx
	mov [ebp-0x54], edi
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerPrimArgs
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], ebx
	call R_DrawIndexedPrimitive
	add dword [ebp-0x44], 0x1
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x44], eax
	jae RB_DrawTessSurface_80
RB_DrawTessSurface_60:
	mov edx, [ebp-0x3c]
	mov [ebp-0x70], edx
	mov [ebp-0x6c], edi
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x70]
	mov edx, [ebp-0x6c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPass
	mov [esp], edi
	call R_UpdateVertexDecl
	mov edx, [ebp-0x3c]
	mov [ebp-0x68], edx
	mov [ebp-0x64], edi
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassCriticalPixelShaderArgs
	mov eax, gfxBuf
	mov eax, [eax+0x70]
	mov ecx, [eax+0x8]
	cmp ecx, [ebx+0x10]
	jnz RB_DrawTessSurface_90
	cmp [ebx+0x14], esi
	jnz RB_DrawTessSurface_90
	cmp dword [ebx+0xc], 0x20
	jnz RB_DrawTessSurface_90
	jmp RB_DrawTessSurface_100
RB_DrawTessSurface_70:
	mov eax, [ebx+0x20]
	test eax, eax
	jnz RB_DrawTessSurface_110
	mov eax, [ebx+0x18]
	test eax, eax
	jz RB_DrawTessSurface_120
	jmp RB_DrawTessSurface_110
RB_DrawTessSurface_20:
	mov [ebp-0x78], ebx
	mov [ebp-0x74], esi
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_PixelCost_BeginSurface
	jmp RB_DrawTessSurface_130
RB_DrawTessSurface_10:
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_GetViewport
	mov [esp+0x4], ebx
	mov eax, gfxCmdBufState
	mov [esp], eax
	call R_SetViewport
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_UpdateViewport
	jmp RB_DrawTessSurface_140


;RB_BeginSurface(Material const*, MaterialTechniqueType)
RB_BeginSurface:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, tess
	mov dword [eax+0x22a950], 0x0
	mov dword [eax+0x22a954], 0x0
	mov ebx, gfxCmdBufState
	mov [ebx+0xb8], ecx
	mov [ebx+0xbc], edx
	mov dword [ebx+0x98], 0x0
	mov [ebx+0xa08], ecx
	mov [ebx+0xa0c], edx
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jg RB_BeginSurface_10
	mov eax, ecx
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, [ebx+0xbc]
	mov eax, [edx+eax*4+0xc]
	mov [ebx+0xc0], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_BeginSurface_10:
	mov [esp], ecx
	call R_PixelCost_GetAccumulationMaterial
	mov [ebx+0xb8], eax
	mov dword [ebx+0xbc], 0x4
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, [ebx+0xbc]
	mov eax, [edx+eax*4+0xc]
	mov [ebx+0xc0], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;RB_TessOverflow()
RB_TessOverflow:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	call RB_DrawTessSurface
	mov ebx, gfxCmdBufState
	mov edx, [ebx+0xa0c]
	mov ecx, [ebx+0xa08]
	mov eax, tess
	mov dword [eax+0x22a950], 0x0
	mov dword [eax+0x22a954], 0x0
	mov [ebx+0xb8], ecx
	mov [ebx+0xbc], edx
	mov dword [ebx+0x98], 0x0
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jg RB_TessOverflow_10
	mov eax, ecx
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, [ebx+0xbc]
	mov eax, [edx+eax*4+0xc]
	mov [ebx+0xc0], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
RB_TessOverflow_10:
	mov [esp], ecx
	call R_PixelCost_GetAccumulationMaterial
	mov [ebx+0xb8], eax
	mov dword [ebx+0xbc], 0x4
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, [ebx+0xbc]
	mov eax, [edx+eax*4+0xc]
	mov [ebx+0xc0], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;RB_EndTessSurface()
RB_EndTessSurface:
	push ebp
	mov ebp, esp
	pop ebp
	jmp RB_DrawTessSurface
	nop


;RB_ClearVertexDecl()
RB_ClearVertexDecl:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, gfxCmdBufState
	mov ecx, [ebx+0xb4]
	test ecx, ecx
	jz RB_ClearVertexDecl_10
	mov eax, [ebx+0x90]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x15c]
	mov dword [ebx+0xb4], 0x0
RB_ClearVertexDecl_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;RB_ClearPixelShader()
RB_ClearPixelShader:
	push ebp
	mov ebp, esp
	mov edx, gfxCmdBufState
	mov eax, [edx+0x9ec]
	test eax, eax
	jz RB_ClearPixelShader_10
	mov eax, [edx+0x90]
	mov dword [eax+0x3b0], 0x0
RB_ClearPixelShader_10:
	mov dword [edx+0x9ec], 0x0
	pop ebp
	ret
	nop


;RB_SetTessTechnique(Material const*, MaterialTechniqueType)
RB_SetTessTechnique:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, gfxCmdBufState
	cmp [esi+0xa08], edi
	jz RB_SetTessTechnique_10
RB_SetTessTechnique_60:
	mov ebx, tess
	mov eax, [ebx+0x22a948]
	test eax, eax
	jnz RB_SetTessTechnique_20
RB_SetTessTechnique_40:
	mov dword [ebx+0x22a950], 0x0
	mov dword [ebx+0x22a954], 0x0
	mov [esi+0xb8], edi
	mov eax, [ebp+0xc]
	mov [esi+0xbc], eax
	mov dword [esi+0x98], 0x0
	mov [esi+0xa08], edi
	mov [esi+0xa0c], eax
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jg RB_SetTessTechnique_30
	mov eax, edi
RB_SetTessTechnique_50:
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, [esi+0xbc]
	mov eax, [edx+eax*4+0xc]
	mov [esi+0xc0], eax
RB_SetTessTechnique_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_SetTessTechnique_20:
	call RB_DrawTessSurface
	jmp RB_SetTessTechnique_40
RB_SetTessTechnique_30:
	mov [esp], edi
	call R_PixelCost_GetAccumulationMaterial
	mov [esi+0xb8], eax
	mov dword [esi+0xbc], 0x4
	jmp RB_SetTessTechnique_50
RB_SetTessTechnique_10:
	mov eax, [ebp+0xc]
	cmp eax, [esi+0xa0c]
	jnz RB_SetTessTechnique_60
	jmp RB_SetTessTechnique_70
	nop


;RB_ClearVertexShader()
RB_ClearVertexShader:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, gfxCmdBufState
	mov edx, [ebx+0x9f0]
	test edx, edx
	jz RB_ClearVertexShader_10
	mov eax, [ebx+0x90]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x170]
RB_ClearVertexShader_10:
	mov dword [ebx+0x9f0], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of rb_shade:
SECTION .data


;Initialized constant data of rb_shade:
SECTION .rdata


;Zero initialized global or static variables of rb_shade:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

