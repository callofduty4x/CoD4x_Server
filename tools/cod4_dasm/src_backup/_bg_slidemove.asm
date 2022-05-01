;Imports of bg_slidemove:
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	extern _Z20Trace_GetEntityHitIdPK7trace_t
	extern _Z14PM_AddTouchEntP7pmove_ti
	extern _Z15PM_ClipVelocityPKfS0_Pf
	extern _Z18PM_ProjectVelocityPKfS0_Pf
	extern floorf
	extern _Z22PM_ShouldMakeFootstepsP7pmove_t
	extern _Z16PM_FootstepEventP7pmove_tP5pml_tiii
	extern _Z15Jump_ClearStateP13playerState_s
	extern _Z21Jump_IsPlayerAboveMaxP13playerState_s
	extern _Z18Jump_ClampVelocityP13playerState_sPKf
	extern _Z18Jump_GetStepHeightP13playerState_sPKfPf
	extern playerMaxs
	extern _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf

;Exports of bg_slidemove:
	global _Z12PM_SlideMoveP7pmove_tP5pml_ti
	global _Z16PM_StepSlideMoveP7pmove_tP5pml_ti


SECTION .text


;PM_SlideMove(pmove_t*, pml_t*, int)
_Z12PM_SlideMoveP7pmove_tP5pml_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	mov [ebp-0x150], eax
	mov [ebp-0x154], edx
	mov [ebp-0x158], ecx
	mov eax, [eax]
	mov [ebp-0x140], eax
	add eax, 0x28
	mov [ebp-0x14c], eax
	mov edx, [ebp-0x140]
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x12c], xmm0
	add edx, 0x2c
	mov [ebp-0x13c], edx
	mov eax, [ebp-0x140]
	movss xmm0, dword [eax+0x2c]
	movss [ebp-0x130], xmm0
	add eax, 0x30
	mov [ebp-0x138], eax
	mov eax, [ebp-0x140]
	movss xmm0, dword [eax+0x30]
	movss [ebp-0x134], xmm0
	movss xmm1, dword [ebp-0x12c]
	movss [ebp-0x30], xmm1
	mov edx, eax
	mov eax, [eax+0x2c]
	mov [ebp-0x2c], eax
	movss xmm1, dword [edx+0x30]
	movss [ebp-0x28], xmm1
	test ecx, ecx
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_10
	cvtsi2ss xmm0, dword [edx+0x58]
	mov ecx, [ebp-0x154]
	mulss xmm0, [ecx+0x24]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movss [ebp-0x28], xmm1
	addss xmm0, [edx+0x30]
	mulss xmm0, [_float_0_50000000]
	movss [edx+0x30], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x134], xmm0
	mov edi, [ecx+0x30]
	test edi, edi
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_20
_Z12PM_SlideMoveP7pmove_tP5pml_ti_10:
	mov ecx, [ebp-0x154]
	movss xmm0, dword [ecx+0x24]
	movss [ebp-0x144], xmm0
	mov esi, [ecx+0x30]
	test esi, esi
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_30
	xor edx, edx
	mov dword [ebp-0x11c], 0x1
_Z12PM_SlideMoveP7pmove_tP5pml_ti_340:
	lea eax, [edx+edx]
	add eax, edx
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov dword [ebp-0x148], 0x0
	mov eax, [ebp-0x140]
	add eax, 0x1c
	mov [ebp-0x168], eax
	mov edx, [ebp-0x150]
	add edx, 0xd8
	mov [ebp-0x164], edx
	mov ecx, [ebp-0x150]
	add ecx, 0xcc
	mov [ebp-0x160], ecx
	mov ebx, [ebp-0x11c]
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x114]
	mov [ebp-0x16c], eax
