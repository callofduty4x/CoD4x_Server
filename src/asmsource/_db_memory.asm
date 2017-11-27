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


;Zero initialized global or static variables of db_memory:
SECTION .bss


;Initialized global or static variables of db_memory:
SECTION .data

;Initialized constant data of db_memory:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_db_allocxzonemem:		db "DB_AllocXZoneMemory",0
_cstring_could_not_alloca:		db "Could not allocate %.2f MB of type ",27h,"%s",27h," for zone ",27h,"%s",27h," needed an additional %.2f MB",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000095:		dd 0x35800000	; 9.53674e-07

