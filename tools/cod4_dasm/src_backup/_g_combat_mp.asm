;Imports of g_combat_mp:
	extern strcpy
	extern _Z17Com_GetServerDObji
	extern _Z9G_crandomv
	extern _Z13G_FireGrenadeP9gentity_sPfS1_ihii
	extern _Z13Scr_AddEntityP9gentity_s
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	extern _Z16Scr_PlayerKilledP9gentity_sS0_S0_iiiPKf13hitLocation_tii
	extern level
	extern _Z8vectoyawPKf
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z13SV_LinkEntityP9gentity_s
	extern g_entities
	extern _Z11Cmd_Score_fP9gentity_s
	extern perk_grenadeDeath
	extern _Z25BG_FindWeaponIndexForNamePKc
	extern _Z15BG_GetWeaponDefj
	extern _Z20BG_SetConditionValueiiy
	extern _Z16Scr_PlayerDamageP9gentity_sS0_S0_iiiiPKfS2_13hitLocation_ti
	extern _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern _Z14LogAccuracyHitP9gentity_sS0_
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z16Com_PrintWarningiPKcz
	extern _Z16Scr_AddUndefinedv
	extern _Z12Scr_AddFloatf
	extern _Z18Scr_AddConstStringj
	extern _Z15Scr_AllocStringPKci
	extern _Z18Com_LoadInfoStringPKcS0_S0_Pc
	extern _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z18Scr_GetConstStringj
	extern _Z18SL_ConvertToStringj
	extern _Z2vaPKcz
	extern _Z14Scr_ParamErrorjPKc
	extern _Z19G_VehImmuneToDamageP9gentity_siii
	extern _Z15Vec3NormalizeToPKfPf
	extern g_debugDamage
	extern _Z10Scr_AddInti
	extern _Z23SV_GetConfigstringConsti
	extern _Z13Scr_AddVectorPKf
	extern entityHandlers
	extern _Z13Scr_AddStringPKc
	extern _Z10Com_PrintfiPKcz
	extern vec3_origin
	extern _Z21G_GetPlayerViewOriginPK13playerState_sPf
	extern radius_damage_debug
	extern _Z23G_LocationalTracePassedPKfS0_iiiPh
	extern colorOrange
	extern _Z23G_DebugLineWithDurationPKfS0_S0_ii
	extern colorRed
	extern colorWhite
	extern _Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_

;Exports of g_combat_mp:
	global g_HitLocConstNames
	global g_HitLocNames
	global _Z14G_HitLocStrcpyPhPKc
	global _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	global _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti
	global _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii
	global _Z16G_FlashbangBlastPKfffP9gentity_s6team_t
	global _Z20G_WithinDamageRadiusPKffP9gentity_s
	global _Z21G_ParseHitLocDmgTablev
	global _Z22G_GetHitLocationString13hitLocation_t
	global _Z29G_MeansOfDeathFromScriptParami
	global _Z31G_GetHitLocationIndexFromStringt
	global _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	global _Z9CanDamageP9gentity_sS0_PKffPfi
	global bulletPriorityMap
	global riflePriorityMap
	global modNames
	global g_fHitLocDamageMult


SECTION .text


