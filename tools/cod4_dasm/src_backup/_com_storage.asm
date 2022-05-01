;Imports of com_storage:
	extern _Z19LiveStorage_GetStatii
	extern _Z19LiveStorage_SetStatiii
	extern fs_gameDirVar
	extern _Z20Dvar_SetStringByNamePKcS0_
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z15Dvar_SetCommandPKcS0_
	extern _Z15CL_GetRankForXpi
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z31LiveStorage_GetControllerForCmdi

;Exports of com_storage:
	global cacItems
	global _Z30LiveStorage_UnlockClassSpecOpsi
	global _Z29LiveStorage_UnlockClassSniperi
	global _Z34LiveStorage_UnlockClassHeavyGunneri
	global _Z34LiveStorage_UnlockClassDemolitionsi
	global _Z30LiveStorage_UnlockClassAssaulti
	global _Z36LiveStorage_WeaponPerkChallengeReseti
	global _Z21LiveStorage_StatsIniti
	global _Z27LiveStorage_ValidateCaCStatiii
	global _Z30LiveStorage_ValidateSetStatCmdii


SECTION .text


;LiveStorage_UnlockClassSpecOps(int)
_Z30LiveStorage_UnlockClassSpecOpsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xd3
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa
	jz _Z30LiveStorage_UnlockClassSpecOpsi_10
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], 0xd3
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_10:
	mov dword [esp+0x4], 0xd4
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z30LiveStorage_UnlockClassSpecOpsi_20
_Z30LiveStorage_UnlockClassSpecOpsi_160:
	mov dword [esp+0x4], 0xd5
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x2
	jz _Z30LiveStorage_UnlockClassSpecOpsi_30
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0xd5
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_30:
	mov dword [esp+0x4], 0xd6
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x3
	jz _Z30LiveStorage_UnlockClassSpecOpsi_40
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0xd6
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_40:
	mov dword [esp+0x4], 0xd7
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xb8
	jz _Z30LiveStorage_UnlockClassSpecOpsi_50
	mov dword [esp+0x8], 0xb8
	mov dword [esp+0x4], 0xd7
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_50:
	mov dword [esp+0x4], 0xd8
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9c
	jz _Z30LiveStorage_UnlockClassSpecOpsi_60
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0xd8
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_60:
	mov dword [esp+0x4], 0xd9
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa2
	jz _Z30LiveStorage_UnlockClassSpecOpsi_70
	mov dword [esp+0x8], 0xa2
	mov dword [esp+0x4], 0xd9
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_70:
	mov dword [esp+0x4], 0xda
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x65
	jz _Z30LiveStorage_UnlockClassSpecOpsi_80
	mov dword [esp+0x8], 0x65
	mov dword [esp+0x4], 0xda
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_80:
	mov dword [esp+0x4], 0xdb
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z30LiveStorage_UnlockClassSpecOpsi_90
_Z30LiveStorage_UnlockClassSpecOpsi_170:
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z30LiveStorage_UnlockClassSpecOpsi_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_100:
	mov dword [esp+0x4], 0xbc3
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z30LiveStorage_UnlockClassSpecOpsi_110
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbc3
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_110:
	mov dword [esp+0x4], 0xb8
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassSpecOpsi_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb8
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_120:
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassSpecOpsi_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_130:
	mov dword [esp+0x4], 0xa2
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassSpecOpsi_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa2
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_140:
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassSpecOpsi_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassSpecOpsi_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30LiveStorage_UnlockClassSpecOpsi_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd4
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z30LiveStorage_UnlockClassSpecOpsi_160
_Z30LiveStorage_UnlockClassSpecOpsi_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xdb
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z30LiveStorage_UnlockClassSpecOpsi_170


