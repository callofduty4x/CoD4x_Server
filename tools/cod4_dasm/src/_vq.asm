;Imports of vq:

;Exports of vq:
	global scal_quant
	global vq_nbest_sign
	global vq_nbest


SECTION .text


;scal_quant(float, float const*, int)
scal_quant:
	push ebp
	mov ebp, esp
	movss xmm0, dword [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	sub edx, 0x1
	test edx, edx
	jle scal_quant_10
	ucomiss xmm0, [ecx]
	jbe scal_quant_10
	xor eax, eax
scal_quant_30:
	add eax, 0x1
	cmp eax, edx
	jz scal_quant_20
	ucomiss xmm0, [ecx+eax*4]
	ja scal_quant_30
scal_quant_20:
	pop ebp
	ret
scal_quant_10:
	xor eax, eax
	pop ebp
	ret
	nop
	add [eax], al


;vq_nbest_sign(float*, float const*, int, int, float*, int, int*, float*, char*)
vq_nbest_sign:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x14]
	test eax, eax
	jle vq_nbest_sign_10
	mov eax, [ebp+0x1c]
	sub eax, 0x1
	mov [ebp-0x1c], eax
	shl eax, 0x2
	mov [ebp-0x20], eax
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x24]
	lea edx, [ecx+edx*4-0x4]
	mov [ebp-0x30], edx
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x2c], 0x0
	pxor xmm3, xmm3
	movss xmm4, dword [_float_0_50000000]
vq_nbest_sign_90:
	mov esi, [ebp+0x10]
	test esi, esi
	jg vq_nbest_sign_20
	movaps xmm1, xmm3
vq_nbest_sign_110:
	mov dword [ebp-0x28], 0x1
vq_nbest_sign_120:
	mov eax, [ebp-0x2c]
	mov edx, [ebp+0x18]
	movss xmm2, dword [edx+eax*4]
	mulss xmm2, xmm4
	addss xmm2, xmm1
	mov ecx, [ebp+0x1c]
	cmp eax, ecx
	jl vq_nbest_sign_30
	mov esi, [ebp-0x30]
	movss xmm0, dword [esi]
	ucomiss xmm0, xmm2
	jbe vq_nbest_sign_40
vq_nbest_sign_30:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle vq_nbest_sign_50
	mov eax, [ebp+0x24]
	add eax, [ebp-0x20]
	lea ebx, [eax-0x4]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	xor edi, edi
vq_nbest_sign_80:
	cmp [ebp-0x24], ecx
	jl vq_nbest_sign_60
	mov eax, edx
	mov esi, [ebp-0x4c]
	movss xmm0, dword [esi-0x4]
	ucomiss xmm0, xmm2
	jbe vq_nbest_sign_70
vq_nbest_sign_60:
	movss xmm0, dword [ebx]
	mov eax, [ebp+0x24]
	movss [eax+edx], xmm0
	mov eax, [ebp+0x20]
	mov eax, [eax+edx-0x4]
	mov esi, [ebp+0x20]
	mov [esi+edx], eax
	sub ecx, 0x1
	add edi, 0x1
	sub ebx, 0x4
	sub dword [ebp-0x4c], 0x4
	sub edx, 0x4
	cmp [ebp-0x1c], edi
	jnz vq_nbest_sign_80
	lea eax, [ecx*4]
vq_nbest_sign_70:
	mov edx, [ebp+0x24]
	movss [eax+edx], xmm2
	mov ecx, [ebp+0x20]
	lea edx, [eax+ecx]
	mov esi, [ebp-0x2c]
	mov [edx], esi
	add dword [ebp-0x24], 0x1
	mov edi, [ebp-0x28]
	test edi, edi
	jz vq_nbest_sign_40
	mov eax, [ebp+0x14]
	add eax, esi
	mov [edx], eax
vq_nbest_sign_40:
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp+0x14], eax
	jnz vq_nbest_sign_90
