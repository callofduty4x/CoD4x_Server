;Imports of bg_animation_mp:
	extern floorf
	extern _Z17AngleNormalize360f
	extern _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf
	extern _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	extern _Z16XAnimSetAnimRateP11XAnimTree_sjf
	extern _Z13XAnimIsLoopedPK7XAnim_sj
	extern _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji
	extern _Z12XAnimSetTimeP11XAnimTree_sjf
	extern _Z16XAnimIsPrimitiveP7XAnim_sj
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z14XAnimGetWeightPK11XAnimTree_sj
	extern _Z18XAnimGetLengthMsecPK7XAnim_sj
	extern _Z12XAnimGetTimePK11XAnimTree_sj
	extern _Z15Com_ParseOnLinePPKc
	extern _Z9I_stricmpPKcS0_
	extern _Z14Com_UngetTokenv
	extern _Z9I_strncatPciPKc
	extern _Z19Com_LoadRawTextFilePKc
	extern memset
	extern _Z20BG_LoadWeaponStringsv
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern _Z19Com_EndParseSessionv
	extern _Z21Com_UnloadRawTextFilePKc
	extern strcpy
	extern tolower
	extern _Z9I_strncmpPKcS0_i
	extern memcpy
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	extern _Z21Scr_PrecacheAnimTreesPFPviEi
	extern _Z16Scr_FindAnimTreePKc
	extern _Z20Scr_EndLoadAnimTreesv
	extern _Z20XAnimGetAnimTreeSizePK7XAnim_s
	extern _Z10I_strncpyzPcPKci
	extern _Z16XAnimGetAnimNamePK7XAnim_sj
	extern _Z14XAnimGetLengthPK7XAnim_sj
	extern _ZN10LargeLocalD1Ev
	extern _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff
	extern _Unwind_Resume
	extern atoi
	extern strstr
	extern vsnprintf
	extern _Z23Com_GetCurrentParseLinev
	extern _Z7ms_randv
	extern _Z15GetLeanFractionf
	extern bg_swingSpeed
	extern _Z15BG_GetWeaponDefj
	extern bg_legYawTolerance
	extern player_move_factor_on_torso
	extern _Z14XAnimClearTreeP11XAnimTree_s
	extern _Z13SL_FindStringPKc
	extern _Z14AnglesSubtractPKfS0_Pf
	extern player_lean_shift_crouch_right
	extern sinf
	extern cosf
	extern player_lean_shift_right
	extern player_lean_rotate_crouch_right
	extern player_lean_rotate_right
	extern player_lean_shift_crouch_left
	extern player_lean_shift_left
	extern player_lean_rotate_crouch_left
	extern player_lean_rotate_left
	extern _Z26BG_GetViewmodelWeaponIndexPK13playerState_s

;Exports of bg_animation_mp:
	global animEventTypesStr
	global animMoveTypesStr
	global animStateStr
	global defineBits
	global animConditionsTable
	global weaponStrings
	global animWeaponClassStr
	global animConditionMountedStr
	global animWeaponPositionStr
	global animStrafeStateStr
	global animPerkStateStr
	global animConditionsStr
	global parseEvent
	global parseMovetype
	global animParseModesStr
	global defineStringsOffset
	global numDefines
	global defineStrings
	global defineStr
	global g_piNumLoadAnims
	global g_pLoadAnims
	global globalScriptData
	global globalFilename
	global animBodyPartsStr
	global _Z14BG_SwingAnglesffffPfPi
	global _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s
	global _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj
	global _Z18BG_ParseConditionsPPKcP16animScriptItem_t
	global _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj
	global _Z11BG_LoadAnimv
	global _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii
	global _Z13BG_LerpOffsetPffS_
	global _Z14BG_IsProneAnimPK12clientInfo_ti
	global _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t
	global _Z17BG_AnimParseErrorPKcz
	global _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii
	global _Z17BG_IndexForStringPKcP16animStringItem_ti
	global _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	global _Z18BG_IsCrouchingAnimPK12clientInfo_ti
	global _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t
	global _Z18BG_SetConditionBitiii
	global _Z19BG_InitWeaponStringiPKc
	global _Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti
	global _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti
	global _Z20BG_InitWeaponStringsv
	global _Z20BG_SetConditionValueiiy
	global _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	global _Z26BG_AnimationIndexForStringPKc
	global _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti
	global _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t
	global _Z8BG_IsAdsPK12clientInfo_ti
	global bgs
	global controller_names


SECTION .text


;BG_SwingAngles(float, float, float, float, float*, int*)
_Z14BG_SwingAnglesffffPfPi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x70
	movss [ebp-0x14], xmm0
	movaps xmm4, xmm1
	movss [ebp-0x18], xmm2
	movss [ebp-0x1c], xmm3
	mov esi, eax
	mov ebx, edx
	mov eax, [edx]
	test eax, eax
	jnz _Z14BG_SwingAnglesffffPfPi_10
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x14]
	mulss xmm0, [_float_0_00277778]
	movss xmm5, dword [_float_0_50000000]
	movaps xmm1, xmm0
	addss xmm1, xmm5
	movss [esp], xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x58], xmm4
	movss [ebp-0x68], xmm5
	call floorf
	fstp dword [ebp-0x20]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x20]
	mulss xmm0, [_float_360_00000000]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	movss xmm5, dword [ebp-0x68]
	jbe _Z14BG_SwingAnglesffffPfPi_20
_Z14BG_SwingAnglesffffPfPi_120:
	mov dword [ebx], 0x1
_Z14BG_SwingAnglesffffPfPi_110:
	mov eax, [ebx]
	test eax, eax
	jnz _Z14BG_SwingAnglesffffPfPi_30
	jmp _Z14BG_SwingAnglesffffPfPi_40
_Z14BG_SwingAnglesffffPfPi_10:
	movss xmm5, dword [_float_0_50000000]
_Z14BG_SwingAnglesffffPfPi_30:
	movss xmm1, dword [ebp-0x14]
	subss xmm1, [esi]
	movss xmm0, dword [_float_0_00277778]
	mulss xmm0, xmm1
	movss [ebp-0x10], xmm0
	addss xmm0, xmm5
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	movss [ebp-0x68], xmm5
	call floorf
	fstp dword [ebp-0x24]
	movss xmm0, dword [ebp-0x10]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [_float_360_00000000]
	movaps xmm2, xmm0
	andps xmm2, [_data16_7fffffff]
	mulss xmm2, [_float_0_05000000]
	movss xmm5, dword [ebp-0x68]
	movaps xmm3, xmm5
	maxss xmm3, xmm2
	movaps xmm2, xmm3
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	movss xmm1, dword [ebp-0x48]
	jb _Z14BG_SwingAnglesffffPfPi_50
	mov eax, [bgs]
	cvtsi2ss xmm1, dword [eax+0x999e4]
	mulss xmm1, xmm2
	mulss xmm1, [ebp-0x1c]
	ucomiss xmm1, xmm0
	jb _Z14BG_SwingAnglesffffPfPi_60
_Z14BG_SwingAnglesffffPfPi_90:
	mov dword [ebx], 0x0
	movaps xmm1, xmm0
_Z14BG_SwingAnglesffffPfPi_100:
	addss xmm1, [esi]
	movss [esp], xmm1
	call _Z17AngleNormalize360f
	fstp dword [esi]
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x14]
	subss xmm1, [esi]
_Z14BG_SwingAnglesffffPfPi_80:
	mulss xmm1, [_float_0_00277778]
	movss [ebp-0xc], xmm1
	addss xmm5, xmm1
	movss [esp], xmm5
	call floorf
	fstp dword [ebp-0x28]
	movss xmm1, dword [ebp-0xc]
	subss xmm1, [ebp-0x28]
	mulss xmm1, [_float_360_00000000]
	ucomiss xmm1, [ebp-0x18]
	ja _Z14BG_SwingAnglesffffPfPi_70
	movss xmm0, dword [ebp-0x18]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe _Z14BG_SwingAnglesffffPfPi_40
	movss xmm3, dword [ebp-0x14]
	addss xmm3, [ebp-0x18]
	movss [esp], xmm3
	call _Z17AngleNormalize360f
	fstp dword [esi]
_Z14BG_SwingAnglesffffPfPi_40:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
_Z14BG_SwingAnglesffffPfPi_50:
	ucomiss xmm3, xmm0
	jbe _Z14BG_SwingAnglesffffPfPi_80
	mov eax, [bgs]
	cvtsi2ss xmm1, dword [eax+0x999e4]
	mulss xmm1, xmm2
	xor dword [ebp-0x1c], 0x80000000
	mulss xmm1, [ebp-0x1c]
	ucomiss xmm0, xmm1
	jae _Z14BG_SwingAnglesffffPfPi_90
_Z14BG_SwingAnglesffffPfPi_60:
	mov dword [ebx], 0x1
	jmp _Z14BG_SwingAnglesffffPfPi_100
_Z14BG_SwingAnglesffffPfPi_20:
	xorps xmm4, [_data16_80000000]
	ucomiss xmm4, xmm0
	jbe _Z14BG_SwingAnglesffffPfPi_110
	jmp _Z14BG_SwingAnglesffffPfPi_120
