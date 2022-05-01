;Imports of bg_mantle:
	extern _Z18XAnimGetLengthMsecPK7XAnim_sj
	extern _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	extern _Z19VectorAngleMultiplyPff
	extern playerMaxs
	extern _Z2vaPKcz
	extern _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	extern _Z10Com_PrintfiPKcz
	extern _Z8vectoyawPKf
	extern playerMins
	extern _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	extern _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	extern _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	extern acos
	extern _Z10AngleDeltaff
	extern _Z17AngleNormalize360f
	extern _Z16XAnimCreateAnimsPKciPFPviE
	extern _Z10XAnimBlendP7XAnim_sjPKcjjj
	extern _Z14BG_CreateXAnimP7XAnim_sjPKc
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_

;Exports of bg_mantle:
	global s_mantleTrans
	global mantle_enable
	global mantle_view_yawcap
	global s_mantleAnims
	global mantle_debug
	global mantle_check_angle
	global mantle_check_range
	global mantle_check_radius
	global s_mantleAnimNames
	global _Z19Mantle_GetAnimDeltaP11MantleStateiPf
	global _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf
	global _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t
	global _Z12Mantle_CheckP7pmove_tP5pml_t
	global _Z14Mantle_CapViewP13playerState_s
	global _Z16Mantle_ClearHintP13playerState_s
	global _Z18Mantle_CreateAnimsPFPviE
	global _Z20Mantle_RegisterDvarsv
	global _Z20Mantle_ShutdownAnimsv
	global _Z23Mantle_IsWeaponInactiveP13playerState_s


SECTION .text


