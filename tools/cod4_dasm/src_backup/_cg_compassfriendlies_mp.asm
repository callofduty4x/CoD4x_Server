;Imports of cg_compassfriendlies_mp:
	extern cgArray
	extern compassEnemyFootstepEnabled
	extern compassMaxRange
	extern compassRadarLineThickness
	extern cg_hudMapRadarLineThickness
	extern compassEnemyFootstepMaxRange
	extern compassEnemyFootstepMaxZ
	extern cg_entitiesArray
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern compassEnemyFootstepMinSpeed
	extern _Z21CG_CompassUpYawVectorPK4cg_sPf
	extern _Z14CG_FadeCompassii11CompassType
	extern _Z24CG_CompassCalcDimensions11CompassTypePK4cg_sPK9rectDef_sS5_PfS6_S6_S6_
	extern scrPlaceView
	extern _Z12Dvar_GetBoolPKc
	extern compassSoundPingFadeTime
	extern compassRadarPingFadeTime
	extern _Z20CG_WorldPosToCompass11CompassTypePK4cg_sPK9rectDef_sPKfS7_S7_PfS8_
	extern compassClampIcons
	extern _Z23CalcCompassFriendlySize11CompassTypePfS0_
	extern cgMedia
	extern _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	extern compassSize
	extern compassRotation
	extern _Z17AngleNormalize360f
	extern _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	extern _Z18CL_IsPlayerTalkingii
	extern memset
	extern compassObjectiveMinAlpha
	extern compassObjectiveMaxRange
	extern _Z26CL_DrawStretchPicRotatedSTPK15ScreenPlacementffffiiffffffPKfP8Material
	extern _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	extern compassRadarUpdateTime
	extern floorf

;Exports of cg_compassfriendlies_mp:
	global _GLOBAL__I__Z23CG_ClearCompassPingDatav
	global SQRT2
	global s_compassVehicles
	global s_compassActors
	global _Z14ActorUpdatePosiP12CompassActorPKfi
	global _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf
	global _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf
	global _Z22CG_CompassUpdateActorsi
	global _Z23CG_ClearCompassPingDatav
	global _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf
	global _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf
	global _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi
	global _Z27CG_CompassIncreaseRadarTimei
	global _Z27CG_CompassUpdateVehicleInfoii
	global _Z31CG_CompassRadarPingEnemyPlayersiff


SECTION .text


;global constructors keyed to CG_ClearCompassPingData()
_GLOBAL__I__Z23CG_ClearCompassPingDatav:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [SQRT2], 0x3fb504f3
	pop ebp
	ret


;ActorUpdatePos(int, CompassActor*, float const*, int)
_Z14ActorUpdatePosiP12CompassActorPKfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, edx
	mov edi, ecx
	cmp byte [edx+0x28], 0x0
	jz _Z14ActorUpdatePosiP12CompassActorPKfi_10
	mov ecx, cgArray
	mov eax, [ecx+0x466ec]
	test eax, eax
	jnz _Z14ActorUpdatePosiP12CompassActorPKfi_20
	lea edx, [edi+0x4]
	mov [ebp-0x3c], edx
	lea ebx, [esi+0x4]
_Z14ActorUpdatePosiP12CompassActorPKfi_70:
	mov eax, compassEnemyFootstepEnabled
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14ActorUpdatePosiP12CompassActorPKfi_30
	mov eax, [ecx+0x46140]
	test eax, eax
	jz _Z14ActorUpdatePosiP12CompassActorPKfi_40
_Z14ActorUpdatePosiP12CompassActorPKfi_30:
	mov ecx, [ebp-0x3c]
_Z14ActorUpdatePosiP12CompassActorPKfi_110:
	mov eax, [edi]
	mov [esi+0x4], eax
	mov eax, [ecx]
	mov [ebx+0x4], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14ActorUpdatePosiP12CompassActorPKfi_20:
	mov eax, [edx]
	mov [ebp-0x54], eax
	mov edx, [ecx+0x46128]
	mov [ebp-0x50], edx
	sub edx, 0x5dc
	mov [ebp-0x4c], edx
	cmp eax, edx
	jle _Z14ActorUpdatePosiP12CompassActorPKfi_50
	lea ebx, [esi+0x4]
	movss xmm6, dword [ecx+0x50508]
	mov eax, compassMaxRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, compassRadarLineThickness
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm0, [SQRT2]
	addss xmm1, xmm0
	movss xmm5, dword [ecx+0x504ac]
	mov eax, cg_hudMapRadarLineThickness
	mov eax, [eax]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	ja _Z14ActorUpdatePosiP12CompassActorPKfi_60
	movaps xmm1, xmm0
_Z14ActorUpdatePosiP12CompassActorPKfi_60:
	mulss xmm1, [_float_0_50000000]
	movss xmm3, dword [ecx+0x5049c]
	movss xmm4, dword [ecx+0x50498]
	xorps xmm4, [_data16_80000000]
	movaps xmm2, xmm3
	mulss xmm2, [ecx+0x504a4]
	movaps xmm0, xmm4
	mulss xmm0, [ecx+0x504a8]
	addss xmm2, xmm0
	movaps xmm0, xmm1
	addss xmm0, xmm1
	addss xmm5, xmm0
	mulss xmm6, xmm5
	addss xmm2, xmm6
	subss xmm2, xmm1
	lea edx, [edi+0x4]
	mov [ebp-0x3c], edx
	movaps xmm0, xmm3
	mulss xmm0, [ebx]
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	subss xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	seta dl
	mulss xmm3, [edi]
	mulss xmm4, [edi+0x4]
	addss xmm3, xmm4
	subss xmm3, xmm2
	ucomiss xmm1, xmm3
	seta al
	cmp dl, al
	jz _Z14ActorUpdatePosiP12CompassActorPKfi_70
	mov eax, [ebp-0x50]
	cmp [ebp-0x54], eax
	jg _Z14ActorUpdatePosiP12CompassActorPKfi_80
_Z14ActorUpdatePosiP12CompassActorPKfi_120:
	mov edx, [ebp-0x4c]
	cmp edx, [esi]
	jg _Z14ActorUpdatePosiP12CompassActorPKfi_70
	test byte [esi+0x2c], 0x1
	jnz _Z14ActorUpdatePosiP12CompassActorPKfi_70
	mov eax, [ebx]
	mov [esi+0xc], eax
	mov eax, [ebx+0x4]
	mov [esi+0x10], eax
	mov eax, [ebp-0x50]
	mov [esi+0x20], eax
	jmp _Z14ActorUpdatePosiP12CompassActorPKfi_70
_Z14ActorUpdatePosiP12CompassActorPKfi_10:
	lea eax, [ecx+0x4]
	mov [ebp-0x3c], eax
	lea ebx, [edx+0x4]
	mov ecx, eax
	mov eax, [edi]
	mov [esi+0x4], eax
	mov eax, [ecx]
	mov [ebx+0x4], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14ActorUpdatePosiP12CompassActorPKfi_50:
	lea eax, [edi+0x4]
	mov [ebp-0x3c], eax
	lea ebx, [esi+0x4]
	jmp _Z14ActorUpdatePosiP12CompassActorPKfi_70
