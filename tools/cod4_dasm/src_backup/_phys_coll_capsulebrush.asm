;Imports of phys_coll_capsulebrush:
	extern _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	extern phys_drawCollisionWorld
	extern _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	extern _Z24VecNCompareCustomEpsilonPKfS0_fi
	extern _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	extern colorCyan
	extern _Z13Phys_DrawPolyPK4PolyPKf
	extern _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf

;Exports of phys_coll_capsulebrush:
	global numLocalContacts
	global localContacts
	global _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	global _Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule
	global _Z21Phys_TestCapsulePlanePKfPK7Capsule
	global _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	global _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i
	global _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i
	global _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results
	global _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results


SECTION .text


;Phys_CapsuleClipEdgeToPlane(float*, float*, float*)
_Z27Phys_CapsuleClipEdgeToPlanePfS_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	movss xmm6, dword [eax+0x4]
	movss xmm1, dword [ecx+0x4]
	movss xmm7, dword [eax+0x8]
	movss xmm2, dword [ecx+0x8]
	movss xmm3, dword [ecx+0xc]
	movss xmm5, dword [eax]
	movaps xmm4, xmm5
	mulss xmm4, [ecx]
	movaps xmm0, xmm6
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	addss xmm4, xmm0
	addss xmm4, xmm3
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x8], xmm0
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x4], xmm0
	movss xmm0, dword [edx]
	mulss xmm0, [ecx]
	mulss xmm1, [ebp-0x8]
	addss xmm0, xmm1
	mulss xmm2, [ebp-0x4]
	addss xmm0, xmm2
	addss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm2, xmm4
	jbe _Z27Phys_CapsuleClipEdgeToPlanePfS_S__10
	ucomiss xmm2, xmm0
	ja _Z27Phys_CapsuleClipEdgeToPlanePfS_S__20
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__10:
	ucomiss xmm4, xmm2
	jbe _Z27Phys_CapsuleClipEdgeToPlanePfS_S__30
	ucomiss xmm0, xmm2
	ja _Z27Phys_CapsuleClipEdgeToPlanePfS_S__40
	ucomiss xmm2, xmm0
	ja _Z27Phys_CapsuleClipEdgeToPlanePfS_S__50
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__30:
	ucomiss xmm2, xmm4
	jbe _Z27Phys_CapsuleClipEdgeToPlanePfS_S__40
	ucomiss xmm0, xmm2
	jbe _Z27Phys_CapsuleClipEdgeToPlanePfS_S__40
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__50:
	movaps xmm1, xmm4
	subss xmm1, xmm0
	movaps xmm0, xmm1
	movaps xmm1, xmm4
	divss xmm1, xmm0
	movaps xmm0, xmm5
	subss xmm0, [edx]
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x8]
	mulss xmm0, xmm1
	movaps xmm3, xmm6
	subss xmm3, xmm0
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x4]
	mulss xmm0, xmm1
	subss xmm7, xmm0
	ucomiss xmm2, xmm4
	ja _Z27Phys_CapsuleClipEdgeToPlanePfS_S__60
	movss [edx], xmm5
	movss [edx+0x4], xmm3
	movss [edx+0x8], xmm7
	mov eax, 0x1
	leave
	ret
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__40:
	mov eax, 0x1
	leave
	ret
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__20:
	xor eax, eax
	leave
	ret
_Z27Phys_CapsuleClipEdgeToPlanePfS_S__60:
	movss [eax], xmm5
	movss [eax+0x4], xmm3
	movss [eax+0x8], xmm7
	mov eax, 0x1
	leave
	ret


;Phys_DistanceOfCapsuleFromPlane(float const*, Capsule const*)
_Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea edx, [ecx+0x18]
	movss xmm6, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	movss xmm7, dword [eax+0xc]
	movaps xmm0, xmm6
	mulss xmm0, [ecx+0x18]
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x8]
	addss xmm0, xmm1
	subss xmm0, xmm7
	ucomiss xmm0, [_float_0_00000000]
	jb _Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule_10
_Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule_20:
	movss xmm2, dword [ecx+0x30]
	movaps xmm3, xmm6
	mulss xmm3, [ecx]
	movaps xmm0, xmm4
	mulss xmm0, [ecx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x8]
	addss xmm3, xmm0
	subss xmm3, xmm7
	subss xmm3, xmm2
	lea eax, [ecx+0xc]
	movaps xmm1, xmm6
	mulss xmm1, [ecx+0xc]
	mulss xmm4, [eax+0x4]
	addss xmm1, xmm4
	mulss xmm5, [eax+0x8]
	addss xmm1, xmm5
	subss xmm1, xmm7
	subss xmm1, xmm2
	movaps xmm2, xmm1
	subss xmm2, xmm3
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x2
	movaps xmm2, xmm3
	andps xmm2, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm1
	orps xmm3, xmm2
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
_Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule_10:
	jp _Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule_20
	movss xmm3, dword [_float__340282346638528859811704]
	movss [ebp-0x4], xmm3
	fld dword [ebp-0x4]
	leave
	ret
	nop


;Phys_TestCapsulePlane(float const*, Capsule const*)
_Z21Phys_TestCapsulePlanePKfPK7Capsule:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	movss xmm3, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm4, dword [eax+0xc]
	movaps xmm5, xmm3
	mulss xmm5, [edx]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x8]
	addss xmm5, xmm0
	subss xmm5, xmm4
	lea eax, [edx+0xc]
	mulss xmm3, [edx+0xc]
	mulss xmm1, [eax+0x4]
	addss xmm3, xmm1
	mulss xmm2, [eax+0x8]
	addss xmm3, xmm2
	subss xmm3, xmm4
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	ucomiss xmm0, [_float_0_00000000]
	jb _Z21Phys_TestCapsulePlanePKfPK7Capsule_10
_Z21Phys_TestCapsulePlanePKfPK7Capsule_20:
	movss xmm0, dword [_data16_7fffffff]
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm5
	andps xmm3, xmm0
	movaps xmm2, xmm1
	subss xmm2, xmm3
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss xmm1, dword [edx+0x30]
	xor eax, eax
	ucomiss xmm1, xmm0
	seta al
	leave
	ret
_Z21Phys_TestCapsulePlanePKfPK7Capsule_10:
	jp _Z21Phys_TestCapsulePlanePKfPK7Capsule_20
	mov eax, 0x1
	leave
	ret
	nop


;Phys_TestAxis(AxisTestResults*, Capsule const*, float const*, float const*, float const*, float const*, int, unsigned char)
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x3c], ecx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	movzx ecx, byte [ebp+0x18]
	mov [ebp-0x29], cl
	movss xmm2, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_0_00000100]
	jp _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_10
	jb _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_20
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movaps xmm6, xmm4
	mulss xmm6, xmm0
	movaps xmm7, xmm3
	mulss xmm7, xmm0
	lea eax, [edx+0x24]
	movaps xmm3, xmm5
	mulss xmm3, [edx+0x24]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [edx+0x3c]
	addss xmm3, [edx+0x30]
	movaps xmm2, xmm5
	mov eax, [ebp-0x3c]
	mulss xmm2, [eax]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movss [ebp-0x24], xmm2
	movaps xmm0, xmm5
	mulss xmm0, [esi]
	movaps xmm1, xmm6
	mulss xmm1, [esi+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [esi+0x8]
	addss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edi]
	movaps xmm1, xmm6
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [edi+0x8]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x20]
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_30:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm2
	movaps xmm2, xmm4
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_30
	movaps xmm4, xmm0
	addss xmm4, xmm2
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm1, xmm2
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm0, xmm4
	andps xmm0, [_data16_7fffffff]
	movaps xmm1, xmm3
	addss xmm1, xmm2
	ucomiss xmm0, xmm1
	ja _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_40
	subss xmm0, xmm1
	ucomiss xmm0, [ebx]
	jbe _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_20
	movss [ebx], xmm0
	movss [ebx+0x4], xmm4
	movss [ebx+0xc], xmm2
	lea eax, [ebx+0x10]
	movss [ebx+0x10], xmm5
	movss [ebx+0x14], xmm6
	movss [ebx+0x18], xmm7
	mov edx, [ebp+0x14]
	mov [ebx+0x8], edx
	ucomiss xmm4, [_float_0_00000000]
	jb _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_50
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_20:
	mov eax, 0x1
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_40:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_50:
	jp _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_20
	cmp byte [ebp-0x29], 0x0
	jnz _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_20
	movss xmm1, dword [_data16_80000000]
	xorps xmm5, xmm1
	movss [ebx+0x10], xmm5
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	movss [ebx+0x14], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm1
	movss [ebx+0x18], xmm0
	xorps xmm4, xmm1
	movss [ebx+0x4], xmm4
	mov eax, 0x1
	jmp _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih_60
	nop


