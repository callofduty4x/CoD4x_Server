;Imports of sb_celp:
	extern bw_lpc
	extern iir_mem2
	extern fir_mem_up
	extern filter_mem2
	extern speex_warning_int
	extern speex_decoder_ctl
	extern speex_encoder_ctl
	extern floor
	extern speex_alloc
	extern speex_decoder_init
	extern speex_encoder_init
	extern cos
	extern exp
	extern speex_decoder_destroy
	extern speex_free
	extern speex_encoder_destroy
	extern speex_decode_native
	extern speex_bits_remaining
	extern speex_bits_peek
	extern speex_warning
	extern lsp_interpolate
	extern lsp_enforce_margin
	extern lsp_to_lpc
	extern speex_bits_unpack_unsigned
	extern compute_rms
	extern signal_mul
	extern qmf_decomp
	extern speex_encode_native
	extern speex_move
	extern _spx_autocorr
	extern _spx_lpc
	extern lpc_to_lsp
	extern log
	extern speex_bits_pack
	extern fir_mem2
	extern compute_impulse_response
	extern signal_div
	extern floorf

;Exports of sb_celp:
	global h1
	global h0
	global sb_decode_lost
	global sb_decoder_ctl
	global sb_encoder_ctl
	global sb_decoder_init
	global sb_encoder_init
	global sb_decoder_destroy
	global sb_encoder_destroy
	global sb_decode
	global sb_encode


SECTION .text


;sb_decode_lost(SBDecState*, float*, int, char*)
sb_decode_lost:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, eax
	mov [ebp-0x34], edx
	mov [ebp-0x38], ecx
	mov ebx, [ebp+0x8]
	test ecx, ecx
	jz sb_decode_lost_10
	mov eax, [eax+0x6c]
	mov [ebp-0x20], eax
	mov dword [edi+0x6c], 0x1
sb_decode_lost_190:
	mov dword [edi+0x1c], 0x1
	mov edx, [edi+0x18]
	mov [ebp-0x30], edx
	mov esi, edx
	shl esi, 0x2
	mov ecx, 0x4
	mov eax, ecx
	sub eax, ebx
	and eax, 0x3
	lea eax, [ebx+eax]
	lea eax, [eax+esi+0x4]
	mov ebx, esi
	neg ebx
	lea edx, [eax+ebx-0x4]
	mov [ebp-0x2c], edx
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [esi+eax+0x4]
	lea edx, [ebx+eax-0x4]
	mov [ebp-0x28], edx
	sub ecx, eax
	and ecx, 0x3
	add eax, ecx
	lea eax, [esi+eax+0x4]
	mov [ebp-0x1c], eax
	lea ebx, [ebx+eax-0x4]
	mov [ebp-0x24], ebx
	mov edx, [edi+0x24]
	test edx, edx
	jz sb_decode_lost_20
	mov edx, [edi+0x6c]
	mov eax, [edi+0x68]
	mov eax, [eax+edx*4]
	test eax, eax
	jz sb_decode_lost_30
	mov edx, [eax+0x30]
	mov ebx, [eax+0x34]
	mov esi, [eax+0x38]
sb_decode_lost_200:
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], edx
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], ebx
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x24]
	mov [esp+0x8], ebx
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], esi
	call bw_lpc
sb_decode_lost_20:
	mov eax, [ebp-0x38]
	test eax, eax
	jnz sb_decode_lost_40
	mov esi, [edi+0xc]
	test esi, esi
	jg sb_decode_lost_50
sb_decode_lost_130:
	mov eax, [edi+0x24]
	test eax, eax
	jnz sb_decode_lost_60
sb_decode_lost_150:
	mov ebx, [edi+0x18]
	test ebx, ebx
	jg sb_decode_lost_70
sb_decode_lost_180:
	mov eax, [edi+0x34]
	mov edx, [edi+0x5c]
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov edx, [edi+0x58]
	mov [esp+0x4], edx
	mov [esp], eax
	call iir_mem2
sb_decode_lost_160:
	mov eax, [ebp-0x1c]
	mov [esp+0x18], eax
	mov eax, [edi+0x40]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h0
	mov eax, [edi+0x2c]
	mov [esp], eax
	call fir_mem_up
	mov edx, [ebp-0x1c]
	mov [esp+0x18], edx
	mov eax, [edi+0x44]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h1
	mov eax, [edi+0x34]
	mov [esp], eax
	call fir_mem_up
	mov ecx, [edi+0x8]
	mov esi, [edi+0x3c]
	mov ebx, [edi+0x38]
	mov [ebp-0x3c], ebx
	test ecx, ecx
	jle sb_decode_lost_80
	xor edx, edx
	movss xmm4, dword [_float__32767_00000000]
	movss xmm3, dword [_float_32767_00000000]
	jmp sb_decode_lost_90
sb_decode_lost_100:
	mov ebx, [ebp-0x34]
	mov dword [ebx+eax], 0x46fffe00
	add edx, 0x1
	cmp ecx, edx
	jz sb_decode_lost_80
sb_decode_lost_90:
	lea eax, [edx*4]
	mov ebx, [ebp-0x3c]
	movss xmm2, dword [ebx+eax]
	subss xmm2, [esi+eax]
	addss xmm2, xmm2
	ucomiss xmm2, xmm3
	ja sb_decode_lost_100
	movaps xmm0, xmm2
	cmpss xmm0, xmm4, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float__32767_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	mov ebx, [ebp-0x34]
	movss [ebx+eax], xmm0
	add edx, 0x1
	cmp ecx, edx
	jnz sb_decode_lost_90
sb_decode_lost_80:
	mov eax, [ebp-0x38]
	test eax, eax
	jz sb_decode_lost_110
	mov eax, [ebp-0x20]
	mov [edi+0x6c], eax
sb_decode_lost_110:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_decode_lost_50:
	xor edx, edx
	movsd xmm1, qword [_double_0_90000000]
sb_decode_lost_120:
	mov eax, [edi+0x48]
	lea eax, [eax+edx*4]
	cvtss2sd xmm0, [eax]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [eax], xmm0
	add edx, 0x1
	cmp edx, [edi+0xc]
	jl sb_decode_lost_120
sb_decode_lost_40:
	mov esi, [edi+0xc]
	test esi, esi
	jle sb_decode_lost_130
	xor ebx, ebx
sb_decode_lost_140:
	lea edx, [ebx*4]
	mov ecx, [edi+0x34]
	mov eax, [edi+0x48]
	mov eax, [edx+eax]
	mov [edx+ecx], eax
	add ebx, 0x1
	mov esi, [edi+0xc]
	cmp esi, ebx
	jg sb_decode_lost_140
	mov eax, [edi+0x24]
	test eax, eax
	jz sb_decode_lost_150
sb_decode_lost_60:
	mov edx, [edi+0x18]
	mov ecx, [edi+0x34]
	mov eax, [edi+0x5c]
	lea eax, [eax+edx*4]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], esi
	mov [esp+0xc], ecx
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], ecx
	call filter_mem2
	mov edx, [edi+0x34]
	mov eax, [edi+0x5c]
	mov [esp+0x18], eax
	mov eax, [edi+0x18]
	mov [esp+0x14], eax
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, [edi+0x58]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov [esp], edx
	call filter_mem2
	jmp sb_decode_lost_160
sb_decode_lost_70:
	xor ecx, ecx
sb_decode_lost_170:
	lea edx, [ecx+ebx]
	mov eax, [edi+0x5c]
	mov dword [eax+edx*4], 0x0
	add ecx, 0x1
	mov ebx, [edi+0x18]
	cmp ecx, ebx
	jl sb_decode_lost_170
	mov esi, [edi+0xc]
	jmp sb_decode_lost_180
sb_decode_lost_10:
	mov edx, [eax+0x58]
	mov eax, [eax+0x18]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov dword [esp], 0x3f7d70a4
	call bw_lpc
	mov dword [ebp-0x20], 0x0
	jmp sb_decode_lost_190
sb_decode_lost_30:
	mov ebx, 0x3f333333
	mov edx, ebx
	xor esi, esi
	jmp sb_decode_lost_200
	nop


;sb_decoder_ctl(void*, int, void*)
sb_decoder_ctl:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp eax, 0x67
	ja sb_decoder_ctl_10
	jmp dword [eax*4+sb_decoder_ctl_jumptab_0]
sb_decoder_ctl_10:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_nb_ctl_r
	call speex_warning_int
	mov eax, 0xffffffff
sb_decoder_ctl_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_decoder_ctl_180:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebx+0x24], eax
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_190:
	mov edx, [ebx+0x8]
	mov eax, [ebp+0x10]
	mov [eax], edx
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_200:
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	test ecx, ecx
	js sb_decoder_ctl_30
	cmp ecx, 0xb
	mov eax, 0xa
	cmovge ecx, eax
sb_decoder_ctl_170:
	mov edx, [ebx]
	mov eax, [edx]
	mov eax, [eax+ecx*4+0x78]
	mov [ebx+0x6c], eax
	mov eax, [edx]
	mov eax, [eax+ecx*4+0x4c]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_210:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_220:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x9
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_230:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebx+0x6c], eax
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_240:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov edx, [ebx+0x6c]
	mov eax, [ebx+0x68]
	mov ecx, [eax+edx*4]
	test ecx, ecx
	jz sb_decoder_ctl_40
	mov esi, [ebp+0x10]
	mov edi, [ebx+0x20]
	imul edi, [ecx+0x40]
	mov eax, edi
	cdq
	idiv dword [ebx+0x8]
	add [esi], eax
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_250:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x14
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_260:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x16
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_270:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebx+0x20], eax
	sar eax, 1
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_280:
	mov edx, [ebx+0x20]
	mov eax, [ebp+0x10]
	mov [eax], edx
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_290:
	mov eax, [ebx+0x18]
	add eax, eax
	test eax, eax
	jle sb_decoder_ctl_50
	xor edx, edx
sb_decoder_ctl_60:
	mov eax, [ebx+0x5c]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	mov eax, [ebx+0x18]
	add eax, eax
	cmp edx, eax
	jl sb_decoder_ctl_60
sb_decoder_ctl_50:
	xor ecx, ecx
sb_decoder_ctl_70:
	mov edx, ecx
	add edx, [ebx+0x40]
	mov eax, [ebx+0x44]
	mov dword [eax+ecx], 0x0
	mov dword [edx], 0x0
	add ecx, 0x4
	cmp ecx, 0x100
	jnz sb_decoder_ctl_70
sb_decoder_ctl_80:
	xor eax, eax
sb_decoder_ctl_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_decoder_ctl_300:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebx+0x64], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_320:
	mov esi, [ebp+0x10]
	mov eax, [ebx+0x14]
	test eax, eax
	jle sb_decoder_ctl_80
	xor ecx, ecx
sb_decoder_ctl_90:
	lea eax, [ecx*4]
	mov edx, [ebx+0x60]
	mov edx, [edx+eax]
	mov [esi+eax], edx
	add ecx, 0x1
	cmp ecx, [ebx+0x14]
	jl sb_decoder_ctl_90
	xor eax, eax
	jmp sb_decoder_ctl_100
sb_decoder_ctl_330:
	mov ecx, [ebp+0x10]
	mov eax, [ebx+0x8]
	test eax, eax
	jle sb_decoder_ctl_110
	xor eax, eax
sb_decoder_ctl_120:
	mov dword [ecx+eax*4], 0x0
	add eax, 0x1
	cmp eax, [ebx+0x8]
	jl sb_decoder_ctl_120
sb_decoder_ctl_110:
	mov eax, [ebx+0xc]
	test eax, eax
	jle sb_decoder_ctl_80
	xor edx, edx
sb_decoder_ctl_130:
	mov eax, [ebx+0x48]
	movss xmm0, dword [eax+edx*4]
	addss xmm0, xmm0
	movss [ecx+edx*8], xmm0
	add edx, 0x1
	cmp edx, [ebx+0xc]
	jl sb_decoder_ctl_130
	xor eax, eax
	jmp sb_decoder_ctl_100
sb_decoder_ctl_340:
	mov ecx, [ebp+0x10]
	mov edi, [ebx+0x8]
	test edi, edi
	jle sb_decoder_ctl_140
	xor eax, eax
