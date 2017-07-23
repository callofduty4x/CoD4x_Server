;Imports of com_storage:
	extern LiveStorage_GetStat
	extern LiveStorage_SetStat
	extern fs_gameDirVar
	extern Cvar_SetStringByName
	extern SEH_LocalizeTextMessage
	extern Cvar_SetCommand
	extern CL_GetRankForXp
	extern Com_Error
	extern LiveStorage_GetControllerForCmd

;Exports of com_storage:
	global cacItems
	global LiveStorage_UnlockClassSpecOps
	global LiveStorage_UnlockClassSniper
	global LiveStorage_UnlockClassHeavyGunner
	global LiveStorage_UnlockClassDemolitions
	global LiveStorage_UnlockClassAssault
	global LiveStorage_WeaponPerkChallengeReset
	global LiveStorage_StatsInit
	global LiveStorage_ValidateCaCStat
	global LiveStorage_ValidateSetStatCmd


SECTION .text


;LiveStorage_UnlockClassSpecOps(int)
LiveStorage_UnlockClassSpecOps:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xd3
	mov [esp], eax
	call LiveStorage_GetStat
	cmp eax, 0xa
	jz LiveStorage_UnlockClassSpecOps_10
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], 0xd3
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_10:
	mov dword [esp+0x4], 0xd4
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassSpecOps_20
LiveStorage_UnlockClassSpecOps_160:
	mov dword [esp+0x4], 0xd5
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x2
	jz LiveStorage_UnlockClassSpecOps_30
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0xd5
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_30:
	mov dword [esp+0x4], 0xd6
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x3
	jz LiveStorage_UnlockClassSpecOps_40
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0xd6
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_40:
	mov dword [esp+0x4], 0xd7
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xb8
	jz LiveStorage_UnlockClassSpecOps_50
	mov dword [esp+0x8], 0xb8
	mov dword [esp+0x4], 0xd7
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_50:
	mov dword [esp+0x4], 0xd8
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x9c
	jz LiveStorage_UnlockClassSpecOps_60
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0xd8
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_60:
	mov dword [esp+0x4], 0xd9
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa2
	jz LiveStorage_UnlockClassSpecOps_70
	mov dword [esp+0x8], 0xa2
	mov dword [esp+0x4], 0xd9
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_70:
	mov dword [esp+0x4], 0xda
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x65
	jz LiveStorage_UnlockClassSpecOps_80
	mov dword [esp+0x8], 0x65
	mov dword [esp+0x4], 0xda
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_80:
	mov dword [esp+0x4], 0xdb
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassSpecOps_90
LiveStorage_UnlockClassSpecOps_170:
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassSpecOps_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbc2
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_100:
	mov dword [esp+0x4], 0xbc3
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassSpecOps_110
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbc3
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_110:
	mov dword [esp+0x4], 0xb8
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSpecOps_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb8
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_120:
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSpecOps_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_130:
	mov dword [esp+0x4], 0xa2
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSpecOps_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa2
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_140:
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSpecOps_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSpecOps_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_UnlockClassSpecOps_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd4
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassSpecOps_160
LiveStorage_UnlockClassSpecOps_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xdb
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassSpecOps_170