;G_HitLocStrcpy(unsigned char*, char const*)
_Z14G_HitLocStrcpyPhPKc:
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
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti:
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
	call _Z17Com_GetServerDObji
	test eax, eax
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x15c]
	mov eax, [ebx+0x4]
	cmp eax, 0x1
	jbe _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20
	cmp eax, 0x6
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20:
	test byte [ebx+0x14], 0x2
	jnz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	mov esi, [ebp+0x10]
	cmp dword [esi+0x4], 0xb
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_30
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_150:
	mov edi, [ebx+0x44]
	test edi, edi
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_40
	test byte [ebx+0x10], 0x2
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_50
	mov ebx, [ebx+0xe0]
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_160:
	call _Z9G_crandomv
	fstp dword [ebp-0x24]
	call _Z9G_crandomv
	fstp dword [ebp-0x20]
	call _Z9G_crandomv
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
	call _Z13G_FireGrenadeP9gentity_sPfS1_ihii
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_40:
	cmp dword [ebp+0x18], 0xc
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	test byte [eax+0x5fc], 0x40
	jnz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_70
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
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
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
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
	call _Z16Scr_PlayerKilledP9gentity_sS0_S0_iiiPKf13hitLocation_tii
	mov edx, level
	mov esi, [edx+0x1e4]
	test esi, esi
	jg _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_80
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_110:
	mov esi, [ebp+0x8]
	mov byte [esi+0x16b], 0x1
	mov dword [esi+0x120], 0x4000000
	mov dword [esi+0x150], 0x0
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_90
	cmp [ebp+0x10], esi
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_90
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
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_140:
	mov esi, [eax+0x15c]
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	call _Z8vectoyawPKf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [esi+0x14c], eax
	mov [esp], ebx
	call _Z8vectoyawPKf
	fstp st0
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_170:
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
	call _Z15SV_UnlinkEntityP9gentity_s
	mov dword [esi+0x11c], 0x41f00000
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov dword [esi+0x1a0], 0x0
	mov byte [esi+0x16e], 0xc
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_80:
	xor esi, esi
	xor ebx, ebx
	mov edi, g_entities
	mov [ebp-0x40], edx
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_100
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_120:
	add esi, 0x1
	add ebx, 0x3184
	add edi, 0x274
	cmp [edx+0x1e4], esi
	jle _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_110
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_100:
	mov eax, ebx
	add eax, [edx]
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_120
	cmp dword [eax+0x2f64], 0x2
	jnz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_120
	mov eax, [eax+0x3074]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx]
	jnz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_120
	mov [esp], edi
	call _Z11Cmd_Score_fP9gentity_s
	mov edx, [ebp-0x40]
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_120
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_70:
	mov eax, perk_grenadeDeath
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z25BG_FindWeaponIndexForNamePKc
	mov esi, eax
	test eax, eax
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	call _Z9G_crandomv
	fstp dword [ebp-0x24]
	call _Z9G_crandomv
	fstp dword [ebp-0x20]
	call _Z9G_crandomv
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
	call _Z13G_FireGrenadeP9gentity_sPfS1_ihii
	mov dword [esp+0x8], 0x2
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x4], 0x9
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	mov eax, [eax+0xdc]
	mov [esp], eax
	call _Z20BG_SetConditionValueiiy
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_90:
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_130
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_130
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
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_140
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_30:
	cmp word [esi+0x154], 0x0
	jz _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_150
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
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_150
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_50:
	mov ebx, [ebx+0xe8]
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_160
_Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_130:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	cvttss2si eax, [eax+0x14c]
	mov [edx+0x14c], eax
	jmp _Z10player_dieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_170
	nop


