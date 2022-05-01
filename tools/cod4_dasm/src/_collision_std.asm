;Imports of collision_std:
	extern dNormalize3
	extern _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1_
	extern _Z15dCollideSpheresPffS_fP12dContactGeom
	extern atan2f
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern odeGlob
	extern _Z10Pool_AllocP10pooldata_t
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern dClosestLineSegmentPoints
	extern _Z20dLineClosestApproachPKfS0_S0_S0_PfS1_
	extern memcpy
	extern _ZTV6dxGeom
	extern dFree
	extern _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	extern _Unwind_Resume
	extern _ZTI6dxGeom
	extern _ZN6dxGeom8AABBTestEPS_Pf

;Exports of collision_std:
	global _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi
	global ODE_CollideCapsuleBox
	global _Z10cullPointsiPfiiPi
	global _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi
	global _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi
	global _Z16ODE_AllocateGeomv
	global _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi
	global _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi
	global _Z17dCollideRaySphereP6dxGeomS0_iP12dContactGeomi
	global _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi
	global _Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi
	global _Z20dCollideCCylinderBoxP6dxGeomS0_iP12dContactGeomi
	global _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi
	global _Z20dCollideSphereSphereP6dxGeomS0_iP12dContactGeomi
	global _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi
	global _Z23dCollideCCylinderSphereP6dxGeomS0_iP12dContactGeomi
	global _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi
	global _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi
	global _ZN5dxBox11computeAABBEv
	global _ZN5dxBoxD0Ev
	global _ZN5dxBoxD1Ev
	global _ZTI5dxBox
	global dCreateBox
	global dGeomBoxGetLengths
	global _ZTV5dxBox


SECTION .text


;ray_sphere_helper(dxRay*, float*, float, dContactGeom*, int)
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov edi, edx
	mov esi, ecx
	mov eax, [eax+0x18]
	movss xmm6, dword [eax]
	movaps xmm4, xmm6
	subss xmm4, [edx]
	lea ecx, [edx+0x4]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edx+0x4]
	lea edx, [edx+0x8]
	mov [ebp-0x1c], edx
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edi+0x8]
	mov eax, [ebx+0x1c]
	lea edx, [eax+0x8]
	movaps xmm5, xmm4
	mulss xmm5, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, [edx+0x10]
	addss xmm5, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [edx+0x20]
	addss xmm5, xmm1
	mulss xmm4, xmm4
	mulss xmm3, xmm3
	addss xmm4, xmm3
	mulss xmm2, xmm2
	addss xmm4, xmm2
	mulss xmm0, xmm0
	subss xmm4, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	subss xmm0, xmm4
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	ja _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_10
	sqrtss xmm0, xmm0
	mov eax, [ebp+0x8]
	test eax, eax
	jnz _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_20
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_60:
	movaps xmm1, xmm5
	xorps xmm1, [_data16_80000000]
	subss xmm1, xmm0
	ucomiss xmm2, xmm1
	ja _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_30
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_70:
	ucomiss xmm1, [ebx+0x4c]
	ja _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_10
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	addss xmm6, xmm0
	movss [esi], xmm6
	mov edx, [ebx+0x18]
	mov eax, [ebx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x18]
	addss xmm0, [edx+0x4]
	movss [esi+0x4], xmm0
	mov edx, [ebx+0x18]
	mov eax, [ebx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x28]
	addss xmm0, [edx+0x8]
	movss [esi+0x8], xmm0
	ucomiss xmm2, xmm4
	ja _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_40
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_50
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_40:
	movss xmm2, dword [_float__1_00000000]
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_80:
	movss xmm0, dword [esi]
	subss xmm0, [edi]
	mulss xmm0, xmm2
	movss [esi+0x10], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ecx]
	mulss xmm0, xmm2
	movss [esi+0x14], xmm0
	movss xmm0, dword [esi+0x8]
	mov eax, [ebp-0x1c]
	subss xmm0, [eax]
	mulss xmm2, xmm0
	movss [esi+0x18], xmm2
	lea eax, [esi+0x10]
	mov [esp], eax
	movss [ebp-0x38], xmm1
	call dNormalize3
	movss xmm1, dword [ebp-0x38]
	movss [esi+0x20], xmm1
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_20:
	ucomiss xmm4, xmm2
	jb _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_60
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_30:
	movaps xmm1, xmm0
	subss xmm1, xmm5
	ucomiss xmm2, xmm1
	jbe _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_70
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_50:
	movss xmm2, dword [_float_1_00000000]
	jmp _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi_80


;ODE_CollideCapsuleBox
ODE_CollideCapsuleBox:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x60
	mov edx, [ebp+0x14]
	mov eax, [ebp+0x18]
	movss xmm1, dword [ebp+0x20]
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x8]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0x18]
	mulss xmm1, [eax+0x28]
	movaps xmm0, xmm2
	addss xmm0, [edx]
	movss [ebp-0x18], xmm0
	movaps xmm0, xmm3
	addss xmm0, [edx+0x4]
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx+0x8]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [edx]
	subss xmm0, xmm2
	movss [ebp-0x28], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm3
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss [ebp-0x20], xmm0
	lea ebx, [ebp-0x48]
	mov [esp+0x18], ebx
	lea esi, [ebp-0x38]
	mov [esp+0x14], esi
	mov eax, [ebp+0x10]
	mov [esp+0x10], eax
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x18]
	mov [esp], eax
	call _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1_
	mov eax, [ebp+0x28]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov eax, [ebp+0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	add esp, 0x60
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;cullPoints(int, float*, int, int, int*)
_Z10cullPointsiPfiiPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp edi, 0x1
	jz _Z10cullPointsiPfiiPi_10
	cmp edi, 0x2
	jz _Z10cullPointsiPfiiPi_20
	lea ecx, [edi-0x1]
	test ecx, ecx
	jg _Z10cullPointsiPfiiPi_30
	pxor xmm7, xmm7
	movss [ebp-0x64], xmm7
	movaps xmm6, xmm7
_Z10cullPointsiPfiiPi_130:
	lea eax, [ebx+edi*8]
	movss xmm3, dword [eax-0x8]
	movss xmm5, dword [ebx+0x4]
	movss xmm2, dword [ebx]
	movss xmm4, dword [eax-0x4]
	movaps xmm1, xmm3
	mulss xmm1, xmm5
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	subss xmm1, xmm0
	addss xmm6, xmm1
	mulss xmm6, [_float_3_00000000]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm6
	addss xmm3, xmm2
	mulss xmm3, xmm1
	addss xmm3, [ebp-0x64]
	mulss xmm3, xmm0
	movaps xmm2, xmm5
	addss xmm2, xmm4
	mulss xmm2, xmm1
	addss xmm2, xmm7
	mulss xmm2, xmm0
	test edi, edi
	jg _Z10cullPointsiPfiiPi_40
_Z10cullPointsiPfiiPi_160:
	mov eax, [ebp+0x14]
	mov dword [ebp+eax*4-0x58], 0x0
	mov edx, [ebp+0x18]
	mov [edx], eax
	mov ebx, edx
	add ebx, 0x4
	cmp dword [ebp+0x10], 0x1
	jle _Z10cullPointsiPfiiPi_50
	cvtsi2sd xmm0, dword [ebp+0x10]
	movsd xmm5, qword [_double_6_28318531]
	movapd xmm1, xmm5
	divsd xmm1, xmm0
	movsd [ebp-0x60], xmm1
	cvtss2sd xmm7, [ebp+eax*4-0x38]
	mov ecx, 0x1
	movsd xmm6, qword [_double_3_14159265]
	movss xmm3, dword [_data16_7fffffff]
	mov esi, 0x4e6e6b28
_Z10cullPointsiPfiiPi_110:
	cvtsi2ss xmm0, ecx
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [ebp-0x60]
	addsd xmm0, xmm7
	cvtsd2ss xmm2, xmm0
	cvtss2sd xmm0, xmm2
	ucomisd xmm0, xmm6
	jbe _Z10cullPointsiPfiiPi_60
	subsd xmm0, xmm5
	cvtsd2ss xmm2, xmm0
_Z10cullPointsiPfiiPi_60:
	test edi, edi
	jle _Z10cullPointsiPfiiPi_70
	xor edx, edx
	mov [ebp-0x8c], esi
	movss xmm4, dword [ebp-0x8c]
_Z10cullPointsiPfiiPi_100:
	lea eax, [edx*4]
	cmp dword [ebp+eax-0x58], 0x0
	jz _Z10cullPointsiPfiiPi_80
	movss xmm0, dword [ebp+eax-0x38]
	subss xmm0, xmm2
	andps xmm0, xmm3
	cvtss2sd xmm1, xmm0
	ucomisd xmm1, xmm6
	jbe _Z10cullPointsiPfiiPi_90
	movapd xmm0, xmm5
	subsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
_Z10cullPointsiPfiiPi_90:
	ucomiss xmm4, xmm0
	jbe _Z10cullPointsiPfiiPi_80
	mov [ebx+ecx*4-0x4], edx
	movaps xmm4, xmm0
_Z10cullPointsiPfiiPi_80:
	add edx, 0x1
	cmp edi, edx
	jnz _Z10cullPointsiPfiiPi_100
_Z10cullPointsiPfiiPi_70:
	mov eax, [ebx+ecx*4-0x4]
	mov dword [ebp+eax*4-0x58], 0x0
	add ecx, 0x1
	cmp [ebp+0x10], ecx
	jnz _Z10cullPointsiPfiiPi_110
_Z10cullPointsiPfiiPi_50:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10cullPointsiPfiiPi_30:
	xor edx, edx
	pxor xmm7, xmm7
	movss [ebp-0x64], xmm7
	movaps xmm6, xmm7
	mov eax, ebx
_Z10cullPointsiPfiiPi_120:
	movss xmm2, dword [eax]
	movss xmm3, dword [eax+0xc]
	movss xmm4, dword [eax+0x8]
	movss xmm5, dword [eax+0x4]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movaps xmm1, xmm4
	mulss xmm1, xmm5
	subss xmm0, xmm1
	addss xmm6, xmm0
	addss xmm2, xmm4
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x64]
	movss [ebp-0x64], xmm2
	addss xmm3, xmm5
	mulss xmm0, xmm3
	addss xmm7, xmm0
	add edx, 0x1
	add eax, 0x8
	cmp ecx, edx
	jnz _Z10cullPointsiPfiiPi_120
	jmp _Z10cullPointsiPfiiPi_130
_Z10cullPointsiPfiiPi_10:
	movss xmm3, dword [ebx]
	movss xmm2, dword [ebx+0x4]
_Z10cullPointsiPfiiPi_40:
	xor esi, esi
_Z10cullPointsiPfiiPi_140:
	movss xmm0, dword [ebx]
	subss xmm0, xmm3
	movss xmm1, dword [ebx+0x4]
	subss xmm1, xmm2
	movss [esp+0x4], xmm0
	movss [esp], xmm1
	movss [ebp-0x78], xmm2
	movss [ebp-0x88], xmm3
	call atan2f
	fstp dword [ebp+esi*4-0x38]
	add esi, 0x1
	add ebx, 0x8
	cmp edi, esi
	movss xmm2, dword [ebp-0x78]
	movss xmm3, dword [ebp-0x88]
	jnz _Z10cullPointsiPfiiPi_140
	xor eax, eax
_Z10cullPointsiPfiiPi_150:
	mov dword [ebp+eax*4-0x58], 0x1
	add eax, 0x1
	cmp edi, eax
	jnz _Z10cullPointsiPfiiPi_150
	jmp _Z10cullPointsiPfiiPi_160
_Z10cullPointsiPfiiPi_20:
	movss xmm3, dword [ebx]
	addss xmm3, [ebx+0x8]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm3, xmm0
	movss xmm2, dword [ebx+0x4]
	addss xmm2, [ebx+0xc]
	mulss xmm2, xmm0
	jmp _Z10cullPointsiPfiiPi_40


;dCollideBoxBox(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x18]
	mov [esp+0x2c], edi
	mov eax, [ebp+0x14]
	mov [esp+0x28], eax
	movzx eax, word [ebp+0x10]
	mov [esp+0x24], eax
	lea eax, [ebp-0x20]
	mov [esp+0x20], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x30]
	mov [esp+0x18], eax
	lea eax, [ebx+0x4c]
	mov [esp+0x14], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebx+0x18]
	mov [esp+0xc], eax
	lea eax, [esi+0x4c]
	mov [esp+0x8], eax
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov eax, [esi+0x18]
	mov [esp], eax
	call _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi
	test eax, eax
	jle _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi_10
	xor ecx, ecx
	movss xmm1, dword [_data16_80000000]
	mov edx, [ebp+0x14]
_Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi_20:
	movss xmm0, dword [ebp-0x30]
	xorps xmm0, xmm1
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x2c]
	xorps xmm0, xmm1
	movss [edx+0x14], xmm0
	movss xmm0, dword [ebp-0x28]
	xorps xmm0, xmm1
	movss [edx+0x18], xmm0
	mov [edx+0x24], esi
	mov [edx+0x28], ebx
	add ecx, 0x1
	add edx, edi
	cmp eax, ecx
	jnz _Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi_20
