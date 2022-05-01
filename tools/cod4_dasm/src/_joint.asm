;Imports of joint:
	extern atan2f
	extern dNormalize3
	extern dRFrom2Axes
	extern dQfromR
	extern dQMultiply1
	extern dQMultiply2
	extern dQMultiply3
	extern _Z10Com_PrintfiPKcz
	extern dPlaneSpace
	extern _Z2vaPKcz
	extern dSetZero

;Exports of joint:
	global _Z29getHingeAngleFromRelativeQuatPKfS0_
	global _Z7setAxesP7dxJointfffPfS1_
	global _Z18getUniversalAngle1PK16dxJointUniversal
	global _Z18getUniversalAngle2PK16dxJointUniversal
	global _Z30amotorSetEulerReferenceVectorsP13dxJointAMotor
	global _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f
	global _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi
	global _Z13jointGetInfo1PK7dxJointPNS_5Info1E
	global _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E
	global _Z9jointInitP7dxJoint
	global _ZN17dxJointLimitMotor3getEi
	global _ZN17dxJointLimitMotor3setEif
	global _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
	global dJointGetAMotorParam
	global dJointGetHingeParam
	global dJointGetSliderParam
	global dJointGetUniversalParam
	global dJointSetAMotorAxis
	global dJointSetAMotorMode
	global dJointSetAMotorNumAxes
	global dJointSetAMotorParam
	global dJointSetBallAnchor
	global dJointSetHingeAnchor
	global dJointSetHingeAxis
	global dJointSetHingeParam
	global dJointSetSliderParam
	global dJointSetUniversalParam


SECTION .text


;getHingeAngleFromRelativeQuat(float const*, float const*)
_Z29getHingeAngleFromRelativeQuatPKfS0_:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movss xmm5, dword [eax]
	movss xmm1, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movss xmm4, dword [eax+0xc]
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	addss xmm0, xmm2
	movaps xmm2, xmm4
	mulss xmm2, xmm4
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	mulss xmm1, [edx]
	mulss xmm3, [edx+0x4]
	addss xmm1, xmm3
	mulss xmm4, [edx+0x8]
	addss xmm1, xmm4
	ucomiss xmm1, [_float_0_00000000]
	jb _Z29getHingeAngleFromRelativeQuatPKfS0__10
	movss [esp+0x4], xmm5
	movss [esp], xmm0
	call atan2f
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	addss xmm0, xmm0
_Z29getHingeAngleFromRelativeQuatPKfS0__30:
	cvtss2sd xmm1, xmm0
	ucomisd xmm1, [_double_3_14159265]
	jbe _Z29getHingeAngleFromRelativeQuatPKfS0__20
	subsd xmm1, [_double_6_28318531]
	cvtsd2ss xmm0, xmm1
_Z29getHingeAngleFromRelativeQuatPKfS0__20:
	xorps xmm0, [_data16_80000000]
	leave
	ret
_Z29getHingeAngleFromRelativeQuatPKfS0__10:
	xorps xmm5, [_data16_80000000]
	movss [esp+0x4], xmm5
	movss [esp], xmm0
	call atan2f
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	addss xmm0, xmm0
	jmp _Z29getHingeAngleFromRelativeQuatPKfS0__30
	nop


;setAxes(dxJoint*, float, float, float, float*, float*)
_Z7setAxesP7dxJointfffPfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	movss [ebp-0x2c], xmm0
	movss [ebp-0x30], xmm1
	movss [ebp-0x34], xmm2
	mov ebx, edx
	mov esi, ecx
	mov eax, [eax+0x20]
	test eax, eax
	jz _Z7setAxesP7dxJointfffPfS1__10
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm1
	movss [ebp-0x20], xmm2
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x28]
	mov [esp], eax
	call dNormalize3
	test ebx, ebx
	jz _Z7setAxesP7dxJointfffPfS1__20
	mov eax, [edi+0x20]
	lea edx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x20]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [edx+0x4]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [edx+0x8]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	mov dword [ebx+0xc], 0x0
_Z7setAxesP7dxJointfffPfS1__20:
	test esi, esi
	jz _Z7setAxesP7dxJointfffPfS1__10
	mov edx, [edi+0x30]
	test edx, edx
	jz _Z7setAxesP7dxJointfffPfS1__30
	lea eax, [edx+0x100]
	movss xmm1, dword [edx+0x100]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [eax+0x10]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x20]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [esi], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x24]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [esi+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ebp-0x28]
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ebp-0x24]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x28]
	mulss xmm0, [ebp-0x20]
	addss xmm1, xmm0
	movss [esi+0x8], xmm1
_Z7setAxesP7dxJointfffPfS1__40:
	mov dword [esi+0xc], 0x0
_Z7setAxesP7dxJointfffPfS1__10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7setAxesP7dxJointfffPfS1__30:
	movss xmm0, dword [ebp-0x2c]
	movss [esi], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [esi+0x4], xmm0
	movss xmm0, dword [ebp-0x34]
	movss [esi+0x8], xmm0
	jmp _Z7setAxesP7dxJointfffPfS1__40
	nop
	add [eax], al


;getUniversalAngle1(dxJointUniversal const*)
_Z18getUniversalAngle1PK16dxJointUniversal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, eax
	mov edx, [eax+0x20]
	pxor xmm0, xmm0
	test edx, edx
	jz _Z18getUniversalAngle1PK16dxJointUniversal_10
	lea edi, [eax+0x60]
	lea eax, [edx+0x100]
	movss xmm3, dword [esi+0x60]
	movss xmm1, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x100]
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	movaps xmm7, xmm3
	mulss xmm7, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm6, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm6, xmm2
	mov ecx, [esi+0x30]
	test ecx, ecx
	jz _Z18getUniversalAngle1PK16dxJointUniversal_20
	lea edx, [esi+0x70]
	lea eax, [ecx+0x100]
	movss xmm3, dword [esi+0x70]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm5, xmm3
	mulss xmm5, [ecx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm5, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	mulss xmm3, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm3, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm3, xmm2
_Z18getUniversalAngle1PK16dxJointUniversal_30:
	movss [esp+0x18], xmm3
	movss [esp+0x14], xmm4
	movss [esp+0x10], xmm5
	movss [esp+0xc], xmm6
	movss [esp+0x8], xmm7
	movss xmm0, dword [ebp-0x7c]
	movss [esp+0x4], xmm0
	lea ebx, [ebp-0x78]
	mov [esp], ebx
	call dRFrom2Axes
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call dQfromR
	mov [esp+0x8], ebx
	mov eax, [esi+0x20]
	add eax, 0xf0
	mov [esp+0x4], eax
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call dQMultiply1
	lea eax, [esi+0x80]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call dQMultiply2
	mov edx, edi
	mov eax, ebx
	call _Z29getHingeAngleFromRelativeQuatPKfS0_
_Z18getUniversalAngle1PK16dxJointUniversal_10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18getUniversalAngle1PK16dxJointUniversal_20:
	movss xmm5, dword [esi+0x70]
	movss xmm4, dword [esi+0x74]
	movss xmm3, dword [esi+0x78]
	jmp _Z18getUniversalAngle1PK16dxJointUniversal_30
	nop


;getUniversalAngle2(dxJointUniversal const*)
_Z18getUniversalAngle2PK16dxJointUniversal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, eax
	mov ecx, [eax+0x20]
	pxor xmm0, xmm0
	test ecx, ecx
	jz _Z18getUniversalAngle2PK16dxJointUniversal_10
	lea edx, [eax+0x60]
	lea eax, [ecx+0x100]
	movss xmm3, dword [esi+0x60]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x100]
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	movaps xmm7, xmm3
	mulss xmm7, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm6, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm6, xmm2
	mov edx, [esi+0x30]
	test edx, edx
	jz _Z18getUniversalAngle2PK16dxJointUniversal_20
	lea edi, [esi+0x70]
	lea eax, [edx+0x100]
	movss xmm3, dword [esi+0x70]
	movss xmm1, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm5, xmm3
	mulss xmm5, [edx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm5, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	mulss xmm3, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm3, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm3, xmm2
_Z18getUniversalAngle2PK16dxJointUniversal_40:
	movss [esp+0x18], xmm6
	movss [esp+0x14], xmm7
	movss xmm0, dword [ebp-0x7c]
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	lea ebx, [ebp-0x78]
	mov [esp], ebx
	call dRFrom2Axes
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call dQfromR
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z18getUniversalAngle2PK16dxJointUniversal_30
	mov [esp+0x8], ebx
	add eax, 0xf0
	mov [esp+0x4], eax
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call dQMultiply1
_Z18getUniversalAngle2PK16dxJointUniversal_30:
	lea eax, [esi+0x90]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call dQMultiply2
	mov edx, edi
	mov eax, ebx
	call _Z29getHingeAngleFromRelativeQuatPKfS0_
	xorps xmm0, [_data16_80000000]
_Z18getUniversalAngle2PK16dxJointUniversal_10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18getUniversalAngle2PK16dxJointUniversal_20:
	movss xmm5, dword [esi+0x70]
	movss xmm4, dword [esi+0x74]
	movss xmm3, dword [esi+0x78]
	lea edi, [esi+0x70]
	jmp _Z18getUniversalAngle2PK16dxJointUniversal_40
	nop


;amotorSetEulerReferenceVectors(dxJointAMotor*)
_Z30amotorSetEulerReferenceVectorsP13dxJointAMotor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, eax
	mov esi, [eax+0x20]
	test esi, esi
	jz _Z30amotorSetEulerReferenceVectorsP13dxJointAMotor_10
	mov ecx, [eax+0x30]
	test ecx, ecx
	jz _Z30amotorSetEulerReferenceVectorsP13dxJointAMotor_20
	lea eax, [ecx+0x100]
	lea edx, [ebx+0x74]
	movss xmm3, dword [ebx+0x74]
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm2, xmm3
	mulss xmm2, [ecx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	mulss xmm3, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm3, xmm1
	mulss xmm5, [eax+0x28]
	addss xmm3, xmm5
	lea edx, [ebx+0x108]
	lea eax, [esi+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x100]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ebx+0x108], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [edx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm4, [eax+0x18]
	addss xmm2, xmm4
	mulss xmm3, [eax+0x28]
	addss xmm2, xmm3
	movss [edx+0x8], xmm2
	mov ecx, [ebx+0x20]
	lea eax, [ecx+0x100]
	lea edx, [ebx+0x54]
	movss xmm3, dword [ebx+0x54]
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm2, xmm3
	mulss xmm2, [ecx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	mulss xmm3, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm3, xmm1
	mulss xmm5, [eax+0x28]
	addss xmm3, xmm5
	lea ecx, [ebx+0x118]
	mov edx, [ebx+0x30]
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ebx+0x118], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm4, [eax+0x18]
	addss xmm2, xmm4
	mulss xmm3, [eax+0x28]
	addss xmm2, xmm3
	movss [ecx+0x8], xmm2
_Z30amotorSetEulerReferenceVectorsP13dxJointAMotor_10:
	pop ebx
	pop esi
	pop ebp
	ret
_Z30amotorSetEulerReferenceVectorsP13dxJointAMotor_20:
	lea edx, [eax+0x108]
	lea eax, [esi+0x100]
	movss xmm1, dword [esi+0x100]
	mulss xmm1, [ebx+0x74]
	movss xmm0, dword [eax+0x10]
	mulss xmm0, [ebx+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x20]
	mulss xmm0, [ebx+0x7c]
	addss xmm1, xmm0
	movss [ebx+0x108], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebx+0x74]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ebx+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x24]
	mulss xmm0, [ebx+0x7c]
	addss xmm1, xmm0
	movss [edx+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ebx+0x74]
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ebx+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x28]
	mulss xmm0, [ebx+0x7c]
	addss xmm1, xmm0
	movss [edx+0x8], xmm1
	lea ecx, [ebx+0x118]
	mov eax, [ebx+0x20]
	lea edx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [ebx+0x54]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x5c]
	addss xmm1, xmm0
	movss [ebx+0x118], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ebx+0x54]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebx+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [ebx+0x5c]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ebx+0x54]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [ebx+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [ebx+0x5c]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	pop ebx
	pop esi
	pop ebp
	ret


;amotorComputeGlobalAxes(dxJointAMotor const*, float (*) [4])
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ecx, edx
	cmp dword [eax+0x44], 0x1
	jz _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_10
	mov eax, [eax+0x40]
	test eax, eax
	jle _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_20
	mov [ebp-0x20], esi
	mov ebx, edx
	mov [ebp-0x1c], esi
	xor edi, edi
	mov edx, esi
	jmp _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_30
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_50:
	cmp eax, 0x2
	jz _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_40
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x54]
	mov [ebx], eax
	mov eax, [edx+0x58]
	mov [ebx+0x4], eax
	mov eax, [edx+0x5c]
	mov [ebx+0x8], eax
	add edi, 0x1
	add dword [ebp-0x20], 0x4
	add ebx, 0x10
	add dword [ebp-0x1c], 0x10
	cmp edi, [esi+0x40]
	jge _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_20
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_60:
	mov edx, [ebp-0x20]
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_30:
	mov eax, [edx+0x48]
	cmp eax, 0x1
	jnz _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_50
	mov edx, edi
	shl edx, 0x4
	lea edx, [edx+esi+0x50]
	mov eax, [esi+0x20]
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_70:
	lea ecx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [ecx+0x10]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ecx+0x14]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x18]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [ecx+0x20]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [ecx+0x24]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x28]
	mulss xmm0, [edx+0xc]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	add edi, 0x1
	add dword [ebp-0x20], 0x4
	add ebx, 0x10
	add dword [ebp-0x1c], 0x10
	cmp edi, [esi+0x40]
	jl _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_60
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_40:
	mov edx, edi
	shl edx, 0x4
	lea edx, [edx+esi+0x50]
	mov eax, [esi+0x30]
	jmp _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_70
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_10:
	mov eax, [eax+0x20]
	lea edx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [esi+0x54]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+0x5c]
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [esi+0x54]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [esi+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [esi+0x5c]
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [esi+0x54]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [esi+0x58]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [esi+0x5c]
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	mov edx, [esi+0x30]
	test edx, edx
	jz _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_80
	lea ebx, [ecx+0x20]
	lea eax, [edx+0x100]
	movss xmm1, dword [edx+0x100]
	mulss xmm1, [esi+0x74]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [esi+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [esi+0x7c]
	addss xmm1, xmm0
	movss [ecx+0x20], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [esi+0x74]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [esi+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [esi+0x7c]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [eax+0x20]
	mulss xmm1, [esi+0x74]
	movss xmm0, dword [eax+0x24]
	mulss xmm0, [esi+0x78]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x28]
	mulss xmm0, [esi+0x7c]
	addss xmm1, xmm0
	movss [ebx+0x8], xmm1
	movaps xmm0, xmm1
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_90:
	lea eax, [ecx+0x10]
	movss xmm1, dword [ebx+0x4]
	mulss xmm1, [ecx+0x8]
	mulss xmm0, [ecx+0x4]
	subss xmm1, xmm0
	movss [ecx+0x10], xmm1
	movss xmm1, dword [ebx+0x8]
	mulss xmm1, [ecx]
	movss xmm0, dword [ebx]
	mulss xmm0, [ecx+0x8]
	subss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx]
	mulss xmm1, [ecx+0x4]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [ecx]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	mov [esp], eax
	call dNormalize3
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_80:
	lea ebx, [ecx+0x20]
	mov eax, [esi+0x74]
	mov [ecx+0x20], eax
	mov eax, [esi+0x78]
	mov [ebx+0x4], eax
	mov eax, [esi+0x7c]
	mov [ebx+0x8], eax
	movss xmm0, dword [ebx+0x8]
	jmp _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f_90


;setFixedOrientation(dxJoint*, dxJoint::Info2*, float*, int)
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x40], eax
	mov esi, edx
	mov [ebp-0x44], ecx
	mov edx, [edx+0x18]
	mov ecx, [ebp+0x8]
	imul ecx, edx
	lea eax, [ecx*4]
	mov [ebp-0x3c], eax
	mov eax, [esi+0xc]
	mov ebx, 0x3f800000
	mov edi, [ebp-0x3c]
	mov [eax+edi], ebx
	lea eax, [edx+ecx]
	lea edi, [eax*4]
	mov eax, [esi+0xc]
	mov [eax+edi+0x4], ebx
	lea edx, [ecx+edx*2]
	lea ecx, [edx*4]
	mov eax, [esi+0xc]
	mov [eax+ecx+0x8], ebx
	mov eax, [ebp-0x40]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_10
	mov eax, [esi+0x14]
	mov edx, 0xbf800000
	mov ebx, [ebp-0x3c]
	mov [ebx+eax], edx
	mov eax, [esi+0x14]
	mov [edi+eax+0x4], edx
	mov eax, [esi+0x14]
	mov [ecx+eax+0x8], edx
	mov edi, [ebp-0x40]
	mov eax, [edi+0x30]
	test eax, eax
	jz _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_20
	add eax, 0xf0
	mov [esp+0x8], eax
	mov eax, [edi+0x20]
	add eax, 0xf0
	mov [esp+0x4], eax
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call dQMultiply1
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x28]
	mov [esp], eax
	call dQMultiply2
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_50:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x28]
	ja _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_30
	movss xmm3, dword [ebp-0x24]
	movss xmm5, dword [ebp-0x20]
	movss xmm4, dword [ebp-0x1c]
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_40:
	mov edi, [ebp-0x40]
	mov ebx, [edi+0x20]
	lea eax, [ebx+0x100]
	movaps xmm2, xmm3
	mulss xmm2, [eax+0x10]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x14]
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x18]
	addss xmm2, xmm0
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x20]
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x24]
	addss xmm1, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x28]
	addss xmm1, xmm0
	mov edx, [ebp+0x8]
	shl edx, 0x2
	movss xmm0, dword [esi]
	mulss xmm0, [esi+0x4]
	addss xmm0, xmm0
	mov ecx, [esi+0x1c]
	mulss xmm3, [ebx+0x100]
	mulss xmm5, [eax+0x4]
	addss xmm3, xmm5
	mulss xmm4, [eax+0x8]
	addss xmm3, xmm4
	mulss xmm3, xmm0
	movss [ecx+edx], xmm3
	mov eax, [esi+0x1c]
	mulss xmm2, xmm0
	movss [eax+edx+0x4], xmm2
	mov eax, [esi+0x1c]
	mulss xmm1, xmm0
	movss [edx+eax+0x8], xmm1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_30:
	movss xmm0, dword [_data16_80000000]
	movss xmm3, dword [ebp-0x24]
	xorps xmm3, xmm0
	movss [ebp-0x24], xmm3
	movss xmm5, dword [ebp-0x20]
	xorps xmm5, xmm0
	movss [ebp-0x20], xmm5
	movss xmm4, dword [ebp-0x1c]
	xorps xmm4, xmm0
	movss [ebp-0x1c], xmm4
	jmp _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_40
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_20:
	mov ebx, edi
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_60:
	mov edx, [ebp-0x44]
	mov [esp+0x8], edx
	mov eax, [ebx+0x20]
	add eax, 0xf0
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call dQMultiply3
	jmp _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_50
_Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_10:
	mov ebx, eax
	jmp _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi_60
	nop


;jointGetInfo1(dxJoint const*, dxJoint::Info1*)
_Z13jointGetInfo1PK7dxJointPNS_5Info1E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp dword [esi+0x14], 0x7
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_10
	mov eax, [esi+0x14]
	jmp dword [eax*4+_Z13jointGetInfo1PK7dxJointPNS_5Info1E_jumptab_0]
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_10:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	cmp dword [esi+0x44], 0x1
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_20
	xor eax, eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_100:
	mov eax, [esi+0x40]
	test eax, eax
	jle _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	mov edx, esi
	xor ecx, ecx
	pxor xmm2, xmm2
	lea eax, [esi+0x84]
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_50:
	movss xmm1, dword [ebp+ecx*4-0x28]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_40
	mov dword [eax+0x24], 0x1
	subss xmm1, xmm0
	movss [eax+0x28], xmm1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_70:
	add dword [edi], 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_80:
	add ecx, 0x1
	add eax, 0x2c
	add edx, 0x2c
	cmp ecx, [esi+0x40]
	jl _Z13jointGetInfo1PK7dxJointPNS_5Info1E_50
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_30:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_40:
	ucomiss xmm1, [eax+0xc]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_60
	mov dword [eax+0x24], 0x2
	subss xmm1, [eax+0xc]
	movss [eax+0x28], xmm1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_70
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_60:
	mov dword [eax+0x24], 0x0
	movss xmm0, dword [edx+0x88]
	ucomiss xmm0, xmm2
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_70
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_80
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_20:
	lea edx, [ebp-0x58]
	mov eax, esi
	call _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f
	lea edx, [esi+0x108]
	mov ecx, [esi+0x20]
	lea eax, [ecx+0x100]
	movss xmm3, dword [esi+0x108]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x100]
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	movaps xmm7, xmm3
	mulss xmm7, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm7, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm7, xmm2
	mov ecx, [esi+0x30]
	test ecx, ecx
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_90
	lea edx, [esi+0x118]
	lea eax, [ecx+0x100]
	movss xmm3, dword [esi+0x118]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x100]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x10]
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	mulss xmm3, [eax+0x20]
	movss [ebp-0x64], xmm3
	mulss xmm1, [eax+0x24]
	addss xmm1, xmm3
	movss [ebp-0x64], xmm1
	mulss xmm2, [eax+0x28]
	addss xmm2, xmm1
	movss [ebp-0x64], xmm2
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_390:
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x74], xmm0
	movss xmm5, dword [ebp-0x50]
	movss xmm6, dword [ebp-0x58]
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x6c], xmm0
	movss xmm2, dword [ebp-0x68]
	mulss xmm2, [ebp-0x38]
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm4
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, xmm7
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x38]
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, xmm5
	mulss xmm7, xmm6
	subss xmm0, xmm7
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x68]
	mulss xmm0, [ebp-0x74]
	subss xmm4, xmm0
	mulss xmm4, [ebp-0x6c]
	addss xmm1, xmm4
	movss [esp+0x4], xmm2
	movss [esp], xmm1
	movss [ebp-0xc8], xmm5
	movss [ebp-0xd8], xmm6
	call atan2f
	fstp dword [ebp-0xdc]
	movss xmm0, dword [ebp-0xdc]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x28], xmm0
	movss xmm3, dword [ebp-0x40]
	movss xmm0, dword [ebp-0x44]
	movss [ebp-0x70], xmm0
	movss xmm4, dword [ebp-0x48]
	movss xmm2, dword [ebp-0x74]
	mulss xmm2, xmm3
	movss xmm5, dword [ebp-0xc8]
	mulss xmm0, xmm5
	subss xmm2, xmm0
	mulss xmm2, [ebp-0x38]
	mulss xmm5, xmm4
	movss xmm6, dword [ebp-0xd8]
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	subss xmm5, xmm0
	mulss xmm5, [ebp-0x34]
	addss xmm2, xmm5
	mulss xmm6, [ebp-0x70]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm4
	subss xmm6, xmm0
	mulss xmm6, [ebp-0x6c]
	addss xmm2, xmm6
	movss xmm0, dword [ebp-0x38]
	mulss xmm0, [ebp-0x58]
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movss [esp+0x4], xmm2
	movss [esp], xmm0
	movss [ebp-0xa8], xmm3
	movss [ebp-0xb8], xmm4
	call atan2f
	fstp dword [ebp-0xdc]
	movss xmm0, dword [ebp-0xdc]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, [ebp-0x6c]
	movss xmm3, dword [ebp-0xa8]
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, xmm3
	subss xmm1, xmm0
	mulss xmm1, [ebp-0x5c]
	mulss xmm3, [ebp-0x38]
	movss xmm4, dword [ebp-0xb8]
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm4
	subss xmm3, xmm0
	mulss xmm3, [ebp-0x60]
	addss xmm1, xmm3
	mulss xmm4, [ebp-0x34]
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, [ebp-0x38]
	subss xmm4, xmm0
	mulss xmm4, [ebp-0x64]
	addss xmm1, xmm4
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [ebp-0x64]
	movss [esp+0x4], xmm1
	movss [esp], xmm0
	call atan2f
	fstp dword [ebp-0xdc]
	movss xmm0, dword [ebp-0xdc]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x20], xmm0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_100
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_490:
	pxor xmm1, xmm1
	ucomiss xmm1, [esi+0x48]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_110
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_360:
	test byte [esi+0x44], 0x1
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_120
	movss xmm2, dword [esi+0x48]
	xor ecx, ecx
	ucomiss xmm2, xmm1
	seta cl
	add ecx, 0x1
	ucomiss xmm1, [esi+0x4c]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_130
	movss xmm0, dword [esi+0x4c]
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_420:
	lea eax, [ecx+0x1]
	ucomiss xmm0, xmm1
	cmova ecx, eax
	ucomiss xmm2, [_float_3402823466385288598117041]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	ucomiss xmm0, [_float_3402823466385288598117041]
	jnz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_140
	jp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_140
	add eax, 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_140:
	mov [esi+0x40], ecx
	mov [edi], ecx
	mov [edi+0x4], eax
	cmp byte [esi+0x3c], 0x0
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_0xp_info1_m_d__n
	mov dword [esp], 0x14
	call _Z10Com_PrintfiPKcz
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_480:
	mov dword [edi+0x4], 0x5
	movss xmm0, dword [esi+0x74]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	add eax, 0x5
	mov [edi], eax
	mov dword [esi+0x94], 0x0
	movss xmm0, dword [esi+0x78]
	movss [ebp-0x7c], xmm0
	ucomiss xmm0, [_float__340282346638528859811704]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_150
	movss xmm0, dword [esi+0x7c]
	movss [ebp-0x88], xmm0
	ucomiss xmm0, [_float_3402823466385288598117041]
	jp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	jae _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_330:
	ucomiss xmm0, [ebp-0x7c]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	lea edx, [esi+0x40]
	mov ebx, [esi+0x20]
	lea eax, [ebx+0x100]
	movss xmm3, dword [esi+0x40]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm7, xmm3
	mulss xmm7, [ebx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm7, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm6, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm6, xmm0
	movaps xmm5, xmm3
	mulss xmm5, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm5, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm5, xmm2
	mov ecx, [esi+0x30]
	test ecx, ecx
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_160
	lea edx, [esi+0x60]
	lea eax, [ecx+0x100]
	movss xmm2, dword [esi+0x60]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x58], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x54], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x50], xmm2
	mov edx, ebx
	mov eax, ecx
	mov ebx, 0x1
	lea ecx, [ebp-0x54]
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_170:
	movss xmm0, dword [edx+0xe0]
	subss xmm0, [ecx-0x4]
	subss xmm0, [eax+0xe0]
	movss [ecx-0x4], xmm0
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x4
	add eax, 0x4
	cmp ebx, 0x4
	jnz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_170
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_440:
	movaps xmm3, xmm7
	mulss xmm3, [ebp-0x58]
	mulss xmm6, [ebp-0x54]
	addss xmm3, xmm6
	mulss xmm5, [ebp-0x50]
	addss xmm3, xmm5
	movss xmm0, dword [ebp-0x7c]
	ucomiss xmm0, xmm3
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_180
	mov dword [esi+0x94], 0x1
	subss xmm3, [esi+0x78]
	movss [esi+0x98], xmm3
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_190
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_470:
	mov dword [edi+0x4], 0x5
	movss xmm0, dword [esi+0x94]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	add eax, 0x5
	mov [edi], eax
	movss xmm1, dword [esi+0x98]
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, [_double__3_14159265]
	jae _Z13jointGetInfo1PK7dxJointPNS_5Info1E_200
	cvtss2sd xmm0, [esi+0x9c]
	ucomisd xmm0, [_double_3_14159265]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	jp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_200:
	movss xmm0, dword [esi+0x9c]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	lea eax, [esi+0x80]
	mov [ebp-0x84], eax
	lea eax, [esi+0x60]
	mov [ebp-0x80], eax
	mov edx, [esi+0x20]
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_210
	add eax, 0xf0
	mov [esp+0x8], eax
	lea eax, [edx+0xf0]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call dQMultiply1
	mov eax, [ebp-0x84]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call dQMultiply2
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_450:
	mov edx, [ebp-0x80]
	mov eax, ebx
	call _Z29getHingeAngleFromRelativeQuatPKfS0_
	movaps xmm1, xmm0
	lea eax, [esi+0x90]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_220
	mov dword [eax+0x24], 0x1
	movaps xmm0, xmm1
	subss xmm0, [eax+0x8]
	movss [eax+0x28], xmm0
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_190:
	mov dword [edi], 0x6
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_460:
	mov dword [edi], 0x3
	mov dword [edi+0x4], 0x3
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_500:
	mov dword [edi+0x4], 0x4
	mov dword [edi], 0x4
	pxor xmm1, xmm1
	movss xmm0, dword [esi+0xa4]
	ucomiss xmm0, xmm1
	seta byte [ebp-0x76]
	movss xmm0, dword [esi+0xd0]
	ucomiss xmm0, xmm1
	seta byte [ebp-0x75]
	movss xmm1, dword [esi+0xa8]
	cvtss2sd xmm0, xmm1
	movsd xmm2, qword [_double__3_14159265]
	ucomisd xmm0, xmm2
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_230
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_340:
	movss xmm0, dword [esi+0xac]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_240
	mov ebx, 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_350:
	movss xmm1, dword [esi+0xd4]
	cvtss2sd xmm0, xmm1
	ucomisd xmm0, xmm2
	jae _Z13jointGetInfo1PK7dxJointPNS_5Info1E_250
	cvtss2sd xmm0, [esi+0xd8]
	ucomisd xmm0, [_double_3_14159265]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_260
	jp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_260
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_250:
	movss xmm0, dword [esi+0xd8]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_260
	mov byte [ebp-0x77], 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_370:
	test bl, bl
	jnz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_270
	cmp byte [ebp-0x77], 0x0
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_280
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_270:
	mov eax, esi
	call _Z18getUniversalAngle1PK16dxJointUniversal
	mov eax, esi
	movss [ebp-0x98], xmm0
	call _Z18getUniversalAngle2PK16dxJointUniversal
	movaps xmm2, xmm0
	test bl, bl
	movss xmm1, dword [ebp-0x98]
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_290
	lea eax, [esi+0xa0]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_300
	mov dword [eax+0x24], 0x1
	subss xmm1, xmm0
	movss [eax+0x28], xmm1
	mov byte [ebp-0x76], 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_290:
	cmp byte [ebp-0x77], 0x0
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_280
	lea eax, [esi+0xcc]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm2
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_310
	mov dword [eax+0x24], 0x1
	subss xmm2, xmm0
	movss [eax+0x28], xmm2
	mov byte [ebp-0x75], 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_280:
	cmp byte [ebp-0x76], 0x0
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_320
	add dword [edi], 0x1
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_320:
	cmp byte [ebp-0x75], 0x0
	jz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	add dword [edi], 0x1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_520:
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_510:
	mov dword [edi], 0x6
	mov dword [edi+0x4], 0x6
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_150:
	movss xmm0, dword [esi+0x7c]
	movss [ebp-0x88], xmm0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_330
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_120:
	movss xmm0, dword [esi+0x48]
	xor ecx, ecx
	ucomiss xmm0, xmm1
	seta cl
	lea ecx, [ecx+ecx+0x1]
	ucomiss xmm0, [_float_3402823466385288598117041]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	add eax, eax
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_140
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_230:
	cvtss2sd xmm0, [esi+0xac]
	ucomisd xmm0, [_double_3_14159265]
	ja _Z13jointGetInfo1PK7dxJointPNS_5Info1E_240
	jnp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_340
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_240:
	xor ebx, ebx
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_350
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_110:
	movss [esi+0x48], xmm1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_360
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_260:
	mov byte [ebp-0x77], 0x0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_370
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_220:
	ucomiss xmm1, [eax+0xc]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_380
	mov dword [eax+0x24], 0x2
	movaps xmm0, xmm1
	subss xmm0, [eax+0xc]
	movss [eax+0x28], xmm0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_190
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_180:
	ucomiss xmm3, [ebp-0x88]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
	mov dword [esi+0x94], 0x2
	subss xmm3, [esi+0x7c]
	movss [esi+0x98], xmm3
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_190
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_90:
	movss xmm0, dword [esi+0x118]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [esi+0x11c]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [esi+0x120]
	movss [ebp-0x64], xmm0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_390
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_300:
	ucomiss xmm1, [eax+0xc]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_400
	mov dword [eax+0x24], 0x2
	subss xmm1, [eax+0xc]
	movss [eax+0x28], xmm1
	mov byte [ebp-0x76], 0x1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_290
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_310:
	ucomiss xmm2, [eax+0xc]
	jb _Z13jointGetInfo1PK7dxJointPNS_5Info1E_410
	mov dword [eax+0x24], 0x2
	subss xmm2, [eax+0xc]
	movss [eax+0x28], xmm2
	mov byte [ebp-0x75], 0x1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_280
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_380:
	mov dword [eax+0x24], 0x0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_30
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_130:
	movss [esi+0x4c], xmm1
	movaps xmm0, xmm1
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_420
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_160:
	mov eax, ebx
	mov edx, esi
	mov ecx, 0x1
	lea ebx, [ebp-0x58]
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_430:
	movss xmm0, dword [eax+0xe0]
	subss xmm0, [edx+0x60]
	movss [ebx+ecx*4-0x4], xmm0
	add ecx, 0x1
	add eax, 0x4
	add edx, 0x4
	cmp ecx, 0x4
	jnz _Z13jointGetInfo1PK7dxJointPNS_5Info1E_430
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_440
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_210:
	mov eax, [ebp-0x84]
	mov [esp+0x8], eax
	lea eax, [edx+0xf0]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x28]
	mov [esp], ebx
	call dQMultiply3
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_450
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_400:
	mov dword [eax+0x24], 0x0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_290
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_410:
	mov dword [eax+0x24], 0x0
	jmp _Z13jointGetInfo1PK7dxJointPNS_5Info1E_280
	nop
	
	
