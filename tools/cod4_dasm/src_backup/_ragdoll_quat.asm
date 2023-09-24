;Imports of ragdoll_quat:
	extern _Z13Vec4NormalizePf
	extern _Z6Q_acosf
	extern sinf

;Exports of ragdoll_quat:
	global _Z15Ragdoll_QuatMulPKfS0_Pf
	global _Z16Ragdoll_QuatLerpPKfS0_fPf
	global _Z19Ragdoll_Mat33ToQuatPA3_KfPf
	global _Z21Ragdoll_QuatNormalizePf
	global _Z23Ragdoll_QuatPointRotatePKfS0_Pf
	global _Z23Ragdoll_QuatToAxisAnglePKfPf
	global _Z24Ragdoll_QuatMulInvSecondPKfS0_Pf


SECTION .text


;Ragdoll_QuatMul(float const*, float const*, float*)
_Z15Ragdoll_QuatMulPKfS0_Pf:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm2, dword [eax+0xc]
	movss xmm3, dword [edx+0xc]
	movaps xmm1, xmm2
	mulss xmm1, [edx]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x4]
	subss xmm1, xmm0
	movss [ecx], xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0x8]
	subss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx]
	subss xmm1, xmm0
	movss [ecx+0x8], xmm1
	mulss xmm2, xmm3
	movss xmm0, dword [eax]
	mulss xmm0, [edx]
	subss xmm2, xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	subss xmm2, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	subss xmm2, xmm0
	movss [ecx+0xc], xmm2
	pop ebp
	ret
	nop


;Ragdoll_QuatLerp(float const*, float const*, float, float*)
_Z16Ragdoll_QuatLerpPKfS0_fPf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movss xmm2, dword [ebp+0x10]
	mov eax, [ebp+0x14]
	movss xmm1, dword [edx]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax], xmm1
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [ecx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	movss xmm1, dword [edx+0xc]
	movss xmm0, dword [ecx+0xc]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0xc], xmm1
	mov [esp], eax
	call _Z13Vec4NormalizePf
	fstp st0
	leave
	ret
	nop
	add [eax], al


;Ragdoll_Mat33ToQuat(float const (*) [3], float*)
_Z19Ragdoll_Mat33ToQuatPA3_KfPf:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movss xmm4, dword [eax]
	lea ecx, [eax+0xc]
	movss xmm1, dword [ecx+0x4]
	lea edx, [eax+0x18]
	movss xmm3, dword [edx+0x8]
	movaps xmm2, xmm4
	addss xmm2, xmm1
	addss xmm2, xmm3
	movss xmm5, dword [_float_1_00000000]
	addss xmm2, xmm5
	cvtss2sd xmm0, xmm2
	ucomisd xmm0, [_double_0_00000100]
	ja _Z19Ragdoll_Mat33ToQuatPA3_KfPf_10
	ucomiss xmm4, xmm1
	ja _Z19Ragdoll_Mat33ToQuatPA3_KfPf_20
_Z19Ragdoll_Mat33ToQuatPA3_KfPf_40:
	ucomiss xmm1, xmm3
	ja _Z19Ragdoll_Mat33ToQuatPA3_KfPf_30
	addss xmm3, xmm5
	subss xmm3, xmm4
	subss xmm3, xmm1
	sqrtss xmm1, xmm3
	addss xmm1, xmm1
	movss xmm0, dword [eax+0x8]
	addss xmm0, [edx]
	divss xmm0, xmm1
	movss [ebx], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [edx+0x4]
	divss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_25000000]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx]
	divss xmm0, xmm1
	movss [ebx+0xc], xmm0
	pop ebx
	pop ebp
	ret
_Z19Ragdoll_Mat33ToQuatPA3_KfPf_20:
	ucomiss xmm4, xmm3
	jbe _Z19Ragdoll_Mat33ToQuatPA3_KfPf_40
	addss xmm4, xmm5
	subss xmm4, xmm1
	subss xmm4, xmm3
	sqrtss xmm1, xmm4
	addss xmm1, xmm1
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_25000000]
	movss [ebx], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [eax+0xc]
	divss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [eax+0x18]
	divss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [edx+0x4]
	divss xmm0, xmm1
	movss [ebx+0xc], xmm0
	pop ebx
	pop ebp
	ret
_Z19Ragdoll_Mat33ToQuatPA3_KfPf_30:
	addss xmm1, xmm5
	subss xmm1, xmm4
	subss xmm1, xmm3
	sqrtss xmm1, xmm1
	addss xmm1, xmm1
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ecx]
	divss xmm0, xmm1
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_25000000]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ecx+0x8]
	addss xmm0, [edx+0x4]
	divss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx]
	divss xmm0, xmm1
	movss [ebx+0xc], xmm0
	pop ebx
	pop ebp
	ret
