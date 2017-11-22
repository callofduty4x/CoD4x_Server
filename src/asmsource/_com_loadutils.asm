;Imports of com_loadutils:
	extern FS_ReadFile
	extern DB_FindXAssetHeaderReal
	extern useFastFile
	extern strncmp
	extern Info_Validate
	extern Com_Error
	extern FS_FOpenFileRead
	extern FS_Read
	extern FS_FCloseFile
	extern FS_FreeFile

;Exports of com_loadutils:
	global Com_LoadRawTextFile_LoadObj
	global Com_LoadRawTextFile_FastFile
	global Com_LoadInfoString
	global Com_LoadRawTextFile
	global Com_UnloadRawTextFile


SECTION .text


;Com_LoadRawTextFile_LoadObj(char const*)
Com_LoadRawTextFile_LoadObj:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_ReadFile
	test eax, eax
	js Com_LoadRawTextFile_LoadObj_10
	mov eax, [ebp-0xc]
	leave
	ret
Com_LoadRawTextFile_LoadObj_10:
	xor eax, eax
	leave
	ret
	nop


;Com_LoadRawTextFile_FastFile(char const*)
Com_LoadRawTextFile_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call DB_FindXAssetHeaderReal
	test eax, eax
	jz Com_LoadRawTextFile_FastFile_10
	mov eax, [eax+0x8]
Com_LoadRawTextFile_FastFile_10:
	leave
	ret


;Com_LoadInfoString(char const*, char const*, char const*, char*)
Com_LoadInfoString:
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
	jz Com_LoadInfoString_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call DB_FindXAssetHeaderReal
	mov edi, eax
	test eax, eax
	jz Com_LoadInfoString_20
Com_LoadInfoString_120:
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
	jnz Com_LoadInfoString_30
Com_LoadInfoString_90:
	lea edi, [esi+ebx]
Com_LoadInfoString_80:
	mov [esp], edi
	call Info_Validate
	test eax, eax
	jnz Com_LoadInfoString_40
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_
	mov dword [esp], 0x2
	call Com_Error
Com_LoadInfoString_40:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_LoadInfoString_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FS_FOpenFileRead
	mov [ebp-0x2c], eax
	test eax, eax
	js Com_LoadInfoString_50
Com_LoadInfoString_110:
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
	call FS_Read
	mov byte [ebx+edi], 0x0
	mov [esp+0x8], edi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strncmp
	test eax, eax
	jnz Com_LoadInfoString_60
	mov eax, [ebp-0x2c]
	sub eax, edi
	mov edi, eax
	cmp eax, 0x1fff
	jg Com_LoadInfoString_70
Com_LoadInfoString_100:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call FS_Read
	mov byte [ebx+edi], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov edi, ebx
	jmp Com_LoadInfoString_80
Com_LoadInfoString_70:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_too_lo
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call FS_Read
	mov byte [ebx+edi], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov edi, ebx
	jmp Com_LoadInfoString_80
Com_LoadInfoString_30:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadInfoString_90
Com_LoadInfoString_60:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_is_not_a_2
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x2c]
	sub eax, edi
	mov edi, eax
	cmp eax, 0x1fff
	jle Com_LoadInfoString_100
	jmp Com_LoadInfoString_70
Com_LoadInfoString_50:
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadInfoString_110
Com_LoadInfoString_20:
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_load_s1
	mov dword [esp], 0x2
	call Com_Error
	jmp Com_LoadInfoString_120


;Com_LoadRawTextFile(char const*)
Com_LoadRawTextFile:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Com_LoadRawTextFile_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Com_LoadRawTextFile_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Com_UnloadRawTextFile(char const*)
Com_UnloadRawTextFile:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Com_UnloadRawTextFile_10
	pop ebp
	ret
Com_UnloadRawTextFile_10:
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

