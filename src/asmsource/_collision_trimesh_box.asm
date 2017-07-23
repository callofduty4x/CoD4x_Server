;Imports of collision_trimesh_box:
	extern circleCoords.131667
	extern dNormalize3

;Exports of collision_trimesh_box:
	global _cldClipPolyToPlane
	global dCollideBoxTriangleList


SECTION .text


;_cldClipPolyToPlane(collData_t*, float (*) [4], int, float (*) [4], int&, float const (&) [4])
_cldClipPolyToPlane:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov [ebp-0x14], edx
	mov [ebp-0x18], ecx
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp-0x18]
	sub eax, 0x1
	mov ecx, [ebp-0x18]
	test ecx, ecx
	jle _cldClipPolyToPlane_10
	mov dword [ebp-0x10], 0x0
	pxor xmm7, xmm7
	mov ebx, edx
	jmp _cldClipPolyToPlane_20
_cldClipPolyToPlane_60:
	mov [ebp-0x10], edx
_cldClipPolyToPlane_20:
	movss xmm4, dword [edi]
	shl eax, 0x4
	mov edx, [ebp-0x14]
	lea ecx, [eax+edx]
	movss xmm6, dword [ecx]
	movss xmm1, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movss xmm3, dword [edi+0xc]
	movaps xmm5, xmm4
	mulss xmm5, xmm6
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm5, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm5, xmm0
	addss xmm5, xmm3
	mulss xmm4, [ebx]
	mulss xmm1, [ebx+0x4]
	addss xmm4, xmm1
	mulss xmm2, [ebx+0x8]
	addss xmm4, xmm2
	addss xmm4, xmm3
	ucomiss xmm5, xmm7
	jb _cldClipPolyToPlane_30
	mov eax, [esi]
	shl eax, 0x4
	mov edx, [ebp+0x8]
	movss [eax+edx], xmm6
	mov eax, [esi]
	shl eax, 0x4
	movss xmm0, dword [ecx+0x4]
	movss [eax+edx+0x4], xmm0
	mov eax, [esi]
	shl eax, 0x4
	movss xmm0, dword [ecx+0x8]
	movss [eax+edx+0x8], xmm0
	mov eax, [esi]
	add eax, 0x1
	mov [esi], eax
	ucomiss xmm5, xmm7
	jbe _cldClipPolyToPlane_30
	ucomiss xmm7, xmm4
	ja _cldClipPolyToPlane_40
_cldClipPolyToPlane_30:
	ucomiss xmm7, xmm5
	jbe _cldClipPolyToPlane_50
	ucomiss xmm4, xmm7
	jbe _cldClipPolyToPlane_50
	mov eax, [esi]
_cldClipPolyToPlane_40:
	movss xmm2, dword [ecx]
	movaps xmm3, xmm5
	subss xmm3, xmm4
	movss xmm4, dword [ecx+0x4]
	movaps xmm0, xmm4
	subss xmm0, [ebx+0x4]
	mulss xmm0, xmm5
	divss xmm0, xmm3
	subss xmm4, xmm0
	movss xmm1, dword [ecx+0x8]
	movaps xmm0, xmm1
	subss xmm0, [ebx+0x8]
	mulss xmm0, xmm5
	divss xmm0, xmm3
	subss xmm1, xmm0
	shl eax, 0x4
	movaps xmm0, xmm2
	subss xmm0, [ebx]
	mulss xmm5, xmm0
	divss xmm5, xmm3
	subss xmm2, xmm5
	mov edx, [ebp+0x8]
	movss [eax+edx], xmm2
	mov eax, [esi]
	shl eax, 0x4
	movss [eax+edx+0x4], xmm4
	mov eax, [esi]
	shl eax, 0x4
	movss [eax+edx+0x8], xmm1
	add dword [esi], 0x1
_cldClipPolyToPlane_50:
	mov edx, [ebp-0x10]
	add edx, 0x1
	add ebx, 0x10
	mov eax, [ebp-0x10]
	cmp [ebp-0x18], edx
	jnz _cldClipPolyToPlane_60
_cldClipPolyToPlane_10:
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;dCollideBoxTriangleList
dCollideBoxTriangleList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ac
	mov edx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	mov ebx, [ebp+0x1c]
	mov eax, [edx]
	mov [ebp-0x344], eax
	mov eax, [edx+0x4]
	mov [ebp-0x340], eax
	mov eax, [edx+0x8]
	mov [ebp-0x33c], eax
	mov eax, [edx+0xc]
	mov [ebp-0x338], eax
	mov eax, [edx+0x10]
	mov [ebp-0x334], eax
	mov eax, [edx+0x14]
	mov [ebp-0x330], eax
	mov eax, [edx+0x18]
	mov [ebp-0x32c], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x328], eax
	mov eax, [edx+0x20]
	mov [ebp-0x324], eax
	mov eax, [edx+0x24]
	mov [ebp-0x320], eax
	mov eax, [edx+0x28]
	mov [ebp-0x31c], eax
	mov eax, [edx+0x2c]
	mov [ebp-0x318], eax
	mov eax, [ecx]
	mov [ebp-0x314], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x310], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x30c], eax
	mov eax, [ebx]
	mov [ebp-0x304], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x300], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x2fc], eax
	mov dword [ebp-0x288], 0x0
	mov eax, [ebp+0x2c]
	mov [ebp-0x294], eax
	mov eax, [ebp+0x24]
	mov [ebp-0x29c], eax
	mov eax, [ebp+0x28]
	mov [ebp-0x298], eax
	mov dword [ebp-0x2e4], 0x7f7fffff
	mov dword [ebp-0x2f4], 0x0
	mov dword [ebp-0x2f0], 0x0
	mov dword [ebp-0x2ec], 0x0
	mov eax, [ebp+0x20]
	mov [ebp-0x284], eax
	mov eax, [ebp+0x10]
	test eax, eax
	jle dCollideBoxTriangleList_10
	movzx eax, word [ebp-0x29c]
	cmp eax, [ebp-0x288]
	jle dCollideBoxTriangleList_10
	mov edi, [ebp+0x8]
	xor esi, esi
dCollideBoxTriangleList_50:
	movzx eax, word [edi]
	lea eax, [eax+eax*2]
	mov edx, [ebp+0xc]
	lea eax, [edx+eax*4]
	movss xmm2, dword [eax]
	movss [ebp-0xa0], xmm2
	mov edx, [eax+0x4]
	mov [ebp-0x9c], edx
	mov eax, [eax+0x8]
	mov [ebp-0x98], eax
	mov dword [ebp-0x94], 0x0
	movzx eax, word [edi+0x2]
	lea eax, [eax+eax*2]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+eax*4]
	movss xmm0, dword [eax]
	movss [ebp-0x90], xmm0
	mov ecx, [eax+0x4]
	mov [ebp-0x8c], ecx
	mov ebx, [eax+0x8]
	mov [ebp-0x88], ebx
	mov dword [ebp-0x84], 0x0
	movzx eax, word [edi+0x4]
	lea eax, [eax+eax*2]
	mov edx, [ebp+0xc]
	lea eax, [edx+eax*4]
	add edi, 0x6
	mov edx, [eax]
	mov [ebp-0x80], edx
	mov edx, [eax+0x4]
	mov [ebp-0x7c], edx
	mov eax, [eax+0x8]
	mov [ebp-0x78], eax
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x2e0], 0x0
	mov dword [ebp-0x2e4], 0x7f7fffff
	mov dword [ebp-0x2f4], 0x0
	mov dword [ebp-0x2f0], 0x0
	mov dword [ebp-0x2ec], 0x0
	movaps xmm7, xmm0
	subss xmm7, [ebp-0x80]
	movss [ebp-0x2dc], xmm7
	mov [ebp-0x454], ecx
	movss xmm5, dword [ebp-0x454]
	subss xmm5, [ebp-0x7c]
	movss [ebp-0x2d8], xmm5
	mov [ebp-0x44c], ebx
	movss xmm6, dword [ebp-0x44c]
	subss xmm6, [ebp-0x78]
	movss [ebp-0x2d4], xmm6
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	ucomiss xmm0, [_float_0_01000000]
	jp dCollideBoxTriangleList_20
	jb dCollideBoxTriangleList_30
dCollideBoxTriangleList_20:
	movaps xmm4, xmm2
	subss xmm4, [ebp-0x80]
	movss [ebp-0x2cc], xmm4
	movss xmm3, dword [ebp-0x9c]
	subss xmm3, [ebp-0x7c]
	movss [ebp-0x2c8], xmm3
	movss xmm2, dword [ebp-0x98]
	subss xmm2, [ebp-0x78]
	movss [ebp-0x2c4], xmm2
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	movss xmm1, dword [_float_0_01000000]
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	subss xmm4, xmm7
	movss [ebp-0x2bc], xmm4
	subss xmm3, xmm5
	movss [ebp-0x2b8], xmm3
	subss xmm2, xmm6
	movss [ebp-0x2b4], xmm2
	mulss xmm4, xmm4
	mulss xmm3, xmm3
	addss xmm4, xmm3
	mulss xmm2, xmm2
	addss xmm4, xmm2
	ucomiss xmm1, xmm4
	jbe dCollideBoxTriangleList_40
dCollideBoxTriangleList_30:
	add esi, 0x1
	cmp [ebp+0x10], esi
	jz dCollideBoxTriangleList_10
	movzx eax, word [ebp-0x29c]
	cmp eax, [ebp-0x288]
	jg dCollideBoxTriangleList_50
