;Imports of phys_coll_cylinderbrush:
	extern _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0_
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf
	extern _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	extern _Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1_
	extern _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3_
	extern _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	extern phys_drawCollisionWorld
	extern _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	extern colorCyan
	extern _Z13Phys_DrawPolyPK4PolyPKf
	extern _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf

;Exports of phys_coll_cylinderbrush:
	global _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo
	global _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	global _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f
	global circleCoords.131667
	global _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results
	global _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj
	global _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	global _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results
	global _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results


SECTION .text


;Phys_DistanceOfCylinderFromPlane(float const*, objInfo const*)
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov ebx, [ecx+0x4]
	sub ebx, 0x1
	lea edx, [ecx+0x38]
	movss xmm6, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	movss xmm1, dword [eax+0xc]
	movaps xmm3, xmm6
	mulss xmm3, [ecx+0x38]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x8]
	addss xmm3, xmm0
	subss xmm3, xmm1
	lea eax, [ecx+0x98]
	movaps xmm2, xmm6
	mulss xmm2, [ecx+0x98]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	subss xmm2, xmm1
	pxor xmm7, xmm7
	ucomiss xmm7, xmm3
	ja _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_10
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_30:
	lea eax, [ebx+ebx*2]
	lea eax, [ecx+eax*4+0x40]
	lea edx, [eax+0x4]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x4]
	mulss xmm4, [edx+0x4]
	addss xmm1, xmm4
	mulss xmm5, [edx+0x8]
	addss xmm1, xmm5
	andps xmm1, [_data16_7fffffff]
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm7
	jb _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_20
	movaps xmm4, xmm1
	mulss xmm4, xmm1
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_50:
	mulss xmm1, [ecx+0x94]
	subss xmm3, xmm1
	movaps xmm1, xmm3
	movaps xmm0, xmm2
	subss xmm0, xmm4
	sqrtss xmm0, xmm0
	mulss xmm0, [ecx+0x8c]
	subss xmm1, xmm0
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_40:
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_10:
	ucomiss xmm7, xmm2
	jbe _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_30
	movss xmm1, dword [_float__340282346638528859811704]
	jmp _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_40
_Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_20:
	movaps xmm4, xmm2
	movaps xmm1, xmm2
	jmp _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo_50


;Phys_CylinderFaceTestAxis(float const*, Poly const*, objInfo const*, float const*, float, SeparatingAxisInfo*, unsigned int, unsigned char)
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, edx
	mov ebx, ecx
	mov edx, [ebp+0x8]
	movss [ebp-0x24], xmm0
	mov edi, [ebp+0xc]
	movzx ecx, byte [ebp+0x14]
	mov [ebp-0x25], cl
	mov ecx, [ebx+0x4]
	sub ecx, 0x1
	movss xmm6, dword [edx]
	movss xmm7, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movaps xmm2, xmm6
	xorps xmm2, [_data16_80000000]
	pxor xmm3, xmm3
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	movaps xmm1, xmm6
	andps xmm1, xmm0
	movaps xmm6, xmm0
	andnps xmm6, xmm2
	orps xmm6, xmm1
	movaps xmm1, xmm7
	xorps xmm1, [_data16_80000000]
	movaps xmm2, xmm7
	andps xmm2, xmm0
	movaps xmm7, xmm0
	andnps xmm7, xmm1
	orps xmm7, xmm2
	movss xmm1, dword [ebp-0x20]
	xorps xmm1, [_data16_80000000]
	movss xmm2, dword [ebp-0x20]
	andps xmm2, xmm0
	andnps xmm0, xmm1
	orps xmm0, xmm2
	movss [ebp-0x20], xmm0
	lea ecx, [ecx+ecx*2]
	lea ecx, [ebx+ecx*4+0x40]
	lea eax, [ecx+0x4]
	movaps xmm1, xmm6
	mulss xmm1, [ecx+0x4]
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	andps xmm1, [_data16_7fffffff]
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm3
	jb _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_10
	movaps xmm3, xmm1
	mulss xmm3, xmm1
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_70:
	mulss xmm1, [ebx+0x94]
	movaps xmm0, xmm2
	subss xmm0, xmm3
	sqrtss xmm0, xmm0
	mulss xmm0, [ebx+0x8c]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	lea eax, [ebx+0x38]
	movaps xmm5, xmm6
	mulss xmm5, [ebx+0x38]
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x4]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [eax+0x8]
	addss xmm5, xmm0
	mov ecx, [esi+0x4]
	test ecx, ecx
	jnz _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_20
	movss xmm4, dword [_float_3402823466385288598117041]
	movss xmm3, dword [_float__340282346638528859811704]
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_60:
	ucomiss xmm4, [ebp-0x1c]
	ja _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_30
	movss xmm0, dword [ebp-0x1c]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	ja _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_30
	cmp byte [ebp-0x25], 0x0
	jnz _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_40
	movss xmm2, dword [ebp-0x1c]
	subss xmm2, xmm4
	movss xmm0, dword [ebp-0x24]
	addss xmm0, xmm2
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi]
	ucomiss xmm0, [ebp-0x24]
	jbe _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_40
	movss [edi], xmm2
	lea eax, [edi+0x8]
	movss [edi+0x8], xmm6
	movss [eax+0x4], xmm7
	movss xmm1, dword [ebp-0x20]
	movss [eax+0x8], xmm1
	mov eax, [ebp+0x10]
	mov [edi+0x4], eax
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_20:
	mov eax, [esi]
	xor edx, edx
	movss xmm3, dword [_float__340282346638528859811704]
	movss xmm4, dword [_float_3402823466385288598117041]
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_50:
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20]
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, xmm5
	movaps xmm1, xmm0
	subss xmm1, xmm4
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm4
	andps xmm2, xmm1
	movaps xmm4, xmm1
	andnps xmm4, xmm0
	orps xmm4, xmm2
	movaps xmm1, xmm3
	subss xmm1, xmm0
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x2
	movaps xmm1, xmm2
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
	add edx, 0x1
	add eax, 0xc
	cmp edx, ecx
	jnz _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_50
	jmp _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_60
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_40:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_10:
	movaps xmm3, xmm2
	movaps xmm1, xmm2
	jmp _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh_70


;Phys_ClipLineSegmentAgainstCylinderRadius(float const*, float const*, objInfo const*, float (*) [3])
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov esi, edx
	movss xmm0, dword [eax]
	movss [ebp-0x38], xmm0
	movss xmm3, dword [edx]
	subss xmm3, xmm0
	movss [ebp-0x20], xmm3
	lea edi, [edx+0x4]
	lea eax, [eax+0x4]
	mov [ebp-0x34], eax
	movss xmm7, dword [ebx+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm7
	movss [ebp-0x24], xmm0
	lea eax, [edx+0x8]
	mov [ebp-0x30], eax
	lea edx, [ebx+0x8]
	mov [ebp-0x2c], edx
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	lea eax, [ecx+0x38]
	movss xmm5, dword [ebp-0x38]
	subss xmm5, [ecx+0x38]
	subss xmm7, [eax+0x4]
	subss xmm1, [eax+0x8]
	mov eax, [ecx+0x4]
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4+0x34]
	lea edx, [eax+0x4]
	movss xmm4, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movaps xmm6, xmm1
	mulss xmm6, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm3
	subss xmm6, xmm0
	movss xmm2, dword [eax+0x4]
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	mulss xmm1, xmm2
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mulss xmm7, xmm2
	mulss xmm5, xmm4
	subss xmm7, xmm5
	movss xmm5, dword [ebp-0x28]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	mulss xmm3, [ebp-0x20]
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, xmm2
	mulss xmm4, [ebp-0x20]
	subss xmm1, xmm4
	movaps xmm4, xmm5
	mulss xmm4, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm4, xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm4, xmm0
	ucomiss xmm4, [_float_0_00100000]
	jp _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_10
	jb _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_20
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_10:
	movaps xmm2, xmm6
	mulss xmm2, xmm5
	mulss xmm3, [ebp-0x1c]
	addss xmm2, xmm3
	mulss xmm1, xmm7
	addss xmm2, xmm1
	addss xmm2, xmm2
	movss xmm0, dword [ecx+0x8c]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	mulss xmm6, xmm6
	movss xmm3, dword [ebp-0x1c]
	mulss xmm3, xmm3
	addss xmm6, xmm3
	mulss xmm7, xmm7
	addss xmm6, xmm7
	mulss xmm0, xmm0
	subss xmm6, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [_float__4_00000000]
	mulss xmm6, xmm0
	addss xmm1, xmm6
	pxor xmm5, xmm5
	ucomiss xmm5, xmm1
	ja _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_20
	sqrtss xmm1, xmm1
	movss xmm0, dword [_float_0_50000000]
	divss xmm0, xmm4
	movaps xmm3, xmm2
	xorps xmm3, [_data16_80000000]
	subss xmm3, xmm1
	mulss xmm3, xmm0
	movaps xmm6, xmm1
	subss xmm6, xmm2
	mulss xmm6, xmm0
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm3, xmm2
	jbe _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_30
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_20:
	xor eax, eax
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_30:
	ucomiss xmm5, xmm6
	ja _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_20
	ucomiss xmm3, xmm5
	jbe _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_40
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm3
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x38]
	addss xmm0, [ebp-0x20]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	mulss xmm3, xmm0
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_60:
	ucomiss xmm2, xmm6
	ja _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_50
	mov edx, [ebp+0x8]
	add edx, 0xc
	mov eax, [esi]
	mov ecx, [ebp+0x8]
	mov [ecx+0xc], eax
	mov eax, [edi]
	mov [edx+0x4], eax
	mov ecx, [ebp-0x30]
	mov eax, [ecx]
	mov [edx+0x8], eax
	mov eax, 0x2
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_40:
	movss xmm0, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss [edx], xmm0
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	jmp _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_60
_Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_50:
	mov eax, [ebp+0x8]
	add eax, 0xc
	movss xmm1, dword [ebx]
	movss xmm0, dword [esi]
	subss xmm0, xmm1
	mulss xmm0, xmm6
	addss xmm1, xmm0
	mov edx, [ebp+0x8]
	movss [edx+0xc], xmm1
	mov ecx, [ebp-0x34]
	movss xmm1, dword [ecx]
	movss xmm0, dword [edi]
	subss xmm0, xmm1
	mulss xmm0, xmm6
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	mov edx, [ebp-0x2c]
	movss xmm1, dword [edx]
	mov ecx, [ebp-0x30]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mulss xmm6, xmm0
	addss xmm1, xmm6
	movss [eax+0x8], xmm1
	mov eax, 0x2
	jmp _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f_70