_Z14ActorUpdatePosiP12CompassActorPKfi_40:
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*2]
	test byte [ecx+eax*4+0xe9f61], 0x1
	jnz _Z14ActorUpdatePosiP12CompassActorPKfi_30
	movss xmm0, dword [edi]
	subss xmm0, [ecx+0x46158]
	mov eax, [ebp-0x3c]
	movss xmm2, dword [eax]
	subss xmm2, [ecx+0x4615c]
	movss xmm3, dword [edi+0x8]
	subss xmm3, [ecx+0x46160]
	mov eax, compassEnemyFootstepMaxRange
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	ucomiss xmm0, xmm1
	ja _Z14ActorUpdatePosiP12CompassActorPKfi_30
	andps xmm3, [_data16_7fffffff]
	mov eax, compassEnemyFootstepMaxZ
	mov eax, [eax]
	ucomiss xmm3, [eax+0xc]
	ja _Z14ActorUpdatePosiP12CompassActorPKfi_30
	mov edx, [ecx+0x24]
	mov [ebp-0x40], edx
	mov eax, [ecx+0x20]
	mov edx, [eax+0x8]
	mov ecx, [ebp-0x40]
	mov eax, [ecx+0x8]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x44], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jp _Z14ActorUpdatePosiP12CompassActorPKfi_90
	jbe _Z14ActorUpdatePosiP12CompassActorPKfi_30
_Z14ActorUpdatePosiP12CompassActorPKfi_90:
	mov eax, [ebp+0x8]
	shl eax, 0x2
	mov ecx, [ebp+0x8]
	shl ecx, 0x5
	sub ecx, eax
	mov eax, ecx
	shl eax, 0x4
	add ecx, eax
	mov eax, cg_entitiesArray
	add ecx, eax
	mov [ebp-0x48], ecx
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, ecx
	add eax, 0x68
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov edx, [ebp-0x40]
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	add eax, 0xd8
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	movss xmm2, dword [ebp-0x30]
	subss xmm2, [ebp-0x24]
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [ebp-0x20]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x44]
	mulss xmm2, xmm0
	mulss xmm1, xmm0
	mov eax, compassEnemyFootstepMinSpeed
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	ucomiss xmm2, xmm0
	jb _Z14ActorUpdatePosiP12CompassActorPKfi_30
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp edx, [esi]
	jge _Z14ActorUpdatePosiP12CompassActorPKfi_100
	mov dword [esi], 0x0
_Z14ActorUpdatePosiP12CompassActorPKfi_100:
	lea eax, [edx-0x5dc]
	cmp [esi], eax
	jl _Z14ActorUpdatePosiP12CompassActorPKfi_30
	test byte [esi+0x2c], 0x1
	jnz _Z14ActorUpdatePosiP12CompassActorPKfi_30
	mov eax, [esi+0x4]
	mov [esi+0xc], eax
	mov eax, [ebx+0x4]
	mov [esi+0x10], eax
	mov [esi+0x20], edx
	mov ecx, [ebp-0x3c]
	jmp _Z14ActorUpdatePosiP12CompassActorPKfi_110
_Z14ActorUpdatePosiP12CompassActorPKfi_80:
	mov dword [esi], 0x0
	jmp _Z14ActorUpdatePosiP12CompassActorPKfi_120
	nop


;CG_CompassDrawEnemies(int, CompassType, rectDef_s const*, rectDef_s const*, float*)
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, [ebp+0x8]
	mov edi, [ebp+0x18]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov ebx, cgArray
	mov [esp], ebx
	call _Z21CG_CompassUpYawVectorPK4cg_sPf
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, [ebx+0x504b4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z14CG_FadeCompassii11CompassType
	fstp dword [ebp-0x64]
	movss xmm0, dword [ebp-0x64]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_10
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_20
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_10:
	mov eax, [ebx+0x24]
	mov edx, [eax+0xe8]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4]
	mov ecx, [eax+0xe9f34]
	test ecx, ecx
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_20
	cmp dword [eax+0xe9f50], 0x3
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_20
	lea eax, [ebp-0x4c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x50]
	mov [esp+0x18], eax
	lea eax, [ebp-0x54]
	mov [esp+0x14], eax
	lea eax, [ebp-0x58]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z24CG_CompassCalcDimensions11CompassTypePK4cg_sPK9rectDef_sS5_PfS6_S6_S6_
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x50]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x58]
	movss [ebp-0x6c], xmm1
	mulss xmm0, [ebp-0x4c]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x68], xmm0
	mov eax, [edi]
	mov [ebp-0x40], eax
	mov eax, [edi+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x8]
	mov [ebp-0x38], eax
	mov eax, [edi+0xc]
	mov [ebp-0x34], eax
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x60], eax
	mov dword [esp], _cstring_g_compassshowene
	call _Z12Dvar_GetBoolPKc
	mov edi, eax
	lea eax, [esi+esi*2]
	shl eax, 0xa
	lea ebx, [eax+s_compassActors]
	mov esi, 0x40
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_150:
	cmp byte [ebx+0x28], 0x0
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30
	mov ecx, edi
	test cl, cl
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_40
	mov edx, cgArray
	mov eax, [edx+0x46128]
	cmp [ebx], eax
	jle _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_50
	mov dword [ebx], 0x0
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_50:
	sub eax, 0x5dc
	cmp [ebx], eax
	jl _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_40:
	mov ecx, cgArray
	cvtsi2ss xmm2, dword [ecx+0x46128]
	lea eax, [ebx+0x1c]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0x1c]
	cvtsi2ss xmm1, edx
	mov eax, compassSoundPingFadeTime
	mov eax, [eax]
	movss xmm3, dword [_float_1000_00000000]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_60
	test edx, edx
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_60
	mov ecx, 0x1
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_170:
	mov edx, edi
	test dl, dl
	jnz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_70
	mov edx, [ebx+0x20]
	cvtsi2ss xmm1, edx
	mov eax, compassRadarPingFadeTime
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_80
	test edx, edx
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_80
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_70:
	mov eax, 0x1
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_160:
	test cl, cl
	jnz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_90
	test al, al
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_90:
	mov ecx, edi
	test cl, cl
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_100
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	lea eax, [ebx+0x4]
	mov [esp+0x14], eax
	mov eax, cgArray
	add eax, 0x492e0
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea edx, [ebp-0x58]
	mov [esp+0x8], edx
	mov ecx, cgArray
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20CG_WorldPosToCompass11CompassTypePK4cg_sPK9rectDef_sPKfS7_S7_PfS8_
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_180:
	test al, al
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_110
	mov eax, compassClampIcons
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_110:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z23CalcCompassFriendlySize11CompassTypePfS0_
	movss xmm6, dword [ebp-0x1c]
	movaps xmm0, xmm6
	mulss xmm0, [_float__0_50000000]
	addss xmm0, [ebp-0x6c]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	movss xmm5, dword [ebp-0x20]
	movaps xmm2, xmm5
	mulss xmm2, [_float__0_50000000]
	addss xmm2, [ebp-0x68]
	addss xmm2, [ebp-0x24]
	movss [ebp-0x24], xmm2
	mov eax, [ebx+0x20]
	mov ecx, cgArray
	mov edx, [ecx+0x46128]
	cmp eax, edx
	jge _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_120
	mov ecx, edi
	test cl, cl
	jnz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_120
	mov ecx, edx
	sub ecx, eax
	cvtsi2ss xmm1, ecx
	mov eax, compassRadarPingFadeTime
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float__1000_00000000]
	divss xmm1, xmm0
	movss xmm4, dword [_float_1_00000000]
	addss xmm1, xmm4
	mov ecx, [ebp-0x5c]
	mov eax, [ecx]
	cmp edx, eax
	jg _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_130
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_190:
	movaps xmm3, xmm4
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_200:
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jb _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_140
	mulss xmm1, [ebp-0x64]
	movss [ebp-0x34], xmm1
	mov eax, cgMedia
	mov eax, [eax+0x2718]
	mov [esp+0x20], eax
	lea eax, [ebp-0x40]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm5
	movss [esp+0xc], xmm6
	movss [esp+0x8], xmm2
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	movss [ebp-0x88], xmm3
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	movss xmm3, dword [ebp-0x88]
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_140:
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jb _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30
	mulss xmm3, [ebp-0x64]
	movss [ebp-0x34], xmm3
	mov eax, cgMedia
	mov eax, [eax+0x271c]
	mov [esp+0x20], eax
	lea eax, [ebp-0x40]
	mov [esp+0x1c], eax
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_30:
	add ebx, 0x30
	sub esi, 0x1
	jnz _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_150
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_20:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_80:
	xor eax, eax
	jmp _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_160
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_60:
	xor ecx, ecx
	jmp _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_170
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_100:
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	lea eax, [ebx+0xc]
	mov [esp+0x14], eax
	mov eax, cgArray
	add eax, 0x492e0
	mov [esp+0x10], eax
	lea edx, [ebp-0x30]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x58]
	mov [esp+0x8], ecx
	mov eax, cgArray
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z20CG_WorldPosToCompass11CompassTypePK4cg_sPK9rectDef_sPKfS7_S7_PfS8_
	jmp _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_180
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_120:
	movss xmm1, dword [_float_1_00000000]
	movaps xmm4, xmm1
	mov ecx, [ebp-0x5c]
	mov eax, [ecx]
	cmp edx, eax
	jle _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_190
_Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_130:
	sub edx, eax
	cvtsi2ss xmm3, edx
	mov eax, compassSoundPingFadeTime
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float__1000_00000000]
	divss xmm3, xmm0
	addss xmm3, xmm4
	jmp _Z21CG_CompassDrawEnemiesi11CompassTypePK9rectDef_sS2_Pf_200
	nop


;CG_CompassDrawVehicles(int, CompassType, int, rectDef_s const*, rectDef_s const*, Material*, Material*, float const*)
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, [ebp+0x24]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edi, cgArray
	mov eax, [edi+0x504b4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14CG_FadeCompassii11CompassType
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_10
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_10
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_30:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_10:
	lea eax, [ebp-0x44]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x48]
	mov [esp+0x18], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x50]
	mov [esp+0x10], eax
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z24CG_CompassCalcDimensions11CompassTypePK4cg_sPK9rectDef_sS5_PfS6_S6_S6_
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x50]
	movss [ebp-0x64], xmm1
	mulss xmm0, [ebp-0x44]
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x60], xmm0
	mov eax, [ebx]
	mov [ebp-0x38], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x30], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z21CG_CompassUpYawVectorPK4cg_sPf
	mov edx, [ebp+0x8]
	shl edx, 0x5
	mov eax, [ebp+0x8]
	shl eax, 0x8
	sub eax, edx
	lea ebx, [eax+s_compassVehicles]
	mov esi, 0x8
	mov [ebp-0x68], edi
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	mov ecx, scrPlaceView
	add eax, ecx
	mov [ebp-0x6c], eax
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_20
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_40:
	add ebx, 0x1c
	sub esi, 0x1
	jz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_30
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_20:
	mov eax, [ebx]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov ecx, [ebp+0x10]
	cmp [edx+eax+0xd0], ecx
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_40
	mov eax, [edi+0x46128]
	cmp [ebx+0x4], eax
	jle _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_50
	mov dword [ebx+0x4], 0x0
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_50:
	sub eax, 0x5dc
	cmp [ebx+0x4], eax
	jl _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_40
	lea eax, [ebp-0x20]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	lea eax, [ebx+0x8]
	mov [esp+0x14], eax
	lea eax, [edi+0x492e0]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea edx, [ebp-0x50]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z20CG_WorldPosToCompass11CompassTypePK4cg_sPK9rectDef_sPKfS7_S7_PfS8_
	test al, al
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_60
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_120:
	cmp dword [ebp+0x10], 0xc
	jz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_70
	mov eax, compassSize
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mulss xmm2, [_float_20_00000000]
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_130:
	movaps xmm1, xmm2
	mulss xmm1, [_float__0_50000000]
	movss xmm0, dword [ebp-0x64]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	addss xmm1, [ebp-0x60]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_80
	mov eax, compassRotation
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_90
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_80:
	mov edx, [ebp-0x68]
	movss xmm0, dword [edx+0x50494]
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_160:
	subss xmm0, [ebx+0x10]
	movss [esp], xmm0
	movss [ebp-0x88], xmm2
	call _Z17AngleNormalize360f
	movss xmm2, dword [ebp-0x88]
	movss xmm1, dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x5c]
	cmpss xmm0, xmm1, 0x5
	andps xmm1, xmm0
	movss xmm3, dword [ebp-0x5c]
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x68]
	mov ecx, [eax]
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, [ebp-0x68]
	mov eax, [edx+eax*4+0xe9f50]
	test eax, eax
	jnz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_100
	cmp ecx, [ebx+0x18]
	setnz al
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_150:
	test al, al
	jz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_110
	mov ecx, [ebp+0x1c]
	mov [esp+0x24], ecx
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_140:
	lea eax, [ebp-0x38]
	mov [esp+0x20], eax
	fstp dword [esp+0x1c]
	mov edx, [ebp+0x18]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm2
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x6c]
	mov [esp], ecx
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_40
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_60:
	mov eax, compassClampIcons
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_40
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_120
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_70:
	mov eax, compassSize
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mulss xmm2, [_float_40_00000000]
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_130
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_110:
	mov eax, [ebp+0x20]
	mov [esp+0x24], eax
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_140
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_100:
	cmp eax, [ebx+0x14]
	setnz al
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_150
_Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_90:
	mov eax, [ebp-0x68]
	movss xmm0, dword [eax+0x4d364]
	jmp _Z22CG_CompassDrawVehiclesi11CompassTypeiPK9rectDef_sS2_P8MaterialS4_PKf_160


;CG_CompassUpdateActors(int)
_Z22CG_CompassUpdateActorsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, cgArray
	mov [ebp-0x38], eax
	mov ebx, [eax+0x24]
	mov eax, [ebx+0xe8]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov ecx, [ebp-0x38]
	lea ecx, [edx+ecx+0xe9f34]
	mov [ebp-0x34], ecx
	mov edi, [ebp-0x38]
	lea eax, [edx+edi]
	mov edi, [eax+0xe9f34]
	test edi, edi
	jz _Z22CG_CompassUpdateActorsi_10
	cmp dword [eax+0xe9f50], 0x3
	jz _Z22CG_CompassUpdateActorsi_10
	mov esi, [ebx+0x2f70]
	test esi, esi
	jle _Z22CG_CompassUpdateActorsi_20
	xor esi, esi
	mov edi, [ebp-0x38]
	mov [ebp-0x30], edi
