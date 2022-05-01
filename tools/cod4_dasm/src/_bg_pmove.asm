;Imports of bg_pmove:
	extern _Z10AngleDeltaff
	extern _Z17AngleNormalize360f
	extern _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	extern player_meleeChargeFriction
	extern stopspeed
	extern friction
	extern _Z19Jump_ReduceFrictionP13playerState_s
	extern _Z12YawVectors2DfPfS_
	extern _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z15Jump_ClearStateP13playerState_s
	extern bg_fallDamageMaxHeight
	extern bg_fallDamageMinHeight
	extern _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	extern _Z10Com_PrintfiPKcz
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z11vectoanglesPKfPf
	extern floorf
	extern _Z8vectoyawPKf
	extern _Z19BG_GetMaxSprintTimePK13playerState_s
	extern player_sprintRechargePause
	extern player_sprintForwardMinimum
	extern player_sprintMinTime
	extern _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	extern player_moveThreshhold
	extern _Z13Vec2NormalizePf
	extern player_strafeAnimCosAngle
	extern _Z20BG_SetConditionValueiiy
	extern player_dmgtimer_stumbleTime
	extern player_strafeSpeedScale
	extern player_sprintCameraBob
	extern player_footstepsThreshhold
	extern player_dmgtimer_flinchTime
	extern bgs
	extern player_turnAnims
	extern player_sprintSpeedScale
	extern _Z15BG_GetWeaponDefj
	extern player_backSpeedScale
	extern _Z11Com_DPrintfiPKcz
	extern _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii
	extern _Z21Jump_ActivateSlowdownP13playerState_s
	extern _Z20BG_WeaponBlocksPronej
	extern _Z19PitchForYawOnNormalfPKf
	extern _Z19PM_ExitAimDownSightP13playerState_s
	extern inertiaMax
	extern inertiaAngle
	extern inertiaDebug
	extern player_spectateSpeedScale
	extern _Z16PM_StepSlideMoveP7pmove_tP5pml_ti
	extern _Z17AddLeanToPositionPfffff
	extern _Z17UnGetLeanFractionf
	extern player_view_pitch_up
	extern player_view_pitch_down
	extern _Z14Mantle_CapViewP13playerState_s
	extern bg_prone_yawcap
	extern bg_ladder_yawcap
	extern _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t
	extern memset
	extern _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z16Mantle_ClearHintP13playerState_s
	extern _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	extern _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	extern _Z12Mantle_CheckP7pmove_tP5pml_t
	extern _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t
	extern _Z9PM_WeaponP7pmove_tP5pml_t
	extern _Z19PM_ResetWeaponStateP13playerState_s
	extern _Z19BG_UsingSniperScopePK13playerState_s
	extern _Z22PM_WeaponAmmoAvailableP13playerState_s
	extern _Z30PM_InteruptWeaponWithProneMoveP13playerState_s
	extern player_sprintStrafeSpeedScale
	extern _Z10Jump_CheckP7pmove_tP5pml_t
	extern player_dmgtimer_maxTime
	extern player_dmgtimer_minScale
	extern bg_foliagesnd_minspeed
	extern bg_foliagesnd_resetinterval
	extern _Z14Sys_SnapVectorPf
	extern bg_foliagesnd_maxspeed
	extern bg_foliagesnd_slowinterval
	extern bg_foliagesnd_fastinterval
	extern _Z19ProjectPointOnPlanePKfS0_Pf
	extern vec3_origin
	extern _Z18Jump_ApplySlowdownP13playerState_s
	extern _Z21BG_GetShellshockParmsi
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z13G_PlayerEventii

;Exports of bg_pmove:
	global viewLerp_CrouchStand
	global viewLerp_ProneCrouch
	global viewLerp_StandCrouch
	global viewLerp_CrouchProne
	global CorrectSolidDeltas
	global _ZZ19PM_GetNotMovingAnimiiE14notMovingAnims
	global _ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable
	global _ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable
	global _Z19BG_CheckProneTurnedP13playerState_sfh
	global _Z11PM_FrictionP13playerState_sP5pml_t
	global _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t
	global _Z14PM_GroundTraceP7pmove_tP5pml_t
	global _Z20PM_CmdScaleForStancePK7pmove_t
	global _Z17PM_SetMovementDirP7pmove_tP5pml_t
	global _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	global _Z12PM_FootstepsP7pmove_tP5pml_t
	global _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t
	global _Z12PM_CheckDuckP7pmove_tP5pml_t
	global _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	global _Z10PM_AirMoveP7pmove_tP5pml_t
	global _Z11BG_GetSpeedPK13playerState_si
	global _Z11PM_AddEventP13playerState_si
	global _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE
	global _Z14PM_AddTouchEntP7pmove_ti
	global _Z14PM_IsSprintingPK13playerState_s
	global _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	global _Z15PM_ClipVelocityPKfS0_Pf
	global _Z16PM_FootstepEventP7pmove_tP5pml_tiii
	global _Z16PM_GetSprintLeftPK13playerState_si
	global _Z18PM_ProjectVelocityPKfS0_Pf
	global _Z19PM_MeleeChargeStartP7pmove_t
	global _Z19PM_UpdatePronePitchP7pmove_tP5pml_t
	global _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh
	global _Z20PM_GroundSurfaceTypeP5pml_t
	global _Z21PM_GetEffectiveStancePK13playerState_s
	global _Z22PM_ShouldMakeFootstepsP7pmove_t
	global _Z24PM_GetSprintLeftLastTimePK13playerState_s
	global _Z24PM_GetViewHeightLerpTimePK13playerState_sii
	global _Z27PM_SetProneMovementOverrideP13playerState_s
	global _Z5PmoveP7pmove_t
	global _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	global playerMaxs
	global playerMins
	global pmoveHandlers


SECTION .text


;BG_CheckProneTurned(playerState_s*, float, unsigned char)
_Z19BG_CheckProneTurnedP13playerState_sfh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	add esp, 0xffffff80
	mov ebx, eax
	mov esi, edx
	mov eax, [eax+0x10c]
	mov [esp+0x4], eax
	movss [esp], xmm0
	movss [ebp-0x38], xmm0
	call _Z10AngleDeltaff
	fstp dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x3c]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	divss xmm0, dword [_float_240_00000000]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	mulss xmm1, xmm2
	movss xmm3, dword [ebp-0x38]
	subss xmm3, xmm1
	movss [esp], xmm3
	movss [ebp-0x18], xmm0
	movss [ebp-0x28], xmm2
	call _Z17AngleNormalize360f
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, [_float_45_00000000]
	movss xmm2, dword [ebp-0x28]
	mulss xmm2, [_float_50_00000000]
	addss xmm0, xmm2
	movss [esp+0x30], xmm0
	mov dword [esp+0x2c], 0x0
	mov edx, esi
	movzx eax, dl
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x1
	xor eax, eax
	cmp dword [ebx+0x70], 0x3ff
	setnz al
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	lea eax, [ebx+0x5d0]
	mov [esp+0x18], eax
	lea eax, [ebx+0x5cc]
	mov [esp+0x14], eax
	fstp dword [esp+0x10]
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x41700000
	lea eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	movzx eax, al
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret


;PM_Friction(playerState_s*, pml_t*)
_Z11PM_FrictionP13playerState_sP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov edi, edx
	lea esi, [eax+0x28]
	movss xmm0, dword [eax+0x28]
	lea eax, [eax+0x2c]
	mov [ebp-0x20], eax
	movss xmm1, dword [ebx+0x2c]
	lea eax, [ebx+0x30]
	mov [ebp-0x1c], eax
	movss xmm2, dword [ebx+0x30]
	mov eax, [edx+0x2c]
	test eax, eax
	jz _Z11PM_FrictionP13playerState_sP5pml_t_10
	pxor xmm2, xmm2
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	ucomiss xmm2, [_float_1_00000000]
	jb _Z11PM_FrictionP13playerState_sP5pml_t_20
_Z11PM_FrictionP13playerState_sP5pml_t_50:
	mov edx, [ebx+0xc]
	test edx, 0x20000
	jz _Z11PM_FrictionP13playerState_sP5pml_t_30
	mov eax, player_meleeChargeFriction
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edi+0x24]
	pxor xmm3, xmm3
_Z11PM_FrictionP13playerState_sP5pml_t_80:
	cmp dword [ebx+0x4], 0x4
	jz _Z11PM_FrictionP13playerState_sP5pml_t_40
_Z11PM_FrictionP13playerState_sP5pml_t_90:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	maxss xmm3, xmm0
	movaps xmm0, xmm3
	divss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [esi]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x20]
	mulss xmm1, [eax]
	movss [esi+0x4], xmm1
	mov eax, [ebp-0x1c]
	mulss xmm0, [eax]
	movss [esi+0x8], xmm0
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PM_FrictionP13playerState_sP5pml_t_10:
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	ucomiss xmm2, [_float_1_00000000]
	jae _Z11PM_FrictionP13playerState_sP5pml_t_50
_Z11PM_FrictionP13playerState_sP5pml_t_20:
	jp _Z11PM_FrictionP13playerState_sP5pml_t_50
	xor eax, eax
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PM_FrictionP13playerState_sP5pml_t_30:
	test eax, eax
	jz _Z11PM_FrictionP13playerState_sP5pml_t_60
	test byte [edi+0x48], 0x2
	jnz _Z11PM_FrictionP13playerState_sP5pml_t_60
	test dh, 0x1
	jnz _Z11PM_FrictionP13playerState_sP5pml_t_60
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	maxss xmm0, xmm2
	test dl, dl
	jns _Z11PM_FrictionP13playerState_sP5pml_t_70
	mulss xmm0, [_float_0_30000001]
_Z11PM_FrictionP13playerState_sP5pml_t_100:
	mov eax, friction
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [edi+0x24]
	pxor xmm3, xmm3
	addss xmm1, xmm3
	jmp _Z11PM_FrictionP13playerState_sP5pml_t_80
_Z11PM_FrictionP13playerState_sP5pml_t_60:
	pxor xmm3, xmm3
	movaps xmm1, xmm3
	cmp dword [ebx+0x4], 0x4
	jnz _Z11PM_FrictionP13playerState_sP5pml_t_90
_Z11PM_FrictionP13playerState_sP5pml_t_40:
	movaps xmm0, xmm2
	mulss xmm0, [_float_5_00000000]
	mulss xmm0, [edi+0x24]
	addss xmm1, xmm0
	jmp _Z11PM_FrictionP13playerState_sP5pml_t_90
_Z11PM_FrictionP13playerState_sP5pml_t_70:
	and dh, 0x40
	jz _Z11PM_FrictionP13playerState_sP5pml_t_100
	mov [esp], ebx
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm2
	call _Z19Jump_ReduceFrictionP13playerState_s
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [ebp-0x24]
	movss xmm2, dword [ebp-0x48]
	jmp _Z11PM_FrictionP13playerState_sP5pml_t_100
	nop


;PM_MeleeChargeUpdate(pmove_t*, pml_t*)
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, edx
	mov ebx, [eax]
	mov eax, [ebx+0xc]
	test eax, 0x20000
	jz _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_10
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_20
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_10:
	and eax, 0xfffdffff
	mov [ebx+0xc], eax
	mov dword [ebx+0x5f0], 0x0
	mov dword [ebx+0x5f4], 0x0
	mov dword [ebx+0x5f8], 0x0
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_40:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_20:
	test dword [ebx+0xb0], 0x300
	jnz _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_10
	test al, 0xc
	jnz _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_10
	mov eax, [ebx+0x5f8]
	test eax, eax
	jz _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_30
	mov eax, [ebx+0x5f8]
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_50:
	sub eax, [esi+0x28]
	mov [ebx+0x5f8], eax
	test eax, eax
	jg _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_40
	and dword [ebx+0xc], 0xfffdffff
	mov dword [ebx+0x5f0], 0x0
	mov dword [ebx+0x5f4], 0x0
	mov dword [ebx+0x5f8], 0x0
	jmp _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_40
_Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_30:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov eax, [ebx+0x5f0]
	mov [esp], eax
	call _Z12YawVectors2DfPfS_
	cvtsi2ss xmm0, dword [ebx+0x5f4]
	addss xmm0, xmm0
	mov edx, player_meleeChargeFriction
	mov eax, [edx]
	mulss xmm0, [eax+0xc]
	sqrtss xmm0, xmm0
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x10]
	movss [ebx+0x28], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xc]
	movss [ebx+0x2c], xmm1
	mov eax, [edx]
	divss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [ebx+0x5f8], eax
	jmp _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t_50


;PM_GroundTrace(pmove_t*, pml_t*)
_Z14PM_GroundTraceP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov [ebp-0xa8], eax
	mov [ebp-0xac], edx
	mov eax, [eax]
	mov [ebp-0x9c], eax
	mov edx, eax
	mov eax, [eax+0x1c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x20]
	mov [ebp-0x20], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x30], eax
	mov eax, [edx+0x20]
	mov [ebp-0x2c], eax
	test dword [edx+0xb0], 0x300
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_10
	mov eax, [edx+0x24]
	mov [ebp-0x1c], eax
	movss xmm0, dword [edx+0x24]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x28], xmm0
_Z14PM_GroundTraceP7pmove_tP5pml_t_110:
	mov eax, [ebp-0xa8]
	add eax, 0xd8
	mov [ebp-0xa4], eax
	mov edx, [ebp-0xa8]
	add edx, 0xcc
	mov [ebp-0xa0], edx
	mov esi, [ebp-0xa8]
	mov eax, [esi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x9c]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea esi, [ebp-0x30]
	mov [esp+0x14], esi
	mov eax, [ebp-0xa4]
	mov [esp+0x10], eax
	mov edx, [ebp-0xa0]
	mov [esp+0xc], edx
	lea esi, [ebp-0x24]
	mov [esp+0x8], esi
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp-0xa8]
	mov [esp], edx
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	mov eax, [ebp-0x68]
	mov esi, [ebp-0xac]
	mov [esi+0x38], eax
	mov eax, [ebp-0x64]
	mov [esi+0x3c], eax
	mov eax, [ebp-0x60]
	mov [esi+0x40], eax
	mov eax, [ebp-0x5c]
	mov [esi+0x44], eax
	mov eax, [ebp-0x58]
	mov [esi+0x48], eax
	mov eax, [ebp-0x54]
	mov [esi+0x4c], eax
	mov eax, [ebp-0x50]
	mov [esi+0x50], eax
	mov eax, [ebp-0x4c]
	mov [esi+0x54], eax
	mov eax, [ebp-0x48]
	mov [esi+0x58], eax
	mov eax, [ebp-0x44]
	mov [esi+0x5c], eax
	mov eax, [ebp-0x40]
	mov [esi+0x60], eax
	cmp byte [ebp-0x40], 0x0
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_20
	mov eax, [ebp-0xa8]
	mov ebx, [eax]
	xor esi, esi
	lea edx, [ebx+0x1c]
	mov [ebp-0xb0], edx
	lea edi, [ebp-0x3c]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_30
_Z14PM_GroundTraceP7pmove_tP5pml_t_50:
	add esi, 0x1
	cmp esi, 0x1a
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_40
_Z14PM_GroundTraceP7pmove_tP5pml_t_30:
	lea eax, [esi+esi*2]
	shl eax, 0x2
	lea edx, [eax+CorrectSolidDeltas]
	movss xmm0, dword [ebx+0x1c]
	addss xmm0, [eax+CorrectSolidDeltas]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebx+0x20]
	addss xmm0, [edx+0x4]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebx+0x24]
	addss xmm0, [edx+0x8]
	movss [ebp-0x34], xmm0
	mov edx, [ebp-0xa8]
	mov eax, [edx+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov eax, [ebp-0xa4]
	mov [esp+0x10], eax
	mov edx, [ebp-0xa0]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp-0xa8]
	mov [esp], edx
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x3f], 0x0
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_50
	mov eax, [ebp-0x3c]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x38]
	mov [ebx+0x20], eax
	movss xmm0, dword [ebp-0x34]
	movss [ebx+0x24], xmm0
	subss xmm0, [_float_1_00000000]
	subss xmm0, [_float_0_25000000]
	movss [ebp-0x34], xmm0
	mov esi, [ebp-0xa8]
	mov eax, [esi+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov eax, [ebp-0xa4]
	mov [esp+0x10], eax
	mov edx, [ebp-0xa0]
	mov [esp+0xc], edx
	mov esi, [ebp-0xb0]
	mov [esp+0x8], esi
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp-0xa8]
	mov [esp], edx
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	mov eax, [ebp-0x68]
	mov esi, [ebp-0xac]
	mov [esi+0x38], eax
	mov eax, [ebp-0x64]
	mov [esi+0x3c], eax
	mov eax, [ebp-0x60]
	mov [esi+0x40], eax
	mov eax, [ebp-0x5c]
	mov [esi+0x44], eax
	mov eax, [ebp-0x58]
	mov [esi+0x48], eax
	mov eax, [ebp-0x54]
	mov [esi+0x4c], eax
	mov eax, [ebp-0x50]
	mov [esi+0x50], eax
	mov eax, [ebp-0x4c]
	mov [esi+0x54], eax
	mov eax, [ebp-0x48]
	mov [esi+0x58], eax
	mov eax, [ebp-0x44]
	mov [esi+0x5c], eax
	mov eax, [ebp-0x40]
	mov [esi+0x60], eax
	movss xmm2, dword [ebp-0x68]
	movss xmm1, dword [ebx+0x1c]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x1c], xmm1
	movss xmm1, dword [ebx+0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x20], xmm1
	movss xmm1, dword [ebx+0x24]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebx+0x24], xmm1
_Z14PM_GroundTraceP7pmove_tP5pml_t_20:
	cmp byte [ebp-0x3f], 0x0
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_60
_Z14PM_GroundTraceP7pmove_tP5pml_t_180:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_70
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_70
	mov eax, [ebp-0xa8]
	mov ebx, [eax]
	cmp dword [ebx+0x70], 0x3ff
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_80
	mov esi, eax
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [edx+0x8]
	subss xmm0, [_float_64_00000000]
	movss [ebp-0x34], xmm0
	movzx ecx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	mov [esp+0x18], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0xa4]
	mov [esp+0xc], eax
	mov esi, [ebp-0xa0]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	lea eax, [ebp-0x94]
	mov [esp], eax
	call dword [ecx*8+pmoveHandlers]
	movss xmm1, dword [ebp-0x94]
	ucomiss xmm1, [_float_1_00000000]
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_90
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_90
	mov eax, [ebp-0xa8]
	cmp byte [eax+0x1a], 0x0
	js _Z14PM_GroundTraceP7pmove_tP5pml_t_100
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z14PM_GroundTraceP7pmove_tP5pml_t_360:
	mov edx, [ebp-0xac]
	mov dword [edx+0x34], 0x0
	mov dword [ebx+0x70], 0x3ff
	mov esi, [ebp-0xac]
	mov dword [esi+0x30], 0x0
	mov dword [esi+0x2c], 0x0
_Z14PM_GroundTraceP7pmove_tP5pml_t_150:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_GroundTraceP7pmove_tP5pml_t_10:
	movss xmm1, dword [_float_0_25000000]
	mov esi, [ebp-0x9c]
	movss xmm0, dword [esi+0x24]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [esi+0x24]
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_110
_Z14PM_GroundTraceP7pmove_tP5pml_t_70:
	mov eax, [ebp-0x9c]
	test byte [eax+0xc], 0x8
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_120
_Z14PM_GroundTraceP7pmove_tP5pml_t_190:
	cmp byte [ebp-0x3e], 0x0
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_130
	mov esi, [ebp-0xac]
	mov dword [esi+0x30], 0x1
	mov dword [esi+0x34], 0x1
	mov dword [esi+0x2c], 0x1
	mov eax, [ebp-0x9c]
	cmp dword [eax+0x70], 0x3ff
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_140
_Z14PM_GroundTraceP7pmove_tP5pml_t_220:
	lea esi, [ebp-0x68]
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx esi, ax
	mov edx, [ebp-0x9c]
	mov [edx+0x70], esi
	cmp ax, 0x3fe
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_150
	mov eax, [ebp-0xa8]
	mov ebx, [eax+0x48]
	cmp ebx, 0x20
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_150
	test ebx, ebx
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_160
_Z14PM_GroundTraceP7pmove_tP5pml_t_340:
	mov edx, [ebp-0xa8]
	mov [edx+ebx*4+0x4c], esi
	lea eax, [ebx+0x1]
	mov [edx+0x48], eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_150
_Z14PM_GroundTraceP7pmove_tP5pml_t_60:
	mov edx, [ebp-0x9c]
	movss xmm0, dword [edx+0x24]
	subss xmm0, [_float_0_00100000]
	movss [ebp-0x1c], xmm0
	mov esi, [ebp-0xa8]
	mov eax, [esi+0x44]
	mov [esp+0x1c], eax
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	mov edx, [ebp-0xa4]
	mov [esp+0x10], edx
	mov esi, [ebp-0xa0]
	mov [esp+0xc], esi
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov esi, [ebp-0xa8]
	mov [esp], esi
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x3f], 0x0
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_170
	mov eax, [ebp-0x68]
	mov esi, [ebp-0xac]
	mov [esi+0x38], eax
	mov eax, [ebp-0x64]
	mov [esi+0x3c], eax
	mov eax, [ebp-0x60]
	mov [esi+0x40], eax
	mov eax, [ebp-0x5c]
	mov [esi+0x44], eax
	mov eax, [ebp-0x58]
	mov [esi+0x48], eax
	mov eax, [ebp-0x54]
	mov [esi+0x4c], eax
	mov eax, [ebp-0x50]
	mov [esi+0x50], eax
	mov eax, [ebp-0x4c]
	mov [esi+0x54], eax
	mov eax, [ebp-0x48]
	mov [esi+0x58], eax
	mov eax, [ebp-0x44]
	mov [esi+0x5c], eax
	mov eax, [ebp-0x40]
	mov [esi+0x60], eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_180
_Z14PM_GroundTraceP7pmove_tP5pml_t_40:
	mov dword [ebx+0x70], 0x3ff
	mov eax, [ebp-0xac]
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x34], 0x0
	mov dword [eax+0x2c], 0x0
	mov [esp], ebx
	call _Z15Jump_ClearStateP13playerState_s
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_GroundTraceP7pmove_tP5pml_t_120:
	movss xmm0, dword [eax+0x30]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z14PM_GroundTraceP7pmove_tP5pml_t_190
	add eax, 0x28
	mov edx, [ebp-0x9c]
	movss xmm1, dword [edx+0x28]
	mulss xmm1, [ebp-0x64]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_10_00000000]
	jbe _Z14PM_GroundTraceP7pmove_tP5pml_t_190
	mov esi, [ebp-0xa8]
	cmp byte [esi+0x1a], 0x0
	js _Z14PM_GroundTraceP7pmove_tP5pml_t_200
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], edx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z14PM_GroundTraceP7pmove_tP5pml_t_430:
	mov edx, [ebp-0xac]
	mov dword [edx+0x34], 0x0
	mov esi, [ebp-0x9c]
	mov dword [esi+0x70], 0x3ff
	mov dword [edx+0x30], 0x0
	mov dword [edx+0x2c], 0x0
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_150
_Z14PM_GroundTraceP7pmove_tP5pml_t_90:
	movss xmm0, dword [_float_0_01562500]
	xor eax, eax
	ucomiss xmm0, xmm1
	seta al
	mov esi, [ebp-0xac]
	mov [esi+0x34], eax
_Z14PM_GroundTraceP7pmove_tP5pml_t_330:
	mov dword [ebx+0x70], 0x3ff
	mov esi, [ebp-0xac]
	mov dword [esi+0x30], 0x0
	mov dword [esi+0x2c], 0x0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_GroundTraceP7pmove_tP5pml_t_170:
	mov eax, [ebp-0x9c]
	mov dword [eax+0x70], 0x3ff
	mov edx, [ebp-0xac]
	mov dword [edx+0x30], 0x0
	mov dword [edx+0x34], 0x0
	mov dword [edx+0x2c], 0x0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_GroundTraceP7pmove_tP5pml_t_140:
	movss xmm5, dword [esi+0x7c]
	cvtsi2ss xmm6, dword [eax+0x58]
	movss xmm3, dword [_data16_80000000]
	movaps xmm7, xmm6
	xorps xmm7, xmm3
	movaps xmm4, xmm7
	mulss xmm4, [_float_0_50000000]
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	movss xmm0, dword [esi+0x70]
	subss xmm0, [eax+0x24]
	movaps xmm1, xmm4
	mulss xmm1, [_float__4_00000000]
	mulss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_210
	jb _Z14PM_GroundTraceP7pmove_tP5pml_t_220
_Z14PM_GroundTraceP7pmove_tP5pml_t_210:
	movaps xmm1, xmm5
	xorps xmm1, xmm3
	cvtss2sd xmm1, xmm1
	cvtss2sd xmm0, xmm2
	sqrtsd xmm0, xmm0
	subsd xmm1, xmm0
	addss xmm4, xmm4
	cvtss2sd xmm0, xmm4
	divsd xmm1, xmm0
	cvtsd2ss xmm2, xmm1
	mulss xmm2, xmm7
	addss xmm2, xmm5
	xorps xmm2, xmm3
	mulss xmm2, xmm2
	addss xmm6, xmm6
	divss xmm2, xmm6
	mov eax, bg_fallDamageMaxHeight
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	mov eax, bg_fallDamageMinHeight
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm3
	jae _Z14PM_GroundTraceP7pmove_tP5pml_t_230
	ucomiss xmm1, xmm2
	jae _Z14PM_GroundTraceP7pmove_tP5pml_t_240
	mov edx, [ebp-0xac]
	test byte [edx+0x48], 0x1
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_240
	mov esi, [ebp-0x9c]
	cmp dword [esi+0x4], 0x6
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_240
	ucomiss xmm2, xmm3
	jae _Z14PM_GroundTraceP7pmove_tP5pml_t_250
	movaps xmm0, xmm2
	subss xmm0, xmm1
	subss xmm3, xmm1
	divss xmm0, xmm3
	mulss xmm0, [_float_100_00000000]
	cvttss2si ebx, xmm0
	cmp ebx, 0x63
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_250
	test ebx, ebx
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_260
_Z14PM_GroundTraceP7pmove_tP5pml_t_240:
	xor ebx, ebx
_Z14PM_GroundTraceP7pmove_tP5pml_t_260:
	ucomiss xmm2, [_float_12_00000000]
	ja _Z14PM_GroundTraceP7pmove_tP5pml_t_270
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_270
	xor esi, esi
_Z14PM_GroundTraceP7pmove_tP5pml_t_400:
	mov eax, [ebp-0xac]
	mov edx, [eax+0x48]
	mov eax, edx
	shr eax, 0xd
	and al, 0x1
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_280
	xor ecx, ecx
_Z14PM_GroundTraceP7pmove_tP5pml_t_390:
	test ebx, ebx
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_290
	cmp ebx, 0x63
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_300
	and dl, 0x2
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_300
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	add eax, 0x1f4
	cmp eax, 0x7d0
	jle _Z14PM_GroundTraceP7pmove_tP5pml_t_310
	movss xmm1, dword [_float_0_20000000]
	mov eax, 0x7d0
_Z14PM_GroundTraceP7pmove_tP5pml_t_490:
	mov edx, [ebp-0x9c]
	mov [edx+0x18], eax
	or dword [edx+0xc], 0x80
	mov eax, edx
	add eax, 0x28
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x28]
	movss [edx+0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
_Z14PM_GroundTraceP7pmove_tP5pml_t_420:
	mov edx, [ebp-0xac]
	mov eax, [edx+0x48]
	test ah, 0x20
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_320
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	test al, al
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_320
	lea eax, [edx+0x6a]
_Z14PM_GroundTraceP7pmove_tP5pml_t_410:
	mov esi, [ebp-0x9c]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_220
_Z14PM_GroundTraceP7pmove_tP5pml_t_80:
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [edx+0x8]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x34], xmm0
	mov eax, [ebp-0xa8]
	movzx ecx, byte [eax+0x10c]
	mov eax, [eax+0x44]
	mov [esp+0x18], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0xa4]
	mov [esp+0xc], eax
	mov esi, [ebp-0xa0]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	lea eax, [ebp-0x94]
	mov [esp], eax
	call dword [ecx*8+pmoveHandlers]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x94]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov edx, [ebp-0xac]
	mov [edx+0x34], eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_330
