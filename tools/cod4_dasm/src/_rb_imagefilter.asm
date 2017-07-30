;Imports of rb_imagefilter:
	extern floorf
	extern expf
	extern rgp
	extern tess
	extern gfxCmdBufSourceState
	extern R_SetRenderTargetSize
	extern gfxCmdBufContext
	extern R_SetRenderTarget
	extern R_Set2D
	extern RB_DrawStretchPic
	extern RB_EndTessSurface
	extern gfxRenderTargets
	extern backEnd
	extern vidConfig

;Exports of rb_imagefilter:
	global RB_GaussianFilterPoints1D
	global RB_GenerateGaussianFilter2D
	global RB_FilterImage
	global RB_GenerateGaussianFilterChain
	global RB_GlowFilterImage
	global RB_GaussianFilterImage


SECTION .text


;RB_GaussianFilterPoints1D(float, int, int, int, float*, float*)
RB_GaussianFilterPoints1D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	movaps xmm1, xmm0
	mov edi, ecx
	cvtsi2ss xmm0, eax
	movss [ebp-0x2c], xmm0
	cvtsi2ss xmm0, edx
	movss xmm2, dword [ebp-0x2c]
	divss xmm2, xmm0
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	test al, 0x1
	movss xmm1, dword [ebp-0x48]
	jz RB_GaussianFilterPoints1D_10
	pxor xmm4, xmm4
	movss [ebp-0x28], xmm4
	mulss xmm1, xmm1
	movss xmm0, dword [_float__0_50000000]
	divss xmm0, xmm1
	movss [ebp-0x20], xmm0
	test edi, edi
	jg RB_GaussianFilterPoints1D_20
RB_GaussianFilterPoints1D_30:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x3f000000
	mov eax, 0x1
RB_GaussianFilterPoints1D_110:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_GaussianFilterPoints1D_10:
	mov dword [ebp-0x28], 0x3f000000
	mulss xmm1, xmm1
	movss xmm0, dword [_float__0_50000000]
	divss xmm0, xmm1
	movss [ebp-0x20], xmm0
	test edi, edi
	jle RB_GaussianFilterPoints1D_30
RB_GaussianFilterPoints1D_20:
	xor ebx, ebx
	pxor xmm2, xmm2
	movss [ebp-0x24], xmm2
	mov esi, 0x1
	jmp RB_GaussianFilterPoints1D_40
RB_GaussianFilterPoints1D_70:
	mulss xmm1, xmm3
	mulss xmm2, [ebp-0x1c]
	addss xmm1, xmm2
	mulss xmm0, [ebp-0x2c]
	divss xmm1, xmm0
	mov eax, [ebp+0x8]
	movss [edx+eax-0x2], xmm1
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ecx]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	add esi, 0x2
	cmp edi, ebx
	jz RB_GaussianFilterPoints1D_50
RB_GaussianFilterPoints1D_40:
	lea eax, [ebx+ebx]
	cvtsi2ss xmm1, eax
	addss xmm1, [ebp-0x28]
	cvtsi2ss xmm2, esi
	addss xmm2, [ebp-0x28]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm1
	mulss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	movss [ebp-0x58], xmm2
	call expf
	fstp dword [ebp-0x6c]
	movss xmm3, dword [ebp-0x6c]
	movss xmm2, dword [ebp-0x58]
	movss xmm0, dword [ebp-0x20]
	mulss xmm0, xmm2
	mulss xmm0, xmm2
	movss [esp], xmm0
	movss [ebp-0x68], xmm3
	call expf
	fstp dword [ebp-0x1c]
	test ebx, ebx
	movss xmm1, dword [ebp-0x48]
	movss xmm2, dword [ebp-0x58]
	movss xmm3, dword [ebp-0x68]
	jnz RB_GaussianFilterPoints1D_60
	movss xmm4, dword [ebp-0x28]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jnz RB_GaussianFilterPoints1D_60
	jp RB_GaussianFilterPoints1D_60
	mulss xmm3, [_float_0_50000000]
