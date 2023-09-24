;Imports of r_buffers:
	extern r_loadForRenderer
	extern memcpy
	extern _Z16R_FatalLockErrorl
	extern Z_VirtualAllocInternal
	extern g_OptimizeVBTransfers
	extern dx_ctx
	extern _Z17R_InitTempSkinBufv
	extern _Z18R_ErrorDescriptionl
	extern _Z2vaPKcz
	extern _Z16R_FatalInitErrorPKc
	extern alwaysfails
	extern _Z21R_ShutdownTempSkinBufv
	extern Z_VirtualFreeInternal
	extern _Z7ms_randv

;Exports of r_buffers:
	global quadIndices.154841
	global cornerTexCoords.154840
	global _Z17Load_VertexBufferPP22IDirect3DVertexBuffer9Pvi
	global _Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii
	global _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	global _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
	global _Z20R_InitDynamicIndicesP17GfxDynamicIndicesi
	global _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	global _Z22R_CreateDynamicBuffersv
	global _Z23R_DestroyDynamicBuffersv
	global _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9
	global _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc
	global _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	global _Z24R_ShutdownDynamicIndicesP17GfxDynamicIndices
	global _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	global _Z25R_FinishStaticIndexBufferP21IDirect3DIndexBuffer9
	global _Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc
	global _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	global _Z27R_CreateParticleCloudBufferv
	global _Z28R_DestroyParticleCloudBufferv
	global _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei
	global gfxBuf


SECTION .text


;Load_VertexBuffer(IDirect3DVertexBuffer9**, void*, int)
_Z17Load_VertexBufferPP22IDirect3DVertexBuffer9Pvi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17Load_VertexBufferPP22IDirect3DVertexBuffer9Pvi_10
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z17Load_VertexBufferPP22IDirect3DVertexBuffer9Pvi_10
	mov dword [esp+0x8], _cstring_load_vertexbuffe
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
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
_Z17Load_VertexBufferPP22IDirect3DVertexBuffer9Pvi_10:
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_LockIndexBuffer(IDirect3DIndexBuffer9*, int, int, int)
_Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii:
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
	js _Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii_10
	mov eax, [ebp-0xc]
	leave
	ret
_Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii_10:
	mov [esp], eax
	call _Z16R_FatalLockErrorl
	mov eax, [ebp-0xc]
	leave
	ret
	nop


;R_LockVertexBuffer(IDirect3DVertexBuffer9*, int, int, int)
_Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii:
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
	js _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii_10
	mov eax, [ebp-0xc]
	leave
	ret
_Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii_10:
	mov [esp], eax
	call _Z16R_FatalLockErrorl
	mov eax, [ebp-0xc]
	leave
	ret
	nop


;R_UnlockIndexBuffer(IDirect3DIndexBuffer9*)
_Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9:
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
_Z20R_InitDynamicIndicesP17GfxDynamicIndicesi:
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
_Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9:
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
_Z22R_CreateDynamicBuffersv:
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
	jz _Z22R_CreateDynamicBuffersv_10
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
	js _Z22R_CreateDynamicBuffersv_20
_Z22R_CreateDynamicBuffersv_10:
	mov eax, gfxBuf+0x60
	mov dword [eax+0xc], 0x0
	mov dword [gfxBuf+0x70], gfxBuf+0x60
	mov dword [gfxBuf+0x4c], 0x0
	mov dword [gfxBuf+0x50], 0x480000
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jz _Z22R_CreateDynamicBuffersv_30
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
	mov dword [esp+0x4], 0x480000
	mov [esp], eax
	call dword [ecx+0x68]
	test eax, eax
	js _Z22R_CreateDynamicBuffersv_40
