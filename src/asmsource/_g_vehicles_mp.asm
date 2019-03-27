;Imports of g_vehicles_mp:
	extern strcpy
	extern Com_Error
	extern Q_stricmp
	extern sprintf
	extern Com_LoadInfoString
	extern memset
	extern ParseConfigStringToStruct
	extern G_SoundAliasIndex
	extern Com_PrintWarning
	extern AngleNormalize360
	extern floorf
	extern G_DObjGetLocalBoneIndexMatrix
	extern SL_ConvertToString
	extern G_TryPushingEntity
	extern g_entities
	extern G_Damage
	extern BG_GetWeaponDef
	extern AnglesToAxis
	extern MatrixTranspose
	extern MatrixMultiply
	extern AxisToAngles
	extern Com_Printf
	extern entityHandlers
	extern AnglesSubtract
	extern Vec3NormalizeTo
	extern RadiusFromBounds
	extern ExtendBounds
	extern CM_AreaEntities
	extern scr_const
	extern ExpandBoundsToWidth
	extern SV_EntityContact
	extern Scr_IsSystemActive
	extern SV_DObjGetBounds
	extern Scr_AddEntity
	extern Scr_Notify
	extern DiffTrackAngle
	extern G_DebugLineWithDuration
	extern MatrixTransformVector43
	extern vec3_origin
	extern G_TraceCapsule
	extern G_DebugBox
	extern G_DObjGetWorldBoneIndexPos
	extern level
	extern G_DebugCircle
	extern colorYellow
	extern G_DebugLine
	extern G_DebugStar
	extern va
	extern colorRed
	extern G_DebugStarWithText
	extern AngleVectors
	extern VEH_CorrectAllSolid
	extern G_LevelSpawnString
	extern G_DObjUpdate
	extern G_GetWeaponIndexForName
	extern SV_LinkEntity
	extern Com_Memset
	extern BG_VehiclesGetSlotTagName
	extern SV_DObjGetBoneIndex
	extern s_flashTags
	extern G_XModelBad
	extern G_OverrideModel
	extern IsItemRegistered
	extern Scr_Error
	extern G_SetModel
	extern G_ModelName
	extern Vec2Normalize
	extern Scr_SetString
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern G_SetOrigin
	extern G_SetAngle
	extern TeleportPlayer
	extern Cvar_RegisterBool
	extern Cvar_RegisterFloat
	extern G_EntUnlink
	extern G_DObjGetWorldBoneIndexMatrix
	extern G_EntLinkToWithOffset
	extern memcpy
	extern sin
	extern G_DObjGetWorldTagMatrix
	extern Bullet_Fire
	extern G_AddEvent
	extern Com_GetServerDObj
	extern DObjSetLocalBoneIndex
	extern Com_IsLegacyXModelName
	extern SV_SetBrushModel
	extern s_wheelTags
	extern s_vehicleInfos


;Exports of g_vehicles_mp:
	global s_vehicleFields
	global s_vehicleTypeNames
	global VEH_Strcpy
	global VEH_ParseSpecificField
	global G_LoadVehicle
	global VEH_GetVehicleInfoFromName
	global VEH_PlayerRotation
	global VEH_GetWheelOrigin
	global VEH_PushEntity
	global VEH_TouchEntities
	global VEH_GroundPlant
	global InitFirstThink
	global _Z13VEH_SlideMoveP9gentity_sif
	global VEH_StepSlideMove
	global IntegratePosAndRot
	global G_VehUsable
	global SpawnVehicle
	global VEH_JoltBody_copy
	global G_VehiclesInit
	global G_VehFreeEntity
	global _Z15VEH_SetPositionP9gentity_sPKfS2_
	global G_VehUnlinkPlayer
	global G_VehRegisterDvars
	global VEH_GetVehicleInfo
	global G_VehEntHandler_Die
	global G_VehEntHandler_Use
	global G_VehImmuneToDamage
	global G_VehPlayerRideSlot
	global G_VehEntHandler_Pain
	global G_VehEntHandler_Think
	global G_VehEntHandler_Touch
	global G_VehEntHandler_Controller
	global G_VehiclesSetupSpawnedEnts
	global s_numVehicleInfos
	global s_vehicles
	global vehDebugServer
	global vehTestHorsepower
	global vehTestMaxMPH
	global vehTestWeight
	global vehTextureScrollScale


SECTION .text


;VEH_Strcpy(unsigned char*, char const*)
VEH_Strcpy:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strcpy
	leave
	ret


;VEH_ParseSpecificField(unsigned char*, char const*, int)
VEH_ParseSpecificField:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0xc
	jz VEH_ParseSpecificField_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_vehicle_fiel
	mov dword [esp], 0x2
	call Com_Error
	xor eax, eax
VEH_ParseSpecificField_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_ParseSpecificField_10:
	xor esi, esi
	mov ebx, s_vehicleTypeNames
VEH_ParseSpecificField_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz VEH_ParseSpecificField_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x6
	jnz VEH_ParseSpecificField_30
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_unknown_vehicle_
	mov dword [esp], 0x2
	call Com_Error
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_ParseSpecificField_20:
	mov eax, [ebp+0x8]
	mov [eax+0x40], si
	mov eax, 0x1
	jmp VEH_ParseSpecificField_40
	nop


;G_LoadVehicle(char const*)
G_LoadVehicle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x207c
	mov esi, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicless
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call sprintf
	lea eax, [ebp-0x2058]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_vehiclefile
	mov dword [esp+0x4], _cstring_vehicle_file
	mov [esp], ebx
	call Com_LoadInfoString
	mov ebx, eax
	movsx eax, word [s_numVehicleInfos]
	mov [ebp-0x205c], eax
	mov edx, eax
	lea eax, [eax+eax*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea edi, [eax+s_vehicleInfos]
	mov dword [esp+0x8], 0x270
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov [esp+0x4], esi
	mov [esp], edi
	call strcpy
	mov dword [esp+0x18], VEH_Strcpy
	mov dword [esp+0x14], VEH_ParseSpecificField
	mov dword [esp+0x10], 0xd
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], s_vehicleFields
	mov [esp], edi
	call ParseConfigStringToStruct
	test eax, eax
	jz G_LoadVehicle_10
	movss xmm0, dword [_float_17_60000038]
	movss xmm1, dword [edi+0x70]
	mulss xmm1, xmm0
	movss [edi+0x70], xmm1
	movss xmm1, dword [edi+0x88]
	mulss xmm1, xmm0
	movss [edi+0x88], xmm1
	movss xmm1, dword [edi+0x6c]
	mulss xmm1, xmm0
	movss [edi+0x6c], xmm1
	mulss xmm0, [edi+0x26c]
	movss [edi+0x26c], xmm0
	mov ebx, edi
	mov esi, edi
	mov dword [ebp-0x2060], 0x0
	lea edi, [edi+0xe4]
	jmp G_LoadVehicle_20
G_LoadVehicle_40:
	mov byte [ebx+0x264], 0x0
	add dword [ebp-0x2060], 0x1
	add edi, 0x40
	add esi, 0x40
	add ebx, 0x1
	cmp dword [ebp-0x2060], 0x6
	jz G_LoadVehicle_30
G_LoadVehicle_20:
	cmp byte [esi+0xe4], 0x0
	jz G_LoadVehicle_40
	mov [esp], edi
	call G_SoundAliasIndex
	mov [ebx+0x264], al
	add dword [ebp-0x2060], 0x1
	add edi, 0x40
	add esi, 0x40
	add ebx, 0x1
	cmp dword [ebp-0x2060], 0x6
	jnz G_LoadVehicle_20
G_LoadVehicle_30:
	add word [s_numVehicleInfos], 0x1
	mov eax, [ebp-0x205c]
	add esp, 0x207c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_LoadVehicle_10:
	mov dword [ebp-0x205c], 0xffffffff
	mov eax, [ebp-0x205c]
	add esp, 0x207c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;VEH_GetVehicleInfoFromName(char const*)
VEH_GetVehicleInfoFromName:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, eax
	test eax, eax
	jnz VEH_GetVehicleInfoFromName_10
VEH_GetVehicleInfoFromName_20:
	mov ebx, 0xffffffff
VEH_GetVehicleInfoFromName_40:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
VEH_GetVehicleInfoFromName_10:
	cmp byte [eax], 0x0
	jz VEH_GetVehicleInfoFromName_20
	cmp word [s_numVehicleInfos], 0x0
	jg VEH_GetVehicleInfoFromName_30
VEH_GetVehicleInfoFromName_80:
	mov eax, esi
	call G_LoadVehicle
	mov ebx, eax
	test eax, eax
	jns VEH_GetVehicleInfoFromName_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0xf
	call Com_PrintWarning
	cmp word [s_numVehicleInfos], 0x0
	jle VEH_GetVehicleInfoFromName_50
	xor ebx, ebx
	mov esi, s_vehicleInfos
VEH_GetVehicleInfoFromName_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_defaultvehicle_m
	call Q_stricmp
	test eax, eax
	jz VEH_GetVehicleInfoFromName_40
	add ebx, 0x1
	add esi, 0x270
	movsx eax, word [s_numVehicleInfos]
	cmp ebx, eax
	jl VEH_GetVehicleInfoFromName_60
VEH_GetVehicleInfoFromName_50:
	mov eax, _cstring_defaultvehicle_m
	call G_LoadVehicle
	mov ebx, eax
	test eax, eax
	jns VEH_GetVehicleInfoFromName_40
	mov dword [esp+0x4], _cstring_cannot_find_vehi
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, 0xffffffff
	jmp VEH_GetVehicleInfoFromName_40
VEH_GetVehicleInfoFromName_30:
	xor ebx, ebx
VEH_GetVehicleInfoFromName_70:
	lea eax, [ebx+ebx*4]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x4
	add eax, s_vehicleInfos
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz VEH_GetVehicleInfoFromName_40
	add ebx, 0x1
	movsx eax, word [s_numVehicleInfos]
	cmp ebx, eax
	jl VEH_GetVehicleInfoFromName_70
	jmp VEH_GetVehicleInfoFromName_80
	add [eax], al


;VEH_PlayerRotation(gentity_s*, vehicle_physic_t*)
VEH_PlayerRotation:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	cvtsi2ss xmm0, dword [eax+0x2f9c]
	mulss xmm0, [_float_0_00549316]
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [_float_90_00000000]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x1c]
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call AngleNormalize360
	fstp dword [ebp-0xc]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0xc]
	mulss xmm1, [_float_0_00277778]
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [ebp-0x10]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0x10]
	mulss xmm1, [_float_360_00000000]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	seta cl
	lea eax, [ecx+ecx-0x1]
	mov ecx, eax
	andps xmm1, [_data16_7fffffff]
	ucomiss xmm1, [_float_20_00000000]
	jb VEH_PlayerRotation_10
	movsx edx, al
	mov eax, edx
	shl eax, 0x7
	sub eax, edx
	movsx eax, al
	leave
	ret
VEH_PlayerRotation_10:
	ucomiss xmm1, [_float_0_01000000]
	jb VEH_PlayerRotation_20
VEH_PlayerRotation_30:
	divss xmm1, dword [_float_20_00000000]
	mulss xmm1, [_float_127_00000000]
	cvttss2si eax, xmm1
	mul cl
	movsx eax, al
	leave
	ret
VEH_PlayerRotation_20:
	jp VEH_PlayerRotation_30
	xor eax, eax
	leave
	ret
	nop


;VEH_GetWheelOrigin(gentity_s*, int, float*)
VEH_GetWheelOrigin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], eax
	mov ebx, edx
	mov esi, ecx
	mov edi, [eax+0x164]
	lea eax, [edi+0xc0]
	mov [ebp-0x1c], eax
	mov eax, [edi+edx*4+0x33c]
	test eax, eax
	js VEH_GetWheelOrigin_10
VEH_GetWheelOrigin_50:
	mov eax, [edi+ebx*4+0x33c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call G_DObjGetLocalBoneIndexMatrix
	lea edx, [eax+0x10]
	movss xmm4, dword [eax+0x10]
	movss [esi], xmm4
	lea ecx, [esi+0x4]
	movss xmm3, dword [edx+0x4]
	movss [esi+0x4], xmm3
	lea eax, [esi+0x8]
	movss xmm1, dword [edx+0x8]
	movss [esi+0x8], xmm1
	test byte [edi+0x1c0], 0x1
	jz VEH_GetWheelOrigin_20
	mov edx, [ebp-0x1c]
	movss xmm0, dword [edx+0x6c]
	movaps xmm2, xmm4
	mulss xmm2, xmm4
	mulss xmm3, xmm3
	addss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	ucomiss xmm2, xmm0
	ja VEH_GetWheelOrigin_30
VEH_GetWheelOrigin_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_GetWheelOrigin_30:
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb VEH_GetWheelOrigin_40
	movss xmm1, dword [_float_1_00000000]
VEH_GetWheelOrigin_60:
	mulss xmm4, xmm1
	movss [esi], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov edx, [ebp-0x1c]
	movss xmm0, dword [edx+0x6c]
	subss xmm0, [_float_2_00000000]
	movaps xmm1, xmm0
	mulss xmm1, [esi]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	mulss xmm0, [eax]
	movss [eax], xmm0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_GetWheelOrigin_10:
	mov eax, [edx*4+s_wheelTags]
	movzx eax, word [eax]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x20], eax
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_script_vehicle_s
	mov dword [esp], 0x2
	call Com_Error
	jmp VEH_GetWheelOrigin_50
VEH_GetWheelOrigin_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp VEH_GetWheelOrigin_60
	nop


;VEH_PushEntity(gentity_s*, gentity_s*, float, float*, float*, float*)
VEH_PushEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov esi, eax
	mov edi, edx
	movss [ebp-0x11c], xmm0
	mov [ebp-0x120], ecx
	mov ebx, [ebp+0x8]
	mov eax, [edx+0x218]
	test eax, eax
	jz VEH_PushEntity_10
VEH_PushEntity_30:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_PushEntity_10:
	movss xmm0, dword [ebx]
	lea eax, [ebx+0x4]
	mov [ebp-0x118], eax
	movss xmm1, dword [ebx+0x4]
	lea edx, [ebx+0x8]
	mov [ebp-0x114], edx
	movss xmm2, dword [ebx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_00100000]
	jae VEH_PushEntity_20
	jp VEH_PushEntity_20
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm1, dword [_float_0_00100000]
	ucomiss xmm1, xmm0
	ja VEH_PushEntity_30
VEH_PushEntity_20:
	mov eax, [edi+0x7c]
	cmp eax, [esi]
	jz VEH_PushEntity_40
VEH_PushEntity_120:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call G_TryPushingEntity
	test eax, eax
	jnz VEH_PushEntity_50
	cmp byte [edi+0x16b], 0x0
	jz VEH_PushEntity_30
	mov eax, [esi+0x164]
	mov edx, [eax+0x2f4]
	cmp edx, 0x3ff
	mov eax, 0x3fe
	cmovz edx, eax
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz VEH_PushEntity_60
VEH_PushEntity_130:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xf423f
VEH_PushEntity_110:
	lea eax, [edi+0x13c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x120]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call G_Damage
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_PushEntity_50:
	movss xmm0, dword [ebx]
	mov eax, [ebp-0x118]
	movss xmm1, dword [eax]
	mov edx, [ebp-0x114]
	movss xmm2, dword [edx]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	divss xmm0, dword [ebp-0x11c]
	mulss xmm0, [_float_0_05681818]
	cmp dword [edi+0x4], 0x1
	jnz VEH_PushEntity_30
	mov eax, [edi+0x7c]
	cmp eax, [esi]
	jz VEH_PushEntity_30
	ucomiss xmm0, [_float_10_00000000]
	jp VEH_PushEntity_70
	jb VEH_PushEntity_30
VEH_PushEntity_70:
	ucomiss xmm0, [_float_50_00000000]
	jp VEH_PushEntity_80
	jb VEH_PushEntity_90
VEH_PushEntity_80:
	mov dword [ebp-0xfc], 0x64
VEH_PushEntity_140:
	mov eax, [esi+0x164]
	mov edx, [eax+0x2f4]
	cmp edx, 0x3ff
	mov eax, 0x3fe
	cmovz edx, eax
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz VEH_PushEntity_100
VEH_PushEntity_150:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0xfc]
	mov [esp+0x14], eax
	jmp VEH_PushEntity_110
