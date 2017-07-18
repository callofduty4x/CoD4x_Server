;Imports of dobj_skel:
	extern DObjCalcAnim
	extern SL_ConvertToString

;Exports of dobj_skel:
	global CalcSkelRootBonesNoParentOrDuplicate
	global CalcSkelNonRootBones
	global CalcSkelRootBonesWithParent
	global DObjCalcSkel
	global DObjCalcBaseSkel


SECTION .text


;CalcSkelRootBonesNoParentOrDuplicate(XModel const*, DSkel*, int, int*)
CalcSkelRootBonesNoParentOrDuplicate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18
	movzx ebx, byte [eax+0x5]
	add ebx, ecx
	sar ecx, 0x5
	mov [ebp-0x20], ecx
	lea eax, [ebx-0x1]
	sar eax, 0x5
	mov [ebp-0x18], eax
	mov eax, ecx
	shl eax, 0x5
	sub ebx, eax
	mov [ebp-0x1c], ebx
	mov edx, [edx+0x34]
	mov [ebp-0x24], edx
	mov edx, [ebp-0x18]
	cmp ecx, edx
	jg CalcSkelRootBonesNoParentOrDuplicate_10
	mov eax, [ebp+0x8]
	lea eax, [eax+ecx*4]
	mov [ebp-0x10], eax
	movss xmm4, dword [_float_2_00000000]
	mov edx, eax
CalcSkelRootBonesNoParentOrDuplicate_140:
	mov esi, [edx]
	cmp dword [ebp-0x1c], 0x20
	mov ecx, 0x20
	cmovle ecx, [ebp-0x1c]
	mov [ebp-0x14], ecx
CalcSkelRootBonesNoParentOrDuplicate_150:
	test esi, 0xffff0000
	jnz CalcSkelRootBonesNoParentOrDuplicate_20
CalcSkelRootBonesNoParentOrDuplicate_90:
	mov ecx, 0x10
	mov edi, 0x10
	mov edx, esi
	shl edx, cl
	test edx, 0xff000000
	jnz CalcSkelRootBonesNoParentOrDuplicate_30