;LiveStorage_UnlockClassSniper(int)
LiveStorage_UnlockClassSniper:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xf1
	mov [esp], eax
	call LiveStorage_GetStat
	cmp eax, 0x3d
	jz LiveStorage_UnlockClassSniper_10
	mov dword [esp+0x8], 0x3d
	mov dword [esp+0x4], 0xf1
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_10:
	mov dword [esp+0x4], 0xf2
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassSniper_20
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassSniper_30
LiveStorage_UnlockClassSniper_150:
	mov dword [esp+0x4], 0xf4
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x3
	jz LiveStorage_UnlockClassSniper_40
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0xf4
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_40:
	mov dword [esp+0x4], 0xf5
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xb0
	jz LiveStorage_UnlockClassSniper_50
	mov dword [esp+0x8], 0xb0
	mov dword [esp+0x4], 0xf5
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_50:
	mov dword [esp+0x4], 0xf6
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa0
	jz LiveStorage_UnlockClassSniper_60
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0xf6
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_60:
	mov dword [esp+0x4], 0xf7
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa1
	jz LiveStorage_UnlockClassSniper_70
	mov dword [esp+0x8], 0xa1
	mov dword [esp+0x4], 0xf7
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_70:
	mov dword [esp+0x4], 0xf8
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x65
	jz LiveStorage_UnlockClassSniper_80
	mov dword [esp+0x8], 0x65
	mov dword [esp+0x4], 0xf8
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_80:
	mov dword [esp+0x4], 0xf9
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassSniper_90
LiveStorage_UnlockClassSniper_160:
	mov dword [esp+0x4], 0xbf5
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassSniper_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbf5
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_100:
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSniper_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_110:
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSniper_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_120:
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSniper_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_130:
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassSniper_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x65
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassSniper_140:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_UnlockClassSniper_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf2
	mov [esp], ebx
	call LiveStorage_SetStat
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_UnlockClassSniper_150
LiveStorage_UnlockClassSniper_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf3
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassSniper_150
LiveStorage_UnlockClassSniper_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf9
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassSniper_160


;LiveStorage_UnlockClassHeavyGunner(int)
LiveStorage_UnlockClassHeavyGunner:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xdd
	mov [esp], eax
	call LiveStorage_GetStat
	cmp eax, 0x51
	jz LiveStorage_UnlockClassHeavyGunner_10
	mov dword [esp+0x8], 0x51
	mov dword [esp+0x4], 0xdd
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_10:
	mov dword [esp+0x4], 0xde
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassHeavyGunner_20
LiveStorage_UnlockClassHeavyGunner_160:
	mov dword [esp+0x4], 0xdf
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x2
	jz LiveStorage_UnlockClassHeavyGunner_30
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0xdf
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_30:
	mov dword [esp+0x4], 0xe0
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassHeavyGunner_40
LiveStorage_UnlockClassHeavyGunner_180:
	mov dword [esp+0x4], 0xe1
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xb0
	jz LiveStorage_UnlockClassHeavyGunner_50
	mov dword [esp+0x8], 0xb0
	mov dword [esp+0x4], 0xe1
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_50:
	mov dword [esp+0x4], 0xe2
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa7
	jz LiveStorage_UnlockClassHeavyGunner_60
	mov dword [esp+0x8], 0xa7
	mov dword [esp+0x4], 0xe2
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_60:
	mov dword [esp+0x4], 0xe3
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa1
	jz LiveStorage_UnlockClassHeavyGunner_70
	mov dword [esp+0x8], 0xa1
	mov dword [esp+0x4], 0xe3
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_70:
	mov dword [esp+0x4], 0xe4
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x67
	jz LiveStorage_UnlockClassHeavyGunner_80
	mov dword [esp+0x8], 0x67
	mov dword [esp+0x4], 0xe4
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_80:
	mov dword [esp+0x4], 0xe5
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassHeavyGunner_90
LiveStorage_UnlockClassHeavyGunner_170:
	mov dword [esp+0x4], 0xc09
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassHeavyGunner_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xc09
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_100:
	mov dword [esp+0x4], 0xc08
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassHeavyGunner_110
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xc08
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_110:
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassHeavyGunner_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xb0
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_120:
	mov dword [esp+0x4], 0xa7
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassHeavyGunner_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa7
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_130:
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassHeavyGunner_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa1
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_140:
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassHeavyGunner_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassHeavyGunner_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_UnlockClassHeavyGunner_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xde
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassHeavyGunner_160
LiveStorage_UnlockClassHeavyGunner_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe5
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassHeavyGunner_170
LiveStorage_UnlockClassHeavyGunner_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe0
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassHeavyGunner_180


