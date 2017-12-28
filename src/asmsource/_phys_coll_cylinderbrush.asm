;Imports of phys_coll_cylinderbrush:
	extern Phys_ProjectFaceOntoFaceAndClip
	extern Vec3NormalizeTo
	extern Phys_ClipLineSegmentAgainstPlane
	extern Phys_AddContactData
	extern ClosestApproachOfTwoLines
	extern Phys_ClipLineSegmentAgainstPoly
	extern Phys_GetWindingForBrushFace2
	extern phys_drawCollisionWorld
	extern Phys_GetSurfaceFlagsFromBrush
	extern colorCyan
	extern Phys_DrawPoly
	extern Phys_GetPlaneForTriangle2

;Exports of phys_coll_cylinderbrush:
	global Phys_DistanceOfCylinderFromPlane
	global Phys_CylinderFaceTestAxis
	global Phys_ClipLineSegmentAgainstCylinderRadius
	global circleCoords.131667
	global Phys_ClipCylinderEndcapToPoly
	global Phys_TestCircleToEdgeAxis
	global Phys_CollideCylinderWithFace
	global Phys_CollideCylinderWithBrush
	global Phys_CollideCylinderWithTriangleList


SECTION .text


;Phys_DistanceOfCylinderFromPlane(float const*, objInfo const*)
Phys_DistanceOfCylinderFromPlane:
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
	ja Phys_DistanceOfCylinderFromPlane_10
Phys_DistanceOfCylinderFromPlane_30:
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
	jb Phys_DistanceOfCylinderFromPlane_20
	movaps xmm4, xmm1
	mulss xmm4, xmm1
Phys_DistanceOfCylinderFromPlane_50:
	mulss xmm1, [ecx+0x94]
	subss xmm3, xmm1
	movaps xmm1, xmm3
	movaps xmm0, xmm2
	subss xmm0, xmm4
	sqrtss xmm0, xmm0
	mulss xmm0, [ecx+0x8c]
	subss xmm1, xmm0
Phys_DistanceOfCylinderFromPlane_40:
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Phys_DistanceOfCylinderFromPlane_10:
	ucomiss xmm7, xmm2
	jbe Phys_DistanceOfCylinderFromPlane_30
	movss xmm1, dword [_float__3402823466385288_float__]
	jmp Phys_DistanceOfCylinderFromPlane_40
Phys_DistanceOfCylinderFromPlane_20:
	movaps xmm4, xmm2
	movaps xmm1, xmm2
	jmp Phys_DistanceOfCylinderFromPlane_50


;Phys_CylinderFaceTestAxis(float const*, Poly const*, objInfo const*, float const*, float, SeparatingAxisInfo*, unsigned int, unsigned char)
Phys_CylinderFaceTestAxis:
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
	jb Phys_CylinderFaceTestAxis_10
	movaps xmm3, xmm1
	mulss xmm3, xmm1
Phys_CylinderFaceTestAxis_70:
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
	jnz Phys_CylinderFaceTestAxis_20
	movss xmm4, dword [_float_34028234663852885_float_3]
	movss xmm3, dword [_float__3402823466385288_float__]
Phys_CylinderFaceTestAxis_60:
	ucomiss xmm4, [ebp-0x1c]
	ja Phys_CylinderFaceTestAxis_30
	movss xmm0, dword [ebp-0x1c]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm3
	ja Phys_CylinderFaceTestAxis_30
	cmp byte [ebp-0x25], 0x0
	jnz Phys_CylinderFaceTestAxis_40
	movss xmm2, dword [ebp-0x1c]
	subss xmm2, xmm4
	movss xmm0, dword [ebp-0x24]
	addss xmm0, xmm2
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi]
	ucomiss xmm0, [ebp-0x24]
	jbe Phys_CylinderFaceTestAxis_40
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
Phys_CylinderFaceTestAxis_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_CylinderFaceTestAxis_20:
	mov eax, [esi]
	xor edx, edx
	movss xmm3, dword [_float__3402823466385288_float__]
	movss xmm4, dword [_float_34028234663852885_float_3]
Phys_CylinderFaceTestAxis_50:
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
	jnz Phys_CylinderFaceTestAxis_50
	jmp Phys_CylinderFaceTestAxis_60
Phys_CylinderFaceTestAxis_40:
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_CylinderFaceTestAxis_10:
	movaps xmm3, xmm2
	movaps xmm1, xmm2
	jmp Phys_CylinderFaceTestAxis_70


;Phys_ClipLineSegmentAgainstCylinderRadius(float const*, float const*, objInfo const*, float (*) [3])
Phys_ClipLineSegmentAgainstCylinderRadius:
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
	jp Phys_ClipLineSegmentAgainstCylinderRadius_10
	jb Phys_ClipLineSegmentAgainstCylinderRadius_20
Phys_ClipLineSegmentAgainstCylinderRadius_10:
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
	ja Phys_ClipLineSegmentAgainstCylinderRadius_20
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
	jbe Phys_ClipLineSegmentAgainstCylinderRadius_30
