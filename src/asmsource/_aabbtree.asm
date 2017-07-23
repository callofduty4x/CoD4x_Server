;Imports of aabbtree:
	extern ClearBounds
	extern ceilf
	extern qsort
	extern floorf
	extern ExpandBounds
	extern Com_Error
	extern _Znaj
	extern memcpy
	extern _ZdaPv

;Exports of aabbtree:
	global aabbTreeCount
	global sortedCoplanar
	global sortedMaxs
	global sortedMins
	global compare_floats
	global SplitAabbTree
	global CreateAabbSubTrees
	global BuildAabbTree_r
	global BuildAabbTree


SECTION .text


;compare_floats(void const*, void const*)
compare_floats:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	mov eax, [ebp+0xc]
	subss xmm0, [eax]
	ucomiss xmm0, [_float_0_00000000]
	jb compare_floats_10
compare_floats_20:
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	seta al
	pop ebp
	ret
compare_floats_10:
	jp compare_floats_20
	mov eax, 0xffffffff
	pop ebp
	ret
	nop


;SplitAabbTree(int, GenericAabbTreeOptions const*, int*, int*, int*)
SplitAabbTree:
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
	jg SplitAabbTree_10
SplitAabbTree_510:
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
SplitAabbTree_20:
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
	jnz SplitAabbTree_20
	mov dword [ebp-0x80], 0x80000000
	mov dword [ebp-0x88], 0x0
	mov ecx, [sortedMins]
	mov [ebp-0xf4], ecx
	mov dword [ebp-0xf8], 0x0
SplitAabbTree_280:
	mov eax, [ebp-0xd4]
	test eax, eax
	jg SplitAabbTree_30
	mov dword [ebp-0xbc], 0x0
	mov dword [ebp-0xb8], 0x0
	xor ebx, ebx
	xor esi, esi
	mov eax, [ebp-0xf4]
SplitAabbTree_440:
	mov dword [esp+0xc], compare_floats
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov [esp], eax
	call qsort
	mov dword [esp+0xc], compare_floats
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov eax, [sortedMaxs]
	mov [esp], eax
	call qsort
	mov dword [esp+0xc], compare_floats
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
	movss xmm2, dword [_float_34028234663852885_float_3]
	ucomiss xmm2, xmm3
	jbe SplitAabbTree_40
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
	jl SplitAabbTree_50
SplitAabbTree_210:
	movaps xmm1, xmm2
	mov dword [ebp-0xa8], 0x0
SplitAabbTree_460:
	mov eax, [ebp-0xbc]
	cmp [ebp-0xb0], eax
	jge SplitAabbTree_60
SplitAabbTree_240:
	mov ecx, [ebp-0xb0]
	mov ebx, [ebp-0xc0]
	lea eax, [ebx+ecx*4]
	ucomiss xmm3, [eax]
	jp SplitAabbTree_70
	jz SplitAabbTree_80
SplitAabbTree_70:
	mov edx, [ebp-0xa4]
SplitAabbTree_380:
	movss xmm0, dword [eax]
	minss xmm0, xmm1
	movaps xmm1, xmm0
SplitAabbTree_450:
	lea edx, [edi+edx]
	mov [ebp-0xa4], edx
	mov ebx, [ebp-0x9c]
	sub ebx, edi
	mov edx, [ebp-0xb8]
	cmp [ebp-0xac], edx
	jge SplitAabbTree_90
SplitAabbTree_250:
	mov ecx, [ebp-0xac]
	mov edi, [ebp-0x94]
	ucomiss xmm3, [edi+ecx*4]
	jnz SplitAabbTree_90
	jp SplitAabbTree_90
	mov ecx, [ebp-0xac]
	mov edi, [ebp-0x94]
	lea eax, [edi+ecx*4]
	xor edx, edx
	mov edi, ecx
	jmp SplitAabbTree_100
SplitAabbTree_130:
	mov edi, [ebp-0xac]
SplitAabbTree_100:
	add edx, 0x1
	lea ecx, [edx+edi]
	mov edi, [ebp-0xb8]
	sub edi, [ebp-0xac]
	cmp edi, edx
	jz SplitAabbTree_110
	movss xmm0, dword [eax+0x4]
	add eax, 0x4
	ucomiss xmm3, xmm0
	jp SplitAabbTree_120
	jz SplitAabbTree_130
SplitAabbTree_120:
	mov [ebp-0xac], ecx
	mov edi, edx