;LiveStorage_UnlockClassDemolitions(int)
LiveStorage_UnlockClassDemolitions:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xe7
	mov [esp], eax
	call LiveStorage_GetStat
	cmp eax, 0x47
	jz LiveStorage_UnlockClassDemolitions_10
	mov dword [esp+0x8], 0x47
	mov dword [esp+0x4], 0xe7
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_10:
	mov dword [esp+0x4], 0xe8
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassDemolitions_20
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassDemolitions_30
LiveStorage_UnlockClassDemolitions_150:
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassDemolitions_40
LiveStorage_UnlockClassDemolitions_160:
	mov dword [esp+0x4], 0xeb
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xba
	jz LiveStorage_UnlockClassDemolitions_50
	mov dword [esp+0x8], 0xba
	mov dword [esp+0x4], 0xeb
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_50:
	mov dword [esp+0x4], 0xec
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x9c
	jz LiveStorage_UnlockClassDemolitions_60
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0xec
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_60:
	mov dword [esp+0x4], 0xed
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x9a
	jz LiveStorage_UnlockClassDemolitions_70
	mov dword [esp+0x8], 0x9a
	mov dword [esp+0x4], 0xed
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_70:
	mov dword [esp+0x4], 0xee
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x66
	jz LiveStorage_UnlockClassDemolitions_80
	mov dword [esp+0x8], 0x66
	mov dword [esp+0x4], 0xee
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_80:
	mov dword [esp+0x4], 0xef
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassDemolitions_90
LiveStorage_UnlockClassDemolitions_170:
	mov dword [esp+0x4], 0xbff
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x301
	jz LiveStorage_UnlockClassDemolitions_100
	mov dword [esp+0x8], 0x301
	mov dword [esp+0x4], 0xbff
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_100:
	mov dword [esp+0x4], 0xba
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassDemolitions_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xba
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_110:
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassDemolitions_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9c
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_120:
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassDemolitions_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_130:
	mov dword [esp+0x4], 0x66
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassDemolitions_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x66
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassDemolitions_140:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_UnlockClassDemolitions_20:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe8
	mov [esp], ebx
	call LiveStorage_SetStat
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_UnlockClassDemolitions_150
LiveStorage_UnlockClassDemolitions_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe9
	mov [esp], ebx
	call LiveStorage_SetStat
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_UnlockClassDemolitions_160
LiveStorage_UnlockClassDemolitions_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xea
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassDemolitions_160
LiveStorage_UnlockClassDemolitions_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xef
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassDemolitions_170
	nop


;LiveStorage_UnlockClassAssault(int)
LiveStorage_UnlockClassAssault:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov dword [esp+0x4], 0xc9
	mov [esp], eax
	call LiveStorage_GetStat
	cmp eax, 0x19
	jz LiveStorage_UnlockClassAssault_10
	mov dword [esp+0x8], 0x19
	mov dword [esp+0x4], 0xc9
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_10:
	mov dword [esp+0x4], 0xca
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x5
	jz LiveStorage_UnlockClassAssault_20
	mov dword [esp+0x8], 0x5
	mov dword [esp+0x4], 0xca
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_20:
	mov dword [esp+0x4], 0xcb
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassAssault_30
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassAssault_40
LiveStorage_UnlockClassAssault_160:
	mov dword [esp+0x4], 0xcd
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xbf
	jz LiveStorage_UnlockClassAssault_50
	mov dword [esp+0x8], 0xbf
	mov dword [esp+0x4], 0xcd
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_50:
	mov dword [esp+0x4], 0xce
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0xa0
	jz LiveStorage_UnlockClassAssault_60
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0xce
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_60:
	mov dword [esp+0x4], 0xcf
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x9a
	jz LiveStorage_UnlockClassAssault_70
	mov dword [esp+0x8], 0x9a
	mov dword [esp+0x4], 0xcf
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_70:
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x67
	jz LiveStorage_UnlockClassAssault_80
	mov dword [esp+0x8], 0x67
	mov dword [esp+0x4], 0xd0
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_80:
	mov dword [esp+0x4], 0xd1
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_UnlockClassAssault_90
LiveStorage_UnlockClassAssault_170:
	mov dword [esp+0x4], 0xbd1
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x321
	jz LiveStorage_UnlockClassAssault_100
	mov dword [esp+0x8], 0x321
	mov dword [esp+0x4], 0xbd1
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_100:
	mov dword [esp+0x4], 0xbcc
	mov [esp], ebx
	call LiveStorage_GetStat
	cmp eax, 0x321
	jz LiveStorage_UnlockClassAssault_110
	mov dword [esp+0x8], 0x321
	mov dword [esp+0x4], 0xbcc
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_110:
	mov dword [esp+0x4], 0xbe
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassAssault_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xbe
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_120:
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassAssault_130
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xa0
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_130:
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassAssault_140
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x9a
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_140:
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call LiveStorage_GetStat
	sub eax, 0x1
	jz LiveStorage_UnlockClassAssault_150
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x67
	mov [esp], ebx
	call LiveStorage_SetStat
