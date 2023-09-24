;Imports of g_misc_mp:
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern floorf
	extern _Z17AngleNormalize360f
	extern g_entities
	extern level
	extern _Z13G_GeneralLinkP9gentity_s
	extern _Z16G_PlaySoundAliasP9gentity_sh
	extern g_clients
	extern memset
	extern _Z23G_GetWeaponIndexForNamePKc
	extern _Z15BG_GetWeaponDefj
	extern _Z2vaPKcz
	extern _Z9Scr_ErrorPKc
	extern _Z17G_SoundAliasIndexPKc
	extern _Z12G_DObjUpdateP9gentity_s
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z12G_SpawnFloatPKcS0_Pf
	extern _Z16IsItemRegisteredi
	extern _Z10G_SpawnIntPKcS0_Pi
	extern _Z15SV_UnlinkEntityP9gentity_s
	extern _Z18SetClientViewAngleP9gentity_sPKf
	extern _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	extern _Z10YawVectorsfPfS_
	extern _Z6Q_acosf
	extern _Z17Com_GetServerDObji
	extern scr_const
	extern _Z16DObjGetBoneIndexPK6DObj_sjPh
	extern _Z23DObjSetControlTagAnglesPK6DObj_sPijPf
	extern _Z23G_DObjGetLocalTagMatrixP9gentity_sj
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern bulletPriorityMap
	extern _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	extern level_bgs
	extern _Z14vectosignedyawPKf
	extern _Z19XAnimGetNumChildrenPK7XAnim_sj
	extern _Z15XAnimGetChildAtPK7XAnim_sjj
	extern _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	extern _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	extern _Z21G_GetPlayerViewOriginPK13playerState_sPf
	extern _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	extern _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	extern _Z10G_AddEventP9gentity_sij
	extern _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	extern _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf
	extern _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	extern _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_
	extern _Z19VectorAngleMultiplyPff
	extern _Z13RotationToYawPKf
	extern _Z9YawToAxisfPA3_f
	extern _Z16MatrixMultiply43PA3_KfS1_PA3_f
	extern vec3_origin
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z16Com_PrintWarningiPKcz
	extern _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
	extern _Z18SL_ConvertToStringj
	extern _Z12G_FreeEntityP9gentity_s
	extern comWorld
	extern _Z14ColorNormalizePKfPf
	extern _Z11vectoanglesPKfPf
	extern _Z18G_LevelSpawnStringPKcS0_PS0_

;Exports of g_misc_mp:
	global turretInfo
	global _Z10turret_useP9gentity_sS0_S0_
	global _Z12G_FreeTurretP9gentity_s
	global _Z12turret_thinkP9gentity_s
	global _Z13G_InitTurretsv
	global _Z13G_SpawnTurretP9gentity_sPKc
	global _Z14TeleportPlayerP9gentity_sPfS1_
	global _Z15SP_info_notnullP9gentity_s
	global _Z16G_IsTurretUsableP9gentity_sS0_
	global _Z17turret_controllerPK9gentity_sPi
	global _Z17turret_think_initP9gentity_s
	global _Z19turret_think_clientP9gentity_s
	global _Z23G_ClientStopUsingTurretP9gentity_s
	global _Z8SP_lightP9gentity_s
	global _Z9SP_turretP9gentity_s


SECTION .text


;turret_use(gentity_s*, gentity_s*, gentity_s*)
_Z10turret_useP9gentity_sS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov esi, [eax+0x160]
	mov edi, [ebx+0x15c]
	mov byte [ebx+0x16c], 0x1
	mov byte [eax+0x16c], 0x1
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0x154
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	or dword [ebx+0x180], 0x400000
	mov dword [edi+0x598], 0x1
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [edi+0x59c], eax
	or dword [esi+0x4], 0x800
	lea ecx, [esi+0x2c]
	lea edx, [ebx+0x13c]
	mov eax, [ebx+0x13c]
	mov [esi+0x2c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebx+0x74], eax
	mov eax, [ebx]
	mov [edx+0x74], eax
	mov eax, [edi+0xc]
	test al, 0x1
	jz _Z10turret_useP9gentity_sS0_S0__10
	mov dword [esi+0x24], 0x2
	mov eax, [esi+0x20]
	cmp eax, 0x2
	jz _Z10turret_useP9gentity_sS0_S0__20
_Z10turret_useP9gentity_sS0_S0__40:
	sub eax, 0x1
	jz _Z10turret_useP9gentity_sS0_S0__30
	or dword [edi+0xb0], 0x300
_Z10turret_useP9gentity_sS0_S0__50:
	movss xmm0, dword [edi+0x108]
	mov eax, [ebp+0x8]
	subss xmm0, [eax+0x148]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_360_00000000]
	mov edx, [ebp+0x8]
	movss [edx+0x54], xmm0
	movss xmm2, dword [esi+0x14]
	movss xmm3, dword [esi+0xc]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	pxor xmm4, xmm4
	movaps xmm5, xmm4
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm2, xmm5
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm2, xmm3
	subss xmm2, xmm0
	movaps xmm5, xmm4
	cmpss xmm5, xmm2, 0x2
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm1
	orps xmm0, xmm3
	movss [edx+0x54], xmm0
	movss xmm0, dword [edi+0x10c]
	subss xmm0, [edx+0x14c]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm4
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	mov eax, [ebp+0x8]
	movss [eax+0x58], xmm0
	movss xmm2, dword [esi+0x18]
	movss xmm3, dword [esi+0x10]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movss xmm4, dword [ebp-0x48]
	movaps xmm5, xmm4
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm2, xmm5
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm2, xmm3
	subss xmm2, xmm0
	movaps xmm5, xmm4
	cmpss xmm5, xmm2, 0x6
	movaps xmm0, xmm5
	andps xmm1, xmm5
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [eax+0x58], xmm0
	movss [eax+0x5c], xmm4
	movss xmm0, dword [esi+0x14]
	subss xmm0, [esi+0xc]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [_float_0_50000000]
	movss [edi+0x130], xmm0
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x148]
	addss xmm0, [esi+0x14]
	movss [edi+0x128], xmm0
	subss xmm0, [edi+0x130]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x128]
	movss xmm0, dword [esi+0x18]
	subss xmm0, [esi+0x10]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x28]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x28]
	mulss xmm0, [_float_360_00000000]
	mulss xmm0, [_float_0_50000000]
	movss [edi+0x134], xmm0
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x14c]
	addss xmm0, [esi+0x18]
	movss [edi+0x12c], xmm0
	subss xmm0, [edi+0x134]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x12c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10turret_useP9gentity_sS0_S0__10:
	test al, 0x2
	setnz al
	movzx eax, al
	mov [esi+0x24], eax
	mov eax, [esi+0x20]
	cmp eax, 0x2
	jnz _Z10turret_useP9gentity_sS0_S0__40
_Z10turret_useP9gentity_sS0_S0__20:
	mov eax, [edi+0xb0]
	or ah, 0x1
	and ah, 0xfd
	mov [edi+0xb0], eax
	jmp _Z10turret_useP9gentity_sS0_S0__50
_Z10turret_useP9gentity_sS0_S0__30:
	mov eax, [edi+0xb0]
	or ah, 0x2
	and ah, 0xfe
	mov [edi+0xb0], eax
	jmp _Z10turret_useP9gentity_sS0_S0__50


;G_FreeTurret(gentity_s*)
_Z12G_FreeTurretP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp word [ebx+0x154], 0x0
	jnz _Z12G_FreeTurretP9gentity_s_10
	mov eax, g_entities
	add eax, 0x9cd8c
_Z12G_FreeTurretP9gentity_s_30:
	mov edx, [eax+0x15c]
	test edx, edx
	jz _Z12G_FreeTurretP9gentity_s_20
	mov [esp], ebx
	call _Z23G_ClientStopUsingTurretP9gentity_s
_Z12G_FreeTurretP9gentity_s_20:
	mov byte [ebx+0x16c], 0x0
	mov eax, [ebx+0x160]
	mov dword [eax], 0x0
	mov dword [ebx+0x160], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12G_FreeTurretP9gentity_s_10:
	movzx eax, word [ebx+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z12G_FreeTurretP9gentity_s_30


;turret_think(gentity_s*)
_Z12turret_thinkP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0x8]
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [esi+0x19c], eax
	mov edi, [esi+0x218]
	test edi, edi
	jz _Z12turret_thinkP9gentity_s_10
	mov [esp], esi
	call _Z13G_GeneralLinkP9gentity_s
