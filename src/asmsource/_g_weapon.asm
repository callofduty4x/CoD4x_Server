;Imports of g_weapon:
	extern bulletPriorityMap
	extern G_LocationalTrace
	extern melee_debug
	extern colorRed
	extern G_DebugLineWithDuration
	extern G_CheckHitTriggerDamage
	extern colorGreen
	extern Trace_GetEntityHitId
	extern g_entities
	extern G_AddEvent
	extern G_TempEntity
	extern G_rand
	extern G_Damage
	extern scr_const
	extern Scr_Notify
	extern BG_GetWeaponDef
	extern AngleVectors
	extern G_GetPlayerViewOrigin
	extern BG_GetSpreadForWeapon
	extern vec3_origin
	extern Bullet_Fire
	extern Com_Error
	extern OnSameTeam
	extern BG_GetPlayerViewDirection
	extern player_meleeHeight
	extern player_meleeWidth
	extern player_meleeRange
	extern g_antilag
	extern level
	extern SV_UnlinkEntity
	extern SV_LinkEntity
	extern Com_DPrintf
	extern bg_lastParsedWeaponIndex
	extern Com_SetWeaponInfoMemory
	extern ClearRegisteredItems
	extern BG_ClearWeaponDef
	extern G_RegisterWeapon
	extern BG_GetWeaponIndexForName
	extern BG_FindWeaponIndexForName
	extern BG_AssertOffhandIndexOrNone
	extern va
	extern SV_GameSendServerCommand
	extern BG_WeaponAmmo
	extern BG_GetFirstAvailableOffhand
	extern G_FireGrenade
	extern memset
	extern SV_GetClientPositionAtTime
	extern tan
	extern G_random
	extern cosf
	extern sinf
	extern G_FireRocket
	extern G_AntiLagRewindClientPos
	extern G_AntiLag_RestoreClientPos

;Exports of g_weapon:
	global _ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets
	global Melee_Trace
	global Weapon_Melee_internal
	global FireWeapon
	global G_UseOffHand
	global LogAccuracyHit
	global FireWeaponMelee
	global G_GivePlayerWeapon
	global G_SelectWeaponIndex
	global G_SetEquippedOffHand
	global Weapon_Throw_Grenade
	global G_GetWeaponIndexForName
	global Weapon_RocketLauncher_Fire
	global Weapon_GrenadeLauncher_Fire


SECTION .text


;Melee_Trace(gentity_s*, weaponParms*, int, float, float, float, trace_t*, float*)
Melee_Trace:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebp+0x18]
	ucomiss xmm0, [_float_0_00000000]
	ja Melee_Trace_10
	jp Melee_Trace_10
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp+0x1c]
	jae Melee_Trace_20
Melee_Trace_10:
	mov dword [ebp-0x54], 0x5
Melee_Trace_150:
	mov eax, bulletPriorityMap
	mov [ebp-0x50], eax
	mov edx, [ebp+0x24]
	add edx, 0x4
	mov [ebp-0x4c], edx
	mov eax, [ebp+0x24]
	add eax, 0x8
	mov [ebp-0x48], eax
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x3c], _ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets
	lea edx, [ebx+0x24]
	mov [ebp-0x5c], edx
	lea edi, [ebx+0xc]
	lea esi, [ebx+0x18]
	jmp Melee_Trace_30
Melee_Trace_80:
	mov eax, [ebp-0x50]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2806891
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov eax, [ebp+0x20]
	mov [esp], eax
	call G_LocationalTrace
	mov edx, [ebp+0x20]
	movss xmm2, dword [edx]
	movss xmm1, dword [ebx+0x24]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp+0x24]
	movss [eax], xmm1
	movss xmm1, dword [ebx+0x28]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov edx, [ebp-0x4c]
	movss [edx], xmm1
	movss xmm1, dword [ebx+0x2c]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	mov eax, [ebp-0x48]
	movss [eax], xmm1
	mov edx, [ebp-0x58]
	test edx, edx
	jz Melee_Trace_40
