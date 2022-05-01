;Imports of aim_assist:
	extern cg_entitiesArray
	extern _Z15BG_GetWeaponDefj
	extern scrPlaceView
	extern cgMedia
	extern _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	extern _Z2vaPKcz
	extern colorYellow
	extern _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	extern colorWhite
	extern _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	extern player_meleeRange
	extern _Z8vectoyawPKf
	extern _Z11vectoanglesPKfPf
	extern _Z14DiffTrackAngleffff
	extern floorf
	extern memset
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z11Com_sprintfPciPKcz
	extern _Z15GraphFloat_LoadP10GraphFloatPKcf
	extern cgArray
	extern _Z12AnglesToAxisPKfPA3_f
	extern cg_fov
	extern tan
	extern _Z15MatrixForViewerPA4_fPKfPA3_S1_
	extern _Z25InfinitePerspectiveMatrixPA4_ffff
	extern _Z16MatrixMultiply44PA4_KfS1_PA4_f
	extern _Z17MatrixTranspose44PKfPf
	extern _Z15MatrixInverse44PKfPf
	extern _Z29AimTarget_GetClientTargetListiPPK9AimTargetPi
	extern ClearBounds
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern _Z16AddPointToBoundsPKfPfS1_
	extern memmove
	extern scr_const
	extern _Z17Com_GetClientDObjii
	extern _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	extern _Z18SL_ConvertToStringj
	extern _Z9Com_Error11errorParm_tPKcz

;Exports of aim_assist:
	global aim_lockon_debug
	global aim_automelee_debug
	global aim_autoaim_debug
	global aim_slowdown_debug
	global aaGlobArray
	global aim_automelee_range
	global aim_lockon_region_height
	global aim_lockon_region_width
	global aim_automelee_region_height
	global aim_automelee_region_width
	global aim_autoaim_region_height
	global aim_autoaim_region_width
	global aim_slowdown_region_height
	global aim_slowdown_region_width
	global aim_automelee_lerp
	global aim_automelee_enabled
	global aim_accel_turnrate_debug
	global aim_accel_turnrate_lerp
	global aim_accel_turnrate_enabled
	global aim_turnrate_yaw
	global aim_turnrate_yaw_ads
	global aim_turnrate_pitch
	global aim_turnrate_pitch_ads
	global aim_scale_view_axis
	global aim_input_graph_debug
	global aaInputGraph
	global aim_input_graph_index
	global aim_input_graph_enabled
	global aim_slowdown_yaw_scale
	global aim_slowdown_yaw_scale_ads
	global aim_slowdown_pitch_scale
	global aim_slowdown_pitch_scale_ads
	global aim_slowdown_enabled
	global aim_autoaim_lerp
	global aim_autoaim_enabled
	global aim_lockon_strength
	global aim_lockon_deflection
	global aim_lockon_enabled
	global _Z21AimAssist_DrawTargetsiPK13playerState_sPKf
	global _Z26AimAssist_UpdateTweakablesPK8AimInput
	global _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput
	global _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput
	global green.137163
	global red.137162
	global _Z14AimAssist_Initi
	global _Z15AimAssist_Setupi
	global _Z26AimAssist_DrawDebugOverlayi
	global _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput
	global _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff
	global _Z30AimAssist_ClearEntityReferenceii
	global _Z30AimAssist_GetScreenTargetCounti
	global _Z31AimAssist_GetScreenTargetEntityii


SECTION .text