CalcSkelRootBonesNoParentOrDuplicate_100:
	mov ebx, 0x8
	mov eax, 0x8
	lea edi, [eax+edi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz CalcSkelRootBonesNoParentOrDuplicate_40
CalcSkelRootBonesNoParentOrDuplicate_110:
	mov ebx, 0x4
	mov eax, 0x4
	add edi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz CalcSkelRootBonesNoParentOrDuplicate_50
CalcSkelRootBonesNoParentOrDuplicate_120:
	mov ebx, 0x2
	mov eax, 0x2
	lea eax, [edi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp [ebp-0x14], ecx
	jle CalcSkelRootBonesNoParentOrDuplicate_60
CalcSkelRootBonesNoParentOrDuplicate_130:
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and esi, eax
	mov eax, [ebp-0x10]
	mov [eax], esi
	mov eax, [ebp-0x20]
	shl eax, 0x5
	lea eax, [ecx+eax]
	shl eax, 0x5
	add eax, [ebp-0x24]
	movss xmm3, dword [eax]
	movss xmm0, dword [eax+0x4]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [eax+0xc]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	mulss xmm2, xmm2
	addss xmm3, xmm2
	ucomiss xmm3, [_float_0_00000000]
	jp CalcSkelRootBonesNoParentOrDuplicate_70
	jz CalcSkelRootBonesNoParentOrDuplicate_80
CalcSkelRootBonesNoParentOrDuplicate_70:
	movaps xmm0, xmm4
	divss xmm0, xmm3
	movss [eax+0x1c], xmm0
	test esi, 0xffff0000
	jz CalcSkelRootBonesNoParentOrDuplicate_90
CalcSkelRootBonesNoParentOrDuplicate_20:
	xor ecx, ecx
	xor edi, edi
	mov edx, esi
	shl edx, cl
	test edx, 0xff000000
	jz CalcSkelRootBonesNoParentOrDuplicate_100
CalcSkelRootBonesNoParentOrDuplicate_30:
	xor ebx, ebx
	xor eax, eax
	lea edi, [eax+edi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz CalcSkelRootBonesNoParentOrDuplicate_110
CalcSkelRootBonesNoParentOrDuplicate_40:
	xor ebx, ebx
	xor eax, eax
	add edi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz CalcSkelRootBonesNoParentOrDuplicate_120
CalcSkelRootBonesNoParentOrDuplicate_50:
	xor ebx, ebx
	xor eax, eax
	lea eax, [edi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp [ebp-0x14], ecx
	jg CalcSkelRootBonesNoParentOrDuplicate_130
CalcSkelRootBonesNoParentOrDuplicate_60:
	add dword [ebp-0x20], 0x1
	sub dword [ebp-0x1c], 0x20
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x20]
	cmp [ebp-0x18], edx
	jl CalcSkelRootBonesNoParentOrDuplicate_10
	mov edx, [ebp-0x10]
	jmp CalcSkelRootBonesNoParentOrDuplicate_140
CalcSkelRootBonesNoParentOrDuplicate_80:
	mov dword [eax+0xc], 0x3f800000
	mov dword [eax+0x1c], 0x40000000
	jmp CalcSkelRootBonesNoParentOrDuplicate_150
CalcSkelRootBonesNoParentOrDuplicate_10:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CalcSkelNonRootBones(XModel const*, DSkel*, int, int*, int const*)
CalcSkelNonRootBones:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x68
	mov [ebp-0x48], eax
	mov [ebp-0x4c], ecx
	movzx ecx, byte [eax+0x4]
	add ecx, [ebp-0x4c]
	movzx eax, byte [eax+0x5]
	sub ecx, eax
	mov eax, [ebp-0x4c]
	sar eax, 0x5
	mov [ebp-0x44], eax
	lea ebx, [ecx-0x1]
	sar ebx, 0x5
	mov [ebp-0x38], ebx
	shl eax, 0x5
	sub ecx, eax
	mov [ebp-0x3c], ecx
	mov edi, [edx+0x34]
	cmp [ebp-0x44], ebx
	jg CalcSkelNonRootBones_10
	mov eax, [ebp-0x44]
	shl eax, 0x2
	mov edx, [ebp+0x8]
	add edx, eax
	mov [ebp-0x14], edx
	add eax, [ebp+0xc]
	mov [ebp-0x10], eax
	mov ecx, edx
CalcSkelNonRootBones_150:
	mov ecx, [ecx]
	mov [ebp-0x40], ecx
	cmp dword [ebp-0x3c], 0x20
	mov ebx, 0x20
	cmovle ebx, [ebp-0x3c]
	mov [ebp-0x34], ebx
	jmp CalcSkelNonRootBones_20
CalcSkelNonRootBones_100:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, [ebp-0x40]
	shl edx, cl
	test edx, 0xff000000
	jnz CalcSkelNonRootBones_30
CalcSkelNonRootBones_110:
	mov ebx, 0x8
	mov eax, 0x8
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz CalcSkelNonRootBones_40
CalcSkelNonRootBones_120:
	mov ebx, 0x4
	mov eax, 0x4
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz CalcSkelNonRootBones_50
CalcSkelNonRootBones_130:
	mov ebx, 0x2
	mov eax, 0x2
	lea eax, [esi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	cmp [ebp-0x34], eax
	jle CalcSkelNonRootBones_60
CalcSkelNonRootBones_140:
	mov edx, [ebp-0x44]
	shl edx, 0x5
	lea edx, [eax+edx]
	mov dword [ebp-0x70], 0x80000000
	mov ecx, eax
	shr dword [ebp-0x70], cl
	mov eax, [ebp-0x70]
	not eax
	and [ebp-0x40], eax
	mov eax, [ebp-0x40]
	mov ebx, [ebp-0x14]
	mov [ebx], eax
	mov eax, edx
	shl eax, 0x5
	lea ebx, [edi+eax]
	sub edx, [ebp-0x4c]
	mov ecx, [ebp-0x48]
	mov eax, [ecx+0xc]
	movzx eax, byte [eax+edx]
	shl eax, 0x5
	mov esi, ebx
	sub esi, eax
	mov ecx, [ebp-0x70]
	mov eax, [ebp-0x10]
	test [eax], ecx
	jnz CalcSkelNonRootBones_70
	movss xmm0, dword [ebx]
	movaps xmm7, xmm0
	movss xmm5, dword [esi+0xc]
	movss xmm6, dword [ebx+0xc]
	movss [ebp-0x64], xmm6
	movss xmm2, dword [esi]
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x60], xmm0
	movss xmm3, dword [esi+0x4]
	movss xmm0, dword [ebx+0x4]
	movaps xmm4, xmm0
	movss xmm1, dword [esi+0x8]
	movaps xmm0, xmm5
	mulss xmm0, xmm6
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm4
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movss [ebx+0xc], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x6c], xmm0
	movss [ebx], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm2
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movss [ebx+0x4], xmm0
	mulss xmm5, [ebp-0x60]
	mulss xmm2, xmm4
	addss xmm2, xmm5
	mulss xmm3, xmm7
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm1, xmm6
	addss xmm1, xmm0
	movss [ebp-0x60], xmm1
	movss [ebx+0x8], xmm1
CalcSkelNonRootBones_160:
	movss xmm4, dword [ebp-0x6c]
	mulss xmm4, xmm4
	movss xmm6, dword [ebp-0x5c]
	mulss xmm6, xmm6
	addss xmm4, xmm6
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movss xmm6, dword [ebp-0x64]
	mulss xmm6, xmm6
	addss xmm4, xmm6
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jp CalcSkelNonRootBones_80
	jz CalcSkelNonRootBones_90
CalcSkelNonRootBones_80:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm4
	movss [ebx+0x1c], xmm0
	mov dword [ebp-0x68], 0x3f800000
CalcSkelNonRootBones_170:
	lea edx, [edx+edx*2]
	mov ecx, [ebp-0x48]
	mov eax, [ecx+0x14]
	lea edx, [eax+edx*4]
	lea eax, [ebx+0x10]
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x54], xmm0
	addss xmm0, [edx]
	movss [ebp-0x54], xmm0
	movss [ebx+0x10], xmm0
	movss xmm6, dword [eax+0x4]
	movss [ebp-0x58], xmm6
	addss xmm6, [edx+0x4]
	movss [ebp-0x58], xmm6
	movss [ebx+0x14], xmm6
	movss xmm7, dword [eax+0x8]
	addss xmm7, [edx+0x8]
	movss [ebx+0x18], xmm7
	movss xmm1, dword [esi+0x1c]
	movaps xmm5, xmm1
	mulss xmm5, [esi]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x4]
	movss [ebp-0x18], xmm0
	mulss xmm1, [esi+0x8]
	movaps xmm6, xmm5
	mulss xmm6, [esi]
	movss [ebp-0x28], xmm6
	movss xmm6, dword [esi+0x4]
	movaps xmm4, xmm5
	mulss xmm4, xmm6
	movss xmm2, dword [esi+0x8]
	movaps xmm3, xmm5
	mulss xmm3, xmm2
	movss xmm0, dword [esi+0xc]
	mulss xmm5, xmm0
	mulss xmm6, [ebp-0x18]
	movss [ebp-0x24], xmm6
	movss xmm6, dword [ebp-0x18]
	mulss xmm6, xmm2
	movss [ebp-0x20], xmm6
	movss xmm6, dword [ebp-0x18]
	mulss xmm6, xmm0
	movss [ebp-0x1c], xmm6
	movaps xmm6, xmm1
	mulss xmm6, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x24]
	addss xmm0, xmm6
	movss xmm2, dword [ebp-0x68]
	subss xmm2, xmm0
	mulss xmm2, [ebp-0x54]
	movaps xmm0, xmm4
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x58]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm3
	mulss xmm0, xmm7
	addss xmm2, xmm0
	addss xmm2, [esi+0x10]
	addss xmm4, xmm1
	mulss xmm4, [ebp-0x54]
	addss xmm6, [ebp-0x28]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, xmm6
	mulss xmm0, [ebp-0x58]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x20]
	subss xmm0, xmm5
	mulss xmm0, xmm7
	addss xmm4, xmm0
	addss xmm4, [esi+0x14]
	subss xmm3, [ebp-0x1c]
	mulss xmm3, [ebp-0x54]
	addss xmm5, [ebp-0x20]
	mulss xmm5, [ebp-0x58]
	addss xmm3, xmm5
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp-0x24]
	movss xmm6, dword [ebp-0x68]
	subss xmm6, xmm0
	mulss xmm7, xmm6
	addss xmm3, xmm7
	addss xmm3, [esi+0x18]
	movss [ebx+0x18], xmm3
	movss [ebx+0x10], xmm2
	movss [ebx+0x14], xmm4
