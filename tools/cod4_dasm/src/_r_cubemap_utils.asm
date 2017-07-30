;Imports of r_cubemap_utils:
	extern cosf

;Exports of r_cubemap_utils:
	global cubeMapUtilsGlob
	global Image_CubeMapDir
	global Image_CalcCubeMipMapTexel32
	global CubeMap_FlipSides
	global Image_FlipVertically
	global Image_BlendCubeCorner
	global CubeMap_BlendFaceEdges
	global CubeMap_CacheHighMipDirs
	global CubeMap_GenerateMipMap32


SECTION .text


;Image_CubeMapDir(int, int, int, int, float*)
Image_CubeMapDir:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, edx
	mov esi, ecx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp eax, 0x5
	ja Image_CubeMapDir_10
	jmp dword [eax*4+Image_CubeMapDir_jumptab_0]
Image_CubeMapDir_10:
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	pxor xmm5, xmm5
Image_CubeMapDir_40:
	mov edx, 0x1
	movss xmm4, dword [_float_1_00000000]
	lea eax, [ecx+0x4]
Image_CubeMapDir_20:
	movss xmm0, dword [eax-0x4]
	divss xmm0, xmm1
	addss xmm0, xmm0
	subss xmm0, xmm4
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz Image_CubeMapDir_20
	movss xmm3, dword [ecx]
	lea edx, [ecx+0x4]
	movss xmm1, dword [ecx+0x4]
	lea eax, [ecx+0x8]
	movss xmm2, dword [ecx+0x8]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm2, xmm0
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, xmm5
	jb Image_CubeMapDir_30
	movaps xmm1, xmm4
	mulss xmm3, xmm1
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	pop ebx
	pop esi
	pop ebp
	ret
Image_CubeMapDir_50:
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	movss [ecx], xmm1
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	sub edx, ebx
	lea eax, [edx-0x1]
	cvtsi2ss xmm0, eax
	movss [ecx+0x8], xmm0
	pxor xmm5, xmm5
	jmp Image_CubeMapDir_40
Image_CubeMapDir_100:
	mov eax, edx
	sub eax, ebx
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx], xmm0
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	pxor xmm5, xmm5
	movss [ecx+0x8], xmm5
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	jmp Image_CubeMapDir_40
Image_CubeMapDir_90:
	cvtsi2ss xmm0, ebx
	movss [ecx], xmm0
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	movss [ecx+0x8], xmm1
	pxor xmm5, xmm5
	jmp Image_CubeMapDir_40
Image_CubeMapDir_80:
	cvtsi2ss xmm0, ebx
	movss [ecx], xmm0
	pxor xmm5, xmm5
	movss [ecx+0x4], xmm5
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx+0x8], xmm0
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	jmp Image_CubeMapDir_40
Image_CubeMapDir_70:
	cvtsi2ss xmm0, ebx
	movss [ecx], xmm0
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	movss [ecx+0x4], xmm1
	cvtsi2ss xmm0, esi
	movss [ecx+0x8], xmm0
	pxor xmm5, xmm5
	jmp Image_CubeMapDir_40
Image_CubeMapDir_60:
	pxor xmm5, xmm5
	movss [ecx], xmm5
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	cvtsi2ss xmm0, eax
	movss [ecx+0x4], xmm0
	cvtsi2ss xmm0, ebx
	movss [ecx+0x8], xmm0
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	jmp Image_CubeMapDir_40
Image_CubeMapDir_30:
	movaps xmm1, xmm4
	divss xmm1, xmm2
	mulss xmm3, xmm1
	movss [ecx], xmm3
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [edx], xmm0
	mulss xmm1, [eax]
	movss [eax], xmm1
	pop ebx
	pop esi
	pop ebp
	ret
	
	
Image_CubeMapDir_jumptab_0:
	dd Image_CubeMapDir_50
	dd Image_CubeMapDir_60
	dd Image_CubeMapDir_70
	dd Image_CubeMapDir_80
	dd Image_CubeMapDir_90
	dd Image_CubeMapDir_100


;Image_CalcCubeMipMapTexel32(unsigned char*, float*, unsigned char* (*) [15], int, float)
Image_CalcCubeMipMapTexel32:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x44], eax
	mov [ebp-0x48], edx
	movaps xmm2, xmm0
	mov eax, 0x1
Image_CalcCubeMipMapTexel32_10:
	mov dword [ebp+eax*4-0x2c], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz Image_CalcCubeMipMapTexel32_10
	mov [ebp-0x3c], ecx
	mov dword [ebp-0x40], 0x0
	pxor xmm7, xmm7
	movss xmm6, dword [_float_255_00000000]
	mov dword [ebp-0x4c], 0x0
Image_CalcCubeMipMapTexel32_70:
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jle Image_CalcCubeMipMapTexel32_20
	mov eax, [ebp-0x48]
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	xor edi, edi
Image_CalcCubeMipMapTexel32_60:
	mov eax, [ebp+0x8]
	imul eax, edi
	lea esi, [eax*4]
	xor ebx, ebx
Image_CalcCubeMipMapTexel32_50:
	lea edx, [ebx+ebx*2]
	lea eax, [edi+edi*2]
	shl eax, 0x8
	lea edx, [eax+edx*4]
	add edx, [ebp-0x4c]
	lea eax, [edx+cubeMapUtilsGlob]
	movaps xmm1, xmm5
	mulss xmm1, [edx+cubeMapUtilsGlob]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	ucomiss xmm1, xmm2
	jbe Image_CalcCubeMipMapTexel32_30
	subss xmm1, xmm2
	mov edx, 0x1
	mov eax, [ebp-0x3c]
	mov ecx, [eax]
	add ecx, esi