Melee_Trace_90:
	mov edx, [ebp+0x20]
	test byte [edx+0x10], 0x10
	jnz Melee_Trace_50
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx]
	jp Melee_Trace_60
	jnz Melee_Trace_60
Melee_Trace_50:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x3c], 0x8
	mov eax, [ebp-0x58]
	cmp [ebp-0x54], eax
	jz Melee_Trace_70
Melee_Trace_30:
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx]
	addss xmm0, [ebx+0x24]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm0, [ebx+0x28]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0x8]
	addss xmm0, [ebx+0x2c]
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [ebp+0x18]
	mov eax, [ebp-0x3c]
	mulss xmm1, [eax]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0xc]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [edi+0x8]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [eax+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x18]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [esi+0x8]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov edx, melee_debug
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jz Melee_Trace_80
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorRed
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call G_DebugLineWithDuration
	jmp Melee_Trace_80
Melee_Trace_40:
	mov dword [esp+0x10], 0x7
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_CheckHitTriggerDamage
	jmp Melee_Trace_90
Melee_Trace_70:
	cmp dword [ebp-0x54], 0x2
	jle Melee_Trace_100
	mov eax, 0x2
	mov dword [ebp-0x44], 0x4
	mov dword [ebp-0x40], _ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets
	jmp Melee_Trace_110
Melee_Trace_140:
	mov eax, [ebp-0x50]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2806891
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov eax, [ebp+0x20]
	mov [esp], eax
	call G_LocationalTrace
	mov edx, [ebp+0x20]
	movss xmm2, dword [edx]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp+0x24]
	movss [eax], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov edx, [ebp-0x4c]
	movss [edx], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	mov eax, [ebp-0x48]
	movss [eax], xmm1
	mov edx, [ebp+0x20]
	test byte [edx+0x10], 0x10
	jnz Melee_Trace_120
	cmp byte [edx+0x29], 0x0
	jnz Melee_Trace_120
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx]
	jnz Melee_Trace_130
	jp Melee_Trace_130
Melee_Trace_120:
	mov eax, [ebp-0x44]
	add dword [ebp-0x40], 0x10
	mov edx, eax
	cmp [ebp-0x54], eax
	jle Melee_Trace_100
	add edx, 0x2
	mov [ebp-0x44], edx
Melee_Trace_110:
	movss xmm3, dword [ebp+0x14]
	mulss xmm3, [ebx]
	mov edx, [ebp-0x5c]
	addss xmm3, [edx]
	movss xmm0, dword [ebp+0x14]
	mulss xmm0, [ebx+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm2, dword [ebp+0x14]
	mulss xmm2, [ebx+0x8]
	addss xmm2, [edx+0x8]
	movss [ebp-0x1c], xmm2
	movss xmm1, dword [ebp+0x18]
	mov edx, [ebp-0x40]
	mulss xmm1, [edx+0x8]
	movaps xmm0, xmm1
	mulss xmm0, [edi]
	addss xmm0, xmm3
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [edi+0x8]
	addss xmm2, xmm1
	movss [ebp-0x28], xmm2
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [edx+0xc]
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [esi+0x8]
	addss xmm1, xmm2
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp+0x18]
	mulss xmm1, [eax*8+_ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets]
	movaps xmm0, xmm1
	mulss xmm0, [edi]
	addss xmm3, xmm0
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [edi+0x8]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [eax*8+_ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets+0x4]
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, xmm3
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [esi+0x8]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, melee_debug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Melee_Trace_140
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorRed
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call G_DebugLineWithDuration
	jmp Melee_Trace_140
Melee_Trace_100:
	xor eax, eax
Melee_Trace_170:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Melee_Trace_20:
	mov dword [ebp-0x54], 0x1
	jmp Melee_Trace_150
