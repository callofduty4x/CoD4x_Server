;Imports of cg_view_mp:
	extern cgArray
	extern _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	extern cg_weaponsArray
	extern _Z22CG_UpdateViewModelPosePK6DObj_si
	extern scr_const
	extern _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	extern _Z12AxisToAnglesPA3_KfPf
	extern _Z11FX_RegisterPKc
	extern _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	extern _Z22BG_CalculateViewAnglesP11viewState_tPf
	extern bg_bobMax
	extern _Z23BG_GetVerticalBobFactorPK13playerState_sfff
	extern _Z25BG_GetHorizontalBobFactorPK13playerState_sfff
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z17AddLeanToPositionPfffff
	extern _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	extern clients
	extern floorf
	extern vehDriverViewHeightMax
	extern vehDriverViewFocusRange
	extern vehDebugClient
	extern vehDriverViewDist
	extern _Z23CG_VehSphereCoordsToPosfffPf
	extern _Z11vectoanglesPKfPf
	extern _Z12AnglesToAxisPKfPA3_f
	extern tan
	extern cgsArray
	extern colorBlue
	extern _Z12CG_DebugStarPKfS0_i
	extern _Z20CL_GetMenuBlurRadiusi
	extern cgDC
	extern _Z25CG_VisionSetApplyToRefdefi
	extern _Z29CG_VehLocalClientUsingVehiclei
	extern _Z14BG_GetBobCyclePK13playerState_s
	extern _Z11BG_GetSpeedPK13playerState_si
	extern cg_viewZSmoothingTime
	extern cg_errorDecay
	extern _Z14CG_ShakeCamerai
	extern cg_thirdPersonAngle
	extern cg_thirdPersonRange
	extern atan2
	extern _Z16CG_PerturbCameraP4cg_s
	extern cg_entitiesArray
	extern _Z28CG_VehLocalClientVehicleSloti
	extern _Z15CG_VehGunnerPOViPfS_
	extern _Z17Com_GetClientDObjii
	extern _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	extern _Z7crandomv
	extern _Z15BG_GetWeaponDefj
	extern _Z30CG_VehSeatOriginForLocalClientiPf
	extern _Z9Com_Error11errorParm_tPKcz
	extern cg_thirdPerson
	extern _Z24CG_VehLocalClientDrivingi
	extern _Z21CG_PredictPlayerStatei
	extern _Z23CG_UpdateViewWeaponAnimi
	extern _Z20FX_SetNextUpdateTimeii
	extern _Z17R_GetFarPlaneDistv
	extern _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	extern cg_fov
	extern _Z23BG_IsAimDownSightWeaponj
	extern cg_fovScale
	extern cg_fovMin
	extern _Z12R_ClearScenei
	extern _Z14FX_BeginUpdatei
	extern _Z29CG_SetCollWorldLocalClientNumi
	extern _Z24CG_AddLagometerFrameInfoPK4cg_s
	extern bgs
	extern _Z19CG_ProcessSnapshotsi
	extern _Z21CL_IsServerLoadingMapv
	extern _Z11FX_RewindToii
	extern _Z30CL_SetWaitingOnServerToLoadMapih
	extern _Z19CG_VisionSetsUpdatei
	extern _Z14R_SetLodOriginPK8refdef_s
	extern _Z16FX_FillUpdateCmdiP5FxCmd
	extern _Z27R_UpdateNonDependentEffectsP5FxCmd
	extern _Z21BG_GetShellshockParmsi
	extern _Z18CG_StartShellShockP4cg_sPK18shellshock_parms_tii
	extern _Z19CG_UpdateShellShockiPK18shellshock_parms_tii
	extern _Z19CG_ClearHudGrenadesv
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z25AimTarget_ClearTargetListi
	extern _Z20CG_AddPacketEntitiesi
	extern _Z19Key_IsCatcherActiveii
	extern _Z10CL_SyncGpuPFiyE
	extern _Z8CL_Inputi
	extern _Z23R_UpdateSpotLightEffectP5FxCmd
	extern _Z15SND_SetListeneriiPKfPA3_S_
	extern _Z16CG_AddViewWeaponi
	extern _Z18CG_AddPacketEntityii
	extern playerMaxs
	extern playerMins
	extern cg_dumpAnims
	extern cg_paused
	extern _Z24R_UpdateRemainingEffectsP5FxCmd
	extern _Z29AimTarget_UpdateClientTargetsi
	extern _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff
	extern _Z25CL_IsRenderingSplitScreenv
	extern _Z23R_AddCmdProjectionSet2Dv
	extern cg_drawShellshock
	extern _Z40CG_DrawShellShockSavedScreenBlendBlurrediPK18shellshock_parms_tii
	extern _Z27CG_CompassIncreaseRadarTimei
	extern _Z9CG_Draw2Di
	extern _Z16BG_GetNumWeaponsv
	extern _Z13CG_DrawActivei
	extern _Z17CG_DObjUpdateInfoPK4cg_sP6DObj_sh
	extern _Z26CG_ProcessClientNoteTracksP4cg_si
	extern _Z26CG_CalcEntityLerpPositionsiP9centity_s
	extern _Z16CG_ProcessEntityiP9centity_s
	extern _Z16Com_PrintWarningiPKcz
	extern _Z40CG_DrawShellShockSavedScreenBlendFlashediPK18shellshock_parms_tii
	extern _Z17Key_RemoveCatcherii
	extern _Z15DObjDisplayAnimPK6DObj_sPKc
	extern _Z14Key_AddCatcherii
	extern _Z30AimAssist_GetScreenTargetCounti
	extern vec3_origin
	extern _Z31AimAssist_GetScreenTargetEntityii
	extern _Z21CL_ResetSkeletonCachei
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z32CL_LocalActiveIndexFromClientNumi
	extern _Z28CL_GetLocalClientActiveCountv
	extern wheelTags

;Exports of cg_view_mp:
	global s_testEffect
	global clientViewParamsArray
	global cg_airstrikeKillCamFov
	global cg_airstrikeKillCamDist
	global cg_airstrikeKillCamCloseZDist
	global cg_airstrikeKillCamFarBlurDist
	global cg_airstrikeKillCamFarBlurStart
	global cg_airstrikeKillCamNearBlurEnd
	global cg_airstrikeKillCamNearBlurStart
	global cg_airstrikeKillCamFarBlur
	global cg_airstrikeKillCamNearBlur
	global cg_heliKillCamFov
	global cg_heliKillCamDist
	global cg_heliKillCamZDist
	global cg_heliKillCamFarBlurDist
	global cg_heliKillCamFarBlurStart
	global cg_heliKillCamNearBlurEnd
	global cg_heliKillCamNearBlurStart
	global cg_heliKillCamFarBlur
	global cg_heliKillCamNearBlur
	global cg_airstrikeKillCamCloseXYDist
	global _Z21CG_ApplyViewAnimationi
	global _Z13CG_PlayTestFxi
	global _Z24CG_OffsetFirstPersonViewP4cg_s
	global _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMAXS
	global _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMINS
	global _Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf
	global _ZZ27CalcViewValuesVehicleDriveriE11TEMP_OFFSET
	global _Z27CalcViewValuesVehicleDriveri
	global _ZZ26CG_UpdateHelicopterKillCamiE2up
	global _Z17CG_CalcViewValuesi
	global _Z11CG_InitViewi
	global _Z13CG_GetViewFovi
	global _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii
	global _Z19CG_UpdateViewOffseti
	global _Z20CG_ViewRegisterDvarsv
	global _Z25CG_UpdateAirstrikeKillCami
	global _Z26CG_UpdateHelicopterKillCami
	global _Z27CG_GetLocalClientViewParamsi


SECTION .text


;CG_ApplyViewAnimation(int)
_Z21CG_ApplyViewAnimationi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov ebx, cgArray
	mov eax, [ebx+0x46140]
	sub eax, 0x4
	cmp eax, 0x1
	jbe _Z21CG_ApplyViewAnimationi_10
	test dword [ebx+0x461ec], 0x300
	jnz _Z21CG_ApplyViewAnimationi_10
	mov eax, [ebx+0x46138]
	test eax, eax
	jz _Z21CG_ApplyViewAnimationi_20
_Z21CG_ApplyViewAnimationi_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21CG_ApplyViewAnimationi_20:
	lea eax, [ebx+0x4613c]
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov edx, eax
	test eax, eax
	jle _Z21CG_ApplyViewAnimationi_10
	shl eax, 0x6
	lea esi, [eax+edx*4]
	add esi, cg_weaponsArray
	mov edx, [esi]
	test edx, edx
	jz _Z21CG_ApplyViewAnimationi_10
	mov eax, [ebx+0x492ec]
	mov [ebx+0x50460], eax
	mov eax, [ebx+0x492f0]
	mov [ebx+0x50464], eax
	mov eax, [ebx+0x492f4]
	mov [ebx+0x50468], eax
	mov eax, [ebx+0x492f8]
	mov [ebx+0x5046c], eax
	mov eax, [ebx+0x492fc]
	mov [ebx+0x50470], eax
	mov eax, [ebx+0x49300]
	mov [ebx+0x50474], eax
	mov eax, [ebx+0x49304]
	mov [ebx+0x50478], eax
	mov eax, [ebx+0x49308]
	mov [ebx+0x5047c], eax
	mov eax, [ebx+0x4930c]
	mov [ebx+0x50480], eax
	mov eax, [ebx+0x492e0]
	mov [ebx+0x50484], eax
	mov eax, [ebx+0x492e4]
	mov [ebx+0x50488], eax
	mov eax, [ebx+0x492e8]
	mov [ebx+0x5048c], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call _Z22CG_UpdateViewModelPosePK6DObj_si
	lea eax, [ebx+0x492e0]
	mov [esp+0x10], eax
	lea edi, [ebx+0x492ec]
	mov [esp+0xc], edi
	mov eax, scr_const
	movzx eax, word [eax+0xaa]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	lea eax, [ebx+0xfd234]
	mov [esp], eax
	call _Z24CG_DObjGetWorldTagMatrixPK7cpose_tP6DObj_sjPA3_fPf
	test eax, eax
	jz _Z21CG_ApplyViewAnimationi_10
	lea eax, [ebx+0x4d360]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z12AxisToAnglesPA3_KfPf
	jmp _Z21CG_ApplyViewAnimationi_10


;CG_PlayTestFx(int)
_Z13CG_PlayTestFxi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, eax
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*4]
	lea ebx, [ebx*4+s_testEffect]
	mov [esp], ebx
	call _Z11FX_RegisterPKc
	xor ecx, ecx
	mov [ebp-0x3c], ecx
	mov [ebp-0x38], ecx
	mov edx, 0x3f800000
	mov [ebp-0x34], edx
	mov [ebp-0x30], edx
	mov [ebp-0x2c], ecx
	mov [ebp-0x28], ecx
	mov [ebp-0x24], ecx
	mov [ebp-0x20], edx
	mov [ebp-0x1c], ecx
	mov edx, cgArray
	mov edi, [edx+0x46128]
	lea edx, [ebp-0x3c]
	mov [esp+0x10], edx
	lea edx, [ebx+0x40]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21FX_PlayOrientedEffectiPK11FxEffectDefiPKfPA3_S2_
	mov [ebx+0x4c], edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_OffsetFirstPersonView(cg_s*)
_Z24CG_OffsetFirstPersonViewP4cg_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, eax
	mov eax, [eax+0x24]
	cmp dword [eax+0x10], 0x5
	jz _Z24CG_OffsetFirstPersonViewP4cg_s_10
	test dword [edi+0x461ec], 0x300
	jnz _Z24CG_OffsetFirstPersonViewP4cg_s_10
	lea ecx, [edi+0x4927c]
	lea eax, [edi+0x4613c]
	mov [ebp-0x60], eax
	mov [ebp-0x54], eax
	mov eax, [edi+0x503e0]
	test eax, eax
	jz _Z24CG_OffsetFirstPersonViewP4cg_s_20
	mov edx, [ebp-0x60]
	sub eax, [edx+0x89c]
