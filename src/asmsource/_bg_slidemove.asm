;Imports of bg_slidemove:
	extern Vec3NormalizeTo
	extern PM_playerTrace
	extern Trace_GetEntityHitId
	extern PM_AddTouchEnt
	extern PM_ClipVelocity
	extern PM_ProjectVelocity
	extern floorf
	extern PM_ShouldMakeFootsteps
	extern PM_FootstepEvent
	extern Jump_ClearState
	extern Jump_IsPlayerAboveMax
	extern Jump_ClampVelocity
	extern Jump_GetStepHeight
	extern playerMaxs
	extern BG_CheckProne

;Exports of bg_slidemove:
	global PM_SlideMove
	global PM_StepSlideMove


SECTION .text


;PM_SlideMove(pmove_t*, pml_t*, int)
PM_SlideMove:
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
	jz PM_SlideMove_10
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
	jnz PM_SlideMove_20
PM_SlideMove_10:
	mov ecx, [ebp-0x154]
	movss xmm0, dword [ecx+0x24]
	movss [ebp-0x144], xmm0
	mov esi, [ecx+0x30]
	test esi, esi
	jnz PM_SlideMove_30
	xor edx, edx
	mov dword [ebp-0x11c], 0x1
PM_SlideMove_340:
	lea eax, [edx+edx]
	add eax, edx
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call Vec3NormalizeTo
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
PM_SlideMove_130:
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
	call PM_playerTrace
	cmp byte [ebp-0x8c], 0x0
	jnz PM_SlideMove_40
	movss xmm2, dword [ebp-0xb4]
	ucomiss xmm2, [_float_0_00000000]
	jbe PM_SlideMove_50
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
PM_SlideMove_50:
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0xb4]
	jp PM_SlideMove_60
	jz PM_SlideMove_70
PM_SlideMove_60:
	lea ebx, [ebp-0xb4]
	mov [esp], ebx
	call Trace_GetEntityHitId
	movzx eax, ax
	mov [esp+0x4], eax
	mov eax, [ebp-0x150]
	mov [esp], eax
	call PM_AddTouchEnt
	movss xmm0, dword [ebp-0x144]
	mulss xmm0, [ebp-0xb4]
	movss xmm1, dword [ebp-0x144]
	subss xmm1, xmm0
	movss [ebp-0x144], xmm1
	cmp dword [ebp-0x11c], 0x7
	jg PM_SlideMove_80
	mov ebx, [ebp-0x11c]
	test ebx, ebx
	jle PM_SlideMove_90
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
	ja PM_SlideMove_100
	xor edx, edx
PM_SlideMove_120:
	add edx, 0x1
	cmp [ebp-0x11c], edx
	jz PM_SlideMove_110
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
	jbe PM_SlideMove_120
PM_SlideMove_100:
	mov edx, [ebp-0x14c]
	mov [esp+0x8], edx
	lea eax, [ebp-0xb0]
	mov [esp+0x4], eax
	mov [esp], edx
	call PM_ClipVelocity
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
PM_SlideMove_240:
	add dword [ebp-0x148], 0x1
	cmp dword [ebp-0x148], 0x4
	jnz PM_SlideMove_130
PM_SlideMove_70:
	mov edx, [ebp-0x158]
	test edx, edx
	jnz PM_SlideMove_140
	mov ecx, [ebp-0x140]
	mov eax, [ecx+0x18]
	test eax, eax
	jnz PM_SlideMove_150
PM_SlideMove_360:
	xor eax, eax
	cmp dword [ebp-0x148], 0x0
	setnz al
PM_SlideMove_370:
	add esp, 0x18c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_SlideMove_90:
	movss xmm3, dword [ebp-0xb0]
PM_SlideMove_110:
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
	jle PM_SlideMove_160
	xor edi, edi
	lea ecx, [ebp-0x114]
	mov [ebp-0x124], ecx
	mov dword [ebp-0x120], 0x0
	mov eax, ecx
PM_SlideMove_220:
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
	jz PM_SlideMove_170
	mov eax, [ebp-0x120]
	mov edx, [ebp+edx-0x8c]
	ucomiss xmm1, [ebp+edx*4-0x68]
	ja PM_SlideMove_180
	mov ecx, edi
	mov esi, eax
	lea eax, [eax-0x4]
	mov ebx, 0x1
	sub ebx, 0x1
	mov [ebp-0x15c], ebx
	jmp PM_SlideMove_190
PM_SlideMove_210:
	mov esi, eax
	mov eax, ebx
