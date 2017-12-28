;Imports of bg_pmove:
	extern AngleDelta
	extern AngleNormalize360
	extern BG_CheckProne
	extern player_meleeChargeFriction
	extern stopspeed
	extern friction
	extern Jump_ReduceFriction
	extern YawVectors2D
	extern BG_AnimScriptEvent
	extern Trace_GetEntityHitId
	extern Jump_ClearState
	extern bg_fallDamageMaxHeight
	extern bg_fallDamageMinHeight
	extern BG_AddPredictableEventToPlayerstate
	extern Com_Printf
	extern Vec3NormalizeTo
	extern vectoangles
	extern floorf
	extern vectoyaw
	extern BG_GetMaxSprintTime
	extern player_sprintRechargePause
	extern player_sprintForwardMinimum
	extern player_sprintMinTime
	extern BG_AnimScriptAnimation
	extern player_moveThreshhold
	extern Vec2Normalize
	extern player_strafeAnimCosAngle
	extern BG_SetConditionValue
	extern player_dmgtimer_stumbleTime
	extern player_strafeSpeedScale
	extern player_sprintCameraBob
	extern player_footstepsThreshhold
	extern player_dmgtimer_flinchTime
	extern bgs
	extern player_turnAnims
	extern player_sprintSpeedScale
	extern BG_GetWeaponDef
	extern player_backSpeedScale
	extern Com_DPrintf
	extern BG_PlayAnim
	extern Jump_ActivateSlowdown
	extern BG_WeaponBlocksProne
	extern PitchForYawOnNormal
	extern PM_ExitAimDownSight
	extern inertiaMax
	extern inertiaAngle
	extern inertiaDebug
	extern player_spectateSpeedScale
	extern PM_StepSlideMove
	extern AddLeanToPosition
	extern UnGetLeanFraction
	extern player_view_pitch_up
	extern player_view_pitch_down
	extern Mantle_CapView
	extern bg_prone_yawcap
	extern bg_ladder_yawcap
	extern BG_AnimUpdatePlayerStateConditions
	extern memset
	extern PM_AdjustAimSpreadScale
	extern AngleVectors
	extern Mantle_ClearHint
	extern PM_UpdateAimDownSightFlag
	extern PM_UpdateAimDownSightLerp
	extern Mantle_Check
	extern Mantle_Move
	extern PM_Weapon
	extern PM_ResetWeaponState
	extern BG_UsingSniperScope
	extern PM_WeaponAmmoAvailable
	extern PM_InteruptWeaponWithProneMove
	extern player_sprintStrafeSpeedScale
	extern Jump_Check
	extern player_dmgtimer_maxTime
	extern player_dmgtimer_minScale
	extern bg_foliagesnd_minspeed
	extern bg_foliagesnd_resetinterval
	extern Sys_SnapVector
	extern bg_foliagesnd_maxspeed
	extern bg_foliagesnd_slowinterval
	extern bg_foliagesnd_fastinterval
	extern ProjectPointOnPlane
	extern vec3_origin
	extern Jump_ApplySlowdown
	extern BG_GetShellshockParms
	extern CG_TraceCapsule
	extern G_TraceCapsule
	extern G_PlayerEvent

;Exports of bg_pmove:
	global viewLerp_CrouchStand
	global viewLerp_ProneCrouch
	global viewLerp_StandCrouch
	global viewLerp_CrouchProne
	global CorrectSolidDeltas
	global _ZZ19PM_GetNotMovingAnimiiE14notMovingAnims
	global _ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable
	global _ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable
	global BG_CheckProneTurned
	global PM_Friction
	global PM_MeleeChargeUpdate
	global PM_GroundTrace
	global PM_CmdScaleForStance
	global PM_SetMovementDir
	global PM_UpdateSprint
	global PM_Footsteps
	global PM_ViewHeightAdjust
	global PM_CheckDuck
	global PM_Accelerate
	global PM_AirMove
	global BG_GetSpeed
	global PM_AddEvent
	global PM_UpdateLean
	global PM_AddTouchEnt
	global PM_IsSprinting
	global PM_playerTrace
	global PM_ClipVelocity
	global PM_FootstepEvent
	global PM_GetSprintLeft
	global PM_ProjectVelocity
	global PM_MeleeChargeStart
	global PM_UpdatePronePitch
	global PM_UpdateViewAngles
	global PM_GroundSurfaceType
	global PM_GetEffectiveStance
	global PM_ShouldMakeFootsteps
	global PM_GetSprintLeftLastTime
	global PM_GetViewHeightLerpTime
	global PM_SetProneMovementOverride
	global Pmove
	global PM_trace
	global playerMaxs
	global playerMins
	global pmoveHandlers


SECTION .text


;BG_CheckProneTurned(playerState_s*, float, unsigned char)
BG_CheckProneTurned:
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
	call AngleDelta
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
	call AngleNormalize360
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
	call BG_CheckProne
	movzx eax, al
	sub esp, 0xffffff80
	pop ebx
	pop esi
	pop ebp
	ret


;PM_Friction(playerState_s*, pml_t*)
PM_Friction:
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
	jz PM_Friction_10
	pxor xmm2, xmm2
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	ucomiss xmm2, [_float_1_00000000]
	jb PM_Friction_20
PM_Friction_50:
	mov edx, [ebx+0xc]
	test edx, 0x20000
	jz PM_Friction_30
	mov eax, player_meleeChargeFriction
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edi+0x24]
	pxor xmm3, xmm3
PM_Friction_80:
	cmp dword [ebx+0x4], 0x4
	jz PM_Friction_40
PM_Friction_90:
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
PM_Friction_10:
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	ucomiss xmm2, [_float_1_00000000]
	jae PM_Friction_50
PM_Friction_20:
	jp PM_Friction_50
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
PM_Friction_30:
	test eax, eax
	jz PM_Friction_60
	test byte [edi+0x48], 0x2
	jnz PM_Friction_60
	test dh, 0x1
	jnz PM_Friction_60
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	maxss xmm0, xmm2
	test dl, dl
	jns PM_Friction_70
	mulss xmm0, [_float_0_30000001]
PM_Friction_100:
	mov eax, friction
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm1, [edi+0x24]
	pxor xmm3, xmm3
	addss xmm1, xmm3
	jmp PM_Friction_80
PM_Friction_60:
	pxor xmm3, xmm3
	movaps xmm1, xmm3
	cmp dword [ebx+0x4], 0x4
	jnz PM_Friction_90
PM_Friction_40:
	movaps xmm0, xmm2
	mulss xmm0, [_float_5_00000000]
	mulss xmm0, [edi+0x24]
	addss xmm1, xmm0
	jmp PM_Friction_90
PM_Friction_70:
	and dh, 0x40
	jz PM_Friction_100
	mov [esp], ebx
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm2
	call Jump_ReduceFriction
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [ebp-0x24]
	movss xmm2, dword [ebp-0x48]
	jmp PM_Friction_100
	nop


;PM_MeleeChargeUpdate(pmove_t*, pml_t*)
PM_MeleeChargeUpdate:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, edx
	mov ebx, [eax]
	mov eax, [ebx+0xc]
	test eax, 0x20000
	jz PM_MeleeChargeUpdate_10
	mov edx, [ebx+0x4]
	test edx, edx
	jz PM_MeleeChargeUpdate_20
PM_MeleeChargeUpdate_10:
	and eax, 0xfffdffff
	mov [ebx+0xc], eax
	mov dword [ebx+0x5f0], 0x0
	mov dword [ebx+0x5f4], 0x0
	mov dword [ebx+0x5f8], 0x0
PM_MeleeChargeUpdate_40:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
PM_MeleeChargeUpdate_20:
	test dword [ebx+0xb0], 0x300
	jnz PM_MeleeChargeUpdate_10
	test al, 0xc
	jnz PM_MeleeChargeUpdate_10
	mov eax, [ebx+0x5f8]
	test eax, eax
	jz PM_MeleeChargeUpdate_30
	mov eax, [ebx+0x5f8]
PM_MeleeChargeUpdate_50:
	sub eax, [esi+0x28]
	mov [ebx+0x5f8], eax
	test eax, eax
	jg PM_MeleeChargeUpdate_40
	and dword [ebx+0xc], 0xfffdffff
	mov dword [ebx+0x5f0], 0x0
	mov dword [ebx+0x5f4], 0x0
	mov dword [ebx+0x5f8], 0x0
	jmp PM_MeleeChargeUpdate_40
PM_MeleeChargeUpdate_30:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov eax, [ebx+0x5f0]
	mov [esp], eax
	call YawVectors2D
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
	jmp PM_MeleeChargeUpdate_50


;PM_GroundTrace(pmove_t*, pml_t*)
PM_GroundTrace:
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
	jz PM_GroundTrace_10
	mov eax, [edx+0x24]
	mov [ebp-0x1c], eax
	movss xmm0, dword [edx+0x24]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x28], xmm0
PM_GroundTrace_110:
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
	call PM_playerTrace
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
	jz PM_GroundTrace_20
	mov eax, [ebp-0xa8]
	mov ebx, [eax]
	xor esi, esi
	lea edx, [ebx+0x1c]
	mov [ebp-0xb0], edx
	lea edi, [ebp-0x3c]
	jmp PM_GroundTrace_30
PM_GroundTrace_50:
	add esi, 0x1
	cmp esi, 0x1a
	jz PM_GroundTrace_40
PM_GroundTrace_30:
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
	call PM_playerTrace
	cmp byte [ebp-0x3f], 0x0
	jnz PM_GroundTrace_50
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
	call PM_playerTrace
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
PM_GroundTrace_20:
	cmp byte [ebp-0x3f], 0x0
	jnz PM_GroundTrace_60
PM_GroundTrace_180:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jnz PM_GroundTrace_70
	jp PM_GroundTrace_70
	mov eax, [ebp-0xa8]
	mov ebx, [eax]
	cmp dword [ebx+0x70], 0x3ff
	jz PM_GroundTrace_80
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
	jnz PM_GroundTrace_90
	jp PM_GroundTrace_90
	mov eax, [ebp-0xa8]
	cmp byte [eax+0x1a], 0x0
	js PM_GroundTrace_100
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call BG_AnimScriptEvent
PM_GroundTrace_360:
	mov edx, [ebp-0xac]
	mov dword [edx+0x34], 0x0
	mov dword [ebx+0x70], 0x3ff
	mov esi, [ebp-0xac]
	mov dword [esi+0x30], 0x0
	mov dword [esi+0x2c], 0x0
PM_GroundTrace_150:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_GroundTrace_10:
	movss xmm1, dword [_float_0_25000000]
	mov esi, [ebp-0x9c]
	movss xmm0, dword [esi+0x24]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [esi+0x24]
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	jmp PM_GroundTrace_110
PM_GroundTrace_70:
	mov eax, [ebp-0x9c]
	test byte [eax+0xc], 0x8
	jz PM_GroundTrace_120
PM_GroundTrace_190:
	cmp byte [ebp-0x3e], 0x0
	jz PM_GroundTrace_130
	mov esi, [ebp-0xac]
	mov dword [esi+0x30], 0x1
	mov dword [esi+0x34], 0x1
	mov dword [esi+0x2c], 0x1
	mov eax, [ebp-0x9c]
	cmp dword [eax+0x70], 0x3ff
	jz PM_GroundTrace_140
PM_GroundTrace_220:
	lea esi, [ebp-0x68]
	mov [esp], esi
	call Trace_GetEntityHitId
	movzx esi, ax
	mov edx, [ebp-0x9c]
	mov [edx+0x70], esi
	cmp ax, 0x3fe
	jz PM_GroundTrace_150
	mov eax, [ebp-0xa8]
	mov ebx, [eax+0x48]
	cmp ebx, 0x20
	jz PM_GroundTrace_150
	test ebx, ebx
	jg PM_GroundTrace_160
PM_GroundTrace_340:
	mov edx, [ebp-0xa8]
	mov [edx+ebx*4+0x4c], esi
	lea eax, [ebx+0x1]
	mov [edx+0x48], eax
	jmp PM_GroundTrace_150
PM_GroundTrace_60:
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
	call PM_playerTrace
	cmp byte [ebp-0x3f], 0x0
	jnz PM_GroundTrace_170
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
	jmp PM_GroundTrace_180
PM_GroundTrace_40:
	mov dword [ebx+0x70], 0x3ff
	mov eax, [ebp-0xac]
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x34], 0x0
	mov dword [eax+0x2c], 0x0
	mov [esp], ebx
	call Jump_ClearState
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_GroundTrace_120:
	movss xmm0, dword [eax+0x30]
	ucomiss xmm0, [_float_0_00000000]
	jbe PM_GroundTrace_190
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
	jbe PM_GroundTrace_190
	mov esi, [ebp-0xa8]
	cmp byte [esi+0x1a], 0x0
	js PM_GroundTrace_200
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], edx
	call BG_AnimScriptEvent
PM_GroundTrace_430:
	mov edx, [ebp-0xac]
	mov dword [edx+0x34], 0x0
	mov esi, [ebp-0x9c]
	mov dword [esi+0x70], 0x3ff
	mov dword [edx+0x30], 0x0
	mov dword [edx+0x2c], 0x0
	jmp PM_GroundTrace_150
PM_GroundTrace_90:
	movss xmm0, dword [_float_0_01562500]
	xor eax, eax
	ucomiss xmm0, xmm1
	seta al
	mov esi, [ebp-0xac]
	mov [esi+0x34], eax
PM_GroundTrace_330:
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
PM_GroundTrace_170:
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
PM_GroundTrace_140:
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
	jp PM_GroundTrace_210
	jb PM_GroundTrace_220
PM_GroundTrace_210:
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
	jae PM_GroundTrace_230
	ucomiss xmm1, xmm2
	jae PM_GroundTrace_240
	mov edx, [ebp-0xac]
	test byte [edx+0x48], 0x1
	jnz PM_GroundTrace_240
	mov esi, [ebp-0x9c]
	cmp dword [esi+0x4], 0x6
	jg PM_GroundTrace_240
	ucomiss xmm2, xmm3
	jae PM_GroundTrace_250
	movaps xmm0, xmm2
	subss xmm0, xmm1
	subss xmm3, xmm1
	divss xmm0, xmm3
	mulss xmm0, [_float_100_00000000]
	cvttss2si ebx, xmm0
	cmp ebx, 0x63
	jg PM_GroundTrace_250
	test ebx, ebx
	jg PM_GroundTrace_260
PM_GroundTrace_240:
	xor ebx, ebx
PM_GroundTrace_260:
	ucomiss xmm2, [_float_12_00000000]
	ja PM_GroundTrace_270
	jp PM_GroundTrace_270
	xor esi, esi
PM_GroundTrace_400:
	mov eax, [ebp-0xac]
	mov edx, [eax+0x48]
	mov eax, edx
	shr eax, 0xd
	and al, 0x1
	jz PM_GroundTrace_280
	xor ecx, ecx
PM_GroundTrace_390:
	test ebx, ebx
	jz PM_GroundTrace_290
	cmp ebx, 0x63
	jg PM_GroundTrace_300
	and dl, 0x2
	jnz PM_GroundTrace_300
	lea edx, [ebx+ebx*4]
	lea eax, [edx*8]
	sub eax, edx
	add eax, 0x1f4
	cmp eax, 0x7d0
	jle PM_GroundTrace_310
	movss xmm1, dword [_float_0_20000000]
	mov eax, 0x7d0
PM_GroundTrace_490:
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
PM_GroundTrace_420:
	mov edx, [ebp-0xac]
	mov eax, [edx+0x48]
	test ah, 0x20
	jnz PM_GroundTrace_320
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	test al, al
	jz PM_GroundTrace_320
	lea eax, [edx+0x6a]
PM_GroundTrace_410:
	mov esi, [ebp-0x9c]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
	jmp PM_GroundTrace_220
PM_GroundTrace_80:
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
	jmp PM_GroundTrace_330
PM_GroundTrace_130:
	mov eax, [ebp-0x9c]
	mov dword [eax+0x70], 0x3ff
	mov edx, [ebp-0xac]
	mov dword [edx+0x30], 0x1
	mov dword [edx+0x34], 0x1
	mov dword [edx+0x2c], 0x0
	mov [esp], eax
	call Jump_ClearState
	jmp PM_GroundTrace_150
PM_GroundTrace_160:
	mov eax, [ebp-0xa8]
	cmp esi, [eax+0x4c]
	jz PM_GroundTrace_150
	mov ecx, eax
	xor edx, edx
PM_GroundTrace_350:
	add edx, 0x1
	cmp ebx, edx
	jz PM_GroundTrace_340
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp esi, eax
	jnz PM_GroundTrace_350
	jmp PM_GroundTrace_150
PM_GroundTrace_100:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call BG_AnimScriptEvent
	jmp PM_GroundTrace_360
PM_GroundTrace_290:
	ucomiss xmm2, [_float_4_00000000]
	jbe PM_GroundTrace_220
	ucomiss xmm2, [_float_8_00000000]
	jae PM_GroundTrace_370
	jp PM_GroundTrace_370
	test al, al
	jnz PM_GroundTrace_380
	and edx, 0x1f00000
	jz PM_GroundTrace_380
	mov eax, 0x4a
PM_GroundTrace_460:
	mov edx, [ebp-0x9c]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
	jmp PM_GroundTrace_220
PM_GroundTrace_280:
	mov ecx, edx
	and ecx, 0x1f00000
	shr ecx, 0x14
	jmp PM_GroundTrace_390
PM_GroundTrace_270:
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
	call BG_AnimScriptEvent
	movss xmm2, dword [ebp-0xc8]
	jmp PM_GroundTrace_400
PM_GroundTrace_320:
	xor eax, eax
	jmp PM_GroundTrace_410
PM_GroundTrace_300:
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
	jmp PM_GroundTrace_420
PM_GroundTrace_230:
	mov dword [esp+0x4], _cstring_bg_falldamagemax
	mov dword [esp], 0x11
	movss [ebp-0xc8], xmm2
	call Com_Printf
	xor ebx, ebx
	movss xmm2, dword [ebp-0xc8]
	jmp PM_GroundTrace_260
PM_GroundTrace_200:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov eax, [ebp-0x9c]
	mov [esp], eax
	call BG_AnimScriptEvent
	jmp PM_GroundTrace_430
PM_GroundTrace_370:
	ucomiss xmm2, [_float_12_00000000]
	jae PM_GroundTrace_440
	jp PM_GroundTrace_440
	test al, al
	jnz PM_GroundTrace_450
	and edx, 0x1f00000
	jz PM_GroundTrace_450
	mov eax, 0x49
PM_GroundTrace_500:
	mov esi, [ebp-0x9c]
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
	jmp PM_GroundTrace_220
PM_GroundTrace_380:
	xor eax, eax
	jmp PM_GroundTrace_460
PM_GroundTrace_440:
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
	jnz PM_GroundTrace_470
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	test al, al
	jz PM_GroundTrace_470
	lea eax, [edx+0x4d]
PM_GroundTrace_510:
	mov edx, [ebp-0x9c]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
	jmp PM_GroundTrace_220
PM_GroundTrace_250:
	mov ebx, 0x64
	jmp PM_GroundTrace_260
PM_GroundTrace_310:
	cmp eax, 0x1f4
	jg PM_GroundTrace_480
	movss xmm1, dword [_float_0_50000000]
	jmp PM_GroundTrace_490
PM_GroundTrace_450:
	xor eax, eax
	jmp PM_GroundTrace_500
PM_GroundTrace_470:
	xor eax, eax
	jmp PM_GroundTrace_510
PM_GroundTrace_480:
	cmp eax, 0x5db
	jle PM_GroundTrace_520
	movss xmm1, dword [_float_0_20000000]
	jmp PM_GroundTrace_490
