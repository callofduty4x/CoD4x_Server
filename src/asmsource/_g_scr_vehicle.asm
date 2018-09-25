;Imports of g_scr_vehicle:
	extern s_vehicleInfos
	extern Scr_GetFloat
	extern Scr_GetNumParam
	extern Scr_ParamError
	extern Com_PrintWarning
	extern AnglesToAxis
	extern MatrixTranspose
	extern MatrixMultiply
	extern AxisToAngles
	extern Vec2Normalize
	extern G_SetOrigin
	extern G_SetAngle
	extern SV_LinkEntity
	extern floorf
	extern sinf
	extern cosf
	extern scr_const
	extern Scr_Notify
	extern g_entities
	extern vectoyaw
	extern Vec3NormalizeTo
	extern G_TraceCapsule
	extern G_GetWeaponIndexForName
	extern level
	extern SV_DObjGetBounds
	extern va
	extern Scr_Error
	extern Scr_ObjectError
	extern Com_Memset
	extern vec3_origin
	extern Scr_AddFloat
	extern Scr_GetString
	extern BG_FindWeaponIndexForName
	extern memcpy
	extern entityHandlers
	extern AnglesSubtract
	extern RadiusFromBounds
	extern ExtendBounds
	extern CM_AreaEntities
	extern ExpandBoundsToWidth
	extern SV_EntityContact
	extern Scr_IsSystemActive
	extern G_DObjGetWorldBoneIndexPos
	extern G_DObjGetWorldBoneIndexMatrix
	extern vectoangles
	extern LinearTrackAngle
	extern VEH_UpdateClientChopper
	extern BG_GetWeaponDef
	extern Com_GetServerDObj
	extern DObjPhysicsGetBounds
	extern SV_SightTrace
	extern Scr_AddEntity
	extern G_flrand
	extern Trace_GetEntityHitId
	extern Scr_AddVector
	extern Bullet_Fire
	extern Scr_GetEntity
	extern Weapon_RocketLauncher_Fire
	extern G_AddEvent
	extern Scr_GetConstLowercaseString
	extern SV_DObjGetBoneIndex
	extern SL_ConvertToString
	extern Scr_GetVector
	extern AngleVectors
	extern Scr_GetInt
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern Q_stricmp
	extern s_flashTags
	extern vehicle_frametime

;Exports of g_scr_vehicle:
	global s_phys
	global s_backup
	global s_correctSolidDeltas
	global CMD_VEH_Script_SetSpeed
	global PushAttachedStickyMissile
	global VEH_JoltBody
	global _Z15VEH_SetPositionP9gentity_sPKfS2_S2_
	global VEH_UpdateAngleAndAngularVel
	global VEH_UpdateMoveToGoal
	global _Z13VEH_SlideMoveP9gentity_si
	global VEH_InitEntity
	global GScr_GetVehicle
	global VEH_ClearGround
	global VEH_InitVehicle
	global CMD_VEH_GetSpeed
	global CMD_VEH_SetSpeed
	global CMD_VEH_SetWeapon
	global Scr_Vehicle_Think
	global CMD_VEH_FireWeapon
	global CMD_VEH_SetGoalPos
	global CMD_VEH_SetGoalYaw
	global CMD_VEH_GetSpeedMPH
	global CMD_VEH_ResumeSpeed
	global CMD_VEH_SetYawSpeed
	global VEH_CorrectAllSolid
	global CMD_VEH_ClearGoalYaw
	global CMD_VEH_SetLookAtEnt
	global CMD_VEH_SetTargetYaw
	global CMD_VEH_ClearLookAtEnt
	global CMD_VEH_ClearTargetYaw
	global CMD_VEH_SetHoverParams
	global CMD_VEH_SetVehicleTeam
	global CMD_VEH_SetAirResitance
	global CMD_VEH_SetMaxPitchRoll
	global CMD_VEH_SetTurningAbility
	global CMD_VEH_NearGoalNotifyDist
	global CMD_VEH_SetTurretTargetEnt
	global CMD_VEH_SetTurretTargetVec
	global CMD_VEH_ClearTurretTargetEnt


SECTION .text


;CMD_VEH_Script_SetSpeed(gentity_s*)
CMD_VEH_Script_SetSpeed:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov esi, [eax+0x164]
	movsx eax, word [esi+0x1bc]
	lea edx, [eax+eax*4]
	lea ebx, [edx*8]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, s_vehicleInfos
	mov dword [esi+0x248], 0x1
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x24c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jb CMD_VEH_Script_SetSpeed_10
CMD_VEH_Script_SetSpeed_80:
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe CMD_VEH_Script_SetSpeed_20
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x250], xmm0
CMD_VEH_Script_SetSpeed_20:
	cmp word [ebx+0x40], 0x5
	jz CMD_VEH_Script_SetSpeed_30
CMD_VEH_Script_SetSpeed_70:
	call Scr_GetNumParam
	cmp eax, 0x2
	ja CMD_VEH_Script_SetSpeed_40
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [esi+0x250]
	movss [esi+0x254], xmm0
CMD_VEH_Script_SetSpeed_60:
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x250]
	jae CMD_VEH_Script_SetSpeed_50
	ucomiss xmm0, [esi+0x254]
	jae CMD_VEH_Script_SetSpeed_50
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CMD_VEH_Script_SetSpeed_50:
	mov dword [esp+0x4], _cstring_accelerationdece
	mov dword [esp], 0x1
	call Scr_ParamError
	mov eax, 0x418ccccd
	mov [esi+0x250], eax
	mov [esi+0x254], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CMD_VEH_Script_SetSpeed_40:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x254], xmm0
	jmp CMD_VEH_Script_SetSpeed_60
CMD_VEH_Script_SetSpeed_30:
	movss xmm1, dword [esi+0x24c]
	ucomiss xmm1, [esi+0x25c]
	jbe CMD_VEH_Script_SetSpeed_70
	movss xmm0, dword [esi+0x250]
	ucomiss xmm0, xmm1
	jbe CMD_VEH_Script_SetSpeed_70
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_capping_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov eax, [esi+0x24c]
	mov [esi+0x250], eax
	jmp CMD_VEH_Script_SetSpeed_70
CMD_VEH_Script_SetSpeed_10:
	jp CMD_VEH_Script_SetSpeed_80
	mov dword [esp+0x4], _cstring_cannot_set_negat
	mov dword [esp], 0x0
	call Scr_ParamError
	xor eax, eax
	mov [esi+0x24c], eax
	jmp CMD_VEH_Script_SetSpeed_80


;PushAttachedStickyMissile(gentity_s*, gentity_s*, float*, float*)
PushAttachedStickyMissile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0x110], edx
	mov edi, [eax+0x164]
	lea eax, [edi+0xc0]
	mov [ebp-0x108], eax
	add edx, 0x13c
	mov [ebp-0x10c], edx
	lea eax, [edi+0xcc]
	mov edx, [ebp-0x110]
	movss xmm0, dword [edx+0x13c]
	movss [ebp-0xfc], xmm0
	subss xmm0, [edi+0xcc]
	movss [ebp-0xfc], xmm0
	mov edx, [ebp-0x10c]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x100], xmm0
	subss xmm0, [eax+0x4]
	movss [ebp-0x100], xmm0
	movss xmm3, dword [edx+0x8]
	movss [ebp-0x104], xmm3
	subss xmm3, [eax+0x8]
	movss [ebp-0x104], xmm3
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	lea eax, [edi+0xd8]
	mov [esp], eax
	call AnglesToAxis
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [edi+0xe4]
	mov [esp], eax
	call AnglesToAxis
	lea esi, [ebp-0x84]
	mov [esp+0x4], esi
	mov [esp], ebx
	call MatrixTranspose
	lea edx, [ebp-0xa8]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	mov [esp], esi
	call MatrixMultiply
	movss xmm2, dword [ebp-0xfc]
	mulss xmm2, [ebp-0xa8]
	movss xmm0, dword [ebp-0x100]
	mulss xmm0, [ebp-0x9c]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, [ebp-0x90]
	addss xmm2, xmm0
	movss xmm1, dword [ebp-0xfc]
	mulss xmm1, [ebp-0xa4]
	movss xmm0, dword [ebp-0x100]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, [ebp-0x8c]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, [ebp-0xa0]
	movss xmm3, dword [ebp-0x100]
	mulss xmm3, [ebp-0x94]
	addss xmm0, xmm3
	movss xmm3, dword [ebp-0x104]
	mulss xmm3, [ebp-0x88]
	addss xmm0, xmm3
	addss xmm2, [edi+0xc0]
	mov eax, [ebp-0x108]
	addss xmm1, [eax+0x4]
	addss xmm0, [eax+0x8]
	mov edx, [ebp-0x110]
	movss [edx+0x13c], xmm2
	mov ecx, [ebp-0x10c]
	movss [ecx+0x4], xmm1
	movss [ecx+0x8], xmm0
	mov eax, edx
	add eax, 0x18
	movss [edx+0x18], xmm2
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	mov ebx, edx
	add ebx, 0x148
	lea eax, [ebp-0xcc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AnglesToAxis
	lea esi, [ebp-0xf0]
	mov [esp+0x8], esi
	lea edx, [ebp-0xa8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0xcc]
	mov [esp], ecx
	call MatrixMultiply
	mov [esp+0x4], ebx
	mov [esp], esi
	call AxisToAngles
	mov edx, [ebp-0x110]
	add edx, 0x3c
	mov ecx, [ebp-0x110]
	mov eax, [ecx+0x148]
	mov [ecx+0x3c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;VEH_JoltBody(gentity_s*, float const*, float, float, float)
VEH_JoltBody:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, edx
	movss [ebp-0x4c], xmm1
	movss [ebp-0x50], xmm2
	mov ebx, [eax+0x164]
	movsx eax, word [ebx+0x1bc]
	lea esi, [eax+eax*4]
	shl esi, 0x3
	sub esi, eax
	shl esi, 0x4
	add esi, s_vehicleInfos
	movaps xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	pxor xmm3, xmm3
	movaps xmm2, xmm3
	cmpss xmm2, xmm1, 0x6
	movaps xmm1, xmm0
	andps xmm1, xmm2
	movss xmm4, dword [_float_1_00000000]
	andnps xmm2, xmm4
	orps xmm2, xmm1
	movaps xmm1, xmm3
	subss xmm1, xmm0
	movaps xmm4, xmm3
	cmpss xmm4, xmm1, 0x6
	andps xmm2, xmm4
	orps xmm2, xmm3
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebx+0xd8]
	mov [esp], eax
	movss [ebp-0x68], xmm2
	movss [ebp-0x78], xmm3
	call AnglesToAxis
	movss xmm1, dword [edi]
	mulss xmm1, [ebp-0x3c]
	movss xmm0, dword [edi+0x4]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	movss [ebx+0x2c0], xmm1
	movss xmm1, dword [edi]
	mulss xmm1, [ebp-0x30]
	movss xmm0, dword [edi+0x4]
	mulss xmm0, [ebp-0x2c]
	addss xmm1, xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, [ebp-0x28]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	movss [ebx+0x2c4], xmm1
	mov dword [ebx+0x2c8], 0x3f800000
	movss xmm3, dword [ebp-0x78]
	movss [ebx+0x2cc], xmm3
	lea eax, [ebx+0x2c0]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	movss xmm2, dword [ebp-0x68]
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x7c]
	mulss xmm0, [ebx+0x2c0]
	movss [ebx+0x2c0], xmm0
	mulss xmm2, [esi+0x80]
	mulss xmm2, [ebx+0x2c4]
	movss [ebx+0x2c4], xmm2
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebx+0x25c]
	movss [ebx+0x2d0], xmm0
	movss xmm1, dword [ebp-0x50]
	movss [ebx+0x2d4], xmm1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;VEH_SetPosition(gentity_s*, float const*, float const*, float const*)
_Z15VEH_SetPositionP9gentity_sPKfS2_S2_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, [ebp+0x8]
	lea eax, [eax+0x13c]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebx+0x13c]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm1, dword [edx+0x4]
	ucomiss xmm1, [eax+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm2, dword [edx+0x8]
	ucomiss xmm2, [eax+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea eax, [ebx+0x18]
	ucomiss xmm0, [ebx+0x18]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm1, [eax+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm2, [eax+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea eax, [ebx+0x148]
	movss xmm0, dword [esi]
	ucomiss xmm0, [ebx+0x148]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm1, dword [esi+0x4]
	ucomiss xmm1, [eax+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm2, dword [esi+0x8]
	ucomiss xmm2, [eax+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea eax, [ebx+0x3c]
	ucomiss xmm0, [ebx+0x3c]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm1, [eax+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm2, [eax+0x8]
	jp VEH_SetPosition_10
	jnz VEH_SetPosition_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
VEH_SetPosition_10:
	mov [esp+0x4], edx
	mov [esp], ebx
	call G_SetOrigin
	mov [esp+0x4], esi
	mov [esp], ebx
	call G_SetAngle
	mov dword [ebx+0xc], 0x1
	mov dword [ebx+0x30], 0x1
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_LinkEntity


;VEH_UpdateAngleAndAngularVel(int, float, float, float, float, vehicle_physic_t*)
VEH_UpdateAngleAndAngularVel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov esi, eax
	movss [ebp-0xc], xmm0
	movss [ebp-0x10], xmm1
	movss [ebp-0x14], xmm2
	movss [ebp-0x18], xmm3
	mov ebx, edx
	subss xmm0, [edx+eax*4+0x18]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x38]
	movaps xmm3, xmm0
	subss xmm3, [ebp-0x1c]
	mulss xmm3, [_float_360_00000000]
	pxor xmm2, xmm2
	ucomiss xmm3, xmm2
	jnz VEH_UpdateAngleAndAngularVel_10
	jp VEH_UpdateAngleAndAngularVel_10
	ucomiss xmm2, [ebx+esi*4+0x90]
	jp VEH_UpdateAngleAndAngularVel_10
	jz VEH_UpdateAngleAndAngularVel_20
VEH_UpdateAngleAndAngularVel_10:
	movss xmm5, dword [ebx+esi*4+0x90]
	movss xmm4, dword [_data16_7fffffff]
	movaps xmm7, xmm5
	andps xmm7, xmm4
	movss xmm6, dword [ebx+esi*4+0x30]
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	ucomiss xmm0, xmm2
	jb VEH_UpdateAngleAndAngularVel_30
	movaps xmm1, xmm7
	divss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm7
	mulss xmm0, [_float_0_50000000]
	mulss xmm1, xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x18]
	mulss xmm1, xmm0
	movaps xmm0, xmm3
	andps xmm0, xmm4
	ucomiss xmm1, xmm0
	jae VEH_UpdateAngleAndAngularVel_40
VEH_UpdateAngleAndAngularVel_30:
	movss xmm1, dword [ebp-0x10]
	ucomiss xmm2, xmm3
	ja VEH_UpdateAngleAndAngularVel_50
VEH_UpdateAngleAndAngularVel_80:
	movss xmm2, dword [vehicle_frametime]
	mulss xmm1, xmm2
	ucomiss xmm1, xmm7
	jbe VEH_UpdateAngleAndAngularVel_60
VEH_UpdateAngleAndAngularVel_90:
	andps xmm3, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	ucomiss xmm0, xmm3
	jbe VEH_UpdateAngleAndAngularVel_60
	movss xmm0, dword [ebp-0xc]
	movss [ebx+esi*4+0x18], xmm0
	mov dword [ebx+esi*4+0x90], 0x0
VEH_UpdateAngleAndAngularVel_20:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
VEH_UpdateAngleAndAngularVel_60:
	ucomiss xmm6, xmm5
	ja VEH_UpdateAngleAndAngularVel_70
	subss xmm5, xmm1
	maxss xmm6, xmm5
VEH_UpdateAngleAndAngularVel_100:
	movss [ebx+esi*4+0x90], xmm6
	movaps xmm0, xmm2
	mulss xmm0, xmm6
	addss xmm0, [ebx+esi*4+0x18]
	mulss xmm0, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	movss [ebx+esi*4+0x18], xmm0
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
VEH_UpdateAngleAndAngularVel_40:
	movss xmm1, dword [ebp-0x14]
	movaps xmm6, xmm2
	ucomiss xmm2, xmm3
	jbe VEH_UpdateAngleAndAngularVel_80
VEH_UpdateAngleAndAngularVel_50:
	xorps xmm6, [_data16_80000000]
	movss xmm2, dword [vehicle_frametime]
	mulss xmm1, xmm2
	ucomiss xmm1, xmm7
	jbe VEH_UpdateAngleAndAngularVel_60
	jmp VEH_UpdateAngleAndAngularVel_90
VEH_UpdateAngleAndAngularVel_70:
	addss xmm1, xmm5
	ucomiss xmm1, xmm6
	ja VEH_UpdateAngleAndAngularVel_100
	movaps xmm6, xmm1
	jmp VEH_UpdateAngleAndAngularVel_100
	nop


;VEH_UpdateMoveToGoal(gentity_s*, float const*)
VEH_UpdateMoveToGoal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov [ebp-0xc4], eax
	mov edi, [eax+0x164]
	lea ebx, [edi+0xc0]
	cmp dword [edi+0x1c8], 0x2
	setz byte [ebp-0xbd]
	movss xmm5, dword [edx]
	subss xmm5, [edi+0xc0]
	lea eax, [edi+0xc4]
	mov [ebp-0xb8], eax
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x7c], xmm0
	subss xmm0, [edi+0xc4]
	movss [ebp-0x7c], xmm0
	lea eax, [edi+0xc8]
	mov [ebp-0xb4], eax
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x80], xmm0
	subss xmm0, [edi+0xc8]
	movss [ebp-0x80], xmm0
	movaps xmm7, xmm5
	mulss xmm7, xmm5
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm0
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm0
	addss xmm0, xmm7
	sqrtss xmm0, xmm0
	movss [ebp-0xbc], xmm0
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm0, xmm1
	jbe VEH_UpdateMoveToGoal_10
	lea esi, [edi+0x138]
	movss xmm2, dword [edi+0x138]
	movss [ebp-0x70], xmm2
	lea eax, [edi+0x13c]
	mov [ebp-0xac], eax
	movss xmm0, dword [edi+0x13c]
	movss [ebp-0x74], xmm0
	lea eax, [edi+0x140]
	mov [ebp-0xa8], eax
	movss xmm0, dword [edi+0x140]
	movss [ebp-0x78], xmm0
	mov eax, [edi+0x274]
	test eax, eax
	jz VEH_UpdateMoveToGoal_20
VEH_UpdateMoveToGoal_500:
	movss xmm6, dword [edi+0x250]
	movss xmm3, dword [edi+0x24c]
	movaps xmm1, xmm3
	movss xmm4, dword [edi+0x25c]
	ucomiss xmm3, xmm4
	ja VEH_UpdateMoveToGoal_30
	movaps xmm0, xmm6
	mulss xmm0, [vehicle_frametime]
	movaps xmm1, xmm4
	subss xmm1, xmm0
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x1
	movaps xmm2, xmm3
	andps xmm2, xmm0
	andnps xmm0, xmm1
	movaps xmm1, xmm0
	orps xmm1, xmm2
VEH_UpdateMoveToGoal_550:
	movaps xmm2, xmm1
	divss xmm2, dword [edi+0x254]
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm0
	mulss xmm0, xmm1
	mulss xmm2, xmm0
	movss xmm0, [vehicle_frametime] ;get real frametime
	xorps xmm0, [_data16_80000000] ;and negate
	mulss xmm1, xmm0 ;finally mul
	addss xmm1, [ebp-0xbc]
	ucomiss xmm2, xmm1
	jb VEH_UpdateMoveToGoal_40
	ucomiss xmm4, [ebp-0xcc]
	ja VEH_UpdateMoveToGoal_50
VEH_UpdateMoveToGoal_40:
	mov dword [edi+0x278], 0x0
	mov eax, [vehicle_frametime] ;get real frametime
	mov dword [ebp-0xb0], eax
VEH_UpdateMoveToGoal_770:
	cmp byte [ebp-0xbd], 0x0
	jz VEH_UpdateMoveToGoal_60
	movss xmm2, dword [edi+0x228]
	movss xmm0, dword [edi+0x22c]
	movss xmm1, dword [ebp-0xd0]
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mov eax, [edi+0x278]
	test eax, eax
	jz VEH_UpdateMoveToGoal_70
VEH_UpdateMoveToGoal_510:
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, xmm4
	ja VEH_UpdateMoveToGoal_80
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, [ebp-0xb0]
	movss [ebp-0x50], xmm2
	movaps xmm2, xmm4
	subss xmm2, [ebp-0x50]
	ucomiss xmm0, xmm2
	ja VEH_UpdateMoveToGoal_90
VEH_UpdateMoveToGoal_540:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0xbc]
	movaps xmm1, xmm5
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mulss xmm0, [ebp-0x80]
	movss [ebp-0x1c], xmm0
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x24]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x20]
	movaps xmm6, xmm3
	subss xmm6, [ebp-0x70]
	movaps xmm4, xmm1
	subss xmm4, [ebp-0x74]
	movss [ebp-0x6c], xmm4
	movaps xmm4, xmm0
	mulss xmm4, xmm2
	subss xmm4, [ebp-0x78]
	mov eax, [edi+0x278]
	test eax, eax
	jnz VEH_UpdateMoveToGoal_100
	movss xmm0, dword [edi+0x24c]
	ucomiss xmm0, [edi+0x25c]
	jae VEH_UpdateMoveToGoal_110