_Z13jointGetInfo1PK7dxJointPNS_5Info1E_jumptab_0:
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_10
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_460
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_470
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_480
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_490
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_500
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_510
	dd _Z13jointGetInfo1PK7dxJointPNS_5Info1E_520


;jointGetInfo2(dxJoint*, dxWorldStepInfo*, dxJoint::Info2*)
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov eax, [ebp+0x8]
	cmp dword [eax+0x14], 0x7
	ja _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_10
	mov eax, [eax+0x14]
	jmp dword [eax*4+_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_jumptab_0]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_910:
	mov edi, [ebp+0x8]
	add edi, 0x50
	mov edx, [ebp+0x10]
	mov ecx, [edx+0x18]
	mov eax, [edx+0x8]
	mov edx, 0x3f800000
	mov [eax], edx
	lea ebx, [ecx*4]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x8]
	mov [eax+ebx+0x4], edx
	lea esi, [ecx*8]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x8]
	mov [eax+esi+0x8], edx
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	lea eax, [ecx+0x100]
	mov edx, [ebp+0x8]
	add edx, 0x40
	mov [ebp-0xdc], edx
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+0x40]
	mov edx, [ebp-0xdc]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x44], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x40], xmm2
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0xc]
	movss [eax+0x4], xmm2
	movss xmm1, dword [ebp-0x44]
	mov eax, [ecx+0xc]
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	movss [eax+0x8], xmm0
	mov eax, [ecx+0xc]
	xorps xmm2, xmm5
	movss [eax+ebx], xmm2
	movss xmm0, dword [ebp-0x48]
	mov eax, [ecx+0xc]
	movss [ebx+eax+0x8], xmm0
	mov eax, [ecx+0xc]
	movss [eax+esi], xmm1
	mov eax, [ecx+0xc]
	xorps xmm0, xmm5
	movss [esi+eax+0x4], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_20
	mov eax, [ecx+0x10]
	mov edx, 0xbf800000
	mov [eax], edx
	mov eax, [ecx+0x10]
	mov [ebx+eax+0x4], edx
	mov eax, [ecx+0x10]
	mov [esi+eax+0x8], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x30]
	lea eax, [edx+0x100]
	movss xmm2, dword [ecx+0x50]
	movss xmm3, dword [edi+0x4]
	movss xmm4, dword [edi+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x30], xmm2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0x34]
	mov eax, [edx+0x14]
	movss [eax+0x8], xmm1
	mov eax, [edx+0x14]
	movss [ebx+eax], xmm2
	movss xmm2, dword [ebp-0x38]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [ebx+eax+0x8], xmm0
	mov eax, [edx+0x14]
	xorps xmm1, xmm5
	movss [esi+eax], xmm1
	mov eax, [edx+0x14]
	movss [esi+eax+0x4], xmm2
	mov ebx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_760:
	mov ecx, [ebp+0x10]
	movss xmm1, dword [ecx]
	mulss xmm1, [ecx+0x4]
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_30
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_40:
	mov esi, [ebp+0x10]
	mov ecx, [esi+0x1c]
	lea edx, [ebx*4]
	mov edi, [ebp+0x8]
	mov eax, [edi+0x30]
	movss xmm0, dword [ebp+edx-0x38]
	addss xmm0, [eax+ebx*4+0xe0]
	subss xmm0, [ebp+edx-0x48]
	mov eax, [edi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [ecx+ebx*4], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_40
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_750:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	lea edx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mov edx, [edi+0x30]
	test edx, edx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_50
	lea eax, [edx+0x100]
	movss xmm1, dword [edx+0x100]
	mulss xmm1, [edi+0x70]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edi+0x74]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edi+0x78]
	addss xmm1, xmm0
	movss [ebp-0x88], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [edi+0x70]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [edi+0x74]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [edi+0x78]
	addss xmm1, xmm0
	movss [ebp-0x84], xmm1
	movss xmm1, dword [eax+0x20]
	mulss xmm1, [edi+0x70]
	movss xmm0, dword [eax+0x24]
	mulss xmm0, [edi+0x74]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x28]
	mulss xmm0, [edi+0x78]
	addss xmm1, xmm0
	movss [ebp-0x80], xmm1
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_710:
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, [ebp-0x88]
	movss xmm3, dword [ebp-0x24]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x84]
	addss xmm0, xmm1
	movss xmm4, dword [ebp-0x20]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x80]
	addss xmm0, xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x28]
	movss xmm5, dword [ebp-0x88]
	subss xmm5, xmm1
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss xmm2, dword [ebp-0x84]
	subss xmm2, xmm1
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x80]
	subss xmm1, xmm0
	mulss xmm3, xmm1
	mulss xmm4, xmm2
	subss xmm3, xmm4
	movss [ebp-0x58], xmm3
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x20]
	mulss xmm1, [ebp-0x28]
	subss xmm0, xmm1
	movss [ebp-0x54], xmm0
	mulss xmm2, [ebp-0x28]
	mulss xmm5, [ebp-0x24]
	subss xmm2, xmm5
	movss [ebp-0x50], xmm2
	lea eax, [ebp-0x58]
	mov [esp], eax
	call dNormalize3
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x18]
	lea eax, [eax+eax*2]
	lea ecx, [eax*4]
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0xc]
	mov eax, [ebp-0x58]
	mov [edx+ecx], eax
	mov edx, [ebx+0xc]
	mov eax, [ebp-0x54]
	mov [edx+ecx+0x4], eax
	mov edx, [ebx+0xc]
	mov eax, [ebp-0x50]
	mov [ecx+edx+0x8], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_60
	mov eax, [ebx+0x14]
	movss xmm0, dword [ebp-0x58]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov eax, [ebx+0x14]
	movss xmm0, dword [ebp-0x54]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x4], xmm0
	mov eax, [ebx+0x14]
	movss xmm0, dword [ebp-0x50]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x8], xmm0
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_60:
	mov edi, [ebp+0x10]
	mov eax, [edi+0x1c]
	movss xmm2, dword [edi]
	mulss xmm2, [edi+0x4]
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [ebp-0x88]
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, [ebp-0x84]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, [ebp-0x80]
	addss xmm1, xmm0
	xorps xmm1, [_data16_80000000]
	mulss xmm2, xmm1
	movss [eax+0xc], xmm2
	mov dword [esp+0x14], 0x1
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x4
	mov [esp+0x8], edi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	add eax, 0xa0
	mov [esp], eax
	call _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
	mov dword [esp+0x14], 0x1
	lea edx, [ebp-0x88]
	mov [esp+0x10], edx
	add eax, 0x4
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, edx
	add eax, 0xcc
	mov [esp], eax
	call _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80:
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_860:
	mov eax, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_10:
	lea ebx, [ebp-0x88]
	mov edx, ebx
	call _Z23amotorComputeGlobalAxesPK13dxJointAMotorPA4_f
	mov [ebp-0x38], ebx
	lea eax, [ebp-0x78]
	mov [ebp-0x34], eax
	lea eax, [ebp-0x68]
	mov [ebp-0x30], eax
	mov esi, [ebp+0x8]
	cmp dword [esi+0x44], 0x1
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_70
	mov edi, esi
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_110:
	mov ecx, [edi+0x40]
	test ecx, ecx
	jle _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
	mov ebx, edi
	xor edi, edi
	xor esi, esi
	add ebx, 0x84
	mov edx, [ebp+0x8]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_90
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_100:
	mov edx, ecx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_90:
	mov dword [esp+0x14], 0x1
	mov eax, [ebp+esi*4-0x38]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
	add edi, eax
	add esi, 0x1
	add ebx, 0x2c
	mov ecx, [ebp+0x8]
	cmp esi, [ecx+0x40]
	jl _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_100
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_70:
	movss xmm3, dword [ebp-0x84]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x70]
	movss xmm2, dword [ebp-0x80]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x74]
	subss xmm0, xmm1
	movss [ebp-0x58], xmm0
	mulss xmm2, [ebp-0x78]
	movss xmm0, dword [ebp-0x88]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x70]
	subss xmm2, xmm1
	movss [ebp-0x54], xmm2
	mulss xmm0, [ebp-0x74]
	mulss xmm3, [ebp-0x78]
	subss xmm0, xmm3
	movss [ebp-0x50], xmm0
	lea eax, [ebp-0x58]
	mov [ebp-0x30], eax
	movss xmm3, dword [ebp-0x74]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x60]
	movss xmm2, dword [ebp-0x70]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x64]
	subss xmm0, xmm1
	movss [ebp-0x48], xmm0
	mulss xmm2, [ebp-0x68]
	movss xmm0, dword [ebp-0x78]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x60]
	subss xmm2, xmm1
	movss [ebp-0x44], xmm2
	mulss xmm0, [ebp-0x64]
	mulss xmm3, [ebp-0x68]
	subss xmm0, xmm3
	movss [ebp-0x40], xmm0
	lea eax, [ebp-0x48]
	mov [ebp-0x38], eax
	mov edi, [ebp+0x8]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_110
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_890:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x18]
	lea esi, [eax+eax*2]
	mov [ebp-0x9c], esi
	shl eax, 0x2
	mov [ebp-0x98], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	lea edx, [eax+0xe0]
	mov [ebp-0x94], edx
	lea ebx, [eax+0x100]
	mov eax, [edi+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_120
	lea ecx, [eax+0xe0]
	add eax, 0x100
	mov [ebp-0x90], eax
	mov edx, 0x1
	lea esi, [ebp-0x28]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_130:
	lea eax, [edx*4]
	movss xmm0, dword [eax+ecx-0x4]
	mov edi, [ebp-0x94]
	subss xmm0, [eax+edi-0x4]
	movss [esi+eax-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_130
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_820:
	mov ecx, [ebp+0x8]
	add ecx, 0x50
	mov dword [esp], 0x0
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	call _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi
	movss xmm1, dword [ebx]
	mov eax, [ebp+0x8]
	mulss xmm1, [eax+0x40]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [eax+0x44]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [eax+0x48]
	addss xmm1, xmm0
	movss [ebp-0x88], xmm1
	movss xmm1, dword [ebx+0x10]
	mulss xmm1, [eax+0x40]
	movss xmm0, dword [ebx+0x14]
	mulss xmm0, [eax+0x44]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x18]
	mulss xmm0, [eax+0x48]
	addss xmm1, xmm0
	movss [ebp-0x84], xmm1
	movss xmm1, dword [ebx+0x20]
	mulss xmm1, [eax+0x40]
	movss xmm0, dword [ebx+0x24]
	mulss xmm0, [eax+0x44]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0x28]
	mulss xmm0, [eax+0x48]
	addss xmm1, xmm0
	movss [ebp-0x80], xmm1
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea edx, [ebp-0x88]
	mov [esp], edx
	call dPlaneSpace
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_140
	movss xmm6, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x50]
	movss xmm5, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x54]
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	movaps xmm1, xmm5
	mulss xmm1, xmm2
	subss xmm0, xmm1
	movss xmm7, dword [_float_0_50000000]
	mulss xmm0, xmm7
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebp-0x58]
	movss xmm4, dword [ebp-0x28]
	movaps xmm0, xmm5
	mulss xmm0, xmm1
	mulss xmm3, xmm4
	subss xmm0, xmm3
	mulss xmm0, xmm7
	movss [ebp-0x34], xmm0
	mulss xmm2, xmm4
	mulss xmm1, xmm6
	subss xmm2, xmm1
	mulss xmm2, xmm7
	movss [ebp-0x30], xmm2
	mov edi, [ebp-0x9c]
	shl edi, 0x2
	mov ecx, edi
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_150:
	mov esi, [ebp+0x10]
	mov edx, [esi+0x14]
	mov eax, [ebp+ebx*4-0x38]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_150
	mov ecx, edi
	and ebx, 0xffffff00
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_160:
	mov eax, [ebp+0x10]
	mov edx, [eax+0x14]
	mov eax, [ebp+ebx*4-0x38]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_160
	movss xmm2, dword [ebp-0x40]
	movss xmm3, dword [ebp-0x44]
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	movaps xmm1, xmm5
	mulss xmm1, xmm3
	subss xmm0, xmm1
	mulss xmm0, xmm7
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm5, xmm0
	mulss xmm2, xmm4
	subss xmm5, xmm2
	mulss xmm5, xmm7
	movss [ebp-0x34], xmm5
	mulss xmm4, xmm3
	mulss xmm6, xmm0
	subss xmm4, xmm6
	mulss xmm4, xmm7
	movss [ebp-0x30], xmm4
	mov esi, [ebp-0x98]
	shl esi, 0x2
	mov ecx, esi
	and ebx, 0xffffff00
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_170:
	mov eax, [ebp+0x10]
	mov edx, [eax+0x14]
	mov eax, [ebp+ebx*4-0x38]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_170
	mov ecx, esi
	and ebx, 0xffffff00
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_180:
	mov eax, [ebp+0x10]
	mov edx, [eax+0x14]
	mov eax, [ebp+ebx*4-0x38]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_180
	mov edx, edi
	xor ecx, ecx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_190:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x10]
	movss xmm0, dword [ebp+ecx*4-0x58]
	xorps xmm0, [_data16_80000000]
	movss [edx+eax], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_190
	mov edx, esi
	and ecx, 0xffffff00
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_200:
	mov esi, [ebp+0x10]
	mov eax, [esi+0x10]
	movss xmm0, dword [ebp+ecx*4-0x48]
	xorps xmm0, [_data16_80000000]
	movss [edx+eax], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_200
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_140:
	mov ecx, [ebp-0x9c]
	shl ecx, 0x2
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_210:
	mov edi, [ebp+0x10]
	mov edx, [edi+0x8]
	mov eax, [ebp+ebx*4-0x58]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_210
	mov ecx, [ebp-0x98]
	shl ecx, 0x2
	and ebx, 0xffffff00
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_220:
	mov eax, [ebp+0x10]
	mov edx, [eax+0x8]
	mov eax, [ebp+ebx*4-0x48]
	mov [ecx+edx], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_220
	mov edx, [ebp+0x10]
	movss xmm5, dword [edx]
	mulss xmm5, [edx+0x4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_230
	mov eax, ecx
	add eax, 0x60
	movss xmm2, dword [ecx+0x60]
	movss xmm3, dword [eax+0x4]
	movss xmm4, dword [eax+0x8]
	movaps xmm0, xmm2
	mov ebx, [ebp-0x90]
	mulss xmm0, [ebx]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x18]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm2, [ebx+0x20]
	mulss xmm3, [ebx+0x24]
	addss xmm2, xmm3
	mulss xmm4, [ebx+0x28]
	addss xmm2, xmm4
	movss [ebp-0x30], xmm2
	mov ecx, 0x1
	lea edi, [ebp-0x38]
	lea esi, [ebp-0x28]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_240:
	lea eax, [ecx*4]
	lea edx, [esi+eax]
	movss xmm0, dword [edx-0x4]
	addss xmm0, [edi+eax-0x4]
	movss [edx-0x4], xmm0
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_240
	movss xmm2, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	movss xmm4, dword [ebp-0x20]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x58]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	mulss xmm0, xmm5
	movss [eax+0xc], xmm0
	mov eax, [esi+0x1c]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_840:
	mulss xmm2, [ebp-0x48]
	mulss xmm3, [ebp-0x44]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x40]
	addss xmm2, xmm4
	mulss xmm5, xmm2
	movss [eax+0x10], xmm5
	mov dword [esp+0x14], 0x0
	lea esi, [ebp-0x88]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x5
	mov edi, [ebp+0x10]
	mov [esp+0x8], edi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	add eax, 0x70
	mov [esp], eax
	call _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_880:
	mov edi, [ebp+0x8]
	add edi, 0x50
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x18]
	mov eax, [eax+0x8]
	mov edx, 0x3f800000
	mov [eax], edx
	lea ebx, [ecx*4]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x8]
	mov [eax+ebx+0x4], edx
	lea esi, [ecx*8]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x8]
	mov [eax+esi+0x8], edx
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	lea eax, [ecx+0x100]
	mov edx, [ebp+0x8]
	add edx, 0x40
	mov [ebp-0xdc], edx
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+0x40]
	mov edx, [ebp-0xdc]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x88], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x84], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x80], xmm2
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0xc]
	movss [eax+0x4], xmm2
	movss xmm1, dword [ebp-0x84]
	mov eax, [ecx+0xc]
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	movss [eax+0x8], xmm0
	mov eax, [ecx+0xc]
	xorps xmm2, xmm5
	movss [eax+ebx], xmm2
	movss xmm0, dword [ebp-0x88]
	mov eax, [ecx+0xc]
	movss [ebx+eax+0x8], xmm0
	mov eax, [ecx+0xc]
	movss [eax+esi], xmm1
	mov eax, [ecx+0xc]
	xorps xmm0, xmm5
	movss [esi+eax+0x4], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_250
	mov eax, [ecx+0x10]
	mov edx, 0xbf800000
	mov [eax], edx
	mov eax, [ecx+0x10]
	mov [ebx+eax+0x4], edx
	mov eax, [ecx+0x10]
	mov [esi+eax+0x8], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x30]
	lea eax, [edx+0x100]
	movss xmm2, dword [ecx+0x50]
	movss xmm3, dword [edi+0x4]
	movss xmm4, dword [edi+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x24], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x20], xmm2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0x24]
	mov eax, [edx+0x14]
	movss [eax+0x8], xmm1
	mov eax, [edx+0x14]
	movss [ebx+eax], xmm2
	movss xmm2, dword [ebp-0x28]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [ebx+eax+0x8], xmm0
	mov eax, [edx+0x14]
	xorps xmm1, xmm5
	movss [esi+eax], xmm1
	mov eax, [edx+0x14]
	movss [esi+eax+0x4], xmm2
	mov ebx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_810:
	mov ecx, [ebp+0x10]
	movss xmm1, dword [ecx]
	mulss xmm1, [ecx+0x4]
	mov ecx, [ebx+0x30]
	test ecx, ecx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_260
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_270:
	mov esi, [ebp+0x10]
	mov ecx, [esi+0x1c]
	lea edx, [ebx*4]
	mov edi, [ebp+0x8]
	mov eax, [edi+0x30]
	movss xmm0, dword [ebp+edx-0x28]
	addss xmm0, [eax+ebx*4+0xe0]
	subss xmm0, [ebp+edx-0x88]
	mov eax, [edi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [ecx+ebx*4], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_270
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_800:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	lea edx, [eax+0x100]
	movss xmm1, dword [eax+0x100]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [edi+0x60]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [edi+0x64]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [edi+0x68]
	addss xmm1, xmm0
	movss [ebp-0x30], xmm1
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea edi, [ebp-0x38]
	mov [esp], edi
	call dPlaneSpace
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x18]
	lea eax, [ecx+ecx*2]
	lea ebx, [eax*4]
	mov esi, [ebp+0x10]
	mov edx, [esi+0xc]
	mov eax, [ebp-0x48]
	mov [edx+ebx], eax
	mov edx, [esi+0xc]
	mov eax, [ebp-0x44]
	mov [edx+ebx+0x4], eax
	mov edx, [esi+0xc]
	mov eax, [ebp-0x40]
	mov [ebx+edx+0x8], eax
	shl ecx, 0x4
	mov edx, [esi+0xc]
	mov eax, [ebp-0x58]
	mov [edx+ecx], eax
	mov edx, [esi+0xc]
	mov eax, [ebp-0x54]
	mov [edx+ecx+0x4], eax
	mov edx, [esi+0xc]
	mov eax, [ebp-0x50]
	mov [ecx+edx+0x8], eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_280
	mov eax, [esi+0x14]
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x48]
	xorps xmm0, xmm1
	movss [ebx+eax], xmm0
	mov eax, [esi+0x14]
	movss xmm0, dword [ebp-0x44]
	xorps xmm0, xmm1
	movss [ebx+eax+0x4], xmm0
	mov eax, [esi+0x14]
	movss xmm0, dword [ebp-0x40]
	xorps xmm0, xmm1
	movss [ebx+eax+0x8], xmm0
	mov eax, [esi+0x14]
	movss xmm0, dword [ebp-0x58]
	xorps xmm0, xmm1
	movss [ecx+eax], xmm0
	mov eax, [esi+0x14]
	movss xmm0, dword [ebp-0x54]
	xorps xmm0, xmm1
	movss [ecx+eax+0x4], xmm0
	mov eax, [esi+0x14]
	movss xmm0, dword [ebp-0x50]
	xorps xmm0, xmm1
	movss [ecx+eax+0x8], xmm0
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x30]
	test ecx, ecx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_290
	mov ebx, edx
	lea eax, [ecx+0x100]
	add edx, 0x70
	movss xmm3, dword [ebx+0x70]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm7, xmm3
	mulss xmm7, [ecx+0x100]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x8]
	addss xmm7, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [eax+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x14]
	addss xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm4, xmm0
	movaps xmm6, xmm3
	mulss xmm6, [eax+0x20]
	mulss xmm1, [eax+0x24]
	addss xmm6, xmm1
	mulss xmm2, [eax+0x28]
	addss xmm6, xmm2
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_600:
	movss xmm3, dword [ebp-0x34]
	movss xmm1, dword [ebp-0x30]
	movaps xmm2, xmm6
	mulss xmm2, xmm3
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	subss xmm2, xmm0
	movss xmm0, dword [ebp-0x38]
	movaps xmm5, xmm7
	mulss xmm5, xmm1
	mulss xmm6, xmm0
	subss xmm5, xmm6
	mulss xmm4, xmm0
	mulss xmm7, xmm3
	subss xmm4, xmm7
	mov eax, [ebp+0x10]
	movss xmm3, dword [eax]
	mulss xmm3, [eax+0x4]
	mov edx, eax
	mov eax, [eax+0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x44]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x40]
	addss xmm0, xmm1
	mulss xmm0, xmm3
	movss [eax+0xc], xmm0
	mov eax, [edx+0x1c]
	mulss xmm2, [ebp-0x58]
	mulss xmm5, [ebp-0x54]
	addss xmm2, xmm5
	mulss xmm4, [ebp-0x50]
	addss xmm2, xmm4
	mulss xmm3, xmm2
	movss [eax+0x10], xmm3
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], edi
	mov dword [esp+0xc], 0x5
	mov [esp+0x8], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov eax, ecx
	add eax, 0x90
	mov [esp], eax
	call _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_870:
	mov edi, [ebp+0x8]
	add edi, 0x50
	mov ebx, [ebp+0x10]
	mov ecx, [ebx+0x18]
	mov eax, [ebx+0x8]
	mov edx, 0x3f800000
	mov [eax], edx
	lea ebx, [ecx*4]
	mov esi, [ebp+0x10]
	mov eax, [esi+0x8]
	mov [eax+ebx+0x4], edx
	lea esi, [ecx*8]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x8]
	mov [eax+esi+0x8], edx
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	lea eax, [ecx+0x100]
	mov edx, [ebp+0x8]
	add edx, 0x40
	mov [ebp-0xdc], edx
	mov edx, [ebp+0x8]
	movss xmm2, dword [edx+0x40]
	mov edx, [ebp-0xdc]
	movss xmm3, dword [edx+0x4]
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x48], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x44], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x40], xmm2
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0xc]
	movss [eax+0x4], xmm2
	movss xmm1, dword [ebp-0x44]
	mov eax, [ecx+0xc]
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	movss [eax+0x8], xmm0
	mov eax, [ecx+0xc]
	xorps xmm2, xmm5
	movss [eax+ebx], xmm2
	movss xmm0, dword [ebp-0x48]
	mov eax, [ecx+0xc]
	movss [ebx+eax+0x8], xmm0
	mov eax, [ecx+0xc]
	movss [eax+esi], xmm1
	mov eax, [ecx+0xc]
	xorps xmm0, xmm5
	movss [esi+eax+0x4], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x30]
	test edx, edx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_300
	mov eax, [ecx+0x10]
	mov edx, 0xbf800000
	mov [eax], edx
	mov eax, [ecx+0x10]
	mov [ebx+eax+0x4], edx
	mov eax, [ecx+0x10]
	mov [esi+eax+0x8], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x30]
	lea eax, [edx+0x100]
	movss xmm2, dword [ecx+0x50]
	movss xmm3, dword [edi+0x4]
	movss xmm4, dword [edi+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebp-0x30], xmm2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0x34]
	mov eax, [edx+0x14]
	movss [eax+0x8], xmm1
	mov eax, [edx+0x14]
	movss [ebx+eax], xmm2
	movss xmm2, dword [ebp-0x38]
	mov eax, [edx+0x14]
	movaps xmm0, xmm2
	xorps xmm0, xmm5
	movss [ebx+eax+0x8], xmm0
	mov eax, [edx+0x14]
	xorps xmm1, xmm5
	movss [esi+eax], xmm1
	mov eax, [edx+0x14]
	movss [esi+eax+0x4], xmm2
	mov ebx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_780:
	mov ecx, [ebp+0x10]
	movss xmm1, dword [ecx]
	mulss xmm1, [ecx+0x4]
	mov ecx, [ebx+0x30]
	test ecx, ecx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_310
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_320:
	mov esi, [ebp+0x10]
	mov ecx, [esi+0x1c]
	lea edx, [ebx*4]
	mov edi, [ebp+0x8]
	mov eax, [edi+0x30]
	movss xmm0, dword [ebp+edx-0x38]
	addss xmm0, [eax+ebx*4+0xe0]
	subss xmm0, [ebp+edx-0x48]
	mov eax, [edi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [ecx+ebx*4], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_320
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_900:
	mov edx, [ebp+0x10]
	mov edi, [edx+0x18]
	lea ecx, [edi+edi]
	mov [ebp-0x8c], ecx
	mov ebx, [ebp+0x8]
	test byte [ebx+0x18], 0x2
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_330
	movss xmm0, dword [ebx+0x80]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebx+0x84]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ebx+0x88]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x30], xmm0
	mov edx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_590:
	pxor xmm7, xmm7
	movss [ebp-0x2c], xmm7
	mov eax, [edx+0x20]
	mov ecx, 0x1
	lea ebx, [ebp-0x48]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_340:
	movss xmm0, dword [edx+0x70]
	subss xmm0, [eax+0xe0]
	movss [ebx+ecx*4-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_340
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x38]
	mov [edx], eax
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x34]
	mov [edx+0x4], eax
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x30]
	mov [edx+0x8], eax
	movss xmm6, dword [ebp-0x44]
	movss xmm5, dword [ebp-0x40]
	mov eax, [ebx+0xc]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x30]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x34]
	subss xmm0, xmm1
	movss [eax], xmm0
	movss xmm4, dword [ebp-0x48]
	mov eax, [ebx+0xc]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x38]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x30]
	subss xmm0, xmm1
	movss [eax+0x4], xmm0
	mov eax, [ebx+0xc]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x34]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x38]
	subss xmm0, xmm1
	movss [eax+0x8], xmm0
	mov esi, [ebp+0x8]
	mov eax, [esi+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_350
	mov edx, esi
	mov cl, 0x1
	lea ebx, [ebp-0x58]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_360:
	movss xmm0, dword [edx+0x70]
	subss xmm0, [eax+0xe0]
	movss [ebx+ecx*4-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_360
	mov edx, [ebp+0x10]
	mov eax, [edx+0x10]
	movss xmm0, dword [ebp-0x38]
	xorps xmm0, [_data16_80000000]
	movss [eax], xmm0
	mov eax, [edx+0x10]
	movss xmm0, dword [ebp-0x34]
	xorps xmm0, [_data16_80000000]
	movss [eax+0x4], xmm0
	mov eax, [edx+0x10]
	movss xmm0, dword [ebp-0x30]
	xorps xmm0, [_data16_80000000]
	movss [eax+0x8], xmm0
	movss xmm3, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x50]
	mov eax, [edx+0x14]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x30]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x34]
	subss xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x58]
	mov eax, [edx+0x14]
	mulss xmm1, [ebp-0x38]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x30]
	subss xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	movss [eax+0x4], xmm1
	mov eax, [edx+0x14]
	mulss xmm0, [ebp-0x34]
	mulss xmm3, [ebp-0x38]
	subss xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss [eax+0x8], xmm0
	mov ebx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_690:
	mov ecx, [ebp+0x10]
	movss xmm1, dword [ecx+0x4]
	test byte [ebx+0x44], 0x8
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_370
	movss xmm1, dword [ebx+0x58]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_630:
	mulss xmm1, [esi]
	movss xmm0, dword [eax+0x90]
	mov edx, [ebp+0xc]
	subss xmm0, [edx+0x28]
	movaps xmm2, xmm7
	maxss xmm2, xmm0
	movaps xmm0, xmm2
	movss xmm2, dword [edx+0x24]
	mulss xmm0, xmm1
	ucomiss xmm0, xmm2
	jbe _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_380
	mov eax, [esi+0x1c]
	movss [eax], xmm2
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_640:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x44]
	test al, 0x10
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_390
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x20]
	mov eax, [ecx+0x5c]
	mov [edx], eax
	mov eax, [ecx+0x44]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_390:
	test al, 0x4
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_400
	mov esi, [ebp+0x8]
	mov edx, [esi+0x20]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x8]
	lea ebx, [edx+0x130]
	mov ecx, [ecx+0xc]
	lea esi, [edx+0x140]
	movss xmm3, dword [eax]
	mulss xmm3, [edx+0x130]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm3, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm3, xmm0
	movss xmm1, dword [ecx]
	mulss xmm1, [edx+0x140]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	addss xmm3, xmm1
	mov eax, [ebp+0x8]
	mov esi, [eax+0x30]
	test esi, esi
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_410
	mov edx, [ebp+0x10]
	mov eax, [edx+0x10]
	lea ecx, [esi+0x130]
	mov edx, [edx+0x14]
	lea ebx, [esi+0x140]
	movss xmm2, dword [eax]
	mulss xmm2, [esi+0x130]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm2, xmm0
	movss xmm1, dword [edx]
	mulss xmm1, [esi+0x140]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	addss xmm3, xmm2
	mov esi, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_850:
	movss xmm1, dword [esi+0x54]
	ucomiss xmm1, xmm7
	jb _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_400
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm1
	jbe _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_400
	movss xmm0, dword [esi+0x50]
	xorps xmm0, [_data16_80000000]
	mulss xmm0, xmm3
	mov edx, [ebp+0x10]
	mov eax, [edx+0x1c]
	ucomiss xmm0, [eax]
	jbe _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_420
	movss [eax], xmm0
	mov ecx, [ebp+0x10]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_610:
	mov eax, [ecx+0x24]
	mov dword [eax], 0x0
	mov eax, [ecx+0x28]
	mov dword [eax], 0x7f7fffff
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x40], 0x1
	jle _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_430
	test byte [ebx+0x44], 0x2
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_440
	mov eax, [ebx+0x9c]
	mov [ebp-0x88], eax
	mov eax, [ebx+0xa0]
	mov [ebp-0x84], eax
	movss xmm0, dword [ebx+0xa4]
	movss [ebp-0x80], xmm0
	mulss xmm0, [ebp-0x34]
	movss xmm2, dword [ebp-0x30]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x84]
	subss xmm0, xmm1
	movss [ebp-0x28], xmm0
	mulss xmm2, [ebp-0x88]
	movss xmm1, dword [ebp-0x38]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x80]
	subss xmm2, xmm0
	movss [ebp-0x24], xmm2
	mulss xmm1, [ebp-0x84]
	movss xmm0, dword [ebp-0x34]
	mulss xmm0, [ebp-0x88]
	subss xmm1, xmm0
	movss [ebp-0x20], xmm1
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_680:
	lea ecx, [edi*4]
	mov esi, [ebp+0x10]
	mov edx, [esi+0x8]
	mov eax, [ebp-0x88]
	mov [edx+ecx], eax
	mov edx, [esi+0x8]
	mov eax, [ebp-0x84]
	mov [edx+ecx+0x4], eax
	mov edx, [esi+0x8]
	mov eax, [ebp-0x80]
	mov [ecx+edx+0x8], eax
	mov eax, [esi+0xc]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x80]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x84]
	subss xmm0, xmm1
	movss [ecx+eax], xmm0
	mov eax, [esi+0xc]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x88]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x80]
	subss xmm0, xmm1
	movss [ecx+eax+0x4], xmm0
	mov eax, [esi+0xc]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x84]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x88]
	subss xmm0, xmm1
	movss [ecx+eax+0x8], xmm0
	mov edi, [ebp+0x8]
	mov edi, [edi+0x30]
	test edi, edi
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_450
	mov eax, [esi+0x10]
	movss xmm0, dword [ebp-0x88]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov eax, [esi+0x10]
	movss xmm0, dword [ebp-0x84]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x4], xmm0
	mov eax, [esi+0x10]
	movss xmm0, dword [ebp-0x80]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x8], xmm0
	movss xmm3, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x50]
	mov eax, [esi+0x14]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x80]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x84]
	subss xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	movss xmm0, dword [ebp-0x58]
	mov eax, [esi+0x14]
	mulss xmm1, [ebp-0x88]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x80]
	subss xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	movss [ecx+eax+0x4], xmm1
	mov eax, [esi+0x14]
	mulss xmm0, [ebp-0x84]
	mulss xmm3, [ebp-0x88]
	subss xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x8], xmm0
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_450:
	mov eax, [ebp+0x8]
	test byte [eax+0x44], 0x20
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_460
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x1c]
	mov eax, [eax+0x60]
	mov [edx+0x4], eax
	mov edx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_660:
	mov edi, [ebp+0x10]
	mov eax, [edi+0x24]
	movss xmm0, dword [edx+0x48]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov edx, [edi+0x28]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x48]
	mov [ecx+edx], eax
	mov eax, [ebx+0x44]
	test ah, 0x10
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_470
	mov eax, [edi+0x2c]
	mov dword [eax+0x4], 0x0
	mov eax, [ebx+0x44]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_470:
	test al, al
	jns _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_480
	mov esi, [ebp+0x10]
	mov edx, [esi+0x20]
	mov edi, [ebp+0x8]
	mov eax, [edi+0x68]
	mov [edx+0x4], eax
	mov eax, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_650:
	cmp dword [eax+0x40], 0x2
	jle _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_490
	mov ecx, [ebp-0x8c]
	shl ecx, 0x2
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x28]
	mov [edx+ecx], eax
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x24]
	mov [edx+ecx+0x4], eax
	mov edx, [ebx+0x8]
	mov eax, [ebp-0x20]
	mov [ecx+edx+0x8], eax
	mov eax, [ebx+0xc]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x20]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x24]
	subss xmm0, xmm1
	movss [ecx+eax], xmm0
	mov eax, [ebx+0xc]
	mulss xmm5, [ebp-0x28]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x20]
	subss xmm5, xmm0
	movss [ecx+eax+0x4], xmm5
	mov eax, [ebx+0xc]
	mulss xmm4, [ebp-0x24]
	mulss xmm6, [ebp-0x28]
	subss xmm4, xmm6
	movss [ecx+eax+0x8], xmm4
	mov esi, [ebp+0x8]
	mov esi, [esi+0x30]
	test esi, esi
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_500
	mov eax, [ebx+0x10]
	movss xmm0, dword [ebp-0x28]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov eax, [ebx+0x10]
	movss xmm0, dword [ebp-0x24]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x4], xmm0
	mov eax, [ebx+0x10]
	movss xmm0, dword [ebp-0x20]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x8], xmm0
	movss xmm3, dword [ebp-0x54]
	movss xmm1, dword [ebp-0x50]
	mov eax, [ebx+0x14]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x20]
	movaps xmm2, xmm1
	mulss xmm2, [ebp-0x24]
	subss xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	movss xmm0, dword [ebp-0x58]
	mov eax, [ebx+0x14]
	mulss xmm1, [ebp-0x28]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x20]
	subss xmm1, xmm2
	xorps xmm1, [_data16_80000000]
	movss [ecx+eax+0x4], xmm1
	mov eax, [ebx+0x14]
	mulss xmm0, [ebp-0x24]
	mulss xmm3, [ebp-0x28]
	subss xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax+0x8], xmm0
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_500:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x44]
	test al, 0x40
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_510
	mov eax, [ebp+0x10]
	mov edx, [eax+0x1c]
	mov eax, [edi+0x64]
	mov [edx+0x8], eax
	mov eax, [edi+0x44]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_510:
	test al, 0x1
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_520
	mov edx, [ebp+0x10]
	mov eax, [edx+0x24]
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebx+0x4c]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov esi, [ebp+0x10]
	mov edx, [esi+0x28]
	mov eax, [ebx+0x4c]
	mov [ecx+edx], eax
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_670:
	mov esi, [ebp+0x8]
	mov eax, [esi+0x44]
	test ah, 0x20
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_530
	mov edi, [ebp+0x10]
	mov eax, [edi+0x2c]
	mov dword [eax+0x8], 0x0
	mov eax, [esi+0x44]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_530:
	test ah, 0x1
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_540
	mov eax, [ebp+0x10]
	mov edx, [eax+0x20]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x6c]
	mov [edx+0x8], eax
	mov ebx, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_620:
	cmp byte [ebx+0x3c], 0x0
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
	mov esi, [ebp+0x10]
	cvtss2sd xmm0, [esi+0x4]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [esi]
	movsd [esp+0x10], xmm0
	mov eax, [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [ebx+0x40]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_0xp_2_m_d_skip_d
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x14
	call _Z10Com_PrintfiPKcz
	mov ecx, [ebx+0x40]
	test ecx, ecx
	jle _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
	xor esi, esi
	xor edi, edi
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_550:
	lea edx, [edi*4]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0xc]
	add eax, edx
	add edx, [ecx+0x8]
	cvtss2sd xmm0, [eax+0x8]
	movsd [esp+0x30], xmm0
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [eax]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [edx+0x8]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [edx+0x4]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [edx]
	movsd [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov dword [esp], _cstring___d_j__f_f_f_f_f
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x14
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp+0x10]
	mov eax, [edx+0x2c]
	mov eax, [ebx+eax]
	mov [esp+0x24], eax
	mov eax, [edx+0x28]
	cvtss2sd xmm0, [ebx+eax]
	movsd [esp+0x1c], xmm0
	mov eax, [edx+0x24]
	cvtss2sd xmm0, [ebx+eax]
	movsd [esp+0x14], xmm0
	mov eax, [edx+0x20]
	cvtss2sd xmm0, [ebx+eax]
	movsd [esp+0xc], xmm0
	mov eax, [edx+0x1c]
	cvtss2sd xmm0, [ebx+eax]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_c__f__cfm__f__lo
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x14
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	mov ecx, [ebp+0x10]
	add edi, [ecx+0x18]
	add ebx, 0x4
	mov eax, [ebp+0x8]
	cmp [eax+0x40], esi
	jg _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_550
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_920:
	mov ecx, [ebp+0x10]
	mov ebx, [ecx+0x18]
	mov ecx, [ebp+0x8]
	add ecx, 0x40
	mov dword [esp], 0x3
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x8]
	call _Z19setFixedOrientationP7dxJointPNS_5Info2EPfi
	mov esi, [ebp+0x10]
	mov eax, [esi+0x8]
	mov edx, 0x3f800000
	mov [eax], edx
	lea edi, [ebx*4]
	mov eax, [esi+0x8]
	mov [eax+edi+0x4], edx
	lea ecx, [ebx*8]
	mov eax, [esi+0x8]
	mov [eax+ecx+0x8], edx
	mov eax, [ebp+0x8]
	mov esi, [eax+0x20]
	lea eax, [esi+0x100]
	mov edx, [ebp+0x8]
	add edx, 0x50
	mov ebx, [ebp+0x8]
	movss xmm4, dword [ebx+0x50]
	movss xmm2, dword [edx+0x4]
	movss xmm3, dword [edx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [esi+0x100]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	mulss xmm4, [eax+0x20]
	mulss xmm2, [eax+0x24]
	addss xmm4, xmm2
	mulss xmm3, [eax+0x28]
	addss xmm4, xmm3
	movss [ebp-0x30], xmm4
	mov eax, [ebx+0x30]
	test eax, eax
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_560
	mov esi, [ebp+0x10]
	mov eax, [esi+0xc]
	movss xmm3, dword [_data16_80000000]
	movaps xmm0, xmm4
	xorps xmm0, xmm3
	movss [eax+0x4], xmm0
	movss xmm1, dword [ebp-0x34]
	mov eax, [esi+0xc]
	movss [eax+0x8], xmm1
	mov eax, [esi+0xc]
	movss [eax+edi], xmm4
	movss xmm2, dword [ebp-0x38]
	mov eax, [esi+0xc]
	movaps xmm0, xmm2
	xorps xmm0, xmm3
	movss [edi+eax+0x8], xmm0
	mov eax, [esi+0xc]
	xorps xmm1, xmm3
	movss [eax+ecx], xmm1
	mov eax, [esi+0xc]
	movss [ecx+eax+0x4], xmm2
	mov eax, [esi+0x10]
	mov edx, 0xbf800000
	mov [eax], edx
	mov eax, [esi+0x10]
	mov [edi+eax+0x4], edx
	mov eax, [esi+0x10]
	mov [ecx+eax+0x8], edx
	mov esi, [ebx+0x20]
	mov eax, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_730:
	mov edi, [ebp+0x10]
	movss xmm1, dword [edi]
	mulss xmm1, [edi+0x4]
	mov ebx, [eax+0x30]
	test ebx, ebx
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_570
	xor ecx, ecx
	mov edi, [ebp+0x8]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_580:
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x1c]
	mov eax, [edi+0x30]
	movss xmm0, dword [eax+ecx*4+0xe0]
	subss xmm0, [esi+ecx*4+0xe0]
	addss xmm0, [ebp+ecx*4-0x38]
	mulss xmm0, xmm1
	movss [edx+ecx*4], xmm0
	add ecx, 0x1
	cmp ecx, 0x3
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
	mov edx, [ebp+0x8]
	mov esi, [edx+0x20]
	mov edi, edx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_580
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_330:
	mov eax, [ebx+0x80]
	mov [ebp-0x38], eax
	mov eax, [ebx+0x84]
	mov [ebp-0x34], eax
	mov eax, [ebx+0x88]
	mov [ebp-0x30], eax
	mov edx, ebx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_590
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_290:
	mov esi, edx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_700:
	movss xmm7, dword [esi+0x70]
	movss xmm4, dword [esi+0x74]
	movss xmm6, dword [esi+0x78]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_600
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_400:
	mov ecx, [ebp+0x10]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_610
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_490:
	mov ebx, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_620
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_370:
	mov esi, ecx
	mov eax, ebx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_630
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_380:
	mov eax, [esi+0x1c]
	movss [eax], xmm0
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_640
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_480:
	mov eax, [ebp+0x8]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_650
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_460:
	mov edx, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_660
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_540:
	mov ebx, [ebp+0x8]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_620
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_520:
	mov edi, [ebp+0x10]
	mov eax, [edi+0x24]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x48]
	xorps xmm0, [_data16_80000000]
	movss [ecx+eax], xmm0
	mov edx, [edi+0x28]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x48]
	mov [ecx+edx], eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_670
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_440:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebp-0x88]
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	movss [ebp-0xb8], xmm4
	movss [ebp-0xc8], xmm5
	movss [ebp-0xd8], xmm6
	call dPlaneSpace
	movss xmm6, dword [ebp-0xd8]
	movss xmm5, dword [ebp-0xc8]
	movss xmm4, dword [ebp-0xb8]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_680
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_430:
	mov eax, ebx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_650
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_350:
	mov ebx, esi
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_690
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_280:
	mov esi, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_700
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_50:
	mov eax, [edi+0x70]
	mov [ebp-0x88], eax
	mov eax, [edi+0x74]
	mov [ebp-0x84], eax
	mov eax, [edi+0x78]
	mov [ebp-0x80], eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_710
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_570:
	mov edx, eax
	xor ecx, ecx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_720:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x1c]
	movss xmm0, dword [edx+0x50]
	subss xmm0, [esi+ecx*4+0xe0]
	mulss xmm0, xmm1
	movss [eax+ecx*4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
	mov eax, [ebp+0x8]
	mov esi, [eax+0x20]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_720
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_560:
	mov eax, ebx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_730
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_30:
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_740:
	lea edx, [ebx*4]
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x1c]
	movss xmm0, dword [edi+edx]
	subss xmm0, [ebp+edx-0x48]
	mov esi, [ebp+0x8]
	mov eax, [esi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [ecx+edx], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_740
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_750
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_20:
	mov ebx, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_760
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_310:
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_770:
	lea edx, [ebx*4]
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x1c]
	movss xmm0, dword [edi+edx]
	subss xmm0, [ebp+edx-0x48]
	mov esi, [ebp+0x8]
	mov eax, [esi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [edx+ecx], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_770
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_300:
	mov ebx, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_780
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_260:
	xor ebx, ebx
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_790:
	lea edx, [ebx*4]
	mov eax, [ebp+0x10]
	mov ecx, [eax+0x1c]
	movss xmm0, dword [edi+edx]
	subss xmm0, [ebp+edx-0x88]
	mov esi, [ebp+0x8]
	mov eax, [esi+0x20]
	subss xmm0, [eax+ebx*4+0xe0]
	mulss xmm0, xmm1
	movss [ecx+edx], xmm0
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_790
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_800
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_250:
	mov ebx, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_810
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_120:
	mov dword [ebp-0x90], 0x0
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_820
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_230:
	mov eax, ecx
	mov edx, 0x1
	lea edi, [ebp-0x38]
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_830:
	movss xmm0, dword [eax+0x60]
	mov ecx, [ebp-0x94]
	subss xmm0, [ecx+edx*4-0x4]
	movss [edi+edx*4-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_830
	movss xmm2, dword [ebp-0x38]
	movss xmm3, dword [ebp-0x34]
	movss xmm4, dword [ebp-0x30]
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x58]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	mulss xmm0, xmm5
	movss [eax+0xc], xmm0
	mov eax, [ebx+0x1c]
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_840
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_420:
	mov ecx, edx
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_610
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_410:
	mov esi, eax
	jmp _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_850
	add [eax], al
	
	
_Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_jumptab_0:
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_860
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_870
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_880
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_890
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_900
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_910
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_920
	dd _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E_80


;jointInit(dxJoint*)
_Z9jointInitP7dxJoint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	cmp dword [eax+0x14], 0x7
	ja _Z9jointInitP7dxJoint_10
	mov eax, [eax+0x14]
	jmp dword [eax*4+_Z9jointInitP7dxJoint_jumptab_0]
_Z9jointInitP7dxJoint_110:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x50
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x60
	mov [esp], eax
	call dSetZero
	mov esi, 0x3f800000
	mov edx, [ebp+0x8]
	mov [edx+0x60], esi
	mov dword [esp+0x4], 0x4
	mov eax, edx
	add eax, 0x70
	mov [esp], eax
	call dSetZero
	mov eax, [ebp+0x8]
	mov [eax+0x74], esi
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	sub eax, 0xffffff80
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x90
	mov [esp], eax
	call dSetZero
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	add edx, 0xa0
	xor ecx, ecx
	mov eax, [ebp+0x8]
	mov [eax+0xa0], ecx
	mov [edx+0x4], ecx
	mov dword [edx+0x8], 0xff7fffff
	mov edi, 0x7f7fffff
	mov [edx+0xc], edi
	mov [edx+0x10], esi
	mov eax, [ebx+0x24]
	mov [edx+0x14], eax
	mov eax, [ebx+0x20]
	mov [edx+0x18], eax
	mov eax, [ebx+0x24]
	mov [edx+0x1c], eax
	mov [edx+0x20], ecx
	mov dword [edx+0x24], 0x0
	mov [edx+0x28], ecx
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov eax, edx
	add eax, 0xcc
	mov [edx+0xcc], ecx
	mov [eax+0x4], ecx
	mov dword [eax+0x8], 0xff7fffff
	mov [eax+0xc], edi
_Z9jointInitP7dxJoint_40:
	mov [eax+0x10], esi
	mov edx, [ebx+0x24]
	mov [eax+0x14], edx
	mov edx, [ebx+0x20]
	mov [eax+0x18], edx
	mov edx, [ebx+0x24]
	mov [eax+0x1c], edx
	mov [eax+0x20], ecx
	mov dword [eax+0x24], 0x0
	mov [eax+0x28], ecx
_Z9jointInitP7dxJoint_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9jointInitP7dxJoint_60:
	mov eax, [ebp+0x8]
_Z9jointInitP7dxJoint_10:
	mov dword [eax+0x40], 0x0
	mov dword [eax+0x44], 0x0
	mov edi, eax
	mov dword [ebp-0x1c], 0x0
	mov ebx, eax
	sub ebx, 0xffffff80
	mov esi, eax
	add esi, 0x54
_Z9jointInitP7dxJoint_20:
	mov dword [edi+0x48], 0x0
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call dSetZero
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0xff7fffff
	mov dword [ebx+0x10], 0x7f7fffff
	mov dword [ebx+0x14], 0x3f800000
	mov eax, [edx+0x24]
	mov [ebx+0x18], eax
	mov eax, [edx+0x20]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x24]
	mov [ebx+0x20], eax
	mov dword [ebx+0x24], 0x0
	mov dword [ebx+0x28], 0x0
	mov dword [ebx+0x2c], 0x0
	add dword [ebp-0x1c], 0x1
	add esi, 0x10
	add ebx, 0x2c
	add edi, 0x4
	cmp dword [ebp-0x1c], 0x3
	jnz _Z9jointInitP7dxJoint_20
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x108
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x118
	mov [esp], eax
	call dSetZero
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9jointInitP7dxJoint_120:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x50
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [esp], eax
	call dSetZero
	jmp _Z9jointInitP7dxJoint_30