_Z14PM_GroundTraceP7pmove_tP5pml_t_130:
	mov eax, [ebp-0x9c]
	mov dword [eax+0x70], 0x3ff
	mov edx, [ebp-0xac]
	mov dword [edx+0x30], 0x1
	mov dword [edx+0x34], 0x1
	mov dword [edx+0x2c], 0x0
	mov [esp], eax
	call _Z15Jump_ClearStateP13playerState_s
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_150
_Z14PM_GroundTraceP7pmove_tP5pml_t_160:
	mov eax, [ebp-0xa8]
	cmp esi, [eax+0x4c]
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_150
	mov ecx, eax
	xor edx, edx
_Z14PM_GroundTraceP7pmove_tP5pml_t_350:
	add edx, 0x1
	cmp ebx, edx
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_340
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp esi, eax
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_350
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_150
_Z14PM_GroundTraceP7pmove_tP5pml_t_100:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_360
_Z14PM_GroundTraceP7pmove_tP5pml_t_290:
	ucomiss xmm2, [_float_4_00000000]
	jbe _Z14PM_GroundTraceP7pmove_tP5pml_t_220
	ucomiss xmm2, [_float_8_00000000]
	jae _Z14PM_GroundTraceP7pmove_tP5pml_t_370
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_370
	test al, al
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_380
	and edx, 0x1f00000
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_380
	mov eax, 0x4a
_Z14PM_GroundTraceP7pmove_tP5pml_t_460:
	mov edx, [ebp-0x9c]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_220
_Z14PM_GroundTraceP7pmove_tP5pml_t_280:
	mov ecx, edx
	and ecx, 0x1f00000
	shr ecx, 0x14
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_390
_Z14PM_GroundTraceP7pmove_tP5pml_t_270:
	movaps xmm0, xmm2
	subss xmm0, [_float_12_00000000]
	divss xmm0, dword [_float_26_00000000]
	movss xmm1, dword [_float_4_00000000]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	cvttss2si esi, xmm0
	cmp esi, 0x19
	mov eax, 0x18
	cmovge esi, eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5
	mov eax, [ebp-0x9c]
	mov [esp], eax
	movss [ebp-0xc8], xmm2
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	movss xmm2, dword [ebp-0xc8]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_400
_Z14PM_GroundTraceP7pmove_tP5pml_t_320:
	xor eax, eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_410
_Z14PM_GroundTraceP7pmove_tP5pml_t_300:
	mov eax, [ebp-0x9c]
	add eax, 0x28
	movss xmm0, dword [_float_0_67000002]
	mov esi, [ebp-0x9c]
	movss xmm1, dword [esi+0x28]
	mulss xmm1, xmm0
	movss [esi+0x28], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_420
_Z14PM_GroundTraceP7pmove_tP5pml_t_230:
	mov dword [esp+0x4], _cstring_bg_falldamagemax
	mov dword [esp], 0x11
	movss [ebp-0xc8], xmm2
	call _Z10Com_PrintfiPKcz
	xor ebx, ebx
	movss xmm2, dword [ebp-0xc8]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_260
_Z14PM_GroundTraceP7pmove_tP5pml_t_200:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov eax, [ebp-0x9c]
	mov [esp], eax
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_430
_Z14PM_GroundTraceP7pmove_tP5pml_t_370:
	ucomiss xmm2, [_float_12_00000000]
	jae _Z14PM_GroundTraceP7pmove_tP5pml_t_440
	jp _Z14PM_GroundTraceP7pmove_tP5pml_t_440
	test al, al
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_450
	and edx, 0x1f00000
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_450
	mov eax, 0x49
_Z14PM_GroundTraceP7pmove_tP5pml_t_500:
	mov esi, [ebp-0x9c]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_220
_Z14PM_GroundTraceP7pmove_tP5pml_t_380:
	xor eax, eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_460
_Z14PM_GroundTraceP7pmove_tP5pml_t_440:
	mov eax, [ebp-0x9c]
	add eax, 0x28
	movss xmm0, dword [_float_0_67000002]
	mov edx, [ebp-0x9c]
	movss xmm1, dword [edx+0x28]
	mulss xmm1, xmm0
	movss [edx+0x28], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	mov edx, [ebp-0xac]
	mov eax, [edx+0x48]
	test ah, 0x20
	jnz _Z14PM_GroundTraceP7pmove_tP5pml_t_470
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	test al, al
	jz _Z14PM_GroundTraceP7pmove_tP5pml_t_470
	lea eax, [edx+0x4d]
_Z14PM_GroundTraceP7pmove_tP5pml_t_510:
	mov edx, [ebp-0x9c]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_220
_Z14PM_GroundTraceP7pmove_tP5pml_t_250:
	mov ebx, 0x64
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_260
_Z14PM_GroundTraceP7pmove_tP5pml_t_310:
	cmp eax, 0x1f4
	jg _Z14PM_GroundTraceP7pmove_tP5pml_t_480
	movss xmm1, dword [_float_0_50000000]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_490
_Z14PM_GroundTraceP7pmove_tP5pml_t_450:
	xor eax, eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_500
_Z14PM_GroundTraceP7pmove_tP5pml_t_470:
	xor eax, eax
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_510
_Z14PM_GroundTraceP7pmove_tP5pml_t_480:
	cmp eax, 0x5db
	jle _Z14PM_GroundTraceP7pmove_tP5pml_t_520
	movss xmm1, dword [_float_0_20000000]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_490
_Z14PM_GroundTraceP7pmove_tP5pml_t_520:
	cvtsi2ss xmm1, eax
	subss xmm1, [_float_500_00000000]
	divss xmm1, dword [_float_1000_00000000]
	mulss xmm1, [_float__0_30000001]
	addss xmm1, [_float_0_50000000]
	jmp _Z14PM_GroundTraceP7pmove_tP5pml_t_490


;PM_CmdScaleForStance(pmove_t const*)
_Z20PM_CmdScaleForStancePK7pmove_t:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [eax]
	mov ecx, [ebx+0x11c]
	test ecx, ecx
	jz _Z20PM_CmdScaleForStancePK7pmove_t_10
	mov edx, [ebx+0x120]
	cmp edx, 0xb
	jz _Z20PM_CmdScaleForStancePK7pmove_t_20
	cmp edx, 0x28
	jz _Z20PM_CmdScaleForStancePK7pmove_t_30
_Z20PM_CmdScaleForStancePK7pmove_t_10:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz _Z20PM_CmdScaleForStancePK7pmove_t_40
	cmp eax, 0x28
	jz _Z20PM_CmdScaleForStancePK7pmove_t_40
	cmp eax, 0xb
	jz _Z20PM_CmdScaleForStancePK7pmove_t_50
	movss xmm0, dword [_float_1_00000000]
	pop ebx
	pop ebp
	ret
_Z20PM_CmdScaleForStancePK7pmove_t_50:
	movss xmm0, dword [_float_0_15000001]
	pop ebx
	pop ebp
	ret
_Z20PM_CmdScaleForStancePK7pmove_t_40:
	movss xmm0, dword [_float_0_64999998]
	pop ebx
	pop ebp
	ret
_Z20PM_CmdScaleForStancePK7pmove_t_20:
	mov eax, [eax+0x4]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_400_00000000]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja _Z20PM_CmdScaleForStancePK7pmove_t_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jbe _Z20PM_CmdScaleForStancePK7pmove_t_60
	movss xmm3, dword [_float_0_15000001]
	movaps xmm0, xmm2
_Z20PM_CmdScaleForStancePK7pmove_t_110:
	mulss xmm0, [_float_0_64999998]
	addss xmm0, xmm3
	pop ebx
	pop ebp
	ret
_Z20PM_CmdScaleForStancePK7pmove_t_30:
	mov edx, [ebx+0x124]
	test edx, edx
	jnz _Z20PM_CmdScaleForStancePK7pmove_t_10
	mov eax, [eax+0x4]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_400_00000000]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja _Z20PM_CmdScaleForStancePK7pmove_t_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jbe _Z20PM_CmdScaleForStancePK7pmove_t_70
	movss xmm3, dword [_float_0_64999998]
	movaps xmm0, xmm2
_Z20PM_CmdScaleForStancePK7pmove_t_90:
	mulss xmm0, [_float_0_15000001]
	addss xmm0, xmm3
	pop ebx
	pop ebp
	ret
_Z20PM_CmdScaleForStancePK7pmove_t_70:
	ucomiss xmm1, xmm2
	jp _Z20PM_CmdScaleForStancePK7pmove_t_80
	jz _Z20PM_CmdScaleForStancePK7pmove_t_10
_Z20PM_CmdScaleForStancePK7pmove_t_80:
	movaps xmm3, xmm1
	mulss xmm3, [_float_0_64999998]
	subss xmm0, xmm1
	jmp _Z20PM_CmdScaleForStancePK7pmove_t_90
_Z20PM_CmdScaleForStancePK7pmove_t_60:
	ucomiss xmm1, xmm2
	jp _Z20PM_CmdScaleForStancePK7pmove_t_100
	jz _Z20PM_CmdScaleForStancePK7pmove_t_10
_Z20PM_CmdScaleForStancePK7pmove_t_100:
	movaps xmm3, xmm1
	mulss xmm3, [_float_0_15000001]
	subss xmm0, xmm1
	jmp _Z20PM_CmdScaleForStancePK7pmove_t_110
	nop


;PM_SetMovementDir(pmove_t*, pml_t*)
_Z17PM_SetMovementDirP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, eax
	mov ecx, edx
	mov esi, [eax]
	mov eax, [esi+0xc]
	test al, 0x1
	jz _Z17PM_SetMovementDirP7pmove_tP5pml_t_10
	test dword [esi+0xb0], 0x300
	jz _Z17PM_SetMovementDirP7pmove_tP5pml_t_20
_Z17PM_SetMovementDirP7pmove_tP5pml_t_10:
	test al, 0x8
	jnz _Z17PM_SetMovementDirP7pmove_tP5pml_t_30
	lea eax, [esi+0x1c]
	lea edx, [ecx+0x68]
	movss xmm2, dword [esi+0x1c]
	subss xmm2, [ecx+0x68]
	movss [ebp-0x24], xmm2
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x1c], xmm0
	cmp word [edi+0x1a], 0x0
	jnz _Z17PM_SetMovementDirP7pmove_tP5pml_t_40
_Z17PM_SetMovementDirP7pmove_tP5pml_t_50:
	mov dword [esi+0xac], 0x0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PM_SetMovementDirP7pmove_tP5pml_t_40:
	cmp dword [esi+0x70], 0x3ff
	jz _Z17PM_SetMovementDirP7pmove_tP5pml_t_50
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm1, xmm2
	ucomiss xmm1, [_float_0_00000000]
	jp _Z17PM_SetMovementDirP7pmove_tP5pml_t_60
	jz _Z17PM_SetMovementDirP7pmove_tP5pml_t_50
_Z17PM_SetMovementDirP7pmove_tP5pml_t_60:
	movss xmm0, dword [_float_5_00000000]
	mulss xmm0, [ecx+0x24]
	ucomiss xmm1, xmm0
	jbe _Z17PM_SetMovementDirP7pmove_tP5pml_t_50
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov [esp+0x4], ebx
	mov [esp], ebx
	call _Z11vectoanglesPKfPf
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	cmp byte [edi+0x1a], 0x0
	jns _Z17PM_SetMovementDirP7pmove_tP5pml_t_70
	cvtsi2ss xmm0, eax
	addss xmm0, [_float_180_00000000]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x48]
	mulss xmm0, [_float_360_00000000]
	cvttss2si eax, xmm0
	jmp _Z17PM_SetMovementDirP7pmove_tP5pml_t_70
_Z17PM_SetMovementDirP7pmove_tP5pml_t_30:
	lea eax, [esi+0x74]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call _Z10AngleDeltaff
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
_Z17PM_SetMovementDirP7pmove_tP5pml_t_70:
	mov edx, eax
	test eax, eax
	js _Z17PM_SetMovementDirP7pmove_tP5pml_t_80
_Z17PM_SetMovementDirP7pmove_tP5pml_t_110:
	cmp edx, 0x5a
	jg _Z17PM_SetMovementDirP7pmove_tP5pml_t_90
	mov edx, eax
_Z17PM_SetMovementDirP7pmove_tP5pml_t_100:
	movsx eax, dl
	mov [esi+0xac], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PM_SetMovementDirP7pmove_tP5pml_t_90:
	mov edx, 0x5a
	test eax, eax
	mov eax, 0xffffffa6
	cmovle edx, eax
	jmp _Z17PM_SetMovementDirP7pmove_tP5pml_t_100
_Z17PM_SetMovementDirP7pmove_tP5pml_t_20:
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	mov eax, [esi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	jmp _Z17PM_SetMovementDirP7pmove_tP5pml_t_70
_Z17PM_SetMovementDirP7pmove_tP5pml_t_80:
	neg edx
	jmp _Z17PM_SetMovementDirP7pmove_tP5pml_t_110


;PM_UpdateSprint(pmove_t*, pml_t const*)
_Z15PM_UpdateSprintP7pmove_tPK5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, eax
	mov ebx, [eax]
	lea edi, [ebx+0x5b8]
	mov eax, [ebx+0x5b8]
	test eax, eax
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_10
	test byte [esi+0x8], 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_20
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_10:
	cmp dword [ebx+0x4], 0x1
	jbe _Z15PM_UpdateSprintP7pmove_tPK5pml_t_30
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_50:
	cmp word [ebx+0xc], 0x0
	jns _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_140:
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_150:
	mov dword [edi], 0x1
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_20:
	mov dword [ebx+0x5b8], 0x0
	cmp dword [ebx+0x4], 0x1
	ja _Z15PM_UpdateSprintP7pmove_tPK5pml_t_50
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_30:
	mov [esp], ebx
	call _Z19BG_GetMaxSprintTimePK13playerState_s
	test eax, eax
	jle _Z15PM_UpdateSprintP7pmove_tPK5pml_t_50
	mov edx, [ebx+0xc]
	test dx, dx
	js _Z15PM_UpdateSprintP7pmove_tPK5pml_t_60
	mov eax, [edi+0x4]
	test eax, eax
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_70
	mov eax, [esi+0x4]
	sub eax, [edi+0xc]
	cvtsi2ss xmm1, eax
	mov eax, player_sprintRechargePause
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm0, xmm1
	ja _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_70:
	mov ecx, [esi+0x8]
	mov [ebp-0x6c], ecx
	and cl, 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	test edx, 0x40000
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	mov eax, [edi]
	test eax, eax
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	movsx eax, byte [esi+0x1a]
	mov [ebp-0x54], eax
	test dl, 0x8
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	mov ecx, eax
	mov eax, player_sprintForwardMinimum
	mov eax, [eax]
	mov [ebp-0x5c], eax
	cmp ecx, [eax+0xc]
	jle _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	test word [ebp-0x6c], 0xc435
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	jp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	test edx, 0x1001c
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	test dh, 0x40
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_80
	mov ecx, [ebx+0x18]
	test ecx, ecx
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_90
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_80:
	mov eax, [ebx+0xec]
	sub eax, 0xc
	cmp eax, 0x8
	jbe _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_90:
	and dl, 0x3
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_100
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_180:
	mov eax, [esi+0x4]
	mov [ebp-0x50], eax
	mov [esp], ebx
	call _Z19BG_GetMaxSprintTimePK13playerState_s
	mov [ebp-0x4c], eax
	mov eax, [edi+0x8]
	test eax, eax
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_110
	mov edx, [ebp-0x4c]
	movss xmm1, dword [_float_1000_00000000]
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_170:
	test edx, edx
	mov eax, 0x0
	cmovs edx, eax
	cmp edx, [ebp-0x4c]
	cmovg edx, [ebp-0x4c]
	mov [ebp-0x4c], edx
	cvtsi2ss xmm0, edx
	mov eax, player_sprintMinTime
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	ucomiss xmm0, xmm1
	jbe _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	mov [edi+0x10], edx
	mov eax, [esi+0x4]
	mov [edi+0x8], eax
	or dword [ebx+0xc], 0x8000
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_60:
	mov eax, [esi+0x4]
	sub eax, [edi+0x8]
	cmp eax, [edi+0x10]
	jl _Z15PM_UpdateSprintP7pmove_tPK5pml_t_120
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_130
	mov dword [edi], 0x1
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_130:
	mov dword [edi+0x4], 0x1
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_120:
	mov eax, [esi+0x8]
	mov [ebp-0x58], eax
	movsx ecx, byte [esi+0x1a]
	and edx, 0x10018
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	mov eax, player_sprintForwardMinimum
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jle _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	test word [ebp-0x58], 0xc735
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	jp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	mov edx, [ebx+0xec]
	lea eax, [edx-0xc]
	cmp eax, 0x8
	jbe _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe _Z15PM_UpdateSprintP7pmove_tPK5pml_t_140
	test byte [esi+0x28], 0x2
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	test byte [ebp-0x58], 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_150
	mov dword [edi], 0x1
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_150
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_110:
	mov ecx, [edi+0xc]
	cmp eax, ecx
	jle _Z15PM_UpdateSprintP7pmove_tPK5pml_t_160
	sub [ebp-0x50], eax
	mov edx, [edi+0x10]
	sub edx, [ebp-0x50]
	movss xmm1, dword [_float_1000_00000000]
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_170
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_100:
	lea edx, [ebx+0x1c]
	movzx ecx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov dword [esp+0xc], playerMaxs
	mov dword [esp+0x8], playerMins
	mov [esp+0x4], edx
	lea eax, [ebp-0x44]
	mov [esp], eax
	call dword [ecx*8+pmoveHandlers]
	cmp byte [ebp-0x1c], 0x0
	jnz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_40
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_180
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_160:
	mov edx, [edi+0x4]
	test edx, edx
	jz _Z15PM_UpdateSprintP7pmove_tPK5pml_t_190
	mov edx, ecx
	sub edx, eax
	mov eax, [edi+0x10]
	sub eax, edx
	mov edx, [ebp-0x50]
	add edx, eax
	sub edx, ecx
	mov eax, player_sprintRechargePause
	mov eax, [eax]
	movss xmm1, dword [_float_1000_00000000]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	sub edx, eax
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_170
_Z15PM_UpdateSprintP7pmove_tPK5pml_t_190:
	mov edx, ecx
	sub edx, eax
	mov eax, [edi+0x10]
	sub eax, edx
	mov edx, [ebp-0x50]
	add edx, eax
	sub edx, ecx
	movss xmm1, dword [_float_1000_00000000]
	jmp _Z15PM_UpdateSprintP7pmove_tPK5pml_t_170


;PM_Footsteps(pmove_t*, pml_t*)
_Z12PM_FootstepsP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, eax
	mov [ebp-0x3c], edx
	mov ebx, [eax]
	cmp dword [ebx+0x4], 0x6
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_10
_Z12PM_FootstepsP7pmove_tP5pml_t_220:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_FootstepsP7pmove_tP5pml_t_10:
	movss xmm1, dword [ebx+0x28]
	movss xmm0, dword [ebx+0x2c]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [eax+0xe4], xmm1
	test dword [ebx+0xb0], 0x300
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_20
	mov eax, [ebx+0xc]
	test al, 0x1
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_30
	mov eax, 0x3
_Z12PM_FootstepsP7pmove_tP5pml_t_230:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_FootstepsP7pmove_tP5pml_t_20:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_40
	cmp eax, 0x28
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_40
	cmp eax, 0xb
	setz al
	movzx edi, al
_Z12PM_FootstepsP7pmove_tP5pml_t_240:
	cmp dword [ebx+0x70], 0x3ff
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_50
_Z12PM_FootstepsP7pmove_tP5pml_t_330:
	mov edx, [ebx+0xc]
	test dl, 0x40
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_60
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_70
_Z12PM_FootstepsP7pmove_tP5pml_t_60:
	mov eax, 0x1
_Z12PM_FootstepsP7pmove_tP5pml_t_450:
	mov [ebp-0x34], eax
	xor eax, eax
	test dh, 0x80
	setnz al
	mov [ebp-0x30], eax
	mov eax, player_moveThreshhold
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	ja _Z12PM_FootstepsP7pmove_tP5pml_t_80
	cmp dword [ebx+0x4], 0x1
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_80
	cmp word [esi+0x1a], 0x0
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_90
	and dl, 0x20
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_100
	add edi, 0x3
_Z12PM_FootstepsP7pmove_tP5pml_t_100:
	movsx eax, byte [esi+0x1b]
	cvtsi2ss xmm0, eax
	movss [ebp-0x20], xmm0
	movsx eax, byte [esi+0x1a]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	movss xmm1, dword [ebp-0x1c]
	mov eax, player_strafeAnimCosAngle
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm1, xmm0
	ja _Z12PM_FootstepsP7pmove_tP5pml_t_110
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	ja _Z12PM_FootstepsP7pmove_tP5pml_t_110
	cmp byte [esi+0x1b], 0x0
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_120
	mov eax, 0x2
	xor edx, edx
_Z12PM_FootstepsP7pmove_tP5pml_t_530:
	mov [esp+0x8], eax
	mov [esp+0xc], edx
	mov dword [esp+0x4], 0x8
	mov eax, [esi]
	mov eax, [eax+0xdc]
	mov [esp], eax
	call _Z20BG_SetConditionValueiiy
	mov eax, player_dmgtimer_stumbleTime
	mov edx, [eax]
	mov eax, [ebx+0xa4]
	sub eax, [edx+0xc]
	mov edx, 0x0
	cmovs eax, edx
	xor edx, edx
	cmp eax, [ebx+0xa0]
	setl dl
	mov ecx, [ebp-0x34]
	lea eax, [ecx+edi*2]
	lea eax, [edx+eax*2]
	mov eax, [eax*4+_ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable]
	test edi, edi
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_130
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_130
	cmp edx, 0x1
	sbb eax, eax
	and eax, 0xffffffea
	add eax, 0x2a
_Z12PM_FootstepsP7pmove_tP5pml_t_130:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	test eax, eax
	js _Z12PM_FootstepsP7pmove_tP5pml_t_140
_Z12PM_FootstepsP7pmove_tP5pml_t_640:
	mov ecx, [esi]
	cvtsi2ss xmm2, dword [ecx+0x60]
	movzx edx, byte [esi+0x1a]
	test dl, dl
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_150
	cmp byte [esi+0x1b], 0x0
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_160
	mov eax, player_strafeSpeedScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_75000000]
	addss xmm0, xmm1
	addss xmm0, xmm1
	movss xmm3, dword [_float_0_50000000]
	mulss xmm0, xmm3
	mulss xmm2, xmm0
	test dl, dl
	js _Z12PM_FootstepsP7pmove_tP5pml_t_170
_Z12PM_FootstepsP7pmove_tP5pml_t_560:
	mov eax, [ebp-0x34]
	test eax, eax
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_180
	mulss xmm2, [_float_0_40000001]
_Z12PM_FootstepsP7pmove_tP5pml_t_550:
	mov eax, [ecx+0xe8]
	test eax, eax
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_190
_Z12PM_FootstepsP7pmove_tP5pml_t_600:
	mov eax, esi
	movss [ebp-0x58], xmm2
	call _Z20PM_CmdScaleForStancePK7pmove_t
	movss xmm2, dword [ebp-0x58]
	movaps xmm3, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [esi+0xe4]
	test edi, edi
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_200
	mov eax, [ebp-0x30]
	test eax, eax
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_200
	mov eax, player_sprintCameraBob
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
_Z12PM_FootstepsP7pmove_tP5pml_t_540:
	mov ecx, [ebx+0x8]
	mov [ebp-0x38], ecx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm3
	mulss xmm2, xmm0
	mov eax, [ebp-0x3c]
	cvtsi2ss xmm0, dword [eax+0x28]
	mulss xmm2, xmm0
	addss xmm1, xmm2
	cvttss2si eax, xmm1
	movzx edi, al
	mov [ebx+0x8], edi
	mov eax, [esi]
	mov edx, [eax+0xc]
	mov ecx, edx
	and ecx, 0x40
	mov eax, [eax+0x114]
	cmp eax, 0x16
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_210
	cmp eax, 0x28
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_210
	cmp eax, 0xb
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_210
	test ecx, ecx
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_210
	mov eax, player_footstepsThreshhold
	mov eax, [eax]
	movss xmm0, dword [esi+0xe4]
	ucomiss xmm0, [eax+0xc]
	setae al
	movzx eax, al
_Z12PM_FootstepsP7pmove_tP5pml_t_510:
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov edx, [ebp-0x38]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z16PM_FootstepEventP7pmove_tP5pml_tiii
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_30:
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x2
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_230
_Z12PM_FootstepsP7pmove_tP5pml_t_40:
	mov edi, 0x2
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_240
_Z12PM_FootstepsP7pmove_tP5pml_t_80:
	ucomiss xmm1, [_float_1_00000000]
	jb _Z12PM_FootstepsP7pmove_tP5pml_t_250
_Z12PM_FootstepsP7pmove_tP5pml_t_520:
	mov ecx, [ebx+0xdc]
	cmp ecx, 0x3f
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_260
	xor esi, esi
	mov dword [ebp-0x2c], 0x0
_Z12PM_FootstepsP7pmove_tP5pml_t_420:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_270
	cmp eax, 0x28
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_270
	xor edx, edx
	cmp eax, 0xb
	setz dl
_Z12PM_FootstepsP7pmove_tP5pml_t_440:
	test esi, esi
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_280
	xor ecx, ecx
_Z12PM_FootstepsP7pmove_tP5pml_t_430:
	lea eax, [edx+edx*2]
	add eax, ecx
	mov ecx, [eax*4+_ZZ19PM_GetNotMovingAnimiiE14notMovingAnims]
	test esi, esi
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_290
	mov eax, player_dmgtimer_flinchTime
	mov edx, [eax]
	mov eax, [ebx+0xa4]
	sub eax, [edx+0xc]
	cmovs eax, esi
	cmp eax, [ebx+0xa0]
	jge _Z12PM_FootstepsP7pmove_tP5pml_t_300
	cmp dword [ebx+0x114], 0x3c
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_310
_Z12PM_FootstepsP7pmove_tP5pml_t_300:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
_Z12PM_FootstepsP7pmove_tP5pml_t_500:
	test eax, eax
	jns _Z12PM_FootstepsP7pmove_tP5pml_t_220
	cmp dword [ebx+0x114], 0x28
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_320
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_50:
	cmp dword [ebx+0x4], 0x1
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_330
	mov edx, [ebx+0xc]
	test dl, 0x8
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_220
	mov eax, [esi+0x4]
	sub eax, [ebx+0x80]
	cmp eax, 0x12b
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_220
	movss xmm0, dword [ebx+0x30]
	and dl, 0x40
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_340
	pxor xmm1, xmm1
	ucomiss xmm1, [ebx+0x5c]
	jp _Z12PM_FootstepsP7pmove_tP5pml_t_350
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_350
	movaps xmm2, xmm0
	divss xmm2, dword [_float_95_25000000]
	mulss xmm2, [_float_0_44999999]