;G_DamageClient(gentity_s*, gentity_s*, gentity_s*, float const*, float const*, int, int, int, int, hitLocation_t, int)
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti:
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
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10
	test ebx, ebx
	jle _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10
	mov eax, [edi+0x15c]
	mov ecx, [eax+0x3078]
	test ecx, ecx
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10
	mov edx, [eax+0x307c]
	test edx, edx
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10
	cmp dword [eax+0x2f8c], 0x2
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_20
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_20:
	cmp dword [eax+0x4], 0x7
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_10
	cmp esi, 0xffffffff
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_30
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120:
	cmp dword [ebp-0x34], 0x7
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_40
	cvtsi2ss xmm0, ebx
	movss [ebp-0x1c], xmm0
	test esi, esi
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_50
	mov eax, [ebp-0x38]
	movss xmm0, dword [eax*4+g_fHitLocDamageMult]
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_70:
	mulss xmm0, [ebp-0x1c]
	cvttss2si ebx, xmm0
	test ebx, ebx
	mov eax, 0x1
	cmovle ebx, eax
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_40:
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
	jmp _Z16Scr_PlayerDamageP9gentity_sS0_S0_iiiiPKfS2_13hitLocation_ti
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_50:
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	test eax, eax
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_60
	mov ecx, [eax+0x12c]
	test ecx, ecx
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_60
	cmp dword [eax+0x130], 0x7
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_60
	mov edx, [ebp-0x38]
	movss xmm0, dword [eax+edx*4+0x81c]
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_70
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_30:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_80
	mov edx, [ebp-0x20]
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_90
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_140:
	test dword [eax+0xb0], 0x300
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_100
	test byte [eax+0xe], 0x10
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_110
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_100:
	mov edx, [eax+0x59c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, g_entities
	mov esi, [edx+eax+0xc4]
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_60:
	mov edx, [ebp-0x38]
	movss xmm0, dword [edx*4+g_fHitLocDamageMult]
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_70
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_80:
	mov esi, [ebp-0x24]
	test esi, esi
	jz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_130
	mov edx, [ebp-0x24]
	mov eax, [edx+0x15c]
	test eax, eax
	jnz _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_140
	mov eax, [ebp-0x24]
	mov esi, [eax+0xc4]
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_90:
	mov esi, [edx+0xc4]
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_110:
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov esi, eax
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120
_Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_130:
	xor esi, esi
	jmp _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti_120
	nop


;G_RadiusDamage(float const*, gentity_s*, gentity_s*, float, float, float, float, float*, gentity_s*, int, int)
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10ac
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_10
	movss xmm0, dword [ebp+0x1c]
	ucomiss xmm0, [_float_1_00000000]
	jb _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_20
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_150:
	mulss xmm0, xmm0
	movss [ebp-0x104c], xmm0
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [_float_1_41421354]
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_160:
	mov ecx, 0x1
	lea esi, [ebp-0x24]
	lea ebx, [ebp-0x30]
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_30:
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
	jnz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_30
	mov dword [esp+0x10], 0xffffffff
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1048]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x1054], eax
	test eax, eax
	jle _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_10
	mov dword [ebp-0x1050], 0x0
	xor esi, esi
	movss xmm0, dword [ebp+0x14]
	subss xmm0, [ebp+0x18]
	movss [ebp-0x105c], xmm0
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_40
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_90:
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
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_120:
	movss xmm2, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x44]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, [ebp-0x104c]
	jb _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_50
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70:
	add esi, 0x1
	cmp [ebp-0x1054], esi
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_60
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_40:
	mov eax, [ebp+esi*4-0x1048]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	cmp ebx, [ebp+0x28]
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70
	cmp byte [ebx+0x16b], 0x0
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_80
	mov eax, level
	mov eax, [eax+0x2de0]
	test eax, eax
	jnz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_80:
	cmp byte [ebx+0xf5], 0x0
	jz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_90
	mov eax, ebx
	mov ecx, 0x1
	lea edx, [ebp-0x48]
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_110:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_100
	subss xmm0, xmm1
	movss [edx], xmm0
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_140:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_110
	movss xmm1, dword [ebp-0x40]
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_120
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_10:
	mov dword [ebp-0x1050], 0x0
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_60:
	mov eax, [ebp-0x1050]
	add esp, 0x10ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_100:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	jbe _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_130
	subss xmm1, xmm0
	movss [edx], xmm1
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_140
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_130:
	mov dword [edx], 0x0
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_140
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_50:
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
	call _Z9CanDamageP9gentity_sS0_PKffPfi
	fstp dword [ebp-0x1058]
	movss xmm0, dword [ebp-0x1058]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14LogAccuracyHitP9gentity_sS0_
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
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_70
_Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_20:
	jp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_150
	movss xmm0, dword [_float_1_00000000]
	movss [ebp+0x1c], xmm0
	movss [ebp-0x104c], xmm0
	movss xmm1, dword [_float_1_41421354]
	jmp _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii_160
	nop


