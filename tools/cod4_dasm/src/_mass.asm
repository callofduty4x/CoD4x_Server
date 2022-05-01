;Imports of mass:
	extern dSetZero

;Exports of mass:
	global _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4_
	global dMassSetBoxTotal
	global dMassSetCappedCylinderTotal
	global dMassSetCylinderTotal
	global dMassSetParameters
	global dMassSetSphereTotal
	global dMassSetZero
	global dMassTranslate


SECTION .text


;Phys_ComputeMassProperties(float const*, float const*, unsigned char (*)(float const*, float const*, void*), void*, float*, float*, float*)
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	xor edi, edi
	mov [ebp-0x74], edi
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x70]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea edx, [ebp-0x60]
	mov [esp], edx
	call dSetZero
	movss xmm0, dword [esi]
	movss [ebp-0xb8], xmm0
	subss xmm0, [ebx]
	movss [ebp-0xb8], xmm0
	movss xmm0, dword [_float_0_03125000]
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm0
	movss [ebp-0xb8], xmm1
	lea eax, [ebx+0x4]
	mov [ebp-0xc0], eax
	movss xmm7, dword [esi+0x4]
	subss xmm7, [ebx+0x4]
	mulss xmm7, xmm0
	lea edx, [ebx+0x8]
	mov [ebp-0xbc], edx
	movss xmm6, dword [esi+0x8]
	subss xmm6, [ebx+0x8]
	mulss xmm6, xmm0
	movss xmm0, dword [_float_0_50000000]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mulss xmm0, xmm6
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebx]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x30], xmm0
	xor esi, esi
	mov [ebp-0xb0], edi
	movss xmm0, dword [ebp-0xb0]
	movss [ebp-0xac], xmm0
	movss [ebp-0xa8], xmm0
	movss [ebp-0xa4], xmm0
	movss [ebp-0xa0], xmm0
	movss [ebp-0x9c], xmm0
	mov dword [ebp-0xb4], 0x0
	movss [ebp-0x88], xmm0
	movss [ebp-0x84], xmm0
	movss [ebp-0x80], xmm0
	lea edi, [ebp-0x30]
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__50:
	movss xmm0, dword [eax]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x2c], xmm0
	mov dword [ebp-0x7c], 0x20
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__30:
	mov edx, [ebp-0xbc]
	movss xmm0, dword [edx]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x28], xmm0
	mov ebx, 0x20
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__20:
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	movss [ebp-0xe8], xmm6
	movss [ebp-0xf8], xmm7
	call dword [ebp+0x10]
	test al, al
	movss xmm6, dword [ebp-0xe8]
	movss xmm7, dword [ebp-0xf8]
	jz _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__10
	add esi, 0x1
	movss xmm0, dword [ebp-0x80]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x80], xmm0
	movss xmm1, dword [ebp-0x84]
	addss xmm1, [ebp-0x2c]
	movss [ebp-0x84], xmm1
	movss xmm0, dword [ebp-0x88]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x88], xmm0
	movss xmm4, dword [ebp-0x30]
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	movss xmm5, dword [ebp-0x2c]
	movaps xmm2, xmm5
	mulss xmm2, xmm5
	movaps xmm0, xmm1
	addss xmm0, xmm2
	addss xmm0, [ebp-0xb0]
	movss [ebp-0xb0], xmm0
	movss xmm3, dword [ebp-0x28]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	addss xmm1, xmm0
	addss xmm1, [ebp-0xac]
	movss [ebp-0xac], xmm1
	addss xmm2, xmm0
	addss xmm2, [ebp-0xa8]
	movss [ebp-0xa8], xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	addss xmm0, [ebp-0xa4]
	movss [ebp-0xa4], xmm0
	mulss xmm4, xmm3
	addss xmm4, [ebp-0xa0]
	movss [ebp-0xa0], xmm4
	mulss xmm5, xmm3
	addss xmm5, [ebp-0x9c]
	movss [ebp-0x9c], xmm5
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__10:
	movaps xmm0, xmm6
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	sub ebx, 0x1
	jnz _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__20
	movaps xmm0, xmm7
	addss xmm0, [ebp-0x2c]
	movss [ebp-0x2c], xmm0
	sub dword [ebp-0x7c], 0x1
	jnz _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__30
	movss xmm0, dword [ebp-0xb8]
	addss xmm0, [ebp-0x30]
	movss [ebp-0x30], xmm0
	add dword [ebp-0xb4], 0x1
	cmp dword [ebp-0xb4], 0x20
	jz _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__40
	mov eax, [ebp-0xc0]
	jmp _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__50
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__40:
	cmp esi, 0x0
	jnz _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__60
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__80:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__60:
	jl _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__70
	cvtsi2ss xmm0, esi
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__90:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	movss xmm1, dword [ebp-0x80]
	mulss xmm1, xmm0
	movss [ebp-0xc4], xmm1
	mov eax, [ebp+0x18]
	movss [eax], xmm1
	movss xmm1, dword [ebp-0x84]
	mulss xmm1, xmm0
	movss [ebp-0xc8], xmm1
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebp-0x88]
	mulss xmm1, xmm0
	movss [ebp-0x98], xmm1
	movss [eax+0x8], xmm1
	movss xmm1, dword [ebp-0x9c]
	xorps xmm1, [_data16_80000000]
	mulss xmm1, xmm0
	movss [ebp-0x94], xmm1
	movss xmm1, dword [ebp-0xa0]
	xorps xmm1, [_data16_80000000]
	mulss xmm1, xmm0
	movss [ebp-0x90], xmm1
	movss xmm1, dword [ebp-0xa4]
	xorps xmm1, [_data16_80000000]
	mulss xmm1, xmm0
	movss [ebp-0x8c], xmm1
	mov dword [ebp-0x74], 0x0
	mov dword [esp+0x4], 0x4
	lea ebx, [ebp-0x74]
	lea eax, [ebp-0x70]
	mov [esp], eax
	movss [ebp-0xd8], xmm0
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea edx, [ebp-0x60]
	mov [esp], edx
	call dSetZero
	mov dword [ebp-0x74], 0x3f800000
	movss xmm1, dword [ebp-0xc4]
	movss [ebp-0x70], xmm1
	movss xmm1, dword [ebp-0xc8]
	movss [ebp-0x6c], xmm1
	movss xmm1, dword [ebp-0x98]
	movss [ebp-0x68], xmm1
	movss xmm0, dword [ebp-0xd8]
	movss xmm1, dword [ebp-0xa8]
	mulss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movss xmm1, dword [ebp-0xac]
	mulss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	mulss xmm0, [ebp-0xb0]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp-0x8c]
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [ebp-0x90]
	movss [ebp-0x58], xmm1
	movss xmm0, dword [ebp-0x94]
	movss [ebp-0x48], xmm0
	movss xmm1, dword [ebp-0x8c]
	movss [ebp-0x50], xmm1
	movss xmm0, dword [ebp-0x90]
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp-0x94]
	movss [ebp-0x3c], xmm1
	mov eax, [ebp+0x18]
	movss xmm0, dword [eax+0x8]
	xorps xmm0, [_data16_80000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [eax+0x4]
	xorps xmm0, [_data16_80000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [eax]
	xorps xmm0, [_data16_80000000]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call dMassTranslate
	mov eax, [ebp-0x60]
	mov edx, [ebp+0x1c]
	mov [edx], eax
	mov eax, [ebp-0x4c]
	mov [edx+0x4], eax
	mov eax, [ebp-0x38]
	mov [edx+0x8], eax
	mov eax, [ebp-0x5c]
	mov edx, [ebp+0x20]
	mov [edx], eax
	mov eax, [ebp-0x58]
	mov [edx+0x4], eax
	mov eax, [ebp-0x48]
	mov [edx+0x8], eax
	jmp _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__80
_Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__70:
	mov eax, esi
	shr eax, 1
	and esi, 0x1
	or eax, esi
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z26Phys_ComputeMassPropertiesPKfS0_PFhS0_S0_PvES1_PfS4_S4__90
	add [eax], al


;dMassSetBoxTotal
dMassSetBoxTotal:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	movss xmm2, dword [ebp+0xc]
	movss xmm1, dword [ebp+0x18]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x18], xmm1
	movss [ebp-0x28], xmm2
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x14]
	mov [esp], eax
	call dSetZero
	movss xmm2, dword [ebp-0x28]
	movss [ebx], xmm2
	divss xmm2, dword [_float_12_00000000]
	movss xmm3, dword [ebp+0x14]
	mulss xmm3, xmm3
	movss xmm1, dword [ebp-0x18]
	mulss xmm1, xmm1
	movaps xmm0, xmm3
	addss xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebx+0x14], xmm0
	movss xmm0, dword [ebp+0x10]
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebx+0x28], xmm1
	addss xmm3, xmm0
	mulss xmm2, xmm3
	movss [ebx+0x3c], xmm2
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;dMassSetCappedCylinderTotal
dMassSetCappedCylinderTotal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	movss xmm6, dword [ebp+0x14]
	movss xmm5, dword [ebp+0x18]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x18], xmm5
	movss [ebp-0x28], xmm6
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x14]
	mov [esp], eax
	call dSetZero
	movss xmm6, dword [ebp-0x28]
	cvtss2sd xmm1, xmm6
	movapd xmm0, xmm1
	mulsd xmm0, [_double_3_14159265]
	mulsd xmm0, xmm1
	movss xmm5, dword [ebp-0x18]
	cvtss2sd xmm2, xmm5
	mulsd xmm0, xmm2
	cvtsd2ss xmm4, xmm0
	movapd xmm0, xmm1
	mulsd xmm0, [_double_4_18879033]
	mulsd xmm0, xmm1
	mulsd xmm1, xmm0
	cvtsd2ss xmm7, xmm1
	movaps xmm0, xmm4
	addss xmm0, xmm7
	movss [ebx], xmm0
	movss xmm3, dword [_float_0_25000000]
	movaps xmm2, xmm6
	mulss xmm2, xmm3
	mulss xmm2, xmm6
	movaps xmm0, xmm5
	mulss xmm0, [_float_0_08333334]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	mulss xmm2, xmm4
	movaps xmm1, xmm6
	mulss xmm1, [_float_0_40000001]
	mulss xmm1, xmm6
	movaps xmm0, xmm6
	mulss xmm0, [_float_0_37500000]
	mulss xmm0, xmm5
	addss xmm1, xmm0
	mulss xmm3, xmm5
	mulss xmm5, xmm3
	addss xmm1, xmm5
	mulss xmm1, xmm7
	addss xmm2, xmm1
	movss [ebx+0x14], xmm2
	movss [ebx+0x28], xmm2
	movss [ebx+0x3c], xmm2
	lea esi, [esi+esi*4]
	mulss xmm4, [_float_0_50000000]
	mulss xmm7, [_float_0_40000001]
	addss xmm4, xmm7
	mulss xmm4, xmm6
	mulss xmm6, xmm4
	movss [ebx+esi*4], xmm6
	movss xmm1, dword [ebp+0xc]
	divss xmm1, dword [ebx]
	movss xmm0, dword [ebp+0xc]
	movss [ebx], xmm0
	xor esi, esi
	lea ecx, [ebx+0x10]