Melee_Trace_60:
	mov edx, melee_debug
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz Melee_Trace_160
Melee_Trace_130:
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Melee_Trace_160:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorGreen
	mov [esp+0x8], eax
	mov eax, [ebp+0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call G_DebugLineWithDuration
	mov eax, 0x1
	jmp Melee_Trace_170
	nop


;Weapon_Melee_internal(gentity_s*, weaponParms*, float, float, float)
Weapon_Melee_internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, eax
	mov [ebp-0x68], edx
	mov eax, [edx+0x3c]
	mov eax, [eax+0x354]
	mov [ebp-0x5c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x1c], eax
	lea ebx, [ebp-0x50]
	mov [esp+0x18], ebx
	movss [esp+0x14], xmm2
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm0
	mov edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x68]
	mov [esp+0x4], ecx
	mov [esp], esi
	call Melee_Trace
	test al, al
	jnz Weapon_Melee_internal_10
Weapon_Melee_internal_50:
	xor edi, edi
Weapon_Melee_internal_60:
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Weapon_Melee_internal_10:
	mov [esp], ebx
	call Trace_GetEntityHitId
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edi, [edx+eax]
	add edi, g_entities
	mov eax, [esi+0x15c]
	test eax, eax
	jz Weapon_Melee_internal_20
	mov eax, [edi+0x15c]
	test eax, eax
	jz Weapon_Melee_internal_30
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x25
	mov [esp], esi
	call G_AddEvent
Weapon_Melee_internal_20:
	mov eax, [edi+0x15c]
	test eax, eax
	jz Weapon_Melee_internal_30
	mov dword [esp+0x4], 0x23
	lea eax, [ebp-0x24]
	mov [esp], eax
	call G_TempEntity
	mov edx, eax
Weapon_Melee_internal_70:
	mov eax, [edi]
	mov [edx+0x74], eax
	mov ecx, [ebp-0x68]
	mov eax, [ecx+0x3c]
	mov ebx, [eax+0x304]
	test ebx, ebx
	jz Weapon_Melee_internal_40
	mov ecx, [esi+0x15c]
	test ecx, ecx
	jz Weapon_Melee_internal_40
	mov eax, 0x1
Weapon_Melee_internal_80:
	mov [edx+0x9c], eax
	mov eax, [esi+0xc4]
	mov [edx+0xc4], eax
	mov eax, [esi+0xc8]
	mov [edx+0xc8], eax
	cmp dword [edi], 0x3fe
	jz Weapon_Melee_internal_50
	cmp byte [edi+0x16b], 0x0
	jz Weapon_Melee_internal_50
	movzx ebx, word [ebp-0x2c]
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x64], eax
	movzx edx, word [ebp-0x2a]
	mov [ebp-0x60], edx
	call G_rand
	mov [ebp-0x6c], eax
	mov dword [esp+0x30], 0x0
	mov [esp+0x2c], ebx
	mov ecx, [ebp-0x64]
	mov [esp+0x28], ecx
	mov eax, [ebp-0x60]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x7
	mov dword [esp+0x18], 0x0
	mov edx, 0x66666667
	mov eax, [ebp-0x6c]
	imul edx
	sar edx, 1
	mov ecx, [ebp-0x6c]
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*4]
	sub [ebp-0x6c], edx
	mov eax, [ebp-0x6c]
	add eax, [ebp-0x5c]
	mov [esp+0x14], eax
	lea edx, [ebp-0x24]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x68]
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov [esp], edi
	call G_Damage
	jmp Weapon_Melee_internal_60
Weapon_Melee_internal_30:
	mov dword [esp+0x4], 0x24
	lea edx, [ebp-0x24]
	mov [esp], edx
	call G_TempEntity
	mov edx, eax
	jmp Weapon_Melee_internal_70
Weapon_Melee_internal_40:
	xor eax, eax
	jmp Weapon_Melee_internal_80
	nop


;FireWeapon(gentity_s*, int)
FireWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test dword [eax+0xb0], 0x300
	jz FireWeapon_10
	cmp byte [ebx+0x16c], 0x0
	jnz FireWeapon_20
