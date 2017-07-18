;Imports of r_xsurface:
	extern Vec3UnpackUnitVec
	extern Vec2UnpackTexCoords
	extern Vec3PackUnitVec
	extern Vec2PackTexCoords
	extern floorf

;Exports of r_xsurface:
	global XSurfaceGetVerts
	global XSurfaceTransfer
	global XSurfaceGetNumTris
	global XSurfaceGetNumVerts


SECTION .text


;XSurfaceGetVerts(XSurface const*, float*, float*, float*)
XSurfaceGetVerts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x14]
	mov ebx, [eax+0x1c]
	movzx eax, word [eax+0x2]
	movzx edx, ax
	mov [ebp-0x20], edx
	test ax, ax
	jz XSurfaceGetVerts_10
	mov dword [ebp-0x1c], 0x0
XSurfaceGetVerts_40:
	test edi, edi
	jz XSurfaceGetVerts_20
	mov eax, [ebx+0x18]
	mov [esp+0x4], edi
	mov [esp], eax
	call Vec3UnpackUnitVec
	add edi, 0xc
XSurfaceGetVerts_20:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz XSurfaceGetVerts_30
	mov eax, [ebx+0x14]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call Vec2UnpackTexCoords
	add dword [ebp+0x10], 0x8
XSurfaceGetVerts_30:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	add ebx, 0x20
	add esi, 0xc
	add dword [ebp-0x1c], 0x1
	mov eax, [ebp-0x1c]
	cmp [ebp-0x20], eax
	jnz XSurfaceGetVerts_40
XSurfaceGetVerts_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XSurfaceTransfer(XVertexBuffer const*, GfxPackedVertex*, GfxPackedVertex*, int)
XSurfaceTransfer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x14]
	test edx, edx
	jg XSurfaceTransfer_10
	pxor xmm2, xmm2
	movaps xmm3, xmm2
	mov esi, 0x1
	mov eax, 0x1
	movss xmm4, dword [_float_1_00000000]
XSurfaceTransfer_160:
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm4, xmm0
	movaps xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	mulss xmm0, xmm2
	test al, al
	jz XSurfaceTransfer_20
XSurfaceTransfer_120:
	mov dword [ebp-0x30], 0x0
	mov eax, esi
	test al, al
	jz XSurfaceTransfer_30
XSurfaceTransfer_130:
	mov dword [ebp-0x2c], 0x0
XSurfaceTransfer_140:
	mov eax, [ebp+0x14]
	test eax, eax
	jle XSurfaceTransfer_40
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov esi, [ebp+0x10]
	mov dword [ebp-0x34], 0x0
	mov ecx, edx
	jmp XSurfaceTransfer_50
XSurfaceTransfer_60:
	mov edx, [ebp-0x38]
	mov [edx+0xc], eax
	mov [esp], ebx
	call Vec3PackUnitVec
	mov [esi+0x18], eax
	mov eax, [ebx+0xc]
	mov [esi+0x10], eax
	movss xmm0, dword [ebx+0x1c]
	subss xmm0, [ebp-0x30]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebx+0x2c]
	subss xmm0, [ebp-0x2c]
	movss [ebp-0x1c], xmm0
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call Vec2PackTexCoords
	mov [esi+0x14], eax
	mov [esp], edi
	call Vec3PackUnitVec
	mov [esi+0x1c], eax
	movzx eax, byte [ebx+0x3c]
	lea ebx, [ebx+eax*4+0x40]
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x38], 0x20
	add esi, 0x20
	mov eax, [ebp-0x34]
	cmp [ebp+0x14], eax
	jz XSurfaceTransfer_40
	mov ecx, [ebp-0x38]
XSurfaceTransfer_50:
	lea edx, [ebx+0x30]
	mov eax, [ebx+0x30]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	lea edi, [ebx+0x20]
	movss xmm5, dword [ebx+0x4]
	movss xmm4, dword [edi+0x8]
	movss xmm1, dword [ebx+0x8]
	movss xmm3, dword [edi+0x4]
	movss xmm7, dword [ebx+0x20]
	movss xmm6, dword [ebx]
	lea eax, [ebx+0x10]
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movaps xmm2, xmm1
	mulss xmm2, xmm3
	subss xmm0, xmm2
	mulss xmm0, [ebx+0x10]
	mulss xmm1, xmm7
	mulss xmm4, xmm6
	subss xmm1, xmm4
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	mulss xmm3, xmm6
	mulss xmm5, xmm7
	subss xmm3, xmm5
	mulss xmm3, [eax+0x8]
	addss xmm0, xmm3
	pxor xmm1, xmm1
	mov eax, 0x3f800000
	ucomiss xmm0, xmm1
	jae XSurfaceTransfer_60
	mov eax, 0xbf800000
	jmp XSurfaceTransfer_60