;Mantle_GetAnimDelta(MantleState*, int, float*)
_Z19Mantle_GetAnimDeltaP11MantleStateiPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov [ebp-0x40], edx
	mov esi, ecx
	mov eax, [eax+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	mov ebx, eax
	test byte [edi+0xc], 0x1
	jnz _Z19Mantle_GetAnimDeltaP11MantleStateiPf_10
	mov dword [ebp-0x3c], 0x0
_Z19Mantle_GetAnimDeltaP11MantleStateiPf_30:
	cmp ebx, [ebp-0x40]
	jl _Z19Mantle_GetAnimDeltaP11MantleStateiPf_20
	cvtsi2ss xmm0, dword [ebp-0x40]
	cvtsi2ss xmm1, ebx
	divss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov [esp+0xc], esi
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19VectorAngleMultiplyPff
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Mantle_GetAnimDeltaP11MantleStateiPf_20:
	mov dword [esp+0x10], 0x3f800000
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	sub [ebp-0x40], ebx
	cvtsi2ss xmm0, dword [ebp-0x40]
	cvtsi2ss xmm1, dword [ebp-0x3c]
	divss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov [esp+0xc], esi
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm0, dword [esi]
	addss xmm0, [ebp-0x2c]
	movss [esi], xmm0
	movss xmm0, dword [esi+0x4]
	addss xmm0, [ebp-0x28]
	movss [esi+0x4], xmm0
	movss xmm0, dword [esi+0x8]
	addss xmm0, [ebp-0x24]
	movss [esi+0x8], xmm0
	mov eax, [edi]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19VectorAngleMultiplyPff
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Mantle_GetAnimDeltaP11MantleStateiPf_10:
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	mov [ebp-0x3c], eax
	jmp _Z19Mantle_GetAnimDeltaP11MantleStateiPf_30
	nop


;Mantle_CheckLedge(pmove_t*, pml_t*, MantleResults*, float)
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov edi, eax
	mov esi, ecx
	movss [ebp-0xf4], xmm0
	mov eax, [eax]
	mov [ebp-0xec], eax
	mov eax, playerMaxs
	movss xmm0, dword [eax]
	movss [ebp-0xf0], xmm0
	cvtss2sd xmm0, [ebp-0xf4]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_checking_for_led
	call _Z2vaPKcz
	mov edx, eax
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_10
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_70:
	movss xmm0, dword [ebp-0xf0]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x3c], xmm0
	movss [ebp-0x38], xmm0
	mov dword [ebp-0x34], 0x0
	movss xmm0, dword [ebp-0xf0]
	movss [ebp-0x48], xmm0
	movss [ebp-0x44], xmm0
	addss xmm0, xmm0
	movss [ebp-0x40], xmm0
	lea edx, [esi+0xc]
	mov eax, [esi+0xc]
	mov [ebp-0x54], eax
	mov eax, [edx+0x4]
	mov [ebp-0x50], eax
	mov eax, [edx+0x8]
	mov [ebp-0x4c], eax
	movss xmm0, dword [ebp-0xf4]
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm1, dword [_float_16_00000000]
	movss xmm0, dword [esi]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x54]
	movss [ebp-0x30], xmm0
	lea eax, [esi+0x4]
	mov [ebp-0xe8], eax
	movss xmm0, dword [esi+0x4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x50]
	movss [ebp-0x2c], xmm0
	lea edx, [esi+0x8]
	mov [ebp-0xe4], edx
	mulss xmm1, [esi+0x8]
	addss xmm1, [ebp-0x4c]
	movss [ebp-0x28], xmm1
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xec]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	lea edx, [ebp-0x48]
	mov [esp+0x10], edx
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea ebx, [ebp-0x54]
	mov [esp+0x8], ebx
	lea edx, [ebp-0xd0]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0xa7], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_20
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xd0]
	ja _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_20
	mov eax, [ebp-0x30]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x50], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x4c], eax
	movss xmm0, dword [_float_18_00000000]
	addss xmm0, [esi+0x14]
	movss [ebp-0x28], xmm0
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xec]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	lea edx, [ebp-0x48]
	mov [esp+0x10], edx
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea edx, [ebp-0xd0]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0xa7], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_30
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xd0]
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_40
	jp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_40
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_30:
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_50
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_60:
	xor eax, eax
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_90:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_20:
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_60
	mov dword [esp+0x8], _cstring_mantle_failed_fo
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_60
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_10:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_70
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_50:
	mov dword [esp+0x8], _cstring_mantle_failed_ca
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_40:
	cmp byte [ebp-0xa6], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_80
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_60
	mov dword [esp+0x8], _cstring_mantle_failed_le
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_90
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_80:
	lea ebx, [esi+0x18]
	mov eax, [ebp-0x30]
	mov [esi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x4], eax
	movss xmm0, dword [ebp-0x28]
	movss [ebx+0x8], xmm0
	movss xmm1, dword [ebp-0x4c]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0xd0]
	addss xmm1, xmm0
	movss [esi+0x20], xmm1
	mov dword [ebp-0x40], 0x42480000
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xec]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	lea eax, [ebp-0x48]
	mov [esp+0x10], eax
	lea edx, [ebp-0x3c]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0xa7], 0x0
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_100
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_60
	mov dword [esp+0x8], _cstring_mantle_failed_pl
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	xor eax, eax
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_90
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_100:
	mov edx, [ebp-0xec]
	or dword [edx+0x5ec], 0x8
	or dword [esi+0x30], 0x8
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_110
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_180:
	test byte [edi+0x9], 0x4
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_120
	mov eax, [edi]
	mov [ebp-0xe0], eax
	test byte [esi+0x30], 0x1
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_130
	lea edx, [esi+0x24]
	mov [ebp-0xf8], edx
	mov eax, [esi+0x18]
	mov [esi+0x24], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_240:
	mov eax, [ebp-0xec]
	test byte [eax+0xb0], 0x4
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_140
	mov edx, eax
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_220:
	add edx, 0x5e0
	mov [ebp-0xdc], edx
	mov [esp], esi
	call _Z8vectoyawPKf
	mov eax, [ebp-0xec]
	fstp dword [eax+0x5e0]
	mov edx, [ebp-0xdc]
	mov dword [edx+0x4], 0x0
	movss xmm3, dword [esi+0x20]
	subss xmm3, [esi+0x14]
	movss xmm1, dword [s_mantleTrans+0x8]
	subss xmm1, xmm3
	movss xmm2, dword [_data16_7fffffff]
	andps xmm1, xmm2
	xor ecx, ecx
	mov eax, 0x1
	mov edx, s_mantleTrans
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_160:
	movss xmm0, dword [edx+0x14]
	subss xmm0, xmm3
	andps xmm0, xmm2
	ucomiss xmm1, xmm0
	jbe _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_150
	mov ecx, eax
	movaps xmm1, xmm0
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_150:
	add eax, 0x1
	add edx, 0xc
	cmp eax, 0x7
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_160
	mov eax, [ebp-0xdc]
	mov [eax+0x8], ecx
	mov eax, [esi+0x30]
	mov edx, [ebp-0xdc]
	mov [edx+0xc], eax
	lea eax, [ecx+ecx*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	mov ebx, eax
	mov eax, [ebp-0xdc]
	test byte [eax+0xc], 0x1
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_170
	xor eax, eax
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_190:
	lea ebx, [eax+ebx]
	lea ecx, [ebp-0x24]
	mov edx, ebx
	mov eax, [ebp-0xdc]
	call _Z19Mantle_GetAnimDeltaP11MantleStateiPf
	mov eax, [ebp-0xec]
	add eax, 0x1c
	movss xmm0, dword [esi+0x24]
	subss xmm0, [ebp-0x24]
	mov edx, [ebp-0xec]
	movss [edx+0x1c], xmm0
	movss xmm0, dword [esi+0x28]
	subss xmm0, [ebp-0x20]
	movss [eax+0x4], xmm0
	movss xmm0, dword [esi+0x2c]
	subss xmm0, [ebp-0x1c]
	movss [eax+0x8], xmm0
	or dword [edx+0xc], 0x4
	or dword [edx+0xb0], 0x8000
	lea edx, [edi+0xf4]
	mov eax, [esi+0x24]
	mov [edi+0xf4], eax
	mov eax, [esi+0x28]
	mov [edx+0x4], eax
	mov eax, [esi+0x2c]
	mov [edx+0x8], eax
	mov [edi+0x100], ebx
	mov byte [edi+0xf0], 0x1
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_120:
	mov eax, 0x1
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_90
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_110:
	mov dword [esp+0x8], _cstring_mantle_available
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_180
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_170:
	mov eax, [eax+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_190
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_140:
	mov edx, eax
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov eax, playerMaxs
	mov [esp+0x10], eax
	mov edx, playerMins
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0xa7], 0x0
	jz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_200
	or dword [esi+0x30], 0x2
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_200:
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xec]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	mov eax, [ebp-0xf8]
	mov [esp+0x14], eax
	mov edx, playerMaxs
	mov [esp+0x10], edx
	mov eax, playerMins
	mov [esp+0xc], eax
	mov edx, [ebp-0xf8]
	mov [esp+0x8], edx
	lea eax, [ebp-0xd0]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0xa7], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_210
	or dword [esi+0x30], 0x4
	mov edx, [ebp-0xec]
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_220
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_130:
	mov edx, playerMins
	mov eax, [edx]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov edx, playerMaxs
	mov eax, [edx]
	mov [ebp-0x78], eax
	mov eax, [edx+0x4]
	mov [ebp-0x74], eax
	mov dword [ebp-0x70], 0x42480000
	mov eax, [esi+0x18]
	mov [ebp-0x60], eax
	mov eax, [esi+0x1c]
	mov [ebp-0x5c], eax
	mov eax, [esi+0x20]
	mov [ebp-0x58], eax
	movss xmm1, dword [_float_31_00000000]
	movss xmm0, dword [esi]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x60]
	movss [ebp-0x6c], xmm0
	mov eax, [ebp-0xe8]
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x68], xmm0
	mov edx, [ebp-0xe4]
	mulss xmm1, [edx]
	addss xmm1, [ebp-0x58]
	movss [ebp-0x64], xmm1
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x14], eax
	lea edx, [ebp-0x78]
	mov [esp+0x10], edx
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x7b], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_230
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xa4]
	ja _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_230
	mov eax, [ebp-0x6c]
	mov [ebp-0x60], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x5c], eax
	movss xmm0, dword [ebp-0x64]
	movss [ebp-0x58], xmm0
	subss xmm0, [_float_18_00000000]
	movss [ebp-0x64], xmm0
	mov eax, [edi+0x44]
	mov [esp+0x1c], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x14], eax
	lea edx, [ebp-0x78]
	mov [esp+0x10], edx
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea edx, [ebp-0x60]
	mov [esp+0x8], edx
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x7b], 0x0
	jnz _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_230
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xa4]
	ja _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_230
	lea eax, [esi+0x24]
	mov [ebp-0xf8], eax
	mov eax, [ebp-0x6c]
	mov [esi+0x24], eax
	mov eax, [ebp-0x68]
	mov edx, [ebp-0xf8]
	mov [edx+0x4], eax
	movss xmm0, dword [ebp-0x64]
	movss [edx+0x8], xmm0
	movss xmm1, dword [ebp-0x58]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0xa4]
	addss xmm1, xmm0
	movss [esi+0x2c], xmm1
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_240
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_230:
	and dword [esi+0x30], 0xfffffffe
	lea eax, [esi+0x24]
	mov [ebp-0xf8], eax
	mov eax, [esi+0x18]
	mov [esi+0x24], eax
	mov eax, [esi+0x1c]
	mov edx, [ebp-0xf8]
	mov [edx+0x4], eax
	mov eax, [esi+0x20]
	mov [edx+0x8], eax
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_240
_Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_210:
	mov edx, [ebp-0xec]
	jmp _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf_220
	nop


