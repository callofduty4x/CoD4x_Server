;Imports of r_meshdata:
	extern _Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType
	extern _Z7R_Set2DP20GfxCmdBufSourceState
	extern _Z11R_SetupPass16GfxCmdBufContextj
	extern _Z18R_UpdateVertexDeclP14GfxCmdBufState
	extern _Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext
	extern _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData
	extern _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	extern _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	extern _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	extern _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	extern _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport
	extern _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport
	extern _Z16R_UpdateViewportP20GfxCmdBufSourceStateP11GfxViewport
	extern _ZN14MacOpenGLUtils13SetBufferHintEj
	extern _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	extern _ZN14MacOpenGLUtils16ClearBufferHintsEv
	extern _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	extern _Z13R_SetVertex2dP9GfxVertexffffm

;Exports of r_meshdata:
	global _Z11R_ResetMeshP11GfxMeshData
	global _Z13R_SetQuadMeshP15GfxQuadMeshDataffffffffm
	global _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData
	global _Z14R_EndMeshVertsP11GfxMeshData
	global _Z14R_GetMeshVertsP11GfxMeshDatat
	global _Z16R_BeginMeshVertsP11GfxMeshData
	global _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm
	global _Z18R_ReserveMeshVertsP11GfxMeshDataiPt
	global _Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th
	global gfxMeshGlob


SECTION .text


;R_ResetMesh(GfxMeshData*)
_Z11R_ResetMeshP11GfxMeshData:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0x0
	mov dword [eax], 0x0
	pop ebp
	ret
	nop


;R_SetQuadMesh(GfxQuadMeshData*, float, float, float, float, float, float, float, float, unsigned long)
_Z13R_SetQuadMeshP15GfxQuadMeshDataffffffffm:
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
	jmp _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm
	add [eax], al


;R_DrawQuadMesh(GfxCmdBufContext, Material const*, GfxMeshData*)
_Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData:
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
	call _Z15R_BeginMaterialP14GfxCmdBufStatePK8Material21MaterialTechniqueType
	test eax, eax
	jnz _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_10:
	add ebx, 0x90
	mov [ebp-0x40], ebx
	mov dword [ebx+0x8], 0x0
	mov [esp], esi
	call _Z7R_Set2DP20GfxCmdBufSourceState
	mov edx, [ebp-0x3c]
	cmp byte [edx+0xf70], 0x0
	jnz _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_20
_Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_30:
	mov [ebp-0x60], esi
	mov [ebp-0x5c], edi
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z11R_SetupPass16GfxCmdBufContextj
	mov [esp], edi
	call _Z18R_UpdateVertexDeclP14GfxCmdBufState
	mov [ebp-0x58], esi
	mov [ebp-0x54], edi
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z15R_SetMeshStreamP14GfxCmdBufStateP11GfxMeshData
	mov dword [ebp-0x24], 0x4
	mov dword [ebp-0x20], 0x2
	mov dword [esp+0x8], 0x2
	mov edx, [ebp+0x14]
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	mov [ebp-0x1c], eax
	mov [ebp-0x50], esi
	mov [ebp-0x4c], edi
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	mov [ebp-0x48], esi
	mov [ebp-0x44], edi
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x40]
	mov [esp], edx
	call _Z22R_DrawIndexedPrimitiveP18GfxCmdBufPrimStatePK15GfxDrawPrimArgs
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_20:
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z13R_GetViewportP20GfxCmdBufSourceStateP11GfxViewport
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z13R_SetViewportP14GfxCmdBufStatePK11GfxViewport
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z16R_UpdateViewportP20GfxCmdBufSourceStateP11GfxViewport
	jmp _Z14R_DrawQuadMesh16GfxCmdBufContextPK8MaterialP11GfxMeshData_30


;R_EndMeshVerts(GfxMeshData*)
_Z14R_EndMeshVertsP11GfxMeshData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x18]
	test eax, eax
	jz _Z14R_EndMeshVertsP11GfxMeshData_10
	mov edx, [ebx+0x10]
	mov [ebp-0x10], edx
	mov eax, [ebx+0xc]
	mov [ebp-0xc], eax
	cmp edx, eax
	jge _Z14R_EndMeshVertsP11GfxMeshData_20
	lea eax, [ebp-0x10]
_Z14R_EndMeshVertsP11GfxMeshData_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov eax, [ebx+0x14]
	mov [esp], eax
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
	mov dword [ebx+0x18], 0x0
_Z14R_EndMeshVertsP11GfxMeshData_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z14R_EndMeshVertsP11GfxMeshData_20:
	lea eax, [ebp-0xc]
	jmp _Z14R_EndMeshVertsP11GfxMeshData_30


;R_GetMeshVerts(GfxMeshData*, unsigned short)
_Z14R_GetMeshVertsP11GfxMeshDatat:
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
_Z16R_BeginMeshVertsP11GfxMeshData:
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
	call _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	mov [ebx+0x18], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_SetQuadMeshData(GfxMeshData*, float, float, float, float, float, float, float, float, unsigned long)
_Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm:
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
	call _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
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
	call _Z13R_SetVertex2dP9GfxVertexffffm
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
	call _Z13R_SetVertex2dP9GfxVertexffffm
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
	call _Z13R_SetVertex2dP9GfxVertexffffm
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
	call _Z13R_SetVertex2dP9GfxVertexffffm
	mov edx, [edi+0x18]
	test edx, edx
	jz _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_10
	mov edx, [edi+0x10]
	mov [ebp-0x20], edx
	mov eax, [edi+0xc]
	mov [ebp-0x1c], eax
	cmp edx, eax
	jge _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_20
	lea eax, [ebp-0x20]
_Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov eax, [edi+0x14]
	mov [esp], eax
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
	mov dword [edi+0x18], 0x0
_Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_10:
	mov dword [edi], 0x6
	mov dword [edi+0xc], 0x80
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_20:
	lea eax, [ebp-0x1c]
	jmp _Z17R_SetQuadMeshDataP11GfxMeshDataffffffffm_30
	nop


;R_ReserveMeshVerts(GfxMeshData*, int, unsigned short*)
_Z18R_ReserveMeshVertsP11GfxMeshDataiPt:
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
	jg _Z18R_ReserveMeshVertsP11GfxMeshDataiPt_10
	mov eax, ebx
	xor edx, edx
	div dword [ecx+0x1c]
	mov edx, [ebp+0x10]
	mov [edx], ax
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
_Z18R_ReserveMeshVertsP11GfxMeshDataiPt_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
	nop


;R_ReserveMeshIndices(GfxMeshData*, int, r_double_index_t**, unsigned char)
_Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov eax, ecx
	add eax, [ebp+0xc]
	cmp eax, [edx+0x4]
	ja _Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th_10
	mov [edx], eax
	mov eax, [edx+0x8]
	lea eax, [eax+ecx*2]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, 0x1
	pop ebp
	ret
_Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th_10:
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

