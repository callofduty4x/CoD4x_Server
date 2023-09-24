;Imports of g_scr_vehicle:
	extern s_vehicleInfos
	extern _Z12Scr_GetFloatj
	extern _Z15Scr_GetNumParamv
	extern _Z14Scr_ParamErrorjPKc
	extern _Z16Com_PrintWarningiPKcz
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z15MatrixTransposePA3_KfPA3_f
	extern _Z14MatrixMultiplyPA3_KfS1_PA3_f
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z13Vec2NormalizePf
	extern _Z11G_SetOriginP9gentity_sPKf
	extern _Z10G_SetAngleP9gentity_sPKf
	extern _Z13SV_LinkEntityP9gentity_s
	extern floorf
	extern sinf
	extern cosf
	extern scr_const
	extern _Z10Scr_NotifyP9gentity_stj
	extern g_entities
	extern _Z8vectoyawPKf
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern _Z23G_GetWeaponIndexForNamePKc
	extern level
	extern _Z16SV_DObjGetBoundsP9gentity_sPfS1_
	extern _Z2vaPKcz
	extern _Z9Scr_ErrorPKc
	extern _Z15Scr_ObjectErrorPKc
	extern _Z10Com_MemsetPvii
	extern vec3_origin
	extern _Z12Scr_AddFloatf
	extern _Z13Scr_GetStringj
	extern _Z25BG_FindWeaponIndexForNamePKc
	extern memcpy
	extern entityHandlers
	extern _Z14AnglesSubtractPKfS0_Pf
	extern _Z16RadiusFromBoundsPKfS0_
	extern _Z12ExtendBoundsPfS_PKf
	extern _Z15CM_AreaEntitiesPKfS0_Piii
	extern _Z19ExpandBoundsToWidthPfS_
	extern _Z16SV_EntityContactPKfS0_PK9gentity_s
	extern _Z18Scr_IsSystemActiveh
	extern _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	extern _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
	extern _Z11vectoanglesPKfPf
	extern _Z16LinearTrackAngleffff
	extern _Z23VEH_UpdateClientChopperP9gentity_s
	extern _Z15BG_GetWeaponDefj
	extern _Z17Com_GetServerDObji
	extern _Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_
	extern _Z13SV_SightTracePiPKfS1_S1_S1_iii
	extern _Z13Scr_AddEntityP9gentity_s
	extern _Z8G_flrandff
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z13Scr_AddVectorPKf
	extern _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	extern _Z13Scr_GetEntityj
	extern _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
	extern _Z10G_AddEventP9gentity_sij
	extern _Z27Scr_GetConstLowercaseStringj
	extern _Z19SV_DObjGetBoneIndexPK9gentity_sj
	extern _Z18SL_ConvertToStringj
	extern _Z13Scr_GetVectorjPf
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z10Scr_GetIntj
	extern _ZN9EntHandle6setEntEP9gentity_s
	extern _Z9I_stricmpPKcS0_

;Exports of g_scr_vehicle:
	global s_correctSolidDeltas
	global _Z23CMD_VEH_Script_SetSpeedP9gentity_s
	global _Z25PushAttachedStickyMissileP9gentity_sS0_PfS1_
	global _Z12VEH_JoltBodyP9gentity_sPKffff
	global _Z15VEH_SetPositionP9gentity_sPKfS2_S2_
	global _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t
	global _Z20VEH_UpdateMoveToGoalP9gentity_sPKf
	global _Z13VEH_SlideMoveP9gentity_si
	global _Z14VEH_InitEntityP9gentity_sP13scr_vehicle_si
	global _Z15GScr_GetVehicle12scr_entref_t
	global _Z15VEH_ClearGroundP9gentity_s
	global _Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si
	global _Z16CMD_VEH_GetSpeed12scr_entref_t
	global _Z16CMD_VEH_SetSpeed12scr_entref_t
	global _Z17CMD_VEH_SetWeapon12scr_entref_t
	global _Z17Scr_Vehicle_ThinkP9gentity_s
	global _Z18CMD_VEH_FireWeapon12scr_entref_t
	global _Z18CMD_VEH_SetGoalPos12scr_entref_t
	global _Z18CMD_VEH_SetGoalYaw12scr_entref_t
	global _Z19CMD_VEH_GetSpeedMPH12scr_entref_t
	global _Z19CMD_VEH_ResumeSpeed12scr_entref_t
	global _Z19CMD_VEH_SetYawSpeed12scr_entref_t
	global _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t
	global _Z20CMD_VEH_ClearGoalYaw12scr_entref_t
	global _Z20CMD_VEH_SetLookAtEnt12scr_entref_t
	global _Z20CMD_VEH_SetTargetYaw12scr_entref_t
	global _Z22CMD_VEH_ClearLookAtEnt12scr_entref_t
	global _Z22CMD_VEH_ClearTargetYaw12scr_entref_t
	global _Z22CMD_VEH_SetHoverParams12scr_entref_t
	global _Z22CMD_VEH_SetVehicleTeam12scr_entref_t
	global _Z23CMD_VEH_SetAirResitance12scr_entref_t
	global _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t
	global _Z25CMD_VEH_SetTurningAbility12scr_entref_t
	global _Z26CMD_VEH_NearGoalNotifyDist12scr_entref_t
	global _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t
	global _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t
	global _Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t
	global s_flashTags


SECTION .text


;CMD_VEH_Script_SetSpeed(gentity_s*)
_Z23CMD_VEH_Script_SetSpeedP9gentity_s:
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
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x24c], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jb _Z23CMD_VEH_Script_SetSpeedP9gentity_s_10
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_80:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z23CMD_VEH_Script_SetSpeedP9gentity_s_20
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x250], xmm0
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_20:
	cmp word [ebx+0x40], 0x5
	jz _Z23CMD_VEH_Script_SetSpeedP9gentity_s_30
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_70:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	ja _Z23CMD_VEH_Script_SetSpeedP9gentity_s_40
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [esi+0x250]
	movss [esi+0x254], xmm0
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_60:
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x250]
	jae _Z23CMD_VEH_Script_SetSpeedP9gentity_s_50
	ucomiss xmm0, [esi+0x254]
	jae _Z23CMD_VEH_Script_SetSpeedP9gentity_s_50
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_50:
	mov dword [esp+0x4], _cstring_accelerationdece
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	mov eax, 0x418ccccd
	mov [esi+0x250], eax
	mov [esi+0x254], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_40:
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_17_60000038]
	movss [esi+0x254], xmm0
	jmp _Z23CMD_VEH_Script_SetSpeedP9gentity_s_60
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_30:
	movss xmm1, dword [esi+0x24c]
	ucomiss xmm1, [esi+0x25c]
	jbe _Z23CMD_VEH_Script_SetSpeedP9gentity_s_70
	movss xmm0, dword [esi+0x250]
	ucomiss xmm0, xmm1
	jbe _Z23CMD_VEH_Script_SetSpeedP9gentity_s_70
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_capping_
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	mov eax, [esi+0x24c]
	mov [esi+0x250], eax
	jmp _Z23CMD_VEH_Script_SetSpeedP9gentity_s_70
_Z23CMD_VEH_Script_SetSpeedP9gentity_s_10:
	jp _Z23CMD_VEH_Script_SetSpeedP9gentity_s_80
	mov dword [esp+0x4], _cstring_cannot_set_negat
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	xor eax, eax
	mov [esi+0x24c], eax
	jmp _Z23CMD_VEH_Script_SetSpeedP9gentity_s_80


