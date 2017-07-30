;Imports of nb_celp:
	extern log
	extern speex_warning_int
	extern speex_encoder_ctl
	extern speex_alloc
	extern comb_filter_mem_init
	extern speex_default_user_handler
	extern vbr_init
	extern exp
	extern cos
	extern speex_free
	extern vbr_destroy
	extern speex_move
	extern speex_bits_unpack_unsigned
	extern speex_inband_handler
	extern speex_bits_remaining
	extern speex_wb_mode
	extern speex_mode_query
	extern speex_bits_advance
	extern speex_warning
	extern bw_lpc
	extern compute_rms
	extern iir_mem2
	extern filter_mem2
	extern speex_rand
	extern lsp_interpolate
	extern lsp_enforce_margin
	extern lsp_to_lpc
	extern signal_mul
	extern comb_filter
	extern speex_error
	extern speex_rand_vec
	extern _spx_autocorr
	extern _spx_lpc
	extern lpc_to_lsp
	extern open_loop_nbest_pitch
	extern fir_mem2
	extern speex_bits_pack
	extern floor
	extern noise_codebook_quant
	extern vbr_analysis
	extern vbr_nb_thresh
	extern floorf
	extern compute_impulse_response
	extern signal_div
	extern scal_quant

;Exports of nb_celp:
	global exc_gain_quant_scal1
	global exc_gain_quant_scal3
	global exc_gain_quant_scal1_bound
	global exc_gain_quant_scal3_bound
	global nb_decoder_ctl
	global nb_encoder_ctl
	global nb_decoder_init
	global nb_encoder_init
	global nb_decoder_destroy
	global nb_encoder_destroy
	global nb_decode
	global nb_encode


SECTION .text


;nb_decoder_ctl(void*, int, void*)
nb_decoder_ctl:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x10]
	cmp eax, 0x16
	jz nb_decoder_ctl_10
	jle nb_decoder_ctl_20
	cmp eax, 0x25
	jz nb_decoder_ctl_30
	jle nb_decoder_ctl_40
	cmp eax, 0x66
	jz nb_decoder_ctl_50
	jle nb_decoder_ctl_60
	cmp eax, 0x67
	jz nb_decoder_ctl_70
	cmp eax, 0x384
	jnz nb_decoder_ctl_80
	movss xmm0, dword [ebx+0x7c]
	movss [ebp-0xc], xmm0
	movss xmm0, dword [ebx+0x74]
	divss xmm0, dword [ebp-0xc]
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0x18]
	movss xmm0, dword [ebx+0x78]
	divss xmm0, dword [ebp-0xc]
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0x20]
	movsd xmm0, qword [ebp-0x18]
	divsd xmm0, qword [ebp-0x20]
	movsd [ebp-0x18], xmm0
	cvtsd2ss xmm0, xmm0
	ucomiss xmm0, [_float_1_00000000]
	jbe nb_decoder_ctl_90
	movss xmm0, dword [_float_100_00000000]
nb_decoder_ctl_330:
	cvttss2si eax, xmm0
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_20:
	cmp eax, 0x7
	jz nb_decoder_ctl_110
	jg nb_decoder_ctl_120
	cmp eax, 0x1
	jz nb_decoder_ctl_130
	jle nb_decoder_ctl_140
	cmp eax, 0x3
	jz nb_decoder_ctl_150
	cmp eax, 0x6
	jz nb_decoder_ctl_160
nb_decoder_ctl_80:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_nb_ctl_r
	call speex_warning_int
	mov eax, 0xffffffff
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
nb_decoder_ctl_10:
	mov eax, [esi+0x4]
	mov [ebx+0x1d8], eax
	mov eax, [esi+0x8]
	mov [ebx+0x1dc], eax
	mov eax, [esi]
	mov [ebx+0x1d4], eax
nb_decoder_ctl_210:
	xor eax, eax
nb_decoder_ctl_100:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
nb_decoder_ctl_40:
	cmp eax, 0x19
	jz nb_decoder_ctl_170
	jle nb_decoder_ctl_180
	cmp eax, 0x1a
	jz nb_decoder_ctl_190
	cmp eax, 0x24
	jnz nb_decoder_ctl_80
	mov eax, [esi]
	mov [ebx+0x80], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_120:
	cmp eax, 0x9
	jz nb_decoder_ctl_110
	jl nb_decoder_ctl_160
	cmp eax, 0x13
	jz nb_decoder_ctl_200
	cmp eax, 0x14
	jnz nb_decoder_ctl_80
	mov ecx, [esi]
	lea eax, [ecx+ecx*4]
	lea eax, [ebx+eax*4]
	mov edx, [esi+0x4]
	mov [eax+0x98], edx
	mov edx, [esi+0x8]
	mov [eax+0x9c], edx
	mov [eax+0x94], ecx
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_160:
	mov eax, [esi]
	mov [ebx+0x88], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_110:
	mov eax, [ebx+0x88]
	mov [esi], eax
	jmp nb_decoder_ctl_210
nb_decoder_ctl_30:
	mov eax, [ebx+0x80]
	mov [esi], eax
	xor eax, eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
nb_decoder_ctl_60:
	cmp eax, 0x64
	jz nb_decoder_ctl_220
	cmp eax, 0x65
	jnz nb_decoder_ctl_80
	mov eax, [ebx+0xc]
	test eax, eax
	jle nb_decoder_ctl_210
	xor ecx, ecx
nb_decoder_ctl_230:
	lea eax, [ecx*4]
	mov edx, [ebx+0x3c]
	mov edx, [edx+eax]
	mov [esi+eax], edx
	add ecx, 0x1
	cmp [ebx+0xc], ecx
	jg nb_decoder_ctl_230
	jmp nb_decoder_ctl_210
nb_decoder_ctl_180:
	cmp eax, 0x18
	jnz nb_decoder_ctl_80
	mov eax, [esi]
	mov [ebx+0x24], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_170:
	mov eax, [ebx+0x24]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_130:
	mov eax, [ebx+0x8c]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_50:
	mov eax, [ebx+0xc]
	test eax, eax
	jle nb_decoder_ctl_210
	xor ecx, ecx
nb_decoder_ctl_240:
	lea eax, [ecx*4]
	mov edx, [ebx+0x40]
	mov edx, [eax+edx]
	mov [eax+esi], edx
	add ecx, 0x1
	cmp ecx, [ebx+0xc]
	jl nb_decoder_ctl_240
	jmp nb_decoder_ctl_210
nb_decoder_ctl_150:
	mov eax, [ebx+0xc]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_140:
	test eax, eax
	jnz nb_decoder_ctl_80
	mov eax, [esi]
	mov [ebx+0x8c], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_190:
	mov eax, [ebx+0x18]
	add eax, eax
	test eax, eax
	jle nb_decoder_ctl_250
	xor edx, edx
nb_decoder_ctl_260:
	mov eax, [ebx+0x54]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	mov eax, [ebx+0x18]
	add eax, eax
	cmp edx, eax
	jl nb_decoder_ctl_260
nb_decoder_ctl_250:
	mov eax, [ebx+0xc]
	add eax, [ebx+0x20]
	add eax, 0x1
	test eax, eax
	jle nb_decoder_ctl_270
	xor edx, edx
nb_decoder_ctl_280:
	mov eax, [ebx+0x38]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	mov eax, [ebx+0xc]
	add eax, [ebx+0x20]
	add eax, 0x1
	cmp edx, eax
	jl nb_decoder_ctl_280
nb_decoder_ctl_270:
	mov eax, [ebx+0xc]
	test eax, eax
	jle nb_decoder_ctl_210
	xor edx, edx
nb_decoder_ctl_290:
	mov eax, [ebx+0x30]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp edx, [ebx+0xc]
	jl nb_decoder_ctl_290
	jmp nb_decoder_ctl_210
nb_decoder_ctl_70:
	mov eax, [ebx+0x1f8]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_220:
	mov eax, [ebx+0x14]
	test eax, eax
	jle nb_decoder_ctl_210
	xor ecx, ecx
nb_decoder_ctl_300:
	lea eax, [ecx*4]
	mov edx, [ebx+0x58]
	mov edx, [edx+eax]
	mov [esi+eax], edx
	add ecx, 0x1
	cmp [ebx+0x14], ecx
	jg nb_decoder_ctl_300
	jmp nb_decoder_ctl_210
nb_decoder_ctl_200:
	mov edx, [ebx+0x88]
	mov eax, [ebx+0x84]
	mov edx, [eax+edx*4]
	test edx, edx
	jz nb_decoder_ctl_310
	mov eax, [ebx+0x24]
	imul eax, [edx+0x40]
	cdq
	idiv dword [ebx+0xc]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_310:
	mov eax, [ebx+0x24]
	lea eax, [eax+eax*4]
	cdq
	idiv dword [ebx+0xc]
	mov [esi], eax
	xor eax, eax
	jmp nb_decoder_ctl_100
nb_decoder_ctl_90:
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	ja nb_decoder_ctl_320
	movaps xmm0, xmm1
	jmp nb_decoder_ctl_330
nb_decoder_ctl_320:
	mulss xmm0, [_float_100_00000000]
	jmp nb_decoder_ctl_330
	add [eax], al


;nb_encoder_ctl(void*, int, void*)
nb_encoder_ctl:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea eax, [edx-0x3]
	cmp eax, 0x63
	ja nb_encoder_ctl_10
	jmp dword [eax*4+nb_encoder_ctl_jumptab_0]
nb_encoder_ctl_10:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_nb_ctl_r
	call speex_warning_int
	mov dword [ebp-0x30], 0xffffffff
