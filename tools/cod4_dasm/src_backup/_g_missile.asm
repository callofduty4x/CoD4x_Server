;Imports of g_missile:
	extern level
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z6G_randv
	extern _Z17AngleNormalize360f
	extern _Z19PitchForYawOnNormalfPKf
	extern floorf
	extern _Z8G_randomv
	extern _Z11vectoanglesPKfPf
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z10AxisToQuatPA3_KfPf
	extern _Z9QuatSlerpPKfS0_fPf
	extern _Z13Vec4NormalizePf
	extern _Z17UnitQuatToForwardPKfPf
	extern colorBlue
	extern _Z23G_DebugLineWithDurationPKfS0_S0_ii
	extern colorLtGrey
	extern colorGreen
	extern _Z10Com_PrintfiPKcz
	extern _Z15BG_GetWeaponDefj
	extern _Z16SV_PointContentsPKfii
	extern _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern g_entities
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z25NearestPitchAndYawOnPlanePKfS0_Pf
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern atan2
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z20G_WithinDamageRadiusPKffP9gentity_s
	extern _Z13Scr_AddStringPKc
	extern _Z13Scr_AddEntityP9gentity_s
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z16Scr_AddUndefinedv
	extern _Z10G_AddEventP9gentity_sij
	extern _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii
	extern _Z22G_FreeEntityAfterEventP9gentity_s
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z14LogAccuracyHitP9gentity_sS0_
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern entityHandlers
	extern _Z9DirToBytePKf
	extern vec3_origin
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z16G_FlashbangBlastPKfffP9gentity_s6team_t
	extern cosf
	extern _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii
	extern _Z10Scr_AddInti
	extern _Z13Scr_AddVectorPKf
	extern g_minGrenadeDamageSpeed
	extern _Z15Vec3NormalizeToPKfPf
	extern colorRed
	extern colorOrange
	extern _Z15Vec2NormalizeToPKfPf
	extern _Z12Vec2DistancePKfS0_
	extern atanf
	extern _Z13Vec2NormalizePf
	extern _Z7G_Spawnv
	extern _Z13Scr_SetStringPtj
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern _Z17G_BroadcastEntityP9gentity_s
	extern sinf
	extern bulletPriorityMap
	extern _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	extern _Z12G_FreeEntityP9gentity_s
	extern _Z10G_RunThinkP9gentity_s
	extern _Z15G_DebugCircleExPKffS0_S0_ii
	extern _Z8G_flrandff
	extern _Z12G_TempEntityPKfi
	extern _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii
	extern atan
	extern _Z13XModelGetNamePK6XModel
	extern _Z10G_SetModelP9gentity_sPKc
	extern _Z12G_DObjUpdateP9gentity_s
	extern _Z20BG_FindItemForWeaponii
	extern bg_itemlist
	extern _Z7G_irandii
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern memset
	extern _Z10Scr_GetIntj
	extern _Z14Scr_ParamErrorjPKc
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z13Scr_GetEntityj
	extern _Z12Scr_GetFloatj
	extern _Z2vaPKcz
	extern _Z9Scr_ErrorPKc
	extern _Z13Scr_GetVectorjPf

;Exports of g_missile:
	global attrGlob
	global _Z17MissileLandAnglesP9gentity_sP7trace_tPfi
	global _ZZ16G_ExplodeMissileP9gentity_sE19MY_STRAIGHTUPNORMAL
	global _Z16JavelinRotateDirP9gentity_sPKfS2_Pf
	global _Z13BounceMissileP9gentity_sP7trace_t
	global _Z19CheckCrumpleMissileP9gentity_sP7trace_t
	global _ZZ13MissileImpactP9gentity_sP7trace_tPfS3_E19MY_STRAIGHTUPNORMAL
	global _Z13MissileImpactP9gentity_sP7trace_tPfS3_
	global _Z17MissileTrajectoryP9gentity_sPf
	global _ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E21MYJAVELINOFFSET_RIGHT
	global _ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E15MYJAVELINOFFSET
	global _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_
	global _Z12G_RunMissileP9gentity_s
	global _Z13G_FireGrenadeP9gentity_sPfS1_ihii
	global _Z16G_ExplodeMissileP9gentity_s
	global _Z18G_TimedObjectThinkP9gentity_s
	global _Z19G_InitGrenadeEntityP9gentity_sS0_
	global _Z21G_InitGrenadeMovementP9gentity_sPKfS2_i
	global _Z22G_RegisterMissileDvarsv
	global _Z22Missile_InitAttractorsv
	global _Z25Missile_FreeAttractorRefsP9gentity_s
	global _Z26Scr_MissileDeleteAttractorv
	global _Z27G_RegisterMissileDebugDvarsv
	global _Z28Scr_MissileCreateRepulsorEntv
	global _Z29Scr_MissileCreateAttractorEntv
	global _Z31Scr_MissileCreateRepulsorOriginv
	global _Z32Scr_MissileCreateAttractorOriginv
	global missileDebugAttractors
	global missileDebugDraw
	global missileDebugText
	global missileHellfireMaxSlope
	global missileHellfireUpAccel
	global missileJavAccelClimb
	global missileJavAccelDescend
	global missileJavClimbAngleDirect
	global missileJavClimbAngleTop
	global missileJavClimbCeilingDirect
	global missileJavClimbCeilingTop
	global missileJavClimbHeightDirect
	global missileJavClimbHeightTop
	global missileJavClimbToOwner
	global missileJavSpeedLimitClimb
	global missileJavSpeedLimitDescend
	global missileJavTurnDecel
	global missileJavTurnRateDirect
	global missileJavTurnRateTop
	global missileWaterMaxDepth


SECTION .text


;MissileLandAngles(gentity_s*, trace_t*, float*, int)
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, eax
	mov ebx, edx
	mov edi, ecx
	mov eax, level
	mov edx, [eax+0x1f0]
	mov eax, [eax+0x1ec]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebx]
	cvttss2si eax, xmm0
	add edx, eax
	mov [ebp-0x2c], edx
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	lea eax, [esi+0x30]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_10000000]
	ja _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_10
	mov edx, [ebp+0x8]
	test edx, edx
	jz _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_20
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_90:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_20:
	movss xmm0, dword [esi+0x48]
	movss [ebp-0x30], xmm0
	call _Z6G_randv
	and eax, 0x7f
	sub eax, 0x3f
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x30]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [esi+0x48]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_10:
	lea eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z19PitchForYawOnNormalfPKf
	fstp dword [ebp-0x28]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [edi]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x58], xmm1
	call floorf
	fstp dword [ebp-0x34]
	movss xmm1, dword [ebp-0x58]
	subss xmm1, [ebp-0x34]
	movss xmm0, dword [_float_360_00000000]
	mulss xmm0, xmm1
	movss [ebp-0x24], xmm0
	andps xmm0, [_data16_7fffffff]
	movss [ebp-0x20], xmm0
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jnz _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_30
	lea edx, [esi+0x3c]
	mov eax, [edi]
	mov [esi+0x3c], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [ebp-0x2c]
	mov [esi+0x34], eax
	ucomiss xmm0, [_float_80_00000000]
	jae _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_40
	jp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_40
	movss xmm1, dword [esi+0x48]
	movss [ebp-0x58], xmm1
	call _Z8G_randomv
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float_0_30000001]
	addss xmm0, [_float_0_85000002]
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [esi+0x48], xmm1
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_30:
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, [edi]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	call floorf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x38]
	mulss xmm0, [_float_360_00000000]
	movss [edi], xmm0
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jnz _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_50
	movss xmm1, dword [ebp-0x20]
	ucomiss xmm1, [_float_45_00000000]
	jae _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_60
	jp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_60
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_50:
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_90_00000000]
	ja _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_70
	movss xmm1, dword [ebp-0x28]
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fstp dword [edi]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_70:
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_60:
	ucomiss xmm1, [_float_80_00000000]
	jae _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_80
	jp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_80
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [_float_0_25000000]
	addss xmm0, xmm1
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi]
	jmp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_90
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_40:
	movss xmm0, dword [esi+0x48]
	movss [ebp-0x1c], xmm0
	call _Z8G_randomv
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float_0_30000001]
	addss xmm0, [_float_0_85000002]
	mulss xmm0, [ebp-0x1c]
	movss [esi+0x48], xmm0
	jmp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_30
_Z17MissileLandAnglesP9gentity_sP7trace_tPfi_80:
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi]
	jmp _Z17MissileLandAnglesP9gentity_sP7trace_tPfi_90
	nop


;JavelinRotateDir(gentity_s*, float const*, float const*, float*)
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1ec]
	test eax, eax
	jnz _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_10
	mov eax, [missileJavTurnRateTop]
	movss xmm2, dword [eax+0xc]
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_40:
	movss xmm1, dword [edi]
	movaps xmm0, xmm1
	mov edx, [ebp+0xc]
	mulss xmm0, [edx]
	movss [ebp-0x80], xmm0
	movss xmm0, dword [edi+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x80], xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x80], xmm0
	movss xmm0, dword [_float_1_00000000]
	movss xmm3, dword [ebp-0x80]
	addss xmm3, xmm0
	mulss xmm3, [_float__0_50000000]
	addss xmm0, xmm3
	mulss xmm0, [_float_180_00000000]
	movss [ebp-0x80], xmm0
	ucomiss xmm0, [_float_0_10000000]
	ja _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_20
	jp _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_20
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	mov eax, [edi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jnz _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_30
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_80:
	pxor xmm0, xmm0
	movss [ebp-0x80], xmm0
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_70:
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_10:
	mov eax, [missileJavTurnRateDirect]
	movss xmm2, dword [eax+0xc]
	jmp _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_40
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_20:
	divss xmm0, dword [_float_0_05000000]
	ucomiss xmm2, xmm0
	ja _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_50
	movaps xmm1, xmm2
	divss xmm1, xmm0
	movss [ebp-0x7c], xmm1
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jnz _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_60
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_90:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11vectoanglesPKfPf
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea edx, [ebp-0x34]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11vectoanglesPKfPf
	mov [esp+0x4], ebx
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0x44]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10AxisToQuatPA3_KfPf
	lea ebx, [ebp-0x54]
	mov [esp+0xc], ebx
	movss xmm0, dword [ebp-0x7c]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z9QuatSlerpPKfS0_fPf
	mov [esp], ebx
	call _Z13Vec4NormalizePf
	fstp st0
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z17UnitQuatToForwardPKfPf
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_70
	mov ebx, [ebp+0x8]
	add ebx, 0x18
	movss xmm1, dword [_float_100_00000000]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	mov edx, [ebp+0x8]
	addss xmm0, [edx+0x18]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x1c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x20]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorBlue
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x98], xmm1
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	movss xmm1, dword [ebp-0x98]
	movss xmm0, dword [edi]
	mulss xmm0, xmm1
	mov edx, [ebp+0x8]
	addss xmm0, [edx+0x18]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x1c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x20]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorLtGrey
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	movss xmm1, dword [ebp-0x98]
	mov edx, [ebp+0x14]
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	mov eax, [ebp+0x8]
	addss xmm0, [eax+0x18]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	mulss xmm0, xmm1
	addss xmm0, [eax+0x1c]
	movss [ebp-0x20], xmm0
	mulss xmm1, [edx+0x8]
	addss xmm1, [eax+0x20]
	movss [ebp-0x1c], xmm1
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorGreen
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_50:
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	mov eax, [edi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_80
	cvtss2sd xmm0, xmm0
	movsd [esp+0x18], xmm0
	cvtss2sd xmm2, xmm2
	movsd [esp+0x10], xmm2
	cvtss2sd xmm1, [ebp-0x80]
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_dot2f_0f__0f_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	pxor xmm3, xmm3
	movss [ebp-0x80], xmm3
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_30:
	cvtss2sd xmm1, [ebp-0x80]
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_dot2f_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	pxor xmm3, xmm3
	movss [ebp-0x80], xmm3
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16JavelinRotateDirP9gentity_sPKfS2_Pf_60:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x20], xmm0
	cvtss2sd xmm2, xmm2
	movsd [esp+0x18], xmm2
	cvtss2sd xmm3, xmm1
	movsd [esp+0x10], xmm3
	cvtss2sd xmm0, [ebp-0x80]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_dot2f_frac2f_0f0
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z16JavelinRotateDirP9gentity_sPKfS2_Pf_90


;BounceMissile(gentity_s*, trace_t*)
_Z13BounceMissileP9gentity_sP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edi, eax
	mov esi, edx
	mov eax, [eax+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x7c], eax
	lea eax, [edi+0x13c]
	mov [ebp-0x88], eax
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _Z16SV_PointContentsPKfii
	mov [ebp-0x74], eax
	mov edx, [esi+0x10]
	and edx, 0x1f00000
	shr edx, 0x14
	mov [ebp-0x70], edx
	mov ecx, level
	mov edx, [ecx+0x1f0]
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ecx+0x1ec]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [esi]
	cvttss2si eax, xmm0
	add edx, eax
	mov [esp+0x4], edx
	lea eax, [edi+0xc]
	mov [esp], eax
	call _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
	lea ecx, [esi+0x4]
	mov [ebp-0x84], ecx
	movss xmm2, dword [ebp-0x24]
	lea eax, [esi+0x8]
	mov [ebp-0x68], eax
	lea edx, [esi+0xc]
	mov [ebp-0x64], edx
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x4]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [esi+0x8]
	addss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [esi+0xc]
	addss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	lea eax, [edi+0x24]
	mov [ebp-0x60], eax
	movaps xmm1, xmm0
	mulss xmm1, [_float__2_00000000]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss [edi+0x24], xmm2
	lea edx, [edi+0x28]
	mov [ebp-0x5c], edx
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x8]
	addss xmm0, [ebp-0x20]
	movss [edi+0x28], xmm0
	lea ecx, [edi+0x2c]
	mov [ebp-0x58], ecx
	mulss xmm1, [esi+0xc]
	addss xmm1, [ebp-0x1c]
	movss [edi+0x2c], xmm1
	mov eax, [ebp-0x7c]
	mov eax, [eax+0x5a4]
	test eax, eax
	jnz _Z13BounceMissileP9gentity_sP7trace_t_10
_Z13BounceMissileP9gentity_sP7trace_t_200:
	mov byte [ebp-0x7d], 0x1
	mov byte [ebp-0x69], 0x1
_Z13BounceMissileP9gentity_sP7trace_t_210:
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	mov ebx, g_entities
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	cmp dword [edx+ebx+0x4], 0x4
	jz _Z13BounceMissileP9gentity_sP7trace_t_20
	cmp byte [ebp-0x7d], 0x0
	jnz _Z13BounceMissileP9gentity_sP7trace_t_30
_Z13BounceMissileP9gentity_sP7trace_t_80:
	pxor xmm3, xmm3
	test byte [edi+0xb], 0x1
	jnz _Z13BounceMissileP9gentity_sP7trace_t_40
_Z13BounceMissileP9gentity_sP7trace_t_90:
	movss xmm0, dword [_float_0_10000000]
	mov eax, [ebp-0x84]
	movss xmm2, dword [eax]
	mulss xmm2, xmm0
	mov edx, [ebp-0x68]
	movss xmm1, dword [edx]
	mulss xmm1, xmm0
	mov ecx, [ebp-0x64]
	mulss xmm0, [ecx]
	minss xmm3, xmm0
	mov eax, [ebp-0x88]
	addss xmm2, [eax]
	movss [eax], xmm2
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	addss xmm3, [eax+0x8]
	movss [eax+0x8], xmm3
	lea edx, [edi+0x18]
	movss [edi+0x18], xmm2
	mov ecx, [ebp-0x88]
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [edi+0x10], eax
	lea ecx, [ebp-0x30]
	mov dword [esp], 0x0
	mov edx, esi
	mov eax, edi
	call _Z17MissileLandAnglesP9gentity_sP7trace_tPfi
	lea edx, [edi+0x3c]
	mov eax, [ebp-0x30]
	mov [edi+0x3c], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov eax, [ebx+0x1ec]
	mov [edi+0x34], eax
	mov eax, [ebp-0x74]
	test eax, eax
	jz _Z13BounceMissileP9gentity_sP7trace_t_50
_Z13BounceMissileP9gentity_sP7trace_t_60:
	xor eax, eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13BounceMissileP9gentity_sP7trace_t_50:
	mov eax, [ebp-0x60]
	movss xmm2, dword [eax]
	subss xmm2, [ebp-0x24]
	movss [ebp-0x24], xmm2
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x20]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	ucomiss xmm2, [_float_100_00000000]
	jbe _Z13BounceMissileP9gentity_sP7trace_t_60
_Z13BounceMissileP9gentity_sP7trace_t_160:
	mov eax, 0x1
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13BounceMissileP9gentity_sP7trace_t_30:
	mov edx, [ebp-0x7c]
	cmp dword [edx+0x5a4], 0x1
	jz _Z13BounceMissileP9gentity_sP7trace_t_70
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [_float_0_69999999]
	jbe _Z13BounceMissileP9gentity_sP7trace_t_80
_Z13BounceMissileP9gentity_sP7trace_t_70:
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov [edi+0x7c], eax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	or dword [edx+ebx+0x180], 0x100000
	pxor xmm3, xmm3
	test byte [edi+0xb], 0x1
	jz _Z13BounceMissileP9gentity_sP7trace_t_90
_Z13BounceMissileP9gentity_sP7trace_t_40:
	movss xmm0, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe _Z13BounceMissileP9gentity_sP7trace_t_100
	ucomiss xmm3, [ebp-0x78]
	jae _Z13BounceMissileP9gentity_sP7trace_t_110
_Z13BounceMissileP9gentity_sP7trace_t_100:
	cmp byte [ebp-0x69], 0x0
	jz _Z13BounceMissileP9gentity_sP7trace_t_90
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x5a4]
	cmp eax, 0x1
	jz _Z13BounceMissileP9gentity_sP7trace_t_120
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [_float_0_69999999]
	jbe _Z13BounceMissileP9gentity_sP7trace_t_90
	sub eax, 0x2
	cmp eax, 0x1
	jbe _Z13BounceMissileP9gentity_sP7trace_t_120
	mov ecx, [ebp-0x60]
	movss xmm0, dword [ecx]
	movss xmm1, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_20_00000000]
	jae _Z13BounceMissileP9gentity_sP7trace_t_90
	jp _Z13BounceMissileP9gentity_sP7trace_t_90
_Z13BounceMissileP9gentity_sP7trace_t_120:
	mov eax, [ebp-0x88]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z11G_SetOriginP9gentity_sPKf
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x5a4]
	cmp eax, 0x3
	jz _Z13BounceMissileP9gentity_sP7trace_t_130
	test eax, eax
	jz _Z13BounceMissileP9gentity_sP7trace_t_140
	mov eax, level
	mov edx, [eax+0x1f0]
	lea ebx, [ebp-0x30]
	mov [esp+0x8], ebx
	mov eax, [eax+0x1ec]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [esi]
	cvttss2si eax, xmm0
	add edx, eax
	mov [esp+0x4], edx
	lea eax, [edi+0x30]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov [esp+0x8], ebx
	mov eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z25NearestPitchAndYawOnPlanePKfS0_Pf
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z12AngleVectorsPKfPfS1_S1_
	mov edx, [ebp-0x68]
	movss xmm2, dword [edx]
	mov ecx, [ebp-0x64]
	movss xmm3, dword [ecx]
	movss xmm1, dword [ebp-0x48]
	mov eax, [ebp-0x84]
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x44]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [eax]
	mulss xmm2, [ebp-0x38]
	addss xmm0, xmm2
	mulss xmm3, [ebp-0x34]
	addss xmm0, xmm3
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call atan2
_Z13BounceMissileP9gentity_sP7trace_t_260:
	fstp qword [ebp-0xa0]
	movsd xmm0, qword [ebp-0xa0]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, qword [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x28], xmm0