_Z14dCollideBoxBoxP6dxGeomS0_iP12dContactGeomi_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dCollideRayBox(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	mov [eax+0x24], edx
	mov ecx, [ebp+0xc]
	mov [eax+0x28], ecx
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x18]
	movss xmm0, dword [edx]
	movss [ebp-0x70], xmm0
	mov eax, [ecx+0x18]
	movaps xmm2, xmm0
	subss xmm2, [eax]
	movss xmm3, dword [edx+0x4]
	subss xmm3, [eax+0x4]
	movss xmm4, dword [edx+0x8]
	subss xmm4, [eax+0x8]
	mov edx, [ecx+0x1c]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [edx+0x20]
	movss [ebp-0x68], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [edx]
	movss xmm1, dword [ebp-0x6c]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movss xmm5, dword [edx+0x4]
	movss xmm0, dword [edx+0x14]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [edx+0x24]
	movss [ebp-0x60], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x64]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x60]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm1, dword [edx+0x8]
	movss xmm6, dword [edx+0x18]
	movss xmm7, dword [edx+0x28]
	mulss xmm2, xmm1
	mulss xmm3, xmm6
	addss xmm2, xmm3
	mulss xmm4, xmm7
	addss xmm2, xmm4
	movss [ebp-0x2c], xmm2
	mov eax, [ebx+0x1c]
	movss xmm4, dword [eax+0x8]
	movss [ebp-0x5c], xmm4
	movss xmm2, dword [eax+0x18]
	movss xmm3, dword [eax+0x28]
	movaps xmm0, xmm4
	mulss xmm0, [edx]
	movss xmm4, dword [ebp-0x6c]
	mulss xmm4, xmm2
	addss xmm0, xmm4
	movss xmm4, dword [ebp-0x68]
	mulss xmm4, xmm3
	addss xmm0, xmm4
	movss [ebp-0x44], xmm0
	mulss xmm5, [ebp-0x5c]
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	movss xmm4, dword [ebp-0x60]
	mulss xmm4, xmm3
	addss xmm5, xmm4
	movss [ebp-0x40], xmm5
	mulss xmm1, [ebp-0x5c]
	mulss xmm6, xmm2
	addss xmm1, xmm6
	mulss xmm7, xmm3
	addss xmm1, xmm7
	movss [ebp-0x3c], xmm1
	mov ebx, 0x1
	lea edi, [ebp-0x44]
	pxor xmm6, xmm6
	movss xmm5, dword [_data16_80000000]
	lea esi, [ebp-0x54]
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_20:
	lea edx, [ebx*4]
	lea ecx, [edi+edx]
	movss xmm1, dword [ecx-0x4]
	ucomiss xmm6, xmm1
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_10
	mov dword [esi+edx-0x4], 0xbf800000
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_160:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_20
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x4c]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm4, dword [eax+0x50]
	mulss xmm4, xmm0
	movss [ebp-0x20], xmm4
	movaps xmm3, xmm0
	mulss xmm3, [eax+0x54]
	movss [ebp-0x1c], xmm3
	movss xmm2, dword [ebp-0x34]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm2
	jbe _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_30
	ucomiss xmm6, [ebp-0x44]
	jae _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_30:
	ucomiss xmm2, xmm1
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	movss xmm1, dword [ebp-0x30]
	movaps xmm0, xmm4
	xorps xmm0, xmm5
	ucomiss xmm0, xmm1
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_50
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_150:
	ucomiss xmm1, xmm4
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	movss xmm1, dword [ebp-0x2c]
	movaps xmm0, xmm3
	xorps xmm0, xmm5
	ucomiss xmm0, xmm1
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_60
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_170:
	ucomiss xmm1, xmm3
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	ucomiss xmm6, [ebp-0x44]
	jnz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70
	jp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70
	ucomiss xmm6, [ebp-0x40]
	jnz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70
	jp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70
	ucomiss xmm6, [ebp-0x3c]
	jp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70
	jz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_70:
	xor ecx, ecx
	movss xmm0, dword [_float__340282346638528859811704]
	movss xmm7, dword [_float_3402823466385288598117041]
	xor edx, edx
	xor ebx, ebx
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_120:
	lea eax, [ecx*4]
	movss xmm2, dword [ebp+eax-0x44]
	ucomiss xmm2, xmm6
	jp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_80
	jz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_90
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_80:
	movss xmm4, dword [ebp+eax-0x24]
	movss xmm3, dword [ebp+eax-0x34]
	movaps xmm1, xmm4
	xorps xmm1, xmm5
	subss xmm1, xmm3
	divss xmm1, xmm2
	ucomiss xmm1, xmm0
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_100
	movaps xmm1, xmm4
	subss xmm1, xmm3
	divss xmm1, xmm2
	ucomiss xmm7, xmm1
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_110
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_90:
	add ecx, 0x1
	cmp ecx, 0x3
	jnz _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_120
	ucomiss xmm0, xmm7
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	ucomiss xmm0, xmm6
	jb _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_130
	movaps xmm2, xmm0
	mov ecx, edx
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_180:
	ucomiss xmm6, xmm2
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	mov edx, [ebp+0x8]
	ucomiss xmm2, [edx+0x4c]
	ja _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, xmm2
	movss xmm4, dword [ebp-0x70]
	addss xmm4, xmm0
	mov eax, [ebp+0x14]
	movss [eax], xmm4
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x18]
	mov eax, [ebx+0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x18]
	addss xmm0, [edx+0x4]
	mov eax, [ebp+0x14]
	movss [eax+0x4], xmm0
	mov edx, [ebx+0x18]
	mov eax, [ebx+0x1c]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x28]
	addss xmm0, [edx+0x8]
	mov edx, [ebp+0x14]
	movss [edx+0x8], xmm0
	lea edx, [ecx*4]
	movss xmm1, dword [ebp+ecx*4-0x54]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+edx]
	mov ebx, [ebp+0x14]
	movss [ebx+0x10], xmm0
	mov eax, [ecx+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+edx+0x10]
	movss [ebx+0x14], xmm0
	mov eax, [ecx+0x1c]
	mulss xmm1, [edx+eax+0x20]
	movss [ebx+0x18], xmm1
	movss [ebx+0x20], xmm2
	mov eax, 0x1
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_140
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_50:
	ucomiss xmm6, [ebp-0x40]
	jb _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_150
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40:
	xor eax, eax
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_140:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_10:
	lea eax, [ebp-0x34]
	add eax, edx
	movss xmm0, dword [eax-0x4]
	xorps xmm0, xmm5
	movss [eax-0x4], xmm0
	xorps xmm1, xmm5
	movss [ecx-0x4], xmm1
	mov dword [esi+edx-0x4], 0x3f800000
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_160
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_60:
	ucomiss xmm6, [ebp-0x3c]
	jb _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_170
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_40
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_110:
	movaps xmm7, xmm1
	mov ebx, ecx
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_90
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_100:
	movaps xmm0, xmm1
	mov edx, ecx
	movaps xmm1, xmm4
	subss xmm1, xmm3
	divss xmm1, xmm2
	ucomiss xmm7, xmm1
	jbe _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_90
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_110
_Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_130:
	movaps xmm2, xmm7
	mov ecx, ebx
	jmp _Z14dCollideRayBoxP6dxGeomS0_iP12dContactGeomi_180