;AimAssist_DrawTargets(int, playerState_s const*, float const*)
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov esi, eax
	mov [ebp-0x3c], ecx
	test dword [edx+0xb0], 0x300
	jz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_10
	mov eax, [edx+0x59c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov eax, [edx+eax+0x190]
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_120:
	test eax, eax
	jnz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_20
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_30:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_20:
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov [ebp-0x34], eax
	lea edx, [esi*4]
	lea eax, [edx+esi]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	lea eax, [eax+eax*8]
	lea edi, [eax*4+aaGlobArray]
	movss xmm0, dword [edi+0x68]
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	mov eax, [ebp-0x34]
	mulss xmm1, [eax+0x404]
	mulss xmm0, [eax+0x408]
	addss xmm1, xmm0
	mov ecx, [edi+0xdfc]
	test ecx, ecx
	jle _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_30
	mulss xmm1, xmm1
	movss [ebp-0x38], xmm1
	mov dword [ebp-0x30], 0x0
	shl esi, 0x6
	lea ebx, [edi+0xfc]
	lea esi, [edx+esi]
	add esi, scrPlaceView
	jmp _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_40
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_90:
	mov eax, [aim_slowdown_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_50
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_100:
	mov eax, [aim_lockon_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_60
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_110:
	movss xmm0, dword [ebx+0x2c]
	ucomiss xmm0, [ebp-0x38]
	jbe _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_60
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_80:
	add dword [ebp-0x30], 0x1
	add ebx, 0x34
	mov eax, [ebp-0x30]
	cmp eax, [edi+0xdfc]
	jge _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_30
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_40:
	mov eax, [aim_autoaim_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_70
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx+0x400]
	mulss xmm0, xmm0
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm0
	ja _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_80
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_70:
	mov eax, [aim_automelee_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_90
	mov eax, [aim_automelee_range]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm0
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm0
	ja _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_80
	mov eax, [aim_slowdown_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_100
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_50:
	movss xmm0, dword [ebx+0x2c]
	ucomiss xmm0, [ebp-0x38]
	ja _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_80
	mov eax, [aim_lockon_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_110
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_60:
	movss xmm2, dword [edi+0x74]
	mulss xmm2, [_float_0_50000000]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [ebx+0x4]
	mulss xmm0, xmm2
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [edi+0x78]
	mulss xmm1, [_float_0_50000000]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [ebx+0x8]
	mulss xmm0, xmm1
	movss [ebp-0x28], xmm0
	mov edx, cgMedia
	mov eax, [edx]
	mov [esp+0x24], eax
	mov ecx, [ebp-0x3c]
	mov [esp+0x20], ecx
	mov dword [esp+0x1c], 0x3f800000
	mov dword [esp+0x18], 0x3f800000
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss xmm0, dword [ebx+0x10]
	addss xmm0, [_float_1_00000000]
	mulss xmm1, xmm0
	subss xmm1, [ebp-0x28]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebx+0xc]
	addss xmm0, [_float_1_00000000]
	mulss xmm2, xmm0
	subss xmm2, [ebp-0x2c]
	movss [esp+0x8], xmm2
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_pri_i
	call _Z2vaPKcz
	mov dword [esp+0x2c], 0x0
	mov edx, colorYellow
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x5
	mov dword [esp+0x18], 0x5
	movss xmm0, dword [ebp-0x28]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, cgMedia
	mov edx, [ecx+0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [_float_10_00000000]
	movss [ebp-0x24], xmm0
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ent_i
	call _Z2vaPKcz
	mov dword [esp+0x2c], 0x0
	mov edx, colorYellow
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x5
	mov dword [esp+0x18], 0x5
	movss xmm0, dword [ebp-0x24]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, cgMedia
	mov edx, [ecx+0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_10_00000000]
	movss [ebp-0x20], xmm0
	sqrtss xmm0, [ebx+0x2c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_dist_2f
	call _Z2vaPKcz
	mov dword [esp+0x2c], 0x0
	mov edx, colorWhite
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x5
	mov dword [esp+0x18], 0x5
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, cgMedia
	mov edx, [ecx+0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [_float_10_00000000]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebx+0x20]
	movss xmm1, dword [ebx+0x24]
	movss xmm2, dword [ebx+0x28]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_speed_2f
	call _Z2vaPKcz
	mov dword [esp+0x2c], 0x0
	mov edx, colorWhite
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x5
	mov dword [esp+0x18], 0x5
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, cgMedia
	mov edx, [ecx+0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	sqrtss xmm0, [ebx+0x30]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_xhairdist_4f
	call _Z2vaPKcz
	mov dword [esp+0x2c], 0x0
	mov edx, colorWhite
	mov [esp+0x28], edx
	mov dword [esp+0x24], 0x3f800000
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x5
	mov dword [esp+0x18], 0x5
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [_float_10_00000000]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, cgMedia
	mov edx, [ecx+0x25c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	jmp _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_80
_Z21AimAssist_DrawTargetsiPK13playerState_sPKf_10:
	mov [esp], edx
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	jmp _Z21AimAssist_DrawTargetsiPK13playerState_sPKf_120


;AimAssist_UpdateTweakables(AimInput const*)
_Z26AimAssist_UpdateTweakablesPK8AimInput:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ecx, [eax+0x28]
	lea ebx, [ecx*4]
	lea edx, [ebx+ecx]
	lea edx, [edx+edx*4]
	lea edx, [ecx+edx*4]
	lea edx, [edx+edx*8]
	shl edx, 0x2
	lea esi, [edx+aaGlobArray]
	mov [ebp-0x10], esi
	mov edi, esi
	add edi, 0x4
	shl ecx, 0x6
	add ebx, ecx
	mov ecx, scrPlaceView
	mov [ebp-0x14], ecx
	mov ecx, [aim_slowdown_region_width]
	movss xmm0, dword [ecx+0xc]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+ebx]
	divss xmm0, dword [edx+aaGlobArray+0x74]
	mov edx, [ebp-0x10]
	movss [edx+0x4], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_slowdown_region_height]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx+0x4]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x78]
	movss [edi+0x4], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_autoaim_region_width]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x74]
	mov esi, [ebp-0x10]
	mulss xmm0, [esi+0x64]
	movss [edi+0x8], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_autoaim_region_height]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx+0x4]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x78]
	mov esi, [ebp-0x10]
	mulss xmm0, [esi+0x64]
	movss [edi+0xc], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_automelee_region_width]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x74]
	mov esi, [ebp-0x10]
	mulss xmm0, [esi+0x64]
	movss [edi+0x10], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_automelee_region_height]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx+0x4]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x78]
	mov esi, [ebp-0x10]
	mulss xmm0, [esi+0x64]
	movss [edi+0x14], xmm0
	mov esi, [eax+0x28]
	lea edx, [esi*4]
	mov ecx, esi
	shl ecx, 0x6
	lea ecx, [edx+ecx]
	mov ebx, [aim_lockon_region_width]
	movss xmm0, dword [ebx+0xc]
	mov ebx, [ebp-0x14]
	mulss xmm0, [ebx+ecx]
	add edx, esi
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	lea edx, [edx+edx*8]
	divss xmm0, dword [edx*4+aaGlobArray+0x74]
	movss [edi+0x18], xmm0
	mov ebx, [eax+0x28]
	lea eax, [ebx*4]
	mov edx, ebx
	shl edx, 0x6
	lea edx, [eax+edx]
	mov ecx, [aim_lockon_region_height]
	movss xmm0, dword [ecx+0xc]
	mov esi, [ebp-0x14]
	mulss xmm0, [esi+edx+0x4]
	add eax, ebx
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	lea eax, [eax+eax*8]
	divss xmm0, dword [eax*4+aaGlobArray+0x78]
	movss [edi+0x1c], xmm0
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;AimAssist_ApplyMeleeCharge(AimInput const*, AimOutput*)
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ecx, eax
	mov [ebp-0x34], edx
	mov edx, [eax+0x28]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea esi, [eax*4+aaGlobArray]
	lea edx, [esi+0x4]
	mov eax, [ebp-0x34]
	mov dword [eax+0x8], 0x0
	mov byte [eax+0xc], 0x0
	test byte [ecx+0x24], 0x4
	jz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10
	mov eax, [ecx+0x2c]
	test byte [eax+0xc], 0x1
	jnz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10
	movss xmm3, dword [edx+0x14]
	movss xmm2, dword [edx+0x10]
	mov eax, [aim_automelee_range]
	movss xmm0, dword [eax+0xc]
	mov edx, [esi+0xdfc]
	mov [ebp-0x30], edx
	test edx, edx
	jle _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	xor ecx, ecx
	movss xmm0, dword [_data16_80000000]
	movaps xmm5, xmm2
	xorps xmm5, xmm0
	movaps xmm4, xmm3
	xorps xmm4, xmm0
	lea eax, [esi+0xf0]
	jmp _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_20
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_80:
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, xmm5
	jb _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_30
	mov byte [ebp-0x29], 0x1
	ucomiss xmm3, [edx+0x4]
	jb _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_40
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_90:
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, xmm4
	jb _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_40
	mov edx, 0x1
	cmp byte [ebp-0x29], 0x0
	jz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_50
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_100:
	test dl, dl
	jz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_50
	mov edx, 0x1
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_110:
	test edx, edx
	jnz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_60
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_70:
	add ecx, 0x1
	add eax, 0x34
	cmp [ebp-0x30], ecx
	jz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_20:
	lea edi, [eax+0xc]
	movss xmm0, dword [eax+0x38]
	ucomiss xmm0, xmm1
	ja _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_70
	lea ebx, [eax+0x18]
	lea edx, [eax+0x10]
	ucomiss xmm2, [eax+0x10]
	jae _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_80
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_30:
	mov byte [ebp-0x29], 0x0
	ucomiss xmm3, [edx+0x4]
	jae _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_90
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_40:
	xor edx, edx
	cmp byte [ebp-0x29], 0x0
	jnz _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_100
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_50:
	xor edx, edx
	jmp _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_110
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_60:
	mov eax, player_meleeRange
	mov eax, [eax]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, xmm0
	ucomiss xmm0, [edi+0x2c]
	ja _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10
	movss xmm0, dword [edi+0x14]
	subss xmm0, [esi+0x24]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x18]
	subss xmm0, [esi+0x28]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z8vectoyawPKf
	mov eax, [ebp-0x34]
	fstp dword [eax+0x8]
	sqrtss xmm0, [edi+0x2c]
	cvttss2si eax, xmm0
	mov edx, [ebp-0x34]
	mov [edx+0xc], al
_Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AimAssist_ApplyAutoMelee(AimInput const*, AimOutput*)
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x48], eax
	mov [ebp-0x4c], edx
	mov ecx, [eax+0x2c]
	mov edx, [eax+0x28]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea ebx, [eax*4+aaGlobArray]
	lea edi, [ebx+0x4]
	mov esi, [ecx+0xec]
	test dword [ecx+0xb0], 0x300
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_10
	mov eax, [ecx+0x59c]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	mov edx, [edx+eax+0x190]
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_40:
	mov eax, [aim_automelee_enabled]
	cmp byte [eax+0xc], 0x0
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_20
	cmp esi, 0xc
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_30
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_20:
	mov dword [ebx+0xe18], 0x3ff
	mov byte [ebx+0xe1c], 0x0
	xor eax, eax
	mov [ebx+0xe20], eax
	mov [ebx+0xe24], eax
	mov [ebx+0xe28], eax
	mov [ebx+0xe2c], eax
	mov byte [ebx+0xe1d], 0x0
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_170:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_10:
	mov [esp], ecx
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov edx, eax
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_40
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_30:
	test edx, edx
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_20
	cmp byte [ebx+0xe1d], 0x0
	jnz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_50
	movss xmm3, dword [edi+0x14]
	movss xmm2, dword [edi+0x10]
	mov eax, [aim_automelee_range]
	movss xmm0, dword [eax+0xc]
	mov eax, [ebx+0xdfc]
	mov [ebp-0x58], eax
	test eax, eax
	jle _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	xor ecx, ecx
	movss xmm0, dword [_data16_80000000]
	movaps xmm4, xmm2
	xorps xmm4, xmm0
	movaps xmm5, xmm3
	xorps xmm5, xmm0
	lea eax, [ebx+0xf0]
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_70
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_130:
	movss xmm0, dword [eax+0x18]
	ucomiss xmm0, xmm4
	jb _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_80
	mov edi, 0x1
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_140:
	ucomiss xmm3, [edx+0x4]
	jb _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_90
	movss xmm0, dword [esi+0x4]
	ucomiss xmm0, xmm5
	jb _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_90
	mov esi, 0x1
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_210:
	mov edx, edi
	test dl, dl
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_100
	mov edx, esi
	test dl, dl
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_100
	mov edx, 0x1
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_200:
	test edx, edx
	jnz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_110
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_120:
	add ecx, 0x1
	add eax, 0x34
	cmp [ebp-0x58], ecx
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_70:
	lea edx, [eax+0xc]
	mov [ebp-0x44], edx
	movss xmm0, dword [eax+0x38]
	ucomiss xmm0, xmm1
	ja _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_120
	lea esi, [eax+0x18]
	lea edx, [eax+0x10]
	ucomiss xmm2, [eax+0x10]
	jae _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_130
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_80:
	xor edi, edi
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_140
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_110:
	mov dword [ebx+0xe18], 0x3ff
	mov byte [ebx+0xe1c], 0x0
	xor eax, eax
	mov [ebx+0xe20], eax
	mov [ebx+0xe24], eax
	mov [ebx+0xe28], eax
	mov [ebx+0xe2c], eax
	mov ecx, [ebp-0x44]
	mov esi, [ecx]
	mov [ebx+0xe18], esi
	mov byte [ebx+0xe1c], 0x1
	mov eax, [ebx+0x30]
	mov [ebx+0xe20], eax
	mov eax, [ebx+0x34]
	mov [ebx+0xe28], eax
	cmp esi, 0x3ff
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60
	mov edi, [ebp-0x58]
	test edi, edi
	jle _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60
	lea ecx, [ebx+0xfc]
	cmp [ebx+0xfc], esi
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_150
	xor edx, edx
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_160:
	add edx, 0x1
	cmp [ebp-0x58], edx
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [ebx+eax*4+0xf0]
	lea ecx, [eax+0xc]
	cmp esi, [eax+0xc]
	jnz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_160
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_150:
	lea eax, [ecx+0x14]
	lea edx, [ebx+0x24]
	movss xmm0, dword [ecx+0x14]
	subss xmm0, [ebx+0x24]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	mov eax, [ebp-0x24]
	mov [ebx+0xe24], eax
	mov eax, [ebp-0x20]
	mov [ebx+0xe2c], eax
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_60:
	mov byte [ebx+0xe1d], 0x1
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_50:
	cmp byte [ebx+0xe1c], 0x0
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_170
	mov esi, [ebx+0xe18]
	cmp esi, 0x3ff
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_180
	mov edi, [ebx+0xdfc]
	test edi, edi
	jg _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_190
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_180:
	mov dword [ebx+0xe18], 0x3ff
	mov byte [ebx+0xe1c], 0x0
	xor eax, eax
	mov [ebx+0xe20], eax
	mov [ebx+0xe24], eax
	mov [ebx+0xe28], eax
	mov [ebx+0xe2c], eax
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_170
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_100:
	xor edx, edx
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_200
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_90:
	xor esi, esi
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_210
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_190:
	lea ecx, [ebx+0xfc]
	cmp esi, [ebx+0xfc]
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_220
	xor edx, edx
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_230:
	add edx, 0x1
	cmp edi, edx
	jz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_180
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [ebx+eax*4+0xf0]
	lea ecx, [eax+0xc]
	cmp esi, [eax+0xc]
	jnz _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_230
_Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_220:
	lea eax, [ecx+0x14]
	lea edx, [ebx+0x24]
	movss xmm0, dword [ecx+0x14]
	subss xmm0, [ebx+0x24]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z11vectoanglesPKfPf
	mov edx, [ebp-0x30]
	mov [ebx+0xe24], edx
	mov eax, [ebp-0x2c]
	mov [ebx+0xe2c], eax
	mov ecx, [ebp-0x48]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov eax, [aim_automelee_lerp]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0xe20]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z14DiffTrackAngleffff
	fstp dword [ebp-0x40]
	mov edx, [ebp-0x48]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov eax, [aim_automelee_lerp]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0xe28]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe2c]
	mov [esp], eax
	call _Z14DiffTrackAngleffff
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x40]
	subss xmm0, [ebx+0xe20]
	movss xmm1, dword [_float_0_00277778]
	mulss xmm0, xmm1
	movss xmm2, dword [ebp-0x3c]
	subss xmm2, [ebx+0xe28]
	mulss xmm2, xmm1
	movss xmm1, dword [ebp-0x40]
	movss [ebx+0xe20], xmm1
	movss xmm1, dword [ebp-0x3c]
	movss [ebx+0xe28], xmm1
	movss xmm3, dword [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, xmm3
	movss [esp], xmm1
	movss [ebp-0x68], xmm0
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm3
	call floorf
	fstp dword [ebp-0x50]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x50]
	mulss xmm0, [_float_360_00000000]
	mov eax, [ebp-0x4c]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm3, dword [ebp-0x88]
	movss xmm2, dword [ebp-0x78]
	addss xmm3, xmm2
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x54]
	movss xmm2, dword [ebp-0x78]
	subss xmm2, [ebp-0x54]
	mulss xmm2, [_float_360_00000000]
	mov edx, [ebp-0x4c]
	addss xmm2, [edx+0x4]
	movss [edx+0x4], xmm2
	jmp _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput_170