_Z13BounceMissileP9gentity_sP7trace_t_220:
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10G_SetAngleP9gentity_sPKf
	lea edx, [edi+0x1c0]
	mov ecx, [ebp-0x84]
	mov eax, [ecx]
	mov [edi+0x1c0], eax
	mov ecx, [ebp-0x68]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x64]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov eax, [ebp-0x7c]
	mov ebx, [eax+0x5ac]
	test ebx, ebx
	jnz _Z13BounceMissileP9gentity_sP7trace_t_150
	mov dword [edi+0x19c], 0x0
_Z13BounceMissileP9gentity_sP7trace_t_150:
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x50], eax
	cvtsi2ss xmm0, dword [eax+0x554]
	mulss xmm0, xmm0
	movss [ebp-0x4c], xmm0
	mov edx, level
	mov ecx, [edx+0x1e4]
	test ecx, ecx
	jle _Z13BounceMissileP9gentity_sP7trace_t_160
	mov ebx, g_entities
	mov esi, ebx
	mov dword [ebp-0x54], 0x0
	lea eax, [ebx+0x100]
	mov [ebp-0x8c], eax
	mov [ebp-0x90], ebx
	mov ecx, eax
	jmp _Z13BounceMissileP9gentity_sP7trace_t_170
_Z13BounceMissileP9gentity_sP7trace_t_180:
	add dword [ebp-0x54], 0x1
	add esi, 0x274
	mov ecx, [ebp-0x54]
	cmp [edx+0x1e4], ecx
	jle _Z13BounceMissileP9gentity_sP7trace_t_160
	mov ebx, [ebp-0x90]
	mov ecx, [ebp-0x8c]
_Z13BounceMissileP9gentity_sP7trace_t_170:
	mov eax, esi
	sub eax, ebx
	cmp byte [eax+ecx], 0x0
	jz _Z13BounceMissileP9gentity_sP7trace_t_180
	mov [esp+0x8], esi
	movss xmm0, dword [ebp-0x4c]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x88]
	mov [esp], eax
	call _Z20G_WithinDamageRadiusPKffP9gentity_s
	test eax, eax
	jnz _Z13BounceMissileP9gentity_sP7trace_t_190
_Z13BounceMissileP9gentity_sP7trace_t_240:
	mov edx, level
	jmp _Z13BounceMissileP9gentity_sP7trace_t_180
_Z13BounceMissileP9gentity_sP7trace_t_10:
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	cmp ax, 0x3f
	ja _Z13BounceMissileP9gentity_sP7trace_t_200
	mov byte [ebp-0x7d], 0x0
	mov byte [ebp-0x69], 0x0
	jmp _Z13BounceMissileP9gentity_sP7trace_t_210
_Z13BounceMissileP9gentity_sP7trace_t_20:
	mov byte [ebp-0x69], 0x0
	jmp _Z13BounceMissileP9gentity_sP7trace_t_80
_Z13BounceMissileP9gentity_sP7trace_t_110:
	mov ecx, [ebp-0x70]
	mov eax, [ebp-0x7c]
	movss xmm2, dword [eax+ecx*4+0x5c0]
	xorps xmm0, [_data16_80000000]
	movss xmm1, dword [ebp-0x78]
	divss xmm1, xmm0
	movss xmm0, dword [eax+ecx*4+0x634]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm1, xmm2
	movaps xmm0, xmm1
	mov edx, [ebp-0x60]
	mulss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	mov ecx, [ebp-0x5c]
	movss [ecx], xmm0
	mulss xmm1, [edx+0x8]
	mov eax, [ebp-0x58]
	movss [eax], xmm1
	jmp _Z13BounceMissileP9gentity_sP7trace_t_100
_Z13BounceMissileP9gentity_sP7trace_t_140:
	lea ebx, [ebp-0x30]
	mov dword [esp], 0x1
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call _Z17MissileLandAnglesP9gentity_sP7trace_tPfi
	jmp _Z13BounceMissileP9gentity_sP7trace_t_220
_Z13BounceMissileP9gentity_sP7trace_t_190:
	mov edx, [ebp-0x50]
	mov eax, [edx]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	cmp word [edi+0x198], 0x0
	jz _Z13BounceMissileP9gentity_sP7trace_t_230
	movzx eax, word [edi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, ebx
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
_Z13BounceMissileP9gentity_sP7trace_t_250:
	mov [esp], edi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x3
	mov eax, scr_const
	movzx eax, word [eax+0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z13BounceMissileP9gentity_sP7trace_t_240
_Z13BounceMissileP9gentity_sP7trace_t_230:
	call _Z16Scr_AddUndefinedv
	jmp _Z13BounceMissileP9gentity_sP7trace_t_250
_Z13BounceMissileP9gentity_sP7trace_t_130:
	mov eax, level
	mov edx, [eax+0x1f0]
	lea ebx, [ebp-0x30]
	mov [esp+0x8], ebx
	mov eax, [eax+0x1ec]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [esi]
	cvttss2si eax, xmm0
	add edx, eax
	mov [esp+0x4], edx
	lea eax, [edi+0x30]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	mov ecx, [ebp-0x84]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z19PitchForYawOnNormalfPKf
	fstp dword [ebp-0x30]
	mov dword [ebp-0x28], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z12AngleVectorsPKfPfS1_S1_
	mov eax, [ebp-0x68]
	movss xmm2, dword [eax]
	mov edx, [ebp-0x64]
	movss xmm3, dword [edx]
	movss xmm1, dword [ebp-0x3c]
	mov ecx, [ebp-0x84]
	mulss xmm1, [ecx]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [ecx]
	mulss xmm2, [ebp-0x44]
	addss xmm0, xmm2
	mulss xmm3, [ebp-0x40]
	addss xmm0, xmm3
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call atan2
	jmp _Z13BounceMissileP9gentity_sP7trace_t_260
	nop


;CheckCrumpleMissile(gentity_s*, trace_t*)
_Z19CheckCrumpleMissileP9gentity_sP7trace_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, eax
	mov esi, edx
	mov eax, [eax+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x12c], 0x2
	jz _Z19CheckCrumpleMissileP9gentity_sP7trace_t_10
_Z19CheckCrumpleMissileP9gentity_sP7trace_t_40:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CheckCrumpleMissileP9gentity_sP7trace_t_10:
	cmp dword [esi+0x10], 0x700000
	jz _Z19CheckCrumpleMissileP9gentity_sP7trace_t_20
	mov ecx, level
	mov edx, [ecx+0x1f0]
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	mov eax, [ecx+0x1ec]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [esi]
	cvttss2si eax, xmm0
	add edx, eax
	mov [esp+0x4], edx
	lea eax, [ebx+0xc]
	mov [esp], eax
	call _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
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
	ucomiss xmm1, [_float_500_00000000]
	jp _Z19CheckCrumpleMissileP9gentity_sP7trace_t_30
	jb _Z19CheckCrumpleMissileP9gentity_sP7trace_t_40
_Z19CheckCrumpleMissileP9gentity_sP7trace_t_30:
	movss xmm0, dword [_float__1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm0
	movss [ebp-0x14], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x10]
	movss [ebp-0x10], xmm2
	mulss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
	lea eax, [esi+0x4]
	mulss xmm1, [esi+0x4]
	mulss xmm2, [eax+0x4]
	addss xmm1, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	xor eax, eax
	ucomiss xmm1, [_float_0_70700002]
	seta al
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CheckCrumpleMissileP9gentity_sP7trace_t_20:
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;MissileImpact(gentity_s*, trace_t*, float*, float*)
_Z13MissileImpactP9gentity_sP7trace_tPfS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	mov eax, g_entities
	add edx, eax
	mov [ebp-0xb0], edx
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov edx, [eax+0x5a0]
	mov [ebp-0xa8], edx
	mov eax, [eax+0x588]
	mov [ebp-0xa0], eax
	mov edx, [edi+0x34c]
	mov [ebp-0x9c], edx
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esi+0x84], eax
	mov eax, [edi+0x574]
	test eax, eax
	jle _Z13MissileImpactP9gentity_sP7trace_tPfS3__10
	cvtsi2ss xmm1, eax
	movss xmm0, dword [esi+0x1bc]
	ucomiss xmm0, xmm1
	jb _Z13MissileImpactP9gentity_sP7trace_tPfS3__20
_Z13MissileImpactP9gentity_sP7trace_tPfS3__10:
	cmp dword [esi+0x4], 0x4
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__30
_Z13MissileImpactP9gentity_sP7trace_tPfS3__320:
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__40
_Z13MissileImpactP9gentity_sP7trace_tPfS3__330:
	mov dword [ebp-0xa4], 0xf
_Z13MissileImpactP9gentity_sP7trace_tPfS3__380:
	mov eax, [ebp+0xc]
	movzx eax, word [eax+0x26]
	mov [ebp-0x98], eax
_Z13MissileImpactP9gentity_sP7trace_tPfS3__390:
	mov edx, [ebp-0xb0]
	cmp byte [edx+0x16b], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__50
_Z13MissileImpactP9gentity_sP7trace_tPfS3__120:
	mov eax, [ebp-0x9c]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__60
	mov dword [ebp-0xac], 0x0
_Z13MissileImpactP9gentity_sP7trace_tPfS3__370:
	mov ebx, [ebp-0xa8]
	test ebx, ebx
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__70
	mov edx, [ebp-0xb0]
	mov ecx, [edx+0x15c]
	test ecx, ecx
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__80
	mov eax, [ebp+0xc]
	mov edx, [eax+0x10]
	test edx, edx
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__90
	mov edx, eax
	mov eax, esi
	call _Z19CheckCrumpleMissileP9gentity_sP7trace_t
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__70
_Z13MissileImpactP9gentity_sP7trace_tPfS3__530:
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z13BounceMissileP9gentity_sP7trace_t
	test eax, eax
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
	mov edx, [ebp+0xc]
	cmp byte [edx+0x29], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
	mov eax, [edx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
_Z13MissileImpactP9gentity_sP7trace_tPfS3__50:
	test byte [esi+0xb], 0x1
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__110
_Z13MissileImpactP9gentity_sP7trace_tPfS3__410:
	mov eax, [ebp-0xb0]
	cmp byte [eax+0x16b], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__120
	mov dword [ebp-0xac], 0x0
_Z13MissileImpactP9gentity_sP7trace_tPfS3__70:
	mov ebx, [ebp-0x9c]
	test ebx, ebx
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__130
	lea ebx, [esi+0x13c]
	cmp word [esi+0x154], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__140
	mov eax, g_entities
	add eax, 0x9cb18
_Z13MissileImpactP9gentity_sP7trace_tPfS3__540:
	mov edx, [ebp-0xa4]
	mov [esp+0x10], edx
	mov edx, [ebp-0x9c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z23G_CheckHitTriggerDamageP9gentity_sPKfS2_ii
_Z13MissileImpactP9gentity_sP7trace_tPfS3__450:
	mov ecx, [ebp-0xac]
	test ecx, ecx
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__150
	mov eax, [ebp+0xc]
	cmp word [eax+0x24], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__150
	mov byte [ebp-0xb1], 0x0
_Z13MissileImpactP9gentity_sP7trace_tPfS3__440:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call _Z16SV_PointContentsPKfii
	test eax, eax
	setnz byte [ebp-0x92]
	cmp byte [ebp-0x92], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__160
	mov byte [ebp-0x91], 0x1
_Z13MissileImpactP9gentity_sP7trace_tPfS3__560:
	cmp dword [esi+0x4], 0x4
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__170
_Z13MissileImpactP9gentity_sP7trace_tPfS3__510:
	mov eax, [edi+0x590]
	test eax, eax
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__180
_Z13MissileImpactP9gentity_sP7trace_tPfS3__520:
	mov eax, _ZZ13MissileImpactP9gentity_sP7trace_tPfS3_E19MY_STRAIGHTUPNORMAL
_Z13MissileImpactP9gentity_sP7trace_tPfS3__400:
	cmp byte [ebp-0x92], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__190
	cmp byte [ebp-0x91], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__200
_Z13MissileImpactP9gentity_sP7trace_tPfS3__190:
	mov edx, [ebp-0xa0]
	test edx, edx
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__210
	cmp dword [ebp-0xa0], 0x6
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__210
	cmp dword [ebp-0xa0], 0x1
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__220
	cmp dword [ebp-0xa0], 0x3
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__230
	cmp dword [ebp-0xa0], 0x2
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__240
	cmp dword [ebp-0xa0], 0x4
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__250
_Z13MissileImpactP9gentity_sP7trace_tPfS3__590:
	cmp byte [ebp-0x92], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__260
_Z13MissileImpactP9gentity_sP7trace_tPfS3__460:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
_Z13MissileImpactP9gentity_sP7trace_tPfS3__470:
	mov [esi+0x84], eax
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	mov [esp], esi
	call _Z22G_FreeEntityAfterEventP9gentity_s
	mov eax, [esi+0x8]
	xor eax, 0x2
	or eax, 0x20
	mov [esi+0x8], eax
	cmp byte [ebp-0x92], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__270
	cmp byte [ebp-0x91], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__280
_Z13MissileImpactP9gentity_sP7trace_tPfS3__270:
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
_Z13MissileImpactP9gentity_sP7trace_tPfS3__600:
	mov eax, [ebp-0xa8]
	test eax, eax
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__290
	mov eax, [edi+0x55c]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__300
_Z13MissileImpactP9gentity_sP7trace_tPfS3__290:
	cmp dword [ebp-0xa0], 0x2
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__310
_Z13MissileImpactP9gentity_sP7trace_tPfS3__500:
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
_Z13MissileImpactP9gentity_sP7trace_tPfS3__100:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13MissileImpactP9gentity_sP7trace_tPfS3__30:
	cmp dword [edi+0x6b8], 0x3
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__320
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__320
_Z13MissileImpactP9gentity_sP7trace_tPfS3__20:
	mov dword [esi+0x1bc], 0xd01502f9
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa0], 0x4
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__330
_Z13MissileImpactP9gentity_sP7trace_tPfS3__60:
	lea edx, [esi+0x154]
	mov [ebp-0x8c], edx
	cmp word [esi+0x154], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__340
	mov eax, g_entities
	add eax, 0x9cd8c
_Z13MissileImpactP9gentity_sP7trace_tPfS3__550:
	mov [esp+0x4], eax
	mov eax, [ebp-0xb0]
	mov [esp], eax
	call _Z14LogAccuracyHitP9gentity_sS0_
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebp-0xac], eax
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
	movss xmm0, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm3, xmm0
	movss xmm2, dword [ebp-0x1c]
	movaps xmm0, xmm3
	cmpss xmm0, [_float_0_00000000], 0x4
	andps xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	cmp dword [edi+0x12c], 0x1
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__350
_Z13MissileImpactP9gentity_sP7trace_tPfS3__630:
	mov eax, [ebp+0xc]
	movzx eax, word [eax+0x24]
	mov [ebp-0xbc], eax
	mov edx, [ebp+0xc]
	movzx edx, word [edx+0x22]
	mov [ebp-0xb8], edx
	mov eax, [esi+0xc4]
	mov [ebp-0x90], eax
	lea ebx, [esi+0x13c]
	mov edx, [ebp-0x8c]
	cmp word [edx], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__360
	xor eax, eax
_Z13MissileImpactP9gentity_sP7trace_tPfS3__610:
	mov dword [esp+0x30], 0x0
	mov edx, [ebp-0xbc]
	mov [esp+0x2c], edx
	mov edx, [ebp-0xb8]
	mov [esp+0x28], edx
	mov edx, [ebp-0x98]
	mov [esp+0x24], edx
	mov edx, [ebp-0x90]
	mov [esp+0x20], edx
	mov edx, [ebp-0xa4]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0x0
	mov edx, [ebp-0x9c]
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0xb0]
	mov [esp], eax
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__370
_Z13MissileImpactP9gentity_sP7trace_tPfS3__40:
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x20]
	mov [ebp-0xa4], eax
	cmp eax, 0xf
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__380
	mov dword [ebp-0x98], 0x0
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__390
_Z13MissileImpactP9gentity_sP7trace_tPfS3__180:
	mov eax, [ebp+0xc]
	add eax, 0x4
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__400
_Z13MissileImpactP9gentity_sP7trace_tPfS3__110:
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__410
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z19CheckCrumpleMissileP9gentity_sP7trace_t
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__410
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z13BounceMissileP9gentity_sP7trace_t
	test eax, eax
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__420
	mov eax, [ebp+0xc]
	cmp byte [eax+0x29], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__430
_Z13MissileImpactP9gentity_sP7trace_tPfS3__420:
	mov eax, [edi+0x574]
	test eax, eax
	jle _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
	mov eax, [esi+0xc]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
	mov eax, [ebp+0xc]
	add eax, 0x4
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x33
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	mov [esp], esi
	call _Z22G_FreeEntityAfterEventP9gentity_s
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__100
_Z13MissileImpactP9gentity_sP7trace_tPfS3__150:
	mov byte [ebp-0xb1], 0x1
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__440
_Z13MissileImpactP9gentity_sP7trace_tPfS3__130:
	lea ebx, [esi+0x13c]
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__450
_Z13MissileImpactP9gentity_sP7trace_tPfS3__210:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	cmp byte [ebp-0x92], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__460
_Z13MissileImpactP9gentity_sP7trace_tPfS3__260:
	mov eax, 0x14
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__470
_Z13MissileImpactP9gentity_sP7trace_tPfS3__160:
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x28], xmm0
	mov eax, [missileWaterMaxDepth]
	addss xmm0, [eax+0xc]
	movss [ebp-0x28], xmm0
	mov dword [esp+0x18], 0x20
	mov eax, [esi]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x57], 0x0
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__480
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z13MissileImpactP9gentity_sP7trace_tPfS3__480
	mov eax, [ebp-0x7c]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x34], eax
	movss xmm2, dword [ebp-0x80]
	movss xmm1, dword [ebp-0x30]
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x40], xmm1
	mov byte [ebp-0x91], 0x1
	lea eax, [ebp-0x3c]
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__190
_Z13MissileImpactP9gentity_sP7trace_tPfS3__310:
	mov ebx, [esi+0x1cc]
	cmp word [esi+0x198], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__490
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
_Z13MissileImpactP9gentity_sP7trace_tPfS3__570:
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	cvtsi2ss xmm0, dword [edi+0x558]
	movss [esp+0x8], xmm0
	cvtsi2ss xmm0, dword [edi+0x554]
	movss [esp+0x4], xmm0
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z16G_FlashbangBlastPKfffP9gentity_s6team_t
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__500
_Z13MissileImpactP9gentity_sP7trace_tPfS3__170:
	cmp dword [edi+0x6b8], 0x3
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__510
	mov eax, [esi+0x1ec]
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__510
	cmp word [esi+0x214], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__510
	movzx eax, word [esi+0x214]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, g_entities
	cmp [ebp-0xb0], edx
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__510
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__520
_Z13MissileImpactP9gentity_sP7trace_tPfS3__90:
	mov dword [eax+0x10], 0x700000