dCollideBoxTriangleList_10:
	mov eax, [ebp-0x288]
	add esp, 0x4ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dCollideBoxTriangleList_40:
	movaps xmm3, xmm5
	mulss xmm3, [ebp-0x2c4]
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x2c8]
	subss xmm3, xmm0
	movss [ebp-0x2ac], xmm3
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x2cc]
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x2c4]
	subss xmm1, xmm0
	movss [ebp-0x2a8], xmm1
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x2c8]
	mulss xmm5, [ebp-0x2cc]
	subss xmm0, xmm5
	movss [ebp-0x2a4], xmm0
	movaps xmm2, xmm3
	mulss xmm2, xmm3
	mulss xmm1, xmm1
	addss xmm2, xmm1
	mulss xmm0, xmm0
	addss xmm2, xmm0
	sqrtss xmm2, xmm2
	movss [ebp-0x42c], xmm2
	movaps xmm0, xmm2
	xorps xmm0, [circleCoords.131667+0x3a0]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb dCollideBoxTriangleList_60
	movss xmm0, dword [_float_1_00000000]
dCollideBoxTriangleList_650:
	movaps xmm5, xmm0
	mulss xmm5, xmm3
	movss [ebp-0x2ac], xmm5
	movaps xmm6, xmm0
	mulss xmm6, [ebp-0x2a8]
	movss [ebp-0x2a8], xmm6
	movaps xmm7, xmm0
	mulss xmm7, [ebp-0x2a4]
	movss [ebp-0x2a4], xmm7
	movss xmm0, dword [_float_0_01000000]
	ucomiss xmm0, [ebp-0x42c]
	ja dCollideBoxTriangleList_30
	movss xmm1, dword [ebp-0x344]
	movss [ebp-0x3f8], xmm1
	movss xmm0, dword [ebp-0x334]
	movss [ebp-0x3fc], xmm0
	movss xmm1, dword [ebp-0x324]
	movss [ebp-0x400], xmm1
	movss xmm0, dword [ebp-0x340]
	movss [ebp-0x3ec], xmm0
	movss xmm1, dword [ebp-0x330]
	movss [ebp-0x3f0], xmm1
	movss xmm0, dword [ebp-0x320]
	movss [ebp-0x3f4], xmm0
	movss xmm1, dword [ebp-0x33c]
	movss [ebp-0x3e0], xmm1
	movss xmm0, dword [ebp-0x32c]
	movss [ebp-0x3e4], xmm0
	movss xmm1, dword [ebp-0x31c]
	movss [ebp-0x3e8], xmm1
	movss xmm1, dword [ebp-0x80]
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x314]
	movss [ebp-0x3d4], xmm0
	movss xmm2, dword [ebp-0x7c]
	movaps xmm0, xmm2
	subss xmm0, [ebp-0x310]
	movss [ebp-0x3d8], xmm0
	movss xmm3, dword [ebp-0x78]
	movaps xmm0, xmm3
	subss xmm0, [ebp-0x30c]
	movss [ebp-0x3dc], xmm0
	mov eax, [ebp-0x284]
	movaps xmm4, xmm5
	mulss xmm4, [eax]
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	addss xmm4, xmm0
	mulss xmm1, xmm5
	mulss xmm2, xmm6
	addss xmm1, xmm2
	mulss xmm3, xmm7
	addss xmm1, xmm3
	subss xmm4, xmm1
	movss xmm3, dword [ebp-0x3d4]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, xmm6
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	pxor xmm1, xmm1
	ucomiss xmm3, xmm1
	jb dCollideBoxTriangleList_70
	ucomiss xmm1, xmm4
	ja dCollideBoxTriangleList_30
dCollideBoxTriangleList_70:
	movss xmm2, dword [ebp-0x3f8]
	mulss xmm2, xmm5
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, xmm7
	addss xmm2, xmm0
	andps xmm2, [circleCoords.131667+0x3b0]
	mulss xmm2, [ebp-0x304]
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3f4]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x300]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x3e4]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3e8]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm2, xmm0
	addss xmm2, xmm3
	pxor xmm1, xmm1
	ucomiss xmm1, xmm2
	ja dCollideBoxTriangleList_30
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	mulss xmm2, xmm1
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm2
	jbe dCollideBoxTriangleList_80
	xorps xmm5, [circleCoords.131667+0x3a0]
	mulss xmm5, xmm1
	movss [ebp-0x2f4], xmm5
	xorps xmm6, [circleCoords.131667+0x3a0]
	mulss xmm6, xmm1
	movss [ebp-0x2f0], xmm6
	xorps xmm7, [circleCoords.131667+0x3a0]
	mulss xmm7, xmm1
	movss [ebp-0x2ec], xmm7
	mov dword [ebp-0x2e0], 0x1
	movss [ebp-0x2e4], xmm2
dCollideBoxTriangleList_80:
	movss xmm3, dword [ebp-0x3f8]
	mulss xmm3, [ebp-0x3d4]
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x3d8]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, [ebp-0x3dc]
	addss xmm3, xmm0
	movss xmm2, dword [ebp-0x3f8]
	mulss xmm2, [ebp-0x2dc]
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x2d8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, [ebp-0x2d4]
	addss xmm2, xmm0
	addss xmm2, xmm3
	movss xmm1, dword [ebp-0x3f8]
	mulss xmm1, [ebp-0x2cc]
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x2c8]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, [ebp-0x2c4]
	addss xmm1, xmm0
	addss xmm1, xmm3
	movss xmm4, dword [ebp-0x304]
	ucomiss xmm2, xmm3
	jbe dCollideBoxTriangleList_90
	ucomiss xmm1, xmm3
	jbe dCollideBoxTriangleList_100
	movaps xmm0, xmm3
dCollideBoxTriangleList_660:
	ucomiss xmm3, xmm2
	jbe dCollideBoxTriangleList_110
	ucomiss xmm3, xmm1
	jbe dCollideBoxTriangleList_120
	movaps xmm1, xmm3
dCollideBoxTriangleList_120:
	movaps xmm2, xmm4
	subss xmm2, xmm0
	movaps xmm3, xmm1
	addss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja dCollideBoxTriangleList_30
	ucomiss xmm0, xmm3
	ja dCollideBoxTriangleList_30
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x2ac]
	movss xmm1, dword [ebp-0x3fc]
	mulss xmm1, [ebp-0x2a8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x400]
	mulss xmm1, [ebp-0x2a4]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_130
	movss xmm5, dword [ebp-0x3f8]
	xorps xmm5, [circleCoords.131667+0x3a0]
	movss xmm1, dword [ebp-0x3fc]
	xorps xmm1, [circleCoords.131667+0x3a0]
	movss xmm4, dword [ebp-0x400]
	xorps xmm4, [circleCoords.131667+0x3a0]
	movaps xmm2, xmm3
dCollideBoxTriangleList_690:
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm2
	jbe dCollideBoxTriangleList_140
	movss [ebp-0x2f4], xmm5
	movss [ebp-0x2f0], xmm1
	movss [ebp-0x2ec], xmm4
	mov dword [ebp-0x2e0], 0x2
	movss [ebp-0x2e4], xmm2
dCollideBoxTriangleList_140:
	movss xmm3, dword [ebp-0x3ec]
	mulss xmm3, [ebp-0x3d4]
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x3d8]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x3dc]
	addss xmm3, xmm0
	movss xmm2, dword [ebp-0x3ec]
	mulss xmm2, [ebp-0x2dc]
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x2d8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x2d4]
	addss xmm2, xmm0
	addss xmm2, xmm3
	movss xmm1, dword [ebp-0x3ec]
	mulss xmm1, [ebp-0x2cc]
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x2c8]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x2c4]
	addss xmm1, xmm0
	addss xmm1, xmm3
	movss xmm4, dword [ebp-0x300]
	ucomiss xmm2, xmm3
	jbe dCollideBoxTriangleList_150
	ucomiss xmm1, xmm3
	jbe dCollideBoxTriangleList_160
	movaps xmm0, xmm3
dCollideBoxTriangleList_670:
	ucomiss xmm3, xmm2
	jbe dCollideBoxTriangleList_170
	ucomiss xmm3, xmm1
	jbe dCollideBoxTriangleList_180
	movaps xmm1, xmm3
dCollideBoxTriangleList_180:
	movaps xmm2, xmm4
	subss xmm2, xmm0
	movaps xmm3, xmm1
	addss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja dCollideBoxTriangleList_30
	ucomiss xmm0, xmm3
	ja dCollideBoxTriangleList_30
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x2ac]
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x2a8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3f4]
	mulss xmm1, [ebp-0x2a4]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_190
	movss xmm5, dword [ebp-0x3ec]
	xorps xmm5, [circleCoords.131667+0x3a0]
	movss xmm1, dword [ebp-0x3f0]
	xorps xmm1, [circleCoords.131667+0x3a0]
	movss xmm4, dword [ebp-0x3f4]
	xorps xmm4, [circleCoords.131667+0x3a0]
	movaps xmm2, xmm3
dCollideBoxTriangleList_700:
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm2
	jbe dCollideBoxTriangleList_200
	movss [ebp-0x2f4], xmm5
	movss [ebp-0x2f0], xmm1
	movss [ebp-0x2ec], xmm4
	mov dword [ebp-0x2e0], 0x3
	movss [ebp-0x2e4], xmm2
dCollideBoxTriangleList_200:
	movss xmm3, dword [ebp-0x3e0]
	mulss xmm3, [ebp-0x3d4]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x3d8]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x3dc]
	addss xmm3, xmm0
	movss xmm2, dword [ebp-0x3e0]
	mulss xmm2, [ebp-0x2dc]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x2d8]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x2d4]
	addss xmm2, xmm0
	addss xmm2, xmm3
	movss xmm1, dword [ebp-0x3e0]
	mulss xmm1, [ebp-0x2cc]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x2c8]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x2c4]
	addss xmm1, xmm0
	addss xmm1, xmm3
	movss xmm4, dword [ebp-0x2fc]
	ucomiss xmm2, xmm3
	jbe dCollideBoxTriangleList_210
	ucomiss xmm1, xmm3
	jbe dCollideBoxTriangleList_220
	movaps xmm0, xmm3
