;Imports of odemath:
	extern circleCoords.131667
	extern dMessage

;Exports of odemath:
	global _ZZ11dNormalize4E12__FUNCTION__
	global dNormalize3
	global dNormalize4
	global dPlaneSpace


SECTION .text


;dNormalize3
dNormalize3:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	movss xmm4, dword [eax]
	lea edx, [eax+0x4]
	movss xmm5, dword [eax+0x4]
	lea ecx, [eax+0x8]
	movss xmm6, dword [eax+0x8]
	movss xmm0, dword [circleCoords.131667+0x760]
	movaps xmm1, xmm4
	andps xmm1, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm0
	movaps xmm3, xmm6
	andps xmm3, xmm0
	ucomiss xmm2, xmm1
	jbe dNormalize3_10
	ucomiss xmm3, xmm2
	jbe dNormalize3_20
dNormalize3_40:
	movaps xmm2, xmm4
	divss xmm2, xmm3
	divss xmm5, xmm3
	movaps xmm3, xmm5
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movaps xmm5, xmm1
	divss xmm5, xmm0
	movaps xmm0, xmm5
	mulss xmm2, xmm5
	movss [eax], xmm2
	mulss xmm3, xmm5
	movss [edx], xmm3
	ucomiss xmm6, [_float_0_00000000]
	jb dNormalize3_30
	mulss xmm0, xmm1
	movss [ecx], xmm0
dNormalize3_80:
	leave
	ret
dNormalize3_10:
	ucomiss xmm3, xmm1
	ja dNormalize3_40
	pxor xmm7, xmm7
	ucomiss xmm7, xmm1
	jae dNormalize3_50
	movaps xmm3, xmm5
	divss xmm3, xmm1
	movaps xmm2, xmm6
	divss xmm2, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movaps xmm5, xmm1
	divss xmm5, xmm0
	movaps xmm0, xmm5
	ucomiss xmm4, xmm7
	jb dNormalize3_60
dNormalize3_90:
	mulss xmm1, xmm0
	movss [eax], xmm1
	mulss xmm3, xmm0
	movss [edx], xmm3
	mulss xmm2, xmm0
	movss [ecx], xmm2
	leave
	ret
dNormalize3_20:
	movaps xmm0, xmm4
	divss xmm0, xmm2
	movaps xmm3, xmm6
	divss xmm3, xmm2
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	addss xmm1, xmm2
	movss xmm2, dword [_float_1_00000000]
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm4, xmm2
	divss xmm4, xmm1
	movaps xmm1, xmm4
	mulss xmm0, xmm4
	movss [eax], xmm0
	ucomiss xmm5, [_float_0_00000000]
	jb dNormalize3_70
	movaps xmm0, xmm2
dNormalize3_100:
	mulss xmm0, xmm1
	movss [edx], xmm0
	mulss xmm3, xmm1
	movss [ecx], xmm3
	leave
	ret
dNormalize3_30:
	movss xmm1, dword [_float__1_00000000]
	mulss xmm0, xmm1
	movss [ecx], xmm0
	jmp dNormalize3_80
dNormalize3_50:
	mov dword [eax], 0x3f800000
	movss [eax+0x4], xmm7
	movss [eax+0x8], xmm7
	leave
	ret
dNormalize3_60:
	movss xmm1, dword [_float__1_00000000]
	jmp dNormalize3_90
dNormalize3_70:
	movss xmm0, dword [_float__1_00000000]
	jmp dNormalize3_100
	add [eax], al


;dNormalize4
dNormalize4:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss xmm2, dword [ebx+0xc]
	movss xmm3, dword [ebx]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	jbe dNormalize4_10
	sqrtss xmm1, xmm3
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx]
	movss [ebx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	movss [ebx+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x8]
	movss [ebx+0x8], xmm1
	mulss xmm0, [ebx+0xc]
	movss [ebx+0xc], xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
dNormalize4_10:
	mov dword [esp+0x8], _cstring_dnormalize4
	mov dword [esp+0x4], _cstring_vector_has_zero_
	mov dword [esp], 0x2
	movss [ebp-0x18], xmm0
	call dMessage
	mov dword [ebx], 0x3f800000
	movss xmm0, dword [ebp-0x18]
	movss [ebx+0x4], xmm0
	movss [ebx+0x8], xmm0
	movss [ebx+0xc], xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;dPlaneSpace
dPlaneSpace:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm2
	andps xmm0, [circleCoords.131667+0x740]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_70710678]
	jbe dPlaneSpace_10
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm1
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	mov dword [edx], 0x0
	movss xmm3, dword [circleCoords.131667+0x750]
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm3
	mulss xmm0, xmm2
	movss [edx+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movss [edx+0x8], xmm0
	mulss xmm1, xmm2
	movss [ecx], xmm1
	movss xmm0, dword [eax]
	xorps xmm0, xmm3
	mulss xmm0, [edx+0x8]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [eax]
	mulss xmm0, [edx+0x4]
	movss [ecx+0x8], xmm0
	leave
	ret
dPlaneSpace_10:
	movss xmm2, dword [eax]
	movss xmm0, dword [eax+0x4]
	mulss xmm2, xmm2
	movaps xmm1, xmm0
	mulss xmm1, xmm0
	addss xmm2, xmm1
	sqrtss xmm1, xmm2
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm1
	movss xmm1, dword [circleCoords.131667+0x750]
	xorps xmm0, xmm1
	mulss xmm0, xmm3
	movss [edx], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss [edx+0x4], xmm0
	mov dword [edx+0x8], 0x0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	movss [ecx], xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx]
	movss [ecx+0x4], xmm0
	mulss xmm2, xmm3
	movss [ecx+0x8], xmm2
	leave
	ret


;Initialized global or static variables of odemath:
SECTION .data


;Initialized constant data of odemath:
SECTION .rdata


;Zero initialized global or static variables of odemath:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_dnormalize4:		db "dNormalize4",0
_cstring_vector_has_zero_:		db "vector has zero size in %s()",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float__1_00000000:		dd 0xbf800000	; -1
_double_0_70710678:		dq 0x3fe6a09e667f3bcd	; 0.707107