_Z13MissileImpactP9gentity_sP7trace_tPfS3__80:
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z19CheckCrumpleMissileP9gentity_sP7trace_t
	test eax, eax
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__70
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__530
_Z13MissileImpactP9gentity_sP7trace_tPfS3__140:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__540
_Z13MissileImpactP9gentity_sP7trace_tPfS3__340:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__550
_Z13MissileImpactP9gentity_sP7trace_tPfS3__480:
	mov byte [ebp-0x91], 0x0
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__560
_Z13MissileImpactP9gentity_sP7trace_tPfS3__490:
	xor eax, eax
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__570
_Z13MissileImpactP9gentity_sP7trace_tPfS3__250:
	cmp dword [esi+0x4], 0x4
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__580
_Z13MissileImpactP9gentity_sP7trace_tPfS3__640:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__590
_Z13MissileImpactP9gentity_sP7trace_tPfS3__280:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__600
_Z13MissileImpactP9gentity_sP7trace_tPfS3__360:
	movzx eax, word [edx]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__610
_Z13MissileImpactP9gentity_sP7trace_tPfS3__300:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov ebx, [eax+0x24]
	cmp ebx, 0x4
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__620
_Z13MissileImpactP9gentity_sP7trace_tPfS3__650:
	cmp word [esi+0x198], 0x0
	jz _Z13MissileImpactP9gentity_sP7trace_tPfS3__290
	movss xmm1, dword [edi+0x564]
	cvtss2sd xmm0, xmm1
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0xd8], xmm1
	call cosf
	fstp dword [ebp-0xdc]
	movss xmm2, dword [ebp-0xdc]
	movss xmm1, dword [ebp-0xd8]
	subss xmm1, [_float_180_00000000]
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x6
	andps xmm2, xmm0
	movss xmm1, dword [_float__1_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	mov dword [esp+0x28], 0xffffffff
	mov [esp+0x24], ebx
	mov edx, [ebp-0xb0]
	mov [esp+0x20], edx
	mov eax, [ebp+0x10]
	mov [esp+0x1c], eax
	movss [esp+0x18], xmm0
	cvtsi2ss xmm0, dword [edi+0x554]
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, dword [edi+0x560]
	movss [esp+0x10], xmm0
	cvtsi2ss xmm0, dword [edi+0x55c]
	movss [esp+0xc], xmm0
	movzx edx, word [esi+0x198]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	mov ebx, g_entities
	add eax, ebx
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii
	mov eax, [edi+0x554]
	mov [esp], eax
	call _Z10Scr_AddInti
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov eax, [edi]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	mov dword [esp+0x8], 0x3
	mov eax, scr_const
	movzx eax, word [eax+0x60]
	mov [esp+0x4], eax
	movzx edx, word [esi+0x198]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, ebx
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__290
_Z13MissileImpactP9gentity_sP7trace_tPfS3__200:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	mov eax, 0x14
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__470
_Z13MissileImpactP9gentity_sP7trace_tPfS3__350:
	mov eax, g_minGrenadeDamageSpeed
	mov eax, [eax]
	ucomiss xmm3, [eax+0xc]
	jbe _Z13MissileImpactP9gentity_sP7trace_tPfS3__370
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__630
_Z13MissileImpactP9gentity_sP7trace_tPfS3__220:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	cmp byte [ebp-0xb1], 0x1
	sbb edx, edx
	add edx, 0x2f
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__590
_Z13MissileImpactP9gentity_sP7trace_tPfS3__580:
	cmp dword [edi+0x6b8], 0x3
	jnz _Z13MissileImpactP9gentity_sP7trace_tPfS3__640
	lea ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	lea eax, [esi+0x24]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x54]
	xorps xmm0, xmm1
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x50]
	xorps xmm0, xmm1
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x4c]
	xorps xmm0, xmm1
	movss [ebp-0x4c], xmm0
	mov [esp], ebx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x35
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__590
_Z13MissileImpactP9gentity_sP7trace_tPfS3__230:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	cmp byte [ebp-0xb1], 0x1
	sbb edx, edx
	add edx, 0x32
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__590
_Z13MissileImpactP9gentity_sP7trace_tPfS3__240:
	mov [esp], eax
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__590
_Z13MissileImpactP9gentity_sP7trace_tPfS3__620:
	cmp dword [edx+0x588], 0x6
	mov eax, 0xe
	cmovz ebx, eax
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__650
_Z13MissileImpactP9gentity_sP7trace_tPfS3__430:
	mov eax, [eax+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	jmp _Z13MissileImpactP9gentity_sP7trace_tPfS3__420


;MissileTrajectory(gentity_s*, float*)
_Z17MissileTrajectoryP9gentity_sPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov esi, eax
	mov edi, edx
	mov eax, [eax+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xcc], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	cmp eax, [esi+0x54]
	jle _Z17MissileTrajectoryP9gentity_sPf_10
	cmp dword [esi+0xc], 0x2
	jz _Z17MissileTrajectoryP9gentity_sPf_10
	cmp byte [esi+0x16e], 0x9
	jz _Z17MissileTrajectoryP9gentity_sPf_20
_Z17MissileTrajectoryP9gentity_sPf_10:
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
_Z17MissileTrajectoryP9gentity_sPf_140:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17MissileTrajectoryP9gentity_sPf_20:
	pxor xmm5, xmm5
	mov eax, [ebp-0xcc]
	movss xmm0, dword [eax+0x57c]
	ucomiss xmm0, xmm5
	jbe _Z17MissileTrajectoryP9gentity_sPf_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [esi+0x148]
	mov [esp], eax
	movss [ebp-0x118], xmm5
	call _Z12AngleVectorsPKfPfS1_S1_
	lea ebx, [esi+0x24]
	movss xmm3, dword [ebp-0x38]
	movaps xmm2, xmm3
	mulss xmm2, [esi+0x24]
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [esi+0x28]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [esi+0x2c]
	addss xmm2, xmm0
	mov edx, [ebp-0xcc]
	cvtsi2ss xmm1, dword [edx+0x568]
	ucomiss xmm2, xmm1
	movss xmm5, dword [ebp-0x118]
	jb _Z17MissileTrajectoryP9gentity_sPf_40
	subss xmm1, xmm2
_Z17MissileTrajectoryP9gentity_sPf_150:
	mulss xmm3, xmm1
	addss xmm3, [esi+0x24]
	movss [esi+0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x34]
	addss xmm0, [esi+0x28]
	movss [ebx+0x4], xmm0
	mulss xmm1, [ebp-0x30]
	addss xmm1, [esi+0x2c]
	movss [ebx+0x8], xmm1
	mov eax, [ebp-0xcc]
_Z17MissileTrajectoryP9gentity_sPf_30:
	movss xmm0, dword [eax+0x580]
	ucomiss xmm0, xmm5
	jbe _Z17MissileTrajectoryP9gentity_sPf_50
	lea ebx, [esi+0x24]
	lea eax, [esi+0x1d0]
	movss xmm1, dword [_float_0_05000000]
	movss xmm0, dword [esi+0x1d0]
	mulss xmm0, xmm1
	addss xmm0, [esi+0x24]
	movss [esi+0x24], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
_Z17MissileTrajectoryP9gentity_sPf_50:
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_60
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x68], eax
	mov eax, [edx+0x4]
	mov [ebp-0x64], eax
	mov eax, [edx+0x8]
	mov [ebp-0x60], eax
_Z17MissileTrajectoryP9gentity_sPf_60:
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x118], xmm5
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	mov eax, [eax+0x6b8]
	test eax, eax
	jz _Z17MissileTrajectoryP9gentity_sPf_70
	lea edx, [esi+0x214]
	mov [ebp-0xc8], edx
	cmp word [esi+0x214], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_70
	jz _Z17MissileTrajectoryP9gentity_sPf_70
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, level
	mov ecx, [edx+0x1ec]
	mov edx, ecx
	sub edx, [esi+0x10]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float__0_00100000]
	addss xmm0, [eax+0x57c]
	movss xmm5, dword [ebp-0x118]
	ucomiss xmm5, xmm0
	jb _Z17MissileTrajectoryP9gentity_sPf_70
	cmp dword [ebx+0x6b8], 0x3
	jnz _Z17MissileTrajectoryP9gentity_sPf_80
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz _Z17MissileTrajectoryP9gentity_sPf_90
	sub ecx, [esi+0x54]
	cmp ecx, [ebx+0x6c0]
	jge _Z17MissileTrajectoryP9gentity_sPf_100
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_70
	mov dword [esp+0x4], _cstring_javelin_softlaun
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z17MissileTrajectoryP9gentity_sPf_70:
	mov eax, [ebp-0xcc]
	cmp dword [eax+0x6b8], 0x3
	jz _Z17MissileTrajectoryP9gentity_sPf_110
_Z17MissileTrajectoryP9gentity_sPf_180:
	lea edx, [esi+0x18]
	lea eax, [esi+0x24]
	movss xmm1, dword [_float_0_05000000]
	movss xmm0, dword [esi+0x24]
	mulss xmm0, xmm1
	addss xmm0, [esi+0x18]
	movss [esi+0x18], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [esi+0x1c]
	movss [edx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [esi+0x20]
	movss [edx+0x8], xmm1
	mov eax, [esi+0x18]
	mov [edi], eax
	mov eax, [esi+0x1c]
	mov [edi+0x4], eax
	mov eax, [esi+0x20]
	mov [edi+0x8], eax
_Z17MissileTrajectoryP9gentity_sPf_190:
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_120
	mov edx, [ebp-0xcc]
	cmp dword [edx+0x6b8], 0x3
	jz _Z17MissileTrajectoryP9gentity_sPf_130
_Z17MissileTrajectoryP9gentity_sPf_160:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorRed
_Z17MissileTrajectoryP9gentity_sPf_170:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
_Z17MissileTrajectoryP9gentity_sPf_120:
	cmp dword [esi+0x30], 0x1
	jnz _Z17MissileTrajectoryP9gentity_sPf_140
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, level
	mov edx, [edx+0x1ec]
	sub edx, [esi+0x10]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float__0_00100000]
	addss xmm0, [eax+0x57c]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z17MissileTrajectoryP9gentity_sPf_140
	jp _Z17MissileTrajectoryP9gentity_sPf_140
	lea ebx, [esi+0x148]
	mov [esp+0x4], ebx
	lea eax, [esi+0x24]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	mov dword [esi+0x30], 0x1
	jmp _Z17MissileTrajectoryP9gentity_sPf_140
_Z17MissileTrajectoryP9gentity_sPf_40:
	divss xmm1, dword [edx+0x57c]
	mulss xmm1, [_float_0_05000000]
	jmp _Z17MissileTrajectoryP9gentity_sPf_150
_Z17MissileTrajectoryP9gentity_sPf_130:
	cmp dword [esi+0x1e8], 0x1
	jnz _Z17MissileTrajectoryP9gentity_sPf_160
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorOrange
	jmp _Z17MissileTrajectoryP9gentity_sPf_170
_Z17MissileTrajectoryP9gentity_sPf_110:
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz _Z17MissileTrajectoryP9gentity_sPf_180
	mov [esp+0x8], edi
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	jmp _Z17MissileTrajectoryP9gentity_sPf_190
_Z17MissileTrajectoryP9gentity_sPf_80:
	lea eax, [esi+0x24]
	mov [ebp-0xc4], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call _Z15Vec2NormalizeToPKfPf
	fstp dword [ebp-0xa0]
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x94], xmm0
	xor dword [ebp-0x94], 0x80000000
	movss xmm1, dword [ebp-0x1c]
	movss [ebp-0x90], xmm1
	movzx edx, word [esi+0x214]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	lea edx, [eax+0x13c]
	lea ecx, [esi+0x1dc]
	movss xmm0, dword [eax+0x13c]
	addss xmm0, [esi+0x1dc]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [edx+0x4]
	addss xmm0, [ecx+0x4]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x8]
	movss [ebp-0x6c], xmm0
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jnz _Z17MissileTrajectoryP9gentity_sPf_200
	lea edx, [esi+0x18]
	mov [ebp-0xd8], edx
	mov ecx, edx
_Z17MissileTrajectoryP9gentity_sPf_390:
	movss xmm1, dword [ebp-0x74]
	subss xmm1, [esi+0x18]
	movss xmm3, dword [ebp-0x70]
	subss xmm3, [ecx+0x4]
	movss xmm4, dword [ebp-0x6c]
	subss xmm4, [ecx+0x8]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x1c]
	addss xmm0, xmm2
	movss [ebp-0x80], xmm0
	mulss xmm1, [ebp-0x90]
	mulss xmm3, [ebp-0x94]
	addss xmm1, xmm3
	movss [ebp-0x7c], xmm1
	movss [ebp-0x78], xmm4
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm4, dword [ebp-0x7c]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jnz _Z17MissileTrajectoryP9gentity_sPf_210
	jp _Z17MissileTrajectoryP9gentity_sPf_210
	movss xmm6, dword [_float_3402823466385288598117041]
	movss xmm3, dword [ebp-0x80]
_Z17MissileTrajectoryP9gentity_sPf_290:
	cvtsi2ss xmm1, dword [eax+0x568]
	movss xmm2, dword [eax+0x6bc]
	mulss xmm1, xmm1
	divss xmm1, xmm2
	pxor xmm5, xmm5
	ucomiss xmm3, xmm5
	jbe _Z17MissileTrajectoryP9gentity_sPf_220
	ucomiss xmm4, xmm5
	jnz _Z17MissileTrajectoryP9gentity_sPf_230
	jp _Z17MissileTrajectoryP9gentity_sPf_230
_Z17MissileTrajectoryP9gentity_sPf_370:
	movaps xmm4, xmm5
	movss [ebp-0x8c], xmm5
_Z17MissileTrajectoryP9gentity_sPf_380:
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	call _Z15BG_GetWeaponDefj
	mov ebx, eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call _Z15Vec2NormalizeToPKfPf
	fstp dword [ebp-0x98]
	pxor xmm5, xmm5
	movss xmm4, dword [ebp-0x108]
	movss xmm0, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jnz _Z17MissileTrajectoryP9gentity_sPf_240
	jp _Z17MissileTrajectoryP9gentity_sPf_240
_Z17MissileTrajectoryP9gentity_sPf_260:
	movaps xmm0, xmm5
_Z17MissileTrajectoryP9gentity_sPf_280:
	movss xmm1, dword [ebp-0x8c]
	mov eax, [ebp-0xc4]
	addss xmm1, [eax]
	movss [eax], xmm1
	addss xmm4, [eax+0x4]
	movss [eax+0x4], xmm4
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_70
_Z17MissileTrajectoryP9gentity_sPf_240:
	mov eax, [ebx+0x6b8]
	cmp eax, 0x1
	jz _Z17MissileTrajectoryP9gentity_sPf_250
	cmp eax, 0x2
	jnz _Z17MissileTrajectoryP9gentity_sPf_260
	mov edx, [esi+0x14]
	test edx, edx
	jz _Z17MissileTrajectoryP9gentity_sPf_270
	movss xmm2, dword [ebp-0x78]
	movss [ebp-0x9c], xmm2
	ucomiss xmm5, [ebp-0x44]
	ja _Z17MissileTrajectoryP9gentity_sPf_260
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	call _Z15BG_GetWeaponDefj
	movss xmm3, dword [ebp-0xa0]
	mulss xmm3, [ebp-0x44]
	movss [ebp-0xa0], xmm3
	and dword [ebp-0xa0], 0x7fffffff
	cvtss2sd xmm0, [ebp-0xa0]
	cvtss2sd xmm1, [ebp-0x9c]
_Z17MissileTrajectoryP9gentity_sPf_480:
	mulsd xmm0, xmm1
	cvtss2sd xmm1, [ebp-0x98]
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	subss xmm0, [esi+0x2c]
	mulss xmm0, [_float_20_00000000]
	movss xmm1, dword [eax+0x6bc]
	movaps xmm3, xmm1
	xorps xmm3, [_data16_80000000]
	movaps xmm2, xmm0
	subss xmm2, xmm1
	movss xmm5, dword [ebp-0x118]
	movaps xmm6, xmm5
	cmpss xmm6, xmm2, 0x2
	movaps xmm2, xmm6
	andps xmm1, xmm6
	andnps xmm2, xmm0
	orps xmm2, xmm1
	movaps xmm1, xmm3
	subss xmm1, xmm0
	cmpss xmm5, xmm1, 0x2
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm2
	orps xmm0, xmm3
	mulss xmm0, [_float_0_05000000]
	movss xmm4, dword [ebp-0x108]
	jmp _Z17MissileTrajectoryP9gentity_sPf_280
_Z17MissileTrajectoryP9gentity_sPf_210:
	movss xmm3, dword [ebp-0x80]
	movaps xmm6, xmm3
	mulss xmm6, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm6, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm4
	divss xmm6, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_290
_Z17MissileTrajectoryP9gentity_sPf_90:
	lea eax, [esi+0x18]
	mov [ebp-0xd8], eax
_Z17MissileTrajectoryP9gentity_sPf_400:
	mov ecx, [ebp-0xc8]
	movzx edx, word [ecx]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	lea edx, [eax+0x13c]
	lea ecx, [esi+0x1dc]
	movss xmm1, dword [eax+0x13c]
	addss xmm1, [esi+0x1dc]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [edx+0x4]
	addss xmm2, [ecx+0x4]
	movss [ebp-0x28], xmm2
	movss xmm0, dword [edx+0x8]
	addss xmm0, [ecx+0x8]
	movss [ebp-0x24], xmm0
	cmp dword [esi+0x1e8], 0x1
	jz _Z17MissileTrajectoryP9gentity_sPf_300
	lea ebx, [esi+0x24]
	movss xmm0, dword [ebp-0x24]
_Z17MissileTrajectoryP9gentity_sPf_460:
	movaps xmm3, xmm1
	subss xmm3, [esi+0x18]
	movss [ebp-0x5c], xmm3
	lea eax, [esi+0x1c]
	mov [ebp-0xb4], eax
	subss xmm2, [esi+0x1c]
	movss [ebp-0x58], xmm2
	lea edx, [esi+0x20]
	mov [ebp-0xb0], edx
	subss xmm0, [esi+0x20]
	movss [ebp-0x54], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z17MissileTrajectoryP9gentity_sPf_310
	movss xmm2, dword [_float_1_00000000]
_Z17MissileTrajectoryP9gentity_sPf_490:
	mulss xmm3, xmm2
	movss [ebp-0x5c], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm2, [ebp-0x54]
	movss [ebp-0x54], xmm2
	lea ecx, [ebp-0x44]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x11c]
	movss xmm1, dword [ebp-0x11c]
	lea eax, [ebp-0x50]
	mov [esp+0xc], eax
	lea eax, [ebp-0x5c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0xe8], xmm1
	call _Z16JavelinRotateDirP9gentity_sPKfS2_Pf
	fstp dword [ebp-0x11c]
	movss xmm2, dword [ebp-0x11c]
	movss xmm1, dword [ebp-0xe8]
	ucomiss xmm2, [_float_30_00000000]
	jae _Z17MissileTrajectoryP9gentity_sPf_320
	jp _Z17MissileTrajectoryP9gentity_sPf_320
	cmp dword [esi+0x1e8], 0x1
	jz _Z17MissileTrajectoryP9gentity_sPf_330
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z17MissileTrajectoryP9gentity_sPf_340
_Z17MissileTrajectoryP9gentity_sPf_330:
	movss xmm0, dword [_float_0_05000000]
	mov eax, [missileJavAccelClimb]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	mov eax, [missileJavSpeedLimitClimb]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm1, xmm0
	ja _Z17MissileTrajectoryP9gentity_sPf_350
_Z17MissileTrajectoryP9gentity_sPf_320:
	movaps xmm0, xmm2
	divss xmm0, dword [_float__180_00000000]
	mov eax, [missileJavTurnDecel]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_1_00000000]
	mulss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x50]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x4c]
	movss [ebx+0x4], xmm1
	mulss xmm0, [ebp-0x48]
	movss [ebx+0x8], xmm0
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_70
	movss xmm3, dword [esi+0x20]
	subss xmm3, [ebp-0x24]
	subss xmm3, [esi+0x1e4]
	cmp dword [esi+0x1ec], 0x1
	jz _Z17MissileTrajectoryP9gentity_sPf_360
	mov eax, [missileJavClimbCeilingTop]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0xac], xmm1