PM_GroundTrace_520:
	cvtsi2ss xmm1, eax
	subss xmm1, [_float_500_00000000]
	divss xmm1, dword [_float_1000_00000000]
	mulss xmm1, [_float__0_30000001]
	addss xmm1, [_float_0_50000000]
	jmp PM_GroundTrace_490


;PM_CmdScaleForStance(pmove_t const*)
PM_CmdScaleForStance:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [eax]
	mov ecx, [ebx+0x11c]
	test ecx, ecx
	jz PM_CmdScaleForStance_10
	mov edx, [ebx+0x120]
	cmp edx, 0xb
	jz PM_CmdScaleForStance_20
	cmp edx, 0x28
	jz PM_CmdScaleForStance_30
PM_CmdScaleForStance_10:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz PM_CmdScaleForStance_40
	cmp eax, 0x28
	jz PM_CmdScaleForStance_40
	cmp eax, 0xb
	jz PM_CmdScaleForStance_50
	movss xmm0, dword [_float_1_00000000]
	pop ebx
	pop ebp
	ret
PM_CmdScaleForStance_50:
	movss xmm0, dword [_float_0_15000001]
	pop ebx
	pop ebp
	ret
PM_CmdScaleForStance_40:
	movss xmm0, dword [_float_0_64999998]
	pop ebx
	pop ebp
	ret
PM_CmdScaleForStance_20:
	mov eax, [eax+0x4]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_400_00000000]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja PM_CmdScaleForStance_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jbe PM_CmdScaleForStance_60
	movss xmm3, dword [_float_0_15000001]
	movaps xmm0, xmm2
PM_CmdScaleForStance_110:
	mulss xmm0, [_float_0_64999998]
	addss xmm0, xmm3
	pop ebx
	pop ebp
	ret
PM_CmdScaleForStance_30:
	mov edx, [ebx+0x124]
	test edx, edx
	jnz PM_CmdScaleForStance_10
	mov eax, [eax+0x4]
	sub eax, ecx
	cvtsi2ss xmm1, eax
	divss xmm1, dword [_float_400_00000000]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja PM_CmdScaleForStance_10
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jbe PM_CmdScaleForStance_70
	movss xmm3, dword [_float_0_64999998]
	movaps xmm0, xmm2
PM_CmdScaleForStance_90:
	mulss xmm0, [_float_0_15000001]
	addss xmm0, xmm3
	pop ebx
	pop ebp
	ret
PM_CmdScaleForStance_70:
	ucomiss xmm1, xmm2
	jp PM_CmdScaleForStance_80
	jz PM_CmdScaleForStance_10
PM_CmdScaleForStance_80:
	movaps xmm3, xmm1
	mulss xmm3, [_float_0_64999998]
	subss xmm0, xmm1
	jmp PM_CmdScaleForStance_90
PM_CmdScaleForStance_60:
	ucomiss xmm1, xmm2
	jp PM_CmdScaleForStance_100
	jz PM_CmdScaleForStance_10
PM_CmdScaleForStance_100:
	movaps xmm3, xmm1
	mulss xmm3, [_float_0_15000001]
	subss xmm0, xmm1
	jmp PM_CmdScaleForStance_110
	nop


;PM_SetMovementDir(pmove_t*, pml_t*)
PM_SetMovementDir:
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
	jz PM_SetMovementDir_10
	test dword [esi+0xb0], 0x300
	jz PM_SetMovementDir_20
PM_SetMovementDir_10:
	test al, 0x8
	jnz PM_SetMovementDir_30
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
	jnz PM_SetMovementDir_40
PM_SetMovementDir_50:
	mov dword [esi+0xac], 0x0
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_SetMovementDir_40:
	cmp dword [esi+0x70], 0x3ff
	jz PM_SetMovementDir_50
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm1, xmm2
	ucomiss xmm1, [_float_0_00000000]
	jp PM_SetMovementDir_60
	jz PM_SetMovementDir_50
PM_SetMovementDir_60:
	movss xmm0, dword [_float_5_00000000]
	mulss xmm0, [ecx+0x24]
	ucomiss xmm1, xmm0
	jbe PM_SetMovementDir_50
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	mov [esp+0x4], ebx
	mov [esp], ebx
	call vectoangles
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	cmp byte [edi+0x1a], 0x0
	jns PM_SetMovementDir_70
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
	jmp PM_SetMovementDir_70
PM_SetMovementDir_30:
	lea eax, [esi+0x74]
	mov [esp], eax
	call vectoyaw
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call AngleDelta
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
PM_SetMovementDir_70:
	mov edx, eax
	test eax, eax
	js PM_SetMovementDir_80
PM_SetMovementDir_110:
	cmp edx, 0x5a
	jg PM_SetMovementDir_90
	mov edx, eax
PM_SetMovementDir_100:
	movsx eax, dl
	mov [esi+0xac], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_SetMovementDir_90:
	mov edx, 0x5a
	test eax, eax
	mov eax, 0xffffffa6
	cmovle edx, eax
	jmp PM_SetMovementDir_100
PM_SetMovementDir_20:
	mov eax, [esi+0x10c]
	mov [esp+0x4], eax
	mov eax, [esi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	jmp PM_SetMovementDir_70
PM_SetMovementDir_80:
	neg edx
	jmp PM_SetMovementDir_110


;PM_UpdateSprint(pmove_t*, pml_t const*)
PM_UpdateSprint:
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
	jz PM_UpdateSprint_10
	test byte [esi+0x8], 0x2
	jz PM_UpdateSprint_20
PM_UpdateSprint_10:
	cmp dword [ebx+0x4], 0x1
	jbe PM_UpdateSprint_30
PM_UpdateSprint_50:
	cmp word [ebx+0xc], 0x0
	jns PM_UpdateSprint_40
PM_UpdateSprint_140:
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz PM_UpdateSprint_40
PM_UpdateSprint_150:
	mov dword [edi], 0x1
PM_UpdateSprint_40:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_UpdateSprint_20:
	mov dword [ebx+0x5b8], 0x0
	cmp dword [ebx+0x4], 0x1
	ja PM_UpdateSprint_50
PM_UpdateSprint_30:
	mov [esp], ebx
	call BG_GetMaxSprintTime
	test eax, eax
	jle PM_UpdateSprint_50
	mov edx, [ebx+0xc]
	test dx, dx
	js PM_UpdateSprint_60
	mov eax, [edi+0x4]
	test eax, eax
	jz PM_UpdateSprint_70
	mov eax, [esi+0x4]
	sub eax, [edi+0xc]
	cvtsi2ss xmm1, eax
	mov eax, player_sprintRechargePause
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	ucomiss xmm0, xmm1
	ja PM_UpdateSprint_40
PM_UpdateSprint_70:
	mov ecx, [esi+0x8]
	mov [ebp-0x6c], ecx
	and cl, 0x2
	jz PM_UpdateSprint_40
	test edx, 0x40000
	jnz PM_UpdateSprint_40
	mov eax, [edi]
	test eax, eax
	jnz PM_UpdateSprint_40
	movsx eax, byte [esi+0x1a]
	mov [ebp-0x54], eax
	test dl, 0x8
	jnz PM_UpdateSprint_40
	mov ecx, eax
	mov eax, player_sprintForwardMinimum
	mov eax, [eax]
	mov [ebp-0x5c], eax
	cmp ecx, [eax+0xc]
	jle PM_UpdateSprint_40
	test word [ebp-0x6c], 0xc435
	jnz PM_UpdateSprint_40
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz PM_UpdateSprint_40
	jp PM_UpdateSprint_40
	test edx, 0x1001c
	jnz PM_UpdateSprint_40
	test dh, 0x40
	jz PM_UpdateSprint_80
	mov ecx, [ebx+0x18]
	test ecx, ecx
	jz PM_UpdateSprint_90
PM_UpdateSprint_80:
	mov eax, [ebx+0xec]
	sub eax, 0xc
	cmp eax, 0x8
	jbe PM_UpdateSprint_40
PM_UpdateSprint_90:
	and dl, 0x3
	jnz PM_UpdateSprint_100
PM_UpdateSprint_180:
	mov eax, [esi+0x4]
	mov [ebp-0x50], eax
	mov [esp], ebx
	call BG_GetMaxSprintTime
	mov [ebp-0x4c], eax
	mov eax, [edi+0x8]
	test eax, eax
	jnz PM_UpdateSprint_110
	mov edx, [ebp-0x4c]
	movss xmm1, dword [_float_1000_00000000]
PM_UpdateSprint_170:
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
	jbe PM_UpdateSprint_40
	mov [edi+0x10], edx
	mov eax, [esi+0x4]
	mov [edi+0x8], eax
	or dword [ebx+0xc], 0x8000
	jmp PM_UpdateSprint_40
PM_UpdateSprint_60:
	mov eax, [esi+0x4]
	sub eax, [edi+0x8]
	cmp eax, [edi+0x10]
	jl PM_UpdateSprint_120
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz PM_UpdateSprint_130
	mov dword [edi], 0x1
PM_UpdateSprint_130:
	mov dword [edi+0x4], 0x1
	jmp PM_UpdateSprint_40
PM_UpdateSprint_120:
	mov eax, [esi+0x8]
	mov [ebp-0x58], eax
	movsx ecx, byte [esi+0x1a]
	and edx, 0x10018
	jnz PM_UpdateSprint_140
	mov eax, player_sprintForwardMinimum
	mov eax, [eax]
	cmp ecx, [eax+0xc]
	jle PM_UpdateSprint_140
	test word [ebp-0x58], 0xc735
	jnz PM_UpdateSprint_140
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz PM_UpdateSprint_140
	jp PM_UpdateSprint_140
	mov edx, [ebx+0xec]
	lea eax, [edx-0xc]
	cmp eax, 0x8
	jbe PM_UpdateSprint_140
	lea eax, [edx-0x19]
	cmp eax, 0x1
	jbe PM_UpdateSprint_140
	test byte [esi+0x28], 0x2
	jnz PM_UpdateSprint_40
	test byte [ebp-0x58], 0x2
	jz PM_UpdateSprint_40
	mov dword [edi+0x4], 0x0
	mov eax, [esi+0x4]
	mov [edi+0xc], eax
	and dword [ebx+0xc], 0xffff7fff
	test byte [esi+0x8], 0x2
	jz PM_UpdateSprint_150
	mov dword [edi], 0x1
	jmp PM_UpdateSprint_150
PM_UpdateSprint_110:
	mov ecx, [edi+0xc]
	cmp eax, ecx
	jle PM_UpdateSprint_160
	sub [ebp-0x50], eax
	mov edx, [edi+0x10]
	sub edx, [ebp-0x50]
	movss xmm1, dword [_float_1000_00000000]
	jmp PM_UpdateSprint_170
PM_UpdateSprint_100:
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
	jnz PM_UpdateSprint_40
	jmp PM_UpdateSprint_180
PM_UpdateSprint_160:
	mov edx, [edi+0x4]
	test edx, edx
	jz PM_UpdateSprint_190
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
	jmp PM_UpdateSprint_170
PM_UpdateSprint_190:
	mov edx, ecx
	sub edx, eax
	mov eax, [edi+0x10]
	sub eax, edx
	mov edx, [ebp-0x50]
	add edx, eax
	sub edx, ecx
	movss xmm1, dword [_float_1000_00000000]
	jmp PM_UpdateSprint_170


;PM_Footsteps(pmove_t*, pml_t*)
PM_Footsteps:
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
	jle PM_Footsteps_10
PM_Footsteps_220:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_Footsteps_10:
	movss xmm1, dword [ebx+0x28]
	movss xmm0, dword [ebx+0x2c]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [eax+0xe4], xmm1
	test dword [ebx+0xb0], 0x300
	jz PM_Footsteps_20
	mov eax, [ebx+0xc]
	test al, 0x1
	jz PM_Footsteps_30
	mov eax, 0x3
PM_Footsteps_230:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_Footsteps_20:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz PM_Footsteps_40
	cmp eax, 0x28
	jz PM_Footsteps_40
	cmp eax, 0xb
	setz al
	movzx edi, al
PM_Footsteps_240:
	cmp dword [ebx+0x70], 0x3ff
	jz PM_Footsteps_50
PM_Footsteps_330:
	mov edx, [ebx+0xc]
	test dl, 0x40
	jnz PM_Footsteps_60
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jz PM_Footsteps_70
PM_Footsteps_60:
	mov eax, 0x1
PM_Footsteps_450:
	mov [ebp-0x34], eax
	xor eax, eax
	test dh, 0x80
	setnz al
	mov [ebp-0x30], eax
	mov eax, player_moveThreshhold
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	ja PM_Footsteps_80
	cmp dword [ebx+0x4], 0x1
	jz PM_Footsteps_80
	cmp word [esi+0x1a], 0x0
	jz PM_Footsteps_90
	and dl, 0x20
	jz PM_Footsteps_100
	add edi, 0x3
PM_Footsteps_100:
	movsx eax, byte [esi+0x1b]
	cvtsi2ss xmm0, eax
	movss [ebp-0x20], xmm0
	movsx eax, byte [esi+0x1a]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	movss xmm1, dword [ebp-0x1c]
	mov eax, player_strafeAnimCosAngle
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm1, xmm0
	ja PM_Footsteps_110
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	ja PM_Footsteps_110
	cmp byte [esi+0x1b], 0x0
	jle PM_Footsteps_120
	mov eax, 0x2
	xor edx, edx
PM_Footsteps_530:
	mov [esp+0x8], eax
	mov [esp+0xc], edx
	mov dword [esp+0x4], 0x8
	mov eax, [esi]
	mov eax, [eax+0xdc]
	mov [esp], eax
	call BG_SetConditionValue
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
	jnz PM_Footsteps_130
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jz PM_Footsteps_130
	cmp edx, 0x1
	sbb eax, eax
	and eax, 0xffffffea
	add eax, 0x2a
PM_Footsteps_130:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	test eax, eax
	js PM_Footsteps_140
PM_Footsteps_640:
	mov ecx, [esi]
	cvtsi2ss xmm2, dword [ecx+0x60]
	movzx edx, byte [esi+0x1a]
	test dl, dl
	jz PM_Footsteps_150
	cmp byte [esi+0x1b], 0x0
	jz PM_Footsteps_160
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
	js PM_Footsteps_170
PM_Footsteps_560:
	mov eax, [ebp-0x34]
	test eax, eax
	jz PM_Footsteps_180
	mulss xmm2, [_float_0_40000001]
PM_Footsteps_550:
	mov eax, [ecx+0xe8]
	test eax, eax
	jnz PM_Footsteps_190
PM_Footsteps_600:
	mov eax, esi
	movss [ebp-0x58], xmm2
	call PM_CmdScaleForStance
	movss xmm2, dword [ebp-0x58]
	movaps xmm3, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [esi+0xe4]
	test edi, edi
	jnz PM_Footsteps_200
	mov eax, [ebp-0x30]
	test eax, eax
	jz PM_Footsteps_200
	mov eax, player_sprintCameraBob
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
PM_Footsteps_540:
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
	jz PM_Footsteps_210
	cmp eax, 0x28
	jz PM_Footsteps_210
	cmp eax, 0xb
	jz PM_Footsteps_210
	test ecx, ecx
	jnz PM_Footsteps_210
	mov eax, player_footstepsThreshhold
	mov eax, [eax]
	movss xmm0, dword [esi+0xe4]
	ucomiss xmm0, [eax+0xc]
	setae al
	movzx eax, al
PM_Footsteps_510:
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov edx, [ebp-0x38]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	mov [esp], esi
	call PM_FootstepEvent
	jmp PM_Footsteps_220
PM_Footsteps_30:
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x2
	jmp PM_Footsteps_230
PM_Footsteps_40:
	mov edi, 0x2
	jmp PM_Footsteps_240
PM_Footsteps_80:
	ucomiss xmm1, [_float_1_00000000]
	jb PM_Footsteps_250
PM_Footsteps_520:
	mov ecx, [ebx+0xdc]
	cmp ecx, 0x3f
	jle PM_Footsteps_260
	xor esi, esi
	mov dword [ebp-0x2c], 0x0
PM_Footsteps_420:
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz PM_Footsteps_270
	cmp eax, 0x28
	jz PM_Footsteps_270
	xor edx, edx
	cmp eax, 0xb
	setz dl
PM_Footsteps_440:
	test esi, esi
	jnz PM_Footsteps_280
	xor ecx, ecx
PM_Footsteps_430:
	lea eax, [edx+edx*2]
	add eax, ecx
	mov ecx, [eax*4+_ZZ19PM_GetNotMovingAnimiiE14notMovingAnims]
	test esi, esi
	jnz PM_Footsteps_290
	mov eax, player_dmgtimer_flinchTime
	mov edx, [eax]
	mov eax, [ebx+0xa4]
	sub eax, [edx+0xc]
	cmovs eax, esi
	cmp eax, [ebx+0xa0]
	jge PM_Footsteps_300
	cmp dword [ebx+0x114], 0x3c
	jz PM_Footsteps_310
PM_Footsteps_300:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
PM_Footsteps_500:
	test eax, eax
	jns PM_Footsteps_220
	cmp dword [ebx+0x114], 0x28
	jnz PM_Footsteps_320
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_220
PM_Footsteps_50:
	cmp dword [ebx+0x4], 0x1
	jz PM_Footsteps_330
	mov edx, [ebx+0xc]
	test dl, 0x8
	jz PM_Footsteps_220
	mov eax, [esi+0x4]
	sub eax, [ebx+0x80]
	cmp eax, 0x12b
	jle PM_Footsteps_220
	movss xmm0, dword [ebx+0x30]
	and dl, 0x40
	jnz PM_Footsteps_340
	pxor xmm1, xmm1
	ucomiss xmm1, [ebx+0x5c]
	jp PM_Footsteps_350
	jnz PM_Footsteps_350
	movaps xmm2, xmm0
	divss xmm2, dword [_float_95_25000000]
	mulss xmm2, [_float_0_44999999]
PM_Footsteps_570:
	ucomiss xmm0, xmm1
	jb PM_Footsteps_360
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x12
PM_Footsteps_620:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	movss [ebp-0x58], xmm2
	call BG_AnimScriptAnimation
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
	call PM_FootstepEvent
	jmp PM_Footsteps_220
PM_Footsteps_260:
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
	jz PM_Footsteps_370
	mov eax, player_turnAnims
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz PM_Footsteps_370
	sub edi, 0x1
	jz PM_Footsteps_370
	mov edx, [ebp-0x2c]
	cmp byte [edx+0x4bc], 0x0
	jz PM_Footsteps_380
	mov edx, [edx+0x4b8]
	test edx, edx
	jnz PM_Footsteps_390
	mov eax, [ebp-0x2c]
PM_Footsteps_610:
	mov edi, [eax+0x380]
	test edi, edi
	jz PM_Footsteps_400
	movss xmm1, dword [eax+0x3ac]
	movss xmm0, dword [eax+0x37c]
	ucomiss xmm0, xmm1
	jbe PM_Footsteps_410
	mov esi, 0xe
	mov eax, 0xe
PM_Footsteps_630:
	mov ecx, [ebp-0x2c]
	movss [ecx+0x37c], xmm1
	mov [ecx+0x4bc], al
	mov ecx, bgs
	mov eax, [ecx]
	cmp edx, [eax+0x999dc]
	jge PM_Footsteps_420
	mov eax, [ebp-0x2c]
	mov dword [eax+0x4b8], 0x0
	jmp PM_Footsteps_420
PM_Footsteps_280:
	xor ecx, ecx
	cmp esi, 0xe
	setnz cl
	add ecx, 0x1
	jmp PM_Footsteps_430
PM_Footsteps_270:
	mov edx, 0x2
	jmp PM_Footsteps_440
PM_Footsteps_70:
	jp PM_Footsteps_60
	xor eax, eax
	jmp PM_Footsteps_450
PM_Footsteps_90:
	ucomiss xmm1, [_float_120_00000000]
	ja PM_Footsteps_220
	mov eax, [ebx+0x114]
	cmp eax, 0xb
	jz PM_Footsteps_460
	cmp eax, 0x28
	jz PM_Footsteps_470
PM_Footsteps_320:
	mov eax, player_dmgtimer_flinchTime
	mov edx, [eax]
	mov eax, [ebx+0xa4]
	sub eax, [edx+0xc]
	mov edx, 0x0
	cmovs eax, edx
	cmp eax, [ebx+0xa0]
	jge PM_Footsteps_480
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_220
PM_Footsteps_400:
	mov ecx, bgs
	mov eax, [ecx]
	cmp edx, [eax+0x999dc]
	jle PM_Footsteps_490
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x3ac]
	mov [edx+0x37c], eax