dCollideBoxTriangleList_680:
	ucomiss xmm3, xmm2
	jbe dCollideBoxTriangleList_230
	ucomiss xmm3, xmm1
	jbe dCollideBoxTriangleList_240
	movaps xmm1, xmm3
dCollideBoxTriangleList_240:
	movaps xmm2, xmm4
	subss xmm2, xmm0
	movaps xmm3, xmm1
	addss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm2
	ja dCollideBoxTriangleList_30
	ucomiss xmm0, xmm3
	ja dCollideBoxTriangleList_30
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, [ebp-0x2ac]
	movss xmm1, dword [ebp-0x3e4]
	mulss xmm1, [ebp-0x2a8]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3e8]
	mulss xmm1, [ebp-0x2a4]
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_250
	movss xmm5, dword [ebp-0x3e0]
	xorps xmm5, [circleCoords.131667+0x3a0]
	movss xmm1, dword [ebp-0x3e4]
	xorps xmm1, [circleCoords.131667+0x3a0]
	movss xmm4, dword [ebp-0x3e8]
	xorps xmm4, [circleCoords.131667+0x3a0]
	movaps xmm2, xmm3
dCollideBoxTriangleList_710:
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm2
	jbe dCollideBoxTriangleList_260
	movss [ebp-0x2f4], xmm5
	movss [ebp-0x2f0], xmm1
	movss [ebp-0x2ec], xmm4
	mov dword [ebp-0x2e0], 0x4
	movss [ebp-0x2e4], xmm2
dCollideBoxTriangleList_260:
	movss xmm0, dword [ebp-0x2d4]
	movss [ebp-0x438], xmm0
	movss xmm1, dword [ebp-0x2d8]
	movss [ebp-0x434], xmm1
	movss xmm6, dword [ebp-0x3fc]
	mulss xmm6, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm0, dword [ebp-0x2dc]
	movss [ebp-0x430], xmm0
	movss xmm7, dword [ebp-0x400]
	mulss xmm7, xmm0
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x438]
	subss xmm7, xmm0
	movss xmm5, dword [ebp-0x3f8]
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x430]
	subss xmm5, xmm0
	movss xmm4, dword [ebp-0x3d4]
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, xmm7
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm5
	addss xmm4, xmm0
	movss xmm1, dword [ebp-0x3f8]
	mulss xmm1, [ebp-0x2ac]
	movss [ebp-0x45c], xmm1
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x2a8]
	movss [ebp-0x468], xmm0
	movaps xmm3, xmm1
	addss xmm3, xmm0
	movss xmm1, dword [ebp-0x400]
	mulss xmm1, [ebp-0x2a4]
	movss [ebp-0x470], xmm1
	addss xmm3, xmm1
	mulss xmm3, [ebp-0x42c]
	addss xmm3, xmm4
	movss xmm2, dword [ebp-0x3e0]
	mulss xmm2, [ebp-0x430]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x434]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x438]
	addss xmm2, xmm0
	andps xmm2, [circleCoords.131667+0x3b0]
	mulss xmm2, [ebp-0x300]
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x430]
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x434]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3f4]
	mulss xmm1, [ebp-0x438]
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm2, xmm0
	ucomiss xmm3, xmm4
	jbe dCollideBoxTriangleList_270
	movaps xmm0, xmm4
	movaps xmm4, xmm3
	movaps xmm3, xmm0
dCollideBoxTriangleList_270:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	movaps xmm3, xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm1, xmm3
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm3, xmm0
	jbe dCollideBoxTriangleList_280
	xorps xmm6, [circleCoords.131667+0x3a0]
	xorps xmm7, [circleCoords.131667+0x3a0]
	xorps xmm5, [circleCoords.131667+0x3a0]
	movaps xmm3, xmm0
dCollideBoxTriangleList_280:
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_290
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	mulss xmm3, xmm2
	movaps xmm1, xmm3
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_290
	mulss xmm6, xmm2
	movss [ebp-0x2f4], xmm6
	mulss xmm7, xmm2
	movss [ebp-0x2f0], xmm7
	mulss xmm5, xmm2
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0x5
	movss [ebp-0x2e4], xmm3
dCollideBoxTriangleList_290:
	movss xmm0, dword [ebp-0x2c4]
	movss [ebp-0x444], xmm0
	movss xmm1, dword [ebp-0x2c8]
	movss [ebp-0x440], xmm1
	movss xmm6, dword [ebp-0x3fc]
	mulss xmm6, xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, xmm1
	subss xmm6, xmm0
	movss xmm0, dword [ebp-0x2cc]
	movss [ebp-0x43c], xmm0
	movss xmm7, dword [ebp-0x400]
	mulss xmm7, xmm0
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x444]
	subss xmm7, xmm0
	movss xmm5, dword [ebp-0x3f8]
	mulss xmm5, xmm1
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x43c]
	subss xmm5, xmm0
	movss xmm3, dword [ebp-0x3d4]
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, xmm7
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm5
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x45c]
	addss xmm0, [ebp-0x468]
	addss xmm0, [ebp-0x470]
	mulss xmm0, [ebp-0x42c]
	movaps xmm4, xmm3
	subss xmm4, xmm0
	movss xmm2, dword [ebp-0x3e0]
	mulss xmm2, [ebp-0x43c]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, xmm1
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x444]
	addss xmm2, xmm0
	andps xmm2, [circleCoords.131667+0x3b0]
	mulss xmm2, [ebp-0x300]
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x43c]
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x440]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3f4]
	mulss xmm1, [ebp-0x444]
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm2, xmm0
	ucomiss xmm4, xmm3
	jbe dCollideBoxTriangleList_300
	movaps xmm0, xmm3
	movaps xmm3, xmm4
	movaps xmm4, xmm0
dCollideBoxTriangleList_300:
	movaps xmm1, xmm2
	subss xmm1, xmm4
	movaps xmm4, xmm1
	movaps xmm0, xmm3
	addss xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm1, xmm4
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm4, xmm0
	jbe dCollideBoxTriangleList_310
	xorps xmm6, [circleCoords.131667+0x3a0]
	xorps xmm7, [circleCoords.131667+0x3a0]
	xorps xmm5, [circleCoords.131667+0x3a0]
	movaps xmm4, xmm0
dCollideBoxTriangleList_310:
	movaps xmm0, xmm6
	mulss xmm0, xmm6
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movaps xmm1, xmm5
	mulss xmm1, xmm5
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_320
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	movaps xmm3, xmm4
	mulss xmm3, xmm2
	movaps xmm1, xmm3
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_320
	mulss xmm6, xmm2
	movss [ebp-0x2f4], xmm6
	mulss xmm7, xmm2
	movss [ebp-0x2f0], xmm7
	mulss xmm5, xmm2
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0x6
	movss [ebp-0x2e4], xmm3
dCollideBoxTriangleList_320:
	movss xmm2, dword [ebp-0x2b4]
	movss xmm3, dword [ebp-0x2b8]
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, xmm2
	movss [ebp-0x360], xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0x360]
	subss xmm1, xmm0
	movss [ebp-0x360], xmm1
	movss xmm4, dword [ebp-0x2bc]
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, xmm4
	movss [ebp-0x3cc], xmm0
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x3cc]
	subss xmm1, xmm0
	movss [ebp-0x3cc], xmm1
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, xmm3
	movss [ebp-0x358], xmm0
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x358]
	subss xmm1, xmm0
	movss [ebp-0x358], xmm1
	movss xmm6, dword [ebp-0x3d4]
	mulss xmm6, [ebp-0x360]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, [ebp-0x3cc]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x45c]
	addss xmm0, [ebp-0x468]
	movss [ebp-0x45c], xmm0
	addss xmm0, [ebp-0x470]
	movss xmm1, dword [ebp-0x42c]
	mulss xmm1, xmm0
	movaps xmm7, xmm6
	subss xmm7, xmm1
	movss xmm5, dword [ebp-0x3e0]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, xmm3
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	andps xmm5, [circleCoords.131667+0x3b0]
	mulss xmm5, [ebp-0x300]
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3f4]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm5, xmm0
	ucomiss xmm7, xmm6
	jbe dCollideBoxTriangleList_330
	movaps xmm0, xmm6
	movaps xmm6, xmm7
	movaps xmm7, xmm0
dCollideBoxTriangleList_330:
	movaps xmm0, xmm5
	subss xmm0, xmm7
	movaps xmm7, xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm5
	pxor xmm1, xmm1
	ucomiss xmm1, xmm7
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm7, xmm0
	jbe dCollideBoxTriangleList_340
	xor dword [ebp-0x360], 0x80000000
	xor dword [ebp-0x3cc], 0x80000000
	xor dword [ebp-0x358], 0x80000000
	movaps xmm7, xmm0