LiveStorage_UnlockClassAssault_150:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_UnlockClassAssault_30:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xcb
	mov [esp], ebx
	call LiveStorage_SetStat
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_UnlockClassAssault_160
LiveStorage_UnlockClassAssault_40:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xcc
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassAssault_160
LiveStorage_UnlockClassAssault_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd1
	mov [esp], ebx
	call LiveStorage_SetStat
	jmp LiveStorage_UnlockClassAssault_170
	nop


;LiveStorage_WeaponPerkChallengeReset(int)
LiveStorage_WeaponPerkChallengeReset:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, eax
	mov ebx, 0x122
	jmp LiveStorage_WeaponPerkChallengeReset_10
LiveStorage_WeaponPerkChallengeReset_30:
	add ebx, 0x1
	cmp ebx, 0x12b
	jz LiveStorage_WeaponPerkChallengeReset_20
LiveStorage_WeaponPerkChallengeReset_10:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0x12b
	jnz LiveStorage_WeaponPerkChallengeReset_10
LiveStorage_WeaponPerkChallengeReset_20:
	mov bl, 0xe
	jmp LiveStorage_WeaponPerkChallengeReset_40
LiveStorage_WeaponPerkChallengeReset_60:
	add ebx, 0x1
	cmp ebx, 0x122
	jz LiveStorage_WeaponPerkChallengeReset_50
LiveStorage_WeaponPerkChallengeReset_40:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_60
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0x122
	jnz LiveStorage_WeaponPerkChallengeReset_40
LiveStorage_WeaponPerkChallengeReset_50:
	xor bx, bx
	jmp LiveStorage_WeaponPerkChallengeReset_70
LiveStorage_WeaponPerkChallengeReset_90:
	add ebx, 0x1
	cmp ebx, 0xc8
	jz LiveStorage_WeaponPerkChallengeReset_80
LiveStorage_WeaponPerkChallengeReset_70:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_90
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0xc8
	jnz LiveStorage_WeaponPerkChallengeReset_70
LiveStorage_WeaponPerkChallengeReset_80:
	mov bx, 0x1f5
	jmp LiveStorage_WeaponPerkChallengeReset_100
LiveStorage_WeaponPerkChallengeReset_120:
	add ebx, 0x1
	cmp ebx, 0x349
	jz LiveStorage_WeaponPerkChallengeReset_110
LiveStorage_WeaponPerkChallengeReset_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_120
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0x349
	jnz LiveStorage_WeaponPerkChallengeReset_100
LiveStorage_WeaponPerkChallengeReset_110:
	mov bx, 0x9c5
	jmp LiveStorage_WeaponPerkChallengeReset_130
LiveStorage_WeaponPerkChallengeReset_150:
	add ebx, 0x1
	cmp ebx, 0xb19
	jz LiveStorage_WeaponPerkChallengeReset_140
LiveStorage_WeaponPerkChallengeReset_130:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_150
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0xb19
	jnz LiveStorage_WeaponPerkChallengeReset_130
LiveStorage_WeaponPerkChallengeReset_140:
	mov bl, 0xb8
	jmp LiveStorage_WeaponPerkChallengeReset_160
LiveStorage_WeaponPerkChallengeReset_180:
	add ebx, 0x1
	cmp ebx, 0xc4e
	jz LiveStorage_WeaponPerkChallengeReset_170
LiveStorage_WeaponPerkChallengeReset_160:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_WeaponPerkChallengeReset_180
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0xc4e
	jnz LiveStorage_WeaponPerkChallengeReset_160
LiveStorage_WeaponPerkChallengeReset_170:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LiveStorage_StatsInit(int)
LiveStorage_StatsInit:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, esi
	call LiveStorage_WeaponPerkChallengeReset
	mov ebx, 0x8fc
	jmp LiveStorage_StatsInit_10
