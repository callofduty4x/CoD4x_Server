;Imports of g_weapon:
	extern bulletPriorityMap
	extern _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	extern melee_debug
	extern colorRed
	extern _Z23G_DebugLineWithDurationPKfS0_S0_ii
	extern _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii
	extern colorGreen
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern g_entities
	extern _Z10G_AddEventP9gentity_sij
	extern _Z12G_TempEntityPKfi
	extern _Z6G_randv
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z15BG_GetWeaponDefj
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z21G_GetPlayerViewOriginPK13playerState_sPf
	extern _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_
	extern vec3_origin
	extern _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10OnSameTeamP9gentity_sS0_
	extern _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	extern player_meleeHeight
	extern player_meleeWidth
	extern player_meleeRange
	extern g_antilag
	extern level
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z11Com_DPrintfiPKcz
	extern bg_lastParsedWeaponIndex
	extern _Z23Com_SetWeaponInfoMemoryi
	extern _Z20ClearRegisteredItemsv
	extern _Z17BG_ClearWeaponDefv
	extern _Z16G_RegisterWeaponj
	extern _Z24BG_GetWeaponIndexForNamePKcPFvjE
	extern _Z25BG_FindWeaponIndexForNamePKc
	extern _Z27BG_AssertOffhandIndexOrNonei
	extern _Z2vaPKcz
	extern _Z24SV_GameSendServerCommandi11svscmd_typePKc
	extern _Z13BG_WeaponAmmoPK13playerState_si
	extern _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	extern _Z13G_FireGrenadeP9gentity_sPfS1_ihii
	extern memset
	extern sv_fps
	extern _Z26SV_GetClientPositionAtTimeiiPf
	extern tan
	extern _Z8G_randomv
	extern cosf
	extern sinf
	extern _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_

;Exports of g_weapon:
	global _ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets
	global _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf
	global _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff
	global _Z10FireWeaponP9gentity_si
	global _Z12G_UseOffHandP9gentity_s
	global _Z14LogAccuracyHitP9gentity_sS0_
	global _Z15FireWeaponMeleeP9gentity_si
	global _Z16G_SetupWeaponDefv
	global _Z18G_GivePlayerWeaponP13playerState_sih
	global _Z19G_SelectWeaponIndexii
	global _Z20G_SetEquippedOffHandii
	global _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms
	global _Z23G_GetWeaponIndexForNamePKc
	global _Z24G_AntiLagRewindClientPosiP18AntilagClientStore
	global _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore
	global _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
	global _Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms


SECTION .text