;PushAttachedStickyMissile(gentity_s*, gentity_s*, float*, float*)
_Z25PushAttachedStickyMissileP9gentity_sS0_PfS1_:
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
	call _Z12AnglesToAxisPKfPA3_f
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [edi+0xe4]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0x84]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15MatrixTransposePA3_KfPA3_f
	lea edx, [ebp-0xa8]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
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
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0xf0]
	mov [esp+0x8], esi
	lea edx, [ebp-0xa8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0xcc]
	mov [esp], ecx
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12AxisToAnglesPA3_KfPf
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
_Z12VEH_JoltBodyP9gentity_sPKffff:
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
	movss xmm3, dword [ebp-0x78]
	movss [ebx+0x2cc], xmm3
	lea eax, [ebx+0x2c0]
	mov [esp], eax
	call _Z13Vec2NormalizePf
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
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	movss xmm1, dword [edx+0x4]
	ucomiss xmm1, [eax+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	movss xmm2, dword [edx+0x8]
	ucomiss xmm2, [eax+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	lea eax, [ebx+0x18]
	ucomiss xmm0, [ebx+0x18]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	ucomiss xmm1, [eax+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	ucomiss xmm2, [eax+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	lea eax, [ebx+0x148]
	movss xmm0, dword [esi]
	ucomiss xmm0, [ebx+0x148]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	movss xmm1, dword [esi+0x4]
	ucomiss xmm1, [eax+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	movss xmm2, dword [esi+0x8]
	ucomiss xmm2, [eax+0x8]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	lea eax, [ebx+0x3c]
	ucomiss xmm0, [ebx+0x3c]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	ucomiss xmm1, [eax+0x4]
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	ucomiss xmm2, [eax+0x8]
	jp _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	jnz _Z15VEH_SetPositionP9gentity_sPKfS2_S2__10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15VEH_SetPositionP9gentity_sPKfS2_S2__10:
	mov [esp+0x4], edx
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


;VEH_UpdateAngleAndAngularVel(int, float, float, float, float, vehicle_physic_t*)
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t:
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
	jnz _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_10
	jp _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_10
	ucomiss xmm2, [ebx+esi*4+0x90]
	jp _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_10
	jz _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_20
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_10:
	movss xmm5, dword [ebx+esi*4+0x90]
	movss xmm4, dword [_data16_7fffffff]
	movaps xmm7, xmm5
	andps xmm7, xmm4
	movss xmm6, dword [ebx+esi*4+0x30]
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	ucomiss xmm0, xmm2
	jb _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_30
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
	jae _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_40
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_30:
	movss xmm1, dword [ebp-0x10]
	ucomiss xmm2, xmm3
	ja _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_50
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_80:
	movss xmm2, dword [_float_0_05000000]
	mulss xmm1, xmm2
	ucomiss xmm1, xmm7
	jbe _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_60
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_90:
	andps xmm3, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	ucomiss xmm0, xmm3
	jbe _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_60
	movss xmm0, dword [ebp-0xc]
	movss [ebx+esi*4+0x18], xmm0
	mov dword [ebx+esi*4+0x90], 0x0
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_20:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_60:
	ucomiss xmm6, xmm5
	ja _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_70
	subss xmm5, xmm1
	maxss xmm6, xmm5
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_100:
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
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_40:
	movss xmm1, dword [ebp-0x14]
	movaps xmm6, xmm2
	ucomiss xmm2, xmm3
	jbe _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_80
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_50:
	xorps xmm6, [_data16_80000000]
	movss xmm2, dword [_float_0_05000000]
	mulss xmm1, xmm2
	ucomiss xmm1, xmm7
	jbe _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_60
	jmp _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_90
_Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_70:
	addss xmm1, xmm5
	ucomiss xmm1, xmm6
	ja _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_100
	movaps xmm6, xmm1
	jmp _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t_100
	nop


;VEH_UpdateMoveToGoal(gentity_s*, float const*)
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf:
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
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_10
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
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_20
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_500:
	movss xmm6, dword [edi+0x250]
	movss xmm3, dword [edi+0x24c]
	movaps xmm1, xmm3
	movss xmm4, dword [edi+0x25c]
	ucomiss xmm3, xmm4
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_30
	movaps xmm0, xmm6
	mulss xmm0, [_float_0_05000000]
	movaps xmm1, xmm4
	subss xmm1, xmm0
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x1
	movaps xmm2, xmm3
	andps xmm2, xmm0
	andnps xmm0, xmm1
	movaps xmm1, xmm0
	orps xmm1, xmm2
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_550:
	movaps xmm2, xmm1
	divss xmm2, dword [edi+0x254]
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm0
	mulss xmm0, xmm1
	mulss xmm2, xmm0
	mulss xmm1, [_float__0_05000000]
	addss xmm1, [ebp-0xbc]
	ucomiss xmm2, xmm1
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_40
	ucomiss xmm4, [ebp-0xcc]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_50
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_40:
	mov dword [edi+0x278], 0x0
	mov dword [ebp-0xb0], 0x3d4ccccd
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_770:
	cmp byte [ebp-0xbd], 0x0
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_60
	movss xmm2, dword [edi+0x228]
	movss xmm0, dword [edi+0x22c]
	movss xmm1, dword [ebp-0xd0]
	mulss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mov eax, [edi+0x278]
	test eax, eax
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_70
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_510:
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, xmm4
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_80
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, [ebp-0xb0]
	movss [ebp-0x50], xmm2
	movaps xmm2, xmm4
	subss xmm2, [ebp-0x50]
	ucomiss xmm0, xmm2
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_90
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540:
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
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_100
	movss xmm0, dword [edi+0x24c]
	ucomiss xmm0, [edi+0x25c]
	jae _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_110
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_100:
	movss xmm1, dword [ebp-0x6c]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_740:
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [ebp-0x50]
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_120
	movss xmm1, dword [ebp-0x50]
	divss xmm1, xmm0
	mulss xmm6, xmm1
	movss xmm2, dword [ebp-0x6c]
	mulss xmm2, xmm1
	movss [ebp-0x6c], xmm2
	mulss xmm4, xmm1
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_120:
	cmp byte [ebp-0xbd], 0x0
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_130
	lea eax, [esi+0x4]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_800:
	movss xmm3, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm3
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850:
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
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_140
	mov eax, [edi+0x274]
	test eax, eax
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_150
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_140:
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
	movss xmm0, dword [_float_0_05000000]
	ucomiss xmm0, [ebp-0xb0]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_160
	lea edx, [ebx+0x4]
	lea eax, [ebx+0x8]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_600:
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
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_170
	mov eax, [ebp-0x84]
	mov esi, [eax+0x270]
	test esi, esi
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_180
	mov ecx, [eax+0x278]
	test ecx, ecx
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_190
	cmp dword [eax+0x1c8], 0x2
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_200
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_190:
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
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_210
	ucomiss xmm0, xmm2
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_220
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_210:
	ucomiss xmm1, xmm3
	jae _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_230
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_200:
	mov eax, [ebp-0x84]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_180:
	mov edx, [eax+0x26c]
	test edx, edx
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_240
	movss xmm5, dword [eax+0x29c]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_230:
	lea esi, [ebx+0xc0]
	movss xmm4, dword [esi+0x1c]
	subss xmm4, [ebx+0x2ac]
	mov eax, [ebx+0x270]
	test eax, eax
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_250
	movaps xmm0, xmm4
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00100000]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_260
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_250:
	mov byte [ebp-0x8d], 0x0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_730:
	movss xmm0, dword [esi+0x94]
	movss [ebp-0x8c], xmm0
	movss xmm1, dword [esi+0x3c]
	movss xmm2, dword [esi+0x40]
	ucomiss xmm5, [ebx+0x2b0]
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_270
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_280
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_270:
	mov dword [ebx+0x2b8], 0x0
	movss [ebx+0x2b0], xmm5
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_280:
	mov eax, [ebx+0x2b8]
	test eax, eax
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_290
	movss xmm0, dword [_float_0_20000000]
	mulss xmm1, xmm0
	mulss xmm2, xmm0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_290:
	mov eax, [ebx+0x270]
	test eax, eax
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_300
	mov eax, [ebx+0x26c]
	pxor xmm3, xmm3
	test eax, eax
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_300
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_560:
	mov edx, esi
	movaps xmm0, xmm5
	mov eax, 0x1
	movss [ebp-0x128], xmm4
	call _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t
	mov eax, [ebx+0x270]
	test eax, eax
	movss xmm4, dword [ebp-0x128]
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_310
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [esi+0x94]
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm1, xmm0
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_320
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_590:
	cmp byte [ebp-0x8d], 0x0
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_330
	movss xmm0, dword [esi+0x1c]
	subss xmm0, [ebx+0x2ac]
	mulss xmm4, xmm0
	movss xmm3, dword [ebp-0xcc]
	ucomiss xmm3, xmm4
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_340
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00100000]
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_350
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_330:
	movss xmm4, dword [ebp-0xcc]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_670:
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
	call _Z13Vec2NormalizePf
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
	divss xmm0, dword [_float_0_05000000]
	movss [ebp-0x48], xmm0
	movss xmm3, dword [ebp-0x118]
	mulss xmm3, xmm3
	addss xmm3, xmm1
	sqrtss xmm3, xmm3
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [ebp-0xcc]
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_360
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_870:
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
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_370
	movss xmm0, dword [ebp-0x48]
	ucomiss xmm0, [ebp-0xcc]
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_370
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
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_380
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_570:
	movss [ebp-0x9c], xmm7
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_780:
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
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_390
	mov ebx, [eax+0x23c]
	test ebx, ebx
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_400
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_720:
	movss xmm3, dword [eax+0x22c]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_580:
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
	call _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t
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
	call _Z28VEH_UpdateAngleAndAngularVeliffffP16vehicle_physic_t
	movss xmm2, dword [ebp-0xcc]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_680:
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
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_410
	movss xmm3, dword [ebp-0xcc]
	movaps xmm1, xmm7
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_690:
	movss [edi+0x2e8], xmm3
	movss [edi+0x2e4], xmm1
	cmp byte [ebp-0xbd], 0x0
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
	mov eax, [ebp-0xc4]
	mov ebx, [eax+0x164]
	movss xmm0, dword [ebx+0x2bc]
	ucomiss xmm0, [ebp-0xcc]
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_430
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_440
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_430:
	ucomiss xmm0, [ebp-0xbc]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_450
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_440:
	mov edi, [ebx+0x274]
	test edi, edi
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_460
	movss xmm0, dword [ebx+0x224]
	pxor xmm1, xmm1
	movss [ebp-0xcc], xmm1
	ucomiss xmm0, xmm1
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_470
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_470
	mov esi, [ebx+0x278]
	test esi, esi
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_480
	movss xmm2, dword [ebp-0xbc]
	ucomiss xmm2, [ebp-0xcc]
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_490
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_20:
	cmp byte [ebp-0xbd], 0x0
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_500
	movss xmm2, dword [_float_0_05000000]
	movss [ebp-0xb0], xmm2
	movss xmm6, dword [edi+0x250]
	movss xmm3, dword [edi+0x24c]
	movss xmm4, dword [edi+0x25c]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_60:
	movaps xmm2, xmm3
	movaps xmm0, xmm6
	movss xmm3, dword [edi+0x254]
	movss [ebp-0x3c], xmm3
	mov eax, [edi+0x278]
	test eax, eax
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_510
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_70:
	ucomiss xmm2, xmm4
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_520
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm0
	movss [ebp-0x50], xmm1
	addss xmm1, xmm4
	ucomiss xmm1, xmm2
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_530
	movaps xmm2, xmm1
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_530:
	movss [ebp-0x3c], xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_30:
	movaps xmm0, xmm6
	mulss xmm0, [_float_0_05000000]
	addss xmm0, xmm4
	ucomiss xmm0, xmm3
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_550
	movaps xmm1, xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_550
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_300:
	movss xmm3, dword [ebx+0x2b4]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_560
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_370:
	movaps xmm4, xmm7
	subss xmm4, xmm3
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_570
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_390:
	mov dword [eax+0x23c], 0x0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_700:
	movss xmm3, dword [eax+0x250]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_580
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_310:
	pxor xmm2, xmm2
	movss [ebp-0xcc], xmm2
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_590
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_160:
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_600
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_460:
	movss xmm0, dword [_float_0_05000000]
	mulss xmm0, [ebx+0x25c]
	ucomiss xmm0, [ebp-0xbc]
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x38]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_170:
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
	call _Z8vectoyawPKf
	fstp dword [ebp-0x15c]
	movss xmm5, dword [ebp-0x15c]
	mov ecx, [ebp-0xc4]
	mov ebx, [ecx+0x164]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_230
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_130:
	sqrtss xmm3, xmm7
	movss xmm7, dword [_float_1_00000000]
	ucomiss xmm7, xmm3
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_610
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
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_620
	pxor xmm2, xmm2
	movss [ebp-0xcc], xmm2
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_860:
	movaps xmm2, xmm5
	mulss xmm2, [ebx+0x7c]
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x78]
	subss xmm2, xmm0
	andps xmm2, [_data16_7fffffff]
	ucomiss xmm2, xmm3
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_630
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
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_630
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm0
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, xmm1
	ucomiss xmm0, xmm2
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_630
	divss xmm0, xmm1
	movss xmm3, dword [ebp-0x4c]
	minss xmm3, xmm0
	movaps xmm0, xmm3
	test eax, eax
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_640
	movss xmm1, dword [_float__1_00000000]
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_900:
	mulss xmm0, xmm1
	divss xmm0, dword [ebp-0x4c]
	mulss xmm0, [_float_0_05000000]
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_650
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_240:
	cmp dword [eax+0x1c8], 0x2
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_660
	mov ecx, [ebp-0xa0]
	movss xmm5, dword [ecx+0x1c]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_230
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_350:
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_330
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_340:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc4]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	pxor xmm0, xmm0
	movss [ebp-0xcc], xmm0
	movaps xmm4, xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_670
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_10:
	movaps xmm2, xmm1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_680
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_410:
	movaps xmm1, xmm7
	subss xmm1, xmm3
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_690
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_520:
	movss xmm3, dword [ebp-0xb0]
	mulss xmm3, xmm0
	movss [ebp-0x50], xmm3
	subss xmm4, xmm3
	maxss xmm2, xmm4
	movss [ebp-0x3c], xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_400:
	movss xmm1, dword [_data16_7fffffff]
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0xd8]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_5_00000000]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_700
	movss xmm0, dword [eax+0xe0]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_5_00000000]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_710
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0x150]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_3_00000000]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_700
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0x158]
	andps xmm0, xmm1
	ucomiss xmm0, [_float_3_00000000]
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_700
	mov dword [eax+0x23c], 0x1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_720
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_260:
	mov byte [ebp-0x8d], 0x1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_730
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_150:
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_140
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_110:
	mulss xmm3, [ebp-0x70]
	mulss xmm1, [ebp-0x74]
	addss xmm3, xmm1
	ucomiss xmm3, [ebp-0xcc]
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_100
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, [ebp-0x6c]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_100
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
	call _Z13Vec2NormalizePf
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_740
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_470:
	ucomiss xmm0, [ebp-0xbc]
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
	movss xmm0, dword [_float_35_20000076]
	ucomiss xmm0, [ebx+0x25c]
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_880:
	mov dword [ebx+0x1c8], 0x2
	movss xmm4, dword [ebp-0xcc]
	ucomiss xmm4, [ebx+0x224]
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_750
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_750
	lea eax, [ebx+0x15c]
	mov dword [ebx+0x15c], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea eax, [ebx+0x138]
	mov dword [ebx+0x138], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_750:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x38]
	mov [esp+0x4], eax
	mov eax, [ebp-0xc4]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_50:
	movss xmm1, dword [ebp-0xbc]
	ucomiss xmm1, xmm2
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_760
	mov dword [ebp-0xb0], 0x3d4ccccd
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_890:
	mov dword [edi+0x278], 0x1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_770
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_380:
	divss xmm2, xmm1
	movss [ebp-0x9c], xmm2
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_780
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_610:
	lea eax, [esi+0x4]
	pxor xmm0, xmm0
	movss [ebp-0xcc], xmm0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_650:
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [ebp-0xcc]
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_790
	jz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_800
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_790:
	movss xmm5, dword [ebx+0x80]
	movss xmm1, dword [_data16_7fffffff]
	movaps xmm0, xmm4
	andps xmm0, xmm1
	ucomiss xmm0, [_float_0_00100000]
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_810
	jb _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_820
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_810:
	andps xmm1, xmm5
	movss xmm0, dword [_float_0_00100000]
	ucomiss xmm0, xmm1
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_830
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xcc]
	ucomiss xmm1, xmm0
	ja _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_840
	movss xmm2, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm2
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_660:
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z8vectoyawPKf
	fstp dword [ebp-0x15c]
	movss xmm5, dword [ebp-0x15c]
	mov eax, [ebp-0xc4]
	mov ebx, [eax+0x164]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_230
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_620:
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
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_860
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm1
	addss xmm3, xmm3
	divss xmm1, xmm3
	mulss xmm1, [_float_0_05000000]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x4c]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm1, xmm0
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_630
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm1
	divss xmm0, xmm2
	movss xmm6, dword [ebp-0x64]
	mulss xmm6, xmm0
	subss xmm6, [esi]
	mulss xmm0, [ebp-0x68]
	subss xmm0, [ebp-0xa4]
	movss [ebp-0x6c], xmm0
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_630:
	lea eax, [esi+0x4]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_650
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_360:
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
	divss xmm0, xmm3
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_870
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_490:
	jp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_480:
	movss xmm3, dword [ebp-0xcc]
	ucomiss xmm3, [ebx+0x25c]
	jnz _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
	jnp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_880
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_420
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_450:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x118]
	mov [esp+0x4], eax
	mov edx, [ebp-0xc4]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	mov ecx, [ebp-0xc4]
	mov ebx, [ecx+0x164]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_440
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_320:
	mov dword [ebx+0x2b8], 0x1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_590
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_80:
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, [ebp-0xb0]
	movss [ebp-0x50], xmm1
	movaps xmm2, xmm1
	addss xmm2, xmm4
	ucomiss xmm2, xmm0
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540
	movss xmm2, dword [ebp-0xcc]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_760:
	movaps xmm0, xmm1
	subss xmm0, xmm2
	divss xmm0, xmm4
	movss xmm1, dword [_float_0_05000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_0_05000000]
	movss xmm2, dword [ebp-0xcc]
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movss [ebp-0x160], xmm2
	movss xmm2, dword [_float_0_05000000]
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_890
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_90:
	movaps xmm2, xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_540
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_820:
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_710:
	mov eax, [ebp-0x84]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_700
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_220:
	subss xmm0, xmm2
	divss xmm0, dword [ebp-0x94]
	addss xmm1, xmm0
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_210
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_830:
	movss xmm1, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm1
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_640:
	movss xmm1, dword [edi+0x264]
	xorps xmm1, [_data16_80000000]
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_900
_Z20VEH_UpdateMoveToGoalP9gentity_sPKf_840:
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm5
	ucomiss xmm0, xmm1
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_800
	movaps xmm2, xmm5
	mulss xmm2, [_float__0_05000000]
	movss xmm3, dword [_float_0_50000000]
	movss [ebp-0xd0], xmm3
	movaps xmm0, xmm3
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x80]
	divss xmm1, xmm0
	movaps xmm0, xmm2
	divss xmm0, xmm4
	ucomiss xmm0, xmm1
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
	divss xmm2, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	ucomiss xmm1, xmm0
	jbe _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
	movss xmm0, dword [edi+0x250]
	mulss xmm0, [_float_0_05000000]
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
	jmp _Z20VEH_UpdateMoveToGoalP9gentity_sPKf_850
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
	jz _Z13VEH_SlideMoveP9gentity_si_10
	subss xmm0, [_float_40_00000000]
	movss [ebp-0x28], xmm0
	addss xmm0, [ebx+0x80]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x80], xmm0
	mov eax, [s_phys+0x2c]
	test eax, eax
	jnz _Z13VEH_SlideMoveP9gentity_si_20