_Z22R_CreateDynamicBuffersv_30:
	mov eax, gfxBuf+0x4c
	mov dword [eax+0xc], 0x0
	call _Z17R_InitTempSkinBufv
	mov dword [gfxBuf+0x38], 0x0
	mov dword [gfxBuf+0x3c], 0x100000
	mov esi, r_loadForRenderer
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz _Z22R_CreateDynamicBuffersv_50
_Z22R_CreateDynamicBuffersv_100:
	mov dword [gfxBuf+0x48], gfxBuf+0x38
	xor ebx, ebx
_Z22R_CreateDynamicBuffersv_80:
	mov eax, ebx
	shl eax, 0x4
	add eax, 0x10
	lea edx, [eax+gfxBuf]
	mov dword [eax+gfxBuf], 0x0
	mov dword [edx+0x4], 0x100000
	lea ecx, [edx+0x8]
	mov eax, [esi]
	cmp byte [eax+0xc], 0x0
	jnz _Z22R_CreateDynamicBuffersv_60
_Z22R_CreateDynamicBuffersv_90:
	add ebx, 0x1
	cmp ebx, 0x2
	jnz _Z22R_CreateDynamicBuffersv_70
	mov dword [gfxBuf+0x30], gfxBuf+0x10
	mov dword [gfxBuf+0x34], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z22R_CreateDynamicBuffersv_70:
	mov esi, r_loadForRenderer
	jmp _Z22R_CreateDynamicBuffersv_80
_Z22R_CreateDynamicBuffersv_60:
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
	jns _Z22R_CreateDynamicBuffersv_90
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x200000
	mov dword [esp], _cstring_couldnt_create_a
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	jmp _Z22R_CreateDynamicBuffersv_90
_Z22R_CreateDynamicBuffersv_50:
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
	jns _Z22R_CreateDynamicBuffersv_100
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x200000
	mov dword [esp], _cstring_couldnt_create_a
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	jmp _Z22R_CreateDynamicBuffersv_100
_Z22R_CreateDynamicBuffersv_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100000
	mov dword [esp], _cstring_directx_didnt_cr
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	jmp _Z22R_CreateDynamicBuffersv_10
_Z22R_CreateDynamicBuffersv_40:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x480000
	mov dword [esp], _cstring_directx_didnt_cr
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	jmp _Z22R_CreateDynamicBuffersv_30


;R_DestroyDynamicBuffers()
_Z23R_DestroyDynamicBuffersv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, gfxBuf
	mov edi, alwaysfails
_Z23R_DestroyDynamicBuffersv_30:
	lea ebx, [esi+0x18]
	mov eax, [esi+0x18]
	test eax, eax
	jz _Z23R_DestroyDynamicBuffersv_10
_Z23R_DestroyDynamicBuffersv_20:
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebx], 0x0
	mov eax, [edi]
	test eax, eax
	jnz _Z23R_DestroyDynamicBuffersv_20
_Z23R_DestroyDynamicBuffersv_10:
	add esi, 0x10
	mov eax, gfxBuf+0x20
	cmp eax, esi
	jnz _Z23R_DestroyDynamicBuffersv_30
	mov eax, [gfxBuf+0x40]
	test eax, eax
	jz _Z23R_DestroyDynamicBuffersv_40
	mov ebx, alwaysfails
_Z23R_DestroyDynamicBuffersv_50:
	mov eax, [gfxBuf+0x40]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x40], 0x0
	mov eax, [ebx]
	test eax, eax
	jnz _Z23R_DestroyDynamicBuffersv_50
_Z23R_DestroyDynamicBuffersv_40:
	mov edi, [gfxBuf+0x54]
	test edi, edi
	jz _Z23R_DestroyDynamicBuffersv_60
	mov ebx, alwaysfails
_Z23R_DestroyDynamicBuffersv_70:
	mov eax, [gfxBuf+0x54]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x54], 0x0
	mov esi, [ebx]
	test esi, esi
	jnz _Z23R_DestroyDynamicBuffersv_70
_Z23R_DestroyDynamicBuffersv_60:
	mov ebx, [gfxBuf+0x68]
	test ebx, ebx
	jz _Z23R_DestroyDynamicBuffersv_80
	mov ebx, alwaysfails