_Z12PM_SlideMoveP7pmove_tP5pml_ti_130:
	movss xmm0, dword [ebp-0x144]
	mov eax, [ebp-0x14c]
	mulss xmm0, [eax]
	mov edx, [ebp-0x140]
	addss xmm0, [edx+0x1c]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x144]
	mov ecx, [ebp-0x13c]
	mulss xmm0, [ecx]
	addss xmm0, [edx+0x20]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x144]
	mov ebx, [ebp-0x138]
	mulss xmm0, [ebx]
	addss xmm0, [edx+0x24]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp-0x150]
	mov eax, [edx+0x44]
	mov [esp+0x1c], eax
	mov ecx, [ebp-0x140]
	mov eax, [ecx+0xdc]
	mov [esp+0x18], eax
	lea ebx, [ebp-0x24]
	mov [esp+0x14], ebx
	mov eax, [ebp-0x164]
	mov [esp+0x10], eax
	mov edx, [ebp-0x160]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x168]
	mov [esp+0x8], ecx
	lea ebx, [ebp-0xb4]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x150]
	mov [esp], eax
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	cmp byte [ebp-0x8c], 0x0
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_40
	movss xmm2, dword [ebp-0xb4]
	ucomiss xmm2, [_float_0_00000000]
	jbe _Z12PM_SlideMoveP7pmove_tP5pml_ti_50
	mov edx, [ebp-0x140]
	movss xmm1, dword [edx+0x1c]
	movss xmm0, dword [ebp-0x24]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [edx+0x1c], xmm1
	movss xmm1, dword [edx+0x20]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov ecx, [ebp-0x168]
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx+0x24]
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [ecx+0x8], xmm1
_Z12PM_SlideMoveP7pmove_tP5pml_ti_50:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb4]
	jp _Z12PM_SlideMoveP7pmove_tP5pml_ti_60
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_70
_Z12PM_SlideMoveP7pmove_tP5pml_ti_60:
	lea ebx, [ebp-0xb4]
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	movzx eax, ax
	mov [esp+0x4], eax
	mov eax, [ebp-0x150]
	mov [esp], eax
	call _Z14PM_AddTouchEntP7pmove_ti
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, [ebp-0xb4]
	movss xmm1, dword [ebp-0x144]
	subss xmm1, xmm0
	movss [ebp-0x144], xmm1
	cmp dword [ebp-0x11c], 0x7
	jg _Z12PM_SlideMoveP7pmove_tP5pml_ti_80
	mov ebx, [ebp-0x11c]
	test ebx, ebx
	jle _Z12PM_SlideMoveP7pmove_tP5pml_ti_90
	movss xmm3, dword [ebp-0xb0]
	movss xmm5, dword [ebp-0xac]
	movss xmm4, dword [ebp-0xa8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x10c]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x110]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x114]
	addss xmm1, xmm2
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_99900001]
	ja _Z12PM_SlideMoveP7pmove_tP5pml_ti_100
	xor edx, edx
_Z12PM_SlideMoveP7pmove_tP5pml_ti_120:
	add edx, 0x1
	cmp [ebp-0x11c], edx
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_110
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0x114]
	movaps xmm2, xmm4
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_99900001]
	jbe _Z12PM_SlideMoveP7pmove_tP5pml_ti_120
_Z12PM_SlideMoveP7pmove_tP5pml_ti_100:
	mov edx, [ebp-0x14c]
	mov [esp+0x8], edx
	lea eax, [ebp-0xb0]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15PM_ClipVelocityPKfS0_Pf
	movss xmm0, dword [ebp-0xb0]
	mov ecx, [ebp-0x14c]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	movss xmm0, dword [ebp-0xac]
	mov ebx, [ebp-0x13c]
	addss xmm0, [ebx]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0xa8]
	mov eax, [ebp-0x138]
	addss xmm0, [eax]
	movss [ecx+0x8], xmm0
_Z12PM_SlideMoveP7pmove_tP5pml_ti_240:
	add dword [ebp-0x148], 0x1
	cmp dword [ebp-0x148], 0x4
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_130
_Z12PM_SlideMoveP7pmove_tP5pml_ti_70:
	mov edx, [ebp-0x158]
	test edx, edx
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_140
	mov ecx, [ebp-0x140]
	mov eax, [ecx+0x18]
	test eax, eax
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_150
_Z12PM_SlideMoveP7pmove_tP5pml_ti_360:
	xor eax, eax
	cmp dword [ebp-0x148], 0x0
	setnz al
_Z12PM_SlideMoveP7pmove_tP5pml_ti_370:
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PM_SlideMoveP7pmove_tP5pml_ti_90:
	movss xmm3, dword [ebp-0xb0]