_Z12PM_FootstepsP7pmove_tP5pml_t_570:
	ucomiss xmm0, xmm1
	jb _Z12PM_FootstepsP7pmove_tP5pml_t_360
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x12
_Z12PM_FootstepsP7pmove_tP5pml_t_620:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	movss [ebp-0x58], xmm2
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	movss xmm2, dword [ebp-0x58]
	mov edx, [ebx+0x8]
	cvtsi2ss xmm0, edx
	mov eax, [ebp-0x3c]
	cvtsi2ss xmm1, dword [eax+0x28]
	mulss xmm2, xmm1
	addss xmm0, xmm2
	cvttss2si eax, xmm0
	and eax, 0xff
	mov [ebx+0x8], eax
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z16PM_FootstepEventP7pmove_tP5pml_tiii
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_260:
	mov eax, bgs
	mov esi, [eax]
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	lea eax, [esi+eax*4+0x99a04]
	mov [ebp-0x2c], eax
	test eax, eax
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_370
	mov eax, player_turnAnims
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_370
	sub edi, 0x1
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_370
	mov edx, [ebp-0x2c]
	cmp byte [edx+0x4bc], 0x0
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_380
	mov edx, [edx+0x4b8]
	test edx, edx
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_390
	mov eax, [ebp-0x2c]
_Z12PM_FootstepsP7pmove_tP5pml_t_610:
	mov edi, [eax+0x380]
	test edi, edi
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_400
	movss xmm1, dword [eax+0x3ac]
	movss xmm0, dword [eax+0x37c]
	ucomiss xmm0, xmm1
	jbe _Z12PM_FootstepsP7pmove_tP5pml_t_410
	mov esi, 0xe
	mov eax, 0xe
_Z12PM_FootstepsP7pmove_tP5pml_t_630:
	mov ecx, [ebp-0x2c]
	movss [ecx+0x37c], xmm1
	mov [ecx+0x4bc], al
	mov ecx, bgs
	mov eax, [ecx]
	cmp edx, [eax+0x999dc]
	jge _Z12PM_FootstepsP7pmove_tP5pml_t_420
	mov eax, [ebp-0x2c]
	mov dword [eax+0x4b8], 0x0
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_420
_Z12PM_FootstepsP7pmove_tP5pml_t_280:
	xor ecx, ecx
	cmp esi, 0xe
	setnz cl
	add ecx, 0x1
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_430
_Z12PM_FootstepsP7pmove_tP5pml_t_270:
	mov edx, 0x2
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_440
_Z12PM_FootstepsP7pmove_tP5pml_t_70:
	jp _Z12PM_FootstepsP7pmove_tP5pml_t_60
	xor eax, eax
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_450
_Z12PM_FootstepsP7pmove_tP5pml_t_90:
	ucomiss xmm1, [_float_120_00000000]
	ja _Z12PM_FootstepsP7pmove_tP5pml_t_220
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_460
	cmp eax, 0x28
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_470
_Z12PM_FootstepsP7pmove_tP5pml_t_320:
	mov eax, player_dmgtimer_flinchTime
	mov edx, [eax]
	mov eax, [ebx+0xa4]
	sub eax, [edx+0xc]
	mov edx, 0x0
	cmovs eax, edx
	cmp eax, [ebx+0xa0]
	jge _Z12PM_FootstepsP7pmove_tP5pml_t_480
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_400:
	mov ecx, bgs
	mov eax, [ecx]
	cmp edx, [eax+0x999dc]
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_490
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x3ac]
	mov [edx+0x37c], eax
_Z12PM_FootstepsP7pmove_tP5pml_t_370:
	xor esi, esi
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_420
_Z12PM_FootstepsP7pmove_tP5pml_t_310:
	mov dword [esp+0xc], 0x0
	mov eax, [ebx+0xa8]
	add eax, 0x20
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_290:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	test eax, eax
	jle _Z12PM_FootstepsP7pmove_tP5pml_t_500
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x4b8]
	test esi, esi
	jnz _Z12PM_FootstepsP7pmove_tP5pml_t_220
	mov edx, eax
	mov eax, bgs
	mov eax, [eax]
	mov eax, [eax+0x999dc]
	add eax, [ebx+0x98]
	mov [edx+0x4b8], eax
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_210:
	xor eax, eax
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_510
_Z12PM_FootstepsP7pmove_tP5pml_t_250:
	jp _Z12PM_FootstepsP7pmove_tP5pml_t_520
	mov dword [ebx+0x8], 0x0
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_520
_Z12PM_FootstepsP7pmove_tP5pml_t_110:
	xor eax, eax
	xor edx, edx
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_530
_Z12PM_FootstepsP7pmove_tP5pml_t_200:
	mov edx, [ebp-0x34]
	lea eax, [edx+edi*2]
	movss xmm2, dword [eax*4+_ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable]
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_540
_Z12PM_FootstepsP7pmove_tP5pml_t_480:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_220
_Z12PM_FootstepsP7pmove_tP5pml_t_180:
	mov eax, [ebp-0x30]
	test eax, eax
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_550
	mov eax, player_sprintSpeedScale
	mov eax, [eax]
	mulss xmm2, [eax+0xc]
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_550
_Z12PM_FootstepsP7pmove_tP5pml_t_150:
	cmp byte [esi+0x1b], 0x0
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_560
	mov eax, player_strafeSpeedScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_75000000]
	addss xmm0, xmm1
	mulss xmm2, xmm0
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_560
_Z12PM_FootstepsP7pmove_tP5pml_t_340:
	pxor xmm1, xmm1
_Z12PM_FootstepsP7pmove_tP5pml_t_350:
	movaps xmm2, xmm0
	divss xmm2, dword [_float_38_10000229]
	mulss xmm2, [_float_0_34999999]
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_570
_Z12PM_FootstepsP7pmove_tP5pml_t_190:
	mov [esp], eax
	movss [ebp-0x58], xmm2
	call _Z15BG_GetWeaponDefj
	mov edx, eax
	movss xmm0, dword [eax+0x418]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	movss xmm2, dword [ebp-0x58]
	jbe _Z12PM_FootstepsP7pmove_tP5pml_t_580
	mov eax, [esi]
	test byte [eax+0xc], 0x40
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_590
_Z12PM_FootstepsP7pmove_tP5pml_t_580:
	movss xmm0, dword [edx+0x41c]
	ucomiss xmm0, xmm1
	jbe _Z12PM_FootstepsP7pmove_tP5pml_t_600
_Z12PM_FootstepsP7pmove_tP5pml_t_590:
	mulss xmm2, xmm0
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_600
_Z12PM_FootstepsP7pmove_tP5pml_t_380:
	mov ecx, edx
	mov edx, [edx+0x4b8]
	mov eax, ecx
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_610
_Z12PM_FootstepsP7pmove_tP5pml_t_160:
	test dl, dl
	jns _Z12PM_FootstepsP7pmove_tP5pml_t_560
	mov eax, player_backSpeedScale
	mov eax, [eax]
	mulss xmm2, [eax+0xc]
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_560
_Z12PM_FootstepsP7pmove_tP5pml_t_360:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x13
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_620
_Z12PM_FootstepsP7pmove_tP5pml_t_410:
	mov esi, 0xf
	mov eax, 0xf
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_630
_Z12PM_FootstepsP7pmove_tP5pml_t_490:
	test edx, edx
	jz _Z12PM_FootstepsP7pmove_tP5pml_t_370
	mov ecx, [ebp-0x2c]
	mov dword [ecx+0x4b8], 0x0
	mov eax, [ecx+0x3ac]
	mov [ecx+0x37c], eax
	xor esi, esi
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_420
_Z12PM_FootstepsP7pmove_tP5pml_t_140:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_640
_Z12PM_FootstepsP7pmove_tP5pml_t_460:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
_Z12PM_FootstepsP7pmove_tP5pml_t_650:
	test eax, eax
	jns _Z12PM_FootstepsP7pmove_tP5pml_t_220
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_320
_Z12PM_FootstepsP7pmove_tP5pml_t_470:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_650
_Z12PM_FootstepsP7pmove_tP5pml_t_390:
	mov eax, [esi+0x999dc]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_turn_anim_end_ti
	mov dword [esp], 0x11
	call _Z11Com_DPrintfiPKcz
	mov eax, [ebp-0x2c]
	mov edx, [eax+0x4b8]
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_610
_Z12PM_FootstepsP7pmove_tP5pml_t_170:
	mov eax, player_backSpeedScale
	mov eax, [eax]
	movaps xmm0, xmm1
	addss xmm0, [eax+0xc]
	mulss xmm0, xmm3
	mulss xmm2, xmm0
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_560
_Z12PM_FootstepsP7pmove_tP5pml_t_120:
	mov eax, 0x1
	xor edx, edx
	jmp _Z12PM_FootstepsP7pmove_tP5pml_t_530


;PM_ViewHeightAdjust(pmove_t*, pml_t*)
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30
	mov edi, eax
	mov ecx, [eax]
	mov ebx, [ecx+0x114]
	test ebx, ebx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_10
	movss xmm1, dword [ecx+0x118]
	ucomiss xmm1, [_float_0_00000000]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_20
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_70:
	cvtsi2ss xmm0, ebx
	ucomiss xmm1, xmm0
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_30
	jp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_30
	mov eax, [ecx+0x11c]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_30:
	cmp ebx, 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_50
	cmp ebx, 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_50
	cmp ebx, 0x3c
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_50
	mov dword [ecx+0x11c], 0x0
	cvtsi2ss xmm2, dword [ecx+0x114]
	ucomiss xmm2, xmm1
	jbe _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_60
	movss xmm0, dword [_float_180_00000000]
	mulss xmm0, [edx+0x24]
	addss xmm0, xmm1
	movss [ecx+0x118], xmm0
	ucomiss xmm0, xmm2
	jb _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_330:
	movss [ecx+0x118], xmm2
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_20:
	jp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_70
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_10:
	cmp dword [ecx+0x4], 0x4
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_80
	cvtsi2ss xmm0, ebx
	movss [ecx+0x118], xmm0
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40:
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_80:
	mov dword [ecx+0x118], 0x0
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_50:
	mov esi, [ecx+0x11c]
	test esi, esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_90
	mov eax, [ecx+0x124]
	mov [ebp-0x38], eax
	mov edx, [ecx+0x120]
	mov [ebp-0x34], edx
	cmp edx, 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_100
	cmp edx, 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_110
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_340:
	mov edx, 0xc8
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_350:
	mov eax, [edi+0x4]
	sub eax, esi
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [ebp-0x3c], eax
	mov esi, edx
	cdq
	idiv esi
	mov [ebp-0x10], eax
	test eax, eax
	js _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_120
	cmp eax, 0x64
	jg _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_130
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_130
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_370:
	cmp dword [ebp-0x34], 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_140
	cmp dword [ebp-0x34], 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_150
	mov eax, [ebp-0x10]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_160
	mov edx, viewLerp_CrouchStand+0x18
	mov dword [ebp-0x18], viewLerp_CrouchStand+0xc
	mov dword [ebp-0x1c], 0x1
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_190:
	mov eax, [ebp-0x18]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_170
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_180
	add dword [ebp-0x1c], 0x1
	mov [ebp-0x18], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_190
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_160:
	movss xmm2, dword [viewLerp_CrouchStand+0x4]
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430:
	movss [ecx+0x118], xmm2
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_360:
	mov eax, [ecx+0x11c]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_90
	cmp ebx, [ebp-0x34]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	jge _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_200
	mov eax, [ecx+0x124]
	test eax, eax
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_380:
	mov ebx, 0x64
	sub ebx, [ebp-0x10]
	mov eax, [ebp-0x38]
	xor eax, 0x1
	mov [ecx+0x124], eax
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_210
	cmp dword [ebp-0x34], 0x3c
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_220
	cmp dword [ebp-0x34], 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_230
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_440:
	cmp ebx, 0x64
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_240
	mov eax, [ecx+0x124]
	mov edx, [ecx+0x120]
	mov [ebp-0x34], edx
	cmp edx, 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_250
	cmp dword [ebp-0x34], 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_260
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_500:
	movss xmm1, dword [_float_200_00000000]
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_510:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float_0_01000000]
	mulss xmm0, xmm1
	cvttss2si edx, xmm0
	mov eax, [edi+0x4]
	sub eax, edx
	mov [ecx+0x11c], eax
	cmp dword [ebp-0x34], 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_270
	cmp dword [ebp-0x34], 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_280
	test ebx, ebx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov edx, viewLerp_CrouchStand+0x18
	mov ecx, viewLerp_CrouchStand+0xc
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_290:
	cmp ebx, [ecx]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_290
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_90:
	cvtsi2ss xmm0, dword [ecx+0x114]
	ucomiss xmm0, [ecx+0x118]
	jp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_300
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_300:
	mov eax, [edi+0x4]
	mov [ecx+0x11c], eax
	cmp ebx, 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_310
	cmp ebx, 0x28
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_320
	cmp ebx, 0x3c
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov dword [ecx+0x124], 0x0
	mov eax, 0x28
	movss xmm0, dword [_float_40_00000000]
	ucomiss xmm0, [ecx+0x118]
	cmovbe eax, ebx
	mov [ecx+0x120], eax
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_60:
	movss xmm0, dword [_float__180_00000000]
	mulss xmm0, [edx+0x24]
	addss xmm0, xmm1
	movss [ecx+0x118], xmm0
	ucomiss xmm2, xmm0
	jae _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_330
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_310:
	mov dword [ecx+0x124], 0x1
	movss xmm0, dword [ecx+0x118]
	mov eax, 0x28
	ucomiss xmm0, [_float_40_00000000]
	cmovbe eax, ebx
	mov [ecx+0x120], eax
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_110:
	test eax, eax
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_340
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_100:
	mov edx, 0x190
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_350
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_130:
	cvtsi2ss xmm0, dword [ebp-0x34]
	movss [ecx+0x118], xmm0
	mov dword [ecx+0x11c], 0x0
	mov dword [ebp-0x10], 0x64
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_360
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_120:
	mov dword [ebp-0x10], 0x0
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_370
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_320:
	movss xmm0, dword [ecx+0x118]
	xor eax, eax
	ucomiss xmm0, [_float_40_00000000]
	seta al
	mov [ecx+0x124], eax
	mov dword [ecx+0x120], 0x28
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_200:
	jle _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov eax, [ecx+0x124]
	test eax, eax
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_380
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_140:
	mov eax, [ebp-0x10]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_390
	mov edx, viewLerp_CrouchProne+0x18
	mov dword [ebp-0x2c], viewLerp_CrouchProne+0xc
	mov dword [ebp-0x30], 0x1
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_420:
	mov eax, [ebp-0x2c]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_400
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_410
	add dword [ebp-0x30], 0x1
	mov [ebp-0x2c], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_420
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_390:
	movss xmm2, dword [viewLerp_CrouchProne+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_210:
	cmp dword [ebp-0x34], 0xb
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_220
	cmp dword [ebp-0x34], 0x28
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_440
	mov dword [ecx+0x120], 0x3c
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_440
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_150:
	mov esi, [ebp-0x38]
	test esi, esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_450
	mov edx, [ebp-0x10]
	test edx, edx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_460
	mov edx, viewLerp_StandCrouch+0x18
	mov dword [ebp-0x24], viewLerp_StandCrouch+0xc
	mov dword [ebp-0x28], 0x1
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_490:
	mov eax, [ebp-0x24]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_470
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_480
	add dword [ebp-0x28], 0x1
	mov [ebp-0x24], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_490
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_460:
	movss xmm2, dword [viewLerp_StandCrouch+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_220:
	mov dword [ecx+0x120], 0x28
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_440
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_240:
	cvtsi2ss xmm0, dword [ecx+0x120]
	movss [ecx+0x118], xmm0
	mov dword [ecx+0x11c], 0x0
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_260:
	test eax, eax
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_500
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_250:
	movss xmm1, dword [_float_400_00000000]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_510
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_270:
	test ebx, ebx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov edx, viewLerp_CrouchProne+0x18
	mov ecx, viewLerp_CrouchProne+0xc
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_520:
	cmp ebx, [ecx]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_520
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_450:
	mov eax, [ebp-0x10]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_530
	mov edx, viewLerp_ProneCrouch+0x18
	mov dword [ebp-0x14], viewLerp_ProneCrouch+0xc
	mov dword [ebp-0x20], 0x1
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_560:
	mov eax, [ebp-0x14]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_540
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_550
	add dword [ebp-0x20], 0x1
	mov [ebp-0x14], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_560
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_530:
	movss xmm2, dword [viewLerp_ProneCrouch+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_280:
	mov eax, [ecx+0x124]
	test eax, eax
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_570
	test ebx, ebx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov edx, viewLerp_StandCrouch+0x18
	mov ecx, viewLerp_StandCrouch+0xc
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_580:
	cmp ebx, [ecx]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_580
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_230:
	mov dword [ecx+0x120], 0xb
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_440
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_170:
	movss xmm2, dword [eax+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_180:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+viewLerp_CrouchStand]
	mov edx, [eax-0xc]
	movss xmm1, dword [eax-0x8]
	mov eax, [ebp-0x10]
	sub eax, edx
	cvtsi2ss xmm2, eax
	sub esi, edx
	cvtsi2ss xmm0, esi
	divss xmm2, xmm0
	mov esi, [ebp-0x18]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_570:
	test ebx, ebx
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov edx, viewLerp_ProneCrouch+0x18
	mov ecx, viewLerp_ProneCrouch+0xc
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_590:
	cmp ebx, [ecx]
	jz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	jl _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_590
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_40
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_410:
	mov edx, [ebp-0x30]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+viewLerp_CrouchProne]
	mov edx, [eax-0xc]
	movss xmm1, dword [eax-0x8]
	mov eax, [ebp-0x10]
	sub eax, edx
	cvtsi2ss xmm2, eax
	sub esi, edx
	cvtsi2ss xmm0, esi
	divss xmm2, xmm0
	mov esi, [ebp-0x2c]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_400:
	mov eax, [ebp-0x2c]
	movss xmm2, dword [eax+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_480:
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+viewLerp_StandCrouch]
	mov edx, [eax-0xc]
	movss xmm1, dword [eax-0x8]
	mov eax, [ebp-0x10]
	sub eax, edx
	cvtsi2ss xmm2, eax
	sub esi, edx
	cvtsi2ss xmm0, esi
	divss xmm2, xmm0
	mov esi, [ebp-0x24]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_470:
	mov edx, [ebp-0x24]
	movss xmm2, dword [edx+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_550:
	mov edx, [ebp-0x20]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+viewLerp_ProneCrouch]
	mov edx, [eax-0xc]
	movss xmm1, dword [eax-0x8]
	mov eax, [ebp-0x10]
	sub eax, edx
	cvtsi2ss xmm2, eax
	sub esi, edx
	cvtsi2ss xmm0, esi
	divss xmm2, xmm0
	mov esi, [ebp-0x14]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm2, xmm1
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430
_Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_540:
	mov edx, [ebp-0x14]
	movss xmm2, dword [edx+0x4]
	jmp _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t_430


;PM_CheckDuck(pmove_t*, pml_t*)
_Z12PM_CheckDuckP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, eax
	mov ebx, edx
	mov edi, [eax]
	mov dword [eax+0xe8], 0x0
	cmp dword [edi+0x4], 0x4
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_10
	mov eax, [edi+0xc]
	and eax, 0x1
	mov [ebp-0x80], eax
	lea edx, [esi+0xcc]
	mov [ebp-0x7c], edx
	mov eax, 0xc1700000
	mov [esi+0xcc], eax
	mov [edx+0x4], eax
	mov dword [edx+0x8], 0x0
	lea eax, [esi+0xd8]
	mov [ebp-0x78], eax
	mov eax, 0x41700000
	mov [esi+0xd8], eax
	mov edx, [ebp-0x78]
	mov [edx+0x4], eax
	mov dword [edx+0x8], 0x428c0000
	cmp dword [edi+0x4], 0x7
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_20
	mov eax, [edi+0xc]
	test eax, 0x100000
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_30
	test ax, ax
	js _Z12PM_CheckDuckP7pmove_tP5pml_t_40
	mov edx, [edi+0xb0]
	test dh, 0x3
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_50
	test ah, 0xc
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	cmp dword [edi+0xec], 0x5
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_70
_Z12PM_CheckDuckP7pmove_tP5pml_t_430:
	cmp dword [edi+0x4], 0x6
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_80
	mov eax, [edi+0xc]
	test al, 0x8
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_90
_Z12PM_CheckDuckP7pmove_tP5pml_t_380:
	mov edx, [esi+0x8]
_Z12PM_CheckDuckP7pmove_tP5pml_t_370:
	test dh, 0x1
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_100
	test ah, 0x4
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_110
_Z12PM_CheckDuckP7pmove_tP5pml_t_100:
	and dh, 0x2
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_120
	test al, 0x1
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_130
	mov dword [esi+0xe0], 0x42480000
	lea edx, [edi+0x1c]
	movzx ecx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [edi+0xdc]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dword [ecx*8+pmoveHandlers]
	cmp byte [ebp-0x34], 0x0
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_140
	test byte [esi+0x9], 0x10
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x8
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_10:
	mov eax, 0xc1000000
	mov [esi+0xcc], eax
	mov [esi+0xd0], eax
	mov [esi+0xd4], eax
	mov eax, 0x41000000
	mov [esi+0xd8], eax
	mov [esi+0xdc], eax
	mov dword [esi+0xe0], 0x41800000
	and dword [edi+0xc], 0xfffffffc
	mov eax, [esi+0x8]
	test ah, 0x1
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_150
_Z12PM_CheckDuckP7pmove_tP5pml_t_310:
	mov dword [edi+0x114], 0x0
	mov dword [edi+0x118], 0x0
_Z12PM_CheckDuckP7pmove_tP5pml_t_240:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_CheckDuckP7pmove_tP5pml_t_30:
	mov dword [edi+0x114], 0x3c
_Z12PM_CheckDuckP7pmove_tP5pml_t_300:
	and eax, 0xfffffffc
	mov [edi+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	mov edx, ebx
	mov eax, esi
	call _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_CheckDuckP7pmove_tP5pml_t_50:
	test dh, 0x1
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_160
	and dh, 0x2
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_170
_Z12PM_CheckDuckP7pmove_tP5pml_t_320:
	and eax, 0xfffffffc
	mov [edi+0xc], eax
_Z12PM_CheckDuckP7pmove_tP5pml_t_60:
	mov ecx, [edi+0x11c]
	test ecx, ecx
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_180
	cmp dword [edi+0x4], 0x6
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_190
	mov eax, [edi+0xc]
	test al, 0x1
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_200
	mov eax, [edi+0x114]
	cmp eax, 0x3c
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_210
	cmp eax, 0xb
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_180
	mov dword [edi+0x114], 0xb
	mov dword [esi+0xe8], 0x1
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii
	mov [esp], edi
	call _Z21Jump_ActivateSlowdownP13playerState_s
_Z12PM_CheckDuckP7pmove_tP5pml_t_180:
	mov edx, ebx
	mov eax, esi
	call _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t
	mov eax, [edi+0x114]
	cmp eax, 0x16
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_220
	cmp eax, 0x28
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_220
	cmp eax, 0xb
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_230
	mov dword [esi+0xe0], 0x428c0000
	and dword [edi+0xb0], 0xfffffff3
	mov eax, [edi+0xc]
	and eax, 0xfffffffc
	mov [edi+0xc], eax
_Z12PM_CheckDuckP7pmove_tP5pml_t_290:
	test al, 0x1
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_240
	mov edx, [ebp-0x80]
	test edx, edx
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_240
	cmp word [esi+0x1a], 0x0
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_250
_Z12PM_CheckDuckP7pmove_tP5pml_t_400:
	lea ebx, [edi+0x1c]
	mov eax, [edi+0x1c]
	mov [ebp-0x30], eax
	mov eax, [edi+0x20]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_10_00000000]
	addss xmm0, [edi+0x24]
	movss [ebp-0x28], xmm0
	movzx edx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [edi+0xdc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dword [edx*8+pmoveHandlers]
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [edi+0x1c]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [edi+0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [edi+0x24]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x28], xmm1
	movzx edx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [edi+0xdc]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dword [edx*8+pmoveHandlers]
	movss xmm2, dword [ebp-0x5c]
	movss xmm1, dword [ebp-0x30]
	movss xmm0, dword [edi+0x1c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi+0x1c], xmm1
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [edi+0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [ebp-0x28]
	movss xmm0, dword [edi+0x24]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebx+0x8], xmm1
	mov eax, [edi+0x10c]
	mov [edi+0x58c], eax
	mov eax, [edi+0x1c]
	mov [ebp-0x24], eax
	mov eax, [edi+0x20]
	mov [ebp-0x20], eax
	movss xmm0, dword [edi+0x24]
	subss xmm0, [_float_0_25000000]
	movss [ebp-0x1c], xmm0
	movzx edx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [edi+0xdc]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dword [edx*8+pmoveHandlers]
	cmp byte [ebp-0x33], 0x0
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_260
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	ja _Z12PM_CheckDuckP7pmove_tP5pml_t_270
_Z12PM_CheckDuckP7pmove_tP5pml_t_260:
	mov dword [edi+0x590], 0x0
_Z12PM_CheckDuckP7pmove_tP5pml_t_390:
	mov eax, [edi+0x108]
	mov [esp+0x4], eax
	mov eax, [edi+0x590]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0x70]
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [_float__45_00000000]
	jae _Z12PM_CheckDuckP7pmove_tP5pml_t_280
	jp _Z12PM_CheckDuckP7pmove_tP5pml_t_280
	movss xmm0, dword [edi+0x108]
	subss xmm0, [_float_45_00000000]
	movss [edi+0x594], xmm0
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_240
_Z12PM_CheckDuckP7pmove_tP5pml_t_220:
	mov dword [esi+0xe0], 0x42480000
	mov eax, [edi+0xb0]
	or eax, 0x4
	and eax, 0xfffffff7
	mov [edi+0xb0], eax
	mov eax, [edi+0xc]
	or eax, 0x2
	and eax, 0xfffffffe
	mov [edi+0xc], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_290
_Z12PM_CheckDuckP7pmove_tP5pml_t_40:
	mov dword [edi+0x114], 0x3c
	and dword [edi+0xb0], 0xfffffff3
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_300
_Z12PM_CheckDuckP7pmove_tP5pml_t_20:
	mov dword [edi+0x114], 0x8
	mov edx, ebx
	mov eax, esi
	call _Z19PM_ViewHeightAdjustP7pmove_tP5pml_t
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_CheckDuckP7pmove_tP5pml_t_150:
	and ah, 0xfe
	mov [esi+0x8], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_310
_Z12PM_CheckDuckP7pmove_tP5pml_t_160:
	and dh, 0x2
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_320
	or eax, 0x2
	and eax, 0xfffffffe
	mov [edi+0xc], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_280:
	ucomiss xmm0, [_float_45_00000000]
	ja _Z12PM_CheckDuckP7pmove_tP5pml_t_330
	mov eax, [edi+0x590]
	mov [edi+0x594], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_240
_Z12PM_CheckDuckP7pmove_tP5pml_t_200:
	cmp dword [edi+0x114], 0xb
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_340
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x14
	add eax, 0x28
	mov [edi+0x114], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_180
_Z12PM_CheckDuckP7pmove_tP5pml_t_110:
	mov eax, [esi]
	mov [ebp-0x74], eax
	mov eax, [eax+0xe8]
	mov [esp], eax
	call _Z20BG_WeaponBlocksPronej
	test al, al
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_350
	mov eax, [ebp-0x74]
	test byte [eax+0xc], 0x1
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_360
	cmp dword [eax+0x70], 0x3ff
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_350
	mov dword [esp+0x30], 0x42480000
	mov dword [esp+0x2c], 0x0
	movzx eax, byte [esi+0x10c]
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x1
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp-0x74]
	add eax, 0x5d0
	mov [esp+0x18], eax
	mov eax, [ebp-0x74]
	add eax, 0x5cc
	mov [esp+0x14], eax
	mov edx, [ebp-0x74]
	mov eax, [edx+0x10c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x41f00000
	mov eax, [esi+0xd8]
	mov [esp+0x8], eax
	mov eax, edx
	add eax, 0x1c
	mov [esp+0x4], eax
	mov eax, [edx+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	test al, al
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_350
_Z12PM_CheckDuckP7pmove_tP5pml_t_360:
	mov eax, [edi+0xc]
_Z12PM_CheckDuckP7pmove_tP5pml_t_170:
	or eax, 0x1
	and eax, 0xfffffffd
	mov [edi+0xc], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_330:
	movss xmm0, dword [_float_45_00000000]
	addss xmm0, [edi+0x108]
	movss [edi+0x594], xmm0
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_240
_Z12PM_CheckDuckP7pmove_tP5pml_t_90:
	mov edx, [esi+0x8]
	test dh, 0x3
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_370
	and dh, 0xfc
	mov [esi+0x8], edx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	mov eax, [edi+0xc]
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_380
_Z12PM_CheckDuckP7pmove_tP5pml_t_270:
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x58c]
	mov [esp], eax
	call _Z19PitchForYawOnNormalfPKf
	fstp dword [edi+0x590]
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_390
_Z12PM_CheckDuckP7pmove_tP5pml_t_210:
	mov dword [edi+0x114], 0x28
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_180
_Z12PM_CheckDuckP7pmove_tP5pml_t_340:
	mov dword [edi+0x114], 0x28
	mov dword [esi+0xe8], 0x1
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_180
_Z12PM_CheckDuckP7pmove_tP5pml_t_230:
	mov dword [esi+0xe0], 0x41f00000
	mov eax, [edi+0xb0]
	or eax, 0x8
	and eax, 0xfffffffb
	mov [edi+0xb0], eax
	mov eax, [edi+0xc]
	or eax, 0x1
	and eax, 0xfffffffd
	mov [edi+0xc], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_290
_Z12PM_CheckDuckP7pmove_tP5pml_t_190:
	mov dword [edi+0x114], 0x16
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_180
_Z12PM_CheckDuckP7pmove_tP5pml_t_250:
	and ah, 0xfd
	mov [edi+0xc], eax
	mov [esp], edi
	call _Z19PM_ExitAimDownSightP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_400
_Z12PM_CheckDuckP7pmove_tP5pml_t_140:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xc
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
_Z12PM_CheckDuckP7pmove_tP5pml_t_80:
	mov eax, [edi+0xc]
	and eax, 0xfffffffe
	or eax, 0x2
	mov [edi+0xc], eax
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_120:
	test al, 0x1
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_410
	test al, 0x2
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	lea edx, [edi+0x1c]
	movzx ecx, byte [esi+0x10c]
	mov eax, [esi+0x44]
	and eax, 0xfdffffff
	mov [esp+0x18], eax
	mov eax, [edi+0xdc]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dword [ecx*8+pmoveHandlers]
	cmp byte [ebp-0x34], 0x0
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_420
	test byte [esi+0x9], 0x10
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x7
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_70:
	mov eax, [edi+0xe8]
	test eax, eax
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_430
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x5b8]
	test eax, eax
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_430
_Z12PM_CheckDuckP7pmove_tP5pml_t_130:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	or dword [edi+0xc], 0x2
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_410:
	lea edx, [edi+0x1c]
	mov [ebp-0x6c], edx
	movzx eax, byte [esi+0x10c]
	mov edx, [esi+0x44]
	and edx, 0xfdffffff
	mov [esp+0x18], edx
	mov edx, [edi+0xdc]
	mov [esp+0x14], edx
	mov edx, [ebp-0x6c]
	mov [esp+0x10], edx
	mov edx, [ebp-0x78]
	mov [esp+0xc], edx
	mov edx, [ebp-0x7c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x6c]
	mov [esp+0x4], edx
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call dword [eax*8+pmoveHandlers]
	cmp byte [ebp-0x34], 0x0
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_440
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	and dword [edi+0xc], 0xfffffffc
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_350:
	cmp dword [edi+0x70], 0x3ff
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	mov eax, [edi+0xc]
	or ah, 0x10
	mov [edi+0xc], eax
	test byte [esi+0x9], 0x10
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	test al, 0x1
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_450
	test al, 0x2
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_460
_Z12PM_CheckDuckP7pmove_tP5pml_t_450:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_440:
	mov dword [esi+0xe0], 0x42480000
	movzx eax, byte [esi+0x10c]
	mov edx, [esi+0x44]
	and edx, 0xfdffffff
	mov [esp+0x18], edx
	mov edx, [edi+0xdc]
	mov [esp+0x14], edx
	mov edx, [ebp-0x6c]
	mov [esp+0x10], edx
	mov edx, [ebp-0x78]
	mov [esp+0xc], edx
	mov edx, [ebp-0x7c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x6c]
	mov [esp+0x4], edx
	lea edx, [ebp-0x5c]
	mov [esp], edx
	call dword [eax*8+pmoveHandlers]
	cmp byte [ebp-0x34], 0x0
	jz _Z12PM_CheckDuckP7pmove_tP5pml_t_80
	test byte [esi+0x9], 0x10
	jnz _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x8
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_420:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	and dword [edi+0xc], 0xfffffffd
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
_Z12PM_CheckDuckP7pmove_tP5pml_t_460:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z12PM_CheckDuckP7pmove_tP5pml_t_60
	nop


;PM_Accelerate(playerState_s*, pml_t const*, float const*, float, float)
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, eax
	mov esi, ecx
	movaps xmm5, xmm0
	movaps xmm6, xmm1
	test byte [eax+0xc], 0x8
	jnz _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_10
	lea edi, [eax+0x28]
	movss xmm0, dword [ecx]
	movss [ebp-0x30], xmm0
	lea eax, [eax+0x2c]
	mov [ebp-0x2c], eax
	lea eax, [ecx+0x4]
	mov [ebp-0x28], eax
	movss xmm7, dword [ecx+0x4]
	lea eax, [ebx+0x30]
	mov [ebp-0x24], eax
	lea eax, [ecx+0x8]
	mov [ebp-0x20], eax
	mulss xmm0, [ebx+0x28]
	movaps xmm1, xmm7
	mulss xmm1, [ebx+0x2c]
	addss xmm0, xmm1
	movss xmm1, dword [ebx+0x30]
	mulss xmm1, [ecx+0x8]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	subss xmm1, xmm0
	movaps xmm0, xmm1
	ucomiss xmm1, [_float_0_00000000]
	jp _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_20
	jbe _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_30
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_20:
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	maxss xmm2, xmm5
	mulss xmm6, [edx+0x24]
	mulss xmm2, xmm6
	minss xmm0, xmm2
	movaps xmm2, xmm0
	cmp dword [ebx+0x4], 0x2
	jz _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_40
	mov edx, inertiaMax
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm2
	jae _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_40
	movss xmm5, dword [ebx+0x34]
	movss xmm4, dword [ebx+0x38]
	movaps xmm3, xmm5
	mulss xmm3, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm3, xmm0
	cvtss2sd xmm0, xmm3
	ucomisd xmm0, [_double_0_00010000]
	jp _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_50
	jae _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_50
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_40:
	movaps xmm1, xmm2
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_80:
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [edi]
	movss [edi], xmm0
	movaps xmm0, xmm1
	mov eax, [ebp-0x28]
	mulss xmm0, [eax]
	mov edx, [ebp-0x2c]
	addss xmm0, [edx]
	movss [edi+0x4], xmm0
	mov eax, [ebp-0x20]
	mulss xmm1, [eax]
	mov edx, [ebp-0x24]
	addss xmm1, [edx]
	movss [edi+0x8], xmm1
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_10:
	lea eax, [eax+0x28]
	movaps xmm2, xmm0
	mulss xmm2, [ecx]
	subss xmm2, [ebx+0x28]
	lea edi, [ebx+0x2c]
	movaps xmm3, xmm0
	mulss xmm3, [ecx+0x4]
	subss xmm3, [ebx+0x2c]
	lea ecx, [ebx+0x30]
	movaps xmm4, xmm0
	mulss xmm4, [esi+0x8]
	subss xmm4, [ebx+0x30]
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
	jb _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_60
	movss xmm0, dword [_float_1_00000000]
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_90:
	mulss xmm2, xmm0
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x24]
	mulss xmm0, xmm5
	minss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm2, xmm1
	addss xmm2, [eax]
	movss [eax], xmm2
	mulss xmm3, xmm1
	addss xmm3, [edi]
	movss [eax+0x4], xmm3
	mulss xmm0, xmm4
	addss xmm0, [ecx]
	movss [eax+0x8], xmm0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_50:
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, xmm2
	addss xmm0, [ebx+0x28]
	movss [ebp-0x1c], xmm0
	movaps xmm6, xmm2
	mulss xmm6, xmm7
	addss xmm6, [edi+0x4]
	mulss xmm0, xmm0
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	mulss xmm0, xmm3
	sqrtss xmm3, xmm0
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	addss xmm1, xmm0
	mov eax, inertiaAngle
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jae _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_40
	mov eax, inertiaDebug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_70
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_100:
	mov eax, inertiaMax
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	jmp _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_80
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_90
_Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_70:
	cvtss2sd xmm6, xmm6
	movsd [esp+0x28], xmm6
	cvtss2sd xmm0, [ebp-0x1c]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm4, xmm4
	movsd [esp+0x18], xmm4
	cvtss2sd xmm5, xmm5
	movsd [esp+0x10], xmm5
	divss xmm1, xmm3
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_angle_is_f_oldve
	mov dword [esp], 0x11
	movss [ebp-0x48], xmm2
	call _Z10Com_PrintfiPKcz
	mov edx, inertiaMax
	mov eax, [edx]
	cvtss2sd xmm0, [eax+0xc]
	movsd [esp+0x10], xmm0
	movss xmm2, dword [ebp-0x48]
	cvtss2sd xmm2, xmm2
	movsd [esp+0x8], xmm2
	mov dword [esp+0x4], _cstring_clamping_acceler
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff_100
	nop


