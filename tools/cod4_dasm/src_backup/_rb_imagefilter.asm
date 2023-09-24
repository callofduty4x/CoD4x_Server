;Imports of rb_imagefilter:
	extern floorf
	extern expf
	extern rgp
	extern tess
	extern gfxCmdBufSourceState
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern gfxCmdBufContext
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z7R_Set2DP20GfxCmdBufSourceState
	extern _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	extern _Z17RB_EndTessSurfacev
	extern gfxRenderTargets
	extern backEnd
	extern vidConfig

;Exports of rb_imagefilter:
	global _Z25RB_GaussianFilterPoints1DfiiiPfS_
	global _Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass
	global _Z14RB_FilterImageP14GfxImageFilter
	global _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass
	global _Z18RB_GlowFilterImagef
	global _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS_


SECTION .text


;RB_GaussianFilterPoints1D(float, int, int, int, float*, float*)
_Z25RB_GaussianFilterPoints1DfiiiPfS_:
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
	jz _Z25RB_GaussianFilterPoints1DfiiiPfS__10
	pxor xmm4, xmm4
	movss [ebp-0x28], xmm4
	mulss xmm1, xmm1
	movss xmm0, dword [_float__0_50000000]
	divss xmm0, xmm1
	movss [ebp-0x20], xmm0
	test edi, edi
	jg _Z25RB_GaussianFilterPoints1DfiiiPfS__20
_Z25RB_GaussianFilterPoints1DfiiiPfS__30:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x3f000000
	mov eax, 0x1
_Z25RB_GaussianFilterPoints1DfiiiPfS__110:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25RB_GaussianFilterPoints1DfiiiPfS__10:
	mov dword [ebp-0x28], 0x3f000000
	mulss xmm1, xmm1
	movss xmm0, dword [_float__0_50000000]
	divss xmm0, xmm1
	movss [ebp-0x20], xmm0
	test edi, edi
	jle _Z25RB_GaussianFilterPoints1DfiiiPfS__30
_Z25RB_GaussianFilterPoints1DfiiiPfS__20:
	xor ebx, ebx
	pxor xmm2, xmm2
	movss [ebp-0x24], xmm2
	mov esi, 0x1
	jmp _Z25RB_GaussianFilterPoints1DfiiiPfS__40
_Z25RB_GaussianFilterPoints1DfiiiPfS__70:
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
	jz _Z25RB_GaussianFilterPoints1DfiiiPfS__50
_Z25RB_GaussianFilterPoints1DfiiiPfS__40:
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
	jnz _Z25RB_GaussianFilterPoints1DfiiiPfS__60
	movss xmm4, dword [ebp-0x28]
	pxor xmm0, xmm0
	ucomiss xmm4, xmm0
	jnz _Z25RB_GaussianFilterPoints1DfiiiPfS__60
	jp _Z25RB_GaussianFilterPoints1DfiiiPfS__60
	mulss xmm3, [_float_0_50000000]
_Z25RB_GaussianFilterPoints1DfiiiPfS__60:
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, xmm3
	lea edx, [esi+esi]
	mov ecx, [ebp+0xc]
	lea eax, [edx+ecx]
	lea ecx, [eax-0x2]
	movss [eax-0x2], xmm0
	pxor xmm4, xmm4
	ucomiss xmm0, xmm4
	jnz _Z25RB_GaussianFilterPoints1DfiiiPfS__70
	jp _Z25RB_GaussianFilterPoints1DfiiiPfS__70
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
	jnz _Z25RB_GaussianFilterPoints1DfiiiPfS__40
_Z25RB_GaussianFilterPoints1DfiiiPfS__50:
	ucomiss xmm0, [_float_0_00100000]
	jbe _Z25RB_GaussianFilterPoints1DfiiiPfS__80
_Z25RB_GaussianFilterPoints1DfiiiPfS__120:
	movss xmm1, dword [_float_0_50000000]
	divss xmm1, dword [ebp-0x24]
	mov eax, edi
	sub eax, 0x1
	js _Z25RB_GaussianFilterPoints1DfiiiPfS__90
	mov edx, [ebp+0xc]
	lea ecx, [edx+eax*4]
	mov eax, edi
	mov edx, edi
	movss xmm2, dword [_float_0_01000000]
	xor ebx, ebx
