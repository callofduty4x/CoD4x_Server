;Imports of brush_edges:
	extern memmove
	extern VecNCompareCustomEpsilon
	extern memcpy
	extern PlaneFromPoints
	extern Com_PrintError

;Exports of brush_edges:
	global FindCycleBFS
	global RemovePtsWithPlanesThatOccurLessThanTwice
	global TestConvexWithoutNearPoints
	global BuildBrushdAdjacencyWindingForSide


SECTION .text


;FindCycleBFS(int, SimplePlaneIntersection const**, int, SimplePlaneIntersection const*, SimplePlaneIntersection const*, int, SimplePlaneIntersection const**, int*)
FindCycleBFS:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x403c
	mov [ebp-0x4034], eax
	mov [ebp-0x4038], edx
	mov edx, [ebp+0x8]
	mov [ebp-0x4018], edx
	mov ebx, edx
	xor esi, esi
FindCycleBFS_30:
	mov eax, [ebx+0xc]
	cmp [ebp-0x4034], eax
	jz FindCycleBFS_10
	cmp [ebp+0x10], eax
	jnz FindCycleBFS_20
FindCycleBFS_10:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz FindCycleBFS_30
	mov eax, 0xffffffff
FindCycleBFS_250:
	mov [ebp-0x4014], eax
	mov dword [ebp-0x4010], 0x1
	mov dword [ebp-0x400c], 0x0
	mov ebx, [ebp+0xc]
	xor esi, esi
FindCycleBFS_60:
	mov eax, [ebx+0xc]
	cmp [ebp-0x4034], eax
	jz FindCycleBFS_40
	cmp [ebp+0x10], eax
	jnz FindCycleBFS_50
FindCycleBFS_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz FindCycleBFS_60
	mov dword [ebp-0x4028], 0xffffffff
FindCycleBFS_240:
	mov edx, [ebp-0x4038]
	lea ecx, [edx+ecx*4]
	mov [ebp-0x4024], ecx
	mov dword [ebp-0x4030], 0x0
	mov dword [ebp-0x402c], 0x1
	lea ebx, [ebp-0x4018]
	mov [ebp-0x4020], ebx
	mov [ebp-0x403c], ebx
	mov dword [ebp-0x4040], 0x0
	lea edx, [ebp-0x8]
	mov [ebp-0x4044], edx
FindCycleBFS_110:
	add ebx, 0x4
	mov [ebp-0x401c], ebx
	mov edx, [ebp-0x4020]
	mov eax, [edx+0x4]
	mov ebx, [ebp-0x4024]
	cmp [ebp-0x4038], ebx
	jz FindCycleBFS_70
	mov esi, [ebp-0x4038]
FindCycleBFS_90:
	mov ebx, [esi]
	cmp eax, [ebx+0xc]
	jz FindCycleBFS_80
	cmp eax, [ebx+0x10]
	jz FindCycleBFS_80
	cmp eax, [ebx+0x14]
	jz FindCycleBFS_80
	add esi, 0x4
	cmp esi, [ebp-0x4024]
	jnz FindCycleBFS_90
FindCycleBFS_70:
	add dword [ebp-0x4030], 0x1
	add dword [ebp-0x403c], 0x10
	add dword [ebp-0x4020], 0x10
	mov ebx, [ebp-0x4030]
	cmp [ebp-0x402c], ebx
	jle FindCycleBFS_100
	mov ebx, [ebp-0x4020]
	jmp FindCycleBFS_110
FindCycleBFS_80:
	cmp [ebp-0x4024], esi
	jz FindCycleBFS_70
	mov eax, [ebp-0x401c]
	mov edi, [eax]
FindCycleBFS_190:
	mov edx, ebx
	xor ecx, ecx
FindCycleBFS_140:
	mov eax, [edx+0xc]
	cmp [ebp-0x4034], eax
	jz FindCycleBFS_120
	cmp edi, eax
	jnz FindCycleBFS_130
FindCycleBFS_120:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz FindCycleBFS_140
	mov ecx, 0xffffffff
FindCycleBFS_220:
	cmp ecx, [ebp+0x10]
	jz FindCycleBFS_150
	mov eax, [ebp-0x402c]
	test eax, eax
	jg FindCycleBFS_160
FindCycleBFS_200:
	mov edx, [ebp-0x4044]
	mov [edx-0x4000], ebx
	mov [edx-0x3ffc], ecx
	mov ebx, [ebp-0x4020]
	mov eax, [ebx+0x8]
	add eax, 0x1
	mov [edx-0x3ff8], eax
	mov eax, [ebp-0x403c]
	mov [edx-0x3ff4], eax
	add dword [ebp-0x402c], 0x1
	add edx, 0x10
	mov [ebp-0x4044], edx
	add dword [ebp-0x4040], 0x10
	cmp [ebp-0x4028], ecx
	jz FindCycleBFS_170
	mov edx, [ebp-0x401c]
	mov edi, [edx]
FindCycleBFS_150:
	add esi, 0x4
	cmp esi, [ebp-0x4024]
	jz FindCycleBFS_70
	mov ebx, [esi]
	cmp edi, [ebx+0xc]
	jz FindCycleBFS_180
	cmp edi, [ebx+0x10]
	jz FindCycleBFS_180
	cmp edi, [ebx+0x14]
	jnz FindCycleBFS_150
FindCycleBFS_180:
	cmp esi, [ebp-0x4024]
	jnz FindCycleBFS_190
	jmp FindCycleBFS_70
FindCycleBFS_160:
	cmp ecx, [ebp-0x4014]
	jz FindCycleBFS_150
	xor edx, edx
FindCycleBFS_210:
	add edx, 0x1
	cmp [ebp-0x402c], edx
	jz FindCycleBFS_200
	mov eax, edx
	shl eax, 0x4
	cmp [eax+ebp-0x4014], ecx
	jnz FindCycleBFS_210
	jmp FindCycleBFS_150
FindCycleBFS_130:
	mov ecx, [ebx+ecx*4+0xc]
	jmp FindCycleBFS_220
FindCycleBFS_100:
	mov eax, [ebp+0x18]
	mov dword [eax], 0x0
	xor eax, eax
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindCycleBFS_170:
	lea ecx, [ebp-0x4018]
	add ecx, [ebp-0x4040]
	mov eax, [ecx+0x8]
	add eax, 0x1
	mov edx, [ebp+0x18]
	mov [edx], eax
	mov eax, [ecx+0x8]
	mov ebx, [ebp+0x14]
	lea edx, [ebx+eax*4]
FindCycleBFS_230:
	mov eax, [ecx]
	mov [edx], eax
	mov ecx, [ecx+0xc]
	sub edx, 0x4
	test ecx, ecx
	jnz FindCycleBFS_230
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov [eax], edx
	mov eax, 0x1
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindCycleBFS_50:
	mov eax, [ebp+0xc]
	mov esi, [eax+esi*4+0xc]
	mov [ebp-0x4028], esi
	jmp FindCycleBFS_240
FindCycleBFS_20:
	mov eax, [edx+esi*4+0xc]
	jmp FindCycleBFS_250
	nop


;RemovePtsWithPlanesThatOccurLessThanTwice(SimplePlaneIntersection const**, int)
RemovePtsWithPlanesThatOccurLessThanTwice:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], eax
	mov edi, edx
	test edx, edx
	jle RemovePtsWithPlanesThatOccurLessThanTwice_10
	mov dword [ebp-0x1c], 0x0
RemovePtsWithPlanesThatOccurLessThanTwice_50:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x24]
	lea eax, [edx+eax*4]
	mov [ebp-0x28], eax
	mov edx, [eax]
	mov [ebp-0x20], edx
	mov ebx, [edx+0xc]
	test edi, edi
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov edx, [ebp-0x24]
	lea eax, [edx+edi*4]
	cmp edx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov ecx, edx
RemovePtsWithPlanesThatOccurLessThanTwice_40:
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_30
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_30
	cmp ebx, [edx+0x14]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_30
	add ecx, 0x4
	cmp ecx, eax
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_40
RemovePtsWithPlanesThatOccurLessThanTwice_20:
	mov eax, edi
	sub eax, [ebp-0x1c]
	lea eax, [eax*4-0x4]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	add eax, 0x4
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp], eax
	call memmove
	sub edi, 0x1
	mov dword [ebp-0x1c], 0x0
RemovePtsWithPlanesThatOccurLessThanTwice_210:
	cmp [ebp-0x1c], edi
	jl RemovePtsWithPlanesThatOccurLessThanTwice_50
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemovePtsWithPlanesThatOccurLessThanTwice_30:
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	xor esi, esi
RemovePtsWithPlanesThatOccurLessThanTwice_220:
	add esi, 0x1
	add ecx, 0x4
	cmp eax, ecx
	jz RemovePtsWithPlanesThatOccurLessThanTwice_60
