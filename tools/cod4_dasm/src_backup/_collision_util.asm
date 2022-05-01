;Imports of collision_util:

;Exports of collision_util:
	global _Z15dCollideSpheresPffS_fP12dContactGeom
	global _Z20dLineClosestApproachPKfS0_S0_S0_PfS1_
	global _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1_
	global dClosestLineSegmentPoints
	global dInfiniteAABB


SECTION .text


;dCollideSpheres(float*, float, float*, float, dContactGeom*)
_Z15dCollideSpheresPffS_fP12dContactGeom:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	movss xmm7, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	movss xmm6, dword [ebp+0x14]
	mov edx, [ebp+0x18]
	movss xmm5, dword [ecx]
	movaps xmm3, xmm5
	subss xmm3, [eax]
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [eax+0x4]
	movss xmm2, dword [ecx+0x8]
	subss xmm2, [eax+0x8]
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	mulss xmm0, xmm0
	addss xmm1, xmm0
	mulss xmm2, xmm2
	addss xmm1, xmm2
	sqrtss xmm2, xmm1
	movaps xmm4, xmm7
	addss xmm4, xmm6
	ucomiss xmm2, xmm4
	ja _Z15dCollideSpheresPffS_fP12dContactGeom_10
	xor ebx, ebx
	ucomiss xmm2, [_float_0_00000000]
	jbe _Z15dCollideSpheresPffS_fP12dContactGeom_20