PM_Footsteps_370:
	xor esi, esi
	jmp PM_Footsteps_420
PM_Footsteps_310:
	mov dword [esp+0xc], 0x0
	mov eax, [ebx+0xa8]
	add eax, 0x20
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_220
PM_Footsteps_290:
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	test eax, eax
	jle PM_Footsteps_500
	mov eax, [ebp-0x2c]
	mov esi, [eax+0x4b8]
	test esi, esi
	jnz PM_Footsteps_220
	mov edx, eax
	mov eax, bgs
	mov eax, [eax]
	mov eax, [eax+0x999dc]
	add eax, [ebx+0x98]
	mov [edx+0x4b8], eax
	jmp PM_Footsteps_220
PM_Footsteps_210:
	xor eax, eax
	jmp PM_Footsteps_510
PM_Footsteps_250:
	jp PM_Footsteps_520
	mov dword [ebx+0x8], 0x0
	jmp PM_Footsteps_520
PM_Footsteps_110:
	xor eax, eax
	xor edx, edx
	jmp PM_Footsteps_530
PM_Footsteps_200:
	mov edx, [ebp-0x34]
	lea eax, [edx+edi*2]
	movss xmm2, dword [eax*4+_ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable]
	jmp PM_Footsteps_540
PM_Footsteps_480:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_220
PM_Footsteps_180:
	mov eax, [ebp-0x30]
	test eax, eax
	jz PM_Footsteps_550
	mov eax, player_sprintSpeedScale
	mov eax, [eax]
	mulss xmm2, [eax+0xc]
	jmp PM_Footsteps_550
PM_Footsteps_150:
	cmp byte [esi+0x1b], 0x0
	jz PM_Footsteps_560
	mov eax, player_strafeSpeedScale
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [_float_0_75000000]
	addss xmm0, xmm1
	mulss xmm2, xmm0
	jmp PM_Footsteps_560
PM_Footsteps_340:
	pxor xmm1, xmm1
PM_Footsteps_350:
	movaps xmm2, xmm0
	divss xmm2, dword [_float_38_10000229]
	mulss xmm2, [_float_0_34999999]
	jmp PM_Footsteps_570
PM_Footsteps_190:
	mov [esp], eax
	movss [ebp-0x58], xmm2
	call BG_GetWeaponDef
	mov edx, eax
	movss xmm0, dword [eax+0x418]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	movss xmm2, dword [ebp-0x58]
	jbe PM_Footsteps_580
	mov eax, [esi]
	test byte [eax+0xc], 0x40
	jz PM_Footsteps_590
PM_Footsteps_580:
	movss xmm0, dword [edx+0x41c]
	ucomiss xmm0, xmm1
	jbe PM_Footsteps_600
PM_Footsteps_590:
	mulss xmm2, xmm0
	jmp PM_Footsteps_600
PM_Footsteps_380:
	mov ecx, edx
	mov edx, [edx+0x4b8]
	mov eax, ecx
	jmp PM_Footsteps_610
PM_Footsteps_160:
	test dl, dl
	jns PM_Footsteps_560
	mov eax, player_backSpeedScale
	mov eax, [eax]
	mulss xmm2, [eax+0xc]
	jmp PM_Footsteps_560
PM_Footsteps_360:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x13
	jmp PM_Footsteps_620
PM_Footsteps_410:
	mov esi, 0xf
	mov eax, 0xf
	jmp PM_Footsteps_630
PM_Footsteps_490:
	test edx, edx
	jz PM_Footsteps_370
	mov ecx, [ebp-0x2c]
	mov dword [ecx+0x4b8], 0x0
	mov eax, [ecx+0x3ac]
	mov [ecx+0x37c], eax
	xor esi, esi
	jmp PM_Footsteps_420
PM_Footsteps_140:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_640
PM_Footsteps_460:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
PM_Footsteps_650:
	test eax, eax
	jns PM_Footsteps_220
	jmp PM_Footsteps_320
PM_Footsteps_470:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call BG_AnimScriptAnimation
	jmp PM_Footsteps_650
PM_Footsteps_390:
	mov eax, [esi+0x999dc]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_turn_anim_end_ti
	mov dword [esp], 0x11
	call Com_DPrintf
	mov eax, [ebp-0x2c]
	mov edx, [eax+0x4b8]
	jmp PM_Footsteps_610
PM_Footsteps_170:
	mov eax, player_backSpeedScale
	mov eax, [eax]
	movaps xmm0, xmm1
	addss xmm0, [eax+0xc]
	mulss xmm0, xmm3
	mulss xmm2, xmm0
	jmp PM_Footsteps_560
PM_Footsteps_120:
	mov eax, 0x1
	xor edx, edx
	jmp PM_Footsteps_530


;PM_ViewHeightAdjust(pmove_t*, pml_t*)
PM_ViewHeightAdjust:
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
	jz PM_ViewHeightAdjust_10
	movss xmm1, dword [ecx+0x118]
	ucomiss xmm1, [_float_0_00000000]
	jz PM_ViewHeightAdjust_20
PM_ViewHeightAdjust_70:
	cvtsi2ss xmm0, ebx
	ucomiss xmm1, xmm0
	jnz PM_ViewHeightAdjust_30
	jp PM_ViewHeightAdjust_30
	mov eax, [ecx+0x11c]
	test eax, eax
	jz PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_30:
	cmp ebx, 0xb
	jz PM_ViewHeightAdjust_50
	cmp ebx, 0x28
	jz PM_ViewHeightAdjust_50
	cmp ebx, 0x3c
	jz PM_ViewHeightAdjust_50
	mov dword [ecx+0x11c], 0x0
	cvtsi2ss xmm2, dword [ecx+0x114]
	ucomiss xmm2, xmm1
	jbe PM_ViewHeightAdjust_60
	movss xmm0, dword [_float_180_00000000]
	mulss xmm0, [edx+0x24]
	addss xmm0, xmm1
	movss [ecx+0x118], xmm0
	ucomiss xmm0, xmm2
	jb PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_330:
	movss [ecx+0x118], xmm2
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_20:
	jp PM_ViewHeightAdjust_70
PM_ViewHeightAdjust_10:
	cmp dword [ecx+0x4], 0x4
	jz PM_ViewHeightAdjust_80
	cvtsi2ss xmm0, ebx
	movss [ecx+0x118], xmm0
PM_ViewHeightAdjust_40:
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_ViewHeightAdjust_80:
	mov dword [ecx+0x118], 0x0
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_ViewHeightAdjust_50:
	mov esi, [ecx+0x11c]
	test esi, esi
	jz PM_ViewHeightAdjust_90
	mov eax, [ecx+0x124]
	mov [ebp-0x38], eax
	mov edx, [ecx+0x120]
	mov [ebp-0x34], edx
	cmp edx, 0xb
	jz PM_ViewHeightAdjust_100
	cmp edx, 0x28
	jz PM_ViewHeightAdjust_110
PM_ViewHeightAdjust_340:
	mov edx, 0xc8
PM_ViewHeightAdjust_350:
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
	js PM_ViewHeightAdjust_120
	cmp eax, 0x64
	jg PM_ViewHeightAdjust_130
	jz PM_ViewHeightAdjust_130
PM_ViewHeightAdjust_370:
	cmp dword [ebp-0x34], 0xb
	jz PM_ViewHeightAdjust_140
	cmp dword [ebp-0x34], 0x28
	jz PM_ViewHeightAdjust_150
	mov eax, [ebp-0x10]
	test eax, eax
	jz PM_ViewHeightAdjust_160
	mov edx, viewLerp_CrouchStand+0x18
	mov dword [ebp-0x18], viewLerp_CrouchStand+0xc
	mov dword [ebp-0x1c], 0x1
PM_ViewHeightAdjust_190:
	mov eax, [ebp-0x18]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz PM_ViewHeightAdjust_170
	jl PM_ViewHeightAdjust_180
	add dword [ebp-0x1c], 0x1
	mov [ebp-0x18], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_190
PM_ViewHeightAdjust_160:
	movss xmm2, dword [viewLerp_CrouchStand+0x4]
PM_ViewHeightAdjust_430:
	movss [ecx+0x118], xmm2
PM_ViewHeightAdjust_360:
	mov eax, [ecx+0x11c]
	test eax, eax
	jz PM_ViewHeightAdjust_90
	cmp ebx, [ebp-0x34]
	jz PM_ViewHeightAdjust_40
	jge PM_ViewHeightAdjust_200
	mov eax, [ecx+0x124]
	test eax, eax
	jnz PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_380:
	mov ebx, 0x64
	sub ebx, [ebp-0x10]
	mov eax, [ebp-0x38]
	xor eax, 0x1
	mov [ecx+0x124], eax
	test eax, eax
	jz PM_ViewHeightAdjust_210
	cmp dword [ebp-0x34], 0x3c
	jz PM_ViewHeightAdjust_220
	cmp dword [ebp-0x34], 0x28
	jz PM_ViewHeightAdjust_230
PM_ViewHeightAdjust_440:
	cmp ebx, 0x64
	jz PM_ViewHeightAdjust_240
	mov eax, [ecx+0x124]
	mov edx, [ecx+0x120]
	mov [ebp-0x34], edx
	cmp edx, 0xb
	jz PM_ViewHeightAdjust_250
	cmp dword [ebp-0x34], 0x28
	jz PM_ViewHeightAdjust_260
PM_ViewHeightAdjust_500:
	movss xmm1, dword [_float_200_00000000]
PM_ViewHeightAdjust_510:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float_0_01000000]
	mulss xmm0, xmm1
	cvttss2si edx, xmm0
	mov eax, [edi+0x4]
	sub eax, edx
	mov [ecx+0x11c], eax
	cmp dword [ebp-0x34], 0xb
	jz PM_ViewHeightAdjust_270
	cmp dword [ebp-0x34], 0x28
	jz PM_ViewHeightAdjust_280
	test ebx, ebx
	jz PM_ViewHeightAdjust_40
	mov edx, viewLerp_CrouchStand+0x18
	mov ecx, viewLerp_CrouchStand+0xc
PM_ViewHeightAdjust_290:
	cmp ebx, [ecx]
	jz PM_ViewHeightAdjust_40
	jl PM_ViewHeightAdjust_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_290
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_90:
	cvtsi2ss xmm0, dword [ecx+0x114]
	ucomiss xmm0, [ecx+0x118]
	jp PM_ViewHeightAdjust_300
	jz PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_300:
	mov eax, [edi+0x4]
	mov [ecx+0x11c], eax
	cmp ebx, 0xb
	jz PM_ViewHeightAdjust_310
	cmp ebx, 0x28
	jz PM_ViewHeightAdjust_320
	cmp ebx, 0x3c
	jnz PM_ViewHeightAdjust_40
	mov dword [ecx+0x124], 0x0
	mov eax, 0x28
	movss xmm0, dword [_float_40_00000000]
	ucomiss xmm0, [ecx+0x118]
	cmovbe eax, ebx
	mov [ecx+0x120], eax
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_60:
	movss xmm0, dword [_float__180_00000000]
	mulss xmm0, [edx+0x24]
	addss xmm0, xmm1
	movss [ecx+0x118], xmm0
	ucomiss xmm2, xmm0
	jae PM_ViewHeightAdjust_330
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_310:
	mov dword [ecx+0x124], 0x1
	movss xmm0, dword [ecx+0x118]
	mov eax, 0x28
	ucomiss xmm0, [_float_40_00000000]
	cmovbe eax, ebx
	mov [ecx+0x120], eax
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_110:
	test eax, eax
	jnz PM_ViewHeightAdjust_340
PM_ViewHeightAdjust_100:
	mov edx, 0x190
	jmp PM_ViewHeightAdjust_350
PM_ViewHeightAdjust_130:
	cvtsi2ss xmm0, dword [ebp-0x34]
	movss [ecx+0x118], xmm0
	mov dword [ecx+0x11c], 0x0
	mov dword [ebp-0x10], 0x64
	jmp PM_ViewHeightAdjust_360
PM_ViewHeightAdjust_120:
	mov dword [ebp-0x10], 0x0
	jmp PM_ViewHeightAdjust_370
PM_ViewHeightAdjust_320:
	movss xmm0, dword [ecx+0x118]
	xor eax, eax
	ucomiss xmm0, [_float_40_00000000]
	seta al
	mov [ecx+0x124], eax
	mov dword [ecx+0x120], 0x28
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_200:
	jle PM_ViewHeightAdjust_40
	mov eax, [ecx+0x124]
	test eax, eax
	jnz PM_ViewHeightAdjust_380
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_140:
	mov eax, [ebp-0x10]
	test eax, eax
	jz PM_ViewHeightAdjust_390
	mov edx, viewLerp_CrouchProne+0x18
	mov dword [ebp-0x2c], viewLerp_CrouchProne+0xc
	mov dword [ebp-0x30], 0x1
PM_ViewHeightAdjust_420:
	mov eax, [ebp-0x2c]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz PM_ViewHeightAdjust_400
	jl PM_ViewHeightAdjust_410
	add dword [ebp-0x30], 0x1
	mov [ebp-0x2c], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_420