Image_CalcCubeMipMapTexel32_40:
	movzx eax, byte [ecx+edx-0x1]
	cvtsi2ss xmm0, eax
	divss xmm0, xmm6
	movss [ebp+edx*4-0x3c], xmm0
	add edx, 0x1
	cmp edx, 0x5
	jnz Image_CalcCubeMipMapTexel32_40
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x38]
	addss xmm0, [ebp-0x28]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x34]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x30]
	addss xmm0, [ebp-0x20]
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	addss xmm7, xmm1
Image_CalcCubeMipMapTexel32_30:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp+0x8], ebx
	jnz Image_CalcCubeMipMapTexel32_50
	add edi, 0x1
	cmp ebx, edi
	jnz Image_CalcCubeMipMapTexel32_60
Image_CalcCubeMipMapTexel32_20:
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x4c], 0xc000
	add dword [ebp-0x3c], 0x3c
	cmp dword [ebp-0x40], 0x6
	jnz Image_CalcCubeMipMapTexel32_70
	mov ecx, 0x1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	lea edx, [ebp-0x28]
	add edx, 0x4
Image_CalcCubeMipMapTexel32_90:
	movss xmm0, dword [edx-0x4]
	divss xmm0, xmm7
	movss [edx-0x4], xmm0
	ucomiss xmm0, xmm1
	jbe Image_CalcCubeMipMapTexel32_80
	movaps xmm0, xmm2
	movss [edx-0x4], xmm2
Image_CalcCubeMipMapTexel32_80:
	mulss xmm0, xmm6
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x44]
	mov [ebx+ecx-0x1], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz Image_CalcCubeMipMapTexel32_90
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CubeMap_FlipSides(unsigned char**, int)
CubeMap_FlipSides:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x58
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x48], eax
	cmp dword [ebp+0xc], 0x1
	jle CubeMap_FlipSides_10
	mov edi, 0x1
CubeMap_FlipSides_40:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x48]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp CubeMap_FlipSides_20
CubeMap_FlipSides_30:
	mov edx, [ebp-0x48]
CubeMap_FlipSides_20:
	mov eax, [ebp+0xc]
	imul eax, ebx
	add eax, edi
	lea eax, [edx+eax*4]
	mov ecx, [eax]
	mov edx, [esi]
	mov [eax], edx
	mov [esi], ecx
	add ebx, 0x1
	add esi, 0x4
	cmp edi, ebx
	jnz CubeMap_FlipSides_30
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz CubeMap_FlipSides_10
CubeMap_FlipSides_50:
	test edi, edi
	jg CubeMap_FlipSides_40
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz CubeMap_FlipSides_50
CubeMap_FlipSides_10:
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x4c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x4]
	mov [ebp-0x44], edx
	cmp dword [ebp+0xc], 0x1
	jle CubeMap_FlipSides_60
	mov edi, 0x1
CubeMap_FlipSides_100:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x44]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp CubeMap_FlipSides_70
CubeMap_FlipSides_80:
	mov edx, [ebp-0x44]
CubeMap_FlipSides_70:
	mov eax, [ebp+0xc]
	imul eax, ebx
	add eax, edi
	lea eax, [edx+eax*4]
	mov ecx, [eax]
	mov edx, [esi]
	mov [eax], edx
	mov [esi], ecx
	add ebx, 0x1
	add esi, 0x4
	cmp edi, ebx
	jnz CubeMap_FlipSides_80
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz CubeMap_FlipSides_90
CubeMap_FlipSides_110:
	test edi, edi
	jg CubeMap_FlipSides_100
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz CubeMap_FlipSides_110
CubeMap_FlipSides_90:
	mov eax, [ebp-0x4c]
CubeMap_FlipSides_60:
	mov edx, [eax]
	mov eax, [ebp+0xc]
	test eax, eax
	jle CubeMap_FlipSides_120
	mov eax, [ebp+0xc]
	sar eax, 1
	mov [ebp-0x24], eax
	mov dword [ebp-0x40], 0x0
	mov [ebp-0x58], edx
	mov edx, [ebp+0xc]
	shl edx, 0x2
	mov [ebp-0x5c], edx
	mov eax, [ebp-0x58]
	lea edi, [edx+eax-0x4]
CubeMap_FlipSides_150:
	mov eax, [ebp-0x24]
	test eax, eax
	jle CubeMap_FlipSides_130
	mov ebx, edi
	xor esi, esi
	mov ecx, [ebp-0x58]
CubeMap_FlipSides_140:
	mov edx, [ecx]
	mov eax, [ebx]
	mov [ecx], eax
	mov [ebx], edx
	add esi, 0x1
	add ecx, 0x4
	sub ebx, 0x4
	cmp esi, [ebp-0x24]
	jnz CubeMap_FlipSides_140
CubeMap_FlipSides_130:
	add dword [ebp-0x40], 0x1
	mov edx, [ebp-0x5c]
	add [ebp-0x58], edx
	add edi, edx
	mov eax, [ebp-0x40]
	cmp [ebp+0xc], eax
	jnz CubeMap_FlipSides_150
	mov eax, [ebp-0x4c]
	mov edx, [eax]
CubeMap_FlipSides_120:
	mov eax, [ebp+0xc]
	sub eax, 0x1
	imul eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov eax, [ebp+0xc]
	test eax, eax
	jle CubeMap_FlipSides_160
	mov eax, [ebp+0xc]
	sar eax, 1
	mov [ebp-0x20], eax
	mov edi, edx
	mov edx, [ebp-0x38]
	lea edx, [edi+edx*4]
	mov [ebp-0x10], edx
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov [ebp-0x64], eax
CubeMap_FlipSides_190:
	mov eax, [ebp-0x20]
	test eax, eax
	jle CubeMap_FlipSides_170
	xor esi, esi
	xor ebx, ebx