;ODE_AllocateGeom()
_Z16ODE_AllocateGeomv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, odeGlob
	add eax, 0x2c6478
	mov [esp], eax
	call _Z10Pool_AllocP10pooldata_t
	mov ebx, eax
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;dCollideBoxPlane(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x14]
	mov [eax+0x24], esi
	mov edx, [ebp+0xc]
	mov [eax+0x28], edx
	mov ecx, [esi+0x1c]
	add edx, 0x4c
	mov [ebp-0x80], edx
	mov ebx, [ebp+0xc]
	movss xmm1, dword [ebx+0x4c]
	movss xmm0, dword [ecx]
	movss [ebp-0x6c], xmm0
	add ebx, 0x50
	mov [ebp-0x68], ebx
	mov eax, [ebp+0xc]
	movss xmm3, dword [eax+0x50]
	lea edx, [ecx+0x10]
	mov [ebp-0x64], edx
	movss xmm0, dword [ecx+0x10]
	movss [ebp-0x60], xmm0
	add eax, 0x54
	mov [ebp-0x5c], eax
	mov eax, [ebp+0xc]
	movss xmm2, dword [eax+0x54]
	lea edx, [ecx+0x20]
	mov [ebp-0x58], edx
	movss xmm0, dword [ecx+0x20]
	movss [ebp-0x54], xmm0
	lea eax, [ecx+0x4]
	mov [ebp-0x50], eax
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0x4c], xmm0
	lea eax, [ecx+0x14]
	mov [ebp-0x48], eax
	movss xmm0, dword [ecx+0x14]
	movss [ebp-0x44], xmm0
	lea eax, [ecx+0x24]
	mov [ebp-0x40], eax
	movss xmm0, dword [ecx+0x24]
	movss [ebp-0x3c], xmm0
	lea eax, [ecx+0x8]
	mov [ebp-0x38], eax
	movss xmm0, dword [ecx+0x8]
	movss [ebp-0x34], xmm0
	lea eax, [ecx+0x18]
	mov [ebp-0x30], eax
	movss xmm0, dword [ecx+0x18]
	movss [ebp-0x2c], xmm0
	lea eax, [ecx+0x28]
	mov [ebp-0x28], eax
	movss xmm0, dword [ecx+0x28]
	movss [ebp-0x24], xmm0
	movss xmm4, dword [esi+0x4c]
	movss [ebp-0x8c], xmm4
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm1
	movss [ebp-0x7c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x7c]
	movss [ebp-0x7c], xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x7c]
	mulss xmm0, xmm4
	movss [ebp-0x7c], xmm0
	movss xmm4, dword [esi+0x50]
	movss [ebp-0x88], xmm4
	movss xmm7, dword [ebp-0x4c]
	mulss xmm7, xmm1
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, xmm3
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	mulss xmm7, xmm4
	movss xmm0, dword [esi+0x54]
	movss [ebp-0x84], xmm0
	movss xmm6, dword [ebp-0x34]
	mulss xmm6, xmm1
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm3
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x24]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	mulss xmm6, [ebp-0x84]
	movss xmm0, dword [_data16_7fffffff]
	movss xmm4, dword [ebp-0x7c]
	andps xmm4, xmm0
	movss [ebp-0x78], xmm4
	movaps xmm4, xmm7
	andps xmm4, xmm0
	movss [ebp-0x74], xmm4
	movaps xmm4, xmm6
	andps xmm4, xmm0
	movss [ebp-0x70], xmm4
	mov edx, [esi+0x18]
	movss xmm5, dword [ebp-0x78]
	addss xmm5, [ebp-0x74]
	addss xmm5, xmm4
	mulss xmm5, [_float_0_50000000]
	mov eax, [ebp+0xc]
	addss xmm5, [eax+0x58]
	mulss xmm1, [edx]
	mulss xmm3, [edx+0x4]
	addss xmm1, xmm3
	mulss xmm2, [edx+0x8]
	addss xmm1, xmm2
	subss xmm5, xmm1
	ucomiss xmm5, [_float_0_00000000]
	jb _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_10
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_290:
	mov edi, [ebp+0x10]
	and edi, 0xffff
	jle _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_20
	cmp edi, 0x4
	mov eax, 0x3
	cmovge edi, eax
	movss xmm1, dword [edx]
	movss xmm4, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x1c], xmm0
	movss xmm3, dword [ebp-0x7c]
	ucomiss xmm3, [_float_0_00000000]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_30
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_250:
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [_float__0_50000000]
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, xmm0
	addss xmm3, xmm1
	movss xmm2, dword [ebp-0x60]
	mulss xmm2, xmm0
	addss xmm2, xmm4
	movss xmm1, dword [ebp-0x54]
	mulss xmm1, xmm0
	addss xmm1, [ebp-0x1c]
	ucomiss xmm7, [_float_0_00000000]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_40
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_260:
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float__0_50000000]
	movss xmm4, dword [ebp-0x4c]
	mulss xmm4, xmm0
	addss xmm4, xmm3
	movss xmm3, dword [ebp-0x44]
	mulss xmm3, xmm0
	addss xmm3, xmm2
	movss xmm2, dword [ebp-0x3c]
	mulss xmm2, xmm0
	addss xmm2, xmm1
	ucomiss xmm6, [_float_0_00000000]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_50
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_270:
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [_float__0_50000000]
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, xmm0
	addss xmm4, xmm1
	movss [ebp-0x20], xmm4
	movss xmm4, dword [ebp-0x2c]
	mulss xmm4, xmm0
	addss xmm4, xmm3
	movss xmm1, dword [ebp-0x24]
	mulss xmm1, xmm0
	addss xmm1, xmm2
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_280:
	movss xmm0, dword [ebp-0x20]
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	movss [eax+0x4], xmm4
	movss [eax+0x8], xmm1
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov ebx, [ebp+0x14]
	mov [ebx+0x10], eax
	mov edx, [ebp-0x68]
	mov eax, [edx]
	mov [ebx+0x14], eax
	mov ebx, [ebp-0x5c]
	mov eax, [ebx]
	mov edx, [ebp+0x14]
	mov [edx+0x18], eax
	movss [edx+0x20], xmm5
	cmp edi, 0x1
	jz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_60
	mov ebx, edx
	add ebx, [ebp+0x18]
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov [ebx+0x10], eax
	mov edx, [ebp-0x68]
	mov eax, [edx]
	mov [ebx+0x14], eax
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov [ebx+0x18], eax
	cmp edi, 0x3
	jz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_70
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [ebp-0x78]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_80
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_220:
	ucomiss xmm0, [ebp-0x70]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_90
	movaps xmm2, xmm5
	subss xmm2, [ebp-0x74]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_60
	ucomiss xmm7, xmm0
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_100
	movss xmm0, dword [esi+0x50]
	mov eax, [ebp-0x50]
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x20]
	movss [ebx], xmm0
	movss xmm0, dword [esi+0x50]
	mov edx, [ebp-0x48]
	mulss xmm0, [edx]
	addss xmm0, xmm4
	movss [ebx+0x4], xmm0
	movss xmm0, dword [esi+0x50]
	mov eax, [ebp-0x40]
	mulss xmm0, [eax]
	addss xmm0, xmm1
	movss [ebx+0x8], xmm0
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_300:
	movss [ebx+0x20], xmm2
	cmp edi, 0x2
	jz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [ebp-0x78]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_120
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_170:
	subss xmm2, [ebp-0x70]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	ucomiss xmm6, [_float_0_00000000]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_130
	mov ebx, [ebp+0x18]
	mov edx, [ebp+0x14]
	lea eax, [edx+ebx*2]
	movss xmm0, dword [esi+0x54]
	mov ecx, [ebp-0x38]
	mulss xmm0, [ecx]
	addss xmm0, [ebp-0x20]
	movss [eax], xmm0
	movss xmm0, dword [esi+0x54]
	mov ebx, [ebp-0x30]
	mulss xmm0, [ebx]
	addss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x54]
	mov edx, [ebp-0x28]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_80:
	movss xmm3, dword [ebp-0x78]
	ucomiss xmm3, [ebp-0x70]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_90
	movaps xmm2, xmm5
	subss xmm2, xmm3
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_60
	movss xmm3, dword [ebp-0x7c]
	ucomiss xmm3, xmm0
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_150
	movss xmm0, dword [esi+0x4c]
	mulss xmm0, [ecx]
	addss xmm0, [ebp-0x20]
	movss [ebx], xmm0
	movss xmm0, dword [esi+0x4c]
	mov eax, [ebp-0x64]
	mulss xmm0, [eax]
	addss xmm0, xmm4
	movss [ebx+0x4], xmm0
	movss xmm0, dword [esi+0x4c]
	mov edx, [ebp-0x58]
	mulss xmm0, [edx]
	addss xmm0, xmm1
	movss [ebx+0x8], xmm0
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_310:
	movss [ebx+0x20], xmm2
	cmp edi, 0x2
	jz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	movss xmm0, dword [ebp-0x70]
	ucomiss xmm0, [ebp-0x74]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_160
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_170
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_90:
	movaps xmm2, xmm5
	subss xmm2, [ebp-0x70]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_60
	ucomiss xmm6, xmm3
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_180
	movss xmm0, dword [esi+0x54]
	mov eax, [ebp-0x38]
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x20]
	movss [ebx], xmm0
	movss xmm0, dword [esi+0x54]
	mov edx, [ebp-0x30]
	mulss xmm0, [edx]
	addss xmm0, xmm4
	movss [ebx+0x4], xmm0
	movss xmm0, dword [esi+0x54]
	mov eax, [ebp-0x28]
	mulss xmm0, [eax]
	addss xmm0, xmm1
	movss [ebx+0x8], xmm0
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_230:
	movss [ebx+0x20], xmm2
	cmp edi, 0x2
	jz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [ebp-0x78]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_120
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_160:
	subss xmm2, [ebp-0x74]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	ucomiss xmm7, [_float_0_00000000]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_190
	mov ebx, [ebp+0x18]
	mov edx, [ebp+0x14]
	lea eax, [edx+ebx*2]
	movss xmm0, dword [esi+0x50]
	mov ecx, [ebp-0x50]
	mulss xmm0, [ecx]
	addss xmm0, [ebp-0x20]
	movss [eax], xmm0
	movss xmm0, dword [esi+0x50]
	mov ebx, [ebp-0x48]
	mulss xmm0, [ebx]
	addss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x50]
	mov edx, [ebp-0x40]
	mulss xmm0, [edx]
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140:
	movss [eax+0x20], xmm2
	mov eax, 0x3
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_210:
	xor ecx, ecx
	mov edx, [ebp+0x14]
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_200:
	mov [edx+0x24], esi
	mov ebx, [ebp+0xc]
	mov [edx+0x28], ebx
	add ecx, 0x1
	add edx, [ebp+0x18]
	cmp eax, ecx
	jnz _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_200
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_60:
	mov eax, 0x1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_210
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_70:
	mov eax, [ebp+0x18]
	mov edx, [ebp+0x14]
	lea eax, [edx+eax*2]
	mov [ebp-0x9c], eax
	mov edx, [ebp-0x80]
	mov eax, [edx]
	mov edx, [ebp-0x9c]
	mov [edx+0x10], eax
	mov edx, [ebp-0x68]
	mov eax, [edx]
	mov edx, [ebp-0x9c]
	mov [edx+0x14], eax
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov edx, [ebp-0x9c]
	mov [edx+0x18], eax
	movss xmm0, dword [ebp-0x74]
	ucomiss xmm0, [ebp-0x78]
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_220
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_80
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_180:
	movss xmm0, dword [esi+0x54]
	mov edx, [ebp-0x38]
	mulss xmm0, [edx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [ebx], xmm3
	movss xmm0, dword [esi+0x54]
	mov eax, [ebp-0x30]
	mulss xmm0, [eax]
	movaps xmm3, xmm4
	subss xmm3, xmm0
	movss [ebx+0x4], xmm3
	movss xmm0, dword [esi+0x54]
	mov eax, [ebp-0x28]
	mulss xmm0, [eax]
	movaps xmm3, xmm1
	subss xmm3, xmm0
	movss [ebx+0x8], xmm3
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_230
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_120:
	subss xmm2, [ebp-0x78]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm2
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110
	movss xmm0, dword [ebp-0x7c]
	ucomiss xmm0, xmm3
	jbe _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_240
	mov edx, [ebp+0x18]
	mov ebx, [ebp+0x14]
	lea eax, [ebx+edx*2]
	movss xmm0, dword [esi+0x4c]
	mulss xmm0, [ecx]
	addss xmm0, [ebp-0x20]
	movss [eax], xmm0
	movss xmm0, dword [esi+0x4c]
	mov edx, [ebp-0x64]
	mulss xmm0, [edx]
	addss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x4c]
	mov ecx, [ebp-0x58]
	mulss xmm0, [ecx]
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_110:
	mov eax, 0x2
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_210
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_20:
	mov edi, 0x1
	movss xmm1, dword [edx]
	movss xmm4, dword [edx+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x1c], xmm0
	movss xmm3, dword [ebp-0x7c]
	ucomiss xmm3, [_float_0_00000000]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_250
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_30:
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, [_float_0_50000000]
	movss xmm3, dword [ebp-0x6c]
	mulss xmm3, xmm0
	addss xmm3, xmm1
	movss xmm2, dword [ebp-0x60]
	mulss xmm2, xmm0
	addss xmm2, xmm4
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x54]
	addss xmm1, [ebp-0x1c]
	ucomiss xmm7, [_float_0_00000000]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_260
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_40:
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, [_float_0_50000000]
	movss xmm4, dword [ebp-0x4c]
	mulss xmm4, xmm0
	addss xmm4, xmm3
	movss xmm3, dword [ebp-0x44]
	mulss xmm3, xmm0
	addss xmm3, xmm2
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x3c]
	addss xmm2, xmm1
	ucomiss xmm6, [_float_0_00000000]
	ja _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_270
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_50:
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [ebp-0x84]
	movss xmm1, dword [ebp-0x34]
	mulss xmm1, xmm0
	addss xmm4, xmm1
	movss [ebp-0x20], xmm4
	movss xmm4, dword [ebp-0x2c]
	mulss xmm4, xmm0
	addss xmm4, xmm3
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x24]
	addss xmm1, xmm2
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_280
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_10:
	jp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_290
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_100:
	movss xmm0, dword [esi+0x50]
	mov edx, [ebp-0x50]
	mulss xmm0, [edx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [ebx], xmm3
	movss xmm0, dword [esi+0x50]
	mov eax, [ebp-0x48]
	mulss xmm0, [eax]
	movaps xmm3, xmm4
	subss xmm3, xmm0
	movss [ebx+0x4], xmm3
	movss xmm0, dword [esi+0x50]
	mov eax, [ebp-0x40]
	mulss xmm0, [eax]
	movaps xmm3, xmm1
	subss xmm3, xmm0
	movss [ebx+0x8], xmm3
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_300
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_150:
	movss xmm0, dword [esi+0x4c]
	mulss xmm0, [ecx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [ebx], xmm3
	movss xmm0, dword [esi+0x4c]
	mov eax, [ebp-0x64]
	mulss xmm0, [eax]
	movaps xmm3, xmm4
	subss xmm3, xmm0
	movss [ebx+0x4], xmm3
	movss xmm0, dword [esi+0x4c]
	mov eax, [ebp-0x58]
	mulss xmm0, [eax]
	movaps xmm3, xmm1
	subss xmm3, xmm0
	movss [ebx+0x8], xmm3
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_310
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_240:
	mov ebx, [ebp+0x18]
	mov edx, [ebp+0x14]
	lea eax, [edx+ebx*2]
	movss xmm0, dword [esi+0x4c]
	mulss xmm0, [ecx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [eax], xmm3
	movss xmm0, dword [esi+0x4c]
	mov edx, [ebp-0x64]
	mulss xmm0, [edx]
	subss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x4c]
	mov ecx, [ebp-0x58]
	mulss xmm0, [ecx]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_190:
	mov ecx, [ebp+0x18]
	mov ebx, [ebp+0x14]
	lea eax, [ebx+ecx*2]
	movss xmm0, dword [esi+0x50]
	mov edx, [ebp-0x50]
	mulss xmm0, [edx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [eax], xmm3
	movss xmm0, dword [esi+0x50]
	mov edx, [ebp-0x48]
	mulss xmm0, [edx]
	subss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x50]
	mov ecx, [ebp-0x40]
	mulss xmm0, [ecx]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140
_Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_130:
	mov ecx, [ebp+0x18]
	mov ebx, [ebp+0x14]
	lea eax, [ebx+ecx*2]
	movss xmm0, dword [esi+0x54]
	mov edx, [ebp-0x38]
	mulss xmm0, [edx]
	movss xmm3, dword [ebp-0x20]
	subss xmm3, xmm0
	movss [eax], xmm3
	movss xmm0, dword [esi+0x54]
	mov edx, [ebp-0x30]
	mulss xmm0, [edx]
	subss xmm4, xmm0
	movss [eax+0x4], xmm4
	movss xmm0, dword [esi+0x54]
	mov ecx, [ebp-0x28]
	mulss xmm0, [ecx]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	jmp _Z16dCollideBoxPlaneP6dxGeomS0_iP12dContactGeomi_140


;dCollideRayPlane(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [edi+0x18]
	lea ecx, [esi+0x4c]
	movss xmm2, dword [ecx+0x4]
	movss xmm3, dword [ecx+0x8]
	movss xmm0, dword [esi+0x4c]
	mulss xmm0, [ebx]
	movaps xmm1, xmm2
	mulss xmm1, [ebx+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0x8]
	addss xmm0, xmm1
	movss xmm1, dword [esi+0x58]
	subss xmm1, xmm0
	pxor xmm4, xmm4
	ucomiss xmm1, xmm4
	jbe _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_10
	movss xmm5, dword [_float__1_00000000]
_Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_40:
	mov edx, [edi+0x1c]
	lea eax, [edx+0x8]
	movss xmm0, dword [ecx]
	mulss xmm0, [edx+0x8]
	mulss xmm2, [eax+0x10]
	addss xmm0, xmm2
	mulss xmm3, [eax+0x20]
	addss xmm0, xmm3
	ucomiss xmm0, xmm4
	jp _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_20
	jz _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_30
_Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_20:
	divss xmm1, xmm0
	ucomiss xmm4, xmm1
	ja _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_30
	ucomiss xmm1, [edi+0x4c]
	ja _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_30
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x8]
	addss xmm0, [ebx]
	mov eax, [ebp+0x14]
	movss [eax], xmm0
	mov edx, [edi+0x18]
	mov eax, [edi+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x18]
	addss xmm0, [edx+0x4]
	mov eax, [ebp+0x14]
	movss [eax+0x4], xmm0
	mov edx, [edi+0x18]
	mov eax, [edi+0x1c]
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x28]
	addss xmm0, [edx+0x8]
	mov eax, [ebp+0x14]
	movss [eax+0x8], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [esi+0x4c]
	movss [eax+0x10], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [esi+0x50]
	movss [eax+0x14], xmm0
	mulss xmm5, [esi+0x54]
	movss [eax+0x18], xmm5
	movss [eax+0x20], xmm1
	mov [eax+0x24], edi
	mov [eax+0x28], esi
	mov eax, 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_30:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_10:
	movss xmm5, dword [_float_1_00000000]
	jmp _Z16dCollideRayPlaneP6dxGeomS0_iP12dContactGeomi_40


;dCollideRaySphere(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z17dCollideRaySphereP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	mov [ecx+0x24], eax
	mov [ecx+0x28], edx
	movss xmm0, dword [edx+0x4c]
	mov edx, [edx+0x18]
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi
	nop


;dCollideSphereBox(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov [ebx+0x24], eax
	mov [ebx+0x28], esi
	mov edx, [eax+0x18]
	movss xmm0, dword [edx]
	movss [ebp-0x64], xmm0
	mov eax, [esi+0x18]
	movss xmm0, dword [eax]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x60]
	movss [ebp-0x50], xmm0
	movss xmm7, dword [edx+0x4]
	subss xmm7, [eax+0x4]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x54], xmm0
	subss xmm0, [eax+0x8]
	movss [ebp-0x54], xmm0
	movss xmm6, dword [_float_0_50000000]
	movss xmm1, dword [esi+0x4c]
	mulss xmm1, xmm6
	movss [ebp-0x28], xmm1
	mov edx, [esi+0x1c]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [edx+0x20]
	movss [ebp-0x58], xmm0
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, [edx]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, xmm7
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [ebp-0x58]
	addss xmm4, xmm0
	movss [ebp-0x38], xmm4
	movss xmm5, dword [_data16_80000000]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm4
	ja _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_10
	xor ecx, ecx
	movss xmm4, dword [ebp-0x38]
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_80:
	ucomiss xmm4, xmm1
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_20
	movaps xmm4, xmm1
	movss [ebp-0x38], xmm1
	mov ecx, 0x1
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_20:
	movss xmm2, dword [esi+0x50]
	mulss xmm2, xmm6
	movss [ebp-0x24], xmm2
	lea eax, [edx+0x4]
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [edx+0x4]
	movaps xmm1, xmm7
	mulss xmm1, [eax+0x10]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x54]
	mulss xmm1, [eax+0x20]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm1, xmm2
	xorps xmm1, xmm5
	ucomiss xmm1, xmm0
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_30
	movss [ebp-0x34], xmm1
	mov ecx, 0x1
	movaps xmm0, xmm1
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_30:
	ucomiss xmm0, xmm2
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_40
	movss [ebp-0x34], xmm2
	mov ecx, 0x1
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_40:
	lea eax, [edx+0x8]
	movss xmm3, dword [ebp-0x50]
	mulss xmm3, [edx+0x8]
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x10]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [eax+0x20]
	addss xmm3, xmm0
	movss [ebp-0x30], xmm3
	movaps xmm0, xmm6
	mulss xmm0, [esi+0x54]
	movss [ebp-0x20], xmm0
	movaps xmm1, xmm0
	xorps xmm1, xmm5
	ucomiss xmm1, xmm3
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_50
	movss [ebp-0x30], xmm1
	mov ecx, 0x1
	movaps xmm3, xmm1
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_50:
	ucomiss xmm3, xmm0
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_60
	movaps xmm3, xmm0
	movss [ebp-0x30], xmm0
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_90:
	pxor xmm2, xmm2
	movss [ebp-0x2c], xmm2
	movss xmm1, dword [ebp-0x34]
	movaps xmm6, xmm4
	mulss xmm6, [edx]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm6, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x8]
	addss xmm6, xmm0
	movss xmm5, dword [ebp-0x5c]
	mulss xmm5, xmm4
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x14]
	addss xmm5, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x18]
	addss xmm5, xmm0
	mulss xmm4, [ebp-0x58]
	mulss xmm1, [edx+0x24]
	addss xmm4, xmm1
	mulss xmm3, [edx+0x28]
	addss xmm4, xmm3
	movss xmm3, dword [ebp-0x50]
	subss xmm3, xmm6
	subss xmm7, xmm5
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm4
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax+0x4c]
	subss xmm1, xmm0
	ucomiss xmm2, xmm1
	ja _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_70
	addss xmm6, [ebp-0x60]
	movss [ebx], xmm6
	mov eax, [esi+0x18]
	addss xmm5, [eax+0x4]
	movss [ebx+0x4], xmm5
	mov eax, [esi+0x18]
	addss xmm4, [eax+0x8]
	movss [ebx+0x8], xmm4
	movss [ebx+0x10], xmm3
	movss [ebx+0x14], xmm7
	movss xmm0, dword [ebp-0x4c]
	movss [ebx+0x18], xmm0
	lea eax, [ebx+0x10]
	mov [esp], eax
	movss [ebp-0x78], xmm1
	call dNormalize3
	movss xmm1, dword [ebp-0x78]
	movss [ebx+0x20], xmm1
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_10:
	movss [ebp-0x38], xmm0
	mov ecx, 0x1
	movaps xmm4, xmm0
	jmp _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_80
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_60:
	test ecx, ecx
	jnz _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_90
	movss xmm2, dword [_data16_7fffffff]
	andps xmm4, xmm2
	movss xmm5, dword [ebp-0x28]
	subss xmm5, xmm4
	xor edi, edi
	mov cl, 0x1
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_110:
	lea edx, [ecx+0x1]
	lea eax, [edx*4]
	movss xmm0, dword [ebp+eax-0x3c]
	andps xmm0, xmm2
	movss xmm1, dword [ebp+eax-0x2c]
	subss xmm1, xmm0
	ucomiss xmm5, xmm1
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_100
	movaps xmm5, xmm1
	mov edi, ecx
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_100:
	mov ecx, edx
	cmp edx, 0x3
	jnz _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_110
	movss xmm0, dword [ebp-0x64]
	movss [ebx], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18]
	mov eax, [eax+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x18]
	mov eax, [eax+0x8]
	mov [ebx+0x8], eax
	pxor xmm0, xmm0
	movss [ebp-0x48], xmm0
	movss [ebp-0x44], xmm0
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp+edi*4-0x38]
	mov eax, 0x3f800000
	ucomiss xmm1, xmm0
	jbe _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_120
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_130:
	mov [ebp+edi*4-0x48], eax
	lea edx, [ebx+0x10]
	mov eax, [esi+0x1c]
	movss xmm2, dword [ebp-0x48]
	movss xmm3, dword [ebp-0x44]
	movss xmm4, dword [ebp-0x40]
	movaps xmm0, xmm2
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	movss [ebx+0x10], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x14]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [edx+0x4], xmm0
	mulss xmm2, [eax+0x20]
	mulss xmm3, [eax+0x24]
	addss xmm2, xmm3
	mulss xmm4, [eax+0x28]
	addss xmm2, xmm4
	movss [edx+0x8], xmm2
	mov eax, [ebp+0x8]
	addss xmm5, [eax+0x4c]
	movss [ebx+0x20], xmm5
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_120:
	mov eax, 0xbf800000
	jmp _Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_130
