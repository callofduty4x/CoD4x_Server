;Imports of g_missile:
	extern level
	extern BG_EvaluateTrajectory
	extern G_rand
	extern AngleNormalize360
	extern PitchForYawOnNormal
	extern floorf
	extern G_random
	extern vectoangles
	extern AnglesToAxis
	extern AxisToQuat
	extern QuatSlerp
	extern Vec4Normalize
	extern Vec3Normalize
	extern UnitQuatToForward
	extern colorBlue
	extern G_DebugLineWithDuration
	extern colorLtGrey
	extern colorGreen
	extern Com_Printf
	extern BG_GetWeaponDef
	extern SV_PointContents
	extern BG_EvaluateTrajectoryDelta
	extern Trace_GetEntityHitId
	extern g_entities
	extern G_SetOrigin
	extern NearestPitchAndYawOnPlane
	extern AngleVectors
	extern atan2
	extern G_SetAngle
	extern G_WithinDamageRadius
	extern Scr_AddString
	extern Scr_AddEntity
	extern scr_const
	extern Scr_Notify
	extern Scr_AddUndefined
	extern G_AddEvent
	extern G_CheckHitTriggerDamage
	extern G_FreeEntityAfterEvent
	extern SV_LinkEntity
	extern LogAccuracyHit
	extern G_Damage
	extern entityHandlers
	extern DirToByte
	extern vec3_origin
	extern G_TraceCapsule
	extern G_FlashbangBlast
	extern cosf
	extern G_RadiusDamage
	extern Scr_AddInt
	extern Scr_AddVector
	extern g_minGrenadeDamageSpeed
	extern Vec3NormalizeTo
	extern colorRed
	extern colorOrange
	extern Vec2NormalizeTo
	extern Vec2Distance
	extern atanf
	extern Vec2Normalize
	extern G_Spawn
	extern Scr_SetString
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern G_BroadcastEntity
	extern sinf
	extern bulletPriorityMap
	extern G_LocationalTrace
	extern G_FreeEntity
	extern G_RunThink
	extern G_DebugCircleEx
	extern G_flrand
	extern G_TempEntity
	extern G_GrenadeTouchTriggerDamage
	extern atan
	extern XModelGetName
	extern G_SetModel
	extern G_DObjUpdate
	extern BG_FindItemForWeapon
	extern bg_itemlist
	extern G_irand
	extern Cvar_RegisterFloat
	extern memset
	extern Scr_GetInt
	extern Scr_ParamError
	extern Cvar_RegisterBool
	extern Scr_GetEntity
	extern Scr_GetFloat
	extern va
	extern Scr_Error
	extern Scr_GetVector
	extern missile_frametime

;Exports of g_missile:
	global attrGlob
	global MissileLandAngles
	global _ZZ16G_ExplodeMissileP9gentity_sE19MY_STRAIGHTUPNORMAL
	global JavelinRotateDir
	global BounceMissile
	global CheckCrumpleMissile
	global _ZZ13MissileImpactP9gentity_sP7trace_tPfS3_E19MY_STRAIGHTUPNORMAL
	global MissileImpact
	global MissileTrajectory
	global _ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E21MYJAVELINOFFSET_RIGHT
	global _ZZ12G_FireRocketP9gentity_sjPfS1_PKfS0_S3_E15MYJAVELINOFFSET
	global G_FireRocket
	global G_RunMissile
	global G_FireGrenade
	global G_ExplodeMissile
	global G_TimedObjectThink
	global G_InitGrenadeEntity
	global G_InitGrenadeMovement
	global G_RegisterMissileDvars
	global Missile_InitAttractors
	global Missile_FreeAttractorRefs
	global Scr_MissileDeleteAttractor
	global G_RegisterMissileDebugDvars
	global Scr_MissileCreateRepulsorEnt
	global Scr_MissileCreateAttractorEnt
	global Scr_MissileCreateRepulsorOrigin
	global Scr_MissileCreateAttractorOrigin
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
MissileLandAngles:
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
	call BG_EvaluateTrajectory
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_10000000]
	ja MissileLandAngles_10
	mov edx, [ebp+0x8]
	test edx, edx
	jz MissileLandAngles_20
MissileLandAngles_90:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileLandAngles_20:
	movss xmm0, dword [esi+0x48]
	movss [ebp-0x30], xmm0
	call G_rand
	and eax, 0x7f
	sub eax, 0x3f
	cvtsi2ss xmm0, eax
	addss xmm0, [ebp-0x30]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [esi+0x48]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileLandAngles_10:
	lea eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [edi+0x4]
	mov [esp], eax
	call PitchForYawOnNormal
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
	jnz MissileLandAngles_30
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
	jae MissileLandAngles_40
	jp MissileLandAngles_40
	movss xmm1, dword [esi+0x48]
	movss [ebp-0x58], xmm1
	call G_random
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float_0_30000001]
	addss xmm0, [_float_0_85000002]
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [esi+0x48], xmm1
MissileLandAngles_30:
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
	jnz MissileLandAngles_50
	movss xmm1, dword [ebp-0x20]
	ucomiss xmm1, [_float_45_00000000]
	jae MissileLandAngles_60
	jp MissileLandAngles_60
MissileLandAngles_50:
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_90_00000000]
	ja MissileLandAngles_70
	movss xmm1, dword [ebp-0x28]
	movss [esp], xmm1
	call AngleNormalize360
	fstp dword [edi]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileLandAngles_70:
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [edi]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileLandAngles_60:
	ucomiss xmm1, [_float_80_00000000]
	jae MissileLandAngles_80
	jp MissileLandAngles_80
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, [_float_0_25000000]
	addss xmm0, xmm1
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [edi]
	jmp MissileLandAngles_90
MissileLandAngles_40:
	movss xmm0, dword [esi+0x48]
	movss [ebp-0x1c], xmm0
	call G_random
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float_0_30000001]
	addss xmm0, [_float_0_85000002]
	mulss xmm0, [ebp-0x1c]
	movss [esi+0x48], xmm0
	jmp MissileLandAngles_30
MissileLandAngles_80:
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [edi]
	jmp MissileLandAngles_90
	nop


;JavelinRotateDir(gentity_s*, float const*, float const*, float*)
JavelinRotateDir:
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
	jnz JavelinRotateDir_10
	mov eax, [missileJavTurnRateTop]
	movss xmm2, dword [eax+0xc]
JavelinRotateDir_40:
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
	mulss xmm3, [missile_frametime]
	addss xmm0, xmm3
	mulss xmm0, [_float_180_00000000]
	movss [ebp-0x80], xmm0
	ucomiss xmm0, [_float_0_10000000]
	ja JavelinRotateDir_20
	jp JavelinRotateDir_20
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	mov eax, [edi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jnz JavelinRotateDir_30
JavelinRotateDir_80:
	pxor xmm0, xmm0
	movss [ebp-0x80], xmm0
JavelinRotateDir_70:
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
JavelinRotateDir_10:
	mov eax, [missileJavTurnRateDirect]
	movss xmm2, dword [eax+0xc]
	jmp JavelinRotateDir_40
JavelinRotateDir_20:
	divss xmm0, dword [missile_frametime]
	ucomiss xmm2, xmm0
	ja JavelinRotateDir_50
	movaps xmm1, xmm2
	divss xmm1, xmm0
	movss [ebp-0x7c], xmm1
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jnz JavelinRotateDir_60
JavelinRotateDir_90:
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call vectoangles
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebp-0x34]
	mov [esp+0x4], edx
	mov [esp], ebx
	call AxisToQuat
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call vectoangles
	mov [esp+0x4], ebx
	lea edx, [ebp-0x24]
	mov [esp], edx
	call AnglesToAxis
	lea esi, [ebp-0x44]
	mov [esp+0x4], esi
	mov [esp], ebx
	call AxisToQuat
	lea ebx, [ebp-0x54]
	mov [esp+0xc], ebx
	movss xmm0, dword [ebp-0x7c]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	lea eax, [ebp-0x34]
	mov [esp], eax
	call QuatSlerp
	mov [esp], ebx
	call Vec4Normalize
	fstp st0
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], ebx
	call UnitQuatToForward
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz JavelinRotateDir_70
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
	call G_DebugLineWithDuration
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
	call G_DebugLineWithDuration
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
	call G_DebugLineWithDuration
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
JavelinRotateDir_50:
	mov eax, [ebp+0x14]
	movss [eax], xmm1
	mov eax, [edi+0x4]
	mov edx, [ebp+0x14]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz JavelinRotateDir_80
	cvtss2sd xmm0, xmm0
	movsd [esp+0x18], xmm0
	cvtss2sd xmm2, xmm2
	movsd [esp+0x10], xmm2
	cvtss2sd xmm1, [ebp-0x80]
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_dot2f_0f__0f_
	mov dword [esp], 0xf
	call Com_Printf
	pxor xmm3, xmm3
	movss [ebp-0x80], xmm3
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
JavelinRotateDir_30:
	cvtss2sd xmm1, [ebp-0x80]
	movsd [esp+0x8], xmm1
	mov dword [esp+0x4], _cstring_dot2f_
	mov dword [esp], 0xf
	call Com_Printf
	pxor xmm3, xmm3
	movss [ebp-0x80], xmm3
	fld dword [ebp-0x80]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
JavelinRotateDir_60:
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
	call Com_Printf
	jmp JavelinRotateDir_90


;BounceMissile(gentity_s*, trace_t*)
BounceMissile:
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
	call BG_GetWeaponDef
	mov [ebp-0x7c], eax
	lea eax, [edi+0x13c]
	mov [ebp-0x88], eax
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call SV_PointContents
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
	call BG_EvaluateTrajectoryDelta
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
	jnz BounceMissile_10
BounceMissile_200:
	mov byte [ebp-0x7d], 0x1
	mov byte [ebp-0x69], 0x1
BounceMissile_210:
	mov [esp], esi
	call Trace_GetEntityHitId
	mov ebx, g_entities
	movzx eax, ax
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	cmp dword [edx+ebx+0x4], 0x4
	jz BounceMissile_20
	cmp byte [ebp-0x7d], 0x0
	jnz BounceMissile_30
BounceMissile_80:
	pxor xmm3, xmm3
	test byte [edi+0xb], 0x1
	jnz BounceMissile_40
BounceMissile_90:
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
	call MissileLandAngles
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
	jz BounceMissile_50
BounceMissile_60:
	xor eax, eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BounceMissile_50:
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
	jbe BounceMissile_60
BounceMissile_160:
	mov eax, 0x1
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BounceMissile_30:
	mov edx, [ebp-0x7c]
	cmp dword [edx+0x5a4], 0x1
	jz BounceMissile_70
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [_float_0_69999999]
	jbe BounceMissile_80
BounceMissile_70:
	mov [esp], esi
	call Trace_GetEntityHitId
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
	jz BounceMissile_90
BounceMissile_40:
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
	jbe BounceMissile_100
	ucomiss xmm3, [ebp-0x78]
	jae BounceMissile_110
BounceMissile_100:
	cmp byte [ebp-0x69], 0x0
	jz BounceMissile_90
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x5a4]
	cmp eax, 0x1
	jz BounceMissile_120
	movss xmm0, dword [esi+0xc]
	ucomiss xmm0, [_float_0_69999999]
	jbe BounceMissile_90
	sub eax, 0x2
	cmp eax, 0x1
	jbe BounceMissile_120
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
	jae BounceMissile_90
	jp BounceMissile_90