VEH_PushEntity_40:
	cmp dword [edi+0x4], 0x4
	jnz VEH_PushEntity_120
	mov eax, [edi+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x5a4], 0x1
	jnz VEH_PushEntity_120
	mov esi, [esi+0x164]
	mov [ebp-0x124], esi
	mov edx, esi
	add edx, 0xc0
	mov [ebp-0x10c], edx
	lea eax, [edi+0x13c]
	mov [ebp-0x110], eax
	mov eax, esi
	add eax, 0xcc
	movss xmm0, dword [edi+0x13c]
	movss [ebp-0x100], xmm0
	subss xmm0, [esi+0xcc]
	movss [ebp-0x100], xmm0
	mov edx, [ebp-0x110]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x104], xmm0
	subss xmm0, [eax+0x4]
	movss [ebp-0x104], xmm0
	movss xmm3, dword [edx+0x8]
	movss [ebp-0x108], xmm3
	subss xmm3, [eax+0x8]
	movss [ebp-0x108], xmm3
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, esi
	add eax, 0xd8
	mov [esp], eax
	call AnglesToAxis
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x124]
	add eax, 0xe4
	mov [esp], eax
	call AnglesToAxis
	lea esi, [ebp-0x84]
	mov [esp+0x4], esi
	mov [esp], ebx
	call MatrixTranspose
	lea edx, [ebp-0xa8]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], esi
	call MatrixMultiply
	movss xmm2, dword [ebp-0x100]
	mulss xmm2, [ebp-0xa8]
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, [ebp-0x9c]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x108]
	mulss xmm0, [ebp-0x90]
	addss xmm2, xmm0
	movss xmm1, dword [ebp-0x100]
	mulss xmm1, [ebp-0xa4]
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x108]
	mulss xmm0, [ebp-0x8c]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x100]
	mulss xmm0, [ebp-0xa0]
	movss xmm3, dword [ebp-0x104]
	mulss xmm3, [ebp-0x94]
	addss xmm0, xmm3
	movss xmm3, dword [ebp-0x108]
	mulss xmm3, [ebp-0x88]
	addss xmm0, xmm3
	mov eax, [ebp-0x124]
	addss xmm2, [eax+0xc0]
	mov edx, [ebp-0x10c]
	addss xmm1, [edx+0x4]
	addss xmm0, [edx+0x8]
	movss [edi+0x13c], xmm2
	mov eax, [ebp-0x110]
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	lea eax, [edi+0x18]
	movss [edi+0x18], xmm2
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm0
	lea ebx, [edi+0x148]
	lea edx, [ebp-0xcc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call AnglesToAxis
	lea esi, [ebp-0xf0]
	mov [esp+0x8], esi
	lea eax, [ebp-0xa8]
	mov [esp+0x4], eax
	lea edx, [ebp-0xcc]
	mov [esp], edx
	call MatrixMultiply
	mov [esp+0x4], ebx
	mov [esp], esi
	call AxisToAngles
	lea edx, [edi+0x3c]
	mov eax, [edi+0x148]
	mov [edi+0x3c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	jmp VEH_PushEntity_30
VEH_PushEntity_60:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call Com_Printf
	jmp VEH_PushEntity_130
VEH_PushEntity_90:
	subss xmm0, [_float_10_00000000]
	divss xmm0, dword [_float_40_00000000]
	mulss xmm0, [_float_95_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0xfc], eax
	jmp VEH_PushEntity_140
VEH_PushEntity_100:
	mov edx, [ebp-0xfc]
	mov [esp+0xc], edx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call Com_Printf
	jmp VEH_PushEntity_150


;VEH_TouchEntities(gentity_s*, float)
VEH_TouchEntities:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10cc
	mov eax, [ebp+0x8]
	cmp byte [eax+0xf5], 0x0
	jnz VEH_TouchEntities_10
VEH_TouchEntities_20:
	add esp, 0x10cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_TouchEntities_10:
	mov edi, [eax+0x164]
	lea edx, [edi+0xc0]
	mov [ebp-0x1094], edx
	movzx eax, byte [eax+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov eax, [eax+0xc]
	mov [ebp-0x1090], eax
	movss xmm0, dword [edi+0xc0]
	subss xmm0, [edi+0xcc]
	movss [ebp-0x24], xmm0
	lea eax, [edi+0xc4]
	mov [ebp-0x1084], eax
	movss xmm0, dword [edi+0xc4]
	subss xmm0, [edi+0xd0]
	movss [ebp-0x20], xmm0
	lea edx, [edi+0xc8]
	mov [ebp-0x1080], edx
	movss xmm0, dword [edi+0xc8]
	subss xmm0, [edi+0xd4]
	movss [ebp-0x1c], xmm0
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	lea eax, [edi+0xe4]
	mov [esp+0x4], eax
	lea eax, [edi+0xd8]
	mov [esp], eax
	call AnglesSubtract
	lea eax, [edi+0x138]
	mov [ebp-0x1098], eax
	lea edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov [esp], eax
	call Vec3NormalizeTo
	fstp st0
	mov eax, [ebp+0x8]
	add eax, 0x114
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x108
	mov [esp], eax
	call RadiusFromBounds
	fst dword [ebp-0x10ac]
	movss xmm0, dword [ebp-0x10ac]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x3c], xmm0
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm0
	fst dword [ebp-0x48]
	fst dword [ebp-0x44]
	fstp dword [ebp-0x40]
	movss xmm0, dword [edi+0xcc]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [edi+0xd0]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [edi+0xd4]
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [edi+0xcc]
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [edi+0xd0]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edi+0xd4]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	lea esi, [ebp-0x48]
	mov [esp+0x4], esi
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call ExtendBounds
	mov dword [esp+0x10], 0x2806081
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x106c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call CM_AreaEntities
	mov [ebp-0x108c], eax
	test eax, eax
	jle VEH_TouchEntities_20
	mov dword [ebp-0x1088], 0x0
	mov eax, g_entities
	mov [ebp-0x109c], eax
	add edi, 0x114
	mov [ebp-0x107c], edi
	mov ecx, [ebp-0x1088]
	jmp VEH_TouchEntities_30
VEH_TouchEntities_60:
	cmp eax, 0x6
	jz VEH_TouchEntities_40
	cmp eax, 0xe
	jz VEH_TouchEntities_40
	cmp eax, 0x4
	jz VEH_TouchEntities_40
VEH_TouchEntities_50:
	add dword [ebp-0x1088], 0x1
	mov edx, [ebp-0x1088]
	cmp [ebp-0x108c], edx
	jz VEH_TouchEntities_20
	mov ecx, edx
VEH_TouchEntities_30:
	mov edx, [ebp+ecx*4-0x106c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, [ebp-0x109c]
	lea esi, [eax+edx]
	movzx eax, byte [esi+0x16e]
	lea eax, [eax+eax*4]
	shl eax, 0x3
	add eax, entityHandlers
	mov edi, [eax+0xc]
	mov ecx, [ebp+0x8]
	mov ebx, [ecx]
	cmp [esi], ebx
	jz VEH_TouchEntities_50
	mov eax, [esi+0x4]
	cmp eax, 0x1
	jnz VEH_TouchEntities_60
VEH_TouchEntities_40:
	cmp word [esi+0x154], 0x0
	jz VEH_TouchEntities_70
	cmp eax, 0x4
	jnz VEH_TouchEntities_50
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, [ebp-0x109c]
	cmp [ebp+0x8], edx
	jz VEH_TouchEntities_50
VEH_TouchEntities_70:
	cmp ebx, [esi+0x7c]
	jz VEH_TouchEntities_80
	movzx eax, word [esi+0x170]
	mov ecx, scr_const
	cmp ax, [ecx+0x70]
	jz VEH_TouchEntities_90
	cmp ax, [ecx+0xf8]
	jz VEH_TouchEntities_100
	lea edx, [esi+0x124]
	mov eax, [esi+0x124]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	lea edx, [esi+0x130]
	mov eax, [esi+0x130]
	mov [ebp-0x60], eax
	mov eax, [edx+0x4]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x58], eax
	lea ebx, [ebp-0x54]
VEH_TouchEntities_150:
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call ExpandBoundsToWidth
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov [esp], ebx
	call SV_EntityContact
	test eax, eax
	jz VEH_TouchEntities_50
	mov dword [esp], 0x1
	call Scr_IsSystemActive
	test eax, eax
	jnz VEH_TouchEntities_110
VEH_TouchEntities_160:
	test edi, edi
	jz VEH_TouchEntities_120
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call edi
VEH_TouchEntities_120:
	mov eax, [ebp-0x1090]
	test eax, eax
	jz VEH_TouchEntities_130
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [ebp-0x1090]
VEH_TouchEntities_130:
	mov eax, [esi+0x4]
	cmp eax, 0x1
	jz VEH_TouchEntities_80
	cmp eax, 0xe
	jnz VEH_TouchEntities_50
	mov eax, [esi+0x164]
	lea edx, [eax+0xc0]
	mov ecx, [ebp-0x1098]
	movss xmm0, dword [ecx]
	movss xmm1, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm7, xmm0
	movss xmm3, dword [eax+0xc0]
	mov eax, [ebp-0x1094]
	subss xmm3, [eax]
	movss xmm4, dword [edx+0x4]
	mov ecx, [ebp-0x1084]
	subss xmm4, [ecx]
	movss xmm5, dword [edx+0x8]
	mov eax, [ebp-0x1080]
	subss xmm5, [eax]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm6, xmm0
	movss xmm2, dword [_data16_80000000]
	movaps xmm0, xmm6
	xorps xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jb VEH_TouchEntities_140
	movss xmm1, dword [_float_1_00000000]
VEH_TouchEntities_170:
	mulss xmm3, xmm1
	mulss xmm4, xmm1
	mulss xmm5, xmm1
	movaps xmm1, xmm7
	xorps xmm1, xmm2
	mulss xmm1, [_float_0_80000001]
	movaps xmm2, xmm5
	mulss xmm2, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	mov ecx, [ebp-0x1094]
	addss xmm0, [ecx+0x54]
	movss [ecx+0x54], xmm0
	mulss xmm1, xmm4
	mov eax, [ebp-0x107c]
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [_float_0_10000000]
	addss xmm2, xmm0
	addss xmm2, [eax+0x8]
	movss [eax+0x8], xmm2
	movaps xmm0, xmm7
	mulss xmm0, [_float_0_15000001]
	lea eax, [edx+0x54]
	mulss xmm3, xmm0
	addss xmm3, [edx+0x54]
	movss [edx+0x54], xmm3
	mulss xmm4, xmm0
	addss xmm4, [eax+0x4]
	movss [eax+0x4], xmm4
	mulss xmm5, xmm0
	addss xmm5, [eax+0x8]
	movss [eax+0x8], xmm5
	jmp VEH_TouchEntities_50
VEH_TouchEntities_90:
	cmp word [esi+0x168], 0x0
	jz VEH_TouchEntities_50
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	mov [esp], esi
	call SV_DObjGetBounds
	movss xmm0, dword [esi+0x13c]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [esi+0x140]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [esi+0x144]
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [esi+0x13c]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [esi+0x140]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [esi+0x144]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x58], xmm0
	jmp VEH_TouchEntities_150
VEH_TouchEntities_100:
	cmp word [esi+0x168], 0x0
	jz VEH_TouchEntities_50
	mov eax, [esi+0x164]
	lea edx, [eax+0x120]
	movss xmm0, dword [eax+0x120]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x50], xmm1
	movss xmm2, dword [edx+0x8]
	addss xmm0, xmm0
	movss [ebp-0x54], xmm0
	addss xmm1, xmm1
	movss [ebp-0x50], xmm1
	addss xmm2, xmm2
	movss [ebp-0x4c], xmm2
	movss xmm0, dword [esi+0x13c]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [esi+0x140]
	addss xmm0, xmm1
	movss [ebp-0x50], xmm0
	movss xmm0, dword [esi+0x144]
	addss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	mov eax, [esi+0x164]
	lea edx, [eax+0x12c]
	movss xmm0, dword [eax+0x12c]
	movss [ebp-0x60], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x5c], xmm1
	movss xmm2, dword [edx+0x8]
	addss xmm0, xmm0
	movss [ebp-0x60], xmm0
	addss xmm1, xmm1
	movss [ebp-0x5c], xmm1
	addss xmm2, xmm2
	movss [ebp-0x58], xmm2
	movss xmm0, dword [esi+0x13c]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [esi+0x140]
	addss xmm0, xmm1
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [esi+0x144]
	addss xmm0, xmm2
	movss [ebp-0x58], xmm0
	lea ebx, [ebp-0x54]
	jmp VEH_TouchEntities_150
VEH_TouchEntities_80:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	lea ecx, [ebp-0x6c]
	movss xmm0, dword [ebp+0xc]
	mov edx, esi
	mov eax, [ebp+0x8]
	call VEH_PushEntity
	jmp VEH_TouchEntities_50
VEH_TouchEntities_110:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	mov ebx, scr_const
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov [esp], esi
	call Scr_Notify
	mov [esp], esi
	call Scr_AddEntity
	mov dword [esp+0x8], 0x1
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Scr_Notify
	jmp VEH_TouchEntities_160
VEH_TouchEntities_140:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm6
	jmp VEH_TouchEntities_170
	nop


;VEH_GroundPlant(gentity_s*, int, float)
VEH_GroundPlant:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1cc
	mov [ebp-0x198], eax
	mov [ebp-0x19c], edx
	movss [ebp-0x1a0], xmm0
	mov eax, [eax+0x164]
	mov [ebp-0x18c], eax
	add eax, 0xc0
	mov [ebp-0x188], eax
	mov ebx, [ebp-0x18c]
	movsx edx, word [ebx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	add eax, s_vehicleInfos
	mov [ebp-0x184], eax
	cmp word [eax+0x40], 0x1
	sbb edi, edi
	and edi, 0xfffffffe
	add edi, 0x6
	mov eax, [ebx+0x1c0]
	and eax, 0x1
	cmp eax, 0x1
	sbb eax, eax
	xor ax, ax
	add eax, 0x10211
	mov [ebp-0x17c], eax
	mov edx, [ebp-0x188]
	mov ecx, [edx+0x14]
	mov edx, [edx+0x4]
	mov ebx, [ebp-0x18c]
	mov eax, [ebx+0xc0]
	mov [ebp-0xac], eax
	mov [ebp-0xa8], edx
	mov [ebp-0xa4], ecx
	add ebx, 0xd8
	mov [ebp-0x194], ebx
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AnglesToAxis
	test edi, edi
	jg VEH_GroundPlant_10
VEH_GroundPlant_160:
	movss xmm3, dword [ebp-0xf4]
	movss xmm0, dword [ebp-0xdc]
	movss [ebp-0x178], xmm0
	movaps xmm6, xmm0
	addss xmm6, xmm3
	movss xmm1, dword [ebp-0xf0]
	movss [ebp-0x174], xmm1
	movss xmm2, dword [ebp-0xd8]
	movss [ebp-0x170], xmm2
	movaps xmm5, xmm1
	addss xmm5, xmm2
	movss xmm4, dword [ebp-0xec]
	movss [ebp-0x16c], xmm4
	movss xmm7, dword [ebp-0xd4]
	movss [ebp-0x168], xmm7
	addss xmm4, xmm7
	movss xmm0, dword [ebp-0x100]
	movss [ebp-0x164], xmm0
	movss xmm1, dword [ebp-0xe8]
	movss [ebp-0x160], xmm1
	addss xmm0, xmm1
	movss xmm2, dword [ebp-0xfc]
	movss [ebp-0x15c], xmm2
	movss xmm7, dword [ebp-0xe4]
	movss [ebp-0x158], xmm7
	movaps xmm1, xmm2
	addss xmm1, xmm7
	movss xmm2, dword [ebp-0xf8]
	movss [ebp-0x154], xmm2
	movss xmm7, dword [ebp-0xe0]
	movss [ebp-0x150], xmm7
	addss xmm2, xmm7
	movss xmm7, dword [_float_0_50000000]
	mulss xmm6, xmm7
	mulss xmm0, xmm7
	subss xmm6, xmm0
	mulss xmm5, xmm7
	mulss xmm1, xmm7
	subss xmm5, xmm1
	mulss xmm4, xmm7
	mulss xmm2, xmm7
	subss xmm4, xmm2
	movaps xmm0, xmm6
	mulss xmm0, xmm6
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
	jb VEH_GroundPlant_20
	movss xmm0, dword [_float_1_00000000]
VEH_GroundPlant_270:
	mulss xmm6, xmm0
	movss [ebp-0x13c], xmm6
	mulss xmm5, xmm0
	movaps xmm6, xmm4
	mulss xmm6, xmm0
	addss xmm3, [ebp-0x164]
	movss xmm2, dword [ebp-0x174]
	addss xmm2, [ebp-0x15c]
	movss xmm4, dword [ebp-0x16c]
	addss xmm4, [ebp-0x154]
	movss xmm0, dword [ebp-0x178]
	addss xmm0, [ebp-0x160]
	movss [ebp-0x178], xmm0
	movss xmm1, dword [ebp-0x170]
	addss xmm1, [ebp-0x158]
	movss [ebp-0x170], xmm1
	movss xmm0, dword [ebp-0x168]
	addss xmm0, [ebp-0x150]
	movss [ebp-0x168], xmm0
	mulss xmm3, xmm7
	movss xmm1, dword [ebp-0x178]
	mulss xmm1, xmm7
	subss xmm3, xmm1
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x170]
	mulss xmm0, xmm7
	subss xmm2, xmm0
	mulss xmm4, xmm7
	mulss xmm7, [ebp-0x168]
	subss xmm4, xmm7
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm7, xmm7
	ucomiss xmm0, xmm7
	jb VEH_GroundPlant_30
	movss xmm0, dword [_float_1_00000000]
VEH_GroundPlant_290:
	mulss xmm3, xmm0
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	movss [ebp-0x140], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	movss xmm4, dword [ebp-0x140]
	subss xmm4, xmm0
	movss [ebp-0x140], xmm4
	mulss xmm6, xmm3
	mulss xmm1, [ebp-0x13c]
	movaps xmm7, xmm6
	subss xmm7, xmm1
	movss [ebp-0x144], xmm7
	mulss xmm2, [ebp-0x13c]
	mulss xmm5, xmm3
	subss xmm2, xmm5
	movss [ebp-0x148], xmm2
	movss xmm0, dword [ebp-0x164]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x15c]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm4, dword [ebp-0x154]
	mulss xmm4, xmm2
	addss xmm0, xmm4
	movss [ebp-0x14c], xmm0
	cmp edi, 0x1
	jle VEH_GroundPlant_40
	mov eax, [ebp-0x184]
	movss xmm3, dword [eax+0x8c]
	mov edx, 0x1
	lea eax, [ebp-0xf4]
VEH_GroundPlant_60:
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, [eax+0x4]
	movss xmm1, dword [ebp-0x148]
	mulss xmm1, [eax+0x8]
	movss xmm2, dword [ebp-0x140]
	mulss xmm2, [eax]
	addss xmm2, xmm0
	addss xmm2, xmm1
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x14c]
	ucomiss xmm0, xmm3
	jbe VEH_GroundPlant_50
	subss xmm2, xmm3
	movss [ebp-0x14c], xmm2
VEH_GroundPlant_50:
	add edx, 0x1
	add eax, 0xc
	cmp edi, edx
	jnz VEH_GroundPlant_60
	movss xmm3, dword [ebp-0x144]
	movss xmm0, dword [ebp-0x148]
	movss xmm1, dword [ebp-0x144]
VEH_GroundPlant_130:
	mulss xmm3, [ebp-0xc8]
	mulss xmm0, [ebp-0xcc]
	subss xmm3, xmm0
	movss [ebp-0xc4], xmm3
	lea edx, [ebp-0xc0]
	movss xmm2, dword [ebp-0x148]
	mulss xmm2, [ebp-0xd0]
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xc8]
	subss xmm2, xmm0
	movss [ebp-0xc0], xmm2
	lea eax, [ebp-0xbc]
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebp-0xcc]
	mulss xmm1, [ebp-0xd0]
	subss xmm0, xmm1
	movss [ebp-0xbc], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb VEH_GroundPlant_70
	movss xmm1, dword [_float_1_00000000]
VEH_GroundPlant_280:
	mulss xmm3, xmm1
	movss [ebp-0xc4], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movss xmm3, dword [ebp-0x148]
	mulss xmm3, [ebp-0xc0]
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, [ebp-0xbc]
	subss xmm3, xmm0
	movss [ebp-0xd0], xmm3
	lea edx, [ebp-0xcc]
	movss xmm2, dword [ebp-0x140]
	mulss xmm2, [ebp-0xbc]
	movss xmm0, dword [ebp-0x148]
	mulss xmm0, [ebp-0xc4]
	subss xmm2, xmm0
	movss [ebp-0xcc], xmm2
	lea eax, [ebp-0xc8]
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, [ebp-0xc4]
	movss xmm1, dword [ebp-0x140]
	mulss xmm1, [ebp-0xc0]
	subss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm7, xmm7
	ucomiss xmm0, xmm7
	jb VEH_GroundPlant_80
	movss xmm1, dword [_float_1_00000000]