_Z9jointInitP7dxJoint_100:
	mov eax, [ebp+0x8]
	mov byte [eax+0x3c], 0x0
	jmp _Z9jointInitP7dxJoint_30
_Z9jointInitP7dxJoint_90:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [esp], eax
	call dSetZero
	mov esi, 0x3f800000
	mov eax, [ebp+0x8]
	mov [eax+0x40], esi
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x50
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x60
	mov [esp], eax
	call dSetZero
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov eax, edx
	add eax, 0x70
	xor ecx, ecx
	mov [edx+0x70], ecx
_Z9jointInitP7dxJoint_50:
	mov [eax+0x4], ecx
	mov dword [eax+0x8], 0xff7fffff
	mov dword [eax+0xc], 0x7f7fffff
	jmp _Z9jointInitP7dxJoint_40
_Z9jointInitP7dxJoint_80:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x50
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x60
	mov [esp], eax
	call dSetZero
	mov esi, 0x3f800000
	mov eax, [ebp+0x8]
	mov [eax+0x60], esi
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x70
	mov [esp], eax
	call dSetZero
	mov edx, [ebp+0x8]
	mov [edx+0x70], esi
	mov dword [esp+0x4], 0x4
	mov eax, edx
	sub eax, 0xffffff80
	mov [esp], eax
	call dSetZero
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	add eax, 0x90
	xor ecx, ecx
	mov edx, [ebp+0x8]
	mov [edx+0x90], ecx
	jmp _Z9jointInitP7dxJoint_50