CalcSkelNonRootBones_20:
	test dword [ebp-0x40], 0xffff0000
	jz CalcSkelNonRootBones_100
	xor ecx, ecx
	xor esi, esi
	mov edx, [ebp-0x40]
	shl edx, cl
	test edx, 0xff000000
	jz CalcSkelNonRootBones_110
CalcSkelNonRootBones_30:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz CalcSkelNonRootBones_120
CalcSkelNonRootBones_40:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz CalcSkelNonRootBones_130
CalcSkelNonRootBones_50:
	xor ebx, ebx
	xor eax, eax
	lea eax, [esi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	cmp [ebp-0x34], eax
	jg CalcSkelNonRootBones_140
CalcSkelNonRootBones_60:
	add dword [ebp-0x44], 0x1
	sub dword [ebp-0x3c], 0x20
	add dword [ebp-0x14], 0x4
	add dword [ebp-0x10], 0x4
	mov eax, [ebp-0x44]
	cmp [ebp-0x38], eax
	jl CalcSkelNonRootBones_10
	mov ecx, [ebp-0x14]
	jmp CalcSkelNonRootBones_150
CalcSkelNonRootBones_70:
	movss xmm5, dword [esi]
	movss xmm2, dword [edi+0xc]
	movss xmm7, dword [esi+0x8]
	movss xmm4, dword [edi+0x4]
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	movss xmm0, dword [esi+0xc]
	mulss xmm0, [edi]
	subss xmm6, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	subss xmm6, xmm0
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [edi+0x8]
	addss xmm6, xmm0
	movss xmm1, dword [esi+0x4]
	mulss xmm1, xmm2
	movss xmm0, dword [edi]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm0, xmm4
	subss xmm1, xmm0
	movss xmm0, dword [edi+0x8]
	mulss xmm0, xmm5
	subss xmm1, xmm0
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	movss xmm0, dword [edi]
	mulss xmm0, [esi+0x4]
	subss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	addss xmm3, xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm0, [edi+0x8]
	subss xmm3, xmm0
	mulss xmm2, [esi+0xc]
	mulss xmm5, [edi]
	addss xmm2, xmm5
	mulss xmm4, [esi+0x4]
	addss xmm2, xmm4
	mulss xmm7, [edi+0x8]
	addss xmm2, xmm7
	movss xmm0, dword [ebx+0xc]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebx]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebx+0x4]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebx+0x8]
	movss [ebp-0x60], xmm0
	movss xmm7, dword [ebp-0x30]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, xmm6
	subss xmm7, xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm2
	movss [ebp-0x50], xmm0
	movss xmm5, dword [ebp-0x30]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm6
	subss xmm5, xmm0
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movss [ebx+0xc], xmm5
	movss xmm4, dword [ebp-0x30]
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, xmm3
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss [ebx], xmm4
	mulss xmm1, [ebp-0x30]
	mulss xmm3, [ebp-0x2c]
	subss xmm1, xmm3
	mulss xmm2, [ebp-0x5c]
	addss xmm1, xmm2
	mulss xmm6, [ebp-0x60]
	addss xmm1, xmm6
	movss [ebx+0x4], xmm1
	addss xmm7, [ebp-0x50]
	movss [ebp-0x60], xmm7
	movss [ebx+0x8], xmm7
	movss xmm7, dword [edi+0xc]
	movss xmm2, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm6, dword [edi+0x8]
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm6
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x64], xmm0
	movss [ebx+0xc], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x6c]
	movss [ebp-0x6c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x6c], xmm0
	movss [ebx], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm2
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x74]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movss [ebx+0x4], xmm0
	mulss xmm7, [ebp-0x60]
	mulss xmm2, xmm1
	addss xmm2, xmm7
	mulss xmm3, xmm4
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm6, xmm5
	addss xmm6, xmm0
	movss [ebp-0x60], xmm6
	movss [ebx+0x8], xmm6
	jmp CalcSkelNonRootBones_160