_Z13VEH_SlideMoveP9gentity_si_330:
	xor edx, edx
	mov dword [ebp-0xbc], 0x1
_Z13VEH_SlideMoveP9gentity_si_340:
	lea eax, [edx+edx]
	add eax, edx
	lea eax, [ebp+eax*4-0xb0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z15Vec3NormalizeToPKfPf
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
_Z13VEH_SlideMoveP9gentity_si_100:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	cmp byte [ebp-0x4b], 0x0
	jnz _Z13VEH_SlideMoveP9gentity_si_30
	movss xmm2, dword [ebp-0x74]
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jbe _Z13VEH_SlideMoveP9gentity_si_40
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
_Z13VEH_SlideMoveP9gentity_si_40:
	ucomiss xmm2, [_float_1_00000000]
	jp _Z13VEH_SlideMoveP9gentity_si_50
	jz _Z13VEH_SlideMoveP9gentity_si_60
_Z13VEH_SlideMoveP9gentity_si_50:
	mulss xmm2, [ebp-0xdc]
	movss xmm1, dword [ebp-0xdc]
	subss xmm1, xmm2
	movss [ebp-0xdc], xmm1
	cmp dword [ebp-0xbc], 0x4
	jg _Z13VEH_SlideMoveP9gentity_si_70
	mov eax, [ebp-0xbc]
	test eax, eax
	jle _Z13VEH_SlideMoveP9gentity_si_80
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
	jbe _Z13VEH_SlideMoveP9gentity_si_90
_Z13VEH_SlideMoveP9gentity_si_310:
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
_Z13VEH_SlideMoveP9gentity_si_110:
	add dword [ebp-0xd8], 0x1
	cmp dword [ebp-0xd8], 0x4
	jz _Z13VEH_SlideMoveP9gentity_si_60
_Z13VEH_SlideMoveP9gentity_si_270:
	movss xmm0, dword [ebp-0xdc]
	jmp _Z13VEH_SlideMoveP9gentity_si_100
_Z13VEH_SlideMoveP9gentity_si_80:
	movss xmm3, dword [ebp-0x70]
_Z13VEH_SlideMoveP9gentity_si_290:
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
	jle _Z13VEH_SlideMoveP9gentity_si_110
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
	jae _Z13VEH_SlideMoveP9gentity_si_120
	mov dword [ebp-0xc0], 0x0
	mov edx, [ebp-0xc0]
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_si_130
_Z13VEH_SlideMoveP9gentity_si_360:
	movss xmm3, dword [edi]
_Z13VEH_SlideMoveP9gentity_si_370:
	movaps xmm1, xmm3
	mulss xmm1, [ecx]
	mulss xmm4, [ecx+0x4]
	addss xmm1, xmm4
	mulss xmm5, [ecx+0x8]
	addss xmm1, xmm5
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z13VEH_SlideMoveP9gentity_si_140
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_si_560:
	mov edx, 0x1
	lea esi, [ebp-0x24]
_Z13VEH_SlideMoveP9gentity_si_150:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+eax-0x4]
	movss xmm0, dword [edi+eax-0x4]
	subss xmm0, xmm1
	movss [esi+eax-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_si_150
	mov eax, [ebp-0xc8]
	movss xmm0, dword [eax]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_si_160
_Z13VEH_SlideMoveP9gentity_si_380:
	movss xmm4, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x2c]
	movss xmm3, dword [ebp-0x28]
