;Imports of cb_search:
	extern residue_percep_zero
	extern speex_rand_vec
	extern vq_nbest_sign
	extern speex_bits_pack
	extern vq_nbest
	extern syn_percep_zero
	extern speex_bits_unpack_unsigned

;Exports of cb_search:
	global noise_codebook_quant
	global noise_codebook_unquant
	global split_cb_search_shape_sign
	global split_cb_shape_sign_unquant


SECTION .text


;noise_codebook_quant(float*, float*, float*, float*, void const*, int, int, float*, float*, SpeexBits*, char*, int, int)
noise_codebook_quant:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x20]
	mov edi, [ebp+0x24]
	mov edx, [ebp+0x30]
	mov eax, edx
	neg eax
	and eax, 0x3
	add edx, eax
	lea eax, [edx+ebx*4]
	mov esi, edx
	mov [esp+0x1c], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov [esp+0x10], edx
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call residue_percep_zero
	test ebx, ebx
	jle noise_codebook_quant_10
	xor ecx, ecx
noise_codebook_quant_20:
	lea eax, [ecx*4]
	lea edx, [edi+eax]
	movss xmm0, dword [edx]
	addss xmm0, [esi+eax]
	movss [edx], xmm0
	add ecx, 0x1
	cmp ebx, ecx
	jnz noise_codebook_quant_20
	xor eax, eax
noise_codebook_quant_30:
	mov edx, [ebp+0x8]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp ebx, eax
	jnz noise_codebook_quant_30
noise_codebook_quant_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;noise_codebook_unquant(float*, void const*, int, SpeexBits*, char*)
noise_codebook_unquant:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x3f800000
	pop ebp
	jmp speex_rand_vec


;split_cb_search_shape_sign(float*, float*, float*, float*, void const*, int, int, float*, float*, SpeexBits*, char*, int, int)
split_cb_search_shape_sign:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov edi, [ebp+0x30]
	mov eax, [ebp+0x34]
	cmp eax, 0xa
	jg split_cb_search_shape_sign_10
	test eax, eax
	jle split_cb_search_shape_sign_20
	cmp eax, 0x1
	jnz split_cb_search_shape_sign_30
split_cb_search_shape_sign_20:
	mov eax, [ebp+0x18]
	mov esi, [eax]
	mov edx, [eax+0x4]
	mov [ebp-0x98], edx
	mov ecx, [eax+0xc]
	mov dword [ebp-0x8c], 0x1
	shl dword [ebp-0x8c], cl
	mov ecx, [eax+0x8]
	mov [ebp-0x80], ecx
	mov ebx, [eax+0x10]
	mov [ebp-0x94], ebx
	mov ebx, 0x4
	mov eax, ebx
	sub eax, edi
	and eax, 0x3
	lea eax, [edi+eax]
	mov edx, [ebp-0x8c]
	imul edx, esi
	lea edx, [eax+edx*4]
	mov [ebp-0x84], eax
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	mov edi, [ebp-0x8c]
	lea ecx, [edx+edi*4]
	mov [ebp-0x88], edx
	mov eax, ebx
	sub eax, ecx
	and eax, 0x3
	add ecx, eax
	mov eax, [ebp+0x20]
	shl eax, 0x2
	mov [ebp-0xa4], eax
	add ecx, eax
	mov edx, ecx
	sub edx, eax
	mov [ebp-0xa0], edx
	sub ebx, ecx
	and ebx, 0x3
	add ecx, ebx
	add ecx, eax
	mov [ebp-0x90], ecx
	sub ecx, eax
	mov [ebp-0x9c], ecx
	mov eax, [ebp+0x20]
	test eax, eax
	jle split_cb_search_shape_sign_40
	xor ecx, ecx
split_cb_search_shape_sign_50:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx]
	mov edi, [ebp-0xa0]
	mov [edi+edx], eax
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_50
split_cb_search_shape_sign_40:
	mov eax, [ebp-0x90]
	neg eax
	and eax, 0x3
	add eax, [ebp-0x90]
	mov [ebp-0x50], eax
	mov [ebp-0x78], eax
	mov eax, [ebp-0x8c]
	test eax, eax
	jle split_cb_search_shape_sign_60
	mov dword [ebp-0x7c], 0x0
	pxor xmm7, xmm7
	movss xmm3, dword [_float_0_03125000]
	mov edi, [ebp-0x88]
	mov dword [ebp-0x144], 0x0
split_cb_search_shape_sign_130:
	mov eax, [ebp-0x144]
	mov edx, [ebp-0x84]
	lea eax, [edx+eax*4]
	mov [ebp-0x74], eax
	test esi, esi
	jle split_cb_search_shape_sign_70
	mov edx, [ebp-0x80]
	add edx, [ebp-0x144]
	xor ecx, ecx
split_cb_search_shape_sign_80:
	movsx eax, byte [edx]
	cvtsi2ss xmm0, eax
	mov ebx, [ebp-0x78]
	movss [ebx+ecx*4], xmm0
	add ecx, 0x1
	add edx, 0x1
	cmp esi, ecx
	jnz split_cb_search_shape_sign_80
split_cb_search_shape_sign_70:
	mov dword [edi], 0x0
	test esi, esi
	jle split_cb_search_shape_sign_90
	mov eax, [ebp+0x28]
	mov [ebp-0x170], eax
	xor ecx, ecx
	movaps xmm2, xmm3
	mov edx, eax
split_cb_search_shape_sign_120:
	xor eax, eax
	movaps xmm1, xmm7
	mov ebx, [ebp-0x78]
split_cb_search_shape_sign_100:
	movss xmm0, dword [ebx+eax*4]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	add eax, 0x1
	sub edx, 0x4
	cmp ecx, eax
	jge split_cb_search_shape_sign_100
	mulss xmm1, xmm2
split_cb_search_shape_sign_110:
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm0, [edi]
	movss [edi], xmm0
	mov eax, [ebp-0x74]
	movss [eax+ecx*4], xmm1
	add ecx, 0x1
	add dword [ebp-0x170], 0x4
	cmp esi, ecx
	jz split_cb_search_shape_sign_90
	movaps xmm1, xmm7
	test ecx, ecx
	js split_cb_search_shape_sign_110
	mov edx, [ebp-0x170]
	jmp split_cb_search_shape_sign_120