XSurfaceTransfer_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XSurfaceTransfer_10:
	movss xmm1, dword [ebx+0x1c]
	movss xmm0, dword [ebx+0x2c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja XSurfaceTransfer_70
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	ja XSurfaceTransfer_80
	movaps xmm3, xmm2
	ucomiss xmm2, xmm0
	ja XSurfaceTransfer_90
	ucomiss xmm1, xmm4
	ja XSurfaceTransfer_100
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_110:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_110
	mov eax, 0x1
	mov esi, 0x1
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm4, xmm0
	movaps xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	mulss xmm0, xmm2
	test al, al
	jnz XSurfaceTransfer_120
XSurfaceTransfer_20:
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	call floorf
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x48]
	mov eax, esi
	test al, al
	jnz XSurfaceTransfer_130
XSurfaceTransfer_30:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	jmp XSurfaceTransfer_140
XSurfaceTransfer_100:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_150:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_150
XSurfaceTransfer_280:
	xor eax, eax
	mov esi, 0x1
	jmp XSurfaceTransfer_160
XSurfaceTransfer_90:
	ucomiss xmm1, xmm4
	ja XSurfaceTransfer_170
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_180:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_180
XSurfaceTransfer_230:
	mov eax, 0x1
	xor esi, esi
	jmp XSurfaceTransfer_160
XSurfaceTransfer_170:
	xor eax, eax
	movaps xmm2, xmm3
XSurfaceTransfer_190:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_190
XSurfaceTransfer_320:
	xor eax, eax
	xor esi, esi
	jmp XSurfaceTransfer_160
XSurfaceTransfer_80:
	ucomiss xmm2, xmm0
	ja XSurfaceTransfer_200
	ucomiss xmm1, xmm4
	ja XSurfaceTransfer_210
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_220:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_220
	jmp XSurfaceTransfer_230
XSurfaceTransfer_70:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	ucomiss xmm0, xmm3
	ja XSurfaceTransfer_240
	ucomiss xmm2, xmm0
	ja XSurfaceTransfer_250
	ucomiss xmm1, xmm3
	ja XSurfaceTransfer_260
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_270:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_270
	jmp XSurfaceTransfer_280
XSurfaceTransfer_260:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_290:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_290
	jmp XSurfaceTransfer_280
XSurfaceTransfer_250:
	ucomiss xmm1, xmm3
	ja XSurfaceTransfer_300
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_310:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_310
	jmp XSurfaceTransfer_320
XSurfaceTransfer_240:
	ucomiss xmm2, xmm0
	ja XSurfaceTransfer_330
	ucomiss xmm1, xmm3
	ja XSurfaceTransfer_340
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_350:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_350
	jmp XSurfaceTransfer_320
XSurfaceTransfer_300:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_360:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_360
	jmp XSurfaceTransfer_320
XSurfaceTransfer_340:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_370:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_370
	jmp XSurfaceTransfer_320
XSurfaceTransfer_330:
	ucomiss xmm1, xmm3
	ja XSurfaceTransfer_380
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_390:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_390
	jmp XSurfaceTransfer_320
XSurfaceTransfer_210:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_400:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_400
	jmp XSurfaceTransfer_320
XSurfaceTransfer_200:
	ucomiss xmm1, xmm4
	ja XSurfaceTransfer_410
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_420:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_420
	jmp XSurfaceTransfer_230
XSurfaceTransfer_380:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_430:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_430
	jmp XSurfaceTransfer_320
XSurfaceTransfer_410:
	xor eax, eax
	movaps xmm3, xmm2
XSurfaceTransfer_440:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz XSurfaceTransfer_440
	jmp XSurfaceTransfer_320
	nop


;XSurfaceGetNumTris(XSurface const*)
XSurfaceGetNumTris:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+0x4]
	pop ebp
	ret


;XSurfaceGetNumVerts(XSurface const*)
XSurfaceGetNumVerts:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+0x2]
	pop ebp
	ret


;Zero initialized global or static variables of r_xsurface:
SECTION .bss


;Initialized global or static variables of r_xsurface:
SECTION .data


;Initialized constant data of r_xsurface:
SECTION .rdata


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5