Phys_ClipLineSegmentAgainstCylinderRadius_20:
	xor eax, eax
Phys_ClipLineSegmentAgainstCylinderRadius_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_ClipLineSegmentAgainstCylinderRadius_30:
	ucomiss xmm5, xmm6
	ja Phys_ClipLineSegmentAgainstCylinderRadius_20
	ucomiss xmm3, xmm5
	jbe Phys_ClipLineSegmentAgainstCylinderRadius_40
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
Phys_ClipLineSegmentAgainstCylinderRadius_60:
	ucomiss xmm2, xmm6
	ja Phys_ClipLineSegmentAgainstCylinderRadius_50
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
Phys_ClipLineSegmentAgainstCylinderRadius_40:
	movss xmm0, dword [ebp-0x38]
	mov edx, [ebp+0x8]
	movss [edx], xmm0
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	jmp Phys_ClipLineSegmentAgainstCylinderRadius_60
Phys_ClipLineSegmentAgainstCylinderRadius_50:
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
	jmp Phys_ClipLineSegmentAgainstCylinderRadius_70


;Phys_ClipCylinderEndcapToPoly(float const*, Poly const*, objInfo const*, int, Results*)
Phys_ClipCylinderEndcapToPoly:
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
	jbe Phys_ClipCylinderEndcapToPoly_10
	movss xmm1, dword [circleCoords.131667+0x40]
	xorps xmm5, xmm1
	xorps xmm6, xmm1
	xor dword [ebp-0xb4], 0x80000000
	xorps xmm2, xmm1
Phys_ClipCylinderEndcapToPoly_50:
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
	jae Phys_ClipCylinderEndcapToPoly_20
	jp Phys_ClipCylinderEndcapToPoly_20
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
Phys_ClipCylinderEndcapToPoly_40:
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
Phys_ClipCylinderEndcapToPoly_30:
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
	jnz Phys_ClipCylinderEndcapToPoly_30
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
	call Phys_ProjectFaceOntoFaceAndClip
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_ClipCylinderEndcapToPoly_20:
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
	jmp Phys_ClipCylinderEndcapToPoly_40
Phys_ClipCylinderEndcapToPoly_10:
	movss xmm1, dword [circleCoords.131667+0x40]
	jmp Phys_ClipCylinderEndcapToPoly_50
	nop


;Phys_TestCircleToEdgeAxis(float const*, Poly const*, float const*, float const*, objInfo const*, float const*, SeparatingAxisInfo*, unsigned int)
Phys_TestCircleToEdgeAxis:
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
	call Vec3NormalizeTo
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	ucomiss xmm0, [_float_0_00001000]
	jp Phys_TestCircleToEdgeAxis_10
	jb Phys_TestCircleToEdgeAxis_20
Phys_TestCircleToEdgeAxis_10:
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
	andps xmm1, [circleCoords.131667+0x50]
	movss xmm0, dword [_float_0_00001000]
	ucomiss xmm0, xmm1
	ja Phys_TestCircleToEdgeAxis_20
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
	jbe Phys_TestCircleToEdgeAxis_30
	mulss xmm4, [ebp-0x54]
	mulss xmm5, [ebp-0x4c]
	addss xmm4, xmm5
	mulss xmm3, [ebp-0x48]
	addss xmm4, xmm3
	pxor xmm1, xmm1
	ucomiss xmm4, xmm1
	jbe Phys_TestCircleToEdgeAxis_30
Phys_TestCircleToEdgeAxis_20:
	mov eax, 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_TestCircleToEdgeAxis_30:
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
	xorps xmm0, [circleCoords.131667+0x60]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb Phys_TestCircleToEdgeAxis_40
	movss xmm1, dword [_float_1_00000000]
Phys_TestCircleToEdgeAxis_50:
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
	call Phys_CylinderFaceTestAxis
	movzx eax, al
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_TestCircleToEdgeAxis_40:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Phys_TestCircleToEdgeAxis_50


;Phys_CollideCylinderWithFace(float const*, Poly const*, objInfo const*, int, Results*)
Phys_CollideCylinderWithFace:
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
	jbe Phys_CollideCylinderWithFace_10
Phys_CollideCylinderWithFace_30:
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x50], 0x7f7fffff
	movss xmm0, dword [circleCoords.131667+0x70]
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
	call Phys_CylinderFaceTestAxis
	test al, al
	jnz Phys_CollideCylinderWithFace_20
Phys_CollideCylinderWithFace_40:
	add esp, 0x195c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_CollideCylinderWithFace_10:
	jp Phys_CollideCylinderWithFace_30
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	jb Phys_CollideCylinderWithFace_30
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_20:
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
	call Phys_CylinderFaceTestAxis
	test al, al
	jz Phys_CollideCylinderWithFace_40
	mov eax, [ebp-0x1910]
	mov eax, [eax+0x4]
	mov [ebp-0x1928], eax
	test eax, eax
	jnz Phys_CollideCylinderWithFace_50
