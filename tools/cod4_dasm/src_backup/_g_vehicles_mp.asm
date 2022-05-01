;Imports of g_vehicles_mp:
	extern strcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z9I_stricmpPKcS0_
	extern sprintf
	extern _Z18Com_LoadInfoStringPKcS0_S0_Pc
	extern memset
	extern _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	extern _Z17G_SoundAliasIndexPKc
	extern _Z16Com_PrintWarningiPKcz
	extern _Z17AngleNormalize360f
	extern floorf
	extern _Z29G_DObjGetLocalBoneIndexMatrixP9gentity_si
	extern _Z18SL_ConvertToStringj
	extern _Z18G_TryPushingEntityP9gentity_sS0_PfS1_
	extern g_entities
	extern _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	extern _Z15BG_GetWeaponDefj
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z15MatrixTransposePA3_KfPA3_f
	extern _Z14MatrixMultiplyPA3_KfS1_PA3_f
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z10Com_PrintfiPKcz
	extern entityHandlers
	extern _Z14AnglesSubtractPKfS0_Pf
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z12ExtendBoundsPfS_PKf
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern scr_const
	extern _Z19ExpandBoundsToWidthPfS_
	extern _Z16SV_EntityContactPKfS0_PK9gentity_s
	extern _Z18Scr_IsSystemActiveh
	extern _Z16SV_DObjGetBoundsP9gentity_sPfS1_
	extern _Z13Scr_AddEntityP9gentity_s
	extern _Z10Scr_NotifyP9gentity_stj
	extern _Z14DiffTrackAngleffff
	extern _Z23G_DebugLineWithDurationPKfS0_S0_ii
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern vec3_origin
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z10G_DebugBoxPKfS0_S0_fS0_ii
	extern _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	extern level
	extern _Z13G_DebugCirclePKffS0_iii
	extern colorYellow
	extern _Z11G_DebugLinePKfS0_S0_i
	extern _Z11G_DebugStarPKfS0_
	extern _Z2vaPKcz
	extern colorRed
	extern _Z19G_DebugStarWithTextPKfS0_S0_PKcf
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t
	extern _Z18G_LevelSpawnStringPKcS0_PS0_
	extern _Z12G_DObjUpdateP9gentity_s
	extern _Z23G_GetWeaponIndexForNamePKc
	extern _Z13SV_LinkEntityP9gentity_s
	extern _Z10Com_MemsetPvii
	extern _Z25BG_VehiclesGetSlotTagNamei
	extern _Z19SV_DObjGetBoneIndexPK9gentity_sj
	extern s_flashTags
	extern _Z11G_XModelBadi
	extern _Z15G_OverrideModeliPKc
	extern _Z16IsItemRegisteredi
	extern _Z9Scr_ErrorPKc
	extern _Z10G_SetModelP9gentity_sPKc
	extern _Z11G_ModelNamei
	extern _Z13Vec2NormalizePf
	extern _Z13Scr_SetStringPtj
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z14TeleportPlayerP9gentity_sPfS1_
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z11G_EntUnlinkP9gentity_s
	extern _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
	extern _Z21G_EntLinkToWithOffsetP9gentity_sS0_jPKfS2_
	extern memcpy
	extern sin
	extern _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	extern _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	extern _Z10G_AddEventP9gentity_sij
	extern _Z17Com_GetServerDObji
	extern _Z21DObjSetLocalBoneIndexP6DObj_sPiiPKfS3_
	extern _Z22Com_IsLegacyXModelNamePKc
	extern _Z16SV_SetBrushModelP9gentity_s

;Exports of g_vehicles_mp:
	global s_vehicleFields
	global s_vehicleTypeNames
	global _Z10VEH_StrcpyPhPKc
	global _Z22VEH_ParseSpecificFieldPhPKci
	global _Z13G_LoadVehiclePKc
	global _Z26VEH_GetVehicleInfoFromNamePKc
	global _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t
	global _Z18VEH_GetWheelOriginP9gentity_siPf
	global _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1_
	global _Z17VEH_TouchEntitiesP9gentity_sf
	global _Z15VEH_GroundPlantP9gentity_sif
	global _Z14InitFirstThinkP9gentity_s
	global _Z13VEH_SlideMoveP9gentity_sif
	global _Z17VEH_StepSlideMoveP9gentity_sif
	global _Z18IntegratePosAndRotP9gentity_sf
	global _Z11G_VehUsableP9gentity_sS0_
	global _Z12G_VehSpawnerP9gentity_s
	global _Z12SpawnVehicleP9gentity_sPKci
	global _Z17VEH_JoltBody_copyP9gentity_sPKffff
	global _Z14G_VehiclesIniti
	global _Z15G_VehFreeEntityP9gentity_s
	global _Z15VEH_SetPositionP9gentity_sPKfS2_
	global _Z17G_VehUnlinkPlayerP9gentity_sS0_
	global _Z18G_VehRegisterDvarsv
	global _Z18VEH_GetVehicleInfos
	global _Z19G_VehCollmapSpawnerP9gentity_s
	global _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti
	global _Z19G_VehEntHandler_UseP9gentity_sS0_S0_
	global _Z19G_VehImmuneToDamageP9gentity_siii
	global _Z19G_VehPlayerRideSlotP9gentity_si
	global _Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti
	global _Z21G_VehEntHandler_ThinkP9gentity_s
	global _Z21G_VehEntHandler_TouchP9gentity_sS0_i
	global _Z26G_VehEntHandler_ControllerPK9gentity_sPi
	global _Z26G_VehiclesSetupSpawnedEntsv
	global s_vehicleInfos
	global s_numVehicleInfos
	global s_vehicles
	global s_wheelTags
	global vehDebugServer
	global vehTestHorsepower
	global vehTestMaxMPH
	global vehTestWeight
	global vehTextureScrollScale


SECTION .text


;VEH_Strcpy(unsigned char*, char const*)
_Z10VEH_StrcpyPhPKc:
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
_Z22VEH_ParseSpecificFieldPhPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	cmp eax, 0xc
	jz _Z22VEH_ParseSpecificFieldPhPKci_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_bad_vehicle_fiel
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor eax, eax
_Z22VEH_ParseSpecificFieldPhPKci_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22VEH_ParseSpecificFieldPhPKci_10:
	xor esi, esi
	mov ebx, s_vehicleTypeNames
_Z22VEH_ParseSpecificFieldPhPKci_30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22VEH_ParseSpecificFieldPhPKci_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x6
	jnz _Z22VEH_ParseSpecificFieldPhPKci_30
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_unknown_vehicle_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22VEH_ParseSpecificFieldPhPKci_20:
	mov eax, [ebp+0x8]
	mov [eax+0x40], si
	mov eax, 0x1
	jmp _Z22VEH_ParseSpecificFieldPhPKci_40
	nop


;G_LoadVehicle(char const*)
_Z13G_LoadVehiclePKc:
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
	call _Z18Com_LoadInfoStringPKcS0_S0_Pc
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
	mov dword [esp+0x18], _Z10VEH_StrcpyPhPKc
	mov dword [esp+0x14], _Z22VEH_ParseSpecificFieldPhPKci
	mov dword [esp+0x10], 0xd
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x21
	mov dword [esp+0x4], s_vehicleFields
	mov [esp], edi
	call _Z25ParseConfigStringToStructPhPK10cspField_tiPKciPFiS_S4_iEPFvS_S4_E
	test eax, eax
	jz _Z13G_LoadVehiclePKc_10
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
	jmp _Z13G_LoadVehiclePKc_20
_Z13G_LoadVehiclePKc_40:
	mov byte [ebx+0x264], 0x0
	add dword [ebp-0x2060], 0x1
	add edi, 0x40
	add esi, 0x40
	add ebx, 0x1
	cmp dword [ebp-0x2060], 0x6
	jz _Z13G_LoadVehiclePKc_30
_Z13G_LoadVehiclePKc_20:
	cmp byte [esi+0xe4], 0x0
	jz _Z13G_LoadVehiclePKc_40
	mov [esp], edi
	call _Z17G_SoundAliasIndexPKc
	mov [ebx+0x264], al
	add dword [ebp-0x2060], 0x1
	add edi, 0x40
	add esi, 0x40
	add ebx, 0x1
	cmp dword [ebp-0x2060], 0x6
	jnz _Z13G_LoadVehiclePKc_20
_Z13G_LoadVehiclePKc_30:
	add word [s_numVehicleInfos], 0x1
	mov eax, [ebp-0x205c]
	add esp, 0x207c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13G_LoadVehiclePKc_10:
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
_Z26VEH_GetVehicleInfoFromNamePKc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, eax
	test eax, eax
	jnz _Z26VEH_GetVehicleInfoFromNamePKc_10
_Z26VEH_GetVehicleInfoFromNamePKc_20:
	mov ebx, 0xffffffff
_Z26VEH_GetVehicleInfoFromNamePKc_40:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z26VEH_GetVehicleInfoFromNamePKc_10:
	cmp byte [eax], 0x0
	jz _Z26VEH_GetVehicleInfoFromNamePKc_20
	cmp word [s_numVehicleInfos], 0x0
	jg _Z26VEH_GetVehicleInfoFromNamePKc_30
_Z26VEH_GetVehicleInfoFromNamePKc_80:
	mov eax, esi
	call _Z13G_LoadVehiclePKc
	mov ebx, eax
	test eax, eax
	jns _Z26VEH_GetVehicleInfoFromNamePKc_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_couldnt_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	cmp word [s_numVehicleInfos], 0x0
	jle _Z26VEH_GetVehicleInfoFromNamePKc_50
	xor ebx, ebx
	mov esi, s_vehicleInfos
_Z26VEH_GetVehicleInfoFromNamePKc_60:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_defaultvehicle_m
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26VEH_GetVehicleInfoFromNamePKc_40
	add ebx, 0x1
	add esi, 0x270
	movsx eax, word [s_numVehicleInfos]
	cmp ebx, eax
	jl _Z26VEH_GetVehicleInfoFromNamePKc_60
_Z26VEH_GetVehicleInfoFromNamePKc_50:
	mov eax, _cstring_defaultvehicle_m
	call _Z13G_LoadVehiclePKc
	mov ebx, eax
	test eax, eax
	jns _Z26VEH_GetVehicleInfoFromNamePKc_40
	mov dword [esp+0x4], _cstring_cannot_find_vehi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, 0xffffffff
	jmp _Z26VEH_GetVehicleInfoFromNamePKc_40
_Z26VEH_GetVehicleInfoFromNamePKc_30:
	xor ebx, ebx
_Z26VEH_GetVehicleInfoFromNamePKc_70:
	lea eax, [ebx+ebx*4]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x4
	add eax, s_vehicleInfos
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26VEH_GetVehicleInfoFromNamePKc_40
	add ebx, 0x1
	movsx eax, word [s_numVehicleInfos]
	cmp ebx, eax
	jl _Z26VEH_GetVehicleInfoFromNamePKc_70
	jmp _Z26VEH_GetVehicleInfoFromNamePKc_80
	add [eax], al


;VEH_PlayerRotation(gentity_s*, vehicle_physic_t*)
_Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	cvtsi2ss xmm0, dword [eax+0x2f9c]
	mulss xmm0, [_float_0_00549316]
	addss xmm0, [_float_180_00000000]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [_float_90_00000000]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x1c]
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call _Z17AngleNormalize360f
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
	jb _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_10
	movsx edx, al
	mov eax, edx
	shl eax, 0x7
	sub eax, edx
	movsx eax, al
	leave
	ret
_Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_10:
	ucomiss xmm1, [_float_0_01000000]
	jb _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_20
_Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_30:
	divss xmm1, dword [_float_20_00000000]
	mulss xmm1, [_float_127_00000000]
	cvttss2si eax, xmm1
	mul cl
	movsx eax, al
	leave
	ret
_Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_20:
	jp _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t_30
	xor eax, eax
	leave
	ret
	nop


;VEH_GetWheelOrigin(gentity_s*, int, float*)
_Z18VEH_GetWheelOriginP9gentity_siPf:
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
	js _Z18VEH_GetWheelOriginP9gentity_siPf_10