PM_ViewHeightAdjust_390:
	movss xmm2, dword [viewLerp_CrouchProne+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_210:
	cmp dword [ebp-0x34], 0xb
	jz PM_ViewHeightAdjust_220
	cmp dword [ebp-0x34], 0x28
	jnz PM_ViewHeightAdjust_440
	mov dword [ecx+0x120], 0x3c
	jmp PM_ViewHeightAdjust_440
PM_ViewHeightAdjust_150:
	mov esi, [ebp-0x38]
	test esi, esi
	jz PM_ViewHeightAdjust_450
	mov edx, [ebp-0x10]
	test edx, edx
	jz PM_ViewHeightAdjust_460
	mov edx, viewLerp_StandCrouch+0x18
	mov dword [ebp-0x24], viewLerp_StandCrouch+0xc
	mov dword [ebp-0x28], 0x1
PM_ViewHeightAdjust_490:
	mov eax, [ebp-0x24]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz PM_ViewHeightAdjust_470
	jl PM_ViewHeightAdjust_480
	add dword [ebp-0x28], 0x1
	mov [ebp-0x24], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_490
PM_ViewHeightAdjust_460:
	movss xmm2, dword [viewLerp_StandCrouch+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_220:
	mov dword [ecx+0x120], 0x28
	jmp PM_ViewHeightAdjust_440
PM_ViewHeightAdjust_240:
	cvtsi2ss xmm0, dword [ecx+0x120]
	movss [ecx+0x118], xmm0
	mov dword [ecx+0x11c], 0x0
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_260:
	test eax, eax
	jnz PM_ViewHeightAdjust_500
PM_ViewHeightAdjust_250:
	movss xmm1, dword [_float_400_00000000]
	jmp PM_ViewHeightAdjust_510
PM_ViewHeightAdjust_270:
	test ebx, ebx
	jz PM_ViewHeightAdjust_40
	mov edx, viewLerp_CrouchProne+0x18
	mov ecx, viewLerp_CrouchProne+0xc
PM_ViewHeightAdjust_520:
	cmp ebx, [ecx]
	jz PM_ViewHeightAdjust_40
	jl PM_ViewHeightAdjust_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_520
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_450:
	mov eax, [ebp-0x10]
	test eax, eax
	jz PM_ViewHeightAdjust_530
	mov edx, viewLerp_ProneCrouch+0x18
	mov dword [ebp-0x14], viewLerp_ProneCrouch+0xc
	mov dword [ebp-0x20], 0x1
PM_ViewHeightAdjust_560:
	mov eax, [ebp-0x14]
	mov esi, [eax]
	cmp [ebp-0x10], esi
	jz PM_ViewHeightAdjust_540
	jl PM_ViewHeightAdjust_550
	add dword [ebp-0x20], 0x1
	mov [ebp-0x14], edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_560
PM_ViewHeightAdjust_530:
	movss xmm2, dword [viewLerp_ProneCrouch+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_280:
	mov eax, [ecx+0x124]
	test eax, eax
	jz PM_ViewHeightAdjust_570
	test ebx, ebx
	jz PM_ViewHeightAdjust_40
	mov edx, viewLerp_StandCrouch+0x18
	mov ecx, viewLerp_StandCrouch+0xc
PM_ViewHeightAdjust_580:
	cmp ebx, [ecx]
	jz PM_ViewHeightAdjust_40
	jl PM_ViewHeightAdjust_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_580
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_230:
	mov dword [ecx+0x120], 0xb
	jmp PM_ViewHeightAdjust_440
PM_ViewHeightAdjust_170:
	movss xmm2, dword [eax+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_180:
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
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_570:
	test ebx, ebx
	jz PM_ViewHeightAdjust_40
	mov edx, viewLerp_ProneCrouch+0x18
	mov ecx, viewLerp_ProneCrouch+0xc
PM_ViewHeightAdjust_590:
	cmp ebx, [ecx]
	jz PM_ViewHeightAdjust_40
	jl PM_ViewHeightAdjust_40
	mov ecx, edx
	mov eax, [edx]
	add edx, 0xc
	add eax, 0x1
	jnz PM_ViewHeightAdjust_590
	jmp PM_ViewHeightAdjust_40
PM_ViewHeightAdjust_410:
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
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_400:
	mov eax, [ebp-0x2c]
	movss xmm2, dword [eax+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_480:
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
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_470:
	mov edx, [ebp-0x24]
	movss xmm2, dword [edx+0x4]
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_550:
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
	jmp PM_ViewHeightAdjust_430
PM_ViewHeightAdjust_540:
	mov edx, [ebp-0x14]
	movss xmm2, dword [edx+0x4]
	jmp PM_ViewHeightAdjust_430


;PM_CheckDuck(pmove_t*, pml_t*)
PM_CheckDuck:
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
	jz PM_CheckDuck_10
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
	jz PM_CheckDuck_20
	mov eax, [edi+0xc]
	test eax, 0x100000
	jnz PM_CheckDuck_30
	test ax, ax
	js PM_CheckDuck_40
	mov edx, [edi+0xb0]
	test dh, 0x3
	jnz PM_CheckDuck_50
	test ah, 0xc
	jnz PM_CheckDuck_60
	cmp dword [edi+0xec], 0x5
	jz PM_CheckDuck_70
PM_CheckDuck_430:
	cmp dword [edi+0x4], 0x6
	jz PM_CheckDuck_80
	mov eax, [edi+0xc]
	test al, 0x8
	jnz PM_CheckDuck_90
PM_CheckDuck_380:
	mov edx, [esi+0x8]
PM_CheckDuck_370:
	test dh, 0x1
	jz PM_CheckDuck_100
	test ah, 0x4
	jz PM_CheckDuck_110
PM_CheckDuck_100:
	and dh, 0x2
	jz PM_CheckDuck_120
	test al, 0x1
	jz PM_CheckDuck_130
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
	jz PM_CheckDuck_140
	test byte [esi+0x9], 0x10
	jnz PM_CheckDuck_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x8
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_60
PM_CheckDuck_10:
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
	jnz PM_CheckDuck_150
PM_CheckDuck_310:
	mov dword [edi+0x114], 0x0
	mov dword [edi+0x118], 0x0
PM_CheckDuck_240:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_CheckDuck_30:
	mov dword [edi+0x114], 0x3c
PM_CheckDuck_300:
	and eax, 0xfffffffc
	mov [edi+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call BG_AddPredictableEventToPlayerstate
	mov edx, ebx
	mov eax, esi
	call PM_ViewHeightAdjust
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_CheckDuck_50:
	test dh, 0x1
	jz PM_CheckDuck_160
	and dh, 0x2
	jz PM_CheckDuck_170
PM_CheckDuck_320:
	and eax, 0xfffffffc
	mov [edi+0xc], eax
PM_CheckDuck_60:
	mov ecx, [edi+0x11c]
	test ecx, ecx
	jnz PM_CheckDuck_180
	cmp dword [edi+0x4], 0x6
	jz PM_CheckDuck_190
	mov eax, [edi+0xc]
	test al, 0x1
	jz PM_CheckDuck_200
	mov eax, [edi+0x114]
	cmp eax, 0x3c
	jz PM_CheckDuck_210
	cmp eax, 0xb
	jz PM_CheckDuck_180
	mov dword [edi+0x114], 0xb
	mov dword [esi+0xe8], 0x1
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call BG_PlayAnim
	mov [esp], edi
	call Jump_ActivateSlowdown
PM_CheckDuck_180:
	mov edx, ebx
	mov eax, esi
	call PM_ViewHeightAdjust
	mov eax, [edi+0x114]
	cmp eax, 0x16
	jz PM_CheckDuck_220
	cmp eax, 0x28
	jz PM_CheckDuck_220
	cmp eax, 0xb
	jz PM_CheckDuck_230
	mov dword [esi+0xe0], 0x428c0000
	and dword [edi+0xb0], 0xfffffff3
	mov eax, [edi+0xc]
	and eax, 0xfffffffc
	mov [edi+0xc], eax
PM_CheckDuck_290:
	test al, 0x1
	jz PM_CheckDuck_240
	mov edx, [ebp-0x80]
	test edx, edx
	jnz PM_CheckDuck_240
	cmp word [esi+0x1a], 0x0
	jnz PM_CheckDuck_250
PM_CheckDuck_400:
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
	jnz PM_CheckDuck_260
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	ja PM_CheckDuck_270
PM_CheckDuck_260:
	mov dword [edi+0x590], 0x0
PM_CheckDuck_390:
	mov eax, [edi+0x108]
	mov [esp+0x4], eax
	mov eax, [edi+0x590]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x70]
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [_float__45_00000000]
	jae PM_CheckDuck_280
	jp PM_CheckDuck_280
	movss xmm0, dword [edi+0x108]
	subss xmm0, [_float_45_00000000]
	movss [edi+0x594], xmm0
	jmp PM_CheckDuck_240
PM_CheckDuck_220:
	mov dword [esi+0xe0], 0x42480000
	mov eax, [edi+0xb0]
	or eax, 0x4
	and eax, 0xfffffff7
	mov [edi+0xb0], eax
	mov eax, [edi+0xc]
	or eax, 0x2
	and eax, 0xfffffffe
	mov [edi+0xc], eax
	jmp PM_CheckDuck_290
PM_CheckDuck_40:
	mov dword [edi+0x114], 0x3c
	and dword [edi+0xb0], 0xfffffff3
	jmp PM_CheckDuck_300
PM_CheckDuck_20:
	mov dword [edi+0x114], 0x8
	mov edx, ebx
	mov eax, esi
	call PM_ViewHeightAdjust
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_CheckDuck_150:
	and ah, 0xfe
	mov [esi+0x8], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_310
PM_CheckDuck_160:
	and dh, 0x2
	jz PM_CheckDuck_320
	or eax, 0x2
	and eax, 0xfffffffe
	mov [edi+0xc], eax
	jmp PM_CheckDuck_60
PM_CheckDuck_280:
	ucomiss xmm0, [_float_45_00000000]
	ja PM_CheckDuck_330
	mov eax, [edi+0x590]
	mov [edi+0x594], eax
	jmp PM_CheckDuck_240
PM_CheckDuck_200:
	cmp dword [edi+0x114], 0xb
	jz PM_CheckDuck_340
	and eax, 0x2
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x14
	add eax, 0x28
	mov [edi+0x114], eax
	jmp PM_CheckDuck_180
PM_CheckDuck_110:
	mov eax, [esi]
	mov [ebp-0x74], eax
	mov eax, [eax+0xe8]
	mov [esp], eax
	call BG_WeaponBlocksProne
	test al, al
	jnz PM_CheckDuck_350
	mov eax, [ebp-0x74]
	test byte [eax+0xc], 0x1
	jnz PM_CheckDuck_360
	cmp dword [eax+0x70], 0x3ff
	jz PM_CheckDuck_350
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
	call BG_CheckProne
	test al, al
	jz PM_CheckDuck_350
PM_CheckDuck_360:
	mov eax, [edi+0xc]
PM_CheckDuck_170:
	or eax, 0x1
	and eax, 0xfffffffd
	mov [edi+0xc], eax
	jmp PM_CheckDuck_60
PM_CheckDuck_330:
	movss xmm0, dword [_float_45_00000000]
	addss xmm0, [edi+0x108]
	movss [edi+0x594], xmm0
	jmp PM_CheckDuck_240
PM_CheckDuck_90:
	mov edx, [esi+0x8]
	test dh, 0x3
	jz PM_CheckDuck_370
	and dh, 0xfc
	mov [esi+0x8], edx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call BG_AddPredictableEventToPlayerstate
	mov eax, [edi+0xc]
	jmp PM_CheckDuck_380
PM_CheckDuck_270:
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x58c]
	mov [esp], eax
	call PitchForYawOnNormal
	fstp dword [edi+0x590]
	jmp PM_CheckDuck_390
PM_CheckDuck_210:
	mov dword [edi+0x114], 0x28
	jmp PM_CheckDuck_180
PM_CheckDuck_340:
	mov dword [edi+0x114], 0x28
	mov dword [esi+0xe8], 0x1
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call BG_PlayAnim
	jmp PM_CheckDuck_180
PM_CheckDuck_230:
	mov dword [esi+0xe0], 0x41f00000
	mov eax, [edi+0xb0]
	or eax, 0x8
	and eax, 0xfffffffb
	mov [edi+0xb0], eax
	mov eax, [edi+0xc]
	or eax, 0x1
	and eax, 0xfffffffd
	mov [edi+0xc], eax
	jmp PM_CheckDuck_290
PM_CheckDuck_190:
	mov dword [edi+0x114], 0x16
	jmp PM_CheckDuck_180
PM_CheckDuck_250:
	and ah, 0xfd
	mov [edi+0xc], eax
	mov [esp], edi
	call PM_ExitAimDownSight
	jmp PM_CheckDuck_400
PM_CheckDuck_140:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xc
	mov [esp], edi
	call BG_AnimScriptEvent
PM_CheckDuck_80:
	mov eax, [edi+0xc]
	and eax, 0xfffffffe
	or eax, 0x2
	mov [edi+0xc], eax
	jmp PM_CheckDuck_60
PM_CheckDuck_120:
	test al, 0x1
	jnz PM_CheckDuck_410
	test al, 0x2
	jz PM_CheckDuck_60
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
	jz PM_CheckDuck_420
	test byte [esi+0x9], 0x10
	jnz PM_CheckDuck_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x7
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_60
PM_CheckDuck_70:
	mov eax, [edi+0xe8]
	test eax, eax
	jz PM_CheckDuck_430
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x5b8]
	test eax, eax
	jnz PM_CheckDuck_60
	jmp PM_CheckDuck_430
PM_CheckDuck_130:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xd
	mov [esp], edi
	call BG_AnimScriptEvent
	or dword [edi+0xc], 0x2
	jmp PM_CheckDuck_60
PM_CheckDuck_410:
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
	jnz PM_CheckDuck_440
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x10
	mov [esp], edi
	call BG_AnimScriptEvent
	and dword [edi+0xc], 0xfffffffc
	jmp PM_CheckDuck_60
PM_CheckDuck_350:
	cmp dword [edi+0x70], 0x3ff
	jz PM_CheckDuck_60
	mov eax, [edi+0xc]
	or ah, 0x10
	mov [edi+0xc], eax
	test byte [esi+0x9], 0x10
	jnz PM_CheckDuck_60
	test al, 0x1
	jnz PM_CheckDuck_450
	test al, 0x2
	jz PM_CheckDuck_460
PM_CheckDuck_450:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_60
PM_CheckDuck_440:
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
	jz PM_CheckDuck_80
	test byte [esi+0x9], 0x10
	jnz PM_CheckDuck_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x8
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_60
PM_CheckDuck_420:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0xe
	mov [esp], edi
	call BG_AnimScriptEvent
	and dword [edi+0xc], 0xfffffffd
	jmp PM_CheckDuck_60
PM_CheckDuck_460:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call BG_AddPredictableEventToPlayerstate
	jmp PM_CheckDuck_60
	nop


;PM_Accelerate(playerState_s*, pml_t const*, float const*, float, float)
PM_Accelerate:
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
	jnz PM_Accelerate_10
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
	jp PM_Accelerate_20
	jbe PM_Accelerate_30
PM_Accelerate_20:
	mov eax, stopspeed
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	maxss xmm2, xmm5
	mulss xmm6, [edx+0x24]
	mulss xmm2, xmm6
	minss xmm0, xmm2
	movaps xmm2, xmm0
	cmp dword [ebx+0x4], 0x2
	jz PM_Accelerate_40
	mov edx, inertiaMax
	mov eax, [edx]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm2
	jae PM_Accelerate_40
	movss xmm5, dword [ebx+0x34]
	movss xmm4, dword [ebx+0x38]
	movaps xmm3, xmm5
	mulss xmm3, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm3, xmm0
	cvtss2sd xmm0, xmm3
	ucomisd xmm0, [_double_0_00010000]
	jp PM_Accelerate_50
	jae PM_Accelerate_50
PM_Accelerate_40:
	movaps xmm1, xmm2
PM_Accelerate_80:
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
PM_Accelerate_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_Accelerate_10:
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
	jb PM_Accelerate_60
	movss xmm0, dword [_float_1_00000000]
PM_Accelerate_90:
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
PM_Accelerate_50:
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
	jae PM_Accelerate_40
	mov eax, inertiaDebug
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz PM_Accelerate_70
PM_Accelerate_100:
	mov eax, inertiaMax
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	jmp PM_Accelerate_80
PM_Accelerate_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp PM_Accelerate_90
PM_Accelerate_70:
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
	call Com_Printf
	mov edx, inertiaMax
	mov eax, [edx]
	cvtss2sd xmm0, [eax+0xc]
	movsd [esp+0x10], xmm0
	movss xmm2, dword [ebp-0x48]
	cvtss2sd xmm2, xmm2
	movsd [esp+0x8], xmm2
	mov dword [esp+0x4], _cstring_clamping_acceler
	mov dword [esp], 0x11
	call Com_Printf
	jmp PM_Accelerate_100
	nop


;PM_AirMove(pmove_t*, pml_t*)
PM_AirMove:
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
	call PM_Friction
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
	jz PM_AirMove_10
	cvtsi2ss xmm5, dword [edi+0x60]
	cvtsi2ss xmm0, edx
	mulss xmm5, xmm0
	mulss xmm1, [_float_127_00000000]
	divss xmm5, xmm1
	test byte [edi+0xc], 0x40
	jz PM_AirMove_20
PM_AirMove_100:
	mulss xmm5, [_float_0_40000001]
	mov eax, [edi+0x4]
	cmp eax, 0x2
	jz PM_AirMove_30
PM_AirMove_110:
	cmp eax, 0x3
	jz PM_AirMove_40
	cmp eax, 0x4
	jnz PM_AirMove_10
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm5, [eax+0xc]
PM_AirMove_10:
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
	jb PM_AirMove_50
	movss xmm6, dword [_float_1_00000000]
	movaps xmm1, xmm6
PM_AirMove_120:
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
	jb PM_AirMove_60
	movaps xmm1, xmm6
PM_AirMove_140:
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
PM_AirMove_70:
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	movss [ecx+edx*4-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz PM_AirMove_70
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
	jb PM_AirMove_80
	movaps xmm1, xmm6
PM_AirMove_130:
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
	call PM_Accelerate
	mov eax, [esi+0x30]
	test eax, eax
	jz PM_AirMove_90
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
PM_AirMove_90:
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov eax, [ebp-0x40]
	mov [esp], eax
	call PM_StepSlideMove
	mov edx, esi
	mov eax, [ebp-0x40]
	call PM_SetMovementDir
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_AirMove_20:
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x5c]
	jp PM_AirMove_100
	jnz PM_AirMove_100
	mov eax, [edi+0x4]
	cmp eax, 0x2
	jnz PM_AirMove_110
PM_AirMove_30:
	mulss xmm5, [_float_3_00000000]
	jmp PM_AirMove_10
PM_AirMove_50:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp PM_AirMove_120
PM_AirMove_80:
	movaps xmm1, xmm6
	divss xmm1, xmm3
	jmp PM_AirMove_130
PM_AirMove_60:
	movaps xmm0, xmm6
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp PM_AirMove_140
PM_AirMove_40:
	mulss xmm5, [_float_6_00000000]
	jmp PM_AirMove_10


;BG_GetSpeed(playerState_s const*, int)
BG_GetSpeed:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	test byte [edx+0xc], 0x8
	jz BG_GetSpeed_10
	sub eax, [edx+0x80]
	cmp eax, 0x1f3
	jle BG_GetSpeed_20
	fld dword [edx+0x30]
	leave
	ret
BG_GetSpeed_20:
	fldz
	leave
	ret
BG_GetSpeed_10:
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
PM_AddEvent:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
	leave
	ret


;PM_UpdateLean(playerState_s*, float, usercmd_s*, void (*)(trace_t*, float const*, float const*, float const*, float const*, int, int))
PM_UpdateLean:
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
	jz PM_UpdateLean_10
	test byte [esi+0xd], 0x8
	jz PM_UpdateLean_20
PM_UpdateLean_10:
	xor edx, edx
PM_UpdateLean_170:
	test dword [esi+0xb0], 0x300
	mov eax, 0x0
	cmovnz edx, eax
	mov eax, [esi+0x114]
	cmp eax, 0x16
	jz PM_UpdateLean_30
	cmp eax, 0x28
	jz PM_UpdateLean_30
	cmp eax, 0xb
	jz PM_UpdateLean_40
PM_UpdateLean_30:
	movss xmm2, dword [_float_0_50000000]
PM_UpdateLean_190:
	movss xmm1, dword [esi+0x5c]
	cmp edx, 0x0
	jnz PM_UpdateLean_50
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jbe PM_UpdateLean_60
	movaps xmm0, xmm3
	divss xmm0, dword [_float__280_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm4, xmm0
	ja PM_UpdateLean_70
PM_UpdateLean_150:
	movss [esi+0x5c], xmm0
	ucomiss xmm0, xmm4
	jp PM_UpdateLean_80
	jz PM_UpdateLean_90
PM_UpdateLean_80:
	mov ebx, 0x3f800000
	ucomiss xmm0, xmm4
	jb PM_UpdateLean_100
PM_UpdateLean_220:
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
	call AddLeanToPosition
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
	call UnGetLeanFraction
	fstp dword [ebp-0x6c]
	movss xmm1, dword [esi+0x5c]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [ebp-0x6c]
	jbe PM_UpdateLean_90
	ucomiss xmm1, [_float_0_00000000]
	jb PM_UpdateLean_110
	movss xmm0, dword [_float_1_00000000]
PM_UpdateLean_230:
	mulss xmm0, [ebp-0x6c]
	movss [esi+0x5c], xmm0
PM_UpdateLean_90:
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
PM_UpdateLean_50:
	jle PM_UpdateLean_120
	ucomiss xmm2, xmm1
	ja PM_UpdateLean_130
	movaps xmm0, xmm1
	ucomiss xmm0, xmm2
	jbe PM_UpdateLean_140
PM_UpdateLean_180:
	movaps xmm0, xmm2
	pxor xmm4, xmm4
	jmp PM_UpdateLean_150
PM_UpdateLean_20:
	mov eax, [esi+0x4]
	cmp eax, 0x6
	jg PM_UpdateLean_10
	cmp dword [esi+0x70], 0x3ff
	jz PM_UpdateLean_160
PM_UpdateLean_240:
	mov eax, ecx
	and eax, 0x40
	cmp eax, 0x1
	sbb edx, edx
	not edx
	test cl, cl
	jns PM_UpdateLean_170
	add edx, 0x1
	jmp PM_UpdateLean_170
PM_UpdateLean_130:
	movaps xmm0, xmm3
	divss xmm0, dword [_float_350_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, xmm2
	ja PM_UpdateLean_180
PM_UpdateLean_140:
	pxor xmm4, xmm4
	jmp PM_UpdateLean_150
PM_UpdateLean_40:
	movss xmm2, dword [_float_0_25000000]
	jmp PM_UpdateLean_190
PM_UpdateLean_60:
	ucomiss xmm4, xmm1
	ja PM_UpdateLean_200
	movaps xmm0, xmm1
	jmp PM_UpdateLean_150
PM_UpdateLean_120:
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm1, xmm0
	jbe PM_UpdateLean_210
	divss xmm3, dword [_float__350_00000000]
	mulss xmm2, xmm3
	addss xmm1, xmm2
PM_UpdateLean_210:
	ucomiss xmm0, xmm1
	ja PM_UpdateLean_140
	pxor xmm4, xmm4
	movaps xmm0, xmm1
	jmp PM_UpdateLean_150
PM_UpdateLean_100:
	mov ebx, 0xbf800000
	jmp PM_UpdateLean_220
PM_UpdateLean_200:
	movaps xmm0, xmm3
	divss xmm0, dword [_float_280_00000000]
	mulss xmm0, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, xmm4
	jbe PM_UpdateLean_150
PM_UpdateLean_70:
	movaps xmm0, xmm4
	jmp PM_UpdateLean_150
PM_UpdateLean_110:
	movss xmm0, dword [_float__1_00000000]
	jmp PM_UpdateLean_230
PM_UpdateLean_160:
	sub eax, 0x1
	jnz PM_UpdateLean_10
	jmp PM_UpdateLean_240
	nop


;PM_AddTouchEnt(pmove_t*, int)
PM_AddTouchEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp esi, 0x3fe
	jz PM_AddTouchEnt_10
	mov ebx, [edi+0x48]
	cmp ebx, 0x20
	jz PM_AddTouchEnt_10
	test ebx, ebx
	jle PM_AddTouchEnt_20
	cmp esi, [edi+0x4c]
	jz PM_AddTouchEnt_10
	mov ecx, edi
	xor edx, edx
PM_AddTouchEnt_30:
	add edx, 0x1
	cmp ebx, edx
	jz PM_AddTouchEnt_20
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp esi, eax
	jnz PM_AddTouchEnt_30
PM_AddTouchEnt_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_AddTouchEnt_20:
	mov [edi+ebx*4+0x4c], esi
	lea eax, [ebx+0x1]
	mov [edi+0x48], eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PM_IsSprinting(playerState_s const*)
PM_IsSprinting:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	add edx, 0x5b8
	mov eax, [edx+0x8]
	test eax, eax
	jz PM_IsSprinting_10
	cmp eax, [edx+0xc]
	jle PM_IsSprinting_10
	mov eax, 0x1
	pop ebp
	ret
PM_IsSprinting_10:
	xor eax, eax
	pop ebp
	ret
	nop


;PM_playerTrace(pmove_t*, trace_t*, float const*, float const*, float const*, float const*, int, int)
PM_playerTrace:
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
	jz PM_playerTrace_10
	test byte [esi+0x17], 0x2
	jnz PM_playerTrace_20
PM_playerTrace_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_playerTrace_20:
	mov [esp], esi
	call Trace_GetEntityHitId
	movzx edx, ax
	mov [ebp-0x1c], edx
	cmp ax, 0x3fe
	jz PM_playerTrace_30
	mov eax, [ebx+0x48]
	mov [ebp-0x34], eax
	cmp eax, 0x20
	jz PM_playerTrace_30
	test eax, eax
	jg PM_playerTrace_40
PM_playerTrace_50:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x34]
	mov [ebx+edx*4+0x4c], eax
	mov eax, edx
	add eax, 0x1
	mov [ebx+0x48], eax
PM_playerTrace_30:
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
PM_playerTrace_40:
	mov eax, [ebp-0x1c]
	cmp eax, [ebx+0x4c]
	jz PM_playerTrace_30
	mov ecx, ebx
	xor edx, edx
PM_playerTrace_60:
	add edx, 0x1
	cmp [ebp-0x34], edx
	jz PM_playerTrace_50
	mov eax, [ecx+0x50]
	add ecx, 0x4
	cmp [ebp-0x1c], eax
	jnz PM_playerTrace_60
	jmp PM_playerTrace_30


;PM_ClipVelocity(float const*, float const*, float*)
PM_ClipVelocity:
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
PM_FootstepEvent:
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
	jns PM_FootstepEvent_10
	cmp dword [ebx+0x70], 0x3ff
	jz PM_FootstepEvent_20
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jz PM_FootstepEvent_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x48]
	test ah, 0x20
	jnz PM_FootstepEvent_30
	mov edx, eax
	and edx, 0x1f00000
	shr edx, 0x14
	test eax, 0x1f00000
	jz PM_FootstepEvent_40
	mov eax, [ebx+0xc]
	test al, 0x1
	jz PM_FootstepEvent_50
	mov eax, 0x4b
PM_FootstepEvent_70:
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call BG_AddPredictableEventToPlayerstate
PM_FootstepEvent_10:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
PM_FootstepEvent_20:
	mov eax, [ebp+0x18]
	test eax, eax
	jz PM_FootstepEvent_10
	test byte [ebx+0xc], 0x8
	jz PM_FootstepEvent_10
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
	call PM_playerTrace
	mov eax, [ebp-0x48]
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x58]
	jp PM_FootstepEvent_60
	jnz PM_FootstepEvent_60
PM_FootstepEvent_100:
	mov eax, 0x15
PM_FootstepEvent_110:
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x49
	call BG_AddPredictableEventToPlayerstate
	jmp PM_FootstepEvent_10
PM_FootstepEvent_30:
	xor edx, edx
PM_FootstepEvent_40:
	xor eax, eax
	jmp PM_FootstepEvent_70
PM_FootstepEvent_50:
	test al, 0x40
	jnz PM_FootstepEvent_80
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jnz PM_FootstepEvent_80
	jp PM_FootstepEvent_80
	lea ecx, [ebx+0x5b8]
	mov eax, [ecx+0x8]
	test eax, eax
	jz PM_FootstepEvent_90
	cmp eax, [ecx+0xc]
	jle PM_FootstepEvent_90
	mov eax, 0x48
	jmp PM_FootstepEvent_70
PM_FootstepEvent_80:
	mov eax, 0x4a
	jmp PM_FootstepEvent_70
PM_FootstepEvent_60:
	test al, al
	jz PM_FootstepEvent_100
	mov eax, edx
	jmp PM_FootstepEvent_110
PM_FootstepEvent_90:
	mov eax, 0x49
	jmp PM_FootstepEvent_70
	nop


;PM_GetSprintLeft(playerState_s const*, int)
PM_GetSprintLeft:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call BG_GetMaxSprintTime
	mov esi, eax
	lea eax, [ebx+0x5b8]
	mov edx, [eax+0x8]
	test edx, edx
	jnz PM_GetSprintLeft_10
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
PM_GetSprintLeft_10:
	mov ecx, [eax+0xc]
	cmp edx, ecx
	jg PM_GetSprintLeft_20
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz PM_GetSprintLeft_30
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
PM_GetSprintLeft_20:
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
PM_GetSprintLeft_30:
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
PM_ProjectVelocity:
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
	jp PM_ProjectVelocity_10
	jb PM_ProjectVelocity_20
PM_ProjectVelocity_10:
	pxor xmm7, xmm7
	ucomiss xmm2, xmm7
	jnz PM_ProjectVelocity_30
	jp PM_ProjectVelocity_30
PM_ProjectVelocity_20:
	movss [ecx], xmm3
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
PM_ProjectVelocity_60:
	leave
	ret
PM_ProjectVelocity_30:
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
	jb PM_ProjectVelocity_40
PM_ProjectVelocity_70:
	ucomiss xmm7, xmm5
	ja PM_ProjectVelocity_50
	ucomiss xmm6, xmm7
	jbe PM_ProjectVelocity_60
PM_ProjectVelocity_50:
	mulss xmm3, xmm0
	movss [ecx], xmm3
	mulss xmm4, xmm0
	movss [ecx+0x4], xmm4
	mulss xmm5, xmm0
	movss [ecx+0x8], xmm5
	leave
	ret
PM_ProjectVelocity_40:
	jnp PM_ProjectVelocity_50
	jmp PM_ProjectVelocity_70
	nop


;PM_MeleeChargeStart(pmove_t*)
PM_MeleeChargeStart:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	cmp byte [ecx+0x20], 0x0
	jnz PM_MeleeChargeStart_10
	and dword [edx+0xc], 0xfffdffff
	mov dword [edx+0x5f0], 0x0
	mov dword [edx+0x5f4], 0x0
	mov dword [edx+0x5f8], 0x0
	pop ebp
	ret
PM_MeleeChargeStart_10:
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
PM_UpdatePronePitch:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [eax]
	test byte [ebx+0xc], 0x1
	jz PM_UpdatePronePitch_10
	cmp dword [ebx+0x70], 0x3ff
	jz PM_UpdatePronePitch_20
	mov eax, [esi+0x30]
	test eax, eax
	jz PM_UpdatePronePitch_30
	cmp byte [esi+0x62], 0x0
	jz PM_UpdatePronePitch_40
PM_UpdatePronePitch_160:
	lea eax, [esi+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x58c]
	mov [esp], eax
	call PitchForYawOnNormal
PM_UpdatePronePitch_170:
	mov eax, [ebx+0x590]
	mov [esp+0x4], eax
	fstp dword [esp]
	call AngleDelta
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp PM_UpdatePronePitch_50
	jz PM_UpdatePronePitch_60
PM_UpdatePronePitch_50:
	movss xmm2, dword [_float_70_00000000]
	mulss xmm2, [esi+0x24]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, xmm2
	jbe PM_UpdatePronePitch_70
	movss xmm0, dword [ebx+0x590]
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jb PM_UpdatePronePitch_80
	movss xmm1, dword [_float_1_00000000]
PM_UpdatePronePitch_230:
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebx+0x590], xmm0
PM_UpdatePronePitch_190:
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
PM_UpdatePronePitch_60:
	mov eax, [esi+0x30]
	test eax, eax
	jnz PM_UpdatePronePitch_90
	fldz
PM_UpdatePronePitch_180:
	mov eax, [ebx+0x594]
	mov [esp+0x4], eax
	fstp dword [esp]
	call AngleDelta
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	pxor xmm3, xmm3
	ucomiss xmm1, xmm3
	jp PM_UpdatePronePitch_100
	jz PM_UpdatePronePitch_10
PM_UpdatePronePitch_100:
	movss xmm2, dword [_float_70_00000000]
	mulss xmm2, [esi+0x24]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, xmm2
	jbe PM_UpdatePronePitch_110
	movss xmm0, dword [ebx+0x594]
	ucomiss xmm1, xmm3
	jb PM_UpdatePronePitch_120
	movss xmm1, dword [_float_1_00000000]
PM_UpdatePronePitch_220:
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebx+0x594], xmm0
	jmp PM_UpdatePronePitch_130