;Melee_Trace(gentity_s*, weaponParms*, int, float, float, float, trace_t*, float*)
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebp+0x18]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_10
	jp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_10
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp+0x1c]
	jae _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_20
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_10:
	mov dword [ebp-0x54], 0x5
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_150:
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
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_30
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_80:
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
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
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
	jz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_40
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_90:
	mov edx, [ebp+0x20]
	test byte [edx+0x10], 0x10
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_50
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx]
	jp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_60
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_60
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_50:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x3c], 0x8
	mov eax, [ebp-0x58]
	cmp [ebp-0x54], eax
	jz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_70
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_30:
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
	jz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_80
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorRed
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_80
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_40:
	mov dword [esp+0x10], 0x7
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_90
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_70:
	cmp dword [ebp-0x54], 0x2
	jle _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_100
	mov eax, 0x2
	mov dword [ebp-0x44], 0x4
	mov dword [ebp-0x40], _ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_110
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_140:
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
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
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
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_120
	cmp byte [edx+0x29], 0x0
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_120
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [edx]
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_130
	jp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_130
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_120:
	mov eax, [ebp-0x44]
	add dword [ebp-0x40], 0x10
	mov edx, eax
	cmp [ebp-0x54], eax
	jle _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_100
	add edx, 0x2
	mov [ebp-0x44], edx
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_110:
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
	jz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_140
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorRed
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_140
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_100:
	xor eax, eax
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_170:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_20:
	mov dword [ebp-0x54], 0x1
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_150
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_60:
	mov edx, melee_debug
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_160
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_130:
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_160:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x1
	mov eax, colorGreen
	mov [esp+0x8], eax
	mov eax, [ebp+0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	mov eax, 0x1
	jmp _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf_170
	nop


;Weapon_Melee_internal(gentity_s*, weaponParms*, float, float, float)
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff:
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
	call _Z11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPf
	test al, al
	jnz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_10
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_50:
	xor edi, edi
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_60:
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_10:
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
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
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_20
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_30
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x25
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_20:
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_30
	mov dword [esp+0x4], 0x23
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z12G_TempEntityPKfi
	mov edx, eax
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_70:
	mov eax, [edi]
	mov [edx+0x74], eax
	mov ecx, [ebp-0x68]
	mov eax, [ecx+0x3c]
	mov ebx, [eax+0x304]
	test ebx, ebx
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_40
	mov ecx, [esi+0x15c]
	test ecx, ecx
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_40
	mov eax, 0x1
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_80:
	mov [edx+0x9c], eax
	mov eax, [esi+0xc4]
	mov [edx+0xc4], eax
	mov eax, [esi+0xc8]
	mov [edx+0xc8], eax
	cmp dword [edi], 0x3fe
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_50
	cmp byte [edi+0x16b], 0x0
	jz _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_50
	movzx ebx, word [ebp-0x2c]
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x64], eax
	movzx edx, word [ebp-0x2a]
	mov [ebp-0x60], edx
	call _Z6G_randv
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
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	jmp _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_60
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_30:
	mov dword [esp+0x4], 0x24
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z12G_TempEntityPKfi
	mov edx, eax
	jmp _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_70
_Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_40:
	xor eax, eax
	jmp _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff_80
	nop


;FireWeapon(gentity_s*, int)
_Z10FireWeaponP9gentity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test dword [eax+0xb0], 0x300
	jz _Z10FireWeaponP9gentity_si_10
	cmp byte [ebx+0x16c], 0x0
	jnz _Z10FireWeaponP9gentity_si_20
_Z10FireWeaponP9gentity_si_10:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0xca]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
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
	call _Z12AngleVectorsPKfPfS1_S1_
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
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
	call _Z21BG_GetSpreadForWeaponPK13playerState_sPK9WeaponDefPfS5_
	mov eax, [ebx+0x15c]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [eax+0xf4]
	jnz _Z10FireWeaponP9gentity_si_30
	jp _Z10FireWeaponP9gentity_si_30
	mov eax, [ebp-0x30]
	movss xmm0, dword [eax+0x71c]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, xmm0
	mov edx, [eax+0x12c]
	test edx, edx
	jz _Z10FireWeaponP9gentity_si_40
_Z10FireWeaponP9gentity_si_80:
	cmp edx, 0x1
	jz _Z10FireWeaponP9gentity_si_50
	cmp edx, 0x2
	jnz _Z10FireWeaponP9gentity_si_60
	cmp dword [eax+0x130], 0x5
	jz _Z10FireWeaponP9gentity_si_70
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
	call _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
_Z10FireWeaponP9gentity_si_20:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FireWeaponP9gentity_si_30:
	movss xmm0, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, xmm0
	mov eax, [ebp-0x30]
	mov edx, [eax+0x12c]
	test edx, edx
	jnz _Z10FireWeaponP9gentity_si_80