FireWeapon_10:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0xca]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x30], eax
	mov edx, [ebx+0x15c]
	lea ecx, [edx+0x108]
	mov eax, [edx+0x108]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x28], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x24], eax
	mov eax, [edx+0x30a4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x30a8]
	mov [ebp-0x28], eax
	lea esi, [ebp-0x6c]
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edi, [ebp-0x2c]
	mov [esp], edi
	call AngleVectors
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call G_GetPlayerViewOrigin
	mov edx, [ebx+0x15c]
	movss xmm0, dword [edx+0x30dc]
	movss [ebp-0x7c], xmm0
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edx
	call BG_GetSpreadForWeapon
	mov eax, [ebx+0x15c]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [eax+0xf4]
	jnz FireWeapon_30
	jp FireWeapon_30
	mov eax, [ebp-0x30]
	movss xmm0, dword [eax+0x71c]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, xmm0
	mov edx, [eax+0x12c]
	test edx, edx
	jz FireWeapon_40
FireWeapon_80:
	cmp edx, 0x1
	jz FireWeapon_50
	cmp edx, 0x2
	jnz FireWeapon_60
	cmp dword [eax+0x130], 0x5
	jz FireWeapon_70
	xor eax, eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [esp+0x18], edi
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	movss [esp+0x8], xmm1
	mov eax, [ebx+0xc4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Weapon_RocketLauncher_Fire
FireWeapon_20:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FireWeapon_30:
	movss xmm0, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, xmm0
	mov eax, [ebp-0x30]
	mov edx, [eax+0x12c]
	test edx, edx
	jnz FireWeapon_80
FireWeapon_40:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call Bullet_Fire
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FireWeapon_60:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_unknown_weapon_t
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FireWeapon_70:
	mov [esp+0xc], esi
	movzx eax, byte [ebx+0xc8]
	mov [esp+0x8], eax
	mov eax, [ebx+0xc4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Weapon_GrenadeLauncher_Fire
	jmp FireWeapon_20
FireWeapon_50:
	mov [esp+0xc], esi
	movzx eax, byte [ebx+0xc8]
	mov [esp+0x8], eax
	mov eax, [ebx+0xc4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Weapon_Throw_Grenade
	jmp FireWeapon_20


;G_UseOffHand(gentity_s*)
G_UseOffHand:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xe0]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x18], eax
	mov edx, [ebx+0x15c]
	lea ecx, [edx+0x108]
	mov eax, [edx+0x108]
	mov [ebp-0x14], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x10], eax
	mov eax, [ecx+0x8]
	mov [ebp-0xc], eax
	mov eax, [edx+0x30a4]
	mov [ebp-0x14], eax
	mov eax, [edx+0x30a8]
	mov [ebp-0x10], eax
	lea esi, [ebp-0x54]
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x14]
	mov [esp], eax
	call AngleVectors
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call G_GetPlayerViewOrigin
	mov eax, [ebx+0x15c]
	mov edx, [eax+0xe0]
	mov [esp+0xc], esi
	movzx eax, byte [edx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call Weapon_Throw_Grenade
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LogAccuracyHit(gentity_s*, gentity_s*)
LogAccuracyHit:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp byte [edx+0x16b], 0x0
	jz LogAccuracyHit_10
	cmp edx, ecx
	jz LogAccuracyHit_10
	mov eax, [edx+0x15c]
	test eax, eax
	jz LogAccuracyHit_10
	cmp dword [ecx+0x15c], 0x0
	jz LogAccuracyHit_10
	cmp dword [eax+0x4], 0x6
	jg LogAccuracyHit_10
	mov [esp+0x4], ecx
	mov [esp], edx
	call OnSameTeam
	test eax, eax
	jz LogAccuracyHit_20
LogAccuracyHit_10:
	xor eax, eax
	leave
	ret
LogAccuracyHit_20:
	mov al, 0x1
	leave
	ret


;FireWeaponMelee(gentity_s*, int)
FireWeaponMelee:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3ac
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	test dword [eax+0xb0], 0x300
	jz FireWeaponMelee_10
	cmp byte [esi+0x16c], 0x0
	jnz FireWeaponMelee_20
FireWeaponMelee_10:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x58]
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov eax, [esi+0x15c]
	mov [esp], eax
	call G_GetPlayerViewOrigin
	lea eax, [ebp-0x40]
	mov [esp+0xc], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [esi+0x15c]
	mov [esp], eax
	call BG_GetPlayerViewDirection
	mov eax, player_meleeHeight
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3a8], xmm0
	mov eax, player_meleeWidth
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3a4], xmm0
	mov eax, player_meleeRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x3a0], xmm0
	lea eax, [ebp-0x398]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call G_AntiLagRewindClientPos
	movss xmm2, dword [ebp-0x3a8]
	movss xmm1, dword [ebp-0x3a4]
	movss xmm0, dword [ebp-0x3a0]
	mov edx, ebx
	mov eax, esi
	call Weapon_Melee_internal
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FireWeaponMelee_20
	mov eax, level
	mov edx, [eax+0x1e4]
	test edx, edx
	jle FireWeaponMelee_20
	xor edi, edi
	jmp FireWeaponMelee_30