Phys_CollideCylinderWithFace_280:
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
	andps xmm0, [circleCoords.131667+0x80]
	ucomiss xmm0, [_float_0_02000000]
	ja Phys_CollideCylinderWithFace_60
	mov ebx, [ebp-0x1928]
	add ebx, 0x3
Phys_CollideCylinderWithFace_300:
	mov eax, [ebp-0x1910]
	mov esi, [eax+0x4]
	test esi, esi
	jz Phys_CollideCylinderWithFace_70
	mov dword [ebp-0x1880], 0x0
	xor esi, esi
	jmp Phys_CollideCylinderWithFace_80
Phys_CollideCylinderWithFace_100:
	add ebx, 0x1
	add dword [ebp-0x1880], 0x1
	add esi, 0xc
	mov eax, [ebp-0x1880]
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], eax
	jbe Phys_CollideCylinderWithFace_70
Phys_CollideCylinderWithFace_80:
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
	xorps xmm0, [circleCoords.131667+0x70]
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
	xorps xmm0, [circleCoords.131667+0x70]
	ucomiss xmm0, [_float_0_00000000]
	jb Phys_CollideCylinderWithFace_90
	movss xmm1, dword [_float_1_00000000]
Phys_CollideCylinderWithFace_250:
	mulss xmm5, xmm1
	movss [ebp-0x3c], xmm5
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	ucomiss xmm2, [_float_0_00001000]
	jbe Phys_CollideCylinderWithFace_100
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
	call Phys_CylinderFaceTestAxis
	test al, al
	jnz Phys_CollideCylinderWithFace_100
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_60:
	mov ebx, [ebp-0x1910]
	mov eax, [ebx+0x4]
	test eax, eax
	jnz Phys_CollideCylinderWithFace_110
	mov ebx, 0x3
Phys_CollideCylinderWithFace_70:
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
	xorps xmm1, [circleCoords.131667+0x70]
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
	jnz Phys_CollideCylinderWithFace_120
Phys_CollideCylinderWithFace_380:
	mov eax, [ebp-0x4c]
	cmp eax, 0x1
	jz Phys_CollideCylinderWithFace_130
	cmp eax, 0x2
	jz Phys_CollideCylinderWithFace_140
	lea ebx, [eax-0x3]
	mov [ebp-0x4c], ebx
	mov ecx, [ebp-0x1910]
	mov edx, [ecx+0x4]
	cmp ebx, edx
	jb Phys_CollideCylinderWithFace_150
	mov eax, ebx
	sub eax, edx
	mov [ebp-0x4c], eax
	cmp eax, edx
	jb Phys_CollideCylinderWithFace_160
	mov ebx, eax
	sub ebx, edx
	shr ebx, 1
	mov [ebp-0x4c], ebx
	lea eax, [ebx+0x1]
	mov edx, [ebp-0x1910]
	cmp eax, [edx+0x4]
	jz Phys_CollideCylinderWithFace_170
	lea eax, [eax+eax*2]
	shl eax, 0x2
Phys_CollideCylinderWithFace_560:
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
	call Vec3NormalizeTo
	fstp dword [ebp-0x18c4]
	movss xmm0, dword [ebp-0x18c4]
	ucomiss xmm0, [_float_0_00001000]
	jp Phys_CollideCylinderWithFace_180
	jb Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_180:
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
	xorps xmm0, [circleCoords.131667+0x70]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb Phys_CollideCylinderWithFace_190
	movss xmm6, dword [_float_1_00000000]
	movaps xmm2, xmm6
Phys_CollideCylinderWithFace_610:
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
	ja Phys_CollideCylinderWithFace_200
	movss xmm0, dword [edi+0x94]
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	movss [ebp-0x1898], xmm1
	mov eax, [ebp-0x1900]
	addss xmm1, [eax]
	movss [ebp-0x1898], xmm1
Phys_CollideCylinderWithFace_590:
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
	jbe Phys_CollideCylinderWithFace_210
	xorps xmm4, [circleCoords.131667+0x70]
	xor dword [ebp-0x1894], 0x80000000
	xorps xmm7, [circleCoords.131667+0x70]
	xorps xmm1, [circleCoords.131667+0x70]
Phys_CollideCylinderWithFace_210:
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
	jp Phys_CollideCylinderWithFace_220
	jb Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_220:
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
	jbe Phys_CollideCylinderWithFace_40
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
	jbe Phys_CollideCylinderWithFace_40
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
	xorps xmm1, [circleCoords.131667+0x70]
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
	call Phys_ClipLineSegmentAgainstPlane
	test eax, eax
	jz Phys_CollideCylinderWithFace_40
	movss xmm0, dword [ebp-0xc68]
	xorps xmm0, [circleCoords.131667+0x70]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [ebp-0xc64]
	xorps xmm0, [circleCoords.131667+0x70]
	movss [ebp-0x38], xmm0
	movss xmm2, dword [ebp-0xc60]
	xorps xmm2, [circleCoords.131667+0x70]
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
	call Phys_ClipLineSegmentAgainstPlane
	test eax, eax
	jz Phys_CollideCylinderWithFace_40
	xor esi, esi
	lea edi, [ebp-0x48]
	lea ebx, [ebp-0x68]