_Z10FireWeaponP9gentity_si_40:
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FireWeaponP9gentity_si_60:
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_unknown_weapon_t
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FireWeaponP9gentity_si_70:
	mov [esp+0xc], esi
	movzx eax, byte [ebx+0xc8]
	mov [esp+0x8], eax
	mov eax, [ebx+0xc4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms
	jmp _Z10FireWeaponP9gentity_si_20
_Z10FireWeaponP9gentity_si_50:
	mov [esp+0xc], esi
	movzx eax, byte [ebx+0xc8]
	mov [esp+0x8], eax
	mov eax, [ebx+0xc4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms
	jmp _Z10FireWeaponP9gentity_si_20


;G_UseOffHand(gentity_s*)
_Z12G_UseOffHandP9gentity_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	mov eax, [eax+0xe0]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
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
	call _Z12AngleVectorsPKfPfS1_S1_
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
	mov eax, [ebx+0x15c]
	mov edx, [eax+0xe0]
	mov [esp+0xc], esi
	movzx eax, byte [edx+eax+0x81c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LogAccuracyHit(gentity_s*, gentity_s*)
_Z14LogAccuracyHitP9gentity_sS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp byte [edx+0x16b], 0x0
	jz _Z14LogAccuracyHitP9gentity_sS0__10
	cmp edx, ecx
	jz _Z14LogAccuracyHitP9gentity_sS0__10
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z14LogAccuracyHitP9gentity_sS0__10
	cmp dword [ecx+0x15c], 0x0
	jz _Z14LogAccuracyHitP9gentity_sS0__10
	cmp dword [eax+0x4], 0x6
	jg _Z14LogAccuracyHitP9gentity_sS0__10
	mov [esp+0x4], ecx
	mov [esp], edx
	call _Z10OnSameTeamP9gentity_sS0_
	test eax, eax
	jz _Z14LogAccuracyHitP9gentity_sS0__20
_Z14LogAccuracyHitP9gentity_sS0__10:
	xor eax, eax
	leave
	ret
_Z14LogAccuracyHitP9gentity_sS0__20:
	mov al, 0x1
	leave
	ret


;FireWeaponMelee(gentity_s*, int)
_Z15FireWeaponMeleeP9gentity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3ac
	mov esi, [ebp+0x8]
	mov eax, [esi+0x15c]
	test dword [eax+0xb0], 0x300
	jz _Z15FireWeaponMeleeP9gentity_si_10
	cmp byte [esi+0x16c], 0x0
	jnz _Z15FireWeaponMeleeP9gentity_si_20
_Z15FireWeaponMeleeP9gentity_si_10:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x58]
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov eax, [esi+0x15c]
	mov [esp], eax
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
	lea eax, [ebp-0x40]
	mov [esp+0xc], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [esi+0x15c]
	mov [esp], eax
	call _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
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
	call _Z24G_AntiLagRewindClientPosiP18AntilagClientStore
	movss xmm2, dword [ebp-0x3a8]
	movss xmm1, dword [ebp-0x3a4]
	movss xmm0, dword [ebp-0x3a0]
	mov edx, ebx
	mov eax, esi
	call _Z21Weapon_Melee_internalP9gentity_sP11weaponParmsfff
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z15FireWeaponMeleeP9gentity_si_20
	mov eax, level
	mov edx, [eax+0x1e4]
	test edx, edx
	jle _Z15FireWeaponMeleeP9gentity_si_20
	xor edi, edi
	jmp _Z15FireWeaponMeleeP9gentity_si_30
_Z15FireWeaponMeleeP9gentity_si_40:
	add edi, 0x1
	cmp edi, [eax+0x1e4]
	jge _Z15FireWeaponMeleeP9gentity_si_20
_Z15FireWeaponMeleeP9gentity_si_30:
	cmp byte [ebp+edi-0x98], 0x0
	jz _Z15FireWeaponMeleeP9gentity_si_40
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
	call _Z15SV_UnlinkEntityP9gentity_s
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
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, level
	add edi, 0x1
	cmp edi, [eax+0x1e4]
	jl _Z15FireWeaponMeleeP9gentity_si_30
_Z15FireWeaponMeleeP9gentity_si_20:
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;G_SetupWeaponDef()
_Z16G_SetupWeaponDefv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	mov dword [esp+0x4], _cstring_game_g_setupweap
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	mov eax, bg_lastParsedWeaponIndex
	mov eax, [eax]
	test eax, eax
	jz _Z16G_SetupWeaponDefv_10
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	leave
	ret
_Z16G_SetupWeaponDefv_10:
	mov dword [esp], 0x1
	call _Z23Com_SetWeaponInfoMemoryi
	call _Z20ClearRegisteredItemsv
	call _Z17BG_ClearWeaponDefv
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jz _Z16G_SetupWeaponDefv_20
	mov eax, _Z16G_RegisterWeaponj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_defaultweapon_mp
	call _Z24BG_GetWeaponIndexForNamePKcPFvjE
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	leave
	ret
_Z16G_SetupWeaponDefv_20:
	mov dword [esp], _cstring_defaultweapon_mp
	call _Z25BG_FindWeaponIndexForNamePKc
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	leave
	ret


;G_GivePlayerWeapon(playerState_s*, int, unsigned char)
_Z18G_GivePlayerWeaponP13playerState_sih:
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
	jz _Z18G_GivePlayerWeaponP13playerState_sih_10
_Z18G_GivePlayerWeaponP13playerState_sih_20:
	xor eax, eax
_Z18G_GivePlayerWeaponP13playerState_sih_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_GivePlayerWeaponP13playerState_sih_10:
	mov [esp], edi
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	mov eax, [eax+0x130]
	cmp eax, 0x7
	jz _Z18G_GivePlayerWeaponP13playerState_sih_20
	cmp eax, 0x8
	jz _Z18G_GivePlayerWeaponP13playerState_sih_20
	movzx eax, byte [ebp-0x21]
	mov eax, [edx+eax*4+0xc]
	test eax, eax
	jz _Z18G_GivePlayerWeaponP13playerState_sih_20
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
	jz _Z18G_GivePlayerWeaponP13playerState_sih_30
	mov eax, [edx+0x144]
	test eax, eax
	jz _Z18G_GivePlayerWeaponP13playerState_sih_40
	mov eax, [ebx+0xe0]
	test eax, eax
	jnz _Z18G_GivePlayerWeaponP13playerState_sih_50
	mov [ebx+0xe0], edi
	mov edx, [ebp+0x8]
	mov ebx, [edx+0xdc]
	mov [esp], edi
	call _Z27BG_AssertOffhandIndexOrNonei
	mov [esp+0x8], edi
_Z18G_GivePlayerWeaponP13playerState_sih_100:
	mov dword [esp+0x4], 0x43
	mov dword [esp], _cstring_c_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	mov eax, 0x1
	jmp _Z18G_GivePlayerWeaponP13playerState_sih_60
_Z18G_GivePlayerWeaponP13playerState_sih_50:
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13BG_WeaponAmmoPK13playerState_si
	test eax, eax
	jle _Z18G_GivePlayerWeaponP13playerState_sih_70
_Z18G_GivePlayerWeaponP13playerState_sih_30:
	mov eax, 0x1
_Z18G_GivePlayerWeaponP13playerState_sih_90:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18G_GivePlayerWeaponP13playerState_sih_40:
	mov edx, [edx+0x540]
	test edx, edx
	jz _Z18G_GivePlayerWeaponP13playerState_sih_30
	mov eax, edx
	sar eax, 0x5
	mov ecx, edx
	and ecx, 0x1f
	shl dword [ebp-0x2c], cl
	mov ebx, [ebp-0x2c]
	mov ecx, [ebp+0x8]
	test [ecx+eax*4+0x55c], ebx
	jnz _Z18G_GivePlayerWeaponP13playerState_sih_30
_Z18G_GivePlayerWeaponP13playerState_sih_80:
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
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x540]
	mov edx, eax
	test eax, eax
	jz _Z18G_GivePlayerWeaponP13playerState_sih_30
	mov ecx, eax
	and ecx, 0x1f
	shl ebx, cl
	sar eax, 0x5
	mov edi, [ebp+0x8]
	test [edi+eax*4+0x55c], ebx
	jz _Z18G_GivePlayerWeaponP13playerState_sih_80
	mov eax, 0x1
	jmp _Z18G_GivePlayerWeaponP13playerState_sih_90
_Z18G_GivePlayerWeaponP13playerState_sih_70:
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xe0]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x144]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27BG_GetFirstAvailableOffhandPK13playerState_si
	test eax, eax
	mov esi, eax
	cmovz esi, edi
	mov [ebx+0xe0], esi
	mov edi, [ebp+0x8]
	mov ebx, [edi+0xdc]
	mov [esp], esi
	call _Z27BG_AssertOffhandIndexOrNonei
	mov [esp+0x8], esi
	jmp _Z18G_GivePlayerWeaponP13playerState_sih_100
	add [eax], al


