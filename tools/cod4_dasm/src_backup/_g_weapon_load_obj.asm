;Imports of g_weapon_load_obj:
	extern memset
	extern sprintf
	extern _Z18FS_FOpenFileByModePKcPi8fsMode_t
	extern _Z7FS_ReadPvii
	extern _Z16Com_PrintWarningiPKcz
	extern _Z13FS_FCloseFilei
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern atoi
	extern atof
	extern _Z19Com_EndParseSessionv
	extern _Z14Com_PrintErroriPKcz
	extern _Z26Hunk_AllocLowAlignInternalii
	extern memcpy

;Exports of g_weapon_load_obj:
	global accuracyDirName
	global _Z26G_ParseWeaponAccurayGraphsP9WeaponDef


SECTION .text


;G_ParseWeaponAccurayGraphs(WeaponDef*)
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x211c
	mov eax, [ebp+0x8]
	mov [ebp-0x210c], eax
	mov dword [ebp-0x20ec], accuracyDirName
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_20:
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
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_10
	cmp eax, 0x2
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_10
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_30:
	add dword [ebp-0x210c], 0x4
	add dword [ebp-0x20ec], 0x4
	cmp dword [ebp-0x20ec], accuracyDirName+0x8
	jnz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_20
	mov eax, 0x1
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_110:
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_10:
	cmp byte [edx], 0x0
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_30
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
	call _Z18FS_FOpenFileByModePKcPi8fsMode_t
	mov [ebp-0x2108], eax
	test eax, eax
	js _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_40
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	lea ebx, [ebp-0x20e0]
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov byte [ebp-0x20d2], 0x0
	mov ebx, _cstring_weaponaccufile
	mov ecx, 0xe
	cld
	lea esi, [ebp-0x20e0]
	mov edi, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_50:
	test eax, eax
	jnz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_60
	mov ebx, [ebp-0x2108]
	sub ebx, 0xe
	cmp ebx, 0x1fff
	jle _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_70
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_warning_s_is_too
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_80:
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	xor eax, eax
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_60:
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_does_n
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_80
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_70:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x20e0]
	mov [esp], edi
	call memset
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z7FS_ReadPvii
	mov byte [ebp+ebx-0x20e0], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov [ebp-0x20], edi
	lea ebx, [ebp-0x60]
	mov [esp], ebx
	call _Z21Com_BeginParseSessionPKc
	lea edi, [ebp-0x20]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atoi
	mov [ebp-0x2104], eax
	xor esi, esi
	lea ebx, [ebp-0xdc]
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_100:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_90
	cmp dl, 0x7d
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_90
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2100]
	cvtsd2ss xmm0, [ebp-0x2100]
	movss [ebx-0x4], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_90
	cmp dl, 0x7d
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_90
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20f8]
	cvtsd2ss xmm0, [ebp-0x20f8]
	movss [ebx], xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0x10
	jnz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_100
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_has_to
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	call _Z19Com_EndParseSessionv
	xor eax, eax
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_110
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_40:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	xor eax, eax
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_110
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_90:
	call _Z19Com_EndParseSessionv
	cmp [ebp-0x2104], esi
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_120
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_s_error_in
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_110
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_120:
	movss xmm0, dword [_float_1_00000000]
	mov ebx, [ebp-0x2104]
	ucomiss xmm0, [ebp+ebx*8-0xe8]
	jp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_130
	jz _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_140
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_130:
	lea edi, [ebp-0x60]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_s_range_mu
	mov dword [esp], 0xf
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_110
_Z26G_ParseWeaponAccurayGraphsP9WeaponDef_140:
	mov esi, [ebp-0x2104]
	test esi, esi
	jle _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_30
	lea ebx, [esi*8]
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call _Z26Hunk_AllocLowAlignInternalii
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
	jmp _Z26G_ParseWeaponAccurayGraphsP9WeaponDef_30


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

