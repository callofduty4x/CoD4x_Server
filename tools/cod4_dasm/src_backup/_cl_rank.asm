;Imports of cl_rank:
	extern _Z20StringTable_GetAssetPKcPPK11StringTable
	extern _Z11Com_sprintfPciPKcz
	extern _Z18StringTable_LookupPK11StringTableiPKci
	extern _Z23Material_RegisterHandlePKci
	extern _Z18Material_IsDefaultPK8Material
	extern _Z32StringTable_GetColumnValueForRowPK11StringTableii
	extern atoi

;Exports of cl_rank:
	global _Z14CL_GetRankDatai18rankTableColumns_t
	global _Z14CL_GetRankIconiiPP8Material
	global _Z15CL_GetRankForXpi


SECTION .text


;CL_GetRankData(int, rankTableColumns_t)
_Z14CL_GetRankDatai18rankTableColumns_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mpranktablecsv
	call _Z20StringTable_GetAssetPKcPPK11StringTable
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call _Z18StringTable_LookupPK11StringTableiPKci
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CL_GetRankIcon(int, int, Material**)
_Z14CL_GetRankIconiiPP8Material:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x10]
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mprankicontablec
	call _Z20StringTable_GetAssetPKcPPK11StringTable
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0xc]
	add eax, 0x1
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call _Z18StringTable_LookupPK11StringTableiPKci
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call _Z23Material_RegisterHandlePKci
	mov [esi], eax
	mov [esp], eax
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jz _Z14CL_GetRankIconiiPP8Material_10
	mov dword [esi], 0x0
_Z14CL_GetRankIconiiPP8Material_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CL_GetRankForXp(int)
_Z15CL_GetRankForXpi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mpranktablecsv
	call _Z20StringTable_GetAssetPKcPPK11StringTable
	mov edx, [ebp-0x1c]
	mov edi, [edx+0x8]
	sub edi, 0x1
	mov eax, edi
	shr eax, 0x1f
	lea esi, [eax+edi]
	sar esi, 1
	test edi, edi
	jg _Z15CL_GetRankForXpi_10
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z32StringTable_GetColumnValueForRowPK11StringTableii
	mov [esp], eax
	call atoi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_GetRankForXpi_10:
	mov dword [ebp-0x2c], 0x0
	jmp _Z15CL_GetRankForXpi_20
_Z15CL_GetRankForXpi_40:
	lea edi, [esi-0x1]
	mov esi, [ebp-0x2c]
	mov edx, edi
	sub edx, [ebp-0x2c]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add esi, eax
	cmp edi, [ebp-0x2c]
	jle _Z15CL_GetRankForXpi_30
_Z15CL_GetRankForXpi_50:
	mov edx, [ebp-0x1c]
_Z15CL_GetRankForXpi_20:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z32StringTable_GetColumnValueForRowPK11StringTableii
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov dword [esp+0x8], 0x7
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z32StringTable_GetColumnValueForRowPK11StringTableii
	mov [esp], eax
	call atoi
	cmp ebx, [ebp+0x8]
	jg _Z15CL_GetRankForXpi_40
	cmp eax, [ebp+0x8]
	jg _Z15CL_GetRankForXpi_30
	add esi, 0x1
	mov [ebp-0x2c], esi
	mov edx, edi
	sub edx, [ebp-0x2c]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add esi, eax
	cmp edi, [ebp-0x2c]
	jg _Z15CL_GetRankForXpi_50
_Z15CL_GetRankForXpi_30:
	mov edx, [ebp-0x1c]
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z32StringTable_GetColumnValueForRowPK11StringTableii
	mov [esp], eax
	call atoi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of cl_rank:
SECTION .data


;Initialized constant data of cl_rank:
SECTION .rdata


;Zero initialized global or static variables of cl_rank:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_mpranktablecsv:		db "mp/rankTable.csv",0
_cstring_i:		db "%i",0
_cstring_mprankicontablec:		db "mp/rankIconTable.csv",0



;All constant floats and doubles:
SECTION .rdata