;G_SelectWeaponIndex(int, int)
_Z19G_SelectWeaponIndexii:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x61
	mov dword [esp], _cstring_c_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	leave
	ret


;G_SetEquippedOffHand(int, int)
_Z20G_SetEquippedOffHandii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z27BG_AssertOffhandIndexOrNonei
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43
	mov dword [esp], _cstring_c_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24SV_GameSendServerCommandi11svscmd_typePKc
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Weapon_Throw_Grenade(gentity_s*, int, unsigned char, weaponParms*)
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms:
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
	jz _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_10
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
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_10:
	mov eax, [esi+0x15c]
	test eax, eax
	jz _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_20
	mov eax, [ecx+0x3ec]
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_40:
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
	call _Z13G_FireGrenadeP9gentity_sPfS1_ihii
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
	jb _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_30
	movss xmm3, dword [_float_1_00000000]
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_50:
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
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_20:
	mov eax, [ecx+0x3f0]
	jmp _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_40
_Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_30:
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm1
	jmp _Z20Weapon_Throw_GrenadeP9gentity_sihP11weaponParms_50


;G_GetWeaponIndexForName(char const*)
_Z23G_GetWeaponIndexForNamePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _Z23G_GetWeaponIndexForNamePKc_10
	leave
	jmp _Z25BG_FindWeaponIndexForNamePKc
