;Imports of bg_animation_mp:
	extern floorf
	extern AngleNormalize360
	extern XAnimClearTreeGoalWeights
	extern XAnimSetCompleteGoalWeight
	extern XAnimSetAnimRate
	extern XAnimIsLooped
	extern XAnimSetGoalWeightKnobAll
	extern XAnimSetTime
	extern XAnimIsPrimitive
	extern Com_Error
	extern XAnimGetWeight
	extern XAnimGetLengthMsec
	extern XAnimGetTime
	extern Com_ParseOnLine
	extern Q_stricmp
	extern Com_UngetToken
	extern Q_strncat
	extern Com_LoadRawTextFile
	extern memset
	extern BG_LoadWeaponStrings
	extern Com_BeginParseSession
	extern Com_Parse
	extern Com_EndParseSession
	extern Com_UnloadRawTextFile
	extern strcpy
	extern tolower
	extern Q_strncmp
	extern memcpy
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern Scr_FindAnim
	extern Scr_PrecacheAnimTrees
	extern Scr_FindAnimTree
	extern Scr_EndLoadAnimTrees
	extern XAnimGetAnimTreeSize
	extern Q_strncpyz
	extern XAnimGetAnimName
	extern XAnimGetLength
	extern _ZN10LargeLocalD1Ev
	extern XAnimGetRelDelta
	extern _Unwind_Resume
	extern atoi
	extern strstr
	extern vsnprintf
	extern Com_GetCurrentParseLine
	extern ms_rand
	extern GetLeanFraction
	extern bg_swingSpeed
	extern BG_GetWeaponDef
	extern bg_legYawTolerance
	extern player_move_factor_on_torso
	extern XAnimClearTree
	extern SL_FindString
	extern AnglesSubtract
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
	extern BG_GetViewmodelWeaponIndex

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
	global BG_SwingAngles
	global BG_RunLerpFrameRate
	global BG_ParseConditionBits
	global BG_ParseConditions
	global BG_AnimParseAnimScript
	global BG_LoadAnim
	global BG_PlayAnim
	global BG_LerpOffset
	global BG_IsProneAnim
	global BG_ParseCommands
	global BG_AnimParseError
	global BG_ExecuteCommand
	global BG_IndexForString
	global BG_AnimScriptEvent
	global BG_IsCrouchingAnim
	global BG_PlayerAnimation
	global BG_SetConditionBit
	global BG_InitWeaponString
	global BG_IsKnifeMeleeAnim
	global BG_UpdatePlayerDObj
	global BG_InitWeaponStrings
	global BG_SetConditionValue
	global BG_AnimScriptAnimation
	global BG_AnimationIndexForString
	global BG_Player_DoControllersSetup
	global BG_AnimUpdatePlayerStateConditions
	global BG_IsAds
	global bgs


SECTION .text


;BG_SwingAngles(float, float, float, float, float*, int*)
BG_SwingAngles:
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
	jnz BG_SwingAngles_10
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
	jbe BG_SwingAngles_20
BG_SwingAngles_120:
	mov dword [ebx], 0x1
BG_SwingAngles_110:
	mov eax, [ebx]
	test eax, eax
	jnz BG_SwingAngles_30
	jmp BG_SwingAngles_40
BG_SwingAngles_10:
	movss xmm5, dword [_float_0_50000000]
BG_SwingAngles_30:
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
	jb BG_SwingAngles_50
	mov eax, [bgs]
	cvtsi2ss xmm1, dword [eax+0x999e4]
	mulss xmm1, xmm2
	mulss xmm1, [ebp-0x1c]
	ucomiss xmm1, xmm0
	jb BG_SwingAngles_60
BG_SwingAngles_90:
	mov dword [ebx], 0x0
	movaps xmm1, xmm0
BG_SwingAngles_100:
	addss xmm1, [esi]
	movss [esp], xmm1
	call AngleNormalize360
	fstp dword [esi]
	movss xmm5, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x14]
	subss xmm1, [esi]
BG_SwingAngles_80:
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
	ja BG_SwingAngles_70
	movss xmm0, dword [ebp-0x18]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe BG_SwingAngles_40
	movss xmm3, dword [ebp-0x14]
	addss xmm3, [ebp-0x18]
	movss [esp], xmm3
	call AngleNormalize360
	fstp dword [esi]
BG_SwingAngles_40:
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
BG_SwingAngles_50:
	ucomiss xmm3, xmm0
	jbe BG_SwingAngles_80
	mov eax, [bgs]
	cvtsi2ss xmm1, dword [eax+0x999e4]
	mulss xmm1, xmm2
	xor dword [ebp-0x1c], 0x80000000
	mulss xmm1, [ebp-0x1c]
	ucomiss xmm0, xmm1
	jae BG_SwingAngles_90
BG_SwingAngles_60:
	mov dword [ebx], 0x1
	jmp BG_SwingAngles_100
BG_SwingAngles_20:
	xorps xmm4, [_data16_80000000]
	ucomiss xmm4, xmm0
	jbe BG_SwingAngles_110
	jmp BG_SwingAngles_120
BG_SwingAngles_70:
	movss xmm0, dword [ebp-0x14]
	subss xmm0, [ebp-0x18]
	movss [esp], xmm0
	call AngleNormalize360
	fstp dword [esi]
	add esp, 0x70
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;BG_RunLerpFrameRate(int, clientInfo_t*, lerpFrame_t*, int, entityState_s const*)
BG_RunLerpFrameRate:
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
	jz BG_RunLerpFrameRate_10
	test byte [edx+0x50], 0x2
	jnz BG_RunLerpFrameRate_20
BG_RunLerpFrameRate_10:
	mov byte [ebp-0x4d], 0x0
BG_RunLerpFrameRate_280:
	mov ecx, [ebp-0x54]
	mov ecx, [ecx+0x4a8]
	mov [ebp-0x4c], ecx
	cmp [esi+0x10], ebx
	jz BG_RunLerpFrameRate_30
BG_RunLerpFrameRate_460:
	mov [esp+0x4], eax
	mov edi, [ebp+0xc]
	mov eax, [edi]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999f8]
	mov [ebp-0x28], eax
	test eax, eax
	jz BG_RunLerpFrameRate_40
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
	jae BG_RunLerpFrameRate_50
BG_RunLerpFrameRate_480:
	mov ebx, [ebp-0x54]
	mov ebx, [ebx+0x4a8]
	mov [ebp-0x30], ebx
	mov edi, [eax+0x999b8]
	mov [ebp-0x2c], edi
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz BG_RunLerpFrameRate_60
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
	jae BG_RunLerpFrameRate_70
	mov edi, edx
BG_RunLerpFrameRate_470:
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
	jae BG_RunLerpFrameRate_80
	mov edx, eax
BG_RunLerpFrameRate_510:
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
	jae BG_RunLerpFrameRate_90
BG_RunLerpFrameRate_500:
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
	jae BG_RunLerpFrameRate_100
BG_RunLerpFrameRate_490:
	mov eax, [ecx+ebx+0x54]
	and eax, 0x308
	xor edx, edx
	or eax, edx
	setnz al
	movzx eax, al
	mov edx, [ebp-0x34]
	test edx, edx
	jz BG_RunLerpFrameRate_110
	mov edx, [ebp-0x60]
	cmp [ebp-0x5c], edx
	jz BG_RunLerpFrameRate_120
BG_RunLerpFrameRate_650:
	mov eax, [bgs]
	mov eax, [eax+0x999dc]
	add eax, 0x190
	mov ecx, [ebp-0x54]
	mov [ecx+0x4b4], eax
	cmp byte [ebp-0x19], 0x0
	jz BG_RunLerpFrameRate_130
BG_RunLerpFrameRate_290:
	mov eax, [ebp-0x34]
	test eax, eax
	jz BG_RunLerpFrameRate_130
	mov dword [esi+0x18], 0x0
	pxor xmm0, xmm0
BG_RunLerpFrameRate_320:
	mov eax, [ebp-0x40]
	test eax, eax
	jz BG_RunLerpFrameRate_140
	mov edx, [ebp-0x40]
	ucomiss xmm0, [edx+0x44]
	jp BG_RunLerpFrameRate_150
	jnz BG_RunLerpFrameRate_150
BG_RunLerpFrameRate_140:
	movss [ebp-0x38], xmm0
BG_RunLerpFrameRate_410:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz BG_RunLerpFrameRate_160
	mov ebx, [ebp-0x20]
	and bh, 0xfd
BG_RunLerpFrameRate_620:
	cvtsi2ss xmm0, dword [esi+0x18]
	mulss xmm0, [_float_0_00100000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov edx, [ebp-0x30]
	mov [esp], edx
	call XAnimClearTreeGoalWeights
BG_RunLerpFrameRate_160:
	mov edi, [ebp-0x24]
	test edi, edi
	jz BG_RunLerpFrameRate_170
	mov ebx, [ebp-0x34]
	test ebx, ebx
	jnz BG_RunLerpFrameRate_180
	mov ecx, [ebp-0x54]
	mov dword [ecx+0x3f0], 0x0
	mov dword [ecx+0x3f4], 0x1
	mov ebx, [ebp-0x40]
	test byte [ebx+0x50], 0x40
	jnz BG_RunLerpFrameRate_190
BG_RunLerpFrameRate_330:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+0x44]
	jp BG_RunLerpFrameRate_200
	jnz BG_RunLerpFrameRate_200
BG_RunLerpFrameRate_570:
	xor ebx, ebx
BG_RunLerpFrameRate_580:
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
	call XAnimSetCompleteGoalWeight
	test bl, bl
	jnz BG_RunLerpFrameRate_210
BG_RunLerpFrameRate_360:
	mov edx, [ebp-0x34]
	test edx, edx
	jnz BG_RunLerpFrameRate_220
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
	call XAnimSetCompleteGoalWeight
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
	call XAnimSetCompleteGoalWeight
	jmp BG_RunLerpFrameRate_220
BG_RunLerpFrameRate_30:
	test edx, edx
	jz BG_RunLerpFrameRate_230
BG_RunLerpFrameRate_40:
	and bh, 0xfd
	mov [ebp-0x24], ebx
BG_RunLerpFrameRate_220:
	mov eax, [ebp-0x24]
	test eax, eax
	jz BG_RunLerpFrameRate_240
	mov edx, [esi+0x14]
	test edx, edx
	jz BG_RunLerpFrameRate_250
	movss xmm3, dword [edx+0x44]
	ucomiss xmm3, [_float_0_00000000]
	jp BG_RunLerpFrameRate_260
	jz BG_RunLerpFrameRate_250
BG_RunLerpFrameRate_260:
	mov ecx, [esi+0x2c]
	test ecx, ecx
	jnz BG_RunLerpFrameRate_270
BG_RunLerpFrameRate_250:
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
BG_RunLerpFrameRate_420:
	mov edx, [esi+0x10]
	test edx, edx
	jz BG_RunLerpFrameRate_240
	mov eax, [esi+0x28]
	mov [esp+0x8], eax
	and dh, 0xfd
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call XAnimSetAnimRate
BG_RunLerpFrameRate_240:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_RunLerpFrameRate_20:
	mov byte [ebp-0x4d], 0x1
	jmp BG_RunLerpFrameRate_280
BG_RunLerpFrameRate_60:
	mov dword [esi+0x14], 0x0
	mov dword [esi+0x18], 0xc8
	mov dword [ebp-0x40], 0x0
BG_RunLerpFrameRate_110:
	cmp byte [ebp-0x19], 0x0
	jnz BG_RunLerpFrameRate_290
BG_RunLerpFrameRate_130:
	mov eax, [ebp-0x40]
	test eax, eax
	jz BG_RunLerpFrameRate_300
	mov eax, [esi+0x18]
	test eax, eax
	jle BG_RunLerpFrameRate_310
	mov ecx, 0xffffffff
	pxor xmm0, xmm0
BG_RunLerpFrameRate_540:
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4b4]
	mov eax, [bgs]
	sub edx, [eax+0x999dc]
	cmp ecx, edx
	cmovge edx, ecx
	cmp edx, [esi+0x18]
	jle BG_RunLerpFrameRate_320
	mov [esi+0x18], edx
	jmp BG_RunLerpFrameRate_320
BG_RunLerpFrameRate_170:
	mov eax, [ebp-0x34]
	test eax, eax
	jnz BG_RunLerpFrameRate_240
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
	call XAnimSetCompleteGoalWeight
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
	call XAnimSetCompleteGoalWeight
	jmp BG_RunLerpFrameRate_240
BG_RunLerpFrameRate_180:
	mov ebx, [ebp-0x40]
	test byte [ebx+0x50], 0x40
	jz BG_RunLerpFrameRate_330
BG_RunLerpFrameRate_190:
	mov edi, [ebp-0x24]
	mov [esp+0x4], edi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call XAnimIsLooped
	test al, al
	jnz BG_RunLerpFrameRate_340
BG_RunLerpFrameRate_600:
	mov ecx, [ebp-0x48]
	test ecx, ecx
	jnz BG_RunLerpFrameRate_350
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
	call XAnimSetGoalWeightKnobAll
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov edx, [ebp-0x30]
	mov [esp], edx
	call XAnimSetTime
	jmp BG_RunLerpFrameRate_360
BG_RunLerpFrameRate_150:
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x2c]
	mov [esp], ebx
	movss [ebp-0x78], xmm0
	call XAnimIsLooped
	test al, al
	movss xmm0, dword [ebp-0x78]
	jz BG_RunLerpFrameRate_370
	mov ebx, [ebp-0x20]
	and bh, 0xfd
	cmp byte [ebp-0x19], 0x0
	jnz BG_RunLerpFrameRate_380
	mov edi, [ebp-0x3c]
	ucomiss xmm0, [edi+0x44]
	jp BG_RunLerpFrameRate_390
	jnz BG_RunLerpFrameRate_390
BG_RunLerpFrameRate_380:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call XAnimIsPrimitive
	test al, al
	jnz BG_RunLerpFrameRate_400
	mov edx, 0x3e8
	movss xmm0, dword [_float_1000_00000000]
BG_RunLerpFrameRate_610:
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
	jmp BG_RunLerpFrameRate_410
BG_RunLerpFrameRate_270:
	mov eax, [bgs]
	mov eax, [eax+0x999e0]
	cmp ecx, eax
	jz BG_RunLerpFrameRate_420
	cmp byte [ebp-0x4d], 0x0
	jz BG_RunLerpFrameRate_430
	movss xmm1, dword [esi+0x24]
	mov edi, [ebp+0xc]
	subss xmm1, [edi+0x20]
	andps xmm1, [_data16_7fffffff]
	lea edi, [edi+0x18]
	lea ebx, [esi+0x1c]
	mov [ebp-0x80], ebx
