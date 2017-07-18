;Imports of com_math_anglevectors:
	extern sinf
	extern cosf
	extern AxisToQuat

;Exports of com_math_anglevectors:
	global _GLOBAL__I__Z12AngleVectorsPKfPfS1_S1_
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global AngleVectors
	global AnglesToAxis
	global AnglesToQuat
	global Vec4Normalize


SECTION .text


;AngleVectors(float const*, float*, float*, float*)
AngleVectors:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	cvtss2sd xmm0, [esi+0x4]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x38], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x38]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x24]
	cvtss2sd xmm0, [esi]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x20], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x20]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x28]
	test ebx, ebx
	jz AngleVectors_10
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [ebp-0x28]
	movss [ebx], xmm0
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [ebp-0x28]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebp-0x30]
	xorps xmm0, [g_fltMin__uint4_dup_1+0x20]
	movss [ebp-0x3c], xmm0
	mov eax, [ebp-0x3c]
	mov [ebx+0x8], eax
AngleVectors_10:
	test edi, edi
	jz AngleVectors_20
AngleVectors_50:
	cvtss2sd xmm0, [esi+0x8]
	mulsd xmm0, [_double_0_01745329]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x1c], xmm0
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x34]
	movss xmm0, dword [ebp-0x1c]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x3c]
	movss xmm4, dword [ebp-0x3c]
	test edi, edi
	jz AngleVectors_30
	movss xmm3, dword [ebp-0x34]
	xorps xmm3, [g_fltMin__uint4_dup_1+0x20]
	movss xmm2, dword [ebp-0x30]
	mulss xmm2, xmm3
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x2c]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [edi], xmm0
	mulss xmm2, [ebp-0x2c]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movss [edi+0x4], xmm2
	mulss xmm3, [ebp-0x28]
	movss [edi+0x8], xmm3
AngleVectors_30:
	mov eax, [ebp+0x14]
	test eax, eax
	jz AngleVectors_40
	movss xmm1, dword [ebp-0x30]
	mulss xmm1, xmm4
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm1
	movss xmm2, dword [ebp-0x2c]
	mulss xmm2, [ebp-0x34]
	addss xmm0, xmm2
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	mulss xmm1, [ebp-0x2c]
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [ebp-0x24]
	subss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm4
	movss [eax+0x8], xmm0
AngleVectors_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
AngleVectors_20:
	mov edx, [ebp+0x14]
	test edx, edx
	jnz AngleVectors_50
	jmp AngleVectors_40
	add [eax], al


;AnglesToAxis(float const*, float (*) [3])
AnglesToAxis:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cvtss2sd xmm0, [esi+0x4]
	movsd xmm2, qword [_double_0_01745329]
	mulsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x28], xmm0
	lea edx, [ebp-0x10]
	mov [ebp-0x24], edx
	lea edx, [ebp-0x1c]
	mov [ebp-0x20], edx
	push eax
	push ecx
	fld dword [ebp-0x28]
	fsincos
	mov ecx, [ebp-0x20]
	mov eax, [ebp-0x24]
	fstp dword [ecx]
	fstp dword [eax]
	pop ecx
	pop eax
	cvtss2sd xmm0, [esi]
	mulsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x20], xmm0
	lea edx, [ebp-0xc]
	mov [ebp-0x24], edx
	lea edx, [ebp-0x18]
	mov [ebp-0x28], edx
	push eax
	push ecx
	fld dword [ebp-0x20]
	fsincos
	mov ecx, [ebp-0x28]
	mov eax, [ebp-0x24]
	fstp dword [ecx]
	fstp dword [eax]
	pop ecx
	pop eax
	movss xmm0, dword [ebp-0x18]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x1c]
	movss [ebx], xmm1
	mulss xmm0, [ebp-0x10]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebp-0xc]
	xorps xmm0, [g_fltMin__uint4_dup_1+0x10]
	movss [ebx+0x8], xmm0
	cvtss2sd xmm0, [esi+0x8]
	mulsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x20], xmm0
	lea edx, [ebp-0x2c]
	mov [ebp-0x28], edx
	lea edx, [ebp-0x14]
	mov [ebp-0x24], edx
	push eax
	push ecx
	fld dword [ebp-0x20]
	fsincos
	mov ecx, [ebp-0x24]
	mov eax, [ebp-0x28]
	fstp dword [ecx]
	fstp dword [eax]
	pop ecx
	pop eax
	lea eax, [ebx+0xc]
	movss xmm4, dword [ebp-0x2c]
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0xc]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x1c]
	movss xmm0, dword [ebp-0x10]
	mulss xmm0, [ebp-0x14]
	subss xmm1, xmm0
	movss [ebx+0xc], xmm1
	mulss xmm2, [ebp-0x10]
	movss xmm3, dword [ebp-0x14]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x1c]
	addss xmm2, xmm0
	movss [eax+0x4], xmm2
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x18]
	movss [eax+0x8], xmm0
	lea eax, [ebx+0x18]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0xc]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x1c]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x10]
	addss xmm0, xmm1
	movss [ebx+0x18], xmm0
	mulss xmm2, [ebp-0x10]
	mulss xmm4, [ebp-0x1c]
	subss xmm2, xmm4
	movss [eax+0x4], xmm2
	mulss xmm3, [ebp-0x18]
	movss [eax+0x8], xmm3
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;AnglesToQuat(float const*, float*)
AnglesToQuat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	lea ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AnglesToAxis
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AxisToQuat
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;Vec4Normalize(float*)
Vec4Normalize:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	movss xmm4, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm3, dword [eax+0xc]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	addss xmm0, xmm3
	sqrtss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jp Vec4Normalize_10
	jz Vec4Normalize_20
