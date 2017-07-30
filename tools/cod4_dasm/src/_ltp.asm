;Imports of ltp:
	extern speex_bits_pack
	extern syn_percep_zero
	extern speex_bits_unpack_unsigned

;Exports of ltp:
	global pitch_search_3tap
	global forced_pitch_quant
	global pitch_unquant_3tap
	global forced_pitch_unquant
	global open_loop_nbest_pitch


SECTION .text


;pitch_search_3tap(float*, float*, float*, float*, float*, float*, void const*, int, int, float, int, int, SpeexBits*, char*, float*, float*, int, int, int)
pitch_search_3tap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov ebx, [ebp+0x3c]
	mov eax, [ebp+0x48]
	cmp eax, 0xa
	jle pitch_search_3tap_10
	mov ecx, 0xa
	mov edx, 0xa
pitch_search_3tap_620:
	mov edi, 0x4
	mov eax, edi
	sub eax, ebx
	and eax, 0x3
	lea eax, [ebx+eax]
	lea edx, [eax+edx*4]
	mov [ebp-0xf8], eax
	mov eax, [ebp+0x24]
	cmp [ebp+0x28], eax
	jl pitch_search_3tap_20
pitch_search_3tap_120:
	mov eax, edi
	sub eax, edx
	and eax, 0x3
	lea eax, [edx+eax]
	mov ebx, [ebp+0x34]
	shl ebx, 0x2
	add eax, ebx
	mov edx, eax
	sub edx, ebx
	mov [ebp-0x10c], edx
	mov edx, edi
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ebx+eax]
	mov edx, eax
	sub edx, ebx
	mov [ebp-0x108], edx
	mov edx, edi
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea esi, [ebx+eax]
	mov eax, esi
	sub eax, ebx
	mov [ebp-0x104], eax
	mov eax, [ebp+0x28]
	sub eax, [ebp+0x24]
	add eax, 0x1
	cmp ecx, eax
	cmovg ecx, eax
	mov [ebp-0x6c], ecx
	mov [esp+0x1c], esi
	mov [esp+0x18], ecx
	mov dword [esp+0x14], 0x0
	mov edx, [ebp-0xf8]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x34]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x28]
	mov [esp+0x8], eax
	mov edx, [ebp+0x24]
	mov [esp+0x4], edx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call open_loop_nbest_pitch
	mov eax, [ebp-0x6c]
	test eax, eax
	jle pitch_search_3tap_30
	mov eax, edi
	sub eax, esi
	and eax, 0x3
	lea eax, [esi+eax]
	mov ecx, [ebp+0x34]
	lea edx, [ecx+ecx*2]
	shl edx, 0x2
	add eax, edx
	mov ecx, eax
	sub ecx, edx
	mov [ebp-0xd4], ecx
	sub edi, eax
	and edi, 0x3
	add eax, edi
	lea eax, [edx+eax]
	mov [ebp-0x74], eax
	sub eax, edx
	mov [ebp-0xd0], eax
	add ecx, ebx
	mov [ebp-0xf4], ecx
	mov eax, [ebp+0x34]
	shl eax, 0x3
	mov edi, [ebp-0xd4]
	add edi, eax
	mov [ebp-0xf0], edi
	add ebx, [ebp-0xd0]
	mov [ebp-0xec], ebx
	add eax, [ebp-0xd0]
	mov [ebp-0xe8], eax
	mov eax, [ebp+0x34]
	sub eax, 0x1
	mov [ebp-0xe4], eax
	mov eax, [ebp+0x34]
	sar eax, 0x2
	lea edx, [eax-0x1]
	mov [ebp-0xb0], edx
	movss xmm0, dword [_float__1_00000000]
	movss [ebp-0xfc], xmm0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x110], 0x0
	mov dword [ebp-0x100], 0x0
	mov [ebp-0x11c], eax
	mov eax, [ebp-0x70]
pitch_search_3tap_400:
	mov edx, [ebp-0xf8]
	mov eax, [edx+eax*4]
	mov [ebp-0x114], eax
	mov edi, [ebp+0x34]
	test edi, edi
	jle pitch_search_3tap_40
	xor eax, eax
pitch_search_3tap_50:
	mov edx, [ebp+0x1c]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp [ebp+0x34], eax
	jnz pitch_search_3tap_50
pitch_search_3tap_40:
	mov ebx, [ebp+0x20]
	mov ecx, [ebx+0x4]
	mov dword [ebp-0xcc], 0x1
	shl dword [ebp-0xcc], cl
	mov eax, [ebp+0x4c]
	imul eax, [ebp-0xcc]
	lea eax, [eax+eax*2]
	mov [ebp-0xc8], eax
	mov edi, [ebx]
	add eax, edi
	mov [ebp-0xc8], eax
	mov eax, [ebp-0xd4]
	mov [ebp-0x24], eax
	mov edx, [ebp-0xf4]
	mov [ebp-0x20], edx
	mov ecx, [ebp-0xf0]
	mov [ebp-0x1c], ecx
	mov ebx, [ebp-0xd0]
	mov [ebp-0x30], ebx
	mov edi, [ebp-0xec]
	mov [ebp-0x2c], edi
	mov eax, [ebp-0xe8]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x114]
	neg edx
	mov ecx, [ebp-0x114]
	sub edx, ecx
	mov [ebp-0x9c], edx
	mov ebx, [ebp+0x40]
	lea ebx, [ebx+edx*4+0x4]
	mov [ebp-0xa0], ebx
	lea eax, [ecx*4-0x4]
	mov edi, [ebp+0x40]
	sub edi, eax
	mov [ebp-0x98], edi
	mov dword [ebp-0xa4], 0x1
	mov dword [ebp-0x118], 0xc