split_cb_search_shape_sign_90:
	add dword [ebp-0x7c], 0x1
	add [ebp-0x144], esi
	add edi, 0x4
	mov edx, [ebp-0x7c]
	cmp [ebp-0x8c], edx
	jnz split_cb_search_shape_sign_130
split_cb_search_shape_sign_60:
	mov eax, [ebp-0x98]
	test eax, eax
	jle split_cb_search_shape_sign_140
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x13c], 0x0
	lea ecx, [esi*4]
	mov [ebp-0x140], ecx
split_cb_search_shape_sign_270:
	mov ebx, [ebp-0xa0]
	add ebx, [ebp-0x13c]
	mov eax, [ebp-0x94]
	test eax, eax
	jz split_cb_search_shape_sign_150
	mov edi, [ebp-0x90]
	mov [esp+0x20], edi
	lea eax, [ebp-0x20]
	mov [esp+0x1c], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x18], edx
	mov dword [esp+0x14], 0x1
	mov ecx, [ebp-0x88]
	mov [esp+0x10], ecx
	mov edi, [ebp-0x8c]
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov [esp], ebx
	call vq_nbest_sign
split_cb_search_shape_sign_1150:
	mov eax, [ebp-0x94]
	mov edi, [ebp+0x18]
	add eax, [edi+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x2c]
	mov [esp], eax
	call speex_bits_pack
	mov eax, [ebp-0x1c]
	cmp [ebp-0x8c], eax
	jle split_cb_search_shape_sign_160
	movss xmm1, dword [_float_1_00000000]
split_cb_search_shape_sign_1160:
	mov edi, eax
	imul edi, esi
	mov edx, [ebp-0x84]
	lea ecx, [edx+edi*4]
	ucomiss xmm1, [_float_0_00000000]
	jbe split_cb_search_shape_sign_170
	test esi, esi
	jle split_cb_search_shape_sign_180
	mov eax, ebx
	xor edx, edx
split_cb_search_shape_sign_190:
	movss xmm0, dword [eax]
	subss xmm0, [ecx+edx*4]
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz split_cb_search_shape_sign_190
split_cb_search_shape_sign_1180:
	cvtss2sd xmm1, xmm1
	movsd xmm4, qword [_double_0_03125000]
	mulsd xmm1, xmm4
	mov ecx, [ebp-0x80]
	add ecx, edi
	mov edx, [ebp-0x9c]
	add edx, [ebp-0x13c]
	xor ebx, ebx
split_cb_search_shape_sign_200:
	movsx eax, byte [ecx]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	add ebx, 0x1
	add ecx, 0x1
	add edx, 0x4
	cmp esi, ebx
	jnz split_cb_search_shape_sign_200
	add dword [ebp-0x4c], 0x1
	mov ecx, [ebp-0x140]
	add [ebp-0x13c], ecx
	add [ebp-0x138], esi
	mov edi, [ebp+0x28]
	add edi, ecx
	mov dword [ebp-0x2c], 0x0
	mov ebx, [ebp-0x1c]
	mov [ebp-0x110], ebx
	mov edx, ebx
	cmp [ebp-0x8c], edx
	jg split_cb_search_shape_sign_210
split_cb_search_shape_sign_250:
	sub edx, [ebp-0x8c]
	movsd xmm1, qword [_double__1_00000000]
split_cb_search_shape_sign_260:
	mulsd xmm1, xmm4
	imul edx, esi
	mov eax, [ebp-0x2c]
	add eax, [ebp-0x80]
	movsx eax, byte [eax+edx]
	cvtsi2sd xmm0, eax
	mulsd xmm1, xmm0
	cvtsd2ss xmm2, xmm1
	mov eax, [ebp-0x138]
	cmp [ebp+0x20], eax
	jle split_cb_search_shape_sign_220
	mov ecx, [ebp-0xa0]
	lea eax, [ecx+eax*4]
	mov edx, edi
	xor ecx, ecx
	mov ebx, [ebp+0x20]
	sub ebx, [ebp-0x138]
split_cb_search_shape_sign_230:
	movaps xmm1, xmm2
	mulss xmm1, [edx]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	movss [eax], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, ebx
	jnz split_cb_search_shape_sign_230
split_cb_search_shape_sign_220:
	add dword [ebp-0x2c], 0x1
	sub edi, 0x4
	cmp esi, [ebp-0x2c]
	jz split_cb_search_shape_sign_240
	mov edx, [ebp-0x110]
	cmp [ebp-0x8c], edx
	jle split_cb_search_shape_sign_250
split_cb_search_shape_sign_210:
	movsd xmm1, qword [_double_1_00000000]
	jmp split_cb_search_shape_sign_260
split_cb_search_shape_sign_180:
	add dword [ebp-0x4c], 0x1
	mov edi, [ebp-0x140]
	add [ebp-0x13c], edi
	add [ebp-0x138], esi
split_cb_search_shape_sign_240:
	mov ebx, [ebp-0x4c]
	cmp [ebp-0x98], ebx
	jg split_cb_search_shape_sign_270
split_cb_search_shape_sign_140:
	mov eax, [ebp+0x20]
	test eax, eax
	jle split_cb_search_shape_sign_280
	xor ecx, ecx
split_cb_search_shape_sign_290:
	lea eax, [ecx*4]
	mov edx, [ebp+0x24]
	add edx, eax
	movss xmm0, dword [edx]
	mov esi, [ebp-0x9c]
	addss xmm0, [esi+eax]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_290
split_cb_search_shape_sign_280:
	mov edi, [ebp+0x38]
	test edi, edi
	jnz split_cb_search_shape_sign_300
split_cb_search_shape_sign_1100:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
split_cb_search_shape_sign_10:
	mov dword [ebp-0xb4], 0xa
	mov eax, 0xa