_Z23R_DestroyDynamicBuffersv_90:
	mov eax, [gfxBuf+0x68]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [gfxBuf+0x68], 0x0
	mov ecx, [ebx]
	test ecx, ecx
	jnz _Z23R_DestroyDynamicBuffersv_90
_Z23R_DestroyDynamicBuffersv_80:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21R_ShutdownTempSkinBufv


;R_FreeStaticIndexBuffer(IDirect3DIndexBuffer9*)
_Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, alwaysfails
	jmp _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9_10
_Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9_20:
	xor edx, edx
_Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9_10:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov edx, [ebx]
	test edx, edx
	jnz _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AllocStaticIndexBuffer(IDirect3DIndexBuffer9**, int, char const*)
_Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_10
_Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_20:
	xor eax, eax
	leave
	ret
_Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_10:
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
	js _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_20
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
	js _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_30
	mov eax, [ebp-0xc]
	leave
	ret
_Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc_30:
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
_Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	mov ebx, alwaysfails
	jmp _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9_10
_Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9_20:
	xor edx, edx
_Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9_10:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov eax, [ebx]
	test eax, eax
	jnz _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_ShutdownDynamicIndices(GfxDynamicIndices*)
_Z24R_ShutdownDynamicIndicesP17GfxDynamicIndices:
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
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_10
	xor eax, eax
	leave
	ret
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_10:
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
	js _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_20
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_50:
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
	js _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_30
	mov eax, [ebp-0xc]
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_40:
	leave
	ret
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_30:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x4], eax
	mov dword [esp], _cstring_directx_didnt_lo
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	mov eax, [ebp-0xc]
	jmp _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_40
_Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_directx_didnt_cr1
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	jmp _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc_50
	nop


;R_FinishStaticIndexBuffer(IDirect3DIndexBuffer9*)
_Z25R_FinishStaticIndexBufferP21IDirect3DIndexBuffer9:
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
_Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc_10
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
	js _Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc_20
_Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc_10:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z26R_AllocDynamicVertexBufferPP22IDirect3DVertexBuffer9iPKc_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_directx_didnt_cr
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;R_FinishStaticVertexBuffer(IDirect3DVertexBuffer9*)
_Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9:
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
_Z27R_CreateParticleCloudBufferv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov dword [esp+0x8], _cstring_particle_cloud_v
	mov dword [esp+0x4], 0x14000
	mov dword [esp], gfxBuf+0x74
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov ebx, eax
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z27R_CreateParticleCloudBufferv_10
_Z27R_CreateParticleCloudBufferv_90:
	xor eax, eax
_Z27R_CreateParticleCloudBufferv_110:
	mov [ebp-0x30], eax
	mov [ebp-0x2c], ebx
	mov dword [ebp-0x54], 0x0
_Z27R_CreateParticleCloudBufferv_80:
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
_Z27R_CreateParticleCloudBufferv_70:
	cvtsi2ss xmm0, dword [ebp-0x50]
	movss [ebp-0x44], xmm0
	mov [ebp-0x40], eax
	mov edi, [ebp-0x38]
	mov dword [ebp-0x4c], 0x0
	mov esi, eax
_Z27R_CreateParticleCloudBufferv_50:
	mov ebx, edi
	call _Z7ms_randv
	cvtsi2ss xmm3, eax
	divss xmm3, dword [_float_32767_00000000]
	addss xmm3, [ebp-0x48]
	mulss xmm3, [_float_0_25000000]
	subss xmm3, [_float_1_00000000]
	movss [ebp-0x78], xmm3
	call _Z7ms_randv
	cvtsi2ss xmm2, eax
	divss xmm2, dword [_float_32767_00000000]
	addss xmm2, [ebp-0x44]
	mulss xmm2, [_float_0_25000000]
	subss xmm2, [_float_1_00000000]
	movss [ebp-0x68], xmm2
	call _Z7ms_randv
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
_Z27R_CreateParticleCloudBufferv_20:
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
	jnz _Z27R_CreateParticleCloudBufferv_20
	movzx eax, word [ebp-0x3a]
	add ax, [ebp-0x4c]
	lea ecx, [eax*4]
	mov edx, quadIndices.154841