CubeMap_FlipSides_180:
	mov eax, [ebp-0x10]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x64]
	cmp esi, [ebp-0x20]
	jnz CubeMap_FlipSides_180
CubeMap_FlipSides_170:
	add dword [ebp-0x3c], 0x1
	add edi, 0x4
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x3c]
	cmp [ebp+0xc], edx
	jnz CubeMap_FlipSides_190
CubeMap_FlipSides_160:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jle CubeMap_FlipSides_200
	mov edx, [ebp+0xc]
	sar edx, 1
	mov [ebp-0x1c], edx
	mov edi, eax
	mov eax, [ebp-0x38]
	lea eax, [edi+eax*4]
	mov [ebp-0x14], eax
	mov dword [ebp-0x34], 0x0
	mov edx, [ebp+0xc]
	shl edx, 0x2
	mov [ebp-0x60], edx
CubeMap_FlipSides_230:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle CubeMap_FlipSides_210
	xor esi, esi
	xor ebx, ebx
CubeMap_FlipSides_220:
	mov eax, [ebp-0x14]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x60]
	cmp esi, [ebp-0x1c]
	jnz CubeMap_FlipSides_220
CubeMap_FlipSides_210:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	add dword [ebp-0x14], 0x4
	mov eax, [ebp-0x34]
	cmp [ebp+0xc], eax
	jnz CubeMap_FlipSides_230
	mov edx, [ebp+0x8]
CubeMap_FlipSides_200:
	mov eax, [edx+0xc]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle CubeMap_FlipSides_240
	mov edx, [ebp+0xc]
	sar edx, 1
	mov [ebp-0x18], edx
	mov dword [ebp-0x30], 0x0
	mov [ebp-0x50], eax
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov [ebp-0x54], eax
	mov edx, [ebp-0x50]
	lea edi, [eax+edx-0x4]
CubeMap_FlipSides_270:
	mov eax, [ebp-0x18]
	test eax, eax
	jle CubeMap_FlipSides_250
	mov ebx, edi
	xor esi, esi
	mov ecx, [ebp-0x50]
CubeMap_FlipSides_260:
	mov edx, [ecx]
	mov eax, [ebx]
	mov [ecx], eax
	mov [ebx], edx
	add esi, 0x1
	add ecx, 0x4
	sub ebx, 0x4
	cmp [ebp-0x18], esi
	jnz CubeMap_FlipSides_260
CubeMap_FlipSides_250:
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x54]
	add [ebp-0x50], eax
	add edi, eax
	mov edx, [ebp-0x30]
	cmp [ebp+0xc], edx
	jnz CubeMap_FlipSides_270
	mov eax, [ebp+0x8]
CubeMap_FlipSides_380:
	mov eax, [eax+0x10]
	mov [ebp-0x2c], eax
	cmp dword [ebp+0xc], 0x1
	jle CubeMap_FlipSides_280
	mov edi, 0x1
CubeMap_FlipSides_310:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x2c]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp CubeMap_FlipSides_290
CubeMap_FlipSides_300:
	mov edx, [ebp-0x2c]
CubeMap_FlipSides_290:
	mov eax, [ebp+0xc]
	imul eax, ebx
	add eax, edi
	lea eax, [edx+eax*4]
	mov ecx, [eax]
	mov edx, [esi]
	mov [eax], edx
	mov [esi], ecx
	add ebx, 0x1
	add esi, 0x4
	cmp edi, ebx
	jnz CubeMap_FlipSides_300
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz CubeMap_FlipSides_280
CubeMap_FlipSides_320:
	test edi, edi
	jg CubeMap_FlipSides_310
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz CubeMap_FlipSides_320
CubeMap_FlipSides_280:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x14]
	mov [ebp-0x28], eax
	cmp dword [ebp+0xc], 0x1
	jle CubeMap_FlipSides_330
	mov edi, 0x1
CubeMap_FlipSides_360:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x28]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp CubeMap_FlipSides_340
CubeMap_FlipSides_350:
	mov edx, [ebp-0x28]
CubeMap_FlipSides_340:
	mov eax, [ebp+0xc]
	imul eax, ebx
	add eax, edi
	lea eax, [edx+eax*4]
	mov ecx, [eax]
	mov edx, [esi]
	mov [eax], edx
	mov [esi], ecx
	add ebx, 0x1
	add esi, 0x4
	cmp edi, ebx
	jnz CubeMap_FlipSides_350
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz CubeMap_FlipSides_330
CubeMap_FlipSides_370:
	test edi, edi
	jg CubeMap_FlipSides_360
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz CubeMap_FlipSides_370
CubeMap_FlipSides_330:
	add esp, 0x58
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_FlipSides_240:
	mov eax, edx
	jmp CubeMap_FlipSides_380
	nop


;Image_FlipVertically(unsigned char*, int)
Image_FlipVertically:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0xc]
	sub eax, 0x1
	imul eax, [ebp+0xc]
	mov edx, [ebp+0xc]
	test edx, edx
	jle Image_FlipVertically_10
	mov edx, [ebp+0xc]
	sar edx, 1
	mov [ebp-0x14], edx
	mov edi, [ebp+0x8]
	lea eax, [edi+eax*4]
	mov [ebp-0x10], eax
	mov dword [ebp-0x18], 0x0
	mov eax, [ebp+0xc]
	shl eax, 0x2
	mov [ebp-0x1c], eax
Image_FlipVertically_40:
	mov eax, [ebp-0x14]
	test eax, eax
	jle Image_FlipVertically_20
	xor esi, esi
	xor ebx, ebx