RemovePtsWithPlanesThatOccurLessThanTwice_80:
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_70
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_70
	cmp ebx, [edx+0x14]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_70
	add ecx, 0x4
	cmp ecx, eax
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_80
RemovePtsWithPlanesThatOccurLessThanTwice_60:
	sub esi, 0x1
	jle RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x10]
	cmp [ebp-0x24], eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov ecx, [ebp-0x24]
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_90
RemovePtsWithPlanesThatOccurLessThanTwice_100:
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_90
	cmp ebx, [edx+0x14]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_90
	add ecx, 0x4
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_100
RemovePtsWithPlanesThatOccurLessThanTwice_90:
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	xor esi, esi
RemovePtsWithPlanesThatOccurLessThanTwice_140:
	add esi, 0x1
RemovePtsWithPlanesThatOccurLessThanTwice_130:
	add ecx, 0x4
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_110
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_120
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_120
	cmp ebx, [edx+0x14]
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_130
RemovePtsWithPlanesThatOccurLessThanTwice_120:
	cmp ecx, eax
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_140
RemovePtsWithPlanesThatOccurLessThanTwice_110:
	sub esi, 0x1
	jle RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x14]
	cmp [ebp-0x24], eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov ecx, [ebp-0x24]
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_150
RemovePtsWithPlanesThatOccurLessThanTwice_160:
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_150
	cmp ebx, [edx+0x14]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_150
	add ecx, 0x4
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_160
RemovePtsWithPlanesThatOccurLessThanTwice_150:
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_20
	xor esi, esi
RemovePtsWithPlanesThatOccurLessThanTwice_200:
	add esi, 0x1
RemovePtsWithPlanesThatOccurLessThanTwice_190:
	add ecx, 0x4
	cmp ecx, eax
	jz RemovePtsWithPlanesThatOccurLessThanTwice_170
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_180
	cmp ebx, [edx+0x10]
	jz RemovePtsWithPlanesThatOccurLessThanTwice_180
	cmp ebx, [edx+0x14]
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_190
RemovePtsWithPlanesThatOccurLessThanTwice_180:
	cmp ecx, eax
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_200
RemovePtsWithPlanesThatOccurLessThanTwice_170:
	sub esi, 0x1
	jle RemovePtsWithPlanesThatOccurLessThanTwice_20
	add dword [ebp-0x1c], 0x1
	jmp RemovePtsWithPlanesThatOccurLessThanTwice_210
RemovePtsWithPlanesThatOccurLessThanTwice_70:
	cmp ecx, eax
	jnz RemovePtsWithPlanesThatOccurLessThanTwice_220
	jmp RemovePtsWithPlanesThatOccurLessThanTwice_60
RemovePtsWithPlanesThatOccurLessThanTwice_10:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;TestConvexWithoutNearPoints(SimplePlaneIntersection const**, unsigned int)
TestConvexWithoutNearPoints:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x305c
	mov edi, eax
	mov esi, edx
	test edx, edx
	jz TestConvexWithoutNearPoints_10
	xor ebx, ebx
	lea ecx, [ebp-0x3018]
TestConvexWithoutNearPoints_20:
	mov edx, [edi+ebx*4]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	add ebx, 0x1
	add ecx, 0xc
	cmp esi, ebx
	jnz TestConvexWithoutNearPoints_20
	cmp esi, 0x1
	ja TestConvexWithoutNearPoints_30
TestConvexWithoutNearPoints_10:
	lea ebx, [esi-0x1]
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x3018]
	movss xmm0, dword [eax]
	subss xmm0, [ebp-0x3018]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0x3014]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [ebp-0x3010]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm2, dword [_float_1_00000000]
	ucomiss xmm2, xmm0
	cmovbe ebx, esi
	cmp ebx, 0x2
	jbe TestConvexWithoutNearPoints_40
	lea ecx, [ebx-0x1]
	lea eax, [ebx-0x2]
	xor edi, edi
	lea esi, [ebp-0x3018]
	jmp TestConvexWithoutNearPoints_50
TestConvexWithoutNearPoints_90:
	movss xmm1, dword [_float_1_00000000]
TestConvexWithoutNearPoints_100:
	mulss xmm6, xmm1
	movss [ebp-0x303c], xmm6
	mulss xmm5, xmm1
	movss [ebp-0x3038], xmm5
	mulss xmm2, xmm1
	movss [ebp-0x3034], xmm2
	cvtss2sd xmm0, xmm4
	movsd xmm2, qword [_double_0_01000000]
	ucomisd xmm2, xmm0
	jbe TestConvexWithoutNearPoints_60
	mulss xmm3, [ebp-0x3028]
	mulss xmm7, [ebp-0x3020]
	movss [ebp-0x3020], xmm7
	addss xmm3, xmm7
	movss xmm4, dword [ebp-0x3024]
	mulss xmm4, [ebp-0x302c]
	addss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	ja TestConvexWithoutNearPoints_70
	lea edx, [edi+0x1]
	add esi, 0xc
	cmp ebx, edx
	jz TestConvexWithoutNearPoints_80
	mov eax, ecx
	mov ecx, edi
	mov edi, edx
TestConvexWithoutNearPoints_50:
	lea edx, [eax+eax*2]
	lea edx, [ebp+edx*4-0x3018]
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0x3018]
	movss xmm0, dword [eax]
	movaps xmm3, xmm0
	subss xmm3, [edx]
	movss xmm1, dword [eax+0x4]
	movaps xmm4, xmm1
	subss xmm4, [edx+0x4]
	movss [ebp-0x3020], xmm4
	movss xmm2, dword [eax+0x8]
	movaps xmm4, xmm2
	subss xmm4, [edx+0x8]
	movss [ebp-0x3024], xmm4
	movss xmm4, dword [esi]
	subss xmm4, xmm0
	movss [ebp-0x3028], xmm4
	movss xmm7, dword [esi+0x4]
	subss xmm7, xmm1
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm2
	movss [ebp-0x302c], xmm0
	movss xmm6, dword [ebp-0x3020]
	mulss xmm6, xmm0
	movss xmm0, dword [ebp-0x3024]
	mulss xmm0, xmm7
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x3024]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0x302c]
	mulss xmm0, xmm3
	subss xmm5, xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x3020]
	mulss xmm0, xmm4
	subss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm4, xmm0
	movaps xmm0, xmm4
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae TestConvexWithoutNearPoints_90
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm4
	jmp TestConvexWithoutNearPoints_100
TestConvexWithoutNearPoints_80:
	mov ecx, edi
	mov edi, ebx
TestConvexWithoutNearPoints_60:
	lea edx, [edi+0x1]
	cmp ebx, edx
	ja TestConvexWithoutNearPoints_110
TestConvexWithoutNearPoints_160:
	mov eax, 0x1
TestConvexWithoutNearPoints_200:
	movzx eax, al
	add esp, 0x305c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TestConvexWithoutNearPoints_30:
	mov dword [ebp-0x301c], 0x1
	mov edi, 0xc
	lea ebx, [ebp-0x3018]
	add ebx, 0xc
