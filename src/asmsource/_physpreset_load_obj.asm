;Imports of physpreset_load_obj:
	extern strcpy
	extern Com_sprintf
	extern FS_FOpenFileByMode
	extern FS_Read
	extern FS_FCloseFile
	extern Info_Validate
	extern ParseConfigStringToStruct
	extern Com_PrintError
	extern Hunk_FindDataForFile
	extern Hunk_SetDataForFile

;Exports of physpreset_load_obj:
	global physPresetFields
	global physAlloc
	global PhysPreset_Strcpy
	global PhysPresetLoadFile
	global PhysPresetPrecache


SECTION .text


;PhysPreset_Strcpy(unsigned char*, char const*)
PhysPreset_Strcpy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0xc]
	cmp byte [esi], 0x0
	jnz PhysPreset_Strcpy_10
	mov eax, [ebp+0x8]
	mov dword [eax], _cstring_null
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PhysPreset_Strcpy_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call dword [physAlloc]
	mov ebx, eax
	mov [esp+0x4], esi
	mov [esp], eax
	call strcpy
	mov eax, [ebp+0x8]
	mov [eax], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PhysPresetLoadFile(char const*, void* (*)(int))
PhysPresetLoadFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20ac
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz PhysPresetLoadFile_10
PhysPresetLoadFile_80:
	xor edx, edx
PhysPresetLoadFile_100:
	mov eax, edx
	add esp, 0x20ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PhysPresetLoadFile_10:
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_physics
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x84]
	mov [esp], esi
	call Com_sprintf
	test eax, eax
	js PhysPresetLoadFile_20
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_FOpenFileByMode
	mov ebx, eax
	test eax, eax
	js PhysPresetLoadFile_30
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	lea edi, [ebp-0x2084]
	mov [esp], edi
	call FS_Read
	mov byte [ebp-0x207e], 0x0
	mov edi, _cstring_physic
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x2084]
	repe cmpsb
	mov edx, 0x0
	jz PhysPresetLoadFile_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PhysPresetLoadFile_40:
	mov [ebp-0x208c], edx
	test edx, edx
	jnz PhysPresetLoadFile_50
	lea esi, [ebx-0x6]
	cmp esi, 0x1fff
	jg PhysPresetLoadFile_60
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0x2084]
	mov [esp], edx
	call FS_Read
	mov byte [ebp+esi-0x2084], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	lea edi, [ebp-0x2084]
	mov [esp], edi
	call Info_Validate
	test eax, eax
	jz PhysPresetLoadFile_70
	lea edx, [ebp-0x44]
	cld
	mov ecx, 0xa
	mov edi, edx
	mov eax, [ebp-0x208c]
	rep stosd
	mov dword [ebp-0x2c], _cstring_null
	mov eax, [ebp+0xc]
	mov [physAlloc], eax
	mov dword [esp+0x18], PhysPreset_Strcpy
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	lea edi, [ebp-0x2084]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], physPresetFields
	mov [esp], edx
	call ParseConfigStringToStruct
	test eax, eax
	jz PhysPresetLoadFile_80
	mov dword [esp], 0x2c
	call dword [ebp+0xc]
	mov edx, eax
	mov eax, [ebp-0x44]
	mov [edx+0x8], eax
	mov eax, [ebp-0x40]
	mov [edx+0xc], eax
	mov eax, [ebp-0x38]
	test eax, eax
	jz PhysPresetLoadFile_90
	mov eax, 0x7f7fffff
PhysPresetLoadFile_110:
	mov [edx+0x10], eax
	mov eax, [ebp-0x34]
	mov [edx+0x14], eax
	mov eax, [ebp-0x30]
	mov [edx+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x28]
	mov [edx+0x20], eax
	mov eax, [ebp-0x24]
	mov [edx+0x24], eax
	movzx eax, byte [ebp-0x20]
	mov [edx+0x28], al
	jmp PhysPresetLoadFile_100