pitch_search_3tap_230:
	mov esi, [ebp+0x34]
	test esi, esi
	jle pitch_search_3tap_60
	mov ebx, [ebp-0xa4]
	sub ebx, [ebp-0x114]
	mov edi, [ebp-0x98]
	mov esi, [ebp-0xa0]
	mov ecx, [ebp-0xa4]
	add ecx, [ebp-0x9c]
	mov dword [ebp-0xd8], 0x0
	mov dword [ebp-0xa8], 0x0
	jmp pitch_search_3tap_70
pitch_search_3tap_90:
	test ecx, ecx
	js pitch_search_3tap_80
	mov edx, [ebp-0x118]
	mov eax, [ebp+edx-0x34]
	mov edx, [ebp-0xa8]
	mov dword [eax+edx], 0x0
pitch_search_3tap_100:
	add dword [ebp-0xd8], 0x1
	add ebx, 0x1
	add dword [ebp-0xa8], 0x4
	add edi, 0x4
	add esi, 0x4
	add ecx, 0x1
	mov eax, [ebp-0xd8]
	cmp [ebp+0x34], eax
	jz pitch_search_3tap_60
pitch_search_3tap_70:
	test ebx, ebx
	jns pitch_search_3tap_90
	mov eax, [ebp-0x118]
	mov edx, [ebp+eax-0x34]
	movss xmm0, dword [edi]
	mov eax, [ebp-0xa8]
	movss [edx+eax], xmm0
	jmp pitch_search_3tap_100
pitch_search_3tap_10:
	test eax, eax
	jle pitch_search_3tap_110
	mov ecx, eax
	mov edx, eax
	mov edi, 0x4
	mov eax, edi
	sub eax, ebx
	and eax, 0x3
	lea eax, [ebx+eax]
	lea edx, [eax+edx*4]
	mov [ebp-0xf8], eax
	mov eax, [ebp+0x24]
	cmp [ebp+0x28], eax
	jge pitch_search_3tap_120
pitch_search_3tap_20:
	mov edx, [ebp+0x20]
	mov eax, [edx+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x38]
	mov [esp], ecx
	call speex_bits_pack
	mov ebx, [ebp+0x20]
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edi, [ebp+0x38]
	mov [esp], edi
	call speex_bits_pack
	mov eax, [ebp+0x34]
	test eax, eax
	jle pitch_search_3tap_130
	xor eax, eax
pitch_search_3tap_140:
	mov edx, [ebp+0x1c]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp [ebp+0x34], eax
	jnz pitch_search_3tap_140
pitch_search_3tap_130:
	mov eax, [ebp+0x24]
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
pitch_search_3tap_30:
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0x110], 0x0
	mov dword [ebp-0x100], 0x0
pitch_search_3tap_390:
	mov ecx, [ebp+0x20]
	mov eax, [ecx+0x8]
	mov [esp+0x8], eax
	mov ebx, [ebp+0x24]
	sub [ebp-0x100], ebx
	mov edi, [ebp-0x100]
	mov [esp+0x4], edi
	mov eax, [ebp+0x38]
	mov [esp], eax
	call speex_bits_pack
	mov edx, [ebp+0x20]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x110]
	mov [esp+0x4], ecx
	mov ebx, [ebp+0x38]
	mov [esp], ebx
	call speex_bits_pack
	mov eax, [ebp+0x34]
	test eax, eax
	jle pitch_search_3tap_150
	xor ecx, ecx
pitch_search_3tap_160:
	lea edx, [ecx*4]
	mov edi, [ebp-0x10c]
	mov eax, [edi+edx]
	mov ebx, [ebp+0x1c]
	mov [ebx+edx], eax
	add ecx, 0x1
	cmp [ebp+0x34], ecx
	jnz pitch_search_3tap_160
	xor ecx, ecx
pitch_search_3tap_170:
	lea edx, [ecx*4]
	mov edi, [ebp-0x104]
	mov eax, [edi+edx]
	mov ebx, [ebp+0x8]
	mov [ebx+edx], eax
	add ecx, 0x1
	cmp [ebp+0x34], ecx
	jnz pitch_search_3tap_170
pitch_search_3tap_150:
	mov edi, [ebp-0x114]
	mov [ebp+0x24], edi
	mov eax, edi
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
pitch_search_3tap_60:
	cmp dword [ebp-0xa4], 0x1
	jz pitch_search_3tap_180
	mov ebx, [ebp-0xe4]
	test ebx, ebx
	jle pitch_search_3tap_190
	mov edi, [ebp-0x118]
	mov esi, [edi+ebp-0x28]
	mov ebx, [edi+ebp-0x24]
	xor ecx, ecx
pitch_search_3tap_200:
	lea edx, [ecx*4]
	mov eax, [ebx+edx]
	mov [esi+edx+0x4], eax
	add ecx, 0x1
	cmp [ebp-0xe4], ecx
	jnz pitch_search_3tap_200
pitch_search_3tap_190:
	mov edx, [ebp-0x118]
	mov eax, [edx+ebp-0x28]
	mov dword [eax], 0x0
	mov ecx, [ebp+0x34]
	test ecx, ecx
	jle pitch_search_3tap_210
	mov ecx, [ebp+edx-0x34]
	xor edx, edx
pitch_search_3tap_220:
	mov ebx, [ebp+0x44]
	movss xmm0, dword [ebx+edx*4]
	mulss xmm0, [ecx]
	addss xmm0, [eax]
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x34], edx
	jnz pitch_search_3tap_220
pitch_search_3tap_210:
	sub dword [ebp-0xa4], 0x1
	sub dword [ebp-0x118], 0x4
	sub dword [ebp-0xa0], 0x4
	sub dword [ebp-0x98], 0x4
	cmp dword [ebp-0xa4], 0xfffffffe
	jnz pitch_search_3tap_230
	mov ebx, 0x1
	pxor xmm7, xmm7
pitch_search_3tap_260:
	mov edx, [ebp+ebx*4-0x28]
	cmp dword [ebp-0xb0], 0xffffffff
	jz pitch_search_3tap_240
	mov eax, [ebp+0x8]
	movaps xmm2, xmm7
	xor ecx, ecx