;G_FlashbangBlast(float const*, float, float, gentity_s*, team_t)
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t:
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
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_10:
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
	jnz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_10
	mov dword [esp+0x10], 0xffffffff
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x1038]
	mov [esp+0x8], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x1048], eax
	test eax, eax
	jle _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_20
	xor esi, esi
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_80:
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
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_30
	cmp byte [ebx+0x16b], 0x0
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_30
	cmp byte [ebx+0xf5], 0x0
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_40
	mov eax, ebx
	mov ecx, 0x1
	lea edx, [ebp-0x2c]
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_60:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_50
	subss xmm0, xmm1
	movss [edx], xmm0
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_100:
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_60
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x24]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_170:
	ucomiss xmm1, [ebp-0x104c]
	jbe _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_70
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_30:
	add esi, 0x1
	cmp [ebp-0x1048], esi
	jnz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_80
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_20:
	add esp, 0x107c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_50:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	jbe _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_90
	subss xmm1, xmm0
	movss [edx], xmm1
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_100
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_90:
	mov dword [edx], 0x0
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_100
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_70:
	mov dword [esp+0x14], 0x801
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], ebx
	movss [ebp-0x1068], xmm1
	call _Z9CanDamageP9gentity_sS0_PKffPfi
	fstp dword [ebp-0x1044]
	movss xmm0, dword [ebp-0x1044]
	ucomiss xmm0, [_float_0_00000000]
	movss xmm1, dword [ebp-0x1068]
	jbe _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_30
	movss xmm0, dword [ebp-0x1050]
	ucomiss xmm0, xmm1
	jb _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_110
	mov dword [ebp-0x1040], 0x3f800000
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_180:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	add eax, 0x108
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
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
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_120
	jle _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_130
	cmp dword [ebp+0x18], 0x2
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_140
	cmp dword [ebp+0x18], 0x3
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_150
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_210:
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_addscrteamname_u
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	call _Z16Scr_AddUndefinedv
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_190:
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_160
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_200:
	movss xmm0, dword [ebp-0x103c]
	movss [esp], xmm0
	call _Z12Scr_AddFloatf
	movss xmm1, dword [ebp-0x1040]
	movss [esp], xmm1
	call _Z12Scr_AddFloatf
	mov dword [esp+0x8], 0x4
	mov edx, scr_const
	movzx eax, word [edx+0xce]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_30
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_40:
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
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_170
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_110:
	subss xmm1, [ebp-0x1050]
	movss xmm0, dword [ebp-0x104c]
	subss xmm0, [ebp-0x1050]
	divss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x1040], xmm0
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_180
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_140:
	mov edx, scr_const
	movzx eax, word [edx+0xc]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_190
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_120:
	mov edx, scr_const
	movzx eax, word [edx+0xe]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_190
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_160:
	call _Z16Scr_AddUndefinedv
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_200
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_130:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_210
	mov edx, scr_const
	movzx eax, word [edx+0x34]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_190
_Z16G_FlashbangBlastPKfffP9gentity_s6team_t_150:
	mov edx, scr_const
	movzx eax, word [edx+0x140]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	jmp _Z16G_FlashbangBlastPKfffP9gentity_s6team_t_190
	add [eax], al


;G_WithinDamageRadius(float const*, float, gentity_s*)
_Z20G_WithinDamageRadiusPKffP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x10]
	cmp byte [edx+0xf5], 0x0
	jnz _Z20G_WithinDamageRadiusPKffP9gentity_s_10
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
_Z20G_WithinDamageRadiusPKffP9gentity_s_40:
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
_Z20G_WithinDamageRadiusPKffP9gentity_s_10:
	mov eax, edx
	mov edx, 0x1
	lea ecx, [ebp-0x10]
_Z20G_WithinDamageRadiusPKffP9gentity_s_30:
	movss xmm1, dword [ebx+edx*4-0x4]
	movss xmm0, dword [eax+0x124]
	ucomiss xmm0, xmm1
	jbe _Z20G_WithinDamageRadiusPKffP9gentity_s_20
	subss xmm0, xmm1
	movss [ecx], xmm0
_Z20G_WithinDamageRadiusPKffP9gentity_s_60:
	add edx, 0x1
	add ecx, 0x4
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z20G_WithinDamageRadiusPKffP9gentity_s_30
	movss xmm2, dword [ebp-0x8]
	jmp _Z20G_WithinDamageRadiusPKffP9gentity_s_40
