;Imports of db_memory:
	extern R_EnumImages
	extern R_EnumMaterials
	extern R_EnumTechniqueSets
	extern com_fileDataHashTable
	extern s_origHunkData
	extern useFastFile
	extern DB_EnumXAssets_FastFile
	extern Hunk_AddAsset
	extern DB_GetAllXAssetOfType_FastFile
	extern R_UnlockVertexBuffer
	extern R_FreeStaticVertexBuffer
	extern R_UnlockIndexBuffer
	extern R_FreeStaticIndexBuffer
	extern PMem_Alloc
	extern R_AllocStaticIndexBuffer
	extern PMem_GetOverAllocatedSize
	extern Com_Error
	extern R_AllocStaticVertexBuffer
	extern R_FinishStaticVertexBuffer
	extern R_FinishStaticIndexBuffer
	extern memcpy

;Exports of db_memory:
	global DB_EnumXAssets_LoadObj
	global DB_EnumXAssets
	global DB_GetAllXAssetOfType_LoadObj
	global DB_GetAllXAssetOfType
	global g_block_mem_name
	global g_block_mem_type
	global DB_FreeXZoneMemory
	global DB_AllocXZoneMemory
	global DB_FinishGeometryBlocks
	global DB_RecoverGeometryBuffers
	global DB_ReleaseGeometryBuffers


SECTION .text


;DB_EnumXAssets_LoadObj(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
DB_EnumXAssets_LoadObj:
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
	jz DB_EnumXAssets_LoadObj_10
	jle DB_EnumXAssets_LoadObj_20
	cmp eax, 0x5
	jz DB_EnumXAssets_LoadObj_30
	cmp eax, 0x6
	jnz DB_EnumXAssets_LoadObj_40
	mov [ebp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_EnumImages
DB_EnumXAssets_LoadObj_20:
	cmp eax, 0x3
	jz DB_EnumXAssets_LoadObj_50
DB_EnumXAssets_LoadObj_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_EnumXAssets_LoadObj_10:
	mov [ebp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_EnumMaterials
DB_EnumXAssets_LoadObj_30:
	mov [ebp+0xc], edi
	mov edx, [ebp-0x1c]
	mov [ebp+0x8], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_EnumTechniqueSets
DB_EnumXAssets_LoadObj_50:
	mov esi, com_fileDataHashTable
DB_EnumXAssets_LoadObj_90:
	mov ebx, [esi]
	test ebx, ebx
	jnz DB_EnumXAssets_LoadObj_60
	jmp DB_EnumXAssets_LoadObj_70
DB_EnumXAssets_LoadObj_80:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz DB_EnumXAssets_LoadObj_70
DB_EnumXAssets_LoadObj_60:
	cmp byte [ebx+0x8], 0x5
	jnz DB_EnumXAssets_LoadObj_80
	mov eax, [ebx]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp-0x1c]
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz DB_EnumXAssets_LoadObj_60
DB_EnumXAssets_LoadObj_70:
	add esi, 0x4
	mov edx, s_origHunkData
	cmp edx, esi
	jnz DB_EnumXAssets_LoadObj_90
	jmp DB_EnumXAssets_LoadObj_40
	nop


;DB_EnumXAssets(XAssetType, void (*)(XAssetHeader, void*), void*, unsigned char)
DB_EnumXAssets:
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
	jz DB_EnumXAssets_10
	mov ecx, DB_EnumXAssets_FastFile
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
DB_EnumXAssets_10:
	mov ecx, DB_EnumXAssets_LoadObj
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
DB_GetAllXAssetOfType_LoadObj:
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
	jz DB_GetAllXAssetOfType_LoadObj_10
	mov edx, DB_EnumXAssets_FastFile
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], Hunk_AddAsset
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov eax, [ebp-0x14]
	leave
	ret
DB_GetAllXAssetOfType_LoadObj_10:
	mov edx, DB_EnumXAssets_LoadObj
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], Hunk_AddAsset
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
	mov eax, [ebp-0x14]
	leave
	ret
	nop