_Z14BG_SwingAnglesffffPfPi_70:
	movss xmm0, dword [ebp-0x14]
	subss xmm0, [ebp-0x18]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [esi]
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;BG_RunLerpFrameRate(int, clientInfo_t*, lerpFrame_t*, int, entityState_s const*)
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x54], edx
	mov esi, ecx
	mov ebx, [ebp+0x8]
	mov edx, [ecx+0x14]
	test edx, edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_10
	test byte [edx+0x50], 0x2
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_20
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_10:
	mov byte [ebp-0x4d], 0x0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_280:
	mov ecx, [ebp-0x54]
	mov ecx, [ecx+0x4a8]
	mov [ebp-0x4c], ecx
	cmp [esi+0x10], ebx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_30
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_460:
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov eax, [edi]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999f8]
	mov [ebp-0x28], eax
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_40
	mov eax, [ebp+0xc]
	mov eax, [eax+0x8]
	shr eax, 0x13
	and eax, 0x1
	mov [ebp-0x48], eax
	mov edx, [esi+0x14]
	mov [ebp-0x3c], edx
	mov ecx, [esi+0x10]
	mov [ebp-0x20], ecx
	mov eax, [ebp-0x54]
	add eax, 0x37c
	cmp esi, eax
	setz al
	movzx eax, al
	mov [ebp-0x34], eax
	test edx, edx
	setz byte [ebp-0x19]
	mov [esi+0x10], ebx
	and bh, 0xfd
	mov [ebp-0x24], ebx
	mov eax, [bgs]
	mov edx, [eax+0xc000]
	cmp ebx, edx
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_50
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_480:
	mov ebx, [ebp-0x54]
	mov ebx, [ebx+0x4a8]
	mov [ebp-0x30], ebx
	mov edi, [eax+0x999b8]
	mov [ebp-0x2c], edi
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_60
	mov edx, [ebp-0x24]
	lea edx, [edx+edx*2]
	shl edx, 0x5
	mov [ebp-0x58], edx
	add eax, edx
	mov [ebp-0x40], eax
	mov [esi+0x14], eax
	mov eax, [eax+0x40]
	mov [esi+0x18], eax
	mov ecx, [globalScriptData]
	mov ebx, [ebp-0x24]
	cmp ebx, [ecx+0xc000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_70
	mov edi, edx
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_470:
	mov eax, [ecx+edi+0x54]
	and eax, 0xc4
	mov edx, [ecx+edi+0x58]
	and edx, 0x300
	or eax, edx
	setnz al
	movzx eax, al
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x20]
	and ah, 0xfd
	mov [ebp-0x7c], eax
	cmp eax, [ecx+0xc000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_80
	mov edx, eax
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_510:
	lea ebx, [edx+edx*2]
	shl ebx, 0x5
	mov eax, [ecx+ebx+0x54]
	and eax, 0xc4
	mov edx, [ecx+ebx+0x58]
	and edx, 0x300
	or eax, edx
	setnz al
	movzx eax, al
	mov [ebp-0x60], eax
	mov edi, [ebp-0x24]
	cmp edi, [ecx+0xc000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_90
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_500:
	mov edi, [ebp-0x58]
	mov eax, [ecx+edi+0x54]
	and eax, 0x308
	xor edx, edx
	or eax, edx
	setnz al
	movzx eax, al
	mov [ebp-0x64], eax
	mov eax, [ebp-0x7c]
	cmp eax, [ecx+0xc000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_100
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_490:
	mov eax, [ecx+ebx+0x54]
	and eax, 0x308
	xor edx, edx
	or eax, edx
	setnz al
	movzx eax, al
	mov edx, [ebp-0x34]
	test edx, edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_110
	mov edx, [ebp-0x60]
	cmp [ebp-0x5c], edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_120
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_650:
	mov eax, [bgs]
	mov eax, [eax+0x999dc]
	add eax, 0x190
	mov ecx, [ebp-0x54]
	mov [ecx+0x4b4], eax
	cmp byte [ebp-0x19], 0x0
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_130
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_290:
	mov eax, [ebp-0x34]
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_130
	mov dword [esi+0x18], 0x0
	pxor xmm0, xmm0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_320:
	mov eax, [ebp-0x40]
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_140
	mov edx, [ebp-0x40]
	ucomiss xmm0, [edx+0x44]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_150
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_150
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_140:
	movss [ebp-0x38], xmm0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_410:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_160
	mov ebx, [ebp-0x20]
	and bh, 0xfd
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_620:
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z25XAnimClearTreeGoalWeightsP11XAnimTree_sjf
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_160:
	mov edi, [ebp-0x24]
	test edi, edi
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_170
	mov ebx, [ebp-0x34]
	test ebx, ebx
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_180
	mov ecx, [ebp-0x54]
	mov dword [ecx+0x3f0], 0x0
	mov dword [ecx+0x3f4], 0x1
	mov ebx, [ebp-0x40]
	test byte [ebx+0x50], 0x40
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_190
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_330:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x44]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_200
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_200
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_570:
	xor ebx, ebx
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_580:
	xor eax, eax
	cmp dword [ebp-0x34], 0x0
	setz al
	mov [esp+0x1c], eax
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov edi, [ebp-0x28]
	mov [esp], edi
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	test bl, bl
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_210
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_360:
	mov edx, [ebp-0x34]
	test edx, edx
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_220
	mov dword [esp+0x1c], 0x0
	mov ecx, [ebp-0x40]
	mov eax, [ecx+0x5c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x10], ebx
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov eax, [bgs]
	movzx eax, word [eax+0x999bc]
	mov [esp+0x4], eax
	mov edi, [ebp-0x28]
	mov [esp], edi
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x40]
	mov eax, [edx+0x5c]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x3c23d70a
	mov eax, [bgs]
	movzx eax, word [eax+0x999be]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_220
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_30:
	test edx, edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_230
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_40:
	and bh, 0xfd
	mov [ebp-0x24], ebx
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_220:
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240
	mov edx, [esi+0x14]
	test edx, edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_250
	movss xmm3, dword [edx+0x44]
	ucomiss xmm3, [_float_0_00000000]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_260
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_250
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_260:
	mov ecx, [esi+0x2c]
	test ecx, ecx
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_270
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_250:
	mov dword [esi+0x28], 0x3f800000
	mov eax, [bgs]
	mov eax, [eax+0x999e0]
	mov [esi+0x2c], eax
	lea ecx, [esi+0x1c]
	mov edx, [ebp+0xc]
	add edx, 0x18
	mov edi, [ebp+0xc]
	mov eax, [edi+0x18]
	mov [esi+0x1c], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420:
	mov edx, [esi+0x10]
	test edx, edx
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240
	mov eax, [esi+0x28]
	mov [esp+0x8], eax
	and dh, 0xfd
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z16XAnimSetAnimRateP11XAnimTree_sjf
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_20:
	mov byte [ebp-0x4d], 0x1
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_280
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_60:
	mov dword [esi+0x14], 0x0
	mov dword [esi+0x18], 0xc8
	mov dword [ebp-0x40], 0x0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_110:
	cmp byte [ebp-0x19], 0x0
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_290
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_130:
	mov eax, [ebp-0x40]
	test eax, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_300
	mov eax, [esi+0x18]
	test eax, eax
	jle _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_310
	mov ecx, 0xffffffff
	pxor xmm0, xmm0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_540:
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4b4]
	mov eax, [bgs]
	sub edx, [eax+0x999dc]
	cmp ecx, edx
	cmovge edx, ecx
	cmp edx, [esi+0x18]
	jle _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_320
	mov [esi+0x18], edx
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_320
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_170:
	mov eax, [ebp-0x34]
	test eax, eax
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x10], ebx
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov eax, [bgs]
	movzx eax, word [eax+0x999bc]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov eax, [bgs]
	movzx eax, word [eax+0x999be]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x28]
	mov [esp], ebx
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_180:
	mov ebx, [ebp-0x40]
	test byte [ebx+0x50], 0x40
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_330
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_190:
	mov edi, [ebp-0x24]
	mov [esp+0x4], edi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13XAnimIsLoopedPK7XAnim_sj
	test al, al
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_340
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_600:
	mov ecx, [ebp-0x48]
	test ecx, ecx
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_350
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x0
	mov edi, [ebp-0x24]
	mov [esp+0x4], edi
	mov eax, [ebp-0x28]
	mov [esp], eax
	call _Z25XAnimSetGoalWeightKnobAllP6DObj_sjjfffji
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z12XAnimSetTimeP11XAnimTree_sjf
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_360
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_150:
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x2c]
	mov [esp], ebx
	movss [ebp-0x78], xmm0
	call _Z13XAnimIsLoopedPK7XAnim_sj
	test al, al
	movss xmm0, dword [ebp-0x78]
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_370
	mov ebx, [ebp-0x20]
	and bh, 0xfd
	cmp byte [ebp-0x19], 0x0
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_380
	mov edi, [ebp-0x3c]
	ucomiss xmm0, [edi+0x44]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_390
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_390
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_380:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z16XAnimIsPrimitiveP7XAnim_sj
	test al, al
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_400
	mov edx, 0x3e8
	movss xmm0, dword [_float_1000_00000000]
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_610:
	mov eax, [bgs]
	mov eax, [eax+0x999dc]
	mov edi, edx
	cdq
	idiv edi
	cvtsi2ss xmm1, edx
	divss xmm1, xmm0
	mov eax, [ebp-0x54]
	cvtsi2ss xmm0, dword [eax+0x8]
	mulss xmm0, [_float_0_36000001]
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	cvtsi2ss xmm0, eax
	subss xmm1, xmm0
	movss [ebp-0x38], xmm1
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_410
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_270:
	mov eax, [bgs]
	mov eax, [eax+0x999e0]
	cmp ecx, eax
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	cmp byte [ebp-0x4d], 0x0
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_430
	movss xmm1, dword [esi+0x24]
	mov edi, [ebp+0xc]
	subss xmm1, [edi+0x20]
	andps xmm1, [_data16_7fffffff]
	lea edi, [edi+0x18]
	lea ebx, [esi+0x1c]
	mov [ebp-0x80], ebx
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_590:
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	divss xmm1, xmm0
	divss xmm1, xmm3
	movss [esi+0x28], xmm1
	mov eax, [bgs]
	mov eax, [eax+0x999e0]
	mov [esi+0x2c], eax
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x18]
	mov [esi+0x1c], eax
	mov eax, [edi+0x4]
	mov [ebx+0x4], eax
	mov eax, [edi+0x8]
	mov [ebx+0x8], eax
	movss xmm0, dword [esi+0x28]
	ucomiss xmm0, [_float_0_10000000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_440
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_440
	ucomiss xmm0, [_float_0_01000000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_450
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_450
	cmp byte [ebp-0x4d], 0x0
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_450
	mov dword [esi+0x28], 0x0
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_230:
	test ebx, 0xfffffdff
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_460
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_240
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_70:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [globalScriptData]
	mov edi, [ebp-0x58]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_470
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_50:
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_player_animation
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [bgs]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_480
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_100:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [globalScriptData]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_490
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_90:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [globalScriptData]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_500
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_80:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [globalScriptData]
	mov edx, [ebp-0x7c]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_510
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_300:
	pxor xmm0, xmm0
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_560:
	cmp byte [ebp-0x19], 0x0
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_520
	mov edi, [ebp-0x3c]
	ucomiss xmm0, [edi+0x44]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_530
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_530
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_520:
	mov ecx, 0xaa
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_540
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_310:
	pxor xmm0, xmm0
	mov ebx, [ebp-0x40]
	ucomiss xmm0, [ebx+0x44]
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_550
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_560
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_550:
	mov ecx, 0x78
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_540
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_370:
	pxor xmm0, xmm0
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_140
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_200:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z14XAnimGetWeightPK11XAnimTree_sj
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x44]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_570
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_570
	mov ebx, 0x1
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_580
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_530:
	mov ecx, 0xfa
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_540
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_350:
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov eax, 0x3f800000
	mov [esp+0x10], eax
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0xc], xmm0
	mov [esp+0x8], eax
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z26XAnimSetCompleteGoalWeightP6DObj_sjfffjji
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_360
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_430:
	mov edi, [ebp+0xc]
	add edi, 0x18
	lea ebx, [esi+0x1c]
	mov [ebp-0x80], ebx
	mov ebx, [ebp+0xc]
	movss xmm0, dword [ebx+0x18]
	subss xmm0, [esi+0x1c]
	movss xmm1, dword [edi+0x4]
	mov ebx, [ebp-0x80]
	subss xmm1, [ebx+0x4]
	movss xmm2, dword [edi+0x8]
	subss xmm2, [ebx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_590
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_340:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_death_animation_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_600
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_400:
	mov [esp+0x4], ebx
	mov ebx, [ebp-0x2c]
	mov [esp], ebx
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	lea edx, [eax+0xc8]
	cvtsi2ss xmm0, edx
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_610
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_390:
	mov [esp+0x4], ebx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13XAnimIsLoopedPK7XAnim_sj
	test al, al
	jz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_380
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z12XAnimGetTimePK11XAnimTree_sj
	fstp dword [ebp-0x38]
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_620
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_210:
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z12XAnimSetTimeP11XAnimTree_sjf
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_360
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_440:
	ucomiss xmm0, [_float_2_00000000]
	jbe _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	test byte [edx+0x50], 0x2
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_630
	movss xmm1, dword [edx+0x44]
	ucomiss xmm1, [_float_150_00000000]
	jbe _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_640
	mov dword [esi+0x28], 0x40000000
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_120:
	cmp [ebp-0x64], eax
	jnz _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_650
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_110
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_450:
	mov dword [esi+0x28], 0x3dcccccd
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_630:
	ucomiss xmm0, [_float_4_00000000]
	jbe _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	mov dword [esi+0x28], 0x40800000
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_640:
	ucomiss xmm1, [_float_20_00000000]
	jae _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_660
	jp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_660
	ucomiss xmm0, [_float_3_00000000]
	jbe _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	mov dword [esi+0x28], 0x40400000
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
_Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_660:
	subss xmm1, [_float_20_00000000]
	divss xmm1, dword [_float__130_00000000]
	addss xmm1, [_float_3_00000000]
	ucomiss xmm0, xmm1
	jbe _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	movss [esi+0x28], xmm1
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s_420
	nop


;BG_ParseConditionBits(char const**, animStringItem_t*, int, unsigned int*)
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x70], eax
	mov [ebp-0x74], edx
	mov [ebp-0x78], ecx
	mov byte [ebp-0x60], 0x0
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x6c], 0x0
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_120:
	mov edx, [ebp-0x70]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_10
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_40:
	cmp byte [eax], 0x0
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_10
	xor esi, esi
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_50:
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	mov eax, 0x1
	cmovz esi, eax
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_20
	mov ecx, [ebp+0x8]
	or dword [ecx], 0x1
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_160:
	test esi, esi
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_30
	mov edx, [ebp-0x70]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_40
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_10:
	call _Z14Com_UngetTokenv
	cmp byte [ebp-0x60], 0x0
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_30
	mov esi, 0x1
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_50
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_20:
	mov dword [esp+0x4], _cstring_none1
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_60
	mov edi, [ebp+0x8]
	or dword [edi], 0x1
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_60:
	mov dword [esp+0x4], _cstring_not
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	mov eax, _cstring_minus
	cmovz ebx, eax
	test esi, esi
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_70
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_230:
	mov dword [esp+0x4], _cstring_and
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_80
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_210:
	cmp byte [ebp-0x60], 0x0
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_90
	test esi, esi
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_100
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_110
	mov dword [ebp-0x6c], 0x1
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_120
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_110:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_parseconditio
	call _Z17BG_AnimParseErrorPKcz
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_90:
	mov dword [esp+0x4], _cstring_all
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_130
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_170:
	mov dword [ebp-0x20], 0xffffffff
	mov dword [ebp-0x1c], 0xffffffff
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_190:
	mov eax, [ebp-0x6c]
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_140
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_150
	mov edx, ecx
	add edx, 0x4
	mov ecx, [ebp+0x8]
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_240:
	mov eax, [ebp-0x20]
	not eax
	and [ecx], eax
	mov eax, [ebp-0x1c]
	not eax
	and [edx], eax
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_200:
	mov byte [ebp-0x60], 0x0
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	mov eax, 0x1
	cmovnz eax, [ebp-0x6c]
	mov [ebp-0x6c], eax
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_160
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_100:
	mov dword [esp], _cstring_bg_parseconditio1
	call _Z17BG_AnimParseErrorPKcz
	mov dword [esp+0x4], _cstring_all
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_170
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_130:
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x78]
	shl eax, 0x7
	add eax, defineStr
	mov [esp+0x4], eax
	lea edi, [ebp-0x60]
	mov [esp], edi
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov edx, eax
	test eax, eax
	js _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_180
	mov eax, [ebp-0x78]
	shl eax, 0x4
	add eax, edx
	mov edx, [eax*8+defineBits]
	mov [ebp-0x20], edx
	mov eax, [eax*8+defineBits+0x4]
	mov [ebp-0x1c], eax
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_190
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_140:
	mov edi, [ebp+0x8]
	mov eax, [edi]
	or eax, [ebp-0x20]
	mov [edi], eax
	mov eax, [edi+0x4]
	or eax, [ebp-0x1c]
	mov [edi+0x4], eax
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_200
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_80:
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_210
	test esi, esi
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_120
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_210
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_70:
	mov dword [esp+0x4], _cstring_and
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_220
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_250:
	xor esi, esi
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_230
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_150:
	mov edx, ecx
	add edx, 0x4
	mov eax, [ecx+0x4]
	test eax, eax
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_240
	mov dword [ecx+0x4], 0xffffffff
	mov dword [ecx], 0xffffffff
	mov ecx, [ebp+0x8]
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_240
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_220:
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_250
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp byte [ebx+eax-0x1], 0x2c
	jz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_260
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_290:
	cmp byte [ebp-0x60], 0x0
	jnz _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_270
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_280:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_230
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_180:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov ecx, eax
	mov edx, eax
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [ebp+edx*4-0x20], eax
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_190
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_270:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_280
_Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_260:
	mov byte [ebx+eax-0x1], 0x0
	mov si, 0x1
	jmp _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj_290
	nop


;BG_ParseConditions(char const**, animScriptItem_t*)
_Z18BG_ParseConditionsPPKcP16animScriptItem_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x30], eax
	mov ebx, edx
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z18BG_ParseConditionsPPKcP16animScriptItem_t_10
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_50:
	sub eax, 0x1
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_20
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_60:
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	mov [ebx+eax*4+0x4], esi
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	mov edx, [ebp-0x20]
	mov [ebx+eax*4+0x8], edx
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	mov edx, [ebp-0x1c]
	mov [ebx+eax*4+0xc], edx
	add dword [ebx], 0x1
	mov eax, [ebp-0x30]
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_10:
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov edi, eax
	test eax, eax
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_30
	cmp byte [eax], 0x0
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_30
	mov dword [esp+0x4], _cstring_default
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_40
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animConditionsStr
	mov [esp], edi
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov esi, eax
	mov eax, [eax*8+animConditionsTable]
	test eax, eax
	jnz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_50
	mov edx, [esi*8+animConditionsTable+0x4]
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, esi
	mov eax, [ebp-0x30]
	call _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj
	jmp _Z18BG_ParseConditionsPPKcP16animScriptItem_t_60
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_20:
	mov eax, [esi*8+animConditionsTable+0x4]
	test eax, eax
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_70
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov [ebp-0x2c], eax
	test eax, eax
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_80
	cmp byte [eax], 0x0
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_80
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, [ebp-0x2c]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov edx, [ebp-0x2c]
	cmp byte [edx+eax-0x1], 0x2c
	jz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_90
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_100:
	mov dword [esp+0x8], 0x0
	mov eax, [esi*8+animConditionsTable+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov [ebp-0x20], eax
	jmp _Z18BG_ParseConditionsPPKcP16animScriptItem_t_60
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_30:
	mov eax, [ebx]
	test eax, eax
	jnz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_40
	mov dword [esp], _cstring_bg_parseconditio2
	call _Z17BG_AnimParseErrorPKcz
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_40:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_80:
	mov dword [esp], _cstring_bg_parseconditio3
	call _Z17BG_AnimParseErrorPKcz
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, [ebp-0x2c]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov edx, [ebp-0x2c]
	cmp byte [edx+eax-0x1], 0x2c
	jnz _Z18BG_ParseConditionsPPKcP16animScriptItem_t_100
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_90:
	mov byte [edx+eax-0x1], 0x0
	jmp _Z18BG_ParseConditionsPPKcP16animScriptItem_t_100
_Z18BG_ParseConditionsPPKcP16animScriptItem_t_70:
	mov dword [ebp-0x20], 0x1
	jmp _Z18BG_ParseConditionsPPKcP16animScriptItem_t_60


;BG_AnimParseAnimScript(animScriptData_t*, loadAnim_t*, unsigned int*)
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov [ebp-0x14c], eax
	mov ebx, edx
	mov esi, ecx
	mov eax, [globalFilename]
	mov [esp], eax
	call _Z19Com_LoadRawTextFilePKc
	mov [ebp-0x144], eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_10
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_310:
	mov eax, [ebp-0x14c]
	mov [globalScriptData], eax
	mov [g_pLoadAnims], ebx
	mov [g_piNumLoadAnims], esi
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], weaponStrings
	call memset
	call _Z20BG_LoadWeaponStringsv
	mov dword [esp+0x8], 0x500
	mov dword [esp+0x4], 0x0
	mov dword [esp], defineStr
	call memset
	mov dword [esp+0x8], 0x2710
	mov dword [esp+0x4], 0x0
	mov dword [esp], defineStrings
	call memset
	mov edi, numDefines
	cld
	mov ecx, 0xa
	xor eax, eax
	rep stosd
	mov dword [defineStringsOffset], 0x0
	mov al, 0x1
	lea edx, [ebp-0x28]
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_20:
	mov dword [edx+eax*4-0x4], 0xffffffff
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_20
	mov edx, [ebp-0x144]
	mov [ebp-0x1c], edx
	mov dword [esp], _cstring_bg_animparseanim
	call _Z21Com_BeginParseSessionPKc
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x140], 0x0
	mov dword [ebp-0x134], 0x0
	mov dword [ebp-0x13c], 0x0
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov esi, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_30
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_60:
	cmp byte [eax], 0x0
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_30
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], animParseModesStr
	mov [esp], eax
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov ebx, eax
	test eax, eax
	js _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_40
	mov edi, [ebp-0x134]
	test edi, edi
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_50
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_80:
	mov [ebp-0x140], ebx
	mov dword [parseMovetype], 0x0
	mov dword [parseEvent], 0xffffffff
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov esi, eax
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_60
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_30:
	mov eax, [ebp-0x134]
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_70
	mov dword [esp], _cstring_bg_animparseanim1
	call _Z17BG_AnimParseErrorPKcz
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_70:
	call _Z19Com_EndParseSessionv
	mov edx, [ebp-0x144]
	mov [esp], edx
	call _Z21Com_UnloadRawTextFilePKc
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_50:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_80
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_40:
	cmp dword [ebp-0x140], 0x4
	ja _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
	mov eax, [ebp-0x140]
	jmp dword [eax*4+_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_jumptab_0]
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_740:
	mov dword [esp+0x4], _cstring_set
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_100
	cmp byte [eax], 0x0
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_100
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_260:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animConditionsStr
	mov [esp], ebx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov [ebp-0x130], eax
	mov ecx, [eax*8+animConditionsTable]
	test ecx, ecx
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_110
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_470:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z15Com_ParseOnLinePPKc
	mov esi, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_120
	cmp byte [eax], 0x0
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_120
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_250:
	mov eax, [ebp-0x130]
	mov eax, [eax*4+numDefines]
	mov [ebp-0x148], eax
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	mov eax, [defineStringsOffset]
	add ecx, eax
	cmp ecx, 0x270f
	ja _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_130
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_460:
	lea ebx, [eax+defineStrings]
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	add [defineStringsOffset], ecx
	mov eax, [ebp-0x130]
	shl eax, 0x4
	mov ecx, [ebp-0x148]
	lea edx, [eax+ecx]
	mov [edx*8+defineStr], ebx
	mov esi, [ebp-0x130]
	mov esi, [esi*4+numDefines]
	mov [ebp-0x12c], esi
	add eax, esi
	mov esi, [eax*8+defineStr]
	movzx eax, byte [esi]
	test al, al
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_140
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_330:
	xor edi, edi
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_340:
	mov esi, [ebp-0x130]
	shl esi, 0x4
	mov eax, [ebp-0x12c]
	lea edx, [esi+eax]
	mov eax, defineStr
	mov [eax+edx*8+0x4], edi
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_150
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_530:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_160
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_450:
	mov ecx, [ebp-0x130]
	mov edx, [ecx*8+animConditionsTable+0x4]
	add esi, [ecx*4+numDefines]
	lea eax, [esi*8+defineBits]
	mov [esp], eax
	lea eax, [ebp-0x1c]
	call _Z21BG_ParseConditionBitsPPKcP16animStringItem_tiPj
	mov esi, [ebp-0x130]
	add dword [esi*4+numDefines], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_750:
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_170
	cmp dword [ebp-0x134], 0x2
	jg _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_180
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_240:
	mov eax, [ebp-0x134]
	mov edx, [ebp+eax*4-0x28]
	test edx, edx
	jns _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_190
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_220:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_190
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_760:
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_200
	cmp dword [ebp-0x134], 0x2
	jg _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_210
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_230:
	mov edx, [ebp-0x134]
	mov eax, [ebp+edx*4-0x28]
	test eax, eax
	js _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_220
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_190:
	add dword [ebp-0x134], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_210:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_230
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_180:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_240
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_120:
	mov dword [esp], _cstring_bg_animparseanim3
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_250
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_100:
	mov dword [esp], _cstring_bg_animparseanim4
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_260
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_200:
	mov dword [esp+0x4], _cstring_3
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_270
	sub dword [ebp-0x134], 0x1
	cmp dword [ebp-0x134], 0x0
	jl _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_280
	cmovnz eax, [ebp-0x13c]
	mov [ebp-0x13c], eax
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_350:
	mov ecx, [ebp-0x134]
	mov dword [ebp+ecx*4-0x28], 0xffffffff
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_170:
	mov dword [esp+0x4], _cstring_3
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_290
	sub dword [ebp-0x134], 0x1
	js _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_300
	cmp dword [ebp-0x134], 0x1
	cmovnz eax, [ebp-0x13c]
	mov [ebp-0x13c], eax
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_360:
	mov edx, [ebp-0x134]
	mov dword [ebp+edx*4-0x28], 0xffffffff
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_10:
	mov eax, [globalFilename]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_pla
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_310
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_140:
	xor edi, edi
	mov ebx, 0x77
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_320:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add edi, eax
	movzx eax, byte [esi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_320
	cmp edi, 0xffffffff
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_330
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_340
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_280:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_350
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_300:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_360
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_270:
	mov eax, [ebp-0x134]
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_370
	mov edi, [ebp-0x28]
	test edi, edi
	js _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_380
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_290:
	mov eax, [ebp-0x134]
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_390
	mov eax, [ebp-0x28]
	test eax, eax
	jns _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
	mov dword [esp+0x4], _cstring_state
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_410
	mov dword [esp], _cstring_bg_animparseanim5
	call _Z17BG_AnimParseErrorPKcz
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_410:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_420
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_720:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov [ebp-0x28], eax
	lea esi, [ebp-0x1c]
	mov [esp], esi
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_430
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_440
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_430:
	mov dword [esp], _cstring_bg_animparseanim6
	call _Z17BG_AnimParseErrorPKcz
	mov dword [ebp-0x134], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_160:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_animparseanim7
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_450
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_130:
	mov dword [esp], _cstring_bg_copystringint
	call _Z17BG_AnimParseErrorPKcz
	mov eax, [defineStringsOffset]
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_460
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_110:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_animparseanim8
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_470
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_390:
	cmp dword [ebp-0x134], 0x1
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_480
	cmp dword [ebp-0x134], 0x2
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_490
	cmp dword [ebp-0x134], 0x3
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_520:
	mov edx, 0xffffffff
	xor ebx, ebx
	cld
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ebp-0x15c], eax
	mov [ebp-0x1c], eax
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov edx, [ebp-0x15c]
	mov [esp], edx
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_500
	mov dword [esp], _cstring_bg_animparseanim9
	call _Z17BG_AnimParseErrorPKcz
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_500:
	mov ecx, [ebp-0x14c]
	mov [esp+0x8], ecx
	mov esi, [ebp-0x138]
	mov [esp+0x4], esi
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_370:
	cmp dword [ebp-0x134], 0x1
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_510
	cmp dword [ebp-0x134], 0x2
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_520
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_150:
	mov dword [esp], _cstring_bg_animparseanim10
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_530
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_480:
	mov eax, [ebp-0x24]
	test eax, eax
	jns _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animMoveTypesStr
	mov [esp], esi
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov ebx, eax
	mov [ebp-0x24], eax
	cmp dword [ebp-0x140], 0x1
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_540
	cmp dword [ebp-0x140], 0x2
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_550
	shl eax, 0x9
	lea ecx, [eax+ebx*4]
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x7
	add eax, edx
	lea eax, [ecx+eax*4+0x116b0]
	add eax, [ebp-0x14c]
	mov [ebp-0x13c], eax
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_550:
	mov dword [esp+0x8], 0x204
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x13c]
	mov [esp], ecx
	call memset
	mov dword [ebp-0x134], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_510:
	mov ebx, [ebp-0x24]
	test ebx, ebx
	jns _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
	mov edx, 0xffffffff
	xor ebx, ebx
	cld
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ebp-0x15c], eax
	mov [ebp-0x1c], eax
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov edx, [ebp-0x15c]
	mov [esp], edx
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_560
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_730:
	lea ebx, [ebp-0x128]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, ebx
	lea eax, [ebp-0x1c]
	call _Z18BG_ParseConditionsPPKcP16animScriptItem_t
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x13c]
	cmp dword [ecx], 0x7f
	jg _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_570
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_600:
	mov esi, [ebp-0x14c]
	cmp dword [esi+0x999b4], 0x7ff
	jg _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_580
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_710:
	mov eax, [ebp-0x14c]
	mov edx, [eax+0x999b4]
	mov esi, [ebp-0x13c]
	mov ecx, [esi]
	mov eax, edx
	shl eax, 0x8
	mov esi, [ebp-0x14c]
	lea eax, [eax+esi+0x199b4]
	mov esi, [ebp-0x13c]
	mov [esi+ecx*4+0x4], eax
	add edx, 0x1
	mov eax, [ebp-0x14c]
	mov [eax+0x999b4], edx
	mov eax, [esi]
	mov edx, [esi+eax*4+0x4]
	mov [ebp-0x138], edx
	add eax, 0x1
	mov [esi], eax
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], ebx
	mov [esp], edx
	call memcpy
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_490:
	mov eax, [ebp-0x20]
	test eax, eax
	jns _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_400
	mov edx, 0xffffffff
	xor ebx, ebx
	cld
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ebp-0x15c], eax
	mov [ebp-0x1c], eax
	mov ecx, edx
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov edx, [ebp-0x15c]
	mov [esp], edx
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_590
	mov dword [esp], _cstring_bg_animparseanim9
	call _Z17BG_AnimParseErrorPKcz
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_590:
	lea ebx, [ebp-0x128]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, ebx
	lea eax, [ebp-0x1c]
	call _Z18BG_ParseConditionsPPKcP16animScriptItem_t
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x13c]
	cmp dword [ecx], 0x7f
	jle _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_600
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_570:
	mov dword [esp+0x4], 0x80
	mov dword [esp], _cstring_bg_animparseanim11
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_600
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_380:
	cmp dword [ebp-0x140], 0x3
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_610
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animEventTypesStr
	mov [esp], esi
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov [ebp-0x28], eax
	mov edx, eax
	shl edx, 0x9
	lea edx, [edx+eax*4+0x16f60]
	add edx, [ebp-0x14c]
	mov [ebp-0x13c], edx
	mov [parseEvent], eax
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_670:
	mov dword [esp+0x8], 0x204
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x13c]
	mov [esp], esi
	call memset
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_440:
	mov dword [ebp-0x134], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_90
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_610:
	mov dword [esp+0x4], _cstring_statechange
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_620
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_680:
	lea esi, [ebp-0x1c]
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_630
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_700:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov esi, eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_640
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_690:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov [ebp-0x28], eax
	add eax, esi
	mov edx, eax
	shl edx, 0x9
	lea eax, [edx+eax*4+0x16d50]
	mov edx, [ebp-0x14c]
	lea eax, [edx+eax+0xc]
	mov [ebp-0x13c], eax
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_650
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_660
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_650:
	mov dword [esp], _cstring_bg_animparseanim6
	call _Z17BG_AnimParseErrorPKcz
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_660:
	mov dword [ebp-0x134], 0x1
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_670
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_620:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim12
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_680
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_640:
	mov dword [esp], _cstring_bg_animparseanim13
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_690
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_630:
	mov dword [esp], _cstring_bg_animparseanim13
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_700
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_580:
	mov dword [esp+0x4], 0x800
	mov dword [esp], _cstring_bg_animparseanim14
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_710
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_540:
	shl eax, 0x9
	lea ecx, [eax+ebx*4]
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x7
	add eax, edx
	lea eax, [ecx+eax*4+0xc000]
	mov edx, [ebp-0x14c]
	lea eax, [edx+eax+0x4]
	mov [ebp-0x13c], eax
	mov [parseMovetype], ebx
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_550
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_420:
	mov dword [esp], _cstring_bg_animparseanim15
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_720
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_560:
	mov dword [esp], _cstring_bg_animparseanim9
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_730
	nop
	
	
_Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_jumptab_0:
	dd _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_740
	dd _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_750
	dd _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_750
	dd _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_760
	dd _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj_760


;BG_LoadAnim()
_Z11BG_LoadAnimv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp+0x4], 0x9000
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZN10LargeLocal6GetBufEv
	mov ebx, eax
	mov dword [ebp-0x1c], 0x0
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0xc], edx
	add eax, 0x999d0
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_torso
	mov dword [esp], _cstring_multiplayer
	call _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0xc], edx
	add eax, 0x999d4
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_legs
	mov dword [esp], _cstring_multiplayer
	call _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0xc], edx
	add eax, 0x999d8
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_turning
	mov dword [esp], _cstring_multiplayer
	call _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	lea ecx, [ebp-0x1c]
	mov edx, ebx
	mov eax, [bgs]
	call _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0x4], edx
	mov eax, [eax+0x99a00]
	mov [esp], eax
	call _Z21Scr_PrecacheAnimTreesPFPviEi
	mov esi, [bgs]
	mov dword [esp], _cstring_multiplayer
	call _Z16Scr_FindAnimTreePKc
	mov ebx, eax
	test eax, eax
	jz _Z11BG_LoadAnimv_10
_Z11BG_LoadAnimv_280:
	mov [esi+0x999cc], ebx
	mov edx, [bgs]
	mov eax, [edx+0x999cc]
	mov [edx+0x999b8], eax
	mov edx, [bgs]
	movzx eax, word [edx+0x999d0]
	mov [edx+0x999bc], ax
	mov edx, [bgs]
	movzx eax, word [edx+0x999d4]
	mov [edx+0x999be], ax
	mov edx, [bgs]
	movzx eax, word [edx+0x999d8]
	mov [edx+0x999c0], ax
	call _Z20Scr_EndLoadAnimTreesv
	mov ebx, [globalScriptData]
	mov eax, [ebx+0x999b8]
	mov [ebp-0x4c], eax
	mov [esp], eax
	call _Z20XAnimGetAnimTreeSizePK7XAnim_s
	mov [ebp-0x50], eax
	mov eax, [globalScriptData]
	mov edx, [ebp-0x50]
	mov [eax+0xc000], edx
	or dword [ebx+0x50], 0x201
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_root
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov dword [ebx+0x4c], 0x0
	lea edi, [ebx+0x60]
	cmp dword [ebp-0x50], 0x1
	jle _Z11BG_LoadAnimv_20
	mov dword [ebp-0x44], 0x1
_Z11BG_LoadAnimv_130:
	mov eax, [globalScriptData]
	mov eax, [eax+0xc000]
	cmp [ebp-0x44], eax
	jae _Z11BG_LoadAnimv_30
_Z11BG_LoadAnimv_220:
	mov ebx, [g_pLoadAnims]
	mov eax, [g_piNumLoadAnims]
	mov esi, [eax]
	test esi, esi
	jz _Z11BG_LoadAnimv_40
	movzx eax, word [ebx]
	cmp [ebp-0x44], eax
	jz _Z11BG_LoadAnimv_50
	lea eax, [ebx+0x48]
	mov edx, eax
	mov ecx, 0x1
	jmp _Z11BG_LoadAnimv_60
_Z11BG_LoadAnimv_70:
	lea eax, [ebx+0x48]
_Z11BG_LoadAnimv_60:
	mov ebx, eax
	cmp ecx, esi
	jz _Z11BG_LoadAnimv_40
	movzx eax, word [edx]
	add ecx, 0x1
	add edx, 0x48
	cmp [ebp-0x44], eax
	jnz _Z11BG_LoadAnimv_70
_Z11BG_LoadAnimv_50:
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z16XAnimIsPrimitiveP7XAnim_sj
	test al, al
	jz _Z11BG_LoadAnimv_80
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z16XAnimGetAnimNamePK7XAnim_sj
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	movzx eax, byte [edi]
	test al, al
	jnz _Z11BG_LoadAnimv_90
_Z11BG_LoadAnimv_250:
	xor esi, esi
_Z11BG_LoadAnimv_260:
	mov [edi+0x4c], esi
	mov eax, [edi+0x40]
	test eax, eax
	jnz _Z11BG_LoadAnimv_100
	mov dword [edi+0x40], 0xffffffff
_Z11BG_LoadAnimv_100:
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call _Z14XAnimGetLengthPK7XAnim_sj
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x48]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp _Z11BG_LoadAnimv_110
	jnz _Z11BG_LoadAnimv_110
	mov dword [edi+0x48], 0x1f4
	mov dword [edi+0x44], 0x0
_Z11BG_LoadAnimv_270:
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call _Z13XAnimIsLoopedPK7XAnim_sj
	test al, al
	jz _Z11BG_LoadAnimv_120
	or dword [edi+0x50], 0x80
_Z11BG_LoadAnimv_120:
	add dword [ebp-0x44], 0x1
	add edi, 0x60
	mov eax, [ebp-0x44]
	cmp [ebp-0x50], eax
	jnz _Z11BG_LoadAnimv_130
_Z11BG_LoadAnimv_20:
	xor ecx, ecx
	xor edx, edx
	mov eax, [globalScriptData]
	call _Z22BG_AnimParseAnimScriptP16animScriptData_tP10loadAnim_tPj
	mov esi, [globalScriptData]
	mov eax, [esi+0xc000]
	test eax, eax
	jz _Z11BG_LoadAnimv_140
	mov eax, esi
	xor edx, edx
_Z11BG_LoadAnimv_150:
	mov dword [eax+0x5c], 0x0
	add edx, 0x1
	add eax, 0x60
	cmp edx, [esi+0xc000]
	jb _Z11BG_LoadAnimv_150
_Z11BG_LoadAnimv_140:
	mov eax, [bgs]
	mov eax, [eax+0x999e8]
	test eax, eax
	jnz _Z11BG_LoadAnimv_160
	lea edx, [esi+0x18388]
	mov [ebp-0x40], edx
	mov eax, [esi+0x18388]
	test eax, eax
	jle _Z11BG_LoadAnimv_160
	mov edi, edx
	mov dword [ebp-0x3c], 0x0
_Z11BG_LoadAnimv_210:
	mov ebx, [edi+0x4]
	mov eax, [ebx+0x7c]
	test eax, eax
	jle _Z11BG_LoadAnimv_170
	xor ecx, ecx
	lea edx, [ebx+0x80]
_Z11BG_LoadAnimv_200:
	cmp word [edx], 0x0
	jz _Z11BG_LoadAnimv_180
	movsx eax, word [edx+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov dword [eax+esi+0x5c], 0x1
_Z11BG_LoadAnimv_180:
	cmp word [edx+0x2], 0x0
	jz _Z11BG_LoadAnimv_190
	movsx eax, word [edx+0x6]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov dword [eax+esi+0x5c], 0x1
_Z11BG_LoadAnimv_190:
	add ecx, 0x1
	add edx, 0x10
	cmp ecx, [ebx+0x7c]
	jl _Z11BG_LoadAnimv_200
_Z11BG_LoadAnimv_170:
	add dword [ebp-0x3c], 0x1
	add edi, 0x4
	mov edx, [ebp-0x3c]
	mov eax, [ebp-0x40]
	cmp edx, [eax]
	jl _Z11BG_LoadAnimv_210
_Z11BG_LoadAnimv_160:
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11BG_LoadAnimv_40:
	or dword [edi+0x50], 0x200
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_unused
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [edi+0x4c], 0x0
	jmp _Z11BG_LoadAnimv_120
_Z11BG_LoadAnimv_30:
	mov [esp+0xc], eax
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_animation1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11BG_LoadAnimv_220
_Z11BG_LoadAnimv_80:
	or dword [edi+0x50], 0x1
	mov dword [esp+0x8], 0x40
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov eax, [ebx+0x4]
	mov [edi+0x4c], eax
	mov edx, [edi+0x40]
	test edx, edx
	jnz _Z11BG_LoadAnimv_230
	mov dword [edi+0x40], 0xffffffff
_Z11BG_LoadAnimv_230:
	mov dword [edi+0x48], 0x0
	mov dword [edi+0x44], 0x0
	jmp _Z11BG_LoadAnimv_120
_Z11BG_LoadAnimv_90:
	xor esi, esi
	mov ebx, 0x77
_Z11BG_LoadAnimv_240:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add esi, eax
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z11BG_LoadAnimv_240
	cmp esi, 0xffffffff
	jz _Z11BG_LoadAnimv_250
	jmp _Z11BG_LoadAnimv_260
_Z11BG_LoadAnimv_110:
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	mov [edi+0x48], eax
	mov dword [esp+0x14], 0x3f800000
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call _Z16XAnimGetRelDeltaPK7XAnim_sjPfS2_ff
	movss xmm0, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x34]
	movss xmm2, dword [ebp-0x30]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	divss xmm0, dword [ebp-0x48]
	movss [edi+0x44], xmm0
	cmp dword [edi+0x48], 0x1f3
	jg _Z11BG_LoadAnimv_270
	mov dword [edi+0x48], 0x1f4
	jmp _Z11BG_LoadAnimv_270