Phys_CollideCylinderWithFace_240:
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
	jb Phys_CollideCylinderWithFace_230
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	movss [esp+0x4], xmm1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Phys_AddContactData
Phys_CollideCylinderWithFace_230:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x2
	jz Phys_CollideCylinderWithFace_40
	jmp Phys_CollideCylinderWithFace_240
Phys_CollideCylinderWithFace_90:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	jmp Phys_CollideCylinderWithFace_250
Phys_CollideCylinderWithFace_50:
	xor edx, edx
	mov esi, 0xc
	mov ecx, [ebp-0x1910]
	mov ecx, [ecx]
	mov [ebp-0x1918], ecx
	mov ebx, ecx
	jmp Phys_CollideCylinderWithFace_260
Phys_CollideCylinderWithFace_270:
	mov edx, [ebp-0x193c]
	mov ebx, [ebp-0x1918]
Phys_CollideCylinderWithFace_260:
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
	jb Phys_CollideCylinderWithFace_270
	jmp Phys_CollideCylinderWithFace_280
Phys_CollideCylinderWithFace_110:
	xor esi, esi
	mov ebx, 0x3
	jmp Phys_CollideCylinderWithFace_290
Phys_CollideCylinderWithFace_330:
	add esi, 0x1
	add ebx, 0x1
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], esi
	jbe Phys_CollideCylinderWithFace_300
	mov edx, [ebp-0x190c]
	movss xmm0, dword [edx]
	movss [ebp-0x1914], xmm0
	mov eax, [ebp-0x18f8]
	movss xmm7, dword [eax]
	mov edx, [ebp-0x18f0]
	movss xmm5, dword [edx]
Phys_CollideCylinderWithFace_290:
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
	jbe Phys_CollideCylinderWithFace_310
	xorps xmm4, [circleCoords.131667+0x70]
	movss [ebp-0x3c], xmm4
	xorps xmm3, [circleCoords.131667+0x70]
	movss [ebp-0x38], xmm3
	xorps xmm2, [circleCoords.131667+0x70]
	movss [ebp-0x34], xmm2
Phys_CollideCylinderWithFace_310:
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
	xorps xmm0, [circleCoords.131667+0x70]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb Phys_CollideCylinderWithFace_320
	movss xmm2, dword [_float_1_00000000]
Phys_CollideCylinderWithFace_350:
	mulss xmm3, xmm2
	movss [ebp-0x3c], xmm3
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x34]
	movss [ebp-0x34], xmm0
	ucomiss xmm1, [_float_0_00001000]
	jbe Phys_CollideCylinderWithFace_330
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
	call Phys_CylinderFaceTestAxis
	test al, al
	jnz Phys_CollideCylinderWithFace_330
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_150:
	sub eax, 0x2
	cmp edx, eax
	jz Phys_CollideCylinderWithFace_340
	lea eax, [eax+eax*2]
	shl eax, 0x2
Phys_CollideCylinderWithFace_550:
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
	call ClosestApproachOfTwoLines
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
	call Phys_AddContactData
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_320:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	jmp Phys_CollideCylinderWithFace_350
Phys_CollideCylinderWithFace_120:
	mov dword [ebp-0x187c], 0x0
	mov dword [ebp-0x1884], 0x0
	lea ecx, [ebp-0x1868]
	mov [ebp-0x192c], ecx
	mov eax, [ebp-0x1910]
	jmp Phys_CollideCylinderWithFace_360
Phys_CollideCylinderWithFace_370:
	mov eax, ecx
Phys_CollideCylinderWithFace_360:
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
	call Phys_TestCircleToEdgeAxis
	test al, al
	jz Phys_CollideCylinderWithFace_40
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
	call Phys_TestCircleToEdgeAxis
	test al, al
	jz Phys_CollideCylinderWithFace_40
	add dword [ebp-0x187c], 0x1
	add dword [ebp-0x192c], 0xc
	add dword [ebp-0x1884], 0xc
	mov eax, [ebp-0x187c]
	mov ecx, [ebp-0x1910]
	cmp [ecx+0x4], eax
	ja Phys_CollideCylinderWithFace_370
	jmp Phys_CollideCylinderWithFace_380
Phys_CollideCylinderWithFace_130:
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
	andps xmm0, [circleCoords.131667+0x80]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_90000000]
	jae Phys_CollideCylinderWithFace_390
	jp Phys_CollideCylinderWithFace_390
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
	xorps xmm0, [circleCoords.131667+0x70]
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
	xorps xmm0, [circleCoords.131667+0x70]
	ucomiss xmm0, [_float_0_00000000]
	jb Phys_CollideCylinderWithFace_400
	movss xmm0, dword [_float_1_00000000]
