;Imports of com_convexhull:
	extern Vec2Normalize
	extern memmove

;Exports of com_convexhull:
	global Com_InitialHull
	global Com_RecursivelyGrowHull
	global Com_GrowInitialHull
	global Com_ConvexHull


SECTION .text


;Com_InitialHull(float const (*) [2], unsigned int*, unsigned int, unsigned int*)
Com_InitialHull:
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
	ja Com_InitialHull_10
	xor ebx, ebx
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp+0x8]
	mov [eax], ebx
	mov edx, [ebp-0x18]
	mov [eax+0x4], edx
	cmp ebx, edx
	jbe Com_InitialHull_20
Com_InitialHull_60:
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
Com_InitialHull_10:
	mov ecx, eax
	add ecx, 0x8
	mov edx, 0x1
	xor ebx, ebx
	mov dword [ebp-0x18], 0x0
	jmp Com_InitialHull_30
Com_InitialHull_50:
	mov [ebp-0x18], edx
	add edx, 0x1
	add ecx, 0x8
	cmp [ebp-0x20], edx
	jz Com_InitialHull_40
Com_InitialHull_30:
	mov [esi+edx*4], edx
	movss xmm1, dword [ecx+0x4]
	mov eax, [ebp-0x18]
	mov edi, [ebp-0x1c]
	ucomiss xmm1, [edi+eax*8+0x4]
	jae Com_InitialHull_50
	movss xmm0, dword [edi+ebx*8+0x4]
	ucomiss xmm0, xmm1
	cmova ebx, edx
	add edx, 0x1
	add ecx, 0x8
	cmp [ebp-0x20], edx
	jnz Com_InitialHull_30
Com_InitialHull_40:
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
	ja Com_InitialHull_60
Com_InitialHull_20:
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
Com_RecursivelyGrowHull:
Com_RecursivelyGrowHull_50:
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
	call Vec2Normalize
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
	js Com_RecursivelyGrowHull_10
	xor ecx, ecx
	movss xmm5, dword [_float_0_00100000]
	mov dword [ebp-0x30], 0xffffffff
	pxor xmm6, xmm6
Com_RecursivelyGrowHull_110:
	movss xmm4, dword [ebp-0x1c]
	mov eax, [ebp-0x38]
	lea edx, [eax+ecx*4]
Com_RecursivelyGrowHull_40:
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
	jae Com_RecursivelyGrowHull_20
	ucomiss xmm1, xmm5
	jbe Com_RecursivelyGrowHull_30
	movaps xmm5, xmm1
	mov [ebp-0x30], ecx
Com_RecursivelyGrowHull_30:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, edi
	jle Com_RecursivelyGrowHull_40
Com_RecursivelyGrowHull_90:
	mov ecx, [ebp-0x30]
	test ecx, ecx
	js Com_RecursivelyGrowHull_10
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
	jz Com_RecursivelyGrowHull_10
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
	call Com_RecursivelyGrowHull_50
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, edi
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x34]
	call Com_RecursivelyGrowHull_50
	mov [ebp+0x14], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_RecursivelyGrowHull_10:
	mov eax, [ebp+0x14]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_RecursivelyGrowHull_20:
	mov eax, [ebp-0x38]
	lea eax, [eax+edi*4]
	mov [ebp-0x4c], eax
	mov ebx, eax
	jmp Com_RecursivelyGrowHull_60
Com_RecursivelyGrowHull_80:
	mov ebx, [ebp-0x4c]
Com_RecursivelyGrowHull_60:
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
	ja Com_RecursivelyGrowHull_70
	sub edi, 0x1
	sub dword [ebp-0x4c], 0x4
	cmp edi, ecx
	jge Com_RecursivelyGrowHull_80
	jmp Com_RecursivelyGrowHull_90
Com_RecursivelyGrowHull_70:
	ucomiss xmm1, xmm5
	ja Com_RecursivelyGrowHull_100
Com_RecursivelyGrowHull_120:
	mov ebx, [ebp-0x3c]
	mov [edx], ebx
	mov eax, [ebp-0x4c]
	mov [eax], esi
	add ecx, 0x1
	sub edi, 0x1
	cmp ecx, edi
	jg Com_RecursivelyGrowHull_90
	movss xmm3, dword [ebp-0x24]
	movss xmm2, dword [ebp-0x20]
	jmp Com_RecursivelyGrowHull_110
Com_RecursivelyGrowHull_100:
	movaps xmm5, xmm1
	mov [ebp-0x30], ecx
	jmp Com_RecursivelyGrowHull_120
	nop


;Com_GrowInitialHull(float const (*) [2], unsigned int*, unsigned int, unsigned int*)
Com_GrowInitialHull:
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
	call Vec2Normalize
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
	js Com_GrowInitialHull_10
	mov dword [ebp-0x3c], 0x0
	movss xmm5, dword [_float_0_00100000]
	mov dword [ebp-0x38], 0xffffffff
	movss xmm7, dword [_float__0_00100000]
	mov dword [ebp-0x34], 0xffffffff
	pxor xmm6, xmm6
Com_GrowInitialHull_180:
	movss xmm4, dword [ebp-0x1c]
	mov eax, [ebp-0x3c]
	mov ecx, [ebp-0x44]
	lea edx, [ecx+eax*4]
