;Imports of g_scr_helicopter:
	extern _Z15GScr_GetVehicle12scr_entref_t
	extern _Z15G_VehFreeEntityP9gentity_s
	extern _Z10Scr_GetIntj
	extern _Z15BG_GetWeaponDefj
	extern _Z17VEH_JoltBody_copyP9gentity_sPKffff
	extern _Z17Scr_Vehicle_ThinkP9gentity_s
	extern level
	extern _Z10G_SetModelP9gentity_sPKc
	extern _Z12SpawnVehicleP9gentity_sPKci
	extern s_vehicleInfos
	extern _Z14VEH_InitEntityP9gentity_sP13scr_vehicle_si
	extern _Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si
	extern _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	extern _Z15VEH_SetPositionP9gentity_sPKfS2_
	extern strcmp
	extern _Z17Com_GetServerDObji
	extern vec3_origin
	extern _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z16CMD_VEH_SetSpeed12scr_entref_t
	extern _Z16CMD_VEH_GetSpeed12scr_entref_t
	extern _Z19CMD_VEH_GetSpeedMPH12scr_entref_t
	extern _Z19CMD_VEH_ResumeSpeed12scr_entref_t
	extern _Z19CMD_VEH_SetYawSpeed12scr_entref_t
	extern _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t
	extern _Z25CMD_VEH_SetTurningAbility12scr_entref_t
	extern _Z23CMD_VEH_SetAirResitance12scr_entref_t
	extern _Z22CMD_VEH_SetHoverParams12scr_entref_t
	extern _Z26CMD_VEH_NearGoalNotifyDist12scr_entref_t
	extern _Z18CMD_VEH_SetGoalPos12scr_entref_t
	extern _Z18CMD_VEH_SetGoalYaw12scr_entref_t
	extern _Z20CMD_VEH_ClearGoalYaw12scr_entref_t
	extern _Z20CMD_VEH_SetTargetYaw12scr_entref_t
	extern _Z22CMD_VEH_ClearTargetYaw12scr_entref_t
	extern _Z20CMD_VEH_SetLookAtEnt12scr_entref_t
	extern _Z22CMD_VEH_ClearLookAtEnt12scr_entref_t
	extern _Z17CMD_VEH_SetWeapon12scr_entref_t
	extern _Z18CMD_VEH_FireWeapon12scr_entref_t
	extern _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t
	extern _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t
	extern _Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t
	extern _Z22CMD_VEH_SetVehicleTeam12scr_entref_t

;Exports of g_scr_helicopter:
	global s_methods
	global _Z23CMD_Heli_FreeHelicopter12scr_entref_t
	global _Z23CMD_Heli_SetDamageStage12scr_entref_t
	global _Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	global _Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti
	global _Z16Helicopter_ThinkP9gentity_s
	global _Z17G_SpawnHelicopterP9gentity_sS0_PKcS2_
	global _Z20Helicopter_GetMethodPPKc
	global _Z21Helicopter_ControllerPK9gentity_sPi
	global _Z24Helicopter_RegisterDvarsv
	global vehHelicopterDecelerationFwd
	global vehHelicopterDecelerationSide
	global vehHelicopterHoverSpeedThreshold
	global vehHelicopterJitterJerkyness
	global vehHelicopterLookaheadTime
	global vehHelicopterMaxAccel
	global vehHelicopterMaxAccelVertical
	global vehHelicopterMaxPitch
	global vehHelicopterMaxRoll
	global vehHelicopterMaxSpeed
	global vehHelicopterMaxSpeedVertical
	global vehHelicopterMaxYawAccel
	global vehHelicopterMaxYawRate
	global vehHelicopterRightStickDeadzone
	global vehHelicopterScaleMovement
	global vehHelicopterSoftCollisions
	global vehHelicopterStrafeDeadzone
	global vehHelicopterTiltFromAcceleration
	global vehHelicopterTiltFromControllerAxes
	global vehHelicopterTiltFromDeceleration
	global vehHelicopterTiltFromFwdAndYaw
	global vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt
	global vehHelicopterTiltFromVelocity
	global vehHelicopterTiltMomentum
	global vehHelicopterTiltSpeed
	global vehHelicopterYawOnLeftStick
	global vehHelicopterHeadSwayDontSwayTheTurret
	global vehHelicopterInvertUpDown


SECTION .text