BounceMissile_120:
	mov eax, [ebp-0x88]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetOrigin
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x5a4]
	cmp eax, 0x3
	jz BounceMissile_130
	test eax, eax
	jz BounceMissile_140
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
	call BG_EvaluateTrajectory
	mov [esp+0x8], ebx
	mov eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov [esp], ebx
	call NearestPitchAndYawOnPlane
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call AngleVectors
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
BounceMissile_260:
	fstp qword [ebp-0xa0]
	movsd xmm0, qword [ebp-0xa0]
	mulsd xmm0, [_double_180_00000000]
	divsd xmm0, [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x28], xmm0
BounceMissile_220:
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_SetAngle
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
	jnz BounceMissile_150
	mov dword [edi+0x19c], 0x0
BounceMissile_150:
	mov eax, [edi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x50], eax
	cvtsi2ss xmm0, dword [eax+0x554]
	mulss xmm0, xmm0
	movss [ebp-0x4c], xmm0
	mov edx, level
	mov ecx, [edx+0x1e4]
	test ecx, ecx
	jle BounceMissile_160
	mov ebx, g_entities
	mov esi, ebx
	mov dword [ebp-0x54], 0x0
	lea eax, [ebx+0x100]
	mov [ebp-0x8c], eax
	mov [ebp-0x90], ebx
	mov ecx, eax
	jmp BounceMissile_170
BounceMissile_180:
	add dword [ebp-0x54], 0x1
	add esi, 0x274
	mov ecx, [ebp-0x54]
	cmp [edx+0x1e4], ecx
	jle BounceMissile_160
	mov ebx, [ebp-0x90]
	mov ecx, [ebp-0x8c]
BounceMissile_170:
	mov eax, esi
	sub eax, ebx
	cmp byte [eax+ecx], 0x0
	jz BounceMissile_180
	mov [esp+0x8], esi
	movss xmm0, dword [ebp-0x4c]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x88]
	mov [esp], eax
	call G_WithinDamageRadius
	test eax, eax
	jnz BounceMissile_190
BounceMissile_240:
	mov edx, level
	jmp BounceMissile_180
BounceMissile_10:
	mov [esp], esi
	call Trace_GetEntityHitId
	cmp ax, 0x3f
	ja BounceMissile_200
	mov byte [ebp-0x7d], 0x0
	mov byte [ebp-0x69], 0x0
	jmp BounceMissile_210
BounceMissile_20:
	mov byte [ebp-0x69], 0x0
	jmp BounceMissile_80
BounceMissile_110:
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
	jmp BounceMissile_100
BounceMissile_140:
	lea ebx, [ebp-0x30]
	mov dword [esp], 0x1
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call MissileLandAngles
	jmp BounceMissile_220
BounceMissile_190:
	mov edx, [ebp-0x50]
	mov eax, [edx]
	mov [esp], eax
	call Scr_AddString
	cmp word [edi+0x198], 0x0
	jz BounceMissile_230
	movzx eax, word [edi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, ebx
	mov [esp], edx
	call Scr_AddEntity
BounceMissile_250:
	mov [esp], edi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x3
	mov eax, scr_const
	movzx eax, word [eax+0x40]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	jmp BounceMissile_240
BounceMissile_230:
	call Scr_AddUndefined
	jmp BounceMissile_250
BounceMissile_130:
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
	call BG_EvaluateTrajectory
	mov ecx, [ebp-0x84]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call PitchForYawOnNormal
	fstp dword [ebp-0x30]
	mov dword [ebp-0x28], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call AngleVectors
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
	jmp BounceMissile_260
	nop


;CheckCrumpleMissile(gentity_s*, trace_t*)
CheckCrumpleMissile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, eax
	mov esi, edx
	mov eax, [eax+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x12c], 0x2
	jz CheckCrumpleMissile_10
CheckCrumpleMissile_40:
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CheckCrumpleMissile_10:
	cmp dword [esi+0x10], 0x700000
	jz CheckCrumpleMissile_20
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
	call BG_EvaluateTrajectoryDelta
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
	jp CheckCrumpleMissile_30
	jb CheckCrumpleMissile_40
CheckCrumpleMissile_30:
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
CheckCrumpleMissile_20:
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;MissileImpact(gentity_s*, trace_t*, float*, float*)
MissileImpact:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Trace_GetEntityHitId
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
	call BG_GetWeaponDef
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
	jle MissileImpact_10
	cvtsi2ss xmm1, eax
	movss xmm0, dword [esi+0x1bc]
	ucomiss xmm0, xmm1
	jb MissileImpact_20
MissileImpact_10:
	cmp dword [esi+0x4], 0x4
	jz MissileImpact_30
MissileImpact_320:
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz MissileImpact_40
MissileImpact_330:
	mov dword [ebp-0xa4], 0xf
MissileImpact_380:
	mov eax, [ebp+0xc]
	movzx eax, word [eax+0x26]
	mov [ebp-0x98], eax
MissileImpact_390:
	mov edx, [ebp-0xb0]
	cmp byte [edx+0x16b], 0x0
	jz MissileImpact_50
MissileImpact_120:
	mov eax, [ebp-0x9c]
	test eax, eax
	jnz MissileImpact_60
	mov dword [ebp-0xac], 0x0
MissileImpact_370:
	mov ebx, [ebp-0xa8]
	test ebx, ebx
	jnz MissileImpact_70
	mov edx, [ebp-0xb0]
	mov ecx, [edx+0x15c]
	test ecx, ecx
	jz MissileImpact_80
	mov eax, [ebp+0xc]
	mov edx, [eax+0x10]
	test edx, edx
	jz MissileImpact_90
	mov edx, eax
	mov eax, esi
	call CheckCrumpleMissile
	test eax, eax
	jnz MissileImpact_70
MissileImpact_530:
	mov edx, [ebp+0xc]
	mov eax, esi
	call BounceMissile
	test eax, eax
	jz MissileImpact_100
	mov edx, [ebp+0xc]
	cmp byte [edx+0x29], 0x0
	jnz MissileImpact_100
	mov eax, [edx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_100
MissileImpact_50:
	test byte [esi+0xb], 0x1
	jnz MissileImpact_110
MissileImpact_410:
	mov eax, [ebp-0xb0]
	cmp byte [eax+0x16b], 0x0
	jnz MissileImpact_120
	mov dword [ebp-0xac], 0x0
MissileImpact_70:
	mov ebx, [ebp-0x9c]
	test ebx, ebx
	jz MissileImpact_130
	lea ebx, [esi+0x13c]
	cmp word [esi+0x154], 0x0
	jnz MissileImpact_140
	mov eax, g_entities
	add eax, 0x9cb18
MissileImpact_540:
	mov edx, [ebp-0xa4]
	mov [esp+0x10], edx
	mov edx, [ebp-0x9c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call G_CheckHitTriggerDamage
MissileImpact_450:
	mov ecx, [ebp-0xac]
	test ecx, ecx
	jnz MissileImpact_150
	mov eax, [ebp+0xc]
	cmp word [eax+0x24], 0x0
	jnz MissileImpact_150
	mov byte [ebp-0xb1], 0x0
MissileImpact_440:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], ebx
	call SV_PointContents
	test eax, eax
	setnz byte [ebp-0x92]
	cmp byte [ebp-0x92], 0x0
	jnz MissileImpact_160
	mov byte [ebp-0x91], 0x1
MissileImpact_560:
	cmp dword [esi+0x4], 0x4
	jz MissileImpact_170
MissileImpact_510:
	mov eax, [edi+0x590]
	test eax, eax
	jz MissileImpact_180
MissileImpact_520:
	mov eax, _ZZ13MissileImpactP9gentity_sP7trace_tPfS3_E19MY_STRAIGHTUPNORMAL
MissileImpact_400:
	cmp byte [ebp-0x92], 0x0
	jz MissileImpact_190
	cmp byte [ebp-0x91], 0x0
	jz MissileImpact_200
MissileImpact_190:
	mov edx, [ebp-0xa0]
	test edx, edx
	jz MissileImpact_210
	cmp dword [ebp-0xa0], 0x6
	jz MissileImpact_210
	cmp dword [ebp-0xa0], 0x1
	jz MissileImpact_220
	cmp dword [ebp-0xa0], 0x3
	jz MissileImpact_230
	cmp dword [ebp-0xa0], 0x2
	jz MissileImpact_240
	cmp dword [ebp-0xa0], 0x4
	jz MissileImpact_250
MissileImpact_590:
	cmp byte [ebp-0x92], 0x0
	jnz MissileImpact_260
MissileImpact_460:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
MissileImpact_470:
	mov [esi+0x84], eax
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	mov [esp], esi
	call G_FreeEntityAfterEvent
	mov eax, [esi+0x8]
	xor eax, 0x2
	or eax, 0x20
	mov [esi+0x8], eax
	cmp byte [ebp-0x92], 0x0
	jz MissileImpact_270
	cmp byte [ebp-0x91], 0x0
	jnz MissileImpact_280
MissileImpact_270:
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetOrigin
MissileImpact_600:
	mov eax, [ebp-0xa8]
	test eax, eax
	jz MissileImpact_290
	mov eax, [edi+0x55c]
	test eax, eax
	jnz MissileImpact_300
MissileImpact_290:
	cmp dword [ebp-0xa0], 0x2
	jz MissileImpact_310
MissileImpact_500:
	mov [esp], esi
	call SV_LinkEntity
MissileImpact_100:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileImpact_30:
	cmp dword [edi+0x6b8], 0x3
	jnz MissileImpact_320
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz MissileImpact_320
MissileImpact_20:
	mov dword [esi+0x1bc], 0xd01502f9
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa0], 0x4
	jmp MissileImpact_330
MissileImpact_60:
	lea edx, [esi+0x154]
	mov [ebp-0x8c], edx
	cmp word [esi+0x154], 0x0
	jnz MissileImpact_340
	mov eax, g_entities
	add eax, 0x9cd8c
MissileImpact_550:
	mov [esp+0x4], eax
	mov eax, [ebp-0xb0]
	mov [esp], eax
	call LogAccuracyHit
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
	call BG_EvaluateTrajectoryDelta
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
	jz MissileImpact_350
MissileImpact_630:
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
	jnz MissileImpact_360
	xor eax, eax
MissileImpact_610:
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
	call G_Damage
	jmp MissileImpact_370
MissileImpact_40:
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0x20]
	mov [ebp-0xa4], eax
	cmp eax, 0xf
	jz MissileImpact_380
	mov dword [ebp-0x98], 0x0
	jmp MissileImpact_390
MissileImpact_180:
	mov eax, [ebp+0xc]
	add eax, 0x4
	jmp MissileImpact_400
MissileImpact_110:
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz MissileImpact_410
	mov edx, [ebp+0xc]
	mov eax, esi
	call CheckCrumpleMissile
	test eax, eax
	jnz MissileImpact_410
	mov edx, [ebp+0xc]
	mov eax, esi
	call BounceMissile
	test eax, eax
	jz MissileImpact_420
	mov eax, [ebp+0xc]
	cmp byte [eax+0x29], 0x0
	jz MissileImpact_430
MissileImpact_420:
	mov eax, [edi+0x574]
	test eax, eax
	jle MissileImpact_100
	mov eax, [esi+0xc]
	test eax, eax
	jnz MissileImpact_100
	mov eax, [ebp+0xc]
	add eax, 0x4
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x33
	mov [esp], esi
	call G_AddEvent
	mov [esp], esi
	call G_FreeEntityAfterEvent
	jmp MissileImpact_100
