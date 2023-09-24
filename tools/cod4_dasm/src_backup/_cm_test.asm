;Imports of cm_test:
	extern cm
	extern _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	extern _Z20CM_ClipHandleToModelj
	extern _Z12AnglesToAxisPKfPA3_f

;Exports of cm_test:
	global _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s
	global _Z13CM_ClusterPVSi
	global _Z14CM_BoxLeafnumsPKfS0_PtiPi
	global _Z15CM_PointLeafnumPKf
	global _Z16CM_BoxLeafnums_rP10leafList_si
	global _Z16CM_PointContentsPKfj
	global _Z27CM_TransformedPointContentsPKfjS0_S0_


SECTION .text


;CM_PointContentsLeafBrushNode_r(float const*, cLeafBrushNode_s*)
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s:
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_430:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov edi, eax
	mov [ebp-0xd4], edx
	mov dword [ebp-0xc0], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_80:
	mov edx, [ebp-0xd4]
	movzx eax, word [edx+0x2]
	cmp ax, 0x0
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_10
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_20
	add edx, 0x14
	mov [ebp-0xbc], edx
	mov dword [ebp-0xa8], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_50:
	mov ecx, [ebp-0xbc]
	movzx eax, word [ecx+0x2]
	test ax, ax
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_30
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_1010:
	mov edx, [ebp-0xbc]
	movzx eax, byte [edx]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_40
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_90:
	mov ecx, [ebp-0xbc]
	movzx eax, word [ecx+eax+0x10]
	lea eax, [eax+eax*4]
	lea ecx, [ecx+eax*4]
	mov [ebp-0xbc], ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_50
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_840:
	mov eax, [ecx+0xc]
	or [ebp-0xa8], eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_820:
	add dword [ebp-0xac], 0x1
	mov edx, [ebp-0xb8]
	cmp [ebp-0xac], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_60
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_810:
	mov ecx, [ebp-0xa8]
	or [ebp-0xc0], ecx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_10:
	mov edx, [ebp-0xd4]
	movzx eax, byte [edx]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_70
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_100:
	mov edx, [ebp-0xd4]
	movzx eax, word [edx+eax+0x10]
	lea eax, [eax+eax*4]
	lea edx, [edx+eax*4]
	mov [ebp-0xd4], edx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_80
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_40:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_90
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_70:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_100
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_30:
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_110
	mov ecx, [ebp-0xbc]
	add ecx, 0x14
	mov [ebp-0xa4], ecx
	mov dword [ebp-0x90], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_140:
	mov edx, [ebp-0xa4]
	movzx eax, word [edx+0x2]
	test ax, ax
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_120
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_990:
	mov edx, [ebp-0xa4]
	movzx eax, byte [edx]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_130
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_210:
	mov edx, [ebp-0xa4]
	movzx eax, word [edx+eax+0x10]
	lea eax, [eax+eax*4]
	lea edx, [edx+eax*4]
	mov [ebp-0xa4], edx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_140
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_20:
	cwde
	mov [ebp-0xd0], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_150
	mov ecx, [ebp-0xd4]
	mov ecx, [ecx+0x8]
	mov [ebp-0xcc], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0xc8], eax
	mov dword [ebp-0xc4], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_200:
	mov edx, [ebp-0xc4]
	mov ecx, [ebp-0xcc]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov ebx, [ebp-0xc8]
	add ebx, eax
	mov eax, ebx
	mov ecx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_170:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_160
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_160
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_170
	mov ecx, [ebx+0x20]
	mov edx, [ebx+0x1c]
	test edx, edx
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_180
	mov eax, [ecx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_160
	add ecx, 0xc
	xor esi, esi
	sub edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_190:
	cmp edx, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_180
	mov eax, [ecx]
	add esi, 0x1
	add ecx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_190
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_160:
	add dword [ebp-0xc4], 0x1
	mov edx, [ebp-0xd0]
	cmp [ebp-0xc4], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_200
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_150:
	mov eax, [ebp-0xc0]
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_130:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_210
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_120:
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_220
	mov eax, [ebp-0xa4]
	add eax, 0x14
	mov [ebp-0x8c], eax
	mov dword [ebp-0x78], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_250:
	mov edx, [ebp-0x8c]
	movzx eax, word [edx+0x2]
	test ax, ax
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_230
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_790:
	mov edx, [ebp-0x8c]
	movzx eax, byte [edx]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_240
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_800:
	mov ecx, [ebp-0x8c]
	movzx eax, word [ecx+eax+0x10]
	lea eax, [eax+eax*4]
	lea ecx, [ecx+eax*4]
	mov [ebp-0x8c], ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_250
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_230:
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_260
	mov ecx, [ebp-0x8c]
	add ecx, 0x14
	mov [ebp-0x74], ecx
	mov dword [ebp-0x60], 0x0
	mov edx, ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_270
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_290:
	mov ecx, edx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_710:
	movzx eax, byte [ecx]
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_280
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_630:
	mov edx, [ebp-0x74]
	movzx eax, word [edx+eax+0x10]
	lea eax, [eax+eax*4]
	lea edx, [edx+eax*4]
	mov [ebp-0x74], edx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_270:
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_290
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_300
	mov ecx, [ebp-0x74]
	add ecx, 0x14
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x48], 0x0
	mov edx, ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_310
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_330:
	movzx eax, byte [edx]
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_320
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_550:
	mov ecx, [ebp-0x5c]
	movzx eax, word [ecx+eax+0x10]
	lea eax, [eax+eax*4]
	lea ecx, [ecx+eax*4]
	mov [ebp-0x5c], ecx
	mov edx, ecx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_310:
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_330
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_340
	mov ecx, [ebp-0x5c]
	add ecx, 0x14
	mov [ebp-0x44], ecx
	mov dword [ebp-0x30], 0x0
	mov edx, ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_350
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_370:
	mov ecx, edx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_540:
	movzx eax, byte [ecx]
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_360
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_460:
	mov edx, [ebp-0x44]
	movzx eax, word [edx+eax+0x10]
	lea eax, [eax+eax*4]
	lea edx, [edx+eax*4]
	mov [ebp-0x44], edx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_350:
	movzx eax, word [edx+0x2]
	test ax, ax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_370
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_380
	mov ebx, [ebp-0x44]
	add ebx, 0x14
	mov dword [ebp-0x1c], 0x0
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_390
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_410:
	movzx eax, byte [ebx]
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jae _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_400
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_440:
	xor eax, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_450:
	movzx eax, word [ebx+eax+0x10]
	lea eax, [eax+eax*4]
	lea ebx, [ebx+eax*4]
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_390:
	movzx eax, word [ebx+0x2]
	test ax, ax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_410
	test ax, ax
	jg _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_420
	lea edx, [ebx+0x14]
	mov eax, edi
	call _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_430
	or [ebp-0x1c], eax
	movzx eax, byte [ebx]
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [edi+eax*4]
	jb _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_440
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_400:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_450
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_360:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_460
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_420:
	cwde
	mov [ebp-0x2c], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_470
	mov ebx, [ebx+0x8]
	mov [ebp-0x28], ebx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0x0
	mov edx, ebx
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_520:
	mov ecx, [ebp-0x20]
	movzx eax, word [edx+ecx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, [ebp-0x24]
	add edx, eax
	mov eax, edx
	mov ecx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_490:
	movss xmm1, dword [edi+ecx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_480
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_480
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_490
	mov ecx, [edx+0x20]
	mov esi, [edx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_500
	mov eax, [ecx]
	movss xmm5, dword [edi]
	movss xmm4, dword [edi+0x4]
	movss xmm3, dword [edi+0x8]
	movaps xmm2, xmm3
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	addss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_480
	add ecx, 0xc
	xor ebx, ebx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_510:
	cmp esi, ebx
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_500
	mov eax, [ecx]
	add ebx, 0x1
	add ecx, 0xc
	movaps xmm2, xmm3
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	addss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_510
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_480:
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp-0x20], eax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_470
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_530:
	mov edx, [ebp-0x28]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_520
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_500:
	mov ecx, [edx+0xc]
	or [ebp-0x1c], ecx
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x2c]
	cmp [ebp-0x20], eax
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_530
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_470:
	mov edx, [ebp-0x1c]
	or [ebp-0x30], edx
	mov ecx, [ebp-0x44]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_540
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_320:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_550
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_380:
	cwde
	mov [ebp-0x40], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_560
	mov ecx, [ebp-0x44]
	mov ecx, [ecx+0x8]
	mov [ebp-0x3c], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x38], eax
	mov dword [ebp-0x34], 0x0
	mov ebx, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_610:
	mov edx, [ebp-0x34]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add ebx, eax
	mov eax, ebx
	mov edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_580:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_570
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_570
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_580
	mov edx, [ebx+0x20]
	mov esi, [ebx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_590
	mov eax, [edx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_570
	add edx, 0xc
	xor ecx, ecx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_600:
	cmp esi, ecx
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_590
	mov eax, [edx]
	add ecx, 0x1
	add edx, 0xc
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_600
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_570:
	add dword [ebp-0x34], 0x1
	mov edx, [ebp-0x40]
	cmp [ebp-0x34], edx
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_560
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_620:
	mov ecx, [ebp-0x3c]
	mov ebx, [ebp-0x38]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_610
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_590:
	mov eax, [ebx+0xc]
	or [ebp-0x30], eax
	add dword [ebp-0x34], 0x1
	mov edx, [ebp-0x40]
	cmp [ebp-0x34], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_620
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_560:
	mov ecx, [ebp-0x30]
	or [ebp-0x48], ecx
	mov edx, [ebp-0x5c]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_330
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_280:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_630
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_340:
	cwde
	mov [ebp-0x58], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_640
	mov ecx, [ebp-0x5c]
	mov ecx, [ecx+0x8]
	mov [ebp-0x54], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x0
	mov ecx, [ebp-0x4c]
	mov ebx, eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_690:
	mov edx, [ebp-0x54]
	movzx eax, word [edx+ecx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	add ebx, eax
	mov eax, ebx
	mov edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_660:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_650
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_650
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_660
	mov edx, [ebx+0x20]
	mov esi, [ebx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_670
	mov eax, [edx]
	movss xmm5, dword [edi]
	movss xmm4, dword [edi+0x4]
	movss xmm3, dword [edi+0x8]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_650
	add edx, 0xc
	xor ecx, ecx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_680:
	cmp esi, ecx
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_670
	mov eax, [edx]
	add ecx, 0x1
	add edx, 0xc
	movaps xmm2, xmm3
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm5
	mulss xmm1, [eax]
	addss xmm0, xmm1
	addss xmm2, xmm0
	ucomiss xmm2, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_680
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_650:
	add dword [ebp-0x4c], 0x1
	mov eax, [ebp-0x4c]
	cmp [ebp-0x58], eax
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_640
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_700:
	mov ecx, eax
	mov ebx, [ebp-0x50]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_690
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_670:
	mov ecx, [ebx+0xc]
	or [ebp-0x48], ecx
	add dword [ebp-0x4c], 0x1
	mov eax, [ebp-0x4c]
	cmp [ebp-0x58], eax
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_700
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_640:
	mov edx, [ebp-0x48]
	or [ebp-0x60], edx
	mov ecx, [ebp-0x74]
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_710
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_300:
	cwde
	mov [ebp-0x70], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_720
	mov ecx, [ebp-0x74]
	mov ecx, [ecx+0x8]
	mov [ebp-0x6c], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x68], eax
	mov dword [ebp-0x64], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_780:
	mov edx, [ebp-0x64]
	mov ecx, [ebp-0x6c]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov ebx, [ebp-0x68]
	add ebx, eax
	mov eax, ebx
	mov edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_740:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_730
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_730
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_740
	mov edx, [ebx+0x20]
	mov esi, [ebx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_750
	mov eax, [edx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_730
	add edx, 0xc
	xor ecx, ecx
	sub esi, 0x1
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_760
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_770:
	mov eax, [edx]
	add ecx, 0x1
	add edx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_730
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_760:
	cmp esi, ecx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_770
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_750:
	mov eax, [ebx+0xc]
	or [ebp-0x60], eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_730:
	add dword [ebp-0x64], 0x1
	mov edx, [ebp-0x70]
	cmp [ebp-0x64], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_780
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_720:
	mov ecx, [ebp-0x60]
	or [ebp-0x78], ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_790
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_240:
	mov eax, 0x2
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_800
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_110:
	cwde
	mov [ebp-0xb8], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_810
	mov ecx, [ebp-0xbc]
	mov ecx, [ecx+0x8]
	mov [ebp-0xb4], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0xb0], eax
	mov dword [ebp-0xac], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_60:
	mov edx, [ebp-0xac]
	mov ecx, [ebp-0xb4]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov ecx, [ebp-0xb0]
	add ecx, eax
	mov eax, ecx
	mov edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_830:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_820
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_820
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_830
	mov edx, [ecx+0x20]
	mov esi, [ecx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_840
	mov eax, [edx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_820
	add edx, 0xc
	xor ebx, ebx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_850:
	cmp ebx, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_840
	mov eax, [edx]
	add ebx, 0x1
	add edx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_850
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_820
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_260:
	cwde
	mov [ebp-0x88], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_860
	mov ecx, [ebp-0x8c]
	mov ecx, [ecx+0x8]
	mov [ebp-0x84], ecx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x80], eax
	mov dword [ebp-0x7c], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_980:
	mov edx, [ebp-0x7c]
	mov ecx, [ebp-0x84]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov ebx, [ebp-0x80]
	add ebx, eax
	mov eax, ebx
	mov edx, 0x1
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_870
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_900:
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_880
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_890
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_870:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_900
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_880
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_220:
	cwde
	mov [ebp-0xa0], eax
	test eax, eax
	jle _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_910
	mov eax, [ebp-0xa4]
	mov eax, [eax+0x8]
	mov [ebp-0x9c], eax
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x98], eax
	mov dword [ebp-0x94], 0x0
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_1000:
	mov edx, [ebp-0x94]
	mov ecx, [ebp-0x9c]
	movzx eax, word [ecx+edx*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov ebx, [ebp-0x98]
	add ebx, eax
	mov eax, ebx
	mov edx, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_930:
	movss xmm1, dword [edi+edx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_920
	ucomiss xmm1, [eax+0x10]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_920
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_930
	mov edx, [ebx+0x20]
	mov esi, [ebx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_940
	mov eax, [edx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_920
	add edx, 0xc
	xor ecx, ecx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_950:
	cmp ecx, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_940
	mov eax, [edx]
	add ecx, 0x1
	add edx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_950
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_920
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_890:
	mov edx, [ebx+0x20]
	mov esi, [ebx+0x1c]
	test esi, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_960
	mov eax, [edx]
	movss xmm4, dword [edi]
	movss xmm3, dword [edi+0x4]
	movss xmm2, dword [edi+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_880
	add edx, 0xc
	xor ecx, ecx
	sub esi, 0x1
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_970:
	cmp ecx, esi
	jz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_960
	mov eax, [edx]
	add ecx, 0x1
	add edx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_970
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_880
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_960:
	mov eax, [ebx+0xc]
	or [ebp-0x78], eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_880:
	add dword [ebp-0x7c], 0x1
	mov edx, [ebp-0x88]
	cmp [ebp-0x7c], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_980
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_860:
	mov ecx, [ebp-0x78]
	or [ebp-0x90], ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_990
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_940:
	mov eax, [ebx+0xc]
	or [ebp-0x90], eax
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_920:
	add dword [ebp-0x94], 0x1
	mov edx, [ebp-0xa0]
	cmp [ebp-0x94], edx
	jnz _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_1000
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_910:
	mov ecx, [ebp-0x90]
	or [ebp-0xa8], ecx
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_1010
_Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_180:
	mov eax, [ebx+0xc]
	or [ebp-0xc0], eax
	jmp _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s_160
	nop


;CM_ClusterPVS(int)
_Z13CM_ClusterPVSi:
	push ebp
	mov ebp, esp
	mov edx, cm
	mov eax, [edx+0xa0]
	test eax, eax
	jnz _Z13CM_ClusterPVSi_10
	mov eax, [edx+0x9c]
	pop ebp
	ret
_Z13CM_ClusterPVSi_10:
	mov eax, [ebp+0x8]
	imul eax, [edx+0x98]
	add eax, [edx+0x9c]
	pop ebp
	ret
	nop
	add [eax], al


;CM_BoxLeafnums(float const*, float const*, unsigned short*, int, int*)
_Z14CM_BoxLeafnumsPKfS0_PtiPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ebp-0x24], eax
	lea ebx, [ebp-0x34]
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ecx]
	mov [ebp-0x18], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x14], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x10], eax
	mov dword [ebp-0x34], 0x0
	mov eax, [ebp+0x14]
	mov [ebp-0x30], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov dword [ebp-0xc], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z16CM_BoxLeafnums_rP10leafList_si
	mov edx, [ebp-0xc]
	mov eax, [ebp+0x18]
	mov [eax], edx
	mov eax, [ebp-0x34]
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;CM_PointLeafnum(float const*)
_Z15CM_PointLeafnumPKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov eax, cm
	mov esi, [eax+0x34]
	xor eax, eax
	pxor xmm2, xmm2
	jmp _Z15CM_PointLeafnumPKf_10
_Z15CM_PointLeafnumPKf_40:
	movzx eax, al
	movss xmm1, dword [ebx+eax*4]
	subss xmm1, [edx+0xc]
	ucomiss xmm2, xmm1
	ja _Z15CM_PointLeafnumPKf_20
_Z15CM_PointLeafnumPKf_50:
	movsx eax, word [ecx+0x4]
	test eax, eax
	js _Z15CM_PointLeafnumPKf_30
_Z15CM_PointLeafnumPKf_10:
	lea ecx, [esi+eax*8]
	mov edx, [ecx]
	movzx eax, byte [edx+0x10]
	cmp al, 0x2
	jbe _Z15CM_PointLeafnumPKf_40
	movss xmm1, dword [edx]
	mulss xmm1, [ebx]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+0x8]
	addss xmm1, xmm0
	subss xmm1, [edx+0xc]
	ucomiss xmm2, xmm1
	jbe _Z15CM_PointLeafnumPKf_50
_Z15CM_PointLeafnumPKf_20:
	movsx eax, word [ecx+0x6]
	test eax, eax
	jns _Z15CM_PointLeafnumPKf_10
_Z15CM_PointLeafnumPKf_30:
	not eax
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;CM_BoxLeafnums_r(leafList_s*, int)
_Z16CM_BoxLeafnums_rP10leafList_si:
_Z16CM_BoxLeafnums_rP10leafList_si_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	js _Z16CM_BoxLeafnums_rP10leafList_si_10
	lea eax, [esi+0x1c]
	mov [ebp-0x1c], eax
	lea edi, [esi+0x10]
_Z16CM_BoxLeafnums_rP10leafList_si_50:
	mov ecx, cm
	mov eax, [ecx+0x34]
	lea ebx, [eax+edx*8]
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	cmp eax, 0x1
	jz _Z16CM_BoxLeafnums_rP10leafList_si_20
	cmp eax, 0x2
	jz _Z16CM_BoxLeafnums_rP10leafList_si_30
	movsx eax, word [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16CM_BoxLeafnums_rP10leafList_si_40
_Z16CM_BoxLeafnums_rP10leafList_si_30:
	movsx edx, word [ebx+0x6]
_Z16CM_BoxLeafnums_rP10leafList_si_80:
	test edx, edx
	jns _Z16CM_BoxLeafnums_rP10leafList_si_50
_Z16CM_BoxLeafnums_rP10leafList_si_10:
	mov ecx, edx
	not ecx
	mov eax, cm
	mov edx, [eax+0x3c]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	cmp word [edx+eax*4+0x28], 0xffff
	jz _Z16CM_BoxLeafnums_rP10leafList_si_60
	mov [esi+0x28], ecx
_Z16CM_BoxLeafnums_rP10leafList_si_60:
	mov edx, [esi]
	cmp edx, [esi+0x4]
	jl _Z16CM_BoxLeafnums_rP10leafList_si_70
	mov dword [esi+0x8], 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CM_BoxLeafnums_rP10leafList_si_20:
	movsx edx, word [ebx+0x4]
	jmp _Z16CM_BoxLeafnums_rP10leafList_si_80
_Z16CM_BoxLeafnums_rP10leafList_si_70:
	mov eax, [esi+0xc]
	mov [eax+edx*2], cx
	lea eax, [edx+0x1]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CM_PointContents(float const*, unsigned int)
_Z16CM_PointContentsPKfj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z16CM_PointContentsPKfj_10
	mov edi, cm
	mov ebx, [edi+0x34]
	xor eax, eax
	pxor xmm2, xmm2
	jmp _Z16CM_PointContentsPKfj_20
_Z16CM_PointContentsPKfj_50:
	movzx eax, al
	movss xmm1, dword [esi+eax*4]
	subss xmm1, [edx+0xc]
	ucomiss xmm2, xmm1
	ja _Z16CM_PointContentsPKfj_30
_Z16CM_PointContentsPKfj_60:
	movsx eax, word [ecx+0x4]
	test eax, eax
	js _Z16CM_PointContentsPKfj_40
_Z16CM_PointContentsPKfj_20:
	lea ecx, [ebx+eax*8]
	mov edx, [ecx]
	movzx eax, byte [edx+0x10]
	cmp al, 0x2
	jbe _Z16CM_PointContentsPKfj_50
	movss xmm1, dword [edx]
	mulss xmm1, [esi]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+0x8]
	addss xmm1, xmm0
	subss xmm1, [edx+0xc]
	ucomiss xmm2, xmm1
	jbe _Z16CM_PointContentsPKfj_60
_Z16CM_PointContentsPKfj_30:
	movsx eax, word [ecx+0x6]
	test eax, eax
	jns _Z16CM_PointContentsPKfj_20
_Z16CM_PointContentsPKfj_40:
	not eax
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [edi+0x3c]
	lea eax, [eax+edx*4]
_Z16CM_PointContentsPKfj_200:
	mov ecx, [eax+0x24]
	test ecx, ecx
	jz _Z16CM_PointContentsPKfj_70
	mov edx, 0x1
_Z16CM_PointContentsPKfj_80:
	movss xmm1, dword [esi+edx*4-0x4]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jae _Z16CM_PointContentsPKfj_70
	ucomiss xmm1, [eax+0x18]
	jae _Z16CM_PointContentsPKfj_70
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z16CM_PointContentsPKfj_80
	lea eax, [ecx+ecx*4]
	mov edx, cm
	mov edx, [edx+0x44]
	lea ebx, [edx+eax*4]
	mov dword [ebp-0x1c], 0x0
	jmp _Z16CM_PointContentsPKfj_90
_Z16CM_PointContentsPKfj_120:
	xor eax, eax
_Z16CM_PointContentsPKfj_130:
	movzx eax, word [ebx+eax+0x10]
	lea eax, [eax+eax*4]
	lea ebx, [ebx+eax*4]
_Z16CM_PointContentsPKfj_90:
	movzx eax, word [ebx+0x2]
	cmp ax, 0x0
	jz _Z16CM_PointContentsPKfj_100
	jg _Z16CM_PointContentsPKfj_110
	lea edx, [ebx+0x14]
	mov eax, esi
	call _Z31CM_PointContentsLeafBrushNode_rPKfP16cLeafBrushNode_s
	or [ebp-0x1c], eax
_Z16CM_PointContentsPKfj_100:
	movzx eax, byte [ebx]
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [esi+eax*4]
	jb _Z16CM_PointContentsPKfj_120
	mov eax, 0x2
	jmp _Z16CM_PointContentsPKfj_130
_Z16CM_PointContentsPKfj_110:
	cwde
	mov [ebp-0x2c], eax
	test eax, eax
	jle _Z16CM_PointContentsPKfj_140
	mov ebx, [ebx+0x8]
	mov [ebp-0x28], ebx
	mov eax, cm
	mov eax, [eax+0x90]
	mov [ebp-0x24], eax
	xor edi, edi
	mov edx, ebx
_Z16CM_PointContentsPKfj_190:
	movzx eax, word [edx+edi*2]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov edx, [ebp-0x24]
	add edx, eax
	mov eax, edx
	mov ecx, 0x1
_Z16CM_PointContentsPKfj_160:
	movss xmm1, dword [esi+ecx*4-0x4]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm1
	ja _Z16CM_PointContentsPKfj_150
	ucomiss xmm1, [eax+0x10]
	ja _Z16CM_PointContentsPKfj_150
	add ecx, 0x1
	add eax, 0x4
	cmp ecx, 0x4
	jnz _Z16CM_PointContentsPKfj_160
	mov ecx, [edx+0x20]
	mov eax, [edx+0x1c]
	mov [ebp-0x20], eax
	test eax, eax
	jz _Z16CM_PointContentsPKfj_170
	mov eax, [ecx]
	movss xmm4, dword [esi]
	movss xmm3, dword [esi+0x4]
	movss xmm2, dword [esi+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [eax]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	ja _Z16CM_PointContentsPKfj_150
	add ecx, 0xc
	xor ebx, ebx
	mov eax, [ebp-0x20]
	sub eax, 0x1
	mov [ebp-0x30], eax
_Z16CM_PointContentsPKfj_180:
	cmp ebx, [ebp-0x30]
	jz _Z16CM_PointContentsPKfj_170
	mov eax, [ecx]
	add ebx, 0x1
	add ecx, 0xc
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	ucomiss xmm0, [eax+0xc]
	jbe _Z16CM_PointContentsPKfj_180
_Z16CM_PointContentsPKfj_150:
	add edi, 0x1
	cmp [ebp-0x2c], edi
	jz _Z16CM_PointContentsPKfj_140
	mov edx, [ebp-0x28]
	jmp _Z16CM_PointContentsPKfj_190
_Z16CM_PointContentsPKfj_70:
	mov dword [ebp-0x1c], 0x0
_Z16CM_PointContentsPKfj_140:
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CM_PointContentsPKfj_170:
	mov eax, [edx+0xc]
	or [ebp-0x1c], eax
	jmp _Z16CM_PointContentsPKfj_150
_Z16CM_PointContentsPKfj_10:
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
	add eax, 0x1c
	jmp _Z16CM_PointContentsPKfj_200
	nop


;CM_TransformedPointContents(float const*, unsigned int, float const*, float const*)
_Z27CM_TransformedPointContentsPKfjS0_S0_:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	movss xmm0, dword [eax]
	subss xmm0, [edx]
	movss [ebp-0x14], xmm0
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x10], xmm0
	movss xmm0, dword [eax+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0xc], xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, [ecx]
	jnz _Z27CM_TransformedPointContentsPKfjS0_S0__10
	jp _Z27CM_TransformedPointContentsPKfjS0_S0__10
	ucomiss xmm0, [ecx+0x4]
	jnz _Z27CM_TransformedPointContentsPKfjS0_S0__10
	jp _Z27CM_TransformedPointContentsPKfjS0_S0__10
	ucomiss xmm0, [ecx+0x8]
	jp _Z27CM_TransformedPointContentsPKfjS0_S0__10
	jz _Z27CM_TransformedPointContentsPKfjS0_S0__20
_Z27CM_TransformedPointContentsPKfjS0_S0__10:
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z12AnglesToAxisPKfPA3_f
	movss xmm2, dword [ebp-0x14]
	movss xmm3, dword [ebp-0x10]
	movss xmm4, dword [ebp-0xc]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x38]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x34]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x30]
	addss xmm0, xmm1
	movss [ebp-0x14], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x2c]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x28]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x24]
	addss xmm0, xmm1
	movss [ebp-0x10], xmm0
	mulss xmm2, [ebp-0x20]
	mulss xmm3, [ebp-0x1c]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0x18]
	addss xmm2, xmm4
	movss [ebp-0xc], xmm2
_Z27CM_TransformedPointContentsPKfjS0_S0__20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call _Z16CM_PointContentsPKfj
	leave
	ret
	add [eax], al


;Initialized global or static variables of cm_test:
SECTION .data


;Initialized constant data of cm_test:
SECTION .rdata


;Zero initialized global or static variables of cm_test:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