VEH_GroundPlant_260:
	mulss xmm3, xmm1
	movss [ebp-0xd0], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0xd0]
	mov [esp], eax
	call AxisToAngles
	movss xmm0, dword [ebp-0x1a0]
	movss [esp+0xc], xmm0
	mov ebx, 0x40c00000
	mov [esp+0x8], ebx
	mov edx, [ebp-0x188]
	mov eax, [edx+0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp], eax
	call DiffTrackAngle
	mov eax, [ebp-0x188]
	fstp dword [eax+0x18]
	movss xmm0, dword [ebp-0x1a0]
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov edx, [ebp-0x188]
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call DiffTrackAngle
	fstp dword [ebp-0x1ac]
	movss xmm5, dword [ebp-0x1ac]
	mov ebx, [ebp-0x188]
	movss xmm2, dword [ebx+0x18]
	movss xmm4, dword [_float_60_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm4
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movss xmm3, dword [_float__60_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebx+0x18], xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm4
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm5
	andps xmm0, xmm1
	andnps xmm1, xmm4
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm5
	pxor xmm4, xmm4
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebx+0x20], xmm0
	mov eax, [ebp-0x18c]
	test byte [eax+0x1c0], 0x1
	jnz VEH_GroundPlant_90
	movss xmm0, dword [ebp-0x148]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp VEH_GroundPlant_100
	jnz VEH_GroundPlant_100
VEH_GroundPlant_90:
	mov ebx, [ebp-0x188]
	add ebx, 0x90
	mov [esp+0x8], ebx
	mov eax, [ebp-0x188]
	add eax, 0x24
	mov [esp+0x4], eax
	mov eax, [ebp-0x194]
	mov [esp], eax
	call AnglesSubtract
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x1a0]
	movaps xmm1, xmm0
	mov edx, [ebp-0x188]
	mulss xmm1, [edx+0x90]
	movss [edx+0x90], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebx+0x4], xmm1
	mulss xmm0, [ebx+0x8]
	movss [ebx+0x8], xmm0
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jz VEH_GroundPlant_110
	xor ebx, ebx
	lea edi, [ebp-0x130]
	mov ecx, edi
	lea esi, [ebp-0x100]
	xor edx, edx
VEH_GroundPlant_120:
	mov eax, [edx+esi]
	mov [edx+edi], eax
	mov eax, [edx+esi+0x4]
	mov [edx+edi+0x4], eax
	mov eax, [edx+esi+0x8]
	mov [edx+edi+0x8], eax
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ecx]
	movss xmm1, dword [ebp-0x144]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	subss xmm0, [ebp-0x14c]
	xorps xmm0, [_data16_80000000]
	divss xmm0, dword [ebp-0x148]
	movss [ecx+0x8], xmm0
	add ebx, 0x1
	add edx, 0xc
	add ecx, 0xc
	cmp ebx, 0x4
	jnz VEH_GroundPlant_120
	mov dword [ebp-0x74], 0x3f800000
	mov dword [ebp-0x70], 0x3f800000
	xor esi, esi
	mov [ebp-0x6c], esi
	mov dword [ebp-0x68], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea ebx, [ebp-0x74]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x124]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_DebugLineWithDuration
	mov dword [ebp-0x74], 0x3f800000
	mov dword [ebp-0x70], 0x3f800000
	mov [ebp-0x6c], esi
	mov dword [ebp-0x68], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	lea edx, [ebp-0x10c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x124]
	mov [esp], eax
	call G_DebugLineWithDuration
	mov dword [ebp-0x74], 0x3f800000
	mov dword [ebp-0x70], 0x3f800000
	mov [ebp-0x6c], esi
	mov dword [ebp-0x68], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	lea ebx, [ebp-0x118]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x10c]
	mov [esp], edx
	call G_DebugLineWithDuration
	mov dword [ebp-0x64], 0x3f800000
	mov dword [ebp-0x60], 0x3f800000
	mov [ebp-0x5c], esi
	mov dword [ebp-0x58], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x64]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call G_DebugLineWithDuration
VEH_GroundPlant_110:
	add esp, 0x1cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_GroundPlant_40:
	movaps xmm3, xmm7
	movaps xmm0, xmm2
	movaps xmm1, xmm7
	jmp VEH_GroundPlant_130
VEH_GroundPlant_100:
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebx]
	movss xmm1, dword [ebp-0x144]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	subss xmm0, [ebp-0x14c]
	xorps xmm0, [_data16_80000000]
	divss xmm0, dword [ebp-0x148]
	movss [ebx+0x8], xmm0
	jmp VEH_GroundPlant_90
VEH_GroundPlant_10:
	movss xmm0, dword [ebp-0x1a0]
	mulss xmm0, [_float__800_00000000]
	movss [ebp-0x190], xmm0
	mov ebx, [ebp-0x188]
	mov dword [ebp-0x180], 0x0
	lea esi, [ebp-0x100]
	mov [ebp-0x1a4], esi
	jmp VEH_GroundPlant_140
VEH_GroundPlant_200:
	mov eax, [ebp-0x34]
	mov [ebx+0xc0], eax
	mov dword [ebx+0xb0], 0x0
VEH_GroundPlant_210:
	mov eax, [ebp-0x3c]
	mov [esi], eax
	mov eax, [ebp-0x38]
	mov [esi+0x4], eax
	mov eax, [ebx+0xc0]
	mov [esi+0x8], eax
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz VEH_GroundPlant_150
VEH_GroundPlant_220:
	add dword [ebp-0x180], 0x1
	add dword [ebp-0x1a4], 0xc
	add esi, 0xc
	add ebx, 0x4
	cmp edi, [ebp-0x180]
	jz VEH_GroundPlant_160
VEH_GroundPlant_140:
	lea ecx, [ebp-0x48]
	mov edx, [ebp-0x180]
	mov eax, [ebp-0x198]
	call VEH_GetWheelOrigin
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea edx, [ebp-0xd0]
	mov [esp+0x4], edx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call MatrixTransformVector43
	mov ecx, [vehDebugServer]
	cmp byte [ecx+0xc], 0x0
	jnz VEH_GroundPlant_170
VEH_GroundPlant_240:
	mov edx, [ebp-0x3c]
	mov [ebp-0x24], edx
	mov eax, [ebp-0x38]
	mov [ebp-0x20], eax
	movss xmm1, dword [ebp-0x34]
	mov [ebp-0x30], edx
	mov [ebp-0x2c], eax
	movaps xmm0, xmm1
	addss xmm0, [_float_64_00000000]
	movss [ebp-0x1c], xmm0
	subss xmm1, [_float_256_00000000]
	movss [ebp-0x28], xmm1
	cmp byte [ecx+0xc], 0x0
	jnz VEH_GroundPlant_180
VEH_GroundPlant_230:
	mov eax, [ebp-0x17c]
	mov [esp+0x18], eax
	mov edx, [ebp-0x198]
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea eax, [ebp-0xa0]
	mov [esp], eax
	call G_TraceCapsule
	movss xmm2, dword [ebp-0xa0]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, xmm2
	ja VEH_GroundPlant_190
	mov eax, [ebp-0x30]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x34], eax
	mov dword [ebx+0xd0], 0x0
VEH_GroundPlant_250:
	mov eax, [ebp-0x19c]
	test eax, eax
	jz VEH_GroundPlant_200
	movss xmm0, dword [ebp-0x190]
	addss xmm0, [ebx+0xb0]
	movss [ebx+0xb0], xmm0
	mulss xmm0, [ebp-0x1a0]
	addss xmm0, [ebx+0xc0]
	movss [ebx+0xc0], xmm0
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	jbe VEH_GroundPlant_210
	movss [ebx+0xc0], xmm1
	mov dword [ebx+0xb0], 0x0
	mov eax, [ebp-0x3c]
	mov [esi], eax
	mov eax, [ebp-0x38]
	mov [esi+0x4], eax
	mov eax, [ebx+0xc0]
	mov [esi+0x8], eax
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jz VEH_GroundPlant_220
VEH_GroundPlant_150:
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x70], 0x3f800000
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x68], 0x3f800000
	mov dword [ebp-0x64], 0xc0000000
	mov dword [ebp-0x60], 0xc0000000
	mov dword [ebp-0x5c], 0xc0000000
	mov dword [ebp-0x130], 0x40000000
	mov dword [ebp-0x12c], 0x40000000
	mov dword [ebp-0x128], 0x40000000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1a4]
	mov [esp], edx
	call G_DebugBox
	jmp VEH_GroundPlant_220
VEH_GroundPlant_180:
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x3f800000
	mov dword [ebp-0x68], 0x3f800000
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea edx, [ebp-0x74]
	mov [esp+0x8], edx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	call G_DebugLineWithDuration
	jmp VEH_GroundPlant_230
VEH_GroundPlant_170:
	mov dword [ebp-0x74], 0x3f800000
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x68], 0x3f800000
	mov dword [ebp-0x64], 0xc0000000
	mov dword [ebp-0x60], 0xc0000000
	mov dword [ebp-0x5c], 0xc0000000
	mov dword [ebp-0x130], 0x40000000
	mov dword [ebp-0x12c], 0x40000000
	mov dword [ebp-0x128], 0x40000000
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	lea edx, [ebp-0x74]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call G_DebugBox
	mov ecx, [vehDebugServer]
	jmp VEH_GroundPlant_240
VEH_GroundPlant_190:
	movss xmm1, dword [ebp-0x24]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movss xmm1, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebp-0x34], xmm1
	mov eax, [ebp-0x90]
	and eax, 0x1f00000
	shr eax, 0x14
	mov [ebx+0xd0], eax
	jmp VEH_GroundPlant_250
VEH_GroundPlant_80:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp VEH_GroundPlant_260
VEH_GroundPlant_20:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp VEH_GroundPlant_270
VEH_GroundPlant_70:
	movss xmm4, dword [_float_1_00000000]
	divss xmm4, xmm1
	movaps xmm1, xmm4
	jmp VEH_GroundPlant_280
VEH_GroundPlant_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp VEH_GroundPlant_290
	nop


;InitFirstThink(gentity_s*)
InitFirstThink:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	mov [ebp-0x50], eax
	add eax, 0xc0
	mov [ebp-0x4c], eax
	mov ecx, [ebp-0x50]
	movsx edx, word [ecx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	cmp word [eax+s_vehicleInfos+0x40], 0x1
	jbe InitFirstThink_10
	mov ebx, ecx
InitFirstThink_40:
	mov esi, [ebp-0x4c]
	mov edi, 0x4
InitFirstThink_30:
	mov eax, [ebx+0x33c]
	test eax, eax
	js InitFirstThink_20
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call G_DObjGetWorldBoneIndexPos
	mov eax, [ebp-0x1c]
	mov [esi+0xc0], eax
InitFirstThink_20:
	add ebx, 0x4
	add esi, 0x4
	sub edi, 0x1
	jnz InitFirstThink_30
	movss xmm0, dword [_float_0_05000000]
	xor edx, edx
	mov eax, [ebp+0x8]
	call VEH_GroundPlant
	mov ebx, [ebp-0x4c]
	add ebx, 0x18
	mov [esp+0x8], ebx
	mov edx, [ebp-0x4c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z15VEH_SetPositionP9gentity_sPKfS2_
	mov edx, [ebp-0x4c]
	add edx, 0xc
	mov ecx, [ebp-0x4c]
	mov eax, [ecx]
	mov [ecx+0xc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov edx, ecx
	add edx, 0x24
	mov eax, [ecx+0x18]
	mov [ecx+0x24], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov eax, [ebp+0x8]
	mov dword [eax+0x1a0], 0x1869f
	mov dword [esp+0x4], 0x3d4ccccd
	mov [esp], eax
	call VEH_TouchEntities
	mov edx, [ebp+0x8]
	mov byte [edx+0x16e], 0x16
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [edx+0x19c], eax
	mov ecx, [ebp-0x50]
	or dword [ecx+0x1c0], 0x8
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
InitFirstThink_10:
	lea ecx, [ebp-0x30]
	xor edx, edx
	mov eax, [ebp+0x8]
	call VEH_GetWheelOrigin
	lea ecx, [ebp-0x3c]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call VEH_GetWheelOrigin
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x30]
	movss xmm1, dword [ebp-0x38]
	subss xmm1, [ebp-0x2c]
	movss xmm2, dword [ebp-0x34]
	subss xmm2, [ebp-0x28]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_0_50000000]
	mulss xmm0, [_float_1_50000000]
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	mov eax, [ebp-0x50]
	add eax, 0x120
	mov edx, [ebp-0x50]
	movss [edx+0x120], xmm1
	movss [eax+0x4], xmm1
	mov dword [eax+0x8], 0x0
	mov eax, edx
	add eax, 0x12c
	movss [edx+0x12c], xmm0
	movss [eax+0x4], xmm0
	addss xmm0, xmm0
	movss [eax+0x8], xmm0
	mov ebx, [ebp-0x50]
	jmp InitFirstThink_40
	nop


;VEH_SlideMove(gentity_s*, int, float)
_Z13VEH_SlideMoveP9gentity_sif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0xe4], eax
	mov [ebp-0xe8], edx
	movss [ebp-0xec], xmm0
	mov edx, [eax+0x164]
	lea ebx, [edx+0xc0]
	lea esi, [edx+0x138]
	mov eax, [edx+0x138]
	mov [ebp-0x30], eax
	lea eax, [edx+0x13c]
	mov [ebp-0xd0], eax
	mov eax, [edx+0x13c]
	mov [ebp-0x2c], eax
	lea eax, [edx+0x140]
	mov [ebp-0xcc], eax
	mov eax, [edx+0x140]
	mov [ebp-0x28], eax
	mov eax, [ebp-0xe8]
	test eax, eax
	jz VEH_SlideMove_10
	mulss xmm0, [_float__800_00000000]
	addss xmm0, [ebp-0x28]
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
	mov [esp], esi
	call Vec3NormalizeTo
	fstp st0
	movss xmm0, dword [ebp-0xec]
	movss [ebp-0xdc], xmm0
	mov dword [ebp-0xd8], 0x0
	lea eax, [ebx+0x6c]
	mov [ebp-0xf4], eax
	lea edx, [ebx+0x60]
	mov [ebp-0xf0], edx
	mov edx, [ebp-0xbc]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xb0]
	mov [ebp-0x100], eax
VEH_SlideMove_100:
	mulss xmm0, [esi]
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
	mov edx, [ebp-0xe4]
	mov eax, [edx+0x190]
	mov [esp+0x18], eax
	mov eax, [edx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov edx, [ebp-0xf4]
	mov [esp+0xc], edx
	mov eax, [ebp-0xf0]
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
	mov edi, [ebp-0xbc]
	test edi, edi
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
	addss xmm3, [esi]
	movss [esi], xmm3
	movss xmm0, dword [ebp-0x6c]
	mov eax, [ebp-0xd0]
	addss xmm0, [eax]
	movss [esi+0x4], xmm0
	movss xmm0, dword [ebp-0x68]
	mov edx, [ebp-0xcc]
	addss xmm0, [edx]
	movss [esi+0x8], xmm0
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
	mov edx, [ebp-0x100]
	movss [edx], xmm3
	mov eax, [ebp-0x6c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x68]
	mov [edx+0x8], eax
	add dword [ebp-0xbc], 0x1
	add edx, 0xc
	mov [ebp-0x100], edx
	mov ecx, [ebp-0xbc]
	test ecx, ecx
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
	mulss xmm0, [esi]
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
	movss xmm3, dword [esi]
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
VEH_SlideMove_570:
	mov edx, 0x1
	lea edi, [ebp-0x24]
VEH_SlideMove_150:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+eax-0x4]
	movss xmm0, dword [esi+eax-0x4]
	subss xmm0, xmm1
	movss [edi+eax-0x4], xmm0
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
VEH_SlideMove_560:
	mov edx, 0x1
	lea edi, [ebp-0x30]
VEH_SlideMove_180:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [edi+eax-0x4]
	subss xmm0, xmm1
	movss [ebp+eax-0x40], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz VEH_SlideMove_180
VEH_SlideMove_400:
	mov dword [ebp-0xd4], 0x0
	movss xmm6, dword [ebp-0x24]
	mov eax, [ebp-0xe0]
	add eax, 0x4
	mov [ebp-0xf8], eax
	mov edx, [ebp-0xe0]
	add edx, 0x8
	mov [ebp-0xfc], edx
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
	lea edi, [ecx+0x8]
	movaps xmm7, xmm2
	mulss xmm7, [ecx+0x8]
	movaps xmm5, xmm6
	mulss xmm5, [ecx]
	movaps xmm0, xmm5
	addss xmm0, xmm3
	addss xmm0, xmm7
	ucomiss xmm0, [_float_0_10000000]
	jae VEH_SlideMove_190
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae VEH_SlideMove_200
VEH_SlideMove_450:
	movaps xmm0, xmm3
	addss xmm0, xmm5
	addss xmm0, xmm7
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
	movss xmm0, dword [edi]
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
	mulss xmm4, [edi]
	movss [ebp-0x3c], xmm4
	mulss xmm2, [edi]
	movss [ebp-0x38], xmm2
VEH_SlideMove_440:
	mov eax, [ebp-0xe0]
	movss xmm7, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	movss xmm6, dword [ebp-0x24]
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm7
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
	movss [esi], xmm6
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
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
	mov edx, [ebp-0xe8]
	test edx, edx
	jnz VEH_SlideMove_280
VEH_SlideMove_410:
	xor eax, eax
	cmp dword [ebp-0xd8], 0x0
	setnz al