nb_encoder_ctl_20:
	mov eax, [ebp-0x30]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_encoder_ctl_210:
	mov eax, [edi+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_220:
	mov eax, [ebp+0x10]
	mov edx, [eax]
	test edx, edx
	js nb_encoder_ctl_30
	cmp edx, 0xb
	mov eax, 0xa
	cmovge edx, eax
nb_encoder_ctl_200:
	mov eax, [edi]
	mov eax, [eax]
	mov eax, [eax+edx*4+0x68]
	mov [edi+0xf4], eax
	mov [edi+0xf8], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_230:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xf4], eax
	mov [edi+0xf8], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_250:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xc0], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_260:
	mov eax, [edi+0xc0]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_240:
	mov eax, [edi+0xf4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_270:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [edi+0xb8], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_280:
	mov eax, [edi+0xb8]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_290:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [edi+0xe0], eax
	test eax, eax
	js nb_encoder_ctl_40
nb_encoder_ctl_50:
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_300:
	mov eax, [edi+0xe0]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_310:
	mov dword [ebp-0x20], 0xa
	mov eax, [ebp+0x10]
	mov ebx, [eax]
	lea esi, [ebp-0x24]
nb_encoder_ctl_60:
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call speex_encoder_ctl
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x13
	mov [esp], edi
	call speex_encoder_ctl
	cmp ebx, [ebp-0x24]
	jge nb_encoder_ctl_50
	mov eax, [ebp-0x20]
	sub eax, 0x1
	mov [ebp-0x20], eax
	test eax, eax
	jns nb_encoder_ctl_60
	jmp nb_encoder_ctl_50
nb_encoder_ctl_320:
	mov edx, [edi+0xf4]
	mov eax, [edi+0xf0]
	mov edx, [eax+edx*4]
	test edx, edx
	jz nb_encoder_ctl_70
	mov eax, [edi+0xe4]
	imul eax, [edx+0x40]
	cdq
	idiv dword [edi+0x8]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_330:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xe4], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_340:
	mov eax, [edi+0xe4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_350:
	mov dword [edi+0x28], 0x1
	mov dword [edi+0x4], 0x1
	mov ecx, [edi+0x18]
	test ecx, ecx
	jle nb_encoder_ctl_80
	xor ebx, ebx
	movsd xmm2, qword [_double_3_14159265]
nb_encoder_ctl_90:
	mov eax, [edi+0x78]
	lea edx, [eax+ebx*4]
	add ebx, 0x1
	cvtsi2ss xmm0, ebx
	cvtss2sd xmm0, xmm0
	mulsd xmm0, xmm2
	lea eax, [ecx+0x1]
	cvtsi2sd xmm1, eax
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	mov ecx, [edi+0x18]
	cmp ecx, ebx
	jg nb_encoder_ctl_90
	test ecx, ecx
	jle nb_encoder_ctl_80
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	jmp nb_encoder_ctl_100
nb_encoder_ctl_110:
	mov eax, ebx
nb_encoder_ctl_100:
	shl eax, 0x2
	mov esi, eax
	add esi, [edi+0xa4]
	mov ebx, eax
	add ebx, [edi+0xa8]
	mov ecx, eax
	add ecx, [edi+0xa0]
	mov edx, [edi+0xac]
	mov dword [edx+eax], 0x0
	mov dword [ecx], 0x0
	mov dword [ebx], 0x0
	mov dword [esi], 0x0
	add dword [ebp-0x2c], 0x1
	mov ebx, [ebp-0x2c]
	cmp [edi+0x18], ebx
	jg nb_encoder_ctl_110
nb_encoder_ctl_80:
	mov eax, [edi+0x20]
	add eax, [edi+0x8]
	add eax, 0x1
	test eax, eax
	jle nb_encoder_ctl_120
	xor ebx, ebx
nb_encoder_ctl_130:
	lea edx, [ebx*4]
	mov ecx, edx
	add ecx, [edi+0x54]
	mov eax, [edi+0x5c]
	mov dword [eax+edx], 0x0
	mov dword [ecx], 0x0
	add ebx, 0x1
	mov eax, [edi+0x20]
	add eax, [edi+0x8]
	add eax, 0x1
	cmp ebx, eax
	jl nb_encoder_ctl_130
nb_encoder_ctl_120:
	mov eax, [edi+0x14]
	test eax, eax
	jle nb_encoder_ctl_50
	xor edx, edx
nb_encoder_ctl_140:
	mov eax, [edi+0x4c]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp edx, [edi+0x14]
	jl nb_encoder_ctl_140
	jmp nb_encoder_ctl_50
nb_encoder_ctl_360:
	mov eax, [edi+0xbc]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_430:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [edi+0xec], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_440:
	mov eax, [edi+0xec]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_450:
	mov eax, [edi+0x14]
	sub eax, [edi+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_460:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xe8], eax
	cmp eax, 0x64
	jle nb_encoder_ctl_50
	mov dword [edi+0xe8], 0x64
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_470:
	mov eax, [edi+0xe8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_480:
	mov esi, [edi+0x10]
	test esi, esi
	jle nb_encoder_ctl_50
	xor ecx, ecx
nb_encoder_ctl_150:
	lea eax, [ecx*4]
	mov edx, [edi+0xb0]
	mov edx, [edx+eax]
	mov ebx, [ebp+0x10]
	mov [ebx+eax], edx
	add ecx, 0x1
	cmp ecx, [edi+0x10]
	jl nb_encoder_ctl_150
	jmp nb_encoder_ctl_50
nb_encoder_ctl_490:
	mov ebx, [edi+0x8]
	test ebx, ebx
	jle nb_encoder_ctl_50
	xor ecx, ecx
nb_encoder_ctl_160:
	lea eax, [ecx*4]
	mov edx, [edi+0x58]
	mov edx, [edx+eax]
	mov ebx, [ebp+0x10]
	mov [ebx+eax], edx
	add ecx, 0x1
	cmp ecx, [edi+0x8]
	jl nb_encoder_ctl_160
	jmp nb_encoder_ctl_50
nb_encoder_ctl_500:
	mov ecx, [edi+0x8]
	test ecx, ecx
	jle nb_encoder_ctl_50
	xor ecx, ecx
nb_encoder_ctl_170:
	lea eax, [ecx*4]
	mov edx, [edi+0x64]
	mov edx, [edx+eax]
	mov ebx, [ebp+0x10]
	mov [ebx+eax], edx
	add ecx, 0x1
	cmp ecx, [edi+0x8]
	jl nb_encoder_ctl_170
	jmp nb_encoder_ctl_50
nb_encoder_ctl_390:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xd0], eax
	mov dword [edi+0xc0], 0x1
	mov dword [ebp-0x1c], 0xa
	mov eax, [ebp+0x10]
	mov ebx, [eax]
	lea esi, [ebp-0x24]
nb_encoder_ctl_190:
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call speex_encoder_ctl
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x13
	mov [esp], edi
	call speex_encoder_ctl
	cmp ebx, [ebp-0x24]
	jge nb_encoder_ctl_180
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	mov [ebp-0x1c], eax
	test eax, eax
	jns nb_encoder_ctl_190
nb_encoder_ctl_180:
	cvtsi2ss xmm0, dword [ebp-0x1c]
	pxor xmm2, xmm2
	movaps xmm1, xmm0
	cmpss xmm1, xmm2, 0x5
	andps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	mov [esp], edi
	movss [ebp-0x48], xmm2
	call speex_encoder_ctl
	movss xmm2, dword [ebp-0x48]
	movss [edi+0xdc], xmm2
	movss [edi+0xd4], xmm2
	movss [edi+0xd8], xmm2
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_400:
	mov eax, [edi+0xd0]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_370:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xc4], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_380:
	mov eax, [edi+0xc4]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_410:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [edi+0xc8], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_420:
	mov eax, [edi+0xc8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_40:
	mov dword [edi+0xe0], 0x0
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
nb_encoder_ctl_30:
	xor edx, edx
	jmp nb_encoder_ctl_200
nb_encoder_ctl_70:
	mov eax, [edi+0xe4]
	lea eax, [eax+eax*4]
	cdq
	idiv dword [edi+0x8]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov dword [ebp-0x30], 0x0
	jmp nb_encoder_ctl_20
	
	
nb_encoder_ctl_jumptab_0:
	dd nb_encoder_ctl_210
	dd nb_encoder_ctl_220
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_230
	dd nb_encoder_ctl_240
	dd nb_encoder_ctl_230
	dd nb_encoder_ctl_240
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_250
	dd nb_encoder_ctl_260
	dd nb_encoder_ctl_270
	dd nb_encoder_ctl_280
	dd nb_encoder_ctl_290
	dd nb_encoder_ctl_300
	dd nb_encoder_ctl_310
	dd nb_encoder_ctl_320
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_330
	dd nb_encoder_ctl_340
	dd nb_encoder_ctl_350
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_360
	dd nb_encoder_ctl_370
	dd nb_encoder_ctl_380
	dd nb_encoder_ctl_390
	dd nb_encoder_ctl_400
	dd nb_encoder_ctl_410
	dd nb_encoder_ctl_420
	dd nb_encoder_ctl_430
	dd nb_encoder_ctl_440
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_450
	dd nb_encoder_ctl_460
	dd nb_encoder_ctl_470
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_10
	dd nb_encoder_ctl_480
	dd nb_encoder_ctl_490
	dd nb_encoder_ctl_500


;nb_decoder_init(SpeexMode const*)
nb_decoder_init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [edi]
	mov dword [esp], 0x407c
	call speex_alloc
	mov ebx, eax
	test eax, eax
	jz nb_decoder_init_10
	lea eax, [eax+0x1fc]
	mov [ebx+0x2c], eax
	mov [ebx], edi
	mov dword [ebx+0x80], 0x1
	mov dword [ebx+0x4], 0x1
	mov edi, [esi]
	mov [ebx+0xc], edi
	mov eax, [esi]
	cdq
	idiv dword [esi+0x4]
	mov [ebx+0x14], eax
	mov eax, [esi+0x4]
	mov [ebx+0x10], eax
	mov eax, [esi+0x8]
	mov [ebx+0x18], eax
	mov eax, [esi+0xc]
	mov [ebx+0x1c], eax
	mov ecx, [esi+0x10]
	mov [ebx+0x20], ecx
	lea eax, [esi+0x24]
	mov [ebx+0x84], eax
	mov eax, [esi+0x64]
	mov [ebx+0x88], eax
	mov dword [ebx+0x8c], 0x0
	lea edx, [edi*4]
	mov [esp], edx
	call speex_alloc
	mov [ebx+0x30], eax
	mov [ebx+0x34], eax
	mov eax, [ebx+0xc]
	add eax, [ebx+0x20]
	lea eax, [eax*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x38], eax
	mov ecx, [ebx+0x20]
	lea eax, [eax+ecx*4+0x4]
	mov [ebx+0x3c], eax
	mov eax, [ebx+0xc]
	test eax, eax
	jle nb_decoder_init_20
	xor edx, edx
nb_decoder_init_30:
	mov eax, [ebx+0x30]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp edx, [ebx+0xc]
	jl nb_decoder_init_30
	mov ecx, [ebx+0x20]
nb_decoder_init_20:
	mov edx, [ebx+0xc]
	lea eax, [edx+ecx+0x1]
	test eax, eax
	jg nb_decoder_init_40
nb_decoder_init_70:
	lea eax, [edx*4]
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x40], eax
	mov eax, [ebx+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x50], eax
	mov eax, [ebx+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x44], eax
	mov eax, [ebx+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x48], eax
	mov eax, [ebx+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x4c], eax
	mov eax, [ebx+0x18]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x54], eax
	mov dword [esp], 0x14
	call speex_alloc
	mov [ebx+0x90], eax
	mov [esp], eax
	call comb_filter_mem_init
	mov eax, [ebx+0x14]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [ebx+0x58], eax
	mov dword [ebx+0x5c], 0x28
	mov dword [ebx+0x8], 0x0
	xor eax, eax
	mov [ebx+0x6c], eax
	mov [ebx+0x68], eax
	mov [ebx+0x64], eax
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x24], 0x1f40
	mov [ebx+0x28], eax
	mov eax, speex_default_user_handler
	mov [ebx+0x1d8], eax
	mov dword [ebx+0x1dc], 0x0
	mov eax, ebx
	mov edx, 0x10
nb_decoder_init_50:
	mov dword [eax+0x98], 0x0
	add eax, 0x14
	sub edx, 0x1
	jnz nb_decoder_init_50
	mov dword [ebx+0x1f0], 0x0
	mov dword [ebx+0x1ec], 0x0
	mov dword [ebx+0x1e8], 0x0
	mov dword [ebx+0x1f4], 0x0
	mov dword [ebx+0x1f8], 0x0
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_decoder_init_40:
	xor ecx, ecx
nb_decoder_init_60:
	mov eax, [ebx+0x38]
	mov dword [eax+ecx*4], 0x0
	add ecx, 0x1
	mov edx, [ebx+0xc]
	mov eax, edx
	add eax, [ebx+0x20]
	add eax, 0x1
	cmp ecx, eax
	jl nb_decoder_init_60
	jmp nb_decoder_init_70
nb_decoder_init_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;nb_encoder_init(SpeexMode const*)
nb_encoder_init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov dword [esp], 0x7dfc
	call speex_alloc
	mov esi, eax
	test eax, eax
	jz nb_encoder_init_10
	lea eax, [eax+0xfc]
	mov [esi+0x48], eax
	mov [esi], edi
	mov eax, [ebx]
	mov [esi+0x8], eax
	lea eax, [eax+eax*2]
	mov edx, eax
	shr edx, 0x1f
	lea edi, [edx+eax]
	sar edi, 1
	mov [esi+0x14], edi
	mov eax, [ebx]
	cdq
	idiv dword [ebx+0x4]
	mov [esi+0x10], eax
	mov eax, [ebx+0x4]
	mov [esi+0xc], eax
	mov eax, [ebx+0x8]
	mov [esi+0x18], eax
	mov eax, [ebx+0x14]
	mov [esi+0x38], eax
	mov eax, [ebx+0x18]
	mov [esi+0x3c], eax
	mov eax, [ebx+0xc]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esi+0x20], eax
	mov eax, [ebx+0x1c]
	mov [esi+0x40], eax
	mov eax, [ebx+0x20]
	mov [esi+0x44], eax
	lea eax, [ebx+0x24]
	mov [esi+0xf0], eax
	mov eax, [ebx+0x64]
	mov [esi+0xf8], eax
	mov [esi+0xf4], eax
	mov dword [esi+0x28], 0x1
	mov dword [esi+0xec], 0x1
	lea edx, [edi*4]
	mov [esp], edx
	call speex_alloc
	mov [esi+0x4c], eax
	mov [esi+0x50], eax
	mov eax, [ebx]
	add eax, [ebx+0x10]
	lea eax, [eax*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [esi+0x54], eax
	mov edx, [ebx+0x10]
	lea edx, [eax+edx*4+0x4]
	mov [esi+0x58], edx
	mov eax, [ebx]
	add eax, [ebx+0x10]
	lea eax, [eax*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [esi+0x5c], eax
	mov edx, [ebx+0x10]
	lea edx, [eax+edx*4+0x4]
	mov [esi+0x60], edx
	mov eax, [esi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x64], eax
	mov edx, [esi+0x8]
	mov eax, [esi+0xc]
	sar eax, 1
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x38], ecx
	sar edx, 1
	lea edx, [eax+edx]
	mov [ebp-0x34], edx
	mov eax, [esi+0x14]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x68], eax
	mov edx, [ebp-0x38]
	test edx, edx
	jg nb_encoder_init_20
nb_encoder_init_130:
	mov eax, [ebp-0x34]
	test eax, eax
	jg nb_encoder_init_30
nb_encoder_init_110:
	mov eax, [esi+0x18]
	lea eax, [eax*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [esi+0x70], eax
	mov edx, [esi+0x18]
	lea eax, [edx+0x1]
	test eax, eax
	jg nb_encoder_init_40
nb_encoder_init_90:
	lea eax, [edx*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [esi+0x6c], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x74], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x90], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x94], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x98], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x9c], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x78], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x7c], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x80], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x84], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x88], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x8c], eax
	mov dword [esi+0x4], 0x1
	mov ecx, [esi+0x18]
	test ecx, ecx
	jg nb_encoder_init_50
nb_encoder_init_70:
	lea eax, [ecx*4]
	mov [esp], eax
	call speex_alloc
	mov [esi+0xa0], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0xa4], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0xa8], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0xac], eax
	mov eax, [esi+0x10]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0xb0], eax
	mov eax, [esi+0x10]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x34], eax
	mov dword [esp], 0x40
	call speex_alloc
	mov [esi+0xb4], eax
	mov [esp], eax
	call vbr_init
	mov dword [esi+0xb8], 0x41000000
	mov dword [esi+0xc0], 0x0
	mov dword [esi+0xc4], 0x0
	mov dword [esi+0xc8], 0x0
	mov dword [esi+0xd0], 0x0
	mov dword [esi+0xd4], 0x0
	mov dword [esi+0xe8], 0x2
	mov dword [esi+0xe0], 0x2
	mov dword [esi+0xe4], 0x1f40
	mov dword [esi+0xcc], 0x0
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_encoder_init_50:
	xor ebx, ebx
nb_encoder_init_60:
	mov eax, [esi+0x78]
	lea edx, [eax+ebx*4]
	add ebx, 0x1
	cvtsi2ss xmm0, ebx
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_3_14159265]
	lea eax, [ecx+0x1]
	cvtsi2sd xmm1, eax
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	mov ecx, [esi+0x18]
	cmp ebx, ecx
	jl nb_encoder_init_60
	jmp nb_encoder_init_70
nb_encoder_init_40:
	xor edi, edi
nb_encoder_init_80:
	cvtss2sd xmm0, [esi+0x40]
	mulsd xmm0, [_double_6_28318531]
	cvtsi2sd xmm1, edi
	mulsd xmm0, xmm1
	mov ebx, [esi+0x70]
	mulsd xmm0, xmm0
	mulsd xmm0, [_double__0_50000000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x40]
	mulsd xmm0, [_double_16384_00000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+edi*4], xmm0
	add edi, 0x1
	mov edx, [esi+0x18]
	lea eax, [edx+0x1]
	cmp eax, edi
	jg nb_encoder_init_80
	jmp nb_encoder_init_90
nb_encoder_init_30:
	cvtsi2sd xmm0, dword [ebp-0x34]
	movsd [ebp-0x28], xmm0
	mov edi, [ebp-0x38]
	shl edi, 0x2
	mov dword [ebp-0x1c], 0x0
nb_encoder_init_100:
	mov ebx, [esi+0x68]
	cvtsi2sd xmm0, dword [ebp-0x1c]
	mulsd xmm0, [_double_3_14159265]
	divsd xmm0, qword [ebp-0x28]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x40]
	mulsd xmm0, [_double_0_46000000]
	addsd xmm0, [_double_0_54000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+edi], xmm0
	add dword [ebp-0x1c], 0x1
	add edi, 0x4
	mov eax, [ebp-0x1c]
	cmp [ebp-0x34], eax
	jnz nb_encoder_init_100
	jmp nb_encoder_init_110