RB_GaussianFilterPoints1D_60:
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm3
	lea edx, [esi+esi]
	mov ecx, [ebp+0xc]
	lea eax, [edx+ecx]
	lea ecx, [eax-0x2]
	movss [eax-0x2], xmm0
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jnz RB_GaussianFilterPoints1D_70
	jp RB_GaussianFilterPoints1D_70
	addss xmm1, xmm2
	mulss xmm1, [_float_0_50000000]
	divss xmm1, dword [ebp-0x2c]
	mov eax, [ebp+0x8]
	movss [edx+eax-0x2], xmm1
	movss xmm0, dword [ebp-0x24]
	addss xmm0, [ecx]
	movss [ebp-0x24], xmm0
	add ebx, 0x1
	add esi, 0x2
	cmp edi, ebx
	jnz RB_GaussianFilterPoints1D_40
RB_GaussianFilterPoints1D_50:
	ucomiss xmm0, [_float_0_00100000]
	jbe RB_GaussianFilterPoints1D_80
RB_GaussianFilterPoints1D_120:
	movss xmm1, dword [_float_0_50000000]
	divss xmm1, dword [ebp-0x24]
	mov eax, edi
	sub eax, 0x1
	js RB_GaussianFilterPoints1D_90
	mov edx, [ebp+0xc]
	lea ecx, [edx+eax*4]
	mov eax, edi
	mov edx, edi
	movss xmm2, dword [_float_0_01000000]
	xor ebx, ebx
RB_GaussianFilterPoints1D_100:
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	movss [ecx], xmm0
	ucomiss xmm2, xmm0
	cmova eax, edx
	sub ecx, 0x4
	sub edx, 0x1
	cmp ebx, edx
	jnz RB_GaussianFilterPoints1D_100
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_GaussianFilterPoints1D_90:
	mov eax, edi
	jmp RB_GaussianFilterPoints1D_110
RB_GaussianFilterPoints1D_80:
	jnp RB_GaussianFilterPoints1D_30
	jmp RB_GaussianFilterPoints1D_120
	nop


;RB_GenerateGaussianFilter2D(float, int, int, int, int, GfxImageFilterPass*)
RB_GenerateGaussianFilter2D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movss [ebp-0x44], xmm0
	mov ebx, edx
	mov [ebp-0x48], ecx
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	mov ecx, 0x2
	mov edx, [ebp-0x48]
	call RB_GaussianFilterPoints1D
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, 0x2
	mov edx, [ebp+0x8]
	mov eax, ebx
	movss xmm0, dword [ebp-0x44]
	call RB_GaussianFilterPoints1D
	mov dword [ebp-0x40], 0x0
	movss xmm1, dword [_data16_80000000]
	mov eax, [ebp-0x40]
RB_GenerateGaussianFilter2D_20:
	shl eax, 0x5
	mov ecx, [ebp+0xc]
	lea ebx, [eax+ecx+0x18]
	mov esi, 0x1
	mov eax, [ebp-0x40]
	add eax, eax
	lea edx, [ebp-0x28]
	add edx, eax
	mov [ebp-0x3c], edx
	lea edi, [ebp-0x38]
	add edi, eax
RB_GenerateGaussianFilter2D_10:
	lea edx, [esi*4]
	lea ecx, [ebp-0x20]
	add ecx, edx
	movss xmm0, dword [ecx-0x4]
	xorps xmm0, xmm1
	movss [ebx], xmm0
	mov eax, [ebp-0x3c]
	movss xmm0, dword [eax]
	movss [ebx+0x4], xmm0
	mov dword [ebx+0x8], 0x0
	lea eax, [ebp-0x30]
	lea edx, [eax+edx]
	movss xmm0, dword [edx-0x4]
	mulss xmm0, [edi]
	movss [ebx+0xc], xmm0
	mov eax, [ecx-0x4]
	mov [ebx+0x10], eax
	mov ecx, [ebp-0x3c]
	mov eax, [ecx]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0x0
	movss xmm0, dword [edx-0x4]
	mulss xmm0, [edi]
	movss [ebx+0x1c], xmm0
	add esi, 0x1
	add ebx, 0x20
	cmp esi, 0x3
	jnz RB_GenerateGaussianFilter2D_10
	mov eax, [ebp-0x40]
	add eax, 0x2
	mov [ebp-0x40], eax
	cmp eax, 0x4
	jnz RB_GenerateGaussianFilter2D_20
	mov eax, rgp
	mov eax, [eax+0x20ec]
	mov edx, [ebp+0xc]
	mov [edx], eax
	mov dword [edx+0x14], 0x8
	mov eax, 0x3f800000
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov ecx, [ebp-0x48]
	mov [edx+0xc], ecx
	mov eax, [ebp+0x8]
	mov [edx+0x10], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_FilterImage(GfxImageFilter*)