;Mantle_Move(pmove_t*, playerState_s*, pml_t*)
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0xc]
	mov eax, [mantle_enable]
	cmp byte [eax+0xc], 0x0
	jz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_10
	lea ebx, [edi+0x5e0]
	mov eax, [ebx+0xc]
	mov edx, eax
	and edx, 0xfffffff7
	mov [ebx+0xc], edx
	test al, 0x2
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_20
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_90:
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	mov esi, eax
	test byte [ebx+0xc], 0x1
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_30
	xor eax, eax
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_80:
	add eax, esi
	mov [ebp-0x3c], eax
	mov edx, [ebx+0x4]
	mov eax, edx
	mov ecx, [ebp+0x10]
	add eax, [ecx+0x28]
	cmp [ebp-0x3c], eax
	cmovl eax, [ebp-0x3c]
	mov [ebx+0x4], eax
	sub eax, edx
	mov [ebp-0x40], eax
	lea ecx, [ebp-0x30]
	mov eax, ebx
	call _Z19Mantle_GetAnimDeltaP11MantleStateiPf
	lea ecx, [ebp-0x24]
	mov edx, [ebx+0x4]
	mov eax, ebx
	call _Z19Mantle_GetAnimDeltaP11MantleStateiPf
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	mov esi, eax
	test byte [ebx+0xc], 0x1
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_40
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_110:
	cmp esi, [ebx+0x4]
	jl _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_50
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans]
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_100:
	mov dword [esp+0xc], 0x1
	add eax, 0x15
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z22BG_AnimScriptAnimationP13playerState_s13aistateEnum_t21scriptAnimMoveTypes_ti
	movss xmm2, dword [ebp-0x24]
	subss xmm2, [ebp-0x30]
	movss [ebp-0x24], xmm2
	movss xmm1, dword [ebp-0x20]
	subss xmm1, [ebp-0x2c]
	movss [ebp-0x20], xmm1
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [ebp-0x28]
	movss [ebp-0x1c], xmm0
	lea eax, [edi+0x1c]
	addss xmm2, [edi+0x1c]
	movss [edi+0x1c], xmm2
	addss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	addss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	lea eax, [edi+0x28]
	cvtsi2ss xmm1, dword [ebp-0x40]
	mulss xmm1, [_float_0_00100000]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	movss [edi+0x28], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [eax+0x4], xmm1
	mulss xmm0, [ebp-0x1c]
	movss [eax+0x8], xmm0
	mov eax, [ebp-0x3c]
	cmp eax, [ebx+0x4]
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_10
	and dword [edi+0xc], 0xfffffffb
	mov ecx, [ebp+0x8]
	mov byte [ecx+0xf0], 0x0
	mov edx, [ebx+0xc]
	test dl, 0x1
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_60
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_120:
	test dl, 0x4
	jnz _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_70
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_130:
	or edx, 0x10
	mov [ebx+0xc], edx
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_30:
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_80
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x7
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_90
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_50:
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_100
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_40:
	mov eax, [ebx+0x8]
	lea eax, [eax+eax*2]
	mov eax, [eax*4+s_mantleTrans+0x4]
	mov [esp+0x4], eax
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z18XAnimGetLengthMsecPK7XAnim_sj
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_110
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_60:
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z18BG_AnimScriptEventP13playerState_s22scriptAnimEventTypes_tii
	mov edx, [ebx+0xc]
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_120
_Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_70:
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x6
	call _Z35BG_AddPredictableEventToPlayerstateijP13playerState_s
	and dword [edi+0xb0], 0xffff7fff
	mov edx, [ebx+0xc]
	jmp _Z11Mantle_MoveP7pmove_tP13playerState_sP5pml_t_130
	nop


