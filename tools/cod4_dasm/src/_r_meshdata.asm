;Imports of r_meshdata:
	extern R_BeginMaterial
	extern R_Set2D
	extern R_SetupPass
	extern R_UpdateVertexDecl
	extern R_SetupPassCriticalPixelShaderArgs
	extern R_SetMeshStream
	extern R_SetIndexData
	extern R_SetupPassPerObjectArgs
	extern R_SetupPassPerPrimArgs
	extern R_DrawIndexedPrimitive
	extern R_GetViewport
	extern R_SetViewport
	extern R_UpdateViewport
	extern _ZN14MacOpenGLUtils13SetBufferHintEj
	extern R_UnlockVertexBuffer
	extern _ZN14MacOpenGLUtils16ClearBufferHintsEv
	extern R_LockVertexBuffer
	extern R_SetVertex2d

;Exports of r_meshdata:
	global R_ResetMesh
	global R_SetQuadMesh
	global R_DrawQuadMesh
	global R_EndMeshVerts
	global R_GetMeshVerts
	global R_BeginMeshVerts
	global R_SetQuadMeshData
	global R_ReserveMeshVerts
	global R_ReserveMeshIndices
	global gfxMeshGlob


SECTION .text


;R_ResetMesh(GfxMeshData*)
R_ResetMesh:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0x0
	mov dword [eax], 0x0
	pop ebp
	ret
	nop


;R_SetQuadMesh(GfxQuadMeshData*, float, float, float, float, float, float, float, float, unsigned long)
R_SetQuadMesh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	mov [edx], edi
	mov [edx+0x4], esi
	mov [edx+0x8], ebx
	mov [edx+0xc], ecx
	mov [ebp+0x18], ecx
	mov [ebp+0x14], ebx
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	add edx, 0x10
	mov [ebp+0x8], edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_SetQuadMeshData
	add [eax], al


;R_DrawQuadMesh(GfxCmdBufContext, Material const*, GfxMeshData*)
R_DrawQuadMesh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [ebp-0x3c], esi
	mov ebx, edi
	mov dword [esp+0x8], 0x4
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_BeginMaterial
	test eax, eax
	jnz R_DrawQuadMesh_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawQuadMesh_10:
	add ebx, 0x90
	mov [ebp-0x40], ebx
	mov dword [ebx+0x8], 0x0
	mov [esp], esi
	call R_Set2D
	mov edx, [ebp-0x3c]
	cmp byte [edx+0xf70], 0x0
	jnz R_DrawQuadMesh_20
R_DrawQuadMesh_30:
	mov [ebp-0x60], esi
	mov [ebp-0x5c], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPass
	mov [esp], edi
	call R_UpdateVertexDecl
	mov [ebp-0x58], esi
	mov [ebp-0x54], edi
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassCriticalPixelShaderArgs
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], edi
	call R_SetMeshStream
	mov dword [ebp-0x24], 0x4
	mov dword [ebp-0x20], 0x2
	mov dword [esp+0x8], 0x2
	mov edx, [ebp+0x14]
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call R_SetIndexData
	mov [ebp-0x1c], eax
	mov [ebp-0x50], esi
	mov [ebp-0x4c], edi
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerObjectArgs
	mov [ebp-0x48], esi
	mov [ebp-0x44], edi
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerPrimArgs
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call R_DrawIndexedPrimitive
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawQuadMesh_20:
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_GetViewport
	mov [esp+0x4], ebx
	mov [esp], edi
	call R_SetViewport
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_UpdateViewport
	jmp R_DrawQuadMesh_30


;R_EndMeshVerts(GfxMeshData*)
R_EndMeshVerts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x18]
	test eax, eax
	jz R_EndMeshVerts_10
	mov edx, [ebx+0x10]
	mov [ebp-0x10], edx
	mov eax, [ebx+0xc]
	mov [ebp-0xc], eax
	cmp edx, eax
	jge R_EndMeshVerts_20
	lea eax, [ebp-0x10]
R_EndMeshVerts_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov eax, [ebx+0x14]
	mov [esp], eax
	call R_UnlockVertexBuffer
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
	mov dword [ebx+0x18], 0x0
R_EndMeshVerts_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_EndMeshVerts_20:
	lea eax, [ebp-0xc]
	jmp R_EndMeshVerts_30


