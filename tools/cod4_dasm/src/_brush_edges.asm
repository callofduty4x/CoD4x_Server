;Imports of brush_edges:
	extern memmove
	extern _Z24VecNCompareCustomEpsilonPKfS0_fi
	extern memcpy
	extern _Z15PlaneFromPointsPfPKfS1_S1_
	extern _Z14Com_PrintErroriPKcz

;Exports of brush_edges:
	global _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
	global _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni
	global _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	global _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti


SECTION .text


;FindCycleBFS(int, SimplePlaneIntersection const**, int, SimplePlaneIntersection const*, SimplePlaneIntersection const*, int, SimplePlaneIntersection const**, int*)
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi:
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
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_30:
	mov eax, [ebx+0xc]
	cmp [ebp-0x4034], eax
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_10
	cmp [ebp+0x10], eax
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_20
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_10:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_30
	mov eax, 0xffffffff
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_250:
	mov [ebp-0x4014], eax
	mov dword [ebp-0x4010], 0x1
	mov dword [ebp-0x400c], 0x0
	mov ebx, [ebp+0xc]
	xor esi, esi
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_60:
	mov eax, [ebx+0xc]
	cmp [ebp-0x4034], eax
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_40
	cmp [ebp+0x10], eax
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_50
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x3
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_60
	mov dword [ebp-0x4028], 0xffffffff
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_240:
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
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_110:
	add ebx, 0x4
	mov [ebp-0x401c], ebx
	mov edx, [ebp-0x4020]
	mov eax, [edx+0x4]
	mov ebx, [ebp-0x4024]
	cmp [ebp-0x4038], ebx
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_70
	mov esi, [ebp-0x4038]
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_90:
	mov ebx, [esi]
	cmp eax, [ebx+0xc]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_80
	cmp eax, [ebx+0x10]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_80
	cmp eax, [ebx+0x14]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_80
	add esi, 0x4
	cmp esi, [ebp-0x4024]
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_90
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_70:
	add dword [ebp-0x4030], 0x1
	add dword [ebp-0x403c], 0x10
	add dword [ebp-0x4020], 0x10
	mov ebx, [ebp-0x4030]
	cmp [ebp-0x402c], ebx
	jle _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_100
	mov ebx, [ebp-0x4020]
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_110
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_80:
	cmp [ebp-0x4024], esi
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_70
	mov eax, [ebp-0x401c]
	mov edi, [eax]
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_190:
	mov edx, ebx
	xor ecx, ecx
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_140:
	mov eax, [edx+0xc]
	cmp [ebp-0x4034], eax
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_120
	cmp edi, eax
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_130
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_120:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_140
	mov ecx, 0xffffffff
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_220:
	cmp ecx, [ebp+0x10]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_150
	mov eax, [ebp-0x402c]
	test eax, eax
	jg _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_160
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_200:
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
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_170
	mov edx, [ebp-0x401c]
	mov edi, [edx]
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_150:
	add esi, 0x4
	cmp esi, [ebp-0x4024]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_70
	mov ebx, [esi]
	cmp edi, [ebx+0xc]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_180
	cmp edi, [ebx+0x10]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_180
	cmp edi, [ebx+0x14]
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_150
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_180:
	cmp esi, [ebp-0x4024]
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_190
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_70
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_160:
	cmp ecx, [ebp-0x4014]
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_150
	xor edx, edx
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_210:
	add edx, 0x1
	cmp [ebp-0x402c], edx
	jz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_200
	mov eax, edx
	shl eax, 0x4
	cmp [eax+ebp-0x4014], ecx
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_210
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_150
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_130:
	mov ecx, [ebx+ecx*4+0xc]
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_220
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_100:
	mov eax, [ebp+0x18]
	mov dword [eax], 0x0
	xor eax, eax
	add esp, 0x403c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_170:
	lea ecx, [ebp-0x4018]
	add ecx, [ebp-0x4040]
	mov eax, [ecx+0x8]
	add eax, 0x1
	mov edx, [ebp+0x18]
	mov [edx], eax
	mov eax, [ecx+0x8]
	mov ebx, [ebp+0x14]
	lea edx, [ebx+eax*4]
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_230:
	mov eax, [ecx]
	mov [edx], eax
	mov ecx, [ecx+0xc]
	sub edx, 0x4
	test ecx, ecx
	jnz _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_230
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
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_50:
	mov eax, [ebp+0xc]
	mov esi, [eax+esi*4+0xc]
	mov [ebp-0x4028], esi
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_240
_Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_20:
	mov eax, [edx+esi*4+0xc]
	jmp _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi_250
	nop