_Z22CG_CompassUpdateActorsi_80:
	mov eax, esi
	shl eax, 0x4
	sub eax, esi
	lea eax, [esi+eax*4]
	mov ebx, [ebx+eax*4+0x2f78]
	cmp ebx, 0x3f
	jg _Z22CG_CompassUpdateActorsi_30
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, [ebp-0x38]
	lea eax, [edx+eax*4]
	mov ecx, [eax+0xe9f34]
	test ecx, ecx
	jz _Z22CG_CompassUpdateActorsi_40
	mov ecx, [eax+0xe9f50]
	lea edx, [ebx+ebx*2]
	shl edx, 0x4
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*2]
	shl eax, 0xa
	lea eax, [edx+eax+s_compassActors]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x34]
	mov eax, [edx+0x1c]
	test eax, eax
	jz _Z22CG_CompassUpdateActorsi_50
	cmp ecx, eax
	jz _Z22CG_CompassUpdateActorsi_60
_Z22CG_CompassUpdateActorsi_50:
	mov eax, 0x1
_Z22CG_CompassUpdateActorsi_160:
	mov ecx, [ebp-0x2c]
	mov [ecx+0x28], al
	mov edi, [ebp-0x30]
	mov eax, [edi+0xe9f60]
	mov [ecx+0x2c], eax
	lea edx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea edi, [eax+edx]
	add edi, cg_entitiesArray
	cmp dword [edi+0xd0], 0x1
	jz _Z22CG_CompassUpdateActorsi_70
_Z22CG_CompassUpdateActorsi_30:
	mov eax, [ebp-0x38]
_Z22CG_CompassUpdateActorsi_100:
	add esi, 0x1
	mov ebx, [eax+0x24]
	add dword [ebp-0x30], 0x4cc
	cmp esi, [ebx+0x2f70]
	jl _Z22CG_CompassUpdateActorsi_80
_Z22CG_CompassUpdateActorsi_20:
	mov eax, [ebx+0x5b8]
	test eax, eax
	jz _Z22CG_CompassUpdateActorsi_10
	mov esi, eax
	and esi, 0x3f
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	mov edx, [ebp-0x38]
	mov ecx, [edx+eax*4+0xe9f50]
	lea edx, [esi+esi*2]
	shl edx, 0x4
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*2]
	shl eax, 0xa
	lea edi, [edx+eax+s_compassActors]
	mov edx, [ebp-0x34]
	mov eax, [edx+0x1c]
	test eax, eax
	jnz _Z22CG_CompassUpdateActorsi_90
_Z22CG_CompassUpdateActorsi_110:
	mov eax, 0x1
_Z22CG_CompassUpdateActorsi_120:
	mov [edi+0x28], al
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	mov ecx, [ebp-0x38]
	mov eax, [ecx+eax*4+0xe9f60]
	mov [edi+0x2c], eax
	mov edx, [ebx+0x5b8]
	movss xmm1, dword [ecx+0x492e4]
	mov eax, edx
	and eax, 0x7fc0
	shr eax, 0x4
	sub eax, 0x3fc
	cvtsi2ss xmm0, eax
	addss xmm0, [ecx+0x492e0]
	movss [ebp-0x20], xmm0
	and edx, 0xff8000
	shr edx, 0xd
	sub edx, 0x3fc
	cvtsi2ss xmm0, edx
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	lea ecx, [ebp-0x20]
	mov [esp], esi
	mov edx, edi
	mov eax, [ebp+0x8]
	call _Z14ActorUpdatePosiP12CompassActorPKfi
	mov eax, [ebp-0x38]
	mov edx, [eax+0x24]
	movsx eax, byte [edx+0x5bb]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_1_40625000]
	movss [edi+0x14], xmm0
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x46128]
	mov [edi], eax
	test byte [edx+0xbe], 0x80
	jz _Z22CG_CompassUpdateActorsi_10
	cmp eax, [edi+0x18]
	jl _Z22CG_CompassUpdateActorsi_10
	add eax, 0xbb8
	mov [edi+0x18], eax
_Z22CG_CompassUpdateActorsi_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CG_CompassUpdateActorsi_40:
	mov eax, edx
	jmp _Z22CG_CompassUpdateActorsi_100
_Z22CG_CompassUpdateActorsi_90:
	cmp ecx, eax
	jnz _Z22CG_CompassUpdateActorsi_110
	xor eax, eax
	jmp _Z22CG_CompassUpdateActorsi_120
_Z22CG_CompassUpdateActorsi_70:
	test byte [edi+0xd6], 0x2
	jnz _Z22CG_CompassUpdateActorsi_30
	lea ecx, [edi+0x1c]
	mov [esp], ebx
	mov edx, [ebp-0x2c]
	mov eax, [ebp+0x8]
	call _Z14ActorUpdatePosiP12CompassActorPKfi
	mov edx, cgArray
	mov eax, [edx+0x46128]
	mov ecx, [ebp-0x2c]
	mov [ecx], eax
	mov eax, [edi+0x2c]
	mov [ecx+0x14], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18CL_IsPlayerTalkingii
	test al, al
	jnz _Z22CG_CompassUpdateActorsi_130
_Z22CG_CompassUpdateActorsi_170:
	test byte [edi+0xd6], 0x40
	jz _Z22CG_CompassUpdateActorsi_140
	mov edi, cgArray
	mov eax, [edi+0x46128]
	mov edx, [ebp-0x2c]
	cmp [edx+0x18], eax
	jg _Z22CG_CompassUpdateActorsi_150
	add eax, 0xbb8
	mov [edx+0x18], eax
	mov [ebp-0x38], edi
	mov eax, edi
	jmp _Z22CG_CompassUpdateActorsi_100
_Z22CG_CompassUpdateActorsi_60:
	xor eax, eax
	jmp _Z22CG_CompassUpdateActorsi_160
_Z22CG_CompassUpdateActorsi_140:
	mov ecx, cgArray
	mov [ebp-0x38], ecx
	mov eax, ecx
	jmp _Z22CG_CompassUpdateActorsi_100
_Z22CG_CompassUpdateActorsi_130:
	mov edx, cgArray
	mov eax, [edx+0x46128]
	add eax, 0x32
	mov ecx, [ebp-0x2c]
	mov [ecx+0x24], eax
	jmp _Z22CG_CompassUpdateActorsi_170
_Z22CG_CompassUpdateActorsi_150:
	mov [ebp-0x38], edi
	mov eax, edi
	jmp _Z22CG_CompassUpdateActorsi_100


;CG_ClearCompassPingData()
_Z23CG_ClearCompassPingDatav:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0xc00
	mov dword [esp+0x4], 0x0
	mov dword [esp], s_compassActors
	call memset
	mov dword [esp+0x8], 0xe0
	mov dword [esp+0x4], 0x0
	mov dword [esp], s_compassVehicles
	call memset
	leave
	ret