Image_FlipVertically_30:
	mov eax, [ebp-0x10]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x1c]
	cmp esi, [ebp-0x14]
	jnz Image_FlipVertically_30
Image_FlipVertically_20:
	add dword [ebp-0x18], 0x1
	add edi, 0x4
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x18]
	cmp [ebp+0xc], edx
	jnz Image_FlipVertically_40
Image_FlipVertically_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Image_BlendCubeCorner(unsigned char*, unsigned char*, unsigned char*, int, CubeCoord, CubeCoord, CubeCoord, CubeCoord, CubeCoord, CubeCoord)
Image_BlendCubeCorner:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edx, [ebp+0x14]
	mov eax, [ebp+0x18]
	mov ecx, [ebp+0x20]
	mov esi, [ebp+0x28]
	test eax, eax
	jz Image_BlendCubeCorner_10
	sub eax, 0x1
	jz Image_BlendCubeCorner_20
Image_BlendCubeCorner_110:
	mov dword [ebp-0x18], 0x0
Image_BlendCubeCorner_190:
	test ecx, ecx
	jnz Image_BlendCubeCorner_30
	xor ecx, ecx
	cmp dword [ebp+0x24], 0x2
	jz Image_BlendCubeCorner_40
Image_BlendCubeCorner_140:
	cmp dword [ebp+0x24], 0x3
	jz Image_BlendCubeCorner_50
Image_BlendCubeCorner_130:
	mov dword [ebp-0x14], 0x0
	test esi, esi
	jnz Image_BlendCubeCorner_60
Image_BlendCubeCorner_150:
	xor ecx, ecx
	cmp dword [ebp+0x2c], 0x2
	jz Image_BlendCubeCorner_70
Image_BlendCubeCorner_170:
	cmp dword [ebp+0x2c], 0x3
	jz Image_BlendCubeCorner_80
Image_BlendCubeCorner_160:
	mov dword [ebp-0x10], 0x0
Image_BlendCubeCorner_180:
	mov edi, 0x1
	movss xmm1, dword [_float_3_00000000]
Image_BlendCubeCorner_90:
	mov ecx, [ebp-0x18]
	add ecx, edi
	mov ebx, [ebp-0x14]
	add ebx, edi
	mov esi, [ebp-0x10]
	add esi, edi
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	movzx edx, byte [esi-0x1]
	add eax, edx
	cvtsi2ss xmm0, eax
	divss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	movzx eax, byte [ecx-0x1]
	mov [esi-0x1], al
	add edi, 0x1
	cmp edi, 0x5
	jnz Image_BlendCubeCorner_90
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_BlendCubeCorner_10:
	xor ebx, ebx
Image_BlendCubeCorner_200:
	cmp dword [ebp+0x1c], 0x2
	jz Image_BlendCubeCorner_100
	cmp dword [ebp+0x1c], 0x3
	jnz Image_BlendCubeCorner_110
	lea eax, [edx-0x1]
	imul eax, edx
	jmp Image_BlendCubeCorner_120
Image_BlendCubeCorner_30:
	sub ecx, 0x1
	jnz Image_BlendCubeCorner_130
	lea ecx, [edx-0x1]
	cmp dword [ebp+0x24], 0x2
	jnz Image_BlendCubeCorner_140
Image_BlendCubeCorner_40:
	xor eax, eax
Image_BlendCubeCorner_220:
	lea eax, [ecx+eax]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+eax*4]
	mov [ebp-0x14], eax
	test esi, esi
	jz Image_BlendCubeCorner_150
Image_BlendCubeCorner_60:
	sub esi, 0x1
	jnz Image_BlendCubeCorner_160
	lea ecx, [edx-0x1]
	cmp dword [ebp+0x2c], 0x2
	jnz Image_BlendCubeCorner_170
Image_BlendCubeCorner_70:
	xor eax, eax
Image_BlendCubeCorner_210:
	lea eax, [ecx+eax]
	mov ebx, [ebp+0x10]
	lea eax, [ebx+eax*4]
	mov [ebp-0x10], eax
	jmp Image_BlendCubeCorner_180
Image_BlendCubeCorner_100:
	xor eax, eax
Image_BlendCubeCorner_120:
	lea eax, [ebx+eax]
	mov ebx, [ebp+0x8]
	lea eax, [ebx+eax*4]
	mov [ebp-0x18], eax
	jmp Image_BlendCubeCorner_190
Image_BlendCubeCorner_20:
	lea ebx, [edx-0x1]
	jmp Image_BlendCubeCorner_200
Image_BlendCubeCorner_80:
	lea eax, [edx-0x1]
	imul eax, edx
	jmp Image_BlendCubeCorner_210
Image_BlendCubeCorner_50:
	lea eax, [edx-0x1]
	imul eax, edx
	jmp Image_BlendCubeCorner_220