_Z15dCollideSpheresPffS_fP12dContactGeom_30:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm2
	mulss xmm3, xmm1
	movss [edx+0x10], xmm3
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [eax+0x4]
	mulss xmm0, xmm1
	movss [edx+0x14], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [eax+0x8]
	mulss xmm1, xmm0
	movss [edx+0x18], xmm1
	movaps xmm1, xmm6
	subss xmm1, xmm7
	subss xmm1, xmm2
	mulss xmm1, [_float_0_50000000]
	movaps xmm0, xmm1
	mulss xmm0, xmm3
	addss xmm0, [ecx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x14]
	addss xmm0, [ecx+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [edx+0x18]
	addss xmm1, [ecx+0x8]
	movss [edx+0x8], xmm1
	subss xmm4, xmm2
	movss [edx+0x20], xmm4
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
_Z15dCollideSpheresPffS_fP12dContactGeom_10:
	xor eax, eax
	pop ebx
	pop ebp
	ret
_Z15dCollideSpheresPffS_fP12dContactGeom_20:
	jp _Z15dCollideSpheresPffS_fP12dContactGeom_30
	movss [edx], xmm5
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov dword [edx+0x10], 0x3f800000
	mov [edx+0x14], ebx
	mov [edx+0x18], ebx
	movss [edx+0x20], xmm4
	mov eax, 0x1
	pop ebx
	pop ebp
	ret


;dLineClosestApproach(float const*, float const*, float const*, float const*, float*, float*)
_Z20dLineClosestApproachPKfS0_S0_S0_PfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edi, [ebp+0x1c]
	movss xmm5, dword [eax]
	subss xmm5, [edx]
	movss xmm3, dword [eax+0x4]
	subss xmm3, [edx+0x4]
	movss xmm4, dword [eax+0x8]
	subss xmm4, [edx+0x8]
	movss xmm6, dword [ebx]
	movss xmm0, dword [ecx]
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [ecx+0x4]
	movss [ebp-0x20], xmm2
	movss xmm2, dword [ebx+0x8]
	movss xmm0, dword [ecx+0x8]
	movss [ebp-0x1c], xmm0
	movss xmm7, dword [ebp-0x24]
	mulss xmm7, xmm6
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	mulss xmm6, xmm5
	mulss xmm1, xmm3
	addss xmm6, xmm1
	mulss xmm2, xmm4
	addss xmm6, xmm2
	mulss xmm5, [ebp-0x24]
	mulss xmm3, [ebp-0x20]
	addss xmm5, xmm3
	mulss xmm4, [ebp-0x1c]
	addss xmm5, xmm4
	xorps xmm5, [_data16_80000000]
	movaps xmm0, xmm7
	mulss xmm0, xmm7
	movss xmm1, dword [_float_1_00000000]
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movaps xmm0, xmm2
	ucomiss xmm2, [_float_0_00010000]
	ja _Z20dLineClosestApproachPKfS0_S0_S0_PfS1__10
	jp _Z20dLineClosestApproachPKfS0_S0_S0_PfS1__10
	xor eax, eax
	mov [esi], eax
	mov [edi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20dLineClosestApproachPKfS0_S0_S0_PfS1__10:
	divss xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, xmm5
	addss xmm0, xmm6
	mulss xmm0, xmm1
	movss [esi], xmm0
	mulss xmm7, xmm6
	addss xmm5, xmm7
	mulss xmm5, xmm1
	movss [edi], xmm5
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;dClosestLineBoxPoints(float const*, float const*, float const*, float const*, float const*, float*, float*)
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov eax, [ebp+0xc]
	mov edi, [ebp+0x14]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx]
	movss [ebp-0xe4], xmm0
	movaps xmm2, xmm0
	mov edx, [ebp+0x10]
	subss xmm2, [edx]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0xe0], xmm0
	movaps xmm6, xmm0
	mov edx, [ebp+0x10]
	subss xmm6, [edx+0x4]
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xdc], xmm0
	movaps xmm7, xmm0
	mov edx, [ebp+0x10]
	subss xmm7, [edx+0x8]
	movss xmm5, dword [edi]
	lea edx, [edi+0x10]
	mov [ebp-0xd0], edx
	movss xmm0, dword [edi+0x10]
	movss [ebp-0xcc], xmm0
	lea edx, [edi+0x20]
	mov [ebp-0xc8], edx
	movss xmm0, dword [edi+0x20]
	movss [ebp-0xc4], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	movss xmm1, dword [ebp-0xcc]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xc4]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss [ebp-0x7c], xmm0
	lea edx, [edi+0x4]
	mov [ebp-0xc0], edx
	movss xmm4, dword [edi+0x4]
	lea edx, [edi+0x14]
	mov [ebp-0xbc], edx
	movss xmm0, dword [edi+0x14]
	movss [ebp-0xb8], xmm0
	lea edx, [edi+0x24]
	mov [ebp-0xb4], edx
	movss xmm0, dword [edi+0x24]
	movss [ebp-0xb0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, xmm4
	movss xmm1, dword [ebp-0xb8]
	mulss xmm1, xmm6
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0xb0]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	movss [ebp-0x78], xmm0
	lea edx, [edi+0x8]
	mov [ebp-0xac], edx
	movss xmm3, dword [edi+0x8]
	lea edx, [edi+0x18]
	mov [ebp-0xa8], edx
	movss xmm0, dword [edi+0x18]
	movss [ebp-0xa4], xmm0
	lea edx, [edi+0x28]
	mov [ebp-0xa0], edx
	movss xmm0, dword [edi+0x28]
	movss [ebp-0x9c], xmm0
	mulss xmm2, xmm3
	mulss xmm6, [ebp-0xa4]
	addss xmm2, xmm6
	mulss xmm7, xmm0
	addss xmm2, xmm7
	movss [ebp-0x74], xmm2
	movss xmm2, dword [eax]
	subss xmm2, [ebp-0xe4]
	movss [ebp-0x5c], xmm2
	movss xmm1, dword [eax+0x4]
	subss xmm1, [ebp-0xe0]
	movss [ebp-0x58], xmm1
	movss xmm0, dword [eax+0x8]
	subss xmm0, [ebp-0xdc]
	movss [ebp-0x54], xmm0
	mulss xmm5, xmm2
	movss xmm6, dword [ebp-0xcc]
	mulss xmm6, xmm1
	addss xmm5, xmm6
	movss xmm6, dword [ebp-0xc4]
	mulss xmm6, xmm0
	addss xmm5, xmm6
	movss [ebp-0x8c], xmm5
	mulss xmm4, xmm2
	movss xmm5, dword [ebp-0xb8]
	mulss xmm5, xmm1
	addss xmm4, xmm5
	movss xmm6, dword [ebp-0xb0]
	mulss xmm6, xmm0
	addss xmm4, xmm6
	movss [ebp-0x88], xmm4
	mulss xmm3, xmm2
	mulss xmm1, [ebp-0xa4]
	movss [ebp-0xa4], xmm1
	addss xmm3, xmm1
	mulss xmm0, [ebp-0x9c]
	addss xmm3, xmm0
	movss [ebp-0x84], xmm3
	mov ebx, 0x1
	pxor xmm6, xmm6
	movss xmm5, dword [_data16_80000000]
	mov esi, 0x3f800000
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__20:
	lea edx, [ebx*4]
	lea ecx, [ebp-0x8c]
	add ecx, edx
	movss xmm1, dword [ecx-0x4]
	ucomiss xmm6, xmm1
	ja _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__10
	mov [ebp+edx-0x50], esi
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__160:
	add ebx, 0x1
	cmp ebx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__20
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm0
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm0
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, xmm0
	movss [ebp-0x64], xmm0
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp+0x18]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x20], xmm1
	mulss xmm0, [eax+0x8]
	movss [ebp-0x1c], xmm0
	mov ecx, 0x1
	lea esi, [ebp-0x30]
	lea ebx, [ebp-0x3c]
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__50:
	lea edx, [ecx*4]
	movss xmm3, dword [ebp+edx-0x90]
	ucomiss xmm3, xmm6
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__30
	movss xmm2, dword [ebp+edx-0x80]
	movss xmm1, dword [ebp+edx-0x28]
	movaps xmm0, xmm1
	xorps xmm0, xmm5
	ucomiss xmm0, xmm2
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__40
	mov dword [esi+edx-0x4], 0xffffffff
	subss xmm0, xmm2
	divss xmm0, xmm3
	movss [ebx+edx-0x4], xmm0
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__150:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__50
	movaps xmm4, xmm6
	mov edx, 0x1
	mov eax, 0x4
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__70:
	mov ecx, [eax+esi-0x4]
	test ecx, ecx
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__60
	movaps xmm0, xmm6
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__140:
	mulss xmm0, [eax+ebx-0x4]
	subss xmm4, xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__70
	ucomiss xmm4, xmm6
	jb _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__80
	movaps xmm3, xmm6
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__270:
	mov eax, 0x1
	lea ebx, [ebp-0x5c]
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__90:
	movaps xmm0, xmm3
	mulss xmm0, [ebx+eax*4-0x4]
	mov edx, [ebp+0x8]
	addss xmm0, [edx+eax*4-0x4]
	mov edx, [ebp+0x1c]
	movss [edx+eax*4-0x4], xmm0
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__90
	mov ecx, 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__110:
	lea eax, [ecx*4]
	movaps xmm0, xmm3
	mulss xmm0, [ebp+eax-0x90]
	addss xmm0, [ebp+eax-0x80]
	mulss xmm0, [ebp+eax-0x50]
	lea edx, [ebx+eax]
	movss [edx-0x4], xmm0
	movss xmm1, dword [ebp+eax-0x28]
	movaps xmm2, xmm1
	xorps xmm2, xmm5
	ucomiss xmm2, xmm0
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__100
	movss [edx-0x4], xmm2
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__130:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__110
	movss xmm2, dword [ebp-0x5c]
	movss xmm3, dword [ebp-0x58]
	movss xmm4, dword [ebp-0x54]
	movaps xmm0, xmm2
	mulss xmm0, [edi]
	movaps xmm1, xmm3
	mov eax, [ebp-0xc0]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov edx, [ebp-0xac]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movss [ebp-0x7c], xmm0
	movaps xmm0, xmm2
	mov eax, [ebp-0xd0]
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mov edx, [ebp-0xbc]
	mulss xmm1, [edx]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mov eax, [ebp-0xa8]
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movss [ebp-0x78], xmm0
	mov edx, [ebp-0xc8]
	mulss xmm2, [edx]
	mov eax, [ebp-0xb4]
	mulss xmm3, [eax]
	addss xmm2, xmm3
	mov edx, [ebp-0xa0]
	mulss xmm4, [edx]
	addss xmm2, xmm4
	movss [ebp-0x74], xmm2
	mov eax, 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__120:
	movss xmm0, dword [ebp+eax*4-0x80]
	mov edx, [ebp+0x10]
	addss xmm0, [edx+eax*4-0x4]
	mov edx, [ebp+0x20]
	movss [edx+eax*4-0x4], xmm0
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__120
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__100:
	ucomiss xmm0, xmm1
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__130
	movss [edx-0x4], xmm1
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__130
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__60:
	movss xmm0, dword [eax+ebp-0x70]
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__140
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__40:
	xor eax, eax
	ucomiss xmm2, xmm1
	seta al
	mov [esi+edx-0x4], eax
	subss xmm1, xmm2
	divss xmm1, xmm3
	movss [ebx+edx-0x4], xmm1
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__150
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__30:
	mov dword [esi+edx-0x4], 0x0
	mov dword [ebx+edx-0x4], 0x40000000
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__150
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__10:
	lea eax, [ebp-0x7c]
	add eax, edx
	movss xmm0, dword [eax-0x4]
	xorps xmm0, xmm5
	movss [eax-0x4], xmm0
	xorps xmm1, xmm5
	movss [ecx-0x4], xmm1
	mov dword [ebp+edx-0x50], 0xbf800000
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__160
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__80:
	movaps xmm7, xmm6
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__250:
	movss xmm3, dword [_float_1_00000000]
	mov eax, 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__180:
	movss xmm1, dword [ebx+eax*4-0x4]
	ucomiss xmm1, xmm7
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__170
	movaps xmm0, xmm1
	minss xmm0, xmm3
	cmpss xmm1, [_float_1_00000000], 0x5
	movaps xmm2, xmm3
	andps xmm2, xmm1
	movaps xmm3, xmm1
	andnps xmm3, xmm0
	orps xmm3, xmm2
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__170:
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__180
	movaps xmm2, xmm6
	mov edx, 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__200:
	mov ecx, [eax+esi-0x4]
	test ecx, ecx
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__190
	movaps xmm1, xmm6
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__260:
	movaps xmm0, xmm3
	subss xmm0, [eax+ebx-0x4]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__200
	ucomiss xmm2, xmm6
	jae _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__210
	mov ecx, 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__230:
	lea eax, [ecx*4]
	lea edx, [ebx+eax]
	ucomiss xmm3, [edx-0x4]
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__220
	jp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__220
	movss xmm0, dword [ebp+eax-0x28]
	subss xmm0, [ebp+eax-0x80]
	divss xmm0, dword [ebp+eax-0x90]
	movss [edx-0x4], xmm0
	add dword [esi+eax-0x4], 0x1
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__220:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__230
	movss xmm0, dword [_float_1_00000000]
	ucomiss xmm0, xmm3
	jbe _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__240
	movaps xmm4, xmm2
	movaps xmm7, xmm3
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__250
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__190:
	movss xmm1, dword [eax+ebp-0x70]
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__260
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__240:
	movaps xmm3, xmm0
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__270
_Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__210:
	subss xmm2, xmm4
	subss xmm3, xmm7
	divss xmm2, xmm3
	divss xmm4, xmm2
	movaps xmm3, xmm7
	subss xmm3, xmm4
	jmp _Z21dClosestLineBoxPointsPKfS0_S0_S0_S0_PfS1__270
	add [eax], al


