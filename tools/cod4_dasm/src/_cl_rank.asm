;Imports of cl_rank:
	extern StringTable_GetAsset
	extern Com_sprintf
	extern StringTable_Lookup
	extern Material_RegisterHandle
	extern Material_IsDefault
	extern StringTable_GetColumnValueForRow
	extern atoi

;Exports of cl_rank:
	global CL_GetRankData
	global CL_GetRankIcon
	global CL_GetRankForXp


SECTION .text


;CL_GetRankData(int, rankTableColumns_t)
CL_GetRankData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mpranktablecsv
	call StringTable_GetAsset
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call StringTable_Lookup
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;CL_GetRankIcon(int, int, Material**)
CL_GetRankIcon:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x10]
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mprankicontablec
	call StringTable_GetAsset
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x10]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0xc]
	add eax, 0x1
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call StringTable_Lookup
	mov dword [esp+0x4], 0x7
	mov [esp], eax
	call Material_RegisterHandle
	mov [esi], eax
	mov [esp], eax
	call Material_IsDefault
	test al, al
	jz CL_GetRankIcon_10
	mov dword [esi], 0x0
CL_GetRankIcon_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;CL_GetRankForXp(int)
CL_GetRankForXp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mpranktablecsv
	call StringTable_GetAsset
	mov edx, [ebp-0x1c]
	mov edi, [edx+0x8]
	sub edi, 0x1
	mov eax, edi
	shr eax, 0x1f
	lea esi, [eax+edi]
	sar esi, 1
	test edi, edi
	jg CL_GetRankForXp_10
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edx
	call StringTable_GetColumnValueForRow
	mov [esp], eax
	call atoi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetRankForXp_10:
	mov dword [ebp-0x2c], 0x0
	jmp CL_GetRankForXp_20
CL_GetRankForXp_40:
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
	jle CL_GetRankForXp_30
CL_GetRankForXp_50:
	mov edx, [ebp-0x1c]
CL_GetRankForXp_20:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], esi
	mov [esp], edx
	call StringTable_GetColumnValueForRow
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov dword [esp+0x8], 0x7
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call StringTable_GetColumnValueForRow
	mov [esp], eax
	call atoi
	cmp ebx, [ebp+0x8]
	jg CL_GetRankForXp_40
	cmp eax, [ebp+0x8]
	jg CL_GetRankForXp_30
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
	jg CL_GetRankForXp_50
CL_GetRankForXp_30:
	mov edx, [ebp-0x1c]
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edx
	call StringTable_GetColumnValueForRow
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

