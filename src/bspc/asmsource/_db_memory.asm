;Imports of db_memory:
	extern DB_EnumXAssets_FastFile
	extern DB_GetAllXAssetOfType_FastFile


;Exports of db_memory:
	global DB_EnumXAssets
	global DB_GetAllXAssetOfType


SECTION .text


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


;DB_GetAllXAssetOfType(XAssetType, XAssetHeader*, int)
DB_GetAllXAssetOfType:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, DB_GetAllXAssetOfType_FastFile
	mov [ebp+0x10], edx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	pop ebx
	pop esi
	pop ebp
	jmp ecx


;Zero initialized global or static variables of db_memory:
SECTION .bss


;Initialized global or static variables of db_memory:
SECTION .data

;Initialized constant data of db_memory:
SECTION .rdata


;All cstrings:
SECTION .rdata

;All constant floats and doubles:
SECTION .rdata