;dClosestLineSegmentPoints
dClosestLineSegmentPoints:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov edi, [ebp+0x1c]
	movss xmm0, dword [eax]
	movss [ebp-0x9c], xmm0
	movss xmm1, dword [edx]
	movss [ebp-0x98], xmm1
	subss xmm0, xmm1
	movss [ebp-0x50], xmm0
	lea esi, [eax+0x4]
	mov [ebp-0x94], esi
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x90], xmm0
	lea esi, [edx+0x4]
	mov [ebp-0x8c], esi
	movss xmm5, dword [edx+0x4]
	subss xmm0, xmm5
	movss [ebp-0x54], xmm0
	lea esi, [eax+0x8]
	mov [ebp-0x88], esi
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x84], xmm0
	lea eax, [edx+0x8]
	mov [ebp-0x80], eax
	movss xmm4, dword [edx+0x8]
	subss xmm0, xmm4
	movss [ebp-0x58], xmm0
	movss xmm3, dword [ecx]
	movss xmm1, dword [ebx]
	movaps xmm0, xmm3
	subss xmm0, xmm1
	movss [ebp-0x44], xmm0
	lea eax, [ecx+0x4]
	mov [ebp-0x7c], eax
	movss xmm0, dword [ecx+0x4]
	movss [ebp-0x78], xmm0
	lea eax, [ebx+0x4]
	mov [ebp-0x74], eax
	movss xmm7, dword [ebx+0x4]
	subss xmm0, xmm7
	movss [ebp-0x48], xmm0
	lea esi, [ecx+0x8]
	mov [ebp-0x70], esi
	movss xmm2, dword [ecx+0x8]
	lea eax, [ebx+0x8]
	mov [ebp-0x6c], eax
	movss xmm6, dword [ebx+0x8]
	movaps xmm0, xmm2
	subss xmm0, xmm6
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm1
	subss xmm0, [ebp-0x98]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm6
	subss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x40]
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [ebp-0x38]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x40]
	addss xmm0, [ebp-0x60]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0x64]
	ucomiss xmm0, [_float_0_00000000]
	jbe dClosestLineSegmentPoints_10