_Z24CG_OffsetFirstPersonViewP4cg_s_20:
	mov [ebp-0x50], eax
	mov eax, [edi+0x46128]
	mov edx, [ebp-0x54]
	sub eax, [edx+0x89c]
	mov [ebp-0x4c], eax
	mov eax, [edi+0x50400]
	mov [ebp-0x48], eax
	mov eax, [edi+0x50404]
	mov [ebp-0x44], eax
	mov eax, [edi+0x5040c]
	mov [ebp-0x40], eax
	cvtsi2ss xmm0, dword [edi+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x3c], xmm0
	mov eax, [ecx+0x14]
	mov [ebp-0x38], eax
	lea eax, [edi+0x503f4]
	mov [ebp-0x34], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z22BG_CalculateViewAnglesP11viewState_tPf
	lea ebx, [edi+0x4d360]
	movss xmm0, dword [edi+0x4d360]
	addss xmm0, [ebp-0x24]
	movss [edi+0x4d360], xmm0
	movss xmm0, dword [ebx+0x4]
	addss xmm0, [ebp-0x20]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [ebp-0x1c]
	movss [ebx+0x8], xmm0
	lea eax, [edi+0x492e0]
	mov [ebp-0x5c], eax
	movss xmm0, dword [edi+0x492e8]
	addss xmm0, [edi+0x46254]
	movss [edi+0x492e8], xmm0
	mov esi, bg_bobMax
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov eax, [edi+0x5040c]
	mov [esp+0x8], eax
	mov eax, [edi+0x50408]
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call _Z23BG_GetVerticalBobFactorPK13playerState_sfff
	fstp dword [ebp-0x7c]
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, [edi+0x492e8]
	movss [edi+0x492e8], xmm0
	mov eax, [esi]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov eax, [edi+0x5040c]
	mov [esp+0x8], eax
	mov eax, [edi+0x50408]
	mov [esp+0x4], eax
	mov eax, [ebp-0x60]
	mov [esp], eax
	call _Z25BG_GetHorizontalBobFactorPK13playerState_sfff
	fstp dword [ebp-0x7c]
	movss xmm1, dword [ebp-0x7c]
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	movss [ebp-0x78], xmm1
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [ebp-0x78]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, [edi+0x492e0]
	movss [edi+0x492e0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	mov edx, [ebp-0x5c]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [ebp-0x28]
	addss xmm1, [edx+0x8]
	movss [edi+0x492e8], xmm1
	mov eax, [edi+0x46128]
	sub eax, [edi+0x492c0]
	cvtsi2ss xmm0, eax
	ucomiss xmm0, [_float_0_00000000]
	ja _Z24CG_OffsetFirstPersonViewP4cg_s_30
_Z24CG_OffsetFirstPersonViewP4cg_s_50:
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41800000
	mov eax, [edi+0x46198]
	mov [esp+0x8], eax
	mov eax, [edi+0x4d364]
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z17AddLeanToPositionPfffff
	movss xmm0, dword [_float_8_00000000]
	addss xmm0, [edi+0x46160]
	ucomiss xmm0, [edi+0x492e8]
	jbe _Z24CG_OffsetFirstPersonViewP4cg_s_10
	movss [edi+0x492e8], xmm0
_Z24CG_OffsetFirstPersonViewP4cg_s_10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CG_OffsetFirstPersonViewP4cg_s_30:
	movss xmm1, dword [_float_150_00000000]
	ucomiss xmm1, xmm0
	ja _Z24CG_OffsetFirstPersonViewP4cg_s_40
	ucomiss xmm0, [_float_450_00000000]
	jae _Z24CG_OffsetFirstPersonViewP4cg_s_50
	jp _Z24CG_OffsetFirstPersonViewP4cg_s_50
	subss xmm0, xmm1
	divss xmm0, dword [_float__300_00000000]
	addss xmm0, [_float_1_00000000]
	mulss xmm0, [edi+0x492bc]
	addss xmm0, [edi+0x492e8]
	movss [edi+0x492e8], xmm0
	jmp _Z24CG_OffsetFirstPersonViewP4cg_s_50
_Z24CG_OffsetFirstPersonViewP4cg_s_40:
	divss xmm0, xmm1
	mulss xmm0, [edi+0x492bc]
	addss xmm0, [edi+0x492e8]
	movss [edi+0x492e8], xmm0
	jmp _Z24CG_OffsetFirstPersonViewP4cg_s_50


;ThirdPersonViewTrace(cg_s*, float const*, float const*, int, float*)
_Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edi, [ebp+0x18]
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x46218]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov dword [esp+0xc], _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMAXS
	mov dword [esp+0x8], _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMINS
	mov [esp+0x4], esi
	lea eax, [ebp-0x50]
	mov [esp], eax
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x50]
	movss xmm3, dword [_float_1_00000000]
	ucomiss xmm2, xmm3
	jnz _Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf_10
	jp _Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf_10
	mov eax, [ebx]
	mov [edi], eax
	mov eax, [ebx+0x4]
	mov [edi+0x4], eax
	mov eax, [ebx+0x8]
	mov [edi+0x8], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf_10:
	movss xmm1, dword [esi]
	movss xmm0, dword [ebx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm0, dword [ebx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	movss xmm1, dword [esi+0x8]
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm2
	mulss xmm0, [_float_32_00000000]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov edx, [ebp+0x14]
	mov [esp+0x18], edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x46218]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMAXS
	mov dword [esp+0x8], _ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMINS
	mov [esp+0x4], esi
	lea eax, [ebp-0x50]
	mov [esp], eax
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x50]
	movss xmm1, dword [esi]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi], xmm1
	movss xmm1, dword [esi+0x4]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edi+0x4], xmm1
	movss xmm1, dword [esi+0x8]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [edi+0x8], xmm1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CalcViewValuesVehicleDriver(int)
_Z27CalcViewValuesVehicleDriveri:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, cgArray
	movss xmm0, dword [ebx+0x46158]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebx+0x4615c]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebx+0x46160]
	pxor xmm3, xmm3
	addss xmm0, xmm3
	movss [ebp-0x30], xmm0
	addss xmm1, xmm3
	movss [ebp-0x2c], xmm1
	addss xmm2, [_float_55_00000000]
	movss [ebp-0x28], xmm2
	mov esi, clients
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, [esi+0x1b1bd8]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x58], xmm0
	call floorf
	fstp dword [ebp-0x40]
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x40]
	mulss xmm0, [_float_360_00000000]
	mov eax, vehDriverViewHeightMax
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	andps xmm0, [_data16_7fffffff]
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movaps xmm0, xmm2
	divss xmm0, xmm1
	mov eax, vehDriverViewFocusRange
	mov eax, [eax]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	mov eax, vehDebugClient
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z27CalcViewValuesVehicleDriveri_10
	lea edi, [ebp-0x30]
_Z27CalcViewValuesVehicleDriveri_30:
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [esi+0x1b1bd8]
	mov [esp+0x8], eax
	mov eax, [esi+0x1b1bd4]
	mov [esp+0x4], eax
	mov eax, vehDriverViewDist
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z23CG_VehSphereCoordsToPosfffPf
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ebp-0x30]
	movss [ebx+0x492e0], xmm0
	movss xmm0, dword [ebp-0x20]
	addss xmm0, [ebp-0x2c]
	movss [ebx+0x492e4], xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x28]
	movss [ebx+0x492e8], xmm0
	lea eax, [ebx+0x492e0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x811
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf
	movss xmm3, dword [ebp-0x30]
	subss xmm3, [ebx+0x492e0]
	movss [ebp-0x24], xmm3
	movss xmm1, dword [ebp-0x2c]
	subss xmm1, [ebx+0x492e4]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebx+0x492e8]
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
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z27CalcViewValuesVehicleDriveri_20
	movss xmm1, dword [_float_1_00000000]
_Z27CalcViewValuesVehicleDriveri_40:
	mulss xmm3, xmm1
	movss [ebp-0x24], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebp-0x1c], xmm1
	mov esi, cgArray
	lea ebx, [esi+0x4d360]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	lea eax, [esi+0x492ec]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13CG_GetViewFovi
	fstp dword [ebp-0x3c]
	cvtss2sd xmm0, [ebp-0x3c]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x48]
	cvtsd2ss xmm1, [ebp-0x48]
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	mov eax, cgsArray
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movss [esi+0x492d8], xmm0
	movss [esi+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [esi+0x4f39c], xmm1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27CalcViewValuesVehicleDriveri_10:
	mov dword [esp+0x8], 0x0
	mov eax, colorBlue
	mov [esp+0x4], eax
	lea edi, [ebp-0x30]
	mov [esp], edi
	call _Z12CG_DebugStarPKfS0_i
	jmp _Z27CalcViewValuesVehicleDriveri_30
_Z27CalcViewValuesVehicleDriveri_20:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z27CalcViewValuesVehicleDriveri_40
	nop


;CG_CalcViewValues(int)
_Z17CG_CalcViewValuesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, eax
	mov esi, cgArray
	mov dword [esi+0x49320], 0x0
	mov eax, [esi+0x46128]
	mov [esi+0x4931c], eax
	mov [esi+0x4d35c], edi
	mov [esp], edi
	call _Z20CL_GetMenuBlurRadiusi
	fstp dword [ebp-0xec]
	movss xmm1, dword [ebp-0xec]
	lea edx, [edi+edi*4]
	shl edx, 0x7
	mov eax, edx
	sub eax, edi
	lea eax, [edx+eax*8]
	add eax, cgDC
	movss xmm0, dword [eax+0x2c]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [esi+0x49324], xmm0
	mov [esp], edi
	call _Z25CG_VisionSetApplyToRefdefi
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z17CG_CalcViewValuesi_10
	mov dword [esi+0x492c8], 0x0
	mov dword [esi+0x492cc], 0x0
	mov edx, [esi+0x10]
	lea eax, [edx+0x2]
	mov [esi+0x492d0], eax
	mov [esi+0x492d4], eax
	cvtsi2ss xmm0, eax
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	movss [esi+0x492d8], xmm0
	movss [esi+0x492dc], xmm0
	mov eax, [esi+0x46158]
	mov [esi+0x492e0], eax
	mov eax, [esi+0x4615c]
	mov [esi+0x492e4], eax
	movss xmm0, dword [esi+0x46160]
	addss xmm0, [esi+0x46254]
	movss [esi+0x492e8], xmm0
	cmp dword [esi+0xc], 0x6
	jbe _Z17CG_CalcViewValuesi_20
_Z17CG_CalcViewValuesi_220:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_CalcViewValuesi_10:
	mov edx, cgsArray
	mov eax, [edx]
	mov [esi+0x492c8], eax
	mov eax, [edx+0x4]
	mov [esi+0x492cc], eax
	mov eax, [edx+0x8]
	mov [esi+0x492d0], eax
	mov eax, [edx+0xc]
	mov [esi+0x492d4], eax
	mov byte [esi+0x4d358], 0x0
	cmp dword [esi+0x46140], 0x5
	jz _Z17CG_CalcViewValuesi_30
	mov [esp], edi
	call _Z29CG_VehLocalClientUsingVehiclei
	test al, al
	jnz _Z17CG_CalcViewValuesi_40
	mov ecx, [esi+0x5052c]
	test ecx, ecx
	jnz _Z17CG_CalcViewValuesi_50
_Z17CG_CalcViewValuesi_210:
	mov esi, cgArray
	lea ebx, [esi+0x4613c]
	mov [esp], ebx
	call _Z14BG_GetBobCyclePK13playerState_s
	fstp dword [esi+0x50408]
	mov eax, [esi+0x46128]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11BG_GetSpeedPK13playerState_si
	fstp dword [esi+0x5040c]
	mov eax, [esi+0x46158]
	mov [esi+0x492e0], eax
	mov eax, [esi+0x4615c]
	mov [esi+0x492e4], eax
	mov eax, [esi+0x46160]
	mov [esi+0x492e8], eax
	cmp byte [esi+0xfd758], 0x0
	jnz _Z17CG_CalcViewValuesi_60
	mov eax, [esi+0x24]
	mov eax, [eax+0x10]
	test eax, eax
	jnz _Z17CG_CalcViewValuesi_70
_Z17CG_CalcViewValuesi_230:
	mov esi, cgArray
	movss xmm2, dword [esi+0xfd760]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jp _Z17CG_CalcViewValuesi_80
	jz _Z17CG_CalcViewValuesi_90
_Z17CG_CalcViewValuesi_80:
	mov eax, [esi+0x46128]
	mov edx, eax
	sub edx, [esi+0xfd75c]
	js _Z17CG_CalcViewValuesi_90
	mov eax, cg_viewZSmoothingTime
	mov eax, [eax]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	cvttss2si eax, xmm0
	cmp edx, eax
	jl _Z17CG_CalcViewValuesi_100
	movaps xmm1, xmm3
_Z17CG_CalcViewValuesi_350:
	mulss xmm1, xmm2
	movss xmm0, dword [esi+0x492e8]
	subss xmm0, xmm1
	movss [esi+0x492e8], xmm0
_Z17CG_CalcViewValuesi_90:
	mov eax, [esi+0x492e0]
	mov [esi+0x4d36c], eax
	mov eax, [esi+0x492e4]
	mov [esi+0x4d370], eax
	mov eax, [esi+0x492e8]
	mov [esi+0x4d374], eax
	mov eax, [esi+0x46244]
	mov [esi+0x4d360], eax
	mov eax, [esi+0x46248]
	mov [esi+0x4d364], eax
	mov eax, [esi+0x4624c]
	mov [esi+0x4d368], eax
	mov eax, cg_errorDecay
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	ucomiss xmm1, xmm3
	jbe _Z17CG_CalcViewValuesi_110
	mov eax, [esi+0x46128]
	sub eax, [esi+0x492ac]
	cvtsi2ss xmm0, eax
	movaps xmm2, xmm1
	subss xmm2, xmm0
	divss xmm2, xmm1
	ucomiss xmm2, xmm3
	jbe _Z17CG_CalcViewValuesi_120
	ucomiss xmm2, [_float_1_00000000]
	jb _Z17CG_CalcViewValuesi_130
_Z17CG_CalcViewValuesi_120:
	mov dword [esi+0x492ac], 0x0
_Z17CG_CalcViewValuesi_110:
	test dword [esi+0x461ec], 0x300
	jnz _Z17CG_CalcViewValuesi_140
_Z17CG_CalcViewValuesi_290:
	mov eax, [esi+0x46138]
	test eax, eax
	jz _Z17CG_CalcViewValuesi_150
_Z17CG_CalcViewValuesi_260:
	mov [esp], edi
	call _Z14CG_ShakeCamerai
	lea eax, [esi+0x492ec]
	mov [esp+0x4], eax
	lea eax, [esi+0x4d360]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, edi
	call _Z21CG_ApplyViewAnimationi
	mov ebx, [esi+0x46138]
	test ebx, ebx
	jz _Z17CG_CalcViewValuesi_160
	movss xmm0, dword [esi+0x492e8]
	addss xmm0, [esi+0x46254]
	movss [esi+0x492e8], xmm0
	mov eax, [esi+0x4d360]
	mov [ebp-0x54], eax
	mov eax, [esi+0x4d364]
	mov [ebp-0x50], eax
	mov eax, [esi+0x4d368]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x4d360]
	mov [ebp-0x60], eax
	mov eax, [esi+0x4d364]
	mov [ebp-0x5c], eax
	mov eax, [esi+0x4d368]
	mov [ebp-0x58], eax
	cmp dword [esi+0x46140], 0x6
	jg _Z17CG_CalcViewValuesi_170
