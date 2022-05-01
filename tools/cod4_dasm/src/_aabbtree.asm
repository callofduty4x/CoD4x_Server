;Imports of aabbtree:
	extern ClearBounds
	extern ceilf
	extern qsort
	extern floorf
	extern _Z12ExpandBoundsPKfS0_PfS1_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Znam
	extern memcpy
	extern _ZdaPv

;Exports of aabbtree:
	global aabbTreeCount
	global sortedCoplanar
	global sortedMaxs
	global sortedMins
	global _Z14compare_floatsPKvS0_
	global _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2_
	global _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii
	global _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi
	global _Z13BuildAabbTreePK22GenericAabbTreeOptions


SECTION .text


;compare_floats(void const*, void const*)
_Z14compare_floatsPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	mov eax, [ebp+0xc]
	subss xmm0, [eax]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z14compare_floatsPKvS0__10
_Z14compare_floatsPKvS0__20:
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	pop ebp
	ret
_Z14compare_floatsPKvS0__10:
	jp _Z14compare_floatsPKvS0__20
	mov eax, 0xffffffff
	pop ebp
	ret
	nop


;SplitAabbTree(int, GenericAabbTreeOptions const*, int*, int*, int*)
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov [ebp-0xd4], eax
	mov [ebp-0xd8], edx
	mov [ebp-0xdc], ecx
	mov eax, [edx+0x10]
	mov [ebp-0xc8], eax
	mov edx, [edx+0x14]
	mov [ebp-0xc4], edx
	lea ecx, [ebp-0x3c]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call ClearBounds
	mov eax, [ebp-0xd4]
	test eax, eax
	jg _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__10
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__510:
	movss xmm1, dword [ebp-0x38]
	subss xmm1, [ebp-0x20]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [ebp-0x24]
	xor edx, edx
	ucomiss xmm0, xmm1
	seta dl
	movss xmm1, dword [ebp-0x34]
	subss xmm1, [ebp-0x1c]
	movss xmm0, dword [ebp+edx*4-0x3c]
	subss xmm0, [ebp+edx*4-0x24]
	mov eax, 0x2
	ucomiss xmm0, xmm1
	cmovbe eax, edx
	movss xmm1, dword [ebp+eax*4-0x3c]
	subss xmm1, [ebp+eax*4-0x24]
	addss xmm1, [_float_1_00000000]
	mov esi, 0x1
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__20:
	lea ebx, [esi*4]
	movss xmm0, dword [ebp+ebx-0x40]
	subss xmm0, [ebp+ebx-0x28]
	addss xmm0, [_float_1_00000000]
	mulss xmm0, [_float_10_00000000]
	divss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x108], xmm1
	call ceilf
	fstp dword [ebp-0xe0]
	cvttss2si eax, [ebp-0xe0]
	mov [ebp+ebx-0x34], eax
	add esi, 0x1
	cmp esi, 0x4
	movss xmm1, dword [ebp-0x108]
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__20
	mov dword [ebp-0x80], 0x80000000
	mov dword [ebp-0x88], 0x0
	mov ecx, [sortedMins]
	mov [ebp-0xf4], ecx
	mov dword [ebp-0xf8], 0x0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__280:
	mov eax, [ebp-0xd4]
	test eax, eax
	jg _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__30
	mov dword [ebp-0xbc], 0x0
	mov dword [ebp-0xb8], 0x0
	xor ebx, ebx
	xor esi, esi
	mov eax, [ebp-0xf4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__440:
	mov dword [esp+0xc], _Z14compare_floatsPKvS0_
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov [esp], eax
	call qsort
	mov dword [esp+0xc], _Z14compare_floatsPKvS0_
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov eax, [sortedMaxs]
	mov [esp], eax
	call qsort
	mov dword [esp+0xc], _Z14compare_floatsPKvS0_
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov eax, [sortedCoplanar]
	mov [esp], eax
	call qsort
	mov edx, [sortedCoplanar]
	mov [ebp-0x94], edx
	movss xmm3, dword [edx]
	mov ecx, [sortedMins]
	mov [ebp-0xf4], ecx
	movss xmm2, dword [ecx]
	movaps xmm1, xmm3
	subss xmm1, xmm2
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x6
	movaps xmm1, xmm3
	andps xmm1, xmm0
	movaps xmm3, xmm0
	andnps xmm3, xmm2
	orps xmm3, xmm1
	movss xmm2, dword [_float_3402823466385288598117041]
	ucomiss xmm2, xmm3
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__40
	mov ebx, [sortedMaxs]
	mov [ebp-0xc0], ebx
	mov esi, [ebp-0xd4]
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0xa0], 0x0
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0xb4], 0x0
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xa8], 0x0
	xor edi, edi
	mov eax, [ebp-0xa8]
	add [ebp-0xa0], eax
	sub esi, eax
	mov edx, [ebp-0xbc]
	cmp [ebp-0xb4], edx
	jl _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__50
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__210:
	movaps xmm1, xmm2
	mov dword [ebp-0xa8], 0x0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__460:
	mov eax, [ebp-0xbc]
	cmp [ebp-0xb0], eax
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__60
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__240:
	mov ecx, [ebp-0xb0]
	mov ebx, [ebp-0xc0]
	lea eax, [ebx+ecx*4]
	ucomiss xmm3, [eax]
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__70
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__80
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__70:
	mov edx, [ebp-0xa4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__380:
	movss xmm0, dword [eax]
	minss xmm0, xmm1
	movaps xmm1, xmm0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__450:
	lea edx, [edi+edx]
	mov [ebp-0xa4], edx
	mov ebx, [ebp-0x9c]
	sub ebx, edi
	mov edx, [ebp-0xb8]
	cmp [ebp-0xac], edx
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__90
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__250:
	mov ecx, [ebp-0xac]
	mov edi, [ebp-0x94]
	ucomiss xmm3, [edi+ecx*4]
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__90
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__90
	mov ecx, [ebp-0xac]
	mov edi, [ebp-0x94]
	lea eax, [edi+ecx*4]
	xor edx, edx
	mov edi, ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__100
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__130:
	mov edi, [ebp-0xac]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__100:
	add edx, 0x1
	lea ecx, [edx+edi]
	mov edi, [ebp-0xb8]
	sub edi, [ebp-0xac]
	cmp edi, edx
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__110
	movss xmm0, dword [eax+0x4]
	add eax, 0x4
	ucomiss xmm3, xmm0
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__120
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__130
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__120:
	mov [ebp-0xac], ecx
	mov edi, edx
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__260:
	lea ebx, [edi+ebx]
	mov [ebp-0x9c], ebx
	sub esi, edi
	mov eax, [ebp-0xb8]
	cmp [ebp-0xac], eax
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__140
	mov edx, [ebp-0xac]
	mov ecx, [ebp-0x94]
	movss xmm0, dword [ecx+edx*4]
	minss xmm0, xmm1
	movaps xmm1, xmm0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__140:
	cmp dword [ebp-0xa4], 0x1
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__150
	cmp esi, 0x1
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__150
	mov eax, [ebp-0xa4]
	sub eax, esi
	js _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__160
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__390:
	mov ebx, [ebp-0xd4]
	sub ebx, eax
	sub ebx, [ebp-0x9c]
	mov eax, [ebp-0xa0]
	shl eax, 0x2
	sub ebx, eax
	mov eax, [ebp-0xf8]
	add ebx, [eax+ebp-0x30]
	mov eax, [ebp-0x9c]
	test eax, eax
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__170
	mov eax, [ebp-0xa0]
	test eax, eax
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__170
	mov eax, [ebp-0xa8]
	test eax, eax
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__180
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__170:
	cmp ebx, [ebp-0x80]
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__150
	mov ecx, [ebp-0x9c]
	test ecx, ecx
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__190
	mov edx, [ebp-0xa0]
	test edx, edx
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__190
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__190
	addss xmm3, xmm1
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0xcc], xmm0
	mov eax, [ebp-0x88]
	mov [ebp-0xd0], eax
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__300:
	ucomiss xmm2, xmm1
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__200
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__270:
	movaps xmm3, xmm1
	mov [ebp-0x80], ebx
	mov eax, [ebp-0xa8]
	add [ebp-0xa0], eax
	sub esi, eax
	mov edx, [ebp-0xbc]
	cmp [ebp-0xb4], edx
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__210
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__50:
	mov ecx, [ebp-0xb4]
	mov ebx, [ebp-0xf4]
	lea eax, [ebx+ecx*4]
	ucomiss xmm3, [eax]
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__220
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__230
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__220:
	mov dword [ebp-0xa8], 0x0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__340:
	movss xmm1, dword [eax]
	minss xmm1, xmm2
	mov eax, [ebp-0xbc]
	cmp [ebp-0xb0], eax
	jl _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__240
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__60:
	mov edx, [ebp-0xa4]
	lea edx, [edi+edx]
	mov [ebp-0xa4], edx
	mov ebx, [ebp-0x9c]
	sub ebx, edi
	mov edx, [ebp-0xb8]
	cmp [ebp-0xac], edx
	jl _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__250
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__90:
	xor edi, edi
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__260
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__150:
	mov ebx, [ebp-0x80]
	ucomiss xmm2, xmm1
	ja _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__270
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__200:
	mov [ebp-0x80], ebx
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__40:
	add dword [ebp-0x88], 0x1
	add dword [ebp-0xf8], 0x4
	cmp dword [ebp-0x88], 0x3
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__280
	cmp dword [ebp-0x80], 0x80000000
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__290
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__470:
	xor eax, eax
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__190:
	mov edx, [ebp-0x88]
	mov [ebp-0xd0], edx
	movss [ebp-0xcc], xmm3
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__300
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__230:
	mov eax, ecx
	lea ecx, [ebx+ecx*4+0x4]
	mov edx, eax
	mov dword [ebp-0xa8], 0x0
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__330:
	add dword [ebp-0xa8], 0x1
	add edx, 0x1
	mov eax, [ebp-0xbc]
	sub eax, [ebp-0xb4]
	cmp [ebp-0xa8], eax
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__310
	mov eax, ecx
	lea ecx, [ecx+0x4]
	ucomiss xmm3, [eax]
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__320
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__330
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__320:
	mov [ebp-0xb4], edx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__340
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__80:
	lea ebx, [ebx+ecx*4+0x4]
	mov edx, [ebp-0xa4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__370:
	add edx, 0x1
	sub dword [ebp-0xa0], 0x1
	add ecx, 0x1
	mov eax, [ebp-0xbc]
	sub eax, [ebp-0xb0]
	add eax, [ebp-0xa4]
	cmp eax, edx
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__350
	mov eax, ebx
	lea ebx, [ebx+0x4]
	ucomiss xmm3, [eax]
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__360
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__370
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__360:
	mov [ebp-0xb0], ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__380
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__160:
	neg eax
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__390
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__30:
	mov ebx, [sortedMaxs]
	mov [ebp-0x8c], ebx
	mov esi, [sortedCoplanar]
	mov [ebp-0x90], esi
	xor ebx, ebx
	mov dword [ebp-0xbc], 0x0
	mov dword [ebp-0xb8], 0x0
	mov edi, [ebp-0xf8]
	add edi, [ebp-0xc8]
	mov eax, [ebp-0xf8]
	add eax, [ebp-0xc4]
	mov [ebp-0x130], eax
	mov ecx, [ebp-0xdc]
	mov edx, eax
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__400
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__420:
	mov eax, [ebp-0xbc]
	shl eax, 0x2
	mov edx, [ebp-0xf4]
	movss [eax+edx], xmm0
	mov edx, [ecx]
	lea edx, [edx+edx*2]
	mov esi, [ebp-0xf8]
	lea edx, [esi+edx*4]
	mov esi, [ebp-0xc4]
	mov edx, [edx+esi]
	mov esi, [ebp-0x8c]
	mov [eax+esi], edx
	add dword [ebp-0xbc], 0x1
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0xd4], ebx
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__410
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__430:
	mov edx, [ebp-0x130]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__400:
	mov eax, [ecx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	movss xmm0, dword [edi+eax]
	ucomiss xmm0, [edx+eax]
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__420
	jp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__420
	mov esi, [ebp-0xb8]
	mov eax, [ebp-0x90]
	movss [eax+esi*4], xmm0
	add esi, 0x1
	mov [ebp-0xb8], esi
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0xd4], ebx
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__430
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__410:
	mov ebx, [ebp-0xbc]
	mov esi, [ebp-0xb8]
	mov edi, [sortedMins]
	mov [ebp-0xf4], edi
	mov eax, edi
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__440
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__350:
	mov [ebp-0xb0], ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__450
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__310:
	mov [ebp-0xb4], edx
	movaps xmm1, xmm2
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__460
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__110:
	mov [ebp-0xac], ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__260
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__180:
	movaps xmm0, xmm1
	subss xmm0, xmm3
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x108], xmm1
	movss [ebp-0x118], xmm2
	movss [ebp-0x128], xmm3
	call floorf
	fstp dword [ebp-0xe4]
	cvttss2si eax, [ebp-0xe4]
	add ebx, eax
	movss xmm3, dword [ebp-0x128]
	movss xmm2, dword [ebp-0x118]
	movss xmm1, dword [ebp-0x108]
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__170
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__290:
	lea ecx, [ebp-0x60]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x6c]
	mov [esp], ebx
	call ClearBounds
	lea esi, [ebp-0x48]
	mov [esp+0x4], esi
	lea edi, [ebp-0x54]
	mov [esp], edi
	call ClearBounds
	mov eax, [ebp-0xd4]
	sub eax, 0x1
	mov [ebp-0x7c], eax
	js _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__470
	xor edi, edi
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__580:
	mov eax, [ebp-0xdc]
	lea ebx, [eax+edi*4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__490:
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [ebp-0xc4]
	add edx, eax
	movss xmm0, dword [ebp-0xcc]
	mov ecx, [ebp-0xd0]
	ucomiss xmm0, [edx+ecx*4]
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__480
	add eax, [ebp-0xc8]
	ucomiss xmm0, [eax+ecx*4]
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__480
	lea ecx, [ebp-0x60]
	mov [esp+0xc], ecx
	lea esi, [ebp-0x6c]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	add edi, 0x1
	add ebx, 0x4
	cmp edi, [ebp-0x7c]
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__490
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__520:
	test edi, edi
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__470
	cmp [ebp-0xd4], edi
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__470
	mov edx, [ebp+0x8]
	mov [edx], edi
	mov eax, [ebp-0x7c]
	add eax, 0x1
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	mov eax, 0x1
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__10:
	xor ebx, ebx
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__500:
	mov esi, [ebp-0xdc]
	mov eax, [esi+ebx*4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	lea edi, [ebp-0x3c]
	mov [esp+0xc], edi
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp-0xc4]
	add edx, eax
	mov [esp+0x4], edx
	add eax, [ebp-0xc8]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	add ebx, 0x1
	cmp [ebp-0xd4], ebx
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__500
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__510
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__480:
	cmp edi, [ebp-0x7c]
	jg _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__520
	mov eax, [ebp-0x7c]
	mov edx, [ebp-0xdc]
	lea eax, [edx+eax*4]
	mov [ebp-0x98], eax
	mov edx, [eax]
	mov [ebp-0xec], edx
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov edx, [ebp-0xc8]
	add edx, eax
	mov ecx, [ebp-0xd0]
	movss xmm0, dword [edx+ecx*4]
	ucomiss xmm0, [ebp-0xcc]
	jae _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__530
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__650:
	mov esi, [ebp-0xdc]
	lea esi, [esi+edi*4]
	mov [ebp-0xf0], esi
	mov eax, [esi]
	mov [ebp-0x84], eax
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [ebp-0xd0]
	shl edx, 0x2
	mov ebx, [ebp-0xc8]
	lea ecx, [edx+ebx]
	movss xmm0, dword [ecx+eax]
	ucomiss xmm0, [ebp-0xcc]
	jae _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__540
	mov esi, [ebp-0xc4]
	add edx, esi
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__680:
	mov ebx, [ebp-0xec]
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, [edx+eax]
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__550
	ucomiss xmm0, [ecx+eax]
	ja _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__560
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__550:
	cmp [ebp-0x7c], edi
	jg _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__570
	mov esi, edi
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__720:
	cmp [ebp-0x7c], esi
	jnz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__580
	mov ebx, [ebp-0xd8]
	mov edx, [ebx+0x20]
	cmp edx, edi
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__590
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__750:
	lea esi, [ebp-0x40]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__640:
	mov eax, [ebp-0xdc]
	lea ebx, [eax+edi*4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__610:
	mov edx, [ebx]
	lea edx, [edx+edx*2]
	shl edx, 0x2
	mov eax, [ebp-0x6c]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x34], eax
	lea ecx, [ebp-0x3c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov eax, [ebp-0xc4]
	add eax, edx
	mov [esp+0x4], eax
	add edx, [ebp-0xc8]
	mov [esp], edx
	call _Z12ExpandBoundsPKfS0_PfS1_
	movss xmm3, dword [ebp-0x3c]
	subss xmm3, [ebp-0x30]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x2c]
	mulss xmm3, xmm0
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [ebp-0x28]
	mulss xmm3, xmm0
	movss xmm1, dword [ebp-0x60]
	subss xmm1, [ebp-0x6c]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x64]
	mulss xmm1, xmm0
	subss xmm3, xmm1
	mov edx, [ebx]
	lea edx, [edx+edx*2]
	shl edx, 0x2
	mov eax, [ebp-0x54]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov eax, [esi]
	mov [ebp-0x28], eax
	lea ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov eax, [ebp-0xc4]
	add eax, edx
	mov [esp+0x4], eax
	add edx, [ebp-0xc8]
	mov [esp], edx
	movss [ebp-0x128], xmm3
	call _Z12ExpandBoundsPKfS0_PfS1_
	movss xmm2, dword [ebp-0x30]
	subss xmm2, [ebp-0x3c]
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [ebp-0x38]
	mulss xmm2, xmm0
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [ebp-0x34]
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x48]
	subss xmm1, [ebp-0x54]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x50]
	mulss xmm1, xmm0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x4c]
	mulss xmm1, xmm0
	subss xmm2, xmm1
	movss xmm3, dword [ebp-0x128]
	ucomiss xmm2, xmm3
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__600
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	lea edx, [ebp-0x60]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x6c]
	mov [esp+0x8], ecx
	mov edx, [ebp-0xc4]
	add edx, eax
	mov [esp+0x4], edx
	add eax, [ebp-0xc8]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	add edi, 0x1
	add ebx, 0x4
	cmp edi, [ebp-0x7c]
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__610
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__600:
	cmp [ebp-0x7c], edi
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__620
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__790:
	cmp [ebp-0x7c], edi
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__630
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__770:
	cmp [ebp-0x7c], edi
	jge _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__640
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__520
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__530:
	add eax, [ebp-0xc4]
	mov esi, [ebp-0xd0]
	movss xmm0, dword [eax+esi*4]
	ucomiss xmm0, [ebp-0xcc]
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__650
	mov ecx, [ebp-0x7c]
	mov esi, [ebp-0xdc]
	lea ebx, [esi+ecx*4-0x4]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__670:
	lea ecx, [ebp-0x48]
	mov [esp+0xc], ecx
	lea esi, [ebp-0x54]
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12ExpandBoundsPKfS0_PfS1_
	sub dword [ebp-0x7c], 0x1
	cmp [ebp-0x7c], edi
	jl _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__520
	mov [ebp-0x98], ebx
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [ebp-0xc8]
	add edx, eax
	mov ecx, [ebp-0xd0]
	movss xmm0, dword [edx+ecx*4]
	ucomiss xmm0, [ebp-0xcc]
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__660
	add eax, [ebp-0xc4]
	sub ebx, 0x4
	movss xmm0, dword [eax+ecx*4]
	ucomiss xmm0, [ebp-0xcc]
	ja _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__670
	mov ebx, [ebp-0x98]
	mov ebx, [ebx]
	mov [ebp-0xec], ebx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__650
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__540:
	add edx, [ebp-0xc4]
	movss xmm0, dword [edx+eax]
	ucomiss xmm0, [ebp-0xcc]
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__680
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__560:
	mov eax, [ebp-0xec]
	mov edx, [ebp-0xf0]
	mov [edx], eax
	mov ecx, [ebp-0x84]
	mov ebx, [ebp-0x98]
	mov [ebx], ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__580
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__570:
	mov ebx, [ebp-0xf0]
	mov esi, edi
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__690
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__730:
	mov eax, [ebp-0xc4]
	add eax, [ebp-0x134]
	mov edx, [ebp-0xd0]
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__740:
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, [eax+edx*4]
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__700
	ucomiss xmm0, xmm1
	ja _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__710
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__700:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [ebp-0x7c]
	jz _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__720
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__690:
	mov ecx, [ebx]
	mov [ebp-0xe8], ecx
	lea eax, [ecx+ecx*2]
	shl eax, 0x2
	mov [ebp-0x134], eax
	mov eax, [ebp-0xd0]
	mov edx, [ebp-0xc8]
	lea eax, [edx+eax*4]
	mov [ebp-0x138], eax
	mov edx, [ebp-0x134]
	movss xmm1, dword [eax+edx]
	ucomiss xmm1, [ebp-0xcc]
	jb _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__730
	mov eax, [ebp-0xc4]
	add eax, edx
	mov edx, [ebp-0xd0]
	movss xmm0, dword [eax+edx*4]
	ucomiss xmm0, [ebp-0xcc]
	jbe _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__740
	mov ecx, [ebp-0xec]
	mov [ebx], ecx
	mov eax, [ebp-0xe8]
	mov ebx, [ebp-0x98]
	mov [ebx], eax
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__720
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__590:
	mov eax, [ebp-0x7c]
	sub eax, edi
	add eax, 0x1
	cmp edx, eax
	jg _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__750
	mov eax, [ebp-0xd4]
	sub eax, [ebp-0x7c]
	sub eax, 0x1
	cmp edx, eax
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__520
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__750
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__630:
	mov eax, [ebp-0x7c]
	add eax, eax
	cmp [ebp-0xd4], eax
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__760
	mov edi, [ebp-0x7c]
	add edi, 0x1
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__770
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__620:
	mov edx, [ebp-0x7c]
	mov ecx, [ebp-0xdc]
	lea ebx, [ecx+edx*4]
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__780
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__800:
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	lea edx, [ebp-0x48]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x54]
	mov [esp+0x8], ecx
	mov edx, [ebp-0xc4]
	add edx, eax
	mov [esp+0x4], edx
	add eax, [ebp-0xc8]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	sub dword [ebp-0x7c], 0x1
	sub ebx, 0x4
	cmp [ebp-0x7c], edi
	jl _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__790
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__780:
	mov edx, [ebx]
	lea edx, [edx+edx*2]
	shl edx, 0x2
	mov eax, [ebp-0x54]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x4c]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x38], eax
	mov eax, [esi]
	mov [ebp-0x34], eax
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov eax, [ebp-0xc4]
	add eax, edx
	mov [esp+0x4], eax
	add edx, [ebp-0xc8]
	mov [esp], edx
	call _Z12ExpandBoundsPKfS0_PfS1_
	movss xmm3, dword [ebp-0x3c]
	subss xmm3, [ebp-0x30]
	movss xmm0, dword [ebp-0x38]
	subss xmm0, [ebp-0x2c]
	mulss xmm3, xmm0
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [ebp-0x28]
	mulss xmm3, xmm0
	movss xmm1, dword [ebp-0x48]
	subss xmm1, [ebp-0x54]
	movss xmm0, dword [ebp-0x44]
	subss xmm0, [ebp-0x50]
	mulss xmm1, xmm0
	movss xmm0, dword [esi]
	subss xmm0, [ebp-0x4c]
	mulss xmm1, xmm0
	subss xmm3, xmm1
	mov edx, [ebx]
	lea edx, [edx+edx*2]
	shl edx, 0x2
	mov eax, [ebp-0x6c]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x64]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x60]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x5c]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x58]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x3c]
	mov [esp+0x8], ecx
	mov eax, [ebp-0xc4]
	add eax, edx
	mov [esp+0x4], eax
	add edx, [ebp-0xc8]
	mov [esp], edx
	movss [ebp-0x128], xmm3
	call _Z12ExpandBoundsPKfS0_PfS1_
	movss xmm2, dword [ebp-0x24]
	subss xmm2, [ebp-0x3c]
	movss xmm0, dword [ebp-0x20]
	subss xmm0, [ebp-0x38]
	mulss xmm2, xmm0
	movss xmm0, dword [ebp-0x1c]
	subss xmm0, [ebp-0x34]
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x60]
	subss xmm1, [ebp-0x6c]
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x68]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x58]
	subss xmm0, [ebp-0x64]
	mulss xmm1, xmm0
	subss xmm2, xmm1
	movss xmm3, dword [ebp-0x128]
	ucomiss xmm2, xmm3
	jae _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__800
	cmp [ebp-0x7c], edi
	jle _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__790
	mov ebx, [ebp-0xdc]
	lea ecx, [ebx+edi*4]
	mov eax, [ecx]
	mov [ebp-0x12c], eax
	mov eax, [ebp-0x7c]
	lea edx, [ebx+eax*4]
	mov eax, [edx]
	mov [ecx], eax
	mov ecx, [ebp-0x12c]
	mov [edx], ecx
	add edi, 0x1
	sub dword [ebp-0x7c], 0x1
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__770
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__660:
	mov ebx, [ebx]
	mov [ebp-0xec], ebx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__650
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__710:
	mov eax, [ebp-0x84]
	mov [ebx], eax
	mov edx, [ebp-0xf0]
	mov [edx], ecx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__720
_Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__760:
	mov edi, [ebp-0x7c]
	mov ebx, edi
	sub ebx, 0x1
	mov [ebp-0x7c], ebx
	jmp _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2__770
	nop


;CreateAabbSubTrees(GenericAabbTree*, GenericAabbTreeOptions const*, int*, int, int)
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov ebx, edx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	cmp [edx+0x24], edi
	jl _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_10
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_30:
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_20
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_80:
	mov eax, [aabbTreeCount]
	add eax, 0x1
	mov [aabbTreeCount], eax
	shl eax, 0x4
	add eax, [ebx+0x18]
	mov ecx, [ebp-0x2c]
	add esi, [ecx]
	mov [eax-0x10], esi
	mov [eax-0xc], edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_10:
	lea ecx, [ecx+esi*4]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov eax, edi
	call _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2_
	test eax, eax
	jz _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_30
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_40
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_90:
	mov eax, [aabbTreeCount]
	add eax, 0x1
	mov [ebp-0x3c], eax
	mov [aabbTreeCount], eax
	shl eax, 0x4
	add eax, [ebx+0x18]
	mov edx, [ebp-0x2c]
	mov ecx, [edx]
	add ecx, esi
	mov [eax-0x10], ecx
	mov edx, [ebp-0x1c]
	mov [eax-0xc], edx
	mov eax, [ebp-0x1c]
	mov [ebp-0x30], eax
	cmp eax, [ebp-0x20]
	jge _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_50
	mov edx, [ebp-0x3c]
	cmp edx, [ebx+0x1c]
	jz _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_60
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_110:
	mov eax, [aabbTreeCount]
	add eax, 0x1
	mov [aabbTreeCount], eax
	shl eax, 0x4
	add eax, [ebx+0x18]
	mov edx, esi
	mov ecx, [ebp-0x2c]
	add edx, [ecx]
	add edx, [ebp-0x30]
	mov [eax-0x10], edx
	mov edx, [ebp-0x20]
	sub edx, [ebp-0x1c]
	mov [eax-0xc], edx
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_50:
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_70
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_100:
	mov eax, [aabbTreeCount]
	add eax, 0x1
	mov [aabbTreeCount], eax
	shl eax, 0x4
	add eax, [ebx+0x18]
	mov edx, [ebp-0x2c]
	add esi, [edx]
	add esi, [ebp-0x20]
	mov [eax-0x10], esi
	sub edi, [ebp-0x20]
	mov [eax-0xc], edi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_80
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_90
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_100
_Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_60:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x1c]
	mov [ebp-0x30], ecx
	jmp _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii_110


