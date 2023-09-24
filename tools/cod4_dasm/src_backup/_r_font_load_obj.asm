;Imports of r_font_load_obj:
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z18Hunk_AllocInternali
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z23Material_RegisterHandlePKci
	extern _Z11Com_sprintfPciPKcz
	extern _Z14Com_PrintErroriPKcz

;Exports of r_font_load_obj:
	global _Z10R_LoadFontPKci


SECTION .text


;R_LoadFont(char const*, int)
_Z10R_LoadFontPKci:
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
	call _Z16FS_FOpenFileReadPKcPi
	test eax, eax
	js _Z10R_LoadFontPKci_10
	cmp eax, 0xf
	jle _Z10R_LoadFontPKci_20
	lea esi, [eax-0x10]
	add eax, 0x8
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov edi, eax
	lea ebx, [eax+0x18]
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [edi+0x4]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [edi+0x8]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
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
	call _Z23Material_RegisterHandlePKci
	mov [edi+0xc], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_glow
	mov dword [esp+0x4], 0x3f
	lea ebx, [ebp-0x64]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23Material_RegisterHandlePKci
	mov [edi+0x10], eax
_Z10R_LoadFontPKci_40:
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10R_LoadFontPKci_10:
	cmp eax, 0xfffffffe
	jz _Z10R_LoadFontPKci_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_couldnt_fi
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor edi, edi
	mov eax, edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10R_LoadFontPKci_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_couldnt_fi1
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor edi, edi
	jmp _Z10R_LoadFontPKci_40
_Z10R_LoadFontPKci_20:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_font_file_
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor edi, edi
	jmp _Z10R_LoadFontPKci_40
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