_Z17CG_CalcViewValuesi_300:
	movss xmm2, dword [ebp-0x60]
	movss xmm0, dword [_float_45_00000000]
	cmpss xmm0, xmm2, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_45_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x60], xmm0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm0, dword [esi+0x492e0]
	movss xmm3, dword [_float_512_00000000]
	movss xmm2, dword [ebp-0x24]
	mulss xmm2, xmm3
	addss xmm2, xmm0
	movss xmm4, dword [ebp-0x20]
	mulss xmm4, xmm3
	addss xmm4, [esi+0x492e4]
	mulss xmm3, [ebp-0x1c]
	addss xmm3, [esi+0x492e8]
	movss [ebp-0x48], xmm0
	mov eax, [esi+0x492e4]
	mov [ebp-0x44], eax
	movss xmm0, dword [_float_8_00000000]
	addss xmm0, [esi+0x492e8]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	mov eax, cg_thirdPersonAngle
	mov eax, [eax]
	movss xmm0, dword [ebp-0x50]
	subss xmm0, [eax+0xc]
	movss [ebp-0x50], xmm0
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x54]
	mov [esp], ebx
	movss [ebp-0xc8], xmm2
	movss [ebp-0xd8], xmm3
	movss [ebp-0xe8], xmm4
	call _Z12AngleVectorsPKfPfS1_S1_
	mov eax, cg_thirdPersonRange
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x24]
	addss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x20]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	mulss xmm1, [ebp-0x1c]
	addss xmm1, [ebp-0x40]
	movss [ebp-0x40], xmm1
	lea edx, [esi+0x492e0]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x811
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z20ThirdPersonViewTraceP4cg_sPKfS2_iPf
	movss xmm2, dword [ebp-0xc8]
	subss xmm2, [esi+0x492e0]
	movss xmm4, dword [ebp-0xe8]
	subss xmm4, [esi+0x492e4]
	movss xmm3, dword [ebp-0xd8]
	subss xmm3, [esi+0x492e8]
	mulss xmm2, xmm2
	mulss xmm4, xmm4
	addss xmm2, xmm4
	sqrtss xmm2, xmm2
	ucomiss xmm2, [_float_1_00000000]
	jb _Z17CG_CalcViewValuesi_180
_Z17CG_CalcViewValuesi_320:
	cvtss2sd xmm2, xmm2
_Z17CG_CalcViewValuesi_330:
	movsd [esp+0x8], xmm2
	cvtss2sd xmm3, xmm3
	movsd [esp], xmm3
	call atan2
	fstp qword [ebp-0xa8]
	cvtsd2ss xmm0, [ebp-0xa8]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double__57_29577951]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x54], xmm0
	mov eax, cgArray
	add eax, 0x492ec
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
_Z17CG_CalcViewValuesi_160:
	mov ebx, cgArray
	mov [esp], ebx
	call _Z16CG_PerturbCameraP4cg_s
	mov [esp], edi
	call _Z13CG_GetViewFovi
	fstp dword [ebp-0x6c]
	cvtss2sd xmm0, [ebp-0x6c]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0xb0]
	cvtsd2ss xmm1, [ebp-0xb0]
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	mov eax, cgsArray
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movss [ebx+0x492d8], xmm0
	movss [ebx+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [ebx+0x4f39c], xmm1
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_CalcViewValuesi_20:
	mov eax, [esi+0xc]
	jmp dword [eax*4+_Z17CG_CalcViewValuesi_jumptab_0]
_Z17CG_CalcViewValuesi_30:
	mov eax, [esi+0x46158]
	mov [esi+0x492e0], eax
	mov eax, [esi+0x4615c]
	mov [esi+0x492e4], eax
	mov eax, [esi+0x46160]
	mov [esi+0x492e8], eax
	mov eax, [esi+0x46244]
	mov [esi+0x4d360], eax
	mov eax, [esi+0x46248]
	mov [esi+0x4d364], eax
	mov eax, [esi+0x4624c]
	mov [esi+0x4d368], eax
	lea eax, [esi+0x492ec]
	mov [esp+0x4], eax
	lea eax, [esi+0x4d360]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov [esp], edi
	call _Z13CG_GetViewFovi
	fstp dword [ebp-0x88]
	cvtss2sd xmm0, [ebp-0x88]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x90]
	cvtsd2ss xmm1, [ebp-0x90]
_Z17CG_CalcViewValuesi_340:
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	movaps xmm0, xmm2
	mov eax, cgsArray
	mulss xmm0, [eax+0x10]
	movss [esi+0x492d8], xmm0
	movss [esi+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [esi+0x4f39c], xmm1
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CG_CalcViewValuesi_50:
	mov edx, [esi+0x469dc]
	cmp edx, 0x3ff
	jz _Z17CG_CalcViewValuesi_190
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea eax, [edx+eax]
	add eax, cg_entitiesArray
	cmp byte [eax+0x1c0], 0x0
	jnz _Z17CG_CalcViewValuesi_200
_Z17CG_CalcViewValuesi_190:
	test ecx, ecx
	jz _Z17CG_CalcViewValuesi_210
	mov eax, cgArray
	mov eax, [eax+0x469dc]
	cmp eax, 0x3ff
	jz _Z17CG_CalcViewValuesi_210
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jz _Z17CG_CalcViewValuesi_210
	mov [esp], edi
	call _Z25CG_UpdateAirstrikeKillCami
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_70:
	cmp eax, 0x2
	jz _Z17CG_CalcViewValuesi_230
	cmp eax, 0x3
	jz _Z17CG_CalcViewValuesi_230
_Z17CG_CalcViewValuesi_60:
	pxor xmm3, xmm3
	jmp _Z17CG_CalcViewValuesi_90
_Z17CG_CalcViewValuesi_40:
	mov [esp], edi
	call _Z28CG_VehLocalClientVehicleSloti
	test eax, eax
	jz _Z17CG_CalcViewValuesi_240
	sub eax, 0x1
	jz _Z17CG_CalcViewValuesi_250
	lea ebx, [esi+0x4d360]
	mov [esp+0x8], ebx
	lea eax, [esi+0x492e0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z15CG_VehGunnerPOViPfS_
	lea eax, [esi+0x492ec]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, edi
	call _Z21CG_ApplyViewAnimationi
	mov [esp], esi
	call _Z16CG_PerturbCameraP4cg_s
	mov [esp], edi
	call _Z13CG_GetViewFovi
	fstp dword [ebp-0x80]
	cvtss2sd xmm0, [ebp-0x80]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0xa0]
	cvtsd2ss xmm1, [ebp-0xa0]
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	movaps xmm0, xmm2
	mov edx, cgsArray
	mulss xmm0, [edx+0x10]
	movss [esi+0x492d8], xmm0
	movss [esi+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [esi+0x4f39c], xmm1
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_150:
	mov eax, esi
	call _Z24CG_OffsetFirstPersonViewP4cg_s
	jmp _Z17CG_CalcViewValuesi_260
_Z17CG_CalcViewValuesi_140:
	mov eax, [esi+0x466d8]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	lea ebx, [eax+edx]
	add ebx, cg_entitiesArray
	mov [esp+0x4], edi
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z17CG_CalcViewValuesi_270
	lea eax, [esi+0x492e0]
	mov [esp+0xc], eax
	mov eax, scr_const
	movzx eax, word [eax+0xa8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jz _Z17CG_CalcViewValuesi_280
_Z17CG_CalcViewValuesi_360:
	cmp dword [esi+0x466d4], 0x2
	jnz _Z17CG_CalcViewValuesi_270
	mov eax, [esi+0x46138]
	test eax, eax
	jnz _Z17CG_CalcViewValuesi_270
	movss xmm0, dword [esi+0x4d360]
	movss [ebp-0x7c], xmm0
	call _Z7crandomv
	fstp dword [ebp-0x78]
	mov eax, [ebx+0x190]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [eax+0x7f0]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [ebp-0x7c]
	addss xmm0, [ebp-0x78]
	movss [esi+0x4d360], xmm0
	movss xmm0, dword [esi+0x4d364]
	movss [ebp-0x74], xmm0
	call _Z7crandomv
	fstp dword [ebp-0x70]
	mov eax, [ebx+0x190]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, [eax+0x7ec]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x74]
	addss xmm0, [ebp-0x70]
	movss [esi+0x4d364], xmm0
	mov esi, cgArray
	jmp _Z17CG_CalcViewValuesi_290
_Z17CG_CalcViewValuesi_270:
	mov esi, cgArray
	jmp _Z17CG_CalcViewValuesi_290
_Z17CG_CalcViewValuesi_240:
	mov [esp], edi
	call _Z27CalcViewValuesVehicleDriveri
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_170:
	cvtsi2ss xmm0, dword [esi+0x46288]
	movss [ebp-0x5c], xmm0
	cvtsi2ss xmm0, dword [esi+0x46288]
	movss [ebp-0x50], xmm0
	jmp _Z17CG_CalcViewValuesi_300
_Z17CG_CalcViewValuesi_200:
	cmp byte [eax+0x2], 0xc
	jnz _Z17CG_CalcViewValuesi_190
	mov [esp], edi
	call _Z26CG_UpdateHelicopterKillCami
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_130:
	jp _Z17CG_CalcViewValuesi_120
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x492b0]
	addss xmm0, [esi+0x492e0]
	movss [esi+0x492e0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x492b4]
	addss xmm0, [esi+0x492e4]
	movss [esi+0x492e4], xmm0
	mulss xmm2, [esi+0x492b8]
	addss xmm2, [esi+0x492e8]
	movss [esi+0x492e8], xmm2
	jmp _Z17CG_CalcViewValuesi_110
_Z17CG_CalcViewValuesi_410:
	mov eax, cgArray
	xor edx, edx
	mov [eax+0x492ec], edx
	mov [eax+0x492f0], edx
	mov ecx, 0x3f800000
	mov [eax+0x492f4], ecx
	mov [eax+0x492f8], edx
	mov [eax+0x492fc], ecx
	mov [eax+0x49300], edx
	mov dword [eax+0x49304], 0xbf800000
	mov [eax+0x49308], edx
	mov [eax+0x4930c], edx
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_380:
	mov eax, cgArray
	mov ecx, 0xbf800000
	mov [eax+0x492ec], ecx
	xor edx, edx
	mov [eax+0x492f0], edx
	mov [eax+0x492f4], edx
	mov [eax+0x492f8], edx
	mov [eax+0x492fc], ecx
	mov [eax+0x49300], edx
	mov [eax+0x49304], edx
	mov [eax+0x49308], edx
	mov dword [eax+0x4930c], 0x3f800000
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_370:
	mov eax, cgArray
	mov ecx, 0x3f800000
	mov [eax+0x492ec], ecx
	xor edx, edx
	mov [eax+0x492f0], edx
	mov [eax+0x492f4], edx
	mov [eax+0x492f8], edx
	mov [eax+0x492fc], ecx
	mov [eax+0x49300], edx
	mov [eax+0x49304], edx
	mov [eax+0x49308], edx
	mov [eax+0x4930c], ecx
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_420:
	mov eax, cgArray
	xor edx, edx
	mov [eax+0x492ec], edx
	mov [eax+0x492f0], edx
	mov dword [eax+0x492f4], 0xbf800000
	mov [eax+0x492f8], edx
	mov ecx, 0x3f800000
	mov [eax+0x492fc], ecx
	mov [eax+0x49300], edx
	mov [eax+0x49304], ecx
	mov [eax+0x49308], edx
	mov [eax+0x4930c], edx
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_400:
	mov eax, cgArray
	xor edx, edx
	mov [eax+0x492ec], edx
	mov dword [eax+0x492f0], 0xbf800000
	mov [eax+0x492f4], edx
	mov ecx, 0x3f800000
	mov [eax+0x492f8], ecx
_Z17CG_CalcViewValuesi_310:
	mov [eax+0x492fc], edx
	mov [eax+0x49300], edx
	mov [eax+0x49304], edx
	mov [eax+0x49308], edx
	mov [eax+0x4930c], ecx
	jmp _Z17CG_CalcViewValuesi_220
_Z17CG_CalcViewValuesi_390:
	mov eax, cgArray
	xor edx, edx
	mov [eax+0x492ec], edx
	mov ecx, 0x3f800000
	mov [eax+0x492f0], ecx
	mov [eax+0x492f4], edx
	mov dword [eax+0x492f8], 0xbf800000
	jmp _Z17CG_CalcViewValuesi_310
_Z17CG_CalcViewValuesi_180:
	jp _Z17CG_CalcViewValuesi_320
	movsd xmm2, qword [_double_1_00000000]
	jmp _Z17CG_CalcViewValuesi_330
_Z17CG_CalcViewValuesi_250:
	lea eax, [esi+0x46158]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z30CG_VehSeatOriginForLocalClientiPf
	mov eax, [esi+0x46158]
	mov [esi+0x492e0], eax
	mov eax, [esi+0x4615c]
	mov [esi+0x492e4], eax
	mov eax, [esi+0x46160]
	mov [esi+0x492e8], eax
	mov eax, [esi+0x46244]
	mov [esi+0x4d360], eax
	mov eax, [esi+0x46248]
	mov [esi+0x4d364], eax
	mov eax, [esi+0x4624c]
	mov [esi+0x4d368], eax
	mov eax, esi
	call _Z24CG_OffsetFirstPersonViewP4cg_s
	lea eax, [esi+0x492ec]
	mov [esp+0x4], eax
	lea eax, [esi+0x4d360]
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, edi
	call _Z21CG_ApplyViewAnimationi
	mov [esp], esi
	call _Z16CG_PerturbCameraP4cg_s
	mov [esp], edi
	call _Z13CG_GetViewFovi
	fstp dword [ebp-0x84]
	cvtss2sd xmm0, [ebp-0x84]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x98]
	cvtsd2ss xmm1, [ebp-0x98]
	jmp _Z17CG_CalcViewValuesi_340
