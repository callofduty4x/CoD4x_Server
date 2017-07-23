;Imports of r_font_load_obj:
	extern FS_FOpenFileRead
	extern Hunk_AllocInternal
	extern FS_Read
	extern FS_FCloseFile
	extern Material_RegisterHandle
	extern Com_sprintf
	extern Com_PrintError

;Exports of r_font_load_obj:
	global R_LoadFont


SECTION .text


;R_LoadFont(char const*, int)
R_LoadFont:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_FOpenFileRead
	test eax, eax
	js R_LoadFont_10
	cmp eax, 0xf
	jle R_LoadFont_20
	lea esi, [eax-0x10]
	add eax, 0x8
	mov [esp], eax
	call Hunk_AllocInternal
	mov edi, eax
	lea ebx, [eax+0x18]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [edi+0x4]
	mov [esp], eax
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [edi+0x8]
	mov [esp], eax
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x24]
	mov [esp], eax
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [edi+0x14], ebx
	mov eax, ebx
	add eax, [ebp-0x20]
	sub eax, 0x10
	mov [edi], eax
	add ebx, [ebp-0x24]
	sub ebx, 0x10
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov [edi+0xc], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_glow
	mov dword [esp+0x4], 0x3f
	lea ebx, [ebp-0x64]
	mov [esp], ebx
	call Com_sprintf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov [edi+0x10], eax
R_LoadFont_40:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadFont_10:
	cmp eax, 0xfffffffe
	jz R_LoadFont_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_couldnt_fi
	mov dword [esp], 0x8
	call Com_PrintError
	xor edi, edi
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadFont_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_couldnt_fi1
	mov dword [esp], 0x8
	call Com_PrintError
	xor edi, edi
	jmp R_LoadFont_40
R_LoadFont_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_font_file_
	mov dword [esp], 0x8
	call Com_PrintError
	xor edi, edi
	jmp R_LoadFont_40
	add [eax], al


;Initialized global or static variables of r_font_load_obj:
SECTION .data


;Initialized constant data of r_font_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_font_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_s_glow:		db "%s_glow",0
_cstring_error_couldnt_fi:		db "ERROR: Couldn",27h,"t find font ",27h,"%s",27h,0ah,0
_cstring_error_couldnt_fi1:		db "ERROR: Couldn",27h,"t find font in iwd files or localized directories ",27h,"%s",27h,0ah,0
_cstring_error_font_file_:		db "ERROR: Font file ",27h,"%s",27h," too small",0ah,0



;All constant floats and doubles:
SECTION .rdata