_Z23G_GetWeaponIndexForNamePKc_10:
	mov eax, _Z16G_RegisterWeaponj
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z24BG_GetWeaponIndexForNamePKcPFvjE
	leave
	ret


;G_AntiLagRewindClientPos(int, AntilagClientStore*)
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_10
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore_10:
	mov dword [esp+0x8], 0x340
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call memset
	mov ebx, level
	mov ecx, [ebx+0x1ec]
	sub ecx, [ebp+0x8]
	cmp ecx, 0x190
	jg _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_20
	mov eax, sv_fps
	mov esi, [eax]
	mov eax, 0x3e8
	cdq
	idiv dword [esi+0xc]
	cmp ecx, eax
	jle _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_20
	mov edx, [ebx+0x1e4]
	test edx, edx
	jle _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_20
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	xor edi, edi
	xor esi, esi
	jmp _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_30
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore_40:
	add edi, 0x1
	add esi, 0x3184
	add dword [ebp-0x2c], 0x1
	cmp edi, [ebx+0x1e4]
	jge _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_20
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore_30:
	mov eax, esi
	add eax, [ebx]
	cmp dword [eax+0x2f8c], 0x2
	jnz _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_40
	mov eax, [eax+0x2f64]
	test eax, eax
	jnz _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_40
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26SV_GetClientPositionAtTimeiiPf
	test al, al
	jnz _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_50
	mov ebx, level
	jmp _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_40