;AimAssist_Init(int)
_Z14AimAssist_Initi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea eax, [eax*4+aaGlobArray]
	mov dword [esp+0x8], 0xe34
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0xc], _cstring_use_graph_for_ad
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_input_graph_
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_input_graph_enabled], eax
	mov dword [esp+0xc], _cstring_debug_the_view_i
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_input_graph_1
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_input_graph_debug], eax
	mov dword [esp+0x14], _cstring_which_input_grap
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_aim_input_graph_2
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [aim_input_graph_index], eax
	mov dword [esp+0x14], _cstring_the_vertical_tur
	mov dword [esp+0x10], 0x80
	mov esi, 0x44870000
	mov [esp+0xc], esi
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_turnrate_pit
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_turnrate_pitch], eax
	mov dword [esp+0x14], _cstring_the_turn_rate_up
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x425c0000
	mov dword [esp], _cstring_aim_turnrate_pit1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_turnrate_pitch_ads], eax
	mov dword [esp+0x14], _cstring_the_horizontal_t
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43820000
	mov dword [esp], _cstring_aim_turnrate_yaw
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_turnrate_yaw], eax
	mov dword [esp+0x14], _cstring_the_horizontal_t1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_turnrate_yaw1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_turnrate_yaw_ads], eax
	mov dword [esp+0xc], _cstring_enabledisable_ac
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_accel_turnra
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_accel_turnrate_enabled], eax
	mov dword [esp+0xc], _cstring_turn_on_debuggin
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_accel_turnra1
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_accel_turnrate_debug], eax
	mov dword [esp+0x14], _cstring_the_acceleration
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x457a0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x44960000
	mov dword [esp], _cstring_aim_accel_turnra2
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_accel_turnrate_lerp], eax
	mov dword [esp+0xc], _cstring_slowdown_the_tur
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_slowdown_ena
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_slowdown_enabled], eax
	mov dword [esp+0xc], _cstring_turn_on_debuggin1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_slowdown_deb
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_slowdown_debug], eax
	mov dword [esp+0x14], _cstring_the_screen_width
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_slowdown_reg
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_region_width], eax
	mov dword [esp+0x14], _cstring_the_screen_heigh
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43f00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_slowdown_reg1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_region_height], eax
	mov dword [esp+0x14], _cstring_the_vertical_aim
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov edi, 0x3ecccccd
	mov [esp+0x4], edi
	mov dword [esp], _cstring_aim_slowdown_pit
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_pitch_scale], eax
	mov dword [esp+0x14], _cstring_the_vertical_aim1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov esi, 0x3f000000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_aim_slowdown_pit1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_pitch_scale_ads], eax
	mov dword [esp+0x14], _cstring_the_horizontal_a
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_aim_slowdown_yaw
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_yaw_scale], eax
	mov dword [esp+0x14], _cstring_the_horizontal_a1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_aim_slowdown_yaw1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_slowdown_yaw_scale_ads], eax
	mov dword [esp+0xc], _cstring_turn_on_auto_aim
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_autoaim_enab
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_autoaim_enabled], eax
	mov dword [esp+0xc], _cstring_turn_on_auto_aim1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_autoaim_debu
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_autoaim_debug], eax
	mov dword [esp+0x14], _cstring_the_rate_in_degr
	mov dword [esp+0x10], 0x80
	mov edi, 0x42c80000
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov esi, 0x42200000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_aim_autoaim_lerp
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_autoaim_lerp], eax
	mov dword [esp+0x14], _cstring_the_width_of_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43200000
	mov dword [esp], _cstring_aim_autoaim_regi
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_autoaim_region_width], eax
	mov dword [esp+0x14], _cstring_the_height_of_th
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43f00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42f00000
	mov dword [esp], _cstring_aim_autoaim_regi1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_autoaim_region_height], eax
	mov dword [esp+0xc], _cstring_turn_on_auto_mel
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_automelee_en
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_automelee_enabled], eax
	mov dword [esp+0xc], _cstring_turn_on_auto_mel1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_automelee_de
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_automelee_debug], eax
	mov dword [esp+0x14], _cstring_the_rate_in_degr1
	mov dword [esp+0x10], 0x80
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_aim_automelee_le
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_automelee_lerp], eax
	mov dword [esp+0x14], _cstring_the_width_of_the1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43a00000
	mov dword [esp], _cstring_aim_automelee_re
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_automelee_region_width], eax
	mov dword [esp+0x14], _cstring_the_height_of_th1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43f00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43700000
	mov dword [esp], _cstring_aim_automelee_re1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_automelee_region_height], eax
	mov dword [esp+0x14], _cstring_the_range_of_the
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x437f0000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43000000
	mov dword [esp], _cstring_aim_automelee_ra
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_automelee_range], eax
	mov dword [esp+0xc], _cstring_aim_lock_on_help
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_lockon_enabl
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_lockon_enabled], eax
	mov dword [esp+0xc], _cstring_turn_on_debuggin2
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_aim_lockon_debug
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_lockon_debug], eax
	mov dword [esp+0x14], _cstring_the_amount_of_st
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3d4ccccd
	mov dword [esp], _cstring_aim_lockon_defle
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_lockon_deflection], eax
	mov dword [esp+0x14], _cstring_the_amount_of_ai
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3f19999a
	mov dword [esp], _cstring_aim_lockon_stren
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_lockon_strength], eax
	mov dword [esp+0x14], _cstring_the_width_of_the2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x44200000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_lockon_regio
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_lockon_region_width], eax
	mov dword [esp+0x14], _cstring_the_height_of_th2
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x43f00000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x42b40000
	mov dword [esp], _cstring_aim_lockon_regio1
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [aim_lockon_region_height], eax
	mov dword [esp+0xc], _cstring_scale_the_influe
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_aim_scale_view_a
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [aim_scale_view_axis], eax
	xor ebx, ebx
	lea edi, [ebp-0x98]
	mov esi, aaInputGraph
_Z14AimAssist_Initi_10:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_aim_assistview_i
	mov dword [esp+0x4], 0x80
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x8], 0x3f800000
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z15GraphFloat_LoadP10GraphFloatPKcf
	add ebx, 0x1
	add esi, 0x148
	cmp ebx, 0x4
	jnz _Z14AimAssist_Initi_10
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;AimAssist_Setup(int)
_Z15AimAssist_Setupi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	shl edi, 0x2
	mov eax, [ebp+0x8]
	lea ebx, [edi+eax]
	lea ebx, [ebx+ebx*4]
	lea ebx, [eax+ebx*4]
	lea ebx, [ebx+ebx*8]
	shl ebx, 0x2
	lea esi, [ebx+aaGlobArray]
	mov dword [esp+0x8], 0xe34
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov byte [ebx+aaGlobArray], 0x1
	mov eax, 0x3f800000
	mov [esi+0x60], eax
	mov [esi+0x64], eax
	shl dword [ebp+0x8], 0x6
	add edi, [ebp+0x8]
	add edi, scrPlaceView
	mov eax, [edi+0x28]
	mov [esi+0x74], eax
	mov eax, [edi+0x2c]
	mov [esi+0x78], eax
	mov dword [esi+0xe00], 0x3ff
	mov dword [esi+0xe18], 0x3ff
	mov dword [esi+0xe30], 0x3ff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;AimAssist_DrawDebugOverlay(int)