_Z12turret_thinkP9gentity_s_10:
	cmp word [esi+0x154], 0x0
	jnz _Z12turret_thinkP9gentity_s_20
	mov eax, g_entities
	add eax, 0x9cd8c
	mov ebx, [eax+0x15c]
	test ebx, ebx
	jz _Z12turret_thinkP9gentity_s_30
_Z12turret_thinkP9gentity_s_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12turret_thinkP9gentity_s_20:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	mov ebx, [eax+0x15c]
	test ebx, ebx
	jnz _Z12turret_thinkP9gentity_s_40
_Z12turret_thinkP9gentity_s_30:
	mov edi, [esi+0x160]
	mov dword [esi+0x80], 0x0
	mov ecx, [edi+0x28]
	test ecx, ecx
	jle _Z12turret_thinkP9gentity_s_50
	movzx eax, byte [edi+0x44]
	mov [esi+0x80], eax
	mov eax, [edi+0x28]
	sub eax, 0x32
	mov [edi+0x28], eax
	test eax, eax
	jle _Z12turret_thinkP9gentity_s_60
_Z12turret_thinkP9gentity_s_160:
	mov edi, [esi+0x160]
_Z12turret_thinkP9gentity_s_50:
	and dword [esi+0x8], 0xffffffbf
	mov eax, [edi+0x1c]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	movss xmm0, dword [esi+0x54]
	movss [ebp-0x30], xmm0
	addss xmm0, [esi+0x5c]
	movss [esi+0x54], xmm0
	mov eax, 0x43480000
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov eax, [edi+0x4]
	test ah, 0x2
	jnz _Z12turret_thinkP9gentity_s_70
_Z12turret_thinkP9gentity_s_140:
	mov ebx, esi
	mov dword [ebp-0x2c], 0x1
_Z12turret_thinkP9gentity_s_90:
	mov edx, [ebp-0x2c]
	shl edx, 0x2
	lea eax, [ebp-0x28]
	add eax, edx
	movss xmm2, dword [eax-0x4]
	mulss xmm2, [_float_0_05000000]
	movss [eax-0x4], xmm2
	movss xmm0, dword [ebx+0x54]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp+edx-0x24]
	subss xmm0, [ebp-0x34]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	movss [ebp-0x68], xmm2
	call floorf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x38]
	mulss xmm0, [_float_360_00000000]
	movss xmm2, dword [ebp-0x68]
	ucomiss xmm0, xmm2
	ja _Z12turret_thinkP9gentity_s_80
	xorps xmm2, [_data16_80000000]
	maxss xmm2, xmm0
_Z12turret_thinkP9gentity_s_80:
	addss xmm2, [ebp-0x34]
	movss [ebx+0x54], xmm2
	add dword [ebp-0x2c], 0x1
	add ebx, 0x4
	cmp dword [ebp-0x2c], 0x3
	jnz _Z12turret_thinkP9gentity_s_90
	movss xmm0, dword [esi+0x54]
	movss [esi+0x5c], xmm0
	mov eax, [edi+0x4]
	test ah, 0x2
	jz _Z12turret_thinkP9gentity_s_100
	test ah, 0x4
	jnz _Z12turret_thinkP9gentity_s_110
	movss xmm1, dword [edi+0x3c]
	ucomiss xmm0, xmm1
	ja _Z12turret_thinkP9gentity_s_120
_Z12turret_thinkP9gentity_s_150:
	and ah, 0xfe
	mov [edi+0x4], eax
_Z12turret_thinkP9gentity_s_100:
	subss xmm0, [ebp-0x30]
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x3c]
	mulss xmm0, [_float_360_00000000]
	movss xmm1, dword [ebp-0x28]
	ucomiss xmm0, xmm1
	ja _Z12turret_thinkP9gentity_s_130
	xorps xmm1, [_data16_80000000]
	maxss xmm1, xmm0
_Z12turret_thinkP9gentity_s_130:
	movaps xmm0, xmm1
	movss xmm1, dword [ebp-0x30]
	addss xmm1, xmm0
	movss [esi+0x54], xmm1
	movss xmm0, dword [esi+0x5c]
	subss xmm0, xmm1
	movss [esi+0x5c], xmm0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12turret_thinkP9gentity_s_70:
	test ah, 0x1
	jz _Z12turret_thinkP9gentity_s_140
	mov dword [ebp-0x28], 0x43b40000
	jmp _Z12turret_thinkP9gentity_s_140
_Z12turret_thinkP9gentity_s_110:
	movss xmm1, dword [edi+0x3c]
	ucomiss xmm1, [esi+0x54]
	jbe _Z12turret_thinkP9gentity_s_150
_Z12turret_thinkP9gentity_s_120:
	movaps xmm0, xmm1
	jmp _Z12turret_thinkP9gentity_s_100
_Z12turret_thinkP9gentity_s_60:
	cmp byte [edi+0x46], 0x0
	jz _Z12turret_thinkP9gentity_s_160
	mov dword [esi+0x80], 0x0
	movzx eax, byte [edi+0x46]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16G_PlaySoundAliasP9gentity_sh
	mov edi, [esi+0x160]
	jmp _Z12turret_thinkP9gentity_s_50
	nop


;G_InitTurrets()
_Z13G_InitTurretsv:
	push ebp
	mov ebp, esp
	mov eax, turretInfo
_Z13G_InitTurretsv_10:
	mov dword [eax], 0x0
	add eax, 0x48
	cmp eax, g_clients
	jnz _Z13G_InitTurretsv_10
	pop ebp
	ret


;G_SpawnTurret(gentity_s*, char const*)
_Z13G_SpawnTurretP9gentity_sPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	xor eax, eax
	xor edx, edx
	jmp _Z13G_SpawnTurretP9gentity_sPKc_10
_Z13G_SpawnTurretP9gentity_sPKc_30:
	add eax, 0x1
	lea edx, [ebx+0x48]
	cmp eax, 0x20
	jz _Z13G_SpawnTurretP9gentity_sPKc_20
_Z13G_SpawnTurretP9gentity_sPKc_10:
	mov ebx, edx
	lea esi, [edx+turretInfo]
	mov edx, [edx+turretInfo]
	test edx, edx
	jnz _Z13G_SpawnTurretP9gentity_sPKc_30
_Z13G_SpawnTurretP9gentity_sPKc_230:
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov [edi+0x160], esi
	mov dword [ebx+turretInfo], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov [edi+0xc4], eax
	mov dword [edi+0xc8], 0x0
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_40
_Z13G_SpawnTurretP9gentity_sPKc_290:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	cmp dword [eax+0x130], 0x7
	jz _Z13G_SpawnTurretP9gentity_sPKc_50
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_g_spawnturret_we
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
_Z13G_SpawnTurretP9gentity_sPKc_50:
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_60
_Z13G_SpawnTurretP9gentity_sPKc_300:
	mov dword [esi+0x8], 0x0
	mov eax, [ebx+0x148]
	mov [esi+0x20], eax
	mov dword [esi+0x24], 0xffffffff
	mov dword [esi+0x28], 0x0
	mov eax, [ebx+0x178]
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_70
	mov eax, [eax]
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
	mov [esi+0x44], al
	mov eax, [ebx+0x17c]
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_80
_Z13G_SpawnTurretP9gentity_sPKc_240:
	mov eax, [eax]
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
	mov [esi+0x45], al
	mov eax, [ebx+0x180]
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_90
_Z13G_SpawnTurretP9gentity_sPKc_250:
	mov eax, [eax]
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
	mov [esi+0x46], al
	mov eax, [ebx+0x184]
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_100
_Z13G_SpawnTurretP9gentity_sPKc_260:
	mov eax, [eax]
	mov [esp], eax
	call _Z17G_SoundAliasIndexPKc
	mov [esi+0x47], al
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_110
_Z13G_SpawnTurretP9gentity_sPKc_270:
	mov eax, [ebx+0x79c]
	mov [esi+0x10], eax