;LiveStorage_UnlockClassSniper(int)
_Z29LiveStorage_UnlockClassSniperi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xf1
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x3d
	jz _Z29LiveStorage_UnlockClassSniperi_10
	mov dword [esp+0x8], 0x3d
	mov dword [esp+0x4], 0xf1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_10:
	mov dword [esp+0x4], 0xf2
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z29LiveStorage_UnlockClassSniperi_20
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z29LiveStorage_UnlockClassSniperi_30
_Z29LiveStorage_UnlockClassSniperi_150:
	mov dword [esp+0x4], 0xf4
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x3
	jz _Z29LiveStorage_UnlockClassSniperi_40
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0xf4
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_40:
	mov dword [esp+0x4], 0xf5
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xb0
	jz _Z29LiveStorage_UnlockClassSniperi_50
	mov dword [esp+0x8], 0xb0
	mov dword [esp+0x4], 0xf5
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_50:
	mov dword [esp+0x4], 0xf6
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa0
	jz _Z29LiveStorage_UnlockClassSniperi_60
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0xf6
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_60:
	mov dword [esp+0x4], 0xf7
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa1
	jz _Z29LiveStorage_UnlockClassSniperi_70
	mov dword [esp+0x8], 0xa1
	mov dword [esp+0x4], 0xf7
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_70:
	mov dword [esp+0x4], 0xf8
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x65
	jz _Z29LiveStorage_UnlockClassSniperi_80
	mov dword [esp+0x8], 0x65
	mov dword [esp+0x4], 0xf8
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_80:
	mov dword [esp+0x4], 0xf9
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z29LiveStorage_UnlockClassSniperi_90
_Z29LiveStorage_UnlockClassSniperi_160:
	mov dword [esp+0x4], 0xbf5
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z29LiveStorage_UnlockClassSniperi_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbf5
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_100:
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z29LiveStorage_UnlockClassSniperi_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_110:
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z29LiveStorage_UnlockClassSniperi_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_120:
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z29LiveStorage_UnlockClassSniperi_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_130:
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z29LiveStorage_UnlockClassSniperi_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z29LiveStorage_UnlockClassSniperi_140:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z29LiveStorage_UnlockClassSniperi_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf2
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z29LiveStorage_UnlockClassSniperi_150
_Z29LiveStorage_UnlockClassSniperi_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z29LiveStorage_UnlockClassSniperi_150
_Z29LiveStorage_UnlockClassSniperi_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf9
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z29LiveStorage_UnlockClassSniperi_160


;LiveStorage_UnlockClassHeavyGunner(int)
_Z34LiveStorage_UnlockClassHeavyGunneri:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xdd
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x51
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_10
	mov dword [esp+0x8], 0x51
	mov dword [esp+0x4], 0xdd
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_10:
	mov dword [esp+0x4], 0xde
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassHeavyGunneri_20
_Z34LiveStorage_UnlockClassHeavyGunneri_160:
	mov dword [esp+0x4], 0xdf
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x2
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_30
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0xdf
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_30:
	mov dword [esp+0x4], 0xe0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassHeavyGunneri_40
_Z34LiveStorage_UnlockClassHeavyGunneri_180:
	mov dword [esp+0x4], 0xe1
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xb0
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_50
	mov dword [esp+0x8], 0xb0
	mov dword [esp+0x4], 0xe1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_50:
	mov dword [esp+0x4], 0xe2
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa7
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_60
	mov dword [esp+0x8], 0xa7
	mov dword [esp+0x4], 0xe2
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_60:
	mov dword [esp+0x4], 0xe3
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa1
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_70
	mov dword [esp+0x8], 0xa1
	mov dword [esp+0x4], 0xe3
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_70:
	mov dword [esp+0x4], 0xe4
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x67
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_80
	mov dword [esp+0x8], 0x67
	mov dword [esp+0x4], 0xe4
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_80:
	mov dword [esp+0x4], 0xe5
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassHeavyGunneri_90
_Z34LiveStorage_UnlockClassHeavyGunneri_170:
	mov dword [esp+0x4], 0xc09
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xc09
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_100:
	mov dword [esp+0x4], 0xc08
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_110
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xc08
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_110:
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_120:
	mov dword [esp+0x4], 0xa7
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa7
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_130:
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_140:
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassHeavyGunneri_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassHeavyGunneri_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z34LiveStorage_UnlockClassHeavyGunneri_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xde
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z34LiveStorage_UnlockClassHeavyGunneri_160
_Z34LiveStorage_UnlockClassHeavyGunneri_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe5
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z34LiveStorage_UnlockClassHeavyGunneri_170
_Z34LiveStorage_UnlockClassHeavyGunneri_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z34LiveStorage_UnlockClassHeavyGunneri_180


