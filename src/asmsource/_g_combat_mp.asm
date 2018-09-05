;Imports of g_combat_mp:
	extern strcpy
	extern Com_GetServerDObj
	extern G_crandom
	extern G_FireGrenade
	extern Scr_AddEntity
	extern scr_const
	extern Scr_Notify
	extern BG_AnimScriptEvent
	extern Scr_PlayerKilled
	extern level
	extern vectoyaw
	extern SV_UnlinkEntity
	extern SV_LinkEntity
	extern g_entities
	extern Cmd_Score_f
	extern perk_grenadeDeath
	extern BG_FindWeaponIndexForName
	extern BG_GetWeaponDef
	extern BG_SetConditionValue
	extern Scr_PlayerDamage
	extern BG_GetViewmodelWeaponIndex
	extern CM_AreaEntities
	extern CM_AreaEntities_ASM
	extern LogAccuracyHit
	extern AngleVectors
	extern Com_PrintWarning
	extern Scr_AddUndefined
	extern Scr_AddFloat
	extern Scr_AddConstString
	extern Scr_AllocString
	extern Com_LoadInfoString
	extern ParseConfigStringToStruct
	extern Com_Error
	extern Scr_GetConstString
	extern SL_ConvertToString
	extern va
	extern Scr_ParamError
	extern G_VehImmuneToDamage
	extern Vec3NormalizeTo
	extern g_debugDamage
	extern Scr_AddInt
	extern SV_GetConfigstringConst
	extern Scr_AddVector
	extern entityHandlers
	extern Scr_AddString
	extern Com_Printf
	extern vec3_origin
	extern G_GetPlayerViewOrigin
	extern radius_damage_debug
	extern G_LocationalTracePassed
	extern colorOrange
	extern G_DebugLineWithDuration
	extern colorRed
	extern colorWhite
	extern DObjPhysicsGetBounds
	extern modNames

;Exports of g_combat_mp:
	global g_HitLocConstNames
	global g_HitLocNames
	global G_HitLocStrcpy
	global player_die
	global G_DamageClient
	global G_RadiusDamage
	global G_FlashbangBlast
	global G_WithinDamageRadius
	global G_ParseHitLocDmgTable
	global G_GetHitLocationString
	global G_MeansOfDeathFromScriptParam
	global G_GetHitLocationIndexFromString
	global G_Damage
	global CanDamage
	global bulletPriorityMap
	global riflePriorityMap
	global g_fHitLocDamageMult


SECTION .text


;G_HitLocStrcpy(unsigned char*, char const*)
G_HitLocStrcpy:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strcpy
	leave
	ret


;player_die(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
player_die:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	mov eax, [eax+0xdc]
	mov [esp], eax
	call Com_GetServerDObj
	test eax, eax
	jz player_die_10
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebx+0x4]
	cmp eax, 0x1
	jbe player_die_20
	cmp eax, 0x6
	jz player_die_20
player_die_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
player_die_20:
	test byte [ebx+0x14], 0x2
	jnz player_die_10
	mov esi, [ebp+0x10]
	cmp dword [esi+0x4], 0xb
	jz player_die_30
player_die_150:
	mov edi, [ebx+0x44]
	test edi, edi
	jz player_die_40
	test byte [ebx+0x10], 0x2
	jz player_die_50
	mov ebx, [ebx+0xe0]
player_die_160:
	call G_crandom
	fstp dword [ebp-0x24]
	call G_crandom
	fstp dword [ebp-0x20]
	call G_crandom
	fstp dword [ebp-0x4c]
	movss xmm2, dword [ebp-0x4c]
	movss xmm1, dword [_float_160_00000000]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x13c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_40_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mov edx, [ecx+0x15c]
	mov eax, [edx+0x44]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	movzx eax, byte [ebx+edx+0x81c]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ecx
	call G_FireGrenade
player_die_40:
	cmp dword [ebp+0x18], 0xc
	jz player_die_60
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	test byte [eax+0x5fc], 0x40
	jnz player_die_70
player_die_60:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	xor eax, eax
	cmp dword [edx+0x4], 0x1
	setz al
	add eax, 0x7
	mov [edx+0x4], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov eax, [ecx+0x15c]
	mov [esp], eax
	call BG_AnimScriptEvent
	mov esi, [ebp+0x8]
	mov edx, [esi+0x15c]
	mov dword [edx+0x148], 0x0
	mov [esp+0x24], eax
	mov eax, [ebp+0x28]
	mov [esp+0x20], eax
	mov edx, [ebp+0x24]
	mov [esp+0x1c], edx
	mov ecx, [ebp+0x20]
	mov [esp+0x18], ecx
	mov esi, [ebp+0x1c]
	mov [esp+0x14], esi
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov esi, [ebp+0xc]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_PlayerKilled
	mov edx, level
	mov esi, [edx+0x1e4]
	test esi, esi
	jg player_die_80
player_die_110:
	mov esi, [ebp+0x8]
	mov byte [esi+0x16b], 0x1
	mov dword [esi+0x120], 0x4000000
	mov dword [esi+0x150], 0x0
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz player_die_90
	cmp [ebp+0x10], esi
	jz player_die_90
	mov eax, [ebp+0x10]
	add eax, 0x13c
	mov edx, esi
	add edx, 0x13c
	mov ecx, [ebp+0x10]
	movss xmm0, dword [ecx+0x13c]
	subss xmm0, [esi+0x13c]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mov eax, [ebp+0x8]
player_die_140:
	mov esi, [eax+0x15c]
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	call vectoyaw
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [esi+0x14c], eax
	mov [esp], ebx
	call vectoyaw
	fstp st0
player_die_170:
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x15c]
	lea ebx, [edx+0x108]
	add ecx, 0x148
	mov esi, [ebp+0x8]
	mov eax, [esi+0x148]
	mov [edx+0x108], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov dword [esi+0x80], 0x0
	mov [esp], esi
	call SV_UnlinkEntity
	mov dword [esi+0x11c], 0x41f00000
	mov [esp], esi
	call SV_LinkEntity
	mov dword [esi+0x1a0], 0x0
	mov byte [esi+0x16e], 0xc
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
player_die_80:
	xor esi, esi
	xor ebx, ebx
	mov edi, g_entities
	mov [ebp-0x40], edx
	jmp player_die_100
player_die_120:
	add esi, 0x1
	add ebx, 0x3184
	add edi, 0x274
	cmp [edx+0x1e4], esi
	jle player_die_110
player_die_100:
	mov eax, ebx
	add eax, [edx]
	cmp dword [eax+0x2f8c], 0x2
	jnz player_die_120
	cmp dword [eax+0x2f64], 0x2
	jnz player_die_120
	mov eax, [eax+0x3074]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx]
	jnz player_die_120
	mov [esp], edi
	call Cmd_Score_f
	mov edx, [ebp-0x40]
	jmp player_die_120