;BuildAabbTree_r(GenericAabbTree*, GenericAabbTreeOptions const*, int*)
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi:
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x30], ecx
	mov eax, [aabbTreeCount]
	mov [esi+0x8], eax
	mov dword [esi+0xc], 0x0
	mov ebx, [esi+0x4]
	cmp ebx, [edx+0x24]
	jg _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_10
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_10:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov eax, ebx
	call _Z13SplitAabbTreeiPK22GenericAabbTreeOptionsPiS2_S2_
	test eax, eax
	jz _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_20
	mov ebx, [aabbTreeCount]
	shl ebx, 0x4
	add ebx, [edi+0x18]
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x20]
	cmp eax, edx
	jl _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_30
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_60:
	mov eax, [esi+0x4]
	sub eax, edx
	mov [esp+0x4], eax
	mov [esp], edx
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii
	mov eax, [aabbTreeCount]
	sub eax, [esi+0x8]
	mov [esi+0xc], eax
	test eax, eax
	jle _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_20
	mov dword [ebp-0x2c], 0x0
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_50:
	mov ecx, [ebx]
	mov eax, [ebp-0x30]
	lea ecx, [eax+ecx*4]
	mov eax, [esi]
	shl eax, 0x2
	sub ecx, eax
	mov edx, edi
	mov eax, ebx
	call _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_40
	add dword [ebp-0x2c], 0x1
	add ebx, 0x10
	mov eax, [ebp-0x2c]
	cmp [esi+0xc], eax
	jg _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_50
	jmp _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_20
_Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_30:
	sub edx, eax
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call _Z18CreateAabbSubTreesP15GenericAabbTreePK22GenericAabbTreeOptionsPiii
	mov edx, [ebp-0x20]
	jmp _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi_60
	nop


;BuildAabbTree(GenericAabbTreeOptions const*)
_Z13BuildAabbTreePK22GenericAabbTreeOptions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	cmp eax, 0x40
	ja _Z13BuildAabbTreePK22GenericAabbTreeOptions_10
	lea eax, [ebp-0x418]
	mov [sortedMins], eax
	lea eax, [ebp-0x318]
	mov [sortedMaxs], eax
	lea eax, [ebp-0x218]
	mov [sortedCoplanar], eax
	lea eax, [ebp-0x118]
	mov [ebp-0x420], eax
_Z13BuildAabbTreePK22GenericAabbTreeOptions_110:
	mov eax, [esi+0x4]
	test eax, eax
	jle _Z13BuildAabbTreePK22GenericAabbTreeOptions_20
	xor eax, eax
_Z13BuildAabbTreePK22GenericAabbTreeOptions_30:
	mov edx, [ebp-0x420]
	mov [edx+eax*4], eax
	add eax, 0x1
	cmp eax, [esi+0x4]
	jl _Z13BuildAabbTreePK22GenericAabbTreeOptions_30