_Z26AimAssist_DrawDebugOverlayi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	lea eax, [eax+eax*8]
	shl eax, 0x2
	lea esi, [eax+aaGlobArray]
	cmp byte [eax+aaGlobArray], 0x0
	jz _Z26AimAssist_DrawDebugOverlayi_10
	lea edi, [esi+0x4]
	mov eax, [aim_slowdown_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z26AimAssist_DrawDebugOverlayi_20
	mov eax, [aim_autoaim_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z26AimAssist_DrawDebugOverlayi_30
_Z26AimAssist_DrawDebugOverlayi_70:
	mov eax, [aim_automelee_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z26AimAssist_DrawDebugOverlayi_40
_Z26AimAssist_DrawDebugOverlayi_60:
	mov eax, [aim_lockon_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z26AimAssist_DrawDebugOverlayi_50
_Z26AimAssist_DrawDebugOverlayi_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26AimAssist_DrawDebugOverlayi_50:
	mov edx, cgArray
	add edx, 0x4613c
	mov ecx, red.137162
	mov eax, ebx
	call _Z21AimAssist_DrawTargetsiPK13playerState_sPKf
	movss xmm2, dword [esi+0x74]
	movaps xmm3, xmm2
	mulss xmm3, [edi+0x18]
	movss xmm0, dword [esi+0x78]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x1c]
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x24], eax
	mov dword [esp+0x20], green.137163
	mov eax, 0x3f800000
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm3
	subss xmm0, xmm1
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [esp+0x4], xmm0
	subss xmm2, xmm3
	mulss xmm2, xmm1
	movss [esp], xmm2
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26AimAssist_DrawDebugOverlayi_40:
	mov edx, cgArray
	add edx, 0x4613c
	mov ecx, red.137162
	mov eax, ebx
	call _Z21AimAssist_DrawTargetsiPK13playerState_sPKf
	movss xmm2, dword [esi+0x74]
	movaps xmm3, xmm2
	mulss xmm3, [edi+0x10]
	movss xmm0, dword [esi+0x78]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x14]
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x24], eax
	mov dword [esp+0x20], green.137163
	mov eax, 0x3f800000
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm3
	subss xmm0, xmm1
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [esp+0x4], xmm0
	subss xmm2, xmm3
	mulss xmm2, xmm1
	movss [esp], xmm2
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	mov eax, [aim_lockon_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z26AimAssist_DrawDebugOverlayi_10
	jmp _Z26AimAssist_DrawDebugOverlayi_50
_Z26AimAssist_DrawDebugOverlayi_30:
	mov edx, cgArray
	add edx, 0x4613c
	mov ecx, red.137162
	mov eax, ebx
	call _Z21AimAssist_DrawTargetsiPK13playerState_sPKf
	movss xmm2, dword [esi+0x74]
	movaps xmm3, xmm2
	mulss xmm3, [edi+0x8]
	movss xmm0, dword [esi+0x78]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0xc]
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x24], eax
	mov dword [esp+0x20], green.137163
	mov eax, 0x3f800000
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm3
	subss xmm0, xmm1
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [esp+0x4], xmm0
	subss xmm2, xmm3
	mulss xmm2, xmm1
	movss [esp], xmm2
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	mov eax, [aim_automelee_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z26AimAssist_DrawDebugOverlayi_60
	jmp _Z26AimAssist_DrawDebugOverlayi_40
_Z26AimAssist_DrawDebugOverlayi_20:
	mov edx, cgArray
	add edx, 0x4613c
	mov ecx, red.137162
	mov eax, ebx
	call _Z21AimAssist_DrawTargetsiPK13playerState_sPKf
	movss xmm2, dword [esi+0x74]
	movaps xmm3, xmm2
	mulss xmm3, [esi+0x4]
	movss xmm0, dword [esi+0x78]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x4]
	mov eax, cgMedia
	mov eax, [eax]
	mov [esp+0x24], eax
	mov dword [esp+0x20], green.137163
	mov eax, 0x3f800000
	mov [esp+0x1c], eax
	mov [esp+0x18], eax
	xor eax, eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm3
	subss xmm0, xmm1
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [esp+0x4], xmm0
	subss xmm2, xmm3
	mulss xmm2, xmm1
	movss [esp], xmm2
	call _Z25CL_DrawStretchPicPhysicalffffffffPKfP8Material
	mov eax, [aim_autoaim_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z26AimAssist_DrawDebugOverlayi_70
	jmp _Z26AimAssist_DrawDebugOverlayi_30


;AimAssist_UpdateMouseInput(AimInput const*, AimOutput*)
_Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x4]
	mov [esi], eax
	mov eax, [ebx+0x10]
	mov [esi+0x4], eax
	mov edx, [ebx+0x28]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	cmp byte [eax*4+aaGlobArray], 0x0
	jnz _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_10
	pop ebx
	pop esi
	pop ebp
	ret
_Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_10:
	mov eax, ebx
	call _Z26AimAssist_UpdateTweakablesPK8AimInput
	mov edx, [ebx+0x28]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea edx, [eax*4+aaGlobArray]
	mov eax, [ebx+0x2c]
	mov eax, [eax+0xf4]
	mov [edx+0x68], eax
	mov eax, [ebx+0x2c]
	test dword [eax+0xb0], 0x300
	jz _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_20
	test byte [ebx+0x25], 0x8
	jnz _Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_30
_Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_20:
	mov edx, esi
	mov eax, ebx
	call _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput
	mov edx, esi
	mov eax, ebx
	pop ebx
	pop esi
	pop ebp
	jmp _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput
_Z26AimAssist_UpdateMouseInputPK8AimInputP9AimOutput_30:
	mov dword [edx+0x68], 0x3f800000
	mov edx, esi
	mov eax, ebx
	call _Z24AimAssist_ApplyAutoMeleePK8AimInputP9AimOutput
	mov edx, esi
	mov eax, ebx
	pop ebx
	pop esi
	pop ebp
	jmp _Z26AimAssist_ApplyMeleeChargePK8AimInputP9AimOutput