nb_encoder_init_20:
	cvtsi2sd xmm0, dword [ebp-0x38]
	movsd [ebp-0x30], xmm0
	xor edi, edi
nb_encoder_init_120:
	mov ebx, [esi+0x68]
	cvtsi2sd xmm0, edi
	mulsd xmm0, [_double_3_14159265]
	divsd xmm0, qword [ebp-0x30]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x40]
	movsd xmm0, qword [ebp-0x40]
	mulsd xmm0, [_double__0_46000000]
	addsd xmm0, [_double_0_54000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+edi*4], xmm0
	add edi, 0x1
	cmp [ebp-0x38], edi
	jnz nb_encoder_init_120
	jmp nb_encoder_init_130
nb_encoder_init_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;nb_decoder_destroy(void*)
nb_decoder_destroy:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x30]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x38]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x40]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x50]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x44]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x48]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x54]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x90]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x58]
	mov [esp], eax
	call speex_free
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp speex_free


;nb_encoder_destroy(void*)
nb_encoder_destroy:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x54]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x64]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x94]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x7c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x84]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x8c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x5c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x68]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x70]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x6c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x74]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x78]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x90]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x98]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x9c]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x80]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x88]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xa0]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xa4]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xa8]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xac]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xb0]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0x34]
	mov [esp], eax
	call speex_free
	mov eax, [ebx+0xb4]
	mov [esp], eax
	call vbr_destroy
	mov eax, [ebx+0xb4]
	mov [esp], eax
	call speex_free
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp speex_free


;nb_decode(void*, SpeexBits*, void*)
nb_decode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x2c]
	mov [ebp-0x9c], eax
	mov edx, [edi+0x80]
	test edx, edx
	jz nb_decode_10
	mov eax, [ebp+0xc]
	test eax, eax
	jnz nb_decode_20
	mov eax, [edi+0x1f8]
	test eax, eax
	jz nb_decode_30
	mov dword [edi+0x88], 0x0
nb_decode_10:
	mov edx, [edi+0x38]
	mov eax, [edi+0x20]
	lea eax, [eax*4+0x4]
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	lea eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call speex_move
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov edx, [eax+edx*4]
	test edx, edx
	jz nb_decode_40
	mov ecx, [ebp+0xc]
	mov [esp+0x8], ecx
	mov eax, [edi+0x18]
	mov [esp+0x4], eax
	mov eax, [edi+0x44]
	mov [esp], eax
	call dword [edx+0x14]
	mov ebx, [edi+0x8]
	test ebx, ebx
	jz nb_decode_50
	mov ebx, [edi+0x18]
	pxor xmm0, xmm0
	test ebx, ebx
	jle nb_decode_60
	mov ecx, [edi+0x48]
	mov edx, [edi+0x44]
	xor eax, eax
	pxor xmm1, xmm1
	movss xmm2, dword [_data16_7fffffff]
nb_decode_70:
	movss xmm0, dword [ecx+eax*4]
	subss xmm0, [edx+eax*4]
	andps xmm0, xmm2
	addss xmm1, xmm0
	add eax, 0x1
	cmp ebx, eax
	jnz nb_decode_70
	cvtss2sd xmm0, xmm1
nb_decode_60:
	mulsd xmm0, [_double__0_20000000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0x100]
	movsd xmm0, qword [ebp-0x100]
	mulsd xmm0, [_double_0_60000000]
	cvtsd2ss xmm1, xmm0
	lea eax, [ebx+ebx]
	test eax, eax
	jle nb_decode_50
	xor edx, edx
nb_decode_80:
	mov eax, [edi+0x54]
	lea eax, [eax+edx*4]
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [eax], xmm0
	add edx, 0x1
	mov eax, [edi+0x18]
	add eax, eax
	cmp eax, edx
	jg nb_decode_80
nb_decode_50:
	mov ecx, [edi+0x4]
	test ecx, ecx
	jz nb_decode_90
nb_decode_300:
	mov eax, [edi+0x18]
	test eax, eax
	jle nb_decode_100
	xor ebx, ebx
nb_decode_110:
	lea edx, [ebx*4]
	mov ecx, [edi+0x48]
	mov eax, [edi+0x44]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [edi+0x18], ebx
	jg nb_decode_110
nb_decode_100:
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+esi*4]
	cmp dword [eax], 0xffffffff
	jnz nb_decode_120
nb_decode_310:
	mov dword [ebp-0xac], 0x0
	mov eax, [edx+esi*4]
	mov eax, [eax+0x4]
	test eax, eax
	jnz nb_decode_130
nb_decode_320:
	pxor xmm0, xmm0
	movss [ebp-0xa8], xmm0
nb_decode_330:
	mov dword [esp+0x4], 0x5
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_unpack_unsigned
	cvtsi2sd xmm0, eax
	divsd xmm0, qword [_double_3_50000000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0xc8]
	cvtsd2ss xmm0, [ebp-0xc8]
	movss [ebp-0xb0], xmm0
	mov ecx, [edi+0x18]
	shl ecx, 0x2
	mov esi, 0x4
	mov eax, esi
	sub eax, [ebp-0x9c]
	and eax, 0x3
	add eax, [ebp-0x9c]
	lea eax, [eax+ecx+0x4]
	mov ebx, ecx
	neg ebx
	lea edx, [eax+ebx-0x4]
	mov [ebp-0x98], edx
	mov edx, esi
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea edx, [ecx+eax+0x4]
	lea eax, [ebx+edx-0x4]
	mov [ebp-0x94], eax
	mov eax, esi
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea edx, [ecx+edx+0x4]
	mov [ebp-0x44], edx
	lea ebx, [ebx+edx-0x4]
	mov [ebp-0x90], ebx
	cmp dword [edi+0x88], 0x1
	jz nb_decode_140
nb_decode_1150:
	cmp dword [edi+0x88], 0x1
	jle nb_decode_150
	mov dword [edi+0x1f8], 0x0
nb_decode_150:
	mov edx, [edi+0x14]
	test edx, edx
	jg nb_decode_160
	mov dword [ebp-0xa4], 0x28
	pxor xmm0, xmm0
	movss [ebp-0x8c], xmm0
nb_decode_850:
	mov eax, [edi+0xc]
	test eax, eax
	jle nb_decode_170
	xor ecx, ecx
	movss xmm2, dword [_float__32767_00000000]
	movss xmm1, dword [_float_32767_00000000]
	jmp nb_decode_180
nb_decode_190:
	movaps xmm3, xmm2
	maxss xmm3, xmm0
	movaps xmm0, xmm3
	mov eax, [ebp+0x10]
	movss [eax+edx], xmm0
	add ecx, 0x1
	cmp ecx, [edi+0xc]
	jge nb_decode_170
nb_decode_180:
	lea edx, [ecx*4]
	mov eax, [edi+0x34]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	jbe nb_decode_190
	movaps xmm0, xmm1
	mov eax, [ebp+0x10]
	movss [eax+edx], xmm0
	add ecx, 0x1
	cmp ecx, [edi+0xc]
	jl nb_decode_180
nb_decode_170:
	movss xmm2, dword [_float_1_00000000]
	movss xmm1, dword [ebp-0xb0]
	addss xmm1, xmm2
	movss [edi+0x74], xmm1
	movss xmm0, dword [_float_0_99000001]
	mulss xmm0, [edi+0x78]
	maxss xmm0, xmm1
	movss [edi+0x78], xmm0
	movss xmm0, dword [_float_1_00999999]
	mulss xmm0, [edi+0x7c]
	addss xmm0, xmm2
	minss xmm0, xmm1
	movss [edi+0x7c], xmm0
	addss xmm2, xmm0
	ucomiss xmm2, [edi+0x78]
	jbe nb_decode_200
	movss [edi+0x78], xmm2
nb_decode_200:
	mov eax, [edi+0x18]
	test eax, eax
	jle nb_decode_210
	xor ebx, ebx
nb_decode_220:
	lea edx, [ebx*4]
	mov ecx, [edi+0x48]
	mov eax, [edi+0x44]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [edi+0x18]
	jl nb_decode_220
nb_decode_210:
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	mov edx, [ebp-0xa4]
	mov [edi+0x5c], edx
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [_float_0_25000000]
	movss [edi+0x60], xmm0
	mov edx, [edi+0x70]
	movss [edi+edx*4+0x64], xmm0
	add edx, 0x1
	xor eax, eax
	cmp edx, 0x3
	cmovl eax, edx
	mov [edi+0x70], eax
	movss xmm0, dword [ebp-0xb0]
	movss [edi+0x28], xmm0
	xor eax, eax
nb_decode_230:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_decode_280:
	mov [esp+0x8], edi
	lea eax, [edi+0x94]
	mov [esp+0x4], eax
	mov [esp], ebx
	call speex_inband_handler
	test eax, eax
	jnz nb_decode_230
nb_decode_20:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_remaining
	cmp eax, 0x4
	jle nb_decode_240
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_unpack_unsigned
	test eax, eax
	jz nb_decode_250
	mov dword [esp+0x4], 0x3
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call speex_bits_unpack_unsigned
	mov [ebp-0x20], eax
	lea esi, [ebp-0x20]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov ebx, speex_wb_mode
	mov [esp], ebx
	call speex_mode_query
	mov eax, [ebp-0x20]
	test eax, eax
	js nb_decode_260
	sub eax, 0x4
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_advance
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_remaining
	cmp eax, 0x4
	jle nb_decode_240
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call speex_bits_unpack_unsigned
	test eax, eax
	jnz nb_decode_270
nb_decode_250:
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call speex_bits_remaining
	cmp eax, 0x3
	jle nb_decode_240
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call speex_bits_unpack_unsigned
	cmp eax, 0xf
	jz nb_decode_240
	cmp eax, 0xe
	jz nb_decode_280
	cmp eax, 0xd
	jnz nb_decode_290
	mov eax, [edi+0x1dc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call dword [edi+0x1d8]
	test eax, eax
	jz nb_decode_20
	jmp nb_decode_230
nb_decode_90:
	mov edx, [edi+0x8]
	test edx, edx
	jnz nb_decode_300
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+esi*4]
	cmp dword [eax], 0xffffffff
	jz nb_decode_310
nb_decode_120:
	mov ebx, [edi+0x1c]
	mov dword [esp+0x4], 0x7
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	add ebx, eax
	mov [ebp-0xac], ebx
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+esi*4]
	mov eax, [eax+0x4]
	test eax, eax
	jz nb_decode_320
nb_decode_130:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_0_06666700]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xa8], xmm0
	jmp nb_decode_330
nb_decode_270:
	mov dword [esp+0x4], 0x3
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	mov [ebp-0x20], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call speex_mode_query
	mov eax, [ebp-0x20]
	test eax, eax
	js nb_decode_340
	sub eax, 0x4
	mov [ebp-0x20], eax
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_advance
	mov dword [esp+0x4], 0x1
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call speex_bits_unpack_unsigned
	test eax, eax
	jz nb_decode_250
	mov dword [esp], _cstring_more_than_two_wi
	call speex_warning
	mov eax, 0xfffffffe
	jmp nb_decode_230
nb_decode_30:
	cvtsi2sd xmm0, dword [edi+0x8]
	movapd xmm1, xmm0
	mulsd xmm1, [_double__0_04000000]
	mulsd xmm0, xmm1
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0xc0]
	cvtsd2ss xmm0, [ebp-0xc0]
	movss [ebp-0x74], xmm0
	movss xmm1, dword [edi+0x64]
	movss xmm0, dword [edi+0x68]
	ucomiss xmm0, xmm1
	jbe nb_decode_350
	movss xmm2, dword [edi+0x6c]
	ucomiss xmm2, xmm0
	jbe nb_decode_360
nb_decode_1130:
	movaps xmm1, xmm0
nb_decode_1140:
	movss xmm0, dword [edi+0x60]
	ucomiss xmm0, xmm1
	jbe nb_decode_370
	movaps xmm0, xmm1
	movss [edi+0x60], xmm1
nb_decode_370:
	movaps xmm1, xmm0
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_95000000]
	jbe nb_decode_380
	movss xmm1, dword [_float_0_94999999]
nb_decode_380:
	mulss xmm1, [ebp-0x74]
	cvtss2sd xmm0, xmm1
	addsd xmm0, [_double_0_00000000]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x48], xmm0
	mov edx, [edi+0x38]
	mov eax, [edi+0x20]
	lea eax, [eax*4+0x4]
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	lea eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call speex_move
	mov ebx, [edi+0x18]
	shl ebx, 0x2
	mov ecx, 0x4
	mov eax, ecx
	sub eax, [ebp-0x9c]
	and eax, 0x3
	add eax, [ebp-0x9c]
	lea eax, [eax+ebx+0x4]
	mov esi, ebx
	neg esi
	lea edx, [eax+esi-0x4]
	mov [ebp-0x80], edx
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ebx+eax+0x4]
	lea edx, [esi+eax-0x4]
	mov [ebp-0x7c], edx
	sub ecx, eax
	and ecx, 0x3
	add eax, ecx
	lea ebx, [ebx+eax+0x4]
	lea ebx, [esi+ebx-0x4]
	mov [ebp-0x78], ebx
	mov eax, [edi+0x14]
	test eax, eax
	jle nb_decode_390
	mov dword [ebp-0x84], 0x0
	cvtss2sd xmm0, [ebp-0x48]
	movsd [ebp-0xe0], xmm0
	cvtss2sd xmm1, [ebp-0x74]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x48]
	cvtss2sd xmm0, xmm0
	sqrtsd xmm0, xmm0
	mulsd xmm1, xmm0
	movsd [ebp-0xe8], xmm1
	mov eax, [ebp-0x84]
nb_decode_460:
	imul eax, [edi+0x10]
	shl eax, 0x2
	mov edx, [edi+0x34]
	add edx, eax
	mov [ebp-0x70], edx
	mov esi, eax
	add esi, [edi+0x3c]
	mov eax, [edi+0x8c]
	test eax, eax
	jz nb_decode_400
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov eax, [eax+edx*4]
	test eax, eax
	jz nb_decode_410
	mov edx, [eax+0x30]
	mov ebx, [eax+0x34]
	movss xmm1, dword [eax+0x38]
	movss [ebp-0x6c], xmm1
nb_decode_1160:
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp-0x80]
	mov [esp+0x8], eax
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov [esp], edx
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp-0x7c]
	mov [esp+0x8], edx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov [esp], ebx
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x78]
	mov [esp+0x8], ecx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0x6c]
	movss [esp], xmm0
	call bw_lpc
