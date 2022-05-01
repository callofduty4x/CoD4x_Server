;Imports of com_convexhull:
	extern _Z13Vec2NormalizePf
	extern memmove

;Exports of com_convexhull:
	global _Z15Com_InitialHullPA2_KfPjjS2_
	global _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j
	global _Z19Com_GrowInitialHullPA2_KfPjjS2_
	global _Z14Com_ConvexHullPA2_fjS0_


SECTION .text


;Com_InitialHull(float const (*) [2], unsigned int*, unsigned int, unsigned int*)
_Z15Com_InitialHullPA2_KfPjjS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov [ebp-0x1c], eax
	mov esi, edx
	mov [ebp-0x20], ecx
	mov dword [edx], 0x0
	cmp ecx, 0x1
	ja _Z15Com_InitialHullPA2_KfPjjS2__10
	xor ebx, ebx
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp+0x8]
	mov [eax], ebx
	mov edx, [ebp-0x18]
	mov [eax+0x4], edx
	cmp ebx, edx
	jbe _Z15Com_InitialHullPA2_KfPjjS2__20
_Z15Com_InitialHullPA2_KfPjjS2__60:
	mov edi, [ebp-0x14]
	lea ecx, [esi+edi]
	mov ebx, [ecx]
	mov eax, [ebp-0x20]
	lea edx, [esi+eax*4-0x4]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], ebx
	mov edx, [ebp-0x10]
	lea ecx, [esi+edx]
	mov ebx, [ecx]
	mov edi, [ebp-0x20]
	lea edx, [esi+edi*4-0x8]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], ebx
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Com_InitialHullPA2_KfPjjS2__10:
	mov ecx, eax
	add ecx, 0x8
	mov edx, 0x1
	xor ebx, ebx
	mov dword [ebp-0x18], 0x0
	jmp _Z15Com_InitialHullPA2_KfPjjS2__30
_Z15Com_InitialHullPA2_KfPjjS2__50:
	mov [ebp-0x18], edx
	add edx, 0x1
	add ecx, 0x8
	cmp [ebp-0x20], edx
	jz _Z15Com_InitialHullPA2_KfPjjS2__40
_Z15Com_InitialHullPA2_KfPjjS2__30:
	mov [esi+edx*4], edx
	movss xmm1, dword [ecx+0x4]
	mov eax, [ebp-0x18]
	mov edi, [ebp-0x1c]
	ucomiss xmm1, [edi+eax*8+0x4]
	jae _Z15Com_InitialHullPA2_KfPjjS2__50
	movss xmm0, dword [edi+ebx*8+0x4]
	ucomiss xmm0, xmm1
	cmova ebx, edx
	add edx, 0x1
	add ecx, 0x8
	cmp [ebp-0x20], edx
	jnz _Z15Com_InitialHullPA2_KfPjjS2__30
_Z15Com_InitialHullPA2_KfPjjS2__40:
	lea edx, [ebx*4]
	mov [ebp-0x14], edx
	mov edi, [ebp-0x18]
	shl edi, 0x2
	mov [ebp-0x10], edi
	mov eax, [ebp+0x8]
	mov [eax], ebx
	mov edx, [ebp-0x18]
	mov [eax+0x4], edx
	cmp ebx, edx
	ja _Z15Com_InitialHullPA2_KfPjjS2__60
