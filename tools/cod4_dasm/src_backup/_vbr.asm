;Imports of vbr:
	extern logf
	extern pow
	extern log

;Exports of vbr:
	global _Z11vbr_destroyP8VBRState
	global _Z12vbr_analysisP8VBRStatePfiif
	global _Z8vbr_initP8VBRState
	global vbr_nb_thresh
	global vbr_hb_thresh
	global vbr_uhb_thresh


SECTION .text


;vbr_destroy(VBRState*)
_Z11vbr_destroyP8VBRState:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	add [eax], al


;vbr_analysis(VBRState*, float*, int, int, float)
_Z12vbr_analysisP8VBRStatePfiif:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xc0
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov ecx, esi
	sar ecx, 1
	test ecx, ecx
	jg _Z12vbr_analysisP8VBRStatePfiif_10
	mov dword [ebp-0x24], 0x0
_Z12vbr_analysisP8VBRStatePfiif_370:
	cmp ecx, esi
	jl _Z12vbr_analysisP8VBRStatePfiif_20
	mov dword [ebp-0x20], 0x0
	movss xmm0, dword [ebp-0x20]
_Z12vbr_analysisP8VBRStatePfiif_350:
	addss xmm0, [ebp-0x24]
	movss [ebp-0x28], xmm0
	addss xmm0, [_float_6000_00000000]
	movss [esp], xmm0
	call logf
	fstp dword [ebp-0x1c]
	mov eax, ebx
	pxor xmm1, xmm1
	xor edx, edx