;Phys_CapsuleBuildContactsForTri(Results*, float const*, Capsule const*, float const*, float const*, float const*, int)
_Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov [ebp-0xd8], edx
	mov ebx, ecx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	movss xmm0, dword [ecx+0x3c]
	movss xmm3, dword [ecx+0x18]
	movss xmm7, dword [ecx+0x24]
	movaps xmm1, xmm0
	mulss xmm1, xmm7
	addss xmm1, xmm3
	movss [ebp-0xc8], xmm1
	movss xmm2, dword [ecx+0x1c]
	movss xmm6, dword [ecx+0x28]
	movaps xmm4, xmm0
	mulss xmm4, xmm6
	addss xmm4, xmm2
	movss [ebp-0xcc], xmm4
	movss xmm1, dword [ecx+0x20]
	movss xmm5, dword [ecx+0x2c]
	movaps xmm4, xmm0
	mulss xmm4, xmm5
	addss xmm4, xmm1
	movss [ebp-0xd0], xmm4
	xorps xmm0, [_data16_80000000]
	movaps xmm4, xmm7
	mulss xmm4, xmm0
	addss xmm3, xmm4
	movss [ebp-0xbc], xmm3
	movaps xmm3, xmm6
	mulss xmm3, xmm0
	addss xmm2, xmm3
	movss [ebp-0xc0], xmm2
	mulss xmm0, xmm5
	addss xmm1, xmm0
	movss [ebp-0xc4], xmm1
	mov dword [ebp-0x8c], 0xff7fffff
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	movss xmm2, dword [esi]
	movaps xmm0, xmm2
	subss xmm0, [ecx+0x18]
	movss [ebp-0x60], xmm0
	movss xmm4, dword [esi+0x4]
	movaps xmm0, xmm4
	subss xmm0, [ecx+0x1c]
	movss [ebp-0x5c], xmm0
	movss xmm3, dword [esi+0x8]
	movaps xmm0, xmm3
	subss xmm0, [ecx+0x20]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [edi]
	subss xmm0, [ecx+0x18]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [edi+0x4]
	subss xmm0, [ecx+0x1c]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edi+0x8]
	subss xmm0, [ecx+0x20]
	movss [ebp-0x40], xmm0
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	subss xmm0, [ecx+0x18]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ecx+0x1c]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ecx+0x20]
	movss [ebp-0x4c], xmm0
	subss xmm2, [ebp-0xc8]
	subss xmm4, [ebp-0xcc]
	subss xmm3, [ebp-0xd0]
	movaps xmm1, xmm4
	mulss xmm1, xmm5
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	subss xmm1, xmm0
	mulss xmm3, xmm7
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	subss xmm3, xmm0
	mulss xmm2, xmm6
	mulss xmm4, xmm7
	subss xmm2, xmm4
	mulss xmm5, xmm3
	mulss xmm6, xmm2
	subss xmm5, xmm6
	movss [ebp-0x24], xmm5
	mulss xmm2, [ecx+0x24]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x2c]
	subss xmm2, xmm0
	movss [ebp-0x20], xmm2
	mulss xmm1, [ecx+0x28]
	mulss xmm3, [ecx+0x24]
	subss xmm1, xmm3
	movss [ebp-0x1c], xmm1
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xb
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jnz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_10
_Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_10:
	movss xmm0, dword [edi]
	movss [ebp-0xb0], xmm0
	subss xmm0, [esi]
	movss [ebp-0xb0], xmm0
	movss xmm1, dword [edi+0x4]
	movss [ebp-0xb4], xmm1
	subss xmm1, [esi+0x4]
	movss [ebp-0xb4], xmm1
	movss xmm3, dword [edi+0x8]
	movss [ebp-0xb8], xmm3
	subss xmm3, [esi+0x8]
	movss [ebp-0xb8], xmm3
	movaps xmm0, xmm3
	mulss xmm0, [ebx+0x28]
	mulss xmm1, [ebx+0x2c]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [ebx+0x2c]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x24]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [ebx+0x24]
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, [ebx+0x28]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	movss [ebp-0xa4], xmm0
	subss xmm0, [edi]
	movss [ebp-0xa4], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0xa8], xmm1
	subss xmm1, [edi+0x4]
	movss [ebp-0xa8], xmm1
	movss xmm3, dword [eax+0x8]
	movss [ebp-0xac], xmm3
	subss xmm3, [edi+0x8]
	movss [ebp-0xac], xmm3
	movaps xmm0, xmm3
	mulss xmm0, [ebx+0x28]
	mulss xmm1, [ebx+0x2c]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0xa4]
	mulss xmm0, [ebx+0x2c]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x24]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, [ebx+0x24]
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, [ebx+0x28]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x3
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm0, dword [esi]
	movss [ebp-0x9c], xmm0
	mov eax, [ebp+0x10]
	subss xmm0, [eax]
	movss [ebp-0x9c], xmm0
	movss xmm6, dword [esi+0x4]
	subss xmm6, [eax+0x4]
	movss xmm0, dword [esi+0x8]
	movss [ebp-0xa0], xmm0
	subss xmm0, [eax+0x8]
	movss [ebp-0xa0], xmm0
	mulss xmm0, [ebx+0x28]
	movaps xmm1, xmm6
	mulss xmm1, [ebx+0x2c]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, [ebx+0x2c]
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, [ebx+0x24]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebx+0x24]
	movss xmm1, dword [ebp-0x9c]
	mulss xmm1, [ebx+0x28]
	subss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x4
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	movss [ebp-0x118], xmm6
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xc8]
	subss xmm5, [esi]
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, [esi+0x4]
	movss xmm2, dword [ebp-0xd0]
	subss xmm2, [esi+0x8]
	movss xmm3, dword [ebp-0xb8]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm4, dword [ebp-0xb0]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm5
	subss xmm4, xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0xb0]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm4
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0xb0]
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm3, [ebp-0xb4]
	mulss xmm4, [ebp-0xb0]
	subss xmm3, xmm4
	movss [ebp-0x1c], xmm3
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x5
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xc8]
	subss xmm5, [edi]
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, [edi+0x4]
	movss xmm2, dword [ebp-0xd0]
	subss xmm2, [edi+0x8]
	movss xmm3, dword [ebp-0xac]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm4, dword [ebp-0xa4]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm5
	subss xmm4, xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0xa4]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm4
	movss xmm2, dword [ebp-0xa8]
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0xa4]
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm3, [ebp-0xa8]
	mulss xmm4, [ebp-0xa4]
	subss xmm3, xmm4
	movss [ebp-0x1c], xmm3
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x6
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	movss xmm6, dword [ebp-0x118]
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xc8]
	mov eax, [ebp+0x10]
	subss xmm5, [eax]
	movss xmm1, dword [ebp-0xcc]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0xd0]
	subss xmm2, [eax+0x8]
	movss xmm3, dword [ebp-0xa0]
	mulss xmm3, xmm1
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm4, dword [ebp-0x9c]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm5
	subss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0x9c]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm4
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0x9c]
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm3
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm3, xmm6
	mulss xmm4, [ebp-0x9c]
	subss xmm3, xmm4
	movss [ebp-0x1c], xmm3
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x7
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	movss xmm6, dword [ebp-0x118]
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xbc]
	mov eax, [ebp+0x10]
	subss xmm5, [eax]
	movss xmm1, dword [ebp-0xc0]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [eax+0x8]
	movss xmm4, dword [ebp-0xa0]
	mulss xmm4, xmm1
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x9c]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0xa0]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0x9c]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm3
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0x9c]
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm4
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm6, xmm4
	mulss xmm3, [ebp-0x9c]
	subss xmm6, xmm3
	movss [ebp-0x1c], xmm6
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xa
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xbc]
	subss xmm5, [edi]
	movss xmm1, dword [ebp-0xc0]
	subss xmm1, [edi+0x4]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [edi+0x8]
	movss xmm4, dword [ebp-0xac]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0xa4]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0xa4]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0xa8]
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0xa4]
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm4
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm4, [ebp-0xa8]
	movss [ebp-0xa8], xmm4
	mulss xmm3, [ebp-0xa4]
	subss xmm4, xmm3
	movss [ebp-0x1c], xmm4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x9
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [ebp-0xbc]
	subss xmm5, [esi]
	movss xmm1, dword [ebp-0xc0]
	subss xmm1, [esi+0x4]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [esi+0x8]
	movss xmm4, dword [ebp-0xb8]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm2
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0xb0]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0xb0]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm0
	subss xmm1, xmm2
	movss [ebp-0x24], xmm1
	mulss xmm0, [ebp-0xb0]
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm4
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	mulss xmm4, [ebp-0xb4]
	movss [ebp-0xb4], xmm4
	mulss xmm3, [ebp-0xb0]
	subss xmm4, xmm3
	movss [ebp-0x1c], xmm4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x8
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm1, dword [edi]
	subss xmm1, [ebp-0xc8]
	movss xmm5, dword [edi+0x4]
	subss xmm5, [ebp-0xcc]
	movss xmm3, dword [edi+0x8]
	subss xmm3, [ebp-0xd0]
	movss xmm2, dword [ebx+0x2c]
	movss xmm6, dword [ebx+0x28]
	movaps xmm4, xmm5
	mulss xmm4, xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	subss xmm4, xmm0
	movss xmm7, dword [ebx+0x24]
	mulss xmm3, xmm7
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	subss xmm3, xmm0
	mulss xmm1, xmm6
	mulss xmm5, xmm7
	subss xmm1, xmm5
	mulss xmm2, xmm3
	mulss xmm6, xmm1
	subss xmm2, xmm6
	movss [ebp-0x24], xmm2
	mulss xmm1, [ebx+0x24]
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x2c]
	subss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mulss xmm4, [ebx+0x28]
	mulss xmm3, [ebx+0x24]
	subss xmm4, xmm3
	movss [ebp-0x1c], xmm4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xc
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp+0x10]
	movss xmm1, dword [eax]
	subss xmm1, [ebp-0xc8]
	movss xmm5, dword [eax+0x4]
	subss xmm5, [ebp-0xcc]
	movss xmm3, dword [eax+0x8]
	subss xmm3, [ebp-0xd0]
	movss xmm2, dword [ebx+0x2c]
	movss xmm6, dword [ebx+0x28]
	movaps xmm4, xmm5
	mulss xmm4, xmm2
	movaps xmm0, xmm3
	mulss xmm0, xmm6
	subss xmm4, xmm0
	movss xmm7, dword [ebx+0x24]
	mulss xmm3, xmm7
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	subss xmm3, xmm0
	mulss xmm1, xmm6
	mulss xmm5, xmm7
	subss xmm1, xmm5
	mulss xmm2, xmm3
	mulss xmm6, xmm1
	subss xmm2, xmm6
	movss [ebp-0x24], xmm2
	mulss xmm1, [ebx+0x24]
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x2c]
	subss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mulss xmm4, [ebx+0x28]
	mulss xmm3, [ebx+0x24]
	subss xmm4, xmm3
	movss [ebp-0x1c], xmm4
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xd
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0xc8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebp-0xcc]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [ebp-0xd0]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xe
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm0, dword [edi]
	subss xmm0, [ebp-0xc8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+0x4]
	subss xmm0, [ebp-0xcc]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x8]
	subss xmm0, [ebp-0xd0]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0xf
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0xc8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebp-0xcc]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0xd0]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x10
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0xbc]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebp-0xc0]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, [ebp-0xc4]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x11
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm0, dword [edi]
	subss xmm0, [ebp-0xbc]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+0x4]
	subss xmm0, [ebp-0xc0]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x8]
	subss xmm0, [ebp-0xc4]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x12
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0xbc]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebp-0xc0]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0xc4]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x13
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp-0xd8]
	movss xmm0, dword [eax]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x54]
	mov [esp+0x4], eax
	lea eax, [ebp-0x48]
	mov [esp], eax
	lea ecx, [ebp-0x60]
	mov edx, ebx
	lea eax, [ebp-0x8c]
	call _Z13Phys_TestAxisP15AxisTestResultsPK7CapsulePKfS5_S5_S5_ih
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm2, dword [ebx+0x30]
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x7c]
	addss xmm3, [ebx+0x18]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x78]
	addss xmm4, [ebx+0x1c]
	mulss xmm2, [ebp-0x74]
	addss xmm2, [ebx+0x20]
	movss xmm0, dword [ebx+0x3c]
	movaps xmm5, xmm0
	mulss xmm5, [ebx+0x24]
	addss xmm5, xmm3
	movaps xmm6, xmm0
	mulss xmm6, [ebx+0x28]
	addss xmm6, xmm4
	movaps xmm7, xmm0
	mulss xmm7, [ebx+0x2c]
	addss xmm7, xmm2
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x24]
	addss xmm3, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x28]
	addss xmm4, xmm1
	mulss xmm0, [ebx+0x2c]
	addss xmm2, xmm0
	subss xmm5, [esi]
	movss [ebp-0x30], xmm5
	subss xmm6, [esi+0x4]
	movss [ebp-0x2c], xmm6
	subss xmm7, [esi+0x8]
	movss [ebp-0x28], xmm7
	subss xmm3, [esi]
	movss [ebp-0x3c], xmm3
	subss xmm4, [esi+0x4]
	movss [ebp-0x38], xmm4
	subss xmm2, [esi+0x8]
	movss [ebp-0x34], xmm2
	mov eax, [ebp-0xd8]
	movss xmm0, dword [eax]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x68], xmm0
	mov dword [ebp-0x64], 0x0
	lea ecx, [ebp-0x70]
	lea edx, [ebp-0x3c]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm5, dword [edi]
	subss xmm5, [esi]
	movss xmm6, dword [edi+0x4]
	subss xmm6, [esi+0x4]
	movss xmm7, dword [edi+0x8]
	subss xmm7, [esi+0x8]
	movaps xmm0, xmm7
	mov eax, [ebp-0xd8]
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x8]
	subss xmm0, xmm1
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	movaps xmm1, xmm7
	mulss xmm1, [eax]
	subss xmm0, xmm1
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax]
	movaps xmm1, xmm5
	mulss xmm1, [eax+0x4]
	subss xmm0, xmm1
	movss [ebp-0x68], xmm0
	mov dword [ebp-0x64], 0x358637bd
	lea ecx, [ebp-0x70]
	lea edx, [ebp-0x3c]
	lea eax, [ebp-0x30]
	movss [ebp-0x108], xmm5
	movss [ebp-0x118], xmm6
	movss [ebp-0x128], xmm7
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	movss xmm5, dword [ebp-0x108]
	movss xmm6, dword [ebp-0x118]
	movss xmm7, dword [ebp-0x128]
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	mov eax, [ebp+0x10]
	movss xmm4, dword [eax]
	subss xmm4, [edi]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edi+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edi+0x8]
	movaps xmm0, xmm2
	mov eax, [ebp-0xd8]
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	subss xmm0, xmm1
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	mulss xmm2, [eax]
	subss xmm0, xmm2
	movss [ebp-0x6c], xmm0
	mulss xmm3, [eax]
	mulss xmm4, [eax+0x4]
	subss xmm3, xmm4
	movss [ebp-0x68], xmm3
	mulss xmm5, [ebp-0x70]
	mulss xmm6, xmm0
	addss xmm5, xmm6
	mulss xmm7, xmm3
	addss xmm5, xmm7
	cvtss2sd xmm0, xmm5
	subsd xmm0, [_double_0_00000100]
	cvtsd2ss xmm0, xmm0
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x64], xmm0
	lea ecx, [ebp-0x70]
	lea edx, [ebp-0x3c]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm4, dword [esi]
	mov eax, [ebp+0x10]
	subss xmm4, [eax]
	movss xmm2, dword [esi+0x4]
	subss xmm2, [eax+0x4]
	movss xmm3, dword [esi+0x8]
	subss xmm3, [eax+0x8]
	movaps xmm0, xmm3
	mov eax, [ebp-0xd8]
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	subss xmm0, xmm1
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x8]
	mulss xmm3, [eax]
	subss xmm0, xmm3
	movss [ebp-0x6c], xmm0
	mulss xmm2, [eax]
	mulss xmm4, [eax+0x4]
	subss xmm2, xmm4
	movss [ebp-0x68], xmm2
	mov dword [ebp-0x64], 0x358637bd
	lea ecx, [ebp-0x70]
	lea edx, [ebp-0x3c]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	movss xmm6, dword [ebp-0x30]
	addss xmm6, [esi]
	movss [ebp-0x30], xmm6
	movss xmm7, dword [ebp-0x2c]
	addss xmm7, [esi+0x4]
	movss [ebp-0x2c], xmm7
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0xdc], xmm0
	addss xmm0, [esi+0x8]
	movss [ebp-0xdc], xmm0
	movss [ebp-0x28], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0xe0], xmm1
	addss xmm1, [esi]
	movss [ebp-0xe0], xmm1
	movss [ebp-0x3c], xmm1
	movss xmm3, dword [ebp-0x38]
	movss [ebp-0xe4], xmm3
	addss xmm3, [esi+0x4]
	movss [ebp-0xe4], xmm3
	movss [ebp-0x38], xmm3
	movss xmm4, dword [ebp-0x34]
	movss [ebp-0xd4], xmm4
	addss xmm4, [esi+0x8]
	movss [ebp-0xd4], xmm4
	movss [ebp-0x34], xmm4
	movss xmm2, dword [ebx+0x18]
	movss xmm3, dword [ebx+0x1c]
	movss xmm4, dword [ebx+0x20]
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0xe8], xmm0
	movss xmm1, dword [ebp-0x78]
	movss [ebp-0xec], xmm1
	movss xmm0, dword [ebp-0x74]
	movss [ebp-0xf0], xmm0
	movss xmm1, dword [ebp-0x88]
	subss xmm1, [ebp-0x80]
	movaps xmm5, xmm6
	subss xmm5, xmm2
	mulss xmm5, [ebp-0xe8]
	movaps xmm0, xmm7
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xec]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0xdc]
	subss xmm0, xmm4
	mulss xmm0, [ebp-0xf0]
	addss xmm5, xmm0
	subss xmm5, xmm1
	movss xmm0, dword [ebp-0xe0]
	subss xmm0, xmm2
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0xe8]
	movss xmm0, dword [ebp-0xe4]
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xec]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xd4]
	subss xmm0, xmm4
	mulss xmm0, [ebp-0xf0]
	addss xmm2, xmm0
	subss xmm2, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm5, 0x2
	andps xmm5, xmm0
	pxor xmm1, xmm1
	orps xmm5, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x2
	andps xmm2, xmm0
	orps xmm2, xmm1
	mov ecx, [numLocalContacts]
	cmp ecx, 0x1f
	jg _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss [eax+localContacts], xmm6
	movss [edx+0x4], xmm7
	movss xmm3, dword [ebp-0xdc]
	movss [edx+0x8], xmm3
	lea eax, [edx+0xc]
	movss xmm4, dword [ebp-0xe8]
	movss [edx+0xc], xmm4
	movss xmm0, dword [ebp-0xec]
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0xf0]
	movss [eax+0x8], xmm1
	movss [edx+0x18], xmm5
	mov eax, [ebp+0x14]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
	cmp ecx, 0x1f
	jg _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss xmm0, dword [ebp-0xe0]
	movss [eax+localContacts], xmm0
	movss xmm1, dword [ebp-0xe4]
	movss [edx+0x4], xmm1
	movss xmm3, dword [ebp-0xd4]
	movss [edx+0x8], xmm3
	lea eax, [edx+0xc]
	movss [edx+0xc], xmm4
	movss xmm4, dword [ebp-0xec]
	movss [eax+0x4], xmm4
	movss xmm0, dword [ebp-0xf0]
	movss [eax+0x8], xmm0
	movss [edx+0x18], xmm2
	mov eax, [ebp+0x14]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
	jmp _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
	nop