;PM_AirMove(pmove_t*, pml_t*)
_Z10PM_AirMoveP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x40], eax
	mov esi, edx
	mov edi, [eax]
	mov eax, edi
	call _Z11PM_FrictionP13playerState_sP5pml_t
	mov eax, [ebp-0x40]
	movsx ecx, byte [eax+0x1a]
	movsx eax, cl
	cvtsi2ss xmm0, eax
	movss [ebp-0x3c], xmm0
	mov eax, [ebp-0x40]
	movsx ebx, byte [eax+0x1b]
	movsx eax, bl
	cvtsi2ss xmm7, eax
	mov eax, ecx
	imul eax, ecx
	mov edx, ebx
	imul edx, ebx
	add eax, edx
	cvtsi2ss xmm0, eax
	sqrtss xmm1, xmm0
	mov eax, ecx
	neg eax
	cmp ecx, 0xffffffff
	cmovle ecx, eax
	mov edx, ebx
	mov eax, ebx
	neg eax
	cmp ebx, 0xffffffff
	cmovle edx, eax
	cmp ecx, edx
	cmovge edx, ecx
	pxor xmm5, xmm5
	test edx, edx
	jz _Z10PM_AirMoveP7pmove_tP5pml_t_10
	cvtsi2ss xmm5, dword [edi+0x60]
	cvtsi2ss xmm0, edx
	mulss xmm5, xmm0
	mulss xmm1, [_float_127_00000000]
	divss xmm5, xmm1
	test byte [edi+0xc], 0x40
	jz _Z10PM_AirMoveP7pmove_tP5pml_t_20
_Z10PM_AirMoveP7pmove_tP5pml_t_100:
	mulss xmm5, [_float_0_40000001]
	mov eax, [edi+0x4]
	cmp eax, 0x2
	jz _Z10PM_AirMoveP7pmove_tP5pml_t_30
_Z10PM_AirMoveP7pmove_tP5pml_t_110:
	cmp eax, 0x3
	jz _Z10PM_AirMoveP7pmove_tP5pml_t_40
	cmp eax, 0x4
	jnz _Z10PM_AirMoveP7pmove_tP5pml_t_10
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm5, [eax+0xc]
_Z10PM_AirMoveP7pmove_tP5pml_t_10:
	mov dword [esi+0x8], 0x0
	mov dword [esi+0x14], 0x0
	movss xmm2, dword [esi]
	lea edx, [esi+0x4]
	movss xmm0, dword [esi+0x4]
	lea eax, [esi+0x8]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	pxor xmm3, xmm3
	addss xmm1, xmm3
	sqrtss xmm1, xmm1
	movss xmm4, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	ucomiss xmm0, xmm3
	jb _Z10PM_AirMoveP7pmove_tP5pml_t_50
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
_Z10PM_AirMoveP7pmove_tP5pml_t_120:
	mulss xmm2, xmm1
	movss [esi], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	lea ecx, [esi+0xc]
	movss xmm3, dword [esi+0xc]
	lea edx, [esi+0x10]
	movss xmm1, dword [esi+0x10]
	lea eax, [esi+0x14]
	movss xmm2, dword [esi+0x14]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm4
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z10PM_AirMoveP7pmove_tP5pml_t_60
	movaps xmm1, xmm6
_Z10PM_AirMoveP7pmove_tP5pml_t_140:
	mulss xmm3, xmm1
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov eax, esi
	mov edx, 0x1
	lea ecx, [ebp-0x24]
_Z10PM_AirMoveP7pmove_tP5pml_t_70:
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	movss [ecx+edx*4-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z10PM_AirMoveP7pmove_tP5pml_t_70
	mov dword [ebp-0x1c], 0x0
	movss xmm2, dword [ebp-0x24]
	movss [ebp-0x30], xmm2
	movss xmm0, dword [ebp-0x20]
	movss [ebp-0x2c], xmm0
	mov dword [ebp-0x28], 0x0
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	pxor xmm3, xmm3
	addss xmm1, xmm3
	sqrtss xmm3, xmm1
	movaps xmm0, xmm3
	xorps xmm0, xmm4
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z10PM_AirMoveP7pmove_tP5pml_t_80
	movaps xmm1, xmm6
_Z10PM_AirMoveP7pmove_tP5pml_t_130:
	mulss xmm2, xmm1
	movss [ebp-0x30], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	lea ecx, [ebp-0x30]
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	mov edx, esi
	mov eax, edi
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z10PM_AirMoveP7pmove_tP5pml_t_90
	lea eax, [edi+0x28]
	movss xmm4, dword [edi+0x28]
	movss xmm3, dword [esi+0x3c]
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movss xmm0, dword [edi+0x2c]
	mulss xmm0, [esi+0x40]
	addss xmm2, xmm0
	movss xmm0, dword [edi+0x30]
	mulss xmm0, [esi+0x44]
	addss xmm2, xmm0
	movaps xmm1, xmm2
	andps xmm1, [_data16_7fffffff]
	mulss xmm1, [_float__0_00100000]
	addss xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	mulss xmm3, xmm1
	addss xmm4, xmm3
	movss [edi+0x28], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x40]
	addss xmm0, [edi+0x2c]
	movss [eax+0x4], xmm0
	mulss xmm1, [esi+0x44]
	addss xmm1, [edi+0x30]
	movss [eax+0x8], xmm1
_Z10PM_AirMoveP7pmove_tP5pml_t_90:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z16PM_StepSlideMoveP7pmove_tP5pml_ti
	mov edx, esi
	mov eax, [ebp-0x40]
	call _Z17PM_SetMovementDirP7pmove_tP5pml_t
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10PM_AirMoveP7pmove_tP5pml_t_20:
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x5c]
	jp _Z10PM_AirMoveP7pmove_tP5pml_t_100
	jnz _Z10PM_AirMoveP7pmove_tP5pml_t_100
	mov eax, [edi+0x4]
	cmp eax, 0x2
	jnz _Z10PM_AirMoveP7pmove_tP5pml_t_110
_Z10PM_AirMoveP7pmove_tP5pml_t_30:
	mulss xmm5, [_float_3_00000000]
	jmp _Z10PM_AirMoveP7pmove_tP5pml_t_10
_Z10PM_AirMoveP7pmove_tP5pml_t_50:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z10PM_AirMoveP7pmove_tP5pml_t_120
_Z10PM_AirMoveP7pmove_tP5pml_t_80:
	movaps xmm1, xmm6
	divss xmm1, xmm3
	jmp _Z10PM_AirMoveP7pmove_tP5pml_t_130
_Z10PM_AirMoveP7pmove_tP5pml_t_60:
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z10PM_AirMoveP7pmove_tP5pml_t_140
_Z10PM_AirMoveP7pmove_tP5pml_t_40:
	mulss xmm5, [_float_6_00000000]
	jmp _Z10PM_AirMoveP7pmove_tP5pml_t_10


;BG_GetSpeed(playerState_s const*, int)
_Z11BG_GetSpeedPK13playerState_si:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	test byte [edx+0xc], 0x8
	jz _Z11BG_GetSpeedPK13playerState_si_10
	sub eax, [edx+0x80]
	cmp eax, 0x1f3
	jle _Z11BG_GetSpeedPK13playerState_si_20
	fld dword [edx+0x30]
	leave
	ret
_Z11BG_GetSpeedPK13playerState_si_20:
	fldz
	leave
	ret
_Z11BG_GetSpeedPK13playerState_si_10:
	movss xmm1, dword [edx+0x28]
	movss xmm0, dword [edx+0x2c]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [ebp-0x4], xmm1
	fld dword [ebp-0x4]
	leave
	ret


;PM_AddEvent(playerState_s*, int)
_Z11PM_AddEventP13playerState_si:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	leave
	ret


;PM_UpdateLean(playerState_s*, float, usercmd_s*, void (*)(trace_t*, float const*, float const*, float const*, float const*, int, int))
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov esi, [ebp+0x8]
	movss xmm3, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x4]
	test cl, 0xc0
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_10
	test byte [esi+0xd], 0x8
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_20
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_10:
	xor edx, edx
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_170:
	test dword [esi+0xb0], 0x300
	mov eax, 0x0
	cmovnz edx, eax
	mov eax, [esi+0x114]
	cmp eax, 0x16
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_30
	cmp eax, 0x28
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_30
	cmp eax, 0xb
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_40
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_30:
	movss xmm2, dword [_float_0_50000000]
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_190:
	movss xmm1, dword [esi+0x5c]
	cmp edx, 0x0
	jnz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_50
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jbe _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_60
	movaps xmm0, xmm3
	divss xmm0, dword [_float__280_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm4, xmm0
	ja _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_70
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150:
	movss [esi+0x5c], xmm0
	ucomiss xmm0, xmm4
	jp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_80
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_90
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_80:
	mov ebx, 0x3f800000
	ucomiss xmm0, xmm4
	jb _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_100
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_220:
	lea eax, [esi+0x1c]
	mov ecx, [esi+0x1c]
	mov [ebp-0x14], ecx
	mov edx, [eax+0x4]
	mov [ebp-0x10], edx
	movss xmm0, dword [eax+0x8]
	addss xmm0, [esi+0x118]
	movss [ebp-0xc], xmm0
	mov [ebp-0x20], ecx
	mov [ebp-0x1c], edx
	movss [ebp-0x18], xmm0
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41800000
	mov [esp+0x8], ebx
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x20]
	mov [esp], ebx
	call _Z17AddLeanToPositionPfffff
	mov eax, 0xc1000000
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov eax, 0x41000000
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov [ebp-0x30], eax
	mov dword [esp+0x18], 0x2810011
	mov eax, [esi+0xdc]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	lea eax, [ebp-0x64]
	mov [esp], eax
	call dword [ebp+0x14]
	mov eax, [ebp-0x64]
	mov [esp], eax
	call _Z17UnGetLeanFractionf
	fstp dword [ebp-0x6c]
	movss xmm1, dword [esi+0x5c]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [ebp-0x6c]
	jbe _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_90
	ucomiss xmm1, [_float_0_00000000]
	jb _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_110
	movss xmm0, dword [_float_1_00000000]
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_230:
	mulss xmm0, [ebp-0x6c]
	movss [esi+0x5c], xmm0
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_90:
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_50:
	jle _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_120
	ucomiss xmm2, xmm1
	ja _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_130
	movaps xmm0, xmm1
	ucomiss xmm0, xmm2
	jbe _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_140
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_180:
	movaps xmm0, xmm2
	pxor xmm4, xmm4
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_20:
	mov eax, [esi+0x4]
	cmp eax, 0x6
	jg _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_10
	cmp dword [esi+0x70], 0x3ff
	jz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_160
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_240:
	mov eax, ecx
	and eax, 0x40
	cmp eax, 0x1
	sbb edx, edx
	not edx
	test cl, cl
	jns _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_170
	add edx, 0x1
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_170
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_130:
	movaps xmm0, xmm3
	divss xmm0, dword [_float_350_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, xmm2
	ja _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_180
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_140:
	pxor xmm4, xmm4
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_40:
	movss xmm2, dword [_float_0_25000000]
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_190
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_60:
	ucomiss xmm4, xmm1
	ja _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_200
	movaps xmm0, xmm1
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_120:
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm1, xmm0
	jbe _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_210
	divss xmm3, dword [_float__350_00000000]
	mulss xmm2, xmm3
	addss xmm1, xmm2
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_210:
	ucomiss xmm0, xmm1
	ja _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_140
	pxor xmm4, xmm4
	movaps xmm0, xmm1
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_100:
	mov ebx, 0xbf800000
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_220
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_200:
	movaps xmm0, xmm3
	divss xmm0, dword [_float_280_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, xmm4
	jbe _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_70:
	movaps xmm0, xmm4
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_150
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_110:
	movss xmm0, dword [_float__1_00000000]
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_230
_Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_160:
	sub eax, 0x1
	jnz _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_10
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE_240
	nop


;PM_AddTouchEnt(pmove_t*, int)
_Z14PM_AddTouchEntP7pmove_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp esi, 0x3fe
	jz _Z14PM_AddTouchEntP7pmove_ti_10
	mov ebx, [edi+0x48]
	cmp ebx, 0x20
	jz _Z14PM_AddTouchEntP7pmove_ti_10
	test ebx, ebx
	jle _Z14PM_AddTouchEntP7pmove_ti_20
	cmp esi, [edi+0x4c]
	jz _Z14PM_AddTouchEntP7pmove_ti_10
	mov ecx, edi
	xor edx, edx
_Z14PM_AddTouchEntP7pmove_ti_30:
	add edx, 0x1
	cmp ebx, edx
	jz _Z14PM_AddTouchEntP7pmove_ti_20
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp esi, eax
	jnz _Z14PM_AddTouchEntP7pmove_ti_30
_Z14PM_AddTouchEntP7pmove_ti_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_AddTouchEntP7pmove_ti_20:
	mov [edi+ebx*4+0x4c], esi
	lea eax, [ebx+0x1]
	mov [edi+0x48], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PM_IsSprinting(playerState_s const*)
_Z14PM_IsSprintingPK13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	add edx, 0x5b8
	mov eax, [edx+0x8]
	test eax, eax
	jz _Z14PM_IsSprintingPK13playerState_s_10
	cmp eax, [edx+0xc]
	jle _Z14PM_IsSprintingPK13playerState_s_10
	mov eax, 0x1
	pop ebp
	ret
_Z14PM_IsSprintingPK13playerState_s_10:
	xor eax, eax
	pop ebp
	ret
	nop


;PM_playerTrace(pmove_t*, trace_t*, float const*, float const*, float const*, float const*, int, int)
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x24], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x1c]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x20]
	mov [ebp-0x30], eax
	mov edi, [ebp+0x24]
	movzx eax, byte [ebx+0x10c]
	mov [esp+0x18], edi
	mov edx, [ebp-0x30]
	mov [esp+0x14], edx
	mov edx, [ebp-0x2c]
	mov [esp+0x10], edx
	mov edx, [ebp-0x28]
	mov [esp+0xc], edx
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [eax*8+pmoveHandlers]
	cmp byte [esi+0x29], 0x0
	jz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_10
	test byte [esi+0x17], 0x2
	jnz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_20
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_20:
	mov [esp], esi
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx edx, ax
	mov [ebp-0x1c], edx
	cmp ax, 0x3fe
	jz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_30
	mov eax, [ebx+0x48]
	mov [ebp-0x34], eax
	cmp eax, 0x20
	jz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_30
	test eax, eax
	jg _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_40
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_50:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x34]
	mov [ebx+edx*4+0x4c], eax
	mov eax, edx
	add eax, 0x1
	mov [ebx+0x48], eax
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_30:
	and dword [ebx+0x44], 0xfdffffff
	movzx eax, byte [ebx+0x10c]
	and edi, 0xfdffffff
	mov [ebp+0x20], edi
	mov edx, [ebp-0x30]
	mov [ebp+0x1c], edx
	mov edx, [ebp-0x2c]
	mov [ebp+0x18], edx
	mov edx, [ebp-0x28]
	mov [ebp+0x14], edx
	mov edx, [ebp-0x24]
	mov [ebp+0x10], edx
	mov edx, [ebp-0x20]
	mov [ebp+0xc], edx
	mov [ebp+0x8], esi
	mov ecx, [eax*8+pmoveHandlers]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_40:
	mov eax, [ebp-0x1c]
	cmp eax, [ebx+0x4c]
	jz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_30
	mov ecx, ebx
	xor edx, edx
_Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_60:
	add edx, 0x1
	cmp [ebp-0x34], edx
	jz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_50
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp [ebp-0x1c], eax
	jnz _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_60
	jmp _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii_30


;PM_ClipVelocity(float const*, float const*, float*)
_Z15PM_ClipVelocityPKfS0_Pf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm4, dword [edx]
	movss xmm3, dword [eax]
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movaps xmm1, xmm2
	andps xmm1, [_data16_7fffffff]
	mulss xmm1, [_float__0_00100000]
	addss xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	mulss xmm3, xmm1
	addss xmm4, xmm3
	movss [ecx], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ecx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [ecx+0x8], xmm1
	leave
	ret


;PM_FootstepEvent(pmove_t*, pml_t*, int, int, int)
_Z16PM_FootstepEventP7pmove_tP5pml_tiii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	movzx edx, byte [ebp+0x10]
	add dl, 0x40
	movzx eax, byte [ebp+0x14]
	add al, 0x40
	xor dl, al
	jns _Z16PM_FootstepEventP7pmove_tP5pml_tiii_10
	cmp dword [ebx+0x70], 0x3ff
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_20
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x48]
	test ah, 0x20
	jnz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_30
	mov edx, eax
	and edx, 0x1f00000
	shr edx, 0x14
	test eax, 0x1f00000
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_40
	mov eax, [ebx+0xc]
	test al, 0x1
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_50
	mov eax, 0x4b
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_70:
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_10:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_20:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_10
	test byte [ebx+0xc], 0x8
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_10
	movss xmm1, dword [esi+0xd0]
	movss xmm3, dword [_float_6_00000000]
	movss xmm0, dword [esi+0xcc]
	addss xmm0, xmm3
	movss [ebp-0x14], xmm0
	addss xmm1, xmm3
	movss [ebp-0x10], xmm1
	movss xmm4, dword [_float_8_00000000]
	movss [ebp-0xc], xmm4
	lea eax, [esi+0xd8]
	movss xmm0, dword [esi+0xd8]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm0, xmm3
	movss [ebp-0x20], xmm0
	subss xmm1, xmm3
	movss [ebp-0x1c], xmm1
	movaps xmm0, xmm2
	cmpss xmm0, xmm4, 0x5
	andps xmm2, xmm0
	andnps xmm0, xmm4
	orps xmm0, xmm2
	movss [ebp-0x18], xmm0
	mov ecx, [esi+0x44]
	and ecx, 0xfdfeffff
	lea edx, [ebx+0x1c]
	lea eax, [ebx+0x74]
	movss xmm1, dword [_float__31_00000000]
	movss xmm0, dword [ebx+0x74]
	mulss xmm0, xmm1
	addss xmm0, [ebx+0x1c]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x4]
	movss [ebp-0x28], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [edx+0x8]
	movss [ebp-0x24], xmm1
	mov [esp+0x1c], ecx
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	mov eax, [ebp-0x48]
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x58]
	jp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_60
	jnz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_60
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_100:
	mov eax, 0x15
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_110:
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x49
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_10
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_30:
	xor edx, edx
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_40:
	xor eax, eax
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_70
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_50:
	test al, 0x40
	jnz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_80
	jp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_80
	lea ecx, [ebx+0x5b8]
	mov eax, [ecx+0x8]
	test eax, eax
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_90
	cmp eax, [ecx+0xc]
	jle _Z16PM_FootstepEventP7pmove_tP5pml_tiii_90
	mov eax, 0x48
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_70
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_80:
	mov eax, 0x4a
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_70
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_60:
	test al, al
	jz _Z16PM_FootstepEventP7pmove_tP5pml_tiii_100
	mov eax, edx
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_110
_Z16PM_FootstepEventP7pmove_tP5pml_tiii_90:
	mov eax, 0x49
	jmp _Z16PM_FootstepEventP7pmove_tP5pml_tiii_70
	nop