;Mantle_Check(pmove_t*, pml_t*)
_Z12Mantle_CheckP7pmove_tP5pml_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0x8]
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_10
_Z12Mantle_CheckP7pmove_tP5pml_t_80:
	mov eax, [esi]
	and dword [eax+0x5ec], 0xffffffef
	mov eax, [mantle_enable]
	cmp byte [eax+0xc], 0x0
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_20
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_30
_Z12Mantle_CheckP7pmove_tP5pml_t_70:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Mantle_CheckP7pmove_tP5pml_t_20:
	mov ebx, [esi]
	and dword [ebx+0x5ec], 0xfffffff7
	cmp dword [ebx+0x4], 0x6
	jg _Z12Mantle_CheckP7pmove_tP5pml_t_40
	test byte [ebx+0xc], 0x4
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_50
	test byte [ebx+0xb0], 0xc
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_60
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_pl1
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_40:
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_pl2
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Mantle_CheckP7pmove_tP5pml_t_30:
	mov dword [esp+0x8], _cstring_mantle_failed_no
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Mantle_CheckP7pmove_tP5pml_t_10:
	mov dword [esp+0x8], _cstring__mantle_debug_
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_80
_Z12Mantle_CheckP7pmove_tP5pml_t_50:
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_pl3
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_60:
	mov edi, [esi]
	mov ecx, playerMaxs
	movss xmm7, dword [ecx]
	mov eax, playerMins
	mov eax, [eax+0x8]
	mov edx, [mantle_check_radius]
	movss xmm5, dword [_data16_80000000]
	movss xmm0, dword [edx+0xc]
	xorps xmm0, xmm5
	movss [ebp-0x24], xmm0
	movss [ebp-0x20], xmm0
	mov [ebp-0x1c], eax
	mov ecx, [ecx+0x8]
	mov eax, [edx+0xc]
	mov [ebp-0x30], eax
	mov [ebp-0x2c], eax
	mov [ebp-0x28], ecx
	subss xmm7, [edx+0xc]
	mov eax, [mantle_check_range]
	movaps xmm2, xmm7
	addss xmm2, [eax+0xc]
	mov eax, [ebp+0xc]
	movss xmm3, dword [eax]
	movss xmm4, dword [eax+0x4]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	pxor xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm6, xmm0
	movaps xmm0, xmm6
	xorps xmm0, xmm5
	ucomiss xmm0, xmm1
	jb _Z12Mantle_CheckP7pmove_tP5pml_t_90
	movss xmm0, dword [_float_1_00000000]