_Z18VEH_GetWheelOriginP9gentity_siPf_50:
	mov eax, [edi+ebx*4+0x33c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z29G_DObjGetLocalBoneIndexMatrixP9gentity_si
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
	jz _Z18VEH_GetWheelOriginP9gentity_siPf_20
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
	ja _Z18VEH_GetWheelOriginP9gentity_siPf_30
_Z18VEH_GetWheelOriginP9gentity_siPf_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18VEH_GetWheelOriginP9gentity_siPf_30:
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z18VEH_GetWheelOriginP9gentity_siPf_40
	movss xmm1, dword [_float_1_00000000]
_Z18VEH_GetWheelOriginP9gentity_siPf_60:
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
_Z18VEH_GetWheelOriginP9gentity_siPf_10:
	mov eax, [edx*4+s_wheelTags]
	movzx eax, word [eax]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [ebp-0x20], eax
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov edx, [ebp-0x20]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_script_vehicle_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18VEH_GetWheelOriginP9gentity_siPf_50
_Z18VEH_GetWheelOriginP9gentity_siPf_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z18VEH_GetWheelOriginP9gentity_siPf_60
	nop


;VEH_PushEntity(gentity_s*, gentity_s*, float, float*, float*, float*)
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1_:
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
	jz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__10
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30:
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__10:
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
	jae _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__20
	jp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__20
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
	ja _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__20:
	mov eax, [edi+0x7c]
	cmp eax, [esi]
	jz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__40
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__120:
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z18G_TryPushingEntityP9gentity_sS0_PfS1_
	test eax, eax
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__50
	cmp byte [edi+0x16b], 0x0
	jz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
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
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__60
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__130:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xf423f
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__110:
	lea eax, [edi+0x13c]
	mov [esp+0x10], eax
	mov edx, [ebp-0x120]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__50:
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
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
	mov eax, [edi+0x7c]
	cmp eax, [esi]
	jz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
	ucomiss xmm0, [_float_10_00000000]
	jp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__70
	jb _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__70:
	ucomiss xmm0, [_float_50_00000000]
	jp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__80
	jb _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__90
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__80:
	mov dword [ebp-0xfc], 0x64
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__140:
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
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__100
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__150:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov eax, [ebp-0xfc]
	mov [esp+0x14], eax
	jmp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__110
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__40:
	cmp dword [edi+0x4], 0x4
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__120
	mov eax, [edi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x5a4], 0x1
	jnz _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__120
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
	call _Z12AnglesToAxisPKfPA3_f
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x124]
	add eax, 0xe4
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0x84]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15MatrixTransposePA3_KfPA3_f
	lea edx, [ebp-0xa8]
	mov [esp+0x8], edx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
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
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0xf0]
	mov [esp+0x8], esi
	lea eax, [ebp-0xa8]
	mov [esp+0x4], eax
	lea edx, [ebp-0xcc]
	mov [esp], edx
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12AxisToAnglesPA3_KfPf
	lea edx, [edi+0x3c]
	mov eax, [edi+0x148]
	mov [edi+0x3c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	jmp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__30
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__60:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__130
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__90:
	subss xmm0, [_float_10_00000000]
	divss xmm0, dword [_float_40_00000000]
	mulss xmm0, [_float_95_00000000]
	cvttss2si eax, xmm0
	mov [ebp-0xfc], eax
	jmp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__140
_Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__100:
	mov edx, [ebp-0xfc]
	mov [esp+0xc], edx
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1__150


;VEH_TouchEntities(gentity_s*, float)
_Z17VEH_TouchEntitiesP9gentity_sf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10cc
	mov eax, [ebp+0x8]
	cmp byte [eax+0xf5], 0x0
	jnz _Z17VEH_TouchEntitiesP9gentity_sf_10
_Z17VEH_TouchEntitiesP9gentity_sf_20:
	add esp, 0x10cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17VEH_TouchEntitiesP9gentity_sf_10:
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
	call _Z14AnglesSubtractPKfS0_Pf
	lea eax, [edi+0x138]
	mov [ebp-0x1098], eax
	lea edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov eax, [ebp+0x8]
	add eax, 0x114
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	add eax, 0x108
	mov [esp], eax
	call _Z16RadiusFromBoundsPKfS0_
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
	call _Z12ExtendBoundsPfS_PKf
	mov dword [esp+0x10], 0x2806081
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x106c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x108c], eax
	test eax, eax
	jle _Z17VEH_TouchEntitiesP9gentity_sf_20
	mov dword [ebp-0x1088], 0x0
	mov eax, g_entities
	mov [ebp-0x109c], eax
	add edi, 0x114
	mov [ebp-0x107c], edi
	mov ecx, [ebp-0x1088]
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_30
_Z17VEH_TouchEntitiesP9gentity_sf_60:
	cmp eax, 0x6
	jz _Z17VEH_TouchEntitiesP9gentity_sf_40
	cmp eax, 0xe
	jz _Z17VEH_TouchEntitiesP9gentity_sf_40
	cmp eax, 0x4
	jz _Z17VEH_TouchEntitiesP9gentity_sf_40
_Z17VEH_TouchEntitiesP9gentity_sf_50:
	add dword [ebp-0x1088], 0x1
	mov edx, [ebp-0x1088]
	cmp [ebp-0x108c], edx
	jz _Z17VEH_TouchEntitiesP9gentity_sf_20
	mov ecx, edx
_Z17VEH_TouchEntitiesP9gentity_sf_30:
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
	jz _Z17VEH_TouchEntitiesP9gentity_sf_50
	mov eax, [esi+0x4]
	cmp eax, 0x1
	jnz _Z17VEH_TouchEntitiesP9gentity_sf_60
_Z17VEH_TouchEntitiesP9gentity_sf_40:
	cmp word [esi+0x154], 0x0
	jz _Z17VEH_TouchEntitiesP9gentity_sf_70
	cmp eax, 0x4
	jnz _Z17VEH_TouchEntitiesP9gentity_sf_50
	movzx eax, word [esi+0x154]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea edx, [edx+eax-0x274]
	add edx, [ebp-0x109c]
	cmp [ebp+0x8], edx
	jz _Z17VEH_TouchEntitiesP9gentity_sf_50
_Z17VEH_TouchEntitiesP9gentity_sf_70:
	cmp ebx, [esi+0x7c]
	jz _Z17VEH_TouchEntitiesP9gentity_sf_80
	movzx eax, word [esi+0x170]
	mov ecx, scr_const
	cmp ax, [ecx+0x70]
	jz _Z17VEH_TouchEntitiesP9gentity_sf_90
	cmp ax, [ecx+0xf8]
	jz _Z17VEH_TouchEntitiesP9gentity_sf_100
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
_Z17VEH_TouchEntitiesP9gentity_sf_150:
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z19ExpandBoundsToWidthPfS_
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z16SV_EntityContactPKfS0_PK9gentity_s
	test eax, eax
	jz _Z17VEH_TouchEntitiesP9gentity_sf_50
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jnz _Z17VEH_TouchEntitiesP9gentity_sf_110
_Z17VEH_TouchEntitiesP9gentity_sf_160:
	test edi, edi
	jz _Z17VEH_TouchEntitiesP9gentity_sf_120
	mov dword [esp+0x8], 0x1
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], esi
	call edi
_Z17VEH_TouchEntitiesP9gentity_sf_120:
	mov eax, [ebp-0x1090]
	test eax, eax
	jz _Z17VEH_TouchEntitiesP9gentity_sf_130
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [ebp-0x1090]
_Z17VEH_TouchEntitiesP9gentity_sf_130:
	mov eax, [esi+0x4]
	cmp eax, 0x1
	jz _Z17VEH_TouchEntitiesP9gentity_sf_80
	cmp eax, 0xe
	jnz _Z17VEH_TouchEntitiesP9gentity_sf_50
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
	jb _Z17VEH_TouchEntitiesP9gentity_sf_140
	movss xmm1, dword [_float_1_00000000]
_Z17VEH_TouchEntitiesP9gentity_sf_170:
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
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_50
_Z17VEH_TouchEntitiesP9gentity_sf_90:
	cmp word [esi+0x168], 0x0
	jz _Z17VEH_TouchEntitiesP9gentity_sf_50
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z16SV_DObjGetBoundsP9gentity_sPfS1_
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
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_150
_Z17VEH_TouchEntitiesP9gentity_sf_100:
	cmp word [esi+0x168], 0x0
	jz _Z17VEH_TouchEntitiesP9gentity_sf_50
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
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_150
_Z17VEH_TouchEntitiesP9gentity_sf_80:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea edx, [ebp-0x24]
	mov [esp], edx
	lea ecx, [ebp-0x6c]
	movss xmm0, dword [ebp+0xc]
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z14VEH_PushEntityP9gentity_sS0_fPfS1_S1_
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_50
_Z17VEH_TouchEntitiesP9gentity_sf_110:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov ebx, scr_const
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
	mov [esp], esi
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	movzx eax, word [ebx+0xba]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_160
_Z17VEH_TouchEntitiesP9gentity_sf_140:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm6
	jmp _Z17VEH_TouchEntitiesP9gentity_sf_170
	nop


;VEH_GroundPlant(gentity_s*, int, float)
_Z15VEH_GroundPlantP9gentity_sif:
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
	call _Z12AnglesToAxisPKfPA3_f
	test edi, edi
	jg _Z15VEH_GroundPlantP9gentity_sif_10
_Z15VEH_GroundPlantP9gentity_sif_160:
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
	jb _Z15VEH_GroundPlantP9gentity_sif_20
	movss xmm0, dword [_float_1_00000000]
_Z15VEH_GroundPlantP9gentity_sif_270:
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
	jb _Z15VEH_GroundPlantP9gentity_sif_30
	movss xmm0, dword [_float_1_00000000]
_Z15VEH_GroundPlantP9gentity_sif_290:
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
	jle _Z15VEH_GroundPlantP9gentity_sif_40
	mov eax, [ebp-0x184]
	movss xmm3, dword [eax+0x8c]
	mov edx, 0x1
	lea eax, [ebp-0xf4]
_Z15VEH_GroundPlantP9gentity_sif_60:
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
	jbe _Z15VEH_GroundPlantP9gentity_sif_50
	subss xmm2, xmm3
	movss [ebp-0x14c], xmm2
_Z15VEH_GroundPlantP9gentity_sif_50:
	add edx, 0x1
	add eax, 0xc
	cmp edi, edx
	jnz _Z15VEH_GroundPlantP9gentity_sif_60
	movss xmm3, dword [ebp-0x144]
	movss xmm0, dword [ebp-0x148]
	movss xmm1, dword [ebp-0x144]
_Z15VEH_GroundPlantP9gentity_sif_130:
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
	jb _Z15VEH_GroundPlantP9gentity_sif_70
	movss xmm1, dword [_float_1_00000000]
_Z15VEH_GroundPlantP9gentity_sif_280:
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
	jb _Z15VEH_GroundPlantP9gentity_sif_80
	movss xmm1, dword [_float_1_00000000]
_Z15VEH_GroundPlantP9gentity_sif_260:
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
	call _Z12AxisToAnglesPA3_KfPf
	movss xmm0, dword [ebp-0x1a0]
	movss [esp+0xc], xmm0
	mov ebx, 0x40c00000
	mov [esp+0x8], ebx
	mov edx, [ebp-0x188]
	mov eax, [edx+0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp], eax
	call _Z14DiffTrackAngleffff
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
	call _Z14DiffTrackAngleffff
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
	jnz _Z15VEH_GroundPlantP9gentity_sif_90
	movss xmm0, dword [ebp-0x148]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z15VEH_GroundPlantP9gentity_sif_100
	jnz _Z15VEH_GroundPlantP9gentity_sif_100
_Z15VEH_GroundPlantP9gentity_sif_90:
	mov ebx, [ebp-0x188]
	add ebx, 0x90
	mov [esp+0x8], ebx
	mov eax, [ebp-0x188]
	add eax, 0x24
	mov [esp+0x4], eax
	mov eax, [ebp-0x194]
	mov [esp], eax
	call _Z14AnglesSubtractPKfS0_Pf
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
	jz _Z15VEH_GroundPlantP9gentity_sif_110
	xor ebx, ebx
	lea edi, [ebp-0x130]
	mov ecx, edi
	lea esi, [ebp-0x100]
	xor edx, edx
_Z15VEH_GroundPlantP9gentity_sif_120:
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
	jnz _Z15VEH_GroundPlantP9gentity_sif_120
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
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
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
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
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
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
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
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
_Z15VEH_GroundPlantP9gentity_sif_110:
	add esp, 0x1cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15VEH_GroundPlantP9gentity_sif_40:
	movaps xmm3, xmm7
	movaps xmm0, xmm2
	movaps xmm1, xmm7
	jmp _Z15VEH_GroundPlantP9gentity_sif_130
_Z15VEH_GroundPlantP9gentity_sif_100:
	movss xmm0, dword [ebp-0x140]
	mulss xmm0, [ebx]
	movss xmm1, dword [ebp-0x144]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	subss xmm0, [ebp-0x14c]
	xorps xmm0, [_data16_80000000]
	divss xmm0, dword [ebp-0x148]
	movss [ebx+0x8], xmm0
	jmp _Z15VEH_GroundPlantP9gentity_sif_90
_Z15VEH_GroundPlantP9gentity_sif_10:
	movss xmm0, dword [ebp-0x1a0]
	mulss xmm0, [_float__800_00000000]
	movss [ebp-0x190], xmm0
	mov ebx, [ebp-0x188]
	mov dword [ebp-0x180], 0x0
	lea esi, [ebp-0x100]
	mov [ebp-0x1a4], esi
	jmp _Z15VEH_GroundPlantP9gentity_sif_140
_Z15VEH_GroundPlantP9gentity_sif_200:
	mov eax, [ebp-0x34]
	mov [ebx+0xc0], eax
	mov dword [ebx+0xb0], 0x0
_Z15VEH_GroundPlantP9gentity_sif_210:
	mov eax, [ebp-0x3c]
	mov [esi], eax
	mov eax, [ebp-0x38]
	mov [esi+0x4], eax
	mov eax, [ebx+0xc0]
	mov [esi+0x8], eax
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz _Z15VEH_GroundPlantP9gentity_sif_150
_Z15VEH_GroundPlantP9gentity_sif_220:
	add dword [ebp-0x180], 0x1
	add dword [ebp-0x1a4], 0xc
	add esi, 0xc
	add ebx, 0x4
	cmp edi, [ebp-0x180]
	jz _Z15VEH_GroundPlantP9gentity_sif_160