_Z17dCollideSphereBoxP6dxGeomS0_iP12dContactGeomi_70:
	xor eax, eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dCollideSpherePlane(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x14]
	mov [esi+0x24], ebx
	mov [esi+0x28], ecx
	mov eax, [ebx+0x18]
	lea edx, [ecx+0x4c]
	movss xmm1, dword [eax]
	mulss xmm1, [ecx+0x4c]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movss xmm2, dword [ecx+0x58]
	subss xmm2, xmm1
	addss xmm2, [ebx+0x4c]
	ucomiss xmm2, [_float_0_00000000]
	jb _Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi_10
	mov eax, [ecx+0x4c]
	mov [esi+0x10], eax
	mov eax, [ecx+0x50]
	mov [esi+0x14], eax
	mov eax, [ecx+0x54]
	mov [esi+0x18], eax
	mov eax, [ebx+0x18]
	movss xmm1, dword [ecx+0x4c]
	mulss xmm1, [ebx+0x4c]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	movss [esi], xmm0
	mov eax, [ebx+0x18]
	movss xmm1, dword [ecx+0x50]
	mulss xmm1, [ebx+0x4c]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	movss [esi+0x4], xmm0
	mov eax, [ebx+0x18]
	movss xmm1, dword [ecx+0x54]
	mulss xmm1, [ebx+0x4c]
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	movss [esi+0x8], xmm0
	movss [esi+0x20], xmm2
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z19dCollideSpherePlaneP6dxGeomS0_iP12dContactGeomi_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;dCollideCCylinderBox(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z20dCollideCCylinderBoxP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x14]
	mov [edx+0x24], eax
	mov [edx+0x28], ecx
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, [eax+0x50]
	movss xmm0, dword [eax+0x4c]
	movss [ebp-0x60], xmm0
	mov edx, [ecx+0x18]
	mov [ebp-0x5c], edx
	mov edi, [ecx+0x1c]
	mov edx, [eax+0x18]
	mov eax, [eax+0x1c]
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x8]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0x18]
	mulss xmm1, [eax+0x28]
	movaps xmm0, xmm2
	addss xmm0, [edx]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm3
	addss xmm0, [edx+0x4]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	addss xmm0, [edx+0x8]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx]
	subss xmm0, xmm2
	movss [ebp-0x38], xmm0
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm3
	movss [ebp-0x34], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	lea ebx, [ebp-0x58]
	mov [esp+0x18], ebx
	lea esi, [ebp-0x48]
	mov [esp+0x14], esi
	add ecx, 0x4c
	mov [esp+0x10], ecx
	mov [esp+0xc], edi
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1_
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	movss xmm0, dword [ebp-0x60]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dCollideRayCCylinder(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	mov [eax+0x24], edx
	mov ecx, [ebp+0xc]
	mov [eax+0x28], ecx
	movss xmm0, dword [_float_0_50000000]
	movss [ebp-0x30], xmm0
	mulss xmm0, [ecx+0x50]
	movss [ebp-0x30], xmm0
	mov edi, [edx+0x18]
	mov esi, [ecx+0x18]
	movss xmm1, dword [edi]
	subss xmm1, [esi]
	movss xmm2, dword [edi+0x4]
	subss xmm2, [esi+0x4]
	movss xmm3, dword [edi+0x8]
	subss xmm3, [esi+0x8]
	mov ebx, [ecx+0x1c]
	lea eax, [ebx+0x8]
	movaps xmm4, xmm1
	mulss xmm4, [ebx+0x8]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x10]
	addss xmm4, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x20]
	addss xmm4, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x8]
	subss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x18]
	subss xmm0, xmm2
	movss [ebp-0x3c], xmm0
	movss [ebp-0x24], xmm0
	movaps xmm2, xmm4
	mulss xmm2, [ebx+0x28]
	subss xmm2, xmm3
	movss [ebp-0x40], xmm2
	movss [ebp-0x20], xmm2
	movss xmm0, dword [ecx+0x4c]
	movss [ebp-0x44], xmm0
	movaps xmm6, xmm0
	mulss xmm6, xmm0
	movss xmm7, dword [ebp-0x38]
	mulss xmm7, xmm7
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, xmm0
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm7, xmm0
	subss xmm7, xmm6
	ucomiss xmm7, [_float_0_00000000]
	jp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_10
	jb _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_20
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_10:
	mov dword [ebp-0x2c], 0x0
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_180:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1c]
	lea ecx, [eax+0x8]
	lea edx, [ebx+0x8]
	movss xmm6, dword [ebx+0x8]
	mulss xmm6, [eax+0x8]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ecx+0x10]
	addss xmm6, xmm0
	movss xmm0, dword [edx+0x20]
	mulss xmm0, [ecx+0x20]
	addss xmm6, xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x34], xmm0
	movaps xmm3, xmm6
	mulss xmm3, [ebx+0x8]
	subss xmm3, xmm0
	movaps xmm1, xmm6
	mulss xmm1, [ebx+0x18]
	subss xmm1, [eax+0x18]
	movaps xmm2, xmm6
	mulss xmm2, [ebx+0x28]
	subss xmm2, [eax+0x28]
	movaps xmm5, xmm3
	mulss xmm5, xmm3
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm5, xmm0
	movss xmm4, dword [ebp-0x38]
	mulss xmm4, xmm3
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	addss xmm4, xmm1
	mulss xmm2, [ebp-0x40]
	addss xmm4, xmm2
	addss xmm4, xmm4
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movaps xmm0, xmm5
	mulss xmm0, [_float__4_00000000]
	mulss xmm7, xmm0
	addss xmm1, xmm7
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_30
	sqrtss xmm1, xmm1
	addss xmm5, xmm5
	movss xmm7, dword [_float_1_00000000]
	movaps xmm0, xmm7
	divss xmm0, xmm5
	movss xmm3, dword [_data16_80000000]
	movaps xmm6, xmm4
	xorps xmm6, xmm3
	subss xmm6, xmm1
	mulss xmm6, xmm0
	ucomiss xmm2, xmm6
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_40
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_100:
	mov eax, [ebp+0x8]
	ucomiss xmm6, [eax+0x4c]
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_50
	movss xmm2, dword [ebp-0x34]
	mulss xmm2, xmm6
	addss xmm2, [edi]
	mov edx, [ebp+0x14]
	movss [edx], xmm2
	mov edx, [eax+0x18]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x1c]
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x18]
	addss xmm1, [edx+0x4]
	mov eax, [ebp+0x14]
	movss [eax+0x4], xmm1
	mov edx, [ecx+0x18]
	mov eax, [ecx+0x1c]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x28]
	addss xmm0, [edx+0x8]
	mov edx, [ebp+0x14]
	movss [edx+0x8], xmm0
	mov ecx, [ebp+0xc]
	mov esi, [ecx+0x18]
	subss xmm2, [esi]
	movss [ebp-0x28], xmm2
	subss xmm1, [esi+0x4]
	movss [ebp-0x24], xmm1
	subss xmm0, [esi+0x8]
	movss [ebp-0x20], xmm0
	mov ebx, [ecx+0x1c]
	lea eax, [ebx+0x8]
	mulss xmm2, [ebx+0x8]
	mulss xmm1, [eax+0x10]
	addss xmm2, xmm1
	mulss xmm0, [eax+0x20]
	addss xmm2, xmm0
	mov edx, [ebp-0x2c]
	test edx, edx
	jz _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_60
	movss xmm4, dword [_float__1_00000000]
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_160:
	movss xmm5, dword [ebp-0x30]
	xorps xmm5, xmm3
	ucomiss xmm2, xmm5
	jb _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_70
	movss xmm0, dword [ebp-0x30]
	ucomiss xmm0, xmm2
	jae _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_80
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_70:
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_90
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4c]
	movss [ebp-0x44], xmm0
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_110:
	movss xmm5, dword [ebp-0x30]
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_120:
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x8]
	addss xmm0, [esi]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x18]
	addss xmm0, [esi+0x4]
	movss [ebp-0x24], xmm0
	mulss xmm5, [ebx+0x28]
	addss xmm5, [esi+0x8]
	movss [ebp-0x20], xmm5
	lea edx, [ebp-0x28]
	mov eax, [ebp-0x2c]
	mov [esp], eax
	mov ecx, [ebp+0x14]
	movss xmm0, dword [ebp-0x44]
	mov eax, [ebp+0x8]
	call _Z17ray_sphere_helperP5dxRayPffP12dContactGeomi
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_40:
	movaps xmm6, xmm1
	subss xmm6, xmm4
	mulss xmm6, xmm0
	ucomiss xmm2, xmm6
	jbe _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_100
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_50:
	xor eax, eax
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_190:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_30:
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_50
	ucomiss xmm2, xmm6
	jbe _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_110
	movss xmm5, dword [ebp-0x30]
	xorps xmm5, [_data16_80000000]
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_120
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_20:
	movss xmm5, dword [ebp-0x30]
	xorps xmm5, [_data16_80000000]
	ucomiss xmm5, xmm4
	jbe _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_130
	movaps xmm4, xmm5
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_170:
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x8]
	addss xmm0, [esi]
	movss xmm2, dword [edi]
	subss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x18]
	addss xmm0, [esi+0x4]
	movss xmm3, dword [edi+0x4]
	subss xmm3, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x28]
	addss xmm0, [esi+0x8]
	movss xmm1, dword [edi+0x8]
	subss xmm1, xmm0
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	addss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm6, xmm2
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_140
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_150
	movss xmm5, dword [ebp-0x30]
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_150:
	mov dword [ebp-0x2c], 0x0
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_120
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_60:
	movaps xmm4, xmm7
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_160
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_130:
	movss xmm2, dword [ebp-0x30]
	minss xmm2, xmm4
	movaps xmm4, xmm2
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_170
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_140:
	mov dword [ebp-0x2c], 0x1
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_180
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_90:
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4c]
	movss [ebp-0x44], xmm0
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_120
_Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_80:
	movaps xmm1, xmm2
	mulss xmm1, [eax]
	addss xmm1, [esi]
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	movss [eax+0x10], xmm0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x18]
	mov eax, [ecx+0x1c]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x18]
	addss xmm1, [edx+0x4]
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm4
	movss [eax+0x14], xmm0
	mov edx, [ecx+0x18]
	mov eax, [ecx+0x1c]
	mulss xmm2, [eax+0x28]
	addss xmm2, [edx+0x8]
	mov edx, [ebp+0x14]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	mulss xmm0, xmm4
	movss [edx+0x18], xmm0
	mov eax, edx
	add eax, 0x10
	mov [esp], eax
	movss [ebp-0x58], xmm6
	call dNormalize3
	movss xmm6, dword [ebp-0x58]
	mov ecx, [ebp+0x14]
	movss [ecx+0x20], xmm6
	mov eax, 0x1
	jmp _Z20dCollideRayCCylinderP6dxGeomS0_iP12dContactGeomi_190


;dCollideSphereSphere(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z20dCollideSphereSphereP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [eax+0x24], ecx
	mov [eax+0x28], edx
	mov [ebp+0x18], eax
	mov eax, [edx+0x4c]
	mov [ebp+0x14], eax
	mov eax, [edx+0x18]
	mov [ebp+0x10], eax
	mov eax, [ecx+0x4c]
	mov [ebp+0xc], eax
	mov eax, [ecx+0x18]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z15dCollideSpheresPffS_fP12dContactGeom
	nop


;dCollideCCylinderPlane(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x14]
	mov ecx, [esi+0x1c]
	lea edx, [ecx+0x8]
	lea eax, [ebx+0x4c]
	mov [ebp-0x18], eax
	lea eax, [ebx+0x50]
	mov [ebp-0x14], eax
	movss xmm5, dword [ebx+0x50]
	lea eax, [ebx+0x54]
	mov [ebp-0x10], eax
	movss xmm4, dword [ebx+0x54]
	movss xmm7, dword [ebx+0x4c]
	movaps xmm0, xmm7
	mulss xmm0, [ecx+0x8]
	movaps xmm1, xmm5
	mulss xmm1, [edx+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edx+0x20]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_10
	movss xmm6, dword [_float__1_00000000]
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_60:
	mov eax, [esi+0x18]
	movss xmm1, dword [esi+0x50]
	movaps xmm3, xmm1
	mulss xmm3, [edx]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm3, xmm0
	mulss xmm3, xmm6
	addss xmm3, [eax]
	movaps xmm2, xmm1
	mulss xmm2, [ecx+0x18]
	mulss xmm2, xmm0
	mulss xmm2, xmm6
	addss xmm2, [eax+0x4]
	mulss xmm1, [ecx+0x28]
	mulss xmm1, xmm0
	mulss xmm1, xmm6
	addss xmm1, [eax+0x8]
	movaps xmm0, xmm3
	mov eax, [ebp-0x18]
	mulss xmm0, [eax]
	mulss xmm5, xmm2
	addss xmm0, xmm5
	mulss xmm4, xmm1
	addss xmm0, xmm4
	movss xmm4, dword [ebx+0x58]
	subss xmm4, xmm0
	addss xmm4, [esi+0x4c]
	pxor xmm0, xmm0
	ucomiss xmm0, xmm4
	ja _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_20
	movss [edi+0x10], xmm7
	mov eax, [ebx+0x50]
	mov [edi+0x14], eax
	mov eax, [ebx+0x54]
	mov [edi+0x18], eax
	movss xmm0, dword [ebx+0x4c]
	mulss xmm0, [esi+0x4c]
	subss xmm3, xmm0
	movss [edi], xmm3
	movss xmm0, dword [ebx+0x50]
	mulss xmm0, [esi+0x4c]
	subss xmm2, xmm0
	movss [edi+0x4], xmm2
	movss xmm0, dword [ebx+0x54]
	mulss xmm0, [esi+0x4c]
	subss xmm1, xmm0
	movss [edi+0x8], xmm1
	movss [edi+0x20], xmm4
	movzx eax, word [ebp+0x10]
	sub eax, 0x1
	jle _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_30
	mov edx, [esi+0x18]
	mov eax, [esi+0x1c]
	movss xmm1, dword [esi+0x50]
	movaps xmm4, xmm1
	mulss xmm4, [eax+0x8]
	movss xmm0, dword [_float__0_50000000]
	mulss xmm4, xmm0
	mulss xmm4, xmm6
	addss xmm4, [edx]
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x18]
	mulss xmm2, xmm0
	mulss xmm2, xmm6
	addss xmm2, [edx+0x4]
	movaps xmm3, xmm1
	mulss xmm3, [eax+0x28]
	mulss xmm3, xmm0
	mulss xmm3, xmm6
	addss xmm3, [edx+0x8]
	movaps xmm0, xmm4
	mov eax, [ebp-0x18]
	mulss xmm0, [eax]
	movaps xmm1, xmm2
	mov eax, [ebp-0x14]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mov eax, [ebp-0x10]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss xmm1, dword [ebx+0x58]
	subss xmm1, xmm0
	addss xmm1, [esi+0x4c]
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jb _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_30
	mov eax, [ebp+0x18]
	lea edx, [edi+eax]
	mov eax, [ebx+0x4c]
	mov [edx+0x10], eax
	mov eax, [ebx+0x50]
	mov [edx+0x14], eax
	mov eax, [ebx+0x54]
	mov [edx+0x18], eax
	movss xmm0, dword [ebx+0x4c]
	mulss xmm0, [esi+0x4c]
	subss xmm4, xmm0
	movss [edx], xmm4
	movss xmm0, dword [ebx+0x50]
	mulss xmm0, [esi+0x4c]
	subss xmm2, xmm0
	movss [edx+0x4], xmm2
	movss xmm0, dword [ebx+0x54]
	mulss xmm0, [esi+0x4c]
	subss xmm3, xmm0
	movss [edx+0x8], xmm3
	movss [edx+0x20], xmm1
	mov eax, 0x2
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_50:
	xor ecx, ecx
	mov edx, edi
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_40:
	mov [edx+0x24], esi
	mov [edx+0x28], ebx
	add ecx, 0x1
	add edx, [ebp+0x18]
	cmp eax, ecx
	jnz _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_40
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_30:
	mov eax, 0x1
	jmp _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_50
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_10:
	movss xmm6, dword [_float_1_00000000]
	jmp _Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_60