dCollideBoxTriangleList_340:
	movss xmm0, dword [ebp-0x360]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x3cc]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x358]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_350
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	movaps xmm6, xmm7
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_350
	movss xmm0, dword [ebp-0x360]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x3cc]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm5, [ebp-0x358]
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0x7
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_350:
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x438]
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x434]
	subss xmm1, xmm0
	movss [ebp-0x370], xmm1
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x430]
	movss [ebp-0x374], xmm0
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x438]
	movss xmm1, dword [ebp-0x374]
	subss xmm1, xmm0
	movss [ebp-0x374], xmm1
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x434]
	movss [ebp-0x354], xmm0
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x430]
	movss xmm1, dword [ebp-0x354]
	subss xmm1, xmm0
	movss [ebp-0x354], xmm1
	movss xmm7, dword [ebp-0x3d4]
	mulss xmm7, [ebp-0x370]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, [ebp-0x374]
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x2ac]
	movss [ebp-0x450], xmm0
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x2a8]
	movss [ebp-0x460], xmm1
	movaps xmm6, xmm0
	addss xmm6, xmm1
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x2a4]
	movss [ebp-0x46c], xmm0
	addss xmm6, xmm0
	mulss xmm6, [ebp-0x42c]
	addss xmm6, xmm7
	movss xmm5, dword [ebp-0x3e0]
	mulss xmm5, [ebp-0x430]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x434]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x438]
	addss xmm5, xmm0
	andps xmm5, [circleCoords.131667+0x3b0]
	mulss xmm5, [ebp-0x304]
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x430]
	movss xmm1, dword [ebp-0x3fc]
	mulss xmm1, [ebp-0x434]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x400]
	mulss xmm1, [ebp-0x438]
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm5, xmm0
	ucomiss xmm6, xmm7
	jbe dCollideBoxTriangleList_360
	movaps xmm0, xmm7
	movaps xmm7, xmm6
	movaps xmm6, xmm0
dCollideBoxTriangleList_360:
	movaps xmm1, xmm5
	subss xmm1, xmm6
	movaps xmm6, xmm1
	movaps xmm0, xmm7
	addss xmm0, xmm5
	pxor xmm1, xmm1
	ucomiss xmm1, xmm6
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm6, xmm0
	jbe dCollideBoxTriangleList_370
	xor dword [ebp-0x370], 0x80000000
	xor dword [ebp-0x374], 0x80000000
	xor dword [ebp-0x354], 0x80000000
	movaps xmm6, xmm0
dCollideBoxTriangleList_370:
	movss xmm0, dword [ebp-0x370]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x374]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x354]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_380
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_380
	movss xmm0, dword [ebp-0x370]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x374]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm5, [ebp-0x354]
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0x8
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_380:
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, [ebp-0x444]
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x440]
	subss xmm1, xmm0
	movss [ebp-0x35c], xmm1
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x43c]
	movss [ebp-0x378], xmm0
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x444]
	movss xmm1, dword [ebp-0x378]
	subss xmm1, xmm0
	movss [ebp-0x378], xmm1
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, [ebp-0x440]
	movss [ebp-0x350], xmm0
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x43c]
	movss xmm1, dword [ebp-0x350]
	subss xmm1, xmm0
	movss [ebp-0x350], xmm1
	movss xmm6, dword [ebp-0x3d4]
	mulss xmm6, [ebp-0x35c]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, [ebp-0x378]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x450]
	addss xmm0, [ebp-0x460]
	addss xmm0, [ebp-0x46c]
	mulss xmm0, [ebp-0x42c]
	movaps xmm7, xmm6
	subss xmm7, xmm0
	movss xmm5, dword [ebp-0x3e0]
	mulss xmm5, [ebp-0x43c]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x440]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x444]
	addss xmm5, xmm0
	andps xmm5, [circleCoords.131667+0x3b0]
	mulss xmm5, [ebp-0x304]
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x43c]
	movss xmm1, dword [ebp-0x3fc]
	mulss xmm1, [ebp-0x440]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x400]
	mulss xmm1, [ebp-0x444]
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm5, xmm0
	ucomiss xmm7, xmm6
	jbe dCollideBoxTriangleList_390
	movaps xmm0, xmm6
	movaps xmm6, xmm7
	movaps xmm7, xmm0
dCollideBoxTriangleList_390:
	movaps xmm0, xmm5
	subss xmm0, xmm7
	movaps xmm7, xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm5
	pxor xmm1, xmm1
	ucomiss xmm1, xmm7
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm7, xmm0
	jbe dCollideBoxTriangleList_400
	xor dword [ebp-0x35c], 0x80000000
	xor dword [ebp-0x378], 0x80000000
	xor dword [ebp-0x350], 0x80000000
	movaps xmm7, xmm0
dCollideBoxTriangleList_400:
	movss xmm0, dword [ebp-0x35c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x378]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x350]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_410
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	movaps xmm6, xmm7
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_410
	movss xmm0, dword [ebp-0x35c]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x378]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm5, [ebp-0x350]
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0x9
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_410:
	movss xmm1, dword [ebp-0x3f0]
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, xmm3
	subss xmm1, xmm0
	movss [ebp-0x36c], xmm1
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, xmm4
	movss [ebp-0x37c], xmm0
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x37c]
	subss xmm1, xmm0
	movss [ebp-0x37c], xmm1
	movss xmm0, dword [ebp-0x3ec]
	mulss xmm0, xmm3
	movss [ebp-0x34c], xmm0
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x34c]
	subss xmm1, xmm0
	movss [ebp-0x34c], xmm1
	movss xmm6, dword [ebp-0x3d4]
	mulss xmm6, [ebp-0x36c]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, [ebp-0x37c]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x450]
	addss xmm0, [ebp-0x460]
	movss [ebp-0x450], xmm0
	addss xmm0, [ebp-0x46c]
	movss xmm1, dword [ebp-0x42c]
	mulss xmm1, xmm0
	movaps xmm7, xmm6
	subss xmm7, xmm1
	movss xmm5, dword [ebp-0x3e0]
	mulss xmm5, xmm4
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, xmm3
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	andps xmm5, [circleCoords.131667+0x3b0]
	mulss xmm5, [ebp-0x304]
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0x3fc]
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x400]
	mulss xmm1, xmm2
	addss xmm0, xmm1
	andps xmm0, [circleCoords.131667+0x3b0]
	mulss xmm0, [ebp-0x2fc]
	addss xmm5, xmm0
	ucomiss xmm7, xmm6
	jbe dCollideBoxTriangleList_420
	movaps xmm0, xmm6
	movaps xmm6, xmm7
	movaps xmm7, xmm0
dCollideBoxTriangleList_420:
	movaps xmm0, xmm5
	subss xmm0, xmm7
	movaps xmm7, xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm5
	pxor xmm1, xmm1
	ucomiss xmm1, xmm7
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm7, xmm0
	jbe dCollideBoxTriangleList_430
	xor dword [ebp-0x36c], 0x80000000
	xor dword [ebp-0x37c], 0x80000000
	xor dword [ebp-0x34c], 0x80000000
	movaps xmm7, xmm0
dCollideBoxTriangleList_430:
	movss xmm0, dword [ebp-0x36c]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x37c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x34c]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_440
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	movaps xmm6, xmm7
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_440
	movss xmm0, dword [ebp-0x36c]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x37c]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm5, [ebp-0x34c]
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0xa
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_440:
	movss xmm1, dword [ebp-0x3e4]
	mulss xmm1, [ebp-0x438]
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x434]
	subss xmm1, xmm0
	movss [ebp-0x368], xmm1
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x430]
	movss [ebp-0x388], xmm0
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, [ebp-0x438]
	movss xmm1, dword [ebp-0x388]
	subss xmm1, xmm0
	movss [ebp-0x388], xmm1
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, [ebp-0x434]
	movss [ebp-0x3d0], xmm0
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x430]
	movss xmm1, dword [ebp-0x3d0]
	subss xmm1, xmm0
	movss [ebp-0x3d0], xmm1
	movss xmm6, dword [ebp-0x3d4]
	mulss xmm6, [ebp-0x368]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, [ebp-0x388]
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, [ebp-0x2ac]
	movss [ebp-0x448], xmm0
	movss xmm1, dword [ebp-0x3e4]
	mulss xmm1, [ebp-0x2a8]
	movss [ebp-0x458], xmm1
	movaps xmm5, xmm0
	addss xmm5, xmm1
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x2a4]
	movss [ebp-0x464], xmm0
	addss xmm5, xmm0
	mulss xmm5, [ebp-0x42c]
	addss xmm5, xmm6
	movss xmm1, dword [ebp-0x3ec]
	mulss xmm1, [ebp-0x430]
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x434]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x438]
	addss xmm1, xmm0
	andps xmm1, [circleCoords.131667+0x3b0]
	mulss xmm1, [ebp-0x304]
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x430]
	movss [ebp-0x430], xmm0
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x434]
	movss [ebp-0x434], xmm0
	movss xmm0, dword [ebp-0x430]
	addss xmm0, [ebp-0x434]
	movss [ebp-0x430], xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, [ebp-0x438]
	movss [ebp-0x438], xmm0
	movss xmm0, dword [ebp-0x430]
	addss xmm0, [ebp-0x438]
	movss [ebp-0x430], xmm0
	and dword [ebp-0x430], 0x7fffffff
	movss xmm0, dword [ebp-0x430]
	mulss xmm0, [ebp-0x300]
	addss xmm1, xmm0
	ucomiss xmm5, xmm6
	jbe dCollideBoxTriangleList_450
	movaps xmm0, xmm6
	movaps xmm6, xmm5
	movaps xmm5, xmm0
dCollideBoxTriangleList_450:
	movaps xmm7, xmm1
	subss xmm7, xmm5
	movaps xmm0, xmm6
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm1, xmm7
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm7, xmm0
	jbe dCollideBoxTriangleList_460
	xor dword [ebp-0x368], 0x80000000
	xor dword [ebp-0x388], 0x80000000
	xor dword [ebp-0x3d0], 0x80000000
	movaps xmm7, xmm0