;DB_GetAllXAssetOfType(XAssetType, XAssetHeader*, int)
DB_GetAllXAssetOfType:
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
	jz DB_GetAllXAssetOfType_10
	mov ecx, DB_GetAllXAssetOfType_FastFile
	mov [ebp+0x10], edx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx
DB_GetAllXAssetOfType_10:
	mov ecx, DB_GetAllXAssetOfType_LoadObj
	mov [ebp+0x10], edx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx


;DB_FreeXZoneMemory(XZoneMemory*)
DB_FreeXZoneMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz DB_FreeXZoneMemory_10
	mov eax, [esi+0x48]
	test eax, eax
	jz DB_FreeXZoneMemory_20
	mov [esp], ebx
	call R_UnlockVertexBuffer
DB_FreeXZoneMemory_20:
	mov [esp], ebx
	call R_FreeStaticVertexBuffer
	mov dword [esi+0x50], 0x0
DB_FreeXZoneMemory_10:
	mov ebx, [esi+0x54]
	test ebx, ebx
	jz DB_FreeXZoneMemory_30
	mov eax, [esi+0x4c]
	test eax, eax
	jz DB_FreeXZoneMemory_40
	mov [esp], ebx
	call R_UnlockIndexBuffer
DB_FreeXZoneMemory_40:
	mov [esp], ebx
	call R_FreeStaticIndexBuffer
	mov dword [esi+0x54], 0x0
DB_FreeXZoneMemory_30:
	mov eax, esi
	mov edx, 0x9
DB_FreeXZoneMemory_50:
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	add eax, 0x8
	sub edx, 0x1
	jnz DB_FreeXZoneMemory_50
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DB_AllocXZoneMemory(unsigned int*, char const*, XZoneMemory*, unsigned int)
DB_AllocXZoneMemory:
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
DB_AllocXZoneMemory_40:
	mov eax, [ebp-0x24]
	mov edx, [ebp+0x8]
	mov ebx, [edx+eax*4]
	test ebx, ebx
	jz DB_AllocXZoneMemory_10
	mov eax, [ebp-0x1c]
	cmp dword [eax], 0x1
	ja DB_AllocXZoneMemory_20
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1000
	lea eax, [ebx+0xf]
	mov [esp], eax
	call PMem_Alloc
	mov edi, eax
	test edi, edi
	jz DB_AllocXZoneMemory_30
DB_AllocXZoneMemory_70:
	mov [esi+0x4], ebx
	mov [esi], edi
DB_AllocXZoneMemory_10:
	add dword [ebp-0x24], 0x1
	add esi, 0x8
	add dword [ebp-0x20], 0x4
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x24], 0x9
	jnz DB_AllocXZoneMemory_40
	mov edx, [ebp+0x10]
	mov eax, [edx+0x3c]
	test eax, eax
	jnz DB_AllocXZoneMemory_50
DB_AllocXZoneMemory_90:
	mov eax, [edx+0x44]
	test eax, eax
	jz DB_AllocXZoneMemory_60
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x54
	mov [esp], eax
	call R_AllocStaticIndexBuffer
	mov edx, [ebp+0x10]
	mov [edx+0x4c], eax
DB_AllocXZoneMemory_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_AllocXZoneMemory_20:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x404
	mov dword [esp+0x4], 0x1000
	mov [esp], ebx
	call PMem_Alloc
	mov edi, eax
	test edi, edi
	jnz DB_AllocXZoneMemory_70
DB_AllocXZoneMemory_30:
	call PMem_GetOverAllocatedSize
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
	js DB_AllocXZoneMemory_80
	cvtsi2ss xmm0, ebx
DB_AllocXZoneMemory_100:
	mulss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_could_not_alloca
	mov dword [esp], 0x2
	call Com_Error
	jmp DB_AllocXZoneMemory_70