;PM_GetSprintLeft(playerState_s const*, int)
_Z16PM_GetSprintLeftPK13playerState_si:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z19BG_GetMaxSprintTimePK13playerState_s
	mov esi, eax
	lea eax, [ebx+0x5b8]
	mov edx, [eax+0x8]
	test edx, edx
	jnz _Z16PM_GetSprintLeftPK13playerState_si_10
	mov edx, esi
	test edx, edx
	mov eax, 0x0
	cmovs edx, eax
	cmp edx, esi
	cmovg edx, esi
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PM_GetSprintLeftPK13playerState_si_10:
	mov ecx, [eax+0xc]
	cmp edx, ecx
	jg _Z16PM_GetSprintLeftPK13playerState_si_20
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz _Z16PM_GetSprintLeftPK13playerState_si_30
	mov ebx, ecx
	sub ebx, edx
	mov eax, [eax+0x10]
	sub eax, ebx
	mov ebx, [ebp+0xc]
	lea edx, [eax+ebx]
	sub edx, ecx
	test edx, edx
	mov eax, 0x0
	cmovs edx, eax
	cmp edx, esi
	cmovg edx, esi
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PM_GetSprintLeftPK13playerState_si_20:
	sub [ebp+0xc], edx
	mov edx, [eax+0x10]
	sub edx, [ebp+0xc]
	test edx, edx
	mov eax, 0x0
	cmovs edx, eax
	cmp edx, esi
	cmovg edx, esi
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16PM_GetSprintLeftPK13playerState_si_30:
	mov ebx, ecx
	sub ebx, edx
	mov eax, [eax+0x10]
	sub eax, ebx
	mov edx, [ebp+0xc]
	add edx, eax
	sub edx, ecx
	mov eax, player_sprintRechargePause
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	sub edx, eax
	test edx, edx
	mov eax, 0x0
	cmovs edx, eax
	cmp edx, esi
	cmovg edx, esi
	mov eax, edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;PM_ProjectVelocity(float const*, float const*, float*)
_Z18PM_ProjectVelocityPKfS0_Pf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm3, dword [edx]
	movss xmm4, dword [edx+0x4]
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movss xmm1, dword [eax+0x8]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00100000]
	jp _Z18PM_ProjectVelocityPKfS0_Pf_10
	jb _Z18PM_ProjectVelocityPKfS0_Pf_20
_Z18PM_ProjectVelocityPKfS0_Pf_10:
	pxor xmm7, xmm7
	ucomiss xmm2, xmm7
	jnz _Z18PM_ProjectVelocityPKfS0_Pf_30
	jp _Z18PM_ProjectVelocityPKfS0_Pf_30
_Z18PM_ProjectVelocityPKfS0_Pf_20:
	movss [ecx], xmm3
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
_Z18PM_ProjectVelocityPKfS0_Pf_60:
	leave
	ret
_Z18PM_ProjectVelocityPKfS0_Pf_30:
	movaps xmm5, xmm3
	mulss xmm5, [eax]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm5, xmm0
	xorps xmm5, [_data16_80000000]
	divss xmm5, xmm1
	movss xmm6, dword [edx+0x8]
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	addss xmm0, xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm2, xmm1
	divss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_1_00000000]
	jb _Z18PM_ProjectVelocityPKfS0_Pf_40
_Z18PM_ProjectVelocityPKfS0_Pf_70:
	ucomiss xmm7, xmm5
	ja _Z18PM_ProjectVelocityPKfS0_Pf_50
	ucomiss xmm6, xmm7
	jbe _Z18PM_ProjectVelocityPKfS0_Pf_60
_Z18PM_ProjectVelocityPKfS0_Pf_50:
	mulss xmm3, xmm0
	movss [ecx], xmm3
	mulss xmm4, xmm0
	movss [ecx+0x4], xmm4
	mulss xmm5, xmm0
	movss [ecx+0x8], xmm5
	leave
	ret
_Z18PM_ProjectVelocityPKfS0_Pf_40:
	jnp _Z18PM_ProjectVelocityPKfS0_Pf_50
	jmp _Z18PM_ProjectVelocityPKfS0_Pf_70
	nop


;PM_MeleeChargeStart(pmove_t*)
_Z19PM_MeleeChargeStartP7pmove_t:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	cmp byte [ecx+0x20], 0x0
	jnz _Z19PM_MeleeChargeStartP7pmove_t_10
	and dword [edx+0xc], 0xfffdffff
	mov dword [edx+0x5f0], 0x0
	mov dword [edx+0x5f4], 0x0
	mov dword [edx+0x5f8], 0x0
	pop ebp
	ret
_Z19PM_MeleeChargeStartP7pmove_t_10:
	or dword [edx+0xc], 0x20000
	mov eax, [ecx+0x1c]
	mov [edx+0x5f0], eax
	movzx eax, byte [ecx+0x20]
	mov [edx+0x5f4], eax
	mov dword [edx+0x5f8], 0x0
	pop ebp
	ret
	nop


;PM_UpdatePronePitch(pmove_t*, pml_t*)
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [eax]
	test byte [ebx+0xc], 0x1
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_10
	cmp dword [ebx+0x70], 0x3ff
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_20
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_30
	cmp byte [esi+0x62], 0x0
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_40
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_160:
	lea eax, [esi+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x58c]
	mov [esp], eax
	call _Z19PitchForYawOnNormalfPKf
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_170:
	mov eax, [ebx+0x590]
	mov [esp+0x4], eax
	fstp dword [esp]
	call _Z10AngleDeltaff
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_50
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_60
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_50:
	movss xmm2, dword [_float_70_00000000]
	mulss xmm2, [esi+0x24]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, xmm2
	jbe _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_70
	movss xmm0, dword [ebx+0x590]
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jb _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_80
	movss xmm1, dword [_float_1_00000000]
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_230:
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebx+0x590], xmm0
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_190:
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, [ebx+0x590]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x28], xmm0
	call floorf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0xc]
	mulss xmm0, [_float_360_00000000]
	movss [ebx+0x590], xmm0
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_60:
	mov eax, [esi+0x30]
	test eax, eax
	jnz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_90
	fldz
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_180:
	mov eax, [ebx+0x594]
	mov [esp+0x4], eax
	fstp dword [esp]
	call _Z10AngleDeltaff
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_100
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_10
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_100:
	movss xmm2, dword [_float_70_00000000]
	mulss xmm2, [esi+0x24]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, xmm2
	jbe _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_110
	movss xmm0, dword [ebx+0x594]
	ucomiss xmm1, xmm3
	jb _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_120
	movss xmm1, dword [_float_1_00000000]
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_220:
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebx+0x594], xmm0
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_130
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_110:
	addss xmm1, [ebx+0x594]
	movss [ebx+0x594], xmm1
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_130:
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, [ebx+0x594]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x28], xmm0
	call floorf
	fstp dword [ebp-0x10]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0x10]
	mulss xmm0, [_float_360_00000000]
	movss [ebx+0x594], xmm0
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_10:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_20:
	movzx eax, byte [eax+0x10c]
	mov edx, [esi+0x30]
	test edx, edx
	jnz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_140
	mov edx, 0x1
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_210:
	mov dword [esp+0x30], 0x42480000
	mov dword [esp+0x2c], 0x0
	mov [esp+0x28], eax
	mov [esp+0x24], edx
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x1
	lea eax, [ebx+0x5d0]
	mov [esp+0x18], eax
	lea eax, [ebx+0x5cc]
	mov [esp+0x14], eax
	mov eax, [ebx+0x58c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x41700000
	lea eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	test al, al
	jz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_150
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_200:
	mov eax, [esi+0x30]
	test eax, eax
	jnz _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_160
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_30:
	fldz
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_170
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_90:
	lea eax, [esi+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x10c]
	mov [esp], eax
	call _Z19PitchForYawOnNormalfPKf
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_180
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_70:
	addss xmm1, [ebx+0x590]
	movss [ebx+0x590], xmm1
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_190
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_200
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_140:
	movzx edx, byte [esi+0x62]
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_210
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_150:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	or dword [ebx+0xc], 0x1000
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_200
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_120:
	movss xmm1, dword [_float__1_00000000]
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_220
_Z19PM_UpdatePronePitchP7pmove_tP5pml_t_80:
	movss xmm1, dword [_float__1_00000000]
	jmp _Z19PM_UpdatePronePitchP7pmove_tP5pml_t_230
	nop


;PM_UpdateViewAngles(playerState_s*, float, usercmd_s*, unsigned char)
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	movss [ebp-0x50], xmm0
	mov eax, [ebp+0x10]
	mov [ebp-0x54], eax
	movzx eax, byte [ebp+0x14]
	mov [ebp-0x55], al
	mov eax, [edi+0x4]
	cmp eax, 0x5
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_10
	cmp eax, 0x6
	jg _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_20
	movss xmm1, dword [edi+0x10c]
	movss [ebp-0x4c], xmm1
	mov eax, player_view_pitch_up
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x48], xmm0
	mov eax, player_view_pitch_down
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x24], xmm1
	mov esi, [ebp-0x54]
	mov ebx, edi
	mov dword [ebp-0x44], 0x0
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x74], xmm0
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_50:
	cvtsi2ss xmm0, dword [esi+0x8]
	mulss xmm0, [_float_0_00549316]
	addss xmm0, [ebx+0x64]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call floorf
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x5c]
	mulss xmm0, [_float_360_00000000]
	mov eax, [ebp-0x44]
	test eax, eax
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_30
	ucomiss xmm0, [ebp-0x24]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_40
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0x8]
	mulss xmm0, [_float__0_00549316]
	addss xmm0, [ebp-0x24]
	movss [edi+0x64], xmm0
	movss xmm0, dword [ebp-0x24]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_30:
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call floorf
	fstp dword [ebp-0x60]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x60]
	mulss xmm0, [_float_360_00000000]
	movss [ebx+0x108], xmm0
	add dword [ebp-0x44], 0x1
	add esi, 0x4
	add ebx, 0x4
	cmp dword [ebp-0x44], 0x3
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_50
	test dword [edi+0xb0], 0x300
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_60
	mov ebx, edi
	mov dword [ebp-0x40], 0x0
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_110:
	lea esi, [ebx+0x130]
	movss xmm0, dword [ebx+0x130]
	ucomiss xmm0, [_float_180_00000000]
	jae _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_70
	cmp dword [ebp-0x40], 0x1
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_80
	mov eax, [ebx+0x108]
	mov [esp+0x4], eax
	mov eax, [ebx+0x128]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_180:
	movss xmm2, dword [esi]
	ucomiss xmm1, xmm2
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_90
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_70
	addss xmm1, xmm2
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_190:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x64]
	movss [ebx+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_100
	movss xmm0, dword [ebx+0x128]
	subss xmm0, [esi]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebx+0x108]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_70:
	add dword [ebp-0x40], 0x1
	add ebx, 0x4
	cmp dword [ebp-0x40], 0x2
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_110
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_20:
	cmp dword [edi+0x14c], 0x3e7
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_120
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_170:
	movzx eax, byte [ebp-0x55]
	mov eax, [eax*8+pmoveHandlers]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x54]
	mov [ebp+0x10], eax
	movss xmm0, dword [ebp-0x50]
	movss [ebp+0xc], xmm0
	mov [ebp+0x8], edi
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z13PM_UpdateLeanP13playerState_sfP9usercmd_sPFvP7trace_tPKfS6_S6_S6_iiE
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_40:
	movss xmm1, dword [ebp-0x74]
	ucomiss xmm1, xmm0
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_30
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0x8]
	mulss xmm0, [_float__0_00549316]
	subss xmm0, [ebp-0x48]
	movss [edi+0x64], xmm0
	movaps xmm0, xmm1
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_30
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_60:
	mov edx, [edi+0xc]
	test dl, 0x4
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_130
	test dl, 0x8
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_140
	cmp dword [edi+0x70], 0x3ff
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_150
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_140:
	and dl, 0x1
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_160
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_450:
	mov eax, [edi+0x4]
	cmp eax, 0x3
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_10
	cmp eax, 0x2
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_10
	cmp eax, 0x4
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_170
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_10
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_130:
	mov [ebp+0x8], edi
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14Mantle_CapViewP13playerState_s
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_80:
	movss xmm0, dword [ebp-0x4c]
	movss [esp+0x4], xmm0
	mov eax, [edi+0x12c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0x20]
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm1, dword [ebp-0x4c]
	movss [esp], xmm1
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	addss xmm1, [ebp-0x20]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_180
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_90:
	subss xmm1, xmm2
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_190
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_120:
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_00549316]
	addss xmm0, [edi+0x68]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [_float_0_00549316]
	cvttss2si eax, xmm0
	mov [edi+0x14c], eax
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_170
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_160:
	movzx eax, byte [ebp-0x55]
	mov [ebp-0x39], al
	movss xmm0, dword [edi+0x10c]
	movss [ebp-0x34], xmm0
	movss [esp+0x4], xmm0
	mov eax, [edi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	mov eax, bg_prone_yawcap
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, [_float_5_00000000]
	ucomiss xmm2, xmm0
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_200
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_200
	xor edx, edx
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_480:
	mov eax, [ebp-0x54]
	cmp word [eax+0x16], 0x0
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_210
	ucomiss xmm2, [_float_0_00000000]
	jp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_220
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_220
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_210:
	xor eax, eax
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_320:
	test dl, dl
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_230
	test al, al
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_240
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_230:
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, [_float_55_00000000]
	mulss xmm1, [_float_0_00100000]
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_250
	movss xmm0, dword [edi+0x10c]
	movss [ebp-0x38], xmm0
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_570:
	movzx esi, byte [ebp-0x39]
	mov dword [ebp-0x30], 0x0
	mov ebx, 0x1
	lea eax, [edi+0x1c]
	mov [ebp-0x70], eax
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_260
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_290:
	mov dword [ebp-0x30], 0x1
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_310:
	addss xmm1, [ebp-0x38]
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x38]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_260:
	mov edx, esi
	movss xmm0, dword [ebp-0x38]
	mov eax, edi
	call _Z19BG_CheckProneTurnedP13playerState_sfh
	test eax, eax
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_270
	test ebx, ebx
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_280
	movss xmm1, dword [ebp-0x38]
	movss [esp+0x4], xmm1
	mov eax, [edi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	xor ebx, ebx
	ucomiss xmm0, [_float_1_00000000]
	seta bl
	test ebx, ebx
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_290
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_300
	movss xmm1, dword [_float_1_00000000]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_310
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_220:
	mov eax, 0x1
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_320
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_270:
	mov eax, [ebp-0x70]
	mov [ebp-0x6c], eax
	mov dword [esp+0x30], 0x42340000
	mov dword [esp+0x2c], 0x0
	mov [esp+0x28], esi
	mov dword [esp+0x24], 0x1
	xor eax, eax
	cmp dword [edi+0x70], 0x3ff
	setnz al
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, [edi+0x10c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x41700000
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [edi+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	test al, al
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_330
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_590:
	mov dword [ebp-0x30], 0x1
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_280:
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	mov eax, [edi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_340
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_350
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_340:
	movss xmm0, dword [edi+0x58c]
	movss [ebp-0x1c], xmm0
	movzx eax, byte [ebp-0x39]
	mov [ebp-0x28], eax
	mov esi, 0x1
	lea eax, [edi+0x1c]
	mov [ebp-0x6c], eax
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_360
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_400:
	test esi, esi
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_350
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm0, xmm2
	seta al
	movzx esi, al
	test esi, esi
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_370
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_380
	movaps xmm1, xmm2
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_370:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	addss xmm1, [edi+0x10c]
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fst dword [edi+0x10c]
	fstp dword [esp+0x4]
	mov eax, [edi+0x58c]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	test bl, bl
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_390
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_470:
	mov dword [ebp-0x30], 0x1
	movss xmm0, dword [ebp-0x1c]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_360:
	mov dword [esp+0x30], 0x42340000
	mov dword [esp+0x2c], 0x0
	mov eax, [ebp-0x28]
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x1
	xor eax, eax
	cmp dword [edi+0x70], 0x3ff
	setnz al
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x41700000
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [edi+0xdc]
	mov [esp], eax
	movss [ebp-0x98], xmm1
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	mov ebx, eax
	test al, al
	movss xmm1, dword [ebp-0x98]
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_400
	mov edx, [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	mov eax, edi
	call _Z19BG_CheckProneTurnedP13playerState_sfh
	test eax, eax
	movss xmm1, dword [ebp-0x98]
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_400
	movss xmm0, dword [ebp-0x1c]
	movss [edi+0x58c], xmm0
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_350:
	mov edx, bg_prone_yawcap
	mov eax, [edx]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_410
	subss xmm1, xmm2
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_510:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_420
	mov eax, [edx]
	movss xmm0, dword [edi+0x58c]
	subss xmm0, [eax+0xc]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x10c]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_500:
	mov ebx, [ebp-0x30]
	test ebx, ebx
	jnz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_430
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_580:
	mov eax, [edi+0x108]
	mov [esp+0x4], eax
	mov eax, [edi+0x594]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	ucomiss xmm0, [_float_45_00000000]
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_440
	ucomiss xmm0, [_float__45_00000000]
	jp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_450
	jae _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_450
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	addss xmm1, xmm2
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_490:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x64]
	movss [edi+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_460
	movss xmm0, dword [edi+0x594]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call floorf
	fstp dword [ebp-0x64]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x64]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x108], xmm0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_450
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_390:
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x98], xmm1
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x98]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_470
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_380:
	movss xmm1, dword [_float__1_00000000]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_370
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_100:
	movss xmm0, dword [ebx+0x128]
	addss xmm0, [esi]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebx+0x108]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_70
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_200:
	mov edx, 0x1
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_480
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_300:
	movss xmm1, dword [_float__1_00000000]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_310
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_440:
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_490
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_410:
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_500
	addss xmm1, xmm2
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_510
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_150:
	mov ebx, bg_ladder_yawcap
	mov eax, [ebx]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0xc]
	jp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_520
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_140
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_520:
	lea eax, [edi+0x74]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0xac]
	movss xmm3, dword [ebp-0xac]
	addss xmm3, [_float_180_00000000]
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss [esp], xmm3
	movss [ebp-0xa8], xmm3
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm2, xmm1
	movss xmm3, dword [ebp-0xa8]
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_530
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_540
	addss xmm1, xmm2
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_600:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_550
	mov eax, bg_ladder_yawcap
	mov eax, [eax]
	subss xmm3, [eax+0xc]
	movss [esp], xmm3
	call _Z17AngleNormalize360f
	fstp dword [edi+0x10c]
	mov edx, [edi+0xc]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_140
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_250:
	ucomiss xmm2, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_560
	movss xmm0, dword [edi+0x58c]
	subss xmm0, xmm1
	movss [ebp-0x38], xmm0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_570
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_430:
	or dword [edi+0xc], 0x1000
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm1, dword [ebp-0x4c]
	movss [esp], xmm1
	call _Z10AngleDeltaff
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	ja _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_580
	jp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_580
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0x34]
	movss [esp], xmm0
	call _Z10AngleDeltaff
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x2c]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_580
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_0_98000002]
	movaps xmm1, xmm0
	addss xmm1, [edi+0x10c]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x10c]
	movss xmm0, dword [ebp-0x88]
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_580
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_240:
	mov dword [ebp-0x30], 0x0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_280
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_420:
	mov eax, [edx]
	movss xmm0, dword [edi+0x58c]
	addss xmm0, [eax+0xc]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [edi+0x10c]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_500
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_460:
	movss xmm0, dword [edi+0x594]
	addss xmm0, xmm2
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call floorf
	fstp dword [ebp-0x68]
	movss xmm0, dword [ebp-0x88]
	subss xmm0, [ebp-0x68]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x108], xmm0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_450
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_330:
	mov dword [esp+0x30], 0x42340000
	mov dword [esp+0x2c], 0x0
	mov [esp+0x28], esi
	mov dword [esp+0x24], 0x1
	xor eax, eax
	cmp dword [edi+0x70], 0x3ff
	setnz al
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x41f00000
	mov dword [esp+0x8], 0x41700000
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [edi+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	test al, al
	jz _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_590
	movss xmm0, dword [ebp-0x38]
	movss [edi+0x58c], xmm0
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_280
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_560:
	addss xmm1, [edi+0x58c]
	movss [ebp-0x38], xmm1
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_570
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_530:
	subss xmm2, xmm1
	movaps xmm1, xmm2
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_600
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_550:
	mov eax, bg_ladder_yawcap
	mov eax, [eax]
	addss xmm3, [eax+0xc]
	movss [esp], xmm3
	call _Z17AngleNormalize360f
	fstp dword [edi+0x10c]
_Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_540:
	mov edx, [edi+0xc]
	jmp _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh_140


;PM_GroundSurfaceType(pml_t*)
_Z20PM_GroundSurfaceTypeP5pml_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x48]
	test ah, 0x20
	jnz _Z20PM_GroundSurfaceTypeP5pml_t_10
	and eax, 0x1f00000
	shr eax, 0x14
	pop ebp
	ret
_Z20PM_GroundSurfaceTypeP5pml_t_10:
	xor eax, eax
	pop ebp
	ret


;PM_GetEffectiveStance(playerState_s const*)
_Z21PM_GetEffectiveStancePK13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x114]
	cmp eax, 0x16
	jz _Z21PM_GetEffectiveStancePK13playerState_s_10
	cmp eax, 0x28
	jz _Z21PM_GetEffectiveStancePK13playerState_s_10
	cmp eax, 0xb
	setz al
	movzx eax, al
	pop ebp
	ret
_Z21PM_GetEffectiveStancePK13playerState_s_10:
	mov eax, 0x2
	pop ebp
	ret


;PM_ShouldMakeFootsteps(pmove_t*)
_Z22PM_ShouldMakeFootstepsP7pmove_t:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov edx, [eax+0xc]
	mov ecx, edx
	and ecx, 0x40
	mov eax, [eax+0x114]
	cmp eax, 0x16
	jz _Z22PM_ShouldMakeFootstepsP7pmove_t_10
	cmp eax, 0x28
	jz _Z22PM_ShouldMakeFootstepsP7pmove_t_10
	cmp eax, 0xb
	jz _Z22PM_ShouldMakeFootstepsP7pmove_t_10
	test ecx, ecx
	jnz _Z22PM_ShouldMakeFootstepsP7pmove_t_10
	mov eax, player_footstepsThreshhold
	mov eax, [eax]
	movss xmm0, dword [ebx+0xe4]
	ucomiss xmm0, [eax+0xc]
	setae al
	movzx eax, al
	pop ebx
	pop ebp
	ret
_Z22PM_ShouldMakeFootstepsP7pmove_t_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
	nop


;PM_GetSprintLeftLastTime(playerState_s const*)
_Z24PM_GetSprintLeftLastTimePK13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z19BG_GetMaxSprintTimePK13playerState_s
	mov ecx, eax
	add ebx, 0x5b8
	mov edx, [ebx+0xc]
	sub edx, [ebx+0x8]
	mov eax, [ebx+0x10]
	sub eax, edx
	mov edx, 0x0
	cmovs eax, edx
	cmp eax, ecx
	cmovg eax, ecx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PM_GetViewHeightLerpTime(playerState_s const*, int, int)
_Z24PM_GetViewHeightLerpTimePK13playerState_sii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0xb
	jz _Z24PM_GetViewHeightLerpTimePK13playerState_sii_10
	cmp eax, 0x28
	jz _Z24PM_GetViewHeightLerpTimePK13playerState_sii_20
_Z24PM_GetViewHeightLerpTimePK13playerState_sii_30:
	mov eax, 0xc8
	pop ebp
	ret
_Z24PM_GetViewHeightLerpTimePK13playerState_sii_20:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z24PM_GetViewHeightLerpTimePK13playerState_sii_30
_Z24PM_GetViewHeightLerpTimePK13playerState_sii_10:
	mov eax, 0x190
	pop ebp
	ret
	nop


;PM_SetProneMovementOverride(playerState_s*)
_Z27PM_SetProneMovementOverrideP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test al, 0x1
	jz _Z27PM_SetProneMovementOverrideP13playerState_s_10
	or ah, 0x2
	mov [edx+0xc], eax
_Z27PM_SetProneMovementOverrideP13playerState_s_10:
	pop ebp
	ret
	nop


;Pmove(pmove_t*)
_Z5PmoveP7pmove_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1dc
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ebp-0x15c], eax
	mov edx, [edi+0x4]
	mov [ebp-0x160], edx
	mov ecx, eax
	mov eax, [eax]
	cmp edx, eax
	jl _Z5PmoveP7pmove_t_10
	add eax, 0x3e8
	cmp edx, eax
	jg _Z5PmoveP7pmove_t_20
	mov dword [edi+0x48], 0x0
	mov ebx, [ebp-0x15c]
	mov ecx, [ebx]
	cmp [ebp-0x160], ecx
	jz _Z5PmoveP7pmove_t_10
_Z5PmoveP7pmove_t_250:
	lea eax, [edi+0x4]
	mov [ebp-0x170], eax
_Z5PmoveP7pmove_t_220:
	mov eax, [ebp-0x160]
	sub eax, ecx
	cmp eax, 0x43
	mov edx, 0x42
	cmovge eax, edx
	add eax, ecx
	mov [edi+0x4], eax
	mov esi, [edi]
	mov [esp], edi
	call _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t
	mov edx, [esi+0xc]
	test edx, 0x20000
	jz _Z5PmoveP7pmove_t_30
	mov byte [edi+0x1a], 0x7f
	mov edx, [esi+0xc]
_Z5PmoveP7pmove_t_30:
	test dh, 0x8
	jz _Z5PmoveP7pmove_t_40
	and dword [edi+0x8], 0x1300
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	lea edx, [esi+0x28]
	mov [ebp-0x168], edx
	xor eax, eax
	mov [esi+0x28], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
_Z5PmoveP7pmove_t_880:
	mov eax, [edi+0x8]
	test eax, 0x100000
	jz _Z5PmoveP7pmove_t_50
	and eax, 0x101b02
	mov [edi+0x8], eax
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
_Z5PmoveP7pmove_t_50:
	mov edx, [esi+0xc]
	and dh, 0xef
	mov [esi+0xc], edx
	cmp dword [esi+0x4], 0x6
	jle _Z5PmoveP7pmove_t_60
	and dword [edi+0x44], 0xfdffffff
	mov edx, [esi+0xc]
_Z5PmoveP7pmove_t_60:
	test dl, 0x1
	jnz _Z5PmoveP7pmove_t_70
_Z5PmoveP7pmove_t_910:
	and dh, 0xfd
	mov [esi+0xc], edx
_Z5PmoveP7pmove_t_980:
	mov eax, [esi+0x114]
	cmp eax, 0x16
	jz _Z5PmoveP7pmove_t_80
	cmp eax, 0x28
	jz _Z5PmoveP7pmove_t_80
	xor ebx, ebx
	cmp eax, 0xb
	setz bl