_Z15VEH_GroundPlantP9gentity_sif_140:
	lea ecx, [ebp-0x48]
	mov edx, [ebp-0x180]
	mov eax, [ebp-0x198]
	call _Z18VEH_GetWheelOriginP9gentity_siPf
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea edx, [ebp-0xd0]
	mov [esp+0x4], edx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	mov ecx, [vehDebugServer]
	cmp byte [ecx+0xc], 0x0
	jnz _Z15VEH_GroundPlantP9gentity_sif_170
_Z15VEH_GroundPlantP9gentity_sif_240:
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
	jnz _Z15VEH_GroundPlantP9gentity_sif_180
_Z15VEH_GroundPlantP9gentity_sif_230:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0xa0]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, xmm2
	ja _Z15VEH_GroundPlantP9gentity_sif_190
	mov eax, [ebp-0x30]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x34], eax
	mov dword [ebx+0xd0], 0x0
_Z15VEH_GroundPlantP9gentity_sif_250:
	mov eax, [ebp-0x19c]
	test eax, eax
	jz _Z15VEH_GroundPlantP9gentity_sif_200
	movss xmm0, dword [ebp-0x190]
	addss xmm0, [ebx+0xb0]
	movss [ebx+0xb0], xmm0
	mulss xmm0, [ebp-0x1a0]
	addss xmm0, [ebx+0xc0]
	movss [ebx+0xc0], xmm0
	movss xmm1, dword [ebp-0x34]
	ucomiss xmm1, xmm0
	jbe _Z15VEH_GroundPlantP9gentity_sif_210
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
	jz _Z15VEH_GroundPlantP9gentity_sif_220
_Z15VEH_GroundPlantP9gentity_sif_150:
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
	call _Z10G_DebugBoxPKfS0_S0_fS0_ii
	jmp _Z15VEH_GroundPlantP9gentity_sif_220
_Z15VEH_GroundPlantP9gentity_sif_180:
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
	call _Z23G_DebugLineWithDurationPKfS0_S0_ii
	jmp _Z15VEH_GroundPlantP9gentity_sif_230
_Z15VEH_GroundPlantP9gentity_sif_170:
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
	call _Z10G_DebugBoxPKfS0_S0_fS0_ii
	mov ecx, [vehDebugServer]
	jmp _Z15VEH_GroundPlantP9gentity_sif_240
_Z15VEH_GroundPlantP9gentity_sif_190:
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
	jmp _Z15VEH_GroundPlantP9gentity_sif_250
_Z15VEH_GroundPlantP9gentity_sif_80:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z15VEH_GroundPlantP9gentity_sif_260
_Z15VEH_GroundPlantP9gentity_sif_20:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z15VEH_GroundPlantP9gentity_sif_270
_Z15VEH_GroundPlantP9gentity_sif_70:
	movss xmm4, dword [_float_1_00000000]
	divss xmm4, xmm1
	movaps xmm1, xmm4
	jmp _Z15VEH_GroundPlantP9gentity_sif_280
_Z15VEH_GroundPlantP9gentity_sif_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z15VEH_GroundPlantP9gentity_sif_290
	nop


;InitFirstThink(gentity_s*)
_Z14InitFirstThinkP9gentity_s:
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
	jbe _Z14InitFirstThinkP9gentity_s_10
	mov ebx, ecx
_Z14InitFirstThinkP9gentity_s_40:
	mov esi, [ebp-0x4c]
	mov edi, 0x4
_Z14InitFirstThinkP9gentity_s_30:
	mov eax, [ebx+0x33c]
	test eax, eax
	js _Z14InitFirstThinkP9gentity_s_20
	lea ecx, [ebp-0x24]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	mov eax, [ebp-0x1c]
	mov [esi+0xc0], eax
_Z14InitFirstThinkP9gentity_s_20:
	add ebx, 0x4
	add esi, 0x4
	sub edi, 0x1
	jnz _Z14InitFirstThinkP9gentity_s_30
	movss xmm0, dword [_float_0_05000000]
	xor edx, edx
	mov eax, [ebp+0x8]
	call _Z15VEH_GroundPlantP9gentity_sif
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
	call _Z17VEH_TouchEntitiesP9gentity_sf
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
_Z14InitFirstThinkP9gentity_s_10:
	lea ecx, [ebp-0x30]
	xor edx, edx
	mov eax, [ebp+0x8]
	call _Z18VEH_GetWheelOriginP9gentity_siPf
	lea ecx, [ebp-0x3c]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call _Z18VEH_GetWheelOriginP9gentity_siPf
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
	jmp _Z14InitFirstThinkP9gentity_s_40
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
	jz _Z13VEH_SlideMoveP9gentity_sif_10
	mulss xmm0, [_float__800_00000000]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	addss xmm0, [ebx+0x80]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x80], xmm0
	mov eax, [s_phys+0x2c]
	test eax, eax
	jnz _Z13VEH_SlideMoveP9gentity_sif_20
_Z13VEH_SlideMoveP9gentity_sif_330:
	xor edx, edx
	mov dword [ebp-0xbc], 0x1
_Z13VEH_SlideMoveP9gentity_sif_340:
	lea eax, [edx+edx]
	add eax, edx
	lea eax, [ebp+eax*4-0xb0]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15Vec3NormalizeToPKfPf
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
_Z13VEH_SlideMoveP9gentity_sif_100:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x4b], 0x0
	jnz _Z13VEH_SlideMoveP9gentity_sif_30
	movss xmm2, dword [ebp-0x74]
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jbe _Z13VEH_SlideMoveP9gentity_sif_40
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
_Z13VEH_SlideMoveP9gentity_sif_40:
	ucomiss xmm2, [_float_1_00000000]
	jp _Z13VEH_SlideMoveP9gentity_sif_50
	jz _Z13VEH_SlideMoveP9gentity_sif_60
_Z13VEH_SlideMoveP9gentity_sif_50:
	mulss xmm2, [ebp-0xdc]
	movss xmm1, dword [ebp-0xdc]
	subss xmm1, xmm2
	movss [ebp-0xdc], xmm1
	cmp dword [ebp-0xbc], 0x4
	jg _Z13VEH_SlideMoveP9gentity_sif_70
	mov edi, [ebp-0xbc]
	test edi, edi
	jle _Z13VEH_SlideMoveP9gentity_sif_80
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
	jbe _Z13VEH_SlideMoveP9gentity_sif_90
_Z13VEH_SlideMoveP9gentity_sif_310:
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
_Z13VEH_SlideMoveP9gentity_sif_110:
	add dword [ebp-0xd8], 0x1
	cmp dword [ebp-0xd8], 0x4
	jz _Z13VEH_SlideMoveP9gentity_sif_60
_Z13VEH_SlideMoveP9gentity_sif_270:
	movss xmm0, dword [ebp-0xdc]
	jmp _Z13VEH_SlideMoveP9gentity_sif_100
_Z13VEH_SlideMoveP9gentity_sif_80:
	movss xmm3, dword [ebp-0x70]
_Z13VEH_SlideMoveP9gentity_sif_290:
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
	jle _Z13VEH_SlideMoveP9gentity_sif_110
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
	jae _Z13VEH_SlideMoveP9gentity_sif_120
	mov dword [ebp-0xc0], 0x0
	mov edx, [ebp-0xc0]
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_sif_130
_Z13VEH_SlideMoveP9gentity_sif_360:
	movss xmm3, dword [esi]
_Z13VEH_SlideMoveP9gentity_sif_370:
	movaps xmm1, xmm3
	mulss xmm1, [ecx]
	mulss xmm4, [ecx+0x4]
	addss xmm1, xmm4
	mulss xmm5, [ecx+0x8]
	addss xmm1, xmm5
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z13VEH_SlideMoveP9gentity_sif_140
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_sif_570:
	mov edx, 0x1
	lea edi, [ebp-0x24]
_Z13VEH_SlideMoveP9gentity_sif_150:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+eax-0x4]
	movss xmm0, dword [esi+eax-0x4]
	subss xmm0, xmm1
	movss [edi+eax-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_sif_150
	mov eax, [ebp-0xc8]
	movss xmm0, dword [eax]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_sif_160
_Z13VEH_SlideMoveP9gentity_sif_380:
	movss xmm4, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x28]
_Z13VEH_SlideMoveP9gentity_sif_390:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mulss xmm2, [ecx+0x4]
	addss xmm0, xmm2
	mulss xmm3, [ecx+0x8]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_sif_170
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_sif_560:
	mov edx, 0x1
	lea edi, [ebp-0x30]
_Z13VEH_SlideMoveP9gentity_sif_180:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [edi+eax-0x4]
	subss xmm0, xmm1
	movss [ebp+eax-0x40], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_sif_180
_Z13VEH_SlideMoveP9gentity_sif_400:
	mov dword [ebp-0xd4], 0x0
	movss xmm6, dword [ebp-0x24]
	mov eax, [ebp-0xe0]
	add eax, 0x4
	mov [ebp-0xf8], eax
	mov edx, [ebp-0xe0]
	add edx, 0x8
	mov [ebp-0xfc], edx
	lea ecx, [ebp-0xb0]
_Z13VEH_SlideMoveP9gentity_sif_260:
	mov eax, [ebp-0xc0]
	cmp [ebp-0xd4], eax
	jz _Z13VEH_SlideMoveP9gentity_sif_190
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
	jae _Z13VEH_SlideMoveP9gentity_sif_190
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_sif_200
_Z13VEH_SlideMoveP9gentity_sif_450:
	movaps xmm0, xmm3
	addss xmm0, xmm5
	addss xmm0, xmm7
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_sif_210
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_sif_480:
	mov edx, 0x1
	lea eax, [ebp-0x24]
	add eax, 0x4
_Z13VEH_SlideMoveP9gentity_sif_220:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_sif_220
_Z13VEH_SlideMoveP9gentity_sif_460:
	movss xmm0, dword [edi]
	ucomiss xmm0, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_sif_230
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
	jb _Z13VEH_SlideMoveP9gentity_sif_240
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
_Z13VEH_SlideMoveP9gentity_sif_440:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_250
_Z13VEH_SlideMoveP9gentity_sif_190:
	add dword [ebp-0xd4], 0x1
	add ecx, 0xc
	mov eax, [ebp-0xd4]
	cmp [ebp-0xbc], eax
	jnz _Z13VEH_SlideMoveP9gentity_sif_260
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
	jnz _Z13VEH_SlideMoveP9gentity_sif_270
_Z13VEH_SlideMoveP9gentity_sif_60:
	mov edx, [ebp-0xe8]
	test edx, edx
	jnz _Z13VEH_SlideMoveP9gentity_sif_280
_Z13VEH_SlideMoveP9gentity_sif_410:
	xor eax, eax
	cmp dword [ebp-0xd8], 0x0
	setnz al
_Z13VEH_SlideMoveP9gentity_sif_580:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13VEH_SlideMoveP9gentity_sif_90:
	xor edx, edx
_Z13VEH_SlideMoveP9gentity_sif_300:
	add edx, 0x1
	cmp [ebp-0xbc], edx
	jz _Z13VEH_SlideMoveP9gentity_sif_290
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
	jbe _Z13VEH_SlideMoveP9gentity_sif_300
	jmp _Z13VEH_SlideMoveP9gentity_sif_310
_Z13VEH_SlideMoveP9gentity_sif_20:
	movss xmm3, dword [s_phys+0xc]
	ucomiss xmm3, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_sif_320
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
	jb _Z13VEH_SlideMoveP9gentity_sif_320
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
_Z13VEH_SlideMoveP9gentity_sif_10:
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz _Z13VEH_SlideMoveP9gentity_sif_330
_Z13VEH_SlideMoveP9gentity_sif_550:
	mov eax, [s_phys+0x4]
	mov [ebp-0xb0], eax
	mov eax, [s_phys+0x8]
	mov [ebp-0xac], eax
	mov eax, [s_phys+0xc]
	mov [ebp-0xa8], eax
	mov edx, 0x1
	mov dword [ebp-0xbc], 0x2
	jmp _Z13VEH_SlideMoveP9gentity_sif_340
_Z13VEH_SlideMoveP9gentity_sif_120:
	mov dword [ebp-0xc0], 0x0
_Z13VEH_SlideMoveP9gentity_sif_350:
	add dword [ebp-0xc0], 0x1
	mov edx, [ebp-0xc0]
	cmp [ebp-0xbc], edx
	jz _Z13VEH_SlideMoveP9gentity_sif_110
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
	jae _Z13VEH_SlideMoveP9gentity_sif_350
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_sif_360
_Z13VEH_SlideMoveP9gentity_sif_130:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_370
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
	jb _Z13VEH_SlideMoveP9gentity_sif_380
_Z13VEH_SlideMoveP9gentity_sif_160:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_390
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
	jmp _Z13VEH_SlideMoveP9gentity_sif_400
_Z13VEH_SlideMoveP9gentity_sif_280:
	mov eax, [ebp-0x30]
	mov [esi], eax
	mov eax, [ebp-0x2c]
	mov [esi+0x4], eax
	mov eax, [ebp-0x28]
	mov [esi+0x8], eax
	jmp _Z13VEH_SlideMoveP9gentity_sif_410
_Z13VEH_SlideMoveP9gentity_sif_230:
	movss xmm4, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x34]