CalcSkelNonRootBones_90:
	mov dword [ebp-0x68], 0x3f800000
	movss xmm6, dword [ebp-0x68]
	movss [ebx+0xc], xmm6
	mov dword [ebx+0x1c], 0x40000000
	jmp CalcSkelNonRootBones_170
CalcSkelNonRootBones_10:
	add esp, 0x68
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CalcSkelRootBonesWithParent(XModel const*, DSkel*, unsigned int, unsigned int, int*, int const*)
CalcSkelRootBonesWithParent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x44], edx
	mov ebx, [ebp+0x8]
	movzx edx, byte [eax+0x5]
	add edx, ecx
	shr ecx, 0x5
	mov [ebp-0x3c], ecx
	lea eax, [edx-0x1]
	shr eax, 0x5
	mov [ebp-0x30], eax
	mov eax, ecx
	shl eax, 0x5
	sub edx, eax
	mov [ebp-0x34], edx
	mov edx, [ebp-0x44]
	mov edx, [edx+0x34]
	mov [ebp-0x40], edx
	shl ebx, 0x5
	add ebx, edx
	mov esi, [ebp-0x30]
	cmp ecx, esi
	ja CalcSkelRootBonesWithParent_10
	mov eax, ecx
	shl eax, 0x2
	mov edx, [ebp+0xc]
	add edx, eax
	mov [ebp-0x18], edx
	add eax, [ebp+0x10]
	mov [ebp-0x14], eax
	mov ecx, edx
CalcSkelRootBonesWithParent_150:
	mov ecx, [ecx]
	mov [ebp-0x38], ecx
	cmp dword [ebp-0x34], 0x21
	mov esi, 0x20
	cmovl esi, [ebp-0x34]
	mov [ebp-0x10], esi
	jmp CalcSkelRootBonesWithParent_20
CalcSkelRootBonesWithParent_100:
	mov ecx, 0x10
	mov edi, 0x10
	mov edx, [ebp-0x38]
	shl edx, cl
	test edx, 0xff000000
	jnz CalcSkelRootBonesWithParent_30
CalcSkelRootBonesWithParent_110:
	mov esi, 0x8
	mov eax, 0x8
	lea edi, [eax+edi]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz CalcSkelRootBonesWithParent_40
CalcSkelRootBonesWithParent_120:
	mov esi, 0x4
	mov eax, 0x4
	lea edi, [eax+edi]
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz CalcSkelRootBonesWithParent_50
CalcSkelRootBonesWithParent_130:
	mov esi, 0x2
	mov eax, 0x2
	lea eax, [edi+eax]
	mov ecx, esi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, [ebp-0x10]
	jae CalcSkelRootBonesWithParent_60
CalcSkelRootBonesWithParent_140:
	mov eax, 0x80000000
	shr eax, cl
	mov edx, eax
	not edx
	and [ebp-0x38], edx
	mov edx, [ebp-0x38]
	mov esi, [ebp-0x18]
	mov [esi], edx
	mov edx, [ebp-0x3c]
	shl edx, 0x5
	lea edx, [ecx+edx]
	shl edx, 0x5
	mov ecx, [ebp-0x44]
	add edx, [ecx+0x34]
	mov esi, [ebp-0x14]
	test [esi], eax
	jnz CalcSkelRootBonesWithParent_70
	movss xmm0, dword [edx]
	movaps xmm7, xmm0
	movss xmm5, dword [ebx+0xc]
	movss xmm6, dword [edx+0xc]
	movss [ebp-0x5c], xmm6
	movss xmm2, dword [ebx]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x58], xmm0
	movss xmm3, dword [ebx+0x4]
	movss xmm0, dword [edx+0x4]
	movaps xmm4, xmm0
	movss xmm1, dword [ebx+0x8]
	movaps xmm0, xmm5
	mulss xmm0, xmm6
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm4
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movss [edx+0xc], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x4c], xmm0
	movss [edx], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x54]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss [edx+0x4], xmm0
	mulss xmm5, [ebp-0x58]
	mulss xmm2, xmm4
	addss xmm2, xmm5
	mulss xmm3, xmm7
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm1, xmm6
	addss xmm1, xmm0
	movss [ebp-0x58], xmm1
	movss [edx+0x8], xmm1