FireWeaponMelee_40:
	add edi, 0x1
	cmp edi, [eax+0x1e4]
	jge FireWeaponMelee_20
FireWeaponMelee_30:
	cmp byte [ebp+edi-0x98], 0x0
	jz FireWeaponMelee_40
	lea ebx, [edi+edi*8]
	lea ebx, [edi+ebx*2]
	mov eax, ebx
	shl eax, 0x5
	add ebx, eax
	add ebx, edi
	mov esi, g_entities
	lea eax, [ebx+esi]
	mov [ebp-0x39c], eax
	mov [esp], eax
	call SV_UnlinkEntity
	lea ebx, [ebx+esi+0x130]
	lea ecx, [ebx+0xc]
	lea eax, [edi+edi*2]
	lea eax, [ebp+eax*4-0x398]
	mov edx, [eax]
	mov [ebx+0xc], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov eax, [eax+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x39c]
	mov [esp], eax
	call SV_LinkEntity
	mov eax, level
	add edi, 0x1
	cmp edi, [eax+0x1e4]
	jl FireWeaponMelee_30
FireWeaponMelee_20:
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al



;G_GivePlayerWeapon(playerState_s*, int, unsigned char)
G_GivePlayerWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov [ebp-0x21], al
	mov esi, edi
	sar esi, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov dword [ebp-0x2c], 0x1
	mov ebx, 0x1
	shl ebx, cl
	mov edx, [ebp+0x8]
	test [edx+esi*4+0x55c], ebx
	jz G_GivePlayerWeapon_10
G_GivePlayerWeapon_20:
	xor eax, eax
G_GivePlayerWeapon_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_GivePlayerWeapon_10:
	mov [esp], edi
	call BG_GetWeaponDef
	mov edx, eax
	mov eax, [eax+0x130]
	cmp eax, 0x7
	jz G_GivePlayerWeapon_20
	cmp eax, 0x8
	jz G_GivePlayerWeapon_20
	movzx eax, byte [ebp-0x21]
	mov eax, [edx+eax*4+0xc]
	test eax, eax
	jz G_GivePlayerWeapon_20
	mov ecx, [ebp+0x8]
	add ecx, 0x55c
	mov [ebp-0x20], ecx
	lea eax, [esi*4]
	or [ecx+eax], ebx
	mov ecx, [ebp+0x8]
	lea ecx, [ecx+eax+0x57c]
	mov [ebp-0x1c], ecx
	mov esi, ebx
	not esi
	and [ecx], esi
	mov ebx, [ebp+0x8]
	and [ebx+eax+0x56c], esi
	movzx eax, byte [ebp-0x28]
	mov [edi+ebx+0x81c], al
	cmp dword [edx+0x130], 0x9
	jz G_GivePlayerWeapon_30
	mov eax, [edx+0x144]
	test eax, eax
	jz G_GivePlayerWeapon_40
	mov eax, [ebx+0xe0]
	test eax, eax
	jnz G_GivePlayerWeapon_50
	mov [ebx+0xe0], edi
	mov edx, [ebp+0x8]
	mov ebx, [edx+0xdc]
	mov [esp], edi
	call BG_AssertOffhandIndexOrNone
	mov [esp+0x8], edi
G_GivePlayerWeapon_100:
	mov dword [esp+0x4], 0x43
	mov dword [esp], _cstring_c_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call SV_GameSendServerCommand
	mov eax, 0x1
	jmp G_GivePlayerWeapon_60