_Z12Mantle_CheckP7pmove_tP5pml_t_130:
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	mulss xmm0, xmm1
	movss [ebp-0xbc], xmm0
	movaps xmm1, xmm7
	xorps xmm1, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	addss xmm0, [edi+0x1c]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm0, [edi+0x20]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0xbc]
	addss xmm1, [edi+0x24]
	movss [ebp-0x34], xmm1
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	addss xmm0, [edi+0x1c]
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	addss xmm0, [edi+0x20]
	movss [ebp-0x44], xmm0
	mulss xmm2, [ebp-0xbc]
	addss xmm2, [edi+0x24]
	movss [ebp-0x40], xmm2
	mov dword [esp+0x1c], 0x1000000
	mov eax, [edi+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x48]
	mov [esp+0x14], eax
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0xe8], xmm3
	movss [ebp-0xf8], xmm4
	call _Z8PM_traceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp word [ebp-0x4c], 0x0
	movss xmm3, dword [ebp-0xe8]
	movss xmm4, dword [ebp-0xf8]
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_100
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_ma
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_100:
	movss xmm5, dword [_float_1_00000000]
	ucomiss xmm5, [ebp-0x74]
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_110
	jp _Z12Mantle_CheckP7pmove_tP5pml_t_110
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_no1
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_110:
	test dword [ebp-0x64], 0x6000000
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_120
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_no2
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_90:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm6
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_130
_Z12Mantle_CheckP7pmove_tP5pml_t_120:
	movss xmm2, dword [_data16_80000000]
	movss xmm7, dword [ebp-0x70]
	xorps xmm7, xmm2
	movss xmm6, dword [ebp-0x6c]
	xorps xmm6, xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	pxor xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss [ebp-0xc4], xmm0
	xorps xmm0, xmm2
	ucomiss xmm0, xmm1
	jb _Z12Mantle_CheckP7pmove_tP5pml_t_140
	movaps xmm0, xmm5
_Z12Mantle_CheckP7pmove_tP5pml_t_170:
	movaps xmm5, xmm7
	mulss xmm5, xmm0
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	mulss xmm0, xmm1
	movss [ebp-0xc0], xmm0
	movss xmm0, dword [ebp-0xc4]
	ucomiss xmm0, [_float_0_00010000]
	jae _Z12Mantle_CheckP7pmove_tP5pml_t_150
	jp _Z12Mantle_CheckP7pmove_tP5pml_t_150
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_ma1
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_150:
	mulss xmm3, xmm5
	mulss xmm4, xmm2
	addss xmm3, xmm4
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, [ebp-0xc0]
	addss xmm3, xmm0
	cvtss2sd xmm3, xmm3
	movsd [esp], xmm3
	movss [ebp-0xd8], xmm2
	movss [ebp-0x108], xmm5
	call acos
	fstp qword [ebp-0x110]
	movsd xmm0, qword [ebp-0x110]
	mulsd xmm0, [_double_57_29577951]
	mov eax, [mantle_check_angle]
	cvtss2sd xmm1, [eax+0xc]
	ucomisd xmm0, xmm1
	movss xmm2, dword [ebp-0xd8]
	movss xmm5, dword [ebp-0x108]
	jbe _Z12Mantle_CheckP7pmove_tP5pml_t_160
	mov eax, [mantle_debug]
	cmp byte [eax+0xc], 0x0
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	mov dword [esp+0x8], _cstring_mantle_failed_pl4
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x11
	call _Z10Com_PrintfiPKcz
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
_Z12Mantle_CheckP7pmove_tP5pml_t_140:
	movaps xmm0, xmm5
	divss xmm0, dword [ebp-0xc4]
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_170
_Z12Mantle_CheckP7pmove_tP5pml_t_160:
	cld
	mov ecx, 0xe
	xor eax, eax
	lea edi, [ebp-0xac]
	rep stosd
	movss [ebp-0xac], xmm5
	movss [ebp-0xa8], xmm2
	movss xmm0, dword [ebp-0xc0]
	movss [ebp-0xa4], xmm0
	lea edx, [ebx+0x1c]
	mov eax, [ebx+0x1c]
	mov [ebp-0xa0], eax
	mov eax, [edx+0x4]
	mov [ebp-0x9c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x98], eax
	test byte [ebp-0x61], 0x4
	jz _Z12Mantle_CheckP7pmove_tP5pml_t_180
	or dword [ebp-0x7c], 0x1