player_die_70:
	mov eax, perk_grenadeDeath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call BG_FindWeaponIndexForName
	mov esi, eax
	test eax, eax
	jz player_die_60
	mov [esp], eax
	call BG_GetWeaponDef
	mov ebx, eax
	call G_crandom
	fstp dword [ebp-0x24]
	call G_crandom
	fstp dword [ebp-0x20]
	call G_crandom
	fstp dword [ebp-0x4c]
	movss xmm2, dword [ebp-0x4c]
	movss xmm1, dword [_float_160_00000000]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x13c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_40_00000000]
	addss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mov eax, [ebx+0x3ec]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	mov eax, [ecx+0x15c]
	movzx eax, byte [esi+eax+0x81c]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ecx
	call G_FireGrenade
	mov dword [esp+0x8], 0x2
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x4], 0x9
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	mov eax, [eax+0xdc]
	mov [esp], eax
	call BG_SetConditionValue
	jmp player_die_60
player_die_90:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz player_die_130
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz player_die_130
	mov ecx, eax
	add eax, 0x13c
	mov edx, [ebp+0x8]
	add edx, 0x13c
	movss xmm0, dword [ecx+0x13c]
	mov esi, [ebp+0x8]
	subss xmm0, [esi+0x13c]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mov eax, esi
	jmp player_die_140
player_die_30:
	cmp word [esi+0x154], 0x0
	jz player_die_150
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	mov edx, g_entities
	add eax, edx
	mov [ebp+0x10], eax
	jmp player_die_150
player_die_50:
	mov ebx, [ebx+0xe8]
	jmp player_die_160
player_die_130:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	cvttss2si eax, [eax+0x14c]
	mov [edx+0x14c], eax
	jmp player_die_170
	nop


;G_DamageClient(gentity_s*, gentity_s*, gentity_s*, float const*, float const*, int, int, int, int, hitLocation_t, int)
G_DamageClient:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x24], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x18]
	mov [ebp-0x2c], edx
	mov ebx, [ebp+0x1c]
	mov eax, [ebp+0x20]
	mov [ebp-0x30], eax
	mov edx, [ebp+0x24]
	mov [ebp-0x34], edx
	mov esi, [ebp+0x28]
	mov eax, [ebp+0x2c]
	mov [ebp-0x38], eax
	mov edx, [ebp+0x30]
	mov [ebp-0x3c], edx
	cmp byte [edi+0x16b], 0x0
	jz G_DamageClient_10
	test ebx, ebx
	jle G_DamageClient_10
	mov eax, [edi+0x15c]
	mov ecx, [eax+0x3078]
	test ecx, ecx
	jnz G_DamageClient_10
	mov edx, [eax+0x307c]
	test edx, edx
	jnz G_DamageClient_10
	cmp dword [eax+0x2f8c], 0x2
	jz G_DamageClient_20
G_DamageClient_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_DamageClient_20:
	cmp dword [eax+0x4], 0x7
	jz G_DamageClient_10
	cmp esi, 0xffffffff
	jz G_DamageClient_30
G_DamageClient_120:
	cmp dword [ebp-0x34], 0x7
	jz G_DamageClient_40
	cvtsi2ss xmm0, ebx
	movss [ebp-0x1c], xmm0
	test esi, esi
	jnz G_DamageClient_50
	mov eax, [ebp-0x38]
	movss xmm0, dword [eax*4+g_fHitLocDamageMult]
G_DamageClient_70:
	mulss xmm0, [ebp-0x1c]
	cvttss2si ebx, xmm0
	test ebx, ebx
	mov eax, 0x1
	cmovle ebx, eax
G_DamageClient_40:
	mov eax, [ebp-0x3c]
	mov [ebp+0x30], eax
	mov edx, [ebp-0x38]
	mov [ebp+0x2c], edx
	mov eax, [ebp-0x28]
	mov [ebp+0x28], eax
	mov edx, [ebp-0x2c]
	mov [ebp+0x24], edx
	mov [ebp+0x20], esi
	mov eax, [ebp-0x34]
	mov [ebp+0x1c], eax
	mov edx, [ebp-0x30]
	mov [ebp+0x18], edx
	mov [ebp+0x14], ebx
	mov eax, [ebp-0x24]
	mov [ebp+0x10], eax
	mov edx, [ebp-0x20]
	mov [ebp+0xc], edx
	mov [ebp+0x8], edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_PlayerDamage
G_DamageClient_50:
	mov [esp], esi
	call BG_GetWeaponDef
	test eax, eax
	jz G_DamageClient_60
	mov ecx, [eax+0x12c]
	test ecx, ecx
	jnz G_DamageClient_60
	cmp dword [eax+0x130], 0x7
	jz G_DamageClient_60
	mov edx, [ebp-0x38]
	movss xmm0, dword [eax+edx*4+0x81c]
	jmp G_DamageClient_70
G_DamageClient_30:
	mov eax, [ebp-0x20]
	test eax, eax
	jz G_DamageClient_80
	mov edx, [ebp-0x20]
	mov eax, [edx+0x15c]
	test eax, eax
	jz G_DamageClient_90
G_DamageClient_140:
	test dword [eax+0xb0], 0x300
	jnz G_DamageClient_100
	test byte [eax+0xe], 0x10
	jz G_DamageClient_110
G_DamageClient_100:
	mov edx, [eax+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, g_entities
	mov esi, [edx+eax+0xc4]
	jmp G_DamageClient_120
G_DamageClient_60:
	mov edx, [ebp-0x38]
	movss xmm0, dword [edx*4+g_fHitLocDamageMult]
	jmp G_DamageClient_70
G_DamageClient_80:
	mov esi, [ebp-0x24]
	test esi, esi
	jz G_DamageClient_130
	mov edx, [ebp-0x24]
	mov eax, [edx+0x15c]
	test eax, eax
	jnz G_DamageClient_140
	mov eax, [ebp-0x24]
	mov esi, [eax+0xc4]
	jmp G_DamageClient_120
G_DamageClient_90:
	mov esi, [edx+0xc4]
	jmp G_DamageClient_120
G_DamageClient_110:
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov esi, eax
	jmp G_DamageClient_120
G_DamageClient_130:
	xor esi, esi
	jmp G_DamageClient_120
	nop


;G_RadiusDamage(float const*, gentity_s*, gentity_s*, float, float, float, float, float*, gentity_s*, int, int)
G_RadiusDamage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10ac
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x10]
	test edx, edx
	jz G_RadiusDamage_10
	movss xmm0, dword [ebp+0x1c]
	ucomiss xmm0, [_float_1_00000000]
	jb G_RadiusDamage_20
G_RadiusDamage_150:
	mulss xmm0, xmm0
	movss [ebp-0x104c], xmm0
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [_float_1_41421354]
G_RadiusDamage_160:
	mov ecx, 0x1
	lea esi, [ebp-0x24]
	lea ebx, [ebp-0x30]