_Z22dCollideCCylinderPlaneP6dxGeomS0_iP12dContactGeomi_20:
	xor eax, eax
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dCollideCCylinderSphere(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z23dCollideCCylinderSphereP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x14]
	mov [esi+0x24], ebx
	mov [esi+0x28], edi
	mov edx, [ebx+0x1c]
	movss xmm4, dword [edx+0x8]
	mov ecx, [edi+0x18]
	mov eax, [ebx+0x18]
	movss xmm3, dword [eax]
	movss xmm2, dword [ecx]
	subss xmm2, xmm3
	mulss xmm2, xmm4
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [eax+0x4]
	mulss xmm0, [edx+0x18]
	addss xmm2, xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [eax+0x8]
	mulss xmm0, [edx+0x28]
	addss xmm2, xmm0
	movss xmm1, dword [_float_0_50000000]
	mulss xmm1, [ebx+0x50]
	movaps xmm0, xmm1
	minss xmm0, xmm2
	xorps xmm1, [_data16_80000000]
	maxss xmm1, xmm0
	mulss xmm4, xmm1
	addss xmm3, xmm4
	movss [ebp-0x28], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x18]
	addss xmm0, [eax+0x4]
	movss [ebp-0x24], xmm0
	mulss xmm1, [edx+0x28]
	addss xmm1, [eax+0x8]
	movss [ebp-0x20], xmm1
	mov [esp+0x10], esi
	mov eax, [edi+0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov eax, [ebx+0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dCollideCCylinderCCylinder(dxGeom*, dxGeom*, int, dContactGeom*, int)
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x14]
	mov [eax+0x24], edx
	mov [eax+0x28], edi
	movss xmm0, dword [_float_0_50000000]
	mulss xmm0, [edx+0x50]
	movss [ebp-0xbc], xmm0
	movss xmm3, dword [_float_0_50000000]
	mulss xmm3, [edi+0x50]
	movss [ebp-0xb8], xmm3
	mov ebx, [edx+0x18]
	mov esi, [edi+0x18]
	mov eax, [edx+0x1c]
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x24], xmm3
	movss xmm7, dword [eax+0x18]
	movss [ebp-0x20], xmm7
	movss xmm0, dword [eax+0x28]
	movss [ebp-0xc0], xmm0
	movss [ebp-0x1c], xmm0
	mov eax, [edi+0x1c]
	movss xmm4, dword [eax+0x8]
	movss [ebp-0x30], xmm4
	movss xmm5, dword [eax+0x18]
	movss [ebp-0x2c], xmm5
	movss xmm6, dword [eax+0x28]
	movss [ebp-0x28], xmm6
	movaps xmm2, xmm3
	mulss xmm2, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xc0]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	ucomiss xmm0, [_float_0_00001000]
	jae _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_10
	jp _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_10
	ucomiss xmm2, [_float_0_00000000]
	jb _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_20
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_140:
	movss xmm1, dword [_data16_80000000]
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_150:
	mov edx, 0x1
	lea ecx, [ebp-0x3c]
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_30:
	lea eax, [edx*4]
	movss xmm0, dword [ebx+eax-0x4]
	subss xmm0, [esi+eax-0x4]
	movss [ecx+eax-0x4], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_30
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x3c]
	mulss xmm7, [ebp-0x38]
	addss xmm2, xmm7
	movss xmm0, dword [ebp-0xc0]
	mulss xmm0, [ebp-0x34]
	addss xmm2, xmm0
	movss xmm3, dword [ebp-0xbc]
	xorps xmm3, xmm1
	movss xmm0, dword [ebp-0xb8]
	xorps xmm0, xmm1
	subss xmm0, xmm2
	movss xmm1, dword [ebp-0xb8]
	subss xmm1, xmm2
	maxss xmm3, xmm0
	movss [ebp-0xb4], xmm3
	movss xmm0, dword [ebp-0xbc]
	minss xmm0, xmm1
	movss [ebp-0xb0], xmm0
	ucomiss xmm0, xmm3
	jae _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_40
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_10:
	movss xmm1, dword [ebp-0xbc]
	mulss xmm1, [ebp-0x24]
	movaps xmm0, xmm1
	addss xmm0, [ebx]
	movss [ebp-0x5c], xmm0
	movss xmm2, dword [ebp-0xbc]
	mulss xmm2, [ebp-0x20]
	movaps xmm0, xmm2
	addss xmm0, [ebx+0x4]
	movss [ebp-0x58], xmm0
	movss xmm3, dword [ebp-0xbc]
	mulss xmm3, [ebp-0xc0]
	movaps xmm0, xmm3
	addss xmm0, [ebx+0x8]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebx]
	subss xmm0, xmm1
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebx+0x4]
	subss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm3
	movss [ebp-0x64], xmm0
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, [ebp-0x30]
	movaps xmm0, xmm1
	addss xmm0, [esi]
	movss [ebp-0x7c], xmm0
	movss xmm2, dword [ebp-0xb8]
	mulss xmm2, [ebp-0x2c]
	movaps xmm0, xmm2
	addss xmm0, [esi+0x4]
	movss [ebp-0x78], xmm0
	movss xmm3, dword [ebp-0xb8]
	mulss xmm3, [ebp-0x28]
	movaps xmm0, xmm3
	addss xmm0, [esi+0x8]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [esi]
	subss xmm0, xmm1
	movss [ebp-0x8c], xmm0
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm2
	movss [ebp-0x88], xmm0
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm3
	movss [ebp-0x84], xmm0
	lea ebx, [ebp-0x4c]
	mov [esp+0x14], ebx
	lea esi, [ebp-0x9c]
	mov [esp+0x10], esi
	lea eax, [ebp-0x8c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x7c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x6c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x5c]
	mov [esp], eax
	call dClosestLineSegmentPoints
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	mov eax, [edi+0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15dCollideSpheresPffS_fP12dContactGeom
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_130:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_40:
	movzx eax, word [ebp+0x10]
	sub eax, 0x1
	jle _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_50
	ucomiss xmm0, xmm3
	ja _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_60
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_50:
	movss xmm1, dword [ebp-0xb4]
	addss xmm1, [ebp-0xb0]
	mulss xmm1, [_float_0_50000000]
	addss xmm2, xmm1
	mov edx, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_70:
	lea eax, [edx*4]
	movaps xmm0, xmm1
	mulss xmm0, [ebp+eax-0x28]
	addss xmm0, [ebx+edx*4-0x4]
	movss [ebp+eax-0xa0], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_70
	mov dl, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_80:
	lea eax, [edx*4]
	movaps xmm0, xmm2
	mulss xmm0, [ebp+eax-0x34]
	addss xmm0, [esi+edx*4-0x4]
	movss [ebp+eax-0x50], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_80
	mov edx, [ebp+0x14]
	mov [esp+0x10], edx
	mov eax, [edi+0x4c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9c]
	mov [esp], eax
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_60:
	mov dl, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_90:
	lea eax, [edx*4]
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, [ebp+eax-0x28]
	addss xmm0, [ebx+edx*4-0x4]
	movss [ebp+eax-0xa0], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_90
	movss xmm1, dword [ebp-0xb4]
	addss xmm1, xmm2
	mov dl, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_100:
	lea eax, [edx*4]
	movaps xmm0, xmm1
	mulss xmm0, [ebp+eax-0x34]
	addss xmm0, [esi+edx*4-0x4]
	movss [ebp+eax-0x50], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_100
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [edi+0x4c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9c]
	mov [esp], eax
	movss [ebp-0xd8], xmm2
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	test eax, eax
	movss xmm2, dword [ebp-0xd8]
	jz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_50
	mov edx, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_110:
	lea eax, [edx*4]
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, [ebp+eax-0x28]
	addss xmm0, [ebx+edx*4-0x4]
	movss [ebp+eax-0xa0], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_110
	movss xmm1, dword [ebp-0xb0]
	addss xmm1, xmm2
	mov dl, 0x1
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_120:
	lea eax, [edx*4]
	movaps xmm0, xmm1
	mulss xmm0, [ebp+eax-0x34]
	addss xmm0, [esi+edx*4-0x4]
	movss [ebp+eax-0x50], xmm0
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_120
	mov edx, [ebp+0x14]
	add edx, [ebp+0x18]
	mov [ebp-0xac], edx
	mov [esp+0x10], edx
	mov eax, [edi+0x4c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x9c]
	mov [esp], eax
	movss [ebp-0xd8], xmm2
	call _Z15dCollideSpheresPffS_fP12dContactGeom
	test eax, eax
	movss xmm2, dword [ebp-0xd8]
	jz _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_50
	mov eax, [ebp+0x8]
	mov edx, [ebp-0xac]
	mov [edx+0x24], eax
	mov [edx+0x28], edi
	mov eax, 0x2
	jmp _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_130
_Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_20:
	jp _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_140
	movss xmm1, dword [_data16_80000000]
	xorps xmm4, xmm1
	movss [ebp-0x30], xmm4
	xorps xmm5, xmm1
	movss [ebp-0x2c], xmm5
	xorps xmm6, xmm1
	movss [ebp-0x28], xmm6
	jmp _Z26dCollideCCylinderCCylinderP6dxGeomS0_iP12dContactGeomi_150
	nop
	add [eax], al


;dBoxBox(float const*, float const*, float const*, float const*, float const*, float const*, float*, float*, int*, int, dContactGeom*, int)
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3ac
	mov esi, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov edx, [ebp+0x1c]
	movss xmm3, dword [edi]
	subss xmm3, [esi]
	movss xmm5, dword [edi+0x4]
	subss xmm5, [esi+0x4]
	movss xmm6, dword [edi+0x8]
	subss xmm6, [esi+0x8]
	lea eax, [ecx+0x10]
	mov [ebp-0x224], eax
	lea eax, [ecx+0x20]
	mov [ebp-0x220], eax
	movaps xmm0, xmm3
	mulss xmm0, [ecx]
	movss [ebp-0x238], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x10]
	addss xmm0, [ebp-0x238]
	movss [ebp-0x238], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ecx+0x20]
	addss xmm0, [ebp-0x238]
	movss [ebp-0x238], xmm0
	lea eax, [ecx+0x4]
	mov [ebp-0x1d4], eax
	lea eax, [ecx+0x14]
	mov [ebp-0x21c], eax
	lea eax, [ecx+0x24]
	mov [ebp-0x218], eax
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x4]
	movss [ebp-0x23c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x14]
	addss xmm0, [ebp-0x23c]
	movss [ebp-0x23c], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ecx+0x24]
	addss xmm0, [ebp-0x23c]
	movss [ebp-0x23c], xmm0
	lea eax, [ecx+0x8]
	mov [ebp-0x1d0], eax
	lea eax, [ecx+0x18]
	mov [ebp-0x214], eax
	lea eax, [ecx+0x28]
	mov [ebp-0x210], eax
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x8]
	movss [ebp-0x240], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x18]
	addss xmm0, [ebp-0x240]
	movss [ebp-0x240], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ecx+0x28]
	addss xmm0, [ebp-0x240]
	movss [ebp-0x240], xmm0
	movss xmm1, dword [_float_0_50000000]
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	mulss xmm0, xmm1
	movss [ebp-0x33c], xmm0
	movss [ebp-0x40], xmm0
	movss xmm0, dword [eax+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, xmm1
	movss [ebp-0x38], xmm0
	movss xmm0, dword [edx]
	mulss xmm0, xmm1
	movss [ebp-0x340], xmm0
	movss [ebp-0x34], xmm0
	movss xmm0, dword [edx+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x344], xmm0
	movss [ebp-0x30], xmm0
	movss [ebp-0x338], xmm1
	mulss xmm1, [edx+0x8]
	movss [ebp-0x338], xmm1
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [ecx]
	movss [ebp-0x27c], xmm1
	movss xmm0, dword [ebx]
	movss [ebp-0x278], xmm0
	movss xmm2, dword [ecx+0x10]
	lea eax, [ebx+0x10]
	mov [ebp-0x1bc], eax
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x274], xmm0
	movss xmm1, dword [ecx+0x20]
	lea eax, [ebx+0x20]
	mov [ebp-0x1c0], eax
	movss xmm0, dword [ebx+0x20]
	movss [ebp-0x270], xmm0
	movss xmm0, dword [ebp-0x27c]
	mulss xmm0, [ebp-0x278]
	movss [ebp-0x304], xmm0
	movss xmm0, dword [ebp-0x274]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x304]
	movss [ebp-0x304], xmm0
	movss xmm0, dword [ebp-0x270]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x304]
	movss [ebp-0x304], xmm0
	lea eax, [ebx+0x4]
	mov [ebp-0x1cc], eax
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0x26c], xmm0
	lea eax, [ebx+0x14]
	mov [ebp-0x1c4], eax
	movss xmm0, dword [ebx+0x14]
	movss [ebp-0x268], xmm0
	lea eax, [ebx+0x24]
	mov [ebp-0x1c8], eax
	movss xmm0, dword [ebx+0x24]
	movss [ebp-0x264], xmm0
	movss xmm0, dword [ebp-0x27c]
	mulss xmm0, [ebp-0x26c]
	movss [ebp-0x300], xmm0
	movss xmm0, dword [ebp-0x268]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x300]
	movss [ebp-0x300], xmm0
	movss xmm0, dword [ebp-0x264]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x300]
	movss [ebp-0x300], xmm0
	lea edx, [ebx+0x8]
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x260], xmm0
	lea eax, [ebx+0x18]
	mov [ebp-0x1d8], eax
	movss xmm0, dword [ebx+0x18]
	movss [ebp-0x25c], xmm0
	lea eax, [ebx+0x28]
	mov [ebp-0x1dc], eax
	movss xmm0, dword [ebx+0x28]
	movss [ebp-0x258], xmm0
	movss xmm0, dword [ebp-0x27c]
	mulss xmm0, [ebp-0x260]
	mulss xmm2, [ebp-0x25c]
	addss xmm2, xmm0
	mulss xmm1, [ebp-0x258]
	addss xmm1, xmm2
	movss [ebp-0x2fc], xmm1
	movss xmm1, dword [ecx+0x4]
	movss [ebp-0x254], xmm1
	movss xmm1, dword [ecx+0x14]
	movss xmm2, dword [ecx+0x24]
	movss xmm0, dword [ebp-0x278]
	mulss xmm0, [ebp-0x254]
	movss [ebp-0x2f8], xmm0
	movss xmm0, dword [ebp-0x274]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2f8]
	movss [ebp-0x2f8], xmm0
	movss xmm0, dword [ebp-0x270]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x2f8]
	movss [ebp-0x2f8], xmm0
	movss xmm0, dword [ebp-0x26c]
	mulss xmm0, [ebp-0x254]
	movss [ebp-0x2f4], xmm0
	movss xmm0, dword [ebp-0x268]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2f4]
	movss [ebp-0x2f4], xmm0
	movss xmm0, dword [ebp-0x264]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x2f4]
	movss [ebp-0x2f4], xmm0
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, [ebp-0x254]
	mulss xmm1, [ebp-0x25c]
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x258]
	addss xmm2, xmm1
	movss [ebp-0x2f0], xmm2
	movss xmm1, dword [ecx+0x8]
	movss [ebp-0x250], xmm1
	movss xmm1, dword [ecx+0x18]
	movss xmm2, dword [ecx+0x28]
	movss xmm7, dword [ebp-0x278]
	mulss xmm7, [ebp-0x250]
	movss xmm0, dword [ebp-0x274]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x270]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x26c]
	mulss xmm0, [ebp-0x250]
	movss [ebp-0x2ec], xmm0
	movss xmm0, dword [ebp-0x268]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x2ec]
	movss [ebp-0x2ec], xmm0
	movss xmm0, dword [ebp-0x264]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x2ec]
	movss [ebp-0x2ec], xmm0
	movss xmm0, dword [ebp-0x260]
	mulss xmm0, [ebp-0x250]
	mulss xmm1, [ebp-0x25c]
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x258]
	addss xmm2, xmm1
	movss [ebp-0x2e8], xmm2
	movss xmm4, dword [_data16_7fffffff]
	movss xmm1, dword [ebp-0x304]
	andps xmm1, xmm4
	movss [ebp-0x2e4], xmm1
	movss xmm0, dword [ebp-0x300]
	andps xmm0, xmm4
	movss [ebp-0x2e0], xmm0
	movss xmm1, dword [ebp-0x2fc]
	andps xmm1, xmm4
	movss [ebp-0x2dc], xmm1
	movss xmm0, dword [ebp-0x2f8]
	andps xmm0, xmm4
	movss [ebp-0x2d8], xmm0
	movss xmm1, dword [ebp-0x2f4]
	andps xmm1, xmm4
	movss [ebp-0x2d4], xmm1
	movss xmm0, dword [ebp-0x2f0]
	andps xmm0, xmm4
	movss [ebp-0x2d0], xmm0
	movaps xmm1, xmm7
	andps xmm1, xmm4
	movss [ebp-0x2cc], xmm1
	movss xmm0, dword [ebp-0x2ec]
	andps xmm0, xmm4
	movss [ebp-0x2c8], xmm0
	movaps xmm1, xmm2
	andps xmm1, xmm4
	movss [ebp-0x2c4], xmm1
	movss xmm2, dword [ebp-0x238]
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2e4]
	mulss xmm0, [ebp-0x340]
	addss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2e0]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2dc]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_10
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30:
	xor edx, edx
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_310:
	mov eax, edx
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_10:
	ucomiss xmm2, [_float__340282346638528859811704]
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_20
	mov dword [ebp-0x308], 0x0
	movss xmm1, dword [_float__340282346638528859811704]
	movss [ebp-0x2c0], xmm1
	mov dword [ebp-0x2b8], 0x0
	mov dword [ebp-0x2b4], 0x0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_320:
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0x334], xmm1
	movss xmm2, dword [ebp-0x23c]
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2d8]
	mulss xmm0, [ebp-0x340]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2d4]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2d0]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	ucomiss xmm2, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_40
	xor eax, eax
	ucomiss xmm0, [ebp-0x23c]
	seta al
	mov [ebp-0x2b8], eax
	mov eax, [ebp-0x1d4]
	mov [ebp-0x308], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x2b4], 0x2
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_40:
	movss xmm0, dword [ebp-0x38]
	movss [ebp-0x330], xmm0
	movss xmm2, dword [ebp-0x240]
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2cc]
	mulss xmm0, [ebp-0x340]
	addss xmm0, [ebp-0x330]
	movss xmm1, dword [ebp-0x2c8]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2c4]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	ucomiss xmm2, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_50
	xor eax, eax
	ucomiss xmm1, [ebp-0x240]
	seta al
	mov [ebp-0x2b8], eax
	mov eax, [ebp-0x1d0]
	mov [ebp-0x308], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x2b4], 0x3
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_50:
	movss xmm2, dword [ebp-0x278]
	mulss xmm2, xmm3
	movss xmm0, dword [ebp-0x274]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	movss xmm1, dword [ebp-0x270]
	mulss xmm1, xmm6
	addss xmm2, xmm1
	movaps xmm0, xmm2
	andps xmm0, xmm4
	movss [ebp-0x1ec], xmm0
	movss xmm0, dword [ebp-0x2e4]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2d8]
	mulss xmm1, [ebp-0x334]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2cc]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x340]
	movss xmm1, dword [ebp-0x1ec]
	subss xmm1, xmm0
	movss [ebp-0x1ec], xmm1
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	ucomiss xmm1, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_60
	xor eax, eax
	ucomiss xmm0, xmm2
	seta al
	mov [ebp-0x2b8], eax
	mov [ebp-0x308], ebx
	movss [ebp-0x2c0], xmm1
	mov dword [ebp-0x2b4], 0x4
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_60:
	movss xmm2, dword [ebp-0x26c]
	mulss xmm2, xmm3
	movss xmm1, dword [ebp-0x268]
	mulss xmm1, xmm5
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x264]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movaps xmm1, xmm2
	andps xmm1, xmm4
	movss [ebp-0x1e8], xmm1
	movss xmm0, dword [ebp-0x2e0]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2d4]
	mulss xmm1, [ebp-0x334]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2c8]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x344]
	movss xmm1, dword [ebp-0x1e8]
	subss xmm1, xmm0
	movss [ebp-0x1e8], xmm1
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	ucomiss xmm1, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_70
	xor eax, eax
	ucomiss xmm0, xmm2
	seta al
	mov [ebp-0x2b8], eax
	mov eax, [ebp-0x1cc]
	mov [ebp-0x308], eax
	movss [ebp-0x2c0], xmm1
	mov dword [ebp-0x2b4], 0x5
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_70:
	movss xmm2, dword [ebp-0x260]
	mulss xmm2, xmm3
	mulss xmm5, [ebp-0x25c]
	addss xmm2, xmm5
	mulss xmm6, [ebp-0x258]
	addss xmm2, xmm6
	movaps xmm3, xmm2
	andps xmm3, xmm4
	movss xmm0, dword [ebp-0x2dc]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2d0]
	mulss xmm1, [ebp-0x334]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2c4]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x338]
	subss xmm3, xmm0
	pxor xmm0, xmm0
	ucomiss xmm3, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	ucomiss xmm3, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_80
	xor eax, eax
	ucomiss xmm0, xmm2
	seta al
	mov [ebp-0x2b8], eax
	mov [ebp-0x308], edx
	movss [ebp-0x2c0], xmm3
	mov dword [ebp-0x2b4], 0x6
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_80:
	movss xmm5, dword [ebp-0x240]
	mulss xmm5, [ebp-0x2f8]
	movss xmm0, dword [ebp-0x23c]
	mulss xmm0, xmm7
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2cc]
	mulss xmm0, [ebp-0x334]
	movss xmm1, dword [ebp-0x2d8]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2dc]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2e0]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss [ebp-0x32c], xmm1
	movss xmm1, dword [ebp-0x2f8]
	mulss xmm1, xmm1
	movss [ebp-0x328], xmm1
	movss xmm0, dword [ebp-0x32c]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_90
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_90
	pxor xmm3, xmm3
	divss xmm3, xmm1
	movaps xmm6, xmm7
	xorps xmm6, [_data16_80000000]
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x2f8]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0x7
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_330:
	movss xmm5, dword [ebp-0x240]
	mulss xmm5, [ebp-0x2f4]
	movss xmm0, dword [ebp-0x23c]
	mulss xmm0, [ebp-0x2ec]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2c8]
	mulss xmm0, [ebp-0x334]
	movss xmm1, dword [ebp-0x2d4]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2dc]
	mulss xmm1, [ebp-0x340]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2e4]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm1, dword [ebp-0x2ec]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss [ebp-0x324], xmm0
	movss xmm0, dword [ebp-0x2f4]
	mulss xmm0, xmm0
	movss [ebp-0x320], xmm0
	movss xmm0, dword [ebp-0x324]
	addss xmm0, [ebp-0x320]
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_100
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_100
	pxor xmm3, xmm3
	divss xmm3, xmm1
	movss xmm6, dword [ebp-0x2ec]
	xorps xmm6, [_data16_80000000]
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x2f4]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0x8
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_100:
	movss xmm5, dword [ebp-0x240]
	mulss xmm5, [ebp-0x2f0]
	movss xmm0, dword [ebp-0x23c]
	mulss xmm0, [ebp-0x2e8]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2c4]
	mulss xmm0, [ebp-0x334]
	movss xmm1, dword [ebp-0x2d0]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2e0]
	mulss xmm1, [ebp-0x340]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2e4]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm1, dword [ebp-0x2e8]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss [ebp-0x31c], xmm0
	movss xmm0, dword [ebp-0x2f0]
	mulss xmm0, xmm0
	movss [ebp-0x318], xmm0
	movss xmm0, dword [ebp-0x31c]
	addss xmm0, [ebp-0x318]
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_110
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_110
	pxor xmm3, xmm3
	divss xmm3, xmm1
	movss xmm6, dword [ebp-0x2e8]
	xorps xmm6, [_data16_80000000]
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x2f0]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0x9
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_110:
	movss xmm5, dword [ebp-0x238]
	mulss xmm5, xmm7
	movss xmm0, dword [ebp-0x240]
	mulss xmm0, [ebp-0x304]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2cc]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2e4]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2d0]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2d4]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm1, dword [ebp-0x304]
	mulss xmm1, xmm1
	movss [ebp-0x314], xmm1
	movss xmm0, dword [ebp-0x32c]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_120
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_120
	movaps xmm3, xmm7
	divss xmm3, xmm1
	pxor xmm6, xmm6
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x304]
	xorps xmm0, [_data16_80000000]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0xa
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_120:
	movss xmm5, dword [ebp-0x238]
	mulss xmm5, [ebp-0x2ec]
	movss xmm0, dword [ebp-0x240]
	mulss xmm0, [ebp-0x300]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2c8]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2e0]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2d0]
	mulss xmm1, [ebp-0x340]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x338]
	mulss xmm1, [ebp-0x2d8]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm1, dword [ebp-0x300]
	mulss xmm1, xmm1
	movss [ebp-0x310], xmm1
	movss xmm0, dword [ebp-0x324]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_130
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_130
	movss xmm3, dword [ebp-0x2ec]
	divss xmm3, xmm1
	pxor xmm6, xmm6
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x300]
	xorps xmm0, [_data16_80000000]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0xb
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_130:
	movss xmm5, dword [ebp-0x238]
	mulss xmm5, [ebp-0x2e8]
	movss xmm0, dword [ebp-0x240]
	mulss xmm0, [ebp-0x2fc]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm0, dword [ebp-0x2c4]
	mulss xmm0, [ebp-0x33c]
	movss xmm1, dword [ebp-0x2dc]
	mulss xmm1, [ebp-0x330]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2d4]
	mulss xmm1, [ebp-0x340]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2d8]
	mulss xmm1, [ebp-0x344]
	addss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm7, dword [ebp-0x2fc]
	mulss xmm7, xmm7
	movss xmm0, dword [ebp-0x31c]
	addss xmm0, xmm7
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_140
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_140
	movss xmm3, dword [ebp-0x2e8]
	divss xmm3, xmm1
	pxor xmm6, xmm6
	divss xmm6, xmm1
	movss xmm0, dword [ebp-0x2fc]
	xorps xmm0, [_data16_80000000]
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0xc
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_140:
	movss xmm5, dword [ebp-0x23c]
	mulss xmm5, [ebp-0x304]
	movss xmm0, dword [ebp-0x238]
	mulss xmm0, [ebp-0x2f8]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm1, dword [ebp-0x2d8]
	mulss xmm1, [ebp-0x33c]
	movss xmm0, dword [ebp-0x2e4]
	mulss xmm0, [ebp-0x334]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x2c4]
	mulss xmm0, [ebp-0x344]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x338]
	mulss xmm0, [ebp-0x2c8]
	addss xmm1, xmm0
	subss xmm2, xmm1
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm1, dword [ebp-0x328]
	addss xmm1, [ebp-0x314]
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_150
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_150
	movss xmm3, dword [ebp-0x2f8]
	xorps xmm3, [_data16_80000000]
	divss xmm3, xmm1
	movss xmm6, dword [ebp-0x304]
	divss xmm6, xmm1
	pxor xmm0, xmm0
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0xd
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_150:
	movss xmm5, dword [ebp-0x23c]
	mulss xmm5, [ebp-0x300]
	movss xmm0, dword [ebp-0x238]
	mulss xmm0, [ebp-0x2f4]
	subss xmm5, xmm0
	movaps xmm2, xmm5
	andps xmm2, xmm4
	movss xmm1, dword [ebp-0x2d4]
	mulss xmm1, [ebp-0x33c]
	movss xmm0, dword [ebp-0x2e0]
	mulss xmm0, [ebp-0x334]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x2c4]
	mulss xmm0, [ebp-0x340]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x338]
	mulss xmm0, [ebp-0x2cc]
	addss xmm1, xmm0
	subss xmm2, xmm1
	pxor xmm1, xmm1
	ucomiss xmm2, xmm1
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm0, dword [ebp-0x320]
	addss xmm0, [ebp-0x310]
	addss xmm1, xmm0
	movss [ebp-0x320], xmm1
	sqrtss xmm1, xmm1
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_160
	divss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_160
	movss xmm3, dword [ebp-0x2f4]
	xorps xmm3, [_data16_80000000]
	divss xmm3, xmm1
	movss xmm6, dword [ebp-0x300]
	divss xmm6, xmm1
	pxor xmm0, xmm0
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm5
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x308], 0x0
	mov dword [ebp-0x2b4], 0xe
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_160:
	movss xmm2, dword [ebp-0x23c]
	mulss xmm2, [ebp-0x2fc]
	movss xmm5, dword [ebp-0x238]
	mulss xmm5, [ebp-0x2f0]
	subss xmm2, xmm5
	movaps xmm0, xmm2
	andps xmm0, xmm4
	movss xmm1, dword [ebp-0x2d0]
	mulss xmm1, [ebp-0x33c]
	movss xmm5, dword [ebp-0x2dc]
	mulss xmm5, [ebp-0x334]
	addss xmm1, xmm5
	movss [ebp-0x33c], xmm1
	movss xmm1, dword [ebp-0x2c8]
	mulss xmm1, [ebp-0x340]
	movss xmm5, dword [ebp-0x33c]
	addss xmm5, xmm1
	movss [ebp-0x33c], xmm5
	movss xmm1, dword [ebp-0x2cc]
	mulss xmm1, [ebp-0x344]
	addss xmm5, xmm1
	subss xmm0, xmm5
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	addss xmm7, [ebp-0x318]
	movss [ebp-0x318], xmm7
	addss xmm5, xmm7
	sqrtss xmm1, xmm5
	pxor xmm5, xmm5
	ucomiss xmm1, xmm5
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_170
	movaps xmm5, xmm0
	divss xmm5, xmm1
	movaps xmm0, xmm5
	mulss xmm0, [_float_1_04999995]
	ucomiss xmm0, [ebp-0x2c0]
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_170
	movss xmm7, dword [_data16_80000000]
	movss xmm3, dword [ebp-0x2f0]
	xorps xmm3, xmm7
	divss xmm3, xmm1
	movss xmm6, dword [ebp-0x2fc]
	divss xmm6, xmm1
	pxor xmm0, xmm0
	divss xmm0, xmm1
	movss [ebp-0x234], xmm0
	pxor xmm1, xmm1
	xor eax, eax
	ucomiss xmm1, xmm2
	seta al
	mov [ebp-0x2b8], eax
	movss [ebp-0x2c0], xmm5
	mov dword [ebp-0x2b4], 0xf
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_490:
	movss xmm5, dword [ebp-0x27c]
	mulss xmm5, xmm3
	movss xmm0, dword [ebp-0x254]
	mulss xmm0, xmm6
	addss xmm5, xmm0
	movss [ebp-0x27c], xmm5
	movss xmm1, dword [ebp-0x250]
	mulss xmm1, [ebp-0x234]
	addss xmm5, xmm1
	mov eax, [ebp+0x20]
	movss [eax], xmm5
	movaps xmm0, xmm3
	mov eax, [ebp-0x224]
	mulss xmm0, [eax]
	movaps xmm1, xmm6
	mov eax, [ebp-0x21c]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x234]
	mov eax, [ebp-0x214]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	mov eax, [ebp+0x20]
	movss [eax+0x4], xmm0
	mov eax, [ebp-0x220]
	mulss xmm3, [eax]
	mov eax, [ebp-0x218]
	mulss xmm6, [eax]
	addss xmm3, xmm6
	movss xmm0, dword [ebp-0x234]
	mov eax, [ebp-0x210]
	mulss xmm0, [eax]
	addss xmm3, xmm0
	mov eax, [ebp+0x20]
	movss [eax+0x8], xmm3
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_350:
	mov eax, [ebp-0x2b8]
	test eax, eax
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_180
	mov eax, [ebp+0x20]
	movss xmm0, dword [eax]
	xorps xmm0, xmm7
	movss [eax], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, xmm7
	movss [eax+0x4], xmm0
	movss xmm0, dword [eax+0x8]
	xorps xmm0, xmm7
	movss [eax+0x8], xmm0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_180:
	xor dword [ebp-0x2c0], 0x80000000
	movss xmm0, dword [ebp-0x2c0]
	mov eax, [ebp+0x24]
	movss [eax], xmm0
	cmp dword [ebp-0x2b4], 0x6
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_190
	mov edx, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_200:
	mov eax, [esi+edx*4-0x4]
	mov [ebp+edx*4-0x74], eax
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_200
	mov esi, ecx
	mov dword [ebp-0x1e0], 0x0
	mov eax, [ebp+0x20]
	movss xmm3, dword [eax]
	movss xmm5, dword [eax+0x4]
	movss xmm4, dword [eax+0x8]
	movss xmm6, dword [_float_1_00000000]
	movss xmm7, dword [_float__1_00000000]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_220:
	movaps xmm0, xmm3
	mulss xmm0, [esi]
	movaps xmm1, xmm5
	mulss xmm1, [esi+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [esi+0x20]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x5
	movaps xmm0, xmm1
	movaps xmm1, xmm7
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm6
	orps xmm2, xmm1
	mov edx, esi
	mov dword [ebp-0x20c], 0x1
	mov eax, [ebp-0x1e0]
	mulss xmm2, [ebp+eax*4-0x40]
	lea eax, [ebp-0x70]
	add eax, 0x4
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_210:
	movaps xmm0, xmm2
	mulss xmm0, [edx]
	addss xmm0, [eax-0x4]
	movss [eax-0x4], xmm0
	add dword [ebp-0x20c], 0x1
	add eax, 0x4
	add edx, 0x10
	cmp dword [ebp-0x20c], 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_210
	add dword [ebp-0x1e0], 0x1
	add esi, 0x4
	cmp dword [ebp-0x1e0], 0x3
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_220
	mov edx, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_230:
	mov eax, [edi+edx*4-0x4]
	mov [ebp+edx*4-0x94], eax
	add edx, 0x1
	cmp edx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_230
	mov esi, ebx
	mov dword [ebp-0x1e4], 0x0
	movss xmm6, dword [_float__1_00000000]
	movss xmm7, dword [_float_1_00000000]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_250:
	movaps xmm0, xmm3
	mulss xmm0, [esi]
	movaps xmm1, xmm5
	mulss xmm1, [esi+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [esi+0x20]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x5
	movaps xmm0, xmm1
	movaps xmm1, xmm7
	andps xmm1, xmm0
	movaps xmm2, xmm0
	andnps xmm2, xmm6
	orps xmm2, xmm1
	mov edx, esi
	mov edi, 0x1
	mov eax, [ebp-0x1e4]
	mulss xmm2, [ebp+eax*4-0x34]
	lea eax, [ebp-0x90]
	add eax, 0x4
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_240:
	movaps xmm0, xmm2
	mulss xmm0, [edx]
	addss xmm0, [eax-0x4]
	movss [eax-0x4], xmm0
	add edi, 0x1
	add eax, 0x4
	add edx, 0x10
	cmp edi, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_240
	add dword [ebp-0x1e4], 0x1
	add esi, 0x4
	cmp dword [ebp-0x1e4], 0x3
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_250
	mov esi, [ebp-0x2b4]
	sub esi, 0x7
	mov edx, 0x55555556
	mov eax, esi
	imul edx
	mov eax, esi
	sar eax, 0x1f
	sub edx, eax
	lea edx, [ecx+edx*4]
	mov ecx, 0x1
	lea edi, [ebp-0x110]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_260:
	mov eax, [edx]
	mov [edi+ecx*4-0x4], eax
	add ecx, 0x1
	add edx, 0x10
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_260
	mov edx, 0x55555556
	mov eax, esi
	imul edx
	mov eax, esi
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	sub esi, edx
	lea edx, [ebx+esi*4]
	mov cl, 0x1
	lea ebx, [ebp-0x50]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_270:
	mov eax, [edx]
	mov [ebx+ecx*4-0x4], eax
	add ecx, 0x1
	add edx, 0x10
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_270
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	lea edx, [ebp-0x90]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	lea ecx, [ebp-0x70]
	mov [esp], ecx
	call _Z20dLineClosestApproachPKfS0_S0_S0_PfS1_
	mov ecx, 0x1
	movss xmm1, dword [ebp-0x1c]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_280:
	lea eax, [ecx*4]
	lea edx, [ebp-0x70]
	add edx, eax
	movss xmm0, dword [edi+eax-0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_280
	mov cl, 0x1
	movss xmm1, dword [ebp-0x20]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_290:
	lea eax, [ecx*4]
	lea edx, [ebp-0x90]
	add edx, eax
	movss xmm0, dword [ebx+eax-0x4]
	mulss xmm0, xmm1
	addss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_290
	mov eax, [ebp+0x30]
	mov edx, 0x1
	movss xmm1, dword [_float_0_50000000]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_300:
	movss xmm0, dword [ebp+edx*4-0x74]
	addss xmm0, [ebp+edx*4-0x94]
	mulss xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_300
	mov ebx, [ebp+0x24]
	mov eax, [ebx]
	mov esi, [ebp+0x30]
	mov [esi+0x20], eax
	mov edx, [ebp-0x2b4]
	mov eax, [ebp+0x28]
	mov [eax], edx
	mov edx, 0x1
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_310
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_20:
	pxor xmm0, xmm0
	xor eax, eax
	ucomiss xmm0, [ebp-0x238]
	seta al
	mov [ebp-0x2b8], eax
	mov [ebp-0x308], ecx
	movss [ebp-0x2c0], xmm2
	mov dword [ebp-0x2b4], 0x1
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_320
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_90:
	mov dword [ebp-0x234], 0x0
	pxor xmm6, xmm6
	pxor xmm3, xmm3
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_330
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_170:
	mov eax, [ebp-0x2b4]
	test eax, eax
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	mov eax, [ebp-0x308]
	test eax, eax
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_340
	mov eax, [ebp-0x308]
	movss xmm3, dword [eax]
	mov eax, [ebp+0x20]
	movss [eax], xmm3
	mov eax, [ebp-0x308]
	movss xmm0, dword [eax+0x10]
	mov eax, [ebp+0x20]
	movss [eax+0x4], xmm0
	mov eax, [ebp-0x308]
	movss xmm0, dword [eax+0x20]
	mov eax, [ebp+0x20]
	movss [eax+0x8], xmm0
	movss xmm7, dword [_data16_80000000]
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_350
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_190:
	cmp dword [ebp-0x2b4], 0x3
	jg _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_360
	mov eax, [ebp+0x20]
	movss xmm0, dword [eax]
	movss [ebp-0x228], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x22c], xmm1
	movss xmm5, dword [eax+0x8]
	movss [ebp-0x230], xmm5
	mov [ebp-0x2b0], ecx
	mov [ebp-0x2ac], ebx
	mov [ebp-0x2a8], esi
	mov [ebp-0x2a4], edi
	lea eax, [ebp-0x40]
	mov [ebp-0x2a0], eax
	lea edi, [ebp-0x34]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_590:
	movss xmm3, dword [ebp-0x228]
	mov ecx, [ebp-0x2ac]
	mulss xmm3, [ecx]
	movss xmm0, dword [ebp-0x22c]
	mov ebx, [ebp-0x1bc]
	mulss xmm0, [ebx]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x230]
	mov esi, [ebp-0x1c0]
	mulss xmm0, [esi]
	addss xmm3, xmm0
	movss [ebp-0x60], xmm3
	movss xmm2, dword [ebp-0x228]
	mov eax, [ebp-0x1cc]
	mulss xmm2, [eax]
	movss xmm0, dword [ebp-0x22c]
	mov ecx, [ebp-0x1c4]
	mulss xmm0, [ecx]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x230]
	mov ebx, [ebp-0x1c8]
	mulss xmm0, [ebx]
	addss xmm2, xmm0
	movss [ebp-0x5c], xmm2
	movss xmm1, dword [ebp-0x228]
	mulss xmm1, [edx]
	movss xmm0, dword [ebp-0x22c]
	mov esi, [ebp-0x1d8]
	mulss xmm0, [esi]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x230]
	mov eax, [ebp-0x1dc]
	mulss xmm0, [eax]
	addss xmm1, xmm0
	movss [ebp-0x58], xmm1
	andps xmm3, xmm4
	andps xmm2, xmm4
	andps xmm1, xmm4
	ucomiss xmm2, xmm3
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_370
	ucomiss xmm2, xmm1
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_380
	xor esi, esi
	mov edx, 0x1
	mov ebx, 0x2
	mov eax, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_580:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp+edx*4-0x60]
	ja _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_390
	movss xmm2, dword [edi+eax*4]
	mov ecx, [ebp-0x2ac]
	lea edx, [ecx+edx*4]
	mov [ebp-0x384], edx
	mov ecx, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_400:
	lea eax, [ecx*4]
	mov [ebp-0x380], eax
	mov edx, [ebp-0x2a4]
	movss xmm0, dword [edx+eax-0x4]
	mov edx, [ebp-0x2a8]
	subss xmm0, [edx+eax-0x4]
	movaps xmm1, xmm2
	mov eax, [ebp-0x384]
	mulss xmm1, [eax]
	subss xmm0, xmm1
	mov edx, [ebp-0x380]
	movss [ebp+edx-0x84], xmm0
	add ecx, 0x1
	add eax, 0x10
	mov [ebp-0x384], eax
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_400
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_570:
	cmp dword [ebp-0x2b4], 0x3
	jg _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_410
	mov ecx, [ebp-0x2b4]
	sub ecx, 0x1
	mov [ebp-0x29c], ecx
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_550:
	mov eax, [ebp-0x29c]
	test eax, eax
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_420
	mov eax, 0x1
	mov ecx, 0x2
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_540:
	shl eax, 0x2
	mov [ebp-0x384], eax
	add eax, [ebp-0x2b0]
	movss xmm3, dword [eax]
	movss xmm1, dword [ebp-0x7c]
	movss xmm4, dword [eax+0x10]
	movss xmm2, dword [ebp-0x78]
	movss xmm5, dword [eax+0x20]
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm3
	movss [ebp-0x298], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x298]
	movss [ebp-0x298], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	addss xmm0, [ebp-0x298]
	movss [ebp-0x298], xmm0
	shl ecx, 0x2
	mov edx, [ebp-0x2b0]
	lea eax, [ecx+edx]
	movss xmm6, dword [eax]
	movss xmm7, dword [eax+0x10]
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x24c], xmm0
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, xmm6
	mulss xmm1, xmm7
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x24c]
	addss xmm2, xmm1
	movss [ebp-0x294], xmm2
	lea eax, [esi*4]
	mov edx, [ebp-0x2ac]
	add edx, eax
	mov [ebp-0x350], edx
	movss xmm0, dword [edx]
	movss [ebp-0x374], xmm0
	movss xmm1, dword [edx+0x10]
	movss xmm2, dword [edx+0x20]
	mulss xmm0, xmm3
	movss [ebp-0x290], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x290]
	movss [ebp-0x290], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x290]
	movss [ebp-0x290], xmm0
	shl ebx, 0x2
	mov edx, [ebp-0x2ac]
	add edx, ebx
	mov [ebp-0x34c], edx
	movss xmm0, dword [edx]
	movss [ebp-0x38c], xmm0
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x370], xmm0
	movss xmm0, dword [edx+0x20]
	mulss xmm3, [ebp-0x38c]
	mulss xmm4, [ebp-0x370]
	addss xmm4, xmm3
	mulss xmm5, xmm0
	addss xmm5, xmm4
	movss [ebp-0x28c], xmm5
	movss xmm5, dword [ebp-0x374]
	mulss xmm5, xmm6
	mulss xmm1, xmm7
	addss xmm1, xmm5
	mulss xmm2, [ebp-0x24c]
	addss xmm2, xmm1
	movss [ebp-0x288], xmm2
	mulss xmm6, [ebp-0x38c]
	mulss xmm7, [ebp-0x370]
	addss xmm7, xmm6
	movss xmm1, dword [ebp-0x24c]
	mulss xmm1, xmm0
	movaps xmm5, xmm7
	addss xmm5, xmm1
	movss [ebp-0x284], xmm5
	movss xmm0, dword [eax+edi]
	movss xmm5, dword [ebp-0x290]
	mulss xmm5, xmm0
	movaps xmm6, xmm2
	mulss xmm6, xmm0
	movss xmm0, dword [ebx+edi]
	movss xmm3, dword [ebp-0x28c]
	mulss xmm3, xmm0
	movss xmm4, dword [ebp-0x284]
	mulss xmm4, xmm0
	movss xmm2, dword [ebp-0x298]
	subss xmm2, xmm5
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movss [ebp-0xb0], xmm0
	movss xmm1, dword [ebp-0x294]
	subss xmm1, xmm6
	movaps xmm0, xmm1
	subss xmm0, xmm4
	movss [ebp-0xac], xmm0
	addss xmm2, xmm3
	movss [ebp-0xa8], xmm2
	addss xmm1, xmm4
	movss [ebp-0xa4], xmm1
	movss xmm2, dword [ebp-0x298]
	addss xmm2, xmm5
	movaps xmm0, xmm3
	addss xmm0, xmm2
	movss [ebp-0xa0], xmm0
	movss xmm1, dword [ebp-0x294]
	addss xmm1, xmm6
	movaps xmm0, xmm4
	addss xmm0, xmm1
	movss [ebp-0x9c], xmm0
	subss xmm2, xmm3
	movss [ebp-0x98], xmm2
	subss xmm1, xmm4
	movss [ebp-0x94], xmm1
	mov edx, [ebp-0x384]
	mov ebx, [ebp-0x2a0]
	mov eax, [edx+ebx]
	mov [ebp-0x28], eax
	mov eax, [ecx+ebx]
	mov [ebp-0x24], eax
	mov dword [ebp-0x1f8], 0x4
	lea esi, [ebp-0xb0]
	mov [ebp-0x1f0], esi
	lea eax, [ebp-0x150]
	mov [ebp-0x1f4], eax
	mov dword [ebp-0x1fc], 0x0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_670:
	mov dword [ebp-0x248], 0x4
	mov edx, [ebp-0x1fc]
	sub [ebp-0x248], edx
	mov edi, [ebp-0x1f4]
	mov dword [ebp-0x244], 0xffffffff
	lea ecx, [ebp-0x28]
	add ecx, edx
	mov [ebp-0x368], ecx
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_520:
	mov eax, [ebp-0x1f8]
	test eax, eax
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_430
	cvtsi2ss xmm5, dword [ebp-0x244]
	mov esi, [ebp-0x1f0]
	add esi, 0x8
	mov ebx, [ebp-0x1fc]
	add ebx, [ebp-0x1f0]
	mov [ebp-0x200], ebx
	mov ecx, [ebp-0x1f4]
	mov dword [ebp-0x280], 0x0
	mov dword [ebp-0x204], 0x0
	mov eax, [ebp-0x248]
	add eax, [ebp-0x1f0]
	mov [ebp-0x364], eax
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_470:
	movaps xmm0, xmm5
	mov edx, [ebp-0x200]
	mulss xmm0, [edx]
	mov ebx, [ebp-0x368]
	movss xmm2, dword [ebx]
	ucomiss xmm2, xmm0
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_440
	mov eax, [esi-0x8]
	mov [ecx], eax
	mov eax, [esi-0x4]
	mov [ecx+0x4], eax
	add ecx, 0x8
	add dword [ebp-0x280], 0x1
	test byte [ebp-0x280], 0x8
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_450
	movss xmm2, dword [ebx]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_440:
	mov eax, [ebp-0x1f8]
	sub eax, [ebp-0x204]
	sub eax, 0x1
	mov ebx, [ebp-0x1f0]
	cmovg ebx, esi
	mov eax, [ebp-0x200]
	movss xmm4, dword [eax]
	mov edx, [ebp-0x1fc]
	movss xmm3, dword [ebx+edx]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	ucomiss xmm2, xmm0
	seta dl
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	ucomiss xmm2, xmm0
	seta al
	cmp dl, al
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_460
	mov eax, [ebp-0x364]
	movss xmm0, dword [eax]
	mov edx, [ebp-0x248]
	movss xmm1, dword [ebx+edx]
	subss xmm1, xmm0
	subss xmm3, xmm4
	divss xmm1, xmm3
	mulss xmm2, xmm5
	subss xmm2, xmm4
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ecx+edx], xmm0
	movaps xmm0, xmm5
	mov ebx, [ebp-0x368]
	mulss xmm0, [ebx]
	mov eax, [ebp-0x1fc]
	movss [ecx+eax], xmm0
	add ecx, 0x8
	add dword [ebp-0x280], 0x1
	test byte [ebp-0x280], 0x8
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_450
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_460:
	add dword [ebp-0x204], 0x1
	add dword [ebp-0x364], 0x8
	add esi, 0x8
	add dword [ebp-0x200], 0x8
	mov edx, [ebp-0x1f8]
	cmp [ebp-0x204], edx
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_470
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_480
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_340:
	movss xmm7, dword [_data16_80000000]
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_490
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_430:
	mov dword [ebp-0x280], 0x0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_480:
	lea ecx, [ebp-0x150]
	cmp ecx, [ebp-0x1f4]
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_500
	lea esi, [ebp-0x150]
	mov [ebp-0x1f4], esi
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_680:
	add dword [ebp-0x244], 0x2
	cmp dword [ebp-0x244], 0x3
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_510
	mov eax, [ebp-0x280]
	mov [ebp-0x1f8], eax
	mov [ebp-0x1f0], edi
	mov edi, [ebp-0x1f4]
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_520
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_420:
	cmp dword [ebp-0x29c], 0x1
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_530
	xor eax, eax
	mov ecx, 0x1
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_540
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_410:
	mov eax, [ebp-0x2b4]
	sub eax, 0x4
	mov [ebp-0x29c], eax
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_550
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_530:
	xor eax, eax
	mov ecx, 0x2
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_540
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_390:
	movss xmm2, dword [edi+eax*4]
	mov eax, [ebp-0x2ac]
	lea edx, [eax+edx*4]
	mov [ebp-0x384], edx
	mov ecx, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_560:
	lea edx, [ecx*4]
	mov [ebp-0x380], edx
	mov eax, [ebp-0x2a4]
	movss xmm0, dword [eax+edx-0x4]
	mov eax, [ebp-0x2a8]
	subss xmm0, [eax+edx-0x4]
	movaps xmm1, xmm2
	mov edx, [ebp-0x384]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	mov eax, [ebp-0x380]
	movss [ebp+eax-0x84], xmm0
	add ecx, 0x1
	add edx, 0x10
	mov [ebp-0x384], edx
	cmp ecx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_560
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_570
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_380:
	xor esi, esi
	mov edx, 0x2
	mov ebx, 0x1
	mov eax, 0x2
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_580
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_370:
	ucomiss xmm3, xmm1
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_380
	mov esi, 0x1
	xor edx, edx
	mov ebx, 0x2
	xor eax, eax
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_580
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_360:
	mov eax, [ebp+0x20]
	movss xmm0, dword [eax]
	movss [ebp-0x228], xmm0
	xor dword [ebp-0x228], 0x80000000
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x22c], xmm1
	xor dword [ebp-0x22c], 0x80000000
	movss xmm5, dword [eax+0x8]
	movss [ebp-0x230], xmm5
	xor dword [ebp-0x230], 0x80000000
	mov [ebp-0x2b0], ebx
	mov [ebp-0x2ac], ecx
	mov [ebp-0x2a8], edi
	mov [ebp-0x2a4], esi
	mov eax, [ebp-0x224]
	mov [ebp-0x1bc], eax
	mov edx, [ebp-0x220]
	mov [ebp-0x1c0], edx
	mov ecx, [ebp-0x1d4]
	mov [ebp-0x1cc], ecx
	mov ebx, [ebp-0x21c]
	mov [ebp-0x1c4], ebx
	mov esi, [ebp-0x218]
	mov [ebp-0x1c8], esi
	mov edx, [ebp-0x1d0]
	mov eax, [ebp-0x214]
	mov [ebp-0x1d8], eax
	mov ecx, [ebp-0x210]
	mov [ebp-0x1dc], ecx
	lea ebx, [ebp-0x34]
	mov [ebp-0x2a0], ebx
	lea edi, [ebp-0x40]
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_590
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_450:
	lea ecx, [ebp-0x150]
	cmp edi, ecx
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_600
	mov eax, [ebp-0x280]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ecx
	call memcpy
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_600:
	mov esi, [ebp-0x280]
	test esi, esi
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	movss xmm0, dword [ebp-0x290]
	mulss xmm0, [ebp-0x284]
	movss xmm1, dword [ebp-0x28c]
	mulss xmm1, [ebp-0x288]
	subss xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss xmm3, dword [ebp-0x290]
	mulss xmm3, xmm1
	movss xmm5, dword [ebp-0x28c]
	mulss xmm5, xmm1
	movss xmm4, dword [ebp-0x284]
	mulss xmm4, xmm1
	movss xmm6, dword [ebp-0x288]
	mulss xmm6, xmm1
	xorps xmm6, [_data16_80000000]
	mov esi, [ebp-0x29c]
	mov eax, [ebp-0x2a0]
	lea esi, [eax+esi*4]
	mov [ebp-0x30c], esi
	mov dword [ebp-0x2bc], 0x0
	xor edx, edx
	xor edi, edi
	lea eax, [ebp-0x1b0]
	mov [ebp-0x358], eax
	mov dword [ebp-0x35c], 0x0
	mov dword [ebp-0x360], 0x0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_630:
	movss xmm0, dword [edi+ebp-0x150]
	movss [ebp-0x354], xmm0
	subss xmm0, [ebp-0x298]
	movss xmm1, dword [edi+ebp-0x14c]
	subss xmm1, [ebp-0x294]
	movaps xmm7, xmm4
	mulss xmm7, xmm0
	movaps xmm2, xmm5
	mulss xmm2, xmm1
	subss xmm7, xmm2
	movaps xmm2, xmm0
	mulss xmm2, xmm6
	mulss xmm1, xmm3
	addss xmm2, xmm1
	mov ebx, [ebp-0x350]
	mov ecx, [ebp-0x34c]
	lea eax, [ebp-0x1b0]
	add eax, [ebp-0x360]
	mov esi, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_610:
	movaps xmm0, xmm7
	mulss xmm0, [ebx]
	addss xmm0, [ebp+esi*4-0x84]
	movaps xmm1, xmm2
	mulss xmm1, [ecx]
	addss xmm0, xmm1
	movss [eax], xmm0
	add esi, 0x1
	add ebx, 0x10
	add ecx, 0x10
	add eax, 0x4
	cmp esi, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_610
	movss xmm1, dword [ebp-0x228]
	mov eax, [ebp-0x358]
	mulss xmm1, [eax]
	movss xmm0, dword [ebp-0x22c]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x230]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	mov ecx, [ebp-0x30c]
	movss xmm0, dword [ecx]
	subss xmm0, xmm1
	mov ebx, [ebp-0x35c]
	movss [ebp+ebx*2-0xd0], xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_620
	movss xmm0, dword [ebp-0x354]
	movss [ebp+ebx*4-0x150], xmm0
	mov eax, [edi+ebp-0x14c]
	mov [ebp+ebx*4-0x14c], eax
	add edx, 0x1
	add dword [ebp-0x360], 0xc
	add ebx, 0x2
	mov [ebp-0x35c], ebx
	add dword [ebp-0x358], 0xc
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_620:
	add dword [ebp-0x2bc], 0x1
	add edi, 0x8
	mov eax, [ebp-0x2bc]
	cmp [ebp-0x280], eax
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_630
	test edx, edx
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_30
	cmp [ebp+0x2c], edx
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_640
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_690:
	xor edi, edi
	mov dword [ebp-0x208], 0x0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_660:
	mov eax, [ebp+0x34]
	imul eax, edi
	add eax, [ebp+0x30]
	mov [ebp-0x37c], eax
	mov ebx, [ebp-0x208]
	lea ecx, [ebp+ebx*4-0x1b0]
	mov ebx, 0x1
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_650:
	movss xmm0, dword [ecx]
	mov esi, [ebp-0x2a8]
	addss xmm0, [esi+ebx*4-0x4]
	movss [eax], xmm0
	add ebx, 0x1
	add ecx, 0x4
	add eax, 0x4
	cmp ebx, 0x4
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_650
	mov eax, [ebp+edi*4-0xd0]
	mov ecx, [ebp-0x37c]
	mov [ecx+0x20], eax
	add edi, 0x1
	add dword [ebp-0x208], 0x3
	cmp edi, edx
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_660
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_770:
	mov ebx, [ebp-0x2b4]
	mov ecx, [ebp+0x28]
	mov [ecx], ebx
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_310
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_510:
	add dword [ebp-0x1fc], 0x4
	cmp dword [ebp-0x1fc], 0x8
	jz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_450
	mov edx, [ebp-0x280]
	mov [ebp-0x1f8], edx
	mov [ebp-0x1f0], edi
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_670
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_500:
	lea ebx, [ebp-0x110]
	mov [ebp-0x1f4], ebx
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_680
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_640:
	mov ebx, [ebp+0x2c]
	test ebx, ebx
	mov eax, 0x1
	cmovg eax, [ebp+0x2c]
	mov [ebp+0x2c], eax
	cmp edx, eax
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_690
	movss xmm1, dword [ebp-0xd0]
	cmp edx, 0x1
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_700
	mov eax, 0x1
	xor ebx, ebx
	lea esi, [ebp-0xd0]
	mov ecx, 0x8
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_720:
	movss xmm0, dword [esi+ecx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_710
	mov ebx, eax
	movaps xmm1, xmm0
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_710:
	add eax, 0x1
	add ecx, 0x4
	cmp eax, edx
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_720
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_730
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_700:
	xor ebx, ebx
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_730:
	lea eax, [ebp-0x110]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov ebx, [ebp+0x2c]
	mov [esp+0x8], ebx
	lea esi, [ebp-0x150]
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z10cullPointsiPfiiPi
	test ebx, ebx
	jle _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_740
	xor edi, edi
	mov esi, [ebp+0x30]
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_760:
	mov ecx, esi
	xor ebx, ebx
	mov edx, [ebp+edi*4-0x110]
	lea eax, [edx+edx*2]
	mov [ebp-0x348], eax
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_750:
	mov eax, [ebp-0x348]
	add eax, ebx
	movss xmm0, dword [ebp+eax*4-0x1b0]
	mov eax, [ebp-0x2a8]
	addss xmm0, [eax+ebx*4]
	movss [ecx], xmm0
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x3
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_750
	mov eax, [ebp+edx*4-0xd0]
	mov [esi+0x20], eax
	add edi, 0x1
	add esi, [ebp+0x34]
	cmp edi, [ebp+0x2c]
	jnz _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_760
_Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_740:
	mov edx, [ebp+0x2c]
	jmp _Z7dBoxBoxPKfS0_S0_S0_S0_S0_PfS1_PiiP12dContactGeomi_770


;dxBox::computeAABB()
_ZN5dxBox11computeAABBEv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0x8]
	mov eax, [edx+0x1c]
	movss xmm1, dword [edx+0x4c]
	movss xmm4, dword [edx+0x50]
	movss xmm5, dword [edx+0x54]
	movaps xmm3, xmm1
	mulss xmm3, [eax]
	movss xmm7, dword [_data16_7fffffff]
	andps xmm3, xmm7
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	andps xmm0, xmm7
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x8]
	andps xmm0, xmm7
	addss xmm3, xmm0
	movss xmm6, dword [_float_0_50000000]
	mulss xmm3, xmm6
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x10]
	andps xmm2, xmm7
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x14]
	andps xmm0, xmm7
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x18]
	andps xmm0, xmm7
	addss xmm2, xmm0
	mulss xmm2, xmm6
	mulss xmm1, [eax+0x20]
	andps xmm1, xmm7
	mulss xmm4, [eax+0x24]
	andps xmm4, xmm7
	addss xmm1, xmm4
	mulss xmm5, [eax+0x28]
	andps xmm5, xmm7
	addss xmm1, xmm5
	mulss xmm1, xmm6
	mov eax, [edx+0x18]
	movss xmm0, dword [eax]
	subss xmm0, xmm3
	movss [edx+0x2c], xmm0
	addss xmm3, [eax]
	movss [edx+0x30], xmm3
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm2
	movss [edx+0x34], xmm0
	addss xmm2, [eax+0x4]
	movss [edx+0x38], xmm2
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm1
	movss [edx+0x3c], xmm0
	addss xmm1, [eax+0x8]
	movss [edx+0x40], xmm1
	leave
	ret
	nop