;Phys_CapsuleBuildContactsForTriEndEdges(Results*, float const*, Capsule const*, float const*, float const*, float const*, int)
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov ebx, edx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x10]
	lea eax, [ecx+0x24]
	mov [ebp-0x158], eax
	movss xmm0, dword [ecx+0x3c]
	movss [ebp-0x16c], xmm0
	lea eax, [ecx+0x18]
	mov [ebp-0x154], eax
	movss xmm0, dword [ecx+0x18]
	movss [ebp-0x150], xmm0
	movss xmm1, dword [ecx+0x24]
	movss [ebp-0x14c], xmm1
	movss xmm2, dword [ebp-0x16c]
	mulss xmm2, xmm1
	movss [ebp-0x148], xmm2
	addss xmm0, xmm2
	movss [ebp-0xcc], xmm0
	lea eax, [ecx+0x1c]
	mov [ebp-0x144], eax
	movss xmm0, dword [ecx+0x1c]
	movss [ebp-0x140], xmm0
	lea eax, [ecx+0x28]
	mov [ebp-0x13c], eax
	movss xmm0, dword [ecx+0x28]
	movss [ebp-0x138], xmm0
	movss xmm1, dword [ebp-0x16c]
	mulss xmm1, xmm0
	movss xmm2, dword [ebp-0x140]
	addss xmm2, xmm1
	movss [ebp-0xd0], xmm2
	lea eax, [ecx+0x20]
	mov [ebp-0x134], eax
	movss xmm0, dword [ecx+0x20]
	movss [ebp-0x130], xmm0
	lea eax, [ecx+0x2c]
	mov [ebp-0x12c], eax
	movss xmm0, dword [ecx+0x2c]
	movss [ebp-0x128], xmm0
	movss xmm1, dword [ebp-0x16c]
	mulss xmm1, xmm0
	movss xmm2, dword [ebp-0x130]
	addss xmm2, xmm1
	movss [ebp-0xd4], xmm2
	movss xmm0, dword [ebp-0x16c]
	xorps xmm0, [_data16_80000000]
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm0
	movss xmm4, dword [ebp-0x150]
	addss xmm4, xmm3
	movss [ebp-0xc0], xmm4
	movss xmm5, dword [ebp-0x138]
	mulss xmm5, xmm0
	movss xmm6, dword [ebp-0x140]
	addss xmm6, xmm5
	movss [ebp-0xc4], xmm6
	movss xmm7, dword [ebp-0x128]
	mulss xmm7, xmm0
	movss xmm0, dword [ebp-0x130]
	addss xmm0, xmm7
	movss [ebp-0xc8], xmm0
	movss xmm1, dword [edi]
	movss [ebp-0x124], xmm1
	subss xmm1, [ebp-0x150]
	movss [ebp-0xb4], xmm1
	lea eax, [edi+0x4]
	mov [ebp-0x120], eax
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x11c], xmm0
	subss xmm0, [ebp-0x140]
	movss [ebp-0xb8], xmm0
	lea eax, [edi+0x8]
	mov [ebp-0x118], eax
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x114], xmm0
	subss xmm0, [ebp-0x130]
	movss [ebp-0xbc], xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x110], xmm0
	subss xmm0, [ebp-0x150]
	movss [ebp-0xa8], xmm0
	add eax, 0x4
	mov [ebp-0x10c], eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x108], xmm0
	subss xmm0, [ebp-0x140]
	movss [ebp-0xac], xmm0
	add eax, 0x8
	mov [ebp-0x104], eax
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x100], xmm0
	subss xmm0, [ebp-0x130]
	movss [ebp-0xb0], xmm0
	movss xmm1, dword [esi]
	movss [ebp-0xfc], xmm1
	subss xmm1, [ebp-0x150]
	movss [ebp-0x9c], xmm1
	lea eax, [esi+0x4]
	mov [ebp-0xf8], eax
	movss xmm0, dword [esi+0x4]
	movss [ebp-0xf4], xmm0
	subss xmm0, [ebp-0x140]
	movss [ebp-0xa0], xmm0
	lea eax, [esi+0x8]
	mov [ebp-0xf0], eax
	movss xmm0, dword [esi+0x8]
	movss [ebp-0xec], xmm0
	subss xmm0, [ebp-0x130]
	movss [ebp-0xa4], xmm0
	movss xmm1, dword [edx]
	movss [ebp-0x170], xmm1
	movaps xmm6, xmm1
	xorps xmm6, [_data16_80000000]
	lea eax, [edx+0x4]
	mov [ebp-0xe8], eax
	movss xmm5, dword [edx+0x4]
	xorps xmm5, [_data16_80000000]
	lea eax, [edx+0x8]
	mov [ebp-0xe4], eax
	movss xmm2, dword [edx+0x8]
	xorps xmm2, [_data16_80000000]
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double_0_00000100]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_10
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_20
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_10:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm6, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	movaps xmm4, xmm2
	mulss xmm4, xmm0
	movss xmm5, dword [ebp-0x14c]
	mulss xmm5, xmm6
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm3
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm4
	addss xmm5, xmm0
	andps xmm5, [_data16_7fffffff]
	mulss xmm5, [ebp-0x16c]
	addss xmm5, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm6
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm3
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_30:
	movss xmm0, dword [eax]
	movaps xmm7, xmm0
	minss xmm7, xmm1
	movaps xmm1, xmm7
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_30
	addss xmm7, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm7, xmm0
	movss [ebp-0x5c], xmm7
	subss xmm2, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x60], xmm0
	movaps xmm1, xmm7
	andps xmm1, [_data16_7fffffff]
	addss xmm0, xmm5
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	movss [ebp-0x64], xmm1
	ucomiss xmm1, [_float__340282346638528859811704]
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_50
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_20:
	pxor xmm0, xmm0
	movss [ebp-0xe0], xmm0
	movss [ebp-0xdc], xmm0
	movss [ebp-0xd8], xmm0
	movss [ebp-0x60], xmm0
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [_float__340282346638528859811704]
	movss [ebp-0x64], xmm1
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_610:
	movss xmm2, dword [ebp-0xfc]
	subss xmm2, [ebp-0x110]
	movss [ebp-0x90], xmm2
	movss xmm3, dword [ebp-0xf4]
	subss xmm3, [ebp-0x108]
	movss [ebp-0x94], xmm3
	movss xmm4, dword [ebp-0xec]
	subss xmm4, [ebp-0x100]
	movss [ebp-0x98], xmm4
	movss xmm6, dword [ebp-0x138]
	mulss xmm6, xmm4
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm3
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x128]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0x14c]
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movss xmm2, dword [ebp-0x14c]
	mulss xmm2, xmm3
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, [ebp-0x90]
	subss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm7, qword [_double_0_00000100]
	ucomisd xmm7, xmm0
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_60
	movapd xmm5, xmm7
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_360:
	movss xmm7, dword [ebp-0x124]
	subss xmm7, [ebp-0xfc]
	movss [ebp-0x84], xmm7
	movss xmm0, dword [ebp-0x11c]
	subss xmm0, [ebp-0xf4]
	movss [ebp-0x88], xmm0
	movss xmm1, dword [ebp-0x114]
	subss xmm1, [ebp-0xec]
	movss [ebp-0x8c], xmm1
	movss xmm4, dword [ebp-0x138]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, [ebp-0x88]
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x128]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x14c]
	mulss xmm0, xmm1
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0x14c]
	mulss xmm2, [ebp-0x88]
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	subss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm5, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_70
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm4
	mulss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_80:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_80
	addss xmm4, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_90
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_100
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_110
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_100:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm7, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_120
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_550:
	movapd xmm5, xmm2
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_600:
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm5, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_130
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss xmm5, dword [ebp-0x78]
	mulss xmm5, xmm0
	movss xmm7, dword [ebp-0x7c]
	mulss xmm7, xmm0
	movss xmm6, dword [ebp-0x80]
	mulss xmm6, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_140:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_140
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_150
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_160
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_170
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_160:
	movss [ebp-0xe0], xmm6
	movss [ebp-0xdc], xmm7
	movss [ebp-0xd8], xmm5
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_130:
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm5, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_180
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss xmm5, dword [ebp-0x6c]
	mulss xmm5, xmm0
	movss xmm7, dword [ebp-0x70]
	mulss xmm7, xmm0
	movss xmm6, dword [ebp-0x74]
	mulss xmm6, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_190:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_190
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_200
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_210
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_220
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_210:
	movss [ebp-0xe0], xmm6
	movss [ebp-0xdc], xmm7
	movss [ebp-0xd8], xmm5
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_180:
	movss xmm2, dword [ebp-0x110]
	subss xmm2, [ebp-0xc0]
	movss xmm3, dword [ebp-0x108]
	subss xmm3, [ebp-0xc4]
	movss xmm4, dword [ebp-0x100]
	subss xmm4, [ebp-0xc8]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm5, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_230
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm6, xmm2
	mulss xmm6, xmm0
	movaps xmm7, xmm3
	mulss xmm7, xmm0
	movaps xmm5, xmm4
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm6
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_240:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm2
	movaps xmm2, xmm4
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_240
	movaps xmm4, xmm0
	addss xmm4, xmm2
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm1, xmm2
	movaps xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_250
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_260
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_270
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_260:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm7
	movss [ebp-0xd8], xmm6
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm6, qword [_double_0_00000100]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_660:
	movss xmm5, dword [ebp-0xfc]
	subss xmm5, [ebp-0xc0]
	movss xmm2, dword [ebp-0xf4]
	subss xmm2, [ebp-0xc4]
	movss xmm3, dword [ebp-0xec]
	subss xmm3, [ebp-0xc8]
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm6, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_280
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm5, xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm0
	movaps xmm7, xmm3
	mulss xmm7, xmm0
	movss xmm4, dword [ebp-0x14c]
	mulss xmm4, xmm5
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss xmm2, dword [ebp-0x128]
	mulss xmm2, xmm7
	addss xmm4, xmm2
	andps xmm4, [_data16_7fffffff]
	mulss xmm4, [ebp-0x16c]
	addss xmm4, [ecx+0x30]
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm5
	movss xmm3, dword [ebp-0xb8]
	mulss xmm3, xmm1
	addss xmm0, xmm3
	movss xmm6, dword [ebp-0xbc]
	mulss xmm6, xmm7
	addss xmm0, xmm6
	movss [ebp-0x3c], xmm0
	movss xmm2, dword [ebp-0xa8]
	mulss xmm2, xmm5
	movss xmm3, dword [ebp-0xac]
	mulss xmm3, xmm1
	addss xmm2, xmm3
	movss [ebp-0xa8], xmm2
	movss xmm6, dword [ebp-0xb0]
	mulss xmm6, xmm7
	addss xmm2, xmm6
	movss [ebp-0x38], xmm2
	movss xmm2, dword [ebp-0x9c]
	mulss xmm2, xmm5
	movss xmm3, dword [ebp-0xa0]
	mulss xmm3, xmm1
	addss xmm2, xmm3
	movss [ebp-0x9c], xmm2
	movss xmm6, dword [ebp-0xa4]
	mulss xmm6, xmm7
	addss xmm2, xmm6
	movss [ebp-0x34], xmm2
	movaps xmm2, xmm0
	movaps xmm3, xmm0
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_290:
	movss xmm0, dword [eax]
	movaps xmm6, xmm0
	minss xmm6, xmm2
	movaps xmm2, xmm6
	maxss xmm0, xmm3
	movaps xmm3, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_290
	addss xmm6, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm6, xmm0
	subss xmm3, xmm2
	mulss xmm3, xmm0
	movaps xmm0, xmm6
	andps xmm0, [_data16_7fffffff]
	movaps xmm2, xmm4
	addss xmm2, xmm3
	ucomiss xmm0, xmm2
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm0, xmm2
	ucomiss xmm0, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_280
	ucomiss xmm6, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_300
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_310
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_300:
	movss [ebp-0xe0], xmm7
	movss [ebp-0xdc], xmm1
	movss [ebp-0xd8], xmm5
	movss [ebp-0x60], xmm3
	movss [ebp-0x5c], xmm6
	movaps xmm2, xmm5
	movaps xmm3, xmm1
	movaps xmm4, xmm7
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_670:
	movss xmm0, dword [ecx+0x30]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x150]
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x140]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x130]
	movss xmm7, dword [ebp-0x148]
	addss xmm7, xmm2
	movss [ebp-0x148], xmm7
	movss xmm5, dword [ebp-0x16c]
	mov eax, [ebp-0x13c]
	mulss xmm5, [eax]
	addss xmm5, xmm3
	movss xmm6, dword [ebp-0x16c]
	mov eax, [ebp-0x12c]
	mulss xmm6, [eax]
	addss xmm6, xmm4
	movss xmm0, dword [ebp-0x16c]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mov eax, [ebp-0x158]
	mulss xmm1, [eax]
	addss xmm2, xmm1
	movaps xmm1, xmm0
	mov eax, [ebp-0x13c]
	mulss xmm1, [eax]
	addss xmm3, xmm1
	mov eax, [ebp-0x12c]
	mulss xmm0, [eax]
	addss xmm4, xmm0
	subss xmm7, [edi]
	movss [ebp-0x30], xmm7
	mov eax, [ebp-0x120]
	subss xmm5, [eax]
	movss [ebp-0x2c], xmm5
	mov eax, [ebp-0x118]
	subss xmm6, [eax]
	movss [ebp-0x28], xmm6
	subss xmm2, [edi]
	movss [ebp-0x24], xmm2
	mov eax, [ebp-0x120]
	subss xmm3, [eax]
	movss [ebp-0x20], xmm3
	mov eax, [ebp-0x118]
	subss xmm4, [eax]
	movss [ebp-0x1c], xmm4
	xor dword [ebp-0x170], 0x80000000
	movss xmm0, dword [ebp-0x170]
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0xe8]
	movss xmm0, dword [eax]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x48], xmm0
	mov eax, [ebp-0xe4]
	movss xmm0, dword [eax]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x44], xmm0
	mov dword [ebp-0x40], 0x0
	lea ecx, [ebp-0x4c]
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movaps xmm1, xmm0
	subss xmm1, [edi]
	mov eax, [ebp-0x10c]
	movss xmm2, dword [eax]
	movaps xmm7, xmm2
	mov eax, [ebp-0x120]
	subss xmm7, [eax]
	mov eax, [ebp-0x104]
	movss xmm6, dword [eax]
	movaps xmm3, xmm6
	mov eax, [ebp-0x118]
	subss xmm3, [eax]
	movss [ebp-0x68], xmm3
	movss xmm5, dword [esi]
	subss xmm5, xmm0
	mov eax, [ebp-0xf8]
	movss xmm4, dword [eax]
	subss xmm4, xmm2
	mov eax, [ebp-0xf0]
	movss xmm3, dword [eax]
	subss xmm3, xmm6
	movaps xmm0, xmm3
	mov eax, [ebp-0xe8]
	mulss xmm0, [eax]
	movaps xmm2, xmm4
	mov eax, [ebp-0xe4]
	mulss xmm2, [eax]
	subss xmm0, xmm2
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	mulss xmm3, [ebx]
	subss xmm0, xmm3
	movss [ebp-0x48], xmm0
	mulss xmm4, [ebx]
	mov eax, [ebp-0xe8]
	mulss xmm5, [eax]
	subss xmm4, xmm5
	movss [ebp-0x44], xmm4
	mulss xmm1, [ebp-0x4c]
	mulss xmm7, xmm0
	addss xmm1, xmm7
	mulss xmm4, [ebp-0x68]
	addss xmm1, xmm4
	cvtss2sd xmm1, xmm1
	subsd xmm1, [_double_0_00000100]
	cvtsd2ss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x40], xmm0
	lea ecx, [ebp-0x4c]
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	movss xmm4, dword [edi]
	subss xmm4, [esi]
	mov eax, [ebp-0x120]
	movss xmm2, dword [eax]
	mov eax, [ebp-0xf8]
	subss xmm2, [eax]
	mov eax, [ebp-0x118]
	movss xmm3, dword [eax]
	mov eax, [ebp-0xf0]
	subss xmm3, [eax]
	movaps xmm0, xmm3
	mov eax, [ebp-0xe8]
	mulss xmm0, [eax]
	movaps xmm1, xmm2
	mov eax, [ebp-0xe4]
	mulss xmm1, [eax]
	subss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	mulss xmm3, [ebx]
	subss xmm0, xmm3
	movss [ebp-0x48], xmm0
	mulss xmm2, [ebx]
	mov eax, [ebp-0xe8]
	mulss xmm4, [eax]
	subss xmm2, xmm4
	movss [ebp-0x44], xmm2
	mov dword [ebp-0x40], 0x358637bd
	lea ecx, [ebp-0x4c]
	lea edx, [ebp-0x24]
	lea eax, [ebp-0x30]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x15c], xmm0
	addss xmm0, [edi]
	movss [ebp-0x15c], xmm0
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x160], xmm1
	mov eax, [ebp-0x120]
	addss xmm1, [eax]
	movss [ebp-0x160], xmm1
	movss [ebp-0x2c], xmm1
	movss xmm6, dword [ebp-0x28]
	mov eax, [ebp-0x118]
	addss xmm6, [eax]
	movss [ebp-0x28], xmm6
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x164], xmm0
	addss xmm0, [edi]
	movss [ebp-0x164], xmm0
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp-0x20]
	movss [ebp-0x168], xmm1
	mov eax, [ebp-0x120]
	addss xmm1, [eax]
	movss [ebp-0x168], xmm1
	movss [ebp-0x20], xmm1
	movss xmm7, dword [ebp-0x1c]
	mov eax, [ebp-0x118]
	addss xmm7, [eax]
	movss [ebp-0x1c], xmm7
	mov eax, [ebp-0x154]
	movss xmm1, dword [eax]
	mov eax, [ebp-0x144]
	movss xmm2, dword [eax]
	mov eax, [ebp-0x134]
	movss xmm3, dword [eax]
	movss xmm4, dword [ebp-0x5c]
	subss xmm4, [ebp-0x60]
	movss xmm5, dword [ebp-0x15c]
	subss xmm5, xmm1
	mulss xmm5, [ebp-0xd8]
	movss xmm0, dword [ebp-0x160]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0xdc]
	addss xmm5, xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xe0]
	addss xmm5, xmm0
	subss xmm5, xmm4
	movss xmm0, dword [ebp-0x164]
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xd8]
	movss xmm0, dword [ebp-0x168]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0xdc]
	addss xmm1, xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xe0]
	addss xmm1, xmm0
	subss xmm1, xmm4
	pxor xmm0, xmm0
	cmpss xmm0, xmm5, 0x2
	andps xmm5, xmm0
	pxor xmm2, xmm2
	orps xmm5, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	andps xmm1, xmm0
	orps xmm1, xmm2
	mov ecx, [numLocalContacts]
	cmp ecx, 0x1f
	jg _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss xmm3, dword [ebp-0x15c]
	movss [eax+localContacts], xmm3
	movss xmm4, dword [ebp-0x160]
	movss [edx+0x4], xmm4
	movss [edx+0x8], xmm6
	lea eax, [edx+0xc]
	movss xmm6, dword [ebp-0xd8]
	movss [edx+0xc], xmm6
	movss xmm0, dword [ebp-0xdc]
	movss [eax+0x4], xmm0
	movss xmm2, dword [ebp-0xe0]
	movss [eax+0x8], xmm2
	movss [edx+0x18], xmm5
	mov eax, [ebp+0x14]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
	cmp ecx, 0x1f
	jg _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss xmm0, dword [ebp-0x164]
	movss [eax+localContacts], xmm0
	movss xmm2, dword [ebp-0x168]
	movss [edx+0x4], xmm2
	movss [edx+0x8], xmm7
	lea eax, [edx+0xc]
	movss [edx+0xc], xmm6
	movss xmm3, dword [ebp-0xdc]
	movss [eax+0x4], xmm3
	movss xmm4, dword [ebp-0xe0]
	movss [eax+0x8], xmm4
	movss [edx+0x18], xmm1
	mov eax, [ebp+0x14]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm4, xmm6
	mulss xmm4, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	movaps xmm7, xmm2
	mulss xmm7, xmm0
	movss xmm5, dword [ebp-0x14c]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm3
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm7
	addss xmm5, xmm0
	andps xmm5, [_data16_7fffffff]
	mulss xmm5, [ebp-0x16c]
	addss xmm5, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm4
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm3
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_320:
	movss xmm0, dword [eax]
	movaps xmm6, xmm0
	minss xmm6, xmm1
	movaps xmm1, xmm6
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_320
	addss xmm6, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm6, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm6
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm5
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_330
	ucomiss xmm6, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_340
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_350
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_340:
	movss [ebp-0xe0], xmm7
	movss [ebp-0xdc], xmm3
	movss [ebp-0xd8], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm6
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_360
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_70:
	movapd xmm7, xmm5
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_120:
	movss xmm5, dword [ebp-0xcc]
	subss xmm5, [ebp-0x110]
	movss xmm2, dword [ebp-0xd0]
	subss xmm2, [ebp-0x108]
	movss xmm1, dword [ebp-0xd4]
	subss xmm1, [ebp-0x100]
	movss xmm4, dword [ebp-0x98]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x90]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x98]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0x94]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0x90]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0x98]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x90]
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0x98]
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movss xmm2, dword [ebp-0x94]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0x90]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm7, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_370
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_380:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_380
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_390
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_400
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_410
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_400:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm7, qword [_double_0_00000100]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_370:
	movss xmm5, dword [ebp-0xcc]
	subss xmm5, [ebp-0xfc]
	movss xmm2, dword [ebp-0xd0]
	subss xmm2, [ebp-0xf4]
	movss xmm1, dword [ebp-0xd4]
	subss xmm1, [ebp-0xec]
	movss xmm4, dword [ebp-0x8c]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x84]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0x88]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0x84]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0x8c]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x84]
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movss xmm2, dword [ebp-0x88]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0x84]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm7, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_420
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_430:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_430
	addss xmm4, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_420
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_440
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_450
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_440:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_420:
	movss xmm5, dword [ebp-0xc0]
	subss xmm5, [ebp-0x110]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [ebp-0x108]
	movss xmm1, dword [ebp-0xc8]
	subss xmm1, [ebp-0x100]
	movss xmm4, dword [ebp-0x98]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x90]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x98]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0x94]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0x90]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0x98]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x90]
	mulss xmm5, xmm1
	movss xmm7, dword [ebp-0x98]
	mulss xmm7, xmm4
	subss xmm5, xmm7
	movss xmm2, dword [ebp-0x94]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0x90]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_460
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_630:
	movss xmm5, dword [ebp-0xc0]
	subss xmm5, [ebp-0xfc]
	movss xmm2, dword [ebp-0xc4]
	subss xmm2, [ebp-0xf4]
	movss xmm1, dword [ebp-0xc8]
	subss xmm1, [ebp-0xec]
	movss xmm4, dword [ebp-0x8c]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0x84]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0x88]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0x84]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0x8c]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x84]
	mulss xmm5, xmm1
	movss xmm7, dword [ebp-0x8c]
	mulss xmm7, xmm4
	subss xmm5, xmm7
	movss xmm2, dword [ebp-0x88]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0x84]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_470
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_480:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_480
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_470
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_490
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_500
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_490:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_470:
	movss xmm5, dword [ebp-0x110]
	subss xmm5, [ebp-0xcc]
	movss [ebp-0x78], xmm5
	movss xmm6, dword [ebp-0x108]
	subss xmm6, [ebp-0xd0]
	movss [ebp-0x7c], xmm6
	movss xmm7, dword [ebp-0x100]
	subss xmm7, [ebp-0xd4]
	movss [ebp-0x80], xmm7
	movss xmm3, dword [ebp-0x128]
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0x14c]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0x138]
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x14c]
	mulss xmm0, xmm6
	subss xmm1, xmm0
	movss xmm5, dword [ebp-0x128]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movss xmm4, dword [ebp-0x14c]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm3
	subss xmm4, xmm0
	mulss xmm3, [ebp-0x138]
	mulss xmm2, [ebp-0x14c]
	subss xmm3, xmm2
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm2, qword [_double_0_00000100]
	ucomisd xmm2, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_510
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm5
	mulss xmm7, xmm0
	movaps xmm6, xmm4
	mulss xmm6, xmm0
	movaps xmm5, xmm3
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_520:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_520
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_510
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_530
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_540
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_530:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_510:
	movss xmm5, dword [ebp-0xfc]
	subss xmm5, [ebp-0xcc]
	movss [ebp-0x6c], xmm5
	movss xmm6, dword [ebp-0xf4]
	subss xmm6, [ebp-0xd0]
	movss [ebp-0x70], xmm6
	movss xmm7, dword [ebp-0xec]
	subss xmm7, [ebp-0xd4]
	movss [ebp-0x74], xmm7
	movss xmm3, dword [ebp-0x128]
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0x14c]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0x138]
	mulss xmm1, xmm5
	movss xmm0, dword [ebp-0x14c]
	mulss xmm0, xmm6
	subss xmm1, xmm0
	movss xmm6, dword [ebp-0x128]
	mulss xmm6, xmm2
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm4, dword [ebp-0x14c]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm3
	subss xmm4, xmm0
	mulss xmm3, [ebp-0x138]
	mulss xmm2, [ebp-0x14c]
	subss xmm3, xmm2
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm2, qword [_double_0_00000100]
	ucomisd xmm2, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_550
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm5, xmm6
	mulss xmm5, xmm0
	movaps xmm7, xmm4
	mulss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_560:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_560
	movaps xmm4, xmm0
	addss xmm4, xmm1
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_570
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_580
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_590
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_580:
	movss [ebp-0xe0], xmm6
	movss [ebp-0xdc], xmm7
	movss [ebp-0xd8], xmm5
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_600
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_50:
	movss [ebp-0xe0], xmm4
	movss [ebp-0xdc], xmm3
	movss [ebp-0xd8], xmm6
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_610
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_460:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm7, xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm3, dword [ebp-0x14c]
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, [ebp-0x16c]
	addss xmm3, [ecx+0x30]
	movss xmm2, dword [ebp-0xb4]
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0xb8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xbc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x9c]
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0xa0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xa4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x38]
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_620:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_620
	addss xmm4, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm4, xmm0
	subss xmm2, xmm1
	mulss xmm2, xmm0
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_40
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0x64]
	jbe _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_630
	ucomiss xmm4, [_float_0_00000000]
	jp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_640
	jb _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_650
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_640:
	movss [ebp-0xe0], xmm5
	movss [ebp-0xdc], xmm6
	movss [ebp-0xd8], xmm7
	movss [ebp-0x60], xmm2
	movss [ebp-0x5c], xmm4
	movss [ebp-0x64], xmm1
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_630
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_330:
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_360
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_90:
	movsd xmm7, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_120
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_390:
	movsd xmm7, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_370
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_410:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm7, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_370
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_230:
	movapd xmm6, xmm5
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_660
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_280:
	movss xmm2, dword [ebp-0xd8]
	movss xmm3, dword [ebp-0xdc]
	movss xmm4, dword [ebp-0xe0]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_670
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_350:
	xorps xmm4, [_data16_80000000]
	movss [ebp-0xd8], xmm4
	xorps xmm3, [_data16_80000000]
	movss [ebp-0xdc], xmm3
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xe0], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0x5c], xmm6
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_360
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_110:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm7, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_120
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_570:
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_600
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_150:
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_130
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_450:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_420
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_200:
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_180
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_650:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_630
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_250:
	movsd xmm6, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_660
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_500:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_470
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_540:
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xd8], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdc], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_510
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_590:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xd8], xmm5
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xdc], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xe0], xmm6
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_600
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_170:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xd8], xmm5
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xdc], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xe0], xmm6
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_130
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_220:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xd8], xmm5
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xdc], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xe0], xmm6
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_180
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_270:
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xd8], xmm6
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xdc], xmm7
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xe0], xmm5
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x5c], xmm4
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm1
	movsd xmm6, qword [_double_0_00000100]
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_660
_Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_310:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xd8], xmm5
	xorps xmm1, [_data16_80000000]
	movss [ebp-0xdc], xmm1
	xorps xmm7, [_data16_80000000]
	movss [ebp-0xe0], xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0x5c], xmm6
	movss [ebp-0x60], xmm3
	movaps xmm2, xmm5
	movaps xmm3, xmm1
	movaps xmm4, xmm7
	jmp _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i_670
	nop