split_cb_search_shape_sign_1140:
	mov ebx, 0x4
	mov edx, ebx
	sub edx, edi
	and edx, 0x3
	lea edx, [edi+edx]
	lea esi, [eax*4]
	add edx, esi
	mov eax, edx
	sub eax, esi
	mov [ebp-0xe0], eax
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [esi+edx]
	mov ecx, edx
	sub ecx, esi
	mov [ebp-0xdc], ecx
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [esi+edx]
	mov edi, edx
	sub edi, esi
	mov [ebp-0xcc], edi
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [esi+edx]
	mov eax, edx
	sub eax, esi
	mov [ebp-0xd0], eax
	mov ecx, [ebp+0x18]
	mov ecx, [ecx]
	mov [ebp-0xbc], ecx
	mov edi, [ebp+0x18]
	mov edi, [edi+0x4]
	mov [ebp-0xb8], edi
	mov eax, [ebp+0x18]
	mov ecx, [eax+0xc]
	mov dword [ebp-0xc0], 0x1
	shl dword [ebp-0xc0], cl
	mov ecx, [eax+0x8]
	mov [ebp-0xc4], ecx
	mov edi, [eax+0x10]
	mov [ebp-0xa8], edi
	mov eax, ebx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	mov ecx, [ebp-0xbc]
	imul ecx, [ebp-0xc0]
	lea ecx, [edx+ecx*4]
	mov [ebp-0xfc], edx
	mov eax, ebx
	sub eax, ecx
	and eax, 0x3
	add ecx, eax
	mov edx, [ebp-0xc0]
	lea eax, [ecx+edx*4]
	mov [ebp-0xf8], ecx
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	mov ecx, [ebp+0x20]
	shl ecx, 0x2
	add eax, ecx
	mov edi, eax
	sub edi, ecx
	mov [ebp-0xf4], edi
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ecx+eax]
	mov edx, eax
	sub edx, ecx
	mov [ebp-0xf0], edx
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ecx+eax]
	mov edi, eax
	sub edi, ecx
	mov [ebp-0xec], edi
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	mov edi, [ebp-0xb8]
	lea edx, [eax+edi*4]
	mov [ebp-0xc8], eax
	sub ebx, edx
	and ebx, 0x3
	add edx, ebx
	mov eax, [ebp+0x20]
	imul eax, [ebp-0xb4]
	lea eax, [edx+eax*8]
	mov [ebp-0x40], eax
	mov ebx, [ebp-0xb4]
	test ebx, ebx
	jle split_cb_search_shape_sign_310
	xor ebx, ebx
	add ecx, edx
	mov eax, [ebp+0x20]
	shl eax, 0x3
	mov [ebp-0x16c], eax
split_cb_search_shape_sign_320:
	lea edi, [ebx*4]
	mov [ebp-0x174], edi
	mov eax, [ebp-0xe0]
	mov [eax+edi], edx
	mov eax, [ebp-0xdc]
	mov [eax+edi], ecx
	add ebx, 0x1
	add edx, [ebp-0x16c]
	add ecx, [ebp-0x16c]
	cmp [ebp-0xb4], ebx
	jnz split_cb_search_shape_sign_320
split_cb_search_shape_sign_310:
	mov ecx, 0x4
	mov eax, ecx
	sub eax, [ebp-0x40]
	and eax, 0x3
	add eax, [ebp-0x40]
	lea eax, [esi+eax]
	mov edx, eax
	sub edx, esi
	mov [ebp-0xb0], edx
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [esi+eax]
	mov ebx, eax
	sub ebx, esi
	mov [ebp-0xac], ebx
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [esi+eax]
	mov edi, eax
	sub edi, esi
	mov [ebp-0xe8], edi
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [esi+eax]
	mov edx, eax
	sub edx, esi
	mov [ebp-0xe4], edx
	sub ecx, eax
	and ecx, 0x3
	add eax, ecx
	mov edx, [ebp-0xb8]
	imul edx, [ebp-0xb4]
	lea edx, [eax+edx*8]
	mov [ebp-0x3c], edx
	mov ecx, [ebp-0xb4]
	test ecx, ecx
	jle split_cb_search_shape_sign_330
	mov dword [ebp-0x34], 0x0
	mov ecx, [ebp-0xb8]
	lea ecx, [eax+ecx*4]
	mov [ebp-0x12c], ecx
	mov [ebp-0x130], eax
	mov ebx, [ebp-0xb8]
	shl ebx, 0x3
	mov [ebp-0x134], ebx
	mov eax, [ebp-0x34]
split_cb_search_shape_sign_360:
	shl eax, 0x2
	mov edi, [ebp-0xd0]
	add edi, eax
	mov esi, [ebp-0x130]
	mov [edi], esi
	mov esi, [ebp-0xcc]
	add esi, eax
	mov eax, [ebp-0x12c]
	mov [esi], eax
	mov edx, [ebp-0xb8]
	test edx, edx
	jle split_cb_search_shape_sign_340
	xor ebx, ebx
split_cb_search_shape_sign_350:
	lea eax, [ebx*4]
	mov ecx, eax
	add ecx, [edi]
	mov edx, [esi]
	mov dword [edx+eax], 0xffffffff
	mov dword [ecx], 0xffffffff
	add ebx, 0x1
	cmp [ebp-0xb8], ebx
	jnz split_cb_search_shape_sign_350
split_cb_search_shape_sign_340:
	add dword [ebp-0x34], 0x1
	mov edx, [ebp-0x134]
	add [ebp-0x130], edx
	add [ebp-0x12c], edx
	mov ecx, [ebp-0x34]
	cmp [ebp-0xb4], ecx
	jz split_cb_search_shape_sign_330
	mov eax, ecx
	jmp split_cb_search_shape_sign_360
split_cb_search_shape_sign_330:
	mov eax, [ebp+0x20]
	test eax, eax
	jle split_cb_search_shape_sign_370
	xor ecx, ecx
split_cb_search_shape_sign_380:
	lea edx, [ecx*4]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx]
	mov esi, [ebp-0xf4]
	mov [esi+edx], eax
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_380
split_cb_search_shape_sign_370:
	mov eax, [ebp-0xb4]
	test eax, eax
	jle split_cb_search_shape_sign_390
	xor esi, esi
split_cb_search_shape_sign_420:
	mov eax, [ebp+0x20]
	test eax, eax
	jle split_cb_search_shape_sign_400
	xor ebx, ebx
split_cb_search_shape_sign_410:
	lea eax, [ebx*4]
	mov edi, [ebp-0xe0]
	mov ecx, [edi+esi*4]
	mov edi, [ebp-0xf4]
	mov edx, [edi+eax]
	mov [ecx+eax], edx
	add ebx, 0x1
	cmp [ebp+0x20], ebx
	jnz split_cb_search_shape_sign_410