dCollideBoxTriangleList_460:
	movss xmm0, dword [ebp-0x368]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x388]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x3d0]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_470
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	movaps xmm6, xmm7
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_470
	movss xmm0, dword [ebp-0x368]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x388]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm5, [ebp-0x3d0]
	movss [ebp-0x2ec], xmm5
	mov dword [ebp-0x2e0], 0xb
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_470:
	movss xmm1, dword [ebp-0x3e4]
	mulss xmm1, [ebp-0x444]
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x440]
	subss xmm1, xmm0
	movss [ebp-0x364], xmm1
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, [ebp-0x43c]
	movss [ebp-0x384], xmm0
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, [ebp-0x444]
	movss xmm1, dword [ebp-0x384]
	subss xmm1, xmm0
	movss [ebp-0x384], xmm1
	movss xmm7, dword [ebp-0x3e0]
	mulss xmm7, [ebp-0x440]
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, [ebp-0x43c]
	subss xmm7, xmm0
	movss xmm5, dword [ebp-0x3d4]
	mulss xmm5, [ebp-0x364]
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x3dc]
	mulss xmm0, xmm7
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x448]
	addss xmm0, [ebp-0x458]
	addss xmm0, [ebp-0x464]
	mulss xmm0, [ebp-0x42c]
	movaps xmm6, xmm5
	subss xmm6, xmm0
	movss xmm1, dword [ebp-0x3ec]
	mulss xmm1, [ebp-0x43c]
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, [ebp-0x440]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, [ebp-0x444]
	addss xmm1, xmm0
	andps xmm1, [circleCoords.131667+0x3b0]
	mulss xmm1, [ebp-0x304]
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x43c]
	movss [ebp-0x43c], xmm0
	movss xmm0, dword [ebp-0x3fc]
	mulss xmm0, [ebp-0x440]
	movss [ebp-0x440], xmm0
	movss xmm0, dword [ebp-0x43c]
	addss xmm0, [ebp-0x440]
	movss [ebp-0x43c], xmm0
	movss xmm0, dword [ebp-0x400]
	mulss xmm0, [ebp-0x444]
	movss [ebp-0x444], xmm0
	movss xmm0, dword [ebp-0x43c]
	addss xmm0, [ebp-0x444]
	movss [ebp-0x43c], xmm0
	and dword [ebp-0x43c], 0x7fffffff
	movss xmm0, dword [ebp-0x43c]
	mulss xmm0, [ebp-0x300]
	addss xmm1, xmm0
	ucomiss xmm6, xmm5
	jbe dCollideBoxTriangleList_480
	movaps xmm0, xmm5
	movaps xmm5, xmm6
	movaps xmm6, xmm0
dCollideBoxTriangleList_480:
	movaps xmm0, xmm1
	subss xmm0, xmm6
	movaps xmm6, xmm0
	movaps xmm0, xmm5
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm1, xmm6
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm6, xmm0
	jbe dCollideBoxTriangleList_490
	xor dword [ebp-0x364], 0x80000000
	xor dword [ebp-0x384], 0x80000000
	xorps xmm7, [circleCoords.131667+0x3a0]
	movaps xmm6, xmm0
dCollideBoxTriangleList_490:
	movss xmm0, dword [ebp-0x364]
	mulss xmm0, xmm0
	movss xmm1, dword [ebp-0x384]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, xmm7
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_500
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	mulss xmm6, xmm5
	movaps xmm1, xmm6
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_500
	movss xmm0, dword [ebp-0x364]
	mulss xmm0, xmm5
	movss [ebp-0x2f4], xmm0
	movss xmm1, dword [ebp-0x384]
	mulss xmm1, xmm5
	movss [ebp-0x2f0], xmm1
	mulss xmm7, xmm5
	movss [ebp-0x2ec], xmm7
	mov dword [ebp-0x2e0], 0xc
	movss [ebp-0x2e4], xmm6
dCollideBoxTriangleList_500:
	movss xmm7, dword [ebp-0x3e4]
	mulss xmm7, xmm2
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, xmm3
	subss xmm7, xmm0
	movss xmm0, dword [ebp-0x3e8]
	mulss xmm0, xmm4
	movss [ebp-0x380], xmm0
	movss xmm0, dword [ebp-0x3e0]
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0x380]
	subss xmm1, xmm0
	movss [ebp-0x380], xmm1
	movss xmm6, dword [ebp-0x3e0]
	mulss xmm6, xmm3
	movss xmm0, dword [ebp-0x3e4]
	mulss xmm0, xmm4
	subss xmm6, xmm0
	movss xmm5, dword [ebp-0x3d4]
	mulss xmm5, xmm7
	movss xmm0, dword [ebp-0x3d8]
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm1, dword [ebp-0x3dc]
	mulss xmm1, xmm6
	addss xmm5, xmm1
	movss xmm0, dword [ebp-0x448]
	addss xmm0, [ebp-0x458]
	movss [ebp-0x448], xmm0
	addss xmm0, [ebp-0x464]
	movss xmm1, dword [ebp-0x42c]
	mulss xmm1, xmm0
	movaps xmm0, xmm5
	subss xmm0, xmm1
	movss [ebp-0x428], xmm0
	movss xmm1, dword [ebp-0x3ec]
	mulss xmm1, xmm4
	movss xmm0, dword [ebp-0x3f0]
	mulss xmm0, xmm3
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x3f4]
	mulss xmm0, xmm2
	addss xmm1, xmm0
	andps xmm1, [circleCoords.131667+0x3b0]
	mulss xmm1, [ebp-0x304]
	mulss xmm4, [ebp-0x3f8]
	mulss xmm3, [ebp-0x3fc]
	movss [ebp-0x3fc], xmm3
	movaps xmm0, xmm4
	addss xmm0, xmm3
	mulss xmm2, [ebp-0x400]
	movss [ebp-0x400], xmm2
	addss xmm0, xmm2
	movss [ebp-0x3f8], xmm0
	and dword [ebp-0x3f8], 0x7fffffff
	movss xmm0, dword [ebp-0x3f8]
	mulss xmm0, [ebp-0x300]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x428]
	ucomiss xmm0, xmm5
	jbe dCollideBoxTriangleList_510
	movaps xmm0, xmm5
	movss xmm5, dword [ebp-0x428]
	movss [ebp-0x428], xmm0
dCollideBoxTriangleList_510:
	movaps xmm2, xmm1
	subss xmm2, [ebp-0x428]
	movaps xmm0, xmm5
	addss xmm0, xmm1
	pxor xmm1, xmm1
	ucomiss xmm1, xmm2
	ja dCollideBoxTriangleList_30
	ucomiss xmm1, xmm0
	ja dCollideBoxTriangleList_30
	ucomiss xmm2, xmm0
	jbe dCollideBoxTriangleList_520
	xorps xmm7, [circleCoords.131667+0x3a0]
	xor dword [ebp-0x380], 0x80000000
	xorps xmm6, [circleCoords.131667+0x3a0]
	movaps xmm2, xmm0
dCollideBoxTriangleList_520:
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movss xmm1, dword [ebp-0x380]
	mulss xmm1, xmm1
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, xmm6
	addss xmm0, xmm1
	sqrtss xmm0, xmm0
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_530
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, xmm0
	mulss xmm2, xmm3
	movaps xmm1, xmm2
	mulss xmm1, [_float_1_50000000]
	movss xmm0, dword [ebp-0x2e4]
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_530
	mulss xmm7, xmm3
	movss [ebp-0x2f4], xmm7
	movss xmm0, dword [ebp-0x380]
	mulss xmm0, xmm3
	movss [ebp-0x2f0], xmm0
	mulss xmm6, xmm3
	movss [ebp-0x2ec], xmm6
	mov dword [ebp-0x2e0], 0xd
	movss [ebp-0x2e4], xmm2
dCollideBoxTriangleList_530:
	mov eax, [ebp-0x2e0]
	cmp eax, 0x4
	jle dCollideBoxTriangleList_540
	movss xmm1, dword [ebp-0x314]
	movss [ebp-0x3c0], xmm1
	movss xmm0, dword [ebp-0x310]
	movss [ebp-0x3c4], xmm0
	movss xmm1, dword [ebp-0x30c]
	movss [ebp-0x3c8], xmm1
	movss xmm7, dword [ebp-0x2f4]
	movss xmm6, dword [ebp-0x2f0]
	movss xmm5, dword [ebp-0x2ec]
	lea edx, [ebp-0x344]
	lea ecx, [ebp-0x338]
dCollideBoxTriangleList_550:
	movss xmm2, dword [edx]
	movss xmm3, dword [edx+0x10]
	movss xmm4, dword [edx+0x20]
	movaps xmm0, xmm2
	mulss xmm0, xmm7
	movaps xmm1, xmm3
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, xmm5
	addss xmm0, xmm1
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x5
	movaps xmm0, xmm1
	movss xmm1, dword [_float__1_00000000]
	andps xmm1, xmm0
	movss [ebp-0x48c], xmm1
	movss xmm1, dword [_float_1_00000000]
	andnps xmm0, xmm1
	movss xmm1, dword [ebp-0x48c]
	orps xmm0, xmm1
	mulss xmm0, [edx+0x40]
	mulss xmm2, xmm0
	addss xmm2, [ebp-0x3c0]
	movss [ebp-0x3c0], xmm2
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x3c4]
	movss [ebp-0x3c4], xmm3
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x3c8]
	movss [ebp-0x3c8], xmm4
	add edx, 0x4
	cmp edx, ecx
	jnz dCollideBoxTriangleList_550
	lea ebx, [eax-0x5]
	mov edx, 0x55555556
	mov eax, ebx
	imul edx
	mov ecx, ebx
	sar ecx, 0x1f
	sub edx, ecx
	lea edx, [edx+edx*2]
	mov eax, ebx
	sub eax, edx
	jnz dCollideBoxTriangleList_560
	movss xmm0, dword [ebp-0x80]
	movss [ebp-0x3b4], xmm0
	movss xmm1, dword [ebp-0x7c]
	movss [ebp-0x3b8], xmm1
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x3bc], xmm0
	mov eax, [ebp-0x2dc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x2d8]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2d4]
	mov [ebp-0x28], eax