;Phys_CollideCapsuleWithBrush(cbrush_t const*, objInfo const*, Results*)
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xecc
	mov ecx, [ebp+0xc]
	mov dword [numLocalContacts], 0x0
	mov edx, [ecx+0x4]
	sub edx, 0x1
	movss xmm1, dword [ecx+0x8c]
	movss [ebp-0x68], xmm1
	movss xmm7, dword [ecx+0x94]
	movss [ebp-0x5c], xmm7
	movaps xmm0, xmm7
	addss xmm0, xmm1
	movss [ebp-0x60], xmm0
	mulss xmm1, xmm1
	movss [ebp-0x64], xmm1
	lea ebx, [ecx+0x38]
	mov eax, [ecx+0x38]
	mov [ebp-0x80], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x78], eax
	lea edx, [edx+edx*2]
	lea edx, [ecx+edx*4+0x40]
	lea eax, [edx+0x4]
	movss xmm0, dword [edx+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x6c], xmm0
	movaps xmm1, xmm7
	xorps xmm1, [_data16_80000000]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x74]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x98], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x70]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x94], xmm0
	mulss xmm1, [ebp-0x6c]
	addss xmm1, [ebp-0x78]
	movss [ebp-0x90], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x74]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x8c], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x70]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x88], xmm0
	mulss xmm7, [ebp-0x6c]
	addss xmm7, [ebp-0x78]
	movss [ebp-0x84], xmm7
	pxor xmm1, xmm1
	movss [ebp-0x58], xmm1
	movss [ebp-0x54], xmm1
	movss [ebp-0x50], xmm1
	movss [ebp-0x4c], xmm1
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	movss [ebp-0xe90], xmm0
	xorps xmm0, [_data16_80000000]
	mov edx, 0xbf800000
	mov [ebp-0xf8], edx
	movss [ebp-0xf4], xmm1
	movss [ebp-0xf0], xmm1
	movss [ebp-0xec], xmm0
	movss xmm2, dword [eax+0x10]
	movss [ebp-0xe84], xmm2
	mov eax, 0x3f800000
	mov [ebp-0xe8], eax
	movss [ebp-0xe4], xmm1
	movss [ebp-0xe0], xmm1
	movss [ebp-0xdc], xmm2
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0xe7c], xmm0
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xd8], xmm1
	mov [ebp-0xd4], edx
	movss [ebp-0xd0], xmm1
	movss [ebp-0xcc], xmm0
	movss xmm2, dword [ecx+0x14]
	movss [ebp-0xe88], xmm2
	movss [ebp-0xc8], xmm1
	mov [ebp-0xc4], eax
	movss [ebp-0xc0], xmm1
	movss [ebp-0xbc], xmm2
	movss xmm3, dword [ecx+0x8]
	movss [ebp-0xe80], xmm3
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xb8], xmm1
	movss [ebp-0xb4], xmm1
	mov [ebp-0xb0], edx
	movss [ebp-0xac], xmm0
	movss xmm4, dword [ecx+0x18]
	movss [ebp-0xe8c], xmm4
	movss [ebp-0xa8], xmm1
	movss [ebp-0xa4], xmm1
	mov [ebp-0xa0], eax
	movss [ebp-0x9c], xmm4
	movss xmm5, dword [_float__340282346638528859811704]
	movss [ebp-0xe40], xmm5
	xor esi, esi
	mov dword [ebp-0xe48], 0xffffffff
	lea ebx, [ebp-0xf8]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_30:
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0xeb8], xmm1
	call _Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule
	fstp dword [ebp-0xe4c]
	movss xmm1, dword [ebp-0xeb8]
	movss xmm0, dword [ebp-0xe4c]
	ucomiss xmm0, xmm1
	jae _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
	mov ecx, esi
	shr ecx, 1
	mov edx, esi
	and edx, 0x1
	lea eax, [edx+edx]
	add eax, edx
	add eax, [ebp+0x8]
	cmp byte [eax+ecx+0x40], 0x0
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_20
	ucomiss xmm0, [ebp-0xe40]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_20
	mov [ebp-0xe48], esi
	mov eax, [ebx]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x50], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x4c], eax
	movss [ebp-0xe40], xmm0
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_20:
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_30
	mov eax, [ebp+0x8]
	mov eax, [eax+0x1c]
	test eax, eax
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_40
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_180:
	mov eax, [ebp-0xe48]
	test eax, eax
	js _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
	lea edx, [ebp-0x98]
	lea eax, [ebp-0x58]
	call _Z21Phys_TestCapsulePlanePKfPK7Capsule
	test eax, eax
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_50
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10:
	add esp, 0xecc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_50:
	lea eax, [ebp-0xd58]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x0
	xor dword [ebp-0xe90], 0x80000000
	lea eax, [ebp-0x158]
	mov dword [ebp-0x158], 0xbf800000
	mov dword [ebp-0x154], 0x0
	mov dword [ebp-0x150], 0x0
	movss xmm0, dword [ebp-0xe90]
	movss [ebp-0x14c], xmm0
	mov dword [ebp-0x148], 0x3f800000
	mov dword [ebp-0x144], 0x0
	mov dword [ebp-0x140], 0x0
	movss xmm1, dword [ebp-0xe84]
	movss [ebp-0x13c], xmm1
	xor dword [ebp-0xe7c], 0x80000000
	mov dword [ebp-0x138], 0x0
	mov dword [ebp-0x134], 0xbf800000
	mov dword [ebp-0x130], 0x0
	movss xmm2, dword [ebp-0xe7c]
	movss [ebp-0x12c], xmm2
	mov dword [ebp-0x128], 0x0
	mov dword [ebp-0x124], 0x3f800000
	mov dword [ebp-0x120], 0x0
	movss xmm3, dword [ebp-0xe88]
	movss [ebp-0x11c], xmm3
	xor dword [ebp-0xe80], 0x80000000
	mov dword [ebp-0x118], 0x0
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0x110], 0xbf800000
	movss xmm4, dword [ebp-0xe80]
	movss [ebp-0x10c], xmm4
	mov dword [ebp-0x108], 0x0
	mov dword [ebp-0x104], 0x0
	mov dword [ebp-0x100], 0x3f800000
	movss xmm5, dword [ebp-0xe8c]
	movss [ebp-0xfc], xmm5
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x100
	lea esi, [ebp-0x20]
	mov [esp+0x8], esi
	mov eax, [ebp-0xe48]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z28Phys_GetWindingForBrushFace2PK8cbrush_tjP4PolyiPA4_Kf
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
	mov eax, phys_drawCollisionWorld
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_60
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_260:
	mov esi, [ebp-0x20]
	lea edi, [ebx-0x3]
	mov ecx, [ebp-0xe48]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29Phys_GetSurfaceFlagsFromBrushPK8cbrush_ti
	mov [ebp-0xe44], eax
	test edi, edi
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_70
	mov [esp+0xc], eax
	lea eax, [esi+0xc]
	mov [esp+0x8], eax
	lea eax, [esi+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	lea ecx, [ebp-0x98]
	lea edx, [ebp-0x58]
	mov eax, [ebp+0x10]
	call _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_250:
	mov ecx, [numLocalContacts]
	mov [ebp-0xe04], ecx
	cmp ecx, 0x1
	jle _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_80
	sub ecx, 0x1
	mov [ebp-0xd70], ecx
	xor edx, edx
	mov dword [ebp-0xd60], localContacts
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_90
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_100:
	mov edx, eax
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_150:
	add dword [ebp-0xd60], 0x24
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_90:
	cmp edx, [ebp-0xd70]
	jge _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_80
	lea eax, [edx+0x1]
	mov [ebp-0xd5c], eax
	cmp [ebp-0xe04], eax
	jle _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_100
	mov ecx, eax
	lea eax, [eax+eax*8]
	lea eax, [eax*4+localContacts]
	mov [ebp-0xd64], eax
	mov edi, ecx
	lea eax, [edx+edx*8]
	lea eax, [eax*4+localContacts]
	mov [ebp-0xe00], eax
	mov eax, [ebp-0xe04]
	mov [ebp-0xe78], eax
	mov esi, [ebp-0xd64]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_140:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	mov [esp+0x4], esi
	mov edx, [ebp-0xe00]
	mov [esp], edx
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	mov ebx, eax
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	lea eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0xe00]
	add eax, 0xc
	mov [esp], eax
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	test ebx, ebx
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_110
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_200:
	xor eax, eax
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_210:
	test eax, eax
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_120
	mov ecx, [ebp-0xe00]
	movss xmm0, dword [ecx+0x18]
	ucomiss xmm0, [esi+0x18]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_130
	mov eax, [ebp-0xd64]
	mov dword [eax+0x20], 0x0
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_120:
	add edi, 0x1
	add esi, 0x24
	add dword [ebp-0xd64], 0x24
	cmp edi, [ebp-0xe78]
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_140
	mov edx, [ebp-0xd5c]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_150
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_40:
	xor edi, edi
	xor ebx, ebx
	mov eax, [ebp+0x8]
	mov esi, [eax+0x20]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_160
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_190:
	cmp byte [ebx+esi+0xa], 0x0
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_170
	ucomiss xmm0, [ebp-0xe40]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_170
	lea eax, [edi+0x6]
	mov [ebp-0xe48], eax
	movss xmm0, dword [ebp-0xe50]
	movss [ebp-0x58], xmm0
	movss xmm2, dword [ebp-0xe54]
	movss [ebp-0x54], xmm2
	movss xmm3, dword [ebp-0xe58]
	movss [ebp-0x50], xmm3
	movss xmm4, dword [ebp-0xe5c]
	movss [ebp-0x4c], xmm4
	movss xmm5, dword [ebp-0xe60]
	movss [ebp-0xe40], xmm5
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_170:
	add edi, 0x1
	add ebx, 0xc
	mov eax, [ebp+0x8]
	cmp [eax+0x1c], edi
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_180
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_160:
	mov eax, [ebx+esi]
	movss xmm0, dword [eax]
	movss [ebp-0xe50], xmm0
	movss [ebp-0x48], xmm0
	movss xmm2, dword [eax+0x4]
	movss [ebp-0xe54], xmm2
	movss [ebp-0x44], xmm2
	movss xmm3, dword [eax+0x8]
	movss [ebp-0xe58], xmm3
	movss [ebp-0x40], xmm3
	mov eax, [ebx+esi]
	movss xmm4, dword [eax+0xc]
	movss [ebp-0xe5c], xmm4
	movss [ebp-0x3c], xmm4
	lea eax, [ebp-0x98]
	mov [esp+0x4], eax
	lea edx, [ebp-0x48]
	mov [esp], edx
	movss [ebp-0xeb8], xmm1
	call _Z31Phys_DistanceOfCapsuleFromPlanePKfPK7Capsule
	fstp dword [ebp-0xe60]
	movss xmm1, dword [ebp-0xeb8]
	movss xmm0, dword [ebp-0xe60]
	ucomiss xmm0, xmm1
	jb _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_190
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_110:
	test eax, eax
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_200
	mov eax, 0x1
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_210
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_130:
	mov edx, [ebp-0xd60]
	mov dword [edx+0x20], 0x0
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_120
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_80:
	mov eax, [numLocalContacts]
	test eax, eax
	jle _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
	xor esi, esi
	mov ebx, localContacts
	mov edi, localContacts
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_220
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_230:
	add esi, 0x1
	add edi, 0x24
	add ebx, 0x24
	cmp esi, [numLocalContacts]
	jge _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_10
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_220:
	mov eax, [ebx+0x20]
	test eax, eax
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_230
	mov eax, [ebx+0x1c]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	lea eax, [edi+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_230
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_70:
	mov [esp+0xc], eax
	lea eax, [esi+0xc]
	mov [esp+0x8], eax
	lea eax, [esi+0x18]
	mov [esp+0x4], eax
	mov [esp], esi
	lea ecx, [ebp-0x98]
	lea edx, [ebp-0x58]
	mov eax, [ebp+0x10]
	call _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i
	cmp edi, 0x1
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_240
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_520:
	lea eax, [edi+edi*2]
	lea eax, [esi+eax*4]
	mov edx, [ebp-0xe44]
	mov [esp+0xc], edx
	lea edx, [eax+0xc]
	mov [esp+0x8], edx
	lea edx, [eax+0x18]
	mov [esp+0x4], edx
	mov [esp], eax
	lea ecx, [ebp-0x98]
	lea edx, [ebp-0x58]
	mov eax, [ebp+0x10]
	call _Z39Phys_CapsuleBuildContactsForTriEndEdgesP7ResultsPKfPK7CapsuleS2_S2_S2_i
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_250
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_60:
	mov eax, colorCyan
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z13Phys_DrawPolyPK4PolyPKf
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_260
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_240:
	lea ecx, [esi+0x4]
	mov [ebp-0xd6c], ecx
	lea eax, [esi+0x8]
	mov [ebp-0xd68], eax
	mov dword [ebp-0xe3c], 0x1
	lea ebx, [esi+0x20]
	mov eax, ecx
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_270
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_530:
	pxor xmm2, xmm2
	movss [ebp-0xdfc], xmm2
	movss [ebp-0xdf8], xmm2
	movss [ebp-0xdf4], xmm2
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm2
	movss xmm3, dword [_float__340282346638528859811704]
	movss [ebp-0xde8], xmm3
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_550:
	movss xmm4, dword [ebp-0xe10]
	subss xmm4, [ebp-0xe1c]
	movss [ebp-0xda0], xmm4
	movss xmm5, dword [ebp-0xe0c]
	subss xmm5, [ebp-0xe18]
	movss [ebp-0xda4], xmm5
	movss xmm6, dword [ebp-0xe08]
	subss xmm6, [ebp-0xe14]
	movss [ebp-0xda8], xmm6
	movss xmm4, dword [ebp-0xe28]
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm5
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0xe20]
	mulss xmm3, [ebp-0xda0]
	movss xmm0, dword [ebp-0xe34]
	mulss xmm0, xmm6
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0xe34]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, [ebp-0xda0]
	subss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm5, qword [_double_0_00000100]
	ucomisd xmm5, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_280
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm4, xmm0
	movss [ebp-0xd9c], xmm4
	movaps xmm6, xmm3
	mulss xmm6, xmm0
	movaps xmm5, xmm0
	mulss xmm5, xmm2
	movss xmm3, dword [ebp-0xe34]
	mulss xmm3, xmm4
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, xmm4
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_290:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_290
	addss xmm4, xmm0
	mulss xmm4, [_float_0_50000000]
	subss xmm2, xmm1
	mulss xmm2, [_float_0_50000000]
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_310
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_320
	movss [ebp-0xdfc], xmm5
	movss [ebp-0xdf8], xmm6
	movss xmm3, dword [ebp-0xd9c]
	movss [ebp-0xdf4], xmm3
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm4
	movss [ebp-0xde8], xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_310:
	movss xmm4, dword [ebp-0xda8]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_560:
	movss xmm5, dword [ebp-0xddc]
	subss xmm5, [ebp-0xe1c]
	movss xmm2, dword [ebp-0xde0]
	subss xmm2, [ebp-0xe18]
	movss xmm1, dword [ebp-0xde4]
	subss xmm1, [ebp-0xe14]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xda4]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0xda0]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xda8]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0xda4]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0xda0]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0xda8]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0xda4]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0xda0]
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0xda8]
	mulss xmm0, xmm4
	subss xmm5, xmm0
	movss xmm2, dword [ebp-0xda4]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0xda0]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_330
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm6, xmm0
	movss [ebp-0xd98], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm0
	movaps xmm5, xmm0
	mulss xmm5, xmm2
	movss xmm3, dword [ebp-0xe34]
	mulss xmm3, [ebp-0xd98]
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, [ebp-0xd98]
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, [ebp-0xd98]
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, [ebp-0xd98]
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_340:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_340
	movaps xmm4, xmm0
	addss xmm4, xmm1
	mulss xmm4, [_float_0_50000000]
	subss xmm2, xmm1
	mulss xmm2, [_float_0_50000000]
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_330
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_350
	movss [ebp-0xdfc], xmm5
	movss [ebp-0xdf8], xmm6
	movss xmm3, dword [ebp-0xd98]
	movss [ebp-0xdf4], xmm3
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm4
	movss [ebp-0xde8], xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_330:
	movss xmm5, dword [ebp-0xdd0]
	subss xmm5, [ebp-0xe1c]
	movss xmm2, dword [ebp-0xdd4]
	subss xmm2, [ebp-0xe18]
	movss xmm1, dword [ebp-0xdd8]
	subss xmm1, [ebp-0xe14]
	movss xmm4, dword [ebp-0xda8]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0xda4]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss xmm3, dword [ebp-0xda0]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xda8]
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss xmm1, dword [ebp-0xda4]
	mulss xmm1, xmm5
	mulss xmm2, [ebp-0xda0]
	subss xmm1, xmm2
	movss xmm6, dword [ebp-0xda8]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0xda4]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0xda0]
	mulss xmm5, xmm1
	movss xmm1, dword [ebp-0xda8]
	mulss xmm1, xmm4
	subss xmm5, xmm1
	movss xmm2, dword [ebp-0xda4]
	mulss xmm2, xmm4
	mulss xmm3, [ebp-0xda0]
	subss xmm2, xmm3
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_360
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm6, xmm0
	mulss xmm5, xmm0
	movss [ebp-0xd94], xmm5
	movaps xmm5, xmm0
	mulss xmm5, xmm2
	movss xmm3, dword [ebp-0xe34]
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, [ebp-0xd94]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, xmm6
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, [ebp-0xd94]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, [ebp-0xd94]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, [ebp-0xd94]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_370:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_370
	movaps xmm4, xmm0
	addss xmm4, xmm1
	mulss xmm4, [_float_0_50000000]
	subss xmm2, xmm1
	mulss xmm2, [_float_0_50000000]
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_380
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_390
	movss [ebp-0xdfc], xmm5
	movss xmm3, dword [ebp-0xd94]
	movss [ebp-0xdf8], xmm3
	movss [ebp-0xdf4], xmm6
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm4
	movss [ebp-0xde8], xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_380:
	movsd xmm5, qword [_double_0_00000100]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_570:
	movss xmm0, dword [ebp-0xe1c]
	subss xmm0, [ebp-0xddc]
	movss [ebp-0xd88], xmm0
	movss xmm1, dword [ebp-0xe18]
	subss xmm1, [ebp-0xde0]
	movss [ebp-0xd8c], xmm1
	movss xmm2, dword [ebp-0xe14]
	subss xmm2, [ebp-0xde4]
	movss [ebp-0xd90], xmm2
	movss xmm3, dword [ebp-0xe20]
	mulss xmm3, xmm1
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm2
	subss xmm3, xmm0
	movss xmm2, dword [ebp-0xe34]
	mulss xmm2, [ebp-0xd90]
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, [ebp-0xd88]
	subss xmm2, xmm0
	movss xmm1, dword [ebp-0xe28]
	mulss xmm1, [ebp-0xd88]
	movss xmm0, dword [ebp-0xe34]
	mulss xmm0, [ebp-0xd8c]
	subss xmm1, xmm0
	movss xmm6, dword [ebp-0xe20]
	mulss xmm6, xmm2
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm4, dword [ebp-0xe34]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm3
	subss xmm4, xmm0
	mulss xmm3, [ebp-0xe28]
	mulss xmm2, [ebp-0xe34]
	subss xmm3, xmm2
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm5, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_400
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm5, xmm6
	mulss xmm5, xmm0
	mulss xmm4, xmm0
	movss [ebp-0xd84], xmm4
	movaps xmm6, xmm0
	mulss xmm6, xmm3
	movss xmm3, dword [ebp-0xe34]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm4
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_410:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm1
	movaps xmm1, xmm4
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_410
	movaps xmm4, xmm0
	addss xmm4, xmm1
	mulss xmm4, [_float_0_50000000]
	subss xmm2, xmm1
	mulss xmm2, [_float_0_50000000]
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_420
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_430
	movss [ebp-0xdfc], xmm6
	movss xmm3, dword [ebp-0xd84]
	movss [ebp-0xdf8], xmm3
	movss [ebp-0xdf4], xmm5
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm4
	movss [ebp-0xde8], xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_420:
	movsd xmm6, qword [_double_0_00000100]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_580:
	movss xmm0, dword [ebp-0xd88]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0xd8c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xd90]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm6, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_440
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss xmm5, dword [ebp-0xd88]
	mulss xmm5, xmm0
	movss xmm1, dword [ebp-0xd8c]
	mulss xmm1, xmm0
	movss [ebp-0xd80], xmm1
	movaps xmm6, xmm0
	mulss xmm6, [ebp-0xd90]
	movss xmm3, dword [ebp-0xe34]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	andps xmm3, [_data16_7fffffff]
	mulss xmm3, xmm7
	addss xmm3, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, [ebp-0xd80]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, [ebp-0xd80]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_450:
	movss xmm0, dword [eax]
	movaps xmm4, xmm0
	minss xmm4, xmm2
	movaps xmm2, xmm4
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_450
	movaps xmm4, xmm0
	addss xmm4, xmm2
	mulss xmm4, [_float_0_50000000]
	subss xmm1, xmm2
	movaps xmm2, xmm1
	mulss xmm2, [_float_0_50000000]
	movaps xmm1, xmm4
	andps xmm1, [_data16_7fffffff]
	movaps xmm0, xmm3
	addss xmm0, xmm2
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	ucomiss xmm1, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_460
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_470
	movss [ebp-0xdfc], xmm6
	movss xmm3, dword [ebp-0xd80]
	movss [ebp-0xdf8], xmm3
	movss [ebp-0xdf4], xmm5
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xdec], xmm4
	movss [ebp-0xde8], xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_460:
	movsd xmm6, qword [_double_0_00000100]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_440:
	movss xmm5, dword [ebp-0xe1c]
	subss xmm5, [ebp-0xdd0]
	movss xmm2, dword [ebp-0xe18]
	subss xmm2, [ebp-0xdd4]
	movss xmm3, dword [ebp-0xe14]
	subss xmm3, [ebp-0xdd8]
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	ucomisd xmm6, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_480
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	mulss xmm5, xmm0
	mulss xmm2, xmm0
	movss [ebp-0xd7c], xmm2
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss xmm4, dword [ebp-0xe34]
	mulss xmm4, xmm5
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm2, dword [ebp-0xe20]
	mulss xmm2, xmm1
	addss xmm4, xmm2
	andps xmm4, [_data16_7fffffff]
	mulss xmm4, xmm7
	addss xmm4, [ebp-0x68]
	movss xmm0, dword [ebp-0xdc4]
	mulss xmm0, xmm5
	movss xmm3, dword [ebp-0xdc8]
	mulss xmm3, [ebp-0xd7c]
	addss xmm0, xmm3
	movss xmm6, dword [ebp-0xdcc]
	mulss xmm6, xmm1
	addss xmm0, xmm6
	movss [ebp-0x38], xmm0
	movss xmm2, dword [ebp-0xdb8]
	mulss xmm2, xmm5
	movss xmm3, dword [ebp-0xdbc]
	mulss xmm3, [ebp-0xd7c]
	addss xmm2, xmm3
	movss [ebp-0xdb8], xmm2
	movss xmm6, dword [ebp-0xdc0]
	mulss xmm6, xmm1
	addss xmm2, xmm6
	movss [ebp-0x34], xmm2
	movss xmm2, dword [ebp-0xdac]
	mulss xmm2, xmm5
	movss xmm3, dword [ebp-0xdb0]
	mulss xmm3, [ebp-0xd7c]
	addss xmm2, xmm3
	movss [ebp-0xdac], xmm2
	movss xmm6, dword [ebp-0xdb4]
	mulss xmm6, xmm1
	addss xmm2, xmm6
	movss [ebp-0x30], xmm2
	movaps xmm2, xmm0
	movaps xmm3, xmm0
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_490:
	movss xmm0, dword [eax]
	movaps xmm6, xmm0
	minss xmm6, xmm2
	movaps xmm2, xmm6
	maxss xmm0, xmm3
	movaps xmm3, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_490
	addss xmm6, xmm0
	mulss xmm6, [_float_0_50000000]
	subss xmm3, xmm2
	mulss xmm3, [_float_0_50000000]
	movaps xmm0, xmm6
	andps xmm0, [_data16_7fffffff]
	movaps xmm2, xmm4
	addss xmm2, xmm3
	ucomiss xmm0, xmm2
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm0, xmm2
	ucomiss xmm0, [ebp-0xde8]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_480
	pxor xmm0, xmm0
	ucomiss xmm0, xmm6
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_500
	movss [ebp-0xdfc], xmm1
	movss xmm1, dword [ebp-0xd7c]
	movss [ebp-0xdf8], xmm1
	movss [ebp-0xdf4], xmm5
	movss [ebp-0xdf0], xmm3
	movss [ebp-0xdec], xmm6
	movaps xmm2, xmm5
	movaps xmm6, xmm1
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_590:
	movss xmm1, dword [ebp-0x68]
	mulss xmm2, xmm1
	addss xmm2, [ebp-0xe38]
	mulss xmm6, xmm1
	addss xmm6, [ebp-0xe2c]
	mulss xmm1, [ebp-0xdfc]
	addss xmm1, [ebp-0xe24]
	movss xmm3, dword [ebp-0xe30]
	addss xmm3, xmm2
	movss [ebp-0xe64], xmm3
	movss [ebp-0x48], xmm3
	movaps xmm5, xmm7
	mulss xmm5, [ebp-0x70]
	addss xmm5, xmm6
	movss [ebp-0x44], xmm5
	movaps xmm4, xmm7
	mulss xmm4, [ebp-0x6c]
	addss xmm4, xmm1
	movss [ebp-0x40], xmm4
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	movaps xmm3, xmm0
	mulss xmm3, [ebp-0x74]
	addss xmm3, xmm2
	movss [ebp-0x2c], xmm3
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x70]
	addss xmm2, xmm6
	movss [ebp-0x28], xmm2
	mulss xmm0, [ebp-0x6c]
	addss xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm6, dword [ebp-0xe64]
	subss xmm6, [esi]
	movss [ebp-0x48], xmm6
	mov eax, [ebp-0xd6c]
	subss xmm5, [eax]
	movss [ebp-0x44], xmm5
	mov edx, [ebp-0xd68]
	subss xmm4, [edx]
	movss [ebp-0x40], xmm4
	subss xmm3, [esi]
	movss [ebp-0x2c], xmm3
	subss xmm2, [eax]
	movss [ebp-0x28], xmm2
	subss xmm0, [edx]
	movss [ebp-0x24], xmm0
	xor dword [ebp-0xe94], 0x80000000
	movss xmm0, dword [ebp-0xe94]
	movss [ebp-0xf8], xmm0
	xor dword [ebp-0xe98], 0x80000000
	movss xmm1, dword [ebp-0xe98]
	movss [ebp-0xf4], xmm1
	xor dword [ebp-0xe9c], 0x80000000
	movss xmm2, dword [ebp-0xe9c]
	movss [ebp-0xf0], xmm2
	mov dword [ebp-0xec], 0x0
	lea ecx, [ebp-0xf8]
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x48]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_510
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300:
	add dword [ebp-0xe3c], 0x1
	add ebx, 0xc
	cmp edi, [ebp-0xe3c]
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_520
	mov eax, [ebp-0xd6c]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_270:
	movss xmm7, dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x80]
	movss [ebp-0xe38], xmm0
	movss xmm1, dword [ebp-0x74]
	movss [ebp-0xe34], xmm1
	mulss xmm1, xmm7
	movss [ebp-0xe30], xmm1
	addss xmm0, xmm1
	movss [ebp-0xddc], xmm0
	movss xmm2, dword [ebp-0x7c]
	movss [ebp-0xe2c], xmm2
	movss xmm3, dword [ebp-0x70]
	movss [ebp-0xe28], xmm3
	mulss xmm3, xmm7
	addss xmm2, xmm3
	movss [ebp-0xde0], xmm2
	movss xmm4, dword [ebp-0x78]
	movss [ebp-0xe24], xmm4
	movss xmm5, dword [ebp-0x6c]
	movss [ebp-0xe20], xmm5
	mulss xmm5, xmm7
	addss xmm4, xmm5
	movss [ebp-0xde4], xmm4
	movaps xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	movss xmm6, dword [ebp-0xe34]
	mulss xmm6, xmm0
	movss xmm1, dword [ebp-0xe38]
	addss xmm1, xmm6
	movss [ebp-0xdd0], xmm1
	movss xmm2, dword [ebp-0xe28]
	mulss xmm2, xmm0
	movss xmm3, dword [ebp-0xe2c]
	addss xmm3, xmm2
	movss [ebp-0xdd4], xmm3
	movss xmm4, dword [ebp-0xe20]
	mulss xmm4, xmm0
	movss xmm5, dword [ebp-0xe24]
	addss xmm5, xmm4
	movss [ebp-0xdd8], xmm5
	movss xmm6, dword [esi]
	subss xmm6, [ebp-0xe38]
	movss [ebp-0xdc4], xmm6
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0xe2c]
	movss [ebp-0xdc8], xmm0
	mov eax, [ebp-0xd68]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0xe24]
	movss [ebp-0xdcc], xmm0
	movss xmm1, dword [ebx+0x4]
	movss [ebp-0xe1c], xmm1
	subss xmm1, [ebp-0xe38]
	movss [ebp-0xdb8], xmm1
	movss xmm2, dword [ebx+0x8]
	movss [ebp-0xe18], xmm2
	subss xmm2, [ebp-0xe2c]
	movss [ebp-0xdbc], xmm2
	movss xmm3, dword [ebx+0xc]
	movss [ebp-0xe14], xmm3
	subss xmm3, [ebp-0xe24]
	movss [ebp-0xdc0], xmm3
	movss xmm4, dword [ebx-0x8]
	movss [ebp-0xe10], xmm4
	subss xmm4, [ebp-0xe38]
	movss [ebp-0xdac], xmm4
	movss xmm5, dword [ebx-0x4]
	movss [ebp-0xe0c], xmm5
	subss xmm5, [ebp-0xe2c]
	movss [ebp-0xdb0], xmm5
	movss xmm6, dword [ebx]
	movss [ebp-0xe08], xmm6
	subss xmm6, [ebp-0xe24]
	movss [ebp-0xdb4], xmm6
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0xe94], xmm0
	movaps xmm2, xmm0
	xorps xmm2, [_data16_80000000]
	movss xmm1, dword [ebp-0x54]
	movss [ebp-0xe98], xmm1
	movaps xmm5, xmm1
	xorps xmm5, [_data16_80000000]
	movss xmm3, dword [ebp-0x50]
	movss [ebp-0xe9c], xmm3
	movaps xmm6, xmm3
	xorps xmm6, [_data16_80000000]
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm4, qword [_double_0_00000100]
	ucomisd xmm4, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_530
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movaps xmm4, xmm2
	mulss xmm4, xmm0
	movaps xmm3, xmm5
	mulss xmm3, xmm0
	mulss xmm6, xmm0
	movss xmm5, dword [ebp-0xe34]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0xe28]
	mulss xmm0, xmm3
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0xe20]
	mulss xmm0, xmm6
	addss xmm5, xmm0
	andps xmm5, [_data16_7fffffff]
	mulss xmm5, xmm7
	addss xmm5, [ebp-0x68]
	movss xmm2, dword [ebp-0xdc4]
	mulss xmm2, xmm4
	movss xmm0, dword [ebp-0xdc8]
	mulss xmm0, xmm3
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xdcc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x38], xmm2
	movss xmm0, dword [ebp-0xdb8]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xdbc]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebp-0xdac]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xdb0]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdb4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm1, xmm2
	xor edx, edx
	lea eax, [ebp-0x34]
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_540:
	movss xmm0, dword [eax]
	minss xmm0, xmm1
	movaps xmm1, xmm0
	movss xmm0, dword [eax]
	maxss xmm0, xmm2
	movaps xmm2, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x2
	jnz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_540
	movaps xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0xdec], xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0xdec]
	movss [ebp-0xdec], xmm0
	subss xmm2, xmm1
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, xmm2
	movss [ebp-0xdf0], xmm1
	movaps xmm1, xmm0
	andps xmm1, [_data16_7fffffff]
	movss xmm0, dword [ebp-0xdf0]
	addss xmm0, xmm5
	ucomiss xmm1, xmm0
	ja _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	subss xmm1, xmm0
	movss [ebp-0xde8], xmm1
	ucomiss xmm1, [_float__340282346638528859811704]
	jbe _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_530
	movss [ebp-0xdfc], xmm6
	movss [ebp-0xdf8], xmm3
	movss [ebp-0xdf4], xmm4
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_550
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_280:
	movaps xmm4, xmm6
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_560
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_360:
	movapd xmm5, xmm3
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_570
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_400:
	movapd xmm6, xmm5
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_580
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_480:
	movss xmm2, dword [ebp-0xdf4]
	movss xmm6, dword [ebp-0xdf8]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_590
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_510:
	movss xmm0, dword [ebx+0x4]
	movaps xmm1, xmm0
	subss xmm1, [esi]
	movss xmm2, dword [ebx+0x8]
	movaps xmm3, xmm2
	mov eax, [ebp-0xd6c]
	subss xmm3, [eax]
	movss [ebp-0xd74], xmm3
	movss xmm6, dword [ebx+0xc]
	movaps xmm3, xmm6
	mov eax, [ebp-0xd68]
	subss xmm3, [eax]
	movss [ebp-0xd78], xmm3
	movss xmm5, dword [ebx-0x8]
	subss xmm5, xmm0
	movss xmm4, dword [ebx-0x4]
	subss xmm4, xmm2
	movss xmm3, dword [ebx]
	subss xmm3, xmm6
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x54]
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0x50]
	subss xmm0, xmm2
	movss [ebp-0xf8], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x50]
	mulss xmm3, [ebp-0x58]
	subss xmm0, xmm3
	movss [ebp-0xf4], xmm0
	mulss xmm4, [ebp-0x58]
	mulss xmm5, [ebp-0x54]
	subss xmm4, xmm5
	movss [ebp-0xf0], xmm4
	mulss xmm1, [ebp-0xf8]
	movss xmm5, dword [ebp-0xd74]
	mulss xmm5, xmm0
	addss xmm1, xmm5
	mulss xmm4, [ebp-0xd78]
	addss xmm1, xmm4
	cvtss2sd xmm1, xmm1
	subsd xmm1, [_double_0_00000100]
	cvtsd2ss xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xec], xmm0
	lea ecx, [ebp-0xf8]
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x48]
	call _Z27Phys_CapsuleClipEdgeToPlanePfS_S_
	test al, al
	jz _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	movss xmm7, dword [ebp-0x48]
	addss xmm7, [esi]
	movss [ebp-0x48], xmm7
	movss xmm6, dword [ebp-0x44]
	movss [ebp-0xe68], xmm6
	mov eax, [ebp-0xd6c]
	addss xmm6, [eax]
	movss [ebp-0xe68], xmm6
	movss [ebp-0x44], xmm6
	movss xmm0, dword [ebp-0x40]
	movss [ebp-0xe6c], xmm0
	mov eax, [ebp-0xd68]
	addss xmm0, [eax]
	movss [ebp-0xe6c], xmm0
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0xe70], xmm0
	addss xmm0, [esi]
	movss [ebp-0xe70], xmm0
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [ebp-0x28]
	movss [ebp-0xe74], xmm1
	mov eax, [ebp-0xd6c]
	addss xmm1, [eax]
	movss [ebp-0xe74], xmm1
	movss [ebp-0x28], xmm1
	movss xmm6, dword [ebp-0x24]
	mov edx, [ebp-0xd68]
	addss xmm6, [edx]
	movss [ebp-0x24], xmm6
	movss xmm1, dword [ebp-0x80]
	movss xmm2, dword [ebp-0x7c]
	movss xmm3, dword [ebp-0x78]
	movss xmm4, dword [ebp-0xdec]
	subss xmm4, [ebp-0xdf0]
	movaps xmm5, xmm7
	subss xmm5, xmm1
	mulss xmm5, [ebp-0xdf4]
	movss xmm0, dword [ebp-0xe68]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0xdf8]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0xe6c]
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xdfc]
	addss xmm5, xmm0
	subss xmm5, xmm4
	movss xmm0, dword [ebp-0xe70]
	subss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0xdf4]
	movss xmm0, dword [ebp-0xe74]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0xdf8]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm3
	mulss xmm0, [ebp-0xdfc]
	addss xmm1, xmm0
	subss xmm1, xmm4
	pxor xmm0, xmm0
	cmpss xmm0, xmm5, 0x2
	andps xmm5, xmm0
	pxor xmm2, xmm2
	orps xmm5, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	andps xmm1, xmm0
	orps xmm1, xmm2
	mov ecx, [numLocalContacts]
	cmp ecx, 0x1f
	jg _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss [eax+localContacts], xmm7
	movss xmm3, dword [ebp-0xe68]
	movss [edx+0x4], xmm3
	movss xmm4, dword [ebp-0xe6c]
	movss [edx+0x8], xmm4
	lea eax, [edx+0xc]
	movss xmm0, dword [ebp-0xdf4]
	movss [edx+0xc], xmm0
	movss xmm2, dword [ebp-0xdf8]
	movss [eax+0x4], xmm2
	movss xmm3, dword [ebp-0xdfc]
	movss [eax+0x8], xmm3
	movss [edx+0x18], xmm5
	mov eax, [ebp-0xe44]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
	cmp ecx, 0x1f
	jg _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+localContacts]
	add ecx, 0x1
	mov [numLocalContacts], ecx
	movss xmm0, dword [ebp-0xe70]
	movss [eax+localContacts], xmm0
	movss xmm2, dword [ebp-0xe74]
	movss [edx+0x4], xmm2
	movss [edx+0x8], xmm6
	lea eax, [edx+0xc]
	movss xmm3, dword [ebp-0xdf4]
	movss [edx+0xc], xmm3
	movss xmm4, dword [ebp-0xdf8]
	movss [eax+0x4], xmm4
	movss xmm5, dword [ebp-0xdfc]
	movss [eax+0x8], xmm5
	movss [edx+0x18], xmm1
	mov eax, [ebp-0xe44]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x1
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_300
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_320:
	movss xmm0, dword [ebp-0xd9c]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xdf4], xmm0
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdf8], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdfc], xmm5
	movss [ebp-0xdec], xmm4
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xde8], xmm1
	movss xmm4, dword [ebp-0xda8]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_560
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_350:
	movss xmm0, dword [ebp-0xd98]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0xdf4], xmm0
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdf8], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdfc], xmm5
	movss [ebp-0xdec], xmm4
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xde8], xmm1
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_330
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_390:
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdf4], xmm6
	movss xmm6, dword [ebp-0xd94]
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdf8], xmm6
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdfc], xmm5
	movss [ebp-0xdec], xmm4
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xde8], xmm1
	movsd xmm5, qword [_double_0_00000100]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_570
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_430:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdf4], xmm5
	movss xmm5, dword [ebp-0xd84]
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdf8], xmm5
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdfc], xmm6
	movss [ebp-0xdec], xmm4
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xde8], xmm1
	movsd xmm6, qword [_double_0_00000100]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_580
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_470:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdf4], xmm5
	movss xmm5, dword [ebp-0xd80]
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdf8], xmm5
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xdfc], xmm6
	movss [ebp-0xdec], xmm4
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm2
	movss [ebp-0xde8], xmm1
	movsd xmm6, qword [_double_0_00000100]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_440
_Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_500:
	xorps xmm5, [_data16_80000000]
	movss [ebp-0xdf4], xmm5
	movss xmm2, dword [ebp-0xd7c]
	xorps xmm2, [_data16_80000000]
	movss [ebp-0xdf8], xmm2
	xorps xmm1, [_data16_80000000]
	movss [ebp-0xdfc], xmm1
	movss [ebp-0xdec], xmm6
	xor dword [ebp-0xdec], 0x80000000
	movss [ebp-0xdf0], xmm3
	movaps xmm2, xmm5
	movss xmm6, dword [ebp-0xdf8]
	jmp _Z28Phys_CollideCapsuleWithBrushPK8cbrush_tPK7objInfoP7Results_590


;Phys_CollideCapsuleWithTriangleList(unsigned short const*, float const (*) [3], unsigned int, objInfo const*, int, Results*)
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov edi, [ebp+0xc]
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x1c]
	mov eax, [edx+0x4]
	cmp eax, [edx+0x8]
	jge _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10
	mov edx, [ecx+0x4]
	sub edx, 0x1
	movss xmm1, dword [ecx+0x8c]
	movss [ebp-0x68], xmm1
	movss xmm2, dword [ecx+0x94]
	movss [ebp-0x5c], xmm2
	movaps xmm0, xmm2
	addss xmm0, xmm1
	movss [ebp-0x60], xmm0
	mulss xmm1, xmm1
	movss [ebp-0x64], xmm1
	mov eax, [ecx+0x38]
	mov [ebp-0x80], eax
	mov eax, [ecx+0x3c]
	mov [ebp-0x7c], eax
	mov eax, [ecx+0x40]
	mov [ebp-0x78], eax
	lea edx, [edx+edx*2]
	lea edx, [ecx+edx*4+0x40]
	lea eax, [edx+0x4]
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edx+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm1
	movss [ebp-0x70], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm1
	movss [ebp-0x6c], xmm0
	xorps xmm1, xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x74]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x98], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x70]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x94], xmm0
	mulss xmm1, [ebp-0x6c]
	addss xmm1, [ebp-0x78]
	movss [ebp-0x90], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x74]
	addss xmm0, [ebp-0x80]
	movss [ebp-0x8c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x70]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x88], xmm0
	mulss xmm2, [ebp-0x6c]
	addss xmm2, [ebp-0x78]
	movss [ebp-0x84], xmm2
	mov dword [numLocalContacts], 0x0
	mov eax, [ecx+0x38]
	mov [ebp-0x24], eax
	mov eax, [ecx+0x3c]
	mov [ebp-0x20], eax
	mov eax, [ecx+0x40]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ecx+0x30]
	movss [ebp-0xb4], xmm0
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jnz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_180:
	mov edx, [numLocalContacts]
	mov [ebp-0xb0], edx
	cmp edx, 0x1
	jle _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30
	sub edx, 0x1
	mov [ebp-0xa8], edx
	xor edx, edx
	mov dword [ebp-0xa0], localContacts
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_50:
	mov edx, ecx
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_130:
	add dword [ebp-0xa0], 0x24
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_40:
	cmp edx, [ebp-0xa8]
	jge _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30
	lea ecx, [edx+0x1]
	mov [ebp-0x9c], ecx
	cmp [ebp-0xb0], ecx
	jle _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_50
	lea eax, [ecx+ecx*8]
	lea eax, [eax*4+localContacts]
	mov [ebp-0xa4], eax
	mov edi, ecx
	lea eax, [edx+edx*8]
	lea eax, [eax*4+localContacts]
	mov [ebp-0xac], eax
	mov eax, [ebp-0xb0]
	mov [ebp-0xb8], eax
	mov esi, [ebp-0xa4]
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_60
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_110:
	test eax, eax
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_70
	mov eax, 0x1
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_120:
	test eax, eax
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_80
	mov ecx, [ebp-0xac]
	movss xmm0, dword [ecx+0x18]
	ucomiss xmm0, [esi+0x18]
	jbe _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_90
	mov eax, [ebp-0xa4]
	mov dword [eax+0x20], 0x0
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_80:
	add edi, 0x1
	add esi, 0x24
	add dword [ebp-0xa4], 0x24
	cmp [ebp-0xb8], edi
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_100
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_60:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	mov [esp+0x4], esi
	mov edx, [ebp-0xac]
	mov [esp], edx
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	mov ebx, eax
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	lea eax, [esi+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp-0xac]
	add eax, 0xc
	mov [esp], eax
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	test ebx, ebx
	jnz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_110
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_70:
	xor eax, eax
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_120
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_90:
	mov edx, [ebp-0xa0]
	mov dword [edx+0x20], 0x0
	add edi, 0x1
	add esi, 0x24
	add dword [ebp-0xa4], 0x24
	cmp [ebp-0xb8], edi
	jnz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_60
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_100:
	mov edx, [ebp-0x9c]
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_130
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_30:
	mov edx, [numLocalContacts]
	test edx, edx
	jg _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_140
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_140:
	xor esi, esi
	mov ebx, localContacts
	mov edi, localContacts
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_150
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_160:
	add esi, 0x1
	add edi, 0x24
	add ebx, 0x24
	cmp esi, [numLocalContacts]
	jge _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_10
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_150:
	mov eax, [ebx+0x20]
	test eax, eax
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_160
	mov eax, [ebx+0x1c]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	lea eax, [edi+0xc]
	mov [esp+0x8], eax
	mov eax, [ebx+0x18]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call _Z19Phys_AddContactDataP7ResultsfPKfS2_i
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_160
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_20:
	mov ebx, [ebp+0x8]
	xor esi, esi
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_170
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_190:
	add esi, 0x1
	cmp [ebp+0x10], esi
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_180
_Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_170:
	movzx eax, word [ebx]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	mov edx, [eax]
	mov [ebp-0x58], edx
	mov edx, [eax+0x4]
	mov [ebp-0x54], edx
	mov eax, [eax+0x8]
	mov [ebp-0x50], eax
	movzx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	mov edx, [eax]
	mov [ebp-0x4c], edx
	mov edx, [eax+0x4]
	mov [ebp-0x48], edx
	mov eax, [eax+0x8]
	mov [ebp-0x44], eax
	movzx eax, word [ebx+0x4]
	lea eax, [eax+eax*2]
	lea eax, [edi+eax*4]
	add ebx, 0x6
	mov edx, [eax]
	mov [ebp-0x40], edx
	mov edx, [eax+0x4]
	mov [ebp-0x3c], edx
	mov eax, [eax+0x8]
	mov [ebp-0x38], eax
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	movss xmm0, dword [ebp-0xb4]
	movss [esp+0x8], xmm0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z25Phys_GetPlaneForTriangle2PA3_KfPS_fPf
	test eax, eax
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_190
	lea edx, [ebp-0x98]
	lea eax, [ebp-0x34]
	call _Z21Phys_TestCapsulePlanePKfPK7Capsule
	test eax, eax
	jz _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_190
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	lea ecx, [ebp-0x98]
	lea edx, [ebp-0x34]
	mov eax, [ebp+0x1c]
	call _Z31Phys_CapsuleBuildContactsForTriP7ResultsPKfPK7CapsuleS2_S2_S2_i
	jmp _Z35Phys_CollideCapsuleWithTriangleListPKtPA3_KfjPK7objInfoiP7Results_190
	nop


;Initialized global or static variables of phys_coll_capsulebrush:
SECTION .data


;Initialized constant data of phys_coll_capsulebrush:
SECTION .rdata


;Zero initialized global or static variables of phys_coll_capsulebrush:
SECTION .bss
numLocalContacts: resb 0x20
localContacts: resb 0x4e0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double_0_00000100:		dq 0x3eb0c6f7a0b5ed8d	; 1e-06
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