;LiveStorage_UnlockClassDemolitions(int)
_Z34LiveStorage_UnlockClassDemolitionsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xe7
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x47
	jz _Z34LiveStorage_UnlockClassDemolitionsi_10
	mov dword [esp+0x8], 0x47
	mov dword [esp+0x4], 0xe7
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_10:
	mov dword [esp+0x4], 0xe8
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassDemolitionsi_20
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassDemolitionsi_30
_Z34LiveStorage_UnlockClassDemolitionsi_150:
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassDemolitionsi_40
_Z34LiveStorage_UnlockClassDemolitionsi_160:
	mov dword [esp+0x4], 0xeb
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xba
	jz _Z34LiveStorage_UnlockClassDemolitionsi_50
	mov dword [esp+0x8], 0xba
	mov dword [esp+0x4], 0xeb
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_50:
	mov dword [esp+0x4], 0xec
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9c
	jz _Z34LiveStorage_UnlockClassDemolitionsi_60
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0xec
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_60:
	mov dword [esp+0x4], 0xed
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9a
	jz _Z34LiveStorage_UnlockClassDemolitionsi_70
	mov dword [esp+0x8], 0x9a
	mov dword [esp+0x4], 0xed
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_70:
	mov dword [esp+0x4], 0xee
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x66
	jz _Z34LiveStorage_UnlockClassDemolitionsi_80
	mov dword [esp+0x8], 0x66
	mov dword [esp+0x4], 0xee
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_80:
	mov dword [esp+0x4], 0xef
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z34LiveStorage_UnlockClassDemolitionsi_90
_Z34LiveStorage_UnlockClassDemolitionsi_170:
	mov dword [esp+0x4], 0xbff
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x301
	jz _Z34LiveStorage_UnlockClassDemolitionsi_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbff
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_100:
	mov dword [esp+0x4], 0xba
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassDemolitionsi_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xba
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_110:
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassDemolitionsi_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_120:
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassDemolitionsi_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_130:
	mov dword [esp+0x4], 0x66
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z34LiveStorage_UnlockClassDemolitionsi_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x66
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z34LiveStorage_UnlockClassDemolitionsi_140:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z34LiveStorage_UnlockClassDemolitionsi_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe8
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z34LiveStorage_UnlockClassDemolitionsi_150
_Z34LiveStorage_UnlockClassDemolitionsi_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z34LiveStorage_UnlockClassDemolitionsi_160
_Z34LiveStorage_UnlockClassDemolitionsi_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z34LiveStorage_UnlockClassDemolitionsi_160
_Z34LiveStorage_UnlockClassDemolitionsi_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xef
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z34LiveStorage_UnlockClassDemolitionsi_170
	nop


;LiveStorage_UnlockClassAssault(int)
_Z30LiveStorage_UnlockClassAssaulti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xc9
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x19
	jz _Z30LiveStorage_UnlockClassAssaulti_10
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], 0xc9
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_10:
	mov dword [esp+0x4], 0xca
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x5
	jz _Z30LiveStorage_UnlockClassAssaulti_20
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0xca
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_20:
	mov dword [esp+0x4], 0xcb
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z30LiveStorage_UnlockClassAssaulti_30
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z30LiveStorage_UnlockClassAssaulti_40
_Z30LiveStorage_UnlockClassAssaulti_160:
	mov dword [esp+0x4], 0xcd
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xbf
	jz _Z30LiveStorage_UnlockClassAssaulti_50
	mov dword [esp+0x8], 0xbf
	mov dword [esp+0x4], 0xcd
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_50:
	mov dword [esp+0x4], 0xce
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa0
	jz _Z30LiveStorage_UnlockClassAssaulti_60
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0xce
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_60:
	mov dword [esp+0x4], 0xcf
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9a
	jz _Z30LiveStorage_UnlockClassAssaulti_70
	mov dword [esp+0x8], 0x9a
	mov dword [esp+0x4], 0xcf
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_70:
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x67
	jz _Z30LiveStorage_UnlockClassAssaulti_80
	mov dword [esp+0x8], 0x67
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_80:
	mov dword [esp+0x4], 0xd1
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z30LiveStorage_UnlockClassAssaulti_90
_Z30LiveStorage_UnlockClassAssaulti_170:
	mov dword [esp+0x4], 0xbd1
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x321
	jz _Z30LiveStorage_UnlockClassAssaulti_100
	mov dword [esp+0x8], 0x321
	mov dword [esp+0x4], 0xbd1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_100:
	mov dword [esp+0x4], 0xbcc
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x321
	jz _Z30LiveStorage_UnlockClassAssaulti_110
	mov dword [esp+0x8], 0x321
	mov dword [esp+0x4], 0xbcc
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_110:
	mov dword [esp+0x4], 0xbe
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassAssaulti_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xbe
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_120:
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassAssaulti_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_130:
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassAssaulti_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_140:
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	sub eax, 0x1
	jz _Z30LiveStorage_UnlockClassAssaulti_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
