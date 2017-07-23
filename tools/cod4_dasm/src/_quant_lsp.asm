;Imports of quant_lsp:
	extern speex_bits_pack
	extern h0
	extern speex_bits_unpack_unsigned

;Exports of quant_lsp:
	global high_lsp_cdbk2
	global high_lsp_cdbk
	global lsp_quant_nb
	global lsp_quant_lbr
	global lsp_quant_high
	global lsp_unquant_nb
	global lsp_unquant_lbr
	global lsp_unquant_high
	global cdbk_nb
	global cdbk_nb_high1
	global cdbk_nb_high2
	global cdbk_nb_low1
	global cdbk_nb_low2


SECTION .text


;lsp_quant_nb(float*, float*, int, SpeexBits*)
lsp_quant_nb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_nb_10
	xor ecx, ecx
lsp_quant_nb_20:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx]
	mov ebx, [ebp+0xc]
	mov [ebx+edx], eax
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_nb_20
	mov esi, [ebp+0x10]
	sub esi, 0x1
	movss xmm5, dword [ebx]
	lea edi, [ebx+0x4]
	movsd xmm3, qword [_double_0_04000000]
	movsd xmm4, qword [_double_10_00000000]
lsp_quant_nb_50:
	movaps xmm2, xmm5
	mov eax, edi
	mov ecx, edi
	xor ebx, ebx
	xor edx, edx
	cmp esi, ebx
	jz lsp_quant_nb_30
lsp_quant_nb_60:
	movss xmm0, dword [eax]
	subss xmm0, [eax-0x4]
lsp_quant_nb_70:
	minss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	addsd xmm0, xmm3
	movapd xmm1, xmm4
	divsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	movss [ebp+edx-0x40], xmm0
	add ebx, 0x1
	cmp [ebp+0x10], ebx
	jle lsp_quant_nb_40
	add ecx, 0x4
	add edx, 0x4
	add eax, 0x4
	test ebx, ebx
	jz lsp_quant_nb_50
	movss xmm2, dword [ecx-0x4]
	subss xmm2, [ecx-0x8]
	cmp esi, ebx
	jnz lsp_quant_nb_60
lsp_quant_nb_30:
	cvtss2sd xmm1, [eax-0x4]
	movsd xmm0, qword [_double_3_14159265]
	subsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	jmp lsp_quant_nb_70
lsp_quant_nb_40:
	xor edx, edx
	movsd xmm2, qword [_double_0_25000000]
	mov eax, [ebp+0xc]
lsp_quant_nb_80:
	cvtss2sd xmm1, [eax]
	cvtsi2sd xmm0, edx
	mulsd xmm0, xmm2
	addsd xmm0, xmm2
	subsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [eax], xmm1
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_nb_80
	xor edx, edx
	movss xmm1, dword [_float_256_00000000]
	mov eax, [ebp+0xc]
lsp_quant_nb_90:
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_nb_90
lsp_quant_nb_10:
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	xor esi, esi
	mov ecx, cdbk_nb
	xor ebx, ebx
	jmp lsp_quant_nb_100
lsp_quant_nb_130:
	movaps xmm2, xmm4
	ucomiss xmm3, xmm2
	ja lsp_quant_nb_110
lsp_quant_nb_150:
	test ebx, ebx
	jz lsp_quant_nb_110
	movaps xmm2, xmm3
	add ebx, 0x1
	cmp ebx, 0x40
	jz lsp_quant_nb_120
lsp_quant_nb_160:
	movaps xmm3, xmm2
lsp_quant_nb_100:
	mov edi, [ebp+0x10]
	test edi, edi
	jle lsp_quant_nb_130
	xor edx, edx
	movaps xmm2, xmm4
lsp_quant_nb_140:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+edx*4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	add edx, 0x1
	cmp [ebp+0x10], edx
	jnz lsp_quant_nb_140
	ucomiss xmm3, xmm2
	jbe lsp_quant_nb_150
lsp_quant_nb_110:
	mov esi, ebx
	add ebx, 0x1
	cmp ebx, 0x40
	jnz lsp_quant_nb_160
lsp_quant_nb_120:
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_nb_170
	mov ebx, [ebp+0x10]
	imul ebx, esi
	xor ecx, ecx
lsp_quant_nb_180:
	mov eax, [ebp+0xc]
	lea edx, [eax+ecx*4]
	movsx eax, byte [ecx+ebx+cdbk_nb]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_nb_180
lsp_quant_nb_170:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], esi
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle lsp_quant_nb_190
	xor edx, edx
	mov eax, [ebp+0xc]
lsp_quant_nb_200:
	movss xmm0, dword [eax]
	addss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_nb_200
lsp_quant_nb_190:
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	xor edi, edi
	xor ebx, ebx
	mov esi, cdbk_nb_low1
lsp_quant_nb_230:
	mov edx, esi
	movaps xmm2, xmm4
	mov ecx, 0x1
lsp_quant_nb_210:
	movsx eax, byte [edx]
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+ecx*4-0x4]
	subss xmm0, xmm1
	add edx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [ebp+ecx*4-0x44]
	addss xmm2, xmm0
	add ecx, 0x1
	cmp ecx, 0x6
	jnz lsp_quant_nb_210
	ucomiss xmm3, xmm2
	ja lsp_quant_nb_220
	test ebx, ebx
	jz lsp_quant_nb_220
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jnz lsp_quant_nb_230
lsp_quant_nb_300:
	lea ebx, [edi+edi*4]
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	add edx, 0x4
lsp_quant_nb_240:
	movsx eax, byte [ebx+ecx+cdbk_nb_low2+0x13f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_nb_240
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], edi
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	mov edx, 0x1
	mov eax, [ebp+0xc]
	add eax, 0x4
lsp_quant_nb_250:
	movss xmm0, dword [eax-0x4]
	addss xmm0, xmm0
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x6
	jnz lsp_quant_nb_250
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	xor edi, edi
	xor ebx, ebx
	mov esi, cdbk_nb_low2
lsp_quant_nb_290:
	mov edx, esi
	movaps xmm2, xmm4
	mov ecx, 0x1
lsp_quant_nb_260:
	movsx eax, byte [edx]
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+ecx*4-0x4]
	subss xmm0, xmm1
	add edx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [ebp+ecx*4-0x44]
	addss xmm2, xmm0
	add ecx, 0x1
	cmp ecx, 0x6
	jnz lsp_quant_nb_260
	ucomiss xmm3, xmm2
	ja lsp_quant_nb_270
	test ebx, ebx
	jz lsp_quant_nb_270
	movaps xmm2, xmm3
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jz lsp_quant_nb_280
lsp_quant_nb_310:
	movaps xmm3, xmm2
	jmp lsp_quant_nb_290
lsp_quant_nb_220:
	movaps xmm3, xmm2
	mov edi, ebx
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jnz lsp_quant_nb_230
	jmp lsp_quant_nb_300
lsp_quant_nb_270:
	mov edi, ebx
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jnz lsp_quant_nb_310
lsp_quant_nb_280:
	lea ebx, [edi+edi*4]
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	add edx, 0x4
lsp_quant_nb_320:
	movsx eax, byte [ecx+ebx+cdbk_nb_high1+0x13f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_nb_320
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], edi
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	mov esi, [ebp+0xc]
	add esi, 0x14
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	mov dword [ebp-0x4c], 0x0
	xor edi, edi
	mov dword [ebp-0x50], cdbk_nb_high1