_Z15Com_InitialHullPA2_KfPjjS2__20:
	mov eax, [ebp-0x10]
	lea ecx, [esi+eax]
	mov ebx, [ecx]
	mov edi, [ebp-0x20]
	lea edx, [esi+edi*4-0x4]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], ebx
	mov eax, [ebp-0x14]
	lea ecx, [esi+eax]
	mov ebx, [ecx]
	lea edx, [esi+edi*4-0x8]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], ebx
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Com_RecursivelyGrowHull(float const (*) [2], unsigned int*, unsigned int, unsigned int, unsigned int, unsigned int*, unsigned int)
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j:
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_50:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x34], eax
	mov [ebp-0x38], edx
	mov esi, ecx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	lea ebx, [edx+eax*4]
	mov edx, [ebx]
	mov ecx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [edi+ecx*4]
	mov ecx, [ebp-0x34]
	movss xmm0, dword [ecx+edx*8+0x4]
	subss xmm0, [ecx+eax*8+0x4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ecx+eax*8]
	subss xmm0, [ecx+edx*8]
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	mov eax, [ebx]
	mov ebx, [ebp-0x34]
	lea eax, [ebx+eax*8]
	movss xmm3, dword [ebp-0x24]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss xmm2, dword [ebp-0x20]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov edi, esi
	sub edi, 0x1
	js _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_10
	xor ecx, ecx
	movss xmm5, dword [_float_0_00100000]
	mov dword [ebp-0x30], 0xffffffff
	pxor xmm6, xmm6
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_110:
	movss xmm4, dword [ebp-0x1c]
	mov eax, [ebp-0x38]
	lea edx, [eax+ecx*4]
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_40:
	mov esi, [edx]
	mov ebx, [ebp-0x34]
	lea eax, [ebx+esi*8]
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	subss xmm1, xmm4
	ucomiss xmm6, xmm1
	jae _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_20
	ucomiss xmm1, xmm5
	jbe _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_30
	movaps xmm5, xmm1
	mov [ebp-0x30], ecx
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_30:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, edi
	jle _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_40
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_90:
	mov ecx, [ebp-0x30]
	test ecx, ecx
	js _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_10
	mov edx, [ebp-0x30]
	mov ebx, [ebp-0x38]
	lea ecx, [ebx+edx*4]
	mov esi, [ecx]
	lea edx, [ebx+edi*4]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], esi
	mov eax, [ebp+0x8]
	add eax, 0x1
	mov [ebp-0x2c], eax
	mov edx, [ebp+0x10]
	lea ebx, [edx+eax*4]
	mov eax, [ebp+0x14]
	sub eax, [ebp-0x2c]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebx+0x4]
	mov [esp], eax
	call memmove
	mov [ebx], esi
	add dword [ebp+0x14], 0x1
	test edi, edi
	jz _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_10
	mov eax, [ebp+0x8]
	add eax, 0x2
	mov edx, [ebp+0xc]
	test edx, edx
	cmovz eax, [ebp+0xc]
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov ebx, [ebp+0x10]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	mov ecx, edi
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x34]
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_50
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, edi
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x34]
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_50
	mov [ebp+0x14], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_10:
	mov eax, [ebp+0x14]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_20:
	mov eax, [ebp-0x38]
	lea eax, [eax+edi*4]
	mov [ebp-0x4c], eax
	mov ebx, eax
	jmp _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_60
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_80:
	mov ebx, [ebp-0x4c]
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_60:
	mov ebx, [ebx]
	mov [ebp-0x3c], ebx
	mov eax, [ebp-0x34]
	lea eax, [eax+ebx*8]
	mov [ebp-0x50], eax
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	subss xmm1, xmm4
	ucomiss xmm1, xmm6
	ja _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_70
	sub edi, 0x1
	sub dword [ebp-0x4c], 0x4
	cmp edi, ecx
	jge _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_80
	jmp _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_90
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_70:
	ucomiss xmm1, xmm5
	ja _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_100
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_120:
	mov ebx, [ebp-0x3c]
	mov [edx], ebx
	mov eax, [ebp-0x4c]
	mov [eax], esi
	add ecx, 0x1
	sub edi, 0x1
	cmp ecx, edi
	jg _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_90
	movss xmm3, dword [ebp-0x24]
	movss xmm2, dword [ebp-0x20]
	jmp _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_110
_Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_100:
	movaps xmm5, xmm1
	mov [ebp-0x30], ecx
	jmp _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j_120
	nop


;Com_GrowInitialHull(float const (*) [2], unsigned int*, unsigned int, unsigned int*)
_Z19Com_GrowInitialHullPA2_KfPjjS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, eax
	mov [ebp-0x44], edx
	mov [ebp-0x48], ecx
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x40], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4]
	mov eax, [ecx]
	movss xmm0, dword [edi+edx*8+0x4]
	subss xmm0, [edi+eax*8+0x4]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+eax*8]
	subss xmm0, [edi+edx*8]
	movss [ebp-0x20], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	lea eax, [edi+eax*8]
	movss xmm3, dword [ebp-0x24]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss xmm2, dword [ebp-0x20]
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movss [ebp-0x1c], xmm0
	mov esi, [ebp-0x48]
	sub esi, 0x1
	js _Z19Com_GrowInitialHullPA2_KfPjjS2__10
	mov dword [ebp-0x3c], 0x0
	movss xmm5, dword [_float_0_00100000]
	mov dword [ebp-0x38], 0xffffffff
	movss xmm7, dword [_float__0_00100000]
	mov dword [ebp-0x34], 0xffffffff
	pxor xmm6, xmm6