_Z12PM_SlideMoveP7pmove_tP5pml_ti_110:
	mov edx, [ebp-0x16c]
	movss [edx], xmm3
	mov eax, [ebp-0xac]
	mov [edx+0x4], eax
	mov eax, [ebp-0xa8]
	mov [edx+0x8], eax
	add dword [ebp-0x11c], 0x1
	add edx, 0xc
	mov [ebp-0x16c], edx
	mov ecx, [ebp-0x11c]
	test ecx, ecx
	jle _Z12PM_SlideMoveP7pmove_tP5pml_ti_160
	xor edi, edi
	lea ecx, [ebp-0x114]
	mov [ebp-0x124], ecx
	mov dword [ebp-0x120], 0x0
	mov eax, ecx
_Z12PM_SlideMoveP7pmove_tP5pml_ti_220:
	mov ebx, [ebp-0x14c]
	movss xmm1, dword [ebx]
	mulss xmm1, [eax]
	mov edx, [ebp-0x13c]
	movss xmm0, dword [edx]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	mov ecx, [ebp-0x138]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	lea edx, [edi*4]
	movss [ebp+edx-0x68], xmm1
	test edi, edi
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_170
	mov eax, [ebp-0x120]
	mov edx, [ebp+edx-0x8c]
	ucomiss xmm1, [ebp+edx*4-0x68]
	ja _Z12PM_SlideMoveP7pmove_tP5pml_ti_180
	mov ecx, edi
	mov esi, eax
	lea eax, [eax-0x4]
	mov ebx, 0x1
	sub ebx, 0x1
	mov [ebp-0x15c], ebx
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_190
_Z12PM_SlideMoveP7pmove_tP5pml_ti_210:
	mov esi, eax
	mov eax, ebx
_Z12PM_SlideMoveP7pmove_tP5pml_ti_190:
	mov [ebp+esi-0x88], edx
	sub ecx, 0x1
	cmp ecx, [ebp-0x15c]
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_200
	mov edx, [ebp+eax-0x8c]
	lea ebx, [eax-0x4]
	ucomiss xmm1, [ebp+edx*4-0x68]
	jbe _Z12PM_SlideMoveP7pmove_tP5pml_ti_210
_Z12PM_SlideMoveP7pmove_tP5pml_ti_180:
	mov [ebp+eax-0x88], edi
	add edi, 0x1
	add dword [ebp-0x124], 0xc
	add dword [ebp-0x120], 0x4
	cmp [ebp-0x11c], edi
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_160
_Z12PM_SlideMoveP7pmove_tP5pml_ti_230:
	mov eax, [ebp-0x124]
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_220
_Z12PM_SlideMoveP7pmove_tP5pml_ti_170:
	mov eax, [ebp-0x120]
	mov [ebp+eax-0x88], edi
	add edi, 0x1
	add dword [ebp-0x124], 0xc
	add dword [ebp-0x120], 0x4
	cmp [ebp-0x11c], edi
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_230
_Z12PM_SlideMoveP7pmove_tP5pml_ti_160:
	mov eax, [ebp-0x88]
	movss xmm0, dword [ebp+eax*4-0x68]
	ucomiss xmm0, [_float_0_10000000]
	jae _Z12PM_SlideMoveP7pmove_tP5pml_ti_240
	xorps xmm0, [_data16_80000000]
	mov edx, [ebp-0x154]
	ucomiss xmm0, [edx+0x64]
	ja _Z12PM_SlideMoveP7pmove_tP5pml_ti_250