_Z13G_SpawnTurretP9gentity_sPKc_280:
	movss xmm0, dword [esi+0x10]
	xorps xmm0, [_data16_80000000]
	movss [esi+0x10], xmm0
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z13G_SpawnTurretP9gentity_sPKc_120
	movss [esi+0x10], xmm2
_Z13G_SpawnTurretP9gentity_sPKc_120:
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_130
_Z13G_SpawnTurretP9gentity_sPKc_390:
	mov eax, [ebx+0x798]
	mov [esi+0x18], eax
	ucomiss xmm2, [esi+0x18]
	ja _Z13G_SpawnTurretP9gentity_sPKc_140
_Z13G_SpawnTurretP9gentity_sPKc_400:
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_150
_Z13G_SpawnTurretP9gentity_sPKc_380:
	mov eax, [ebx+0x7a0]
	mov [esi+0xc], eax
_Z13G_SpawnTurretP9gentity_sPKc_370:
	movss xmm0, dword [esi+0xc]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	pxor xmm1, xmm1
	orps xmm0, xmm1
	movss [esi+0xc], xmm0
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_160
_Z13G_SpawnTurretP9gentity_sPKc_360:
	mov eax, [ebx+0x7a4]
	mov [esi+0x14], eax
_Z13G_SpawnTurretP9gentity_sPKc_350:
	ucomiss xmm2, [esi+0x14]
	ja _Z13G_SpawnTurretP9gentity_sPKc_170
_Z13G_SpawnTurretP9gentity_sPKc_410:
	mov dword [esi+0x1c], 0xc2b40000
	mov eax, [edi+0x1a0]
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_180
	mov dword [edi+0x1a0], 0x64
_Z13G_SpawnTurretP9gentity_sPKc_180:
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_190
_Z13G_SpawnTurretP9gentity_sPKc_330:
	mov eax, [ebx+0x34c]
	mov [edi+0x1a8], eax
	mov ecx, [edi+0x1a8]
	test ecx, ecx
	js _Z13G_SpawnTurretP9gentity_sPKc_200
_Z13G_SpawnTurretP9gentity_sPKc_340:
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jnz _Z13G_SpawnTurretP9gentity_sPKc_210
_Z13G_SpawnTurretP9gentity_sPKc_320:
	mov eax, [ebx+0x7b0]
	mov [esi+0x38], eax
_Z13G_SpawnTurretP9gentity_sPKc_310:
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x38]
	jbe _Z13G_SpawnTurretP9gentity_sPKc_220
	mov dword [esi+0x38], 0x0