sb_decoder_ctl_150:
	mov dword [ecx+eax*4], 0x0
	add eax, 0x1
	cmp eax, [ebx+0x8]
	jl sb_decoder_ctl_150
sb_decoder_ctl_140:
	mov esi, [ebx+0xc]
	test esi, esi
	jle sb_decoder_ctl_80
	xor edx, edx
sb_decoder_ctl_160:
	mov eax, [ebx+0x48]
	movss xmm0, dword [eax+edx*4]
	addss xmm0, xmm0
	movss [ecx+edx*8], xmm0
	add edx, 0x1
	cmp edx, [ebx+0xc]
	jl sb_decoder_ctl_160
	xor eax, eax
	jmp sb_decoder_ctl_100
sb_decoder_ctl_350:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x67
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	xor eax, eax
	jmp sb_decoder_ctl_100
sb_decoder_ctl_310:
	mov edx, [ebx+0x64]
	mov eax, [ebp+0x10]
	mov [eax], edx
	xor eax, eax
	jmp sb_decoder_ctl_20
sb_decoder_ctl_30:
	xor ecx, ecx
	jmp sb_decoder_ctl_170
sb_decoder_ctl_40:
	mov esi, [ebp+0x10]
	mov edx, [ebx+0x20]
	shl edx, 0x2
	mov eax, edx
	cdq
	idiv dword [ebx+0x8]
	add [esi], eax
	xor eax, eax
	jmp sb_decoder_ctl_20
	
	
sb_decoder_ctl_jumptab_0:
	dd sb_decoder_ctl_180
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_190
	dd sb_decoder_ctl_200
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_200
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_210
	dd sb_decoder_ctl_220
	dd sb_decoder_ctl_230
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_240
	dd sb_decoder_ctl_250
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_260
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_270
	dd sb_decoder_ctl_280
	dd sb_decoder_ctl_290
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_300
	dd sb_decoder_ctl_310
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_10
	dd sb_decoder_ctl_320
	dd sb_decoder_ctl_330
	dd sb_decoder_ctl_340
	dd sb_decoder_ctl_350


;sb_encoder_ctl(void*, int, void*)
sb_encoder_ctl:
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
	ja sb_encoder_ctl_10
	jmp dword [eax*4+sb_encoder_ctl_jumptab_0]
sb_encoder_ctl_10:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_nb_ctl_r
	call speex_warning_int
	mov dword [ebp-0x2c], 0xffffffff
sb_encoder_ctl_20:
	mov eax, [ebp-0x2c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_encoder_ctl_250:
	mov edx, [edi+0x8]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_260:
	mov eax, [ebp+0x10]
	mov ecx, [eax]
	test ecx, ecx
	js sb_encoder_ctl_30
	cmp ecx, 0xb
	mov eax, 0xa
	cmovge ecx, eax
sb_encoder_ctl_240:
	mov edx, [edi]
	mov eax, [edx]
	mov eax, [eax+ecx*4+0x78]
	mov [edi+0xe8], eax
	mov [edi+0xec], eax
	mov eax, [edx]
	mov eax, [eax+ecx*4+0x4c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_270:
	mov eax, [ebp+0x10]
sb_encoder_ctl_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_280:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_290:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x9
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_300:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [edi+0xe8], eax
	mov [edi+0xec], eax
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_310:
	mov eax, [ebp+0x10]
	mov edx, [eax]
	mov [edi+0xc4], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_320:
	mov edx, [edi+0xc4]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_330:
	mov edx, [ebp+0x10]
	cvtss2sd xmm0, [edx]
	addsd xmm0, [_double_0_60000000]
	cvtsd2ss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	mov eax, [edx]
	mov [edi+0xc0], eax
	movss xmm2, dword [ebp-0x1c]
	movss xmm0, dword [_float_10_00000000]
	cmpss xmm0, xmm1, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float_10_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x1c], xmm0
	cvtss2sd xmm0, [edx]
	addsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call floor
	fstp qword [ebp-0x38]
	cvttsd2si edx, qword [ebp-0x38]
	mov eax, 0xa
	cmp edx, 0xb
	cmovl eax, edx
	mov [ebp-0x24], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xe
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	lea eax, [ebp-0x24]
	jmp sb_encoder_ctl_40
sb_encoder_ctl_340:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [edi+0xf0], eax
	test eax, eax
	jle sb_encoder_ctl_50
sb_encoder_ctl_60:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp-0x2c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_encoder_ctl_350:
	mov edx, [edi+0xf0]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_360:
	mov dword [ebp-0x20], 0xa
	mov eax, [ebp+0x10]
	mov ebx, [eax]
	lea esi, [ebp-0x20]
sb_encoder_ctl_70:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call speex_encoder_ctl
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x13
	mov [esp], edi
	call speex_encoder_ctl
	cmp ebx, [ebp-0x24]
	jge sb_encoder_ctl_60
	mov eax, [ebp-0x20]
	sub eax, 0x1
	mov [ebp-0x20], eax
	test eax, eax
	jns sb_encoder_ctl_70
	jmp sb_encoder_ctl_60
sb_encoder_ctl_370:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov edx, [edi+0xe8]
	mov eax, [edi+0xe4]
	mov ecx, [eax+edx*4]
	test ecx, ecx
	jz sb_encoder_ctl_80
	mov ebx, [ebp+0x10]
	mov esi, [edi+0xf4]
	imul esi, [ecx+0x40]
	mov eax, esi
	cdq
	idiv dword [edi+0x8]
	add [ebx], eax
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_380:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [edi+0xf4], eax
	sar eax, 1
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_460:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x22
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_470:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x23
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_480:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [edi+0xe0], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_490:
	mov edx, [edi+0xe0]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_500:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x27
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov edx, [ebp+0x10]
	mov eax, [edx]
	lea eax, [eax+eax+0x3f]
	mov [edx], eax
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_510:
	mov ebx, [ebp+0x10]
	mov eax, [edi+0x14]
	test eax, eax
	jle sb_encoder_ctl_60
	xor ecx, ecx
sb_encoder_ctl_90:
	lea eax, [ecx*4]
	mov edx, [edi+0xbc]
	mov edx, [edx+eax]
	mov [ebx+eax], edx
	add ecx, 0x1
	cmp ecx, [edi+0x14]
	jl sb_encoder_ctl_90
	jmp sb_encoder_ctl_60
sb_encoder_ctl_520:
	mov ecx, [ebp+0x10]
	mov eax, [edi+0x8]
	test eax, eax
	jle sb_encoder_ctl_100
	xor eax, eax
sb_encoder_ctl_110:
	mov dword [ecx+eax*4], 0x0
	add eax, 0x1
	cmp eax, [edi+0x8]
	jl sb_encoder_ctl_110
sb_encoder_ctl_100:
	mov eax, [edi+0xc]
	test eax, eax
	jle sb_encoder_ctl_60
	xor edx, edx
sb_encoder_ctl_120:
	mov eax, [edi+0x64]
	movss xmm0, dword [eax+edx*4]
	addss xmm0, xmm0
	movss [ecx+edx*8], xmm0
	add edx, 0x1
	cmp edx, [edi+0xc]
	jl sb_encoder_ctl_120
	jmp sb_encoder_ctl_60
sb_encoder_ctl_530:
	mov ecx, [ebp+0x10]
	mov eax, [edi+0x8]
	test eax, eax
	jle sb_encoder_ctl_130
	xor eax, eax
sb_encoder_ctl_140:
	mov dword [ecx+eax*4], 0x0
	add eax, 0x1
	cmp eax, [edi+0x8]
	jl sb_encoder_ctl_140
sb_encoder_ctl_130:
	mov eax, [edi+0xc]
	test eax, eax
	jle sb_encoder_ctl_60
	xor edx, edx
sb_encoder_ctl_150:
	mov eax, [edi+0x64]
	movss xmm0, dword [eax+edx*4]
	addss xmm0, xmm0
	movss [ecx+edx*8], xmm0
	add edx, 0x1
	cmp edx, [edi+0xc]
	jl sb_encoder_ctl_150
	jmp sb_encoder_ctl_60
sb_encoder_ctl_420:
	mov eax, [ebp+0x10]
	mov edx, [eax]
	mov [edi+0xd8], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1e
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_400:
	mov dword [edi+0x24], 0x1
	mov ecx, [edi+0x1c]
	test ecx, ecx
	jle sb_encoder_ctl_160
	xor ebx, ebx
	movsd xmm2, qword [_double_3_14159265]
sb_encoder_ctl_170:
	mov eax, [edi+0x88]
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
	mov ecx, [edi+0x1c]
	cmp ebx, ecx
	jl sb_encoder_ctl_170
	test ecx, ecx
	jle sb_encoder_ctl_160
	xor esi, esi
sb_encoder_ctl_180:
	lea eax, [esi*4]
	mov ebx, eax
	add ebx, [edi+0xb8]
	mov ecx, eax
	add ecx, [edi+0xb0]
	mov edx, [edi+0xb4]
	mov dword [edx+eax], 0x0
	mov dword [ecx], 0x0
	mov dword [ebx], 0x0
	add esi, 0x1
	cmp esi, [edi+0x1c]
	jl sb_encoder_ctl_180
sb_encoder_ctl_160:
	mov edx, [edi+0x20]
	test edx, edx
	jle sb_encoder_ctl_190
	xor edx, edx
sb_encoder_ctl_200:
	mov eax, [edi+0x60]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp edx, [edi+0x20]
	jl sb_encoder_ctl_200
sb_encoder_ctl_190:
	xor esi, esi
sb_encoder_ctl_210:
	mov ebx, esi
	add ebx, [edi+0x50]
	mov ecx, esi
	add ecx, [edi+0x54]
	mov edx, esi
	add edx, [edi+0x58]
	mov eax, [edi+0x5c]
	mov dword [eax+esi], 0x0
	mov dword [edx], 0x0
	mov dword [ecx], 0x0
	mov dword [ebx], 0x0
	add esi, 0x4
	cmp esi, 0x100
	jnz sb_encoder_ctl_210
	jmp sb_encoder_ctl_60
sb_encoder_ctl_410:
	mov edx, [edi+0xdc]
	mov eax, [ebp+0x10]
	mov [eax], edx
	jmp sb_encoder_ctl_60
sb_encoder_ctl_440:
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [edi+0xc8], eax
	mov dword [edi+0xc4], 0x1
	lea eax, [edi+0xc4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xc
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [ebp-0x1c], 0xa
	mov eax, [ebp+0x10]
	mov ebx, [eax]
	lea esi, [ebp-0x1c]
sb_encoder_ctl_230:
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x4
	mov [esp], edi
	call speex_encoder_ctl
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov [esp], edi
	call speex_encoder_ctl
	cmp ebx, [ebp-0x24]
	jge sb_encoder_ctl_220
	mov eax, [ebp-0x1c]
	sub eax, 0x1
	mov [ebp-0x1c], eax
	test eax, eax
	jns sb_encoder_ctl_230
sb_encoder_ctl_220:
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
	movss [edi+0xd4], xmm2
	movss [edi+0xcc], xmm2
	movss [edi+0xd0], xmm2
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_450:
	mov edx, [edi+0xc8]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_390:
	mov edx, [edi+0xf4]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_430:
	mov edx, [edi+0xd8]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_50:
	mov dword [edi+0xf0], 0x1
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
sb_encoder_ctl_30:
	xor ecx, ecx
	jmp sb_encoder_ctl_240
sb_encoder_ctl_80:
	mov ebx, [ebp+0x10]
	mov edx, [edi+0xf4]
	shl edx, 0x2
	mov eax, edx
	cdq
	idiv dword [edi+0x8]
	add [ebx], eax
	mov dword [ebp-0x2c], 0x0
	jmp sb_encoder_ctl_20
	
	
sb_encoder_ctl_jumptab_0:
	dd sb_encoder_ctl_250
	dd sb_encoder_ctl_260
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_270
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_280
	dd sb_encoder_ctl_290
	dd sb_encoder_ctl_300
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_310
	dd sb_encoder_ctl_320
	dd sb_encoder_ctl_330
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_340
	dd sb_encoder_ctl_350
	dd sb_encoder_ctl_360
	dd sb_encoder_ctl_370
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_380
	dd sb_encoder_ctl_390
	dd sb_encoder_ctl_400
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_410
	dd sb_encoder_ctl_420
	dd sb_encoder_ctl_430
	dd sb_encoder_ctl_440
	dd sb_encoder_ctl_450
	dd sb_encoder_ctl_460
	dd sb_encoder_ctl_470
	dd sb_encoder_ctl_480
	dd sb_encoder_ctl_490
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_500
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_10
	dd sb_encoder_ctl_510
	dd sb_encoder_ctl_520
	dd sb_encoder_ctl_530


;sb_decoder_init(SpeexMode const*)
sb_decoder_init:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x5e30
	call speex_alloc
	mov esi, eax
	test eax, eax
	jz sb_decoder_init_10
	lea eax, [eax+0x70]
	mov [esi+0x28], eax
	mov [esi], ebx
	mov ebx, [ebx]
	mov dword [esi+0x64], 0x1
	mov eax, [ebx]
	mov [esp], eax
	call speex_decoder_init
	mov [esi+0x4], eax
	mov eax, [ebx+0x4]
	add eax, eax
	mov [esi+0x8], eax
	mov eax, [ebx+0x4]
	mov [esi+0xc], eax
	mov eax, [ebx+0x8]
	mov [esi+0x10], eax
	mov eax, [ebx+0x4]
	cdq
	idiv dword [ebx+0x8]
	mov [esi+0x14], eax
	mov eax, [ebx+0xc]
	mov [esi+0x18], eax
	lea eax, [esi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x19
	mov eax, [esi+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	shl dword [esi+0x20], 1
	lea eax, [ebx+0x28]
	mov [esi+0x68], eax
	mov eax, [ebx+0x48]
	mov [esi+0x6c], eax
	mov dword [esi+0x1c], 0x1
	mov eax, [esi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x2c], eax
	mov eax, [esi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x30], eax
	mov eax, [esi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x34], eax
	mov eax, [esi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x38], eax
	mov eax, [esi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x3c], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [esi+0x40], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [esi+0x44], eax
	mov eax, [esi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x48], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x4c], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x50], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x54], eax
	mov eax, [esi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x58], eax
	mov eax, [esi+0x14]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [esi+0x60], eax
	mov eax, [esi+0x18]
	shl eax, 0x3
	mov [esp], eax
	call speex_alloc
	mov [esi+0x5c], eax
	mov dword [esi+0x24], 0x0
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
sb_decoder_init_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;sb_encoder_init(SpeexMode const*)
sb_encoder_init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x1098
	call speex_alloc
	mov edi, eax
	test eax, eax
	jz sb_encoder_init_10
	lea eax, [eax+0xf8]
	mov [edi+0x38], eax
	mov [edi], ebx
	mov ebx, [ebx]
	mov eax, [ebx]
	mov [esp], eax
	call speex_encoder_init
	mov [edi+0x4], eax
	mov eax, [ebx+0x4]
	add eax, eax
	mov [edi+0x8], eax
	mov esi, [ebx+0x4]
	mov [edi+0xc], esi
	mov eax, [ebx+0x8]
	mov [edi+0x10], eax
	mov eax, [ebx+0x4]
	cdq
	idiv dword [ebx+0x8]
	mov [edi+0x14], eax
	lea edx, [esi+esi*2]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [edi+0x18], eax
	mov eax, [ebx+0xc]
	mov [edi+0x1c], eax
	mov eax, [ebx+0x10]
	mov [edi+0x20], eax
	mov dword [edi+0xe0], 0x1
	lea eax, [ebx+0x28]
	mov [edi+0xe4], eax
	mov eax, [ebx+0x48]
	mov [edi+0xe8], eax
	mov [edi+0xec], eax
	mov dword [ebp-0x1c], 0x9
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov eax, [ebx+0x1c]
	mov [edi+0x28], eax
	mov eax, [ebx+0x20]
	mov [edi+0x2c], eax
	mov eax, [ebx+0x14]
	mov [edi+0x30], eax
	mov eax, [ebx+0x18]
	mov [edi+0x34], eax
	mov dword [edi+0x24], 0x1
	mov eax, [edi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x3c], eax
	mov eax, [edi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x40], eax
	mov eax, [edi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x44], eax
	mov eax, [edi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x48], eax
	mov eax, [edi+0x8]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x4c], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [edi+0x50], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [edi+0x54], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [edi+0x58], eax
	mov dword [esp], 0x100
	call speex_alloc
	mov [edi+0x5c], eax
	mov eax, [edi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x68], eax
	mov eax, [edi+0x20]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x60], eax
	mov edx, [edi+0x20]
	lea edx, [eax+edx*4]
	mov eax, [edi+0x18]
	shl eax, 0x2
	sub edx, eax
	mov [edi+0x64], edx
	mov eax, [edi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x6c], eax
	mov eax, [edi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x70], eax
	mov eax, [edi+0xc]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x74], eax
	mov edx, [edi+0x10]
	lea eax, [edx*8]
	sub eax, edx
	mov ecx, eax
	shr ecx, 0x1f
	add ecx, eax
	mov [ebp-0x3c], ecx
	sar dword [ebp-0x3c], 1
	lea edx, [edx+edx*4]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	mov [ebp-0x40], eax
	sar dword [ebp-0x40], 1
	mov eax, [edi+0x18]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x78], eax
	mov dword [ebp-0x1c], 0x0
	mov edx, [ebp-0x3c]
	test edx, edx
	jg sb_encoder_init_20
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x40]
	test eax, eax
	jg sb_encoder_init_30