PM_UpdatePronePitch_110:
	addss xmm1, [ebx+0x594]
	movss [ebx+0x594], xmm1
PM_UpdatePronePitch_130:
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
PM_UpdatePronePitch_10:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
PM_UpdatePronePitch_20:
	movzx eax, byte [eax+0x10c]
	mov edx, [esi+0x30]
	test edx, edx
	jnz PM_UpdatePronePitch_140
	mov edx, 0x1
PM_UpdatePronePitch_210:
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
	call BG_CheckProne
	test al, al
	jz PM_UpdatePronePitch_150
PM_UpdatePronePitch_200:
	mov eax, [esi+0x30]
	test eax, eax
	jnz PM_UpdatePronePitch_160
PM_UpdatePronePitch_30:
	fldz
	jmp PM_UpdatePronePitch_170
PM_UpdatePronePitch_90:
	lea eax, [esi+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x10c]
	mov [esp], eax
	call PitchForYawOnNormal
	jmp PM_UpdatePronePitch_180
PM_UpdatePronePitch_70:
	addss xmm1, [ebx+0x590]
	movss [ebx+0x590], xmm1
	jmp PM_UpdatePronePitch_190
PM_UpdatePronePitch_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call BG_AddPredictableEventToPlayerstate
	jmp PM_UpdatePronePitch_200
PM_UpdatePronePitch_140:
	movzx edx, byte [esi+0x62]
	jmp PM_UpdatePronePitch_210
PM_UpdatePronePitch_150:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call BG_AddPredictableEventToPlayerstate
	or dword [ebx+0xc], 0x1000
	jmp PM_UpdatePronePitch_200
PM_UpdatePronePitch_120:
	movss xmm1, dword [_float__1_00000000]
	jmp PM_UpdatePronePitch_220
PM_UpdatePronePitch_80:
	movss xmm1, dword [_float__1_00000000]
	jmp PM_UpdatePronePitch_230
	nop


;PM_UpdateViewAngles(playerState_s*, float, usercmd_s*, unsigned char)
PM_UpdateViewAngles:
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
	jz PM_UpdateViewAngles_10
	cmp eax, 0x6
	jg PM_UpdateViewAngles_20
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
PM_UpdateViewAngles_50:
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
	jnz PM_UpdateViewAngles_30
	ucomiss xmm0, [ebp-0x24]
	jbe PM_UpdateViewAngles_40
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0x8]
	mulss xmm0, [_float__0_00549316]
	addss xmm0, [ebp-0x24]
	movss [edi+0x64], xmm0
	movss xmm0, dword [ebp-0x24]
PM_UpdateViewAngles_30:
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
	jnz PM_UpdateViewAngles_50
	test dword [edi+0xb0], 0x300
	jz PM_UpdateViewAngles_60
	mov ebx, edi
	mov dword [ebp-0x40], 0x0
PM_UpdateViewAngles_110:
	lea esi, [ebx+0x130]
	movss xmm0, dword [ebx+0x130]
	ucomiss xmm0, [_float_180_00000000]
	jae PM_UpdateViewAngles_70
	cmp dword [ebp-0x40], 0x1
	jz PM_UpdateViewAngles_80
	mov eax, [ebx+0x108]
	mov [esp+0x4], eax
	mov eax, [ebx+0x128]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
PM_UpdateViewAngles_180:
	movss xmm2, dword [esi]
	ucomiss xmm1, xmm2
	ja PM_UpdateViewAngles_90
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe PM_UpdateViewAngles_70
	addss xmm1, xmm2
PM_UpdateViewAngles_190:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x64]
	movss [ebx+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_100
	movss xmm0, dword [ebx+0x128]
	subss xmm0, [esi]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebx+0x108]
PM_UpdateViewAngles_70:
	add dword [ebp-0x40], 0x1
	add ebx, 0x4
	cmp dword [ebp-0x40], 0x2
	jnz PM_UpdateViewAngles_110
PM_UpdateViewAngles_10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_UpdateViewAngles_20:
	cmp dword [edi+0x14c], 0x3e7
	jz PM_UpdateViewAngles_120
PM_UpdateViewAngles_170:
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
	jmp PM_UpdateLean
PM_UpdateViewAngles_40:
	movss xmm1, dword [ebp-0x74]
	ucomiss xmm1, xmm0
	jbe PM_UpdateViewAngles_30
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0x8]
	mulss xmm0, [_float__0_00549316]
	subss xmm0, [ebp-0x48]
	movss [edi+0x64], xmm0
	movaps xmm0, xmm1
	jmp PM_UpdateViewAngles_30
PM_UpdateViewAngles_60:
	mov edx, [edi+0xc]
	test dl, 0x4
	jnz PM_UpdateViewAngles_130
	test dl, 0x8
	jz PM_UpdateViewAngles_140
	cmp dword [edi+0x70], 0x3ff
	jz PM_UpdateViewAngles_150
PM_UpdateViewAngles_140:
	and dl, 0x1
	jnz PM_UpdateViewAngles_160
PM_UpdateViewAngles_450:
	mov eax, [edi+0x4]
	cmp eax, 0x3
	jz PM_UpdateViewAngles_10
	cmp eax, 0x2
	jz PM_UpdateViewAngles_10
	cmp eax, 0x4
	jnz PM_UpdateViewAngles_170
	jmp PM_UpdateViewAngles_10
PM_UpdateViewAngles_130:
	mov [ebp+0x8], edi
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Mantle_CapView
PM_UpdateViewAngles_80:
	movss xmm0, dword [ebp-0x4c]
	movss [esp+0x4], xmm0
	mov eax, [edi+0x12c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0x20]
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm1, dword [ebp-0x4c]
	movss [esp], xmm1
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	addss xmm1, [ebp-0x20]
	jmp PM_UpdateViewAngles_180
PM_UpdateViewAngles_90:
	subss xmm1, xmm2
	jmp PM_UpdateViewAngles_190
PM_UpdateViewAngles_120:
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_0_00549316]
	addss xmm0, [edi+0x68]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [_float_0_00549316]
	cvttss2si eax, xmm0
	mov [edi+0x14c], eax
	jmp PM_UpdateViewAngles_170
PM_UpdateViewAngles_160:
	movzx eax, byte [ebp-0x55]
	mov [ebp-0x39], al
	movss xmm0, dword [edi+0x10c]
	movss [ebp-0x34], xmm0
	movss [esp+0x4], xmm0
	mov eax, [edi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	mov eax, bg_prone_yawcap
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, [_float_5_00000000]
	ucomiss xmm2, xmm0
	ja PM_UpdateViewAngles_200
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	ja PM_UpdateViewAngles_200
	xor edx, edx
PM_UpdateViewAngles_480:
	mov eax, [ebp-0x54]
	cmp word [eax+0x16], 0x0
	jz PM_UpdateViewAngles_210
	ucomiss xmm2, [_float_0_00000000]
	jp PM_UpdateViewAngles_220
	jnz PM_UpdateViewAngles_220
PM_UpdateViewAngles_210:
	xor eax, eax
PM_UpdateViewAngles_320:
	test dl, dl
	jnz PM_UpdateViewAngles_230
	test al, al
	jz PM_UpdateViewAngles_240
PM_UpdateViewAngles_230:
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, [_float_55_00000000]
	mulss xmm1, [_float_0_00100000]
	movaps xmm0, xmm2
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	jbe PM_UpdateViewAngles_250
	movss xmm0, dword [edi+0x10c]
	movss [ebp-0x38], xmm0
PM_UpdateViewAngles_570:
	movzx esi, byte [ebp-0x39]
	mov dword [ebp-0x30], 0x0
	mov ebx, 0x1
	lea eax, [edi+0x1c]
	mov [ebp-0x70], eax
	jmp PM_UpdateViewAngles_260
PM_UpdateViewAngles_290:
	mov dword [ebp-0x30], 0x1
PM_UpdateViewAngles_310:
	addss xmm1, [ebp-0x38]
	movss [esp], xmm1
	call AngleNormalize360
	fstp dword [ebp-0x38]
PM_UpdateViewAngles_260:
	mov edx, esi
	movss xmm0, dword [ebp-0x38]
	mov eax, edi
	call BG_CheckProneTurned
	test eax, eax
	jnz PM_UpdateViewAngles_270
	test ebx, ebx
	jz PM_UpdateViewAngles_280
	movss xmm1, dword [ebp-0x38]
	movss [esp+0x4], xmm1
	mov eax, [edi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	xor ebx, ebx
	ucomiss xmm0, [_float_1_00000000]
	seta bl
	test ebx, ebx
	jz PM_UpdateViewAngles_290
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_300
	movss xmm1, dword [_float_1_00000000]
	jmp PM_UpdateViewAngles_310
PM_UpdateViewAngles_220:
	mov eax, 0x1
	jmp PM_UpdateViewAngles_320
PM_UpdateViewAngles_270:
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
	call BG_CheckProne
	test al, al
	jnz PM_UpdateViewAngles_330
PM_UpdateViewAngles_590:
	mov dword [ebp-0x30], 0x1
PM_UpdateViewAngles_280:
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	mov eax, [edi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	ucomiss xmm1, [_float_0_00000000]
	jp PM_UpdateViewAngles_340
	jz PM_UpdateViewAngles_350
PM_UpdateViewAngles_340:
	movss xmm0, dword [edi+0x58c]
	movss [ebp-0x1c], xmm0
	movzx eax, byte [ebp-0x39]
	mov [ebp-0x28], eax
	mov esi, 0x1
	lea eax, [edi+0x1c]
	mov [ebp-0x6c], eax
	jmp PM_UpdateViewAngles_360
PM_UpdateViewAngles_400:
	test esi, esi
	jz PM_UpdateViewAngles_350
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm0, xmm2
	seta al
	movzx esi, al
	test esi, esi
	jz PM_UpdateViewAngles_370
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_380
	movaps xmm1, xmm2
PM_UpdateViewAngles_370:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	addss xmm1, [edi+0x10c]
	movss [esp], xmm1
	call AngleNormalize360
	fst dword [edi+0x10c]
	fstp dword [esp+0x4]
	mov eax, [edi+0x58c]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	test bl, bl
	jz PM_UpdateViewAngles_390
PM_UpdateViewAngles_470:
	mov dword [ebp-0x30], 0x1
	movss xmm0, dword [ebp-0x1c]
PM_UpdateViewAngles_360:
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
	call BG_CheckProne
	mov ebx, eax
	test al, al
	movss xmm1, dword [ebp-0x98]
	jz PM_UpdateViewAngles_400
	mov edx, [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	mov eax, edi
	call BG_CheckProneTurned
	test eax, eax
	movss xmm1, dword [ebp-0x98]
	jz PM_UpdateViewAngles_400
	movss xmm0, dword [ebp-0x1c]
	movss [edi+0x58c], xmm0
PM_UpdateViewAngles_350:
	mov edx, bg_prone_yawcap
	mov eax, [edx]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm1, xmm2
	jbe PM_UpdateViewAngles_410
	subss xmm1, xmm2
PM_UpdateViewAngles_510:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_420
	mov eax, [edx]
	movss xmm0, dword [edi+0x58c]
	subss xmm0, [eax+0xc]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [edi+0x10c]
PM_UpdateViewAngles_500:
	mov ebx, [ebp-0x30]
	test ebx, ebx
	jnz PM_UpdateViewAngles_430
PM_UpdateViewAngles_580:
	mov eax, [edi+0x108]
	mov [esp+0x4], eax
	mov eax, [edi+0x594]
	mov [esp], eax
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	ucomiss xmm0, [_float_45_00000000]
	ja PM_UpdateViewAngles_440
	ucomiss xmm0, [_float__45_00000000]
	jp PM_UpdateViewAngles_450
	jae PM_UpdateViewAngles_450
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	addss xmm1, xmm2
PM_UpdateViewAngles_490:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x64]
	movss [edi+0x64], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_460
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
	jmp PM_UpdateViewAngles_450
PM_UpdateViewAngles_390:
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x98], xmm1
	call AngleNormalize360
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x98]
	jmp PM_UpdateViewAngles_470
PM_UpdateViewAngles_380:
	movss xmm1, dword [_float__1_00000000]
	jmp PM_UpdateViewAngles_370
PM_UpdateViewAngles_100:
	movss xmm0, dword [ebx+0x128]
	addss xmm0, [esi]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebx+0x108]
	jmp PM_UpdateViewAngles_70