_Z11BG_LoadAnimv_10:
	mov dword [esp+0x8], _cstring_multiplayer
	mov dword [esp+0x4], _cstring_could_not_find_a
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11BG_LoadAnimv_280
	mov ebx, eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;BG_PlayAnim(playerState_s*, int, animBodyPart_t, int, int, int, int)
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_10
	mov ebx, eax
	cmp esi, 0x2
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_20
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_40:
	cmp esi, 0x3
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_30
	cmp esi, 0x1
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_30
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_60:
	mov ebx, 0xffffffff
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_10:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov ebx, [eax+0x48]
	add ebx, 0x32
	cmp esi, 0x2
	jnz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_40
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_20:
	mov dword [ebp-0x10], 0x0
	cmp dword [edi+0x90], 0x31
	jle _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_50
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_90:
	mov eax, [ebp+0x20]
	test eax, eax
	jnz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_50
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80:
	mov edx, [ebp-0x10]
	test edx, edx
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_60
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_30:
	cmp dword [edi+0x88], 0x31
	jle _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_70
	mov edx, [ebp+0x20]
	test edx, edx
	jnz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_70
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_190:
	mov dword [ebp-0x10], 0x0
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_160:
	cmp esi, 0x3
	jnz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80
	xor ecx, ecx
	cmp dword [edi+0x90], 0x31
	jg _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_90
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_50:
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_100
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_110
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_170:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_120
	mov [edi+0x90], ebx
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_120:
	mov [edi+0x9c], ebx
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_70:
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_130
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_140
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_180:
	mov [edi+0x98], ebx
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_150
	mov [edi+0x88], ebx
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_150:
	mov dword [ebp-0x10], 0x1
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_160
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_100:
	mov edx, [edi+0x94]
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_170
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_130:
	mov edx, [edi+0x8c]
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_180
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_110:
	mov esi, [ebp+0x18]
	test esi, esi
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80
	mov [edi+0x90], ebx
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_80
_Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_140:
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_190
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_190
	mov [edi+0x88], ebx
	mov dword [ebp-0x10], 0x0
	jmp _Z11BG_PlayAnimP13playerState_si14animBodyPart_tiiii_160


;BG_LerpOffset(float*, float, float*)
_Z13BG_LerpOffsetPffS_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	movss xmm6, dword [ebx]
	movaps xmm5, xmm6
	subss xmm5, [ecx]
	movss xmm3, dword [ebx+0x4]
	subss xmm3, [ecx+0x4]
	movss xmm4, dword [ebx+0x8]
	subss xmm4, [ecx+0x8]
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jp _Z13BG_LerpOffsetPffS__10
	jz _Z13BG_LerpOffsetPffS__20
_Z13BG_LerpOffsetPffS__10:
	movss [ebp-0x10], xmm2
	mov edx, [ebp-0x10]
	sar edx, 1
	mov eax, 0x5f3759df
	sub eax, edx
	mov [ebp-0xc], eax
	movss xmm1, dword [ebp-0xc]
	mulss xmm2, [_float_0_50000000]
	mulss xmm2, xmm1
	mulss xmm2, xmm1
	movss xmm0, dword [_float_1_50000000]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ebp-0x10], xmm0
	mulss xmm0, [ebp+0xc]
	ucomiss xmm0, [_float_1_00000000]
	jb _Z13BG_LerpOffsetPffS__30
_Z13BG_LerpOffsetPffS__40:
	movss [ecx], xmm6
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
_Z13BG_LerpOffsetPffS__20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13BG_LerpOffsetPffS__30:
	jp _Z13BG_LerpOffsetPffS__40
	mulss xmm5, xmm0
	addss xmm5, [ecx]
	movss [ecx], xmm5
	mulss xmm3, xmm0
	addss xmm3, [ecx+0x4]
	movss [ecx+0x4], xmm3
	mulss xmm4, xmm0
	addss xmm4, [ecx+0x8]
	movss [ecx+0x8], xmm4
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;BG_IsProneAnim(clientInfo_t const*, int)
_Z14BG_IsProneAnimPK12clientInfo_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov esi, [globalScriptData]
	cmp ebx, [esi+0xc000]
	jb _Z14BG_IsProneAnimPK12clientInfo_ti_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov esi, [globalScriptData]
_Z14BG_IsProneAnimPK12clientInfo_ti_10:
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	mov edx, [esi+eax+0x54]
	and edx, 0x308
	xor ecx, ecx
	or edx, ecx
	setnz al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;BG_ParseCommands(char const**, animScriptItem_t*, animScriptData_t*)
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_370:
	mov [esp], esi
	call _Z9Com_ParsePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_10
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_220:
	cmp byte [ebx], 0x0
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_10
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_20
	mov edx, [ebp-0x1c]
	test edx, edx
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_30
	mov eax, [ebp+0xc]
	cmp dword [eax+0x7c], 0x7
	jg _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_40
	mov edx, eax
	mov ecx, eax
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_290:
	mov eax, [edx+0x7c]
	mov edx, eax
	shl edx, 0x4
	lea edx, [edx+ecx+0x80]
	mov [ebp-0x20], edx
	add eax, 0x1
	mov [ecx+0x7c], eax
	mov dword [edx], 0x0
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], animBodyPartsStr
	mov [esp], ebx
	call _Z17BG_IndexForStringPKcP16animStringItem_ti
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	mov [ecx+edx*2], ax
	test ax, ax
	jle _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_50
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_60
	cmp byte [eax], 0x0
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_70
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_60:
	mov dword [esp], _cstring_bg_parsecommands
	call _Z17BG_AnimParseErrorPKcz
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_70:
	mov [esp], ebx
	call _Z26BG_AnimationIndexForStringPKc
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x20]
	mov [edx+ebx*2+0x4], ax
	cwde
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ecx, [ebp+0x10]
	lea edx, [eax+ecx]
	mov eax, [edx+0x48]
	mov ecx, [ebp-0x20]
	mov [ecx+ebx*2+0x8], ax
	mov eax, [g_pLoadAnims]
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_80
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250:
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_90
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_130:
	cmp byte [eax], 0x0
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_90
	mov dword [esp+0x4], _cstring_duration
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_100
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_110
	cmp byte [eax], 0x0
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_120
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_110:
	mov dword [esp], _cstring_bg_parsecommands1
	call _Z17BG_AnimParseErrorPKcz
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_120:
	mov [esp], ebx
	call atoi
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	mov [ebx+ecx*2+0x8], ax
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_130
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_90:
	call _Z14Com_UngetTokenv
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	cmp word [ebx+ecx*2], 0x3
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_140
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	test eax, eax
	jle _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_150
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_140:
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_160
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_210:
	cmp byte [eax], 0x0
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_160
	mov dword [esp+0x4], _cstring_sound
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_170
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_180
	cmp byte [eax], 0x0
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_190
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_180:
	mov dword [esp], _cstring_bg_parsecommands2
	call _Z17BG_AnimParseErrorPKcz
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_190:
	mov dword [esp+0x4], _cstring_wav
	mov [esp], ebx
	call strstr
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_200
	mov dword [esp], _cstring_bg_parsecommands3
	call _Z17BG_AnimParseErrorPKcz
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_200:
	mov [esp], ebx
	mov eax, [globalScriptData]
	call dword [eax+0x999c4]
	mov edx, [ebp-0x20]
	mov [edx+0xc], eax
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_210
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_160:
	mov dword [ebp-0x1c], 0x0
	mov [esp], esi
	call _Z9Com_ParsePPKc
	mov ebx, eax
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_220
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_100:
	mov dword [esp+0x4], _cstring_turretanim
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_230
	mov edx, [g_pLoadAnims]
	test edx, edx
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_240
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_280:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x20]
	cmp word [edx+eax*2], 0x3
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
	mov dword [esp], _cstring_bg_parsecommands4
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_170:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_parsecommands5
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_140
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_230:
	mov dword [esp+0x4], _cstring_blendtime
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_90
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov edi, eax
	test eax, eax
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_260
	cmp byte [eax], 0x0
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_270
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_260:
	mov dword [esp], _cstring_bg_parsecommands6
	call _Z17BG_AnimParseErrorPKcz
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_270:
	mov eax, [g_pLoadAnims]
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
	mov ecx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	movsx ebx, word [eax+ecx*2+0x4]
	mov [esp], edi
	call atoi
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x5
	mov edx, [ebp+0x10]
	mov [ebx+edx+0x40], eax
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_240:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ebx, [ebp+0x10]
	or dword [eax+ebx+0x50], 0x4
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_280
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_50:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	sub [esi], ecx
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_140
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_40:
	mov dword [esp+0x4], 0x8
	mov dword [esp], _cstring_bg_parsecommands7
	call _Z17BG_AnimParseErrorPKcz
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0xc]
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_290
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_80:
	mov edi, [parseMovetype]
	test edi, edi
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
	cmp word [ecx+ebx*2], 0x2
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
	lea ebx, [edx+0x50]
	mov ecx, edi
	xor eax, eax
	xor edx, edx
	test cl, 0x20
	setz al
	setnz dl
	shl eax, cl
	shl edx, cl
	mov [ebp-0x30], eax
	mov [ebp-0x2c], edx
	mov edx, [ebp-0x30]
	or edx, [ebx+0x4]
	mov ecx, [ebp-0x2c]
	or ecx, [ebx+0x8]
	mov [ebx+0x4], edx
	mov [ebx+0x8], ecx
	lea eax, [edi-0x12]
	cmp eax, 0x1
	jbe _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_310
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_420:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	test ebx, ebx
	jg _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_320
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300:
	mov edx, [parseEvent]
	cmp edx, 0x2
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_330
	lea eax, [edx-0x12]
	cmp eax, 0x1
	jbe _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_340
	cmp edx, 0x1
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_350
	cmp edx, 0xa
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_360
	lea eax, [edi-0x16]
	cmp eax, 0x9
	ja _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_360:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	mov dword [eax+edx+0x44], 0x0
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_150:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jle _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_370
	mov [esp], esi
	call _Z15Com_ParseOnLinePPKc
	mov ebx, eax
	test eax, eax
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_220
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_10
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_330:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	or dword [eax+edx+0x50], 0x8
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov dword [eax+edx+0x40], 0x1e
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_320:
	cmp dword [eax+0x4], 0x8
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_380
	mov edx, eax
	xor ecx, ecx
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_390:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
	mov eax, [edx+0x10]
	add edx, 0xc
	cmp eax, 0x8
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_390
	lea eax, [ecx+ecx*2]
	mov edx, [ebp+0xc]
	mov eax, [edx+eax*4+0x8]
	cmp eax, 0x1
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_400
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_430:
	cmp eax, 0x2
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	or dword [eax+edx+0x50], 0x20
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_20:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	sub [esi], ecx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_350:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	mov dword [eax+edx+0x44], 0x0
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	or dword [eax+edx+0x50], 0x40
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_340:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	or dword [eax+edx+0x50], 0x100
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_250
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_400:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ebx, [ebp+0x10]
	or dword [eax+ebx+0x50], 0x10
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_300
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_310:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [ebp+0x10]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x44]
	jp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_410
	jz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_420
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_410:
	or dword [eax+0x50], 0x2
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_420
_Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_380:
	xor ecx, ecx
	lea eax, [ecx+ecx*2]
	mov edx, [ebp+0xc]
	mov eax, [edx+eax*4+0x8]
	cmp eax, 0x1
	jnz _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_430
	jmp _Z16BG_ParseCommandsPPKcP16animScriptItem_tP16animScriptData_t_400


;BG_AnimParseError(char const*, ...)
_Z17BG_AnimParseErrorPKcz:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x434
	lea eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov eax, [globalFilename]
	test eax, eax
	jz _Z17BG_AnimParseErrorPKcz_10
	call _Z23Com_GetCurrentParseLinev
	add eax, 0x1
	mov [esp+0x10], eax
	mov eax, [globalFilename]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_s_line_i
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x434
	pop ebx
	pop ebp
	ret
_Z17BG_AnimParseErrorPKcz_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x434
	pop ebx
	pop ebp
	ret
	nop


;BG_ExecuteCommand(playerState_s*, animScriptCommand_t*, int, int, int)
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	movzx ecx, word [eax]
	test cx, cx
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_10
	mov dword [ebp-0x28], 0xffffffff
	xor esi, esi
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130:
	mov edx, [ebp+0xc]
	movzx ebx, word [edx+0x2]
	test bx, bx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20
	movsx eax, word [edx+0x8]
	add eax, 0x32
	mov [ebp-0x28], eax
	movzx eax, word [edx]
	cmp ax, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_30
	cmp ax, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_30
	movsx edx, bx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x6]
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_40
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_200:
	cmp edx, 0x2
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_50
	cmp edx, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_60
	sub edx, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_60
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_240:
	mov edx, [ebp+0xc]
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20:
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_70
	mov [esp+0x4], eax
	mov eax, [edi+0xdc]
	mov [esp], eax
	mov eax, [globalScriptData]
	call dword [eax+0x999c8]
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_70:
	test esi, esi
	mov eax, 0xffffffff
	cmovnz eax, [ebp-0x28]
	mov [ebp-0x28], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_10:
	mov edx, eax
	movsx eax, word [eax+0x8]
	add eax, 0x32
	mov [ebp-0x28], eax
	cmp cx, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_80
	cmp cx, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_90
	movsx edx, cx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x4]
	mov eax, [ebp-0x28]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_100
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov ebx, [eax+0x48]
	add ebx, 0x32
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_210:
	cmp edx, 0x2
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_110
	cmp edx, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_120
	sub edx, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_120
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_340:
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_30:
	movsx edx, bx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x6]
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_140
	mov esi, [ebp-0x28]
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_220:
	cmp edx, 0x2
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_150
	cmp edx, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_160
	sub edx, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_160
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_620:
	mov esi, 0xffffffff
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_610:
	not esi
	shr esi, 0x1f
	mov edx, [ebp+0xc]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_80:
	mov eax, edx
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_500:
	movsx edx, cx
	movsx ebx, word [eax+0x4]
	mov esi, [ebp-0x28]
	test esi, esi
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_170
	mov esi, [ebp-0x28]
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_490:
	cmp edx, 0x2
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_180
	cmp edx, 0x3
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_190
	sub edx, 0x1
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_190
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_560:
	mov esi, 0xffffffff
	not esi
	shr esi, 0x1f
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_40:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov eax, [eax+0x48]
	add eax, 0x32
	mov [ebp-0x1c], eax
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_200
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_100:
	mov ebx, [ebp-0x28]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_210
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_140:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov esi, [eax+0x48]
	add esi, 0x32
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_220
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_60:
	cmp dword [edi+0x88], 0x31
	jle _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_230
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_230
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310:
	cmp bx, 0x3
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_240
	xor ecx, ecx
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_50:
	cmp dword [edi+0x90], 0x31
	jg _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_250
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_660:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_260
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_270
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_680:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_280
	mov eax, [ebp-0x1c]
	mov [edi+0x90], eax
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_280:
	mov edx, [ebp-0x1c]
	mov [edi+0x9c], edx
	mov edx, [ebp+0xc]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_230:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_290
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_300
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_720:
	mov eax, [ebp-0x1c]
	mov [edi+0x98], eax
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310
	mov [edi+0x88], eax
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_120:
	cmp dword [edi+0x88], 0x31
	jg _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_320
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_670:
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_330
	mov edx, [edi+0x8c]
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_730:
	mov [edi+0x98], ebx
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_340
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_740:
	mov [edi+0x88], ebx
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_160:
	cmp dword [edi+0x88], 0x31
	jle _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_350
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_350
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_780:
	mov dword [ebp-0x20], 0x0
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_410:
	cmp bx, 0x3
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360
	xor ecx, ecx
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_370
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_350:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_380
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_390
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_750:
	mov [edi+0x98], esi
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_400
	mov [edi+0x88], esi
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_400:
	mov dword [ebp-0x20], 0x1
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_410
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_190:
	cmp dword [edi+0x88], 0x31
	jle _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_420
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_420
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_790:
	mov dword [ebp-0x24], 0x0
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_480:
	cmp cx, 0x3
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430
	xor ebx, ebx
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_440
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_420:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_450
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ebx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_460
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_760:
	mov [edi+0x98], esi
	and edx, 0x200
	xor dh, 0x2
	or ebx, edx
	mov [edi+0x8c], ebx
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_470
	mov [edi+0x88], esi
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_470:
	mov dword [ebp-0x24], 0x1
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_480
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_170:
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov esi, [eax+0x48]
	add esi, 0x32
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_490
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_90:
	mov eax, [ebp+0xc]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_500
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_110:
	cmp dword [edi+0x90], 0x31
	jg _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_510
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_690:
	mov esi, [ebp+0x14]
	test esi, esi
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_520
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_530
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_770:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_540
	mov [edi+0x90], ebx
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_540:
	mov [edi+0x9c], ebx
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_180:
	mov dword [ebp-0x24], 0x0
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_440:
	cmp dword [edi+0x90], 0x31
	jle _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_550
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_550
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430:
	mov edx, [ebp-0x24]
	test edx, edx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_560
	not esi
	shr esi, 0x1f
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_550:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_570
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ebx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_580
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_700:
	and edx, 0x200
	xor dh, 0x2
	or ebx, edx
	mov [edi+0x94], ebx
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_590
	mov [edi+0x90], esi
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_590:
	mov [edi+0x9c], esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_150:
	mov dword [ebp-0x20], 0x0
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_370:
	cmp dword [edi+0x90], 0x31
	jle _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_600
	mov ebx, [ebp+0x18]
	test ebx, ebx
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_600
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_610
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_620
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_600:
	mov edx, [ebp+0x14]
	test edx, edx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_630
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_640
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_710:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_650
	mov [edi+0x90], esi
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_650:
	mov [edi+0x9c], esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_250:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_660
	mov edx, [ebp+0xc]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_320:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_670
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_260:
	mov edx, [edi+0x94]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_680
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_510:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_690
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_570:
	mov edx, [edi+0x94]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_700
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_630:
	mov edx, [edi+0x94]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_710
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_290:
	mov edx, [edi+0x8c]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_720
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_330:
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jnz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_730
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_340
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	js _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_740
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_380:
	mov edx, [edi+0x8c]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_750
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_450:
	mov edx, [edi+0x8c]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_760
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_520:
	mov edx, [edi+0x94]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_770
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_270:
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_240
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_240
	mov eax, [ebp-0x1c]
	mov [edi+0x90], eax
	mov edx, [ebp+0xc]
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_20
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_580:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430
	mov [edi+0x90], esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_430
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_640:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360
	mov [edi+0x90], esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_360
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_300:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310
	mov edx, [ebp-0x1c]
	mov [edi+0x88], edx
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_310
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_390:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_780
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_780
	mov [edi+0x88], esi
	mov dword [ebp-0x20], 0x0
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_410
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_460:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_790
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_790
	mov [edi+0x88], esi
	mov dword [ebp-0x24], 0x0
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_480
_Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_530:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_340
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_340
	mov [edi+0x90], ebx
	xor esi, esi
	jmp _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii_130


