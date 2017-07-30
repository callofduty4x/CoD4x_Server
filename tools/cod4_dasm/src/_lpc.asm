;Imports of lpc:

;Exports of lpc:
	global _spx_autocorr
	global _spx_lpc


SECTION .text


;_spx_autocorr(float const*, float*, int, int)
_spx_autocorr:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ebx, [ebp+0x10]
	sub ebx, 0x1
	cmp ebx, 0xffffffff
	jz _spx_autocorr_10
	mov [ebp-0x10], ebx
	lea eax, [ebx*4]
	mov esi, [ebp+0xc]
	add esi, eax
	add eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov ecx, [ebp+0x14]
	sub ecx, ebx
	pxor xmm2, xmm2
	jmp _spx_autocorr_20
_spx_autocorr_30:
	movaps xmm1, xmm2
	movss [esi], xmm1
	sub ebx, 0x1
	sub esi, 0x4
	sub dword [ebp-0x14], 0x4
	add ecx, 0x1
	cmp ebx, 0xffffffff
	jz _spx_autocorr_10
_spx_autocorr_20:
	cmp ebx, [ebp+0x14]
	jge _spx_autocorr_30
	mov edx, [ebp-0x14]
	movaps xmm1, xmm2
	xor eax, eax
	mov edi, [ebp+0x8]
_spx_autocorr_40:
	movss xmm0, dword [edx]
	mulss xmm0, [edi+eax*4]
	addss xmm1, xmm0
	add eax, 0x1
	add edx, 0x4
	cmp eax, ecx
	jnz _spx_autocorr_40
	movss [esi], xmm1
	sub ebx, 0x1
	sub esi, 0x4
	sub dword [ebp-0x14], 0x4
	add ecx, 0x1
	cmp ebx, 0xffffffff
	jnz _spx_autocorr_20
_spx_autocorr_10:
	movss xmm0, dword [_float_10_00000000]
	mov eax, [ebp+0xc]
	addss xmm0, [eax]
	movss [eax], xmm0
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;_spx_lpc(float*, float const*, int)
_spx_lpc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	movss xmm3, dword [eax]
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jp _spx_lpc_10
	jz _spx_lpc_20
_spx_lpc_10:
	mov edx, [ebp+0x10]
	test edx, edx
	jle _spx_lpc_30
	mov ecx, [ebp+0xc]
	mov [ebp-0x1c], ecx
	mov edi, [ebp+0x8]
	xor esi, esi
	movss xmm4, dword [_data16_80000000]
	movsd xmm5, qword [_double_0_00300000]
_spx_lpc_80:
	movss xmm2, dword [ecx+0x4]
	xorps xmm2, xmm4
	test esi, esi
	jle _spx_lpc_40
	mov eax, ecx
	xor edx, edx
	mov ecx, [ebp+0x8]
_spx_lpc_50:
	movss xmm0, dword [ecx+edx*4]
	mulss xmm0, [eax]
	subss xmm2, xmm0
	add edx, 0x1
	sub eax, 0x4
	cmp esi, edx
	jnz _spx_lpc_50
_spx_lpc_40:
	cvtss2sd xmm2, xmm2
	cvtss2sd xmm1, xmm3
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax]
	mulsd xmm0, xmm5
	addsd xmm1, xmm0
	divsd xmm2, xmm1
	cvtsd2ss xmm2, xmm2
	movss [edi], xmm2
	mov ebx, esi
	sar ebx, 1
	test ebx, ebx
	jg _spx_lpc_60
	xor ebx, ebx
_spx_lpc_120:
	test esi, 0x1
	jz _spx_lpc_70
	mov edx, [ebp+0x8]
	lea eax, [edx+ebx*4]
	movss xmm0, dword [eax]
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	addss xmm0, xmm1
	movss [eax], xmm0
_spx_lpc_70:
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	mulss xmm2, xmm0
	subss xmm3, xmm2
	add esi, 0x1
	add dword [ebp-0x1c], 0x4
	add edi, 0x4
	cmp [ebp+0x10], esi
	jz _spx_lpc_30
	mov ecx, [ebp-0x1c]
	jmp _spx_lpc_80
_spx_lpc_20:
	mov eax, [ebp+0x10]
	test eax, eax
	jg _spx_lpc_90
	movaps xmm3, xmm0
_spx_lpc_30:
	movss [ebp-0x2c], xmm3
	fld dword [ebp-0x2c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_spx_lpc_90:
	xor eax, eax
_spx_lpc_100:
	mov edx, [ebp+0x8]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	cmp [ebp+0x10], eax
	jnz _spx_lpc_100
	movaps xmm3, xmm0
	jmp _spx_lpc_30
_spx_lpc_60:
	mov eax, edi
	xor ecx, ecx
	mov edx, [ebp+0x8]
_spx_lpc_110:
	movss xmm1, dword [edx]
	movaps xmm0, xmm2
	mulss xmm0, [eax-0x4]
	addss xmm0, xmm1
	movss [edx], xmm0
	mulss xmm1, xmm2
	addss xmm1, [eax-0x4]
	movss [eax-0x4], xmm1
	add ecx, 0x1
	add edx, 0x4
	sub eax, 0x4
	cmp ebx, ecx
	jnz _spx_lpc_110
	jmp _spx_lpc_120
	nop


;Initialized global or static variables of lpc:
SECTION .data


;Initialized constant data of lpc:
SECTION .rdata


;Zero initialized global or static variables of lpc:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_10_00000000:		dd 0x41200000	; 10
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_double_0_00300000:		dq 0x3f689374bc6a7efa	; 0.003