_Z19Ragdoll_Mat33ToQuatPA3_KfPf_10:
	sqrtss xmm0, xmm2
	movss xmm1, dword [_float_0_50000000]
	divss xmm1, xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [ecx+0x8]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [eax+0x18]
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movss xmm0, dword [eax+0xc]
	subss xmm0, [eax+0x4]
	mulss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movss xmm0, dword [_float_0_25000000]
	divss xmm0, xmm1
	movss [ebx+0xc], xmm0
	pop ebx
	pop ebp
	ret
	nop


;Ragdoll_QuatNormalize(float*)
_Z21Ragdoll_QuatNormalizePf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13Vec4NormalizePf
	fstp st0
	leave
	ret
	nop


;Ragdoll_QuatPointRotate(float const*, float const*, float*)
_Z23Ragdoll_QuatPointRotatePKfS0_Pf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm0, dword [eax]
	movss [ebp-0x18], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x20], xmm0
	movss xmm5, dword [edx]
	movss xmm3, dword [_data16_80000000]
	movaps xmm0, xmm5
	xorps xmm0, xmm3
	movss [ebp-0xc], xmm0
	movss xmm1, dword [edx+0x4]
	movaps xmm0, xmm1
	xorps xmm0, xmm3
	movss [ebp-0x10], xmm0
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm4
	xorps xmm0, xmm3
	movss [ebp-0x14], xmm0
	movss xmm2, dword [edx+0xc]
	movss xmm7, dword [ebp-0xc]
	mulss xmm7, xmm2
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm4
	subss xmm7, xmm0
	movss xmm6, dword [ebp-0x10]
	mulss xmm6, xmm2
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, xmm4
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x14]
	mulss xmm0, xmm5
	subss xmm6, xmm0
	movss xmm3, dword [ebp-0x14]
	mulss xmm3, xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, xmm1
	subss xmm3, xmm0
	mulss xmm2, xmm2
	mulss xmm5, [ebp-0xc]
	subss xmm2, xmm5
	mulss xmm1, [ebp-0x10]
	subss xmm2, xmm1
	mulss xmm4, [ebp-0x14]
	subss xmm2, xmm4
	movss xmm0, dword [ebp-0x18]
	mulss xmm0, xmm2
	pxor xmm4, xmm4
	movaps xmm1, xmm7
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss [ecx], xmm0
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm2
	movaps xmm1, xmm6
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x18]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, xmm7
	subss xmm0, xmm1
	movss [ecx+0x4], xmm0
	mulss xmm2, [ebp-0x20]
	mulss xmm3, xmm4
	addss xmm3, xmm2
	mulss xmm7, [ebp-0x1c]
	movss [ebp-0x1c], xmm7
	movaps xmm0, xmm3
	addss xmm0, xmm7
	movss [ebp-0x20], xmm0
	mulss xmm6, [ebp-0x18]
	movss [ebp-0x18], xmm6
	subss xmm0, xmm6
	movss [ecx+0x8], xmm0
	leave
	ret


;Ragdoll_QuatToAxisAngle(float const*, float*)
_Z23Ragdoll_QuatToAxisAnglePKfPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0xc]
	mov [esp], eax
	call _Z6Q_acosf
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x10]
	movss xmm0, dword [ebp-0x10]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00000100]
	jbe _Z23Ragdoll_QuatToAxisAnglePKfPf_10
	movss xmm0, dword [ebp-0xc]
	addss xmm0, xmm0
	divss xmm0, dword [ebp-0x10]
	movaps xmm1, xmm0
	mulss xmm1, [ebx]
	movss [esi], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [esi+0x4], xmm1
	mulss xmm0, [ebx+0x8]
	movss [esi+0x8], xmm0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z23Ragdoll_QuatToAxisAnglePKfPf_10:
	xor eax, eax
	mov [esi], eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Ragdoll_QuatMulInvSecond(float const*, float const*, float*)
_Z24Ragdoll_QuatMulInvSecondPKfS0_Pf:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm0, dword [_data16_80000000]
	movss xmm3, dword [eax]
	xorps xmm3, xmm0
	movss xmm4, dword [eax+0x4]
	xorps xmm4, xmm0
	movss xmm5, dword [eax+0x8]
	xorps xmm5, xmm0
	movss xmm2, dword [eax+0xc]
	movss xmm6, dword [edx+0xc]
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	movaps xmm1, xmm2
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x8]
	subss xmm0, xmm1
	movss [ecx], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [edx]
	subss xmm0, xmm1
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm6
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x4]
	subss xmm0, xmm1
	movss [ecx+0x8], xmm0
	mulss xmm2, xmm6
	mulss xmm3, [edx]
	subss xmm2, xmm3
	mulss xmm4, [edx+0x4]
	subss xmm2, xmm4
	mulss xmm5, [edx+0x8]
	subss xmm2, xmm5
	movss [ecx+0xc], xmm2
	leave
	ret
	nop
	add [eax], al


;Initialized global or static variables of ragdoll_quat:
SECTION .data


;Initialized constant data of ragdoll_quat:
SECTION .rdata


;Zero initialized global or static variables of ragdoll_quat:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_00000100:		dq 0x3eb0c6f7a0b5ed8d	; 1e-06
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