;Phys_ClipCylinderEndcapToPoly(float const*, Poly const*, objInfo const*, int, Results*)
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	lea edi, [ebx+0x8c]
	mov ecx, [ebx+0x4]
	lea eax, [ecx+ecx*2-0x3]
	lea eax, [ebx+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm5, dword [eax+0x4]
	movss xmm3, dword [esi]
	movss xmm6, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xb4], xmm0
	movaps xmm2, xmm5
	mulss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, [esi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [esi+0x8]
	addss xmm2, xmm0
	ucomiss xmm2, [_float_0_00000000]
	jbe _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_10
	movss xmm1, dword [_data16_80000000]
	xorps xmm5, xmm1
	xorps xmm6, xmm1
	xor dword [ebp-0xb4], 0x80000000
	xorps xmm2, xmm1
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_50:
	xorps xmm3, xmm1
	movss [ebp-0x2c], xmm3
	movss xmm0, dword [esi+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x28], xmm0
	movss xmm0, dword [esi+0x8]
	xorps xmm0, xmm1
	movss [ebp-0x24], xmm0
	movaps xmm4, xmm2
	mulss xmm4, xmm5
	addss xmm4, xmm3
	movaps xmm3, xmm2
	mulss xmm3, xmm6
	addss xmm3, [ebp-0x28]
	mulss xmm2, [ebp-0xb4]
	addss xmm2, xmm0
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_0_00000000]
	jae _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_20
	jp _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_20
	mov edx, 0xaaaaaaab
	mov eax, ecx
	mul edx
	shr edx, 1
	lea edx, [edx+edx*2]
	sub ecx, edx
	lea eax, [ecx+ecx*2]
	lea eax, [ebx+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x9c], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0xa0], xmm1
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xa4], xmm0
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_40:
	mulss xmm1, [ebp-0xb4]
	mulss xmm0, xmm6
	subss xmm1, xmm0
	movss [ebp-0xa8], xmm1
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, xmm5
	movss [ebp-0xac], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, [ebp-0xb4]
	movss xmm1, dword [ebp-0xac]
	subss xmm1, xmm0
	movss [ebp-0xac], xmm1
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm6
	movss [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xb0]
	subss xmm1, xmm0
	movss [ebp-0xb0], xmm1
	movss xmm0, dword [ebx+0x94]
	lea eax, [ebx+0x38]
	movaps xmm7, xmm0
	mulss xmm7, xmm5
	addss xmm7, [ebx+0x38]
	mulss xmm6, xmm0
	addss xmm6, [eax+0x4]
	movss xmm4, dword [ebp-0xb4]
	mulss xmm4, xmm0
	addss xmm4, [eax+0x8]
	xor ecx, ecx
	mov edx, circleCoords.131667+0x4
	lea ebx, [ebp-0x8c]
	movss xmm5, dword [edi]
	mov eax, ebx
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_30:
	movaps xmm3, xmm5
	mulss xmm3, [edx]
	movaps xmm1, xmm5
	mulss xmm1, [edx-0x4]
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm1
	addss xmm0, xmm7
	movss xmm2, dword [ebp-0x9c]
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [eax], xmm0
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm1
	addss xmm0, xmm6
	movss xmm2, dword [ebp-0xa0]
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movss [eax+0x4], xmm0
	mulss xmm1, [ebp-0xb0]
	addss xmm1, xmm4
	mulss xmm3, [ebp-0xa4]
	addss xmm1, xmm3
	movss [eax+0x8], xmm1
	add ecx, 0x1
	add eax, 0xc
	add edx, 0x8
	cmp ecx, 0x8
	jnz _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_30
	mov dword [ebp-0x1c], 0x8
	mov [ebp-0x20], ebx
	lea eax, [ebp-0x2c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z31Phys_ProjectFaceOntoFaceAndClipPKfPK4PolyS3_iP7ResultsS0_
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_20:
	sqrtss xmm1, xmm1
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm4, xmm0
	movss [ebp-0x9c], xmm4
	mulss xmm3, xmm0
	movss [ebp-0xa0], xmm3
	mulss xmm2, xmm0
	movss [ebp-0xa4], xmm2
	movaps xmm1, xmm3
	movaps xmm0, xmm2
	jmp _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_40
_Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_10:
	movss xmm1, dword [_data16_80000000]
	jmp _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results_50
	nop


;Phys_TestCircleToEdgeAxis(float const*, Poly const*, float const*, float const*, objInfo const*, float const*, SeparatingAxisInfo*, unsigned int)
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x60], eax
	mov [ebp-0x64], edx
	mov esi, ecx
	mov edi, [ebp+0xc]
	mov ebx, [edi+0x4]
	sub ebx, 0x1
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_00001000]
	jp _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_10
	jb _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_20
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_10:
	lea eax, [ebx+ebx*2]
	lea eax, [edi+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm1, dword [ebp-0x24]
	movss [ebp-0x58], xmm1
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [ebp-0x20]
	movss [ebp-0x50], xmm1
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x4c], xmm0
	movss xmm7, dword [ebp-0x1c]
	movss xmm1, dword [edx+0x8]
	movss [ebp-0x48], xmm1
	movss xmm6, dword [ebp-0x58]
	mulss xmm6, [ebp-0x54]
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [ebp-0x4c]
	addss xmm6, xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm7
	addss xmm6, xmm0
	movaps xmm1, xmm6
	andps xmm1, [_data16_7fffffff]
	movss xmm0, dword [_float_0_00001000]
	ucomiss xmm0, xmm1
	ja _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_20
	mov eax, [ebp-0x60]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [eax+0x4]
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, xmm1
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm0, dword [eax]
	movaps xmm5, xmm7
	mulss xmm5, xmm0
	mulss xmm1, [ebp-0x58]
	subss xmm5, xmm1
	movss xmm3, dword [ebp-0x58]
	mulss xmm3, xmm2
	mulss xmm0, [ebp-0x50]
	subss xmm3, xmm0
	lea eax, [edi+0x38]
	movss xmm0, dword [esi]
	movss [ebp-0x44], xmm0
	movss xmm1, dword [esi+0x4]
	movss [ebp-0x40], xmm1
	movss xmm0, dword [esi+0x8]
	movss [ebp-0x3c], xmm0
	movaps xmm2, xmm4
	mulss xmm2, [edi+0x38]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm4
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3c]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	ucomiss xmm2, xmm0
	jbe _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_30
	mulss xmm4, [ebp-0x54]
	mulss xmm5, [ebp-0x4c]
	addss xmm4, xmm5
	mulss xmm3, [ebp-0x48]
	addss xmm4, xmm3
	pxor xmm1, xmm1
	ucomiss xmm4, xmm1
	jbe _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_30
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_20:
	mov eax, 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_30:
	mov eax, [ebp+0x10]
	movss xmm4, dword [eax]
	movss xmm5, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movaps xmm1, xmm4
	subss xmm1, [ebp-0x44]
	mulss xmm1, [ebp-0x54]
	movaps xmm0, xmm5
	subss xmm0, [ebp-0x40]
	mulss xmm0, [ebp-0x4c]
	addss xmm1, xmm0
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x3c]
	mulss xmm0, [ebp-0x48]
	addss xmm1, xmm0
	divss xmm1, xmm6
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x44]
	subss xmm4, xmm0
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x40]
	subss xmm5, xmm0
	mulss xmm1, xmm7
	addss xmm1, [ebp-0x3c]
	subss xmm2, xmm1
	movss xmm3, dword [ebp-0x48]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm2
	subss xmm3, xmm0
	mulss xmm2, [ebp-0x54]
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm4
	mulss xmm5, [ebp-0x54]
	movss [ebp-0x54], xmm5
	subss xmm1, xmm5
	movaps xmm4, xmm7
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss [ebp-0x30], xmm4
	mulss xmm1, [ebp-0x58]
	mulss xmm7, xmm3
	subss xmm1, xmm7
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm3
	mulss xmm2, [ebp-0x58]
	movss [ebp-0x58], xmm2
	subss xmm0, xmm2
	movss [ebp-0x28], xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm4
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_40
	movss xmm1, dword [_float_1_00000000]
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_50:
	mulss xmm4, xmm1
	movss [ebp-0x30], xmm4
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	mulss xmm1, [ebp-0x28]
	movss [ebp-0x28], xmm1
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	movss xmm0, dword [_float_1_00000000]
	mov ecx, edi
	mov edx, [ebp-0x64]
	mov eax, [ebp-0x60]
	call _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	movzx eax, al
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj_50