PM_UpdateViewAngles_200:
	mov edx, 0x1
	jmp PM_UpdateViewAngles_480
PM_UpdateViewAngles_300:
	movss xmm1, dword [_float__1_00000000]
	jmp PM_UpdateViewAngles_310
PM_UpdateViewAngles_440:
	movss xmm2, dword [_float_45_00000000]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	jmp PM_UpdateViewAngles_490
PM_UpdateViewAngles_410:
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe PM_UpdateViewAngles_500
	addss xmm1, xmm2
	jmp PM_UpdateViewAngles_510
PM_UpdateViewAngles_150:
	mov ebx, bg_ladder_yawcap
	mov eax, [ebx]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0xc]
	jp PM_UpdateViewAngles_520
	jz PM_UpdateViewAngles_140
PM_UpdateViewAngles_520:
	lea eax, [edi+0x74]
	mov [esp], eax
	call vectoyaw
	fstp dword [ebp-0xac]
	movss xmm3, dword [ebp-0xac]
	addss xmm3, [_float_180_00000000]
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss [esp], xmm3
	movss [ebp-0xa8], xmm3
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	mov eax, [ebx]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm2, xmm1
	movss xmm3, dword [ebp-0xa8]
	ja PM_UpdateViewAngles_530
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm2
	jbe PM_UpdateViewAngles_540
	addss xmm1, xmm2
PM_UpdateViewAngles_600:
	movaps xmm0, xmm1
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe PM_UpdateViewAngles_550
	mov eax, bg_ladder_yawcap
	mov eax, [eax]
	subss xmm3, [eax+0xc]
	movss [esp], xmm3
	call AngleNormalize360
	fstp dword [edi+0x10c]
	mov edx, [edi+0xc]
	jmp PM_UpdateViewAngles_140
PM_UpdateViewAngles_250:
	ucomiss xmm2, [_float_0_00000000]
	jbe PM_UpdateViewAngles_560
	movss xmm0, dword [edi+0x58c]
	subss xmm0, xmm1
	movss [ebp-0x38], xmm0
	jmp PM_UpdateViewAngles_570
PM_UpdateViewAngles_430:
	or dword [edi+0xc], 0x1000
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm1, dword [ebp-0x4c]
	movss [esp], xmm1
	call AngleDelta
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	ja PM_UpdateViewAngles_580
	jp PM_UpdateViewAngles_580
	mov eax, [edi+0x10c]
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0x34]
	movss [esp], xmm0
	call AngleDelta
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, [ebp-0x2c]
	ucomiss xmm0, [_float_0_00000000]
	jbe PM_UpdateViewAngles_580
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_0_98000002]
	movaps xmm1, xmm0
	addss xmm1, [edi+0x10c]
	movss [esp], xmm1
	movss [ebp-0x88], xmm0
	call AngleNormalize360
	fstp dword [edi+0x10c]
	movss xmm0, dword [ebp-0x88]
	addss xmm0, [edi+0x68]
	movss [edi+0x68], xmm0
	jmp PM_UpdateViewAngles_580
PM_UpdateViewAngles_240:
	mov dword [ebp-0x30], 0x0
	jmp PM_UpdateViewAngles_280
PM_UpdateViewAngles_420:
	mov eax, [edx]
	movss xmm0, dword [edi+0x58c]
	addss xmm0, [eax+0xc]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [edi+0x10c]
	jmp PM_UpdateViewAngles_500
PM_UpdateViewAngles_460:
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
	jmp PM_UpdateViewAngles_450
PM_UpdateViewAngles_330:
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
	call BG_CheckProne
	test al, al
	jz PM_UpdateViewAngles_590
	movss xmm0, dword [ebp-0x38]
	movss [edi+0x58c], xmm0
	jmp PM_UpdateViewAngles_280
PM_UpdateViewAngles_560:
	addss xmm1, [edi+0x58c]
	movss [ebp-0x38], xmm1
	jmp PM_UpdateViewAngles_570
PM_UpdateViewAngles_530:
	subss xmm2, xmm1
	movaps xmm1, xmm2
	jmp PM_UpdateViewAngles_600
PM_UpdateViewAngles_550:
	mov eax, bg_ladder_yawcap
	mov eax, [eax]
	addss xmm3, [eax+0xc]
	movss [esp], xmm3
	call AngleNormalize360
	fstp dword [edi+0x10c]
PM_UpdateViewAngles_540:
	mov edx, [edi+0xc]
	jmp PM_UpdateViewAngles_140


;PM_GroundSurfaceType(pml_t*)
PM_GroundSurfaceType:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x48]
	test ah, 0x20
	jnz PM_GroundSurfaceType_10
	and eax, 0x1f00000
	shr eax, 0x14
	pop ebp
	ret
PM_GroundSurfaceType_10:
	xor eax, eax
	pop ebp
	ret


;PM_GetEffectiveStance(playerState_s const*)
PM_GetEffectiveStance:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x114]
	cmp eax, 0x16
	jz PM_GetEffectiveStance_10
	cmp eax, 0x28
	jz PM_GetEffectiveStance_10
	cmp eax, 0xb
	setz al
	movzx eax, al
	pop ebp
	ret
PM_GetEffectiveStance_10:
	mov eax, 0x2
	pop ebp
	ret


;PM_ShouldMakeFootsteps(pmove_t*)
PM_ShouldMakeFootsteps:
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
	jz PM_ShouldMakeFootsteps_10
	cmp eax, 0x28
	jz PM_ShouldMakeFootsteps_10
	cmp eax, 0xb
	jz PM_ShouldMakeFootsteps_10
	test ecx, ecx
	jnz PM_ShouldMakeFootsteps_10
	mov eax, player_footstepsThreshhold
	mov eax, [eax]
	movss xmm0, dword [ebx+0xe4]
	ucomiss xmm0, [eax+0xc]
	setae al
	movzx eax, al
	pop ebx
	pop ebp
	ret
PM_ShouldMakeFootsteps_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
	nop


;PM_GetSprintLeftLastTime(playerState_s const*)
PM_GetSprintLeftLastTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call BG_GetMaxSprintTime
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
PM_GetViewHeightLerpTime:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0xb
	jz PM_GetViewHeightLerpTime_10
	cmp eax, 0x28
	jz PM_GetViewHeightLerpTime_20
PM_GetViewHeightLerpTime_30:
	mov eax, 0xc8
	pop ebp
	ret
PM_GetViewHeightLerpTime_20:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz PM_GetViewHeightLerpTime_30
PM_GetViewHeightLerpTime_10:
	mov eax, 0x190
	pop ebp
	ret
	nop


;PM_SetProneMovementOverride(playerState_s*)
PM_SetProneMovementOverride:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	test al, 0x1
	jz PM_SetProneMovementOverride_10
	or ah, 0x2
	mov [edx+0xc], eax
PM_SetProneMovementOverride_10:
	pop ebp
	ret
	nop


;Pmove(pmove_t*)
Pmove:
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
	jl Pmove_10
	add eax, 0x3e8
	cmp edx, eax
	jg Pmove_20
	mov dword [edi+0x48], 0x0
	mov ebx, [ebp-0x15c]
	mov ecx, [ebx]
	cmp [ebp-0x160], ecx
	jz Pmove_10
Pmove_250:
	lea eax, [edi+0x4]
	mov [ebp-0x170], eax
Pmove_220:
	mov eax, [ebp-0x160]
	sub eax, ecx
	cmp eax, 0x43
	mov edx, 0x42
	cmovge eax, edx
	add eax, ecx
	mov [edi+0x4], eax
	mov esi, [edi]
	mov [esp], edi
	call BG_AnimUpdatePlayerStateConditions
	mov edx, [esi+0xc]
	test edx, 0x20000
	jz Pmove_30
	mov byte [edi+0x1a], 0x7f
	mov edx, [esi+0xc]
Pmove_30:
	test dh, 0x8
	jz Pmove_40
	and dword [edi+0x8], 0x1300
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	lea edx, [esi+0x28]
	mov [ebp-0x168], edx
	xor eax, eax
	mov [esi+0x28], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
Pmove_880:
	mov eax, [edi+0x8]
	test eax, 0x100000
	jz Pmove_50
	and eax, 0x101b02
	mov [edi+0x8], eax
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
Pmove_50:
	mov edx, [esi+0xc]
	and dh, 0xef
	mov [esi+0xc], edx
	cmp dword [esi+0x4], 0x6
	jle Pmove_60
	and dword [edi+0x44], 0xfdffffff
	mov edx, [esi+0xc]
Pmove_60:
	test dl, 0x1
	jnz Pmove_70
Pmove_910:
	and dh, 0xfd
	mov [esi+0xc], edx
Pmove_980:
	mov eax, [esi+0x114]
	cmp eax, 0x16
	jz Pmove_80
	cmp eax, 0x28
	jz Pmove_80
	xor ebx, ebx
	cmp eax, 0xb
	setz bl
Pmove_890:
	and dl, 0x10
	jz Pmove_90
	cmp ebx, 0x1
	jz Pmove_100
Pmove_90:
	test byte [edi+0xa], 0x10
	jz Pmove_110
	mov eax, [esi+0xb0]
	or eax, 0x200000
	mov [esi+0xb0], eax
Pmove_860:
	and eax, 0xffffffbf
	mov [esi+0xb0], eax
	cmp dword [esi+0x4], 0x5
	jz Pmove_120
	test byte [esi+0xd], 0x4
	jnz Pmove_120
	mov eax, [esi+0xec]
	test eax, eax
	jz Pmove_130
	cmp eax, 0x5
	jz Pmove_130
Pmove_120:
	cmp dword [esi+0x4], 0x6
	jg Pmove_140
	test dword [edi+0x8], 0x101
	jnz Pmove_140
	and dword [esi+0xc], 0xfffffbff
Pmove_140:
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
	jle Pmove_150
	mov eax, 0xc8
	cmp edx, 0xc9
	cmovl eax, [ebp-0xe0]
	mov [ebp-0xe0], eax
Pmove_940:
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
	call PM_AdjustAimSpreadScale
	movzx eax, byte [edi+0x10c]
	mov [esp+0xc], eax
	mov edx, [ebp-0x170]
	mov [esp+0x8], edx
	cvtsi2ss xmm0, dword [ebp-0xe0]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call PM_UpdateViewAngles
	lea ecx, [ebp-0xf0]
	mov [esp+0xc], ecx
	lea eax, [ebp-0xfc]
	mov [esp+0x8], eax
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	lea eax, [esi+0x108]
	mov [esp], eax
	call AngleVectors
	cmp byte [edi+0x1a], 0x0
	jl Pmove_160
	jle Pmove_170
Pmove_240:
	and dword [esi+0xc], 0xffffffdf
Pmove_230:
	cmp dword [esi+0x4], 0x5
	jle Pmove_180
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
Pmove_180:
	sub ebx, 0x1
	jz Pmove_190
Pmove_920:
	mov [esp], esi
	call Mantle_ClearHint
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_MeleeChargeUpdate
	cmp dword [esi+0x4], 0x8
	ja Pmove_200
	mov eax, [esi+0x4]
	jmp dword [eax*4+Pmove_jumptab_0]
Pmove_2670:
	mov eax, [esi+0xc]
	test al, 0x8
	jz Pmove_210
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
Pmove_210:
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call PM_UpdateAimDownSightLerp
Pmove_310:
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
	jnz Pmove_220
Pmove_10:
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Pmove_170:
	cmp byte [edi+0x1b], 0x0
	jz Pmove_230
	jmp Pmove_240
Pmove_20:
	mov eax, edx
	sub eax, 0x3e8
	mov [ecx], eax
	mov dword [edi+0x48], 0x0
	mov ebx, [ebp-0x15c]
	mov ecx, [ebx]
	cmp [ebp-0x160], ecx
	jnz Pmove_250
	jmp Pmove_10
Pmove_200:
	mov edx, [esi+0xc]
	mov eax, [esi+0xb0]
	test ah, 0x3
	jnz Pmove_260
Pmove_330:
	and dl, 0x4
	jz Pmove_270
Pmove_1280:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call Mantle_Check
	mov eax, [esi+0xc]
	test al, 0x4
	jz Pmove_280
	test al, 0x8
	jz Pmove_290
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
Pmove_290:
	mov dword [esi+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xdc], 0x0
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	mov edx, ebx
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_300
	test byte [edi+0x9], 0x8
	jz Pmove_300
	test al, 0x1
	jnz Pmove_300
	test al, 0x10
	jz Pmove_300
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_300
	cmp eax, 0x9
	jz Pmove_300
	cmp eax, 0xb
	jz Pmove_300
	cmp eax, 0xa
	jz Pmove_300
	cmp eax, 0x8
	jz Pmove_300
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_300:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_CheckDuck
	lea eax, [ebp-0x108]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	call Mantle_Move
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call PM_Weapon
	jmp Pmove_310
Pmove_2680:
	mov edx, [esi+0xc]
	test dl, 0x8
	jnz Pmove_320
	mov eax, [esi+0xb0]
	and ah, 0xfc
	mov [esi+0xb0], eax
Pmove_1520:
	test ah, 0x3
	jz Pmove_330
Pmove_260:
	test dl, 0x8
	jz Pmove_340
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
Pmove_340:
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
	call PM_UpdateAimDownSightFlag
	mov edx, ebx
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_350
	test byte [edi+0x9], 0x8
	jz Pmove_350
	test al, 0x1
	jz Pmove_360
Pmove_350:
	mov edx, [edi]
	test byte [edi+0x2a], 0x4
	jnz Pmove_370
	test byte [edi+0xa], 0x4
	jz Pmove_370
	mov eax, [edx+0x10]
	test al, 0x40
	jnz Pmove_380
	or eax, 0x40
	mov [edx+0x10], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x40
	call BG_AddPredictableEventToPlayerstate
Pmove_370:
	mov eax, [esi+0x18]
	test eax, eax
	jz Pmove_390
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_400
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_410
Pmove_1880:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
Pmove_390:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_420
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_420:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_430
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_430:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_CheckDuck
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call PM_UpdateAimDownSightLerp
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_Footsteps
	mov [esp], esi
	call PM_ResetWeaponState
	jmp Pmove_310
Pmove_2640:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz Pmove_440
Pmove_1510:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_450
	test byte [edi+0x9], 0x8
	jz Pmove_450
	test al, 0x1
	jnz Pmove_450
	test al, 0x10
	jz Pmove_450
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_450
	cmp eax, 0x9
	jz Pmove_450
	cmp eax, 0xb
	jz Pmove_450
	cmp eax, 0xa
	jz Pmove_450
	cmp eax, 0x8
	jz Pmove_450
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_450:
	mov eax, [esi+0x18]
	test eax, eax
	jnz Pmove_460
Pmove_1550:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_470
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_470:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_480
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_480:
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
	ja Pmove_490
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
Pmove_2090:
	movsx eax, byte [edi+0x1a]
	cvtsi2ss xmm3, eax
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm2, eax
	mov eax, [edi+0x8]
	pxor xmm4, xmm4
	test al, al
	js Pmove_500
	test al, 0x40
	jnz Pmove_510
Pmove_1570:
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
	jnz Pmove_520
	jp Pmove_520
	pxor xmm5, xmm5
Pmove_1960:
	mov edx, 0x1
	mov eax, 0x4
Pmove_530:
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
	jnz Pmove_530
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
	jb Pmove_540
	movss xmm1, dword [ebp-0x16c]
Pmove_2100:
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
	call PM_Accelerate
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
	call PM_UpdateAimDownSightLerp
	jmp Pmove_310
Pmove_2630:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz Pmove_550
Pmove_1400:
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
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_560
	test byte [edi+0x9], 0x8
	jz Pmove_560
	test al, 0x1
	jnz Pmove_560
	test al, 0x10
	jz Pmove_560
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_560
	cmp eax, 0x9
	jz Pmove_560
	cmp eax, 0xb
	jz Pmove_560
	cmp eax, 0xa
	jz Pmove_560
	cmp eax, 0x8
	jz Pmove_560
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_560:
	mov eax, [esi+0x18]
	test eax, eax
	jnz Pmove_570
Pmove_1470:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_580
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_580:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_590
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_590:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_CheckDuck
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_Footsteps
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call PM_Weapon
	jmp Pmove_310
Pmove_2660:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz Pmove_600
Pmove_1390:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_610
	test byte [edi+0x9], 0x8
	jz Pmove_610
	test al, 0x1
	jnz Pmove_610
	test al, 0x10
	jz Pmove_610
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_610
	cmp eax, 0x9
	jz Pmove_610
	cmp eax, 0xb
	jz Pmove_610
	cmp eax, 0xa
	jz Pmove_610
	cmp eax, 0x8
	jz Pmove_610
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_610:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_CheckDuck
	mov eax, [esi+0x18]
	test eax, eax
	jnz Pmove_620
Pmove_1500:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_630
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_630:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_640
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_640:
	mov esi, [edi]
	lea edx, [ebp-0x108]
	mov eax, esi
	call PM_Friction
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
	jz Pmove_650
	cvtsi2ss xmm3, dword [esi+0x60]
	cvtsi2ss xmm0, ecx
	mulss xmm3, xmm0
	mulss xmm1, [_float_127_00000000]
	divss xmm3, xmm1
	test byte [esi+0xc], 0x40
	jnz Pmove_660
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x5c]
	jp Pmove_660
	jnz Pmove_660
Pmove_1600:
	mov eax, [esi+0x4]
	cmp eax, 0x2
	jz Pmove_670
	cmp eax, 0x3
	jz Pmove_680
	cmp eax, 0x4
	jnz Pmove_690
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm3, [eax+0xc]
Pmove_690:
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jnz Pmove_700
	jp Pmove_700
Pmove_650:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
Pmove_1980:
	mov eax, [esi+0x60]
	test eax, eax
	jnz Pmove_710
Pmove_1370:
	movss xmm2, dword [ebp-0x1c]
Pmove_1380:
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
	jb Pmove_720
	movss xmm1, dword [_float_1_00000000]
Pmove_2110:
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
	call PM_Accelerate
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call PM_StepSlideMove
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call PM_UpdateAimDownSightLerp
	jmp Pmove_310
Pmove_2650:
	mov eax, [esi+0xc]
	test al, 0x8
	jnz Pmove_730
Pmove_1560:
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_740
	test byte [edi+0x9], 0x8
	jz Pmove_740
	test al, 0x1
	jnz Pmove_740
	test al, 0x10
	jz Pmove_740
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_740
	cmp eax, 0x9
	jz Pmove_740
	cmp eax, 0xb
	jz Pmove_740
	cmp eax, 0xa
	jz Pmove_740
	cmp eax, 0x8
	jz Pmove_740
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_740:
	mov eax, [esi+0x18]
	test eax, eax
	jnz Pmove_750