SplitAabbTree_260:
	lea ebx, [edi+ebx]
	mov [ebp-0x9c], ebx
	sub esi, edi
	mov eax, [ebp-0xb8]
	cmp [ebp-0xac], eax
	jge SplitAabbTree_140
	mov edx, [ebp-0xac]
	mov ecx, [ebp-0x94]
	movss xmm0, dword [ecx+edx*4]
	minss xmm0, xmm1
	movaps xmm1, xmm0
SplitAabbTree_140:
	cmp dword [ebp-0xa4], 0x1
	jle SplitAabbTree_150
	cmp esi, 0x1
	jle SplitAabbTree_150
	mov eax, [ebp-0xa4]
	sub eax, esi
	js SplitAabbTree_160
SplitAabbTree_390:
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
	jnz SplitAabbTree_170
	mov eax, [ebp-0xa0]
	test eax, eax
	jnz SplitAabbTree_170
	mov eax, [ebp-0xa8]
	test eax, eax
	jz SplitAabbTree_180
SplitAabbTree_170:
	cmp ebx, [ebp-0x80]
	jle SplitAabbTree_150
	mov ecx, [ebp-0x9c]
	test ecx, ecx
	jnz SplitAabbTree_190
	mov edx, [ebp-0xa0]
	test edx, edx
	jnz SplitAabbTree_190
	mov eax, [ebp-0xa8]
	test eax, eax
	jnz SplitAabbTree_190
	addss xmm3, xmm1
	movaps xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0xcc], xmm0
	mov eax, [ebp-0x88]
	mov [ebp-0xd0], eax
SplitAabbTree_300:
	ucomiss xmm2, xmm1
	jbe SplitAabbTree_200
SplitAabbTree_270:
	movaps xmm3, xmm1
	mov [ebp-0x80], ebx
	mov eax, [ebp-0xa8]
	add [ebp-0xa0], eax
	sub esi, eax
	mov edx, [ebp-0xbc]
	cmp [ebp-0xb4], edx
	jge SplitAabbTree_210
SplitAabbTree_50:
	mov ecx, [ebp-0xb4]
	mov ebx, [ebp-0xf4]
	lea eax, [ebx+ecx*4]
	ucomiss xmm3, [eax]
	jp SplitAabbTree_220
	jz SplitAabbTree_230
SplitAabbTree_220:
	mov dword [ebp-0xa8], 0x0
SplitAabbTree_340:
	movss xmm1, dword [eax]
	minss xmm1, xmm2
	mov eax, [ebp-0xbc]
	cmp [ebp-0xb0], eax
	jl SplitAabbTree_240
SplitAabbTree_60:
	mov edx, [ebp-0xa4]
	lea edx, [edi+edx]
	mov [ebp-0xa4], edx
	mov ebx, [ebp-0x9c]
	sub ebx, edi
	mov edx, [ebp-0xb8]
	cmp [ebp-0xac], edx
	jl SplitAabbTree_250
SplitAabbTree_90:
	xor edi, edi
	jmp SplitAabbTree_260
SplitAabbTree_150:
	mov ebx, [ebp-0x80]
	ucomiss xmm2, xmm1
	ja SplitAabbTree_270
SplitAabbTree_200:
	mov [ebp-0x80], ebx
SplitAabbTree_40:
	add dword [ebp-0x88], 0x1
	add dword [ebp-0xf8], 0x4
	cmp dword [ebp-0x88], 0x3
	jnz SplitAabbTree_280
	cmp dword [ebp-0x80], 0x80000000
	jnz SplitAabbTree_290
SplitAabbTree_470:
	xor eax, eax
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SplitAabbTree_190:
	mov edx, [ebp-0x88]
	mov [ebp-0xd0], edx
	movss [ebp-0xcc], xmm3
	jmp SplitAabbTree_300
SplitAabbTree_230:
	mov eax, ecx
	lea ecx, [ebx+ecx*4+0x4]
	mov edx, eax
	mov dword [ebp-0xa8], 0x0
SplitAabbTree_330:
	add dword [ebp-0xa8], 0x1
	add edx, 0x1
	mov eax, [ebp-0xbc]
	sub eax, [ebp-0xb4]
	cmp [ebp-0xa8], eax
	jz SplitAabbTree_310
	mov eax, ecx
	lea ecx, [ecx+0x4]
	ucomiss xmm3, [eax]
	jp SplitAabbTree_320
	jz SplitAabbTree_330
