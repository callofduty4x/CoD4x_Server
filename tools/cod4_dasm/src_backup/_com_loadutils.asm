;Imports of com_loadutils:
	extern FS_ReadFile
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern useFastFile
	extern strncmp
	extern _Z13Info_ValidatePKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern FS_FreeFile

;Exports of com_loadutils:
	global _Z27Com_LoadRawTextFile_LoadObjPKc
	global _Z28Com_LoadRawTextFile_FastFilePKc
	global _Z18Com_LoadInfoStringPKcS0_S0_Pc
	global _Z19Com_LoadRawTextFilePKc
	global _Z21Com_UnloadRawTextFilePKc


SECTION .text


;Com_LoadRawTextFile_LoadObj(char const*)
_Z27Com_LoadRawTextFile_LoadObjPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_ReadFile
	test eax, eax
	js _Z27Com_LoadRawTextFile_LoadObjPKc_10
	mov eax, [ebp-0xc]
	leave
	ret
_Z27Com_LoadRawTextFile_LoadObjPKc_10:
	xor eax, eax
	leave
	ret
	nop


;Com_LoadRawTextFile_FastFile(char const*)
_Z28Com_LoadRawTextFile_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	test eax, eax
	jz _Z28Com_LoadRawTextFile_FastFilePKc_10
	mov eax, [eax+0x8]
_Z28Com_LoadRawTextFile_FastFilePKc_10:
	leave
	ret


;Com_LoadInfoString(char const*, char const*, char const*, char*)
_Z18Com_LoadInfoStringPKcS0_S0_Pc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x14]
	mov eax, useFastFile
	mov eax, [eax]
	movzx esi, byte [eax+0xc]
	mov eax, esi
	test al, al
	jz _Z18Com_LoadInfoStringPKcS0_S0_Pc_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov edi, eax
	test eax, eax
	jz _Z18Com_LoadInfoStringPKcS0_S0_Pc_20
_Z18Com_LoadInfoStringPKcS0_S0_Pc_120:
	mov esi, [edi+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call strncmp
	test eax, eax
	jnz _Z18Com_LoadInfoStringPKcS0_S0_Pc_30
_Z18Com_LoadInfoStringPKcS0_S0_Pc_90:
	lea edi, [esi+ebx]
_Z18Com_LoadInfoStringPKcS0_S0_Pc_80:
	mov [esp], edi
	call _Z13Info_ValidatePKc
	test eax, eax
	jnz _Z18Com_LoadInfoStringPKcS0_S0_Pc_40
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Com_LoadInfoStringPKcS0_S0_Pc_40:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Com_LoadInfoStringPKcS0_S0_Pc_10:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov [ebp-0x2c], eax
	test eax, eax
	js _Z18Com_LoadInfoStringPKcS0_S0_Pc_50
_Z18Com_LoadInfoStringPKcS0_S0_Pc_110:
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp+0x10]
	mov eax, esi
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov byte [ebx+edi], 0x0
	mov [esp+0x8], edi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncmp
	test eax, eax
	jnz _Z18Com_LoadInfoStringPKcS0_S0_Pc_60
	mov eax, [ebp-0x2c]
	sub eax, edi
	mov edi, eax
	cmp eax, 0x1fff
	jg _Z18Com_LoadInfoStringPKcS0_S0_Pc_70
_Z18Com_LoadInfoStringPKcS0_S0_Pc_100:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov byte [ebx+edi], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov edi, ebx
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_80
_Z18Com_LoadInfoStringPKcS0_S0_Pc_70:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_too_lo
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov byte [ebx+edi], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov edi, ebx
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_80
_Z18Com_LoadInfoStringPKcS0_S0_Pc_30:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_90
_Z18Com_LoadInfoStringPKcS0_S0_Pc_60:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x2c]
	sub eax, edi
	mov edi, eax
	cmp eax, 0x1fff
	jle _Z18Com_LoadInfoStringPKcS0_S0_Pc_100
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_70
_Z18Com_LoadInfoStringPKcS0_S0_Pc_50:
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_110
_Z18Com_LoadInfoStringPKcS0_S0_Pc_20:
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Com_LoadInfoStringPKcS0_S0_Pc_120


;Com_LoadRawTextFile(char const*)
_Z19Com_LoadRawTextFilePKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z28Com_LoadRawTextFile_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z27Com_LoadRawTextFile_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_UnloadRawTextFile(char const*)
_Z21Com_UnloadRawTextFilePKc:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21Com_UnloadRawTextFilePKc_10
	pop ebp
	ret
_Z21Com_UnloadRawTextFilePKc_10:
	pop ebp
	jmp FS_FreeFile


;Initialized global or static variables of com_loadutils:
SECTION .data


;Initialized constant data of com_loadutils:
SECTION .rdata


;Zero initialized global or static variables of com_loadutils:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_file_s_is_not_a_:		db 015h,"File [%s] is not a valid %s",0ah,0
_cstring_file_s_is_too_lo:		db 015h,"File [%s] is too long of a %s to parse",0ah,0
_cstring_file_s_is_not_a_1:		db 015h,"File [%s] is not a %s file",0ah,0
_cstring_file_s_is_not_a_2:		db 015h,"File [%s] is not a %s",0ah,0
_cstring_could_not_load_s:		db 015h,"Could not load %s [%s]",0ah,0
_cstring_could_not_load_s1:		db 015h,"Could not load %s file [%s]",0ah,0



;All constant floats and doubles:
SECTION .rdata

