;Imports of g_weapon_load_obj:
	extern memset
	extern sprintf
	extern FS_FOpenFileByMode
	extern FS_Read
	extern Com_PrintWarning
	extern FS_FCloseFile
	extern Com_BeginParseSession
	extern Com_Parse
	extern atoi
	extern atof
	extern Com_EndParseSession
	extern Com_PrintError
	extern Hunk_AllocLowAlignInternal
	extern memcpy

;Exports of g_weapon_load_obj:
	global accuracyDirName
	global G_ParseWeaponAccurayGraphs


SECTION .text


;G_ParseWeaponAccurayGraphs(WeaponDef*)
G_ParseWeaponAccurayGraphs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x211c
	mov eax, [ebp+0x8]
	mov [ebp-0x210c], eax
	mov dword [ebp-0x20ec], accuracyDirName
G_ParseWeaponAccurayGraphs_20:
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0xe0]
	mov [esp], edx
	call memset
	mov ebx, [ebp-0x210c]
	mov edx, [ebx+0x76c]
	mov edi, [ebp-0x20ec]
	mov ecx, [edi]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x12c]
	test eax, eax
	jz G_ParseWeaponAccurayGraphs_10
	cmp eax, 0x2
	jz G_ParseWeaponAccurayGraphs_10
G_ParseWeaponAccurayGraphs_30:
	add dword [ebp-0x210c], 0x4
	add dword [ebp-0x20ec], 0x4
	cmp dword [ebp-0x20ec], accuracyDirName+0x8
	jnz G_ParseWeaponAccurayGraphs_20
	mov eax, 0x1
G_ParseWeaponAccurayGraphs_110:
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ParseWeaponAccurayGraphs_10:
	cmp byte [edx], 0x0
	jz G_ParseWeaponAccurayGraphs_30
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_accuracyss
	lea edi, [ebp-0x60]
	mov [esp], edi
	call sprintf
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_FOpenFileByMode
	mov [ebp-0x2108], eax
	test eax, eax
	js G_ParseWeaponAccurayGraphs_40
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	lea ebx, [ebp-0x20e0]
	mov [esp], ebx
	call FS_Read
	mov byte [ebp-0x20d2], 0x0
	mov ebx, _cstring_weaponaccufile
	mov ecx, 0xe
	cld
	lea esi, [ebp-0x20e0]
	mov edi, ebx
	repe cmpsb
	mov eax, 0x0
	jz G_ParseWeaponAccurayGraphs_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
G_ParseWeaponAccurayGraphs_50:
	test eax, eax
	jnz G_ParseWeaponAccurayGraphs_60
	mov ebx, [ebp-0x2108]
	sub ebx, 0xe
	cmp ebx, 0x1fff
	jle G_ParseWeaponAccurayGraphs_70
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_warning_s_is_too
G_ParseWeaponAccurayGraphs_80:
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	xor eax, eax
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ParseWeaponAccurayGraphs_60:
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_does_n
	jmp G_ParseWeaponAccurayGraphs_80
G_ParseWeaponAccurayGraphs_70:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x20e0]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call FS_Read
	mov byte [ebp+ebx-0x20e0], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov [ebp-0x20], edi
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call Com_BeginParseSession
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov [esp], eax
	call atoi
	mov [ebp-0x2104], eax
	xor esi, esi
	lea ebx, [ebp-0xdc]
G_ParseWeaponAccurayGraphs_100:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz G_ParseWeaponAccurayGraphs_90
	cmp dl, 0x7d
	jz G_ParseWeaponAccurayGraphs_90
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2100]
	cvtsd2ss xmm0, [ebp-0x2100]
	movss [ebx-0x4], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz G_ParseWeaponAccurayGraphs_90
	cmp dl, 0x7d
	jz G_ParseWeaponAccurayGraphs_90
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20f8]
	cvtsd2ss xmm0, [ebp-0x20f8]
	movss [ebx], xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0x10
	jnz G_ParseWeaponAccurayGraphs_100
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_has_to
	mov dword [esp], 0xf
	call Com_PrintWarning
	call Com_EndParseSession
	xor eax, eax
	jmp G_ParseWeaponAccurayGraphs_110
G_ParseWeaponAccurayGraphs_40:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xf
	call Com_PrintWarning
	xor eax, eax
	jmp G_ParseWeaponAccurayGraphs_110
G_ParseWeaponAccurayGraphs_90:
	call Com_EndParseSession
	cmp [ebp-0x2104], esi
	jz G_ParseWeaponAccurayGraphs_120
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_error_in
	mov dword [esp], 0xf
	call Com_PrintError
	xor eax, eax
	jmp G_ParseWeaponAccurayGraphs_110
G_ParseWeaponAccurayGraphs_120:
	movss xmm0, dword [_float_1_00000000]
	mov ebx, [ebp-0x2104]
	ucomiss xmm0, [ebp+ebx*8-0xe8]
	jp G_ParseWeaponAccurayGraphs_130
	jz G_ParseWeaponAccurayGraphs_140
G_ParseWeaponAccurayGraphs_130:
	lea edi, [ebp-0x60]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_s_range_mu
	mov dword [esp], 0xf
	call Com_PrintError
	xor eax, eax
	jmp G_ParseWeaponAccurayGraphs_110
G_ParseWeaponAccurayGraphs_140:
	mov esi, [ebp-0x2104]
	test esi, esi
	jle G_ParseWeaponAccurayGraphs_30
	lea ebx, [esi*8]
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call Hunk_AllocLowAlignInternal
	mov edx, [ebp-0x210c]
	mov [edx+0x774], eax
	mov [edx+0x77c], eax
	mov [esp+0x8], ebx
	lea ebx, [ebp-0xe0]
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x210c]
	mov [edi+0x784], esi
	mov [edi+0x78c], esi
	jmp G_ParseWeaponAccurayGraphs_30


;Initialized global or static variables of g_weapon_load_obj:
SECTION .data
accuracyDirName: dd _cstring_aivsai, _cstring_aivsplayer, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_weapon_load_obj:
SECTION .rdata


;Zero initialized global or static variables of g_weapon_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_accuracyss:		db "accuracy/%s/%s",0
_cstring_weaponaccufile:		db "WEAPONACCUFILE",0
_cstring_warning_s_is_too:		db "WARNING: ",22h,"%s",22h," Is too long of an ai weapon accuracy file to parse",0ah,0
_cstring_warning_s_does_n:		db "WARNING: ",22h,"%s",22h," does not appear to be an ai weapon accuracy file",0ah,0
_cstring_warning_s_has_to:		db "WARNING: ",22h,"%s",22h," has too many graph knots",0ah,0
_cstring_warning_could_no:		db "WARNING: Could not load ai weapon accuracy file ",27h,"%s",27h,0ah,0
_cstring_error_s_error_in:		db "ERROR: ",22h,"%s",22h," Error in parsing an ai weapon accuracy file",0ah,0
_cstring_error_s_range_mu:		db "ERROR: ",22h,"%s",22h," Range must be 0.0 to 1.0",0ah,0
_cstring_aivsai:		db "aivsai",0
_cstring_aivsplayer:		db "aivsplayer",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