MissileImpact_150:
	mov byte [ebp-0xb1], 0x1
	jmp MissileImpact_440
MissileImpact_130:
	lea ebx, [esi+0x13c]
	jmp MissileImpact_450
MissileImpact_210:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d
	mov [esp], esi
	call G_AddEvent
	cmp byte [ebp-0x92], 0x0
	jz MissileImpact_460
MissileImpact_260:
	mov eax, 0x14
	jmp MissileImpact_470
MissileImpact_160:
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
	call G_TraceCapsule
	cmp byte [ebp-0x57], 0x0
	jnz MissileImpact_480
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x80]
	jbe MissileImpact_480
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
	jmp MissileImpact_190
MissileImpact_310:
	mov ebx, [esi+0x1cc]
	cmp word [esi+0x198], 0x0
	jz MissileImpact_490
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
MissileImpact_570:
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	cvtsi2ss xmm0, dword [edi+0x558]
	movss [esp+0x8], xmm0
	cvtsi2ss xmm0, dword [edi+0x554]
	movss [esp+0x4], xmm0
	mov edx, [ebp+0x14]
	mov [esp], edx
	call G_FlashbangBlast
	jmp MissileImpact_500
MissileImpact_170:
	cmp dword [edi+0x6b8], 0x3
	jnz MissileImpact_510
	mov eax, [esi+0x1ec]
	test eax, eax
	jnz MissileImpact_510
	cmp word [esi+0x214], 0x0
	jz MissileImpact_510
	movzx eax, word [esi+0x214]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, g_entities
	cmp [ebp-0xb0], edx
	jnz MissileImpact_510
	jmp MissileImpact_520
MissileImpact_90:
	mov dword [eax+0x10], 0x700000
MissileImpact_80:
	mov edx, [ebp+0xc]
	mov eax, esi
	call CheckCrumpleMissile
	test eax, eax
	jnz MissileImpact_70
	jmp MissileImpact_530
MissileImpact_140:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp MissileImpact_540
MissileImpact_340:
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp MissileImpact_550
MissileImpact_480:
	mov byte [ebp-0x91], 0x0
	jmp MissileImpact_560
MissileImpact_490:
	xor eax, eax
	jmp MissileImpact_570
MissileImpact_250:
	cmp dword [esi+0x4], 0x4
	jz MissileImpact_580
MissileImpact_640:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_590
MissileImpact_280:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_SetOrigin
	jmp MissileImpact_600
MissileImpact_360:
	movzx eax, word [edx]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp MissileImpact_610
MissileImpact_300:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov ebx, [eax+0x24]
	cmp ebx, 0x4
	jz MissileImpact_620
MissileImpact_650:
	cmp word [esi+0x198], 0x0
	jz MissileImpact_290
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
	call G_RadiusDamage
	mov eax, [edi+0x554]
	mov [esp], eax
	call Scr_AddInt
	mov eax, [ebp+0x14]
	mov [esp], eax
	call Scr_AddVector
	mov eax, [edi]
	mov [esp], eax
	call Scr_AddString
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
	call Scr_Notify
	jmp MissileImpact_290
MissileImpact_200:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov [esp], esi
	call G_AddEvent
	mov eax, 0x14
	jmp MissileImpact_470
MissileImpact_350:
	mov eax, g_minGrenadeDamageSpeed
	mov eax, [eax]
	ucomiss xmm3, [eax+0xc]
	jbe MissileImpact_370
	jmp MissileImpact_630
MissileImpact_220:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	cmp byte [ebp-0xb1], 0x1
	sbb edx, edx
	add edx, 0x2f
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_590
MissileImpact_580:
	cmp dword [edi+0x6b8], 0x3
	jnz MissileImpact_640
	lea ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	lea eax, [esi+0x24]
	mov [esp], eax
	call Vec3NormalizeTo
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
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x35
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_590
MissileImpact_230:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	cmp byte [ebp-0xb1], 0x1
	sbb edx, edx
	add edx, 0x32
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_590
MissileImpact_240:
	mov [esp], eax
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_590
MissileImpact_620:
	cmp dword [edx+0x588], 0x6
	mov eax, 0xe
	cmovz ebx, eax
	jmp MissileImpact_650
MissileImpact_430:
	mov eax, [eax+0x10]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call G_AddEvent
	jmp MissileImpact_420


;MissileTrajectory(gentity_s*, float*)
MissileTrajectory:
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
	call BG_GetWeaponDef
	mov [ebp-0xcc], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	cmp eax, [esi+0x54]
	jle MissileTrajectory_10
	cmp dword [esi+0xc], 0x2
	jz MissileTrajectory_10
	cmp byte [esi+0x16e], 0x9
	jz MissileTrajectory_20
MissileTrajectory_10:
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call BG_EvaluateTrajectory
MissileTrajectory_140:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MissileTrajectory_20:
	pxor xmm5, xmm5
	mov eax, [ebp-0xcc]
	movss xmm0, dword [eax+0x57c]
	ucomiss xmm0, xmm5
	jbe MissileTrajectory_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [esi+0x148]
	mov [esp], eax
	movss [ebp-0x118], xmm5
	call AngleVectors
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
	jb MissileTrajectory_40
	subss xmm1, xmm2
MissileTrajectory_150:
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
MissileTrajectory_30:
	movss xmm0, dword [eax+0x580]
	ucomiss xmm0, xmm5
	jbe MissileTrajectory_50
	lea ebx, [esi+0x24]
	lea eax, [esi+0x1d0]
	movss xmm1, dword [missile_frametime]
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
MissileTrajectory_50:
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz MissileTrajectory_60
	lea edx, [esi+0x13c]
	mov eax, [esi+0x13c]
	mov [ebp-0x68], eax
	mov eax, [edx+0x4]
	mov [ebp-0x64], eax
	mov eax, [edx+0x8]
	mov [ebp-0x60], eax
MissileTrajectory_60:
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x118], xmm5
	call BG_GetWeaponDef
	mov ebx, eax
	mov eax, [eax+0x6b8]
	test eax, eax
	jz MissileTrajectory_70
	lea edx, [esi+0x214]
	mov [ebp-0xc8], edx
	cmp word [esi+0x214], 0x0
	jz MissileTrajectory_70
	jz MissileTrajectory_70
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, level
	mov ecx, [edx+0x1ec]
	mov edx, ecx
	sub edx, [esi+0x10]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float__0_00100000]
	addss xmm0, [eax+0x57c]
	movss xmm5, dword [ebp-0x118]
	ucomiss xmm5, xmm0
	jb MissileTrajectory_70
	cmp dword [ebx+0x6b8], 0x3
	jnz MissileTrajectory_80
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz MissileTrajectory_90
	sub ecx, [esi+0x54]
	cmp ecx, [ebx+0x6c0]
	jge MissileTrajectory_100
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz MissileTrajectory_70
	mov dword [esp+0x4], _cstring_javelin_softlaun
	mov dword [esp], 0xf
	call Com_Printf
MissileTrajectory_70:
	mov eax, [ebp-0xcc]
	cmp dword [eax+0x6b8], 0x3
	jz MissileTrajectory_110
MissileTrajectory_180:
	lea edx, [esi+0x18]
	lea eax, [esi+0x24]
	movss xmm1, dword [missile_frametime]
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
MissileTrajectory_190:
	mov eax, [missileDebugDraw]
	cmp byte [eax+0xc], 0x0
	jz MissileTrajectory_120
	mov edx, [ebp-0xcc]
	cmp dword [edx+0x6b8], 0x3
	jz MissileTrajectory_130
MissileTrajectory_160:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorRed
MissileTrajectory_170:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x68]
	mov [esp], eax
	call G_DebugLineWithDuration
MissileTrajectory_120:
	cmp dword [esi+0x30], 0x1
	jnz MissileTrajectory_140
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, level
	mov edx, [edx+0x1ec]
	sub edx, [esi+0x10]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float__0_00100000]
	addss xmm0, [eax+0x57c]
	ucomiss xmm0, [_float_0_00000000]
	ja MissileTrajectory_140
	jp MissileTrajectory_140
	lea ebx, [esi+0x148]
	mov [esp+0x4], ebx
	lea eax, [esi+0x24]
	mov [esp], eax
	call vectoangles
	mov [esp+0x4], ebx
	mov [esp], esi
	call G_SetAngle
	mov dword [esi+0x30], 0x1
	jmp MissileTrajectory_140
MissileTrajectory_40:
	divss xmm1, dword [edx+0x57c]
	mulss xmm1, [missile_frametime]
	jmp MissileTrajectory_150
MissileTrajectory_130:
	cmp dword [esi+0x1e8], 0x1
	jnz MissileTrajectory_160
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorOrange
	jmp MissileTrajectory_170
MissileTrajectory_110:
	mov eax, [esi+0x1e8]
	test eax, eax
	jnz MissileTrajectory_180
	mov [esp+0x8], edi
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call BG_EvaluateTrajectory
	jmp MissileTrajectory_190
MissileTrajectory_80:
	lea eax, [esi+0x24]
	mov [ebp-0xc4], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call Vec2NormalizeTo
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
	jnz MissileTrajectory_200
	lea edx, [esi+0x18]
	mov [ebp-0xd8], edx
	mov ecx, edx
MissileTrajectory_390:
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
	call BG_GetWeaponDef
	movss xmm4, dword [ebp-0x7c]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jnz MissileTrajectory_210
	jp MissileTrajectory_210
	movss xmm6, dword [_float_34028234663852885_float_3]
	movss xmm3, dword [ebp-0x80]
MissileTrajectory_290:
	cvtsi2ss xmm1, dword [eax+0x568]
	movss xmm2, dword [eax+0x6bc]
	mulss xmm1, xmm1
	divss xmm1, xmm2
	pxor xmm5, xmm5
	ucomiss xmm3, xmm5
	jbe MissileTrajectory_220
	ucomiss xmm4, xmm5
	jnz MissileTrajectory_230
	jp MissileTrajectory_230
MissileTrajectory_370:
	movaps xmm4, xmm5
	movss [ebp-0x8c], xmm5
MissileTrajectory_380:
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	call BG_GetWeaponDef
	mov ebx, eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call Vec2NormalizeTo
	fstp dword [ebp-0x98]
	pxor xmm5, xmm5
	movss xmm4, dword [ebp-0x108]
	movss xmm0, dword [ebp-0x98]
	ucomiss xmm0, xmm5
	jnz MissileTrajectory_240
	jp MissileTrajectory_240
MissileTrajectory_260:
	movaps xmm0, xmm5
MissileTrajectory_280:
	movss xmm1, dword [ebp-0x8c]
	mov eax, [ebp-0xc4]
	addss xmm1, [eax]
	movss [eax], xmm1
	addss xmm4, [eax+0x4]
	movss [eax+0x4], xmm4
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	jmp MissileTrajectory_70
MissileTrajectory_240:
	mov eax, [ebx+0x6b8]
	cmp eax, 0x1
	jz MissileTrajectory_250
	cmp eax, 0x2
	jnz MissileTrajectory_260
	mov edx, [esi+0x14]
	test edx, edx
	jz MissileTrajectory_270
	movss xmm2, dword [ebp-0x78]
	movss [ebp-0x9c], xmm2
	ucomiss xmm5, [ebp-0x44]
	ja MissileTrajectory_260
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	call BG_GetWeaponDef
	movss xmm3, dword [ebp-0xa0]
	mulss xmm3, [ebp-0x44]
	movss [ebp-0xa0], xmm3
	and dword [ebp-0xa0], 0x7fffffff
	cvtss2sd xmm0, [ebp-0xa0]
	cvtss2sd xmm1, [ebp-0x9c]