G_RadiusDamage_30:
	lea eax, [ecx*4]
	lea edx, [eax+edi]
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [esi+eax-0x4], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx-0x4]
	movss [ebx+eax-0x4], xmm0
	add ecx, 0x1
	cmp ecx, 0x4
	jnz G_RadiusDamage_30
	mov dword [esp+0x10], 0xffffffff
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1048]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CM_AreaEntities
	mov [ebp-0x1054], eax
	test eax, eax
	jle G_RadiusDamage_10
	mov dword [ebp-0x1050], 0x0
	xor esi, esi
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [ebp+0x18]
	movss [ebp-0x105c], xmm0
	jmp G_RadiusDamage_40
G_RadiusDamage_90:
	lea eax, [ebx+0x13c]
	movss xmm0, dword [ebx+0x13c]
	subss xmm0, [edi]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edi+0x4]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edi+0x8]
	movss [ebp-0x40], xmm0
	movaps xmm1, xmm0
G_RadiusDamage_120:
	movss xmm2, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x44]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, [ebp-0x104c]
	jb G_RadiusDamage_50
G_RadiusDamage_70:
	add esi, 0x1
	cmp [ebp-0x1054], esi
	jz G_RadiusDamage_60
G_RadiusDamage_40:
	mov eax, [ebp+esi*4-0x1048]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	cmp ebx, [ebp+0x28]
	jz G_RadiusDamage_70
	cmp byte [ebx+0x16b], 0x0
	jz G_RadiusDamage_70
	mov eax, [ebx+0x15c]
	test eax, eax
	jz G_RadiusDamage_80
	mov eax, level
	mov eax, [eax+0x2de0]
	test eax, eax
	jnz G_RadiusDamage_70
G_RadiusDamage_80:
	cmp byte [ebx+0xf5], 0x0
	jz G_RadiusDamage_90
	mov eax, ebx
	mov ecx, 0x1
	lea edx, [ebp-0x48]
G_RadiusDamage_110:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe G_RadiusDamage_100
	subss xmm0, xmm1
	movss [edx], xmm0
G_RadiusDamage_140:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz G_RadiusDamage_110
	movss xmm1, dword [ebp-0x40]
	jmp G_RadiusDamage_120
G_RadiusDamage_10:
	mov dword [ebp-0x1050], 0x0
G_RadiusDamage_60:
	mov eax, [ebp-0x1050]
	add esp, 0x10ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RadiusDamage_100:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	jbe G_RadiusDamage_130
	subss xmm1, xmm0
	movss [edx], xmm1
	jmp G_RadiusDamage_140
G_RadiusDamage_130:
	mov dword [edx], 0x0
	jmp G_RadiusDamage_140
G_RadiusDamage_50:
	sqrtss xmm0, xmm2
	divss xmm0, dword [ebp+0x1c]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x105c]
	addss xmm1, [ebp+0x18]
	mov dword [esp+0x14], 0x802011
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	movss xmm0, dword [ebp+0x20]
	movss [esp+0xc], xmm0
	mov [esp+0x8], edi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x1078], xmm1
	call CanDamage
	fstp dword [ebp-0x1058]
	movss xmm0, dword [ebp-0x1058]
	ucomiss xmm0, [_float_0_00000000]
	jbe G_RadiusDamage_70
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call LogAccuracyHit
	test eax, eax
	mov eax, 0x1
	cmovz eax, [ebp-0x1050]
	mov [ebp-0x1050], eax
	lea eax, [ebx+0x13c]
	movss xmm0, dword [ebx+0x13c]
	subss xmm0, [edi]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edi+0x4]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edi+0x8]
	addss xmm0, [_float_24_00000000]
	movss [ebp-0x34], xmm0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x5
	movss xmm1, dword [ebp-0x1078]
	mulss xmm1, [ebp-0x1058]
	cvttss2si eax, xmm1
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call G_Damage
	jmp G_RadiusDamage_70
G_RadiusDamage_20:
	jp G_RadiusDamage_150
	movss xmm0, dword [_float_1_00000000]
	movss [ebp+0x1c], xmm0
	movss [ebp-0x104c], xmm0
	movss xmm1, dword [_float_1_41421354]
	jmp G_RadiusDamage_160
	nop


;G_FlashbangBlast(float const*, float, float, gentity_s*, team_t)
G_FlashbangBlast:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x107c
	mov edi, [ebp+0x8]
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x1050], xmm0
	maxss xmm0, [ebp+0x10]
	movss [ebp-0x1050], xmm0
	maxss xmm0, [ebp+0xc]
	movss [ebp-0x104c], xmm0
	movaps xmm1, xmm0
	mulss xmm1, [_float_1_41421354]
	mov ecx, 0x1
	lea ebx, [ebp-0x38]
G_FlashbangBlast_10:
	lea eax, [ecx*4]
	lea edx, [edi+eax]
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [ebx+eax-0x4], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx-0x4]
	movss [ebp+eax-0x30], xmm0
	add ecx, 0x1
	cmp ecx, 0x4
	jnz G_FlashbangBlast_10
	mov dword [esp+0x10], 0xffffffff
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1038]
	mov [esp+0x8], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CM_AreaEntities
	mov [ebp-0x1048], eax
	test eax, eax
	jle G_FlashbangBlast_20
	xor esi, esi
G_FlashbangBlast_80:
	mov eax, [ebp+esi*4-0x1038]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	mov eax, [ebx+0x15c]
	test eax, eax
	jz G_FlashbangBlast_30
	cmp byte [ebx+0x16b], 0x0
	jz G_FlashbangBlast_30
	cmp byte [ebx+0xf5], 0x0
	jz G_FlashbangBlast_40
	mov eax, ebx
	mov ecx, 0x1
	lea edx, [ebp-0x2c]
G_FlashbangBlast_60:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe G_FlashbangBlast_50
	subss xmm0, xmm1
	movss [edx], xmm0
G_FlashbangBlast_100:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz G_FlashbangBlast_60
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x24]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
G_FlashbangBlast_170:
	ucomiss xmm1, [ebp-0x104c]
	jbe G_FlashbangBlast_70
G_FlashbangBlast_30:
	add esi, 0x1
	cmp [ebp-0x1048], esi
	jnz G_FlashbangBlast_80
G_FlashbangBlast_20:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FlashbangBlast_50:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	jbe G_FlashbangBlast_90
	subss xmm1, xmm0
	movss [edx], xmm1
	jmp G_FlashbangBlast_100
G_FlashbangBlast_90:
	mov dword [edx], 0x0
	jmp G_FlashbangBlast_100