_Z13BuildAabbTreePK22GenericAabbTreeOptions_20:
	mov eax, [esi+0x18]
	mov dword [eax], 0x0
	mov edx, [esi+0x18]
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov dword [aabbTreeCount], 0x1
	mov eax, [esi+0x18]
	mov ecx, [ebp-0x420]
	mov edx, esi
	call _Z15BuildAabbTree_rP15GenericAabbTreePK22GenericAabbTreeOptionsPi
	mov eax, [esi+0x4]
	imul eax, [esi+0x8]
	mov [esp], eax
	call _Znam
	mov [ebp-0x43c], eax
	mov eax, [esi+0x4]
	imul eax, [esi+0x8]
	mov edx, [esi]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edi, [ebp-0x43c]
	mov [esp], edi
	call memcpy
	mov eax, [esi+0x4]
	test eax, eax
	jg _Z13BuildAabbTreePK22GenericAabbTreeOptions_40
_Z13BuildAabbTreePK22GenericAabbTreeOptions_180:
	mov edi, [ebp-0x43c]
	test edi, edi
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_50
	mov eax, [ebp-0x43c]
	mov [esp], eax
	call _ZdaPv
_Z13BuildAabbTreePK22GenericAabbTreeOptions_50:
	mov ebx, [esi+0xc]
	test ebx, ebx
	jnz _Z13BuildAabbTreePK22GenericAabbTreeOptions_60