lsp_quant_nb_360:
	mov ecx, [ebp-0x50]
	movaps xmm2, xmm4
	mov ebx, 0x1
	lea edx, [ebp-0x40]
	add edx, 0x14
lsp_quant_nb_330:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [esi+ebx*4-0x4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [edx]
	addss xmm2, xmm0
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x6
	jnz lsp_quant_nb_330
	ucomiss xmm3, xmm2
	ja lsp_quant_nb_340
	test edi, edi
	jz lsp_quant_nb_340
	movaps xmm2, xmm3
	add edi, 0x1
	add dword [ebp-0x50], 0x5
	cmp edi, 0x40
	jz lsp_quant_nb_350
lsp_quant_nb_370:
	movaps xmm3, xmm2
	jmp lsp_quant_nb_360
lsp_quant_nb_340:
	mov [ebp-0x4c], edi
	add edi, 0x1
	add dword [ebp-0x50], 0x5
	cmp edi, 0x40
	jnz lsp_quant_nb_370
lsp_quant_nb_350:
	mov eax, [ebp-0x4c]
	lea ebx, [eax+eax*4]
	mov ecx, 0x1
	lea edx, [esi+0x4]
lsp_quant_nb_380:
	movsx eax, byte [ecx+ebx+cdbk_nb_high2+0x13f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_nb_380
	mov dword [esp+0x8], 0x6
	mov ebx, [ebp-0x4c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_pack
	xor edx, edx
	mov eax, [ebp+0xc]
lsp_quant_nb_390:
	movss xmm0, dword [eax+0x14]
	addss xmm0, xmm0
	movss [eax+0x14], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz lsp_quant_nb_390
	pxor xmm3, xmm3
	movaps xmm4, xmm3
	mov dword [ebp-0x58], 0x0
	xor edi, edi
	mov dword [ebp-0x54], cdbk_nb_high2
lsp_quant_nb_430:
	mov ecx, [ebp-0x54]
	movaps xmm2, xmm4
	mov ebx, 0x1
	lea edx, [ebp-0x40]
	add edx, 0x14
lsp_quant_nb_400:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [esi+ebx*4-0x4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [edx]
	addss xmm2, xmm0
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x6
	jnz lsp_quant_nb_400
	ucomiss xmm3, xmm2
	ja lsp_quant_nb_410
	test edi, edi
	jz lsp_quant_nb_410
	movaps xmm2, xmm3
	add edi, 0x1
	add dword [ebp-0x54], 0x5
	cmp edi, 0x40
	jz lsp_quant_nb_420
lsp_quant_nb_440:
	movaps xmm3, xmm2
	jmp lsp_quant_nb_430
lsp_quant_nb_410:
	mov [ebp-0x58], edi
	add edi, 0x1
	add dword [ebp-0x54], 0x5
	cmp edi, 0x40
	jnz lsp_quant_nb_440
lsp_quant_nb_420:
	mov eax, [ebp-0x58]
	lea ebx, [eax+eax*4]
	mov ecx, 0x1
	lea edx, [esi+0x4]
lsp_quant_nb_450:
	movsx eax, byte [ecx+ebx+h0+0x43f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_nb_450
	mov dword [esp+0x8], 0x6
	mov ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_pack
	mov edx, [ebp+0x10]
	test edx, edx
	jle lsp_quant_nb_460
	xor edx, edx
	movsd xmm1, qword [_double_0_00097656]
	mov eax, [ebp+0xc]
lsp_quant_nb_470:
	cvtss2sd xmm0, [eax]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_nb_470
	xor ecx, ecx
lsp_quant_nb_480:
	lea eax, [ecx*4]
	mov edx, [ebp+0xc]
	add edx, eax
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+eax]
	subss xmm0, [edx]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_nb_480
lsp_quant_nb_460:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;lsp_quant_lbr(float*, float*, int, SpeexBits*)
lsp_quant_lbr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_lbr_10
	xor ecx, ecx
lsp_quant_lbr_20:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx]
	mov ebx, [ebp+0xc]
	mov [ebx+edx], eax
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_lbr_20
	mov esi, [ebp+0x10]
	sub esi, 0x1
	movss xmm5, dword [ebx]
	lea edi, [ebx+0x4]
	movsd xmm3, qword [_double_0_04000000]
	movsd xmm4, qword [_double_10_00000000]
lsp_quant_lbr_50:
	movaps xmm2, xmm5
	mov eax, edi
	mov ecx, edi
	xor ebx, ebx
	xor edx, edx
	cmp esi, ebx
	jz lsp_quant_lbr_30
lsp_quant_lbr_60:
	movss xmm0, dword [eax]
	subss xmm0, [eax-0x4]
lsp_quant_lbr_70:
	minss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	addsd xmm0, xmm3
	movapd xmm1, xmm4
	divsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	movss [ebp+edx-0x40], xmm0
	add ebx, 0x1
	cmp [ebp+0x10], ebx
	jle lsp_quant_lbr_40
	add ecx, 0x4
	add edx, 0x4
	add eax, 0x4
	test ebx, ebx
	jz lsp_quant_lbr_50
	movss xmm2, dword [ecx-0x4]
	subss xmm2, [ecx-0x8]
	cmp esi, ebx
	jnz lsp_quant_lbr_60
lsp_quant_lbr_30:
	cvtss2sd xmm1, [eax-0x4]
	movsd xmm0, qword [_double_3_14159265]
	subsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	jmp lsp_quant_lbr_70
lsp_quant_lbr_40:
	xor edx, edx
	movsd xmm2, qword [_double_0_25000000]
	mov eax, [ebp+0xc]
lsp_quant_lbr_80:
	cvtss2sd xmm1, [eax]
	cvtsi2sd xmm0, edx
	mulsd xmm0, xmm2
	addsd xmm0, xmm2
	subsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [eax], xmm1
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_lbr_80
	xor edx, edx
	movss xmm1, dword [_float_256_00000000]
	mov eax, [ebp+0xc]
lsp_quant_lbr_90:
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_lbr_90
lsp_quant_lbr_10:
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	xor esi, esi
	mov ecx, cdbk_nb
	xor ebx, ebx
	jmp lsp_quant_lbr_100
lsp_quant_lbr_130:
	movaps xmm2, xmm4
	ucomiss xmm3, xmm2
	ja lsp_quant_lbr_110
lsp_quant_lbr_150:
	test ebx, ebx
	jz lsp_quant_lbr_110
	movaps xmm2, xmm3
	add ebx, 0x1
	cmp ebx, 0x40
	jz lsp_quant_lbr_120
lsp_quant_lbr_160:
	movaps xmm3, xmm2
lsp_quant_lbr_100:
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_lbr_130
	xor edx, edx
	movaps xmm2, xmm4
lsp_quant_lbr_140:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+edx*4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	add edx, 0x1
	cmp [ebp+0x10], edx
	jnz lsp_quant_lbr_140
	ucomiss xmm3, xmm2
	jbe lsp_quant_lbr_150
lsp_quant_lbr_110:
	mov esi, ebx
	add ebx, 0x1
	cmp ebx, 0x40
	jnz lsp_quant_lbr_160
lsp_quant_lbr_120:
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_lbr_170
	mov ebx, [ebp+0x10]
	imul ebx, esi
	xor ecx, ecx
lsp_quant_lbr_180:
	mov eax, [ebp+0xc]
	lea edx, [eax+ecx*4]
	movsx eax, byte [ecx+ebx+cdbk_nb]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_lbr_180
lsp_quant_lbr_170:
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], esi
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_lbr_190
	xor edx, edx
	mov eax, [ebp+0xc]
lsp_quant_lbr_200:
	movss xmm0, dword [eax]
	addss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_lbr_200
lsp_quant_lbr_190:
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	xor edi, edi
	xor ebx, ebx
	mov esi, cdbk_nb_low1
lsp_quant_lbr_240:
	mov edx, esi
	movaps xmm2, xmm4
	mov ecx, 0x1
lsp_quant_lbr_210:
	movsx eax, byte [edx]
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+ecx*4-0x4]
	subss xmm0, xmm1
	add edx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [ebp+ecx*4-0x44]
	addss xmm2, xmm0
	add ecx, 0x1
	cmp ecx, 0x6
	jnz lsp_quant_lbr_210
	ucomiss xmm3, xmm2
	ja lsp_quant_lbr_220
	test ebx, ebx
	jz lsp_quant_lbr_220
	movaps xmm2, xmm3
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jz lsp_quant_lbr_230
lsp_quant_lbr_250:
	movaps xmm3, xmm2
	jmp lsp_quant_lbr_240
lsp_quant_lbr_220:
	mov edi, ebx
	add ebx, 0x1
	add esi, 0x5
	cmp ebx, 0x40
	jnz lsp_quant_lbr_250
lsp_quant_lbr_230:
	lea ebx, [edi+edi*4]
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	add edx, 0x4
lsp_quant_lbr_260:
	movsx eax, byte [ebx+ecx+cdbk_nb_low2+0x13f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_lbr_260
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], edi
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	mov edi, [ebp+0xc]
	add edi, 0x14
	pxor xmm3, xmm3
	movaps xmm4, xmm3
	mov dword [ebp-0x4c], 0x0
	xor esi, esi
	mov dword [ebp-0x50], cdbk_nb_high1
lsp_quant_lbr_300:
	mov ecx, [ebp-0x50]
	movaps xmm2, xmm4
	mov ebx, 0x1
	lea edx, [ebp-0x40]
	add edx, 0x14
lsp_quant_lbr_270:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edi+ebx*4-0x4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [edx]
	addss xmm2, xmm0
	add ebx, 0x1
	add edx, 0x4
	cmp ebx, 0x6
	jnz lsp_quant_lbr_270
	ucomiss xmm3, xmm2
	ja lsp_quant_lbr_280
	test esi, esi
	jz lsp_quant_lbr_280
	movaps xmm2, xmm3
	add esi, 0x1
	add dword [ebp-0x50], 0x5
	cmp esi, 0x40
	jz lsp_quant_lbr_290
lsp_quant_lbr_310:
	movaps xmm3, xmm2
	jmp lsp_quant_lbr_300
lsp_quant_lbr_280:
	mov [ebp-0x4c], esi
	add esi, 0x1
	add dword [ebp-0x50], 0x5
	cmp esi, 0x40
	jnz lsp_quant_lbr_310
lsp_quant_lbr_290:
	mov eax, [ebp-0x4c]
	lea ebx, [eax+eax*4]
	mov ecx, 0x1
	lea edx, [edi+0x4]
lsp_quant_lbr_320:
	movsx eax, byte [ecx+ebx+cdbk_nb_high2+0x13f]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x6
	jnz lsp_quant_lbr_320
	mov dword [esp+0x8], 0x6
	mov ebx, [ebp-0x4c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_pack
	mov eax, [ebp+0x10]
	test eax, eax
	jle lsp_quant_lbr_330
	xor edx, edx
	movsd xmm1, qword [_double_0_00195310]
	mov eax, [ebp+0xc]
lsp_quant_lbr_340:
	cvtss2sd xmm0, [eax]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp+0x10], edx
	jnz lsp_quant_lbr_340
	xor ecx, ecx
lsp_quant_lbr_350:
	lea eax, [ecx*4]
	mov edx, [ebp+0xc]
	add edx, eax
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+eax]
	subss xmm0, [edx]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz lsp_quant_lbr_350