;CubeMap_BlendFaceEdges(unsigned char* (*) [15], int, int)
CubeMap_BlendFaceEdges:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	cmp dword [ebp+0x10], 0x1
	jz CubeMap_BlendFaceEdges_10
	mov eax, [ebp+0x8]
	add eax, 0x78
	mov [ebp-0x94], eax
	mov edx, [ebp+0x8]
	add edx, 0xf0
	mov [ebp-0x90], edx
	mov dword [esp+0x24], 0x3
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x2
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x0
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	mov ebx, [ebp+0xc]
	mov eax, [eax+ebx*4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x90]
	mov eax, [ecx+ebx*4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+ebx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov ecx, [ebp+0x8]
	add ecx, 0xb4
	mov [ebp-0x8c], ecx
	mov dword [esp+0x24], 0x2
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x3
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x0
	mov ebx, [ebp+0x10]
	mov [esp+0xc], ebx
	mov edx, [ebp+0xc]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x90]
	mov eax, [ecx+edx*4]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	add ebx, 0x12c
	mov [ebp-0x88], ebx
	mov dword [esp+0x24], 0x2
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x2
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov dword [esp+0x24], 0x3
	mov dword [esp+0x20], 0x1
	mov dword [esp+0x1c], 0x3
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88]
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov ebx, [ebp+0x8]
	add ebx, 0x3c
	mov [ebp-0x84], ebx
	mov dword [esp+0x24], 0x3
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x2
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x1
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x90]
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov dword [esp+0x24], 0x2
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x3
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x1
	mov ebx, [ebp+0x10]
	mov [esp+0xc], ebx
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x90]
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov dword [esp+0x24], 0x2
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x2
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x2
	mov dword [esp+0x10], 0x0
	mov ebx, [ebp+0x10]
	mov [esp+0xc], ebx
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88]
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov dword [esp+0x24], 0x3
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], 0x3
	mov dword [esp+0x18], 0x1
	mov dword [esp+0x14], 0x3
	mov dword [esp+0x10], 0x0
	mov ebx, [ebp+0x10]
	mov [esp+0xc], ebx
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+edx*4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88]
	mov eax, [ebx+edx*4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x84]
	mov eax, [ecx+edx*4]
	mov [esp], eax
	call Image_BlendCubeCorner
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x90]
	mov edx, [eax+ebx*4]
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+ebx*4]
	mov [ebp-0x9c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jle CubeMap_BlendFaceEdges_20
	mov dword [ebp-0x7c], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	lea edi, [eax+edx-0x4]
	mov dword [ebp-0xcc], 0x0
	mov [ebp-0xc8], eax
CubeMap_BlendFaceEdges_50:
	mov ebx, [ebp-0xcc]
	mov eax, [ebp-0x9c]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x80], ebx
	mov esi, 0x1
	mov eax, ebx
	lea ecx, [esi+eax]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jz CubeMap_BlendFaceEdges_30
CubeMap_BlendFaceEdges_40:
	mov eax, [ebp-0x80]
	lea ecx, [esi+eax]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_40
CubeMap_BlendFaceEdges_30:
	add dword [ebp-0x7c], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xcc], edx
	add edi, [ebp-0xc8]
	mov ecx, [ebp-0x7c]
	cmp edx, ecx
	jnz CubeMap_BlendFaceEdges_50
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x9c], ebx
	mov edx, [ebp+0xc]
CubeMap_BlendFaceEdges_420:
	mov ecx, [ebp-0x88]
	mov edx, [ecx+edx*4]
	mov [ebp-0x70], edx
	mov eax, [ebp+0x10]
	test eax, eax
	jle CubeMap_BlendFaceEdges_60
	mov dword [ebp-0x74], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov ecx, [ebp-0x9c]
	lea edi, [eax+ecx-0x4]
	mov dword [ebp-0xc4], 0x0
	mov [ebp-0xc0], eax
CubeMap_BlendFaceEdges_90:
	mov ebx, [ebp-0xc4]
	mov eax, [ebp-0x70]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x78], ebx
	mov esi, 0x1
	mov eax, ebx
	lea ecx, [esi+edi]
	lea ebx, [esi+eax]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jz CubeMap_BlendFaceEdges_70
CubeMap_BlendFaceEdges_80:
	mov eax, [ebp-0x78]
	lea ecx, [esi+edi]
	lea ebx, [esi+eax]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_80
CubeMap_BlendFaceEdges_70:
	add dword [ebp-0x74], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xc4], edx
	add edi, [ebp-0xc0]
	mov ecx, [ebp-0x74]
	cmp edx, ecx
	jnz CubeMap_BlendFaceEdges_90
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x9c], ebx
CubeMap_BlendFaceEdges_60:
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x94]
	mov edx, [ebx+ecx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle CubeMap_BlendFaceEdges_100
	mov eax, [ebp+0x10]
	sub eax, 0x1
	mov ecx, [ebp-0x9c]
	mov [ebp-0x1c], ecx
	mov dword [ebp-0x6c], 0x0
	imul eax, [ebp+0x10]
	mov ecx, [ebp+0x10]
	shl ecx, 0x2
	lea edx, [ecx+edx]
	lea edi, [edx+eax*4-0x4]
	neg ecx
	mov [ebp-0xbc], ecx
CubeMap_BlendFaceEdges_120:
	mov esi, 0x1
CubeMap_BlendFaceEdges_110:
	mov ebx, [ebp-0x1c]
	lea ecx, [esi+ebx]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_110
	add dword [ebp-0x6c], 0x1
	add edi, [ebp-0xbc]
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x6c]
	cmp [ebp+0x10], eax
	jnz CubeMap_BlendFaceEdges_120
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+edx*4]
	mov [ebp-0x9c], edx
	mov ebx, [ebp+0xc]
CubeMap_BlendFaceEdges_490:
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle CubeMap_BlendFaceEdges_130
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	mov ecx, [ebp-0x9c]
	lea eax, [ecx+eax*4]
	mov [ebp-0x20], eax
	mov dword [ebp-0x68], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	lea edi, [eax+edx-0x4]
	mov [ebp-0xb8], eax
CubeMap_BlendFaceEdges_150:
	mov esi, 0x1
