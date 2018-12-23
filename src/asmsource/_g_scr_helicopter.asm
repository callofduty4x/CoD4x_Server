;Imports of g_scr_helicopter:
	extern GScr_GetVehicle
	extern G_VehFreeEntity
	extern Scr_GetInt
	extern BG_GetWeaponDef
	extern VEH_JoltBody_copy
	extern Scr_Vehicle_Think
	extern level
	extern G_SetModel
	extern SpawnVehicle
	extern s_vehicleInfos
	extern VEH_InitEntity
	extern VEH_InitVehicle
	extern G_DObjGetWorldBoneIndexPos
	extern _Z15VEH_SetPositionP9gentity_sPKfS2_
	extern strcmp
	extern Com_GetServerDObj
	extern vec3_origin
	extern DObjSetLocalBoneIndex
	extern Cvar_RegisterFloat
	extern Cvar_RegisterBool
	extern CMD_VEH_SetSpeed
	extern CMD_VEH_GetSpeed
	extern CMD_VEH_GetSpeedMPH
	extern CMD_VEH_ResumeSpeed
	extern CMD_VEH_SetYawSpeed
	extern CMD_VEH_SetMaxPitchRoll
	extern CMD_VEH_SetTurningAbility
	extern CMD_VEH_SetAirResitance
	extern CMD_VEH_SetHoverParams
	extern CMD_VEH_NearGoalNotifyDist
	extern CMD_VEH_SetGoalPos
	extern CMD_VEH_SetGoalYaw
	extern CMD_VEH_ClearGoalYaw
	extern CMD_VEH_SetTargetYaw
	extern CMD_VEH_ClearTargetYaw
	extern CMD_VEH_SetLookAtEnt
	extern CMD_VEH_ClearLookAtEnt
	extern CMD_VEH_SetWeapon
	extern CMD_VEH_FireWeapon
	extern CMD_VEH_SetTurretTargetVec
	extern CMD_VEH_SetTurretTargetEnt
	extern CMD_VEH_ClearTurretTargetEnt
	extern CMD_VEH_SetVehicleTeam

;Exports of g_scr_helicopter:
	global s_methods
	global CMD_Heli_FreeHelicopter
	global CMD_Heli_SetDamageStage
	global Helicopter_Die
	global Helicopter_Pain
	global Helicopter_Think
	global G_SpawnHelicopter
	global Helicopter_GetMethod
	global Helicopter_Controller
	global Helicopter_RegisterDvars
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
CMD_Heli_FreeHelicopter:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov [ebp+0x8], eax
	leave
	jmp G_VehFreeEntity


