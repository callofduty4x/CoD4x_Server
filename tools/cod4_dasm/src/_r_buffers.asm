;Imports of r_buffers:
	extern r_loadForRenderer
	extern memcpy
	extern R_FatalLockError
	extern Z_VirtualAllocInternal
	extern g_OptimizeVBTransfers
	extern dx_ctx
	extern g_assetEntryPool
	extern R_InitTempSkinBuf
	extern R_ErrorDescription
	extern va
	extern R_FatalInitError
	extern alwaysfails
	extern R_ShutdownTempSkinBuf
	extern Z_VirtualFreeInternal
	extern ms_rand

;Exports of r_buffers:
	global quadIndices.154841
	global cornerTexCoords.154840
	global Load_VertexBuffer
	global R_LockIndexBuffer
	global R_LockVertexBuffer
	global R_UnlockIndexBuffer
	global R_InitDynamicIndices
	global R_UnlockVertexBuffer
	global R_CreateDynamicBuffers
	global R_DestroyDynamicBuffers
	global R_FreeStaticIndexBuffer
	global R_AllocStaticIndexBuffer
	global R_FreeStaticVertexBuffer
	global R_ShutdownDynamicIndices
	global R_AllocStaticVertexBuffer
	global R_FinishStaticIndexBuffer
	global R_AllocDynamicVertexBuffer
	global R_FinishStaticVertexBuffer
	global R_CreateParticleCloudBuffer
	global R_DestroyParticleCloudBuffer
	global R_InitDynamicVertexBufferState
	global gfxBuf


SECTION .text


;Load_VertexBuffer(IDirect3DVertexBuffer9**, void*, int)
Load_VertexBuffer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Load_VertexBuffer_10
	mov eax, [ebp+0xc]
	test eax, eax
	jz Load_VertexBuffer_10
	mov dword [esp+0x8], _cstring_load_vertexbuffe
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AllocStaticVertexBuffer
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Load_VertexBuffer_10:
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_LockIndexBuffer(IDirect3DIndexBuffer9*, int, int, int)
R_LockIndexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x2c]
	test eax, eax
	js R_LockIndexBuffer_10
	mov eax, [ebp-0xc]
	leave
	ret
R_LockIndexBuffer_10:
	mov [esp], eax
	call R_FatalLockError
	mov eax, [ebp-0xc]
	leave
	ret
	nop


;R_LockVertexBuffer(IDirect3DVertexBuffer9*, int, int, int)
R_LockVertexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x2c]
	test eax, eax
	js R_LockVertexBuffer_10
	mov eax, [ebp-0xc]
	leave
	ret
R_LockVertexBuffer_10:
	mov [esp], eax
	call R_FatalLockError
	mov eax, [ebp-0xc]
	leave
	ret
	nop


;R_UnlockIndexBuffer(IDirect3DIndexBuffer9*)
R_UnlockIndexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	leave
	ret
	nop


;R_InitDynamicIndices(GfxDynamicIndices*, int)
R_InitDynamicIndices:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov dword [ebx], 0x0
	mov [ebx+0x4], eax
	add eax, eax
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_UnlockVertexBuffer(IDirect3DVertexBuffer9*)
R_UnlockVertexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	leave
	ret
	nop


;R_CreateDynamicBuffers()
R_CreateDynamicBuffers:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [gfxBuf+0x60], 0x0
	mov dword [gfxBuf+0x64], 0x100000
	mov esi, r_loadForRenderer
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz R_CreateDynamicBuffers_10
	mov eax, g_OptimizeVBTransfers
	cmp byte [eax], 0x1
	sbb edx, edx
	and edx, 0xffc00000
	add edx, 0x400208
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov ecx, [eax]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], gfxBuf+0x68
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100000
	mov [esp], eax
	call dword [ecx+0x68]
	test eax, eax
	js R_CreateDynamicBuffers_20
R_CreateDynamicBuffers_10:
	mov eax, gfxBuf+0x60
	mov dword [eax+0xc], 0x0
	mov dword [gfxBuf+0x70], gfxBuf+0x60
	mov dword [gfxBuf+0x4c], 0x0
	mov dword [gfxBuf+0x50], g_assetEntryPool+0x48ec0
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz R_CreateDynamicBuffers_30
	mov eax, g_OptimizeVBTransfers
	cmp byte [eax], 0x1
	sbb edx, edx
	and edx, 0xffc00000
	add edx, 0x400208
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov ecx, [eax]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], gfxBuf+0x54
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov dword [esp+0x4], g_assetEntryPool+0x48ec0
	mov [esp], eax
	call dword [ecx+0x68]
	test eax, eax
	js R_CreateDynamicBuffers_40