_Z17CG_CalcViewValuesi_100:
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	jmp _Z17CG_CalcViewValuesi_350
_Z17CG_CalcViewValuesi_280:
	mov dword [esp+0x4], _cstring_turret_has_no_bo
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17CG_CalcViewValuesi_360
	
	
_Z17CG_CalcViewValuesi_jumptab_0:
	dd _Z17CG_CalcViewValuesi_220
	dd _Z17CG_CalcViewValuesi_370
	dd _Z17CG_CalcViewValuesi_380
	dd _Z17CG_CalcViewValuesi_390
	dd _Z17CG_CalcViewValuesi_400
	dd _Z17CG_CalcViewValuesi_410
	dd _Z17CG_CalcViewValuesi_420


;CG_InitView(int)
_Z11CG_InitViewi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, cg_thirdPerson
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11CG_InitViewi_10
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	cmp dword [eax+0x10], 0x6
	jle _Z11CG_InitViewi_20
_Z11CG_InitViewi_60:
	mov eax, 0x1
_Z11CG_InitViewi_70:
	mov [ebx+0x46138], eax
	mov [esp], esi
	call _Z24CG_VehLocalClientDrivingi
	test al, al
	jz _Z11CG_InitViewi_30
	mov dword [ebx+0x46138], 0x1
_Z11CG_InitViewi_30:
	mov eax, [ebx+0x5052c]
	test eax, eax
	jz _Z11CG_InitViewi_40
	mov eax, [ebx+0x469dc]
	cmp eax, 0x3ff
	jz _Z11CG_InitViewi_40
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jnz _Z11CG_InitViewi_50
_Z11CG_InitViewi_40:
	mov [esp], esi
	call _Z19CG_UpdateViewOffseti
	mov [esp], esi
	call _Z21CG_PredictPlayerStatei
	mov [esp], esi
	call _Z23CG_UpdateViewWeaponAnimi
	mov eax, esi
	call _Z17CG_CalcViewValuesi
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20FX_SetNextUpdateTimeii
	call _Z17R_GetFarPlaneDistv
	fstp dword [esp+0x8]
	add ebx, 0x492c8
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z11CG_InitViewi_10:
	mov ebx, cgArray
	jmp _Z11CG_InitViewi_60
_Z11CG_InitViewi_20:
	xor eax, eax
	jmp _Z11CG_InitViewi_70
_Z11CG_InitViewi_50:
	mov eax, cgArray
	mov dword [eax+0x46138], 0x1
	jmp _Z11CG_InitViewi_40
	add [eax], al


;CG_GetViewFov(int)
_Z13CG_GetViewFovi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, cgArray
	lea eax, [esi+0x4613c]
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov ebx, eax
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, eax
	cmp dword [esi+0x46140], 0x5
	jz _Z13CG_GetViewFovi_10
	mov eax, cg_fov
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	mov [esp], ebx
	movss [ebp-0x28], xmm2
	call _Z23BG_IsAimDownSightWeaponj
	test eax, eax
	movss xmm2, dword [ebp-0x28]
	jnz _Z13CG_GetViewFovi_20
	mov eax, esi
	pxor xmm5, xmm5
_Z13CG_GetViewFovi_80:
	test dword [eax+0x461ec], 0x300
	jz _Z13CG_GetViewFovi_30
	movss xmm2, dword [_float_55_00000000]
