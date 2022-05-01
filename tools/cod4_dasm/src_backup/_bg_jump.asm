;Imports of bg_jump:
	extern _Z21PM_GetEffectiveStancePK13playerState_s
	extern _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	extern _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	extern _Z20PM_GroundSurfaceTypeP5pml_t
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z17Dvar_RegisterBoolPKchtS0_

;Exports of bg_jump:
	global jump_height
	global jump_spreadAdd
	global jump_slowdownEnable
	global jump_ladderPushVel
	global jump_stepSize
	global _Z10Jump_CheckP7pmove_tP5pml_t
	global _Z15Jump_ClearStateP13playerState_s
	global _Z18Jump_ApplySlowdownP13playerState_s
	global _Z18Jump_ClampVelocityP13playerState_sPKf
	global _Z18Jump_GetStepHeightP13playerState_sPKfPf
	global _Z18Jump_RegisterDvarsv
	global _Z19Jump_ReduceFrictionP13playerState_s
	global _Z21Jump_ActivateSlowdownP13playerState_s
	global _Z21Jump_IsPlayerAboveMaxP13playerState_s


SECTION .text


;Jump_Check(pmove_t*, pml_t*)
_Z10Jump_CheckP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [esi]
	mov edx, [ebx+0xc]
	test edx, 0x80000
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_10
	mov eax, [esi+0x4]
	sub eax, [ebx+0x80]
	cmp eax, 0x1f3
	jle _Z10Jump_CheckP7pmove_tP5pml_t_10
	test dh, 0x4
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_10
	and dl, 0x4
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_10
	cmp dword [ebx+0x4], 0x6
	jle _Z10Jump_CheckP7pmove_tP5pml_t_20
_Z10Jump_CheckP7pmove_tP5pml_t_10:
	xor eax, eax
_Z10Jump_CheckP7pmove_tP5pml_t_40:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z10Jump_CheckP7pmove_tP5pml_t_20:
	mov [esp], ebx
	call _Z21PM_GetEffectiveStancePK13playerState_s
	test eax, eax
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_10
	mov eax, [esi+0x8]
	test ah, 0x4
	jz _Z10Jump_CheckP7pmove_tP5pml_t_10
	test byte [esi+0x29], 0x4
	jz _Z10Jump_CheckP7pmove_tP5pml_t_30
	and ah, 0xfb
	mov [esi+0x8], eax
	xor eax, eax
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_40
_Z10Jump_CheckP7pmove_tP5pml_t_30:
	mov edx, [esi]
	mov eax, [jump_height]
	movss xmm1, dword [eax+0xc]
	addss xmm1, xmm1
	cvtsi2ss xmm0, dword [edx+0x58]
	mulss xmm1, xmm0
	test byte [edx+0xd], 0x40
	jz _Z10Jump_CheckP7pmove_tP5pml_t_50
	mov ecx, [edx+0x18]
	cmp ecx, 0x708
	jg _Z10Jump_CheckP7pmove_tP5pml_t_50
	mov eax, [jump_slowdownEnable]
	cmp byte [eax+0xc], 0x0
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_60
	movss xmm0, dword [_float_1_00000000]
_Z10Jump_CheckP7pmove_tP5pml_t_160:
	divss xmm1, xmm0
_Z10Jump_CheckP7pmove_tP5pml_t_50:
	mov eax, [ebp+0xc]
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x34], 0x0
	mov dword [eax+0x2c], 0x0
	mov dword [edx+0x70], 0x3ff
	mov eax, [esi+0x4]
	mov [edx+0x80], eax
	mov eax, [edx+0x24]
	mov [edx+0x84], eax
	sqrtss xmm0, xmm1
	movss [edx+0x30], xmm0
	mov eax, [edx+0xc]
	and eax, 0xfffffe7f
	or ah, 0x40
	mov [edx+0xc], eax
	mov dword [edx+0x18], 0x0
	mov dword [edx+0x5b8], 0x0
	movss xmm0, dword [edx+0x628]
	mov eax, [jump_spreadAdd]
	addss xmm0, [eax+0xc]
	movss [edx+0x628], xmm0
	ucomiss xmm0, [_float_255_00000000]
	jbe _Z10Jump_CheckP7pmove_tP5pml_t_70
	mov dword [edx+0x628], 0x437f0000