;CG_CompassDrawFriendlies(int, CompassType, rectDef_s const*, rectDef_s const*, float*)
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov esi, cgArray
	mov [esp], esi
	call _Z21CG_CompassUpYawVectorPK4cg_sPf
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, [esi+0x504b4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14CG_FadeCompassii11CompassType
	fstp dword [ebp-0x6c]
	movss xmm0, dword [ebp-0x6c]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_10
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_20
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_10:
	mov eax, [esi+0x24]
	mov edx, [eax+0xe8]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [esi+eax*4]
	mov edx, [eax+0xe9f34]
	test edx, edx
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_20
	mov eax, [eax+0xe9f50]
	cmp eax, 0x3
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_20
	test eax, eax
	jnz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_30
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_20:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_30:
	lea eax, [ebp-0x5c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x60]
	mov [esp+0x18], eax
	lea eax, [ebp-0x64]
	mov [esp+0x14], eax
	lea eax, [ebp-0x68]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z24CG_CompassCalcDimensions11CompassTypePK4cg_sPK9rectDef_sS5_PfS6_S6_S6_
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x60]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x68]
	movss [ebp-0x8c], xmm1
	mulss xmm0, [ebp-0x5c]
	addss xmm0, [ebp-0x64]
	movss [ebp-0x88], xmm0
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x50], eax
	add edx, 0x4
	mov [ebp-0x78], edx
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	mov [ebp-0x4c], eax
	add edx, 0x8
	mov [ebp-0x74], edx
	mov edx, [ebp+0x18]
	mov eax, [edx+0x8]
	mov [ebp-0x48], eax
	add edx, 0xc
	mov [ebp-0x70], edx
	mov eax, [ebp+0x18]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x44], xmm0
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x7c], eax
	ucomiss xmm0, [ebp-0x6c]
	jbe _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_40
	movss xmm0, dword [ebp-0x6c]
	mov eax, [ebp+0x18]
	movss [eax+0xc], xmm0
	movss xmm1, dword [ebp-0x44]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_330:
	movss xmm0, dword [ebp-0x6c]
	cmpss xmm0, xmm1, 0x5
	andps xmm1, xmm0
	movss xmm2, dword [ebp-0x6c]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x44], xmm0
	lea eax, [ebx+ebx*2]
	shl eax, 0xa
	lea ebx, [eax+s_compassActors]
	mov dword [ebp-0x90], 0x0
	mov edi, esi
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_50
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_210:
	mov eax, compassObjectiveMinAlpha
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm3
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	movss [ebp-0x44], xmm1
	lea ecx, [ebx+0x4]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_230:
	lea eax, [ebp-0x30]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], ecx
	lea eax, [edi+0x492e0]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea edx, [ebp-0x68]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z20CG_WorldPosToCompass11CompassTypePK4cg_sPK9rectDef_sPKfS7_S7_PfS8_
	test al, al
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_60
	mov eax, compassClampIcons
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_60:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z23CalcCompassFriendlySize11CompassTypePfS0_
	movss xmm1, dword [_float__0_50000000]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x8c]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	mulss xmm1, [ebp-0x20]
	addss xmm1, [ebp-0x88]
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x2c], xmm1
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_80
	mov eax, compassRotation
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_90
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_80:
	movss xmm0, dword [edi+0x50494]
	subss xmm0, [ebx+0x14]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x84]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_320:
	mov eax, [ebx+0x18]
	mov esi, [edi+0x46128]
	cmp eax, esi
	jle _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_100
	sub eax, esi
	mov [ebp-0xbc], eax
	mov edx, 0x10624dd3
	imul edx
	sar edx, 0x5
	mov ecx, [ebp-0xbc]
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	lea edx, [edx+edx*4]
	shl edx, 0x2
	sub [ebp-0xbc], edx
	cmp dword [ebp-0xbc], 0xf9
	jle _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_100
	mov ecx, 0x1
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_240:
	mov edx, [ebx+0x1c]
	mov eax, compassSoundPingFadeTime
	mov eax, [eax]
	movss xmm3, dword [eax+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [_float_1000_00000000]
	cvtsi2ss xmm2, esi
	cvtsi2ss xmm0, edx
	addss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_110
	mov dword [ebp-0x80], 0x0
	pxor xmm4, xmm4
	movaps xmm5, xmm4
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_290:
	mov eax, [ebx+0x24]
	cvtsi2ss xmm0, eax
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	jae _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_120
	xor esi, esi
	movaps xmm2, xmm5
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_270:
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov [ebp-0x40], eax
	mov edx, [ebp-0x78]
	mov eax, [edx]
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x74]
	mov eax, [edx]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x70]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, xmm1
	movaps xmm3, xmm5
	cmpss xmm3, xmm0, 0x2
	movaps xmm0, xmm3
	andps xmm1, xmm3
	movss xmm3, dword [ebp-0x6c]
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm4
	movaps xmm1, xmm5
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movaps xmm4, xmm0
	andnps xmm4, xmm3
	orps xmm4, xmm1
	movaps xmm0, xmm3
	subss xmm0, xmm2
	cmpss xmm5, xmm0, 0x2
	movaps xmm1, xmm2
	andps xmm1, xmm5
	movaps xmm2, xmm5
	andnps xmm2, xmm3
	orps xmm2, xmm1
	cmp ecx, 0x1
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_130
	mov eax, [ebp-0x80]
	test eax, eax
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_140
	ucomiss xmm4, [_float_1_00000000]
	jp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_140
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_150
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_140:
	test esi, esi
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_160
	ucomiss xmm2, [_float_1_00000000]
	jp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_160
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_170
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_160:
	mov edx, cgMedia
	mov eax, [edx+ecx*4+0x24c]
	mov [esp+0x24], eax
	lea eax, [ebp-0x40]
	mov [esp+0x20], eax
	movss xmm0, dword [ebp-0x84]
	movss [esp+0x1c], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp], eax
	movss [ebp-0xa8], xmm2
	movss [ebp-0xb8], xmm4
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	movss xmm4, dword [ebp-0xb8]
	movss xmm2, dword [ebp-0xa8]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_150:
	test esi, esi
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_180
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_170:
	movss [ebp-0x44], xmm2
	mov [esp+0x24], esi
	lea eax, [ebp-0x50]
	mov [esp+0x20], eax
	movss xmm0, dword [ebp-0x84]
	movss [esp+0x1c], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov esi, [ebp-0x7c]
	mov [esp], esi
	movss [ebp-0xb8], xmm4
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
	movss xmm4, dword [ebp-0xb8]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_180:
	mov eax, [ebp-0x80]
	test eax, eax
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
	movss [ebp-0x44], xmm4
	mov eax, [ebp-0x80]
	mov [esp+0x24], eax
	lea eax, [ebp-0x50]
	mov [esp+0x20], eax
	movss xmm0, dword [ebp-0x84]
	movss [esp+0x1c], xmm0
	mov edx, [ebp+0x14]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov esi, [ebp-0x7c]
	mov [esp], esi
	call _Z17CG_DrawRotatedPicPK15ScreenPlacementffffiifPKfP8Material
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70:
	add dword [ebp-0x90], 0x1
	add ebx, 0x30
	cmp dword [ebp-0x90], 0x40
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_20
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_50:
	mov eax, [ebx]
	cmp eax, [edi+0x46128]
	jle _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_190
	mov dword [ebx], 0x0
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_190:
	mov eax, [edi+0x46128]
	sub eax, 0x5dc
	cmp [ebx], eax
	jl _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
	cmp byte [ebx+0x28], 0x0
	jnz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
	mov eax, [edi+0x24]
	mov edx, [ebp-0x90]
	cmp [eax+0xe8], edx
	jz _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
	movss xmm2, dword [_data16_7fffffff]
	movss xmm1, dword [ebx+0x4]
	movaps xmm0, xmm1
	andps xmm0, xmm2
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm3, xmm0
	jb _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_200
	movss xmm0, dword [ebx+0x8]
	andps xmm0, xmm2
	ucomiss xmm3, xmm0
	jae _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_210
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_200:
	lea ecx, [ebx+0x4]
	subss xmm1, [edi+0x492e0]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [edi+0x492e4]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm2, xmm1
	movss [ebp-0x44], xmm2
	mov esi, compassObjectiveMaxRange
	mov eax, [esi]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm2, xmm0
	jbe _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_220
	movss [ebp-0x44], xmm0
	mov edx, compassMaxRange
	mov edx, [edx]
	movaps xmm1, xmm0
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_250:
	subss xmm1, [edx+0xc]
	movss [ebp-0x44], xmm1
	mov esi, compassObjectiveMaxRange
	mov eax, [esi]
	movss xmm0, dword [eax+0xc]
	subss xmm0, [edx+0xc]
	divss xmm1, xmm0
	movss [ebp-0x44], xmm1
	mov eax, compassObjectiveMinAlpha
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm3
	mulss xmm1, xmm0
	addss xmm1, xmm3
	movss [ebp-0x44], xmm1
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_230
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_100:
	xor ecx, ecx
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_240
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_220:
	mov edx, compassMaxRange
	mov eax, [edx]
	movss xmm1, dword [eax+0xc]
	movaps xmm0, xmm2
	cmpss xmm0, xmm1, 0x5
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x44], xmm0
	mov edx, eax
	movaps xmm1, xmm0
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_250
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_120:
	cmp esi, eax
	jg _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_260
	movss xmm2, dword [_float_1_00000000]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_300:
	mov eax, cgMedia
	mov esi, [eax+0x2714]
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_270
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_110:
	cmp esi, edx
	jg _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_280
	movss xmm4, dword [_float_1_00000000]
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_310:
	mov edx, cgMedia
	mov edx, [edx+0x2710]
	mov [ebp-0x80], edx
	pxor xmm5, xmm5
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_290
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_260:
	sub esi, eax
	cvtsi2ss xmm2, esi
	mulss xmm3, [_float__1000_00000000]
	divss xmm2, xmm3
	addss xmm2, [_float_1_00000000]
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_300
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_280:
	mov eax, esi
	sub eax, edx
	cvtsi2ss xmm4, eax
	movaps xmm0, xmm3
	mulss xmm0, [_float__1000_00000000]
	divss xmm4, xmm0
	addss xmm4, [_float_1_00000000]
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_310
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_90:
	movss xmm0, dword [edi+0x4d364]
	subss xmm0, [ebx+0x14]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x84]
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_320
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_130:
	mov edx, cgMedia
	mov eax, [edx+0x250]
	mov [esp+0x20], eax
	lea eax, [ebp-0x50]
	mov [esp+0x1c], eax
	mov esi, [ebp+0x14]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x7c]
	mov [esp], eax
	call _Z16UI_DrawHandlePicPK15ScreenPlacementffffiiPKfP8Material
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_70
_Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_40:
	movaps xmm1, xmm0
	jmp _Z24CG_CompassDrawFriendliesi11CompassTypePK9rectDef_sS2_Pf_330
	nop
	add [eax], al