;Phys_CollideCylinderWithFace(float const*, Poly const*, objInfo const*, int, Results*)
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x195c
	mov [ebp-0x190c], eax
	mov [ebp-0x1910], edx
	mov edi, ecx
	mov eax, [ecx+0x4]
	sub eax, 0x1
	mov [ebp-0x1904], eax
	lea edx, [ecx+0x38]
	mov [ebp-0x1900], edx
	mov ecx, [ebp-0x190c]
	movss xmm6, dword [ecx]
	lea ebx, [edi+0x3c]
	mov [ebp-0x18fc], ebx
	add ecx, 0x4
	mov [ebp-0x18f8], ecx
	mov eax, [ebp-0x190c]
	movss xmm5, dword [eax+0x4]
	lea edx, [edi+0x40]
	mov [ebp-0x18f4], edx
	add eax, 0x8
	mov [ebp-0x18f0], eax
	mov ecx, [ebp-0x190c]
	movss xmm4, dword [ecx+0x8]
	add ecx, 0xc
	mov [ebp-0x1908], ecx
	mov ebx, [ebp-0x190c]
	movss xmm2, dword [ebx+0xc]
	lea eax, [edi+0x98]
	movaps xmm3, xmm6
	mulss xmm3, [edi+0x98]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	addss xmm3, xmm0
	subss xmm3, xmm2
	movaps xmm0, xmm6
	mulss xmm0, [edi+0x38]
	movaps xmm1, xmm5
	mulss xmm1, [edi+0x3c]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x40]
	addss xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_10
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_30:
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x50], 0x7f7fffff
	movss xmm0, dword [_data16_80000000]
	xorps xmm6, xmm0
	movss [ebp-0x3c], xmm6
	xorps xmm5, xmm0
	movss [ebp-0x38], xmm5
	xorps xmm4, xmm0
	movss [ebp-0x34], xmm4
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	pxor xmm0, xmm0
	mov ecx, edi
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	test al, al
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_20
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40:
	add esp, 0x195c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_10:
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_30
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_30
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_20:
	mov ecx, [ebp-0x1904]
	lea eax, [ecx+ecx*2]
	lea eax, [edi+eax*4+0x44]
	mov [ebp-0x18ec], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	lea ebx, [ebp-0x50]
	mov [esp+0x4], ebx
	mov [esp], eax
	pxor xmm0, xmm0
	mov ecx, edi
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	test al, al
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	mov eax, [ebp-0x1910]
	mov eax, [eax+0x4]
	mov [ebp-0x1928], eax
	test eax, eax
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_50
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_280:
	mov edx, [ebp-0x18ec]
	add edx, 0x4
	mov [ebp-0x18e8], edx
	mov ecx, [ebp-0x18ec]
	add ecx, 0x8
	mov [ebp-0x18e4], ecx
	mov ebx, [ebp-0x190c]
	movss xmm0, dword [ebx]
	movss [ebp-0x1914], xmm0
	mov eax, [ebp-0x18ec]
	mulss xmm0, [eax]
	mov edx, [ebp-0x18f8]
	movss xmm7, dword [edx]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	mov ecx, [ebp-0x18f0]
	movss xmm5, dword [ecx]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_02000000]
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_60
	mov ebx, [ebp-0x1928]
	add ebx, 0x3
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_300:
	mov eax, [ebp-0x1910]
	mov esi, [eax+0x4]
	test esi, esi
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_70
	mov dword [ebp-0x1880], 0x0
	xor esi, esi
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_80
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_100:
	add ebx, 0x1
	add dword [ebp-0x1880], 0x1
	add esi, 0xc
	mov eax, [ebp-0x1880]
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], eax
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_70
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_80:
	mov eax, esi
	mov edx, [ebp-0x1910]
	add eax, [edx]
	movss xmm2, dword [eax]
	mov ecx, [ebp-0x1900]
	subss xmm2, [ecx]
	movss xmm3, dword [eax+0x4]
	mov edx, [ebp-0x18fc]
	subss xmm3, [edx]
	movss xmm4, dword [eax+0x8]
	mov ecx, [ebp-0x18f4]
	subss xmm4, [ecx]
	mov eax, [ebp-0x18ec]
	movss xmm5, dword [eax]
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movaps xmm1, xmm3
	mov edx, [ebp-0x18e8]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov ecx, [ebp-0x18e4]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	mulss xmm5, xmm0
	addss xmm5, xmm2
	movss [ebp-0x3c], xmm5
	movaps xmm1, xmm0
	mulss xmm1, [edx]
	addss xmm1, xmm3
	movss [ebp-0x38], xmm1
	mulss xmm0, [ecx]
	addss xmm0, xmm4
	movss [ebp-0x34], xmm0
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_90
	movss xmm1, dword [_float_1_00000000]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_250:
	mulss xmm5, xmm1
	movss [ebp-0x3c], xmm5
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	ucomiss xmm2, [_float_0_00001000]
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_100
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	pxor xmm0, xmm0
	mov ecx, edi
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	test al, al
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_100
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_60:
	mov ebx, [ebp-0x1910]
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_110
	mov ebx, 0x3
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_70:
	movss xmm1, dword [edi+0x94]
	movaps xmm0, xmm1
	mov edx, [ebp-0x18ec]
	mulss xmm0, [edx]
	mov ecx, [ebp-0x1900]
	addss xmm0, [ecx]
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm1
	mov eax, [ebp-0x18e8]
	mulss xmm0, [eax]
	mov edx, [ebp-0x18fc]
	addss xmm0, [edx]
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm1
	mov ecx, [ebp-0x18e4]
	mulss xmm0, [ecx]
	mov eax, [ebp-0x18f4]
	addss xmm0, [eax]
	movss [ebp-0x60], xmm0
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	mov edx, [ebp-0x18ec]
	mulss xmm0, [edx]
	mov ecx, [ebp-0x1900]
	addss xmm0, [ecx]
	movss [ebp-0xc68], xmm0
	movaps xmm0, xmm1
	mov eax, [ebp-0x18e8]
	mulss xmm0, [eax]
	mov edx, [ebp-0x18fc]
	addss xmm0, [edx]
	movss [ebp-0xc64], xmm0
	mov ecx, [ebp-0x18e4]
	mulss xmm1, [ecx]
	mov eax, [ebp-0x18f4]
	addss xmm1, [eax]
	movss [ebp-0xc60], xmm1
	mov edx, [ebp-0x1910]
	mov ecx, [edx+0x4]
	test ecx, ecx
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_120
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_380:
	mov eax, [ebp-0x4c]
	cmp eax, 0x1
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_130
	cmp eax, 0x2
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_140
	lea ebx, [eax-0x3]
	mov [ebp-0x4c], ebx
	mov ecx, [ebp-0x1910]
	mov edx, [ecx+0x4]
	cmp ebx, edx
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_150
	mov eax, ebx
	sub eax, edx
	mov [ebp-0x4c], eax
	cmp eax, edx
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_160
	mov ebx, eax
	sub ebx, edx
	shr ebx, 1
	mov [ebp-0x4c], ebx
	lea eax, [ebx+0x1]
	mov edx, [ebp-0x1910]
	cmp eax, [edx+0x4]
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_170
	lea eax, [eax+eax*2]
	shl eax, 0x2
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_560:
	mov ecx, [ebp-0x1910]
	mov edx, [ecx]
	lea esi, [edx+eax]
	lea eax, [ebx+ebx*2]
	lea eax, [edx+eax*4]
	movss xmm0, dword [esi]
	subss xmm0, [eax]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [eax+0x4]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [eax+0x8]
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0x4c]
	lea eax, [eax+eax*2]
	lea ebx, [edx+eax*4]
	mov eax, [edi+0x4]
	sub eax, 0x1
	mov [ebp-0x18bc], eax
	lea eax, [ebp-0xc68]
	mov [esp+0x4], eax
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp dword [ebp-0x18c4]
	movss xmm0, dword [ebp-0x18c4]
	ucomiss xmm0, [_float_0_00001000]
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_180
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_180:
	movss xmm1, dword [ebp-0xc64]
	movss [ebp-0x1920], xmm1
	movaps xmm3, xmm1
	mulss xmm3, [ebp-0x40]
	movss xmm2, dword [ebp-0xc60]
	movss [ebp-0x1924], xmm2
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x44]
	subss xmm3, xmm0
	movss [ebp-0x3c], xmm3
	mulss xmm2, [ebp-0x48]
	movss xmm0, dword [ebp-0xc68]
	movss [ebp-0x191c], xmm0
	mulss xmm0, [ebp-0x40]
	subss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0x191c]
	mulss xmm0, [ebp-0x44]
	mulss xmm1, [ebp-0x48]
	subss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm2, xmm2
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_190
	movss xmm6, dword [_float_1_00000000]
	movaps xmm2, xmm6
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_610:
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	movss [ebp-0x3c], xmm0
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x38]
	movss [ebp-0x38], xmm1
	mulss xmm2, [ebp-0x34]
	movss [ebp-0x34], xmm2
	lea eax, [ebx+0x4]
	mov [ebp-0x18b8], eax
	lea edx, [ebx+0x8]
	mov [ebp-0x18b4], edx
	mulss xmm0, [ebx]
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm0, xmm2
	movss [ebp-0x30], xmm0
	mov ecx, [ebp-0x18bc]
	lea eax, [ecx+ecx*2]
	lea eax, [edi+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm4, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x1894], xmm0
	movss xmm7, dword [edx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x48]
	movss xmm1, dword [ebp-0x1894]
	mulss xmm1, [ebp-0x44]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x40]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_200
	movss xmm0, dword [edi+0x94]
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	movss [ebp-0x1898], xmm1
	mov eax, [ebp-0x1900]
	addss xmm1, [eax]
	movss [ebp-0x1898], xmm1
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_590:
	movss xmm1, dword [ebp-0x1894]
	mulss xmm1, xmm0
	movss [ebp-0x189c], xmm1
	mov eax, [ebp-0x18fc]
	addss xmm1, [eax]
	movss [ebp-0x189c], xmm1
	mulss xmm0, xmm7
	movss [ebp-0x18a0], xmm0
	mov edx, [ebp-0x18f4]
	addss xmm0, [edx]
	movss [ebp-0x18a0], xmm0
	movss xmm0, dword [edi+0x8c]
	movss [ebp-0x18a4], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0x18b0], xmm1
	movss xmm2, dword [ebp-0x38]
	movss [ebp-0x18ac], xmm2
	movss xmm0, dword [ebp-0x34]
	movss [ebp-0x18a8], xmm0
	mulss xmm1, xmm4
	movss xmm0, dword [ebp-0x1894]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x18a8]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm1, xmm2
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_210
	xorps xmm4, [_data16_80000000]
	xor dword [ebp-0x1894], 0x80000000
	xorps xmm7, [_data16_80000000]
	xorps xmm1, [_data16_80000000]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_210:
	movaps xmm2, xmm1
	mulss xmm2, xmm4
	subss xmm2, [ebp-0x18b0]
	movss xmm3, dword [ebp-0x1894]
	mulss xmm3, xmm1
	subss xmm3, [ebp-0x18ac]
	movaps xmm5, xmm1
	mulss xmm5, xmm7
	subss xmm5, [ebp-0x18a8]
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_0_00000000]
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_220
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_220:
	sqrtss xmm0, xmm1
	divss xmm6, xmm0
	mulss xmm2, xmm6
	mulss xmm3, xmm6
	mulss xmm5, xmm6
	movss [ebp-0x186c], xmm5
	movss xmm1, dword [ebp-0x30]
	movss xmm6, dword [ebp-0x18b0]
	mulss xmm6, [ebp-0x1898]
	movss xmm0, dword [ebp-0x18ac]
	mulss xmm0, [ebp-0x189c]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x18a8]
	mulss xmm0, [ebp-0x18a0]
	addss xmm6, xmm0
	subss xmm6, xmm1
	movss xmm5, dword [ebp-0x18a4]
	mulss xmm5, xmm2
	addss xmm5, [ebp-0x1898]
	mulss xmm5, [ebp-0x18b0]
	movss xmm0, dword [ebp-0x18a4]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x189c]
	mulss xmm0, [ebp-0x18ac]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x18a4]
	mulss xmm0, [ebp-0x186c]
	addss xmm0, [ebp-0x18a0]
	mulss xmm0, [ebp-0x18a8]
	addss xmm5, xmm0
	subss xmm5, xmm1
	movaps xmm0, xmm3
	mulss xmm0, xmm7
	movss [ebp-0x188c], xmm0
	movss xmm0, dword [ebp-0x186c]
	mulss xmm0, [ebp-0x1894]
	movss xmm1, dword [ebp-0x188c]
	subss xmm1, xmm0
	movss [ebp-0x188c], xmm1
	movss xmm0, dword [ebp-0x186c]
	mulss xmm0, xmm4
	mulss xmm7, xmm2
	subss xmm0, xmm7
	movss [ebp-0x1890], xmm0
	movss xmm7, dword [ebp-0x1894]
	mulss xmm7, xmm2
	mulss xmm4, xmm3
	subss xmm7, xmm4
	ucomiss xmm6, xmm5
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	movss xmm4, dword [ebp-0x18a4]
	mulss xmm4, xmm6
	subss xmm6, xmm5
	divss xmm4, xmm6
	movss xmm1, dword [ebp-0x18a4]
	mulss xmm1, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	sqrtss xmm1, xmm1
	mulss xmm2, xmm4
	addss xmm2, [ebp-0x1898]
	mulss xmm3, xmm4
	addss xmm3, [ebp-0x189c]
	mulss xmm4, [ebp-0x186c]
	addss xmm4, [ebp-0x18a0]
	movss xmm0, dword [ebp-0x188c]
	mulss xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x1890]
	mulss xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, xmm4
	movss [ebp-0x60], xmm0
	xorps xmm1, [_data16_80000000]
	movss xmm0, dword [ebp-0x188c]
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss [ebp-0x5c], xmm2
	lea edi, [ebp-0x5c]
	movss xmm2, dword [ebp-0x1890]
	mulss xmm2, xmm1
	addss xmm3, xmm2
	movss [ebp-0x58], xmm3
	mulss xmm7, xmm1
	addss xmm4, xmm7
	movss [ebp-0x54], xmm4
	movss xmm0, dword [ebx]
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x18c0], xmm0
	mov eax, [ebp-0x18b8]
	movss xmm0, dword [eax]
	mulss xmm0, [ebp-0x44]
	addss xmm0, [ebp-0x18c0]
	movss [ebp-0x18c0], xmm0
	mov edx, [ebp-0x18b4]
	movss xmm0, dword [edx]
	mulss xmm0, [ebp-0x40]
	addss xmm0, [ebp-0x18c0]
	movss [ebp-0x18c0], xmm0
	movss xmm0, dword [ebp-0x191c]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0x1920]
	movss [ebp-0x38], xmm1
	movss xmm2, dword [ebp-0x1924]
	movss [ebp-0x34], xmm2
	movss xmm1, dword [esi]
	mulss xmm1, xmm0
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mulss xmm2, [esi+0x8]
	addss xmm1, xmm2
	movss [ebp-0x30], xmm1
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea edx, [ebp-0x68]
	mov [esp], edx
	call _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf
	test eax, eax
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	movss xmm0, dword [ebp-0xc68]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xc64]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x38], xmm0
	movss xmm2, dword [ebp-0xc60]
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x34], xmm2
	movss xmm1, dword [ebx]
	mulss xmm1, [ebp-0x3c]
	mov ecx, [ebp-0x18b8]
	movss xmm0, dword [ecx]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	mov ebx, [ebp-0x18b4]
	mulss xmm2, [ebx]
	addss xmm1, xmm2
	movss [ebp-0x30], xmm1
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea edx, [ebp-0x68]
	mov [esp], edx
	call _Z32Phys_ClipLineSegmentAgainstPlanePfS_PKf
	test eax, eax
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	xor esi, esi
	lea edi, [ebp-0x48]
	lea ebx, [ebp-0x68]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_240:
	movss xmm1, dword [ebx]
	mulss xmm1, [ebp-0x48]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [ebp-0x44]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	subss xmm1, [ebp-0x18c0]
	ucomiss xmm1, [_float_0_00000000]
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_230
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	movss [esp+0x4], xmm1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_230:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x2
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_240
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_90:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_250
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_50:
	xor edx, edx
	mov esi, 0xc
	mov ecx, [ebp-0x1910]
	mov ecx, [ecx]
	mov [ebp-0x1918], ecx
	mov ebx, ecx
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_260
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_270:
	mov edx, [ebp-0x193c]
	mov ebx, [ebp-0x1918]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_260:
	lea ecx, [edx+0x1]
	mov [ebp-0x193c], ecx
	xor eax, eax
	cmp [ebp-0x1928], ecx
	cmovnz eax, esi
	lea edx, [edx+edx*2]
	lea edx, [ebp+edx*4-0x1868]
	add eax, [ebp-0x1918]
	lea ecx, [esi+ebx-0xc]
	movss xmm0, dword [eax]
	subss xmm0, [ecx]
	movss [edx], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ecx+0x8]
	movss [edx+0x8], xmm0
	add esi, 0xc
	mov eax, [ebp-0x1928]
	cmp [ebp-0x193c], eax
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_270
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_280
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_110:
	xor esi, esi
	mov ebx, 0x3
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_290
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_330:
	add esi, 0x1
	add ebx, 0x1
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], esi
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_300
	mov edx, [ebp-0x190c]
	movss xmm0, dword [edx]
	movss [ebp-0x1914], xmm0
	mov eax, [ebp-0x18f8]
	movss xmm7, dword [eax]
	mov edx, [ebp-0x18f0]
	movss xmm5, dword [edx]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_290:
	lea eax, [esi+esi*2]
	lea eax, [ebp+eax*4-0x1868]
	mov ecx, [ebp-0x18e8]
	movss xmm4, dword [ecx]
	mulss xmm4, [eax+0x8]
	mov edx, [ebp-0x18e4]
	movss xmm0, dword [edx]
	mulss xmm0, [eax+0x4]
	subss xmm4, xmm0
	movss [ebp-0x3c], xmm4
	movss xmm3, dword [edx]
	mulss xmm3, [eax]
	mov ecx, [ebp-0x18ec]
	movss xmm0, dword [ecx]
	mulss xmm0, [eax+0x8]
	subss xmm3, xmm0
	movss [ebp-0x38], xmm3
	movss xmm2, dword [ecx]
	mulss xmm2, [eax+0x4]
	mov edx, [ebp-0x18e8]
	movss xmm0, dword [edx]
	mulss xmm0, [eax]
	subss xmm2, xmm0
	movss [ebp-0x34], xmm2
	movaps xmm0, xmm4
	mov ecx, [ebp-0x190c]
	mulss xmm0, [ecx]
	movaps xmm1, xmm3
	mov edx, [ebp-0x18f8]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mov ecx, [ebp-0x18f0]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_310
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x3c], xmm4
	xorps xmm3, [_data16_80000000]
	movss [ebp-0x38], xmm3
	xorps xmm2, [_data16_80000000]
	movss [ebp-0x34], xmm2
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_310:
	movaps xmm3, xmm4
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movaps xmm4, xmm1
	mulss xmm4, xmm5
	movaps xmm0, xmm2
	mulss xmm0, xmm7
	subss xmm4, xmm0
	movss xmm0, dword [eax]
	movss xmm6, dword [ebp-0x1914]
	mulss xmm6, xmm2
	mulss xmm5, xmm0
	subss xmm6, xmm5
	movaps xmm5, xmm7
	mulss xmm5, xmm0
	mulss xmm1, [ebp-0x1914]
	subss xmm5, xmm1
	movss xmm0, dword [ebp-0x38]
	movss xmm2, dword [ebp-0x34]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm1, xmm1
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_320
	movss xmm2, dword [_float_1_00000000]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_350:
	mulss xmm3, xmm2
	movss [ebp-0x3c], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	ucomiss xmm1, [_float_0_00001000]
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_330
	mulss xmm4, xmm3
	mulss xmm6, [ebp-0x38]
	addss xmm4, xmm6
	mulss xmm5, xmm0
	addss xmm4, xmm5
	pxor xmm0, xmm0
	xor eax, eax
	ucomiss xmm0, xmm4
	seta al
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	lea eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [ebp-0x3c]
	mov [esp], edx
	mov ecx, edi
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_CylinderFaceTestAxisPKfPK4PolyPK7objInfoS0_fP18SeparatingAxisInfojh
	test al, al
	jnz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_330
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_150:
	sub eax, 0x2
	cmp edx, eax
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_340
	lea eax, [eax+eax*2]
	shl eax, 0x2
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_550:
	mov edx, [ebp-0x1910]
	mov ecx, [edx]
	lea edx, [ecx+eax]
	lea eax, [ebx+ebx*2]
	lea eax, [ecx+eax*4]
	movss xmm0, dword [edx]
	subss xmm0, [eax]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, [eax+0x4]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, [eax+0x8]
	movss [ebp-0x24], xmm0
	mov esi, [ebp-0x50]
	mov ebx, [ebp-0x4c]
	lea ebx, [ebx+ebx*2]
	lea ebx, [ecx+ebx*4]
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x1904]
	lea eax, [ecx+ecx*2]
	lea eax, [edi+eax*4+0x44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1900]
	mov [esp], eax
	call _Z25ClosestApproachOfTwoLinesPKfS0_S0_S0_PfS1_
	movss xmm1, dword [ebp-0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebx]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x28]
	addss xmm0, [ebx+0x4]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, [ebx+0x8]
	movss [ebp-0x34], xmm1
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x3c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_320:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_350
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_120:
	mov dword [ebp-0x187c], 0x0
	mov dword [ebp-0x1884], 0x0
	lea ecx, [ebp-0x1868]
	mov [ebp-0x192c], ecx
	mov eax, [ebp-0x1910]
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_360
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_370:
	mov eax, ecx
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_360:
	lea esi, [ebx+0x1]
	mov ecx, [ebp-0x1884]
	add ecx, [eax]
	mov [esp+0x10], ebx
	lea edx, [ebp-0x50]
	mov [esp+0xc], edx
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x192c]
	mov [esp], edx
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj
	test al, al
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	add ebx, 0x2
	mov ecx, [ebp-0x1884]
	mov eax, [ebp-0x1910]
	add ecx, [eax]
	mov [esp+0x10], esi
	lea edx, [ebp-0x50]
	mov [esp+0xc], edx
	lea eax, [ebp-0xc68]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x192c]
	mov [esp], edx
	mov edx, [ebp-0x1910]
	mov eax, [ebp-0x190c]
	call _Z25Phys_TestCircleToEdgeAxisPKfPK4PolyS0_S0_PK7objInfoS0_P18SeparatingAxisInfoj
	test al, al
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	add dword [ebp-0x187c], 0x1
	add dword [ebp-0x192c], 0xc
	add dword [ebp-0x1884], 0xc
	mov eax, [ebp-0x187c]
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], eax
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_370
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_380
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_130:
	mov edx, [ebp-0x1904]
	lea eax, [edx+edx*2]
	lea eax, [edi+eax*4+0x40]
	lea edx, [eax+0x4]
	movss xmm4, dword [ebp-0x48]
	movss xmm6, dword [ebp-0x44]
	movss xmm7, dword [ebp-0x40]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm6
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_90000000]
	jae _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_390
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_390
	mov eax, [edi+0x4]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4+0x34]
	lea ebx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x18e0], xmm0
	lea ecx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	lea edx, [eax+0xc]
	movss xmm3, dword [eax+0xc]
	mulss xmm0, xmm4
	movaps xmm1, xmm6
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm3
	addss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movss xmm5, dword [ebp-0x18e0]
	mulss xmm5, xmm0
	addss xmm5, xmm4
	mulss xmm2, xmm0
	addss xmm2, xmm6
	movaps xmm4, xmm0
	mulss xmm4, xmm3
	addss xmm4, xmm7
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm6, xmm0
	movaps xmm0, xmm6
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_400
	movss xmm0, dword [_float_1_00000000]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_570:
	mulss xmm5, xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	mulss xmm4, xmm0
	cvtss2sd xmm0, xmm6
	ucomisd xmm0, [_double_0_00001000]
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_410
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_410:
	movss xmm0, dword [edi+0x8c]
	movaps xmm2, xmm5
	mulss xmm2, xmm0
	mov eax, [ebp-0x1900]
	addss xmm2, [eax]
	movaps xmm3, xmm1
	mulss xmm3, xmm0
	mov eax, [ebp-0x18fc]
	addss xmm3, [eax]
	mulss xmm4, xmm0
	mov eax, [ebp-0x18f4]
	addss xmm4, [eax]
	movss xmm1, dword [edi+0x94]
	movss xmm0, dword [ebp-0x18e0]
	mulss xmm0, xmm1
	movss [ebp-0x18e0], xmm0
	addss xmm0, xmm2
	movss [ebp-0xc68], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	addss xmm0, xmm3
	movss [ebp-0xc64], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	addss xmm0, xmm4
	movss [ebp-0xc60], xmm0
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	mulss xmm0, [ebx]
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	addss xmm3, xmm0
	movss [ebp-0x38], xmm3
	mulss xmm1, [edx]
	addss xmm4, xmm1
	movss [ebp-0x34], xmm4
	lea eax, [ebp-0x3c]
	mov [esp+0x10], eax
	lea ebx, [ebp-0xc68]
	mov [esp+0xc], ebx
	mov edx, [ebp-0x1910]
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x190c]
	mov [esp], ecx
	call _Z31Phys_ClipLineSegmentAgainstPolyPKfPA3_S_jPfS3_
	test eax, eax
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	movss xmm0, dword [ebp-0xc68]
	mov eax, [ebp-0x190c]
	mulss xmm0, [eax]
	movss xmm1, dword [ebp-0xc64]
	mov edx, [ebp-0x18f8]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xc60]
	mov ecx, [ebp-0x18f0]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	mov eax, [ebp-0x1908]
	movss xmm2, dword [eax]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	movaps xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_420
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm0
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	mov ecx, [ebp-0x1908]
	movss xmm2, dword [ecx]
	mov eax, [ebp-0x18f8]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_600:
	movss xmm0, dword [ebp-0x3c]
	mov ebx, [ebp-0x190c]
	mulss xmm0, [ebx]
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x34]
	mov edx, [ebp-0x18f0]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	lea edx, [ebp-0x3c]
	mov [esp+0xc], edx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm2
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_140:
	mov eax, [edi+0x4]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4+0x34]
	lea ebx, [eax+0x4]
	mov [ebp-0x18d4], ebx
	movss xmm5, dword [eax+0x4]
	mov edx, [ebp-0x1900]
	movss xmm4, dword [edx]
	lea ecx, [eax+0x8]
	mov [ebp-0x18d0], ecx
	movss xmm7, dword [eax+0x8]
	mov ebx, [ebp-0x18fc]
	movss xmm1, dword [ebx]
	lea edx, [eax+0xc]
	mov [ebp-0x18cc], edx
	movss xmm3, dword [eax+0xc]
	mov ecx, [ebp-0x18f4]
	movss xmm2, dword [ecx]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss [ebp-0x18d8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x18d8]
	movss [ebp-0x18d8], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x18d8]
	movss [ebp-0x18d8], xmm0
	movss xmm0, dword [edi+0x8c]
	mulss xmm0, xmm0
	movss [ebp-0x18c8], xmm0
	mov eax, [ebp-0x1910]
	mov ecx, [eax+0x4]
	lea esi, [ecx-0x1]
	lea eax, [ecx+ecx*2]
	mov edx, [ebp-0x1910]
	mov edx, [edx]
	mov [ebp-0x1918], edx
	lea eax, [edx+eax*4]
	lea edx, [eax-0xc]
	movss xmm6, dword [eax-0xc]
	subss xmm6, xmm4
	movss xmm4, dword [edx+0x4]
	subss xmm4, xmm1
	movss xmm1, dword [edx+0x8]
	subss xmm1, xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	movaps xmm2, xmm3
	mulss xmm2, xmm4
	subss xmm0, xmm2
	mulss xmm3, xmm6
	mulss xmm1, xmm5
	subss xmm3, xmm1
	mulss xmm5, xmm4
	mulss xmm7, xmm6
	subss xmm5, xmm7
	mulss xmm0, xmm0
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm5, xmm5
	addss xmm0, xmm5
	movss xmm1, dword [ebp-0x18c8]
	ucomiss xmm1, xmm0
	setae dl
	test ecx, ecx
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	mov dword [ebp-0x1878], 0x0
	mov dword [ebp-0x1870], 0x0
	mov dword [ebp-0x1888], 0x0
	mov ebx, [ebp-0x1918]
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_430
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_480:
	cmp byte [ebp-0x1871], 0x0
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_440
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x1918]
	lea eax, [edx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f
	lea ebx, [ebp-0xc68]
	mov ecx, [ebp-0x1870]
	lea edx, [ecx+ecx*2]
	lea edx, [ebx+edx*4]
	mov eax, [ebp-0x68]
	mov [edx], eax
	mov eax, [ebp-0x64]
	mov [edx+0x4], eax
	mov eax, [ebp-0x60]
	mov [edx+0x8], eax
	mov eax, ecx
	add eax, 0x1
	cmp eax, 0xff
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_450
	lea ecx, [eax+eax*2]
	lea ecx, [ebx+ecx*4]
	mov edx, [ebp-0x1888]
	mov ebx, [ebp-0x1910]
	add edx, [ebx]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add dword [ebp-0x1870], 0x2
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_500:
	mov eax, [ebp-0x1878]
	add eax, 0x1
	mov ebx, [ebp-0x1910]
	cmp [ebx+0x4], eax
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_460
	add dword [ebp-0x1888], 0xc
	cmp dword [ebp-0x1870], 0xff
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_470
	mov esi, [ebp-0x1878]
	movzx edx, byte [ebp-0x1871]
	mov [ebp-0x1878], eax
	mov eax, [ebp-0x1910]
	mov eax, [eax]
	mov [ebp-0x1918], eax
	mov ebx, eax
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_430:
	add ebx, [ebp-0x1888]
	movss xmm7, dword [ebx]
	movaps xmm5, xmm7
	mov ecx, [ebp-0x1900]
	subss xmm5, [ecx]
	movss xmm3, dword [ebx+0x4]
	mov eax, [ebp-0x18fc]
	subss xmm3, [eax]
	movss xmm4, dword [ebx+0x8]
	mov ecx, [ebp-0x18f4]
	subss xmm4, [ecx]
	mov eax, [ebp-0x18d0]
	movss xmm6, dword [eax]
	mov ecx, [ebp-0x18cc]
	movss xmm0, dword [ecx]
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movaps xmm2, xmm3
	mulss xmm2, xmm0
	subss xmm1, xmm2
	mov eax, [ebp-0x18d4]
	movss xmm2, dword [eax]
	mulss xmm0, xmm5
	mulss xmm4, xmm2
	subss xmm0, xmm4
	mulss xmm3, xmm2
	mulss xmm5, xmm6
	subss xmm3, xmm5
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm3, xmm3
	addss xmm1, xmm3
	movss xmm0, dword [ebp-0x18c8]
	ucomiss xmm0, xmm1
	setae byte [ebp-0x1871]
	test dl, dl
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_480
	cmp byte [ebp-0x1871], 0x0
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_490
	mov edx, [ebp-0x1870]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xc68]
	movss [eax], xmm7
	mov edx, [ebx+0x4]
	mov [eax+0x4], edx
	mov edx, [ebx+0x8]
	mov [eax+0x8], edx
	add dword [ebp-0x1870], 0x1
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_500
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_440:
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x1918]
	lea eax, [edx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f
	test eax, eax
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_500
	lea ebx, [ebp-0xc68]
	mov ecx, [ebp-0x1870]
	lea edx, [ecx+ecx*2]
	lea edx, [ebx+edx*4]
	mov eax, [ebp-0x68]
	mov [edx], eax
	mov eax, [ebp-0x64]
	mov [edx+0x4], eax
	mov eax, [ebp-0x60]
	mov [edx+0x8], eax
	mov eax, ecx
	add eax, 0x1
	cmp eax, 0xff
	ja _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_450
	lea edx, [eax+eax*2]
	lea edx, [ebx+edx*4]
	mov eax, [ebp-0x5c]
	mov [edx], eax
	mov eax, [ebp-0x58]
	mov [edx+0x4], eax
	mov eax, [ebp-0x54]
	mov [edx+0x8], eax
	add ecx, 0x2
	mov [ebp-0x1870], ecx
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_500
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_390:
	mov ebx, [ebp+0xc]
	mov [esp+0x10], ebx
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp-0x1910]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x190c]
	mov [esp], ecx
	call _Z29Phys_ClipCylinderEndcapToPolyPKfPK4PolyPK7objInfoiP7Results
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_490:
	lea eax, [esi+esi*2]
	mov ecx, [ebp-0x1918]
	lea eax, [ecx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call _Z41Phys_ClipLineSegmentAgainstCylinderRadiusPKfS0_PK7objInfoPA3_f
	mov ebx, [ebp-0x1870]
	lea edx, [ebx+ebx*2]
	lea edx, [ebp+edx*4-0xc68]
	mov eax, [ebp-0x5c]
	mov [edx], eax
	mov eax, [ebp-0x58]
	mov [edx+0x4], eax
	mov eax, [ebp-0x54]
	mov [edx+0x8], eax
	add ebx, 0x1
	mov [ebp-0x1870], ebx
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_500
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_470:
	mov edx, [ebp-0x1870]
	mov [ebp-0x18dc], edx
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_580:
	mov edx, [ebp-0x18dc]
	test edx, edx
	jz _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
	xor esi, esi
	lea ebx, [ebp-0xc68]
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_510
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_530:
	add esi, 0x1
	add ebx, 0xc
	cmp [ebp-0x18dc], esi
	jbe _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_510:
	mov edx, [ebp-0x18d4]
	movss xmm4, dword [edx]
	mov ecx, [ebp-0x18d0]
	movss xmm1, dword [ecx]
	mov eax, [ebp-0x18cc]
	movss xmm2, dword [eax]
	movaps xmm3, xmm4
	mulss xmm3, [ebx]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x8]
	addss xmm3, xmm0
	subss xmm3, [ebp-0x18d8]
	movaps xmm0, xmm4
	mov edx, [ebp-0x190c]
	mulss xmm0, [edx]
	mov ecx, [ebp-0x18f8]
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	mov eax, [ebp-0x18f0]
	mulss xmm2, [eax]
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_00000000]
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_520
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_540:
	movss xmm0, dword [edi+0x94]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm3, xmm0
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_530
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x3c], xmm4
	mov edx, [ebp-0x18d0]
	movss xmm0, dword [edx]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x38], xmm0
	mov ecx, [ebp-0x18cc]
	movss xmm0, dword [ecx]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x34], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	addss xmm3, [edi+0x94]
	movss [esp+0x4], xmm3
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_530
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_520:
	jp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_540
	movss xmm0, dword [edi+0x94]
	ucomiss xmm0, xmm3
	jb _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_530
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x18d4]
	mov [esp+0x8], ecx
	subss xmm0, xmm3
	movss [esp+0x4], xmm0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_530
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_160:
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x1910]
	mov edx, [ecx]
	lea eax, [edx+eax*4]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_40
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_340:
	xor eax, eax
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_550
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_170:
	xor eax, eax
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_560
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_400:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm6
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_570
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_460:
	mov eax, [ebp-0x1870]
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_450:
	mov [ebp-0x18dc], eax
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_580
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_200:
	movss xmm0, dword [edi+0x94]
	xorps xmm0, [_data16_80000000]
	movaps xmm2, xmm4
	mulss xmm2, xmm0
	movss [ebp-0x1898], xmm2
	mov eax, [ebp-0x1900]
	addss xmm2, [eax]
	movss [ebp-0x1898], xmm2
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_590
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_420:
	mov eax, edx
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_600
_Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_190:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm2, xmm6
	divss xmm2, xmm1
	jmp _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results_610