;BG_IndexForString(char const*, animStringItem_t*, int)
_Z17BG_IndexForStringPKcP16animStringItem_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_10
_Z17BG_IndexForStringPKcP16animStringItem_ti_130:
	mov dword [ebp-0x28], 0x0
_Z17BG_IndexForStringPKcP16animStringItem_ti_140:
	mov esi, [edi]
	test esi, esi
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_20
	lea eax, [edi+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x2c], 0x0
	jmp _Z17BG_IndexForStringPKcP16animStringItem_ti_30
_Z17BG_IndexForStringPKcP16animStringItem_ti_50:
	mov eax, edx
	mov edx, [ebp-0x28]
	cmp edx, [eax]
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_40
_Z17BG_IndexForStringPKcP16animStringItem_ti_70:
	add edi, 0x8
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x20]
	mov esi, [edx]
	add edx, 0x8
	mov [ebp-0x20], edx
	test esi, esi
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_20
_Z17BG_IndexForStringPKcP16animStringItem_ti_30:
	lea edx, [edi+0x4]
	mov [ebp-0x1c], edx
	cmp dword [edi+0x4], 0xffffffff
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_50
	movzx eax, byte [esi]
	test al, al
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_60
_Z17BG_IndexForStringPKcP16animStringItem_ti_100:
	mov dword [ebp-0x24], 0x0
_Z17BG_IndexForStringPKcP16animStringItem_ti_110:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x1c]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x28]
	cmp edx, [eax]
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_70
_Z17BG_IndexForStringPKcP16animStringItem_ti_40:
	mov eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_70
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17BG_IndexForStringPKcP16animStringItem_ti_20:
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_80
_Z17BG_IndexForStringPKcP16animStringItem_ti_150:
	mov dword [ebp-0x2c], 0xffffffff
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17BG_IndexForStringPKcP16animStringItem_ti_60:
	mov dword [ebp-0x24], 0x0
	mov ebx, 0x77
_Z17BG_IndexForStringPKcP16animStringItem_ti_90:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add [ebp-0x24], eax
	movzx eax, byte [esi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_90
	cmp dword [ebp-0x24], 0xffffffff
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_100
	jmp _Z17BG_IndexForStringPKcP16animStringItem_ti_110
_Z17BG_IndexForStringPKcP16animStringItem_ti_10:
	mov dword [ebp-0x28], 0x0
	mov ebx, 0x77
_Z17BG_IndexForStringPKcP16animStringItem_ti_120:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add [ebp-0x28], eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z17BG_IndexForStringPKcP16animStringItem_ti_120
	cmp dword [ebp-0x28], 0xffffffff
	jz _Z17BG_IndexForStringPKcP16animStringItem_ti_130
	jmp _Z17BG_IndexForStringPKcP16animStringItem_ti_140
_Z17BG_IndexForStringPKcP16animStringItem_ti_80:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bg_indexforstrin
	call _Z17BG_AnimParseErrorPKcz
	jmp _Z17BG_IndexForStringPKcP16animStringItem_ti_150
	nop


;BG_AnimScriptEvent(playerState_s*, scriptAnimEventTypes_t, int, int)
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0xc]
	cmp edx, 0x1
	jz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_10
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x6
	jg _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_20
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_10:
	mov eax, edx
	shl eax, 0x9
	lea eax, [eax+edx*4+0x16f60]
	add eax, [globalScriptData]
	mov ecx, [eax]
	test ecx, ecx
	jnz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_30
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_20:
	mov eax, 0xffffffff
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_30:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0xdc]
	add eax, 0x4
	mov [ebp-0x28], eax
	test ecx, ecx
	jle _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_20
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, [bgs]
	lea edi, [edx+eax*4+0x99a04]
	mov dword [ebp-0x24], 0x0
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_100:
	mov eax, [ebp-0x28]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov ebx, eax
	add ebx, 0x4
	mov edx, [eax]
	mov [ebp-0x1c], edx
	test edx, edx
	jle _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_40
	xor esi, esi
	jmp _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_50
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_80:
	sub eax, 0x1
	jz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_60
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_90:
	add esi, 0x1
	add ebx, 0xc
	cmp [ebp-0x1c], esi
	jz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_70
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_50:
	mov edx, [ebx]
	mov eax, [edx*8+animConditionsTable]
	test eax, eax
	jnz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_80
	mov eax, [edi+edx*8+0x458]
	test [ebx+0x4], eax
	jnz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_90
	mov eax, [edi+edx*8+0x45c]
	test [ebx+0x8], eax
	jnz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_90
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_110:
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x28], 0x4
	cmp ecx, [ebp-0x24]
	jnz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_100
	jmp _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_20
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_60:
	mov eax, [edi+edx*8+0x458]
	cmp eax, [ebx+0x4]
	jz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_90
	jmp _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_110
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_40:
	mov ecx, eax
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_130:
	mov edi, [ecx+0x7c]
	test edi, edi
	jz _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_20
	call _Z7ms_randv
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x1
	mov ecx, [ebp-0x20]
	cdq
	idiv dword [ecx+0x7c]
	shl edx, 0x4
	lea edx, [edx+ecx+0x80]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii
	jmp _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_120
_Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_70:
	mov ecx, [ebp-0x20]
	jmp _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii_130


;BG_IsCrouchingAnim(clientInfo_t const*, int)
_Z18BG_IsCrouchingAnimPK12clientInfo_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	and esi, 0xfffffdff
	mov ebx, [globalScriptData]
	cmp esi, [ebx+0xc000]
	jb _Z18BG_IsCrouchingAnimPK12clientInfo_ti_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, [globalScriptData]
_Z18BG_IsCrouchingAnimPK12clientInfo_ti_10:
	lea eax, [esi+esi*2]
	shl eax, 0x5
	mov edx, [ebx+eax+0x54]
	and edx, 0xc4
	mov ecx, [ebx+eax+0x58]
	and ecx, 0x300
	or edx, ecx
	setnz al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;BG_PlayerAnimation(int, entityState_s const*, clientInfo_t*)
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov [ebp-0x34], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x3c], ecx
	mov eax, [ecx+0x3e0]
	mov [esp], eax
	call _Z15GetLeanFractionf
	fstp st0
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax+0x3dc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x3e4]
	movss [ebp-0x24], xmm0
	mov eax, [eax+0x3e8]
	mov [esp], eax
	call _Z17AngleNormalize360f
	fstp dword [ebp-0x1c]
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x8]
	test ah, 0x3
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_10
	mov eax, [ebp-0x3c]
	mov dword [eax+0x3b0], 0x1
	mov dword [eax+0x3b8], 0x1
	mov dword [eax+0x380], 0x1
	mov eax, [ecx+0x8]
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_230:
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x20], xmm0
	test eax, 0x20000
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_20
	mov edx, [ebp-0x3c]
	test dword [edx+0x470], 0xc0000
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_30
	test ax, ax
	jns _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_40
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_20:
	movss xmm4, dword [ebp-0x1c]
	movaps xmm0, xmm4
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_270:
	mov edx, [ebp-0x3c]
	add edx, 0x3b0
	mov ecx, [ebp-0x3c]
	add ecx, 0x3ac
	mov [ebp-0x48], ecx
	mov ebx, bg_swingSpeed
	mov ecx, [ebx]
	mov eax, [ebp-0x48]
	movss xmm3, dword [ecx+0xc]
	movss [ebp-0x58], xmm4
	call _Z14BG_SwingAnglesffffPfPi
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test eax, 0x20000
	movss xmm4, dword [ebp-0x58]
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_50
	test al, 0x8
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_60
	mov eax, [ebp-0x3c]
	mov dword [eax+0x380], 0x0
	movss xmm0, dword [ebp-0x1c]
	movss [eax+0x37c], xmm0
	add eax, 0x37c
	mov [ebp-0x44], eax
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_360:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test ah, 0x3
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_70
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_260:
	mov edx, [ebp-0x3c]
	test dword [edx+0x470], 0xc0000
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_80
	movss xmm0, dword [ebp-0x20]
	movss [edx+0x3ac], xmm0
	movss [edx+0x37c], xmm0
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_80:
	test eax, 0x20000
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_90
	test ah, 0x3
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_90
	mov ecx, [ebp-0x3c]
	test dword [ecx+0x470], 0xc0000
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_100
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_90:
	pxor xmm0, xmm0
	movaps xmm1, xmm0
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_410:
	mov edx, [ebp-0x3c]
	add edx, 0x3b8
	mov eax, [ebp-0x3c]
	add eax, 0x3b4
	movss xmm3, dword [_float_0_15000001]
	movss xmm2, dword [_float_45_00000000]
	call _Z14BG_SwingAnglesffffPfPi
	mov edx, [ebp-0x38]
	mov eax, [edx+0xc4]
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x128]
	mov edx, [ebp-0x38]
	mov ecx, [edx+0x8c]
	lea edx, [ecx+ecx*8]
	mov ebx, edx
	shl ebx, 0x4
	add edx, ebx
	lea edx, [ecx+edx*2]
	shl edx, 0x2
	mov ecx, edx
	add ecx, [bgs]
	mov dword [ecx+0x99e5c], 0x0
	mov ecx, edx
	add ecx, [bgs]
	mov dword [ecx+0x99e60], 0x0
	mov ecx, [bgs]
	lea edx, [edx+ecx+0x99e5c]
	mov ecx, edi
	sar ecx, 0x5
	mov [ebp-0x5c], ecx
	and edi, 0x1f
	mov esi, 0x1
	mov ebx, esi
	mov ecx, edi
	shl ebx, cl
	mov ecx, [ebp-0x5c]
	or [edx+ecx*4], ebx
	mov ebx, [eax+0x130]
	mov eax, [ebp-0x38]
	mov edx, [eax+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov edx, eax
	add edx, [bgs]
	mov dword [edx+0x99e64], 0x0
	mov edx, eax
	add edx, [bgs]
	mov dword [edx+0x99e68], 0x0
	mov edx, [bgs]
	lea eax, [eax+edx+0x99e64]
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov ecx, ebx
	shl esi, cl
	or [eax+edx*4], esi
	mov eax, [ebp-0x38]
	test byte [eax+0xa], 0x4
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_110
	mov edx, [eax+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e88]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
	mov eax, [ebp-0x38]
	test dword [eax+0x8], 0x300
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_120
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_330:
	mov edx, [eax+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e60]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_340:
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax+0x3e4]
	xor edx, edx
	ucomiss xmm0, [_float_0_00000000]
	seta dl
	mov eax, [ebp-0x38]
	mov ebx, [eax+0x8c]
	lea eax, [ebx+ebx*8]
	mov esi, eax
	shl esi, 0x4
	add eax, esi
	lea eax, [ebx+eax*2]
	mov ebx, [bgs]
	lea eax, [ebx+eax*4+0x99e70]
	mov [eax+0xc], edx
	mov dword [eax+0x10], 0x0
	mov edx, [ebp-0x38]
	test byte [edx+0x8], 0x4
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_130
	mov edx, [edx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e78]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_350:
	mov edx, [ebp-0x38]
	test byte [edx+0x8], 0x40
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_140
	mov edx, [edx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e80]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_320:
	mov edx, [ebp-0x38]
	mov edi, [edx+0xcc]
	and edi, 0xfffffdff
	mov ecx, [bgs]
	mov [ebp-0x40], ecx
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov ebx, [eax+ecx+0x54]
	mov esi, [eax+ecx+0x58]
	mov ecx, esi
	or ecx, ebx
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_150
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x470]
	cdq
	mov ecx, esi
	xor ecx, edx
	xor eax, ebx
	or ecx, eax
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_150
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x40]
	lea edx, [eax+edx*4+0x99e68]
	mov [edx+0xc], ebx
	mov ebx, esi
	mov [edx+0x10], ebx
	mov edx, [bgs]
	mov [ebp-0x40], edx
	mov ecx, edx
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov eax, [eax+ecx+0x50]
	test al, 0x10
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_160
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_280:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x40]
	lea edx, [ecx+edx*4+0x99e90]
	mov dword [edx+0xc], 0x1
	mov dword [edx+0x10], 0x0
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_370:
	mov eax, [ebp-0x3c]
	mov ebx, [eax+0x4a8]
	mov edx, [ebp-0x44]
	mov eax, [edx+0x10]
	test eax, eax
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_170
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_300:
	mov edx, [ebp-0x48]
	mov eax, [edx+0x10]
	test eax, eax
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_180
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_310:
	mov edx, [ebp-0x3c]
	mov ebx, [edx+0x3f0]
	test ebx, ebx
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_190
	test dword [edx+0x3bc], 0xfffffdff
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_200
	mov dword [edx+0x3f0], 0x0
	mov dword [edx+0x3f4], 0x1
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_200:
	mov edx, [ebp-0x3c]
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_190:
	mov ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov eax, [ecx+0xcc]
	mov [esp], eax
	mov ecx, [ebp-0x44]
	mov eax, [ebp-0x34]
	call _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s
	mov eax, [ebp-0x38]
	mov [ebp+0xc], eax
	mov eax, [eax+0xd0]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x48]
	mov edx, [ebp-0x3c]
	mov eax, [ebp-0x34]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z19BG_RunLerpFrameRateiP12clientInfo_tP11lerpFrame_tiPK13entityState_s
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_10:
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0x470]
	test edx, 0xc0000
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_210
	test ax, ax
	js _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_220
	and dl, 0x6
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_220
	mov ecx, [ebp-0x3c]
	mov ebx, [ecx+0x488]
	test ebx, ebx
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_230
	mov dword [ecx+0x3b0], 0x1
	mov dword [ecx+0x3b8], 0x1
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_230
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_60:
	mov edx, [ebp-0x38]
	mov eax, [edx+0xcc]
	and ah, 0xfd
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [bgs]
	test byte [eax+0x50], 0x30
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_240
	mov eax, [ebp-0x3c]
	mov edx, [eax+0x380]
	test edx, edx
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_250
	mov edx, eax
	mov ecx, eax
	add edx, 0x380
	add ecx, 0x37c
	mov [ebp-0x44], ecx
	mov ecx, [ebx]
	mov eax, bg_legYawTolerance
	mov ebx, [eax]
	mov eax, [ebp-0x44]
	movss xmm3, dword [ecx+0xc]
	movss xmm2, dword [_float_150_00000000]
	movss xmm1, dword [ebx+0xc]
	movaps xmm0, xmm4
	call _Z14BG_SwingAnglesffffPfPi
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test ah, 0x3
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_260
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_70:
	movss xmm0, dword [ebp-0x1c]
	mov ecx, [ebp-0x3c]
	movss [ecx+0x3ac], xmm0
	movss [ecx+0x37c], xmm0
	mov eax, [edx+0x8]
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_80
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_220:
	mov ecx, [ebp-0x3c]
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_210:
	mov dword [ecx+0x3b0], 0x1
	mov dword [ecx+0x3b8], 0x1
	mov dword [ecx+0x380], 0x1
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_230
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_30:
	movss xmm4, dword [ebp-0x20]
	movaps xmm0, xmm4
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_270
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_150:
	mov ecx, [ebp-0x40]
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov eax, [eax+ecx+0x50]
	test al, 0x10
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_280
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_160:
	test al, 0x20
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_290
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x40]
	lea edx, [ecx+edx*4+0x99e90]
	mov dword [edx+0xc], 0x2
	mov dword [edx+0x10], 0x0
	mov eax, [ebp-0x3c]
	mov ebx, [eax+0x4a8]
	mov edx, [ebp-0x44]
	mov eax, [edx+0x10]
	test eax, eax
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_300
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_170:
	and ah, 0xfd
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14XAnimGetWeightPK11XAnimTree_sj
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	ucomiss xmm0, [_float_0_00000000]
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_300
	jp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_300
	mov eax, [ebp-0x44]
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x96
	mov edx, [ebp-0x48]
	mov eax, [edx+0x10]
	test eax, eax
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_310
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_180:
	and ah, 0xfd
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14XAnimGetWeightPK11XAnimTree_sj
	fstp dword [ebp-0x28]
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_0_00000000]
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_310
	jp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_310
	mov eax, [ebp-0x48]
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x96
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_310
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_140:
	mov edx, [edx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e80]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_320
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_110:
	mov edx, [eax+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e88]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov eax, [ebp-0x38]
	test dword [eax+0x8], 0x300
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_330
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_120:
	mov edx, [eax+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e60]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_340
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_130:
	mov edx, [edx+0x8c]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e78]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_350
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_50:
	mov edx, [ebp-0x3c]
	add edx, 0x380
	mov ecx, [ebp-0x3c]
	add ecx, 0x37c
	mov [ebp-0x44], ecx
	mov ecx, [ebx]
	mov eax, [ebp-0x44]
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_420:
	movss xmm3, dword [ecx+0xc]
	movss xmm2, dword [_float_150_00000000]
	pxor xmm1, xmm1
	movaps xmm0, xmm4
	call _Z14BG_SwingAnglesffffPfPi
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_360
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_290:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8c]
	lea edx, [eax+eax*8]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x40]
	lea edx, [ecx+edx*4+0x99e90]
	mov dword [edx+0xc], 0x0
	mov dword [edx+0x10], 0x0
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_370
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_40:
	test al, 0x8
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_380
	test al, 0x40
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_390
	test eax, 0x40000
	jnz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_380
	mov eax, player_move_factor_on_torso
	mov eax, [eax]
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x1c]
	movss xmm4, dword [ebp-0x20]
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_270
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_100:
	cmp eax, 0x8000
	jz _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_90
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, [_float_180_00000000]
	ja _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_400
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_430:
	addss xmm0, xmm0
	pxor xmm1, xmm1
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_410
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_250:
	mov edx, eax
	add edx, 0x380
	add eax, 0x37c
	mov [ebp-0x44], eax
	mov ecx, [ebx]
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_420
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_240:
	mov ecx, [ebp-0x3c]
	mov dword [ecx+0x380], 0x0
	mov edx, ecx
	add edx, 0x380
	add ecx, 0x37c
	mov [ebp-0x44], ecx
	mov ecx, [ebx]
	mov eax, [ebp-0x44]
	movss xmm3, dword [ecx+0xc]
	movss xmm2, dword [_float_150_00000000]
	pxor xmm1, xmm1
	movss xmm0, dword [ebp-0x1c]
	call _Z14BG_SwingAnglesffffPfPi
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_360
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_380:
	movss xmm4, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_270
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_400:
	subss xmm0, [_float_360_00000000]
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_430
_Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_390:
	movss xmm4, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	movss xmm2, dword [_float_45_00000000]
	pxor xmm1, xmm1
	jmp _Z18BG_PlayerAnimationiPK13entityState_sP12clientInfo_t_270
	nop