_Z20G_WithinDamageRadiusPKffP9gentity_s_20:
	movss xmm0, dword [eax+0x130]
	ucomiss xmm1, xmm0
	ja _Z20G_WithinDamageRadiusPKffP9gentity_s_50
	mov dword [ecx], 0x0
	jmp _Z20G_WithinDamageRadiusPKffP9gentity_s_60
_Z20G_WithinDamageRadiusPKffP9gentity_s_50:
	subss xmm1, xmm0
	movss [ecx], xmm1
	jmp _Z20G_WithinDamageRadiusPKffP9gentity_s_60


;G_ParseHitLocDmgTable()
_Z21G_ParseHitLocDmgTablev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x211c
	xor ebx, ebx
	lea esi, [ebp-0xfc]
	mov edi, g_HitLocConstNames
_Z21G_ParseHitLocDmgTablev_10:
	mov dword [ebx+g_fHitLocDamageMult], 0x3f800000
	mov eax, [ebx+g_HitLocNames]
	mov [esi], eax
	mov [esi+0x4], ebx
	mov dword [esi+0x8], 0x6
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z15Scr_AllocStringPKci
	mov [edi], ax
	add ebx, 0x4
	add esi, 0xc
	add edi, 0x2
	cmp ebx, 0x4c
	jnz _Z21G_ParseHitLocDmgTablev_10
	mov dword [g_fHitLocDamageMult+0x48], 0x0
	lea eax, [ebp-0x20fc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_locdmgtable
	mov dword [esp+0x4], _cstring_hitloc_damage_ta
	mov dword [esp], _cstring_infomp_lochit_dm
	call _Z18Com_LoadInfoStringPKcS0_S0_Pc
	mov dword [esp+0x18], _Z14G_HitLocStrcpyPhPKc
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x13
	lea eax, [ebp-0xfc]
	mov [esp+0x4], eax
	mov dword [esp], g_fHitLocDamageMult
	call _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	test eax, eax
	jnz _Z21G_ParseHitLocDmgTablev_20
	mov dword [esp+0x8], _cstring_infomp_lochit_dm
	mov dword [esp+0x4], _cstring_error_parsing_hi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z21G_ParseHitLocDmgTablev_20:
	add esp, 0x211c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;G_GetHitLocationString(hitLocation_t)
_Z22G_GetHitLocationString13hitLocation_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+eax+g_HitLocConstNames]
	pop ebp
	ret


;G_MeansOfDeathFromScriptParam(int)
_Z29G_MeansOfDeathFromScriptParami:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z18Scr_GetConstStringj
	movzx ebx, ax
	xor ecx, ecx
	mov edx, modNames
_Z29G_MeansOfDeathFromScriptParami_20:
	mov eax, [edx]
	movzx eax, word [eax]
	cmp ebx, eax
	jz _Z29G_MeansOfDeathFromScriptParami_10
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x10
	jnz _Z29G_MeansOfDeathFromScriptParami_20
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_means_of
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14Scr_ParamErrorjPKc
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z29G_MeansOfDeathFromScriptParami_10:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;G_GetHitLocationIndexFromString(unsigned short)
_Z31G_GetHitLocationIndexFromStringt:
	push ebp
	mov ebp, esp
	movzx ecx, word [ebp+0x8]
	xor eax, eax
	mov edx, g_HitLocConstNames
	jmp _Z31G_GetHitLocationIndexFromStringt_10
_Z31G_GetHitLocationIndexFromStringt_30:
	add eax, 0x1
	add edx, 0x2
	cmp eax, 0x13
	jz _Z31G_GetHitLocationIndexFromStringt_20
_Z31G_GetHitLocationIndexFromStringt_10:
	cmp [edx], cx
	jnz _Z31G_GetHitLocationIndexFromStringt_30
	pop ebp
	ret
_Z31G_GetHitLocationIndexFromStringt_20:
	and eax, 0xffffff00
	pop ebp
	ret
	nop
	add [eax], al