_Z10Jump_CheckP7pmove_tP5pml_t_70:
	test byte [ebx+0xc], 0x8
	jz _Z10Jump_CheckP7pmove_tP5pml_t_80
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x15
	mov dword [esp], 0x4c
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
_Z10Jump_CheckP7pmove_tP5pml_t_110:
	test byte [ebx+0xc], 0x8
	jnz _Z10Jump_CheckP7pmove_tP5pml_t_90
_Z10Jump_CheckP7pmove_tP5pml_t_140:
	cmp byte [esi+0x1a], 0x0
	js _Z10Jump_CheckP7pmove_tP5pml_t_100
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	mov eax, 0x1
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_40
_Z10Jump_CheckP7pmove_tP5pml_t_80:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20PM_GroundSurfaceTypeP5pml_t
	test eax, eax
	jz _Z10Jump_CheckP7pmove_tP5pml_t_110
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x4c
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_110
_Z10Jump_CheckP7pmove_tP5pml_t_90:
	movss xmm0, dword [_float_0_75000000]
	mulss xmm0, [ebx+0x30]
	movss [ebx+0x30], xmm0
	mov eax, [ebp+0xc]
	movss xmm3, dword [eax+0x4]
	movss xmm2, dword [eax]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	pxor xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movss xmm7, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jb _Z10Jump_CheckP7pmove_tP5pml_t_120
	movss xmm0, dword [_float_1_00000000]
_Z10Jump_CheckP7pmove_tP5pml_t_170:
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	pxor xmm2, xmm2
	mulss xmm0, xmm2
	movss [ebp-0xc], xmm0
	lea eax, [ebx+0x74]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movss xmm0, dword [ebx+0x74]
	mov eax, [ebp+0xc]
	mulss xmm0, [eax]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm2, xmm0
	ja _Z10Jump_CheckP7pmove_tP5pml_t_130
	movaps xmm1, xmm6
	movaps xmm2, xmm5
_Z10Jump_CheckP7pmove_tP5pml_t_190:
	mov eax, [jump_ladderPushVel]
	movss xmm0, dword [eax+0xc]
	mulss xmm2, xmm0
	movss [ebx+0x28], xmm2
	mulss xmm0, xmm1
	movss [ebx+0x2c], xmm0
	and dword [ebx+0xc], 0xfffffff7
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_140
_Z10Jump_CheckP7pmove_tP5pml_t_100:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	mov eax, 0x1
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_40
_Z10Jump_CheckP7pmove_tP5pml_t_60:
	cmp ecx, 0x6a3
	jle _Z10Jump_CheckP7pmove_tP5pml_t_150
	movss xmm0, dword [_float_2_50000000]
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_160
_Z10Jump_CheckP7pmove_tP5pml_t_120:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_170
_Z10Jump_CheckP7pmove_tP5pml_t_150:
	cvtsi2ss xmm0, ecx
	mulss xmm0, [_float_1_50000000]
	mulss xmm0, [_float_0_00058824]
	addss xmm0, [_float_1_00000000]
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_160
_Z10Jump_CheckP7pmove_tP5pml_t_130:
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x74]
	movaps xmm1, xmm6
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	mulss xmm0, [_float__2_00000000]
	movaps xmm2, xmm0
	mulss xmm2, [ebx+0x74]
	addss xmm2, xmm5
	mulss xmm4, xmm0
	addss xmm4, xmm6
	mulss xmm3, xmm0
	addss xmm3, [ebp-0xc]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	mulss xmm3, xmm3
	addss xmm0, xmm3
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, xmm7
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jb _Z10Jump_CheckP7pmove_tP5pml_t_180
	movss xmm0, dword [_float_1_00000000]
_Z10Jump_CheckP7pmove_tP5pml_t_200:
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_190
_Z10Jump_CheckP7pmove_tP5pml_t_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z10Jump_CheckP7pmove_tP5pml_t_200
	add [eax], al


;Jump_ClearState(playerState_s*)
_Z15Jump_ClearStateP13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0xc], 0xffffbfff
	mov dword [eax+0x84], 0x0
	pop ebp
	ret
	nop


