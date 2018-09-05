;Imports of rotation:
	extern dMessage

;Exports of rotation:
	global _ZZ11dRFrom2AxesE12__FUNCTION__
	global dDQfromW
	global dQMultiply0
	global dQMultiply1
	global dQMultiply2
	global dQMultiply3
	global dQfromR
	global dRFrom2Axes
	global dRSetIdentity
	global dRfromQ


SECTION .text


;dDQfromW
dDQfromW:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm1, dword [eax]
	xorps xmm1, [_data16_80000000]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss xmm2, dword [_float_0_50000000]
	mulss xmm1, xmm2
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx]
	subss xmm0, xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	mulss xmm0, xmm2
	movss [ecx+0x8], xmm0
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	mulss xmm1, xmm2
	movss [ecx+0xc], xmm1
	leave
	ret
	add [eax], al


;dQMultiply0
dQMultiply0:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss [ecx+0xc], xmm1
	pop ebp
	ret
	nop


;dQMultiply1
dQMultiply1:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	pop ebp
	ret
	nop


;dQMultiply2
dQMultiply2:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0x4]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0x8]
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0xc]
	movss xmm1, dword [eax+0xc]
	mulss xmm1, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	leave
	ret


;dQMultiply3
dQMultiply3:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm2, dword [_data16_80000000]
	movss xmm1, dword [eax]
	xorps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	xorps xmm1, xmm2
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0xc]
	subss xmm1, xmm0
	movss [ecx+0x8], xmm1
	movss xmm1, dword [eax]
	xorps xmm1, xmm2
	mulss xmm1, [edx+0xc]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss [ecx+0xc], xmm1
	leave
	ret
	nop


;dQfromR
dQfromR:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	movss xmm4, dword [eax]
	movss xmm3, dword [eax+0x14]
	movaps xmm1, xmm4
	addss xmm1, xmm3
	movss xmm0, dword [eax+0x28]
	movaps xmm2, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jb dQfromR_10
	movss xmm1, dword [_float_1_00000000]
	addss xmm2, xmm1
	sqrtss xmm2, xmm2
	movss xmm3, dword [_float_0_50000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movss [edx], xmm0
	divss xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x24]
	subss xmm0, [eax+0x18]
	mulss xmm0, xmm1
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [eax+0x20]
	mulss xmm0, xmm1
	movss [edx+0x8], xmm0
	movss xmm0, dword [eax+0x10]
	subss xmm0, [eax+0x4]
	mulss xmm1, xmm0
	movss [edx+0xc], xmm1
	pop ebp
	ret
dQfromR_10:
	ucomiss xmm3, xmm4
	ja dQfromR_20
	ucomiss xmm0, xmm4
	ja dQfromR_30
	addss xmm3, xmm0
	subss xmm4, xmm3
	movss xmm1, dword [_float_1_00000000]
	addss xmm4, xmm1
	sqrtss xmm2, xmm4
	movss xmm3, dword [_float_0_50000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movss [edx+0x4], xmm0
	divss xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x4]
	addss xmm0, [eax+0x10]
	mulss xmm0, xmm1
	movss [edx+0x8], xmm0
	movss xmm0, dword [eax+0x20]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm1
	movss [edx+0xc], xmm0
	movss xmm0, dword [eax+0x24]
	subss xmm0, [eax+0x18]
	mulss xmm1, xmm0
	movss [edx], xmm1
	pop ebp
	ret
dQfromR_20:
	ucomiss xmm0, xmm3
	jbe dQfromR_40
dQfromR_30:
	subss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	movss xmm3, dword [_float_0_50000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movss [edx+0xc], xmm0
	divss xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x20]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm1
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x18]
	addss xmm0, [eax+0x24]
	mulss xmm0, xmm1
	movss [edx+0x8], xmm0
	movss xmm0, dword [eax+0x10]
	subss xmm0, [eax+0x4]
	mulss xmm1, xmm0
	movss [edx], xmm1
	pop ebp
	ret