;R_GetMeshVerts(GfxMeshData*, unsigned short)
R_GetMeshVerts:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movzx eax, word [ebp+0xc]
	imul eax, [edx+0x1c]
	add eax, [edx+0x18]
	pop ebp
	ret
	nop


;R_BeginMeshVerts(GfxMeshData*)
R_BeginMeshVerts:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x14]
	mov eax, [ebx+0xc]
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x1000
	add eax, 0x1000
	mov [esp+0xc], eax
	mov eax, [ebx+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call R_LockVertexBuffer
	mov [ebx+0x18], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_SetQuadMeshData(GfxMeshData*, float, float, float, float, float, float, float, float, unsigned long)
R_SetQuadMeshData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x2c]
	mov edx, [edi+0x14]
	mov eax, [edi+0xc]
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x1000
	add eax, 0x1000
	mov [esp+0xc], eax
	mov eax, [edi+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call R_LockVertexBuffer
	mov [edi+0x18], eax
	mov eax, [edi+0x8]
	mov word [eax+0x2], 0x0
	mov word [eax], 0x3
	mov word [eax+0x6], 0x2
	mov word [eax+0x4], 0x2
	mov word [eax+0xa], 0x1
	mov word [eax+0x8], 0x0
	mov ebx, [edi+0x18]
	mov [esp+0x14], esi
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call R_SetVertex2d
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x14]
	movss [ebp+0x14], xmm0
	mov [esp+0x14], esi
	movss xmm0, dword [ebp+0x20]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x4], xmm0
	lea eax, [ebx+0x20]
	mov [esp], eax
	call R_SetVertex2d
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [ebp+0x18]
	movss [ebp+0x18], xmm0
	mov [esp+0x14], esi
	movss xmm0, dword [ebp+0x28]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x4], xmm0
	lea eax, [ebx+0x40]
	mov [esp], eax
	call R_SetVertex2d
	mov [esp+0x14], esi
	movss xmm0, dword [ebp+0x28]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x1c]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	add ebx, 0x60
	mov [esp], ebx
	call R_SetVertex2d
	mov edx, [edi+0x18]
	test edx, edx
	jz R_SetQuadMeshData_10
	mov edx, [edi+0x10]
	mov [ebp-0x20], edx
	mov eax, [edi+0xc]
	mov [ebp-0x1c], eax
	cmp edx, eax
	jge R_SetQuadMeshData_20
	lea eax, [ebp-0x20]
R_SetQuadMeshData_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov eax, [edi+0x14]
	mov [esp], eax
	call R_UnlockVertexBuffer
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
	mov dword [edi+0x18], 0x0
R_SetQuadMeshData_10:
	mov dword [edi], 0x6
	mov dword [edi+0xc], 0x80
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetQuadMeshData_20:
	lea eax, [ebp-0x1c]
	jmp R_SetQuadMeshData_30
	nop


;R_ReserveMeshVerts(GfxMeshData*, int, unsigned short*)
R_ReserveMeshVerts:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ecx+0xc]
	mov edx, [ecx+0xc]
	imul eax, [ecx+0x1c]
	add eax, edx
	mov [ecx+0xc], eax
	mov eax, [ecx+0xc]
	cmp eax, [ecx+0x10]
	jg R_ReserveMeshVerts_10
	mov eax, ebx
	xor edx, edx
	div dword [ecx+0x1c]
	mov edx, [ebp+0x10]
	mov [edx], ax
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
R_ReserveMeshVerts_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
	nop


;R_ReserveMeshIndices(GfxMeshData*, int, r_double_index_t**, unsigned char)
R_ReserveMeshIndices:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov eax, ecx
	add eax, [ebp+0xc]
	cmp eax, [edx+0x4]
	ja R_ReserveMeshIndices_10
	mov [edx], eax
	mov eax, [edx+0x8]
	lea eax, [eax+ecx*2]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, 0x1
	pop ebp
	ret
R_ReserveMeshIndices_10:
	xor eax, eax
	pop ebp
	ret


;Initialized global or static variables of r_meshdata:
SECTION .data


;Initialized constant data of r_meshdata:
SECTION .rdata


;Zero initialized global or static variables of r_meshdata:
SECTION .bss
gfxMeshGlob: resb 0x184


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