_Z13VEH_SlideMoveP9gentity_sif_240:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mov eax, [ebp-0xc4]
	mulss xmm2, [eax]
	addss xmm0, xmm2
	mulss xmm3, [edi]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_sif_420
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_sif_470:
	mov edx, 0x1
	lea eax, [ebp-0x3c]
	add eax, 0x4
_Z13VEH_SlideMoveP9gentity_sif_430:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_sif_430
	jmp _Z13VEH_SlideMoveP9gentity_sif_440
_Z13VEH_SlideMoveP9gentity_sif_200:
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z13VEH_SlideMoveP9gentity_sif_450
	movaps xmm0, xmm6
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mulss xmm6, [ecx+0x8]
	movss [ebp-0x24], xmm6
	mulss xmm4, [ecx+0x8]
	movss [ebp-0x20], xmm4
	jmp _Z13VEH_SlideMoveP9gentity_sif_460
_Z13VEH_SlideMoveP9gentity_sif_420:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_sif_470
_Z13VEH_SlideMoveP9gentity_sif_210:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_sif_480
_Z13VEH_SlideMoveP9gentity_sif_250:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_490
	movss xmm0, dword [_float_1_00000000]
_Z13VEH_SlideMoveP9gentity_sif_590:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_500
	movss xmm0, dword [_float_1_00000000]
_Z13VEH_SlideMoveP9gentity_sif_600:
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
	jmp _Z13VEH_SlideMoveP9gentity_sif_510
_Z13VEH_SlideMoveP9gentity_sif_520:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0xbc], edx
	jz _Z13VEH_SlideMoveP9gentity_sif_190
_Z13VEH_SlideMoveP9gentity_sif_510:
	cmp edx, [ebp-0xc0]
	jz _Z13VEH_SlideMoveP9gentity_sif_520
	cmp [ebp-0xd4], edx
	jz _Z13VEH_SlideMoveP9gentity_sif_520
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jae _Z13VEH_SlideMoveP9gentity_sif_520
_Z13VEH_SlideMoveP9gentity_sif_70:
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
_Z13VEH_SlideMoveP9gentity_sif_320:
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
	jb _Z13VEH_SlideMoveP9gentity_sif_530
_Z13VEH_SlideMoveP9gentity_sif_610:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_sif_620:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [esi+0x4]
_Z13VEH_SlideMoveP9gentity_sif_540:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_sif_540
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz _Z13VEH_SlideMoveP9gentity_sif_330
	jmp _Z13VEH_SlideMoveP9gentity_sif_550
_Z13VEH_SlideMoveP9gentity_sif_170:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_sif_560
_Z13VEH_SlideMoveP9gentity_sif_140:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_sif_570
_Z13VEH_SlideMoveP9gentity_sif_30:
	mov dword [ebx+0x80], 0x0
	mov eax, 0x1
	jmp _Z13VEH_SlideMoveP9gentity_sif_580
_Z13VEH_SlideMoveP9gentity_sif_490:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z13VEH_SlideMoveP9gentity_sif_590
_Z13VEH_SlideMoveP9gentity_sif_500:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp _Z13VEH_SlideMoveP9gentity_sif_600
_Z13VEH_SlideMoveP9gentity_sif_530:
	jp _Z13VEH_SlideMoveP9gentity_sif_610
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_sif_620
	nop


;VEH_StepSlideMove(gentity_s*, int, float)
_Z17VEH_StepSlideMoveP9gentity_sif:
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
	jnz _Z17VEH_StepSlideMoveP9gentity_sif_10
_Z17VEH_StepSlideMoveP9gentity_sif_40:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17VEH_StepSlideMoveP9gentity_sif_10:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	mov eax, [ebp-0x80]
	movss xmm0, dword [eax+0x80]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z17VEH_StepSlideMoveP9gentity_sif_20
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jp _Z17VEH_StepSlideMoveP9gentity_sif_30
	jz _Z17VEH_StepSlideMoveP9gentity_sif_40
_Z17VEH_StepSlideMoveP9gentity_sif_30:
	movss xmm0, dword [_float_0_69999999]
	ucomiss xmm0, [ebp-0x5c]
	ja _Z17VEH_StepSlideMoveP9gentity_sif_40
_Z17VEH_StepSlideMoveP9gentity_sif_20:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x3f], 0x0
	jnz _Z17VEH_StepSlideMoveP9gentity_sif_40
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x3f], 0x0
	jnz _Z17VEH_StepSlideMoveP9gentity_sif_50
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
_Z17VEH_StepSlideMoveP9gentity_sif_50:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jbe _Z17VEH_StepSlideMoveP9gentity_sif_40
	movss xmm3, dword [ebp-0x5c]
	ucomiss xmm3, [_float_0_69999999]
	jb _Z17VEH_StepSlideMoveP9gentity_sif_60
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
	jb _Z17VEH_StepSlideMoveP9gentity_sif_60
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
	jmp _Z17VEH_StepSlideMoveP9gentity_sif_40
_Z17VEH_StepSlideMoveP9gentity_sif_60:
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
	jb _Z17VEH_StepSlideMoveP9gentity_sif_70
_Z17VEH_StepSlideMoveP9gentity_sif_90:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z17VEH_StepSlideMoveP9gentity_sif_100:
	xor ecx, ecx
_Z17VEH_StepSlideMoveP9gentity_sif_80:
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
	jnz _Z17VEH_StepSlideMoveP9gentity_sif_80
	jmp _Z17VEH_StepSlideMoveP9gentity_sif_40
_Z17VEH_StepSlideMoveP9gentity_sif_70:
	jp _Z17VEH_StepSlideMoveP9gentity_sif_90
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z17VEH_StepSlideMoveP9gentity_sif_100


;IntegratePosAndRot(gentity_s*, float)
_Z18IntegratePosAndRotP9gentity_sf:
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
	ja _Z18IntegratePosAndRotP9gentity_sf_10
	jp _Z18IntegratePosAndRotP9gentity_sf_10
	pxor xmm1, xmm1
_Z18IntegratePosAndRotP9gentity_sf_190:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
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
	jnz _Z18IntegratePosAndRotP9gentity_sf_20
_Z18IntegratePosAndRotP9gentity_sf_400:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x68]
	jp _Z18IntegratePosAndRotP9gentity_sf_30
	jnz _Z18IntegratePosAndRotP9gentity_sf_30
_Z18IntegratePosAndRotP9gentity_sf_210:
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
	jnz _Z18IntegratePosAndRotP9gentity_sf_40
	jp _Z18IntegratePosAndRotP9gentity_sf_40
	movss xmm0, dword [esi+0x7c]
	ucomiss xmm0, [eax+0x4]
	jz _Z18IntegratePosAndRotP9gentity_sf_50
_Z18IntegratePosAndRotP9gentity_sf_40:
	mov eax, [esi+0x50]
	test eax, eax
	jnz _Z18IntegratePosAndRotP9gentity_sf_60
	mov edx, [ebp+0x8]
	mov eax, [edx+0x164]
	mov ecx, [s_phys+0x2c]
	test ecx, ecx
	jnz _Z18IntegratePosAndRotP9gentity_sf_70
	mov eax, edx
_Z18IntegratePosAndRotP9gentity_sf_240:
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	call _Z17VEH_StepSlideMoveP9gentity_sif
_Z18IntegratePosAndRotP9gentity_sf_470:
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call _Z15VEH_GroundPlantP9gentity_sif
	mov eax, [ebp+0x8]
	mov edx, [eax+0x164]
	mov eax, [esi+0x84]
	and eax, 0x7fffffff
	mov [edx+0x25c], eax
_Z18IntegratePosAndRotP9gentity_sf_280:
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
	jp _Z18IntegratePosAndRotP9gentity_sf_80
	jnz _Z18IntegratePosAndRotP9gentity_sf_80
	mov ecx, eax
_Z18IntegratePosAndRotP9gentity_sf_390:
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
	jp _Z18IntegratePosAndRotP9gentity_sf_90
	jae _Z18IntegratePosAndRotP9gentity_sf_90
_Z18IntegratePosAndRotP9gentity_sf_260:
	mov edx, 0x1
_Z18IntegratePosAndRotP9gentity_sf_270:
	movss xmm1, dword [ebp-0x6c]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jnz _Z18IntegratePosAndRotP9gentity_sf_100
	jp _Z18IntegratePosAndRotP9gentity_sf_100
	pxor xmm2, xmm2
	movaps xmm4, xmm2
	movaps xmm3, xmm2
_Z18IntegratePosAndRotP9gentity_sf_310:
	test dl, dl
	jz _Z18IntegratePosAndRotP9gentity_sf_110
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
_Z18IntegratePosAndRotP9gentity_sf_110:
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z18IntegratePosAndRotP9gentity_sf_120
	jnz _Z18IntegratePosAndRotP9gentity_sf_120
_Z18IntegratePosAndRotP9gentity_sf_360:
	mov eax, [ebp-0x78]
	mov eax, [eax+0x50]
	test eax, eax
	jnz _Z18IntegratePosAndRotP9gentity_sf_130
	mov eax, [vehTestWeight]
	movss xmm0, dword [_float__800_00000000]
	mulss xmm0, [eax+0xc]
	addss xmm2, xmm0
_Z18IntegratePosAndRotP9gentity_sf_320:
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
	jb _Z18IntegratePosAndRotP9gentity_sf_140
_Z18IntegratePosAndRotP9gentity_sf_350:
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz _Z18IntegratePosAndRotP9gentity_sf_150
_Z18IntegratePosAndRotP9gentity_sf_330:
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm5, xmm5
	addss xmm0, xmm5
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_5_00000000]
	jae _Z18IntegratePosAndRotP9gentity_sf_160
	jp _Z18IntegratePosAndRotP9gentity_sf_160
	mov edx, eax
	xor eax, eax
	mov [edx], eax
	mov [esi], eax
	mov [ebx], eax
_Z18IntegratePosAndRotP9gentity_sf_160:
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jz _Z18IntegratePosAndRotP9gentity_sf_170
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
	call _Z13G_DebugCirclePKffS0_iii
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z13G_DebugCirclePKffS0_iii
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
	call _Z11G_DebugLinePKfS0_S0_i
	mov [esp+0x4], ebx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z11G_DebugStarPKfS0_
_Z18IntegratePosAndRotP9gentity_sf_170:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18IntegratePosAndRotP9gentity_sf_10:
	ucomiss xmm0, [_float_30_00000000]
	jae _Z18IntegratePosAndRotP9gentity_sf_180
	movaps xmm1, xmm0
	subss xmm1, [_float_0_10000000]
	divss xmm1, dword [_float_29_89999962]
	jmp _Z18IntegratePosAndRotP9gentity_sf_190
_Z18IntegratePosAndRotP9gentity_sf_30:
	movss xmm0, dword [esi+0x80]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z18IntegratePosAndRotP9gentity_sf_200
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
	ja _Z18IntegratePosAndRotP9gentity_sf_210
_Z18IntegratePosAndRotP9gentity_sf_200:
	movss xmm0, dword [_float_0_69999999]
	ucomiss xmm0, [ebp-0x5c]
	jbe _Z18IntegratePosAndRotP9gentity_sf_220
	mov dword [s_phys+0x2c], 0x1
	jmp _Z18IntegratePosAndRotP9gentity_sf_210