_Z19Com_GrowInitialHullPA2_KfPjjS2__180:
	movss xmm4, dword [ebp-0x1c]
	mov eax, [ebp-0x3c]
	mov ecx, [ebp-0x44]
	lea edx, [ecx+eax*4]
_Z19Com_GrowInitialHullPA2_KfPjjS2__40:
	mov ebx, [edx]
	lea eax, [edi+ebx*8]
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	subss xmm1, xmm4
	ucomiss xmm6, xmm1
	ja _Z19Com_GrowInitialHullPA2_KfPjjS2__20
	ucomiss xmm1, xmm5
	jbe _Z19Com_GrowInitialHullPA2_KfPjjS2__30
	movaps xmm5, xmm1
	mov ecx, [ebp-0x3c]
	mov [ebp-0x38], ecx
_Z19Com_GrowInitialHullPA2_KfPjjS2__30:
	add dword [ebp-0x3c], 0x1
	add edx, 0x4
	cmp [ebp-0x3c], esi
	jle _Z19Com_GrowInitialHullPA2_KfPjjS2__40
_Z19Com_GrowInitialHullPA2_KfPjjS2__170:
	mov eax, [ebp-0x38]
	test eax, eax
	js _Z19Com_GrowInitialHullPA2_KfPjjS2__50
_Z19Com_GrowInitialHullPA2_KfPjjS2__130:
	mov ebx, [ebp-0x38]
	mov eax, [ebp-0x44]
	lea ecx, [eax+ebx*4]
	mov ebx, [ecx]
	lea edx, [eax+esi*4]
	mov eax, [edx]
	mov [ecx], eax
	mov [edx], ebx
	mov edx, [ebp+0x8]
	add edx, 0x8
	mov [ebp-0x2c], edx
	mov ecx, [ebp+0x8]
	mov [ecx+0x8], ebx
	test esi, esi
	jle _Z19Com_GrowInitialHullPA2_KfPjjS2__60
	mov dword [esp+0xc], 0x3
	mov ebx, [ebp+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x2
	mov ecx, esi
	mov edx, [ebp-0x44]
	mov eax, edi
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x1
	mov ecx, esi
	mov edx, [ebp-0x44]
	mov eax, edi
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j
	mov [ebp-0x30], eax
_Z19Com_GrowInitialHullPA2_KfPjjS2__140:
	mov ebx, [ebp-0x34]
	test ebx, ebx
	js _Z19Com_GrowInitialHullPA2_KfPjjS2__70
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [ebp-0x5c], eax
	add dword [ebp-0x30], 0x1
_Z19Com_GrowInitialHullPA2_KfPjjS2__80:
	mov ecx, [ebp-0x34]
	mov ebx, [ebp-0x44]
	lea edx, [ebx+ecx*4]
	mov ebx, [edx]
	mov eax, [ebp-0x3c]
	mov ecx, [ebp-0x44]
	lea esi, [ecx+eax*4]
	mov eax, [esi]
	mov [edx], eax
	mov [esi], ebx
	mov eax, [ebp-0x5c]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call memmove
	mov ecx, [ebp-0x40]
	mov [ecx], ebx
	mov eax, [ebp-0x48]
	sub eax, [ebp-0x3c]
	cmp eax, 0x1
	jz _Z19Com_GrowInitialHullPA2_KfPjjS2__70
	lea ebx, [eax-0x1]
	add esi, 0x4
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x1
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j
	mov [esp+0xc], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call _Z23Com_RecursivelyGrowHullPA2_KfPjjjjS2_j
	mov [ebp-0x30], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_GrowInitialHullPA2_KfPjjS2__10:
	mov dword [ebp-0x30], 0x0
_Z19Com_GrowInitialHullPA2_KfPjjS2__70:
	mov eax, [ebp-0x30]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Com_GrowInitialHullPA2_KfPjjS2__50:
	mov esi, [ebp-0x34]
	test esi, esi
	js _Z19Com_GrowInitialHullPA2_KfPjjS2__10
	mov ecx, [ebp+0x8]
	add ecx, 0x8
	mov [ebp-0x2c], ecx
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x30], 0x3
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__80
_Z19Com_GrowInitialHullPA2_KfPjjS2__20:
	ucomiss xmm7, xmm1
	jbe _Z19Com_GrowInitialHullPA2_KfPjjS2__90
	movaps xmm7, xmm1
	mov eax, [ebp-0x3c]
	mov [ebp-0x34], eax
_Z19Com_GrowInitialHullPA2_KfPjjS2__90:
	mov eax, [ebp-0x44]
	lea ecx, [eax+esi*4]