BG_RunLerpFrameRate_590:
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
	jae BG_RunLerpFrameRate_440
	jp BG_RunLerpFrameRate_440
	ucomiss xmm0, [_float_0_01000000]
	jae BG_RunLerpFrameRate_450
	jp BG_RunLerpFrameRate_450
	cmp byte [ebp-0x4d], 0x0
	jz BG_RunLerpFrameRate_450
	mov dword [esi+0x28], 0x0
	jmp BG_RunLerpFrameRate_420
BG_RunLerpFrameRate_230:
	test ebx, 0xfffffdff
	jnz BG_RunLerpFrameRate_460
	jmp BG_RunLerpFrameRate_240
BG_RunLerpFrameRate_70:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [globalScriptData]
	mov edi, [ebp-0x58]
	jmp BG_RunLerpFrameRate_470
BG_RunLerpFrameRate_50:
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_player_animation
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [bgs]
	jmp BG_RunLerpFrameRate_480
BG_RunLerpFrameRate_100:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [globalScriptData]
	jmp BG_RunLerpFrameRate_490
BG_RunLerpFrameRate_90:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [globalScriptData]
	jmp BG_RunLerpFrameRate_500
BG_RunLerpFrameRate_80:
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [globalScriptData]
	mov edx, [ebp-0x7c]
	jmp BG_RunLerpFrameRate_510
BG_RunLerpFrameRate_300:
	pxor xmm0, xmm0
BG_RunLerpFrameRate_560:
	cmp byte [ebp-0x19], 0x0
	jnz BG_RunLerpFrameRate_520
	mov edi, [ebp-0x3c]
	ucomiss xmm0, [edi+0x44]
	jp BG_RunLerpFrameRate_530
	jnz BG_RunLerpFrameRate_530
BG_RunLerpFrameRate_520:
	mov ecx, 0xaa
	jmp BG_RunLerpFrameRate_540
BG_RunLerpFrameRate_310:
	pxor xmm0, xmm0
	mov ebx, [ebp-0x40]
	ucomiss xmm0, [ebx+0x44]
	jp BG_RunLerpFrameRate_550
	jz BG_RunLerpFrameRate_560
BG_RunLerpFrameRate_550:
	mov ecx, 0x78
	jmp BG_RunLerpFrameRate_540
BG_RunLerpFrameRate_370:
	pxor xmm0, xmm0
	jmp BG_RunLerpFrameRate_140
BG_RunLerpFrameRate_200:
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call XAnimGetWeight
	fstp dword [ebp-0x44]
	movss xmm0, dword [ebp-0x44]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz BG_RunLerpFrameRate_570
	jp BG_RunLerpFrameRate_570
	mov ebx, 0x1
	jmp BG_RunLerpFrameRate_580
BG_RunLerpFrameRate_530:
	mov ecx, 0xfa
	jmp BG_RunLerpFrameRate_540
BG_RunLerpFrameRate_350:
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
	call XAnimSetCompleteGoalWeight
	jmp BG_RunLerpFrameRate_360
BG_RunLerpFrameRate_430:
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
	jmp BG_RunLerpFrameRate_590
BG_RunLerpFrameRate_340:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_death_animation_
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_RunLerpFrameRate_600
BG_RunLerpFrameRate_400:
	mov [esp+0x4], ebx
	mov ebx, [ebp-0x2c]
	mov [esp], ebx
	call XAnimGetLengthMsec
	lea edx, [eax+0xc8]
	cvtsi2ss xmm0, edx
	jmp BG_RunLerpFrameRate_610
BG_RunLerpFrameRate_390:
	mov [esp+0x4], ebx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call XAnimIsLooped
	test al, al
	jz BG_RunLerpFrameRate_380
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x30]
	mov [esp], ecx
	call XAnimGetTime
	fstp dword [ebp-0x38]
	jmp BG_RunLerpFrameRate_620
BG_RunLerpFrameRate_210:
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call XAnimSetTime
	jmp BG_RunLerpFrameRate_360
BG_RunLerpFrameRate_440:
	ucomiss xmm0, [_float_2_00000000]
	jbe BG_RunLerpFrameRate_420
	test byte [edx+0x50], 0x2
	jnz BG_RunLerpFrameRate_630
	movss xmm1, dword [edx+0x44]
	ucomiss xmm1, [_float_150_00000000]
	jbe BG_RunLerpFrameRate_640
	mov dword [esi+0x28], 0x40000000
	jmp BG_RunLerpFrameRate_420
BG_RunLerpFrameRate_120:
	cmp [ebp-0x64], eax
	jnz BG_RunLerpFrameRate_650
	jmp BG_RunLerpFrameRate_110
BG_RunLerpFrameRate_450:
	mov dword [esi+0x28], 0x3dcccccd
	jmp BG_RunLerpFrameRate_420
BG_RunLerpFrameRate_630:
	ucomiss xmm0, [_float_4_00000000]
	jbe BG_RunLerpFrameRate_420
	mov dword [esi+0x28], 0x40800000
	jmp BG_RunLerpFrameRate_420
BG_RunLerpFrameRate_640:
	ucomiss xmm1, [_float_20_00000000]
	jae BG_RunLerpFrameRate_660
	jp BG_RunLerpFrameRate_660
	ucomiss xmm0, [_float_3_00000000]
	jbe BG_RunLerpFrameRate_420
	mov dword [esi+0x28], 0x40400000
	jmp BG_RunLerpFrameRate_420
BG_RunLerpFrameRate_660:
	subss xmm1, [_float_20_00000000]
	divss xmm1, dword [_float__130_00000000]
	addss xmm1, [_float_3_00000000]
	ucomiss xmm0, xmm1
	jbe BG_RunLerpFrameRate_420
	movss [esi+0x28], xmm1
	jmp BG_RunLerpFrameRate_420
	nop


;BG_ParseConditionBits(char const**, animStringItem_t*, int, unsigned int*)
BG_ParseConditionBits:
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
BG_ParseConditionBits_120:
	mov edx, [ebp-0x70]
	mov [esp], edx
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseConditionBits_10
BG_ParseConditionBits_40:
	cmp byte [eax], 0x0
	jz BG_ParseConditionBits_10
	xor esi, esi
BG_ParseConditionBits_50:
	mov dword [esp+0x4], _cstring_
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	mov eax, 0x1
	cmovz esi, eax
	mov dword [esp+0x4], _cstring_none
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_20
	mov ecx, [ebp+0x8]
	or dword [ecx], 0x1
BG_ParseConditionBits_160:
	test esi, esi
	jnz BG_ParseConditionBits_30
	mov edx, [ebp-0x70]
	mov [esp], edx
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jnz BG_ParseConditionBits_40
BG_ParseConditionBits_10:
	call Com_UngetToken
	cmp byte [ebp-0x60], 0x0
	jz BG_ParseConditionBits_30
	mov esi, 0x1
	jmp BG_ParseConditionBits_50
BG_ParseConditionBits_20:
	mov dword [esp+0x4], _cstring_none1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_60
	mov edi, [ebp+0x8]
	or dword [edi], 0x1
BG_ParseConditionBits_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_ParseConditionBits_60:
	mov dword [esp+0x4], _cstring_not
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	mov eax, _cstring_minus
	cmovz ebx, eax
	test esi, esi
	jz BG_ParseConditionBits_70
BG_ParseConditionBits_230:
	mov dword [esp+0x4], _cstring_and
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_80
BG_ParseConditionBits_210:
	cmp byte [ebp-0x60], 0x0
	jnz BG_ParseConditionBits_90
	test esi, esi
	jnz BG_ParseConditionBits_100
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_110
	mov dword [ebp-0x6c], 0x1
	jmp BG_ParseConditionBits_120
BG_ParseConditionBits_110:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_parseconditio
	call BG_AnimParseError
BG_ParseConditionBits_90:
	mov dword [esp+0x4], _cstring_all
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_130
BG_ParseConditionBits_170:
	mov dword [ebp-0x20], 0xffffffff
	mov dword [ebp-0x1c], 0xffffffff
BG_ParseConditionBits_190:
	mov eax, [ebp-0x6c]
	test eax, eax
	jz BG_ParseConditionBits_140
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	test eax, eax
	jz BG_ParseConditionBits_150
	mov edx, ecx
	add edx, 0x4
	mov ecx, [ebp+0x8]
BG_ParseConditionBits_240:
	mov eax, [ebp-0x20]
	not eax
	and [ecx], eax
	mov eax, [ebp-0x1c]
	not eax
	and [edx], eax
BG_ParseConditionBits_200:
	mov byte [ebp-0x60], 0x0
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	mov eax, 0x1
	cmovnz eax, [ebp-0x6c]
	mov [ebp-0x6c], eax
	jmp BG_ParseConditionBits_160
BG_ParseConditionBits_100:
	mov dword [esp], _cstring_bg_parseconditio1
	call BG_AnimParseError
	mov dword [esp+0x4], _cstring_all
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz BG_ParseConditionBits_170
BG_ParseConditionBits_130:
	mov dword [esp+0x8], 0x1
	mov eax, [ebp-0x78]
	shl eax, 0x7
	add eax, defineStr
	mov [esp+0x4], eax
	lea edi, [ebp-0x60]
	mov [esp], edi
	call BG_IndexForString
	mov edx, eax
	test eax, eax
	js BG_ParseConditionBits_180
	mov eax, [ebp-0x78]
	shl eax, 0x4
	add eax, edx
	mov edx, [eax*8+defineBits]
	mov [ebp-0x20], edx
	mov eax, [eax*8+defineBits+0x4]
	mov [ebp-0x1c], eax
	jmp BG_ParseConditionBits_190
BG_ParseConditionBits_140:
	mov edi, [ebp+0x8]
	mov eax, [edi]
	or eax, [ebp-0x20]
	mov [edi], eax
	mov eax, [edi+0x4]
	or eax, [ebp-0x1c]
	mov [edi+0x4], eax
	jmp BG_ParseConditionBits_200
BG_ParseConditionBits_80:
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz BG_ParseConditionBits_210
	test esi, esi
	jz BG_ParseConditionBits_120
	jmp BG_ParseConditionBits_210
BG_ParseConditionBits_70:
	mov dword [esp+0x4], _cstring_and
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseConditionBits_220
BG_ParseConditionBits_250:
	xor esi, esi
	jmp BG_ParseConditionBits_230
BG_ParseConditionBits_150:
	mov edx, ecx
	add edx, 0x4
	mov eax, [ecx+0x4]
	test eax, eax
	jnz BG_ParseConditionBits_240
	mov dword [ecx+0x4], 0xffffffff
	mov dword [ecx], 0xffffffff
	mov ecx, [ebp+0x8]
	jmp BG_ParseConditionBits_240
BG_ParseConditionBits_220:
	mov dword [esp+0x4], _cstring_minus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz BG_ParseConditionBits_250
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp byte [ebx+eax-0x1], 0x2c
	jz BG_ParseConditionBits_260
BG_ParseConditionBits_290:
	cmp byte [ebp-0x60], 0x0
	jnz BG_ParseConditionBits_270
BG_ParseConditionBits_280:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x40
	lea edx, [ebp-0x60]
	mov [esp], edx
	call Q_strncat
	jmp BG_ParseConditionBits_230
BG_ParseConditionBits_180:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	lea edx, [ebp-0x60]
	mov [esp], edx
	call BG_IndexForString
	mov ecx, eax
	mov edx, eax
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	or [ebp+edx*4-0x20], eax
	jmp BG_ParseConditionBits_190
BG_ParseConditionBits_270:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x60]
	mov [esp], eax
	call Q_strncat
	jmp BG_ParseConditionBits_280
BG_ParseConditionBits_260:
	mov byte [ebx+eax-0x1], 0x0
	mov si, 0x1
	jmp BG_ParseConditionBits_290
	nop


;BG_ParseConditions(char const**, animScriptItem_t*)
BG_ParseConditions:
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
	jmp BG_ParseConditions_10
BG_ParseConditions_50:
	sub eax, 0x1
	jz BG_ParseConditions_20
BG_ParseConditions_60:
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
BG_ParseConditions_10:
	mov [esp], eax
	call Com_ParseOnLine
	mov edi, eax
	test eax, eax
	jz BG_ParseConditions_30
	cmp byte [eax], 0x0
	jz BG_ParseConditions_30
	mov dword [esp+0x4], _cstring_default
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz BG_ParseConditions_40
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animConditionsStr
	mov [esp], edi
	call BG_IndexForString
	mov esi, eax
	mov eax, [eax*8+animConditionsTable]
	test eax, eax
	jnz BG_ParseConditions_50
	mov edx, [esi*8+animConditionsTable+0x4]
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ecx, esi
	mov eax, [ebp-0x30]
	call BG_ParseConditionBits
	jmp BG_ParseConditions_60
BG_ParseConditions_20:
	mov eax, [esi*8+animConditionsTable+0x4]
	test eax, eax
	jz BG_ParseConditions_70
	mov edx, [ebp-0x30]
	mov [esp], edx
	call Com_ParseOnLine
	mov [ebp-0x2c], eax
	test eax, eax
	jz BG_ParseConditions_80
	cmp byte [eax], 0x0
	jz BG_ParseConditions_80
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, [ebp-0x2c]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov edx, [ebp-0x2c]
	cmp byte [edx+eax-0x1], 0x2c
	jz BG_ParseConditions_90
BG_ParseConditions_100:
	mov dword [esp+0x8], 0x0
	mov eax, [esi*8+animConditionsTable+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call BG_IndexForString
	mov [ebp-0x20], eax
	jmp BG_ParseConditions_60
BG_ParseConditions_30:
	mov eax, [ebx]
	test eax, eax
	jnz BG_ParseConditions_40
	mov dword [esp], _cstring_bg_parseconditio2
	call BG_AnimParseError
BG_ParseConditions_40:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_ParseConditions_80:
	mov dword [esp], _cstring_bg_parseconditio3
	call BG_AnimParseError
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, [ebp-0x2c]
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	mov edx, [ebp-0x2c]
	cmp byte [edx+eax-0x1], 0x2c
	jnz BG_ParseConditions_100
BG_ParseConditions_90:
	mov byte [edx+eax-0x1], 0x0
	jmp BG_ParseConditions_100
BG_ParseConditions_70:
	mov dword [ebp-0x20], 0x1
	jmp BG_ParseConditions_60


;BG_AnimParseAnimScript(animScriptData_t*, loadAnim_t*, unsigned int*)
BG_AnimParseAnimScript:
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
	call Com_LoadRawTextFile
	mov [ebp-0x144], eax
	test eax, eax
	jz BG_AnimParseAnimScript_10
BG_AnimParseAnimScript_310:
	mov eax, [ebp-0x14c]
	mov [globalScriptData], eax
	mov [g_pLoadAnims], ebx
	mov [g_piNumLoadAnims], esi
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], weaponStrings
	call memset
	call BG_LoadWeaponStrings
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
BG_AnimParseAnimScript_20:
	mov dword [edx+eax*4-0x4], 0xffffffff
	add eax, 0x1
	cmp eax, 0x4
	jnz BG_AnimParseAnimScript_20
	mov edx, [ebp-0x144]
	mov [ebp-0x1c], edx
	mov dword [esp], _cstring_bg_animparseanim
	call Com_BeginParseSession
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x140], 0x0
	mov dword [ebp-0x134], 0x0
	mov dword [ebp-0x13c], 0x0