_Z13BuildAabbTreePK22GenericAabbTreeOptions_160:
	lea eax, [ebp-0x118]
	cmp eax, [ebp-0x420]
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_70
	mov eax, [ebp-0x420]
	test eax, eax
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_80
	mov edx, [ebp-0x420]
	mov [esp], edx
	call _ZdaPv
_Z13BuildAabbTreePK22GenericAabbTreeOptions_80:
	mov eax, [sortedMins]
	test eax, eax
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_90
	mov [esp], eax
	call _ZdaPv
_Z13BuildAabbTreePK22GenericAabbTreeOptions_90:
	mov eax, [sortedMaxs]
	test eax, eax
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_100
	mov [esp], eax
	call _ZdaPv
_Z13BuildAabbTreePK22GenericAabbTreeOptions_100:
	mov eax, [sortedCoplanar]
	test eax, eax
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_70
	mov [esp], eax
	call _ZdaPv
_Z13BuildAabbTreePK22GenericAabbTreeOptions_70:
	mov eax, [aabbTreeCount]
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13BuildAabbTreePK22GenericAabbTreeOptions_10:
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [ebp-0x420], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [sortedMins], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [sortedMaxs], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [sortedCoplanar], eax
	jmp _Z13BuildAabbTreePK22GenericAabbTreeOptions_110