_Z13G_SpawnTurretP9gentity_sPKc_220:
	mov dword [esi+0x4], 0x3
	mov dword [edi+0x190], 0x1
	mov dword [edi+0x120], 0x200004
	mov byte [edi+0xf6], 0x0
	mov dword [edi+0x4], 0xb
	or dword [edi+0x180], 0x1000
	mov [esp], edi
	call _Z12G_DObjUpdateP9gentity_s
	lea edx, [edi+0x108]
	mov eax, 0xc2000000
	mov [edi+0x108], eax
	mov [edx+0x4], eax
	mov dword [edx+0x8], 0x0
	lea edx, [edi+0x114]
	mov eax, 0x42000000
	mov [edi+0x114], eax
	mov [edx+0x4], eax
	mov dword [edx+0x8], 0x42600000
	lea eax, [edi+0x13c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	lea eax, [edi+0x148]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	lea eax, [edi+0x54]
	mov dword [edi+0x54], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov byte [edi+0x16e], 0xe
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [edi+0x19c], eax
	mov dword [edi+0x30], 0x3
	mov byte [edi+0x16b], 0x0
	mov [ebp+0x8], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s
_Z13G_SpawnTurretP9gentity_sPKc_20:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_g_spawnturret_ma
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z13G_SpawnTurretP9gentity_sPKc_230
_Z13G_SpawnTurretP9gentity_sPKc_70:
	mov byte [esi+0x44], 0x0
	mov eax, [ebx+0x17c]
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_240
_Z13G_SpawnTurretP9gentity_sPKc_80:
	mov byte [esi+0x45], 0x0
	mov eax, [ebx+0x180]
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_250
_Z13G_SpawnTurretP9gentity_sPKc_90:
	mov byte [esi+0x46], 0x0
	mov eax, [ebx+0x184]
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_260
_Z13G_SpawnTurretP9gentity_sPKc_100:
	mov byte [esi+0x47], 0x0
	mov eax, level
	cmp byte [eax+0xb34], 0x0
	jz _Z13G_SpawnTurretP9gentity_sPKc_270
_Z13G_SpawnTurretP9gentity_sPKc_110:
	lea eax, [esi+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_rightarc
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_280
	jmp _Z13G_SpawnTurretP9gentity_sPKc_270
_Z13G_SpawnTurretP9gentity_sPKc_40:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_weaponinfo_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [edi+0xc4]
	jmp _Z13G_SpawnTurretP9gentity_sPKc_290
_Z13G_SpawnTurretP9gentity_sPKc_60:
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z16IsItemRegisteredi
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_300
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_turret_s_not_pre
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z13G_SpawnTurretP9gentity_sPKc_300
_Z13G_SpawnTurretP9gentity_sPKc_210:
	lea eax, [esi+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_1
	mov dword [esp], _cstring_playerspread
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_310
	jmp _Z13G_SpawnTurretP9gentity_sPKc_320
_Z13G_SpawnTurretP9gentity_sPKc_190:
	lea eax, [edi+0x1a8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_damage
	call _Z10G_SpawnIntPKcS0_Pi
	test eax, eax
	jz _Z13G_SpawnTurretP9gentity_sPKc_330
	mov ecx, [edi+0x1a8]
	test ecx, ecx
	jns _Z13G_SpawnTurretP9gentity_sPKc_340
_Z13G_SpawnTurretP9gentity_sPKc_200:
	mov dword [edi+0x1a8], 0x0
	jmp _Z13G_SpawnTurretP9gentity_sPKc_340
_Z13G_SpawnTurretP9gentity_sPKc_160:
	lea eax, [esi+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_bottomarc
	call _Z12G_SpawnFloatPKcS0_Pf
	pxor xmm2, xmm2
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_350
	pxor xmm2, xmm2
	jmp _Z13G_SpawnTurretP9gentity_sPKc_360
_Z13G_SpawnTurretP9gentity_sPKc_150:
	lea eax, [esi+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_toparc
	call _Z12G_SpawnFloatPKcS0_Pf
	pxor xmm2, xmm2
	test eax, eax
	jnz _Z13G_SpawnTurretP9gentity_sPKc_370
	pxor xmm2, xmm2
	jmp _Z13G_SpawnTurretP9gentity_sPKc_380
_Z13G_SpawnTurretP9gentity_sPKc_130:
	lea eax, [esi+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_leftarc
	movss [ebp-0x38], xmm2
	call _Z12G_SpawnFloatPKcS0_Pf
	test eax, eax
	movss xmm2, dword [ebp-0x38]
	jz _Z13G_SpawnTurretP9gentity_sPKc_390
	ucomiss xmm2, [esi+0x18]
	jbe _Z13G_SpawnTurretP9gentity_sPKc_400
_Z13G_SpawnTurretP9gentity_sPKc_140:
	mov dword [esi+0x18], 0x0
	jmp _Z13G_SpawnTurretP9gentity_sPKc_400
_Z13G_SpawnTurretP9gentity_sPKc_170:
	mov dword [esi+0x14], 0x0
	jmp _Z13G_SpawnTurretP9gentity_sPKc_410
	nop


;TeleportPlayer(gentity_s*, float*, float*)
_Z14TeleportPlayerP9gentity_sPfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	movzx eax, byte [edi+0xf4]
	mov [ebp-0x19], al
	mov [esp], edi
	call _Z15SV_UnlinkEntityP9gentity_s
	mov edx, [edi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebx]
	mov [edx+0x1c], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edi+0x15c]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x24]
	movss [eax+0x24], xmm0
	mov eax, [edi+0x15c]
	xor dword [eax+0xb0], 0x2
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z18SetClientViewAngleP9gentity_sPKf
	mov eax, [edi+0x218]
	test eax, eax
	jz _Z14TeleportPlayerP9gentity_sPfS1__10
_Z14TeleportPlayerP9gentity_sPfS1__30:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov eax, [edi+0x15c]
	mov [esp], eax
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	lea ecx, [edi+0x13c]
	mov eax, [edi+0x15c]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [edi+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	cmp byte [ebp-0x19], 0x0
	jnz _Z14TeleportPlayerP9gentity_sPfS1__20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14TeleportPlayerP9gentity_sPfS1__20:
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s
_Z14TeleportPlayerP9gentity_sPfS1__10:
	mov dword [edi+0x148], 0x0
	jmp _Z14TeleportPlayerP9gentity_sPfS1__30


;SP_info_notnull(gentity_s*)
_Z15SP_info_notnullP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	lea eax, [edx+0x13c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11G_SetOriginP9gentity_sPKf
	leave
	ret
	nop


;G_IsTurretUsable(gentity_s*, gentity_s*)
_Z16G_IsTurretUsableP9gentity_sS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp byte [ebx+0x16c], 0x0
	jnz _Z16G_IsTurretUsableP9gentity_sS0__10
	mov eax, [ebx+0x160]
	test eax, eax
	jz _Z16G_IsTurretUsableP9gentity_sS0__10
	movss xmm1, dword [eax+0x10]
	movss xmm2, dword [_data16_7fffffff]
	movaps xmm0, xmm1
	andps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [eax+0x18]
	andps xmm0, xmm2
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [_float_0_50000000]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm2, xmm0
	movss [ebp-0x1c], xmm2
	addss xmm1, [ebx+0x14c]
	addss xmm1, xmm2
	mulss xmm1, [_float_0_00277778]
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x38], xmm1
	call floorf
	fstp dword [ebp-0x24]
	movss xmm1, dword [ebp-0x38]
	subss xmm1, [ebp-0x24]
	mulss xmm1, [_float_360_00000000]
	movss [esp], xmm1
	call _Z10YawVectorsfPfS_
	movss xmm3, dword [ebp-0x14]
	movss xmm0, dword [ebp-0x10]
	movss xmm2, dword [ebp-0xc]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	pxor xmm6, xmm6
	ucomiss xmm0, xmm6
	jb _Z16G_IsTurretUsableP9gentity_sS0__20
	movss xmm7, dword [_float_1_00000000]
	movaps xmm1, xmm7
_Z16G_IsTurretUsableP9gentity_sS0__40:
	mulss xmm3, xmm1
	movss [ebp-0x14], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x10]
	movss [ebp-0x10], xmm0
	movaps xmm4, xmm1
	mulss xmm4, [ebp-0xc]
	movss [ebp-0xc], xmm4
	movss xmm3, dword [ebx+0x13c]
	subss xmm3, [esi+0x13c]
	movss xmm2, dword [ebx+0x140]
	subss xmm2, [esi+0x140]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	addss xmm0, xmm6
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm6
	jb _Z16G_IsTurretUsableP9gentity_sS0__30
	movaps xmm1, xmm7
_Z16G_IsTurretUsableP9gentity_sS0__50:
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mulss xmm0, [ebp-0x14]
	mulss xmm2, xmm1
	mulss xmm2, [ebp-0x10]
	addss xmm0, xmm2
	mulss xmm1, xmm6
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movaps xmm1, xmm0
	subss xmm1, xmm7
	movaps xmm2, xmm6
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm2
	movaps xmm2, xmm0
	andps xmm2, xmm1
	andnps xmm1, xmm7
	orps xmm1, xmm2
	movss xmm3, dword [_float__1_00000000]
	movaps xmm2, xmm3
	subss xmm2, xmm0
	movaps xmm0, xmm6
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [esp], xmm0
	call _Z6Q_acosf
	fstp dword [ebp-0x20]
	cvtss2sd xmm0, [ebp-0x20]
	mulsd xmm0, [_double_57_29577951]
	cvtsd2ss xmm0, xmm0
	ucomiss xmm0, [ebp-0x1c]
	ja _Z16G_IsTurretUsableP9gentity_sS0__10
	mov eax, [esi+0x15c]
	mov ecx, [eax+0x44]
	test ecx, ecx
	jnz _Z16G_IsTurretUsableP9gentity_sS0__10
	cmp dword [eax+0x70], 0x3ff
	jz _Z16G_IsTurretUsableP9gentity_sS0__10
	mov eax, 0x1
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z16G_IsTurretUsableP9gentity_sS0__10:
	xor eax, eax
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z16G_IsTurretUsableP9gentity_sS0__20:
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z16G_IsTurretUsableP9gentity_sS0__40
_Z16G_IsTurretUsableP9gentity_sS0__30:
	movaps xmm0, xmm7
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z16G_IsTurretUsableP9gentity_sS0__50
	add [eax], al


;turret_controller(gentity_s const*, int*)
_Z17turret_controllerPK9gentity_sPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x58]
	mov [ebp-0x24], eax
	mov eax, [edx+0x54]
	mov [ebp-0x28], eax
	mov dword [ebp-0x20], 0x0
	mov eax, [edx]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov ebx, eax
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov edi, scr_const
	movzx eax, word [edi+0x86]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	lea esi, [ebp-0x28]
	mov [esp+0xc], esi
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23DObjSetControlTagAnglesPK6DObj_sPijPf
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	movzx eax, word [edi+0x88]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	mov [esp+0xc], esi
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23DObjSetControlTagAnglesPK6DObj_sPijPf
	mov edx, [ebp+0x8]
	mov eax, [edx+0x5c]
	mov [ebp-0x28], eax
	mov dword [ebp-0x24], 0x0
	mov byte [ebp-0x19], 0xfe
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	movzx eax, word [edi+0x90]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16DObjGetBoneIndexPK6DObj_sjPh
	mov [esp+0xc], esi
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23DObjSetControlTagAnglesPK6DObj_sPijPf
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;turret_think_init(gentity_s*)
_Z17turret_think_initP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov edi, [ebp+0x8]
	mov eax, [edi+0x160]
	mov [ebp-0xe4], eax
	mov byte [edi+0x16e], 0xf
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [edi+0x19c], eax
	mov edx, [ebp-0xe4]
	movss xmm0, dword [edx+0x1c]
	ucomiss xmm0, [_float__90_00000000]
	jz _Z17turret_think_initP9gentity_s_10
_Z17turret_think_initP9gentity_s_20:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17turret_think_initP9gentity_s_10:
	jp _Z17turret_think_initP9gentity_s_20
	mov esi, scr_const
	movzx eax, word [esi+0x86]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23G_DObjGetLocalTagMatrixP9gentity_sj
	mov ebx, eax
	test eax, eax
	jz _Z17turret_think_initP9gentity_s_20
	movzx eax, word [esi+0x8c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23G_DObjGetLocalTagMatrixP9gentity_sj
	mov esi, eax
	test eax, eax
	jz _Z17turret_think_initP9gentity_s_20
	lea eax, [ebp-0xc8]
	mov [esp+0x4], eax
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0xa4], eax
	mov eax, [edx+0x4]
	mov [ebp-0xa0], eax
	mov eax, [edx+0x8]
	mov [ebp-0x9c], eax
	lea edx, [ebx+0x10]
	mov [ebp-0xe8], edx
	lea eax, [esi+0x10]
	movss xmm0, dword [esi+0x10]
	movss [ebp-0xd0], xmm0
	subss xmm0, [ebx+0x10]
	movss [ebp-0xd0], xmm0
	lea edx, [ebx+0x14]
	mov [ebp-0xe0], edx
	movss xmm0, dword [eax+0x4]
	movss [ebp-0xd4], xmm0
	subss xmm0, [ebx+0x14]
	movss [ebp-0xd4], xmm0
	lea edx, [ebx+0x18]
	mov [ebp-0xdc], edx
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xd8], xmm0
	subss xmm0, [ebx+0x18]
	movss [ebp-0xd8], xmm0
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea edx, [ebp-0xc8]
	mov [esp+0x4], edx
	mov eax, [ebp-0xe8]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	mov edx, bulletPriorityMap
	mov [ebp-0xcc], edx
	xor ebx, ebx
	lea esi, [ebp-0x48]
	jmp _Z17turret_think_initP9gentity_s_30
_Z17turret_think_initP9gentity_s_40:
	add ebx, 0x1
	cmp ebx, 0x1f
	jz _Z17turret_think_initP9gentity_s_20
_Z17turret_think_initP9gentity_s_30:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float__3_00000000]
	movss [ebp-0x30], xmm0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z12AnglesToAxisPKfPA3_f
	movss xmm0, dword [ebp-0xd0]
	mulss xmm0, [ebp-0x6c]
	movss xmm1, dword [ebp-0xd4]
	mulss xmm1, [ebp-0x60]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd8]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0xd0]
	mulss xmm0, [ebp-0x68]
	movss xmm1, dword [ebp-0xd4]
	mulss xmm1, [ebp-0x5c]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd8]
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0xd0]
	mulss xmm0, [ebp-0x64]
	movss xmm1, dword [ebp-0xd4]
	mulss xmm1, [ebp-0x58]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd8]
	mulss xmm1, [ebp-0x4c]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov eax, [ebp-0xe8]
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	mov edx, [ebp-0xe0]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mov eax, [ebp-0xdc]
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mov [esp+0x8], esi
	lea edx, [ebp-0xc8]
	mov [esp+0x4], edx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	mov edx, [ebp-0xcc]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x811
	mov eax, [edi]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x98]
	mov [esp], edx
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x98]
	jbe _Z17turret_think_initP9gentity_s_40
	mov eax, [ebp-0x30]
	mov edx, [ebp-0xe4]
	mov [edx+0x1c], eax
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;turret_think_client(gentity_s*)
_Z19turret_think_clientP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov edi, [ebp+0x8]
	movzx eax, word [edi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea esi, [edx+eax-0x274]
	add esi, g_entities
	cmp byte [esi+0x16c], 0x1
	jz _Z19turret_think_clientP9gentity_s_10
_Z19turret_think_clientP9gentity_s_20:
	mov [esp], edi
	call _Z23G_ClientStopUsingTurretP9gentity_s
_Z19turret_think_clientP9gentity_s_70:
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19turret_think_clientP9gentity_s_10:
	mov ebx, [esi+0x15c]
	mov edx, [ebx+0x2f64]
	test edx, edx
	jnz _Z19turret_think_clientP9gentity_s_20
	cmp dword [ebx+0x4], 0x6
	jz _Z19turret_think_clientP9gentity_s_20
	mov eax, [edi+0x160]
	mov [ebp-0x1b4], eax
	mov dword [ebx+0x598], 0x1
	mov eax, [edi]
	mov [ebx+0x59c], eax
	movss xmm0, dword [ebx+0x108]
	subss xmm0, [edi+0x148]
	mulss xmm0, [_float_0_00277778]
	movss xmm4, dword [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, xmm4
	movss [esp], xmm1
	movss [ebp-0x1d8], xmm0
	movss [ebp-0x1e8], xmm4
	call floorf
	fstp dword [ebp-0x1b8]
	movss xmm0, dword [ebp-0x1d8]
	subss xmm0, [ebp-0x1b8]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x54], xmm0
	mov edx, [ebp-0x1b4]
	movss xmm2, dword [edx+0x14]
	movss xmm3, dword [edx+0xc]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	pxor xmm5, xmm5
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm2, xmm5
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm2, xmm3
	subss xmm2, xmm0
	pxor xmm5, xmm5
	cmpss xmm5, xmm2, 0x2
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm1
	orps xmm0, xmm3
	movss [edi+0x54], xmm0
	movss xmm0, dword [ebx+0x10c]
	subss xmm0, [edi+0x14c]
	mulss xmm0, [_float_0_00277778]
	movss xmm4, dword [ebp-0x1e8]
	addss xmm4, xmm0
	movss [esp], xmm4
	movss [ebp-0x1d8], xmm0
	call floorf
	fstp dword [ebp-0x1bc]
	movss xmm0, dword [ebp-0x1d8]
	subss xmm0, [ebp-0x1bc]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x58], xmm0
	mov eax, [ebp-0x1b4]
	movss xmm2, dword [eax+0x18]
	movss xmm3, dword [eax+0x10]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	pxor xmm4, xmm4
	cmpss xmm4, xmm1, 0x2
	movaps xmm1, xmm4
	andps xmm2, xmm4
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm5, xmm3
	subss xmm5, xmm0
	pxor xmm2, xmm2
	cmpss xmm2, xmm5, 0x2
	movaps xmm0, xmm2
	andps xmm3, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm3
	movss [edi+0x58], xmm0
	mov dword [edi+0x5c], 0x0
	mov edx, [ebp-0x1b4]
	mov eax, [edx+0x4]
	test ah, 0x8
	jz _Z19turret_think_clientP9gentity_s_30
	and ah, 0xf7
	mov [edx+0x4], eax
	xor dword [edi+0x8], 0x2