_Z5PmoveP7pmove_t_890:
	and dl, 0x10
	jz _Z5PmoveP7pmove_t_90
	cmp ebx, 0x1
	jz _Z5PmoveP7pmove_t_100
_Z5PmoveP7pmove_t_90:
	test byte [edi+0xa], 0x10
	jz _Z5PmoveP7pmove_t_110
	mov eax, [esi+0xb0]
	or eax, 0x200000
	mov [esi+0xb0], eax
_Z5PmoveP7pmove_t_860:
	and eax, 0xffffffbf
	mov [esi+0xb0], eax
	cmp dword [esi+0x4], 0x5
	jz _Z5PmoveP7pmove_t_120
	test byte [esi+0xd], 0x4
	jnz _Z5PmoveP7pmove_t_120
	mov eax, [esi+0xec]
	test eax, eax
	jz _Z5PmoveP7pmove_t_130
	cmp eax, 0x5
	jz _Z5PmoveP7pmove_t_130
_Z5PmoveP7pmove_t_120:
	cmp dword [esi+0x4], 0x6
	jg _Z5PmoveP7pmove_t_140
	test dword [edi+0x8], 0x101
	jnz _Z5PmoveP7pmove_t_140
	and dword [esi+0xc], 0xfffffbff
_Z5PmoveP7pmove_t_140:
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x108]
	mov [esp], eax
	call memset
	mov ecx, [edi+0x4]
	mov edx, ecx
	sub edx, [esi]
	mov [ebp-0xe0], edx
	test edx, edx
	jle _Z5PmoveP7pmove_t_150
	mov eax, 0xc8
	cmp edx, 0xc9
	cmovl eax, [ebp-0xe0]
	mov [ebp-0xe0], eax
_Z5PmoveP7pmove_t_940:
	mov [esi], ecx
	lea edx, [esi+0x1c]
	mov [ebp-0x158], edx
	mov eax, [esi+0x1c]
	mov [ebp-0xa0], eax
	lea ecx, [esi+0x20]
	mov [ebp-0x154], ecx
	mov eax, [esi+0x20]
	mov [ebp-0x9c], eax
	lea eax, [esi+0x24]
	mov [ebp-0x150], eax
	mov eax, [esi+0x24]
	mov [ebp-0x98], eax
	mov eax, [esi+0x28]
	mov [ebp-0x94], eax
	lea edx, [esi+0x2c]
	mov [ebp-0x14c], edx
	mov eax, [esi+0x2c]
	mov [ebp-0x90], eax
	lea ecx, [esi+0x30]
	mov [ebp-0x148], ecx
	mov eax, [esi+0x30]
	mov [ebp-0x8c], eax
	cvtsi2ss xmm0, dword [ebp-0xe0]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0xe4], xmm0
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z23PM_AdjustAimSpreadScaleP7pmove_tP5pml_t
	movzx eax, byte [edi+0x10c]
	mov [esp+0xc], eax
	mov edx, [ebp-0x170]
	mov [esp+0x8], edx
	cvtsi2ss xmm0, dword [ebp-0xe0]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call _Z19PM_UpdateViewAnglesP13playerState_sfP9usercmd_sh
	lea ecx, [ebp-0xf0]
	mov [esp+0xc], ecx
	lea eax, [ebp-0xfc]
	mov [esp+0x8], eax
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	lea eax, [esi+0x108]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	cmp byte [edi+0x1a], 0x0
	jl _Z5PmoveP7pmove_t_160
	jle _Z5PmoveP7pmove_t_170
_Z5PmoveP7pmove_t_240:
	and dword [esi+0xc], 0xffffffdf
_Z5PmoveP7pmove_t_230:
	cmp dword [esi+0x4], 0x5
	jle _Z5PmoveP7pmove_t_180
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
_Z5PmoveP7pmove_t_180:
	sub ebx, 0x1
	jz _Z5PmoveP7pmove_t_190
_Z5PmoveP7pmove_t_920:
	mov [esp], esi
	call _Z16Mantle_ClearHintP13playerState_s
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z20PM_MeleeChargeUpdateP7pmove_tP5pml_t
	cmp dword [esi+0x4], 0x8
	ja _Z5PmoveP7pmove_t_200
	mov eax, [esi+0x4]
	jmp dword [eax*4+_Z5PmoveP7pmove_t_jumptab_0]
_Z5PmoveP7pmove_t_2670:
	mov eax, [esi+0xc]
	test al, 0x8
	jz _Z5PmoveP7pmove_t_210
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
_Z5PmoveP7pmove_t_210:
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
_Z5PmoveP7pmove_t_310:
	mov eax, [edi+0x4]
	mov [edi+0x24], eax
	mov eax, [edi+0x8]
	mov [edi+0x28], eax
	mov eax, [edi+0xc]
	mov [edi+0x2c], eax
	mov eax, [edi+0x10]
	mov [edi+0x30], eax
	mov eax, [edi+0x14]
	mov [edi+0x34], eax
	mov eax, [edi+0x18]
	mov [edi+0x38], eax
	mov eax, [edi+0x1c]
	mov [edi+0x3c], eax
	mov eax, [edi+0x20]
	mov [edi+0x40], eax
	mov edx, [ebp-0x15c]
	mov ecx, [edx]
	cmp [ebp-0x160], ecx
	jnz _Z5PmoveP7pmove_t_220
_Z5PmoveP7pmove_t_10:
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5PmoveP7pmove_t_170:
	cmp byte [edi+0x1b], 0x0
	jz _Z5PmoveP7pmove_t_230
	jmp _Z5PmoveP7pmove_t_240
_Z5PmoveP7pmove_t_20:
	mov eax, edx
	sub eax, 0x3e8
	mov [ecx], eax
	mov dword [edi+0x48], 0x0
	mov ebx, [ebp-0x15c]
	mov ecx, [ebx]
	cmp [ebp-0x160], ecx
	jnz _Z5PmoveP7pmove_t_250
	jmp _Z5PmoveP7pmove_t_10
_Z5PmoveP7pmove_t_200:
	mov edx, [esi+0xc]
	mov eax, [esi+0xb0]
	test ah, 0x3
	jnz _Z5PmoveP7pmove_t_260
_Z5PmoveP7pmove_t_330:
	and dl, 0x4
	jz _Z5PmoveP7pmove_t_270
_Z5PmoveP7pmove_t_1280:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z12Mantle_CheckP7pmove_tP5pml_t
	mov eax, [esi+0xc]
	test al, 0x4
	jz _Z5PmoveP7pmove_t_280
	test al, 0x8
	jz _Z5PmoveP7pmove_t_290
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
_Z5PmoveP7pmove_t_290:
	mov dword [esi+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xdc], 0x0
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	mov edx, ebx
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_300
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_300
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_300
	test al, 0x10
	jz _Z5PmoveP7pmove_t_300
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_300
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_300
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_300
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_300
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_300
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_300:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_CheckDuckP7pmove_tP5pml_t
	lea eax, [ebp-0x108]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z9PM_WeaponP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_2680:
	mov edx, [esi+0xc]
	test dl, 0x8
	jnz _Z5PmoveP7pmove_t_320
	mov eax, [esi+0xb0]
	and ah, 0xfc
	mov [esi+0xb0], eax
_Z5PmoveP7pmove_t_1520:
	test ah, 0x3
	jz _Z5PmoveP7pmove_t_330
_Z5PmoveP7pmove_t_260:
	test dl, 0x8
	jz _Z5PmoveP7pmove_t_340
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
_Z5PmoveP7pmove_t_340:
	mov dword [esi+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xd4], 0x0
	mov dword [ebp-0xdc], 0x0
	xor eax, eax
	mov ecx, [ebp-0x168]
	mov [ecx], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	mov edx, ebx
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_350
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_350
	test al, 0x1
	jz _Z5PmoveP7pmove_t_360
_Z5PmoveP7pmove_t_350:
	mov edx, [edi]
	test byte [edi+0x2a], 0x4
	jnz _Z5PmoveP7pmove_t_370
	test byte [edi+0xa], 0x4
	jz _Z5PmoveP7pmove_t_370
	mov eax, [edx+0x10]
	test al, 0x40
	jnz _Z5PmoveP7pmove_t_380
	or eax, 0x40
	mov [edx+0x10], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x40
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
_Z5PmoveP7pmove_t_370:
	mov eax, [esi+0x18]
	test eax, eax
	jz _Z5PmoveP7pmove_t_390
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_400
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_410
_Z5PmoveP7pmove_t_1880:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
_Z5PmoveP7pmove_t_390:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_420
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_420:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_430
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_430:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_CheckDuckP7pmove_tP5pml_t
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_FootstepsP7pmove_tP5pml_t
	mov [esp], esi
	call _Z19PM_ResetWeaponStateP13playerState_s
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_2640:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz _Z5PmoveP7pmove_t_440
_Z5PmoveP7pmove_t_1510:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_450
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_450
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_450
	test al, 0x10
	jz _Z5PmoveP7pmove_t_450
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_450
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_450
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_450
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_450
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_450
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_450:
	mov eax, [esi+0x18]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_460
_Z5PmoveP7pmove_t_1550:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_470
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_470:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_480
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_480:
	mov ebx, [edi]
	mov dword [ebx+0x114], 0x3c
	lea esi, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	lea eax, [ebx+0x2c]
	mov [ebp-0x144], eax
	movss xmm1, dword [ebx+0x2c]
	lea edx, [ebx+0x30]
	mov [ebp-0x140], edx
	movss xmm2, dword [ebx+0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm0
	ucomiss xmm0, xmm2
	ja _Z5PmoveP7pmove_t_490
	mov eax, friction
	mov eax, [eax]
	movss xmm1, dword [_float_1_50000000]
	mulss xmm1, [eax+0xc]
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	maxss xmm0, xmm2
	mulss xmm0, xmm1
	mulss xmm0, [ebp-0xe4]
	pxor xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm4, xmm2
	subss xmm4, xmm0
	maxss xmm1, xmm4
	movaps xmm0, xmm1
	divss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x28]
	movss [ebx+0x28], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x2c]
	movss [esi+0x4], xmm1
	mulss xmm0, [ebx+0x30]
	movss [esi+0x8], xmm0
_Z5PmoveP7pmove_t_2090:
	movsx eax, byte [edi+0x1a]
	cvtsi2ss xmm3, eax
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm2, eax
	mov eax, [edi+0x8]
	pxor xmm4, xmm4
	test al, al
	js _Z5PmoveP7pmove_t_500
	test al, 0x40
	jnz _Z5PmoveP7pmove_t_510
_Z5PmoveP7pmove_t_1570:
	cvttss2si eax, xmm3
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm1, eax
	cvttss2si eax, xmm2
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm0, eax
	maxss xmm0, xmm1
	cvttss2si eax, xmm4
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm1, eax
	maxss xmm1, xmm0
	pxor xmm7, xmm7
	ucomiss xmm1, xmm7
	jnz _Z5PmoveP7pmove_t_520
	jp _Z5PmoveP7pmove_t_520
	pxor xmm5, xmm5
_Z5PmoveP7pmove_t_1960:
	mov edx, 0x1
	mov eax, 0x4
_Z5PmoveP7pmove_t_530:
	movaps xmm0, xmm3
	mulss xmm0, [eax+ebp-0x10c]
	movaps xmm1, xmm2
	mulss xmm1, [eax+ebp-0x100]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+ebp-0xf4]
	addss xmm0, xmm1
	movss [eax+ebp-0x8c], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z5PmoveP7pmove_t_530
	movss xmm3, dword [ebp-0x88]
	movss [ebp-0x5c], xmm3
	movss xmm1, dword [ebp-0x84]
	movss [ebp-0x58], xmm1
	movss xmm2, dword [ebp-0x80]
	movss [ebp-0x54], xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z5PmoveP7pmove_t_540
	movss xmm1, dword [ebp-0x16c]
_Z5PmoveP7pmove_t_2100:
	mulss xmm3, xmm1
	movss [ebp-0x5c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	movss xmm1, dword [_float_9_00000000]
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	lea ecx, [ebp-0x5c]
	lea edx, [ebp-0x108]
	mov eax, ebx
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	movss xmm1, dword [ebp-0xe4]
	lea eax, [ebx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	addss xmm0, [ebx+0x1c]
	movss [ebx+0x1c], xmm0
	movaps xmm0, xmm1
	mov edx, [ebp-0x144]
	mulss xmm0, [edx]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mov ecx, [ebp-0x140]
	mulss xmm1, [ecx]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_2630:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz _Z5PmoveP7pmove_t_550
_Z5PmoveP7pmove_t_1400:
	mov dword [esi+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xd4], 0x0
	mov dword [ebp-0xdc], 0x0
	xor eax, eax
	mov ebx, [ebp-0x168]
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_560
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_560
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_560
	test al, 0x10
	jz _Z5PmoveP7pmove_t_560
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_560
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_560
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_560
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_560
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_560
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_560:
	mov eax, [esi+0x18]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_570
_Z5PmoveP7pmove_t_1470:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_580
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_580:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_590
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_590:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_CheckDuckP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_FootstepsP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z9PM_WeaponP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_2660:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz _Z5PmoveP7pmove_t_600
_Z5PmoveP7pmove_t_1390:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_610
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_610
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_610
	test al, 0x10
	jz _Z5PmoveP7pmove_t_610
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_610
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_610
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_610
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_610
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_610
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_610:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_CheckDuckP7pmove_tP5pml_t
	mov eax, [esi+0x18]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_620
_Z5PmoveP7pmove_t_1500:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_630
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_630:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_640
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_640:
	mov esi, [edi]
	lea edx, [ebp-0x108]
	mov eax, esi
	call _Z11PM_FrictionP13playerState_sP5pml_t
	mov eax, [ebp-0x170]
	movsx ebx, byte [eax+0x16]
	movsx edx, byte [eax+0x17]
	mov eax, ebx
	imul eax, ebx
	mov ecx, edx
	imul ecx, edx
	add eax, ecx
	cvtsi2ss xmm0, eax
	sqrtss xmm1, xmm0
	mov ecx, ebx
	mov eax, ebx
	neg eax
	cmp ebx, 0xffffffff
	cmovle ecx, eax
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle edx, eax
	cmp ecx, edx
	cmovl ecx, edx
	test ecx, ecx
	jz _Z5PmoveP7pmove_t_650
	cvtsi2ss xmm3, dword [esi+0x60]
	cvtsi2ss xmm0, ecx
	mulss xmm3, xmm0
	mulss xmm1, [_float_127_00000000]
	divss xmm3, xmm1
	test byte [esi+0xc], 0x40
	jnz _Z5PmoveP7pmove_t_660
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x5c]
	jp _Z5PmoveP7pmove_t_660
	jnz _Z5PmoveP7pmove_t_660
_Z5PmoveP7pmove_t_1600:
	mov eax, [esi+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_670
	cmp eax, 0x3
	jz _Z5PmoveP7pmove_t_680
	cmp eax, 0x4
	jnz _Z5PmoveP7pmove_t_690
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm3, [eax+0xc]
_Z5PmoveP7pmove_t_690:
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jnz _Z5PmoveP7pmove_t_700
	jp _Z5PmoveP7pmove_t_700
_Z5PmoveP7pmove_t_650:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5PmoveP7pmove_t_1980:
	mov eax, [esi+0x60]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_710
_Z5PmoveP7pmove_t_1370:
	movss xmm2, dword [ebp-0x1c]
_Z5PmoveP7pmove_t_1380:
	movss xmm3, dword [ebp-0x24]
	movss [ebp-0x5c], xmm3
	movss xmm1, dword [ebp-0x20]
	movss [ebp-0x58], xmm1
	movss [ebp-0x54], xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z5PmoveP7pmove_t_720
	movss xmm1, dword [_float_1_00000000]
_Z5PmoveP7pmove_t_2110:
	mulss xmm3, xmm1
	movss [ebp-0x5c], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	mulss xmm1, [ebp-0x54]
	movss [ebp-0x54], xmm1
	movss xmm1, dword [_float_8_00000000]
	movaps xmm0, xmm2
	lea ecx, [ebp-0x5c]
	lea edx, [ebp-0x108]
	mov eax, esi
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16PM_StepSlideMoveP7pmove_tP5pml_ti
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_2650:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz _Z5PmoveP7pmove_t_730
_Z5PmoveP7pmove_t_1560:
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_740
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_740
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_740
	test al, 0x10
	jz _Z5PmoveP7pmove_t_740
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_740
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_740
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_740
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_740
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_740
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_740:
	mov eax, [esi+0x18]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_750
_Z5PmoveP7pmove_t_1440:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_760
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_760:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_770
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_770:
	mov ebx, [edi]
	mov dword [ebx+0x114], 0x3c
	movsx eax, byte [edi+0x1a]
	cvtsi2ss xmm3, eax
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm4, eax
	mov eax, [edi+0x8]
	pxor xmm5, xmm5
	test al, al
	jns _Z5PmoveP7pmove_t_780
	movss xmm5, dword [_float_127_00000000]
	test al, 0x40
	jnz _Z5PmoveP7pmove_t_790
_Z5PmoveP7pmove_t_1410:
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jnz _Z5PmoveP7pmove_t_800
	jp _Z5PmoveP7pmove_t_800
	ucomiss xmm4, xmm0
	jz _Z5PmoveP7pmove_t_810
_Z5PmoveP7pmove_t_800:
	lea esi, [ebx+0x28]
	movss xmm0, dword [ebx+0x28]
	movss xmm1, dword [ebx+0x2c]
	movss xmm2, dword [ebx+0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movss xmm1, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm1
	ucomiss xmm1, xmm2
	ja _Z5PmoveP7pmove_t_820
	mov eax, friction
	mov eax, [eax]
	movss xmm1, dword [_float_1_50000000]
	mulss xmm1, [eax+0xc]
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	maxss xmm0, xmm2
	mulss xmm0, xmm1
	mulss xmm0, [ebp-0xe4]
	pxor xmm7, xmm7
	addss xmm0, xmm7
	movaps xmm1, xmm2
	subss xmm1, xmm0
	maxss xmm7, xmm1
	movaps xmm0, xmm7
	divss xmm0, xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x28]
	movss [ebx+0x28], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x2c]
	movss [esi+0x4], xmm1
	mulss xmm0, [ebx+0x30]
	movss [esi+0x8], xmm0
_Z5PmoveP7pmove_t_1870:
	cvttss2si eax, xmm3
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm1, eax
	cvttss2si eax, xmm4
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm0, eax
	maxss xmm0, xmm1
	cvttss2si eax, xmm5
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm1, eax
	maxss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jnz _Z5PmoveP7pmove_t_830
	jp _Z5PmoveP7pmove_t_830
	pxor xmm6, xmm6
_Z5PmoveP7pmove_t_1920:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0x3f800000
	movss xmm2, dword [ebp-0xf8]
	pxor xmm1, xmm1
	mulss xmm1, [ebp-0xf4]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0xfc]
	movaps xmm7, xmm0
	subss xmm7, xmm1
	movss [ebp-0x2c], xmm7
	pxor xmm1, xmm1
	mulss xmm2, xmm1
	mulss xmm0, xmm1
	subss xmm2, xmm0
	movss [ebp-0x28], xmm2
	mov edx, 0x1
_Z5PmoveP7pmove_t_840:
	lea eax, [edx*4]
	movaps xmm0, xmm3
	mulss xmm0, [ebp+eax-0x34]
	movaps xmm1, xmm4
	mulss xmm1, [ebp+eax-0x100]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebp+eax-0x28]
	addss xmm0, xmm1
	movss [ebp+eax-0x60], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z5PmoveP7pmove_t_840
	movss xmm3, dword [ebp-0x5c]
	movss [ebp-0x88], xmm3
	movss xmm1, dword [ebp-0x58]
	movss [ebp-0x84], xmm1
	movss xmm2, dword [ebp-0x54]
	movss [ebp-0x80], xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z5PmoveP7pmove_t_850
	movss xmm1, dword [ebp-0x16c]
_Z5PmoveP7pmove_t_2080:
	mulss xmm3, xmm1
	movss [ebp-0x88], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x84]
	movss [ebp-0x84], xmm0
	mulss xmm1, [ebp-0x80]
	movss [ebp-0x80], xmm1
	movss xmm1, dword [_float_9_00000000]
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	lea ecx, [ebp-0x88]
	lea edx, [ebp-0x108]
	mov eax, ebx
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	movss xmm1, dword [ebp-0xe4]
	lea eax, [ebx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x28]
	addss xmm0, [ebx+0x1c]
	movss [ebx+0x1c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [esi+0x8]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightLerpP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_110:
	mov eax, [esi+0xb0]
	and eax, 0xffdfffff
	mov [esi+0xb0], eax
	jmp _Z5PmoveP7pmove_t_860
_Z5PmoveP7pmove_t_40:
	and dh, 0x4
	jz _Z5PmoveP7pmove_t_870
	and dword [edi+0x8], 0x1301
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	lea eax, [esi+0x28]
	mov [ebp-0x168], eax
	xor eax, eax
	mov [esi+0x28], eax
	mov edx, [ebp-0x168]
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	jmp _Z5PmoveP7pmove_t_880
_Z5PmoveP7pmove_t_80:
	mov ebx, 0x2
	jmp _Z5PmoveP7pmove_t_890
_Z5PmoveP7pmove_t_70:
	mov [esp], esi
	call _Z19BG_UsingSniperScopePK13playerState_s
	test eax, eax
	jz _Z5PmoveP7pmove_t_900
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_910
_Z5PmoveP7pmove_t_190:
	test byte [esi+0xd], 0x2
	jz _Z5PmoveP7pmove_t_920
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	jmp _Z5PmoveP7pmove_t_920
_Z5PmoveP7pmove_t_870:
	cmp dword [esi+0xec], 0x5
	jz _Z5PmoveP7pmove_t_930
_Z5PmoveP7pmove_t_1290:
	lea ebx, [esi+0x28]
	mov [ebp-0x168], ebx
	jmp _Z5PmoveP7pmove_t_880
_Z5PmoveP7pmove_t_160:
	or dword [esi+0xc], 0x20
	jmp _Z5PmoveP7pmove_t_230
_Z5PmoveP7pmove_t_150:
	mov dword [ebp-0xe0], 0x1
	jmp _Z5PmoveP7pmove_t_940
_Z5PmoveP7pmove_t_130:
	mov [esp], esi
	call _Z22PM_WeaponAmmoAvailableP13playerState_s
	test eax, eax
	jz _Z5PmoveP7pmove_t_120
	test byte [edi+0x8], 0x1
	jz _Z5PmoveP7pmove_t_120
	or dword [esi+0xb0], 0x40
	jmp _Z5PmoveP7pmove_t_120
_Z5PmoveP7pmove_t_900:
	movzx eax, byte [edi+0x1a]
	movzx edx, byte [edi+0x3a]
	cmp al, dl
	jz _Z5PmoveP7pmove_t_950
	movsx eax, al
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	movsx eax, dl
	cvtsi2ss xmm0, eax
	andps xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z5PmoveP7pmove_t_960
_Z5PmoveP7pmove_t_950:
	movzx eax, byte [edi+0x1b]
	movzx edx, byte [edi+0x3b]
	cmp al, dl
	jz _Z5PmoveP7pmove_t_970
	movsx eax, al
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	movsx eax, dl
	cvtsi2ss xmm0, eax
	andps xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z5PmoveP7pmove_t_960
_Z5PmoveP7pmove_t_970:
	mov edx, [esi+0xc]
	test dl, 0x10
	jnz _Z5PmoveP7pmove_t_980
	mov eax, [esi+0xec]
	cmp eax, 0x4
	jbe _Z5PmoveP7pmove_t_910
	cmp eax, 0x7
	jnz _Z5PmoveP7pmove_t_980
	jmp _Z5PmoveP7pmove_t_910
_Z5PmoveP7pmove_t_960:
	mov [esp], esi
	call _Z30PM_InteruptWeaponWithProneMoveP13playerState_s
	test eax, eax
	jnz _Z5PmoveP7pmove_t_990
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_980
_Z5PmoveP7pmove_t_280:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z19PM_UpdatePronePitchP7pmove_tP5pml_t
	mov eax, [esi+0x18]
	test eax, eax
	jz _Z5PmoveP7pmove_t_1000
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_1010
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1020
_Z5PmoveP7pmove_t_2430:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
_Z5PmoveP7pmove_t_1000:
	mov edx, [esi+0x88]
	test edx, edx
	jle _Z5PmoveP7pmove_t_1030
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
_Z5PmoveP7pmove_t_1030:
	mov edx, [esi+0x90]
	test edx, edx
	jle _Z5PmoveP7pmove_t_1040
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
_Z5PmoveP7pmove_t_1040:
	cmp dword [esi+0x4], 0x5
	jle _Z5PmoveP7pmove_t_1050
	mov eax, [ebp-0xdc]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_1060
_Z5PmoveP7pmove_t_1050:
	mov ebx, [edi]
	mov eax, [ebp-0xdc]
	test eax, eax
	jz _Z5PmoveP7pmove_t_1070
	mov edx, [ebx+0xc]
	and dh, 0xdf
	mov [ebx+0xc], edx
_Z5PmoveP7pmove_t_1300:
	mov eax, [ebx+0x18]
	test eax, eax
	jz _Z5PmoveP7pmove_t_1080
	test dl, 0x8
	jz _Z5PmoveP7pmove_t_1090
_Z5PmoveP7pmove_t_1080:
	mov eax, [ebp-0xdc]
	test eax, eax
	jz _Z5PmoveP7pmove_t_1100
	movss xmm7, dword [_float_8_00000000]
_Z5PmoveP7pmove_t_1310:
	mov eax, edx
	shr eax, 0x3
	mov ecx, eax
	and ecx, 0x1
	jz _Z5PmoveP7pmove_t_1110
	cmp dword [ebx+0x70], 0x3ff
	jz _Z5PmoveP7pmove_t_1120
_Z5PmoveP7pmove_t_1110:
	movss xmm2, dword [ebp-0x108]
	movss xmm3, dword [ebp-0x104]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	pxor xmm4, xmm4
	addss xmm0, xmm4
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm4
	jb _Z5PmoveP7pmove_t_1130
	movss xmm0, dword [_float_1_00000000]
_Z5PmoveP7pmove_t_2070:
	movaps xmm4, xmm2
	mulss xmm4, xmm0
	movaps xmm5, xmm3
	mulss xmm5, xmm0
	pxor xmm6, xmm6
	mulss xmm6, xmm0
	mov byte [ebp-0x139], 0x0
_Z5PmoveP7pmove_t_2130:
	cmp dword [ebx+0x4], 0x6
	jle _Z5PmoveP7pmove_t_1140
	mov dword [ebx+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xd4], 0x0
	mov dword [ebp-0xdc], 0x0
	mov eax, [ebx+0xc]
	test al, 0x8
	jz _Z5PmoveP7pmove_t_1150
	mov edx, eax
_Z5PmoveP7pmove_t_1720:
	or dh, 0x20
	and edx, 0xfffffff7
	mov [ebx+0xc], edx
_Z5PmoveP7pmove_t_1150:
	test byte [esi+0xc], 0x8
	jnz _Z5PmoveP7pmove_t_1160
	mov ebx, [ebp-0xdc]
	test ebx, ebx
	jz _Z5PmoveP7pmove_t_1170
	mov ebx, [edi]
	mov edx, [ebx+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1180
_Z5PmoveP7pmove_t_2120:
	test dx, dx
	jns _Z5PmoveP7pmove_t_1190
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm0, eax
	mov eax, player_sprintStrafeSpeedScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	mov [edi+0x1b], al
_Z5PmoveP7pmove_t_1190:
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10Jump_CheckP7pmove_tP5pml_t
	test al, al
	jnz _Z5PmoveP7pmove_t_1170
	lea edx, [ebp-0x108]
	mov eax, ebx
	call _Z11PM_FrictionP13playerState_sP5pml_t
	movzx ecx, byte [edi+0x1a]
	movsx eax, cl
	cvtsi2ss xmm0, eax
	movss [ebp-0x114], xmm0
	movzx edx, byte [edi+0x1b]
	movsx eax, dl
	cvtsi2ss xmm1, eax
	movss [ebp-0x118], xmm1
	mov eax, [edi]
	mov [ebp-0x11c], eax
	mov eax, [eax+0xc]
	mov [ebp-0x120], eax
	test al, 0x1
	jz _Z5PmoveP7pmove_t_1200
	mov eax, [ebp-0x11c]
	movss xmm0, dword [eax+0xf4]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	ja _Z5PmoveP7pmove_t_1210
_Z5PmoveP7pmove_t_1200:
	mov byte [ebp-0x121], 0x0
_Z5PmoveP7pmove_t_2390:
	movsx eax, cl
	movsx edx, dl
	imul eax, eax
	imul edx, edx
	add eax, edx
	cvtsi2ss xmm0, eax
	sqrtss xmm4, xmm0
	test cl, cl
	js _Z5PmoveP7pmove_t_1220
	movss xmm0, dword [_data16_7fffffff]
	movss xmm3, dword [ebp-0x114]
	andps xmm3, xmm0
_Z5PmoveP7pmove_t_2510:
	mov eax, player_strafeSpeedScale
	mov eax, [eax]
	movss xmm2, dword [ebp-0x118]
	mulss xmm2, [eax+0xc]
	andps xmm2, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm7, xmm7
	cmpss xmm7, xmm0, 0x6
	movaps xmm1, xmm2
	andps xmm1, xmm7
	movaps xmm2, xmm7
	andnps xmm2, xmm3
	orps xmm2, xmm1
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jnz _Z5PmoveP7pmove_t_1230
	jp _Z5PmoveP7pmove_t_1230
	pxor xmm2, xmm2
_Z5PmoveP7pmove_t_2220:
	mov edx, [ebx+0xa0]
	test edx, edx
	jz _Z5PmoveP7pmove_t_1240
	mov eax, player_dmgtimer_maxTime
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z5PmoveP7pmove_t_1250
	jnp _Z5PmoveP7pmove_t_1240
_Z5PmoveP7pmove_t_1250:
	mov eax, player_dmgtimer_minScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	xorps xmm1, [_data16_80000000]
	divss xmm1, xmm0
	cvtsi2ss xmm0, edx
	mulss xmm1, xmm0
	addss xmm1, [_float_1_00000000]
	jmp _Z5PmoveP7pmove_t_1260
_Z5PmoveP7pmove_t_270:
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z25PM_UpdateAimDownSightFlagP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z15PM_UpdateSprintP7pmove_tPK5pml_t
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg _Z5PmoveP7pmove_t_1270
	test byte [edi+0x9], 0x8
	jz _Z5PmoveP7pmove_t_1270
	test al, 0x1
	jnz _Z5PmoveP7pmove_t_1270
	test al, 0x10
	jz _Z5PmoveP7pmove_t_1270
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_1270
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_1270
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_1270
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_1270
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_1270
	or ecx, 0x40
	mov [edx+0xc], ecx
_Z5PmoveP7pmove_t_1270:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_CheckDuckP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z14PM_GroundTraceP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_1280
_Z5PmoveP7pmove_t_400:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_390
_Z5PmoveP7pmove_t_100:
	mov [esp], esi
	call _Z19BG_UsingSniperScopePK13playerState_s
	test eax, eax
	jnz _Z5PmoveP7pmove_t_90
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	jmp _Z5PmoveP7pmove_t_90
_Z5PmoveP7pmove_t_930:
	mov eax, [esi+0xe8]
	test eax, eax
	jz _Z5PmoveP7pmove_t_1290
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edx, [eax+0x5b8]
	test edx, edx
	jz _Z5PmoveP7pmove_t_1290
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	and dword [edi+0x8], 0xfffffb3f
	lea ecx, [esi+0x28]
	mov [ebp-0x168], ecx
	xor eax, eax
	mov [esi+0x28], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	jmp _Z5PmoveP7pmove_t_880
_Z5PmoveP7pmove_t_1070:
	mov edx, [ebx+0xc]
	jmp _Z5PmoveP7pmove_t_1300
_Z5PmoveP7pmove_t_1100:
	movss xmm7, dword [_float_30_00000000]
	jmp _Z5PmoveP7pmove_t_1310
_Z5PmoveP7pmove_t_360:
	test al, 0x10
	jz _Z5PmoveP7pmove_t_350
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz _Z5PmoveP7pmove_t_350
	cmp eax, 0x9
	jz _Z5PmoveP7pmove_t_350
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_350
	cmp eax, 0xa
	jz _Z5PmoveP7pmove_t_350
	cmp eax, 0x8
	jz _Z5PmoveP7pmove_t_350
	or ecx, 0x40
	mov [edx+0xc], ecx
	jmp _Z5PmoveP7pmove_t_350
_Z5PmoveP7pmove_t_380:
	and eax, 0xffffffbf
	mov [edx+0x10], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x41
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z5PmoveP7pmove_t_370
_Z5PmoveP7pmove_t_710:
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_float_127_00000000]
	mulss xmm1, xmm2
	divss xmm1, dword [_float_16129_00000000]
	test byte [esi+0xc], 0x40
	jnz _Z5PmoveP7pmove_t_1320
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x5c]
	jp _Z5PmoveP7pmove_t_1320
	jnz _Z5PmoveP7pmove_t_1320