_Z18IntegratePosAndRotP9gentity_sf_70:
	lea ebx, [eax+0x138]
	movss xmm3, dword [s_phys+0xc]
	ucomiss xmm3, [_float_0_69999999]
	jb _Z18IntegratePosAndRotP9gentity_sf_230
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
	jb _Z18IntegratePosAndRotP9gentity_sf_230
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_240
_Z18IntegratePosAndRotP9gentity_sf_90:
	movss xmm0, dword [ebp-0x7c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	setae bl
	movss xmm0, dword [_float_0_01000000]
	ucomiss xmm0, [ebp-0x6c]
	jbe _Z18IntegratePosAndRotP9gentity_sf_250
_Z18IntegratePosAndRotP9gentity_sf_500:
	mov eax, 0x1
_Z18IntegratePosAndRotP9gentity_sf_510:
	cmp al, bl
	jnz _Z18IntegratePosAndRotP9gentity_sf_260
	xor edx, edx
	jmp _Z18IntegratePosAndRotP9gentity_sf_270
_Z18IntegratePosAndRotP9gentity_sf_50:
	jp _Z18IntegratePosAndRotP9gentity_sf_40
	movss xmm0, dword [esi+0x80]
	ucomiss xmm0, [eax+0x8]
	jnz _Z18IntegratePosAndRotP9gentity_sf_40
	jp _Z18IntegratePosAndRotP9gentity_sf_40
	movss xmm0, dword [ebp-0xa4]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call _Z15VEH_GroundPlantP9gentity_sif
	jmp _Z18IntegratePosAndRotP9gentity_sf_280
_Z18IntegratePosAndRotP9gentity_sf_180:
	movss xmm1, dword [_float_1_00000000]
	jmp _Z18IntegratePosAndRotP9gentity_sf_190
_Z18IntegratePosAndRotP9gentity_sf_230:
	movss xmm1, dword [ebx]
	mulss xmm1, [s_phys+0x4]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mulss xmm3, [ebx+0x8]
	addss xmm1, xmm3
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z18IntegratePosAndRotP9gentity_sf_290
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z18IntegratePosAndRotP9gentity_sf_550:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [ebx+0x4]
_Z18IntegratePosAndRotP9gentity_sf_300:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z18IntegratePosAndRotP9gentity_sf_300
	mov eax, [ebp+0x8]
	jmp _Z18IntegratePosAndRotP9gentity_sf_240
_Z18IntegratePosAndRotP9gentity_sf_100:
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_310
_Z18IntegratePosAndRotP9gentity_sf_130:
	mov eax, [vehTestWeight]
	jmp _Z18IntegratePosAndRotP9gentity_sf_320
_Z18IntegratePosAndRotP9gentity_sf_150:
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
	call _Z2vaPKcz
	mov dword [esp+0x10], 0x3f800000
	mov [esp+0xc], eax
	mov eax, colorRed
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19G_DebugStarWithTextPKfS0_S0_PKcf
	mov edx, [ebp-0x9c]
	movss xmm3, dword [edx]
	mov ecx, [ebp-0x98]
	movss xmm5, dword [ecx]
	jmp _Z18IntegratePosAndRotP9gentity_sf_330
_Z18IntegratePosAndRotP9gentity_sf_140:
	mulss xmm4, xmm4
	addss xmm7, xmm4
	mulss xmm2, xmm2
	addss xmm7, xmm2
	sqrtss xmm2, xmm7
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z18IntegratePosAndRotP9gentity_sf_340
	movss xmm1, dword [_float_1_00000000]
_Z18IntegratePosAndRotP9gentity_sf_530:
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_350
_Z18IntegratePosAndRotP9gentity_sf_120:
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
	call _Z12AngleVectorsPKfPfS1_S1_
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_360
_Z18IntegratePosAndRotP9gentity_sf_80:
	lea eax, [ebx+0xd8]
	mov [ebp-0x70], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
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
	jp _Z18IntegratePosAndRotP9gentity_sf_370
	jae _Z18IntegratePosAndRotP9gentity_sf_370
_Z18IntegratePosAndRotP9gentity_sf_520:
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15Vec3NormalizeToPKfPf
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
	jb _Z18IntegratePosAndRotP9gentity_sf_380
	movss xmm1, dword [_float_1_00000000]
_Z18IntegratePosAndRotP9gentity_sf_540:
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_390
_Z18IntegratePosAndRotP9gentity_sf_20:
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t
	test eax, eax
	jz _Z18IntegratePosAndRotP9gentity_sf_210
	jmp _Z18IntegratePosAndRotP9gentity_sf_400
_Z18IntegratePosAndRotP9gentity_sf_60:
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
	jae _Z18IntegratePosAndRotP9gentity_sf_410
_Z18IntegratePosAndRotP9gentity_sf_480:
	movss xmm1, dword [ebx]
	mulss xmm1, [s_phys+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [s_phys+0x8]
	addss xmm1, xmm0
	mulss xmm2, xmm6
	addss xmm1, xmm2
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z18IntegratePosAndRotP9gentity_sf_420
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z18IntegratePosAndRotP9gentity_sf_560:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [ebx+0x4]
_Z18IntegratePosAndRotP9gentity_sf_430:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z18IntegratePosAndRotP9gentity_sf_430
_Z18IntegratePosAndRotP9gentity_sf_490:
	mulss xmm3, [ebx]
	mov eax, [ebp-0x90]
	mulss xmm4, [eax]
	addss xmm3, xmm4
	mov edx, [ebp-0x8c]
	mulss xmm6, [edx]
	addss xmm3, xmm6
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jbe _Z18IntegratePosAndRotP9gentity_sf_440
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
	jb _Z18IntegratePosAndRotP9gentity_sf_450
	movss xmm1, dword [_float_1_00000000]
_Z18IntegratePosAndRotP9gentity_sf_570:
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
_Z18IntegratePosAndRotP9gentity_sf_440:
	pxor xmm0, xmm0
	mov ecx, [ebp-0x94]
	ucomiss xmm0, [ecx+0x78]
	jnz _Z18IntegratePosAndRotP9gentity_sf_460
	jp _Z18IntegratePosAndRotP9gentity_sf_460
	ucomiss xmm0, [ecx+0x7c]
	jp _Z18IntegratePosAndRotP9gentity_sf_460
	jz _Z18IntegratePosAndRotP9gentity_sf_470
_Z18IntegratePosAndRotP9gentity_sf_460:
	movss xmm0, dword [ebp-0xa4]
	xor edx, edx
	mov eax, [ebp+0x8]
	call _Z17VEH_StepSlideMoveP9gentity_sif
	jmp _Z18IntegratePosAndRotP9gentity_sf_470
_Z18IntegratePosAndRotP9gentity_sf_220:
	mov dword [s_phys+0x2c], 0x1
	mov dword [s_phys+0x30], 0x1
	jmp _Z18IntegratePosAndRotP9gentity_sf_210
_Z18IntegratePosAndRotP9gentity_sf_410:
	ucomiss xmm1, xmm5
	jb _Z18IntegratePosAndRotP9gentity_sf_480
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_490
_Z18IntegratePosAndRotP9gentity_sf_250:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	add eax, 0x18
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15Vec3NormalizeToPKfPf
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
	jae _Z18IntegratePosAndRotP9gentity_sf_500
	xor eax, eax
	jmp _Z18IntegratePosAndRotP9gentity_sf_510
_Z18IntegratePosAndRotP9gentity_sf_370:
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea ecx, [ebp-0x68]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x70]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15Vec3NormalizeToPKfPf
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
	jae _Z18IntegratePosAndRotP9gentity_sf_520
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
	jmp _Z18IntegratePosAndRotP9gentity_sf_520
_Z18IntegratePosAndRotP9gentity_sf_340:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z18IntegratePosAndRotP9gentity_sf_530
_Z18IntegratePosAndRotP9gentity_sf_380:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z18IntegratePosAndRotP9gentity_sf_540
_Z18IntegratePosAndRotP9gentity_sf_290:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z18IntegratePosAndRotP9gentity_sf_550
_Z18IntegratePosAndRotP9gentity_sf_420:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z18IntegratePosAndRotP9gentity_sf_560
_Z18IntegratePosAndRotP9gentity_sf_450:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z18IntegratePosAndRotP9gentity_sf_570


;G_VehUsable(gentity_s*, gentity_s*)
_Z11G_VehUsableP9gentity_sS0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [edx+0x15c]
	test eax, eax
	jz _Z11G_VehUsableP9gentity_sS0__10
	test byte [eax+0xe], 0x10
	jnz _Z11G_VehUsableP9gentity_sS0__10
	cmp word [edx+0x154], 0x0
	jnz _Z11G_VehUsableP9gentity_sS0__10
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x164]
	xor edx, edx
	lea eax, [ecx+0x2ec]
_Z11G_VehUsableP9gentity_sS0__40:
	cmp dword [eax+0x4], 0xffffffff
	jz _Z11G_VehUsableP9gentity_sS0__20
	cmp dword [eax+0x8], 0x3ff
	jz _Z11G_VehUsableP9gentity_sS0__30
_Z11G_VehUsableP9gentity_sS0__20:
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz _Z11G_VehUsableP9gentity_sS0__40
_Z11G_VehUsableP9gentity_sS0__10:
	xor eax, eax
	pop ebp
	ret
_Z11G_VehUsableP9gentity_sS0__30:
	movss xmm0, dword [ecx+0x25c]
	ucomiss xmm0, [_float_1_00000000]
	ja _Z11G_VehUsableP9gentity_sS0__10
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x1a0]
	test ecx, ecx
	jle _Z11G_VehUsableP9gentity_sS0__10
	test byte [eax+0x122], 0x20
	jz _Z11G_VehUsableP9gentity_sS0__10
	mov eax, 0x1
	pop ebp
	ret
	nop


;G_VehSpawner(gentity_s*)
_Z12G_VehSpawnerP9gentity_s:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehicletype
	call _Z18G_LevelSpawnStringPKcS0_PS0_
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12SpawnVehicleP9gentity_sPKci
	leave
	ret
	nop
	add [eax], al


;SpawnVehicle(gentity_s*, char const*, int)
_Z12SpawnVehicleP9gentity_sPKci:
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
_Z12SpawnVehicleP9gentity_sPKci_20:
	mov esi, ecx
	cmp dword [eax], 0x3ff
	jz _Z12SpawnVehicleP9gentity_sPKci_10
	add edx, 0x1
	lea ecx, [ecx+0x354]
	add eax, 0x354
	cmp edx, 0x8
	jnz _Z12SpawnVehicleP9gentity_sPKci_20
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], _cstring_hit_max_vehicle_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z12SpawnVehicleP9gentity_sPKci_10:
	mov eax, [ebp+0xc]
	call _Z26VEH_GetVehicleInfoFromNamePKc
	mov ebx, eax
	test eax, eax
	js _Z12SpawnVehicleP9gentity_sPKci_30
_Z12SpawnVehicleP9gentity_sPKci_190:
	mov dword [edi+0x4], 0xe
	mov eax, _cstring_defaultvehicle_m
	call _Z26VEH_GetVehicleInfoFromNamePKc
	mov [ebp-0x1c], eax
	cmp ebx, eax
	jz _Z12SpawnVehicleP9gentity_sPKci_40
	movzx eax, word [edi+0x168]
	test ax, ax
	jnz _Z12SpawnVehicleP9gentity_sPKci_50
_Z12SpawnVehicleP9gentity_sPKci_130:
	mov byte [ebp-0x45], 0x0
_Z12SpawnVehicleP9gentity_sPKci_140:
	mov [esp], edi
	call _Z12G_DObjUpdateP9gentity_s
	lea eax, [ebx+ebx*4]
	shl eax, 0x3
	sub eax, ebx
	shl eax, 0x4
	movzx eax, word [eax+s_vehicleInfos+0x40]
	cmp ax, 0x1
	jbe _Z12SpawnVehicleP9gentity_sPKci_60
_Z12SpawnVehicleP9gentity_sPKci_170:
	mov [ebp-0x1c], ebx
_Z12SpawnVehicleP9gentity_sPKci_210:
	mov eax, level
	mov eax, [eax+0x1c]
	test eax, eax
	jz _Z12SpawnVehicleP9gentity_sPKci_70
_Z12SpawnVehicleP9gentity_sPKci_180:
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
	jz _Z12SpawnVehicleP9gentity_sPKci_80
	mov dword [edi+0x120], 0x202080
_Z12SpawnVehicleP9gentity_sPKci_80:
	mov dword [edi+0x4], 0xe
	mov dword [edi+0x8], 0x0
	mov dword [edi+0xc], 0x1
	mov dword [edi+0x30], 0x1
	mov dword [edi+0x60], 0x0
	mov dword [edi+0x70], 0x0
	mov dword [edi+0x80], 0x0
	add eax, 0x90
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
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
	call _Z16SV_DObjGetBoundsP9gentity_sPfS1_
	mov [esp], edi
	call _Z13SV_LinkEntityP9gentity_s
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
_Z12SpawnVehicleP9gentity_sPKci_90:
	mov dword [eax+0xb0], 0x0
	mov dword [eax+0xc0], 0x0
	mov dword [eax+0xd0], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _Z12SpawnVehicleP9gentity_sPKci_90
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
	call _Z10Com_MemsetPvii
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
_Z12SpawnVehicleP9gentity_sPKci_100:
	mov [esp], esi
	call _Z25BG_VehiclesGetSlotTagNamei
	movzx eax, ax
	mov [ebx+0xc], eax
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x3ff
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x3
	jnz _Z12SpawnVehicleP9gentity_sPKci_100
	mov ebx, scr_const
	movzx eax, word [ebx+0x15a]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov edx, [ebp-0x20]
	mov [edx+0x310], eax
	movzx eax, word [ebx+0x15c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov ecx, [ebp-0x20]
	mov [ecx+0x314], eax
	movzx eax, word [ebx+0x15e]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov edx, [ebp-0x20]
	mov [edx+0x318], eax
	movzx eax, word [ebx+0x160]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov ecx, [ebp-0x20]
	mov [ecx+0x31c], eax
	movzx eax, word [ebx+0x164]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov edx, [ebp-0x20]
	mov [edx+0x324], eax
	mov ebx, edx
	mov esi, s_flashTags
	lea ecx, [esi+0x14]
	mov [ebp-0x28], ecx
_Z12SpawnVehicleP9gentity_sPKci_110:
	mov eax, [esi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov [ebx+0x328], eax
	add esi, 0x4
	add ebx, 0x4
	cmp [ebp-0x28], esi
	jnz _Z12SpawnVehicleP9gentity_sPKci_110
	mov ebx, [ebp-0x20]
	mov esi, s_wheelTags
_Z12SpawnVehicleP9gentity_sPKci_120:
	mov eax, [esi]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov [ebx+0x33c], eax
	add esi, 0x4
	add ebx, 0x4
	mov eax, s_wheelTags+0x10
	cmp eax, esi
	jnz _Z12SpawnVehicleP9gentity_sPKci_120
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SpawnVehicleP9gentity_sPKci_50:
	movzx eax, ax
	mov [esp], eax
	call _Z11G_XModelBadi
	test eax, eax
	jz _Z12SpawnVehicleP9gentity_sPKci_130
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	movzx eax, word [edi+0x168]
	mov [esp], eax
	call _Z15G_OverrideModeliPKc
	mov ebx, [ebp-0x1c]
	mov byte [ebp-0x45], 0x1
	jmp _Z12SpawnVehicleP9gentity_sPKci_140
_Z12SpawnVehicleP9gentity_sPKci_60:
	sbb edx, edx
	and edx, 0xfffffffe
	add edx, 0x6
	mov [ebp-0x40], edx
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x24], s_wheelTags
_Z12SpawnVehicleP9gentity_sPKci_160:
	mov ecx, [ebp-0x24]
	mov eax, [ecx]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	test eax, eax
	js _Z12SpawnVehicleP9gentity_sPKci_150
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x24], 0x4
	mov eax, [ebp-0x44]
	cmp [ebp-0x40], eax
	jnz _Z12SpawnVehicleP9gentity_sPKci_160
	jmp _Z12SpawnVehicleP9gentity_sPKci_170