dCollideBoxTriangleList_760:
	lea eax, [ebp-0x30]
	mov [esp], eax
	call dNormalize3
	mov ecx, [ebp-0x2e0]
	sub ecx, 0x5
	mov edx, 0x55555556
	mov eax, ecx
	imul edx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	movss xmm0, dword [ebp+edx*4-0x344]
	movss [ebp-0x3a8], xmm0
	movss xmm1, dword [ebp+edx*4-0x334]
	movss [ebp-0x3ac], xmm1
	movss xmm0, dword [ebp+edx*4-0x324]
	movss [ebp-0x3b0], xmm0
	movss xmm6, dword [ebp-0x3b4]
	subss xmm6, [ebp-0x3c0]
	movss xmm1, dword [ebp-0x3b8]
	subss xmm1, [ebp-0x3c4]
	movss xmm2, dword [ebp-0x3bc]
	subss xmm2, [ebp-0x3c8]
	movss xmm3, dword [ebp-0x30]
	movss xmm4, dword [ebp-0x2c]
	movss xmm5, dword [ebp-0x28]
	movss xmm7, dword [ebp-0x3a8]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x3ac]
	mulss xmm0, xmm4
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x3b0]
	mulss xmm0, xmm5
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x3a8]
	mulss xmm0, xmm6
	movss [ebp-0x418], xmm0
	movss xmm0, dword [ebp-0x3ac]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x418]
	movss [ebp-0x418], xmm0
	movss xmm0, dword [ebp-0x3b0]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x418]
	movss [ebp-0x418], xmm0
	mulss xmm6, xmm3
	mulss xmm1, xmm4
	addss xmm6, xmm1
	mulss xmm2, xmm5
	addss xmm6, xmm2
	xorps xmm6, [circleCoords.131667+0x3a0]
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jbe dCollideBoxTriangleList_570
	movaps xmm0, xmm2
	divss xmm0, xmm1
	movaps xmm2, xmm7
	mulss xmm2, xmm6
	addss xmm2, [ebp-0x418]
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x418]
	mulss xmm1, xmm7
	addss xmm1, xmm6
	mulss xmm1, xmm0
dCollideBoxTriangleList_740:
	movss xmm0, dword [ebp-0x3a8]
	mulss xmm0, xmm2
	movss [ebp-0x3a8], xmm0
	movss xmm0, dword [ebp-0x3c0]
	addss xmm0, [ebp-0x3a8]
	movss [ebp-0x3c0], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0x3b4]
	movss [ebp-0x3b4], xmm0
	movss xmm0, dword [ebp-0x3c0]
	addss xmm0, [ebp-0x3b4]
	movss [ebp-0x3c0], xmm0
	movss xmm0, dword [ebp-0x3ac]
	mulss xmm0, xmm2
	movss [ebp-0x3ac], xmm0
	movss xmm0, dword [ebp-0x3c4]
	addss xmm0, [ebp-0x3ac]
	movss [ebp-0x3c4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebp-0x3b8]
	addss xmm0, [ebp-0x3c4]
	movss [ebp-0x3c4], xmm0
	mulss xmm2, [ebp-0x3b0]
	addss xmm2, [ebp-0x3c8]
	mulss xmm1, [ebp-0x28]
	addss xmm1, [ebp-0x3bc]
	addss xmm1, xmm2
	movss [ebp-0x3c8], xmm1
	mov edx, [ebp-0x294]
	imul edx, [ebp-0x288]
	add edx, [ebp-0x298]
	mov eax, [ebp-0x2e4]
	mov [edx+0x20], eax
	lea ecx, [edx+0x10]
	mov eax, [ebp-0x2f4]
	mov [edx+0x10], eax
	mov eax, [ebp-0x2f0]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x2ec]
	mov [ecx+0x8], eax
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [ebp-0x3c0]
	mulss xmm1, xmm0
	movss [edx], xmm1
	movss xmm1, dword [ebp-0x3c4]
	mulss xmm1, xmm0
	movss [edx+0x4], xmm1
	mulss xmm0, [ebp-0x3c8]
	movss [edx+0x8], xmm0
	mov eax, [ebp-0x290]
	mov [edx+0x24], eax
	mov eax, [ebp-0x28c]
	mov [edx+0x28], eax
	add dword [ebp-0x288], 0x1
dCollideBoxTriangleList_770:
	movss xmm0, dword [ebp-0x2ac]
	movss [ebp-0x474], xmm0
	movss xmm1, dword [ebp-0x2a8]
	movss [ebp-0x478], xmm1
	movss xmm0, dword [ebp-0x2a4]
	movss [ebp-0x47c], xmm0
	movss xmm1, dword [ebp-0x340]
	movss xmm3, dword [ebp-0x330]
	movss xmm5, dword [ebp-0x320]
	movss xmm2, dword [ebp-0x33c]
	movss xmm6, dword [ebp-0x32c]
	movss xmm7, dword [ebp-0x31c]
	movss xmm4, dword [ebp-0x474]
	mulss xmm4, [ebp-0x344]
	movss xmm0, dword [ebp-0x478]
	mulss xmm0, [ebp-0x334]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x47c]
	mulss xmm0, [ebp-0x324]
	addss xmm4, xmm0
	movss [ebp-0x40], xmm4
	mulss xmm1, [ebp-0x474]
	mulss xmm3, [ebp-0x478]
	addss xmm1, xmm3
	mulss xmm5, [ebp-0x47c]
	addss xmm1, xmm5
	movss [ebp-0x3c], xmm1
	mulss xmm2, [ebp-0x474]
	mulss xmm6, [ebp-0x478]
	addss xmm2, xmm6
	mulss xmm7, [ebp-0x47c]
	addss xmm2, xmm7
	movss [ebp-0x38], xmm2
	movss xmm0, dword [circleCoords.131667+0x3b0]
	andps xmm4, xmm0
	andps xmm1, xmm0
	andps xmm2, xmm0
	ucomiss xmm1, xmm4
	jbe dCollideBoxTriangleList_580
	ucomiss xmm1, xmm2
	jbe dCollideBoxTriangleList_590
	mov dword [ebp-0x408], 0x0
	mov ebx, 0x1
	mov dword [ebp-0x404], 0x2
	mov ecx, 0x5
	mov edx, 0x9
	mov dword [ebp-0x398], 0x4
	mov dword [ebp-0x394], 0x8
	mov dword [ebp-0x390], 0x6
	mov dword [ebp-0x38c], 0xa
dCollideBoxTriangleList_730:
	mov eax, [ebp+ebx*4-0x344]
	mov [ebp-0x60], eax
	mov eax, [ebp+ecx*4-0x344]
	mov [ebp-0x5c], eax
	movss xmm3, dword [ebp+edx*4-0x344]
	movss [ebp-0x58], xmm3
	movss xmm0, dword [ebp+ebx*4-0x40]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jbe dCollideBoxTriangleList_600
	movss xmm2, dword [ebp+ebx*4-0x304]
	movss xmm0, dword [ebp-0x314]
	subss xmm0, [ebp-0x80]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x60]
	subss xmm0, xmm1
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x310]
	subss xmm0, [ebp-0x7c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x5c]
	subss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x30c]
	subss xmm0, [ebp-0x78]
	mulss xmm3, xmm2
	subss xmm0, xmm3
	movss [ebp-0x48], xmm0
dCollideBoxTriangleList_720:
	mov edx, [ebp-0x408]
	mov eax, [ebp+edx*4-0x344]
	mov [ebp-0x60], eax
	mov ecx, [ebp-0x398]
	mov eax, [ebp+ecx*4-0x344]
	mov [ebp-0x5c], eax
	mov edx, [ebp-0x394]
	mov eax, [ebp+edx*4-0x344]
	mov [ebp-0x58], eax
	mov ecx, [ebp-0x404]
	mov eax, [ebp+ecx*4-0x344]
	mov [ebp-0x70], eax
	mov edx, [ebp-0x390]
	mov eax, [ebp+edx*4-0x344]
	mov [ebp-0x6c], eax
	mov ecx, [ebp-0x38c]
	mov eax, [ebp+ecx*4-0x344]
	mov [ebp-0x68], eax
	mov edx, 0x1
	lea ebx, [ebp-0x60]
	mov eax, [ebp-0x408]
	movss xmm5, dword [ebp+eax*4-0x304]
	mov eax, 0x4
	mov ecx, [ebp-0x404]
	movss xmm6, dword [ebp+ecx*4-0x304]
dCollideBoxTriangleList_610:
	movss xmm0, dword [eax+ebp-0x54]
	movss xmm4, dword [eax+ebx-0x4]
	mulss xmm4, xmm5
	movaps xmm3, xmm0
	addss xmm3, xmm4
	movss xmm2, dword [eax+ebp-0x74]
	mulss xmm2, xmm6
	movaps xmm1, xmm3
	subss xmm1, xmm2
	movss [eax+ebp-0x164], xmm1
	subss xmm0, xmm4
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movss [eax+ebp-0x154], xmm1
	addss xmm0, xmm2
	movss [eax+ebp-0x144], xmm0
	addss xmm3, xmm2
	movss [eax+ebp-0x134], xmm3
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz dCollideBoxTriangleList_610
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	xor eax, eax
	lea ebx, [ebp-0x1f0]
