;Imports of cm_tracebox:

;Exports of cm_tracebox:
	global _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f
	global _Z14CM_TraceSpherePK12TraceExtentsPKfff
	global _Z19CM_CalcTraceExtentsP12TraceExtents


SECTION .text


;CM_TraceBox(TraceExtents const*, float const*, float const*, float)
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	movss xmm5, dword [ebp+0x14]
	mov ecx, [ebp+0xc]
	pxor xmm6, xmm6
	movss xmm3, dword [_float__1_00000000]
	movaps xmm4, xmm6
	movss xmm7, dword [_float_1_00000000]
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_60:
	mov eax, ebx
	mov edx, 0x1
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_40:
	movss xmm0, dword [ecx+edx*4-0x4]
	movss xmm2, dword [eax]
	subss xmm2, xmm0
	mulss xmm2, xmm3
	movss xmm1, dword [eax+0xc]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	ucomiss xmm2, xmm4
	jbe _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_10
	ucomiss xmm1, xmm4
	ja _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_20
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x18]
	mulss xmm1, xmm3
	ucomiss xmm1, xmm5
	jae _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_20
	movaps xmm0, xmm6
	subss xmm0, xmm1
	ucomiss xmm0, xmm4
	jb _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_30
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_70:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_40
	movaps xmm0, xmm7
	ucomiss xmm3, xmm7
	jz _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_50
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_80:
	mov ecx, esi
	movaps xmm3, xmm0
	jmp _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_60
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_10:
	ucomiss xmm1, xmm4
	jbe _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_70
	mulss xmm2, [eax+0x18]
	mulss xmm2, xmm3
	ucomiss xmm6, xmm2
	jae _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_20
	movaps xmm0, xmm2
	subss xmm0, xmm5
	movaps xmm1, xmm4
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm5
	andps xmm1, xmm0
	movaps xmm5, xmm0
	andnps xmm5, xmm2
	orps xmm5, xmm1
	jmp _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_70
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_30:
	movaps xmm6, xmm1
	jmp _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_70
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_50:
	jp _Z11CM_TraceBoxPK12TraceExtentsPKfS3_f_80
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CM_TraceSphere(TraceExtents const*, float const*, float, float)
_Z14CM_TraceSpherePK12TraceExtentsPKfff:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm2, dword [eax]
	movss xmm7, dword [edx]
	subss xmm7, xmm2
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0xc], xmm0
	movss xmm0, dword [eax+0x8]
	movss xmm3, dword [edx+0x8]
	subss xmm3, xmm0
	lea edx, [eax+0xc]
	movss xmm4, dword [eax+0xc]
	subss xmm4, xmm2
	movss xmm5, dword [edx+0x4]
	subss xmm5, xmm1
	movss xmm6, dword [edx+0x8]
	subss xmm6, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	andnps xmm2, xmm1
	orps xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xc]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm6
	addss xmm0, xmm1
	divss xmm0, xmm2
	movaps xmm1, xmm0
	subss xmm1, [ebp+0x14]
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movss xmm2, dword [ebp+0x14]
	andps xmm2, xmm1
	andnps xmm1, xmm0
	orps xmm1, xmm2
	movss [ebp+0x14], xmm1
	pxor xmm1, xmm1
	subss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jb _Z14CM_TraceSpherePK12TraceExtentsPKfff_10
	movss xmm2, dword [_float__0_00000000]
_Z14CM_TraceSpherePK12TraceExtentsPKfff_20:
	mulss xmm4, xmm2
	addss xmm7, xmm4
	mulss xmm5, xmm2
	addss xmm5, [ebp-0xc]
	movss [ebp-0xc], xmm5
	mulss xmm6, xmm2
	addss xmm3, xmm6
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, xmm0
	mulss xmm7, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm7, xmm1
	mulss xmm3, xmm3
	addss xmm7, xmm3
	xor eax, eax
	ucomiss xmm7, xmm0
	setae al
	leave
	ret
_Z14CM_TraceSpherePK12TraceExtentsPKfff_10:
	movss xmm2, dword [ebp+0x14]
	xorps xmm2, [_data16_80000000]
	jmp _Z14CM_TraceSpherePK12TraceExtentsPKfff_20
	add [eax], al


;CM_CalcTraceExtents(TraceExtents*)
_Z19CM_CalcTraceExtentsP12TraceExtents:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, 0x3
	pxor xmm1, xmm1
	movss xmm2, dword [_float_1_00000000]
_Z19CM_CalcTraceExtentsP12TraceExtents_20:
	movss xmm0, dword [eax]
	subss xmm0, [eax+0xc]
	ucomiss xmm0, xmm1
	jnz _Z19CM_CalcTraceExtentsP12TraceExtents_10
	jp _Z19CM_CalcTraceExtentsP12TraceExtents_10
	movaps xmm0, xmm1
_Z19CM_CalcTraceExtentsP12TraceExtents_30:
	movss [eax+0x18], xmm0
	add eax, 0x4
	sub edx, 0x1
	jnz _Z19CM_CalcTraceExtentsP12TraceExtents_20
	pop ebp
	ret
_Z19CM_CalcTraceExtentsP12TraceExtents_10:
	movaps xmm3, xmm2
	divss xmm3, xmm0
	movaps xmm0, xmm3
	jmp _Z19CM_CalcTraceExtentsP12TraceExtents_30
	nop


;Initialized global or static variables of cm_tracebox:
SECTION .data


;Initialized constant data of cm_tracebox:
SECTION .rdata


;Zero initialized global or static variables of cm_tracebox:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float__1_00000000:		dd 0xbf800000	; -1
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__0_00000000:		dd 0x80000000	; -0