dClosestLineSegmentPoints_130:
	movaps xmm0, xmm3
	subss xmm0, [ebp-0x98]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x78]
	subss xmm0, xmm5
	movss [ebp-0x30], xmm0
	movaps xmm5, xmm2
	subss xmm5, xmm4
	movss [ebp-0x34], xmm5
	movss xmm5, dword [ebp-0x50]
	mulss xmm5, [ebp-0x2c]
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [ebp-0x30]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x34]
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [ebp-0x2c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x5c]
	movss [ebp-0x5c], xmm0
	pxor xmm4, xmm4
	ucomiss xmm4, xmm5
	jae dClosestLineSegmentPoints_20
dClosestLineSegmentPoints_140:
	subss xmm1, [ebp-0x9c]
	movss [ebp-0x20], xmm1
	subss xmm7, [ebp-0x90]
	movss [ebp-0x24], xmm7
	subss xmm6, [ebp-0x84]
	movss [ebp-0x28], xmm6
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, xmm1
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm7
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm6
	addss xmm4, xmm0
	movss xmm6, dword [ebp-0x44]
	mulss xmm6, xmm1
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm7
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [ebp-0x28]
	addss xmm6, xmm0
	ucomiss xmm4, [_float_0_00000000]
	jb dClosestLineSegmentPoints_30
	ucomiss xmm6, [_float_0_00000000]
	jb dClosestLineSegmentPoints_30
	movss xmm0, dword [ebp-0x9c]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov edx, [ebp-0x94]
	mov eax, [edx]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov esi, [ebp-0x88]