split_cb_search_shape_sign_400:
	add esi, 0x1
	cmp [ebp-0xb4], esi
	jnz split_cb_search_shape_sign_420
split_cb_search_shape_sign_390:
	mov eax, [ebp-0x3c]
	neg eax
	and eax, 0x3
	mov esi, [ebp-0x3c]
	add esi, eax
	mov eax, [ebp-0xc0]
	test eax, eax
	jle split_cb_search_shape_sign_430
	mov dword [ebp-0x70], 0x0
	pxor xmm7, xmm7
	movss xmm3, dword [_float_0_03125000]
	mov edi, [ebp-0xf8]
	mov dword [ebp-0x128], 0x0
split_cb_search_shape_sign_500:
	mov eax, [ebp-0x128]
	mov edx, [ebp-0xfc]
	lea eax, [edx+eax*4]
	mov [ebp-0x6c], eax
	mov eax, [ebp-0xbc]
	test eax, eax
	jle split_cb_search_shape_sign_440
	mov edx, [ebp-0xc4]
	add edx, [ebp-0x128]
	xor ecx, ecx
split_cb_search_shape_sign_450:
	movsx eax, byte [edx]
	cvtsi2ss xmm0, eax
	movss [esi+ecx*4], xmm0
	add ecx, 0x1
	add edx, 0x1
	cmp [ebp-0xbc], ecx
	jnz split_cb_search_shape_sign_450
split_cb_search_shape_sign_440:
	mov dword [edi], 0x0
	mov eax, [ebp-0xbc]
	test eax, eax
	jle split_cb_search_shape_sign_460
	mov ebx, [ebp+0x28]
	xor ecx, ecx
	movaps xmm2, xmm3
split_cb_search_shape_sign_490:
	mov edx, ebx
	xor eax, eax
	movaps xmm1, xmm7
split_cb_search_shape_sign_470:
	movss xmm0, dword [esi+eax*4]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	add eax, 0x1
	sub edx, 0x4
	cmp ecx, eax
	jge split_cb_search_shape_sign_470
	mulss xmm1, xmm2
split_cb_search_shape_sign_480:
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm0, [edi]
	movss [edi], xmm0
	mov edx, [ebp-0x6c]
	movss [edx+ecx*4], xmm1
	add ecx, 0x1
	add ebx, 0x4
	cmp [ebp-0xbc], ecx
	jz split_cb_search_shape_sign_460
	movaps xmm1, xmm7
	test ecx, ecx
	js split_cb_search_shape_sign_480
	jmp split_cb_search_shape_sign_490
split_cb_search_shape_sign_460:
	add dword [ebp-0x70], 0x1
	mov ecx, [ebp-0xbc]
	add [ebp-0x128], ecx
	add edi, 0x4
	mov ebx, [ebp-0x70]
	cmp [ebp-0xc0], ebx
	jnz split_cb_search_shape_sign_500
split_cb_search_shape_sign_430:
	mov ebx, [ebp-0xb4]
	test ebx, ebx
	jle split_cb_search_shape_sign_510
	xor eax, eax
split_cb_search_shape_sign_520:
	mov esi, [ebp-0xe4]
	mov dword [esi+eax*4], 0x0
	add eax, 0x1
	cmp [ebp-0xb4], eax
	jnz split_cb_search_shape_sign_520
split_cb_search_shape_sign_510:
	mov ecx, [ebp-0xb8]
	test ecx, ecx
	jle split_cb_search_shape_sign_530
	mov edi, [ebp-0xb4]
	mov eax, [ebp-0xe8]
	lea edi, [eax+edi*4-0x4]
	mov [ebp-0x108], edi
	mov eax, [ebp-0xe0]
	mov [ebp-0xd8], eax
	mov edx, [ebp-0xdc]
	mov [ebp-0xd4], edx
	mov dword [ebp-0x30], 0x0
	jmp split_cb_search_shape_sign_540
split_cb_search_shape_sign_560:
	mov ecx, [ebp-0x30]
	add ecx, 0x1
	mov [ebp-0x114], ecx
	mov edi, ecx
	mov [ebp-0x30], edi
	mov eax, [ebp-0xd8]
	mov edx, [ebp-0xd4]
	mov [ebp-0xd8], edx
	cmp [ebp-0xb8], edi
	jz split_cb_search_shape_sign_550
split_cb_search_shape_sign_1020:
	mov [ebp-0xd4], eax
split_cb_search_shape_sign_540:
	mov ecx, [ebp-0xb4]
	test ecx, ecx
	jle split_cb_search_shape_sign_560
	xor eax, eax
split_cb_search_shape_sign_570:
	mov ecx, [ebp-0xe8]
	mov dword [ecx+eax*4], 0xc0000000
	add eax, 0x1
	cmp [ebp-0xb4], eax
	jnz split_cb_search_shape_sign_570
	mov ebx, [ebp-0x30]
	imul ebx, [ebp-0xbc]
	mov [ebp-0x68], ebx
	shl ebx, 0x2
	mov [ebp-0x64], ebx
	mov esi, [ebp-0x30]
	add esi, 0x1
	mov [ebp-0x114], esi
	mov edi, [ebp-0xbc]
	imul edi, esi
	mov [ebp-0x60], edi
	mov eax, [ebp-0x30]
	shl eax, 0x2
	mov [ebp-0x54], eax
	mov dword [ebp-0x38], 0x0
	shl edi, 0x2
	mov [ebp-0x120], edi
	mov edx, [ebp-0xd8]
	mov [ebp-0x124], edx
	mov ecx, [ebp-0x60]
	sub ecx, [ebp-0x68]
	mov [ebp-0x14c], ecx
	mov [ebp-0x150], ecx
	mov [ebp-0x154], edi
	mov ebx, [ebp+0x20]
	sub ebx, [ebp-0x60]
	mov [ebp-0x158], ebx
	mov [ebp-0x15c], ebx
	mov esi, edx
	mov eax, [ebp-0x64]
	add eax, [esi]
	mov edx, [ebp-0xa8]
	test edx, edx
	jz split_cb_search_shape_sign_580