_Z17MissileTrajectoryP9gentity_sPf_510:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd8]
	mov [esp], eax
	movss [ebp-0xf8], xmm3
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0xa8]
	movss xmm0, dword [ebp-0x2c]
	mov edx, [ebp-0xd8]
	subss xmm0, [edx]
	movss xmm1, dword [ebp-0x28]
	mov ecx, [ebp-0xb4]
	subss xmm1, [ecx]
	movss xmm2, dword [ebp-0x24]
	mov eax, [ebp-0xb0]
	subss xmm2, [eax]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mov edx, _cstring_a
	cmp dword [esi+0x1e8], 0x1
	mov eax, _cstring_d
	cmovnz edx, eax
	cvtss2sd xmm0, xmm0
	movsd [esp+0x24], xmm0
	cvtss2sd xmm0, [ebp-0xa8]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm1, [ebp-0xac]
	movsd [esp+0x14], xmm1
	movss xmm3, dword [ebp-0xf8]
	cvtss2sd xmm3, xmm3
	movsd [esp+0xc], xmm3
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_javs_h0f0f_dist_
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z17MissileTrajectoryP9gentity_sPf_70
_Z17MissileTrajectoryP9gentity_sPf_230:
	movaps xmm0, xmm6
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	ja _Z17MissileTrajectoryP9gentity_sPf_370
	movss xmm0, dword [ebp-0xa0]
	addss xmm0, xmm0
	mulss xmm0, [ebp-0xa0]
	divss xmm0, xmm6
	movaps xmm4, xmm2
	xorps xmm4, [_data16_80000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm3, xmm5
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm2, xmm3
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movaps xmm6, xmm4
	subss xmm6, xmm0
	cmpss xmm5, xmm6, 0x2
	movaps xmm2, xmm4
	andps xmm2, xmm5
	movaps xmm4, xmm5
	andnps xmm4, xmm1
	orps xmm4, xmm2
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, xmm4
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [_float_0_05000000]
	movss xmm1, dword [ebp-0x8c]
	mulss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	mulss xmm4, [ebp-0x94]
	mulss xmm4, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_380
_Z17MissileTrajectoryP9gentity_sPf_200:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorGreen
	mov [esp+0x8], eax
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea eax, [esi+0x18]
	mov [ebp-0xd8], eax
	mov [esp], eax
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	mov ecx, [ebp-0xd8]
	jmp _Z17MissileTrajectoryP9gentity_sPf_390
_Z17MissileTrajectoryP9gentity_sPf_100:
	mov dword [esi+0x1e8], 0x1
	mov dword [esi+0xc], 0x1
	lea ecx, [esi+0x18]
	mov [ebp-0xd8], ecx
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [esi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	jmp _Z17MissileTrajectoryP9gentity_sPf_400
_Z17MissileTrajectoryP9gentity_sPf_300:
	movss xmm1, dword [esi+0x20]
	subss xmm1, xmm0
	subss xmm1, [esi+0x1e4]
	mov edx, [esi+0x1ec]
	cmp edx, 0x1
	jz _Z17MissileTrajectoryP9gentity_sPf_410
	mov eax, [missileJavClimbCeilingTop]
	movss xmm0, dword [eax+0xc]
_Z17MissileTrajectoryP9gentity_sPf_520:
	ucomiss xmm1, xmm0
	jbe _Z17MissileTrajectoryP9gentity_sPf_420
	test edx, edx
	jnz _Z17MissileTrajectoryP9gentity_sPf_430
	mov eax, [missileJavClimbAngleTop]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xc0], xmm0
_Z17MissileTrajectoryP9gentity_sPf_570:
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea ebx, [esi+0x24]
	mov [esp], ebx
	call _Z15Vec2NormalizeToPKfPf
	fstp st0
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [esi+0x18]
	mulss xmm1, [ebp-0x44]
	movss xmm2, dword [ebp-0x28]
	mov edx, [ebp-0xd8]
	subss xmm2, [edx+0x4]
	mulss xmm2, [ebp-0x40]
	addss xmm1, xmm2
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [edx+0x8]
	divss xmm1, xmm0
	movss [esp], xmm1
	call atanf
	fstp dword [ebp-0xd0]
	cvtss2sd xmm0, [ebp-0xd0]
	mulsd xmm0, [_double_57_29577951]
	cvtsd2ss xmm0, xmm0
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [ebp-0xc0]
	ucomiss xmm1, xmm0
	jbe _Z17MissileTrajectoryP9gentity_sPf_440
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_450
	mov dword [esp+0x4], _cstring_javelin__exceede
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
_Z17MissileTrajectoryP9gentity_sPf_450:
	mov dword [esi+0x1e8], 0x2
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x24]
	jmp _Z17MissileTrajectoryP9gentity_sPf_460
_Z17MissileTrajectoryP9gentity_sPf_220:
	andps xmm6, [_data16_7fffffff]
	addss xmm1, [_float_60_00000000]
	ucomiss xmm1, xmm6
	ja _Z17MissileTrajectoryP9gentity_sPf_370
	ucomiss xmm4, xmm5
	jbe _Z17MissileTrajectoryP9gentity_sPf_470
	movss xmm3, dword [ebp-0x90]
	mulss xmm3, xmm2
	movss xmm0, dword [_float_0_05000000]
	mulss xmm3, xmm0
	movss [ebp-0x8c], xmm3
	movss xmm4, dword [ebp-0x94]
	mulss xmm4, xmm2
	mulss xmm4, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_380
_Z17MissileTrajectoryP9gentity_sPf_340:
	movss xmm0, dword [_float_0_05000000]
	mov eax, [missileJavAccelDescend]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	mov eax, [missileJavSpeedLimitDescend]
	movss xmm0, dword [eax+0xc]
	minss xmm0, xmm1
_Z17MissileTrajectoryP9gentity_sPf_350:
	movaps xmm1, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_320
_Z17MissileTrajectoryP9gentity_sPf_250:
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0xa4], xmm1
	ucomiss xmm5, [ebp-0x44]
	ja _Z17MissileTrajectoryP9gentity_sPf_260
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	call _Z15BG_GetWeaponDefj
	movss xmm2, dword [ebp-0xa0]
	mulss xmm2, [ebp-0x44]
	movss [ebp-0xa0], xmm2
	and dword [ebp-0xa0], 0x7fffffff
	cvtss2sd xmm0, [ebp-0xa0]
	cvtss2sd xmm1, [ebp-0xa4]
	jmp _Z17MissileTrajectoryP9gentity_sPf_480
_Z17MissileTrajectoryP9gentity_sPf_310:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp _Z17MissileTrajectoryP9gentity_sPf_490
_Z17MissileTrajectoryP9gentity_sPf_420:
	lea ebx, [esi+0x24]
_Z17MissileTrajectoryP9gentity_sPf_600:
	mov ecx, [esi+0x1ec]
	test ecx, ecx
	jnz _Z17MissileTrajectoryP9gentity_sPf_500
	movss xmm0, dword [ebp-0x24]
	mov eax, [missileJavClimbHeightTop]
	addss xmm0, [eax+0xc]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	jmp _Z17MissileTrajectoryP9gentity_sPf_460
_Z17MissileTrajectoryP9gentity_sPf_360:
	mov eax, [missileJavClimbCeilingDirect]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xac], xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_510
_Z17MissileTrajectoryP9gentity_sPf_410:
	mov eax, [missileJavClimbCeilingDirect]
	movss xmm0, dword [eax+0xc]
	jmp _Z17MissileTrajectoryP9gentity_sPf_520
_Z17MissileTrajectoryP9gentity_sPf_270:
	movss xmm1, dword [ebp-0x80]
	ucomiss xmm1, xmm5
	jbe _Z17MissileTrajectoryP9gentity_sPf_530
	movss xmm2, dword [ebp-0xa0]
	ucomiss xmm2, xmm5
	jp _Z17MissileTrajectoryP9gentity_sPf_540
	jz _Z17MissileTrajectoryP9gentity_sPf_530
_Z17MissileTrajectoryP9gentity_sPf_540:
	cvtsi2ss xmm0, dword [ebx+0x568]
	divss xmm1, xmm0
_Z17MissileTrajectoryP9gentity_sPf_560:
	movss xmm2, dword [ebp-0x78]
	divss xmm2, xmm1
	movss xmm3, dword [ebx+0x6bc]
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [_float_0_89999998]
	mov eax, [missileHellfireMaxSlope]
	movss xmm6, dword [ebp-0xa0]
	mulss xmm6, [eax+0xc]
	movss [ebp-0xa0], xmm6
	minss xmm6, xmm2
	movaps xmm2, xmm6
	movss xmm0, dword [esi+0x2c]
	ucomiss xmm6, xmm0
	jbe _Z17MissileTrajectoryP9gentity_sPf_550
	subss xmm2, xmm0
	mulss xmm2, [_float_20_00000000]
	mov eax, [missileHellfireUpAccel]
	movss xmm1, dword [eax+0xc]
	xorps xmm3, [_data16_80000000]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm6, xmm5
	cmpss xmm6, xmm0, 0x2
	movaps xmm0, xmm6
	andps xmm1, xmm6
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movaps xmm1, xmm3
	subss xmm1, xmm2
	cmpss xmm5, xmm1, 0x2
	movaps xmm1, xmm5
	andps xmm3, xmm5
	andnps xmm1, xmm0
	movaps xmm0, xmm1
	orps xmm0, xmm3
	mulss xmm0, [_float_0_05000000]
	jmp _Z17MissileTrajectoryP9gentity_sPf_280
_Z17MissileTrajectoryP9gentity_sPf_530:
	cvtsi2ss xmm0, dword [ebx+0x568]
	movss xmm1, dword [ebp-0x98]
	divss xmm1, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_560
_Z17MissileTrajectoryP9gentity_sPf_470:
	movaps xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	movss xmm6, dword [ebp-0x90]
	mulss xmm6, xmm1
	movss xmm0, dword [_float_0_05000000]
	mulss xmm6, xmm0
	movss [ebp-0x8c], xmm6
	movss xmm4, dword [ebp-0x94]
	mulss xmm4, xmm1
	mulss xmm4, xmm0
	jmp _Z17MissileTrajectoryP9gentity_sPf_380
_Z17MissileTrajectoryP9gentity_sPf_550:
	mov dword [esi+0x14], 0x1
	jmp _Z17MissileTrajectoryP9gentity_sPf_260
_Z17MissileTrajectoryP9gentity_sPf_430:
	mov eax, [missileJavClimbAngleDirect]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0xc0], xmm1
	jmp _Z17MissileTrajectoryP9gentity_sPf_570
_Z17MissileTrajectoryP9gentity_sPf_500:
	movss xmm0, dword [ebp-0x24]
	mov eax, [missileJavClimbHeightDirect]
	addss xmm0, [eax+0xc]
	movss [ebp-0x24], xmm0
	cmp word [esi+0x154], 0x0
	jnz _Z17MissileTrajectoryP9gentity_sPf_580
	mov eax, g_entities
	mov [ebp-0xd4], eax
	mov edx, eax
	add edx, 0x9cd8c
	mov [ebp-0xb8], edx
_Z17MissileTrajectoryP9gentity_sPf_590:
	mov eax, [ebp-0xc8]
	movzx edx, word [eax]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, [ebp-0xd4]
	mov edx, [ebp-0xb8]
	movss xmm0, dword [edx+0x18]
	subss xmm0, [eax+0x18]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edx+0x1c]
	subss xmm0, [eax+0x1c]
	movss [ebp-0x40], xmm0
	lea ecx, [ebp-0x44]
	mov [esp], ecx
	call _Z13Vec2NormalizePf
	fstp st0
	mov eax, [missileJavClimbToOwner]
	movss xmm0, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x44]
	movss [ebp-0x44], xmm1
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp-0x2c]
	addss xmm1, [ebp-0x44]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebp-0x28]
	addss xmm2, xmm0
	movss [ebp-0x28], xmm2
	movss xmm0, dword [ebp-0x24]
	jmp _Z17MissileTrajectoryP9gentity_sPf_460
_Z17MissileTrajectoryP9gentity_sPf_580:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	mov ecx, g_entities
	mov [ebp-0xd4], ecx
	add edx, ecx
	mov [ebp-0xb8], edx
	jmp _Z17MissileTrajectoryP9gentity_sPf_590
_Z17MissileTrajectoryP9gentity_sPf_440:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0xbc]
	movss xmm0, dword [ebp-0xbc]
	ucomiss xmm0, [_float_400_00000000]
	jae _Z17MissileTrajectoryP9gentity_sPf_600
	jp _Z17MissileTrajectoryP9gentity_sPf_600
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz _Z17MissileTrajectoryP9gentity_sPf_450
	mov dword [esp+0x4], _cstring_javelin__exceede1
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z17MissileTrajectoryP9gentity_sPf_450
	nop


;G_FireRocket(gentity_s*, unsigned int, float*, float*, float const*, gentity_s*, float const*)
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov eax, [ebp+0x14]
	movss xmm3, dword [eax]
	mov edx, eax
	add edx, 0x4
	movss xmm1, dword [eax+0x4]
	add eax, 0x8
	mov ecx, [ebp+0x14]
	movss xmm2, dword [ecx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movss xmm4, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__10
	movss xmm5, dword [_float_1_00000000]
	movaps xmm2, xmm5
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__150:
	mulss xmm3, xmm2
	mov ecx, [ebp+0x14]
	movss [ecx], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	movss [eax], xmm0
	cmp dword [edi+0x6b8], 0x3
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__20
	mov eax, [ebp+0x10]
	add eax, 0x4
	mov [ebp-0x40], eax
	mov edx, [ebp+0x10]
	add edx, 0x8
	mov [ebp-0x3c], edx
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__200:
	call _Z7G_Spawnv
	mov esi, eax
	mov eax, scr_const
	movzx eax, word [eax+0x6a]
	mov [esp+0x4], eax
	lea eax, [esi+0x170]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov dword [esi+0x4], 0x4
	or dword [esi+0x8], 0x400
	movzx eax, bl
	mov [esi+0xc4], eax
	mov dword [esi+0xc8], 0x0
	mov eax, level
	mov ecx, [eax+0x1ec]
	mov [esi+0x54], ecx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__30
	cvtsi2ss xmm0, dword [edi+0x568]
	mulss xmm0, [_float__35_00000000]
	divss xmm0, dword [_float_600_00000000]
	addss xmm0, [_float_85_00000000]
	cvttss2si edx, xmm0
	cmp edx, 0x31
	jle _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__40
	mov edx, 0x32
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__130:
	lea eax, [edx+ecx]
	mov [esi+0x54], eax
	mov eax, [ebp+0x8]
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__180:
	mov [esp+0x4], eax
	lea eax, [esi+0x154]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea eax, [esi+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esi+0x190], 0x2806891
	mov byte [esi+0x16e], 0x9
	mov edx, level
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [edi+0x578]
	cvttss2si eax, xmm0
	add eax, [edx+0x1ec]
	mov [esi+0x19c], eax
	mov edx, [edx+0x1ec]
	add edx, 0xea60
	cmp eax, edx
	jle _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__50
	mov [esi+0x19c], edx
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__50:
	xor ebx, ebx
	mov [esi+0x1bc], ebx
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea eax, [esi+0x214]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov eax, [ebp+0x20]
	test eax, eax
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__60
	lea edx, [esi+0x1dc]
	mov ecx, [ebp+0x20]
	mov eax, [ecx]
	mov [esi+0x1dc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test eax, eax
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__70
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__160:
	mov eax, [eax+0x3010]
	mov [esi+0x1cc], eax
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__170:
	mov [esp], esi
	call _Z17G_BroadcastEntityP9gentity_s
	mov dword [esi+0xc], 0x2
	pxor xmm1, xmm1
	movss xmm0, dword [edi+0x57c]
	ucomiss xmm0, xmm1
	jbe _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__80
	mov dword [esi+0xc], 0x1
	lea ecx, [esi+0x24]
	movss [esi+0x24], xmm1
	movss [ecx+0x4], xmm1
	movss [ecx+0x8], xmm1
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__140:
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esi+0x10], eax
	lea edx, [esi+0x18]
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esi+0x18], eax
	mov ebx, [ebp-0x40]
	mov eax, [ebx]
	mov [edx+0x4], eax
	mov ebx, [ebp-0x3c]
	mov eax, [ebx]
	mov [edx+0x8], eax
	movss xmm0, dword [esi+0x24]
	mov eax, [ebp+0x18]
	addss xmm0, [eax]
	movss [esi+0x24], xmm0
	movss xmm0, dword [ecx+0x4]
	addss xmm0, [eax+0x4]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [eax+0x8]
	movss [ecx+0x8], xmm0
	cvttss2si eax, [esi+0x24]
	cvtsi2ss xmm0, eax
	movss [esi+0x24], xmm0
	cvttss2si eax, [esi+0x28]
	cvtsi2ss xmm0, eax
	movss [esi+0x28], xmm0
	cvttss2si eax, [esi+0x2c]
	cvtsi2ss xmm0, eax
	movss [esi+0x2c], xmm0
	lea edx, [esi+0x13c]
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [esi+0x13c], eax
	mov ebx, [ebp-0x40]
	mov eax, [ebx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x3c]
	mov eax, [ecx]
	mov [edx+0x8], eax
	lea ebx, [esi+0x148]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z10G_SetAngleP9gentity_sPKf
	movss xmm0, dword [edi+0x580]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__90
	mov dword [esi+0xc], 0x1
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z12AngleVectorsPKfPfS1_S1_
	call _Z8G_randomv
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x58], xmm0
	call _Z8G_randomv
	fstp dword [ebp-0x6c]
	movss xmm2, dword [ebp-0x6c]
	mulss xmm2, [edi+0x580]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [_float_360_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x44], xmm0
	movss [esp], xmm0
	movss [ebp-0x68], xmm2
	call sinf
	fstp dword [ebp-0x48]
	lea ebx, [esi+0x1d0]
	movss xmm0, dword [ebp-0x44]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	movss xmm2, dword [ebp-0x68]
	mulss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	movss [esi+0x1d0], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [esi+0x1d4], xmm1
	mulss xmm0, [ebp-0x1c]
	movss [esi+0x1d8], xmm0
	mulss xmm2, [ebp-0x48]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x30]
	addss xmm0, [esi+0x1d0]
	movss [esi+0x1d0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebx+0x4]
	movss [esi+0x1d4], xmm0
	mulss xmm2, [ebp-0x28]
	addss xmm2, [ebx+0x8]
	movss [esi+0x1d8], xmm2
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__90:
	mov eax, [edi+0x6b8]
	test eax, eax
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__100
	mov dword [esi+0xc], 0x1
	mov dword [esi+0x30], 0x1
	mov dword [esi+0x14], 0x0
	cmp dword [edi+0x6b8], 0x3
	jz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__110
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__100:
	cvtsi2ss xmm0, dword [edi+0x818]
	cvtsi2ss xmm1, dword [edi+0x568]
	divss xmm0, xmm1
	mulss xmm0, [_float_1000_00000000]
	movss [esi+0x1b4], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x810]
	jnz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__120
	jp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__120
	or dword [esi+0x180], 0x20000
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, esi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__40:
	cmp edx, 0x14
	mov eax, 0x14
	cmovle edx, eax
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__130
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__120:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x180]
	and eax, 0x20000
	or [esi+0x180], eax
	mov [esp], esi
	call _Z13SV_LinkEntityP9gentity_s
	mov eax, esi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__80:
	lea ecx, [esi+0x24]
	cvtsi2ss xmm0, dword [edi+0x568]
	movaps xmm1, xmm0
	mov eax, [ebp+0x14]
	mulss xmm1, [eax]
	movss [esi+0x24], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [ecx+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [ecx+0x8], xmm0
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__140
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__10:
	movss xmm5, dword [_float_1_00000000]
	movaps xmm2, xmm5
	divss xmm2, xmm1
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__150
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__60:
	lea eax, [esi+0x1dc]
	mov [esi+0x1dc], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test eax, eax
	jnz _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__160
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__70:
	mov dword [esi+0x1cc], 0x0
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__170
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__30:
	mov eax, ebx
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__180
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__20:
	movaps xmm2, xmm0
	addss xmm2, [_ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E15MYJAVELINOFFSET]
	movss [eax], xmm2
	mov ecx, [ebp+0x14]
	movss xmm3, dword [ecx]
	movss xmm0, dword [edx]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__190
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__210:
	movaps xmm1, xmm5
	mulss xmm3, xmm5
	mov ecx, [ebp+0x14]
	movss [ecx], xmm3
	movaps xmm0, xmm5
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	add eax, 0x3c
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [_ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E21MYJAVELINOFFSET_RIGHT]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	mov eax, [ebp+0x10]
	addss xmm0, [eax]
	movss [eax], xmm0
	add eax, 0x4
	mov [ebp-0x40], eax
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	mov edx, [ebp+0x10]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	add edx, 0x8
	mov [ebp-0x3c], edx
	mulss xmm1, [ebp-0x1c]
	mov ecx, [ebp+0x10]
	addss xmm1, [ecx+0x8]
	movss [ecx+0x8], xmm1
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__200
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__110:
	mov dword [esi+0xc], 0x5
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esi+0x10], eax
	mov dword [esi+0x1e8], 0x0
	mov dword [esi+0x1ec], 0x1
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__100
_Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__190:
	divss xmm5, xmm1
	jmp _Z12G_FireRocketP9gentity_sjPfS1_PKfS0_S3__210
	nop