CubeMap_BlendFaceEdges_140:
	mov ebx, [ebp-0x20]
	lea ecx, [esi+ebx]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_140
	add dword [ebp-0x68], 0x1
	add edi, [ebp-0xb8]
	add dword [ebp-0x20], 0x4
	mov eax, [ebp-0x68]
	cmp [ebp+0x10], eax
	jnz CubeMap_BlendFaceEdges_150
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov ebx, [ebp-0x84]
	mov ebx, [ebx+edx*4]
	mov [ebp-0x98], ebx
	mov edi, [ebp+0x10]
	test edi, edi
	jle CubeMap_BlendFaceEdges_160
CubeMap_BlendFaceEdges_460:
	mov [ebp-0x24], ebx
	mov dword [ebp-0x64], 0x0
	mov edi, eax
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov [ebp-0xb4], eax
CubeMap_BlendFaceEdges_180:
	mov esi, 0x1
CubeMap_BlendFaceEdges_170:
	mov ecx, [ebp-0x24]
	add ecx, esi
	lea ebx, [edi+esi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_170
	add dword [ebp-0x64], 0x1
	add edi, [ebp-0xb4]
	add dword [ebp-0x24], 0x4
	mov edx, [ebp-0x64]
	cmp [ebp+0x10], edx
	jnz CubeMap_BlendFaceEdges_180
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x84]
	mov ecx, [ebx+ecx*4]
	mov [ebp-0x98], ecx
	mov eax, [ebp+0xc]
	mov ecx, [ebp-0x8c]
	mov edx, [ecx+eax*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jle CubeMap_BlendFaceEdges_190
CubeMap_BlendFaceEdges_470:
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	shl eax, 0x2
	mov ebx, [ebp-0x98]
	add ebx, eax
	mov [ebp-0x28], ebx
	mov dword [ebp-0x60], 0x0
	lea edi, [eax+edx]
	mov eax, [ebp+0x10]
	shl eax, 0x2
	neg eax
	mov [ebp-0xb0], eax
CubeMap_BlendFaceEdges_210:
	mov esi, 0x1
CubeMap_BlendFaceEdges_200:
	mov edx, [ebp-0x28]
	lea ecx, [esi+edx]
	lea ebx, [edi+esi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_200
	add dword [ebp-0x60], 0x1
	add edi, [ebp-0xb0]
	add dword [ebp-0x28], 0x4
	mov ecx, [ebp-0x60]
	cmp [ebp+0x10], ecx
	jnz CubeMap_BlendFaceEdges_210
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x84]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x98], ebx
	mov edx, [ebp+0xc]
CubeMap_BlendFaceEdges_480:
	mov ecx, [ebp-0x90]
	mov edx, [ecx+edx*4]
	mov [ebp-0x54], edx
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jle CubeMap_BlendFaceEdges_220
	mov dword [ebp-0x58], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov ecx, [ebp-0x98]
	lea edi, [eax+ecx-0x4]
	mov dword [ebp-0xac], 0x0
	mov [ebp-0xa8], eax
CubeMap_BlendFaceEdges_250:
	mov ebx, [ebp-0xac]
	mov eax, [ebp-0x54]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x5c], ebx
	mov esi, 0x1
	lea ecx, [edi+esi]
	add ebx, esi
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jz CubeMap_BlendFaceEdges_230
CubeMap_BlendFaceEdges_240:
	mov ebx, [ebp-0x5c]
	lea ecx, [edi+esi]
	add ebx, esi
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_240
CubeMap_BlendFaceEdges_230:
	add dword [ebp-0x58], 0x1
	mov eax, [ebp+0x10]
	add [ebp-0xac], eax
	add edi, [ebp-0xa8]
	mov edx, [ebp-0x58]
	cmp eax, edx
	jnz CubeMap_BlendFaceEdges_250
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x84]
	mov ecx, [ebx+ecx*4]
	mov [ebp-0x98], ecx
CubeMap_BlendFaceEdges_220:
	mov eax, [ebp+0xc]
	mov ecx, [ebp-0x88]
	mov edx, [ecx+eax*4]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle CubeMap_BlendFaceEdges_260
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	lea edi, [eax+edx-0x4]
	mov dword [ebp-0xa4], 0x0
	mov [ebp-0xa0], eax
CubeMap_BlendFaceEdges_290:
	mov ebx, [ebp-0xa4]
	mov eax, [ebp-0x98]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x50], ebx
	mov esi, 0x1
	mov eax, ebx
	lea ecx, [esi+eax]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jz CubeMap_BlendFaceEdges_270
CubeMap_BlendFaceEdges_280:
	mov eax, [ebp-0x50]
	lea ecx, [esi+eax]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_280
CubeMap_BlendFaceEdges_270:
	add dword [ebp-0x4c], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xa4], edx
	add edi, [ebp-0xa0]
	mov ecx, [ebp-0x4c]
	cmp edx, ecx
	jnz CubeMap_BlendFaceEdges_290
	mov ebx, [ebp+0xc]
CubeMap_BlendFaceEdges_510:
	mov eax, [ebp-0x90]
	mov ecx, [eax+ebx*4]
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle CubeMap_BlendFaceEdges_300
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea edi, [ecx+eax*4]
	mov dword [ebp-0x48], 0x0
CubeMap_BlendFaceEdges_320:
	mov esi, 0x1
CubeMap_BlendFaceEdges_310:
	mov edx, [ebp-0x2c]
	lea ecx, [esi+edx]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_310
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x2c], 0x4
	add edi, 0x4
	mov ecx, [ebp-0x48]
	cmp [ebp+0x10], ecx
	jnz CubeMap_BlendFaceEdges_320
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
CubeMap_BlendFaceEdges_300:
	mov eax, [ebp-0x88]
	mov ecx, [eax+ebx*4]
	mov edi, [ebp+0x10]
	test edi, edi
	jle CubeMap_BlendFaceEdges_330
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea edx, [edx+eax*4]
	mov [ebp-0x30], edx
	add eax, [ebp+0x10]
	lea edi, [ecx+eax*4-0x4]
	mov dword [ebp-0x44], 0x0