RB_FilterImage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x2c], eax
	mov eax, tess
	mov esi, [eax+0x22a948]
	test esi, esi
	jnz RB_FilterImage_10
RB_FilterImage_120:
	mov eax, [ebp-0x2c]
	mov ebx, [eax]
	test ebx, ebx
	jle RB_FilterImage_20
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
	mov edx, eax
	add edx, 0x4
	mov [ebp-0x30], edx
	mov edx, [ebp-0x28]
	and edx, 0x1
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jnz RB_FilterImage_30
RB_FilterImage_80:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x1304]
	mov ecx, gfxCmdBufSourceState
	mov [ecx+0xc44], eax
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	sub eax, 0x1
	cmp [ebp-0x28], eax
	jz RB_FilterImage_40
RB_FilterImage_90:
	lea ebx, [edx+0x7]
RB_FilterImage_100:
	mov [esp+0x4], ebx
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], ebx
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov edx, [ebp-0x30]
	mov eax, [edx+0x14]
	test eax, eax
	jle RB_FilterImage_50
	xor edi, edi
	mov esi, gfxCmdBufSourceState
	mov ebx, edx
	add ebx, 0x10
	mov eax, esi
	jmp RB_FilterImage_60
RB_FilterImage_70:
	mov eax, gfxCmdBufSourceState
RB_FilterImage_60:
	mov edx, edi
	shl edx, 0x4
	lea ecx, [ebx+0x8]
	lea edx, [edx+eax+0x9d0]
	mov eax, [ebx+0x8]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	add word [esi+0xe5a], 0x1
	add edi, 0x1
	add ebx, 0x10
	add esi, 0x2
	mov edx, [ebp-0x30]
	cmp [edx+0x14], edi
	jg RB_FilterImage_70
	mov ecx, edx
RB_FilterImage_110:
	cvtsi2ss xmm0, dword [ecx+0xc]
	movss [ebp-0x24], xmm0
	cvtsi2ss xmm0, dword [ecx+0x10]
	movss [ebp-0x20], xmm0
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_Set2D
	mov dword [esp+0x28], 0x9
	mov dword [esp+0x24], 0xffffffff
	mov edx, [ebp-0x30]
	mov eax, [edx+0x8]
	mov [esp+0x20], eax
	mov eax, [edx+0x4]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp-0x24]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	mov [esp], eax
	call RB_DrawStretchPic
	call RB_EndTessSurface
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x30], 0x98
	add dword [ebp-0x1c], 0x98
	mov eax, [ebp-0x28]
	mov ecx, [ebp-0x2c]
	cmp [ecx], eax
	jle RB_FilterImage_20
	mov edx, eax
	and edx, 0x1
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz RB_FilterImage_80
RB_FilterImage_30:
	mov eax, 0x8
	sub eax, edx
	lea eax, [eax+eax*4]
	mov ecx, gfxRenderTargets
	mov eax, [ecx+eax*4]
	mov ecx, gfxCmdBufSourceState
	mov [ecx+0xc44], eax
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	sub eax, 0x1
	cmp [ebp-0x28], eax
	jnz RB_FilterImage_90
RB_FilterImage_40:
	mov ebx, [ecx+0x1308]
	jmp RB_FilterImage_100