BG_AnimParseAnimScript_90:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_Parse
	mov esi, eax
	test eax, eax
	jz BG_AnimParseAnimScript_30
BG_AnimParseAnimScript_60:
	cmp byte [eax], 0x0
	jz BG_AnimParseAnimScript_30
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], animParseModesStr
	mov [esp], eax
	call BG_IndexForString
	mov ebx, eax
	test eax, eax
	js BG_AnimParseAnimScript_40
	mov edi, [ebp-0x134]
	test edi, edi
	jnz BG_AnimParseAnimScript_50
BG_AnimParseAnimScript_80:
	mov [ebp-0x140], ebx
	mov dword [parseMovetype], 0x0
	mov dword [parseEvent], 0xffffffff
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_Parse
	mov esi, eax
	test eax, eax
	jnz BG_AnimParseAnimScript_60
BG_AnimParseAnimScript_30:
	mov eax, [ebp-0x134]
	test eax, eax
	jz BG_AnimParseAnimScript_70
	mov dword [esp], _cstring_bg_animparseanim1
	call BG_AnimParseError
BG_AnimParseAnimScript_70:
	call Com_EndParseSession
	mov edx, [ebp-0x144]
	mov [esp], edx
	call Com_UnloadRawTextFile
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_AnimParseAnimScript_50:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_80
BG_AnimParseAnimScript_40:
	cmp dword [ebp-0x140], 0x4
	ja BG_AnimParseAnimScript_90
	mov eax, [ebp-0x140]
	jmp dword [eax*4+BG_AnimParseAnimScript_jumptab_0]
BG_AnimParseAnimScript_740:
	mov dword [esp+0x4], _cstring_set
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_90
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_AnimParseAnimScript_100
	cmp byte [eax], 0x0
	jz BG_AnimParseAnimScript_100
BG_AnimParseAnimScript_260:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animConditionsStr
	mov [esp], ebx
	call BG_IndexForString
	mov [ebp-0x130], eax
	mov ecx, [eax*8+animConditionsTable]
	test ecx, ecx
	jnz BG_AnimParseAnimScript_110
BG_AnimParseAnimScript_470:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_ParseOnLine
	mov esi, eax
	test eax, eax
	jz BG_AnimParseAnimScript_120
	cmp byte [eax], 0x0
	jz BG_AnimParseAnimScript_120
BG_AnimParseAnimScript_250:
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
	ja BG_AnimParseAnimScript_130
BG_AnimParseAnimScript_460:
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
	jnz BG_AnimParseAnimScript_140
BG_AnimParseAnimScript_330:
	xor edi, edi
BG_AnimParseAnimScript_340:
	mov esi, [ebp-0x130]
	shl esi, 0x4
	mov eax, [ebp-0x12c]
	lea edx, [esi+eax]
	mov eax, defineStr
	mov [eax+edx*8+0x4], edi
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_AnimParseAnimScript_150
BG_AnimParseAnimScript_530:
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_160
BG_AnimParseAnimScript_450:
	mov ecx, [ebp-0x130]
	mov edx, [ecx*8+animConditionsTable+0x4]
	add esi, [ecx*4+numDefines]
	lea eax, [esi*8+defineBits]
	mov [esp], eax
	lea eax, [ebp-0x1c]
	call BG_ParseConditionBits
	mov esi, [ebp-0x130]
	add dword [esi*4+numDefines], 0x1
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_750:
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_170
	cmp dword [ebp-0x134], 0x2
	jg BG_AnimParseAnimScript_180
BG_AnimParseAnimScript_240:
	mov eax, [ebp-0x134]
	mov edx, [ebp+eax*4-0x28]
	test edx, edx
	jns BG_AnimParseAnimScript_190
BG_AnimParseAnimScript_220:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_190
BG_AnimParseAnimScript_760:
	mov dword [esp+0x4], _cstring_2
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_200
	cmp dword [ebp-0x134], 0x2
	jg BG_AnimParseAnimScript_210
BG_AnimParseAnimScript_230:
	mov edx, [ebp-0x134]
	mov eax, [ebp+edx*4-0x28]
	test eax, eax
	js BG_AnimParseAnimScript_220
BG_AnimParseAnimScript_190:
	add dword [ebp-0x134], 0x1
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_210:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_230
BG_AnimParseAnimScript_180:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_240
BG_AnimParseAnimScript_120:
	mov dword [esp], _cstring_bg_animparseanim3
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_250
BG_AnimParseAnimScript_100:
	mov dword [esp], _cstring_bg_animparseanim4
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_260
BG_AnimParseAnimScript_200:
	mov dword [esp+0x4], _cstring_3
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_270
	sub dword [ebp-0x134], 0x1
	cmp dword [ebp-0x134], 0x0
	jl BG_AnimParseAnimScript_280
	cmovnz eax, [ebp-0x13c]
	mov [ebp-0x13c], eax
BG_AnimParseAnimScript_350:
	mov ecx, [ebp-0x134]
	mov dword [ebp+ecx*4-0x28], 0xffffffff
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_170:
	mov dword [esp+0x4], _cstring_3
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_290
	sub dword [ebp-0x134], 0x1
	js BG_AnimParseAnimScript_300
	cmp dword [ebp-0x134], 0x1
	cmovnz eax, [ebp-0x13c]
	mov [ebp-0x13c], eax
BG_AnimParseAnimScript_360:
	mov edx, [ebp-0x134]
	mov dword [ebp+edx*4-0x28], 0xffffffff
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_10:
	mov eax, [globalFilename]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_pla
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_AnimParseAnimScript_310
BG_AnimParseAnimScript_140:
	xor edi, edi
	mov ebx, 0x77
BG_AnimParseAnimScript_320:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add edi, eax
	movzx eax, byte [esi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz BG_AnimParseAnimScript_320
	cmp edi, 0xffffffff
	jz BG_AnimParseAnimScript_330
	jmp BG_AnimParseAnimScript_340
BG_AnimParseAnimScript_280:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_350
BG_AnimParseAnimScript_300:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_360
BG_AnimParseAnimScript_270:
	mov eax, [ebp-0x134]
	test eax, eax
	jnz BG_AnimParseAnimScript_370
	mov edi, [ebp-0x28]
	test edi, edi
	js BG_AnimParseAnimScript_380
BG_AnimParseAnimScript_400:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim2
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_290:
	mov eax, [ebp-0x134]
	test eax, eax
	jnz BG_AnimParseAnimScript_390
	mov eax, [ebp-0x28]
	test eax, eax
	jns BG_AnimParseAnimScript_400
	mov dword [esp+0x4], _cstring_state
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz BG_AnimParseAnimScript_410
	mov dword [esp], _cstring_bg_animparseanim5
	call BG_AnimParseError
BG_AnimParseAnimScript_410:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_AnimParseAnimScript_420
BG_AnimParseAnimScript_720:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call BG_IndexForString
	mov [ebp-0x28], eax
	lea esi, [ebp-0x1c]
	mov [esp], esi
	call Com_Parse
	test eax, eax
	jz BG_AnimParseAnimScript_430
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz BG_AnimParseAnimScript_440
BG_AnimParseAnimScript_430:
	mov dword [esp], _cstring_bg_animparseanim6
	call BG_AnimParseError
	mov dword [ebp-0x134], 0x1
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_160:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_animparseanim7
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_450
BG_AnimParseAnimScript_130:
	mov dword [esp], _cstring_bg_copystringint
	call BG_AnimParseError
	mov eax, [defineStringsOffset]
	jmp BG_AnimParseAnimScript_460
BG_AnimParseAnimScript_110:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_animparseanim8
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_470
BG_AnimParseAnimScript_390:
	cmp dword [ebp-0x134], 0x1
	jz BG_AnimParseAnimScript_480
	cmp dword [ebp-0x134], 0x2
	jz BG_AnimParseAnimScript_490
	cmp dword [ebp-0x134], 0x3
	jnz BG_AnimParseAnimScript_400
BG_AnimParseAnimScript_520:
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
	call Q_strncmp
	test eax, eax
	jz BG_AnimParseAnimScript_500
	mov dword [esp], _cstring_bg_animparseanim9
	call BG_AnimParseError
BG_AnimParseAnimScript_500:
	mov ecx, [ebp-0x14c]
	mov [esp+0x8], ecx
	mov esi, [ebp-0x138]
	mov [esp+0x4], esi
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call BG_ParseCommands
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_370:
	cmp dword [ebp-0x134], 0x1
	jz BG_AnimParseAnimScript_510
	cmp dword [ebp-0x134], 0x2
	jnz BG_AnimParseAnimScript_400
	jmp BG_AnimParseAnimScript_520
BG_AnimParseAnimScript_150:
	mov dword [esp], _cstring_bg_animparseanim10
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_530
BG_AnimParseAnimScript_480:
	mov eax, [ebp-0x24]
	test eax, eax
	jns BG_AnimParseAnimScript_400
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animMoveTypesStr
	mov [esp], esi
	call BG_IndexForString
	mov ebx, eax
	mov [ebp-0x24], eax
	cmp dword [ebp-0x140], 0x1
	jz BG_AnimParseAnimScript_540
	cmp dword [ebp-0x140], 0x2
	jnz BG_AnimParseAnimScript_550
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
BG_AnimParseAnimScript_550:
	mov dword [esp+0x8], 0x204
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x13c]
	mov [esp], ecx
	call memset
	mov dword [ebp-0x134], 0x1
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_510:
	mov ebx, [ebp-0x24]
	test ebx, ebx
	jns BG_AnimParseAnimScript_400
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
	call Q_strncmp
	test eax, eax
	jnz BG_AnimParseAnimScript_560
BG_AnimParseAnimScript_730:
	lea ebx, [ebp-0x128]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, ebx
	lea eax, [ebp-0x1c]
	call BG_ParseConditions
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x13c]
	cmp dword [ecx], 0x7f
	jg BG_AnimParseAnimScript_570
BG_AnimParseAnimScript_600:
	mov esi, [ebp-0x14c]
	cmp dword [esi+0x999b4], 0x7ff
	jg BG_AnimParseAnimScript_580
BG_AnimParseAnimScript_710:
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
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_490:
	mov eax, [ebp-0x20]
	test eax, eax
	jns BG_AnimParseAnimScript_400
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
	call Q_strncmp
	test eax, eax
	jz BG_AnimParseAnimScript_590
	mov dword [esp], _cstring_bg_animparseanim9
	call BG_AnimParseError
BG_AnimParseAnimScript_590:
	lea ebx, [ebp-0x128]
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, ebx
	lea eax, [ebp-0x1c]
	call BG_ParseConditions
	mov [ebp-0x20], eax
	mov ecx, [ebp-0x13c]
	cmp dword [ecx], 0x7f
	jle BG_AnimParseAnimScript_600
BG_AnimParseAnimScript_570:
	mov dword [esp+0x4], 0x80
	mov dword [esp], _cstring_bg_animparseanim11
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_600
BG_AnimParseAnimScript_380:
	cmp dword [ebp-0x140], 0x3
	jz BG_AnimParseAnimScript_610
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animEventTypesStr
	mov [esp], esi
	call BG_IndexForString
	mov [ebp-0x28], eax
	mov edx, eax
	shl edx, 0x9
	lea edx, [edx+eax*4+0x16f60]
	add edx, [ebp-0x14c]
	mov [ebp-0x13c], edx
	mov [parseEvent], eax
BG_AnimParseAnimScript_670:
	mov dword [esp+0x8], 0x204
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x13c]
	mov [esp], esi
	call memset
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_440:
	mov dword [ebp-0x134], 0x1
	jmp BG_AnimParseAnimScript_90
BG_AnimParseAnimScript_610:
	mov dword [esp+0x4], _cstring_statechange
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz BG_AnimParseAnimScript_620
BG_AnimParseAnimScript_680:
	lea esi, [ebp-0x1c]
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_AnimParseAnimScript_630
BG_AnimParseAnimScript_700:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call BG_IndexForString
	mov esi, eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_AnimParseAnimScript_640
BG_AnimParseAnimScript_690:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], animStateStr
	mov [esp], ebx
	call BG_IndexForString
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
	call Com_Parse
	test eax, eax
	jz BG_AnimParseAnimScript_650
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz BG_AnimParseAnimScript_660
BG_AnimParseAnimScript_650:
	mov dword [esp], _cstring_bg_animparseanim6
	call BG_AnimParseError
BG_AnimParseAnimScript_660:
	mov dword [ebp-0x134], 0x1
	jmp BG_AnimParseAnimScript_670
BG_AnimParseAnimScript_620:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_bg_animparseanim12
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_680
BG_AnimParseAnimScript_640:
	mov dword [esp], _cstring_bg_animparseanim13
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_690
BG_AnimParseAnimScript_630:
	mov dword [esp], _cstring_bg_animparseanim13
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_700
BG_AnimParseAnimScript_580:
	mov dword [esp+0x4], 0x800
	mov dword [esp], _cstring_bg_animparseanim14
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_710
BG_AnimParseAnimScript_540:
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
	jmp BG_AnimParseAnimScript_550
BG_AnimParseAnimScript_420:
	mov dword [esp], _cstring_bg_animparseanim15
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_720
BG_AnimParseAnimScript_560:
	mov dword [esp], _cstring_bg_animparseanim9
	call BG_AnimParseError
	jmp BG_AnimParseAnimScript_730
	nop
	
	
BG_AnimParseAnimScript_jumptab_0:
	dd BG_AnimParseAnimScript_740
	dd BG_AnimParseAnimScript_750
	dd BG_AnimParseAnimScript_750
	dd BG_AnimParseAnimScript_760
	dd BG_AnimParseAnimScript_760