_Z12PM_SlideMoveP7pmove_tP5pml_ti_350:
	lea ecx, [ebp-0x3c]
	mov [esp+0x8], ecx
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call _Z15PM_ClipVelocityPKfS0_Pf
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebp-0x88]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z15PM_ClipVelocityPKfS0_Pf
	cmp dword [ebp-0x11c], 0x1
	jle _Z12PM_SlideMoveP7pmove_tP5pml_ti_260
	mov esi, 0x1
	lea edi, [ebp-0x88]
	movss xmm5, dword [ebp-0x3c]
	lea ebx, [ebp-0x80]
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_270
_Z12PM_SlideMoveP7pmove_tP5pml_ti_290:
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp-0x11c], esi
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_280
_Z12PM_SlideMoveP7pmove_tP5pml_ti_270:
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_10000000]
	jae _Z12PM_SlideMoveP7pmove_tP5pml_ti_290
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15PM_ClipVelocityPKfS0_Pf
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	lea edx, [ebp-0x48]
	mov [esp], edx
	call _Z15PM_ClipVelocityPKfS0_Pf
	mov eax, [ebp-0x88]
	lea eax, [eax+eax*2]
	lea edx, [ebp+eax*4-0x114]
	movss xmm7, dword [edx+0x4]
	movss xmm6, dword [edx+0x8]
	movss xmm5, dword [ebp-0x3c]
	movaps xmm0, xmm5
	mulss xmm0, [edx]
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x38]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x34]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae _Z12PM_SlideMoveP7pmove_tP5pml_ti_290
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	movss xmm1, dword [eax+0x8]
	movss xmm3, dword [eax+0x4]
	movaps xmm2, xmm7
	mulss xmm2, xmm1
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	subss xmm2, xmm0
	movss [ebp-0x128], xmm2
	movss xmm2, dword [eax]
	movss xmm0, dword [edx]
	movaps xmm5, xmm6
	mulss xmm5, xmm2
	mulss xmm1, xmm0
	subss xmm5, xmm1
	movaps xmm4, xmm3
	mulss xmm4, xmm0
	mulss xmm7, xmm2
	subss xmm4, xmm7
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm0
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z12PM_SlideMoveP7pmove_tP5pml_ti_300
	movss xmm0, dword [_float_1_00000000]
_Z12PM_SlideMoveP7pmove_tP5pml_ti_380:
	movss xmm2, dword [ebp-0x128]
	mulss xmm2, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	mulss xmm4, xmm0
	movaps xmm0, xmm2
	mov eax, [ebp-0x14c]
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mov edx, [ebp-0x13c]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov ecx, [ebp-0x138]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss [ebp-0x3c], xmm5
	movaps xmm7, xmm3
	mulss xmm7, xmm0
	movss [ebp-0x38], xmm7
	movaps xmm6, xmm4
	mulss xmm6, xmm0
	movss [ebp-0x34], xmm6
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x30]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x2c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	mulss xmm2, xmm0
	movss [ebp-0x48], xmm2
	mulss xmm3, xmm0
	movss [ebp-0x44], xmm3
	mulss xmm4, xmm0
	movss [ebp-0x40], xmm4
	mov ecx, 0x1
	lea edx, [edi+0x4]
_Z12PM_SlideMoveP7pmove_tP5pml_ti_330:
	cmp esi, ecx
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_310
	mov eax, [edx]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_10000000]
	jb _Z12PM_SlideMoveP7pmove_tP5pml_ti_320
_Z12PM_SlideMoveP7pmove_tP5pml_ti_310:
	add ecx, 0x1
	add edx, 0x4
	cmp [ebp-0x11c], ecx
	jnz _Z12PM_SlideMoveP7pmove_tP5pml_ti_330
	movss xmm5, dword [ebp-0x3c]
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_290
_Z12PM_SlideMoveP7pmove_tP5pml_ti_200:
	lea eax, [ecx*4]
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_180
_Z12PM_SlideMoveP7pmove_tP5pml_ti_30:
	mov edx, ecx
	add edx, 0x3c
	mov ecx, [ebp-0x154]
	mov eax, [ecx+0x3c]
	mov [ebp-0x114], eax
	mov eax, [edx+0x4]
	mov [ebp-0x110], eax
	mov eax, [edx+0x8]
	mov [ebp-0x10c], eax
	mov edx, 0x1
	mov dword [ebp-0x11c], 0x2
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_340
_Z12PM_SlideMoveP7pmove_tP5pml_ti_250:
	movss [edx+0x64], xmm0
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_350
_Z12PM_SlideMoveP7pmove_tP5pml_ti_260:
	movss xmm5, dword [ebp-0x3c]
_Z12PM_SlideMoveP7pmove_tP5pml_ti_280:
	mov ebx, [ebp-0x14c]
	movss [ebx], xmm5
	mov eax, [ebp-0x38]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x34]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x28], eax
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_240
_Z12PM_SlideMoveP7pmove_tP5pml_ti_140:
	mov eax, [ebp-0x30]
	mov edx, [ebp-0x14c]
	mov [edx], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x28]
	mov [edx+0x8], eax
	mov ecx, [ebp-0x140]
	mov eax, [ecx+0x18]
	test eax, eax
	jz _Z12PM_SlideMoveP7pmove_tP5pml_ti_360