RB_FilterImage_50:
	mov ecx, [ebp-0x30]
	jmp RB_FilterImage_110
RB_FilterImage_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_FilterImage_10:
	call RB_EndTessSurface
	jmp RB_FilterImage_120


;RB_GenerateGaussianFilterChain(float, float, int, int, int, int, int, GfxImageFilterPass*)
RB_GenerateGaussianFilterChain:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	movaps xmm2, xmm0
	movaps xmm3, xmm1
	mov [ebp-0x74], ecx
	mov [ebp-0x20], ecx
	mov ecx, [ebp+0x8]
	mov [ebp-0x1c], ecx
	cmp [ebp-0x74], eax
	jz RB_GenerateGaussianFilterChain_10
RB_GenerateGaussianFilterChain_140:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	ucomiss xmm1, [_float_1_38956046]
	jbe RB_GenerateGaussianFilterChain_20
	movss xmm1, dword [_float_1_38956046]
	movss xmm4, dword [_float_1_93087828]
RB_GenerateGaussianFilterChain_110:
	mulss xmm2, xmm2
	subss xmm2, xmm4
	sqrtss xmm2, xmm2
	cvtsi2ss xmm0, dword [ebp-0x74]
	mulss xmm2, xmm0
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	mulss xmm3, xmm3
	subss xmm3, xmm4
	sqrtss xmm3, xmm3
	cvtsi2ss xmm0, dword [ebp+0x8]
	mulss xmm3, xmm0
	cvtsi2ss xmm0, edx
	divss xmm3, xmm0
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, [ebp-0x74]
	movaps xmm0, xmm1
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call RB_GenerateGaussianFilter2D
	mov dword [ebp-0x70], 0x1
	movss xmm3, dword [ebp-0x98]
	movss xmm2, dword [ebp-0x88]
RB_GenerateGaussianFilterChain_150:
	mov edx, [ebp-0x70]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, [ebp+0x10]
	lea eax, [ecx+eax*8]
	mov [ebp-0x6c], eax
RB_GenerateGaussianFilterChain_100:
	ucomiss xmm2, [_float_0_32950512]
	jae RB_GenerateGaussianFilterChain_30
	ucomiss xmm3, [_float_0_32950512]
	jb RB_GenerateGaussianFilterChain_40
RB_GenerateGaussianFilterChain_30:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_32950512]
	jae RB_GenerateGaussianFilterChain_50
	jp RB_GenerateGaussianFilterChain_50
	movaps xmm0, xmm2
	addss xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, [_float_1_38956046]
	jp RB_GenerateGaussianFilterChain_50
	jbe RB_GenerateGaussianFilterChain_60
RB_GenerateGaussianFilterChain_50:
	ucomiss xmm2, xmm3
	jbe RB_GenerateGaussianFilterChain_70
	movss xmm0, dword [_float_6_49775028]
	ucomiss xmm0, xmm2
	jbe RB_GenerateGaussianFilterChain_80
	movaps xmm0, xmm2
	pxor xmm2, xmm2
	xor esi, esi
	xor eax, eax
	mov ebx, 0x1
RB_GenerateGaussianFilterChain_130:
	mov eax, [ebp+eax*4-0x20]
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	mov ecx, 0x8
	mov edx, eax
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call RB_GaussianFilterPoints1D
	mov edx, rgp
	mov edx, [edx+eax*4+0x20cc]
	mov ecx, [ebp-0x6c]
	mov [ecx], edx
	mov [ecx+0x14], eax
	lea esi, [ecx+esi*4+0x18]
	lea ebx, [ecx+ebx*4+0x18]
	mov ecx, [ebp-0x6c]
	mov edi, 0x1
	movss xmm3, dword [ebp-0x98]
	movss xmm2, dword [ebp-0x88]