Com_GrowInitialHull_40:
	mov ebx, [edx]
	lea eax, [edi+ebx*8]
	movaps xmm1, xmm3
	mulss xmm1, [eax]
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	subss xmm1, xmm4
	ucomiss xmm6, xmm1
	ja Com_GrowInitialHull_20
	ucomiss xmm1, xmm5
	jbe Com_GrowInitialHull_30
	movaps xmm5, xmm1
	mov ecx, [ebp-0x3c]
	mov [ebp-0x38], ecx
Com_GrowInitialHull_30:
	add dword [ebp-0x3c], 0x1
	add edx, 0x4
	cmp [ebp-0x3c], esi
	jle Com_GrowInitialHull_40
Com_GrowInitialHull_170:
	mov eax, [ebp-0x38]
	test eax, eax
	js Com_GrowInitialHull_50
Com_GrowInitialHull_130:
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
	jle Com_GrowInitialHull_60
	mov dword [esp+0xc], 0x3
	mov ebx, [ebp+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x2
	mov ecx, esi
	mov edx, [ebp-0x44]
	mov eax, edi
	call Com_RecursivelyGrowHull
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x1
	mov ecx, esi
	mov edx, [ebp-0x44]
	mov eax, edi
	call Com_RecursivelyGrowHull
	mov [ebp-0x30], eax
Com_GrowInitialHull_140:
	mov ebx, [ebp-0x34]
	test ebx, ebx
	js Com_GrowInitialHull_70
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [ebp-0x5c], eax
	add dword [ebp-0x30], 0x1
Com_GrowInitialHull_80:
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
	jz Com_GrowInitialHull_70
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
	call Com_RecursivelyGrowHull
	mov [esp+0xc], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x0
	mov ecx, ebx
	mov edx, esi
	mov eax, edi
	call Com_RecursivelyGrowHull
	mov [ebp-0x30], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GrowInitialHull_10:
	mov dword [ebp-0x30], 0x0
Com_GrowInitialHull_70:
	mov eax, [ebp-0x30]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_GrowInitialHull_50:
	mov esi, [ebp-0x34]
	test esi, esi
	js Com_GrowInitialHull_10
	mov ecx, [ebp+0x8]
	add ecx, 0x8
	mov [ebp-0x2c], ecx
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x30], 0x3
	jmp Com_GrowInitialHull_80
Com_GrowInitialHull_20:
	ucomiss xmm7, xmm1
	jbe Com_GrowInitialHull_90
	movaps xmm7, xmm1
	mov eax, [ebp-0x3c]
	mov [ebp-0x34], eax
Com_GrowInitialHull_90:
	mov eax, [ebp-0x44]
	lea ecx, [eax+esi*4]
Com_GrowInitialHull_120:
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
	ja Com_GrowInitialHull_100
	ucomiss xmm7, xmm1
	jbe Com_GrowInitialHull_110
	movaps xmm7, xmm1
	mov [ebp-0x34], esi
Com_GrowInitialHull_110:
	sub esi, 0x1
	sub ecx, 0x4
	cmp esi, [ebp-0x3c]
	jge Com_GrowInitialHull_120
	mov eax, [ebp-0x38]
	test eax, eax
	jns Com_GrowInitialHull_130
	jmp Com_GrowInitialHull_50
Com_GrowInitialHull_60:
	mov dword [ebp-0x30], 0x3
	jmp Com_GrowInitialHull_140
Com_GrowInitialHull_100:
	ucomiss xmm1, xmm5
	ja Com_GrowInitialHull_150
Com_GrowInitialHull_190:
	mov eax, [ebp-0x4c]
	mov [edx], eax
	mov [ecx], ebx
	mov edx, [ebp-0x3c]
	cmp [ebp-0x34], edx
	jz Com_GrowInitialHull_160
Com_GrowInitialHull_200:
	add dword [ebp-0x3c], 0x1
	sub esi, 0x1
	cmp [ebp-0x3c], esi
	jg Com_GrowInitialHull_170
	movss xmm3, dword [ebp-0x24]
	movss xmm2, dword [ebp-0x20]
	jmp Com_GrowInitialHull_180
Com_GrowInitialHull_150:
	movaps xmm5, xmm1
	mov eax, [ebp-0x3c]
	mov [ebp-0x38], eax
	jmp Com_GrowInitialHull_190
Com_GrowInitialHull_160:
	mov [ebp-0x34], esi
	jmp Com_GrowInitialHull_200


;Com_ConvexHull(float (*) [2], unsigned int, float (*) [2])
Com_ConvexHull:
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
	jz Com_ConvexHull_10
	xor edx, edx
Com_ConvexHull_20:
	movss xmm0, dword [ebp-0x21c]
	addss xmm0, [eax]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x220]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	add edx, 0x1
	add eax, 0x8
	cmp edi, edx
	jnz Com_ConvexHull_20
	mov eax, [ebp+0x8]
Com_ConvexHull_10:
	lea esi, [ebp-0x118]
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	mov ecx, edi
	mov edx, esi
	call Com_InitialHull
	lea ecx, [edi-0x2]
	mov [esp], ebx
	mov edx, esi
	mov eax, [ebp+0x8]
	call Com_GrowInitialHull
	mov ebx, eax
	test eax, eax
	jz Com_ConvexHull_30
	xor ecx, ecx
	mov edx, [ebp+0x10]
Com_ConvexHull_40:
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
	jnz Com_ConvexHull_40
Com_ConvexHull_30:
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