split_cb_search_shape_sign_710:
	mov edi, [ebp-0x3c]
	mov [esp+0x20], edi
	mov edx, [ebp-0xac]
	mov [esp+0x1c], edx
	mov ecx, [ebp-0xb0]
	mov [esp+0x18], ecx
	mov ebx, [ebp-0xb4]
	mov [esp+0x14], ebx
	mov esi, [ebp-0xf8]
	mov [esp+0x10], esi
	mov edi, [ebp-0xc0]
	mov [esp+0xc], edi
	mov edx, [ebp-0xbc]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xfc]
	mov [esp+0x4], ecx
	mov [esp], eax
	call vq_nbest_sign
split_cb_search_shape_sign_720:
	mov dword [ebp-0x104], 0x0
	pxor xmm7, xmm7
	mov eax, [ebp-0xb0]
	mov [ebp-0x11c], eax
	mov edx, [ebp+0x20]
	sub edx, [ebp-0x60]
	mov [ebp-0x148], edx
	movsd xmm5, qword [_double_1_00000000]
	movsd xmm6, qword [_double__1_00000000]
split_cb_search_shape_sign_690:
	mov ecx, [ebp-0x124]
	mov esi, [ecx]
	mov ebx, [ebp-0x68]
	cmp [ebp-0x60], ebx
	jle split_cb_search_shape_sign_590
	mov edi, [ebp-0x64]
	lea ecx, [esi+edi]
	mov edx, [ebp-0xf4]
	add edx, edi
	xor ebx, ebx
split_cb_search_shape_sign_600:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	cmp ebx, [ebp-0x14c]
	jnz split_cb_search_shape_sign_600
split_cb_search_shape_sign_590:
	mov edx, [ebp-0x11c]
	mov eax, [edx]
	cmp [ebp-0xc0], eax
	jle split_cb_search_shape_sign_610
	movss xmm0, dword [_float_1_00000000]
	imul eax, [ebp-0xbc]
	mov edi, [ebp-0xfc]
	lea ecx, [edi+eax*4]
	ucomiss xmm0, xmm7
	jbe split_cb_search_shape_sign_620
split_cb_search_shape_sign_960:
	mov eax, [ebp-0xbc]
	test eax, eax
	jle split_cb_search_shape_sign_630
	mov eax, [ebp-0xf4]
	add eax, [ebp-0x64]
	xor edx, edx
split_cb_search_shape_sign_640:
	movss xmm0, dword [eax]
	subss xmm0, [ecx+edx*4]
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp-0xbc], edx
	jnz split_cb_search_shape_sign_640
split_cb_search_shape_sign_630:
	mov eax, [ebp-0x38]
	mov edx, [ebp-0xe4]
	movss xmm3, dword [edx+eax*4]
	mov ecx, [ebp-0x68]
	cmp [ebp-0x60], ecx
	jle split_cb_search_shape_sign_650
	mov eax, [ebp-0xf4]
	add eax, [ebp-0x64]
	xor edx, edx
split_cb_search_shape_sign_660:
	movss xmm0, dword [eax]
	mulss xmm0, xmm0
	addss xmm3, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, [ebp-0x150]
	jnz split_cb_search_shape_sign_660
split_cb_search_shape_sign_650:
	mov ebx, [ebp-0x108]
	movss xmm0, dword [ebx]
	ucomiss xmm0, xmm3
	ja split_cb_search_shape_sign_670
	ucomiss xmm0, [_float__1_00000000]
	jb split_cb_search_shape_sign_680
split_cb_search_shape_sign_730:
	mov edx, [ebp-0xb4]
split_cb_search_shape_sign_940:
	add dword [ebp-0x104], 0x1
	add dword [ebp-0x11c], 0x4
	cmp [ebp-0x104], edx
	jnz split_cb_search_shape_sign_690
	mov ebx, [ebp-0x30]
	test ebx, ebx
	jz split_cb_search_shape_sign_700
	add dword [ebp-0x38], 0x1
	add dword [ebp-0x124], 0x4
	cmp [ebp-0x38], edx
	jz split_cb_search_shape_sign_700
	mov esi, [ebp-0x124]
	mov eax, [ebp-0x64]
	add eax, [esi]
	mov edx, [ebp-0xa8]
	test edx, edx
	jnz split_cb_search_shape_sign_710
split_cb_search_shape_sign_580:
	mov ebx, [ebp-0x3c]
	mov [esp+0x20], ebx
	mov esi, [ebp-0xac]
	mov [esp+0x1c], esi
	mov edi, [ebp-0xb0]
	mov [esp+0x18], edi
	mov edx, [ebp-0xb4]
	mov [esp+0x14], edx
	mov ecx, [ebp-0xf8]
	mov [esp+0x10], ecx
	mov ebx, [ebp-0xc0]
	mov [esp+0xc], ebx
	mov esi, [ebp-0xbc]
	mov [esp+0x8], esi
	mov edi, [ebp-0xfc]
	mov [esp+0x4], edi
	mov [esp], eax
	call vq_nbest
	jmp split_cb_search_shape_sign_720
split_cb_search_shape_sign_680:
	jp split_cb_search_shape_sign_730
split_cb_search_shape_sign_670:
	mov ecx, [ebp-0x60]
	cmp [ebp+0x20], ecx
	jle split_cb_search_shape_sign_740
	mov ebx, [ebp-0x120]
	lea ecx, [esi+ebx]
	mov edx, [ebp-0xf4]
	add edx, ebx
	xor ebx, ebx
split_cb_search_shape_sign_750:
	mov eax, [ecx]
	mov [edx], eax
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	mov eax, [ebp+0x20]
	sub eax, [ebp-0x60]
	cmp ebx, eax
	jnz split_cb_search_shape_sign_750
split_cb_search_shape_sign_740:
	mov esi, [ebp-0xbc]
	test esi, esi
	jle split_cb_search_shape_sign_760
	mov esi, [ebp-0xbc]
	mov edi, [ebp+0x28]
	lea ebx, [edi+esi*4]
	xor esi, esi
	movsd xmm4, qword [_double_0_03125000]
split_cb_search_shape_sign_800:
	mov eax, [ebp-0x11c]
	mov edx, [eax]
	cmp [ebp-0xc0], edx
	jle split_cb_search_shape_sign_770
	movapd xmm1, xmm5