RB_GenerateGaussianFilterChain_90:
	lea eax, [edi*4]
	mov edx, [ebp+eax-0x44]
	mov [esi], edx
	mov dword [ebx], 0x0
	mov dword [ecx+0x20], 0x0
	mov eax, [ebp+eax-0x64]
	mov [ecx+0x24], eax
	add edi, 0x1
	add esi, 0x10
	add ebx, 0x10
	add ecx, 0x10
	cmp edi, 0x9
	jnz RB_GenerateGaussianFilterChain_90
	mov eax, 0x3f800000
	mov edx, [ebp-0x6c]
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov eax, [ebp-0x20]
	mov [edx+0xc], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x10], eax
	add dword [ebp-0x70], 0x1
	add edx, 0x98
	mov [ebp-0x6c], edx
	cmp dword [ebp-0x70], 0x20
	jnz RB_GenerateGaussianFilterChain_100
RB_GenerateGaussianFilterChain_40:
	mov eax, [ebp-0x70]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_GenerateGaussianFilterChain_20:
	movaps xmm4, xmm1
	mulss xmm4, xmm1
	jmp RB_GenerateGaussianFilterChain_110
RB_GenerateGaussianFilterChain_70:
	movss xmm0, dword [_float_6_49775028]
	ucomiss xmm0, xmm3
	jb RB_GenerateGaussianFilterChain_120
	movaps xmm0, xmm3
	pxor xmm3, xmm3
	mov esi, 0x1
	mov eax, 0x1
	xor ebx, ebx
	jmp RB_GenerateGaussianFilterChain_130
RB_GenerateGaussianFilterChain_80:
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	subss xmm0, [_float_42_22076035]
	sqrtss xmm2, xmm0
	movss xmm0, dword [_float_6_49775028]
	xor esi, esi
	xor eax, eax
	mov ebx, 0x1
	jmp RB_GenerateGaussianFilterChain_130
RB_GenerateGaussianFilterChain_120:
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	subss xmm0, [_float_42_22076035]
	sqrtss xmm3, xmm0
	movss xmm0, dword [_float_6_49775028]
	mov esi, 0x1
	mov eax, 0x1
	xor ebx, ebx
	jmp RB_GenerateGaussianFilterChain_130
RB_GenerateGaussianFilterChain_10:
	cmp ecx, edx
	jnz RB_GenerateGaussianFilterChain_140
	mov dword [ebp-0x70], 0x0
	jmp RB_GenerateGaussianFilterChain_150
RB_GenerateGaussianFilterChain_60:
	mov edx, [ebp-0x70]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, [ebp+0x10]
	lea eax, [ecx+eax*8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov ecx, [ebp-0x74]
	mov edx, eax
	mov eax, ecx
	call RB_GenerateGaussianFilter2D
	add dword [ebp-0x70], 0x1
	mov eax, [ebp-0x70]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_GlowFilterImage(float)
RB_GlowFilterImage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1320
	movss xmm2, dword [ebp+0x8]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jp RB_GlowFilterImage_10
	jz RB_GlowFilterImage_20
RB_GlowFilterImage_10:
	mov ecx, gfxRenderTargets
	mov ebx, [ecx+0xe8]
	test ebx, ebx
	js RB_GlowFilterImage_30
	cvtsi2ss xmm1, ebx
	mov edx, [ecx+0x5c]
	test edx, edx
	js RB_GlowFilterImage_40
RB_GlowFilterImage_90:
	cvtsi2ss xmm0, edx
RB_GlowFilterImage_100:
	divss xmm1, xmm0
	mulss xmm1, xmm2
	ucomiss xmm1, xmm3
	jp RB_GlowFilterImage_50
	jnz RB_GlowFilterImage_50
RB_GlowFilterImage_80:
	mov edx, 0x4
RB_GlowFilterImage_110:
	mov eax, backEnd
	lea edx, [edx+edx*4]
	mov edx, [ecx+edx*4]
	mov [eax+0x4], edx
	mov dword [eax], 0x1
RB_GlowFilterImage_20:
	add esp, 0x1320
	pop ebx
	pop esi
	pop ebp
	ret
RB_GlowFilterImage_50:
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_25000000]
	mov esi, vidConfig
	mov edx, [esi+0x4]
	test edx, edx
	js RB_GlowFilterImage_60
	cvtsi2ss xmm1, edx