;BG_LoadAnim()
BG_LoadAnim:
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
	call Scr_FindAnim
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0xc], edx
	add eax, 0x999d4
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_legs
	mov dword [esp], _cstring_multiplayer
	call Scr_FindAnim
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0xc], edx
	add eax, 0x999d8
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_turning
	mov dword [esp], _cstring_multiplayer
	call Scr_FindAnim
	lea ecx, [ebp-0x1c]
	mov edx, ebx
	mov eax, [bgs]
	call BG_AnimParseAnimScript
	mov eax, [bgs]
	mov edx, [eax+0x999e8]
	mov [esp+0x4], edx
	mov eax, [eax+0x99a00]
	mov [esp], eax
	call Scr_PrecacheAnimTrees
	mov esi, [bgs]
	mov dword [esp], _cstring_multiplayer
	call Scr_FindAnimTree
	mov ebx, eax
	test eax, eax
	jz BG_LoadAnim_10
BG_LoadAnim_280:
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
	call Scr_EndLoadAnimTrees
	mov ebx, [globalScriptData]
	mov eax, [ebx+0x999b8]
	mov [ebp-0x4c], eax
	mov [esp], eax
	call XAnimGetAnimTreeSize
	mov [ebp-0x50], eax
	mov eax, [globalScriptData]
	mov edx, [ebp-0x50]
	mov [eax+0xc000], edx
	or dword [ebx+0x50], 0x201
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_root
	mov [esp], ebx
	call Q_strncpyz
	mov dword [ebx+0x4c], 0x0
	lea edi, [ebx+0x60]
	cmp dword [ebp-0x50], 0x1
	jle BG_LoadAnim_20
	mov dword [ebp-0x44], 0x1
BG_LoadAnim_130:
	mov eax, [globalScriptData]
	mov eax, [eax+0xc000]
	cmp [ebp-0x44], eax
	jae BG_LoadAnim_30
BG_LoadAnim_220:
	mov ebx, [g_pLoadAnims]
	mov eax, [g_piNumLoadAnims]
	mov esi, [eax]
	test esi, esi
	jz BG_LoadAnim_40
	movzx eax, word [ebx]
	cmp [ebp-0x44], eax
	jz BG_LoadAnim_50
	lea eax, [ebx+0x48]
	mov edx, eax
	mov ecx, 0x1
	jmp BG_LoadAnim_60
BG_LoadAnim_70:
	lea eax, [ebx+0x48]
BG_LoadAnim_60:
	mov ebx, eax
	cmp ecx, esi
	jz BG_LoadAnim_40
	movzx eax, word [edx]
	add ecx, 0x1
	add edx, 0x48
	cmp [ebp-0x44], eax
	jnz BG_LoadAnim_70
BG_LoadAnim_50:
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call XAnimIsPrimitive
	test al, al
	jz BG_LoadAnim_80
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call XAnimGetAnimName
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	movzx eax, byte [edi]
	test al, al
	jnz BG_LoadAnim_90
BG_LoadAnim_250:
	xor esi, esi
BG_LoadAnim_260:
	mov [edi+0x4c], esi
	mov eax, [edi+0x40]
	test eax, eax
	jnz BG_LoadAnim_100
	mov dword [edi+0x40], 0xffffffff
BG_LoadAnim_100:
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call XAnimGetLength
	fstp dword [ebp-0x48]
	movss xmm0, dword [ebp-0x48]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jp BG_LoadAnim_110
	jnz BG_LoadAnim_110
	mov dword [edi+0x48], 0x1f4
	mov dword [edi+0x44], 0x0
BG_LoadAnim_270:
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call XAnimIsLooped
	test al, al
	jz BG_LoadAnim_120
	or dword [edi+0x50], 0x80
BG_LoadAnim_120:
	add dword [ebp-0x44], 0x1
	add edi, 0x60
	mov eax, [ebp-0x44]
	cmp [ebp-0x50], eax
	jnz BG_LoadAnim_130
BG_LoadAnim_20:
	xor ecx, ecx
	xor edx, edx
	mov eax, [globalScriptData]
	call BG_AnimParseAnimScript
	mov esi, [globalScriptData]
	mov eax, [esi+0xc000]
	test eax, eax
	jz BG_LoadAnim_140
	mov eax, esi
	xor edx, edx
BG_LoadAnim_150:
	mov dword [eax+0x5c], 0x0
	add edx, 0x1
	add eax, 0x60
	cmp edx, [esi+0xc000]
	jb BG_LoadAnim_150
BG_LoadAnim_140:
	mov eax, [bgs]
	mov eax, [eax+0x999e8]
	test eax, eax
	jnz BG_LoadAnim_160
	lea edx, [esi+0x18388]
	mov [ebp-0x40], edx
	mov eax, [esi+0x18388]
	test eax, eax
	jle BG_LoadAnim_160
	mov edi, edx
	mov dword [ebp-0x3c], 0x0
BG_LoadAnim_210:
	mov ebx, [edi+0x4]
	mov eax, [ebx+0x7c]
	test eax, eax
	jle BG_LoadAnim_170
	xor ecx, ecx
	lea edx, [ebx+0x80]
BG_LoadAnim_200:
	cmp word [edx], 0x0
	jz BG_LoadAnim_180
	movsx eax, word [edx+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov dword [eax+esi+0x5c], 0x1
BG_LoadAnim_180:
	cmp word [edx+0x2], 0x0
	jz BG_LoadAnim_190
	movsx eax, word [edx+0x6]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov dword [eax+esi+0x5c], 0x1
BG_LoadAnim_190:
	add ecx, 0x1
	add edx, 0x10
	cmp ecx, [ebx+0x7c]
	jl BG_LoadAnim_200
BG_LoadAnim_170:
	add dword [ebp-0x3c], 0x1
	add edi, 0x4
	mov edx, [ebp-0x3c]
	mov eax, [ebp-0x40]
	cmp edx, [eax]
	jl BG_LoadAnim_210
BG_LoadAnim_160:
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _ZN10LargeLocalD1Ev
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_LoadAnim_40:
	or dword [edi+0x50], 0x200
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_unused
	mov [esp], edi
	call Q_strncpyz
	mov dword [edi+0x4c], 0x0
	jmp BG_LoadAnim_120
BG_LoadAnim_30:
	mov [esp+0xc], eax
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_animation1
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadAnim_220
BG_LoadAnim_80:
	or dword [edi+0x50], 0x1
	mov dword [esp+0x8], 0x40
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_strncpyz
	mov eax, [ebx+0x4]
	mov [edi+0x4c], eax
	mov edx, [edi+0x40]
	test edx, edx
	jnz BG_LoadAnim_230
	mov dword [edi+0x40], 0xffffffff
BG_LoadAnim_230:
	mov dword [edi+0x48], 0x0
	mov dword [edi+0x44], 0x0
	jmp BG_LoadAnim_120
BG_LoadAnim_90:
	xor esi, esi
	mov ebx, 0x77
BG_LoadAnim_240:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add esi, eax
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz BG_LoadAnim_240
	cmp esi, 0xffffffff
	jz BG_LoadAnim_250
	jmp BG_LoadAnim_260
BG_LoadAnim_110:
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
	call XAnimGetRelDelta
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
	jg BG_LoadAnim_270
	mov dword [edi+0x48], 0x1f4
	jmp BG_LoadAnim_270
BG_LoadAnim_10:
	mov dword [esp+0x8], _cstring_multiplayer
	mov dword [esp+0x4], _cstring_could_not_find_a
	mov dword [esp], 0x2
	call Com_Error
	jmp BG_LoadAnim_280
	mov ebx, eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;BG_PlayAnim(playerState_s*, int, animBodyPart_t, int, int, int, int)
BG_PlayAnim:
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
	jz BG_PlayAnim_10
	mov ebx, eax
	cmp esi, 0x2
	jz BG_PlayAnim_20
BG_PlayAnim_40:
	cmp esi, 0x3
	jz BG_PlayAnim_30
	cmp esi, 0x1
	jz BG_PlayAnim_30
BG_PlayAnim_60:
	mov ebx, 0xffffffff
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_PlayAnim_10:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov ebx, [eax+0x48]
	add ebx, 0x32
	cmp esi, 0x2
	jnz BG_PlayAnim_40
BG_PlayAnim_20:
	mov dword [ebp-0x10], 0x0
	cmp dword [edi+0x90], 0x31
	jle BG_PlayAnim_50
BG_PlayAnim_90:
	mov eax, [ebp+0x20]
	test eax, eax
	jnz BG_PlayAnim_50
BG_PlayAnim_80:
	mov edx, [ebp-0x10]
	test edx, edx
	jz BG_PlayAnim_60
	mov eax, ebx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_PlayAnim_30:
	cmp dword [edi+0x88], 0x31
	jle BG_PlayAnim_70
	mov edx, [ebp+0x20]
	test edx, edx
	jnz BG_PlayAnim_70
BG_PlayAnim_190:
	mov dword [ebp-0x10], 0x0
BG_PlayAnim_160:
	cmp esi, 0x3
	jnz BG_PlayAnim_80
	xor ecx, ecx
	cmp dword [edi+0x90], 0x31
	jg BG_PlayAnim_90
BG_PlayAnim_50:
	mov eax, [ebp+0x1c]
	test eax, eax
	jz BG_PlayAnim_100
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_PlayAnim_110
BG_PlayAnim_170:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov eax, [ebp+0x18]
	test eax, eax
	jz BG_PlayAnim_120
	mov [edi+0x90], ebx
BG_PlayAnim_120:
	mov [edi+0x9c], ebx
	jmp BG_PlayAnim_80
BG_PlayAnim_70:
	mov eax, [ebp+0x1c]
	test eax, eax
	jz BG_PlayAnim_130
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_PlayAnim_140
BG_PlayAnim_180:
	mov [edi+0x98], ebx
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x18]
	test eax, eax
	jz BG_PlayAnim_150
	mov [edi+0x88], ebx
BG_PlayAnim_150:
	mov dword [ebp-0x10], 0x1
	jmp BG_PlayAnim_160
BG_PlayAnim_100:
	mov edx, [edi+0x94]
	jmp BG_PlayAnim_170
BG_PlayAnim_130:
	mov edx, [edi+0x8c]
	jmp BG_PlayAnim_180
BG_PlayAnim_110:
	mov esi, [ebp+0x18]
	test esi, esi
	jz BG_PlayAnim_80
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_PlayAnim_80
	mov [edi+0x90], ebx
	jmp BG_PlayAnim_80
BG_PlayAnim_140:
	mov eax, [ebp+0x18]
	test eax, eax
	jz BG_PlayAnim_190
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_PlayAnim_190
	mov [edi+0x88], ebx
	mov dword [ebp-0x10], 0x0
	jmp BG_PlayAnim_160


;BG_LerpOffset(float*, float, float*)
BG_LerpOffset:
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
	jp BG_LerpOffset_10
	jz BG_LerpOffset_20
BG_LerpOffset_10:
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
	jb BG_LerpOffset_30
BG_LerpOffset_40:
	movss [ecx], xmm6
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
BG_LerpOffset_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
BG_LerpOffset_30:
	jp BG_LerpOffset_40
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
BG_IsProneAnim:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov esi, [globalScriptData]
	cmp ebx, [esi+0xc000]
	jb BG_IsProneAnim_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov esi, [globalScriptData]
BG_IsProneAnim_10:
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
BG_ParseCommands:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
BG_ParseCommands_370:
	mov [esp], esi
	call Com_Parse
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_10
BG_ParseCommands_220:
	cmp byte [ebx], 0x0
	jz BG_ParseCommands_10
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz BG_ParseCommands_20
	mov edx, [ebp-0x1c]
	test edx, edx
	jnz BG_ParseCommands_30
	mov eax, [ebp+0xc]
	cmp dword [eax+0x7c], 0x7
	jg BG_ParseCommands_40
	mov edx, eax
	mov ecx, eax
BG_ParseCommands_290:
	mov eax, [edx+0x7c]
	mov edx, eax
	shl edx, 0x4
	lea edx, [edx+ecx+0x80]
	mov [ebp-0x20], edx
	add eax, 0x1
	mov [ecx+0x7c], eax
	mov dword [edx], 0x0
BG_ParseCommands_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], animBodyPartsStr
	mov [esp], ebx
	call BG_IndexForString
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	mov [ecx+edx*2], ax
	test ax, ax
	jle BG_ParseCommands_50
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_60
	cmp byte [eax], 0x0
	jnz BG_ParseCommands_70
BG_ParseCommands_60:
	mov dword [esp], _cstring_bg_parsecommands
	call BG_AnimParseError
BG_ParseCommands_70:
	mov [esp], ebx
	call BG_AnimationIndexForString
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
	jz BG_ParseCommands_80
BG_ParseCommands_250:
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_90
BG_ParseCommands_130:
	cmp byte [eax], 0x0
	jz BG_ParseCommands_90
	mov dword [esp+0x4], _cstring_duration
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz BG_ParseCommands_100
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_110
	cmp byte [eax], 0x0
	jnz BG_ParseCommands_120
BG_ParseCommands_110:
	mov dword [esp], _cstring_bg_parsecommands1
	call BG_AnimParseError
BG_ParseCommands_120:
	mov [esp], ebx
	call atoi
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	mov [ebx+ecx*2+0x8], ax
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jnz BG_ParseCommands_130
BG_ParseCommands_90:
	call Com_UngetToken
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	cmp word [ebx+ecx*2], 0x3
	jz BG_ParseCommands_140
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	test eax, eax
	jle BG_ParseCommands_150
BG_ParseCommands_140:
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_160
BG_ParseCommands_210:
	cmp byte [eax], 0x0
	jz BG_ParseCommands_160
	mov dword [esp+0x4], _cstring_sound
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz BG_ParseCommands_170
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jz BG_ParseCommands_180
	cmp byte [eax], 0x0
	jnz BG_ParseCommands_190
BG_ParseCommands_180:
	mov dword [esp], _cstring_bg_parsecommands2
	call BG_AnimParseError
BG_ParseCommands_190:
	mov dword [esp+0x4], _cstring_wav
	mov [esp], ebx
	call strstr
	test eax, eax
	jz BG_ParseCommands_200
	mov dword [esp], _cstring_bg_parsecommands3
	call BG_AnimParseError
BG_ParseCommands_200:
	mov [esp], ebx
	mov eax, [globalScriptData]
	call dword [eax+0x999c4]
	mov edx, [ebp-0x20]
	mov [edx+0xc], eax
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jnz BG_ParseCommands_210
BG_ParseCommands_160:
	mov dword [ebp-0x1c], 0x0
	mov [esp], esi
	call Com_Parse
	mov ebx, eax
	test eax, eax
	jnz BG_ParseCommands_220