_Z30LiveStorage_UnlockClassAssaulti_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30LiveStorage_UnlockClassAssaulti_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xcb
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z30LiveStorage_UnlockClassAssaulti_160
_Z30LiveStorage_UnlockClassAssaulti_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z30LiveStorage_UnlockClassAssaulti_160
_Z30LiveStorage_UnlockClassAssaulti_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd1
	mov [esp], ebx
	call _Z19LiveStorage_SetStatiii
	jmp _Z30LiveStorage_UnlockClassAssaulti_170
	nop


;LiveStorage_WeaponPerkChallengeReset(int)
_Z36LiveStorage_WeaponPerkChallengeReseti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, eax
	mov ebx, 0x122
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_10
_Z36LiveStorage_WeaponPerkChallengeReseti_30:
	add ebx, 0x1
	cmp ebx, 0x12b
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_20
_Z36LiveStorage_WeaponPerkChallengeReseti_10:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0x12b
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_10
_Z36LiveStorage_WeaponPerkChallengeReseti_20:
	mov bl, 0xe
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_40
_Z36LiveStorage_WeaponPerkChallengeReseti_60:
	add ebx, 0x1
	cmp ebx, 0x122
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_50
_Z36LiveStorage_WeaponPerkChallengeReseti_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_60
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0x122
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_40
_Z36LiveStorage_WeaponPerkChallengeReseti_50:
	xor bx, bx
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_70
_Z36LiveStorage_WeaponPerkChallengeReseti_90:
	add ebx, 0x1
	cmp ebx, 0xc8
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_80
_Z36LiveStorage_WeaponPerkChallengeReseti_70:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_90
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0xc8
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_70
_Z36LiveStorage_WeaponPerkChallengeReseti_80:
	mov bx, 0x1f5
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_100
_Z36LiveStorage_WeaponPerkChallengeReseti_120:
	add ebx, 0x1
	cmp ebx, 0x349
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_110
_Z36LiveStorage_WeaponPerkChallengeReseti_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_120
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0x349
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_100
_Z36LiveStorage_WeaponPerkChallengeReseti_110:
	mov bx, 0x9c5
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_130
_Z36LiveStorage_WeaponPerkChallengeReseti_150:
	add ebx, 0x1
	cmp ebx, 0xb19
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_140
_Z36LiveStorage_WeaponPerkChallengeReseti_130:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_150
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0xb19
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_130
_Z36LiveStorage_WeaponPerkChallengeReseti_140:
	mov bl, 0xb8
	jmp _Z36LiveStorage_WeaponPerkChallengeReseti_160
_Z36LiveStorage_WeaponPerkChallengeReseti_180:
	add ebx, 0x1
	cmp ebx, 0xc4e
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_170
_Z36LiveStorage_WeaponPerkChallengeReseti_160:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z36LiveStorage_WeaponPerkChallengeReseti_180
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0xc4e
	jnz _Z36LiveStorage_WeaponPerkChallengeReseti_160
_Z36LiveStorage_WeaponPerkChallengeReseti_170:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LiveStorage_StatsInit(int)
_Z21LiveStorage_StatsIniti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, esi
	call _Z36LiveStorage_WeaponPerkChallengeReseti
	mov ebx, 0x8fc
	jmp _Z21LiveStorage_StatsIniti_10
_Z21LiveStorage_StatsIniti_30:
	add ebx, 0x1
	cmp ebx, 0x932
	jz _Z21LiveStorage_StatsIniti_20
_Z21LiveStorage_StatsIniti_10:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0x932
	jnz _Z21LiveStorage_StatsIniti_10