DB_AllocXZoneMemory_50:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	mov eax, edx
	add eax, 0x50
	mov [esp], eax
	call R_AllocStaticVertexBuffer
	mov edx, [ebp+0x10]
	mov [edx+0x48], eax
	mov edx, [ebp+0x10]
	jmp DB_AllocXZoneMemory_90
DB_AllocXZoneMemory_80:
	mov eax, ebx
	shr eax, 1
	mov edx, ebx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp DB_AllocXZoneMemory_100
	nop


;DB_FinishGeometryBlocks(XZoneMemory*)
DB_FinishGeometryBlocks:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x48]
	test edx, edx
	jz DB_FinishGeometryBlocks_10
	mov eax, [ebx+0x50]
	mov [esp], eax
	call R_FinishStaticVertexBuffer
	mov dword [ebx+0x48], 0x0
DB_FinishGeometryBlocks_10:
	mov eax, [ebx+0x4c]
	test eax, eax
	jz DB_FinishGeometryBlocks_20
	mov eax, [ebx+0x54]
	mov [esp], eax
	call R_FinishStaticIndexBuffer
	mov dword [ebx+0x4c], 0x0
DB_FinishGeometryBlocks_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;DB_RecoverGeometryBuffers(XZoneMemory*)
DB_RecoverGeometryBuffers:
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
	jnz DB_RecoverGeometryBuffers_10
DB_RecoverGeometryBuffers_50:
	lea esi, [ebx+0x40]
	mov eax, [esi+0x4]
	test eax, eax
	jnz DB_RecoverGeometryBuffers_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_RecoverGeometryBuffers_20:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	lea eax, [ebx+0x54]
	mov [esp], eax
	call R_AllocStaticIndexBuffer
	mov edi, eax
	mov edx, [ebx+0x40]
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov eax, [ebx+0x4c]
	test eax, eax
	jz DB_RecoverGeometryBuffers_30
	mov [ebx+0x4c], edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DB_RecoverGeometryBuffers_10:
	mov dword [esp+0x8], _cstring_db_allocxzonemem
	mov [esp+0x4], eax
	lea eax, [ebx+0x50]
	mov [esp], eax
	call R_AllocStaticVertexBuffer
	mov edi, eax
	mov edx, [ebx+0x38]
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov eax, [ebx+0x48]
	test eax, eax
	jz DB_RecoverGeometryBuffers_40
	mov [ebx+0x48], edi
	jmp DB_RecoverGeometryBuffers_50
DB_RecoverGeometryBuffers_30:
	mov eax, [ebx+0x54]
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_FinishStaticIndexBuffer
DB_RecoverGeometryBuffers_40:
	mov eax, [ebx+0x50]
	mov [esp], eax
	call R_FinishStaticVertexBuffer
	jmp DB_RecoverGeometryBuffers_50
	nop


;DB_ReleaseGeometryBuffers(XZoneMemory*)
DB_ReleaseGeometryBuffers:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x50]
	test ebx, ebx
	jz DB_ReleaseGeometryBuffers_10
	mov eax, [esi+0x48]
	test eax, eax
	jz DB_ReleaseGeometryBuffers_20
	mov [esp], ebx
	call R_UnlockVertexBuffer
DB_ReleaseGeometryBuffers_20:
	mov [esp], ebx
	call R_FreeStaticVertexBuffer
	mov dword [esi+0x50], 0x0
DB_ReleaseGeometryBuffers_10:
	mov ebx, [esi+0x54]
	test ebx, ebx
	jz DB_ReleaseGeometryBuffers_30
	mov ecx, [esi+0x4c]
	test ecx, ecx
	jz DB_ReleaseGeometryBuffers_40
	mov [esp], ebx
	call R_UnlockIndexBuffer
DB_ReleaseGeometryBuffers_40:
	mov [esp], ebx
	call R_FreeStaticIndexBuffer
	mov dword [esi+0x54], 0x0
DB_ReleaseGeometryBuffers_30:
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