sb_encoder_init_60:
	mov eax, [edi+0x1c]
	lea eax, [eax*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [edi+0x7c], eax
	mov dword [ebp-0x1c], 0x0
	mov edx, [edi+0x1c]
	lea eax, [edx+0x1]
	test eax, eax
	jg sb_encoder_init_40
sb_encoder_init_90:
	lea eax, [edx*4+0x4]
	mov [esp], eax
	call speex_alloc
	mov [edi+0x80], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x84], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xa8], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xac], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x88], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x8c], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x90], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x94], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x98], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0x9c], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xa0], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xa4], eax
	mov eax, [edi+0x14]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xbc], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xb0], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xb4], eax
	mov eax, [edi+0x1c]
	shl eax, 0x2
	mov [esp], eax
	call speex_alloc
	mov [edi+0xb8], eax
	mov dword [edi+0xc0], 0x41000000
	mov dword [edi+0xc4], 0x0
	mov dword [edi+0xd8], 0x0
	mov dword [edi+0xc8], 0x0
	mov dword [edi+0xdc], 0x0
	mov dword [edi+0xf0], 0x2
	lea eax, [edi+0xf4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x19
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	shl dword [edi+0xf4], 1
	mov eax, edi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_encoder_init_20:
	cvtsi2sd xmm0, dword [ebp-0x3c]
	movsd [ebp-0x38], xmm0
	xor esi, esi
sb_encoder_init_50:
	mov ebx, [edi+0x78]
	cvtsi2sd xmm0, esi
	mulsd xmm0, [_double_3_14159265]
	divsd xmm0, qword [ebp-0x38]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [_double__0_46000000]
	addsd xmm0, [_double_0_54000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+esi*4], xmm0
	mov esi, [ebp-0x1c]
	add esi, 0x1
	mov [ebp-0x1c], esi
	cmp [ebp-0x3c], esi
	jg sb_encoder_init_50
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x40]
	test eax, eax
	jle sb_encoder_init_60
sb_encoder_init_30:
	cvtsi2sd xmm0, dword [ebp-0x40]
	movsd [ebp-0x30], xmm0
	xor eax, eax
sb_encoder_init_70:
	mov esi, [ebp-0x3c]
	add esi, eax
	mov ebx, [edi+0x78]
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_3_14159265]
	divsd xmm0, qword [ebp-0x30]
	movsd [esp], xmm0
	call cos
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [_double_0_46000000]
	addsd xmm0, [_double_0_54000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+esi*4], xmm0
	mov eax, [ebp-0x1c]
	add eax, 0x1
	mov [ebp-0x1c], eax
	cmp [ebp-0x40], eax
	jg sb_encoder_init_70
	jmp sb_encoder_init_60
sb_encoder_init_40:
	xor esi, esi