VEH_SlideMove_580:
	add esp, 0x11c
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
VEH_SlideMove_550:
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
	mulss xmm0, [esi]
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
	movss xmm3, dword [esi]
	movss xmm6, dword [esi+0x4]
	movss xmm0, dword [esi+0x8]
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
	movss xmm0, dword [esi]
	mulss xmm0, [ecx+0x8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
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
	mov [esi], eax
	mov eax, [ebp-0x2c]
	mov [esi+0x4], eax
	mov eax, [ebp-0x28]
	mov [esi+0x8], eax
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
	mulss xmm3, [edi]
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
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	jb VEH_SlideMove_450
	movaps xmm0, xmm6
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mulss xmm6, [ecx+0x8]
	movss [ebp-0x24], xmm6
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
	movss xmm1, dword [edi]
	mov eax, [ebp-0xc4]
	movss xmm3, dword [eax]
	movaps xmm6, xmm7
	mulss xmm6, xmm1
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	subss xmm6, xmm0
	movss xmm2, dword [ecx]
	movss xmm0, dword [edx]
	mulss xmm5, xmm2
	mulss xmm1, xmm0
	subss xmm5, xmm1
	movaps xmm4, xmm3
	mulss xmm4, xmm0
	mulss xmm7, xmm2
	subss xmm4, xmm7
	movaps xmm0, xmm6
	mulss xmm0, xmm6
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
VEH_SlideMove_590:
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [esi]
	movaps xmm1, xmm3
	mov eax, [ebp-0xd0]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov edx, [ebp-0xcc]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x24], xmm2
	mulss xmm3, xmm0
	movss [ebp-0x20], xmm3
	mulss xmm4, xmm0
	movss [ebp-0x1c], xmm4
	mov eax, [ebp-0xf8]
	movss xmm2, dword [eax]
	movss xmm1, dword [edi]
	mov edx, [ebp-0xfc]
	movss xmm4, dword [edx]
	mov eax, [ebp-0xc4]
	movss xmm5, dword [eax]
	movaps xmm7, xmm2
	mulss xmm7, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm7, xmm0
	movss xmm3, dword [ecx]
	mov edx, [ebp-0xe0]
	movss xmm0, dword [edx]
	movaps xmm6, xmm4
	mulss xmm6, xmm3
	mulss xmm1, xmm0
	subss xmm6, xmm1
	movaps xmm4, xmm5
	mulss xmm4, xmm0
	mulss xmm2, xmm3
	subss xmm4, xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb VEH_SlideMove_500
	movss xmm0, dword [_float_1_00000000]
VEH_SlideMove_600:
	movaps xmm2, xmm0
	mulss xmm2, xmm7
	movaps xmm3, xmm0
	mulss xmm3, xmm6
	mulss xmm4, xmm0
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
	movss xmm6, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	xor edx, edx
	lea eax, [ebp-0xb0]
	jmp VEH_SlideMove_510
VEH_SlideMove_520:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0xbc], edx
	jz VEH_SlideMove_190
VEH_SlideMove_510:
	cmp edx, [ebp-0xc0]
	jz VEH_SlideMove_520
	cmp [ebp-0xd4], edx
	jz VEH_SlideMove_520
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jae VEH_SlideMove_520
VEH_SlideMove_70:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x0
	mov dword [esi+0x8], 0x0
	mov eax, 0x1
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_SlideMove_320:
	movss xmm1, dword [esi]
	mulss xmm1, [s_phys+0x4]
	mov edx, [ebp-0xd0]
	movss xmm0, dword [edx]
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mov eax, [ebp-0xcc]
	mulss xmm3, [eax]
	addss xmm1, xmm3
	ucomiss xmm1, [_float_0_00000000]
	jb VEH_SlideMove_530
VEH_SlideMove_610:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
VEH_SlideMove_620:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [esi+0x4]
VEH_SlideMove_540:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz VEH_SlideMove_540
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz VEH_SlideMove_330
	jmp VEH_SlideMove_550
VEH_SlideMove_170:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_560
VEH_SlideMove_140:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_570
VEH_SlideMove_30:
	mov dword [ebx+0x80], 0x0
	mov eax, 0x1
	jmp VEH_SlideMove_580
VEH_SlideMove_490:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp VEH_SlideMove_590
VEH_SlideMove_500:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp VEH_SlideMove_600
VEH_SlideMove_530:
	jp VEH_SlideMove_610
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp VEH_SlideMove_620
	nop


;VEH_StepSlideMove(gentity_s*, int, float)
VEH_StepSlideMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov esi, eax
	mov [ebp-0x8c], edx
	movss [ebp-0x90], xmm0
	mov ebx, [eax+0x164]
	lea eax, [ebx+0xc0]
	mov [ebp-0x80], eax
	mov eax, [ebx+0xc0]
	mov [ebp-0x24], eax
	mov eax, [ebx+0xc4]
	mov [ebp-0x20], eax
	mov eax, [ebx+0xc8]
	mov [ebp-0x1c], eax
	lea eax, [ebx+0x138]
	mov [ebp-0x88], eax
	movss xmm0, dword [ebx+0x138]
	movss [ebp-0x6c], xmm0
	lea eax, [ebx+0x13c]
	mov [ebp-0x7c], eax
	movss xmm0, dword [ebx+0x13c]
	movss [ebp-0x70], xmm0
	lea eax, [ebx+0x140]
	mov [ebp-0x78], eax
	movss xmm0, dword [ebx+0x140]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x90]
	mov eax, esi
	call _Z13VEH_SlideMoveP9gentity_sif
	test eax, eax
	jnz VEH_StepSlideMove_10
VEH_StepSlideMove_40:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
VEH_StepSlideMove_10:
	mov eax, [ebp-0x24]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x38], eax
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [_float_18_00000000]
	movss [ebp-0x34], xmm0
	lea eax, [ebx+0x12c]
	mov [ebp-0x84], eax
	lea edi, [ebx+0x120]
	mov eax, [esi+0x190]
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x84]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x68]
	mov [esp], eax
	call G_TraceCapsule
	mov eax, [ebp-0x80]
	movss xmm0, dword [eax+0x80]
	ucomiss xmm0, [_float_0_00000000]
	jbe VEH_StepSlideMove_20
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jp VEH_StepSlideMove_30
	jz VEH_StepSlideMove_40
VEH_StepSlideMove_30:
	movss xmm0, dword [_float_0_69999999]
	ucomiss xmm0, [ebp-0x5c]
	ja VEH_StepSlideMove_40
VEH_StepSlideMove_20:
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_18_00000000]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	mov eax, [esi+0x190]
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, [ebp-0x84]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x68]
	mov [esp], eax
	call G_TraceCapsule
	cmp byte [ebp-0x3f], 0x0
	jnz VEH_StepSlideMove_40
	movss xmm2, dword [ebp-0x68]
	movss xmm3, dword [ebp-0x24]
	movss xmm4, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm4
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm3
	mulss xmm2, xmm0
	addss xmm3, xmm2
	movss [ebx+0xc0], xmm3
	movss [ebx+0xc4], xmm4
	movss [ebx+0xc8], xmm1
	movss xmm0, dword [ebp-0x6c]
	movss [ebx+0x138], xmm0
	movss xmm0, dword [ebp-0x70]
	movss [ebx+0x13c], xmm0
	movss xmm0, dword [ebp-0x74]
	movss [ebx+0x140], xmm0
	movss xmm0, dword [ebp-0x90]
	mov edx, [ebp-0x8c]
	mov eax, esi
	movss [ebp-0xa8], xmm1
	call _Z13VEH_SlideMoveP9gentity_sif
	mov eax, [ebx+0xc0]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0xc4]
	mov [ebp-0x38], eax
	mov eax, [ebx+0xc8]
	mov [ebp-0x34], eax
	movss xmm0, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0xa8]
	subss xmm0, xmm1
	addss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	mov eax, [esi+0x190]
	mov [esp+0x18], eax
	mov eax, [esi]
	mov [esp+0x14], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0x84]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov eax, [ebp-0x80]
	mov [esp+0x4], eax
	lea eax, [ebp-0x68]
	mov [esp], eax
	call G_TraceCapsule
	cmp byte [ebp-0x3f], 0x0
	jnz VEH_StepSlideMove_50
	movss xmm2, dword [ebp-0x68]
	movss xmm1, dword [ebx+0xc0]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0xc0], xmm1
	movss xmm1, dword [ebx+0xc4]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0xc4], xmm1
	movss xmm1, dword [ebx+0xc8]
	movss xmm0, dword [ebp-0x34]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ebx+0xc8], xmm1
VEH_StepSlideMove_50:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jbe VEH_StepSlideMove_40
	movss xmm3, dword [ebp-0x5c]
	ucomiss xmm3, [_float_0_69999999]
	jb VEH_StepSlideMove_60
	movss xmm4, dword [ebx+0x138]
	movss xmm5, dword [ebx+0x13c]
	movss xmm0, dword [ebx+0x140]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	addss xmm1, xmm2
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jb VEH_StepSlideMove_60
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ebp-0x64]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x60]
	subss xmm0, xmm1
	movss [ebx+0x140], xmm0
	mulss xmm4, [ebp-0x5c]
	movss [ebx+0x138], xmm4
	mulss xmm5, [ebp-0x5c]
	movss [ebx+0x13c], xmm5
	jmp VEH_StepSlideMove_40
VEH_StepSlideMove_60:
	mov eax, [ebp-0x88]
	movss xmm1, dword [eax]
	mulss xmm1, [ebp-0x64]
	mov eax, [ebp-0x7c]
	movss xmm0, dword [eax]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	mov eax, [ebp-0x78]
	mulss xmm3, [eax]
	addss xmm1, xmm3
	ucomiss xmm1, [_float_0_00000000]
	jb VEH_StepSlideMove_70
VEH_StepSlideMove_90:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
VEH_StepSlideMove_100:
	xor ecx, ecx
VEH_StepSlideMove_80:
	lea eax, [ecx*4]
	mov edx, [ebp-0x88]
	add edx, eax
	movaps xmm1, xmm2
	mulss xmm1, [ebp+eax-0x64]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movss [edx], xmm0
	add ecx, 0x1
	cmp ecx, 0x3
	jnz VEH_StepSlideMove_80
	jmp VEH_StepSlideMove_40
VEH_StepSlideMove_70:
	jp VEH_StepSlideMove_90
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp VEH_StepSlideMove_100


;IntegratePosAndRot(gentity_s*, float)
IntegratePosAndRot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	lea edi, [eax+0xc0]
	mov edx, level
	cvtsi2ss xmm0, dword [edx+0x1f4]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0xa4], xmm0
	lea edx, [eax+0x138]
	mov [ebp-0xa0], edx
	movss xmm0, dword [eax+0x138]
	lea ecx, [eax+0x13c]
	mov [ebp-0x9c], ecx
	movss xmm1, dword [eax+0x13c]
	lea edx, [eax+0x140]
	mov [ebp-0x98], edx
	movss xmm2, dword [eax+0x140]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mulss xmm0, [_float_0_05681818]
	ucomiss xmm0, [_float_0_10000000]
	ja IntegratePosAndRot_10
	jp IntegratePosAndRot_10
	pxor xmm1, xmm1
IntegratePosAndRot_190:
	movss xmm0, dword [edi+0x4c]
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [_float_90_00000000]
	mulss xmm0, xmm1
	movss [edi+0x94], xmm0
	mulss xmm0, [ebp-0xa4]
	addss xmm0, [edi+0x28]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0xb8], xmm0
	call floorf
	fstp dword [ebp-0xa8]
	movss xmm0, dword [ebp-0xb8]
	subss xmm0, [ebp-0xa8]
	mulss xmm0, [_float_360_00000000]
	movss [edi+0x1c], xmm0
	mov dword [edi+0x18], 0x0
	mov dword [edi+0x20], 0x0
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	lea esi, [ebx+0xc0]
	mov eax, [ebx+0xc0]
	mov [ebp-0x24], eax
	mov eax, [esi+0x4]
	mov [ebp-0x20], eax
	movss xmm1, dword [_float_0_25000000]
	movss xmm0, dword [esi+0x8]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov eax, [ebx+0xc0]
	mov [ebp-0x30], eax
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	mov eax, [ecx+0x190]
	mov [esp+0x18], eax
	mov eax, [ecx]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebx+0x12c]
	mov [esp+0xc], eax
	lea eax, [ebx+0x120]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x68]
	mov [esp], ecx
	call G_TraceCapsule
	mov eax, [ebp-0x68]
	mov [s_phys], eax
	mov eax, [ebp-0x64]
	mov [s_phys+0x4], eax
	mov eax, [ebp-0x60]
	mov [s_phys+0x8], eax
	mov eax, [ebp-0x5c]
	mov [s_phys+0xc], eax
	mov eax, [ebp-0x58]
	mov [s_phys+0x10], eax
	mov eax, [ebp-0x54]
	mov [s_phys+0x14], eax
	mov eax, [ebp-0x50]
	mov [s_phys+0x18], eax
	mov eax, [ebp-0x4c]
	mov [s_phys+0x1c], eax
	mov eax, [ebp-0x48]
	mov [s_phys+0x20], eax
	mov eax, [ebp-0x44]
	mov [s_phys+0x24], eax
	mov eax, [ebp-0x40]
	mov [s_phys+0x28], eax
	mov dword [s_phys+0x2c], 0x0
	mov dword [s_phys+0x30], 0x0
	cmp byte [ebp-0x40], 0x0
	jnz IntegratePosAndRot_20
IntegratePosAndRot_400:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jp IntegratePosAndRot_30
	jnz IntegratePosAndRot_30
IntegratePosAndRot_210:
	mov eax, [s_phys+0x30]
	mov [esi+0x50], eax
	lea eax, [esi+0x54]
	lea edx, [esi+0x78]
	movss xmm0, dword [esi+0x78]
	addss xmm0, [esi+0x54]
	movss [esi+0x78], xmm0
	movss xmm0, dword [esi+0x7c]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [esi+0x80]
	addss xmm0, [eax+0x8]
	movss [edx+0x8], xmm0
	mov dword [esi+0x54], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, vec3_origin
	movss xmm0, dword [esi+0x78]
	ucomiss xmm0, [eax]
	jnz IntegratePosAndRot_40
	jp IntegratePosAndRot_40
	movss xmm0, dword [esi+0x7c]
	ucomiss xmm0, [eax+0x4]
	jz IntegratePosAndRot_50
IntegratePosAndRot_40:
	mov eax, [esi+0x50]
	test eax, eax
	jnz IntegratePosAndRot_60
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	mov ecx, [s_phys+0x2c]
	test ecx, ecx
	jnz IntegratePosAndRot_70
	mov eax, edx
IntegratePosAndRot_240:
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	call VEH_StepSlideMove
IntegratePosAndRot_470:
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call VEH_GroundPlant
	mov eax, [ebp+0x8]
	mov edx, [eax+0x164]
	mov eax, [esi+0x84]
	and eax, 0x7fffffff
	mov [edx+0x25c], eax
IntegratePosAndRot_280:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x164]
	lea ecx, [ebx+0xc0]
	mov [ebp-0x78], ecx
	movss xmm0, dword [ecx+0x48]
	movss [ebp-0x7c], xmm0
	mov eax, [vehTestHorsepower]
	mulss xmm0, [eax+0xc]
	mulss xmm0, [_float_6600_00000000]
	movss [ebp-0x7c], xmm0
	lea esi, [ebx+0x138]
	movss xmm0, dword [ebx+0x138]
	lea eax, [ebx+0x13c]
	mov [ebp-0x84], eax
	movss xmm1, dword [ebx+0x13c]
	lea edx, [ebx+0x140]
	mov [ebp-0x80], edx
	movss xmm2, dword [ebx+0x140]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0x88], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp IntegratePosAndRot_80
	jnz IntegratePosAndRot_80
	mov ecx, eax
IntegratePosAndRot_390:
	movss xmm0, dword [esi]
	movss xmm2, dword [ecx]
	mulss xmm2, xmm2
	mov eax, [ebp-0x80]
	movss xmm1, dword [eax]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm0, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x7c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_01000000]
	jp IntegratePosAndRot_90
	jae IntegratePosAndRot_90
IntegratePosAndRot_260:
	mov edx, 0x1
IntegratePosAndRot_270:
	movss xmm1, dword [ebp-0x6c]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jnz IntegratePosAndRot_100
	jp IntegratePosAndRot_100
	pxor xmm2, xmm2
	movaps xmm4, xmm2
	movaps xmm3, xmm2
IntegratePosAndRot_310:
	test dl, dl
	jz IntegratePosAndRot_110
	mov eax, [vehTestWeight]
	movss xmm0, dword [eax+0xc]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [esi]
	addss xmm3, xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x84]
	mulss xmm1, [eax]
	addss xmm4, xmm1
	mov edx, [ebp-0x80]
	mulss xmm0, [edx]
	addss xmm2, xmm0
IntegratePosAndRot_110:
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp IntegratePosAndRot_120
	jnz IntegratePosAndRot_120
IntegratePosAndRot_360:
	mov eax, [ebp-0x78]
	mov eax, [eax+0x50]
	test eax, eax
	jnz IntegratePosAndRot_130
	mov eax, [vehTestWeight]
	movss xmm0, dword [_float__800_00000000]
	mulss xmm0, [eax+0xc]
	addss xmm2, xmm0
IntegratePosAndRot_320:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [eax+0xc]
	movaps xmm6, xmm0
	mulss xmm6, xmm3
	mulss xmm6, [ebp-0xa4]
	mov edx, [ebp-0xa0]
	addss xmm6, [edx]
	movss [edx], xmm6
	mov esi, edx
	add esi, 0x4
	mulss xmm4, xmm0
	mulss xmm4, [ebp-0xa4]
	mov ecx, [ebp-0x9c]
	addss xmm4, [ecx]
	movss [edx+0x4], xmm4
	mov ebx, edx
	add ebx, 0x8
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0xa4]
	mov eax, [ebp-0x98]
	addss xmm2, [eax]
	movss [edx+0x8], xmm2
	movss xmm3, dword [ecx]
	movss xmm5, dword [eax]
	movss xmm0, dword [_float_17_60000038]
	movss [ebp-0x74], xmm0
	mov eax, [vehTestMaxMPH]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x74], xmm0
	movaps xmm7, xmm6
	mulss xmm7, xmm6
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm0, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss xmm1, dword [ebp-0x74]
	ucomiss xmm1, xmm0
	jb IntegratePosAndRot_140
IntegratePosAndRot_350:
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz IntegratePosAndRot_150
IntegratePosAndRot_330:
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm5, xmm5
	addss xmm0, xmm5
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_5_00000000]
	jae IntegratePosAndRot_160
	jp IntegratePosAndRot_160
	mov edx, eax
	xor eax, eax
	mov [edx], eax
	mov [esi], eax
	mov [ebx], eax
IntegratePosAndRot_160:
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jz IntegratePosAndRot_170
	movss xmm0, dword [edi+0x74]
	mov ebx, [edi+0x6c]
	mov eax, 0x3f800000
	mov [ebp-0x68], eax
	mov [ebp-0x64], eax
	mov dword [ebp-0x60], 0x0
	mov [ebp-0x5c], eax
	mov eax, [edi]
	mov [ebp-0x30], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x8]
	mov [ebp-0x28], eax
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea ecx, [ebp-0x68]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_DebugCircle
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea edx, [ebp-0x30]
	mov [esp], edx
	call G_DebugCircle
	movss xmm0, dword [edi]
	mov ecx, [ebp-0xa0]
	addss xmm0, [ecx]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edi+0x4]
	mov eax, [ebp-0x9c]
	addss xmm0, [eax]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edi+0x8]
	mov edx, [ebp-0x98]
	addss xmm0, [edx]
	movss [ebp-0x28], xmm0
	mov dword [esp+0xc], 0x0
	mov ebx, colorYellow
	mov [esp+0x8], ebx
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov [esp], edi
	call G_DebugLine
	mov [esp+0x4], ebx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call G_DebugStar