_Z12Mantle_CheckP7pmove_tP5pml_t_180:
	movss xmm0, dword [_float_60_00000000]
	lea ecx, [ebp-0xac]
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf
	test al, al
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	movss xmm0, dword [_float_40_00000000]
	lea ecx, [ebp-0xac]
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf
	test al, al
	jnz _Z12Mantle_CheckP7pmove_tP5pml_t_70
	movss xmm0, dword [_float_20_00000000]
	lea ecx, [ebp-0xac]
	mov edx, [ebp+0xc]
	mov eax, esi
	call _Z17Mantle_CheckLedgeP7pmove_tP5pml_tP13MantleResultsf
	jmp _Z12Mantle_CheckP7pmove_tP5pml_t_70
	add [eax], al


;Mantle_CapView(playerState_s*)
_Z14Mantle_CapViewP13playerState_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [mantle_enable]
	cmp byte [eax+0xc], 0x0
	jnz _Z14Mantle_CapViewP13playerState_s_10
_Z14Mantle_CapViewP13playerState_s_30:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z14Mantle_CapViewP13playerState_s_10:
	mov eax, [ebx+0x10c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x5e0]
	mov [esp], eax
	call _Z10AngleDeltaff
	fstp dword [ebp-0xc]
	movss xmm1, dword [ebp-0xc]
	mov eax, [mantle_view_yawcap]
	movss xmm2, dword [eax+0xc]
	movaps xmm3, xmm2
	xorps xmm3, [_data16_80000000]
	ucomiss xmm1, xmm3
	jb _Z14Mantle_CapViewP13playerState_s_20
	ucomiss xmm2, xmm1
	jae _Z14Mantle_CapViewP13playerState_s_30
	ucomiss xmm3, xmm1
	jbe _Z14Mantle_CapViewP13playerState_s_40
_Z14Mantle_CapViewP13playerState_s_50:
	addss xmm1, xmm2
_Z14Mantle_CapViewP13playerState_s_20:
	ucomiss xmm3, xmm1
	ja _Z14Mantle_CapViewP13playerState_s_50
	ucomiss xmm1, xmm2
	jbe _Z14Mantle_CapViewP13playerState_s_60
_Z14Mantle_CapViewP13playerState_s_70:
	subss xmm1, xmm2
_Z14Mantle_CapViewP13playerState_s_40:
	ucomiss xmm1, xmm2
	ja _Z14Mantle_CapViewP13playerState_s_70
_Z14Mantle_CapViewP13playerState_s_60:
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x1
	andps xmm3, xmm0
	andnps xmm0, xmm2
	orps xmm0, xmm3
	addss xmm1, [ebx+0x68]
	movss [ebx+0x68], xmm1
	addss xmm0, [ebx+0x5e0]
	movss [esp], xmm0
	call _Z17AngleNormalize360f
	fstp dword [ebx+0x10c]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Mantle_ClearHint(playerState_s*)
_Z16Mantle_ClearHintP13playerState_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	and dword [eax+0x5ec], 0xfffffff7
	pop ebp
	ret
	nop


;Mantle_CreateAnims(void* (*)(int))
_Z18Mantle_CreateAnimsPFPviE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [s_mantleAnims]
	test eax, eax
	jz _Z18Mantle_CreateAnimsPFPviE_10
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Mantle_CreateAnimsPFPviE_10:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xb
	mov dword [esp], _cstring_player_mantle
	call _Z16XAnimCreateAnimsPKciPFPviE
	mov [s_mantleAnims], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0xa
	mov dword [esp+0xc], 0x1
	mov edx, [s_mantleAnimNames]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z10XAnimBlendP7XAnim_sjPKcjjj
	mov ebx, 0x1
	mov esi, s_mantleAnimNames
_Z18Mantle_CreateAnimsPFPviE_20:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z14BG_CreateXAnimP7XAnim_sjPKc
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0xb
	jnz _Z18Mantle_CreateAnimsPFPviE_20
	mov esi, s_mantleTrans
	lea edi, [ebp-0x30]