VEH_UpdateMoveToGoal_100:
	movss xmm1, dword [ebp-0x6c]
VEH_UpdateMoveToGoal_740:
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [ebp-0x50]
	jbe VEH_UpdateMoveToGoal_120
	movss xmm1, dword [ebp-0x50]
	divss xmm1, xmm0
	mulss xmm6, xmm1
	movss xmm2, dword [ebp-0x6c]
	mulss xmm2, xmm1
	movss [ebp-0x6c], xmm2
	mulss xmm4, xmm1
VEH_UpdateMoveToGoal_120:
	cmp byte [ebp-0xbd], 0x0
	jz VEH_UpdateMoveToGoal_130
	lea eax, [esi+0x4]
VEH_UpdateMoveToGoal_800:
	movss xmm3, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm3
VEH_UpdateMoveToGoal_850:
	movss xmm0, dword [ebp-0x70]
	addss xmm0, xmm6
	movss [esi], xmm0
	movss xmm0, dword [ebp-0x74]
	addss xmm0, [ebp-0x6c]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x78]
	addss xmm0, xmm4
	movss [esi+0x8], xmm0
	movss xmm0, dword [esi]
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax]
	mov edx, [ebp-0xa8]
	movss xmm2, dword [edx]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [edi+0x25c], xmm0
	movss xmm0, dword [ebx+0x9c]
	movaps xmm2, xmm6
	subss xmm2, xmm0
	mulss xmm2, [ebp-0xd0]
	addss xmm2, xmm0
	movss [ebx+0x9c], xmm2
	movss xmm0, dword [ebx+0xa0]
	movss xmm1, dword [ebp-0x6c]
	subss xmm1, xmm0
	mulss xmm1, [ebp-0xd0]
	addss xmm1, xmm0
	movss [ebx+0xa0], xmm1
	movss xmm3, dword [ebx+0xa4]
	movaps xmm0, xmm4
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xd0]
	addss xmm0, xmm3
	movss [ebx+0xa4], xmm0
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm0, xmm2
	ucomiss xmm0, [ebp-0x50]
	jbe VEH_UpdateMoveToGoal_140
	mov eax, [edi+0x274]
	test eax, eax
	jz VEH_UpdateMoveToGoal_150
VEH_UpdateMoveToGoal_140:
	movss xmm3, dword [ebp-0x70]
	addss xmm3, [esi]
	movss xmm1, dword [ebp-0x74]
	mov eax, [ebp-0xac]
	addss xmm1, [eax]
	movss xmm2, dword [ebp-0x78]
	mov edx, [ebp-0xa8]
	addss xmm2, [edx]
	mulss xmm3, [ebp-0xd0]
	mulss xmm1, [ebp-0xd0]
	mulss xmm2, [ebp-0xd0]
	movss xmm0, dword [vehicle_frametime]
	ucomiss xmm0, [ebp-0xb0]
	ja VEH_UpdateMoveToGoal_160
	lea edx, [ebx+0x4]
	lea eax, [ebx+0x8]
VEH_UpdateMoveToGoal_600:
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0xb0]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xb0]
	mov ecx, [ebp-0xb8]
	addss xmm0, [ecx]
	movss [edx], xmm0
	mulss xmm2, [ebp-0xb0]
	movss [ebp-0xb0], xmm2
	mov edx, [ebp-0xb4]
	addss xmm2, [edx]
	movss [eax], xmm2
	mov ecx, [ebp-0xc4]
	mov ecx, [ecx+0x164]
	mov [ebp-0x84], ecx
	mov ebx, ecx
	add ecx, 0xc0
	mov [ebp-0xa0], ecx
	cmp word [ebx+0x280], 0x0
	jnz VEH_UpdateMoveToGoal_170
	mov eax, [ebp-0x84]
	mov esi, [eax+0x270]
	test esi, esi
	jz VEH_UpdateMoveToGoal_180
	mov ecx, [eax+0x278]
	test ecx, ecx
	jnz VEH_UpdateMoveToGoal_190
	cmp dword [eax+0x1c8], 0x2
	jnz VEH_UpdateMoveToGoal_200
VEH_UpdateMoveToGoal_190:
	mov edx, [ebp-0x84]
	movss xmm5, dword [edx+0x2ac]
	movss xmm3, dword [edx+0x25c]
	divss xmm3, dword [edx+0x254]
	mov ecx, [ebp-0xa0]
	movss xmm0, dword [ecx+0x34]
	movss [ebp-0x94], xmm0
	movaps xmm1, xmm0
	divss xmm1, dword [ecx+0x3c]
	addss xmm1, xmm1
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0xd0]
	mulss xmm2, xmm1
	movaps xmm0, xmm5
	subss xmm0, [ecx+0x1c]
	mulss xmm0, [_float_0_00277778]
	movss xmm4, dword [ebp-0xd0]
	addss xmm4, xmm0
	movss [esp], xmm4
	movss [ebp-0xe8], xmm0
	movss [ebp-0xf8], xmm1
	movss [ebp-0x108], xmm2
	movss [ebp-0x118], xmm3
	movss [ebp-0x138], xmm5
	call floorf
	fstp dword [ebp-0xc8]
	movss xmm0, dword [ebp-0xe8]
	subss xmm0, [ebp-0xc8]
	mulss xmm0, [_float_360_00000000]
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [ebp-0xf8]
	movss xmm3, dword [ebp-0x118]
	ucomiss xmm3, xmm1
	movss xmm2, dword [ebp-0x108]
	movss xmm5, dword [ebp-0x138]
	jbe VEH_UpdateMoveToGoal_210
	ucomiss xmm0, xmm2
	ja VEH_UpdateMoveToGoal_220
VEH_UpdateMoveToGoal_210:
	ucomiss xmm1, xmm3
	jae VEH_UpdateMoveToGoal_230
VEH_UpdateMoveToGoal_200:
	mov eax, [ebp-0x84]
VEH_UpdateMoveToGoal_180:
	mov edx, [eax+0x26c]
	test edx, edx
	jz VEH_UpdateMoveToGoal_240
	movss xmm5, dword [eax+0x29c]
VEH_UpdateMoveToGoal_230:
	lea esi, [ebx+0xc0]
	movss xmm4, dword [esi+0x1c]
	subss xmm4, [ebx+0x2ac]
	mov eax, [ebx+0x270]
	test eax, eax
	jz VEH_UpdateMoveToGoal_250
	movaps xmm0, xmm4
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00100000]
	ja VEH_UpdateMoveToGoal_260
VEH_UpdateMoveToGoal_250:
	mov byte [ebp-0x8d], 0x0
VEH_UpdateMoveToGoal_730:
	movss xmm0, dword [esi+0x94]
	movss [ebp-0x8c], xmm0
	movss xmm1, dword [esi+0x3c]
	movss xmm2, dword [esi+0x40]
	ucomiss xmm5, [ebx+0x2b0]
	jp VEH_UpdateMoveToGoal_270
	jz VEH_UpdateMoveToGoal_280
VEH_UpdateMoveToGoal_270:
	mov dword [ebx+0x2b8], 0x0
	movss [ebx+0x2b0], xmm5
VEH_UpdateMoveToGoal_280:
	mov eax, [ebx+0x2b8]
	test eax, eax
	jz VEH_UpdateMoveToGoal_290
	movss xmm0, dword [_float_0_20000000]
	mulss xmm1, xmm0
	mulss xmm2, xmm0
VEH_UpdateMoveToGoal_290:
	mov eax, [ebx+0x270]
	test eax, eax
	jnz VEH_UpdateMoveToGoal_300
	mov eax, [ebx+0x26c]
	pxor xmm3, xmm3
	test eax, eax
	jnz VEH_UpdateMoveToGoal_300
VEH_UpdateMoveToGoal_560:
	mov edx, esi
	movaps xmm0, xmm5
	mov eax, 0x1
	movss [ebp-0x128], xmm4
	call VEH_UpdateAngleAndAngularVel
	mov eax, [ebx+0x270]
	test eax, eax
	movss xmm4, dword [ebp-0x128]
	jz VEH_UpdateMoveToGoal_310
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [esi+0x94]
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm1, xmm0
	ja VEH_UpdateMoveToGoal_320
VEH_UpdateMoveToGoal_590:
	cmp byte [ebp-0x8d], 0x0
	jz VEH_UpdateMoveToGoal_330
	movss xmm0, dword [esi+0x1c]
	subss xmm0, [ebx+0x2ac]
	mulss xmm4, xmm0
	movss xmm3, dword [ebp-0xcc]
	ucomiss xmm3, xmm4
	ja VEH_UpdateMoveToGoal_340
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00100000]
	jb VEH_UpdateMoveToGoal_350
VEH_UpdateMoveToGoal_330:
	movss xmm4, dword [ebp-0xcc]