_Z13VEH_SlideMoveP9gentity_si_390:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mulss xmm2, [ecx+0x4]
	addss xmm0, xmm2
	mulss xmm3, [ecx+0x8]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_si_170
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_si_550:
	mov edx, 0x1
	lea esi, [ebp-0x30]
_Z13VEH_SlideMoveP9gentity_si_180:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [esi+eax-0x4]
	subss xmm0, xmm1
	movss [ebp+eax-0x40], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_si_180
_Z13VEH_SlideMoveP9gentity_si_400:
	mov dword [ebp-0xd4], 0x0
	movss xmm7, dword [ebp-0x24]
	lea ecx, [ebp-0xb0]
_Z13VEH_SlideMoveP9gentity_si_260:
	mov eax, [ebp-0xc0]
	cmp [ebp-0xd4], eax
	jz _Z13VEH_SlideMoveP9gentity_si_190
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
	jae _Z13VEH_SlideMoveP9gentity_si_190
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jae _Z13VEH_SlideMoveP9gentity_si_200
_Z13VEH_SlideMoveP9gentity_si_450:
	movaps xmm0, xmm3
	addss xmm0, xmm5
	addss xmm0, xmm6
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_si_210
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_si_480:
	mov edx, 0x1
	lea eax, [ebp-0x24]
	add eax, 0x4
_Z13VEH_SlideMoveP9gentity_si_220:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_si_220
_Z13VEH_SlideMoveP9gentity_si_460:
	movss xmm0, dword [esi]
	ucomiss xmm0, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_si_230
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
	jb _Z13VEH_SlideMoveP9gentity_si_240
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
_Z13VEH_SlideMoveP9gentity_si_440:
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
	jb _Z13VEH_SlideMoveP9gentity_si_250
_Z13VEH_SlideMoveP9gentity_si_190:
	add dword [ebp-0xd4], 0x1
	add ecx, 0xc
	mov eax, [ebp-0xd4]
	cmp [ebp-0xbc], eax
	jnz _Z13VEH_SlideMoveP9gentity_si_260
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
	jnz _Z13VEH_SlideMoveP9gentity_si_270
_Z13VEH_SlideMoveP9gentity_si_60:
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z13VEH_SlideMoveP9gentity_si_280
_Z13VEH_SlideMoveP9gentity_si_410:
	xor eax, eax
	cmp dword [ebp-0xd8], 0x0
	setnz al
_Z13VEH_SlideMoveP9gentity_si_570:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13VEH_SlideMoveP9gentity_si_90:
	xor edx, edx
_Z13VEH_SlideMoveP9gentity_si_300:
	add edx, 0x1
	cmp [ebp-0xbc], edx
	jz _Z13VEH_SlideMoveP9gentity_si_290
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
	jbe _Z13VEH_SlideMoveP9gentity_si_300
	jmp _Z13VEH_SlideMoveP9gentity_si_310
_Z13VEH_SlideMoveP9gentity_si_20:
	movss xmm3, dword [s_phys+0xc]
	ucomiss xmm3, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_si_320
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
	jb _Z13VEH_SlideMoveP9gentity_si_320
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
_Z13VEH_SlideMoveP9gentity_si_10:
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz _Z13VEH_SlideMoveP9gentity_si_330
_Z13VEH_SlideMoveP9gentity_si_540:
	mov eax, [s_phys+0x4]
	mov [ebp-0xb0], eax
	mov eax, [s_phys+0x8]
	mov [ebp-0xac], eax
	mov eax, [s_phys+0xc]
	mov [ebp-0xa8], eax
	mov edx, 0x1
	mov dword [ebp-0xbc], 0x2
	jmp _Z13VEH_SlideMoveP9gentity_si_340
_Z13VEH_SlideMoveP9gentity_si_120:
	mov dword [ebp-0xc0], 0x0
_Z13VEH_SlideMoveP9gentity_si_350:
	add dword [ebp-0xc0], 0x1
	mov edx, [ebp-0xc0]
	cmp [ebp-0xbc], edx
	jz _Z13VEH_SlideMoveP9gentity_si_110
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
	jae _Z13VEH_SlideMoveP9gentity_si_350
	lea eax, [edx+edx*2]
	lea ecx, [ebp+eax*4-0xb0]
	lea eax, [ecx+0x8]
	mov [ebp-0xc8], eax
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [_float_0_69999999]
	jb _Z13VEH_SlideMoveP9gentity_si_360
_Z13VEH_SlideMoveP9gentity_si_130:
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
	jb _Z13VEH_SlideMoveP9gentity_si_370
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
	jb _Z13VEH_SlideMoveP9gentity_si_380
_Z13VEH_SlideMoveP9gentity_si_160:
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
	jb _Z13VEH_SlideMoveP9gentity_si_390
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
	jmp _Z13VEH_SlideMoveP9gentity_si_400
_Z13VEH_SlideMoveP9gentity_si_280:
	mov eax, [ebp-0x30]
	mov [edi], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x4], eax
	mov eax, [ebp-0x28]
	mov [edi+0x8], eax
	jmp _Z13VEH_SlideMoveP9gentity_si_410
_Z13VEH_SlideMoveP9gentity_si_230:
	movss xmm4, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x34]
_Z13VEH_SlideMoveP9gentity_si_240:
	movaps xmm0, xmm4
	mulss xmm0, [ecx]
	mov eax, [ebp-0xc4]
	mulss xmm2, [eax]
	addss xmm0, xmm2
	mulss xmm3, [esi]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z13VEH_SlideMoveP9gentity_si_420
	movaps xmm2, xmm0
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_si_470:
	mov edx, 0x1
	lea eax, [ebp-0x3c]
	add eax, 0x4
_Z13VEH_SlideMoveP9gentity_si_430:
	movaps xmm1, xmm2
	mulss xmm1, [ecx+edx*4-0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_si_430
	jmp _Z13VEH_SlideMoveP9gentity_si_440
_Z13VEH_SlideMoveP9gentity_si_200:
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z13VEH_SlideMoveP9gentity_si_450
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	mulss xmm0, [ecx]
	subss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mulss xmm7, [ecx+0x8]
	movss [ebp-0x24], xmm7
	mulss xmm4, [ecx+0x8]
	movss [ebp-0x20], xmm4
	jmp _Z13VEH_SlideMoveP9gentity_si_460
_Z13VEH_SlideMoveP9gentity_si_420:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_si_470
_Z13VEH_SlideMoveP9gentity_si_210:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_si_480
_Z13VEH_SlideMoveP9gentity_si_250:
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
	jb _Z13VEH_SlideMoveP9gentity_si_490
	movss xmm0, dword [_float_1_00000000]
_Z13VEH_SlideMoveP9gentity_si_580:
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
_Z13VEH_SlideMoveP9gentity_si_510:
	cmp edx, [ebp-0xc0]
	jz _Z13VEH_SlideMoveP9gentity_si_500
	cmp [ebp-0xd4], edx
	jz _Z13VEH_SlideMoveP9gentity_si_500
	movaps xmm0, xmm7
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jb _Z13VEH_SlideMoveP9gentity_si_70
_Z13VEH_SlideMoveP9gentity_si_500:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0xbc], edx
	jnz _Z13VEH_SlideMoveP9gentity_si_510
	movss xmm7, dword [ebp-0x24]
	jmp _Z13VEH_SlideMoveP9gentity_si_190
_Z13VEH_SlideMoveP9gentity_si_320:
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
	jb _Z13VEH_SlideMoveP9gentity_si_520