vq_nbest_sign_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
vq_nbest_sign_20:
	xor eax, eax
	movaps xmm1, xmm3
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
vq_nbest_sign_100:
	movss xmm0, dword [ecx+eax*4]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	add esi, 0x4
	mov [ebp+0xc], esi
	add eax, 0x1
	cmp [ebp+0x10], eax
	jnz vq_nbest_sign_100
	ucomiss xmm1, xmm3
	jbe vq_nbest_sign_110
	xorps xmm1, [_data16_80000000]
	mov dword [ebp-0x28], 0x0
	jmp vq_nbest_sign_120
vq_nbest_sign_50:
	mov eax, [ebp-0x20]
	jmp vq_nbest_sign_70
	add [eax], al


;vq_nbest(float*, float const*, int, int, float*, int, int*, float*, char*)
vq_nbest:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jle vq_nbest_10
	mov eax, [ebp+0x1c]
	sub eax, 0x1
	mov [ebp-0x18], eax
	shl eax, 0x2
	mov [ebp-0x10], eax
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x24]
	lea edx, [ecx+edx*4-0x4]
	mov [ebp-0x20], edx
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x1c], 0x0
	pxor xmm3, xmm3
	movss xmm4, dword [_float_0_50000000]
vq_nbest_90:
	mov edx, [ebp+0x10]
	test edx, edx
	jg vq_nbest_20
	movaps xmm1, xmm3
vq_nbest_110:
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x18]
	movss xmm2, dword [edx+eax*4]
	mulss xmm2, xmm4
	subss xmm2, xmm1
	mov ecx, [ebp+0x1c]
	cmp eax, ecx
	jl vq_nbest_30
	mov esi, [ebp-0x20]
	movss xmm0, dword [esi]
	ucomiss xmm0, xmm2
	jbe vq_nbest_40
vq_nbest_30:
	mov ecx, [ebp-0x18]
	test ecx, ecx
	jle vq_nbest_50
	mov eax, [ebp+0x24]
	add eax, [ebp-0x10]
	lea ebx, [eax-0x4]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x10]
	mov ecx, [ebp-0x18]
	xor edi, edi
vq_nbest_80:
	cmp [ebp-0x14], ecx
	jl vq_nbest_60
	mov eax, edx
	mov esi, [ebp-0x28]
	movss xmm0, dword [esi-0x4]
	ucomiss xmm0, xmm2
	jbe vq_nbest_70
vq_nbest_60:
	movss xmm0, dword [ebx]
	mov eax, [ebp+0x24]
	movss [eax+edx], xmm0
	mov eax, [ebp+0x20]
	mov eax, [eax+edx-0x4]
	mov esi, [ebp+0x20]
	mov [esi+edx], eax
	sub ecx, 0x1
	add edi, 0x1
	sub ebx, 0x4
	sub dword [ebp-0x28], 0x4
	sub edx, 0x4
	cmp edi, [ebp-0x18]
	jnz vq_nbest_80
	lea eax, [ecx*4]
vq_nbest_70:
	mov edx, [ebp+0x24]
	movss [eax+edx], xmm2
	mov esi, [ebp-0x1c]
	mov ecx, [ebp+0x20]
	mov [eax+ecx], esi
	add dword [ebp-0x14], 0x1
vq_nbest_40:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp+0x14], eax
	jnz vq_nbest_90
vq_nbest_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
vq_nbest_20:
	xor eax, eax
	movaps xmm1, xmm3
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
vq_nbest_100:
	movss xmm0, dword [ecx+eax*4]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	add esi, 0x4
	mov [ebp+0xc], esi
	add eax, 0x1
	cmp [ebp+0x10], eax
	jnz vq_nbest_100
	jmp vq_nbest_110
vq_nbest_50:
	mov eax, [ebp-0x10]
	jmp vq_nbest_70
	nop


;Initialized global or static variables of vq:
SECTION .data


;Initialized constant data of vq:
SECTION .rdata


;Zero initialized global or static variables of vq:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