_Z25RB_GaussianFilterPoints1DfiiiPfS__100:
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	movss [ecx], xmm0
	ucomiss xmm2, xmm0
	cmova eax, edx
	sub ecx, 0x4
	sub edx, 0x1
	cmp ebx, edx
	jnz _Z25RB_GaussianFilterPoints1DfiiiPfS__100
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25RB_GaussianFilterPoints1DfiiiPfS__90:
	mov eax, edi
	jmp _Z25RB_GaussianFilterPoints1DfiiiPfS__110
_Z25RB_GaussianFilterPoints1DfiiiPfS__80:
	jnp _Z25RB_GaussianFilterPoints1DfiiiPfS__30
	jmp _Z25RB_GaussianFilterPoints1DfiiiPfS__120
	nop


;RB_GenerateGaussianFilter2D(float, int, int, int, int, GfxImageFilterPass*)
_Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass:
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
	call _Z25RB_GaussianFilterPoints1DfiiiPfS_
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, 0x2
	mov edx, [ebp+0x8]
	mov eax, ebx
	movss xmm0, dword [ebp-0x44]
	call _Z25RB_GaussianFilterPoints1DfiiiPfS_
	mov dword [ebp-0x40], 0x0
	movss xmm1, dword [_data16_80000000]
	mov eax, [ebp-0x40]
_Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass_20:
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
_Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass_10:
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
	jnz _Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass_10
	mov eax, [ebp-0x40]
	add eax, 0x2
	mov [ebp-0x40], eax
	cmp eax, 0x4
	jnz _Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass_20
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
_Z14RB_FilterImageP14GfxImageFilter:
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
	jnz _Z14RB_FilterImageP14GfxImageFilter_10
_Z14RB_FilterImageP14GfxImageFilter_120:
	mov eax, [ebp-0x2c]
	mov ebx, [eax]
	test ebx, ebx
	jle _Z14RB_FilterImageP14GfxImageFilter_20
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
	mov edx, eax
	add edx, 0x4
	mov [ebp-0x30], edx
	mov edx, [ebp-0x28]
	and edx, 0x1
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jnz _Z14RB_FilterImageP14GfxImageFilter_30
_Z14RB_FilterImageP14GfxImageFilter_80:
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x1304]
	mov ecx, gfxCmdBufSourceState
	mov [ecx+0xc44], eax
	mov ecx, [ebp-0x2c]
	mov eax, [ecx]
	sub eax, 0x1
	cmp [ebp-0x28], eax
	jz _Z14RB_FilterImageP14GfxImageFilter_40
_Z14RB_FilterImageP14GfxImageFilter_90:
	lea ebx, [edx+0x7]
_Z14RB_FilterImageP14GfxImageFilter_100:
	mov [esp+0x4], ebx
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [esp+0x8], ebx
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	mov edx, [ebp-0x30]
	mov eax, [edx+0x14]
	test eax, eax
	jle _Z14RB_FilterImageP14GfxImageFilter_50
	xor edi, edi
	mov esi, gfxCmdBufSourceState
	mov ebx, edx
	add ebx, 0x10
	mov eax, esi
	jmp _Z14RB_FilterImageP14GfxImageFilter_60
_Z14RB_FilterImageP14GfxImageFilter_70:
	mov eax, gfxCmdBufSourceState
_Z14RB_FilterImageP14GfxImageFilter_60:
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
	jg _Z14RB_FilterImageP14GfxImageFilter_70
	mov ecx, edx