lsp_quant_lbr_330:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;lsp_quant_high(float*, float*, int, SpeexBits*)
lsp_quant_high:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	test esi, esi
	jle lsp_quant_high_10
	xor ecx, ecx
lsp_quant_high_20:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx]
	mov [edi+edx], eax
	add ecx, 0x1
	cmp esi, ecx
	jnz lsp_quant_high_20
	lea eax, [esi-0x1]
	mov [ebp-0x50], eax
	movss xmm5, dword [edi]
	lea ebx, [edi+0x4]
	mov [ebp-0x58], ebx
	movsd xmm4, qword [_double_0_04000000]
	movsd xmm3, qword [_double_10_00000000]
	mov eax, ebx
	jmp lsp_quant_high_30
lsp_quant_high_60:
	mov eax, [ebp-0x58]
lsp_quant_high_30:
	movaps xmm2, xmm5
	mov ecx, eax
	xor ebx, ebx
	xor edx, edx
	cmp ebx, [ebp-0x50]
	jz lsp_quant_high_40
lsp_quant_high_70:
	movss xmm0, dword [eax]
	subss xmm0, [eax-0x4]
lsp_quant_high_80:
	minss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	addsd xmm0, xmm4
	movapd xmm1, xmm3
	divsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	movss [ebp+edx-0x40], xmm0
	add ebx, 0x1
	cmp esi, ebx
	jle lsp_quant_high_50
	add ecx, 0x4
	add edx, 0x4
	add eax, 0x4
	test ebx, ebx
	jz lsp_quant_high_60
	movss xmm2, dword [ecx-0x4]
	subss xmm2, [ecx-0x8]
	cmp ebx, [ebp-0x50]
	jnz lsp_quant_high_70
lsp_quant_high_40:
	cvtss2sd xmm1, [eax-0x4]
	movsd xmm0, qword [_double_3_14159265]
	subsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	jmp lsp_quant_high_80
lsp_quant_high_50:
	xor edx, edx
	movsd xmm3, qword [_double_0_31250000]
	movsd xmm2, qword [_double_0_75000000]
	mov eax, edi
lsp_quant_high_90:
	cvtss2sd xmm1, [eax]
	cvtsi2sd xmm0, edx
	mulsd xmm0, xmm3
	addsd xmm0, xmm2
	subsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [eax], xmm1
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz lsp_quant_high_90
	xor edx, edx
	movss xmm1, dword [_float_256_00000000]
	mov eax, edi
lsp_quant_high_100:
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz lsp_quant_high_100
lsp_quant_high_10:
	pxor xmm4, xmm4
	movaps xmm3, xmm4
	mov dword [ebp-0x54], 0x0
	mov ecx, high_lsp_cdbk
	xor ebx, ebx
	jmp lsp_quant_high_110
lsp_quant_high_140:
	movaps xmm2, xmm4
	ucomiss xmm3, xmm2
	ja lsp_quant_high_120
lsp_quant_high_160:
	test ebx, ebx
	jz lsp_quant_high_120
	movaps xmm2, xmm3
	add ebx, 0x1
	cmp ebx, 0x40
	jz lsp_quant_high_130
lsp_quant_high_170:
	movaps xmm3, xmm2
lsp_quant_high_110:
	test esi, esi
	jle lsp_quant_high_140
	xor edx, edx
	movaps xmm2, xmm4
lsp_quant_high_150:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edi+edx*4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	add edx, 0x1
	cmp esi, edx
	jnz lsp_quant_high_150
	ucomiss xmm3, xmm2
	jbe lsp_quant_high_160