;AimAssist_UpdateScreenTargets(int, float const*, float const*, float, float)
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1dc
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x8]
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	lea eax, [eax+eax*8]
	shl eax, 0x2
	lea edi, [eax+aaGlobArray]
	cmp byte [eax+aaGlobArray], 0x0
	jnz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_10
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_20:
	add esp, 0x1dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_10:
	lea ebx, [edi+0x24]
	mov eax, [edx]
	mov [edi+0x24], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	lea edx, [edi+0x30]
	mov eax, [ecx]
	mov [edi+0x30], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	lea esi, [edi+0x3c]
	mov [esp+0x4], esi
	mov [esp], ecx
	call _Z12AnglesToAxisPKfPA3_f
	movss xmm0, dword [ebp+0x18]
	divss xmm0, dword [_float_0_47780272]
	movss [edi+0x60], xmm0
	mov eax, cg_fov
	mov eax, [eax]
	cvtss2sd xmm0, [eax+0xc]
	mulsd xmm0, [_double_0_01745329]
	mulsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call tan
	fstp qword [ebp-0x1a8]
	cvtsd2ss xmm0, [ebp-0x1a8]
	mulss xmm0, [_float_0_75000000]
	divss xmm0, dword [ebp+0x18]
	movss [edi+0x64], xmm0
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x174]
	mov [esp], eax
	call _Z15MatrixForViewerPA4_fPKfPA3_S1_
	mov ebx, 0x3f800000
	mov [esp+0xc], ebx
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [esp+0x4], xmm1
	lea eax, [ebp-0x134]
	mov [esp], eax
	call _Z25InfinitePerspectiveMatrixPA4_ffff
	lea edx, [ebp-0xf4]
	mov [esp+0x8], edx
	lea eax, [ebp-0x134]
	mov [esp+0x4], eax
	lea edx, [ebp-0x174]
	mov [esp], edx
	call _Z16MatrixMultiply44PA4_KfS1_PA4_f
	lea eax, [edi+0x7c]
	mov [ebp-0x1ac], eax
	mov [esp+0x4], eax
	lea edx, [ebp-0xf4]
	mov [esp], edx
	call _Z17MatrixTranspose44PKfPf
	lea eax, [edi+0xbc]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1ac]
	mov [esp], eax
	call _Z15MatrixInverse44PKfPf
	mov dword [edi+0xdfc], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29AimTarget_GetClientTargetListiPPK9AimTargetPi
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_20
	mov dword [ebp-0x1a0], 0x0
	mov dword [ebp-0x17c], 0x0
	lea eax, [edi+0xac]
	mov [ebp-0x1b8], eax
	lea edx, [edi+0x8c]
	mov [ebp-0x1bc], edx
	lea eax, [edi+0x9c]
	mov [ebp-0x1c0], eax
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_30
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40:
	add dword [ebp-0x1a0], 0x1
	add dword [ebp-0x17c], 0x2c
	mov edx, [ebp-0x1a0]
	cmp edx, [ebp-0x1c]
	jge _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_20
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_30:
	mov esi, [ebp-0x17c]
	add esi, [ebp-0x20]
	mov eax, [esi]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	add eax, edx
	mov [ebp-0x19c], eax
	cmp byte [eax+0x1c0], 0x0
	jz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	lea ebx, [esi+0x8]
	mov [ebp-0x198], ebx
	mov eax, [esi+0x8]
	mov [ebp-0x50], eax
	lea eax, [esi+0xc]
	mov [ebp-0x194], eax
	mov eax, [esi+0xc]
	mov [ebp-0x4c], eax
	lea edx, [esi+0x10]
	mov [ebp-0x190], edx
	mov eax, [esi+0x10]
	mov [ebp-0x48], eax
	lea ebx, [esi+0x14]
	mov [ebp-0x18c], ebx
	mov eax, [esi+0x14]
	mov [ebp-0x44], eax
	lea eax, [esi+0x18]
	mov [ebp-0x188], eax
	mov eax, [esi+0x18]
	mov [ebp-0x40], eax
	lea edx, [esi+0x1c]
	mov [ebp-0x184], edx
	mov eax, [esi+0x1c]
	mov [ebp-0x3c], eax
	lea ebx, [ebp-0x80]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x19c]
	add eax, 0x28
	mov [esp], eax
	call _Z12AnglesToAxisPKfPA3_f
	mov eax, [ebp-0x19c]
	add eax, 0x1c
	mov [ebp-0x1b4], eax
	mov edx, [ebp-0x19c]
	mov eax, [edx+0x1c]
	mov [ebp-0x5c], eax
	mov ebx, [ebp-0x1b4]
	mov eax, [ebx+0x4]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x38]
	mov [esp], edx
	call ClearBounds
	xor ebx, ebx
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_70:
	mov edx, ebx
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	mov eax, [ebp+eax*4-0x50]
	mov [ebp-0x174], eax
	mov edx, ebx
	sar edx, 1
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	mov eax, [ebp+eax*4-0x4c]
	mov [ebp-0x170], eax
	mov edx, ebx
	sar edx, 0x2
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	mov eax, [ebp+eax*4-0x48]
	mov [ebp-0x16c], eax
	lea eax, [ebp-0xf4]
	mov [esp+0x8], eax
	lea edx, [ebp-0x80]
	mov [esp+0x4], edx
	lea eax, [ebp-0x174]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	movss xmm3, dword [ebp-0xf4]
	movss xmm5, dword [ebp-0xf0]
	movss xmm6, dword [ebp-0xec]
	movaps xmm4, xmm3
	mulss xmm4, [edi+0xac]
	movaps xmm0, xmm5
	mov edx, [ebp-0x1b8]
	mulss xmm0, [edx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x8]
	addss xmm4, xmm0
	addss xmm4, [edx+0xc]
	ucomiss xmm4, [_float_0_00000000]
	jp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_50
	jbe _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_60
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_50:
	movaps xmm2, xmm3
	mulss xmm2, [edi+0x8c]
	movaps xmm0, xmm5
	mov eax, [ebp-0x1bc]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	addss xmm2, [eax+0xc]
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x9c]
	movaps xmm0, xmm5
	mov edx, [ebp-0x1c0]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	addss xmm1, [edx+0xc]
	mulss xmm3, [edi+0x7c]
	mov eax, [ebp-0x1ac]
	mulss xmm5, [eax+0x4]
	addss xmm3, xmm5
	mulss xmm6, [eax+0x8]
	addss xmm3, xmm6
	addss xmm3, [eax+0xc]
	divss xmm3, xmm4
	movss [ebp-0x134], xmm3
	divss xmm2, xmm4
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x130], xmm2
	divss xmm1, xmm4
	movss [ebp-0x12c], xmm1
	lea edx, [ebp-0x2c]
	mov [esp+0x8], edx
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edx, [ebp-0x134]
	mov [esp], edx
	call _Z16AddPointToBoundsPKfPfS1_
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_60:
	add ebx, 0x1
	cmp ebx, 0x8
	jnz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_70
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x2c]
	ucomiss xmm2, xmm3
	jae _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	movss xmm4, dword [ebp-0x34]
	movss xmm5, dword [ebp-0x28]
	ucomiss xmm4, xmm5
	jae _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	movss xmm6, dword [ebp-0x30]
	movss xmm7, dword [ebp-0x24]
	ucomiss xmm6, xmm7
	jae _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	ucomiss xmm2, [_float_1_00000000]
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	ucomiss xmm4, [_float_1_00000000]
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	ucomiss xmm6, [_float_1_00000000]
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm3
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	ucomiss xmm0, xmm5
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	pxor xmm1, xmm1
	ucomiss xmm1, xmm7
	ja _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	movaps xmm0, xmm2
	subss xmm0, [_float_1_00000000]
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm0, xmm1
	movss [ebp-0x1cc], xmm0
	movss xmm0, dword [_float_1_00000000]
	andnps xmm1, xmm0
	movss xmm0, dword [ebp-0x1cc]
	orps xmm1, xmm0
	movss xmm0, dword [_float__1_00000000]
	subss xmm0, xmm2
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm2, dword [_float__1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm4
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss xmm0, dword [_float__1_00000000]
	subss xmm0, xmm4
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm2, dword [_float__1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm6
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm6
	andps xmm1, xmm0
	movss xmm2, dword [_float_1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	pxor xmm1, xmm1
	subss xmm1, xmm6
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	pxor xmm1, xmm1
	orps xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm3
	subss xmm0, [_float_1_00000000]
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss xmm0, dword [_float__1_00000000]
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm2, dword [_float__1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x2c], xmm0
	movaps xmm0, xmm5
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm5
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss xmm0, dword [_float__1_00000000]
	subss xmm0, xmm5
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	movss xmm2, dword [_float__1_00000000]
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm7
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm7
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	pxor xmm0, xmm0
	subss xmm0, xmm7
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	andps xmm1, xmm2
	pxor xmm2, xmm2
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x24], xmm0
	mov eax, [esi]
	mov [ebp-0xb4], eax
	movss xmm3, dword [ebp-0x38]
	movss [ebp-0xb0], xmm3
	mov eax, [ebp-0x34]
	mov [ebp-0xac], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0xa8], eax
	mov eax, [ebp-0x28]
	mov [ebp-0xa4], eax
	lea edx, [esi+0x20]
	mov eax, [esi+0x20]
	mov [ebp-0x94], eax
	mov eax, [edx+0x4]
	mov [ebp-0x90], eax
	mov eax, [edx+0x8]
	mov [ebp-0x8c], eax
	mov eax, [ebp-0x19c]
	cmp dword [eax+0xd0], 0x1
	jz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_80
	mov edx, [ebp-0x194]
	movss xmm2, dword [edx]
	mov ebx, [ebp-0x188]
	addss xmm2, [ebx]
	movss xmm4, dword [_float_0_50000000]
	mulss xmm2, xmm4
	mov eax, [ebp-0x190]
	movss xmm1, dword [eax]
	mov edx, [ebp-0x184]
	addss xmm1, [edx]
	mulss xmm1, xmm4
	mov ebx, [ebp-0x198]
	movss xmm0, dword [ebx]
	mov eax, [ebp-0x18c]
	addss xmm0, [eax]
	mulss xmm0, xmm4
	mov edx, [ebp-0x19c]
	addss xmm0, [edx+0x1c]
	movss [ebp-0xa0], xmm0
	mov ebx, [ebp-0x1b4]
	addss xmm2, [ebx+0x4]
	movss [ebp-0x9c], xmm2
	addss xmm1, [ebx+0x8]
	movss [ebp-0x98], xmm1
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_110:
	mov eax, [esi+0x4]
	mov [ebp-0x88], eax
	movaps xmm1, xmm3
	addss xmm1, [ebp-0x2c]
	movss xmm0, dword [ebp-0x34]
	addss xmm0, [ebp-0x28]
	mulss xmm1, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss [ebp-0x84], xmm1
	mov eax, [edi+0xdfc]
	mov [ebp-0x1b0], eax
	test eax, eax
	jg _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_90
	mov dword [ebp-0x180], 0x0
	mov ecx, 0x1
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_170:
	mov eax, [ebp-0x180]
	lea esi, [eax+eax*2]
	lea esi, [eax+esi*4]
	lea esi, [edi+esi*4+0xf0]
	lea ebx, [esi+0xc]
	mov eax, [ebp-0x1b0]
	sub eax, [ebp-0x180]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4+0xfc]
	mov [esp], eax
	call memmove
	mov eax, [ebp-0xb4]
	mov [esi+0xc], eax
	mov eax, [ebp-0xb0]
	mov [ebx+0x4], eax
	mov eax, [ebp-0xac]
	mov [ebx+0x8], eax
	mov eax, [ebp-0xa8]
	mov [ebx+0xc], eax
	mov eax, [ebp-0xa4]
	mov [ebx+0x10], eax
	mov eax, [ebp-0xa0]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x9c]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x98]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x94]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x90]
	mov [ebx+0x24], eax
	mov eax, [ebp-0x8c]
	mov [ebx+0x28], eax
	mov eax, [ebp-0x88]
	mov [ebx+0x2c], eax
	mov eax, [ebp-0x84]
	mov [ebx+0x30], eax
	add dword [edi+0xdfc], 0x1
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_80:
	mov eax, scr_const
	movzx ebx, word [eax+0x4]
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov edx, [ebp-0x19c]
	mov eax, [edx+0xcc]
	mov [esp], eax
	call _Z17Com_GetClientDObjii
	mov edx, eax
	test eax, eax
	jz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	lea eax, [ebp-0xa0]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov eax, [ebp-0x19c]
	mov [esp], eax
	call _Z21CG_DObjGetWorldTagPosPK7cpose_tP6DObj_sjPf
	test eax, eax
	jnz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_100
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_aimtarget_gettag
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_100:
	movss xmm3, dword [ebp-0x38]
	movss xmm4, dword [_float_0_50000000]
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_110
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_90:
	mov ecx, [ebp-0x1b0]
	mov dword [ebp-0x180], 0x0
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_120
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_140:
	add edx, 0x1
	mov [ebp-0x180], edx
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_150:
	cmp [ebp-0x180], ecx
	jge _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_130
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_120:
	mov ebx, [ebp-0x180]
	lea edx, [ecx+ebx]
	mov eax, edx
	shr eax, 0x1f
	lea edx, [eax+edx]
	sar edx, 1
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	movss xmm0, dword [edi+eax*4+0x12c]
	ucomiss xmm0, xmm1
	jbe _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_140
	mov ecx, edx
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_150
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_130:
	cmp dword [ebp-0x180], 0x3f
	jg _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_40
	cmp dword [ebp-0x1b0], 0x40
	jnz _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_160
	mov dword [ebp-0x1b0], 0x3f
	mov dword [edi+0xdfc], 0x3f
_Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_160:
	mov ecx, [ebp-0x180]
	add ecx, 0x1
	jmp _Z29AimAssist_UpdateScreenTargetsiPKfS0_ff_170
	nop


;AimAssist_ClearEntityReference(int, int)
_Z30AimAssist_ClearEntityReferenceii:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea eax, [eax*4+aaGlobArray]
	cmp [eax+0xe00], ecx
	jz _Z30AimAssist_ClearEntityReferenceii_10
_Z30AimAssist_ClearEntityReferenceii_50:
	cmp ecx, [eax+0xe18]
	jz _Z30AimAssist_ClearEntityReferenceii_20
_Z30AimAssist_ClearEntityReferenceii_40:
	cmp ecx, [eax+0xe30]
	jz _Z30AimAssist_ClearEntityReferenceii_30
	pop ebp
	ret
_Z30AimAssist_ClearEntityReferenceii_30:
	mov dword [eax+0xe30], 0x3ff
	pop ebp
	ret
_Z30AimAssist_ClearEntityReferenceii_20:
	mov dword [eax+0xe18], 0x3ff
	jmp _Z30AimAssist_ClearEntityReferenceii_40
_Z30AimAssist_ClearEntityReferenceii_10:
	mov dword [eax+0xe00], 0x3ff
	jmp _Z30AimAssist_ClearEntityReferenceii_50


;AimAssist_GetScreenTargetCount(int)
_Z30AimAssist_GetScreenTargetCounti:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [edx+edx*4]
	lea edx, [eax+edx*4]
	lea edx, [edx+edx*8]
	mov eax, [edx*4+aaGlobArray+0xdfc]
	pop ebp
	ret
	nop


;AimAssist_GetScreenTargetEntity(int, int)
_Z31AimAssist_GetScreenTargetEntityii:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [edx+eax*4]
	lea eax, [eax+eax*8]
	lea edx, [ecx+ecx*2]
	lea edx, [ecx+edx*4]
	lea edx, [edx*4+aaGlobArray]
	mov eax, [edx+eax*4+0xfc]
	pop ebp
	ret
	nop


;Initialized global or static variables of aim_assist:
SECTION .data


;Initialized constant data of aim_assist:
SECTION .rdata
green.137163: dd 0x0, 0x3f800000, 0x0, 0x3e800000
red.137162: dd 0x3f800000, 0x0, 0x0, 0x3e800000


;Zero initialized global or static variables of aim_assist:
SECTION .bss
aim_lockon_debug: resb 0x4
aim_automelee_debug: resb 0x4
aim_autoaim_debug: resb 0x4
aim_slowdown_debug: resb 0x14
aaGlobArray: resb 0xe34
aim_automelee_range: resb 0x4
aim_lockon_region_height: resb 0x4
aim_lockon_region_width: resb 0x4
aim_automelee_region_height: resb 0x4
aim_automelee_region_width: resb 0x4
aim_autoaim_region_height: resb 0x4
aim_autoaim_region_width: resb 0x4
aim_slowdown_region_height: resb 0x4
aim_slowdown_region_width: resb 0x4
aim_automelee_lerp: resb 0x4
aim_automelee_enabled: resb 0x4
aim_accel_turnrate_debug: resb 0x4
aim_accel_turnrate_lerp: resb 0x4
aim_accel_turnrate_enabled: resb 0x4
aim_turnrate_yaw: resb 0x4
aim_turnrate_yaw_ads: resb 0x4
aim_turnrate_pitch: resb 0x4
aim_turnrate_pitch_ads: resb 0x4
aim_scale_view_axis: resb 0x4
aim_input_graph_debug: resb 0x20
aaInputGraph: resb 0x520
aim_input_graph_index: resb 0x4
aim_input_graph_enabled: resb 0x4
aim_slowdown_yaw_scale: resb 0x4
aim_slowdown_yaw_scale_ads: resb 0x4
aim_slowdown_pitch_scale: resb 0x4
aim_slowdown_pitch_scale_ads: resb 0x4
aim_slowdown_enabled: resb 0x4
aim_autoaim_lerp: resb 0x4
aim_autoaim_enabled: resb 0x4
aim_lockon_strength: resb 0x4
aim_lockon_deflection: resb 0x4
aim_lockon_enabled: resb 0x74