Phys_CollideCylinderWithFace_570:
	mulss xmm5, xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	mulss xmm4, xmm0
	cvtss2sd xmm0, xmm6
	ucomisd xmm0, [_double_0_00001000]
	jp Phys_CollideCylinderWithFace_410
	jb Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_410:
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
	xorps xmm1, [circleCoords.131667+0x70]
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
	call Phys_ClipLineSegmentAgainstPoly
	test eax, eax
	jz Phys_CollideCylinderWithFace_40
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
	jb Phys_CollideCylinderWithFace_420
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm0
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Phys_AddContactData
	mov ecx, [ebp-0x1908]
	movss xmm2, dword [ecx]
	mov eax, [ebp-0x18f8]
Phys_CollideCylinderWithFace_600:
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
	jb Phys_CollideCylinderWithFace_40
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	lea edx, [ebp-0x3c]
	mov [esp+0xc], edx
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	movss [esp+0x4], xmm2
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call Phys_AddContactData
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_140:
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
	jz Phys_CollideCylinderWithFace_40
	mov dword [ebp-0x1878], 0x0
	mov dword [ebp-0x1870], 0x0
	mov dword [ebp-0x1888], 0x0
	mov ebx, [ebp-0x1918]
	jmp Phys_CollideCylinderWithFace_430
Phys_CollideCylinderWithFace_480:
	cmp byte [ebp-0x1871], 0x0
	jz Phys_CollideCylinderWithFace_440
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x1918]
	lea eax, [edx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call Phys_ClipLineSegmentAgainstCylinderRadius
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
	ja Phys_CollideCylinderWithFace_450
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
Phys_CollideCylinderWithFace_500:
	mov eax, [ebp-0x1878]
	add eax, 0x1
	mov ebx, [ebp-0x1910]
	cmp [ebx+0x4], eax
	jbe Phys_CollideCylinderWithFace_460
	add dword [ebp-0x1888], 0xc
	cmp dword [ebp-0x1870], 0xff
	ja Phys_CollideCylinderWithFace_470
	mov esi, [ebp-0x1878]
	movzx edx, byte [ebp-0x1871]
	mov [ebp-0x1878], eax
	mov eax, [ebp-0x1910]
	mov eax, [eax]
	mov [ebp-0x1918], eax
	mov ebx, eax
Phys_CollideCylinderWithFace_430:
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
	jz Phys_CollideCylinderWithFace_480
	cmp byte [ebp-0x1871], 0x0
	jz Phys_CollideCylinderWithFace_490
	mov edx, [ebp-0x1870]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xc68]
	movss [eax], xmm7
	mov edx, [ebx+0x4]
	mov [eax+0x4], edx
	mov edx, [ebx+0x8]
	mov [eax+0x8], edx
	add dword [ebp-0x1870], 0x1
	jmp Phys_CollideCylinderWithFace_500
Phys_CollideCylinderWithFace_440:
	lea eax, [esi+esi*2]
	mov edx, [ebp-0x1918]
	lea eax, [edx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call Phys_ClipLineSegmentAgainstCylinderRadius
	test eax, eax
	jz Phys_CollideCylinderWithFace_500
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
	ja Phys_CollideCylinderWithFace_450
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
	jmp Phys_CollideCylinderWithFace_500
Phys_CollideCylinderWithFace_390:
	mov ebx, [ebp+0xc]
	mov [esp+0x10], ebx
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp-0x1910]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x190c]
	mov [esp], ecx
	call Phys_ClipCylinderEndcapToPoly
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_490:
	lea eax, [esi+esi*2]
	mov ecx, [ebp-0x1918]
	lea eax, [ecx+eax*4]
	lea edx, [ebp-0x68]
	mov [esp], edx
	mov ecx, edi
	mov edx, ebx
	call Phys_ClipLineSegmentAgainstCylinderRadius
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
	jmp Phys_CollideCylinderWithFace_500
Phys_CollideCylinderWithFace_470:
	mov edx, [ebp-0x1870]
	mov [ebp-0x18dc], edx
Phys_CollideCylinderWithFace_580:
	mov edx, [ebp-0x18dc]
	test edx, edx
	jz Phys_CollideCylinderWithFace_40
	xor esi, esi
	lea ebx, [ebp-0xc68]
	jmp Phys_CollideCylinderWithFace_510
Phys_CollideCylinderWithFace_530:
	add esi, 0x1
	add ebx, 0xc
	cmp [ebp-0x18dc], esi
	jbe Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_510:
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
	jb Phys_CollideCylinderWithFace_520
Phys_CollideCylinderWithFace_540:
	movss xmm0, dword [edi+0x94]
	xorps xmm0, [circleCoords.131667+0x70]
	ucomiss xmm3, xmm0
	jb Phys_CollideCylinderWithFace_530
	xorps xmm4, [circleCoords.131667+0x70]
	movss [ebp-0x3c], xmm4
	mov edx, [ebp-0x18d0]
	movss xmm0, dword [edx]
	xorps xmm0, [circleCoords.131667+0x70]
	movss [ebp-0x38], xmm0
	mov ecx, [ebp-0x18cc]
	movss xmm0, dword [ecx]
	xorps xmm0, [circleCoords.131667+0x70]
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
	call Phys_AddContactData
	jmp Phys_CollideCylinderWithFace_530