dQfromR_40:
	addss xmm4, xmm0
	subss xmm3, xmm4
	movss xmm1, dword [_float_1_00000000]
	addss xmm3, xmm1
	sqrtss xmm2, xmm3
	movss xmm3, dword [_float_0_50000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movss [edx+0x8], xmm0
	divss xmm1, xmm2
	mulss xmm1, xmm3
	movss xmm0, dword [eax+0x18]
	addss xmm0, [eax+0x24]
	mulss xmm0, xmm1
	movss [edx+0xc], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [eax+0x10]
	mulss xmm0, xmm1
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [eax+0x20]
	mulss xmm1, xmm0
	movss [edx], xmm1
	pop ebp
	ret
	nop


;dRFrom2Axes
dRFrom2Axes:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	movss xmm2, dword [ebp+0xc]
	movss xmm5, dword [ebp+0x10]
	movss xmm7, dword [ebp+0x14]
	movss xmm3, dword [ebp+0x18]
	movss xmm4, dword [ebp+0x1c]
	movss xmm0, dword [ebp+0x20]
	movss [ebp-0x10], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe dRFrom2Axes_10
dRFrom2Axes_30:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm6, xmm2
	mulss xmm6, xmm1
	mulss xmm5, xmm1
	movss [ebp-0xc], xmm5
	movaps xmm5, xmm7
	mulss xmm5, xmm1
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x10]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm0
	subss xmm3, xmm1
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm0, xmm5
	movss xmm7, dword [ebp-0x10]
	subss xmm7, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	sqrtss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	jae dRFrom2Axes_20
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	mulss xmm3, xmm1
	mulss xmm4, xmm1
	mulss xmm1, xmm7
	movss [eax], xmm6
	movss xmm0, dword [ebp-0xc]
	movss [eax+0x10], xmm0
	movss [eax+0x20], xmm5
	movss [eax+0x4], xmm3
	movss [eax+0x14], xmm4
	movss [eax+0x24], xmm1
	movaps xmm2, xmm4
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, xmm1
	subss xmm0, xmm2
	movss [eax+0x8], xmm0
	mulss xmm1, xmm6
	mulss xmm5, xmm3
	subss xmm5, xmm1
	movss [eax+0x18], xmm5
	mulss xmm3, [ebp-0xc]
	mulss xmm6, xmm4
	subss xmm6, xmm3
	movss [eax+0x28], xmm6
	leave
	ret
dRFrom2Axes_10:
	jp dRFrom2Axes_30
dRFrom2Axes_20:
	mov dword [ebp+0x10], _cstring_drfrom2axes
	mov dword [ebp+0xc], _cstring_zero_length_vect
	mov dword [ebp+0x8], 0x2
	leave
	jmp dMessage


;dRSetIdentity
dRSetIdentity:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, 0x3f800000
	mov [eax], ecx
	xor edx, edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov [eax+0xc], edx
	mov [eax+0x10], edx
	mov [eax+0x14], ecx
	mov [eax+0x18], edx
	mov [eax+0x1c], edx
	mov [eax+0x20], edx
	mov [eax+0x24], edx
	mov [eax+0x28], ecx
	mov [eax+0x2c], edx
	pop ebp
	ret


;dRfromQ
dRfromQ:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	movss xmm3, dword [eax+0x4]
	movss xmm0, dword [eax+0x8]
	movaps xmm5, xmm0
	addss xmm5, xmm0
	mulss xmm5, xmm0
	movss xmm0, dword [eax+0xc]
	movaps xmm4, xmm0
	addss xmm4, xmm0
	mulss xmm4, xmm0
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm5
	subss xmm0, xmm4
	movss [edx], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [eax+0x8]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0xc]
	subss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x8], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [eax+0x8]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x10], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm3
	mulss xmm3, xmm0
	subss xmm2, xmm3
	movaps xmm0, xmm2
	subss xmm0, xmm4
	movss [edx+0x14], xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0x4]
	subss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x18], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0x8]
	subss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x20], xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [eax+0xc]
	movss xmm1, dword [eax]
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	addss xmm0, xmm0
	movss [edx+0x24], xmm0
	subss xmm2, xmm5
	movss [edx+0x28], xmm2
	pop ebp
	ret
	nop


;Initialized global or static variables of rotation:
SECTION .data


;Initialized constant data of rotation:
SECTION .rdata


;Zero initialized global or static variables of rotation:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_drfrom2axes:		db "dRFrom2Axes",0
_cstring_zero_length_vect:		db "zero length vector in %s()",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