Pmove_1440:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_760
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_760:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_770
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_770:
	mov ebx, [edi]
	mov dword [ebx+0x114], 0x3c
	movsx eax, byte [edi+0x1a]
	cvtsi2ss xmm3, eax
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm4, eax
	mov eax, [edi+0x8]
	pxor xmm5, xmm5
	test al, al
	jns Pmove_780
	movss xmm5, dword [_float_127_00000000]
	test al, 0x40
	jnz Pmove_790
Pmove_1410:
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jnz Pmove_800
	jp Pmove_800
	ucomiss xmm4, xmm0
	jz Pmove_810
Pmove_800:
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
	ja Pmove_820
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
Pmove_1870:
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
	jnz Pmove_830
	jp Pmove_830
	pxor xmm6, xmm6
Pmove_1920:
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
Pmove_840:
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
	jnz Pmove_840
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
	jb Pmove_850
	movss xmm1, dword [ebp-0x16c]
Pmove_2080:
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
	call PM_Accelerate
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
	call PM_UpdateAimDownSightLerp
	jmp Pmove_310
Pmove_110:
	mov eax, [esi+0xb0]
	and eax, 0xffdfffff
	mov [esi+0xb0], eax
	jmp Pmove_860
Pmove_40:
	and dh, 0x4
	jz Pmove_870
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
	jmp Pmove_880
Pmove_80:
	mov ebx, 0x2
	jmp Pmove_890
Pmove_70:
	mov [esp], esi
	call BG_UsingSniperScope
	test eax, eax
	jz Pmove_900
	mov edx, [esi+0xc]
	jmp Pmove_910
Pmove_190:
	test byte [esi+0xd], 0x2
	jz Pmove_920
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	jmp Pmove_920
Pmove_870:
	cmp dword [esi+0xec], 0x5
	jz Pmove_930
Pmove_1290:
	lea ebx, [esi+0x28]
	mov [ebp-0x168], ebx
	jmp Pmove_880
Pmove_160:
	or dword [esi+0xc], 0x20
	jmp Pmove_230
Pmove_150:
	mov dword [ebp-0xe0], 0x1
	jmp Pmove_940
Pmove_130:
	mov [esp], esi
	call PM_WeaponAmmoAvailable
	test eax, eax
	jz Pmove_120
	test byte [edi+0x8], 0x1
	jz Pmove_120
	or dword [esi+0xb0], 0x40
	jmp Pmove_120
Pmove_900:
	movzx eax, byte [edi+0x1a]
	movzx edx, byte [edi+0x3a]
	cmp al, dl
	jz Pmove_950
	movsx eax, al
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	movsx eax, dl
	cvtsi2ss xmm0, eax
	andps xmm0, xmm2
	ucomiss xmm1, xmm0
	ja Pmove_960
Pmove_950:
	movzx eax, byte [edi+0x1b]
	movzx edx, byte [edi+0x3b]
	cmp al, dl
	jz Pmove_970
	movsx eax, al
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	movsx eax, dl
	cvtsi2ss xmm0, eax
	andps xmm0, xmm2
	ucomiss xmm1, xmm0
	ja Pmove_960
Pmove_970:
	mov edx, [esi+0xc]
	test dl, 0x10
	jnz Pmove_980
	mov eax, [esi+0xec]
	cmp eax, 0x4
	jbe Pmove_910
	cmp eax, 0x7
	jnz Pmove_980
	jmp Pmove_910
Pmove_960:
	mov [esp], esi
	call PM_InteruptWeaponWithProneMove
	test eax, eax
	jnz Pmove_990
	mov edx, [esi+0xc]
	jmp Pmove_980
Pmove_280:
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call PM_UpdatePronePitch
	mov eax, [esi+0x18]
	test eax, eax
	jz Pmove_1000
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_1010
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_1020
Pmove_2430:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
Pmove_1000:
	mov edx, [esi+0x88]
	test edx, edx
	jle Pmove_1030
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x88], eax
Pmove_1030:
	mov edx, [esi+0x90]
	test edx, edx
	jle Pmove_1040
	xor eax, eax
	sub edx, [ebp-0xe0]
	cmovns eax, edx
	mov [esi+0x90], eax
Pmove_1040:
	cmp dword [esi+0x4], 0x5
	jle Pmove_1050
	mov eax, [ebp-0xdc]
	test eax, eax
	jnz Pmove_1060
Pmove_1050:
	mov ebx, [edi]
	mov eax, [ebp-0xdc]
	test eax, eax
	jz Pmove_1070
	mov edx, [ebx+0xc]
	and dh, 0xdf
	mov [ebx+0xc], edx
Pmove_1300:
	mov eax, [ebx+0x18]
	test eax, eax
	jz Pmove_1080
	test dl, 0x8
	jz Pmove_1090
Pmove_1080:
	mov eax, [ebp-0xdc]
	test eax, eax
	jz Pmove_1100
	movss xmm7, dword [_float_8_00000000]
Pmove_1310:
	mov eax, edx
	shr eax, 0x3
	mov ecx, eax
	and ecx, 0x1
	jz Pmove_1110
	cmp dword [ebx+0x70], 0x3ff
	jz Pmove_1120
Pmove_1110:
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
	jb Pmove_1130
	movss xmm0, dword [_float_1_00000000]
Pmove_2070:
	movaps xmm4, xmm2
	mulss xmm4, xmm0
	movaps xmm5, xmm3
	mulss xmm5, xmm0
	pxor xmm6, xmm6
	mulss xmm6, xmm0
	mov byte [ebp-0x139], 0x0
Pmove_2130:
	cmp dword [ebx+0x4], 0x6
	jle Pmove_1140
	mov dword [ebx+0x70], 0x3ff
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xd4], 0x0
	mov dword [ebp-0xdc], 0x0
	mov eax, [ebx+0xc]
	test al, 0x8
	jz Pmove_1150
	mov edx, eax
Pmove_1720:
	or dh, 0x20
	and edx, 0xfffffff7
	mov [ebx+0xc], edx
Pmove_1150:
	test byte [esi+0xc], 0x8
	jnz Pmove_1160
	mov ebx, [ebp-0xdc]
	test ebx, ebx
	jz Pmove_1170
	mov ebx, [edi]
	mov edx, [ebx+0xc]
	test dh, 0x40
	jnz Pmove_1180
Pmove_2120:
	test dx, dx
	jns Pmove_1190
	movsx eax, byte [edi+0x1b]
	cvtsi2ss xmm0, eax
	mov eax, player_sprintStrafeSpeedScale
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	mov [edi+0x1b], al
Pmove_1190:
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call Jump_Check
	test al, al
	jnz Pmove_1170
	lea edx, [ebp-0x108]
	mov eax, ebx
	call PM_Friction
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
	jz Pmove_1200
	mov eax, [ebp-0x11c]
	movss xmm0, dword [eax+0xf4]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	ja Pmove_1210
Pmove_1200:
	mov byte [ebp-0x121], 0x0
Pmove_2390:
	movsx eax, cl
	movsx edx, dl
	imul eax, eax
	imul edx, edx
	add eax, edx
	cvtsi2ss xmm0, eax
	sqrtss xmm4, xmm0
	test cl, cl
	js Pmove_1220
	movss xmm0, dword [_data16_7fffffff]
	movss xmm3, dword [ebp-0x114]
	andps xmm3, xmm0
Pmove_2510:
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
	jnz Pmove_1230
	jp Pmove_1230
	pxor xmm2, xmm2
Pmove_2220:
	mov edx, [ebx+0xa0]
	test edx, edx
	jz Pmove_1240
	mov eax, player_dmgtimer_maxTime
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz Pmove_1250
	jnp Pmove_1240
Pmove_1250:
	mov eax, player_dmgtimer_minScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	xorps xmm1, [_data16_80000000]
	divss xmm1, xmm0
	cvtsi2ss xmm0, edx
	mulss xmm1, xmm0
	addss xmm1, [_float_1_00000000]
	jmp Pmove_1260
Pmove_270:
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call PM_UpdateAimDownSightFlag
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_UpdateSprint
	mov edx, [edi]
	mov eax, [edx+0xc]
	mov ecx, eax
	and ecx, 0xffffffbf
	mov [edx+0xc], ecx
	cmp dword [edx+0x4], 0x6
	jg Pmove_1270
	test byte [edi+0x9], 0x8
	jz Pmove_1270
	test al, 0x1
	jnz Pmove_1270
	test al, 0x10
	jz Pmove_1270
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_1270
	cmp eax, 0x9
	jz Pmove_1270
	cmp eax, 0xb
	jz Pmove_1270
	cmp eax, 0xa
	jz Pmove_1270
	cmp eax, 0x8
	jz Pmove_1270
	or ecx, 0x40
	mov [edx+0xc], ecx
Pmove_1270:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_CheckDuck
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_GroundTrace
	jmp Pmove_1280
Pmove_400:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_390
Pmove_100:
	mov [esp], esi
	call BG_UsingSniperScope
	test eax, eax
	jnz Pmove_90
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	jmp Pmove_90
Pmove_930:
	mov eax, [esi+0xe8]
	test eax, eax
	jz Pmove_1290
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, [eax+0x5b8]
	test edx, edx
	jz Pmove_1290
	mov byte [edi+0x1a], 0x0
	mov byte [edi+0x1b], 0x0
	and dword [edi+0x8], 0xfffffb3f
	lea ecx, [esi+0x28]
	mov [ebp-0x168], ecx
	xor eax, eax
	mov [esi+0x28], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	jmp Pmove_880
Pmove_1070:
	mov edx, [ebx+0xc]
	jmp Pmove_1300
Pmove_1100:
	movss xmm7, dword [_float_30_00000000]
	jmp Pmove_1310
Pmove_360:
	test al, 0x10
	jz Pmove_350
	mov eax, [edx+0xec]
	cmp eax, 0x7
	jz Pmove_350
	cmp eax, 0x9
	jz Pmove_350
	cmp eax, 0xb
	jz Pmove_350
	cmp eax, 0xa
	jz Pmove_350
	cmp eax, 0x8
	jz Pmove_350
	or ecx, 0x40
	mov [edx+0xc], ecx
	jmp Pmove_350
Pmove_380:
	and eax, 0xffffffbf
	mov [edx+0x10], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x41
	call BG_AddPredictableEventToPlayerstate
	jmp Pmove_370
Pmove_710:
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_float_127_00000000]
	mulss xmm1, xmm2
	divss xmm1, dword [_float_16129_00000000]
	test byte [esi+0xc], 0x40
	jnz Pmove_1320
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x5c]
	jp Pmove_1320
	jnz Pmove_1320
Pmove_1610:
	mov eax, [esi+0x4]
	cmp eax, 0x2
	jz Pmove_1330
	cmp eax, 0x3
	jz Pmove_1340
	cmp eax, 0x4
	jnz Pmove_1350
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
Pmove_1350:
	mov eax, [edi+0x8]
	test al, 0x40
	jz Pmove_1360
	movaps xmm0, xmm1
	mulss xmm0, [_float__127_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
Pmove_1360:
	test al, al
	jns Pmove_1370
	mulss xmm1, xmm2
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	movaps xmm2, xmm1
	jmp Pmove_1380
Pmove_600:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp Pmove_1390
Pmove_550:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp Pmove_1400
Pmove_780:
	test al, 0x40
	jz Pmove_1410
Pmove_790:
	subss xmm5, [_float_127_00000000]
	jmp Pmove_1410
Pmove_750:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_1420
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_1430
Pmove_2480:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp Pmove_1440
Pmove_570:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_1450
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_1460
Pmove_2500:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp Pmove_1470
Pmove_620:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_1480
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_1490
Pmove_2490:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp Pmove_1500
Pmove_440:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp Pmove_1510
Pmove_320:
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	mov eax, [esi+0xb0]
	and ah, 0xfc
	mov [esi+0xb0], eax
	jmp Pmove_1520
Pmove_460:
	mov edx, [ebp-0xe0]
	cmp eax, edx
	jg Pmove_1530
	mov edx, [esi+0xc]
	test dh, 0x40
	jnz Pmove_1540
Pmove_2470:
	and edx, 0xffffbe7f
	mov [esi+0xc], edx
	mov dword [esi+0x18], 0x0
	jmp Pmove_1550
Pmove_730:
	mov edx, eax
	or dh, 0x20
	and edx, 0xfffffff7
	mov [esi+0xc], edx
	jmp Pmove_1560
Pmove_500:
	movss xmm4, dword [_float_127_00000000]
	test al, 0x40
	jz Pmove_1570
Pmove_510:
	subss xmm4, [_float_127_00000000]
	jmp Pmove_1570
Pmove_990:
	and dword [esi+0xc], 0xfffffdff
	mov [esp], esi
	call PM_ExitAimDownSight
	mov edx, [esi+0xc]
	jmp Pmove_980
Pmove_1010:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_1000
Pmove_1090:
	test edx, 0x180
	jnz Pmove_1150
	jmp Pmove_1080
Pmove_1060:
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
	jae Pmove_1580
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
	jb Pmove_1590
	movss xmm1, dword [_float_1_00000000]
Pmove_2570:
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
	jmp Pmove_1050
Pmove_660:
	mulss xmm3, [_float_0_40000001]
	jmp Pmove_1600
Pmove_1320:
	mulss xmm1, [_float_0_40000001]
	jmp Pmove_1610
Pmove_1170:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_AirMove
Pmove_1860:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_GroundTrace
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_Footsteps
	lea ebx, [ebp-0x108]
	mov [esp+0x4], ebx
	mov [esp], edi
	call PM_Weapon
	mov ebx, [edi]
	movss xmm1, dword [edi+0xe4]
	mov eax, bg_foliagesnd_minspeed
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm2, xmm1
	jbe Pmove_1620
	mov eax, bg_foliagesnd_resetinterval
	mov edx, [eax]
	mov eax, [ebx+0x54]
	add eax, [edx+0xc]
	cmp eax, [edi+0x4]
	jge Pmove_1630
	mov dword [ebx+0x54], 0x0
Pmove_1630:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm0
Pmove_1650:
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
	jbe Pmove_1640
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
Pmove_1660:
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
	call Sys_SnapVector
	jmp Pmove_310
Pmove_1620:
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
	jge Pmove_1650
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
	call PM_playerTrace
	cmp byte [ebp-0x5f], 0x0
	jz Pmove_1650
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	call BG_AddPredictableEventToPlayerstate
	mov eax, [edi+0x4]
	mov [ebx+0x54], eax
	jmp Pmove_1650
Pmove_1640:
	movss xmm1, dword [ebp-0x164]
	jmp Pmove_1660
Pmove_1140:
	test dh, 0x20
	jnz Pmove_1670
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz Pmove_1680
	cmp eax, 0x28
	jz Pmove_1680
	cmp eax, 0xb
	jz Pmove_1670
Pmove_1680:
	mov eax, [edi+0x4]
	sub eax, [ebx+0x80]
	cmp eax, 0x12b
	jle Pmove_1670
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
	jbe Pmove_1690
	mov dword [ebp-0x80], 0x41000000
Pmove_1690:
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
	call PM_playerTrace
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	movss xmm7, dword [ebp-0x1b8]
	ja Pmove_1700
Pmove_2580:
	mov eax, [ebx+0xc]
	test al, 0x8
	jz Pmove_1710
	or ah, 0x20
	and eax, 0xfffffff7
	mov [ebx+0xc], eax
Pmove_1710:
	cmp byte [ebp-0x139], 0x0
	jz Pmove_1150
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call BG_AnimScriptEvent
	jmp Pmove_1150
Pmove_1670:
	test ecx, ecx
	jz Pmove_1150
	jmp Pmove_1720
Pmove_1160:
	mov eax, [edi]
	mov [ebp-0x12c], eax
	lea edx, [ebp-0x108]
	mov [esp+0x4], edx
	mov [esp], edi
	call Jump_Check
	test al, al
	jnz Pmove_1170
	movss xmm3, dword [_float_0_25000000]
	addss xmm3, [ebp-0x100]
	mulss xmm3, [_float_2_50000000]
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm0
	ucomiss xmm3, xmm0
	jbe Pmove_1730
Pmove_2530:
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
	jb Pmove_1740
	movss xmm1, dword [ebp-0x16c]
Pmove_2520:
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
	call Vec3NormalizeTo
	fstp st0
	mov ecx, [ebp-0x12c]
	add ecx, 0x74
	mov [ebp-0x134], ecx
	lea ebx, [ebp-0xfc]
	mov [esp+0x8], ebx
	mov [esp+0x4], ecx
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call ProjectPointOnPlane
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
	jnz Pmove_1750
	pxor xmm1, xmm1
Pmove_2330:
	pxor xmm2, xmm2
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm2
	movzx eax, byte [edi+0x1a]
	test al, al
	jz Pmove_1760
	mulss xmm3, [_float_0_50000000]
	mulss xmm3, xmm1
	movsx eax, al
	cvtsi2ss xmm0, eax
	mulss xmm3, xmm0
	movss [ebp-0x28], xmm3
Pmove_1760:
	movzx eax, byte [edi+0x1b]
	test al, al
	jz Pmove_1770
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
Pmove_1770:
	lea ecx, [ebp-0x88]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x30]
	mov [esp], ebx
	movss [ebp-0x198], xmm2
	call Vec3NormalizeTo
	movss xmm1, dword [_float_9_00000000]
	fstp dword [ebp-0x1bc]
	movss xmm0, dword [ebp-0x1bc]
	lea ecx, [ebp-0x88]
	lea edx, [ebp-0x108]
	mov eax, [ebp-0x12c]
	call PM_Accelerate
	cmp byte [edi+0x1a], 0x0
	movss xmm2, dword [ebp-0x198]
	jnz Pmove_1780
	mov eax, [ebp-0x12c]
	movss xmm1, dword [eax+0x30]
	ucomiss xmm1, xmm2
	jbe Pmove_1790
	cvtsi2ss xmm0, dword [eax+0x58]
	mulss xmm0, [ebp-0xe4]
	subss xmm1, xmm0
	movss [eax+0x30], xmm1
	ucomiss xmm2, xmm1
	ja Pmove_1800
Pmove_1780:
	cmp byte [edi+0x1b], 0x0
	jz Pmove_1810
Pmove_2450:
	mov eax, [ebp-0xdc]
	test eax, eax
	jnz Pmove_1820
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
	jnz Pmove_1830
	jp Pmove_1830
	ucomiss xmm0, [ebx+0x2c]
	jnz Pmove_1830
	jp Pmove_1830
	ucomiss xmm0, [ebx+0x30]
	jp Pmove_1830
	jz Pmove_1820