CubeMap_BlendFaceEdges_350:
	mov esi, 0x1
CubeMap_BlendFaceEdges_340:
	mov ecx, [ebp-0x30]
	add ecx, esi
	lea ebx, [edi+esi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_340
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x30], 0x4
	sub edi, 0x4
	mov edx, [ebp-0x44]
	cmp [ebp+0x10], edx
	jnz CubeMap_BlendFaceEdges_350
	mov ebx, [ebp+0xc]
CubeMap_BlendFaceEdges_330:
	mov eax, [ebp-0x90]
	mov ecx, [eax+ebx*4]
	mov eax, [ebp-0x94]
	mov edx, [eax+ebx*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jle CubeMap_BlendFaceEdges_360
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea eax, [edx+eax*4]
	mov [ebp-0x34], eax
	mov edi, ecx
	mov dword [ebp-0x40], 0x0
CubeMap_BlendFaceEdges_380:
	mov esi, 0x1
CubeMap_BlendFaceEdges_370:
	mov ecx, [ebp-0x34]
	add ecx, esi
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_370
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x34], 0x4
	add edi, 0x4
	mov edx, [ebp-0x40]
	cmp [ebp+0x10], edx
	jnz CubeMap_BlendFaceEdges_380
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x94]
	mov edx, [ebx+ecx*4]
CubeMap_BlendFaceEdges_500:
	mov ebx, [ebp-0x88]
	mov eax, [ebx+ecx*4]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle CubeMap_BlendFaceEdges_390
	mov [ebp-0x38], edx
	mov edx, [ebp+0x10]
	lea edi, [eax+edx*4-0x4]
	mov dword [ebp-0x3c], 0x0
CubeMap_BlendFaceEdges_410:
	mov esi, 0x1
CubeMap_BlendFaceEdges_400:
	mov ebx, [ebp-0x38]
	lea ecx, [esi+ebx]
	lea ebx, [esi+edi]
	movzx eax, byte [ecx-0x1]
	movzx edx, byte [ebx-0x1]
	add eax, edx
	sar eax, 1
	mov [ecx-0x1], al
	mov [ebx-0x1], al
	add esi, 0x1
	cmp esi, 0x5
	jnz CubeMap_BlendFaceEdges_400
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x38], 0x4
	sub edi, 0x4
	mov eax, [ebp-0x3c]
	cmp [ebp+0x10], eax
	jnz CubeMap_BlendFaceEdges_410
CubeMap_BlendFaceEdges_390:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_BlendFaceEdges_20:
	mov edx, ebx
	jmp CubeMap_BlendFaceEdges_420
CubeMap_BlendFaceEdges_10:
	xor esi, esi
	pxor xmm3, xmm3
	movss xmm2, dword [_float_6_00000000]
	mov edi, [ebp+0xc]
	shl edi, 0x2
CubeMap_BlendFaceEdges_450:
	mov edx, [ebp+0x8]
	add edx, edi
	movaps xmm1, xmm3
	xor ecx, ecx
CubeMap_BlendFaceEdges_430:
	mov eax, [edx]
	movzx eax, byte [esi+eax]
	cvtsi2ss xmm0, eax
	addss xmm1, xmm0
	add ecx, 0x1
	add edx, 0x3c
	cmp ecx, 0x6
	jnz CubeMap_BlendFaceEdges_430
	divss xmm1, xmm2
	cvttss2si ebx, xmm1
	mov edx, [ebp+0x8]
	add edx, edi
	and ecx, 0xffffff00
CubeMap_BlendFaceEdges_440:
	mov eax, [edx]
	mov [esi+eax], bl
	add ecx, 0x1
	add edx, 0x3c
	cmp ecx, 0x6
	jnz CubeMap_BlendFaceEdges_440
	add esi, 0x1
	cmp esi, 0x4
	jnz CubeMap_BlendFaceEdges_450
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_BlendFaceEdges_130:
	mov edx, ebx
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov ebx, [ebp-0x84]
	mov ebx, [ebx+edx*4]
	mov [ebp-0x98], ebx
	mov edi, [ebp+0x10]
	test edi, edi
	jg CubeMap_BlendFaceEdges_460
CubeMap_BlendFaceEdges_160:
	mov eax, edx
	mov ecx, [ebp-0x8c]
	mov edx, [ecx+eax*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jg CubeMap_BlendFaceEdges_470
CubeMap_BlendFaceEdges_190:
	mov edx, eax
	jmp CubeMap_BlendFaceEdges_480
CubeMap_BlendFaceEdges_100:
	mov ebx, ecx
	jmp CubeMap_BlendFaceEdges_490
CubeMap_BlendFaceEdges_360:
	mov ecx, ebx
	jmp CubeMap_BlendFaceEdges_500
CubeMap_BlendFaceEdges_260:
	mov ebx, eax
	jmp CubeMap_BlendFaceEdges_510


;CubeMap_CacheHighMipDirs()
CubeMap_CacheHighMipDirs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cmp byte [cubeMapUtilsGlob+0x48000], 0x0
	jnz CubeMap_CacheHighMipDirs_10
	mov byte [cubeMapUtilsGlob+0x48000], 0x1
	mov dword [ebp-0x1c], 0x0
CubeMap_CacheHighMipDirs_50:
	xor edi, edi
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*2]
	shl eax, 0xe
	mov [ebp-0x20], eax
	mov ebx, eax
CubeMap_CacheHighMipDirs_40:
	xor esi, esi
	add ebx, cubeMapUtilsGlob