dClosestLineSegmentPoints_190:
	mov eax, [esi]
	mov [ecx+0x8], eax
	mov eax, [ebx]
	mov [edi], eax
	mov edx, [ebp-0x74]
	mov eax, [edx]
	mov [edi+0x4], eax
	mov ecx, [ebp-0x6c]
	mov eax, [ecx]
	mov [edi+0x8], eax
dClosestLineSegmentPoints_160:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dClosestLineSegmentPoints_30:
	subss xmm3, [ebp-0x9c]
	movss xmm1, dword [ebp-0x78]
	subss xmm1, [ebp-0x90]
	subss xmm2, [ebp-0x84]
	movss xmm7, dword [ebp-0x50]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	mulss xmm3, [ebp-0x44]
	mulss xmm1, [ebp-0x48]
	addss xmm3, xmm1
	mulss xmm2, [ebp-0x4c]
	addss xmm3, xmm2
	ucomiss xmm7, [_float_0_00000000]
	jb dClosestLineSegmentPoints_40
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	jae dClosestLineSegmentPoints_50
dClosestLineSegmentPoints_40:
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm0
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, xmm0
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [ebp-0x64]
	ucomiss xmm1, [_float_0_00000000]
	jb dClosestLineSegmentPoints_60
	pxor xmm2, xmm2
	ucomiss xmm2, xmm4
	jae dClosestLineSegmentPoints_70
dClosestLineSegmentPoints_60:
	ucomiss xmm5, [_float_0_00000000]
	jb dClosestLineSegmentPoints_80
	pxor xmm0, xmm0
	ucomiss xmm0, xmm7
	jae dClosestLineSegmentPoints_90