dMassSetCappedCylinderTotal_20:
	lea eax, [ecx+0x4]
	mov edx, 0x3
dMassSetCappedCylinderTotal_10:
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	movss [eax], xmm0
	add eax, 0x4
	sub edx, 0x1
	jnz dMassSetCappedCylinderTotal_10
	add esi, 0x4
	add ecx, 0x10
	cmp esi, 0xc
	jnz dMassSetCappedCylinderTotal_20
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;dMassSetCylinderTotal
dMassSetCylinderTotal:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x14]
	mov [esp], eax
	call dSetZero
	movss xmm2, dword [ebp+0x14]
	mulss xmm2, xmm2
	movss xmm0, dword [ebp+0xc]
	movss [ebx], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [_float_0_25000000]
	movss xmm1, dword [ebp+0x18]
	mulss xmm1, [_float_0_08333334]
	mulss xmm1, [ebp+0x18]
	movss [ebp+0x18], xmm1
	addss xmm0, xmm1
	mulss xmm0, [ebp+0xc]
	movss [ebx+0x14], xmm0
	movss [ebx+0x28], xmm0
	movss [ebx+0x3c], xmm0
	lea esi, [esi+esi*4]
	movss xmm0, dword [ebp+0xc]
	mulss xmm0, [_float_0_50000000]
	mulss xmm2, xmm0
	movss [ebx+esi*4], xmm2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;dMassSetParameters