;CMD_Heli_FreeHelicopter(scr_entref_t)
_Z23CMD_Heli_FreeHelicopter12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov [ebp+0x8], eax
	leave
	jmp _Z15G_VehFreeEntityP9gentity_s


;CMD_Heli_SetDamageStage(scr_entref_t)
_Z23CMD_Heli_SetDamageStage12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0xd4], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Helicopter_Die(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
_Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov ebx, [ebp+0x20]
	test eax, eax
	jz _Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz _Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20
_Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja _Z14Helicopter_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	xor eax, eax
	mov [ebp+0x18], eax
	mov [ebp+0x14], eax
	mov dword [ebp+0x10], 0x3f800000
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z17VEH_JoltBody_copyP9gentity_sPKffff


;Helicopter_Pain(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
_Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x1c]
	test eax, eax
	jz _Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz _Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_20
_Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_20:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja _Z15Helicopter_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10
	xor eax, eax
	mov [ebp+0x18], eax
	mov [ebp+0x14], eax
	mov dword [ebp+0x10], 0x3f800000
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z17VEH_JoltBody_copyP9gentity_sPKffff


;Helicopter_Think(gentity_s*)
_Z16Helicopter_ThinkP9gentity_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z17Scr_Vehicle_ThinkP9gentity_s
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [ebx+0x19c], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;G_SpawnHelicopter(gentity_s*, gentity_s*, char const*, char const*)
_Z17G_SpawnHelicopterP9gentity_sS0_PKcS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10G_SetModelP9gentity_sPKc
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z12SpawnVehicleP9gentity_sPKci
	mov eax, [ebp+0x8]
	mov dword [eax+0x4], 0xc
	mov ebx, [eax+0x164]
	movsx edx, word [ebx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov edx, s_vehicleInfos
	mov word [edx+eax+0x40], 0x5
	mov dword [ebx+0x27c], 0x3ff
	movsx eax, word [ebx+0x1bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14VEH_InitEntityP9gentity_sP13scr_vehicle_si
	movsx eax, word [ebx+0x1bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si
	lea edx, [ebx+0x120]
	mov eax, 0xc2480000
	mov [ebx+0x120], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [ebx+0x12c]
	mov eax, 0x42480000
	mov [ebx+0x12c], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, [ebp+0xc]
	mov edx, [eax+0x15c]
	mov ecx, level
	mov eax, edx
	sub eax, [ecx]
	sar eax, 0x2
	imul eax, eax, 0x408b97a1
	shl eax, 0x2
	or eax, [edx+0x3010]
	mov edx, [ebp+0x8]
	mov [edx+0x6c], eax
	mov byte [edx+0x16e], 0x17
	mov eax, [ecx+0x1ec]
	add eax, 0x32
	mov [edx+0x19c], eax
	or byte [edx+0xf6], 0x10
	mov eax, [edx+0x164]
	mov [ebp-0x2c], eax
	mov edi, eax
	add edi, 0xc0
	mov ebx, eax
	mov esi, edi
	mov dword [ebp-0x30], 0x4
_Z17G_SpawnHelicopterP9gentity_sS0_PKcS2__20:
	mov eax, [ebx+0x33c]
	test eax, eax
	js _Z17G_SpawnHelicopterP9gentity_sS0_PKcS2__10
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	mov eax, [ebp-0x1c]
	mov [esi+0xc0], eax
_Z17G_SpawnHelicopterP9gentity_sS0_PKcS2__10:
	add ebx, 0x4
	add esi, 0x4
	sub dword [ebp-0x30], 0x1
	jnz _Z17G_SpawnHelicopterP9gentity_sS0_PKcS2__20
	lea ebx, [edi+0x18]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z15VEH_SetPositionP9gentity_sPKfS2_
	lea edx, [edi+0xc]
	mov eax, [edi]
	mov [edi+0xc], eax
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	lea edx, [edi+0x24]
	mov eax, [edi+0x18]
	mov [edi+0x24], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov eax, [ebp+0x8]
	mov dword [eax+0x1a0], 0x1869f
	mov byte [eax+0x16e], 0x17
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov edx, [ebp+0x8]
	mov [edx+0x19c], eax
	mov eax, [ebp-0x2c]
	or dword [eax+0x1c0], 0x8
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Helicopter_GetMethod(char const**)
_Z20Helicopter_GetMethodPPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	xor esi, esi
	mov ebx, s_methods
	xor edi, edi
	mov edx, eax
	jmp _Z20Helicopter_GetMethodPPKc_10
_Z20Helicopter_GetMethodPPKc_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, 0x19
	jz _Z20Helicopter_GetMethodPPKc_20
	mov edx, [ebp-0x1c]
_Z20Helicopter_GetMethodPPKc_10:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z20Helicopter_GetMethodPPKc_30
	mov eax, [edi+s_methods]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [edi+s_methods+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Helicopter_GetMethodPPKc_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Helicopter_Controller(gentity_s const*, int*)
_Z21Helicopter_ControllerPK9gentity_sPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0x8]
	mov edi, [esi+0x164]
	mov eax, [esi]
	mov [esp], eax
	call _Z17Com_GetServerDObji
	mov [ebp-0x4c], eax
	mov edx, [esi+0x58]
	mov eax, [esi+0x54]
	mov [ebp-0x24], eax
	xor ebx, ebx
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], edx
	mov edx, [edi+0x318]
	test edx, edx
	js _Z21Helicopter_ControllerPK9gentity_sPi_10
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
_Z21Helicopter_ControllerPK9gentity_sPi_10:
	mov eax, [esi+0x68]
	mov [ebp-0x30], ebx
	mov [ebp-0x2c], eax
	mov [ebp-0x28], ebx
	mov eax, [esi+0x64]
	mov [ebp-0x3c], eax
	mov [ebp-0x38], ebx
	mov [ebp-0x34], ebx
	mov edx, [edi+0x31c]
	test edx, edx
	js _Z21Helicopter_ControllerPK9gentity_sPi_20
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
_Z21Helicopter_ControllerPK9gentity_sPi_20:
	mov edx, [edi+0x324]
	test edx, edx
	js _Z21Helicopter_ControllerPK9gentity_sPi_30
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
_Z21Helicopter_ControllerPK9gentity_sPi_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Helicopter_RegisterDvars()
_Z24Helicopter_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_maximum_horizont
	mov dword [esp+0x10], 0x80
	mov ebx, 0x7f7fffff
	mov [esp+0xc], ebx
	mov edi, 0x3c23d70a
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43160000
	mov dword [esp], _cstring_vehhelicoptermax
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxSpeed], eax
	mov dword [esp+0x14], _cstring_maximum_vertical
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42820000
	mov dword [esp], _cstring_vehhelicoptermax1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxSpeedVertical], eax
	mov dword [esp+0x14], _cstring_maximum_horizont1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42340000
	mov dword [esp], _cstring_vehhelicoptermax2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxAccel], eax
	mov dword [esp+0x14], _cstring_maximum_vertical1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_vehhelicoptermax3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxAccelVertical], eax
	mov dword [esp+0x14], _cstring_maximum_yaw_spee
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42f00000
	mov dword [esp], _cstring_vehhelicoptermax4
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxYawRate], eax
	mov dword [esp+0x14], _cstring_maximum_yaw_acce
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_vehhelicoptermax5
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxYawAccel], eax
	mov dword [esp+0x14], _cstring_maximum_pitch_of
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov esi, 0x420c0000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptermax6
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxPitch], eax
	mov dword [esp+0x14], _cstring_maximum_roll_of_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptermax7
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterMaxRoll], eax
	mov dword [esp+0x14], _cstring_how_far_ahead_in
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicopterloo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterLookaheadTime], eax
	mov dword [esp+0x14], _cstring_the_speed_below_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43c80000
	mov dword [esp], _cstring_vehhelicopterhov
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterHoverSpeedThreshold], eax
	mov dword [esp+0x14], _cstring_deadzone_for_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterrig
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterRightStickDeadzone], eax
	mov dword [esp+0x14], _cstring_deadzone_so_that
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterstr
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterStrafeDeadzone], eax
	mov dword [esp+0xc], _cstring_scales_down_the_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_vehhelicoptersca
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehHelicopterScaleMovement], eax
	mov dword [esp+0xc], _cstring_player_helicopte
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehhelicoptersof
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehHelicopterSoftCollisions], eax
	mov dword [esp+0x14], _cstring_set_the_decelera
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_vehhelicopterdec
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterDecelerationFwd], eax
	mov dword [esp+0x14], _cstring_set_the_sidetosi
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicopterdec1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterDecelerationSide], eax
	mov dword [esp+0xc], _cstring_invert_the_altit
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehhelicopterinv
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehHelicopterInvertUpDown], eax
	mov dword [esp+0x14], _cstring_the_yaw_speed_cr
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_vehhelicopteryaw
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterYawOnLeftStick], eax
	mov dword [esp+0x14], _cstring_the_rate_at_whic
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f99999a
	mov dword [esp], _cstring_vehhelicoptertil
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltSpeed], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov edi, 0x40000000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_vehhelicoptertil1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromAcceleration], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_vehhelicoptertil2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromDeceleration], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicoptertil3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromVelocity], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptertil4
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromControllerAxes], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ro
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptertil5
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromFwdAndYaw], eax
	mov dword [esp+0x14], _cstring_the_forward_spee
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicoptertil6
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt], eax
	mov dword [esp+0x14], _cstring_specifies_how_je
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov esi, 0x38d1b717
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterjit
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterJitterJerkyness], eax
	mov dword [esp+0xc], _cstring_if_set_the_turre
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_vehhelicopterhea
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehHelicopterHeadSwayDontSwayTheTurret], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ro1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_vehhelicoptertil7
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehHelicopterTiltMomentum], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of g_scr_helicopter:
SECTION .data