IntegratePosAndRot_170:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
IntegratePosAndRot_10:
	ucomiss xmm0, [_float_30_00000000]
	jae IntegratePosAndRot_180
	movaps xmm1, xmm0
	subss xmm1, [_float_0_10000000]
	divss xmm1, dword [_float_29_89999962]
	jmp IntegratePosAndRot_190
IntegratePosAndRot_30:
	movss xmm0, dword [esi+0x80]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe IntegratePosAndRot_200
	lea eax, [ebx+0x138]
	movss xmm1, dword [ebx+0x138]
	mulss xmm1, [ebp-0x64]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebp-0x5c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_10_00000000]
	ja IntegratePosAndRot_210
IntegratePosAndRot_200:
	movss xmm0, dword [_float_0_69999999]
	ucomiss xmm0, [ebp-0x5c]
	jbe IntegratePosAndRot_220
	mov dword [s_phys+0x2c], 0x1
	jmp IntegratePosAndRot_210
IntegratePosAndRot_70:
	lea ebx, [eax+0x138]
	movss xmm3, dword [s_phys+0xc]
	ucomiss xmm3, [_float_0_69999999]
	jb IntegratePosAndRot_230
	movss xmm4, dword [eax+0x138]
	movss xmm5, dword [eax+0x13c]
	movss xmm0, dword [eax+0x140]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	addss xmm1, xmm2
	mulss xmm0, xmm0
	ucomiss xmm1, xmm0
	jb IntegratePosAndRot_230
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [s_phys+0x4]
	movaps xmm1, xmm5
	mulss xmm1, [s_phys+0x8]
	subss xmm0, xmm1
	movss [eax+0x140], xmm0
	mulss xmm4, [s_phys+0xc]
	movss [eax+0x138], xmm4
	mulss xmm5, [s_phys+0xc]
	movss [eax+0x13c], xmm5
	mov eax, [ebp+0x8]
	jmp IntegratePosAndRot_240
IntegratePosAndRot_90:
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	setae bl
	movss xmm0, dword [_float_0_01000000]
	ucomiss xmm0, [ebp-0x6c]
	jbe IntegratePosAndRot_250
IntegratePosAndRot_500:
	mov eax, 0x1
IntegratePosAndRot_510:
	cmp al, bl
	jnz IntegratePosAndRot_260
	xor edx, edx
	jmp IntegratePosAndRot_270
IntegratePosAndRot_50:
	jp IntegratePosAndRot_40
	movss xmm0, dword [esi+0x80]
	ucomiss xmm0, [eax+0x8]
	jnz IntegratePosAndRot_40
	jp IntegratePosAndRot_40
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call VEH_GroundPlant
	jmp IntegratePosAndRot_280
IntegratePosAndRot_180:
	movss xmm1, dword [_float_1_00000000]
	jmp IntegratePosAndRot_190
IntegratePosAndRot_230:
	movss xmm1, dword [ebx]
	mulss xmm1, [s_phys+0x4]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mulss xmm3, [ebx+0x8]
	addss xmm1, xmm3
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja IntegratePosAndRot_290
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
IntegratePosAndRot_550:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [ebx+0x4]
IntegratePosAndRot_300:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz IntegratePosAndRot_300
	mov eax, [ebp+0x8]
	jmp IntegratePosAndRot_240
IntegratePosAndRot_100:
	mov eax, [vehTestWeight]
	movss xmm0, dword [_float_0_10000000]
	mulss xmm0, [eax+0xc]
	xorps xmm0, [_data16_80000000]
	movaps xmm3, xmm0
	mulss xmm3, [esi]
	pxor xmm1, xmm1
	addss xmm3, xmm1
	movaps xmm4, xmm0
	mov eax, [ebp-0x84]
	mulss xmm4, [eax]
	addss xmm4, xmm1
	movaps xmm2, xmm0
	mov ecx, [ebp-0x80]
	mulss xmm2, [ecx]
	addss xmm2, xmm1
	jmp IntegratePosAndRot_310
IntegratePosAndRot_130:
	mov eax, [vehTestWeight]
	jmp IntegratePosAndRot_320
IntegratePosAndRot_150:
	mov eax, [ebp-0xa0]
	movss xmm1, dword [eax]
	cvtss2sd xmm0, [edi+0x94]
	movsd [esp+0xc], xmm0
	mulss xmm1, xmm1
	mulss xmm3, xmm3
	addss xmm1, xmm3
	mulss xmm5, xmm5
	addss xmm1, xmm5
	sqrtss xmm1, xmm1
	mulss xmm1, [_float_0_05681818]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x4], xmm1
	mov dword [esp], _cstring_1f_mph_2f_dps
	call va
	mov dword [esp+0x10], 0x3f800000
	mov [esp+0xc], eax
	mov eax, colorRed
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call G_DebugStarWithText
	mov edx, [ebp-0x9c]
	movss xmm3, dword [edx]
	mov ecx, [ebp-0x98]
	movss xmm5, dword [ecx]
	jmp IntegratePosAndRot_330
IntegratePosAndRot_140:
	mulss xmm4, xmm4
	addss xmm7, xmm4
	mulss xmm2, xmm2
	addss xmm7, xmm2
	sqrtss xmm2, xmm7
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb IntegratePosAndRot_340
	movss xmm1, dword [_float_1_00000000]
IntegratePosAndRot_530:
	mulss xmm6, xmm1
	mov eax, [ebp-0xa0]
	movss [eax], xmm6
	movaps xmm0, xmm1
	mulss xmm0, [esi]
	movss [esi], xmm0
	mulss xmm1, [ebx]
	movss [ebx], xmm1
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x74]
	mov edx, [ebp-0x9c]
	mulss xmm0, [edx]
	movss [esi], xmm0
	movss xmm0, dword [ebp-0x74]
	mov ecx, [ebp-0x98]
	mulss xmm0, [ecx]
	movss [ebx], xmm0
	movss xmm3, dword [edx]
	movss xmm5, dword [ecx]
	jmp IntegratePosAndRot_350
IntegratePosAndRot_120:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	add eax, 0x18
	mov [esp], eax
	movss [ebp-0xc8], xmm2
	movss [ebp-0xd8], xmm3
	movss [ebp-0xe8], xmm4
	call AngleVectors
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x68]
	movss xmm3, dword [ebp-0xd8]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x64]
	movss xmm4, dword [ebp-0xe8]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebp-0x60]
	movss xmm2, dword [ebp-0xc8]
	addss xmm2, xmm0
	jmp IntegratePosAndRot_360
IntegratePosAndRot_80:
	lea eax, [ebx+0xd8]
	mov [ebp-0x70], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call AngleVectors
	movss xmm0, dword [ebx+0x138]
	movss xmm1, dword [ebx+0x13c]
	movss xmm2, dword [ebx+0x140]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_0_01000000]
	jp IntegratePosAndRot_370
	jae IntegratePosAndRot_370
IntegratePosAndRot_520:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call Vec3NormalizeTo
	fstp st0
	movss xmm0, dword [ebp-0x30]
	movss xmm4, dword [ebp-0x24]
	subss xmm4, xmm0
	movss xmm3, dword [_float_0_60000002]
	mulss xmm4, xmm3
	addss xmm4, xmm0
	movss [esi], xmm4
	lea edx, [esi+0x4]
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x20]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	lea eax, [esi+0x8]
	movss xmm2, dword [ebp-0x28]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm2
	mulss xmm0, xmm3
	addss xmm0, xmm2
	movss [esi+0x8], xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm4
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb IntegratePosAndRot_380
	movss xmm1, dword [_float_1_00000000]
IntegratePosAndRot_540:
	mulss xmm4, xmm1
	movss [esi], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [esi]
	movss xmm1, dword [ebp-0x2c]
	mov ecx, [ebp-0x84]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x28]
	mov ecx, [ebp-0x80]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	mulss xmm0, xmm0
	mulss xmm0, [ebp-0x88]
	movaps xmm1, xmm0
	mulss xmm1, [esi]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mov ecx, [ebp-0x84]
	mulss xmm1, [ecx]
	movss [edx], xmm1
	mov edx, [ebp-0x80]
	mulss xmm0, [edx]
	movss [eax], xmm0
	mov ecx, [ebp-0x84]
	jmp IntegratePosAndRot_390
IntegratePosAndRot_20:
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call VEH_CorrectAllSolid
	test eax, eax
	jz IntegratePosAndRot_210
	jmp IntegratePosAndRot_400
IntegratePosAndRot_60:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	lea ecx, [eax+0xc0]
	mov [ebp-0x94], ecx
	lea ebx, [eax+0x138]
	movss xmm3, dword [eax+0x138]
	lea edx, [eax+0x13c]
	mov [ebp-0x90], edx
	movss xmm4, dword [eax+0x13c]
	lea ecx, [eax+0x140]
	mov [ebp-0x8c], ecx
	movss xmm6, dword [eax+0x140]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movaps xmm5, xmm6
	mulss xmm5, xmm6
	movaps xmm0, xmm1
	addss xmm0, xmm5
	sqrtss xmm7, xmm0
	movss xmm2, dword [s_phys+0xc]
	ucomiss xmm2, [_float_0_69999999]
	jae IntegratePosAndRot_410
IntegratePosAndRot_480:
	movss xmm1, dword [ebx]
	mulss xmm1, [s_phys+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mulss xmm2, xmm6
	addss xmm1, xmm2
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja IntegratePosAndRot_420
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
IntegratePosAndRot_560:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [ebx+0x4]
IntegratePosAndRot_430:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz IntegratePosAndRot_430
IntegratePosAndRot_490:
	mulss xmm3, [ebx]
	mov eax, [ebp-0x90]
	mulss xmm4, [eax]
	addss xmm3, xmm4
	mov edx, [ebp-0x8c]
	mulss xmm6, [edx]
	addss xmm3, xmm6
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jbe IntegratePosAndRot_440
	movss xmm3, dword [ebx]
	lea edx, [ebx+0x4]
	movss xmm1, dword [ebx+0x4]
	lea eax, [ebx+0x8]
	movss xmm2, dword [ebx+0x8]
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
	jb IntegratePosAndRot_450
	movss xmm1, dword [_float_1_00000000]
IntegratePosAndRot_570:
	mulss xmm3, xmm1
	movss [ebx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm7
	mov ecx, [ebp-0x90]
	mulss xmm0, [ecx]
	movss [edx], xmm0
	mov edx, [ebp-0x8c]
	mulss xmm7, [edx]
	movss [eax], xmm7
IntegratePosAndRot_440:
	pxor xmm0, xmm0
	mov ecx, [ebp-0x94]
	ucomiss xmm0, [ecx+0x78]
	jnz IntegratePosAndRot_460
	jp IntegratePosAndRot_460
	ucomiss xmm0, [ecx+0x7c]
	jp IntegratePosAndRot_460
	jz IntegratePosAndRot_470
IntegratePosAndRot_460:
	movss xmm0, dword [ebp-0xa4]
	xor edx, edx
	mov eax, [ebp+0x8]
	call VEH_StepSlideMove
	jmp IntegratePosAndRot_470
IntegratePosAndRot_220:
	mov dword [s_phys+0x2c], 0x1
	mov dword [s_phys+0x30], 0x1
	jmp IntegratePosAndRot_210
IntegratePosAndRot_410:
	ucomiss xmm1, xmm5
	jb IntegratePosAndRot_480
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [s_phys+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [s_phys+0x8]
	subss xmm0, xmm1
	movss [eax+0x140], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [s_phys+0xc]
	movss [eax+0x138], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [s_phys+0xc]
	movss [eax+0x13c], xmm0
	jmp IntegratePosAndRot_490
IntegratePosAndRot_250:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	add eax, 0x18
	mov [esp], eax
	call AngleVectors
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov [esp], esi
	call Vec3NormalizeTo
	fstp st0
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, [ebp-0x68]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [ebp-0x64]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jae IntegratePosAndRot_500
	xor eax, eax
	jmp IntegratePosAndRot_510
IntegratePosAndRot_370:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x68]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x70]
	mov [esp], eax
	call AngleVectors
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call Vec3NormalizeTo
	fstp st0
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, [ebp-0x3c]
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jae IntegratePosAndRot_520
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x24]
	xorps xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x20]
	xorps xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x1c]
	xorps xmm0, xmm1
	movss [ebp-0x1c], xmm0
	jmp IntegratePosAndRot_520
IntegratePosAndRot_340:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp IntegratePosAndRot_530
IntegratePosAndRot_380:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp IntegratePosAndRot_540
IntegratePosAndRot_290:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp IntegratePosAndRot_550
IntegratePosAndRot_420:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp IntegratePosAndRot_560
IntegratePosAndRot_450:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp IntegratePosAndRot_570


;G_VehUsable(gentity_s*, gentity_s*)
G_VehUsable:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [edx+0x15c]
	test eax, eax
	jz G_VehUsable_10
	test byte [eax+0xe], 0x10
	jnz G_VehUsable_10
	cmp word [edx+0x154], 0x0
	jnz G_VehUsable_10
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x164]
	xor edx, edx
	lea eax, [ecx+0x2ec]
G_VehUsable_40:
	cmp dword [eax+0x4], 0xffffffff
	jz G_VehUsable_20
	cmp dword [eax+0x8], 0x3ff
	jz G_VehUsable_30
G_VehUsable_20:
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz G_VehUsable_40
G_VehUsable_10:
	xor eax, eax
	pop ebp
	ret
G_VehUsable_30:
	movss xmm0, dword [ecx+0x25c]
	ucomiss xmm0, [_float_1_00000000]
	ja G_VehUsable_10
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x1a0]
	test ecx, ecx
	jle G_VehUsable_10
	test byte [eax+0x122], 0x20
	jz G_VehUsable_10
	mov eax, 0x1
	pop ebp
	ret
	nop



;SpawnVehicle(gentity_s*, char const*, int)
SpawnVehicle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	xor edx, edx
	mov eax, s_vehicles+0x1b8
	mov ecx, s_vehicles
SpawnVehicle_20:
	mov esi, ecx
	cmp dword [eax], 0x3ff
	jz SpawnVehicle_10
	add edx, 0x1
	lea ecx, [ecx+0x354]
	add eax, 0x354
	cmp edx, 0x8
	jnz SpawnVehicle_20
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_hit_max_vehicle_
	mov dword [esp], 0x2
	call Com_Error
SpawnVehicle_10:
	mov eax, [ebp+0xc]
	call VEH_GetVehicleInfoFromName
	mov ebx, eax
	test eax, eax
	js SpawnVehicle_30
SpawnVehicle_190:
	mov dword [edi+0x4], 0xe
	mov eax, _cstring_defaultvehicle_m
	call VEH_GetVehicleInfoFromName
	mov [ebp-0x1c], eax
	cmp ebx, eax
	jz SpawnVehicle_40
	movzx eax, word [edi+0x168]
	test ax, ax
	jnz SpawnVehicle_50
SpawnVehicle_130:
	mov byte [ebp-0x45], 0x0
SpawnVehicle_140:
	mov [esp], edi
	call G_DObjUpdate
	lea eax, [ebx+ebx*4]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x4
	movzx eax, word [eax+s_vehicleInfos+0x40]
	cmp ax, 0x1
	jbe SpawnVehicle_60
SpawnVehicle_170:
	mov [ebp-0x1c], ebx
SpawnVehicle_210:
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jz SpawnVehicle_70
SpawnVehicle_180:
	mov dword [esp+0x8], 0x354
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov ecx, [ebp-0x1c]
	lea eax, [ecx+ecx*4]
	shl eax, 0x3
	sub eax, ecx
	shl eax, 0x4
	add eax, s_vehicleInfos
	mov byte [edi+0x16e], 0x16
	mov byte [edi+0xf6], 0x4
	mov dword [edi+0x120], 0x2080
	test byte [edi+0x17c], 0x1
	jz SpawnVehicle_80
	mov dword [edi+0x120], 0x202080
SpawnVehicle_80:
	mov dword [edi+0x4], 0xe
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x1
	mov dword [edi+0x30], 0x1
	mov dword [edi+0x60], 0x0
	mov dword [edi+0x70], 0x0
	mov dword [edi+0x80], 0x0
	add eax, 0x90
	mov [esp], eax
	call G_GetWeaponIndexForName
	movzx eax, al
	mov [edi+0xc4], eax
	mov dword [edi+0xc8], 0x0
	xor ebx, ebx
	mov [edi+0x5c], ebx
	mov [edi+0x54], ebx
	mov [edi+0x58], ebx
	mov [edi+0x64], ebx
	mov [edi+0x68], ebx
	mov [edi+0x164], esi
	mov eax, level
	mov eax, [eax+0x1ec]
	add eax, 0x32
	mov [edi+0x19c], eax
	mov byte [edi+0x16b], 0x1
	mov byte [edi+0x16c], 0x1
	mov dword [edi+0x190], 0x810211
	lea eax, [edi+0x114]
	mov [esp+0x8], eax
	lea eax, [edi+0x108]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBounds
	mov [esp], edi
	call SV_LinkEntity
	mov edx, [edi+0x164]
	lea eax, [edx+0xc0]
	mov [ebp-0x2c], eax
	lea ecx, [edi+0x13c]
	mov [ebp-0x34], ecx
	mov eax, [edi+0x13c]
	mov [edx+0xc0], eax
	mov eax, [edi+0x140]
	mov ecx, [ebp-0x2c]
	mov [ecx+0x4], eax
	mov eax, [edi+0x144]
	mov [ecx+0x8], eax
	lea ecx, [edx+0xcc]
	mov eax, [edi+0x13c]
	mov [edx+0xcc], eax
	mov eax, [edi+0x140]
	mov [ecx+0x4], eax
	mov eax, [edi+0x144]
	mov [ecx+0x8], eax
	lea ecx, [edx+0xd8]
	lea eax, [edi+0x148]
	mov [ebp-0x30], eax
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
	lea eax, [edx+0x120]
	mov [edx+0x120], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	lea eax, [edx+0x12c]
	mov [edx+0x12c], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	lea eax, [edx+0x138]
	mov [edx+0x138], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	lea eax, [edx+0x144]
	mov [edx+0x144], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	lea eax, [edx+0x150]
	mov [edx+0x150], ebx
	mov [eax+0x4], ebx
	mov [eax+0x8], ebx
	mov eax, [ebp-0x2c]
	mov edx, 0x4