TestConvexWithoutNearPoints_130:
	lea edx, [ebp-0x3018]
	add edx, edi
	movss xmm0, dword [ebx-0xc]
	subss xmm0, [ebx]
	movss xmm1, dword [ebx-0x8]
	subss xmm1, [ebx+0x4]
	movss xmm2, dword [ebx-0x4]
	subss xmm2, [ebx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss xmm1, dword [_float_1_00000000]
	ucomiss xmm1, xmm0
	ja TestConvexWithoutNearPoints_120
	add dword [ebp-0x301c], 0x1
	add edi, 0xc
	add ebx, 0xc
TestConvexWithoutNearPoints_140:
	cmp [ebp-0x301c], esi
	jb TestConvexWithoutNearPoints_130
	jmp TestConvexWithoutNearPoints_10
TestConvexWithoutNearPoints_40:
	xor eax, eax
	add esp, 0x305c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TestConvexWithoutNearPoints_120:
	mov eax, esi
	sub eax, [ebp-0x301c]
	lea eax, [eax+eax*2]
	lea eax, [eax*4-0xc]
	mov [esp+0x8], eax
	lea eax, [edi+ebp-0x300c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	sub esi, 0x1
	jmp TestConvexWithoutNearPoints_140
TestConvexWithoutNearPoints_110:
	lea eax, [edx+edx*2]
	lea esi, [eax*4]
	mov [ebp-0x3030], edx
	jmp TestConvexWithoutNearPoints_150
TestConvexWithoutNearPoints_180:
	mulss xmm6, [ebp-0x3040]
	mulss xmm7, [ebp-0x3048]
	movss [ebp-0x3048], xmm7
	addss xmm6, xmm7
	movss xmm4, dword [ebp-0x304c]
	mulss xmm4, [ebp-0x3044]
	addss xmm6, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm6
	ja TestConvexWithoutNearPoints_70
TestConvexWithoutNearPoints_190:
	mov eax, [ebp-0x3030]
	add eax, 0x1
	add esi, 0xc
	cmp ebx, eax
	jz TestConvexWithoutNearPoints_160
	mov ecx, edi
	mov edi, [ebp-0x3030]
	mov [ebp-0x3030], eax
TestConvexWithoutNearPoints_150:
	lea edx, [ecx+ecx*2]
	lea edx, [ebp+edx*4-0x3018]
	lea eax, [edi+edi*2]
	lea eax, [ebp+eax*4-0x3018]
	movss xmm0, dword [eax]
	movaps xmm6, xmm0
	subss xmm6, [edx]
	movss xmm1, dword [eax+0x4]
	movaps xmm2, xmm1
	subss xmm2, [edx+0x4]
	movss [ebp-0x3048], xmm2
	movss xmm2, dword [eax+0x8]
	movaps xmm3, xmm2
	subss xmm3, [edx+0x8]
	movss [ebp-0x304c], xmm3
	lea eax, [ebp-0x3018]
	add eax, esi
	movss xmm4, dword [eax]
	subss xmm4, xmm0
	movss [ebp-0x3040], xmm4
	movss xmm7, dword [eax+0x4]
	subss xmm7, xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, xmm2
	movss [ebp-0x3044], xmm0
	movss xmm5, dword [ebp-0x3048]
	mulss xmm5, xmm0
	movaps xmm0, xmm3
	mulss xmm0, xmm7
	subss xmm5, xmm0
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x3040]
	movss xmm0, dword [ebp-0x3044]
	mulss xmm0, xmm6
	subss xmm4, xmm0
	movaps xmm2, xmm6
	mulss xmm2, xmm7
	movss xmm0, dword [ebp-0x3048]
	mulss xmm0, [ebp-0x3040]
	subss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm4
	mulss xmm1, xmm4
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm3, xmm0
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb TestConvexWithoutNearPoints_170
	movss xmm0, dword [_float_1_00000000]
TestConvexWithoutNearPoints_210:
	mulss xmm5, xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm4
	mulss xmm2, xmm0
	cvtss2sd xmm0, xmm3
	movsd xmm3, qword [_double_0_01000000]
	ucomisd xmm3, xmm0
	ja TestConvexWithoutNearPoints_180
	movss xmm0, dword [ebp-0x303c]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0x3038]
	addss xmm0, xmm1
	mulss xmm2, [ebp-0x3034]
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_50000000]
	jp TestConvexWithoutNearPoints_190
	jae TestConvexWithoutNearPoints_190
TestConvexWithoutNearPoints_70:
	xor eax, eax
	jmp TestConvexWithoutNearPoints_200
TestConvexWithoutNearPoints_170:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm3
	jmp TestConvexWithoutNearPoints_210


;BuildBrushdAdjacencyWindingForSide(float const*, int, SimplePlaneIntersection const*, int, adjacencyWinding_t*, int)
BuildBrushdAdjacencyWindingForSide:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xf14c
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jle BuildBrushdAdjacencyWindingForSide_10
	mov eax, [ebp+0x10]
	xor edx, edx
	xor esi, esi
	lea ebx, [ebp-0x204c]
	jmp BuildBrushdAdjacencyWindingForSide_20
BuildBrushdAdjacencyWindingForSide_50:
	cmp edi, [eax+0x14]
	jz BuildBrushdAdjacencyWindingForSide_30
	add edx, 0x1
	add eax, 0x18
	cmp ecx, edx
	jz BuildBrushdAdjacencyWindingForSide_40
BuildBrushdAdjacencyWindingForSide_20:
	mov edi, [ebp+0xc]
	cmp edi, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_30
	cmp edi, [eax+0x10]
	jnz BuildBrushdAdjacencyWindingForSide_50
BuildBrushdAdjacencyWindingForSide_30:
	cmp esi, 0x400
	jz BuildBrushdAdjacencyWindingForSide_10
	mov [ebx+esi*4], eax
	add esi, 0x1
	add edx, 0x1
	add eax, 0x18
	cmp ecx, edx
	jnz BuildBrushdAdjacencyWindingForSide_20
BuildBrushdAdjacencyWindingForSide_40:
	cmp esi, 0x2
	jg BuildBrushdAdjacencyWindingForSide_60
BuildBrushdAdjacencyWindingForSide_10:
	xor ebx, ebx
BuildBrushdAdjacencyWindingForSide_1380:
	mov eax, ebx
	add esp, 0xf14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
BuildBrushdAdjacencyWindingForSide_60:
	xor edi, edi
	mov dword [ebp-0xf0f0], 0x0
BuildBrushdAdjacencyWindingForSide_90:
	mov ecx, [ebp-0xf0f0]
	mov eax, [ebp+ecx*4-0x204c]
	mov [ebp+edi*4-0x104c], eax
	add edi, 0x1
	add dword [ebp-0xf0f0], 0x1
	cmp esi, [ebp-0xf0f0]
	jz BuildBrushdAdjacencyWindingForSide_70
BuildBrushdAdjacencyWindingForSide_100:
	test edi, edi
	jg BuildBrushdAdjacencyWindingForSide_80
	xor ebx, ebx
BuildBrushdAdjacencyWindingForSide_490:
	cmp ebx, edi
	jz BuildBrushdAdjacencyWindingForSide_90
	add dword [ebp-0xf0f0], 0x1
	cmp esi, [ebp-0xf0f0]
	jnz BuildBrushdAdjacencyWindingForSide_100
BuildBrushdAdjacencyWindingForSide_70:
	cmp edi, 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
	mov edx, esi
	lea eax, [ebp-0x204c]
	call RemovePtsWithPlanesThatOccurLessThanTwice
	mov [ebp-0xf06c], eax
	cmp eax, 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
	xor ebx, ebx
	mov dword [ebp-0xf0e8], 0x0
BuildBrushdAdjacencyWindingForSide_150:
	xor ecx, ecx
BuildBrushdAdjacencyWindingForSide_140:
	mov eax, [ebp+ebx*4-0x204c]
	mov edx, [eax+ecx*4+0xc]
	cmp [ebp+0xc], edx
	jz BuildBrushdAdjacencyWindingForSide_110
	mov esi, [ebp-0xf0e8]
	test esi, esi
	jle BuildBrushdAdjacencyWindingForSide_120
	cmp [ebp-0x404c], edx
	jz BuildBrushdAdjacencyWindingForSide_110
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_130:
	add eax, 0x1
	cmp [ebp-0xf0e8], eax
	jz BuildBrushdAdjacencyWindingForSide_120
	cmp [ebp+eax*4-0x404c], edx
	jnz BuildBrushdAdjacencyWindingForSide_130
BuildBrushdAdjacencyWindingForSide_110:
	add ecx, 0x1
	cmp ecx, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_140
	add ebx, 0x1
	cmp [ebp-0xf06c], ebx
	jnz BuildBrushdAdjacencyWindingForSide_150
	mov edi, [ebp-0xf0e8]
	test edi, edi
	jle BuildBrushdAdjacencyWindingForSide_160
	mov dword [ebp-0xf0e4], 0x0
BuildBrushdAdjacencyWindingForSide_200:
	mov edi, [ebp-0xf0e4]
	lea edi, [ebp+edi*4-0x404c]
	mov [ebp-0xf070], edi
	mov ecx, [edi]
	mov esi, [ebp-0xf06c]
	test esi, esi
	jz BuildBrushdAdjacencyWindingForSide_170
	mov eax, [ebp-0xf06c]
	lea ebx, [ebp+eax*4-0x204c]
	lea edx, [ebp-0x204c]
	cmp edx, ebx
	jz BuildBrushdAdjacencyWindingForSide_170
BuildBrushdAdjacencyWindingForSide_190:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_180
	cmp ecx, [eax+0x10]
	jz BuildBrushdAdjacencyWindingForSide_180
	cmp ecx, [eax+0x14]
	jz BuildBrushdAdjacencyWindingForSide_180
	add edx, 0x4
	cmp edx, ebx
	jnz BuildBrushdAdjacencyWindingForSide_190
BuildBrushdAdjacencyWindingForSide_170:
	add dword [ebp-0xf0e4], 0x1
	mov edi, [ebp-0xf0e8]
	cmp [ebp-0xf0e4], edi
	jnz BuildBrushdAdjacencyWindingForSide_200
	cmp dword [ebp-0xf06c], 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
BuildBrushdAdjacencyWindingForSide_160:
	mov dword [ebp-0xf0fc], 0x0
BuildBrushdAdjacencyWindingForSide_370:
	sub dword [ebp-0xf06c], 0x1
	mov eax, [ebp-0xf06c]
	mov ecx, [ebp+eax*4-0x204c]
	mov eax, [ebp-0xf0fc]
	shl eax, 0xc
	mov [eax+ebp-0x904c], ecx
	mov edx, [ebp-0xf0fc]
	mov dword [ebp+edx*4-0x28], 0x1
	mov eax, ecx
	xor edx, edx
BuildBrushdAdjacencyWindingForSide_220:
	mov ebx, [ebp+0xc]
	cmp ebx, [eax+0xc]
	jnz BuildBrushdAdjacencyWindingForSide_210
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_220
	mov esi, 0xffffffff