_Z27R_CreateParticleCloudBufferv_30:
	mov eax, ecx
	add ax, [edx]
	mov [esi], ax
	add esi, 0x2
	add edx, 0x2
	cmp edx, 0x39294c
	jnz _Z27R_CreateParticleCloudBufferv_30
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x40], 0xc
	add edi, 0x50
	cmp dword [ebp-0x4c], 0x10
	jz _Z27R_CreateParticleCloudBufferv_40
	mov esi, [ebp-0x40]
	jmp _Z27R_CreateParticleCloudBufferv_50
_Z27R_CreateParticleCloudBufferv_40:
	add dword [ebp-0x50], 0x1
	add word [ebp-0x3a], 0x10
	add dword [ebp-0x38], 0x500
	add dword [ebp-0x34], 0xc0
	cmp dword [ebp-0x50], 0x8
	jz _Z27R_CreateParticleCloudBufferv_60
	mov eax, [ebp-0x34]
	jmp _Z27R_CreateParticleCloudBufferv_70
_Z27R_CreateParticleCloudBufferv_60:
	add dword [ebp-0x54], 0x1
	add dword [ebp-0x30], 0x600
	add dword [ebp-0x2c], 0x2800
	cmp dword [ebp-0x54], 0x8
	jnz _Z27R_CreateParticleCloudBufferv_80
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
_Z27R_CreateParticleCloudBufferv_10:
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
	js _Z27R_CreateParticleCloudBufferv_90
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
	js _Z27R_CreateParticleCloudBufferv_100
	mov eax, [ebp-0x1c]
	jmp _Z27R_CreateParticleCloudBufferv_110
_Z27R_CreateParticleCloudBufferv_100:
	mov eax, [gfxBuf+0x78]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	xor eax, eax
	jmp _Z27R_CreateParticleCloudBufferv_110
	add [eax], al


;R_DestroyParticleCloudBuffer()
_Z28R_DestroyParticleCloudBufferv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [gfxBuf+0x74]
	test edx, edx
	jz _Z28R_DestroyParticleCloudBufferv_10
	mov ebx, alwaysfails
	jmp _Z28R_DestroyParticleCloudBufferv_20
_Z28R_DestroyParticleCloudBufferv_30:
	xor edx, edx
_Z28R_DestroyParticleCloudBufferv_20:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov edx, [ebx]
	test edx, edx
	jnz _Z28R_DestroyParticleCloudBufferv_30
	mov dword [gfxBuf+0x74], 0x0
_Z28R_DestroyParticleCloudBufferv_10:
	mov edx, [gfxBuf+0x78]
	test edx, edx
	jz _Z28R_DestroyParticleCloudBufferv_40
	mov ebx, alwaysfails
	jmp _Z28R_DestroyParticleCloudBufferv_50
_Z28R_DestroyParticleCloudBufferv_60:
	xor edx, edx
_Z28R_DestroyParticleCloudBufferv_50:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov eax, [ebx]
	test eax, eax
	jnz _Z28R_DestroyParticleCloudBufferv_60
	mov dword [gfxBuf+0x78], 0x0
_Z28R_DestroyParticleCloudBufferv_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_InitDynamicVertexBufferState(GfxVertexBufferState*, int)
_Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei:
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
	jz _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei_10
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
	js _Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei_20
_Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei_10:
	mov dword [ebx+0xc], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_InitDynamicVertexBufferStateP20GfxVertexBufferStatei_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_directx_didnt_cr
	call _Z2vaPKcz
	mov [esp], eax
	call _Z16R_FatalInitErrorPKc
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
cornerTexCoords.154840: dd 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0x80000000, 0x0, 0x0, 0x0


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