_Z14RB_FilterImageP14GfxImageFilter_110:
	cvtsi2ss xmm0, dword [ecx+0xc]
	movss [ebp-0x24], xmm0
	cvtsi2ss xmm0, dword [ecx+0x10]
	movss [ebp-0x20], xmm0
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z7R_Set2DP20GfxCmdBufSourceState
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
	call _Z17RB_DrawStretchPicPK8Materialffffffffm18GfxPrimStatsTarget
	call _Z17RB_EndTessSurfacev
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x30], 0x98
	add dword [ebp-0x1c], 0x98
	mov eax, [ebp-0x28]
	mov ecx, [ebp-0x2c]
	cmp [ecx], eax
	jle _Z14RB_FilterImageP14GfxImageFilter_20
	mov edx, eax
	and edx, 0x1
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz _Z14RB_FilterImageP14GfxImageFilter_80
_Z14RB_FilterImageP14GfxImageFilter_30:
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
	jnz _Z14RB_FilterImageP14GfxImageFilter_90
_Z14RB_FilterImageP14GfxImageFilter_40:
	mov ebx, [ecx+0x1308]
	jmp _Z14RB_FilterImageP14GfxImageFilter_100
_Z14RB_FilterImageP14GfxImageFilter_50:
	mov ecx, [ebp-0x30]
	jmp _Z14RB_FilterImageP14GfxImageFilter_110
_Z14RB_FilterImageP14GfxImageFilter_20:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14RB_FilterImageP14GfxImageFilter_10:
	call _Z17RB_EndTessSurfacev
	jmp _Z14RB_FilterImageP14GfxImageFilter_120


;RB_GenerateGaussianFilterChain(float, float, int, int, int, int, int, GfxImageFilterPass*)
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass:
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
	jz _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_10
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_140:
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	ucomiss xmm1, [_float_1_38956046]
	jbe _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_20
	movss xmm1, dword [_float_1_38956046]
	movss xmm4, dword [_float_1_93087828]
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_110:
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
	call _Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass
	mov dword [ebp-0x70], 0x1
	movss xmm3, dword [ebp-0x98]
	movss xmm2, dword [ebp-0x88]
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_150:
	mov edx, [ebp-0x70]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, [ebp+0x10]
	lea eax, [ecx+eax*8]
	mov [ebp-0x6c], eax
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_100:
	ucomiss xmm2, [_float_0_32950512]
	jae _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_30
	ucomiss xmm3, [_float_0_32950512]
	jb _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_40
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_30:
	movaps xmm0, xmm2
	subss xmm0, xmm3
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_32950512]
	jae _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_50
	jp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_50
	movaps xmm0, xmm2
	addss xmm0, xmm3
	mulss xmm0, [_float_0_50000000]
	ucomiss xmm0, [_float_1_38956046]
	jp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_50
	jbe _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_60
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_50:
	ucomiss xmm2, xmm3
	jbe _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_70
	movss xmm0, dword [_float_6_49775028]
	ucomiss xmm0, xmm2
	jbe _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_80
	movaps xmm0, xmm2
	pxor xmm2, xmm2
	xor esi, esi
	xor eax, eax
	mov ebx, 0x1
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_130:
	mov eax, [ebp+eax*4-0x20]
	lea edx, [ebp-0x60]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	mov ecx, 0x8
	mov edx, eax
	movss [ebp-0x88], xmm2
	movss [ebp-0x98], xmm3
	call _Z25RB_GaussianFilterPoints1DfiiiPfS_
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
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_90:
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
	jnz _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_90
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
	jnz _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_100
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_40:
	mov eax, [ebp-0x70]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_20:
	movaps xmm4, xmm1
	mulss xmm4, xmm1
	jmp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_110
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_70:
	movss xmm0, dword [_float_6_49775028]
	ucomiss xmm0, xmm3
	jb _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_120
	movaps xmm0, xmm3
	pxor xmm3, xmm3
	mov esi, 0x1
	mov eax, 0x1
	xor ebx, ebx
	jmp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_130
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_80:
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	subss xmm0, [_float_42_22076035]
	sqrtss xmm2, xmm0
	movss xmm0, dword [_float_6_49775028]
	xor esi, esi
	xor eax, eax
	mov ebx, 0x1
	jmp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_130
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_120:
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	subss xmm0, [_float_42_22076035]
	sqrtss xmm3, xmm0
	movss xmm0, dword [_float_6_49775028]
	mov esi, 0x1
	mov eax, 0x1
	xor ebx, ebx
	jmp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_130
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_10:
	cmp ecx, edx
	jnz _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_140
	mov dword [ebp-0x70], 0x0
	jmp _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_150
_Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass_60:
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
	call _Z27RB_GenerateGaussianFilter2DfiiiiP18GfxImageFilterPass
	add dword [ebp-0x70], 0x1
	mov eax, [ebp-0x70]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;RB_GlowFilterImage(float)
_Z18RB_GlowFilterImagef:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x1320
	movss xmm2, dword [ebp+0x8]
	pxor xmm3, xmm3
	ucomiss xmm2, xmm3
	jp _Z18RB_GlowFilterImagef_10
	jz _Z18RB_GlowFilterImagef_20
_Z18RB_GlowFilterImagef_10:
	mov ecx, gfxRenderTargets
	mov ebx, [ecx+0xe8]
	test ebx, ebx
	js _Z18RB_GlowFilterImagef_30
	cvtsi2ss xmm1, ebx
	mov edx, [ecx+0x5c]
	test edx, edx
	js _Z18RB_GlowFilterImagef_40
_Z18RB_GlowFilterImagef_90:
	cvtsi2ss xmm0, edx
_Z18RB_GlowFilterImagef_100:
	divss xmm1, xmm0
	mulss xmm1, xmm2
	ucomiss xmm1, xmm3
	jp _Z18RB_GlowFilterImagef_50
	jnz _Z18RB_GlowFilterImagef_50
_Z18RB_GlowFilterImagef_80:
	mov edx, 0x4
_Z18RB_GlowFilterImagef_110:
	mov eax, backEnd
	lea edx, [edx+edx*4]
	mov edx, [ecx+edx*4]
	mov [eax+0x4], edx
	mov dword [eax], 0x1
_Z18RB_GlowFilterImagef_20:
	add esp, 0x1320
	pop ebx
	pop esi
	pop ebp
	ret
_Z18RB_GlowFilterImagef_50:
	movaps xmm0, xmm1
	mulss xmm0, [_float_0_25000000]
	mov esi, vidConfig
	mov edx, [esi+0x4]
	test edx, edx
	js _Z18RB_GlowFilterImagef_60
	cvtsi2ss xmm1, edx
_Z18RB_GlowFilterImagef_120:
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
	call _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass
	add eax, 0x1
	mov [ebp-0x1314], eax
	test eax, eax
	jnz _Z18RB_GlowFilterImagef_70
	mov ecx, gfxRenderTargets
	jmp _Z18RB_GlowFilterImagef_80
_Z18RB_GlowFilterImagef_30:
	mov eax, ebx
	shr eax, 1
	mov edx, ebx
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	mov edx, [ecx+0x5c]
	test edx, edx
	jns _Z18RB_GlowFilterImagef_90
_Z18RB_GlowFilterImagef_40:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z18RB_GlowFilterImagef_100
_Z18RB_GlowFilterImagef_70:
	mov eax, esi
	call _Z14RB_FilterImageP14GfxImageFilter
	mov edx, 0xb
	mov ecx, gfxRenderTargets
	jmp _Z18RB_GlowFilterImagef_110
_Z18RB_GlowFilterImagef_60:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, xmm1
	jmp _Z18RB_GlowFilterImagef_120


;RB_GaussianFilterImage(float, GfxRenderTargetId, GfxRenderTargetId)
_Z22RB_GaussianFilterImagef17GfxRenderTargetIdS_:
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
	js _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS__10
	cvtsi2ss xmm0, edx
_Z22RB_GaussianFilterImagef17GfxRenderTargetIdS__20:
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
	call _Z30RB_GenerateGaussianFilterChainffiiiiiP18GfxImageFilterPass
	mov [ebp-0x1324], eax
	mov eax, esi
	call _Z14RB_FilterImageP14GfxImageFilter
	add esp, 0x132c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22RB_GaussianFilterImagef17GfxRenderTargetIdS__10:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp _Z22RB_GaussianFilterImagef17GfxRenderTargetIdS__20
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

