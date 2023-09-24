;Imports of db_memory:
	extern _Z12R_EnumImagesPFv12XAssetHeaderPvES0_
	extern _Z15R_EnumMaterialsPFv12XAssetHeaderPvES0_
	extern _Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0_
	extern com_fileDataHashTable
	extern s_origHunkData
	extern useFastFile
	extern _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h
	extern _Z13Hunk_AddAsset12XAssetHeaderPv
	extern _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi
	extern _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	extern _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	extern _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
	extern _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9
	extern _Z10PMem_Allocjjjj
	extern _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc
	extern _Z25PMem_GetOverAllocatedSizev
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	extern _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	extern _Z25R_FinishStaticIndexBufferP21IDirect3DIndexBuffer9
	extern memcpy

;Exports of db_memory:
	global _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h
	global _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	global _Z29DB_GetAllXAssetOfType_LoadObj10XAssetTypeP12XAssetHeaderi
	global _Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi
	global g_block_mem_name
	global g_block_mem_type
	global _Z18DB_FreeXZoneMemoryP11XZoneMemory
	global _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj
	global _Z23DB_FinishGeometryBlocksP11XZoneMemory
	global _Z25DB_RecoverGeometryBuffersP11XZoneMemory
	global _Z25DB_ReleaseGeometryBuffersP11XZoneMemory


SECTION .text