nb_decode_400:
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x40]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0x68]
	mov ebx, [edi+0x10]
	test ebx, ebx
	jg nb_decode_420
nb_decode_490:
	mov eax, [edi+0x8c]
	test eax, eax
	jnz nb_decode_430
	mov edx, [edi+0x18]
	test edx, edx
	jle nb_decode_440
	xor ecx, ecx
nb_decode_450:
	lea edx, [ecx+edx]
	mov eax, [edi+0x54]
	mov dword [eax+edx*4], 0x0
	add ecx, 0x1
	mov edx, [edi+0x18]
	cmp edx, ecx
	jg nb_decode_450
	mov ebx, [edi+0x10]
nb_decode_440:
	mov eax, [edi+0x54]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov edx, [ebp-0x70]
	mov [esp+0x8], edx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov [esp], edx
	call iir_mem2
nb_decode_470:
	add dword [ebp-0x84], 0x1
	mov ecx, [ebp-0x84]
	cmp ecx, [edi+0x14]
	jge nb_decode_390
	mov eax, ecx
	jmp nb_decode_460
nb_decode_430:
	mov edx, [edi+0x18]
	mov eax, [edi+0x54]
	lea eax, [eax+edx*4]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov eax, [ebp-0x70]
	mov [esp+0xc], eax
	mov edx, [ebp-0x80]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x7c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call filter_mem2
	mov eax, [edi+0x54]
	mov [esp+0x18], eax
	mov eax, [edi+0x18]
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov ebx, [ebp-0x70]
	mov [esp+0xc], ebx
	mov eax, [edi+0x50]
	mov [esp+0x8], eax
	mov eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov [esp], ebx
	call filter_mem2
	jmp nb_decode_470
nb_decode_420:
	xor ebx, ebx
nb_decode_480:
	mov eax, ebx
	sub eax, [edi+0x5c]
	cvtss2sd xmm0, [esi+eax*4]
	addsd xmm0, [_double_0_00000000]
	mulsd xmm0, [ebp-0xe0]
	movss xmm1, dword [ebp-0x68]
	movss [esp], xmm1
	movsd [ebp-0xf8], xmm0
	call speex_rand
	fstp dword [ebp-0x88]
	cvtss2sd xmm1, [ebp-0x88]
	mulsd xmm1, [ebp-0xe8]
	movsd xmm0, qword [ebp-0xf8]
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esi+ebx*4], xmm0
	add ebx, 0x1
	cmp ebx, [edi+0x10]
	jl nb_decode_480
	mov ebx, [edi+0x10]
	test ebx, ebx
	jle nb_decode_490
	mov ecx, 0x1
nb_decode_500:
	lea eax, [ecx*4]
	mov edx, [eax+esi-0x4]
	mov ebx, [ebp-0x70]
	mov [eax+ebx-0x4], edx
	mov eax, ecx
	mov ebx, [edi+0x10]
	add ecx, 0x1
	cmp eax, ebx
	jl nb_decode_500
	jmp nb_decode_490
nb_decode_390:
	mov eax, [edi+0xc]
	test eax, eax
	jle nb_decode_510
	xor ecx, ecx
	movss xmm2, dword [_float__32767_00000000]
	movss xmm1, dword [_float_32767_00000000]
	jmp nb_decode_520
nb_decode_530:
	movaps xmm3, xmm2
	maxss xmm3, xmm0
	movaps xmm0, xmm3
nb_decode_540:
	mov eax, [ebp+0x10]
	movss [eax+edx], xmm0
	add ecx, 0x1
	cmp ecx, [edi+0xc]
	jge nb_decode_510
nb_decode_520:
	lea edx, [ecx*4]
	mov eax, [edi+0x34]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	jbe nb_decode_530
	movaps xmm0, xmm1
	jmp nb_decode_540
nb_decode_510:
	mov dword [edi+0x4], 0x0
	add dword [edi+0x8], 0x1
	mov eax, [edi+0x70]
	movss xmm0, dword [ebp-0x48]
	movss [edi+eax*4+0x64], xmm0
	add eax, 0x1
	mov [edi+0x70], eax
	cmp eax, 0x2
	jle nb_decode_550
	mov dword [edi+0x70], 0x0
nb_decode_550:
	xor eax, eax
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_decode_160:
	cvtss2sd xmm0, [ebp-0xa8]
	subsd xmm0, [_double_0_60000000]
	addsd xmm0, xmm0
	addsd xmm0, [_double_0_50000000]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x3c], xmm0
	pxor xmm0, xmm0
	movss [ebp-0xa0], xmm0
	mov dword [ebp-0xb4], 0x0
	mov dword [ebp-0xa4], 0x28
	movss [ebp-0x8c], xmm0
	cvtsi2sd xmm1, dword [ebp-0xac]
	movsd [ebp-0xd0], xmm1
	cvtss2sd xmm3, [ebp-0xb0]
	movsd [ebp-0xd8], xmm3
	sub esi, [ebp-0x44]
	and esi, 0x3
	add esi, [ebp-0x44]
	mov [ebp-0x40], esi
nb_decode_840:
	mov eax, [ebp-0xb4]
	imul eax, [edi+0x10]
	mov [ebp-0x64], eax
	shl eax, 0x2
	mov ecx, [edi+0x34]
	add ecx, eax
	mov [ebp-0x60], ecx
	add eax, [edi+0x3c]
	mov [ebp-0x5c], eax
	mov [esp+0x14], edx
	mov ebx, [ebp-0xb4]
	mov [esp+0x10], ebx
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [edi+0x4c]
	mov [esp+0x8], eax
	mov eax, [edi+0x44]
	mov [esp+0x4], eax
	mov eax, [edi+0x48]
	mov [esp], eax
	call lsp_interpolate
	mov dword [esp+0x8], 0x3b03126f
	mov eax, [edi+0x18]
	mov [esp+0x4], eax
	mov eax, [edi+0x4c]
	mov [esp], eax
	call lsp_enforce_margin
	mov eax, [ebp-0x44]
	mov [esp+0xc], eax
	mov eax, [edi+0x18]
	mov [esp+0x8], eax
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov eax, [edi+0x4c]
	mov [esp], eax
	call lsp_to_lpc
	mov eax, [edi+0x8c]
	test eax, eax
	jnz nb_decode_560
nb_decode_930:
	mov ecx, [edi+0x18]
	test ecx, ecx
	jle nb_decode_570
	xor edx, edx
	movss xmm1, dword [_float_1_00000000]
	mov eax, [edi+0x50]
nb_decode_580:
	movss xmm0, dword [eax+0x4]
	subss xmm0, [eax]
	addss xmm1, xmm0
	add edx, 0x2
	add eax, 0x8
	cmp ecx, edx
	jg nb_decode_580
nb_decode_910:
	mov eax, [edi+0x58]
	mov edx, [ebp-0xb4]
	movss [eax+edx*4], xmm1
	mov ecx, [edi+0x10]
	test ecx, ecx
	jle nb_decode_590
	xor eax, eax
nb_decode_600:
	mov ecx, [ebp-0x5c]
	mov dword [ecx+eax*4], 0x0
	add eax, 0x1
	mov ecx, [edi+0x10]
	cmp ecx, eax
	jg nb_decode_600
nb_decode_590:
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov ebx, [eax+edx*4]
	mov eax, [ebx+0x1c]
	mov [ebp-0xb8], eax
	test eax, eax
	jz nb_decode_610
	mov edx, [ebx]
	cmp edx, 0xffffffff
	jz nb_decode_620
	test edx, edx
	jnz nb_decode_630
	mov esi, [ebp-0xac]
	mov edx, esi
nb_decode_920:
	mov dword [esp+0x34], 0x0
	mov eax, [edi+0x60]
	mov [esp+0x30], eax
	mov eax, [ebp-0x64]
	mov [esp+0x2c], eax
	mov eax, [edi+0x8]
	mov [esp+0x28], eax
	mov eax, [ebp-0x44]
	mov [esp+0x24], eax
	mov eax, [ebp+0xc]
	mov [esp+0x20], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov eax, [ebx+0x20]
	mov [esp+0x10], eax
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0xc], xmm0
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call dword [ebp-0xb8]
	mov eax, [edi+0x8]
	test eax, eax
	jz nb_decode_640
	movss xmm0, dword [edi+0x28]
	ucomiss xmm0, [ebp-0xb0]
	jbe nb_decode_640
	addss xmm0, [_float_1_00000000]
	movss xmm1, dword [ebp-0xb0]
	divss xmm1, xmm0
	mov eax, [edi+0x10]
	test eax, eax
	jle nb_decode_640
	mov ecx, 0x1
	mov edx, [ebp-0x5c]
	add edx, 0x4
nb_decode_650:
	movaps xmm0, xmm1
	mulss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	add edx, 0x4
	cmp [edi+0x10], eax
	jg nb_decode_650
nb_decode_640:
	movss xmm0, dword [ebp-0x28]
	pxor xmm2, xmm2
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	movss xmm1, dword [ebp-0x2c]
	ucomiss xmm1, xmm2
	jbe nb_decode_660
	cvtss2sd xmm1, xmm1
nb_decode_1030:
	addsd xmm0, xmm1
	movss xmm1, dword [ebp-0x24]
	ucomiss xmm1, xmm2
	jbe nb_decode_670
	cvtss2sd xmm1, xmm1
nb_decode_1020:
	addsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	movss xmm1, dword [ebp-0x8c]
	addss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	ucomiss xmm0, [ebp-0xa0]
	jbe nb_decode_680
	mov eax, [ebp-0x1c]
	mov [ebp-0xa4], eax
	movss [ebp-0xa0], xmm0
nb_decode_680:
	mov ecx, [edi+0x10]
	mov edx, [ebp-0xb4]
	imul edx, ecx
	mov eax, [edi+0x40]
	lea edx, [eax+edx*4]
	mov [ebp-0x54], edx
	test ecx, ecx
	jle nb_decode_690
	xor eax, eax
nb_decode_700:
	mov edx, [ebp-0x54]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp [edi+0x10], eax
	jg nb_decode_700
nb_decode_690:
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+esi*4]
	mov eax, [eax+0x8]
	cmp eax, 0x3
	jz nb_decode_710
	sub eax, 0x1
	jz nb_decode_720
	movss xmm1, dword [ebp-0xb0]
	movss [ebp-0x58], xmm1
nb_decode_1050:
	mov edx, [edx+esi*4]
	mov ecx, [edx+0x28]
	test ecx, ecx
	jz nb_decode_730
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov ebx, [ebp+0xc]
	mov [esp+0xc], ebx
	mov eax, [edi+0x10]
	mov [esp+0x8], eax
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp], eax
	call ecx
nb_decode_1040:
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x58]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov [esp], eax
	call signal_mul
	cmp dword [edi+0x88], 0x1
	jz nb_decode_740
	mov eax, [edi+0x10]
	test eax, eax
	jg nb_decode_750
nb_decode_870:
	mov ebx, [edi+0x10]
nb_decode_1000:
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+esi*4]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz nb_decode_760
	mov ecx, ebx
	mov eax, [ebp-0x40]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x50], eax
	test ecx, ecx
	jle nb_decode_770
	xor eax, eax
nb_decode_780:
	mov edx, [ebp-0x50]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov ecx, [edi+0x10]
	cmp eax, ecx
	jl nb_decode_780
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
nb_decode_770:
	mov edx, [edx+esi*4]
	mov [esp+0x10], ebx
	mov ebx, [ebp+0xc]
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x50]
	mov [esp], eax
	call dword [edx+0x28]
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	cvtss2sd xmm0, [ebp-0x58]
	mulsd xmm0, [_double_0_45454545]
	cvtsd2ss xmm0, xmm0
	movss [esp+0x8], xmm0
	mov edx, [ebp-0x50]
	mov [esp+0x4], edx
	mov [esp], edx
	call signal_mul
	mov ebx, [edi+0x10]
	test ebx, ebx
	jle nb_decode_790
	mov ecx, 0x1
nb_decode_800:
	lea eax, [ecx*4]
	mov edx, [ebp-0x5c]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	mov ebx, [ebp-0x50]
	addss xmm0, [ebx+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp eax, [edi+0x10]
	jl nb_decode_800
	mov ebx, [edi+0x10]
nb_decode_760:
	test ebx, ebx
	jle nb_decode_790
	mov ecx, 0x1
nb_decode_810:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x5c]
	mov edx, [ebx+eax-0x4]
	mov ebx, [ebp-0x60]
	mov [ebx+eax-0x4], edx
	mov eax, ecx
	mov ebx, [edi+0x10]
	add ecx, 0x1
	cmp eax, ebx
	jl nb_decode_810
nb_decode_790:
	mov edx, [edi+0x8c]
	test edx, edx
	jz nb_decode_820
	mov eax, [edi+0x88]
	mov edx, [edi+0x84]
	mov eax, [edx+eax*4]
	movss xmm0, dword [eax+0x3c]
	ucomiss xmm0, [_float_0_00000000]
	jbe nb_decode_830
	mov eax, [edi+0x90]
	mov [esp+0x20], eax
	movss [esp+0x1c], xmm0
	lea eax, [ebp-0x2c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [edi+0x50]
	mov [esp+0x8], eax
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call comb_filter
	mov eax, [edi+0x8c]
	test eax, eax
	jz nb_decode_820
	mov ebx, [edi+0x10]
nb_decode_830:
	mov edx, [edi+0x18]
	mov eax, [edi+0x54]
	lea eax, [eax+edx*4]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov ecx, [ebp-0x60]
	mov [esp+0xc], ecx
	mov ebx, [ebp-0x98]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x94]
	mov [esp+0x4], eax
	mov [esp], ecx
	call filter_mem2
	mov eax, [edi+0x54]
	mov [esp+0x18], eax
	mov eax, [edi+0x18]
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov eax, [edi+0x50]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x90]
	mov [esp+0x4], ecx
	mov [esp], edx
	call filter_mem2
nb_decode_900:
	add dword [ebp-0xb4], 0x1
	mov edx, [edi+0x14]
	cmp [ebp-0xb4], edx
	jl nb_decode_840
	jmp nb_decode_850
nb_decode_750:
	mov ecx, 0x1