R_CreateDynamicBuffers_30:
	mov eax, gfxBuf+0x4c
	mov dword [eax+0xc], 0x0
	call R_InitTempSkinBuf
	mov dword [gfxBuf+0x38], 0x0
	mov dword [gfxBuf+0x3c], 0x100000
	mov esi, r_loadForRenderer
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz R_CreateDynamicBuffers_50
R_CreateDynamicBuffers_100:
	mov dword [gfxBuf+0x48], gfxBuf+0x38
	xor ebx, ebx
R_CreateDynamicBuffers_80:
	mov eax, ebx
	shl eax, 0x4
	add eax, 0x10
	lea edx, [eax+gfxBuf]
	mov dword [eax+gfxBuf], 0x0
	mov dword [edx+0x4], 0x100000
	lea ecx, [edx+0x8]
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz R_CreateDynamicBuffers_60
R_CreateDynamicBuffers_90:
	add ebx, 0x1
	cmp ebx, 0x2
	jnz R_CreateDynamicBuffers_70
	mov dword [gfxBuf+0x30], gfxBuf+0x10
	mov dword [gfxBuf+0x34], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_CreateDynamicBuffers_70:
	mov esi, r_loadForRenderer
	jmp R_CreateDynamicBuffers_80
R_CreateDynamicBuffers_60:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], 0x208
	mov dword [esp+0x4], 0x200000
	mov [esp], eax
	call dword [edx+0x6c]
	test eax, eax
	jns R_CreateDynamicBuffers_90
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x200000
	mov dword [esp], _cstring_couldnt_create_a
	call va
	mov [esp], eax
	call R_FatalInitError
	jmp R_CreateDynamicBuffers_90
R_CreateDynamicBuffers_50:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], gfxBuf+0x40
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], 0x208
	mov dword [esp+0x4], 0x200000
	mov [esp], eax
	call dword [edx+0x6c]
	test eax, eax
	jns R_CreateDynamicBuffers_100
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x200000
	mov dword [esp], _cstring_couldnt_create_a
	call va
	mov [esp], eax
	call R_FatalInitError
	jmp R_CreateDynamicBuffers_100
R_CreateDynamicBuffers_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100000
	mov dword [esp], _cstring_directx_didnt_cr
	call va
	mov [esp], eax
	call R_FatalInitError
	jmp R_CreateDynamicBuffers_10
R_CreateDynamicBuffers_40:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], g_assetEntryPool+0x48ec0
	mov dword [esp], _cstring_directx_didnt_cr
	call va
	mov [esp], eax
	call R_FatalInitError
	jmp R_CreateDynamicBuffers_30


;R_DestroyDynamicBuffers()
R_DestroyDynamicBuffers:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, gfxBuf
	mov edi, alwaysfails
R_DestroyDynamicBuffers_30:
	lea ebx, [esi+0x18]
	mov eax, [esi+0x18]
	test eax, eax
	jz R_DestroyDynamicBuffers_10
R_DestroyDynamicBuffers_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx], 0x0
	mov eax, [edi]
	test eax, eax
	jnz R_DestroyDynamicBuffers_20
R_DestroyDynamicBuffers_10:
	add esi, 0x10
	mov eax, gfxBuf+0x20
	cmp eax, esi
	jnz R_DestroyDynamicBuffers_30
	mov eax, [gfxBuf+0x40]
	test eax, eax
	jz R_DestroyDynamicBuffers_40
	mov ebx, alwaysfails
R_DestroyDynamicBuffers_50:
	mov eax, [gfxBuf+0x40]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x40], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz R_DestroyDynamicBuffers_50
R_DestroyDynamicBuffers_40:
	mov edi, [gfxBuf+0x54]
	test edi, edi
	jz R_DestroyDynamicBuffers_60
	mov ebx, alwaysfails
R_DestroyDynamicBuffers_70:
	mov eax, [gfxBuf+0x54]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x54], 0x0
	mov esi, [ebx]
	test esi, esi
	jnz R_DestroyDynamicBuffers_70
