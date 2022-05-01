;Imports of com_pack:
	extern _Z15Vec3NormalizeToPKfPf

;Exports of com_pack:
	global _GLOBAL__I__Z15Vec3PackUnitVecPKf
	global _Z15Vec3PackUnitVecPKf
	global _Z16Vec3PackNormAxisPA3_KfPA3_f
	global _Z17Vec2PackTexCoordsPKf
	global _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	global _Z19Vec2UnpackTexCoords15PackedTexCoordsPf


SECTION .text


;global constructors keyed to Vec3PackUnitVec(float const*)
_GLOBAL__I__Z15Vec3PackUnitVecPKf:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;Vec3PackUnitVec(float const*)
_Z15Vec3PackUnitVecPKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov dword [ebp-0x1c], 0x0
	mov byte [ebp-0x1d], 0x0
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x4c], xmm0
	movss xmm1, dword [ebp-0x28]
	movss [ebp-0x48], xmm1
	movss xmm2, dword [ebp-0x24]
	movss [ebp-0x44], xmm2
	movss xmm0, dword [_float_3402823466385288598117041]
	movss [ebp-0x3c], xmm0
	movss [ebp-0x40], xmm0
	movss xmm7, dword [_float_127_00000000]
	movss xmm6, dword [_data16_7fffffff]
	movzx esi, byte [ebp-0x1d]
	jmp _Z15Vec3PackUnitVecPKf_10
_Z15Vec3PackUnitVecPKf_60:
	movss xmm0, dword [_float_1_00000000]
_Z15Vec3PackUnitVecPKf_70:
	mulss xmm4, xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm0
	mulss xmm0, xmm2
	movaps xmm3, xmm5
	subss xmm3, [_float_1_00000000]
	andps xmm3, xmm6
	movss xmm2, dword [_float_0_00100000]
	ucomiss xmm2, xmm3
	jbe _Z15Vec3PackUnitVecPKf_20
	movss xmm2, dword [ebp-0x4c]
	mulss xmm2, xmm4
	mulss xmm1, [ebp-0x48]
	addss xmm2, xmm1
	mulss xmm0, [ebp-0x44]
	addss xmm2, xmm0
	subss xmm2, [_float_1_00000000]
	andps xmm2, xmm6
	movss xmm0, dword [ebp-0x40]
	ucomiss xmm0, xmm2
	ja _Z15Vec3PackUnitVecPKf_30
	ucomiss xmm0, xmm2
	jnz _Z15Vec3PackUnitVecPKf_20
	jp _Z15Vec3PackUnitVecPKf_20
	movss xmm1, dword [ebp-0x3c]
	ucomiss xmm1, xmm3
	jbe _Z15Vec3PackUnitVecPKf_20
_Z15Vec3PackUnitVecPKf_30:
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
	movaps xmm0, xmm3
	addss xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jz _Z15Vec3PackUnitVecPKf_40
_Z15Vec3PackUnitVecPKf_80:
	movss [ebp-0x40], xmm2
	movss [ebp-0x3c], xmm3
_Z15Vec3PackUnitVecPKf_20:
	lea eax, [esi+0x1]
	mov [ebp-0x1d], al
	test al, al
	jz _Z15Vec3PackUnitVecPKf_50
	mov esi, eax
_Z15Vec3PackUnitVecPKf_10:
	movzx eax, byte [ebp-0x1d]
	cvtsi2ss xmm0, eax
	addss xmm0, [_float_192_00000000]
	movss xmm1, dword [_float_32385_00000000]
	divss xmm1, xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm1
	addss xmm0, [_float_127_50000000]
	cvttss2si ecx, xmm0
	mov [ebp-0x20], cl
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm1
	addss xmm0, [_float_127_50000000]
	cvttss2si ebx, xmm0
	mov [ebp-0x1f], bl
	mulss xmm1, [ebp-0x44]
	addss xmm1, [_float_127_50000000]
	cvttss2si edx, xmm1
	mov [ebp-0x1e], dl
	mov eax, esi
	movzx edi, al
	cvtsi2ss xmm0, edi
	addss xmm0, [_float_192_00000000]
	divss xmm0, dword [_float_32385_00000000]
	movzx ecx, cl
	cvtsi2ss xmm4, ecx
	subss xmm4, xmm7
	mulss xmm4, xmm0
	movzx ebx, bl
	cvtsi2ss xmm3, ebx
	subss xmm3, xmm7
	mulss xmm3, xmm0
	movzx edx, dl
	cvtsi2ss xmm2, edx
	subss xmm2, xmm7
	mulss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm5, xmm0
	movaps xmm0, xmm5
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae _Z15Vec3PackUnitVecPKf_60
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm5
	jmp _Z15Vec3PackUnitVecPKf_70