Phys_CollideCylinderWithFace_520:
	jp Phys_CollideCylinderWithFace_540
	movss xmm0, dword [edi+0x94]
	ucomiss xmm0, xmm3
	jb Phys_CollideCylinderWithFace_530
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x18d4]
	mov [esp+0x8], ecx
	subss xmm0, xmm3
	movss [esp+0x4], xmm0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Phys_AddContactData
	jmp Phys_CollideCylinderWithFace_530
Phys_CollideCylinderWithFace_160:
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
	call Phys_AddContactData
	jmp Phys_CollideCylinderWithFace_40
Phys_CollideCylinderWithFace_340:
	xor eax, eax
	jmp Phys_CollideCylinderWithFace_550
Phys_CollideCylinderWithFace_170:
	xor eax, eax
	jmp Phys_CollideCylinderWithFace_560
Phys_CollideCylinderWithFace_400:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm6
	jmp Phys_CollideCylinderWithFace_570
Phys_CollideCylinderWithFace_460:
	mov eax, [ebp-0x1870]
Phys_CollideCylinderWithFace_450:
	mov [ebp-0x18dc], eax
	jmp Phys_CollideCylinderWithFace_580
Phys_CollideCylinderWithFace_200:
	movss xmm0, dword [edi+0x94]
	xorps xmm0, [circleCoords.131667+0x70]
	movaps xmm2, xmm4
	mulss xmm2, xmm0
	movss [ebp-0x1898], xmm2
	mov eax, [ebp-0x1900]
	addss xmm2, [eax]
	movss [ebp-0x1898], xmm2
	jmp Phys_CollideCylinderWithFace_590
Phys_CollideCylinderWithFace_420:
	mov eax, edx
	jmp Phys_CollideCylinderWithFace_600
Phys_CollideCylinderWithFace_190:
	movss xmm6, dword [_float_1_00000000]
	movaps xmm2, xmm6
	divss xmm2, xmm1
	jmp Phys_CollideCylinderWithFace_610


;Phys_CollideCylinderWithBrush(cbrush_t const*, objInfo const*, Results*)
Phys_CollideCylinderWithBrush:
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
	xorps xmm0, [circleCoords.131667+0x90]
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
	xorps xmm0, [circleCoords.131667+0x90]
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
	xorps xmm0, [circleCoords.131667+0x90]
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
	movss xmm0, dword [_float__3402823466385288_float__]
	movss [ebp-0xd14], xmm0
	xor esi, esi
	mov dword [ebp-0xd18], 0xffffffff
	lea ebx, [ebp-0x100]
Phys_CollideCylinderWithBrush_30:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0xd68], xmm1
	call Phys_DistanceOfCylinderFromPlane
	fstp dword [ebp-0xd1c]
	movss xmm1, dword [ebp-0xd68]
	movss xmm0, dword [ebp-0xd1c]
	ucomiss xmm0, xmm1
	jae Phys_CollideCylinderWithBrush_10
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0x8]
	cmp byte [eax+ecx+0x40], 0x0
	jz Phys_CollideCylinderWithBrush_20
	ucomiss xmm0, [ebp-0xd14]
	jbe Phys_CollideCylinderWithBrush_20
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
Phys_CollideCylinderWithBrush_20:
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz Phys_CollideCylinderWithBrush_30
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz Phys_CollideCylinderWithBrush_40
Phys_CollideCylinderWithBrush_160:
	mov eax, [ebp-0xd18]
	test eax, eax
	js Phys_CollideCylinderWithBrush_10
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
	call Phys_GetWindingForBrushFace2
	mov edx, phys_drawCollisionWorld
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz Phys_CollideCylinderWithBrush_50
Phys_CollideCylinderWithBrush_180:
	mov eax, [ebp-0xd18]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Phys_GetSurfaceFlagsFromBrush
	lea ebx, [ebp-0x40]
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call Phys_CollideCylinderWithFace
	mov eax, [ebp+0xc]
	cmp byte [eax+0xa4], 0x0
	jz Phys_CollideCylinderWithBrush_10
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
Phys_CollideCylinderWithBrush_90:
	movss xmm1, dword [esi+0x38]
	movss xmm0, dword [ebx]
	ucomiss xmm0, xmm1
	jbe Phys_CollideCylinderWithBrush_60
	mov edx, [ebp-0xd18]
	cmp [ebp-0xd0c], edx
	jz Phys_CollideCylinderWithBrush_70
	lea ecx, [ebp-0xa0]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp-0xd0c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Phys_GetWindingForBrushFace2
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz Phys_CollideCylinderWithBrush_80
Phys_CollideCylinderWithBrush_70:
	add esi, 0x4
	add ebx, 0x4
	add edi, 0x2
	add dword [ebp-0xd54], 0x20
	add dword [ebp-0xd0c], 0x2
	add dword [ebp-0xd50], 0x20
	cmp edi, 0x7
	jnz Phys_CollideCylinderWithBrush_90
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1c]
	test eax, eax
	jz Phys_CollideCylinderWithBrush_10
	mov dword [ebp-0xd10], 0x0
	mov esi, 0x6
	xor edi, edi
	jmp Phys_CollideCylinderWithBrush_100