_Z19Com_GrowInitialHullPA2_KfPjjS2__120:
	mov eax, [ecx]
	mov [ebp-0x4c], eax
	lea eax, [edi+eax*8]
	mov [ebp-0x60], eax
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	subss xmm1, xmm4
	ucomiss xmm1, xmm6
	ja _Z19Com_GrowInitialHullPA2_KfPjjS2__100
	ucomiss xmm7, xmm1
	jbe _Z19Com_GrowInitialHullPA2_KfPjjS2__110
	movaps xmm7, xmm1
	mov [ebp-0x34], esi
_Z19Com_GrowInitialHullPA2_KfPjjS2__110:
	sub esi, 0x1
	sub ecx, 0x4
	cmp esi, [ebp-0x3c]
	jge _Z19Com_GrowInitialHullPA2_KfPjjS2__120
	mov eax, [ebp-0x38]
	test eax, eax
	jns _Z19Com_GrowInitialHullPA2_KfPjjS2__130
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__50
_Z19Com_GrowInitialHullPA2_KfPjjS2__60:
	mov dword [ebp-0x30], 0x3
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__140
_Z19Com_GrowInitialHullPA2_KfPjjS2__100:
	ucomiss xmm1, xmm5
	ja _Z19Com_GrowInitialHullPA2_KfPjjS2__150
_Z19Com_GrowInitialHullPA2_KfPjjS2__190:
	mov eax, [ebp-0x4c]
	mov [edx], eax
	mov [ecx], ebx
	mov edx, [ebp-0x3c]
	cmp [ebp-0x34], edx
	jz _Z19Com_GrowInitialHullPA2_KfPjjS2__160
_Z19Com_GrowInitialHullPA2_KfPjjS2__200:
	add dword [ebp-0x3c], 0x1
	sub esi, 0x1
	cmp [ebp-0x3c], esi
	jg _Z19Com_GrowInitialHullPA2_KfPjjS2__170
	movss xmm3, dword [ebp-0x24]
	movss xmm2, dword [ebp-0x20]
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__180
_Z19Com_GrowInitialHullPA2_KfPjjS2__150:
	movaps xmm5, xmm1
	mov eax, [ebp-0x3c]
	mov [ebp-0x38], eax
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__190
_Z19Com_GrowInitialHullPA2_KfPjjS2__160:
	mov [ebp-0x34], esi
	jmp _Z19Com_GrowInitialHullPA2_KfPjjS2__200


;Com_ConvexHull(float (*) [2], unsigned int, float (*) [2])
_Z14Com_ConvexHullPA2_fjS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	movss xmm1, dword [eax]
	movss [ebp-0x21c], xmm1
	xor dword [ebp-0x21c], 0x80000000
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x220], xmm1
	xor dword [ebp-0x220], 0x80000000
	test edi, edi
	jz _Z14Com_ConvexHullPA2_fjS0__10
	xor edx, edx
_Z14Com_ConvexHullPA2_fjS0__20:
	movss xmm0, dword [ebp-0x21c]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x220]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	add edx, 0x1
	add eax, 0x8
	cmp edi, edx
	jnz _Z14Com_ConvexHullPA2_fjS0__20
	mov eax, [ebp+0x8]
_Z14Com_ConvexHullPA2_fjS0__10:
	lea esi, [ebp-0x118]
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	mov ecx, edi
	mov edx, esi
	call _Z15Com_InitialHullPA2_KfPjjS2_
	lea ecx, [edi-0x2]
	mov [esp], ebx
	mov edx, esi
	mov eax, [ebp+0x8]
	call _Z19Com_GrowInitialHullPA2_KfPjjS2_
	mov ebx, eax
	test eax, eax
	jz _Z14Com_ConvexHullPA2_fjS0__30
	xor ecx, ecx
	mov edx, [ebp+0x10]
_Z14Com_ConvexHullPA2_fjS0__40:
	mov eax, [ebp+ecx*4-0x218]
	mov esi, [ebp+0x8]
	lea eax, [esi+eax*8]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0x21c]
	movss [edx], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebp-0x220]
	movss [edx+0x4], xmm0
	add ecx, 0x1
	add edx, 0x8
	cmp ebx, ecx
	jnz _Z14Com_ConvexHullPA2_fjS0__40
_Z14Com_ConvexHullPA2_fjS0__30:
	mov eax, ebx
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of com_convexhull:
SECTION .data


;Initialized constant data of com_convexhull:
SECTION .rdata


;Zero initialized global or static variables of com_convexhull:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float__0_00100000:		dd 0xba83126f	; -0.001