MissileTrajectory_480:
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
	mulss xmm0, [missile_frametime]
	movss xmm4, dword [ebp-0x108]
	jmp MissileTrajectory_280
MissileTrajectory_210:
	movss xmm3, dword [ebp-0x80]
	movaps xmm6, xmm3
	mulss xmm6, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm6, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm4
	divss xmm6, xmm0
	jmp MissileTrajectory_290
MissileTrajectory_90:
	lea eax, [esi+0x18]
	mov [ebp-0xd8], eax
MissileTrajectory_400:
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
	jz MissileTrajectory_300
	lea ebx, [esi+0x24]
	movss xmm0, dword [ebp-0x24]
MissileTrajectory_460:
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
	jb MissileTrajectory_310
	movss xmm2, dword [_float_1_00000000]
MissileTrajectory_490:
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
	call Vec3NormalizeTo
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
	call JavelinRotateDir
	fstp dword [ebp-0x11c]
	movss xmm2, dword [ebp-0x11c]
	movss xmm1, dword [ebp-0xe8]
	ucomiss xmm2, [_float_30_00000000]
	jae MissileTrajectory_320
	jp MissileTrajectory_320
	cmp dword [esi+0x1e8], 0x1
	jz MissileTrajectory_330
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [_float_0_00000000]
	jbe MissileTrajectory_340
MissileTrajectory_330:
	movss xmm0, dword [missile_frametime]
	mov eax, [missileJavAccelClimb]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	mov eax, [missileJavSpeedLimitClimb]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm1, xmm0
	ja MissileTrajectory_350
MissileTrajectory_320:
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
	jz MissileTrajectory_70
	movss xmm3, dword [esi+0x20]
	subss xmm3, [ebp-0x24]
	subss xmm3, [esi+0x1e4]
	cmp dword [esi+0x1ec], 0x1
	jz MissileTrajectory_360
	mov eax, [missileJavClimbCeilingTop]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0xac], xmm1
MissileTrajectory_510:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd8]
	mov [esp], eax
	movss [ebp-0xf8], xmm3
	call Vec2Distance
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
	call Com_Printf
	jmp MissileTrajectory_70
MissileTrajectory_230:
	movaps xmm0, xmm6
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	ja MissileTrajectory_370
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
	movss xmm0, dword [missile_frametime]
	movss xmm1, dword [ebp-0x8c]
	mulss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	mulss xmm4, [ebp-0x94]
	mulss xmm4, xmm0
	jmp MissileTrajectory_380
MissileTrajectory_200:
	mov dword [esp+0x10], 0xc8
	mov dword [esp+0xc], 0x0
	mov eax, colorGreen
	mov [esp+0x8], eax
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea eax, [esi+0x18]
	mov [ebp-0xd8], eax
	mov [esp], eax
	call G_DebugLineWithDuration
	mov ecx, [ebp-0xd8]
	jmp MissileTrajectory_390
MissileTrajectory_100:
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
	jmp MissileTrajectory_400
MissileTrajectory_300:
	movss xmm1, dword [esi+0x20]
	subss xmm1, xmm0
	subss xmm1, [esi+0x1e4]
	mov edx, [esi+0x1ec]
	cmp edx, 0x1
	jz MissileTrajectory_410
	mov eax, [missileJavClimbCeilingTop]
	movss xmm0, dword [eax+0xc]
MissileTrajectory_520:
	ucomiss xmm1, xmm0
	jbe MissileTrajectory_420
	test edx, edx
	jnz MissileTrajectory_430
	mov eax, [missileJavClimbAngleTop]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xc0], xmm0
MissileTrajectory_570:
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea ebx, [esi+0x24]
	mov [esp], ebx
	call Vec2NormalizeTo
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
	jbe MissileTrajectory_440
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz MissileTrajectory_450
	mov dword [esp+0x4], _cstring_javelin__exceede
	mov dword [esp], 0xf
	call Com_Printf
MissileTrajectory_450:
	mov dword [esi+0x1e8], 0x2
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x24]
	jmp MissileTrajectory_460
MissileTrajectory_220:
	andps xmm6, [_data16_7fffffff]
	addss xmm1, [_float_60_00000000]
	ucomiss xmm1, xmm6
	ja MissileTrajectory_370
	ucomiss xmm4, xmm5
	jbe MissileTrajectory_470
	movss xmm3, dword [ebp-0x90]
	mulss xmm3, xmm2
	movss xmm0, dword [missile_frametime]
	mulss xmm3, xmm0
	movss [ebp-0x8c], xmm3
	movss xmm4, dword [ebp-0x94]
	mulss xmm4, xmm2
	mulss xmm4, xmm0
	jmp MissileTrajectory_380
MissileTrajectory_340:
	movss xmm0, dword [missile_frametime]
	mov eax, [missileJavAccelDescend]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	mov eax, [missileJavSpeedLimitDescend]
	movss xmm0, dword [eax+0xc]
	minss xmm0, xmm1
MissileTrajectory_350:
	movaps xmm1, xmm0
	jmp MissileTrajectory_320
MissileTrajectory_250:
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0xa4], xmm1
	ucomiss xmm5, [ebp-0x44]
	ja MissileTrajectory_260
	mov eax, [esi+0xc4]
	mov [esp], eax
	movss [ebp-0x108], xmm4
	movss [ebp-0x118], xmm5
	call BG_GetWeaponDef
	movss xmm2, dword [ebp-0xa0]
	mulss xmm2, [ebp-0x44]
	movss [ebp-0xa0], xmm2
	and dword [ebp-0xa0], 0x7fffffff
	cvtss2sd xmm0, [ebp-0xa0]
	cvtss2sd xmm1, [ebp-0xa4]
	jmp MissileTrajectory_480
MissileTrajectory_310:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp MissileTrajectory_490
MissileTrajectory_420:
	lea ebx, [esi+0x24]
MissileTrajectory_600:
	mov ecx, [esi+0x1ec]
	test ecx, ecx
	jnz MissileTrajectory_500
	movss xmm0, dword [ebp-0x24]
	mov eax, [missileJavClimbHeightTop]
	addss xmm0, [eax+0xc]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	jmp MissileTrajectory_460
MissileTrajectory_360:
	mov eax, [missileJavClimbCeilingDirect]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xac], xmm0
	jmp MissileTrajectory_510
MissileTrajectory_410:
	mov eax, [missileJavClimbCeilingDirect]
	movss xmm0, dword [eax+0xc]
	jmp MissileTrajectory_520
MissileTrajectory_270:
	movss xmm1, dword [ebp-0x80]
	ucomiss xmm1, xmm5
	jbe MissileTrajectory_530
	movss xmm2, dword [ebp-0xa0]
	ucomiss xmm2, xmm5
	jp MissileTrajectory_540
	jz MissileTrajectory_530
MissileTrajectory_540:
	cvtsi2ss xmm0, dword [ebx+0x568]
	divss xmm1, xmm0
MissileTrajectory_560:
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
	jbe MissileTrajectory_550
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
	mulss xmm0, [missile_frametime]
	jmp MissileTrajectory_280
MissileTrajectory_530:
	cvtsi2ss xmm0, dword [ebx+0x568]
	movss xmm1, dword [ebp-0x98]
	divss xmm1, xmm0
	jmp MissileTrajectory_560
MissileTrajectory_470:
	movaps xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	movss xmm6, dword [ebp-0x90]
	mulss xmm6, xmm1
	movss xmm0, dword [missile_frametime]
	mulss xmm6, xmm0
	movss [ebp-0x8c], xmm6
	movss xmm4, dword [ebp-0x94]
	mulss xmm4, xmm1
	mulss xmm4, xmm0
	jmp MissileTrajectory_380
MissileTrajectory_550:
	mov dword [esi+0x14], 0x1
	jmp MissileTrajectory_260
MissileTrajectory_430:
	mov eax, [missileJavClimbAngleDirect]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0xc0], xmm1
	jmp MissileTrajectory_570
MissileTrajectory_500:
	movss xmm0, dword [ebp-0x24]
	mov eax, [missileJavClimbHeightDirect]
	addss xmm0, [eax+0xc]
	movss [ebp-0x24], xmm0
	cmp word [esi+0x154], 0x0
	jnz MissileTrajectory_580
	mov eax, g_entities
	mov [ebp-0xd4], eax
	mov edx, eax
	add edx, 0x9cd8c
	mov [ebp-0xb8], edx
MissileTrajectory_590:
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
	call Vec2Normalize
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
	jmp MissileTrajectory_460
MissileTrajectory_580:
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
	jmp MissileTrajectory_590
MissileTrajectory_440:
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call Vec2Distance
	fstp dword [ebp-0xbc]
	movss xmm0, dword [ebp-0xbc]
	ucomiss xmm0, [_float_400_00000000]
	jae MissileTrajectory_600
	jp MissileTrajectory_600
	mov eax, [missileDebugText]
	cmp byte [eax+0xc], 0x0
	jz MissileTrajectory_450
	mov dword [esp+0x4], _cstring_javelin__exceede1
	mov dword [esp], 0xf
	call Com_Printf
	jmp MissileTrajectory_450
	nop


;G_FireRocket(gentity_s*, unsigned int, float*, float*, float const*, gentity_s*, float const*)
G_FireRocket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call BG_GetWeaponDef
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
	jb G_FireRocket_10
	movss xmm5, dword [_float_1_00000000]
	movaps xmm2, xmm5
G_FireRocket_150:
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
	jz G_FireRocket_20
	mov eax, [ebp+0x10]
	add eax, 0x4
	mov [ebp-0x40], eax
	mov edx, [ebp+0x10]
	add edx, 0x8
	mov [ebp-0x3c], edx
G_FireRocket_200:
	call G_Spawn
	mov esi, eax
	mov eax, scr_const
	movzx eax, word [eax+0x6a]
	mov [esp+0x4], eax
	lea eax, [esi+0x170]
	mov [esp], eax
	call Scr_SetString
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
	jz G_FireRocket_30
	cvtsi2ss xmm0, dword [edi+0x568]
	mulss xmm0, [_float__35_00000000]
	divss xmm0, dword [_float_600_00000000]
	addss xmm0, [_float_85_00000000]
	cvttss2si edx, xmm0
	cmp edx, 0x31
	jle G_FireRocket_40
	mov edx, 0x32
G_FireRocket_130:
	lea eax, [edx+ecx]
	mov [esi+0x54], eax
	mov eax, [ebp+0x8]
G_FireRocket_180:
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
	jle G_FireRocket_50
	mov [esi+0x19c], edx
G_FireRocket_50:
	xor ebx, ebx
	mov [esi+0x1bc], ebx
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	lea eax, [esi+0x214]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov eax, [ebp+0x20]
	test eax, eax
	jz G_FireRocket_60
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
	jz G_FireRocket_70
G_FireRocket_160:
	mov eax, [eax+0x3010]
	mov [esi+0x1cc], eax
G_FireRocket_170:
	mov [esp], esi
	call G_BroadcastEntity
	mov dword [esi+0xc], 0x2
	pxor xmm1, xmm1
	movss xmm0, dword [edi+0x57c]
	ucomiss xmm0, xmm1
	jbe G_FireRocket_80
	mov dword [esi+0xc], 0x1
	lea ecx, [esi+0x24]
	movss [esi+0x24], xmm1
	movss [ecx+0x4], xmm1
	movss [ecx+0x8], xmm1