BuildBrushdAdjacencyWindingForSide_850:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jz BuildBrushdAdjacencyWindingForSide_230
	mov edx, [ebp-0xf06c]
	mov [ebp-0xf074], edx
	mov ecx, edx
	shl ecx, 0x2
	mov [ebp-0xf078], ecx
	mov eax, [ebp-0xf0fc]
	shl eax, 0xc
	lea edi, [eax+ebp-0x9048]
	mov dword [ebp-0xf084], 0x1
	mov dword [ebp-0xf07c], 0x0
BuildBrushdAdjacencyWindingForSide_310:
	lea eax, [ebp-0x204c]
	add eax, [ebp-0xf078]
	lea ebx, [ebp-0x204c]
	cmp ebx, eax
	jz BuildBrushdAdjacencyWindingForSide_240
	mov edx, ebx
BuildBrushdAdjacencyWindingForSide_260:
	mov ebx, [edx]
	cmp esi, [ebx+0xc]
	jz BuildBrushdAdjacencyWindingForSide_250
	cmp esi, [ebx+0x10]
	jz BuildBrushdAdjacencyWindingForSide_250
	cmp esi, [ebx+0x14]
	jz BuildBrushdAdjacencyWindingForSide_250
	add edx, 0x4
	cmp eax, edx
	jnz BuildBrushdAdjacencyWindingForSide_260
BuildBrushdAdjacencyWindingForSide_240:
	xor ebx, ebx
BuildBrushdAdjacencyWindingForSide_510:
	mov [edi], ebx
	test ebx, ebx
	jz BuildBrushdAdjacencyWindingForSide_270
	mov edx, ebx
	xor ecx, ecx
BuildBrushdAdjacencyWindingForSide_300:
	mov eax, [edx+0xc]
	cmp [ebp+0xc], eax
	jz BuildBrushdAdjacencyWindingForSide_280
	cmp esi, eax
	jnz BuildBrushdAdjacencyWindingForSide_290
BuildBrushdAdjacencyWindingForSide_280:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_300
	mov esi, 0xffffffff
BuildBrushdAdjacencyWindingForSide_700:
	sub dword [ebp-0xf06c], 0x1
	add dword [ebp-0xf084], 0x1
	add dword [ebp-0xf07c], 0x1
	sub dword [ebp-0xf078], 0x4
	add edi, 0x4
	mov eax, [ebp-0xf07c]
	cmp [ebp-0xf074], eax
	jnz BuildBrushdAdjacencyWindingForSide_310
	mov ecx, [ebp-0xf084]
	mov edx, [ebp-0xf0fc]
	mov [ebp+edx*4-0x28], ecx
BuildBrushdAdjacencyWindingForSide_230:
	mov eax, [ebp-0xf0fc]
	test eax, eax
	jle BuildBrushdAdjacencyWindingForSide_320
	mov edi, [ebp-0x28]
	mov eax, [ebp+edi*4-0x9050]
	mov edx, [ebp-0x904c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0xf0f8], xmm0
	cmp edi, 0x1
	jg BuildBrushdAdjacencyWindingForSide_330
BuildBrushdAdjacencyWindingForSide_820:
	mov esi, [ebp-0x24]
	mov eax, [ebp+esi*4-0x8050]
	mov edx, [ebp-0x804c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0xf0f4], xmm0
	cmp esi, 0x1
	jg BuildBrushdAdjacencyWindingForSide_340
BuildBrushdAdjacencyWindingForSide_840:
	mov edx, edi
	lea eax, [ebp-0x904c]
	call TestConvexWithoutNearPoints
	mov ebx, eax
	mov edx, esi
	lea eax, [ebp-0x804c]
	call TestConvexWithoutNearPoints
	test bl, bl
	jz BuildBrushdAdjacencyWindingForSide_350
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_360
BuildBrushdAdjacencyWindingForSide_680:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jnz BuildBrushdAdjacencyWindingForSide_370
	mov eax, [ebp+0x18]
	test eax, eax
	jz BuildBrushdAdjacencyWindingForSide_380
	mov eax, [ebp+0x1c]
	cmp [ebp-0x28], eax
	jg BuildBrushdAdjacencyWindingForSide_390
	mov ebx, [ebp+0x18]
BuildBrushdAdjacencyWindingForSide_1550:
	lea ecx, [ebx+0x4]
	mov [ebp-0xf094], ecx
	mov esi, [ebp-0x28]
	mov [ebp-0xf100], esi
	mov edi, [ebp+esi*4-0x9050]
	mov [ebp-0xf0c4], edi
	mov ecx, [ebp-0x904c]
	mov esi, ecx
	xor edi, edi
BuildBrushdAdjacencyWindingForSide_420:
	mov eax, [esi+0xc]
	mov [ebp-0xf0c0], eax
	cmp [ebp+0xc], eax
	jnz BuildBrushdAdjacencyWindingForSide_400
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_410:
	add eax, 0x1
	cmp eax, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_410
BuildBrushdAdjacencyWindingForSide_1530:
	add edi, 0x1
	add esi, 0x4
	cmp edi, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_420
BuildBrushdAdjacencyWindingForSide_1540:
	mov eax, [ecx]
	mov [ebp-0xf04c], eax
	mov eax, [ecx+0x4]
	mov [ebp-0xf048], eax
	mov eax, [ecx+0x8]
	mov [ebp-0xf044], eax
	mov dword [ebx], 0x1
	cmp dword [ebp-0xf100], 0x1
	jle BuildBrushdAdjacencyWindingForSide_10
	mov dword [ebp-0xf0bc], 0x1
	mov ecx, 0x1
	mov [ebp-0xf10c], ecx
	mov eax, [ebp-0xf0bc]
BuildBrushdAdjacencyWindingForSide_470:
	sub eax, 0x1
	mov esi, [ebx+eax*4+0x4]
	mov edx, [ebp+eax*4-0x904c]
	mov edi, edx
	xor ecx, ecx
BuildBrushdAdjacencyWindingForSide_450:
	mov eax, [edx+0xc]
	cmp [ebp+0xc], eax
	jz BuildBrushdAdjacencyWindingForSide_430
	cmp esi, eax
	jnz BuildBrushdAdjacencyWindingForSide_440
BuildBrushdAdjacencyWindingForSide_430:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz BuildBrushdAdjacencyWindingForSide_450
	mov eax, 0xffffffff
BuildBrushdAdjacencyWindingForSide_1210:
	mov esi, [ebp-0xf0bc]
	mov [ebx+esi*4+0x4], eax
	mov edi, [ebp-0xf10c]
	lea ecx, [edi+edi*2]
	lea ecx, [ebp+ecx*4-0xf04c]
	mov edx, [ebp+edi*4-0x904c]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx]
	add eax, 0x1
	mov [ebp-0xf0bc], eax
	mov [ebp-0xf10c], eax
	mov [ebx], eax
	mov edx, [ebp-0xf0bc]
	cmp [ebp-0xf100], edx
	jle BuildBrushdAdjacencyWindingForSide_460
	mov eax, edx
	jmp BuildBrushdAdjacencyWindingForSide_470
BuildBrushdAdjacencyWindingForSide_80:
	xor ebx, ebx
	mov eax, [ebp-0xf0f0]
	shl eax, 0x2
	mov [ebp-0xf104], eax
	mov edx, eax
	jmp BuildBrushdAdjacencyWindingForSide_480
BuildBrushdAdjacencyWindingForSide_500:
	mov edx, [ebp-0xf104]
BuildBrushdAdjacencyWindingForSide_480:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3c23d70a
	mov eax, [ebp+ebx*4-0x104c]
	mov [esp+0x4], eax
	mov eax, [ebp+edx-0x204c]
	mov [esp], eax
	call VecNCompareCustomEpsilon
	test eax, eax
	jnz BuildBrushdAdjacencyWindingForSide_490
	add ebx, 0x1
	cmp ebx, edi
	jnz BuildBrushdAdjacencyWindingForSide_500
	jmp BuildBrushdAdjacencyWindingForSide_90
BuildBrushdAdjacencyWindingForSide_120:
	mov esi, [ebp-0xf0e8]
	mov [ebp+esi*4-0x404c], edx
	add esi, 0x1
	mov [ebp-0xf0e8], esi
	jmp BuildBrushdAdjacencyWindingForSide_110
BuildBrushdAdjacencyWindingForSide_250:
	cmp eax, edx
	jz BuildBrushdAdjacencyWindingForSide_240
	sub eax, edx
	sub eax, 0x4
	mov [esp+0x8], eax
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	jmp BuildBrushdAdjacencyWindingForSide_510
BuildBrushdAdjacencyWindingForSide_180:
	cmp edx, ebx
	jz BuildBrushdAdjacencyWindingForSide_170
	mov dword [ebp-0xf0e0], 0x0