_Z18Mantle_CreateAnimsPFPviE_90:
	mov ebx, [esi]
	mov dword [esp+0x10], 0x3f800000
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm1, dword [ebp-0x24]
	movaps xmm0, xmm1
	subss xmm0, [_float_16_00000000]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_30
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x40300000
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_30:
	movss xmm1, dword [ebp-0x20]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_40
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x0
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_40:
	movss xmm2, dword [ebp-0x1c]
	movss xmm1, dword [esi+0x8]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_50
	cvtss2sd xmm1, xmm1
	movsd [esp+0x14], xmm1
	cvtss2sd xmm2, xmm2
	movsd [esp+0xc], xmm2
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_50:
	mov ebx, [esi+0x4]
	mov dword [esp+0x10], 0x3f800000
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [s_mantleAnims]
	mov [esp], eax
	call _Z16XAnimGetAbsDeltaPK7XAnim_sjPfS2_f
	movss xmm1, dword [ebp-0x24]
	movaps xmm0, xmm1
	subss xmm0, [_float_31_00000000]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_60
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x403f0000
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_60:
	movss xmm1, dword [ebp-0x20]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_70
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0x0
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_70:
	movss xmm1, dword [ebp-0x1c]
	movaps xmm0, xmm1
	addss xmm0, [_float_18_00000000]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z18Mantle_CreateAnimsPFPviE_80
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x18], 0xc0320000
	cvtss2sd xmm1, xmm1
	movsd [esp+0xc], xmm1
	mov eax, [ebx*4+s_mantleAnimNames]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mantle_anim_s_ha2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z18Mantle_CreateAnimsPFPviE_80:
	add esi, 0xc
	cmp esi, s_mantleTrans+0x54
	jnz _Z18Mantle_CreateAnimsPFPviE_90
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Mantle_RegisterDvars()
_Z20Mantle_RegisterDvarsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0xc], _cstring_enable_player_ma
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_mantle_enable
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [mantle_enable], eax
	mov dword [esp+0xc], _cstring_show_debug_infor
	mov dword [esp+0x8], 0x180
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_mantle_debug
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [mantle_debug], eax
	mov dword [esp+0x14], _cstring_the_minimum_dist
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x43000000
	xor ebx, ebx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x41a00000
	mov dword [esp], _cstring_mantle_check_ran
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [mantle_check_range], eax
	mov dword [esp+0x14], _cstring_the_player_radiu
	mov dword [esp+0x10], 0x180
	mov dword [esp+0xc], 0x41700000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x3dcccccd
	mov dword [esp], _cstring_mantle_check_rad
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [mantle_check_radius], eax
	mov dword [esp+0x14], _cstring_the_minimum_angl
	mov dword [esp+0x10], 0x180
	mov edi, 0x43340000
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov esi, 0x42700000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mantle_check_ang
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [mantle_check_angle], eax
	mov dword [esp+0x14], _cstring_the_angle_at_whi
	mov dword [esp+0x10], 0x180
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mantle_view_yawc
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [mantle_view_yawcap], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Mantle_ShutdownAnims()
_Z20Mantle_ShutdownAnimsv:
	push ebp
	mov ebp, esp
	mov dword [s_mantleAnims], 0x0
	pop ebp
	ret
	nop


;Mantle_IsWeaponInactive(playerState_s*)
_Z23Mantle_IsWeaponInactiveP13playerState_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [mantle_enable]
	cmp byte [eax+0xc], 0x0
	jz _Z23Mantle_IsWeaponInactiveP13playerState_s_10
	lea eax, [edx+0x5e0]
	test byte [edx+0xc], 0x4
	jz _Z23Mantle_IsWeaponInactiveP13playerState_s_10
	mov eax, [eax+0x8]
	lea eax, [eax+eax*2]
	cmp dword [eax*4+s_mantleTrans+0x4], 0xa
	setnz al
	movzx eax, al
	pop ebp
	ret
_Z23Mantle_IsWeaponInactiveP13playerState_s_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Initialized global or static variables of bg_mantle:
SECTION .data
s_mantleTrans: dd 0x1, 0x8, 0x42640000, 0x2, 0x8, 0x424c0000, 0x3, 0x9, 0x42340000, 0x4, 0x9, 0x421c0000, 0x5, 0x9, 0x42040000, 0x6, 0xa, 0x41d80000, 0x7, 0xa, 0x41a80000, 0x0, 0x0, 0x0
s_mantleAnimNames: dd _cstring_mp_mantle_root, _cstring_mp_mantle_up_57, _cstring_mp_mantle_up_51, _cstring_mp_mantle_up_45, _cstring_mp_mantle_up_39, _cstring_mp_mantle_up_33, _cstring_mp_mantle_up_27, _cstring_mp_mantle_up_21, _cstring_mp_mantle_over_h, _cstring_mp_mantle_over_m, _cstring_player_mantle_ov, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of bg_mantle:
SECTION .rdata