G_GivePlayerWeapon_50:
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call BG_WeaponAmmo
	test eax, eax
	jle G_GivePlayerWeapon_70
G_GivePlayerWeapon_30:
	mov eax, 0x1
G_GivePlayerWeapon_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_GivePlayerWeapon_40:
	mov edx, [edx+0x540]
	test edx, edx
	jz G_GivePlayerWeapon_30
	mov eax, edx
	sar eax, 0x5
	mov ecx, edx
	and ecx, 0x1f
	shl dword [ebp-0x2c], cl
	mov ebx, [ebp-0x2c]
	mov ecx, [ebp+0x8]
	test [ecx+eax*4+0x55c], ebx
	jnz G_GivePlayerWeapon_30
G_GivePlayerWeapon_80:
	mov eax, edx
	sar eax, 0x5
	mov ecx, edx
	and ecx, 0x1f
	mov ebx, 0x1
	mov edi, ebx
	shl edi, cl
	mov ecx, edi
	mov edi, [ebp-0x20]
	or [edi+eax*4], ecx
	mov eax, [ebp-0x1c]
	and [eax], esi
	movzx ecx, byte [ebp-0x21]
	mov edi, [ebp+0x8]
	mov [edx+edi+0x81c], cl
	mov [esp], edx
	call BG_GetWeaponDef
	mov eax, [eax+0x540]
	mov edx, eax
	test eax, eax
	jz G_GivePlayerWeapon_30
	mov ecx, eax
	and ecx, 0x1f
	shl ebx, cl
	sar eax, 0x5
	mov edi, [ebp+0x8]
	test [edi+eax*4+0x55c], ebx
	jz G_GivePlayerWeapon_80
	mov eax, 0x1
	jmp G_GivePlayerWeapon_90
G_GivePlayerWeapon_70:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xe0]
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x144]
	mov [esp+0x4], eax
	mov [esp], ebx
	call BG_GetFirstAvailableOffhand
	test eax, eax
	mov esi, eax
	cmovz esi, edi
	mov [ebx+0xe0], esi
	mov edi, [ebp+0x8]
	mov ebx, [edi+0xdc]
	mov [esp], esi
	call BG_AssertOffhandIndexOrNone
	mov [esp+0x8], esi
	jmp G_GivePlayerWeapon_100
	add [eax], al


;G_SelectWeaponIndex(int, int)
G_SelectWeaponIndex:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x61
	mov dword [esp], _cstring_c_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_GameSendServerCommand
	leave
	ret


;G_SetEquippedOffHand(int, int)
G_SetEquippedOffHand:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call BG_AssertOffhandIndexOrNone
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43
	mov dword [esp], _cstring_c_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SV_GameSendServerCommand
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Weapon_Throw_Grenade(gentity_s*, int, unsigned char, weaponParms*)
Weapon_Throw_Grenade:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x14]
	movzx edi, byte [ebp+0x10]
	mov ecx, [ebx+0x3c]
	cvtsi2ss xmm0, dword [ecx+0x568]
	movaps xmm1, xmm0
	mulss xmm1, [ebx]
	movss [ebp-0x2c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebp-0x28], xmm1
	mulss xmm0, [ebx+0x8]
	movss [ebp-0x24], xmm0
	cvtsi2ss xmm0, dword [ecx+0x56c]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov eax, [ecx+0x570]
	test eax, eax
	jz Weapon_Throw_Grenade_10
	movss xmm3, dword [ebx]
	movss xmm4, dword [ebx+0x4]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mov edx, [ebp-0x20]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0x1c], eax
	movss xmm2, dword [ebp-0x1c]
	mulss xmm1, [_float_0_50000000]
	mulss xmm1, xmm2
	mulss xmm1, xmm2
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x20], xmm0
	cvtsi2ss xmm1, dword [ecx+0x570]
	mulss xmm3, xmm0
	mulss xmm3, xmm1
	addss xmm3, [ebp-0x2c]
	movss [ebp-0x2c], xmm3
	mulss xmm4, xmm0
	mulss xmm4, xmm1
	addss xmm4, [ebp-0x28]
	movss [ebp-0x28], xmm4