_Z12PM_SlideMoveP7pmove_tP5pml_ti_150:
	movss xmm0, dword [ebp-0x12c]
	mov ebx, [ebp-0x14c]
	movss [ebx], xmm0
	movss xmm1, dword [ebp-0x130]
	movss [ebx+0x4], xmm1
	movss xmm2, dword [ebp-0x134]
	movss [ebx+0x8], xmm2
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_360
_Z12PM_SlideMoveP7pmove_tP5pml_ti_20:
	mov eax, [ebp-0x14c]
	mov [esp+0x8], eax
	mov eax, ecx
	add eax, 0x3c
	mov [esp+0x4], eax
	mov edx, [ebp-0x14c]
	mov [esp], edx
	call _Z15PM_ClipVelocityPKfS0_Pf
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_10
_Z12PM_SlideMoveP7pmove_tP5pml_ti_40:
	mov eax, [ebp-0x140]
	mov dword [eax+0x30], 0x0
	mov eax, 0x1
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_370
_Z12PM_SlideMoveP7pmove_tP5pml_ti_80:
	mov eax, [ebp-0x14c]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, 0x1
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_370
_Z12PM_SlideMoveP7pmove_tP5pml_ti_320:
	mov edx, [ebp-0x14c]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov eax, 0x1
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_370
_Z12PM_SlideMoveP7pmove_tP5pml_ti_300:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp _Z12PM_SlideMoveP7pmove_tP5pml_ti_380