pitch_search_3tap_250:
	movss xmm1, dword [edx]
	mulss xmm1, [eax]
	addss xmm1, xmm7
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	add edx, 0x10
	add eax, 0x10
	addss xmm2, xmm1
	add ecx, 0x1
	cmp ecx, [ebp-0x11c]
	jnz pitch_search_3tap_250
pitch_search_3tap_410:
	movss [ebp+ebx*4-0x40], xmm2
	add ebx, 0x1
	cmp ebx, 0x4
	jnz pitch_search_3tap_260
	mov dword [ebp-0x90], 0x0
pitch_search_3tap_330:
	mov eax, [ebp-0x90]
	shl eax, 0x2
	mov edi, [ebp+eax-0x24]
	mov [ebp-0x94], edi
	lea edi, [ebp-0x60]
	add edi, eax
	mov edx, [ebp-0x90]
	lea eax, [edx+edx*2]
	lea esi, [ebp+eax*4-0x60]
	mov dword [ebp-0xac], 0x1
	mov ecx, [ebp-0xb0]
	lea ebx, [ecx+0x1]
	mov eax, [ebp-0xac]
	mov edx, [ebp+eax*4-0x28]
	cmp dword [ebp-0xb0], 0xffffffff
	jz pitch_search_3tap_270
pitch_search_3tap_300:
	mov eax, [ebp-0x94]
	movaps xmm2, xmm7
	xor ecx, ecx
pitch_search_3tap_280:
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	addss xmm1, xmm7
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	add eax, 0x10
	add edx, 0x10
	addss xmm2, xmm1
	add ecx, 0x1
	cmp ecx, ebx
	jnz pitch_search_3tap_280
	movss [edi], xmm2
	movss [esi], xmm2
	add edi, 0xc
	add esi, 0x4
	mov edx, [ebp-0xac]
	cmp [ebp-0x90], edx
	jl pitch_search_3tap_290
pitch_search_3tap_310:
	add edx, 0x1
	mov [ebp-0xac], edx
	mov eax, edx
	mov edx, [ebp+eax*4-0x28]
	cmp dword [ebp-0xb0], 0xffffffff
	jnz pitch_search_3tap_300
pitch_search_3tap_270:
	movaps xmm2, xmm7
	movss [edi], xmm2
	movss [esi], xmm2
	add edi, 0xc
	add esi, 0x4
	mov edx, [ebp-0xac]
	cmp [ebp-0x90], edx
	jge pitch_search_3tap_310
pitch_search_3tap_290:
	add dword [ebp-0x90], 0x1
	cmp dword [ebp-0x90], 0x3
	jz pitch_search_3tap_320
pitch_search_3tap_340:
	mov eax, [ebp-0x90]
	test eax, eax
	jns pitch_search_3tap_330
	add dword [ebp-0x90], 0x1
	cmp dword [ebp-0x90], 0x3
	jnz pitch_search_3tap_340
pitch_search_3tap_320:
	movss xmm0, dword [ebp-0x34]
	movss xmm3, dword [ebp-0x38]
	movss xmm4, dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x4c]
	movss [ebp-0xb4], xmm1
	movss xmm1, dword [ebp-0x5c]
	movss [ebp-0xb8], xmm1
	movss xmm1, dword [ebp-0x58]
	movss [ebp-0xbc], xmm1
	movss xmm5, dword [ebp-0x40]
	movss xmm6, dword [ebp-0x50]
	movss xmm1, dword [ebp-0x60]
	movss [ebp-0xc0], xmm1
	cmp dword [ebp+0x50], 0x1
	jle pitch_search_3tap_350
	cvtsi2sd xmm2, dword [ebp+0x50]
pitch_search_3tap_610:
	movapd xmm1, xmm2
	mulsd xmm1, [_double__0_01000000]
	addsd xmm1, [_double_1_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x78], xmm0
	cvtss2sd xmm0, xmm3
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x7c], xmm0
	cvtss2sd xmm0, xmm4
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x80], xmm0
	movapd xmm1, xmm2
	mulsd xmm1, [_double_0_01000000]
	addsd xmm1, [_double_1_00000000]
	mulsd xmm1, [_double_0_50000000]
	cvtss2sd xmm0, xmm5
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x84], xmm0
	cvtss2sd xmm0, xmm6
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x88], xmm0
	cvtss2sd xmm0, [ebp-0xc0]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x8c], xmm0
	mov eax, [ebp-0xcc]
	test eax, eax
	jg pitch_search_3tap_360
	xor esi, esi
	xor edx, edx
pitch_search_3tap_600:
	mov ecx, [ebp-0xc8]
	movsx eax, byte [ecx+edx]
	cvtsi2sd xmm0, eax
	movsd xmm1, qword [_double_0_01562500]
	mulsd xmm0, xmm1
	addsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm4, xmm0
	add edx, ecx
	movsx eax, byte [edx+0x1]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	addsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm3, xmm0
	movsx eax, byte [edx+0x2]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	addsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm2, xmm0
	mov eax, [ebp+0x34]
	test eax, eax
	jg pitch_search_3tap_370
	movaps xmm5, xmm7
pitch_search_3tap_480:
	movss xmm0, dword [ebp-0xfc]
	ucomiss xmm0, xmm5
	ja pitch_search_3tap_380
	ucomiss xmm7, xmm0
	ja pitch_search_3tap_380
pitch_search_3tap_450:
	add dword [ebp-0x70], 0x1
	mov edx, [ebp-0x70]
	cmp [ebp-0x6c], edx
	jz pitch_search_3tap_390
	mov eax, edx
	jmp pitch_search_3tap_400
pitch_search_3tap_80:
	mov eax, [ebp-0x118]
	mov edx, [ebp+eax-0x34]
	movss xmm0, dword [esi]
	mov eax, [ebp-0xa8]
	movss [edx+eax], xmm0
	jmp pitch_search_3tap_100
pitch_search_3tap_240:
	movaps xmm2, xmm7
	jmp pitch_search_3tap_410