G_FlashbangBlast_70:
	mov dword [esp+0x14], 0x801
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], ebx
	movss [ebp-0x1068], xmm1
	call CanDamage
	fstp dword [ebp-0x1044]
	movss xmm0, dword [ebp-0x1044]
	ucomiss xmm0, [_float_0_00000000]
	movss xmm1, dword [ebp-0x1068]
	jbe G_FlashbangBlast_30
	movss xmm0, dword [ebp-0x1050]
	ucomiss xmm0, xmm1
	jb G_FlashbangBlast_110
	mov dword [ebp-0x1040], 0x3f800000
G_FlashbangBlast_180:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [esp], eax
	call AngleVectors
	mov eax, [ebx+0x15c]
	lea edx, [eax+0x1c]
	movss xmm0, dword [edx+0x8]
	movss xmm5, dword [edi]
	subss xmm5, [eax+0x1c]
	movss xmm3, dword [edi+0x4]
	subss xmm3, [edx+0x4]
	addss xmm0, [eax+0x118]
	movss xmm4, dword [edi+0x8]
	subss xmm4, xmm0
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov edx, [ebp-0x1c]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x20], eax
	movss xmm2, dword [ebp-0x20]
	mulss xmm1, [_float_0_50000000]
	mulss xmm1, xmm2
	mulss xmm1, xmm2
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x1c], xmm0
	mulss xmm5, xmm0
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x2c]
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x28]
	addss xmm3, xmm1
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0x24]
	addss xmm4, xmm3
	movaps xmm0, xmm4
	addss xmm0, [_float_1_00000000]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, xmm0
	movss [ebp-0x103c], xmm1
	cmp dword [ebp+0x18], 0x1
	jz G_FlashbangBlast_120
	jle G_FlashbangBlast_130
	cmp dword [ebp+0x18], 0x2
	jz G_FlashbangBlast_140
	cmp dword [ebp+0x18], 0x3
	jz G_FlashbangBlast_150
G_FlashbangBlast_210:
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_addscrteamname_u
	mov dword [esp], 0xf
	call Com_PrintWarning
	call Scr_AddUndefined
G_FlashbangBlast_190:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz G_FlashbangBlast_160
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Scr_AddEntity
G_FlashbangBlast_200:
	movss xmm0, dword [ebp-0x103c]
	movss [esp], xmm0
	call Scr_AddFloat
	movss xmm1, dword [ebp-0x1040]
	movss [esp], xmm1
	call Scr_AddFloat
	mov dword [esp+0x8], 0x4
	mov edx, scr_const
	movzx eax, word [edx+0xce]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	jmp G_FlashbangBlast_30
G_FlashbangBlast_40:
	lea eax, [ebx+0x13c]
	movss xmm2, dword [ebx+0x13c]
	subss xmm2, [edi]
	movss [ebp-0x2c], xmm2
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edi+0x4]
	movss [ebp-0x28], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edi+0x8]
	movss [ebp-0x24], xmm0
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm1, xmm2
	jmp G_FlashbangBlast_170
G_FlashbangBlast_110:
	subss xmm1, [ebp-0x1050]
	movss xmm0, dword [ebp-0x104c]
	subss xmm0, [ebp-0x1050]
	divss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x1040], xmm0
	jmp G_FlashbangBlast_180
G_FlashbangBlast_140:
	mov edx, scr_const
	movzx eax, word [edx+0xc]
	mov [esp], eax
	call Scr_AddConstString
	jmp G_FlashbangBlast_190
G_FlashbangBlast_120:
	mov edx, scr_const
	movzx eax, word [edx+0xe]
	mov [esp], eax
	call Scr_AddConstString
	jmp G_FlashbangBlast_190
G_FlashbangBlast_160:
	call Scr_AddUndefined
	jmp G_FlashbangBlast_200
G_FlashbangBlast_130:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz G_FlashbangBlast_210
	mov edx, scr_const
	movzx eax, word [edx+0x34]
	mov [esp], eax
	call Scr_AddConstString
	jmp G_FlashbangBlast_190
G_FlashbangBlast_150:
	mov edx, scr_const
	movzx eax, word [edx+0x140]
	mov [esp], eax
	call Scr_AddConstString
	jmp G_FlashbangBlast_190
	add [eax], al


;G_WithinDamageRadius(float const*, float, gentity_s*)
G_WithinDamageRadius:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	cmp byte [edx+0xf5], 0x0
	jnz G_WithinDamageRadius_10
	lea eax, [edx+0x13c]
	movss xmm0, dword [edx+0x13c]
	subss xmm0, [ebx]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebx+0x4]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebx+0x8]
	movss [ebp-0x8], xmm0
	movaps xmm2, xmm0
G_WithinDamageRadius_40:
	movss xmm0, dword [ebp-0x10]
	movss xmm1, dword [ebp-0xc]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm1, dword [ebp+0xc]
	xor eax, eax
	ucomiss xmm1, xmm0
	seta al
	add esp, 0x10
	pop ebx
	pop ebp
	ret
G_WithinDamageRadius_10:
	mov eax, edx
	mov edx, 0x1
	lea ecx, [ebp-0x10]