R_DestroyDynamicBuffers_60:
	mov ebx, [gfxBuf+0x68]
	test ebx, ebx
	jz R_DestroyDynamicBuffers_80
	mov ebx, alwaysfails
R_DestroyDynamicBuffers_90:
	mov eax, [gfxBuf+0x68]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x68], 0x0
	mov ecx, [ebx]
	test ecx, ecx
	jnz R_DestroyDynamicBuffers_90
R_DestroyDynamicBuffers_80:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_ShutdownTempSkinBuf


;R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9*)
R_FreeStaticIndexBuffer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, alwaysfails
	jmp R_FreeStaticIndexBuffer_10
R_FreeStaticIndexBuffer_20:
	xor edx, edx
R_FreeStaticIndexBuffer_10:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov edx, [ebx]
	test edx, edx
	jnz R_FreeStaticIndexBuffer_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9**, int, char const*)
R_AllocStaticIndexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AllocStaticIndexBuffer_10
R_AllocStaticIndexBuffer_20:
	xor eax, eax
	leave
	ret
R_AllocStaticIndexBuffer_10:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], 0x8
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x6c]
	test eax, eax
	js R_AllocStaticIndexBuffer_20
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [edx]
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x2c]
	test eax, eax
	js R_AllocStaticIndexBuffer_30
	mov eax, [ebp-0xc]
	leave
	ret
R_AllocStaticIndexBuffer_30:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	xor eax, eax
	leave
	ret
	nop


;R_FreeStaticVertexBuffer(IDirect3DVertexBuffer9*)
R_FreeStaticVertexBuffer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, alwaysfails
	jmp R_FreeStaticVertexBuffer_10
R_FreeStaticVertexBuffer_20:
	xor edx, edx
R_FreeStaticVertexBuffer_10:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov eax, [ebx]
	test eax, eax
	jnz R_FreeStaticVertexBuffer_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_ShutdownDynamicIndices(GfxDynamicIndices*)
R_ShutdownDynamicIndices:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov dword [ebx+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AllocStaticVertexBuffer(IDirect3DVertexBuffer9**, int, char const*)
R_AllocStaticVertexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AllocStaticVertexBuffer_10
	xor eax, eax
	leave
	ret
R_AllocStaticVertexBuffer_10:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov ecx, [ebp+0x8]
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x8
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x68]
	test eax, eax
	js R_AllocStaticVertexBuffer_20
R_AllocStaticVertexBuffer_50:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ecx, [eax]
	mov dword [esp+0x10], 0x0
	lea edx, [ebp-0xc]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [ecx+0x2c]
	test eax, eax
	js R_AllocStaticVertexBuffer_30
	mov eax, [ebp-0xc]
R_AllocStaticVertexBuffer_40:
	leave
	ret
R_AllocStaticVertexBuffer_30:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x4], eax
	mov dword [esp], _cstring_directx_didnt_lo
	call va
	mov [esp], eax
	call R_FatalInitError
	mov eax, [ebp-0xc]
	jmp R_AllocStaticVertexBuffer_40
R_AllocStaticVertexBuffer_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_directx_didnt_cr1
	call va
	mov [esp], eax
	call R_FatalInitError
	jmp R_AllocStaticVertexBuffer_50
	nop


;R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9*)
R_FinishStaticIndexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	leave
	ret
	nop


;R_AllocDynamicVertexBuffer(IDirect3DVertexBuffer9**, int, char const*)
R_AllocDynamicVertexBuffer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_AllocDynamicVertexBuffer_10
	mov eax, g_OptimizeVBTransfers
	cmp byte [eax], 0x1
	sbb edx, edx
	and edx, 0xffc00000
	add edx, 0x400208
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov ecx, [eax]
	mov dword [esp+0x18], 0x0
	mov ebx, [ebp+0x8]
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x68]
	test eax, eax
	js R_AllocDynamicVertexBuffer_20
R_AllocDynamicVertexBuffer_10:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_AllocDynamicVertexBuffer_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_directx_didnt_cr
	call va
	mov [esp], eax
	call R_FatalInitError
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9*)
R_FinishStaticVertexBuffer:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	leave
	ret
	nop