;PM_StepSlideMove(pmove_t*, pml_t*, int)
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov eax, [esi+0xc]
	test al, 0x8
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_10
	mov edx, [ebp+0xc]
	mov edi, [edx+0x30]
	test edi, edi
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_20
	mov dword [ebp-0xb0], 0x1
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_120:
	lea edi, [esi+0x1c]
	mov eax, [esi+0x1c]
	mov [ebp-0x28], eax
	lea ecx, [esi+0x20]
	mov [ebp-0xa8], ecx
	mov eax, [esi+0x20]
	mov [ebp-0x24], eax
	lea eax, [esi+0x24]
	mov [ebp-0xa4], eax
	mov eax, [esi+0x24]
	mov [ebp-0x20], eax
	lea edx, [esi+0x28]
	mov [ebp-0xb4], edx
	movss xmm0, dword [esi+0x28]
	movss [ebp-0x90], xmm0
	lea eax, [esi+0x2c]
	mov [ebp-0xa0], eax
	movss xmm0, dword [esi+0x2c]
	movss [ebp-0x94], xmm0
	lea eax, [esi+0x30]
	mov [ebp-0x9c], eax
	movss xmm0, dword [esi+0x30]
	movss [ebp-0x98], xmm0
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z12PM_SlideMoveP7pmove_tP5pml_ti
	mov ebx, eax
	test byte [esi+0xc], 0x1
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_30
	mov dword [ebp-0x1c], 0x41200000
	cmp dword [esi+0x70], 0x3ff
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_40
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_220:
	mov dword [ebp-0xac], 0x0
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_340:
	movss xmm1, dword [edi]
	movss [ebp-0x34], xmm1
	mov eax, [ebp-0xa8]
	movss xmm0, dword [eax]
	movss [ebp-0x30], xmm0
	mov edx, [ebp-0xa4]
	mov eax, [edx]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0xb4]
	movss xmm2, dword [ecx]
	movss [ebp-0x84], xmm2
	mov eax, [ebp-0xa0]
	movss xmm2, dword [eax]
	movss [ebp-0x88], xmm2
	mov eax, [ebp-0x9c]
	movss xmm2, dword [eax]
	movss [ebp-0x8c], xmm2
	movss xmm2, dword [ebp-0x28]
	subss xmm1, xmm2
	movss [ebp-0x7c], xmm1
	subss xmm0, [ebp-0x24]
	movss [ebp-0x80], xmm0
	test ebx, ebx
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_50
	mov eax, [ebp+0xc]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_60
	movss xmm0, dword [_float_0_89999998]
	ucomiss xmm0, [eax+0x44]
	ja _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_50
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_60:
	pxor xmm2, xmm2
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_130:
	mov eax, [ebp-0xb0]
	test eax, eax
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_70
	ucomiss xmm2, [_float_0_00000000]
	jp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_70
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_80
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_70:
	mov eax, [edi]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0xa8]
	mov eax, [edx]
	mov [ebp-0x48], eax
	mov ecx, [ebp-0xa4]
	movss xmm0, dword [ecx]
	subss xmm0, xmm2
	movss [ebp-0x44], xmm0
	mov eax, [ebp-0xb0]
	test eax, eax
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_90
	subss xmm0, [_float_9_00000000]
	movss [ebp-0x44], xmm0
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_90:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	mov [esp+0x1c], eax
	mov eax, [esi+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x14], eax
	mov eax, edx
	add eax, 0xd8
	mov [esp+0x10], eax
	sub eax, 0xc
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	mov [esp], edx
	movss [ebp-0xd8], xmm2
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	mov [esp], ebx
	call _Z20Trace_GetEntityHitIdPK7trace_t
	cmp ax, 0x3f
	movss xmm2, dword [ebp-0xd8]
	ja _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_100
	mov eax, [ebp-0x34]
	mov [edi], eax
	mov eax, [ebp-0x30]
	mov [edi+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x8], eax
	movss xmm0, dword [ebp-0x84]
	mov ecx, [ebp-0xb4]
	movss [ecx], xmm0
	movss xmm2, dword [ebp-0x88]
	movss [ecx+0x4], xmm2
	movss xmm0, dword [ebp-0x8c]
	movss [ecx+0x8], xmm0
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_20:
	test ah, 0x40
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_110
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_250:
	mov dword [ebp-0xb0], 0x0
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_120
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_50:
	movss [ebp-0x40], xmm2
	mov eax, [ebp-0x24]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x38], eax
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	mov [esp+0x1c], eax
	mov eax, [esi+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov eax, edx
	add eax, 0xd8
	mov [esp+0x10], eax
	sub eax, 0xc
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov [esp], edx
	movss [ebp-0xc8], xmm1
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	movss xmm1, dword [ebp-0xc8]
	movss xmm2, dword [ebp-0x1c]
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x78]
	subss xmm2, xmm1
	ucomiss xmm1, xmm2
	ja _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_60
	movaps xmm0, xmm2
	addss xmm0, [ebp-0x20]
	mov edx, [ebp-0x3c]
	mov eax, [ebp-0x40]
	mov [edi], eax
	mov [edi+0x4], edx
	movss [edi+0x8], xmm0
	movss xmm0, dword [ebp-0x90]
	mov ecx, [ebp-0xb4]
	movss [ecx], xmm0
	movss xmm0, dword [ebp-0x94]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x98]
	movss [ecx+0x8], xmm0
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	movss [ebp-0xd8], xmm2
	call _Z12PM_SlideMoveP7pmove_tP5pml_ti
	movss xmm2, dword [ebp-0xd8]
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_130
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_260:
	jp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_140
	cmp byte [ebp-0x4e], 0x0
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_150
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_370:
	movss xmm1, dword [edi]
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [edi], xmm1
	mov eax, [ebp-0xa8]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [edi+0x4], xmm1
	mov edx, [ebp-0xa4]
	movss xmm1, dword [edx]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [edi+0x8], xmm1
	mov ecx, [ebp-0xb4]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z18PM_ProjectVelocityPKfS0_Pf
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_80:
	movss xmm1, dword [edi]
	subss xmm1, [ebp-0x28]
	mulss xmm1, [ebp-0x90]
	mov eax, [ebp-0xa8]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0x24]
	mulss xmm0, [ebp-0x94]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, [ebp-0x7c]
	movss xmm2, dword [ebp-0x94]
	mulss xmm2, [ebp-0x80]
	addss xmm0, xmm2
	movss [ebp-0x7c], xmm0
	addss xmm0, [_float_0_00100000]
	ucomiss xmm0, xmm1
	jae _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_160
	mov eax, [ebp-0xac]
	test eax, eax
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_170
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_300:
	mov eax, [ebp-0xb0]
	test eax, eax
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	cmp dword [esi+0x4], 0x6
	jg _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	mov ecx, [ebp+0x8]
	mov ebx, [ecx]
	test byte [ebx+0xc], 0x1
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_190
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_350:
	movss xmm1, dword [esi+0x24]
	subss xmm1, [ebp-0x2c]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_50000000]
	jbe _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xc8], xmm1
	call floorf
	fstp dword [ebp-0xb8]
	cvttss2si edx, [ebp-0xb8]
	test edx, edx
	movss xmm1, dword [ebp-0xc8]
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x104]
	cmp eax, [esi]
	jl _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_200
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_380:
	movss xmm0, dword [esi+0x24]
	subss xmm0, [ebp-0x20]
	andps xmm0, [_data16_7fffffff]
	divss xmm0, dword [ebp-0x1c]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	mulss xmm1, [_float_0_80000001]
	addss xmm1, [_float_0_19999999]
	movaps xmm2, xmm1
	mov eax, [ebp-0xb4]
	mulss xmm2, [eax]
	movss [eax], xmm2
	movaps xmm0, xmm1
	mov ecx, [ebp-0xa0]
	mulss xmm0, [ecx]
	movss [eax+0x4], xmm0
	mov eax, [ebp-0x9c]
	mulss xmm1, [eax]
	mov ecx, [ebp-0xb4]
	movss [ecx+0x8], xmm1
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	mov ecx, [ebp+0x8]
	movss [ecx+0xe4], xmm2
	mov ebx, edx
	mov eax, edx
	neg eax
	cmp edx, 0xffffffff
	cmovle ebx, eax
	cmp ebx, 0x3
	jle _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	cmp dword [esi+0x70], 0x3ff
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	mov [esp], ecx
	call _Z22PM_ShouldMakeFootstepsP7pmove_t
	test eax, eax
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	mov eax, ebx
	sar eax, 1
	cmp eax, 0x4
	jle _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_210
	movss xmm1, dword [_float_4_00000000]
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_390:
	mov edx, [esi+0x8]
	mulss xmm1, [_float_1_25000000]
	addss xmm1, [_float_7_00000000]
	cvtsi2ss xmm0, edx
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	and eax, 0xff
	mov [esi+0x8], eax
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z16PM_FootstepEventP7pmove_tP5pml_tiii
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_30:
	mov dword [ebp-0x1c], 0x41900000
	cmp dword [esi+0x70], 0x3ff
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_220
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_40:
	mov eax, [esi+0xc]
	test ah, 0x40
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_230
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_310:
	test ebx, ebx
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_240
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_320:
	test al, 0x8
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	movss xmm0, dword [esi+0x30]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_220
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_110:
	mov ebx, [esi+0x18]
	test ebx, ebx
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_250
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_10:
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov dword [ebp-0xb0], 0x0
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_120
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_100:
	movss xmm3, dword [ebp-0x78]
	ucomiss xmm3, [_float_1_00000000]
	jb _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_260
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_140:
	ucomiss xmm2, [_float_0_00000000]
	jp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_270
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_80
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_270:
	movss xmm0, dword [esi+0x24]
	subss xmm0, xmm2
	movss [esi+0x24], xmm0
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_80
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_170:
	mov [esp], esi
	call _Z21Jump_IsPlayerAboveMaxP13playerState_s
	test al, al
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_280
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_160:
	mov eax, [ebp-0x34]
	mov [edi], eax
	mov eax, [ebp-0x30]
	mov [edi+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x8], eax
	movss xmm0, dword [ebp-0x84]
	mov eax, [ebp-0xb4]
	movss [eax], xmm0
	movss xmm2, dword [ebp-0x88]
	movss [eax+0x4], xmm2
	movss xmm0, dword [ebp-0x8c]
	movss [eax+0x8], xmm0
	mov eax, [ebp-0xb0]
	test eax, eax
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_290
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_360:
	mov eax, [ebp-0xac]
	test eax, eax
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_300
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_280:
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18Jump_ClampVelocityP13playerState_sPKf
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_300
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_230:
	mov ecx, [esi+0x18]
	test ecx, ecx
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_310
	mov [esp], esi
	call _Z15Jump_ClearStateP13playerState_s
	mov eax, [esi+0xc]
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_310
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_240:
	test ah, 0x40
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_320
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z18Jump_GetStepHeightP13playerState_sPKfPf
	test al, al
	jz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_330
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x1c]
	ja _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
	mov dword [ebp-0xac], 0x1
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_340
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_190:
	lea edi, [ebx+0x1c]
	mov dword [esp+0x30], 0x42480000
	mov dword [esp+0x2c], 0x0
	movzx eax, byte [ecx+0x10c]
	mov [esp+0x28], eax
	mov dword [esp+0x24], 0x1
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x1
	lea eax, [ebx+0x5d0]
	mov [esp+0x18], eax
	lea eax, [ebx+0x5cc]
	mov [esp+0x14], eax
	mov eax, [ebx+0x58c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x41f00000
	mov eax, playerMaxs
	mov eax, [eax]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx+0xdc]
	mov [esp], eax
	call _Z13BG_CheckProneiPKffffPfS1_hhhh16proneCheckType_tf
	test al, al
	jnz _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_350
	mov eax, [ebp-0x28]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x24]
	mov [edi+0x4], eax
	mov eax, [ebp-0x20]
	mov [edi+0x8], eax
	lea eax, [ebx+0x28]
	movss xmm0, dword [ebp-0x90]
	movss [ebx+0x28], xmm0
	movss xmm2, dword [ebp-0x94]
	movss [eax+0x4], xmm2
	movss xmm0, dword [ebp-0x98]
	movss [eax+0x8], xmm0
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_290:
	mov eax, [edi]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0xa8]
	mov eax, [edx]
	mov [ebp-0x48], eax
	mov ecx, [ebp-0xa4]
	movss xmm0, dword [ecx]
	subss xmm0, [_float_9_00000000]
	movss [ebp-0x44], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	mov [esp+0x1c], eax
	mov eax, [esi+0xdc]
	mov [esp+0x18], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x14], eax
	mov eax, edx
	add eax, 0xd8
	mov [esp+0x10], eax
	sub eax, 0xc
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z14PM_playerTraceP7pmove_tP7trace_tPKfS4_S4_S4_ii
	movss xmm4, dword [ebp-0x78]
	ucomiss xmm4, [_float_1_00000000]
	jae _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_360
	jp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_360
	movss xmm2, dword [edi]
	mov ecx, [ebp-0xa8]
	movss xmm3, dword [ecx]
	movss xmm0, dword [ebp-0x48]
	subss xmm0, xmm3
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mov eax, [ebp-0xa4]
	movss xmm1, dword [eax]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, xmm2
	mulss xmm4, xmm0
	addss xmm2, xmm4
	movss [edi], xmm2
	movss [edi+0x4], xmm3
	movss [edi+0x8], xmm1
	mov edx, [ebp-0xb4]
	mov [esp+0x8], edx
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15PM_ClipVelocityPKfS0_Pf
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_360
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_150:
	movss xmm0, dword [_float_0_30000001]
	ucomiss xmm0, [ebp-0x6c]
	jbe _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_370
	mov eax, [ebp-0x34]
	mov [edi], eax
	mov eax, [ebp-0x30]
	mov [edi+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edi+0x8], eax
	movss xmm0, dword [ebp-0x84]
	mov eax, [ebp-0xb4]
	movss [eax], xmm0
	movss xmm2, dword [ebp-0x88]
	movss [eax+0x4], xmm2
	movss xmm0, dword [ebp-0x8c]
	movss [eax+0x8], xmm0
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_180
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_200:
	addss xmm1, [ecx+0x108]
	movss [ecx+0x108], xmm1
	mov eax, [esi]
	mov [ecx+0x104], eax
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_380
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_330:
	mov eax, [esi+0xc]
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_320
_Z16PM_StepSlideMoveP7pmove_tP5pml_ti_210:
	cvtsi2ss xmm1, eax
	jmp _Z16PM_StepSlideMoveP7pmove_tP5pml_ti_390


;Initialized global or static variables of bg_slidemove:
SECTION .data


;Initialized constant data of bg_slidemove:
SECTION .rdata


;Zero initialized global or static variables of bg_slidemove:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_99900001:		dd 0x3f7fbe77	; 0.999
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_9_00000000:		dd 0x41100000	; 9
_float_0_00100000:		dd 0x3a83126f	; 0.001
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_0_19999999:		dd 0x3e4ccccc	; 0.2
_float_4_00000000:		dd 0x40800000	; 4
_float_1_25000000:		dd 0x3fa00000	; 1.25
_float_7_00000000:		dd 0x40e00000	; 7
_float_0_30000001:		dd 0x3e99999a	; 0.3