nb_decode_860:
	lea eax, [ecx*4]
	mov edx, [ebp-0x5c]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	mov ebx, [ebp-0x54]
	addss xmm0, [ebx+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp [edi+0x10], eax
	jg nb_decode_860
	jmp nb_decode_870
nb_decode_820:
	mov edx, [edi+0x18]
	test edx, edx
	jle nb_decode_880
	xor ecx, ecx
nb_decode_890:
	lea edx, [ecx+edx]
	mov eax, [edi+0x54]
	mov dword [eax+edx*4], 0x0
	add ecx, 0x1
	mov edx, [edi+0x18]
	cmp edx, ecx
	jg nb_decode_890
nb_decode_880:
	mov eax, [edi+0x54]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x60]
	mov [esp+0x8], ebx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov [esp], ebx
	call iir_mem2
	jmp nb_decode_900
nb_decode_570:
	movss xmm1, dword [_float_1_00000000]
	jmp nb_decode_910
nb_decode_630:
	mov eax, [ebp-0xac]
	sub eax, edx
	lea esi, [eax+0x1]
	mov eax, [edi+0x1c]
	cmp esi, eax
	cmovl esi, eax
	add edx, [ebp-0xac]
	mov eax, [edi+0x20]
	cmp edx, eax
	jle nb_decode_920
	mov edx, eax
	jmp nb_decode_920
nb_decode_560:
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp-0x98]
	mov [esp+0x8], edx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov eax, [eax+edx*4]
	mov eax, [eax+0x30]
	mov [esp], eax
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x94]
	mov [esp+0x8], ecx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov eax, [eax+edx*4]
	mov eax, [eax+0x34]
	mov [esp], eax
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x90]
	mov [esp+0x8], ebx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov edx, [edi+0x88]
	mov eax, [edi+0x84]
	mov eax, [eax+edx*4]
	mov eax, [eax+0x38]
	mov [esp], eax
	call bw_lpc
	jmp nb_decode_930
nb_decode_740:
	mov eax, [edi+0x10]
	pxor xmm2, xmm2
	test eax, eax
	jle nb_decode_940
	xor eax, eax
	pxor xmm2, xmm2
nb_decode_950:
	mov edx, [ebp-0x5c]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp eax, [edi+0x10]
	jl nb_decode_950
nb_decode_940:
	mov eax, [edi+0x1f4]
	mov edx, eax
	mov ebx, [edi+0x10]
	cmp ebx, eax
	jle nb_decode_960
	sqrtsd xmm0, [ebp-0xd0]
	cvtsd2ss xmm0, xmm0
nb_decode_980:
	test edx, edx
	js nb_decode_970
	mov ecx, [ebp-0x5c]
	movss [ecx+edx*4], xmm0
	mov ebx, [edi+0x10]
	mov eax, [edi+0x1f4]
nb_decode_970:
	mov edx, [ebp-0xac]
	add edx, eax
	mov eax, edx
	mov [edi+0x1f4], edx
	cmp edx, ebx
	jl nb_decode_980
nb_decode_960:
	sub edx, ebx
	mov [edi+0x1f4], edx
	ucomiss xmm2, [ebp-0x3c]
	ja nb_decode_990
	movss xmm1, dword [_float_1_00000000]
	minss xmm1, dword [ebp-0x3c]
nb_decode_1120:
	mov esi, [edi+0x10]
	test esi, esi
	jle nb_decode_1000
	cvtss2sd xmm0, xmm1
	movapd xmm7, xmm0
	mulsd xmm7, [_double_0_80000000]
	movapd xmm6, xmm0
	mulsd xmm6, [_double_0_60000000]
	movapd xmm5, xmm0
	mulsd xmm5, [_double_0_50000000]
	movapd xmm4, xmm0
	mulsd xmm4, [_double__0_50000000]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	mov ecx, 0x1
nb_decode_1010:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x5c]
	lea edx, [eax+ebx]
	movss xmm3, dword [edx-0x4]
	add eax, [ebp-0x54]
	movss xmm2, dword [eax-0x4]
	cvtss2sd xmm1, xmm3
	mulsd xmm1, xmm7
	mulsd xmm1, [ebp-0xd8]
	cvtss2sd xmm0, [edi+0x1e8]
	mulsd xmm0, xmm6
	mulsd xmm0, [ebp-0xd8]
	addsd xmm1, xmm0
	cvtss2sd xmm0, xmm2
	mulsd xmm0, xmm5
	addsd xmm1, xmm0
	cvtss2sd xmm0, [edi+0x1ec]
	mulsd xmm0, xmm4
	addsd xmm1, xmm0
	mulss xmm2, [ebp-0x4c]
	cvtss2sd xmm2, xmm2
	addsd xmm1, xmm2
	cvtsd2ss xmm1, xmm1
	movss [edx-0x4], xmm1
	movss [edi+0x1e8], xmm3
	mov eax, [eax-0x4]
	mov [edi+0x1ec], eax
	cvtss2sd xmm1, [edi+0x1f0]
	mulsd xmm1, [_double_0_95000000]
	cvtss2sd xmm0, [edx-0x4]
	mulsd xmm0, [_double_0_05000000]
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [edi+0x1f0], xmm1
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp [edi+0x10], eax
	jg nb_decode_1010
	jmp nb_decode_870
nb_decode_620:
	mov esi, [edi+0x1c]
	mov edx, [edi+0x20]
	jmp nb_decode_920
nb_decode_670:
	cvtss2sd xmm1, xmm1
	mulsd xmm1, [_double__0_50000000]
	jmp nb_decode_1020
nb_decode_660:
	cvtss2sd xmm1, xmm1
	mulsd xmm1, [_double__0_50000000]
	jmp nb_decode_1030
nb_decode_730:
	mov dword [esp], _cstring_no_fixed_codeboo
	call speex_error
	jmp nb_decode_1040
nb_decode_710:
	mov dword [esp+0x4], 0x3
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call speex_bits_unpack_unsigned
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [eax*4+exc_gain_quant_scal3]
	movss [ebp-0x58], xmm0
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	jmp nb_decode_1050
nb_decode_720:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call speex_bits_unpack_unsigned
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [eax*4+exc_gain_quant_scal1]
	movss [ebp-0x58], xmm0
	mov esi, [edi+0x88]
	mov edx, [edi+0x84]
	jmp nb_decode_1050
nb_decode_610:
	mov dword [esp], _cstring_no_pitch_predict
	call speex_error
	jmp nb_decode_680
nb_decode_40:
	mov eax, [ebp-0x9c]
	neg eax
	and eax, 0x3
	mov ebx, [ebp-0x9c]
	add ebx, eax
	mov dword [esp+0xc], 0xa
	mov [esp+0x8], ebx
	mov eax, [edi+0x50]
	mov [esp+0x4], eax
	mov dword [esp], 0x3f6e147b
	call bw_lpc
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x40]
	mov [esp], eax
	call compute_rms
	mov eax, [edi+0xc]
	test eax, eax
	jle nb_decode_1060
	xor edx, edx
nb_decode_1070:
	mov eax, [edi+0x3c]
	mov dword [eax+edx*4], 0x26901d7d
	add edx, 0x1
	mov eax, [edi+0xc]
	cmp eax, edx
	jg nb_decode_1070
nb_decode_1060:
	mov [esp+0x8], eax
	mov eax, [edi+0x3c]
	mov [esp+0x4], eax
	fstp dword [esp]
	call speex_rand_vec
	mov dword [edi+0x4], 0x1
	mov eax, [edi+0x54]
	mov [esp+0x14], eax
	mov eax, [edi+0x18]
	mov [esp+0x10], eax
	mov eax, [edi+0xc]
	mov [esp+0xc], eax
	mov eax, [edi+0x34]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [edi+0x3c]
	mov [esp], eax
	call iir_mem2
	mov esi, [edi+0xc]
	test esi, esi
	jle nb_decode_1080
	xor ecx, ecx
	movss xmm2, dword [_float__32767_00000000]
	movss xmm1, dword [_float_32767_00000000]
	jmp nb_decode_1090
nb_decode_1100:
	movaps xmm3, xmm2
	maxss xmm3, xmm0
	movaps xmm0, xmm3
nb_decode_1110:
	mov eax, [ebp+0x10]
	movss [eax+edx], xmm0
	add ecx, 0x1
	cmp [edi+0xc], ecx
	jle nb_decode_1080
nb_decode_1090:
	lea edx, [ecx*4]
	mov eax, [edi+0x34]
	movss xmm0, dword [eax+edx]
	ucomiss xmm0, xmm1
	jbe nb_decode_1100
	movaps xmm0, xmm1
	jmp nb_decode_1110
nb_decode_1080:
	mov dword [edi+0x8], 0x0
	xor eax, eax
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_decode_990:
	movaps xmm1, xmm2
	jmp nb_decode_1120
nb_decode_350:
	movss xmm2, dword [edi+0x6c]
	ucomiss xmm0, xmm2
	ja nb_decode_1130
	ucomiss xmm1, xmm2
	jbe nb_decode_1140
	movaps xmm1, xmm2
	jmp nb_decode_1140
nb_decode_140:
	mov dword [esp+0x4], 0x4
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_unpack_unsigned
	cmp eax, 0xf
	setz al
	movzx eax, al
	mov [edi+0x1f8], eax
	jmp nb_decode_1150
nb_decode_410:
	mov ebx, 0x3f333333
	mov edx, ebx
	pxor xmm0, xmm0
	movss [ebp-0x6c], xmm0
	jmp nb_decode_1160
nb_decode_360:
	ucomiss xmm2, xmm1
	jbe nb_decode_1140
	movaps xmm1, xmm2
	jmp nb_decode_1140
nb_decode_240:
	mov eax, 0xffffffff
	jmp nb_decode_230
nb_decode_260:
	mov dword [esp], _cstring_invalid_wideband
	call speex_warning
	mov eax, 0xfffffffe
	jmp nb_decode_230
nb_decode_290:
	cmp eax, 0x8
	jg nb_decode_1170
	mov [edi+0x88], eax
	jmp nb_decode_10
nb_decode_340:
	mov dword [esp], _cstring_invalid_wideband1
	call speex_warning
	mov eax, 0xfffffffe
	jmp nb_decode_230
nb_decode_1170:
	mov dword [esp], _cstring_invalid_mode_enc
	call speex_warning
	mov eax, 0xfffffffe
	jmp nb_decode_230


;nb_encode(void*, void*, SpeexBits*)
nb_encode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x48]
	mov [ebp-0x11c], eax
	mov eax, [esi+0x8]
	mov ecx, [esi+0x4c]
	mov edx, [esi+0x14]
	sub edx, eax
	shl edx, 0x2
	mov [esp+0x8], edx
	lea eax, [ecx+eax*4]
	mov [esp+0x4], eax
	mov [esp], ecx
	call speex_move
	mov ecx, [esi+0x8]
	test ecx, ecx
	jle nb_encode_10
	xor ebx, ebx
nb_encode_20:
	mov eax, [esi+0x14]
	sub eax, ecx
	lea eax, [ebx+eax]
	mov ecx, [esi+0x4c]
	mov edi, [ebp+0xc]
	mov edx, [edi+ebx*4]
	mov [ecx+eax*4], edx
	add ebx, 0x1
	mov ecx, [esi+0x8]
	cmp ebx, ecx
	jl nb_encode_20
nb_encode_10:
	mov edx, [esi+0x54]
	mov eax, [esi+0x20]
	lea eax, [eax*4+0x4]
	mov [esp+0x8], eax
	lea eax, [edx+ecx*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call speex_move
	mov edx, [esi+0x5c]
	mov eax, [esi+0x20]
	lea eax, [eax*4+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	lea eax, [edx+eax*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call speex_move
	mov eax, [ebp-0x11c]
	neg eax
	and eax, 0x3
	add eax, [ebp-0x11c]
	mov edx, [esi+0x14]
	lea ecx, [eax+edx*4]
	mov [ebp-0x68], ecx
	mov edi, eax
	test edx, edx
	jle nb_encode_30
	xor ebx, ebx
nb_encode_40:
	lea eax, [ebx*4]
	mov edx, [esi+0x50]
	mov ecx, [esi+0x68]
	movss xmm0, dword [edx+eax]
	mulss xmm0, [ecx+eax]
	movss [edi+eax], xmm0
	add ebx, 0x1
	mov edx, [esi+0x14]
	cmp ebx, edx
	jl nb_encode_40
nb_encode_30:
	mov [esp+0xc], edx
	mov eax, [esi+0x18]
	add eax, 0x1
	mov [esp+0x8], eax
	mov eax, [esi+0x6c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _spx_autocorr
	mov eax, [esi+0x6c]
	movss xmm0, dword [eax]
	mulss xmm0, [esi+0x44]
	movss [eax], xmm0
	mov edx, [esi+0x18]
	lea eax, [edx+0x1]
	test eax, eax
	jle nb_encode_50
	xor ebx, ebx
nb_encode_60:
	lea edx, [ebx*4]
	mov ecx, edx
	add ecx, [esi+0x6c]
	mov eax, [esi+0x70]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+edx]
	movss [ecx], xmm0
	add ebx, 0x1
	mov edx, [esi+0x18]
	lea eax, [edx+0x1]
	cmp ebx, eax
	jl nb_encode_60
nb_encode_50:
	mov [esp+0x8], edx
	mov eax, [esi+0x6c]
	mov [esp+0x4], eax
	mov eax, [esi+0x74]
	mov [esp], eax
	call _spx_lpc
	fstp st0
	mov ebx, [ebp-0x68]
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x3e4ccccd
	mov dword [esp+0xc], 0xf
	mov eax, [esi+0x78]
	mov [esp+0x8], eax
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov eax, [esi+0x74]
	mov [esp], eax
	call lpc_to_lsp
	mov edx, [esi+0x18]
	cmp eax, edx
	jz nb_encode_70
	cmp dword [esi+0xe0], 0x1
	jle nb_encode_80
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x3d4ccccd
	mov dword [esp+0xc], 0xb
	mov eax, [esi+0x78]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [esi+0x74]
	mov [esp], eax
	call lpc_to_lsp
	cmp [esi+0x18], eax
	jz nb_encode_70
nb_encode_80:
	mov eax, [esi+0x18]
	test eax, eax
	jg nb_encode_90
nb_encode_70:
	mov edi, [esi+0x4]
	test edi, edi
	jz nb_encode_100
nb_encode_610:
	mov eax, [esi+0x18]
	test eax, eax
	jg nb_encode_110
nb_encode_570:
	mov dword [esp+0x8], 0x3b03126f
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov eax, [esi+0x88]
	mov [esp], eax
	call lsp_enforce_margin
	mov edi, [ebp-0x68]
	mov [esp+0xc], edi
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x88]
	mov [esp], eax
	call lsp_to_lpc
	mov edx, [esi+0xf4]
	mov eax, [esi+0xf0]
	mov eax, [eax+edx*4]
	test eax, eax
	jz nb_encode_120
	mov ebx, [esi+0xc0]
	test ebx, ebx
	jz nb_encode_130
nb_encode_120:
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x98]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x38]
	mov [esp], eax
	call bw_lpc
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x3c]
	mov [esp], eax
	call bw_lpc
	mov eax, [esi+0xa8]
	mov [esp+0x18], eax
	mov eax, [esi+0x18]
	mov [esp+0x14], eax
	mov eax, [esi+0x8]
	mov [esp+0x10], eax
	mov eax, [esi+0x60]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x98]
	mov [esp+0x4], eax
	mov eax, [esi+0x50]
	mov [esp], eax
	call filter_mem2
	mov eax, [ebp-0x68]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x6
	lea eax, [ebp-0x50]
	mov [esp+0x14], eax
	lea eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x20]
	mov [esp+0x8], eax
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov eax, [esi+0x60]
	mov [esp], eax
	call open_loop_nbest_pitch
	mov ecx, [ebp-0x38]
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0xa4], xmm0
	cvtss2sd xmm1, xmm0
	mulsd xmm1, [_double_0_85000000]
	xor eax, eax
	lea ebx, [eax+0x1]
	lea eax, [ebx*4]
	cvtss2sd xmm0, [ebp+eax-0x50]
	ucomisd xmm0, xmm1
	jbe nb_encode_140