CubeMap_CacheHighMipDirs_20:
	mov [esp+0x4], ebx
	mov dword [esp], 0x40
	mov ecx, edi
	mov edx, esi
	mov eax, [ebp-0x1c]
	call Image_CubeMapDir
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x40
	jnz CubeMap_CacheHighMipDirs_20
	add edi, 0x1
	add dword [ebp-0x20], 0x300
	cmp edi, 0x40
	jz CubeMap_CacheHighMipDirs_30
	mov ebx, [ebp-0x20]
	jmp CubeMap_CacheHighMipDirs_40
CubeMap_CacheHighMipDirs_30:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x6
	jnz CubeMap_CacheHighMipDirs_50
CubeMap_CacheHighMipDirs_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CubeMap_GenerateMipMap32(unsigned char*, int, unsigned char* (*) [15], int, int)
CubeMap_GenerateMipMap32:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	sar edi, 1
	cmp edi, 0x20
	ja CubeMap_GenerateMipMap32_10
	jmp dword [edi*4+CubeMap_GenerateMipMap32_jumptab_0]
CubeMap_GenerateMipMap32_10:
	mov dword [esp], 0x3db2b8c2
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	cmp edi, 0x1
	jz CubeMap_GenerateMipMap32_20
	test edi, edi
	jg CubeMap_GenerateMipMap32_30
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_GenerateMipMap32_80:
	mov dword [esp], 0x40490fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
CubeMap_GenerateMipMap32_20:
	cmp dword [ebp+0x18], 0x5
	jbe CubeMap_GenerateMipMap32_40
CubeMap_GenerateMipMap32_70:
	lea edx, [ebp-0x24]
	mov eax, [ebp+0x14]
	mov [esp], eax
	movaps xmm0, xmm1
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x8]
	call Image_CalcCubeMipMapTexel32
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_GenerateMipMap32_130:
	mov dword [esp], 0x3db2b8c2
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
CubeMap_GenerateMipMap32_30:
	mov dword [ebp-0x2c], 0x0
CubeMap_GenerateMipMap32_60:
	mov eax, [ebp-0x2c]
	imul eax, edi
	mov edx, [ebp+0x8]
	lea ebx, [edx+eax*4]
	xor esi, esi
CubeMap_GenerateMipMap32_50:
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	mov ecx, [ebp-0x2c]
	mov edx, esi
	mov eax, [ebp+0x18]
	movss [ebp-0x48], xmm1
	call Image_CubeMapDir
	mov eax, [ebp+0x14]
	mov [esp], eax
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mov ecx, [ebp+0x10]
	lea edx, [ebp-0x24]
	mov eax, ebx
	call Image_CalcCubeMipMapTexel32
	add esi, 0x1
	add ebx, 0x4
	cmp edi, esi
	movss xmm1, dword [ebp-0x48]
	jnz CubeMap_GenerateMipMap32_50
	add dword [ebp-0x2c], 0x1
	cmp edi, [ebp-0x2c]
	jnz CubeMap_GenerateMipMap32_60
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CubeMap_GenerateMipMap32_40:
	mov eax, [ebp+0x18]
	jmp dword [eax*4+CubeMap_GenerateMipMap32_jumptab_1]
CubeMap_GenerateMipMap32_120:
	mov dword [esp], 0x3e449809
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp CubeMap_GenerateMipMap32_30
CubeMap_GenerateMipMap32_110:
	mov dword [esp], 0x3ec49809
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp CubeMap_GenerateMipMap32_30
CubeMap_GenerateMipMap32_100:
	mov dword [esp], 0x3f490fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp CubeMap_GenerateMipMap32_30
CubeMap_GenerateMipMap32_90:
	mov dword [esp], 0x3fc90fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp CubeMap_GenerateMipMap32_30
CubeMap_GenerateMipMap32_140:
	mov dword [ebp-0x24], 0x3f800000
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	jmp CubeMap_GenerateMipMap32_70
CubeMap_GenerateMipMap32_150:
	mov dword [ebp-0x24], 0xbf800000
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	jmp CubeMap_GenerateMipMap32_70
CubeMap_GenerateMipMap32_160:
	xor eax, eax
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0x3f800000
	mov [ebp-0x1c], eax
	jmp CubeMap_GenerateMipMap32_70
CubeMap_GenerateMipMap32_170:
	xor eax, eax
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0xbf800000
	mov [ebp-0x1c], eax
	jmp CubeMap_GenerateMipMap32_70
CubeMap_GenerateMipMap32_180:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x3f800000
	jmp CubeMap_GenerateMipMap32_70
CubeMap_GenerateMipMap32_190:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0xbf800000
	jmp CubeMap_GenerateMipMap32_70
	
	
CubeMap_GenerateMipMap32_jumptab_0:
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_80
	dd CubeMap_GenerateMipMap32_90
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_100
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_110
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_120
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_10
	dd CubeMap_GenerateMipMap32_130
CubeMap_GenerateMipMap32_jumptab_1:
	dd CubeMap_GenerateMipMap32_140
	dd CubeMap_GenerateMipMap32_150
	dd CubeMap_GenerateMipMap32_160
	dd CubeMap_GenerateMipMap32_170
	dd CubeMap_GenerateMipMap32_180
	dd CubeMap_GenerateMipMap32_190


;Initialized global or static variables of r_cubemap_utils:
SECTION .data


;Initialized constant data of r_cubemap_utils:
SECTION .rdata


;Zero initialized global or static variables of r_cubemap_utils:
SECTION .bss
cubeMapUtilsGlob: resb 0x48080


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_255_00000000:		dd 0x437f0000	; 255
_float_3_00000000:		dd 0x40400000	; 3
_float_6_00000000:		dd 0x40c00000	; 6