CalcSkelRootBonesWithParent_160:
	movss xmm4, dword [ebp-0x4c]
	mulss xmm4, xmm4
	movss xmm6, dword [ebp-0x54]
	mulss xmm6, xmm6
	addss xmm4, xmm6
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movss xmm6, dword [ebp-0x5c]
	mulss xmm6, xmm6
	addss xmm4, xmm6
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jp CalcSkelRootBonesWithParent_80
	jz CalcSkelRootBonesWithParent_90
CalcSkelRootBonesWithParent_80:
	movss xmm0, dword [_float_2_00000000]
	divss xmm0, xmm4
	movss [edx+0x1c], xmm0
	mov dword [ebp-0x50], 0x3f800000
CalcSkelRootBonesWithParent_170:
	movss xmm2, dword [ebx+0x1c]
	movaps xmm5, xmm2
	mulss xmm5, [ebx]
	movaps xmm7, xmm2
	mulss xmm7, [ebx+0x4]
	mulss xmm2, [ebx+0x8]
	movaps xmm0, xmm5
	mulss xmm0, [ebx]
	movss [ebp-0x24], xmm0
	movss xmm6, dword [ebx+0x4]
	movaps xmm4, xmm5
	mulss xmm4, xmm6
	movss xmm1, dword [ebx+0x8]
	movaps xmm3, xmm5
	mulss xmm3, xmm1
	movss xmm0, dword [ebx+0xc]
	mulss xmm5, xmm0
	mulss xmm6, xmm7
	movss [ebp-0x20], xmm6
	movaps xmm6, xmm7
	mulss xmm6, xmm1
	movss [ebp-0x1c], xmm6
	mulss xmm7, xmm0
	movaps xmm6, xmm2
	mulss xmm6, xmm1
	mulss xmm2, xmm0
	movss xmm0, dword [ebp-0x20]
	addss xmm0, xmm6
	movss xmm1, dword [ebp-0x50]
	subss xmm1, xmm0
	mulss xmm1, [edx+0x10]
	movaps xmm0, xmm4
	subss xmm0, xmm2
	mulss xmm0, [edx+0x14]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm7
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	addss xmm1, [ebx+0x10]
	addss xmm4, xmm2
	mulss xmm4, [edx+0x10]
	addss xmm6, [ebp-0x24]
	movss xmm0, dword [ebp-0x50]
	subss xmm0, xmm6
	mulss xmm0, [edx+0x14]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, xmm5
	mulss xmm0, [edx+0x18]
	addss xmm4, xmm0
	addss xmm4, [ebx+0x14]
	subss xmm3, xmm7
	mulss xmm3, [edx+0x10]
	addss xmm5, [ebp-0x1c]
	mulss xmm5, [edx+0x14]
	addss xmm3, xmm5
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ebp-0x20]
	movss xmm6, dword [ebp-0x50]
	subss xmm6, xmm0
	movss [ebp-0x50], xmm6
	mulss xmm6, [edx+0x18]
	addss xmm3, xmm6
	addss xmm3, [ebx+0x18]
	movss [edx+0x18], xmm3
	movss [edx+0x10], xmm1
	movss [edx+0x14], xmm4
CalcSkelRootBonesWithParent_20:
	test dword [ebp-0x38], 0xffff0000
	jz CalcSkelRootBonesWithParent_100
	xor ecx, ecx
	xor edi, edi
	mov edx, [ebp-0x38]
	shl edx, cl
	test edx, 0xff000000
	jz CalcSkelRootBonesWithParent_110
CalcSkelRootBonesWithParent_30:
	xor esi, esi
	xor eax, eax
	lea edi, [eax+edi]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jz CalcSkelRootBonesWithParent_120
CalcSkelRootBonesWithParent_40:
	xor esi, esi
	xor eax, eax
	lea edi, [eax+edi]
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jz CalcSkelRootBonesWithParent_130
CalcSkelRootBonesWithParent_50:
	xor esi, esi
	xor eax, eax
	lea eax, [edi+eax]
	mov ecx, esi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, [ebp-0x10]
	jb CalcSkelRootBonesWithParent_140
CalcSkelRootBonesWithParent_60:
	add dword [ebp-0x3c], 0x1
	sub dword [ebp-0x34], 0x20
	add dword [ebp-0x18], 0x4
	add dword [ebp-0x14], 0x4
	mov eax, [ebp-0x3c]
	cmp [ebp-0x30], eax
	jb CalcSkelRootBonesWithParent_10
	mov ecx, [ebp-0x18]
	jmp CalcSkelRootBonesWithParent_150