SplitAabbTree_320:
	mov [ebp-0xb4], edx
	jmp SplitAabbTree_340
SplitAabbTree_80:
	lea ebx, [ebx+ecx*4+0x4]
	mov edx, [ebp-0xa4]
SplitAabbTree_370:
	add edx, 0x1
	sub dword [ebp-0xa0], 0x1
	add ecx, 0x1
	mov eax, [ebp-0xbc]
	sub eax, [ebp-0xb0]
	add eax, [ebp-0xa4]
	cmp eax, edx
	jz SplitAabbTree_350
	mov eax, ebx
	lea ebx, [ebx+0x4]
	ucomiss xmm3, [eax]
	jp SplitAabbTree_360
	jz SplitAabbTree_370
SplitAabbTree_360:
	mov [ebp-0xb0], ecx
	jmp SplitAabbTree_380
SplitAabbTree_160:
	neg eax
	jmp SplitAabbTree_390
SplitAabbTree_30:
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
	jmp SplitAabbTree_400
SplitAabbTree_420:
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
	jz SplitAabbTree_410
SplitAabbTree_430:
	mov edx, [ebp-0x130]
SplitAabbTree_400:
	mov eax, [ecx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	movss xmm0, dword [edi+eax]
	ucomiss xmm0, [edx+eax]
	jnz SplitAabbTree_420
	jp SplitAabbTree_420
	mov esi, [ebp-0xb8]
	mov eax, [ebp-0x90]
	movss [eax+esi*4], xmm0
	add esi, 0x1
	mov [ebp-0xb8], esi
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0xd4], ebx
	jnz SplitAabbTree_430
SplitAabbTree_410:
	mov ebx, [ebp-0xbc]
	mov esi, [ebp-0xb8]
	mov edi, [sortedMins]
	mov [ebp-0xf4], edi
	mov eax, edi
	jmp SplitAabbTree_440
SplitAabbTree_350:
	mov [ebp-0xb0], ecx
	jmp SplitAabbTree_450
SplitAabbTree_310:
	mov [ebp-0xb4], edx
	movaps xmm1, xmm2
	jmp SplitAabbTree_460
SplitAabbTree_110:
	mov [ebp-0xac], ecx
	jmp SplitAabbTree_260
SplitAabbTree_180:
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
	jmp SplitAabbTree_170
SplitAabbTree_290:
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
	js SplitAabbTree_470
	xor edi, edi
SplitAabbTree_580:
	mov eax, [ebp-0xdc]
	lea ebx, [eax+edi*4]
SplitAabbTree_490:
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [ebp-0xc4]
	add edx, eax
	movss xmm0, dword [ebp-0xcc]
	mov ecx, [ebp-0xd0]
	ucomiss xmm0, [edx+ecx*4]
	jb SplitAabbTree_480
	add eax, [ebp-0xc8]
	ucomiss xmm0, [eax+ecx*4]
	jbe SplitAabbTree_480
	lea ecx, [ebp-0x60]
	mov [esp+0xc], ecx
	lea esi, [ebp-0x6c]
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov [esp], eax
	call ExpandBounds
	add edi, 0x1
	add ebx, 0x4
	cmp edi, [ebp-0x7c]
	jle SplitAabbTree_490
SplitAabbTree_520:
	test edi, edi
	jz SplitAabbTree_470
	cmp [ebp-0xd4], edi
	jz SplitAabbTree_470
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
SplitAabbTree_10:
	xor ebx, ebx
SplitAabbTree_500:
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
	call ExpandBounds
	add ebx, 0x1
	cmp [ebp-0xd4], ebx
	jnz SplitAabbTree_500
	jmp SplitAabbTree_510
SplitAabbTree_480:
	cmp edi, [ebp-0x7c]
	jg SplitAabbTree_520
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
	jae SplitAabbTree_530
SplitAabbTree_650:
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
	jae SplitAabbTree_540
	mov esi, [ebp-0xc4]
	add edx, esi
SplitAabbTree_680:
	mov ebx, [ebp-0xec]
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, [edx+eax]
	jb SplitAabbTree_550
	ucomiss xmm0, [ecx+eax]
	ja SplitAabbTree_560
SplitAabbTree_550:
	cmp [ebp-0x7c], edi
	jg SplitAabbTree_570
	mov esi, edi
SplitAabbTree_720:
	cmp [ebp-0x7c], esi
	jnz SplitAabbTree_580
	mov ebx, [ebp-0xd8]
	mov edx, [ebx+0x20]
	cmp edx, edi
	jle SplitAabbTree_590