SpawnVehicle_90:
	mov dword [eax+0xb0], 0x0
	mov dword [eax+0xc0], 0x0
	mov dword [eax+0xd0], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz SpawnVehicle_90
	mov eax, 0x41f00000
	mov edx, [ebp-0x2c]
	mov [edx+0xa8], eax
	mov [edx+0xac], eax
	mov dword [edx+0x50], 0x0
	mov eax, edx
	add eax, 0x54
	mov dword [edx+0x54], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, [edi]
	mov [esi+0x1b8], eax
	movzx ecx, word [ebp-0x1c]
	mov [esi+0x1bc], cx
	mov dword [esi+0x1c8], 0x0
	mov word [esi+0x1cc], 0xffff
	mov dword [esi+0x1d0], 0xbf800000
	mov dword [esi+0x1d4], 0x0
	mov dword [esi+0x1d8], 0x0
	mov dword [esi+0x1e4], 0x0
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
	mov dword [esi+0x264], 0x3f000000
	mov dword [esi+0x2c0], 0x0
	mov dword [esi+0x2c4], 0x0
	mov dword [esi+0x2c8], 0x0
	mov dword [esi+0x2cc], 0x0
	mov dword [esi+0x2d0], 0x0
	mov dword [esi+0x2d4], 0x0
	mov dword [esi+0x34c], 0x0
	mov eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov edx, [ebp-0x34]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z15VEH_SetPositionP9gentity_sPKfS2_
	mov ecx, [edi+0x164]
	mov [ebp-0x20], ecx
	xor esi, esi
	mov ebx, ecx
	add ebx, 0x2e0
SpawnVehicle_100:
	mov [esp], esi
	call BG_VehiclesGetSlotTagName
	movzx eax, ax
	mov [ebx+0xc], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x3ff
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x3
	jnz SpawnVehicle_100
	mov ebx, scr_const
	movzx eax, word [ebx+0x15a]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov edx, [ebp-0x20]
	mov [edx+0x310], eax
	movzx eax, word [ebx+0x15c]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov ecx, [ebp-0x20]
	mov [ecx+0x314], eax
	movzx eax, word [ebx+0x15e]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov edx, [ebp-0x20]
	mov [edx+0x318], eax
	movzx eax, word [ebx+0x160]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov ecx, [ebp-0x20]
	mov [ecx+0x31c], eax
	movzx eax, word [ebx+0x164]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov edx, [ebp-0x20]
	mov [edx+0x324], eax
	mov ebx, edx
	mov esi, s_flashTags
	lea ecx, [esi+0x14]
	mov [ebp-0x28], ecx
SpawnVehicle_110:
	mov eax, [esi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov [ebx+0x328], eax
	add esi, 0x4
	add ebx, 0x4
	cmp [ebp-0x28], esi
	jnz SpawnVehicle_110
	mov ebx, [ebp-0x20]
	mov esi, s_wheelTags
SpawnVehicle_120:
	mov eax, [esi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	mov [ebx+0x33c], eax
	add esi, 0x4
	add ebx, 0x4
	mov eax, s_wheelTags+0x10
	cmp eax, esi
	jnz SpawnVehicle_120
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SpawnVehicle_50:
	movzx eax, ax
	mov [esp], eax
	call G_XModelBad
	test eax, eax
	jz SpawnVehicle_130
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	movzx eax, word [edi+0x168]
	mov [esp], eax
	call G_OverrideModel
	mov ebx, [ebp-0x1c]
	mov byte [ebp-0x45], 0x1
	jmp SpawnVehicle_140
SpawnVehicle_60:
	sbb edx, edx
	and edx, 0xfffffffe
	add edx, 0x6
	mov [ebp-0x40], edx
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x24], s_wheelTags
SpawnVehicle_160:
	mov ecx, [ebp-0x24]
	mov eax, [ecx]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	test eax, eax
	js SpawnVehicle_150
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x24], 0x4
	mov eax, [ebp-0x44]
	cmp [ebp-0x40], eax
	jnz SpawnVehicle_160
	jmp SpawnVehicle_170
SpawnVehicle_70:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea ebx, [eax+s_vehicleInfos]
	lea eax, [ebx+0x90]
	mov [esp], eax
	call G_GetWeaponIndexForName
	mov [esp], eax
	call IsItemRegistered
	test eax, eax
	jnz SpawnVehicle_180
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_vehicle_s_not_pr
	call va
	mov [esp], eax
	call Scr_Error
	jmp SpawnVehicle_180
SpawnVehicle_40:
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	mov [esp], edi
	call G_SetModel
	mov byte [ebp-0x45], 0x1
	jmp SpawnVehicle_140
SpawnVehicle_30:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_find_info_f
	mov dword [esp], 0x2
	call Com_Error
	jmp SpawnVehicle_190
SpawnVehicle_150:
	cmp byte [ebp-0x45], 0x0
	jnz SpawnVehicle_200
SpawnVehicle_240:
	movzx eax, word [edi+0x168]
	mov [esp], eax
	call G_ModelName
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_vehicle_
	mov dword [esp], 0xf
	call Com_PrintWarning
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	mov [esp], edi
	call G_SetModel
	mov [esp], edi
	call G_DObjUpdate
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	movzx eax, word [eax+s_vehicleInfos+0x40]
	cmp ax, 0x1
	ja SpawnVehicle_210
	sbb ecx, ecx
	and ecx, 0xfffffffe
	add ecx, 0x6
	mov [ebp-0x38], ecx
	mov dword [ebp-0x3c], 0x0
	mov ebx, s_wheelTags
	jmp SpawnVehicle_220
SpawnVehicle_230:
	add dword [ebp-0x3c], 0x1
	add ebx, 0x4
	mov eax, [ebp-0x3c]
	cmp [ebp-0x38], eax
	jz SpawnVehicle_210
SpawnVehicle_220:
	mov eax, [ebx]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call SV_DObjGetBoneIndex
	test eax, eax
	jns SpawnVehicle_230
	mov dword [esp+0x4], _cstring_error_default_ve
	mov dword [esp], 0x2
	call Com_Error
	jmp SpawnVehicle_210
SpawnVehicle_200:
	mov dword [esp+0x4], _cstring_error_default_ve
	mov dword [esp], 0x2
	call Com_Error
	jmp SpawnVehicle_240
	nop


;VEH_JoltBody_copy(gentity_s*, float const*, float, float, float)
VEH_JoltBody_copy:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0xc]
	movss xmm1, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	movsx eax, word [ebx+0x1bc]
	lea esi, [eax+eax*4]
	shl esi, 0x3
	sub esi, eax
	shl esi, 0x4
	add esi, s_vehicleInfos
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm3, xmm3
	movaps xmm2, xmm3
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm0, xmm2
	movss xmm4, dword [_float_1_00000000]
	andnps xmm2, xmm4
	orps xmm2, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm1
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	andps xmm2, xmm1
	orps xmm2, xmm3
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebx+0xd8]
	mov [esp], eax
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
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
	movss xmm3, dword [ebp-0x68]
	movss [ebx+0x2cc], xmm3
	lea eax, [ebx+0x2c0]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	movss xmm2, dword [ebp-0x58]
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x7c]
	mulss xmm0, [ebx+0x2c0]
	movss [ebx+0x2c0], xmm0
	mulss xmm2, [esi+0x80]
	mulss xmm2, [ebx+0x2c4]
	movss [ebx+0x2c4], xmm2
	movss xmm4, dword [ebp+0x14]
	mulss xmm4, [ebx+0x25c]
	movss [ebx+0x2d0], xmm4
	mov eax, [ebp+0x18]
	mov [ebx+0x2d4], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_VehiclesInit(int)
G_VehiclesInit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	test eax, eax
	jnz G_VehiclesInit_10
	mov word [s_numVehicleInfos], 0x0
G_VehiclesInit_30:
	mov eax, s_vehicles
	xor edx, edx
G_VehiclesInit_20:
	mov dword [eax+0x1b8], 0x3ff
	add eax, 0x354
	inc edx
	cmp edx, 8
	jnz G_VehiclesInit_20
	mov eax, level
	mov dword [eax+0x2e68], s_vehicles
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehiclesInit_10:
	cmp word [s_numVehicleInfos], 0x0
	jle G_VehiclesInit_30
	mov dword [ebp-0x1c], 0x0
G_VehiclesInit_70:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea ebx, [eax+s_vehicleInfos]
	xor edi, edi
	lea esi, [ebx+0xe4]
	jmp G_VehiclesInit_40
G_VehiclesInit_60:
	add edi, 0x1
	add esi, 0x40
	add ebx, 0x1
	cmp edi, 0x6
	jz G_VehiclesInit_50
G_VehiclesInit_40:
	cmp byte [ebx+0x264], 0x0
	jz G_VehiclesInit_60
	mov [esp], esi
	call G_SoundAliasIndex
	mov [ebx+0x264], al
	add edi, 0x1
	add esi, 0x40
	add ebx, 0x1
	cmp edi, 0x6
	jnz G_VehiclesInit_40
G_VehiclesInit_50:
	add dword [ebp-0x1c], 0x1
	movsx eax, word [s_numVehicleInfos]
	cmp [ebp-0x1c], eax
	jl G_VehiclesInit_70
	jmp G_VehiclesInit_30


;G_VehFreeEntity(gentity_s*)
G_VehFreeEntity:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x164]
	mov dword [ebx+0x1a0], 0x0
	mov dword [ebx+0x80], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x244]
	mov [esp], eax
	call Scr_SetString
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x246]
	mov [esp], eax
	call Scr_SetString
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x280]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x2dc]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x2e0]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	mov dword [ebx+0x19c], 0x0
	mov byte [ebx+0x16b], 0x0
	mov byte [ebx+0x16c], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x30], 0x0
	mov dword [esi+0x1b8], 0x3ff
	mov dword [ebx+0x164], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;VEH_SetPosition(gentity_s*, float const*, float const*)
_Z15VEH_SetPositionP9gentity_sPKfS2_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea edx, [ebx+0x13c]
	movss xmm0, dword [eax]
	ucomiss xmm0, [ebx+0x13c]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [edx+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm2, dword [eax+0x8]
	ucomiss xmm2, [edx+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea edx, [ebx+0x18]
	ucomiss xmm0, [ebx+0x18]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm1, [edx+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm2, [edx+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea edx, [ebx+0x148]
	movss xmm0, dword [esi]
	ucomiss xmm0, [ebx+0x148]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm1, dword [esi+0x4]
	ucomiss xmm1, [edx+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	movss xmm2, dword [esi+0x8]
	ucomiss xmm2, [edx+0x8]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	lea edx, [ebx+0x3c]
	ucomiss xmm0, [ebx+0x3c]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm1, [edx+0x4]
	jnz VEH_SetPosition_10
	jp VEH_SetPosition_10
	ucomiss xmm2, [edx+0x8]
	jp VEH_SetPosition_10
	jnz VEH_SetPosition_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
VEH_SetPosition_10:
	mov [esp+0x4], eax
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


;G_VehUnlinkPlayer(gentity_s*, gentity_s*)
G_VehUnlinkPlayer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov esi, [edi+0x15c]
	test byte [esi+0xe], 0x10
	jz G_VehUnlinkPlayer_10
G_VehUnlinkPlayer_40:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x164]
	and dword [ecx+0x1c0], 0xfffffffe
	mov eax, [esi+0x108]
	mov [ebp-0x30], eax
	mov eax, [esi+0x10c]
	mov [ebp-0x2c], eax
	xor ebx, ebx
	mov [ebp-0x28], ebx
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x144]
	addss xmm0, [ecx+0x134]
	movss [ebp-0x1c], xmm0
	mov [ebp-0x30], ebx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call TeleportPlayer
	mov ecx, [edi]
	xor edx, edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x164]
	add eax, 0x2ec
G_VehUnlinkPlayer_30:
	cmp ecx, [eax+0x8]
	jz G_VehUnlinkPlayer_20
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz G_VehUnlinkPlayer_30
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vehicleclearride
	mov dword [esp], 0x2
	call Com_Error
G_VehUnlinkPlayer_50:
	mov dword [esp+0x4], 0x0
	lea eax, [edi+0x154]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	and dword [esi+0xc], 0xffefffff
	and dword [esi+0x10], 0xffffff7f
	mov dword [esi+0x59c], 0x3ff
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehUnlinkPlayer_10:
	mov dword [esp+0x4], _cstring_g_vehunlinkplaye
	mov dword [esp], 0x2
	call Com_Error
	jmp G_VehUnlinkPlayer_40
G_VehUnlinkPlayer_20:
	mov dword [eax+0x8], 0x3ff
	jmp G_VehUnlinkPlayer_50
	nop


;G_VehRegisterDvars()
G_VehRegisterDvars:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0xc], _cstring_turn_on_debug_in
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehdebugserver
	call Cvar_RegisterBool
	mov [vehDebugServer], eax
	mov dword [esp+0x14], _cstring_scale_vehicle_te
	mov dword [esp+0x10], 0x80
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_vehtexturescroll
	call Cvar_RegisterFloat
	mov [vehTextureScrollScale], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43480000
	mov dword [esp], _cstring_vehtesthorsepowe
	call Cvar_RegisterFloat
	mov [vehTestHorsepower], eax
	mov dword [esp+0x14], _cstring_lbs
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x45a28000
	mov dword [esp], _cstring_vehtestweight
	call Cvar_RegisterFloat
	mov [vehTestWeight], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42200000
	mov dword [esp], _cstring_vehtestmaxmph
	call Cvar_RegisterFloat
	mov [vehTestMaxMPH], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;VEH_GetVehicleInfo(short)
VEH_GetVehicleInfo:
	push ebp
	mov ebp, esp
	movsx edx, word [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	add eax, s_vehicleInfos
	pop ebp
	ret
	nop


;G_VehEntHandler_Die(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
G_VehEntHandler_Die:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x20], edx
	mov ebx, [edi+0x164]
	mov esi, ebx
	add esi, 0x2ec
	jz G_VehEntHandler_Die_10
G_VehEntHandler_Die_70:
	mov ecx, [esi+0x8]
	cmp ecx, 0x3ff
	jz G_VehEntHandler_Die_20
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov [esp], eax
	call G_EntUnlink
	mov ebx, [edi+0x164]
G_VehEntHandler_Die_20:
	xor ecx, ecx
	lea edx, [ebx+0x2f8]
	lea eax, [ebx+0x2ec]
G_VehEntHandler_Die_40:
	cmp esi, eax
	jz G_VehEntHandler_Die_30
	add ecx, 0x1
	add eax, 0xc
	add edx, 0xc
	cmp ecx, 0x3
	jnz G_VehEntHandler_Die_40
G_VehEntHandler_Die_10:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz G_VehEntHandler_Die_50
	mov edx, [ebp-0x1c]
	mov eax, [edx+0xc4]
	test eax, eax
	jnz G_VehEntHandler_Die_60
G_VehEntHandler_Die_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Die_60:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja G_VehEntHandler_Die_50
	xor eax, eax
	mov [ebp+0x18], eax
	mov [ebp+0x14], eax
	mov dword [ebp+0x10], 0x3f800000
	mov eax, [ebp-0x20]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp VEH_JoltBody_copy
G_VehEntHandler_Die_30:
	cmp ecx, 0x2
	jz G_VehEntHandler_Die_10
	mov esi, edx
	test edx, edx
	jnz G_VehEntHandler_Die_70
	jmp G_VehEntHandler_Die_10
	nop


;G_VehEntHandler_Use(gentity_s*, gentity_s*, gentity_s*)
G_VehEntHandler_Use:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	mov edi, [eax+0x15c]
	test edi, edi
	jz G_VehEntHandler_Use_10
	test byte [edi+0xe], 0x10
	jnz G_VehEntHandler_Use_20
	mov edx, [ebp+0x8]
	mov edx, [edx+0x164]
	mov [ebp-0x84], edx
	mov eax, edx
	mov ecx, [ebp+0xc]
	add ecx, 0x154
	mov [ebp-0x88], ecx
	mov edx, [ebp+0xc]
	cmp word [edx+0x154], 0x0
	jnz G_VehEntHandler_Use_30
G_VehEntHandler_Use_150:
	xor edx, edx
	add eax, 0x2ec
G_VehEntHandler_Use_60:
	cmp dword [eax+0x4], 0xffffffff
	jz G_VehEntHandler_Use_40
	cmp dword [eax+0x8], 0x3ff
	jz G_VehEntHandler_Use_50
G_VehEntHandler_Use_40:
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz G_VehEntHandler_Use_60
	mov dword [esp+0x4], _cstring_linkplayertovehi
	mov dword [esp], 0x2
	call Com_Error
G_VehEntHandler_Use_50:
	mov dword [ebp-0x7c], 0x0
	movss xmm0, dword [_float_999999_00000000]
	movss [ebp-0x80], xmm0
	xor esi, esi
	mov eax, [ebp+0xc]
	add eax, 0x13c
	mov [ebp-0x8c], eax
	mov ebx, [ebp-0x84]
	add ebx, 0x2ec
G_VehEntHandler_Use_90:
	mov edx, [ebx+0x4]
	cmp edx, 0xffffffff
	jz G_VehEntHandler_Use_70
	cmp dword [ebx+0x8], 0x3ff
	jz G_VehEntHandler_Use_80
G_VehEntHandler_Use_70:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x3
	jnz G_VehEntHandler_Use_90
	mov eax, [ebp-0x7c]
	test eax, eax
	jz G_VehEntHandler_Use_100
G_VehEntHandler_Use_170:
	lea ebx, [ebp-0x6c]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call G_DObjGetWorldBoneIndexMatrix
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AxisToAngles
	xor edx, edx
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x48]
	mov ecx, [ebp+0xc]
	mov [ecx+0x13c], eax
	mov eax, [ebp-0x44]
	mov ecx, [ebp-0x8c]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x40]
	mov [ecx+0x8], eax
	mov [ebp-0x30], edx
	mov [ebp-0x2c], edx
	mov [ebp-0x28], edx
	mov eax, [ebp-0x7c]
	mov edx, [eax]
	mov ecx, scr_const
	movzx eax, word [ecx+0x148]
	cmp edx, eax
	jz G_VehEntHandler_Use_110
	movzx eax, word [ecx+0x14a]
	cmp edx, eax
	jz G_VehEntHandler_Use_110
G_VehEntHandler_Use_140:
	mov eax, vec3_origin
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov edx, [ebp-0x7c]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call G_EntLinkToWithOffset
	test eax, eax
	jz G_VehEntHandler_Use_120
G_VehEntHandler_Use_160:
	mov ecx, [ebp-0x84]
	or dword [ecx+0x1c0], 0x1
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov ecx, [ebp-0x7c]
	mov [ecx+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x88]
	mov [esp], edx
	call _ZN9EntHandle6setEntEP9gentity_s
	or dword [edi+0xc], 0x100000
	mov eax, scr_const
	movzx eax, word [eax+0x14a]
	mov ecx, [ebp-0x7c]
	cmp [ecx], eax
	jz G_VehEntHandler_Use_130
	or dword [edi+0x10], 0x80