pitch_search_3tap_380:
	mov eax, [ebp+0x34]
	test eax, eax
	jle pitch_search_3tap_420
	xor ecx, ecx
pitch_search_3tap_430:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x1c]
	mov eax, [ebx+edx]
	mov edi, [ebp-0x10c]
	mov [edi+edx], eax
	add ecx, 0x1
	cmp [ebp+0x34], ecx
	jnz pitch_search_3tap_430
	xor ecx, ecx
pitch_search_3tap_440:
	lea edx, [ecx*4]
	mov ebx, [ebp-0x108]
	mov eax, [ebx+edx]
	mov edi, [ebp-0x104]
	mov [edi+edx], eax
	add ecx, 0x1
	cmp [ebp+0x34], ecx
	jnz pitch_search_3tap_440
pitch_search_3tap_420:
	mov [ebp-0x110], esi
	mov eax, [ebp-0x114]
	mov [ebp-0x100], eax
	movss [ebp-0xfc], xmm5
	jmp pitch_search_3tap_450
pitch_search_3tap_370:
	mov ebx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	xor edx, edx
pitch_search_3tap_460:
	lea eax, [edx*4]
	movaps xmm0, xmm4
	mov edi, [ebp-0xe8]
	mulss xmm0, [eax+edi]
	movaps xmm1, xmm3
	mulss xmm1, [eax+ebx]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+ecx]
	addss xmm0, xmm1
	mov edi, [ebp+0x1c]
	movss [eax+edi], xmm0
	add edx, 0x1
	cmp [ebp+0x34], edx
	jnz pitch_search_3tap_460
	mov ebx, [ebp-0x24]
	mov ecx, [ebp-0x20]
	xor edx, edx
	movaps xmm5, xmm7
pitch_search_3tap_470:
	lea eax, [edx*4]
	movaps xmm1, xmm2
	mulss xmm1, [eax+ebx]
	movaps xmm0, xmm3
	mulss xmm0, [eax+ecx]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mov edi, [ebp-0xf0]
	mulss xmm0, [edi+eax]
	addss xmm1, xmm0
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+edx*4]
	subss xmm0, xmm1
	mov edi, [ebp-0x108]
	movss [edi+eax], xmm0
	mulss xmm0, xmm0
	addss xmm5, xmm0
	add edx, 0x1
	cmp [ebp+0x34], edx
	jnz pitch_search_3tap_470
	jmp pitch_search_3tap_480
pitch_search_3tap_360:
	mulsd xmm2, [_double__0_00100000]
	movsd [ebp-0xe0], xmm2
	mov edx, [ebp-0xc8]
	xor ecx, ecx
	movss [ebp-0xc4], xmm7
	xor esi, esi
	movss xmm1, dword [_float_32_00000000]
	jmp pitch_search_3tap_490
pitch_search_3tap_550:
	movss xmm3, dword [_float_64_00000000]
pitch_search_3tap_570:
	movaps xmm2, xmm3
	mulss xmm2, xmm4
	mulss xmm2, [ebp-0x78]
	addss xmm2, xmm7
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	mulss xmm0, [ebp-0x7c]
	addss xmm2, xmm0
	mulss xmm3, xmm5
	mulss xmm3, [ebp-0x80]
	addss xmm2, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	mulss xmm0, [ebp-0xb4]
	subss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm5
	mulss xmm0, [ebp-0xb8]
	subss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	mulss xmm0, [ebp-0xbc]
	subss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm0, [ebp-0x84]
	subss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	mulss xmm0, [ebp-0x88]
	subss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	mulss xmm0, [ebp-0x8c]
	subss xmm2, xmm0
	ucomiss xmm2, [ebp-0xc4]
	ja pitch_search_3tap_500
	test ecx, ecx
	jnz pitch_search_3tap_510
pitch_search_3tap_500:
	mov esi, ecx
	movss [ebp-0xc4], xmm2
pitch_search_3tap_510:
	add ecx, 0x1
	add edx, 0x3
	cmp [ebp-0xcc], ecx
	jz pitch_search_3tap_520
pitch_search_3tap_490:
	movsx eax, byte [edx]
	cvtsi2ss xmm4, eax
	addss xmm4, xmm1
	movsx eax, byte [edx+0x1]
	cvtsi2ss xmm6, eax
	addss xmm6, xmm1
	movsx eax, byte [edx+0x2]
	cvtsi2ss xmm5, eax
	addss xmm5, xmm1
	ucomiss xmm4, xmm7
	jbe pitch_search_3tap_530
	movaps xmm0, xmm4
	addss xmm0, xmm6
pitch_search_3tap_590:
	ucomiss xmm5, xmm7
	jbe pitch_search_3tap_540
	addss xmm0, xmm5
pitch_search_3tap_540:
	ucomiss xmm0, [_float_64_00000000]
	jbe pitch_search_3tap_550
	subss xmm0, [_float_64_00000000]
	ucomiss xmm0, [_float_127_00000000]
	jbe pitch_search_3tap_560
	movsd xmm0, qword [_double_127_00000000]
pitch_search_3tap_580:
	mulsd xmm0, [ebp-0xe0]
	addsd xmm0, [_double_1_00000000]
	mulsd xmm0, [_double_64_00000000]
	cvtsd2ss xmm3, xmm0
	movaps xmm0, xmm7
	maxss xmm0, xmm3
	movaps xmm3, xmm0
	jmp pitch_search_3tap_570
pitch_search_3tap_560:
	cvtss2sd xmm0, xmm0
	jmp pitch_search_3tap_580
pitch_search_3tap_530:
	movaps xmm0, xmm6
	jmp pitch_search_3tap_590
pitch_search_3tap_520:
	lea edx, [esi+esi*2]
	jmp pitch_search_3tap_600
pitch_search_3tap_180:
	mov edx, [ebp-0x74]
	mov [esp+0x1c], edx
	mov ecx, [ebp+0x30]
	mov [esp+0x18], ecx
	mov ebx, [ebp+0x34]
	mov [esp+0x14], ebx
	mov edi, [ebp-0xf0]
	mov [esp+0x10], edi
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0xe8]
	mov [esp], ebx
	call syn_percep_zero
	jmp pitch_search_3tap_210
