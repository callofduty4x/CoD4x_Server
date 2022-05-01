;Imports of r_cubemap_utils:
	extern cosf

;Exports of r_cubemap_utils:
	global cubeMapUtilsGlob
	global _Z16Image_CubeMapDiriiiiPf
	global _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if
	global _Z17CubeMap_FlipSidesPPhi
	global _Z20Image_FlipVerticallyPhi
	global _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
	global _Z22CubeMap_BlendFaceEdgesPA15_Phii
	global _Z24CubeMap_CacheHighMipDirsv
	global _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii


SECTION .text


;Image_CubeMapDir(int, int, int, int, float*)
_Z16Image_CubeMapDiriiiiPf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, edx
	mov esi, ecx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	cmp eax, 0x5
	ja _Z16Image_CubeMapDiriiiiPf_10
	jmp dword [eax*4+_Z16Image_CubeMapDiriiiiPf_jumptab_0]
_Z16Image_CubeMapDiriiiiPf_10:
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	pxor xmm5, xmm5
_Z16Image_CubeMapDiriiiiPf_40:
	mov edx, 0x1
	movss xmm4, dword [_float_1_00000000]
	lea eax, [ecx+0x4]
_Z16Image_CubeMapDiriiiiPf_20:
	movss xmm0, dword [eax-0x4]
	divss xmm0, xmm1
	addss xmm0, xmm0
	subss xmm0, xmm4
	movss [eax-0x4], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z16Image_CubeMapDiriiiiPf_20
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
	jb _Z16Image_CubeMapDiriiiiPf_30
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
_Z16Image_CubeMapDiriiiiPf_50:
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
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_100:
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
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_90:
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
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_80:
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
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_70:
	cvtsi2ss xmm0, ebx
	movss [ecx], xmm0
	lea eax, [edx-0x1]
	cvtsi2ss xmm1, eax
	movss [ecx+0x4], xmm1
	cvtsi2ss xmm0, esi
	movss [ecx+0x8], xmm0
	pxor xmm5, xmm5
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_60:
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
	jmp _Z16Image_CubeMapDiriiiiPf_40
_Z16Image_CubeMapDiriiiiPf_30:
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
	
	
_Z16Image_CubeMapDiriiiiPf_jumptab_0:
	dd _Z16Image_CubeMapDiriiiiPf_50
	dd _Z16Image_CubeMapDiriiiiPf_60
	dd _Z16Image_CubeMapDiriiiiPf_70
	dd _Z16Image_CubeMapDiriiiiPf_80
	dd _Z16Image_CubeMapDiriiiiPf_90
	dd _Z16Image_CubeMapDiriiiiPf_100


;Image_CalcCubeMipMapTexel32(unsigned char*, float*, unsigned char* (*) [15], int, float)
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if:
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
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_10:
	mov dword [ebp+eax*4-0x2c], 0x0
	add eax, 0x1
	cmp eax, 0x5
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_10
	mov [ebp-0x3c], ecx
	mov dword [ebp-0x40], 0x0
	pxor xmm7, xmm7
	movss xmm6, dword [_float_255_00000000]
	mov dword [ebp-0x4c], 0x0
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_70:
	mov ecx, [ebp+0x8]
	test ecx, ecx
	jle _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_20
	mov eax, [ebp-0x48]
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	xor edi, edi
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_60:
	mov eax, [ebp+0x8]
	imul eax, edi
	lea esi, [eax*4]
	xor ebx, ebx
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_50:
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
	jbe _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_30
	subss xmm1, xmm2
	mov edx, 0x1
	mov eax, [ebp-0x3c]
	mov ecx, [eax]
	add ecx, esi
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_40:
	movzx eax, byte [ecx+edx-0x1]
	cvtsi2ss xmm0, eax
	divss xmm0, xmm6
	movss [ebp+edx*4-0x3c], xmm0
	add edx, 0x1
	cmp edx, 0x5
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_40
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
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_30:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp+0x8], ebx
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_50
	add edi, 0x1
	cmp ebx, edi
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_60
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_20:
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x4c], 0xc000
	add dword [ebp-0x3c], 0x3c
	cmp dword [ebp-0x40], 0x6
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_70
	mov ecx, 0x1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	lea edx, [ebp-0x28]
	add edx, 0x4
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_90:
	movss xmm0, dword [edx-0x4]
	divss xmm0, xmm7
	movss [edx-0x4], xmm0
	ucomiss xmm0, xmm1
	jbe _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_80
	movaps xmm0, xmm2
	movss [edx-0x4], xmm2
_Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_80:
	mulss xmm0, xmm6
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x44]
	mov [ebx+ecx-0x1], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if_90
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CubeMap_FlipSides(unsigned char**, int)
_Z17CubeMap_FlipSidesPPhi:
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
	jle _Z17CubeMap_FlipSidesPPhi_10
	mov edi, 0x1
_Z17CubeMap_FlipSidesPPhi_40:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x48]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp _Z17CubeMap_FlipSidesPPhi_20
_Z17CubeMap_FlipSidesPPhi_30:
	mov edx, [ebp-0x48]
_Z17CubeMap_FlipSidesPPhi_20:
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
	jnz _Z17CubeMap_FlipSidesPPhi_30
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz _Z17CubeMap_FlipSidesPPhi_10
_Z17CubeMap_FlipSidesPPhi_50:
	test edi, edi
	jg _Z17CubeMap_FlipSidesPPhi_40
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz _Z17CubeMap_FlipSidesPPhi_50
_Z17CubeMap_FlipSidesPPhi_10:
	mov eax, [ebp+0x8]
	add eax, 0x4
	mov [ebp-0x4c], eax
	mov edx, [ebp+0x8]
	mov edx, [edx+0x4]
	mov [ebp-0x44], edx
	cmp dword [ebp+0xc], 0x1
	jle _Z17CubeMap_FlipSidesPPhi_60
	mov edi, 0x1
_Z17CubeMap_FlipSidesPPhi_100:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x44]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp _Z17CubeMap_FlipSidesPPhi_70
_Z17CubeMap_FlipSidesPPhi_80:
	mov edx, [ebp-0x44]
_Z17CubeMap_FlipSidesPPhi_70:
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
	jnz _Z17CubeMap_FlipSidesPPhi_80
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz _Z17CubeMap_FlipSidesPPhi_90
_Z17CubeMap_FlipSidesPPhi_110:
	test edi, edi
	jg _Z17CubeMap_FlipSidesPPhi_100
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz _Z17CubeMap_FlipSidesPPhi_110
_Z17CubeMap_FlipSidesPPhi_90:
	mov eax, [ebp-0x4c]
_Z17CubeMap_FlipSidesPPhi_60:
	mov edx, [eax]
	mov eax, [ebp+0xc]
	test eax, eax
	jle _Z17CubeMap_FlipSidesPPhi_120
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
_Z17CubeMap_FlipSidesPPhi_150:
	mov eax, [ebp-0x24]
	test eax, eax
	jle _Z17CubeMap_FlipSidesPPhi_130
	mov ebx, edi
	xor esi, esi
	mov ecx, [ebp-0x58]
_Z17CubeMap_FlipSidesPPhi_140:
	mov edx, [ecx]
	mov eax, [ebx]
	mov [ecx], eax
	mov [ebx], edx
	add esi, 0x1
	add ecx, 0x4
	sub ebx, 0x4
	cmp esi, [ebp-0x24]
	jnz _Z17CubeMap_FlipSidesPPhi_140
_Z17CubeMap_FlipSidesPPhi_130:
	add dword [ebp-0x40], 0x1
	mov edx, [ebp-0x5c]
	add [ebp-0x58], edx
	add edi, edx
	mov eax, [ebp-0x40]
	cmp [ebp+0xc], eax
	jnz _Z17CubeMap_FlipSidesPPhi_150
	mov eax, [ebp-0x4c]
	mov edx, [eax]
_Z17CubeMap_FlipSidesPPhi_120:
	mov eax, [ebp+0xc]
	sub eax, 0x1
	imul eax, [ebp+0xc]
	mov [ebp-0x38], eax
	mov eax, [ebp+0xc]
	test eax, eax
	jle _Z17CubeMap_FlipSidesPPhi_160
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
_Z17CubeMap_FlipSidesPPhi_190:
	mov eax, [ebp-0x20]
	test eax, eax
	jle _Z17CubeMap_FlipSidesPPhi_170
	xor esi, esi
	xor ebx, ebx