_Z12SpawnVehicleP9gentity_sPKci_70:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea ebx, [eax+s_vehicleInfos]
	lea eax, [ebx+0x90]
	mov [esp], eax
	call _Z23G_GetWeaponIndexForNamePKc
	mov [esp], eax
	call _Z16IsItemRegisteredi
	test eax, eax
	jnz _Z12SpawnVehicleP9gentity_sPKci_180
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_vehicle_s_not_pr
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z12SpawnVehicleP9gentity_sPKci_180
_Z12SpawnVehicleP9gentity_sPKci_40:
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	mov [esp], edi
	call _Z10G_SetModelP9gentity_sPKc
	mov byte [ebp-0x45], 0x1
	jmp _Z12SpawnVehicleP9gentity_sPKci_140
_Z12SpawnVehicleP9gentity_sPKci_30:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_find_info_f
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12SpawnVehicleP9gentity_sPKci_190
_Z12SpawnVehicleP9gentity_sPKci_150:
	cmp byte [ebp-0x45], 0x0
	jnz _Z12SpawnVehicleP9gentity_sPKci_200
_Z12SpawnVehicleP9gentity_sPKci_240:
	movzx eax, word [edi+0x168]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_vehicle_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov dword [esp+0x4], _cstring_defaultvehicle_m
	mov [esp], edi
	call _Z10G_SetModelP9gentity_sPKc
	mov [esp], edi
	call _Z12G_DObjUpdateP9gentity_s
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	movzx eax, word [eax+s_vehicleInfos+0x40]
	cmp ax, 0x1
	ja _Z12SpawnVehicleP9gentity_sPKci_210
	sbb ecx, ecx
	and ecx, 0xfffffffe
	add ecx, 0x6
	mov [ebp-0x38], ecx
	mov dword [ebp-0x3c], 0x0
	mov ebx, s_wheelTags
	jmp _Z12SpawnVehicleP9gentity_sPKci_220
_Z12SpawnVehicleP9gentity_sPKci_230:
	add dword [ebp-0x3c], 0x1
	add ebx, 0x4
	mov eax, [ebp-0x3c]
	cmp [ebp-0x38], eax
	jz _Z12SpawnVehicleP9gentity_sPKci_210
_Z12SpawnVehicleP9gentity_sPKci_220:
	mov eax, [ebx]
	movzx eax, word [eax]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	test eax, eax
	jns _Z12SpawnVehicleP9gentity_sPKci_230
	mov dword [esp+0x4], _cstring_error_default_ve
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12SpawnVehicleP9gentity_sPKci_210
_Z12SpawnVehicleP9gentity_sPKci_200:
	mov dword [esp+0x4], _cstring_error_default_ve
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12SpawnVehicleP9gentity_sPKci_240
	nop


;VEH_JoltBody_copy(gentity_s*, float const*, float, float, float)
_Z17VEH_JoltBody_copyP9gentity_sPKffff:
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
	call _Z12AnglesToAxisPKfPA3_f
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
	call _Z13Vec2NormalizePf
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
_Z14G_VehiclesIniti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	test eax, eax
	jnz _Z14G_VehiclesIniti_10
	mov word [s_numVehicleInfos], 0x0
_Z14G_VehiclesIniti_30:
	mov eax, s_vehicles
	mov edx, vehTestMaxMPH
_Z14G_VehiclesIniti_20:
	mov dword [eax+0x1b8], 0x3ff
	add eax, 0x354
	cmp edx, eax
	jnz _Z14G_VehiclesIniti_20
	mov eax, level
	mov dword [eax+0x2e68], s_vehicles
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14G_VehiclesIniti_10:
	cmp word [s_numVehicleInfos], 0x0
	jle _Z14G_VehiclesIniti_30
	mov dword [ebp-0x1c], 0x0
_Z14G_VehiclesIniti_70:
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea ebx, [eax+s_vehicleInfos]
	xor edi, edi
	lea esi, [ebx+0xe4]
	jmp _Z14G_VehiclesIniti_40
_Z14G_VehiclesIniti_60:
	add edi, 0x1
	add esi, 0x40
	add ebx, 0x1
	cmp edi, 0x6
	jz _Z14G_VehiclesIniti_50
_Z14G_VehiclesIniti_40:
	cmp byte [ebx+0x264], 0x0
	jz _Z14G_VehiclesIniti_60
	mov [esp], esi
	call _Z17G_SoundAliasIndexPKc
	mov [ebx+0x264], al
	add edi, 0x1
	add esi, 0x40
	add ebx, 0x1
	cmp edi, 0x6
	jnz _Z14G_VehiclesIniti_40
_Z14G_VehiclesIniti_50:
	add dword [ebp-0x1c], 0x1
	movsx eax, word [s_numVehicleInfos]
	cmp [ebp-0x1c], eax
	jl _Z14G_VehiclesIniti_70
	jmp _Z14G_VehiclesIniti_30


;G_VehFreeEntity(gentity_s*)
_Z15G_VehFreeEntityP9gentity_s:
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
	call _Z13Scr_SetStringPtj
	mov dword [esp+0x4], 0x0
	lea eax, [esi+0x246]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
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
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [edx+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	movss xmm2, dword [eax+0x8]
	ucomiss xmm2, [edx+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	lea edx, [ebx+0x18]
	ucomiss xmm0, [ebx+0x18]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	ucomiss xmm1, [edx+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	ucomiss xmm2, [edx+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	lea edx, [ebx+0x148]
	movss xmm0, dword [esi]
	ucomiss xmm0, [ebx+0x148]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	movss xmm1, dword [esi+0x4]
	ucomiss xmm1, [edx+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	movss xmm2, dword [esi+0x8]
	ucomiss xmm2, [edx+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	lea edx, [ebx+0x3c]
	ucomiss xmm0, [ebx+0x3c]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	ucomiss xmm1, [edx+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	ucomiss xmm2, [edx+0x8]
	jp _Z15VEH_SetPositionP9gentity_sPKfS2__10
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2__10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15VEH_SetPositionP9gentity_sPKfS2__10:
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11G_SetOriginP9gentity_sPKf
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z10G_SetAngleP9gentity_sPKf
	mov dword [ebx+0xc], 0x1
	mov dword [ebx+0x30], 0x1
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s


;G_VehUnlinkPlayer(gentity_s*, gentity_s*)
_Z17G_VehUnlinkPlayerP9gentity_sS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov esi, [edi+0x15c]
	test byte [esi+0xe], 0x10
	jz _Z17G_VehUnlinkPlayerP9gentity_sS0__10
_Z17G_VehUnlinkPlayerP9gentity_sS0__40:
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
	call _Z14TeleportPlayerP9gentity_sPfS1_
	mov ecx, [edi]
	xor edx, edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x164]
	add eax, 0x2ec
_Z17G_VehUnlinkPlayerP9gentity_sS0__30:
	cmp ecx, [eax+0x8]
	jz _Z17G_VehUnlinkPlayerP9gentity_sS0__20
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz _Z17G_VehUnlinkPlayerP9gentity_sS0__30
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vehicleclearride
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17G_VehUnlinkPlayerP9gentity_sS0__50:
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
_Z17G_VehUnlinkPlayerP9gentity_sS0__10:
	mov dword [esp+0x4], _cstring_g_vehunlinkplaye
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17G_VehUnlinkPlayerP9gentity_sS0__40
_Z17G_VehUnlinkPlayerP9gentity_sS0__20:
	mov dword [eax+0x8], 0x3ff
	jmp _Z17G_VehUnlinkPlayerP9gentity_sS0__50
	nop


;G_VehRegisterDvars()
_Z18G_VehRegisterDvarsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0xc], _cstring_turn_on_debug_in
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vehdebugserver
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [vehDebugServer], eax
	mov dword [esp+0x14], _cstring_scale_vehicle_te
	mov dword [esp+0x10], 0x80
	mov esi, 0x7f7fffff
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_vehtexturescroll
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehTextureScrollScale], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43480000
	mov dword [esp], _cstring_vehtesthorsepowe
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehTestHorsepower], eax
	mov dword [esp+0x14], _cstring_lbs
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x45a28000
	mov dword [esp], _cstring_vehtestweight
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehTestWeight], eax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42200000
	mov dword [esp], _cstring_vehtestmaxmph
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [vehTestMaxMPH], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;VEH_GetVehicleInfo(short)
_Z18VEH_GetVehicleInfos:
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


;G_VehCollmapSpawner(gentity_s*)
_Z19G_VehCollmapSpawnerP9gentity_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0x120], 0x0
	mov dword [eax+0x4], 0xf
	pop ebp
	ret
	nop


;G_VehEntHandler_Die(gentity_s*, gentity_s*, gentity_s*, int, int, int, float const*, hitLocation_t, int)
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti:
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
	jz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_70:
	mov ecx, [esi+0x8]
	cmp ecx, 0x3ff
	jz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov [esp], eax
	call _Z11G_EntUnlinkP9gentity_s
	mov ebx, [edi+0x164]
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_20:
	xor ecx, ecx
	lea edx, [ebx+0x2f8]
	lea eax, [ebx+0x2ec]
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_40:
	cmp esi, eax
	jz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_30
	add ecx, 0x1
	add eax, 0xc
	add edx, 0xc
	cmp ecx, 0x3
	jnz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_40
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10:
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_50
	mov edx, [ebp-0x1c]
	mov eax, [edx+0xc4]
	test eax, eax
	jnz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_60:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_50
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
	jmp _Z17VEH_JoltBody_copyP9gentity_sPKffff
_Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_30:
	cmp ecx, 0x2
	jz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	mov esi, edx
	test edx, edx
	jnz _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_70
	jmp _Z19G_VehEntHandler_DieP9gentity_sS0_S0_iiiPKf13hitLocation_ti_10
	nop


;G_VehEntHandler_Use(gentity_s*, gentity_s*, gentity_s*)
_Z19G_VehEntHandler_UseP9gentity_sS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	mov edi, [eax+0x15c]
	test edi, edi
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__10
	test byte [edi+0xe], 0x10
	jnz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__20
	mov edx, [ebp+0x8]
	mov edx, [edx+0x164]
	mov [ebp-0x84], edx
	mov eax, edx
	mov ecx, [ebp+0xc]
	add ecx, 0x154
	mov [ebp-0x88], ecx
	mov edx, [ebp+0xc]
	cmp word [edx+0x154], 0x0
	jnz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__30
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__150:
	xor edx, edx
	add eax, 0x2ec
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__60:
	cmp dword [eax+0x4], 0xffffffff
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__40
	cmp dword [eax+0x8], 0x3ff
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__50
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__40:
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__60
	mov dword [esp+0x4], _cstring_linkplayertovehi
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__50:
	mov dword [ebp-0x7c], 0x0
	movss xmm0, dword [_float_999999_00000000]
	movss [ebp-0x80], xmm0
	xor esi, esi
	mov eax, [ebp+0xc]
	add eax, 0x13c
	mov [ebp-0x8c], eax
	mov ebx, [ebp-0x84]
	add ebx, 0x2ec
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__90:
	mov edx, [ebx+0x4]
	cmp edx, 0xffffffff
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__70
	cmp dword [ebx+0x8], 0x3ff
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__80
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__70:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x3
	jnz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__90
	mov eax, [ebp-0x7c]
	test eax, eax
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__100
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__170:
	lea ebx, [ebp-0x6c]
	mov [esp+0x8], ebx
	mov edx, [ebp-0x7c]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
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
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__110
	movzx eax, word [ecx+0x14a]
	cmp edx, eax
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__110
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__140:
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
	call _Z21G_EntLinkToWithOffsetP9gentity_sS0_jPKfS2_
	test eax, eax
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__120
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__160:
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
	jz _Z19G_VehEntHandler_UseP9gentity_sS0_S0__130
	or dword [edi+0x10], 0x80
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__130:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [edi+0x59c], eax
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__110:
	mov dword [ebp-0x28], 0xc20c0000
	jmp _Z19G_VehEntHandler_UseP9gentity_sS0_S0__140
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__20:
	mov [esp], eax
	call _Z11G_EntUnlinkP9gentity_s
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__30:
	mov dword [esp+0x4], _cstring_linkplayertovehi1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x164]
	jmp _Z19G_VehEntHandler_UseP9gentity_sS0_S0__150
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__80:
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
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
	jbe _Z19G_VehEntHandler_UseP9gentity_sS0_S0__70
	mov [ebp-0x7c], ebx
	movss [ebp-0x80], xmm0
	jmp _Z19G_VehEntHandler_UseP9gentity_sS0_S0__70
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__120:
	mov edx, [ebp-0x7c]
	mov eax, [edx]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_linkplayertovehi2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19G_VehEntHandler_UseP9gentity_sS0_S0__160