G_WithinDamageRadius_30:
	movss xmm1, dword [ebx+edx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe G_WithinDamageRadius_20
	subss xmm0, xmm1
	movss [ecx], xmm0
G_WithinDamageRadius_60:
	add edx, 0x1
	add ecx, 0x4
	add eax, 0x4
	cmp edx, 0x4
	jnz G_WithinDamageRadius_30
	movss xmm2, dword [ebp-0x8]
	jmp G_WithinDamageRadius_40
G_WithinDamageRadius_20:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	ja G_WithinDamageRadius_50
	mov dword [ecx], 0x0
	jmp G_WithinDamageRadius_60
G_WithinDamageRadius_50:
	subss xmm1, xmm0
	movss [ecx], xmm1
	jmp G_WithinDamageRadius_60


;G_ParseHitLocDmgTable()
G_ParseHitLocDmgTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x211c
	xor ebx, ebx
	lea esi, [ebp-0xfc]
	mov edi, g_HitLocConstNames
G_ParseHitLocDmgTable_10:
	mov dword [ebx+g_fHitLocDamageMult], 0x3f800000
	mov eax, [ebx+g_HitLocNames]
	mov [esi], eax
	mov [esi+0x4], ebx
	mov dword [esi+0x8], 0x6
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Scr_AllocString
	mov [edi], ax
	add ebx, 0x4
	add esi, 0xc
	add edi, 0x2
	cmp ebx, 0x4c
	jnz G_ParseHitLocDmgTable_10
	mov dword [g_fHitLocDamageMult+0x48], 0x0
	lea eax, [ebp-0x20fc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_locdmgtable
	mov dword [esp+0x4], _cstring_hitloc_damage_ta
	mov dword [esp], _cstring_infomp_lochit_dm
	call Com_LoadInfoString
	mov dword [esp+0x18], G_HitLocStrcpy
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x13
	lea eax, [ebp-0xfc]
	mov [esp+0x4], eax
	mov dword [esp], g_fHitLocDamageMult
	call ParseConfigStringToStruct
	test eax, eax
	jnz G_ParseHitLocDmgTable_20
	mov dword [esp+0x8], _cstring_infomp_lochit_dm
	mov dword [esp+0x4], _cstring_error_parsing_hi
	mov dword [esp], 0x2
	call Com_Error
G_ParseHitLocDmgTable_20:
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;G_GetHitLocationString(hitLocation_t)
G_GetHitLocationString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+eax+g_HitLocConstNames]
	pop ebp
	ret


;G_MeansOfDeathFromScriptParam(int)
G_MeansOfDeathFromScriptParam:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call Scr_GetConstString
	movzx ebx, ax
	xor ecx, ecx
	mov edx, modNames
G_MeansOfDeathFromScriptParam_20:
	mov eax, [edx]
	movzx eax, word [eax]
	cmp ebx, eax
	jz G_MeansOfDeathFromScriptParam_10
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x10
	jnz G_MeansOfDeathFromScriptParam_20
	mov [esp], ebx
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_means_of
	call va
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_ParamError
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
G_MeansOfDeathFromScriptParam_10:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_GetHitLocationIndexFromString(unsigned short)
G_GetHitLocationIndexFromString:
	push ebp
	mov ebp, esp
	movzx ecx, word [ebp+0x8]
	xor eax, eax
	mov edx, g_HitLocConstNames
	jmp G_GetHitLocationIndexFromString_10
G_GetHitLocationIndexFromString_30:
	add eax, 0x1
	add edx, 0x2
	cmp eax, 0x13
	jz G_GetHitLocationIndexFromString_20
G_GetHitLocationIndexFromString_10:
	cmp [edx], cx
	jnz G_GetHitLocationIndexFromString_30
	pop ebp
	ret
G_GetHitLocationIndexFromString_20:
	and eax, 0xffffff00
	pop ebp
	ret
	nop
	add [eax], al


;G_Damage(gentity_s*, gentity_s*, gentity_s*, float const*, float const*, int, int, int, int, hitLocation_t, unsigned int, unsigned int, int)
G_Damage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x15c]
	test edx, edx
	jz G_Damage_10
	mov eax, [ebp+0x38]
	mov [esp+0x28], eax
	mov edx, [ebp+0x2c]
	mov [esp+0x24], edx
	mov eax, [ebp+0x28]
	mov [esp+0x20], eax
	mov edx, [ebp+0x24]
	mov [esp+0x1c], edx
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x14], edx
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call G_DamageClient
G_Damage_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_Damage_10:
	cmp byte [edi+0x16b], 0x0
	jz G_Damage_20
	mov eax, [ebp+0xc]
	test eax, eax
	jz G_Damage_30
G_Damage_220:
	mov eax, [ebp+0x10]
	test eax, eax
	jz G_Damage_40
G_Damage_210:
	cmp dword [ebp+0x28], 0xffffffff
	jz G_Damage_50
G_Damage_170:
	mov eax, [edi+0x164]
	test eax, eax
	jz G_Damage_60
	mov edx, [ebp+0x28]
	mov [esp+0xc], edx
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov edx, [ebp+0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call G_VehImmuneToDamage
	test eax, eax
	jnz G_Damage_20
G_Damage_60:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call Vec3NormalizeTo
	fstp st0
	mov edx, [edi+0x180]
	test dl, 0x1
	jnz G_Damage_20
	mov eax, [ebp+0x1c]
	test eax, eax
	mov eax, 0x1
	cmovg eax, [ebp+0x1c]
	mov [ebp+0x1c], eax
	and dl, 0x2
	jz G_Damage_70
	mov edx, [edi+0x1a0]
	mov eax, edx
	sub eax, [ebp+0x1c]
	test eax, eax
	jle G_Damage_80
G_Damage_180:
	mov eax, g_debugDamage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz G_Damage_90
G_Damage_230:
	sub edx, [ebp+0x1c]
	mov [edi+0x1a0], edx
	mov eax, scr_const
	movzx eax, word [eax+0x1c]
	mov [ebp-0x2a], ax
	mov edx, [ebp+0x20]
	mov [esp], edx
	call Scr_AddInt
	mov eax, [ebp+0x34]
	test eax, eax
	jz G_Damage_100
	mov eax, [ebp+0x34]
	mov [esp], eax
	call Scr_AddConstString
G_Damage_200:
	mov eax, [ebp+0x30]
	test eax, eax
	jz G_Damage_110
	mov ebx, [ebp+0x30]
	sub ebx, 0x1
	movzx eax, word [edi+ebx*2+0x220]
	add eax, 0x33e
	mov [esp], eax
	call SV_GetConfigstringConst
	mov esi, eax
	movzx eax, word [edi+ebx*2+0x246]
	mov [esp], eax
	call Scr_AddConstString
	mov [esp], esi
	call Scr_AddConstString
G_Damage_190:
	mov edx, [ebp+0x24]
	mov eax, [edx*4+modNames]
	movzx eax, word [eax]
	mov [esp], eax
	call Scr_AddConstString
	mov esi, [ebp+0x18]
	test esi, esi
	jz G_Damage_120
	mov eax, [ebp+0x18]
	mov [esp], eax
	call Scr_AddVector
G_Damage_260:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz G_Damage_130
	mov edx, [ebp+0x14]
	mov [esp], edx
	call Scr_AddVector
G_Damage_250:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Scr_AddEntity
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call Scr_AddInt
	mov dword [esp+0x8], 0x9
	movzx eax, word [ebp-0x2a]
	mov [esp+0x4], eax
	mov [esp], edi
	call Scr_Notify
	mov eax, [edi+0x1a0]
	test eax, eax
	jle G_Damage_140
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x14]
	test eax, eax
	jz G_Damage_20
	mov edx, [ebp+0x28]
	mov [esp+0x1c], edx
	mov edx, [ebp+0x2c]
	mov [esp+0x18], edx
	lea edx, [ebp-0x24]
	mov [esp+0x14], edx
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov edx, [ebp+0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], edi
	call eax
	jmp G_Damage_20
G_Damage_50:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x15c]
	test eax, eax
	jz G_Damage_150
	test dword [eax+0xb0], 0x300
	jnz G_Damage_160
	test byte [eax+0xe], 0x10
	jnz G_Damage_160
	mov [esp], eax
	call BG_GetViewmodelWeaponIndex
	mov [ebp+0x28], eax
	jmp G_Damage_170
G_Damage_70:
	mov edx, [edi+0x1a0]
	jmp G_Damage_180
G_Damage_110:
	mov dword [esp], _cstring_null
	call Scr_AddString
	mov dword [esp], _cstring_null
	call Scr_AddString
	jmp G_Damage_190
G_Damage_100:
	mov dword [esp], _cstring_null
	call Scr_AddString
	jmp G_Damage_200
G_Damage_40:
	mov edx, g_entities
	add edx, 0x9cb18
	mov [ebp+0x10], edx
	jmp G_Damage_210