G_VehEntHandler_Use_130:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [edi+0x59c], eax
G_VehEntHandler_Use_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Use_110:
	mov dword [ebp-0x28], 0xc20c0000
	jmp G_VehEntHandler_Use_140
G_VehEntHandler_Use_20:
	mov [esp], eax
	call G_EntUnlink
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Use_30:
	mov dword [esp+0x4], _cstring_linkplayertovehi1
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x164]
	jmp G_VehEntHandler_Use_150
G_VehEntHandler_Use_80:
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call G_DObjGetWorldBoneIndexPos
	movss xmm0, dword [ebp-0x3c]
	mov ecx, [ebp+0xc]
	subss xmm0, [ecx+0x13c]
	movss xmm1, dword [ebp-0x38]
	mov eax, [ebp-0x8c]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x34]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss xmm1, dword [ebp-0x80]
	ucomiss xmm1, xmm0
	jbe G_VehEntHandler_Use_70
	mov [ebp-0x7c], ebx
	movss [ebp-0x80], xmm0
	jmp G_VehEntHandler_Use_70
G_VehEntHandler_Use_120:
	mov edx, [ebp-0x7c]
	mov eax, [edx]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_linkplayertovehi2
	mov dword [esp], 0x2
	call Com_Error
	jmp G_VehEntHandler_Use_160
G_VehEntHandler_Use_100:
	mov dword [esp+0x4], _cstring_linkplayertovehi3
	mov dword [esp], 0x2
	call Com_Error
	jmp G_VehEntHandler_Use_170


;G_VehImmuneToDamage(gentity_s*, int, int, int)
G_VehImmuneToDamage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	movsx edx, word [eax+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea ebx, [eax+s_vehicleInfos]
	cmp ecx, 0xe
	ja G_VehImmuneToDamage_10
	jmp dword [ecx*4+G_VehImmuneToDamage_jumptab_0]
G_VehImmuneToDamage_60:
	mov eax, [ebp+0x14]
	mov [esp], eax
	call BG_GetWeaponDef
	cmp dword [eax+0x588], 0x6
	jz G_VehImmuneToDamage_20
	mov eax, [ebx+0x58]
	test eax, eax
	jnz G_VehImmuneToDamage_30
G_VehImmuneToDamage_10:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
G_VehImmuneToDamage_50:
	mov eax, [ebx+0x50]
	test eax, eax
	jnz G_VehImmuneToDamage_30
	test byte [ebp+0x10], 0x2
	jz G_VehImmuneToDamage_10
	mov eax, [ebx+0x54]
	test eax, eax
	jz G_VehImmuneToDamage_10
G_VehImmuneToDamage_30:
	xor eax, eax
G_VehImmuneToDamage_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
G_VehImmuneToDamage_80:
	mov ebx, [ebx+0x60]
	test ebx, ebx
	jz G_VehImmuneToDamage_10
	xor eax, eax
	jmp G_VehImmuneToDamage_40
G_VehImmuneToDamage_70:
	mov eax, [ebx+0x5c]
	test eax, eax
	jz G_VehImmuneToDamage_10
	xor eax, eax
	jmp G_VehImmuneToDamage_40
G_VehImmuneToDamage_20:
	mov eax, [ebx+0x64]
	test eax, eax
	jz G_VehImmuneToDamage_10
	xor eax, eax
	jmp G_VehImmuneToDamage_40
	
	
G_VehImmuneToDamage_jumptab_0:
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_50
	dd G_VehImmuneToDamage_50
	dd G_VehImmuneToDamage_60
	dd G_VehImmuneToDamage_60
	dd G_VehImmuneToDamage_70
	dd G_VehImmuneToDamage_80
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_10
	dd G_VehImmuneToDamage_30


;G_VehPlayerRideSlot(gentity_s*, int)
G_VehPlayerRideSlot:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	xor edx, edx
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	add eax, 0x2f4
G_VehPlayerRideSlot_20:
	cmp ecx, [eax]
	jz G_VehPlayerRideSlot_10
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz G_VehPlayerRideSlot_20
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vehiclegetplayer
	mov dword [esp], 0x2
	call Com_Error
	xor edx, edx
G_VehPlayerRideSlot_10:
	mov eax, edx
	leave
	ret


;G_VehEntHandler_Pain(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
G_VehEntHandler_Pain:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x1c]
	test eax, eax
	jz G_VehEntHandler_Pain_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz G_VehEntHandler_Pain_20
G_VehEntHandler_Pain_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
G_VehEntHandler_Pain_20:
	mov [esp], eax
	call BG_GetWeaponDef
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja G_VehEntHandler_Pain_10
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


;G_VehEntHandler_Think(gentity_s*)
G_VehEntHandler_Think:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov eax, [ebp+0x8]
	mov esi, [eax+0x164]
	lea edx, [esi+0xc0]
	mov [ebp-0xb8], edx
	movsx eax, word [esi+0x1bc]
	lea edx, [eax+eax*4]
	shl edx, 0x3
	sub edx, eax
	shl edx, 0x4
	add edx, s_vehicleInfos
	mov [ebp-0xb4], edx
	mov eax, level
	cvtsi2ss xmm0, dword [eax+0x1f4]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0xb0], xmm0
	test byte [esi+0x1c0], 0x8
	jnz G_VehEntHandler_Think_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call InitFirstThink
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Think_10:
	lea ecx, [esi+0xcc]
	mov edx, [ebp+0x8]
	add edx, 0x13c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x13c]
	mov [esi+0xcc], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea ecx, [esi+0xe4]
	mov edx, ebx
	add edx, 0x148
	mov eax, [ebx+0x148]
	mov [esi+0xe4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [esp+0x8], 0xc0
	mov [esp+0x4], esi
	mov dword [esp], s_backup
	call memcpy
	mov dword [esp+0x8], 0xf8
	mov eax, [ebp-0xb8]
	mov [esp+0x4], eax
	mov dword [esp], s_backup+0xc0
	call memcpy
	mov edi, s_phys
	cld
	mov ecx, 0xd
	xor eax, eax
	rep stosd
	mov edi, [ebx+0x164]
	mov ebx, edi
	add ebx, 0x2ec
	jz G_VehEntHandler_Think_20
G_VehEntHandler_Think_290:
	mov ecx, [ebx+0x8]
	cmp ecx, 0x3ff
	jz G_VehEntHandler_Think_30
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov edx, [eax+0x1a0]
	test edx, edx
	jle G_VehEntHandler_Think_40
G_VehEntHandler_Think_30:
	xor ecx, ecx
	lea edx, [edi+0x2f8]
	lea eax, [edi+0x2ec]
G_VehEntHandler_Think_60:
	cmp ebx, eax
	jz G_VehEntHandler_Think_50
	add ecx, 0x1
	add eax, 0xc
	add edx, 0xc
	cmp ecx, 0x3
	jnz G_VehEntHandler_Think_60
G_VehEntHandler_Think_20:
	lea ebx, [edi+0xc0]
	pxor xmm0, xmm0
	movss [ebx+0x48], xmm0
	movss [ebx+0x4c], xmm0
	mov byte [ebx+0x44], 0x0
	mov byte [ebx+0x45], 0x0
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x164]
	mov ecx, [eax+0x2f4]
	cmp ecx, 0x3ff
	jz G_VehEntHandler_Think_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test dword [eax+0xc], 0xc00
	jz G_VehEntHandler_Think_80
G_VehEntHandler_Think_70:
	movss xmm0, dword [ebp-0xb0]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call IntegratePosAndRot
	mov eax, [ebp-0xb8]
	add eax, 0x18
	mov [esp+0x8], eax
	mov edx, [ebp-0xb8]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z15VEH_SetPositionP9gentity_sPKfS2_
	movss xmm0, dword [ebp-0xb0]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call VEH_TouchEntities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz G_VehEntHandler_Think_90
	test byte [esi+0x1c0], 0x1
	jnz G_VehEntHandler_Think_100
G_VehEntHandler_Think_150:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x164]
G_VehEntHandler_Think_160:
	mov ecx, [edi+0x30c]
	cmp ecx, 0x3ff
	jz G_VehEntHandler_Think_110
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov edx, [eax+0x15c]
	mov eax, [edx+0x10c]
	mov ebx, [ebp+0x8]
	mov [ebx+0x68], eax
	mov eax, [edx+0x108]
	mov [ebx+0x64], eax
	pxor xmm4, xmm4
G_VehEntHandler_Think_280:
	movss xmm0, dword [edi+0x2c8]
	movss [ebp-0xac], xmm0
	ucomiss xmm0, xmm4
	jbe G_VehEntHandler_Think_120
	cvtss2sd xmm0, [edi+0x2cc]
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	movss [ebp-0xe8], xmm4
	call sin
	fstp qword [ebp-0xc0]
	cvtsd2ss xmm0, [ebp-0xc0]
	mulss xmm0, [ebp-0xac]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x2c0]
	mov eax, [ebp+0x8]
	movss [eax+0x54], xmm1
	mulss xmm0, [edi+0x2c4]
	movss [eax+0x58], xmm0
	movss xmm0, dword [edi+0x2c8]
	subss xmm0, [ebp-0xb0]
	movss [edi+0x2c8], xmm0
	movss xmm0, dword [ebp-0xb0]
	addss xmm0, xmm0
	mulss xmm0, [_float_360_00000000]
	addss xmm0, [edi+0x2cc]
	movss [edi+0x2cc], xmm0
	mov edi, [eax+0x164]
	movss xmm4, dword [ebp-0xe8]
G_VehEntHandler_Think_120:
	lea ebx, [edi+0xc0]
	movsx edx, word [edi+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov esi, [eax+s_vehicleInfos+0x44]
	test esi, esi
	jnz G_VehEntHandler_Think_130
	mov edx, [ebp+0x8]
	movss [edx+0x5c], xmm4
G_VehEntHandler_Think_270:
	movsx edx, word [edi+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea edx, [eax+s_vehicleInfos]
	mov ebx, [edx+0x48]
	test ebx, ebx
	jnz G_VehEntHandler_Think_140
	mov edx, [ebp+0x8]
	mov dword [edx+0x60], 0xffffffff
	movss xmm1, dword [_float_1000_00000000]
G_VehEntHandler_Think_200:
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x80], 0x0
	mov eax, [ebp-0xb4]
	mulss xmm1, [eax+0x8c]
	cvttss2si eax, xmm1
	mov [ebx+0x70], eax
	mov edx, level
	mov eax, [edx+0x1ec]
	add eax, 0x32
	mov [ebx+0x19c], eax
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Think_90:
	mov eax, 0x3f800000
	mov [ebp-0x60], eax
	mov [ebp-0x5c], eax
	xor edx, edx
	mov [ebp-0x58], edx
	mov [ebp-0x54], eax
	mov eax, 0xc0000000
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], eax
	mov eax, 0x40000000
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x1
	lea eax, [ebp-0x60]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0xb8]
	mov [esp], edx
	call G_DebugBox
	test byte [esi+0x1c0], 0x1
	jz G_VehEntHandler_Think_150
G_VehEntHandler_Think_100:
	mov ecx, [ebp+0x8]
	mov edi, [ecx+0x164]
	mov ecx, [edi+0x30c]
	cmp ecx, 0x3ff
	jz G_VehEntHandler_Think_160
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc4]
	test eax, eax
	jz G_VehEntHandler_Think_160
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea esi, [eax+ecx]
	add esi, g_entities
	mov edx, [esi+0x15c]
	mov eax, [edi+0x1d4]
	test eax, eax
	jle G_VehEntHandler_Think_170
	mov ecx, level
	sub eax, [ecx+0x1f4]
	mov [edi+0x1d4], eax
	test eax, eax
	jle G_VehEntHandler_Think_180
	mov edx, [ebp+0x8]
	mov edi, [edx+0x164]
	jmp G_VehEntHandler_Think_160
G_VehEntHandler_Think_140:
	mov eax, [vehTextureScrollScale]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm4
	jbe G_VehEntHandler_Think_190
	movss xmm0, dword [edi+0x25c]
	divss xmm0, dword [_float_176_00000000]
	mulss xmm0, [ebp-0xb0]
	mulss xmm0, xmm1
G_VehEntHandler_Think_250:
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov ecx, [ebp+0x8]
	add [ecx+0x60], eax
	jmp G_VehEntHandler_Think_200
G_VehEntHandler_Think_80:
	movzx eax, byte [eax+0x2fa6]
	mov [ebx+0x44], al
	mov [esp+0x4], ebx
	mov [esp], edi
	call VEH_PlayerRotation
	mov [ebx+0x45], al
	mov eax, [edi+0x15c]
	movsx eax, byte [eax+0x2fa6]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_126_00000000]
	movss [ebx+0x48], xmm0
	mov [esp+0x4], ebx
	mov [esp], edi
	call VEH_PlayerRotation
	movsx eax, al
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_127_00000000]
	movss [ebx+0x4c], xmm0
	movzx eax, byte [ebx+0x44]
	mov edx, eax
	sar dl, 0x7
	or dl, 0x1
	mul dl
	cmp al, 0x9
	jg G_VehEntHandler_Think_210
	xor eax, eax
G_VehEntHandler_Think_310:
	mov [ebx+0x44], al
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebx+0x48]
	ucomiss xmm0, xmm1
	jbe G_VehEntHandler_Think_220
	movss [ebx+0x48], xmm1
	movaps xmm0, xmm1
G_VehEntHandler_Think_220:
	movss xmm2, dword [_float__1_00000000]
	ucomiss xmm2, xmm0
	ja G_VehEntHandler_Think_230
G_VehEntHandler_Think_350:
	movss xmm0, dword [ebx+0x4c]
	ucomiss xmm0, xmm1
	jbe G_VehEntHandler_Think_240
	movaps xmm0, xmm1
	movss [ebx+0x4c], xmm1
G_VehEntHandler_Think_240:
	ucomiss xmm2, xmm0
	jbe G_VehEntHandler_Think_70
	movss [ebx+0x4c], xmm2
	jmp G_VehEntHandler_Think_70
G_VehEntHandler_Think_190:
	movss xmm0, dword [edi+0x25c]
	divss xmm0, dword [_float_176_00000000]
	mulss xmm0, [ebp-0xb0]
	mulss xmm0, [edx+0x68]
	jmp G_VehEntHandler_Think_250
G_VehEntHandler_Think_130:
	movss xmm0, dword [ebx+0x1c]
	subss xmm0, [ebx+0x28]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0xd8], xmm0
	movss [ebp-0xe8], xmm4
	call floorf
	fstp dword [ebp-0xc4]
	movss xmm0, dword [ebp-0xd8]
	movaps xmm3, xmm0
	subss xmm3, [ebp-0xc4]
	mulss xmm3, [_float_360_00000000]
	mulss xmm3, [_float_10_00000000]
	cmp byte [ebx+0x44], 0x0
	movss xmm4, dword [ebp-0xe8]
	js G_VehEntHandler_Think_260
G_VehEntHandler_Think_340:
	movss xmm2, dword [_float_45_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss xmm2, dword [_float__45_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movaps xmm3, xmm4
	cmpss xmm3, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm1, xmm3
	andnps xmm0, xmm2
	orps xmm0, xmm1
	mov eax, [ebp+0x8]
	movss [eax+0x5c], xmm0
	jmp G_VehEntHandler_Think_270
G_VehEntHandler_Think_110:
	pxor xmm4, xmm4
	mov ecx, [ebp+0x8]
	movss [ecx+0x68], xmm4
	movss [ecx+0x64], xmm4
	jmp G_VehEntHandler_Think_280
G_VehEntHandler_Think_50:
	cmp ecx, 0x2
	jz G_VehEntHandler_Think_20
	mov ebx, edx
	test edx, edx
	jnz G_VehEntHandler_Think_290
	jmp G_VehEntHandler_Think_20
G_VehEntHandler_Think_210:
	cmp al, 0x73
	jle G_VehEntHandler_Think_300
	lea eax, [edx+edx*2]
	shl al, 0x3
	sub al, dl
	lea eax, [eax+eax*4]
	jmp G_VehEntHandler_Think_310
G_VehEntHandler_Think_300:
	mul dl
	jmp G_VehEntHandler_Think_310
G_VehEntHandler_Think_180:
	mov edi, [ebx+0x164]
G_VehEntHandler_Think_170:
	test byte [edx+0x3088], 0x1
	jz G_VehEntHandler_Think_160
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc4]
	test eax, eax
	jz G_VehEntHandler_Think_160
	mov [esp], eax
	call BG_GetWeaponDef
	mov [ebp-0x64], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x4], eax
	mov [esp], ebx
	call G_DObjGetWorldTagMatrix
	test eax, eax
	jnz G_VehEntHandler_Think_320
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_tag_flash
	mov dword [esp+0x4], _cstring_couldnt_find_tag
	mov dword [esp], 0x2
	call Com_Error
G_VehEntHandler_Think_370:
	mov edx, [ebp-0x64]
	mov eax, [edx+0x12c]
	test eax, eax
	jnz G_VehEntHandler_Think_330
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x10], eax
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	lea eax, [ebp-0xa0]
	mov [esp+0x8], eax
	mov eax, [edx+0x71c]
	mov [esp+0x4], eax
	mov [esp], esi
	call Bullet_Fire
G_VehEntHandler_Think_360:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1a
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call G_AddEvent
	mov eax, [ebp-0x64]
	mov eax, [eax+0x36c]
	mov [edi+0x1d4], eax
	mov edi, [ebx+0x164]
	jmp G_VehEntHandler_Think_160
G_VehEntHandler_Think_40:
	mov [esp], eax
	call G_EntUnlink
	mov edx, [ebp+0x8]
	mov edi, [edx+0x164]
	jmp G_VehEntHandler_Think_30
G_VehEntHandler_Think_260:
	xorps xmm3, [_data16_80000000]
	jmp G_VehEntHandler_Think_340
G_VehEntHandler_Think_230:
	movss [ebx+0x48], xmm2
	jmp G_VehEntHandler_Think_350
G_VehEntHandler_Think_330:
	mov dword [esp+0x4], _cstring_fireturret_weapd
	mov dword [esp], 0x2
	call Com_Error
	jmp G_VehEntHandler_Think_360