;All cstrings:
SECTION .rdata
_cstring_pri_i:		db "Pri: %i",0
_cstring_ent_i:		db "Ent: %i",0
_cstring_dist_2f:		db "Dist: %.2f",0
_cstring_speed_2f:		db "Speed: %.2f",0
_cstring_xhairdist_4f:		db "XHairDist: %.4f",0
_cstring_use_graph_for_ad:		db "Use graph for adjusting view input",0
_cstring_aim_input_graph_:		db "aim_input_graph_enabled",0
_cstring_debug_the_view_i:		db "Debug the view input graphs",0
_cstring_aim_input_graph_1:		db "aim_input_graph_debug",0
_cstring_which_input_grap:		db "Which input graph to use",0
_cstring_aim_input_graph_2:		db "aim_input_graph_index",0
_cstring_the_vertical_tur:		db "The vertical turn rate for aim assist when firing from the hip",0
_cstring_aim_turnrate_pit:		db "aim_turnrate_pitch",0
_cstring_the_turn_rate_up:		db "The turn rate up and down for aim assist when aiming down the sight",0
_cstring_aim_turnrate_pit1:		db "aim_turnrate_pitch_ads",0
_cstring_the_horizontal_t:		db "The horizontal turn rate for aim assist when firing from the hip",0
_cstring_aim_turnrate_yaw:		db "aim_turnrate_yaw",0
_cstring_the_horizontal_t1:		db "The horizontal turn rate for aim assist when aiming down the sight",0
_cstring_aim_turnrate_yaw1:		db "aim_turnrate_yaw_ads",0
_cstring_enabledisable_ac:		db "Enable/disable acceleration of the turnrates",0
_cstring_aim_accel_turnra:		db "aim_accel_turnrate_enabled",0
_cstring_turn_on_debuggin:		db "Turn on debugging info for the acceleration",0
_cstring_aim_accel_turnra1:		db "aim_accel_turnrate_debug",0
_cstring_the_acceleration:		db "The acceleration of the turnrates",0
_cstring_aim_accel_turnra2:		db "aim_accel_turnrate_lerp",0
_cstring_slowdown_the_tur:		db "Slowdown the turn rate when the cross hair passes over a target",0
_cstring_aim_slowdown_ena:		db "aim_slowdown_enabled",0
_cstring_turn_on_debuggin1:		db "Turn on debugging info for aim slowdown",0
_cstring_aim_slowdown_deb:		db "aim_slowdown_debug",0
_cstring_the_screen_width:		db "The screen width of the aim slowdown region",0
_cstring_aim_slowdown_reg:		db "aim_slowdown_region_width",0
_cstring_the_screen_heigh:		db "The screen height of the aim assist slowdown region",0
_cstring_aim_slowdown_reg1:		db "aim_slowdown_region_height",0
_cstring_the_vertical_aim:		db "The vertical aim assist slowdown ratio from the hip",0
_cstring_aim_slowdown_pit:		db "aim_slowdown_pitch_scale",0
_cstring_the_vertical_aim1:		db "The vertical aim assist slowdown ratio when aiming down the sight",0
_cstring_aim_slowdown_pit1:		db "aim_slowdown_pitch_scale_ads",0
_cstring_the_horizontal_a:		db "The horizontal aim assist slowdown ratio from the hip",0
_cstring_aim_slowdown_yaw:		db "aim_slowdown_yaw_scale",0
_cstring_the_horizontal_a1:		db "The horizontal aim assist slowdown ratio when aiming down the sight",0
_cstring_aim_slowdown_yaw1:		db "aim_slowdown_yaw_scale_ads",0
_cstring_turn_on_auto_aim:		db "Turn on auto aim",0
_cstring_aim_autoaim_enab:		db "aim_autoaim_enabled",0
_cstring_turn_on_auto_aim1:		db "Turn on auto aim debugging",0
_cstring_aim_autoaim_debu:		db "aim_autoaim_debug",0
_cstring_the_rate_in_degr:		db "The rate in degrees per second that the auto aim will converge to its target",0
_cstring_aim_autoaim_lerp:		db "aim_autoaim_lerp",0
_cstring_the_width_of_the:		db "The width of the auto aim region in virtual screen coordinates (0 - 640)",0
_cstring_aim_autoaim_regi:		db "aim_autoaim_region_width",0
_cstring_the_height_of_th:		db "The height of the auto aim region in virtual screen coordinates (0 - 480)",0
_cstring_aim_autoaim_regi1:		db "aim_autoaim_region_height",0
_cstring_turn_on_auto_mel:		db "Turn on auto melee",0
_cstring_aim_automelee_en:		db "aim_automelee_enabled",0
_cstring_turn_on_auto_mel1:		db "Turn on auto melee debugging",0
_cstring_aim_automelee_de:		db "aim_automelee_debug",0
_cstring_the_rate_in_degr1:		db "The rate in degrees per second that the auto melee will converge to its target",0
_cstring_aim_automelee_le:		db "aim_automelee_lerp",0
_cstring_the_width_of_the1:		db "The width of the auto melee region in virtual screen coordinates (0 - 640)",0
_cstring_aim_automelee_re:		db "aim_automelee_region_width",0
_cstring_the_height_of_th1:		db "The height of the auto melee region in virtual screen coordinates (0 - 480)",0
_cstring_aim_automelee_re1:		db "aim_automelee_region_height",0
_cstring_the_range_of_the:		db "The range of the auto melee",0
_cstring_aim_automelee_ra:		db "aim_automelee_range",0
_cstring_aim_lock_on_help:		db "Aim lock on helps the player to stay on target",0
_cstring_aim_lockon_enabl:		db "aim_lockon_enabled",0
_cstring_turn_on_debuggin2:		db "Turn on debugging info for aim lock on",0
_cstring_aim_lockon_debug:		db "aim_lockon_debug",0
_cstring_the_amount_of_st:		db "The amount of stick deflection for the lockon to activate",0
_cstring_aim_lockon_defle:		db "aim_lockon_deflection",0
_cstring_the_amount_of_ai:		db "The amount of aim assistance given by the target lock on",0
_cstring_aim_lockon_stren:		db "aim_lockon_strength",0
_cstring_the_width_of_the2:		db "The width of the auto aim region in virtual screen coordinates(0-640)",0
_cstring_aim_lockon_regio:		db "aim_lockon_region_width",0
_cstring_the_height_of_th2:		db "The height of the auto aim region in virtual screen coordinates(0-480)",0
_cstring_aim_lockon_regio1:		db "aim_lockon_region_height",0
_cstring_scale_the_influe:		db "Scale the influence of each input axis so that the major axis has more influence on the control",0
_cstring_aim_scale_view_a:		db "aim_scale_view_axis",0
_cstring_aim_assistview_i:		db "aim_assist/view_input_%d.graph",0
_cstring_aimtarget_gettag:		db "AimTarget_GetTagPos: Cannot find tag [%s] on entity",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_10_00000000:		dd 0x41200000	; 10
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_360_00000000:		dd 0x43b40000	; 360
_float_0_47780272:		dd 0x3ef4a28f	; 0.477803
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_0_75000000:		dd 0x3f400000	; 0.75
_float_0_00000000:		dd 0x0	; 0
_float__1_00000000:		dd 0xbf800000	; -1