_Z21LiveStorage_StatsIniti_20:
	mov eax, esi
	call _Z30LiveStorage_UnlockClassAssaulti
	mov eax, esi
	call _Z34LiveStorage_UnlockClassDemolitionsi
	mov eax, esi
	call _Z34LiveStorage_UnlockClassHeavyGunneri
	mov eax, esi
	call _Z29LiveStorage_UnlockClassSniperi
	mov eax, esi
	call _Z30LiveStorage_UnlockClassSpecOpsi
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz _Z21LiveStorage_StatsIniti_40
_Z21LiveStorage_StatsIniti_320:
	mov dword [esp+0x4], 0xc8
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_50
_Z21LiveStorage_StatsIniti_210:
	mov dword [esp+0x4], 0xd2
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_60
_Z21LiveStorage_StatsIniti_200:
	mov dword [esp+0x4], 0xdc
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_70
_Z21LiveStorage_StatsIniti_190:
	mov dword [esp+0x4], 0xe6
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_80
_Z21LiveStorage_StatsIniti_180:
	mov dword [esp+0x4], 0xf0
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_90
_Z21LiveStorage_StatsIniti_170:
	mov dword [esp+0x4], 0xfa
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jnz _Z21LiveStorage_StatsIniti_100
_Z21LiveStorage_StatsIniti_160:
	mov ebx, 0xfb
	jmp _Z21LiveStorage_StatsIniti_110
_Z21LiveStorage_StatsIniti_130:
	add ebx, 0x1
	cmp ebx, 0x10e
	jz _Z21LiveStorage_StatsIniti_120
_Z21LiveStorage_StatsIniti_110:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_130
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	add ebx, 0x1
	cmp ebx, 0x10e
	jnz _Z21LiveStorage_StatsIniti_110
_Z21LiveStorage_StatsIniti_120:
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9
	jz _Z21LiveStorage_StatsIniti_140
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
_Z21LiveStorage_StatsIniti_140:
	mov dword [esp+0x4], 0xbba
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	cmp eax, 0x9
	jz _Z21LiveStorage_StatsIniti_150
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], 0xbba
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
_Z21LiveStorage_StatsIniti_150:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21LiveStorage_StatsIniti_100:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xfa
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_160
_Z21LiveStorage_StatsIniti_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf0
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_170
_Z21LiveStorage_StatsIniti_80:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe6
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_180
_Z21LiveStorage_StatsIniti_70:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xdc
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_190
_Z21LiveStorage_StatsIniti_60:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd2
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_200
_Z21LiveStorage_StatsIniti_50:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xc8
	mov [esp], esi
	call _Z19LiveStorage_SetStatiii
	jmp _Z21LiveStorage_StatsIniti_210
_Z21LiveStorage_StatsIniti_40:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_clanname
	call _Z20Dvar_SetStringByNamePKcS0_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot1
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_220
	cmp byte [eax], 0x0
	jnz _Z21LiveStorage_StatsIniti_230
_Z21LiveStorage_StatsIniti_220:
	mov dword [esp+0x4], _cstring_class_slot1
	mov dword [esp], _cstring_customclass1
	call _Z15Dvar_SetCommandPKcS0_
_Z21LiveStorage_StatsIniti_360:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot2
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_240
	cmp byte [eax], 0x0
	jnz _Z21LiveStorage_StatsIniti_250
_Z21LiveStorage_StatsIniti_240:
	mov dword [esp+0x4], _cstring_class_slot2
	mov dword [esp], _cstring_customclass2
	call _Z15Dvar_SetCommandPKcS0_
_Z21LiveStorage_StatsIniti_350:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot3
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_260
	cmp byte [eax], 0x0
	jnz _Z21LiveStorage_StatsIniti_270
_Z21LiveStorage_StatsIniti_260:
	mov dword [esp+0x4], _cstring_class_slot3
	mov dword [esp], _cstring_customclass3
	call _Z15Dvar_SetCommandPKcS0_
_Z21LiveStorage_StatsIniti_340:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot4
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_280
	cmp byte [eax], 0x0
	jnz _Z21LiveStorage_StatsIniti_290
_Z21LiveStorage_StatsIniti_280:
	mov dword [esp+0x4], _cstring_class_slot4
	mov dword [esp], _cstring_customclass4
	call _Z15Dvar_SetCommandPKcS0_