PM_SlideMove_190:
	mov [ebp+esi-0x88], edx
	sub ecx, 0x1
	cmp ecx, [ebp-0x15c]
	jz PM_SlideMove_200
	mov edx, [ebp+eax-0x8c]
	lea ebx, [eax-0x4]
	ucomiss xmm1, [ebp+edx*4-0x68]
	jbe PM_SlideMove_210
PM_SlideMove_180:
	mov [ebp+eax-0x88], edi
	add edi, 0x1
	add dword [ebp-0x124], 0xc
	add dword [ebp-0x120], 0x4
	cmp [ebp-0x11c], edi
	jz PM_SlideMove_160
PM_SlideMove_230:
	mov eax, [ebp-0x124]
	jmp PM_SlideMove_220
PM_SlideMove_170:
	mov eax, [ebp-0x120]
	mov [ebp+eax-0x88], edi
	add edi, 0x1
	add dword [ebp-0x124], 0xc
	add dword [ebp-0x120], 0x4
	cmp [ebp-0x11c], edi
	jnz PM_SlideMove_230
PM_SlideMove_160:
	mov eax, [ebp-0x88]
	movss xmm0, dword [ebp+eax*4-0x68]
	ucomiss xmm0, [_float_0_10000000]
	jae PM_SlideMove_240
	xorps xmm0, [_data16_80000000]
	mov edx, [ebp-0x154]
	ucomiss xmm0, [edx+0x64]
	ja PM_SlideMove_250
PM_SlideMove_350:
	lea ecx, [ebp-0x3c]
	mov [esp+0x8], ecx
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x14c]
	mov [esp], ebx
	call PM_ClipVelocity
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebp-0x88]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call PM_ClipVelocity
	cmp dword [ebp-0x11c], 0x1
	jle PM_SlideMove_260
	mov esi, 0x1
	lea edi, [ebp-0x88]
	movss xmm5, dword [ebp-0x3c]
	lea ebx, [ebp-0x80]
	jmp PM_SlideMove_270
PM_SlideMove_290:
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp-0x11c], esi
	jz PM_SlideMove_280
PM_SlideMove_270:
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
	jae PM_SlideMove_290
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], edx
	call PM_ClipVelocity
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebx-0x4]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*4-0x114]
	mov [esp+0x4], eax
	lea edx, [ebp-0x48]
	mov [esp], edx
	call PM_ClipVelocity
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
	jae PM_SlideMove_290
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
	jb PM_SlideMove_300
	movss xmm0, dword [_float_1_00000000]
PM_SlideMove_380:
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
PM_SlideMove_330:
	cmp esi, ecx
	jz PM_SlideMove_310
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
	jb PM_SlideMove_320
PM_SlideMove_310:
	add ecx, 0x1
	add edx, 0x4
	cmp [ebp-0x11c], ecx
	jnz PM_SlideMove_330
	movss xmm5, dword [ebp-0x3c]
	jmp PM_SlideMove_290
PM_SlideMove_200:
	lea eax, [ecx*4]
	jmp PM_SlideMove_180
PM_SlideMove_30:
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
	jmp PM_SlideMove_340
PM_SlideMove_250:
	movss [edx+0x64], xmm0
	jmp PM_SlideMove_350
PM_SlideMove_260:
	movss xmm5, dword [ebp-0x3c]
PM_SlideMove_280:
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
	jmp PM_SlideMove_240
PM_SlideMove_140:
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
	jz PM_SlideMove_360
PM_SlideMove_150:
	movss xmm0, dword [ebp-0x12c]
	mov ebx, [ebp-0x14c]
	movss [ebx], xmm0
	movss xmm1, dword [ebp-0x130]
	movss [ebx+0x4], xmm1
	movss xmm2, dword [ebp-0x134]
	movss [ebx+0x8], xmm2
	jmp PM_SlideMove_360
PM_SlideMove_20:
	mov eax, [ebp-0x14c]
	mov [esp+0x8], eax
	mov eax, ecx
	add eax, 0x3c
	mov [esp+0x4], eax
	mov edx, [ebp-0x14c]
	mov [esp], edx
	call PM_ClipVelocity
	jmp PM_SlideMove_10
PM_SlideMove_40:
	mov eax, [ebp-0x140]
	mov dword [eax+0x30], 0x0
	mov eax, 0x1
	jmp PM_SlideMove_370
PM_SlideMove_80:
	mov eax, [ebp-0x14c]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov eax, 0x1
	jmp PM_SlideMove_370
PM_SlideMove_320:
	mov edx, [ebp-0x14c]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov eax, 0x1
	jmp PM_SlideMove_370