nb_encode_180:
	mov eax, [ebp+eax-0x38]
	mov [ebp-0x6c], eax
	add eax, eax
	mov edx, eax
	sub edx, ecx
	js nb_encode_150
nb_encode_550:
	cmp edx, 0x2
	jg nb_encode_160
nb_encode_400:
	mov eax, ebx
	cmp ebx, 0x5
	jz nb_encode_170
nb_encode_190:
	mov ecx, [ebp-0x6c]
	lea ebx, [eax+0x1]
	lea eax, [ebx*4]
	cvtss2sd xmm0, [ebp+eax-0x50]
	ucomisd xmm0, xmm1
	ja nb_encode_180
nb_encode_140:
	mov [ebp-0x6c], ecx
nb_encode_430:
	mov eax, ebx
	cmp ebx, 0x5
	jnz nb_encode_190
nb_encode_170:
	mov eax, [esi+0xac]
	mov [esp+0x14], eax
	mov eax, [esi+0x18]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x58]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x50]
	mov [esp], eax
	call fir_mem2
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov eax, [esi+0x58]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0xa0]
	mov eax, [esi+0xb4]
	test eax, eax
	jz nb_encode_200
	mov eax, [esi+0xc0]
	test eax, eax
	jnz nb_encode_210
	mov eax, [esi+0xc4]
	test eax, eax
	jnz nb_encode_210
nb_encode_200:
	mov dword [esi+0xbc], 0xbf800000
nb_encode_680:
	mov eax, [esi+0xec]
	test eax, eax
	jnz nb_encode_220
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+ebx*4]
	test eax, eax
	jz nb_encode_230
nb_encode_710:
	mov eax, [esi+0x4]
	test eax, eax
	jz nb_encode_240
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_240
	xor ebx, ebx
nb_encode_250:
	lea edx, [ebx*4]
	mov ecx, [esi+0x80]
	mov eax, [esi+0x78]
	mov eax, [edx+eax]
	mov [edx+ecx], eax
	add ebx, 0x1
	cmp [esi+0x18], ebx
	jg nb_encode_250
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
nb_encode_240:
	mov edx, [edx+ebx*4]
	mov edi, [ebp+0x10]
	mov [esp+0xc], edi
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	mov eax, [esi+0x7c]
	mov [esp+0x4], eax
	mov eax, [esi+0x78]
	mov [esp], eax
	call dword [edx+0x10]
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+ebx*4]
	cmp dword [eax], 0xffffffff
	jz nb_encode_260
	mov dword [esp+0x8], 0x7
	mov eax, [ebp-0x6c]
	sub eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call speex_bits_pack
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+ebx*4]
nb_encode_260:
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz nb_encode_270
nb_encode_1340:
	cvtss2sd xmm0, [ebp-0xa0]
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0x118]
	movsd xmm0, qword [ebp-0x118]
	mulsd xmm0, [_double_3_50000000]
	addsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call floor
	fstp qword [ebp-0xc0]
	cvttsd2si ebx, qword [ebp-0xc0]
	test ebx, ebx
	js nb_encode_280
	cmp ebx, 0x1f
	jle nb_encode_290
	mov ebx, 0x1f
	movsd xmm0, qword [_double_31_00000000]
nb_encode_630:
	divsd xmm0, qword [_double_3_50000000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0xc8]
	cvtsd2ss xmm0, [ebp-0xc8]
	movss [ebp-0x5c], xmm0
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_pack
	mov ecx, [esi+0x4]
	test ecx, ecx
	jz nb_encode_300
	mov edi, [esi+0x18]
	test edi, edi
	jle nb_encode_300
	xor ebx, ebx
nb_encode_310:
	lea edx, [ebx*4]
	mov ecx, [esi+0x84]
	mov eax, [esi+0x7c]
	mov eax, [edx+eax]
	mov [edx+ecx], eax
	add ebx, 0x1
	cmp [esi+0x18], ebx
	jg nb_encode_310
nb_encode_300:
	mov ebx, 0x4
	mov eax, ebx
	sub eax, [ebp-0x68]
	and eax, 0x3
	add eax, [ebp-0x68]
	mov edx, [esi+0xc]
	mov [ebp-0xcc], edx
	mov ecx, edx
	shl ecx, 0x2
	add eax, ecx
	mov edi, eax
	sub edi, ecx
	mov [ebp-0x9c], edi
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ecx+eax]
	mov edx, eax
	sub edx, ecx
	mov [ebp-0x98], edx
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ecx+eax]
	mov edi, eax
	sub edi, ecx
	mov [ebp-0x90], edi
	mov edx, ebx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [ecx+eax]
	mov edx, eax
	sub edx, ecx
	mov [ebp-0x8c], edx
	sub ebx, eax
	and ebx, 0x3
	add eax, ebx
	mov ecx, [esi+0x18]
	lea ebx, [eax+ecx*4]
	mov [ebp-0x64], ebx
	mov [ebp-0x94], eax
	mov edx, [esi+0x10]
	test edx, edx
	jg nb_encode_320
nb_encode_1180:
	mov eax, [esi+0xf4]
	test eax, eax
	jle nb_encode_330
	mov ebx, [esi+0x18]
	test ebx, ebx
	jle nb_encode_330
	xor ebx, ebx
nb_encode_340:
	lea edx, [ebx*4]
	mov ecx, [esi+0x80]
	mov eax, [esi+0x78]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [esi+0x18]
	jl nb_encode_340
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_330
	xor ebx, ebx
nb_encode_350:
	lea edx, [ebx*4]
	mov ecx, [esi+0x84]
	mov eax, [esi+0x7c]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [esi+0x18]
	jl nb_encode_350
nb_encode_330:
	cmp dword [esi+0xf4], 0x1
	jz nb_encode_360
nb_encode_1280:
	mov dword [esi+0x4], 0x0
	mov ecx, [esi+0xf4]
	mov eax, [esi+0xf0]
	mov edx, [eax+ecx*4]
	mov eax, noise_codebook_quant
	cmp [edx+0x24], eax
	jz nb_encode_370
	test ecx, ecx
	jnz nb_encode_380
nb_encode_370:
	mov dword [esi+0x28], 0x1
nb_encode_620:
	mov eax, 0x1
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_encode_160:
	mov edi, [ebp-0x6c]
	lea eax, [edi+edi*2]
	mov edx, eax
	sub edx, ecx
	js nb_encode_390
nb_encode_760:
	cmp edx, 0x3
	jle nb_encode_400
	mov eax, [ebp-0x6c]
	shl eax, 0x2
	mov edx, eax
	sub edx, ecx
	js nb_encode_410
	cmp edx, 0x4
	jle nb_encode_400
nb_encode_1330:
	mov edx, [ebp-0x6c]
	lea eax, [edx+edx*4]
	mov edx, eax
	sub edx, ecx
	js nb_encode_420
	cmp edx, 0x5
	jle nb_encode_400
	mov [ebp-0x6c], ecx
	jmp nb_encode_430
nb_encode_210:
	mov ecx, [esi+0x18]
	test ecx, ecx
	jg nb_encode_440
	pxor xmm3, xmm3
	movss [ebp-0x88], xmm3
nb_encode_590:
	mov eax, [esi+0xd0]
	test eax, eax
	jz nb_encode_450
	movss xmm1, dword [esi+0xd4]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0xd8]
	ucomiss xmm0, xmm3
	jbe nb_encode_460
	cvtss2sd xmm1, xmm1
	mulsd xmm1, [_double__0_00001000]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [esi+0xdc]
	cvtss2sd xmm0, xmm0
	divsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	cvtss2sd xmm2, xmm0
	ucomisd xmm2, [_double_0_05000000]
	ja nb_encode_470
	ucomisd xmm2, [_double__0_05000000]
	jae nb_encode_480
nb_encode_1350:
	jp nb_encode_480
	movss xmm0, dword [_float__0_05000000]
nb_encode_480:
	addss xmm0, [esi+0xb8]
	movss [esi+0xb8], xmm0
	ucomiss xmm0, [_float_10_00000000]
	ja nb_encode_490
nb_encode_1300:
	ucomiss xmm3, [esi+0xb8]
	ja nb_encode_500
nb_encode_450:
	movss xmm0, dword [ebp-0xa4]
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x6c]
	mov [esp+0xc], eax
	mov eax, [esi+0x8]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [esi+0xb4]
	mov [esp], eax
	call vbr_analysis
	fstp dword [ebp-0x10c]
	movss xmm2, dword [ebp-0x10c]
	movss [esi+0xbc], xmm2
	mov edi, [esi+0xc0]
	test edi, edi
	jnz nb_encode_510
	ucomiss xmm2, [_float_2_00000000]
	jae nb_encode_520
	jp nb_encode_520
	mov eax, [esi+0xcc]
	test eax, eax
	jz nb_encode_530
	cvtss2sd xmm0, [ebp-0x88]
	ucomisd xmm0, [_double_0_05000000]
	ja nb_encode_530
	mov edx, [esi+0xc8]
	test edx, edx
	jz nb_encode_530
	cmp eax, 0x14
	jg nb_encode_530
	add eax, 0x1
	mov [esi+0xcc], eax
	xor eax, eax
	jmp nb_encode_540
nb_encode_150:
	mov edx, ecx
	sub edx, eax
	jmp nb_encode_550
nb_encode_130:
	mov ecx, [esi+0xc4]
	test ecx, ecx
	jnz nb_encode_120
	mov edx, [eax+0x4]
	test edx, edx
	jnz nb_encode_120
	cmp dword [eax], 0xffffffff
	jnz nb_encode_120
	mov dword [ebp-0x6c], 0x0
	pxor xmm0, xmm0
	movss [ebp-0xa4], xmm0
	jmp nb_encode_170
nb_encode_110:
	xor ebx, ebx
nb_encode_560:
	lea edx, [ebx*4]
	mov ecx, [esi+0x88]
	mov eax, [esi+0x78]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [esi+0x18], ebx
	jg nb_encode_560
	jmp nb_encode_570
nb_encode_440:
	mov ebx, [esi+0x80]
	mov edx, [esi+0x78]
	xor eax, eax
	pxor xmm3, xmm3
	movss [ebp-0x88], xmm3
nb_encode_580:
	movss xmm0, dword [ebx+eax*4]
	subss xmm0, [edx+eax*4]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x88]
	movss [ebp-0x88], xmm0
	add eax, 0x1
	cmp ecx, eax
	jnz nb_encode_580
	jmp nb_encode_590
nb_encode_90:
	xor ebx, ebx
nb_encode_600:
	lea edx, [ebx*4]
	mov ecx, [esi+0x78]
	mov eax, [esi+0x80]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [esi+0x18], ebx
	jg nb_encode_600
	mov edi, [esi+0x4]
	test edi, edi
	jnz nb_encode_610
nb_encode_100:
	mov edx, [esi+0x10]
	lea eax, [edx+edx]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x88]
	mov [esp+0x8], eax
	mov eax, [esi+0x78]
	mov [esp+0x4], eax
	mov eax, [esi+0x80]
	mov [esp], eax
	call lsp_interpolate
	jmp nb_encode_570
nb_encode_380:
	mov dword [esi+0x28], 0x0
	jmp nb_encode_620
nb_encode_290:
	cvtsi2sd xmm0, ebx
	jmp nb_encode_630
nb_encode_510:
	mov dword [ebp-0x1c], 0x8
	movss xmm4, dword [_float_100_00000000]
	mov dword [ebp-0x84], 0x0
	mov ebx, 0x8
	mov edi, vbr_nb_thresh
	movss xmm0, dword [esi+0xb8]
	movss [ebp-0xd0], xmm0
	movss [esp], xmm0
	movss [ebp-0xf8], xmm2
	movss [ebp-0x108], xmm4
	call floorf
	fstp dword [ebp-0xb0]
	cvttss2si eax, [ebp-0xb0]
	lea edx, [eax+0x1]
	cvtsi2ss xmm0, eax
	movss xmm5, dword [ebp-0xd0]
	subss xmm5, xmm0
	cvtsi2ss xmm3, edx
	subss xmm3, [ebp-0xd0]
	lea edx, [edi+eax*4+0x160]
	cmp eax, 0xa
	movss xmm2, dword [ebp-0xf8]
	movss xmm4, dword [ebp-0x108]
	jz nb_encode_640
nb_encode_660:
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x4]
	movaps xmm0, xmm3
	mulss xmm0, [edx]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jbe nb_encode_650
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm4, xmm0
	jbe nb_encode_650
	mov [ebp-0x84], ebx
	movaps xmm4, xmm0
nb_encode_650:
	sub edx, 0x2c
	sub ebx, 0x1
	jnz nb_encode_660
	mov ecx, [ebp-0x84]
	mov [ebp-0x1c], ecx
	test ecx, ecx
	jz nb_encode_670
nb_encode_700:
	mov dword [esi+0xcc], 0x0