;G_Damage(gentity_s*, gentity_s*, gentity_s*, float const*, float const*, int, int, int, int, hitLocation_t, unsigned int, unsigned int, int)
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x15c]
	test edx, edx
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_10
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
	call _Z14G_DamageClientP9gentity_sS0_S0_PKfS2_iiii13hitLocation_ti
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_10:
	cmp byte [edi+0x16b], 0x0
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_30
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_220:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_40
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_210:
	cmp dword [ebp+0x28], 0xffffffff
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_50
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_170:
	mov eax, [edi+0x164]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_60
	mov edx, [ebp+0x28]
	mov [esp+0xc], edx
	mov eax, [ebp+0x20]
	mov [esp+0x8], eax
	mov edx, [ebp+0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z19G_VehImmuneToDamageP9gentity_siii
	test eax, eax
	jnz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_60:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov edx, [edi+0x180]
	test dl, 0x1
	jnz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
	mov eax, [ebp+0x1c]
	test eax, eax
	mov eax, 0x1
	cmovg eax, [ebp+0x1c]
	mov [ebp+0x1c], eax
	and dl, 0x2
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_70
	mov edx, [edi+0x1a0]
	mov eax, edx
	sub eax, [ebp+0x1c]
	test eax, eax
	jle _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_80
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_180:
	mov eax, g_debugDamage
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_90
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_230:
	sub edx, [ebp+0x1c]
	mov [edi+0x1a0], edx
	mov eax, scr_const
	movzx eax, word [eax+0x1c]
	mov [ebp-0x2a], ax
	mov edx, [ebp+0x20]
	mov [esp], edx
	call _Z10Scr_AddInti
	mov eax, [ebp+0x34]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_100
	mov eax, [ebp+0x34]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_200:
	mov eax, [ebp+0x30]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_110
	mov ebx, [ebp+0x30]
	sub ebx, 0x1
	movzx eax, word [edi+ebx*2+0x220]
	add eax, 0x33e
	mov [esp], eax
	call _Z23SV_GetConfigstringConsti
	mov esi, eax
	movzx eax, word [edi+ebx*2+0x246]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov [esp], esi
	call _Z18Scr_AddConstStringj
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_190:
	mov edx, [ebp+0x24]
	mov eax, [edx*4+modNames]
	movzx eax, word [eax]
	mov [esp], eax
	call _Z18Scr_AddConstStringj
	mov esi, [ebp+0x18]
	test esi, esi
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_120
	mov eax, [ebp+0x18]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_260:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_130
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z13Scr_AddVectorPKf
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_250:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call _Z10Scr_AddInti
	mov dword [esp+0x8], 0x9
	movzx eax, word [ebp-0x2a]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [edi+0x1a0]
	test eax, eax
	jle _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_140
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x14]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
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
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_50:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_150
	test dword [eax+0xb0], 0x300
	jnz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_160
	test byte [eax+0xe], 0x10
	jnz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_160
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [ebp+0x28], eax
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_170
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_70:
	mov edx, [edi+0x1a0]
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_180
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_110:
	mov dword [esp], _cstring_null
	call _Z13Scr_AddStringPKc
	mov dword [esp], _cstring_null
	call _Z13Scr_AddStringPKc
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_190
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_100:
	mov dword [esp], _cstring_null
	call _Z13Scr_AddStringPKc
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_200
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_40:
	mov edx, g_entities
	add edx, 0x9cb18
	mov [ebp+0x10], edx
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_210
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_30:
	mov eax, g_entities
	add eax, 0x9cb18
	mov [ebp+0xc], eax
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_220
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_160:
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
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_170
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_80:
	lea eax, [edx-0x1]
	mov [ebp+0x1c], eax
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_180
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_90:
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_targeti_healthi_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	mov edx, [edi+0x1a0]
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_230
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_140:
	cmp eax, 0xfffffc19
	jge _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_240
	mov dword [edi+0x1a0], 0xfffffc19
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_240:
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10Scr_NotifyP9gentity_stj
	movzx eax, byte [edi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x18]
	test eax, eax
	jz _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
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
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_20
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_130:
	mov eax, vec3_origin
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_250
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_120:
	mov eax, vec3_origin
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_260
_Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_150:
	mov eax, [edx+0xc4]
	mov [ebp+0x28], eax
	jmp _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji_170