_Z13CG_GetViewFovi_30:
	mov eax, cg_fovScale
	mov eax, [eax]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0xc]
	mov eax, cg_fovMin
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	cmpss xmm5, xmm0, 0x6
	movaps xmm0, xmm5
	andps xmm1, xmm5
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	fld dword [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13CG_GetViewFovi_20:
	movss xmm1, dword [esi+0x46230]
	movss xmm3, dword [edi+0x424]
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	jz _Z13CG_GetViewFovi_40
_Z13CG_GetViewFovi_90:
	pxor xmm5, xmm5
	ucomiss xmm1, xmm5
	jp _Z13CG_GetViewFovi_50
	jz _Z13CG_GetViewFovi_60
_Z13CG_GetViewFovi_50:
	mov eax, cgArray
	mov edx, [eax+0x49280]
	test edx, edx
	jz _Z13CG_GetViewFovi_70
	movss xmm4, dword [edi+0x428]
_Z13CG_GetViewFovi_100:
	subss xmm0, xmm4
	subss xmm1, xmm0
	ucomiss xmm1, xmm5
	jbe _Z13CG_GetViewFovi_80
	divss xmm1, xmm4
	ucomiss xmm1, xmm5
	jbe _Z13CG_GetViewFovi_80
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm0, xmm1
	subss xmm2, xmm0
	jmp _Z13CG_GetViewFovi_80
_Z13CG_GetViewFovi_10:
	movss xmm2, dword [_float_90_00000000]
	mov eax, esi
	pxor xmm5, xmm5
	jmp _Z13CG_GetViewFovi_80
_Z13CG_GetViewFovi_40:
	jp _Z13CG_GetViewFovi_90
	movaps xmm2, xmm3
	mov eax, esi
	pxor xmm5, xmm5
	jmp _Z13CG_GetViewFovi_80
_Z13CG_GetViewFovi_60:
	mov eax, cgArray
	jmp _Z13CG_GetViewFovi_80
_Z13CG_GetViewFovi_70:
	movss xmm4, dword [edi+0x42c]
	jmp _Z13CG_GetViewFovi_100
	nop


;CG_DrawActiveFrame(int, int, DemoType, CubemapShot, int, int)
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12R_ClearScenei
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z14FX_BeginUpdatei
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29CG_SetCollWorldLocalClientNumi
	mov edi, cgArray
	mov edx, [edi+0x46128]
	mov [edi+0x4612c], edx
	mov [edi+0x46128], ebx
	mov [edi+0xe9f0c], ebx
	mov eax, [ebp+0x10]
	mov [edi+0x8], eax
	mov eax, [ebp+0x14]
	mov [edi+0xc], eax
	mov eax, [ebp+0x18]
	mov [edi+0x10], eax
	mov eax, [ebp+0x1c]
	mov [edi+0x14], eax
	mov eax, ebx
	sub eax, edx
	mov [edi+0x46124], eax
	test eax, eax
	js _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_10
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_60:
	mov [esp], edi
	call _Z24CG_AddLagometerFrameInfoPK4cg_s
	mov eax, [edi+0x46124]
	mov [edi+0xe9f14], eax
	cmp byte [edi+0x4f3a0], 0x0
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_20
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_50:
	xor eax, eax
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_320:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_20:
	mov ebx, bgs
	lea eax, [edi+0x50530]
	mov [ebx], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_ProcessSnapshotsi
	mov eax, [edi+0x14]
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_30
	mov eax, [edi+0x24]
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_30
	test byte [eax], 0x2
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_30
	call _Z21CL_IsServerLoadingMapv
	test al, al
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_40
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_30:
	mov dword [ebx], 0x0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_50
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11FX_RewindToii
	mov dword [edi+0x46124], 0x0
	mov eax, [edi+0x46128]
	mov [edi+0x4612c], eax
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_60
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_40:
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z30CL_SetWaitingOnServerToLoadMapih
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19CG_VisionSetsUpdatei
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19CG_UpdateViewOffseti
	mov eax, [edi+0x49310]
	mov [edi+0x492e0], eax
	mov eax, [edi+0x49314]
	mov [edi+0x492e4], eax
	mov eax, [edi+0x49318]
	mov [edi+0x492e8], eax
	mov eax, [edi+0x46128]
	mov [edi+0x4931c], eax
	lea eax, [edi+0x492c8]
	mov [esp], eax
	call _Z14R_SetLodOriginPK8refdef_s
	mov eax, [edi+0x46128]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z20FX_SetNextUpdateTimeii
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16FX_FillUpdateCmdiP5FxCmd
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z27R_UpdateNonDependentEffectsP5FxCmd
	mov eax, [edi+0x20]
	mov edx, [eax+0x638]
	test edx, edx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_70
	mov ebx, [edi+0x504f4]
	mov esi, [edi+0x504f0]
	mov dword [esp], 0x0
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_340:
	call _Z21BG_GetShellshockParmsi
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z18CG_StartShellShockP4cg_sPK18shellshock_parms_tii
	mov ebx, cgArray
	mov eax, [ebx+0x504d8]
	mov [esp+0xc], eax
	mov eax, [ebx+0x504d4]
	mov [esp+0x8], eax
	mov eax, [ebx+0x504d0]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19CG_UpdateShellShockiPK18shellshock_parms_tii
	mov eax, cg_thirdPerson
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_80
	mov eax, [ebx+0x24]
	cmp dword [eax+0x10], 0x6
	jg _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_80
	xor eax, eax
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_330:
	mov ebx, cgArray
	mov [ebx+0x46138], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z24CG_VehLocalClientDrivingi
	test al, al
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_90
	mov dword [ebx+0x46138], 0x1
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_90:
	mov edi, [ebx+0x5052c]
	test edi, edi
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_100
	mov eax, [ebx+0x469dc]
	cmp eax, 0x3ff
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_100
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_110
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_100:
	call _Z19CG_ClearHudGrenadesv
	mov dword [esp+0x4], _cstring_update_ent_info
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov edx, cgArray
	mov eax, [edx+0x24]
	mov esi, [eax+0x2f70]
	test esi, esi
	jg _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_120
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_570:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z25AimTarget_ClearTargetListi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20CG_AddPacketEntitiesi
	test eax, eax
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_130
	mov dword [ebp-0x7c], 0x3ff
	mov edx, cgArray
	mov [ebp-0x84], edx
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_350:
	mov ebx, [edx+0x466f0]
	test ebx, ebx
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_140
	test byte [edx+0x46150], 0x2
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_150
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_140:
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Key_IsCatcherActiveii
	test al, al
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_160
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_610:
	mov ecx, cgArray
	mov [ebp-0x84], ecx
	mov eax, 0x3f000000
	mov [ecx+0x5050c], eax
	mov [ecx+0x50510], eax
	mov edx, [ebp-0x84]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_630:
	mov eax, [edx+0x24]
	test byte [eax+0x20], 0x4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_170
	xor eax, eax
	mov [edx+0x50410], eax
	mov [edx+0x50414], eax
	mov [edx+0x50418], eax
	mov [edx+0x5041c], eax
	mov [edx+0x50420], eax
	mov [edx+0x50424], eax
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_390:
	mov dword [esp], 0x0
	call _Z10CL_SyncGpuPFiyE
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z8CL_Inputi
	mov dword [esp+0x4], _cstring_player_state
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z21CG_PredictPlayerStatei
	mov dword [esp+0x4], _cstring_view_anim
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23CG_UpdateViewWeaponAnimi
	mov dword [esp+0x4], _cstring_view_values
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebp+0x8]
	call _Z17CG_CalcViewValuesi
	mov dword [esp+0x4], _cstring_player_entity
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	call _Z17R_GetFarPlaneDistv
	fstp dword [esp+0x8]
	mov ebx, cgArray
	lea eax, [ebx+0x492c8]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22FX_SetNextUpdateCameraiPK8refdef_sf
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23R_UpdateSpotLightEffectP5FxCmd
	lea eax, [ebx+0x492ec]
	mov [esp+0xc], eax
	lea eax, [ebx+0x492e0]
	mov [esp+0x8], eax
	mov eax, [ebx+0x24]
	mov eax, [eax+0xe8]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z15SND_SetListeneriiPKfPA3_S_
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z16CG_AddViewWeaponi
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea edx, [eax*4+s_testEffect]
	mov eax, [edx+0x50]
	test eax, eax
	jle _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_180
	add eax, [edx+0x4c]
	cmp [ebx+0x46128], eax
	jg _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_190
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_180:
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	test byte [eax+0x20], 0x6
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_200
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_380:
	cmp dword [ebp-0x7c], 0x3ff
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_210
	mov edx, [ebp-0x7c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18CG_AddPacketEntityii
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_210:
	mov ebx, cgArray
	mov eax, [ebx+0x46158]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4615c]
	mov [ebp-0x2c], eax
	movss xmm0, dword [_float_1024_00000000]
	addss xmm0, [ebx+0x46160]
	movss [ebp-0x28], xmm0
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x3ff
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov eax, playerMaxs
	mov [esp+0xc], eax
	mov eax, playerMins
	mov [esp+0x8], eax
	lea eax, [ebx+0x46158]
	mov [esp+0x4], eax
	lea edi, [ebp-0x5c]
	mov [esp], edi
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm2, dword [ebp-0x5c]
	ucomiss xmm2, [_float_1_00000000]
	jb _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_220
	mov dword [ebx+0x492c4], 0x7f7fffff
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_640:
	mov edx, [ebp+0x8]
	test edx, edx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_230
	mov eax, cg_dumpAnims
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	js _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_230
	mov eax, cg_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_240
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_230:
	mov dword [esp+0x4], _cstring_remaining_fx
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z24R_UpdateRemainingEffectsP5FxCmd
	mov dword [esp+0x4], _cstring_aim_assist
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29AimTarget_UpdateClientTargetsi
	mov ebx, cgArray
	mov eax, [ebx+0x492dc]
	mov [esp+0x10], eax
	mov eax, [ebx+0x492d8]
	mov [esp+0xc], eax
	lea eax, [ebx+0x4d360]
	mov [esp+0x8], eax
	lea eax, [ebx+0x492e0]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff
	mov esi, [ebx+0x20]
	add esi, 0xc
	mov eax, [ebx+0x5052c]
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_250
	mov eax, [ebx+0x469dc]
	cmp eax, 0x3ff
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_250
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_260
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_250:
	call _Z25CL_IsRenderingSplitScreenv
	test al, al
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x638]
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	ucomiss xmm0, [esi+0x63c]
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	ucomiss xmm0, [esi+0x640]
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	ucomiss xmm0, [esi+0x644]
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270
	mov edx, cgArray
	ucomiss xmm0, [edx+0x46230]
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_280
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_280
	cmp dword [edx+0x46140], 0x6
	jg _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_280
	movss [edx+0x49330], xmm0
	movss [edx+0x49334], xmm0
	mov eax, 0x459c4000
	mov [edx+0x49338], eax
	mov [edx+0x4933c], eax
	mov dword [edx+0x49340], 0x40c00000
	movss [edx+0x49344], xmm0
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_260:
	mov dword [esp+0x4], _cstring_draw_2d
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	call _Z23R_AddCmdProjectionSet2Dv
	mov eax, cg_drawShellshock
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_290
	mov ecx, cgArray
	mov edx, [ecx+0x504d0]
	mov eax, [edx+0x10]
	test eax, eax
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_300
	mov eax, [ecx+0x504d8]
	mov [esp+0xc], eax
	mov eax, [ecx+0x504d4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z40CG_DrawShellShockSavedScreenBlendBlurrediPK18shellshock_parms_tii
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_290:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z27CG_CompassIncreaseRadarTimei
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9CG_Draw2Di
	mov esi, cgArray
	mov ebx, [esi+0x5036c]
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_310
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_590:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13CG_DrawActivei
	mov eax, bgs
	mov dword [eax], 0x0
	mov eax, 0x1
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_320
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_270:
	mov edx, cgArray
	mov eax, [esi+0x638]
	mov [edx+0x49330], eax
	mov eax, [esi+0x63c]
	mov [edx+0x49334], eax
	mov eax, [esi+0x640]
	mov [edx+0x49338], eax
	mov eax, [esi+0x644]
	mov [edx+0x4933c], eax
	mov eax, [esi+0x648]
	mov [edx+0x49340], eax
	mov eax, [esi+0x64c]
	mov [edx+0x49344], eax
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_260
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_80:
	mov eax, 0x1
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_330
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_70:
	mov ebx, [eax+0x640]
	mov esi, [eax+0x63c]
	mov [esp], edx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_340
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_130:
	mov ecx, cgArray
	mov [ebp-0x84], ecx
	mov eax, [ecx+0x466d8]
	mov [ebp-0x7c], eax
	mov edx, ecx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_350
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_200:
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, [eax+0xe8]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_360
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17CG_DObjUpdateInfoPK4cg_sP6DObj_sh
	mov eax, [ebx+0x24]
	mov eax, [eax+0xe8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z26CG_ProcessClientNoteTracksP4cg_si
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_360:
	lea eax, [ebx+0x490a0]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z26CG_CalcEntityLerpPositionsiP9centity_s
	mov [ebp-0x84], ebx
	mov eax, ebx
	lea edx, [ebx+0x6]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_370:
	mov byte [eax+0x490e4], 0xfe
	add eax, 0x1
	cmp edx, eax
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_370
	mov eax, [ebp-0x84]
	add eax, 0x490a0
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16CG_ProcessEntityiP9centity_s
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_380
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_170:
	mov eax, edx
	add eax, 0x4613c
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [ebp-0x70], eax
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x74], eax
	mov ecx, [ebp-0x84]
	mov edi, [ecx+0x46124]
	test edi, edi
	jle _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_390
	mov ebx, edi
	mov eax, cgArray
	mov [ebp-0x84], eax
	pxor xmm4, xmm4
	lea edx, [edi-0x1]
	mov [ebp-0x80], edx
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_440:
	mov eax, 0x5
	cmp ebx, 0x6
	cmovl eax, ebx
	cvtsi2ss xmm3, eax
	mulss xmm3, [_float_0_00100000]
	mov ecx, [ebp-0x70]
	test ecx, ecx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_400
	mov edx, [ebp-0x84]
	movss xmm5, dword [_data16_7fffffff]
	mov esi, cgArray
	add esi, 0xc
	movss xmm7, dword [_float_10_00000000]
	lea eax, [edx+0x5041c]
	movss xmm6, dword [_float_2400_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_430:
	movss xmm0, dword [eax-0xc]
	ucomiss xmm0, xmm4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_410
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_410
	movss xmm1, dword [eax]
	ucomiss xmm1, xmm4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_420
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_420
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_480:
	add edx, 0x4
	add eax, 0x4
	cmp edx, esi
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_430
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1080:
	sub ebx, 0x5
	mov edx, 0xcccccccd
	mov eax, [ebp-0x80]
	mul edx
	shr edx, 0x2
	lea edx, [edx+edx*4]
	mov eax, edi
	sub eax, edx
	sub eax, 0x5
	cmp eax, ebx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_440
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_390
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_410:
	movss xmm1, dword [eax]
	ucomiss xmm1, xmm4
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_420
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_420
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_500:
	movaps xmm2, xmm3
	mulss xmm2, [eax-0xc]
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	ucomiss xmm4, xmm0
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_450
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_530:
	addss xmm2, xmm1
	mulss xmm1, xmm2
	ucomiss xmm1, xmm4
	jb _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_460
	movss [eax], xmm2
	ucomiss xmm2, xmm4
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_470
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_470
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_520:
	mov dword [eax-0xc], 0x0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_480
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_420:
	ucomiss xmm1, xmm4
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_490
	movss xmm2, dword [_float__1_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_540:
	mulss xmm2, xmm6
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [eax-0xc], xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_500
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_470:
	movaps xmm0, xmm2
	andps xmm0, xmm5
	ucomiss xmm0, xmm7
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_480
	ucomiss xmm2, xmm4
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_510
	movss [ebp-0xac], xmm7
	mov ecx, [ebp-0xac]
	mov [eax], ecx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_520
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_460:
	mov dword [eax], 0x0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_520
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_450:
	mulss xmm2, [_float_0_06000000]
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_530
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_490:
	movss xmm2, dword [_float_1_00000000]
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_540
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_120:
	mov dword [ebp-0x78], 0x0
	mov ebx, edx
	xor edi, edi
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_560:
	mov esi, [edi+eax+0x2f78]
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_550
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17CG_DObjUpdateInfoPK4cg_sP6DObj_sh
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z26CG_ProcessClientNoteTracksP4cg_si
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_550:
	add dword [ebp-0x78], 0x1
	add edi, 0xf4
	mov eax, [ebx+0x24]
	mov edx, [ebp-0x78]
	cmp edx, [eax+0x2f70]
	jl _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_560
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_570
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_310:
	call _Z16BG_GetNumWeaponsv
	sub eax, 0x1
	mov [esp+0xc], eax
	mov eax, [esi+0x5036c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_invalid_
	mov dword [esp], 0x11
	call _Z16Com_PrintWarningiPKcz
	mov dword [esi+0x5036c], 0x0
	mov ebx, 0x1
	mov edi, 0x1
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_580
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_600:
	add ebx, 0x1
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_580:
	call _Z16BG_GetNumWeaponsv
	cmp ebx, eax
	jae _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_590
	mov eax, ebx
	sar eax, 0x5
	mov [ebp-0x84], esi
	mov ecx, ebx
	and ecx, 0x1f
	mov edx, edi
	shl edx, cl
	mov ecx, edx
	test [esi+eax*4+0x46698], ecx
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_600
	mov [esi+0x5036c], ebx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_590
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_300:
	mov eax, [ecx+0x504d8]
	mov [esp+0xc], eax
	mov eax, [ecx+0x504d4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z40CG_DrawShellShockSavedScreenBlendFlashediPK18shellshock_parms_tii
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_290
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_160:
	mov dword [esp+0x4], 0xfffffff7
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17Key_RemoveCatcherii
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_610
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_190:
	mov eax, [ebp+0x8]
	call _Z13CG_PlayTestFxi
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_180
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_150:
	mov dword [esp+0x4], 0x8
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_620
	mov eax, cgArray
	mov [ebp-0x84], eax
	mov edx, eax
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_630
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_220:
	movss xmm1, dword [ebx+0x46158]
	movss xmm0, dword [ebp-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [ebx+0x4615c]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ebx+0x46160]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm0, xmm1
	movss [ebp-0x28], xmm0
	subss xmm0, [ebx+0x46160]
	movss [ebx+0x492c4], xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_640
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_510:
	mov ecx, 0xc1200000
	mov [eax], ecx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_520
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_240:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _Z17Com_GetClientDObjii
	test eax, eax
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_230
	mov dword [esp+0x4], _cstring_client
	mov [esp], eax
	call _Z15DObjDisplayAnimPK6DObj_sPKc
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_230
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_620:
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14Key_AddCatcherii
	mov eax, 0x3f000000
	mov edx, [ebp-0x84]
	mov [edx+0x5050c], eax
	mov [edx+0x50510], eax
	mov ecx, cgArray
	mov [ebp-0x84], ecx
	mov edx, ecx
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_630
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_280:
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z30AimAssist_GetScreenTargetCounti
	mov esi, eax
	test eax, eax
	jg _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_650
	mov eax, cgArray
	mov [ebp-0x84], eax
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_940:
	movss xmm6, dword [_float_256_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_960:
	movss xmm7, dword [_float_2500_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_970:
	movss xmm1, dword [_float_8192_00000000]
	mov edx, [ebp-0x84]
	movss xmm0, dword [edx+0x492ec]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x492e0]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [edx+0x492f0]
	mulss xmm0, xmm1
	addss xmm0, [edx+0x492e4]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [edx+0x492f4]
	addss xmm1, [edx+0x492e8]
	movss [ebp-0x28], xmm1
	mov dword [esp+0x18], 0x806c31
	mov eax, [edx+0x46218]
	mov [esp+0x14], eax
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov eax, vec3_origin
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov eax, edx
	add eax, 0x492e0
	mov [esp+0x4], eax
	mov [esp], edi
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call _Z15CG_TraceCapsuleP7trace_tPKfS2_S2_S2_ii
	movss xmm4, dword [ebp-0x5c]
	mov eax, [ebp-0x84]
	movss xmm0, dword [eax+0x492e0]
	movss xmm1, dword [ebp-0x30]
	subss xmm1, xmm0
	mulss xmm1, xmm4
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm0, dword [eax+0x492e4]
	movss xmm2, dword [ebp-0x2c]
	subss xmm2, xmm0
	mulss xmm2, xmm4
	addss xmm2, xmm0
	movss [ebp-0x2c], xmm2
	movss xmm3, dword [eax+0x492e8]
	movss xmm0, dword [ebp-0x28]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm0, xmm3
	movss [ebp-0x28], xmm0
	subss xmm1, [eax+0x492e0]
	subss xmm2, [eax+0x492e4]
	subss xmm0, [eax+0x492e8]
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm5, xmm1
	movss xmm6, dword [ebp-0x98]
	ucomiss xmm6, xmm5
	movss xmm7, dword [ebp-0xa8]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_660
	movaps xmm6, xmm5
	subss xmm6, [_float_30_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_660:
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	maxss xmm0, xmm6
	movaps xmm6, xmm0
	maxss xmm5, xmm7
	movaps xmm7, xmm5
	mulss xmm7, [_float_4_00000000]
	mov eax, [ebp-0x84]
	cvtsi2ss xmm0, dword [eax+0x46124]
	mulss xmm0, [_float_0_00100000]
	movss [ebp-0x6c], xmm0
	movss xmm4, dword [eax+0x46230]
	ucomiss xmm4, xmm1
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_670
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_680
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_670:
	cmp dword [eax+0x46140], 0x6
	jle _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_690
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_680:
	mov eax, cgArray
	mov [ebp-0x84], eax
	movss xmm1, dword [eax+0x49330]
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, [_float_1000_00000000]
	ucomiss xmm1, [_float_1_00000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_700
	movaps xmm2, xmm1
	subss xmm2, [_float_1_00000000]
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_710
	subss xmm1, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_990:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, xmm1
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_720
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1000:
	mov eax, [ebp-0x84]
	movss [eax+0x49330], xmm1
	movss xmm2, dword [eax+0x49334]
	ucomiss xmm2, xmm6
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_730
	movaps xmm0, xmm2
	subss xmm0, xmm6
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x1
	movaps xmm0, xmm4
	andps xmm3, xmm4
	andnps xmm0, xmm1
	orps xmm0, xmm3
	subss xmm2, xmm0
	ucomiss xmm6, xmm2
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_740
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_920:
	movaps xmm6, xmm2
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_740:
	mov eax, [ebp-0x84]
	movss [eax+0x49334], xmm6
	movss xmm1, dword [eax+0x49338]
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, [_float_8000_00000000]
	ucomiss xmm1, xmm5
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_750
	movaps xmm0, xmm1
	subss xmm0, xmm5
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_760
	movaps xmm0, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_890:
	subss xmm1, xmm0
	ucomiss xmm5, xmm1
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_770
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_900:
	movaps xmm5, xmm1
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_770:
	mov eax, [ebp-0x84]
	movss [eax+0x49338], xmm5
	movss xmm2, dword [eax+0x4933c]
	ucomiss xmm2, xmm7
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_780
	movaps xmm0, xmm2
	subss xmm0, xmm7
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x1
	movaps xmm0, xmm4
	andps xmm3, xmm4
	andnps xmm0, xmm1
	orps xmm0, xmm3
	subss xmm2, xmm0
	ucomiss xmm7, xmm2
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_790
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_850:
	movaps xmm7, xmm2
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_790:
	mov eax, [ebp-0x84]
	movss [eax+0x4933c], xmm7
	movss xmm1, dword [eax+0x49340]
	movss xmm3, dword [ebp-0x6c]
	addss xmm3, xmm3
	ucomiss xmm1, [_float_6_00000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_800
	movss xmm2, dword [_float_6_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_810
	movaps xmm0, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_880:
	subss xmm1, xmm0
	ucomiss xmm2, xmm1
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_820
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_860:
	mov eax, [ebp-0x84]
	movss [eax+0x49340], xmm1
	movss xmm2, dword [eax+0x49344]
	pxor xmm4, xmm4
	ucomiss xmm2, xmm4
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_830
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm5, xmm3
	cmpss xmm5, xmm0, 0x1
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm1
	orps xmm0, xmm3
	subss xmm2, xmm0
	ucomiss xmm4, xmm2
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_840
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1040:
	mov eax, [ebp-0x84]
	movss [eax+0x49344], xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_260
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_780:
	ucomiss xmm7, xmm2
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_850
	movaps xmm0, xmm7
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm5, xmm3
	cmpss xmm5, xmm0, 0x1
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm1
	orps xmm0, xmm3
	addss xmm0, xmm2
	minss xmm7, xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_790
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_800:
	movss xmm2, dword [_float_6_00000000]
	ucomiss xmm2, xmm1
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_860
	movaps xmm0, xmm2
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_870
	movaps xmm0, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1160:
	addss xmm1, xmm0
	ucomiss xmm1, [_float_6_00000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_860
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_820:
	movaps xmm1, xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_860
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_810:
	movss xmm4, dword [_float_1_00000000]
	maxss xmm4, xmm0
	movaps xmm0, xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_880
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_760:
	movss xmm2, dword [_float_1_00000000]
	maxss xmm2, xmm0
	movaps xmm0, xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_890
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_750:
	ucomiss xmm5, xmm1
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_900
	movaps xmm0, xmm5
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_910
	movaps xmm0, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1030:
	addss xmm0, xmm1
	minss xmm5, xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_770
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_730:
	ucomiss xmm6, xmm2
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_920
	movaps xmm0, xmm6
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x1
	movaps xmm0, xmm4
	andps xmm3, xmm4
	andnps xmm0, xmm1
	orps xmm0, xmm3
	addss xmm0, xmm2
	minss xmm6, xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_740
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_650:
	xor ebx, ebx
	movss xmm6, dword [_float_10000_00000000]
	movss xmm7, dword [_float__1_00000000]
	mov ecx, cgArray
	mov [ebp-0x84], ecx
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_930:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x98], xmm6
	movss [ebp-0xa8], xmm7
	call _Z31AimAssist_GetScreenTargetEntityii
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, cg_entitiesArray
	lea edx, [eax+0x1c]
	mov ecx, [ebp-0x84]
	movss xmm0, dword [ecx+0x46158]
	subss xmm0, [eax+0x1c]
	movss xmm1, dword [ecx+0x4615c]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [ecx+0x46160]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movaps xmm1, xmm0
	subss xmm1, [_float_30_00000000]
	movss xmm6, dword [ebp-0x98]
	minss xmm1, xmm6
	movaps xmm6, xmm1
	addss xmm0, [_float_30_00000000]
	movss xmm7, dword [ebp-0xa8]
	maxss xmm0, xmm7
	movaps xmm7, xmm0
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_930
	ucomiss xmm1, xmm0
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_940
	ucomiss xmm1, [_float_50_00000000]
	jae _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_950
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_950
	movss xmm6, dword [_float_50_00000000]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1170:
	ucomiss xmm7, [_float_2500_00000000]
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_960
	ucomiss xmm7, [_float_1000_00000000]
	jae _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_970
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_970
	movss xmm7, dword [_float_1000_00000000]
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_970
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_690:
	subss xmm1, xmm4
	pxor xmm3, xmm3
	movaps xmm2, xmm1
	mulss xmm2, xmm3
	movaps xmm0, xmm4
	addss xmm0, xmm2
	mov edx, [ebp-0x84]
	movss [edx+0x49330], xmm0
	mulss xmm6, xmm4
	addss xmm6, xmm2
	movss [edx+0x49334], xmm6
	movaps xmm0, xmm1
	mulss xmm0, [_float_5000_00000000]
	mulss xmm5, xmm4
	addss xmm5, xmm0
	movss [edx+0x49338], xmm5
	mulss xmm7, xmm4
	addss xmm0, xmm7
	movss [edx+0x4933c], xmm0
	movss xmm0, dword [_float_6_00000000]
	mulss xmm1, xmm0
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss [edx+0x49340], xmm1
	mulss xmm4, xmm3
	addss xmm2, xmm4
	movss [edx+0x49344], xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_260
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_710:
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm4, xmm0
	ja _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_980
	subss xmm1, xmm0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_990
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_700:
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, xmm1
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1000
	movaps xmm0, xmm2
	subss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, xmm3
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1010
	movaps xmm0, xmm3
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1020:
	addss xmm1, xmm0
	ucomiss xmm1, [_float_1_00000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1000
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_720:
	movss xmm1, dword [_float_1_00000000]
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1000
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1010:
	movss xmm4, dword [_float_1_00000000]
	maxss xmm4, xmm0
	movaps xmm0, xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1020
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_980:
	movaps xmm1, xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_990
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_910:
	movss xmm4, dword [_float_1_00000000]
	maxss xmm4, xmm0
	movaps xmm0, xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1030
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_830:
	ucomiss xmm4, xmm2
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1040
	movaps xmm0, xmm4
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	movss xmm1, dword [_float_1_00000000]
	maxss xmm1, xmm0
	movaps xmm5, xmm3
	cmpss xmm5, xmm0, 0x1
	movaps xmm0, xmm5
	andps xmm3, xmm5
	andnps xmm0, xmm1
	orps xmm0, xmm3
	addss xmm2, xmm0
	ucomiss xmm2, xmm4
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1040
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_840:
	movaps xmm2, xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1040
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_400:
	mov edx, [ebp-0x84]
	movss xmm7, dword [_float_0_06000000]
	mov esi, cgArray
	add esi, 0xc
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1070:
	lea eax, [edx+0x50410]
	movss xmm6, dword [edx+0x50410]
	ucomiss xmm6, xmm4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1050
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1050
	movss xmm2, dword [edx+0x5041c]
	ucomiss xmm2, xmm4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1060
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1060
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1140:
	add edx, 0x4
	cmp esi, edx
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1070
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1080
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_110:
	mov dword [ebx+0x46138], 0x1
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_100
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1050:
	movss xmm2, dword [edx+0x5041c]
	ucomiss xmm2, xmm4
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1060
	jz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1090
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1060:
	movaps xmm0, xmm4
	cmpss xmm0, xmm2, 0x5
	movss xmm1, dword [_float_1_00000000]
	andps xmm1, xmm0
	movss [ebp-0xb0], xmm1
	movaps xmm5, xmm0
	movss xmm1, dword [_float__1_00000000]
	andnps xmm5, xmm1
	movss xmm0, dword [ebp-0xb0]
	orps xmm5, xmm0
	mov ecx, [ebp-0x84]
	movss xmm0, dword [ecx+0x46230]
	ucomiss xmm0, [_float_0_50000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1100
	movaps xmm0, xmm5
	mov ecx, [ebp-0x74]
	mulss xmm0, [ecx+0x710]
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1150:
	mulss xmm0, xmm3
	addss xmm6, xmm0
	movss [eax], xmm6
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1090:
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	lea ecx, [edx+0x5041c]
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	ucomiss xmm4, xmm0
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1110
	mulss xmm1, xmm7
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1110:
	addss xmm1, xmm2
	mulss xmm2, xmm1
	ucomiss xmm2, xmm4
	jb _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1120
	movss [edx+0x5041c], xmm1
	ucomiss xmm1, xmm4
	jnz _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1130
	jp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1130
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1180:
	movss [eax], xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1140
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1100:
	movaps xmm0, xmm5
	mov ecx, [ebp-0x74]
	mulss xmm0, [ecx+0x758]
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1150
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_870:
	movss xmm5, dword [_float_1_00000000]
	maxss xmm5, xmm0
	movaps xmm0, xmm5
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1160
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_950:
	movss xmm0, dword [_float_512_00000000]
	movaps xmm1, xmm0
	cmpss xmm1, xmm6, 0x5
	movaps xmm2, xmm6
	andps xmm2, xmm1
	movaps xmm6, xmm1
	andnps xmm6, xmm0
	orps xmm6, xmm2
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1170
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1130:
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_10_00000000]
	jbe _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1140
	movaps xmm0, xmm4
	cmpss xmm0, xmm1, 0x5
	movss xmm1, dword [_float__10_00000000]
	andps xmm1, xmm0
	movss xmm2, dword [_float_10_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ecx], xmm0
	mov dword [eax], 0x0
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1140
_Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1120:
	movss [edx+0x5041c], xmm4
	jmp _Z18CG_DrawActiveFrameii8DemoType11CubemapShotii_1180
	nop


;CG_UpdateViewOffset(int)
_Z19CG_UpdateViewOffseti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, cgArray
	mov ecx, [esi+0x5052c]
	test ecx, ecx
	jz _Z19CG_UpdateViewOffseti_10
	mov edx, [esi+0x469dc]
	cmp edx, 0x3ff
	jz _Z19CG_UpdateViewOffseti_10
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea eax, [edx+eax]
	mov edx, cg_entitiesArray
	cmp byte [edx+eax+0x1c0], 0x0
	jnz _Z19CG_UpdateViewOffseti_20
_Z19CG_UpdateViewOffseti_10:
	movss xmm2, dword [esi+0x46120]
	mov eax, [esi+0x20]
	lea ebx, [eax+0x28]
	mov edx, [esi+0x24]
	lea ecx, [edx+0x28]
	movss xmm1, dword [eax+0x28]
	movss xmm0, dword [edx+0x28]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [esi+0x49310], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [esi+0x49314], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm0, xmm1
	movss [esi+0x49318], xmm0
	addss xmm0, [edx+0x124]
	movss [esi+0x49318], xmm0
	mov [ebp+0x8], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21CL_ResetSkeletonCachei
_Z19CG_UpdateViewOffseti_20:
	add eax, edx
	lea edx, [eax+0x1c]
	mov eax, [eax+0x1c]
	mov [esi+0x49310], eax
	mov eax, [edx+0x4]
	mov [esi+0x49314], eax
	mov eax, [edx+0x8]
	mov [esi+0x49318], eax
	mov [ebp+0x8], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21CL_ResetSkeletonCachei
	nop


;CG_ViewRegisterDvars()
_Z20CG_ViewRegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x14], _cstring_helicopter_kill_
	mov dword [esp+0x10], 0x80
	mov edi, 0x7f7fffff
	mov [esp+0xc], edi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x447a0000
	mov dword [esp], _cstring_cg_helikillcamdi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamDist], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43200000
	mov esi, 0x3dcccccd
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x41700000
	mov dword [esp], _cstring_cg_helikillcamfo
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamFov], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42480000
	mov dword [esp], _cstring_cg_helikillcamzd
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamZDist], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	mov dword [esp+0x8], 0x40800000
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_cg_helikillcamne
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamNearBlur], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_cg_helikillcamfa
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamFarBlur], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_helikillcamfa1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamFarBlurStart], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_cg_helikillcamfa2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamFarBlurDist], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_helikillcamne1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamNearBlurStart], eax
	mov dword [esp+0x14], _cstring_helicopter_kill_2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x461c4000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_helikillcamne2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_heliKillCamNearBlurEnd], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43200000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x42a00000
	mov dword [esp], _cstring_cg_airstrikekill
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamFov], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43480000
	mov dword [esp], _cstring_cg_airstrikekill1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamDist], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c2
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov esi, 0x41c00000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_airstrikekill2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamCloseXYDist], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c3
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_cg_airstrikekill3
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamCloseZDist], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	mov dword [esp+0x8], 0x40800000
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_cg_airstrikekill4
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamNearBlur], eax
	mov dword [esp+0x14], _cstring_sets_the_radius_
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x41200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40000000
	mov dword [esp], _cstring_cg_airstrikekill5
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamFarBlur], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c4
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_airstrikekill6
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamFarBlurStart], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c4
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43960000
	mov dword [esp], _cstring_cg_airstrikekill7
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamFarBlurDist], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c4
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cg_airstrikekill8
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamNearBlurStart], eax
	mov dword [esp+0x14], _cstring_airstrike_kill_c4
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x461c4000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42c80000
	mov dword [esp], _cstring_cg_airstrikekill9
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [cg_airstrikeKillCamNearBlurEnd], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_UpdateAirstrikeKillCam(int)
_Z25CG_UpdateAirstrikeKillCami:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, cgArray
	mov eax, [esi+0x469dc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov ecx, cg_entitiesArray
	add eax, ecx
	mov ebx, [esi]
	lea edx, [ebx*4]
	shl ebx, 0x5
	sub ebx, edx
	mov edx, ebx
	shl edx, 0x4
	add ebx, edx
	add ebx, ecx
	lea edx, [eax+0x1c]
	movss xmm0, dword [eax+0x1c]
	movss [ebp-0x1c], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x24], xmm0
	lea edx, [esi+0x492ec]
	mov [esp+0x4], edx
	add eax, 0x28
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	lea eax, [ebx+0x1c]
	mov [ebp-0x34], eax
	movss xmm1, dword [ebx+0x24]
	mov eax, [cg_airstrikeKillCamCloseZDist]
	movaps xmm0, xmm1
	addss xmm0, [eax+0xc]
	maxss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movss xmm5, dword [ebx+0x1c]
	subss xmm5, [ebp-0x1c]
	lea eax, [ebx+0x20]
	mov [ebp-0x30], eax
	movss xmm4, dword [ebx+0x20]
	subss xmm4, [ebp-0x20]
	lea edi, [ebx+0x24]
	movaps xmm6, xmm1
	subss xmm6, xmm0
	lea eax, [esi+0x492f0]
	mov [ebp-0x2c], eax
	lea eax, [esi+0x492f4]
	mov [ebp-0x28], eax
	movaps xmm0, xmm5
	mulss xmm0, [esi+0x492ec]
	movaps xmm1, xmm4
	mov eax, [ebp-0x2c]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mov eax, [ebp-0x28]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25CG_UpdateAirstrikeKillCami_10