split_cb_search_shape_sign_950:
	mulsd xmm1, xmm4
	imul edx, [ebp-0xbc]
	mov ecx, [ebp-0xc4]
	lea eax, [esi+ecx]
	movsx eax, byte [eax+edx]
	cvtsi2sd xmm0, eax
	mulsd xmm1, xmm0
	cvtsd2ss xmm2, xmm1
	mov edi, [ebp-0x60]
	cmp [ebp+0x20], edi
	jle split_cb_search_shape_sign_780
	mov eax, [ebp-0xf4]
	add eax, [ebp-0x154]
	mov edx, ebx
	xor ecx, ecx
split_cb_search_shape_sign_790:
	movaps xmm1, xmm2
	mulss xmm1, [edx]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	movss [eax], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, [ebp-0x148]
	jnz split_cb_search_shape_sign_790
split_cb_search_shape_sign_780:
	add esi, 0x1
	sub ebx, 0x4
	cmp [ebp-0xbc], esi
	jnz split_cb_search_shape_sign_800
split_cb_search_shape_sign_760:
	mov eax, [ebp-0xe8]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm3
	ja split_cb_search_shape_sign_810
	movss xmm1, dword [_float__1_00000000]
	ucomiss xmm1, xmm0
	ja split_cb_search_shape_sign_810
	mov dword [ebp-0x44], 0x0
split_cb_search_shape_sign_840:
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0xb4]
	cmp [ebp-0x44], eax
	jz split_cb_search_shape_sign_820
	mov edx, [ebp-0x44]
	mov [ebp-0x10c], edx
	mov ecx, edx
	shl ecx, 0x2
	mov [ebp-0x48], ecx
	mov ebx, [ebp-0xe8]
	movss xmm0, dword [ebx+edx*4]
	ucomiss xmm0, xmm3
	ja split_cb_search_shape_sign_830
	ucomiss xmm1, xmm0
	jbe split_cb_search_shape_sign_840
	mov edi, [ebp-0x44]
split_cb_search_shape_sign_980:
	mov esi, [ebp-0xb4]
	sub esi, 0x1
	mov [ebp-0x100], esi
	cmp esi, edi
	jle split_cb_search_shape_sign_850
	shl esi, 0x2
	mov [ebp-0x5c], esi
	mov eax, [ebp-0xd4]
	add eax, esi
	mov [ebp-0x58], eax
split_cb_search_shape_sign_890:
	mov ebx, [ebp-0x60]
	cmp [ebp+0x20], ebx
	jle split_cb_search_shape_sign_860
	mov ecx, ebx
	xor ebx, ebx
	shl ecx, 0x2
split_cb_search_shape_sign_870:
	mov edx, [ebp-0x58]
	mov eax, [edx]
	mov edx, [edx-0x4]
	mov edx, [edx+ecx]
	mov [eax+ecx], edx
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, [ebp-0x158]
	jnz split_cb_search_shape_sign_870
split_cb_search_shape_sign_860:
	mov edi, [ebp-0xd0]
	add edi, [ebp-0x5c]
	lea esi, [edi-0x4]
	xor ebx, ebx
split_cb_search_shape_sign_880:
	lea edx, [ebx*4]
	mov ecx, [edi]
	mov eax, [esi]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [ebp-0xb8], ebx
	jnz split_cb_search_shape_sign_880
	mov edi, [ebp-0xe8]
	mov edx, [ebp-0x5c]
	mov eax, [edi+edx-0x4]
	mov [edi+edx], eax
	sub dword [ebp-0x100], 0x1
	sub edx, 0x4
	mov [ebp-0x5c], edx
	sub dword [ebp-0x58], 0x4
	mov ecx, [ebp-0x44]
	cmp [ebp-0x100], ecx
	jg split_cb_search_shape_sign_890
split_cb_search_shape_sign_850:
	mov esi, [ebp-0x60]
	cmp [ebp+0x20], esi
	jle split_cb_search_shape_sign_900
	mov edi, [ebp-0xd4]
	add edi, [ebp-0x48]
	mov ebx, [ebp-0x120]
	mov ecx, [ebp-0xf4]
	add ecx, ebx
	xor esi, esi
split_cb_search_shape_sign_910:
	mov edx, [edi]
	mov eax, [ecx]
	mov [edx+ebx], eax
	add esi, 0x1
	add ebx, 0x4
	add ecx, 0x4
	cmp esi, [ebp-0x15c]
	jnz split_cb_search_shape_sign_910
split_cb_search_shape_sign_900:
	mov edi, [ebp-0xd0]
	add edi, [ebp-0x48]
	mov [ebp-0x178], edi
	xor ebx, ebx
	mov eax, edi
	jmp split_cb_search_shape_sign_920
split_cb_search_shape_sign_930:
	mov eax, [ebp-0x178]
split_cb_search_shape_sign_920:
	lea edx, [ebx*4]
	mov ecx, [eax]
	mov esi, [ebp-0x38]
	mov edi, [ebp-0xcc]
	mov eax, [edi+esi*4]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [ebp-0xb8], ebx
	jnz split_cb_search_shape_sign_930
	mov ecx, [ebp-0x10c]
	shl ecx, 0x2
	mov eax, [ebp-0xd0]
	mov edx, [eax+ecx]
	mov ebx, [ebp-0x11c]
	mov eax, [ebx]
	mov esi, [ebp-0x54]
	mov [edx+esi], eax
	mov edi, [ebp-0xe8]
	movss [edi+ecx], xmm3
	mov edx, [ebp-0xb4]
	jmp split_cb_search_shape_sign_940
split_cb_search_shape_sign_770:
	sub edx, [ebp-0xc0]
	movapd xmm1, xmm6
	jmp split_cb_search_shape_sign_950
split_cb_search_shape_sign_610:
	sub eax, [ebp-0xc0]
	movss xmm0, dword [_float__1_00000000]
	imul eax, [ebp-0xbc]
	mov edi, [ebp-0xfc]
	lea ecx, [edi+eax*4]
	ucomiss xmm0, xmm7
	ja split_cb_search_shape_sign_960
split_cb_search_shape_sign_620:
	mov edi, [ebp-0xbc]
	test edi, edi
	jle split_cb_search_shape_sign_630
	mov eax, [ebp-0xf4]
	add eax, [ebp-0x64]
	xor edx, edx