LiveStorage_StatsInit_30:
	add ebx, 0x1
	cmp ebx, 0x932
	jz LiveStorage_StatsInit_20
LiveStorage_StatsInit_10:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_StatsInit_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0x932
	jnz LiveStorage_StatsInit_10
LiveStorage_StatsInit_20:
	mov eax, esi
	call LiveStorage_UnlockClassAssault
	mov eax, esi
	call LiveStorage_UnlockClassDemolitions
	mov eax, esi
	call LiveStorage_UnlockClassHeavyGunner
	mov eax, esi
	call LiveStorage_UnlockClassSniper
	mov eax, esi
	call LiveStorage_UnlockClassSpecOps
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz LiveStorage_StatsInit_40
LiveStorage_StatsInit_320:
	mov dword [esp+0x4], 0xc8
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_50
LiveStorage_StatsInit_210:
	mov dword [esp+0x4], 0xd2
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_60
LiveStorage_StatsInit_200:
	mov dword [esp+0x4], 0xdc
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_70
LiveStorage_StatsInit_190:
	mov dword [esp+0x4], 0xe6
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_80
LiveStorage_StatsInit_180:
	mov dword [esp+0x4], 0xf0
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_90
LiveStorage_StatsInit_170:
	mov dword [esp+0x4], 0xfa
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jnz LiveStorage_StatsInit_100
LiveStorage_StatsInit_160:
	mov ebx, 0xfb
	jmp LiveStorage_StatsInit_110
LiveStorage_StatsInit_130:
	add ebx, 0x1
	cmp ebx, 0x10e
	jz LiveStorage_StatsInit_120
LiveStorage_StatsInit_110:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, eax
	jz LiveStorage_StatsInit_130
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_SetStat
	add ebx, 0x1
	cmp ebx, 0x10e
	jnz LiveStorage_StatsInit_110
LiveStorage_StatsInit_120:
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call LiveStorage_GetStat
	cmp eax, 0x9
	jz LiveStorage_StatsInit_140
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], 0xbb8
	mov [esp], esi
	call LiveStorage_SetStat
LiveStorage_StatsInit_140:
	mov dword [esp+0x4], 0xbba
	mov [esp], esi
	call LiveStorage_GetStat
	cmp eax, 0x9
	jz LiveStorage_StatsInit_150
	mov dword [esp+0x8], 0x9
	mov dword [esp+0x4], 0xbba
	mov [esp], esi
	call LiveStorage_SetStat
LiveStorage_StatsInit_150:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
LiveStorage_StatsInit_100:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xfa
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_160
LiveStorage_StatsInit_90:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xf0
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_170
LiveStorage_StatsInit_80:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe6
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_180
LiveStorage_StatsInit_70:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xdc
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_190
LiveStorage_StatsInit_60:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd2
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_200
LiveStorage_StatsInit_50:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xc8
	mov [esp], esi
	call LiveStorage_SetStat
	jmp LiveStorage_StatsInit_210
LiveStorage_StatsInit_40:
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_clanname
	call Cvar_SetStringByName
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot1
	call SEH_LocalizeTextMessage
	test eax, eax
	jz LiveStorage_StatsInit_220
	cmp byte [eax], 0x0
	jnz LiveStorage_StatsInit_230
LiveStorage_StatsInit_220:
	mov dword [esp+0x4], _cstring_class_slot1
	mov dword [esp], _cstring_customclass1
	call Cvar_SetCommand
LiveStorage_StatsInit_360:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot2
	call SEH_LocalizeTextMessage
	test eax, eax
	jz LiveStorage_StatsInit_240
	cmp byte [eax], 0x0
	jnz LiveStorage_StatsInit_250
LiveStorage_StatsInit_240:
	mov dword [esp+0x4], _cstring_class_slot2
	mov dword [esp], _cstring_customclass2
	call Cvar_SetCommand
LiveStorage_StatsInit_350:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot3
	call SEH_LocalizeTextMessage
	test eax, eax
	jz LiveStorage_StatsInit_260
	cmp byte [eax], 0x0
	jnz LiveStorage_StatsInit_270