Phys_CollideCylinderWithBrush_110:
	add dword [ebp-0xd10], 0x1
	add esi, 0x1
	add edi, 0xc
	mov eax, [ebp-0xd10]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0x1c]
	jae Phys_CollideCylinderWithBrush_10
Phys_CollideCylinderWithBrush_100:
	cmp [ebp-0xd18], esi
	jz Phys_CollideCylinderWithBrush_110
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
	jae Phys_CollideCylinderWithBrush_110
	lea eax, [ebp-0xa0]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x100
	lea edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Phys_GetWindingForBrushFace2
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Phys_CollideCylinderWithBrush_110
	mov eax, phys_drawCollisionWorld
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Phys_CollideCylinderWithBrush_120
Phys_CollideCylinderWithBrush_200:
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
	call Phys_GetSurfaceFlagsFromBrush
	lea ebx, [ebp-0x30]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, ebx
	call Phys_CollideCylinderWithFace
	add dword [ebp-0xd10], 0x1
	add esi, 0x1
	add edi, 0xc
	mov eax, [ebp-0xd10]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0x1c]
	jb Phys_CollideCylinderWithBrush_100
Phys_CollideCylinderWithBrush_10:
	add esp, 0xd7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_CollideCylinderWithBrush_60:
	ucomiss xmm1, [ebx+0x10]
	jbe Phys_CollideCylinderWithBrush_70
	cmp edi, [ebp-0xd18]
	jz Phys_CollideCylinderWithBrush_70
	lea ecx, [ebp-0xa0]
	mov [esp+0x10], ecx
	mov dword [esp+0xc], 0x100
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Phys_GetWindingForBrushFace2
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Phys_CollideCylinderWithBrush_70
	mov ecx, [ebp-0xd34]
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz Phys_CollideCylinderWithBrush_130
Phys_CollideCylinderWithBrush_210:
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Phys_GetSurfaceFlagsFromBrush
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, [ebp-0xd54]
	call Phys_CollideCylinderWithFace
	jmp Phys_CollideCylinderWithBrush_70
Phys_CollideCylinderWithBrush_40:
	xor edi, edi
	xor ebx, ebx
	mov edx, [ebp+0x8]
	mov esi, [edx+0x20]
	jmp Phys_CollideCylinderWithBrush_140
Phys_CollideCylinderWithBrush_170:
	cmp byte [ebx+esi+0xa], 0x0
	jz Phys_CollideCylinderWithBrush_150
	ucomiss xmm0, [ebp-0xd14]
	jbe Phys_CollideCylinderWithBrush_150
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
Phys_CollideCylinderWithBrush_150:
	add edi, 0x1
	add ebx, 0xc
	mov eax, [ebp+0x8]
	cmp [eax+0x1c], edi
	jbe Phys_CollideCylinderWithBrush_160
Phys_CollideCylinderWithBrush_140:
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
	call Phys_DistanceOfCylinderFromPlane
	fstp dword [ebp-0xd30]
	movss xmm1, dword [ebp-0xd68]
	movss xmm0, dword [ebp-0xd30]
	ucomiss xmm0, xmm1
	jb Phys_CollideCylinderWithBrush_170
	jmp Phys_CollideCylinderWithBrush_10
Phys_CollideCylinderWithBrush_50:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call Phys_DrawPoly
	jmp Phys_CollideCylinderWithBrush_180
Phys_CollideCylinderWithBrush_80:
	mov edx, [ebp-0xd34]
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz Phys_CollideCylinderWithBrush_190
Phys_CollideCylinderWithBrush_220:
	mov edx, [ebp-0xd0c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Phys_GetSurfaceFlagsFromBrush
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp+0xc]
	lea edx, [ebp-0x20]
	mov eax, [ebp-0xd50]
	call Phys_CollideCylinderWithFace
	jmp Phys_CollideCylinderWithBrush_70
Phys_CollideCylinderWithBrush_120:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Phys_DrawPoly
	jmp Phys_CollideCylinderWithBrush_200
Phys_CollideCylinderWithBrush_130:
	mov eax, colorCyan
	mov [esp+0x4], eax
	lea edx, [ebp-0x20]
	mov [esp], edx
	call Phys_DrawPoly
	jmp Phys_CollideCylinderWithBrush_210
Phys_CollideCylinderWithBrush_190:
	mov ecx, colorCyan
	mov [esp+0x4], ecx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Phys_DrawPoly
	jmp Phys_CollideCylinderWithBrush_220
	nop


;Phys_CollideCylinderWithTriangleList(unsigned short const*, float const (*) [3], unsigned int, objInfo const*, int, Results*)
Phys_CollideCylinderWithTriangleList:
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
	jnz Phys_CollideCylinderWithTriangleList_10
Phys_CollideCylinderWithTriangleList_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Phys_CollideCylinderWithTriangleList_10:
	mov ebx, [ebp+0x8]
	xor esi, esi
	jmp Phys_CollideCylinderWithTriangleList_20