G_FireRocket_140:
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
	call vectoangles
	mov [esp+0x4], ebx
	mov [esp], esi
	call G_SetAngle
	movss xmm0, dword [edi+0x580]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe G_FireRocket_90
	mov dword [esi+0xc], 0x1
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call AngleVectors
	call G_random
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x58], xmm0
	call G_random
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
G_FireRocket_90:
	mov eax, [edi+0x6b8]
	test eax, eax
	jz G_FireRocket_100
	mov dword [esi+0xc], 0x1
	mov dword [esi+0x30], 0x1
	mov dword [esi+0x14], 0x0
	cmp dword [edi+0x6b8], 0x3
	jz G_FireRocket_110
G_FireRocket_100:
	cvtsi2ss xmm0, dword [edi+0x818]
	cvtsi2ss xmm1, dword [edi+0x568]
	divss xmm0, xmm1
	mulss xmm0, [_float_1000_00000000]
	movss [esi+0x1b4], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [edi+0x810]
	jnz G_FireRocket_120
	jp G_FireRocket_120
	or dword [esi+0x180], 0x20000
	mov [esp], esi
	call SV_LinkEntity
	mov eax, esi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FireRocket_40:
	cmp edx, 0x14
	mov eax, 0x14
	cmovle edx, eax
	jmp G_FireRocket_130
G_FireRocket_120:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x180]
	and eax, 0x20000
	or [esi+0x180], eax
	mov [esp], esi
	call SV_LinkEntity
	; Emit missile_fire script event
	push dword [edi]			; weapon name 
	call Scr_AddString
	add esp, 0x4
	push esi
	call Scr_AddEntity
	add esp, 0x4
	push 2
	mov eax, scr_const
	movzx eax, word [eax + 0x174]	; scr_const.missile_fire
	push eax
	push dword [ebp + 0x8]
	call Scr_Notify
	add esp, 0xC
	
	mov eax, esi
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FireRocket_80:
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
	jmp G_FireRocket_140
G_FireRocket_10:
	movss xmm5, dword [_float_1_00000000]
	movaps xmm2, xmm5
	divss xmm2, xmm1
	jmp G_FireRocket_150
G_FireRocket_60:
	lea eax, [esi+0x1dc]
	mov [esi+0x1dc], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x15c]
	test eax, eax
	jnz G_FireRocket_160
G_FireRocket_70:
	mov dword [esi+0x1cc], 0x0
	jmp G_FireRocket_170
G_FireRocket_30:
	mov eax, ebx
	jmp G_FireRocket_180
G_FireRocket_20:
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
	jb G_FireRocket_190
G_FireRocket_210:
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
	call AngleVectors
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
	jmp G_FireRocket_200
G_FireRocket_110:
	mov dword [esi+0xc], 0x5
	mov edx, level
	mov eax, [edx+0x1ec]
	mov [esi+0x10], eax
	mov dword [esi+0x1e8], 0x0
	mov dword [esi+0x1ec], 0x1
	jmp G_FireRocket_100
G_FireRocket_190:
	divss xmm5, xmm1
	jmp G_FireRocket_210
	nop


;G_RunMissile(gentity_s*)
G_RunMissile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ec
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edi, eax
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x7c]
	lea eax, [ecx-0x3fe]
	cmp eax, 0x1
	jbe G_RunMissile_10
	cmp dword [edi+0x5a4], 0x1
	jz G_RunMissile_20
G_RunMissile_10:
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz G_RunMissile_30
G_RunMissile_590:
	lea esi, [eax+0x13c]
	lea edx, [eax+0x140]
	mov [ebp-0x134], edx
	lea ecx, [eax+0x144]
	mov [ebp-0x138], ecx
	mov edx, eax
G_RunMissile_260:
	mov eax, [edx+0x13c]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x140]
	mov [ebp-0x38], eax
	mov eax, [edx+0x144]
	mov [ebp-0x34], eax
	lea edx, [ebp-0x30]
	mov eax, [ebp+0x8]
	call MissileTrajectory
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
	jb G_RunMissile_40
	movss xmm1, dword [_float_1_00000000]
G_RunMissile_410:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	ucomiss xmm2, [_float_0_00100000]
	jb G_RunMissile_50
G_RunMissile_290:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x2c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_30_00000000]
	ja G_RunMissile_60
	mov ecx, edx
G_RunMissile_380:
	mov edx, [ecx+0x190]
	cmp word [ecx+0x154], 0x0
	jz G_RunMissile_70
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
G_RunMissile_280:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call G_LocationalTrace
	cmp byte [ebp-0x93], 0x0
	jnz G_RunMissile_80
G_RunMissile_580:
	mov edx, [ebp-0xac]
	mov eax, edx
	and eax, 0x1f00000
	cmp eax, 0x1400000
	jz G_RunMissile_90
G_RunMissile_720:
	and edx, 0x1f00000
	cmp edx, 0x900000
	jz G_RunMissile_100
G_RunMissile_740:
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
	jz G_RunMissile_110
	mov eax, [edi+0x5a4]
	cmp eax, 0x1
	jz G_RunMissile_120
	sub eax, 0x2
	cmp eax, 0x1
	jbe G_RunMissile_130
G_RunMissile_640:
	movss xmm0, dword [ebp-0xbc]
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	jp G_RunMissile_140
	jz G_RunMissile_150
G_RunMissile_140:
	ucomiss xmm1, xmm0
	ja G_RunMissile_160
G_RunMissile_600:
	mov ecx, [ebp+0x8]
G_RunMissile_110:
	mov [esp], ecx
	call SV_LinkEntity
	mov edx, [edi+0x574]
	test edx, edx
	jle G_RunMissile_170
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
G_RunMissile_170:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	cmp dword [eax+0x20], 0x3
	jz G_RunMissile_180
G_RunMissile_730:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jp G_RunMissile_190
	jz G_RunMissile_200
G_RunMissile_190:
	test byte [ebp-0xac], 0x4
	jz G_RunMissile_210
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Scr_Notify
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_FreeEntity
G_RunMissile_300:
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RunMissile_30:
	cmp ecx, 0x3fe
	jz G_RunMissile_220
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
	jnz G_RunMissile_230
	mov ecx, 0x3ff
G_RunMissile_390:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0xbc]
	mov [esp], eax
	call G_LocationalTrace
	cmp byte [ebp-0x93], 0x0
	jnz G_RunMissile_240
G_RunMissile_680:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jnz G_RunMissile_250
	jp G_RunMissile_250
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
	jmp G_RunMissile_260
G_RunMissile_370:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x190]
	or edx, 0x20
	cmp word [eax+0x154], 0x0
	jnz G_RunMissile_270
G_RunMissile_70:
	mov ecx, 0x3ff
	jmp G_RunMissile_280
G_RunMissile_50:
	jp G_RunMissile_290
G_RunMissile_310:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_RunThink
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RunMissile_20:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov esi, [eax+0x164]
	test esi, esi
	jz G_RunMissile_10
	mov eax, [eax+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0xc], eax
	mov [esp], edx
	call G_RunThink
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SV_LinkEntity
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_RunMissile_210:
	lea edx, [ebp-0xb8]
	mov [esp], edx
	call Vec3Normalize
	fstp st0
	lea eax, [ebp-0x48]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0xbc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call MissileImpact
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x4
	jnz G_RunMissile_300
G_RunMissile_430:
	mov eax, [missileDebugAttractors]
	cmp byte [eax+0xc], 0x0
	jz G_RunMissile_310
	xor edi, edi
	mov esi, attrGlob
	mov dword [ebp-0x13c], attrGlob
	jmp G_RunMissile_320
G_RunMissile_350:
	mov ebx, colorOrange
G_RunMissile_360:
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea eax, [ebp-0x60]
	mov [esp], eax
	call G_DebugCircleEx
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x90]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea edx, [ebp-0x60]
	mov [esp], edx
	call G_DebugCircleEx
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x41200000
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call G_DebugCircleEx
G_RunMissile_330:
	add edi, 0x1
	add dword [ebp-0x13c], 0x1c
	add esi, 0x1c
	cmp edi, 0x20
	jz G_RunMissile_310
G_RunMissile_320:
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
	jz G_RunMissile_330
	mov ecx, [esi+0x4]
	cmp ecx, 0x3ff
	jz G_RunMissile_340
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
G_RunMissile_400:
	cmp byte [esi+0x1], 0x0
	jz G_RunMissile_350
	mov ebx, colorGreen
	jmp G_RunMissile_360
G_RunMissile_60:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], esi
	call SV_PointContents
	test eax, eax
	jz G_RunMissile_370
	mov ecx, [ebp+0x8]
	jmp G_RunMissile_380
G_RunMissile_230:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp G_RunMissile_390
G_RunMissile_340:
	mov eax, [ebp-0x13c]
	mov edx, [eax+0x8]
	mov [ebp-0x60], edx
	mov edx, eax
	mov eax, [eax+0xc]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x58], eax
	jmp G_RunMissile_400
G_RunMissile_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp G_RunMissile_410
G_RunMissile_200:
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
	jp G_RunMissile_420
	jz G_RunMissile_430
G_RunMissile_420:
	mov dword [edx+0x7c], 0x3ff
	cmp dword [edi+0x12c], 0x2
	jnz G_RunMissile_430
	test byte [edx+0x182], 0x2
	jnz G_RunMissile_430
	mov eax, [edi+0x6b8]
	test eax, eax
	jnz G_RunMissile_430
	mov eax, [edx+0xc4]
	mov [esp], eax
G_RunMissile_Destabilize_inlinestart:
	call BG_GetWeaponDef
	mov edi, eax
	mov edx, [ebp+0x8]
	cvttss2si eax, [edx+0x1b4]
	add eax, [edx+0x10]
	mov edx, level
	cmp eax, [edx+0x1ec]
	jge G_RunMissile_440
	movss xmm0, dword [edi+0x814]
	movss [ebp-0x10c], xmm0
	mov eax, [ebp+0x8]
	test byte [eax+0x182], 0x1
	jz G_RunMissile_450
	mov ebx, 0x1
G_RunMissile_460:
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0x0
	call G_flrand
	fstp dword [ebp-0x1ac]
	movss xmm0, dword [ebp-0x1ac]
	mulss xmm0, [ebp-0x10c]
	movss [ebp+ebx*4-0x64], xmm0
	add ebx, 0x1
	cmp ebx, 0x4
	jnz G_RunMissile_460
	pxor xmm0, xmm0
	mov edx, [ebp+0x8]
	ucomiss xmm0, [edx+0x1d4]
	ja G_RunMissile_470
	mov edx, [ebp-0x60]
G_RunMissile_930:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x1d0]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe G_RunMissile_480
	mov eax, [ebp-0x5c]
	xor eax, 0x80000000
	mov [ebp-0x5c], eax
G_RunMissile_480:
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
G_RunMissile_900:
	mov edx, [ebp+0x8]
	add edx, 0x3c
	mov [ebp-0x110], edx
	movss xmm1, dword [missile_frametime]
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
	call G_SetAngle
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AngleVectors
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
	call BG_GetWeaponDef
	mov [ebp-0xfc], eax
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov edx, [ebp-0x12c]
	mov [esp], edx
	call Vec3NormalizeTo
	fstp dword [ebp-0x100]
	movss xmm0, dword [ebp-0x100]
	ucomiss xmm0, [_float_0_00001000]
	jp G_RunMissile_490
	jb G_RunMissile_430