nb_encode_1320:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	mov [esp], esi
	call speex_encoder_ctl
	mov ecx, [esi+0xd0]
	test ecx, ecx
	jz nb_encode_680
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov [esp], esi
	call speex_encoder_ctl
	mov eax, [ebp-0x20]
	sub eax, [esi+0xd0]
	cvtsi2ss xmm0, eax
	addss xmm0, [esi+0xd4]
	movss [esi+0xd4], xmm0
	cvtss2sd xmm1, [esi+0xd8]
	mulsd xmm1, [_double_0_95000000]
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_0_05000000]
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [esi+0xd8], xmm1
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [esi+0xdc]
	movss [esi+0xdc], xmm0
	jmp nb_encode_680
nb_encode_640:
	movss xmm1, dword [edi+0x188]
	ucomiss xmm2, xmm1
	jbe nb_encode_690
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm4, xmm0
	jbe nb_encode_690
	mov [ebp-0x84], ebx
	movaps xmm4, xmm0
nb_encode_690:
	sub edi, 0x2c
	sub ebx, 0x1
	jnz nb_encode_640
	mov ecx, [ebp-0x84]
	mov [ebp-0x1c], ecx
	test ecx, ecx
	jz nb_encode_670
	jmp nb_encode_700
nb_encode_220:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	call speex_bits_pack
	mov dword [esp+0x8], 0x4
	mov eax, [esi+0xf4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call speex_bits_pack
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+ebx*4]
	test eax, eax
	jnz nb_encode_710
nb_encode_230:
	mov ecx, [esi+0x8]
	test ecx, ecx
	jle nb_encode_720
	xor ebx, ebx
nb_encode_730:
	lea eax, [ebx*4]
	mov ecx, eax
	add ecx, [esi+0x58]
	mov edx, [esi+0x60]
	mov dword [edx+eax], 0x26901d7d
	mov dword [ecx], 0x26901d7d
	add ebx, 0x1
	cmp ebx, [esi+0x8]
	jl nb_encode_730
nb_encode_720:
	mov edi, [esi+0x18]
	test edi, edi
	jle nb_encode_740
	xor edx, edx
nb_encode_750:
	mov eax, [esi+0xa4]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp edx, [esi+0x18]
	jl nb_encode_750
nb_encode_740:
	mov dword [esi+0x4], 0x1
	mov dword [esi+0x28], 0x1
	mov eax, [esi+0xa0]
	mov [esp+0x14], eax
	mov eax, [esi+0x18]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x50]
	mov [esp+0x8], eax
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov eax, [esi+0x58]
	mov [esp], eax
	call iir_mem2
	xor eax, eax
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
nb_encode_390:
	mov edx, ecx
	sub edx, eax
	jmp nb_encode_760
nb_encode_270:
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, [_float_15_00000000]
	movss [ebp-0xa4], xmm0
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call floor
	fstp qword [ebp-0xb8]
	cvttsd2si eax, qword [ebp-0xb8]
	cmp eax, 0xf
	jg nb_encode_770
	test eax, eax
	js nb_encode_780
	cvtsi2sd xmm0, eax
	jmp nb_encode_790
nb_encode_320:
	mov dword [ebp-0xa8], 0x0
	mov edi, [ebp-0xcc]
nb_encode_1190:
	mov eax, [ebp-0xa8]
	imul eax, edi
	mov [ebp-0x80], eax
	shl eax, 0x2
	mov ebx, [esi+0x50]
	add ebx, eax
	mov [ebp-0x7c], ebx
	mov ebx, [esi+0x58]
	add ebx, eax
	mov [ebp-0x74], ebx
	add eax, [esi+0x60]
	mov [ebp-0x78], eax
	mov [esp+0x14], edx
	mov eax, [ebp-0xa8]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [esi+0x88]
	mov [esp+0x8], eax
	mov eax, [esi+0x78]
	mov [esp+0x4], eax
	mov eax, [esi+0x80]
	mov [esp], eax
	call lsp_interpolate
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov edx, [ebp-0xa8]
	mov [esp+0x10], edx
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x8c]
	mov [esp+0x8], eax
	mov eax, [esi+0x7c]
	mov [esp+0x4], eax
	mov eax, [esi+0x84]
	mov [esp], eax
	call lsp_interpolate
	mov ebx, 0x3b03126f
	mov [esp+0x8], ebx
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov eax, [esi+0x88]
	mov [esp], eax
	call lsp_enforce_margin
	mov [esp+0x8], ebx
	mov eax, [esi+0x18]
	mov [esp+0x4], eax
	mov eax, [esi+0x8c]
	mov [esp], eax
	call lsp_enforce_margin
	mov ecx, [ebp-0x64]
	mov [esp+0xc], ecx
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x88]
	mov [esp], eax
	call lsp_to_lpc
	mov ebx, [ebp-0x64]
	mov [esp+0xc], ebx
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov eax, [esi+0x8c]
	mov [esp], eax
	call lsp_to_lpc
	mov ecx, [esi+0x18]
	test ecx, ecx
	jle nb_encode_800
	xor edx, edx
	movss xmm1, dword [_float_1_00000000]
	mov eax, [esi+0x94]
nb_encode_810:
	movss xmm0, dword [eax+0x4]
	subss xmm0, [eax]
	addss xmm1, xmm0
	add edx, 0x2
	add eax, 0x8
	cmp ecx, edx
	jg nb_encode_810
nb_encode_1220:
	mov eax, [esi+0xb0]
	mov edx, [ebp-0xa8]
	movss [eax+edx*4], xmm1
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x98]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	mov eax, [esi+0x38]
	mov [esp], eax
	call bw_lpc
	movss xmm0, dword [esi+0x3c]
	ucomiss xmm0, [_float_0_00000000]
	jb nb_encode_820
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x90]
	mov [esp+0x4], eax
	movss [esp], xmm0
	call bw_lpc
nb_encode_1230:
	mov eax, [esi+0xc]
	test eax, eax
	jle nb_encode_830
	mov ecx, 0x1
nb_encode_840:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x74]
	mov edx, [ebx+eax-0x4]
	mov ebx, [ebp-0x8c]
	mov [ebx+eax-0x4], edx
	mov eax, ecx
	add ecx, 0x1
	cmp [esi+0xc], eax
	jg nb_encode_840
nb_encode_830:
	sar dword [ebp-0xcc], 1
	mov eax, [esi+0xe0]
	test eax, eax
	cmovz edi, [ebp-0xcc]
	mov eax, [ebp-0x64]
	mov [esp+0x18], eax
	mov eax, [esi+0x18]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov edx, [ebp-0x90]
	mov [esp+0xc], edx
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x98]
	mov [esp+0x4], eax
	mov eax, [esi+0x94]
	mov [esp], eax
	call compute_impulse_response
	cmp edi, [esi+0xc]
	jge nb_encode_850
	mov ecx, [ebp-0x90]
	lea edx, [ecx+edi*4]
	mov eax, edi
nb_encode_860:
	mov dword [edx], 0x26901d7d
	add eax, 0x1
	add edx, 0x4
	cmp [esi+0xc], eax
	jg nb_encode_860
nb_encode_850:
	mov eax, [esi+0xc]
	test eax, eax
	jle nb_encode_870
	xor eax, eax
nb_encode_880:
	mov ebx, [ebp-0x74]
	mov dword [ebx+eax*4], 0x26901d7d
	add eax, 0x1
	cmp [esi+0xc], eax
	jg nb_encode_880
nb_encode_870:
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_890
	xor ecx, ecx
nb_encode_900:
	lea eax, [ecx*4]
	mov edx, [esi+0xa0]
	mov edx, [edx+eax]
	mov edi, [ebp-0x94]
	mov [edi+eax], edx
	add ecx, 0x1
	mov eax, [esi+0x18]
	cmp eax, ecx
	jg nb_encode_900
nb_encode_890:
	mov edx, [ebp-0x94]
	mov [esp+0x14], edx
	mov [esp+0x10], eax
	mov eax, [esi+0xc]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x74]
	mov [esp+0x8], ecx
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov [esp], ecx
	call iir_mem2
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_910
	xor ecx, ecx
nb_encode_920:
	lea eax, [ecx*4]
	mov edx, [esi+0xa4]
	mov edx, [edx+eax]
	mov ebx, [ebp-0x94]
	mov [ebx+eax], edx
	add ecx, 0x1
	mov eax, [esi+0x18]
	cmp ecx, eax
	jl nb_encode_920
nb_encode_910:
	mov edi, [ebp-0x94]
	mov [esp+0x18], edi
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [ebp-0x9c]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x98]
	mov [esp+0x4], eax
	mov edx, [ebp-0x74]
	mov [esp], edx
	call filter_mem2
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_930
	xor ecx, ecx
nb_encode_940:
	lea eax, [ecx*4]
	mov edx, [esi+0xa4]
	mov edx, [edx+eax]
	mov ebx, [ebp-0x94]
	mov [ebx+eax], edx
	add ecx, 0x1
	mov eax, [esi+0x18]
	cmp eax, ecx
	jg nb_encode_940
nb_encode_930:
	mov edi, [ebp-0x94]
	mov [esp+0x18], edi
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x98]
	mov [esp+0x4], eax
	mov edx, [ebp-0x7c]
	mov [esp], edx
	call filter_mem2
	mov eax, [esi+0xe0]
	test eax, eax
	jnz nb_encode_950
	mov edx, [esi+0x18]
	test edx, edx
	jle nb_encode_950
	xor ebx, ebx
nb_encode_960:
	lea eax, [ebx*4]
	mov ecx, [esi+0xa4]
	mov edi, [ebp-0x94]
	mov edx, [edi+eax]
	mov [ecx+eax], edx
	add ebx, 0x1
	cmp [esi+0x18], ebx
	jg nb_encode_960
nb_encode_950:
	mov ecx, [esi+0xc]
	test ecx, ecx
	jle nb_encode_970
	mov edx, 0x1
nb_encode_980:
	lea eax, [edx*4]
	mov ecx, [ebp-0x78]
	movss xmm0, dword [eax+ecx-0x4]
	mov ebx, [ebp-0x9c]
	subss xmm0, [ebx+eax-0x4]
	mov edi, [ebp-0x98]
	movss [edi+eax-0x4], xmm0
	mov eax, edx
	add edx, 0x1
	cmp [esi+0xc], eax
	jg nb_encode_980
	mov ecx, [esi+0xc]
	test ecx, ecx
	jle nb_encode_970
	xor eax, eax
nb_encode_990:
	mov edx, [ebp-0x74]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov ecx, [esi+0xc]
	cmp ecx, eax
	jg nb_encode_990
nb_encode_970:
	mov edx, [esi+0xf4]
	mov eax, [esi+0xf0]
	mov ebx, [eax+edx*4]
	mov edi, [ebx+0x18]
	mov [ebp-0xac], edi
	test edi, edi
	jz nb_encode_1000
	mov edx, [ebx]
	cmp edx, 0xffffffff
	jz nb_encode_1010
	test edx, edx
	jnz nb_encode_1020
	mov edi, [ebp-0x6c]
	mov edx, edi
nb_encode_1250:
	mov eax, [esi+0x28]
	test eax, eax
	jz nb_encode_1030
	cmp edx, [ebp-0x80]
	cmovg edx, [ebp-0x80]
nb_encode_1030:
	mov eax, [esi+0xe8]
	mov [esp+0x48], eax
	mov dword [esp+0x44], 0x0
	mov eax, [esi+0xe0]
	mov [esp+0x40], eax
	mov eax, [ebp-0x90]
	mov [esp+0x3c], eax
	mov eax, [ebp-0x74]
	mov [esp+0x38], eax
	mov eax, [ebp-0x64]
	mov [esp+0x34], eax
	mov eax, [ebp+0x10]
	mov [esp+0x30], eax
	mov [esp+0x2c], ecx
	mov eax, [esi+0x18]
	mov [esp+0x28], eax
	movss xmm0, dword [ebp-0xa4]
	movss [esp+0x24], xmm0
	mov [esp+0x20], edx
	mov [esp+0x1c], edi
	mov eax, [ebx+0x20]
	mov [esp+0x18], eax
	mov eax, [ebp-0x74]
	mov [esp+0x14], eax
	mov eax, [esi+0x9c]
	mov [esp+0x10], eax
	mov eax, [esi+0x98]
	mov [esp+0xc], eax
	mov eax, [esi+0x94]
	mov [esp+0x8], eax
	mov edx, [ebp-0x78]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call dword [ebp-0xac]
	mov edx, [esi+0x34]
	mov ebx, [ebp-0xa8]
	mov [edx+ebx*4], eax
nb_encode_1290:
	mov ecx, [esi+0xc]
	mov edx, [ebp-0xa8]
	imul edx, ecx
	mov eax, [esi+0x64]
	lea edi, [eax+edx*4]
	test ecx, ecx
	jle nb_encode_1040
	xor eax, eax
nb_encode_1050:
	mov dword [edi+eax*4], 0x0
	add eax, 0x1
	cmp [esi+0xc], eax
	jg nb_encode_1050
	mov ecx, [esi+0xc]
	test ecx, ecx
	jle nb_encode_1040
	mov ebx, 0x1
nb_encode_1060:
	lea eax, [ebx*4]
	mov edx, [ebp-0x8c]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	mov ecx, [ebp-0x74]
	subss xmm0, [ecx+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ebx
	mov ecx, [esi+0xc]
	add ebx, 0x1
	cmp eax, ecx
	jl nb_encode_1060
nb_encode_1040:
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x8c]
	mov [esp], ebx
	call compute_rms
	fstp dword [ebp-0x10c]
	movss xmm0, dword [ebp-0x10c]
	divss xmm0, dword [ebp-0x5c]
	mov eax, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+eax*4]
	mov eax, [eax+0x8]
	test eax, eax
	jnz nb_encode_1070
	movss xmm0, dword [ebp-0x5c]
	movss [ebp-0x70], xmm0