_Z21LiveStorage_StatsIniti_330:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot5
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	test eax, eax
	jz _Z21LiveStorage_StatsIniti_300
	cmp byte [eax], 0x0
	jnz _Z21LiveStorage_StatsIniti_310
_Z21LiveStorage_StatsIniti_300:
	mov dword [esp+0x4], _cstring_class_slot5
	mov dword [esp], _cstring_customclass5
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_320
_Z21LiveStorage_StatsIniti_310:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass5
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_320
_Z21LiveStorage_StatsIniti_290:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass4
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_330
_Z21LiveStorage_StatsIniti_270:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass3
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_340
_Z21LiveStorage_StatsIniti_250:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass2
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_350
_Z21LiveStorage_StatsIniti_230:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass1
	call _Z15Dvar_SetCommandPKcS0_
	jmp _Z21LiveStorage_StatsIniti_360
	nop


;LiveStorage_ValidateCaCStat(int, int, int)
_Z27LiveStorage_ValidateCaCStatiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea eax, [ebx-0xc8]
	cmp eax, 0x31
	ja _Z27LiveStorage_ValidateCaCStatiii_10
_Z27LiveStorage_ValidateCaCStatiii_50:
	mov dword [esp+0x4], 0x8fd
	mov [esp], edi
	call _Z19LiveStorage_GetStatii
	mov [esp], eax
	call _Z15CL_GetRankForXpi
	mov [ebp-0x1c], eax
	mov edx, 0x66666667
	mov eax, ebx
	imul edx
	sar edx, 0x2
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	add edx, edx
	mov eax, ebx
	sub eax, edx
	cmp eax, 0x8
	ja _Z27LiveStorage_ValidateCaCStatiii_20
	jmp dword [eax*4+_Z27LiveStorage_ValidateCaCStatiii_jumptab_0]
_Z27LiveStorage_ValidateCaCStatiii_320:
	xor ecx, ecx
_Z27LiveStorage_ValidateCaCStatiii_350:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_30
_Z27LiveStorage_ValidateCaCStatiii_600:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_40
_Z27LiveStorage_ValidateCaCStatiii_560:
	mov eax, [ebx+0x8]
	test al, 0x3
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z27LiveStorage_ValidateCaCStatiii_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27LiveStorage_ValidateCaCStatiii_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_50
_Z27LiveStorage_ValidateCaCStatiii_610:
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_60
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_80:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_70
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_80
_Z27LiveStorage_ValidateCaCStatiii_460:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_90
_Z27LiveStorage_ValidateCaCStatiii_510:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_100
_Z27LiveStorage_ValidateCaCStatiii_450:
	mov eax, [ebx+0x8]
	test al, 0x1
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_660:
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_110
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_130:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_120
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_130
_Z27LiveStorage_ValidateCaCStatiii_500:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_140
_Z27LiveStorage_ValidateCaCStatiii_540:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_150
_Z27LiveStorage_ValidateCaCStatiii_410:
	mov eax, [ebx+0x8]
	test al, 0x20
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x20
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_650:
	cmp [cacItems], esi
	jz _Z27LiveStorage_ValidateCaCStatiii_160
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_180:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_170
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp eax, esi
	jnz _Z27LiveStorage_ValidateCaCStatiii_180
_Z27LiveStorage_ValidateCaCStatiii_490:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_190
_Z27LiveStorage_ValidateCaCStatiii_550:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_200
_Z27LiveStorage_ValidateCaCStatiii_420:
	mov eax, [ebx+0x8]
	test al, 0x10
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_630:
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_210
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_230:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_220
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_230
_Z27LiveStorage_ValidateCaCStatiii_480:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_240
_Z27LiveStorage_ValidateCaCStatiii_530:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_250
_Z27LiveStorage_ValidateCaCStatiii_440:
	mov eax, [ebx+0x8]
	test al, 0x4
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_640:
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_260
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_280:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_270
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_280
_Z27LiveStorage_ValidateCaCStatiii_470:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_290
_Z27LiveStorage_ValidateCaCStatiii_520:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_300
_Z27LiveStorage_ValidateCaCStatiii_430:
	mov eax, [ebx+0x8]
	test al, 0x8
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x8
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_620:
	mov edx, 0x66666667
	mov eax, ebx
	imul edx
	sar edx, 0x2
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*4]
	lea edx, [edx+edx+0x6]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z19LiveStorage_GetStatii
	cmp eax, 0xa6
	jnz _Z27LiveStorage_ValidateCaCStatiii_310
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_320
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_340:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_330
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_340
	jmp _Z27LiveStorage_ValidateCaCStatiii_350