_Z13VEH_SlideMoveP9gentity_si_590:
	movaps xmm2, xmm1
	divss xmm2, dword [_float_1_00999999]
_Z13VEH_SlideMoveP9gentity_si_600:
	mov ecx, 0x1
	mov edx, s_phys
	lea eax, [edi+0x4]
_Z13VEH_SlideMoveP9gentity_si_530:
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax-0x4]
	subss xmm0, xmm1
	movss [eax-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z13VEH_SlideMoveP9gentity_si_530
	mov eax, [s_phys+0x2c]
	test eax, eax
	jz _Z13VEH_SlideMoveP9gentity_si_330
	jmp _Z13VEH_SlideMoveP9gentity_si_540
_Z13VEH_SlideMoveP9gentity_si_170:
	movaps xmm2, xmm0
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_si_550
_Z13VEH_SlideMoveP9gentity_si_140:
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_si_560
_Z13VEH_SlideMoveP9gentity_si_70:
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
_Z13VEH_SlideMoveP9gentity_si_30:
	mov dword [ebx+0x80], 0x0
	mov eax, 0x1
	jmp _Z13VEH_SlideMoveP9gentity_si_570
_Z13VEH_SlideMoveP9gentity_si_490:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z13VEH_SlideMoveP9gentity_si_580
_Z13VEH_SlideMoveP9gentity_si_520:
	jp _Z13VEH_SlideMoveP9gentity_si_590
	movaps xmm2, xmm1
	mulss xmm2, [_float_1_00999999]
	jmp _Z13VEH_SlideMoveP9gentity_si_600
	nop
	add [eax], al


;VEH_InitEntity(gentity_s*, scr_vehicle_s*, int)
_Z14VEH_InitEntityP9gentity_sP13scr_vehicle_si:
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
	call _Z23G_GetWeaponIndexForNamePKc
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
	call _Z16SV_DObjGetBoundsP9gentity_sPfS1_
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z13SV_LinkEntityP9gentity_s


;GScr_GetVehicle(scr_entref_t)
_Z15GScr_GetVehicle12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	test ax, ax
	jnz _Z15GScr_GetVehicle12scr_entref_t_10
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
	jz _Z15GScr_GetVehicle12scr_entref_t_20
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_is_not_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
_Z15GScr_GetVehicle12scr_entref_t_20:
	mov eax, [esi+0x164]
	test eax, eax
	jz _Z15GScr_GetVehicle12scr_entref_t_30
_Z15GScr_GetVehicle12scr_entref_t_40:
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15GScr_GetVehicle12scr_entref_t_30:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_entity_i_doesnt_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z15GScr_GetVehicle12scr_entref_t_10:
	mov dword [esp], _cstring_not_an_entity
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	jmp _Z15GScr_GetVehicle12scr_entref_t_40
	nop


;VEH_ClearGround(gentity_s*)
_Z15VEH_ClearGroundP9gentity_s:
	push ebp
	mov ebp, esp
	mov dword [s_phys+0x2c], 0x0
	pop ebp
	ret
	nop
	add [eax], al


;VEH_InitVehicle(gentity_s*, scr_vehicle_s*, int)
_Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si:
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
_Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si_10:
	mov dword [eax+0xb0], 0x0
	mov dword [eax+0xc0], 0x0
	mov dword [eax+0xd0], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _Z15VEH_InitVehicleP9gentity_sP13scr_vehicle_si_10
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
_Z16CMD_VEH_GetSpeed12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov eax, [eax+0x164]
	mov eax, [eax+0x25c]
	mov [ebp+0x8], eax
	leave
	jmp _Z12Scr_AddFloatf


;CMD_VEH_SetSpeed(scr_entref_t)
_Z16CMD_VEH_SetSpeed12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	leave
	jmp _Z23CMD_VEH_Script_SetSpeedP9gentity_s
	nop


;CMD_VEH_SetWeapon(scr_entref_t)
_Z17CMD_VEH_SetWeapon12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z25BG_FindWeaponIndexForNamePKc
	movzx eax, al
	mov [ebx+0xc4], eax
	mov dword [ebx+0xc8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Scr_Vehicle_Think(gentity_s*)
_Z17Scr_Vehicle_ThinkP9gentity_s:
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
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_10
	test byte [ebx+0x1c0], 0x2
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_20
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	mov eax, [ebx+0x1c8]
	cmp eax, 0x1
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_30
	cmp eax, 0x2
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_40
_Z17Scr_Vehicle_ThinkP9gentity_s_10:
	lea ecx, [esi+0x78]
	lea eax, [esi+0x18]
	mov [esp], eax
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z15VEH_SetPositionP9gentity_sPKfS2_S2_
	mov ecx, [ebp-0x1108]
	test byte [ecx+0x1c0], 0x2
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_50
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	lea edi, [eax+0x114]
	lea esi, [eax+0x108]
	mov ecx, eax
_Z17Scr_Vehicle_ThinkP9gentity_s_350:
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
	call _Z14AnglesSubtractPKfS0_Pf
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea eax, [ebx+0x138]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z16RadiusFromBoundsPKfS0_
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
	call _Z12ExtendBoundsPfS_PKf
	mov dword [esp+0x10], 0x2806081
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x10e0]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call _Z15CM_AreaEntitiesPKfS0_Piii
	mov [ebp-0x10fc], eax
	test eax, eax
	jle _Z17Scr_Vehicle_ThinkP9gentity_s_60
	xor esi, esi
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_70
_Z17Scr_Vehicle_ThinkP9gentity_s_80:
	add esi, 0x1
	cmp [ebp-0x10fc], esi
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_60
_Z17Scr_Vehicle_ThinkP9gentity_s_70:
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
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	mov eax, [ebx+0x4]
	cmp eax, 0x4
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	cmp edx, [ebx+0x7c]
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_90
	mov edx, [ebp+0x8]
	cmp byte [edx+0xf5], 0x0
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	movzx eax, word [ebx+0x170]
	mov edx, scr_const
	cmp ax, [edx+0x70]
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_100
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
_Z17Scr_Vehicle_ThinkP9gentity_s_400:
	lea ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z19ExpandBoundsToWidthPfS_
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z16SV_EntityContactPKfS0_PK9gentity_s
	test eax, eax
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_110
_Z17Scr_Vehicle_ThinkP9gentity_s_480:
	test edi, edi
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_120
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call edi
_Z17Scr_Vehicle_ThinkP9gentity_s_120:
	mov edi, [ebp-0x1100]
	test edi, edi
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp-0x1100]
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_80
_Z17Scr_Vehicle_ThinkP9gentity_s_60:
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
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_130
	mov edx, [ebp+0x8]
	mov edx, [edx+0x1a0]
	test edx, edx
	jle _Z17Scr_Vehicle_ThinkP9gentity_s_140
	mov eax, [ebp-0x10f8]
	mov ecx, [eax+0x27c]
	cmp ecx, 0x3ff
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_150
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
_Z17Scr_Vehicle_ThinkP9gentity_s_410:
	mov eax, [edx+0x324]
	test eax, eax
	js _Z17Scr_Vehicle_ThinkP9gentity_s_160
	lea ecx, [ebp-0x60]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26G_DObjGetWorldBoneIndexPosP9gentity_siPf
	mov edx, [ebp-0x10f8]
	mov eax, [edx+0x320]
	cmp eax, 0xffffffff
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_170
	lea ecx, [ebp-0x10e0]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea edx, [ebp-0x10e0]
	mov [esp], edx
	call _Z12AxisToAnglesPA3_KfPf
_Z17Scr_Vehicle_ThinkP9gentity_s_360:
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x154], 0x0
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_180
	mov ebx, [ebp-0x10f8]
	cmp dword [ebx+0x27c], 0x3ff
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_190
_Z17Scr_Vehicle_ThinkP9gentity_s_180:
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
	jb _Z17Scr_Vehicle_ThinkP9gentity_s_200
	movss xmm1, dword [_float_1_00000000]
_Z17Scr_Vehicle_ThinkP9gentity_s_440:
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
	call _Z11vectoanglesPKfPf
_Z17Scr_Vehicle_ThinkP9gentity_s_470:
	lea edi, [ebp-0xb4]
	mov [esp+0x4], edi
	lea ebx, [ebp-0x3c]
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
	lea ebx, [ebp-0xe0]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea esi, [ebp-0x90]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15MatrixTransposePA3_KfPA3_f
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z14MatrixMultiplyPA3_KfS1_PA3_f
	lea edx, [ebp-0x3c]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z12AxisToAnglesPA3_KfPf
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
	call _Z14AnglesSubtractPKfS0_Pf
	movss xmm1, dword [_data16_7fffffff]
	movss xmm0, dword [ebp-0x30]
	andps xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	andps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	mov ebx, 0x3d4ccccd
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x10f4]
	mov eax, [ecx+0xe0]
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z16LinearTrackAngleffff
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
	call _Z16LinearTrackAngleffff
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
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_210
	movss xmm2, dword [ebp-0x10ec]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jp _Z17Scr_Vehicle_ThinkP9gentity_s_210
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_220
_Z17Scr_Vehicle_ThinkP9gentity_s_210:
	ucomiss xmm0, [ebp-0x2c]
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_230
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jp _Z17Scr_Vehicle_ThinkP9gentity_s_230
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_220
_Z17Scr_Vehicle_ThinkP9gentity_s_230:
	mov edx, [ebp-0x10f8]
	mov eax, [edx+0x1e4]
	cmp eax, 0x2
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_240
	sub eax, 0x1
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_250
_Z17Scr_Vehicle_ThinkP9gentity_s_390:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x30]
	jbe _Z17Scr_Vehicle_ThinkP9gentity_s_260
	ucomiss xmm0, [ebp-0x2c]
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_270
_Z17Scr_Vehicle_ThinkP9gentity_s_260:
	mov dword [esp+0x8], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x104]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Scr_NotifyP9gentity_stj
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
_Z17Scr_Vehicle_ThinkP9gentity_s_160:
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
_Z17Scr_Vehicle_ThinkP9gentity_s_130:
	mov ecx, eax