lsp_quant_high_120:
	mov [ebp-0x54], ebx
	add ebx, 0x1
	cmp ebx, 0x40
	jnz lsp_quant_high_170
lsp_quant_high_130:
	test esi, esi
	jle lsp_quant_high_180
	mov ebx, [ebp-0x54]
	imul ebx, esi
	xor ecx, ecx
lsp_quant_high_190:
	lea edx, [edi+ecx*4]
	movsx eax, byte [ecx+ebx+high_lsp_cdbk]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movss [edx], xmm0
	add ecx, 0x1
	cmp esi, ecx
	jnz lsp_quant_high_190
lsp_quant_high_180:
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	test esi, esi
	jle lsp_quant_high_200
	xor edx, edx
	mov eax, edi
lsp_quant_high_210:
	movss xmm0, dword [eax]
	addss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz lsp_quant_high_210
lsp_quant_high_200:
	pxor xmm3, xmm3
	movaps xmm4, xmm3
	mov dword [ebp-0x4c], 0x0
	mov ecx, high_lsp_cdbk2
	xor ebx, ebx
	jmp lsp_quant_high_220
lsp_quant_high_250:
	movaps xmm2, xmm4
	ucomiss xmm3, xmm2
	ja lsp_quant_high_230
lsp_quant_high_270:
	test ebx, ebx
	jz lsp_quant_high_230
	movaps xmm2, xmm3
	add ebx, 0x1
	cmp ebx, 0x40
	jz lsp_quant_high_240
lsp_quant_high_280:
	movaps xmm3, xmm2
lsp_quant_high_220:
	test esi, esi
	jle lsp_quant_high_250
	xor edx, edx
	movaps xmm2, xmm4
lsp_quant_high_260:
	movsx eax, byte [ecx]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edi+edx*4]
	subss xmm0, xmm1
	add ecx, 0x1
	mulss xmm0, xmm0
	mulss xmm0, [ebp+edx*4-0x40]
	addss xmm2, xmm0
	add edx, 0x1
	cmp esi, edx
	jnz lsp_quant_high_260
	ucomiss xmm3, xmm2
	jbe lsp_quant_high_270
lsp_quant_high_230:
	mov [ebp-0x4c], ebx
	add ebx, 0x1
	cmp ebx, 0x40
	jnz lsp_quant_high_280
lsp_quant_high_240:
	test esi, esi
	jle lsp_quant_high_290
	mov ebx, [ebp-0x4c]
	imul ebx, esi
	xor ecx, ecx
lsp_quant_high_300:
	lea edx, [edi+ecx*4]
	movsx eax, byte [ecx+ebx+high_lsp_cdbk2]
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	movss [edx], xmm0
	add ecx, 0x1
	cmp esi, ecx
	jnz lsp_quant_high_300
lsp_quant_high_290:
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x14]
	mov [esp], ebx
	call speex_bits_pack
	test esi, esi
	jle lsp_quant_high_310
	xor edx, edx
	movsd xmm1, qword [_double_0_00195310]
	mov eax, edi
lsp_quant_high_320:
	cvtss2sd xmm0, [eax]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz lsp_quant_high_320
	xor ecx, ecx
lsp_quant_high_330:
	lea eax, [ecx*4]
	lea edx, [edi+eax]
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+eax]
	subss xmm0, [edx]
	movss [edx], xmm0
	add ecx, 0x1
	cmp esi, ecx
	jnz lsp_quant_high_330
lsp_quant_high_310:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;lsp_unquant_nb(float*, int, SpeexBits*)
lsp_unquant_nb:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov edi, [ebp+0x10]
	test edx, edx
	jle lsp_unquant_nb_10
	xor eax, eax
	movsd xmm1, qword [_double_0_25000000]
lsp_unquant_nb_20:
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esi+eax*4], xmm0
	add eax, 0x1
	cmp edx, eax
	jnz lsp_unquant_nb_20
lsp_unquant_nb_10:
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea eax, [eax+eax*4]
	lea ecx, [eax+eax+cdbk_nb]
	mov ebx, 0x1
	movsd xmm2, qword [_double_0_00390620]
	lea edx, [esi+0x4]
lsp_unquant_nb_30:
	cvtss2sd xmm0, [edx-0x4]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0xb
	jnz lsp_unquant_nb_30
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_low1]
	mov bl, 0x1
	movsd xmm2, qword [_double_0_00195310]
	lea edx, [esi+0x4]
lsp_unquant_nb_40:
	cvtss2sd xmm0, [edx-0x4]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x6
	jnz lsp_unquant_nb_40
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_low2]
	mov bl, 0x1
	movsd xmm2, qword [_double_0_00097656]
	lea edx, [esi+0x4]
lsp_unquant_nb_50:
	cvtss2sd xmm0, [edx-0x4]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x6
	jnz lsp_unquant_nb_50
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_high1]
	and ebx, 0xffffff00
	movsd xmm2, qword [_double_0_00195310]
	mov edx, esi
lsp_unquant_nb_60:
	cvtss2sd xmm0, [edx+0x14]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx+0x14], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x5
	jnz lsp_unquant_nb_60
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_high2]
	and ebx, 0xffffff00
	movsd xmm2, qword [_double_0_00097656]
	mov edx, esi
lsp_unquant_nb_70:
	cvtss2sd xmm0, [edx+0x14]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx+0x14], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x5
	jnz lsp_unquant_nb_70
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;lsp_unquant_lbr(float*, int, SpeexBits*)
lsp_unquant_lbr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov edi, [ebp+0x10]
	test edx, edx
	jle lsp_unquant_lbr_10
	xor eax, eax
	movsd xmm1, qword [_double_0_25000000]
lsp_unquant_lbr_20:
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esi+eax*4], xmm0
	add eax, 0x1
	cmp edx, eax
	jnz lsp_unquant_lbr_20
lsp_unquant_lbr_10:
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea eax, [eax+eax*4]
	lea ecx, [eax+eax+cdbk_nb]
	mov ebx, 0x1
	movsd xmm2, qword [_double_0_00390620]
	lea edx, [esi+0x4]
lsp_unquant_lbr_30:
	cvtss2sd xmm0, [edx-0x4]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0xb
	jnz lsp_unquant_lbr_30
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_low1]
	mov bl, 0x1
	movsd xmm2, qword [_double_0_00195310]
	lea edx, [esi+0x4]
lsp_unquant_lbr_40:
	cvtss2sd xmm0, [edx-0x4]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x6
	jnz lsp_unquant_lbr_40
	mov dword [esp+0x4], 0x6
	mov [esp], edi
	call speex_bits_unpack_unsigned
	lea ecx, [eax+eax*4+cdbk_nb_high1]
	and ebx, 0xffffff00
	movsd xmm2, qword [_double_0_00195310]
	mov edx, esi
lsp_unquant_lbr_50:
	cvtss2sd xmm0, [edx+0x14]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx+0x14], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp ebx, 0x5
	jnz lsp_unquant_lbr_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;lsp_unquant_high(float*, int, SpeexBits*)
lsp_unquant_high:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jle lsp_unquant_high_10
	xor eax, eax
	movsd xmm2, qword [_double_0_31250000]
	movsd xmm1, qword [_double_0_75000000]
lsp_unquant_high_20:
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edi+eax*4], xmm0
	add eax, 0x1
	cmp esi, eax
	jnz lsp_unquant_high_20
lsp_unquant_high_10:
	mov dword [esp+0x4], 0x6
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	test esi, esi
	jle lsp_unquant_high_30
	imul eax, esi
	lea ecx, [eax+high_lsp_cdbk]
	xor ebx, ebx
	movsd xmm2, qword [_double_0_00390620]
	mov edx, edi