;CanDamage(gentity_s*, gentity_s*, float const*, float, float*, int)
_Z9CanDamageP9gentity_sS0_PKffPfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_10
	mov eax, [eax]
	mov [ebp-0x94], eax
_Z9CanDamageP9gentity_sS0_PKffPfi_360:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	test edx, edx
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_20
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_30
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_390:
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
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_40
_Z9CanDamageP9gentity_sS0_PKffPfi_250:
	xor esi, esi
	xor edi, edi
	lea ebx, [ebp-0x6c]
_Z9CanDamageP9gentity_sS0_PKffPfi_90:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp _Z9CanDamageP9gentity_sS0_PKffPfi_50
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_60
_Z9CanDamageP9gentity_sS0_PKffPfi_50:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_60
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_70
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_280:
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
	ja _Z9CanDamageP9gentity_sS0_PKffPfi_80
_Z9CanDamageP9gentity_sS0_PKffPfi_60:
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
	call _Z23G_LocationalTracePassedPKfS0_iiiPh
	cmp eax, 0x1
	sbb edi, 0xffffffff
_Z9CanDamageP9gentity_sS0_PKffPfi_80:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_90
	test edi, edi
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_100
	cmp edi, 0x3
	jg _Z9CanDamageP9gentity_sS0_PKffPfi_110
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
_Z9CanDamageP9gentity_sS0_PKffPfi_20:
	movzx edx, word [eax+0x170]
	mov eax, scr_const
	cmp dx, [eax+0x70]
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_120
	mov edx, [ebp+0x8]
_Z9CanDamageP9gentity_sS0_PKffPfi_400:
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
_Z9CanDamageP9gentity_sS0_PKffPfi_410:
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_130
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_430:
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_140
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_440:
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
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_150
_Z9CanDamageP9gentity_sS0_PKffPfi_320:
	xor esi, esi
	lea ebx, [ebp-0x6c]
_Z9CanDamageP9gentity_sS0_PKffPfi_200:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp _Z9CanDamageP9gentity_sS0_PKffPfi_160
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_170
_Z9CanDamageP9gentity_sS0_PKffPfi_160:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_170
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_180
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_380:
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
	ja _Z9CanDamageP9gentity_sS0_PKffPfi_190
_Z9CanDamageP9gentity_sS0_PKffPfi_170:
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
	call _Z23G_LocationalTracePassedPKfS0_iiiPh
	test eax, eax
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_110
_Z9CanDamageP9gentity_sS0_PKffPfi_190:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_200
_Z9CanDamageP9gentity_sS0_PKffPfi_100:
	xor eax, eax
	mov [ebp-0xac], eax
	fld dword [ebp-0xac]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CanDamageP9gentity_sS0_PKffPfi_40:
	xor esi, esi
	lea ebx, [ebp-0x6c]
_Z9CanDamageP9gentity_sS0_PKffPfi_240:
	movss xmm0, dword [ebp+0x14]
	ucomiss xmm0, [_float__1_00000000]
	jp _Z9CanDamageP9gentity_sS0_PKffPfi_210
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_220
_Z9CanDamageP9gentity_sS0_PKffPfi_210:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_220
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_230
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_370:
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
	jbe _Z9CanDamageP9gentity_sS0_PKffPfi_220
	mov eax, colorOrange
_Z9CanDamageP9gentity_sS0_PKffPfi_270:
	mov dword [esp+0x10], 0x12c
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_240
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_250
_Z9CanDamageP9gentity_sS0_PKffPfi_220:
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
	call _Z23G_LocationalTracePassedPKfS0_iiiPh
	test eax, eax
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_260
	mov eax, colorRed
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_270
_Z9CanDamageP9gentity_sS0_PKffPfi_260:
	mov eax, colorWhite
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_270
_Z9CanDamageP9gentity_sS0_PKffPfi_70:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_280
_Z9CanDamageP9gentity_sS0_PKffPfi_110:
	mov eax, 0x3f800000
	mov [ebp-0xac], eax
	fld dword [ebp-0xac]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9CanDamageP9gentity_sS0_PKffPfi_150:
	xor esi, esi
	lea ebx, [ebp-0x6c]
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_290
_Z9CanDamageP9gentity_sS0_PKffPfi_330:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_300
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
	jb _Z9CanDamageP9gentity_sS0_PKffPfi_310
	movss xmm0, dword [_float_1_00000000]