_Z17Scr_Vehicle_ThinkP9gentity_s_370:
	mov eax, [ecx+0x1e4]
	cmp eax, 0x2
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_280
	sub eax, 0x1
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_160
	mov ebx, [ebp-0x10f8]
	mov dword [ebx+0x1e4], 0x0
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_160
_Z17Scr_Vehicle_ThinkP9gentity_s_20:
	cmp ax, 0x5
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_10
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23VEH_UpdateClientChopperP9gentity_s
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_10
_Z17Scr_Vehicle_ThinkP9gentity_s_90:
	mov eax, [ebx+0x218]
	test eax, eax
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_80
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
	jbe _Z17Scr_Vehicle_ThinkP9gentity_s_290
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
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_80
_Z17Scr_Vehicle_ThinkP9gentity_s_290:
	mov eax, [ebx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	cmp dword [eax+0x5a4], 0x1
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	lea eax, [ebp-0x30]
	mov [esp], eax
	lea ecx, [ebp-0x24]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z25PushAttachedStickyMissileP9gentity_sS0_PfS1_
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_80
_Z17Scr_Vehicle_ThinkP9gentity_s_50:
	mov dword [esp], 0x1
	call _Z18Scr_IsSystemActiveh
	test eax, eax
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_300
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
	jp _Z17Scr_Vehicle_ThinkP9gentity_s_310
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_320
_Z17Scr_Vehicle_ThinkP9gentity_s_310:
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
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_330
_Z17Scr_Vehicle_ThinkP9gentity_s_450:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xe0]
	ja _Z17Scr_Vehicle_ThinkP9gentity_s_340
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	mov ecx, eax
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_350
_Z17Scr_Vehicle_ThinkP9gentity_s_280:
	mov dword [ecx+0x1e4], 0x1
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_160
_Z17Scr_Vehicle_ThinkP9gentity_s_300:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x164]
	lea edi, [edx+0x114]
	lea esi, [edx+0x108]
	mov ecx, edx
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_350
_Z17Scr_Vehicle_ThinkP9gentity_s_170:
	lea edx, [ebx+0x18]
	mov eax, [ebx+0x18]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_360
_Z17Scr_Vehicle_ThinkP9gentity_s_140:
	mov ecx, [ebp-0x10f8]
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_370
_Z17Scr_Vehicle_ThinkP9gentity_s_40:
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
	call _Z20VEH_UpdateMoveToGoalP9gentity_sPKf
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
	jbe _Z17Scr_Vehicle_ThinkP9gentity_s_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x164]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x224]
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_380
	jp _Z17Scr_Vehicle_ThinkP9gentity_s_380
	lea eax, [ebx+0x230]
	movss [ebx+0x230], xmm0
	movss [eax+0x4], xmm0
	movss [eax+0x8], xmm0
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_10
_Z17Scr_Vehicle_ThinkP9gentity_s_220:
	mov eax, [ebp-0x10f8]
	mov dword [eax+0x1e4], 0x2
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_390
_Z17Scr_Vehicle_ThinkP9gentity_s_100:
	cmp word [ebx+0x168], 0x0
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_80
	mov [esp], ecx
	call _Z17Com_GetServerDObji
	lea ecx, [ebp-0x6c]
	mov [esp+0x8], ecx
	lea edx, [ebp-0x54]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z20DObjPhysicsGetBoundsPK6DObj_sPfS2_
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
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_400
_Z17Scr_Vehicle_ThinkP9gentity_s_150:
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
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_410
_Z17Scr_Vehicle_ThinkP9gentity_s_30:
	mov eax, ecx
	lea edx, [ebx+0x2a0]
	call _Z20VEH_UpdateMoveToGoalP9gentity_sPKf
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_10
_Z17Scr_Vehicle_ThinkP9gentity_s_320:
	mov ecx, eax
	lea edi, [eax+0x114]
	lea esi, [eax+0x108]
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_350
_Z17Scr_Vehicle_ThinkP9gentity_s_270:
	mov dword [esp+0x8], 0x0
	mov ebx, scr_const
	movzx eax, word [ebx+0x102]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	mov eax, [ebp-0x10f0]
	test eax, eax
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_420
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
	call _Z13SV_SightTracePiPKfS1_S1_S1_iii
	mov eax, [ebp-0x10f8]
	mov eax, [eax+0x34c]
	test eax, eax
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_430
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_160
_Z17Scr_Vehicle_ThinkP9gentity_s_200:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_440
_Z17Scr_Vehicle_ThinkP9gentity_s_330:
	subss xmm0, xmm2
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_450
_Z17Scr_Vehicle_ThinkP9gentity_s_430:
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x106]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_160
_Z17Scr_Vehicle_ThinkP9gentity_s_240:
	mov dword [edx+0x1e4], 0x1
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_390
_Z17Scr_Vehicle_ThinkP9gentity_s_190:
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
	jb _Z17Scr_Vehicle_ThinkP9gentity_s_460
	movss xmm1, dword [_float_1_00000000]
_Z17Scr_Vehicle_ThinkP9gentity_s_510:
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
	call _Z11vectoanglesPKfPf
	mov eax, [ebx+0x15c]
	mov eax, [eax+0x10c]
	mov [ebp-0x38], eax
	mov dword [ebp-0x34], 0x0
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_470
_Z17Scr_Vehicle_ThinkP9gentity_s_110:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov ecx, scr_const
	movzx eax, word [ecx+0xba]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	mov [esp], ebx
	call _Z13Scr_AddEntityP9gentity_s
	mov dword [esp+0x8], 0x1
	mov edx, scr_const
	movzx eax, word [edx+0xba]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_480
_Z17Scr_Vehicle_ThinkP9gentity_s_250:
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0x10a]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z10Scr_NotifyP9gentity_stj
	mov ebx, [ebp-0x10f8]
	mov dword [ebx+0x1e4], 0x0
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_390
_Z17Scr_Vehicle_ThinkP9gentity_s_420:
	mov dword [esp+0x8], 0x0
	movzx eax, word [ebx+0x108]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z10Scr_NotifyP9gentity_stj
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_160
_Z17Scr_Vehicle_ThinkP9gentity_s_380:
	xor edi, edi
_Z17Scr_Vehicle_ThinkP9gentity_s_490:
	mov eax, [ebx+0x224]
	mov [esp+0x4], eax
	xor eax, 0x80000000
	mov [esp], eax
	call _Z8G_flrandff
	fstp dword [ebp+edi*4-0x54]
	add edi, 0x1
	cmp edi, 0x3
	jnz _Z17Scr_Vehicle_ThinkP9gentity_s_490
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
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_10
_Z17Scr_Vehicle_ThinkP9gentity_s_340:
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	cmp ax, 0x3fe
	jz _Z17Scr_Vehicle_ThinkP9gentity_s_500
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x164]
	mov ecx, edx
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_350
_Z17Scr_Vehicle_ThinkP9gentity_s_460:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_510
_Z17Scr_Vehicle_ThinkP9gentity_s_500:
	lea eax, [ebp-0xdc]
	mov [esp], eax
	call _Z13Scr_AddVectorPKf
	mov dword [esp+0x8], 0x1
	mov eax, scr_const
	movzx eax, word [eax+0xfa]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10Scr_NotifyP9gentity_stj
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x164]
	jmp _Z17Scr_Vehicle_ThinkP9gentity_s_350
	nop


;CMD_VEH_FireWeapon(scr_entref_t)
_Z18CMD_VEH_FireWeapon12scr_entref_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
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
	jbe _Z18CMD_VEH_FireWeapon12scr_entref_t_10
_Z18CMD_VEH_FireWeapon12scr_entref_t_320:
	mov ecx, [esi+0xc4]
	test ecx, ecx
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_20
_Z18CMD_VEH_FireWeapon12scr_entref_t_300:
	mov eax, [esi+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0xb8], eax
	mov eax, [eax+0x12c]
	test eax, eax
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_30
	cmp eax, 0x2
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_30
	mov dword [esp], _cstring_vehicles_only_su
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
_Z18CMD_VEH_FireWeapon12scr_entref_t_30:
	movzx eax, word [ebx+0x40]
	cmp ax, 0x2
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_40
	cmp ax, 0x5
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_40
	mov eax, [ebp-0x10c]
	mov edx, [eax+0x324]
	test edx, edx
	js _Z18CMD_VEH_FireWeapon12scr_entref_t_50
	mov edx, eax
_Z18CMD_VEH_FireWeapon12scr_entref_t_310:
	lea eax, [ebp-0xb4]
	mov [esp+0x8], eax
	mov eax, [edx+0x324]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
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
	call _Z12VEH_JoltBodyP9gentity_sPKffff
_Z18CMD_VEH_FireWeapon12scr_entref_t_40:
	call _Z15Scr_GetNumParamv
	test eax, eax
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_60
	mov edi, [ebx+0x4c]
	test edi, edi
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_70
_Z18CMD_VEH_FireWeapon12scr_entref_t_60:
	mov dword [ebp-0x108], 0x1
	xor eax, eax
	mov dword [ebp-0x104], 0x1a