G_Damage_30:
	mov eax, g_entities
	add eax, 0x9cb18
	mov [ebp+0xc], eax
	jmp G_Damage_220
G_Damage_160:
	mov edx, [eax+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, g_entities
	mov edx, [edx+eax+0xc4]
	mov [ebp+0x28], edx
	jmp G_Damage_170
G_Damage_80:
	lea eax, [edx-0x1]
	mov [ebp+0x1c], eax
	jmp G_Damage_180
G_Damage_90:
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_targeti_healthi_
	mov dword [esp], 0xf
	call Com_Printf
	mov edx, [edi+0x1a0]
	jmp G_Damage_230
G_Damage_140:
	cmp eax, 0xfffffc19
	jge G_Damage_240
	mov dword [edi+0x1a0], 0xfffffc19
G_Damage_240:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call Scr_Notify
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x18]
	test eax, eax
	jz G_Damage_20
	mov edx, [ebp+0x38]
	mov [esp+0x20], edx
	mov edx, [ebp+0x2c]
	mov [esp+0x1c], edx
	lea edx, [ebp-0x24]
	mov [esp+0x18], edx
	mov edx, [ebp+0x28]
	mov [esp+0x14], edx
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call eax
	jmp G_Damage_20
G_Damage_130:
	mov eax, vec3_origin
	mov [esp], eax
	call Scr_AddVector
	jmp G_Damage_250
G_Damage_120:
	mov eax, vec3_origin
	mov [esp], eax
	call Scr_AddVector
	jmp G_Damage_260
G_Damage_150:
	mov eax, [edx+0xc4]
	mov [ebp+0x28], eax
	jmp G_Damage_170


;CanDamage(gentity_s*, gentity_s*, float const*, float, float*, int)
CanDamage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0xc]
	test eax, eax
	jz CanDamage_10
	mov eax, [eax]
	mov [ebp-0x94], eax
CanDamage_360:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	test edx, edx
	jz CanDamage_20
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call G_GetPlayerViewOrigin
	movss xmm3, dword [ebp-0x1c]
	movaps xmm7, xmm3
	mov edx, [ebp+0x8]
	subss xmm7, [edx+0x144]
	mulss xmm7, [_float_0_50000000]
	mov eax, edx
	add eax, 0x13c
	mov ecx, [ebp+0x10]
	movss xmm2, dword [ecx]
	subss xmm2, [edx+0x13c]
	add ecx, 0x4
	mov [ebp-0x90], ecx
	add edx, 0x140
	mov ecx, [ebp+0x10]
	movss xmm4, dword [ecx+0x4]
	mov ecx, [ebp+0x8]
	subss xmm4, [ecx+0x140]
	mov ecx, [ebp+0x10]
	add ecx, 0x8
	mov [ebp-0x8c], ecx
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	pxor xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jb CanDamage_30
	movss xmm0, dword [_float_1_00000000]
CanDamage_390:
	movaps xmm6, xmm0
	mulss xmm6, xmm2
	pxor xmm5, xmm5
	mulss xmm5, xmm0
	mulss xmm4, xmm0
	xorps xmm4, [_data16_80000000]
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [eax]
	movss xmm1, dword [ebp-0x20]
	addss xmm1, [edx]
	addss xmm3, [eax+0x8]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x6c], xmm0
	mulss xmm1, [_float_0_50000000]
	movss [ebp-0x68], xmm1
	mulss xmm3, [_float_0_50000000]
	movss [ebp-0x64], xmm3
	movss xmm0, dword [_float_15_00000000]
	movaps xmm3, xmm4
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x6c]
	movss [ebp-0x60], xmm3
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	addss xmm2, xmm1
	movss [ebp-0x5c], xmm2
	mulss xmm0, xmm5
	addss xmm0, [ebp-0x64]
	movaps xmm1, xmm7
	addss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss [ebp-0x54], xmm3
	movss [ebp-0x50], xmm2
	subss xmm0, xmm7
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [_float__15_00000000]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x6c]
	movss [ebp-0x48], xmm4
	mulss xmm6, xmm0
	addss xmm6, [ebp-0x68]
	movss [ebp-0x44], xmm6
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x64]
	movaps xmm0, xmm7
	addss xmm0, xmm5
	movss [ebp-0x40], xmm0
	movss [ebp-0x3c], xmm4
	movss [ebp-0x38], xmm6
	subss xmm5, xmm7
	movss [ebp-0x34], xmm5
	mov eax, radius_damage_debug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CanDamage_40
CanDamage_250:
	xor esi, esi
	xor edi, edi
	lea ebx, [ebp-0x6c]
CanDamage_90:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp CanDamage_50
	jz CanDamage_60
CanDamage_50:
	mov eax, [ebp+0x18]
	test eax, eax
	jz CanDamage_60
	movss xmm2, dword [ebx]
	mov eax, [ebp+0x10]
	subss xmm2, [eax]
	movss xmm3, dword [ebx+0x4]
	mov edx, [ebp-0x90]
	subss xmm3, [edx]
	movss xmm4, dword [ebx+0x8]
	mov ecx, [ebp-0x8c]
	subss xmm4, [ecx]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CanDamage_70
	movss xmm0, dword [_float_1_00000000]
CanDamage_280:
	mulss xmm2, xmm0
	mov eax, [ebp+0x18]
	mulss xmm2, [eax]
	mulss xmm3, xmm0
	mulss xmm3, [eax+0x4]
	addss xmm2, xmm3
	mulss xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, xmm2
	ja CanDamage_80
CanDamage_60:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x94]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call G_LocationalTracePassed
	cmp eax, 0x1
	sbb edi, 0xffffffff
CanDamage_80:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz CanDamage_90
	test edi, edi
	jz CanDamage_100
	cmp edi, 0x3
	jg CanDamage_110
	cvtsi2ss xmm0, edi
	divss xmm0, dword [_float_3_00000000]
	movss [ebp-0xac], xmm0
	mov eax, [ebp-0xac]
	mov [ebp-0xac], eax
	fld dword [ebp-0xac]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CanDamage_20:
	movzx edx, word [eax+0x170]
	mov eax, scr_const
	cmp dx, [eax+0x70]
	jz CanDamage_120
	mov edx, [ebp+0x8]
CanDamage_400:
	add edx, 0x124
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x124]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov edx, ecx
	add edx, 0x130
	mov eax, [ecx+0x130]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	movss xmm2, dword [ebp-0x1c]