LiveStorage_StatsInit_260:
	mov dword [esp+0x4], _cstring_class_slot3
	mov dword [esp], _cstring_customclass3
	call Cvar_SetCommand
LiveStorage_StatsInit_340:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot4
	call SEH_LocalizeTextMessage
	test eax, eax
	jz LiveStorage_StatsInit_280
	cmp byte [eax], 0x0
	jnz LiveStorage_StatsInit_290
LiveStorage_StatsInit_280:
	mov dword [esp+0x4], _cstring_class_slot4
	mov dword [esp], _cstring_customclass4
	call Cvar_SetCommand
LiveStorage_StatsInit_330:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_dvar_string
	mov dword [esp], _cstring_class_slot5
	call SEH_LocalizeTextMessage
	test eax, eax
	jz LiveStorage_StatsInit_300
	cmp byte [eax], 0x0
	jnz LiveStorage_StatsInit_310
LiveStorage_StatsInit_300:
	mov dword [esp+0x4], _cstring_class_slot5
	mov dword [esp], _cstring_customclass5
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_320
LiveStorage_StatsInit_310:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass5
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_320
LiveStorage_StatsInit_290:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass4
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_330
LiveStorage_StatsInit_270:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass3
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_340
LiveStorage_StatsInit_250:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass2
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_350
LiveStorage_StatsInit_230:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_customclass1
	call Cvar_SetCommand
	jmp LiveStorage_StatsInit_360
	nop


;LiveStorage_ValidateCaCStat(int, int, int)
LiveStorage_ValidateCaCStat:
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
	ja LiveStorage_ValidateCaCStat_10
LiveStorage_ValidateCaCStat_50:
	mov dword [esp+0x4], 0x8fd
	mov [esp], edi
	call LiveStorage_GetStat
	mov [esp], eax
	call CL_GetRankForXp
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
	ja LiveStorage_ValidateCaCStat_20
	jmp dword [eax*4+LiveStorage_ValidateCaCStat_jumptab_0]
LiveStorage_ValidateCaCStat_320:
	xor ecx, ecx
LiveStorage_ValidateCaCStat_350:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_30
LiveStorage_ValidateCaCStat_600:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_40
LiveStorage_ValidateCaCStat_560:
	mov eax, [ebx+0x8]
	test al, 0x3
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x3
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
LiveStorage_ValidateCaCStat_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LiveStorage_ValidateCaCStat_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_in
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_50
LiveStorage_ValidateCaCStat_610:
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_60
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_80:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_70
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_80
LiveStorage_ValidateCaCStat_460:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_90
LiveStorage_ValidateCaCStat_510:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_100
LiveStorage_ValidateCaCStat_450:
	mov eax, [ebx+0x8]
	test al, 0x1
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_660:
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_110
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_130:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_120
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_130
LiveStorage_ValidateCaCStat_500:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_140
LiveStorage_ValidateCaCStat_540:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_150
LiveStorage_ValidateCaCStat_410:
	mov eax, [ebx+0x8]
	test al, 0x20
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x20
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_650:
	cmp [cacItems], esi
	jz LiveStorage_ValidateCaCStat_160
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_180:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_170
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp eax, esi
	jnz LiveStorage_ValidateCaCStat_180
LiveStorage_ValidateCaCStat_490:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_190
LiveStorage_ValidateCaCStat_550:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_200
LiveStorage_ValidateCaCStat_420:
	mov eax, [ebx+0x8]
	test al, 0x10
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x10
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_630:
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_210
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_230:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_220
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_230
LiveStorage_ValidateCaCStat_480:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_240
LiveStorage_ValidateCaCStat_530:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_250
LiveStorage_ValidateCaCStat_440:
	mov eax, [ebx+0x8]
	test al, 0x4
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_640:
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_260
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_280:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_270
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_280
LiveStorage_ValidateCaCStat_470:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_290
LiveStorage_ValidateCaCStat_520:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_300
LiveStorage_ValidateCaCStat_430:
	mov eax, [ebx+0x8]
	test al, 0x8
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x8
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_620:
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
	call LiveStorage_GetStat
	cmp eax, 0xa6
	jnz LiveStorage_ValidateCaCStat_310
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_320
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_340:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_330
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_340
	jmp LiveStorage_ValidateCaCStat_350