_Z19turret_think_clientP9gentity_s_30:
	mov eax, [esi+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, level_bgs
	mov [ebp-0x1c0], ecx
	lea edx, [ecx+edx*4+0x99a00]
	lea eax, [edx+0x4]
	mov [ebp-0x19c], eax
	lea ebx, [edx+0x380]
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_40
	mov eax, [ebx+0x14]
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_40
	test byte [eax+0x50], 0x4
	jnz _Z19turret_think_clientP9gentity_s_50
_Z19turret_think_clientP9gentity_s_40:
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	mov eax, [esi+0x15c]
	mov dword [eax+0x598], 0x1
	and dword [edi+0x8], 0xffffffbf
	mov ecx, [ebp-0x1b4]
	mov eax, [ecx+0x8]
	sub eax, 0x32
	mov [ecx+0x8], eax
	test eax, eax
	jle _Z19turret_think_clientP9gentity_s_60
_Z19turret_think_clientP9gentity_s_200:
	mov edx, [edi+0x160]
	mov dword [edi+0x80], 0x0
	mov eax, [edx+0x28]
	test eax, eax
	jle _Z19turret_think_clientP9gentity_s_70
	movzx eax, byte [edx+0x44]
	mov [edi+0x80], eax
	mov eax, [edx+0x28]
	sub eax, 0x32
	mov [edx+0x28], eax
	test eax, eax
	jg _Z19turret_think_clientP9gentity_s_70
	cmp byte [edx+0x46], 0x0
	jz _Z19turret_think_clientP9gentity_s_70
	mov dword [edi+0x80], 0x0
	movzx eax, byte [edx+0x46]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16G_PlaySoundAliasP9gentity_sh
	jmp _Z19turret_think_clientP9gentity_s_70
_Z19turret_think_clientP9gentity_s_50:
	mov eax, scr_const
	movzx eax, word [eax+0xa6]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23G_DObjGetLocalTagMatrixP9gentity_sj
	mov [ebp-0x17c], eax
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_80
	mov eax, [esi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp-0x160], eax
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_40
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x198], eax
	mov edx, [ebp-0x19c]
	mov edx, [edx+0x4a8]
	mov [ebp-0x178], edx
	mov ecx, [ebp-0x1c0]
	mov ecx, [ecx+0x999b8]
	mov [ebp-0x174], ecx
	mov ebx, [ebx+0x10]
	and bh, 0xfd
	mov [ebp-0x170], ebx
	mov eax, [ebp-0x17c]
	movss xmm1, dword [eax+0x1c]
	movaps xmm3, xmm1
	mulss xmm3, [eax]
	movaps xmm6, xmm1
	mulss xmm6, [eax+0x4]
	mulss xmm1, [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss [ebp-0x15c], xmm0
	movss xmm4, dword [eax+0x4]
	movaps xmm5, xmm3
	mulss xmm5, xmm4
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	movss [ebp-0x158], xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm3, xmm0
	mulss xmm4, xmm6
	movss [ebp-0x154], xmm4
	movaps xmm7, xmm6
	mulss xmm7, xmm2
	mulss xmm6, xmm0
	movaps xmm4, xmm1
	mulss xmm4, xmm2
	mulss xmm1, xmm0
	movss [ebp-0x1ec], xmm1
	movss xmm0, dword [ebp-0x154]
	addss xmm0, xmm4
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss [ebp-0x74], xmm1
	movss xmm0, dword [ebp-0x1ec]
	addss xmm0, xmm5
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x158]
	subss xmm0, xmm6
	movss [ebp-0x6c], xmm0
	subss xmm5, [ebp-0x1ec]
	movss [ebp-0x68], xmm5
	addss xmm4, [ebp-0x15c]
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm7
	movss [ebp-0x60], xmm0
	addss xmm6, [ebp-0x158]
	movss [ebp-0x5c], xmm6
	subss xmm7, xmm3
	movss [ebp-0x58], xmm7
	movss xmm5, dword [ebp-0x15c]
	addss xmm5, [ebp-0x154]
	subss xmm2, xmm5
	movss [ebp-0x54], xmm2
	lea eax, [ebp-0x74]
	mov [esp], eax
	call _Z14vectosignedyawPKf
	fstp dword [ebp-0x194]
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	lea eax, [edi+0x148]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0xac], eax
	mov eax, [edx+0x4]
	mov [ebp-0xa8], eax
	mov eax, [edx+0x8]
	mov [ebp-0xa4], eax
	lea edx, [esi+0x13c]
	mov [ebp-0x1b0], edx
	movss xmm0, dword [esi+0x13c]
	subss xmm0, [ebp-0xac]
	mulss xmm0, [ebp-0xb8]
	movss [ebp-0x180], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ebp-0xa8]
	mulss xmm0, [ebp-0xb4]
	addss xmm0, [ebp-0x180]
	movss [ebp-0x180], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [ebp-0xa4]
	mulss xmm0, [ebp-0xb0]
	addss xmm0, [ebp-0x180]
	movss [ebp-0x180], xmm0
	mov eax, [ebp-0x17c]
	subss xmm0, [eax+0x18]
	movss [ebp-0x190], xmm0
	mov edx, [ebp-0x170]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z19XAnimGetNumChildrenPK7XAnim_sj
	mov [ebp-0x1a4], eax
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_90
	mov ecx, eax