VEH_UpdateMoveToGoal_670:
	mov eax, [ebp-0xa0]
	add eax, 0x9c
	mov edx, [ebp-0xa0]
	movss xmm0, dword [edx+0x9c]
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x60], xmm1
	movss xmm3, dword [eax+0x8]
	mov eax, [ebp-0x84]
	movss xmm2, dword [eax+0x260]
	mov esi, edx
	add esi, 0x78
	movss xmm1, dword [edx+0x78]
	movss [ebp-0x30], xmm1
	mov ebx, edx
	add ebx, 0x7c
	movss xmm0, dword [edx+0x7c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm2
	subss xmm0, xmm1
	cmpss xmm4, xmm0, 0x2
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	divss xmm0, xmm2
	lea eax, [ebp-0x30]
	mov [esp], eax
	movss [ebp-0xe8], xmm0
	movss [ebp-0x118], xmm3
	call Vec2Normalize
	fstp st0
	movss xmm0, dword [ebp-0xe8]
	mulss xmm0, xmm0
	mulss xmm0, [_float_5_00000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x30]
	movss [ebp-0x30], xmm1
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	movss xmm2, dword [ebp-0x5c]
	addss xmm2, xmm1
	movss xmm4, dword [ebp-0x60]
	addss xmm4, xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	sqrtss xmm0, xmm1
	divss xmm0, dword [vehicle_frametime]
	movss [ebp-0x48], xmm0
	movss xmm3, dword [ebp-0x118]
	mulss xmm3, xmm3
	addss xmm3, xmm1
	sqrtss xmm3, xmm3
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [ebp-0xcc]
	jb VEH_UpdateMoveToGoal_360
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
VEH_UpdateMoveToGoal_870:
	mulss xmm2, xmm0
	movss [ebp-0x40], xmm2
	mulss xmm4, xmm0
	movss [ebp-0x44], xmm4
	mov eax, [ebp-0xa0]
	cvtss2sd xmm0, [eax+0x1c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x88], xmm0
	movss [esp], xmm0
	movss [ebp-0x158], xmm7
	call sinf
	fstp dword [ebp-0x54]
	movss xmm0, dword [ebp-0x88]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x58]
	mov eax, [ebp-0x84]
	movsx edx, word [eax+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov ecx, s_vehicleInfos
	movss xmm2, dword [ecx+eax+0x70]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm2
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movss xmm1, dword [ebp-0x48]
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	movss xmm0, dword [ebp-0xcc]
	subss xmm0, [ebp-0x48]
	movss xmm4, dword [ebp-0xcc]
	cmpss xmm4, xmm0, 0x6
	andps xmm3, xmm4
	movss xmm0, dword [ebp-0xcc]
	orps xmm3, xmm0
	divss xmm3, xmm2
	mov eax, [ebp-0x84]
	mov eax, [eax+0x278]
	test eax, eax
	movss xmm7, dword [ebp-0x158]
	jz VEH_UpdateMoveToGoal_370
	movss xmm0, dword [ebp-0x48]
	ucomiss xmm0, [ebp-0xcc]
	jbe VEH_UpdateMoveToGoal_370
	movss xmm0, dword [esi]
	movss xmm1, dword [ebx]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	divss xmm2, dword [ebp-0x48]
	movaps xmm4, xmm7
	subss xmm4, xmm3
	movaps xmm1, xmm7
	subss xmm1, xmm4
	mulss xmm1, [_float_2_50000000]
	movaps xmm0, xmm4
	mulss xmm0, [_float_3_50000000]
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	ja VEH_UpdateMoveToGoal_380
VEH_UpdateMoveToGoal_570:
	movss [ebp-0x9c], xmm7
VEH_UpdateMoveToGoal_780:
	movss xmm5, dword [ebp-0x40]
	mulss xmm5, [ebp-0x58]
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [ebp-0x54]
	addss xmm5, xmm0
	mulss xmm5, [ebp-0x9c]
	movaps xmm6, xmm4
	mulss xmm6, [_float_0_10000000]
	addss xmm6, xmm3
	mov eax, [ebp-0x84]
	cmp dword [eax+0x1c8], 0x2
	jnz VEH_UpdateMoveToGoal_390
	mov ebx, [eax+0x23c]
	test ebx, ebx
	jz VEH_UpdateMoveToGoal_400
VEH_UpdateMoveToGoal_720:
	movss xmm3, dword [eax+0x22c]
VEH_UpdateMoveToGoal_580:
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	movss xmm2, dword [ecx+eax+0x70]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movss xmm1, dword [ebp-0xcc]
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, xmm3
	movss xmm3, dword [ebp-0xcc]
	cmpss xmm3, xmm1, 0x6
	andps xmm0, xmm3
	movss xmm4, dword [ebp-0xcc]
	orps xmm0, xmm4
	divss xmm0, xmm2
	movaps xmm4, xmm7
	subss xmm4, xmm0
	mulss xmm0, [_float_45_00000000]
	addss xmm4, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [_float_0_40000001]
	movss [ebp-0x98], xmm0
	mov eax, [ebp-0xa0]
	mulss xmm5, [eax+0xa8]
	mov edx, eax
	movss xmm3, dword [ebp-0xcc]
	movaps xmm2, xmm0
	movaps xmm1, xmm4
	movaps xmm0, xmm6
	mulss xmm0, xmm5
	xor eax, eax
	movss [ebp-0x128], xmm4
	movss [ebp-0x148], xmm6
	call VEH_UpdateAngleAndAngularVel
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, [ebp-0x44]
	subss xmm0, xmm1
	movss xmm2, dword [ebp-0x9c]
	mulss xmm2, xmm0
	movss [ebp-0x9c], xmm2
	mov eax, [ebp-0xa0]
	mulss xmm2, [eax+0xac]
	movss [ebp-0x9c], xmm2
	mov edx, eax
	movss xmm3, dword [ebp-0xcc]
	movss xmm2, dword [ebp-0x98]
	movss xmm4, dword [ebp-0x128]
	movaps xmm1, xmm4
	movss xmm6, dword [ebp-0x148]
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm6
	mov eax, 0x2
	call VEH_UpdateAngleAndAngularVel
	movss xmm2, dword [ebp-0xcc]
VEH_UpdateMoveToGoal_680:
	movsx edx, word [edi+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	add eax, s_vehicleInfos
	movss xmm1, dword [edi+0x25c]
	divss xmm1, dword [eax+0x26c]
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm7
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm7
	orps xmm3, xmm2
	movss xmm0, dword [ebp-0xcc]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xcc]
	jb VEH_UpdateMoveToGoal_410
	movss xmm3, dword [ebp-0xcc]
	movaps xmm1, xmm7
VEH_UpdateMoveToGoal_690:
	movss [edi+0x2e8], xmm3
	movss [edi+0x2e4], xmm1
	cmp byte [ebp-0xbd], 0x0
	jnz VEH_UpdateMoveToGoal_420
	mov eax, [ebp-0xc4]
	mov ebx, [eax+0x164]
	movss xmm0, dword [ebx+0x2bc]
	ucomiss xmm0, [ebp-0xcc]
	jp VEH_UpdateMoveToGoal_430
	jz VEH_UpdateMoveToGoal_440
VEH_UpdateMoveToGoal_430:
	ucomiss xmm0, [ebp-0xbc]
	ja VEH_UpdateMoveToGoal_450
VEH_UpdateMoveToGoal_440:
	mov edi, [ebx+0x274]
	test edi, edi
	jz VEH_UpdateMoveToGoal_460
	movss xmm0, dword [ebx+0x224]
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm0, xmm1
	jp VEH_UpdateMoveToGoal_470
	jnz VEH_UpdateMoveToGoal_470
	mov esi, [ebx+0x278]
	test esi, esi
	jnz VEH_UpdateMoveToGoal_480
	movss xmm2, dword [ebp-0xbc]
	ucomiss xmm2, [ebp-0xcc]
	jz VEH_UpdateMoveToGoal_490
VEH_UpdateMoveToGoal_420:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_UpdateMoveToGoal_20:
	cmp byte [ebp-0xbd], 0x0
	jnz VEH_UpdateMoveToGoal_500
	movss xmm2, dword [vehicle_frametime]
	movss [ebp-0xb0], xmm2
	movss xmm6, dword [edi+0x250]
	movss xmm3, dword [edi+0x24c]
	movss xmm4, dword [edi+0x25c]
VEH_UpdateMoveToGoal_60:
	movaps xmm2, xmm3
	movaps xmm0, xmm6
	movss xmm3, dword [edi+0x254]
	movss [ebp-0x3c], xmm3
	mov eax, [edi+0x278]
	test eax, eax
	jnz VEH_UpdateMoveToGoal_510
VEH_UpdateMoveToGoal_70:
	ucomiss xmm2, xmm4
	jbe VEH_UpdateMoveToGoal_520
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm0
	movss [ebp-0x50], xmm1
	addss xmm1, xmm4
	ucomiss xmm1, xmm2
	ja VEH_UpdateMoveToGoal_530
	movaps xmm2, xmm1
VEH_UpdateMoveToGoal_530:
	movss [ebp-0x3c], xmm0
	jmp VEH_UpdateMoveToGoal_540
VEH_UpdateMoveToGoal_30:
	movaps xmm0, xmm6
	mulss xmm0, [vehicle_frametime]
	addss xmm0, xmm4
	ucomiss xmm0, xmm3
	ja VEH_UpdateMoveToGoal_550
	movaps xmm1, xmm0
	jmp VEH_UpdateMoveToGoal_550
VEH_UpdateMoveToGoal_300:
	movss xmm3, dword [ebx+0x2b4]
	jmp VEH_UpdateMoveToGoal_560
VEH_UpdateMoveToGoal_370:
	movaps xmm4, xmm7
	subss xmm4, xmm3
	jmp VEH_UpdateMoveToGoal_570
VEH_UpdateMoveToGoal_390:
	mov dword [eax+0x23c], 0x0
VEH_UpdateMoveToGoal_700:
	movss xmm3, dword [eax+0x250]
	jmp VEH_UpdateMoveToGoal_580
VEH_UpdateMoveToGoal_310:
	pxor xmm2, xmm2
	movss [ebp-0xcc], xmm2
	jmp VEH_UpdateMoveToGoal_590
VEH_UpdateMoveToGoal_160:
	subss xmm0, [ebp-0xb0]
	movss xmm4, dword [ebp-0x70]
	mulss xmm4, xmm0
	movss [ebp-0x70], xmm4
	addss xmm4, [ebx]
	movss [ebx], xmm4
	lea edx, [ebx+0x4]
	movss xmm4, dword [ebp-0x74]
	mulss xmm4, xmm0
	movss [ebp-0x74], xmm4
	mov eax, [ebp-0xb8]
	addss xmm4, [eax]
	movss [ebx+0x4], xmm4
	lea eax, [ebx+0x8]
	mulss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	mov ecx, [ebp-0xb4]
	addss xmm0, [ecx]
	movss [ebx+0x8], xmm0
	jmp VEH_UpdateMoveToGoal_600
VEH_UpdateMoveToGoal_460:
	movss xmm0, dword [vehicle_frametime]
	mulss xmm0, [ebx+0x25c]
	ucomiss xmm0, [ebp-0xbc]
	jb VEH_UpdateMoveToGoal_420
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x38]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call Scr_Notify
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_UpdateMoveToGoal_170:
	movzx edx, word [ebx+0x280]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea eax, [eax+edx-0x274]
	add eax, g_entities
	lea edx, [eax+0x13c]
	movss xmm0, dword [eax+0x13c]
	subss xmm0, [ebx+0xc0]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x4]
	mov eax, [ebp-0xa0]
	subss xmm0, [eax+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	movss [ebp-0x28], xmm0
	lea edx, [ebp-0x30]
	mov [esp], edx
	call vectoyaw
	fstp dword [ebp-0x15c]
	movss xmm5, dword [ebp-0x15c]
	mov ecx, [ebp-0xc4]
	mov ebx, [ecx+0x164]
	jmp VEH_UpdateMoveToGoal_230
VEH_UpdateMoveToGoal_130:
	sqrtss xmm3, xmm7
	movss xmm7, dword [_float_1_00000000]
	ucomiss xmm7, xmm3
	ja VEH_UpdateMoveToGoal_610
	movss xmm0, dword [esi]
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax]
	movss [ebp-0xa4], xmm1
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x4c], xmm0
	mov eax, [edi+0x274]
	test eax, eax
	jnz VEH_UpdateMoveToGoal_620
	pxor xmm2, xmm2
	movss [ebp-0xcc], xmm2
VEH_UpdateMoveToGoal_860:
	movaps xmm2, xmm5
	mulss xmm2, [ebx+0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x78]
	subss xmm2, xmm0
	andps xmm2, [_data16_7fffffff]
	ucomiss xmm2, xmm3
	jbe VEH_UpdateMoveToGoal_630
	mulss xmm5, [esi]
	movss xmm3, dword [ebp-0x7c]
	mulss xmm3, [ebp-0xa4]
	addss xmm5, xmm3
	movaps xmm1, xmm7
	divss xmm1, dword [ebp-0x4c]
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	mulss xmm5, xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	mulss xmm5, xmm5
	addss xmm1, xmm5
	addss xmm0, xmm0
	divss xmm1, xmm0
	ucomiss xmm1, xmm7
	jbe VEH_UpdateMoveToGoal_630
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm0
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, xmm1
	ucomiss xmm0, xmm2
	jbe VEH_UpdateMoveToGoal_630
	divss xmm0, xmm1
	movss xmm3, dword [ebp-0x4c]
	minss xmm3, xmm0
	movaps xmm0, xmm3
	test eax, eax
	jz VEH_UpdateMoveToGoal_640
	movss xmm1, dword [_float__1_00000000]
VEH_UpdateMoveToGoal_900:
	mulss xmm0, xmm1
	divss xmm0, dword [ebp-0x4c]
	mulss xmm0, [vehicle_frametime]
	movaps xmm2, xmm0
	mulss xmm2, [esi]
	mulss xmm0, [ebp-0xa4]
	movaps xmm1, xmm2
	addss xmm1, [esi]
	movss [esi], xmm1
	lea eax, [esi+0x4]
	movaps xmm1, xmm0
	mov edx, [ebp-0xac]
	addss xmm1, [edx]
	movss [esi+0x4], xmm1
	addss xmm6, xmm2
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	jmp VEH_UpdateMoveToGoal_650
VEH_UpdateMoveToGoal_240:
	cmp dword [eax+0x1c8], 0x2
	jnz VEH_UpdateMoveToGoal_660
	mov ecx, [ebp-0xa0]
	movss xmm5, dword [ecx+0x1c]
	jmp VEH_UpdateMoveToGoal_230
VEH_UpdateMoveToGoal_350:
	jp VEH_UpdateMoveToGoal_330
VEH_UpdateMoveToGoal_340:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc4]
	mov [esp], eax
	call Scr_Notify
	pxor xmm0, xmm0
	movss [ebp-0xcc], xmm0
	movaps xmm4, xmm0
	jmp VEH_UpdateMoveToGoal_670
VEH_UpdateMoveToGoal_10:
	movaps xmm2, xmm1
	jmp VEH_UpdateMoveToGoal_680
VEH_UpdateMoveToGoal_410:
	movaps xmm1, xmm7
	subss xmm1, xmm3
	jmp VEH_UpdateMoveToGoal_690
VEH_UpdateMoveToGoal_520:
	movss xmm3, dword [ebp-0xb0]
	mulss xmm3, xmm0
	movss [ebp-0x50], xmm3
	subss xmm4, xmm3
	maxss xmm2, xmm4
	movss [ebp-0x3c], xmm0
	jmp VEH_UpdateMoveToGoal_540
VEH_UpdateMoveToGoal_400:
	movss xmm1, dword [_data16_7fffffff]
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0xd8]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_5_00000000]
	ja VEH_UpdateMoveToGoal_700
	movss xmm0, dword [eax+0xe0]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_5_00000000]
	ja VEH_UpdateMoveToGoal_710
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0x150]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_3_00000000]
	ja VEH_UpdateMoveToGoal_700
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0x158]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_3_00000000]
	ja VEH_UpdateMoveToGoal_700
	mov dword [eax+0x23c], 0x1
	jmp VEH_UpdateMoveToGoal_720
VEH_UpdateMoveToGoal_260:
	mov byte [ebp-0x8d], 0x1
	jmp VEH_UpdateMoveToGoal_730
VEH_UpdateMoveToGoal_150:
	movss xmm1, dword [ebp-0x50]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [ebx+0x9c]
	movss [ebx+0x9c], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0xa0]
	movss [ebx+0xa0], xmm1
	mulss xmm0, [ebx+0xa4]
	movss [ebx+0xa4], xmm0
	jmp VEH_UpdateMoveToGoal_140
VEH_UpdateMoveToGoal_110:
	mulss xmm3, [ebp-0x70]
	mulss xmm1, [ebp-0x74]
	addss xmm3, xmm1
	ucomiss xmm3, [ebp-0xcc]
	jbe VEH_UpdateMoveToGoal_100
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, [ebp-0x6c]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	jbe VEH_UpdateMoveToGoal_100
	movss xmm2, dword [ebp-0x70]
	movss [ebp-0x30], xmm2
	movss xmm3, dword [ebp-0x74]
	movss [ebp-0x2c], xmm3
	lea eax, [ebp-0x30]
	mov [esp], eax
	movss [ebp-0x128], xmm4
	movss [ebp-0x138], xmm5
	movss [ebp-0x148], xmm6
	movss [ebp-0x158], xmm7
	call Vec2Normalize
	fstp st0
	movss xmm0, dword [ebp-0x30]
	movss xmm6, dword [ebp-0x148]
	movaps xmm1, xmm6
	mulss xmm1, xmm0
	movss xmm2, dword [ebp-0x6c]
	mulss xmm2, [ebp-0x2c]
	addss xmm1, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	mulss xmm1, [ebp-0x2c]
	movss [ebp-0x2c], xmm1
	subss xmm6, xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, xmm1
	movss [ebp-0x6c], xmm0
	movss xmm4, dword [ebp-0x128]
	movss xmm5, dword [ebp-0x138]
	movss xmm7, dword [ebp-0x158]
	movaps xmm1, xmm0
	jmp VEH_UpdateMoveToGoal_740
VEH_UpdateMoveToGoal_470:
	ucomiss xmm0, [ebp-0xbc]
	jb VEH_UpdateMoveToGoal_420
	movss xmm0, dword [_float_35_20000076]
	ucomiss xmm0, [ebx+0x25c]
	jbe VEH_UpdateMoveToGoal_420
VEH_UpdateMoveToGoal_880:
	mov dword [ebx+0x1c8], 0x2
	movss xmm4, dword [ebp-0xcc]
	ucomiss xmm4, [ebx+0x224]
	jnz VEH_UpdateMoveToGoal_750
	jp VEH_UpdateMoveToGoal_750
	lea eax, [ebx+0x15c]
	mov dword [ebx+0x15c], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [ebx+0x138]
	mov dword [ebx+0x138], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
VEH_UpdateMoveToGoal_750:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc4]
	mov [esp], eax
	call Scr_Notify
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_UpdateMoveToGoal_50:
	movss xmm1, dword [ebp-0xbc]
	ucomiss xmm1, xmm2
	ja VEH_UpdateMoveToGoal_760
	mov eax, [vehicle_frametime] ;get real frametime
	mov dword [ebp-0xb0], eax
VEH_UpdateMoveToGoal_890:
	mov dword [edi+0x278], 0x1
	jmp VEH_UpdateMoveToGoal_770
VEH_UpdateMoveToGoal_380:
	divss xmm2, xmm1
	movss [ebp-0x9c], xmm2
	jmp VEH_UpdateMoveToGoal_780
VEH_UpdateMoveToGoal_610:
	lea eax, [esi+0x4]
	pxor xmm0, xmm0
	movss [ebp-0xcc], xmm0
VEH_UpdateMoveToGoal_650:
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [ebp-0xcc]
	jp VEH_UpdateMoveToGoal_790
	jz VEH_UpdateMoveToGoal_800
VEH_UpdateMoveToGoal_790:
	movss xmm5, dword [ebx+0x80]
	movss xmm1, dword [_data16_7fffffff]
	movaps xmm0, xmm4
	andps xmm0, xmm1
	ucomiss xmm0, [_float_0_00100000]
	jp VEH_UpdateMoveToGoal_810
	jb VEH_UpdateMoveToGoal_820
VEH_UpdateMoveToGoal_810:
	andps xmm1, xmm5
	movss xmm0, dword [_float_0_00100000]
	ucomiss xmm0, xmm1
	ja VEH_UpdateMoveToGoal_830
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	ja VEH_UpdateMoveToGoal_840
	movss xmm2, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm2
	jmp VEH_UpdateMoveToGoal_850