_Z5PmoveP7pmove_t_1610:
	mov eax, [esi+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_1330
	cmp eax, 0x3
	jz _Z5PmoveP7pmove_t_1340
	cmp eax, 0x4
	jnz _Z5PmoveP7pmove_t_1350
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
_Z5PmoveP7pmove_t_1350:
	mov eax, [edi+0x8]
	test al, 0x40
	jz _Z5PmoveP7pmove_t_1360
	movaps xmm0, xmm1
	mulss xmm0, [_float__127_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
_Z5PmoveP7pmove_t_1360:
	test al, al
	jns _Z5PmoveP7pmove_t_1370
	mulss xmm1, xmm2
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	movaps xmm2, xmm1
	jmp _Z5PmoveP7pmove_t_1380
_Z5PmoveP7pmove_t_600:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp _Z5PmoveP7pmove_t_1390
_Z5PmoveP7pmove_t_550:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp _Z5PmoveP7pmove_t_1400
_Z5PmoveP7pmove_t_780:
	test al, 0x40
	jz _Z5PmoveP7pmove_t_1410
_Z5PmoveP7pmove_t_790:
	subss xmm5, [_float_127_00000000]
	jmp _Z5PmoveP7pmove_t_1410
_Z5PmoveP7pmove_t_750:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_1420
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1430
_Z5PmoveP7pmove_t_2480:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp _Z5PmoveP7pmove_t_1440
_Z5PmoveP7pmove_t_570:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_1450
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1460
_Z5PmoveP7pmove_t_2500:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp _Z5PmoveP7pmove_t_1470
_Z5PmoveP7pmove_t_620:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_1480
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1490
_Z5PmoveP7pmove_t_2490:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp _Z5PmoveP7pmove_t_1500
_Z5PmoveP7pmove_t_440:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp _Z5PmoveP7pmove_t_1510
_Z5PmoveP7pmove_t_320:
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	mov eax, [esi+0xb0]
	and ah, 0xfc
	mov [esi+0xb0], eax
	jmp _Z5PmoveP7pmove_t_1520
_Z5PmoveP7pmove_t_460:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg _Z5PmoveP7pmove_t_1530
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz _Z5PmoveP7pmove_t_1540
_Z5PmoveP7pmove_t_2470:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp _Z5PmoveP7pmove_t_1550
_Z5PmoveP7pmove_t_730:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp _Z5PmoveP7pmove_t_1560
_Z5PmoveP7pmove_t_500:
	movss xmm4, dword [_float_127_00000000]
	test al, 0x40
	jz _Z5PmoveP7pmove_t_1570
_Z5PmoveP7pmove_t_510:
	subss xmm4, [_float_127_00000000]
	jmp _Z5PmoveP7pmove_t_1570
_Z5PmoveP7pmove_t_990:
	and dword [esi+0xc], 0xfffffdff
	mov [esp], esi
	call _Z19PM_ExitAimDownSightP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_980
_Z5PmoveP7pmove_t_1010:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_1000
_Z5PmoveP7pmove_t_1090:
	test edx, 0x180
	jnz _Z5PmoveP7pmove_t_1150
	jmp _Z5PmoveP7pmove_t_1080
_Z5PmoveP7pmove_t_1060:
	mov ebx, [ebp-0x168]
	movss xmm4, dword [ebx]
	mov eax, [ebp-0x14c]
	movss xmm0, dword [eax]
	mov edx, [ebp-0x148]
	movss xmm1, dword [edx]
	movaps xmm3, xmm4
	mulss xmm3, xmm4
	mulss xmm0, xmm0
	addss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	subss xmm2, [_float_20_00000000]
	pxor xmm5, xmm5
	ucomiss xmm5, xmm2
	jae _Z5PmoveP7pmove_t_1580
	mov edx, ebx
	add edx, 0x4
	movss xmm0, dword [ebx+0x4]
	mov eax, ebx
	add eax, 0x8
	movss xmm1, dword [ebx+0x8]
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	sqrtss xmm3, xmm3
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm5
	jb _Z5PmoveP7pmove_t_1590
	movss xmm1, dword [_float_1_00000000]
_Z5PmoveP7pmove_t_2570:
	mulss xmm4, xmm1
	mov ebx, [ebp-0x168]
	movss [ebx], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm2
	mov ecx, [ebp-0x14c]
	mulss xmm0, [ecx]
	movss [edx], xmm0
	mov ebx, [ebp-0x148]
	mulss xmm2, [ebx]
	movss [eax], xmm2
	jmp _Z5PmoveP7pmove_t_1050
_Z5PmoveP7pmove_t_660:
	mulss xmm3, [_float_0_40000001]
	jmp _Z5PmoveP7pmove_t_1600
_Z5PmoveP7pmove_t_1320:
	mulss xmm1, [_float_0_40000001]
	jmp _Z5PmoveP7pmove_t_1610
_Z5PmoveP7pmove_t_1170:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z10PM_AirMoveP7pmove_tP5pml_t
_Z5PmoveP7pmove_t_1860:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z14PM_GroundTraceP7pmove_tP5pml_t
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z12PM_FootstepsP7pmove_tP5pml_t
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z9PM_WeaponP7pmove_tP5pml_t
	mov ebx, [edi]
	movss xmm1, dword [edi+0xe4]
	mov eax, bg_foliagesnd_minspeed
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm2, xmm1
	jbe _Z5PmoveP7pmove_t_1620
	mov eax, bg_foliagesnd_resetinterval
	mov edx, [eax]
	mov eax, [ebx+0x54]
	add eax, [edx+0xc]
	cmp eax, [edi+0x4]
	jge _Z5PmoveP7pmove_t_1630
	mov dword [ebx+0x54], 0x0
_Z5PmoveP7pmove_t_1630:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm0
_Z5PmoveP7pmove_t_1650:
	mov eax, [ebp-0x158]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0xa0]
	movss [ebp-0x110], xmm0
	mov eax, [ebp-0x154]
	movss xmm6, dword [eax]
	subss xmm6, [ebp-0x9c]
	mov edx, [ebp-0x150]
	movss xmm7, dword [edx]
	subss xmm7, [ebp-0x98]
	movss xmm5, dword [ebp-0xe4]
	mov ecx, [ebp-0x168]
	movss xmm4, dword [ecx]
	mov ebx, [ebp-0x14c]
	movss xmm0, dword [ebx]
	movss [ebp-0x164], xmm0
	mov eax, [ebp-0x148]
	movss xmm3, dword [eax]
	movss xmm2, dword [ebp-0x110]
	mulss xmm2, xmm2
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	divss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x164]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm0, [_float_0_25000000]
	ucomiss xmm0, xmm2
	jbe _Z5PmoveP7pmove_t_1640
	movss xmm0, dword [ebp-0x16c]
	divss xmm0, xmm5
	movss xmm1, dword [ebp-0x110]
	mulss xmm1, xmm0
	movss [ecx], xmm1
	mulss xmm6, xmm0
	movss [ecx+0x4], xmm6
	mulss xmm7, xmm0
	movss [ecx+0x8], xmm7
	movss xmm5, dword [ebp-0xe4]
	movaps xmm4, xmm1
	movss xmm0, dword [ebx]
	movss [ebp-0x164], xmm0
	movaps xmm1, xmm0
_Z5PmoveP7pmove_t_1660:
	subss xmm4, [esi+0x34]
	subss xmm1, [esi+0x38]
	movss [ebp-0x164], xmm1
	movss xmm1, dword [ebp-0x16c]
	subss xmm1, xmm5
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	andps xmm5, xmm0
	movss xmm2, dword [ebp-0x16c]
	andnps xmm0, xmm2
	orps xmm0, xmm5
	mulss xmm4, xmm0
	addss xmm4, [esi+0x34]
	movss [esi+0x34], xmm4
	mulss xmm0, [ebp-0x164]
	addss xmm0, [esi+0x38]
	movss [esi+0x38], xmm0
	mov eax, [ebp-0x168]
	mov [esp], eax
	call _Z14Sys_SnapVectorPf
	jmp _Z5PmoveP7pmove_t_310
_Z5PmoveP7pmove_t_1620:
	subss xmm1, xmm2
	mov eax, bg_foliagesnd_maxspeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm2
	divss xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm2
	minss xmm2, xmm1
	movaps xmm1, xmm2
	mov eax, bg_foliagesnd_slowinterval
	mov eax, [eax]
	mov edx, [eax+0xc]
	mov eax, bg_foliagesnd_fastinterval
	mov eax, [eax]
	mov eax, [eax+0xc]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm1, xmm0
	cvtsi2ss xmm0, edx
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	add eax, [ebx+0x54]
	cmp eax, [edi+0x4]
	jge _Z5PmoveP7pmove_t_1650
	lea eax, [edi+0xcc]
	movss xmm0, dword [_float_0_75000000]
	movss xmm1, dword [edi+0xcc]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [edi+0xd8]
	mulss xmm1, xmm0
	movss [ebp-0x5c], xmm1
	mulss xmm0, [edi+0xdc]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [_float_0_89999998]
	mulss xmm0, [edi+0xe0]
	movss [ebp-0x54], xmm0
	lea edx, [ebx+0x1c]
	mov dword [esp+0x1c], 0x2
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	lea eax, [ebp-0x5c]
	mov [esp+0x10], eax
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	lea eax, [ebp-0x88]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x5f], 0x0
	jz _Z5PmoveP7pmove_t_1650
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	mov eax, [edi+0x4]
	mov [ebx+0x54], eax
	jmp _Z5PmoveP7pmove_t_1650
_Z5PmoveP7pmove_t_1640:
	movss xmm1, dword [ebp-0x164]
	jmp _Z5PmoveP7pmove_t_1660
_Z5PmoveP7pmove_t_1140:
	test dh, 0x20
	jnz _Z5PmoveP7pmove_t_1670
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz _Z5PmoveP7pmove_t_1680
	cmp eax, 0x28
	jz _Z5PmoveP7pmove_t_1680
	cmp eax, 0xb
	jz _Z5PmoveP7pmove_t_1670
_Z5PmoveP7pmove_t_1680:
	mov eax, [edi+0x4]
	sub eax, [ebx+0x80]
	cmp eax, 0x12b
	jle _Z5PmoveP7pmove_t_1670
	movss xmm1, dword [edi+0xd0]
	movss xmm2, dword [_float_6_00000000]
	movss xmm0, dword [edi+0xcc]
	addss xmm0, xmm2
	movss [ebp-0x24], xmm0
	addss xmm1, xmm2
	movss [ebp-0x20], xmm1
	movss xmm3, dword [_float_8_00000000]
	movss [ebp-0x1c], xmm3
	lea eax, [edi+0xd8]
	movss xmm0, dword [edi+0xd8]
	movss xmm1, dword [eax+0x4]
	mov eax, [eax+0x8]
	mov [ebp-0x80], eax
	subss xmm0, xmm2
	movss [ebp-0x88], xmm0
	subss xmm1, xmm2
	movss [ebp-0x84], xmm1
	ucomiss xmm3, [ebp-0x80]
	jbe _Z5PmoveP7pmove_t_1690
	mov dword [ebp-0x80], 0x41000000
_Z5PmoveP7pmove_t_1690:
	lea eax, [ebx+0x1c]
	mov [ebp-0x138], eax
	mulss xmm4, xmm7
	addss xmm4, [ebx+0x1c]
	movss [ebp-0x30], xmm4
	mulss xmm5, xmm7
	addss xmm5, [ebx+0x20]
	movss [ebp-0x2c], xmm5
	mulss xmm6, xmm7
	addss xmm6, [ebx+0x24]
	movss [ebp-0x28], xmm6
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	lea edx, [ebp-0x30]
	mov [esp+0x14], edx
	lea ecx, [ebp-0x88]
	mov [esp+0x10], ecx
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov edx, [ebp-0x138]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x5c]
	mov [esp+0x4], ecx
	mov [esp], edi
	movss [ebp-0x1b8], xmm7
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	movss xmm7, dword [ebp-0x1b8]
	ja _Z5PmoveP7pmove_t_1700
_Z5PmoveP7pmove_t_2580:
	mov eax, [ebx+0xc]
	test al, 0x8
	jz _Z5PmoveP7pmove_t_1710
	or ah, 0x20
	and eax, 0xfffffff7
	mov [ebx+0xc], eax
_Z5PmoveP7pmove_t_1710:
	cmp byte [ebp-0x139], 0x0
	jz _Z5PmoveP7pmove_t_1150
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	jmp _Z5PmoveP7pmove_t_1150
_Z5PmoveP7pmove_t_1670:
	test ecx, ecx
	jz _Z5PmoveP7pmove_t_1150
	jmp _Z5PmoveP7pmove_t_1720
_Z5PmoveP7pmove_t_1160:
	mov eax, [edi]
	mov [ebp-0x12c], eax
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z10Jump_CheckP7pmove_tP5pml_t
	test al, al
	jnz _Z5PmoveP7pmove_t_1170
	movss xmm3, dword [_float_0_25000000]
	addss xmm3, [ebp-0x100]
	mulss xmm3, [_float_2_50000000]
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm0
	ucomiss xmm3, xmm0
	jbe _Z5PmoveP7pmove_t_1730
_Z5PmoveP7pmove_t_2530:
	movaps xmm3, xmm0
	mov dword [ebp-0x100], 0x0
	movss xmm2, dword [ebp-0x108]
	movss xmm0, dword [ebp-0x104]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	pxor xmm4, xmm4
	addss xmm1, xmm4
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm4
	jb _Z5PmoveP7pmove_t_1740
	movss xmm1, dword [ebp-0x16c]
_Z5PmoveP7pmove_t_2520:
	mulss xmm2, xmm1
	movss [ebp-0x108], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x104]
	movss [ebp-0x104], xmm0
	mulss xmm1, [ebp-0x100]
	movss [ebp-0x100], xmm1
	mov dword [ebp-0xf4], 0x0
	lea eax, [ebp-0x5c]
	mov [esp+0x4], eax
	lea edx, [ebp-0xfc]
	mov [esp], edx
	movss [ebp-0x1a8], xmm3
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov ecx, [ebp-0x12c]
	add ecx, 0x74
	mov [ebp-0x134], ecx
	lea ebx, [ebp-0xfc]
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z19ProjectPointOnPlanePKfS0_Pf
	mov edx, [ebp-0x170]
	movsx ebx, byte [edx+0x16]
	movsx edx, byte [edx+0x17]
	mov eax, ebx
	imul eax, ebx
	mov ecx, edx
	imul ecx, edx
	add eax, ecx
	cvtsi2ss xmm0, eax
	sqrtss xmm2, xmm0
	mov ecx, ebx
	mov eax, ebx
	neg eax
	cmp ebx, 0xffffffff
	cmovle ecx, eax
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle edx, eax
	cmp ecx, edx
	cmovl ecx, edx
	test ecx, ecx
	movss xmm3, dword [ebp-0x1a8]
	jnz _Z5PmoveP7pmove_t_1750
	pxor xmm1, xmm1
_Z5PmoveP7pmove_t_2330:
	pxor xmm2, xmm2
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm2
	movzx eax, byte [edi+0x1a]
	test al, al
	jz _Z5PmoveP7pmove_t_1760
	mulss xmm3, [_float_0_50000000]
	mulss xmm3, xmm1
	movsx eax, al
	cvtsi2ss xmm0, eax
	mulss xmm3, xmm0
	movss [ebp-0x28], xmm3
_Z5PmoveP7pmove_t_1760:
	movzx eax, byte [edi+0x1b]
	test al, al
	jz _Z5PmoveP7pmove_t_1770
	mulss xmm1, [_float_0_20000000]
	movsx eax, al
	cvtsi2ss xmm0, eax
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xfc]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xf8]
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0xf4]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
_Z5PmoveP7pmove_t_1770:
	lea ecx, [ebp-0x88]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	movss [ebp-0x198], xmm2
	call _Z15Vec3NormalizeToPKfPf
	movss xmm1, dword [_float_9_00000000]
	fstp dword [ebp-0x1bc]
	movss xmm0, dword [ebp-0x1bc]
	lea ecx, [ebp-0x88]
	lea edx, [ebp-0x108]
	mov eax, [ebp-0x12c]
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	cmp byte [edi+0x1a], 0x0
	movss xmm2, dword [ebp-0x198]
	jnz _Z5PmoveP7pmove_t_1780
	mov eax, [ebp-0x12c]
	movss xmm1, dword [eax+0x30]
	ucomiss xmm1, xmm2
	jbe _Z5PmoveP7pmove_t_1790
	cvtsi2ss xmm0, dword [eax+0x58]
	mulss xmm0, [ebp-0xe4]
	subss xmm1, xmm0
	movss [eax+0x30], xmm1
	ucomiss xmm2, xmm1
	ja _Z5PmoveP7pmove_t_1800
_Z5PmoveP7pmove_t_1780:
	cmp byte [edi+0x1b], 0x0
	jz _Z5PmoveP7pmove_t_1810
_Z5PmoveP7pmove_t_2450:
	mov eax, [ebp-0xdc]
	test eax, eax
	jnz _Z5PmoveP7pmove_t_1820
	mov eax, [ebp-0x12c]
	add eax, 0x28
	mov ecx, [ebp-0x134]
	add ecx, 0x4
	mov edx, [ebp-0x12c]
	add edx, 0x2c
	mov ebx, [ebp-0x134]
	movss xmm0, dword [ebx]
	mov ebx, [ebp-0x12c]
	mulss xmm0, [ebx+0x28]
	mov ebx, [ebp-0x134]
	movss xmm1, dword [ebx+0x4]
	mov ebx, [ebp-0x12c]
	mulss xmm1, [ebx+0x2c]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mov ebx, [ebp-0x134]
	mulss xmm1, [ebx]
	mov ebx, [ebp-0x12c]
	addss xmm1, [ebx+0x28]
	movss [ebx+0x28], xmm1
	mov ebx, [ebp-0x134]
	mulss xmm0, [ebx+0x4]
	mov ebx, [ebp-0x12c]
	addss xmm0, [ebx+0x2c]
	movss [ebx+0x2c], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x28]
	jnz _Z5PmoveP7pmove_t_1830
	jp _Z5PmoveP7pmove_t_1830
	ucomiss xmm0, [ebx+0x2c]
	jnz _Z5PmoveP7pmove_t_1830
	jp _Z5PmoveP7pmove_t_1830
	ucomiss xmm0, [ebx+0x30]
	jp _Z5PmoveP7pmove_t_1830
	jz _Z5PmoveP7pmove_t_1820
_Z5PmoveP7pmove_t_1830:
	movss xmm0, dword [eax]
	movss xmm1, dword [edx]
	mov ebx, [ebp-0x12c]
	movss xmm2, dword [ebx+0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm2, xmm0
	jb _Z5PmoveP7pmove_t_1820
	movss xmm1, dword [_float__50_00000000]
	mov ebx, [ebp-0x134]
	movss xmm0, dword [ebx]
	mulss xmm0, xmm1
	addss xmm0, [eax]
	movss [eax], xmm0
	mulss xmm1, [ecx]
	addss xmm1, [edx]
	movss [edx], xmm1
_Z5PmoveP7pmove_t_1820:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16PM_StepSlideMoveP7pmove_tP5pml_ti
	mov edx, [ebp-0x134]
	mov [esp], edx
	call _Z8vectoyawPKf
	fstp dword [ebp-0x1bc]
	movss xmm0, dword [ebp-0x1bc]
	mov ecx, [ebp-0x12c]
	mov eax, [ecx+0x10c]
	mov [esp+0x4], eax
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call _Z10AngleDeltaff
	fstp dword [ebp-0x130]
	cvttss2si eax, [ebp-0x130]
	mov edx, eax
	test eax, eax
	js _Z5PmoveP7pmove_t_1840
_Z5PmoveP7pmove_t_2540:
	cmp edx, 0x4b
	jg _Z5PmoveP7pmove_t_1850
	mov edx, eax
_Z5PmoveP7pmove_t_2420:
	movsx eax, dl
	mov ebx, [ebp-0x12c]
	mov [ebx+0xac], eax
	jmp _Z5PmoveP7pmove_t_1860
_Z5PmoveP7pmove_t_810:
	jp _Z5PmoveP7pmove_t_800
	ucomiss xmm5, xmm0
	jp _Z5PmoveP7pmove_t_800
	jnz _Z5PmoveP7pmove_t_800
	movss xmm2, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm2
	lea esi, [ebx+0x28]
_Z5PmoveP7pmove_t_820:
	mov edx, vec3_origin
	mov eax, [edx]
	mov [ebx+0x28], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	jmp _Z5PmoveP7pmove_t_1870
_Z5PmoveP7pmove_t_410:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_1880
_Z5PmoveP7pmove_t_830:
	cvtsi2ss xmm6, dword [ebx+0x60]
	mulss xmm6, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_127_00000000]
	divss xmm6, xmm0
	test byte [ebx+0xc], 0x40
	jz _Z5PmoveP7pmove_t_1890
_Z5PmoveP7pmove_t_2270:
	mulss xmm6, [_float_0_40000001]
_Z5PmoveP7pmove_t_2280:
	mov eax, [ebx+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_1900
	cmp eax, 0x3
	jz _Z5PmoveP7pmove_t_1910
	cmp eax, 0x4
	jnz _Z5PmoveP7pmove_t_1920
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm6, [eax+0xc]
	jmp _Z5PmoveP7pmove_t_1920
_Z5PmoveP7pmove_t_520:
	cvtsi2ss xmm5, dword [ebx+0x60]
	mulss xmm5, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_127_00000000]
	divss xmm5, xmm0
	test byte [ebx+0xc], 0x40
	jz _Z5PmoveP7pmove_t_1930
_Z5PmoveP7pmove_t_2250:
	mulss xmm5, [_float_0_40000001]