Weapon_Throw_Grenade_10:
	mov eax, [esi+0x15c]
	test eax, eax
	jz Weapon_Throw_Grenade_20
	mov eax, [ecx+0x3ec]
Weapon_Throw_Grenade_40:
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	mov edx, edi
	movzx eax, dl
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebx+0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_FireGrenade
	mov ecx, eax
	movss xmm4, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x24]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb Weapon_Throw_Grenade_30
	movss xmm3, dword [_float_1_00000000]
Weapon_Throw_Grenade_50:
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movss [ebp-0x2c], xmm2
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	mulss xmm3, [ebp-0x24]
	movss [ebp-0x24], xmm3
	mov eax, [esi+0x15c]
	lea edx, [eax+0x28]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x28]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebp-0x28]
	addss xmm1, xmm0
	mulss xmm3, [edx+0x8]
	addss xmm1, xmm3
	lea eax, [ecx+0x24]
	mulss xmm2, xmm1
	addss xmm2, [ecx+0x24]
	movss [ecx+0x24], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	mov eax, ecx
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Weapon_Throw_Grenade_20:
	mov eax, [ecx+0x3f0]
	jmp Weapon_Throw_Grenade_40
Weapon_Throw_Grenade_30:
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm1
	jmp Weapon_Throw_Grenade_50


;G_GetWeaponIndexForName(char const*)
G_GetWeaponIndexForName:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jnz G_GetWeaponIndexForName_10
	leave
	jmp BG_FindWeaponIndexForName
G_GetWeaponIndexForName_10:
	mov eax, G_RegisterWeapon
	mov [esp+0x4], eax
	mov [esp], edx
	call BG_GetWeaponIndexForName
	leave
	ret



;Weapon_RocketLauncher_Fire(gentity_s*, unsigned int, float, weaponParms*, float const*, gentity_s*, float const*)
Weapon_RocketLauncher_Fire:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov ebx, [ebp+0x14]
	cvtss2sd xmm0, [ebp+0x10]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x50]
	cvtsd2ss xmm0, [ebp-0x50]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [_float_16_00000000]
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	call G_random
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x68], xmm0
	call G_random
	fstp dword [ebp-0x40]
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, [_float_360_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x3c], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x7c]
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebp-0x40]
	mulss xmm1, [ebp-0x44]
	movss xmm0, dword [ebp-0x3c]
	movss [esp], xmm0
	movss [ebp-0x78], xmm1
	call sinf
	fstp dword [ebp-0x7c]
	movss xmm2, dword [ebp-0x7c]
	mulss xmm2, [ebp-0x40]
	mulss xmm2, [ebp-0x44]
	movss xmm0, dword [ebx]
	mulss xmm0, [_float_16_00000000]
	movss [ebp-0x24], xmm0
	lea esi, [ebx+0x4]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [_float_16_00000000]
	movss [ebp-0x20], xmm0
	lea edi, [ebx+0x8]
	movss xmm0, dword [_float_16_00000000]
	mulss xmm0, [ebx+0x8]
	movss [ebp-0x1c], xmm0
	lea eax, [ebx+0xc]
	movss xmm1, dword [ebp-0x78]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0xc]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	lea eax, [ebx+0x18]
	movaps xmm3, xmm2
	mulss xmm3, [ebx+0x18]
	addss xmm3, [ebp-0x24]
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm2, [eax+0x8]
	addss xmm2, xmm1
	movss [ebp-0x1c], xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb Weapon_RocketLauncher_Fire_10
	movss xmm2, dword [_float_1_00000000]
Weapon_RocketLauncher_Fire_30:
	mulss xmm3, xmm2
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	lea edx, [ebx+0x24]
	mov eax, [ebx+0x24]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FireRocket
	mov ecx, eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	test edx, edx
	jz Weapon_RocketLauncher_Fire_20
	lea eax, [edx+0x28]
	movss xmm1, dword [_float__64_00000000]
	movss xmm0, dword [ebx]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x28]
	movss [edx+0x28], xmm0
	movss xmm0, dword [esi]
	mulss xmm0, xmm1
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [edi]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
Weapon_RocketLauncher_Fire_20:
	mov eax, ecx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Weapon_RocketLauncher_Fire_10:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp Weapon_RocketLauncher_Fire_30