split_cb_search_shape_sign_970:
	movss xmm0, dword [eax]
	addss xmm0, [ecx+edx*4]
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp [ebp-0xbc], edx
	jnz split_cb_search_shape_sign_970
	jmp split_cb_search_shape_sign_630
split_cb_search_shape_sign_810:
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x10c], 0x0
	mov dword [ebp-0x48], 0x0
	mov edi, [ebp-0x44]
	jmp split_cb_search_shape_sign_980
split_cb_search_shape_sign_820:
	mov edx, eax
	jmp split_cb_search_shape_sign_940
split_cb_search_shape_sign_830:
	mov edi, edx
	jmp split_cb_search_shape_sign_980
split_cb_search_shape_sign_700:
	mov dword [ebp-0x16c], 0x0
split_cb_search_shape_sign_1000:
	xor ebx, ebx
	mov esi, [ebp-0x16c]
	shl esi, 0x2
split_cb_search_shape_sign_990:
	lea edx, [ebx*4]
	mov edi, [ebp-0xcc]
	mov ecx, [edi+esi]
	mov edi, [ebp-0xd0]
	mov eax, [edi+esi]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [ebp-0xb8], ebx
	jnz split_cb_search_shape_sign_990
	add dword [ebp-0x16c], 0x1
	mov eax, [ebp-0xb4]
	cmp [ebp-0x16c], eax
	jnz split_cb_search_shape_sign_1000
	xor ecx, ecx
split_cb_search_shape_sign_1010:
	lea edx, [ecx*4]
	mov ebx, [ebp-0xe8]
	mov eax, [ebx+edx]
	mov esi, [ebp-0xe4]
	mov [esi+edx], eax
	add ecx, 0x1
	cmp ecx, [ebp-0xb4]
	jnz split_cb_search_shape_sign_1010
	mov edi, [ebp-0x114]
	mov [ebp-0x30], edi
	mov eax, [ebp-0xd8]
	mov edx, [ebp-0xd4]
	mov [ebp-0xd8], edx
	cmp [ebp-0xb8], edi
	jnz split_cb_search_shape_sign_1020
split_cb_search_shape_sign_550:
	xor ebx, ebx
split_cb_search_shape_sign_1030:
	lea edx, [ebx*4]
	mov esi, [ebp-0xd0]
	mov eax, [esi]
	mov ecx, [eax+edx]
	mov edi, [ebp-0xc8]
	mov [edi+edx], ecx
	mov eax, [ebp-0xa8]
	mov edx, [ebp+0x18]
	add eax, [edx+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov ecx, [ebp+0x2c]
	mov [esp], ecx
	call speex_bits_pack
	add ebx, 0x1
	cmp [ebp-0xb8], ebx
	jnz split_cb_search_shape_sign_1030
	xor esi, esi
	movsd xmm2, qword [_double_0_03125000]
	movss xmm3, dword [_float_1_00000000]
	movss xmm4, dword [_float__1_00000000]
	xor edi, edi
	mov ebx, [ebp-0xbc]
	shl ebx, 0x2
	mov [ebp-0x118], ebx
split_cb_search_shape_sign_1070:
	mov edx, [ebp-0xc8]
	mov eax, [edx+esi*4]
	cmp [ebp-0xc0], eax
	jle split_cb_search_shape_sign_1040
	movaps xmm0, xmm3
split_cb_search_shape_sign_1120:
	mov edx, [ebp-0xbc]
	test edx, edx
	jle split_cb_search_shape_sign_1050
	cvtss2sd xmm1, xmm0
	mulsd xmm1, xmm2
	imul eax, [ebp-0xbc]
	mov ecx, [ebp-0xf0]
	add ecx, edi
	xor ebx, ebx
	mov edx, [ebp-0xc4]
	add edx, eax
split_cb_search_shape_sign_1060:
	movsx eax, byte [edx]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ecx], xmm0
	add ebx, 0x1
	add edx, 0x1
	add ecx, 0x4
	cmp [ebp-0xbc], ebx
	jnz split_cb_search_shape_sign_1060
split_cb_search_shape_sign_1050:
	add esi, 0x1
	add edi, [ebp-0x118]
	cmp [ebp-0xb8], esi
	jnz split_cb_search_shape_sign_1070
split_cb_search_shape_sign_530:
	mov edi, [ebp+0x20]
	test edi, edi
	jle split_cb_search_shape_sign_1080
	xor ecx, ecx
split_cb_search_shape_sign_1090:
	lea eax, [ecx*4]
	mov edx, [ebp+0x24]
	add edx, eax
	movss xmm0, dword [edx]
	mov ebx, [ebp-0xf0]
	addss xmm0, [ebx+eax]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_1090
split_cb_search_shape_sign_1080:
	mov esi, [ebp+0x38]
	test esi, esi
	jz split_cb_search_shape_sign_1100
	mov esi, [ebp-0x3c]
	mov [esp+0x1c], esi
	mov edi, [ebp+0x1c]
	mov [esp+0x18], edi
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	mov edx, [ebp-0xec]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov ebx, [ebp+0x10]
	mov [esp+0x8], ebx
	mov esi, [ebp+0xc]
	mov [esp+0x4], esi
	mov edi, [ebp-0xf0]
	mov [esp], edi
	call syn_percep_zero
	mov ebx, [ebp+0x20]
	test ebx, ebx
	jle split_cb_search_shape_sign_1100
	xor ecx, ecx
split_cb_search_shape_sign_1110:
	lea eax, [ecx*4]
	mov edx, [ebp+0x8]
	add edx, eax
	movss xmm0, dword [edx]
	mov ebx, [ebp-0xec]
	subss xmm0, [ebx+eax]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_1110
	jmp split_cb_search_shape_sign_1100
split_cb_search_shape_sign_1040:
	sub eax, [ebp-0xc0]
	movaps xmm0, xmm4
	jmp split_cb_search_shape_sign_1120
split_cb_search_shape_sign_300:
	mov eax, [ebp-0xa4]
	add eax, [ebp-0x50]
	mov ebx, eax
	sub ebx, [ebp-0xa4]
	mov [esp+0x1c], eax
	mov edi, [ebp+0x1c]
	mov [esp+0x18], edi
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov esi, [ebp+0xc]
	mov [esp+0x4], esi
	mov edi, [ebp-0x9c]
	mov [esp], edi
	call syn_percep_zero
	mov esi, [ebp+0x20]
	test esi, esi
	jle split_cb_search_shape_sign_1100
	xor ecx, ecx