BG_ParseCommands_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_ParseCommands_100:
	mov dword [esp+0x4], _cstring_turretanim
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseCommands_230
	mov edx, [g_pLoadAnims]
	test edx, edx
	jz BG_ParseCommands_240
BG_ParseCommands_280:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x20]
	cmp word [edx+eax*2], 0x3
	jz BG_ParseCommands_250
	mov dword [esp], _cstring_bg_parsecommands4
	call BG_AnimParseError
	jmp BG_ParseCommands_250
BG_ParseCommands_170:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_bg_parsecommands5
	call BG_AnimParseError
	jmp BG_ParseCommands_140
BG_ParseCommands_230:
	mov dword [esp+0x4], _cstring_blendtime
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz BG_ParseCommands_90
	mov [esp], esi
	call Com_ParseOnLine
	mov edi, eax
	test eax, eax
	jz BG_ParseCommands_260
	cmp byte [eax], 0x0
	jnz BG_ParseCommands_270
BG_ParseCommands_260:
	mov dword [esp], _cstring_bg_parsecommands6
	call BG_AnimParseError
BG_ParseCommands_270:
	mov eax, [g_pLoadAnims]
	test eax, eax
	jnz BG_ParseCommands_250
	mov ecx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	movsx ebx, word [eax+ecx*2+0x4]
	mov [esp], edi
	call atoi
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x5
	mov edx, [ebp+0x10]
	mov [ebx+edx+0x40], eax
	jmp BG_ParseCommands_250
BG_ParseCommands_240:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ebx, [ebp+0x10]
	or dword [eax+ebx+0x50], 0x4
	jmp BG_ParseCommands_280
BG_ParseCommands_50:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	sub [esi], ecx
	jmp BG_ParseCommands_140
BG_ParseCommands_40:
	mov dword [esp+0x4], 0x8
	mov dword [esp], _cstring_bg_parsecommands7
	call BG_AnimParseError
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0xc]
	jmp BG_ParseCommands_290
BG_ParseCommands_80:
	mov edi, [parseMovetype]
	test edi, edi
	jz BG_ParseCommands_300
	cmp word [ecx+ebx*2], 0x2
	jz BG_ParseCommands_300
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
	jbe BG_ParseCommands_310
BG_ParseCommands_420:
	mov eax, [ebp+0xc]
	mov ebx, [eax]
	test ebx, ebx
	jg BG_ParseCommands_320
BG_ParseCommands_300:
	mov edx, [parseEvent]
	cmp edx, 0x2
	jz BG_ParseCommands_330
	lea eax, [edx-0x12]
	cmp eax, 0x1
	jbe BG_ParseCommands_340
	cmp edx, 0x1
	jz BG_ParseCommands_350
	cmp edx, 0xa
	jz BG_ParseCommands_360
	lea eax, [edi-0x16]
	cmp eax, 0x9
	ja BG_ParseCommands_250
BG_ParseCommands_360:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	mov dword [eax+edx+0x44], 0x0
	jmp BG_ParseCommands_250
BG_ParseCommands_150:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jle BG_ParseCommands_370
	mov [esp], esi
	call Com_ParseOnLine
	mov ebx, eax
	test eax, eax
	jnz BG_ParseCommands_220
	jmp BG_ParseCommands_10
BG_ParseCommands_330:
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
	jmp BG_ParseCommands_250
BG_ParseCommands_320:
	cmp dword [eax+0x4], 0x8
	jz BG_ParseCommands_380
	mov edx, eax
	xor ecx, ecx
BG_ParseCommands_390:
	add ecx, 0x1
	cmp ebx, ecx
	jz BG_ParseCommands_300
	mov eax, [edx+0x10]
	add edx, 0xc
	cmp eax, 0x8
	jnz BG_ParseCommands_390
	lea eax, [ecx+ecx*2]
	mov edx, [ebp+0xc]
	mov eax, [edx+eax*4+0x8]
	cmp eax, 0x1
	jz BG_ParseCommands_400
BG_ParseCommands_430:
	cmp eax, 0x2
	jnz BG_ParseCommands_300
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	or dword [eax+edx+0x50], 0x20
	jmp BG_ParseCommands_300
BG_ParseCommands_20:
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
BG_ParseCommands_350:
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
	jmp BG_ParseCommands_250
BG_ParseCommands_340:
	mov ecx, [ebp-0x1c]
	mov ebx, [ebp-0x20]
	movsx eax, word [ebx+ecx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov edx, [ebp+0x10]
	or dword [eax+edx+0x50], 0x100
	jmp BG_ParseCommands_250
BG_ParseCommands_400:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	mov ebx, [ebp+0x10]
	or dword [eax+ebx+0x50], 0x10
	jmp BG_ParseCommands_300
BG_ParseCommands_310:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x20]
	movsx eax, word [ecx+edx*2+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [ebp+0x10]
	pxor xmm0, xmm0
	ucomiss xmm0, [eax+0x44]
	jp BG_ParseCommands_410
	jz BG_ParseCommands_420
BG_ParseCommands_410:
	or dword [eax+0x50], 0x2
	jmp BG_ParseCommands_420
BG_ParseCommands_380:
	xor ecx, ecx
	lea eax, [ecx+ecx*2]
	mov edx, [ebp+0xc]
	mov eax, [edx+eax*4+0x8]
	cmp eax, 0x1
	jnz BG_ParseCommands_430
	jmp BG_ParseCommands_400


;BG_AnimParseError(char const*, ...)
BG_AnimParseError:
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
	jz BG_AnimParseError_10
	call Com_GetCurrentParseLine
	add eax, 0x1
	mov [esp+0x10], eax
	mov eax, [globalFilename]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_s_line_i
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x434
	pop ebx
	pop ebp
	ret
BG_AnimParseError_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x434
	pop ebx
	pop ebp
	ret
	nop


;BG_ExecuteCommand(playerState_s*, animScriptCommand_t*, int, int, int)
BG_ExecuteCommand:
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
	jnz BG_ExecuteCommand_10
	mov dword [ebp-0x28], 0xffffffff
	xor esi, esi
BG_ExecuteCommand_130:
	mov edx, [ebp+0xc]
	movzx ebx, word [edx+0x2]
	test bx, bx
	jz BG_ExecuteCommand_20
	movsx eax, word [edx+0x8]
	add eax, 0x32
	mov [ebp-0x28], eax
	movzx eax, word [edx]
	cmp ax, 0x1
	jz BG_ExecuteCommand_30
	cmp ax, 0x3
	jz BG_ExecuteCommand_30
	movsx edx, bx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x6]
	mov eax, [ebp-0x28]
	test eax, eax
	jz BG_ExecuteCommand_40
	mov eax, [ebp-0x28]
	mov [ebp-0x1c], eax
BG_ExecuteCommand_200:
	cmp edx, 0x2
	jz BG_ExecuteCommand_50
	cmp edx, 0x3
	jz BG_ExecuteCommand_60
	sub edx, 0x1
	jz BG_ExecuteCommand_60
BG_ExecuteCommand_240:
	mov edx, [ebp+0xc]
BG_ExecuteCommand_20:
	mov eax, [edx+0xc]
	test eax, eax
	jz BG_ExecuteCommand_70
	mov [esp+0x4], eax
	mov eax, [edi+0xdc]
	mov [esp], eax
	mov eax, [globalScriptData]
	call dword [eax+0x999c8]
BG_ExecuteCommand_70:
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
BG_ExecuteCommand_10:
	mov edx, eax
	movsx eax, word [eax+0x8]
	add eax, 0x32
	mov [ebp-0x28], eax
	cmp cx, 0x1
	jz BG_ExecuteCommand_80
	cmp cx, 0x3
	jz BG_ExecuteCommand_90
	movsx edx, cx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x4]
	mov eax, [ebp-0x28]
	test eax, eax
	jnz BG_ExecuteCommand_100
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov ebx, [eax+0x48]
	add ebx, 0x32
BG_ExecuteCommand_210:
	cmp edx, 0x2
	jz BG_ExecuteCommand_110
	cmp edx, 0x3
	jz BG_ExecuteCommand_120
	sub edx, 0x1
	jz BG_ExecuteCommand_120
BG_ExecuteCommand_340:
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_30:
	movsx edx, bx
	mov eax, [ebp+0xc]
	movsx ecx, word [eax+0x6]
	mov eax, [ebp-0x28]
	test eax, eax
	jz BG_ExecuteCommand_140
	mov esi, [ebp-0x28]
BG_ExecuteCommand_220:
	cmp edx, 0x2
	jz BG_ExecuteCommand_150
	cmp edx, 0x3
	jz BG_ExecuteCommand_160
	sub edx, 0x1
	jz BG_ExecuteCommand_160
BG_ExecuteCommand_620:
	mov esi, 0xffffffff
BG_ExecuteCommand_610:
	not esi
	shr esi, 0x1f
	mov edx, [ebp+0xc]
	jmp BG_ExecuteCommand_20
BG_ExecuteCommand_80:
	mov eax, edx
BG_ExecuteCommand_500:
	movsx edx, cx
	movsx ebx, word [eax+0x4]
	mov esi, [ebp-0x28]
	test esi, esi
	jz BG_ExecuteCommand_170
	mov esi, [ebp-0x28]
BG_ExecuteCommand_490:
	cmp edx, 0x2
	jz BG_ExecuteCommand_180
	cmp edx, 0x3
	jz BG_ExecuteCommand_190
	sub edx, 0x1
	jz BG_ExecuteCommand_190
BG_ExecuteCommand_560:
	mov esi, 0xffffffff
	not esi
	shr esi, 0x1f
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_40:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov eax, [eax+0x48]
	add eax, 0x32
	mov [ebp-0x1c], eax
	jmp BG_ExecuteCommand_200
BG_ExecuteCommand_100:
	mov ebx, [ebp-0x28]
	jmp BG_ExecuteCommand_210
BG_ExecuteCommand_140:
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov esi, [eax+0x48]
	add esi, 0x32
	jmp BG_ExecuteCommand_220
BG_ExecuteCommand_60:
	cmp dword [edi+0x88], 0x31
	jle BG_ExecuteCommand_230
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_230
BG_ExecuteCommand_310:
	cmp bx, 0x3
	jnz BG_ExecuteCommand_240
	xor ecx, ecx
BG_ExecuteCommand_50:
	cmp dword [edi+0x90], 0x31
	jg BG_ExecuteCommand_250
BG_ExecuteCommand_660:
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jz BG_ExecuteCommand_260
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_ExecuteCommand_270
BG_ExecuteCommand_680:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz BG_ExecuteCommand_280
	mov eax, [ebp-0x1c]
	mov [edi+0x90], eax
BG_ExecuteCommand_280:
	mov edx, [ebp-0x1c]
	mov [edi+0x9c], edx
	mov edx, [ebp+0xc]
	jmp BG_ExecuteCommand_20
BG_ExecuteCommand_230:
	mov eax, [ebp+0x14]
	test eax, eax
	jz BG_ExecuteCommand_290
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_ExecuteCommand_300
BG_ExecuteCommand_720:
	mov eax, [ebp-0x1c]
	mov [edi+0x98], eax
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov edx, [ebp+0x10]
	test edx, edx
	jz BG_ExecuteCommand_310
	mov [edi+0x88], eax
	jmp BG_ExecuteCommand_310
BG_ExecuteCommand_120:
	cmp dword [edi+0x88], 0x31
	jg BG_ExecuteCommand_320
BG_ExecuteCommand_670:
	mov eax, [ebp+0x14]
	test eax, eax
	jnz BG_ExecuteCommand_330
	mov edx, [edi+0x8c]
BG_ExecuteCommand_730:
	mov [edi+0x98], ebx
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_340
BG_ExecuteCommand_740:
	mov [edi+0x88], ebx
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_160:
	cmp dword [edi+0x88], 0x31
	jle BG_ExecuteCommand_350
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_350
BG_ExecuteCommand_780:
	mov dword [ebp-0x20], 0x0
BG_ExecuteCommand_410:
	cmp bx, 0x3
	jnz BG_ExecuteCommand_360
	xor ecx, ecx
	jmp BG_ExecuteCommand_370
BG_ExecuteCommand_350:
	mov eax, [ebp+0x14]
	test eax, eax
	jz BG_ExecuteCommand_380
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_ExecuteCommand_390
BG_ExecuteCommand_750:
	mov [edi+0x98], esi
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x8c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_400
	mov [edi+0x88], esi
BG_ExecuteCommand_400:
	mov dword [ebp-0x20], 0x1
	jmp BG_ExecuteCommand_410
BG_ExecuteCommand_190:
	cmp dword [edi+0x88], 0x31
	jle BG_ExecuteCommand_420
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_420
BG_ExecuteCommand_790:
	mov dword [ebp-0x24], 0x0
BG_ExecuteCommand_480:
	cmp cx, 0x3
	jnz BG_ExecuteCommand_430
	xor ebx, ebx
	jmp BG_ExecuteCommand_440
BG_ExecuteCommand_420:
	mov eax, [ebp+0x14]
	test eax, eax
	jz BG_ExecuteCommand_450
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ebx, eax
	jz BG_ExecuteCommand_460
BG_ExecuteCommand_760:
	mov [edi+0x98], esi
	and edx, 0x200
	xor dh, 0x2
	or ebx, edx
	mov [edi+0x8c], ebx
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_470
	mov [edi+0x88], esi
BG_ExecuteCommand_470:
	mov dword [ebp-0x24], 0x1
	jmp BG_ExecuteCommand_480
BG_ExecuteCommand_170:
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	mov esi, [eax+0x48]
	add esi, 0x32
	jmp BG_ExecuteCommand_490
BG_ExecuteCommand_90:
	mov eax, [ebp+0xc]
	jmp BG_ExecuteCommand_500
BG_ExecuteCommand_110:
	cmp dword [edi+0x90], 0x31
	jg BG_ExecuteCommand_510
BG_ExecuteCommand_690:
	mov esi, [ebp+0x14]
	test esi, esi
	jz BG_ExecuteCommand_520
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_ExecuteCommand_530
BG_ExecuteCommand_770:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov edx, [ebp+0x10]
	test edx, edx
	jz BG_ExecuteCommand_540
	mov [edi+0x90], ebx
BG_ExecuteCommand_540:
	mov [edi+0x9c], ebx
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_180:
	mov dword [ebp-0x24], 0x0