_Z19turret_think_clientP9gentity_s_330:
	sub ecx, 0x1
	mov [ebp-0x150], ecx
	mov dword [ebp-0x188], 0x0
	pxor xmm0, xmm0
	movss [ebp-0x18c], xmm0
	mov dword [ebp-0x1a0], 0x0
	mov dword [ebp-0x168], 0x0
	mov dword [ebp-0x1a8], 0x0
	mov eax, ecx
	jmp _Z19turret_think_clientP9gentity_s_100
_Z19turret_think_clientP9gentity_s_160:
	cvttss2si ebx, xmm1
_Z19turret_think_clientP9gentity_s_170:
	cvtsi2ss xmm0, ebx
	subss xmm1, xmm0
	movss [ebp-0x14c], xmm1
	mov [esp+0x8], ebx
	mov eax, [ebp-0x164]
	mov [esp+0x4], eax
	mov edx, [ebp-0x174]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov [ebp-0x16c], eax
	mov dword [esp+0x10], 0x0
	lea ecx, [ebp-0x2c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp-0x16c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm0, dword [ebp-0x14c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z19turret_think_clientP9gentity_s_110
	jnz _Z19turret_think_clientP9gentity_s_110
	movss xmm1, dword [ebp-0x24]
_Z19turret_think_clientP9gentity_s_240:
	ucomiss xmm1, [ebp-0x190]
	jae _Z19turret_think_clientP9gentity_s_120
	add dword [ebp-0x1a8], 0x1
	sub dword [ebp-0x150], 0x1
	mov ecx, [ebp-0x1a8]
	cmp [ebp-0x1a4], ecx
	jle _Z19turret_think_clientP9gentity_s_130
	movss [ebp-0x18c], xmm1
	movss xmm0, dword [ebp-0x14c]
	movss [ebp-0x188], xmm0
	mov [ebp-0x1a0], ebx
	mov eax, [ebp-0x150]
_Z19turret_think_clientP9gentity_s_100:
	mov [esp+0x8], eax
	mov edx, [ebp-0x170]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov [ebp-0x164], eax
	mov [esp+0x4], eax
	mov eax, [ebp-0x174]
	mov [esp], eax
	call _Z19XAnimGetNumChildrenPK7XAnim_sj
	mov ebx, eax
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_140
_Z19turret_think_clientP9gentity_s_250:
	cvtsi2ss xmm1, ebx
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [ebp-0x194]
	mov eax, [ebp-0x198]
	divss xmm0, dword [eax+0x7d4]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z19turret_think_clientP9gentity_s_150
	lea eax, [ebx-0x1]
	cvtsi2ss xmm0, eax
	ucomiss xmm1, xmm0
	jb _Z19turret_think_clientP9gentity_s_160
	cvttss2si ebx, xmm0
	movaps xmm1, xmm0
	jmp _Z19turret_think_clientP9gentity_s_170
_Z19turret_think_clientP9gentity_s_60:
	mov dword [ecx+0x8], 0x0
	mov eax, [esi+0x15c]
	test byte [eax+0xd], 0x8
	jnz _Z19turret_think_clientP9gentity_s_180
	test byte [eax+0x3088], 0x1
	jz _Z19turret_think_clientP9gentity_s_180
	cmp dword [edx+0x140], 0x1
	jnz _Z19turret_think_clientP9gentity_s_190
	mov eax, [ecx+0x40]
	test eax, eax
	jnz _Z19turret_think_clientP9gentity_s_200
_Z19turret_think_clientP9gentity_s_190:
	mov eax, [ebp-0x1b4]
	mov dword [eax+0x40], 0x1
	mov eax, [edx+0x36c]
	mov edx, [ebp-0x1b4]
	mov [edx+0x8], eax
	mov ebx, [edi+0x160]
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x36c]
	lea eax, [eax+eax*2]
	mov [ebx+0x28], eax
	mov eax, [esi+0x15c]
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_210
	mov eax, g_entities
	add eax, 0x9cd8c
	cmp esi, eax
	mov ebx, esi
	cmovz ebx, edi
	lea eax, [ebp-0xd0]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_220
_Z19turret_think_clientP9gentity_s_360:
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z21G_GetPlayerViewOriginPK13playerState_sPf
	lea eax, [ebp-0x128]
	mov [esp+0xc], eax
	lea eax, [ebp-0x134]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x140]
	mov [esp+0x4], ecx
	mov eax, [ebx+0x15c]
	mov [esp], eax
	call _Z25BG_GetPlayerViewDirectionPK13playerState_sPfS2_S2_
	mov eax, [ebp-0x140]
	mov [ebp-0x110], eax
	mov eax, [ebp-0x13c]
	mov [ebp-0x10c], eax
	mov eax, [ebp-0x138]
	mov [ebp-0x108], eax
	movss xmm3, dword [ebp-0x38]
	movss xmm1, dword [ebp-0xac]
	subss xmm1, xmm3
	movss xmm0, dword [ebp-0xa8]
	subss xmm0, [ebp-0x34]
	movss xmm2, dword [ebp-0xa4]
	subss xmm2, [ebp-0x30]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x140]
	addss xmm3, xmm0
	movss [ebp-0x11c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x13c]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x118], xmm0
	mulss xmm1, [ebp-0x138]
	addss xmm1, [ebp-0x30]
	movss [ebp-0x114], xmm1
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x104], eax
	mov eax, [eax+0x12c]
	test eax, eax
	jnz _Z19turret_think_clientP9gentity_s_230
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	lea eax, [ebp-0x140]
	mov [esp+0x8], eax
	mov eax, [edi+0x160]
	mov eax, [eax+0x38]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
_Z19turret_think_clientP9gentity_s_340:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x26
	mov [esp], edi
	call _Z10G_AddEventP9gentity_sij
	mov eax, [esi+0x15c]
	mov dword [eax+0x598], 0x2
_Z19turret_think_clientP9gentity_s_210:
	or dword [edi+0x8], 0x40
	jmp _Z19turret_think_clientP9gentity_s_200
_Z19turret_think_clientP9gentity_s_180:
	mov ecx, [ebp-0x1b4]
	mov dword [ecx+0x40], 0x0
	jmp _Z19turret_think_clientP9gentity_s_200