;Phys_CollideCylinderWithBrush(cbrush_t const*, objInfo const*, Results*)
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xd7c
	pxor xmm1, xmm1
	movss [ebp-0x40], xmm1
	movss [ebp-0x3c], xmm1
	movss [ebp-0x38], xmm1
	movss [ebp-0x34], xmm1
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	movss [ebp-0xd38], xmm0
	xorps xmm0, [_data16_80000000]
	mov edx, 0xbf800000
	mov [ebp-0x100], edx
	movss [ebp-0xfc], xmm1
	movss [ebp-0xf8], xmm1
	movss [ebp-0xf4], xmm0
	movss xmm0, dword [eax+0x10]
	movss [ebp-0xd44], xmm0
	mov eax, 0x3f800000
	mov [ebp-0xf0], eax
	movss [ebp-0xec], xmm1
	movss [ebp-0xe8], xmm1
	movss [ebp-0xe4], xmm0
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0xd3c], xmm0
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xe0], xmm1
	mov [ebp-0xdc], edx
	movss [ebp-0xd8], xmm1
	movss [ebp-0xd4], xmm0
	movss xmm0, dword [ecx+0x14]
	movss [ebp-0xd48], xmm0
	movss [ebp-0xd0], xmm1
	mov [ebp-0xcc], eax
	movss [ebp-0xc8], xmm1
	movss [ebp-0xc4], xmm0
	movss xmm0, dword [ecx+0x8]
	movss [ebp-0xd40], xmm0
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xc0], xmm1
	movss [ebp-0xbc], xmm1
	mov [ebp-0xb8], edx
	movss [ebp-0xb4], xmm0
	movss xmm0, dword [ecx+0x18]
	movss [ebp-0xd4c], xmm0
	movss [ebp-0xb0], xmm1
	movss [ebp-0xac], xmm1
	mov [ebp-0xa8], eax
	movss [ebp-0xa4], xmm0
	movss xmm0, dword [_float__340282346638528859811704]
	movss [ebp-0xd14], xmm0
	xor esi, esi
	mov dword [ebp-0xd18], 0xffffffff
	lea ebx, [ebp-0x100]
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_30:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0xd68], xmm1
	call _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo
	fstp dword [ebp-0xd1c]
	movss xmm1, dword [ebp-0xd68]
	movss xmm0, dword [ebp-0xd1c]
	ucomiss xmm0, xmm1
	jae _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0x8]
	cmp byte [eax+ecx+0x40], 0x0
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_20
	ucomiss xmm0, [ebp-0xd14]
	jbe _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_20
	mov [ebp-0xd18], esi
	mov eax, [ebx]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x38], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x34], eax
	movss [ebp-0xd14], xmm0
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_20:
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_30
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_40
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_160:
	mov eax, [ebp-0xd18]
	test eax, eax
	js _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
	xor dword [ebp-0xd38], 0x80000000
	mov dword [ebp-0xa0], 0xbf800000
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0x98], 0x0
	movss xmm0, dword [ebp-0xd38]
	movss [ebp-0x94], xmm0
	mov dword [ebp-0x90], 0x3f800000
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x88], 0x0
	movss xmm0, dword [ebp-0xd44]
	movss [ebp-0x84], xmm0
	xor dword [ebp-0xd3c], 0x80000000
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x7c], 0xbf800000
	mov dword [ebp-0x78], 0x0
	movss xmm0, dword [ebp-0xd3c]
	movss [ebp-0x74], xmm0
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x6c], 0x3f800000
	mov dword [ebp-0x68], 0x0
	movss xmm0, dword [ebp-0xd48]
	movss [ebp-0x64], xmm0
	xor dword [ebp-0xd40], 0x80000000
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x58], 0xbf800000
	movss xmm0, dword [ebp-0xd40]
	movss [ebp-0x54], xmm0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x48], 0x3f800000
	movss xmm0, dword [ebp-0xd4c]
	movss [ebp-0x44], xmm0
	lea eax, [ebp-0xd00]
	mov [ebp-0x20], eax
	lea eax, [ebp-0xa0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x100
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov ecx, [ebp-0xd18]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov edx, phys_drawCollisionWorld
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_50
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_180:
	mov eax, [ebp-0xd18]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	lea ebx, [ebp-0x40]
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	mov eax, [ebp+0xc]
	cmp byte [eax+0xa4], 0x0
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
	mov esi, eax
	mov ebx, [ebp+0x8]
	mov edi, 0x1
	mov dword [ebp-0xd0c], 0x0
	mov edx, phys_drawCollisionWorld
	mov [ebp-0xd34], edx
	lea ecx, [ebp-0xa0]
	mov [ebp-0xd50], ecx
	lea eax, [ebp-0x90]
	mov [ebp-0xd54], eax
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_90:
	movss xmm1, dword [esi+0x38]
	movss xmm0, dword [ebx]
	ucomiss xmm0, xmm1
	jbe _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_60
	mov edx, [ebp-0xd18]
	cmp [ebp-0xd0c], edx
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
	lea ecx, [ebp-0xa0]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd0c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_80
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70:
	add esi, 0x4
	add ebx, 0x4
	add edi, 0x2
	add dword [ebp-0xd54], 0x20
	add dword [ebp-0xd0c], 0x2
	add dword [ebp-0xd50], 0x20
	cmp edi, 0x7
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_90
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1c]
	test eax, eax
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
	mov dword [ebp-0xd10], 0x0
	mov esi, 0x6
	xor edi, edi
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_100
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_110:
	add dword [ebp-0xd10], 0x1
	add esi, 0x1
	add edi, 0xc
	mov eax, [ebp-0xd10]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0x1c]
	jae _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_100:
	cmp [ebp-0xd18], esi
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_110
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	mov eax, [eax+edi]
	mov edx, [ebp+0xc]
	add edx, 0x38
	mov ecx, [ebp+0xc]
	movss xmm1, dword [ecx+0x38]
	mulss xmm1, [eax]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jae _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_110
	lea eax, [ebp-0xa0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x100
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_110
	mov eax, phys_drawCollisionWorld
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_120
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_200:
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x20]
	mov edx, [ecx+edi]
	mov eax, [edx]
	mov [ebp-0x30], eax
	mov eax, [edx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ecx+edi]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	lea ebx, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	add dword [ebp-0xd10], 0x1
	add esi, 0x1
	add edi, 0xc
	mov eax, [ebp-0xd10]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0x1c]
	jb _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_100
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10:
	add esp, 0xd7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_60:
	ucomiss xmm1, [ebx+0x10]
	jbe _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
	cmp edi, [ebp-0xd18]
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
	lea ecx, [ebp-0xa0]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
	mov ecx, [ebp-0xd34]
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_130
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_210:
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, [ebp-0xd54]
	call _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_40:
	xor edi, edi
	xor ebx, ebx
	mov edx, [ebp+0x8]
	mov esi, [edx+0x20]
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_140
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_170:
	cmp byte [ebx+esi+0xa], 0x0
	jz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_150
	ucomiss xmm0, [ebp-0xd14]
	jbe _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_150
	lea eax, [edi+0x6]
	mov [ebp-0xd18], eax
	movss xmm0, dword [ebp-0xd20]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0xd24]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xd28]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0xd2c]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xd30]
	movss [ebp-0xd14], xmm0
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_150:
	add edi, 0x1
	add ebx, 0xc
	mov eax, [ebp+0x8]
	cmp [eax+0x1c], edi
	jbe _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_160
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_140:
	mov eax, [ebx+esi]
	movss xmm0, dword [eax]
	movss [ebp-0xd20], xmm0
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0xd24], xmm0
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xd28], xmm0
	movss [ebp-0x28], xmm0
	mov eax, [ebx+esi]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0xd2c], xmm0
	movss [ebp-0x24], xmm0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea edx, [ebp-0x30]
	mov [esp], edx
	movss [ebp-0xd68], xmm1
	call _Z32Phys_DistanceOfCylinderFromPlanePKfPK7objInfo
	fstp dword [ebp-0xd30]
	movss xmm1, dword [ebp-0xd68]
	movss xmm0, dword [ebp-0xd30]
	ucomiss xmm0, xmm1
	jb _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_170
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_10
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_50:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z13Phys_DrawPolyPK4PolyPKf
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_180
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_80:
	mov edx, [ebp-0xd34]
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_190
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_220:
	mov edx, [ebp-0xd0c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, [ebp-0xd50]
	call _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_70
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_120:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Phys_DrawPolyPK4PolyPKf
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_200
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_130:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z13Phys_DrawPolyPK4PolyPKf
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_210
_Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_190:
	mov ecx, colorCyan
	mov [esp+0x4], ecx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Phys_DrawPolyPK4PolyPKf
	jmp _Z29Phys_CollideCylinderWithBrushPK8cbrush_tPK7objInfoP7Results_220
	nop


;Phys_CollideCylinderWithTriangleList(unsigned short const*, float const (*) [3], unsigned int, objInfo const*, int, Results*)
_Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0xc]
	mov dword [ebp-0x1c], 0x3
	lea eax, [ebp-0x60]
	mov [ebp-0x20], eax
	mov edx, [ebp+0x14]
	add edx, 0x38
	mov ecx, [ebp+0x14]
	mov eax, [ecx+0x38]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x28], eax
	mov eax, [edx+0x8]
	mov [ebp-0x24], eax
	movss xmm0, dword [ecx+0x30]
	movss [ebp-0x6c], xmm0
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10
_Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10:
	mov ebx, [ebp+0x8]
	xor esi, esi
	jmp _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20
_Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40:
	add esi, 0x1
	cmp [ebp+0x10], esi
	jz _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30
_Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20:
	movzx eax, word [ebx]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	mov edx, [eax]
	mov [ebp-0x60], edx
	mov edx, [eax+0x4]
	mov [ebp-0x5c], edx
	mov eax, [eax+0x8]
	mov [ebp-0x58], eax
	movzx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	mov edx, [eax]
	mov [ebp-0x54], edx
	mov edx, [eax+0x4]
	mov [ebp-0x50], edx
	mov eax, [eax+0x8]
	mov [ebp-0x4c], eax
	movzx eax, word [ebx+0x4]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	add ebx, 0x6
	mov edx, [eax]
	mov [ebp-0x48], edx
	mov edx, [eax+0x4]
	mov [ebp-0x44], edx
	mov eax, [eax+0x8]
	mov [ebp-0x40], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x8], xmm0
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf
	test eax, eax
	jz _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	mov ecx, [ebp+0x14]
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x3c]
	call _Z28Phys_CollideCylinderWithFacePKfPK4PolyPK7objInfoiP7Results
	jmp _Z36Phys_CollideCylinderWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40
	add [eax], al


;Initialized global or static variables of phys_coll_cylinderbrush:
SECTION .data


;Initialized constant data of phys_coll_cylinderbrush:
SECTION .rdata
circleCoords.131667: dd 0x3f800000, 0x0, 0x3f3504f3, 0x3f3504f3, 0x0, 0x3f800000, 0xbf3504f3, 0x3f3504f3, 0xbf800000, 0x0, 0xbf3504f3, 0xbf3504f3, 0x0, 0xbf800000, 0x3f3504f3, 0xbf3504f3, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of phys_coll_cylinderbrush:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__4_00000000:		dd 0xc0800000	; -4
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_double_0_00000000:		dq 0x3ddb7cdfd9d7bdbb	; 1e-10
_float_0_00001000:		dd 0x3727c5ac	; 1e-05
_float_0_02000000:		dd 0x3ca3d70a	; 0.02
_double_0_90000000:		dq 0x3feccccccccccccd	; 0.9
_double_0_00001000:		dq 0x3ee4f8b588e368f1	; 1e-05