SplitAabbTree_750:
	lea esi, [ebp-0x40]
SplitAabbTree_640:
	mov eax, [ebp-0xdc]
	lea ebx, [eax+edi*4]
SplitAabbTree_610:
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
	call ExpandBounds
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
	call ExpandBounds
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
	jb SplitAabbTree_600
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
	call ExpandBounds
	add edi, 0x1
	add ebx, 0x4
	cmp edi, [ebp-0x7c]
	jle SplitAabbTree_610
SplitAabbTree_600:
	cmp [ebp-0x7c], edi
	jge SplitAabbTree_620
SplitAabbTree_790:
	cmp [ebp-0x7c], edi
	jz SplitAabbTree_630
SplitAabbTree_770:
	cmp [ebp-0x7c], edi
	jge SplitAabbTree_640
	jmp SplitAabbTree_520
SplitAabbTree_530:
	add eax, [ebp-0xc4]
	mov esi, [ebp-0xd0]
	movss xmm0, dword [eax+esi*4]
	ucomiss xmm0, [ebp-0xcc]
	jbe SplitAabbTree_650
	mov ecx, [ebp-0x7c]
	mov esi, [ebp-0xdc]
	lea ebx, [esi+ecx*4-0x4]
SplitAabbTree_670:
	lea ecx, [ebp-0x48]
	mov [esp+0xc], ecx
	lea esi, [ebp-0x54]
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edx
	call ExpandBounds
	sub dword [ebp-0x7c], 0x1
	cmp [ebp-0x7c], edi
	jl SplitAabbTree_520
	mov [ebp-0x98], ebx
	mov eax, [ebx]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [ebp-0xc8]
	add edx, eax
	mov ecx, [ebp-0xd0]
	movss xmm0, dword [edx+ecx*4]
	ucomiss xmm0, [ebp-0xcc]
	jb SplitAabbTree_660
	add eax, [ebp-0xc4]
	sub ebx, 0x4
	movss xmm0, dword [eax+ecx*4]
	ucomiss xmm0, [ebp-0xcc]
	ja SplitAabbTree_670
	mov ebx, [ebp-0x98]
	mov ebx, [ebx]
	mov [ebp-0xec], ebx
	jmp SplitAabbTree_650
SplitAabbTree_540:
	add edx, [ebp-0xc4]
	movss xmm0, dword [edx+eax]
	ucomiss xmm0, [ebp-0xcc]
	jbe SplitAabbTree_680
SplitAabbTree_560:
	mov eax, [ebp-0xec]
	mov edx, [ebp-0xf0]
	mov [edx], eax
	mov ecx, [ebp-0x84]
	mov ebx, [ebp-0x98]
	mov [ebx], ecx
	jmp SplitAabbTree_580
SplitAabbTree_570:
	mov ebx, [ebp-0xf0]
	mov esi, edi
	jmp SplitAabbTree_690
SplitAabbTree_730:
	mov eax, [ebp-0xc4]
	add eax, [ebp-0x134]
	mov edx, [ebp-0xd0]
SplitAabbTree_740:
	movss xmm0, dword [ebp-0xcc]
	ucomiss xmm0, [eax+edx*4]
	jb SplitAabbTree_700
	ucomiss xmm0, xmm1
	ja SplitAabbTree_710
SplitAabbTree_700:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [ebp-0x7c]
	jz SplitAabbTree_720
SplitAabbTree_690:
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
	jb SplitAabbTree_730
	mov eax, [ebp-0xc4]
	add eax, edx
	mov edx, [ebp-0xd0]
	movss xmm0, dword [eax+edx*4]
	ucomiss xmm0, [ebp-0xcc]
	jbe SplitAabbTree_740
	mov ecx, [ebp-0xec]
	mov [ebx], ecx
	mov eax, [ebp-0xe8]
	mov ebx, [ebp-0x98]
	mov [ebx], eax
	jmp SplitAabbTree_720
SplitAabbTree_590:
	mov eax, [ebp-0x7c]
	sub eax, edi
	add eax, 0x1
	cmp edx, eax
	jg SplitAabbTree_750
	mov eax, [ebp-0xd4]
	sub eax, [ebp-0x7c]
	sub eax, 0x1
	cmp edx, eax
	jle SplitAabbTree_520
	jmp SplitAabbTree_750