_Z24G_AntiLagRewindClientPosiP18AntilagClientStore_50:
	lea ebx, [edi+edi*8]
	lea ebx, [edi+ebx*2]
	mov eax, ebx
	shl eax, 0x5
	add ebx, eax
	add ebx, edi
	mov ecx, g_entities
	lea edx, [ebx+ecx+0x130]
	mov [ebp-0x34], edx
	add edx, 0xc
	mov [ebp-0x30], edx
	lea edx, [edi+edi*2]
	mov eax, [ebp+0xc]
	lea edx, [eax+edx*4]
	mov eax, [ebp-0x34]
	mov eax, [eax+0xc]
	mov [edx], eax
	mov eax, [ebp-0x30]
	mov eax, [eax+0x4]
	mov [edx+0x4], eax
	mov eax, [ebp-0x30]
	mov eax, [eax+0x8]
	mov [edx+0x8], eax
	add ebx, ecx
	mov [esp], ebx
	call _Z15SV_UnlinkEntityP9gentity_s
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x34]
	mov [edx+0xc], eax
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x30]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	mov [esp], ebx
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, [ebp-0x2c]
	mov byte [eax+0x300], 0x1
	mov ebx, level
	jmp _Z24G_AntiLagRewindClientPosiP18AntilagClientStore_40
	nop


;G_AntiLag_RestoreClientPos(AntilagClientStore*)
_Z26G_AntiLag_RestoreClientPosP18AntilagClientStore:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, g_antilag
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_10
	mov eax, level
	mov ecx, [eax+0x1e4]
	test ecx, ecx
	jle _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_10
	mov esi, [ebp+0x8]
	xor edi, edi
	jmp _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_20
_Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_30:
	add edi, 0x1
	add esi, 0x1
	cmp edi, [eax+0x1e4]
	jge _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_10
_Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_20:
	cmp byte [esi+0x300], 0x0
	jz _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_30
	lea ebx, [edi+edi*8]
	lea ebx, [edi+ebx*2]
	mov eax, ebx
	shl eax, 0x5
	add ebx, eax
	add ebx, edi
	mov eax, g_entities
	mov [ebp-0x20], eax
	add eax, ebx
	mov [ebp-0x1c], eax
	mov [esp], eax
	call _Z15SV_UnlinkEntityP9gentity_s
	mov edx, [ebp-0x20]
	lea ebx, [ebx+edx+0x130]
	lea ecx, [ebx+0xc]
	lea eax, [edi+edi*2]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*4]
	mov edx, [eax]
	mov [ebx+0xc], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov eax, [eax+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, level
	add edi, 0x1
	add esi, 0x1
	cmp edi, [eax+0x1e4]
	jl _Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_20
_Z26G_AntiLag_RestoreClientPosP18AntilagClientStore_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Weapon_RocketLauncher_Fire(gentity_s*, unsigned int, float, weaponParms*, float const*, gentity_s*, float const*)
_Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_:
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
	call _Z8G_randomv
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x68], xmm0
	call _Z8G_randomv
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
	jb _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__10
	movss xmm2, dword [_float_1_00000000]
_Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__30:
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
	call _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_
	mov ecx, eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x15c]
	test edx, edx
	jz _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__20
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
_Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__20:
	mov eax, ecx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__10:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4__30


;Weapon_GrenadeLauncher_Fire(gentity_s*, int, unsigned char, weaponParms*)
_Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms:
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
	call _Z13G_FireGrenadeP9gentity_sPfS1_ihii
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
	jb _Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms_10
	movss xmm3, dword [_float_1_00000000]
_Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms_20:
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
_Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms_10:
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm1
	jmp _Z27Weapon_GrenadeLauncher_FireP9gentity_sihP11weaponParms_20
	nop


;Initialized global or static variables of g_weapon:
SECTION .data


;Initialized constant data of g_weapon:
SECTION .rdata
_ZZ11Melee_TraceP9gentity_sP11weaponParmsifffP7trace_tPfE12traceOffsets: dd 0x0, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_weapon:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_unknown_weapon_t:		db 015h,"Unknown weapon type %i for %s",0ah,0
_cstring_:		db "----------------------",0ah,0
_cstring_game_g_setupweap:		db "Game: G_SetupWeaponDef",0ah,0
_cstring_defaultweapon_mp:		db "defaultweapon_mp",0
_cstring_c_i:		db "%c %i",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_16_00000000:		dd 0x41800000	; 16
_float_360_00000000:		dd 0x43b40000	; 360
_float__64_00000000:		dd 0xc2800000	; -64