VEH_UpdateMoveToGoal_660:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call vectoyaw
	fstp dword [ebp-0x15c]
	movss xmm5, dword [ebp-0x15c]
	mov eax, [ebp-0xc4]
	mov ebx, [eax+0x164]
	jmp VEH_UpdateMoveToGoal_230
VEH_UpdateMoveToGoal_620:
	movaps xmm2, xmm6
	addss xmm2, [esi]
	movss [ebp-0x64], xmm2
	movss xmm0, dword [ebp-0xa4]
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm2, xmm1
	jbe VEH_UpdateMoveToGoal_860
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm1
	addss xmm3, xmm3
	divss xmm1, xmm3
	mulss xmm1, [vehicle_frametime]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x4c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	jbe VEH_UpdateMoveToGoal_630
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm1
	divss xmm0, xmm2
	movss xmm6, dword [ebp-0x64]
	mulss xmm6, xmm0
	subss xmm6, [esi]
	mulss xmm0, [ebp-0x68]
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x6c], xmm0
VEH_UpdateMoveToGoal_630:
	lea eax, [esi+0x4]
	jmp VEH_UpdateMoveToGoal_650
VEH_UpdateMoveToGoal_360:
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
	divss xmm0, xmm3
	jmp VEH_UpdateMoveToGoal_870
VEH_UpdateMoveToGoal_490:
	jp VEH_UpdateMoveToGoal_420
VEH_UpdateMoveToGoal_480:
	movss xmm3, dword [ebp-0xcc]
	ucomiss xmm3, [ebx+0x25c]
	jnz VEH_UpdateMoveToGoal_420
	jnp VEH_UpdateMoveToGoal_880
	jmp VEH_UpdateMoveToGoal_420
VEH_UpdateMoveToGoal_450:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x118]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call Scr_Notify
	mov ecx, [ebp-0xc4]
	mov ebx, [ecx+0x164]
	jmp VEH_UpdateMoveToGoal_440
VEH_UpdateMoveToGoal_320:
	mov dword [ebx+0x2b8], 0x1
	jmp VEH_UpdateMoveToGoal_590
VEH_UpdateMoveToGoal_80:
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, [ebp-0xb0]
	movss [ebp-0x50], xmm1
	movaps xmm2, xmm1
	addss xmm2, xmm4
	ucomiss xmm2, xmm0
	jbe VEH_UpdateMoveToGoal_540
	movss xmm2, dword [ebp-0xcc]
	jmp VEH_UpdateMoveToGoal_540
VEH_UpdateMoveToGoal_760:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	divss xmm0, xmm4
	movss xmm1, dword [vehicle_frametime]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, [vehicle_frametime]
	movss xmm2, dword [ebp-0xcc]
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss [ebp-0x160], xmm2
	movss xmm2, dword [vehicle_frametime]
	andnps xmm0, xmm2
	movss xmm2, dword [ebp-0x160]
	orps xmm0, xmm2
	movss [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0xcc]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xcc]
	cmpss xmm1, xmm0, 0x6
	movss xmm2, dword [ebp-0xb0]
	andps xmm2, xmm1
	movss xmm0, dword [ebp-0xcc]
	orps xmm2, xmm0
	movss [ebp-0xb0], xmm2
	jmp VEH_UpdateMoveToGoal_890
VEH_UpdateMoveToGoal_90:
	movaps xmm2, xmm0
	jmp VEH_UpdateMoveToGoal_540
VEH_UpdateMoveToGoal_820:
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm0
	jmp VEH_UpdateMoveToGoal_850
VEH_UpdateMoveToGoal_710:
	mov eax, [ebp-0x84]
	jmp VEH_UpdateMoveToGoal_700
VEH_UpdateMoveToGoal_220:
	subss xmm0, xmm2
	divss xmm0, dword [ebp-0x94]
	addss xmm1, xmm0
	jmp VEH_UpdateMoveToGoal_210
VEH_UpdateMoveToGoal_830:
	movss xmm1, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm1
	jmp VEH_UpdateMoveToGoal_850
VEH_UpdateMoveToGoal_640:
	movss xmm1, dword [edi+0x264]
	xorps xmm1, [_data16_80000000]
	jmp VEH_UpdateMoveToGoal_900
VEH_UpdateMoveToGoal_840:
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm5
	ucomiss xmm0, xmm1
	jbe VEH_UpdateMoveToGoal_800
	movaps xmm2, xmm5
	movss xmm0, [vehicle_frametime] ;get real frametime
	xorps xmm0, [_data16_80000000] ;and negate
	mulss xmm2, xmm0 ;finally mul
	movss xmm3, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm3
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x80]
	divss xmm1, xmm0
	movaps xmm0, xmm2
	divss xmm0, xmm4
	ucomiss xmm0, xmm1
	jbe VEH_UpdateMoveToGoal_850
	divss xmm2, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	ucomiss xmm1, xmm0
	jbe VEH_UpdateMoveToGoal_850
	movss xmm0, dword [edi+0x250]
	mulss xmm0, [vehicle_frametime]
	mulss xmm0, [_float_3_00000000]
	movaps xmm7, xmm0
	xorps xmm7, [_data16_80000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movss xmm3, dword [ebp-0xcc]
	cmpss xmm3, xmm1, 0x2
	movaps xmm1, xmm3
	andps xmm0, xmm3
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm2
	movss xmm2, dword [ebp-0xcc]
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	movaps xmm2, xmm7
	andps xmm2, xmm0
	movaps xmm7, xmm0
	andnps xmm7, xmm1
	orps xmm7, xmm2
	movaps xmm0, xmm7
	subss xmm0, xmm4
	addss xmm5, xmm0
	movss [ebx+0x80], xmm5
	movaps xmm4, xmm7
	jmp VEH_UpdateMoveToGoal_850
	nop


;VEH_SlideMove(gentity_s*, int)
_Z13VEH_SlideMoveP9gentity_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x164]
	lea ebx, [edx+0xc0]
	lea edi, [edx+0x138]
	mov eax, [edx+0x138]
	mov [ebp-0x30], eax
	lea eax, [edx+0x13c]
	mov [ebp-0xd0], eax
	mov eax, [edx+0x13c]
	mov [ebp-0x2c], eax
	lea eax, [edx+0x140]
	mov [ebp-0xcc], eax
	movss xmm0, dword [edx+0x140]
	movss [ebp-0x28], xmm0
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz VEH_SlideMove_10
	subss xmm0, [_float_40_00000000]
	movss [ebp-0x28], xmm0
	addss xmm0, [ebx+0x80]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x80], xmm0
	mov eax, [s_phys+0x2c]
	test eax, eax
	jnz VEH_SlideMove_20
VEH_SlideMove_330:
	xor edx, edx
	mov dword [ebp-0xbc], 0x1
VEH_SlideMove_340:
	lea eax, [edx+edx]
	add eax, edx
	lea eax, [ebp+eax*4-0xb0]
	mov [esp+0x4], eax
	mov [esp], edi
	call Vec3NormalizeTo
	fstp st0
	movss xmm0, dword [_float_0_05000000]
	movss [ebp-0xdc], xmm0
	mov dword [ebp-0xd8], 0x0
	lea eax, [ebx+0x6c]
	mov [ebp-0xe8], eax
	lea edx, [ebx+0x60]
	mov [ebp-0xe4], edx
	mov edx, [ebp-0xbc]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xb0]
	mov [ebp-0xec], eax
VEH_SlideMove_100:
	mulss xmm0, [edi]
	addss xmm0, [ebx]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebp-0xdc]
	mov eax, [ebp-0xd0]
	mulss xmm0, [eax]
	addss xmm0, [ebx+0x4]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebp-0xdc]
	mov edx, [ebp-0xcc]
	mulss xmm0, [edx]
	addss xmm0, [ebx+0x8]
	movss [ebp-0x40], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x190]
	mov [esp+0x18], eax
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov edx, [ebp-0xe8]
	mov [esp+0xc], edx
	mov eax, [ebp-0xe4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea edx, [ebp-0x74]
	mov [esp], edx
	call G_TraceCapsule
	cmp byte [ebp-0x4b], 0x0
	jnz VEH_SlideMove_30
	movss xmm2, dword [ebp-0x74]
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jbe VEH_SlideMove_40
	movss xmm1, dword [ebx]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [ebp-0x40]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebx+0x8], xmm1
	movss xmm2, dword [ebp-0x74]
VEH_SlideMove_40:
	ucomiss xmm2, [_float_1_00000000]
	jp VEH_SlideMove_50
	jz VEH_SlideMove_60
VEH_SlideMove_50:
	mulss xmm2, [ebp-0xdc]
	movss xmm1, dword [ebp-0xdc]
	subss xmm1, xmm2
	movss [ebp-0xdc], xmm1
	cmp dword [ebp-0xbc], 0x4
	jg VEH_SlideMove_70
	mov eax, [ebp-0xbc]
	test eax, eax
	jle VEH_SlideMove_80
	movss xmm3, dword [ebp-0x70]
	movss xmm5, dword [ebp-0x6c]
	movss xmm4, dword [ebp-0x68]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0xa8]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0xac]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0xb0]
	addss xmm1, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_99000001]
	jbe VEH_SlideMove_90
VEH_SlideMove_310:
	addss xmm3, [edi]
	movss [edi], xmm3
	movss xmm0, dword [ebp-0x6c]
	mov eax, [ebp-0xd0]
	addss xmm0, [eax]
	movss [edi+0x4], xmm0
	movss xmm0, dword [ebp-0x68]
	mov edx, [ebp-0xcc]
	addss xmm0, [edx]
	movss [edi+0x8], xmm0
VEH_SlideMove_110:
	add dword [ebp-0xd8], 0x1
	cmp dword [ebp-0xd8], 0x4
	jz VEH_SlideMove_60
VEH_SlideMove_270:
	movss xmm0, dword [ebp-0xdc]
	jmp VEH_SlideMove_100
VEH_SlideMove_80:
	movss xmm3, dword [ebp-0x70]
VEH_SlideMove_290:
	mov edx, [ebp-0xec]
	movss [edx], xmm3
	mov eax, [ebp-0x6c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x68]
	mov [edx+0x8], eax
	add dword [ebp-0xbc], 0x1
	add edx, 0xc
	mov [ebp-0xec], edx
	mov eax, [ebp-0xbc]
	test eax, eax
	jle VEH_SlideMove_110
	lea eax, [ebp-0xb0]
	mov [ebp-0xe0], eax
	mov edx, [ebp-0xd0]
	movss xmm4, dword [edx]
	mov eax, [ebp-0xcc]
	movss xmm5, dword [eax]
	movaps xmm2, xmm5
	mulss xmm2, [ebp-0xa8]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0xac]
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [edi]
	addss xmm1, xmm0
	addss xmm2, xmm1
	ucomiss xmm2, [_float_0_10000000]
	jae VEH_SlideMove_120
	mov dword [ebp-0xc0], 0x0
	mov edx, [ebp-0xc0]
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae VEH_SlideMove_130
VEH_SlideMove_360:
	movss xmm3, dword [edi]
VEH_SlideMove_370:
	movaps xmm1, xmm3
	mulss xmm1, [ecx]
	mulss xmm4, [ecx+0x4]
	addss xmm1, xmm4
	mulss xmm5, [ecx+0x8]
	addss xmm1, xmm5
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja VEH_SlideMove_140
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_560:
	mov edx, 0x1
	lea esi, [ebp-0x24]
VEH_SlideMove_150:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+eax-0x4]
	movss xmm0, dword [edi+eax-0x4]
	subss xmm0, xmm1
	movss [esi+eax-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz VEH_SlideMove_150
	mov eax, [ebp-0xc8]
	movss xmm0, dword [eax]
	ucomiss xmm0, [_float_0_69999999]
	jae VEH_SlideMove_160
VEH_SlideMove_380:
	movss xmm4, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x28]
VEH_SlideMove_390:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mulss xmm2, [ecx+0x4]
	addss xmm0, xmm2
	mulss xmm3, [ecx+0x8]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja VEH_SlideMove_170
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_550:
	mov edx, 0x1
	lea esi, [ebp-0x30]
VEH_SlideMove_180:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [esi+eax-0x4]
	subss xmm0, xmm1
	movss [ebp+eax-0x40], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz VEH_SlideMove_180
VEH_SlideMove_400:
	mov dword [ebp-0xd4], 0x0
	movss xmm7, dword [ebp-0x24]
	lea ecx, [ebp-0xb0]
VEH_SlideMove_260:
	mov eax, [ebp-0xc0]
	cmp [ebp-0xd4], eax
	jz VEH_SlideMove_190
	movss xmm4, dword [ebp-0x20]
	lea edx, [ecx+0x4]
	mov [ebp-0xc4], edx
	movaps xmm3, xmm4
	mulss xmm3, [ecx+0x4]
	movss xmm2, dword [ebp-0x1c]
	lea esi, [ecx+0x8]
	movaps xmm6, xmm2
	mulss xmm6, [ecx+0x8]
	movaps xmm5, xmm7
	mulss xmm5, [ecx]
	movaps xmm0, xmm5
	addss xmm0, xmm3
	addss xmm0, xmm6
	ucomiss xmm0, [_float_0_10000000]
	jae VEH_SlideMove_190
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae VEH_SlideMove_200
VEH_SlideMove_450:
	movaps xmm0, xmm3
	addss xmm0, xmm5
	addss xmm0, xmm6
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja VEH_SlideMove_210
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_480:
	mov edx, 0x1
	lea eax, [ebp-0x24]
	add eax, 0x4
VEH_SlideMove_220:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz VEH_SlideMove_220
VEH_SlideMove_460:
	movss xmm0, dword [esi]
	ucomiss xmm0, [_float_0_69999999]
	jb VEH_SlideMove_230
	movss xmm4, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x34]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	ucomiss xmm0, xmm1
	jb VEH_SlideMove_240
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm4, [esi]
	movss [ebp-0x3c], xmm4
	mulss xmm2, [esi]
	movss [ebp-0x38], xmm2
VEH_SlideMove_440:
	mov eax, [ebp-0xe0]
	movss xmm6, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	movss xmm7, dword [ebp-0x24]
	movaps xmm0, xmm7
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x20]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x1c]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb VEH_SlideMove_250
VEH_SlideMove_190:
	add dword [ebp-0xd4], 0x1
	add ecx, 0xc
	mov eax, [ebp-0xd4]
	cmp [ebp-0xbc], eax
	jnz VEH_SlideMove_260
	movss [edi], xmm7
	mov eax, [ebp-0x20]
	mov [edi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edi+0x8], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x38]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x28], eax
	add dword [ebp-0xd8], 0x1
	cmp dword [ebp-0xd8], 0x4
	jnz VEH_SlideMove_270
VEH_SlideMove_60:
	mov eax, [ebp+0xc]
	test eax, eax
	jnz VEH_SlideMove_280
VEH_SlideMove_410:
	xor eax, eax
	cmp dword [ebp-0xd8], 0x0
	setnz al
VEH_SlideMove_570:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_SlideMove_90:
	xor edx, edx
VEH_SlideMove_300:
	add edx, 0x1
	cmp [ebp-0xbc], edx
	jz VEH_SlideMove_290
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xb0]
	movaps xmm2, xmm4
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_99000001]
	jbe VEH_SlideMove_300
	jmp VEH_SlideMove_310
VEH_SlideMove_20:
	movss xmm3, dword [s_phys+0xc]
	ucomiss xmm3, [_float_0_69999999]
	jb VEH_SlideMove_320
	movss xmm4, dword [edx+0x138]
	movss xmm5, dword [edx+0x13c]
	movss xmm0, dword [edx+0x140]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	addss xmm1, xmm2
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jb VEH_SlideMove_320
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [s_phys+0x4]
	movaps xmm1, xmm5
	mulss xmm1, [s_phys+0x8]
	subss xmm0, xmm1
	movss [edx+0x140], xmm0
	mulss xmm4, [s_phys+0xc]
	movss [edx+0x138], xmm4
	mulss xmm5, [s_phys+0xc]
	movss [edx+0x13c], xmm5
VEH_SlideMove_10:
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz VEH_SlideMove_330
VEH_SlideMove_540:
	mov eax, [s_phys+0x4]
	mov [ebp-0xb0], eax
	mov eax, [s_phys+0x8]
	mov [ebp-0xac], eax
	mov eax, [s_phys+0xc]
	mov [ebp-0xa8], eax
	mov edx, 0x1
	mov dword [ebp-0xbc], 0x2
	jmp VEH_SlideMove_340
VEH_SlideMove_120:
	mov dword [ebp-0xc0], 0x0