G_VehEntHandler_Think_320:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x60]
	mov [esp], edx
	call AxisToAngles
	lea edx, [ebp-0xa0]
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	lea eax, [ebp-0x94]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call AngleVectors
	movss xmm1, dword [ebp-0xa0]
	movss [ebp-0x70], xmm1
	movss xmm2, dword [ebp-0x9c]
	movss [ebp-0x6c], xmm2
	movss xmm3, dword [ebp-0x98]
	movss [ebp-0x68], xmm3
	mov eax, [ebp-0x3c]
	mov [ebp-0x7c], eax
	lea edx, [ebp-0x3c]
	mov eax, [ebp-0x38]
	mov [ebp-0x78], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x74], eax
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jz G_VehEntHandler_Think_370
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x3c]
	movss [ebp-0x30], xmm1
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x38]
	movss [ebp-0x2c], xmm2
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x34]
	movss [ebp-0x28], xmm3
	mov dword [esp+0xc], 0x0
	mov eax, colorRed
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edx
	call G_DebugLine
	jmp G_VehEntHandler_Think_370
	add [eax], al


;G_VehEntHandler_Touch(gentity_s*, gentity_s*, int)
G_VehEntHandler_Touch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	movsx edx, word [ebx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea esi, [eax+s_vehicleInfos]
	mov eax, [edi+0x4]
	cmp eax, 0x1
	jz G_VehEntHandler_Touch_10
	cmp eax, 0x6
	jz G_VehEntHandler_Touch_10
G_VehEntHandler_Touch_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehEntHandler_Touch_10:
	cmp byte [edi+0x16b], 0x0
	jz G_VehEntHandler_Touch_20
	mov eax, [edi+0x218]
	test eax, eax
	jnz G_VehEntHandler_Touch_20
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x84]
	jae G_VehEntHandler_Touch_20
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	lea eax, [ebx+0x138]
	mov [esp], eax
	call Vec3NormalizeTo
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	ucomiss xmm0, [_float_0_00100000]
	jp G_VehEntHandler_Touch_30
	jb G_VehEntHandler_Touch_20
G_VehEntHandler_Touch_30:
	cmp dword [edi+0x4], 0x6
	jz G_VehEntHandler_Touch_40
	lea eax, [edi+0x13c]
	mov [ebp-0x40], eax
	movss xmm0, dword [edi+0x13c]
	mov edx, [ebp+0x8]
	subss xmm0, [edx+0x13c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x140]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Vec2Normalize
	fstp st0
	movss xmm2, dword [ebp-0x2c]
	mulss xmm2, [ebp-0x20]
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [ebp-0x1c]
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_80000001]
	jp G_VehEntHandler_Touch_50
	jb G_VehEntHandler_Touch_20
G_VehEntHandler_Touch_50:
	mov eax, [edi+0x15c]
	test eax, eax
	jz G_VehEntHandler_Touch_60
	test byte [eax+0xc], 0x1
	jz G_VehEntHandler_Touch_60
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	mov edx, [eax+0x2f4]
	cmp edx, 0x3ff
	mov eax, 0x3fe
	cmovz edx, eax
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz G_VehEntHandler_Touch_70
G_VehEntHandler_Touch_130:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xf423f
G_VehEntHandler_Touch_100:
	mov eax, [ebp-0x40]
	mov [esp+0x10], eax
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call G_Damage
	jmp G_VehEntHandler_Touch_20
G_VehEntHandler_Touch_40:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	mov edx, [eax+0x2f4]
	cmp edx, 0x3ff
	mov eax, 0x3fe
	cmovz edx, eax
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz G_VehEntHandler_Touch_80
G_VehEntHandler_Touch_110:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xf423f
	lea eax, [edi+0x13c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], edi
	call G_Damage
	jmp G_VehEntHandler_Touch_20
G_VehEntHandler_Touch_60:
	movss xmm1, dword [ebx+0x25c]
	divss xmm1, dword [esi+0x88]
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm1
	subss xmm2, [_float_0_80000001]
	divss xmm2, dword [_float_0_19999999]
	mulss xmm0, xmm2
	mulss xmm0, [esi+0x84]
	cvttss2si esi, xmm0
	test esi, esi
	jle G_VehEntHandler_Touch_20
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	mov edx, [eax+0x2f4]
	cmp edx, 0x3ff
	mov eax, 0x3fe
	cmovz edx, eax
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	lea ebx, [eax+edx]
	add ebx, g_entities
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz G_VehEntHandler_Touch_90
G_VehEntHandler_Touch_120:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	jmp G_VehEntHandler_Touch_100
G_VehEntHandler_Touch_80:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call Com_Printf
	jmp G_VehEntHandler_Touch_110
G_VehEntHandler_Touch_90:
	mov [esp+0xc], esi
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call Com_Printf
	jmp G_VehEntHandler_Touch_120
G_VehEntHandler_Touch_70:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call Com_Printf
	jmp G_VehEntHandler_Touch_130


;G_VehEntHandler_Controller(gentity_s const*, int*)
G_VehEntHandler_Controller:
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
	js G_VehEntHandler_Controller_10
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
G_VehEntHandler_Controller_10:
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
	js G_VehEntHandler_Controller_20
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
G_VehEntHandler_Controller_20:
	mov edx, [edi+0x324]
	test edx, edx
	js G_VehEntHandler_Controller_30
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
G_VehEntHandler_Controller_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_VehiclesSetupSpawnedEnts()
G_VehiclesSetupSpawnedEnts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x2c], s_vehicles+0x1b8
G_VehiclesSetupSpawnedEnts_60:
	mov eax, [ebp-0x2c]
	mov ecx, [eax]
	cmp ecx, 0x3ff
	jz G_VehiclesSetupSpawnedEnts_10
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	mov edx, g_entities
	add eax, edx
	mov [ebp-0x28], eax
	movzx eax, word [eax+0x168]
	mov [esp], eax
	call G_ModelName
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x24], eax
	mov edx, level
	mov ecx, [edx+0xc]
	test ecx, ecx
	jle G_VehiclesSetupSpawnedEnts_20
	xor edi, edi
	xor ebx, ebx
G_VehiclesSetupSpawnedEnts_50:
	lea esi, [ebx+edi]
	add esi, g_entities
	cmp byte [esi+0x100], 0x0
	jz G_VehiclesSetupSpawnedEnts_30
	movzx eax, word [esi+0x170]
	mov ecx, scr_const
	cmp ax, [ecx+0xfc]
	jz G_VehiclesSetupSpawnedEnts_40
G_VehiclesSetupSpawnedEnts_30:
	add edi, 0x1
	add ebx, 0x273
	cmp edi, [edx+0xc]
	jl G_VehiclesSetupSpawnedEnts_50
G_VehiclesSetupSpawnedEnts_20:
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0x168]
	mov [esp], eax
	call G_ModelName
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_cannot_f
	mov dword [esp], 0xf
	call Com_PrintWarning
G_VehiclesSetupSpawnedEnts_10:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x2c], 0x354
	cmp dword [ebp-0x1c], 0x8
	jnz G_VehiclesSetupSpawnedEnts_60
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_VehiclesSetupSpawnedEnts_40:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call SL_ConvertToString
	mov [ebp-0x20], eax
	mov [esp], eax
	call Com_IsLegacyXModelName
	mov edx, [ebp-0x20]
	add edx, 0x7
	test eax, eax
	cmovz edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz G_VehiclesSetupSpawnedEnts_70
	mov edx, level
	jmp G_VehiclesSetupSpawnedEnts_30
G_VehiclesSetupSpawnedEnts_70:
	mov eax, [esi+0x88]
	test eax, eax
	jnz G_VehiclesSetupSpawnedEnts_80
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x168]
	mov [esp], eax
	call G_ModelName
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_cannot_u
	mov dword [esp], 0xf
	call Com_PrintWarning
	jmp G_VehiclesSetupSpawnedEnts_10
G_VehiclesSetupSpawnedEnts_80:
	mov edx, [ebp-0x28]
	mov [edx+0x88], eax
	mov [esp], edx
	call SV_SetBrushModel
	mov ecx, [ebp-0x28]
	mov dword [ecx+0x120], 0x800000
	test byte [ecx+0x17c], 0x1
	jz G_VehiclesSetupSpawnedEnts_10
	mov dword [ecx+0x120], 0xa00000
	jmp G_VehiclesSetupSpawnedEnts_10
	nop


;Initialized global or static variables of g_vehicles_mp:
SECTION .data
s_vehicleFields: dd _cstring_type, 0x40, 0xc, _cstring_steerwheels, 0x44, 0x5, _cstring_texurescroll, 0x48, 0x5, _cstring_quadbarrel, 0x4c, 0x5, _cstring_bulletdamage, 0x50, 0x5, _cstring_armorpiercingdam, 0x54, 0x5, _cstring_grenadedamage, 0x58, 0x5, _cstring_projectiledamage, 0x5c, 0x5, _cstring_projectilesplash, 0x60, 0x5, _cstring_heavyexplosiveda, 0x64, 0x5, _cstring_texurescrollscal, 0x68, 0x6, _cstring_maxspeed, 0x6c, 0x6, _cstring_accel, 0x70, 0x6, _cstring_rotrate, 0x74, 0x6, _cstring_rotaccel, 0x78, 0x6, _cstring_collisiondamage, 0x84, 0x6, _cstring_collisionspeed, 0x88, 0x6, _cstring_suspensiontravel, 0x8c, 0x6, _cstring_maxbodypitch, 0x7c, 0x6, _cstring_maxbodyroll, 0x80, 0x6, _cstring_turretweapon, 0x90, 0x0, _cstring_turrethorizspanl, 0xd0, 0x6, _cstring_turrethorizspanr, 0xd4, 0x6, _cstring_turretvertspanup, 0xd8, 0x6, _cstring_turretvertspando, 0xdc, 0x6, _cstring_turretrotrate, 0xe0, 0x6, _cstring_lowidlesnd, 0xe4, 0x0, _cstring_highidlesnd, 0x124, 0x0, _cstring_lowenginesnd, 0x164, 0x0, _cstring_highenginesnd, 0x1a4, 0x0, _cstring_turretspinsnd, 0x1e4, 0x0, _cstring_turretstopsnd, 0x224, 0x0, _cstring_enginesndspeed, 0x26c, 0x6
s_vehicleTypeNames: dd _cstring_4_wheel, _cstring_tank, _cstring_plane, _cstring_boat, _cstring_artillery, _cstring_helicopter, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_vehicles_mp:
SECTION .rdata


;Zero initialized global or static variables of g_vehicles_mp:
SECTION .bss
s_phys: resb 0x40
s_backup: resb 0x1c0
s_numVehicleInfos: resb 0x1c
s_vehicles: resb 0x1aa0
vehDebugServer: resb 0x30
vehTestHorsepower: resb 0x4
vehTestMaxMPH: resb 0x4
vehTestWeight: resb 0x4
vehTextureScrollScale: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_bad_vehicle_fiel:		db 15h,"Bad vehicle field type %i",0ah,0
_cstring_unknown_vehicle_:		db 15h,"Unknown vehicle type [s]",0ah,0
_cstring_vehicless:		db "vehicles/%s",0
_cstring_vehiclefile:		db "VEHICLEFILE",0
_cstring_vehicle_file:		db "vehicle file",0
_cstring_warning_couldnt_:		db "WARNING: couldn",27h,"t find vehicle info for ",27h,"%s",27h,", attempting to use ",27h,"defaultvehicle",27h,".",0ah,0
_cstring_defaultvehicle_m:		db "defaultvehicle_mp",0
_cstring_cannot_find_vehi:		db 15h,"Cannot find vehicle info for ",27h,"defaultvehicle",27h,". This is a default vehicle info that you should have.",0ah,0
_cstring_script_vehicle_s:		db 15h,"Script vehicle [%s] needs [%s]",0ah,0
_cstring_vehicle_damage_t:		db "Vehicle damage to ent #%i: %.2f",0ah,0
_cstring_1f_mph_2f_dps:		db "%.1f MPH, %.2f DPS",0
_cstring_vehicletype:		db "vehicletype",0
_cstring_hit_max_vehicle_:		db 15h,"Hit max vehicle count [%d]",0ah,0
_cstring_vehicle_s_not_pr:		db "vehicle ",27h,"%s",27h," not precached",0
_cstring_cant_find_info_f:		db 15h,"Can",27h,"t find info for script vehicle [%s]",0ah,0
_cstring_warning_vehicle_:		db "WARNING: vehicle ",27h,"%s",27h," is missing a required tag! switching to default vehicle model and info.",0ah,0
_cstring_error_default_ve:		db "ERROR: default vehicle is missing a required tag!",0
_cstring_vehicleclearride:		db 15h,"VehicleClearRideSlotForPlayer(): player ent #%i was not using vehicle.",0ah,0
_cstring_g_vehunlinkplaye:		db 15h,"G_VehUnlinkPlayer: Player is not using a vehicle",0ah,0
_cstring_turn_on_debug_in:		db "Turn on debug information for vehicles",0
_cstring_vehdebugserver:		db "vehDebugServer",0
_cstring_scale_vehicle_te:		db "Scale vehicle texture scroll scale by this amount (debug only)",0
_cstring_vehtexturescroll:		db "vehTextureScrollScale",0
_cstring_null:		db 0
_cstring_vehtesthorsepowe:		db "vehTestHorsepower",0
_cstring_lbs:		db "lbs",0
_cstring_vehtestweight:		db "vehTestWeight",0
_cstring_vehtestmaxmph:		db "vehTestMaxMPH",0
_cstring_linkplayertovehi:		db 15h,"LinkPlayerToVehicle: Vehicle has all seats filled",0ah,0
_cstring_linkplayertovehi1:		db 15h,"LinkPlayerToVehicle: Player already has an owner",0ah,0
_cstring_linkplayertovehi2:		db 15h,"LinkPlayerToVehicle: Cannot link to vehicle bone ",22h,"%s",22h,0ah,0
_cstring_linkplayertovehi3:		db 15h,"LinkPlayerToVehicle: Tried to mount player on a full vehicle.",0ah,0
_cstring_vehiclegetplayer:		db 15h,"VehicleGetPlayerRideSlot(): player ent #%i was not using vehicle.",0ah,0
_cstring_tag_flash:		db "tag_flash",0
_cstring_couldnt_find_tag:		db 15h,"Couldn",27h,"t find tag ",22h,"%s",22h," on vehicle (entity %d).",0ah,0
_cstring_fireturret_weapd:		db 15h,"FireTurret(): WeapDef is not a bullet type.",0ah,0
_cstring_warning_cannot_f:		db "WARNING: Cannot find vehicle collmap for [%s]",0ah,0
_cstring_warning_cannot_u:		db "WARNING: Cannot use empty vehicle collmap for [%s]",0ah,0
_cstring_type:		db "type",0
_cstring_steerwheels:		db "steerWheels",0
_cstring_texurescroll:		db "texureScroll",0
_cstring_quadbarrel:		db "quadBarrel",0
_cstring_bulletdamage:		db "bulletDamage",0
_cstring_armorpiercingdam:		db "armorPiercingDamage",0
_cstring_grenadedamage:		db "grenadeDamage",0
_cstring_projectiledamage:		db "projectileDamage",0
_cstring_projectilesplash:		db "projectileSplashDamage",0
_cstring_heavyexplosiveda:		db "heavyExplosiveDamage",0
_cstring_texurescrollscal:		db "texureScrollScale",0
_cstring_maxspeed:		db "maxSpeed",0
_cstring_accel:		db "accel",0
_cstring_rotrate:		db "rotRate",0
_cstring_rotaccel:		db "rotAccel",0
_cstring_collisiondamage:		db "collisionDamage",0
_cstring_collisionspeed:		db "collisionSpeed",0
_cstring_suspensiontravel:		db "suspensionTravel",0
_cstring_maxbodypitch:		db "maxBodyPitch",0
_cstring_maxbodyroll:		db "maxBodyRoll",0
_cstring_turretweapon:		db "turretWeapon",0
_cstring_turrethorizspanl:		db "turretHorizSpanLeft",0
_cstring_turrethorizspanr:		db "turretHorizSpanRight",0
_cstring_turretvertspanup:		db "turretVertSpanUp",0
_cstring_turretvertspando:		db "turretVertSpanDown",0
_cstring_turretrotrate:		db "turretRotRate",0
_cstring_lowidlesnd:		db "lowIdleSnd",0
_cstring_highidlesnd:		db "highIdleSnd",0
_cstring_lowenginesnd:		db "lowEngineSnd",0
_cstring_highenginesnd:		db "highEngineSnd",0
_cstring_turretspinsnd:		db "turretSpinSnd",0
_cstring_turretstopsnd:		db "turretStopSnd",0
_cstring_enginesndspeed:		db "engineSndSpeed",0
_cstring_4_wheel:		db "4 wheel",0
_cstring_tank:		db "tank",0
_cstring_plane:		db "plane",0
_cstring_boat:		db "boat",0
_cstring_artillery:		db "artillery",0
_cstring_helicopter:		db "helicopter",0


;All constant floats and doubles:
SECTION .rdata
_float_17_60000038:		dd 0x418ccccd	; 17.6
_float_0_00549316:		dd 0x3bb40000	; 0.00549316
_float_180_00000000:		dd 0x43340000	; 180
_float_90_00000000:		dd 0x42b40000	; 90
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_float_20_00000000:		dd 0x41a00000	; 20
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_127_00000000:		dd 0x42fe0000	; 127
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_2_00000000:		dd 0x40000000	; 2
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_05681818:		dd 0x3d68ba2f	; 0.0568182
_float_10_00000000:		dd 0x41200000	; 10
_float_50_00000000:		dd 0x42480000	; 50
_float_40_00000000:		dd 0x42200000	; 40
_float_95_00000000:		dd 0x42be0000	; 95
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_15000001:		dd 0x3e19999a	; 0.15
_float_60_00000000:		dd 0x42700000	; 60
_float__60_00000000:		dd 0xc2700000	; -60
_float__800_00000000:		dd 0xc4480000	; -800
_float_64_00000000:		dd 0x42800000	; 64
_float_256_00000000:		dd 0x43800000	; 256
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_0_69999999:		dd 0x3f333333	; 0.7
_float_1_00999999:		dd 0x3f8147ae	; 1.01
_float_18_00000000:		dd 0x41900000	; 18
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_6600_00000000:		dd 0x45ce4000	; 6600
_float_5_00000000:		dd 0x40a00000	; 5
_float_30_00000000:		dd 0x41f00000	; 30
_float_29_89999962:		dd 0x41ef3333	; 29.9
_float_0_60000002:		dd 0x3f19999a	; 0.6
_float_999999_00000000:		dd 0x497423f0	; 999999
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_176_00000000:		dd 0x43300000	; 176
_float_126_00000000:		dd 0x42fc0000	; 126
_float__1_00000000:		dd 0xbf800000	; -1
_float_45_00000000:		dd 0x42340000	; 45
_float__45_00000000:		dd 0xc2340000	; -45
_float_0_19999999:		dd 0x3e4ccccc	; 0.2

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