PM_SlideMove_300:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	jmp PM_SlideMove_380


;PM_StepSlideMove(pmove_t*, pml_t*, int)
PM_StepSlideMove:
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
	jnz PM_StepSlideMove_10
	mov edx, [ebp+0xc]
	mov edi, [edx+0x30]
	test edi, edi
	jz PM_StepSlideMove_20
	mov dword [ebp-0xb0], 0x1
PM_StepSlideMove_120:
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
	call PM_SlideMove
	mov ebx, eax
	test byte [esi+0xc], 0x1
	jz PM_StepSlideMove_30
	mov dword [ebp-0x1c], 0x41200000
	cmp dword [esi+0x70], 0x3ff
	jz PM_StepSlideMove_40
PM_StepSlideMove_220:
	mov dword [ebp-0xac], 0x0
PM_StepSlideMove_340:
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
	jnz PM_StepSlideMove_50
	mov eax, [ebp+0xc]
	mov edx, [eax+0x30]
	test edx, edx
	jz PM_StepSlideMove_60
	movss xmm0, dword [_float_0_89999998]
	ucomiss xmm0, [eax+0x44]
	ja PM_StepSlideMove_50
PM_StepSlideMove_60:
	pxor xmm2, xmm2
PM_StepSlideMove_130:
	mov eax, [ebp-0xb0]
	test eax, eax
	jnz PM_StepSlideMove_70
	ucomiss xmm2, [_float_0_00000000]
	jp PM_StepSlideMove_70
	jz PM_StepSlideMove_80
PM_StepSlideMove_70:
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
	jz PM_StepSlideMove_90
	subss xmm0, [_float_9_00000000]
	movss [ebp-0x44], xmm0
PM_StepSlideMove_90:
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
	call PM_playerTrace
	mov [esp], ebx
	call Trace_GetEntityHitId
	cmp ax, 0x3f
	movss xmm2, dword [ebp-0xd8]
	ja PM_StepSlideMove_100
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
PM_StepSlideMove_180:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PM_StepSlideMove_20:
	test ah, 0x40
	jnz PM_StepSlideMove_110
PM_StepSlideMove_250:
	mov dword [ebp-0xb0], 0x0
	jmp PM_StepSlideMove_120
PM_StepSlideMove_50:
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
	call PM_playerTrace
	movss xmm1, dword [ebp-0xc8]
	movss xmm2, dword [ebp-0x1c]
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x78]
	subss xmm2, xmm1
	ucomiss xmm1, xmm2
	ja PM_StepSlideMove_60
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
	call PM_SlideMove
	movss xmm2, dword [ebp-0xd8]
	jmp PM_StepSlideMove_130
PM_StepSlideMove_260:
	jp PM_StepSlideMove_140
	cmp byte [ebp-0x4e], 0x0
	jz PM_StepSlideMove_150
PM_StepSlideMove_370:
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
	call PM_ProjectVelocity
PM_StepSlideMove_80:
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
	jae PM_StepSlideMove_160
	mov eax, [ebp-0xac]
	test eax, eax
	jnz PM_StepSlideMove_170
PM_StepSlideMove_300:
	mov eax, [ebp-0xb0]
	test eax, eax
	jz PM_StepSlideMove_180
	cmp dword [esi+0x4], 0x6
	jg PM_StepSlideMove_180
	mov ecx, [ebp+0x8]
	mov ebx, [ecx]
	test byte [ebx+0xc], 0x1
	jnz PM_StepSlideMove_190
PM_StepSlideMove_350:
	movss xmm1, dword [esi+0x24]
	subss xmm1, [ebp-0x2c]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_50000000]
	jbe PM_StepSlideMove_180
	movaps xmm0, xmm1
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0xc8], xmm1
	call floorf
	fstp dword [ebp-0xb8]
	cvttss2si edx, [ebp-0xb8]
	test edx, edx
	movss xmm1, dword [ebp-0xc8]
	jz PM_StepSlideMove_180
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x104]
	cmp eax, [esi]
	jl PM_StepSlideMove_200
PM_StepSlideMove_380:
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
	jle PM_StepSlideMove_180
	cmp dword [esi+0x70], 0x3ff
	jz PM_StepSlideMove_180
	mov [esp], ecx
	call PM_ShouldMakeFootsteps
	test eax, eax
	jz PM_StepSlideMove_180
	mov eax, ebx
	sar eax, 1
	cmp eax, 0x4
	jle PM_StepSlideMove_210
	movss xmm1, dword [_float_4_00000000]