;dxBox::~dxBox()
_ZN5dxBoxD0Ev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV5dxBox+0x8
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [edx], eax
	mov dword [esp+0x4], 0x5c
	mov [esp], edx
	call dFree
	leave
	ret
	nop


;dxBox::~dxBox()
_ZN5dxBoxD1Ev:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov dword [edx], _ZTV5dxBox+0x8
	mov eax, _ZTV6dxGeom
	add eax, 0x8
	mov [edx], eax
	pop ebp
	ret


;dCreateBox
dCreateBox:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0xb
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov eax, odeGlob
	add eax, 0x2c6478
	mov [esp], eax
	call _Z10Pool_AllocP10pooldata_t
	mov ebx, eax
	mov dword [esp], 0xb
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	test ebx, ebx
	jz dCreateBox_10
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN6dxGeomC2EP7dxSpaceiP6dxBody
	mov dword [ebx], _ZTV5dxBox+0x8
	mov dword [ebx+0x4], 0x1
	movss xmm0, dword [ebp+0x10]
	movss [ebx+0x4c], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebx+0x50], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebx+0x54], xmm0
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
dCreateBox_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	mov [esp], eax
	call _Unwind_Resume


;dGeomBoxGetLengths
dGeomBoxGetLengths:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx+0x4c]
	mov [ecx], eax
	mov eax, [edx+0x50]
	mov [ecx+0x4], eax
	mov eax, [edx+0x54]
	mov [ecx+0x8], eax
	pop ebp
	ret


;Initialized global or static variables of collision_std:
SECTION .data


;Initialized constant data of collision_std:
SECTION .rdata
;VTypeInfoTable for dxBox:
_ZTI5dxBox: dd 0x8, _cstring_5dxbox, _ZTI6dxGeom, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for dxBox:
_ZTV5dxBox: dd 0x0, _ZTI5dxBox, _ZN5dxBoxD1Ev, _ZN5dxBoxD0Ev, _ZN5dxBox11computeAABBEv, _ZN6dxGeom8AABBTestEPS_Pf, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of collision_std:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_5dxbox:		db "5dxBox",0



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float__1_00000000:		dd 0xbf800000	; -1
_float_1_00000000:		dd 0x3f800000	; 1
_float_3_00000000:		dd 0x40400000	; 3
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__340282346638528859811704:		dd 0xff7fffff	; -3.40282e+38
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_00000000:		dd 0x0	; 0
_float__0_50000000:		dd 0xbf000000	; -0.5
_float__4_00000000:		dd 0xc0800000	; -4
_float_0_00001000:		dd 0x3727c5ac	; 1e-05
_float_1_04999995:		dd 0x3f866666	; 1.05