VEH_SlideMove_350:
	add dword [ebp-0xc0], 0x1
	mov edx, [ebp-0xc0]
	cmp [ebp-0xbc], edx
	jz VEH_SlideMove_110
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xb0]
	mov [ebp-0xe0], eax
	movaps xmm2, xmm5
	mulss xmm2, [eax+0x8]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	movss xmm0, dword [eax]
	mulss xmm0, [edi]
	addss xmm1, xmm0
	addss xmm2, xmm1
	ucomiss xmm2, [_float_0_10000000]
	jae VEH_SlideMove_350
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jb VEH_SlideMove_360
VEH_SlideMove_130:
	movss xmm3, dword [edi]
	movss xmm6, dword [edi+0x4]
	movss xmm0, dword [edi+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm2, xmm6
	mulss xmm2, xmm6
	addss xmm1, xmm2
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jb VEH_SlideMove_370
	xorps xmm3, [_data16_80000000]
	mulss xmm3, [ecx]
	mulss xmm6, [ecx+0x4]
	subss xmm3, xmm6
	movss [ebp-0x1c], xmm3
	movss xmm0, dword [edi]
	mulss xmm0, [ecx+0x8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+0x4]
	mulss xmm0, [ecx+0x8]
	movss [ebp-0x20], xmm0
	mov eax, [ebp-0xc8]
	movss xmm0, dword [eax]
	ucomiss xmm0, [_float_0_69999999]
	jb VEH_SlideMove_380
VEH_SlideMove_160:
	movss xmm4, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x28]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	ucomiss xmm0, xmm1
	jb VEH_SlideMove_390
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm4, [eax]
	movss [ebp-0x3c], xmm4
	mulss xmm2, [eax]
	movss [ebp-0x38], xmm2
	jmp VEH_SlideMove_400
VEH_SlideMove_280:
	mov eax, [ebp-0x30]
	mov [edi], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x4], eax
	mov eax, [ebp-0x28]
	mov [edi+0x8], eax
	jmp VEH_SlideMove_410
VEH_SlideMove_230:
	movss xmm4, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x34]
VEH_SlideMove_240:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mov eax, [ebp-0xc4]
	mulss xmm2, [eax]
	addss xmm0, xmm2
	mulss xmm3, [esi]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja VEH_SlideMove_420
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_470:
	mov edx, 0x1
	lea eax, [ebp-0x3c]
	add eax, 0x4
VEH_SlideMove_430:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz VEH_SlideMove_430
	jmp VEH_SlideMove_440
VEH_SlideMove_200:
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	jb VEH_SlideMove_450
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mulss xmm7, [ecx+0x8]
	movss [ebp-0x24], xmm7
	mulss xmm4, [ecx+0x8]
	movss [ebp-0x20], xmm4
	jmp VEH_SlideMove_460
VEH_SlideMove_420:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_470
VEH_SlideMove_210:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_480
VEH_SlideMove_250:
	mov edx, eax
	movss xmm1, dword [esi]
	mov eax, [ebp-0xc4]
	movss xmm3, dword [eax]
	movaps xmm7, xmm6
	mulss xmm7, xmm1
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	subss xmm7, xmm0
	movss xmm2, dword [ecx]
	movss xmm0, dword [edx]
	mulss xmm5, xmm2
	mulss xmm1, xmm0
	subss xmm5, xmm1
	movaps xmm4, xmm3
	mulss xmm4, xmm0
	mulss xmm6, xmm2
	subss xmm4, xmm6
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb VEH_SlideMove_490
	movss xmm0, dword [_float_1_00000000]
VEH_SlideMove_580:
	movaps xmm2, xmm7
	mulss xmm2, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edi]
	movaps xmm1, xmm3
	mov eax, [ebp-0xd0]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov edx, [ebp-0xcc]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm7, xmm2
	mulss xmm7, xmm0
	movss [ebp-0x24], xmm7
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	movss [ebp-0x20], xmm6
	movaps xmm5, xmm4
	mulss xmm5, xmm0
	movss [ebp-0x1c], xmm5
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x30]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x2c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	mulss xmm3, xmm0
	movss [ebp-0x38], xmm3
	mulss xmm4, xmm0
	movss [ebp-0x34], xmm4
	xor edx, edx
	lea eax, [ebp-0xb0]
VEH_SlideMove_510:
	cmp edx, [ebp-0xc0]
	jz VEH_SlideMove_500
	cmp [ebp-0xd4], edx
	jz VEH_SlideMove_500
	movaps xmm0, xmm7
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jb VEH_SlideMove_70
VEH_SlideMove_500:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0xbc], edx
	jnz VEH_SlideMove_510
	movss xmm7, dword [ebp-0x24]
	jmp VEH_SlideMove_190
VEH_SlideMove_320:
	movss xmm1, dword [edi]
	mulss xmm1, [s_phys+0x4]
	mov edx, [ebp-0xd0]
	movss xmm0, dword [edx]
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mov eax, [ebp-0xcc]
	mulss xmm3, [eax]
	addss xmm1, xmm3
	ucomiss xmm1, [_float_0_00000000]
	jb VEH_SlideMove_520
VEH_SlideMove_590:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_600:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [edi+0x4]
VEH_SlideMove_530:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz VEH_SlideMove_530
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz VEH_SlideMove_330
	jmp VEH_SlideMove_540
VEH_SlideMove_170:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_550
VEH_SlideMove_140:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_560
VEH_SlideMove_70:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov eax, 0x1
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_SlideMove_30:
	mov dword [ebx+0x80], 0x0
	mov eax, 0x1
	jmp VEH_SlideMove_570
VEH_SlideMove_490:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp VEH_SlideMove_580
VEH_SlideMove_520:
	jp VEH_SlideMove_590
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_600
	nop
	add [eax], al


;VEH_InitEntity(gentity_s*, scr_vehicle_s*, int)
VEH_InitEntity:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov byte [ebx+0x16e], 0x17
	mov byte [ebx+0xf6], 0x4
	mov dword [ebx+0x120], 0x2080
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x1
	mov dword [ebx+0x30], 0x1
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x80], 0x0
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	add eax, s_vehicleInfos
	add eax, 0x90
	mov [esp], eax
	call G_GetWeaponIndexForName
	movzx eax, al
	mov [ebx+0xc4], eax
	mov dword [ebx+0xc8], 0x0
	xor eax, eax
	mov [ebx+0x5c], eax
	mov [ebx+0x54], eax
	mov [ebx+0x58], eax
	mov [ebx+0x64], eax
	mov [ebx+0x68], eax
	mov [ebx+0x164], esi
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [ebx+0x19c], eax
	mov byte [ebx+0x16b], 0x1
	mov byte [ebx+0x16c], 0x1
	mov dword [ebx+0x190], 0x810211
	lea eax, [ebx+0x114]
	mov [esp+0x8], eax
	lea eax, [ebx+0x108]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SV_DObjGetBounds
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp SV_LinkEntity


;GScr_GetVehicle(scr_entref_t)
GScr_GetVehicle:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz GScr_GetVehicle_10
	movzx ebx, dx
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ebx]
	add esi, g_entities
	movzx edx, word [esi+0x170]
	mov eax, scr_const
	cmp dx, [eax+0xf8]
	jz GScr_GetVehicle_20
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_is_not_
	call va
	mov [esp], eax
	call Scr_Error
GScr_GetVehicle_20:
	mov eax, [esi+0x164]
	test eax, eax
	jz GScr_GetVehicle_30
GScr_GetVehicle_40:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
GScr_GetVehicle_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_doesnt_
	call va
	mov [esp], eax
	call Scr_Error
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
GScr_GetVehicle_10:
	mov dword [esp], _cstring_not_an_entity
	call Scr_ObjectError
	xor esi, esi
	jmp GScr_GetVehicle_40
	nop


;VEH_ClearGround(gentity_s*)
VEH_ClearGround:
	push ebp
	mov ebp, esp
	mov dword [s_phys+0x2c], 0x0
	pop ebp
	ret
	nop
	add [eax], al


;VEH_InitVehicle(gentity_s*, scr_vehicle_s*, int)
VEH_InitVehicle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x24], eax
	mov edx, [edi+0x164]
	lea ebx, [edx+0xc0]
	lea eax, [edi+0x13c]
	mov [ebp-0x20], eax
	mov eax, [edi+0x13c]
	mov [edx+0xc0], eax
	mov eax, [edi+0x140]
	mov [ebx+0x4], eax
	mov eax, [edi+0x144]
	mov [ebx+0x8], eax
	lea ecx, [edx+0xcc]
	mov eax, [edi+0x13c]
	mov [edx+0xcc], eax
	mov eax, [edi+0x140]
	mov [ecx+0x4], eax
	mov eax, [edi+0x144]
	mov [ecx+0x8], eax
	lea ecx, [edx+0xd8]
	lea eax, [edi+0x148]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x148]
	mov [edx+0xd8], eax
	mov eax, [edi+0x14c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x150]
	mov [ecx+0x8], eax
	lea ecx, [edx+0xe4]
	mov eax, [edi+0x148]
	mov [edx+0xe4], eax
	mov eax, [edi+0x14c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x150]
	mov [ecx+0x8], eax
	lea ecx, [edx+0x120]
	xor eax, eax
	mov [edx+0x120], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ecx, [edx+0x12c]
	mov [edx+0x12c], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ecx, [edx+0x138]
	mov [edx+0x138], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ecx, [edx+0x144]
	mov [edx+0x144], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	lea ecx, [edx+0x150]
	mov [edx+0x150], eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	mov eax, ebx
	mov edx, 0x4
VEH_InitVehicle_10:
	mov dword [eax+0xb0], 0x0
	mov dword [eax+0xc0], 0x0
	mov dword [eax+0xd0], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz VEH_InitVehicle_10
	mov edx, 0x41c80000
	mov [ebx+0xa8], edx
	mov [ebx+0xac], edx
	mov dword [ebx+0x34], 0x42b40000
	mov eax, 0x42340000
	mov [ebx+0x30], eax
	mov [ebx+0x38], eax
	mov [ebx+0x3c], edx
	mov dword [ebx+0x40], 0x41700000
	lea eax, [ebx+0xe0]
	mov dword [ebx+0xe0], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [ebx+0xec]
	mov dword [ebx+0xec], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, [edi]
	mov [esi+0x1b8], eax
	movzx eax, word [ebp-0x24]
	mov [esi+0x1bc], ax
	mov dword [esi+0x1c8], 0x0
	mov word [esi+0x1cc], 0xffff
	mov ebx, 0xbf800000
	mov [esi+0x1d0], ebx
	mov dword [esi+0x1d4], 0x0
	mov dword [esi+0x1d8], 0x0
	mov dword [esi+0x1e4], 0x0
	mov dword [esi+0x1dc], 0x0
	mov dword [esi+0x1e0], 0x0
	mov dword [esp+0x8], 0x3c
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x1e8]
	mov [esp], eax
	call Com_Memset
	mov dword [esi+0x240], 0x0
	mov word [esi+0x244], 0x0
	mov word [esi+0x246], 0x0
	mov dword [esi+0x248], 0x0
	mov dword [esi+0x24c], 0x0
	mov dword [esi+0x250], 0x0
	mov dword [esi+0x254], 0x0
	mov dword [esi+0x258], 0x0
	mov dword [esi+0x25c], 0x0
	mov dword [esi+0x260], 0x44840000
	mov dword [esi+0x264], 0x3f000000
	mov dword [esi+0x268], 0x0
	mov dword [esi+0x27c], 0x3ff
	lea eax, [esi+0x284]
	mov dword [esi+0x284], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [esi+0x290]
	mov dword [esi+0x290], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [esi+0x2c0], 0x0
	mov dword [esi+0x2c4], 0x0
	mov dword [esi+0x2c8], 0x0
	mov dword [esi+0x2cc], 0x0
	mov dword [esi+0x2d0], 0x0
	mov dword [esi+0x2d4], 0x0
	mov dword [esi+0x2d8], 0x1
	mov dword [esi+0x2e4], 0x0
	mov dword [esi+0x2e8], 0x0
	mov dword [esi+0x34c], 0x0
	mov dword [esi+0x224], 0x41f00000
	mov dword [esi+0x228], 0x416147af
	mov dword [esi+0x22c], 0x410ccccd
	mov dword [esi+0x23c], 0x0
	mov dword [esi+0x2b8], 0x0
	mov dword [esi+0x2b4], 0x3dcccccd
	mov [esi+0x2b0], ebx
	mov dword [esi+0x2bc], 0x0
	mov ecx, vec3_origin
	mov eax, [ebp-0x1c]
	mov [ebp+0x8], eax
	mov edx, [ebp-0x20]
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z15VEH_SetPositionP9gentity_sPKfS2_S2_
	nop


;CMD_VEH_GetSpeed(scr_entref_t)
CMD_VEH_GetSpeed:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov eax, [eax+0x164]
	mov eax, [eax+0x25c]
	mov [ebp+0x8], eax
	leave
	jmp Scr_AddFloat


;CMD_VEH_SetSpeed(scr_entref_t)
CMD_VEH_SetSpeed:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	leave
	jmp CMD_VEH_Script_SetSpeed
	nop


;CMD_VEH_SetWeapon(scr_entref_t)
CMD_VEH_SetWeapon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, eax
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call BG_FindWeaponIndexForName
	movzx eax, al
	mov [ebx+0xc4], eax
	mov dword [ebx+0xc8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_Vehicle_Think(gentity_s*)
Scr_Vehicle_Think:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x117c
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	mov [ebp-0x1108], eax
	mov esi, eax
	add esi, 0xc0
	movsx eax, word [eax+0x1bc]
	lea edx, [eax+eax*4]
	shl edx, 0x3
	sub edx, eax
	shl edx, 0x4
	mov ecx, s_vehicleInfos
	add edx, ecx
	mov [ebp-0x1104], edx
	mov ecx, [ebp-0x1108]
	add ecx, 0xcc
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x13c]
	mov ebx, [ebp-0x1108]
	mov [ebx+0xcc], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov ecx, ebx
	add ecx, 0xe4
	mov edx, [ebp+0x8]
	add edx, 0x148
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x148]
	mov ebx, [ebp-0x1108]
	mov [ebx+0xe4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [esp+0x8], 0xc0
	mov [esp+0x4], ebx
	mov dword [esp], s_backup
	call memcpy
	mov dword [esp+0x8], 0xf8
	mov [esp+0x4], esi
	mov dword [esp], s_backup+0xc0
	call memcpy
	mov edi, s_phys
	cld
	mov ecx, 0xd
	xor eax, eax
	rep stosd
	mov edx, [ebp-0x1104]
	movzx eax, word [edx+0x40]
	cmp ax, 0x4
	jz Scr_Vehicle_Think_10
	test byte [ebx+0x1c0], 0x2
	jz Scr_Vehicle_Think_20
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	mov eax, [ebx+0x1c8]
	cmp eax, 0x1
	jz Scr_Vehicle_Think_30
	cmp eax, 0x2
	jz Scr_Vehicle_Think_40
Scr_Vehicle_Think_10:
	lea ecx, [esi+0x78]
	lea eax, [esi+0x18]
	mov [esp], eax
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z15VEH_SetPositionP9gentity_sPKfS2_S2_
	mov ecx, [ebp-0x1108]
	test byte [ecx+0x1c0], 0x2
	jnz Scr_Vehicle_Think_50
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	lea edi, [eax+0x114]
	lea esi, [eax+0x108]
	mov ecx, eax
Scr_Vehicle_Think_350:
	lea edx, [ebx+0xc0]
	movzx eax, byte [ecx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0xc]
	mov [ebp-0x1100], eax
	movss xmm0, dword [ebx+0xc0]
	subss xmm0, [ebx+0xcc]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ebx+0xd0]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [ebx+0xd4]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebx+0xe4]
	mov [esp+0x4], eax
	lea eax, [ebx+0xd8]
	mov [esp], eax
	call AnglesSubtract
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea eax, [ebx+0x138]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	mov [esp+0x4], edi
	mov [esp], esi
	call RadiusFromBounds
	fstp dword [ebp-0x115c]
	movss xmm0, dword [ebp-0x115c]
	mov edx, [ebp-0x115c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x115c], xmm0
	mov eax, [ebp-0x115c]
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	mov [ebp-0x48], edx
	mov [ebp-0x44], edx
	mov [ebp-0x40], edx
	movss xmm0, dword [ebx+0xcc]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebx+0xd0]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebx+0xd4]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebx+0xcc]
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [ebx+0xd0]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [ebx+0xd4]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x3c]
	mov [esp], ecx
	call ExtendBounds
	mov dword [esp+0x10], 0x2806081
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x10e0]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call CM_AreaEntities
	mov [ebp-0x10fc], eax
	test eax, eax
	jle Scr_Vehicle_Think_60
	xor esi, esi
	jmp Scr_Vehicle_Think_70
Scr_Vehicle_Think_80:
	add esi, 0x1
	cmp [ebp-0x10fc], esi
	jz Scr_Vehicle_Think_60
Scr_Vehicle_Think_70:
	mov edx, [ebp+esi*4-0x10e0]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	movzx eax, byte [ebx+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov edi, [eax+0xc]
	mov ecx, [ebx]
	mov eax, [ebp+0x8]
	mov edx, [eax]
	cmp ecx, edx
	jz Scr_Vehicle_Think_80
	mov eax, [ebx+0x4]
	cmp eax, 0x4
	jnz Scr_Vehicle_Think_80
	cmp edx, [ebx+0x7c]
	jz Scr_Vehicle_Think_90
	mov edx, [ebp+0x8]
	cmp byte [edx+0xf5], 0x0
	jz Scr_Vehicle_Think_80
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x70]
	jz Scr_Vehicle_Think_100
	lea edx, [ebx+0x124]
	mov eax, [ebx+0x124]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	lea edx, [ebx+0x130]
	mov eax, [ebx+0x130]
	mov [ebp-0x6c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x68], eax
	mov eax, [edx+0x8]
	mov [ebp-0x64], eax