;BG_SetConditionBit(int, int, int)
_Z18BG_SetConditionBitiii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0x10]
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	shl eax, 0x2
	mov edx, [ebp+0xc]
	lea edx, [eax+edx*8]
	mov eax, edx
	add eax, [bgs]
	mov dword [eax+0x99e5c], 0x0
	mov eax, edx
	add eax, [bgs]
	mov dword [eax+0x99e60], 0x0
	mov eax, [bgs]
	lea edx, [edx+eax+0x99e5c]
	mov esi, ebx
	sar esi, 0x5
	and ebx, 0x1f
	mov eax, 0x1
	mov ecx, ebx
	shl eax, cl
	or [edx+esi*4], eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;BG_InitWeaponString(int, char const*)
_Z19BG_InitWeaponStringiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [eax*8+weaponStrings], edi
	movzx eax, byte [edi]
	test al, al
	jnz _Z19BG_InitWeaponStringiPKc_10
_Z19BG_InitWeaponStringiPKc_30:
	xor esi, esi
_Z19BG_InitWeaponStringiPKc_40:
	mov eax, weaponStrings
	mov edx, [ebp+0x8]
	mov [eax+edx*8+0x4], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_InitWeaponStringiPKc_10:
	xor esi, esi
	mov ebx, 0x77
_Z19BG_InitWeaponStringiPKc_20:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add esi, eax
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z19BG_InitWeaponStringiPKc_20
	cmp esi, 0xffffffff
	jz _Z19BG_InitWeaponStringiPKc_30
	jmp _Z19BG_InitWeaponStringiPKc_40


;BG_IsKnifeMeleeAnim(clientInfo_t const*, int)
_Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov edx, [globalScriptData]
	cmp ebx, [edx+0xc000]
	jb _Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [globalScriptData]
_Z19BG_IsKnifeMeleeAnimPK12clientInfo_ti_10:
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	mov eax, [edx+eax+0x50]
	shr eax, 0x8
	and eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;BG_UpdatePlayerDObj(int, DObj_s*, entityState_s*, clientInfo_t*, int)
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	xor ebx, ebx
	mov eax, [ebp+0x10]
	test dword [eax+0x8], 0x300
	cmovz ebx, [eax+0xc4]
	mov edx, [ebp+0x14]
	mov edx, [edx+0x4a8]
	mov [ebp-0x120], edx
	mov ecx, [ebp+0x14]
	mov eax, [ecx]
	test eax, eax
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_10
	cmp byte [ecx+0x3c], 0x0
	jnz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_20
	mov eax, [ebp-0x120]
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_90:
	mov [esp], eax
	call _Z14XAnimClearTreeP11XAnimTree_s
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999fc]
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_140:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_20:
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_30
	mov eax, [ebp+0x14]
	cmp ebx, [eax+0x4ac]
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_40
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_130:
	mov edx, [ebp+0x10]
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_110:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999fc]
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_30:
	mov eax, [ebp+0x14]
	add eax, 0x3c
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999ec]
	mov [ebp-0x118], eax
	mov word [ebp-0x114], 0x0
	mov byte [ebp-0x112], 0x0
	mov ecx, [ebp+0x14]
	mov [ecx+0x4ac], ebx
	mov edx, [ebp+0x10]
	mov eax, [edx+0xc8]
	mov [ecx+0x4b0], al
	mov edx, [bgs]
	mov eax, [edx+0x999f4]
	test eax, eax
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_50
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	lea edx, [ebp-0x118]
	mov [esp], edx
	call eax
	movzx eax, ax
	mov [ebp-0x11c], eax
	mov edx, [bgs]
	mov ecx, eax
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_120:
	mov edi, [ebp+0x14]
	lea esi, [ebp+ecx*8-0x118]
	mov dword [ebp-0x124], 0x0
	cmp byte [edi+0x7c], 0x0
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_60
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_80:
	mov ebx, [ebp-0x124]
	shl ebx, 0x6
	mov ecx, [ebp+0x14]
	lea eax, [ebx+ecx+0x7c]
	mov [esp], eax
	call dword [edx+0x999ec]
	mov [esi], eax
	mov eax, [ebp+0x14]
	lea ebx, [ebx+eax+0x1fc]
	mov [esp], ebx
	call _Z13SL_FindStringPKc
	mov [esi+0x4], ax
	mov eax, [ebp+0x18]
	movzx ecx, byte [ebp-0x124]
	sar eax, cl
	and eax, 0x1
	mov [esi+0x6], al
	add dword [ebp-0x11c], 0x1
	add dword [ebp-0x124], 0x1
	add edi, 0x40
	add esi, 0x8
	cmp dword [ebp-0x124], 0x6
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_70
	mov edx, [bgs]
	cmp byte [edi+0x7c], 0x0
	jnz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_80
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_60:
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [esp+0xc], eax
	mov eax, [ebp-0x120]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x11c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x118]
	mov [esp], ecx
	call dword [edx+0x999f0]
	mov eax, [ebp+0x14]
	mov dword [eax+0x3f4], 0x0
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_10:
	mov eax, edx
	jmp _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_90
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_70:
	mov edx, [bgs]
	jmp _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_60
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_40:
	mov edx, eax
	movzx eax, byte [eax+0x4b0]
	mov ecx, [ebp+0x10]
	cmp eax, [ecx+0xc8]
	jz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_100
	mov edx, ecx
	jmp _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_110
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_50:
	mov dword [ebp-0x11c], 0x1
	mov ecx, [ebp-0x11c]
	jmp _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_120
_Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_100:
	mov edi, [edx+0x3f4]
	test edi, edi
	jnz _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_130
	jmp _Z19BG_UpdatePlayerDObjiP6DObj_sP13entityState_sP12clientInfo_ti_140


;BG_InitWeaponStrings()
_Z20BG_InitWeaponStringsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], weaponStrings
	call memset
	leave
	jmp _Z20BG_LoadWeaponStringsv


;BG_SetConditionValue(int, int, unsigned long long)
_Z20BG_SetConditionValueiiy:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0x14]
	lea eax, [esi+esi*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [esi+eax*2]
	shl eax, 0x2
	mov edx, [ebp+0xc]
	lea edx, [eax+edx*8+0x99e50]
	add edx, [bgs]
	mov [edx+0xc], ecx
	mov ecx, ebx
	xor ebx, ebx
	mov [edx+0x10], ecx
	pop ebx
	pop esi
	pop ebp
	ret


;BG_AnimScriptAnimation(playerState_s*, aistateEnum_t, scriptAnimMoveTypes_t, int)
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x4], 0x6
	jle _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_10
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_20:
	mov eax, 0xffffffff
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_10:
	mov ecx, [globalScriptData]
	mov [ebp-0x38], ecx
	mov eax, [bgs]
	mov [ebp-0x2c], eax
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_100:
	mov eax, [ebp+0xc]
	test eax, eax
	js _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_20
	mov eax, [ebp+0x10]
	shl eax, 0x9
	mov edx, [ebp+0x10]
	lea ecx, [eax+edx*4]
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	mov edx, eax
	shl edx, 0x7
	add eax, edx
	lea eax, [ecx+eax*4+0xc000]
	add eax, [ebp-0x38]
	mov edi, [eax+0x4]
	test edi, edi
	jz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_30
	mov ecx, [ebx+0xdc]
	mov [ebp-0x30], ecx
	add eax, 0x8
	mov [ebp-0x28], eax
	test edi, edi
	jle _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_30
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, [ebp-0x2c]
	lea eax, [edx+eax*4+0x99a04]
	mov [ebp-0x20], eax
	mov dword [ebp-0x24], 0x0
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_90:
	mov ecx, [ebp-0x28]
	mov ecx, [ecx]
	mov [ebp-0x34], ecx
	add ecx, 0x4
	mov eax, [ebp-0x34]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	test eax, eax
	jle _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_40
	xor esi, esi
	jmp _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_50
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_70:
	sub eax, 0x1
	jz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_60
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_80:
	add esi, 0x1
	add ecx, 0xc
	cmp [ebp-0x1c], esi
	jz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_40
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_50:
	mov edx, [ecx]
	mov eax, [edx*8+animConditionsTable]
	test eax, eax
	jnz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_70
	mov eax, [ebp-0x20]
	mov eax, [eax+edx*8+0x458]
	test [ecx+0x4], eax
	jnz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_80
	mov eax, [ebp-0x20]
	mov edx, [eax+edx*8+0x45c]
	test [ecx+0x8], edx
	jnz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_80
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_120:
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x28], 0x4
	cmp edi, [ebp-0x24]
	jnz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_90
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_30:
	sub dword [ebp+0xc], 0x1
	jmp _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_100
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_40:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x7c]
	test eax, eax
	jz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_20
	mov ecx, [ebp-0x30]
	lea edx, [ecx+ecx*8]
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	lea edx, [ecx+edx*2]
	shl edx, 0x2
	mov eax, [ebp-0x2c]
	mov dword [edx+eax+0x99e74], 0x0
	mov eax, edx
	add eax, [bgs]
	mov dword [eax+0x99e78], 0x0
	mov eax, [bgs]
	lea edx, [edx+eax+0x99e74]
	mov esi, [ebp+0x10]
	sar esi, 0x5
	and dword [ebp+0x10], 0x1f
	mov eax, 0x1
	movzx ecx, byte [ebp+0x10]
	shl eax, cl
	or [edx+esi*4], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0xdc]
	mov ecx, [ebp-0x34]
	cdq
	idiv dword [ecx+0x7c]
	shl edx, 0x4
	lea edx, [edx+ecx+0x80]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z17BG_ExecuteCommandP13playerState_sP19animScriptCommand_tiii
	add eax, 0x1
	setnz al
	movzx eax, al
	jmp _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_110
_Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_60:
	mov eax, [ebp-0x20]
	mov edx, [eax+edx*8+0x458]
	cmp edx, [ecx+0x4]
	jz _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_80
	jmp _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti_120
	add [eax], al


;BG_AnimationIndexForString(char const*)
_Z26BG_AnimationIndexForStringPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, [g_pLoadAnims]
	test ecx, ecx
	jz _Z26BG_AnimationIndexForStringPKc_10
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz _Z26BG_AnimationIndexForStringPKc_20
_Z26BG_AnimationIndexForStringPKc_90:
	xor edi, edi
_Z26BG_AnimationIndexForStringPKc_100:
	mov edx, [g_pLoadAnims]
	mov ebx, edx
	mov eax, [g_piNumLoadAnims]
	mov esi, [eax]
	test esi, esi
	jz _Z26BG_AnimationIndexForStringPKc_30
	xor esi, esi
	jmp _Z26BG_AnimationIndexForStringPKc_40
_Z26BG_AnimationIndexForStringPKc_60:
	add esi, 0x1
	add ebx, 0x48
	cmp esi, [eax]
	jae _Z26BG_AnimationIndexForStringPKc_50
_Z26BG_AnimationIndexForStringPKc_40:
	cmp edi, [ebx+0x4]
	jnz _Z26BG_AnimationIndexForStringPKc_60
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26BG_AnimationIndexForStringPKc_70
	mov eax, [g_piNumLoadAnims]
	add esi, 0x1
	add ebx, 0x48
	cmp esi, [eax]
	jb _Z26BG_AnimationIndexForStringPKc_40
_Z26BG_AnimationIndexForStringPKc_50:
	mov edx, [g_pLoadAnims]
_Z26BG_AnimationIndexForStringPKc_30:
	mov ebx, [eax]
	lea ebx, [ebx+ebx*8]
	lea ebx, [edx+ebx*8]
	mov eax, [bgs]
	mov eax, [eax+0x999e8]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_multiplayer
	call _Z12Scr_FindAnimPKcS0_P10scr_anim_si
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea eax, [ebx+0x8]
	mov [esp], eax
	call strcpy
	mov [ebx+0x4], edi
	mov edx, [g_piNumLoadAnims]
	mov ecx, [edx]
	lea eax, [ecx+0x1]
	mov [edx], eax
	mov eax, ecx
_Z26BG_AnimationIndexForStringPKc_180:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26BG_AnimationIndexForStringPKc_20:
	xor edi, edi
	mov ebx, 0x77
_Z26BG_AnimationIndexForStringPKc_80:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add edi, eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z26BG_AnimationIndexForStringPKc_80
	cmp edi, 0xffffffff
	jz _Z26BG_AnimationIndexForStringPKc_90
	jmp _Z26BG_AnimationIndexForStringPKc_100
_Z26BG_AnimationIndexForStringPKc_10:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz _Z26BG_AnimationIndexForStringPKc_110
_Z26BG_AnimationIndexForStringPKc_160:
	xor edi, edi
_Z26BG_AnimationIndexForStringPKc_170:
	mov eax, [globalScriptData]
	mov ebx, eax
	mov edx, [eax+0xc000]
	test edx, edx
	jz _Z26BG_AnimationIndexForStringPKc_120
	xor esi, esi
	jmp _Z26BG_AnimationIndexForStringPKc_130
_Z26BG_AnimationIndexForStringPKc_140:
	add esi, 0x1
	add ebx, 0x60
	cmp esi, [eax+0xc000]
	jae _Z26BG_AnimationIndexForStringPKc_120
_Z26BG_AnimationIndexForStringPKc_130:
	cmp edi, [ebx+0x4c]
	jnz _Z26BG_AnimationIndexForStringPKc_140
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z26BG_AnimationIndexForStringPKc_70
	mov eax, [globalScriptData]
	add esi, 0x1
	add ebx, 0x60
	cmp esi, [eax+0xc000]
	jb _Z26BG_AnimationIndexForStringPKc_130
_Z26BG_AnimationIndexForStringPKc_120:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_animationinde
	call _Z17BG_AnimParseErrorPKcz
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26BG_AnimationIndexForStringPKc_110:
	xor edi, edi
	mov ebx, 0x77
_Z26BG_AnimationIndexForStringPKc_150:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add edi, eax
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz _Z26BG_AnimationIndexForStringPKc_150
	cmp edi, 0xffffffff
	jz _Z26BG_AnimationIndexForStringPKc_160
	jmp _Z26BG_AnimationIndexForStringPKc_170
_Z26BG_AnimationIndexForStringPKc_70:
	mov eax, esi
	jmp _Z26BG_AnimationIndexForStringPKc_180
	nop
	add [eax], al