_Z19G_VehEntHandler_UseP9gentity_sS0_S0__100:
	mov dword [esp+0x4], _cstring_linkplayertovehi3
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19G_VehEntHandler_UseP9gentity_sS0_S0__170


;G_VehImmuneToDamage(gentity_s*, int, int, int)
_Z19G_VehImmuneToDamageP9gentity_siii:
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
	ja _Z19G_VehImmuneToDamageP9gentity_siii_10
	jmp dword [ecx*4+_Z19G_VehImmuneToDamageP9gentity_siii_jumptab_0]
_Z19G_VehImmuneToDamageP9gentity_siii_60:
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x588], 0x6
	jz _Z19G_VehImmuneToDamageP9gentity_siii_20
	mov eax, [ebx+0x58]
	test eax, eax
	jnz _Z19G_VehImmuneToDamageP9gentity_siii_30
_Z19G_VehImmuneToDamageP9gentity_siii_10:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19G_VehImmuneToDamageP9gentity_siii_50:
	mov eax, [ebx+0x50]
	test eax, eax
	jnz _Z19G_VehImmuneToDamageP9gentity_siii_30
	test byte [ebp+0x10], 0x2
	jz _Z19G_VehImmuneToDamageP9gentity_siii_10
	mov eax, [ebx+0x54]
	test eax, eax
	jz _Z19G_VehImmuneToDamageP9gentity_siii_10
_Z19G_VehImmuneToDamageP9gentity_siii_30:
	xor eax, eax
_Z19G_VehImmuneToDamageP9gentity_siii_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19G_VehImmuneToDamageP9gentity_siii_80:
	mov ebx, [ebx+0x60]
	test ebx, ebx
	jz _Z19G_VehImmuneToDamageP9gentity_siii_10
	xor eax, eax
	jmp _Z19G_VehImmuneToDamageP9gentity_siii_40
_Z19G_VehImmuneToDamageP9gentity_siii_70:
	mov eax, [ebx+0x5c]
	test eax, eax
	jz _Z19G_VehImmuneToDamageP9gentity_siii_10
	xor eax, eax
	jmp _Z19G_VehImmuneToDamageP9gentity_siii_40
_Z19G_VehImmuneToDamageP9gentity_siii_20:
	mov eax, [ebx+0x64]
	test eax, eax
	jz _Z19G_VehImmuneToDamageP9gentity_siii_10
	xor eax, eax
	jmp _Z19G_VehImmuneToDamageP9gentity_siii_40
	
	
_Z19G_VehImmuneToDamageP9gentity_siii_jumptab_0:
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_50
	dd _Z19G_VehImmuneToDamageP9gentity_siii_50
	dd _Z19G_VehImmuneToDamageP9gentity_siii_60
	dd _Z19G_VehImmuneToDamageP9gentity_siii_60
	dd _Z19G_VehImmuneToDamageP9gentity_siii_70
	dd _Z19G_VehImmuneToDamageP9gentity_siii_80
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_10
	dd _Z19G_VehImmuneToDamageP9gentity_siii_30


;G_VehPlayerRideSlot(gentity_s*, int)
_Z19G_VehPlayerRideSlotP9gentity_si:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0xc]
	xor edx, edx
	mov eax, [ebp+0x8]
	mov eax, [eax+0x164]
	add eax, 0x2f4
_Z19G_VehPlayerRideSlotP9gentity_si_20:
	cmp ecx, [eax]
	jz _Z19G_VehPlayerRideSlotP9gentity_si_10
	add edx, 0x1
	add eax, 0xc
	cmp edx, 0x3
	jnz _Z19G_VehPlayerRideSlotP9gentity_si_20
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vehiclegetplayer
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	xor edx, edx
_Z19G_VehPlayerRideSlotP9gentity_si_10:
	mov eax, edx
	leave
	ret


;G_VehEntHandler_Pain(gentity_s*, gentity_s*, int, float const*, int, float const*, hitLocation_t, int)
_Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x1c]
	test eax, eax
	jz _Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10
	mov eax, [eax+0xc4]
	test eax, eax
	jnz _Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_20
_Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_20:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov eax, [eax+0x12c]
	sub eax, 0x1
	cmp eax, 0x1
	ja _Z20G_VehEntHandler_PainP9gentity_sS0_iPKfiS2_13hitLocation_ti_10
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


;G_VehEntHandler_Think(gentity_s*)
_Z21G_VehEntHandler_ThinkP9gentity_s:
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
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14InitFirstThinkP9gentity_s
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21G_VehEntHandler_ThinkP9gentity_s_10:
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
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_20
_Z21G_VehEntHandler_ThinkP9gentity_s_290:
	mov ecx, [ebx+0x8]
	cmp ecx, 0x3ff
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_30
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	add eax, ecx
	add eax, g_entities
	mov edx, [eax+0x1a0]
	test edx, edx
	jle _Z21G_VehEntHandler_ThinkP9gentity_s_40
_Z21G_VehEntHandler_ThinkP9gentity_s_30:
	xor ecx, ecx
	lea edx, [edi+0x2f8]
	lea eax, [edi+0x2ec]
_Z21G_VehEntHandler_ThinkP9gentity_s_60:
	cmp ebx, eax
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_50
	add ecx, 0x1
	add eax, 0xc
	add edx, 0xc
	cmp ecx, 0x3
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_60
_Z21G_VehEntHandler_ThinkP9gentity_s_20:
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
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea edi, [eax+ecx]
	add edi, g_entities
	mov eax, [edi+0x15c]
	test dword [eax+0xc], 0xc00
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_80
_Z21G_VehEntHandler_ThinkP9gentity_s_70:
	movss xmm0, dword [ebp-0xb0]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18IntegratePosAndRotP9gentity_sf
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
	call _Z17VEH_TouchEntitiesP9gentity_sf
	mov eax, [vehDebugServer]
	cmp byte [eax+0xc], 0x0
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_90
	test byte [esi+0x1c0], 0x1
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_100
_Z21G_VehEntHandler_ThinkP9gentity_s_150:
	mov eax, [ebp+0x8]
	mov edi, [eax+0x164]
_Z21G_VehEntHandler_ThinkP9gentity_s_160:
	mov ecx, [edi+0x30c]
	cmp ecx, 0x3ff
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_110
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
_Z21G_VehEntHandler_ThinkP9gentity_s_280:
	movss xmm0, dword [edi+0x2c8]
	movss [ebp-0xac], xmm0
	ucomiss xmm0, xmm4
	jbe _Z21G_VehEntHandler_ThinkP9gentity_s_120
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
_Z21G_VehEntHandler_ThinkP9gentity_s_120:
	lea ebx, [edi+0xc0]
	movsx edx, word [edi+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov esi, [eax+s_vehicleInfos+0x44]
	test esi, esi
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_130
	mov edx, [ebp+0x8]
	movss [edx+0x5c], xmm4
_Z21G_VehEntHandler_ThinkP9gentity_s_270:
	movsx edx, word [edi+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	lea edx, [eax+s_vehicleInfos]
	mov ebx, [edx+0x48]
	test ebx, ebx
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_140
	mov edx, [ebp+0x8]
	mov dword [edx+0x60], 0xffffffff
	movss xmm1, dword [_float_1000_00000000]
_Z21G_VehEntHandler_ThinkP9gentity_s_200:
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
_Z21G_VehEntHandler_ThinkP9gentity_s_90:
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
	call _Z10G_DebugBoxPKfS0_S0_fS0_ii
	test byte [esi+0x1c0], 0x1
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_150
_Z21G_VehEntHandler_ThinkP9gentity_s_100:
	mov ecx, [ebp+0x8]
	mov edi, [ecx+0x164]
	mov ecx, [edi+0x30c]
	cmp ecx, 0x3ff
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_160
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc4]
	test eax, eax
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_160
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
	jle _Z21G_VehEntHandler_ThinkP9gentity_s_170
	mov ecx, level
	sub eax, [ecx+0x1f4]
	mov [edi+0x1d4], eax
	test eax, eax
	jle _Z21G_VehEntHandler_ThinkP9gentity_s_180
	mov edx, [ebp+0x8]
	mov edi, [edx+0x164]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_160
_Z21G_VehEntHandler_ThinkP9gentity_s_140:
	mov eax, [vehTextureScrollScale]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm4
	jbe _Z21G_VehEntHandler_ThinkP9gentity_s_190
	movss xmm0, dword [edi+0x25c]
	divss xmm0, dword [_float_176_00000000]
	mulss xmm0, [ebp-0xb0]
	mulss xmm0, xmm1
_Z21G_VehEntHandler_ThinkP9gentity_s_250:
	movss xmm1, dword [_float_1000_00000000]
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	mov ecx, [ebp+0x8]
	add [ecx+0x60], eax
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_200
_Z21G_VehEntHandler_ThinkP9gentity_s_80:
	movzx eax, byte [eax+0x2fa6]
	mov [ebx+0x44], al
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t
	mov [ebx+0x45], al
	mov eax, [edi+0x15c]
	movsx eax, byte [eax+0x2fa6]
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_126_00000000]
	movss [ebx+0x48], xmm0
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z18VEH_PlayerRotationP9gentity_sP16vehicle_physic_t
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
	jg _Z21G_VehEntHandler_ThinkP9gentity_s_210
	xor eax, eax
_Z21G_VehEntHandler_ThinkP9gentity_s_310:
	mov [ebx+0x44], al
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebx+0x48]
	ucomiss xmm0, xmm1
	jbe _Z21G_VehEntHandler_ThinkP9gentity_s_220
	movss [ebx+0x48], xmm1
	movaps xmm0, xmm1
_Z21G_VehEntHandler_ThinkP9gentity_s_220:
	movss xmm2, dword [_float__1_00000000]
	ucomiss xmm2, xmm0
	ja _Z21G_VehEntHandler_ThinkP9gentity_s_230
_Z21G_VehEntHandler_ThinkP9gentity_s_350:
	movss xmm0, dword [ebx+0x4c]
	ucomiss xmm0, xmm1
	jbe _Z21G_VehEntHandler_ThinkP9gentity_s_240
	movaps xmm0, xmm1
	movss [ebx+0x4c], xmm1
_Z21G_VehEntHandler_ThinkP9gentity_s_240:
	ucomiss xmm2, xmm0
	jbe _Z21G_VehEntHandler_ThinkP9gentity_s_70
	movss [ebx+0x4c], xmm2
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_70
_Z21G_VehEntHandler_ThinkP9gentity_s_190:
	movss xmm0, dword [edi+0x25c]
	divss xmm0, dword [_float_176_00000000]
	mulss xmm0, [ebp-0xb0]
	mulss xmm0, [edx+0x68]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_250
_Z21G_VehEntHandler_ThinkP9gentity_s_130:
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
	js _Z21G_VehEntHandler_ThinkP9gentity_s_260
_Z21G_VehEntHandler_ThinkP9gentity_s_340:
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
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_270
_Z21G_VehEntHandler_ThinkP9gentity_s_110:
	pxor xmm4, xmm4
	mov ecx, [ebp+0x8]
	movss [ecx+0x68], xmm4
	movss [ecx+0x64], xmm4
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_280
_Z21G_VehEntHandler_ThinkP9gentity_s_50:
	cmp ecx, 0x2
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_20
	mov ebx, edx
	test edx, edx
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_290
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_20
_Z21G_VehEntHandler_ThinkP9gentity_s_210:
	cmp al, 0x73
	jle _Z21G_VehEntHandler_ThinkP9gentity_s_300
	lea eax, [edx+edx*2]
	shl al, 0x3
	sub al, dl
	lea eax, [eax+eax*4]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_310
_Z21G_VehEntHandler_ThinkP9gentity_s_300:
	mul dl
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_310
_Z21G_VehEntHandler_ThinkP9gentity_s_180:
	mov edi, [ebx+0x164]
_Z21G_VehEntHandler_ThinkP9gentity_s_170:
	test byte [edx+0x3088], 0x1
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_160
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0xc4]
	test eax, eax
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_160
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x64], eax
	lea eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov eax, scr_const
	movzx eax, word [eax+0x90]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z23G_DObjGetWorldTagMatrixP9gentity_sjPA3_f
	test eax, eax
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_320
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_tag_flash
	mov dword [esp+0x4], _cstring_couldnt_find_tag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z21G_VehEntHandler_ThinkP9gentity_s_370:
	mov edx, [ebp-0x64]
	mov eax, [edx+0x12c]
	test eax, eax
	jnz _Z21G_VehEntHandler_ThinkP9gentity_s_330
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
	call _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
_Z21G_VehEntHandler_ThinkP9gentity_s_360:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1a
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z10G_AddEventP9gentity_sij
	mov eax, [ebp-0x64]
	mov eax, [eax+0x36c]
	mov [edi+0x1d4], eax
	mov edi, [ebx+0x164]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_160
_Z21G_VehEntHandler_ThinkP9gentity_s_40:
	mov [esp], eax
	call _Z11G_EntUnlinkP9gentity_s
	mov edx, [ebp+0x8]
	mov edi, [edx+0x164]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_30