;RemovePtsWithPlanesThatOccurLessThanTwice(SimplePlaneIntersection const**, int)
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], eax
	mov edi, edx
	test edx, edx
	jle _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_10
	mov dword [ebp-0x1c], 0x0
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_50:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x24]
	lea eax, [edx+eax*4]
	mov [ebp-0x28], eax
	mov edx, [eax]
	mov [ebp-0x20], edx
	mov ebx, [edx+0xc]
	test edi, edi
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov edx, [ebp-0x24]
	lea eax, [edx+edi*4]
	cmp edx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov ecx, edx
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_40:
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_30
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_30
	cmp ebx, [edx+0x14]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_30
	add ecx, 0x4
	cmp ecx, eax
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_40
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20:
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
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_210:
	cmp [ebp-0x1c], edi
	jl _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_50
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_30:
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	xor esi, esi
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_220:
	add esi, 0x1
	add ecx, 0x4
	cmp eax, ecx
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_60
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_80:
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_70
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_70
	cmp ebx, [edx+0x14]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_70
	add ecx, 0x4
	cmp ecx, eax
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_80
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_60:
	sub esi, 0x1
	jle _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x10]
	cmp [ebp-0x24], eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov ecx, [ebp-0x24]
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_90
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_100:
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_90
	cmp ebx, [edx+0x14]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_90
	add ecx, 0x4
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_100
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_90:
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	xor esi, esi
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_140:
	add esi, 0x1
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_130:
	add ecx, 0x4
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_110
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_120
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_120
	cmp ebx, [edx+0x14]
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_130
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_120:
	cmp ecx, eax
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_140
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_110:
	sub esi, 0x1
	jle _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov edx, [ebp-0x20]
	mov ebx, [edx+0x14]
	cmp [ebp-0x24], eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov ecx, [ebp-0x24]
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_150
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_160:
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_150
	cmp ebx, [edx+0x14]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_150
	add ecx, 0x4
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_160
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_150:
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	xor esi, esi
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_200:
	add esi, 0x1
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_190:
	add ecx, 0x4
	cmp ecx, eax
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_170
	mov edx, [ecx]
	cmp ebx, [edx+0xc]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_180
	cmp ebx, [edx+0x10]
	jz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_180
	cmp ebx, [edx+0x14]
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_190
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_180:
	cmp ecx, eax
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_200
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_170:
	sub esi, 0x1
	jle _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_20
	add dword [ebp-0x1c], 0x1
	jmp _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_210
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_70:
	cmp ecx, eax
	jnz _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_220
	jmp _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_60
_Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni_10:
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
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x305c
	mov edi, eax
	mov esi, edx
	test edx, edx
	jz _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_10
	xor ebx, ebx
	lea ecx, [ebp-0x3018]
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_20:
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
	jnz _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_20
	cmp esi, 0x1
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_30
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_10:
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
	jbe _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_40
	lea ecx, [ebx-0x1]
	lea eax, [ebx-0x2]
	xor edi, edi
	lea esi, [ebp-0x3018]
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_50
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_90:
	movss xmm1, dword [_float_1_00000000]
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_100:
	mulss xmm6, xmm1
	movss [ebp-0x303c], xmm6
	mulss xmm5, xmm1
	movss [ebp-0x3038], xmm5
	mulss xmm2, xmm1
	movss [ebp-0x3034], xmm2
	cvtss2sd xmm0, xmm4
	movsd xmm2, qword [_double_0_01000000]
	ucomisd xmm2, xmm0
	jbe _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_60
	mulss xmm3, [ebp-0x3028]
	mulss xmm7, [ebp-0x3020]
	movss [ebp-0x3020], xmm7
	addss xmm3, xmm7
	movss xmm4, dword [ebp-0x3024]
	mulss xmm4, [ebp-0x302c]
	addss xmm3, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm3
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_70
	lea edx, [edi+0x1]
	add esi, 0xc
	cmp ebx, edx
	jz _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_80
	mov eax, ecx
	mov ecx, edi
	mov edi, edx
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_50:
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
	jae _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_90
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm4
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_100
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_80:
	mov ecx, edi
	mov edi, ebx
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_60:
	lea edx, [edi+0x1]
	cmp ebx, edx
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_110
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_160:
	mov eax, 0x1
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_200:
	movzx eax, al
	add esp, 0x305c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_30:
	mov dword [ebp-0x301c], 0x1
	mov edi, 0xc
	lea ebx, [ebp-0x3018]
	add ebx, 0xc
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_130:
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
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_120
	add dword [ebp-0x301c], 0x1
	add edi, 0xc
	add ebx, 0xc
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_140:
	cmp [ebp-0x301c], esi
	jb _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_130
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_10
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_40:
	xor eax, eax
	add esp, 0x305c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_120:
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
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_140
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_110:
	lea eax, [edx+edx*2]
	lea esi, [eax*4]
	mov [ebp-0x3030], edx
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_150
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_180:
	mulss xmm6, [ebp-0x3040]
	mulss xmm7, [ebp-0x3048]
	movss [ebp-0x3048], xmm7
	addss xmm6, xmm7
	movss xmm4, dword [ebp-0x304c]
	mulss xmm4, [ebp-0x3044]
	addss xmm6, xmm4
	pxor xmm0, xmm0
	ucomiss xmm0, xmm6
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_70
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_190:
	mov eax, [ebp-0x3030]
	add eax, 0x1
	add esi, 0xc
	cmp ebx, eax
	jz _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_160
	mov ecx, edi
	mov edi, [ebp-0x3030]
	mov [ebp-0x3030], eax
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_150:
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
	jb _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_170
	movss xmm0, dword [_float_1_00000000]
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_210:
	mulss xmm5, xmm0
	movaps xmm1, xmm0
	mulss xmm1, xmm4
	mulss xmm2, xmm0
	cvtss2sd xmm0, xmm3
	movsd xmm3, qword [_double_0_01000000]
	ucomisd xmm3, xmm0
	ja _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_180
	movss xmm0, dword [ebp-0x303c]
	mulss xmm0, xmm5
	mulss xmm1, [ebp-0x3038]
	addss xmm0, xmm1
	mulss xmm2, [ebp-0x3034]
	addss xmm0, xmm2
	ucomiss xmm0, [_float_0_50000000]
	jp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_190
	jae _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_190
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_70:
	xor eax, eax
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_200
_Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_170:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm3
	jmp _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj_210