;R_CreateParticleCloudBuffer()
R_CreateParticleCloudBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [esp+0x8], _cstring_particle_cloud_v
	mov dword [esp+0x4], 0x14000
	mov dword [esp], gfxBuf+0x74
	call R_AllocStaticVertexBuffer
	mov ebx, eax
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_CreateParticleCloudBuffer_10
R_CreateParticleCloudBuffer_90:
	xor eax, eax
R_CreateParticleCloudBuffer_110:
	mov [ebp-0x30], eax
	mov [ebp-0x2c], ebx
	mov dword [ebp-0x54], 0x0
R_CreateParticleCloudBuffer_80:
	cvtsi2ss xmm0, dword [ebp-0x54]
	movss [ebp-0x48], xmm0
	movzx eax, word [ebp-0x54]
	shl eax, 0x7
	mov [ebp-0x3a], ax
	mov eax, [ebp-0x2c]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x34], eax
	mov dword [ebp-0x50], 0x0
R_CreateParticleCloudBuffer_70:
	cvtsi2ss xmm0, dword [ebp-0x50]
	movss [ebp-0x44], xmm0
	mov [ebp-0x40], eax
	mov edi, [ebp-0x38]
	mov dword [ebp-0x4c], 0x0
	mov esi, eax
R_CreateParticleCloudBuffer_50:
	mov ebx, edi
	call ms_rand
	cvtsi2ss xmm3, eax
	divss xmm3, dword [_float_32767_00000000]
	addss xmm3, [ebp-0x48]
	mulss xmm3, [_float_0_25000000]
	subss xmm3, [_float_1_00000000]
	movss [ebp-0x78], xmm3
	call ms_rand
	cvtsi2ss xmm2, eax
	divss xmm2, dword [_float_32767_00000000]
	addss xmm2, [ebp-0x44]
	mulss xmm2, [_float_0_25000000]
	subss xmm2, [_float_1_00000000]
	movss [ebp-0x68], xmm2
	call ms_rand
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_32767_00000000]
	cvtsi2ss xmm0, dword [ebp-0x4c]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_12500000]
	subss xmm1, [_float_1_00000000]
	xor ecx, ecx
	xor edx, edx
	movss xmm3, dword [ebp-0x78]
	movss xmm2, dword [ebp-0x68]
R_CreateParticleCloudBuffer_20:
	movss [ebx], xmm3
	movss [ebx+0x4], xmm2
	movss [ebx+0x8], xmm1
	mov eax, [edx+cornerTexCoords.154840]
	mov [ebx+0xc], eax
	mov eax, [edx+cornerTexCoords.154840+0x4]
	mov [ebx+0x10], eax
	add ebx, 0x14
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, 0x4
	jnz R_CreateParticleCloudBuffer_20
	movzx eax, word [ebp-0x3a]
	add ax, [ebp-0x4c]
	lea ecx, [eax*4]
	mov edx, quadIndices.154841
R_CreateParticleCloudBuffer_30:
	mov eax, ecx
	add ax, [edx]
	mov [esi], ax
	add esi, 0x2
	add edx, 0x2
	cmp edx, 0x39294c
	jnz R_CreateParticleCloudBuffer_30
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x40], 0xc
	add edi, 0x50
	cmp dword [ebp-0x4c], 0x10
	jz R_CreateParticleCloudBuffer_40
	mov esi, [ebp-0x40]
	jmp R_CreateParticleCloudBuffer_50
R_CreateParticleCloudBuffer_40:
	add dword [ebp-0x50], 0x1
	add word [ebp-0x3a], 0x10
	add dword [ebp-0x38], 0x500
	add dword [ebp-0x34], 0xc0
	cmp dword [ebp-0x50], 0x8
	jz R_CreateParticleCloudBuffer_60
	mov eax, [ebp-0x34]
	jmp R_CreateParticleCloudBuffer_70
R_CreateParticleCloudBuffer_60:
	add dword [ebp-0x54], 0x1
	add dword [ebp-0x30], 0x600
	add dword [ebp-0x2c], 0x2800
	cmp dword [ebp-0x54], 0x8
	jnz R_CreateParticleCloudBuffer_80
	mov eax, [gfxBuf+0x78]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	mov eax, [gfxBuf+0x74]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x30]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CreateParticleCloudBuffer_10:
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], gfxBuf+0x78
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x65
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], 0x3000
	mov [esp], eax
	call dword [edx+0x6c]
	test eax, eax
	js R_CreateParticleCloudBuffer_90
	mov edx, [gfxBuf+0x78]
	mov ecx, [edx]
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x2c]
	test eax, eax
	js R_CreateParticleCloudBuffer_100
	mov eax, [ebp-0x1c]
	jmp R_CreateParticleCloudBuffer_110