CalcSkelRootBonesWithParent_70:
	movss xmm5, dword [ebx]
	mov eax, [ebp-0x40]
	movss xmm2, dword [eax+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x64], xmm0
	movss xmm7, dword [ebx+0x8]
	movss xmm4, dword [eax+0x4]
	movss xmm6, dword [eax+0x8]
	movss [ebp-0x60], xmm6
	movaps xmm6, xmm5
	mulss xmm6, xmm2
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, [ebp-0x64]
	subss xmm6, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm4
	subss xmm6, xmm0
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [ebp-0x60]
	addss xmm6, xmm0
	movss xmm1, dword [ebx+0x4]
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, xmm4
	subss xmm1, xmm0
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm5
	subss xmm1, xmm0
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, [ebx+0x4]
	subss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	addss xmm3, xmm0
	movss xmm0, dword [ebx+0xc]
	mulss xmm0, [ebp-0x60]
	subss xmm3, xmm0
	mulss xmm2, [ebx+0xc]
	mulss xmm5, [ebp-0x64]
	addss xmm2, xmm5
	mulss xmm4, [ebx+0x4]
	addss xmm2, xmm4
	mulss xmm7, [ebp-0x60]
	addss xmm2, xmm7
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edx]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x58], xmm0
	movss xmm7, dword [ebp-0x2c]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm6
	subss xmm7, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm2
	movss [ebp-0x48], xmm0
	movss xmm5, dword [ebp-0x2c]
	mulss xmm5, xmm2
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm6
	subss xmm5, xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm1
	subss xmm5, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movss [edx+0xc], xmm5
	movss xmm4, dword [ebp-0x2c]
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm3
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm1
	subss xmm4, xmm0
	movss [edx], xmm4
	mulss xmm1, [ebp-0x2c]
	mulss xmm3, [ebp-0x28]
	subss xmm1, xmm3
	mulss xmm2, [ebp-0x54]
	addss xmm1, xmm2
	mulss xmm6, [ebp-0x58]
	addss xmm1, xmm6
	movss [edx+0x4], xmm1
	addss xmm7, [ebp-0x48]
	movss [ebp-0x58], xmm7
	movss [edx+0x8], xmm7
	movss xmm7, dword [eax+0xc]
	movss xmm2, dword [eax]
	movss xmm3, dword [eax+0x4]
	movss xmm6, dword [eax+0x8]
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm6
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x5c], xmm0
	movss [edx+0xc], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm7
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x4c], xmm0
	movss [edx], xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm2
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x54]
	subss xmm0, [ebp-0x68]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm3
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm6
	addss xmm0, [ebp-0x54]
	movss [ebp-0x54], xmm0
	movss [edx+0x4], xmm0
	mulss xmm7, [ebp-0x58]
	mulss xmm2, xmm1
	addss xmm2, xmm7
	mulss xmm3, xmm4
	movaps xmm0, xmm2
	subss xmm0, xmm3
	mulss xmm6, xmm5
	addss xmm6, xmm0
	movss [ebp-0x58], xmm6
	movss [edx+0x8], xmm6
	jmp CalcSkelRootBonesWithParent_160
CalcSkelRootBonesWithParent_90:
	mov dword [ebp-0x50], 0x3f800000
	movss xmm6, dword [ebp-0x50]
	movss [edx+0xc], xmm6
	mov dword [edx+0x1c], 0x40000000
	jmp CalcSkelRootBonesWithParent_170
CalcSkelRootBonesWithParent_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DObjCalcSkel(DObj_s const*, int*)
DObjCalcSkel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x14
	mov [ebp-0x4c], eax
	mov edx, eax
	mov ebx, 0x1
	mov ecx, 0x1
DObjCalcSkel_10:
	mov eax, [esi+ecx*4-0x4]
	not eax
	or eax, [edx+0x20]
	mov [ebp+ecx*4-0x3c], eax
	add eax, 0x1
	mov eax, 0x0
	cmovnz ebx, eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz DObjCalcSkel_10
	test bl, bl
	jz DObjCalcSkel_20
DObjCalcSkel_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjCalcSkel_20:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call DObjCalcAnim
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov edi, eax
	lea eax, [eax+0x10]
	mov [ebp-0x6c], eax
	mov ecx, [ebp-0x4c]
	mov ebx, 0x1
DObjCalcSkel_30:
	lea edx, [ebx*4]
	mov eax, [ecx+0x20]
	or eax, [esi+edx-0x4]
	mov [ecx+0x20], eax
	mov eax, [ecx+0x10]
	mov [ebp+edx-0x4c], eax
	mov eax, [ebp+edx-0x3c]
	or eax, [edi+edx-0x4]
	not eax
	mov [ebp+edx-0x2c], eax
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x5
	jnz DObjCalcSkel_30
	mov edx, [ebp+0x8]
	movzx edx, byte [edx+0x9]
	mov [ebp-0x68], edx
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0x60]
	mov [ebp-0x54], ecx
	lea eax, [ecx+edx*4]
	mov [ebp-0x50], eax
	test edx, edx
	jle DObjCalcSkel_40
	mov esi, [ebp-0x6c]
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x60], 0x0
	jmp DObjCalcSkel_50
DObjCalcSkel_70:
	cmp byte [ebp-0x6d], 0xff
	jz DObjCalcSkel_60
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x58]
	mov [esp], ecx
	mov ecx, [ebp-0x64]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x5c]
	call CalcSkelRootBonesWithParent