CanDamage_410:
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x98], xmm0
	lea esi, [ebp-0x68]
	movss xmm1, dword [ebp-0x20]
	addss xmm1, [ebp-0x2c]
	lea ebx, [ebp-0x64]
	addss xmm2, [ebp-0x28]
	movss xmm0, dword [_float_0_50000000]
	movss xmm5, dword [ebp-0x98]
	mulss xmm5, xmm0
	movss [ebp-0x98], xmm5
	movss [ebp-0x6c], xmm5
	mulss xmm1, xmm0
	movss [ebp-0x9c], xmm1
	movss [ebp-0x68], xmm1
	mulss xmm0, xmm2
	movss [ebp-0xa0], xmm0
	movss [ebp-0x64], xmm0
	mov eax, [ebp+0x10]
	movss xmm5, dword [eax]
	subss xmm5, [ebp-0x98]
	add eax, 0x4
	mov [ebp-0x84], eax
	mov edx, [ebp+0x10]
	movss xmm3, dword [edx+0x4]
	subss xmm3, xmm1
	mov edi, edx
	add edi, 0x8
	movss xmm4, dword [edx+0x8]
	subss xmm4, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb CanDamage_130
	movss xmm0, dword [_float_1_00000000]
CanDamage_430:
	mulss xmm5, xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm0
	mulss xmm4, xmm0
	movaps xmm6, xmm2
	xorps xmm6, [_data16_80000000]
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	pxor xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm7, xmm0
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jb CanDamage_140
	movss xmm0, dword [_float_1_00000000]
CanDamage_440:
	mulss xmm6, xmm0
	movaps xmm1, xmm5
	mulss xmm1, xmm0
	movss [ebp-0x80], xmm1
	pxor xmm7, xmm7
	mulss xmm7, xmm0
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	movaps xmm0, xmm1
	mulss xmm0, xmm4
	subss xmm3, xmm0
	mulss xmm4, xmm6
	movaps xmm0, xmm5
	mulss xmm0, xmm7
	subss xmm4, xmm0
	mulss xmm5, xmm1
	mulss xmm2, xmm6
	subss xmm5, xmm2
	movss xmm1, dword [ebp-0x30]
	subss xmm1, [ebp-0x98]
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, [ebp-0x9c]
	movaps xmm0, xmm6
	mulss xmm0, xmm1
	cvttss2si edx, xmm0
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle edx, eax
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm2
	cvttss2si eax, xmm0
	mov ecx, eax
	neg ecx
	cmp eax, 0xffffffff
	cmovle eax, ecx
	add edx, eax
	cvtsi2ss xmm0, edx
	movss [ebp-0x88], xmm0
	mulss xmm1, xmm3
	cvttss2si edx, xmm1
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle edx, eax
	mulss xmm2, xmm4
	cvttss2si eax, xmm2
	mov ecx, eax
	neg ecx
	cmp eax, 0xffffffff
	cmovle eax, ecx
	add edx, eax
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0xa0]
	mulss xmm0, xmm5
	cvttss2si eax, xmm0
	mov ecx, eax
	neg ecx
	cmp eax, 0xffffffff
	cmovle eax, ecx
	add edx, eax
	cvtsi2ss xmm0, edx
	mulss xmm6, [ebp-0x88]
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, [ebp-0x88]
	movss [ebp-0x7c], xmm1
	mulss xmm7, [ebp-0x88]
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	mulss xmm5, xmm0
	movss xmm2, dword [ebp-0x98]
	addss xmm2, xmm6
	movss [ebp-0x60], xmm2
	addss xmm1, [esi]
	movss [ebp-0x44], xmm1
	movss [ebp-0x5c], xmm1
	movaps xmm2, xmm7
	addss xmm2, [ebx]
	movaps xmm0, xmm3
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm1
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm2
	movss [ebp-0x58], xmm0
	movaps xmm1, xmm6
	xorps xmm1, [_data16_80000000]
	addss xmm1, [ebp-0x6c]
	movss [ebp-0x54], xmm1
	movss xmm0, dword [ebp-0x7c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xa4], xmm0
	addss xmm0, [esi]
	movss [ebp-0xa4], xmm0
	movss [ebp-0x50], xmm0
	xorps xmm7, [_data16_80000000]
	addss xmm7, [ebx]
	movaps xmm0, xmm3
	addss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm4
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm7
	movss [ebp-0x4c], xmm0
	addss xmm6, [ebp-0x6c]
	xorps xmm3, [_data16_80000000]
	movaps xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0x48], xmm0
	xorps xmm4, [_data16_80000000]
	movaps xmm0, xmm4
	addss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	xorps xmm5, [_data16_80000000]
	movaps xmm0, xmm5
	addss xmm0, xmm2
	movss [ebp-0x40], xmm0
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [ebp-0xa4]
	addss xmm3, [ebp-0x3c]
	movss [ebp-0x3c], xmm3
	addss xmm4, xmm1
	movss [ebp-0x38], xmm4
	addss xmm5, xmm7
	movss [ebp-0x34], xmm5
	mov eax, radius_damage_debug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CanDamage_150
CanDamage_320:
	xor esi, esi
	lea ebx, [ebp-0x6c]
CanDamage_200:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp CanDamage_160
	jz CanDamage_170
CanDamage_160:
	mov eax, [ebp+0x18]
	test eax, eax
	jz CanDamage_170
	movss xmm2, dword [ebx]
	mov eax, [ebp+0x10]
	subss xmm2, [eax]
	movss xmm3, dword [ebx+0x4]
	mov edx, [ebp-0x84]
	subss xmm3, [edx]
	movss xmm4, dword [ebx+0x8]
	subss xmm4, [edi]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CanDamage_180
	movss xmm0, dword [_float_1_00000000]
CanDamage_380:
	mulss xmm2, xmm0
	mov ecx, [ebp+0x18]
	mulss xmm2, [ecx]
	mulss xmm3, xmm0
	mulss xmm3, [ecx+0x4]
	addss xmm2, xmm3
	mulss xmm4, xmm0
	mulss xmm4, [ecx+0x8]
	addss xmm2, xmm4
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, xmm2
	ja CanDamage_190
CanDamage_170:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x94]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call G_LocationalTracePassed
	test eax, eax
	jnz CanDamage_110
CanDamage_190:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz CanDamage_200
CanDamage_100:
	xor eax, eax
	mov [ebp-0xac], eax
	fld dword [ebp-0xac]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CanDamage_40:
	xor esi, esi
	lea ebx, [ebp-0x6c]
CanDamage_240:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp CanDamage_210
	jz CanDamage_220
CanDamage_210:
	mov eax, [ebp+0x18]
	test eax, eax
	jz CanDamage_220
	movss xmm2, dword [ebx]
	mov eax, [ebp+0x10]
	subss xmm2, [eax]
	movss xmm3, dword [ebx+0x4]
	mov edx, [ebp-0x90]
	subss xmm3, [edx]
	movss xmm4, dword [ebx+0x8]
	mov ecx, [ebp-0x8c]
	subss xmm4, [ecx]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CanDamage_230
	movss xmm0, dword [_float_1_00000000]