dMassSetParameters:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x28]
	mov edi, [ebp+0x2c]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x14]
	mov [esp], eax
	call dSetZero
	mov eax, [ebp+0xc]
	mov [ebx], eax
	mov eax, [ebp+0x10]
	mov [ebx+0x4], eax
	mov eax, [ebp+0x14]
	mov [ebx+0x8], eax
	mov eax, [ebp+0x18]
	mov [ebx+0xc], eax
	mov eax, [ebp+0x1c]
	mov [ebx+0x14], eax
	mov eax, [ebp+0x20]
	mov [ebx+0x28], eax
	mov eax, [ebp+0x24]
	mov [ebx+0x3c], eax
	mov [ebx+0x18], esi
	mov [ebx+0x1c], edi
	movss xmm0, dword [ebp+0x30]
	movss [ebx+0x2c], xmm0
	mov [ebx+0x24], esi
	mov [ebx+0x34], edi
	movss [ebx+0x38], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dMassSetSphereTotal
dMassSetSphereTotal:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x18], xmm0
	call dSetZero
	mov dword [esp+0x4], 0xc
	lea eax, [ebx+0x14]
	mov [esp], eax
	call dSetZero
	movss xmm0, dword [ebp-0x18]
	movss [ebx], xmm0
	mulss xmm0, [_float_0_40000001]
	mulss xmm0, [ebp+0x10]
	mulss xmm0, [ebp+0x10]
	movss [ebx+0x14], xmm0
	movss [ebx+0x28], xmm0
	movss [ebx+0x3c], xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	add [eax], al


