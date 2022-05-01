;Imports of com_stringtable:
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z14Com_PrintErroriPKcz
	extern useFastFile
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc

;Exports of com_stringtable:
	global _Z18StringTable_LookupPK11StringTableiPKci
	global _Z20StringTable_GetAssetPKcPPK11StringTable
	global _Z32StringTable_GetColumnValueForRowPK11StringTableii


SECTION .text


;StringTable_Lookup(StringTable const*, int, char const*, int)
_Z18StringTable_LookupPK11StringTableiPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	test esi, esi
	jz _Z18StringTable_LookupPK11StringTableiPKci_10
	mov eax, [esi+0x4]
	test eax, eax
	jz _Z18StringTable_LookupPK11StringTableiPKci_20
	cmp edi, eax
	jge _Z18StringTable_LookupPK11StringTableiPKci_30
_Z18StringTable_LookupPK11StringTableiPKci_110:
	mov eax, [esi+0x8]
	sub eax, 0x1
	js _Z18StringTable_LookupPK11StringTableiPKci_40
	mov ebx, eax
_Z18StringTable_LookupPK11StringTableiPKci_70:
	mov eax, ebx
	imul eax, [esi+0x4]
	lea eax, [edi+eax]
	mov edx, [esi+0xc]
	mov eax, [edx+eax*4]
	test eax, eax
	jz _Z18StringTable_LookupPK11StringTableiPKci_50
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18StringTable_LookupPK11StringTableiPKci_60
_Z18StringTable_LookupPK11StringTableiPKci_50:
	sub ebx, 0x1
	mov eax, 0xffffffff
	cmp eax, ebx
	jnz _Z18StringTable_LookupPK11StringTableiPKci_70
_Z18StringTable_LookupPK11StringTableiPKci_40:
	mov ebx, 0xffffffff
	mov eax, [esi+0x4]
	cmp [ebp+0x14], eax
	jl _Z18StringTable_LookupPK11StringTableiPKci_80
_Z18StringTable_LookupPK11StringTableiPKci_90:
	mov eax, _cstring_null
_Z18StringTable_LookupPK11StringTableiPKci_100:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18StringTable_LookupPK11StringTableiPKci_20:
	mov ebx, 0xffffffff
_Z18StringTable_LookupPK11StringTableiPKci_120:
	cmp [ebp+0x14], eax
	jge _Z18StringTable_LookupPK11StringTableiPKci_90
_Z18StringTable_LookupPK11StringTableiPKci_80:
	cmp ebx, [esi+0x8]
	jge _Z18StringTable_LookupPK11StringTableiPKci_90
	test ebx, ebx
	js _Z18StringTable_LookupPK11StringTableiPKci_90
	mov edx, [ebp+0x14]
	test edx, edx
	js _Z18StringTable_LookupPK11StringTableiPKci_90
	imul ebx, eax
	mov edx, [ebp+0x14]
	add edx, ebx
	mov eax, [esi+0xc]
	mov eax, [eax+edx*4]
	test eax, eax
	jnz _Z18StringTable_LookupPK11StringTableiPKci_100
	jmp _Z18StringTable_LookupPK11StringTableiPKci_90
_Z18StringTable_LookupPK11StringTableiPKci_30:
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_unable_to_compar
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18StringTable_LookupPK11StringTableiPKci_110
_Z18StringTable_LookupPK11StringTableiPKci_10:
	mov dword [esp+0x4], _cstring_unable_to_find_t
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov eax, _cstring_null
	jmp _Z18StringTable_LookupPK11StringTableiPKci_100
_Z18StringTable_LookupPK11StringTableiPKci_60:
	mov eax, [esi+0x4]
	jmp _Z18StringTable_LookupPK11StringTableiPKci_120
	add [eax], al


;StringTable_GetAsset(char const*, StringTable const**)
_Z20StringTable_GetAssetPKcPPK11StringTable:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z20StringTable_GetAssetPKcPPK11StringTable_10
	mov dword [esp+0x4], _cstring_trying_to_use_a_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z20StringTable_GetAssetPKcPPK11StringTable_10:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x20
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov edx, [ebp+0xc]
	mov [edx], eax
	leave
	ret
	nop


;StringTable_GetColumnValueForRow(StringTable const*, int, int)
_Z32StringTable_GetColumnValueForRowPK11StringTableii:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov eax, [ecx+0x4]
	cmp eax, edx
	jle _Z32StringTable_GetColumnValueForRowPK11StringTableii_10
	mov ebx, [ebp+0xc]
	cmp [ecx+0x8], ebx
	jg _Z32StringTable_GetColumnValueForRowPK11StringTableii_20
_Z32StringTable_GetColumnValueForRowPK11StringTableii_10:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
_Z32StringTable_GetColumnValueForRowPK11StringTableii_20:
	test ebx, ebx
	js _Z32StringTable_GetColumnValueForRowPK11StringTableii_10
	test edx, edx
	js _Z32StringTable_GetColumnValueForRowPK11StringTableii_10
	imul eax, ebx
	add edx, eax
	mov eax, [ecx+0xc]
	mov eax, [eax+edx*4]
	test eax, eax
	jz _Z32StringTable_GetColumnValueForRowPK11StringTableii_10
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of com_stringtable:
SECTION .data


;Initialized constant data of com_stringtable:
SECTION .rdata


;Zero initialized global or static variables of com_stringtable:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_unable_to_compar:		db "Unable to compare against column number %i - there are only %i columns",0
_cstring_unable_to_find_t:		db "Unable to find the lookup table in the fastfile, aborting lookup",0ah,0
_cstring_trying_to_use_a_:		db "Trying to use a string table with fast file loading disabled.",0



;All constant floats and doubles:
SECTION .rdata