BuildBrushdAdjacencyWindingForSide_580:
	mov esi, [ebp-0xf0e0]
	mov [ebp+esi*4-0x104c], eax
	add esi, 0x1
	mov [ebp-0xf0e0], esi
	add edx, 0x4
	cmp ebx, edx
	jz BuildBrushdAdjacencyWindingForSide_520
BuildBrushdAdjacencyWindingForSide_540:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_530
	cmp ecx, [eax+0x10]
	jz BuildBrushdAdjacencyWindingForSide_530
	cmp ecx, [eax+0x14]
	jz BuildBrushdAdjacencyWindingForSide_530
	add edx, 0x4
	cmp edx, ebx
	jnz BuildBrushdAdjacencyWindingForSide_540
BuildBrushdAdjacencyWindingForSide_520:
	cmp dword [ebp-0xf0e0], 0x2
	jle BuildBrushdAdjacencyWindingForSide_170
	mov edi, [ebp-0xf070]
	mov edi, [edi]
	mov [ebp-0xf0dc], edi
	mov dword [ebp-0x304c], 0x1
	mov dword [ebp-0xf0ec], 0x1
BuildBrushdAdjacencyWindingForSide_570:
	mov ecx, [ebp-0xf0ec]
	shl ecx, 0x2
	mov [ebp-0xf0d8], ecx
	mov ebx, [ebp+ecx-0x3050]
	mov [ebp-0xf0d4], ebx
	cmp [ebp-0xf0e0], ebx
	jle BuildBrushdAdjacencyWindingForSide_550
	mov edi, [ebp-0xf0ec]
	test edi, edi
	jg BuildBrushdAdjacencyWindingForSide_560
	xor esi, esi
BuildBrushdAdjacencyWindingForSide_670:
	cmp [ebp-0xf0ec], esi
	jnz BuildBrushdAdjacencyWindingForSide_570
BuildBrushdAdjacencyWindingForSide_610:
	mov eax, [ebp-0xf0d4]
	add eax, 0x1
	mov edx, [ebp-0xf0d8]
	mov [ebp+edx-0x304c], eax
	add dword [ebp-0xf0ec], 0x1
	jmp BuildBrushdAdjacencyWindingForSide_570
BuildBrushdAdjacencyWindingForSide_530:
	cmp edx, ebx
	jnz BuildBrushdAdjacencyWindingForSide_580
	jmp BuildBrushdAdjacencyWindingForSide_520
BuildBrushdAdjacencyWindingForSide_560:
	mov edi, [ebp-0xf0d4]
	lea ebx, [ebp+edi*4-0x104c]
	xor esi, esi
	xor edi, edi
BuildBrushdAdjacencyWindingForSide_600:
	lea eax, [ebp-0x304c]
	add eax, edi
	mov [ebp-0xf0d0], eax
	lea edx, [ebp-0x20]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x504c]
	mov [esp+0xc], ecx
	mov eax, [ebp-0xf0dc]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	lea edx, [esi*4]
	mov [ebp-0xf108], edx
	mov eax, [ebp+edx-0x304c]
	mov eax, [ebp+eax*4-0x1050]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_590
	add esi, 0x1
	add edi, 0x4
	cmp [ebp-0xf0ec], esi
	jnz BuildBrushdAdjacencyWindingForSide_600
	jmp BuildBrushdAdjacencyWindingForSide_610
BuildBrushdAdjacencyWindingForSide_550:
	mov ecx, [ebp-0xf0ec]
	test ecx, ecx
	jg BuildBrushdAdjacencyWindingForSide_620
BuildBrushdAdjacencyWindingForSide_860:
	cmp dword [ebp-0xf06c], 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
	mov edi, [ebp-0xf070]
	mov ecx, [edi]
	mov eax, [ebp-0xf06c]
	lea ebx, [ebp+eax*4-0x204c]
	lea edx, [ebp-0x204c]
	cmp ebx, edx
	jz BuildBrushdAdjacencyWindingForSide_170
BuildBrushdAdjacencyWindingForSide_640:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_630
	cmp ecx, [eax+0x10]
	jz BuildBrushdAdjacencyWindingForSide_630
	cmp ecx, [eax+0x14]
	jz BuildBrushdAdjacencyWindingForSide_630
	add edx, 0x4
	cmp ebx, edx
	jnz BuildBrushdAdjacencyWindingForSide_640
	jmp BuildBrushdAdjacencyWindingForSide_170
BuildBrushdAdjacencyWindingForSide_590:
	mov eax, [ebp-0xf0ec]
	sub eax, 0x1
	cmp eax, esi
	jle BuildBrushdAdjacencyWindingForSide_650
	mov ebx, [ebx]
	mov ecx, [ebp-0xf0d0]
	mov edx, [ecx]
	mov eax, [ebp-0xf0d4]
	sub eax, edx
	shl eax, 0x2
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x104c]
	mov [esp+0x4], edx
	add edx, 0x4
	mov [esp], edx
	call memmove
	mov edi, [ebp-0xf0d0]
	mov eax, [edi]
	mov [ebp+eax*4-0x104c], ebx
BuildBrushdAdjacencyWindingForSide_650:
	mov eax, [ebp-0xf108]
	mov edx, esi
BuildBrushdAdjacencyWindingForSide_660:
	add dword [ebp+eax-0x304c], 0x1
	add edx, 0x1
	add eax, 0x4
	cmp [ebp-0xf0ec], edx
	jg BuildBrushdAdjacencyWindingForSide_660
	jmp BuildBrushdAdjacencyWindingForSide_670
BuildBrushdAdjacencyWindingForSide_320:
	mov dword [ebp-0xf0fc], 0x1
	jmp BuildBrushdAdjacencyWindingForSide_680
BuildBrushdAdjacencyWindingForSide_350:
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_690
BuildBrushdAdjacencyWindingForSide_360:
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf0f4]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf0f8]
	ja BuildBrushdAdjacencyWindingForSide_690
	movss xmm0, dword [ebp-0xf0f8]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf0f4]
	ja BuildBrushdAdjacencyWindingForSide_680
	cmp edi, esi
	jle BuildBrushdAdjacencyWindingForSide_680
BuildBrushdAdjacencyWindingForSide_690:
	lea eax, [esi*4]
	mov [esp+0x8], eax
	lea edi, [ebp-0x804c]
	mov [esp+0x4], edi
	lea eax, [ebp-0x904c]
	mov [esp], eax
	call memcpy
	mov [ebp-0x28], esi
	jmp BuildBrushdAdjacencyWindingForSide_680
BuildBrushdAdjacencyWindingForSide_290:
	mov esi, [ebx+ecx*4+0xc]
	jmp BuildBrushdAdjacencyWindingForSide_700
BuildBrushdAdjacencyWindingForSide_630:
	cmp ebx, edx
	jz BuildBrushdAdjacencyWindingForSide_170
	mov dword [ebp-0xf0e0], 0x0
BuildBrushdAdjacencyWindingForSide_730:
	mov esi, [ebp-0xf0e0]
	mov [ebp+esi*4-0x104c], eax
	add esi, 0x1
	mov [ebp-0xf0e0], esi
BuildBrushdAdjacencyWindingForSide_720:
	add edx, 0x4
	cmp ebx, edx
	jz BuildBrushdAdjacencyWindingForSide_520
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_710
	cmp ecx, [eax+0x10]
	jz BuildBrushdAdjacencyWindingForSide_710
	cmp ecx, [eax+0x14]
	jnz BuildBrushdAdjacencyWindingForSide_720
BuildBrushdAdjacencyWindingForSide_710:
	cmp ebx, edx
	jnz BuildBrushdAdjacencyWindingForSide_730
	jmp BuildBrushdAdjacencyWindingForSide_520
BuildBrushdAdjacencyWindingForSide_620:
	mov edi, [ebp-0x304c]
	cmp edi, 0x1
	jz BuildBrushdAdjacencyWindingForSide_740
	cmp edi, 0x2
	jg BuildBrushdAdjacencyWindingForSide_750
	xor ecx, ecx
BuildBrushdAdjacencyWindingForSide_800:
	add ecx, 0x1
	cmp [ebp-0xf0ec], ecx
	jz BuildBrushdAdjacencyWindingForSide_760
	cmp ecx, 0x2
	jz BuildBrushdAdjacencyWindingForSide_770
	mov edx, [ebp+ecx*4-0x304c]
	mov eax, edx
	sub eax, edi
	cmp eax, 0x1
	jz BuildBrushdAdjacencyWindingForSide_780
	cmp eax, 0x2
	jg BuildBrushdAdjacencyWindingForSide_790
	mov edi, edx
	jmp BuildBrushdAdjacencyWindingForSide_800
BuildBrushdAdjacencyWindingForSide_270:
	mov edi, [ebp-0xf084]
	mov esi, [ebp-0xf0fc]
	mov [ebp+esi*4-0x28], edi
	jmp BuildBrushdAdjacencyWindingForSide_230
BuildBrushdAdjacencyWindingForSide_330:
	mov ebx, 0x1
	lea ecx, [ebp-0x9048]