;dMassSetZero
dMassSetZero:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x4
	lea eax, [ebx+0x4]
	mov [esp], eax
	call dSetZero
	mov dword [esp+0x4], 0xc
	add ebx, 0x14
	mov [esp], ebx
	call dSetZero
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;dMassTranslate
dMassTranslate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov dword [esp+0x4], 0xc
	lea eax, [ebp-0x78]
	mov [esp], eax
	call dSetZero
	movss xmm6, dword [_data16_80000000]
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0xc]
	movaps xmm0, xmm2
	xorps xmm0, xmm6
	movss [ebp-0x74], xmm0
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x70], xmm1
	movss [ebp-0x68], xmm2
	movss xmm2, dword [eax+0x4]
	movaps xmm0, xmm2
	xorps xmm0, xmm6
	movss [ebp-0x60], xmm0
	xorps xmm1, xmm6
	movss [ebp-0x58], xmm1
	movss [ebp-0x54], xmm2
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [eax+0x4]
	movss [ebp-0xdc], xmm0
	movss xmm3, dword [ebp+0x10]
	addss xmm3, [eax+0x8]
	movss xmm0, dword [ebp+0x14]
	addss xmm0, [eax+0xc]
	movss [ebp-0xe0], xmm0
	mov dword [esp+0x4], 0xc
	lea eax, [ebp-0x48]
	mov [esp], eax
	movss [ebp-0x118], xmm3
	movaps [ebp-0x128], xmm6
	call dSetZero
	movaps xmm6, [ebp-0x128]
	movss xmm5, dword [ebp-0xe0]
	xorps xmm5, xmm6
	movss [ebp-0x44], xmm5
	movss xmm3, dword [ebp-0x118]
	movss [ebp-0x40], xmm3
	movss xmm0, dword [ebp-0xe0]
	movss [ebp-0x38], xmm0
	movss xmm4, dword [ebp-0xdc]
	xorps xmm4, xmm6
	movss [ebp-0x30], xmm4
	movaps xmm0, xmm3
	xorps xmm0, xmm6
	movss [ebp-0xfc], xmm0
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0xdc]
	movss [ebp-0x24], xmm0
	movss xmm2, dword [ebp-0x48]
	movss xmm0, dword [ebp-0xe0]
	mulss xmm0, xmm5
	movss [ebp-0xf8], xmm0
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, xmm3
	movss [ebp-0xf4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	addss xmm0, [ebp-0xf8]
	addss xmm0, [ebp-0xf4]
	movss [ebp-0xa8], xmm0
	movss xmm7, dword [ebp-0x34]
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	movaps xmm1, xmm5
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xdc]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss [ebp-0xa4], xmm0
	movss xmm6, dword [ebp-0x20]
	movaps xmm0, xmm2
	mulss xmm0, xmm3
	movaps xmm1, xmm5
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0xe0]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0xe0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xfc]
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movss [ebp-0x98], xmm0
	movss xmm1, dword [ebp-0xdc]
	mulss xmm1, xmm4
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm0, [ebp-0xf8]
	movss [ebp-0xf8], xmm0
	addss xmm0, xmm1
	movss [ebp-0x94], xmm0
	mulss xmm3, [ebp-0xe0]
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	addss xmm3, xmm0
	mulss xmm4, xmm6
	addss xmm3, xmm4
	movss [ebp-0x90], xmm3
	mulss xmm2, [ebp-0xfc]
	movss xmm0, dword [ebp-0xe0]
	mulss xmm0, [ebp-0xdc]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0xfc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss [ebp-0x88], xmm2
	mulss xmm5, [ebp-0xfc]
	mulss xmm7, [ebp-0xdc]
	addss xmm5, xmm7
	movss xmm0, dword [ebp-0xdc]
	mulss xmm0, xmm6
	addss xmm5, xmm0
	movss [ebp-0x84], xmm5
	addss xmm1, [ebp-0xf4]
	movss [ebp-0xf4], xmm1
	mulss xmm6, xmm6
	addss xmm6, xmm1
	movss [ebp-0x80], xmm6
	movss xmm4, dword [ebp-0x78]
	movss xmm6, dword [ebp-0x74]
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0xf0], xmm0
	mulss xmm0, xmm6
	movss [ebp-0xec], xmm0
	movss xmm3, dword [ebp-0x70]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm3
	movss [ebp-0xe8], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	addss xmm0, [ebp-0xec]
	addss xmm0, [ebp-0xe8]
	movss [ebp-0xd8], xmm0
	movss xmm7, dword [ebp-0x64]
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0xe4], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	movaps xmm1, xmm6
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss [ebp-0xd4], xmm0
	movss xmm2, dword [ebp-0x60]
	movss xmm5, dword [ebp-0x50]
	movaps xmm0, xmm4
	mulss xmm0, xmm3
	movaps xmm1, xmm6
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movss [ebp-0xd0], xmm0
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xf0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, xmm2
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	addss xmm0, [ebp-0xec]
	movss [ebp-0xec], xmm0
	addss xmm0, xmm1
	movss [ebp-0xc4], xmm0
	mulss xmm3, [ebp-0xf0]
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	addss xmm3, xmm0
	mulss xmm2, xmm5
	addss xmm3, xmm2
	movss [ebp-0xc0], xmm3
	mulss xmm4, [ebp-0x58]
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, [ebp-0xe4]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm5
	addss xmm4, xmm0
	movss [ebp-0xb8], xmm4
	mulss xmm6, [ebp-0x58]
	mulss xmm7, [ebp-0xe4]
	addss xmm6, xmm7
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, xmm5
	addss xmm6, xmm0
	movss [ebp-0xb4], xmm6
	addss xmm1, [ebp-0xe8]
	movss [ebp-0xe8], xmm1
	mulss xmm5, xmm5
	addss xmm5, xmm1
	movss [ebp-0xb0], xmm5
	xor edi, edi
	mov esi, [ebp+0x8]
	add esi, 0x10
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax]
dMassTranslate_20:
	lea eax, [edi*4]
	lea edx, [esi+0x4]
	lea ecx, [ebp-0xd8]
	add ecx, eax
	lea ebx, [ebp-0xa8]
	lea eax, [ebx+eax]
	mov ebx, 0x3