_Z5PmoveP7pmove_t_2260:
	mov eax, [ebx+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_1940
	cmp eax, 0x3
	jz _Z5PmoveP7pmove_t_1950
	cmp eax, 0x4
	jnz _Z5PmoveP7pmove_t_1960
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm5, [eax+0xc]
	jmp _Z5PmoveP7pmove_t_1960
_Z5PmoveP7pmove_t_700:
	pxor xmm1, xmm1
	mulss xmm1, [ebp-0xf4]
	movss xmm2, dword [ebp-0xf8]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movss [ebp-0x88], xmm0
	movss xmm0, dword [ebp-0xfc]
	movaps xmm4, xmm0
	subss xmm4, xmm1
	movss [ebp-0x84], xmm4
	pxor xmm7, xmm7
	mulss xmm2, xmm7
	mulss xmm0, xmm7
	subss xmm2, xmm0
	movss [ebp-0x80], xmm2
	movsx eax, byte [edi+0x1a]
	cvtsi2ss xmm4, eax
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm2, eax
	mov edx, 0x1
_Z5PmoveP7pmove_t_1970:
	lea eax, [edx*4]
	movaps xmm0, xmm4
	mulss xmm0, [ebp+eax-0x8c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp+eax-0x100]
	addss xmm0, xmm1
	mulss xmm0, xmm3
	movss [ebp+eax-0x28], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z5PmoveP7pmove_t_1970
	jmp _Z5PmoveP7pmove_t_1980
_Z5PmoveP7pmove_t_1420:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_1440
_Z5PmoveP7pmove_t_1450:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_1470
_Z5PmoveP7pmove_t_1530:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_1550
_Z5PmoveP7pmove_t_1480:
	sub eax, edx
	mov [esi+0x18], eax
	jmp _Z5PmoveP7pmove_t_1500
_Z5PmoveP7pmove_t_1240:
	movss xmm1, dword [_float_1_00000000]
_Z5PmoveP7pmove_t_1260:
	mulss xmm2, xmm1
	movss [ebp-0x10c], xmm2
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ebp-0xe4]
	cvttss2si eax, xmm0
	sub edx, eax
	xor eax, eax
	test edx, edx
	cmovg eax, edx
	mov [ebx+0xa0], eax
	mov dword [ebp-0x100], 0x0
	mov dword [ebp-0xf4], 0x0
	lea eax, [ebp-0x108]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	lea edx, [ebp-0xfc]
	mov [esp], edx
	call _Z13Vec2NormalizePf
	fstp st0
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, [ebp-0x108]
	movss xmm1, dword [ebp-0x118]
	mulss xmm1, [ebp-0xfc]
	addss xmm0, xmm1
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [ebp-0x114]
	mulss xmm1, [ebp-0x104]
	movss xmm0, dword [ebp-0x118]
	mulss xmm0, [ebp-0xf8]
	addss xmm1, xmm0
	movss [ebp-0x58], xmm1
	mov dword [ebp-0x54], 0x0
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x128]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [ebp-0x128]
	movss [ebp-0x10c], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z18PM_ProjectVelocityPKfS0_Pf
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz _Z5PmoveP7pmove_t_1990
	cmp eax, 0x28
	jz _Z5PmoveP7pmove_t_1990
	cmp eax, 0xb
	setz al
	movzx eax, al
_Z5PmoveP7pmove_t_2240:
	test byte [ebp-0xc0], 0x2
	jnz _Z5PmoveP7pmove_t_2000
	mov edx, [ebx+0xc]
	test dh, 0x1
	jz _Z5PmoveP7pmove_t_2010
_Z5PmoveP7pmove_t_2230:
	movss xmm1, dword [_float_1_00000000]
_Z5PmoveP7pmove_t_2380:
	test dl, dl
	jns _Z5PmoveP7pmove_t_2020
	mulss xmm1, [_float_0_25000000]
_Z5PmoveP7pmove_t_2020:
	movss xmm0, dword [ebp-0x10c]
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x108]
	mov eax, ebx
	call _Z13PM_AccelerateP13playerState_sPK5pml_tPKfff
	test byte [ebp-0xc0], 0x2
	jnz _Z5PmoveP7pmove_t_2030
	test byte [ebx+0xd], 0x1
	jnz _Z5PmoveP7pmove_t_2030
_Z5PmoveP7pmove_t_2060:
	lea eax, [ebx+0x28]
	mov [esp+0x8], eax
	lea edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z18PM_ProjectVelocityPKfS0_Pf
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x28]
	jnz _Z5PmoveP7pmove_t_2040
	jp _Z5PmoveP7pmove_t_2040
	ucomiss xmm0, [ebx+0x2c]
	jp _Z5PmoveP7pmove_t_2040
	jnz _Z5PmoveP7pmove_t_2040
_Z5PmoveP7pmove_t_2050:
	lea edx, [ebp-0x108]
	mov eax, edi
	call _Z17PM_SetMovementDirP7pmove_tP5pml_t
	jmp _Z5PmoveP7pmove_t_1860
_Z5PmoveP7pmove_t_2040:
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z16PM_StepSlideMoveP7pmove_tP5pml_ti
	jmp _Z5PmoveP7pmove_t_2050
_Z5PmoveP7pmove_t_2030:
	cvtsi2ss xmm1, dword [ebx+0x58]
	mulss xmm1, [ebp-0xe4]
	movss xmm0, dword [ebx+0x30]
	subss xmm0, xmm1
	movss [ebx+0x30], xmm0
	jmp _Z5PmoveP7pmove_t_2060
_Z5PmoveP7pmove_t_1130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z5PmoveP7pmove_t_2070
_Z5PmoveP7pmove_t_850:
	movss xmm1, dword [ebp-0x16c]
	divss xmm1, xmm2
	jmp _Z5PmoveP7pmove_t_2080
_Z5PmoveP7pmove_t_490:
	mov edx, vec3_origin
	mov eax, [edx]
	mov [ebx+0x28], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	jmp _Z5PmoveP7pmove_t_2090
_Z5PmoveP7pmove_t_540:
	movss xmm1, dword [ebp-0x16c]
	divss xmm1, xmm2
	jmp _Z5PmoveP7pmove_t_2100
_Z5PmoveP7pmove_t_720:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z5PmoveP7pmove_t_2110
_Z5PmoveP7pmove_t_1180:
	mov [esp], ebx
	call _Z18Jump_ApplySlowdownP13playerState_s
	mov edx, [ebx+0xc]
	jmp _Z5PmoveP7pmove_t_2120
_Z5PmoveP7pmove_t_1120:
	lea eax, [ebx+0x74]
	movss xmm0, dword [_data16_80000000]
	movss xmm4, dword [ebx+0x74]
	xorps xmm4, xmm0
	movss xmm5, dword [eax+0x4]
	xorps xmm5, xmm0
	movss xmm6, dword [eax+0x8]
	xorps xmm6, xmm0
	mov byte [ebp-0x139], 0x1
	jmp _Z5PmoveP7pmove_t_2130
_Z5PmoveP7pmove_t_1230:
	mov eax, [ebp-0x11c]
	cvtsi2ss xmm1, dword [eax+0x60]
	mulss xmm1, xmm2
	mulss xmm4, [_float_127_00000000]
	divss xmm1, xmm4
	test byte [ebp-0x120], 0x40
	jz _Z5PmoveP7pmove_t_2140
_Z5PmoveP7pmove_t_2340:
	mulss xmm1, [_float_0_40000001]
_Z5PmoveP7pmove_t_2350:
	cmp word [ebp-0x120], 0x0
	jns _Z5PmoveP7pmove_t_2150
	mov eax, player_sprintSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
_Z5PmoveP7pmove_t_2150:
	mov edx, [ebp-0x11c]
	mov eax, [edx+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_2160
	cmp eax, 0x3
	jnz _Z5PmoveP7pmove_t_2170
	mulss xmm1, [_float_6_00000000]
_Z5PmoveP7pmove_t_2550:
	mov ecx, [ebp-0x11c]
	mov eax, [ecx+0xe8]
	mov [esp], eax
	movss [ebp-0x188], xmm1
	call _Z15BG_GetWeaponDefj
	mov edx, [ebp-0x11c]
	mov ecx, [edx+0xe8]
	test ecx, ecx
	movss xmm1, dword [ebp-0x188]
	jz _Z5PmoveP7pmove_t_2180
	movss xmm0, dword [eax+0x418]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _Z5PmoveP7pmove_t_2190
	mov edx, [edx+0xc]
	test dl, 0x40
	jnz _Z5PmoveP7pmove_t_2200
	cmp byte [ebp-0x121], 0x0
	jnz _Z5PmoveP7pmove_t_2200
_Z5PmoveP7pmove_t_2400:
	mulss xmm1, xmm0
_Z5PmoveP7pmove_t_2410:
	and edx, 0x10000
	jnz _Z5PmoveP7pmove_t_2210
_Z5PmoveP7pmove_t_2560:
	movaps xmm2, xmm1
	mov ecx, [ebp-0x11c]
	mulss xmm2, [ecx+0x5dc]
	jmp _Z5PmoveP7pmove_t_2220
_Z5PmoveP7pmove_t_2000:
	mov edx, [ebx+0xc]
	jmp _Z5PmoveP7pmove_t_2230
_Z5PmoveP7pmove_t_1990:
	mov eax, 0x2
	jmp _Z5PmoveP7pmove_t_2240
_Z5PmoveP7pmove_t_1930:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jp _Z5PmoveP7pmove_t_2250
	jz _Z5PmoveP7pmove_t_2260
	jmp _Z5PmoveP7pmove_t_2250
_Z5PmoveP7pmove_t_1890:
	pxor xmm7, xmm7
	ucomiss xmm7, [ebx+0x5c]
	jp _Z5PmoveP7pmove_t_2270
	jz _Z5PmoveP7pmove_t_2280
	jmp _Z5PmoveP7pmove_t_2270
_Z5PmoveP7pmove_t_1750:
	mov ebx, [ebp-0x12c]
	cvtsi2ss xmm1, dword [ebx+0x60]
	cvtsi2ss xmm0, ecx
	mulss xmm1, xmm0
	mulss xmm2, [_float_127_00000000]
	divss xmm1, xmm2
	test byte [ebx+0xc], 0x40
	jnz _Z5PmoveP7pmove_t_2290
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jp _Z5PmoveP7pmove_t_2290
	jz _Z5PmoveP7pmove_t_2300
_Z5PmoveP7pmove_t_2290:
	mulss xmm1, [_float_0_40000001]
_Z5PmoveP7pmove_t_2300:
	mov edx, [ebp-0x12c]
	mov eax, [edx+0x4]
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_2310
	cmp eax, 0x3
	jz _Z5PmoveP7pmove_t_2320
	cmp eax, 0x4
	jnz _Z5PmoveP7pmove_t_2330
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	jmp _Z5PmoveP7pmove_t_2330
_Z5PmoveP7pmove_t_2140:
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x5c]
	jnz _Z5PmoveP7pmove_t_2340
	jp _Z5PmoveP7pmove_t_2340
	cmp byte [ebp-0x121], 0x0
	jz _Z5PmoveP7pmove_t_2350
	jmp _Z5PmoveP7pmove_t_2340
_Z5PmoveP7pmove_t_2010:
	cmp eax, 0x1
	jz _Z5PmoveP7pmove_t_2360
	cmp eax, 0x2
	jz _Z5PmoveP7pmove_t_2370
	movss xmm1, dword [_float_9_00000000]
	jmp _Z5PmoveP7pmove_t_2380
_Z5PmoveP7pmove_t_1210:
	mov byte [ebp-0x121], 0x1
	jmp _Z5PmoveP7pmove_t_2390
_Z5PmoveP7pmove_t_1580:
	movss [ebx], xmm5
	movss [ebx+0x4], xmm5
	movss [ebx+0x8], xmm5
	jmp _Z5PmoveP7pmove_t_1050
_Z5PmoveP7pmove_t_1950:
	mulss xmm5, [_float_6_00000000]
	jmp _Z5PmoveP7pmove_t_1960
_Z5PmoveP7pmove_t_1910:
	mulss xmm6, [_float_6_00000000]
	jmp _Z5PmoveP7pmove_t_1920
_Z5PmoveP7pmove_t_2190:
	mov ecx, [ebp-0x11c]
	mov edx, [ecx+0xc]
_Z5PmoveP7pmove_t_2200:
	movss xmm0, dword [eax+0x41c]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	ja _Z5PmoveP7pmove_t_2400
	jmp _Z5PmoveP7pmove_t_2410
_Z5PmoveP7pmove_t_1330:
	mulss xmm1, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_1350
_Z5PmoveP7pmove_t_670:
	mulss xmm3, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_690
_Z5PmoveP7pmove_t_1850:
	mov edx, 0x4b
	test eax, eax
	mov eax, 0xffffffb5
	cmovle edx, eax
	jmp _Z5PmoveP7pmove_t_2420
_Z5PmoveP7pmove_t_680:
	mulss xmm3, [_float_6_00000000]
	jmp _Z5PmoveP7pmove_t_690
_Z5PmoveP7pmove_t_1340:
	mulss xmm1, [_float_6_00000000]
	jmp _Z5PmoveP7pmove_t_1350
_Z5PmoveP7pmove_t_1020:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_2430
_Z5PmoveP7pmove_t_1940:
	mulss xmm5, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_1960
_Z5PmoveP7pmove_t_1900:
	mulss xmm6, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_1920
_Z5PmoveP7pmove_t_1810:
	mov eax, [ebp-0xfc]
	mov [ebp-0x24], eax
	mov eax, [ebp-0xf8]
	mov [ebp-0x20], eax
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z13Vec2NormalizePf
	fstp st0
	mov eax, [ebp-0x12c]
	add eax, 0x28
	movss xmm2, dword [ebp-0x24]
	mov edx, [ebp-0x12c]
	add edx, 0x2c
	movaps xmm1, xmm2
	mov ebx, [ebp-0x12c]
	mulss xmm1, [ebx+0x28]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebx+0x2c]
	addss xmm1, xmm0
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jp _Z5PmoveP7pmove_t_2440
	jz _Z5PmoveP7pmove_t_2450
_Z5PmoveP7pmove_t_2440:
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	mulss xmm2, xmm0
	addss xmm2, [ebx+0x28]
	movss [ebx+0x28], xmm2
	mulss xmm0, [ebp-0x20]
	addss xmm0, [ebx+0x2c]
	movss [ebx+0x2c], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0xe4]
	mulss xmm2, [_float_16_00000000]
	movss xmm0, dword [_data16_7fffffff]
	movaps xmm3, xmm2
	andps xmm3, xmm0
	andps xmm0, xmm1
	ucomiss xmm0, xmm3
	jbe _Z5PmoveP7pmove_t_2450
	ucomiss xmm3, [_float_1_00000000]
	jb _Z5PmoveP7pmove_t_2460
_Z5PmoveP7pmove_t_2610:
	subss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm0, [eax]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x20]
	addss xmm1, [edx]
	movss [edx], xmm1
	jmp _Z5PmoveP7pmove_t_2450
_Z5PmoveP7pmove_t_2180:
	mov edx, [edx+0xc]
	jmp _Z5PmoveP7pmove_t_2410
_Z5PmoveP7pmove_t_1540:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_2470
_Z5PmoveP7pmove_t_1430:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_2480
_Z5PmoveP7pmove_t_1490:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_2490
_Z5PmoveP7pmove_t_1460:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov edx, [esi+0xc]
	jmp _Z5PmoveP7pmove_t_2500
_Z5PmoveP7pmove_t_1220:
	mov eax, player_backSpeedScale
	mov eax, [eax]
	movss xmm3, dword [ebp-0x114]
	mulss xmm3, [eax+0xc]
	movss xmm0, dword [_data16_7fffffff]
	andps xmm3, xmm0
	jmp _Z5PmoveP7pmove_t_2510
_Z5PmoveP7pmove_t_1740:
	movss xmm7, dword [ebp-0x16c]
	divss xmm7, xmm1
	movaps xmm1, xmm7
	jmp _Z5PmoveP7pmove_t_2520
_Z5PmoveP7pmove_t_1730:
	movss xmm0, dword [_float__1_00000000]
	maxss xmm0, xmm3
	jmp _Z5PmoveP7pmove_t_2530
_Z5PmoveP7pmove_t_1840:
	neg edx
	jmp _Z5PmoveP7pmove_t_2540
_Z5PmoveP7pmove_t_2170:
	mov eax, edi
	movss [ebp-0x188], xmm1
	call _Z20PM_CmdScaleForStancePK7pmove_t
	movss xmm1, dword [ebp-0x188]
	mulss xmm1, xmm0
	jmp _Z5PmoveP7pmove_t_2550
_Z5PmoveP7pmove_t_2210:
	mov edx, [ebp-0x11c]
	mov eax, [edx+0x62c]
	mov [esp], eax
	movss [ebp-0x188], xmm1
	call _Z21BG_GetShellshockParmsi
	cmp byte [eax+0x264], 0x0
	movss xmm1, dword [ebp-0x188]
	jz _Z5PmoveP7pmove_t_2560
	mulss xmm1, [_float_0_40000001]
	jmp _Z5PmoveP7pmove_t_2560
_Z5PmoveP7pmove_t_2160:
	mulss xmm1, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_2550
_Z5PmoveP7pmove_t_2310:
	mulss xmm1, [_float_3_00000000]
	jmp _Z5PmoveP7pmove_t_2330
_Z5PmoveP7pmove_t_2320:
	mulss xmm1, [_float_6_00000000]
	jmp _Z5PmoveP7pmove_t_2330
_Z5PmoveP7pmove_t_1790:
	cvtsi2ss xmm0, dword [eax+0x58]
	mulss xmm0, [ebp-0xe4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	orps xmm0, xmm2
	movss [eax+0x30], xmm0
	jmp _Z5PmoveP7pmove_t_1780
_Z5PmoveP7pmove_t_1590:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm3
	jmp _Z5PmoveP7pmove_t_2570
_Z5PmoveP7pmove_t_1700:
	test byte [ebp-0x4c], 0x8
	jz _Z5PmoveP7pmove_t_2580
	mov eax, [ebp-0xdc]
	test eax, eax
	jz _Z5PmoveP7pmove_t_2590
	cmp byte [edi+0x1a], 0x0
	jle _Z5PmoveP7pmove_t_2580
_Z5PmoveP7pmove_t_2590:
	mov eax, [ebx+0xc]
	test al, 0x8
	jz _Z5PmoveP7pmove_t_2600
	or eax, 0x8
	mov [ebx+0xc], eax
	jmp _Z5PmoveP7pmove_t_1150
_Z5PmoveP7pmove_t_2360:
	movss xmm1, dword [_float_19_00000000]
	jmp _Z5PmoveP7pmove_t_2380
_Z5PmoveP7pmove_t_1800:
	movss [eax+0x30], xmm2
	jmp _Z5PmoveP7pmove_t_1780
_Z5PmoveP7pmove_t_2370:
	movss xmm1, dword [_float_12_00000000]
	jmp _Z5PmoveP7pmove_t_2380
_Z5PmoveP7pmove_t_2600:
	lea edx, [ebx+0x74]
	mov eax, [ebp-0x58]
	mov [ebx+0x74], eax
	movss xmm1, dword [ebp-0x54]
	movss [edx+0x4], xmm1
	movss xmm2, dword [ebp-0x50]
	movss [edx+0x8], xmm2
	movss xmm3, dword [_data16_80000000]
	xorps xmm1, xmm3
	xorps xmm2, xmm3
	movss xmm0, dword [ebx+0x74]
	xorps xmm0, xmm3
	mulss xmm0, xmm7
	addss xmm0, [ebx+0x1c]
	movss [ebp-0x30], xmm0
	mulss xmm1, xmm7
	addss xmm1, [ebx+0x20]
	movss [ebp-0x2c], xmm1
	mulss xmm7, xmm2
	addss xmm7, [ebx+0x24]
	movss [ebp-0x28], xmm7
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	lea edx, [ebp-0x88]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x24]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x138]
	mov [esp+0x8], eax
	lea edx, [ebp-0x5c]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	jbe _Z5PmoveP7pmove_t_2580
	test byte [ebp-0x4c], 0x8
	jz _Z5PmoveP7pmove_t_2580
	or dword [ebx+0xc], 0x8
	jmp _Z5PmoveP7pmove_t_1150
_Z5PmoveP7pmove_t_2460:
	jp _Z5PmoveP7pmove_t_2610
	ucomiss xmm2, xmm4
	jb _Z5PmoveP7pmove_t_2620
	movss xmm2, dword [_float_1_00000000]
	jmp _Z5PmoveP7pmove_t_2610
_Z5PmoveP7pmove_t_2620:
	movss xmm2, dword [_float__1_00000000]
	jmp _Z5PmoveP7pmove_t_2610
	add [eax], al
	
	
_Z5PmoveP7pmove_t_jumptab_0:
	dd _Z5PmoveP7pmove_t_200
	dd _Z5PmoveP7pmove_t_2630
	dd _Z5PmoveP7pmove_t_2640
	dd _Z5PmoveP7pmove_t_2650
	dd _Z5PmoveP7pmove_t_2660
	dd _Z5PmoveP7pmove_t_2670
	dd _Z5PmoveP7pmove_t_2680
	dd _Z5PmoveP7pmove_t_200
	dd _Z5PmoveP7pmove_t_2630


;PM_trace(pmove_t*, trace_t*, float const*, float const*, float const*, float const*, int, int)
_Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov eax, [ebp+0x10]
	mov [ebp+0xc], eax
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov ecx, [ebp+0x1c]
	mov edx, [ebp+0x20]
	mov eax, [ebp+0x8]
	movzx esi, byte [eax+0x10c]
	mov eax, [ebp+0x24]
	mov [ebp+0x20], eax
	mov [ebp+0x1c], edx
	mov [ebp+0x18], ecx
	mov [ebp+0x14], ebx
	mov [ebp+0x10], edi
	mov eax, [ebp-0x10]
	mov [ebp+0x8], eax
	mov ecx, [esi*8+pmoveHandlers]
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
	nop


;Initialized global or static variables of bg_pmove:
SECTION .data
viewLerp_CrouchStand: dd 0x0, 0x42200000, 0x0, 0x5, 0x42220000, 0x0, 0xa, 0x42260000, 0x0, 0x14, 0x42300000, 0x0, 0x46, 0x42600000, 0x0, 0x60, 0x426a0000, 0x0, 0x63, 0x426e0000, 0x0, 0x64, 0x42700000, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
viewLerp_ProneCrouch: dd 0x0, 0x41300000, 0x0, 0x5, 0x41200000, 0x0, 0x1e, 0x41a80000, 0x0, 0x32, 0x41c80000, 0x0, 0x43, 0x41f80000, 0x0, 0x53, 0x42080000, 0x0, 0x64, 0x42200000, 0x0, 0xffffffff, 0x0, 0x0
viewLerp_StandCrouch: dd 0x0, 0x42700000, 0x0, 0x1, 0x426e0000, 0x0, 0x4, 0x426a0000, 0x0, 0x1e, 0x42600000, 0x0, 0x50, 0x42300000, 0x0, 0x5a, 0x42260000, 0x0, 0x5f, 0x42220000, 0x0, 0x64, 0x42200000, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
viewLerp_CrouchProne: dd 0x0, 0x42200000, 0x0, 0xb, 0x42180000, 0x0, 0x16, 0x42040000, 0x0, 0x22, 0x41c80000, 0x0, 0x2d, 0x41800000, 0x0, 0x32, 0x41700000, 0x0, 0x37, 0x41800000, 0x0, 0x46, 0x41900000, 0x0, 0x5a, 0x41880000, 0x0, 0x64, 0x41300000, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
pmoveHandlers: dd _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii, 0x0, _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii, _Z13G_PlayerEventii, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of bg_pmove:
SECTION .rdata
CorrectSolidDeltas: dd 0x0, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0xbf800000, 0xbf800000, 0x0, 0xbf800000, 0x0, 0xbf800000, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ19PM_GetNotMovingAnimiiE14notMovingAnims: dd 0x1, 0xe, 0xf, 0x3, 0x3, 0x3, 0x2, 0x10, 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable: dd 0x3eab851f, 0x3e9c28f6, 0x3e800000, 0x3e75c28f, 0x3eae147b, 0x3ea147ae, 0x3eb851ec, 0x3ea66666, 0x3e800000, 0x3e75c28f, 0x3eae147b, 0x3ea147ae, 0x0, 0x0, 0x0, 0x0
_ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable: dd 0xa, 0x24, 0x4, 0x26, 0x8, 0x8, 0x8, 0x8, 0xc, 0x28, 0x6, 0x28, 0xb, 0x25, 0x5, 0x27, 0x9, 0x9, 0x9, 0x9, 0xd, 0x29, 0x7, 0x29, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0
playerMaxs: dd 0x41700000, 0x41700000, 0x428c0000
playerMins: dd 0xc1700000, 0xc1700000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of bg_pmove:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_bg_falldamagemax:		db "bg_fallDamageMaxHeight must be greater than bg_fallDamageMinHeight",0ah,0
_cstring_turn_anim_end_ti:		db "turn anim end time is %i, time is %i",0ah,0
_cstring_angle_is_f_oldve:		db "angle is %f (oldVel is (%f,%f), vel is (%f, %f))",0ah,0
_cstring_clamping_acceler:		db "clamping acceleration from %f to %f",0ah,0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_240_00000000:		dd 0x43700000	; 240
_float_1_00000000:		dd 0x3f800000	; 1
_float_45_00000000:		dd 0x42340000	; 45
_float_50_00000000:		dd 0x42480000	; 50
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float_5_00000000:		dd 0x40a00000	; 5
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_64_00000000:		dd 0x42800000	; 64
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0
_float_10_00000000:		dd 0x41200000	; 10
_float_0_01562500:		dd 0x3c800000	; 0.015625
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__4_00000000:		dd 0xc0800000	; -4
_float_100_00000000:		dd 0x42c80000	; 100
_float_12_00000000:		dd 0x41400000	; 12
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_4_00000000:		dd 0x40800000	; 4
_float_8_00000000:		dd 0x41000000	; 8
_float_26_00000000:		dd 0x41d00000	; 26
_float_0_67000002:		dd 0x3f2b851f	; 0.67
_float_500_00000000:		dd 0x43fa0000	; 500
_float__0_30000001:		dd 0xbe99999a	; -0.3
_float_0_15000001:		dd 0x3e19999a	; 0.15
_float_0_64999998:		dd 0x3f266666	; 0.65
_float_400_00000000:		dd 0x43c80000	; 400
_float_180_00000000:		dd 0x43340000	; 180
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_0_40000001:		dd 0x3ecccccd	; 0.4
_float_95_25000000:		dd 0x42be8000	; 95.25
_float_0_44999999:		dd 0x3ee66666	; 0.45
_float_120_00000000:		dd 0x42f00000	; 120
_float_38_10000229:		dd 0x42186667	; 38.1
_float_0_34999999:		dd 0x3eb33333	; 0.35
_float_200_00000000:		dd 0x43480000	; 200
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_40_00000000:		dd 0x42200000	; 40
_float__180_00000000:		dd 0xc3340000	; -180
_float__45_00000000:		dd 0xc2340000	; -45
_double_0_00010000:		dq 0x3f1a36e2eb1c432d	; 0.0001
_float_127_00000000:		dd 0x42fe0000	; 127
_float__0_00100000:		dd 0xba83126f	; -0.001
_float_3_00000000:		dd 0x40400000	; 3
_float_6_00000000:		dd 0x40c00000	; 6
_float__280_00000000:		dd 0xc38c0000	; -280
_float_350_00000000:		dd 0x43af0000	; 350
_float__350_00000000:		dd 0xc3af0000	; -350
_float_280_00000000:		dd 0x438c0000	; 280
_float__1_00000000:		dd 0xbf800000	; -1
_float__31_00000000:		dd 0xc1f80000	; -31
_float_70_00000000:		dd 0x428c0000	; 70
_float_0_00549316:		dd 0x3bb40000	; 0.00549316
_float__0_00549316:		dd 0xbbb40000	; -0.00549316
_float_55_00000000:		dd 0x425c0000	; 55
_float_0_98000002:		dd 0x3f7ae148	; 0.98
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_9_00000000:		dd 0x41100000	; 9
_float_30_00000000:		dd 0x41f00000	; 30
_float_16129_00000000:		dd 0x467c0400	; 16129
_float__127_00000000:		dd 0xc2fe0000	; -127
_float_20_00000000:		dd 0x41a00000	; 20
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_2_50000000:		dd 0x40200000	; 2.5
_float__50_00000000:		dd 0xc2480000	; -50
_float_16_00000000:		dd 0x41800000	; 16
_float_19_00000000:		dd 0x41980000	; 19