RB_GlowFilterImage_120:
	mulss xmm1, xmm0
	divss xmm1, dword [_float_480_00000000]
	movaps xmm0, xmm1
	mulss xmm0, [esi+0x1c]
	mov edx, [ecx+0xec]
	mov eax, [ecx+0x50]
	mov [ebp-0x10], eax
	mov dword [ebp-0xc], 0xb
	mov eax, 0x3f800000
	mov [ebp-0x130c], eax
	mov [ebp-0x1308], eax
	mov [ebp-0x1304], ebx
	mov [ebp-0x1300], edx
	mov dword [ebp-0x12fc], 0x0
	mov eax, rgp
	mov eax, [eax+0x20f8]
	mov [ebp-0x1310], eax
	mov dword [ebp-0x1314], 0x1
	lea esi, [ebp-0x1314]
	lea eax, [ebp-0x1278]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1f
	mov [esp], edx
	mov ecx, ebx
	mov eax, ebx
	call RB_GenerateGaussianFilterChain
	add eax, 0x1
	mov [ebp-0x1314], eax
	test eax, eax
	jnz RB_GlowFilterImage_70
	mov ecx, gfxRenderTargets
	jmp RB_GlowFilterImage_80
RB_GlowFilterImage_30:
	mov eax, ebx
	shr eax, 1
	mov edx, ebx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	mov edx, [ecx+0x5c]
	test edx, edx
	jns RB_GlowFilterImage_90
RB_GlowFilterImage_40:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp RB_GlowFilterImage_100
RB_GlowFilterImage_70:
	mov eax, esi
	call RB_FilterImage
	mov edx, 0xb
	mov ecx, gfxRenderTargets
	jmp RB_GlowFilterImage_110
RB_GlowFilterImage_60:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp RB_GlowFilterImage_120


;RB_GaussianFilterImage(float, GfxRenderTargetId, GfxRenderTargetId)
RB_GaussianFilterImage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x132c
	mov ebx, [ebp+0xc]
	mov ecx, vidConfig
	mov edx, [ecx+0x4]
	test edx, edx
	js RB_GaussianFilterImage_10
	cvtsi2ss xmm0, edx
RB_GaussianFilterImage_20:
	movss xmm1, dword [ebp+0x8]
	mulss xmm1, xmm0
	divss xmm1, dword [_float_480_00000000]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x1c]
	mov ecx, gfxRenderTargets
	lea esi, [ebx+ebx*4]
	lea esi, [ecx+esi*4]
	mov eax, [esi+0xc]
	mov edx, [esi+0x10]
	mov edi, [ebp+0x10]
	lea ebx, [edi+edi*4]
	lea ebx, [ecx+ebx*4]
	mov ecx, [ebx+0xc]
	mov edi, [ebx+0x10]
	mov ebx, [esi]
	mov [ebp-0x20], ebx
	mov ebx, [ebp+0x10]
	mov [ebp-0x1c], ebx
	lea esi, [ebp-0x1324]
	lea ebx, [ebp-0x1320]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x20
	mov [esp], edi
	call RB_GenerateGaussianFilterChain
	mov [ebp-0x1324], eax
	mov eax, esi
	call RB_FilterImage
	add esp, 0x132c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_GaussianFilterImage_10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp RB_GaussianFilterImage_20
	add [eax], al


;Initialized global or static variables of rb_imagefilter:
SECTION .data


;Initialized constant data of rb_imagefilter:
SECTION .rdata


;Zero initialized global or static variables of rb_imagefilter:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_00100000:		dd 0x3a83126f	; 0.001
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_1_38956046:		dd 0x3fb1dd1e	; 1.38956
_float_1_93087828:		dd 0x3ff72705	; 1.93088
_float_0_32950512:		dd 0x3ea8b4e5	; 0.329505
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_6_49775028:		dd 0x40cfed92	; 6.49775
_float_42_22076035:		dd 0x4228e20f	; 42.2208
_float_0_25000000:		dd 0x3e800000	; 0.25
_float_480_00000000:		dd 0x43f00000	; 480