_Z17CubeMap_FlipSidesPPhi_180:
	mov eax, [ebp-0x10]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x64]
	cmp esi, [ebp-0x20]
	jnz _Z17CubeMap_FlipSidesPPhi_180
_Z17CubeMap_FlipSidesPPhi_170:
	add dword [ebp-0x3c], 0x1
	add edi, 0x4
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x3c]
	cmp [ebp+0xc], edx
	jnz _Z17CubeMap_FlipSidesPPhi_190
_Z17CubeMap_FlipSidesPPhi_160:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jle _Z17CubeMap_FlipSidesPPhi_200
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
_Z17CubeMap_FlipSidesPPhi_230:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jle _Z17CubeMap_FlipSidesPPhi_210
	xor esi, esi
	xor ebx, ebx
_Z17CubeMap_FlipSidesPPhi_220:
	mov eax, [ebp-0x14]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x60]
	cmp esi, [ebp-0x1c]
	jnz _Z17CubeMap_FlipSidesPPhi_220
_Z17CubeMap_FlipSidesPPhi_210:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	add dword [ebp-0x14], 0x4
	mov eax, [ebp-0x34]
	cmp [ebp+0xc], eax
	jnz _Z17CubeMap_FlipSidesPPhi_230
	mov edx, [ebp+0x8]
_Z17CubeMap_FlipSidesPPhi_200:
	mov eax, [edx+0xc]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle _Z17CubeMap_FlipSidesPPhi_240
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
_Z17CubeMap_FlipSidesPPhi_270:
	mov eax, [ebp-0x18]
	test eax, eax
	jle _Z17CubeMap_FlipSidesPPhi_250
	mov ebx, edi
	xor esi, esi
	mov ecx, [ebp-0x50]
_Z17CubeMap_FlipSidesPPhi_260:
	mov edx, [ecx]
	mov eax, [ebx]
	mov [ecx], eax
	mov [ebx], edx
	add esi, 0x1
	add ecx, 0x4
	sub ebx, 0x4
	cmp [ebp-0x18], esi
	jnz _Z17CubeMap_FlipSidesPPhi_260
_Z17CubeMap_FlipSidesPPhi_250:
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x54]
	add [ebp-0x50], eax
	add edi, eax
	mov edx, [ebp-0x30]
	cmp [ebp+0xc], edx
	jnz _Z17CubeMap_FlipSidesPPhi_270
	mov eax, [ebp+0x8]
_Z17CubeMap_FlipSidesPPhi_380:
	mov eax, [eax+0x10]
	mov [ebp-0x2c], eax
	cmp dword [ebp+0xc], 0x1
	jle _Z17CubeMap_FlipSidesPPhi_280
	mov edi, 0x1
_Z17CubeMap_FlipSidesPPhi_310:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x2c]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp _Z17CubeMap_FlipSidesPPhi_290
_Z17CubeMap_FlipSidesPPhi_300:
	mov edx, [ebp-0x2c]
_Z17CubeMap_FlipSidesPPhi_290:
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
	jnz _Z17CubeMap_FlipSidesPPhi_300
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz _Z17CubeMap_FlipSidesPPhi_280
_Z17CubeMap_FlipSidesPPhi_320:
	test edi, edi
	jg _Z17CubeMap_FlipSidesPPhi_310
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz _Z17CubeMap_FlipSidesPPhi_320
_Z17CubeMap_FlipSidesPPhi_280:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x14]
	mov [ebp-0x28], eax
	cmp dword [ebp+0xc], 0x1
	jle _Z17CubeMap_FlipSidesPPhi_330
	mov edi, 0x1
_Z17CubeMap_FlipSidesPPhi_360:
	mov eax, [ebp+0xc]
	imul eax, edi
	mov edx, [ebp-0x28]
	lea esi, [edx+eax*4]
	xor ebx, ebx
	jmp _Z17CubeMap_FlipSidesPPhi_340
_Z17CubeMap_FlipSidesPPhi_350:
	mov edx, [ebp-0x28]
_Z17CubeMap_FlipSidesPPhi_340:
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
	jnz _Z17CubeMap_FlipSidesPPhi_350
	add edi, 0x1
	cmp [ebp+0xc], edi
	jz _Z17CubeMap_FlipSidesPPhi_330
