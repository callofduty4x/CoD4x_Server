;Imports of r_xsurface:
	extern _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	extern _Z19Vec2UnpackTexCoords15PackedTexCoordsPf
	extern _Z15Vec3PackUnitVecPKf
	extern _Z17Vec2PackTexCoordsPKf
	extern floorf

;Exports of r_xsurface:
	global _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_
	global _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i
	global _Z18XSurfaceGetNumTrisPK8XSurface
	global _Z19XSurfaceGetNumVertsPK8XSurface


SECTION .text


;XSurfaceGetVerts(XSurface const*, float*, float*, float*)
_Z16XSurfaceGetVertsPK8XSurfacePfS2_S2_:
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
	jz _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__10
	mov dword [ebp-0x1c], 0x0
_Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__40:
	test edi, edi
	jz _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__20
	mov eax, [ebx+0x18]
	mov [esp+0x4], edi
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	add edi, 0xc
_Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__20:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__30
	mov eax, [ebx+0x14]
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z19Vec2UnpackTexCoords15PackedTexCoordsPf
	add dword [ebp+0x10], 0x8
_Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__30:
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
	jnz _Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__40
_Z16XSurfaceGetVertsPK8XSurfacePfS2_S2__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;XSurfaceTransfer(XVertexBuffer const*, GfxPackedVertex*, GfxPackedVertex*, int)
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0x14]
	test edx, edx
	jg _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_10
	pxor xmm2, xmm2
	movaps xmm3, xmm2
	mov esi, 0x1
	mov eax, 0x1
	movss xmm4, dword [_float_1_00000000]
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_160:
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm4, xmm0
	movaps xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	mulss xmm0, xmm2
	test al, al
	jz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_20
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_120:
	mov dword [ebp-0x30], 0x0
	mov eax, esi
	test al, al
	jz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_30
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_130:
	mov dword [ebp-0x2c], 0x0
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_140:
	mov eax, [ebp+0x14]
	test eax, eax
	jle _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_40
	mov edx, [ebp+0xc]
	mov [ebp-0x38], edx
	mov esi, [ebp+0x10]
	mov dword [ebp-0x34], 0x0
	mov ecx, edx
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_50
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_60:
	mov edx, [ebp-0x38]
	mov [edx+0xc], eax
	mov [esp], ebx
	call _Z15Vec3PackUnitVecPKf
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
	call _Z17Vec2PackTexCoordsPKf
	mov [esi+0x14], eax
	mov [esp], edi
	call _Z15Vec3PackUnitVecPKf
	mov [esi+0x1c], eax
	movzx eax, byte [ebx+0x3c]
	lea ebx, [ebx+eax*4+0x40]
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x38], 0x20
	add esi, 0x20
	mov eax, [ebp-0x34]
	cmp [ebp+0x14], eax
	jz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_40
	mov ecx, [ebp-0x38]
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_50:
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
	jae _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_60
	mov eax, 0xbf800000
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_60
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_10:
	movss xmm1, dword [ebx+0x1c]
	movss xmm0, dword [ebx+0x2c]
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_70
	movss xmm4, dword [_float_1_00000000]
	ucomiss xmm0, xmm4
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_80
	movaps xmm3, xmm2
	ucomiss xmm2, xmm0
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_90
	ucomiss xmm1, xmm4
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_100
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_110:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_110
	mov eax, 0x1
	mov esi, 0x1
	cvtsi2ss xmm0, dword [ebp+0x14]
	divss xmm4, xmm0
	movaps xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	mulss xmm0, xmm2
	test al, al
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_120
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_20:
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	movss [ebp-0x48], xmm0
	call floorf
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x48]
	mov eax, esi
	test al, al
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_130
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_30:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_140
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_100:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_150:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_150
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_280:
	xor eax, eax
	mov esi, 0x1
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_160
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_90:
	ucomiss xmm1, xmm4
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_170
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_180:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_180
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_230:
	mov eax, 0x1
	xor esi, esi
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_160
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_170:
	xor eax, eax
	movaps xmm2, xmm3
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_190:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_190
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320:
	xor eax, eax
	xor esi, esi
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_160
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_80:
	ucomiss xmm2, xmm0
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_200
	ucomiss xmm1, xmm4
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_210
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_220:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_220
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_230
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_70:
	movss xmm3, dword [_float_1_00000000]
	movaps xmm4, xmm3
	ucomiss xmm0, xmm3
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_240
	ucomiss xmm2, xmm0
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_250
	ucomiss xmm1, xmm3
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_260
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_270:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_270
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_280
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_260:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_290:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_290
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_280
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_250:
	ucomiss xmm1, xmm3
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_300
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_310:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_310
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_240:
	ucomiss xmm2, xmm0
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_330
	ucomiss xmm1, xmm3
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_340
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_350:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_350
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_300:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_360:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_360
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_340:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_370:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_370
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_330:
	ucomiss xmm1, xmm3
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_380
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_390:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_390
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_210:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_400:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_400
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_200:
	ucomiss xmm1, xmm4
	ja _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_410
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_420:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_420
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_230
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_380:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_430:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_430
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_410:
	xor eax, eax
	movaps xmm3, xmm2
_Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_440:
	addss xmm3, xmm1
	addss xmm2, xmm0
	add eax, 0x1
	cmp [ebp+0x14], eax
	jnz _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_440
	jmp _Z16XSurfaceTransferPK13XVertexBufferP15GfxPackedVertexS3_i_320
	nop


;XSurfaceGetNumTris(XSurface const*)
_Z18XSurfaceGetNumTrisPK8XSurface:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+0x4]
	pop ebp
	ret


;XSurfaceGetNumVerts(XSurface const*)
_Z19XSurfaceGetNumVertsPK8XSurface:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+0x2]
	pop ebp
	ret


;Initialized global or static variables of r_xsurface:
SECTION .data


;Initialized constant data of r_xsurface:
SECTION .rdata


;Zero initialized global or static variables of r_xsurface:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5