;Jump_ApplySlowdown(playerState_s*)
_Z18Jump_ApplySlowdownP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18]
	cmp eax, 0x708
	jle _Z18Jump_ApplySlowdownP13playerState_s_10
	and dword [edx+0xc], 0xffffbfff
	mov dword [edx+0x84], 0x0
	movss xmm1, dword [_float_0_64999998]
_Z18Jump_ApplySlowdownP13playerState_s_50:
	mov eax, [jump_slowdownEnable]
	cmp byte [eax+0xc], 0x0
	jz _Z18Jump_ApplySlowdownP13playerState_s_20
	lea eax, [edx+0x28]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x28]
	movss [edx+0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
_Z18Jump_ApplySlowdownP13playerState_s_20:
	pop ebp
	ret
_Z18Jump_ApplySlowdownP13playerState_s_10:
	test eax, eax
	jnz _Z18Jump_ApplySlowdownP13playerState_s_30
	movss xmm0, dword [_float_18_00000000]
	addss xmm0, [edx+0x84]
	ucomiss xmm0, [edx+0x24]
	ja _Z18Jump_ApplySlowdownP13playerState_s_40
	mov dword [edx+0x18], 0x4b0
	movss xmm1, dword [_float_0_50000000]
	jmp _Z18Jump_ApplySlowdownP13playerState_s_50
_Z18Jump_ApplySlowdownP13playerState_s_30:
	movss xmm1, dword [_float_1_00000000]
	jmp _Z18Jump_ApplySlowdownP13playerState_s_50
_Z18Jump_ApplySlowdownP13playerState_s_40:
	mov dword [edx+0x18], 0x708
	movss xmm1, dword [_float_0_64999998]
	jmp _Z18Jump_ApplySlowdownP13playerState_s_50
	nop


;Jump_ClampVelocity(playerState_s*, float const*)
_Z18Jump_ClampVelocityP13playerState_sPKf:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+0x24]
	mov eax, [ebp+0xc]
	movaps xmm0, xmm2
	subss xmm0, [eax+0x8]
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe _Z18Jump_ClampVelocityP13playerState_sPKf_10
	movss xmm1, dword [edx+0x84]
	mov eax, [jump_height]
	addss xmm1, [eax+0xc]
	subss xmm1, xmm2
	ucomiss xmm1, [_float_0_10000000]
	jae _Z18Jump_ClampVelocityP13playerState_sPKf_20
	jp _Z18Jump_ClampVelocityP13playerState_sPKf_20
	movss [edx+0x30], xmm3
_Z18Jump_ClampVelocityP13playerState_sPKf_10:
	pop ebp
	ret
_Z18Jump_ClampVelocityP13playerState_sPKf_20:
	addss xmm1, xmm1
	cvtsi2ss xmm0, dword [edx+0x58]
	mulss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss xmm0, dword [edx+0x30]
	ucomiss xmm0, xmm1
	jbe _Z18Jump_ClampVelocityP13playerState_sPKf_10
	movss [edx+0x30], xmm1
	pop ebp
	ret
	nop


;Jump_GetStepHeight(playerState_s*, float const*, float*)
_Z18Jump_GetStepHeightP13playerState_sPKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edx, [jump_height]
	movss xmm0, dword [ebx+0x84]
	addss xmm0, [edx+0xc]
	ucomiss xmm0, [ecx+0x8]
	jbe _Z18Jump_GetStepHeightP13playerState_sPKfPf_10
	mov eax, [jump_stepSize]
	movss xmm0, dword [eax+0xc]
	movss [esi], xmm0
	movss xmm2, dword [ecx+0x8]
	movss xmm1, dword [ebx+0x84]
	addss xmm1, [edx+0xc]
	addss xmm0, xmm2
	ucomiss xmm0, xmm1
	jbe _Z18Jump_GetStepHeightP13playerState_sPKfPf_20
	subss xmm1, xmm2
	movss [esi], xmm1