SplitAabbTree_630:
	mov eax, [ebp-0x7c]
	add eax, eax
	cmp [ebp-0xd4], eax
	jle SplitAabbTree_760
	mov edi, [ebp-0x7c]
	add edi, 0x1
	jmp SplitAabbTree_770
SplitAabbTree_620:
	mov edx, [ebp-0x7c]
	mov ecx, [ebp-0xdc]
	lea ebx, [ecx+edx*4]
	jmp SplitAabbTree_780
SplitAabbTree_800:
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
	call ExpandBounds
	sub dword [ebp-0x7c], 0x1
	sub ebx, 0x4
	cmp [ebp-0x7c], edi
	jl SplitAabbTree_790
SplitAabbTree_780:
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
	call ExpandBounds
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
	call ExpandBounds
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
	jae SplitAabbTree_800
	cmp [ebp-0x7c], edi
	jle SplitAabbTree_790
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
	jmp SplitAabbTree_770
SplitAabbTree_660:
	mov ebx, [ebx]
	mov [ebp-0xec], ebx
	jmp SplitAabbTree_650
SplitAabbTree_710:
	mov eax, [ebp-0x84]
	mov [ebx], eax
	mov edx, [ebp-0xf0]
	mov [edx], ecx
	jmp SplitAabbTree_720
SplitAabbTree_760:
	mov edi, [ebp-0x7c]
	mov ebx, edi
	sub ebx, 0x1
	mov [ebp-0x7c], ebx
	jmp SplitAabbTree_770
	nop


;CreateAabbSubTrees(GenericAabbTree*, GenericAabbTreeOptions const*, int*, int, int)
CreateAabbSubTrees:
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
	jl CreateAabbSubTrees_10
CreateAabbSubTrees_30:
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz CreateAabbSubTrees_20
CreateAabbSubTrees_80:
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
CreateAabbSubTrees_10:
	lea ecx, [ecx+esi*4]
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov eax, edi
	call SplitAabbTree
	test eax, eax
	jz CreateAabbSubTrees_30
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz CreateAabbSubTrees_40
CreateAabbSubTrees_90:
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
	jge CreateAabbSubTrees_50
	mov edx, [ebp-0x3c]
	cmp edx, [ebx+0x1c]
	jz CreateAabbSubTrees_60
CreateAabbSubTrees_110:
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
CreateAabbSubTrees_50:
	mov eax, [ebx+0x1c]
	cmp eax, [aabbTreeCount]
	jz CreateAabbSubTrees_70
CreateAabbSubTrees_100:
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
CreateAabbSubTrees_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call Com_Error
	jmp CreateAabbSubTrees_80
CreateAabbSubTrees_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call Com_Error
	jmp CreateAabbSubTrees_90
CreateAabbSubTrees_70:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call Com_Error
	jmp CreateAabbSubTrees_100
CreateAabbSubTrees_60:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_more_than_i_aabb
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp-0x1c]
	mov [ebp-0x30], ecx
	jmp CreateAabbSubTrees_110


;BuildAabbTree_r(GenericAabbTree*, GenericAabbTreeOptions const*, int*)
BuildAabbTree_r:
BuildAabbTree_r_40:
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
	jg BuildAabbTree_r_10
BuildAabbTree_r_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BuildAabbTree_r_10:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	mov eax, ebx
	call SplitAabbTree
	test eax, eax
	jz BuildAabbTree_r_20
	mov ebx, [aabbTreeCount]
	shl ebx, 0x4
	add ebx, [edi+0x18]
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call CreateAabbSubTrees
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x20]
	cmp eax, edx
	jl BuildAabbTree_r_30
BuildAabbTree_r_60:
	mov eax, [esi+0x4]
	sub eax, edx
	mov [esp+0x4], eax
	mov [esp], edx
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call CreateAabbSubTrees
	mov eax, [aabbTreeCount]
	sub eax, [esi+0x8]
	mov [esi+0xc], eax
	test eax, eax
	jle BuildAabbTree_r_20
	mov dword [ebp-0x2c], 0x0
BuildAabbTree_r_50:
	mov ecx, [ebx]
	mov eax, [ebp-0x30]
	lea ecx, [eax+ecx*4]
	mov eax, [esi]
	shl eax, 0x2
	sub ecx, eax
	mov edx, edi
	mov eax, ebx
	call BuildAabbTree_r_40
	add dword [ebp-0x2c], 0x1
	add ebx, 0x10
	mov eax, [ebp-0x2c]
	cmp [esi+0xc], eax
	jg BuildAabbTree_r_50
	jmp BuildAabbTree_r_20