_Z27LiveStorage_ValidateCaCStatiii_310:
	cmp esi, [cacItems]
	jz _Z27LiveStorage_ValidateCaCStatiii_360
	xor ecx, ecx
	mov edx, cacItems
_Z27LiveStorage_ValidateCaCStatiii_380:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz _Z27LiveStorage_ValidateCaCStatiii_370
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz _Z27LiveStorage_ValidateCaCStatiii_380
_Z27LiveStorage_ValidateCaCStatiii_580:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz _Z27LiveStorage_ValidateCaCStatiii_390
_Z27LiveStorage_ValidateCaCStatiii_590:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl _Z27LiveStorage_ValidateCaCStatiii_400
_Z27LiveStorage_ValidateCaCStatiii_570:
	mov eax, [ebx+0x8]
	test al, 0x2
	jnz _Z27LiveStorage_ValidateCaCStatiii_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x2
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_20
_Z27LiveStorage_ValidateCaCStatiii_150:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_410
_Z27LiveStorage_ValidateCaCStatiii_200:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_420
_Z27LiveStorage_ValidateCaCStatiii_300:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_430
_Z27LiveStorage_ValidateCaCStatiii_250:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_440
_Z27LiveStorage_ValidateCaCStatiii_100:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_450
_Z27LiveStorage_ValidateCaCStatiii_60:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_460
_Z27LiveStorage_ValidateCaCStatiii_260:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_470
_Z27LiveStorage_ValidateCaCStatiii_210:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_480
_Z27LiveStorage_ValidateCaCStatiii_160:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_490
_Z27LiveStorage_ValidateCaCStatiii_110:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_500
_Z27LiveStorage_ValidateCaCStatiii_70:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_90:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_510
_Z27LiveStorage_ValidateCaCStatiii_270:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_290:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_520
_Z27LiveStorage_ValidateCaCStatiii_220:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_240:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_530
_Z27LiveStorage_ValidateCaCStatiii_120:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_140:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_540
_Z27LiveStorage_ValidateCaCStatiii_170:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_190:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_550
_Z27LiveStorage_ValidateCaCStatiii_40:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_560
_Z27LiveStorage_ValidateCaCStatiii_400:
	mov edx, [ebp-0x1c]
	add edx, 0x1
	add eax, 0x1
	cmp edx, eax
	setl al
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_570
_Z27LiveStorage_ValidateCaCStatiii_360:
	xor ecx, ecx
	jmp _Z27LiveStorage_ValidateCaCStatiii_580
_Z27LiveStorage_ValidateCaCStatiii_370:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_390:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_590
_Z27LiveStorage_ValidateCaCStatiii_330:
	xor ebx, ebx
_Z27LiveStorage_ValidateCaCStatiii_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27LiveStorage_ValidateCaCStatiii_600
	
	
_Z27LiveStorage_ValidateCaCStatiii_jumptab_0:
	dd _Z27LiveStorage_ValidateCaCStatiii_20
	dd _Z27LiveStorage_ValidateCaCStatiii_610
	dd _Z27LiveStorage_ValidateCaCStatiii_20
	dd _Z27LiveStorage_ValidateCaCStatiii_620
	dd _Z27LiveStorage_ValidateCaCStatiii_20
	dd _Z27LiveStorage_ValidateCaCStatiii_630
	dd _Z27LiveStorage_ValidateCaCStatiii_640
	dd _Z27LiveStorage_ValidateCaCStatiii_650
	dd _Z27LiveStorage_ValidateCaCStatiii_660