BG_ExecuteCommand_440:
	cmp dword [edi+0x90], 0x31
	jle BG_ExecuteCommand_550
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_550
BG_ExecuteCommand_430:
	mov edx, [ebp-0x24]
	test edx, edx
	jz BG_ExecuteCommand_560
	not esi
	shr esi, 0x1f
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_550:
	mov eax, [ebp+0x14]
	test eax, eax
	jz BG_ExecuteCommand_570
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ebx, eax
	jz BG_ExecuteCommand_580
BG_ExecuteCommand_700:
	and edx, 0x200
	xor dh, 0x2
	or ebx, edx
	mov [edi+0x94], ebx
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz BG_ExecuteCommand_590
	mov [edi+0x90], esi
BG_ExecuteCommand_590:
	mov [edi+0x9c], esi
	jmp BG_ExecuteCommand_430
BG_ExecuteCommand_150:
	mov dword [ebp-0x20], 0x0
BG_ExecuteCommand_370:
	cmp dword [edi+0x90], 0x31
	jle BG_ExecuteCommand_600
	mov ebx, [ebp+0x18]
	test ebx, ebx
	jnz BG_ExecuteCommand_600
BG_ExecuteCommand_360:
	mov eax, [ebp-0x20]
	test eax, eax
	jnz BG_ExecuteCommand_610
	jmp BG_ExecuteCommand_620
BG_ExecuteCommand_600:
	mov edx, [ebp+0x14]
	test edx, edx
	jz BG_ExecuteCommand_630
	mov edx, [edi+0x94]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jz BG_ExecuteCommand_640
BG_ExecuteCommand_710:
	and edx, 0x200
	xor dh, 0x2
	or ecx, edx
	mov [edi+0x94], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_650
	mov [edi+0x90], esi
BG_ExecuteCommand_650:
	mov [edi+0x9c], esi
	jmp BG_ExecuteCommand_360
BG_ExecuteCommand_250:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_660
	mov edx, [ebp+0xc]
	jmp BG_ExecuteCommand_20
BG_ExecuteCommand_320:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_670
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_260:
	mov edx, [edi+0x94]
	jmp BG_ExecuteCommand_680
BG_ExecuteCommand_510:
	mov eax, [ebp+0x18]
	test eax, eax
	jnz BG_ExecuteCommand_690
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_570:
	mov edx, [edi+0x94]
	jmp BG_ExecuteCommand_700
BG_ExecuteCommand_630:
	mov edx, [edi+0x94]
	jmp BG_ExecuteCommand_710
BG_ExecuteCommand_290:
	mov edx, [edi+0x8c]
	jmp BG_ExecuteCommand_720
BG_ExecuteCommand_330:
	mov edx, [edi+0x8c]
	mov eax, edx
	and ah, 0xfd
	cmp ecx, eax
	jnz BG_ExecuteCommand_730
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_340
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	js BG_ExecuteCommand_740
	xor esi, esi
	jmp BG_ExecuteCommand_130
BG_ExecuteCommand_380:
	mov edx, [edi+0x8c]
	jmp BG_ExecuteCommand_750
BG_ExecuteCommand_450:
	mov edx, [edi+0x8c]
	jmp BG_ExecuteCommand_760
BG_ExecuteCommand_520:
	mov edx, [edi+0x94]
	jmp BG_ExecuteCommand_770
BG_ExecuteCommand_270:
	mov edx, [ebp+0x10]
	test edx, edx
	jz BG_ExecuteCommand_240
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_240
	mov eax, [ebp-0x1c]
	mov [edi+0x90], eax
	mov edx, [ebp+0xc]
	jmp BG_ExecuteCommand_20
BG_ExecuteCommand_580:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz BG_ExecuteCommand_430
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_430
	mov [edi+0x90], esi
	jmp BG_ExecuteCommand_430
BG_ExecuteCommand_640:
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_360
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_360
	mov [edi+0x90], esi
	jmp BG_ExecuteCommand_360
BG_ExecuteCommand_300:
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_310
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_310
	mov edx, [ebp-0x1c]
	mov [edi+0x88], edx
	jmp BG_ExecuteCommand_310
BG_ExecuteCommand_390:
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_780
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_780
	mov [edi+0x88], esi
	mov dword [ebp-0x20], 0x0
	jmp BG_ExecuteCommand_410
BG_ExecuteCommand_460:
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_790
	lea eax, [ebx+ebx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_790
	mov [edi+0x88], esi
	mov dword [ebp-0x24], 0x0
	jmp BG_ExecuteCommand_480
BG_ExecuteCommand_530:
	mov eax, [ebp+0x10]
	test eax, eax
	jz BG_ExecuteCommand_340
	lea eax, [ecx+ecx*2]
	shl eax, 0x5
	add eax, [globalScriptData]
	cmp byte [eax+0x50], 0x0
	jns BG_ExecuteCommand_340
	mov [edi+0x90], ebx
	xor esi, esi
	jmp BG_ExecuteCommand_130


;BG_IndexForString(char const*, animStringItem_t*, int)
BG_IndexForString:
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
	jnz BG_IndexForString_10
BG_IndexForString_130:
	mov dword [ebp-0x28], 0x0
BG_IndexForString_140:
	mov esi, [edi]
	test esi, esi
	jz BG_IndexForString_20
	lea eax, [edi+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x2c], 0x0
	jmp BG_IndexForString_30
BG_IndexForString_50:
	mov eax, edx
	mov edx, [ebp-0x28]
	cmp edx, [eax]
	jz BG_IndexForString_40
BG_IndexForString_70:
	add edi, 0x8
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x20]
	mov esi, [edx]
	add edx, 0x8
	mov [ebp-0x20], edx
	test esi, esi
	jz BG_IndexForString_20
BG_IndexForString_30:
	lea edx, [edi+0x4]
	mov [ebp-0x1c], edx
	cmp dword [edi+0x4], 0xffffffff
	jnz BG_IndexForString_50
	movzx eax, byte [esi]
	test al, al
	jnz BG_IndexForString_60
BG_IndexForString_100:
	mov dword [ebp-0x24], 0x0
BG_IndexForString_110:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x1c]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x28]
	cmp edx, [eax]
	jnz BG_IndexForString_70
BG_IndexForString_40:
	mov eax, [edi]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz BG_IndexForString_70
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_IndexForString_20:
	mov edi, [ebp+0x10]
	test edi, edi
	jz BG_IndexForString_80
BG_IndexForString_150:
	mov dword [ebp-0x2c], 0xffffffff
	mov eax, [ebp-0x2c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_IndexForString_60:
	mov dword [ebp-0x24], 0x0
	mov ebx, 0x77
BG_IndexForString_90:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add [ebp-0x24], eax
	movzx eax, byte [esi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz BG_IndexForString_90
	cmp dword [ebp-0x24], 0xffffffff
	jz BG_IndexForString_100
	jmp BG_IndexForString_110
BG_IndexForString_10:
	mov dword [ebp-0x28], 0x0
	mov ebx, 0x77
BG_IndexForString_120:
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
	jnz BG_IndexForString_120
	cmp dword [ebp-0x28], 0xffffffff
	jz BG_IndexForString_130
	jmp BG_IndexForString_140
BG_IndexForString_80:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_bg_indexforstrin
	call BG_AnimParseError
	jmp BG_IndexForString_150
	nop


;BG_AnimScriptEvent(playerState_s*, scriptAnimEventTypes_t, int, int)
BG_AnimScriptEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0xc]
	cmp edx, 0x1
	jz BG_AnimScriptEvent_10
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x6
	jg BG_AnimScriptEvent_20
BG_AnimScriptEvent_10:
	mov eax, edx
	shl eax, 0x9
	lea eax, [eax+edx*4+0x16f60]
	add eax, [globalScriptData]
	mov ecx, [eax]
	test ecx, ecx
	jnz BG_AnimScriptEvent_30
BG_AnimScriptEvent_20:
	mov eax, 0xffffffff
BG_AnimScriptEvent_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_AnimScriptEvent_30:
	mov edx, [ebp+0x8]
	mov ebx, [edx+0xdc]
	add eax, 0x4
	mov [ebp-0x28], eax
	test ecx, ecx
	jle BG_AnimScriptEvent_20
	lea eax, [ebx+ebx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ebx+eax*2]
	mov edx, [bgs]
	lea edi, [edx+eax*4+0x99a04]
	mov dword [ebp-0x24], 0x0
BG_AnimScriptEvent_100:
	mov eax, [ebp-0x28]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov ebx, eax
	add ebx, 0x4
	mov edx, [eax]
	mov [ebp-0x1c], edx
	test edx, edx
	jle BG_AnimScriptEvent_40
	xor esi, esi
	jmp BG_AnimScriptEvent_50
BG_AnimScriptEvent_80:
	sub eax, 0x1
	jz BG_AnimScriptEvent_60
BG_AnimScriptEvent_90:
	add esi, 0x1
	add ebx, 0xc
	cmp [ebp-0x1c], esi
	jz BG_AnimScriptEvent_70
BG_AnimScriptEvent_50:
	mov edx, [ebx]
	mov eax, [edx*8+animConditionsTable]
	test eax, eax
	jnz BG_AnimScriptEvent_80
	mov eax, [edi+edx*8+0x458]
	test [ebx+0x4], eax
	jnz BG_AnimScriptEvent_90
	mov eax, [edi+edx*8+0x45c]
	test [ebx+0x8], eax
	jnz BG_AnimScriptEvent_90
BG_AnimScriptEvent_110:
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x28], 0x4
	cmp ecx, [ebp-0x24]
	jnz BG_AnimScriptEvent_100
	jmp BG_AnimScriptEvent_20
BG_AnimScriptEvent_60:
	mov eax, [edi+edx*8+0x458]
	cmp eax, [ebx+0x4]
	jz BG_AnimScriptEvent_90
	jmp BG_AnimScriptEvent_110
BG_AnimScriptEvent_40:
	mov ecx, eax
BG_AnimScriptEvent_130:
	mov edi, [ecx+0x7c]
	test edi, edi
	jz BG_AnimScriptEvent_20
	call ms_rand
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
	call BG_ExecuteCommand
	jmp BG_AnimScriptEvent_120
BG_AnimScriptEvent_70:
	mov ecx, [ebp-0x20]
	jmp BG_AnimScriptEvent_130


;BG_IsCrouchingAnim(clientInfo_t const*, int)
BG_IsCrouchingAnim:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	and esi, 0xfffffdff
	mov ebx, [globalScriptData]
	cmp esi, [ebx+0xc000]
	jb BG_IsCrouchingAnim_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [globalScriptData]
BG_IsCrouchingAnim_10:
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
BG_PlayerAnimation:
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
	call GetLeanFraction
	fstp st0
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax+0x3dc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x3e4]
	movss [ebp-0x24], xmm0
	mov eax, [eax+0x3e8]
	mov [esp], eax
	call AngleNormalize360
	fstp dword [ebp-0x1c]
	mov ecx, [ebp-0x38]
	mov eax, [ecx+0x8]
	test ah, 0x3
	jz BG_PlayerAnimation_10
	mov eax, [ebp-0x3c]
	mov dword [eax+0x3b0], 0x1
	mov dword [eax+0x3b8], 0x1
	mov dword [eax+0x380], 0x1
	mov eax, [ecx+0x8]
BG_PlayerAnimation_230:
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x20], xmm0
	test eax, 0x20000
	jnz BG_PlayerAnimation_20
	mov edx, [ebp-0x3c]
	test dword [edx+0x470], 0xc0000
	jnz BG_PlayerAnimation_30
	test ax, ax
	jns BG_PlayerAnimation_40
BG_PlayerAnimation_20:
	movss xmm4, dword [ebp-0x1c]
	movaps xmm0, xmm4
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
BG_PlayerAnimation_270:
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
	call BG_SwingAngles
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test eax, 0x20000
	movss xmm4, dword [ebp-0x58]
	jnz BG_PlayerAnimation_50
	test al, 0x8
	jz BG_PlayerAnimation_60
	mov eax, [ebp-0x3c]
	mov dword [eax+0x380], 0x0
	movss xmm0, dword [ebp-0x1c]
	movss [eax+0x37c], xmm0
	add eax, 0x37c
	mov [ebp-0x44], eax
BG_PlayerAnimation_360:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test ah, 0x3
	jnz BG_PlayerAnimation_70
BG_PlayerAnimation_260:
	mov edx, [ebp-0x3c]
	test dword [edx+0x470], 0xc0000
	jz BG_PlayerAnimation_80
	movss xmm0, dword [ebp-0x20]
	movss [edx+0x3ac], xmm0
	movss [edx+0x37c], xmm0
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
BG_PlayerAnimation_80:
	test eax, 0x20000
	jnz BG_PlayerAnimation_90
	test ah, 0x3
	jnz BG_PlayerAnimation_90
	mov ecx, [ebp-0x3c]
	test dword [ecx+0x470], 0xc0000
	jz BG_PlayerAnimation_100
BG_PlayerAnimation_90:
	pxor xmm0, xmm0
	movaps xmm1, xmm0
BG_PlayerAnimation_410:
	mov edx, [ebp-0x3c]
	add edx, 0x3b8
	mov eax, [ebp-0x3c]
	add eax, 0x3b4
	movss xmm3, dword [_float_0_15000001]
	movss xmm2, dword [_float_45_00000000]
	call BG_SwingAngles
	mov edx, [ebp-0x38]
	mov eax, [edx+0xc4]
	mov [esp], eax
	call BG_GetWeaponDef
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
	jz BG_PlayerAnimation_110
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
	jz BG_PlayerAnimation_120
BG_PlayerAnimation_330:
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
BG_PlayerAnimation_340:
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
	jz BG_PlayerAnimation_130
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
BG_PlayerAnimation_350:
	mov edx, [ebp-0x38]
	test byte [edx+0x8], 0x40
	jz BG_PlayerAnimation_140
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
BG_PlayerAnimation_320:
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
	jz BG_PlayerAnimation_150
	mov edx, [ebp-0x3c]
	mov eax, [edx+0x470]
	cdq
	mov ecx, esi
	xor ecx, edx
	xor eax, ebx
	or ecx, eax
	jz BG_PlayerAnimation_150
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
	jz BG_PlayerAnimation_160
BG_PlayerAnimation_280:
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
BG_PlayerAnimation_370:
	mov eax, [ebp-0x3c]
	mov ebx, [eax+0x4a8]
	mov edx, [ebp-0x44]
	mov eax, [edx+0x10]
	test eax, eax
	jnz BG_PlayerAnimation_170
BG_PlayerAnimation_300:
	mov edx, [ebp-0x48]
	mov eax, [edx+0x10]
	test eax, eax
	jnz BG_PlayerAnimation_180