CanDamage_370:
	mulss xmm2, xmm0
	mov eax, [ebp+0x18]
	mulss xmm2, [eax]
	mulss xmm3, xmm0
	mulss xmm3, [eax+0x4]
	addss xmm2, xmm3
	mulss xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, xmm2
	jbe CanDamage_220
	mov eax, colorOrange
CanDamage_270:
	mov dword [esp+0x10], 0x12c
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call G_DebugLineWithDuration
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz CanDamage_240
	jmp CanDamage_250
CanDamage_220:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x94]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call G_LocationalTracePassed
	test eax, eax
	jnz CanDamage_260
	mov eax, colorRed
	jmp CanDamage_270
CanDamage_260:
	mov eax, colorWhite
	jmp CanDamage_270
CanDamage_70:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_280
CanDamage_110:
	mov eax, 0x3f800000
	mov [ebp-0xac], eax
	fld dword [ebp-0xac]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CanDamage_150:
	xor esi, esi
	lea ebx, [ebp-0x6c]
	jmp CanDamage_290
CanDamage_330:
	mov eax, [ebp+0x18]
	test eax, eax
	jz CanDamage_300
	movss xmm2, dword [ebx]
	mov eax, [ebp+0x10]
	subss xmm2, [eax]
	movss xmm3, dword [ebx+0x4]
	mov edx, [ebp-0x84]
	subss xmm3, [edx]
	movss xmm4, dword [ebx+0x8]
	subss xmm4, [edi]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb CanDamage_310
	movss xmm0, dword [_float_1_00000000]
CanDamage_420:
	mulss xmm2, xmm0
	mov ecx, [ebp+0x18]
	mulss xmm2, [ecx]
	mulss xmm3, xmm0
	mulss xmm3, [ecx+0x4]
	addss xmm2, xmm3
	mulss xmm0, xmm4
	mulss xmm0, [ecx+0x8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, xmm2
	jbe CanDamage_300
	mov eax, colorOrange
CanDamage_350:
	mov dword [esp+0x10], 0x12c
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call G_DebugLineWithDuration
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jz CanDamage_320
CanDamage_290:
	movss xmm2, dword [ebp+0x14]
	ucomiss xmm2, [_float__1_00000000]
	jp CanDamage_330
	jnz CanDamage_330
CanDamage_300:
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x94]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call G_LocationalTracePassed
	test eax, eax
	jnz CanDamage_340
	mov eax, colorRed
	jmp CanDamage_350
CanDamage_340:
	mov eax, colorWhite
	jmp CanDamage_350
CanDamage_10:
	mov dword [ebp-0x94], 0x3ff
	jmp CanDamage_360
CanDamage_230:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_370
CanDamage_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_380
CanDamage_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_390
CanDamage_120:
	mov edx, [ebp+0x8]
	cmp word [edx+0x168], 0x0
	jz CanDamage_400
	mov eax, [edx]
	mov [esp], eax
	call Com_GetServerDObj
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call DObjPhysicsGetBounds
	mov ecx, [ebp+0x8]
	movss xmm3, dword [ecx+0x13c]
	movaps xmm0, xmm3
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movss xmm2, dword [ecx+0x140]
	movaps xmm0, xmm2
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	movss xmm1, dword [ecx+0x144]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	addss xmm3, [ebp-0x30]
	movss [ebp-0x30], xmm3
	addss xmm2, [ebp-0x2c]
	movss [ebp-0x2c], xmm2
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	movaps xmm2, xmm0
	jmp CanDamage_410
CanDamage_310:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_420
CanDamage_130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp CanDamage_430
CanDamage_140:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm7
	jmp CanDamage_440
	nop


;Initialized global or static variables of g_combat_mp:
SECTION .data
g_HitLocNames: dd _cstring_none, _cstring_helmet, _cstring_head, _cstring_neck, _cstring_torso_upper, _cstring_torso_lower, _cstring_right_arm_upper, _cstring_left_arm_upper, _cstring_right_arm_lower, _cstring_left_arm_lower, _cstring_right_hand, _cstring_left_hand, _cstring_right_leg_upper, _cstring_left_leg_upper, _cstring_right_leg_lower, _cstring_left_leg_lower, _cstring_right_foot, _cstring_left_foot, _cstring_gun, 0x0, 0x0, 0x0, 0x0, 0x0
bulletPriorityMap: dd 0x3030301, 0x3030303, 0x3030303, 0x3030303, 0x303, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0
riflePriorityMap: dd 0x9090901, 0x6060708, 0x5050606, 0x4040404
		db 0x3, 0x3, 0x0

;Initialized constant data of g_combat_mp:
SECTION .rdata


;Zero initialized global or static variables of g_combat_mp:
SECTION .bss
g_HitLocConstNames: resb 0x80
g_fHitLocDamageMult: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_addscrteamname_u:		db "AddScrTeamName(): Unhandled team name %i.",0ah,0
_cstring_locdmgtable:		db "LOCDMGTABLE",0
_cstring_hitloc_damage_ta:		db "hitloc damage table",0
_cstring_infomp_lochit_dm:		db "info/mp_lochit_dmgtable",0
_cstring_error_parsing_hi:		db 15h,"Error parsing hitloc damage table %s",0ah,0
_cstring_unknown_means_of:		db "Unknown means of death ",22h,"%s",22h,0ah,0
_cstring_null:		db 0
_cstring_targeti_healthi_:		db "target:%i health:%i damage:%i",0ah,0
_cstring_none:		db "none",0
_cstring_helmet:		db "helmet",0
_cstring_head:		db "head",0
_cstring_neck:		db "neck",0
_cstring_torso_upper:		db "torso_upper",0
_cstring_torso_lower:		db "torso_lower",0
_cstring_right_arm_upper:		db "right_arm_upper",0
_cstring_left_arm_upper:		db "left_arm_upper",0
_cstring_right_arm_lower:		db "right_arm_lower",0
_cstring_left_arm_lower:		db "left_arm_lower",0
_cstring_right_hand:		db "right_hand",0
_cstring_left_hand:		db "left_hand",0
_cstring_right_leg_upper:		db "right_leg_upper",0
_cstring_left_leg_upper:		db "left_leg_upper",0
_cstring_right_leg_lower:		db "right_leg_lower",0
_cstring_left_leg_lower:		db "left_leg_lower",0
_cstring_right_foot:		db "right_foot",0
_cstring_left_foot:		db "left_foot",0
_cstring_gun:		db "gun",0



;All constant floats and doubles:
SECTION .rdata
_float_160_00000000:		dd 0x43200000	; 160
_float_40_00000000:		dd 0x42200000	; 40
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_41421354:		dd 0x3fb504f3	; 1.41421
_float_0_00000000:		dd 0x0	; 0
_float_24_00000000:		dd 0x41c00000	; 24
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_15_00000000:		dd 0x41700000	; 15
_float__15_00000000:		dd 0xc1700000	; -15
_float__1_00000000:		dd 0xbf800000	; -1
_float_3_00000000:		dd 0x40400000	; 3

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