sb_encoder_init_80:
	cvtss2sd xmm0, [edi+0x28]
	mulsd xmm0, [_double_6_28318531]
	cvtsi2sd xmm1, esi
	mulsd xmm0, xmm1
	mov ebx, [edi+0x7c]
	mulsd xmm0, xmm0
	mulsd xmm0, [_double__0_50000000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [_double_16384_00000000]
	cvtsd2ss xmm0, xmm0
	movss [ebx+esi*4], xmm0
	mov esi, [ebp-0x1c]
	add esi, 0x1
	mov [ebp-0x1c], esi
	mov edx, [edi+0x1c]
	lea eax, [edx+0x1]
	cmp eax, esi
	jg sb_encoder_init_80
	jmp sb_encoder_init_90
sb_encoder_init_10:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;sb_decoder_destroy(void*)
sb_decoder_destroy:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_decoder_destroy
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp speex_free


;sb_encoder_destroy(void*)
sb_encoder_destroy:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call speex_encoder_destroy
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp speex_free


;sb_decode(void*, SpeexBits*, void*)
sb_decode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov edi, [ebp+0x8]
	mov edx, [edi+0x28]
	mov eax, [edi]
	mov eax, [eax]
	mov [ebp-0x50], eax
	mov eax, edx
	neg eax
	and eax, 0x3
	add edx, eax
	mov eax, [edi+0xc]
	lea eax, [edx+eax*4]
	mov [ebp-0x38], eax
	mov esi, edx
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_decode_native
	mov [ebp-0x6c], eax
	mov edx, [edi+0xc]
	test edx, edx
	jle sb_decode_10
	xor ebx, ebx
sb_decode_20:
	lea eax, [ebx*4]
	mov ecx, [edi+0x2c]
	mov edx, [esi+eax]
	mov [ecx+eax], edx
	add ebx, 0x1
	cmp ebx, [edi+0xc]
	jl sb_decode_20
sb_decode_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x67
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov eax, [ebp-0x6c]
	test eax, eax
	jnz sb_decode_30
	mov eax, [ebp+0xc]
	test eax, eax
	jz sb_decode_40
	mov eax, [edi+0x64]
	test eax, eax
	jnz sb_decode_50
	mov edx, [edi+0x6c]
sb_decode_190:
	mov eax, [edi+0x68]
	mov eax, [eax+edx*4]
	test eax, eax
	jz sb_decode_60
sb_decode_200:
	mov ebx, [edi+0xc]
	test ebx, ebx
	jle sb_decode_70
	xor edx, edx
sb_decode_80:
	mov eax, [edi+0x48]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	mov ebx, [edi+0xc]
	cmp edx, ebx
	jl sb_decode_80
sb_decode_70:
	mov ecx, 0x4
	mov eax, ecx
	sub eax, [ebp-0x38]
	and eax, 0x3
	add eax, [ebp-0x38]
	mov edx, [edi+0x14]
	lea edx, [eax+edx*4]
	mov [ebp-0x68], eax
	mov eax, ecx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	lea eax, [ebx*4]
	add edx, eax
	mov ebx, edx
	sub ebx, eax
	mov [ebp-0x64], ebx
	sub ecx, edx
	and ecx, 0x3
	add edx, ecx
	lea edx, [eax+edx]
	mov [ebp-0x34], edx
	sub edx, eax
	mov [ebp-0x60], edx
	mov esi, [ebp-0x68]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x64
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x65
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov eax, [ebp-0x60]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_decoder_ctl
	mov edx, [edi+0x6c]
	mov eax, [edi+0x68]
	mov edx, [eax+edx*4]
	mov ebx, [ebp+0xc]
	mov [esp+0x8], ebx
	mov eax, [edi+0x18]
	mov [esp+0x4], eax
	mov eax, [edi+0x4c]
	mov [esp], eax
	call dword [edx+0x14]
	mov esi, [edi+0x1c]
	test esi, esi
	jz sb_decode_90
	mov ebx, [edi+0x18]
	test ebx, ebx
	jg sb_decode_100
sb_decode_90:
	mov esi, [edi+0x18]
	mov [ebp-0x8c], esi
	shl esi, 0x2
	mov ecx, 0x4
	mov eax, ecx
	sub eax, [ebp-0x34]
	and eax, 0x3
	add eax, [ebp-0x34]
	lea eax, [eax+esi+0x4]
	mov ebx, esi
	neg ebx
	lea edx, [eax+ebx-0x4]
	mov [ebp-0x5c], edx
	mov edx, ecx
	sub edx, eax
	and edx, 0x3
	add eax, edx
	lea eax, [esi+eax+0x4]
	lea edx, [ebx+eax-0x4]
	mov [ebp-0x58], edx
	sub ecx, eax
	and ecx, 0x3
	add eax, ecx
	lea eax, [esi+eax+0x4]
	mov [ebp-0x30], eax
	lea ebx, [ebx+eax-0x4]
	mov [ebp-0x54], ebx
	mov edx, [edi+0x14]
	test edx, edx
	jg sb_decode_110
sb_decode_510:
	mov [esp+0x18], eax
	mov eax, [edi+0x40]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h0
	mov eax, [edi+0x2c]
	mov [esp], eax
	call fir_mem_up
	mov edx, [ebp-0x30]
	mov [esp+0x18], edx
	mov eax, [edi+0x44]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h1
	mov eax, [edi+0x34]
	mov [esp], eax
	call fir_mem_up
	mov ecx, [edi+0x8]
	mov esi, [edi+0x3c]
	mov ebx, [edi+0x38]
	mov [ebp-0xa0], ebx
	test ecx, ecx
	jle sb_decode_120
	xor edx, edx
	movss xmm4, dword [_float__32767_00000000]
	movss xmm3, dword [_float_32767_00000000]
	jmp sb_decode_130
sb_decode_140:
	mov ebx, [ebp+0x10]
	mov dword [ebx+eax], 0x46fffe00
	add edx, 0x1
	cmp ecx, edx
	jz sb_decode_120
sb_decode_130:
	lea eax, [edx*4]
	mov ebx, [ebp-0xa0]
	movss xmm2, dword [ebx+eax]
	subss xmm2, [esi+eax]
	addss xmm2, xmm2
	ucomiss xmm2, xmm3
	ja sb_decode_140
	movaps xmm0, xmm2
	cmpss xmm0, xmm4, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float__32767_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	mov ebx, [ebp+0x10]
	movss [ebx+eax], xmm0
	add edx, 0x1
	cmp ecx, edx
	jnz sb_decode_130
sb_decode_120:
	mov esi, [edi+0x18]
	test esi, esi
	jle sb_decode_150
	xor ebx, ebx
sb_decode_160:
	lea edx, [ebx*4]
	mov ecx, [edi+0x50]
	mov eax, [edi+0x4c]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [edi+0x18]
	jl sb_decode_160
sb_decode_150:
	mov dword [edi+0x1c], 0x0
sb_decode_250:
	mov dword [ebp-0x6c], 0x0
sb_decode_30:
	mov eax, [ebp-0x6c]
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_decode_50:
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call speex_bits_remaining
	test eax, eax
	jle sb_decode_170
	mov [esp], ebx
	call speex_bits_peek
	test eax, eax
	jnz sb_decode_180
sb_decode_170:
	mov dword [edi+0x6c], 0x0
	mov edx, [edi+0x6c]
sb_decode_550:
	test edx, edx
	jz sb_decode_190
	mov eax, [edi+0x68]
	mov eax, [eax+edx*4]
	test eax, eax
	jnz sb_decode_200
	mov dword [esp], _cstring_invalid_mode_enc
	call speex_warning
	mov dword [ebp-0x6c], 0xfffffffe
	jmp sb_decode_30
sb_decode_100:
	xor ebx, ebx
sb_decode_210:
	lea edx, [ebx*4]
	mov ecx, [edi+0x50]
	mov eax, [edi+0x4c]
	mov eax, [edx+eax]
	mov [edx+ecx], eax
	add ebx, 0x1
	cmp [edi+0x18], ebx
	jg sb_decode_210
	jmp sb_decode_90
sb_decode_60:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz sb_decode_220
	mov ecx, [edi+0xc]
	test ecx, ecx
	jle sb_decode_230
	xor edx, edx
sb_decode_240:
	mov eax, [edi+0x48]
	mov dword [eax+edx*4], 0x26901d7d
	add edx, 0x1
	cmp [edi+0xc], edx
	jg sb_decode_240
sb_decode_230:
	mov dword [edi+0x1c], 0x1
	mov eax, [edi+0x5c]
	mov [esp+0x14], eax
	mov eax, [edi+0x18]
	mov [esp+0x10], eax
	mov eax, [edi+0xc]
	mov [esp+0xc], eax
	mov eax, [edi+0x34]
	mov [esp+0x8], eax
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x48]
	mov [esp], eax
	call iir_mem2
	mov eax, [ebp-0x38]
	mov [esp+0x18], eax
	mov eax, [edi+0x40]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h0
	mov eax, [edi+0x2c]
	mov [esp], eax
	call fir_mem_up
	mov edx, [ebp-0x38]
	mov [esp+0x18], edx
	mov eax, [edi+0x44]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x40
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h1
	mov eax, [edi+0x34]
	mov [esp], eax
	call fir_mem_up
	mov ebx, [edi+0x8]
	mov esi, [edi+0x3c]
	mov eax, [edi+0x38]
	test ebx, ebx
	jle sb_decode_250
	xor ecx, ecx
	movss xmm4, dword [_float__32767_00000000]
	movss xmm3, dword [_float_32767_00000000]
	jmp sb_decode_260
sb_decode_270:
	mov edi, [ebp+0x10]
	mov dword [edi+edx], 0x46fffe00
sb_decode_280:
	add ecx, 0x1
	cmp ebx, ecx
	jz sb_decode_250
sb_decode_260:
	lea edx, [ecx*4]
	movss xmm2, dword [eax+edx]
	subss xmm2, [esi+edx]
	addss xmm2, xmm2
	ucomiss xmm2, xmm3
	ja sb_decode_270
	movaps xmm0, xmm2
	cmpss xmm0, xmm4, 0x5
	andps xmm2, xmm0
	movss xmm1, dword [_float__32767_00000000]
	andnps xmm0, xmm1
	orps xmm0, xmm2
	mov edi, [ebp+0x10]
	movss [edi+edx], xmm0
	jmp sb_decode_280
sb_decode_110:
	mov dword [ebp-0x70], 0x0
sb_decode_470:
	mov eax, [ebp-0x70]
	imul eax, [edi+0x10]
	shl eax, 0x2
	mov [ebp-0x74], eax
	add eax, [edi+0x34]
	mov [ebp-0x48], eax
	mov esi, [ebp-0x74]
	add esi, [edi+0x48]
	mov [ebp-0x4c], esi
	mov [esp+0x14], edx
	mov eax, [ebp-0x70]
	mov [esp+0x10], eax
	mov edx, [ebp-0x8c]
	mov [esp+0xc], edx
	mov eax, [edi+0x54]
	mov [esp+0x8], eax
	mov eax, [edi+0x4c]
	mov [esp+0x4], eax
	mov eax, [edi+0x50]
	mov [esp], eax
	call lsp_interpolate
	mov dword [esp+0x8], 0x3d4ccccd
	mov eax, [edi+0x18]
	mov [esp+0x4], eax
	mov eax, [edi+0x54]
	mov [esp], eax
	call lsp_enforce_margin
	mov ebx, [ebp-0x30]
	mov [esp+0xc], ebx
	mov eax, [edi+0x18]
	mov [esp+0x8], eax
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov eax, [edi+0x54]
	mov [esp], eax
	call lsp_to_lpc
	mov ebx, [edi+0x24]
	test ebx, ebx
	jnz sb_decode_290
sb_decode_520:
	mov ebx, [ebp-0x70]
	shl ebx, 0x2
	mov eax, [edi+0x60]
	mov edx, 0x3f800000
	mov [eax+ebx], edx
	mov ecx, [edi+0x18]
	test ecx, ecx
	jg sb_decode_300
	movsd xmm2, qword [_double_1_00000000]
sb_decode_490:
	mov esi, [ebp-0x68]
	cvtss2sd xmm0, [esi+ebx]
	movsd xmm1, qword [_double_0_01000000]
	addsd xmm0, xmm1
	addsd xmm2, xmm1
	divsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x44], xmm0
	mov edx, [edi+0x10]
	test edx, edx
	jle sb_decode_310
	xor eax, eax
sb_decode_320:
	mov edx, [ebp-0x4c]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp [edi+0x10], eax
	jg sb_decode_320
sb_decode_310:
	mov eax, [edi+0x6c]
	mov edx, [edi+0x68]
	mov eax, [edx+eax*4]
	mov eax, [eax+0x28]
	test eax, eax
	jz sb_decode_330
	mov dword [esp+0x4], 0x4
	mov edx, [ebp+0xc]
	mov [esp], edx
	call speex_bits_unpack_unsigned
	mov ebx, eax
	mov eax, [edi+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp-0x64]
	add eax, [ebp-0x74]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0x40]
	cvtsi2sd xmm0, ebx
	mulsd xmm0, [_double_0_27027027]
	subsd xmm0, [_double_0_15556000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0x88]
	cvtsd2ss xmm0, [ebp-0x88]
	mov ecx, [edi+0x10]
	cmp ecx, 0x50
	jz sb_decode_340
sb_decode_530:
	divss xmm0, dword [ebp-0x44]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x3c], xmm0
	mov edx, [edi+0x6c]
	mov eax, [edi+0x68]
	mov edx, [eax+edx*4]
	mov eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov ebx, [ebp+0xc]
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov esi, [ebp-0x4c]
	mov [esp], esi
	call dword [edx+0x28]
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], esi
	call signal_mul
	mov edx, [edi+0x6c]
	mov ebx, [edi+0x68]
	mov eax, [ebx+edx*4]
	mov eax, [eax+0xc]
	test eax, eax
	jz sb_decode_350
	mov eax, [ebp-0x30]
	neg eax
	and eax, 0x3
	add eax, [ebp-0x30]
	mov ecx, [edi+0x10]
	lea esi, [eax+ecx*4]
	mov [ebp-0x2c], esi
	mov esi, eax
	test ecx, ecx
	jle sb_decode_360
	xor eax, eax
sb_decode_370:
	mov dword [esi+eax*4], 0x0
	add eax, 0x1
	mov ecx, [edi+0x10]
	cmp eax, ecx
	jl sb_decode_370
	mov edx, [edi+0x6c]
	mov ebx, [edi+0x68]
sb_decode_360:
	mov edx, [ebx+edx*4]
	mov eax, [ebp-0x2c]
	mov [esp+0x10], eax
	mov ebx, [ebp+0xc]
	mov [esp+0xc], ebx
	mov [esp+0x8], ecx
	mov eax, [edx+0x2c]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [edx+0x28]
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_decode_350
	cvtss2sd xmm1, [ebp-0x3c]
	mulsd xmm1, [_double_0_40000000]
	mov ecx, 0x1
	lea edx, [esi+0x4]
sb_decode_380:
	cvtss2sd xmm0, [edx-0x4]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	add edx, 0x4
	cmp [edi+0x10], eax
	jg sb_decode_380
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_decode_390
	mov ecx, 0x1