Scr_Vehicle_Think_400:
	lea ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call ExpandBoundsToWidth
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call SV_EntityContact
	test eax, eax
	jz Scr_Vehicle_Think_80
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jnz Scr_Vehicle_Think_110
Scr_Vehicle_Think_480:
	test edi, edi
	jz Scr_Vehicle_Think_120
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call edi
Scr_Vehicle_Think_120:
	mov edi, [ebp-0x1100]
	test edi, edi
	jz Scr_Vehicle_Think_80
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp-0x1100]
	jmp Scr_Vehicle_Think_80
Scr_Vehicle_Think_60:
	mov ecx, [ebp-0x1108]
	mov dword [ecx+0x1e0], 0x0
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x164]
	mov [ebp-0x10f8], ebx
	add ebx, 0xc0
	mov edx, [ebp-0x10f8]
	movsx eax, word [edx+0x1bc]
	lea edx, [eax+eax*4]
	shl edx, 0x3
	sub edx, eax
	shl edx, 0x4
	mov ecx, s_vehicleInfos
	add edx, ecx
	mov [ebp-0x10f4], edx
	mov eax, [ebp-0x10f8]
	mov ecx, [eax+0x268]
	test ecx, ecx
	jz Scr_Vehicle_Think_130
	mov edx, [ebp+0x8]
	mov edx, [edx+0x1a0]
	test edx, edx
	jle Scr_Vehicle_Think_140
	mov eax, [ebp-0x10f8]
	mov ecx, [eax+0x27c]
	cmp ecx, 0x3ff
	jz Scr_Vehicle_Think_150
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	add eax, edx
	mov [ebp-0x10f0], eax
	add eax, 0x13c
	mov edx, [ebp-0x10f8]
	add edx, 0x290
	mov ecx, [ebp-0x10f0]
	movss xmm0, dword [ecx+0x13c]
	mov ecx, [ebp-0x10f8]
	addss xmm0, [ecx+0x290]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	movss [ebp-0x64], xmm0
	mov edx, ecx
Scr_Vehicle_Think_410:
	mov eax, [edx+0x324]
	test eax, eax
	js Scr_Vehicle_Think_160
	lea ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_DObjGetWorldBoneIndexPos
	mov edx, [ebp-0x10f8]
	mov eax, [edx+0x320]
	cmp eax, 0xffffffff
	jz Scr_Vehicle_Think_170
	lea ecx, [ebp-0x10e0]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call G_DObjGetWorldBoneIndexMatrix
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea edx, [ebp-0x10e0]
	mov [esp], edx
	call AxisToAngles
Scr_Vehicle_Think_360:
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x154], 0x0
	jz Scr_Vehicle_Think_180
	mov ebx, [ebp-0x10f8]
	cmp dword [ebx+0x27c], 0x3ff
	jz Scr_Vehicle_Think_190
Scr_Vehicle_Think_180:
	movss xmm3, dword [ebp-0x6c]
	subss xmm3, [ebp-0x60]
	movss [ebp-0x48], xmm3
	movss xmm1, dword [ebp-0x68]
	subss xmm1, [ebp-0x5c]
	movss [ebp-0x44], xmm1
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x58]
	movss [ebp-0x40], xmm0
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
	jb Scr_Vehicle_Think_200
	movss xmm1, dword [_float_1_00000000]
Scr_Vehicle_Think_440:
	mulss xmm3, xmm1
	movss [ebp-0x48], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	mulss xmm1, [ebp-0x40]
	movss [ebp-0x40], xmm1
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x48]
	mov [esp], ecx
	call vectoangles
Scr_Vehicle_Think_470:
	lea edi, [ebp-0xb4]
	mov [esp+0x4], edi
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call AnglesToAxis
	lea ebx, [ebp-0xe0]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call AnglesToAxis
	lea esi, [ebp-0x90]
	mov [esp+0x4], esi
	mov [esp], ebx
	call MatrixTranspose
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call MatrixMultiply
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call AxisToAngles
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x64]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x68]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ebp-0x30]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call AnglesSubtract
	movss xmm1, dword [_data16_7fffffff]
	movss xmm0, dword [ebp-0x30]
	andps xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	andps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	;mov ebx, 0x3d4ccccd
	mov ebx, [vehicle_frametime]
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x10f4]
	mov eax, [ecx+0xe0]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call LinearTrackAngle
	mov eax, [ebp+0x8]
	fstp dword [eax+0x64]
	mov [esp+0xc], ebx
	mov edx, [ebp-0x10f4]
	mov eax, [edx+0xe0]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x38]
	mov [esp], eax
	call LinearTrackAngle
	fstp dword [ebp-0x115c]
	movss xmm5, dword [ebp-0x115c]
	mov ecx, [ebp+0x8]
	movss [ecx+0x68], xmm5
	movss xmm4, dword [ecx+0x64]
	mov ebx, [ebp-0x10f4]
	movss xmm3, dword [ebx+0xdc]
	movss xmm6, dword [_data16_80000000]
	movss xmm1, dword [ebx+0xd8]
	xorps xmm1, xmm6
	movaps xmm0, xmm4
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	andps xmm3, xmm2
	andnps xmm2, xmm4
	orps xmm2, xmm3
	movaps xmm0, xmm1
	subss xmm0, xmm4
	pxor xmm3, xmm3
	cmpss xmm3, xmm0, 0x2
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ecx+0x64], xmm0
	movss xmm1, dword [ebx+0xd0]
	movss xmm3, dword [ebx+0xd4]
	xorps xmm3, xmm6
	movaps xmm0, xmm5
	subss xmm0, xmm1
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movaps xmm1, xmm3
	subss xmm1, xmm5
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	movss [ecx+0x68], xmm3
	subss xmm4, [ecx+0x64]
	mulss xmm4, [_float_0_00277778]
	movss xmm1, dword [_float_0_50000000]
	movaps xmm0, xmm4
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x1128], xmm1
	movss [ebp-0x1138], xmm3
	movss [ebp-0x1148], xmm4
	movss [ebp-0x1158], xmm5
	call floorf
	fstp dword [ebp-0x110c]
	movss xmm4, dword [ebp-0x1148]
	subss xmm4, [ebp-0x110c]
	movss xmm0, dword [_float_360_00000000]
	mulss xmm0, xmm4
	movss [ebp-0x10ec], xmm0
	movss xmm3, dword [ebp-0x1138]
	movss xmm5, dword [ebp-0x1158]
	subss xmm5, xmm3
	mulss xmm5, [_float_0_00277778]
	movss xmm1, dword [ebp-0x1128]
	addss xmm1, xmm5
	movss [esp], xmm1
	movss [ebp-0x1158], xmm5
	call floorf
	fstp dword [ebp-0x1110]
	movss xmm5, dword [ebp-0x1158]
	movaps xmm1, xmm5
	subss xmm1, [ebp-0x1110]
	mulss xmm1, [_float_360_00000000]
	movss xmm0, dword [_float_2_00000000]
	ucomiss xmm0, [ebp-0x30]
	ja Scr_Vehicle_Think_210
	movss xmm2, dword [ebp-0x10ec]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jp Scr_Vehicle_Think_210
	jz Scr_Vehicle_Think_220
Scr_Vehicle_Think_210:
	ucomiss xmm0, [ebp-0x2c]
	ja Scr_Vehicle_Think_230
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp Scr_Vehicle_Think_230
	jz Scr_Vehicle_Think_220
Scr_Vehicle_Think_230:
	mov edx, [ebp-0x10f8]
	mov eax, [edx+0x1e4]
	cmp eax, 0x2
	jz Scr_Vehicle_Think_240
	sub eax, 0x1
	jz Scr_Vehicle_Think_250
Scr_Vehicle_Think_390:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x30]
	jbe Scr_Vehicle_Think_260
	ucomiss xmm0, [ebp-0x2c]
	ja Scr_Vehicle_Think_270
Scr_Vehicle_Think_260:
	mov dword [esp+0x8], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x104]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_Notify
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
Scr_Vehicle_Think_160:
	movss xmm0, dword [_float_1000_00000000]
	mov ecx, [ebp-0x1104]
	mulss xmm0, [ecx+0x8c]
	cvttss2si eax, xmm0
	mov ebx, [ebp+0x8]
	mov [ebx+0x70], eax
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [ebx+0x19c], eax
	add esp, 0x117c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_Vehicle_Think_130:
	mov ecx, eax
Scr_Vehicle_Think_370:
	mov eax, [ecx+0x1e4]
	cmp eax, 0x2
	jz Scr_Vehicle_Think_280
	sub eax, 0x1
	jnz Scr_Vehicle_Think_160
	mov ebx, [ebp-0x10f8]
	mov dword [ebx+0x1e4], 0x0
	jmp Scr_Vehicle_Think_160
Scr_Vehicle_Think_20:
	cmp ax, 0x5
	jnz Scr_Vehicle_Think_10
	mov edx, [ebp+0x8]
	mov [esp], edx
	call VEH_UpdateClientChopper
	jmp Scr_Vehicle_Think_10
Scr_Vehicle_Think_90:
	mov eax, [ebx+0x218]
	test eax, eax
	jnz Scr_Vehicle_Think_80
	movss xmm0, dword [ebp-0x24]
	movss xmm1, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm1, dword [_float_0_00100000]
	ucomiss xmm1, xmm0
	jbe Scr_Vehicle_Think_290
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x28]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm2, dword [_float_0_00100000]
	ucomiss xmm2, xmm0
	ja Scr_Vehicle_Think_80
Scr_Vehicle_Think_290:
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x5a4], 0x1
	jnz Scr_Vehicle_Think_80
	lea eax, [ebp-0x30]
	mov [esp], eax
	lea ecx, [ebp-0x24]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call PushAttachedStickyMissile
	jmp Scr_Vehicle_Think_80
Scr_Vehicle_Think_50:
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jz Scr_Vehicle_Think_300
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	lea edx, [ebx+0xc0]
	lea ecx, [ebx+0xcc]
	movss xmm0, dword [ebx+0xc0]
	subss xmm0, [ebx+0xcc]
	movss xmm1, dword [edx+0x4]
	subss xmm1, [ecx+0x4]
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jp Scr_Vehicle_Think_310
	jz Scr_Vehicle_Think_320
Scr_Vehicle_Think_310:
	mov edi, eax
	add edi, 0x114
	movss xmm1, dword [eax+0x114]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm2, dword [edi+0x8]
	movss [ebp-0x28], xmm2
	mov esi, eax
	add esi, 0x108
	subss xmm1, [eax+0x108]
	movss [ebp-0x24], xmm1
	subss xmm0, [esi+0x4]
	movss [ebp-0x20], xmm0
	subss xmm2, [esi+0x8]
	movss [ebp-0x1c], xmm2
	xor eax, eax
	ucomiss xmm1, xmm0
	setb al
	movss xmm0, dword [ebp+eax*4-0x24]
	ucomiss xmm0, xmm2
	ja Scr_Vehicle_Think_330
Scr_Vehicle_Think_450:
	mov dword [esp+0x18], 0x2081
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ecx
	lea ebx, [ebp-0xe0]
	mov [esp], ebx
	call G_TraceCapsule
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe0]
	ja Scr_Vehicle_Think_340
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	mov ecx, eax
	jmp Scr_Vehicle_Think_350
Scr_Vehicle_Think_280:
	mov dword [ecx+0x1e4], 0x1
	jmp Scr_Vehicle_Think_160
Scr_Vehicle_Think_300:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x164]
	lea edi, [edx+0x114]
	lea esi, [edx+0x108]
	mov ecx, edx
	jmp Scr_Vehicle_Think_350
Scr_Vehicle_Think_170:
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	jmp Scr_Vehicle_Think_360
Scr_Vehicle_Think_140:
	mov ecx, [ebp-0x10f8]
	jmp Scr_Vehicle_Think_370
Scr_Vehicle_Think_40:
	lea eax, [ebx+0x2a0]
	lea edx, [ebx+0x230]
	movss xmm0, dword [ebx+0x2a0]
	addss xmm0, [ebx+0x230]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [edx+0x4]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx+0x8]
	movss [ebp-0x58], xmm0
	lea edx, [ebp-0x60]
	mov eax, [ebp+0x8]
	call VEH_UpdateMoveToGoal
	movss xmm3, dword [_float_0_25000000]
	mulss xmm3, [ebx+0x224]
	lea eax, [ebx+0xc0]
	movss xmm0, dword [ebp-0x60]
	subss xmm0, [ebx+0xc0]
	movss xmm1, dword [ebp-0x5c]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x58]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm3, xmm0
	jbe Scr_Vehicle_Think_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x224]
	jnz Scr_Vehicle_Think_380
	jp Scr_Vehicle_Think_380
	lea eax, [ebx+0x230]
	movss [ebx+0x230], xmm0
	movss [eax+0x4], xmm0
	movss [eax+0x8], xmm0
	jmp Scr_Vehicle_Think_10
Scr_Vehicle_Think_220:
	mov eax, [ebp-0x10f8]
	mov dword [eax+0x1e4], 0x2
	jmp Scr_Vehicle_Think_390
Scr_Vehicle_Think_100:
	cmp word [ebx+0x168], 0x0
	jz Scr_Vehicle_Think_80
	mov [esp], ecx
	call Com_GetServerDObj
	lea ecx, [ebp-0x6c]
	mov [esp+0x8], ecx
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov [esp], eax
	call DObjPhysicsGetBounds
	movss xmm0, dword [ebx+0x13c]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebx+0x140]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebx+0x144]
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebx+0x13c]
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebx+0x140]
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebx+0x144]
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	jmp Scr_Vehicle_Think_400
Scr_Vehicle_Think_150:
	mov edx, eax
	add edx, 0x284
	mov eax, [eax+0x284]
	mov [ebp-0x6c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x68], eax
	mov eax, [edx+0x8]
	mov [ebp-0x64], eax
	mov dword [ebp-0x10f0], 0x0
	mov edx, [ebp-0x10f8]
	jmp Scr_Vehicle_Think_410
Scr_Vehicle_Think_30:
	mov eax, ecx
	lea edx, [ebx+0x2a0]
	call VEH_UpdateMoveToGoal
	jmp Scr_Vehicle_Think_10
Scr_Vehicle_Think_320:
	mov ecx, eax
	lea edi, [eax+0x114]
	lea esi, [eax+0x108]
	jmp Scr_Vehicle_Think_350
Scr_Vehicle_Think_270:
	mov dword [esp+0x8], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x102]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	mov eax, [ebp-0x10f0]
	test eax, eax
	jz Scr_Vehicle_Think_420
	mov dword [esp+0x1c], 0x801
	mov ecx, [ebp-0x10f0]
	mov eax, [ecx]
	mov [esp+0x18], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x10f8]
	add eax, 0x34c
	mov [esp], eax
	call SV_SightTrace
	mov eax, [ebp-0x10f8]
	mov eax, [eax+0x34c]
	test eax, eax
	jz Scr_Vehicle_Think_430
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Scr_Notify
	jmp Scr_Vehicle_Think_160
Scr_Vehicle_Think_200:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Scr_Vehicle_Think_440
Scr_Vehicle_Think_330:
	subss xmm0, xmm2
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	jmp Scr_Vehicle_Think_450
Scr_Vehicle_Think_430:
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x106]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	jmp Scr_Vehicle_Think_160
Scr_Vehicle_Think_240:
	mov dword [edx+0x1e4], 0x1
	jmp Scr_Vehicle_Think_390
Scr_Vehicle_Think_190:
	movzx edx, word [ecx+0x154]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx-0x274]
	add ebx, g_entities
	mov eax, [ebp-0x10f8]
	add eax, 0x284
	mov edx, [ebp-0x10f8]
	movss xmm3, dword [edx+0x284]
	subss xmm3, [ebp-0x60]
	movss [ebp-0x48], xmm3
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x5c]
	movss [ebp-0x44], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0x58]
	movss [ebp-0x40], xmm0
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
	jb Scr_Vehicle_Think_460
	movss xmm1, dword [_float_1_00000000]
Scr_Vehicle_Think_510:
	mulss xmm3, xmm1
	movss [ebp-0x48], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	mulss xmm1, [ebp-0x40]
	movss [ebp-0x40], xmm1
	lea ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call vectoangles
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x10c]
	mov [ebp-0x38], eax
	mov dword [ebp-0x34], 0x0
	jmp Scr_Vehicle_Think_470
Scr_Vehicle_Think_110:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov ecx, scr_const
	movzx eax, word [ecx+0xba]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_Notify
	mov [esp], ebx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov edx, scr_const
	movzx eax, word [edx+0xba]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Scr_Notify
	jmp Scr_Vehicle_Think_480