;G_RunMissile(gentity_s*)
_Z12G_RunMissileP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ec
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x7c]
	lea eax, [ecx-0x3fe]
	cmp eax, 0x1
	jbe _Z12G_RunMissileP9gentity_s_10
	cmp dword [edi+0x5a4], 0x1
	jz _Z12G_RunMissileP9gentity_s_20
_Z12G_RunMissileP9gentity_s_10:
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z12G_RunMissileP9gentity_s_30
_Z12G_RunMissileP9gentity_s_590:
	lea esi, [eax+0x13c]
	lea edx, [eax+0x140]
	mov [ebp-0x134], edx
	lea ecx, [eax+0x144]
	mov [ebp-0x138], ecx
	mov edx, eax
_Z12G_RunMissileP9gentity_s_260:
	mov eax, [edx+0x13c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x140]
	mov [ebp-0x38], eax
	mov eax, [edx+0x144]
	mov [ebp-0x34], eax
	lea edx, [ebp-0x30]
	mov eax, [ebp+0x8]
	call _Z17MissileTrajectoryP9gentity_sPf
	movss xmm3, dword [ebp-0x30]
	mov ecx, [ebp+0x8]
	subss xmm3, [ecx+0x13c]
	movss [ebp-0x24], xmm3
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [ecx+0x140]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ecx+0x144]
	movss [ebp-0x1c], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z12G_RunMissileP9gentity_s_40
	movss xmm1, dword [_float_1_00000000]
_Z12G_RunMissileP9gentity_s_410:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	ucomiss xmm2, [_float_0_00100000]
	jb _Z12G_RunMissileP9gentity_s_50
_Z12G_RunMissileP9gentity_s_290:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x2c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_30_00000000]
	ja _Z12G_RunMissileP9gentity_s_60
	mov ecx, edx
_Z12G_RunMissileP9gentity_s_380:
	mov edx, [ecx+0x190]
	cmp word [ecx+0x154], 0x0
	jz _Z12G_RunMissileP9gentity_s_70
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
_Z12G_RunMissileP9gentity_s_280:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0x93], 0x0
	jnz _Z12G_RunMissileP9gentity_s_80
_Z12G_RunMissileP9gentity_s_580:
	mov edx, [ebp-0xac]
	mov eax, edx
	and eax, 0x1f00000
	cmp eax, 0x1400000
	jz _Z12G_RunMissileP9gentity_s_90
_Z12G_RunMissileP9gentity_s_720:
	and edx, 0x1f00000
	cmp edx, 0x900000
	jz _Z12G_RunMissileP9gentity_s_100
_Z12G_RunMissileP9gentity_s_740:
	movss xmm3, dword [ebp-0xbc]
	movss xmm0, dword [esi]
	movss xmm2, dword [ebp-0x30]
	subss xmm2, xmm0
	mulss xmm2, xmm3
	addss xmm2, xmm0
	movss [ebp-0x48], xmm2
	mov ecx, [ebp-0x134]
	movss xmm1, dword [ecx]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	mov eax, [ebp-0x138]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [ebp-0x40], xmm1
	movss [esi], xmm2
	lea edx, [esi+0x4]
	mov [ebp-0x11c], edx
	mov eax, [ebp-0x44]
	mov [esi+0x4], eax
	lea ebx, [esi+0x8]
	mov eax, [ebp-0x40]
	mov [esi+0x8], eax
	mov ecx, [ebp+0x8]
	test byte [ecx+0xb], 0x1
	jz _Z12G_RunMissileP9gentity_s_110
	mov eax, [edi+0x5a4]
	cmp eax, 0x1
	jz _Z12G_RunMissileP9gentity_s_120
	sub eax, 0x2
	cmp eax, 0x1
	jbe _Z12G_RunMissileP9gentity_s_130
_Z12G_RunMissileP9gentity_s_640:
	movss xmm0, dword [ebp-0xbc]
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	jp _Z12G_RunMissileP9gentity_s_140
	jz _Z12G_RunMissileP9gentity_s_150
_Z12G_RunMissileP9gentity_s_140:
	ucomiss xmm1, xmm0
	ja _Z12G_RunMissileP9gentity_s_160
_Z12G_RunMissileP9gentity_s_600:
	mov ecx, [ebp+0x8]
_Z12G_RunMissileP9gentity_s_110:
	mov [esp], ecx
	call _Z13SV_LinkEntityP9gentity_s
	mov edx, [edi+0x574]
	test edx, edx
	jle _Z12G_RunMissileP9gentity_s_170
	movss xmm0, dword [ebp-0x48]
	subss xmm0, [ebp-0x3c]
	movss xmm1, dword [ebp-0x44]
	subss xmm1, [ebp-0x38]
	movss xmm2, dword [ebp-0x40]
	subss xmm2, [ebp-0x34]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mov eax, [ebp+0x8]
	addss xmm0, [eax+0x1bc]
	movss [eax+0x1bc], xmm0
_Z12G_RunMissileP9gentity_s_170:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	cmp dword [eax+0x20], 0x3
	jz _Z12G_RunMissileP9gentity_s_180
_Z12G_RunMissileP9gentity_s_730:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jp _Z12G_RunMissileP9gentity_s_190
	jz _Z12G_RunMissileP9gentity_s_200
_Z12G_RunMissileP9gentity_s_190:
	test byte [ebp-0xac], 0x4
	jz _Z12G_RunMissileP9gentity_s_210
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12G_FreeEntityP9gentity_s
_Z12G_RunMissileP9gentity_s_300:
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12G_RunMissileP9gentity_s_30:
	cmp ecx, 0x3fe
	jz _Z12G_RunMissileP9gentity_s_220
	mov esi, eax
	add esi, 0x13c
	mov edx, eax
	mov eax, [eax+0x13c]
	mov [ebp-0x30], eax
	add edx, 0x140
	mov [ebp-0x134], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x140]
	mov [ebp-0x2c], eax
	add ecx, 0x144
	mov [ebp-0x138], ecx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x144]
	mov [ebp-0x28], eax
	mov eax, edx
	add eax, 0x1c0
	movss xmm1, dword [_float__1_63499999]
	movss xmm0, dword [edx+0x1c0]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	mov ecx, edx
	mov edx, [edx+0x190]
	cmp word [ecx+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_230
	mov ecx, 0x3ff
_Z12G_RunMissileP9gentity_s_390:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0xbc]
	mov [esp], eax
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0x93], 0x0
	jnz _Z12G_RunMissileP9gentity_s_240
_Z12G_RunMissileP9gentity_s_680:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jnz _Z12G_RunMissileP9gentity_s_250
	jp _Z12G_RunMissileP9gentity_s_250
	mov eax, [ebp+0x8]
	mov dword [eax+0xc], 0x5
	mov eax, level
	mov eax, [eax+0x1ec]
	mov edx, [ebp+0x8]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x0
	mov edx, [ebp+0x8]
	add edx, 0x18
	mov eax, [esi]
	mov ecx, [ebp+0x8]
	mov [ecx+0x18], eax
	mov ecx, [ebp-0x134]
	mov eax, [ecx]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x138]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov edx, [ebp+0x8]
	add edx, 0x24
	xor eax, eax
	mov ecx, [ebp+0x8]
	mov [ecx+0x24], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov edx, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_260
_Z12G_RunMissileP9gentity_s_370:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x190]
	or edx, 0x20
	cmp word [eax+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_270
_Z12G_RunMissileP9gentity_s_70:
	mov ecx, 0x3ff
	jmp _Z12G_RunMissileP9gentity_s_280
_Z12G_RunMissileP9gentity_s_50:
	jp _Z12G_RunMissileP9gentity_s_290
_Z12G_RunMissileP9gentity_s_310:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10G_RunThinkP9gentity_s
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12G_RunMissileP9gentity_s_20:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov esi, [eax+0x164]
	test esi, esi
	jz _Z12G_RunMissileP9gentity_s_10
	mov eax, [eax+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0xc], eax
	mov [esp], edx
	call _Z10G_RunThinkP9gentity_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13SV_LinkEntityP9gentity_s
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12G_RunMissileP9gentity_s_210:
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0xbc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13MissileImpactP9gentity_sP7trace_tPfS3_
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x4
	jnz _Z12G_RunMissileP9gentity_s_300
_Z12G_RunMissileP9gentity_s_430:
	mov eax, [missileDebugAttractors]
	cmp byte [eax+0xc], 0x0
	jz _Z12G_RunMissileP9gentity_s_310
	xor edi, edi
	mov esi, attrGlob
	mov dword [ebp-0x13c], attrGlob
	jmp _Z12G_RunMissileP9gentity_s_320
_Z12G_RunMissileP9gentity_s_350:
	mov ebx, colorOrange
_Z12G_RunMissileP9gentity_s_360:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z15G_DebugCircleExPKffS0_S0_ii
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z15G_DebugCircleExPKffS0_S0_ii
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z15G_DebugCircleExPKffS0_S0_ii
_Z12G_RunMissileP9gentity_s_330:
	add edi, 0x1
	add dword [ebp-0x13c], 0x1c
	add esi, 0x1c
	cmp edi, 0x20
	jz _Z12G_RunMissileP9gentity_s_310
_Z12G_RunMissileP9gentity_s_320:
	mov dword [ebp-0x84], 0x3f800000
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x3f800000
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x3f800000
	cmp byte [esi], 0x0
	jz _Z12G_RunMissileP9gentity_s_330
	mov ecx, [esi+0x4]
	cmp ecx, 0x3ff
	jz _Z12G_RunMissileP9gentity_s_340
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov ecx, g_entities
	add eax, ecx
	mov [ebp+0x8], eax
	mov edx, eax
	add edx, 0x13c
	mov eax, [eax+0x13c]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
_Z12G_RunMissileP9gentity_s_400:
	cmp byte [esi+0x1], 0x0
	jz _Z12G_RunMissileP9gentity_s_350
	mov ebx, colorGreen
	jmp _Z12G_RunMissileP9gentity_s_360
_Z12G_RunMissileP9gentity_s_60:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call _Z16SV_PointContentsPKfii
	test eax, eax
	jz _Z12G_RunMissileP9gentity_s_370
	mov ecx, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_380
_Z12G_RunMissileP9gentity_s_230:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_390
_Z12G_RunMissileP9gentity_s_340:
	mov eax, [ebp-0x13c]
	mov edx, [eax+0x8]
	mov [ebp-0x60], edx
	mov edx, eax
	mov eax, [eax+0xc]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x58], eax
	jmp _Z12G_RunMissileP9gentity_s_400
_Z12G_RunMissileP9gentity_s_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z12G_RunMissileP9gentity_s_410
_Z12G_RunMissileP9gentity_s_200:
	mov edx, [ebp+0x8]
	add edx, 0x24
	mov [ebp-0x12c], edx
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x24]
	add ecx, 0x28
	mov [ebp-0x118], ecx
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x28]
	add eax, 0x2c
	mov [ebp-0x114], eax
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+0x2c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z12G_RunMissileP9gentity_s_420
	jz _Z12G_RunMissileP9gentity_s_430
_Z12G_RunMissileP9gentity_s_420:
	mov dword [edx+0x7c], 0x3ff
	cmp dword [edi+0x12c], 0x2
	jnz _Z12G_RunMissileP9gentity_s_430
	test byte [edx+0x182], 0x2
	jnz _Z12G_RunMissileP9gentity_s_430
	mov eax, [edi+0x6b8]
	test eax, eax
	jnz _Z12G_RunMissileP9gentity_s_430
	mov eax, [edx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	mov edx, [ebp+0x8]
	cvttss2si eax, [edx+0x1b4]
	add eax, [edx+0x10]
	mov edx, level
	cmp eax, [edx+0x1ec]
	jge _Z12G_RunMissileP9gentity_s_440
	movss xmm0, dword [edi+0x814]
	movss [ebp-0x10c], xmm0
	mov eax, [ebp+0x8]
	test byte [eax+0x182], 0x1
	jz _Z12G_RunMissileP9gentity_s_450
	mov ebx, 0x1
_Z12G_RunMissileP9gentity_s_460:
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0x0
	call _Z8G_flrandff
	fstp dword [ebp-0x1ac]
	movss xmm0, dword [ebp-0x1ac]
	mulss xmm0, [ebp-0x10c]
	movss [ebp+ebx*4-0x64], xmm0
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z12G_RunMissileP9gentity_s_460
	pxor xmm0, xmm0
	mov edx, [ebp+0x8]
	ucomiss xmm0, [edx+0x1d4]
	ja _Z12G_RunMissileP9gentity_s_470
	mov edx, [ebp-0x60]
_Z12G_RunMissileP9gentity_s_930:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x1d0]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z12G_RunMissileP9gentity_s_480
	mov eax, [ebp-0x5c]
	xor eax, 0x80000000
	mov [ebp-0x5c], eax
_Z12G_RunMissileP9gentity_s_480:
	mov ecx, [ebp+0x8]
	add ecx, 0x1d0
	mov eax, [ebp+0x8]
	mov [eax+0x1d0], edx
	mov eax, [ebp-0x5c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x58]
	mov [ecx+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov edx, [ebp+0x8]
	mov [edx+0x10], eax
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [edi+0x810]
	movss [edx+0x1b4], xmm0
	or dword [edx+0x180], 0x10000
_Z12G_RunMissileP9gentity_s_900:
	mov edx, [ebp+0x8]
	add edx, 0x3c
	mov [ebp-0x110], edx
	movss xmm1, dword [_float_0_05000000]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x1d0]
	mulss xmm0, xmm1
	addss xmm0, [eax+0x3c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x4]
	movss [ebp-0x68], xmm0
	mulss xmm1, [ecx+0x8]
	addss xmm1, [edx+0x8]
	movss [ebp-0x64], xmm1
	lea ebx, [ebp-0x6c]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z10G_SetAngleP9gentity_sPKf
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AngleVectorsPKfPfS1_S1_
	cvtsi2ss xmm1, dword [edi+0x568]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x54]
	mov edx, [ebp-0x12c]
	movss [edx], xmm0
	add edx, 0x4
	mov [ebp-0x108], edx
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x50]
	mov ecx, [ebp-0x12c]
	movss [ecx+0x4], xmm0
	add ecx, 0x8
	mov [ebp-0x104], ecx
	mulss xmm1, [ebp-0x4c]
	mov eax, [ebp-0x12c]
	movss [eax+0x8], xmm1
	mov edi, [ebp+0x8]
	add edi, 0x18
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+0x18], eax
	mov ecx, [ebp-0x134]
	mov eax, [ecx]
	mov [edi+0x4], eax
	mov edx, [ebp-0x138]
	mov eax, [edx]
	mov [edi+0x8], eax
	mov ecx, [ebp+0x8]
	mov dword [ecx+0xc], 0x1
	mov dword [ecx+0x30], 0x1
	mov eax, [ecx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xfc], eax
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov edx, [ebp-0x12c]
	mov [esp], edx
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x100]
	movss xmm0, dword [ebp-0x100]
	ucomiss xmm0, [_float_0_00001000]
	jp _Z12G_RunMissileP9gentity_s_490
	jb _Z12G_RunMissileP9gentity_s_430
_Z12G_RunMissileP9gentity_s_490:
	xor esi, esi
	pxor xmm1, xmm1
	movss [ebp-0xf8], xmm1
	movss [ebp-0xf4], xmm1
	movaps xmm7, xmm1
	mov ebx, attrGlob
	mov dword [ebp-0x140], attrGlob
	jmp _Z12G_RunMissileP9gentity_s_500
_Z12G_RunMissileP9gentity_s_560:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	lea edx, [eax+0x13c]
	movss xmm2, dword [eax+0x13c]
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
_Z12G_RunMissileP9gentity_s_570:
	movaps xmm3, xmm2
	subss xmm3, [edi]
	movaps xmm5, xmm1
	subss xmm5, [edi+0x4]
	movaps xmm6, xmm0
	subss xmm6, [edi+0x8]
	movss xmm2, dword [ebp-0x84]
	movaps xmm4, xmm3
	mulss xmm4, xmm2
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x80]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x7c]
	addss xmm4, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	jae _Z12G_RunMissileP9gentity_s_510
	movaps xmm1, xmm4
	xorps xmm1, [_data16_80000000]
	mulss xmm2, xmm1
	addss xmm2, xmm3
	movss [ebp-0x78], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x80]
	addss xmm0, xmm5
	movss [ebp-0x74], xmm0
	mulss xmm1, [ebp-0x7c]
	addss xmm1, xmm6
	movss [ebp-0x70], xmm1
	lea eax, [ebp-0x90]
	mov [esp+0x4], eax
	lea eax, [ebp-0x78]
	mov [esp], eax
	movss [ebp-0x168], xmm3
	movss [ebp-0x178], xmm4
	movss [ebp-0x188], xmm5
	movss [ebp-0x198], xmm6
	movss [ebp-0x1a8], xmm7
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x1ac]
	movss xmm2, dword [ebp-0x1ac]
	movss xmm3, dword [ebp-0x168]
	movss xmm4, dword [ebp-0x178]
	movss xmm5, dword [ebp-0x188]
	movss xmm6, dword [ebp-0x198]
	movss xmm7, dword [ebp-0x1a8]
	ucomiss xmm2, [_float_0_00001000]
	jae _Z12G_RunMissileP9gentity_s_520
	jp _Z12G_RunMissileP9gentity_s_520
	cmp byte [ebx+0x1], 0x0
	jnz _Z12G_RunMissileP9gentity_s_510
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0xbf800000
_Z12G_RunMissileP9gentity_s_520:
	lea eax, [ebx+0x1]
	mov [ebp-0xf0], eax
	cmp byte [ebx+0x1], 0x0
	jnz _Z12G_RunMissileP9gentity_s_530
	movss xmm0, dword [ebp-0x88]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z12G_RunMissileP9gentity_s_530
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0xbf800000
	pxor xmm2, xmm2