_Z25CG_UpdateAirstrikeKillCami_50:
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
_Z25CG_UpdateAirstrikeKillCami_60:
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	addss xmm1, xmm0
	sqrtss xmm2, xmm1
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm2
	xorps xmm0, xmm7
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25CG_UpdateAirstrikeKillCami_20
	movss xmm0, dword [_float_1_00000000]
_Z25CG_UpdateAirstrikeKillCami_90:
	movaps xmm2, xmm0
	mulss xmm2, xmm5
	movaps xmm3, xmm0
	mulss xmm3, xmm4
	movaps xmm1, xmm6
	mulss xmm1, xmm0
	mov eax, cgArray
	add eax, 0x49300
	mov edx, cgArray
	add edx, 0x492fc
	mov esi, cgArray
	movaps xmm4, xmm3
	mulss xmm4, [eax]
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	subss xmm4, xmm0
	movss [esi+0x49304], xmm4
	lea ebx, [esi+0x49308]
	mulss xmm1, [esi+0x492f8]
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	subss xmm1, xmm0
	movss [esi+0x49308], xmm1
	lea ecx, [esi+0x4930c]
	mulss xmm2, [edx]
	mulss xmm3, [esi+0x492f8]
	subss xmm2, xmm3
	movss [esi+0x4930c], xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25CG_UpdateAirstrikeKillCami_30
	movss xmm1, dword [_float_1_00000000]