sb_decode_400:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x4c]
	lea edx, [eax+ebx]
	movss xmm0, dword [edx-0x4]
	addss xmm0, [eax+esi-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp [edi+0x10], eax
	jg sb_decode_400
sb_decode_350:
	mov ebx, [edi+0x10]
	test ebx, ebx
	jle sb_decode_410
	mov ecx, 0x1
sb_decode_420:
	lea eax, [ecx*4]
	mov esi, [ebp-0x4c]
	mov edx, [esi+eax-0x4]
	mov ebx, [ebp-0x48]
	mov [ebx+eax-0x4], edx
	mov eax, ecx
	mov ebx, [edi+0x10]
	add ecx, 0x1
	cmp eax, ebx
	jl sb_decode_420
sb_decode_410:
	mov eax, [edi+0x24]
	test eax, eax
	jnz sb_decode_430
	mov edx, [edi+0x18]
	test edx, edx
	jle sb_decode_440
	xor ecx, ecx
sb_decode_450:
	lea edx, [ecx+edx]
	mov eax, [edi+0x5c]
	mov dword [eax+edx*4], 0x0
	add ecx, 0x1
	mov edx, [edi+0x18]
	cmp ecx, edx
	jl sb_decode_450
	mov ebx, [edi+0x10]
sb_decode_440:
	mov eax, [edi+0x5c]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov esi, [ebp-0x48]
	mov [esp+0x8], esi
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], esi
	call iir_mem2
	add dword [ebp-0x70], 0x1
	mov edx, [edi+0x14]
	cmp [ebp-0x70], edx
	jge sb_decode_460
sb_decode_500:
	mov ebx, [edi+0x18]
	mov [ebp-0x8c], ebx
	jmp sb_decode_470
sb_decode_300:
	xor ecx, ecx
	mov [ebp-0x9c], edx
	movss xmm3, dword [ebp-0x9c]
	xor edx, edx
sb_decode_480:
	mov eax, edx
	add eax, [edi+0x58]
	movss xmm0, dword [eax+0x4]
	movss xmm2, dword [eax]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	addss xmm3, xmm1
	mov eax, ebx
	add eax, [edi+0x60]
	addss xmm0, xmm2
	addss xmm0, [eax]
	movss [eax], xmm0
	add ecx, 0x2
	add edx, 0x8
	cmp [edi+0x18], ecx
	jg sb_decode_480
	cvtss2sd xmm2, xmm3
	jmp sb_decode_490
sb_decode_430:
	mov edx, [edi+0x18]
	mov eax, [edi+0x5c]
	lea eax, [eax+edx*4]
	mov [esp+0x18], eax
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	mov esi, [ebp-0x48]
	mov [esp+0xc], esi
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x58]
	mov [esp+0x4], edx
	mov [esp], esi
	call filter_mem2
	mov eax, [edi+0x5c]
	mov [esp+0x18], eax
	mov eax, [edi+0x18]
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, [edi+0x58]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x54]
	mov [esp+0x4], ebx
	mov [esp], esi
	call filter_mem2
	add dword [ebp-0x70], 0x1
	mov edx, [edi+0x14]
	cmp [ebp-0x70], edx
	jl sb_decode_500
sb_decode_460:
	mov eax, [ebp-0x30]
	jmp sb_decode_510
sb_decode_290:
	mov edx, [edi+0x6c]
	mov eax, [edi+0x68]
	mov edx, [eax+edx*4]
	mov ebx, [edx+0x34]
	mov esi, [edx+0x38]
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov eax, [edx+0x30]
	mov [esp], eax
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov edx, [ebp-0x58]
	mov [esp+0x8], edx
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], ebx
	call bw_lpc
	mov eax, [edi+0x18]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x54]
	mov [esp+0x8], ebx
	mov eax, [edi+0x58]
	mov [esp+0x4], eax
	mov [esp], esi
	call bw_lpc
	jmp sb_decode_520
sb_decode_340:
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_1_41420000]
	cvtsd2ss xmm0, xmm0
	jmp sb_decode_530
sb_decode_330:
	mov dword [esp+0x4], 0x5
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call speex_bits_unpack_unsigned
	cvtsi2ss xmm0, eax
	subss xmm0, [_float_10_00000000]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_12500000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0x80]
	cvtsd2ss xmm1, [ebp-0x80]
	divss xmm1, dword [ebp-0x44]
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_decode_390
	mov edx, [ebp-0x60]
	add edx, [ebp-0x74]
	mov ecx, 0x1
sb_decode_540:
	movaps xmm0, xmm1
	mov esi, [ebp-0x50]
	mulss xmm0, [esi+0x24]
	mulss xmm0, [edx]
	mov eax, [ebp-0x4c]
	movss [eax+ecx*4-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	add edx, 0x4
	cmp eax, [edi+0x10]
	jl sb_decode_540
	jmp sb_decode_350
sb_decode_390:
	mov ebx, [edi+0x10]
	jmp sb_decode_410
sb_decode_40:
	mov ecx, [ebp-0x1c]
	mov edx, [ebp-0x38]
	mov [esp], edx
	mov edx, [ebp+0x10]
	mov eax, edi
	call sb_decode_lost
	jmp sb_decode_30
sb_decode_220:
	mov esi, [ebp-0x38]
	mov [esp], esi
	mov ecx, 0x1
	mov edx, [ebp+0x10]
	mov eax, edi
	call sb_decode_lost
	mov dword [ebp-0x6c], 0x0
	jmp sb_decode_30
sb_decode_180:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call speex_bits_unpack_unsigned
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call speex_bits_unpack_unsigned
	mov edx, eax
	mov [edi+0x6c], eax
	jmp sb_decode_550


;sb_encode(void*, void*, SpeexBits*)
sb_encode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov edi, [ebp+0x8]
	mov edx, [edi+0x38]
	mov eax, [edi]
	mov eax, [eax]
	mov [ebp-0x70], eax
	mov eax, edx
	neg eax
	and eax, 0x3
	add edx, eax
	mov eax, [edi+0xc]
	lea eax, [edx+eax*4]
	mov [ebp-0x38], eax
	mov esi, edx
	mov [esp+0x1c], eax
	mov eax, [edi+0x50]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x40
	mov eax, [edi+0x8]
	mov [esp+0x10], eax
	mov eax, [edi+0x40]
	mov [esp+0xc], eax
	mov eax, [edi+0x3c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], h0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call qmf_decomp
	mov eax, [edi+0xc]
	test eax, eax
	jle sb_encode_10
	xor ecx, ecx
sb_encode_20:
	lea eax, [ecx*4]
	mov edx, [edi+0x3c]
	mov edx, [edx+eax]
	mov [esi+eax], edx
	add ecx, 0x1
	cmp ecx, [edi+0xc]
	jl sb_encode_20
sb_encode_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encode_native
	mov ebx, [edi+0xc]
	test ebx, ebx
	jle sb_encode_30
	xor ebx, ebx
sb_encode_40:
	lea eax, [ebx*4]
	mov ecx, [edi+0x3c]
	mov edx, [esi+eax]
	mov [ecx+eax], edx
	add ebx, 0x1
	cmp ebx, [edi+0xc]
	jl sb_encode_40
sb_encode_30:
	mov ecx, [edi+0xc]
	mov edx, [edi+0x18]
	mov eax, edx
	sub eax, ecx
	test eax, eax
	jle sb_encode_50
	xor ebx, ebx
sb_encode_60:
	mov edx, [edi+0x44]
	lea eax, [ebx+ecx]
	mov eax, [edx+eax*4]
	mov [edx+ebx*4], eax
	add ebx, 0x1
	mov ecx, [edi+0xc]
	mov edx, [edi+0x18]
	mov eax, edx
	sub eax, ecx
	cmp ebx, eax
	jl sb_encode_60
sb_encode_50:
	test ecx, ecx
	jle sb_encode_70
	xor ebx, ebx
	jmp sb_encode_80
sb_encode_90:
	mov edx, [edi+0x18]
sb_encode_80:
	sub edx, ecx
	lea ecx, [ebx+edx]
	mov edx, [edi+0x44]
	mov eax, [edi+0x40]
	mov eax, [eax+ebx*4]
	mov [edx+ecx*4], eax
	add ebx, 0x1
	mov ecx, [edi+0xc]
	cmp ecx, ebx
	jg sb_encode_90
sb_encode_70:
	mov edx, [edi+0x60]
	mov eax, [edi+0x20]
	sub eax, ecx
	shl eax, 0x2
	mov [esp+0x8], eax
	lea eax, [edx+ecx*4]
	mov [esp+0x4], eax
	mov [esp], edx
	call speex_move
	mov esi, 0x4
	mov eax, esi
	sub eax, [ebp-0x38]
	and eax, 0x3
	add eax, [ebp-0x38]
	mov ebx, [edi+0x14]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x7c], eax
	mov eax, esi
	sub eax, ebx
	and eax, 0x3
	add ebx, eax
	mov edx, [edi+0xc]
	shl edx, 0x2
	add ebx, edx
	mov ecx, ebx
	sub ecx, edx
	mov [ebp-0x78], ecx
	mov eax, esi
	sub eax, ebx
	and eax, 0x3
	add ebx, eax
	lea ebx, [edx+ebx]
	mov eax, ebx
	sub eax, edx
	mov [ebp-0x74], eax
	mov edx, [ebp-0x7c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x64
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov ecx, [ebp-0x78]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x65
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	mov eax, [ebp-0x74]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x66
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x9
	mov eax, [edi+0x4]
	mov [esp], eax
	call speex_encoder_ctl
	xor eax, eax
	cmp dword [ebp-0x1c], 0x0
	setz al
	mov [ebp-0x1c], eax
	sub esi, ebx
	and esi, 0x3
	add ebx, esi
	mov eax, [edi+0x18]
	lea edx, [ebx+eax*4]
	mov [ebp-0x34], edx
	test eax, eax
	jle sb_encode_100
	xor esi, esi
sb_encode_110:
	lea eax, [esi*4]
	mov edx, [edi+0x44]
	mov ecx, [edi+0x78]
	movss xmm0, dword [edx+eax]
	mulss xmm0, [ecx+eax]
	movss [ebx+eax], xmm0
	add esi, 0x1
	mov eax, [edi+0x18]
	cmp eax, esi
	jg sb_encode_110
sb_encode_100:
	mov [esp+0xc], eax
	mov eax, [edi+0x1c]
	add eax, 0x1
	mov [esp+0x8], eax
	mov eax, [edi+0x80]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _spx_autocorr
	mov eax, [edi+0x80]
	movss xmm0, dword [eax]
	mulss xmm0, [edi+0x2c]
	movss [eax], xmm0
	mov edx, [edi+0x1c]
	lea eax, [edx+0x1]
	test eax, eax
	jle sb_encode_120
	xor ebx, ebx
sb_encode_130:
	lea edx, [ebx*4]
	mov ecx, edx
	add ecx, [edi+0x80]
	mov eax, [edi+0x7c]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+edx]
	movss [ecx], xmm0
	add ebx, 0x1
	mov edx, [edi+0x1c]
	lea eax, [edx+0x1]
	cmp eax, ebx
	jg sb_encode_130
sb_encode_120:
	mov [esp+0x8], edx
	mov eax, [edi+0x80]
	mov [esp+0x4], eax
	mov eax, [edi+0x84]
	mov [esp], eax
	call _spx_lpc
	fstp st0
	mov ecx, [ebp-0x34]
	mov [esp+0x14], ecx
	mov dword [esp+0x10], 0x3e4ccccd
	mov dword [esp+0xc], 0xf
	mov eax, [edi+0x88]
	mov [esp+0x8], eax
	mov eax, [edi+0x1c]
	mov [esp+0x4], eax
	mov eax, [edi+0x84]
	mov [esp], eax
	call lpc_to_lsp
	mov edx, [edi+0x1c]
	cmp eax, edx
	jz sb_encode_140
	mov ebx, [ebp-0x34]
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x3d4ccccd
	mov dword [esp+0xc], 0xb
	mov eax, [edi+0x88]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [edi+0x84]
	mov [esp], eax
	call lpc_to_lsp
	mov ebx, [edi+0x1c]
	cmp eax, ebx
	jz sb_encode_140
	test ebx, ebx
	jg sb_encode_150
sb_encode_140:
	mov ecx, [edi+0xc4]
	test ecx, ecx
	jnz sb_encode_160
	mov edx, [edi+0xd8]
	test edx, edx
	jnz sb_encode_160
sb_encode_260:
	mov eax, [edi+0xe0]
	test eax, eax
	jnz sb_encode_170