;BuildBrushdAdjacencyWindingForSide(float const*, int, SimplePlaneIntersection const*, int, adjacencyWinding_t*, int)
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xf14c
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov eax, [ebp+0x10]
	xor edx, edx
	xor esi, esi
	lea ebx, [ebp-0x204c]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_20
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_50:
	cmp edi, [eax+0x14]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_30
	add edx, 0x1
	add eax, 0x18
	cmp ecx, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_40
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_20:
	mov edi, [ebp+0xc]
	cmp edi, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_30
	cmp edi, [eax+0x10]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_50
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_30:
	cmp esi, 0x400
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov [ebx+esi*4], eax
	add esi, 0x1
	add edx, 0x1
	add eax, 0x18
	cmp ecx, edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_20
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_40:
	cmp esi, 0x2
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_60
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10:
	xor ebx, ebx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380:
	mov eax, ebx
	add esp, 0xf14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_60:
	xor edi, edi
	mov dword [ebp-0xf0f0], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_90:
	mov ecx, [ebp-0xf0f0]
	mov eax, [ebp+ecx*4-0x204c]
	mov [ebp+edi*4-0x104c], eax
	add edi, 0x1
	add dword [ebp-0xf0f0], 0x1
	cmp esi, [ebp-0xf0f0]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_70
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_100:
	test edi, edi
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_80
	xor ebx, ebx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_490:
	cmp ebx, edi
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_90
	add dword [ebp-0xf0f0], 0x1
	cmp esi, [ebp-0xf0f0]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_100
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_70:
	cmp edi, 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov edx, esi
	lea eax, [ebp-0x204c]
	call _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni
	mov [ebp-0xf06c], eax
	cmp eax, 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	xor ebx, ebx
	mov dword [ebp-0xf0e8], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_150:
	xor ecx, ecx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_140:
	mov eax, [ebp+ebx*4-0x204c]
	mov edx, [eax+ecx*4+0xc]
	cmp [ebp+0xc], edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_110
	mov esi, [ebp-0xf0e8]
	test esi, esi
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_120
	cmp [ebp-0x404c], edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_110
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_130:
	add eax, 0x1
	cmp [ebp-0xf0e8], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_120
	cmp [ebp+eax*4-0x404c], edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_130
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_110:
	add ecx, 0x1
	cmp ecx, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_140
	add ebx, 0x1
	cmp [ebp-0xf06c], ebx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_150
	mov edi, [ebp-0xf0e8]
	test edi, edi
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_160
	mov dword [ebp-0xf0e4], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_200:
	mov edi, [ebp-0xf0e4]
	lea edi, [ebp+edi*4-0x404c]
	mov [ebp-0xf070], edi
	mov ecx, [edi]
	mov esi, [ebp-0xf06c]
	test esi, esi
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
	mov eax, [ebp-0xf06c]
	lea ebx, [ebp+eax*4-0x204c]
	lea edx, [ebp-0x204c]
	cmp edx, ebx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_190:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_180
	cmp ecx, [eax+0x10]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_180
	cmp ecx, [eax+0x14]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_180
	add edx, 0x4
	cmp edx, ebx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_190
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170:
	add dword [ebp-0xf0e4], 0x1
	mov edi, [ebp-0xf0e8]
	cmp [ebp-0xf0e4], edi
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_200
	cmp dword [ebp-0xf06c], 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_160:
	mov dword [ebp-0xf0fc], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_370:
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
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_220:
	mov ebx, [ebp+0xc]
	cmp ebx, [eax+0xc]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_210
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_220
	mov esi, 0xffffffff
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_850:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_230
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
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_310:
	lea eax, [ebp-0x204c]
	add eax, [ebp-0xf078]
	lea ebx, [ebp-0x204c]
	cmp ebx, eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_240
	mov edx, ebx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_260:
	mov ebx, [edx]
	cmp esi, [ebx+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_250
	cmp esi, [ebx+0x10]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_250
	cmp esi, [ebx+0x14]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_250
	add edx, 0x4
	cmp eax, edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_260
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_240:
	xor ebx, ebx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_510:
	mov [edi], ebx
	test ebx, ebx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_270
	mov edx, ebx
	xor ecx, ecx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_300:
	mov eax, [edx+0xc]
	cmp [ebp+0xc], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_280
	cmp esi, eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_290
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_280:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_300
	mov esi, 0xffffffff
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_700:
	sub dword [ebp-0xf06c], 0x1
	add dword [ebp-0xf084], 0x1
	add dword [ebp-0xf07c], 0x1
	sub dword [ebp-0xf078], 0x4
	add edi, 0x4
	mov eax, [ebp-0xf07c]
	cmp [ebp-0xf074], eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_310
	mov ecx, [ebp-0xf084]
	mov edx, [ebp-0xf0fc]
	mov [ebp+edx*4-0x28], ecx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_230:
	mov eax, [ebp-0xf0fc]
	test eax, eax
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_320
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_330
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_820:
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_340
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_840:
	mov edx, edi
	lea eax, [ebp-0x904c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov ebx, eax
	mov edx, esi
	lea eax, [ebp-0x804c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	test bl, bl
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_350
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_360
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_680:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_370
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_380
	mov eax, [ebp+0x1c]
	cmp [ebp-0x28], eax
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_390
	mov ebx, [ebp+0x18]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1550:
	lea ecx, [ebx+0x4]
	mov [ebp-0xf094], ecx
	mov esi, [ebp-0x28]
	mov [ebp-0xf100], esi
	mov edi, [ebp+esi*4-0x9050]
	mov [ebp-0xf0c4], edi
	mov ecx, [ebp-0x904c]
	mov esi, ecx
	xor edi, edi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_420:
	mov eax, [esi+0xc]
	mov [ebp-0xf0c0], eax
	cmp [ebp+0xc], eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_400
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_410:
	add eax, 0x1
	cmp eax, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_410
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1530:
	add edi, 0x1
	add esi, 0x4
	cmp edi, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_420
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1540:
	mov eax, [ecx]
	mov [ebp-0xf04c], eax
	mov eax, [ecx+0x4]
	mov [ebp-0xf048], eax
	mov eax, [ecx+0x8]
	mov [ebp-0xf044], eax
	mov dword [ebx], 0x1
	cmp dword [ebp-0xf100], 0x1
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov dword [ebp-0xf0bc], 0x1
	mov ecx, 0x1
	mov [ebp-0xf10c], ecx
	mov eax, [ebp-0xf0bc]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_470:
	sub eax, 0x1
	mov esi, [ebx+eax*4+0x4]
	mov edx, [ebp+eax*4-0x904c]
	mov edi, edx
	xor ecx, ecx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_450:
	mov eax, [edx+0xc]
	cmp [ebp+0xc], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_430
	cmp esi, eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_440
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_430:
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_450
	mov eax, 0xffffffff
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1210:
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
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_460
	mov eax, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_470
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_80:
	xor ebx, ebx
	mov eax, [ebp-0xf0f0]
	shl eax, 0x2
	mov [ebp-0xf104], eax
	mov edx, eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_480
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_500:
	mov edx, [ebp-0xf104]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_480:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3c23d70a
	mov eax, [ebp+ebx*4-0x104c]
	mov [esp+0x4], eax
	mov eax, [ebp+edx-0x204c]
	mov [esp], eax
	call _Z24VecNCompareCustomEpsilonPKfS0_fi
	test eax, eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_490
	add ebx, 0x1
	cmp ebx, edi
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_500
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_90
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_120:
	mov esi, [ebp-0xf0e8]
	mov [ebp+esi*4-0x404c], edx
	add esi, 0x1
	mov [ebp-0xf0e8], esi
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_110
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_250:
	cmp eax, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_240
	sub eax, edx
	sub eax, 0x4
	mov [esp+0x8], eax
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_510
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_180:
	cmp edx, ebx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
	mov dword [ebp-0xf0e0], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_580:
	mov esi, [ebp-0xf0e0]
	mov [ebp+esi*4-0x104c], eax
	add esi, 0x1
	mov [ebp-0xf0e0], esi
	add edx, 0x4
	cmp ebx, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_520
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_540:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_530
	cmp ecx, [eax+0x10]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_530
	cmp ecx, [eax+0x14]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_530
	add edx, 0x4
	cmp edx, ebx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_540
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_520:
	cmp dword [ebp-0xf0e0], 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
	mov edi, [ebp-0xf070]
	mov edi, [edi]
	mov [ebp-0xf0dc], edi
	mov dword [ebp-0x304c], 0x1
	mov dword [ebp-0xf0ec], 0x1
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_570:
	mov ecx, [ebp-0xf0ec]
	shl ecx, 0x2
	mov [ebp-0xf0d8], ecx
	mov ebx, [ebp+ecx-0x3050]
	mov [ebp-0xf0d4], ebx
	cmp [ebp-0xf0e0], ebx
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_550
	mov edi, [ebp-0xf0ec]
	test edi, edi
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_560
	xor esi, esi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_670:
	cmp [ebp-0xf0ec], esi
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_570
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_610:
	mov eax, [ebp-0xf0d4]
	add eax, 0x1
	mov edx, [ebp-0xf0d8]
	mov [ebp+edx-0x304c], eax
	add dword [ebp-0xf0ec], 0x1
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_570
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_530:
	cmp edx, ebx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_580
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_520
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_560:
	mov edi, [ebp-0xf0d4]
	lea ebx, [ebp+edi*4-0x104c]
	xor esi, esi
	xor edi, edi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_600:
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_590
	add esi, 0x1
	add edi, 0x4
	cmp [ebp-0xf0ec], esi
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_600
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_610
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_550:
	mov ecx, [ebp-0xf0ec]
	test ecx, ecx
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_620
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860:
	cmp dword [ebp-0xf06c], 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov edi, [ebp-0xf070]
	mov ecx, [edi]
	mov eax, [ebp-0xf06c]
	lea ebx, [ebp+eax*4-0x204c]
	lea edx, [ebp-0x204c]
	cmp ebx, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_640:
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_630
	cmp ecx, [eax+0x10]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_630
	cmp ecx, [eax+0x14]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_630
	add edx, 0x4
	cmp ebx, edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_640
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_590:
	mov eax, [ebp-0xf0ec]
	sub eax, 0x1
	cmp eax, esi
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_650
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
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_650:
	mov eax, [ebp-0xf108]
	mov edx, esi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_660:
	add dword [ebp+eax-0x304c], 0x1
	add edx, 0x1
	add eax, 0x4
	cmp [ebp-0xf0ec], edx
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_660
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_670
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_320:
	mov dword [ebp-0xf0fc], 0x1
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_680
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_350:
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_690
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_360:
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf0f4]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf0f8]
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_690
	movss xmm0, dword [ebp-0xf0f8]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf0f4]
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_680
	cmp edi, esi
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_680
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_690:
	lea eax, [esi*4]
	mov [esp+0x8], eax
	lea edi, [ebp-0x804c]
	mov [esp+0x4], edi
	lea eax, [ebp-0x904c]
	mov [esp], eax
	call memcpy
	mov [ebp-0x28], esi
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_680
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_290:
	mov esi, [ebx+ecx*4+0xc]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_700
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_630:
	cmp ebx, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_170
	mov dword [ebp-0xf0e0], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_730:
	mov esi, [ebp-0xf0e0]
	mov [ebp+esi*4-0x104c], eax
	add esi, 0x1
	mov [ebp-0xf0e0], esi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_720:
	add edx, 0x4
	cmp ebx, edx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_520
	mov eax, [edx]
	cmp ecx, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_710
	cmp ecx, [eax+0x10]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_710
	cmp ecx, [eax+0x14]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_720
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_710:
	cmp ebx, edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_730
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_520
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_620:
	mov edi, [ebp-0x304c]
	cmp edi, 0x1
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_740
	cmp edi, 0x2
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_750
	xor ecx, ecx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_800:
	add ecx, 0x1
	cmp [ebp-0xf0ec], ecx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_760
	cmp ecx, 0x2
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_770
	mov edx, [ebp+ecx*4-0x304c]
	mov eax, edx
	sub eax, edi
	cmp eax, 0x1
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_780
	cmp eax, 0x2
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_790
	mov edi, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_800
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_270:
	mov edi, [ebp-0xf084]
	mov esi, [ebp-0xf0fc]
	mov [ebp+esi*4-0x28], edi
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_230
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_330:
	mov ebx, 0x1
	lea ecx, [ebp-0x9048]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_810:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_810
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_820
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_340:
	mov ebx, 0x1
	lea ecx, [ebp-0x904c]
	add ecx, 0x1004
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_830:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_830
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_840
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_210:
	mov esi, [ecx+edx*4+0xc]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_850
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_760:
	cmp dword [ebp-0xf0ec], 0x2
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_770:
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_870
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1410:
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_880
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1360:
	mov edx, edi
	lea eax, [ebp-0x704c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov ebx, eax
	mov edx, [ebp-0x2c]
	lea eax, [ebp-0x604c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov ecx, [ebp-0x2c]
	mov edx, [ebp-0x30]
	test bl, bl
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_890
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_900
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1230:
	mov eax, [ebp-0x1044]
	mov edx, [ebp-0xf06c]
	test edx, edx
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_910
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1600:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_920
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1590:
	mov edx, [ebp-0x1040]
	cmp dword [ebp-0xf06c], 0x0
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_930
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1580:
	mov edx, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1640:
	mov esi, [ebp-0xf06c]
	sub esi, eax
	lea eax, [esi*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_940
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_740:
	xor di, di
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_780:
	mov eax, [ebp+edi*4-0x104c]
	cmp dword [ebp-0xf06c], 0x0
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_950
	cmp [ebp-0x204c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_960
	xor edx, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_970:
	add edx, 0x1
	cmp edx, [ebp-0xf06c]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
	cmp [ebp+edx*4-0x204c], eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_970
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_980
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_950:
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	xor edx, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_980:
	mov ecx, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1490:
	mov eax, [ebp-0xf06c]
	sub eax, edx
	lea eax, [eax*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+ecx*4-0x204c]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_940:
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	mov edx, [ebp-0xf06c]
	sub edx, 0x1
	cmp edx, 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	lea eax, [ebp-0x204c]
	call _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni
	mov [ebp-0xf06c], eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_750:
	xor edi, edi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_790:
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
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
	call _Z12FindCycleBFSiPPK23SimplePlaneIntersectioniS1_S1_iS2_Pi
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_990
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1480:
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1000
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1460:
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1010
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1440:
	movss xmm0, dword [ebp-0xf0c8]
	movss [ebp-0x34], xmm0
	mov edx, [ebp-0xf0cc]
	lea eax, [ebp-0xc04c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov [ebp-0x1b], al
	mov edx, [ebp-0x5048]
	lea eax, [ebp-0xb04c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov [ebp-0x1a], al
	mov edx, [ebp-0x5044]
	lea eax, [ebp-0xa04c]
	call _Z27TestConvexWithoutNearPointsPPK23SimplePlaneIntersectionj
	mov [ebp-0x19], al
	mov ebx, [ebp-0x5048]
	mov ecx, [ebp-0x504c]
	movss xmm3, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x3c]
	movzx edx, byte [ebp-0x1a]
	cmp byte [ebp-0x1b], 0x0
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1020
	test dl, dl
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1030
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1090:
	xor edx, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1100:
	mov ebx, [ebp-0x5044]
	mov ecx, [ebp+edx*4-0x504c]
	movss xmm1, dword [ebp+edx*4-0x3c]
	cmp byte [ebp+edx-0x1b], 0x0
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1040
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1050
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1120:
	mov eax, 0x2
	sub eax, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1130:
	lea eax, [edi+eax]
	mov eax, [ebp+eax*4-0x104c]
	cmp dword [ebp-0xf06c], 0x0
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_950
	cmp [ebp-0x204c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_960
	xor edx, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1060
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1070:
	cmp [ebp+edx*4-0x204c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_980
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1060:
	add edx, 0x1
	cmp [ebp-0xf06c], edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1070
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1020:
	test dl, dl
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1080
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1030:
	movss xmm2, dword [_float_1_00000000]
	movaps xmm0, xmm3
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1080
	subss xmm1, xmm2
	ucomiss xmm1, xmm3
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1090
	cmp ebx, ecx
	jge _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1090
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1080:
	mov edx, 0x1
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1100
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1040:
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1110
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1050:
	movss xmm2, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf0c8]
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1110
	subss xmm1, xmm2
	ucomiss xmm1, [ebp-0xf0c8]
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1120
	cmp ebx, ecx
	jge _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1120
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1110:
	xor eax, eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1130
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_460:
	cmp edx, 0x2
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	mov edi, 0x2
	lea ecx, [ebp-0xf04c]
	mov [ebp-0xf080], ecx
	mov dword [ebp-0xf064], 0x1
	mov dword [ebp-0xf068], 0x2
	pxor xmm0, xmm0
	movss [ebp-0xf05c], xmm0
	mov dword [ebp-0xf060], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1200:
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
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1180:
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
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1140
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
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1160:
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
	jbe _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1150
	movss [ebp-0xf05c], xmm4
	mov [ebp-0xf060], edx
	mov [ebp-0xf064], ecx
	mov [ebp-0xf068], edi
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1150:
	add edx, 0x1
	add eax, 0xc
	cmp ecx, edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1160
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1140:
	add ecx, 0x1
	add esi, 0xc
	cmp edi, ecx
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1170
	movss xmm6, dword [ebp-0xf0a8]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1180
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1170:
	add edi, 0x1
	add dword [ebp-0xf080], 0xc
	cmp edi, [ebp-0xf0bc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1190
	cmp edi, 0x1
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1170
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1200
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_440:
	mov eax, [edi+ecx*4+0xc]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1210
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_890:
	test al, al
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1220
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_900:
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [ebp-0xf090]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf08c]
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1220
	movss xmm0, dword [ebp-0xf08c]
	subss xmm0, xmm1
	ucomiss xmm0, [ebp-0xf090]
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1230
	cmp ecx, edx
	jge _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1230
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1220:
	mov edx, [ebp-0x104c]
	mov ebx, [ebp-0xf06c]
	test ebx, ebx
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1240
	cmp edx, [ebp-0x204c]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1250
	xor eax, eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1260
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1280:
	cmp edx, [ebp+eax*4-0x204c]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1270
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1260:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1280
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1290
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1240:
	mov eax, [ebp-0xf06c]
	test eax, eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1290
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1270:
	mov edx, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1420:
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
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1300
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1290:
	mov edx, [ebp-0x1048]
	cmp dword [ebp-0xf06c], 0x0
	jg _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1310
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1340:
	mov edx, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1500:
	mov ebx, [ebp-0xf06c]
	sub ebx, eax
	lea eax, [ebx*4-0x4]
	mov [esp+0x8], eax
	lea edx, [ebp+edx*4-0x204c]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_940
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1310:
	cmp edx, [ebp-0x204c]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1320
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1330:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
	cmp edx, [ebp+eax*4-0x204c]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1330
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1340
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_880:
	mov esi, 0x1
	lea ecx, [ebp-0x704c]
	add ecx, 0x1004
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1350:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1350
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1360
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1190:
	movss xmm0, dword [ebp-0xf05c]
	ucomiss xmm0, [_float_0_00100000]
	jp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1370
	jb _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_10
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1370:
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
	call _Z15PlaneFromPointsPfPKfS1_S1_
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
	jae _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380
	jp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380
	mov eax, [ebx]
	lea ecx, [ebx+eax*4]
	cmp [ebp-0xf094], ecx
	jae _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1390:
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
	ja _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1390
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_870:
	mov ebx, 0x1
	lea ecx, [ebp-0x7048]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1400:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1400
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1410
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1300:
	mov edx, [ebp-0xf06c]
	lea eax, [ebp-0x204c]
	call _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni
	mov [ebp-0xf06c], eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1290
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1250:
	xor eax, eax
	xor edx, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1420
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1010:
	mov esi, 0x1
	lea ecx, [ebp-0xc04c]
	add ecx, 0x2004
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1430:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1430
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1440
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1000:
	mov esi, 0x1
	lea ecx, [ebp-0xc04c]
	add ecx, 0x1004
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1450:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1450
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1460
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_990:
	mov ebx, 0x1
	lea ecx, [ebp-0xc048]
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1470:
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
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1470
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1480
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_960:
	xor edx, edx
	xor ecx, ecx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1490
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1320:
	xor eax, eax
	xor edx, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1500
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_400:
	mov edx, [ebp-0xf0c4]
	mov [ebp-0xf11c], edx
	mov dword [ebp-0xf12c], 0x0
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1520:
	mov edx, [ebp-0xf0c0]
	mov eax, [ebp-0xf11c]
	cmp edx, [eax+0xc]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1510
	add dword [ebp-0xf12c], 0x1
	add eax, 0x4
	mov [ebp-0xf11c], eax
	cmp dword [ebp-0xf12c], 0x3
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1520
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1530
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_390:
	mov dword [esp+0x4], _cstring_brush_face_has_t
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	xor ebx, ebx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1380
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1510:
	mov eax, [ecx+edi*4+0xc]
	mov edx, [ebp-0xf094]
	mov [edx], eax
	mov ecx, [ebp-0x904c]
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1540
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_380:
	xor ebx, ebx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1550
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_930:
	cmp edx, [ebp-0x204c]
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1560
	xor eax, eax
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1570:
	add eax, 0x1
	cmp [ebp-0xf06c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_860
	cmp [ebp+eax*4-0x204c], edx
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1570
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1580
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_920:
	xor edx, edx
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1620:
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
	jle _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1590
	mov edx, [ebp-0xf06c]
	lea eax, [ebp-0x204c]
	call _Z41RemovePtsWithPlanesThatOccurLessThanTwicePPK23SimplePlaneIntersectioni
	mov [ebp-0xf06c], eax
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1590
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_910:
	cmp [ebp-0x204c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1600
	xor edx, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1610
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1630:
	cmp [ebp+edx*4-0x204c], eax
	jz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1620
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1610:
	add edx, 0x1
	cmp edx, [ebp-0xf06c]
	jnz _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1630
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1590
_Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1560:
	xor eax, eax
	xor edx, edx
	jmp _Z34BuildBrushdAdjacencyWindingForSidePKfiPK23SimplePlaneIntersectioniP18adjacencyWinding_ti_1640


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
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_00000000:		dd 0x0	; 0