;BG_Player_DoControllersSetup(entityState_s const*, clientInfo_t*, int)
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x8]
	test ch, 0x3
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_10
	pxor xmm1, xmm1
	movss [ebp-0x24], xmm1
	movss [ebp-0x1c], xmm1
	movss [ebp-0x30], xmm1
	movss [ebp-0x28], xmm1
	mov edx, [ebp+0xc]
	add edx, 0x3e4
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x3e4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm4, dword [edx+0x8]
	movss [ebp-0x34], xmm4
	mov eax, [ebx+0x37c]
	mov [ebp-0x20], eax
	mov eax, [ebx+0x3ac]
	mov [ebp-0x2c], eax
	test dword [ebx+0x470], 0xc0000
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_20
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_230:
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z14AnglesSubtractPKfS0_Pf
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14AnglesSubtractPKfS0_Pf
	mov edx, [ebp+0xc]
	mov eax, [edx+0x3e0]
	mov [esp], eax
	call _Z15GetLeanFractionf
	fstp dword [ebp-0x19c]
	movss xmm3, dword [ebp-0x19c]
	movaps xmm2, xmm3
	mulss xmm2, [_float_50_00000000]
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_92500001]
	movss [ebp-0x28], xmm0
	movss [ebp-0x34], xmm0
	pxor xmm7, xmm7
	ucomiss xmm3, xmm7
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_30
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_30
	movss [ebp-0xf0], xmm7
	mov ebx, [esi+0x8]
	test ebx, 0x20000
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_40
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_120:
	test bl, 0x8
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_50
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_130:
	ucomiss xmm3, xmm7
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_60
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_60
	movss xmm4, dword [ebp-0x34]
	movss xmm3, dword [ebp-0x28]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_380:
	mulss xmm2, [_float_0_07500000]
	addss xmm2, [ebp-0x1c]
	movss [ebp-0x1c], xmm2
	movss xmm2, dword [ebp-0x30]
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_20000000]
	movss [ebp-0x84], xmm0
	movss xmm5, dword [ebp-0x2c]
	movaps xmm0, xmm5
	mulss xmm0, [_float_0_40000001]
	movss [ebp-0x80], xmm0
	movss xmm6, dword [_float_0_50000000]
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	movss [ebp-0x7c], xmm0
	movss xmm0, dword [esi+0xdc]
	ucomiss xmm0, xmm7
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_70
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_70
	ucomiss xmm7, [esi+0xe0]
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_70
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_80
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_70:
	subss xmm0, [esi+0xe0]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, xmm6
	movss [esp], xmm1
	movss [ebp-0x128], xmm0
	movss [ebp-0x148], xmm2
	movss [ebp-0x158], xmm3
	movss [ebp-0x168], xmm4
	movss [ebp-0x178], xmm5
	movss [ebp-0x188], xmm6
	movss [ebp-0x198], xmm7
	call floorf
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x128]
	subss xmm0, [ebp-0x10c]
	mulss xmm0, [_float_360_00000000]
	addss xmm0, [ebp-0x84]
	movss [ebp-0x84], xmm0
	movss xmm7, dword [ebp-0x198]
	movss xmm6, dword [ebp-0x188]
	movss xmm5, dword [ebp-0x178]
	movss xmm4, dword [ebp-0x168]
	movss xmm3, dword [ebp-0x158]
	movss xmm2, dword [ebp-0x148]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_80:
	movss xmm0, dword [_float_0_30000001]
	movss [ebp-0x114], xmm0
	mulss xmm0, xmm2
	movss [ebp-0x78], xmm0
	movss xmm0, dword [_float_0_40000001]
	mulss xmm0, xmm5
	movss [ebp-0x74], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	movss [ebp-0x70], xmm0
	mulss xmm2, xmm6
	movss [ebp-0x6c], xmm2
	mulss xmm5, [_float_0_20000000]
	movss [ebp-0x68], xmm5
	mulss xmm3, [_float__0_60000002]
	movss [ebp-0x64], xmm3
	movss [ebp-0xec], xmm7
	movss xmm6, dword [_float_0_10000000]
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_90
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_30:
	mov ebx, [esi+0x8]
	test bl, 0x4
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_100
	ucomiss xmm3, xmm7
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_110
	mov eax, player_lean_shift_crouch_right
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_350:
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	movaps xmm1, xmm7
	subss xmm1, xmm0
	movss [ebp-0xf0], xmm1
	test ebx, 0x20000
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_120
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_40:
	movss xmm0, dword [ebp-0x20]
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x3e8]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x128], xmm0
	movss [ebp-0x148], xmm2
	movss [ebp-0x158], xmm3
	movss [ebp-0x198], xmm7
	call floorf
	fstp dword [ebp-0x100]
	movss xmm0, dword [ebp-0x128]
	subss xmm0, [ebp-0x100]
	mulss xmm0, [_float_360_00000000]
	movss [ebp-0x20], xmm0
	movss xmm7, dword [ebp-0x198]
	movss xmm3, dword [ebp-0x158]
	movss xmm2, dword [ebp-0x148]
	test bl, 0x8
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_130
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_50:
	ucomiss xmm3, xmm7
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_140
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_150
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_140:
	movss xmm4, dword [_float_0_50000000]
	mulss xmm4, [ebp-0x34]
	movss [ebp-0x34], xmm4
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_390:
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [esi+0xdc]
	movss [ebp-0x24], xmm0
	cvtss2sd xmm0, [ebp-0x2c]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xf4], xmm0
	movss [esp], xmm0
	movss [ebp-0x158], xmm3
	movss [ebp-0x168], xmm4
	movss [ebp-0x198], xmm7
	call sinf
	fstp dword [ebp-0x19c]
	movss xmm1, dword [ebp-0x19c]
	movss xmm0, dword [ebp-0xf4]
	movss [esp], xmm0
	movss [ebp-0x138], xmm1
	call cosf
	fstp dword [ebp-0x104]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, [ebp-0x104]
	movaps xmm0, xmm2
	mulss xmm0, [_float__24_00000000]
	movss xmm7, dword [ebp-0x198]
	addss xmm0, xmm7
	movss [ebp-0xec], xmm0
	movss xmm1, dword [ebp-0x138]
	movaps xmm0, xmm1
	mulss xmm0, [_float__12_00000000]
	addss xmm0, [ebp-0xf0]
	movss [ebp-0xf0], xmm0
	movss xmm3, dword [ebp-0x158]
	mulss xmm1, xmm3
	ucomiss xmm1, xmm7
	movss xmm4, dword [ebp-0x168]
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_160
	xorps xmm3, [_data16_80000000]
	mulss xmm2, xmm3
	mulss xmm2, [_float_16_00000000]
	addss xmm2, xmm0
	movss [ebp-0xf0], xmm2
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_160:
	movss [ebp-0x84], xmm7
	movss xmm3, dword [ebp-0x28]
	movaps xmm0, xmm3
	mulss xmm0, [_float__1_20000005]
	movss [ebp-0x80], xmm0
	movss xmm1, dword [_float_0_30000001]
	movss [ebp-0x114], xmm1
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	movss [ebp-0x7c], xmm0
	movss xmm0, dword [esi+0xdc]
	ucomiss xmm0, xmm7
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_170
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_170
	ucomiss xmm7, [esi+0xe0]
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_170
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_180
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_170:
	subss xmm0, [esi+0xe0]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x128], xmm0
	movss [ebp-0x158], xmm3
	movss [ebp-0x168], xmm4
	movss [ebp-0x198], xmm7
	call floorf
	fstp dword [ebp-0x108]
	movss xmm0, dword [ebp-0x128]
	subss xmm0, [ebp-0x108]
	mulss xmm0, [_float_360_00000000]
	addss xmm0, [ebp-0x84]
	movss [ebp-0x84], xmm0
	movss xmm7, dword [ebp-0x198]
	movss xmm4, dword [ebp-0x168]
	movss xmm3, dword [ebp-0x158]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_180:
	mov dword [ebp-0x78], 0x0
	movss xmm1, dword [ebp-0x2c]
	movss xmm6, dword [_float_0_10000000]
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	movaps xmm2, xmm3
	mulss xmm2, [_float__0_20000000]
	addss xmm0, xmm2
	movss [ebp-0x74], xmm0
	mulss xmm3, [_float_0_20000000]
	movss [ebp-0x70], xmm3
	mov eax, [ebp-0x30]
	mov [ebp-0x6c], eax
	mulss xmm1, [_float_0_80000001]
	addss xmm1, [ebp-0x28]
	movss [ebp-0x68], xmm1
	movss [ebp-0x64], xmm2
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_90:
	movss xmm1, dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, xmm1
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x38]
	movss xmm2, dword [ebp-0x114]
	mulss xmm2, xmm0
	movss [ebp-0x5c], xmm2
	mov dword [ebp-0x58], 0x0
	movss xmm2, dword [_float_0_69999999]
	mulss xmm1, xmm2
	movss [ebp-0x54], xmm1
	mulss xmm0, xmm2
	movss [ebp-0x50], xmm0
	mulss xmm4, [_float__0_30000001]
	movss [ebp-0x4c], xmm4
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x40], 0x0
	movss xmm0, dword [esi+0xe0]
	ucomiss xmm0, xmm7
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_190
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_190
	ucomiss xmm7, [esi+0xdc]
	jp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_190
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_200
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_190:
	subss xmm0, [esi+0xdc]
	mulss xmm0, [_float_0_00277778]
	movaps xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x128], xmm0
	movss [ebp-0x188], xmm6
	call floorf
	fstp dword [ebp-0x110]
	movss xmm0, dword [ebp-0x128]
	subss xmm0, [ebp-0x110]
	mulss xmm0, [_float_360_00000000]
	movss [ebp-0x48], xmm0
	movss xmm6, dword [ebp-0x188]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_200:
	xor ebx, ebx
	lea ecx, [ebp-0x84]
	xor edx, edx
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_210:
	mov eax, [edx+ecx]
	mov [edx+ebp-0xe4], eax
	mov eax, [edx+ecx+0x4]
	mov [edx+ebp-0xe0], eax
	mov eax, [edx+ecx+0x8]
	mov [edx+ebp-0xdc], eax
	add ebx, 0x1
	add edx, 0xc
	cmp ebx, 0x6
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_210
	mov eax, [ebp-0x24]
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x98], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x94], eax
	movss xmm0, dword [ebp-0xec]
	movss [ebp-0x90], xmm0
	movss xmm1, dword [ebp-0xf0]
	movss [ebp-0x8c], xmm1
	mov dword [ebp-0x88], 0x0
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_220
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_20:
	movss xmm2, dword [ebx+0x3b4]
	movss [ebp-0x30], xmm2
	and cl, 0x8
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_230
	mulss xmm2, [_float_0_00277778]
	movss [ebp-0xf8], xmm2
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x138], xmm1
	call floorf
	fstp dword [ebp-0xfc]
	movss xmm2, dword [ebp-0xf8]
	subss xmm2, [ebp-0xfc]
	mulss xmm2, [_float_360_00000000]
	movss [ebp-0x30], xmm2
	movss xmm1, dword [ebp-0x138]
	ucomiss xmm2, xmm1
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_240
	mulss xmm2, [_float_0_50000000]
	movss [ebp-0x30], xmm2
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_230
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_10:
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xe4]
	mov [esp], eax
	call memset
	movss xmm6, dword [_float_0_10000000]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_220:
	cvtsi2ss xmm5, dword [ebp+0x10]
	movaps xmm3, xmm5
	mulss xmm3, [_float_0_36000001]
	xor edi, edi
	movaps xmm4, xmm3
	xorps xmm4, [_data16_80000000]
	mov ecx, [ebp+0xc]
	add ecx, 0x3f8
	xor esi, esi
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_270:
	lea ebx, [ebp-0xe4]
	add ebx, esi
	mov edx, 0x1
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_260:
	lea eax, [edx*4]
	movss xmm2, dword [ebx+eax-0x4]
	lea eax, [ecx+eax]
	movss xmm0, dword [eax-0x4]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	ucomiss xmm1, xmm3
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_250
	addss xmm0, xmm3
	movss [eax-0x4], xmm0
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_310:
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_260
	add edi, 0x1
	add esi, 0xc
	add ecx, 0xc
	cmp edi, 0x6
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_270
	mov ecx, [ebp+0xc]
	add ecx, 0x440
	mov dl, 0x1
	movaps xmm4, xmm3
	xorps xmm4, [_data16_80000000]
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_290:
	lea eax, [edx*4]
	movss xmm2, dword [eax+ebp-0xa0]
	add eax, ecx
	movss xmm0, dword [eax-0x4]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	ucomiss xmm1, xmm3
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_280
	addss xmm0, xmm3
	movss [eax-0x4], xmm0
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_330:
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_290
	mov eax, [ebp+0xc]
	add eax, 0x44c
	mov [esp+0x8], eax
	mulss xmm5, xmm6
	movss [esp+0x4], xmm5
	lea eax, [ebp-0x90]
	mov [esp], eax
	call _Z13BG_LerpOffsetPffS_
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_250:
	ucomiss xmm4, xmm1
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_300
	subss xmm0, xmm3
	movss [eax-0x4], xmm0
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_310
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_300:
	movss [eax-0x4], xmm2
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_310
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_280:
	ucomiss xmm4, xmm1
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_320
	subss xmm0, xmm3
	movss [eax-0x4], xmm0
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_330
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_320:
	movss [eax-0x4], xmm2
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_330
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_100:
	ucomiss xmm3, xmm7
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_340
	mov eax, player_lean_shift_right
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_350
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_60:
	and bl, 0x4
	jz _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_360
	ucomiss xmm3, xmm7
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_370
	mov eax, player_lean_rotate_crouch_right
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_410:
	mov eax, [eax]
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x28], xmm0
	movss xmm4, dword [ebp-0x34]
	mulss xmm4, [eax+0xc]
	movss [ebp-0x34], xmm4
	movaps xmm3, xmm0
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_380
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_150:
	movss xmm4, dword [ebp-0x34]
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_390
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_360:
	ucomiss xmm3, xmm7
	jbe _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_400
	mov eax, player_lean_rotate_right
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_410
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_110:
	mov eax, player_lean_shift_crouch_left
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_350
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_340:
	mov eax, player_lean_shift_left
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_350
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_240:
	mulss xmm2, [_float_0_25000000]
	movss [ebp-0x30], xmm2
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_230
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_370:
	mov eax, player_lean_rotate_crouch_left
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_410
_Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_400:
	mov eax, player_lean_rotate_left
	jmp _Z28BG_Player_DoControllersSetupPK13entityState_sP12clientInfo_ti_410


;BG_AnimUpdatePlayerStateConditions(pmove_t*)
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	mov [esp], eax
	call _Z26BG_GetViewmodelWeaponIndexPK13playerState_s
	mov [esp], eax
	call _Z15BG_GetWeaponDefj
	mov edi, [eax+0x128]
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xdc]
	lea edx, [ecx+ecx*8]
	mov ebx, edx
	shl ebx, 0x4
	add edx, ebx
	lea edx, [ecx+edx*2]
	shl edx, 0x2
	mov ecx, edx
	add ecx, [bgs]
	mov dword [ecx+0x99e5c], 0x0
	mov ecx, edx
	add ecx, [bgs]
	mov dword [ecx+0x99e60], 0x0
	mov ecx, [bgs]
	lea edx, [edx+ecx+0x99e5c]
	mov ecx, edi
	sar ecx, 0x5
	mov [ebp-0x2c], ecx
	and edi, 0x1f
	mov esi, 0x1
	mov ebx, esi
	mov ecx, edi
	shl ebx, cl
	mov ecx, [ebp-0x2c]
	or [edx+ecx*4], ebx
	mov ebx, [eax+0x130]
	mov eax, [ebp-0x1c]
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov edx, eax
	add edx, [bgs]
	mov dword [edx+0x99e64], 0x0
	mov edx, eax
	add edx, [bgs]
	mov dword [edx+0x99e68], 0x0
	mov edx, [bgs]
	lea eax, [eax+edx+0x99e64]
	mov edx, ebx
	sar edx, 0x5
	and ebx, 0x1f
	mov ecx, ebx
	shl esi, cl
	or [eax+edx*4], esi
	mov eax, [ebp-0x1c]
	test byte [eax+0xb2], 0x4
	jz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_10
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e88]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
	mov eax, [ebp-0x1c]
	test dword [eax+0xb0], 0x300
	jz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_20
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_50:
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e60]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_60:
	mov eax, [ebp-0x1c]
	movss xmm0, dword [eax+0x108]
	xor edx, edx
	ucomiss xmm0, [_float_0_00000000]
	seta dl
	mov eax, [ebp-0x1c]
	mov ebx, [eax+0xdc]
	lea eax, [ebx+ebx*8]
	mov esi, eax
	shl esi, 0x4
	add eax, esi
	lea eax, [ebx+eax*2]
	mov ebx, [bgs]
	lea eax, [ebx+eax*4+0x99e70]
	mov [eax+0xc], edx
	mov dword [eax+0x10], 0x0
	mov edx, [ebp+0x8]
	test byte [edx+0x8], 0x1
	jz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_30
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e80]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
	mov edx, [ebp-0x1c]
	cmp dword [edx+0x4], 0x6
	jz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_40
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_70:
	mov edx, [edx+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e98]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_10:
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e88]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov eax, [ebp-0x1c]
	test dword [eax+0xb0], 0x300
	jnz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_50
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_20:
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e60]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	jmp _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_60
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_30:
	mov eax, [ebp-0x1c]
	mov edx, [eax+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e80]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov edx, [ebp-0x1c]
	cmp dword [edx+0x4], 0x6
	jnz _Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_70
_Z34BG_AnimUpdatePlayerStateConditionsP7pmove_t_40:
	mov edx, [edx+0xdc]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	mov edx, [bgs]
	lea eax, [edx+eax*4+0x99e98]
	mov dword [eax+0xc], 0x1
	mov dword [eax+0x10], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;BG_IsAds(clientInfo_t const*, int)
_Z8BG_IsAdsPK12clientInfo_ti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov esi, [globalScriptData]
	cmp ebx, [esi+0xc000]
	jb _Z8BG_IsAdsPK12clientInfo_ti_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov esi, [globalScriptData]
_Z8BG_IsAdsPK12clientInfo_ti_10:
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	mov edx, [esi+eax+0x54]
	and edx, 0x3f0
	xor ecx, ecx
	or edx, ecx
	setnz al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of bg_animation_mp:
SECTION .data
animEventTypesStr: dd _cstring_pain, 0xffffffff, _cstring_death, 0xffffffff, _cstring_fireweapon, 0xffffffff, _cstring_jump, 0xffffffff, _cstring_jumpbk, 0xffffffff, _cstring_land, 0xffffffff, _cstring_dropweapon, 0xffffffff, _cstring_raiseweapon, 0xffffffff, _cstring_climbmount, 0xffffffff, _cstring_climbdismount, 0xffffffff, _cstring_reload, 0xffffffff, _cstring_crouch_to_prone, 0xffffffff, _cstring_prone_to_crouch, 0xffffffff, _cstring_stand_to_crouch, 0xffffffff, _cstring_crouch_to_stand, 0xffffffff, _cstring_stand_to_prone, 0xffffffff, _cstring_prone_to_stand, 0xffffffff, _cstring_meleeattack, 0xffffffff, _cstring_knife_melee, 0xffffffff, _cstring_knife_melee_char, 0xffffffff, _cstring_shellshock, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0
animMoveTypesStr: dd _cstring__unused_, 0xffffffff, _cstring_idle, 0xffffffff, _cstring_idlecr, 0xffffffff, _cstring_idleprone, 0xffffffff, _cstring_walk, 0xffffffff, _cstring_walkbk, 0xffffffff, _cstring_walkcr, 0xffffffff, _cstring_walkcrbk, 0xffffffff, _cstring_walkprone, 0xffffffff, _cstring_walkpronebk, 0xffffffff, _cstring_run, 0xffffffff, _cstring_runbk, 0xffffffff, _cstring_runcr, 0xffffffff, _cstring_runcrbk, 0xffffffff, _cstring_turnright, 0xffffffff, _cstring_turnleft, 0xffffffff, _cstring_turnrightcr, 0xffffffff, _cstring_turnleftcr, 0xffffffff, _cstring_climbup, 0xffffffff, _cstring_climbdown, 0xffffffff, _cstring_sprint, 0xffffffff, _cstring_mantle_root, 0xffffffff, _cstring_mantle_up_57, 0xffffffff, _cstring_mantle_up_51, 0xffffffff, _cstring_mantle_up_45, 0xffffffff, _cstring_mantle_up_39, 0xffffffff, _cstring_mantle_up_33, 0xffffffff, _cstring_mantle_up_27, 0xffffffff, _cstring_mantle_up_21, 0xffffffff, _cstring_mantle_over_high, 0xffffffff, _cstring_mantle_over_mid, 0xffffffff, _cstring_mantle_over_low, 0xffffffff, _cstring_flinch_forward, 0xffffffff, _cstring_flinch_backward, 0xffffffff, _cstring_flinch_left, 0xffffffff, _cstring_flinch_right, 0xffffffff, _cstring_stumble_forward, 0xffffffff, _cstring_stumble_backward, 0xffffffff, _cstring_stumble_walk_for, 0xffffffff, _cstring_stumble_walk_bac, 0xffffffff, _cstring_stumble_crouch_f, 0xffffffff, _cstring_stumble_crouch_b, 0xffffffff, _cstring_stumble_sprint_f, 0xffffffff, 0x0, 0xffffffff
animStateStr: dd _cstring_combat, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0
animConditionsTable: dd 0x0, weaponStrings, 0x0, animWeaponClassStr, 0x1, animConditionMountedStr, 0x0, animMoveTypesStr, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, animWeaponPositionStr, 0x1, animStrafeStateStr, 0x1, animPerkStateStr, 0x0, 0x0, 0x0, 0x0
animWeaponClassStr: dd _cstring_rifle, 0xffffffff, _cstring_mg, 0xffffffff, _cstring_smg, 0xffffffff, _cstring_spread, 0xffffffff, _cstring_pistol, 0xffffffff, _cstring_grenade, 0xffffffff, _cstring_rocketlauncher, 0xffffffff, _cstring_turret, 0xffffffff, _cstring_nonplayer, 0xffffffff, _cstring_item, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0
animConditionMountedStr: dd _cstring__unused_, 0xffffffff, _cstring_mg42, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0
animWeaponPositionStr: dd _cstring_hip, 0xffffffff, _cstring_ads, 0xffffffff, 0x0, 0xffffffff
animStrafeStateStr: dd _cstring_not, 0xffffffff, _cstring_left, 0xffffffff, _cstring_right, 0xffffffff, 0x0, 0xffffffff
animPerkStateStr: dd _cstring__unused_, 0xffffffff, _cstring_laststand, 0xffffffff, _cstring_grenadedeath, 0xffffffff, 0x0, 0xffffffff
animConditionsStr: dd _cstring_playeranimtype, 0xffffffff, _cstring_weaponclass, 0xffffffff, _cstring_mounted, 0xffffffff, _cstring_movetype, 0xffffffff, _cstring_underhand, 0xffffffff, _cstring_crouching, 0xffffffff, _cstring_firing, 0xffffffff, _cstring_weapon_position, 0xffffffff, _cstring_strafing, 0xffffffff, _cstring_perk, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0
animParseModesStr: dd _cstring_defines, 0xffffffff, _cstring_animations, 0xffffffff, _cstring_canned_animation, 0xffffffff, _cstring_statechanges, 0xffffffff, _cstring_events, 0xffffffff, 0x0, 0xffffffff
globalFilename: dd _cstring_mpplayeranimscri, 0x0, 0x0, 0x0
animBodyPartsStr: dd _cstring__unused_, 0xffffffff, _cstring_legs1, 0xffffffff, _cstring_torso1, 0xffffffff, _cstring_both, 0xffffffff, 0x0, 0xffffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
bgs: dd 0x0, 0x0
controller_names: dd 0x1708d20, 0x1708d22, 0x1708d24, 0x1708d36, 0x1708d2c, 0x1708d38


;Initialized constant data of bg_animation_mp:
SECTION .rdata


;Zero initialized global or static variables of bg_animation_mp:
SECTION .bss
defineBits: resb 0x500
weaponStrings: resb 0x400
parseEvent: resb 0x4
parseMovetype: resb 0x4
defineStringsOffset: resb 0x18
numDefines: resb 0x40
defineStrings: resb 0x2720
defineStr: resb 0x500
g_piNumLoadAnims: resb 0x4
g_pLoadAnims: resb 0x4
globalScriptData: resb 0x78


;All cstrings:
SECTION .rdata
_cstring_bg_getanimationf:		db 015h,"BG_GetAnimationForIndex: index out of bounds",0
_cstring_player_animation:		db 015h,"Player animation index out of range (%i): %i",0
_cstring_death_animation_:		db "death animation ",27h,"%s",27h," is looping",0
_cstring_:		db ",",0
_cstring_none:		db "none",0
_cstring_none1:		db "none,",0
_cstring_not:		db "NOT",0
_cstring_minus:		db "MINUS",0
_cstring_and:		db "AND",0
_cstring_bg_parseconditio:		db "BG_ParseConditionBits: unexpected ",27h,"%s",27h,0
_cstring_all:		db "all",0
_cstring_bg_parseconditio1:		db "BG_ParseConditionBits: unexpected end of condition",0
_cstring_space:		db " ",0
_cstring_default:		db "default",0
_cstring_bg_parseconditio2:		db "BG_ParseConditions: no conditions found",0
_cstring_bg_parseconditio3:		db "BG_ParseConditions: expected condition value, found end of line",0
_cstring_bg_animparseanim:		db "BG_AnimParseAnimScript",0
_cstring_bg_animparseanim1:		db "BG_AnimParseAnimScript: unexpected end of file: %s",0
_cstring_bg_animparseanim2:		db "BG_AnimParseAnimScript: unexpected ",27h,"%s",27h,0
_cstring_set:		db "set",0
_cstring_1:		db "=",0
_cstring_2:		db "{",0
_cstring_bg_animparseanim3:		db "BG_AnimParseAnimScript: expected condition define string",0
_cstring_bg_animparseanim4:		db "BG_AnimParseAnimScript: expected condition type string",0
_cstring_3:		db "}",0
_cstring_couldnt_load_pla:		db 015h,"Couldn",27h,"t load player animation script %s",0ah,0
_cstring_state:		db "state",0
_cstring_bg_animparseanim5:		db "BG_AnimParseAnimScript: expected ",27h,"state",27h,0
_cstring_bg_animparseanim6:		db "BG_AnimParseAnimScript: expected ",27h,"{",27h,0
_cstring_bg_animparseanim7:		db "BG_AnimParseAnimScript: expected ",27h,"=",27h,", found ",27h,"%s",27h,0
_cstring_bg_copystringint:		db "BG_CopyStringIntoBuffer: out of buffer space",0
_cstring_bg_animparseanim8:		db "BG_AnimParseAnimScript: can not make a define of type ",27h,"%s",27h,0
_cstring_bg_animparseanim9:		db "BG_AnimParseAnimScript: internal error",0
_cstring_bg_animparseanim10:		db "BG_AnimParseAnimScript: expected ",27h,"=",27h,", found end of line",0
_cstring_bg_animparseanim11:		db "BG_AnimParseAnimScript: exceeded maximum items per script (%i)",0
_cstring_statechange:		db "statechange",0
_cstring_bg_animparseanim12:		db "BG_AnimParseAnimScript: expected ",27h,"statechange",27h,", got ",27h,"%s",27h,0
_cstring_bg_animparseanim13:		db "BG_AnimParseAnimScript: expected <state type>",0
_cstring_bg_animparseanim14:		db "BG_AnimParseAnimScript: exceeded maximum global items (%i)",0
_cstring_bg_animparseanim15:		db "BG_AnimParseAnimScript: expected state type",0
_cstring_torso:		db "torso",0
_cstring_multiplayer:		db "multiplayer",0
_cstring_legs:		db "legs",0
_cstring_turning:		db "turning",0
_cstring_root:		db "root",0
_cstring_unused:		db "unused",0
_cstring_player_animation1:		db 015h,"Player animation index %i out of 0 to %i range",0
_cstring_could_not_find_a:		db 015h,"Could not find animation tree ",27h,"%s",27h,0
_cstring_bg_parsecommands:		db "BG_ParseCommands: expected animation",0
_cstring_duration:		db "duration",0
_cstring_bg_parsecommands1:		db "BG_ParseCommands: expected duration value",0
_cstring_sound:		db "sound",0
_cstring_bg_parsecommands2:		db "BG_ParseCommands: expected sound",0
_cstring_wav:		db ".wav",0
_cstring_bg_parsecommands3:		db "BG_ParseCommands: wav files not supported, only sound scripts",0
_cstring_turretanim:		db "turretanim",0
_cstring_bg_parsecommands4:		db "BG_ParseCommands: Turret animations can only be played on the ",27h,"both",27h," body part",0
_cstring_bg_parsecommands5:		db "BG_ParseCommands: unknown parameter ",27h,"%s",27h,0
_cstring_blendtime:		db "blendtime",0
_cstring_bg_parsecommands6:		db "BG_ParseCommands: expected blendtime value",0
_cstring_bg_parsecommands7:		db "BG_ParseCommands: exceeded maximum number of animations (%i)",0
_cstring_s_s_line_i:		db 015h,"%s: (%s, line %i)",0
_cstring_s:		db 015h,"%s",0
_cstring_bg_indexforstrin:		db "BG_IndexForString: unknown token ",27h,"%s",27h,0
_cstring_bg_animationinde:		db "BG_AnimationIndexForString: unknown player animation ",27h,"%s",27h,0
_cstring_pain:		db "PAIN",0
_cstring_death:		db "DEATH",0
_cstring_fireweapon:		db "FIREWEAPON",0
_cstring_jump:		db "JUMP",0
_cstring_jumpbk:		db "JUMPBK",0
_cstring_land:		db "LAND",0
_cstring_dropweapon:		db "DROPWEAPON",0
_cstring_raiseweapon:		db "RAISEWEAPON",0
_cstring_climbmount:		db "CLIMBMOUNT",0
_cstring_climbdismount:		db "CLIMBDISMOUNT",0
_cstring_reload:		db "RELOAD",0
_cstring_crouch_to_prone:		db "CROUCH_TO_PRONE",0
_cstring_prone_to_crouch:		db "PRONE_TO_CROUCH",0
_cstring_stand_to_crouch:		db "STAND_TO_CROUCH",0
_cstring_crouch_to_stand:		db "CROUCH_TO_STAND",0
_cstring_stand_to_prone:		db "STAND_TO_PRONE",0
_cstring_prone_to_stand:		db "PRONE_TO_STAND",0
_cstring_meleeattack:		db "MELEEATTACK",0
_cstring_knife_melee:		db "KNIFE_MELEE",0
_cstring_knife_melee_char:		db "KNIFE_MELEE_CHARGE",0
_cstring_shellshock:		db "SHELLSHOCK",0
_cstring__unused_:		db "** UNUSED **",0
_cstring_idle:		db "IDLE",0
_cstring_idlecr:		db "IDLECR",0
_cstring_idleprone:		db "IDLEPRONE",0
_cstring_walk:		db "WALK",0
_cstring_walkbk:		db "WALKBK",0
_cstring_walkcr:		db "WALKCR",0
_cstring_walkcrbk:		db "WALKCRBK",0
_cstring_walkprone:		db "WALKPRONE",0
_cstring_walkpronebk:		db "WALKPRONEBK",0
_cstring_run:		db "RUN",0
_cstring_runbk:		db "RUNBK",0
_cstring_runcr:		db "RUNCR",0
_cstring_runcrbk:		db "RUNCRBK",0
_cstring_turnright:		db "TURNRIGHT",0
_cstring_turnleft:		db "TURNLEFT",0
_cstring_turnrightcr:		db "TURNRIGHTCR",0
_cstring_turnleftcr:		db "TURNLEFTCR",0
_cstring_climbup:		db "CLIMBUP",0
_cstring_climbdown:		db "CLIMBDOWN",0
_cstring_sprint:		db "SPRINT",0
_cstring_mantle_root:		db "MANTLE_ROOT",0
_cstring_mantle_up_57:		db "MANTLE_UP_57",0
_cstring_mantle_up_51:		db "MANTLE_UP_51",0
_cstring_mantle_up_45:		db "MANTLE_UP_45",0
_cstring_mantle_up_39:		db "MANTLE_UP_39",0
_cstring_mantle_up_33:		db "MANTLE_UP_33",0
_cstring_mantle_up_27:		db "MANTLE_UP_27",0
_cstring_mantle_up_21:		db "MANTLE_UP_21",0
_cstring_mantle_over_high:		db "MANTLE_OVER_HIGH",0
_cstring_mantle_over_mid:		db "MANTLE_OVER_MID",0
_cstring_mantle_over_low:		db "MANTLE_OVER_LOW",0
_cstring_flinch_forward:		db "FLINCH_FORWARD",0
_cstring_flinch_backward:		db "FLINCH_BACKWARD",0
_cstring_flinch_left:		db "FLINCH_LEFT",0
_cstring_flinch_right:		db "FLINCH_RIGHT",0
_cstring_stumble_forward:		db "STUMBLE_FORWARD",0
_cstring_stumble_backward:		db "STUMBLE_BACKWARD",0
_cstring_stumble_walk_for:		db "STUMBLE_WALK_FORWARD",0
_cstring_stumble_walk_bac:		db "STUMBLE_WALK_BACKWARD",0
_cstring_stumble_crouch_f:		db "STUMBLE_CROUCH_FORWARD",0
_cstring_stumble_crouch_b:		db "STUMBLE_CROUCH_BACKWARD",0
_cstring_stumble_sprint_f:		db "STUMBLE_SPRINT_FORWARD",0
_cstring_combat:		db "COMBAT",0
_cstring_rifle:		db "RIFLE",0
_cstring_mg:		db "MG",0
_cstring_smg:		db "SMG",0
_cstring_spread:		db "SPREAD",0
_cstring_pistol:		db "PISTOL",0
_cstring_grenade:		db "GRENADE",0
_cstring_rocketlauncher:		db "ROCKETLAUNCHER",0
_cstring_turret:		db "TURRET",0
_cstring_nonplayer:		db "NON-PLAYER",0
_cstring_item:		db "ITEM",0
_cstring_mg42:		db "MG42",0
_cstring_hip:		db "HIP",0
_cstring_ads:		db "ADS",0
_cstring_left:		db "LEFT",0
_cstring_right:		db "RIGHT",0
_cstring_laststand:		db "LASTSTAND",0
_cstring_grenadedeath:		db "GRENADEDEATH",0
_cstring_playeranimtype:		db "PLAYERANIMTYPE",0
_cstring_weaponclass:		db "WEAPONCLASS",0
_cstring_mounted:		db "MOUNTED",0
_cstring_movetype:		db "MOVETYPE",0
_cstring_underhand:		db "UNDERHAND",0
_cstring_crouching:		db "CROUCHING",0
_cstring_firing:		db "FIRING",0
_cstring_weapon_position:		db "WEAPON_POSITION",0
_cstring_strafing:		db "STRAFING",0
_cstring_perk:		db "PERK",0
_cstring_defines:		db "defines",0
_cstring_animations:		db "animations",0
_cstring_canned_animation:		db "canned_animations",0
_cstring_statechanges:		db "statechanges",0
_cstring_events:		db "events",0
_cstring_mpplayeranimscri:		db "mp/playeranim.script",0
_cstring_legs1:		db "LEGS",0
_cstring_torso1:		db "TORSO",0
_cstring_both:		db "BOTH",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00277778:		dd 0x3b360b61	; 0.00277778
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_360_00000000:		dd 0x43b40000	; 360
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_36000001:		dd 0x3eb851ec	; 0.36
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_2_00000000:		dd 0x40000000	; 2
_float_150_00000000:		dd 0x43160000	; 150
_float_4_00000000:		dd 0x40800000	; 4
_float_20_00000000:		dd 0x41a00000	; 20
_float_3_00000000:		dd 0x40400000	; 3
_float__130_00000000:		dd 0xc3020000	; -130
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_90_00000000:		dd 0x42b40000	; 90
_float_0_15000001:		dd 0x3e19999a	; 0.15
_float_45_00000000:		dd 0x42340000	; 45
_float_180_00000000:		dd 0x43340000	; 180
_float_50_00000000:		dd 0x42480000	; 50
_float_0_92500001:		dd 0x3f6ccccd	; 0.925
_float_0_07500000:		dd 0x3d99999a	; 0.075
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_0_40000001:		dd 0x3ecccccd	; 0.4
_float_0_30000001:		dd 0x3e99999a	; 0.3
_float__0_60000002:		dd 0xbf19999a	; -0.6
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float__24_00000000:		dd 0xc1c00000	; -24
_float__12_00000000:		dd 0xc1400000	; -12
_float_16_00000000:		dd 0x41800000	; 16
_float__1_20000005:		dd 0xbf99999a	; -1.2
_float__0_20000000:		dd 0xbe4ccccd	; -0.2
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_0_69999999:		dd 0x3f333333	; 0.7
_float__0_30000001:		dd 0xbe99999a	; -0.3
_float_0_25000000:		dd 0x3e800000	; 0.25