G_RunMissile_490:
	xor esi, esi
	pxor xmm1, xmm1
	movss [ebp-0xf8], xmm1
	movss [ebp-0xf4], xmm1
	movaps xmm7, xmm1
	mov ebx, attrGlob
	mov dword [ebp-0x140], attrGlob
	jmp G_RunMissile_500
G_RunMissile_560:
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
G_RunMissile_570:
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
	jae G_RunMissile_510
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
	call Vec3NormalizeTo
	fstp dword [ebp-0x1ac]
	movss xmm2, dword [ebp-0x1ac]
	movss xmm3, dword [ebp-0x168]
	movss xmm4, dword [ebp-0x178]
	movss xmm5, dword [ebp-0x188]
	movss xmm6, dword [ebp-0x198]
	movss xmm7, dword [ebp-0x1a8]
	ucomiss xmm2, [_float_0_00001000]
	jae G_RunMissile_520
	jp G_RunMissile_520
	cmp byte [ebx+0x1], 0x0
	jnz G_RunMissile_510
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0xbf800000
G_RunMissile_520:
	lea eax, [ebx+0x1]
	mov [ebp-0xf0], eax
	cmp byte [ebx+0x1], 0x0
	jnz G_RunMissile_530
	movss xmm0, dword [ebp-0x88]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe G_RunMissile_530
	mov dword [ebp-0x90], 0x0
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0xbf800000
	pxor xmm2, xmm2
G_RunMissile_530:
	mulss xmm3, xmm3
	mulss xmm5, xmm5
	addss xmm3, xmm5
	mulss xmm6, xmm6
	addss xmm3, xmm6
	sqrtss xmm0, xmm3
	movss xmm1, dword [ebx+0x18]
	ucomiss xmm0, xmm1
	jbe G_RunMissile_540
G_RunMissile_510:
	add esi, 0x1
	add dword [ebp-0x140], 0x1c
	add ebx, 0x1c
	cmp esi, 0x20
	jz G_RunMissile_550
G_RunMissile_500:
	cmp byte [ebx], 0x0
	jz G_RunMissile_510
	mov ecx, [ebx+0x4]
	cmp ecx, 0x3ff
	jnz G_RunMissile_560
	mov eax, [ebp-0x140]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [eax+0x10]
	jmp G_RunMissile_570
G_RunMissile_80:
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
	call Vec3NormalizeTo
	fstp st0
	jmp G_RunMissile_580
G_RunMissile_250:
	mov edx, [ebp+0x8]
	jmp G_RunMissile_260
G_RunMissile_220:
	mov eax, [ebp+0x8]
	jmp G_RunMissile_590
G_RunMissile_160:
	movss xmm0, dword [ebp-0xb0]
	ucomiss xmm0, [_float_0_69999999]
	jbe G_RunMissile_600
G_RunMissile_150:
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
	jnz G_RunMissile_610
	mov ecx, 0x3ff
G_RunMissile_790:
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
	call G_LocationalTrace
	cmp byte [ebp-0xbf], 0x0
	jnz G_RunMissile_620
G_RunMissile_810:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe8]
	jp G_RunMissile_630
	jz G_RunMissile_600
G_RunMissile_630:
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
	jmp G_RunMissile_110
G_RunMissile_130:
	movss xmm0, dword [ebp-0xb0]
	ucomiss xmm0, [_float_0_69999999]
	jbe G_RunMissile_640
G_RunMissile_120:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xbc]
	jbe G_RunMissile_600
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
	jnz G_RunMissile_650
	mov ecx, 0x3ff
G_RunMissile_840:
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
	call G_LocationalTrace
	cmp byte [ebp-0xbf], 0x0
	jnz G_RunMissile_660
G_RunMissile_850:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe8]
	jp G_RunMissile_670
	jz G_RunMissile_600
G_RunMissile_670:
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
	jmp G_RunMissile_110
G_RunMissile_240:
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
	call Vec3NormalizeTo
	fstp st0
	jmp G_RunMissile_680
G_RunMissile_90:
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x24
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, [_float_0_00000000]
	jb G_RunMissile_690
G_RunMissile_830:
	mov dword [esp+0x4], 0x2c
	mov [esp], esi
	call G_TempEntity
	mov ebx, eax
	lea ecx, [ebp-0xb8]
	mov [esp], ecx
	call DirToByte
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
	jnz G_RunMissile_700
	mov ecx, 0x3ff
G_RunMissile_800:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call G_LocationalTrace
	cmp byte [ebp-0x93], 0x0
	jnz G_RunMissile_710
G_RunMissile_820:
	mov edx, [ebp-0xac]
	jmp G_RunMissile_720
G_RunMissile_180:
	mov dword [esp+0x10], 0x3
	mov eax, [edi+0x55c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edx
	call G_GrenadeTouchTriggerDamage
	jmp G_RunMissile_730
G_RunMissile_100:
	mov eax, [edi+0x34c]
	mov [ebp-0x128], eax
	lea edx, [ebp-0xbc]
	mov [esp], edx
	call Trace_GetEntityHitId
	cmp ax, 0x3fd
	ja G_RunMissile_740
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
	jz G_RunMissile_740
	mov ecx, [ebp-0x128]
	test ecx, ecx
	jz G_RunMissile_740
	lea eax, [ebp-0x54]
	mov [esp+0x8], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [esp], eax
	call BG_EvaluateTrajectoryDelta
	movss xmm0, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x50]
	movss xmm2, dword [ebp-0x4c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_1_00000000]
	jp G_RunMissile_750
	jb G_RunMissile_740
G_RunMissile_750:
	mov edx, [ebp+0x8]
	add edx, 0x154
	mov [ebp-0x124], edx
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x154], 0x0
	jnz G_RunMissile_760
	xor edx, edx
G_RunMissile_880:
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
	call G_Damage
	mov edx, [ebx+0x120]
	mov [ebp-0x120], edx
	mov dword [ebx+0x120], 0x0
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x190]
	mov edx, [ebp-0x124]
	cmp word [edx], 0x0
	jnz G_RunMissile_770
	mov edx, 0x3ff
G_RunMissile_890:
	mov eax, bulletPriorityMap
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	lea eax, [ebp-0xbc]
	mov [esp], eax
	call G_LocationalTrace
	cmp byte [ebp-0x93], 0x0
	jz G_RunMissile_780
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
	call Vec3NormalizeTo
	fstp st0
G_RunMissile_780:
	mov edx, [ebp-0x120]
	mov [ebx+0x120], edx
	jmp G_RunMissile_740
G_RunMissile_610:
	movzx eax, word [eax+0x154]
	lea ecx, [eax-0x1]
	jmp G_RunMissile_790
G_RunMissile_270:
	movzx eax, word [eax+0x154]
	lea ecx, [eax-0x1]
	jmp G_RunMissile_280
G_RunMissile_700:
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp G_RunMissile_800
G_RunMissile_620:
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
	call Vec3NormalizeTo
	fstp st0
	jmp G_RunMissile_810
G_RunMissile_710:
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
	call Vec3NormalizeTo
	fstp st0
	jmp G_RunMissile_820
G_RunMissile_690:
	jp G_RunMissile_830
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x4c], xmm0
	jmp G_RunMissile_830
G_RunMissile_650:
	movzx eax, word [ecx+0x154]
	lea ecx, [eax-0x1]
	jmp G_RunMissile_840
G_RunMissile_660:
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
	call Vec3NormalizeTo
	fstp st0
	jmp G_RunMissile_850
G_RunMissile_540:
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
	jnz G_RunMissile_860
	subss xmm0, [_float_1_00000000]
G_RunMissile_860:
	movss xmm3, dword [ebp-0xec]
	mulss xmm3, xmm0
	test al, al
	jz G_RunMissile_870
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
G_RunMissile_870:
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
	jmp G_RunMissile_510
G_RunMissile_760:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, [ebp-0x130]
	jmp G_RunMissile_880
G_RunMissile_770:
	mov edx, [ebp-0x124]
	movzx eax, word [edx]
	lea edx, [eax-0x1]
	jmp G_RunMissile_890
G_RunMissile_440:
	mov ecx, [ebp+0x8]
	test byte [ecx+0x182], 0x1
	jz G_RunMissile_430
	lea ecx, [ecx+0x1d0]
	jmp G_RunMissile_900
G_RunMissile_550:
	mov eax, vec3_origin
	ucomiss xmm7, [eax]
	jnz G_RunMissile_910
	jp G_RunMissile_910
	movss xmm0, dword [ebp-0xf4]
	ucomiss xmm0, [eax+0x4]
	jnz G_RunMissile_910
	jp G_RunMissile_910
	movss xmm1, dword [ebp-0xf8]
	ucomiss xmm1, [eax+0x8]
	jnz G_RunMissile_910
	jnp G_RunMissile_430
G_RunMissile_910:
	movss xmm0, dword [missile_frametime]
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
	call Vec3NormalizeTo
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
	call vectoangles
	jmp G_RunMissile_430
G_RunMissile_450:
	mov ebx, 0x1
G_RunMissile_920:
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], 0xbf800000
	call G_flrand
	fstp dword [ebp-0x1ac]
	movss xmm0, dword [ebp-0x1ac]
	mulss xmm0, [ebp-0x10c]
	movss [ebp+ebx*4-0x64], xmm0
	add ebx, 0x1
	cmp ebx, 0x4
	jnz G_RunMissile_920
	mov edx, [ebp-0x60]
	jmp G_RunMissile_480
G_RunMissile_470:
	mov edx, [ebp-0x60]
	xor edx, 0x80000000
	mov [ebp-0x60], edx
	jmp G_RunMissile_930


;G_FireGrenade(gentity_s*, float*, float*, int, unsigned char, int, int)
G_FireGrenade:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x14]
	movzx ebx, byte [ebp+0x18]
	mov [esp], esi
	call BG_GetWeaponDef
	mov [ebp-0x1c], eax
	call G_Spawn
	mov edi, eax
	mov eax, scr_const
	movzx eax, word [eax+0x3e]
	mov [esp+0x4], eax
	lea eax, [edi+0x170]
	mov [esp], eax
	call Scr_SetString
	mov [edi+0xc4], esi
	movzx ebx, bl
	mov [edi+0xc8], ebx
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_InitGrenadeEntity
	mov eax, [ebp+0x1c]
	test eax, eax
	jz G_FireGrenade_10
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x5b0]
	test eax, eax
	jnz G_FireGrenade_20
G_FireGrenade_10:
	xor eax, eax
G_FireGrenade_160:
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_InitGrenadeMovement
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz G_FireGrenade_30
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
	jle G_FireGrenade_40
	mov edx, 0x32
G_FireGrenade_150:
	lea eax, [edx+ecx]
	mov [edi+0x54], eax
G_FireGrenade_30:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x574]
	test eax, eax
	jz G_FireGrenade_50
	mov eax, [ebp+0x20]
	test eax, eax
	jle G_FireGrenade_60
G_FireGrenade_50:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x15c]
	test eax, eax
	jz G_FireGrenade_70
	mov edx, [ebp-0x1c]
	mov esi, [edx+0x5ac]
	test esi, esi
	jnz G_FireGrenade_80
	mov dword [eax+0x44], 0x0
	mov ecx, level