_Z12vbr_analysisP8VBRStatePfiif_30:
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [eax+0xc]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz _Z12vbr_analysisP8VBRStatePfiif_30
	movaps xmm4, xmm1
	divss xmm4, dword [_float_150_00000000]
	movss xmm1, dword [_float_1_00000000]
	minss xmm1, xmm4
	movaps xmm4, xmm1
	cvtss2sd xmm2, [ebp+0x18]
	movsd [ebp-0x40], xmm2
	subsd xmm2, [_double_0_40000000]
	movsd [ebp-0x38], xmm2
	movapd xmm0, xmm2
	mulsd xmm0, [_double_3_00000000]
	movapd xmm1, xmm2
	andpd xmm1, [vbr_nb_thresh+0x190]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x18], xmm0
	movss xmm1, dword [ebx]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebx+0x34]
	divss xmm0, dword [ebx+0x38]
	movss [ebx+0x30], xmm0
	cvtss2sd xmm0, [ebp-0x28]
	movsd [ebp-0x30], xmm0
	mov dword [esp+0x8], 0x33333333
	mov dword [esp+0xc], 0x3fd33333
	movsd [esp], xmm0
	movss [ebp-0xa8], xmm4
	call pow
	fstp qword [ebp-0x48]
	cvtsd2ss xmm6, [ebp-0x48]
	cvtss2sd xmm5, [ebx+0x38]
	movss xmm4, dword [ebp-0xa8]
	ucomisd xmm5, [_double_0_06000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_40
	jp _Z12vbr_analysisP8VBRStatePfiif_40
	movss xmm1, dword [ebp-0x28]
	ucomiss xmm1, [_float_6000_00000000]
	ja _Z12vbr_analysisP8VBRStatePfiif_50
_Z12vbr_analysisP8VBRStatePfiif_40:
	cvtss2sd xmm3, [ebp-0x18]
	movsd xmm2, qword [_double_0_30000000]
	ucomisd xmm2, xmm3
	jbe _Z12vbr_analysisP8VBRStatePfiif_60
	cvtss2sd xmm2, xmm4
	ucomisd xmm2, [_double_0_20000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_70
	jp _Z12vbr_analysisP8VBRStatePfiif_70
	cvtss2sd xmm1, xmm6
	cvtss2sd xmm0, [ebx+0x30]
	mulsd xmm0, [_double_1_20000000]
	ucomisd xmm0, xmm1
	jbe _Z12vbr_analysisP8VBRStatePfiif_70
_Z12vbr_analysisP8VBRStatePfiif_230:
	mov esi, [ebx+0x3c]
	add esi, 0x1
	mov [ebx+0x3c], esi
	movss xmm4, dword [ebx+0x30]
	movaps xmm0, xmm4
	mulss xmm0, [_float_3_00000000]
	minss xmm0, xmm6
	cmp esi, 0x3
	jle _Z12vbr_analysisP8VBRStatePfiif_80
	cvtss2sd xmm1, [ebx+0x34]
	movsd xmm3, qword [_double_0_95000000]
	mulsd xmm1, xmm3
	cvtss2sd xmm0, xmm0
	movsd xmm2, qword [_double_0_05000000]
	mulsd xmm0, xmm2
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ebx+0x34], xmm1
	mulsd xmm5, xmm3
	addsd xmm5, xmm2
	cvtsd2ss xmm5, xmm5
	movss [ebx+0x38], xmm5
	ucomiss xmm4, xmm6
	ja _Z12vbr_analysisP8VBRStatePfiif_90
_Z12vbr_analysisP8VBRStatePfiif_260:
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_30000_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_100
_Z12vbr_analysisP8VBRStatePfiif_280:
	jp _Z12vbr_analysisP8VBRStatePfiif_100
	ucomiss xmm0, [_float_10000_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_110
	jp _Z12vbr_analysisP8VBRStatePfiif_110
	movsd xmm2, qword [_double_5_60000038]
	movss xmm1, dword [ebp-0x28]
	ucomiss xmm1, [_float_3000_00000000]
	jb _Z12vbr_analysisP8VBRStatePfiif_120
_Z12vbr_analysisP8VBRStatePfiif_390:
	movsd xmm3, qword [_double_0_60000000]
_Z12vbr_analysisP8VBRStatePfiif_330:
	movss xmm1, dword [ebp-0x28]
	movss [ebx+0x8], xmm1
	cvtss2sd xmm0, [ebx+0x28]
	mulsd xmm0, xmm3
	movsd xmm1, qword [_double_0_40000000]
	mulsd xmm1, [ebp-0x40]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebx+0x28], xmm0
	cvtss2sd xmm0, xmm0
	subsd xmm0, [_double_0_40000000]
	addsd xmm0, [ebp-0x38]
	movsd [ebp-0x38], xmm0
	mulsd xmm0, [_double_2_20000000]
	addsd xmm2, xmm0
	cvtsd2ss xmm3, xmm2
	movss xmm1, dword [ebx+0x2c]
	ucomiss xmm1, xmm3
	jbe _Z12vbr_analysisP8VBRStatePfiif_130
	cvtss2sd xmm0, xmm3
	movsd xmm2, qword [_double_0_50000000]
	mulsd xmm0, xmm2
	cvtss2sd xmm1, xmm1
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm3, xmm0
_Z12vbr_analysisP8VBRStatePfiif_130:
	ucomiss xmm3, [_float_4_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_140
	jp _Z12vbr_analysisP8VBRStatePfiif_140
	movss xmm3, dword [_float_4_00000000]
	cmp esi, 0x2
	jg _Z12vbr_analysisP8VBRStatePfiif_150
_Z12vbr_analysisP8VBRStatePfiif_410:
	test esi, esi
	jz _Z12vbr_analysisP8VBRStatePfiif_160
	cvtss2sd xmm3, xmm3
	movsd [ebp-0x10], xmm3
_Z12vbr_analysisP8VBRStatePfiif_420:
	cvtsi2sd xmm0, esi
	addsd xmm0, [_double_3_00000000]
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0x50]
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40080000
	call log
	fstp qword [ebp-0x58]
	movsd xmm0, qword [ebp-0x50]
	subsd xmm0, [ebp-0x58]
	movsd xmm1, qword [ebp-0x10]
	subsd xmm1, xmm0
	cvtsd2ss xmm3, xmm1
_Z12vbr_analysisP8VBRStatePfiif_160:
	pxor xmm2, xmm2
	maxss xmm2, xmm3
	movaps xmm3, xmm2
	movss xmm0, dword [ebp-0x28]
	ucomiss xmm0, [_float_60000_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_170
	jp _Z12vbr_analysisP8VBRStatePfiif_170
	cmp esi, 0x2
	jg _Z12vbr_analysisP8VBRStatePfiif_180
_Z12vbr_analysisP8VBRStatePfiif_460:
	movss xmm1, dword [ebp-0x28]
	ucomiss xmm1, [_float_10000_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_190
	jp _Z12vbr_analysisP8VBRStatePfiif_190
	cmp esi, 0x2
	jg _Z12vbr_analysisP8VBRStatePfiif_200
_Z12vbr_analysisP8VBRStatePfiif_190:
	pxor xmm2, xmm2
	pxor xmm1, xmm1
	ucomiss xmm2, xmm3
	ja _Z12vbr_analysisP8VBRStatePfiif_210
	cvtss2sd xmm1, xmm3
_Z12vbr_analysisP8VBRStatePfiif_210:
	movsd xmm0, qword [ebp-0x30]
	divsd xmm0, qword [_double_60000_00000000]
	movsd [esp], xmm0
	movsd [ebp-0x98], xmm1
	call log
	fstp qword [ebp-0xb8]
	movsd xmm0, qword [ebp-0xb8]
	mulsd xmm0, [_double_0_30000000]
	movsd xmm1, qword [ebp-0x98]
	addsd xmm1, xmm0
	cvtsd2ss xmm3, xmm1
_Z12vbr_analysisP8VBRStatePfiif_170:
	movss xmm0, dword [_float__1_00000000]
	maxss xmm0, xmm3
	movaps xmm3, xmm0
	movss xmm1, dword [ebp+0x18]
	movss [ebx+0x24], xmm1
	movss [ebx+0x2c], xmm0
	mov edx, ebx
	mov ecx, 0x4
_Z12vbr_analysisP8VBRStatePfiif_220:
	mov eax, [edx+0x18]
	mov [edx+0x1c], eax
	sub edx, 0x4
	sub ecx, 0x1
	jnz _Z12vbr_analysisP8VBRStatePfiif_220
	movss xmm2, dword [ebp-0x1c]
	movss [ebx+0xc], xmm2
	movss [ebp-0xac], xmm3
	fld dword [ebp-0xac]
	add esp, 0xc0
	pop ebx
	pop esi
	pop ebp
	ret
_Z12vbr_analysisP8VBRStatePfiif_70:
	ucomisd xmm2, [_double_0_05000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_60
	jp _Z12vbr_analysisP8VBRStatePfiif_60
	cvtss2sd xmm1, xmm6
	cvtss2sd xmm0, [ebx+0x30]
	mulsd xmm0, [_double_1_50000000]
	ucomisd xmm0, xmm1
	ja _Z12vbr_analysisP8VBRStatePfiif_230
_Z12vbr_analysisP8VBRStatePfiif_60:
	movsd xmm0, qword [_double_0_40000000]
	ucomisd xmm0, xmm3
	ja _Z12vbr_analysisP8VBRStatePfiif_240
_Z12vbr_analysisP8VBRStatePfiif_380:
	pxor xmm1, xmm1
	ucomiss xmm1, [ebp-0x18]
	ja _Z12vbr_analysisP8VBRStatePfiif_250
_Z12vbr_analysisP8VBRStatePfiif_400:
	xor esi, esi
	mov dword [ebx+0x3c], 0x0
	movss xmm4, dword [ebx+0x30]
_Z12vbr_analysisP8VBRStatePfiif_80:
	ucomiss xmm4, xmm6
	jbe _Z12vbr_analysisP8VBRStatePfiif_260
_Z12vbr_analysisP8VBRStatePfiif_90:
	movss xmm2, dword [ebp-0x28]
	ucomiss xmm2, [_float_6000_00000000]
	ja _Z12vbr_analysisP8VBRStatePfiif_270
	movaps xmm0, xmm2
	ucomiss xmm0, [_float_30000_00000000]
	jb _Z12vbr_analysisP8VBRStatePfiif_280
_Z12vbr_analysisP8VBRStatePfiif_100:
	movaps xmm1, xmm0
	addss xmm1, [_float_1_00000000]
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [_float_1_00000000]
	movaps xmm2, xmm1
	divss xmm2, xmm0
	movss [esp], xmm2
	movss [ebp-0x98], xmm1
	call logf
	fstp dword [ebp-0x14]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [ebx+0x4]
	movss xmm1, dword [ebp-0x98]
	divss xmm1, xmm0
	movss [esp], xmm1
	call logf
	fstp dword [ebp-0xac]
	movss xmm1, dword [ebp-0xac]
	ucomiss xmm1, [_float__5_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_290
	jp _Z12vbr_analysisP8VBRStatePfiif_290
	movsd xmm0, qword [_double_7_00000000]
	movsd xmm1, qword [_double__5_00000000]
	movsd xmm3, qword [_double_0_60000000]
_Z12vbr_analysisP8VBRStatePfiif_450:
	mulsd xmm1, [_double_0_50000000]
	addsd xmm0, xmm1
	cvtsd2ss xmm2, xmm0
_Z12vbr_analysisP8VBRStatePfiif_440:
	movss xmm1, dword [ebp-0x14]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z12vbr_analysisP8VBRStatePfiif_300
	ucomiss xmm1, [_float_5_00000000]
	jbe _Z12vbr_analysisP8VBRStatePfiif_310
	movsd xmm1, qword [_double_5_00000000]
_Z12vbr_analysisP8VBRStatePfiif_470:
	cvtss2sd xmm0, xmm2
	mulsd xmm1, [_double_0_50000000]
	addsd xmm0, xmm1
	cvtsd2ss xmm2, xmm0
_Z12vbr_analysisP8VBRStatePfiif_300:
	cvtss2sd xmm1, [ebp-0x20]
	cvtss2sd xmm0, [ebp-0x24]
	mulsd xmm0, [_double_1_60000000]
	ucomisd xmm1, xmm0
	jbe _Z12vbr_analysisP8VBRStatePfiif_320
	addss xmm2, [_float_0_50000000]
_Z12vbr_analysisP8VBRStatePfiif_320:
	cvtss2sd xmm2, xmm2
	jmp _Z12vbr_analysisP8VBRStatePfiif_330
_Z12vbr_analysisP8VBRStatePfiif_20:
	lea eax, [edx+ecx*4]
	mov dword [ebp-0x20], 0x0
	xor edx, edx
	sub esi, ecx
	mov ecx, esi
_Z12vbr_analysisP8VBRStatePfiif_340:
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, ecx
	jnz _Z12vbr_analysisP8VBRStatePfiif_340
	jmp _Z12vbr_analysisP8VBRStatePfiif_350
_Z12vbr_analysisP8VBRStatePfiif_10:
	xor eax, eax
	mov dword [ebp-0x24], 0x0
_Z12vbr_analysisP8VBRStatePfiif_360:
	movss xmm0, dword [edx+eax*4]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	add eax, 0x1
	cmp ecx, eax
	jnz _Z12vbr_analysisP8VBRStatePfiif_360
	jmp _Z12vbr_analysisP8VBRStatePfiif_370
_Z12vbr_analysisP8VBRStatePfiif_240:
	cvtss2sd xmm0, xmm4
	ucomisd xmm0, [_double_0_05000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_380
	jp _Z12vbr_analysisP8VBRStatePfiif_380
	cvtss2sd xmm1, xmm6
	cvtss2sd xmm0, [ebx+0x30]
	mulsd xmm0, [_double_1_20000000]
	ucomisd xmm0, xmm1
	ja _Z12vbr_analysisP8VBRStatePfiif_230
	jmp _Z12vbr_analysisP8VBRStatePfiif_380
_Z12vbr_analysisP8VBRStatePfiif_110:
	movsd xmm2, qword [_double_6_30000019]
	movss xmm1, dword [ebp-0x28]
	ucomiss xmm1, [_float_3000_00000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_390
_Z12vbr_analysisP8VBRStatePfiif_120:
	jp _Z12vbr_analysisP8VBRStatePfiif_390
	subsd xmm2, [_double_0_70000000]
	cvtsd2ss xmm0, xmm2
	cvtss2sd xmm2, xmm0
	jmp _Z12vbr_analysisP8VBRStatePfiif_390
_Z12vbr_analysisP8VBRStatePfiif_250:
	cvtss2sd xmm0, xmm4
	ucomisd xmm0, [_double_0_05000000]
	jae _Z12vbr_analysisP8VBRStatePfiif_400
	jnp _Z12vbr_analysisP8VBRStatePfiif_230
	jmp _Z12vbr_analysisP8VBRStatePfiif_400
_Z12vbr_analysisP8VBRStatePfiif_50:
	cvtss2sd xmm0, xmm6
	mulsd xmm0, [_double_0_05000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+0x34], xmm0
	jmp _Z12vbr_analysisP8VBRStatePfiif_40
_Z12vbr_analysisP8VBRStatePfiif_270:
	cvtss2sd xmm1, [ebx+0x34]
	movsd xmm3, qword [_double_0_95000000]
	mulsd xmm1, xmm3
	cvtss2sd xmm0, xmm6
	movsd xmm2, qword [_double_0_05000000]
	mulsd xmm0, xmm2
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ebx+0x34], xmm1
	cvtss2sd xmm0, [ebx+0x38]
	mulsd xmm0, xmm3
	addsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	movss [ebx+0x38], xmm0
	jmp _Z12vbr_analysisP8VBRStatePfiif_260
_Z12vbr_analysisP8VBRStatePfiif_140:
	movss xmm0, dword [_float_10_00000000]
	movaps xmm1, xmm0
	cmpss xmm1, xmm3, 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	cmp esi, 0x2
	jle _Z12vbr_analysisP8VBRStatePfiif_410
_Z12vbr_analysisP8VBRStatePfiif_150:
	movsd xmm2, qword [_double_4_00000000]
	movsd [ebp-0x10], xmm2
	jmp _Z12vbr_analysisP8VBRStatePfiif_420
_Z12vbr_analysisP8VBRStatePfiif_290:
	ucomiss xmm1, [_float_2_00000000]
	jbe _Z12vbr_analysisP8VBRStatePfiif_430
	movss xmm1, dword [_float_2_00000000]
	movsd xmm0, qword [_double_2_00000000]
_Z12vbr_analysisP8VBRStatePfiif_490:
	movsd xmm3, qword [_double_0_60000000]
	mulsd xmm0, xmm3
	addsd xmm0, [_double_7_00000000]
	cvtsd2ss xmm2, xmm0
_Z12vbr_analysisP8VBRStatePfiif_500:
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	jbe _Z12vbr_analysisP8VBRStatePfiif_440
	cvtss2sd xmm0, xmm2
	cvtss2sd xmm1, xmm1
	jmp _Z12vbr_analysisP8VBRStatePfiif_450
_Z12vbr_analysisP8VBRStatePfiif_200:
	cvtss2sd xmm3, xmm3
	movsd [ebp-0x70], xmm3
	cvtsi2sd xmm0, esi
	addsd xmm0, [_double_3_00000000]
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0xb8]
	movsd xmm0, qword [ebp-0xb8]
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40080000
	movsd [ebp-0x88], xmm0
	call log
	fstp qword [ebp-0x78]
	movsd xmm0, qword [ebp-0x88]
	subsd xmm0, [ebp-0x78]
	mulsd xmm0, [_double__0_50000000]
	addsd xmm0, [ebp-0x70]
	cvtsd2ss xmm3, xmm0
	jmp _Z12vbr_analysisP8VBRStatePfiif_190
_Z12vbr_analysisP8VBRStatePfiif_180:
	cvtss2sd xmm3, xmm2
	movsd [ebp-0x60], xmm3
	cvtsi2sd xmm0, esi
	addsd xmm0, [_double_3_00000000]
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0xb8]
	movsd xmm0, qword [ebp-0xb8]
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40080000
	movsd [ebp-0x88], xmm0
	call log
	fstp qword [ebp-0x68]
	movsd xmm0, qword [ebp-0x88]
	subsd xmm0, [ebp-0x68]
	mulsd xmm0, [_double__0_50000000]
	addsd xmm0, [ebp-0x60]
	cvtsd2ss xmm3, xmm0
	jmp _Z12vbr_analysisP8VBRStatePfiif_460
_Z12vbr_analysisP8VBRStatePfiif_310:
	cvtss2sd xmm1, [ebp-0x14]
	jmp _Z12vbr_analysisP8VBRStatePfiif_470
_Z12vbr_analysisP8VBRStatePfiif_430:
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z12vbr_analysisP8VBRStatePfiif_480
	cvtss2sd xmm0, xmm1
	jmp _Z12vbr_analysisP8VBRStatePfiif_490
_Z12vbr_analysisP8VBRStatePfiif_480:
	movss xmm2, dword [_float_7_00000000]
	movsd xmm3, qword [_double_0_60000000]
	jmp _Z12vbr_analysisP8VBRStatePfiif_500


;vbr_init(VBRState*)
_Z8vbr_initP8VBRState:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	xor eax, eax
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], 0x3f800000
	mov [ebx+0x20], eax
	mov dword [ebx], 0x3dcccccd
	mov [ebx+0x28], eax
	mov [ebx+0x24], eax
	mov [ebx+0x2c], eax
	mov dword [esp+0x8], 0x33333333
	mov dword [esp+0xc], 0x3fd33333
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40b77000
	call pow
	fstp qword [ebp-0x10]
	movsd xmm0, qword [ebp-0x10]
	mulsd xmm0, [_double_0_05000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+0x34], xmm0
	movss xmm1, dword [_float_0_05000000]
	movss [ebx+0x38], xmm1
	divss xmm0, xmm1
	movss [ebx+0x30], xmm0
	mov dword [ebx+0x3c], 0x0
	mov esi, 0x5
_Z8vbr_initP8VBRState_10:
	mov dword [esp], 0x45bb8000
	call logf
	fstp dword [ebx+0xc]
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z8vbr_initP8VBRState_10
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of vbr:
SECTION .data


;Initialized constant data of vbr:
SECTION .rdata
vbr_nb_thresh: dd 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x40600000, 0x40200000, 0x40000000, 0x3f99999a, 0x3f000000, 0x0, 0xbf000000, 0xbf333333, 0xbf4ccccd, 0xbf666666, 0xbf800000, 0x41200000, 0x40d00000, 0x40a66666, 0x40900000, 0x4079999a, 0x40600000, 0x40400000, 0x40200000, 0x40133333, 0x3fe66666, 0x3f800000, 0x41300000, 0x410ccccd, 0x40f00000, 0x40d00000, 0x40a00000, 0x4079999a, 0x4079999a, 0x4079999a, 0x40600000, 0x40400000, 0x3f800000, 0x41300000, 0x41300000, 0x411e6666, 0x41100000, 0x41000000, 0x40e00000, 0x40d00000, 0x40c00000, 0x40a00000, 0x40800000, 0x40000000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41180000, 0x41100000, 0x41000000, 0x40e00000, 0x40d00000, 0x40a00000, 0x40400000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41180000, 0x41080000, 0x41000000, 0x40d00000, 0x40800000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x411ccccd, 0x40f00000, 0x40b00000, 0x41000000, 0x40a00000, 0x406ccccd, 0x40400000, 0x40200000, 0x40000000, 0x3fe66666, 0x3fc00000, 0x3f800000, 0x0, 0x0, 0x0, 0xffffffff, 0x7fffffff, 0x0, 0x0
vbr_hb_thresh: dd 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x41300000, 0x41300000, 0x41180000, 0x41080000, 0x40f00000, 0x40c00000, 0x40a00000, 0x4079999a, 0x40400000, 0x40000000, 0x3f800000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41180000, 0x410b3333, 0x40f9999a, 0x40e00000, 0x40d00000, 0x40800000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x41300000, 0x411ccccd, 0x40f00000, 0x40b00000, 0x0
vbr_uhb_thresh: dd 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0xbf800000, 0x4079999a, 0x40200000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x0


;Zero initialized global or static variables of vbr:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_6000_00000000:		dd 0x45bb8000	; 6000
_float_150_00000000:		dd 0x43160000	; 150
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_40000000:		dq 0x3fd999999999999a	; 0.4
_double_3_00000000:		dq 0x4008000000000000	; 3
_double_0_06000000:		dq 0x3faeb851eb851eb8	; 0.06
_double_0_30000000:		dq 0x3fd3333333333333	; 0.3
_double_0_20000000:		dq 0x3fc999999999999a	; 0.2
_double_1_20000000:		dq 0x3ff3333333333333	; 1.2
_float_3_00000000:		dd 0x40400000	; 3
_double_0_95000000:		dq 0x3fee666666666666	; 0.95
_double_0_05000000:		dq 0x3fa999999999999a	; 0.05
_float_30000_00000000:		dd 0x46ea6000	; 30000
_float_10000_00000000:		dd 0x461c4000	; 10000
_double_5_60000038:		dq 0x4016666680000000	; 5.6
_float_3000_00000000:		dd 0x453b8000	; 3000
_double_0_60000000:		dq 0x3fe3333333333333	; 0.6
_double_2_20000000:		dq 0x400199999999999a	; 2.2
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_4_00000000:		dd 0x40800000	; 4
_float_60000_00000000:		dd 0x476a6000	; 60000
_double_60000_00000000:		dq 0x40ed4c0000000000	; 60000
_float__1_00000000:		dd 0xbf800000	; -1
_double_1_50000000:		dq 0x3ff8000000000000	; 1.5
_float__5_00000000:		dd 0xc0a00000	; -5
_double_7_00000000:		dq 0x401c000000000000	; 7
_double__5_00000000:		dq 0xc014000000000000	; -5
_float_5_00000000:		dd 0x40a00000	; 5
_double_5_00000000:		dq 0x4014000000000000	; 5
_double_1_60000000:		dq 0x3ff999999999999a	; 1.6
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_6_30000019:		dq 0x4019333340000000	; 6.3
_double_0_70000000:		dq 0x3fe6666666666666	; 0.7
_float_10_00000000:		dd 0x41200000	; 10
_double_4_00000000:		dq 0x4010000000000000	; 4
_float_2_00000000:		dd 0x40000000	; 2
_double_2_00000000:		dq 0x4000000000000000	; 2
_double__0_50000000:		dq 0xbfe0000000000000	; -0.5
_float_7_00000000:		dd 0x40e00000	; 7
_float_0_05000000:		dd 0x3d4ccccd	; 0.05