;CG_CompassDrawRadarEffects(int, CompassType, rectDef_s const*, rectDef_s const*, float*)
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x14]
	mov ebx, cgArray
	mov eax, [ebx+0x466ec]
	test eax, eax
	jnz _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_10
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_70:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_10:
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea esi, [eax+edx*4]
	add esi, scrPlaceView
	lea eax, [ebp-0x20]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	lea edx, [ebp-0x28]
	lea eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z24CG_CompassCalcDimensions11CompassTypePK4cg_sPK9rectDef_sS5_PfS6_S6_S6_
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_20
	movss xmm7, dword [ebx+0x50508]
	mov eax, compassRadarLineThickness
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x2c], xmm0
	mov eax, compassMaxRange
	mov eax, [eax]
	movss xmm6, dword [eax+0xc]
	movaps xmm1, xmm0
	mulss xmm1, xmm6
	movaps xmm0, xmm6
	mulss xmm0, [SQRT2]
	addss xmm1, xmm0
	movss xmm5, dword [ebx+0x504ac]
	mov eax, cg_hudMapRadarLineThickness
	mov eax, [eax]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0xc]
	ucomiss xmm1, xmm0
	jbe _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_30
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x30], xmm0
	movaps xmm4, xmm0
	mulss xmm4, xmm1
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_90:
	mov edx, cgArray
	movss xmm0, dword [edx+0x5049c]
	movss xmm1, dword [edx+0x50498]
	xorps xmm1, [_data16_80000000]
	movaps xmm3, xmm0
	mulss xmm3, [edx+0x492e0]
	movaps xmm2, xmm1
	mulss xmm2, [edx+0x492e4]
	addss xmm3, xmm2
	mulss xmm0, [edx+0x504a4]
	mulss xmm1, [edx+0x504a8]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	addss xmm1, xmm4
	addss xmm5, xmm1
	mulss xmm7, xmm5
	addss xmm0, xmm7
	subss xmm0, xmm4
	subss xmm3, xmm0
	divss xmm3, xmm6
	divss xmm3, dword [ebp-0x2c]
	addss xmm3, [ebp-0x30]
	mov eax, compassRotation
	mov eax, [eax]
	pxor xmm0, xmm0
	cmp byte [eax+0xc], 0x0
	jz _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_40
	movss xmm0, dword [edx+0x50494]
	subss xmm0, [edx+0x4d364]
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_40:
	mov eax, cgMedia
	mov eax, [eax+0x272c]
	mov [esp+0x38], eax
	mov eax, [ebp+0x18]
	mov [esp+0x34], eax
	movss [esp+0x30], xmm0
	mov eax, 0x3f800000
	mov [esp+0x2c], eax
	mov [esp+0x28], eax
	movss xmm0, dword [ebp-0x30]
	divss xmm0, dword [ebp-0x2c]
	movss [esp+0x24], xmm0
	mov dword [esp+0x20], 0x0
	movss [esp+0x1c], xmm3
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z26CL_DrawStretchPicRotatedSTPK15ScreenPlacementffffiiffffffPKfP8Material
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_20:
	movss xmm6, dword [ebx+0x50508]
	mov eax, compassMaxRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, compassRadarLineThickness
	mov eax, [eax]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0xc]
	mulss xmm0, [SQRT2]
	addss xmm1, xmm0
	mov eax, cg_hudMapRadarLineThickness
	mov eax, [eax]
	movss xmm4, dword [eax+0xc]
	movss xmm2, dword [ebx+0x504ac]
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	ucomiss xmm1, xmm0
	jbe _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_50
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x30], xmm0
	mulss xmm0, xmm1
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_80:
	divss xmm0, xmm2
	movaps xmm3, xmm0
	addss xmm3, xmm0
	movss xmm5, dword [_float_1_00000000]
	addss xmm3, xmm5
	mulss xmm3, xmm6
	subss xmm3, xmm0
	ucomiss xmm4, [_float_0_00000000]
	jp _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_60
	jbe _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_70
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_60:
	movss xmm2, dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x20]
	mov eax, cgMedia
	mov eax, [eax+0x272c]
	mov [esp+0x30], eax
	mov eax, [ebp+0x18]
	mov [esp+0x2c], eax
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	divss xmm0, xmm1
	movaps xmm6, xmm5
	divss xmm6, xmm0
	movss [esp+0x28], xmm6
	movaps xmm0, xmm5
	subss xmm0, xmm3
	divss xmm0, xmm4
	addss xmm0, [ebp-0x30]
	movss [esp+0x24], xmm0
	xor eax, eax
	mov [esp+0x20], eax
	xorps xmm3, [_data16_80000000]
	divss xmm3, xmm4
	addss xmm3, [ebp-0x30]
	movss [esp+0x1c], xmm3
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm2
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z17CL_DrawStretchPicPK15ScreenPlacementffffiiffffPKfP8Material
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_50:
	movss xmm1, dword [_float_0_50000000]
	movss [ebp-0x30], xmm1
	mulss xmm0, xmm1
	jmp _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_80
_Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_30:
	movss xmm1, dword [_float_0_50000000]
	movss [ebp-0x30], xmm1
	movaps xmm4, xmm1
	mulss xmm4, xmm0
	jmp _Z26CG_CompassDrawRadarEffectsi11CompassTypePK9rectDef_sS2_Pf_90
	nop


;CG_CompassAddWeaponPingInfo(int, centity_s const*, float const*, int)
_Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x14]
	mov eax, [ebp+0xc]
	cmp dword [eax+0xd0], 0x2
	jz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_10
	mov edx, cgArray
	mov eax, [edx+0x24]
	mov ebx, [eax+0xe8]
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f34]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0xc]
	mov ecx, [eax+0x158]
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f34]
	cmp ebx, ecx
	jz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_10
	mov ebx, [ebp+0xc]
	mov ecx, [ebx+0xcc]
	mov edi, [eax+0x1c]
	cmp edi, 0x3
	jz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_10
	lea edx, [ecx+ecx*2]
	shl edx, 0x4
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*2]
	shl eax, 0xa
	lea ebx, [edx+eax+s_compassActors]
	mov eax, cgArray
	add esi, [eax+0x46128]
	mov [ebx+0x1c], esi
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x1c]
	test eax, eax
	jnz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_20
_Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_30:
	mov eax, 0x1
_Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_40:
	mov [ebx+0x28], al
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, cgArray
	mov eax, [edx+eax*4+0xe9f60]
	mov [ebx+0x2c], eax
	cmp byte [ebx+0x28], 0x0
	jz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x158]
	mov [esp], eax
	mov ecx, [ebp+0x10]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call _Z14ActorUpdatePosiP12CompassActorPKfi
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebx+0xc], eax
	mov eax, [edx+0x4]
	mov [ebx+0x10], eax
_Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_20:
	cmp edi, eax
	jnz _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_30
	xor eax, eax
	jmp _Z27CG_CompassAddWeaponPingInfoiPK9centity_sPKfi_40


;CG_CompassIncreaseRadarTime(int)
_Z27CG_CompassIncreaseRadarTimei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, cgArray
	mov eax, [ebx+0x466ec]
	test eax, eax
	jnz _Z27CG_CompassIncreaseRadarTimei_10
	mov dword [ebx+0x50508], 0x0
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_Z27CG_CompassIncreaseRadarTimei_10:
	movss xmm0, dword [ebx+0x50508]
	movss [ebp-0xc], xmm0
	cvtsi2ss xmm1, dword [ebx+0x46124]
	mov eax, compassRadarUpdateTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	divss xmm1, xmm0
	addss xmm1, [ebp-0xc]
	movss [esp], xmm1
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [ebp-0x10]
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0x10]
	movss [ebx+0x50508], xmm1
	movss [esp+0x8], xmm1
	movss xmm0, dword [ebp-0xc]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z31CG_CompassRadarPingEnemyPlayersiff
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;CG_CompassUpdateVehicleInfo(int, int)
_Z27CG_CompassUpdateVehicleInfoii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov edx, [ebp+0xc]
	shl edx, 0x2
	mov eax, [ebp+0xc]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	add eax, edx
	mov [ebp-0x10], eax
	mov edx, [ebp+0x8]
	shl edx, 0x5
	mov eax, [ebp+0x8]
	shl eax, 0x8
	sub eax, edx
	add eax, s_compassVehicles
	xor edx, edx
	mov edi, eax
_Z27CG_CompassUpdateVehicleInfoii_20:
	mov ecx, [ebp+0xc]
	cmp ecx, [eax]
	jz _Z27CG_CompassUpdateVehicleInfoii_10
	add edx, 0x1
	add edi, 0x1c
	add eax, 0x1c
	cmp edx, 0x8
	jnz _Z27CG_CompassUpdateVehicleInfoii_20
	mov edx, [ebp+0x8]
	shl edx, 0x5
	mov eax, [ebp+0x8]
	shl eax, 0x8
	sub eax, edx
	add eax, s_compassVehicles
	xor ecx, ecx
_Z27CG_CompassUpdateVehicleInfoii_40:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z27CG_CompassUpdateVehicleInfoii_30
	add ecx, 0x1
	add eax, 0x1c
	cmp ecx, 0x8
	jnz _Z27CG_CompassUpdateVehicleInfoii_40
	mov edx, [ebp+0x8]
	shl edx, 0x5
	mov eax, [ebp+0x8]
	shl eax, 0x8
	sub eax, edx
	lea edi, [eax+s_compassVehicles]
	mov ebx, 0x1
	and ecx, 0xffffff00
	mov [ebp-0x14], eax
	mov esi, eax
_Z27CG_CompassUpdateVehicleInfoii_50:
	lea eax, [ecx*4]
	mov edx, ecx
	shl edx, 0x5
	sub edx, eax
	mov eax, [edi+0x20]
	cmp eax, [edx+esi+s_compassVehicles+0x4]
	cmovl ecx, ebx
	add ebx, 0x1
	add edi, 0x1c
	cmp ebx, 0x8
	jnz _Z27CG_CompassUpdateVehicleInfoii_50
_Z27CG_CompassUpdateVehicleInfoii_30:
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	mov eax, [ebp+0x8]
	shl eax, 0x5
	shl dword [ebp+0x8], 0x8
	sub [ebp+0x8], eax
	mov esi, [ebp+0x8]
	lea edx, [ecx+esi]
	lea ebx, [edx+s_compassVehicles]
	cld
	mov ecx, 0x7
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov eax, [ebp+0xc]
	mov [edx+s_compassVehicles], eax