;DB_EnumXAssets_LoadObj(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp-0x1c], edx
	mov edi, [ebp+0x10]
	cmp eax, 0x4
	jz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_10
	jle _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_20
	cmp eax, 0x5
	jz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_30
	cmp eax, 0x6
	jnz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_40
	mov [ebp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z12R_EnumImagesPFv12XAssetHeaderPvES0_
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_20:
	cmp eax, 0x3
	jz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_50
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_10:
	mov [ebp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z15R_EnumMaterialsPFv12XAssetHeaderPvES0_
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_30:
	mov [ebp+0xc], edi
	mov edx, [ebp-0x1c]
	mov [ebp+0x8], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0_
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_50:
	mov esi, com_fileDataHashTable
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_90:
	mov ebx, [esi]
	test ebx, ebx
	jnz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_60
	jmp _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_70
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_80:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_70
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_60:
	cmp byte [ebx+0x8], 0x5
	jnz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_80
	mov eax, [ebx]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp-0x1c]
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_60
_Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_70:
	add esi, 0x4
	mov edx, s_origHunkData
	cmp edx, esi
	jnz _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_90
	jmp _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h_40
	nop


;DB_EnumXAssets(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
_Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	movzx edx, byte [ebp+0x14]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h_10
	mov ecx, _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h
	movzx eax, dl
	mov [ebp+0x14], eax
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
_Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h_10:
	mov ecx, _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h
	movzx eax, dl
	mov [ebp+0x14], eax
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
	nop


;DB_GetAllXAssetOfType_LoadObj(XAssetType, XAssetHeader*, int)
_Z29DB_GetAllXAssetOfType_LoadObj10XAssetTypeP12XAssetHeaderi:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov dword [ebp-0x14], 0x0
	mov eax, [ebp+0x10]
	mov [ebp-0x10], eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z29DB_GetAllXAssetOfType_LoadObj10XAssetTypeP12XAssetHeaderi_10
	mov edx, _Z23DB_EnumXAssets_FastFile10XAssetTypePFv12XAssetHeaderPvES1_h
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z13Hunk_AddAsset12XAssetHeaderPv
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov eax, [ebp-0x14]
	leave
	ret
_Z29DB_GetAllXAssetOfType_LoadObj10XAssetTypeP12XAssetHeaderi_10:
	mov edx, _Z22DB_EnumXAssets_LoadObj10XAssetTypePFv12XAssetHeaderPvES1_h
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z13Hunk_AddAsset12XAssetHeaderPv
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov eax, [ebp-0x14]
	leave
	ret
	nop


;DB_GetAllXAssetOfType(XAssetType, XAssetHeader*, int)
_Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi_10
	mov ecx, _Z30DB_GetAllXAssetOfType_FastFile10XAssetTypeP12XAssetHeaderi
	mov [ebp+0x10], edx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi_10:
	mov ecx, _Z29DB_GetAllXAssetOfType_LoadObj10XAssetTypeP12XAssetHeaderi
	mov [ebp+0x10], edx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx


;DB_FreeXZoneMemory(XZoneMemory*)
_Z18DB_FreeXZoneMemoryP11XZoneMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz _Z18DB_FreeXZoneMemoryP11XZoneMemory_10
	mov eax, [esi+0x48]
	test eax, eax
	jz _Z18DB_FreeXZoneMemoryP11XZoneMemory_20
	mov [esp], ebx
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
_Z18DB_FreeXZoneMemoryP11XZoneMemory_20:
	mov [esp], ebx
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [esi+0x50], 0x0
_Z18DB_FreeXZoneMemoryP11XZoneMemory_10:
	mov ebx, [esi+0x54]
	test ebx, ebx
	jz _Z18DB_FreeXZoneMemoryP11XZoneMemory_30
	mov eax, [esi+0x4c]
	test eax, eax
	jz _Z18DB_FreeXZoneMemoryP11XZoneMemory_40
	mov [esp], ebx
	call _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
_Z18DB_FreeXZoneMemoryP11XZoneMemory_40:
	mov [esp], ebx
	call _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9
	mov dword [esi+0x54], 0x0
_Z18DB_FreeXZoneMemoryP11XZoneMemory_30:
	mov eax, esi
	mov edx, 0x9
_Z18DB_FreeXZoneMemoryP11XZoneMemory_50:
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	add eax, 0x8
	sub edx, 0x1
	jnz _Z18DB_FreeXZoneMemoryP11XZoneMemory_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DB_AllocXZoneMemory(unsigned int*, char const*, XZoneMemory*, unsigned int)
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], g_block_mem_name
	mov dword [ebp-0x1c], g_block_mem_type
	mov esi, [ebp+0x10]
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_40:
	mov eax, [ebp-0x24]
	mov edx, [ebp+0x8]
	mov ebx, [edx+eax*4]
	test ebx, ebx
	jz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_10
	mov eax, [ebp-0x1c]
	cmp dword [eax], 0x1
	ja _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_20
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1000
	lea eax, [ebx+0xf]
	mov [esp], eax
	call _Z10PMem_Allocjjjj
	mov edi, eax
	test edi, edi
	jz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_30
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_70:
	mov [esi+0x4], ebx
	mov [esi], edi
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_10:
	add dword [ebp-0x24], 0x1
	add esi, 0x8
	add dword [ebp-0x20], 0x4
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x24], 0x9
	jnz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_40
	mov edx, [ebp+0x10]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_50
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_90:
	mov eax, [edx+0x44]
	test eax, eax
	jz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_60
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x54
	mov [esp], eax
	call _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc
	mov edx, [ebp+0x10]
	mov [edx+0x4c], eax
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_20:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x404
	mov dword [esp+0x4], 0x1000
	mov [esp], ebx
	call _Z10PMem_Allocjjjj
	mov edi, eax
	test edi, edi
	jnz _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_70
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_30:
	call _Z25PMem_GetOverAllocatedSizev
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00000095]
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x18], xmm0
	mov edx, [ebp+0xc]
	mov [esp+0x14], edx
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp+0x10], eax
	test ebx, ebx
	js _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_80
	cvtsi2ss xmm0, ebx
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_100:
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_70
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_50:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x50
	mov [esp], eax
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov edx, [ebp+0x10]
	mov [edx+0x48], eax
	mov edx, [ebp+0x10]
	jmp _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_90
_Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_80:
	mov eax, ebx
	shr eax, 1
	mov edx, ebx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z19DB_AllocXZoneMemoryPjPKcP11XZoneMemoryj_100
	nop


;DB_FinishGeometryBlocks(XZoneMemory*)
_Z23DB_FinishGeometryBlocksP11XZoneMemory:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x48]
	test edx, edx
	jz _Z23DB_FinishGeometryBlocksP11XZoneMemory_10
	mov eax, [ebx+0x50]
	mov [esp], eax
	call _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [ebx+0x48], 0x0
_Z23DB_FinishGeometryBlocksP11XZoneMemory_10:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz _Z23DB_FinishGeometryBlocksP11XZoneMemory_20
	mov eax, [ebx+0x54]
	mov [esp], eax
	call _Z25R_FinishStaticIndexBufferP21IDirect3DIndexBuffer9
	mov dword [ebx+0x4c], 0x0
_Z23DB_FinishGeometryBlocksP11XZoneMemory_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;DB_RecoverGeometryBuffers(XZoneMemory*)
_Z25DB_RecoverGeometryBuffersP11XZoneMemory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	lea esi, [ebx+0x38]
	mov eax, [esi+0x4]
	test eax, eax
	jnz _Z25DB_RecoverGeometryBuffersP11XZoneMemory_10