;LiveStorage_ValidateSetStatCmd(int, int)
_Z30LiveStorage_ValidateSetStatCmdii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z31LiveStorage_GetControllerForCmdi
	mov edx, eax
	lea eax, [ebx-0x100]
	cmp eax, 0x17
	jbe _Z30LiveStorage_ValidateSetStatCmdii_10
	lea eax, [ebx-0xc8]
	cmp eax, 0x32
	jbe _Z30LiveStorage_ValidateSetStatCmdii_20
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z30LiveStorage_ValidateSetStatCmdii_10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_a_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z30LiveStorage_ValidateSetStatCmdii_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30LiveStorage_ValidateSetStatCmdii_20:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z27LiveStorage_ValidateCaCStatiii
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of com_storage:
SECTION .data
cacItems: dd 0x0, 0x0, 0x2, 0x1, 0xf, 0x2, 0x2, 0x0, 0x2, 0x3, 0x2a, 0x2, 0x4, 0x36, 0x2, 0xa, 0x0, 0x1, 0xb, 0x0, 0x1, 0xc, 0xc, 0x1, 0xd, 0x1b, 0x1, 0xe, 0x27, 0x1, 0x14, 0x0, 0x1, 0x15, 0x2d, 0x1, 0x16, 0x33, 0x1, 0x17, 0x18, 0x1, 0x18, 0x24, 0x1, 0x19, 0x0, 0x1, 0x1a, 0x9, 0x1, 0x32, 0x0, 0x4, 0x37, 0x0, 0x4, 0x3c, 0x15, 0x1, 0x3d, 0x0, 0x1, 0x3e, 0x30, 0x1, 0x40, 0x21, 0x1, 0x41, 0x6, 0x1, 0x46, 0x1e, 0x1, 0x47, 0x0, 0x1, 0x50, 0x0, 0x1, 0x51, 0x0, 0x1, 0x52, 0x12, 0x1, 0x5a, 0x0, 0x4, 0x5b, 0x16, 0x4, 0x64, 0x0, 0x20, 0x65, 0x0, 0x20, 0x66, 0x0, 0x20, 0x67, 0x0, 0x20, 0x96, 0x22, 0x10, 0x97, 0xa, 0x8, 0x98, 0x19, 0x10, 0x99, 0x2b, 0x10, 0x9a, 0x0, 0x10, 0x9b, 0xd, 0x4, 0x9c, 0x0, 0x8, 0x9d, 0x7, 0x10, 0x9e, 0x10, 0x10, 0xa0, 0x0, 0x8, 0xa1, 0x0, 0x10, 0xa2, 0x0, 0x10, 0xa3, 0x1c, 0x8, 0xa4, 0x13, 0x8, 0xa5, 0x1f, 0x4, 0xa6, 0x25, 0x8, 0xa7, 0x0, 0x8, 0xad, 0x28, 0x4, 0xb0, 0x0, 0x4, 0xb8, 0x0, 0x4, 0xb9, 0x16, 0x4, 0xba, 0x0, 0x4, 0xbe, 0x0, 0x4, 0xbf, 0x0, 0x4, 0xc0, 0x0, 0x4, 0xc1, 0x0, 0x4, 0x0


;Initialized constant data of com_storage:
SECTION .rdata


;Zero initialized global or static variables of com_storage:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_clanname:		db "clanName",0
_cstring_dvar_string:		db "dvar string",0
_cstring_class_slot1:		db "CLASS_SLOT1",0
_cstring_customclass1:		db "customclass1",0
_cstring_class_slot2:		db "CLASS_SLOT2",0
_cstring_customclass2:		db "customclass2",0
_cstring_class_slot3:		db "CLASS_SLOT3",0
_cstring_customclass3:		db "customclass3",0
_cstring_class_slot4:		db "CLASS_SLOT4",0
_cstring_customclass4:		db "customclass4",0
_cstring_class_slot5:		db "CLASS_SLOT5",0
_cstring_customclass5:		db "customclass5",0
_cstring_createaclass_ite:		db "Create-a-class item %d is not the expected type for this slot (0x%x & 0x%x) == 0.",0ah,0ah,0
_cstring_trying_to_set_in:		db "trying to set invalid create-a-class stat.  You can",27h,"t set stat %d.",0ah,0
_cstring_createaclass_ite1:		db "Create-a-class item %d is too high level %d < %d.",0ah,0
_cstring_no_createaclass_:		db "No create-a-class item found at index %d",0ah,0
_cstring_trying_to_set_a_:		db "Trying to set a server-only stat %d.",0ah,0



;All constant floats and doubles:
SECTION .rdata