_Z12G_RunMissileP9gentity_s_530:
	mulss xmm3, xmm3
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm6, xmm6
	addss xmm3, xmm6
	sqrtss xmm0, xmm3
	movss xmm1, dword [ebx+0x18]
	ucomiss xmm0, xmm1
	jbe _Z12G_RunMissileP9gentity_s_540
_Z12G_RunMissileP9gentity_s_510:
	add esi, 0x1
	add dword [ebp-0x140], 0x1c
	add ebx, 0x1c
	cmp esi, 0x20
	jz _Z12G_RunMissileP9gentity_s_550
_Z12G_RunMissileP9gentity_s_500:
	cmp byte [ebx], 0x0
	jz _Z12G_RunMissileP9gentity_s_510
	mov ecx, [ebx+0x4]
	cmp ecx, 0x3ff
	jnz _Z12G_RunMissileP9gentity_s_560
	mov eax, [ebp-0x140]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [eax+0x10]
	jmp _Z12G_RunMissileP9gentity_s_570
_Z12G_RunMissileP9gentity_s_80:
	mov dword [ebp-0xbc], 0x0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	mov ecx, [ebp-0x134]
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	mov eax, [ebp-0x138]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0xb8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	jmp _Z12G_RunMissileP9gentity_s_580
_Z12G_RunMissileP9gentity_s_250:
	mov edx, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_260
_Z12G_RunMissileP9gentity_s_220:
	mov eax, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_590
_Z12G_RunMissileP9gentity_s_160:
	movss xmm0, dword [ebp-0xb0]
	ucomiss xmm0, [_float_0_69999999]
	jbe _Z12G_RunMissileP9gentity_s_600
_Z12G_RunMissileP9gentity_s_150:
	mov edx, [esi]
	mov [ebp-0x60], edx
	mov edx, [ebp-0x134]
	mov eax, [edx]
	mov [ebp-0x5c], eax
	mov ecx, [ebp-0x138]
	movss xmm1, dword [ecx]
	movss [ebp-0x58], xmm1
	mov eax, [esi]
	mov [ebp-0x30], eax
	mov eax, [edx]
	mov [ebp-0x2c], eax
	movss xmm0, dword [ecx]
	addss xmm1, [_float_0_13500001]
	movss [ebp-0x58], xmm1
	subss xmm0, [_float_1_50000000]
	movss [ebp-0x28], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x190]
	cmp word [eax+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_610
	mov ecx, 0x3ff
_Z12G_RunMissileP9gentity_s_790:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea eax, [ebp-0xe8]
	mov [esp], eax
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0xbf], 0x0
	jnz _Z12G_RunMissileP9gentity_s_620
_Z12G_RunMissileP9gentity_s_810:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe8]
	jp _Z12G_RunMissileP9gentity_s_630
	jz _Z12G_RunMissileP9gentity_s_600
_Z12G_RunMissileP9gentity_s_630:
	mov eax, [ebp-0xe8]
	mov [ebp-0xbc], eax
	mov eax, [ebp-0xe4]
	mov [ebp-0xb8], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0xb4], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0xb0], eax
	mov eax, [ebp-0xd8]
	mov [ebp-0xac], eax
	mov eax, [ebp-0xd4]
	mov [ebp-0xa8], eax
	mov eax, [ebp-0xd0]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xcc]
	mov [ebp-0xa0], eax
	mov eax, [ebp-0xc8]
	mov [ebp-0x9c], eax
	mov eax, [ebp-0xc4]
	mov [ebp-0x98], eax
	mov eax, [ebp-0xc0]
	mov [ebp-0x94], eax
	movss xmm2, dword [ebp-0xbc]
	movss xmm1, dword [ebp-0x60]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x48], xmm1
	movss xmm1, dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	movss xmm1, dword [ebp-0x58]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm0, xmm1
	movss [ebp-0x40], xmm0
	movss xmm1, dword [_float_1_50000000]
	addss xmm0, xmm1
	mov ecx, [ebp+0x8]
	subss xmm0, [ecx+0x144]
	addss xmm0, [ecx+0x20]
	movss [ecx+0x20], xmm0
	mov eax, [ebp-0x48]
	mov [esi], eax
	mov eax, [ebp-0x44]
	mov edx, [ebp-0x11c]
	mov [edx], eax
	mov eax, [ebp-0x40]
	mov [ebx], eax
	addss xmm1, [ecx+0x144]
	movss [ecx+0x144], xmm1
	mov ecx, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_110
_Z12G_RunMissileP9gentity_s_130:
	movss xmm0, dword [ebp-0xb0]
	ucomiss xmm0, [_float_0_69999999]
	jbe _Z12G_RunMissileP9gentity_s_640
_Z12G_RunMissileP9gentity_s_120:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jbe _Z12G_RunMissileP9gentity_s_600
	movss xmm4, dword [ebp-0xb8]
	movss xmm1, dword [_float_0_13500001]
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm0, [esi]
	movss [ebp-0x60], xmm0
	movss xmm3, dword [ebp-0xb4]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mov eax, [ebp-0x134]
	addss xmm0, [eax]
	movss [ebp-0x5c], xmm0
	movss xmm2, dword [ebp-0xb0]
	mulss xmm1, xmm2
	mov edx, [ebp-0x138]
	addss xmm1, [edx]
	movss [ebp-0x58], xmm1
	movss xmm0, dword [_float__1_50000000]
	mulss xmm4, xmm0
	addss xmm4, [esi]
	movss [ebp-0x30], xmm4
	mulss xmm3, xmm0
	addss xmm3, [eax]
	movss [ebp-0x2c], xmm3
	mulss xmm2, xmm0
	addss xmm2, [edx]
	movss [ebp-0x28], xmm2
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x190]
	cmp word [ecx+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_650
	mov ecx, 0x3ff
_Z12G_RunMissileP9gentity_s_840:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea eax, [ebp-0xe8]
	mov [esp], eax
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0xbf], 0x0
	jnz _Z12G_RunMissileP9gentity_s_660
_Z12G_RunMissileP9gentity_s_850:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe8]
	jp _Z12G_RunMissileP9gentity_s_670
	jz _Z12G_RunMissileP9gentity_s_600
_Z12G_RunMissileP9gentity_s_670:
	mov eax, [ebp-0xe8]
	mov [ebp-0xbc], eax
	mov eax, [ebp-0xe4]
	mov [ebp-0xb8], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0xb4], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0xb0], eax
	mov edx, [ebp-0xd8]
	mov [ebp-0xac], edx
	mov eax, [ebp-0xd4]
	mov [ebp-0xa8], eax
	mov eax, [ebp-0xd0]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xcc]
	mov [ebp-0xa0], eax
	mov eax, [ebp-0xc8]
	mov [ebp-0x9c], eax
	mov eax, [ebp-0xc4]
	mov [ebp-0x98], eax
	mov eax, [ebp-0xc0]
	mov [ebp-0x94], eax
	movss xmm4, dword [ebp-0xbc]
	movss xmm0, dword [ebp-0x60]
	movss xmm3, dword [ebp-0x30]
	subss xmm3, xmm0
	mulss xmm3, xmm4
	addss xmm3, xmm0
	movss [ebp-0x48], xmm3
	movss xmm0, dword [ebp-0x5c]
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, xmm0
	mulss xmm2, xmm4
	addss xmm2, xmm0
	movss [ebp-0x44], xmm2
	movss xmm1, dword [ebp-0x58]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm0, xmm1
	movss [ebp-0x40], xmm0
	subss xmm3, [ebp-0x30]
	subss xmm2, [ebp-0x2c]
	subss xmm0, [ebp-0x28]
	mov eax, [ebp+0x8]
	add eax, 0x18
	movaps xmm1, xmm3
	mov ecx, [ebp+0x8]
	addss xmm1, [ecx+0x18]
	movss [ecx+0x18], xmm1
	movaps xmm1, xmm2
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movaps xmm1, xmm0
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	addss xmm3, [ebp-0x48]
	movss [esi], xmm3
	addss xmm2, [ebp-0x44]
	mov eax, [ebp-0x11c]
	movss [eax], xmm2
	addss xmm0, [ebp-0x40]
	movss [ebx], xmm0
	mov ecx, [ebp+0x8]
	jmp _Z12G_RunMissileP9gentity_s_110
_Z12G_RunMissileP9gentity_s_240:
	mov dword [ebp-0xbc], 0x0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	mov edx, [ebp-0x134]
	movss xmm0, dword [edx]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	mov ecx, [ebp-0x138]
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0xb8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	jmp _Z12G_RunMissileP9gentity_s_680
_Z12G_RunMissileP9gentity_s_90:
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x24
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z12G_RunMissileP9gentity_s_690
_Z12G_RunMissileP9gentity_s_830:
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call _Z12G_TempEntityPKfi
	mov ebx, eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [ebx+0x9c], eax
	mov dword [ebx+0xd4], 0x0
	mov eax, [ebp-0xac]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [ebx+0x84], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebx+0x74], eax
	mov eax, [edx+0xc4]
	mov [ebx+0xc4], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x190]
	cmp word [ecx+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_700
	mov ecx, 0x3ff
_Z12G_RunMissileP9gentity_s_800:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0x93], 0x0
	jnz _Z12G_RunMissileP9gentity_s_710
_Z12G_RunMissileP9gentity_s_820:
	mov edx, [ebp-0xac]
	jmp _Z12G_RunMissileP9gentity_s_720
_Z12G_RunMissileP9gentity_s_180:
	mov dword [esp+0x10], 0x3
	mov eax, [edi+0x55c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z27G_GrenadeTouchTriggerDamageP9gentity_sPfS1_ii
	jmp _Z12G_RunMissileP9gentity_s_730
_Z12G_RunMissileP9gentity_s_100:
	mov eax, [edi+0x34c]
	mov [ebp-0x128], eax
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	cmp ax, 0x3fd
	ja _Z12G_RunMissileP9gentity_s_740
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	mov ecx, g_entities
	mov [ebp-0x130], ecx
	lea ebx, [edx+ecx]
	cmp byte [ebx+0x16b], 0x0
	jz _Z12G_RunMissileP9gentity_s_740
	mov ecx, [ebp-0x128]
	test ecx, ecx
	jz _Z12G_RunMissileP9gentity_s_740
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [esp], eax
	call _Z26BG_EvaluateTrajectoryDeltaPK12trajectory_tiPf
	movss xmm0, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x50]
	movss xmm2, dword [ebp-0x4c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	jp _Z12G_RunMissileP9gentity_s_750
	jb _Z12G_RunMissileP9gentity_s_740
_Z12G_RunMissileP9gentity_s_750:
	mov edx, [ebp+0x8]
	add edx, 0x154
	mov [ebp-0x124], edx
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x154], 0x0
	jnz _Z12G_RunMissileP9gentity_s_760
	xor edx, edx
_Z12G_RunMissileP9gentity_s_880:
	mov dword [esp+0x30], 0x0
	movzx eax, word [ebp-0x98]
	mov [esp+0x2c], eax
	movzx eax, word [ebp-0x9a]
	mov [esp+0x28], eax
	movzx eax, word [ebp-0x96]
	mov [esp+0x24], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0xc4]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0xf
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0x128]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	lea ecx, [ebp-0x54]
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	mov edx, [ebx+0x120]
	mov [ebp-0x120], edx
	mov dword [ebx+0x120], 0x0
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x190]
	mov edx, [ebp-0x124]
	cmp word [edx], 0x0
	jnz _Z12G_RunMissileP9gentity_s_770
	mov edx, 0x3ff
_Z12G_RunMissileP9gentity_s_890:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea eax, [ebp-0xbc]
	mov [esp], eax
	call _Z17G_LocationalTraceP7trace_tPKfS2_iiPh
	cmp byte [ebp-0x93], 0x0
	jz _Z12G_RunMissileP9gentity_s_780
	mov dword [ebp-0xbc], 0x0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x60], xmm0
	mov edx, [ebp-0x134]
	movss xmm0, dword [edx]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x5c], xmm0
	mov ecx, [ebp-0x138]
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x58], xmm0
	lea eax, [ebp-0xb8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
_Z12G_RunMissileP9gentity_s_780:
	mov edx, [ebp-0x120]
	mov [ebx+0x120], edx
	jmp _Z12G_RunMissileP9gentity_s_740
_Z12G_RunMissileP9gentity_s_610:
	movzx eax, word [eax+0x154]
	lea ecx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_790
_Z12G_RunMissileP9gentity_s_270:
	movzx eax, word [eax+0x154]
	lea ecx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_280
_Z12G_RunMissileP9gentity_s_700:
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_800
_Z12G_RunMissileP9gentity_s_620:
	mov dword [ebp-0xe8], 0x0
	movss xmm0, dword [ebp-0x60]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0xe4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	jmp _Z12G_RunMissileP9gentity_s_810
_Z12G_RunMissileP9gentity_s_710:
	mov dword [ebp-0xbc], 0x0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	mov ecx, [ebp-0x134]
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	mov eax, [ebp-0x138]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x4c], xmm0
	lea edx, [ebp-0xb8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x54]
	mov [esp], ecx
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	jmp _Z12G_RunMissileP9gentity_s_820
_Z12G_RunMissileP9gentity_s_690:
	jp _Z12G_RunMissileP9gentity_s_830
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x4c], xmm0
	jmp _Z12G_RunMissileP9gentity_s_830
_Z12G_RunMissileP9gentity_s_650:
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_840
_Z12G_RunMissileP9gentity_s_660:
	mov dword [ebp-0xe8], 0x0
	movss xmm0, dword [ebp-0x60]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x4c], xmm0
	lea eax, [ebp-0xe4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	jmp _Z12G_RunMissileP9gentity_s_850
_Z12G_RunMissileP9gentity_s_540:
	divss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0xec], xmm1
	mulss xmm1, [ebx+0x14]
	movss [ebp-0xec], xmm1
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	divss xmm0, xmm4
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	movss [ebp-0x158], xmm2
	movss [ebp-0x178], xmm4
	movss [ebp-0x1a8], xmm7
	call atan
	fstp qword [ebp-0x1b8]
	movsd xmm0, qword [ebp-0x1b8]
	mulsd xmm0, [_double_0_63662028]
	cvtsd2ss xmm0, xmm0
	mov edx, [ebp-0xf0]
	movzx eax, byte [edx]
	test al, al
	movss xmm2, dword [ebp-0x158]
	movss xmm4, dword [ebp-0x178]
	movss xmm7, dword [ebp-0x1a8]
	jnz _Z12G_RunMissileP9gentity_s_860
	subss xmm0, [_float_1_00000000]
_Z12G_RunMissileP9gentity_s_860:
	movss xmm3, dword [ebp-0xec]
	mulss xmm3, xmm0
	test al, al
	jz _Z12G_RunMissileP9gentity_s_870
	mov ecx, [ebp-0xfc]
	cvtsi2ss xmm0, dword [ecx+0x568]
	mulss xmm0, xmm2
	divss xmm0, xmm4
	mulss xmm0, [_float_20_00000000]
	movaps xmm2, xmm3
	subss xmm2, xmm0
	pxor xmm1, xmm1
	cmpss xmm1, xmm2, 0x6
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
_Z12G_RunMissileP9gentity_s_870:
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x90]
	addss xmm7, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0xf4]
	movss [ebp-0xf4], xmm0
	mulss xmm3, [ebp-0x88]
	addss xmm3, [ebp-0xf8]
	movss [ebp-0xf8], xmm3
	jmp _Z12G_RunMissileP9gentity_s_510
_Z12G_RunMissileP9gentity_s_760:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, [ebp-0x130]
	jmp _Z12G_RunMissileP9gentity_s_880
_Z12G_RunMissileP9gentity_s_770:
	mov edx, [ebp-0x124]
	movzx eax, word [edx]
	lea edx, [eax-0x1]
	jmp _Z12G_RunMissileP9gentity_s_890
_Z12G_RunMissileP9gentity_s_440:
	mov ecx, [ebp+0x8]
	test byte [ecx+0x182], 0x1
	jz _Z12G_RunMissileP9gentity_s_430
	lea ecx, [ecx+0x1d0]
	jmp _Z12G_RunMissileP9gentity_s_900
_Z12G_RunMissileP9gentity_s_550:
	mov eax, vec3_origin
	ucomiss xmm7, [eax]
	jnz _Z12G_RunMissileP9gentity_s_910
	jp _Z12G_RunMissileP9gentity_s_910
	movss xmm0, dword [ebp-0xf4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z12G_RunMissileP9gentity_s_910
	jp _Z12G_RunMissileP9gentity_s_910
	movss xmm1, dword [ebp-0xf8]
	ucomiss xmm1, [eax+0x8]
	jnz _Z12G_RunMissileP9gentity_s_910
	jnp _Z12G_RunMissileP9gentity_s_430
_Z12G_RunMissileP9gentity_s_910:
	movss xmm0, dword [_float_0_05000000]
	mulss xmm7, xmm0
	mov edx, [ebp-0x12c]
	addss xmm7, [edx]
	movss [edx], xmm7
	movss xmm1, dword [ebp-0xf4]
	mulss xmm1, xmm0
	movss [ebp-0xf4], xmm1
	mov eax, [ebp-0x118]
	addss xmm1, [eax]
	mov edx, [ebp-0x108]
	movss [edx], xmm1
	mulss xmm0, [ebp-0xf8]
	movss [ebp-0xf8], xmm0
	mov ecx, [ebp-0x114]
	addss xmm0, [ecx]
	mov eax, [ebp-0x104]
	movss [eax], xmm0
	lea edx, [ebp-0x84]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x12c]
	mov [esp], ecx
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov eax, [ebp-0xfc]
	cvtsi2ss xmm0, dword [eax+0x568]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x84]
	mov edx, [ebp-0x12c]
	movss [edx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x80]
	mov ecx, [ebp-0x108]
	movss [ecx], xmm1
	mulss xmm0, [ebp-0x7c]
	mov eax, [ebp-0x104]
	movss [eax], xmm0
	mov edx, [ebp-0x110]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x84]
	mov [esp], ecx
	call _Z11vectoanglesPKfPf
	jmp _Z12G_RunMissileP9gentity_s_430
_Z12G_RunMissileP9gentity_s_450:
	mov ebx, 0x1
_Z12G_RunMissileP9gentity_s_920:
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call _Z8G_flrandff
	fstp dword [ebp-0x1ac]
	movss xmm0, dword [ebp-0x1ac]
	mulss xmm0, [ebp-0x10c]
	movss [ebp+ebx*4-0x64], xmm0
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z12G_RunMissileP9gentity_s_920
	mov edx, [ebp-0x60]
	jmp _Z12G_RunMissileP9gentity_s_480
_Z12G_RunMissileP9gentity_s_470:
	mov edx, [ebp-0x60]
	xor edx, 0x80000000
	mov [ebp-0x60], edx
	jmp _Z12G_RunMissileP9gentity_s_930