PhysPresetLoadFile_70:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_physics_pr
	mov dword [esp], 0x14
	call Com_PrintError
	xor edx, edx
	mov eax, edx
	add esp, 0x20ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PhysPresetLoadFile_90:
	mov eax, [ebp-0x3c]
	jmp PhysPresetLoadFile_110
PhysPresetLoadFile_60:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_physics_pr1
PhysPresetLoadFile_120:
	mov dword [esp], 0x14
	call Com_PrintError
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	xor edx, edx
	jmp PhysPresetLoadFile_100
PhysPresetLoadFile_50:
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_file_s_is_
	jmp PhysPresetLoadFile_120
PhysPresetLoadFile_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x14
	call Com_PrintError
	xor edx, edx
	jmp PhysPresetLoadFile_100
PhysPresetLoadFile_30:
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_physics_pr2
	mov dword [esp], 0x14
	call Com_PrintError
	xor edx, edx
	jmp PhysPresetLoadFile_100


;PhysPresetPrecache(char const*, void* (*)(int))
PhysPresetPrecache:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call Hunk_FindDataForFile
	mov ebx, eax
	test eax, eax
	jz PhysPresetPrecache_10
PhysPresetPrecache_30:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PhysPresetPrecache_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call PhysPresetLoadFile
	mov ebx, eax
	test eax, eax
	jz PhysPresetPrecache_20
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], 0x7
	call Hunk_SetDataForFile
	mov [ebx], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PhysPresetPrecache_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_cannot_fin
	mov dword [esp], 0x14
	call Com_PrintError
	jmp PhysPresetPrecache_30
	nop


;Zero initialized global or static variables of physpreset_load_obj:
SECTION .bss
physAlloc: resb 0x80


;Initialized global or static variables of physpreset_load_obj:
SECTION .data
physPresetFields: dd _cstring_mass, 0x0, 0x6, _cstring_bounce, 0x4, 0x6, _cstring_friction, 0x8, 0x6, _cstring_isfrictioninfini, 0xc, 0x5, _cstring_bulletforcescale, 0x10, 0x6, _cstring_explosiveforcesc, 0x14, 0x6, _cstring_sndaliasprefix, 0x18, 0x0, _cstring_piecesspreadfrac, 0x1c, 0x6, _cstring_piecesupwardvelo, 0x20, 0x6, _cstring_tempdefaulttocyl, 0x24, 0x5, 0x0, 0x0


;Initialized constant data of physpreset_load_obj:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_physics:		db "physic/%s",0
_cstring_physic:		db "PHYSIC",0
_cstring_error_physics_pr:		db "ERROR: physics preset file [%s] is not valid",0ah,0
_cstring_error_physics_pr1:		db "ERROR: physics preset file [%s] is to big",0ah,0
_cstring_error_file_s_is_:		db "ERROR: file [%s] is not a physics preset file",0ah,0
_cstring_error_filename_s:		db "ERROR: filename ",27h,"%s",27h," too long",0ah,0
_cstring_error_physics_pr2:		db "ERROR: physics preset ",27h,"%s",27h," not found",0ah,0
_cstring_error_cannot_fin:		db "ERROR: Cannot find physics preset ",27h,"%s",27h,".",0ah,0
_cstring_mass:		db "mass",0
_cstring_bounce:		db "bounce",0
_cstring_friction:		db "friction",0
_cstring_isfrictioninfini:		db "isFrictionInfinity",0
_cstring_bulletforcescale:		db "bulletForceScale",0
_cstring_explosiveforcesc:		db "explosiveForceScale",0
_cstring_sndaliasprefix:		db "sndAliasPrefix",0
_cstring_piecesspreadfrac:		db "piecesSpreadFraction",0
_cstring_piecesupwardvelo:		db "piecesUpwardVelocity",0
_cstring_tempdefaulttocyl:		db "tempDefaultToCylinder",0



;All constant floats and doubles:
SECTION .rdata