_Z18CMD_VEH_FireWeapon12scr_entref_t_290:
	mov [ebp-0xfc], eax
	mov edx, [ebp-0x108]
	add edx, eax
	mov [ebp-0x110], edx
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_80
_Z18CMD_VEH_FireWeapon12scr_entref_t_160:
	mov ecx, [ebp-0x100]
	test ecx, ecx
	js _Z18CMD_VEH_FireWeapon12scr_entref_t_90
	mov edx, [ebp-0x100]
_Z18CMD_VEH_FireWeapon12scr_entref_t_180:
	lea eax, [ebp-0x84]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z29G_DObjGetWorldBoneIndexMatrixP9gentity_siPA3_f
	cmp word [esi+0x154], 0x0
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_100
	cmp dword [ebp-0x108], 0x1
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_110
_Z18CMD_VEH_FireWeapon12scr_entref_t_100:
	mov eax, [ebp-0x84]
	mov [ebp-0xc4], eax
	mov eax, [ebp-0x80]
	mov [ebp-0xc0], eax
	mov eax, [ebp-0x7c]
	mov [ebp-0xbc], eax
_Z18CMD_VEH_FireWeapon12scr_entref_t_270:
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
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_120
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
_Z18CMD_VEH_FireWeapon12scr_entref_t_210:
	mov eax, [ebp-0xb8]
	mov ebx, [eax+0x12c]
	test ebx, ebx
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_130
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	lea eax, [ebp-0xf4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z11Bullet_FireP9gentity_sfPK11weaponParmsPKS_i
	add dword [ebp-0xfc], 0x1
	mov eax, [ebp-0x110]
	cmp [ebp-0xfc], eax
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_140
_Z18CMD_VEH_FireWeapon12scr_entref_t_80:
	mov ebx, [esi+0x164]
	call _Z15Scr_GetNumParamv
	test eax, eax
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_150
_Z18CMD_VEH_FireWeapon12scr_entref_t_220:
	mov dword [ebp-0x100], 0xffffffff
_Z18CMD_VEH_FireWeapon12scr_entref_t_230:
	call _Z15Scr_GetNumParamv
	test eax, eax
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_160
_Z18CMD_VEH_FireWeapon12scr_entref_t_90:
	mov edx, [ebp-0xfc]
	mov eax, [ebx+edx*4+0x328]
	test eax, eax
	js _Z18CMD_VEH_FireWeapon12scr_entref_t_170
	mov [ebp-0x100], eax
	mov edx, eax
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_180
_Z18CMD_VEH_FireWeapon12scr_entref_t_130:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z18CMD_VEH_FireWeapon12scr_entref_t_190
	mov dword [esp], 0x1
	call _Z13Scr_GetEntityj
	mov edi, eax
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	ja _Z18CMD_VEH_FireWeapon12scr_entref_t_200
_Z18CMD_VEH_FireWeapon12scr_entref_t_240:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ebp-0x24]
_Z18CMD_VEH_FireWeapon12scr_entref_t_250:
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
	call _Z26Weapon_RocketLauncher_FireP9gentity_sjfP11weaponParmsPKfS0_S4_
	mov [esp], eax
	call _Z13Scr_AddEntityP9gentity_s
	add dword [ebp-0xfc], 0x1
	mov eax, [ebp-0x110]
	cmp [ebp-0xfc], eax
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_80
_Z18CMD_VEH_FireWeapon12scr_entref_t_140:
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x104]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z10G_AddEventP9gentity_sij
	mov dword [esp+0x8], 0x0
	mov eax, scr_const
	movzx eax, word [eax+0xca]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Scr_NotifyP9gentity_stj
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
_Z18CMD_VEH_FireWeapon12scr_entref_t_120:
	mov eax, [ebp-0x60]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x58]
	mov [ebp-0xc8], eax
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_210
_Z18CMD_VEH_FireWeapon12scr_entref_t_150:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov edi, eax
	cmp byte [eax], 0x0
	jz _Z18CMD_VEH_FireWeapon12scr_entref_t_220
	mov dword [esp], 0x0
	call _Z27Scr_GetConstLowercaseStringj
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19SV_DObjGetBoneIndexPK9gentity_sj
	mov [ebp-0x100], eax
	test eax, eax
	jns _Z18CMD_VEH_FireWeapon12scr_entref_t_230
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], _cstring_no_tag_s_for_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_230
_Z18CMD_VEH_FireWeapon12scr_entref_t_190:
	xor edi, edi
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	jbe _Z18CMD_VEH_FireWeapon12scr_entref_t_240
_Z18CMD_VEH_FireWeapon12scr_entref_t_200:
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov dword [esp], 0x2
	call _Z13Scr_GetVectorjPf
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_250
_Z18CMD_VEH_FireWeapon12scr_entref_t_110:
	mov eax, [ebp-0x10c]
	mov edx, [eax+0x1e0]
	test edx, edx
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_100
	cmp dword [eax+0x27c], 0x3ff
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_100
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
	jb _Z18CMD_VEH_FireWeapon12scr_entref_t_260
	movss xmm1, dword [_float_1_00000000]
_Z18CMD_VEH_FireWeapon12scr_entref_t_330:
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
	call _Z11vectoanglesPKfPf
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0xc4]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	lea edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z14AnglesSubtractPKfS0_Pf
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
	call _Z14AnglesSubtractPKfS0_Pf
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edx, [ebp-0xc4]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_270
_Z18CMD_VEH_FireWeapon12scr_entref_t_170:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	mov edx, [ebp-0xfc]
	mov eax, [edx*4+s_flashTags]
	movzx eax, word [eax]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_no_s_for_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov edx, [ebp-0x100]
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_180
_Z18CMD_VEH_FireWeapon12scr_entref_t_70:
	mov eax, [ebp-0x10c]
	mov ebx, [eax+0x1d8]
	test ebx, ebx
	jnz _Z18CMD_VEH_FireWeapon12scr_entref_t_280
	mov dword [ebp-0x108], 0x2
	xor eax, eax
	mov dword [ebp-0x104], 0x27
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_290
_Z18CMD_VEH_FireWeapon12scr_entref_t_20:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_invalid_weapon_s
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_300
_Z18CMD_VEH_FireWeapon12scr_entref_t_280:
	mov dword [ebp-0x108], 0x2
	mov eax, 0x2
	mov dword [ebp-0x104], 0x28
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_290
_Z18CMD_VEH_FireWeapon12scr_entref_t_50:
	movzx eax, word [esi+0x174]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_no_tag_barrel_fo
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov edx, [ebp-0x10c]
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_310
_Z18CMD_VEH_FireWeapon12scr_entref_t_10:
	jp _Z18CMD_VEH_FireWeapon12scr_entref_t_320
	mov dword [esp], _cstring_vehicle_must_hav
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_320
_Z18CMD_VEH_FireWeapon12scr_entref_t_260:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z18CMD_VEH_FireWeapon12scr_entref_t_330
	nop


;CMD_VEH_SetGoalPos(scr_entref_t)
_Z18CMD_VEH_SetGoalPos12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [ebx+0x248], 0x1
	lea eax, [ebx+0x2a0]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z18CMD_VEH_SetGoalPos12scr_entref_t_10
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebx+0x274], eax
_Z18CMD_VEH_SetGoalPos12scr_entref_t_60:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x24c]
	jp _Z18CMD_VEH_SetGoalPos12scr_entref_t_20
	jz _Z18CMD_VEH_SetGoalPos12scr_entref_t_30
_Z18CMD_VEH_SetGoalPos12scr_entref_t_20:
	ucomiss xmm0, [ebx+0x250]
	jp _Z18CMD_VEH_SetGoalPos12scr_entref_t_40
	jnz _Z18CMD_VEH_SetGoalPos12scr_entref_t_40
_Z18CMD_VEH_SetGoalPos12scr_entref_t_30:
	mov dword [esp], _cstring_speed_and_accele
	call _Z9Scr_ErrorPKc
_Z18CMD_VEH_SetGoalPos12scr_entref_t_50:
	or dword [ebx+0x1c0], 0x2
	mov dword [ebx+0x1c8], 0x1
	mov dword [ebx+0x278], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18CMD_VEH_SetGoalPos12scr_entref_t_40:
	ucomiss xmm0, [ebx+0x254]
	jnz _Z18CMD_VEH_SetGoalPos12scr_entref_t_50
	jnp _Z18CMD_VEH_SetGoalPos12scr_entref_t_30
	jmp _Z18CMD_VEH_SetGoalPos12scr_entref_t_50
_Z18CMD_VEH_SetGoalPos12scr_entref_t_10:
	mov dword [ebx+0x274], 0x0
	jmp _Z18CMD_VEH_SetGoalPos12scr_entref_t_60


;CMD_VEH_SetGoalYaw(scr_entref_t)
_Z18CMD_VEH_SetGoalYaw12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x2ac]
	mov dword [ebx+0x270], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_GetSpeedMPH(scr_entref_t)
_Z19CMD_VEH_GetSpeedMPH12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov eax, [eax+0x164]
	movss xmm0, dword [eax+0x25c]
	divss xmm0, dword [_float_17_60000038]
	movss [ebp+0x8], xmm0
	leave
	jmp _Z12Scr_AddFloatf
	add [eax], al


;CMD_VEH_ResumeSpeed(scr_entref_t)
_Z19CMD_VEH_ResumeSpeed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [ebx+0x248], 0x2
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_17_60000038]
	movss [ebx+0x250], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jb _Z19CMD_VEH_ResumeSpeed12scr_entref_t_10