dMassTranslate_10:
	movss xmm0, dword [ecx]
	subss xmm0, [eax]
	mulss xmm0, xmm1
	addss xmm0, [edx]
	movss [edx], xmm0
	add edx, 0x4
	add ecx, 0x4
	add eax, 0x4
	sub ebx, 0x1
	jnz dMassTranslate_10
	add edi, 0x4
	add esi, 0x10
	cmp edi, 0xc
	jnz dMassTranslate_20
	mov edx, [ebp+0x8]
	mov eax, [edx+0x18]
	mov [edx+0x24], eax
	mov eax, [edx+0x1c]
	mov [edx+0x34], eax
	mov eax, [edx+0x2c]
	mov [edx+0x38], eax
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	movss xmm0, dword [ebp+0x14]
	addss xmm0, [edx+0xc]
	movss [edx+0xc], xmm0
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of mass:
SECTION .data


;Initialized constant data of mass:
SECTION .rdata


;Zero initialized global or static variables of mass:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_03125000:		dd 0x3d000000	; 0.03125
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_12_00000000:		dd 0x41400000	; 12
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159
_double_4_18879033:		dq 0x4010c152408e1c81	; 4.18879
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_0_08333334:		dd 0x3daaaaab	; 0.0833333
_float_0_40000001:		dd 0x3ecccccd	; 0.4
_float_0_37500000:		dd 0x3ec00000	; 0.375

