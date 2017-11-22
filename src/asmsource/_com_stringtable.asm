;Imports of com_stringtable:
	extern Q_stricmp
	extern Com_Error
	extern Com_PrintError
	extern useFastFile
	extern DB_FindXAssetHeaderReal

;Exports of com_stringtable:
	global StringTable_Lookup
	global StringTable_GetAsset
	global StringTable_GetColumnValueForRow


SECTION .text


;StringTable_Lookup(StringTable const*, int, char const*, int)
StringTable_Lookup:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	test esi, esi
	jz StringTable_Lookup_10
	mov eax, [esi+0x4]
	test eax, eax
	jz StringTable_Lookup_20
	cmp edi, eax
	jge StringTable_Lookup_30
StringTable_Lookup_110:
	mov eax, [esi+0x8]
	sub eax, 0x1
	js StringTable_Lookup_40
	mov ebx, eax
StringTable_Lookup_70:
	mov eax, ebx
	imul eax, [esi+0x4]
	lea eax, [edi+eax]
	mov edx, [esi+0xc]
	mov eax, [edx+eax*4]
	test eax, eax
	jz StringTable_Lookup_50
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz StringTable_Lookup_60
StringTable_Lookup_50:
	sub ebx, 0x1
	mov eax, 0xffffffff
	cmp eax, ebx
	jnz StringTable_Lookup_70
StringTable_Lookup_40:
	mov ebx, 0xffffffff
	mov eax, [esi+0x4]
	cmp [ebp+0x14], eax
	jl StringTable_Lookup_80
StringTable_Lookup_90:
	mov eax, _cstring_null
StringTable_Lookup_100:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
StringTable_Lookup_20:
	mov ebx, 0xffffffff
StringTable_Lookup_120:
	cmp [ebp+0x14], eax
	jge StringTable_Lookup_90
StringTable_Lookup_80:
	cmp ebx, [esi+0x8]
	jge StringTable_Lookup_90
	test ebx, ebx
	js StringTable_Lookup_90
	mov edx, [ebp+0x14]
	test edx, edx
	js StringTable_Lookup_90
	imul ebx, eax
	mov edx, [ebp+0x14]
	add edx, ebx
	mov eax, [esi+0xc]
	mov eax, [eax+edx*4]
	test eax, eax
	jnz StringTable_Lookup_100
	jmp StringTable_Lookup_90
StringTable_Lookup_30:
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_unable_to_compar
	mov dword [esp], 0x2
	call Com_Error
	jmp StringTable_Lookup_110
StringTable_Lookup_10:
	mov dword [esp+0x4], _cstring_unable_to_find_t
	mov dword [esp], 0xd
	call Com_PrintError
	mov eax, _cstring_null
	jmp StringTable_Lookup_100
StringTable_Lookup_60:
	mov eax, [esi+0x4]
	jmp StringTable_Lookup_120
	add [eax], al


;StringTable_GetAsset(char const*, StringTable const**)
StringTable_GetAsset:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz StringTable_GetAsset_10
	mov dword [esp+0x4], _cstring_trying_to_use_a_
	mov dword [esp], 0x2
	call Com_Error
StringTable_GetAsset_10:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x20
	call DB_FindXAssetHeaderReal
	mov edx, [ebp+0xc]
	mov [edx], eax
	leave
	ret
	nop


;StringTable_GetColumnValueForRow(StringTable const*, int, int)
StringTable_GetColumnValueForRow:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov eax, [ecx+0x4]
	cmp eax, edx
	jle StringTable_GetColumnValueForRow_10
	mov ebx, [ebp+0xc]
	cmp [ecx+0x8], ebx
	jg StringTable_GetColumnValueForRow_20
StringTable_GetColumnValueForRow_10:
	mov eax, _cstring_null
	pop ebx
	pop ebp
	ret
StringTable_GetColumnValueForRow_20:
	test ebx, ebx
	js StringTable_GetColumnValueForRow_10
	test edx, edx
	js StringTable_GetColumnValueForRow_10
	imul eax, ebx
	add edx, eax
	mov eax, [ecx+0xc]
	mov eax, [eax+edx*4]
	test eax, eax
	jz StringTable_GetColumnValueForRow_10
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