BG_PlayerAnimation_310:
	mov edx, [ebp-0x3c]
	mov ebx, [edx+0x3f0]
	test ebx, ebx
	jz BG_PlayerAnimation_190
	test dword [edx+0x3bc], 0xfffffdff
	jnz BG_PlayerAnimation_200
	mov dword [edx+0x3f0], 0x0
	mov dword [edx+0x3f4], 0x1
BG_PlayerAnimation_200:
	mov edx, [ebp-0x3c]
BG_PlayerAnimation_190:
	mov ecx, [ebp-0x38]
	mov [esp+0x4], ecx
	mov eax, [ecx+0xcc]
	mov [esp], eax
	mov ecx, [ebp-0x44]
	mov eax, [ebp-0x34]
	call BG_RunLerpFrameRate
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
	jmp BG_RunLerpFrameRate
BG_PlayerAnimation_10:
	mov ecx, [ebp-0x3c]
	mov edx, [ecx+0x470]
	test edx, 0xc0000
	jnz BG_PlayerAnimation_210
	test ax, ax
	js BG_PlayerAnimation_220
	and dl, 0x6
	jz BG_PlayerAnimation_220
	mov ecx, [ebp-0x3c]
	mov ebx, [ecx+0x488]
	test ebx, ebx
	jz BG_PlayerAnimation_230
	mov dword [ecx+0x3b0], 0x1
	mov dword [ecx+0x3b8], 0x1
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	jmp BG_PlayerAnimation_230
BG_PlayerAnimation_60:
	mov edx, [ebp-0x38]
	mov eax, [edx+0xcc]
	and ah, 0xfd
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [bgs]
	test byte [eax+0x50], 0x30
	jnz BG_PlayerAnimation_240
	mov eax, [ebp-0x3c]
	mov edx, [eax+0x380]
	test edx, edx
	jnz BG_PlayerAnimation_250
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
	call BG_SwingAngles
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	test ah, 0x3
	jz BG_PlayerAnimation_260
BG_PlayerAnimation_70:
	movss xmm0, dword [ebp-0x1c]
	mov ecx, [ebp-0x3c]
	movss [ecx+0x3ac], xmm0
	movss [ecx+0x37c], xmm0
	mov eax, [edx+0x8]
	jmp BG_PlayerAnimation_80
BG_PlayerAnimation_220:
	mov ecx, [ebp-0x3c]
BG_PlayerAnimation_210:
	mov dword [ecx+0x3b0], 0x1
	mov dword [ecx+0x3b8], 0x1
	mov dword [ecx+0x380], 0x1
	mov edx, [ebp-0x38]
	mov eax, [edx+0x8]
	jmp BG_PlayerAnimation_230
BG_PlayerAnimation_30:
	movss xmm4, dword [ebp-0x20]
	movaps xmm0, xmm4
	pxor xmm2, xmm2
	movaps xmm1, xmm2
	jmp BG_PlayerAnimation_270
BG_PlayerAnimation_150:
	mov ecx, [ebp-0x40]
	lea eax, [edi+edi*2]
	shl eax, 0x5
	mov eax, [eax+ecx+0x50]
	test al, 0x10
	jnz BG_PlayerAnimation_280
BG_PlayerAnimation_160:
	test al, 0x20
	jz BG_PlayerAnimation_290
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
	jz BG_PlayerAnimation_300
BG_PlayerAnimation_170:
	and ah, 0xfd
	mov [esp+0x4], eax
	mov [esp], ebx
	call XAnimGetWeight
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	ucomiss xmm0, [_float_0_00000000]
	jnz BG_PlayerAnimation_300
	jp BG_PlayerAnimation_300
	mov eax, [ebp-0x44]
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x96
	mov edx, [ebp-0x48]
	mov eax, [edx+0x10]
	test eax, eax
	jz BG_PlayerAnimation_310
BG_PlayerAnimation_180:
	and ah, 0xfd
	mov [esp+0x4], eax
	mov [esp], ebx
	call XAnimGetWeight
	fstp dword [ebp-0x28]
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_0_00000000]
	jnz BG_PlayerAnimation_310
	jp BG_PlayerAnimation_310
	mov eax, [ebp-0x48]
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov dword [eax+0x18], 0x96
	jmp BG_PlayerAnimation_310
BG_PlayerAnimation_140:
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
	jmp BG_PlayerAnimation_320
BG_PlayerAnimation_110:
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
	jnz BG_PlayerAnimation_330
BG_PlayerAnimation_120:
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
	jmp BG_PlayerAnimation_340
BG_PlayerAnimation_130:
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
	jmp BG_PlayerAnimation_350
BG_PlayerAnimation_50:
	mov edx, [ebp-0x3c]
	add edx, 0x380
	mov ecx, [ebp-0x3c]
	add ecx, 0x37c
	mov [ebp-0x44], ecx
	mov ecx, [ebx]
	mov eax, [ebp-0x44]
BG_PlayerAnimation_420:
	movss xmm3, dword [ecx+0xc]
	movss xmm2, dword [_float_150_00000000]
	pxor xmm1, xmm1
	movaps xmm0, xmm4
	call BG_SwingAngles
	jmp BG_PlayerAnimation_360
BG_PlayerAnimation_290:
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
	jmp BG_PlayerAnimation_370
BG_PlayerAnimation_40:
	test al, 0x8
	jnz BG_PlayerAnimation_380
	test al, 0x40
	jnz BG_PlayerAnimation_390
	test eax, 0x40000
	jnz BG_PlayerAnimation_380
	mov eax, player_move_factor_on_torso
	mov eax, [eax]
	movss xmm0, dword [ebp-0x30]
	mulss xmm0, [eax+0xc]
	addss xmm0, [ebp-0x1c]
	movss xmm4, dword [ebp-0x20]
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
	jmp BG_PlayerAnimation_270
BG_PlayerAnimation_100:
	cmp eax, 0x8000
	jz BG_PlayerAnimation_90
	movss xmm0, dword [ebp-0x24]
	ucomiss xmm0, [_float_180_00000000]
	ja BG_PlayerAnimation_400
BG_PlayerAnimation_430:
	addss xmm0, xmm0
	pxor xmm1, xmm1
	jmp BG_PlayerAnimation_410
BG_PlayerAnimation_250:
	mov edx, eax
	add edx, 0x380
	add eax, 0x37c
	mov [ebp-0x44], eax
	mov ecx, [ebx]
	jmp BG_PlayerAnimation_420
BG_PlayerAnimation_240:
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
	call BG_SwingAngles
	jmp BG_PlayerAnimation_360
BG_PlayerAnimation_380:
	movss xmm4, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	movss xmm2, dword [_float_90_00000000]
	pxor xmm1, xmm1
	jmp BG_PlayerAnimation_270
BG_PlayerAnimation_400:
	subss xmm0, [_float_360_00000000]
	jmp BG_PlayerAnimation_430
BG_PlayerAnimation_390:
	movss xmm4, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	movss xmm2, dword [_float_45_00000000]
	pxor xmm1, xmm1
	jmp BG_PlayerAnimation_270
	nop


;BG_SetConditionBit(int, int, int)
BG_SetConditionBit:
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
BG_InitWeaponString:
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
	jnz BG_InitWeaponString_10
BG_InitWeaponString_30:
	xor esi, esi
BG_InitWeaponString_40:
	mov eax, weaponStrings
	mov edx, [ebp+0x8]
	mov [eax+edx*8+0x4], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_InitWeaponString_10:
	xor esi, esi
	mov ebx, 0x77
BG_InitWeaponString_20:
	movsx eax, al
	mov [esp], eax
	call tolower
	movsx eax, al
	imul eax, ebx
	add esi, eax
	movzx eax, byte [edi+ebx-0x76]
	add ebx, 0x1
	test al, al
	jnz BG_InitWeaponString_20
	cmp esi, 0xffffffff
	jz BG_InitWeaponString_30
	jmp BG_InitWeaponString_40


;BG_IsKnifeMeleeAnim(clientInfo_t const*, int)
BG_IsKnifeMeleeAnim:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov edx, [globalScriptData]
	cmp ebx, [edx+0xc000]
	jb BG_IsKnifeMeleeAnim_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [globalScriptData]
BG_IsKnifeMeleeAnim_10:
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
BG_UpdatePlayerDObj:
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
	jz BG_UpdatePlayerDObj_10
	cmp byte [ecx+0x3c], 0x0
	jnz BG_UpdatePlayerDObj_20
	mov eax, [ebp-0x120]
BG_UpdatePlayerDObj_90:
	mov [esp], eax
	call XAnimClearTree
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999fc]
BG_UpdatePlayerDObj_140:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_UpdatePlayerDObj_20:
	mov eax, [ebp+0xc]
	test eax, eax
	jz BG_UpdatePlayerDObj_30
	mov eax, [ebp+0x14]
	cmp ebx, [eax+0x4ac]
	jz BG_UpdatePlayerDObj_40
BG_UpdatePlayerDObj_130:
	mov edx, [ebp+0x10]
BG_UpdatePlayerDObj_110:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	mov eax, [bgs]
	call dword [eax+0x999fc]
BG_UpdatePlayerDObj_30:
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
	jz BG_UpdatePlayerDObj_50
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
BG_UpdatePlayerDObj_120:
	mov edi, [ebp+0x14]
	lea esi, [ebp+ecx*8-0x118]
	mov dword [ebp-0x124], 0x0
	cmp byte [edi+0x7c], 0x0
	jz BG_UpdatePlayerDObj_60
BG_UpdatePlayerDObj_80:
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
	call SL_FindString
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
	jz BG_UpdatePlayerDObj_70
	mov edx, [bgs]
	cmp byte [edi+0x7c], 0x0
	jnz BG_UpdatePlayerDObj_80
BG_UpdatePlayerDObj_60:
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
BG_UpdatePlayerDObj_10:
	mov eax, edx
	jmp BG_UpdatePlayerDObj_90
BG_UpdatePlayerDObj_70:
	mov edx, [bgs]
	jmp BG_UpdatePlayerDObj_60
BG_UpdatePlayerDObj_40:
	mov edx, eax
	movzx eax, byte [eax+0x4b0]
	mov ecx, [ebp+0x10]
	cmp eax, [ecx+0xc8]
	jz BG_UpdatePlayerDObj_100
	mov edx, ecx
	jmp BG_UpdatePlayerDObj_110
BG_UpdatePlayerDObj_50:
	mov dword [ebp-0x11c], 0x1
	mov ecx, [ebp-0x11c]
	jmp BG_UpdatePlayerDObj_120
BG_UpdatePlayerDObj_100:
	mov edi, [edx+0x3f4]
	test edi, edi
	jnz BG_UpdatePlayerDObj_130
	jmp BG_UpdatePlayerDObj_140


;BG_InitWeaponStrings()
BG_InitWeaponStrings:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], weaponStrings
	call memset
	leave
	jmp BG_LoadWeaponStrings


;BG_SetConditionValue(int, int, unsigned long long)
BG_SetConditionValue:
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
BG_AnimScriptAnimation:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x4], 0x6
	jle BG_AnimScriptAnimation_10
BG_AnimScriptAnimation_20:
	mov eax, 0xffffffff
BG_AnimScriptAnimation_110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_AnimScriptAnimation_10:
	mov ecx, [globalScriptData]
	mov [ebp-0x38], ecx
	mov eax, [bgs]
	mov [ebp-0x2c], eax
BG_AnimScriptAnimation_100:
	mov eax, [ebp+0xc]
	test eax, eax
	js BG_AnimScriptAnimation_20
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
	jz BG_AnimScriptAnimation_30
	mov ecx, [ebx+0xdc]
	mov [ebp-0x30], ecx
	add eax, 0x8
	mov [ebp-0x28], eax
	test edi, edi
	jle BG_AnimScriptAnimation_30
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	lea eax, [ecx+eax*2]
	mov edx, [ebp-0x2c]
	lea eax, [edx+eax*4+0x99a04]
	mov [ebp-0x20], eax
	mov dword [ebp-0x24], 0x0
BG_AnimScriptAnimation_90:
	mov ecx, [ebp-0x28]
	mov ecx, [ecx]
	mov [ebp-0x34], ecx
	add ecx, 0x4
	mov eax, [ebp-0x34]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	test eax, eax
	jle BG_AnimScriptAnimation_40
	xor esi, esi
	jmp BG_AnimScriptAnimation_50
BG_AnimScriptAnimation_70:
	sub eax, 0x1
	jz BG_AnimScriptAnimation_60
BG_AnimScriptAnimation_80:
	add esi, 0x1
	add ecx, 0xc
	cmp [ebp-0x1c], esi
	jz BG_AnimScriptAnimation_40
BG_AnimScriptAnimation_50:
	mov edx, [ecx]
	mov eax, [edx*8+animConditionsTable]
	test eax, eax
	jnz BG_AnimScriptAnimation_70
	mov eax, [ebp-0x20]
	mov eax, [eax+edx*8+0x458]
	test [ecx+0x4], eax
	jnz BG_AnimScriptAnimation_80
	mov eax, [ebp-0x20]
	mov edx, [eax+edx*8+0x45c]
	test [ecx+0x8], edx
	jnz BG_AnimScriptAnimation_80
BG_AnimScriptAnimation_120:
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x28], 0x4
	cmp edi, [ebp-0x24]
	jnz BG_AnimScriptAnimation_90
BG_AnimScriptAnimation_30:
	sub dword [ebp+0xc], 0x1
	jmp BG_AnimScriptAnimation_100
BG_AnimScriptAnimation_40:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x7c]
	test eax, eax
	jz BG_AnimScriptAnimation_20
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
	call BG_ExecuteCommand
	add eax, 0x1
	setnz al
	movzx eax, al
	jmp BG_AnimScriptAnimation_110
BG_AnimScriptAnimation_60:
	mov eax, [ebp-0x20]
	mov edx, [eax+edx*8+0x458]
	cmp edx, [ecx+0x4]
	jz BG_AnimScriptAnimation_80
	jmp BG_AnimScriptAnimation_120
	add [eax], al


;BG_AnimationIndexForString(char const*)
BG_AnimationIndexForString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, [g_pLoadAnims]
	test ecx, ecx
	jz BG_AnimationIndexForString_10
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz BG_AnimationIndexForString_20
BG_AnimationIndexForString_90:
	xor edi, edi
BG_AnimationIndexForString_100:
	mov edx, [g_pLoadAnims]
	mov ebx, edx
	mov eax, [g_piNumLoadAnims]
	mov esi, [eax]
	test esi, esi
	jz BG_AnimationIndexForString_30
	xor esi, esi
	jmp BG_AnimationIndexForString_40