pitch_search_3tap_350:
	movsd xmm2, qword [_double_2_00000000]
	jmp pitch_search_3tap_610
pitch_search_3tap_110:
	mov ecx, 0x1
	mov edx, 0x1
	jmp pitch_search_3tap_620
	add [eax], al


;forced_pitch_quant(float*, float*, float*, float*, float*, float*, void const*, int, int, float, int, int, SpeexBits*, char*, float*, float*, int, int, int)
forced_pitch_quant:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x1c]
	mov esi, [ebp+0x24]
	movss xmm1, dword [ebp+0x2c]
	mov ecx, [ebp+0x34]
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_0_99000000]
	jbe forced_pitch_quant_10
	movss xmm1, dword [_float_0_99000001]
forced_pitch_quant_10:
	test ecx, ecx
	jle forced_pitch_quant_20
	lea eax, [esi*4]
	mov edx, ebx
	sub edx, eax
	mov eax, edx
	xor edx, edx
forced_pitch_quant_30:
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [ebx+edx*4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp ecx, edx
	jnz forced_pitch_quant_30
forced_pitch_quant_20:
	mov eax, esi
	pop ebx
	pop esi
	pop ebp
	ret


;pitch_unquant_3tap(float*, int, int, float, void const*, int, int*, float*, SpeexBits*, char*, int, int, float, int)
pitch_unquant_3tap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x18]
	mov edi, [ebp+0x28]
	mov ecx, [esi+0x4]
	mov ebx, 0x1
	shl ebx, cl
	imul ebx, [ebp+0x3c]
	lea ebx, [ebx+ebx*2]
	add ebx, [esi]
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call speex_bits_unpack_unsigned
	add eax, [ebp+0xc]
	mov [ebp-0x3c], eax
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea eax, [eax+eax*2]
	movsx edx, byte [ebx+eax]
	cvtsi2sd xmm0, edx
	movsd xmm2, qword [_double_0_01562500]
	mulsd xmm0, xmm2
	movsd xmm1, qword [_double_0_50000000]
	addsd xmm0, xmm1
	cvtsd2ss xmm3, xmm0
	movss [ebp-0x24], xmm3
	add ebx, eax
	movsx eax, byte [ebx+0x1]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm4, xmm0
	movss [ebp-0x20], xmm4
	movsx eax, byte [ebx+0x2]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov edx, [ebp+0x30]
	test edx, edx
	jz pitch_unquant_3tap_10
	mov eax, [ebp-0x3c]
	cmp eax, [ebp+0x34]
	jg pitch_unquant_3tap_20
	mov edx, eax
	jmp pitch_unquant_3tap_30
pitch_unquant_3tap_10:
	mov edx, [ebp-0x3c]
pitch_unquant_3tap_30:
	mov eax, [ebp+0x20]
	mov [eax], edx
	mov ecx, [ebp+0x24]
	movss [ecx], xmm3
	movss [ecx+0x4], xmm4
	movss xmm5, dword [ebp-0x1c]
	movss [ecx+0x8], xmm5
	mov eax, [ebp+0x2c]
	neg eax
	and eax, 0x3
	add eax, [ebp+0x2c]
	mov [ebp-0x30], eax
	mov esi, [ebp+0x1c]
	lea edx, [eax+esi*4]
	mov [ebp-0x2c], edx
	lea eax, [eax+esi*8]
	mov [ebp-0x50], eax
	mov [ebp-0x28], eax
	mov eax, [ebp-0x3c]
	add eax, 0x1
	mov [ebp-0x48], eax
	mov edx, [ebp-0x3c]
	lea edx, [edx+edx+0x1]
	mov [ebp-0x44], edx
	shl eax, 0x2
	mov ecx, [ebp+0x8]
	sub ecx, eax
	mov [ebp-0x40], ecx
	mov dword [ebp-0x4c], 0x1
	mov dword [ebp-0x54], 0x4
pitch_unquant_3tap_100:
	mov esi, [ebp-0x48]
	cmp [ebp+0x1c], esi
	cmovle esi, [ebp+0x1c]
	test esi, esi
	jle pitch_unquant_3tap_40
	mov eax, [ebp-0x54]
	mov ebx, [eax+ebp-0x34]
	mov edx, [ebp-0x40]
	xor ecx, ecx
pitch_unquant_3tap_50:
	mov eax, [edx]
	mov [ebx+ecx*4], eax
	add ecx, 0x1
	add edx, 0x4
	cmp esi, ecx
	jnz pitch_unquant_3tap_50
pitch_unquant_3tap_40:
	mov edx, [ebp-0x44]
	cmp [ebp+0x1c], edx
	mov edi, [ebp+0x1c]
	cmovg edi, edx
	cmp esi, edi
	jge pitch_unquant_3tap_60
	mov eax, esi
	sub eax, [ebp-0x48]
	sub eax, [ebp-0x3c]
	mov edx, [ebp+0x8]
	lea ecx, [edx+eax*4]
	mov edx, [ebp-0x54]
	mov eax, [edx+ebp-0x34]
	lea edx, [eax+esi*4]
	xor ebx, ebx
	mov eax, edi
	sub eax, esi
	mov esi, eax
pitch_unquant_3tap_70:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	cmp ebx, esi
	jnz pitch_unquant_3tap_70
pitch_unquant_3tap_60:
	cmp edi, [ebp+0x1c]
	jge pitch_unquant_3tap_80
	mov edx, [ebp-0x54]
	mov eax, [edx+ebp-0x34]
	lea eax, [eax+edi*4]
	xor edx, edx
	mov ecx, [ebp+0x1c]
	sub ecx, edi
pitch_unquant_3tap_90:
	mov dword [eax], 0x0
	add edx, 0x1
	add eax, 0x4
	cmp edx, ecx
	jnz pitch_unquant_3tap_90