_Z17CubeMap_FlipSidesPPhi_370:
	test edi, edi
	jg _Z17CubeMap_FlipSidesPPhi_360
	add edi, 0x1
	cmp [ebp+0xc], edi
	jnz _Z17CubeMap_FlipSidesPPhi_370
_Z17CubeMap_FlipSidesPPhi_330:
	add esp, 0x58
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17CubeMap_FlipSidesPPhi_240:
	mov eax, edx
	jmp _Z17CubeMap_FlipSidesPPhi_380
	nop


;Image_FlipVertically(unsigned char*, int)
_Z20Image_FlipVerticallyPhi:
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
	jle _Z20Image_FlipVerticallyPhi_10
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
_Z20Image_FlipVerticallyPhi_40:
	mov eax, [ebp-0x14]
	test eax, eax
	jle _Z20Image_FlipVerticallyPhi_20
	xor esi, esi
	xor ebx, ebx
_Z20Image_FlipVerticallyPhi_30:
	mov eax, [ebp-0x10]
	sub eax, ebx
	mov ecx, [ebx+edi]
	mov edx, [eax]
	mov [ebx+edi], edx
	mov [eax], ecx
	add esi, 0x1
	add ebx, [ebp-0x1c]
	cmp esi, [ebp-0x14]
	jnz _Z20Image_FlipVerticallyPhi_30
_Z20Image_FlipVerticallyPhi_20:
	add dword [ebp-0x18], 0x1
	add edi, 0x4
	add dword [ebp-0x10], 0x4
	mov edx, [ebp-0x18]
	cmp [ebp+0xc], edx
	jnz _Z20Image_FlipVerticallyPhi_40
_Z20Image_FlipVerticallyPhi_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Image_BlendCubeCorner(unsigned char*, unsigned char*, unsigned char*, int, CubeCoord, CubeCoord, CubeCoord, CubeCoord, CubeCoord, CubeCoord)
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_:
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
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__10
	sub eax, 0x1
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__20
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__110:
	mov dword [ebp-0x18], 0x0
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__190:
	test ecx, ecx
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__30
	xor ecx, ecx
	cmp dword [ebp+0x24], 0x2
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__40
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__140:
	cmp dword [ebp+0x24], 0x3
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__50
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__130:
	mov dword [ebp-0x14], 0x0
	test esi, esi
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__60
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__150:
	xor ecx, ecx
	cmp dword [ebp+0x2c], 0x2
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__70
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__170:
	cmp dword [ebp+0x2c], 0x3
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__80
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__160:
	mov dword [ebp-0x10], 0x0
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__180:
	mov edi, 0x1
	movss xmm1, dword [_float_3_00000000]
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__90:
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
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__90
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__10:
	xor ebx, ebx
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__200:
	cmp dword [ebp+0x1c], 0x2
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__100
	cmp dword [ebp+0x1c], 0x3
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__110
	lea eax, [edx-0x1]
	imul eax, edx
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__120
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__30:
	sub ecx, 0x1
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__130
	lea ecx, [edx-0x1]
	cmp dword [ebp+0x24], 0x2
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__140
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__40:
	xor eax, eax
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__220:
	lea eax, [ecx+eax]
	mov ecx, [ebp+0xc]
	lea eax, [ecx+eax*4]
	mov [ebp-0x14], eax
	test esi, esi
	jz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__150
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__60:
	sub esi, 0x1
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__160
	lea ecx, [edx-0x1]
	cmp dword [ebp+0x2c], 0x2
	jnz _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__170
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__70:
	xor eax, eax
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__210:
	lea eax, [ecx+eax]
	mov ebx, [ebp+0x10]
	lea eax, [ebx+eax*4]
	mov [ebp-0x10], eax
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__180
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__100:
	xor eax, eax
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__120:
	lea eax, [ebx+eax]
	mov ebx, [ebp+0x8]
	lea eax, [ebx+eax*4]
	mov [ebp-0x18], eax
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__190
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__20:
	lea ebx, [edx-0x1]
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__200
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__80:
	lea eax, [edx-0x1]
	imul eax, edx
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__210
_Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__50:
	lea eax, [edx-0x1]
	imul eax, edx
	jmp _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0__220