dClosestLineSegmentPoints_80:
	movss xmm4, dword [ebp-0x44]
	mulss xmm4, xmm4
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, xmm0
	addss xmm4, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x60]
	jae dClosestLineSegmentPoints_100
dClosestLineSegmentPoints_200:
	ucomiss xmm0, xmm6
	jae dClosestLineSegmentPoints_110
dClosestLineSegmentPoints_180:
	movss xmm3, dword [ebp-0x50]
	mulss xmm3, [ebp-0x44]
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [ebp-0x48]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x4c]
	addss xmm3, xmm0
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	jae dClosestLineSegmentPoints_120
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm1
	movss xmm1, dword [ebp-0x64]
	mulss xmm1, xmm4
	movss xmm0, dword [ebp-0x60]
	mulss xmm0, xmm3
	subss xmm1, xmm0
	mulss xmm1, xmm2
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, xmm3
	movss xmm3, dword [ebp-0x60]
	mulss xmm3, [ebp-0x68]
	subss xmm0, xmm3
	mulss xmm0, xmm2
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, xmm1
	movss xmm5, dword [ebp-0x98]
	addss xmm5, xmm4
	mov eax, [ebp+0x18]
	movss [eax], xmm5
	movss xmm2, dword [ebp-0x54]
	mulss xmm2, xmm1
	movss [ebp-0x54], xmm2
	mov eax, [ebp-0x8c]
	addss xmm2, [eax]
	mov edx, [ebp+0x18]
	movss [edx+0x4], xmm2
	mulss xmm1, [ebp-0x58]
	movss [ebp-0x58], xmm1
	mov ecx, [ebp-0x80]
	addss xmm1, [ecx]
	movss [edx+0x8], xmm1
	movss xmm1, dword [ebp-0x44]
	mulss xmm1, xmm0
	movss [ebp-0x44], xmm1
	addss xmm1, [ebx]
	movss [edi], xmm1
	movss xmm2, dword [ebp-0x48]
	mulss xmm2, xmm0
	movss [ebp-0x48], xmm2
	mov eax, [ebp-0x74]
	addss xmm2, [eax]
	movss [edi+0x4], xmm2
	mulss xmm0, [ebp-0x4c]
	movss [ebp-0x4c], xmm0
	mov edx, [ebp-0x6c]
	addss xmm0, [edx]
	movss [edi+0x8], xmm0
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dClosestLineSegmentPoints_10:
	jp dClosestLineSegmentPoints_130
	movss xmm0, dword [ebp-0x60]
	ucomiss xmm0, [_float_0_00000000]
	jb dClosestLineSegmentPoints_130
	movss xmm0, dword [ebp-0x98]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov eax, [edx+0x4]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx]
	mov [edi], eax
	mov eax, [ebx+0x4]
	mov [edi+0x4], eax
	mov eax, [ebx+0x8]
	mov [edi+0x8], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dClosestLineSegmentPoints_20:
	ucomiss xmm4, xmm0
	jb dClosestLineSegmentPoints_140
	movss xmm0, dword [ebp-0x98]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov edx, [ebp-0x8c]
	mov eax, [edx]
	mov esi, [ebp+0x18]
	mov [esi+0x4], eax
	mov edx, [ebp-0x80]
	jmp dClosestLineSegmentPoints_150
dClosestLineSegmentPoints_50:
	movss xmm0, dword [ebp-0x9c]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov edx, [ebp-0x94]
	mov eax, [edx]
	mov esi, [ebp+0x18]
	mov [esi+0x4], eax
	mov edx, [ebp-0x88]
dClosestLineSegmentPoints_150:
	mov eax, [edx]
	mov [esi+0x8], eax
	mov eax, [ecx]
	mov [edi], eax
	mov ecx, [ebp-0x7c]
	mov eax, [ecx]
	mov [edi+0x4], eax
	mov esi, [ebp-0x70]
	mov eax, [esi]
	mov [edi+0x8], eax
	jmp dClosestLineSegmentPoints_160