pitch_unquant_3tap_80:
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x54], 0x4
	sub dword [ebp-0x48], 0x1
	sub dword [ebp-0x44], 0x1
	add dword [ebp-0x40], 0x4
	cmp dword [ebp-0x4c], 0x4
	jnz pitch_unquant_3tap_100
	mov eax, [ebp+0x1c]
	test eax, eax
	jg pitch_unquant_3tap_110
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
pitch_unquant_3tap_110:
	mov ebx, [ebp-0x2c]
	mov ecx, [ebp-0x30]
	xor edx, edx
	movsd xmm2, qword [_double_0_00000000]
pitch_unquant_3tap_120:
	lea eax, [edx*4]
	movaps xmm1, xmm3
	mov esi, [ebp-0x50]
	mulss xmm1, [esi+eax]
	cvtss2sd xmm1, xmm1
	addsd xmm1, xmm2
	movaps xmm0, xmm4
	mulss xmm0, [ebx+eax]
	cvtss2sd xmm0, xmm0
	addsd xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+eax]
	cvtss2sd xmm0, xmm0
	addsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	mov esi, [ebp+0x8]
	movss [esi+eax], xmm0
	add edx, 0x1
	cmp [ebp+0x1c], edx
	jnz pitch_unquant_3tap_120
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
pitch_unquant_3tap_20:
	cmp dword [ebp+0x30], 0x3
	jg pitch_unquant_3tap_130
	movss xmm5, dword [ebp+0x38]
pitch_unquant_3tap_190:
	cvtss2sd xmm0, xmm5
	ucomisd xmm0, [_double_0_95000000]
	jbe pitch_unquant_3tap_140
	movss xmm5, dword [_float_0_94999999]
pitch_unquant_3tap_140:
	movss xmm4, dword [ebp-0x20]
	movaps xmm0, xmm4
	pxor xmm6, xmm6
	ucomiss xmm6, xmm4
	ja pitch_unquant_3tap_150
pitch_unquant_3tap_200:
	cvtss2sd xmm2, xmm0
	movss xmm3, dword [ebp-0x24]
	ucomiss xmm3, xmm6
	jbe pitch_unquant_3tap_160
	cvtss2sd xmm0, xmm3
pitch_unquant_3tap_220:
	addsd xmm2, xmm0
	ucomiss xmm1, xmm6
	jbe pitch_unquant_3tap_170
	cvtss2sd xmm0, xmm1
pitch_unquant_3tap_210:
	addsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	ucomiss xmm0, xmm5
	jbe pitch_unquant_3tap_10
	movaps xmm1, xmm5
	divss xmm1, xmm0
	mov edx, 0x1
	lea eax, [ebp-0x20]
pitch_unquant_3tap_180:
	movaps xmm0, xmm1
	mulss xmm0, [eax-0x4]
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz pitch_unquant_3tap_180
	movss xmm4, dword [ebp-0x20]
	movss xmm3, dword [ebp-0x24]
	mov edx, [ebp-0x3c]
	jmp pitch_unquant_3tap_30
pitch_unquant_3tap_130:
	cvtss2sd xmm0, [ebp+0x38]
	mulsd xmm0, [_double_0_40000000]
	cvtsd2ss xmm5, xmm0
	jmp pitch_unquant_3tap_190
pitch_unquant_3tap_150:
	xorps xmm0, [_data16_80000000]
	jmp pitch_unquant_3tap_200
pitch_unquant_3tap_170:
	cvtss2sd xmm0, xmm1
	mulsd xmm0, [_double__0_50000000]
	jmp pitch_unquant_3tap_210
pitch_unquant_3tap_160:
	cvtss2sd xmm0, xmm3
	mulsd xmm0, [_double__0_50000000]
	jmp pitch_unquant_3tap_220


;forced_pitch_unquant(float*, int, int, float, void const*, int, int*, float*, SpeexBits*, char*, int, int, float, int)
forced_pitch_unquant:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	movss xmm2, dword [ebp+0x14]
	mov ebx, [ebp+0x1c]
	mov ecx, [ebp+0x24]
	cvtss2sd xmm0, xmm2
	ucomisd xmm0, [_double_0_99000000]
	jbe forced_pitch_unquant_10
	movss xmm1, dword [_float_0_99000001]
forced_pitch_unquant_40:
	test ebx, ebx
	jle forced_pitch_unquant_20
	lea eax, [edi*4]
	mov edx, esi
	sub edx, eax
	mov eax, edx
	xor edx, edx
forced_pitch_unquant_30:
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [esi+edx*4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp ebx, edx
	jnz forced_pitch_unquant_30
forced_pitch_unquant_20:
	mov eax, [ebp+0x20]
	mov [eax], edi
	xor eax, eax
	mov [ecx+0x8], eax
	mov [ecx], eax
	movss [ecx+0x4], xmm2
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
forced_pitch_unquant_10:
	movaps xmm1, xmm2
	jmp forced_pitch_unquant_40
	nop


;open_loop_nbest_pitch(float*, int, int, int, int*, float*, int, char*)
open_loop_nbest_pitch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x34
	mov edi, [ebp+0x14]
	mov ecx, [ebp+0x24]
	mov ebx, 0x4
	mov eax, ebx
	sub eax, ecx
	and eax, 0x3
	add ecx, eax
	mov eax, [ebp+0x20]
	lea edx, [ecx+eax*4]
	mov [ebp-0x30], ecx
	mov ecx, [ebp+0x10]
	sub ecx, [ebp+0xc]
	mov [ebp-0x38], ecx
	shl ecx, 0x2
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [edx+ecx+0x4]
	mov esi, ecx
	neg esi
	lea eax, [edx+esi-0x4]
	mov [ebp-0x2c], eax
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea eax, [ecx+edx+0x8]
	lea edx, [esi+eax-0x8]
	mov [ebp-0x28], edx
	sub ebx, eax
	and ebx, 0x3
	add eax, ebx
	lea ecx, [ecx+eax+0x4]
	lea ecx, [esi+ecx-0x4]
	mov [ebp-0x24], ecx
	mov eax, [ebp+0x20]
	test eax, eax
	jle open_loop_nbest_pitch_10
	xor eax, eax
open_loop_nbest_pitch_20:
	mov ecx, [ebp-0x30]
	mov dword [ecx+eax*4], 0xbf800000
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x18]
	mov [esi+eax*4], ebx
	add eax, 0x1
	cmp [ebp+0x20], eax
	jnz open_loop_nbest_pitch_20