;G_FireGrenade(gentity_s*, float*, float*, int, unsigned char, int, int)
_Z13G_FireGrenadeP9gentity_sPfS1_ihii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x14]
	movzx ebx, byte [ebp+0x18]
	mov [esp], esi
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x1c], eax
	call _Z7G_Spawnv
	mov edi, eax
	mov eax, scr_const
	movzx eax, word [eax+0x3e]
	mov [esp+0x4], eax
	lea eax, [edi+0x170]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov [edi+0xc4], esi
	movzx ebx, bl
	mov [edi+0xc8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19G_InitGrenadeEntityP9gentity_sS0_
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_10
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x5b0]
	test eax, eax
	jnz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_20
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_10:
	xor eax, eax
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_160:
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21G_InitGrenadeMovementP9gentity_sPKfS2_i
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_30
	mov ecx, [edi+0x54]
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mulss xmm0, [_float__35_00000000]
	divss xmm0, dword [_float_600_00000000]
	addss xmm0, [_float_85_00000000]
	cvttss2si edx, xmm0
	cmp edx, 0x31
	jle _Z13G_FireGrenadeP9gentity_sPfS1_ihii_40
	mov edx, 0x32
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_150:
	lea eax, [edx+ecx]
	mov [edi+0x54], eax
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_30:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x574]
	test eax, eax
	jz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_50
	mov eax, [ebp+0x20]
	test eax, eax
	jle _Z13G_FireGrenadeP9gentity_sPfS1_ihii_60
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_70
	mov edx, [ebp-0x1c]
	mov esi, [edx+0x5ac]
	test esi, esi
	jnz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_80
	mov dword [eax+0x44], 0x0
	mov ecx, level
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_140:
	mov eax, [ecx+0x1ec]
	mov [edi+0x1b8], eax
	mov ebx, [edi+0x19c]
	test ebx, ebx
	jnz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_90
	mov eax, [ecx+0x1ec]
	add eax, 0x7530
	mov [edi+0x19c], eax
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_90:
	mov eax, [ecx+0x1ec]
	add eax, 0xea60
	cmp eax, [edi+0x19c]
	jge _Z13G_FireGrenadeP9gentity_sPfS1_ihii_100
	mov [edi+0x19c], eax
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_100:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x584]
	test eax, eax
	jz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_110
	mov [esp], eax
	call _Z13XModelGetNamePK6XModel
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10G_SetModelP9gentity_sPKc
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_110:
	mov [esp], edi
	call _Z12G_DObjUpdateP9gentity_s
	mov eax, [ebp-0x1c]
	mov ecx, [eax+0x574]
	test ecx, ecx
	jnz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_120
	mov eax, [eax]
	mov [esp], eax
	call _Z13Scr_AddStringPKc
	mov [esp], edi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x42]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_120:
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_80:
	mov edx, [eax+0x44]
	test edx, edx
	jnz _Z13G_FireGrenadeP9gentity_sPfS1_ihii_130
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_70:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	add [ebp+0x20], eax
	mov edx, [ebp+0x20]
	mov [edi+0x19c], edx
	jmp _Z13G_FireGrenadeP9gentity_sPfS1_ihii_140
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_40:
	cmp edx, 0x14
	mov eax, 0x14
	cmovle edx, eax
	jmp _Z13G_FireGrenadeP9gentity_sPfS1_ihii_150
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_20:
	mov eax, 0x1
	jmp _Z13G_FireGrenadeP9gentity_sPfS1_ihii_160
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_130:
	mov ecx, level
	add edx, [ecx+0x1ec]
	mov [edi+0x19c], edx
	mov dword [eax+0x44], 0x0
	jmp _Z13G_FireGrenadeP9gentity_sPfS1_ihii_140
_Z13G_FireGrenadeP9gentity_sPfS1_ihii_60:
	mov ecx, level
	jmp _Z13G_FireGrenadeP9gentity_sPfS1_ihii_140


;G_ExplodeMissile(gentity_s*)
_Z16G_ExplodeMissileP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	cmp dword [eax+0x144], 0x2
	jz _Z16G_ExplodeMissileP9gentity_s_10
_Z16G_ExplodeMissileP9gentity_s_70:
	lea ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	cvttss2si eax, [ebp-0x24]
	cvtsi2ss xmm0, eax
	movss [ebp-0x24], xmm0
	cvttss2si eax, [ebp-0x20]
	cvtsi2ss xmm0, eax
	movss [ebp-0x20], xmm0
	cvttss2si eax, [ebp-0x1c]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1c], xmm0
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z11G_SetOriginP9gentity_sPKf
	lea eax, [esi+0x13c]
	mov [ebp-0x98], eax
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _Z16SV_PointContentsPKfii
	test eax, eax
	setnz bl
	test bl, bl
	jnz _Z16G_ExplodeMissileP9gentity_s_20
_Z16G_ExplodeMissileP9gentity_s_210:
	mov byte [ebp-0x8d], 0x1
_Z16G_ExplodeMissileP9gentity_s_220:
	or dword [esi+0x8], 0x20
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call _Z13Scr_AddVectorPKf
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	cmp byte [ebp-0x8d], 0x0
	jnz _Z16G_ExplodeMissileP9gentity_s_30
	mov dword [ebp-0x94], 0x0
_Z16G_ExplodeMissileP9gentity_s_190:
	mov eax, [edi+0x55c]
	test eax, eax
	jnz _Z16G_ExplodeMissileP9gentity_s_40
	cmp dword [edi+0x588], 0x2
	jz _Z16G_ExplodeMissileP9gentity_s_50
_Z16G_ExplodeMissileP9gentity_s_120:
	cmp byte [ebp-0x8d], 0x0
	jnz _Z16G_ExplodeMissileP9gentity_s_60
_Z16G_ExplodeMissileP9gentity_s_80:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	mov [esp], esi
	call _Z12G_FreeEntityP9gentity_s
_Z16G_ExplodeMissileP9gentity_s_90:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16G_ExplodeMissileP9gentity_s_10:
	cmp dword [esi+0x7c], 0x3ff
	jnz _Z16G_ExplodeMissileP9gentity_s_70
	mov eax, level
	mov eax, [eax+0x1ec]
	sub eax, [esi+0x1b8]
	cmp eax, 0xea60
	jg _Z16G_ExplodeMissileP9gentity_s_80
	mov dword [esi+0x19c], 0x32
	jmp _Z16G_ExplodeMissileP9gentity_s_90
_Z16G_ExplodeMissileP9gentity_s_60:
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call _Z13SV_LinkEntityP9gentity_s
	jmp _Z16G_ExplodeMissileP9gentity_s_80
_Z16G_ExplodeMissileP9gentity_s_40:
	movss xmm1, dword [edi+0x564]
	cvtss2sd xmm0, xmm1
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [esp], xmm0
	movss [ebp-0xa8], xmm1
	call cosf
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	movss xmm1, dword [ebp-0xa8]
	subss xmm1, [_float_180_00000000]
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x6
	andps xmm2, xmm0
	movss xmm1, dword [_float__1_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x8c], xmm0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	lea eax, [esi+0x148]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov ebx, [eax+0x24]
	cmp ebx, 0x4
	jz _Z16G_ExplodeMissileP9gentity_s_100
_Z16G_ExplodeMissileP9gentity_s_280:
	cvtsi2ss xmm0, dword [edi+0x554]
	cvtsi2ss xmm2, dword [edi+0x560]
	cvtsi2ss xmm1, dword [edi+0x55c]
	cmp word [esi+0x198], 0x0
	jnz _Z16G_ExplodeMissileP9gentity_s_110
	xor eax, eax
_Z16G_ExplodeMissileP9gentity_s_260:
	mov dword [esp+0x28], 0xffffffff
	mov [esp+0x24], ebx
	mov [esp+0x20], esi
	lea ecx, [ebp-0x3c]
	mov [esp+0x1c], ecx
	movss xmm3, dword [ebp-0x8c]
	movss [esp+0x18], xmm3
	movss [esp+0x14], xmm0
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x98]
	mov [esp], eax
	call _Z14G_RadiusDamagePKfP9gentity_sS2_ffffPfS2_ii
	cmp dword [edi+0x588], 0x2
	jnz _Z16G_ExplodeMissileP9gentity_s_120
_Z16G_ExplodeMissileP9gentity_s_50:
	mov ebx, [esi+0x1cc]
	cmp word [esi+0x198], 0x0
	jnz _Z16G_ExplodeMissileP9gentity_s_130
	xor eax, eax
_Z16G_ExplodeMissileP9gentity_s_270:
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	cvtsi2ss xmm0, dword [edi+0x558]
	movss [esp+0x8], xmm0
	cvtsi2ss xmm0, dword [edi+0x554]
	movss [esp+0x4], xmm0
	mov edx, [ebp-0x98]
	mov [esp], edx
	call _Z16G_FlashbangBlastPKfffP9gentity_s6team_t
	jmp _Z16G_ExplodeMissileP9gentity_s_120
_Z16G_ExplodeMissileP9gentity_s_30:
	call _Z7G_Spawnv
	mov [ebp-0x94], eax
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x20
	mov eax, [esi+0xc4]
	mov edx, [ebp-0x94]
	mov [edx+0xc4], eax
	mov eax, [esi+0xc8]
	mov [edx+0xc8], eax
	mov eax, [esi+0x120]
	mov [edx+0x120], eax
	mov [esp], edx
	call _Z17G_BroadcastEntityP9gentity_s
	test bl, bl
	jz _Z16G_ExplodeMissileP9gentity_s_140
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call _Z11G_SetOriginP9gentity_sPKf
	mov ebx, [ebp-0x94]
	mov dword [ebx+0x84], 0x14
	lea edx, [ebp-0x48]
_Z16G_ExplodeMissileP9gentity_s_250:
	mov eax, [edi+0x588]
	test eax, eax
	jz _Z16G_ExplodeMissileP9gentity_s_150
	cmp eax, 0x6
	jz _Z16G_ExplodeMissileP9gentity_s_150
	cmp eax, 0x1
	jz _Z16G_ExplodeMissileP9gentity_s_160
	cmp eax, 0x2
	jz _Z16G_ExplodeMissileP9gentity_s_170
	mov [esp], edx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x31
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call _Z10G_AddEventP9gentity_sij
	mov eax, level
	mov eax, [eax+0x1ec]
	mov ebx, [ebp-0x94]
	mov [ebx+0x54], eax
_Z16G_ExplodeMissileP9gentity_s_290:
	cmp dword [edi+0x588], 0x5
	jnz _Z16G_ExplodeMissileP9gentity_s_180
	mov eax, [edi+0x58c]
	test eax, eax
	jz _Z16G_ExplodeMissileP9gentity_s_180
	mov edx, [ebp-0x94]
	cvttss2si eax, [edx+0x18]
	cvtsi2ss xmm0, eax
	movss [edx+0x18], xmm0
	cvttss2si eax, [edx+0x1c]
	cvtsi2ss xmm0, eax
	movss [edx+0x1c], xmm0
	cvttss2si eax, [edx+0x20]
	cvtsi2ss xmm0, eax
	movss [edx+0x20], xmm0
	mov eax, edx
	add eax, 0x18
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11G_SetOriginP9gentity_sPKf
	mov ecx, [ebp-0x94]
	mov edx, [ecx+0x8]
	mov eax, edx
	or eax, 0x10000
	mov [ecx+0x8], eax
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov ebx, [ebp-0x94]
	mov [ebx+0x54], eax
	mov eax, [ecx+0x1ec]
	add eax, 0xee48
	mov [ebx+0x70], eax
	or edx, 0x90000
	mov [ebx+0x8], edx
	mov byte [ebx+0x16e], 0x8
	mov eax, [ecx+0x1ec]
	add eax, 0x1
	mov [ebx+0x19c], eax
	cvtss2sd xmm0, [ebx+0x20]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebx+0x1c]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebx+0x18]
	movsd [esp+0xc], xmm0
	mov eax, [ecx+0x1ec]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sending_smoke_gr
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z16G_ExplodeMissileP9gentity_s_190
_Z16G_ExplodeMissileP9gentity_s_20:
	mov eax, [esi+0x13c]
	mov [ebp-0x30], eax
	mov eax, [esi+0x140]
	mov [ebp-0x2c], eax
	movss xmm0, dword [esi+0x144]
	movss [ebp-0x28], xmm0
	mov eax, [missileWaterMaxDepth]
	addss xmm0, [eax+0xc]
	movss [ebp-0x28], xmm0
	mov dword [esp+0x18], 0x20
	mov eax, [esi]
	mov [esp+0x14], eax
	mov edx, [ebp-0x98]
	mov [esp+0x10], edx
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x57], 0x0
	jnz _Z16G_ExplodeMissileP9gentity_s_200
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z16G_ExplodeMissileP9gentity_s_200
	mov eax, [ebp-0x7c]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x78]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x40], eax
	movss xmm2, dword [ebp-0x80]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [esi+0x13c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x54], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [esi+0x140]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x50], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [esi+0x144]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x4c], xmm1
	jmp _Z16G_ExplodeMissileP9gentity_s_210
_Z16G_ExplodeMissileP9gentity_s_200:
	mov byte [ebp-0x8d], 0x0
	jmp _Z16G_ExplodeMissileP9gentity_s_220
_Z16G_ExplodeMissileP9gentity_s_140:
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov edx, [ebp-0x94]
	mov [esp], edx
	call _Z11G_SetOriginP9gentity_sPKf
	cmp dword [edi+0x5a4], 0x1
	jz _Z16G_ExplodeMissileP9gentity_s_230
_Z16G_ExplodeMissileP9gentity_s_310:
	mov ecx, [ebp-0x98]
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [_float_16_00000000]
	movss [ebp-0x28], xmm0
_Z16G_ExplodeMissileP9gentity_s_320:
	mov dword [esp+0x18], 0x811
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	mov eax, [edi+0x590]
	test eax, eax
	jz _Z16G_ExplodeMissileP9gentity_s_240
	mov edx, _ZZ16G_ExplodeMissileP9gentity_sE19MY_STRAIGHTUPNORMAL
_Z16G_ExplodeMissileP9gentity_s_300:
	mov eax, [ebp-0x70]
	and eax, 0x1f00000
	shr eax, 0x14
	mov ecx, [ebp-0x94]
	mov [ecx+0x84], eax
	jmp _Z16G_ExplodeMissileP9gentity_s_250
_Z16G_ExplodeMissileP9gentity_s_110:
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z16G_ExplodeMissileP9gentity_s_260
_Z16G_ExplodeMissileP9gentity_s_130:
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp _Z16G_ExplodeMissileP9gentity_s_270
_Z16G_ExplodeMissileP9gentity_s_100:
	cmp dword [edx+0x588], 0x6
	mov eax, 0xe
	cmovz ebx, eax
	jmp _Z16G_ExplodeMissileP9gentity_s_280
_Z16G_ExplodeMissileP9gentity_s_180:
	mov eax, [ebp-0x94]
	mov [esp], eax
	call _Z22G_FreeEntityAfterEventP9gentity_s
	jmp _Z16G_ExplodeMissileP9gentity_s_190
_Z16G_ExplodeMissileP9gentity_s_150:
	mov [esp], edx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d
	mov ebx, [ebp-0x94]
	mov [esp], ebx
	call _Z10G_AddEventP9gentity_sij
	jmp _Z16G_ExplodeMissileP9gentity_s_290
_Z16G_ExplodeMissileP9gentity_s_240:
	lea edx, [ebp-0x7c]
	jmp _Z16G_ExplodeMissileP9gentity_s_300
_Z16G_ExplodeMissileP9gentity_s_230:
	cmp dword [esi+0x7c], 0x3ff
	jz _Z16G_ExplodeMissileP9gentity_s_310
	lea eax, [esi+0x1c0]
	movss xmm1, dword [_float__16_00000000]
	movss xmm0, dword [esi+0x1c0]
	mulss xmm0, xmm1
	mov ebx, [ebp-0x98]
	addss xmm0, [ebx]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebx+0x4]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebx+0x8]
	movss [ebp-0x28], xmm1
	jmp _Z16G_ExplodeMissileP9gentity_s_320
_Z16G_ExplodeMissileP9gentity_s_170:
	mov [esp], edx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov edx, [ebp-0x94]
	mov [esp], edx
	call _Z10G_AddEventP9gentity_sij
	jmp _Z16G_ExplodeMissileP9gentity_s_290
_Z16G_ExplodeMissileP9gentity_s_160:
	mov [esp], edx
	call _Z9DirToBytePKf
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2e
	mov eax, [ebp-0x94]
	mov [esp], eax
	call _Z10G_AddEventP9gentity_sij
	jmp _Z16G_ExplodeMissileP9gentity_s_290


;G_TimedObjectThink(gentity_s*)
_Z18G_TimedObjectThinkP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x8], 0xfff7ffff
	pop ebp
	ret
	nop


;G_InitGrenadeEntity(gentity_s*, gentity_s*)
_Z19G_InitGrenadeEntityP9gentity_sS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x34], eax
	mov dword [ebx+0x4], 0x4
	mov dword [ebx+0x8], 0x1000000
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x54], eax
	mov dword [ebx+0x120], 0x2100
	lea eax, [ebx+0x108]
	mov [ebp-0x30], eax
	mov eax, 0xbfc00000
	mov [ebx+0x108], eax
	lea edx, [ebx+0x10c]
	mov [ebp-0x2c], edx
	mov [ebx+0x10c], eax
	lea edx, [ebx+0x110]
	mov [ebp-0x28], edx
	mov [ebx+0x110], eax
	lea eax, [ebx+0x114]
	mov [ebp-0x24], eax
	mov eax, 0x3fc00000
	mov [ebx+0x114], eax
	lea edx, [ebx+0x118]
	mov [ebp-0x20], edx
	mov [ebx+0x118], eax
	lea edx, [ebx+0x11c]
	mov [ebp-0x1c], edx
	mov [ebx+0x11c], eax
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z19G_InitGrenadeEntityP9gentity_sS0__10
	mov edx, [eax+0x44]
	test edx, edx
	js _Z19G_InitGrenadeEntityP9gentity_sS0__20
_Z19G_InitGrenadeEntityP9gentity_sS0__10:
	mov [esp+0x4], edi
	lea eax, [ebx+0x154]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov [esp+0x4], edi
	lea eax, [ebx+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
_Z19G_InitGrenadeEntityP9gentity_sS0__60:
	mov dword [ebx+0x190], 0x2806891
	mov byte [ebx+0x16e], 0x7
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x214]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov [esp], ebx
	call _Z17G_BroadcastEntityP9gentity_s
	mov byte [ebx+0xf6], 0x4
	mov eax, [ebp-0x34]
	cmp dword [eax+0x144], 0x1
	jz _Z19G_InitGrenadeEntityP9gentity_sS0__30