BuildAabbTree_r_30:
	sub edx, eax
	mov [esp+0x4], edx
	mov [esp], eax
	mov ecx, [ebp-0x30]
	mov edx, edi
	mov eax, esi
	call CreateAabbSubTrees
	mov edx, [ebp-0x20]
	jmp BuildAabbTree_r_60
	nop


;BuildAabbTree(GenericAabbTreeOptions const*)
BuildAabbTree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	cmp eax, 0x40
	ja BuildAabbTree_10
	lea eax, [ebp-0x418]
	mov [sortedMins], eax
	lea eax, [ebp-0x318]
	mov [sortedMaxs], eax
	lea eax, [ebp-0x218]
	mov [sortedCoplanar], eax
	lea eax, [ebp-0x118]
	mov [ebp-0x420], eax
BuildAabbTree_110:
	mov eax, [esi+0x4]
	test eax, eax
	jle BuildAabbTree_20
	xor eax, eax
BuildAabbTree_30:
	mov edx, [ebp-0x420]
	mov [edx+eax*4], eax
	add eax, 0x1
	cmp eax, [esi+0x4]
	jl BuildAabbTree_30
BuildAabbTree_20:
	mov eax, [esi+0x18]
	mov dword [eax], 0x0
	mov edx, [esi+0x18]
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov dword [aabbTreeCount], 0x1
	mov eax, [esi+0x18]
	mov ecx, [ebp-0x420]
	mov edx, esi
	call BuildAabbTree_r
	mov eax, [esi+0x4]
	imul eax, [esi+0x8]
	mov [esp], eax
	call _Znaj
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
	jg BuildAabbTree_40
BuildAabbTree_180:
	mov edi, [ebp-0x43c]
	test edi, edi
	jz BuildAabbTree_50
	mov eax, [ebp-0x43c]
	mov [esp], eax
	call _ZdaPv
BuildAabbTree_50:
	mov ebx, [esi+0xc]
	test ebx, ebx
	jnz BuildAabbTree_60
BuildAabbTree_160:
	lea eax, [ebp-0x118]
	cmp eax, [ebp-0x420]
	jz BuildAabbTree_70
	mov eax, [ebp-0x420]
	test eax, eax
	jz BuildAabbTree_80
	mov edx, [ebp-0x420]
	mov [esp], edx
	call _ZdaPv
BuildAabbTree_80:
	mov eax, [sortedMins]
	test eax, eax
	jz BuildAabbTree_90
	mov [esp], eax
	call _ZdaPv
BuildAabbTree_90:
	mov eax, [sortedMaxs]
	test eax, eax
	jz BuildAabbTree_100
	mov [esp], eax
	call _ZdaPv
BuildAabbTree_100:
	mov eax, [sortedCoplanar]
	test eax, eax
	jz BuildAabbTree_70
	mov [esp], eax
	call _ZdaPv
BuildAabbTree_70:
	mov eax, [aabbTreeCount]
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BuildAabbTree_10:
	shl eax, 0x2
	mov [esp], eax
	call _Znaj
	mov [ebp-0x420], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znaj
	mov [sortedMins], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znaj
	mov [sortedMaxs], eax
	mov eax, [esi+0x4]
	shl eax, 0x2
	mov [esp], eax
	call _Znaj
	mov [sortedCoplanar], eax
	jmp BuildAabbTree_110
BuildAabbTree_60:
	mov eax, [esi+0x4]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Znaj
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
	jle BuildAabbTree_120
	xor ebx, ebx
	xor edi, edi
BuildAabbTree_130:
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
	jl BuildAabbTree_130
BuildAabbTree_120:
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
	jle BuildAabbTree_140
	xor ebx, ebx
	xor edi, edi
BuildAabbTree_150:
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
	jl BuildAabbTree_150
BuildAabbTree_140:
	mov edx, [ebp-0x41c]
	test edx, edx
	jz BuildAabbTree_160
	mov edi, [ebp-0x41c]
	mov [esp], edi
	call _ZdaPv
	jmp BuildAabbTree_160
BuildAabbTree_40:
	xor ebx, ebx
BuildAabbTree_170:
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
	jl BuildAabbTree_170
	jmp BuildAabbTree_180


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
_float_34028234663852885_float_3:		dd 0x7f7fffff	; 3.40282e+38
_float_0_50000000:		dd 0x3f000000	; 0.5