LiveStorage_ValidateCaCStat_310:
	cmp esi, [cacItems]
	jz LiveStorage_ValidateCaCStat_360
	xor ecx, ecx
	mov edx, cacItems
LiveStorage_ValidateCaCStat_380:
	add ecx, 0x1
	cmp ecx, 0x3d
	jz LiveStorage_ValidateCaCStat_370
	mov eax, [edx+0xc]
	add edx, 0xc
	cmp esi, eax
	jnz LiveStorage_ValidateCaCStat_380
LiveStorage_ValidateCaCStat_580:
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4+cacItems]
	test ebx, ebx
	jz LiveStorage_ValidateCaCStat_390
LiveStorage_ValidateCaCStat_590:
	mov eax, [ebx+0x4]
	cmp [ebp-0x1c], eax
	jl LiveStorage_ValidateCaCStat_400
LiveStorage_ValidateCaCStat_570:
	mov eax, [ebx+0x8]
	test al, 0x2
	jnz LiveStorage_ValidateCaCStat_20
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x2
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_createaclass_ite
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_20
LiveStorage_ValidateCaCStat_150:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_410
LiveStorage_ValidateCaCStat_200:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_420
LiveStorage_ValidateCaCStat_300:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_430
LiveStorage_ValidateCaCStat_250:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_440
LiveStorage_ValidateCaCStat_100:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_450
LiveStorage_ValidateCaCStat_60:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_460
LiveStorage_ValidateCaCStat_260:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_470
LiveStorage_ValidateCaCStat_210:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_480
LiveStorage_ValidateCaCStat_160:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_490
LiveStorage_ValidateCaCStat_110:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_500
LiveStorage_ValidateCaCStat_70:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_90:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_510
LiveStorage_ValidateCaCStat_270:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_290:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_520
LiveStorage_ValidateCaCStat_220:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_240:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_530
LiveStorage_ValidateCaCStat_120:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_140:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_540
LiveStorage_ValidateCaCStat_170:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_190:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_550
LiveStorage_ValidateCaCStat_40:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_560
LiveStorage_ValidateCaCStat_400:
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
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_570
LiveStorage_ValidateCaCStat_360:
	xor ecx, ecx
	jmp LiveStorage_ValidateCaCStat_580
LiveStorage_ValidateCaCStat_370:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_390:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_590
LiveStorage_ValidateCaCStat_330:
	xor ebx, ebx
LiveStorage_ValidateCaCStat_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_no_createaclass_
	mov dword [esp], 0x2
	call Com_Error
	jmp LiveStorage_ValidateCaCStat_600
	
	
LiveStorage_ValidateCaCStat_jumptab_0:
	dd LiveStorage_ValidateCaCStat_20
	dd LiveStorage_ValidateCaCStat_610
	dd LiveStorage_ValidateCaCStat_20
	dd LiveStorage_ValidateCaCStat_620
	dd LiveStorage_ValidateCaCStat_20
	dd LiveStorage_ValidateCaCStat_630
	dd LiveStorage_ValidateCaCStat_640
	dd LiveStorage_ValidateCaCStat_650
	dd LiveStorage_ValidateCaCStat_660


;LiveStorage_ValidateSetStatCmd(int, int)
LiveStorage_ValidateSetStatCmd:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call LiveStorage_GetControllerForCmd
	mov edx, eax
	lea eax, [ebx-0x100]
	cmp eax, 0x17
	jbe LiveStorage_ValidateSetStatCmd_10
	lea eax, [ebx-0xc8]
	cmp eax, 0x32
	jbe LiveStorage_ValidateSetStatCmd_20
	mov eax, [ebp+0xc]
	test eax, eax
	jz LiveStorage_ValidateSetStatCmd_10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_trying_to_set_a_
	mov dword [esp], 0x2
	call Com_Error
LiveStorage_ValidateSetStatCmd_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
LiveStorage_ValidateSetStatCmd_20:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call LiveStorage_ValidateCaCStat
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