Scr_Vehicle_Think_250:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x10a]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Scr_Notify
	mov ebx, [ebp-0x10f8]
	mov dword [ebx+0x1e4], 0x0
	jmp Scr_Vehicle_Think_390
Scr_Vehicle_Think_420:
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Scr_Notify
	jmp Scr_Vehicle_Think_160
Scr_Vehicle_Think_380:
	xor edi, edi
Scr_Vehicle_Think_490:
	mov eax, [ebx+0x224]
	mov [esp+0x4], eax
	xor eax, 0x80000000
	mov [esp], eax
	call G_flrand
	fstp dword [ebp+edi*4-0x54]
	add edi, 0x1
	cmp edi, 0x3
	jnz Scr_Vehicle_Think_490
	lea eax, [ebx+0x230]
	movss xmm1, dword [_float__0_50000000]
	movss xmm0, dword [ebx+0x230]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x54]
	movss [ebx+0x230], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x50]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebp-0x4c]
	movss [eax+0x8], xmm1
	jmp Scr_Vehicle_Think_10
Scr_Vehicle_Think_340:
	mov [esp], ebx
	call Trace_GetEntityHitId
	cmp ax, 0x3fe
	jz Scr_Vehicle_Think_500
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x164]
	mov ecx, edx
	jmp Scr_Vehicle_Think_350
Scr_Vehicle_Think_460:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Scr_Vehicle_Think_510
Scr_Vehicle_Think_500:
	lea eax, [ebp-0xdc]
	mov [esp], eax
	call Scr_AddVector
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xfa]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Scr_Notify
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	jmp Scr_Vehicle_Think_350
	nop


;CMD_VEH_FireWeapon(scr_entref_t)
CMD_VEH_FireWeapon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov esi, eax
	mov eax, [eax+0x164]
	mov [ebp-0x10c], eax
	movsx eax, word [eax+0x1bc]
	lea edx, [eax+eax*4]
	lea ebx, [edx*8]
	sub ebx, eax
	shl ebx, 0x4
	add ebx, s_vehicleInfos
	cvtsi2ss xmm0, dword [esi+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	jbe CMD_VEH_FireWeapon_10
CMD_VEH_FireWeapon_320:
	mov ecx, [esi+0xc4]
	test ecx, ecx
	jz CMD_VEH_FireWeapon_20
CMD_VEH_FireWeapon_300:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0xb8], eax
	mov eax, [eax+0x12c]
	test eax, eax
	jz CMD_VEH_FireWeapon_30
	cmp eax, 0x2
	jz CMD_VEH_FireWeapon_30
	mov dword [esp], _cstring_vehicles_only_su
	call va
	mov [esp], eax
	call Scr_Error
CMD_VEH_FireWeapon_30:
	movzx eax, word [ebx+0x40]
	cmp ax, 0x2
	jz CMD_VEH_FireWeapon_40
	cmp ax, 0x5
	jz CMD_VEH_FireWeapon_40
	mov eax, [ebp-0x10c]
	mov edx, [eax+0x324]
	test edx, edx
	js CMD_VEH_FireWeapon_50
	mov edx, eax
CMD_VEH_FireWeapon_310:
	lea eax, [ebp-0xb4]
	mov [esp+0x8], eax
	mov eax, [edx+0x324]
	mov [esp+0x4], eax
	mov [esp], esi
	call G_DObjGetWorldBoneIndexMatrix
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0xb4]
	xorps xmm0, xmm1
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0xb0]
	xorps xmm0, xmm1
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0xac]
	xorps xmm0, xmm1
	movss [ebp-0x4c], xmm0
	lea edx, [ebp-0x54]
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	movss xmm0, dword [_float_1_00000000]
	mov eax, esi
	call VEH_JoltBody
CMD_VEH_FireWeapon_40:
	call Scr_GetNumParam
	test eax, eax
	jnz CMD_VEH_FireWeapon_60
	mov edi, [ebx+0x4c]
	test edi, edi
	jnz CMD_VEH_FireWeapon_70
CMD_VEH_FireWeapon_60:
	mov dword [ebp-0x108], 0x1
	xor eax, eax
	mov dword [ebp-0x104], 0x1a
CMD_VEH_FireWeapon_290:
	mov [ebp-0xfc], eax
	mov edx, [ebp-0x108]
	add edx, eax
	mov [ebp-0x110], edx
	jmp CMD_VEH_FireWeapon_80
CMD_VEH_FireWeapon_160:
	mov ecx, [ebp-0x100]
	test ecx, ecx
	js CMD_VEH_FireWeapon_90
	mov edx, [ebp-0x100]
CMD_VEH_FireWeapon_180:
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call G_DObjGetWorldBoneIndexMatrix
	cmp word [esi+0x154], 0x0
	jz CMD_VEH_FireWeapon_100
	cmp dword [ebp-0x108], 0x1
	jz CMD_VEH_FireWeapon_110
CMD_VEH_FireWeapon_100:
	mov eax, [ebp-0x84]
	mov [ebp-0xc4], eax
	mov eax, [ebp-0x80]
	mov [ebp-0xc0], eax
	mov eax, [ebp-0x7c]
	mov [ebp-0xbc], eax
CMD_VEH_FireWeapon_270:
	mov eax, [ebp-0xc4]
	mov [ebp-0xf4], eax
	mov eax, [ebp-0xc0]
	mov [ebp-0xf0], eax
	mov eax, [ebp-0xbc]
	mov [ebp-0xec], eax
	mov eax, [ebp-0x78]
	mov [ebp-0xe8], eax
	mov eax, [ebp-0x74]
	mov [ebp-0xe4], eax
	mov eax, [ebp-0x70]
	mov [ebp-0xe0], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0xdc], eax
	mov eax, [ebp-0x68]
	mov [ebp-0xd8], eax
	mov eax, [ebp-0x64]
	mov [ebp-0xd4], eax
	mov edx, [ebp-0x10c]
	mov edi, [edx+0x1e0]
	test edi, edi
	jz CMD_VEH_FireWeapon_120
	movss xmm0, dword [edx+0x1dc]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xc4]
	addss xmm1, [ebp-0x60]
	movss [ebp-0xd0], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xc0]
	addss xmm1, [ebp-0x5c]
	movss [ebp-0xcc], xmm1
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [ebp-0x58]
	movss [ebp-0xc8], xmm0
CMD_VEH_FireWeapon_210:
	mov eax, [ebp-0xb8]
	mov ebx, [eax+0x12c]
	test ebx, ebx
	jnz CMD_VEH_FireWeapon_130
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	lea eax, [ebp-0xf4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call Bullet_Fire
	add dword [ebp-0xfc], 0x1
	mov eax, [ebp-0x110]
	cmp [ebp-0xfc], eax
	jz CMD_VEH_FireWeapon_140
CMD_VEH_FireWeapon_80:
	mov ebx, [esi+0x164]
	call Scr_GetNumParam
	test eax, eax
	jnz CMD_VEH_FireWeapon_150
CMD_VEH_FireWeapon_220:
	mov dword [ebp-0x100], 0xffffffff
CMD_VEH_FireWeapon_230:
	call Scr_GetNumParam
	test eax, eax
	jnz CMD_VEH_FireWeapon_160
CMD_VEH_FireWeapon_90:
	mov edx, [ebp-0xfc]
	mov eax, [ebx+edx*4+0x328]
	test eax, eax
	js CMD_VEH_FireWeapon_170
	mov [ebp-0x100], eax
	mov edx, eax
	jmp CMD_VEH_FireWeapon_180
CMD_VEH_FireWeapon_130:
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe CMD_VEH_FireWeapon_190
	mov dword [esp], 0x1
	call Scr_GetEntity
	mov edi, eax
	call Scr_GetNumParam
	cmp eax, 0x2
	ja CMD_VEH_FireWeapon_200
CMD_VEH_FireWeapon_240:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ebp-0x24]
CMD_VEH_FireWeapon_250:
	mov [esp+0x18], ebx
	mov [esp+0x14], edi
	mov eax, [ebp-0x10c]
	add eax, 0x138
	mov [esp+0x10], eax
	lea edx, [ebp-0xf4]
	mov [esp+0xc], edx
	mov eax, [ebp-0xb8]
	mov eax, [eax+0x71c]
	mov [esp+0x8], eax
	mov eax, [esi+0xc4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Weapon_RocketLauncher_Fire
	mov [esp], eax
	call Scr_AddEntity
	add dword [ebp-0xfc], 0x1
	mov eax, [ebp-0x110]
	cmp [ebp-0xfc], eax
	jnz CMD_VEH_FireWeapon_80
CMD_VEH_FireWeapon_140:
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x104]
	mov [esp+0x4], edx
	mov [esp], esi
	call G_AddEvent
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0xca]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	mov eax, [ebp-0xb8]
	mov eax, [eax+0x36c]
	mov edx, [ebp-0x10c]
	mov [edx+0x1d4], eax
	xor eax, eax
	cmp dword [edx+0x1d8], 0x0
	setz al
	mov [edx+0x1d8], eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CMD_VEH_FireWeapon_120:
	mov eax, [ebp-0x60]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x58]
	mov [ebp-0xc8], eax
	jmp CMD_VEH_FireWeapon_210
CMD_VEH_FireWeapon_150:
	mov dword [esp], 0x0
	call Scr_GetString
	mov edi, eax
	cmp byte [eax], 0x0
	jz CMD_VEH_FireWeapon_220
	mov dword [esp], 0x0
	call Scr_GetConstLowercaseString
	mov [esp+0x4], eax
	mov [esp], esi
	call SV_DObjGetBoneIndex
	mov [ebp-0x100], eax
	test eax, eax
	jns CMD_VEH_FireWeapon_230
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_no_tag_s_for_s
	call va
	mov [esp], eax
	call Scr_Error
	jmp CMD_VEH_FireWeapon_230
CMD_VEH_FireWeapon_190:
	xor edi, edi
	call Scr_GetNumParam
	cmp eax, 0x2
	jbe CMD_VEH_FireWeapon_240
CMD_VEH_FireWeapon_200:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov dword [esp], 0x2
	call Scr_GetVector
	jmp CMD_VEH_FireWeapon_250
CMD_VEH_FireWeapon_110:
	mov eax, [ebp-0x10c]
	mov edx, [eax+0x1e0]
	test edx, edx
	jnz CMD_VEH_FireWeapon_100
	cmp dword [eax+0x27c], 0x3ff
	jnz CMD_VEH_FireWeapon_100
	add eax, 0x284
	mov edx, [ebp-0x10c]
	movss xmm3, dword [edx+0x284]
	subss xmm3, [ebp-0x60]
	movss [ebp-0xc4], xmm3
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x5c]
	movss [ebp-0xc0], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0x58]
	movss [ebp-0xbc], xmm0
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
	jb CMD_VEH_FireWeapon_260
	movss xmm1, dword [_float_1_00000000]
CMD_VEH_FireWeapon_330:
	mulss xmm3, xmm1
	movss [ebp-0xc4], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0xc0]
	movss [ebp-0xc0], xmm0
	mulss xmm1, [ebp-0xbc]
	movss [ebp-0xbc], xmm1
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x84]
	mov [esp], edx
	call vectoangles
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0xc4]
	mov [esp], eax
	call vectoangles
	lea edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call AnglesSubtract
	mov eax, [ebp-0xb8]
	movss xmm2, dword [eax+0x40c]
	movaps xmm4, xmm2
	xorps xmm4, [_data16_80000000]
	movss xmm3, dword [ebp-0x48]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	andps xmm2, xmm1
	andnps xmm1, xmm3
	orps xmm1, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm4, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm4
	movss [ebp-0x48], xmm0
	movss xmm2, dword [eax+0x40c]
	movaps xmm4, xmm2
	xorps xmm4, [_data16_80000000]
	movss xmm3, dword [ebp-0x44]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	andps xmm2, xmm1
	andnps xmm1, xmm3
	orps xmm1, xmm2
	movaps xmm0, xmm4
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm4, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm4
	movss [ebp-0x44], xmm0
	mov dword [ebp-0x40], 0x0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], eax
	call AnglesSubtract
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0xc4]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call AngleVectors
	jmp CMD_VEH_FireWeapon_270
CMD_VEH_FireWeapon_170:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	mov edx, [ebp-0xfc]
	mov eax, [edx*4+s_flashTags]
	movzx eax, word [eax]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_no_s_for_s
	call va
	mov [esp], eax
	call Scr_Error
	mov edx, [ebp-0x100]
	jmp CMD_VEH_FireWeapon_180
CMD_VEH_FireWeapon_70:
	mov eax, [ebp-0x10c]
	mov ebx, [eax+0x1d8]
	test ebx, ebx
	jnz CMD_VEH_FireWeapon_280
	mov dword [ebp-0x108], 0x2
	xor eax, eax
	mov dword [ebp-0x104], 0x27
	jmp CMD_VEH_FireWeapon_290
CMD_VEH_FireWeapon_20:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_invalid_weapon_s
	call va
	mov [esp], eax
	call Scr_Error
	jmp CMD_VEH_FireWeapon_300
CMD_VEH_FireWeapon_280:
	mov dword [ebp-0x108], 0x2
	mov eax, 0x2
	mov dword [ebp-0x104], 0x28
	jmp CMD_VEH_FireWeapon_290
CMD_VEH_FireWeapon_50:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_no_tag_barrel_fo
	call va
	mov [esp], eax
	call Scr_Error
	mov edx, [ebp-0x10c]
	jmp CMD_VEH_FireWeapon_310
CMD_VEH_FireWeapon_10:
	jp CMD_VEH_FireWeapon_320
	mov dword [esp], _cstring_vehicle_must_hav
	call va
	mov [esp], eax
	call Scr_Error
	jmp CMD_VEH_FireWeapon_320
CMD_VEH_FireWeapon_260:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp CMD_VEH_FireWeapon_330
	nop


;CMD_VEH_SetGoalPos(scr_entref_t)
CMD_VEH_SetGoalPos:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [ebx+0x248], 0x1
	lea eax, [ebx+0x2a0]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe CMD_VEH_SetGoalPos_10
	mov dword [esp], 0x1
	call Scr_GetInt
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebx+0x274], eax
CMD_VEH_SetGoalPos_60:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x24c]
	jp CMD_VEH_SetGoalPos_20
	jz CMD_VEH_SetGoalPos_30
CMD_VEH_SetGoalPos_20:
	ucomiss xmm0, [ebx+0x250]
	jp CMD_VEH_SetGoalPos_40
	jnz CMD_VEH_SetGoalPos_40
CMD_VEH_SetGoalPos_30:
	mov dword [esp], _cstring_speed_and_accele
	call Scr_Error
CMD_VEH_SetGoalPos_50:
	or dword [ebx+0x1c0], 0x2
	mov dword [ebx+0x1c8], 0x1
	mov dword [ebx+0x278], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetGoalPos_40:
	ucomiss xmm0, [ebx+0x254]
	jnz CMD_VEH_SetGoalPos_50
	jnp CMD_VEH_SetGoalPos_30
	jmp CMD_VEH_SetGoalPos_50
CMD_VEH_SetGoalPos_10:
	mov dword [ebx+0x274], 0x0
	jmp CMD_VEH_SetGoalPos_60


;CMD_VEH_SetGoalYaw(scr_entref_t)
CMD_VEH_SetGoalYaw:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x2ac]
	mov dword [ebx+0x270], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_GetSpeedMPH(scr_entref_t)
CMD_VEH_GetSpeedMPH:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov eax, [eax+0x164]
	movss xmm0, dword [eax+0x25c]
	divss xmm0, dword [_float_17_60000038]
	movss [ebp+0x8], xmm0
	leave
	jmp Scr_AddFloat
	add [eax], al


;CMD_VEH_ResumeSpeed(scr_entref_t)
CMD_VEH_ResumeSpeed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [ebx+0x248], 0x2
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_17_60000038]
	movss [ebx+0x250], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jb CMD_VEH_ResumeSpeed_10
CMD_VEH_ResumeSpeed_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
CMD_VEH_ResumeSpeed_10:
	jp CMD_VEH_ResumeSpeed_20
	mov dword [esp+0x4], _cstring_cannot_set_negat1
	mov dword [esp], 0x0
	call Scr_ParamError
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CMD_VEH_SetYawSpeed(scr_entref_t)
CMD_VEH_SetYawSpeed:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0xf4]
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebx+0xfc]
	call Scr_GetNumParam
	cmp eax, 0x2
	ja CMD_VEH_SetYawSpeed_10
	mov eax, [ebx+0xfc]
	mov [ebx+0x100], eax
	call Scr_GetNumParam
	cmp eax, 0x3
	ja CMD_VEH_SetYawSpeed_20
CMD_VEH_SetYawSpeed_50:
	pxor xmm0, xmm0
	movss [ebp-0xc], xmm0
	movaps xmm1, xmm0
	ucomiss xmm1, [ebx+0xf4]
	ja CMD_VEH_SetYawSpeed_30
CMD_VEH_SetYawSpeed_80:
	movaps xmm0, xmm1
	ucomiss xmm0, [ebx+0xfc]
	ja CMD_VEH_SetYawSpeed_40