dClosestLineSegmentPoints_100:
	movss xmm1, dword [ebp-0x5c]
	ucomiss xmm1, xmm0
	jb dClosestLineSegmentPoints_170
	movss xmm1, dword [_data16_80000000]
	movss xmm0, dword [ebp-0x60]
	xorps xmm0, xmm1
	divss xmm0, xmm4
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, xmm0
	movss xmm5, dword [ebp-0x48]
	mulss xmm5, xmm0
	mulss xmm0, [ebp-0x4c]
	xor dword [ebp-0x38], 0x80000000
	movss xmm7, dword [ebp-0x38]
	subss xmm7, xmm2
	movss [ebp-0x38], xmm7
	movss xmm7, dword [ebp-0x50]
	mulss xmm7, [ebp-0x38]
	movss [ebp-0x38], xmm7
	xor dword [ebp-0x3c], 0x80000000
	movss xmm7, dword [ebp-0x3c]
	subss xmm7, xmm5
	movss [ebp-0x3c], xmm7
	movss xmm7, dword [ebp-0x54]
	mulss xmm7, [ebp-0x3c]
	movss [ebp-0x3c], xmm7
	movss xmm7, dword [ebp-0x38]
	addss xmm7, [ebp-0x3c]
	movss [ebp-0x38], xmm7
	xor dword [ebp-0x40], 0x80000000
	movss xmm1, dword [ebp-0x40]
	subss xmm1, xmm0
	movss xmm7, dword [ebp-0x58]
	mulss xmm7, xmm1
	movss xmm1, dword [ebp-0x38]
	addss xmm1, xmm7
	ucomiss xmm1, [_float_0_00000000]
	jb dClosestLineSegmentPoints_170
	movss xmm1, dword [ebp-0x98]
	mov eax, [ebp+0x18]
	movss [eax], xmm1
	mov edx, [ebp-0x8c]
	mov eax, [edx]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov esi, [ebp-0x80]
	mov eax, [esi]
	mov [ecx+0x8], eax
	addss xmm2, [ebx]
	movss [edi], xmm2
	mov eax, [ebp-0x74]
	addss xmm5, [eax]
	movss [edi+0x4], xmm5
	mov edx, [ebp-0x6c]
	addss xmm0, [edx]
	movss [edi+0x8], xmm0
	jmp dClosestLineSegmentPoints_160
dClosestLineSegmentPoints_70:
	movaps xmm0, xmm1
	divss xmm0, dword [ebp-0x68]
	movss xmm4, dword [ebp-0x50]
	mulss xmm4, xmm0
	movss [ebp-0x1c], xmm4
	movss xmm2, dword [ebp-0x54]
	mulss xmm2, xmm0
	movss xmm4, dword [ebp-0x58]
	mulss xmm4, xmm0
	movss xmm1, dword [ebp-0x38]
	subss xmm1, [ebp-0x1c]
	mulss xmm1, [ebp-0x44]
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x40]
	subss xmm0, xmm4
	mulss xmm0, [ebp-0x4c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jb dClosestLineSegmentPoints_60
	movss xmm5, dword [ebp-0x98]
	addss xmm5, [ebp-0x1c]
	mov eax, [ebp+0x18]
	movss [eax], xmm5
	mov edx, [ebp-0x8c]
	addss xmm2, [edx]
	movss [eax+0x4], xmm2
	mov ecx, [ebp-0x80]
	addss xmm4, [ecx]
	movss [eax+0x8], xmm4
	mov eax, [ebx]
	mov [edi], eax
	mov esi, [ebp-0x74]
	mov eax, [esi]
	mov [edi+0x4], eax
	mov edx, [ebp-0x6c]
	mov eax, [edx]
	mov [edi+0x8], eax
	jmp dClosestLineSegmentPoints_160
dClosestLineSegmentPoints_90:
	movaps xmm0, xmm5
	divss xmm0, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x50]
	mulss xmm2, xmm0
	movss xmm1, dword [ebp-0x54]
	mulss xmm1, xmm0
	mulss xmm0, [ebp-0x58]
	movss xmm4, dword [ebp-0x2c]
	subss xmm4, xmm2
	movss xmm5, dword [ebp-0x44]
	mulss xmm5, xmm4
	movss xmm7, dword [ebp-0x30]
	subss xmm7, xmm1
	movss xmm4, dword [ebp-0x48]
	mulss xmm4, xmm7
	addss xmm5, xmm4
	movss [ebp-0x2c], xmm5
	movss xmm5, dword [ebp-0x34]
	subss xmm5, xmm0
	movss xmm7, dword [ebp-0x4c]
	mulss xmm7, xmm5
	movss xmm4, dword [ebp-0x2c]
	addss xmm4, xmm7
	pxor xmm5, xmm5
	ucomiss xmm5, xmm4
	jb dClosestLineSegmentPoints_80
	addss xmm2, [ebp-0x98]
	mov eax, [ebp+0x18]
	movss [eax], xmm2
	mov edx, [ebp-0x8c]
	addss xmm1, [edx]
	movss [eax+0x4], xmm1
	mov esi, [ebp-0x80]
	addss xmm0, [esi]
	movss [eax+0x8], xmm0
	mov eax, [ecx]
	mov [edi], eax
	mov edx, [ebp-0x7c]
	mov eax, [edx]
	mov [edi+0x4], eax
	mov ecx, [ebp-0x70]
	mov eax, [ecx]
	mov [edi+0x8], eax
	jmp dClosestLineSegmentPoints_160