;Zero initialized global or static variables of bg_mantle:
SECTION .bss
mantle_enable: resb 0x4
mantle_view_yawcap: resb 0x4
s_mantleAnims: resb 0x4
mantle_debug: resb 0x4
mantle_check_angle: resb 0x4
mantle_check_range: resb 0x4
mantle_check_radius: resb 0x68


;All cstrings:
SECTION .rdata
_cstring_checking_for_led:		db "Checking for ledge at %f units",0
_cstring_mantle_failed_fo:		db "Mantle Failed: Forward movement is blocked",0
_cstring_s:		db "%s",0ah,0
_cstring_mantle_failed_ca:		db "Mantle Failed: Can",27h,"t find ledge",0
_cstring_mantle_failed_le:		db "Mantle Failed: Ledge is too steep",0
_cstring_mantle_failed_pl:		db "Mantle Failed: Player can",27h,"t fit crouched on ledge",0
_cstring_mantle_available:		db "Mantle available!",0
_cstring_mantle_failed_pl1:		db "Mantle Failed: Player not standing",0
_cstring_mantle_failed_pl2:		db "Mantle Failed: Player is dead",0
_cstring_mantle_failed_no:		db "Mantle Failed: Not enabled",0
_cstring__mantle_debug_:		db "====== Mantle Debug ======",0
_cstring_mantle_failed_pl3:		db "Mantle Failed: Player already mantling",0
_cstring_mantle_failed_ma:		db "Mantle Failed: Mantle brush is too thick",0
_cstring_mantle_failed_no1:		db "Mantle Failed: No mantle surface found",0
_cstring_mantle_failed_no2:		db "Mantle Failed: No mantle surface with MANTLE_ON or MANTLE_OVER found",0
_cstring_mantle_failed_ma1:		db "Mantle Failed: Mantle surface has vertical normal",0
_cstring_mantle_failed_pl4:		db "Mantle Failed: Player is not facing mantle surface",0
_cstring_player_mantle:		db "PLAYER_MANTLE",0
_cstring_mantle_anim_s_ha:		db "Mantle anim [%s] has X translation %f, should be %f",0ah,0
_cstring_mantle_anim_s_ha1:		db "Mantle anim [%s] has Y translation %f, should be %f",0ah,0
_cstring_mantle_anim_s_ha2:		db "Mantle anim [%s] has Z translation %f, should be %f",0ah,0
_cstring_enable_player_ma:		db "Enable player mantling",0
_cstring_mantle_enable:		db "mantle_enable",0
_cstring_show_debug_infor:		db "Show debug information for mantling",0
_cstring_mantle_debug:		db "mantle_debug",0
_cstring_the_minimum_dist:		db "The minimum distance from a player to a mantle surface to allow a mantle",0
_cstring_mantle_check_ran:		db "mantle_check_range",0
_cstring_the_player_radiu:		db "The player radius to test against while mantling",0
_cstring_mantle_check_rad:		db "mantle_check_radius",0
_cstring_the_minimum_angl:		db "The minimum angle from the player to a mantle surface to allow a mantle",0
_cstring_mantle_check_ang:		db "mantle_check_angle",0
_cstring_the_angle_at_whi:		db "The angle at which to restrict a sideways turn while mantling",0
_cstring_mantle_view_yawc:		db "mantle_view_yawcap",0
_cstring_mp_mantle_root:		db "mp_mantle_root",0
_cstring_mp_mantle_up_57:		db "mp_mantle_up_57",0
_cstring_mp_mantle_up_51:		db "mp_mantle_up_51",0
_cstring_mp_mantle_up_45:		db "mp_mantle_up_45",0
_cstring_mp_mantle_up_39:		db "mp_mantle_up_39",0
_cstring_mp_mantle_up_33:		db "mp_mantle_up_33",0
_cstring_mp_mantle_up_27:		db "mp_mantle_up_27",0
_cstring_mp_mantle_up_21:		db "mp_mantle_up_21",0
_cstring_mp_mantle_over_h:		db "mp_mantle_over_high",0
_cstring_mp_mantle_over_m:		db "mp_mantle_over_mid",0
_cstring_player_mantle_ov:		db "player_mantle_over_low",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_16_00000000:		dd 0x41800000	; 16
_float_1_00000000:		dd 0x3f800000	; 1
_float_18_00000000:		dd 0x41900000	; 18
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_31_00000000:		dd 0x41f80000	; 31
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_double_57_29577951:		dq 0x404ca5dc1a63c1f8	; 57.2958
_float_60_00000000:		dd 0x42700000	; 60
_float_40_00000000:		dd 0x42200000	; 40
_float_20_00000000:		dd 0x41a00000	; 20