split_cb_search_shape_sign_1130:
	lea eax, [ecx*4]
	mov edx, [ebp+0x8]
	add edx, eax
	movss xmm0, dword [edx]
	subss xmm0, [ebx+eax]
	movss [edx], xmm0
	add ecx, 0x1
	cmp [ebp+0x20], ecx
	jnz split_cb_search_shape_sign_1130
	jmp split_cb_search_shape_sign_1100
split_cb_search_shape_sign_30:
	mov [ebp-0xb4], eax
	jmp split_cb_search_shape_sign_1140
split_cb_search_shape_sign_150:
	mov edx, [ebp-0x90]
	mov [esp+0x20], edx
	lea ecx, [ebp-0x20]
	mov [esp+0x1c], ecx
	lea edi, [ebp-0x1c]
	mov [esp+0x18], edi
	mov dword [esp+0x14], 0x1
	mov eax, [ebp-0x88]
	mov [esp+0x10], eax
	mov edx, [ebp-0x8c]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov ecx, [ebp-0x84]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call vq_nbest
	jmp split_cb_search_shape_sign_1150
split_cb_search_shape_sign_160:
	sub eax, [ebp-0x8c]
	movss xmm1, dword [_float__1_00000000]
	jmp split_cb_search_shape_sign_1160
split_cb_search_shape_sign_170:
	test esi, esi
	jle split_cb_search_shape_sign_180
	mov eax, ebx
	xor edx, edx
split_cb_search_shape_sign_1170:
	movss xmm0, dword [eax]
	addss xmm0, [ecx+edx*4]
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp esi, edx
	jnz split_cb_search_shape_sign_1170
	jmp split_cb_search_shape_sign_1180
	add [eax], al


;split_cb_shape_sign_unquant(float*, void const*, int, SpeexBits*, char*)
split_cb_shape_sign_unquant:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x18]
	mov eax, [ebp+0xc]
	mov edi, [eax]
	mov ebx, [eax+0x4]
	mov [ebp-0x24], ebx
	mov esi, [eax+0x8]
	mov [ebp-0x28], esi
	mov eax, [eax+0x10]
	mov [ebp-0x20], eax
	mov ecx, 0x4
	mov eax, ecx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	mov eax, ebx
	shl eax, 0x2
	add edx, eax
	mov ebx, edx
	sub ebx, eax
	mov [ebp-0x30], ebx
	sub ecx, edx
	and ecx, 0x3
	lea ecx, [edx+ecx]
	mov [ebp-0x2c], ecx
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jg split_cb_shape_sign_unquant_10
split_cb_shape_sign_unquant_70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
split_cb_shape_sign_unquant_10:
	xor ebx, ebx
	xor esi, esi
	mov eax, [ebp-0x20]
	test eax, eax
	jnz split_cb_shape_sign_unquant_20
split_cb_shape_sign_unquant_30:
	mov eax, [ebp-0x2c]
	mov dword [eax+ebx*4], 0x0
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	mov edx, [ebp-0x30]
	mov [edx+esi], eax
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x24], ebx
	jnz split_cb_shape_sign_unquant_30
split_cb_shape_sign_unquant_100:
	mov dword [ebp-0x1c], 0x0
	movsd xmm3, qword [_double_0_03125000]
	movss xmm5, dword [_float__1_00000000]
	movss xmm4, dword [_float_1_00000000]
	mov dword [ebp-0x34], 0x0
	lea ebx, [edi*4]
	mov [ebp-0x38], ebx
	mov esi, [ebp-0x1c]
	shl esi, 0x2
	mov [ebp-0x3c], esi
	mov eax, [ebp-0x2c]
	mov edx, [eax+esi]
	test edx, edx
	jz split_cb_shape_sign_unquant_40
split_cb_shape_sign_unquant_80:
	movaps xmm0, xmm5
split_cb_shape_sign_unquant_90:
	test edi, edi
	jle split_cb_shape_sign_unquant_50
	cvtss2sd xmm2, xmm0
	mulsd xmm2, xmm3
	mov ecx, [ebp-0x34]
	add ecx, [ebp+0x8]
	xor ebx, ebx
split_cb_shape_sign_unquant_60:
	cvtss2sd xmm1, [ecx]
	mov edx, edi
	mov esi, [ebp-0x30]
	mov eax, [ebp-0x3c]
	imul edx, [esi+eax]
	mov esi, [ebp-0x28]
	lea eax, [ebx+esi]
	movsx eax, byte [eax+edx]
	cvtsi2sd xmm0, eax
	mulsd xmm0, xmm2
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ecx], xmm1
	add ebx, 0x1
	add ecx, 0x4
	cmp edi, ebx
	jnz split_cb_shape_sign_unquant_60
split_cb_shape_sign_unquant_50:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x38]
	add [ebp-0x34], eax
	mov edx, [ebp-0x1c]
	cmp [ebp-0x24], edx
	jz split_cb_shape_sign_unquant_70
	mov esi, edx
	shl esi, 0x2
	mov [ebp-0x3c], esi
	mov eax, [ebp-0x2c]
	mov edx, [eax+esi]
	test edx, edx
	jnz split_cb_shape_sign_unquant_80
split_cb_shape_sign_unquant_40:
	movaps xmm0, xmm4
	jmp split_cb_shape_sign_unquant_90
split_cb_shape_sign_unquant_20:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	mov edx, [ebp-0x2c]
	mov [edx+ebx*4], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	mov edx, [ebp-0x30]
	mov [edx+esi], eax
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x24], ebx
	jnz split_cb_shape_sign_unquant_20
	jmp split_cb_shape_sign_unquant_100
	nop


;Initialized global or static variables of cb_search:
SECTION .data


;Initialized constant data of cb_search:
SECTION .rdata


;Zero initialized global or static variables of cb_search:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_03125000:		dd 0x3d000000	; 0.03125
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_double_0_03125000:		dq 0x3fa0000000000000	; 0.03125
_double__1_00000000:		dq 0xbff0000000000000	; -1
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_float__1_00000000:		dd 0xbf800000	; -1