open_loop_nbest_pitch_10:
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	mov ebx, edi
	sar ebx, 0x2
	lea ecx, [ebx-0x1]
	mov [ebp-0x10], ecx
	add ecx, 0x1
	jz open_loop_nbest_pitch_30
	pxor xmm3, xmm3
	movaps xmm2, xmm3
	xor ecx, ecx
open_loop_nbest_pitch_40:
	movss xmm1, dword [edx]
	mulss xmm1, [eax]
	addss xmm1, xmm3
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	add edx, 0x10
	add eax, 0x10
	addss xmm2, xmm1
	add ecx, 0x1
	cmp ecx, ebx
	jnz open_loop_nbest_pitch_40
open_loop_nbest_pitch_280:
	mov ebx, [ebp-0x28]
	movss [ebx], xmm2
	mov edx, [ebp+0x8]
	mov eax, edx
	cmp dword [ebp-0x10], 0xffffffff
	jz open_loop_nbest_pitch_50
	movaps xmm6, xmm3
	xor ecx, ecx
	mov esi, [ebp-0x10]
	lea ebx, [esi+0x1]
open_loop_nbest_pitch_60:
	movss xmm1, dword [edx]
	mulss xmm1, [eax]
	addss xmm1, xmm3
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0xc]
	mulss xmm0, [eax+0xc]
	addss xmm1, xmm0
	add edx, 0x10
	add eax, 0x10
	addss xmm6, xmm1
	add ecx, 0x1
	cmp ecx, ebx
	jnz open_loop_nbest_pitch_60
open_loop_nbest_pitch_270:
	mov eax, [ebp+0xc]
	cmp [ebp+0x10], eax
	jl open_loop_nbest_pitch_70
	mov edx, [ebp-0x28]
	shl eax, 0x2
	mov ebx, [ebp+0x8]
	sub ebx, eax
	sub edi, [ebp+0xc]
	mov esi, [ebp+0x8]
	lea ecx, [esi+edi*4]
	mov eax, [ebp+0xc]
open_loop_nbest_pitch_80:
	movss xmm0, dword [ebx-0x4]
	movss xmm1, dword [ecx-0x4]
	mulss xmm0, xmm0
	addss xmm0, [edx]
	mulss xmm1, xmm1
	subss xmm0, xmm1
	movss [edx+0x4], xmm0
	add eax, 0x1
	add edx, 0x4
	sub ebx, 0x4
	sub ecx, 0x4
	cmp [ebp+0x10], eax
	jge open_loop_nbest_pitch_80
open_loop_nbest_pitch_70:
	mov edi, [ebp-0x38]
	add edi, 0x1
	mov [ebp-0x20], edi
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov edx, [ebp+0x8]
	sub edx, eax
	test edi, edi
	jle open_loop_nbest_pitch_90
	mov ebx, [ebp-0x2c]
	lea edi, [ebx+edi*4]
	mov ecx, edx
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x10]
	lea esi, [eax+0x1]
open_loop_nbest_pitch_120:
	mov edx, ecx
	cmp dword [ebp-0x10], 0xffffffff
	jz open_loop_nbest_pitch_100
	mov eax, [ebp+0x8]
	movaps xmm2, xmm3
	xor ebx, ebx
open_loop_nbest_pitch_110:
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	addss xmm1, xmm3
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	add eax, 0x10
	add edx, 0x10
	addss xmm2, xmm1
	add ebx, 0x1
	cmp ebx, esi
	jnz open_loop_nbest_pitch_110
	movss [edi-0x4], xmm2
	add dword [ebp-0x1c], 0x1
	sub edi, 0x4
	add ecx, 0x4
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jnz open_loop_nbest_pitch_120
open_loop_nbest_pitch_90:
	mov ecx, [ebp+0xc]
	cmp [ebp+0x10], ecx
	jl open_loop_nbest_pitch_130
	mov edx, ecx
	xor ecx, ecx
	movss xmm4, dword [_float_1_00000000]
	movss xmm5, dword [_float__16_00000000]
	movss xmm2, dword [_float_16_00000000]
	jmp open_loop_nbest_pitch_140
open_loop_nbest_pitch_160:
	movaps xmm0, xmm2
	mulss xmm0, xmm1
	mov ebx, [ebp-0x24]
	movss [ebx+eax], xmm0
	add edx, 0x1
	add ecx, 0x1
	cmp [ebp+0x10], edx
	jl open_loop_nbest_pitch_150
open_loop_nbest_pitch_140:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x2c]
	movss xmm1, dword [ebx+eax]
	mov esi, [ebp-0x28]
	movss xmm0, dword [esi+eax]
	addss xmm0, xmm4
	movaps xmm7, xmm1
	divss xmm7, xmm0
	movaps xmm0, xmm7
	ucomiss xmm7, xmm2
	ja open_loop_nbest_pitch_160
	movaps xmm7, xmm5
	maxss xmm7, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	mov ebx, [ebp-0x24]
	movss [ebx+eax], xmm0
	add edx, 0x1
	add ecx, 0x1
	cmp [ebp+0x10], edx
	jge open_loop_nbest_pitch_140
open_loop_nbest_pitch_150:
	mov esi, [ebp+0x20]
	mov edi, [ebp-0x30]
	lea esi, [edi+esi*4-0x4]
	mov [ebp-0x18], esi
	mov [ebp-0x14], ebx
	mov edi, [ebp+0xc]
	mov [ebp-0x40], edi
	mov eax, ebx
	mov edx, esi