_Z15Vec3PackUnitVecPKf_50:
	mov eax, [ebp-0x1c]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Vec3PackUnitVecPKf_40:
	jp _Z15Vec3PackUnitVecPKf_80
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Vec3PackNormAxis(float const (*) [3], float (*) [3])
_Z16Vec3PackNormAxisPA3_KfPA3_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea esi, [ecx+0xc]
	lea ebx, [edx+0xc]
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	lea esi, [ecx+0x18]
	lea ebx, [edx+0x18]
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;Vec2PackTexCoords(float const*)
_Z17Vec2PackTexCoordsPKf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x8], eax
	mov eax, [ebp-0x8]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17Vec2PackTexCoordsPKf_10
	mov eax, 0x3fff
_Z17Vec2PackTexCoordsPKf_40:
	mov ecx, edx
	or ecx, eax
	mov [ebp-0x8], ebx
	mov eax, [ebp-0x8]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle _Z17Vec2PackTexCoordsPKf_20
	mov eax, 0x3fff
_Z17Vec2PackTexCoordsPKf_60:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	add esp, 0x10
	pop ebx
	pop ebp
	ret
_Z17Vec2PackTexCoordsPKf_10:
	cmp eax, 0xffffc000
	jg _Z17Vec2PackTexCoordsPKf_30
	xor eax, eax
	jmp _Z17Vec2PackTexCoordsPKf_40
_Z17Vec2PackTexCoordsPKf_20:
	cmp eax, 0xffffc000
	jg _Z17Vec2PackTexCoordsPKf_50
	xor eax, eax
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	add esp, 0x10
	pop ebx
	pop ebp
	ret
_Z17Vec2PackTexCoordsPKf_30:
	and eax, 0x3fff
	jmp _Z17Vec2PackTexCoordsPKf_40
_Z17Vec2PackTexCoordsPKf_50:
	and eax, 0x3fff
	jmp _Z17Vec2PackTexCoordsPKf_60


;Vec3UnpackUnitVec(PackedUnitVec, float*)
_Z17Vec3UnpackUnitVec13PackedUnitVecPf:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, edx
	shr eax, 0x18
	cvtsi2ss xmm1, eax
	addss xmm1, [_float_192_00000000]
	divss xmm1, dword [_float_32385_00000000]
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movss xmm2, dword [_float_127_00000000]
	subss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ecx], xmm0
	movzx eax, dh
	cvtsi2ss xmm0, eax
	subss xmm0, xmm2
	mulss xmm0, xmm1
	movss [ecx+0x4], xmm0
	shr edx, 0x10
	movzx edx, dl
	cvtsi2ss xmm0, edx
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss [ecx+0x8], xmm1
	pop ebp
	ret


;Vec2UnpackTexCoords(PackedTexCoords, float*)
_Z19Vec2UnpackTexCoords15PackedTexCoordsPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ecx, ebx
	shr ecx, 0x10
	jnz _Z19Vec2UnpackTexCoords15PackedTexCoordsPf_10
	xor eax, eax
	mov [esi], eax
	add esi, 0x4
	mov ecx, ebx
	and ecx, 0xffff
	jz _Z19Vec2UnpackTexCoords15PackedTexCoordsPf_20
_Z19Vec2UnpackTexCoords15PackedTexCoordsPf_30:
	mov edx, ecx
	shl edx, 0xe
	shl ecx, 0x10
	and ecx, 0x80000000
	mov eax, edx
	and eax, 0xfffc000
	not edx
	and edx, 0x10000000
	sub eax, edx
	sub eax, 0x80000000
	shr eax, 1
	or ecx, eax
	mov [ebp-0xc], ecx
	mov eax, [ebp-0xc]
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19Vec2UnpackTexCoords15PackedTexCoordsPf_10:
	mov edx, ecx
	shl edx, 0xe
	shl ecx, 0x10
	and ecx, 0x80000000
	mov eax, edx
	and eax, 0xfffc000
	not edx
	and edx, 0x10000000
	sub eax, edx
	sub eax, 0x80000000
	shr eax, 1
	or ecx, eax
	mov [ebp-0xc], ecx
	mov eax, [ebp-0xc]
	mov [esi], eax
	add esi, 0x4
	mov ecx, ebx
	and ecx, 0xffff
	jnz _Z19Vec2UnpackTexCoords15PackedTexCoordsPf_30
_Z19Vec2UnpackTexCoords15PackedTexCoordsPf_20:
	xor eax, eax
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;Initialized global or static variables of com_pack:
SECTION .data


;Initialized constant data of com_pack:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of com_pack:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_127_00000000:		dd 0x42fe0000	; 127
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_192_00000000:		dd 0x43400000	; 192
_float_32385_00000000:		dd 0x46fd0200	; 32385
_float_127_50000000:		dd 0x42ff0000	; 127.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