;CubeMap_BlendFaceEdges(unsigned char* (*) [15], int, int)
_Z22CubeMap_BlendFaceEdgesPA15_Phii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	cmp dword [ebp+0x10], 0x1
	jz _Z22CubeMap_BlendFaceEdgesPA15_Phii_10
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
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
	call _Z21Image_BlendCubeCornerPhS_S_i9CubeCoordS0_S0_S0_S0_S0_
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x90]
	mov edx, [eax+ebx*4]
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+ebx*4]
	mov [ebp-0x9c], ecx
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_20
	mov dword [ebp-0x7c], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	lea edi, [eax+edx-0x4]
	mov dword [ebp-0xcc], 0x0
	mov [ebp-0xc8], eax
_Z22CubeMap_BlendFaceEdgesPA15_Phii_50:
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
	jz _Z22CubeMap_BlendFaceEdgesPA15_Phii_30
_Z22CubeMap_BlendFaceEdgesPA15_Phii_40:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_40
_Z22CubeMap_BlendFaceEdgesPA15_Phii_30:
	add dword [ebp-0x7c], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xcc], edx
	add edi, [ebp-0xc8]
	mov ecx, [ebp-0x7c]
	cmp edx, ecx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_50
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x9c], ebx
	mov edx, [ebp+0xc]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_420:
	mov ecx, [ebp-0x88]
	mov edx, [ecx+edx*4]
	mov [ebp-0x70], edx
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_60
	mov dword [ebp-0x74], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov ecx, [ebp-0x9c]
	lea edi, [eax+ecx-0x4]
	mov dword [ebp-0xc4], 0x0
	mov [ebp-0xc0], eax
_Z22CubeMap_BlendFaceEdgesPA15_Phii_90:
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
	jz _Z22CubeMap_BlendFaceEdgesPA15_Phii_70
_Z22CubeMap_BlendFaceEdgesPA15_Phii_80:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_80
_Z22CubeMap_BlendFaceEdgesPA15_Phii_70:
	add dword [ebp-0x74], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xc4], edx
	add edi, [ebp-0xc0]
	mov ecx, [ebp-0x74]
	cmp edx, ecx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_90
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x9c], ebx
_Z22CubeMap_BlendFaceEdgesPA15_Phii_60:
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x94]
	mov edx, [ebx+ecx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_100
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
_Z22CubeMap_BlendFaceEdgesPA15_Phii_120:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_110:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_110
	add dword [ebp-0x6c], 0x1
	add edi, [ebp-0xbc]
	add dword [ebp-0x1c], 0x4
	mov eax, [ebp-0x6c]
	cmp [ebp+0x10], eax
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_120
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+edx*4]
	mov [ebp-0x9c], edx
	mov ebx, [ebp+0xc]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_490:
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_130
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
_Z22CubeMap_BlendFaceEdgesPA15_Phii_150:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_140:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_140
	add dword [ebp-0x68], 0x1
	add edi, [ebp-0xb8]
	add dword [ebp-0x20], 0x4
	mov eax, [ebp-0x68]
	cmp [ebp+0x10], eax
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_150
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov ebx, [ebp-0x84]
	mov ebx, [ebx+edx*4]
	mov [ebp-0x98], ebx
	mov edi, [ebp+0x10]
	test edi, edi
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_160
_Z22CubeMap_BlendFaceEdgesPA15_Phii_460:
	mov [ebp-0x24], ebx
	mov dword [ebp-0x64], 0x0
	mov edi, eax
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov [ebp-0xb4], eax
_Z22CubeMap_BlendFaceEdgesPA15_Phii_180:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_170:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_170
	add dword [ebp-0x64], 0x1
	add edi, [ebp-0xb4]
	add dword [ebp-0x24], 0x4
	mov edx, [ebp-0x64]
	cmp [ebp+0x10], edx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_180
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x84]
	mov ecx, [ebx+ecx*4]
	mov [ebp-0x98], ecx
	mov eax, [ebp+0xc]
	mov ecx, [ebp-0x8c]
	mov edx, [ecx+eax*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_190
_Z22CubeMap_BlendFaceEdgesPA15_Phii_470:
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
_Z22CubeMap_BlendFaceEdgesPA15_Phii_210:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_200:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_200
	add dword [ebp-0x60], 0x1
	add edi, [ebp-0xb0]
	add dword [ebp-0x28], 0x4
	mov ecx, [ebp-0x60]
	cmp [ebp+0x10], ecx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_210
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x84]
	mov ebx, [eax+ebx*4]
	mov [ebp-0x98], ebx
	mov edx, [ebp+0xc]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_480:
	mov ecx, [ebp-0x90]
	mov edx, [ecx+edx*4]
	mov [ebp-0x54], edx
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_220
	mov dword [ebp-0x58], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	mov ecx, [ebp-0x98]
	lea edi, [eax+ecx-0x4]
	mov dword [ebp-0xac], 0x0
	mov [ebp-0xa8], eax