_Z21G_VehEntHandler_ThinkP9gentity_s_260:
	xorps xmm3, [_data16_80000000]
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_340
_Z21G_VehEntHandler_ThinkP9gentity_s_230:
	movss [ebx+0x48], xmm2
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_350
_Z21G_VehEntHandler_ThinkP9gentity_s_330:
	mov dword [esp+0x4], _cstring_fireturret_weapd
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_360
_Z21G_VehEntHandler_ThinkP9gentity_s_320:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z12AxisToAnglesPA3_KfPf
	lea edx, [ebp-0xa0]
	lea eax, [ebp-0x88]
	mov [esp+0xc], eax
	lea eax, [ebp-0x94]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z12AngleVectorsPKfPfS1_S1_
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
	jz _Z21G_VehEntHandler_ThinkP9gentity_s_370
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
	call _Z11G_DebugLinePKfS0_S0_i
	jmp _Z21G_VehEntHandler_ThinkP9gentity_s_370
	add [eax], al


;G_VehEntHandler_Touch(gentity_s*, gentity_s*, int)
_Z21G_VehEntHandler_TouchP9gentity_sS0_i:
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
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_10
	cmp eax, 0x6
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_10
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_10:
	cmp byte [edi+0x16b], 0x0
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
	mov eax, [edi+0x218]
	test eax, eax
	jnz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x84]
	jae _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
	lea edx, [ebp-0x2c]
	mov [esp+0x4], edx
	lea eax, [ebx+0x138]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	ucomiss xmm0, [_float_0_00100000]
	jp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_30
	jb _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_30:
	cmp dword [edi+0x4], 0x6
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_40
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
	call _Z13Vec2NormalizePf
	fstp st0
	movss xmm2, dword [ebp-0x2c]
	mulss xmm2, [ebp-0x20]
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [ebp-0x1c]
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_80000001]
	jp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_50
	jb _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_50:
	mov eax, [edi+0x15c]
	test eax, eax
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_60
	test byte [eax+0xc], 0x1
	jz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_60
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
	jnz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_70
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_130:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0xf423f
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_100:
	mov eax, [ebp-0x40]
	mov [esp+0x10], eax
	lea edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_40:
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
	jnz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_80
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_110:
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
	call _Z8G_DamageP9gentity_sS0_S0_PKfS2_iiii13hitLocation_tjji
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_60:
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
	jle _Z21G_VehEntHandler_TouchP9gentity_sS0_i_20
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
	jnz _Z21G_VehEntHandler_TouchP9gentity_sS0_i_90
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_120:
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], 0xffffffff
	mov dword [esp+0x1c], 0x9
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], esi
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_100
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_80:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_110
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_90:
	mov [esp+0xc], esi
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_120
_Z21G_VehEntHandler_TouchP9gentity_sS0_i_70:
	mov dword [esp+0xc], 0xf423f
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_vehicle_damage_t
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	jmp _Z21G_VehEntHandler_TouchP9gentity_sS0_i_130


;G_VehEntHandler_Controller(gentity_s const*, int*)
_Z26G_VehEntHandler_ControllerPK9gentity_sPi:
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
	js _Z26G_VehEntHandler_ControllerPK9gentity_sPi_10
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
_Z26G_VehEntHandler_ControllerPK9gentity_sPi_10:
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
	js _Z26G_VehEntHandler_ControllerPK9gentity_sPi_20
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
_Z26G_VehEntHandler_ControllerPK9gentity_sPi_20:
	mov edx, [edi+0x324]
	test edx, edx
	js _Z26G_VehEntHandler_ControllerPK9gentity_sPi_30
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
_Z26G_VehEntHandler_ControllerPK9gentity_sPi_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;G_VehiclesSetupSpawnedEnts()
_Z26G_VehiclesSetupSpawnedEntsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x2c], s_vehicles+0x1b8
_Z26G_VehiclesSetupSpawnedEntsv_60:
	mov eax, [ebp-0x2c]
	mov ecx, [eax]
	cmp ecx, 0x3ff
	jz _Z26G_VehiclesSetupSpawnedEntsv_10
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
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [ebp-0x24], eax
	mov edx, level
	mov ecx, [edx+0xc]
	test ecx, ecx
	jle _Z26G_VehiclesSetupSpawnedEntsv_20
	xor edi, edi
	xor ebx, ebx
_Z26G_VehiclesSetupSpawnedEntsv_50:
	lea esi, [ebx+edi]
	add esi, g_entities
	cmp byte [esi+0x100], 0x0
	jz _Z26G_VehiclesSetupSpawnedEntsv_30
	movzx eax, word [esi+0x170]
	mov ecx, scr_const
	cmp ax, [ecx+0xfc]
	jz _Z26G_VehiclesSetupSpawnedEntsv_40
_Z26G_VehiclesSetupSpawnedEntsv_30:
	add edi, 0x1
	add ebx, 0x273
	cmp edi, [edx+0xc]
	jl _Z26G_VehiclesSetupSpawnedEntsv_50
_Z26G_VehiclesSetupSpawnedEntsv_20:
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0x168]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_cannot_f
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
_Z26G_VehiclesSetupSpawnedEntsv_10:
	add dword [ebp-0x1c], 0x1
	add dword [ebp-0x2c], 0x354
	cmp dword [ebp-0x1c], 0x8
	jnz _Z26G_VehiclesSetupSpawnedEntsv_60
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26G_VehiclesSetupSpawnedEntsv_40:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [ebp-0x20], eax
	mov [esp], eax
	call _Z22Com_IsLegacyXModelNamePKc
	mov edx, [ebp-0x20]
	add edx, 0x7
	test eax, eax
	cmovz edx, [ebp-0x20]
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26G_VehiclesSetupSpawnedEntsv_70
	mov edx, level
	jmp _Z26G_VehiclesSetupSpawnedEntsv_30
_Z26G_VehiclesSetupSpawnedEntsv_70:
	mov eax, [esi+0x88]
	test eax, eax
	jnz _Z26G_VehiclesSetupSpawnedEntsv_80
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x168]
	mov [esp], eax
	call _Z11G_ModelNamei
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_cannot_u
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	jmp _Z26G_VehiclesSetupSpawnedEntsv_10
_Z26G_VehiclesSetupSpawnedEntsv_80:
	mov edx, [ebp-0x28]
	mov [edx+0x88], eax
	mov [esp], edx
	call _Z16SV_SetBrushModelP9gentity_s
	mov ecx, [ebp-0x28]
	mov dword [ecx+0x120], 0x800000
	test byte [ecx+0x17c], 0x1
	jz _Z26G_VehiclesSetupSpawnedEntsv_10
	mov dword [ecx+0x120], 0xa00000
	jmp _Z26G_VehiclesSetupSpawnedEntsv_10
	nop


;Initialized global or static variables of g_vehicles_mp:
SECTION .data
s_vehicleFields: dd _cstring_type, 0x40, 0xc, _cstring_steerwheels, 0x44, 0x5, _cstring_texurescroll, 0x48, 0x5, _cstring_quadbarrel, 0x4c, 0x5, _cstring_bulletdamage, 0x50, 0x5, _cstring_armorpiercingdam, 0x54, 0x5, _cstring_grenadedamage, 0x58, 0x5, _cstring_projectiledamage, 0x5c, 0x5, _cstring_projectilesplash, 0x60, 0x5, _cstring_heavyexplosiveda, 0x64, 0x5, _cstring_texurescrollscal, 0x68, 0x6, _cstring_maxspeed, 0x6c, 0x6, _cstring_accel, 0x70, 0x6, _cstring_rotrate, 0x74, 0x6, _cstring_rotaccel, 0x78, 0x6, _cstring_collisiondamage, 0x84, 0x6, _cstring_collisionspeed, 0x88, 0x6, _cstring_suspensiontravel, 0x8c, 0x6, _cstring_maxbodypitch, 0x7c, 0x6, _cstring_maxbodyroll, 0x80, 0x6, _cstring_turretweapon, 0x90, 0x0, _cstring_turrethorizspanl, 0xd0, 0x6, _cstring_turrethorizspanr, 0xd4, 0x6, _cstring_turretvertspanup, 0xd8, 0x6, _cstring_turretvertspando, 0xdc, 0x6, _cstring_turretrotrate, 0xe0, 0x6, _cstring_lowidlesnd, 0xe4, 0x0, _cstring_highidlesnd, 0x124, 0x0, _cstring_lowenginesnd, 0x164, 0x0, _cstring_highenginesnd, 0x1a4, 0x0, _cstring_turretspinsnd, 0x1e4, 0x0, _cstring_turretstopsnd, 0x224, 0x0, _cstring_enginesndspeed, 0x26c, 0x6
s_vehicleTypeNames: dd _cstring_4_wheel, _cstring_tank, _cstring_plane, _cstring_boat, _cstring_artillery, _cstring_helicopter, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_wheelTags: dd 0x1708d4e, 0x1708d50, 0x1708d52, 0x1708d54, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_vehicles_mp:
SECTION .rdata


;Zero initialized global or static variables of g_vehicles_mp:
SECTION .bss
s_phys: resb 0x40
s_backup: resb 0x1c0
s_vehicleInfos: resb 0x4e00
s_numVehicleInfos: resb 0x1c
s_vehicles: resb 0x1aa0
vehDebugServer: resb 0x30
vehTestHorsepower: resb 0x4
vehTestMaxMPH: resb 0x4
vehTestWeight: resb 0x4
vehTextureScrollScale: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_bad_vehicle_fiel:		db 015h,"Bad vehicle field type %i",0ah,0
_cstring_unknown_vehicle_:		db 015h,"Unknown vehicle type [s]",0ah,0
_cstring_vehicless:		db "vehicles/%s",0
_cstring_vehiclefile:		db "VEHICLEFILE",0
_cstring_vehicle_file:		db "vehicle file",0
_cstring_warning_couldnt_:		db "WARNING: couldn",27h,"t find vehicle info for ",27h,"%s",27h,", attempting to use ",27h,"defaultvehicle",27h,".",0ah,0
_cstring_defaultvehicle_m:		db "defaultvehicle_mp",0
_cstring_cannot_find_vehi:		db 015h,"Cannot find vehicle info for ",27h,"defaultvehicle",27h,". This is a default vehicle info that you should have.",0ah,0
_cstring_script_vehicle_s:		db 015h,"Script vehicle [%s] needs [%s]",0ah,0
_cstring_vehicle_damage_t:		db "Vehicle damage to ent #%i: %.2f",0ah,0
_cstring_1f_mph_2f_dps:		db "%.1f MPH, %.2f DPS",0
_cstring_vehicletype:		db "vehicletype",0
_cstring_hit_max_vehicle_:		db 015h,"Hit max vehicle count [%d]",0ah,0
_cstring_vehicle_s_not_pr:		db "vehicle ",27h,"%s",27h," not precached",0
_cstring_cant_find_info_f:		db 015h,"Can",27h,"t find info for script vehicle [%s]",0ah,0
_cstring_warning_vehicle_:		db "WARNING: vehicle ",27h,"%s",27h," is missing a required tag! switching to default vehicle model and info.",0ah,0
_cstring_error_default_ve:		db "ERROR: default vehicle is missing a required tag!",0
_cstring_vehicleclearride:		db 015h,"VehicleClearRideSlotForPlayer(): player ent #%i was not using vehicle.",0ah,0
_cstring_g_vehunlinkplaye:		db 015h,"G_VehUnlinkPlayer: Player is not using a vehicle",0ah,0
_cstring_turn_on_debug_in:		db "Turn on debug information for vehicles",0
_cstring_vehdebugserver:		db "vehDebugServer",0
_cstring_scale_vehicle_te:		db "Scale vehicle texture scroll scale by this amount (debug only)",0
_cstring_vehtexturescroll:		db "vehTextureScrollScale",0
_cstring_null:		db 0
_cstring_vehtesthorsepowe:		db "vehTestHorsepower",0
_cstring_lbs:		db "lbs",0
_cstring_vehtestweight:		db "vehTestWeight",0
_cstring_vehtestmaxmph:		db "vehTestMaxMPH",0
_cstring_linkplayertovehi:		db 015h,"LinkPlayerToVehicle: Vehicle has all seats filled",0ah,0
_cstring_linkplayertovehi1:		db 015h,"LinkPlayerToVehicle: Player already has an owner",0ah,0
_cstring_linkplayertovehi2:		db 015h,"LinkPlayerToVehicle: Cannot link to vehicle bone ",22h,"%s",22h,0ah,0
_cstring_linkplayertovehi3:		db 015h,"LinkPlayerToVehicle: Tried to mount player on a full vehicle.",0ah,0
_cstring_vehiclegetplayer:		db 015h,"VehicleGetPlayerRideSlot(): player ent #%i was not using vehicle.",0ah,0
_cstring_tag_flash:		db "tag_flash",0
_cstring_couldnt_find_tag:		db 015h,"Couldn",27h,"t find tag ",22h,"%s",22h," on vehicle (entity %d).",0ah,0
_cstring_fireturret_weapd:		db 015h,"FireTurret(): WeapDef is not a bullet type.",0ah,0
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
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_20_00000000:		dd 0x41a00000	; 20
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_127_00000000:		dd 0x42fe0000	; 127
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
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