dCollideBoxTriangleList_620:
	mov dword [eax+ebx], 0x0
	mov dword [ebx+eax+0x4], 0x0
	mov dword [ebx+eax+0x8], 0x0
	mov dword [eax+ebp-0x280], 0x0
	mov dword [ebp+eax-0x27c], 0x0
	mov dword [ebp+eax-0x278], 0x0
	add eax, 0x10
	cmp eax, 0x90
	jnz dCollideBoxTriangleList_620
	movss xmm0, dword [ebp-0x474]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x478]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x47c]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x28], xmm0
	lea eax, [ebp-0x30]
	mov [esp], eax
	call dNormalize3
	mov eax, [ebp-0x30]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x28]
	mov [ebp-0xc8], eax
	mov dword [ebp-0xc4], 0x0
	lea edx, [ebp-0xd0]
	mov [esp+0x8], edx
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov [esp], ebx
	mov ecx, 0x4
	lea edx, [ebp-0x160]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	movss xmm4, dword [ebp-0x90]
	subss xmm4, [ebp-0x80]
	movss xmm2, dword [ebp-0x8c]
	subss xmm2, [ebp-0x7c]
	movss xmm3, dword [ebp-0x88]
	subss xmm3, [ebp-0x78]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x2a8]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x2a4]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x2a4]
	mulss xmm3, [ebp-0x2ac]
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	mulss xmm2, [ebp-0x2ac]
	mulss xmm4, [ebp-0x2a8]
	subss xmm2, xmm4
	movss [ebp-0x28], xmm2
	lea eax, [ebp-0x30]
	mov [esp], eax
	call dNormalize3
	mov eax, [ebp-0x30]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x28]
	mov [ebp-0xc8], eax
	mov dword [ebp-0xc4], 0x0
	mov ecx, [ebp-0x20]
	lea edx, [ebp-0xd0]
	mov [esp+0x8], edx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x280]
	mov [esp], edx
	mov edx, ebx
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	movss xmm4, dword [ebp-0xa0]
	subss xmm4, [ebp-0x90]
	movss xmm2, dword [ebp-0x9c]
	subss xmm2, [ebp-0x8c]
	movss xmm3, dword [ebp-0x98]
	subss xmm3, [ebp-0x88]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x2a8]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x2a4]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x2a4]
	mulss xmm3, [ebp-0x2ac]
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	mulss xmm2, [ebp-0x2ac]
	mulss xmm4, [ebp-0x2a8]
	subss xmm2, xmm4
	movss [ebp-0x28], xmm2
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call dNormalize3
	movss xmm0, dword [ebp-0x80]
	subss xmm0, [ebp-0xa0]
	movss xmm1, dword [ebp-0x7c]
	subss xmm1, [ebp-0x9c]
	movss xmm2, dword [ebp-0x78]
	subss xmm2, [ebp-0x98]
	mov eax, [ebp-0x30]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x28]
	mov [ebp-0xc8], eax
	mulss xmm0, [ebp-0x30]
	mulss xmm1, [ebp-0x2c]
	addss xmm0, xmm1
	mulss xmm2, [ebp-0x28]
	addss xmm0, xmm2
	movss [ebp-0xc4], xmm0
	mov ecx, [ebp-0x1c]
	lea eax, [ebp-0xd0]
	mov [esp+0x8], eax
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	lea edx, [ebp-0x280]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	movss xmm4, dword [ebp-0x80]
	subss xmm4, [ebp-0xa0]
	movss xmm2, dword [ebp-0x7c]
	subss xmm2, [ebp-0x9c]
	movss xmm3, dword [ebp-0x78]
	subss xmm3, [ebp-0x98]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x2a8]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x2a4]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x2a4]
	mulss xmm3, [ebp-0x2ac]
	subss xmm0, xmm3
	movss [ebp-0x2c], xmm0
	mulss xmm2, [ebp-0x2ac]
	mulss xmm4, [ebp-0x2a8]
	subss xmm2, xmm4
	movss [ebp-0x28], xmm2
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call dNormalize3
	mov eax, [ebp-0x30]
	mov [ebp-0xd0], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0xcc], eax
	mov eax, [ebp-0x28]
	mov [ebp-0xc8], eax
	mov dword [ebp-0xc4], 0x0
	mov ecx, [ebp-0x20]
	lea eax, [ebp-0xd0]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x280]
	mov [esp], eax
	mov edx, ebx
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle dCollideBoxTriangleList_30
	xor ebx, ebx
	movss xmm4, dword [circleCoords.131667+0x3a0]
	lea ecx, [ebp-0x280]
	jmp dCollideBoxTriangleList_630
dCollideBoxTriangleList_640:
	imul edx, [ebp-0x294]
	add edx, [ebp-0x298]
	xorps xmm3, xmm4
	movss [edx+0x20], xmm3
	lea eax, [edx+0x10]
	movss xmm0, dword [ebp-0x2ac]
	xorps xmm0, xmm4
	movss [edx+0x10], xmm0
	movss xmm0, dword [ebp-0x2a8]
	xorps xmm0, xmm4
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x2a4]
	xorps xmm0, xmm4
	movss [eax+0x8], xmm0
	movss [edx], xmm5
	movss [edx+0x4], xmm1
	movss [edx+0x8], xmm2
	mov eax, [ebp-0x290]
	mov [edx+0x24], eax
	mov eax, [ebp-0x28c]
	mov [edx+0x28], eax
	add dword [ebp-0x288], 0x1
	add ebx, 0x1
	add ecx, 0x10
	cmp ebx, [ebp-0x1c]
	jge dCollideBoxTriangleList_30
dCollideBoxTriangleList_630:
	movss xmm1, dword [ecx+0x4]
	movss xmm2, dword [ecx+0x8]
	movss xmm3, dword [ebp-0x474]
	mulss xmm3, [ecx]
	movss xmm0, dword [ebp-0x478]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x47c]
	mulss xmm0, xmm2
	addss xmm3, xmm0
	pxor xmm0, xmm0
	minss xmm0, xmm3
	movaps xmm3, xmm0
	movss xmm5, dword [ecx]
	addss xmm5, [ebp-0x80]
	addss xmm1, [ebp-0x7c]
	addss xmm2, [ebp-0x78]
	mov edx, [ebp-0x288]
	movzx eax, word [ebp-0x29c]
	cmp edx, eax
	jl dCollideBoxTriangleList_640
	jmp dCollideBoxTriangleList_30
dCollideBoxTriangleList_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x42c]
	jmp dCollideBoxTriangleList_650
dCollideBoxTriangleList_90:
	ucomiss xmm1, xmm2
	jbe dCollideBoxTriangleList_100
	movaps xmm0, xmm2
	jmp dCollideBoxTriangleList_660
dCollideBoxTriangleList_110:
	maxss xmm2, xmm1
	movaps xmm1, xmm2
	jmp dCollideBoxTriangleList_120
dCollideBoxTriangleList_100:
	movaps xmm0, xmm1
	jmp dCollideBoxTriangleList_660
dCollideBoxTriangleList_170:
	maxss xmm2, xmm1
	movaps xmm1, xmm2
	jmp dCollideBoxTriangleList_180
dCollideBoxTriangleList_160:
	movaps xmm0, xmm1
	jmp dCollideBoxTriangleList_670
dCollideBoxTriangleList_150:
	ucomiss xmm1, xmm2
	jbe dCollideBoxTriangleList_160
	movaps xmm0, xmm2
	jmp dCollideBoxTriangleList_670
dCollideBoxTriangleList_230:
	maxss xmm2, xmm1
	movaps xmm1, xmm2
	jmp dCollideBoxTriangleList_240
dCollideBoxTriangleList_220:
	movaps xmm0, xmm1
	jmp dCollideBoxTriangleList_680
dCollideBoxTriangleList_210:
	ucomiss xmm1, xmm2
	jbe dCollideBoxTriangleList_220
	movaps xmm0, xmm2
	jmp dCollideBoxTriangleList_680
dCollideBoxTriangleList_130:
	movss xmm5, dword [ebp-0x3f8]
	movss xmm4, dword [ebp-0x400]
	movss xmm1, dword [ebp-0x3fc]
	jmp dCollideBoxTriangleList_690
dCollideBoxTriangleList_190:
	movss xmm5, dword [ebp-0x3ec]
	movss xmm4, dword [ebp-0x3f4]
	movss xmm1, dword [ebp-0x3f0]
	jmp dCollideBoxTriangleList_700
dCollideBoxTriangleList_250:
	movss xmm5, dword [ebp-0x3e0]
	movss xmm4, dword [ebp-0x3e8]
	movss xmm1, dword [ebp-0x3e4]
	jmp dCollideBoxTriangleList_710
dCollideBoxTriangleList_600:
	movss xmm2, dword [ebp+ebx*4-0x304]
	movss xmm0, dword [ebp-0x314]
	subss xmm0, [ebp-0x80]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x60]
	addss xmm0, xmm1
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0x310]
	subss xmm0, [ebp-0x7c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x5c]
	addss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [ebp-0x30c]
	subss xmm0, [ebp-0x78]
	mulss xmm3, xmm2
	addss xmm0, xmm3
	movss [ebp-0x48], xmm0
	jmp dCollideBoxTriangleList_720
dCollideBoxTriangleList_590:
	mov dword [ebp-0x408], 0x0
	mov ebx, 0x2
	mov dword [ebp-0x404], 0x1
	mov ecx, 0x6
	mov edx, 0xa
	mov dword [ebp-0x398], 0x4
	mov dword [ebp-0x394], 0x8
	mov dword [ebp-0x390], 0x5
	mov dword [ebp-0x38c], 0x9
	jmp dCollideBoxTriangleList_730
dCollideBoxTriangleList_580:
	ucomiss xmm4, xmm2
	jbe dCollideBoxTriangleList_590
	mov dword [ebp-0x408], 0x1
	xor ebx, ebx
	mov dword [ebp-0x404], 0x2
	mov ecx, 0x4
	mov edx, 0x8
	mov dword [ebp-0x398], 0x5
	mov dword [ebp-0x394], 0x9
	mov dword [ebp-0x390], 0x6
	mov dword [ebp-0x38c], 0xa
	jmp dCollideBoxTriangleList_730