_Z22CubeMap_BlendFaceEdgesPA15_Phii_250:
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
	jz _Z22CubeMap_BlendFaceEdgesPA15_Phii_230
_Z22CubeMap_BlendFaceEdgesPA15_Phii_240:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_240
_Z22CubeMap_BlendFaceEdgesPA15_Phii_230:
	add dword [ebp-0x58], 0x1
	mov eax, [ebp+0x10]
	add [ebp-0xac], eax
	add edi, [ebp-0xa8]
	mov edx, [ebp-0x58]
	cmp eax, edx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_250
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x84]
	mov ecx, [ebx+ecx*4]
	mov [ebp-0x98], ecx
_Z22CubeMap_BlendFaceEdgesPA15_Phii_220:
	mov eax, [ebp+0xc]
	mov ecx, [ebp-0x88]
	mov edx, [ecx+eax*4]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_260
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp+0x10]
	shl eax, 0x2
	lea edi, [eax+edx-0x4]
	mov dword [ebp-0xa4], 0x0
	mov [ebp-0xa0], eax
_Z22CubeMap_BlendFaceEdgesPA15_Phii_290:
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
	jz _Z22CubeMap_BlendFaceEdgesPA15_Phii_270
_Z22CubeMap_BlendFaceEdgesPA15_Phii_280:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_280
_Z22CubeMap_BlendFaceEdgesPA15_Phii_270:
	add dword [ebp-0x4c], 0x1
	mov edx, [ebp+0x10]
	add [ebp-0xa4], edx
	add edi, [ebp-0xa0]
	mov ecx, [ebp-0x4c]
	cmp edx, ecx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_290
	mov ebx, [ebp+0xc]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_510:
	mov eax, [ebp-0x90]
	mov ecx, [eax+ebx*4]
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_300
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea edi, [ecx+eax*4]
	mov dword [ebp-0x48], 0x0
_Z22CubeMap_BlendFaceEdgesPA15_Phii_320:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_310:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_310
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x2c], 0x4
	add edi, 0x4
	mov ecx, [ebp-0x48]
	cmp [ebp+0x10], ecx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_320
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x8c]
	mov edx, [eax+ebx*4]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_300:
	mov eax, [ebp-0x88]
	mov ecx, [eax+ebx*4]
	mov edi, [ebp+0x10]
	test edi, edi
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_330
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea edx, [edx+eax*4]
	mov [ebp-0x30], edx
	add eax, [ebp+0x10]
	lea edi, [ecx+eax*4-0x4]
	mov dword [ebp-0x44], 0x0