dClosestLineSegmentPoints_110:
	ucomiss xmm3, xmm0
	jb dClosestLineSegmentPoints_180
	movss xmm1, dword [_data16_80000000]
	movaps xmm0, xmm6
	xorps xmm0, xmm1
	divss xmm0, xmm4
	movss xmm2, dword [ebp-0x44]
	mulss xmm2, xmm0
	movss xmm3, dword [ebp-0x48]
	mulss xmm3, xmm0
	mulss xmm0, [ebp-0x4c]
	xor dword [ebp-0x20], 0x80000000
	movss xmm5, dword [ebp-0x20]
	subss xmm5, xmm2
	movss xmm7, dword [ebp-0x50]
	mulss xmm7, xmm5
	movss [ebp-0x20], xmm7
	xor dword [ebp-0x24], 0x80000000
	movss xmm5, dword [ebp-0x24]
	subss xmm5, xmm3
	movss xmm7, dword [ebp-0x54]
	mulss xmm7, xmm5
	movss xmm5, dword [ebp-0x20]
	addss xmm5, xmm7
	movss [ebp-0x20], xmm5
	xor dword [ebp-0x28], 0x80000000
	movss xmm7, dword [ebp-0x28]
	subss xmm7, xmm0
	movss xmm1, dword [ebp-0x58]
	mulss xmm1, xmm7
	addss xmm5, xmm1
	pxor xmm7, xmm7
	ucomiss xmm7, xmm5
	jb dClosestLineSegmentPoints_180
	movss xmm1, dword [ebp-0x9c]
	mov eax, [ebp+0x18]
	movss [eax], xmm1
	mov edx, [ebp-0x94]
	mov eax, [edx]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov esi, [ebp-0x88]
	mov eax, [esi]
	mov [ecx+0x8], eax
	addss xmm2, [ebx]
	movss [edi], xmm2
	mov eax, [ebp-0x74]
	addss xmm3, [eax]
	movss [edi+0x4], xmm3
	mov edx, [ebp-0x6c]
	addss xmm0, [edx]
	movss [edi+0x8], xmm0
	jmp dClosestLineSegmentPoints_160
dClosestLineSegmentPoints_120:
	movss xmm0, dword [ebp-0x98]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	mov edx, [ebp-0x8c]
	mov eax, [edx]
	mov ecx, [ebp+0x18]
	mov [ecx+0x4], eax
	mov esi, [ebp-0x80]
	jmp dClosestLineSegmentPoints_190
dClosestLineSegmentPoints_170:
	pxor xmm0, xmm0
	jmp dClosestLineSegmentPoints_200
	add [eax], al


;dInfiniteAABB
dInfiniteAABB:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov ecx, 0xff7fffff
	mov [eax], ecx
	mov edx, 0x7f7fffff
	mov [eax+0x4], edx
	mov [eax+0x8], ecx
	mov [eax+0xc], edx
	mov [eax+0x10], ecx
	mov [eax+0x14], edx
	pop ebp
	ret
	nop


;Initialized global or static variables of collision_util:
SECTION .data


;Initialized constant data of collision_util:
SECTION .rdata


;Zero initialized global or static variables of collision_util:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00010000:		dd 0x38d1b717	; 0.0001