_Z18Jump_GetStepHeightP13playerState_sPKfPf_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Jump_GetStepHeightP13playerState_sPKfPf_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Jump_RegisterDvars()
_Z18Jump_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [esp+0x14], _cstring_the_maximum_heig
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x447a0000
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x421c0000
	mov dword [esp], _cstring_jump_height
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [jump_height], eax
	mov dword [esp+0x14], _cstring_the_maximum_step
	mov dword [esp+0x10], 0x180
	mov esi, 0x42800000
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41900000
	mov dword [esp], _cstring_jump_stepsize
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [jump_stepSize], eax
	mov dword [esp+0xc], _cstring_slow_player_move
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_jump_slowdownena
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [jump_slowdownEnable], eax
	mov dword [esp+0x14], _cstring_the_velocity_of_
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x44800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x43000000
	mov dword [esp], _cstring_jump_ladderpushv
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [jump_ladderPushVel], eax
	mov dword [esp+0x14], _cstring_the_amount_of_sp
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x44000000
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_jump_spreadadd
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [jump_spreadAdd], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Jump_ReduceFriction(playerState_s*)
_Z19Jump_ReduceFrictionP13playerState_s:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edx, [eax+0x18]
	cmp edx, 0x708
	jg _Z19Jump_ReduceFrictionP13playerState_s_10
	mov eax, [jump_slowdownEnable]
	cmp byte [eax+0xc], 0x0
	jz _Z19Jump_ReduceFrictionP13playerState_s_20
	cmp edx, 0x6a3
	jg _Z19Jump_ReduceFrictionP13playerState_s_30
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_1_50000000]
	mulss xmm0, [_float_0_00058824]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
_Z19Jump_ReduceFrictionP13playerState_s_10:
	and dword [eax+0xc], 0xffffbfff
	mov dword [eax+0x84], 0x0
_Z19Jump_ReduceFrictionP13playerState_s_20:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
_Z19Jump_ReduceFrictionP13playerState_s_30:
	movss xmm0, dword [_float_2_50000000]
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret


;Jump_ActivateSlowdown(playerState_s*)
_Z21Jump_ActivateSlowdownP13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x18]
	test edx, edx
	jnz _Z21Jump_ActivateSlowdownP13playerState_s_10
	or dword [eax+0xc], 0x4000
	mov dword [eax+0x18], 0x708
_Z21Jump_ActivateSlowdownP13playerState_s_10:
	pop ebp
	ret
	nop


;Jump_IsPlayerAboveMax(playerState_s*)
_Z21Jump_IsPlayerAboveMaxP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x84]
	mov eax, [jump_height]
	addss xmm0, [eax+0xc]
	movss xmm1, dword [edx+0x24]
	xor eax, eax
	ucomiss xmm1, xmm0
	setae al
	pop ebp
	ret
	nop


;Initialized global or static variables of bg_jump:
SECTION .data


;Initialized constant data of bg_jump:
SECTION .rdata


;Zero initialized global or static variables of bg_jump:
SECTION .bss
jump_height: resb 0x4
jump_spreadAdd: resb 0x4
jump_slowdownEnable: resb 0x4
jump_ladderPushVel: resb 0x4
jump_stepSize: resb 0x70


;All cstrings:
SECTION .rdata
_cstring_the_maximum_heig:		db "The maximum height of a player",27h,"s jump",0
_cstring_jump_height:		db "jump_height",0
_cstring_the_maximum_step:		db "The maximum step up to the top of a jump arc",0
_cstring_jump_stepsize:		db "jump_stepSize",0
_cstring_slow_player_move:		db "Slow player movement after jumping",0
_cstring_jump_slowdownena:		db "jump_slowdownEnable",0
_cstring_the_velocity_of_:		db "The velocity of a jump off of a ladder",0
_cstring_jump_ladderpushv:		db "jump_ladderPushVel",0
_cstring_the_amount_of_sp:		db "The amount of spread scale to add as a side effect of jumping",0
_cstring_jump_spreadadd:		db "jump_spreadAdd",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_75000000:		dd 0x3f400000	; 0.75
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_2_50000000:		dd 0x40200000	; 2.5
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_0_00058824:		dd 0x3a1a33cd	; 0.000588235
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_64999998:		dd 0x3f266666	; 0.65
_float_18_00000000:		dd 0x41900000	; 18
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_10000000:		dd 0x3dcccccd	; 0.1