;Weapon_GrenadeLauncher_Fire(gentity_s*, int, unsigned char, weaponParms*)
Weapon_GrenadeLauncher_Fire:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x14]
	mov eax, [edx+0x3c]
	cvtsi2ss xmm0, dword [eax+0x568]
	movaps xmm1, xmm0
	mulss xmm1, [edx]
	movss [ebp-0x14], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x4]
	movss [ebp-0x10], xmm1
	mulss xmm0, [edx+0x8]
	movss [ebp-0xc], xmm0
	cvtsi2ss xmm0, dword [eax+0x56c]
	addss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movzx eax, byte [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	add edx, 0x24
	mov [esp+0x4], edx
	mov [esp], ebx
	call G_FireGrenade
	mov ecx, eax
	or dword [eax+0x180], 0x20000
	movss xmm4, dword [ebp-0x14]
	movss xmm0, dword [ebp-0x10]
	movss xmm2, dword [ebp-0xc]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb Weapon_GrenadeLauncher_Fire_10
	movss xmm3, dword [_float_1_00000000]
Weapon_GrenadeLauncher_Fire_20:
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movss [ebp-0x14], xmm2
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	mulss xmm3, [ebp-0xc]
	movss [ebp-0xc], xmm3
	mov eax, [ebx+0x15c]
	lea edx, [eax+0x28]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x28]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebp-0x10]
	addss xmm1, xmm0
	mulss xmm3, [edx+0x8]
	addss xmm1, xmm3
	lea eax, [ecx+0x24]
	mulss xmm2, xmm1
	addss xmm2, [ecx+0x24]
	movss [ecx+0x24], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x10]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [ebp-0xc]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	mov eax, ecx
	add esp, 0x34
	pop ebx
	pop ebp
	ret
Weapon_GrenadeLauncher_Fire_10:
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm1
	jmp Weapon_GrenadeLauncher_Fire_20
	nop


;Initialized global or static variables of g_weapon:
SECTION .data


;Initialized constant data of g_weapon:
SECTION .rdata
_ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets: dd 0x0, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0xfc908, 0xfc913, 0xfc913, 0xfc8ed, 0xfc8ed, 0xfc93a, 0xfc92f, 0xfc908, 0xfc908, 0xfc908, 0xfc908, 0xfc908, 0xfc908, 0xfc908, 0xfc927, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x104170, 0x1040e7, 0x1040e7, 0x104247, 0x10408b, 0x1040e7, 0x1040e7, 0x1040e7, 0x1040e7, 0x1040e7, 0x1040e7, 0x1041fa, 0x1040e7, 0x1040e7, 0x104105, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x109b25, 0x109b25, 0x109b39, 0x109c07, 0x109bf3, 0x109bec, 0x109b96, 0x109c47, 0x109c47, 0x109c90, 0x109d28, 0x109d1d, 0x109d14, 0x109cc1, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1165e8, 0x1165fd, 0x1165d6, 0x116612, 0x116634, 0x1165d6, 0x1165d6, 0x1165d6, 0x1165d6, 0x1165cb, 0x1168c1, 0x1168d6, 0x116888, 0x1168f5, 0x116924, 0x116888, 0x116888, 0x116888, 0x116888, 0x116979, 0x1169f4, 0x116af6, 0x116ae3, 0x116ac0, 0x116aad, 0x116a85, 0x116a44, 0x116a23, 0x116a07, 0x1169d4, 0x116d52, 0x116df5, 0x116d4c, 0x116da6, 0x116dc6, 0x116d8a, 0x116d24, 0x116d69, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_weapon:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_unknown_weapon_t:		db 15h,"Unknown weapon type %i for %s",0ah,0
_cstring_c_i:		db "%c %i",0


;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_16_00000000:		dd 0x41800000	; 16
_float_360_00000000:		dd 0x43b40000	; 360
_float__64_00000000:		dd 0xc2800000	; -64

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