sb_encode_430:
	mov esi, [ebp-0x1c]
	test esi, esi
	jnz sb_encode_180
	mov edx, [edi+0xe8]
	mov eax, [edi+0xe4]
	mov edx, [eax+edx*4]
	test edx, edx
	jz sb_encode_180
	mov ebx, [ebp+0x10]
	mov [esp+0xc], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x8], eax
	mov eax, [edi+0x8c]
	mov [esp+0x4], eax
	mov eax, [edi+0x88]
	mov [esp], eax
	call dword [edx+0x10]
	mov ebx, [edi+0x24]
	test ebx, ebx
	jz sb_encode_190
	mov ebx, [edi+0x1c]
	test ebx, ebx
	jle sb_encode_190
	xor ebx, ebx
sb_encode_200:
	lea edx, [ebx*4]
	mov ecx, [edi+0x90]
	mov eax, [edi+0x88]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [edi+0x1c], ebx
	jg sb_encode_200
	mov edx, [edi+0x1c]
	test edx, edx
	jle sb_encode_190
	xor ebx, ebx
sb_encode_210:
	lea edx, [ebx*4]
	mov ecx, [edi+0x94]
	mov eax, [edi+0x8c]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp [edi+0x1c], ebx
	jg sb_encode_210
sb_encode_190:
	mov ecx, 0x4
	mov eax, ecx
	sub eax, [ebp-0x34]
	and eax, 0x3
	add eax, [ebp-0x34]
	mov ebx, [edi+0x1c]
	lea edx, [eax+ebx*4]
	mov [ebp-0x88], eax
	mov eax, ecx
	sub eax, edx
	and eax, 0x3
	add edx, eax
	mov eax, [edi+0x10]
	shl eax, 0x2
	add edx, eax
	mov esi, edx
	sub esi, eax
	mov [ebp-0x80], esi
	sub ecx, edx
	and ecx, 0x3
	add edx, ecx
	lea edx, [eax+edx]
	mov [ebp-0x30], edx
	sub edx, eax
	mov [ebp-0x84], edx
	mov edx, [edi+0x14]
	test edx, edx
	jg sb_encode_220
sb_encode_780:
	mov eax, [edi+0x1c]
	test eax, eax
	jle sb_encode_230
	xor ebx, ebx
sb_encode_240:
	lea edx, [ebx*4]
	mov ecx, [edi+0x90]
	mov eax, [edi+0x88]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [edi+0x1c]
	jl sb_encode_240
	mov esi, [edi+0x1c]
	test esi, esi
	jle sb_encode_230
	xor ebx, ebx
sb_encode_250:
	lea edx, [ebx*4]
	mov ecx, [edi+0x94]
	mov eax, [edi+0x8c]
	mov eax, [eax+edx]
	mov [ecx+edx], eax
	add ebx, 0x1
	cmp ebx, [edi+0x1c]
	jl sb_encode_250
sb_encode_230:
	mov dword [edi+0x24], 0x0
	mov eax, 0x1
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_encode_160:
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz sb_encode_260
	mov eax, [edi+0xc8]
	test eax, eax
	jz sb_encode_270
	movss xmm1, dword [edi+0xcc]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0xd0]
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe sb_encode_280
	cvtss2sd xmm1, xmm1
	mulsd xmm1, [_double__0_00001000]
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [edi+0xd4]
	cvtss2sd xmm0, xmm0
	divsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	cvtss2sd xmm2, xmm0
	ucomisd xmm2, [_double_0_10000000]
	jbe sb_encode_290
	movss xmm0, dword [_float_0_10000000]
	movsd xmm2, qword [_double_0_100000001]
sb_encode_290:
	ucomisd xmm2, [_double__0_10000000]
	jae sb_encode_300
	jp sb_encode_300
	movss xmm0, dword [_float__0_10000000]
sb_encode_300:
	addss xmm0, [edi+0xc0]
	movss [edi+0xc0], xmm0
	ucomiss xmm0, [_float_10_00000000]
	jbe sb_encode_310
	mov dword [edi+0xc0], 0x41200000
sb_encode_310:
	ucomiss xmm3, [edi+0xc0]
	ja sb_encode_320
sb_encode_270:
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x3c]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0x6c]
	mov eax, [edi+0xc]
	mov [esp+0x4], eax
	mov eax, [edi+0x44]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0xcc]
	movss xmm0, dword [ebp-0xcc]
	movss xmm1, dword [_float_1_00000000]
	addss xmm0, xmm1
	addss xmm1, [ebp-0x6c]
	divss xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0xd8]
	movsd xmm0, qword [ebp-0xd8]
	addsd xmm0, xmm0
	cvtsd2ss xmm0, xmm0
	lea eax, [edi+0xdc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1d
	mov eax, [edi+0x4]
	mov [esp], eax
	movss [ebp-0xc8], xmm0
	call speex_encoder_ctl
	movss xmm0, dword [ebp-0xc8]
	ucomiss xmm0, [_float__4_00000000]
	jae sb_encode_330
	jp sb_encode_330
	movss xmm0, dword [_float__4_00000000]
sb_encode_440:
	movss xmm1, dword [_float_2_00000000]
sb_encode_450:
	mov eax, [edi+0xc4]
	test eax, eax
	jz sb_encode_340
	mov esi, [ebp-0x70]
	mov eax, [esi+0xa8]
	sub eax, 0x1
	mov [ebp-0x20], eax
	addss xmm0, xmm1
	addss xmm0, [edi+0xdc]
	movss [edi+0xdc], xmm0
	ucomiss xmm0, [_float__1_00000000]
	jb sb_encode_350
sb_encode_900:
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz sb_encode_360
sb_encode_880:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xa
	mov [esp], edi
	call speex_encoder_ctl
	mov eax, [edi+0xc8]
	test eax, eax
	jz sb_encode_260
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x13
	mov [esp], edi
	call speex_encoder_ctl
	mov eax, [ebp-0x24]
	sub eax, [edi+0xc8]
	cvtsi2ss xmm0, eax
	addss xmm0, [edi+0xcc]
	movss [edi+0xcc], xmm0
	cvtss2sd xmm1, [edi+0xd0]
	mulsd xmm1, [_double_0_95000000]
	cvtsi2sd xmm0, eax
	mulsd xmm0, [_double_0_05000000]
	addsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [edi+0xd0], xmm1
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [edi+0xd4]
	movss [edi+0xd4], xmm0
	jmp sb_encode_260
sb_encode_180:
	mov ecx, [edi+0xc]
	test ecx, ecx
	jle sb_encode_370
	xor ebx, ebx
sb_encode_380:
	lea eax, [ebx*4]
	mov ecx, eax
	add ecx, [edi+0x64]
	mov edx, [edi+0x70]
	mov dword [edx+eax], 0x26901d7d
	mov dword [ecx], 0x26901d7d
	add ebx, 0x1
	cmp [edi+0xc], ebx
	jg sb_encode_380
sb_encode_370:
	mov ecx, [edi+0x1c]
	test ecx, ecx
	jg sb_encode_390
sb_encode_410:
	mov dword [edi+0x24], 0x1
	mov eax, [edi+0xb0]
	mov [esp+0x14], eax
	mov eax, [edi+0x1c]
	mov [esp+0x10], eax
	mov eax, [edi+0xc]
	mov [esp+0xc], eax
	mov eax, [edi+0x44]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov eax, [edi+0x64]
	mov [esp], eax
	call iir_mem2
	xor eax, eax
	cmp dword [ebp-0x1c], 0x0
	setz al
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
sb_encode_390:
	xor edx, edx
sb_encode_400:
	mov eax, [edi+0xb8]
	mov dword [eax+edx*4], 0x0
	add edx, 0x1
	cmp [edi+0x1c], edx
	jg sb_encode_400
	jmp sb_encode_410
sb_encode_170:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x10]
	mov [esp], eax
	call speex_bits_pack
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz sb_encode_420
	mov dword [esp+0x8], 0x3
	mov eax, [edi+0xe8]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call speex_bits_pack
	jmp sb_encode_430
sb_encode_330:
	ucomiss xmm0, [_float_2_00000000]
	jbe sb_encode_440
	movss xmm1, dword [_float_2_00000000]
	movaps xmm0, xmm1
	jmp sb_encode_450
sb_encode_150:
	xor ecx, ecx
	movsd xmm2, qword [_double_3_14159265]
sb_encode_460:
	mov eax, [edi+0x88]
	lea edx, [eax+ecx*4]
	add ecx, 0x1
	cvtsi2ss xmm0, ecx
	cvtss2sd xmm0, xmm0
	mulsd xmm0, xmm2
	lea eax, [ebx+0x1]
	cvtsi2sd xmm1, eax
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx], xmm0
	mov ebx, [edi+0x1c]
	cmp ebx, ecx
	jg sb_encode_460
	jmp sb_encode_140
sb_encode_420:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x10]
	mov [esp], edx
	call speex_bits_pack
	jmp sb_encode_430
sb_encode_340:
	ucomiss xmm1, [edi+0xdc]
	jbe sb_encode_470
	mov eax, 0x1
sb_encode_860:
	mov [edi+0xe8], eax
	jmp sb_encode_260
sb_encode_220:
	mov dword [ebp-0x8c], 0x0
sb_encode_790:
	mov eax, [ebp-0x8c]
	imul eax, [edi+0x10]
	shl eax, 0x2
	mov [ebp-0x94], eax
	add eax, [edi+0x44]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x94]
	add eax, [edi+0x64]
	mov [ebp-0x68], eax
	mov ecx, [ebp-0x94]
	add ecx, [edi+0x6c]
	mov [ebp-0x60], ecx
	mov esi, [ebp-0x94]
	add esi, [edi+0x74]
	mov [ebp-0x5c], esi
	mov eax, [ebp-0x94]
	add eax, [edi+0x70]
	mov [ebp-0x58], eax
	mov [esp+0x14], edx
	mov edx, [ebp-0x8c]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov eax, [edi+0x98]
	mov [esp+0x8], eax
	mov eax, [edi+0x88]
	mov [esp+0x4], eax
	mov eax, [edi+0x90]
	mov [esp], eax
	call lsp_interpolate
	mov eax, [edi+0x14]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x8c]
	mov [esp+0x10], ecx
	mov eax, [edi+0x1c]
	mov [esp+0xc], eax
	mov eax, [edi+0x9c]
	mov [esp+0x8], eax
	mov eax, [edi+0x8c]
	mov [esp+0x4], eax
	mov eax, [edi+0x94]
	mov [esp], eax
	call lsp_interpolate
	mov ebx, 0x3d4ccccd
	mov [esp+0x8], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x4], eax
	mov eax, [edi+0x98]
	mov [esp], eax
	call lsp_enforce_margin
	mov [esp+0x8], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x4], eax
	mov eax, [edi+0x9c]
	mov [esp], eax
	call lsp_enforce_margin
	mov ebx, [ebp-0x30]
	mov [esp+0xc], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x8], eax
	mov eax, [edi+0xa0]
	mov [esp+0x4], eax
	mov eax, [edi+0x98]
	mov [esp], eax
	call lsp_to_lpc
	mov [esp+0xc], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov eax, [edi+0x9c]
	mov [esp], eax
	call lsp_to_lpc
	mov eax, [edi+0x1c]
	mov [esp+0xc], eax
	mov eax, [edi+0xa8]
	mov [esp+0x8], eax
	mov eax, [edi+0xa0]
	mov [esp+0x4], eax
	mov eax, [edi+0x30]
	mov [esp], eax
	call bw_lpc
	mov eax, [edi+0x1c]
	mov [esp+0xc], eax
	mov eax, [edi+0xac]
	mov [esp+0x8], eax
	mov eax, [edi+0xa0]
	mov [esp+0x4], eax
	mov eax, [edi+0x34]
	mov [esp], eax
	call bw_lpc
	mov esi, [ebp-0x8c]
	shl esi, 0x2
	mov eax, [edi+0xbc]
	mov ecx, 0x3f800000
	mov [eax+esi], ecx
	mov edx, [edi+0x1c]
	test edx, edx
	jg sb_encode_480
	movsd xmm1, qword [_double_1_00000000]