_Z25CG_UpdateAirstrikeKillCami_80:
	mulss xmm4, xmm1
	movss [esi+0x49304], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [ebx]
	movss [ebx], xmm0
	mulss xmm1, [ecx]
	movss [ecx], xmm1
	movss xmm3, dword [edx]
	mulss xmm3, [esi+0x4930c]
	movss xmm0, dword [eax]
	mulss xmm0, [esi+0x49308]
	subss xmm3, xmm0
	movss [esi+0x492ec], xmm3
	lea ecx, [esi+0x492f0]
	movss xmm2, dword [eax]
	mulss xmm2, [esi+0x49304]
	movss xmm1, dword [esi+0x492f8]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4930c]
	subss xmm2, xmm0
	movss [esi+0x492f0], xmm2
	lea eax, [esi+0x492f4]
	mulss xmm1, [esi+0x49308]
	movss xmm0, dword [edx]
	mulss xmm0, [esi+0x49304]
	subss xmm1, xmm0
	movss [esi+0x492f4], xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	ucomiss xmm0, [_float_0_00000000]
	jb _Z25CG_UpdateAirstrikeKillCami_40
	movss xmm1, dword [_float_1_00000000]
_Z25CG_UpdateAirstrikeKillCami_70:
	mulss xmm3, xmm1
	movss [esi+0x492ec], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov eax, [cg_airstrikeKillCamDist]
	movss xmm3, dword [eax+0xc]
	xorps xmm3, xmm7
	movaps xmm0, xmm3
	mulss xmm0, [esi+0x492ec]
	addss xmm0, [ebp-0x1c]
	movss [esi+0x492e0], xmm0
	movaps xmm0, xmm3
	mov eax, [ebp-0x2c]
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x20]
	movss [esi+0x492e4], xmm0
	mov eax, [ebp-0x28]
	mulss xmm3, [eax]
	addss xmm3, [ebp-0x24]
	movss [esi+0x492e8], xmm3
	mov eax, [ebp-0x34]
	movss xmm0, dword [eax]
	subss xmm0, [esi+0x492e0]
	mov eax, [ebp-0x30]
	movss xmm1, dword [eax]
	subss xmm1, [esi+0x492e4]
	movss xmm2, dword [edi]
	subss xmm2, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mov eax, [cg_airstrikeKillCamNearBlur]
	mov eax, [eax+0xc]
	mov [esi+0x49340], eax
	mov eax, [cg_airstrikeKillCamFarBlur]
	mov eax, [eax+0xc]
	mov [esi+0x49344], eax
	mov eax, [cg_airstrikeKillCamNearBlurStart]
	mov eax, [eax+0xc]
	mov [esi+0x49330], eax
	mov eax, [cg_airstrikeKillCamNearBlurEnd]
	movaps xmm1, xmm0
	subss xmm1, [eax+0xc]
	movss [esi+0x49334], xmm1
	mov eax, [cg_airstrikeKillCamFarBlurStart]
	movaps xmm1, xmm0
	addss xmm1, [eax+0xc]
	movss [esi+0x49338], xmm1
	addss xmm0, [eax+0xc]
	mov eax, [cg_airstrikeKillCamFarBlurDist]
	addss xmm0, [eax+0xc]
	movss [esi+0x4933c], xmm0
	lea eax, [esi+0x4d360]
	mov [esp+0x4], eax
	lea eax, [esi+0x492ec]
	mov [esp], eax
	call _Z12AxisToAnglesPA3_KfPf
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14CG_ShakeCamerai
	mov [esp], esi
	call _Z16CG_PerturbCameraP4cg_s
	mov eax, [cg_airstrikeKillCamFov]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x40]
	cvtsd2ss xmm1, [ebp-0x40]
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	mov eax, cgsArray
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movss [esi+0x492d8], xmm0
	movss [esi+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [esi+0x4f39c], xmm1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25CG_UpdateAirstrikeKillCami_10:
	jp _Z25CG_UpdateAirstrikeKillCami_50
	pxor xmm4, xmm4
	movaps xmm5, xmm4
	movaps xmm0, xmm4
	movaps xmm1, xmm4
	jmp _Z25CG_UpdateAirstrikeKillCami_60
_Z25CG_UpdateAirstrikeKillCami_40:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z25CG_UpdateAirstrikeKillCami_70
_Z25CG_UpdateAirstrikeKillCami_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z25CG_UpdateAirstrikeKillCami_80
_Z25CG_UpdateAirstrikeKillCami_20:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp _Z25CG_UpdateAirstrikeKillCami_90
	nop


;CG_UpdateHelicopterKillCam(int)
_Z26CG_UpdateHelicopterKillCami:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov ebx, cgArray
	mov eax, [ebx+0x469dc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov ecx, cg_entitiesArray
	add eax, ecx
	lea edx, [eax+0x1c]
	movss xmm0, dword [eax+0x1c]
	movss [ebp-0x10], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x14], xmm1
	movss xmm2, dword [edx+0x8]
	movss [ebp-0xc], xmm2
	mov eax, [cg_heliKillCamZDist]
	addss xmm2, [eax+0xc]
	movss [ebp-0xc], xmm2
	mov eax, [ebx]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	add eax, ecx
	lea edx, [eax+0x1c]
	movss xmm4, dword [eax+0x1c]
	subss xmm4, xmm0
	movss xmm3, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm2, dword [edx+0x8]
	subss xmm2, [ebp-0xc]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x18], xmm0
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z26CG_UpdateHelicopterKillCami_10
	movss xmm0, dword [_float_1_00000000]