G_FireGrenade_140:
	mov eax, [ecx+0x1ec]
	mov [edi+0x1b8], eax
	mov ebx, [edi+0x19c]
	test ebx, ebx
	jnz G_FireGrenade_90
	mov eax, [ecx+0x1ec]
	add eax, 0x7530
	mov [edi+0x19c], eax
G_FireGrenade_90:
	mov eax, [ecx+0x1ec]
	add eax, 0xea60
	cmp eax, [edi+0x19c]
	jge G_FireGrenade_100
	mov [edi+0x19c], eax
G_FireGrenade_100:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x584]
	test eax, eax
	jz G_FireGrenade_110
	mov [esp], eax
	call XModelGetName
	mov [esp+0x4], eax
	mov [esp], edi
	call G_SetModel
G_FireGrenade_110:
	mov [esp], edi
	call G_DObjUpdate
	mov eax, [ebp-0x1c]
	mov ecx, [eax+0x574]
	test ecx, ecx
	jnz G_FireGrenade_120
	mov eax, [eax]
	mov [esp], eax
	call Scr_AddString
	mov [esp], edi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x2
	mov eax, scr_const
	movzx eax, word [eax+0x42]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_Notify
G_FireGrenade_120:
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_FireGrenade_80:
	mov edx, [eax+0x44]
	test edx, edx
	jnz G_FireGrenade_130
G_FireGrenade_70:
	mov ecx, level
	mov eax, [ecx+0x1ec]
	add [ebp+0x20], eax
	mov edx, [ebp+0x20]
	mov [edi+0x19c], edx
	jmp G_FireGrenade_140
G_FireGrenade_40:
	cmp edx, 0x14
	mov eax, 0x14
	cmovle edx, eax
	jmp G_FireGrenade_150
G_FireGrenade_20:
	mov eax, 0x1
	jmp G_FireGrenade_160
G_FireGrenade_130:
	mov ecx, level
	add edx, [ecx+0x1ec]
	mov [edi+0x19c], edx
	mov dword [eax+0x44], 0x0
	jmp G_FireGrenade_140
G_FireGrenade_60:
	mov ecx, level
	jmp G_FireGrenade_140


;G_ExplodeMissile(gentity_s*)
G_ExplodeMissile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov esi, [ebp+0x8]
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edi, eax
	cmp dword [eax+0x144], 0x2
	jz G_ExplodeMissile_10
G_ExplodeMissile_70:
	lea ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x4], eax
	lea eax, [esi+0xc]
	mov [esp], eax
	call BG_EvaluateTrajectory
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
	call G_SetOrigin
	lea eax, [esi+0x13c]
	mov [ebp-0x98], eax
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call SV_PointContents
	test eax, eax
	setnz bl
	test bl, bl
	jnz G_ExplodeMissile_20
G_ExplodeMissile_210:
	mov byte [ebp-0x8d], 0x1
G_ExplodeMissile_220:
	or dword [esi+0x8], 0x20
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call Scr_AddVector
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	cmp byte [ebp-0x8d], 0x0
	jnz G_ExplodeMissile_30
	mov dword [ebp-0x94], 0x0
G_ExplodeMissile_190:
	mov eax, [edi+0x55c]
	test eax, eax
	jnz G_ExplodeMissile_40
	cmp dword [edi+0x588], 0x2
	jz G_ExplodeMissile_50
G_ExplodeMissile_120:
	cmp byte [ebp-0x8d], 0x0
	jnz G_ExplodeMissile_60
G_ExplodeMissile_80:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	mov [esp], esi
	call G_FreeEntity
G_ExplodeMissile_90:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ExplodeMissile_10:
	cmp dword [esi+0x7c], 0x3ff
	jnz G_ExplodeMissile_70
	mov eax, level
	mov eax, [eax+0x1ec]
	sub eax, [esi+0x1b8]
	cmp eax, 0xea60
	jg G_ExplodeMissile_80
	mov dword [esi+0x19c], 0x32 ;nextthink = 50
	jmp G_ExplodeMissile_90
G_ExplodeMissile_60:
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call SV_LinkEntity
	jmp G_ExplodeMissile_80
G_ExplodeMissile_40:
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
	call AngleVectors
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov edx, eax
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov ebx, [eax+0x24]
	cmp ebx, 0x4
	jz G_ExplodeMissile_100
G_ExplodeMissile_280:
	cvtsi2ss xmm0, dword [edi+0x554]
	cvtsi2ss xmm2, dword [edi+0x560]
	cvtsi2ss xmm1, dword [edi+0x55c]
	cmp word [esi+0x198], 0x0
	jnz G_ExplodeMissile_110
	xor eax, eax
G_ExplodeMissile_260:
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
	call G_RadiusDamage
	cmp dword [edi+0x588], 0x2
	jnz G_ExplodeMissile_120
G_ExplodeMissile_50:
	mov ebx, [esi+0x1cc]
	cmp word [esi+0x198], 0x0
	jnz G_ExplodeMissile_130
	xor eax, eax
G_ExplodeMissile_270:
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	cvtsi2ss xmm0, dword [edi+0x558]
	movss [esp+0x8], xmm0
	cvtsi2ss xmm0, dword [edi+0x554]
	movss [esp+0x4], xmm0
	mov edx, [ebp-0x98]
	mov [esp], edx
	call G_FlashbangBlast
	jmp G_ExplodeMissile_120
G_ExplodeMissile_30:
	call G_Spawn
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
	call G_BroadcastEntity
	test bl, bl
	jz G_ExplodeMissile_140
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call G_SetOrigin
	mov ebx, [ebp-0x94]
	mov dword [ebx+0x84], 0x14
	lea edx, [ebp-0x48]
G_ExplodeMissile_250:
	mov eax, [edi+0x588]
	test eax, eax
	jz G_ExplodeMissile_150
	cmp eax, 0x6
	jz G_ExplodeMissile_150
	cmp eax, 0x1
	jz G_ExplodeMissile_160
	cmp eax, 0x2
	jz G_ExplodeMissile_170
	mov [esp], edx
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x31
	mov ecx, [ebp-0x94]
	mov [esp], ecx
	call G_AddEvent
	mov eax, level
	mov eax, [eax+0x1ec]
	mov ebx, [ebp-0x94]
	mov [ebx+0x54], eax
G_ExplodeMissile_290:
	cmp dword [edi+0x588], 0x5
	jnz G_ExplodeMissile_180
	mov eax, [edi+0x58c]
	test eax, eax
	jz G_ExplodeMissile_180
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
	call G_SetOrigin
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
;	mov dword [esp+0x4], _cstring_sending_smoke_gr
;	mov dword [esp], 0xf
;	call Com_Printf
	jmp G_ExplodeMissile_190
G_ExplodeMissile_20:
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
	call G_TraceCapsule
	cmp byte [ebp-0x57], 0x0
	jnz G_ExplodeMissile_200
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x80]
	jbe G_ExplodeMissile_200
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
	jmp G_ExplodeMissile_210
G_ExplodeMissile_200:
	mov byte [ebp-0x8d], 0x0
	jmp G_ExplodeMissile_220
G_ExplodeMissile_140:
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov edx, [ebp-0x94]
	mov [esp], edx
	call G_SetOrigin
	cmp dword [edi+0x5a4], 0x1
	jz G_ExplodeMissile_230
G_ExplodeMissile_310:
	mov ecx, [ebp-0x98]
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [_float_16_00000000]
	movss [ebp-0x28], xmm0
G_ExplodeMissile_320:
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
	call G_TraceCapsule
	mov eax, [edi+0x590]
	test eax, eax
	jz G_ExplodeMissile_240
	mov edx, _ZZ16G_ExplodeMissileP9gentity_sE19MY_STRAIGHTUPNORMAL
G_ExplodeMissile_300:
	mov eax, [ebp-0x70]
	and eax, 0x1f00000
	shr eax, 0x14
	mov ecx, [ebp-0x94]
	mov [ecx+0x84], eax
	jmp G_ExplodeMissile_250
G_ExplodeMissile_110:
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp G_ExplodeMissile_260
G_ExplodeMissile_130:
	movzx eax, word [esi+0x198]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea eax, [edx+eax-0x274]
	add eax, g_entities
	jmp G_ExplodeMissile_270
G_ExplodeMissile_100:
	cmp dword [edx+0x588], 0x6
	mov eax, 0xe
	cmovz ebx, eax
	jmp G_ExplodeMissile_280
G_ExplodeMissile_180:
	mov eax, [ebp-0x94]
	mov [esp], eax
	call G_FreeEntityAfterEvent
	jmp G_ExplodeMissile_190
G_ExplodeMissile_150:
	mov [esp], edx
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2d
	mov ebx, [ebp-0x94]
	mov [esp], ebx
	call G_AddEvent
	jmp G_ExplodeMissile_290
G_ExplodeMissile_240:
	lea edx, [ebp-0x7c]
	jmp G_ExplodeMissile_300
G_ExplodeMissile_230:
	cmp dword [esi+0x7c], 0x3ff
	jz G_ExplodeMissile_310
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
	jmp G_ExplodeMissile_320
G_ExplodeMissile_170:
	mov [esp], edx
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov edx, [ebp-0x94]
	mov [esp], edx
	call G_AddEvent
	jmp G_ExplodeMissile_290
G_ExplodeMissile_160:
	mov [esp], edx
	call DirToByte
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2e
	mov eax, [ebp-0x94]
	mov [esp], eax
	call G_AddEvent
	jmp G_ExplodeMissile_290


;G_TimedObjectThink(gentity_s*)
G_TimedObjectThink:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x8], 0xfff7ffff
	pop ebp
	ret
	nop


;G_InitGrenadeEntity(gentity_s*, gentity_s*)
G_InitGrenadeEntity:
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
	call BG_GetWeaponDef
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
	jz G_InitGrenadeEntity_10
	mov edx, [eax+0x44]
	test edx, edx
	js G_InitGrenadeEntity_20