BuildBrushdAdjacencyWindingForSide_810:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, [ebp-0xf0f8]
	movss [ebp-0xf0f8], xmm0
	add ebx, 0x1
	add ecx, 0x4
	cmp edi, ebx
	jnz BuildBrushdAdjacencyWindingForSide_810
	jmp BuildBrushdAdjacencyWindingForSide_820
BuildBrushdAdjacencyWindingForSide_340:
	mov ebx, 0x1
	lea ecx, [ebp-0x904c]
	add ecx, 0x1004
BuildBrushdAdjacencyWindingForSide_830:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, [ebp-0xf0f4]
	movss [ebp-0xf0f4], xmm0
	add ebx, 0x1
	add ecx, 0x4
	cmp esi, ebx
	jnz BuildBrushdAdjacencyWindingForSide_830
	jmp BuildBrushdAdjacencyWindingForSide_840
BuildBrushdAdjacencyWindingForSide_210:
	mov esi, [ecx+edx*4+0xc]
	jmp BuildBrushdAdjacencyWindingForSide_850
BuildBrushdAdjacencyWindingForSide_760:
	cmp dword [ebp-0xf0ec], 0x2
	jnz BuildBrushdAdjacencyWindingForSide_860
BuildBrushdAdjacencyWindingForSide_770:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	lea eax, [ebp-0x704c]
	mov [esp+0xc], eax
	mov edx, [ebp-0xf070]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1048]
	mov [esp+0x4], eax
	mov eax, [ebp-0x104c]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	lea eax, [ebp-0x2c]
	mov [esp+0x10], eax
	lea ecx, [ebp-0x604c]
	mov [esp+0xc], ecx
	mov ebx, [ebp-0xf070]
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1040]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1044]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	mov edi, [ebp-0x30]
	mov eax, [ebp+edi*4-0x7050]
	mov edx, [ebp-0x704c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0xf08c], xmm0
	cmp edi, 0x1
	jg BuildBrushdAdjacencyWindingForSide_870
BuildBrushdAdjacencyWindingForSide_1410:
	mov ebx, [ebp-0x2c]
	mov eax, [ebp+ebx*4-0x6050]
	mov edx, [ebp-0x604c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0xf090], xmm0
	cmp ebx, 0x1
	jg BuildBrushdAdjacencyWindingForSide_880
BuildBrushdAdjacencyWindingForSide_1360:
	mov edx, edi
	lea eax, [ebp-0x704c]
	call TestConvexWithoutNearPoints
	mov ebx, eax
	mov edx, [ebp-0x2c]
	lea eax, [ebp-0x604c]
	call TestConvexWithoutNearPoints
	mov ecx, [ebp-0x2c]
	mov edx, [ebp-0x30]
	test bl, bl
	jz BuildBrushdAdjacencyWindingForSide_890
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_900
BuildBrushdAdjacencyWindingForSide_1230:
	mov eax, [ebp-0x1044]
	mov edx, [ebp-0xf06c]
	test edx, edx
	jg BuildBrushdAdjacencyWindingForSide_910
BuildBrushdAdjacencyWindingForSide_1600:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jnz BuildBrushdAdjacencyWindingForSide_920
BuildBrushdAdjacencyWindingForSide_1590:
	mov edx, [ebp-0x1040]
	cmp dword [ebp-0xf06c], 0x0
	jg BuildBrushdAdjacencyWindingForSide_930
	jz BuildBrushdAdjacencyWindingForSide_10
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_1580:
	mov edx, eax
BuildBrushdAdjacencyWindingForSide_1640:
	mov esi, [ebp-0xf06c]
	sub esi, eax
	lea eax, [esi*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	jmp BuildBrushdAdjacencyWindingForSide_940
BuildBrushdAdjacencyWindingForSide_740:
	xor di, di
BuildBrushdAdjacencyWindingForSide_780:
	mov eax, [ebp+edi*4-0x104c]
	cmp dword [ebp-0xf06c], 0x0
	jle BuildBrushdAdjacencyWindingForSide_950
	cmp [ebp-0x204c], eax
	jz BuildBrushdAdjacencyWindingForSide_960
	xor edx, edx
BuildBrushdAdjacencyWindingForSide_970:
	add edx, 0x1
	cmp edx, [ebp-0xf06c]
	jz BuildBrushdAdjacencyWindingForSide_860
	cmp [ebp+edx*4-0x204c], eax
	jnz BuildBrushdAdjacencyWindingForSide_970
	jmp BuildBrushdAdjacencyWindingForSide_980
BuildBrushdAdjacencyWindingForSide_950:
	jz BuildBrushdAdjacencyWindingForSide_10
	xor edx, edx
BuildBrushdAdjacencyWindingForSide_980:
	mov ecx, edx
BuildBrushdAdjacencyWindingForSide_1490:
	mov eax, [ebp-0xf06c]
	sub eax, edx
	lea eax, [eax*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+ecx*4-0x204c]
BuildBrushdAdjacencyWindingForSide_940:
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	mov edx, [ebp-0xf06c]
	sub edx, 0x1
	cmp edx, 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
	lea eax, [ebp-0x204c]
	call RemovePtsWithPlanesThatOccurLessThanTwice
	mov [ebp-0xf06c], eax
	jmp BuildBrushdAdjacencyWindingForSide_860
BuildBrushdAdjacencyWindingForSide_750:
	xor edi, edi
BuildBrushdAdjacencyWindingForSide_790:
	lea ebx, [ebp+edi*4-0x104c]
	mov eax, [ebp-0xf070]
	mov esi, [eax]
	lea edx, [ebp-0x504c]
	mov [esp+0x10], edx
	lea ecx, [ebp-0xc04c]
	mov [esp+0xc], ecx
	mov [esp+0x8], esi
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	lea eax, [ebp-0x5048]
	mov [esp+0x10], eax
	lea eax, [ebp-0xb04c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	lea eax, [ebp-0x5044]
	mov [esp+0x10], eax
	lea edx, [ebp-0xa04c]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	mov ecx, [ebp-0xf06c]
	lea edx, [ebp-0x204c]
	mov eax, [ebp+0xc]
	call FindCycleBFS
	mov ecx, [ebp-0x504c]
	mov [ebp-0xf0cc], ecx
	mov eax, [ebp+ecx*4-0xc050]
	mov edx, [ebp-0xc04c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm3, xmm0
	sub ecx, 0x1
	jg BuildBrushdAdjacencyWindingForSide_990
BuildBrushdAdjacencyWindingForSide_1480:
	movss [ebp-0x3c], xmm3
	mov ebx, [ebp-0x5048]
	mov eax, [ebp+ebx*4-0xb050]
	mov edx, [ebp-0xb04c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm3, xmm0
	cmp ebx, 0x1
	jg BuildBrushdAdjacencyWindingForSide_1000
BuildBrushdAdjacencyWindingForSide_1460:
	movss [ebp-0x38], xmm3
	mov ebx, [ebp-0x5044]
	mov eax, [ebp+ebx*4-0xa050]
	mov edx, [ebp-0xa04c]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	movss [ebp-0xf0c8], xmm0
	cmp ebx, 0x1
	jg BuildBrushdAdjacencyWindingForSide_1010
BuildBrushdAdjacencyWindingForSide_1440:
	movss xmm0, dword [ebp-0xf0c8]
	movss [ebp-0x34], xmm0
	mov edx, [ebp-0xf0cc]
	lea eax, [ebp-0xc04c]
	call TestConvexWithoutNearPoints
	mov [ebp-0x1b], al
	mov edx, [ebp-0x5048]
	lea eax, [ebp-0xb04c]
	call TestConvexWithoutNearPoints
	mov [ebp-0x1a], al
	mov edx, [ebp-0x5044]
	lea eax, [ebp-0xa04c]
	call TestConvexWithoutNearPoints
	mov [ebp-0x19], al
	mov ebx, [ebp-0x5048]
	mov ecx, [ebp-0x504c]
	movss xmm3, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x3c]
	movzx edx, byte [ebp-0x1a]
	cmp byte [ebp-0x1b], 0x0
	jz BuildBrushdAdjacencyWindingForSide_1020
	test dl, dl
	jnz BuildBrushdAdjacencyWindingForSide_1030
BuildBrushdAdjacencyWindingForSide_1090:
	xor edx, edx
BuildBrushdAdjacencyWindingForSide_1100:
	mov ebx, [ebp-0x5044]
	mov ecx, [ebp+edx*4-0x504c]
	movss xmm1, dword [ebp+edx*4-0x3c]
	cmp byte [ebp+edx-0x1b], 0x0
	jz BuildBrushdAdjacencyWindingForSide_1040
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_1050
BuildBrushdAdjacencyWindingForSide_1120:
	mov eax, 0x2
	sub eax, edx
BuildBrushdAdjacencyWindingForSide_1130:
	lea eax, [edi+eax]
	mov eax, [ebp+eax*4-0x104c]
	cmp dword [ebp-0xf06c], 0x0
	jle BuildBrushdAdjacencyWindingForSide_950
	cmp [ebp-0x204c], eax
	jz BuildBrushdAdjacencyWindingForSide_960
	xor edx, edx
	jmp BuildBrushdAdjacencyWindingForSide_1060
BuildBrushdAdjacencyWindingForSide_1070:
	cmp [ebp+edx*4-0x204c], eax
	jz BuildBrushdAdjacencyWindingForSide_980
BuildBrushdAdjacencyWindingForSide_1060:
	add edx, 0x1
	cmp [ebp-0xf06c], edx
	jnz BuildBrushdAdjacencyWindingForSide_1070
	jmp BuildBrushdAdjacencyWindingForSide_860
BuildBrushdAdjacencyWindingForSide_1020:
	test dl, dl
	jnz BuildBrushdAdjacencyWindingForSide_1080
BuildBrushdAdjacencyWindingForSide_1030:
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja BuildBrushdAdjacencyWindingForSide_1080
	subss xmm1, xmm2
	ucomiss xmm1, xmm3
	ja BuildBrushdAdjacencyWindingForSide_1090
	cmp ebx, ecx
	jge BuildBrushdAdjacencyWindingForSide_1090
BuildBrushdAdjacencyWindingForSide_1080:
	mov edx, 0x1
	jmp BuildBrushdAdjacencyWindingForSide_1100
BuildBrushdAdjacencyWindingForSide_1040:
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_1110
BuildBrushdAdjacencyWindingForSide_1050:
	movss xmm2, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf0c8]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja BuildBrushdAdjacencyWindingForSide_1110
	subss xmm1, xmm2
	ucomiss xmm1, [ebp-0xf0c8]
	ja BuildBrushdAdjacencyWindingForSide_1120
	cmp ebx, ecx
	jge BuildBrushdAdjacencyWindingForSide_1120
BuildBrushdAdjacencyWindingForSide_1110:
	xor eax, eax
	jmp BuildBrushdAdjacencyWindingForSide_1130
BuildBrushdAdjacencyWindingForSide_460:
	cmp edx, 0x2
	jle BuildBrushdAdjacencyWindingForSide_10
	mov edi, 0x2
	lea ecx, [ebp-0xf04c]
	mov [ebp-0xf080], ecx
	mov dword [ebp-0xf064], 0x1
	mov dword [ebp-0xf068], 0x2
	pxor xmm0, xmm0
	movss [ebp-0xf05c], xmm0
	mov dword [ebp-0xf060], 0x0
BuildBrushdAdjacencyWindingForSide_1200:
	mov eax, [ebp-0xf080]
	movss xmm0, dword [eax+0x18]
	movss [ebp-0xf0b8], xmm0
	movss xmm0, dword [eax+0x1c]
	movss [ebp-0xf0b0], xmm0
	movss xmm0, dword [eax+0x20]
	movss [ebp-0xf0a8], xmm0
	mov ecx, 0x1
	lea esi, [ebp-0xf04c]
	movaps xmm6, xmm0
BuildBrushdAdjacencyWindingForSide_1180:
	movss xmm0, dword [esi+0xc]
	movss [ebp-0xf0b4], xmm0
	movss xmm0, dword [ebp-0xf0b8]
	subss xmm0, [ebp-0xf0b4]
	movss [ebp-0xf088], xmm0
	movss xmm0, dword [esi+0x10]
	movss [ebp-0xf0ac], xmm0
	movss xmm7, dword [ebp-0xf0b0]
	subss xmm7, xmm0
	movss xmm0, dword [esi+0x14]
	movss [ebp-0xf0a4], xmm0
	subss xmm6, xmm0
	test ecx, ecx
	jle BuildBrushdAdjacencyWindingForSide_1140
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	movss [ebp-0xf0a0], xmm0
	movss xmm0, dword [eax+0x4]
	movss [ebp-0xf09c], xmm0
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xf098], xmm0
	xor edx, edx
	lea eax, [ebp-0xf04c]
	movss xmm5, dword [_data16_7fffffff]
BuildBrushdAdjacencyWindingForSide_1160:
	movss xmm2, dword [eax]
	subss xmm2, [ebp-0xf0b4]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [ebp-0xf0ac]
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0xf0a4]
	movaps xmm4, xmm6
	mulss xmm4, xmm3
	movaps xmm1, xmm7
	mulss xmm1, xmm0
	subss xmm4, xmm1
	mulss xmm4, [ebp-0xf0a0]
	mulss xmm0, [ebp-0xf088]
	movaps xmm1, xmm6
	mulss xmm1, xmm2
	subss xmm0, xmm1
	mulss xmm0, [ebp-0xf09c]
	addss xmm4, xmm0
	mulss xmm2, xmm7
	mulss xmm3, [ebp-0xf088]
	subss xmm2, xmm3
	mulss xmm2, [ebp-0xf098]
	addss xmm4, xmm2
	andps xmm4, xmm5
	ucomiss xmm4, [ebp-0xf05c]
	jbe BuildBrushdAdjacencyWindingForSide_1150
	movss [ebp-0xf05c], xmm4
	mov [ebp-0xf060], edx
	mov [ebp-0xf064], ecx
	mov [ebp-0xf068], edi