sb_encode_810:
	mov eax, [ebp-0x7c]
	cvtss2sd xmm0, [eax+esi]
	addsd xmm0, [_double_0_01000000]
	addsd xmm1, [_double_0_01000000]
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x54], xmm0
	mov eax, [edi+0xb4]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp-0x68]
	mov [esp+0x8], edx
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x64]
	mov [esp], ecx
	call fir_mem2
	mov eax, [edi+0x10]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x68]
	mov [esp], ebx
	call compute_rms
	fstp dword [ebp-0x50]
	mov edx, [edi+0xe8]
	mov eax, [edi+0xe4]
	mov eax, [eax+edx*4]
	mov eax, [eax+0x24]
	test eax, eax
	jz sb_encode_490
	mov eax, [edi+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	add eax, [ebp-0x94]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0x90]
	movss xmm0, dword [_float_1_00000000]
	movss xmm1, dword [ebp-0x90]
	addss xmm1, xmm0
	movss [ebp-0x90], xmm1
	addss xmm0, [ebp-0x50]
	mulss xmm0, [ebp-0x54]
	divss xmm0, xmm1
	cmp dword [edi+0x10], 0x50
	jz sb_encode_500
sb_encode_840:
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0xd8]
	movsd xmm0, qword [ebp-0xd8]
	addsd xmm0, [_double_0_15556000]
	mulsd xmm0, [_double_3_70000000]
	addsd xmm0, [_double_0_50000000]
	movsd [esp], xmm0
	call floor
	fstp qword [ebp-0xa8]
	cvttsd2si eax, qword [ebp-0xa8]
	test eax, eax
	js sb_encode_510
	cmp eax, 0xf
	jle sb_encode_520
	mov eax, 0xf
	movsd xmm0, qword [_double_15_00000000]
sb_encode_820:
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	movsd [ebp-0xc8], xmm0
	call speex_bits_pack
	movsd xmm0, qword [ebp-0xc8]
	mulsd xmm0, [_double_0_27027027]
	subsd xmm0, [_double_0_15556000]
	movsd [esp], xmm0
	call exp
	fstp qword [ebp-0xb0]
	cvtsd2ss xmm0, [ebp-0xb0]
	mov edx, [edi+0x10]
	cmp edx, 0x50
	jz sb_encode_530
sb_encode_830:
	divss xmm0, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x90]
	mulss xmm1, xmm0
	movss [ebp-0x48], xmm1
	mov eax, [ebp-0x30]
	mov [esp+0x18], eax
	mov eax, [edi+0x1c]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov edx, [ebp-0x80]
	mov [esp+0xc], edx
	mov eax, [edi+0xac]
	mov [esp+0x8], eax
	mov eax, [edi+0xa8]
	mov [esp+0x4], eax
	mov eax, [edi+0xa4]
	mov [esp], eax
	call compute_impulse_response
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_encode_540
	xor eax, eax
sb_encode_550:
	mov ecx, [ebp-0x68]
	mov dword [ecx+eax*4], 0x26901d7d
	add eax, 0x1
	cmp [edi+0x10], eax
	jg sb_encode_550
sb_encode_540:
	mov eax, [edi+0x1c]
	test eax, eax
	jle sb_encode_560
	xor ecx, ecx
sb_encode_570:
	lea eax, [ecx*4]
	mov edx, [edi+0xb0]
	mov edx, [edx+eax]
	mov ebx, [ebp-0x88]
	mov [ebx+eax], edx
	add ecx, 0x1
	mov eax, [edi+0x1c]
	cmp eax, ecx
	jg sb_encode_570
sb_encode_560:
	mov esi, [ebp-0x88]
	mov [esp+0x14], esi
	mov [esp+0x10], eax
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x68]
	mov [esp], edx
	call iir_mem2
	mov eax, [edi+0x1c]
	test eax, eax
	jle sb_encode_580
	xor ecx, ecx
sb_encode_590:
	lea eax, [ecx*4]
	mov edx, [edi+0xb8]
	mov edx, [edx+eax]
	mov ebx, [ebp-0x88]
	mov [ebx+eax], edx
	add ecx, 0x1
	mov eax, [edi+0x1c]
	cmp ecx, eax
	jl sb_encode_590
sb_encode_580:
	mov esi, [ebp-0x88]
	mov [esp+0x18], esi
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov eax, [edi+0xac]
	mov [esp+0x8], eax
	mov eax, [edi+0xa8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x68]
	mov [esp], edx
	call filter_mem2
	mov eax, [edi+0x1c]
	test eax, eax
	jle sb_encode_600
	xor ecx, ecx
sb_encode_610:
	lea eax, [ecx*4]
	mov edx, [edi+0xb8]
	mov edx, [edx+eax]
	mov ebx, [ebp-0x88]
	mov [ebx+eax], edx
	add ecx, 0x1
	mov eax, [edi+0x1c]
	cmp eax, ecx
	jg sb_encode_610
sb_encode_600:
	mov esi, [ebp-0x88]
	mov [esp+0x18], esi
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov eax, [edi+0xac]
	mov [esp+0x8], eax
	mov eax, [edi+0xa8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x64]
	mov [esp], edx
	call filter_mem2
	mov edx, [edi+0x10]
	test edx, edx
	jle sb_encode_620
	mov edx, 0x1
sb_encode_630:
	lea eax, [edx*4]
	mov ecx, [ebp-0x58]
	movss xmm0, dword [ecx+eax-0x4]
	mov ebx, [ebp-0x60]
	subss xmm0, [ebx+eax-0x4]
	mov esi, [ebp-0x5c]
	movss [esi+eax-0x4], xmm0
	mov eax, edx
	add edx, 0x1
	cmp [edi+0x10], eax
	jg sb_encode_630
	mov edx, [edi+0x10]
	test edx, edx
	jle sb_encode_620
	xor eax, eax
sb_encode_640:
	mov edx, [ebp-0x68]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov edx, [edi+0x10]
	cmp edx, eax
	jg sb_encode_640
sb_encode_620:
	mov [esp+0xc], edx
	movss xmm0, dword [ebp-0x48]
	movss [esp+0x8], xmm0
	mov eax, [ebp-0x5c]
	mov [esp+0x4], eax
	mov [esp], eax
	call signal_div
	mov ecx, [edi+0x10]
	test ecx, ecx
	jle sb_encode_650
	xor eax, eax
sb_encode_660:
	mov edx, [ebp-0x84]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov ecx, [edi+0x10]
	cmp eax, ecx
	jl sb_encode_660
sb_encode_650:
	mov edx, [edi+0xe8]
	mov eax, [edi+0xe4]
	mov edx, [eax+edx*4]
	mov eax, [edx+0xc]
	mov [esp+0x30], eax
	mov eax, [edi+0xf0]
	add eax, 0x1
	sar eax, 1
	mov [esp+0x2c], eax
	mov ebx, [ebp-0x30]
	mov [esp+0x28], ebx
	mov esi, [ebp+0x10]
	mov [esp+0x24], esi
	mov eax, [ebp-0x80]
	mov [esp+0x20], eax
	mov ebx, [ebp-0x84]
	mov [esp+0x1c], ebx
	mov [esp+0x18], ecx
	mov eax, [edi+0x1c]
	mov [esp+0x14], eax
	mov eax, [edx+0x2c]
	mov [esp+0x10], eax
	mov eax, [edi+0xac]
	mov [esp+0xc], eax
	mov eax, [edi+0xa8]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov esi, [ebp-0x5c]
	mov [esp], esi
	call dword [edx+0x24]
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x48]
	movss [esp+0x8], xmm0
	mov [esp+0x4], ebx
	mov [esp], ebx
	call signal_mul
	mov edx, [edi+0x10]
	test edx, edx
	jle sb_encode_670
	mov ecx, 0x1
sb_encode_680:
	lea eax, [ecx*4]
	mov ebx, [ebp-0x68]
	lea edx, [eax+ebx]
	movss xmm0, dword [edx-0x4]
	mov esi, [ebp-0x84]
	addss xmm0, [eax+esi-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	mov edx, [edi+0x10]
	add ecx, 0x1
	cmp eax, edx
	jl sb_encode_680
sb_encode_670:
	mov esi, [edi+0xe8]
	mov ecx, [edi+0xe4]
	mov eax, [ecx+esi*4]
	mov eax, [eax+0xc]
	test eax, eax
	jz sb_encode_690
	mov eax, [ebp-0x30]
	neg eax
	and eax, 0x3
	add eax, [ebp-0x30]
	lea ebx, [eax+edx*4]
	mov [ebp-0x2c], ebx
	mov [ebp-0x44], eax
	mov ebx, edx
	test edx, edx
	jle sb_encode_700
	xor eax, eax
sb_encode_710:
	mov esi, [ebp-0x44]
	mov dword [esi+eax*4], 0x0
	add eax, 0x1
	cmp eax, [edi+0x10]
	jl sb_encode_710
	mov ebx, [edi+0x10]
	test ebx, ebx
	jle sb_encode_720
	mov ecx, 0x1
	movss xmm1, dword [_float_2_50000000]
	mov edx, [ebp-0x5c]
	add edx, 0x4
sb_encode_730:
	movss xmm0, dword [edx-0x4]
	mulss xmm0, xmm1
	movss [edx-0x4], xmm0
	mov eax, ecx
	mov ebx, [edi+0x10]
	add ecx, 0x1
	add edx, 0x4
	cmp eax, ebx
	jl sb_encode_730
sb_encode_720:
	mov esi, [edi+0xe8]
	mov ecx, [edi+0xe4]
sb_encode_700:
	mov edx, [ecx+esi*4]
	mov dword [esp+0x30], 0x0
	mov eax, [edi+0xf0]
	add eax, 0x1
	sar eax, 1
	mov [esp+0x2c], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x28], eax
	mov ecx, [ebp+0x10]
	mov [esp+0x24], ecx
	mov esi, [ebp-0x80]
	mov [esp+0x20], esi
	mov eax, [ebp-0x44]
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov eax, [edi+0x1c]
	mov [esp+0x14], eax
	mov eax, [edx+0x2c]
	mov [esp+0x10], eax
	mov eax, [edi+0xac]
	mov [esp+0xc], eax
	mov eax, [edi+0xa8]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call dword [edx+0x24]
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_encode_690
	cvtss2sd xmm1, [ebp-0x48]
	mulsd xmm1, [_double_0_40000000]
	mov ecx, 0x1
	mov edx, [ebp-0x44]
	add edx, 0x4
sb_encode_740:
	cvtss2sd xmm0, [edx-0x4]
	mulsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	add edx, 0x4
	cmp [edi+0x10], eax
	jg sb_encode_740
	mov eax, [edi+0x10]
	test eax, eax
	jle sb_encode_690
	mov ecx, 0x1
sb_encode_750:
	lea eax, [ecx*4]
	mov edx, [ebp-0x68]
	add edx, eax
	movss xmm0, dword [edx-0x4]
	mov ebx, [ebp-0x44]
	addss xmm0, [ebx+eax-0x4]
	movss [edx-0x4], xmm0
	mov eax, ecx
	add ecx, 0x1
	cmp eax, [edi+0x10]
	jl sb_encode_750
sb_encode_690:
	mov edx, [edi+0x1c]
	test edx, edx
	jle sb_encode_760
	xor ecx, ecx
sb_encode_770:
	lea eax, [ecx*4]
	mov edx, [edi+0xb0]
	mov edx, [edx+eax]
	mov esi, [ebp-0x88]
	mov [esi+eax], edx
	add ecx, 0x1
	mov edx, [edi+0x1c]
	cmp edx, ecx
	jg sb_encode_770
sb_encode_760:
	mov eax, [edi+0xb0]
	mov [esp+0x14], eax
	mov [esp+0x10], edx
	mov eax, [edi+0x10]
	mov [esp+0xc], eax
	mov eax, [ebp-0x64]
	mov [esp+0x8], eax
	mov eax, [edi+0xa4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x68]
	mov [esp], edx
	call iir_mem2
	mov eax, [edi+0xb8]
	mov [esp+0x18], eax
	mov eax, [edi+0x1c]
	mov [esp+0x14], eax
	mov eax, [edi+0x10]
	mov [esp+0x10], eax
	mov ecx, [ebp-0x58]
	mov [esp+0xc], ecx
	mov eax, [edi+0xac]
	mov [esp+0x8], eax
	mov eax, [edi+0xa8]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x64]
	mov [esp], ebx
	call filter_mem2
	add dword [ebp-0x8c], 0x1
	mov edx, [edi+0x14]
	cmp [ebp-0x8c], edx
	jge sb_encode_780
	mov ebx, [edi+0x1c]
	jmp sb_encode_790