Vec4Normalize_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm2
	mulss xmm4, xmm0
	movss [eax], xmm4
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	mulss xmm0, [eax+0xc]
	movss [eax+0xc], xmm0
Vec4Normalize_20:
	movss [ebp-0x4], xmm2
	fld dword [ebp-0x4]
	leave
	ret


;Zero initialized global or static variables of com_math_anglevectors:
SECTION .bss
g_keepZ_dup_1: resb 0x10
g_keepX_dup_1: resb 0x10
g_keepZW_dup_1: resb 0x10
g_keepXY_dup_1: resb 0x10
g_keepXYZ_dup_1: resb 0x10
g_keepXYW_dup_1: resb 0x10
g_keepXZW_dup_1: resb 0x10
g_keepYZW_dup_1: resb 0x10
g_selectW_dup_1: resb 0x10
g_selectZ_dup_1: resb 0x10
g_selectY_dup_1: resb 0x10
g_selectX_dup_1: resb 0x10
g_swizzleWWWW_dup_1: resb 0x10
g_swizzleZZZZ_dup_1: resb 0x10
g_swizzleYYYY_dup_1: resb 0x10
g_swizzleXXXX_dup_1: resb 0x10
g_swizzleYZWA_dup_1: resb 0x10
g_swizzleZWAW_dup_1: resb 0x10
g_swizzleWABW_dup_1: resb 0x10
g_swizzleZXYW_dup_1: resb 0x10
g_swizzleYZXW_dup_1: resb 0x10
g_swizzleXYZA_dup_1: resb 0x10
g_swizzleZWCD_dup_1: resb 0x10
g_swizzleXYAB_dup_1: resb 0x10
g_swizzleYBWD_dup_1: resb 0x10
g_swizzleXAZC_dup_1: resb 0x10
g_swizzleYXWZ_dup_1: resb 0x10
g_swizzleXZYW_dup_1: resb 0x10
g_swizzleYXZW_dup_1: resb 0x10
g_swizzleXYZW_dup_1: resb 0x10
g_inc_dup_1: resb 0x10
g_negativeZero_dup_1: resb 0x10
g_fltMin_dup_1: resb 0x80


;Initialized global or static variables of com_math_anglevectors:
SECTION .data


;Initialized constant data of com_math_anglevectors:
SECTION .rdata
g_keepZ__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4_dup_1: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4_dup_1: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4_dup_1: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4_dup_1: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4_dup_1: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4_dup_1: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4_dup_1: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4_dup_1: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4_dup_1: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4_dup_1: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4_dup_1: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4_dup_1: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4_dup_1: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4_dup_1: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4_dup_1: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4_dup_1: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4_dup_1: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4_dup_1: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4_dup_1: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4_dup_1: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1