DObjCalcSkel_90:
	mov eax, [ebp-0x5c]
	movzx ecx, byte [eax+0x5]
	add ecx, [ebp-0x64]
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x5c]
	call CalcSkelNonRootBones
	add dword [ebp-0x60], 0x1
	mov edx, [ebp-0x5c]
	movzx eax, byte [edx+0x4]
	add [ebp-0x64], eax
	mov ecx, [ebp-0x60]
	cmp [ebp-0x68], ecx
	jz DObjCalcSkel_40
DObjCalcSkel_50:
	mov edx, [ebp-0x60]
	mov ecx, [ebp-0x54]
	mov edx, [ecx+edx*4]
	mov [ebp-0x5c], edx
	mov ecx, [ebp-0x60]
	mov eax, [ebp-0x50]
	movzx ecx, byte [ecx+eax]
	mov [ebp-0x6d], cl
	movzx edx, cl
	mov [ebp-0x58], edx
	mov ecx, [ebp-0x4c]
	mov ebx, [ecx+0x34]
	movzx eax, byte [esi]
	lea edx, [eax-0x1]
	mov ecx, [ebp-0x5c]
	movzx eax, byte [ecx+0x4]
	mov edi, [ebp-0x64]
	add edi, eax
	cmp edi, edx
	jbe DObjCalcSkel_70
DObjCalcSkel_80:
	mov ecx, edx
	shl ecx, 0x5
	movzx eax, byte [esi+0x1]
	sub eax, 0x1
	shl eax, 0x5
	mov edx, [eax+ebx]
	mov [ecx+ebx], edx
	mov edx, [eax+ebx+0x4]
	mov [ecx+ebx+0x4], edx
	mov edx, [eax+ebx+0x8]
	mov [ecx+ebx+0x8], edx
	mov edx, [eax+ebx+0xc]
	mov [ecx+ebx+0xc], edx
	mov edx, [eax+ebx+0x10]
	mov [ecx+ebx+0x10], edx
	mov edx, [eax+ebx+0x14]
	mov [ecx+ebx+0x14], edx
	mov edx, [eax+ebx+0x18]
	mov [ecx+ebx+0x18], edx
	mov eax, [eax+ebx+0x1c]
	mov [ecx+ebx+0x1c], eax
	add esi, 0x2
	movzx eax, byte [esi]
	lea edx, [eax-0x1]
	cmp edx, edi
	jb DObjCalcSkel_80
	jmp DObjCalcSkel_70
DObjCalcSkel_60:
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov ecx, [ebp-0x64]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x5c]
	call CalcSkelRootBonesNoParentOrDuplicate
	jmp DObjCalcSkel_90


;DObjCalcBaseSkel(DObj_s const*, DObjAnimMat*, int*)
DObjCalcBaseSkel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, [ebp+0xc]
	mov [ebp-0x4c], ebx
	mov dword [ebp-0x50], 0x0
	mov ecx, 0x1
	mov edx, 0x4
DObjCalcBaseSkel_10:
	mov esi, [ebp+0x10]
	mov eax, [edx+esi-0x4]
	mov [edx+ebp-0x64], eax
	mov [edx+ebp-0x84], eax
	mov dword [edx+ebp-0x74], 0x0
	mov eax, [edx+esi-0x4]
	not eax
	mov [edx+ebp-0x2c], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz DObjCalcBaseSkel_10
	mov eax, [ebp+0x8]
	cmp byte [eax+0x9], 0x0
	jnz DObjCalcBaseSkel_20
	mov ecx, eax
DObjCalcBaseSkel_180:
	movzx eax, word [ecx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov ebx, eax
	lea esi, [eax+0x10]
	mov ecx, 0x1
DObjCalcBaseSkel_30:
	lea edx, [ecx*4]
	mov dword [ebp+edx-0x4c], 0x0
	mov eax, [ebp+edx-0x2c]
	or eax, [ebx+ecx*4-0x4]
	not eax
	mov [ebp+edx-0x3c], eax
	add ecx, 0x1
	cmp ecx, 0x5
	jnz DObjCalcBaseSkel_30
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x9]
	mov [ebp-0xb0], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x60]
	mov [ebp-0x9c], edx
	lea ecx, [edx+eax*4]
	mov [ebp-0x98], ecx
	test eax, eax
	jle DObjCalcBaseSkel_40
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	jmp DObjCalcBaseSkel_50
DObjCalcBaseSkel_70:
	cmp byte [ebp-0xb1], 0xff
	jz DObjCalcBaseSkel_60
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov ecx, [ebp-0xa0]
	mov [esp], ecx
	mov ecx, [ebp-0xac]
	lea edx, [ebp-0x80]
	mov eax, [ebp-0xa4]
	call CalcSkelRootBonesWithParent
DObjCalcBaseSkel_90:
	mov eax, [ebp-0xa4]
	movzx ecx, byte [eax+0x5]
	add ecx, [ebp-0xac]
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	lea eax, [ebp-0x38]
	mov [esp], eax
	lea edx, [ebp-0x80]
	mov eax, [ebp-0xa4]
	call CalcSkelNonRootBones
	add dword [ebp-0xa8], 0x1
	mov edx, [ebp-0xa4]
	movzx eax, byte [edx+0x4]
	add [ebp-0xac], eax
	mov ecx, [ebp-0xa8]
	cmp [ebp-0xb0], ecx
	jz DObjCalcBaseSkel_40