dCollideBoxTriangleList_570:
	pxor xmm1, xmm1
	pxor xmm2, xmm2
	jmp dCollideBoxTriangleList_740
dCollideBoxTriangleList_560:
	sub eax, 0x1
	jz dCollideBoxTriangleList_750
	movss xmm0, dword [ebp-0x90]
	movss [ebp-0x3b4], xmm0
	movss xmm1, dword [ebp-0x454]
	movss [ebp-0x3b8], xmm1
	movss xmm0, dword [ebp-0x44c]
	movss [ebp-0x3bc], xmm0
	mov eax, [ebp-0x2bc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x2b8]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2b4]
	mov [ebp-0x28], eax
	jmp dCollideBoxTriangleList_760
dCollideBoxTriangleList_540:
	sub eax, 0x2
	mov [ebp-0x424], eax
	cmp eax, 0x2
	ja dCollideBoxTriangleList_770
	movss xmm0, dword [ebp-0x2f4]
	movss [ebp-0x39c], xmm0
	movss xmm1, dword [ebp-0x2f0]
	movss [ebp-0x3a0], xmm1
	movss xmm0, dword [ebp-0x2ec]
	movss [ebp-0x3a4], xmm0
	test eax, eax
	jnz dCollideBoxTriangleList_780
	mov dword [ebp-0x414], 0x1
	mov dword [ebp-0x410], 0x2
dCollideBoxTriangleList_820:
	movss xmm0, dword [ebp-0x80]
	subss xmm0, [ebp-0x314]
	movss [ebp-0xd0], xmm0
	movss xmm0, dword [ebp-0x7c]
	subss xmm0, [ebp-0x310]
	movss [ebp-0xcc], xmm0
	movss xmm0, dword [ebp-0x78]
	subss xmm0, [ebp-0x30c]
	movss [ebp-0xc8], xmm0
	movss xmm0, dword [ebp-0x90]
	subss xmm0, [ebp-0x314]
	movss [ebp-0xc0], xmm0
	movss xmm1, dword [ebp-0x454]
	subss xmm1, [ebp-0x310]
	movss [ebp-0xbc], xmm1
	movss xmm0, dword [ebp-0x44c]
	subss xmm0, [ebp-0x30c]
	movss [ebp-0xb8], xmm0
	movss xmm0, dword [ebp-0xa0]
	subss xmm0, [ebp-0x314]
	movss [ebp-0xb0], xmm0
	movss xmm0, dword [ebp-0x9c]
	subss xmm0, [ebp-0x310]
	movss [ebp-0xac], xmm0
	movss xmm0, dword [ebp-0x98]
	subss xmm0, [ebp-0x30c]
	movss [ebp-0xa8], xmm0
	xor eax, eax
dCollideBoxTriangleList_790:
	mov dword [eax+ebp-0x160], 0x0
	mov dword [ebp+eax-0x15c], 0x0
	mov dword [ebp+eax-0x158], 0x0
	mov dword [eax+ebp-0x280], 0x0
	mov dword [ebp+eax-0x27c], 0x0
	mov dword [ebp+eax-0x278], 0x0
	add eax, 0x10
	cmp eax, 0x90
	jnz dCollideBoxTriangleList_790
	movss xmm0, dword [ebp-0x39c]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x3a0]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x3a4]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x28], xmm0
	mov edx, [ebp-0x424]
	mov eax, [ebp+edx*4-0x304]
	mov [ebp-0x24], eax
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x160]
	mov [esp], edx
	mov ecx, 0x3
	lea edx, [ebp-0xd0]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov ebx, [ebp-0x414]
	add ebx, 0x4
	mov edx, [ebp+ebx*4-0x344]
	mov ecx, [ebp-0x414]
	add ecx, 0x8
	mov [ebp-0x420], ecx
	mov ecx, [ebp+ecx*4-0x344]
	mov eax, [ebp-0x414]
	movss xmm0, dword [ebp+eax*4-0x344]
	movss [ebp-0x30], xmm0
	mov [ebp-0x2c], edx
	mov [ebp-0x28], ecx
	mov eax, [ebp+eax*4-0x304]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x1c]
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	lea eax, [ebp-0x280]
	mov [esp], eax
	lea edx, [ebp-0x160]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov edx, [ebp-0x414]
	movss xmm0, dword [ebp+edx*4-0x344]
	movss xmm1, dword [ebp+ebx*4-0x344]
	mov ecx, [ebp-0x420]
	movss xmm2, dword [ebp+ecx*4-0x344]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x30], xmm0
	xorps xmm1, [circleCoords.131667+0x3a0]
	movss [ebp-0x2c], xmm1
	xorps xmm2, [circleCoords.131667+0x3a0]
	movss [ebp-0x28], xmm2
	mov eax, [ebp+edx*4-0x304]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x20]
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x160]
	mov [esp], eax
	lea edx, [ebp-0x280]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov ebx, [ebp-0x410]
	add ebx, 0x4
	mov edx, [ebp+ebx*4-0x344]
	mov ecx, [ebp-0x410]
	add ecx, 0x8
	mov [ebp-0x41c], ecx
	mov ecx, [ebp+ecx*4-0x344]
	mov eax, [ebp-0x410]
	movss xmm0, dword [ebp+eax*4-0x344]
	movss [ebp-0x30], xmm0
	mov [ebp-0x2c], edx
	mov [ebp-0x28], ecx
	mov eax, [ebp+eax*4-0x304]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x1c]
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x20]
	mov [esp+0x4], edx
	lea eax, [ebp-0x280]
	mov [esp], eax
	lea edx, [ebp-0x160]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov edx, [ebp-0x410]
	movss xmm0, dword [ebp+edx*4-0x344]
	movss xmm1, dword [ebp+ebx*4-0x344]
	mov ecx, [ebp-0x41c]
	movss xmm2, dword [ebp+ecx*4-0x344]
	xorps xmm0, [circleCoords.131667+0x3a0]
	movss [ebp-0x30], xmm0
	xorps xmm1, [circleCoords.131667+0x3a0]
	movss [ebp-0x2c], xmm1
	xorps xmm2, [circleCoords.131667+0x3a0]
	movss [ebp-0x28], xmm2
	mov eax, [ebp+edx*4-0x304]
	mov [ebp-0x24], eax
	mov ecx, [ebp-0x20]
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x160]
	mov [esp], eax
	lea edx, [ebp-0x280]
	lea eax, [ebp-0x344]
	call _cldClipPolyToPlane
	mov eax, [ebp-0x1c]
	test eax, eax
	jle dCollideBoxTriangleList_770
	mov dword [ebp-0x40c], 0x0
	lea ebx, [ebp-0x160]
dCollideBoxTriangleList_800:
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	movss xmm3, dword [ebp-0x39c]
	mulss xmm3, [ebx]
	movss xmm0, dword [ebp-0x3a0]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x3a4]
	mulss xmm0, xmm2
	addss xmm3, xmm0
	mov edx, [ebp-0x424]
	subss xmm3, [ebp+edx*4-0x304]
	pxor xmm0, xmm0
	minss xmm0, xmm3
	movaps xmm3, xmm0
	movss xmm0, dword [ebx]
	addss xmm0, [ebp-0x314]
	addss xmm1, [ebp-0x310]
	addss xmm2, [ebp-0x30c]
	mov edx, [ebp-0x288]
	movzx eax, word [ebp-0x29c]
	cmp edx, eax
	jge dCollideBoxTriangleList_770
	imul edx, [ebp-0x294]
	add edx, [ebp-0x298]
	xorps xmm3, [circleCoords.131667+0x3a0]
	movss [edx+0x20], xmm3
	lea ecx, [edx+0x10]
	mov eax, [ebp-0x2f4]
	mov [edx+0x10], eax
	mov eax, [ebp-0x2f0]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x2ec]
	mov [ecx+0x8], eax
	movss [edx], xmm0
	movss [edx+0x4], xmm1
	movss [edx+0x8], xmm2
	mov eax, [ebp-0x290]
	mov [edx+0x24], eax
	mov eax, [ebp-0x28c]
	mov [edx+0x28], eax
	add dword [ebp-0x288], 0x1
	add dword [ebp-0x40c], 0x1
	add ebx, 0x10
	mov eax, [ebp-0x40c]
	cmp [ebp-0x1c], eax
	jg dCollideBoxTriangleList_800
	jmp dCollideBoxTriangleList_770
dCollideBoxTriangleList_750:
	movss xmm1, dword [ebp-0xa0]
	movss [ebp-0x3b4], xmm1
	movss xmm0, dword [ebp-0x9c]
	movss [ebp-0x3b8], xmm0
	movss xmm1, dword [ebp-0x98]
	movss [ebp-0x3bc], xmm1
	mov eax, [ebp-0x2cc]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x2c8]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x2c4]
	mov [ebp-0x28], eax
	jmp dCollideBoxTriangleList_760
dCollideBoxTriangleList_780:
	cmp dword [ebp-0x424], 0x1
	jz dCollideBoxTriangleList_810
	mov dword [ebp-0x414], 0x0
	mov dword [ebp-0x410], 0x1
	jmp dCollideBoxTriangleList_820
dCollideBoxTriangleList_810:
	mov dword [ebp-0x414], 0x0
	mov dword [ebp-0x410], 0x2
	jmp dCollideBoxTriangleList_820


;Initialized global or static variables of collision_trimesh_box:
SECTION .data


;Initialized constant data of collision_trimesh_box:
SECTION .rdata


;Zero initialized global or static variables of collision_trimesh_box:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_50000000:		dd 0x3f000000	; 0.5