R_CreateParticleCloudBuffer_100:
	mov eax, [gfxBuf+0x78]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	xor eax, eax
	jmp R_CreateParticleCloudBuffer_110
	add [eax], al


;R_DestroyParticleCloudBuffer()
R_DestroyParticleCloudBuffer:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [gfxBuf+0x74]
	test edx, edx
	jz R_DestroyParticleCloudBuffer_10
	mov ebx, alwaysfails
	jmp R_DestroyParticleCloudBuffer_20
R_DestroyParticleCloudBuffer_30:
	xor edx, edx
R_DestroyParticleCloudBuffer_20:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov edx, [ebx]
	test edx, edx
	jnz R_DestroyParticleCloudBuffer_30
	mov dword [gfxBuf+0x74], 0x0
R_DestroyParticleCloudBuffer_10:
	mov edx, [gfxBuf+0x78]
	test edx, edx
	jz R_DestroyParticleCloudBuffer_40
	mov ebx, alwaysfails
	jmp R_DestroyParticleCloudBuffer_50
R_DestroyParticleCloudBuffer_60:
	xor edx, edx
R_DestroyParticleCloudBuffer_50:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov eax, [ebx]
	test eax, eax
	jnz R_DestroyParticleCloudBuffer_60
	mov dword [gfxBuf+0x78], 0x0
R_DestroyParticleCloudBuffer_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_InitDynamicVertexBufferState(GfxVertexBufferState*, int)
R_InitDynamicVertexBufferState:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov dword [ebx], 0x0
	mov [ebx+0x4], edi
	lea esi, [ebx+0x8]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_InitDynamicVertexBufferState_10
	mov eax, g_OptimizeVBTransfers
	cmp byte [eax], 0x1
	sbb edx, edx
	and edx, 0xffc00000
	add edx, 0x400208
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov ecx, [eax]
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ecx+0x68]
	test eax, eax
	js R_InitDynamicVertexBufferState_20
R_InitDynamicVertexBufferState_10:
	mov dword [ebx+0xc], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitDynamicVertexBufferState_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_directx_didnt_cr
	call va
	mov [esp], eax
	call R_FatalInitError
	mov dword [ebx+0xc], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of r_buffers:
SECTION .data


;Initialized constant data of r_buffers:
SECTION .rdata
quadIndices.154841: dd 0x10000, 0x20002, 0x30001, 0x0, 0x0, 0x0, 0x0, 0x0
cornerTexCoords.154840: dd 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x80000000, 0x0, 0x0, 0x0, 0x243aeb, 0x243bd1, 0x243bab, 0x243b7e, 0x243b51, 0x243b1d, 0x243e6a, 0x243e8f, 0x243fa1, 0x243e6a, 0x243f88, 0x243e6a, 0x243e6a, 0x243e6a, 0x243f6f, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243f56, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243e6a, 0x243ecc, 0x243fba, 0x243fce, 0x243fe2, 0x243ff6, 0x24400a, 0x24401e, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_buffers:
SECTION .bss
gfxBuf: resb 0x2400e0


;All cstrings:
SECTION .rdata
_cstring_load_vertexbuffe:		db "Load_VertexBuffer",0
_cstring_couldnt_create_a:		db "Couldn",27h,"t create a %i-byte dynamic index buffer: %s",0
_cstring_directx_didnt_cr:		db "DirectX didn",27h,"t create a %i-byte dynamic vertex buffer: %s",0ah,0
_cstring_directx_didnt_lo:		db "DirectX didn",27h,"t lock a vertex buffer: %s",0ah,0
_cstring_directx_didnt_cr1:		db "DirectX didn",27h,"t create a %i-byte vertex buffer: %s",0ah,0
_cstring_particle_cloud_v:		db "Particle Cloud Verts",0



;All constant floats and doubles:
SECTION .rdata
_float_32767_00000000:		dd 0x46fffe00	; 32767
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_12500000:		dd 0x3e000000	; 0.125