_Z27CG_CompassUpdateVehicleInfoii_60:
	mov eax, cgArray
	mov eax, [eax+0x46128]
	mov [ebx+0x4], eax
	mov edx, [ebp-0x10]
	mov eax, [edx+0x1c]
	mov [ebx+0x8], eax
	mov eax, [edx+0x20]
	mov [ebx+0xc], eax
	mov eax, [edx+0x2c]
	mov [ebx+0x10], eax
	mov eax, [edx+0x138]
	mov edx, eax
	and edx, 0x3
	mov [ebx+0x14], edx
	sar eax, 0x2
	mov [ebx+0x18], eax
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CG_CompassUpdateVehicleInfoii_10:
	mov ebx, edi
	jmp _Z27CG_CompassUpdateVehicleInfoii_60
	nop


;CG_CompassRadarPingEnemyPlayers(int, float, float)
_Z31CG_CompassRadarPingEnemyPlayersiff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [ebp+0x10]
	ja _Z31CG_CompassRadarPingEnemyPlayersiff_10
	mov edx, cgArray
	mov eax, [edx+0x24]
	mov edx, [eax+0xe8]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, cgArray
	lea eax, [edx+eax*4+0xe9f34]
	mov [ebp-0x20], eax
	mov eax, compassMaxRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mov eax, compassRadarLineThickness
	mov eax, [eax]
	movaps xmm2, xmm0
	mulss xmm2, [eax+0xc]
	mulss xmm0, [SQRT2]
	addss xmm2, xmm0
	movss xmm7, dword [edx+0x504ac]
	mov eax, cg_hudMapRadarLineThickness
	mov eax, [eax]
	movaps xmm5, xmm7
	mulss xmm5, [eax+0xc]
	ucomiss xmm2, xmm5
	jbe _Z31CG_CompassRadarPingEnemyPlayersiff_20
	movaps xmm1, xmm2
	mulss xmm1, [_float_0_50000000]
_Z31CG_CompassRadarPingEnemyPlayersiff_110:
	mov eax, cgArray
	movss xmm0, dword [eax+0x5049c]
	movss [ebp-0x1c], xmm0
	movss xmm6, dword [eax+0x50498]
	xorps xmm6, [_data16_80000000]
	movaps xmm4, xmm0
	mulss xmm4, [eax+0x504a4]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x504a8]
	addss xmm4, xmm0
	movaps xmm3, xmm1
	addss xmm3, xmm1
	addss xmm3, xmm7
	mulss xmm3, [ebp+0xc]
	addss xmm3, xmm4
	subss xmm3, xmm1
	ucomiss xmm2, xmm5
	jbe _Z31CG_CompassRadarPingEnemyPlayersiff_30
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
_Z31CG_CompassRadarPingEnemyPlayersiff_130:
	movaps xmm2, xmm0
	addss xmm2, xmm0
	addss xmm2, xmm7
	mulss xmm2, [ebp+0x10]
	addss xmm2, xmm4
	subss xmm2, xmm0
	lea eax, [ebx+ebx*2]
	shl eax, 0xa
	lea ecx, [eax+s_compassActors]
	xor esi, esi
	mov ebx, cgArray
	pxor xmm4, xmm4
	xor edi, edi
_Z31CG_CompassRadarPingEnemyPlayersiff_90:
	mov eax, [ebx+0xe9f34]
	test eax, eax
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_40
	mov eax, [ebx+0xe9f50]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x20]
	mov eax, [edx+0x1c]
	test eax, eax
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_50
	cmp [ebp-0x2c], eax
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_60
_Z31CG_CompassRadarPingEnemyPlayersiff_50:
	mov eax, 0x1
_Z31CG_CompassRadarPingEnemyPlayersiff_100:
	mov [ecx+0x28], al
	mov eax, [ebx+0xe9f60]
	mov [ecx+0x2c], eax
	cmp byte [ecx+0x28], 0x0
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_40
	mov edx, cg_entitiesArray
	lea eax, [edi+edx]
	cmp byte [eax+0x1c0], 0x0
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_70
	cmp dword [eax+0xd0], 0x1
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_80
_Z31CG_CompassRadarPingEnemyPlayersiff_40:
	add esi, 0x1
	add edi, 0x1dc
	add ecx, 0x30
	add ebx, 0x4cc
	cmp esi, 0x40
	jnz _Z31CG_CompassRadarPingEnemyPlayersiff_90
_Z31CG_CompassRadarPingEnemyPlayersiff_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31CG_CompassRadarPingEnemyPlayersiff_60:
	xor eax, eax
	jmp _Z31CG_CompassRadarPingEnemyPlayersiff_100
_Z31CG_CompassRadarPingEnemyPlayersiff_20:
	movaps xmm1, xmm5
	mulss xmm1, [_float_0_50000000]
	jmp _Z31CG_CompassRadarPingEnemyPlayersiff_110
_Z31CG_CompassRadarPingEnemyPlayersiff_80:
	test byte [eax+0xd6], 0x2
	jnz _Z31CG_CompassRadarPingEnemyPlayersiff_40
_Z31CG_CompassRadarPingEnemyPlayersiff_70:
	movaps xmm1, xmm6
	mulss xmm1, [ecx+0x8]
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [ecx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm0
	subss xmm1, xmm3
	ucomiss xmm4, xmm1
	seta dl
	subss xmm0, xmm2
	ucomiss xmm4, xmm0
	seta al
	cmp dl, al
	jz _Z31CG_CompassRadarPingEnemyPlayersiff_40
	mov eax, cgArray
	mov edx, [eax+0x46128]
	cmp edx, [ecx]
	jge _Z31CG_CompassRadarPingEnemyPlayersiff_120
	mov dword [ecx], 0x0
_Z31CG_CompassRadarPingEnemyPlayersiff_120:
	lea eax, [edx-0x5dc]
	cmp [ecx], eax
	jl _Z31CG_CompassRadarPingEnemyPlayersiff_40
	test byte [ecx+0x2c], 0x1
	jnz _Z31CG_CompassRadarPingEnemyPlayersiff_40
	mov eax, [ecx+0x4]
	mov [ecx+0xc], eax
	mov eax, [ecx+0x8]
	mov [ecx+0x10], eax
	mov [ecx+0x20], edx
	jmp _Z31CG_CompassRadarPingEnemyPlayersiff_40
_Z31CG_CompassRadarPingEnemyPlayersiff_30:
	movaps xmm0, xmm5
	mulss xmm0, [_float_0_50000000]
	jmp _Z31CG_CompassRadarPingEnemyPlayersiff_130


;Initialized global or static variables of cg_compassfriendlies_mp:
SECTION .data


;Initialized constant data of cg_compassfriendlies_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_compassfriendlies_mp:
SECTION .bss
SQRT2: resb 0x20
s_compassVehicles: resb 0xe0
s_compassActors: resb 0xc00


;All cstrings:
SECTION .rdata
_cstring_g_compassshowene:		db "g_compassShowEnemies",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_1000_00000000:		dd 0x447a0000	; 1000
_float__0_50000000:		dd 0xbf000000	; -0.5
_float__1000_00000000:		dd 0xc47a0000	; -1000
_float_20_00000000:		dd 0x41a00000	; 20
_float_40_00000000:		dd 0x42200000	; 40
_float_1_40625000:		dd 0x3fb40000	; 1.40625