_Z25DB_RecoverGeometryBuffersP11XZoneMemory_50:
	lea esi, [ebx+0x40]
	mov eax, [esi+0x4]
	test eax, eax
	jnz _Z25DB_RecoverGeometryBuffersP11XZoneMemory_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_RecoverGeometryBuffersP11XZoneMemory_20:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	lea eax, [ebx+0x54]
	mov [esp], eax
	call _Z24R_AllocStaticIndexBufferPP21IDirect3DIndexBuffer9iPKc
	mov edi, eax
	mov edx, [ebx+0x40]
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov eax, [ebx+0x4c]
	test eax, eax
	jz _Z25DB_RecoverGeometryBuffersP11XZoneMemory_30
	mov [ebx+0x4c], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25DB_RecoverGeometryBuffersP11XZoneMemory_10:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	lea eax, [ebx+0x50]
	mov [esp], eax
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov edi, eax
	mov edx, [ebx+0x38]
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov eax, [ebx+0x48]
	test eax, eax
	jz _Z25DB_RecoverGeometryBuffersP11XZoneMemory_40
	mov [ebx+0x48], edi
	jmp _Z25DB_RecoverGeometryBuffersP11XZoneMemory_50
_Z25DB_RecoverGeometryBuffersP11XZoneMemory_30:
	mov eax, [ebx+0x54]
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z25R_FinishStaticIndexBufferP21IDirect3DIndexBuffer9
_Z25DB_RecoverGeometryBuffersP11XZoneMemory_40:
	mov eax, [ebx+0x50]
	mov [esp], eax
	call _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	jmp _Z25DB_RecoverGeometryBuffersP11XZoneMemory_50
	nop


;DB_ReleaseGeometryBuffers(XZoneMemory*)
_Z25DB_ReleaseGeometryBuffersP11XZoneMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz _Z25DB_ReleaseGeometryBuffersP11XZoneMemory_10
	mov eax, [esi+0x48]
	test eax, eax
	jz _Z25DB_ReleaseGeometryBuffersP11XZoneMemory_20
	mov [esp], ebx
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
_Z25DB_ReleaseGeometryBuffersP11XZoneMemory_20:
	mov [esp], ebx
	call _Z24R_FreeStaticVertexBufferP22IDirect3DVertexBuffer9
	mov dword [esi+0x50], 0x0
_Z25DB_ReleaseGeometryBuffersP11XZoneMemory_10:
	mov ebx, [esi+0x54]
	test ebx, ebx
	jz _Z25DB_ReleaseGeometryBuffersP11XZoneMemory_30
	mov ecx, [esi+0x4c]
	test ecx, ecx
	jz _Z25DB_ReleaseGeometryBuffersP11XZoneMemory_40
	mov [esp], ebx
	call _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
_Z25DB_ReleaseGeometryBuffersP11XZoneMemory_40:
	mov [esp], ebx
	call _Z23R_FreeStaticIndexBufferP21IDirect3DIndexBuffer9
	mov dword [esi+0x54], 0x0
_Z25DB_ReleaseGeometryBuffersP11XZoneMemory_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of db_memory:
SECTION .data
g_block_mem_name: dd _cstring_temp, _cstring_runtime, _cstring_large_runtime, _cstring_physical_runtime, _cstring_virtual, _cstring_large, _cstring_physical, _cstring_vertex, _cstring_index, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_block_mem_type: dd 0x0, 0x1, 0x1, 0x2, 0x1, 0x1, 0x2, 0x2, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of db_memory:
SECTION .rdata


;Zero initialized global or static variables of db_memory:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_db_allocxzonemem:		db "DB_AllocXZoneMemory",0
_cstring_could_not_alloca:		db "Could not allocate %.2f MB of type ",27h,"%s",27h," for zone ",27h,"%s",27h," needed an additional %.2f MB",0
_cstring_temp:		db "temp",0
_cstring_runtime:		db "runtime",0
_cstring_large_runtime:		db "large_runtime",0
_cstring_physical_runtime:		db "physical_runtime",0
_cstring_virtual:		db "virtual",0
_cstring_large:		db "large",0
_cstring_physical:		db "physical",0
_cstring_vertex:		db "vertex",0
_cstring_index:		db "index",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000095:		dd 0x35800000	; 9.53674e-07