_Z22CubeMap_BlendFaceEdgesPA15_Phii_350:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_340:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_340
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x30], 0x4
	sub edi, 0x4
	mov edx, [ebp-0x44]
	cmp [ebp+0x10], edx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_350
	mov ebx, [ebp+0xc]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_330:
	mov eax, [ebp-0x90]
	mov ecx, [eax+ebx*4]
	mov eax, [ebp-0x94]
	mov edx, [eax+ebx*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_360
	mov eax, [ebp+0x10]
	sub eax, 0x1
	imul eax, [ebp+0x10]
	lea eax, [edx+eax*4]
	mov [ebp-0x34], eax
	mov edi, ecx
	mov dword [ebp-0x40], 0x0
_Z22CubeMap_BlendFaceEdgesPA15_Phii_380:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_370:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_370
	add dword [ebp-0x40], 0x1
	add dword [ebp-0x34], 0x4
	add edi, 0x4
	mov edx, [ebp-0x40]
	cmp [ebp+0x10], edx
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_380
	mov ecx, [ebp+0xc]
	mov ebx, [ebp-0x94]
	mov edx, [ebx+ecx*4]
_Z22CubeMap_BlendFaceEdgesPA15_Phii_500:
	mov ebx, [ebp-0x88]
	mov eax, [ebx+ecx*4]
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle _Z22CubeMap_BlendFaceEdgesPA15_Phii_390
	mov [ebp-0x38], edx
	mov edx, [ebp+0x10]
	lea edi, [eax+edx*4-0x4]
	mov dword [ebp-0x3c], 0x0
_Z22CubeMap_BlendFaceEdgesPA15_Phii_410:
	mov esi, 0x1
_Z22CubeMap_BlendFaceEdgesPA15_Phii_400:
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
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_400
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x38], 0x4
	sub edi, 0x4
	mov eax, [ebp-0x3c]
	cmp [ebp+0x10], eax
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_410
_Z22CubeMap_BlendFaceEdgesPA15_Phii_390:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CubeMap_BlendFaceEdgesPA15_Phii_20:
	mov edx, ebx
	jmp _Z22CubeMap_BlendFaceEdgesPA15_Phii_420
_Z22CubeMap_BlendFaceEdgesPA15_Phii_10:
	xor esi, esi
	pxor xmm3, xmm3
	movss xmm2, dword [_float_6_00000000]
	mov edi, [ebp+0xc]
	shl edi, 0x2
_Z22CubeMap_BlendFaceEdgesPA15_Phii_450:
	mov edx, [ebp+0x8]
	add edx, edi
	movaps xmm1, xmm3
	xor ecx, ecx
_Z22CubeMap_BlendFaceEdgesPA15_Phii_430:
	mov eax, [edx]
	movzx eax, byte [esi+eax]
	cvtsi2ss xmm0, eax
	addss xmm1, xmm0
	add ecx, 0x1
	add edx, 0x3c
	cmp ecx, 0x6
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_430
	divss xmm1, xmm2
	cvttss2si ebx, xmm1
	mov edx, [ebp+0x8]
	add edx, edi
	and ecx, 0xffffff00
_Z22CubeMap_BlendFaceEdgesPA15_Phii_440:
	mov eax, [edx]
	mov [esi+eax], bl
	add ecx, 0x1
	add edx, 0x3c
	cmp ecx, 0x6
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_440
	add esi, 0x1
	cmp esi, 0x4
	jnz _Z22CubeMap_BlendFaceEdgesPA15_Phii_450
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22CubeMap_BlendFaceEdgesPA15_Phii_130:
	mov edx, ebx
	mov ecx, [ebp-0x94]
	mov eax, [ecx+edx*4]
	mov ebx, [ebp-0x84]
	mov ebx, [ebx+edx*4]
	mov [ebp-0x98], ebx
	mov edi, [ebp+0x10]
	test edi, edi
	jg _Z22CubeMap_BlendFaceEdgesPA15_Phii_460
_Z22CubeMap_BlendFaceEdgesPA15_Phii_160:
	mov eax, edx
	mov ecx, [ebp-0x8c]
	mov edx, [ecx+eax*4]
	mov esi, [ebp+0x10]
	test esi, esi
	jg _Z22CubeMap_BlendFaceEdgesPA15_Phii_470
_Z22CubeMap_BlendFaceEdgesPA15_Phii_190:
	mov edx, eax
	jmp _Z22CubeMap_BlendFaceEdgesPA15_Phii_480
_Z22CubeMap_BlendFaceEdgesPA15_Phii_100:
	mov ebx, ecx
	jmp _Z22CubeMap_BlendFaceEdgesPA15_Phii_490
_Z22CubeMap_BlendFaceEdgesPA15_Phii_360:
	mov ecx, ebx
	jmp _Z22CubeMap_BlendFaceEdgesPA15_Phii_500
_Z22CubeMap_BlendFaceEdgesPA15_Phii_260:
	mov ebx, eax
	jmp _Z22CubeMap_BlendFaceEdgesPA15_Phii_510


;CubeMap_CacheHighMipDirs()
_Z24CubeMap_CacheHighMipDirsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cmp byte [cubeMapUtilsGlob+0x48000], 0x0
	jnz _Z24CubeMap_CacheHighMipDirsv_10
	mov byte [cubeMapUtilsGlob+0x48000], 0x1
	mov dword [ebp-0x1c], 0x0