_Z9jointInitP7dxJoint_70:
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x40
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0x8]
	add eax, 0x50
	mov [esp], eax
	call dSetZero
	jmp _Z9jointInitP7dxJoint_30
	
	
_Z9jointInitP7dxJoint_jumptab_0:
	dd _Z9jointInitP7dxJoint_60
	dd _Z9jointInitP7dxJoint_70
	dd _Z9jointInitP7dxJoint_80
	dd _Z9jointInitP7dxJoint_90
	dd _Z9jointInitP7dxJoint_100
	dd _Z9jointInitP7dxJoint_110
	dd _Z9jointInitP7dxJoint_120
	dd _Z9jointInitP7dxJoint_30


;dxJointLimitMotor::get(int)
_ZN17dxJointLimitMotor3getEi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0x8
	ja _ZN17dxJointLimitMotor3getEi_10
	jmp dword [eax*4+_ZN17dxJointLimitMotor3getEi_jumptab_0]
_ZN17dxJointLimitMotor3getEi_10:
	fldz
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_20:
	mov eax, [ebp+0x8]
	fld dword [eax+0x8]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_100:
	mov eax, [ebp+0x8]
	fld dword [eax+0x1c]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_90:
	mov eax, [ebp+0x8]
	fld dword [eax+0x18]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_80:
	mov eax, [ebp+0x8]
	fld dword [eax+0x14]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_70:
	mov eax, [ebp+0x8]
	fld dword [eax+0x20]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_60:
	mov eax, [ebp+0x8]
	fld dword [eax+0x10]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_50:
	mov eax, [ebp+0x8]
	fld dword [eax+0x4]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_40:
	mov eax, [ebp+0x8]
	fld dword [eax]
	pop ebp
	ret