;Initialized constant data of g_scr_helicopter:
SECTION .rdata
s_methods: dd _cstring_freehelicopter, _Z23CMD_Heli_FreeHelicopter12scr_entref_t, 0x0, _cstring_setspeed, _Z16CMD_VEH_SetSpeed12scr_entref_t, 0x0, _cstring_getspeed, _Z16CMD_VEH_GetSpeed12scr_entref_t, 0x0, _cstring_getspeedmph, _Z19CMD_VEH_GetSpeedMPH12scr_entref_t, 0x0, _cstring_resumespeed, _Z19CMD_VEH_ResumeSpeed12scr_entref_t, 0x0, _cstring_setyawspeed, _Z19CMD_VEH_SetYawSpeed12scr_entref_t, 0x0, _cstring_setmaxpitchroll, _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t, 0x0, _cstring_setturningabilit, _Z25CMD_VEH_SetTurningAbility12scr_entref_t, 0x0, _cstring_setairresistance, _Z23CMD_VEH_SetAirResitance12scr_entref_t, 0x0, _cstring_sethoverparams, _Z22CMD_VEH_SetHoverParams12scr_entref_t, 0x0, _cstring_setneargoalnotif, _Z26CMD_VEH_NearGoalNotifyDist12scr_entref_t, 0x0, _cstring_setvehgoalpos, _Z18CMD_VEH_SetGoalPos12scr_entref_t, 0x0, _cstring_setgoalyaw, _Z18CMD_VEH_SetGoalYaw12scr_entref_t, 0x0, _cstring_cleargoalyaw, _Z20CMD_VEH_ClearGoalYaw12scr_entref_t, 0x0, _cstring_settargetyaw, _Z20CMD_VEH_SetTargetYaw12scr_entref_t, 0x0, _cstring_cleartargetyaw, _Z22CMD_VEH_ClearTargetYaw12scr_entref_t, 0x0, _cstring_setlookatent, _Z20CMD_VEH_SetLookAtEnt12scr_entref_t, 0x0, _cstring_clearlookatent, _Z22CMD_VEH_ClearLookAtEnt12scr_entref_t, 0x0, _cstring_setvehweapon, _Z17CMD_VEH_SetWeapon12scr_entref_t, 0x0, _cstring_fireweapon, _Z18CMD_VEH_FireWeapon12scr_entref_t, 0x0, _cstring_setturrettargetv, _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t, 0x0, _cstring_setturrettargete, _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t, 0x0, _cstring_clearturrettarge, _Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t, 0x0, _cstring_setvehicleteam, _Z22CMD_VEH_SetVehicleTeam12scr_entref_t, 0x0, _cstring_setdamagestage, _Z23CMD_Heli_SetDamageStage12scr_entref_t, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_scr_helicopter:
SECTION .bss
vehHelicopterDecelerationFwd: resb 0x4
vehHelicopterDecelerationSide: resb 0x4
vehHelicopterHoverSpeedThreshold: resb 0x4
vehHelicopterJitterJerkyness: resb 0x4
vehHelicopterLookaheadTime: resb 0x4
vehHelicopterMaxAccel: resb 0x4
vehHelicopterMaxAccelVertical: resb 0x4
vehHelicopterMaxPitch: resb 0x4
vehHelicopterMaxRoll: resb 0x4
vehHelicopterMaxSpeed: resb 0x10
vehHelicopterMaxSpeedVertical: resb 0x4
vehHelicopterMaxYawAccel: resb 0x4
vehHelicopterMaxYawRate: resb 0x4
vehHelicopterRightStickDeadzone: resb 0x4
vehHelicopterScaleMovement: resb 0x4
vehHelicopterSoftCollisions: resb 0x8
vehHelicopterStrafeDeadzone: resb 0x4
vehHelicopterTiltFromAcceleration: resb 0x4
vehHelicopterTiltFromControllerAxes: resb 0x4
vehHelicopterTiltFromDeceleration: resb 0x4
vehHelicopterTiltFromFwdAndYaw: resb 0x4
vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt: resb 0x4
vehHelicopterTiltFromVelocity: resb 0x4
vehHelicopterTiltMomentum: resb 0x4
vehHelicopterTiltSpeed: resb 0x4
vehHelicopterYawOnLeftStick: resb 0x4
vehHelicopterHeadSwayDontSwayTheTurret: resb 0x4
vehHelicopterInvertUpDown: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_maximum_horizont:		db "Maximum horizontal speed of the player helicopter (in MPH)",0
_cstring_vehhelicoptermax:		db "vehHelicopterMaxSpeed",0
_cstring_maximum_vertical:		db "Maximum vertical speed of the player helicopter (in MPH)",0
_cstring_vehhelicoptermax1:		db "vehHelicopterMaxSpeedVertical",0
_cstring_maximum_horizont1:		db "Maximum horizontal acceleration of the player helicopter (in MPH per second)",0
_cstring_vehhelicoptermax2:		db "vehHelicopterMaxAccel",0
_cstring_maximum_vertical1:		db "Maximum vertical acceleration of the player helicopter (in MPH per second)",0
_cstring_vehhelicoptermax3:		db "vehHelicopterMaxAccelVertical",0
_cstring_maximum_yaw_spee:		db "Maximum yaw speed of the player helicopter",0
_cstring_vehhelicoptermax4:		db "vehHelicopterMaxYawRate",0
_cstring_maximum_yaw_acce:		db "Maximum yaw acceleration of the player helicopter",0
_cstring_vehhelicoptermax5:		db "vehHelicopterMaxYawAccel",0
_cstring_maximum_pitch_of:		db "Maximum pitch of the player helicopter",0
_cstring_vehhelicoptermax6:		db "vehHelicopterMaxPitch",0
_cstring_maximum_roll_of_:		db "Maximum roll of the player helicopter",0
_cstring_vehhelicoptermax7:		db "vehHelicopterMaxRoll",0
_cstring_how_far_ahead_in:		db "How far ahead (in seconds) the player helicopter looks ahead, to avoid hard collisions.  (Like driving down the highway, you should keep 2 seconds distance between you and the vehicle in front of you)",0
_cstring_vehhelicopterloo:		db "vehHelicopterLookaheadTime",0
_cstring_the_speed_below_:		db "The speed below which the player helicopter begins to jitter the tilt, for hovering",0
_cstring_vehhelicopterhov:		db "vehHelicopterHoverSpeedThreshold",0
_cstring_deadzone_for_the:		db "Dead-zone for the axes of the right thumbstick.  This helps to better control the two axes separately.",0
_cstring_vehhelicopterrig:		db "vehHelicopterRightStickDeadzone",0
_cstring_deadzone_so_that:		db "Dead-zone so that you can fly straight forward easily without accidentally strafing (and thus rolling).",0
_cstring_vehhelicopterstr:		db "vehHelicopterStrafeDeadzone",0
_cstring_scales_down_the_:		db "Scales down the smaller of the left stick axes.",0
_cstring_vehhelicoptersca:		db "vehHelicopterScaleMovement",0
_cstring_player_helicopte:		db "Player helicopters have soft collisions (slow down before they collide).",0
_cstring_vehhelicoptersof:		db "vehHelicopterSoftCollisions",0
_cstring_set_the_decelera:		db "Set the deceleration of the player helicopter (as a fraction of acceleration) in the direction the chopper is facing.  So 1.0 makes it equal to the acceleration.",0
_cstring_vehhelicopterdec:		db "vehHelicopterDecelerationFwd",0
_cstring_set_the_sidetosi:		db "Set the side-to-side deceleration of the player helicopter (as a fraction of acceleration).  So 1.0 makes it equal to the acceleration.",0
_cstring_vehhelicopterdec1:		db "vehHelicopterDecelerationSide",0
_cstring_invert_the_altit:		db "Invert the altitude control on the player helicopter.",0
_cstring_vehhelicopterinv:		db "vehHelicopterInvertUpDown",0
_cstring_the_yaw_speed_cr:		db "The yaw speed created by the left stick when pushing the stick diagonally (e.g., moving forward and strafing slightly).",0
_cstring_vehhelicopteryaw:		db "vehHelicopterYawOnLeftStick",0
_cstring_the_rate_at_whic:		db "The rate at which the player helicopter",27h,"s tilt responds",0
_cstring_vehhelicoptertil:		db "vehHelicopterTiltSpeed",0
_cstring_the_amount_of_ti:		db "The amount of tilt caused by acceleration",0
_cstring_vehhelicoptertil1:		db "vehHelicopterTiltFromAcceleration",0
_cstring_the_amount_of_ti1:		db "The amount of tilt caused by deceleration",0
_cstring_vehhelicoptertil2:		db "vehHelicopterTiltFromDeceleration",0
_cstring_the_amount_of_ti2:		db "The amount of tilt caused by the current velocity",0
_cstring_vehhelicoptertil3:		db "vehHelicopterTiltFromVelocity",0
_cstring_the_amount_of_ti3:		db "The amount of tilt caused by the desired velocity (i.e., the amount of controller stick deflection)",0
_cstring_vehhelicoptertil4:		db "vehHelicopterTiltFromControllerAxes",0
_cstring_the_amount_of_ro:		db "The amount of roll caused by yawing while moving forward.",0
_cstring_vehhelicoptertil5:		db "vehHelicopterTiltFromFwdAndYaw",0
_cstring_the_forward_spee:		db "The forward speed (as a fraction of top speed) at which the tilt due to yaw reaches is maximum value.",0
_cstring_vehhelicoptertil6:		db "vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt",0
_cstring_specifies_how_je:		db "Specifies how jerky the tilt jitter should be",0
_cstring_vehhelicopterjit:		db "vehHelicopterJitterJerkyness",0
_cstring_if_set_the_turre:		db "If set, the turret will not fire through the crosshairs, but straight ahead of the vehicle, when the player is not freelooking.",0
_cstring_vehhelicopterhea:		db "vehHelicopterHeadSwayDontSwayTheTurret",0
_cstring_the_amount_of_ro1:		db "The amount of rotational momentum the helicopter has with regards to tilting.",0
_cstring_vehhelicoptertil7:		db "vehHelicopterTiltMomentum",0
_cstring_freehelicopter:		db "freehelicopter",0
_cstring_setspeed:		db "setspeed",0
_cstring_getspeed:		db "getspeed",0
_cstring_getspeedmph:		db "getspeedmph",0
_cstring_resumespeed:		db "resumespeed",0
_cstring_setyawspeed:		db "setyawspeed",0
_cstring_setmaxpitchroll:		db "setmaxpitchroll",0
_cstring_setturningabilit:		db "setturningability",0
_cstring_setairresistance:		db "setairresistance",0
_cstring_sethoverparams:		db "sethoverparams",0
_cstring_setneargoalnotif:		db "setneargoalnotifydist",0
_cstring_setvehgoalpos:		db "setvehgoalpos",0
_cstring_setgoalyaw:		db "setgoalyaw",0
_cstring_cleargoalyaw:		db "cleargoalyaw",0
_cstring_settargetyaw:		db "settargetyaw",0
_cstring_cleartargetyaw:		db "cleartargetyaw",0
_cstring_setlookatent:		db "setlookatent",0
_cstring_clearlookatent:		db "clearlookatent",0
_cstring_setvehweapon:		db "setvehweapon",0
_cstring_fireweapon:		db "fireweapon",0
_cstring_setturrettargetv:		db "setturrettargetvec",0
_cstring_setturrettargete:		db "setturrettargetent",0
_cstring_clearturrettarge:		db "clearturrettarget",0
_cstring_setvehicleteam:		db "setvehicleteam",0
_cstring_setdamagestage:		db "setdamagestage",0



;All constant floats and doubles:
SECTION .rdata