open_loop_nbest_pitch_200:
	movss xmm0, dword [eax]
	ucomiss xmm0, [edx]
	jbe open_loop_nbest_pitch_170
	mov esi, [ebp+0x20]
	test esi, esi
	jle open_loop_nbest_pitch_170
	mov ecx, [ebp-0x30]
	ucomiss xmm0, [ecx]
	jbe open_loop_nbest_pitch_180
	xor esi, esi
	mov dword [ebp-0x34], 0x0
	mov ebx, [ebp+0x20]
	sub ebx, 0x1
	cmp ebx, esi
	jg open_loop_nbest_pitch_190
open_loop_nbest_pitch_240:
	mov eax, [ebp-0x34]
	shl eax, 0x2
	mov ecx, [ebp-0x30]
	movss [ecx+eax], xmm0
	mov esi, [ebp-0x40]
	mov ebx, [ebp+0x18]
	mov [ebx+eax], esi
open_loop_nbest_pitch_170:
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x14], 0x4
	mov edi, [ebp-0x40]
	cmp [ebp+0x10], edi
	jl open_loop_nbest_pitch_130
	mov eax, [ebp-0x14]
	mov edx, [ebp-0x18]
	jmp open_loop_nbest_pitch_200
open_loop_nbest_pitch_100:
	movaps xmm2, xmm3
	movss [edi-0x4], xmm2
	add dword [ebp-0x1c], 0x1
	sub edi, 0x4
	add ecx, 0x4
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jnz open_loop_nbest_pitch_120
	jmp open_loop_nbest_pitch_90
open_loop_nbest_pitch_130:
	mov ebx, [ebp+0x1c]
	test ebx, ebx
	jz open_loop_nbest_pitch_210
	mov ecx, [ebp+0x20]
	test ecx, ecx
	jg open_loop_nbest_pitch_220
open_loop_nbest_pitch_210:
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
open_loop_nbest_pitch_180:
	xor esi, esi
open_loop_nbest_pitch_230:
	add esi, 0x1
	cmp [ebp+0x20], esi
	jz open_loop_nbest_pitch_170
	mov [ebp-0x34], esi
	mov ebx, [ebp-0x30]
	ucomiss xmm0, [ebx+esi*4]
	jbe open_loop_nbest_pitch_230
	mov ebx, [ebp+0x20]
	sub ebx, 0x1
	cmp ebx, esi
	jle open_loop_nbest_pitch_240
open_loop_nbest_pitch_190:
	lea edi, [ebx*4]
	mov eax, [ebp-0x30]
	lea ecx, [eax+edi-0x4]
	mov eax, [ebp+0x18]
	lea edx, [eax+edi-0x4]
open_loop_nbest_pitch_250:
	mov eax, [ecx]
	mov [ecx+0x4], eax
	mov eax, [edx]
	mov [edx+0x4], eax
	sub ebx, 0x1
	sub ecx, 0x4
	sub edx, 0x4
	cmp esi, ebx
	jl open_loop_nbest_pitch_250
	mov edx, [ebp-0x14]
	movss xmm0, dword [edx]
	jmp open_loop_nbest_pitch_240
open_loop_nbest_pitch_220:
	xor edx, edx
	sqrtss xmm2, xmm6
	movss xmm4, dword [_float_10_00000000]
open_loop_nbest_pitch_260:
	mov ecx, [ebp+0x18]
	mov eax, [ecx+edx*4]
	sub eax, [ebp+0xc]
	shl eax, 0x2
	mov ebx, [ebp-0x28]
	sqrtss xmm1, [ebx+eax]
	mulss xmm1, xmm2
	addss xmm1, xmm4
	mov esi, [ebp-0x2c]
	movss xmm0, dword [esi+eax]
	divss xmm0, xmm1
	movaps xmm1, xmm3
	maxss xmm1, xmm0
	mov eax, [ebp+0x1c]
	movss [eax+edx*4], xmm1
	add edx, 0x1
	cmp [ebp+0x20], edx
	jnz open_loop_nbest_pitch_260
	add esp, 0x34
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
open_loop_nbest_pitch_50:
	movaps xmm6, xmm3
	jmp open_loop_nbest_pitch_270
open_loop_nbest_pitch_30:
	pxor xmm3, xmm3
	movaps xmm2, xmm3
	jmp open_loop_nbest_pitch_280


;Initialized global or static variables of ltp:
SECTION .data


;Initialized constant data of ltp:
SECTION .rdata


;Zero initialized global or static variables of ltp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float__1_00000000:		dd 0xbf800000	; -1
_double__0_01000000:		dq 0xbf847ae147ae147b	; -0.01
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_double_0_01000000:		dq 0x3f847ae147ae147b	; 0.01
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_0_01562500:		dq 0x3f90000000000000	; 0.015625
_double__0_00100000:		dq 0xbf50624dd2f1a9fc	; -0.001
_float_32_00000000:		dd 0x42000000	; 32
_float_64_00000000:		dd 0x42800000	; 64
_float_127_00000000:		dd 0x42fe0000	; 127
_double_127_00000000:		dq 0x405fc00000000000	; 127
_double_64_00000000:		dq 0x4050000000000000	; 64
_double_2_00000000:		dq 0x4000000000000000	; 2
_double_0_99000000:		dq 0x3fefae147ae147ae	; 0.99
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_double_0_00000000:		dq 0x3cd203af9ee75616	; 1e-15
_double_0_95000000:		dq 0x3fee666666666666	; 0.95
_float_0_94999999:		dd 0x3f733333	; 0.95
_double_0_40000000:		dq 0x3fd999999999999a	; 0.4
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double__0_50000000:		dq 0xbfe0000000000000	; -0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float__16_00000000:		dd 0xc1800000	; -16
_float_16_00000000:		dd 0x41800000	; 16
_float_10_00000000:		dd 0x41200000	; 10