CMD_VEH_SetYawSpeed_90:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
CMD_VEH_SetYawSpeed_10:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebx+0x100]
	call Scr_GetNumParam
	cmp eax, 0x3
	jbe CMD_VEH_SetYawSpeed_50
CMD_VEH_SetYawSpeed_20:
	mov dword [esp], 0x3
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [ebx+0x2b4], xmm0
	pxor xmm1, xmm1
	movss [ebp-0xc], xmm1
	ucomiss xmm1, xmm0
	ja CMD_VEH_SetYawSpeed_60
	ucomiss xmm0, [_float_1_00000000]
	jbe CMD_VEH_SetYawSpeed_70
CMD_VEH_SetYawSpeed_60:
	mov dword [esp+0x4], _cstring_overshoot_must_b
	mov dword [esp], 0x3
	call Scr_ParamError
CMD_VEH_SetYawSpeed_70:
	movss xmm1, dword [ebp-0xc]
	ucomiss xmm1, [ebx+0xf4]
	jbe CMD_VEH_SetYawSpeed_80
CMD_VEH_SetYawSpeed_30:
	mov dword [esp+0x4], _cstring_cannot_set_negat2
	mov dword [esp], 0x0
	call Scr_ParamError
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [ebx+0xfc]
	jbe CMD_VEH_SetYawSpeed_90
CMD_VEH_SetYawSpeed_40:
	mov dword [esp+0x4], _cstring_cannot_set_negat3
	mov dword [esp], 0x1
	call Scr_ParamError
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;VEH_CorrectAllSolid(gentity_s*, trace_t*)
VEH_CorrectAllSolid:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	lea esi, [eax+0xc0]
	xor edi, edi
	lea edx, [eax+0x12c]
	mov [ebp-0x30], edx
	add eax, 0x120
	mov [ebp-0x2c], eax
	xor ebx, ebx
	jmp VEH_CorrectAllSolid_10
VEH_CorrectAllSolid_30:
	add edi, 0x1
	add ebx, 0xc
	cmp edi, 0x1a
	jz VEH_CorrectAllSolid_20
VEH_CorrectAllSolid_10:
	movss xmm0, dword [esi]
	addss xmm0, [ebx+s_correctSolidDeltas]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	addss xmm0, [ebx+s_correctSolidDeltas+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	addss xmm0, [ebx+s_correctSolidDeltas+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x190]
	mov [esp+0x18], eax
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0x30]
	mov [esp+0xc], edx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call G_TraceCapsule
	mov edx, [ebp+0xc]
	cmp byte [edx+0x29], 0x0
	jnz VEH_CorrectAllSolid_30
	mov edx, [ebp-0x24]
	mov [esi], edx
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
	mov [ebp-0x24], edx
	mov eax, [esi+0x4]
	mov [ebp-0x20], eax
	movss xmm0, dword [esi+0x8]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x190]
	mov [esp+0x18], eax
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0x30]
	mov [esp+0xc], edx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call G_TraceCapsule
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [s_phys], eax
	mov eax, [edx+0x4]
	mov [s_phys+0x4], eax
	mov eax, [edx+0x8]
	mov [s_phys+0x8], eax
	mov eax, [edx+0xc]
	mov [s_phys+0xc], eax
	mov eax, [edx+0x10]
	mov [s_phys+0x10], eax
	mov eax, [edx+0x14]
	mov [s_phys+0x14], eax
	mov eax, [edx+0x18]
	mov [s_phys+0x18], eax
	mov eax, [edx+0x1c]
	mov [s_phys+0x1c], eax
	mov eax, [edx+0x20]
	mov [s_phys+0x20], eax
	mov eax, [edx+0x24]
	mov [s_phys+0x24], eax
	mov eax, [edx+0x28]
	mov [s_phys+0x28], eax
	movss xmm2, dword [edx]
	movss xmm1, dword [esi]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [esi], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [esi+0x8]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [esi+0x8], xmm1
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_CorrectAllSolid_20:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;CMD_VEH_ClearGoalYaw(scr_entref_t)
CMD_VEH_ClearGoalYaw:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov eax, [eax+0x164]
	mov dword [eax+0x2ac], 0x0
	mov dword [eax+0x270], 0x0
	leave
	ret
	nop


;CMD_VEH_SetLookAtEnt(scr_entref_t)
CMD_VEH_SetLookAtEnt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, eax
	mov esi, [eax+0x164]
	test byte [esi+0x1c0], 0x1
	jnz CMD_VEH_SetLookAtEnt_10
	cvtsi2ss xmm0, dword [ebx+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	jbe CMD_VEH_SetLookAtEnt_20
CMD_VEH_SetLookAtEnt_40:
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov ebx, eax
	test eax, eax
	jz CMD_VEH_SetLookAtEnt_30
CMD_VEH_SetLookAtEnt_50:
	mov [esp+0x4], ebx
	lea eax, [esi+0x280]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CMD_VEH_SetLookAtEnt_10:
	mov dword [esp], _cstring_cant_set_target_
	call va
	mov [esp], eax
	call Scr_Error
	cvtsi2ss xmm0, dword [ebx+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	ja CMD_VEH_SetLookAtEnt_40
CMD_VEH_SetLookAtEnt_20:
	jp CMD_VEH_SetLookAtEnt_40
	mov dword [esp], _cstring_vehicle_must_hav1
	call va
	mov [esp], eax
	call Scr_Error
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov ebx, eax
	test eax, eax
	jnz CMD_VEH_SetLookAtEnt_50
CMD_VEH_SetLookAtEnt_30:
	mov dword [esp], _cstring_invalid_entity
	call va
	mov [esp], eax
	call Scr_Error
	mov [esp+0x4], ebx
	lea eax, [esi+0x280]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CMD_VEH_SetTargetYaw(scr_entref_t)
CMD_VEH_SetTargetYaw:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x29c]
	mov dword [ebx+0x26c], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_ClearLookAtEnt(scr_entref_t)
CMD_VEH_ClearLookAtEnt:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov dword [esp+0x4], 0x0
	mov eax, [eax+0x164]
	add eax, 0x280
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	leave
	ret


;CMD_VEH_ClearTargetYaw(scr_entref_t)
CMD_VEH_ClearTargetYaw:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov eax, [eax+0x164]
	mov dword [eax+0x29c], 0x0
	mov dword [eax+0x26c], 0x0
	leave
	ret
	nop


;CMD_VEH_SetHoverParams(scr_entref_t)
CMD_VEH_SetHoverParams:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x224]
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe CMD_VEH_SetHoverParams_10
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebx+0x228]
	call Scr_GetNumParam
	cmp eax, 0x2
	ja CMD_VEH_SetHoverParams_20
CMD_VEH_SetHoverParams_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetHoverParams_20:
	mov dword [esp], 0x2
	call Scr_GetFloat
	fstp dword [ebx+0x22c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_SetVehicleTeam(scr_entref_t)
CMD_VEH_SetVehicleTeam:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov esi, eax
	mov dword [esp], 0x0
	call Scr_GetString
	mov ebx, eax
	mov dword [esp+0x4], _cstring_axis
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CMD_VEH_SetVehicleTeam_10
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x1
CMD_VEH_SetVehicleTeam_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CMD_VEH_SetVehicleTeam_10:
	mov dword [esp+0x4], _cstring_allies
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CMD_VEH_SetVehicleTeam_20
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CMD_VEH_SetVehicleTeam_20:
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz CMD_VEH_SetVehicleTeam_30
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x0
	jmp CMD_VEH_SetVehicleTeam_40
CMD_VEH_SetVehicleTeam_30:
	mov dword [ebp+0x8], _cstring_setvehicleteam_i
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Scr_Error
	nop


;CMD_VEH_SetAirResitance(scr_entref_t)
CMD_VEH_SetAirResitance:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_17_60000038]
	movss [ebx+0x260], xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	add [eax], al


;CMD_VEH_SetMaxPitchRoll(scr_entref_t)
CMD_VEH_SetMaxPitchRoll:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	movsx edx, word [ebx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov edx, s_vehicleInfos
	cmp word [edx+eax+0x40], 0x5
	jz CMD_VEH_SetMaxPitchRoll_10
	mov dword [esp], _cstring_max_pitch_roll_o
	call Scr_Error
CMD_VEH_SetMaxPitchRoll_10:
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x168]
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebx+0x16c]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x168]
	ja CMD_VEH_SetMaxPitchRoll_20
CMD_VEH_SetMaxPitchRoll_40:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x16c]
	ja CMD_VEH_SetMaxPitchRoll_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetMaxPitchRoll_30:
	mov dword [esp+0x4], _cstring_cannot_set_negat4
	mov dword [esp], 0x1
	call Scr_ParamError
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetMaxPitchRoll_20:
	mov dword [esp+0x4], _cstring_cannot_set_negat5
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp CMD_VEH_SetMaxPitchRoll_40


;CMD_VEH_SetTurningAbility(scr_entref_t)
CMD_VEH_SetTurningAbility:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x264]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_NearGoalNotifyDist(scr_entref_t)
CMD_VEH_NearGoalNotifyDist:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebx+0x2bc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_SetTurretTargetEnt(scr_entref_t)
CMD_VEH_SetTurretTargetEnt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, [eax+0x164]
	cvtsi2ss xmm0, dword [eax+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	jbe CMD_VEH_SetTurretTargetEnt_10
CMD_VEH_SetTurretTargetEnt_60:
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov dword [ebx+0x268], 0x1
	test eax, eax
	jz CMD_VEH_SetTurretTargetEnt_20
	mov edx, [eax]
CMD_VEH_SetTurretTargetEnt_50:
	mov [ebx+0x27c], edx
	test eax, eax
	jz CMD_VEH_SetTurretTargetEnt_30
	or dword [eax+0x180], 0x80000
CMD_VEH_SetTurretTargetEnt_30:
	call Scr_GetNumParam
	cmp eax, 0x1
	jbe CMD_VEH_SetTurretTargetEnt_40
	lea eax, [ebx+0x290]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_GetVector
	lea eax, [ebx+0x284]
	mov dword [ebx+0x284], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetTurretTargetEnt_40:
	lea edx, [ebx+0x290]
	xor eax, eax
	mov [ebx+0x290], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [ebx+0x284]
	mov dword [ebx+0x284], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CMD_VEH_SetTurretTargetEnt_20:
	mov edx, 0x3ff
	jmp CMD_VEH_SetTurretTargetEnt_50
CMD_VEH_SetTurretTargetEnt_10:
	jp CMD_VEH_SetTurretTargetEnt_60
	mov dword [esp], _cstring_vehicle_must_hav
	call va
	mov [esp], eax
	call Scr_Error
	jmp CMD_VEH_SetTurretTargetEnt_60


;CMD_VEH_SetTurretTargetVec(scr_entref_t)
CMD_VEH_SetTurretTargetVec:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov esi, eax
	mov ebx, [eax+0x164]
	test byte [ebx+0x1c0], 0x1
	jnz CMD_VEH_SetTurretTargetVec_10
	cvtsi2ss xmm0, dword [esi+0x1a0]
	xor esi, esi
	ucomiss xmm0, [_float_0_00000000]
	jbe CMD_VEH_SetTurretTargetVec_20
CMD_VEH_SetTurretTargetVec_30:
	mov dword [ebx+0x268], 0x1
	mov dword [ebx+0x27c], 0x3ff
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	lea edx, [ebx+0x284]
	mov eax, [ebp-0x14]
	mov [ebx+0x284], eax
	mov eax, [ebp-0x10]
	mov [edx+0x4], eax
	mov eax, [ebp-0xc]
	mov [edx+0x8], eax
	lea eax, [ebx+0x290]
	mov [ebx+0x290], esi
	mov [eax+0x4], esi
	mov [eax+0x8], esi
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
CMD_VEH_SetTurretTargetVec_10:
	mov dword [esp], _cstring_cant_set_target_1
	call va
	mov [esp], eax
	call Scr_Error
	cvtsi2ss xmm0, dword [esi+0x1a0]
	xor esi, esi
	ucomiss xmm0, [_float_0_00000000]
	ja CMD_VEH_SetTurretTargetVec_30
CMD_VEH_SetTurretTargetVec_20:
	jp CMD_VEH_SetTurretTargetVec_30
	mov dword [esp], _cstring_vehicle_must_hav
	call va
	mov [esp], eax
	call Scr_Error
	jmp CMD_VEH_SetTurretTargetVec_30


;CMD_VEH_ClearTurretTargetEnt(scr_entref_t)
CMD_VEH_ClearTurretTargetEnt:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ecx, [eax+0x164]
	test byte [ecx+0x1c0], 0x1
	jnz CMD_VEH_ClearTurretTargetEnt_10
	mov dword [ecx+0x268], 0x0
CMD_VEH_ClearTurretTargetEnt_10:
	mov dword [ecx+0x27c], 0x3ff
	lea eax, [ecx+0x284]
	xor edx, edx
	mov [ecx+0x284], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	lea eax, [ecx+0x290]
	mov [ecx+0x290], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	leave
	ret


;Initialized global or static variables of g_scr_vehicle:
SECTION .data

;Initialized constant data of g_scr_vehicle:
SECTION .rdata
s_correctSolidDeltas: dd 0x0, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x3f800000, 0x0, 0x3f800000, 0x0, 0x3f800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0xbf800000, 0xbf800000, 0x0, 0xbf800000, 0x0, 0xbf800000, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x3f800000, 0x3f800000, 0x0, 0xbf800000, 0x3f800000, 0x0, 0xbf800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0x3f800000, 0xbf800000, 0xbf800000, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_scr_vehicle:
SECTION .bss
s_phys: resb 0x40
s_backup: resb 0x1c0


;All cstrings:
SECTION .rdata
_cstring_accelerationdece:		db "Acceleration/deceleration must be > 0",0
_cstring_warning_capping_:		db "WARNING: capping acceleration to speed / sec for vehicle ",27h,"%d",27h,0ah,0
_cstring_cannot_set_negat:		db "Cannot set negative speed on vehicle",0
_cstring_entity_i_is_not_:		db "entity %i is not a script_vehicle",0ah,0
_cstring_entity_i_doesnt_:		db "entity %i doesn",27h,"t have a script_vehicle",0ah,0
_cstring_not_an_entity:		db "not an entity",0
_cstring_vehicles_only_su:		db "Vehicles only support bullet and projectile weapons",0ah,0
_cstring_no_tag_s_for_s:		db "No tag %s for [%s]",0ah,0
_cstring_no_s_for_s:		db "No %s for [%s]",0ah,0
_cstring_invalid_weapon_s:		db "Invalid weapon specified for [%s]",0ah,0
_cstring_no_tag_barrel_fo:		db "No tag_barrel for [%s]",0ah,0
_cstring_vehicle_must_hav:		db "Vehicle must have health to control the turret",0
_cstring_speed_and_accele:		db "Speed and acceleration must not be zero before setting goal pos",0
_cstring_cannot_set_negat1:		db "Cannot set negative acceleration on vehicle",0
_cstring_overshoot_must_b:		db "Overshoot must be in 0 to 1 range",0
_cstring_cannot_set_negat2:		db "Cannot set negative yaw speed on vehicle",0
_cstring_cannot_set_negat3:		db "Cannot set negative yaw acceleration on vehicle",0
_cstring_cant_set_target_:		db "Can",27h,"t set target on player",27h,"s vehicle",0
_cstring_vehicle_must_hav1:		db "Vehicle must have health to control",0
_cstring_invalid_entity:		db "Invalid entity",0
_cstring_axis:		db "axis",0
_cstring_allies:		db "allies",0
_cstring_none:		db "none",0
_cstring_setvehicleteam_i:		db "setVehicleTeam: invalid team used must be ",27h,"axis",27h,", ",27h,"allies",27h,", or ",27h,"none",27h,0ah,0
_cstring_max_pitch_roll_o:		db "Max Pitch Roll only valid for helicopters",0
_cstring_cannot_set_negat4:		db "Cannot set negative max roll",0
_cstring_cannot_set_negat5:		db "Cannot set negative max pitch",0
_cstring_cant_set_target_1:		db "Can",27h,"t set target position on player",27h,"s vehicle",0



;All constant floats and doubles:
SECTION .rdata
_float_17_60000038:		dd 0x418ccccd	; 17.6
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_5_00000000:		dd 0x40a00000	; 5
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_2_50000000:		dd 0x40200000	; 2.5
_float_3_50000000:		dd 0x40600000	; 3.5
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_45_00000000:		dd 0x42340000	; 45
_float_0_40000001:		dd 0x3ecccccd	; 0.4
_float__1_00000000:		dd 0xbf800000	; -1
_float_3_00000000:		dd 0x40400000	; 3
_float_35_20000076:		dd 0x420ccccd	; 35.2
_float_40_00000000:		dd 0x42200000	; 40
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_1_00999999:		dd 0x3f8147ae	; 1.01
_float_2_00000000:		dd 0x40000000	; 2
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_25000000:		dd 0x3e800000	; 0.25
_float__0_50000000:		dd 0xbf000000	; -0.5

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