;CMD_Heli_SetDamageStage(scr_entref_t)
CMD_Heli_SetDamageStage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GScr_GetVehicle
	mov ebx, eax
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0xd4], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Helicopter_Die(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
Helicopter_Die:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov ebx, [ebp+0x20]
	test eax, eax
	jz Helicopter_Die_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz Helicopter_Die_20
Helicopter_Die_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Helicopter_Die_20:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja Helicopter_Die_10
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
	jmp VEH_JoltBody_copy


;Helicopter_Pain(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
Helicopter_Pain:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x1c]
	test eax, eax
	jz Helicopter_Pain_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz Helicopter_Pain_20
Helicopter_Pain_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Helicopter_Pain_20:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja Helicopter_Pain_10
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
	jmp VEH_JoltBody_copy


;G_SpawnHelicopter(gentity_s*, gentity_s*, char const*, char const*)
G_SpawnHelicopter:
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
	call G_SetModel
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SpawnVehicle
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
	call VEH_InitEntity
	movsx eax, word [ebx+0x1bc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call VEH_InitVehicle
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
G_SpawnHelicopter_20:
	mov eax, [ebx+0x33c]
	test eax, eax
	js G_SpawnHelicopter_10
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_DObjGetWorldBoneIndexPos
	mov eax, [ebp-0x1c]
	mov [esi+0xc0], eax
G_SpawnHelicopter_10:
	add ebx, 0x4
	add esi, 0x4
	sub dword [ebp-0x30], 0x1
	jnz G_SpawnHelicopter_20
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


;Helicopter_Controller(gentity_s const*, int*)
Helicopter_Controller:
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
	call Com_GetServerDObj
	mov [ebp-0x4c], eax
	mov edx, [esi+0x58]
	mov eax, [esi+0x54]
	mov [ebp-0x24], eax
	xor ebx, ebx
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], edx
	mov edx, [edi+0x318]
	test edx, edx
	js Helicopter_Controller_10
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call DObjSetLocalBoneIndex
Helicopter_Controller_10:
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
	js Helicopter_Controller_20
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call DObjSetLocalBoneIndex
Helicopter_Controller_20:
	mov edx, [edi+0x324]
	test edx, edx
	js Helicopter_Controller_30
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call DObjSetLocalBoneIndex
Helicopter_Controller_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Helicopter_RegisterDvars()
Helicopter_RegisterDvars:
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
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxSpeed], eax
	mov dword [esp+0x14], _cstring_maximum_vertical
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42820000
	mov dword [esp], _cstring_vehhelicoptermax1
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxSpeedVertical], eax
	mov dword [esp+0x14], _cstring_maximum_horizont1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42340000
	mov dword [esp], _cstring_vehhelicoptermax2
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxAccel], eax
	mov dword [esp+0x14], _cstring_maximum_vertical1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x41f00000
	mov dword [esp], _cstring_vehhelicoptermax3
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxAccelVertical], eax
	mov dword [esp+0x14], _cstring_maximum_yaw_spee
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42f00000
	mov dword [esp], _cstring_vehhelicoptermax4
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxYawRate], eax
	mov dword [esp+0x14], _cstring_maximum_yaw_acce
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_vehhelicoptermax5
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxYawAccel], eax
	mov dword [esp+0x14], _cstring_maximum_pitch_of
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov esi, 0x420c0000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptermax6
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxPitch], eax
	mov dword [esp+0x14], _cstring_maximum_roll_of_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptermax7
	call Cvar_RegisterFloat
	mov [vehHelicopterMaxRoll], eax
	mov dword [esp+0x14], _cstring_how_far_ahead_in
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicopterloo
	call Cvar_RegisterFloat
	mov [vehHelicopterLookaheadTime], eax
	mov dword [esp+0x14], _cstring_the_speed_below_
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x43c80000
	mov dword [esp], _cstring_vehhelicopterhov
	call Cvar_RegisterFloat
	mov [vehHelicopterHoverSpeedThreshold], eax
	mov dword [esp+0x14], _cstring_deadzone_for_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterrig
	call Cvar_RegisterFloat
	mov [vehHelicopterRightStickDeadzone], eax
	mov dword [esp+0x14], _cstring_deadzone_so_that
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterstr
	call Cvar_RegisterFloat
	mov [vehHelicopterStrafeDeadzone], eax
	mov dword [esp+0xc], _cstring_scales_down_the_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_vehhelicoptersca
	call Cvar_RegisterBool
	mov [vehHelicopterScaleMovement], eax
	mov dword [esp+0xc], _cstring_player_helicopte
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehhelicoptersof
	call Cvar_RegisterBool
	mov [vehHelicopterSoftCollisions], eax
	mov dword [esp+0x14], _cstring_set_the_decelera
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	xor esi, esi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f000000
	mov dword [esp], _cstring_vehhelicopterdec
	call Cvar_RegisterFloat
	mov [vehHelicopterDecelerationFwd], eax
	mov dword [esp+0x14], _cstring_set_the_sidetosi
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicopterdec1
	call Cvar_RegisterFloat
	mov [vehHelicopterDecelerationSide], eax
	mov dword [esp+0xc], _cstring_invert_the_altit
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehhelicopterinv
	call Cvar_RegisterBool
	mov [vehHelicopterInvertUpDown], eax
	mov dword [esp+0x14], _cstring_the_yaw_speed_cr
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x40a00000
	mov dword [esp], _cstring_vehhelicopteryaw
	call Cvar_RegisterFloat
	mov [vehHelicopterYawOnLeftStick], eax
	mov dword [esp+0x14], _cstring_the_rate_at_whic
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3f99999a
	mov dword [esp], _cstring_vehhelicoptertil
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltSpeed], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov edi, 0x40000000
	mov [esp+0x4], edi
	mov dword [esp], _cstring_vehhelicoptertil1
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromAcceleration], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_vehhelicoptertil2
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromDeceleration], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicoptertil3
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromVelocity], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ti3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptertil4
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromControllerAxes], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ro
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], esi
	mov dword [esp], _cstring_vehhelicoptertil5
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromFwdAndYaw], eax
	mov dword [esp+0x14], _cstring_the_forward_spee
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_vehhelicoptertil6
	call Cvar_RegisterFloat
	mov [vehHelicopterTiltFromFwdAndYaw_VelAtMaxTilt], eax
	mov dword [esp+0x14], _cstring_specifies_how_je
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov esi, 0x38d1b717
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3e99999a
	mov dword [esp], _cstring_vehhelicopterjit
	call Cvar_RegisterFloat
	mov [vehHelicopterJitterJerkyness], eax
	mov dword [esp+0xc], _cstring_if_set_the_turre
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_vehhelicopterhea
	call Cvar_RegisterBool
	mov [vehHelicopterHeadSwayDontSwayTheTurret], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ro1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_vehhelicoptertil7
	call Cvar_RegisterFloat
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



;All constant floats and doubles:
SECTION .rdata