PM_StepSlideMove_390:
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
	call PM_FootstepEvent
	jmp PM_StepSlideMove_180
PM_StepSlideMove_30:
	mov dword [ebp-0x1c], 0x41900000
	cmp dword [esi+0x70], 0x3ff
	jnz PM_StepSlideMove_220
PM_StepSlideMove_40:
	mov eax, [esi+0xc]
	test ah, 0x40
	jnz PM_StepSlideMove_230
PM_StepSlideMove_310:
	test ebx, ebx
	jnz PM_StepSlideMove_240
PM_StepSlideMove_320:
	test al, 0x8
	jz PM_StepSlideMove_180
	movss xmm0, dword [esi+0x30]
	ucomiss xmm0, [_float_0_00000000]
	ja PM_StepSlideMove_220
	jmp PM_StepSlideMove_180
PM_StepSlideMove_110:
	mov ebx, [esi+0x18]
	test ebx, ebx
	jz PM_StepSlideMove_250
PM_StepSlideMove_10:
	mov [esp], esi
	call Jump_ClearState
	mov dword [ebp-0xb0], 0x0
	jmp PM_StepSlideMove_120
PM_StepSlideMove_100:
	movss xmm3, dword [ebp-0x78]
	ucomiss xmm3, [_float_1_00000000]
	jb PM_StepSlideMove_260
PM_StepSlideMove_140:
	ucomiss xmm2, [_float_0_00000000]
	jp PM_StepSlideMove_270
	jz PM_StepSlideMove_80
PM_StepSlideMove_270:
	movss xmm0, dword [esi+0x24]
	subss xmm0, xmm2
	movss [esi+0x24], xmm0
	jmp PM_StepSlideMove_80
PM_StepSlideMove_170:
	mov [esp], esi
	call Jump_IsPlayerAboveMax
	test al, al
	jz PM_StepSlideMove_280
PM_StepSlideMove_160:
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
	jnz PM_StepSlideMove_290
PM_StepSlideMove_360:
	mov eax, [ebp-0xac]
	test eax, eax
	jz PM_StepSlideMove_300
PM_StepSlideMove_280:
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov [esp], esi
	call Jump_ClampVelocity
	jmp PM_StepSlideMove_300
PM_StepSlideMove_230:
	mov ecx, [esi+0x18]
	test ecx, ecx
	jz PM_StepSlideMove_310
	mov [esp], esi
	call Jump_ClearState
	mov eax, [esi+0xc]
	jmp PM_StepSlideMove_310
PM_StepSlideMove_240:
	test ah, 0x40
	jz PM_StepSlideMove_320
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call Jump_GetStepHeight
	test al, al
	jz PM_StepSlideMove_330
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, [ebp-0x1c]
	ja PM_StepSlideMove_180
	mov dword [ebp-0xac], 0x1
	jmp PM_StepSlideMove_340
PM_StepSlideMove_190:
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
	call BG_CheckProne
	test al, al
	jnz PM_StepSlideMove_350
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
	jmp PM_StepSlideMove_180
PM_StepSlideMove_290:
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
	call PM_playerTrace
	movss xmm4, dword [ebp-0x78]
	ucomiss xmm4, [_float_1_00000000]
	jae PM_StepSlideMove_360
	jp PM_StepSlideMove_360
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
	call PM_ClipVelocity
	jmp PM_StepSlideMove_360
PM_StepSlideMove_150:
	movss xmm0, dword [_float_0_30000001]
	ucomiss xmm0, [ebp-0x6c]
	jbe PM_StepSlideMove_370
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
	jmp PM_StepSlideMove_180
PM_StepSlideMove_200:
	addss xmm1, [ecx+0x108]
	movss [ecx+0x108], xmm1
	mov eax, [esi]
	mov [ecx+0x104], eax
	jmp PM_StepSlideMove_380
PM_StepSlideMove_330:
	mov eax, [esi+0xc]
	jmp PM_StepSlideMove_320
PM_StepSlideMove_210:
	cvtsi2ss xmm1, eax
	jmp PM_StepSlideMove_390


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
_float_0_89999998:		dd 0x3f666666	; 0.9
_float_9_00000000:		dd 0x41100000	; 9
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_0_19999999:		dd 0x3e4ccccc	; 0.2
_float_4_00000000:		dd 0x40800000	; 4
_float_1_25000000:		dd 0x3fa00000	; 1.25
_float_7_00000000:		dd 0x40e00000	; 7
_float_0_30000001:		dd 0x3e99999a	; 0.3

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