_Z26CG_UpdateHelicopterKillCami_40:
	movaps xmm5, xmm4
	mulss xmm5, xmm0
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	movaps xmm7, xmm2
	mulss xmm7, xmm0
	pxor xmm0, xmm0
	mulss xmm0, xmm7
	movaps xmm3, xmm0
	subss xmm3, xmm6
	movaps xmm4, xmm5
	subss xmm4, xmm0
	pxor xmm2, xmm2
	mulss xmm2, xmm6
	pxor xmm0, xmm0
	mulss xmm0, xmm5
	subss xmm2, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0x3c], xmm0
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z26CG_UpdateHelicopterKillCami_20
	movss xmm0, dword [_float_1_00000000]
_Z26CG_UpdateHelicopterKillCami_50:
	mulss xmm3, xmm0
	movss [ebx+0x492f8], xmm3
	mulss xmm4, xmm0
	movss [ebx+0x492fc], xmm4
	mulss xmm2, xmm0
	movss [ebx+0x49300], xmm2
	movss [ebx+0x492ec], xmm5
	movss [ebx+0x492f0], xmm6
	movss [ebx+0x492f4], xmm7
	movaps xmm3, xmm6
	mulss xmm3, xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	subss xmm3, xmm0
	movss [ebx+0x49304], xmm3
	lea edx, [ebx+0x49308]
	movaps xmm2, xmm7
	mulss xmm2, [ebx+0x492f8]
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x49300]
	subss xmm2, xmm0
	movss [ebx+0x49308], xmm2
	lea eax, [ebx+0x4930c]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movaps xmm1, xmm6
	mulss xmm1, [ebx+0x492f8]
	subss xmm0, xmm1
	movss [ebx+0x4930c], xmm0
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
	jb _Z26CG_UpdateHelicopterKillCami_30
	movss xmm1, dword [_float_1_00000000]
_Z26CG_UpdateHelicopterKillCami_60:
	mulss xmm3, xmm1
	movss [ebx+0x49304], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	mov edx, [cg_heliKillCamDist]
	movss xmm0, dword [edx+0xc]
	xorps xmm0, [_data16_80000000]
	mulss xmm5, xmm0
	addss xmm5, [ebp-0x10]
	movss [ebx+0x492e0], xmm5
	mulss xmm6, xmm0
	addss xmm6, [ebp-0x14]
	movss [ebx+0x492e4], xmm6
	mulss xmm7, xmm0
	addss xmm7, [ebp-0xc]
	movss [ebx+0x492e8], xmm7
	mov eax, [cg_heliKillCamNearBlur]
	mov eax, [eax+0xc]
	mov [ebx+0x49340], eax
	mov eax, [cg_heliKillCamFarBlur]
	mov eax, [eax+0xc]
	mov [ebx+0x49344], eax
	mov eax, [cg_heliKillCamNearBlurStart]
	mov eax, [eax+0xc]
	mov [ebx+0x49330], eax
	movss xmm0, dword [ebp-0x18]
	addss xmm0, [edx+0xc]
	mov eax, [cg_heliKillCamNearBlurEnd]
	subss xmm0, [eax+0xc]
	movss [ebx+0x49334], xmm0
	mov eax, [cg_heliKillCamFarBlurStart]
	movss xmm0, dword [ebp-0x18]
	addss xmm0, [edx+0xc]
	addss xmm0, [eax+0xc]
	movss [ebx+0x49338], xmm0
	movss xmm1, dword [ebp-0x18]
	addss xmm1, [edx+0xc]
	movss [ebp-0x18], xmm1
	addss xmm1, [eax+0xc]
	movss [ebp-0x18], xmm1
	mov eax, [cg_heliKillCamFarBlurDist]
	addss xmm1, [eax+0xc]
	movss [ebx+0x4933c], xmm1
	lea eax, [ebx+0x4d360]
	mov [esp+0x4], eax
	lea eax, [ebx+0x492ec]
	mov [esp], eax
	call _Z12AxisToAnglesPA3_KfPf
	mov eax, [cg_heliKillCamFov]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x20]
	cvtsd2ss xmm1, [ebp-0x20]
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_75000000]
	mov eax, cgsArray
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movss [ebx+0x492d8], xmm0
	movss [ebx+0x492dc], xmm2
	divss xmm1, dword [_float_0_63707024]
	movss [ebx+0x4f39c], xmm1
	add esp, 0x54
	pop ebx
	pop ebp
	ret
_Z26CG_UpdateHelicopterKillCami_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x18]
	jmp _Z26CG_UpdateHelicopterKillCami_40
_Z26CG_UpdateHelicopterKillCami_20:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x3c]
	jmp _Z26CG_UpdateHelicopterKillCami_50
_Z26CG_UpdateHelicopterKillCami_30:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	jmp _Z26CG_UpdateHelicopterKillCami_60


;CG_GetLocalClientViewParams(int)
_Z27CG_GetLocalClientViewParamsi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z32CL_LocalActiveIndexFromClientNumi
	mov ebx, eax
	call _Z28CL_GetLocalClientActiveCountv
	add eax, ebx
	shl eax, 0x4
	add eax, wheelTags+0x10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of cg_view_mp:
SECTION .data
clientViewParamsArray: dd 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cg_view_mp:
SECTION .rdata
_ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMAXS: dd 0x40800000, 0x40800000, 0x40800000
_ZZ20ThirdPersonViewTraceP4cg_sPKfS2_iPfE6MYMINS: dd 0xc0800000, 0xc0800000, 0xc0800000
_ZZ27CalcViewValuesVehicleDriveriE11TEMP_OFFSET: dd 0x0, 0x0, 0x425c0000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0
_ZZ26CG_UpdateHelicopterKillCamiE2up: dd 0x0, 0x0, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cg_view_mp:
SECTION .bss
s_testEffect: resb 0x54
cg_airstrikeKillCamFov: resb 0x4
cg_airstrikeKillCamDist: resb 0x4
cg_airstrikeKillCamCloseZDist: resb 0x4
cg_airstrikeKillCamFarBlurDist: resb 0x4
cg_airstrikeKillCamFarBlurStart: resb 0x4
cg_airstrikeKillCamNearBlurEnd: resb 0x4
cg_airstrikeKillCamNearBlurStart: resb 0x4
cg_airstrikeKillCamFarBlur: resb 0x4
cg_airstrikeKillCamNearBlur: resb 0x4
cg_heliKillCamFov: resb 0x4
cg_heliKillCamDist: resb 0x4
cg_heliKillCamZDist: resb 0x4
cg_heliKillCamFarBlurDist: resb 0x4
cg_heliKillCamFarBlurStart: resb 0x4
cg_heliKillCamNearBlurEnd: resb 0x4
cg_heliKillCamNearBlurStart: resb 0x4
cg_heliKillCamFarBlur: resb 0x4
cg_heliKillCamNearBlur: resb 0x4
cg_airstrikeKillCamCloseXYDist: resb 0x64


;All cstrings:
SECTION .rdata
_cstring_turret_has_no_bo:		db 015h,"Turret has no bone: tag_player",0
_cstring_update_ent_info:		db "update ent info",0
_cstring_player_state:		db "player state",0
_cstring_view_anim:		db "view anim",0
_cstring_view_values:		db "view values",0
_cstring_player_entity:		db "player entity",0
_cstring_remaining_fx:		db "remaining fx",0
_cstring_aim_assist:		db "aim assist",0
_cstring_draw_2d:		db "draw 2D",0
_cstring_warning_invalid_:		db "WARNING: Invalid weaponSelect setting %i (out of range 0 - %i)",0ah,0
_cstring_client:		db "client:",0ah,0
_cstring_helicopter_kill_:		db "Helicopter kill camera distance from helicopter.",0
_cstring_cg_helikillcamdi:		db "cg_heliKillCamDist",0
_cstring_helicopter_kill_1:		db "Helicopter kill camera field of view.",0
_cstring_cg_helikillcamfo:		db "cg_heliKillCamFov",0
_cstring_helicopter_kill_2:		db "Helicopter kill camera distance above the helicopter.",0
_cstring_cg_helikillcamzd:		db "cg_heliKillCamZDist",0
_cstring_sets_the_radius_:		db "Sets the radius of the gaussian blur used by depth of field, in pixels at 640x480",0
_cstring_cg_helikillcamne:		db "cg_heliKillCamNearBlur",0
_cstring_cg_helikillcamfa:		db "cg_heliKillCamFarBlur",0
_cstring_cg_helikillcamfa1:		db "cg_heliKillCamFarBlurStart",0
_cstring_cg_helikillcamfa2:		db "cg_heliKillCamFarBlurDist",0
_cstring_cg_helikillcamne1:		db "cg_heliKillCamNearBlurStart",0
_cstring_cg_helikillcamne2:		db "cg_heliKillCamNearBlurEnd",0
_cstring_airstrike_kill_c:		db "Airstrike kill camera field of view.",0
_cstring_cg_airstrikekill:		db "cg_airstrikeKillCamFov",0
_cstring_airstrike_kill_c1:		db "Airstrike kill camera distance.",0
_cstring_cg_airstrikekill1:		db "cg_airstrikeKillCamDist",0
_cstring_airstrike_kill_c2:		db "Airstrike kill camera closest distance in front of the bomb.",0
_cstring_cg_airstrikekill2:		db "cg_airstrikeKillCamCloseXYDist",0
_cstring_airstrike_kill_c3:		db "Airstrike kill camera closest distance above the target.",0
_cstring_cg_airstrikekill3:		db "cg_airstrikeKillCamCloseZDist",0
_cstring_cg_airstrikekill4:		db "cg_airstrikeKillCamNearBlur",0
_cstring_cg_airstrikekill5:		db "cg_airstrikeKillCamFarBlur",0
_cstring_airstrike_kill_c4:		db "Airstrike kill camera distance above the airplane.",0
_cstring_cg_airstrikekill6:		db "cg_airstrikeKillCamFarBlurStart",0
_cstring_cg_airstrikekill7:		db "cg_airstrikeKillCamFarBlurDist",0
_cstring_cg_airstrikekill8:		db "cg_airstrikeKillCamNearBlurStart",0
_cstring_cg_airstrikekill9:		db "cg_airstrikeKillCamNearBlurEnd",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0
_float_8_00000000:		dd 0x41000000	; 8
_float_150_00000000:		dd 0x43160000	; 150
_float_450_00000000:		dd 0x43e10000	; 450
_float__300_00000000:		dd 0xc3960000	; -300
_float_1_00000000:		dd 0x3f800000	; 1
_float_32_00000000:		dd 0x42000000	; 32
_float_55_00000000:		dd 0x425c0000	; 55
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_0_63707024:		dd 0x3f231709	; 0.63707
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_45_00000000:		dd 0x42340000	; 45
_float_512_00000000:		dd 0x44000000	; 512
_double__57_29577951:		dq 0xc04ca5dc1a63c1f8	; -57.2958
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_float_90_00000000:		dd 0x42b40000	; 90
_float_1024_00000000:		dd 0x44800000	; 1024
_float_10_00000000:		dd 0x41200000	; 10
_float_2400_00000000:		dd 0x45160000	; 2400
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_06000000:		dd 0x3d75c28f	; 0.06
_float_256_00000000:		dd 0x43800000	; 256
_float_2500_00000000:		dd 0x451c4000	; 2500
_float_8192_00000000:		dd 0x46000000	; 8192
_float_30_00000000:		dd 0x41f00000	; 30
_float_4_00000000:		dd 0x40800000	; 4
_float_8000_00000000:		dd 0x45fa0000	; 8000
_float_6_00000000:		dd 0x40c00000	; 6
_float_10000_00000000:		dd 0x461c4000	; 10000
_float_50_00000000:		dd 0x42480000	; 50
_float_5000_00000000:		dd 0x459c4000	; 5000
_float__10_00000000:		dd 0xc1200000	; -10