_Z13BuildAabbTreePK22GenericAabbTreeOptions_60:
	mov eax, [esi+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [ebp-0x41c], eax
	mov eax, [esi+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [esi+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x41c]
	mov [esp], edx
	call memcpy
	mov eax, [esi+0x4]
	test eax, eax
	jle _Z13BuildAabbTreePK22GenericAabbTreeOptions_120
	xor ebx, ebx
	xor edi, edi
_Z13BuildAabbTreePK22GenericAabbTreeOptions_130:
	mov ecx, edi
	add ecx, [esi+0x10]
	mov edx, [ebp-0x420]
	mov eax, [edx+ebx*4]
	lea eax, [eax+eax*2]
	mov edx, [ebp-0x41c]
	lea eax, [edx+eax*4]
	mov edx, [eax]
	mov [ecx], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov eax, [eax+0x8]
	mov [ecx+0x8], eax
	add ebx, 0x1
	mov eax, [esi+0x4]
	add edi, 0xc
	cmp ebx, eax
	jl _Z13BuildAabbTreePK22GenericAabbTreeOptions_130
_Z13BuildAabbTreePK22GenericAabbTreeOptions_120:
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [esi+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edi, [ebp-0x41c]
	mov [esp], edi
	call memcpy
	mov ecx, [esi+0x4]
	test ecx, ecx
	jle _Z13BuildAabbTreePK22GenericAabbTreeOptions_140
	xor ebx, ebx
	xor edi, edi
_Z13BuildAabbTreePK22GenericAabbTreeOptions_150:
	mov ecx, edi
	add ecx, [esi+0x14]
	mov edx, [ebp-0x420]
	mov eax, [edx+ebx*4]
	lea eax, [eax+eax*2]
	mov edx, [ebp-0x41c]
	lea eax, [edx+eax*4]
	mov edx, [eax]
	mov [ecx], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov eax, [eax+0x8]
	mov [ecx+0x8], eax
	add ebx, 0x1
	add edi, 0xc
	cmp ebx, [esi+0x4]
	jl _Z13BuildAabbTreePK22GenericAabbTreeOptions_150
_Z13BuildAabbTreePK22GenericAabbTreeOptions_140:
	mov edx, [ebp-0x41c]
	test edx, edx
	jz _Z13BuildAabbTreePK22GenericAabbTreeOptions_160
	mov edi, [ebp-0x41c]
	mov [esp], edi
	call _ZdaPv
	jmp _Z13BuildAabbTreePK22GenericAabbTreeOptions_160
_Z13BuildAabbTreePK22GenericAabbTreeOptions_40:
	xor ebx, ebx
_Z13BuildAabbTreePK22GenericAabbTreeOptions_170:
	mov eax, [esi+0x8]
	mov ecx, ebx
	imul ecx, eax
	add ecx, [esi]
	mov edi, eax
	mov edx, [ebp-0x420]
	imul edi, [edx+ebx*4]
	mov edx, [ebp-0x43c]
	add edx, edi
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	add ebx, 0x1
	cmp ebx, [esi+0x4]
	jl _Z13BuildAabbTreePK22GenericAabbTreeOptions_170
	jmp _Z13BuildAabbTreePK22GenericAabbTreeOptions_180


;Initialized global or static variables of aabbtree:
SECTION .data


;Initialized constant data of aabbtree:
SECTION .rdata


;Zero initialized global or static variables of aabbtree:
SECTION .bss
aabbTreeCount: resb 0x4
sortedCoplanar: resb 0x4
sortedMaxs: resb 0x4
sortedMins: resb 0x74


;All cstrings:
SECTION .rdata
_cstring_more_than_i_aabb:		db "More than %i AABB nodes needed",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_10_00000000:		dd 0x41200000	; 10
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_50000000:		dd 0x3f000000	; 0.5