Pmove_1830:
	movss xmm0, dword [eax]
	movss xmm1, dword [edx]
	mov ebx, [ebp-0x12c]
	movss xmm2, dword [ebx+0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm2, xmm0
	jb Pmove_1820
	movss xmm1, dword [_float__50_00000000]
	mov ebx, [ebp-0x134]
	movss xmm0, dword [ebx]
	mulss xmm0, xmm1
	addss xmm0, [eax]
	movss [eax], xmm0
	mulss xmm1, [ecx]
	addss xmm1, [edx]
	movss [edx], xmm1
Pmove_1820:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call PM_StepSlideMove
	mov edx, [ebp-0x134]
	mov [esp], edx
	call vectoyaw
	fstp dword [ebp-0x1bc]
	movss xmm0, dword [ebp-0x1bc]
	mov ecx, [ebp-0x12c]
	mov eax, [ecx+0x10c]
	mov [esp+0x4], eax
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call AngleDelta
	fstp dword [ebp-0x130]
	cvttss2si eax, [ebp-0x130]
	mov edx, eax
	test eax, eax
	js Pmove_1840
Pmove_2540:
	cmp edx, 0x4b
	jg Pmove_1850
	mov edx, eax
Pmove_2420:
	movsx eax, dl
	mov ebx, [ebp-0x12c]
	mov [ebx+0xac], eax
	jmp Pmove_1860
Pmove_810:
	jp Pmove_800
	ucomiss xmm5, xmm0
	jp Pmove_800
	jnz Pmove_800
	movss xmm2, dword [_float_1_00000000]
	movss [ebp-0x16c], xmm2
	lea esi, [ebx+0x28]
Pmove_820:
	mov edx, vec3_origin
	mov eax, [edx]
	mov [ebx+0x28], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	jmp Pmove_1870
Pmove_410:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_1880
Pmove_830:
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
	jz Pmove_1890
Pmove_2270:
	mulss xmm6, [_float_0_40000001]
Pmove_2280:
	mov eax, [ebx+0x4]
	cmp eax, 0x2
	jz Pmove_1900
	cmp eax, 0x3
	jz Pmove_1910
	cmp eax, 0x4
	jnz Pmove_1920
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm6, [eax+0xc]
	jmp Pmove_1920
Pmove_520:
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
	jz Pmove_1930
Pmove_2250:
	mulss xmm5, [_float_0_40000001]
Pmove_2260:
	mov eax, [ebx+0x4]
	cmp eax, 0x2
	jz Pmove_1940
	cmp eax, 0x3
	jz Pmove_1950
	cmp eax, 0x4
	jnz Pmove_1960
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm5, [eax+0xc]
	jmp Pmove_1960
Pmove_700:
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
Pmove_1970:
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
	jnz Pmove_1970
	jmp Pmove_1980
Pmove_1420:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_1440
Pmove_1450:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_1470
Pmove_1530:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_1550
Pmove_1480:
	sub eax, edx
	mov [esi+0x18], eax
	jmp Pmove_1500
Pmove_1240:
	movss xmm1, dword [_float_1_00000000]
Pmove_1260:
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
	call Vec2Normalize
	fstp st0
	lea edx, [ebp-0xfc]
	mov [esp], edx
	call Vec2Normalize
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
	call Vec3NormalizeTo
	fstp dword [ebp-0x128]
	movss xmm0, dword [ebp-0x10c]
	mulss xmm0, [ebp-0x128]
	movss [ebp-0x10c], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], eax
	call PM_ProjectVelocity
	mov eax, [ebx+0x114]
	cmp eax, 0x16
	jz Pmove_1990
	cmp eax, 0x28
	jz Pmove_1990
	cmp eax, 0xb
	setz al
	movzx eax, al
Pmove_2240:
	test byte [ebp-0xc0], 0x2
	jnz Pmove_2000
	mov edx, [ebx+0xc]
	test dh, 0x1
	jz Pmove_2010
Pmove_2230:
	movss xmm1, dword [_float_1_00000000]
Pmove_2380:
	test dl, dl
	jns Pmove_2020
	mulss xmm1, [_float_0_25000000]
Pmove_2020:
	movss xmm0, dword [ebp-0x10c]
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x108]
	mov eax, ebx
	call PM_Accelerate
	test byte [ebp-0xc0], 0x2
	jnz Pmove_2030
	test byte [ebx+0xd], 0x1
	jnz Pmove_2030
Pmove_2060:
	lea eax, [ebx+0x28]
	mov [esp+0x8], eax
	lea edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], eax
	call PM_ProjectVelocity
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x28]
	jnz Pmove_2040
	jp Pmove_2040
	ucomiss xmm0, [ebx+0x2c]
	jp Pmove_2040
	jnz Pmove_2040
Pmove_2050:
	lea edx, [ebp-0x108]
	mov eax, edi
	call PM_SetMovementDir
	jmp Pmove_1860
Pmove_2040:
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x108]
	mov [esp+0x4], ecx
	mov [esp], edi
	call PM_StepSlideMove
	jmp Pmove_2050
Pmove_2030:
	cvtsi2ss xmm1, dword [ebx+0x58]
	mulss xmm1, [ebp-0xe4]
	movss xmm0, dword [ebx+0x30]
	subss xmm0, xmm1
	movss [ebx+0x30], xmm0
	jmp Pmove_2060
Pmove_1130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp Pmove_2070
Pmove_850:
	movss xmm1, dword [ebp-0x16c]
	divss xmm1, xmm2
	jmp Pmove_2080
Pmove_490:
	mov edx, vec3_origin
	mov eax, [edx]
	mov [ebx+0x28], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	jmp Pmove_2090
Pmove_540:
	movss xmm1, dword [ebp-0x16c]
	divss xmm1, xmm2
	jmp Pmove_2100
Pmove_720:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Pmove_2110
Pmove_1180:
	mov [esp], ebx
	call Jump_ApplySlowdown
	mov edx, [ebx+0xc]
	jmp Pmove_2120
Pmove_1120:
	lea eax, [ebx+0x74]
	movss xmm0, dword [_data16_80000000]
	movss xmm4, dword [ebx+0x74]
	xorps xmm4, xmm0
	movss xmm5, dword [eax+0x4]
	xorps xmm5, xmm0
	movss xmm6, dword [eax+0x8]
	xorps xmm6, xmm0
	mov byte [ebp-0x139], 0x1
	jmp Pmove_2130
Pmove_1230:
	mov eax, [ebp-0x11c]
	cvtsi2ss xmm1, dword [eax+0x60]
	mulss xmm1, xmm2
	mulss xmm4, [_float_127_00000000]
	divss xmm1, xmm4
	test byte [ebp-0x120], 0x40
	jz Pmove_2140
Pmove_2340:
	mulss xmm1, [_float_0_40000001]
Pmove_2350:
	cmp word [ebp-0x120], 0x0
	jns Pmove_2150
	mov eax, player_sprintSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
Pmove_2150:
	mov edx, [ebp-0x11c]
	mov eax, [edx+0x4]
	cmp eax, 0x2
	jz Pmove_2160
	cmp eax, 0x3
	jnz Pmove_2170
	mulss xmm1, [_float_6_00000000]
Pmove_2550:
	mov ecx, [ebp-0x11c]
	mov eax, [ecx+0xe8]
	mov [esp], eax
	movss [ebp-0x188], xmm1
	call BG_GetWeaponDef
	mov edx, [ebp-0x11c]
	mov ecx, [edx+0xe8]
	test ecx, ecx
	movss xmm1, dword [ebp-0x188]
	jz Pmove_2180
	movss xmm0, dword [eax+0x418]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe Pmove_2190
	mov edx, [edx+0xc]
	test dl, 0x40
	jnz Pmove_2200
	cmp byte [ebp-0x121], 0x0
	jnz Pmove_2200
Pmove_2400:
	mulss xmm1, xmm0
Pmove_2410:
	and edx, 0x10000
	jnz Pmove_2210
Pmove_2560:
	movaps xmm2, xmm1
	mov ecx, [ebp-0x11c]
	mulss xmm2, [ecx+0x5dc]
	jmp Pmove_2220
Pmove_2000:
	mov edx, [ebx+0xc]
	jmp Pmove_2230
Pmove_1990:
	mov eax, 0x2
	jmp Pmove_2240
Pmove_1930:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jp Pmove_2250
	jz Pmove_2260
	jmp Pmove_2250
Pmove_1890:
	pxor xmm7, xmm7
	ucomiss xmm7, [ebx+0x5c]
	jp Pmove_2270
	jz Pmove_2280
	jmp Pmove_2270
Pmove_1750:
	mov ebx, [ebp-0x12c]
	cvtsi2ss xmm1, dword [ebx+0x60]
	cvtsi2ss xmm0, ecx
	mulss xmm1, xmm0
	mulss xmm2, [_float_127_00000000]
	divss xmm1, xmm2
	test byte [ebx+0xc], 0x40
	jnz Pmove_2290
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x5c]
	jp Pmove_2290
	jz Pmove_2300
Pmove_2290:
	mulss xmm1, [_float_0_40000001]
Pmove_2300:
	mov edx, [ebp-0x12c]
	mov eax, [edx+0x4]
	cmp eax, 0x2
	jz Pmove_2310
	cmp eax, 0x3
	jz Pmove_2320
	cmp eax, 0x4
	jnz Pmove_2330
	mov eax, player_spectateSpeedScale
	mov eax, [eax]
	mulss xmm1, [eax+0xc]
	jmp Pmove_2330
Pmove_2140:
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x5c]
	jnz Pmove_2340
	jp Pmove_2340
	cmp byte [ebp-0x121], 0x0
	jz Pmove_2350
	jmp Pmove_2340
Pmove_2010:
	cmp eax, 0x1
	jz Pmove_2360
	cmp eax, 0x2
	jz Pmove_2370
	movss xmm1, dword [_float_9_00000000]
	jmp Pmove_2380
Pmove_1210:
	mov byte [ebp-0x121], 0x1
	jmp Pmove_2390
Pmove_1580:
	movss [ebx], xmm5
	movss [ebx+0x4], xmm5
	movss [ebx+0x8], xmm5
	jmp Pmove_1050
Pmove_1950:
	mulss xmm5, [_float_6_00000000]
	jmp Pmove_1960
Pmove_1910:
	mulss xmm6, [_float_6_00000000]
	jmp Pmove_1920
Pmove_2190:
	mov ecx, [ebp-0x11c]
	mov edx, [ecx+0xc]
Pmove_2200:
	movss xmm0, dword [eax+0x41c]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	ja Pmove_2400
	jmp Pmove_2410
Pmove_1330:
	mulss xmm1, [_float_3_00000000]
	jmp Pmove_1350
Pmove_670:
	mulss xmm3, [_float_3_00000000]
	jmp Pmove_690
Pmove_1850:
	mov edx, 0x4b
	test eax, eax
	mov eax, 0xffffffb5
	cmovle edx, eax
	jmp Pmove_2420
Pmove_680:
	mulss xmm3, [_float_6_00000000]
	jmp Pmove_690
Pmove_1340:
	mulss xmm1, [_float_6_00000000]
	jmp Pmove_1350
Pmove_1020:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_2430
Pmove_1940:
	mulss xmm5, [_float_3_00000000]
	jmp Pmove_1960
Pmove_1900:
	mulss xmm6, [_float_3_00000000]
	jmp Pmove_1920
Pmove_1810:
	mov eax, [ebp-0xfc]
	mov [ebp-0x24], eax
	mov eax, [ebp-0xf8]
	mov [ebp-0x20], eax
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	call Vec2Normalize
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
	jp Pmove_2440
	jz Pmove_2450
Pmove_2440:
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
	jbe Pmove_2450
	ucomiss xmm3, [_float_1_00000000]
	jb Pmove_2460
Pmove_2610:
	subss xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm0, [eax]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x20]
	addss xmm1, [edx]
	movss [edx], xmm1
	jmp Pmove_2450
Pmove_2180:
	mov edx, [edx+0xc]
	jmp Pmove_2410
Pmove_1540:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_2470
Pmove_1430:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_2480
Pmove_1490:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_2490
Pmove_1460:
	mov [esp], esi
	call Jump_ClearState
	mov edx, [esi+0xc]
	jmp Pmove_2500
Pmove_1220:
	mov eax, player_backSpeedScale
	mov eax, [eax]
	movss xmm3, dword [ebp-0x114]
	mulss xmm3, [eax+0xc]
	movss xmm0, dword [_data16_7fffffff]
	andps xmm3, xmm0
	jmp Pmove_2510
Pmove_1740:
	movss xmm7, dword [ebp-0x16c]
	divss xmm7, xmm1
	movaps xmm1, xmm7
	jmp Pmove_2520
Pmove_1730:
	movss xmm0, dword [_float__1_00000000]
	maxss xmm0, xmm3
	jmp Pmove_2530
Pmove_1840:
	neg edx
	jmp Pmove_2540
Pmove_2170:
	mov eax, edi
	movss [ebp-0x188], xmm1
	call PM_CmdScaleForStance
	movss xmm1, dword [ebp-0x188]
	mulss xmm1, xmm0
	jmp Pmove_2550
Pmove_2210:
	mov edx, [ebp-0x11c]
	mov eax, [edx+0x62c]
	mov [esp], eax
	movss [ebp-0x188], xmm1
	call BG_GetShellshockParms
	cmp byte [eax+0x264], 0x0
	movss xmm1, dword [ebp-0x188]
	jz Pmove_2560
	mulss xmm1, [_float_0_40000001]
	jmp Pmove_2560
Pmove_2160:
	mulss xmm1, [_float_3_00000000]
	jmp Pmove_2550
Pmove_2310:
	mulss xmm1, [_float_3_00000000]
	jmp Pmove_2330
Pmove_2320:
	mulss xmm1, [_float_6_00000000]
	jmp Pmove_2330
Pmove_1790:
	cvtsi2ss xmm0, dword [eax+0x58]
	mulss xmm0, [ebp-0xe4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	cmpss xmm1, xmm0, 0x5
	andps xmm0, xmm1
	orps xmm0, xmm2
	movss [eax+0x30], xmm0
	jmp Pmove_1780
Pmove_1590:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm3
	jmp Pmove_2570
Pmove_1700:
	test byte [ebp-0x4c], 0x8
	jz Pmove_2580
	mov eax, [ebp-0xdc]
	test eax, eax
	jz Pmove_2590
	cmp byte [edi+0x1a], 0x0
	jle Pmove_2580
Pmove_2590:
	mov eax, [ebx+0xc]
	test al, 0x8
	jz Pmove_2600
	or eax, 0x8
	mov [ebx+0xc], eax
	jmp Pmove_1150
Pmove_2360:
	movss xmm1, dword [_float_19_00000000]
	jmp Pmove_2380
Pmove_1800:
	movss [eax+0x30], xmm2
	jmp Pmove_1780
Pmove_2370:
	movss xmm1, dword [_float_12_00000000]
	jmp Pmove_2380
Pmove_2600:
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
	call PM_playerTrace
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x5c]
	jbe Pmove_2580
	test byte [ebp-0x4c], 0x8
	jz Pmove_2580
	or dword [ebx+0xc], 0x8
	jmp Pmove_1150
Pmove_2460:
	jp Pmove_2610
	ucomiss xmm2, xmm4
	jb Pmove_2620
	movss xmm2, dword [_float_1_00000000]
	jmp Pmove_2610
Pmove_2620:
	movss xmm2, dword [_float__1_00000000]
	jmp Pmove_2610
	add [eax], al
	
	
Pmove_jumptab_0:
	dd Pmove_200
	dd Pmove_2630
	dd Pmove_2640
	dd Pmove_2650
	dd Pmove_2660
	dd Pmove_2670
	dd Pmove_2680
	dd Pmove_200
	dd Pmove_2630


;PM_trace(pmove_t*, trace_t*, float const*, float const*, float const*, float const*, int, int)
PM_trace:
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
pmoveHandlers: dd CG_TraceCapsule, 0x0, G_TraceCapsule, G_PlayerEvent, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of bg_pmove:
SECTION .rdata
CorrectSolidDeltas: dd 0x0, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0xbf800000, 0xbf800000, 0x0, 0xbf800000, 0x0, 0xbf800000, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ19PM_GetNotMovingAnimiiE14notMovingAnims: dd 0x1, 0xe, 0xf, 0x3, 0x3, 0x3, 0x2, 0x10, 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ13PM_GetBobMove17PmStanceFrontBackffiiE14bobFactorTable: dd 0x3eab851f, 0x3e9c28f6, 0x3e800000, 0x3e75c28f, 0x3eae147b, 0x3ea147ae, 0x3eb851ec, 0x3ea66666, 0x3e800000, 0x3e75c28f, 0x3eae147b, 0x3ea147ae, 0x0, 0x0, 0x0, 0x0
_ZZ14PM_GetMoveAnimP13playerState_s17PmStanceFrontBackiiE13moveAnimTable: dd 0xa, 0x24, 0x4, 0x26, 0x8, 0x8, 0x8, 0x8, 0xc, 0x28, 0x6, 0x28, 0xb, 0x25, 0x5, 0x27, 0x9, 0x9, 0x9, 0x9, 0xd, 0x29, 0x7, 0x29, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x3546c, 0x35a24, 0x356e3, 0x35d9d, 0x35b3b, 0x353a5, 0x35569, 0x3546c, 0x35a24, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x3d116, 0x3d39b, 0x3d39b, 0x3d836, 0x3d836, 0x3d116, 0x3d116, 0x3d412, 0x3d412, 0x3d64a, 0x3d64a, 0x3d39b, 0x3daaa, 0x3d75b, 0x3d383, 0x3d7bc, 0x3d7ca, 0x3d535, 0x3d5c0, 0x3d607, 0x3d383, 0x3d80e, 0x3d3d4, 0x3c940, 0x3d383, 0x3d3c8, 0x3d3c8, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x41177, 0x411d5, 0x41236, 0x41297, 0x413ba, 0x412f8, 0x41359, 0x4141b, 0x4147c, 0x41700, 0x41761, 0x415b1, 0x415dd, 0x41884, 0x418e5, 0x414ef, 0x41550, 0x417c2, 0x41823, 0x4163e, 0x4169f, 0x41946, 0x41a05, 0x0, 0x42269, 0x42270, 0x422af, 0x422af, 0x42277, 0x42277, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x42265, 0x4227e, 0x4227e, 0x42265, 0x42265, 0x42265, 0x42285, 0x42285, 0x42285, 0x4228c, 0x4228c, 0x42265, 0x42293, 0x4229a, 0x422a1, 0x422a8, 0x422a8, 0x422af, 0x422af, 0x42265, 0x42265, 0x42265, 0x422b6, 0x422b6, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x42ffd, 0x4303b, 0x4307a, 0x4309b, 0x430bc, 0x430e3, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x42de6, 0x43104, 0x42f7c, 0x42de6, 0x42de6, 0x42de6, 0x42f87, 0x42f9a, 0x42fc7, 0x42fe1, 0x43129, 0x42de6, 0x4310f, 0x4311c, 0x42f31, 0x42f73, 0x42f3e, 0x42f59, 0x42f05, 0x42de6, 0x42de6, 0x42de6, 0x42daf, 0x42edb, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d8f, 0x42c8d, 0x42c8d, 0x42c8d, 0x42c8d, 0x42c8d, 0x42d0b, 0x42d0b, 0x42c8d, 0x42c8d, 0x42c8d, 0x42d8f, 0x42d8f, 0x42c8d, 0x42c8d, 0x42c8d, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d65, 0x42c8d, 0x42d8f, 0x42d8f, 0x42d8f, 0x42d73, 0x42d73, 0x42d8f, 0x42d8f, 0x42c8d, 0x42c8d, 0x42c8d, 0x42d8f, 0x42d8f, 0x42ea1, 0x42ea8, 0x42e7e, 0x42e7e, 0x42e85, 0x42e85, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e40, 0x42e8c, 0x42e8c, 0x42e40, 0x42e40, 0x42e40, 0x42e93, 0x42e93, 0x42e93, 0x42e9a, 0x42e9a, 0x42e40, 0x42eaf, 0x42eb6, 0x42ebd, 0x42ec7, 0x42ec7, 0x42e7e, 0x42e7e, 0x42e40, 0x42e40, 0x42e40, 0x42ed1, 0x42ed1, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x41e00000, 0x0, 0x0, 0xffe00000, 0x41efffff, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x473e2, 0x472db, 0x472db, 0x472db, 0x472db, 0x473d8, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x473ec, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x473f6, 0x472db, 0x472db, 0x472db, 0x472db, 0x47400, 0x4740a, 0x472db, 0x472db, 0x472db, 0x47414, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x472db, 0x4741e, 0x472db, 0x472db, 0x472db, 0x47428, 0x472db, 0x47432, 0x472db, 0x4743c, 0x472db, 0x47399, 0x0, 0x0, 0x0, 0x0, 0x0
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

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