sb_encode_480:
	xor ebx, ebx
	mov [ebp-0xcc], ecx
	movss xmm3, dword [ebp-0xcc]
	xor ecx, ecx
sb_encode_800:
	mov eax, ecx
	add eax, [edi+0xa4]
	movss xmm0, dword [eax+0x4]
	movss xmm2, dword [eax]
	movaps xmm1, xmm0
	subss xmm1, xmm2
	addss xmm3, xmm1
	mov eax, esi
	add eax, [edi+0xbc]
	addss xmm0, xmm2
	addss xmm0, [eax]
	movss [eax], xmm0
	add ebx, 0x2
	mov edx, [edi+0x1c]
	add ecx, 0x8
	cmp edx, ebx
	jg sb_encode_800
	cvtss2sd xmm1, xmm3
	jmp sb_encode_810
sb_encode_520:
	cvtsi2sd xmm0, eax
	jmp sb_encode_820
sb_encode_530:
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_1_41420000]
	cvtsd2ss xmm0, xmm0
	jmp sb_encode_830
sb_encode_500:
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_70711000]
	cvtsd2ss xmm0, xmm0
	jmp sb_encode_840
sb_encode_490:
	mov eax, [edi+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp-0x74]
	add eax, [ebp-0x94]
	mov [esp], eax
	call compute_rms
	fstp dword [ebp-0x4c]
	cvtss2sd xmm0, [ebp-0x50]
	cvtss2sd xmm1, [ebp-0x4c]
	addsd xmm1, [_double_0_01000000]
	divsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	mulss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_0_00010000]
	movsd [esp], xmm0
	call log
	fstp qword [ebp-0xd8]
	movsd xmm0, qword [ebp-0xd8]
	mulsd xmm0, [_double_8_00000000]
	addsd xmm0, [_double_10_50000000]
	movsd [esp], xmm0
	call floor
	fstp qword [ebp-0xa0]
	cvttsd2si edx, qword [ebp-0xa0]
	test edx, edx
	js sb_encode_850
	cmp edx, 0x20
	mov eax, 0x1f
	cmovge edx, eax
sb_encode_910:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], edx
	mov esi, [ebp+0x10]
	mov [esp], esi
	call speex_bits_pack
	jmp sb_encode_690
sb_encode_510:
	xor eax, eax
	pxor xmm0, xmm0
	jmp sb_encode_820
sb_encode_470:
	mov eax, [edi+0xec]
	jmp sb_encode_860
sb_encode_360:
	mov [ebp-0x3c], ebx
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	shl eax, 0x2
	mov [ebp-0x40], eax
	xor esi, esi
	movss xmm1, dword [edi+0xc0]
	movss [ebp-0xb4], xmm1
	movss xmm0, dword [edi+0xdc]
	movss [ebp-0xb8], xmm0
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x98]
	cvttss2si edx, [ebp-0x98]
	lea eax, [edx+0x1]
	mov [ebp-0xdc], eax
	cvtsi2ss xmm0, edx
	movss xmm3, dword [ebp-0xb4]
	subss xmm3, xmm0
	cvtsi2ss xmm2, eax
	subss xmm2, [ebp-0xb4]
	cmp edx, 0xa
	jz sb_encode_870
sb_encode_890:
	mov eax, [ebp-0x40]
	mov ecx, [ebp-0x70]
	add eax, [ecx+0xa4]
	movaps xmm0, xmm3
	mov ecx, [ebp-0xdc]
	mulss xmm0, [eax+ecx*4]
	movaps xmm1, xmm2
	mulss xmm1, [eax+edx*4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb8]
	ucomiss xmm1, xmm0
	jae sb_encode_880
	sub ebx, 0x1
	mov [ebp-0x20], ebx
	add esi, 0x1
	sub dword [ebp-0x40], 0x2c
	cmp esi, [ebp-0x3c]
	jnz sb_encode_890
	jmp sb_encode_880
sb_encode_870:
	mov edx, [ebp-0x70]
	mov eax, [edx+0xa4]
	movss xmm0, dword [ebp-0xb8]
	mov ecx, [ebp-0x40]
	ucomiss xmm0, [eax+ecx+0x28]
	jae sb_encode_880
	sub ebx, 0x1
	mov [ebp-0x20], ebx
	add esi, 0x1
	sub dword [ebp-0x40], 0x2c
	cmp esi, [ebp-0x3c]
	jnz sb_encode_870
	jmp sb_encode_880
sb_encode_320:
	mov dword [edi+0xc0], 0x0
	jmp sb_encode_270
sb_encode_280:
	movaps xmm0, xmm3
	jmp sb_encode_300
sb_encode_350:
	jp sb_encode_900
	mov eax, 0xbf800000
	mov [edi+0xdc], eax
	jmp sb_encode_900
sb_encode_850:
	xor edx, edx
	jmp sb_encode_910
	nop


;Initialized global or static variables of sb_celp:
SECTION .data


;Initialized constant data of sb_celp:
SECTION .rdata
h1: dd 0x3816d5c9, 0x38eb9e41, 0xb8e7a610, 0xb9924a77, 0x3971023a, 0x3a1c11af, 0xb9c877e8, 0xba9531ab, 0x3a0b2901, 0x3b022a85, 0xba23acec, 0xbb541102, 0x3a168db0, 0x3ba37c00, 0xb9878428, 0xbbf1684f, 0xb9feb21a, 0x3c2c2517, 0x3af8580d, 0xbc6f1b81, 0xbb8d59b8, 0x3ca360de, 0x3c07c88c, 0xbcde7fcd, 0xbc735e11, 0x3d1a369a, 0x3cd8a761, 0xbd630d23, 0xbd50b60e, 0x3dc846a0, 0x3e0d8dd1, 0xbeeb91fa, 0x3eeb91fa, 0xbe0d8dd1, 0xbdc846a0, 0x3d50b60e, 0x3d630d23, 0xbcd8a761, 0xbd1a369a, 0x3c735e11, 0x3cde7fcd, 0xbc07c88c, 0xbca360de, 0x3b8d59b8, 0x3c6f1b81, 0xbaf8580d, 0xbc2c2517, 0x39feb21a, 0x3bf1684f, 0x39878428, 0xbba37c00, 0xba168db0, 0x3b541102, 0x3a23acec, 0xbb022a85, 0xba0b2901, 0x3a9531ab, 0x39c877e8, 0xba1c11af, 0xb971023a, 0x39924a77, 0x38e7a610, 0xb8eb9e41, 0xb816d5c9
h0: dd 0x3816d5c9, 0xb8eb9e41, 0xb8e7a610, 0x39924a77, 0x3971023a, 0xba1c11af, 0xb9c877e8, 0x3a9531ab, 0x3a0b2901, 0xbb022a85, 0xba23acec, 0x3b541102, 0x3a168db0, 0xbba37c00, 0xb9878428, 0x3bf1684f, 0xb9feb21a, 0xbc2c2517, 0x3af8580d, 0x3c6f1b81, 0xbb8d59b8, 0xbca360de, 0x3c07c88c, 0x3cde7fcd, 0xbc735e11, 0xbd1a369a, 0x3cd8a761, 0x3d630d23, 0xbd50b60e, 0xbdc846a0, 0x3e0d8dd1, 0x3eeb91fa, 0x3eeb91fa, 0x3e0d8dd1, 0xbdc846a0, 0xbd50b60e, 0x3d630d23, 0x3cd8a761, 0xbd1a369a, 0xbc735e11, 0x3cde7fcd, 0x3c07c88c, 0xbca360de, 0xbb8d59b8, 0x3c6f1b81, 0x3af8580d, 0xbc2c2517, 0xb9feb21a, 0x3bf1684f, 0xb9878428, 0xbba37c00, 0x3a168db0, 0x3b541102, 0xba23acec, 0xbb022a85, 0x3a0b2901, 0x3a9531ab, 0xb9c877e8, 0xba1c11af, 0x3971023a, 0x39924a77, 0xb8e7a610, 0xb8eb9e41, 0x3816d5c9, 0x15a6a6, 0x15a6b7, 0x15a684, 0x15a70f, 0x15a684, 0x15a732, 0x15a758, 0x15a77e, 0x15a684, 0x15a79b, 0x15a7c9, 0x15a7e0, 0x15a684, 0x15a876, 0x15a8b5, 0x15a8cc, 0x15a91a, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a96c, 0x15ad37, 0x15ab51, 0x15a684, 0x15a684, 0x15ac31, 0x15ab23, 0x15ad4e, 0x15ac41, 0x15ad20, 0x15a9a2, 0x15a9c8, 0x15a9ee, 0x15aa1f, 0x15a684, 0x15aa36, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15a684, 0x15aa67, 0x15aa97, 0x15aadd, 0x15adda, 0x15adbd, 0x15adbd, 0x15ae00, 0x15ae0c, 0x15adbd, 0x15ae0c, 0x15adbd, 0x15ae59, 0x15ae7a, 0x15ae9b, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15aeaa, 0x15aeee, 0x15adbd, 0x15af0f, 0x15adbd, 0x15af30, 0x15af5e, 0x15af6d, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15afba, 0x15b0b8, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15adbd, 0x15afe3, 0x15b00b, 0x15b04f, 0x15b097, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of sb_celp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_unknown_nb_ctl_r:		db "Unknown nb_ctl request: ",0
_cstring_invalid_mode_enc:		db "Invalid mode encountered: corrupted stream",3fh,0



;All constant floats and doubles:
SECTION .rdata
_float__32767_00000000:		dd 0xc6fffe00	; -32767
_float_32767_00000000:		dd 0x46fffe00	; 32767
_double_0_90000000:		dq 0x3feccccccccccccd	; 0.9
_double_0_60000000:		dq 0x3fe3333333333333	; 0.6
_float_10_00000000:		dd 0x41200000	; 10
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double__0_46000000:		dq 0xbfdd70a3d70a3d71	; -0.46
_double_0_54000000:		dq 0x3fe147ae147ae148	; 0.54
_double_0_46000000:		dq 0x3fdd70a3d70a3d71	; 0.46
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_double__0_50000000:		dq 0xbfe0000000000000	; -0.5
_double_16384_00000000:		dq 0x40d0000000000000	; 16384
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_double_0_01000000:		dq 0x3f847ae147ae147b	; 0.01
_double_0_27027027:		dq 0x3fd14c1bacf914c1	; 0.27027
_double_0_15556000:		dq 0x3fc3e963dc486ad3	; 0.15556
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_40000000:		dq 0x3fd999999999999a	; 0.4
_double_1_41420000:		dq 0x3ff6a0902de00d1b	; 1.4142
_double_0_12500000:		dq 0x3fc0000000000000	; 0.125
_double__0_00001000:		dq 0xbee4f8b588e368f1	; -1e-05
_double_0_10000000:		dq 0x3fb999999999999a	; 0.1
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_double_0_100000001:		dq 0x3fb99999a0000000	; 0.1
_double__0_10000000:		dq 0xbfb999999999999a	; -0.1
_float__0_10000000:		dd 0xbdcccccd	; -0.1
_float__4_00000000:		dd 0xc0800000	; -4
_float_2_00000000:		dd 0x40000000	; 2
_float__1_00000000:		dd 0xbf800000	; -1
_double_0_95000000:		dq 0x3fee666666666666	; 0.95
_double_0_05000000:		dq 0x3fa999999999999a	; 0.05
_double_3_70000000:		dq 0x400d99999999999a	; 3.7
_double_15_00000000:		dq 0x402e000000000000	; 15
_float_2_50000000:		dd 0x40200000	; 2.5
_double_0_70711000:		dq 0x3fe6a0a5269595ff	; 0.70711
_double_0_00010000:		dq 0x3f1a36e2eb1c432d	; 0.0001
_double_8_00000000:		dq 0x4020000000000000	; 8
_double_10_50000000:		dq 0x4025000000000000	; 10.5