Phys_CollideCylinderWithTriangleList_40:
	add esi, 0x1
	cmp [ebp+0x10], esi
	jz Phys_CollideCylinderWithTriangleList_30
Phys_CollideCylinderWithTriangleList_20:
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
	call Phys_GetPlaneForTriangle2
	test eax, eax
	jz Phys_CollideCylinderWithTriangleList_40
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	mov ecx, [ebp+0x14]
	lea edx, [ebp-0x20]
	lea eax, [ebp-0x3c]
	call Phys_CollideCylinderWithFace
	jmp Phys_CollideCylinderWithTriangleList_40
	add [eax], al


;Initialized global or static variables of phys_coll_cylinderbrush:
SECTION .data


;Initialized constant data of phys_coll_cylinderbrush:
SECTION .rdata
circleCoords.131667: dd 0x3f800000, 0x0, 0x3f3504f3, 0x3f3504f3, 0x0, 0x3f800000, 0xbf3504f3, 0x3f3504f3, 0xbf800000, 0x0, 0xbf3504f3, 0xbf3504f3, 0x0, 0xbf800000, 0x3f3504f3, 0xbf3504f3, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x2152cd, 0x215617, 0x215526, 0x2153e6, 0x215382, 0x2154d6, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x216c3c, 0x216c48, 0x216c5d, 0x216c72, 0x216c91, 0x216ca6, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x217351, 0x217440, 0x217470, 0x2174a0, 0x2174da, 0x217410, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x217841, 0x218183, 0x217841, 0x217841, 0x217841, 0x217841, 0x217841, 0x217841, 0x217841, 0x217841, 0x217841, 0x21806e, 0x217f0d, 0x217e7e, 0x21779d, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x21881d, 0x21880b, 0x21881d, 0x21881d, 0x21881d, 0x21881d, 0x218823, 0x21881d, 0x21885e, 0x21881d, 0x21881d, 0x21880b, 0x21880b, 0x21880b, 0x21880b, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x223f81, 0x223ff2, 0x223fe4, 0x223fcc, 0x223f5e, 0x223fbd, 0x223fae, 0x223f9f, 0x223f90, 0x224018, 0x224057, 0x224050, 0x224048, 0x224040, 0x224038, 0x224030, 0x224028, 0x224020, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x224174, 0x22419b, 0x224197, 0x224192, 0x22418d, 0x224188, 0x224183, 0x22417e, 0x224179, 0x2241bc, 0x2241e3, 0x2241df, 0x2241da, 0x2241d5, 0x2241d0, 0x2241cb, 0x2241c6, 0x2241c1, 0x22422c, 0x224253, 0x22424f, 0x22424a, 0x224245, 0x224240, 0x22423b, 0x224236, 0x224231, 0x224258, 0x22425d, 0x224262, 0x224266, 0x22426b, 0x224270, 0x224275, 0x22427a, 0x22427f, 0x2242c3, 0x2242ea, 0x2242e6, 0x2242e1, 0x2242dc, 0x2242d7, 0x2242d2, 0x2242cd, 0x2242c8, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x224add, 0x224cf9, 0x224c61, 0x224bef, 0x224be3, 0x2249b4, 0x224bb2, 0x224ad5, 0x224d64, 0x224dc0, 0x224db5, 0x224da0, 0x224d44, 0x224d94, 0x224d88, 0x224d7c, 0x224d70, 0x224e04, 0x224e60, 0x224e55, 0x224e40, 0x224de4, 0x224e34, 0x224e28, 0x224e1c, 0x224e10, 0x224eae, 0x224f2e, 0x224f23, 0x224f0a, 0x224eea, 0x224ede, 0x224ed2, 0x224ec6, 0x224eba, 0x224f3a, 0x224f46, 0x224f52, 0x224f5d, 0x224f76, 0x224fa2, 0x224fae, 0x224fba, 0x224fc6, 0x22502d, 0x225089, 0x22507e, 0x225069, 0x225009, 0x22505d, 0x225051, 0x225045, 0x225039, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x2261a0, 0x226976, 0x22687c, 0x226695, 0x2265fe, 0x226988, 0x226ae0, 0x226ace, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x227432, 0x227f55, 0x227a05, 0x227574, 0x2281d7, 0x226eaf, 0x228af2, 0x227427, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of phys_coll_cylinderbrush:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float__3402823466385288_float__:		dd 0xff7fffff	; -3.40282e+38
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__4_00000000:		dd 0xc0800000	; -4
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00000000:		dd 0x0	; 0
_double_0_00000000:		dq 0x3ddb7cdfd9d7bdbb	; 1e-10
_float_0_00001000:		dd 0x3727c5ac	; 1e-05
_float_0_02000000:		dd 0x3ca3d70a	; 0.02
_double_0_90000000:		dq 0x3feccccccccccccd	; 0.9
_double_0_00001000:		dq 0x3ee4f8b588e368f1	; 1e-05

align   16,db 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