nb_encode_1210:
	mov eax, [esi+0xc]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov [esp], eax
	call signal_div
	mov edx, [esi+0xf4]
	mov eax, [esi+0xf0]
	mov edx, [eax+edx*4]
	mov ecx, [edx+0x24]
	test ecx, ecx
	jz nb_encode_1080
	mov eax, [edx+0xc]
	mov [esp+0x30], eax
	mov eax, [esi+0xe0]
	mov [esp+0x2c], eax
	mov ebx, [ebp-0x64]
	mov [esp+0x28], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x24], eax
	mov ebx, [ebp-0x90]
	mov [esp+0x20], ebx
	mov [esp+0x1c], edi
	mov eax, [esi+0xc]
	mov [esp+0x18], eax
	mov eax, [esi+0x18]
	mov [esp+0x14], eax
	mov eax, [edx+0x2c]
	mov [esp+0x10], eax
	mov eax, [esi+0x9c]
	mov [esp+0xc], eax
	mov eax, [esi+0x98]
	mov [esp+0x8], eax
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov eax, [ebp-0x98]
	mov [esp], eax
	call ecx
	mov eax, [esi+0xc]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x70]
	movss [esp+0x8], xmm0
	mov [esp+0x4], edi
	mov [esp], edi
	call signal_mul
	mov ebx, [esi+0xc]
	test ebx, ebx
	jle nb_encode_1090
	mov ecx, 0x1
nb_encode_1100:
	lea eax, [ecx*4]
	mov edx, [ebp-0x74]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	addss xmm0, [edi+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp [esi+0xc], eax
	jg nb_encode_1100
nb_encode_1090:
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
	mov eax, [edx+ebx*4]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz nb_encode_1110
	mov eax, [ebp-0x64]
	neg eax
	and eax, 0x3
	add eax, [ebp-0x64]
	mov ecx, [esi+0xc]
	lea edi, [eax+ecx*4]
	mov [ebp-0x60], edi
	mov edi, eax
	test ecx, ecx
	jle nb_encode_1120
	xor eax, eax
nb_encode_1130:
	mov dword [edi+eax*4], 0x0
	add eax, 0x1
	cmp eax, [esi+0xc]
	jl nb_encode_1130
	mov ecx, [esi+0xc]
	test ecx, ecx
	jle nb_encode_1140
	mov ebx, 0x1
	movsd xmm1, qword [_double_2_20000000]
	mov edx, [ebp-0x98]
	add edx, 0x4
nb_encode_1150:
	cvtss2sd xmm0, [edx-0x4]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	mov eax, ebx
	mov ecx, [esi+0xc]
	add ebx, 0x1
	add edx, 0x4
	cmp eax, ecx
	jl nb_encode_1150
nb_encode_1140:
	mov ebx, [esi+0xf4]
	mov edx, [esi+0xf0]
nb_encode_1120:
	mov edx, [edx+ebx*4]
	mov dword [esp+0x30], 0x0
	mov eax, [esi+0xe0]
	mov [esp+0x2c], eax
	mov eax, [ebp-0x60]
	mov [esp+0x28], eax
	mov ebx, [ebp+0x10]
	mov [esp+0x24], ebx
	mov eax, [ebp-0x90]
	mov [esp+0x20], eax
	mov [esp+0x1c], edi
	mov [esp+0x18], ecx
	mov eax, [esi+0x18]
	mov [esp+0x14], eax
	mov eax, [edx+0x2c]
	mov [esp+0x10], eax
	mov eax, [esi+0x9c]
	mov [esp+0xc], eax
	mov eax, [esi+0x98]
	mov [esp+0x8], eax
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x98]
	mov [esp], ecx
	call dword [edx+0x24]
	mov eax, [esi+0xc]
	mov [esp+0xc], eax
	cvtss2sd xmm0, [ebp-0x70]
	mulsd xmm0, [_double_0_45454545]
	cvtsd2ss xmm0, xmm0
	movss [esp+0x8], xmm0
	mov [esp+0x4], edi
	mov [esp], edi
	call signal_mul
	mov edx, [esi+0xc]
	test edx, edx
	jle nb_encode_1110
	mov ecx, 0x1
nb_encode_1160:
	lea eax, [ecx*4]
	mov edx, [ebp-0x74]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	addss xmm0, [edi+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp eax, [esi+0xc]
	jl nb_encode_1160
nb_encode_1110:
	mov eax, [esi+0xa0]
	mov [esp+0x14], eax
	mov eax, [esi+0x18]
	mov [esp+0x10], eax
	mov eax, [esi+0xc]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x7c]
	mov [esp+0x8], ebx
	mov eax, [esi+0x94]
	mov [esp+0x4], eax
	mov edi, [ebp-0x74]
	mov [esp], edi
	call iir_mem2
	mov eax, [esi+0xe0]
	test eax, eax
	jnz nb_encode_1170
nb_encode_1260:
	add dword [ebp-0xa8], 0x1
	mov edx, [esi+0x10]
	cmp [ebp-0xa8], edx
	jge nb_encode_1180
	mov ecx, [esi+0x18]
	mov edi, [esi+0xc]
	mov [ebp-0xcc], edi
	jmp nb_encode_1190
nb_encode_1070:
	cmp eax, 0x3
	jz nb_encode_1200
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], exc_gain_quant_scal1_bound
	movss [esp], xmm0
	call scal_quant
	mov ebx, eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_pack
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [ebx*4+exc_gain_quant_scal1]
	movss [ebp-0x70], xmm0
	jmp nb_encode_1210
nb_encode_800:
	movss xmm1, dword [_float_1_00000000]
	jmp nb_encode_1220
nb_encode_820:
	mov eax, [esi+0x9c]
	mov dword [eax], 0x3f800000
	mov eax, [esi+0x18]
	test eax, eax
	jle nb_encode_1230
	mov edx, 0x1
nb_encode_1240:
	mov eax, [esi+0x9c]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp [esi+0x18], edx
	jge nb_encode_1240
	jmp nb_encode_1230
nb_encode_1020:
	mov eax, edx
	add eax, [esi+0x1c]
	sub eax, 0x1
	cmp [ebp-0x6c], eax
	cmovge eax, [ebp-0x6c]
	mov edi, [esi+0x20]
	sub edi, edx
	cmp eax, edi
	cmovg eax, edi
	mov [ebp-0x6c], eax
	sub eax, edx
	lea edi, [eax+0x1]
	add edx, [ebp-0x6c]
	jmp nb_encode_1250
nb_encode_1170:
	mov eax, [esi+0xa4]
	mov [esp+0x18], eax
	mov eax, [esi+0x18]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [ebp-0x78]
	mov [esp+0xc], eax
	mov eax, [esi+0x9c]
	mov [esp+0x8], eax
	mov eax, [esi+0x98]
	mov [esp+0x4], eax
	mov [esp], ebx
	call filter_mem2
	jmp nb_encode_1260
nb_encode_1010:
	mov edi, [esi+0x1c]
	mov edx, [esi+0x20]
	jmp nb_encode_1250
nb_encode_1080:
	mov dword [esp], _cstring_no_fixed_codeboo
	call speex_error
	jmp nb_encode_1090
nb_encode_1200:
	mov dword [esp+0x8], 0x8
	mov dword [esp+0x4], exc_gain_quant_scal3_bound
	movss [esp], xmm0
	call scal_quant
	mov ebx, eax
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_pack
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [ebx*4+exc_gain_quant_scal3]
	movss [ebp-0x70], xmm0
	jmp nb_encode_1210
nb_encode_360:
	mov eax, [esi+0xcc]
	test eax, eax
	jnz nb_encode_1270
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call speex_bits_pack
	jmp nb_encode_1280
nb_encode_1000:
	mov dword [esp], _cstring_no_pitch_predict
	call speex_error
	jmp nb_encode_1290
nb_encode_520:
	mov dword [esi+0xcc], 0x0
	mov eax, [esi+0xf8]
nb_encode_540:
	mov [esi+0xf4], eax
	jmp nb_encode_680
nb_encode_490:
	mov dword [esi+0xb8], 0x41200000
	jmp nb_encode_1300
nb_encode_670:
	mov eax, [esi+0xcc]
	test eax, eax
	jz nb_encode_1310
	cvtss2sd xmm0, [ebp-0x88]
	ucomisd xmm0, [_double_0_05000000]
	ja nb_encode_1310
	mov ebx, [esi+0xc8]
	test ebx, ebx
	jz nb_encode_1310
	cmp eax, 0x14
	jg nb_encode_1310
	mov dword [ebp-0x1c], 0x0
	add eax, 0x1
	mov [esi+0xcc], eax
	jmp nb_encode_1320
nb_encode_410:
	mov edi, ecx
	sub edi, eax
	cmp edi, 0x4
	jle nb_encode_400
	jmp nb_encode_1330
nb_encode_770:
	mov eax, 0xf
	movsd xmm0, qword [_double_15_00000000]
nb_encode_790:
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	movsd [ebp-0xe8], xmm0
	call speex_bits_pack
	movsd xmm0, qword [ebp-0xe8]
	mulsd xmm0, [_double_0_06666700]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xa4], xmm0
	jmp nb_encode_1340
nb_encode_470:
	movss xmm0, dword [_float_0_05000000]
	movsd xmm2, qword [_double_0_050000001]
	ucomisd xmm2, [_double__0_05000000]
	jae nb_encode_480
	jmp nb_encode_1350
nb_encode_1270:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0xf
	mov edx, [ebp+0x10]
	mov [esp], edx
	call speex_bits_pack
	jmp nb_encode_1280
nb_encode_530:
	mov dword [esi+0xcc], 0x1
	mov eax, 0x1
	jmp nb_encode_540
nb_encode_1310:
	mov dword [ebp-0x1c], 0x1
	mov dword [esi+0xcc], 0x1
	jmp nb_encode_1320
nb_encode_280:
	xor ebx, ebx
	pxor xmm0, xmm0
	jmp nb_encode_630
nb_encode_460:
	movaps xmm0, xmm3
	jmp nb_encode_480
nb_encode_500:
	mov dword [esi+0xb8], 0x0
	jmp nb_encode_450
nb_encode_420:
	mov edi, ecx
	sub edi, eax
	cmp edi, 0x5
	jle nb_encode_400
	mov [ebp-0x6c], ecx
	jmp nb_encode_430
nb_encode_780:
	xor eax, eax
	pxor xmm0, xmm0
	jmp nb_encode_790


;Initialized global or static variables of nb_celp:
SECTION .data


;Initialized constant data of nb_celp:
SECTION .rdata
exc_gain_quant_scal1: dd 0x3f346690, 0x3f869004, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
exc_gain_quant_scal3: dd 0x3d7a6373, 0x3e27789a, 0x3e9eee74, 0x3edb3fa7, 0x3f0e4e9c, 0x3f3813fd, 0x3f704e40, 0x3fa9d702
exc_gain_quant_scal1_bound: dd 0x3f60c34c
exc_gain_quant_scal3_bound: dd 0x3de61177, 0x3e72aae3, 0x3ebd16fd, 0x3efbee80, 0x3f23314d, 0x3f543116, 0x3f90ff11, 0x7fffffff, 0x0, 0x0, 0x0, 0x154f36, 0x154f47, 0x154f14, 0x154f7c, 0x154fc1, 0x154f7c, 0x154fc1, 0x154f14, 0x154f14, 0x154f96, 0x154faa, 0x154fd8, 0x154fef, 0x155006, 0x155025, 0x15503c, 0x15508a, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x1550c0, 0x1550d7, 0x1550ee, 0x154f14, 0x154f14, 0x1551f7, 0x1553f7, 0x15540e, 0x15531e, 0x1553e0, 0x155425, 0x15543c, 0x15520e, 0x155225, 0x154f14, 0x15523c, 0x155253, 0x15527d, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x154f14, 0x155294, 0x1552c4, 0x1552f1


;Zero initialized global or static variables of nb_celp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_unknown_nb_ctl_r:		db "Unknown nb_ctl request: ",0
_cstring_more_than_two_wi:		db "More than two wideband layers found: corrupted stream",3fh,0
_cstring_no_fixed_codeboo:		db "No fixed codebook",0
_cstring_no_pitch_predict:		db "No pitch prediction, what",27h,"s wrong",0
_cstring_invalid_wideband:		db "Invalid wideband mode encountered. Corrupted stream",3fh,0
_cstring_invalid_wideband1:		db "Invalid wideband mode encountered: corrupted stream",3fh,0
_cstring_invalid_mode_enc:		db "Invalid mode encountered: corrupted stream",3fh,0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_100_00000000:		dd 0x42c80000	; 100
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_double__0_50000000:		dq 0xbfe0000000000000	; -0.5
_double_16384_00000000:		dq 0x40d0000000000000	; 16384
_double_0_46000000:		dq 0x3fdd70a3d70a3d71	; 0.46
_double_0_54000000:		dq 0x3fe147ae147ae148	; 0.54
_double__0_46000000:		dq 0xbfdd70a3d70a3d71	; -0.46
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double__0_20000000:		dq 0xbfc999999999999a	; -0.2
_double_0_60000000:		dq 0x3fe3333333333333	; 0.6
_double_3_50000000:		dq 0x400c000000000000	; 3.5
_float__32767_00000000:		dd 0xc6fffe00	; -32767
_float_32767_00000000:		dd 0x46fffe00	; 32767
_float_0_99000001:		dd 0x3f7d70a4	; 0.99
_float_1_00999999:		dd 0x3f8147ae	; 1.01
_float_0_25000000:		dd 0x3e800000	; 0.25
_double_0_06666700:		dq 0x3fb11116a8b8f14e	; 0.066667
_double__0_04000000:		dq 0xbfa47ae147ae147b	; -0.04
_double_0_95000000:		dq 0x3fee666666666666	; 0.95
_float_0_94999999:		dd 0x3f733333	; 0.95
_double_0_00000000:		dq 0x3cd203af9ee75616	; 1e-15
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_0_45454545:		dq 0x3fdd1745d1745d17	; 0.454545
_float_0_00000000:		dd 0x0	; 0
_double_0_80000000:		dq 0x3fe999999999999a	; 0.8
_double_0_05000000:		dq 0x3fa999999999999a	; 0.05
_double_0_85000000:		dq 0x3feb333333333333	; 0.85
_double_31_00000000:		dq 0x403f000000000000	; 31
_double__0_00001000:		dq 0xbee4f8b588e368f1	; -1e-05
_double__0_05000000:		dq 0xbfa999999999999a	; -0.05
_float__0_05000000:		dd 0xbd4ccccd	; -0.05
_float_10_00000000:		dd 0x41200000	; 10
_float_2_00000000:		dd 0x40000000	; 2
_float_15_00000000:		dd 0x41700000	; 15
_double_2_20000000:		dq 0x400199999999999a	; 2.2
_double_15_00000000:		dq 0x402e000000000000	; 15
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_double_0_050000001:		dq 0x3fa99999a0000000	; 0.05

