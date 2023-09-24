;Imports of vq:

;Exports of vq:
	global _Z10scal_quantfPKfi
	global _Z13vq_nbest_signPfPKfiiS_iPiS_Pc
	global _Z8vq_nbestPfPKfiiS_iPiS_Pc


SECTION .text


;scal_quant(float, float const*, int)
_Z10scal_quantfPKfi:
	push ebp
	mov ebp, esp
	movss xmm0, dword [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x10]
	sub edx, 0x1
	test edx, edx
	jle _Z10scal_quantfPKfi_10
	ucomiss xmm0, [ecx]
	jbe _Z10scal_quantfPKfi_10
	xor eax, eax
_Z10scal_quantfPKfi_30:
	add eax, 0x1
	cmp eax, edx
	jz _Z10scal_quantfPKfi_20
	ucomiss xmm0, [ecx+eax*4]
	ja _Z10scal_quantfPKfi_30
_Z10scal_quantfPKfi_20:
	pop ebp
	ret
_Z10scal_quantfPKfi_10:
	xor eax, eax
	pop ebp
	ret
	nop
	add [eax], al


;vq_nbest_sign(float*, float const*, int, int, float*, int, int*, float*, char*)
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x14]
	test eax, eax
	jle _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_10
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
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_90:
	mov esi, [ebp+0x10]
	test esi, esi
	jg _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_20
	movaps xmm1, xmm3
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_110:
	mov dword [ebp-0x28], 0x1
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_120:
	mov eax, [ebp-0x2c]
	mov edx, [ebp+0x18]
	movss xmm2, dword [edx+eax*4]
	mulss xmm2, xmm4
	addss xmm2, xmm1
	mov ecx, [ebp+0x1c]
	cmp eax, ecx
	jl _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_30
	mov esi, [ebp-0x30]
	movss xmm0, dword [esi]
	ucomiss xmm0, xmm2
	jbe _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_40
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_30:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_50
	mov eax, [ebp+0x24]
	add eax, [ebp-0x20]
	lea ebx, [eax-0x4]
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x20]
	mov ecx, [ebp-0x1c]
	xor edi, edi
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_80:
	cmp [ebp-0x24], ecx
	jl _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_60
	mov eax, edx
	mov esi, [ebp-0x4c]
	movss xmm0, dword [esi-0x4]
	ucomiss xmm0, xmm2
	jbe _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_70
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_60:
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
	jnz _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_80
	lea eax, [ecx*4]
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_70:
	mov edx, [ebp+0x24]
	movss [eax+edx], xmm2
	mov ecx, [ebp+0x20]
	lea edx, [eax+ecx]
	mov esi, [ebp-0x2c]
	mov [edx], esi
	add dword [ebp-0x24], 0x1
	mov edi, [ebp-0x28]
	test edi, edi
	jz _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_40
	mov eax, [ebp+0x14]
	add eax, esi
	mov [edx], eax
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_40:
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp+0x14], eax
	jnz _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_90
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_20:
	xor eax, eax
	movaps xmm1, xmm3
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_100:
	movss xmm0, dword [ecx+eax*4]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	add esi, 0x4
	mov [ebp+0xc], esi
	add eax, 0x1
	cmp [ebp+0x10], eax
	jnz _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_100
	ucomiss xmm1, xmm3
	jbe _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_110
	xorps xmm1, [_data16_80000000]
	mov dword [ebp-0x28], 0x0
	jmp _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_120
_Z13vq_nbest_signPfPKfiiS_iPiS_Pc_50:
	mov eax, [ebp-0x20]
	jmp _Z13vq_nbest_signPfPKfiiS_iPiS_Pc_70
	add [eax], al


;vq_nbest(float*, float const*, int, int, float*, int, int*, float*, char*)
_Z8vq_nbestPfPKfiiS_iPiS_Pc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jle _Z8vq_nbestPfPKfiiS_iPiS_Pc_10
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
_Z8vq_nbestPfPKfiiS_iPiS_Pc_90:
	mov edx, [ebp+0x10]
	test edx, edx
	jg _Z8vq_nbestPfPKfiiS_iPiS_Pc_20
	movaps xmm1, xmm3
_Z8vq_nbestPfPKfiiS_iPiS_Pc_110:
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x18]
	movss xmm2, dword [edx+eax*4]
	mulss xmm2, xmm4
	subss xmm2, xmm1
	mov ecx, [ebp+0x1c]
	cmp eax, ecx
	jl _Z8vq_nbestPfPKfiiS_iPiS_Pc_30
	mov esi, [ebp-0x20]
	movss xmm0, dword [esi]
	ucomiss xmm0, xmm2
	jbe _Z8vq_nbestPfPKfiiS_iPiS_Pc_40
_Z8vq_nbestPfPKfiiS_iPiS_Pc_30:
	mov ecx, [ebp-0x18]
	test ecx, ecx
	jle _Z8vq_nbestPfPKfiiS_iPiS_Pc_50
	mov eax, [ebp+0x24]
	add eax, [ebp-0x10]
	lea ebx, [eax-0x4]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x10]
	mov ecx, [ebp-0x18]
	xor edi, edi
_Z8vq_nbestPfPKfiiS_iPiS_Pc_80:
	cmp [ebp-0x14], ecx
	jl _Z8vq_nbestPfPKfiiS_iPiS_Pc_60
	mov eax, edx
	mov esi, [ebp-0x28]
	movss xmm0, dword [esi-0x4]
	ucomiss xmm0, xmm2
	jbe _Z8vq_nbestPfPKfiiS_iPiS_Pc_70
_Z8vq_nbestPfPKfiiS_iPiS_Pc_60:
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
	jnz _Z8vq_nbestPfPKfiiS_iPiS_Pc_80
	lea eax, [ecx*4]
_Z8vq_nbestPfPKfiiS_iPiS_Pc_70:
	mov edx, [ebp+0x24]
	movss [eax+edx], xmm2
	mov esi, [ebp-0x1c]
	mov ecx, [ebp+0x20]
	mov [eax+ecx], esi
	add dword [ebp-0x14], 0x1
_Z8vq_nbestPfPKfiiS_iPiS_Pc_40:
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp+0x14], eax
	jnz _Z8vq_nbestPfPKfiiS_iPiS_Pc_90
_Z8vq_nbestPfPKfiiS_iPiS_Pc_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8vq_nbestPfPKfiiS_iPiS_Pc_20:
	xor eax, eax
	movaps xmm1, xmm3
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
_Z8vq_nbestPfPKfiiS_iPiS_Pc_100:
	movss xmm0, dword [ecx+eax*4]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	add esi, 0x4
	mov [ebp+0xc], esi
	add eax, 0x1
	cmp [ebp+0x10], eax
	jnz _Z8vq_nbestPfPKfiiS_iPiS_Pc_100
	jmp _Z8vq_nbestPfPKfiiS_iPiS_Pc_110
_Z8vq_nbestPfPKfiiS_iPiS_Pc_50:
	mov eax, [ebp-0x10]
	jmp _Z8vq_nbestPfPKfiiS_iPiS_Pc_70
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