BuildBrushdAdjacencyWindingForSide_1150:
	add edx, 0x1
	add eax, 0xc
	cmp ecx, edx
	jnz BuildBrushdAdjacencyWindingForSide_1160
BuildBrushdAdjacencyWindingForSide_1140:
	add ecx, 0x1
	add esi, 0xc
	cmp edi, ecx
	jz BuildBrushdAdjacencyWindingForSide_1170
	movss xmm6, dword [ebp-0xf0a8]
	jmp BuildBrushdAdjacencyWindingForSide_1180
BuildBrushdAdjacencyWindingForSide_1170:
	add edi, 0x1
	add dword [ebp-0xf080], 0xc
	cmp edi, [ebp-0xf0bc]
	jz BuildBrushdAdjacencyWindingForSide_1190
	cmp edi, 0x1
	jle BuildBrushdAdjacencyWindingForSide_1170
	jmp BuildBrushdAdjacencyWindingForSide_1200
BuildBrushdAdjacencyWindingForSide_440:
	mov eax, [edi+ecx*4+0xc]
	jmp BuildBrushdAdjacencyWindingForSide_1210
BuildBrushdAdjacencyWindingForSide_890:
	test al, al
	jnz BuildBrushdAdjacencyWindingForSide_1220
BuildBrushdAdjacencyWindingForSide_900:
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf090]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf08c]
	ja BuildBrushdAdjacencyWindingForSide_1220
	movss xmm0, dword [ebp-0xf08c]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf090]
	ja BuildBrushdAdjacencyWindingForSide_1230
	cmp ecx, edx
	jge BuildBrushdAdjacencyWindingForSide_1230
BuildBrushdAdjacencyWindingForSide_1220:
	mov edx, [ebp-0x104c]
	mov ebx, [ebp-0xf06c]
	test ebx, ebx
	jle BuildBrushdAdjacencyWindingForSide_1240
	cmp edx, [ebp-0x204c]
	jz BuildBrushdAdjacencyWindingForSide_1250
	xor eax, eax
	jmp BuildBrushdAdjacencyWindingForSide_1260
BuildBrushdAdjacencyWindingForSide_1280:
	cmp edx, [ebp+eax*4-0x204c]
	jz BuildBrushdAdjacencyWindingForSide_1270
BuildBrushdAdjacencyWindingForSide_1260:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jnz BuildBrushdAdjacencyWindingForSide_1280
	jmp BuildBrushdAdjacencyWindingForSide_1290
BuildBrushdAdjacencyWindingForSide_1240:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jz BuildBrushdAdjacencyWindingForSide_1290
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_1270:
	mov edx, eax