_Z19CMD_VEH_ResumeSpeed12scr_entref_t_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19CMD_VEH_ResumeSpeed12scr_entref_t_10:
	jp _Z19CMD_VEH_ResumeSpeed12scr_entref_t_20
	mov dword [esp+0x4], _cstring_cannot_set_negat1
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;CMD_VEH_SetYawSpeed(scr_entref_t)
_Z19CMD_VEH_SetYawSpeed12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0xf4]
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0xfc]
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	ja _Z19CMD_VEH_SetYawSpeed12scr_entref_t_10
	mov eax, [ebx+0xfc]
	mov [ebx+0x100], eax
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	ja _Z19CMD_VEH_SetYawSpeed12scr_entref_t_20
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_50:
	pxor xmm0, xmm0
	movss [ebp-0xc], xmm0
	movaps xmm1, xmm0
	ucomiss xmm1, [ebx+0xf4]
	ja _Z19CMD_VEH_SetYawSpeed12scr_entref_t_30
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_80:
	movaps xmm0, xmm1
	ucomiss xmm0, [ebx+0xfc]
	ja _Z19CMD_VEH_SetYawSpeed12scr_entref_t_40
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_90:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_10:
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x100]
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	jbe _Z19CMD_VEH_SetYawSpeed12scr_entref_t_50
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_20:
	mov dword [esp], 0x3
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	movss [ebx+0x2b4], xmm0
	pxor xmm1, xmm1
	movss [ebp-0xc], xmm1
	ucomiss xmm1, xmm0
	ja _Z19CMD_VEH_SetYawSpeed12scr_entref_t_60
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z19CMD_VEH_SetYawSpeed12scr_entref_t_70
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_60:
	mov dword [esp+0x4], _cstring_overshoot_must_b
	mov dword [esp], 0x3
	call _Z14Scr_ParamErrorjPKc
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_70:
	movss xmm1, dword [ebp-0xc]
	ucomiss xmm1, [ebx+0xf4]
	jbe _Z19CMD_VEH_SetYawSpeed12scr_entref_t_80
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_30:
	mov dword [esp+0x4], _cstring_cannot_set_negat2
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [ebx+0xfc]
	jbe _Z19CMD_VEH_SetYawSpeed12scr_entref_t_90
_Z19CMD_VEH_SetYawSpeed12scr_entref_t_40:
	mov dword [esp+0x4], _cstring_cannot_set_negat3
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;VEH_CorrectAllSolid(gentity_s*, trace_t*)
_Z19VEH_CorrectAllSolidP9gentity_sP7trace_t:
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
	jmp _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_10
_Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_30:
	add edi, 0x1
	add ebx, 0xc
	cmp edi, 0x1a
	jz _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_20
_Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_10:
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	mov edx, [ebp+0xc]
	cmp byte [edx+0x29], 0x0
	jnz _Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_30
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
	call _Z14G_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
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
_Z19VEH_CorrectAllSolidP9gentity_sP7trace_t_20:
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
_Z20CMD_VEH_ClearGoalYaw12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov eax, [eax+0x164]
	mov dword [eax+0x2ac], 0x0
	mov dword [eax+0x270], 0x0
	leave
	ret
	nop


;CMD_VEH_SetLookAtEnt(scr_entref_t)
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, eax
	mov esi, [eax+0x164]
	test byte [esi+0x1c0], 0x1
	jnz _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_10
	cvtsi2ss xmm0, dword [ebx+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_20
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov ebx, eax
	test eax, eax
	jz _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_30
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t_50:
	mov [esp+0x4], ebx
	lea eax, [esi+0x280]
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t_10:
	mov dword [esp], _cstring_cant_set_target_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	cvtsi2ss xmm0, dword [ebx+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_40
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t_20:
	jp _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_40
	mov dword [esp], _cstring_vehicle_must_hav1
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov ebx, eax
	test eax, eax
	jnz _Z20CMD_VEH_SetLookAtEnt12scr_entref_t_50
_Z20CMD_VEH_SetLookAtEnt12scr_entref_t_30:
	mov dword [esp], _cstring_invalid_entity
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
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
_Z20CMD_VEH_SetTargetYaw12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x29c]
	mov dword [ebx+0x26c], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_ClearLookAtEnt(scr_entref_t)
_Z22CMD_VEH_ClearLookAtEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov dword [esp+0x4], 0x0
	mov eax, [eax+0x164]
	add eax, 0x280
	mov [esp], eax
	call _ZN9EntHandle6setEntEP9gentity_s
	leave
	ret


;CMD_VEH_ClearTargetYaw(scr_entref_t)
_Z22CMD_VEH_ClearTargetYaw12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov eax, [eax+0x164]
	mov dword [eax+0x29c], 0x0
	mov dword [eax+0x26c], 0x0
	leave
	ret
	nop


;CMD_VEH_SetHoverParams(scr_entref_t)
_Z22CMD_VEH_SetHoverParams12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x224]
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z22CMD_VEH_SetHoverParams12scr_entref_t_10
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x228]
	call _Z15Scr_GetNumParamv
	cmp eax, 0x2
	ja _Z22CMD_VEH_SetHoverParams12scr_entref_t_20
_Z22CMD_VEH_SetHoverParams12scr_entref_t_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z22CMD_VEH_SetHoverParams12scr_entref_t_20:
	mov dword [esp], 0x2
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x22c]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_SetVehicleTeam(scr_entref_t)
_Z22CMD_VEH_SetVehicleTeam12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov esi, eax
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov ebx, eax
	mov dword [esp+0x4], _cstring_axis
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CMD_VEH_SetVehicleTeam12scr_entref_t_10
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x1
_Z22CMD_VEH_SetVehicleTeam12scr_entref_t_40:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22CMD_VEH_SetVehicleTeam12scr_entref_t_10:
	mov dword [esp+0x4], _cstring_allies
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CMD_VEH_SetVehicleTeam12scr_entref_t_20
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22CMD_VEH_SetVehicleTeam12scr_entref_t_20:
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22CMD_VEH_SetVehicleTeam12scr_entref_t_30
	mov eax, [esi+0x164]
	mov dword [eax+0x1c4], 0x0
	jmp _Z22CMD_VEH_SetVehicleTeam12scr_entref_t_40
_Z22CMD_VEH_SetVehicleTeam12scr_entref_t_30:
	mov dword [ebp+0x8], _cstring_setvehicleteam_i
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z9Scr_ErrorPKc
	nop


;CMD_VEH_SetAirResitance(scr_entref_t)
_Z23CMD_VEH_SetAirResitance12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
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
_Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	movsx edx, word [ebx+0x1bc]
	lea eax, [edx+edx*4]
	shl eax, 0x3
	sub eax, edx
	shl eax, 0x4
	mov edx, s_vehicleInfos
	cmp word [edx+eax+0x40], 0x5
	jz _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_10
	mov dword [esp], _cstring_max_pitch_roll_o
	call _Z9Scr_ErrorPKc
_Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_10:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x168]
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x16c]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x168]
	ja _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_20
_Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_40:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x16c]
	ja _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_30
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_30:
	mov dword [esp+0x4], _cstring_cannot_set_negat4
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_20:
	mov dword [esp+0x4], _cstring_cannot_set_negat5
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23CMD_VEH_SetMaxPitchRoll12scr_entref_t_40


;CMD_VEH_SetTurningAbility(scr_entref_t)
_Z25CMD_VEH_SetTurningAbility12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x264]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_NearGoalNotifyDist(scr_entref_t)
_Z26CMD_VEH_NearGoalNotifyDist12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebx+0x2bc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CMD_VEH_SetTurretTargetEnt(scr_entref_t)
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ebx, [eax+0x164]
	cvtsi2ss xmm0, dword [eax+0x1a0]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_10
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_60:
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov dword [ebx+0x268], 0x1
	test eax, eax
	jz _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_20
	mov edx, [eax]
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_50:
	mov [ebx+0x27c], edx
	test eax, eax
	jz _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_30
	or dword [eax+0x180], 0x80000
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_30:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x1
	jbe _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_40
	lea eax, [ebx+0x290]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z13Scr_GetVectorjPf
	lea eax, [ebx+0x284]
	mov dword [ebx+0x284], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_40:
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
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_20:
	mov edx, 0x3ff
	jmp _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_50
_Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_10:
	jp _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_60
	mov dword [esp], _cstring_vehicle_must_hav
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z26CMD_VEH_SetTurretTargetEnt12scr_entref_t_60


;CMD_VEH_SetTurretTargetVec(scr_entref_t)
_Z26CMD_VEH_SetTurretTargetVec12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov esi, eax
	mov ebx, [eax+0x164]
	test byte [ebx+0x1c0], 0x1
	jnz _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_10
	cvtsi2ss xmm0, dword [esi+0x1a0]
	xor esi, esi
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_20
_Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_30:
	mov dword [ebx+0x268], 0x1
	mov dword [ebx+0x27c], 0x3ff
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
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
_Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_10:
	mov dword [esp], _cstring_cant_set_target_1
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	cvtsi2ss xmm0, dword [esi+0x1a0]
	xor esi, esi
	ucomiss xmm0, [_float_0_00000000]
	ja _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_30
_Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_20:
	jp _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_30
	mov dword [esp], _cstring_vehicle_must_hav
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z26CMD_VEH_SetTurretTargetVec12scr_entref_t_30


;CMD_VEH_ClearTurretTargetEnt(scr_entref_t)
_Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15GScr_GetVehicle12scr_entref_t
	mov ecx, [eax+0x164]
	test byte [ecx+0x1c0], 0x1
	jnz _Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t_10
	mov dword [ecx+0x268], 0x0
_Z28CMD_VEH_ClearTurretTargetEnt12scr_entref_t_10:
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
s_flashTags: dd 0x1708c90, 0x1708c92, 0x1708c94, 0x1708c96, 0x1708c98, 0x0, 0x0, 0x0


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
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float__0_05000000:		dd 0xbd4ccccd	; -0.05
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