DObjCalcBaseSkel_50:
	mov eax, [ebp-0xa8]
	mov edx, [ebp-0x9c]
	mov eax, [edx+eax*4]
	mov [ebp-0xa4], eax
	mov edx, [ebp-0x98]
	mov ecx, [ebp-0xa8]
	movzx edx, byte [edx+ecx]
	mov [ebp-0xb1], dl
	movzx eax, dl
	mov [ebp-0xa0], eax
	mov ebx, [ebp-0x4c]
	movzx eax, byte [esi]
	lea edx, [eax-0x1]
	mov ecx, [ebp-0xa4]
	movzx eax, byte [ecx+0x4]
	mov edi, [ebp-0xac]
	add edi, eax
	cmp edx, edi
	jae DObjCalcBaseSkel_70
DObjCalcBaseSkel_80:
	mov ecx, edx
	shl ecx, 0x5
	movzx eax, byte [esi+0x1]
	sub eax, 0x1
	shl eax, 0x5
	mov edx, [eax+ebx]
	mov [ecx+ebx], edx
	mov edx, [eax+ebx+0x4]
	mov [ecx+ebx+0x4], edx
	mov edx, [eax+ebx+0x8]
	mov [ecx+ebx+0x8], edx
	mov edx, [eax+ebx+0xc]
	mov [ecx+ebx+0xc], edx
	mov edx, [eax+ebx+0x10]
	mov [ecx+ebx+0x10], edx
	mov edx, [eax+ebx+0x14]
	mov [ecx+ebx+0x14], edx
	mov edx, [eax+ebx+0x18]
	mov [ecx+ebx+0x18], edx
	mov eax, [eax+ebx+0x1c]
	mov [ecx+ebx+0x1c], eax
	add esi, 0x2
	movzx eax, byte [esi]
	lea edx, [eax-0x1]
	cmp edx, edi
	jb DObjCalcBaseSkel_80
	jmp DObjCalcBaseSkel_70
DObjCalcBaseSkel_60:
	lea eax, [ebp-0x38]
	mov [esp], eax
	mov ecx, [ebp-0xac]
	lea edx, [ebp-0x80]
	mov eax, [ebp-0xa4]
	call CalcSkelRootBonesNoParentOrDuplicate
	jmp DObjCalcBaseSkel_90
DObjCalcBaseSkel_40:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
DObjCalcBaseSkel_20:
	xor edx, edx
	mov dword [ebp-0x94], 0x0
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x60]
	mov esi, [ebp-0x94]
	mov edi, [eax+esi*4]
	movzx eax, byte [edi+0x5]
	movzx ecx, al
	test al, al
	jnz DObjCalcBaseSkel_100
DObjCalcBaseSkel_150:
	mov esi, edx
DObjCalcBaseSkel_170:
	mov ecx, [edi+0x10]
	movzx edx, byte [edi+0x4]
	movzx eax, byte [edi+0x5]
	sub edx, eax
	mov [ebp-0x8c], edx
	jz DObjCalcBaseSkel_110
	mov dword [ebp-0x90], 0x0
	movss xmm1, dword [_float_0_00003052]
	mov edi, ecx
DObjCalcBaseSkel_130:
	mov eax, esi
	sar eax, 0x5
	mov ecx, esi
	and ecx, 0x1f
	mov edx, 0x80000000
	shr edx, cl
	mov ecx, [ebp+0x10]
	test [ecx+eax*4], edx
	jz DObjCalcBaseSkel_120
	movsx eax, word [edi]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx], xmm0
	movsx eax, word [edi+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movsx eax, word [edi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movsx eax, word [edi+0x6]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebx+0xc], xmm0
	lea eax, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
DObjCalcBaseSkel_120:
	add ebx, 0x20
	add esi, 0x1
	add dword [ebp-0x90], 0x1
	add edi, 0x8
	mov eax, [ebp-0x90]
	cmp [ebp-0x8c], eax
	jnz DObjCalcBaseSkel_130
DObjCalcBaseSkel_110:
	add dword [ebp-0x94], 0x1
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x9]
	cmp [ebp-0x94], eax
	jge DObjCalcBaseSkel_140
	mov edx, esi
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x60]
	mov esi, [ebp-0x94]
	mov edi, [eax+esi*4]
	movzx eax, byte [edi+0x5]
	movzx ecx, al
	test al, al
	jz DObjCalcBaseSkel_150
DObjCalcBaseSkel_100:
	mov esi, edx
	lea edx, [edx+ecx]
DObjCalcBaseSkel_160:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x3f800000
	lea eax, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	add ebx, 0x20
	add esi, 0x1
	cmp esi, edx
	jnz DObjCalcBaseSkel_160
	jmp DObjCalcBaseSkel_170
DObjCalcBaseSkel_140:
	mov ecx, edx
	jmp DObjCalcBaseSkel_180
	nop


;Zero initialized global or static variables of dobj_skel:
SECTION .bss


;Initialized global or static variables of dobj_skel:
SECTION .data


;Initialized constant data of dobj_skel:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_2_00000000:		dd 0x40000000	; 2
_float_0_00000000:		dd 0x0	; 0
_float_0_00003052:		dd 0x38000100	; 3.05185e-05