_ZN17dxJointLimitMotor3getEi_30:
	mov eax, [ebp+0x8]
	fld dword [eax+0xc]
	pop ebp
	ret
	nop
	add [eax], al
	
	
_ZN17dxJointLimitMotor3getEi_jumptab_0:
	dd _ZN17dxJointLimitMotor3getEi_20
	dd _ZN17dxJointLimitMotor3getEi_30
	dd _ZN17dxJointLimitMotor3getEi_40
	dd _ZN17dxJointLimitMotor3getEi_50
	dd _ZN17dxJointLimitMotor3getEi_60
	dd _ZN17dxJointLimitMotor3getEi_70
	dd _ZN17dxJointLimitMotor3getEi_80
	dd _ZN17dxJointLimitMotor3getEi_90
	dd _ZN17dxJointLimitMotor3getEi_100


;dxJointLimitMotor::set(int, float)
_ZN17dxJointLimitMotor3setEif:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0x8
	ja _ZN17dxJointLimitMotor3setEif_10
	jmp dword [eax*4+_ZN17dxJointLimitMotor3setEif_jumptab_0]
_ZN17dxJointLimitMotor3setEif_60:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb _ZN17dxJointLimitMotor3setEif_10
	ucomiss xmm0, [_float_1_00000000]
	ja _ZN17dxJointLimitMotor3setEif_10
	jp _ZN17dxJointLimitMotor3setEif_10
	mov eax, [ebp+0x8]
	movss [eax+0x10], xmm0
_ZN17dxJointLimitMotor3setEif_10:
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_20:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0x8], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_100:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0x1c], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_90:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0x18], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_80:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_70:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0x20], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_50:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb _ZN17dxJointLimitMotor3setEif_10
	mov eax, [ebp+0x8]
	movss [eax+0x4], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_40:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	pop ebp
	ret
_ZN17dxJointLimitMotor3setEif_30:
	movss xmm0, dword [ebp+0x10]
	mov eax, [ebp+0x8]
	movss [eax+0xc], xmm0
	pop ebp
	ret
	nop
	
	
_ZN17dxJointLimitMotor3setEif_jumptab_0:
	dd _ZN17dxJointLimitMotor3setEif_20
	dd _ZN17dxJointLimitMotor3setEif_30
	dd _ZN17dxJointLimitMotor3setEif_40
	dd _ZN17dxJointLimitMotor3setEif_50
	dd _ZN17dxJointLimitMotor3setEif_60
	dd _ZN17dxJointLimitMotor3setEif_70
	dd _ZN17dxJointLimitMotor3setEif_80
	dd _ZN17dxJointLimitMotor3setEif_90
	dd _ZN17dxJointLimitMotor3setEif_100


;dxJointLimitMotor::addLimot(dxJoint*, dxJoint::Info2*, int, float*, int)
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x18]
	mov edx, [ebp+0x14]
	mov eax, [ebp+0x10]
	imul edx, [eax+0x18]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x4]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	mov [ebp-0x2c], eax
	test eax, eax
	jnz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_10
	mov ecx, [ecx+0x24]
	test ecx, ecx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_20
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_10:
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_30
	mov ebx, [ebp+0x10]
	mov ecx, [ebx+0xc]
	mov ebx, [ebx+0x14]
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_160:
	lea esi, [edx*4]
	mov eax, [edi]
	mov [esi+ecx], eax
	lea edx, [esi+ecx]
	lea ecx, [edi+0x4]
	mov [ebp-0x34], ecx
	mov eax, [edi+0x4]
	mov [edx+0x4], eax
	lea eax, [edi+0x8]
	mov [ebp-0x30], eax
	mov eax, [edi+0x8]
	mov [edx+0x8], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x30]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_40
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edi]
	xorps xmm0, xmm1
	movss [ebx+esi], xmm0
	lea eax, [ebx+esi]
	movss xmm0, dword [edi+0x4]
	xorps xmm0, xmm1
	movss [eax+0x4], xmm0
	movss xmm0, dword [edi+0x8]
	xorps xmm0, xmm1
	movss [eax+0x8], xmm0
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_40:
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x28]
	mov [esp], eax
	call dSetZero
	mov ecx, [ebp+0x1c]
	test ecx, ecx
	jnz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_50
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x30]
	test edx, edx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_50
	mov eax, [ecx+0x20]
	movss xmm3, dword [edx+0xe0]
	subss xmm3, [eax+0xe0]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm3, xmm1
	movss xmm2, dword [edx+0xe4]
	subss xmm2, [eax+0xe4]
	mulss xmm2, xmm1
	movss xmm0, dword [edx+0xe8]
	subss xmm0, [eax+0xe8]
	mulss xmm0, xmm1
	movaps xmm4, xmm2
	mulss xmm4, [edi+0x8]
	movaps xmm1, xmm0
	mulss xmm1, [edi+0x4]
	subss xmm4, xmm1
	movss [ebp-0x28], xmm4
	mulss xmm0, [edi]
	movaps xmm1, xmm3
	mulss xmm1, [edi+0x8]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	mulss xmm3, [edi+0x4]
	mulss xmm2, [edi]
	subss xmm3, xmm2
	movss [ebp-0x20], xmm3
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0xc]
	movss [esi+eax], xmm4
	mov edx, [ebx+0xc]
	mov eax, [ebp-0x24]
	mov [esi+edx+0x4], eax
	mov edx, [ebx+0xc]
	mov eax, [ebp-0x20]
	mov [esi+edx+0x8], eax
	mov edx, [ebx+0x14]
	mov eax, [ebp-0x28]
	mov [esi+edx], eax
	mov edx, [ebx+0x14]
	mov eax, [ebp-0x24]
	mov [esi+edx+0x4], eax
	mov edx, [ebx+0x14]
	mov eax, [ebp-0x20]
	mov [esi+edx+0x8], eax
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_50:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x24]
	test edx, edx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_60
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [eax+0xc]
	jp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_60
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_70
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_60:
	mov ebx, [ebp-0x2c]
	test ebx, ebx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80
	mov ecx, [ebp+0x14]
	shl ecx, 0x2
	mov ebx, [ebp+0x10]
	mov edx, [ebx+0x20]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x14]
	mov [edx+ecx], eax
	mov eax, [ebx+0x24]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_90
	mov ebx, [ebp+0x8]
	movss xmm3, dword [ebx+0x4]
	movss xmm0, dword [ebx]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_100
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_280:
	movss xmm1, dword [_data16_80000000]
	xorps xmm3, xmm1
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_290:
	cmp eax, 0x1
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_110
	cmp eax, 0x2
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_120
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_250:
	mov ecx, [ebp+0x1c]
	test ecx, ecx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_130
	movaps xmm0, xmm3
	xorps xmm0, xmm1
	movaps xmm2, xmm0
	mov edx, [ebp-0x30]
	mulss xmm2, [edx]
	movaps xmm1, xmm0
	mov ecx, [ebp-0x34]
	mulss xmm1, [ecx]
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x20]
	mulss xmm0, [edi]
	addss xmm0, [eax+0xa8]
	movss [eax+0xa8], xmm0
	addss xmm1, [eax+0xac]
	movss [eax+0xac], xmm1
	addss xmm2, [eax+0xb0]
	movss [eax+0xb0], xmm2
	mov eax, [ebx+0x30]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80
	movaps xmm1, xmm3
	mulss xmm1, [edx]
	movaps xmm0, xmm3
	mulss xmm0, [ecx]
	mulss xmm3, [edi]
	addss xmm3, [eax+0xa8]
	movss [eax+0xa8], xmm3
	addss xmm0, [eax+0xac]
	movss [eax+0xac], xmm0
	addss xmm1, [eax+0xb0]
	movss [eax+0xb0], xmm1
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x24]
	test edx, edx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140
	mov ebx, eax
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_220:
	mov ecx, [ebp+0x14]
	shl ecx, 0x2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x1c]
	movss xmm0, dword [edx]
	mulss xmm0, [ebx+0x18]
	movss xmm1, dword [_data16_80000000]
	xorps xmm0, xmm1
	mulss xmm0, [ebx+0x28]
	movss [eax+ecx], xmm0
	mov eax, [ebp+0x10]
	mov edx, [eax+0x20]
	mov eax, [ebx+0x1c]
	mov [ecx+edx], eax
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [ebx+0xc]
	jnz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_150
	jp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_150
	mov edx, [ebp+0x10]
	mov eax, [edx+0x24]
	mov dword [esi+eax], 0xff7fffff
	mov eax, [edx+0x28]
	mov dword [esi+eax], 0x7f7fffff
	mov eax, 0x1
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_30:
	mov ebx, [ebp+0x10]
	mov ecx, [ebx+0x8]
	mov ebx, [ebx+0x10]
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_160
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_210:
	ucomiss xmm2, xmm3
	ja _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_170
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_150:
	mov ebx, [ebp+0x8]
	cmp dword [ebx+0x24], 0x1
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_180
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x24]
	mov dword [esi+eax], 0xff7fffff
	mov eax, [ebx+0x28]
	pxor xmm2, xmm2
	movss [esi+eax], xmm2
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_240:
	mov eax, [ebp+0x8]
	movss xmm6, dword [eax+0x20]
	ucomiss xmm6, xmm2
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140
	mov eax, [ebp+0x1c]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_190
	mov edx, [ebp+0xc]
	mov eax, [edx+0x20]
	lea edx, [eax+0x140]
	movss xmm4, dword [edi+0x4]
	movss xmm5, dword [edi+0x8]
	movss xmm3, dword [eax+0x140]
	mulss xmm3, [edi]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x8]
	addss xmm3, xmm0
	mov ebx, [ebp+0xc]
	mov edx, [ebx+0x30]
	test edx, edx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_200
	lea eax, [edx+0x140]
	movss xmm0, dword [edx+0x140]
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_230:
	mulss xmm0, [edi]
	mulss xmm4, [eax+0x4]
	addss xmm0, xmm4
	mulss xmm5, [eax+0x8]
	addss xmm0, xmm5
	subss xmm3, xmm0
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_200:
	mov eax, [ebp+0x8]
	cmp dword [eax+0x24], 0x1
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_210
	ucomiss xmm3, xmm2
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140
	xorps xmm1, xmm6
	mulss xmm1, xmm3
	mov eax, ecx
	mov ebx, [ebp+0x10]
	add eax, [ebx+0x1c]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140
	movss [eax], xmm1
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_70:
	mov ebx, [ebp+0x8]
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_220
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_90:
	mov eax, [ebp+0x10]
	mov edx, [eax+0x1c]
	mov eax, [ebx]
	mov [ecx+edx], eax
	mov ecx, [ebp+0x10]
	mov edx, [ecx+0x24]
	mov eax, [ebx+0x4]
	xor eax, 0x80000000
	mov [esi+edx], eax
	mov edx, [ecx+0x28]
	mov eax, [ebx+0x4]
	mov [esi+edx], eax
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_190:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x20]
	lea edx, [eax+0x130]
	movss xmm4, dword [edi+0x4]
	movss xmm5, dword [edi+0x8]
	movss xmm3, dword [eax+0x130]
	mulss xmm3, [edi]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x8]
	addss xmm3, xmm0
	mov ebx, [ebp+0xc]
	mov edx, [ebx+0x30]
	test edx, edx
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_200
	lea eax, [edx+0x130]
	movss xmm0, dword [edx+0x130]
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_230
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_180:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x24]
	pxor xmm2, xmm2
	movss [esi+eax], xmm2
	mov eax, [edx+0x28]
	mov dword [esi+eax], 0x7f7fffff
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_240
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_130:
	movaps xmm4, xmm3
	xorps xmm4, xmm1
	movaps xmm2, xmm4
	mov eax, [ebp-0x30]
	mulss xmm2, [eax]
	movaps xmm1, xmm4
	mov edx, [ebp-0x34]
	mulss xmm1, [edx]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x20]
	movaps xmm0, xmm4
	mulss xmm0, [edi]
	addss xmm0, [eax+0x98]
	movss [eax+0x98], xmm0
	addss xmm1, [eax+0x9c]
	movss [eax+0x9c], xmm1
	addss xmm2, [eax+0xa0]
	movss [eax+0xa0], xmm2
	mov eax, [ecx+0x30]
	test eax, eax
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80
	movaps xmm1, xmm3
	mov ebx, [ebp-0x30]
	mulss xmm1, [ebx]
	movaps xmm0, xmm3
	mulss xmm0, [edx]
	mulss xmm3, [edi]
	addss xmm3, [eax+0x98]
	movss [eax+0x98], xmm3
	addss xmm0, [eax+0x9c]
	movss [eax+0x9c], xmm0
	addss xmm1, [eax+0xa0]
	movss [eax+0xa0], xmm1
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0x20]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x24]
	mov eax, [ecx+0x20]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x28]
	addss xmm0, [eax+0xa8]
	movss [eax+0xa8], xmm0
	addss xmm1, [eax+0xac]
	movss [eax+0xac], xmm1
	addss xmm2, [eax+0xb0]
	movss [eax+0xb0], xmm2
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0x20]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x24]
	mov eax, [ecx+0x30]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x28]
	addss xmm0, [eax+0xa8]
	movss [eax+0xa8], xmm0
	addss xmm1, [eax+0xac]
	movss [eax+0xac], xmm1
	addss xmm2, [eax+0xb0]
	movss [eax+0xb0], xmm2
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_80
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_170:
	movaps xmm0, xmm6
	xorps xmm0, xmm1
	mulss xmm0, xmm3
	mov eax, ecx
	mov edx, [ebp+0x10]
	add eax, [edx+0x1c]
	ucomiss xmm0, [eax]
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_140
	movss [eax], xmm0
	mov eax, 0x1
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_20
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_110:
	ucomiss xmm0, xmm2
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_250
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_260:
	mov eax, [ebp+0x8]
	mulss xmm3, [eax+0x10]
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_250
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_120:
	ucomiss xmm2, xmm0
	jbe _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_250
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_260
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_100:
	ucomiss xmm0, xmm2
	jnz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_270
	jp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_270
	cmp eax, 0x2
	jz _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_280
_ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_270:
	movss xmm1, dword [_data16_80000000]
	jmp _ZN17dxJointLimitMotor8addLimotEP7dxJointPNS0_5Info2EiPfi_290
	nop
	add [eax], al


;dJointGetAMotorParam
dJointGetAMotorParam:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, ecx
	sar edx, 0x8
	js dJointGetAMotorParam_10
	cmp edx, 0x3
	mov eax, 0x2
	cmovge edx, eax
dJointGetAMotorParam_30:
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	mov edx, [ebp+0x8]
	lea edx, [edx+eax*4+0x84]
	movzx eax, cl
	cmp eax, 0x8
	ja dJointGetAMotorParam_20
	jmp dword [eax*4+dJointGetAMotorParam_jumptab_0]
dJointGetAMotorParam_20:
	fldz
	pop ebp
	ret
dJointGetAMotorParam_10:
	xor edx, edx
	jmp dJointGetAMotorParam_30
dJointGetAMotorParam_40:
	fld dword [edx+0x8]
	pop ebp
	ret
dJointGetAMotorParam_120:
	fld dword [edx+0x1c]
	pop ebp
	ret
dJointGetAMotorParam_110:
	fld dword [edx+0x18]
	pop ebp
	ret
dJointGetAMotorParam_100:
	fld dword [edx+0x14]
	pop ebp
	ret
dJointGetAMotorParam_90:
	fld dword [edx+0x20]
	pop ebp
	ret
dJointGetAMotorParam_80:
	fld dword [edx+0x10]
	pop ebp
	ret
dJointGetAMotorParam_70:
	fld dword [edx+0x4]
	pop ebp
	ret
dJointGetAMotorParam_60:
	fld dword [edx]
	pop ebp
	ret
dJointGetAMotorParam_50:
	fld dword [edx+0xc]
	pop ebp
	ret
	nop
	
	
dJointGetAMotorParam_jumptab_0:
	dd dJointGetAMotorParam_40
	dd dJointGetAMotorParam_50
	dd dJointGetAMotorParam_60
	dd dJointGetAMotorParam_70
	dd dJointGetAMotorParam_80
	dd dJointGetAMotorParam_90
	dd dJointGetAMotorParam_100
	dd dJointGetAMotorParam_110
	dd dJointGetAMotorParam_120


;dJointGetHingeParam
dJointGetHingeParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x90
	cmp edx, 0x8
	ja dJointGetHingeParam_10
	jmp dword [edx*4+dJointGetHingeParam_jumptab_0]
dJointGetHingeParam_10:
	fldz
	pop ebp
	ret
dJointGetHingeParam_20:
	fld dword [eax+0x8]
	pop ebp
	ret
dJointGetHingeParam_100:
	fld dword [eax+0x1c]
	pop ebp
	ret
dJointGetHingeParam_90:
	fld dword [eax+0x18]
	pop ebp
	ret
dJointGetHingeParam_80:
	fld dword [eax+0x14]
	pop ebp
	ret
dJointGetHingeParam_70:
	fld dword [eax+0x20]
	pop ebp
	ret
dJointGetHingeParam_60:
	fld dword [eax+0x10]
	pop ebp
	ret
dJointGetHingeParam_50:
	fld dword [eax+0x4]
	pop ebp
	ret
dJointGetHingeParam_40:
	fld dword [eax]
	pop ebp
	ret
dJointGetHingeParam_30:
	fld dword [eax+0xc]
	pop ebp
	ret
	
	
dJointGetHingeParam_jumptab_0:
	dd dJointGetHingeParam_20
	dd dJointGetHingeParam_30
	dd dJointGetHingeParam_40
	dd dJointGetHingeParam_50
	dd dJointGetHingeParam_60
	dd dJointGetHingeParam_70
	dd dJointGetHingeParam_80
	dd dJointGetHingeParam_90
	dd dJointGetHingeParam_100


;dJointGetSliderParam
dJointGetSliderParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x70
	cmp edx, 0x8
	ja dJointGetSliderParam_10
	jmp dword [edx*4+dJointGetSliderParam_jumptab_0]
dJointGetSliderParam_10:
	fldz
	pop ebp
	ret
dJointGetSliderParam_20:
	fld dword [eax+0x8]
	pop ebp
	ret
dJointGetSliderParam_100:
	fld dword [eax+0x1c]
	pop ebp
	ret
dJointGetSliderParam_90:
	fld dword [eax+0x18]
	pop ebp
	ret
dJointGetSliderParam_80:
	fld dword [eax+0x14]
	pop ebp
	ret
dJointGetSliderParam_70:
	fld dword [eax+0x20]
	pop ebp
	ret
dJointGetSliderParam_60:
	fld dword [eax+0x10]
	pop ebp
	ret
dJointGetSliderParam_50:
	fld dword [eax+0x4]
	pop ebp
	ret
dJointGetSliderParam_40:
	fld dword [eax]
	pop ebp
	ret
dJointGetSliderParam_30:
	fld dword [eax+0xc]
	pop ebp
	ret
	
	
dJointGetSliderParam_jumptab_0:
	dd dJointGetSliderParam_20
	dd dJointGetSliderParam_30
	dd dJointGetSliderParam_40
	dd dJointGetSliderParam_50
	dd dJointGetSliderParam_60
	dd dJointGetSliderParam_70
	dd dJointGetSliderParam_80
	dd dJointGetSliderParam_90
	dd dJointGetSliderParam_100


;dJointGetUniversalParam
dJointGetUniversalParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, edx
	and eax, 0xff00
	cmp eax, 0x100
	jz dJointGetUniversalParam_10
	mov eax, [ebp+0x8]
	add eax, 0xa0
	cmp edx, 0x8
	jbe dJointGetUniversalParam_20
dJointGetUniversalParam_30:
	fldz
	pop ebp
	ret
dJointGetUniversalParam_20:
	jmp dword [edx*4+dJointGetUniversalParam_jumptab_0]
dJointGetUniversalParam_10:
	mov ecx, [ebp+0x8]
	add ecx, 0xcc
	movzx eax, dl
	cmp eax, 0x8
	ja dJointGetUniversalParam_30
	jmp dword [eax*4+dJointGetUniversalParam_jumptab_1]
dJointGetUniversalParam_40:
	fld dword [eax+0x8]
	pop ebp
	ret
dJointGetUniversalParam_120:
	fld dword [eax+0x1c]
	pop ebp
	ret
dJointGetUniversalParam_110:
	fld dword [eax+0x18]
	pop ebp
	ret
dJointGetUniversalParam_100:
	fld dword [eax+0x14]
	pop ebp
	ret
dJointGetUniversalParam_90:
	fld dword [eax+0x20]
	pop ebp
	ret
dJointGetUniversalParam_80:
	fld dword [eax+0x10]
	pop ebp
	ret
dJointGetUniversalParam_70:
	fld dword [eax+0x4]
	pop ebp
	ret
dJointGetUniversalParam_60:
	fld dword [eax]
	pop ebp
	ret
dJointGetUniversalParam_50:
	fld dword [eax+0xc]
	pop ebp
	ret
dJointGetUniversalParam_130:
	fld dword [ecx+0x8]
	pop ebp
	ret
dJointGetUniversalParam_140:
	fld dword [ecx+0xc]
	pop ebp
	ret
dJointGetUniversalParam_150:
	fld dword [ecx]
	pop ebp
	ret
dJointGetUniversalParam_160:
	fld dword [ecx+0x4]
	pop ebp
	ret
dJointGetUniversalParam_170:
	fld dword [ecx+0x10]
	pop ebp
	ret
dJointGetUniversalParam_180:
	fld dword [ecx+0x20]
	pop ebp
	ret
dJointGetUniversalParam_190:
	fld dword [ecx+0x14]
	pop ebp
	ret
dJointGetUniversalParam_200:
	fld dword [ecx+0x18]
	pop ebp
	ret
dJointGetUniversalParam_210:
	fld dword [ecx+0x1c]
	pop ebp
	ret
	
	
dJointGetUniversalParam_jumptab_0:
	dd dJointGetUniversalParam_40
	dd dJointGetUniversalParam_50
	dd dJointGetUniversalParam_60
	dd dJointGetUniversalParam_70
	dd dJointGetUniversalParam_80
	dd dJointGetUniversalParam_90
	dd dJointGetUniversalParam_100
	dd dJointGetUniversalParam_110
	dd dJointGetUniversalParam_120
dJointGetUniversalParam_jumptab_1:
	dd dJointGetUniversalParam_130
	dd dJointGetUniversalParam_140
	dd dJointGetUniversalParam_150
	dd dJointGetUniversalParam_160
	dd dJointGetUniversalParam_170
	dd dJointGetUniversalParam_180
	dd dJointGetUniversalParam_190
	dd dJointGetUniversalParam_200
	dd dJointGetUniversalParam_210


;dJointSetAMotorAxis
dJointSetAMotorAxis:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	movss xmm2, dword [ebp+0x14]
	movss xmm3, dword [ebp+0x18]
	movss xmm4, dword [ebp+0x1c]
	test esi, esi
	js dJointSetAMotorAxis_10
	cmp esi, 0x3
	mov eax, 0x2
	cmovge esi, eax
	mov eax, [edi+0x30]
	test eax, eax
	jz dJointSetAMotorAxis_20
dJointSetAMotorAxis_80:
	mov [edi+esi*4+0x48], edx
	test edx, edx
	jle dJointSetAMotorAxis_30
	sub edx, 0x1
	jz dJointSetAMotorAxis_40
	mov ecx, esi
	shl ecx, 0x4
	lea ecx, [ecx+edi+0x50]
	lea ebx, [ecx+0x4]
	mov edx, [edi+0x30]
dJointSetAMotorAxis_60:
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [eax+0x18]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebx+0x8], xmm2
dJointSetAMotorAxis_70:
	shl esi, 0x4
	lea eax, [esi+edi+0x54]
	mov [esp], eax
	call dNormalize3
	cmp dword [edi+0x44], 0x1
	jz dJointSetAMotorAxis_50
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dJointSetAMotorAxis_50:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z30amotorSetEulerReferenceVectorsP13dxJointAMotor
dJointSetAMotorAxis_40:
	mov ecx, esi
	shl ecx, 0x4
	lea ecx, [ecx+edi+0x50]
	lea ebx, [ecx+0x4]
	mov edx, [edi+0x20]
	jmp dJointSetAMotorAxis_60
dJointSetAMotorAxis_30:
	mov eax, esi
	shl eax, 0x4
	add eax, edi
	movss [eax+0x54], xmm2
	movss [eax+0x58], xmm3
	movss [eax+0x5c], xmm4
	jmp dJointSetAMotorAxis_70
dJointSetAMotorAxis_10:
	xor esi, esi
	mov eax, [edi+0x30]
	test eax, eax
	jnz dJointSetAMotorAxis_80
dJointSetAMotorAxis_20:
	cmp edx, 0x2
	mov eax, 0x1
	cmovz edx, eax
	jmp dJointSetAMotorAxis_80
	add [eax], al


;dJointSetAMotorMode
dJointSetAMotorMode:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx+0x44], eax
	sub eax, 0x1
	jz dJointSetAMotorMode_10
	pop ebp
	ret
dJointSetAMotorMode_10:
	mov dword [edx+0x40], 0x3
	mov eax, edx
	pop ebp
	jmp _Z30amotorSetEulerReferenceVectorsP13dxJointAMotor


;dJointSetAMotorNumAxes
dJointSetAMotorNumAxes:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp dword [ecx+0x44], 0x1
	jz dJointSetAMotorNumAxes_10
	test edx, edx
	js dJointSetAMotorNumAxes_20
	cmp edx, 0x4
	mov eax, 0x3
	cmovge edx, eax
	mov [ecx+0x40], edx
dJointSetAMotorNumAxes_30:
	pop ebp
	ret
dJointSetAMotorNumAxes_10:
	mov dword [ecx+0x40], 0x3
	pop ebp
	ret
dJointSetAMotorNumAxes_20:
	xor edx, edx
	mov [ecx+0x40], edx
	jmp dJointSetAMotorNumAxes_30
	nop
	add [eax], al


;dJointSetAMotorParam
dJointSetAMotorParam:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	mov edx, ecx
	sar edx, 0x8
	js dJointSetAMotorParam_10
	cmp edx, 0x3
	mov eax, 0x2
	cmovge edx, eax