_Z19turret_think_clientP9gentity_s_110:
	lea eax, [ebx+0x1]
	mov [esp+0x8], eax
	mov eax, [ebp-0x164]
	mov [esp+0x4], eax
	mov edx, [ebp-0x174]
	mov [esp], edx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov [ebp-0x168], eax
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x168]
	mov [esp+0x4], eax
	mov edx, [ebp-0x174]
	mov [esp], edx
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x14c]
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x14c]
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x14c]
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	jmp _Z19turret_think_clientP9gentity_s_240
_Z19turret_think_clientP9gentity_s_140:
	mov edx, [ebp-0x164]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19turret_think_clientP9gentity_s_250
_Z19turret_think_clientP9gentity_s_150:
	pxor xmm1, xmm1
	xor ebx, ebx
	jmp _Z19turret_think_clientP9gentity_s_170
_Z19turret_think_clientP9gentity_s_130:
	movss [ebp-0x18c], xmm1
	movss xmm1, dword [ebp-0x14c]
	movss [ebp-0x188], xmm1
	mov [ebp-0x1a0], ebx
_Z19turret_think_clientP9gentity_s_120:
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x170]
	mov [esp+0x4], eax
	mov edx, [ebp-0x178]
	mov [esp], edx
	call _Z31XAnimClearTreeGoalWeightsStrictP11XAnimTree_sjf
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x14c]
	movss [esp+0x8], xmm0
	mov ecx, [ebp-0x16c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	movss xmm0, dword [ebp-0x14c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z19turret_think_clientP9gentity_s_260
	jnz _Z19turret_think_clientP9gentity_s_260
_Z19turret_think_clientP9gentity_s_320:
	mov eax, [ebp-0x1a8]
	test eax, eax
	jz _Z19turret_think_clientP9gentity_s_270
	mov ecx, [ebp-0x1a4]
	cmp [ebp-0x1a8], ecx
	jnz _Z19turret_think_clientP9gentity_s_280
_Z19turret_think_clientP9gentity_s_270:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov eax, [ebp-0x164]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
_Z19turret_think_clientP9gentity_s_310:
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x170]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z17XAnimCalcAbsDeltaP6DObj_sjPfS1_
	movss xmm0, dword [ebp-0x194]
	movss [esp+0x4], xmm0
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z19VectorAngleMultiplyPff
	movss xmm0, dword [ebp-0x2c]
	mov edx, [ebp-0x17c]
	addss xmm0, [edx+0x10]
	movss [ebp-0xdc], xmm0
	lea ebx, [ebp-0x100]
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [edx+0x14]
	movss [ebp-0xd8], xmm0
	movss xmm0, dword [ebp-0x180]
	movss [ebp-0xd4], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13RotationToYawPKf
	fstp dword [ebp-0x1ac]
	mov [esp+0x4], ebx
	movss xmm0, dword [ebp-0x194]
	addss xmm0, [ebp-0x1ac]
	movss [esp], xmm0
	call _Z9YawToAxisfPA3_f
	lea eax, [ebp-0x140]
	mov [esp+0x8], eax
	lea edx, [ebp-0xd0]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z16MatrixMultiply43PA3_KfS1_PA3_f
	mov edx, [esi+0x15c]
	lea ecx, [edx+0x1c]
	mov eax, [ebp-0x11c]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x118]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x114]
	mov [ecx+0x8], eax
	mov eax, [esi+0x15c]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [ebp-0x44], eax
	mov eax, [edx+0x4]
	mov [ebp-0x40], eax
	movss xmm1, dword [edx+0x8]
	movss [ebp-0x3c], xmm1
	mov eax, [esi+0x15c]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [ebp-0x50], eax
	mov eax, [edx+0x4]
	mov [ebp-0x4c], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x48], xmm0
	mov eax, [esi+0x15c]
	addss xmm1, [eax+0x118]
	movss [ebp-0x3c], xmm1
	subss xmm0, [_float_60_00000000]
	movss [ebp-0x48], xmm0
	mov dword [esp+0x18], 0x810011
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0xa0]
	ucomiss xmm2, [_float_1_00000000]
	jb _Z19turret_think_clientP9gentity_s_290
_Z19turret_think_clientP9gentity_s_350:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [esi+0x15c]
	mov [esp], eax
	call _Z27BG_PlayerStateToEntityStateP13playerState_sP13entityState_sih
	mov eax, [esi+0x15c]
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov ecx, [ebp-0x1b0]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea eax, [esi+0x148]
	mov [esp+0x4], eax
	lea eax, [ebp-0x140]
	mov [esp], eax
	call _Z12AxisToAnglesPA3_KfPf
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	jmp _Z19turret_think_clientP9gentity_s_40
_Z19turret_think_clientP9gentity_s_80:
	mov dword [esp+0x4], _cstring_warning_aborting
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	jmp _Z19turret_think_clientP9gentity_s_40
_Z19turret_think_clientP9gentity_s_280:
	movss xmm0, dword [ebp-0x190]
	subss xmm0, [ebp-0x18c]
	movss [ebp-0x184], xmm0
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x18c]
	movss xmm1, dword [ebp-0x184]
	divss xmm1, xmm0
	movss [ebp-0x184], xmm1
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss [esp+0x8], xmm1
	mov eax, [ebp-0x164]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	mov ecx, [ebp-0x1a8]
	sub [ebp-0x1a4], ecx
	mov eax, [ebp-0x1a4]
	mov [esp+0x8], eax
	mov edx, [ebp-0x170]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov ebx, eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x184]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	mov edx, [ebp-0x1a0]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x174]
	mov [esp], ecx
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x188]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	movss xmm0, dword [ebp-0x188]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z19turret_think_clientP9gentity_s_300
	jz _Z19turret_think_clientP9gentity_s_310
_Z19turret_think_clientP9gentity_s_300:
	mov eax, [ebp-0x1a0]
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x174]
	mov [esp], eax
	call _Z15XAnimGetChildAtPK7XAnim_sjj
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss xmm0, dword [ebp-0x188]
	movss [esp+0x8], xmm0
	mov [esp+0x4], eax
	mov eax, [ebp-0x160]
	mov [esp], eax
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	jmp _Z19turret_think_clientP9gentity_s_310
_Z19turret_think_clientP9gentity_s_260:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov dword [esp+0xc], 0x0
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x168]
	mov [esp+0x4], eax
	mov edx, [ebp-0x160]
	mov [esp], edx
	call _Z18XAnimSetGoalWeightP6DObj_sjfffjji
	jmp _Z19turret_think_clientP9gentity_s_320
_Z19turret_think_clientP9gentity_s_90:
	mov eax, [ebp-0x170]
	mov [esp+0x4], eax
	mov edx, [ebp-0x174]
	mov [esp], edx
	call _Z21XAnimGetAnimDebugNamePK7XAnim_sj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x1a4]
	jmp _Z19turret_think_clientP9gentity_s_330
_Z19turret_think_clientP9gentity_s_230:
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, vec3_origin
	mov [esp+0x10], eax
	lea edx, [ebp-0x140]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x0
	mov eax, [edi+0xc4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
	jmp _Z19turret_think_clientP9gentity_s_340
_Z19turret_think_clientP9gentity_s_290:
	jp _Z19turret_think_clientP9gentity_s_350
	movss xmm0, dword [ebp-0x3c]
	mov eax, [esi+0x15c]
	movss xmm1, dword [ebp-0x48]
	subss xmm1, xmm0
	mulss xmm2, xmm1
	addss xmm0, xmm2
	movss [eax+0x24], xmm0
	jmp _Z19turret_think_clientP9gentity_s_350
_Z19turret_think_clientP9gentity_s_220:
	movzx eax, word [edi+0x170]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x10], eax
	mov eax, [edi]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_tag_flash
	mov dword [esp+0x4], _cstring_couldnt_find_s_o
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19turret_think_clientP9gentity_s_360
	nop