_Z24CubeMap_CacheHighMipDirsv_50:
	xor edi, edi
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*2]
	shl eax, 0xe
	mov [ebp-0x20], eax
	mov ebx, eax
_Z24CubeMap_CacheHighMipDirsv_40:
	xor esi, esi
	add ebx, cubeMapUtilsGlob
_Z24CubeMap_CacheHighMipDirsv_20:
	mov [esp+0x4], ebx
	mov dword [esp], 0x40
	mov ecx, edi
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z16Image_CubeMapDiriiiiPf
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x40
	jnz _Z24CubeMap_CacheHighMipDirsv_20
	add edi, 0x1
	add dword [ebp-0x20], 0x300
	cmp edi, 0x40
	jz _Z24CubeMap_CacheHighMipDirsv_30
	mov ebx, [ebp-0x20]
	jmp _Z24CubeMap_CacheHighMipDirsv_40
_Z24CubeMap_CacheHighMipDirsv_30:
	add dword [ebp-0x1c], 0x1
	cmp dword [ebp-0x1c], 0x6
	jnz _Z24CubeMap_CacheHighMipDirsv_50
_Z24CubeMap_CacheHighMipDirsv_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CubeMap_GenerateMipMap32(unsigned char*, int, unsigned char* (*) [15], int, int)
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0xc]
	sar edi, 1
	cmp edi, 0x20
	ja _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	jmp dword [edi*4+_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_jumptab_0]
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10:
	mov dword [esp], 0x3db2b8c2
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	cmp edi, 0x1
	jz _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_20
	test edi, edi
	jg _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_80:
	mov dword [esp], 0x40490fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_20:
	cmp dword [ebp+0x18], 0x5
	jbe _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_40
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70:
	lea edx, [ebp-0x24]
	mov eax, [ebp+0x14]
	mov [esp], eax
	movaps xmm0, xmm1
	mov ecx, [ebp+0x10]
	mov eax, [ebp+0x8]
	call _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_130:
	mov dword [esp], 0x3db2b8c2
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30:
	mov dword [ebp-0x2c], 0x0
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_60:
	mov eax, [ebp-0x2c]
	imul eax, edi
	mov edx, [ebp+0x8]
	lea ebx, [edx+eax*4]
	xor esi, esi
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_50:
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], edi
	mov ecx, [ebp-0x2c]
	mov edx, esi
	mov eax, [ebp+0x18]
	movss [ebp-0x48], xmm1
	call _Z16Image_CubeMapDiriiiiPf
	mov eax, [ebp+0x14]
	mov [esp], eax
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	mov ecx, [ebp+0x10]
	lea edx, [ebp-0x24]
	mov eax, ebx
	call _Z27Image_CalcCubeMipMapTexel32PhPfPA15_S_if
	add esi, 0x1
	add ebx, 0x4
	cmp edi, esi
	movss xmm1, dword [ebp-0x48]
	jnz _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_50
	add dword [ebp-0x2c], 0x1
	cmp edi, [ebp-0x2c]
	jnz _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_60
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_40:
	mov eax, [ebp+0x18]
	jmp dword [eax*4+_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_jumptab_1]
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_120:
	mov dword [esp], 0x3e449809
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_110:
	mov dword [esp], 0x3ec49809
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_100:
	mov dword [esp], 0x3f490fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_90:
	mov dword [esp], 0x3fc90fdb
	call cosf
	fstp dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x4c]
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_30
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_140:
	mov dword [ebp-0x24], 0x3f800000
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_150:
	mov dword [ebp-0x24], 0xbf800000
	xor eax, eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_160:
	xor eax, eax
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0x3f800000
	mov [ebp-0x1c], eax
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_170:
	xor eax, eax
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0xbf800000
	mov [ebp-0x1c], eax
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_180:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x3f800000
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_190:
	xor eax, eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0xbf800000
	jmp _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_70
	
	
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_jumptab_0:
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_80
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_90
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_100
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_110
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_120
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_10
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_130
_Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_jumptab_1:
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_140
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_150
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_160
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_170
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_180
	dd _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii_190


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