dJointSetAMotorParam_30:
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	mov edx, [ebp+0x8]
	lea edx, [edx+eax*4+0x84]
	movzx eax, cl
	cmp eax, 0x8
	ja dJointSetAMotorParam_20
	jmp dword [eax*4+dJointSetAMotorParam_jumptab_0]
dJointSetAMotorParam_80:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetAMotorParam_20
	ucomiss xmm0, [_float_1_00000000]
	ja dJointSetAMotorParam_20
	jp dJointSetAMotorParam_20
	movss [edx+0x10], xmm0
dJointSetAMotorParam_20:
	pop ebp
	ret
dJointSetAMotorParam_10:
	xor edx, edx
	jmp dJointSetAMotorParam_30
dJointSetAMotorParam_40:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x8], xmm0
	pop ebp
	ret
dJointSetAMotorParam_120:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x1c], xmm0
	pop ebp
	ret
dJointSetAMotorParam_110:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x18], xmm0
	pop ebp
	ret
dJointSetAMotorParam_100:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x14], xmm0
	pop ebp
	ret
dJointSetAMotorParam_90:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0x20], xmm0
	pop ebp
	ret
dJointSetAMotorParam_70:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetAMotorParam_20
	movss [edx+0x4], xmm0
	pop ebp
	ret
dJointSetAMotorParam_60:
	movss xmm0, dword [ebp+0x10]
	movss [edx], xmm0
	pop ebp
	ret
dJointSetAMotorParam_50:
	movss xmm0, dword [ebp+0x10]
	movss [edx+0xc], xmm0
	pop ebp
	ret
	nop
	add [eax], al
	
	
dJointSetAMotorParam_jumptab_0:
	dd dJointSetAMotorParam_40
	dd dJointSetAMotorParam_50
	dd dJointSetAMotorParam_60
	dd dJointSetAMotorParam_70
	dd dJointSetAMotorParam_80
	dd dJointSetAMotorParam_90
	dd dJointSetAMotorParam_100
	dd dJointSetAMotorParam_110
	dd dJointSetAMotorParam_120


;dJointSetBallAnchor
dJointSetBallAnchor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	movss xmm5, dword [ebp+0xc]
	movss xmm6, dword [ebp+0x10]
	movss xmm7, dword [ebp+0x14]
	lea esi, [ecx+0x50]
	lea ebx, [ecx+0x40]
	mov edx, [ecx+0x20]
	test edx, edx
	jz dJointSetBallAnchor_10
	movaps xmm2, xmm5
	subss xmm2, [edx+0xe0]
	movaps xmm3, xmm6
	subss xmm3, [edx+0xe4]
	movaps xmm4, xmm7
	subss xmm4, [edx+0xe8]
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x40], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [eax+0x18]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebx+0x8], xmm2
	mov edx, [ecx+0x30]
	test edx, edx
	jz dJointSetBallAnchor_20
	movaps xmm2, xmm5
	subss xmm2, [edx+0xe0]
	movaps xmm3, xmm6
	subss xmm3, [edx+0xe4]
	movaps xmm4, xmm7
	subss xmm4, [edx+0xe8]
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x50], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [esi+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [eax+0x18]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [esi+0x8], xmm2
dJointSetBallAnchor_10:
	xor eax, eax
	mov [ebx+0xc], eax
	mov [esi+0xc], eax
	pop ebx
	pop esi
	pop ebp
	ret
dJointSetBallAnchor_20:
	movss [ecx+0x50], xmm5
	movss [esi+0x4], xmm6
	movss [esi+0x8], xmm7
	xor eax, eax
	mov [ebx+0xc], eax
	mov [esi+0xc], eax
	pop ebx
	pop esi
	pop ebp
	ret


;dJointSetHingeAnchor
dJointSetHingeAnchor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	movss xmm5, dword [ebp+0xc]
	movss xmm6, dword [ebp+0x10]
	movss xmm7, dword [ebp+0x14]
	lea esi, [ecx+0x50]
	lea ebx, [ecx+0x40]
	mov edx, [ecx+0x20]
	test edx, edx
	jz dJointSetHingeAnchor_10
	movaps xmm2, xmm5
	subss xmm2, [edx+0xe0]
	movaps xmm3, xmm6
	subss xmm3, [edx+0xe4]
	movaps xmm4, xmm7
	subss xmm4, [edx+0xe8]
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x40], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [eax+0x18]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [ebx+0x8], xmm2
	mov edx, [ecx+0x30]
	test edx, edx
	jz dJointSetHingeAnchor_20
	movaps xmm2, xmm5
	subss xmm2, [edx+0xe0]
	movaps xmm3, xmm6
	subss xmm3, [edx+0xe4]
	movaps xmm4, xmm7
	subss xmm4, [edx+0xe8]
	lea eax, [edx+0x100]
	movaps xmm0, xmm2
	mulss xmm0, [edx+0x100]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ecx+0x50], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x24]
	addss xmm0, xmm1
	movss [esi+0x4], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [eax+0x18]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [esi+0x8], xmm2
dJointSetHingeAnchor_10:
	xor eax, eax
	mov [ebx+0xc], eax
	mov [esi+0xc], eax
	mov edx, [ecx+0x20]
	test edx, edx
	jz dJointSetHingeAnchor_30
	mov eax, [ecx+0x30]
	test eax, eax
	jz dJointSetHingeAnchor_40
	add eax, 0xf0
	mov [ebp+0x10], eax
	lea eax, [edx+0xf0]
	mov [ebp+0xc], eax
	lea eax, [ecx+0x80]
	mov [ebp+0x8], eax
	pop ebx
	pop esi
	pop ebp
	jmp dQMultiply1
dJointSetHingeAnchor_40:
	mov eax, [edx+0xf0]
	mov [ecx+0x80], eax
	mov eax, ecx
	mov ebx, 0x1
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edx+ebx*4+0xf0]
	xorps xmm0, xmm1
	movss [eax+0x84], xmm0
	add ebx, 0x1
	add eax, 0x4
	cmp ebx, 0x4
	jz dJointSetHingeAnchor_30
dJointSetHingeAnchor_50:
	mov edx, [ecx+0x20]
	movss xmm0, dword [edx+ebx*4+0xf0]
	xorps xmm0, xmm1
	movss [eax+0x84], xmm0
	add ebx, 0x1
	add eax, 0x4
	cmp ebx, 0x4
	jnz dJointSetHingeAnchor_50
dJointSetHingeAnchor_30:
	pop ebx
	pop esi
	pop ebp
	ret
dJointSetHingeAnchor_20:
	movss [ecx+0x50], xmm5
	movss [esi+0x4], xmm6
	movss [esi+0x8], xmm7
	jmp dJointSetHingeAnchor_10
	nop


;dJointSetHingeAxis
dJointSetHingeAxis:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	lea ecx, [ebx+0x70]
	lea edx, [ebx+0x60]
	movss xmm2, dword [ebp+0x14]
	movss xmm1, dword [ebp+0x10]
	movss xmm0, dword [ebp+0xc]
	mov eax, ebx
	call _Z7setAxesP7dxJointfffPfS1_
	mov edx, [ebx+0x20]
	test edx, edx
	jz dJointSetHingeAxis_10
	mov eax, [ebx+0x30]
	test eax, eax
	jz dJointSetHingeAxis_20
	add eax, 0xf0
	mov [ebp+0x10], eax
	lea eax, [edx+0xf0]
	mov [ebp+0xc], eax
	lea eax, [ebx+0x80]
	mov [ebp+0x8], eax
	add esp, 0x4
	pop ebx
	pop ebp
	jmp dQMultiply1
dJointSetHingeAxis_20:
	mov eax, [edx+0xf0]
	mov [ebx+0x80], eax
	mov eax, ebx
	mov ecx, 0x1
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [edx+ecx*4+0xf0]
	xorps xmm0, xmm1
	movss [eax+0x84], xmm0
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x4
	jz dJointSetHingeAxis_10
dJointSetHingeAxis_30:
	mov edx, [ebx+0x20]
	movss xmm0, dword [edx+ecx*4+0xf0]
	xorps xmm0, xmm1
	movss [eax+0x84], xmm0
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x4
	jnz dJointSetHingeAxis_30
dJointSetHingeAxis_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;dJointSetHingeParam
dJointSetHingeParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x90
	cmp edx, 0x8
	ja dJointSetHingeParam_10
	jmp dword [edx*4+dJointSetHingeParam_jumptab_0]
dJointSetHingeParam_60:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetHingeParam_10
	ucomiss xmm0, [_float_1_00000000]
	ja dJointSetHingeParam_10
	jp dJointSetHingeParam_10
	movss [eax+0x10], xmm0
dJointSetHingeParam_10:
	pop ebp
	ret
dJointSetHingeParam_20:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x8], xmm0
	pop ebp
	ret
dJointSetHingeParam_100:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x1c], xmm0
	pop ebp
	ret
dJointSetHingeParam_90:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x18], xmm0
	pop ebp
	ret
dJointSetHingeParam_80:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x14], xmm0
	pop ebp
	ret
dJointSetHingeParam_70:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x20], xmm0
	pop ebp
	ret
dJointSetHingeParam_50:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetHingeParam_10
	movss [eax+0x4], xmm0
	pop ebp
	ret
dJointSetHingeParam_40:
	movss xmm0, dword [ebp+0x10]
	movss [eax], xmm0
	pop ebp
	ret
dJointSetHingeParam_30:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0xc], xmm0
	pop ebp
	ret
	
	
dJointSetHingeParam_jumptab_0:
	dd dJointSetHingeParam_20
	dd dJointSetHingeParam_30
	dd dJointSetHingeParam_40
	dd dJointSetHingeParam_50
	dd dJointSetHingeParam_60
	dd dJointSetHingeParam_70
	dd dJointSetHingeParam_80
	dd dJointSetHingeParam_90
	dd dJointSetHingeParam_100


;dJointSetSliderParam
dJointSetSliderParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x70
	cmp edx, 0x8
	ja dJointSetSliderParam_10
	jmp dword [edx*4+dJointSetSliderParam_jumptab_0]
dJointSetSliderParam_60:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetSliderParam_10
	ucomiss xmm0, [_float_1_00000000]
	ja dJointSetSliderParam_10
	jp dJointSetSliderParam_10
	movss [eax+0x10], xmm0
dJointSetSliderParam_10:
	pop ebp
	ret
dJointSetSliderParam_20:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x8], xmm0
	pop ebp
	ret
dJointSetSliderParam_100:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x1c], xmm0
	pop ebp
	ret
dJointSetSliderParam_90:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x18], xmm0
	pop ebp
	ret
dJointSetSliderParam_80:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x14], xmm0
	pop ebp
	ret
dJointSetSliderParam_70:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x20], xmm0
	pop ebp
	ret
dJointSetSliderParam_50:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetSliderParam_10
	movss [eax+0x4], xmm0
	pop ebp
	ret
dJointSetSliderParam_40:
	movss xmm0, dword [ebp+0x10]
	movss [eax], xmm0
	pop ebp
	ret
dJointSetSliderParam_30:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0xc], xmm0
	pop ebp
	ret
	
	
dJointSetSliderParam_jumptab_0:
	dd dJointSetSliderParam_20
	dd dJointSetSliderParam_30
	dd dJointSetSliderParam_40
	dd dJointSetSliderParam_50
	dd dJointSetSliderParam_60
	dd dJointSetSliderParam_70
	dd dJointSetSliderParam_80
	dd dJointSetSliderParam_90
	dd dJointSetSliderParam_100


;dJointSetUniversalParam
dJointSetUniversalParam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, edx
	and eax, 0xff00
	cmp eax, 0x100
	jz dJointSetUniversalParam_10
	mov eax, [ebp+0x8]
	add eax, 0xa0
	cmp edx, 0x8
	jbe dJointSetUniversalParam_20
dJointSetUniversalParam_30:
	pop ebp
	ret
dJointSetUniversalParam_20:
	jmp dword [edx*4+dJointSetUniversalParam_jumptab_0]
dJointSetUniversalParam_10:
	mov ecx, [ebp+0x8]
	add ecx, 0xcc
	movzx eax, dl
	cmp eax, 0x8
	ja dJointSetUniversalParam_30
	jmp dword [eax*4+dJointSetUniversalParam_jumptab_1]
dJointSetUniversalParam_40:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x8], xmm0
	pop ebp
	ret
dJointSetUniversalParam_120:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x1c], xmm0
	pop ebp
	ret
dJointSetUniversalParam_110:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x18], xmm0
	pop ebp
	ret
dJointSetUniversalParam_100:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x14], xmm0
	pop ebp
	ret
dJointSetUniversalParam_90:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0x20], xmm0
	pop ebp
	ret
dJointSetUniversalParam_80:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetUniversalParam_30
	ucomiss xmm0, [_float_1_00000000]
	ja dJointSetUniversalParam_30
	jp dJointSetUniversalParam_30
	movss [eax+0x10], xmm0
	pop ebp
	ret
dJointSetUniversalParam_70:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetUniversalParam_30
	movss [eax+0x4], xmm0
	pop ebp
	ret
dJointSetUniversalParam_60:
	movss xmm0, dword [ebp+0x10]
	movss [eax], xmm0
	pop ebp
	ret
dJointSetUniversalParam_50:
	movss xmm0, dword [ebp+0x10]
	movss [eax+0xc], xmm0
	pop ebp
	ret
dJointSetUniversalParam_130:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0x8], xmm0
	pop ebp
	ret
dJointSetUniversalParam_140:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0xc], xmm0
	pop ebp
	ret
dJointSetUniversalParam_150:
	movss xmm0, dword [ebp+0x10]
	movss [ecx], xmm0
	pop ebp
	ret
dJointSetUniversalParam_160:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetUniversalParam_30
	movss [ecx+0x4], xmm0
	pop ebp
	ret
dJointSetUniversalParam_170:
	movss xmm0, dword [ebp+0x10]
	ucomiss xmm0, [_float_0_00000000]
	jb dJointSetUniversalParam_30
	ucomiss xmm0, [_float_1_00000000]
	ja dJointSetUniversalParam_30
	jp dJointSetUniversalParam_30
	movss [ecx+0x10], xmm0
	pop ebp
	ret
dJointSetUniversalParam_180:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0x20], xmm0
	pop ebp
	ret
dJointSetUniversalParam_190:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0x14], xmm0
	pop ebp
	ret
dJointSetUniversalParam_200:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0x18], xmm0
	pop ebp
	ret
dJointSetUniversalParam_210:
	movss xmm0, dword [ebp+0x10]
	movss [ecx+0x1c], xmm0
	pop ebp
	ret
	
	
dJointSetUniversalParam_jumptab_0:
	dd dJointSetUniversalParam_40
	dd dJointSetUniversalParam_50
	dd dJointSetUniversalParam_60
	dd dJointSetUniversalParam_70
	dd dJointSetUniversalParam_80
	dd dJointSetUniversalParam_90
	dd dJointSetUniversalParam_100
	dd dJointSetUniversalParam_110
	dd dJointSetUniversalParam_120
dJointSetUniversalParam_jumptab_1:
	dd dJointSetUniversalParam_130
	dd dJointSetUniversalParam_140
	dd dJointSetUniversalParam_150
	dd dJointSetUniversalParam_160
	dd dJointSetUniversalParam_170
	dd dJointSetUniversalParam_180
	dd dJointSetUniversalParam_190
	dd dJointSetUniversalParam_200
	dd dJointSetUniversalParam_210


;Initialized global or static variables of joint:
SECTION .data


;Initialized constant data of joint:
SECTION .rdata


;Zero initialized global or static variables of joint:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_0xp_info1_m_d__n:		db "0x%p info1: m %d  nub %d",0ah,0
_cstring_0xp_2_m_d_skip_d:		db "0x%p 2: m %d skip %d  fps %f  erp %f",0ah,0
_cstring___d_j__f_f_f_f_f:		db "  %d: J = %f %f %f %f %f %f  ",0
_cstring_c__f__cfm__f__lo:		db "c = %f  cfm = %f  lo = %g  hi = %g  findex = %d",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_double__3_14159265:		dq 0xc00921fb54442d18	; -3.14159
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1