_Z19G_InitGrenadeEntityP9gentity_sS0__70:
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z19G_InitGrenadeEntityP9gentity_sS0__40
	mov eax, [eax+0x3010]
	mov [ebx+0x1cc], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19G_InitGrenadeEntityP9gentity_sS0__20:
	mov esi, [eax+0x48]
	cmp esi, 0x3ff
	jz _Z19G_InitGrenadeEntityP9gentity_sS0__10
	lea eax, [ebx+0x154]
	lea edx, [esi+esi*8]
	lea edx, [esi+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, esi
	mov esi, g_entities
	add edx, esi
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	cmp word [ebx+0x154], 0x0
	jnz _Z19G_InitGrenadeEntityP9gentity_sS0__50
	xor eax, eax
_Z19G_InitGrenadeEntityP9gentity_sS0__80:
	mov [esp+0x4], eax
	lea eax, [ebx+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	jmp _Z19G_InitGrenadeEntityP9gentity_sS0__60
_Z19G_InitGrenadeEntityP9gentity_sS0__40:
	mov dword [ebx+0x1cc], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19G_InitGrenadeEntityP9gentity_sS0__30:
	mov eax, 0xbf800000
	mov edx, [ebp-0x30]
	mov [edx], eax
	mov edx, [ebp-0x2c]
	mov [edx], eax
	mov edx, [ebp-0x28]
	mov [edx], eax
	mov eax, 0x3f800000
	mov edx, [ebp-0x24]
	mov [edx], eax
	mov edx, [ebp-0x20]
	mov [edx], eax
	mov edx, [ebp-0x1c]
	mov [edx], eax
	or dword [ebx+0x120], 0x200000
	mov eax, [ebx+0xc8]
	mov [esp+0x4], eax
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call _Z20BG_FindItemForWeaponii
	sub eax, bg_itemlist
	sar eax, 0x2
	movzx eax, ax
	mov [ebx+0x88], eax
	mov dword [ebx+0x8c], 0x40
	jmp _Z19G_InitGrenadeEntityP9gentity_sS0__70
_Z19G_InitGrenadeEntityP9gentity_sS0__50:
	movzx eax, word [ebx+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	lea eax, [edx+esi]
	jmp _Z19G_InitGrenadeEntityP9gentity_sS0__80


;G_InitGrenadeMovement(gentity_s*, float const*, float const*, int)
_Z21G_InitGrenadeMovementP9gentity_sPKfS2_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [ebp-0x24], eax
	mov dword [edi+0x1bc], 0x0
	mov dword [edi+0xc], 0x5
	mov ecx, level
	mov eax, [ecx+0x1ec]
	mov [edi+0x10], eax
	lea ecx, [edi+0x13c]
	mov eax, [edx]
	mov [edi+0x13c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [edi+0x18]
	mov eax, [edx]
	mov [edi+0x18], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea edx, [edi+0x24]
	mov eax, [ebx]
	mov [edi+0x24], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	lea esi, [edi+0x148]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z11vectoanglesPKfPf
	cvttss2si eax, [edi+0x24]
	cvtsi2ss xmm0, eax
	movss [edi+0x24], xmm0
	cvttss2si eax, [edi+0x28]
	cvtsi2ss xmm0, eax
	movss [edi+0x28], xmm0
	cvttss2si eax, [edi+0x2c]
	cvtsi2ss xmm0, eax
	movss [edi+0x2c], xmm0
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z21G_InitGrenadeMovementP9gentity_sPKfS2_i_10
	mov dword [edi+0x30], 0x2
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [edi+0x34], eax
	lea ebx, [edi+0x3c]
	mov eax, [edi+0x148]
	mov [edi+0x3c], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	movss xmm0, dword [edi+0x3c]
	subss xmm0, [_float_120_00000000]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x3c]
	mov dword [esp+0x4], 0x44480000
	mov dword [esp], 0x43a00000
	call _Z8G_flrandff
	fstp dword [ebp-0x20]
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call _Z7G_irandii
	lea eax, [eax+eax-0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss [edi+0x48], xmm0
	mov dword [edi+0x4c], 0x0
	mov dword [esp+0x4], 0x44070000
	mov dword [esp], 0x43340000
	call _Z8G_flrandff
	fstp dword [ebp-0x1c]
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call _Z7G_irandii
	lea eax, [eax+eax-0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	movss [edi+0x50], xmm0
	mov eax, [edi+0x3c]
	mov [edi+0x148], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21G_InitGrenadeMovementP9gentity_sPKfS2_i_10:
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10G_SetAngleP9gentity_sPKf
	nop


;G_RegisterMissileDvars()
_Z22G_RegisterMissileDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_this_limits_how_
	mov dword [esp+0x10], 0x80
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_missilehellfirem
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileHellfireMaxSlope], eax
	mov dword [esp+0x14], _cstring_the_rate_at_whic
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_missilehellfireu
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileHellfireUpAccel], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x461c4000
	mov dword [esp], _cstring_missilejavclimbh
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbHeightDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x466a6000
	mov dword [esp], _cstring_missilejavclimbh1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbHeightTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42aa0000
	mov dword [esp], _cstring_missilejavclimba
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbAngleDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_missilejavclimba1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbAngleTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_missilejavclimbc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbCeilingDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edi, 0x453b8000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_missilejavclimbc1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbCeilingTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42700000
	mov dword [esp], _cstring_missilejavturnra
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavTurnRateDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_missilejavturnra1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavTurnRateTop], eax
	mov dword [esp+0x14], _cstring_rocket_accelerat
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_missilejavaccelc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavAccelClimb], eax
	mov dword [esp+0x14], _cstring_rocket_accelerat1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_missilejavacceld
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavAccelDescend], eax
	mov dword [esp+0x14], _cstring_rockets_speed_li
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_missilejavspeedl
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavSpeedLimitClimb], eax
	mov dword [esp+0x14], _cstring_rockets_speed_li1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x45bb8000
	mov dword [esp], _cstring_missilejavspeedl1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavSpeedLimitDescend], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3d4ccccd
	mov dword [esp], _cstring_missilejavturnde
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavTurnDecel], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x442f0000
	mov dword [esp], _cstring_missilejavclimbt
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileJavClimbToOwner], eax
	mov dword [esp+0x14], _cstring_if_a_missile_exp
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42700000
	mov dword [esp], _cstring_missilewatermaxd
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [missileWaterMaxDepth], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Missile_InitAttractors()
_Z22Missile_InitAttractorsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x380
	mov dword [esp+0x4], 0x0
	mov dword [esp], attrGlob
	call memset
	leave
	ret


;Missile_FreeAttractorRefs(gentity_s*)
_Z25Missile_FreeAttractorRefsP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov esi, [ebp+0x8]
	xor ebx, ebx
	mov edx, attrGlob
	cld
	mov dword [ebp-0x14], attrGlob
	jmp _Z25Missile_FreeAttractorRefsP9gentity_s_10
_Z25Missile_FreeAttractorRefsP9gentity_s_30:
	add ebx, 0x1
	add dword [ebp-0x14], 0x1c
	add edx, 0x1c
	cmp ebx, 0x20
	jz _Z25Missile_FreeAttractorRefsP9gentity_s_20
_Z25Missile_FreeAttractorRefsP9gentity_s_10:
	cmp byte [edx], 0x0
	jz _Z25Missile_FreeAttractorRefsP9gentity_s_30
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz _Z25Missile_FreeAttractorRefsP9gentity_s_30
	mov edi, [ebp-0x14]
	mov ecx, 0x7
	xor eax, eax
	rep stosd
	add ebx, 0x1
	add dword [ebp-0x14], 0x1c
	add edx, 0x1c
	cmp ebx, 0x20
	jnz _Z25Missile_FreeAttractorRefsP9gentity_s_10
_Z25Missile_FreeAttractorRefsP9gentity_s_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileDeleteAttractor()
_Z26Scr_MissileDeleteAttractorv:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edi, eax
	cmp eax, 0x1f
	jbe _Z26Scr_MissileDeleteAttractorv_10
	mov dword [esp+0x4], _cstring_invalid_attracto
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
_Z26Scr_MissileDeleteAttractorv_10:
	lea eax, [edi*4]
	shl edi, 0x5
	sub edi, eax
	add edi, attrGlob
	cld
	mov ecx, 0x7
	xor eax, eax
	rep stosd
	add esp, 0x14
	pop edi
	pop ebp
	ret


;G_RegisterMissileDebugDvars()
_Z27G_RegisterMissileDebugDvarsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_draw_guided_miss
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugdraw
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [missileDebugDraw], eax
	mov dword [esp+0xc], _cstring_print_debug_miss
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugtext
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [missileDebugText], eax
	mov dword [esp+0xc], _cstring_draw_the_attract
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugattr
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [missileDebugAttractors], eax
	leave
	ret
	nop


;Scr_MissileCreateRepulsorEnt()
_Z28Scr_MissileCreateRepulsorEntv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp _Z28Scr_MissileCreateRepulsorEntv_10
_Z28Scr_MissileCreateRepulsorEntv_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz _Z28Scr_MissileCreateRepulsorEntv_20
_Z28Scr_MissileCreateRepulsorEntv_10:
	cmp byte [eax], 0x0
	jnz _Z28Scr_MissileCreateRepulsorEntv_30
	mov edi, ebx
_Z28Scr_MissileCreateRepulsorEntv_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x0
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov eax, [eax]
	mov [esi+attrGlob+0x4], eax
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z28Scr_MissileCreateRepulsorEntv_40
_Z28Scr_MissileCreateRepulsorEntv_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Scr_MissileCreateRepulsorEntv_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov edi, 0x20
	jmp _Z28Scr_MissileCreateRepulsorEntv_50
_Z28Scr_MissileCreateRepulsorEntv_40:
	jp _Z28Scr_MissileCreateRepulsorEntv_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileCreateAttractorEnt()
_Z29Scr_MissileCreateAttractorEntv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp _Z29Scr_MissileCreateAttractorEntv_10
_Z29Scr_MissileCreateAttractorEntv_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz _Z29Scr_MissileCreateAttractorEntv_20
_Z29Scr_MissileCreateAttractorEntv_10:
	cmp byte [eax], 0x0
	jnz _Z29Scr_MissileCreateAttractorEntv_30
	mov [ebp-0x1c], ebx
_Z29Scr_MissileCreateAttractorEntv_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x1
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov edi, eax
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x20]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z29Scr_MissileCreateAttractorEntv_40
_Z29Scr_MissileCreateAttractorEntv_60:
	mov eax, [edi]
	mov [esi+attrGlob+0x4], eax
	or dword [edi+0x180], 0x800000
	mov byte [esi+attrGlob], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Scr_MissileCreateAttractorEntv_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov dword [ebp-0x1c], 0x20
	jmp _Z29Scr_MissileCreateAttractorEntv_50
_Z29Scr_MissileCreateAttractorEntv_40:
	jp _Z29Scr_MissileCreateAttractorEntv_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	jmp _Z29Scr_MissileCreateAttractorEntv_60


;Scr_MissileCreateRepulsorOrigin()
_Z31Scr_MissileCreateRepulsorOriginv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp _Z31Scr_MissileCreateRepulsorOriginv_10
_Z31Scr_MissileCreateRepulsorOriginv_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz _Z31Scr_MissileCreateRepulsorOriginv_20
_Z31Scr_MissileCreateRepulsorOriginv_10:
	cmp byte [eax], 0x0
	jnz _Z31Scr_MissileCreateRepulsorOriginv_30
	mov edi, ebx
_Z31Scr_MissileCreateRepulsorOriginv_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x0
	mov dword [esi+attrGlob+0x4], 0x3ff
	lea eax, [esi+attrGlob+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z31Scr_MissileCreateRepulsorOriginv_40
_Z31Scr_MissileCreateRepulsorOriginv_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Scr_MissileCreateRepulsorOriginv_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov edi, 0x20
	jmp _Z31Scr_MissileCreateRepulsorOriginv_50
_Z31Scr_MissileCreateRepulsorOriginv_40:
	jp _Z31Scr_MissileCreateRepulsorOriginv_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileCreateAttractorOrigin()
_Z32Scr_MissileCreateAttractorOriginv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp _Z32Scr_MissileCreateAttractorOriginv_10
_Z32Scr_MissileCreateAttractorOriginv_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz _Z32Scr_MissileCreateAttractorOriginv_20
_Z32Scr_MissileCreateAttractorOriginv_10:
	cmp byte [eax], 0x0
	jnz _Z32Scr_MissileCreateAttractorOriginv_30
	mov edi, ebx
_Z32Scr_MissileCreateAttractorOriginv_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x1
	mov dword [esi+attrGlob+0x4], 0x3ff
	lea eax, [esi+attrGlob+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z32Scr_MissileCreateAttractorOriginv_40
_Z32Scr_MissileCreateAttractorOriginv_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Scr_MissileCreateAttractorOriginv_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov edi, 0x20
	jmp _Z32Scr_MissileCreateAttractorOriginv_50
_Z32Scr_MissileCreateAttractorOriginv_40:
	jp _Z32Scr_MissileCreateAttractorOriginv_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call _Z10Scr_AddInti
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of g_missile:
SECTION .data
_ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E21MYJAVELINOFFSET_RIGHT: dd 0x41200000
_ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E15MYJAVELINOFFSET: dd 0x3e99999a, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_missile:
SECTION .rdata
_ZZ16G_ExplodeMissileP9gentity_sE19MY_STRAIGHTUPNORMAL: dd 0x0, 0x0, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0
_ZZ13MissileImpactP9gentity_sP7trace_tPfS3_E19MY_STRAIGHTUPNORMAL: dd 0x0, 0x0, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_missile:
SECTION .bss
attrGlob: resb 0x380
missileDebugAttractors: resb 0x4
missileDebugDraw: resb 0x4
missileDebugText: resb 0x4
missileHellfireMaxSlope: resb 0x30
missileHellfireUpAccel: resb 0x4
missileJavAccelClimb: resb 0x4
missileJavAccelDescend: resb 0x4
missileJavClimbAngleDirect: resb 0x4
missileJavClimbAngleTop: resb 0x4
missileJavClimbCeilingDirect: resb 0x4
missileJavClimbCeilingTop: resb 0x4
missileJavClimbHeightDirect: resb 0x4
missileJavClimbHeightTop: resb 0x4
missileJavClimbToOwner: resb 0x4
missileJavSpeedLimitClimb: resb 0x4
missileJavSpeedLimitDescend: resb 0x4
missileJavTurnDecel: resb 0x4
missileJavTurnRateDirect: resb 0x4
missileJavTurnRateTop: resb 0x4
missileWaterMaxDepth: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_dot2f_0f__0f_:		db "dot:%.2f (%.0f > %.0f) ",0
_cstring_dot2f_:		db "dot:%.2f ",0
_cstring_dot2f_frac2f_0f0:		db "dot:%.2f frac:%.2f =%.0f/%.0f ",0
_cstring_javelin_softlaun:		db "Javelin: softlaunch",0ah,0
_cstring_a:		db "A",0
_cstring_d:		db "D",0
_cstring_javs_h0f0f_dist_:		db "Jav:%s h:%.0f/%.0f dist 2d:%.0f 3d:%.0f",0ah,0
_cstring_javelin__exceede:		db "Javelin: *** Exceeded climb angle ***",0ah,0
_cstring_javelin__exceede1:		db "Javelin: *** Exceeded climb distance ***",0ah,0
_cstring_sending_smoke_gr:		db "Sending smoke grenade that starts at %i and is at ( %f, %f, %f )",0ah,0
_cstring_this_limits_how_:		db "This limits how steeply the hellfire missile can turn upward when climbing",0
_cstring_missilehellfirem:		db "missileHellfireMaxSlope",0
_cstring_the_rate_at_whic:		db "The rate at which the hellfire missile curves upward",0
_cstring_missilehellfireu:		db "missileHellfireUpAccel",0
_cstring_in_directfire_mo:		db "In direct-fire mode, how far above the target the rocket will aim for when climbing.",0
_cstring_missilejavclimbh:		db "missileJavClimbHeightDirect",0
_cstring_in_topfire_mode_:		db "In top-fire mode, how far above the target the rocket will aim for when climbing.",0
_cstring_missilejavclimbh1:		db "missileJavClimbHeightTop",0
_cstring_in_directfire_mo1:		db "In direct-fire mode, the minimum angle between the rocket and target until the rocket stops climbing.  Smaller angles make for higher climbs.",0
_cstring_missilejavclimba:		db "missileJavClimbAngleDirect",0
_cstring_in_topfire_mode_1:		db "In top-fire mode, the minimum angle between the rocket and target until the rocket stops climbing.  Smaller angles make for higher climbs.",0
_cstring_missilejavclimba1:		db "missileJavClimbAngleTop",0
_cstring_in_directfire_mo2:		db "In direct-fire mode, how high the missile needs to reach before it descends.",0
_cstring_missilejavclimbc:		db "missileJavClimbCeilingDirect",0
_cstring_in_topfire_mode_2:		db "In top-fire mode, how high the missile needs to reach before it descends.",0
_cstring_missilejavclimbc1:		db "missileJavClimbCeilingTop",0
_cstring_in_directfire_mo3:		db "In direct-fire mode, how sharp the rocket can turn, in angles/sec.",0
_cstring_missilejavturnra:		db "missileJavTurnRateDirect",0
_cstring_in_topfire_mode_3:		db "In top-fire mode, how sharp the rocket can turn, in angles/sec.",0
_cstring_missilejavturnra1:		db "missileJavTurnRateTop",0
_cstring_rocket_accelerat:		db "Rocket acceleration when climbing.",0
_cstring_missilejavaccelc:		db "missileJavAccelClimb",0
_cstring_rocket_accelerat1:		db "Rocket acceleration when descending towards target.",0
_cstring_missilejavacceld:		db "missileJavAccelDescend",0
_cstring_rockets_speed_li:		db "Rocket",27h,"s speed limit when climbing.",0
_cstring_missilejavspeedl:		db "missileJavSpeedLimitClimb",0
_cstring_rockets_speed_li1:		db "Rocket",27h,"s speed limit when descending towards target.",0
_cstring_missilejavspeedl1:		db "missileJavSpeedLimitDescend",0
_cstring_null:		db 0
_cstring_missilejavturnde:		db "missileJavTurnDecel",0
_cstring_missilejavclimbt:		db "missileJavClimbToOwner",0
_cstring_if_a_missile_exp:		db "If a missile explodes deeper under water than this, they explosion effect/sound will not play.",0
_cstring_missilewatermaxd:		db "missileWaterMaxDepth",0
_cstring_invalid_attracto:		db "Invalid attractor or repulsor",0
_cstring_draw_guided_miss:		db "Draw guided missile trajectories.",0
_cstring_missiledebugdraw:		db "missileDebugDraw",0
_cstring_print_debug_miss:		db "Print debug missile info to console.",0
_cstring_missiledebugtext:		db "missileDebugText",0
_cstring_draw_the_attract:		db "Draw the attractors and repulsors.  Attractors are green, and repulsors are yellow.",0
_cstring_missiledebugattr:		db "missileDebugAttractors",0
_cstring_ran_out_of_attra:		db "Ran out of attractor/repulsors.  Max allowed: %i",0
_cstring_maxdist_must_be_:		db "maxDist must be greater than zero",0



;All constant floats and doubles:
SECTION .rdata
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_80_00000000:		dd 0x42a00000	; 80
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float_0_85000002:		dd 0x3f59999a	; 0.85
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_45_00000000:		dd 0x42340000	; 45
_float_90_00000000:		dd 0x42b40000	; 90
_float_180_00000000:		dd 0x43340000	; 180
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_100_00000000:		dd 0x42c80000	; 100
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_20_00000000:		dd 0x41a00000	; 20
_double_180_00000000:		dq 0x4066800000000000	; 180
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_float_500_00000000:		dd 0x43fa0000	; 500
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_70700002:		dd 0x3f34fdf4	; 0.707
_float_0_00000000:		dd 0x0	; 0
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float__0_00100000:		dd 0xba83126f	; -0.001
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_30_00000000:		dd 0x41f00000	; 30
_float__180_00000000:		dd 0xc3340000	; -180
_double_57_29577951:		dq 0x404ca5dc1a63c1f8	; 57.2958
_float_60_00000000:		dd 0x42700000	; 60
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_400_00000000:		dd 0x43c80000	; 400
_float__35_00000000:		dd 0xc20c0000	; -35
_float_600_00000000:		dd 0x44160000	; 600
_float_85_00000000:		dd 0x42aa0000	; 85
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__1_63499999:		dd 0xbfd147ae	; -1.635
_float_0_00001000:		dd 0x3727c5ac	; 1e-05
_float_0_13500001:		dd 0x3e0a3d71	; 0.135
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float__1_50000000:		dd 0xbfc00000	; -1.5
_double_0_63662028:		dq 0x3fe45f3180000000	; 0.63662
_float_16_00000000:		dd 0x41800000	; 16
_float__16_00000000:		dd 0xc1800000	; -16
_float_120_00000000:		dd 0x42f00000	; 120