lsp_unquant_high_40:
	cvtss2sd xmm0, [edx]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp esi, ebx
	jnz lsp_unquant_high_40
lsp_unquant_high_30:
	mov dword [esp+0x4], 0x6
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	test esi, esi
	jle lsp_unquant_high_50
	imul eax, esi
	lea ecx, [eax+high_lsp_cdbk2]
	xor ebx, ebx
	movsd xmm2, qword [_double_0_00195310]
	mov edx, edi
lsp_unquant_high_60:
	cvtss2sd xmm0, [edx]
	movsx eax, byte [ecx]
	cvtsi2sd xmm1, eax
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	add ebx, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp esi, ebx
	jnz lsp_unquant_high_60
lsp_unquant_high_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of quant_lsp:
SECTION .data


;Initialized constant data of quant_lsp:
SECTION .rdata
high_lsp_cdbk2: dd 0xf706c2dc, 0x17c8f2f6, 0xd017e601, 0xf9080cef, 0xe4dc1d17, 0xfbefe3fa, 0xa0a1728, 0x624f3d2, 0x3ee3e204, 0x16ffe020, 0xeafc01f2, 0x43602d3, 0xf4c5c7e2, 0x8e1fd1b, 0xf20a05f7, 0x9134220, 0x17dbe702, 0xe1da12f1, 0xfebf705, 0x1e3e1600, 0xd2f2f40f, 0x321154d, 0x32ed1d22, 0xda090b02, 0x13edbf4, 0x62036f1, 0x2314e802, 0x181302eb, 0x90437f3, 0xff1eed27, 0x213649eb, 0xf031208, 0x6d1ed06, 0x1ced0fd, 0xe908141a, 0xc9f241ce, 0xe4dbe1ef, 0xcbefff35, 0xf80b3901, 0x40dbe2e7, 0xfd3cc05, 0xe0f1f17, 0xfe2118e7, 0x6eec8d4, 0xf404d5eb, 0xf614db11, 0xf020f22, 0xe1f51537, 0x10192efa, 0xc2f8e7f7, 0xe014111c, 0x191e1ae3, 0xeff002ed, 0x3202cd1a, 0x17be132a, 0x1303fe1d, 0xf20dbed, 0xdde1e06, 0x1f28fb0b, 0xf704d60a, 0x11baf71a, 0xea14e9fe, 0xe1e833c9, 0xf30fea16, 0xf0e4f603, 0xbc10438, 0xdaeef1ee, 0x22f910dd, 0xd1cfebff, 0x807db09, 0x6143745, 0xf7f6d3df, 0x470cf706, 0xf9d6fd0f, 0xfedd20e8, 0xfbefd6, 0xdcadffe, 0x172fdef4, 0xf8073713, 0x100e1f4a, 0xc13e6e9, 0xe1e4cfee, 0xecf202ec, 0xd284ed1, 0xfa15f5e9, 0x52f0112, 0x2e202326, 0x100d0816, 0x133312f2, 0xe60b2728, 0x22fefff, 0xea1ff1cb, 0xf0f11526, 0xf35df05, 0xfd0b56da, 0xfc0d31e8, 0x141ceef5, 0x23e6e5f4, 0xecfddde7, 0xc90a1ec3, 0xcacceaf4, 0xf4e013f2, 0xd0f80f2d, 0x8e00bf7, 0x33f3def0, 0xe0fe2612, 0xeefe16ef, 0x1b3bbae4, 0xecf6ede4, 0xebf8f7f7, 0xfe23f815, 0xcf7fd2d, 0xd9071e00, 0xa5da1b2b, 0xc9131a1e, 0xef0e3ffc, 0x20d090d, 0x3d060407, 0x1defff48, 0x8efeaff, 0x2c3fdbe4, 0xe020329, 0xf84bfa09, 0xf4f1f4f9, 0x1efc090d, 0xfbfea, 0x1fc04d3, 0x170b1605
high_lsp_cdbk: dd 0xecf20c27, 0xb4bdc3e3, 0x44bdb9e0, 0x5222e4d, 0xb8d2d0f3, 0xc6c4acaf, 0x5d52e4d8, 0x31d2d44, 0xd5e4d1ed, 0xf3f8e2dd, 0x85a5a5d9, 0xfa0a0aa0, 0xa5c4c9ee, 0xf0e5dcc8, 0x1c28b5d0, 0x923e4f6, 0xec011325, 0xe7eed7e1, 0x2db0bcdd, 0xd2fff1b, 0xc7dde300, 0xdab7b1ce, 0xe2305ed, 0xf810e9f6, 0xc2d8e805, 0xf0eae5e9, 0xb3b8d2ee, 0x121152b, 0xc0babab0, 0xdfd9ccc8, 0xededdae1, 0xfe2120f1, 0xe8f1f107, 0xc8d7dfe9, 0x5905c7e8, 0x51b2940, 0x9fc4d1f7, 0xf7ec849f, 0x1d1fb7d4, 0x73040fc, 0xfd00c7dd, 0xfafdd1e6, 0xd0b1b4d8, 0xa37510c, 0xb7d5e809, 0x510bbc7, 0x1d12cbe4, 0xf5fc0014, 0x717f306, 0xdbdbddef, 0x6c1bce2, 0x3f2f718, 0xc7e5f315, 0xd7e8b0cf, 0x1fbf0fb, 0xf90c192d, 0xf0faf103, 0xf306f8f1, 0xa9b0afd6, 0xfdf6010e, 0xe8d2bbd5, 0x624e3e4, 0xcf4c8d5, 0x92b4f36, 0x8021636, 0xccd2d5f4, 0xfba7bbda, 0x521264b, 0xa9c2cbf3, 0xc99d8fa7, 0x373edbde, 0xfe151021, 0xdae3d2ef, 0xd6d9d0da, 0xa8b8b5dc, 0x215e2d0, 0x9ec0c7f1, 0x119b4ac, 0x12f4b0d2, 0x62203f9, 0x4171f26, 0xf10e14ff, 0xe8a5b2d5, 0x1036fd0e, 0xd4e4e500, 0xa7a4adc8, 0x293822fd, 0xf8141624, 0xc2d6ddf9, 0xf60c03cf, 0xbea0a9ce, 0x926465c, 0xd6c2b9ba, 0xf9f5d5d9, 0xcec6b1ce, 0xfa1f20e1, 0xef07e7fc, 0xe5c6bada, 0x3be4add5, 0x21f1424, 0x93b0b9e5, 0xe0dfb59e, 0xf21fee1, 0xfb212bfa, 0xe5f6ea00, 0xecf5cfde, 0x879ca5d7, 0xa2939d9, 0xc5daceed, 0xeceebac4, 0xf1f8e1f8, 0xe7e6f201, 0x11201521, 0xe6eded01, 0xeaddafc6, 0xf50b1e2d, 0xa9d0e603, 0x3c6adbd, 0x2cece6ff, 0x527190a, 0xdae5ddf7, 0xf7040a07, 0x819aabd6, 0xa1c2c34, 0xd9d8c3d1, 0xdff6ffef, 0x15d0b6d6, 0xa3446fc, 0x15eae0, 0x15eaf9, 0x15eb12, 0x15eb2d, 0x15eb4b, 0x15eb67, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15eb83, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15eb9a, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ead6, 0x15ebd7, 0x15ebf4, 0x15eefc, 0x15eefc, 0x15ef07, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15ef32, 0x15ef32, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15ef46, 0x15f0a5, 0x15f246, 0x15f427, 0x15f65e, 0x15f65e, 0x15f6a6, 0x15f6ee, 0x15f717, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15f884, 0x15eefc, 0x15eefc, 0x15eefc, 0x15eefc, 0x15f8d5, 0x15eefc, 0x15eefc, 0x15faf6, 0x15ee96, 0x160fe1, 0x160fd9, 0x1610ac, 0x160f75, 0x161055, 0x16101a, 0x161007, 0x1611f3, 0x1611a5, 0x1611a5, 0x1612ea, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1612c7, 0x1611a5, 0x1611a5, 0x1611a5, 0x1612a4, 0x1611a5, 0x1611a5, 0x161293, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x161377, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x16130f, 0x1611a5, 0x161320, 0x1611a5, 0x1611a5, 0x1611a5, 0x161278, 0x1611a5, 0x1611a5, 0x161243, 0x1611a5, 0x1611a5, 0x1611a5, 0x1611a5, 0x16122b, 0x16229a, 0x1622aa, 0x1622e5, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162306, 0x162288, 0x16232e, 0x16233f, 0x162350, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162361, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162429, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x16246e, 0x1624e0, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162288, 0x162499, 0x1624c6, 0x16275c, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162752, 0x162910, 0x162849, 0x1627a9, 0x162769, 0x162716, 0x163212, 0x1631fa, 0x1632b0, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x16328a, 0x1631fa, 0x163267, 0x1631fa, 0x163244, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631fa, 0x1631e6, 0x1639c2, 0x1639c2, 0x1639ca, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x163a2f, 0x1639c2, 0x163a6c, 0x163bfb, 0x163b4d, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x163bc2, 0x163ac8, 0x163b1c, 0x163c2d, 0x163c79, 0x163cde, 0x163d34, 0x163dcf, 0x1641b5, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x163ee5, 0x163ff5, 0x164049, 0x16407f, 0x163e36, 0x163eb3, 0x164185, 0x16419d, 0x1640f3, 0x164105, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x1639c2, 0x164117, 0x164159, 0x174058, 0x1740f9, 0x1740dc, 0x1740eb, 0x1740dc, 0x1740dc, 0x1740dc, 0x174058, 0x174058, 0x174058, 0x174058, 0x1740be, 0x7fffffff, 0x0, 0x0, 0x0, 0x174ef0, 0x174dee, 0x174ec7, 0x174ec7, 0x174e6a, 0x174e40, 0x174e2d, 0x174e14, 0x174e14, 0x174f02, 0x174e14, 0x174e26, 0x1751b6, 0x1752c3, 0x175293, 0x1752b2, 0x175278, 0x175340, 0x1752e2, 0x175311, 0x1751d7, 0x17520d, 0x17521f, 0x175234, 0x175245, 0x175256, 0x175267, 0x175190, 0x0, 0x0, 0x0, 0x0, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f33, 0x176f33, 0x176f29, 0x176f29, 0x176f24, 0x176f24, 0x176f29, 0x176f29, 0x176f45, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f24, 0x176f38, 0x176f24, 0x176f29, 0x176f33, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f33, 0x176f33, 0x176f38, 0x176f38, 0x176f33, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f38, 0x176f33, 0x176f33, 0x176f38, 0x176f38, 0x176f38, 0x176f33, 0x176f29, 0x176f38, 0x176f29, 0x176f29, 0x176f38, 0x176f33, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f2e, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f2e, 0x176f38, 0x176f38, 0x176f38, 0x176f24, 0x176f24, 0x176f38, 0x176f24, 0x176f38, 0x176f4a, 0x176f24, 0x176f4a, 0x176f24, 0x176f38, 0x176f38, 0x176f33, 0x176f38, 0x176f38, 0x176f38, 0x176f29, 0x176f29, 0x176f29, 0x176f29, 0x176f24, 0x176f29, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f38, 0x176f24, 0x176f3c, 0x176f38, 0x176f22, 0x176f22, 0x176f22, 0x176f22, 0x176f22, 0x176f22, 0x176f33, 0x176f33, 0x1770d9, 0x1770d9, 0x176f84, 0x176f84, 0x1770ed, 0x1770ed, 0x176fd4, 0x176fd4, 0x176fc9, 0x176fc9, 0x176fd4, 0x176fd4, 0x17715d, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176fc9, 0x176f84, 0x176fc9, 0x176fd4, 0x1770ed, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x1770ed, 0x1770ed, 0x176f84, 0x176f84, 0x1770ed, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176f84, 0x1770ed, 0x1770ed, 0x176f84, 0x176f84, 0x176f84, 0x1770ed, 0x176fd4, 0x176f84, 0x176fd4, 0x176fd4, 0x176f84, 0x1770ed, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x1770fb, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x176fd4, 0x1770fb, 0x176f84, 0x176f84, 0x176f84, 0x176fc9, 0x176fc9, 0x176f84, 0x176fc9, 0x176f84, 0x17716b, 0x176fc9, 0x17716b, 0x176fc9, 0x176f84, 0x176f84, 0x1770ed, 0x176f84, 0x176f84, 0x176f84, 0x177109, 0x177030, 0x177109, 0x177030, 0x177084, 0x17708f, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x1770ed, 0x176f84, 0x176f84, 0x176f84, 0x176f84, 0x17709e, 0x1770cd, 0x176f84, 0x176f84, 0x176f84, 0x17716b, 0x176fd4, 0x176fd4, 0x176fd4, 0x1770ed, 0x1770ed, 0x176fe8, 0x176fe8, 0x176ffb, 0x176fdf, 0x17701f, 0x176fe8, 0x176ffb, 0x176fdf, 0x17701f, 0x17c28e, 0x17c594, 0x17aeb7, 0x17b673, 0x17b5d0, 0x17ac88, 0x17b605, 0x17b63b, 0x17b468, 0x17b49d, 0x17b4d2, 0x17b517, 0x17b52d, 0x17b561, 0x17b577, 0x17b58d, 0x17b69d, 0x17b6d7, 0x17b706, 0x17b740, 0x17b759, 0x17b769, 0x17b782, 0x17b7c6, 0x17b810, 0x17b8d8, 0x17b8a2, 0x17b8bd, 0x17b82a, 0x17b845, 0x17b860, 0x17af34, 0x17af6b, 0x17c26b, 0x17b397, 0x17b19f, 0x17ba91, 0x17baaa, 0x17bad6, 0x17bb08, 0x17b903, 0x17aed6, 0x17aef6, 0x17b8f3, 0x17ba81, 0x17a4e5, 0x17a4f5, 0x17ba51, 0x17af85, 0x17afbe, 0x17c525, 0x17c62f, 0x17c232, 0x17b049, 0x17b0a2, 0x17bb18, 0x17b377, 0x17b01a, 0x17b340, 0x17afe5, 0x17b23c, 0x17b246, 0x17b272, 0x17b272, 0x17b272, 0x17b272, 0x17b272, 0x17b272, 0x17b32c, 0x17a70a, 0x17a70a, 0x17a70a, 0x17a70a, 0x17a70a, 0x17a70a, 0x17c27a, 0x17a7b8, 0x17abb0, 0x17a4af, 0x17a52d, 0x17a541, 0x17a598, 0x17a66b, 0x17bb62, 0x17a92a, 0x17a988, 0x17aa5b, 0x17c491, 0x17b175, 0x17bb41, 0x17c08f, 0x17c0bc, 0x17c0d4, 0x17c0ec, 0x17c104, 0x17c13e, 0x17c16d, 0x17c1a9, 0x17c1f1, 0x17c202, 0x17ad6d, 0x17adff, 0x17ae91, 0x17c1d8, 0x17c33d, 0x17c356, 0x17bc90, 0x17bca9, 0x17bcc2, 0x17bcdb, 0x17bcf4, 0x17bd0d, 0x17bd26, 0x17bd3f, 0x17bd58, 0x17bd71, 0x17bd8a, 0x17bda3, 0x17bdbc, 0x17bdd4, 0x17bdd4, 0x17bede, 0x17bf8e, 0x17a4af, 0x17b940, 0x17c55c, 0x17c574, 0x17a48a, 0x17bc7f, 0x17c3d5, 0x17c36f, 0x17c3a1, 0x17bbcd, 0x17acae, 0x17b190, 0x17d531, 0x17d531, 0x17d531, 0x17d531, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17d548, 0x17d548, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17d548, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17d548, 0x17c95d, 0x17d548, 0x17c95d, 0x17c95d, 0x17d508, 0x17d508, 0x17d508, 0x17d508, 0x17d508, 0x17d508, 0x17d508, 0x17d4de, 0x17d4de, 0x17d4de, 0x17d4de, 0x17d4de, 0x17d4de, 0x17d4de, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17d548, 0x17d548, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17c95d, 0x17d531, 0x17d893, 0x17d893, 0x17d85f, 0x17d85f, 0x17d85f, 0x17d59d, 0x17a46b, 0x17d799, 0x17a46b, 0x17a46b, 0x17d8ca, 0x17d8ca, 0x17a46b, 0x17a46b, 0x17d8db, 0x17d8db, 0x17dccd, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17dd50, 0x17a46b, 0x17a46b, 0x17a46b, 0x17d35c, 0x17a46b, 0x17d366, 0x17a46b, 0x17a46b, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17daa2, 0x17d59d, 0x17a46b, 0x17a46b, 0x17d7f6, 0x17d7f6, 0x17d7fd, 0x17d7f6, 0x17d7fd, 0x17d7bd, 0x17d7c4, 0x17d7bd, 0x17d7c4, 0x17a46b, 0x17dbf8, 0x17d792, 0x17a46b, 0x17a46b, 0x17a46b, 0x17dc1c, 0x17dc1c, 0x17dc1c, 0x17dc1c, 0x17a46b, 0x17dcb5, 0x17a46b, 0x17a46b, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17d386, 0x17a46b, 0x17d82f, 0x17d836, 0x17dc28, 0x17d836, 0x17a46b, 0x17d55b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17a46b, 0x17d85f
cdbk_nb: dd 0x2226131e, 0x2b2e2028, 0xee052b3a, 0xc9dfd8e7, 0x1c2214cc, 0xa49fc1ec, 0x312f353d, 0xcbf24b35, 0xfd00b1b3, 0x1a1613fb, 0x42c9cbf7, 0x4455485a, 0xd7fc344a, 0xe1eee1c6, 0x121e201b, 0x5080318, 0x1c1afdf4, 0xd9fe3f4a, 0xb696b3bd, 0x41493b3b, 0x4847282c, 0x58625352, 0xe1fa3c59, 0xd9f3d0d1, 0x4f0207f7, 0xefc4d9ff, 0x32415157, 0xbdeb132d, 0xced7a9a5, 0x4a271207, 0x27e4e10a, 0x5170d18, 0xa1d2d38, 0xddf5f3fb, 0xf8f6f8ee, 0xebb3b9e7, 0x3f321002, 0xe0055757, 0xbccdd8, 0x2236060c, 0x3420f405, 0x3b454044, 0xf00e2d41, 0xbdbfd8e1, 0x252f3129, 0xacb5ccf5, 0x2a3039fc, 0xcdf5212a, 0xdfabc, 0x201af808, 0x2400cbe9, 0x69614c38, 0xe4ff616f, 0xcad5d8d9, 0x23eed8d4, 0xe4edec10, 0x262f1dd6, 0xe3032d4a, 0x98b0c2d0, 0x3b3b38df, 0x482e110a, 0x7b756554, 0xdff96a7b, 0xbdbacdcf, 0x4346e1e5, 0xecabc2f0, 0x50564752, 0xc6ed4a55, 0xdfe3d3b5, 0x392de7ee, 0xcfbd6f4, 0x4034241c, 0xf70d5251, 0x316e4e5, 0x61a1602, 0x2cdd4fa, 0x2b300a0f, 0xc2ed2231, 0xe89aa7ac, 0x443d1108, 0x13171827, 0xf0cfb10, 0xd4f80f1b, 0xe0eec4cf, 0x3e3634e4, 0xbab3d0f8, 0x3f536542, 0xcef4253d, 0x1121c0b5, 0x4d0f190d, 0x48e3d601, 0x1f312e40, 0xd1f82c3d, 0x13e2d2ca, 0xf0ff14, 0xf7eef410, 0xeaf6e5e6, 0xd1f62d35, 0x9397aeb5, 0x4d311908, 0x75724132, 0x6073767c, 0xd3f73d5a, 0xc7b5c4c1, 0x1d140b08, 0xd5cfdd00, 0x28232f28, 0xb4e82637, 0x3e59099, 0x4b342217, 0xcd5e308, 0x1d23263f, 0xb190818, 0xd5eef101, 0x152825f9, 0xededc8ec, 0x1d0bfefc, 0xd4fe3f33, 0x1ea7b5c2, 0x334a3339, 0x40442e32, 0x373f3441, 0xf7122b41, 0xbbc9dde6, 0x11080603, 0x9faac3f1, 0x4a5d5601, 0xdaff434e, 0x2730d0be, 0xff11191d, 0x271d0d0d, 0x52453332, 0xdcfe6261, 0xe2f0e5d2, 0xfcf9fcf3, 0xfaf5fb19, 0xc21ebe7, 0xdaf81d1f, 0xa7bcc1cc, 0x4a0affdf, 0x5b3bf1fe, 0x57656969, 0xdff93e54, 0xd1caddce, 0x51521119, 0x15adc8f3, 0x192a1f3a, 0xbee84148, 0xfe09c8a5, 0x4b450a15, 0x160be802, 0x22261c19, 0xe3072130, 0xff0f11e6, 0xfe000e, 0x6bdd7fa, 0x213f7fe, 0xbdea4a55, 0x3ceb9ac, 0x3e02f70b
cdbk_nb_high1: dd 0x151df8e6, 0x21d91304, 0x3638dcf9, 0xfc1d2830, 0xd5bed6e8, 0x25fe13c4, 0xc4dbf629, 0x4dea12c0, 0x4192849, 0xfebeed13, 0xe15050b, 0xfcaae71a, 0xdb1a0112, 0x18ff250a, 0x14f5c5f4, 0xf0f022fa, 0xcde4132a, 0xa042035, 0xdef4153e, 0xd0d0041b, 0xf91fcfce, 0xfce7d6eb, 0x23bead5, 0xfaf70c1b, 0xc6e0f8f0, 0x29fbe3f0, 0xd2dfe217, 0x34daf6f3, 0xf7ef0134, 0xfae71a0a, 0x3735ec21, 0xd6fbe019, 0x5421517, 0x4b0914e4, 0xd9d6f91d, 0x15e9030f, 0xe3010b06, 0x360a3f0e, 0xcfcde81a, 0xfcde907, 0x193c01be, 0xfce2000a, 0x3b1311f1, 0x21fb0428, 0xbac6ea06, 0x3cfa17fb, 0xd1f0e32c, 0x32ed34e3, 0x1f23101c, 0x6eb0024, 0x2a161b15, 0xf8d8be07, 0x2e1307, 0x2d243cfc, 0xe0fae3f9, 0xf70602d9, 0xdecd1421, 0x613fa12, 0xe3ed050b, 0xd3f52afe, 0x2539c9eb, 0xf0bdf202, 0x3045dae5, 0x14ef0213, 0xefdef0ec, 0x490ac3e7, 0xc0d8102d, 0x38eae3ef, 0xf508d911, 0xf3eee708, 0x393608ed, 0xfce6ef24, 0x2a28eb06, 0x351f14fc, 0x1fcbde0a, 0xf0023ef, 0xb7c1ecfa, 0x111d1916, 0xbbd9e308, 0xfbf10f12
cdbk_nb_high2: dd 0xf7102f0b, 0xc01ae0d2, 0xf926fb22, 0xb702142f, 0x14d3fd9d, 0xfa0fcc46, 0x151faef9, 0xfd27332f, 0xf9d70009, 0x2caf1, 0xd309e11b, 0xe8e8daea, 0x517df08, 0xeeefdc32, 0x130dfecd, 0xf4f10c2b, 0x726263d, 0xff06000d, 0x1b093e03, 0xdd26df16, 0xf7d51ef7, 0xfc04ffe0, 0xf8f5fb01, 0xf60b1f26, 0x1dbebd6, 0xddf30f2b, 0x170feeed, 0xeb013be6, 0xced70835, 0x1504e4f2, 0x5d8e419, 0x3304d7d8, 0x1f8f8df, 0x190cc411, 0x2b2211d7, 0xdb072d13, 0xfe38f118, 0x430f623, 0xfb05fed1, 0xdffd05ca, 0xd4fe1ef6, 0xf709dae8, 0xc806042a, 0xd809f02c, 0xaec12e6, 0xfcebd71c, 0xe220ee0d, 0x160f25fd, 0x3d8321c, 0x3307c0e3, 0xe511f5ed, 0xf418c0d8, 0x2503e5f9, 0xf702ff30, 0x12ededa, 0xf313fa1b, 0x14220a1a, 0xfa322819, 0xe8091ef9, 0xc347e900, 0xfcde3a16, 0x19dfcf02, 0xf0faf81e, 0xf826024d, 0x38e2fadd, 0xec211f4e, 0x1614d90d, 0x4f81504, 0xd7ad0afa, 0xfd5e709, 0xd9def4f9, 0x1e13dfdb, 0xe72adf10, 0xf12cbc19, 0x3217fcf5, 0xd5d9040e, 0x93ce214, 0x131007ec, 0x101d25df, 0xe52607dd
cdbk_nb_low1: dd 0x2df1ccde, 0x34151702, 0xfff7df18, 0xf3d7d409, 0xef162cef, 0x16fffcfa, 0x2101a26, 0xdedd1b32, 0x6d7f7, 0x833def0, 0xfcfe1f2, 0x21312ddf, 0xcac2dbf5, 0xb8fb0b2d, 0xf5f4ff0b, 0xd5f51b18, 0xf4212b2e, 0xfc01fff7, 0xbb9c7e9, 0xf8111008, 0x35d7e1ec, 0x4103f030, 0xe0e9f8e8, 0xf6cfe0db, 0x52606ef, 0x8d2eff7, 0x2d060334, 0xfaf92728, 0x81fb6de, 0x442bf001, 0x4e1edf5, 0xeffa0006, 0xe2f0daf0, 0xf0d90902, 0x30f62bff, 0xe1f00303, 0x2b443efd, 0x8f6030d, 0xc0cc814, 0xf116eefe, 0x701dcd8, 0x2e010029, 0xf4fcc2fa, 0xf3adf5fe, 0xf6215bfe, 0xf0f50400, 0xe25204f, 0xe4eb3309, 0x1500dec8, 0x1c0be609, 0xfee9cad6, 0x81e1ff1, 0xdcd9bed9, 0xd2d8e41f, 0x18162823, 0xde173021, 0x1120280e, 0x1a19fd1b, 0xbefc3f3, 0xfa3c1f04, 0xdc0d7e6, 0x1f36e610, 0xf5f7e9f5, 0xdeebb9de, 0x1d3237dd, 0xdacee5ea, 0x392a2139, 0xb1a30, 0xfc1ae1cf, 0x254e05f2, 0xf4cf0011, 0x20e1ae9, 0xf4efd502, 0x8fcf80a, 0x14fa0c12, 0xe7f3faf4, 0x31280f22, 0x140d0807, 0xfeeaed14, 0xcd3302f8
cdbk_nb_low2: dd 0xe8eb35fa, 0xfc111a04, 0xdc1119db, 0xfa031ff3, 0x1ff60f1b, 0xf6f61a1c, 0xff910d8, 0xf7290d, 0xf9fa32fc, 0x16260e, 0xf30102d0, 0xc4fd20ed, 0xe8ffef0b, 0xfb23ffde, 0xd2c1ce5, 0xf52a0f19, 0xdc23330f, 0xf4fc0814, 0x31d113e3, 0xe310fcf1, 0x4e20ed9, 0xcdfbf719, 0xe0d8fdf2, 0xf8f70526, 0x47eafffc, 0xee1a0efd, 0xe7d718ea, 0x131706e8, 0xe5e627f6, 0xf9022d41, 0xf416f8e6, 0xdd100f10, 0xf8eb21fb, 0x22211700, 0x6241506, 0xdb08eaf9, 0xb261ff2, 0xe0d9fdfc, 0xfae920f8, 0xe41410f4, 0xcc0d17fc, 0xdf0616ff, 0xc204fad8, 0x23e6050d, 0x39020b27, 0xe4ec09f5, 0xfafb34df, 0xf0f216fe, 0xc60123d0, 0xff210d14, 0xeaee38b6, 0xf2060ce1, 0xd1f7fe04, 0xef1dfd0a, 0x2f0e3dfb, 0xd94802f4, 0xcb405cef, 0xdae2f1cd, 0x1be4e3d7, 0xdd092409, 0x14eb51d6, 0xeffbf019, 0xe40f15dd, 0x9fe0230, 0x1ed81ded, 0xf012eeee, 0xf4ec0fc7, 0x21f1dbf1, 0xf3ea15d9, 0xda0d0b23, 0xe5171dc1, 0xe6031220, 0xbec0212a, 0x23810ef, 0x151f0324, 0xc708d9d7, 0x13fe250e, 0xe3e9eddc, 0xf8fd01f0, 0xbf401ff6


;Zero initialized global or static variables of quant_lsp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_0_04000000:		dq 0x3fa47ae147ae147b	; 0.04
_double_10_00000000:		dq 0x4024000000000000	; 10
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_0_25000000:		dq 0x3fd0000000000000	; 0.25
_float_256_00000000:		dd 0x43800000	; 256
_double_0_00097656:		dq 0x3f4ffffaa19c4774	; 0.00097656
_double_0_00195310:		dq 0x3f5fffe5280d6543	; 0.0019531
_double_0_31250000:		dq 0x3fd4000000000000	; 0.3125
_double_0_75000000:		dq 0x3fe8000000000000	; 0.75
_double_0_00390620:		dq 0x3f6fffe5280d6543	; 0.0039062