G_InitGrenadeEntity_10:
	mov [esp+0x4], edi
	lea eax, [ebx+0x154]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov [esp+0x4], edi
	lea eax, [ebx+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
G_InitGrenadeEntity_60:
	mov dword [ebx+0x190], 0x2806891
	mov byte [ebx+0x16e], 0x7
	mov dword [esp+0x4], 0x0
	lea eax, [ebx+0x214]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov [esp], ebx
	call G_BroadcastEntity
	mov byte [ebx+0xf6], 0x4
	mov eax, [ebp-0x34]
	cmp dword [eax+0x144], 0x1
	jz G_InitGrenadeEntity_30
G_InitGrenadeEntity_70:
	mov eax, [edi+0x15c]
	test eax, eax
	jz G_InitGrenadeEntity_40
	mov eax, [eax+0x3010]
	mov [ebx+0x1cc], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_InitGrenadeEntity_20:
	mov esi, [eax+0x48]
	cmp esi, 0x3ff
	jz G_InitGrenadeEntity_10
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
	jnz G_InitGrenadeEntity_50
	xor eax, eax
G_InitGrenadeEntity_80:
	mov [esp+0x4], eax
	lea eax, [ebx+0x198]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	jmp G_InitGrenadeEntity_60
G_InitGrenadeEntity_40:
	mov dword [ebx+0x1cc], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_InitGrenadeEntity_30:
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
	call BG_FindItemForWeapon
	sub eax, bg_itemlist
	sar eax, 0x2
	movzx eax, ax
	mov [ebx+0x88], eax
	mov dword [ebx+0x8c], 0x40
	jmp G_InitGrenadeEntity_70
G_InitGrenadeEntity_50:
	movzx eax, word [ebx+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	lea eax, [edx+esi]
	jmp G_InitGrenadeEntity_80


;G_InitGrenadeMovement(gentity_s*, float const*, float const*, int)
G_InitGrenadeMovement:
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
	call vectoangles
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
	jz G_InitGrenadeMovement_10
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
	call AngleNormalize360
	fstp dword [edi+0x3c]
	mov dword [esp+0x4], 0x44480000
	mov dword [esp], 0x43a00000
	call G_flrand
	fstp dword [ebp-0x20]
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call G_irand
	lea eax, [eax+eax-0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss [edi+0x48], xmm0
	mov dword [edi+0x4c], 0x0
	mov dword [esp+0x4], 0x44070000
	mov dword [esp], 0x43340000
	call G_flrand
	fstp dword [ebp-0x1c]
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call G_irand
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
G_InitGrenadeMovement_10:
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp G_SetAngle
	nop


;G_RegisterMissileDvars()
G_RegisterMissileDvars:
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
	call Cvar_RegisterFloat
	mov [missileHellfireMaxSlope], eax
	mov dword [esp+0x14], _cstring_the_rate_at_whic
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3dcccccd
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_missilehellfireu
	call Cvar_RegisterFloat
	mov [missileHellfireUpAccel], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x461c4000
	mov dword [esp], _cstring_missilejavclimbh
	call Cvar_RegisterFloat
	mov [missileJavClimbHeightDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x466a6000
	mov dword [esp], _cstring_missilejavclimbh1
	call Cvar_RegisterFloat
	mov [missileJavClimbHeightTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42aa0000
	mov dword [esp], _cstring_missilejavclimba
	call Cvar_RegisterFloat
	mov [missileJavClimbAngleDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_missilejavclimba1
	call Cvar_RegisterFloat
	mov [missileJavClimbAngleTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_missilejavclimbc
	call Cvar_RegisterFloat
	mov [missileJavClimbCeilingDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov edi, 0x453b8000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_missilejavclimbc1
	call Cvar_RegisterFloat
	mov [missileJavClimbCeilingTop], eax
	mov dword [esp+0x14], _cstring_in_directfire_mo3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42700000
	mov dword [esp], _cstring_missilejavturnra
	call Cvar_RegisterFloat
	mov [missileJavTurnRateDirect], eax
	mov dword [esp+0x14], _cstring_in_topfire_mode_3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_missilejavturnra1
	call Cvar_RegisterFloat
	mov [missileJavTurnRateTop], eax
	mov dword [esp+0x14], _cstring_rocket_accelerat
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_missilejavaccelc
	call Cvar_RegisterFloat
	mov [missileJavAccelClimb], eax
	mov dword [esp+0x14], _cstring_rocket_accelerat1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_missilejavacceld
	call Cvar_RegisterFloat
	mov [missileJavAccelDescend], eax
	mov dword [esp+0x14], _cstring_rockets_speed_li
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_missilejavspeedl
	call Cvar_RegisterFloat
	mov [missileJavSpeedLimitClimb], eax
	mov dword [esp+0x14], _cstring_rockets_speed_li1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x45bb8000
	mov dword [esp], _cstring_missilejavspeedl1
	call Cvar_RegisterFloat
	mov [missileJavSpeedLimitDescend], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3d4ccccd
	mov dword [esp], _cstring_missilejavturnde
	call Cvar_RegisterFloat
	mov [missileJavTurnDecel], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x442f0000
	mov dword [esp], _cstring_missilejavclimbt
	call Cvar_RegisterFloat
	mov [missileJavClimbToOwner], eax
	mov dword [esp+0x14], _cstring_if_a_missile_exp
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42700000
	mov dword [esp], _cstring_missilewatermaxd
	call Cvar_RegisterFloat
	mov [missileWaterMaxDepth], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Missile_InitAttractors()
Missile_InitAttractors:
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
Missile_FreeAttractorRefs:
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
	jmp Missile_FreeAttractorRefs_10
Missile_FreeAttractorRefs_30:
	add ebx, 0x1
	add dword [ebp-0x14], 0x1c
	add edx, 0x1c
	cmp ebx, 0x20
	jz Missile_FreeAttractorRefs_20
Missile_FreeAttractorRefs_10:
	cmp byte [edx], 0x0
	jz Missile_FreeAttractorRefs_30
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz Missile_FreeAttractorRefs_30
	mov edi, [ebp-0x14]
	mov ecx, 0x7
	xor eax, eax
	rep stosd
	add ebx, 0x1
	add dword [ebp-0x14], 0x1c
	add edx, 0x1c
	cmp ebx, 0x20
	jnz Missile_FreeAttractorRefs_10
Missile_FreeAttractorRefs_20:
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileDeleteAttractor()
Scr_MissileDeleteAttractor:
	push ebp
	mov ebp, esp
	push edi
	sub esp, 0x14
	mov dword [esp], 0x0
	call Scr_GetInt
	mov edi, eax
	cmp eax, 0x1f
	jbe Scr_MissileDeleteAttractor_10
	mov dword [esp+0x4], _cstring_invalid_attracto
	mov dword [esp], 0x0
	call Scr_ParamError
Scr_MissileDeleteAttractor_10:
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
G_RegisterMissileDebugDvars:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], _cstring_draw_guided_miss
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugdraw
	call Cvar_RegisterBool
	mov [missileDebugDraw], eax
	mov dword [esp+0xc], _cstring_print_debug_miss
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugtext
	call Cvar_RegisterBool
	mov [missileDebugText], eax
	mov dword [esp+0xc], _cstring_draw_the_attract
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_missiledebugattr
	call Cvar_RegisterBool
	mov [missileDebugAttractors], eax
	leave
	ret
	nop


;Scr_MissileCreateRepulsorEnt()
Scr_MissileCreateRepulsorEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp Scr_MissileCreateRepulsorEnt_10
Scr_MissileCreateRepulsorEnt_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz Scr_MissileCreateRepulsorEnt_20
Scr_MissileCreateRepulsorEnt_10:
	cmp byte [eax], 0x0
	jnz Scr_MissileCreateRepulsorEnt_30
	mov edi, ebx
Scr_MissileCreateRepulsorEnt_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x0
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov eax, [eax]
	mov [esi+attrGlob+0x4], eax
	mov dword [esp], 0x1
	call Scr_GetFloat
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Scr_MissileCreateRepulsorEnt_40
Scr_MissileCreateRepulsorEnt_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MissileCreateRepulsorEnt_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call va
	mov [esp], eax
	call Scr_Error
	mov edi, 0x20
	jmp Scr_MissileCreateRepulsorEnt_50
Scr_MissileCreateRepulsorEnt_40:
	jp Scr_MissileCreateRepulsorEnt_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call Scr_ParamError
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileCreateAttractorEnt()
Scr_MissileCreateAttractorEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp Scr_MissileCreateAttractorEnt_10
Scr_MissileCreateAttractorEnt_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz Scr_MissileCreateAttractorEnt_20
Scr_MissileCreateAttractorEnt_10:
	cmp byte [eax], 0x0
	jnz Scr_MissileCreateAttractorEnt_30
	mov [ebp-0x1c], ebx
Scr_MissileCreateAttractorEnt_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x1
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov edi, eax
	mov dword [esp], 0x1
	call Scr_GetFloat
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x20]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Scr_MissileCreateAttractorEnt_40
Scr_MissileCreateAttractorEnt_60:
	mov eax, [edi]
	mov [esi+attrGlob+0x4], eax
	or dword [edi+0x180], 0x800000
	mov byte [esi+attrGlob], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MissileCreateAttractorEnt_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call va
	mov [esp], eax
	call Scr_Error
	mov dword [ebp-0x1c], 0x20
	jmp Scr_MissileCreateAttractorEnt_50
Scr_MissileCreateAttractorEnt_40:
	jp Scr_MissileCreateAttractorEnt_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call Scr_ParamError
	jmp Scr_MissileCreateAttractorEnt_60


;Scr_MissileCreateRepulsorOrigin()
Scr_MissileCreateRepulsorOrigin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp Scr_MissileCreateRepulsorOrigin_10
Scr_MissileCreateRepulsorOrigin_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz Scr_MissileCreateRepulsorOrigin_20
Scr_MissileCreateRepulsorOrigin_10:
	cmp byte [eax], 0x0
	jnz Scr_MissileCreateRepulsorOrigin_30
	mov edi, ebx
Scr_MissileCreateRepulsorOrigin_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x0
	mov dword [esi+attrGlob+0x4], 0x3ff
	lea eax, [esi+attrGlob+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	mov dword [esp], 0x1
	call Scr_GetFloat
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Scr_MissileCreateRepulsorOrigin_40
Scr_MissileCreateRepulsorOrigin_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MissileCreateRepulsorOrigin_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call va
	mov [esp], eax
	call Scr_Error
	mov edi, 0x20
	jmp Scr_MissileCreateRepulsorOrigin_50
Scr_MissileCreateRepulsorOrigin_40:
	jp Scr_MissileCreateRepulsorOrigin_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call Scr_ParamError
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_MissileCreateAttractorOrigin()
Scr_MissileCreateAttractorOrigin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	xor ebx, ebx
	mov eax, attrGlob
	jmp Scr_MissileCreateAttractorOrigin_10
Scr_MissileCreateAttractorOrigin_30:
	add ebx, 0x1
	add eax, 0x1c
	cmp ebx, 0x20
	jz Scr_MissileCreateAttractorOrigin_20
Scr_MissileCreateAttractorOrigin_10:
	cmp byte [eax], 0x0
	jnz Scr_MissileCreateAttractorOrigin_30
	mov edi, ebx
Scr_MissileCreateAttractorOrigin_50:
	lea eax, [ebx*4]
	mov esi, ebx
	shl esi, 0x5
	sub esi, eax
	mov byte [esi+attrGlob+0x1], 0x1
	mov dword [esi+attrGlob+0x4], 0x3ff
	lea eax, [esi+attrGlob+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	mov dword [esp], 0x1
	call Scr_GetFloat
	mov ebx, attrGlob+0x10
	fstp dword [esi+ebx+0x4]
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [esi+ebx+0x8], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Scr_MissileCreateAttractorOrigin_40
Scr_MissileCreateAttractorOrigin_60:
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_MissileCreateAttractorOrigin_20:
	mov dword [esp+0x4], 0x20
	mov dword [esp], _cstring_ran_out_of_attra
	call va
	mov [esp], eax
	call Scr_Error
	mov edi, 0x20
	jmp Scr_MissileCreateAttractorOrigin_50
Scr_MissileCreateAttractorOrigin_40:
	jp Scr_MissileCreateAttractorOrigin_60
	mov dword [esp+0x4], _cstring_maxdist_must_be_
	mov dword [esp], 0x2
	call Scr_ParamError
	mov byte [esi+attrGlob], 0x1
	mov [esp], edi
	call Scr_AddInt
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
_float_80_00000000:		dd 0x42a00000	; 80
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float_0_85000002:		dd 0x3f59999a	; 0.85
_float_45_00000000:		dd 0x42340000	; 45
_float_90_00000000:		dd 0x42b40000	; 90
_float_180_00000000:		dd 0x43340000	; 180
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_05000000:		dd 0x3c888889	; 0.0166667
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
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
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

align   16,db 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