;G_ClientStopUsingTurret(gentity_s*)
_Z23G_ClientStopUsingTurretP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [edi+0x160]
	lea eax, [edi+0x154]
	mov [ebp-0x1c], eax
	movzx eax, word [edi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax-0x274]
	add ebx, g_entities
	mov dword [esi+0x28], 0x0
	mov dword [edi+0x80], 0x0
	mov eax, [esi+0x24]
	cmp eax, 0xffffffff
	jz _Z23G_ClientStopUsingTurretP9gentity_s_10
	mov edx, [ebx+0x15c]
	cmp eax, 0x2
	jz _Z23G_ClientStopUsingTurretP9gentity_s_20
	sub eax, 0x1
	jz _Z23G_ClientStopUsingTurretP9gentity_s_30
	and dword [edx+0xc], 0xfffffffc
	mov dword [edx+0x114], 0x3c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x6
	mov [esp], ebx
	call _Z10G_AddEventP9gentity_sij
_Z23G_ClientStopUsingTurretP9gentity_s_40:
	mov dword [esi+0x24], 0xffffffff
_Z23G_ClientStopUsingTurretP9gentity_s_10:
	lea eax, [ebx+0x148]
	mov [esp+0x8], eax
	lea eax, [esi+0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14TeleportPlayerP9gentity_sPfS1_
	mov eax, [ebx+0x15c]
	and dword [eax+0xb0], 0xfffffcff
	mov eax, [ebx+0x15c]
	mov dword [eax+0x598], 0x0
	mov eax, [ebx+0x15c]
	mov dword [eax+0x59c], 0x3ff
	mov byte [ebx+0x16c], 0x0
	mov dword [ebx+0x74], 0x0
	mov byte [edi+0x16c], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	and dword [esi+0x4], 0xfffff7ff
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23G_ClientStopUsingTurretP9gentity_s_30:
	mov eax, [edx+0xc]
	and eax, 0xfffffffe
	or eax, 0x2
	mov [edx+0xc], eax
	mov dword [edx+0x114], 0x28
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call _Z10G_AddEventP9gentity_sij
	jmp _Z23G_ClientStopUsingTurretP9gentity_s_40
_Z23G_ClientStopUsingTurretP9gentity_s_20:
	mov eax, [edx+0xc]
	and eax, 0xfffffffd
	or eax, 0x1
	mov [edx+0xc], eax
	mov dword [edx+0x114], 0xb
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x8
	mov [esp], ebx
	call _Z10G_AddEventP9gentity_sij
	jmp _Z23G_ClientStopUsingTurretP9gentity_s_40


;SP_light(gentity_s*)
_Z8SP_lightP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_0
	mov dword [esp], _cstring_pl
	call _Z10G_SpawnIntPKcS0_Pi
	test eax, eax
	jnz _Z8SP_lightP9gentity_s_10
	mov [esp], edi
	call _Z12G_FreeEntityP9gentity_s
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SP_lightP9gentity_s_10:
	mov eax, [ebp-0x1c]
	mov edx, eax
	shl edx, 0x6
	lea esi, [edx+eax*4]
	mov edx, comWorld
	add esi, [edx+0xc]
	movzx eax, ax
	mov [edi+0x88], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [esi+0x4]
	mov [esp], eax
	call _Z14ColorNormalizePKfPf
	fstp dword [edi+0x58]
	lea ebx, [edi+0x54]
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	cmp eax, 0xfe
	jle _Z8SP_lightP9gentity_s_20
	mov edx, 0xffffffff
_Z8SP_lightP9gentity_s_60:
	mov [ebx], dl
	lea eax, [ebx+0x1]
	mov [ebp-0x50], eax
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x58]
	cvttss2si eax, [ebp-0x58]
	cmp eax, 0xfe
	jle _Z8SP_lightP9gentity_s_30
	mov edx, 0xffffffff
_Z8SP_lightP9gentity_s_90:
	mov eax, [ebp-0x50]
	mov [eax], dl
	lea eax, [ebx+0x2]
	mov [ebp-0x4c], eax
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x5c]
	cvttss2si eax, [ebp-0x5c]
	cmp eax, 0xfe
	jle _Z8SP_lightP9gentity_s_40
	mov edx, 0xffffffff
_Z8SP_lightP9gentity_s_80:
	mov eax, [ebp-0x4c]
	mov [eax], dl
	add ebx, 0x3
	movss xmm0, dword [_float_255_00000000]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x60]
	cvttss2si eax, [ebp-0x60]
	cmp eax, 0xfe
	jle _Z8SP_lightP9gentity_s_50
	mov edx, 0xffffffff
_Z8SP_lightP9gentity_s_70:
	mov [ebx], dl
	movzx eax, byte [esi+0x2]
	mov [edi+0x57], al
	mov eax, [esi+0x28]
	mov [edi+0x5c], eax
	mov eax, [esi+0x2c]
	mov [edi+0x60], eax
	mov eax, [esi+0x30]
	mov [edi+0x64], eax
	lea eax, [esi+0x10]
	movss xmm0, dword [esi+0x10]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x20], xmm0
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	lea eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	movss xmm0, dword [esi+0x28]
	xorps xmm0, [_data16_80000000]
	lea eax, [edi+0x108]
	movss [edi+0x108], xmm0
	movss [eax+0x4], xmm0
	movss [eax+0x8], xmm0
	mov eax, [esi+0x28]
	lea edx, [edi+0x114]
	mov [edi+0x114], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov dword [edi+0x4], 0xa
	mov byte [edi+0x16e], 0x14
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8SP_lightP9gentity_s_20:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z8SP_lightP9gentity_s_60
_Z8SP_lightP9gentity_s_50:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z8SP_lightP9gentity_s_70
_Z8SP_lightP9gentity_s_40:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z8SP_lightP9gentity_s_80
_Z8SP_lightP9gentity_s_30:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z8SP_lightP9gentity_s_90


;SP_turret(gentity_s*)
_Z9SP_turretP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_weaponinfo
	call _Z18G_LevelSpawnStringPKcS0_PS0_
	test eax, eax
	jnz _Z9SP_turretP9gentity_s_10
	mov dword [esp+0x4], _cstring_no_weaponinfo_sp
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z9SP_turretP9gentity_s_10:
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13G_SpawnTurretP9gentity_sPKc
	leave
	ret
	nop


;Initialized global or static variables of g_misc_mp:
SECTION .data


;Initialized constant data of g_misc_mp:
SECTION .rdata


;Zero initialized global or static variables of g_misc_mp:
SECTION .bss
turretInfo: resb 0x900


;All cstrings:
SECTION .rdata
_cstring_g_spawnturret_we:		db "G_SpawnTurret: weapon ",27h,"%s",27h," isn",27h,"t a turret. This usually indicates that the weapon failed to load.",0
_cstring_g_spawnturret_ma:		db 015h,"G_SpawnTurret: max number of turrets (%d) exceeded",0
_cstring_null:		db 0
_cstring_rightarc:		db "rightarc",0
_cstring_bad_weaponinfo_s:		db 015h,"bad weaponinfo ",27h,"%s",27h," specified for turret",0
_cstring_turret_s_not_pre:		db "turret ",27h,"%s",27h," not precached",0
_cstring_1:		db "1",0
_cstring_playerspread:		db "playerSpread",0
_cstring_0:		db "0",0
_cstring_damage:		db "damage",0
_cstring_bottomarc:		db "bottomarc",0
_cstring_toparc:		db "toparc",0
_cstring_leftarc:		db "leftarc",0
_cstring_player_anim_s_ha:		db 015h,"Player anim ",27h,"%s",27h," has no children",0
_cstring_warning_aborting:		db "WARNING: aborting player positioning on turret since ",27h,"tag_weapon",27h," does not exist",0ah,0
_cstring_tag_flash:		db "tag_flash",0
_cstring_couldnt_find_s_o:		db 015h,"Couldn",27h,"t find %s on turret (entity %d, classname ",27h,"%s",27h,").",0ah,0
_cstring_pl:		db "pl#",0
_cstring_weaponinfo:		db "weaponinfo",0
_cstring_no_weaponinfo_sp:		db 015h,"no weaponinfo specified for turret",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float__1_00000000:		dd 0xbf800000	; -1
_double_57_29577951:		dq 0x404ca5dc1a63c1f8	; 57.2958
_float__90_00000000:		dd 0xc2b40000	; -90
_float__3_00000000:		dd 0xc0400000	; -3
_float_60_00000000:		dd 0x42700000	; 60
_float_255_00000000:		dd 0x437f0000	; 255