BG_AnimationIndexForString_60:
	add esi, 0x1
	add ebx, 0x48
	cmp esi, [eax]
	jae BG_AnimationIndexForString_50
BG_AnimationIndexForString_40:
	cmp edi, [ebx+0x4]
	jnz BG_AnimationIndexForString_60
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz BG_AnimationIndexForString_70
	mov eax, [g_piNumLoadAnims]
	add esi, 0x1
	add ebx, 0x48
	cmp esi, [eax]
	jb BG_AnimationIndexForString_40
BG_AnimationIndexForString_50:
	mov edx, [g_pLoadAnims]
BG_AnimationIndexForString_30:
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
	call Scr_FindAnim
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
BG_AnimationIndexForString_180:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_AnimationIndexForString_20:
	xor edi, edi
	mov ebx, 0x77
BG_AnimationIndexForString_80:
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
	jnz BG_AnimationIndexForString_80
	cmp edi, 0xffffffff
	jz BG_AnimationIndexForString_90
	jmp BG_AnimationIndexForString_100
BG_AnimationIndexForString_10:
	mov edx, [ebp+0x8]
	movzx eax, byte [edx]
	test al, al
	jnz BG_AnimationIndexForString_110
BG_AnimationIndexForString_160:
	xor edi, edi
BG_AnimationIndexForString_170:
	mov eax, [globalScriptData]
	mov ebx, eax
	mov edx, [eax+0xc000]
	test edx, edx
	jz BG_AnimationIndexForString_120
	xor esi, esi
	jmp BG_AnimationIndexForString_130
BG_AnimationIndexForString_140:
	add esi, 0x1
	add ebx, 0x60
	cmp esi, [eax+0xc000]
	jae BG_AnimationIndexForString_120
BG_AnimationIndexForString_130:
	cmp edi, [ebx+0x4c]
	jnz BG_AnimationIndexForString_140
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz BG_AnimationIndexForString_70
	mov eax, [globalScriptData]
	add esi, 0x1
	add ebx, 0x60
	cmp esi, [eax+0xc000]
	jb BG_AnimationIndexForString_130
BG_AnimationIndexForString_120:
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_bg_animationinde
	call BG_AnimParseError
	mov eax, 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_AnimationIndexForString_110:
	xor edi, edi
	mov ebx, 0x77
BG_AnimationIndexForString_150:
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
	jnz BG_AnimationIndexForString_150
	cmp edi, 0xffffffff
	jz BG_AnimationIndexForString_160
	jmp BG_AnimationIndexForString_170
BG_AnimationIndexForString_70:
	mov eax, esi
	jmp BG_AnimationIndexForString_180
	nop
	add [eax], al


;BG_Player_DoControllersSetup(entityState_s const*, clientInfo_t*, int)
BG_Player_DoControllersSetup:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x8]
	test ch, 0x3
	jnz BG_Player_DoControllersSetup_10
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
	jz BG_Player_DoControllersSetup_20
BG_Player_DoControllersSetup_230:
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov [esp], eax
	call AnglesSubtract
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AnglesSubtract
	mov edx, [ebp+0xc]
	mov eax, [edx+0x3e0]
	mov [esp], eax
	call GetLeanFraction
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
	jnz BG_Player_DoControllersSetup_30
	jp BG_Player_DoControllersSetup_30
	movss [ebp-0xf0], xmm7
	mov ebx, [esi+0x8]
	test ebx, 0x20000
	jz BG_Player_DoControllersSetup_40
BG_Player_DoControllersSetup_120:
	test bl, 0x8
	jnz BG_Player_DoControllersSetup_50
BG_Player_DoControllersSetup_130:
	ucomiss xmm3, xmm7
	jp BG_Player_DoControllersSetup_60
	jnz BG_Player_DoControllersSetup_60
	movss xmm4, dword [ebp-0x34]
	movss xmm3, dword [ebp-0x28]
BG_Player_DoControllersSetup_380:
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
	jnz BG_Player_DoControllersSetup_70
	jp BG_Player_DoControllersSetup_70
	ucomiss xmm7, [esi+0xe0]
	jp BG_Player_DoControllersSetup_70
	jz BG_Player_DoControllersSetup_80
BG_Player_DoControllersSetup_70:
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
BG_Player_DoControllersSetup_80:
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
	jmp BG_Player_DoControllersSetup_90
BG_Player_DoControllersSetup_30:
	mov ebx, [esi+0x8]
	test bl, 0x4
	jz BG_Player_DoControllersSetup_100
	ucomiss xmm3, xmm7
	jbe BG_Player_DoControllersSetup_110
	mov eax, player_lean_shift_crouch_right
BG_Player_DoControllersSetup_350:
	mov eax, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0xc]
	movaps xmm1, xmm7
	subss xmm1, xmm0
	movss [ebp-0xf0], xmm1
	test ebx, 0x20000
	jnz BG_Player_DoControllersSetup_120
BG_Player_DoControllersSetup_40:
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
	jz BG_Player_DoControllersSetup_130
BG_Player_DoControllersSetup_50:
	ucomiss xmm3, xmm7
	jp BG_Player_DoControllersSetup_140
	jz BG_Player_DoControllersSetup_150
BG_Player_DoControllersSetup_140:
	movss xmm4, dword [_float_0_50000000]
	mulss xmm4, [ebp-0x34]
	movss [ebp-0x34], xmm4
BG_Player_DoControllersSetup_390:
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
	jbe BG_Player_DoControllersSetup_160
	xorps xmm3, [_data16_80000000]
	mulss xmm2, xmm3
	mulss xmm2, [_float_16_00000000]
	addss xmm2, xmm0
	movss [ebp-0xf0], xmm2
BG_Player_DoControllersSetup_160:
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
	jnz BG_Player_DoControllersSetup_170
	jp BG_Player_DoControllersSetup_170
	ucomiss xmm7, [esi+0xe0]
	jp BG_Player_DoControllersSetup_170
	jz BG_Player_DoControllersSetup_180
BG_Player_DoControllersSetup_170:
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
BG_Player_DoControllersSetup_180:
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
BG_Player_DoControllersSetup_90:
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
	jnz BG_Player_DoControllersSetup_190
	jp BG_Player_DoControllersSetup_190
	ucomiss xmm7, [esi+0xdc]
	jp BG_Player_DoControllersSetup_190
	jz BG_Player_DoControllersSetup_200
BG_Player_DoControllersSetup_190:
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
BG_Player_DoControllersSetup_200:
	xor ebx, ebx
	lea ecx, [ebp-0x84]
	xor edx, edx
BG_Player_DoControllersSetup_210:
	mov eax, [edx+ecx]
	mov [edx+ebp-0xe4], eax
	mov eax, [edx+ecx+0x4]
	mov [edx+ebp-0xe0], eax
	mov eax, [edx+ecx+0x8]
	mov [edx+ebp-0xdc], eax
	add ebx, 0x1
	add edx, 0xc
	cmp ebx, 0x6
	jnz BG_Player_DoControllersSetup_210
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
	jmp BG_Player_DoControllersSetup_220
BG_Player_DoControllersSetup_20:
	movss xmm2, dword [ebx+0x3b4]
	movss [ebp-0x30], xmm2
	and cl, 0x8
	jz BG_Player_DoControllersSetup_230
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
	jbe BG_Player_DoControllersSetup_240
	mulss xmm2, [_float_0_50000000]
	movss [ebp-0x30], xmm2
	jmp BG_Player_DoControllersSetup_230
BG_Player_DoControllersSetup_10:
	mov dword [esp+0x8], 0x60
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xe4]
	mov [esp], eax
	call memset
	movss xmm6, dword [_float_0_10000000]
BG_Player_DoControllersSetup_220:
	cvtsi2ss xmm5, dword [ebp+0x10]
	movaps xmm3, xmm5
	mulss xmm3, [_float_0_36000001]
	xor edi, edi
	movaps xmm4, xmm3
	xorps xmm4, [_data16_80000000]
	mov ecx, [ebp+0xc]
	add ecx, 0x3f8
	xor esi, esi
BG_Player_DoControllersSetup_270:
	lea ebx, [ebp-0xe4]
	add ebx, esi
	mov edx, 0x1
BG_Player_DoControllersSetup_260:
	lea eax, [edx*4]
	movss xmm2, dword [ebx+eax-0x4]
	lea eax, [ecx+eax]
	movss xmm0, dword [eax-0x4]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	ucomiss xmm1, xmm3
	jbe BG_Player_DoControllersSetup_250
	addss xmm0, xmm3
	movss [eax-0x4], xmm0
BG_Player_DoControllersSetup_310:
	add edx, 0x1
	cmp edx, 0x4
	jnz BG_Player_DoControllersSetup_260
	add edi, 0x1
	add esi, 0xc
	add ecx, 0xc
	cmp edi, 0x6
	jnz BG_Player_DoControllersSetup_270
	mov ecx, [ebp+0xc]
	add ecx, 0x440
	mov dl, 0x1
	movaps xmm4, xmm3
	xorps xmm4, [_data16_80000000]
BG_Player_DoControllersSetup_290:
	lea eax, [edx*4]
	movss xmm2, dword [eax+ebp-0xa0]
	add eax, ecx
	movss xmm0, dword [eax-0x4]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	ucomiss xmm1, xmm3
	jbe BG_Player_DoControllersSetup_280
	addss xmm0, xmm3
	movss [eax-0x4], xmm0
BG_Player_DoControllersSetup_330:
	add edx, 0x1
	cmp edx, 0x4
	jnz BG_Player_DoControllersSetup_290
	mov eax, [ebp+0xc]
	add eax, 0x44c
	mov [esp+0x8], eax
	mulss xmm5, xmm6
	movss [esp+0x4], xmm5
	lea eax, [ebp-0x90]
	mov [esp], eax
	call BG_LerpOffset
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BG_Player_DoControllersSetup_250:
	ucomiss xmm4, xmm1
	jbe BG_Player_DoControllersSetup_300
	subss xmm0, xmm3
	movss [eax-0x4], xmm0
	jmp BG_Player_DoControllersSetup_310
BG_Player_DoControllersSetup_300:
	movss [eax-0x4], xmm2
	jmp BG_Player_DoControllersSetup_310
BG_Player_DoControllersSetup_280:
	ucomiss xmm4, xmm1
	jbe BG_Player_DoControllersSetup_320
	subss xmm0, xmm3
	movss [eax-0x4], xmm0
	jmp BG_Player_DoControllersSetup_330
BG_Player_DoControllersSetup_320:
	movss [eax-0x4], xmm2
	jmp BG_Player_DoControllersSetup_330
BG_Player_DoControllersSetup_100:
	ucomiss xmm3, xmm7
	jbe BG_Player_DoControllersSetup_340
	mov eax, player_lean_shift_right
	jmp BG_Player_DoControllersSetup_350
BG_Player_DoControllersSetup_60:
	and bl, 0x4
	jz BG_Player_DoControllersSetup_360
	ucomiss xmm3, xmm7
	jbe BG_Player_DoControllersSetup_370
	mov eax, player_lean_rotate_crouch_right
BG_Player_DoControllersSetup_410:
	mov eax, [eax]
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [eax+0xc]
	movss [ebp-0x28], xmm0
	movss xmm4, dword [ebp-0x34]
	mulss xmm4, [eax+0xc]
	movss [ebp-0x34], xmm4
	movaps xmm3, xmm0
	jmp BG_Player_DoControllersSetup_380
BG_Player_DoControllersSetup_150:
	movss xmm4, dword [ebp-0x34]
	jmp BG_Player_DoControllersSetup_390
BG_Player_DoControllersSetup_360:
	ucomiss xmm3, xmm7
	jbe BG_Player_DoControllersSetup_400
	mov eax, player_lean_rotate_right
	jmp BG_Player_DoControllersSetup_410
BG_Player_DoControllersSetup_110:
	mov eax, player_lean_shift_crouch_left
	jmp BG_Player_DoControllersSetup_350
BG_Player_DoControllersSetup_340:
	mov eax, player_lean_shift_left
	jmp BG_Player_DoControllersSetup_350
BG_Player_DoControllersSetup_240:
	mulss xmm2, [_float_0_25000000]
	movss [ebp-0x30], xmm2
	jmp BG_Player_DoControllersSetup_230
BG_Player_DoControllersSetup_370:
	mov eax, player_lean_rotate_crouch_left
	jmp BG_Player_DoControllersSetup_410
BG_Player_DoControllersSetup_400:
	mov eax, player_lean_rotate_left
	jmp BG_Player_DoControllersSetup_410


;BG_AnimUpdatePlayerStateConditions(pmove_t*)
BG_AnimUpdatePlayerStateConditions:
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
	call BG_GetViewmodelWeaponIndex
	mov [esp], eax
	call BG_GetWeaponDef
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
	jz BG_AnimUpdatePlayerStateConditions_10
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
	jz BG_AnimUpdatePlayerStateConditions_20
BG_AnimUpdatePlayerStateConditions_50:
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
BG_AnimUpdatePlayerStateConditions_60:
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
	jz BG_AnimUpdatePlayerStateConditions_30
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
	jz BG_AnimUpdatePlayerStateConditions_40
BG_AnimUpdatePlayerStateConditions_70:
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
BG_AnimUpdatePlayerStateConditions_10:
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
	jnz BG_AnimUpdatePlayerStateConditions_50
BG_AnimUpdatePlayerStateConditions_20:
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
	jmp BG_AnimUpdatePlayerStateConditions_60
BG_AnimUpdatePlayerStateConditions_30:
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
	jnz BG_AnimUpdatePlayerStateConditions_70
BG_AnimUpdatePlayerStateConditions_40:
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
BG_IsAds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	and bh, 0xfd
	mov esi, [globalScriptData]
	cmp ebx, [esi+0xc000]
	jb BG_IsAds_10
	mov dword [esp+0x4], _cstring_bg_getanimationf
	mov dword [esp], 0x2
	call Com_Error
	mov esi, [globalScriptData]
BG_IsAds_10:
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
_cstring_bg_getanimationf:		db 15h,"BG_GetAnimationForIndex: index out of bounds",0
_cstring_player_animation:		db 15h,"Player animation index out of range (%i): %i",0
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
_cstring_couldnt_load_pla:		db 15h,"Couldn",27h,"t load player animation script %s",0ah,0
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
_cstring_player_animation1:		db 15h,"Player animation index %i out of 0 to %i range",0
_cstring_could_not_find_a:		db 15h,"Could not find animation tree ",27h,"%s",27h,0
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
_cstring_s_s_line_i:		db 15h,"%s: (%s, line %i)",0
_cstring_s:		db 15h,"%s",0
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
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
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

align   16,db 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