BuildBrushdAdjacencyWindingForSide_1420:
	mov ecx, [ebp-0xf06c]
	sub ecx, eax
	lea eax, [ecx*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	sub dword [ebp-0xf06c], 0x1
	cmp dword [ebp-0xf06c], 0x2
	jg BuildBrushdAdjacencyWindingForSide_1300
BuildBrushdAdjacencyWindingForSide_1290:
	mov edx, [ebp-0x1048]
	cmp dword [ebp-0xf06c], 0x0
	jg BuildBrushdAdjacencyWindingForSide_1310
	jz BuildBrushdAdjacencyWindingForSide_10
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_1340:
	mov edx, eax
BuildBrushdAdjacencyWindingForSide_1500:
	mov ebx, [ebp-0xf06c]
	sub ebx, eax
	lea eax, [ebx*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	jmp BuildBrushdAdjacencyWindingForSide_940
BuildBrushdAdjacencyWindingForSide_1310:
	cmp edx, [ebp-0x204c]
	jz BuildBrushdAdjacencyWindingForSide_1320
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_1330:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jz BuildBrushdAdjacencyWindingForSide_860
	cmp edx, [ebp+eax*4-0x204c]
	jnz BuildBrushdAdjacencyWindingForSide_1330
	jmp BuildBrushdAdjacencyWindingForSide_1340
BuildBrushdAdjacencyWindingForSide_880:
	mov esi, 0x1
	lea ecx, [ebp-0x704c]
	add ecx, 0x1004
BuildBrushdAdjacencyWindingForSide_1350:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, [ebp-0xf090]
	movss [ebp-0xf090], xmm0
	add esi, 0x1
	add ecx, 0x4
	cmp ebx, esi
	jnz BuildBrushdAdjacencyWindingForSide_1350
	jmp BuildBrushdAdjacencyWindingForSide_1360
BuildBrushdAdjacencyWindingForSide_1190:
	movss xmm0, dword [ebp-0xf05c]
	ucomiss xmm0, [_float_0_00100000]
	jp BuildBrushdAdjacencyWindingForSide_1370
	jb BuildBrushdAdjacencyWindingForSide_10
BuildBrushdAdjacencyWindingForSide_1370:
	mov edx, [ebp-0xf068]
	lea eax, [edx+edx*2]
	lea eax, [ebp+eax*4-0xf04c]
	mov [esp+0xc], eax
	mov ecx, [ebp-0xf064]
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*4-0xf04c]
	mov [esp+0x8], eax
	mov esi, [ebp-0xf060]
	lea eax, [esi+esi*2]
	lea eax, [ebp+eax*4-0xf04c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call PlaneFromPoints
	movss xmm1, dword [ebp-0x4c]
	mov edi, [ebp+0x8]
	mulss xmm1, [edi]
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jae BuildBrushdAdjacencyWindingForSide_1380
	jp BuildBrushdAdjacencyWindingForSide_1380
	mov eax, [ebx]
	lea ecx, [ebx+eax*4]
	cmp [ebp-0xf094], ecx
	jae BuildBrushdAdjacencyWindingForSide_1380
BuildBrushdAdjacencyWindingForSide_1390:
	mov eax, [ebp-0xf094]
	mov edx, [eax]
	mov eax, [ecx]
	mov esi, [ebp-0xf094]
	mov [esi], eax
	mov [ecx], edx
	sub ecx, 0x4
	add esi, 0x4
	mov [ebp-0xf094], esi
	cmp ecx, esi
	ja BuildBrushdAdjacencyWindingForSide_1390
	jmp BuildBrushdAdjacencyWindingForSide_1380
BuildBrushdAdjacencyWindingForSide_870:
	mov ebx, 0x1
	lea ecx, [ebp-0x7048]
BuildBrushdAdjacencyWindingForSide_1400:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, [ebp-0xf08c]
	movss [ebp-0xf08c], xmm0
	add ebx, 0x1
	add ecx, 0x4
	cmp edi, ebx
	jnz BuildBrushdAdjacencyWindingForSide_1400
	jmp BuildBrushdAdjacencyWindingForSide_1410
BuildBrushdAdjacencyWindingForSide_1300:
	mov edx, [ebp-0xf06c]
	lea eax, [ebp-0x204c]
	call RemovePtsWithPlanesThatOccurLessThanTwice
	mov [ebp-0xf06c], eax
	jmp BuildBrushdAdjacencyWindingForSide_1290
BuildBrushdAdjacencyWindingForSide_1250:
	xor eax, eax
	xor edx, edx
	jmp BuildBrushdAdjacencyWindingForSide_1420
BuildBrushdAdjacencyWindingForSide_1010:
	mov esi, 0x1
	lea ecx, [ebp-0xc04c]
	add ecx, 0x2004
BuildBrushdAdjacencyWindingForSide_1430:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm0, [ebp-0xf0c8]
	movss [ebp-0xf0c8], xmm0
	add esi, 0x1
	add ecx, 0x4
	cmp ebx, esi
	jnz BuildBrushdAdjacencyWindingForSide_1430
	jmp BuildBrushdAdjacencyWindingForSide_1440
BuildBrushdAdjacencyWindingForSide_1000:
	mov esi, 0x1
	lea ecx, [ebp-0xc04c]
	add ecx, 0x1004
BuildBrushdAdjacencyWindingForSide_1450:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm3, xmm0
	add esi, 0x1
	add ecx, 0x4
	cmp ebx, esi
	jnz BuildBrushdAdjacencyWindingForSide_1450
	jmp BuildBrushdAdjacencyWindingForSide_1460
BuildBrushdAdjacencyWindingForSide_990:
	mov ebx, 0x1
	lea ecx, [ebp-0xc048]
BuildBrushdAdjacencyWindingForSide_1470:
	mov eax, [ecx-0x4]
	mov edx, [ecx]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	addss xmm3, xmm0
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0xf0cc], ebx
	jnz BuildBrushdAdjacencyWindingForSide_1470
	jmp BuildBrushdAdjacencyWindingForSide_1480
BuildBrushdAdjacencyWindingForSide_960:
	xor edx, edx
	xor ecx, ecx
	jmp BuildBrushdAdjacencyWindingForSide_1490
BuildBrushdAdjacencyWindingForSide_1320:
	xor eax, eax
	xor edx, edx
	jmp BuildBrushdAdjacencyWindingForSide_1500
BuildBrushdAdjacencyWindingForSide_400:
	mov edx, [ebp-0xf0c4]
	mov [ebp-0xf11c], edx
	mov dword [ebp-0xf12c], 0x0
BuildBrushdAdjacencyWindingForSide_1520:
	mov edx, [ebp-0xf0c0]
	mov eax, [ebp-0xf11c]
	cmp edx, [eax+0xc]
	jz BuildBrushdAdjacencyWindingForSide_1510
	add dword [ebp-0xf12c], 0x1
	add eax, 0x4
	mov [ebp-0xf11c], eax
	cmp dword [ebp-0xf12c], 0x3
	jnz BuildBrushdAdjacencyWindingForSide_1520
	jmp BuildBrushdAdjacencyWindingForSide_1530
BuildBrushdAdjacencyWindingForSide_390:
	mov dword [esp+0x4], _cstring_brush_face_has_t
	mov dword [esp], 0x1
	call Com_PrintError
	xor ebx, ebx
	jmp BuildBrushdAdjacencyWindingForSide_1380
BuildBrushdAdjacencyWindingForSide_1510:
	mov eax, [ecx+edi*4+0xc]
	mov edx, [ebp-0xf094]
	mov [edx], eax
	mov ecx, [ebp-0x904c]
	jmp BuildBrushdAdjacencyWindingForSide_1540
BuildBrushdAdjacencyWindingForSide_380:
	xor ebx, ebx
	jmp BuildBrushdAdjacencyWindingForSide_1550
BuildBrushdAdjacencyWindingForSide_930:
	cmp edx, [ebp-0x204c]
	jz BuildBrushdAdjacencyWindingForSide_1560
	xor eax, eax
BuildBrushdAdjacencyWindingForSide_1570:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jz BuildBrushdAdjacencyWindingForSide_860
	cmp [ebp+eax*4-0x204c], edx
	jnz BuildBrushdAdjacencyWindingForSide_1570
	jmp BuildBrushdAdjacencyWindingForSide_1580
BuildBrushdAdjacencyWindingForSide_920:
	xor edx, edx
BuildBrushdAdjacencyWindingForSide_1620:
	mov eax, [ebp-0xf06c]
	sub eax, edx
	lea eax, [eax*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	sub dword [ebp-0xf06c], 0x1
	cmp dword [ebp-0xf06c], 0x2
	jle BuildBrushdAdjacencyWindingForSide_1590
	mov edx, [ebp-0xf06c]
	lea eax, [ebp-0x204c]
	call RemovePtsWithPlanesThatOccurLessThanTwice
	mov [ebp-0xf06c], eax
	jmp BuildBrushdAdjacencyWindingForSide_1590
BuildBrushdAdjacencyWindingForSide_910:
	cmp [ebp-0x204c], eax
	jz BuildBrushdAdjacencyWindingForSide_1600
	xor edx, edx
	jmp BuildBrushdAdjacencyWindingForSide_1610
BuildBrushdAdjacencyWindingForSide_1630:
	cmp [ebp+edx*4-0x204c], eax
	jz BuildBrushdAdjacencyWindingForSide_1620
BuildBrushdAdjacencyWindingForSide_1610:
	add edx, 0x1
	cmp edx, [ebp-0xf06c]
	jnz BuildBrushdAdjacencyWindingForSide_1630
	jmp BuildBrushdAdjacencyWindingForSide_1590
BuildBrushdAdjacencyWindingForSide_1560:
	xor eax, eax
	xor edx, edx
	jmp BuildBrushdAdjacencyWindingForSide_1640


;Initialized global or static variables of brush_edges:
SECTION .data


;Initialized constant data of brush_edges:
SECTION .rdata


;Zero initialized global or static variables of brush_edges:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_brush_face_has_t:		db "Brush face has too many edges",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_01000000:		dq 0x3f847ae147ae147b	; 0.01
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0

align   16,db 0
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