_Z9CanDamageP9gentity_sS0_PKffPfi_420:
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
	jbe _Z9CanDamageP9gentity_sS0_PKffPfi_300
	mov eax, colorOrange
_Z9CanDamageP9gentity_sS0_PKffPfi_350:
	mov dword [esp+0x10], 0x12c
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x5
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_320
_Z9CanDamageP9gentity_sS0_PKffPfi_290:
	movss xmm2, dword [ebp+0x14]
	ucomiss xmm2, [_float__1_00000000]
	jp _Z9CanDamageP9gentity_sS0_PKffPfi_330
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_330
_Z9CanDamageP9gentity_sS0_PKffPfi_300:
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
	call _Z23G_LocationalTracePassedPKfS0_iiiPh
	test eax, eax
	jnz _Z9CanDamageP9gentity_sS0_PKffPfi_340
	mov eax, colorRed
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_350
_Z9CanDamageP9gentity_sS0_PKffPfi_340:
	mov eax, colorWhite
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_350
_Z9CanDamageP9gentity_sS0_PKffPfi_10:
	mov dword [ebp-0x94], 0x3ff
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_360
_Z9CanDamageP9gentity_sS0_PKffPfi_230:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_370
_Z9CanDamageP9gentity_sS0_PKffPfi_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_380
_Z9CanDamageP9gentity_sS0_PKffPfi_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_390
_Z9CanDamageP9gentity_sS0_PKffPfi_120:
	mov edx, [ebp+0x8]
	cmp word [edx+0x168], 0x0
	jz _Z9CanDamageP9gentity_sS0_PKffPfi_400
	mov eax, [edx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_
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
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_410
_Z9CanDamageP9gentity_sS0_PKffPfi_310:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_420
_Z9CanDamageP9gentity_sS0_PKffPfi_130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_430
_Z9CanDamageP9gentity_sS0_PKffPfi_140:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm7
	jmp _Z9CanDamageP9gentity_sS0_PKffPfi_440
	nop


;Initialized global or static variables of g_combat_mp:
SECTION .data
g_HitLocNames: dd _cstring_none, _cstring_helmet, _cstring_head, _cstring_neck, _cstring_torso_upper, _cstring_torso_lower, _cstring_right_arm_upper, _cstring_left_arm_upper, _cstring_right_arm_lower, _cstring_left_arm_lower, _cstring_right_hand, _cstring_left_hand, _cstring_right_leg_upper, _cstring_left_leg_upper, _cstring_right_leg_lower, _cstring_left_leg_lower, _cstring_right_foot, _cstring_left_foot, _cstring_gun, 0x0, 0x0, 0x0, 0x0, 0x0
bulletPriorityMap: dd 0x3030301, 0x3030303, 0x3030303, 0x3030303, 0x303, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
		db 0x0
riflePriorityMap: dd 0x9090901, 0x6060708, 0x5050606, 0x4040404
		db 0x3, 0x3, 0x0
modNames: dd 0x1708cd8, 0x1708cda, 0x1708cdc, 0x1708cde, 0x1708ce0, 0x1708ce2, 0x1708ce4, 0x1708ce6, 0x1708ce8, 0x1708cea, 0x1708cec, 0x1708cee, 0x1708cf0, 0x1708cf2, 0x1708cf4, 0x1708cf6


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
_cstring_error_parsing_hi:		db 015h,"Error parsing hitloc damage table %s",0ah,0
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
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_15_00000000:		dd 0x41700000	; 15
_float__15_00000000:		dd 0xc1700000	; -15
_float__1_00000000:		dd 0xbf800000	; -1
_float_3_00000000:		dd 0x40400000	; 3

