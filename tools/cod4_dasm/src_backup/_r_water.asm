;Imports of r_water:
	extern sin
	extern FFT_Init
	extern r_picmip_water
	extern _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
	extern _Z26R_DownsampleMipMapBilinearPKhiiiPh
	extern FFT

;Exports of r_water:
	global _GLOBAL__I__Z28R_UploadWaterTextureInternalPv
	global waterGlobStatic
	global waterGlob
	global _Z11R_InitWaterv
	global _Z16Load_PicmipWaterPP7water_t
	global _Z20R_UploadWaterTextureP7water_tf
	global _Z28R_UploadWaterTextureInternalPv


SECTION .text


;global constructors keyed to R_UploadWaterTextureInternal(void*)
_GLOBAL__I__Z28R_UploadWaterTextureInternalPv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov eax, [g_fltMin__uint4]
	mov [g_fltMin], eax
	mov eax, [g_fltMin__uint4+0x4]
	mov [g_fltMin+0x4], eax
	mov eax, [g_fltMin__uint4+0x8]
	mov [g_fltMin+0x8], eax
	mov eax, [g_fltMin__uint4+0xc]
	mov [g_fltMin+0xc], eax
	mov eax, [g_negativeZero__uint4]
	mov [g_negativeZero], eax
	mov eax, [g_negativeZero__uint4+0x4]
	mov [g_negativeZero+0x4], eax
	mov eax, [g_negativeZero__uint4+0x8]
	mov [g_negativeZero+0x8], eax
	mov eax, [g_negativeZero__uint4+0xc]
	mov [g_negativeZero+0xc], eax
	mov eax, [g_inc__uint4]
	mov [g_inc], eax
	mov eax, [g_inc__uint4+0x4]
	mov [g_inc+0x4], eax
	mov eax, [g_inc__uint4+0x8]
	mov [g_inc+0x8], eax
	mov eax, [g_inc__uint4+0xc]
	mov [g_inc+0xc], eax
	mov eax, [g_swizzleXYZW__uint4]
	mov [g_swizzleXYZW], eax
	mov eax, [g_swizzleXYZW__uint4+0x4]
	mov [g_swizzleXYZW+0x4], eax
	mov eax, [g_swizzleXYZW__uint4+0x8]
	mov [g_swizzleXYZW+0x8], eax
	mov eax, [g_swizzleXYZW__uint4+0xc]
	mov [g_swizzleXYZW+0xc], eax
	mov eax, [g_swizzleYXZW__uint4]
	mov [g_swizzleYXZW], eax
	mov eax, [g_swizzleYXZW__uint4+0x4]
	mov [g_swizzleYXZW+0x4], eax
	mov eax, [g_swizzleYXZW__uint4+0x8]
	mov [g_swizzleYXZW+0x8], eax
	mov eax, [g_swizzleYXZW__uint4+0xc]
	mov [g_swizzleYXZW+0xc], eax
	mov eax, [g_swizzleXZYW__uint4]
	mov [g_swizzleXZYW], eax
	mov eax, [g_swizzleXZYW__uint4+0x4]
	mov [g_swizzleXZYW+0x4], eax
	mov eax, [g_swizzleXZYW__uint4+0x8]
	mov [g_swizzleXZYW+0x8], eax
	mov eax, [g_swizzleXZYW__uint4+0xc]
	mov [g_swizzleXZYW+0xc], eax
	mov eax, [g_swizzleYXWZ__uint4]
	mov [g_swizzleYXWZ], eax
	mov eax, [g_swizzleYXWZ__uint4+0x4]
	mov [g_swizzleYXWZ+0x4], eax
	mov eax, [g_swizzleYXWZ__uint4+0x8]
	mov [g_swizzleYXWZ+0x8], eax
	mov eax, [g_swizzleYXWZ__uint4+0xc]
	mov [g_swizzleYXWZ+0xc], eax
	mov eax, [g_swizzleXAZC__uint4]
	mov [g_swizzleXAZC], eax
	mov eax, [g_swizzleXAZC__uint4+0x4]
	mov [g_swizzleXAZC+0x4], eax
	mov eax, [g_swizzleXAZC__uint4+0x8]
	mov [g_swizzleXAZC+0x8], eax
	mov eax, [g_swizzleXAZC__uint4+0xc]
	mov [g_swizzleXAZC+0xc], eax
	mov eax, [g_swizzleYBWD__uint4]
	mov [g_swizzleYBWD], eax
	mov eax, [g_swizzleYBWD__uint4+0x4]
	mov [g_swizzleYBWD+0x4], eax
	mov eax, [g_swizzleYBWD__uint4+0x8]
	mov [g_swizzleYBWD+0x8], eax
	mov eax, [g_swizzleYBWD__uint4+0xc]
	mov [g_swizzleYBWD+0xc], eax
	mov eax, [g_swizzleXYAB__uint4]
	mov [g_swizzleXYAB], eax
	mov eax, [g_swizzleXYAB__uint4+0x4]
	mov [g_swizzleXYAB+0x4], eax
	mov eax, [g_swizzleXYAB__uint4+0x8]
	mov [g_swizzleXYAB+0x8], eax
	mov eax, [g_swizzleXYAB__uint4+0xc]
	mov [g_swizzleXYAB+0xc], eax
	mov eax, [g_swizzleZWCD__uint4]
	mov [g_swizzleZWCD], eax
	mov eax, [g_swizzleZWCD__uint4+0x4]
	mov [g_swizzleZWCD+0x4], eax
	mov eax, [g_swizzleZWCD__uint4+0x8]
	mov [g_swizzleZWCD+0x8], eax
	mov eax, [g_swizzleZWCD__uint4+0xc]
	mov [g_swizzleZWCD+0xc], eax
	mov eax, [g_swizzleXYZA__uint4]
	mov [g_swizzleXYZA], eax
	mov eax, [g_swizzleXYZA__uint4+0x4]
	mov [g_swizzleXYZA+0x4], eax
	mov eax, [g_swizzleXYZA__uint4+0x8]
	mov [g_swizzleXYZA+0x8], eax
	mov eax, [g_swizzleXYZA__uint4+0xc]
	mov [g_swizzleXYZA+0xc], eax
	mov eax, [g_swizzleYZXW__uint4]
	mov [g_swizzleYZXW], eax
	mov eax, [g_swizzleYZXW__uint4+0x4]
	mov [g_swizzleYZXW+0x4], eax
	mov eax, [g_swizzleYZXW__uint4+0x8]
	mov [g_swizzleYZXW+0x8], eax
	mov eax, [g_swizzleYZXW__uint4+0xc]
	mov [g_swizzleYZXW+0xc], eax
	mov eax, [g_swizzleZXYW__uint4]
	mov [g_swizzleZXYW], eax
	mov eax, [g_swizzleZXYW__uint4+0x4]
	mov [g_swizzleZXYW+0x4], eax
	mov eax, [g_swizzleZXYW__uint4+0x8]
	mov [g_swizzleZXYW+0x8], eax
	mov eax, [g_swizzleZXYW__uint4+0xc]
	mov [g_swizzleZXYW+0xc], eax
	mov eax, [g_swizzleWABW__uint4]
	mov [g_swizzleWABW], eax
	mov eax, [g_swizzleWABW__uint4+0x4]
	mov [g_swizzleWABW+0x4], eax
	mov eax, [g_swizzleWABW__uint4+0x8]
	mov [g_swizzleWABW+0x8], eax
	mov eax, [g_swizzleWABW__uint4+0xc]
	mov [g_swizzleWABW+0xc], eax
	mov eax, [g_swizzleZWAW__uint4]
	mov [g_swizzleZWAW], eax
	mov eax, [g_swizzleZWAW__uint4+0x4]
	mov [g_swizzleZWAW+0x4], eax
	mov eax, [g_swizzleZWAW__uint4+0x8]
	mov [g_swizzleZWAW+0x8], eax
	mov eax, [g_swizzleZWAW__uint4+0xc]
	mov [g_swizzleZWAW+0xc], eax
	mov eax, [g_swizzleYZWA__uint4]
	mov [g_swizzleYZWA], eax
	mov eax, [g_swizzleYZWA__uint4+0x4]
	mov [g_swizzleYZWA+0x4], eax
	mov eax, [g_swizzleYZWA__uint4+0x8]
	mov [g_swizzleYZWA+0x8], eax
	mov eax, [g_swizzleYZWA__uint4+0xc]
	mov [g_swizzleYZWA+0xc], eax
	mov eax, [g_swizzleXXXX__uint4]
	mov [g_swizzleXXXX], eax
	mov eax, [g_swizzleXXXX__uint4+0x4]
	mov [g_swizzleXXXX+0x4], eax
	mov eax, [g_swizzleXXXX__uint4+0x8]
	mov [g_swizzleXXXX+0x8], eax
	mov eax, [g_swizzleXXXX__uint4+0xc]
	mov [g_swizzleXXXX+0xc], eax
	mov eax, [g_swizzleYYYY__uint4]
	mov [g_swizzleYYYY], eax
	mov eax, [g_swizzleYYYY__uint4+0x4]
	mov [g_swizzleYYYY+0x4], eax
	mov eax, [g_swizzleYYYY__uint4+0x8]
	mov [g_swizzleYYYY+0x8], eax
	mov eax, [g_swizzleYYYY__uint4+0xc]
	mov [g_swizzleYYYY+0xc], eax
	mov eax, [g_swizzleZZZZ__uint4]
	mov [g_swizzleZZZZ], eax
	mov eax, [g_swizzleZZZZ__uint4+0x4]
	mov [g_swizzleZZZZ+0x4], eax
	mov eax, [g_swizzleZZZZ__uint4+0x8]
	mov [g_swizzleZZZZ+0x8], eax
	mov eax, [g_swizzleZZZZ__uint4+0xc]
	mov [g_swizzleZZZZ+0xc], eax
	mov eax, [g_swizzleWWWW__uint4]
	mov [g_swizzleWWWW], eax
	mov eax, [g_swizzleWWWW__uint4+0x4]
	mov [g_swizzleWWWW+0x4], eax
	mov eax, [g_swizzleWWWW__uint4+0x8]
	mov [g_swizzleWWWW+0x8], eax
	mov eax, [g_swizzleWWWW__uint4+0xc]
	mov [g_swizzleWWWW+0xc], eax
	mov eax, [g_selectX__uint4]
	mov [g_selectX], eax
	mov eax, [g_selectX__uint4+0x4]
	mov [g_selectX+0x4], eax
	mov eax, [g_selectX__uint4+0x8]
	mov [g_selectX+0x8], eax
	mov eax, [g_selectX__uint4+0xc]
	mov [g_selectX+0xc], eax
	mov eax, [g_selectY__uint4]
	mov [g_selectY], eax
	mov eax, [g_selectY__uint4+0x4]
	mov [g_selectY+0x4], eax
	mov eax, [g_selectY__uint4+0x8]
	mov [g_selectY+0x8], eax
	mov eax, [g_selectY__uint4+0xc]
	mov [g_selectY+0xc], eax
	mov eax, [g_selectZ__uint4]
	mov [g_selectZ], eax
	mov eax, [g_selectZ__uint4+0x4]
	mov [g_selectZ+0x4], eax
	mov eax, [g_selectZ__uint4+0x8]
	mov [g_selectZ+0x8], eax
	mov eax, [g_selectZ__uint4+0xc]
	mov [g_selectZ+0xc], eax
	mov eax, [g_selectW__uint4]
	mov [g_selectW], eax
	mov eax, [g_selectW__uint4+0x4]
	mov [g_selectW+0x4], eax
	mov eax, [g_selectW__uint4+0x8]
	mov [g_selectW+0x8], eax
	mov eax, [g_selectW__uint4+0xc]
	mov [g_selectW+0xc], eax
	mov eax, [g_keepYZW__uint4]
	mov [g_keepYZW], eax
	mov eax, [g_keepYZW__uint4+0x4]
	mov [g_keepYZW+0x4], eax
	mov eax, [g_keepYZW__uint4+0x8]
	mov [g_keepYZW+0x8], eax
	mov eax, [g_keepYZW__uint4+0xc]
	mov [g_keepYZW+0xc], eax
	mov eax, [g_keepXZW__uint4]
	mov [g_keepXZW], eax
	mov eax, [g_keepXZW__uint4+0x4]
	mov [g_keepXZW+0x4], eax
	mov eax, [g_keepXZW__uint4+0x8]
	mov [g_keepXZW+0x8], eax
	mov eax, [g_keepXZW__uint4+0xc]
	mov [g_keepXZW+0xc], eax
	mov eax, [g_keepXYW__uint4]
	mov [g_keepXYW], eax
	mov eax, [g_keepXYW__uint4+0x4]
	mov [g_keepXYW+0x4], eax
	mov eax, [g_keepXYW__uint4+0x8]
	mov [g_keepXYW+0x8], eax
	mov eax, [g_keepXYW__uint4+0xc]
	mov [g_keepXYW+0xc], eax
	mov eax, [g_keepXYZ__uint4]
	mov [g_keepXYZ], eax
	mov eax, [g_keepXYZ__uint4+0x4]
	mov [g_keepXYZ+0x4], eax
	mov eax, [g_keepXYZ__uint4+0x8]
	mov [g_keepXYZ+0x8], eax
	mov eax, [g_keepXYZ__uint4+0xc]
	mov [g_keepXYZ+0xc], eax
	mov eax, [g_keepXY__uint4]
	mov [g_keepXY], eax
	mov eax, [g_keepXY__uint4+0x4]
	mov [g_keepXY+0x4], eax
	mov eax, [g_keepXY__uint4+0x8]
	mov [g_keepXY+0x8], eax
	mov eax, [g_keepXY__uint4+0xc]
	mov [g_keepXY+0xc], eax
	mov eax, [g_keepZW__uint4]
	mov [g_keepZW], eax
	mov eax, [g_keepZW__uint4+0x4]
	mov [g_keepZW+0x4], eax
	mov eax, [g_keepZW__uint4+0x8]
	mov [g_keepZW+0x8], eax
	mov eax, [g_keepZW__uint4+0xc]
	mov [g_keepZW+0xc], eax
	mov eax, [g_keepX__uint4]
	mov [g_keepX], eax
	mov eax, [g_keepX__uint4+0x4]
	mov [g_keepX+0x4], eax
	mov eax, [g_keepX__uint4+0x8]
	mov [g_keepX+0x8], eax
	mov eax, [g_keepX__uint4+0xc]
	mov [g_keepX+0xc], eax
	mov eax, [g_keepZ__uint4]
	mov [g_keepZ], eax
	mov eax, [g_keepZ__uint4+0x4]
	mov [g_keepZ+0x4], eax
	mov eax, [g_keepZ__uint4+0x8]
	mov [g_keepZ+0x8], eax
	mov eax, [g_keepZ__uint4+0xc]
	mov [g_keepZ+0xc], eax
	pop ebp
	ret


;R_InitWater()
_Z11R_InitWaterv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	xor ebx, ebx
	mov esi, waterGlobStatic
_Z11R_InitWaterv_10:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [_float_0_35156250]
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_0_01745329]
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [esi], xmm0
	add ebx, 0x1
	add esi, 0x4
	cmp ebx, 0x400
	jnz _Z11R_InitWaterv_10
	mov dword [esp+0x4], waterGlobStatic+0x1000
	mov dword [esp], waterGlobStatic+0x1800
	call FFT_Init
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;Load_PicmipWater(water_t**)
_Z16Load_PicmipWaterPP7water_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov edx, [ebx+0xc]
	mov eax, r_picmip_water
	mov eax, [eax]
	mov ecx, [eax+0xc]
	mov esi, edx
	sar esi, cl
	mov eax, 0x4
	cmp esi, 0x3
	cmovle esi, eax
	mov [ebp-0x1c], esi
	mov esi, [ebx+0x10]
	mov edi, esi
	sar edi, cl
	cmp edi, 0x3
	cmovg eax, edi
	mov [ebp-0x18], eax
	cmp [ebp-0x1c], edx
	jz _Z16Load_PicmipWaterPP7water_t_10
_Z16Load_PicmipWaterPP7water_t_60:
	mov eax, edx
	cdq
	idiv dword [ebp-0x1c]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x1c]
	mov [ebx+0xc], edx
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov edi, [ebp-0x18]
	mov [eax+0x10], edi
	test edx, edx
	jle _Z16Load_PicmipWaterPP7water_t_20
	mov eax, [ebp-0x24]
	sub eax, 0x1
	imul eax, [ebp-0x24]
	imul eax, edx
	mov [ebp-0x20], eax
	xor edi, edi
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0x14], 0x0
_Z16Load_PicmipWaterPP7water_t_50:
	mov eax, [ebp-0x18]
	test eax, eax
	jle _Z16Load_PicmipWaterPP7water_t_30
	mov esi, [ebp-0x10]
	shl esi, 0x3
	xor ebx, ebx
_Z16Load_PicmipWaterPP7water_t_40:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ecx, [eax+0x4]
	mov eax, [ecx+edi*8]
	mov edx, [ecx+edi*8+0x4]
	mov [esi+ecx], eax
	mov [esi+ecx+0x4], edx
	add dword [ebp-0x10], 0x1
	add edi, [ebp-0x24]
	add ebx, 0x1
	add esi, 0x8
	cmp [ebp-0x18], ebx
	jnz _Z16Load_PicmipWaterPP7water_t_40
_Z16Load_PicmipWaterPP7water_t_30:
	add edi, [ebp-0x20]
	add dword [ebp-0x14], 0x1
	mov esi, [ebp-0x14]
	cmp [ebp-0x1c], esi
	jnz _Z16Load_PicmipWaterPP7water_t_50
_Z16Load_PicmipWaterPP7water_t_20:
	add esp, 0x18
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Load_PicmipWaterPP7water_t_10:
	cmp eax, esi
	jnz _Z16Load_PicmipWaterPP7water_t_60
	jmp _Z16Load_PicmipWaterPP7water_t_20


;R_UploadWaterTexture(water_t*, float)
_Z20R_UploadWaterTextureP7water_tf:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movss xmm0, dword [ebp+0xc]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax]
	jp _Z20R_UploadWaterTextureP7water_tf_10
	jnz _Z20R_UploadWaterTextureP7water_tf_10
	leave
	ret
_Z20R_UploadWaterTextureP7water_tf_10:
	movss [eax], xmm0
	lea eax, [ebp+0x8]
	mov [esp], eax
	call _Z28R_UploadWaterTextureInternalPv
	leave
	ret


;R_UploadWaterTextureInternal(void*)
_Z28R_UploadWaterTextureInternalPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x48], eax
	cvtss2sd xmm0, [eax]
	mulsd xmm0, [_double_162_97466173]
	cvtsd2ss xmm6, xmm0
	mov eax, [eax+0xc]
	mov [ebp-0x7c], eax
	mov esi, eax
	mov edx, [ebp-0x48]
	imul esi, [edx+0x10]
	mov ecx, edx
	mov edx, [edx+0x8]
	mov ecx, [ecx+0x4]
	test esi, esi
	jle _Z28R_UploadWaterTextureInternalPv_10
	xor edi, edi
	mov ebx, waterGlob
	xorps xmm5, xmm5
	movss xmm3, dword [_data16_4f000000]
	movss xmm4, dword [_data16_4f800000]
	jmp _Z28R_UploadWaterTextureInternalPv_20
_Z28R_UploadWaterTextureInternalPv_40:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	add edi, 0x1
	add edx, 0x4
	add ecx, 0x8
	add ebx, 0x8
	cmp esi, edi
	jz _Z28R_UploadWaterTextureInternalPv_30
_Z28R_UploadWaterTextureInternalPv_20:
	mov eax, [edx]
	test eax, eax
	jz _Z28R_UploadWaterTextureInternalPv_40
	movaps xmm0, xmm6
	mulss xmm0, [edx]
	maxss xmm0, xmm5
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x2
	movaps xmm2, xmm4
	cmpss xmm2, xmm0, 0x2
	movaps [ebp-0x68], xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm3
	pslld xmm1, 0x1f
	subps xmm0, xmm2
	cvttps2dq xmm0, xmm0
	paddd xmm0, xmm1
	por xmm0, [ebp-0x68]
	movdqa [ebp-0x78], xmm0
	mov eax, [ebp-0x78]
	and eax, 0x3ff
	movss xmm1, dword [eax*4+waterGlobStatic]
	add eax, 0xff
	and eax, 0x3ff
	movss xmm0, dword [eax*4+waterGlobStatic]
	mulss xmm0, [ecx]
	movss [ebx], xmm0
	mulss xmm1, [ecx+0x4]
	movss [ebx+0x4], xmm1
	add edi, 0x1
	add edx, 0x4
	add ecx, 0x8
	add ebx, 0x8
	cmp esi, edi
	jnz _Z28R_UploadWaterTextureInternalPv_20
_Z28R_UploadWaterTextureInternalPv_30:
	mov eax, [ebp-0x48]
	mov eax, [eax+0xc]
	mov [ebp-0x7c], eax
_Z28R_UploadWaterTextureInternalPv_10:
	cmp dword [ebp-0x7c], 0x1
	jz _Z28R_UploadWaterTextureInternalPv_50
	mov dword [ebp-0x44], 0x0
	mov edx, 0x1
_Z28R_UploadWaterTextureInternalPv_60:
	add dword [ebp-0x44], 0x1
	mov eax, edx
	movzx ecx, byte [ebp-0x44]
	shl eax, cl
	cmp [ebp-0x7c], eax
	jnz _Z28R_UploadWaterTextureInternalPv_60
_Z28R_UploadWaterTextureInternalPv_370:
	mov ebx, [ebp-0x48]
	mov edi, [ebx+0x10]
	test edi, edi
	jg _Z28R_UploadWaterTextureInternalPv_70
_Z28R_UploadWaterTextureInternalPv_320:
	mov esi, [ebp-0x7c]
	test esi, esi
	jz _Z28R_UploadWaterTextureInternalPv_80
	mov dword [ebp-0x40], 0x0
_Z28R_UploadWaterTextureInternalPv_100:
	add dword [ebp-0x40], 0x1
	mov edx, [ebp-0x40]
	cmp [ebp-0x7c], edx
	jbe _Z28R_UploadWaterTextureInternalPv_90
	test edx, edx
	jz _Z28R_UploadWaterTextureInternalPv_100
	mov eax, [ebp-0x7c]
	imul eax, edx
	shl eax, 0x3
	mov [ebp-0x1c], eax
	xor edi, edi
	mov edx, eax
	mov ebx, eax
_Z28R_UploadWaterTextureInternalPv_110:
	mov eax, [edx+waterGlob]
	mov edx, [edx+waterGlob+0x4]
	mov [ebp-0xa0], eax
	mov [ebp-0x9c], edx
	mov ecx, [ebp-0x7c]
	imul ecx, edi
	add ecx, [ebp-0x40]
	shl ecx, 0x3
	mov eax, [ecx+waterGlob]
	mov edx, [ecx+waterGlob+0x4]
	mov [ebx+waterGlob], eax
	mov [ebx+waterGlob+0x4], edx
	mov eax, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	mov [ecx+waterGlob], eax
	mov [ecx+waterGlob+0x4], edx
	add edi, 0x1
	add ebx, 0x8
	mov [ebp-0x1c], ebx
	cmp [ebp-0x40], edi
	jz _Z28R_UploadWaterTextureInternalPv_100
	mov edx, ebx
	mov ebx, [ebp-0x1c]
	jmp _Z28R_UploadWaterTextureInternalPv_110
_Z28R_UploadWaterTextureInternalPv_90:
	mov ecx, [ebp-0x48]
	mov ecx, [ecx+0xc]
	mov [ebp-0x7c], ecx
_Z28R_UploadWaterTextureInternalPv_80:
	mov ebx, [ebp-0x7c]
	test ebx, ebx
	jg _Z28R_UploadWaterTextureInternalPv_120
_Z28R_UploadWaterTextureInternalPv_360:
	mov ecx, [ebp-0x7c]
	test ecx, ecx
	jz _Z28R_UploadWaterTextureInternalPv_130
	mov dword [ebp-0x3c], 0x0
_Z28R_UploadWaterTextureInternalPv_150:
	add dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
	cmp [ebp-0x7c], edx
	jbe _Z28R_UploadWaterTextureInternalPv_140
	test edx, edx
	jz _Z28R_UploadWaterTextureInternalPv_150
	mov eax, [ebp-0x7c]
	imul eax, edx
	shl eax, 0x3
	mov [ebp-0x20], eax
	xor edi, edi
	mov edx, eax
	mov ebx, eax
_Z28R_UploadWaterTextureInternalPv_160:
	mov eax, [edx+waterGlob]
	mov edx, [edx+waterGlob+0x4]
	mov [ebp-0xa0], eax
	mov [ebp-0x9c], edx
	mov ecx, [ebp-0x7c]
	imul ecx, edi
	add ecx, [ebp-0x3c]
	shl ecx, 0x3
	mov eax, [ecx+waterGlob]
	mov edx, [ecx+waterGlob+0x4]
	mov [ebx+waterGlob], eax
	mov [ebx+waterGlob+0x4], edx
	mov eax, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	mov [ecx+waterGlob], eax
	mov [ecx+waterGlob+0x4], edx
	add edi, 0x1
	add ebx, 0x8
	mov [ebp-0x20], ebx
	cmp [ebp-0x3c], edi
	jz _Z28R_UploadWaterTextureInternalPv_150
	mov edx, ebx
	mov ebx, [ebp-0x20]
	jmp _Z28R_UploadWaterTextureInternalPv_160
_Z28R_UploadWaterTextureInternalPv_140:
	mov ecx, [ebp-0x48]
	mov ecx, [ecx+0xc]
	mov [ebp-0x7c], ecx
	mov eax, ecx
	mov ebx, [ebp-0x48]
	imul eax, [ebx+0x10]
	mov [ebp-0xa4], eax
	test eax, eax
	js _Z28R_UploadWaterTextureInternalPv_170
_Z28R_UploadWaterTextureInternalPv_210:
	cvtsi2ss xmm0, eax
	movss xmm4, dword [_float_1_00000000]
	divss xmm4, xmm0
	mov edx, [ebp-0xa4]
	test edx, edx
	jnz _Z28R_UploadWaterTextureInternalPv_180
_Z28R_UploadWaterTextureInternalPv_220:
	mov dword [esp+0x10], waterGlob+0x8000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x32
	mov edx, [ebp-0x48]
	mov eax, [edx+0x40]
	mov [esp], eax
	call _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
	mov ecx, [ebp-0x48]
	mov ebx, [ecx+0xc]
	cmp ebx, 0x1
	jle _Z28R_UploadWaterTextureInternalPv_190
	mov edi, 0x1
_Z28R_UploadWaterTextureInternalPv_200:
	mov dword [esp+0x10], waterGlob+0x8000
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], waterGlob+0x8000
	call _Z26R_DownsampleMipMapBilinearPKhiiiPh
	mov dword [esp+0x10], waterGlob+0x8000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x32
	mov edx, [ebp-0x48]
	mov eax, [edx+0x40]
	mov [esp], eax
	call _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
	sar ebx, 1
	add edi, 0x1
	cmp ebx, 0x1
	jg _Z28R_UploadWaterTextureInternalPv_200
_Z28R_UploadWaterTextureInternalPv_190:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_UploadWaterTextureInternalPv_130:
	mov eax, [ebp-0x7c]
	mov ebx, [ebp-0x48]
	imul eax, [ebx+0x10]
	mov [ebp-0xa4], eax
	test eax, eax
	jns _Z28R_UploadWaterTextureInternalPv_210
_Z28R_UploadWaterTextureInternalPv_170:
	shr eax, 1
	mov edx, [ebp-0xa4]
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	movss xmm4, dword [_float_1_00000000]
	divss xmm4, xmm0
	mov edx, [ebp-0xa4]
	test edx, edx
	jz _Z28R_UploadWaterTextureInternalPv_220
_Z28R_UploadWaterTextureInternalPv_180:
	mov dword [ebp-0x34], waterGlob+0x8
	mov dword [ebp-0x30], waterGlob+0xc
	mov dword [ebp-0x2c], waterGlob+0x10
	mov dword [ebp-0x28], waterGlob+0x14
	mov dword [ebp-0x24], waterGlob+0x18
	mov edi, waterGlob+0x1c
	mov edx, waterGlob+0x8000
	mov esi, waterGlob
	mov ebx, waterGlob+0x4
	movss xmm5, dword [_float_255_99899292]
	jmp _Z28R_UploadWaterTextureInternalPv_230
_Z28R_UploadWaterTextureInternalPv_270:
	movaps xmm0, xmm5
	cvttss2si eax, xmm0
	mov [ebp-0x4c], al
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z28R_UploadWaterTextureInternalPv_240
_Z28R_UploadWaterTextureInternalPv_280:
	movaps xmm0, xmm5
_Z28R_UploadWaterTextureInternalPv_290:
	cvttss2si eax, xmm0
	mov ecx, [ebp-0x4c]
	mov ch, al
	mov [ebp-0x4c], ecx
	movaps xmm1, xmm4
	mulss xmm1, xmm7
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z28R_UploadWaterTextureInternalPv_250
	movaps xmm0, xmm5
_Z28R_UploadWaterTextureInternalPv_340:
	cvttss2si eax, xmm0
	movzx eax, al
	shl eax, 0x10
	and dword [ebp-0x4c], 0xff00ffff
	or [ebp-0x4c], eax
	movss xmm1, dword [ebp-0x38]
	mulss xmm1, xmm4
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z28R_UploadWaterTextureInternalPv_260
	movaps xmm0, xmm5
_Z28R_UploadWaterTextureInternalPv_330:
	cvttss2si eax, xmm0
	shl eax, 0x18
	and dword [ebp-0x4c], 0xffffff
	or [ebp-0x4c], eax
	mov eax, [ebp-0x4c]
	mov [edx], eax
	add edx, 0x4
	add esi, 0x20
	add ebx, 0x20
	add dword [ebp-0x34], 0x20
	add dword [ebp-0x30], 0x20
	add dword [ebp-0x2c], 0x20
	add dword [ebp-0x28], 0x20
	add dword [ebp-0x24], 0x20
	add edi, 0x20
	mov eax, edx
	sub eax, waterGlob+0x8000
	cmp eax, [ebp-0xa4]
	jae _Z28R_UploadWaterTextureInternalPv_220
_Z28R_UploadWaterTextureInternalPv_230:
	movss xmm2, dword [esi]
	movss xmm3, dword [ebx]
	mov ecx, [ebp-0x34]
	movss xmm1, dword [ecx]
	mov eax, [ebp-0x30]
	movss xmm0, dword [eax]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm6, xmm1
	mov ecx, [ebp-0x2c]
	movss xmm1, dword [ecx]
	mov eax, [ebp-0x28]
	movss xmm0, dword [eax]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm7, xmm1
	mov ecx, [ebp-0x24]
	movss xmm1, dword [ecx]
	movss xmm0, dword [edi]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm1, xmm1
	movss [ebp-0x38], xmm1
	mulss xmm2, xmm2
	mulss xmm3, xmm3
	addss xmm2, xmm3
	sqrtss xmm2, xmm2
	mulss xmm2, xmm4
	movaps xmm0, xmm2
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jae _Z28R_UploadWaterTextureInternalPv_270
	movaps xmm0, xmm2
	mulss xmm0, xmm5
	cvttss2si eax, xmm0
	mov [ebp-0x4c], al
	movaps xmm1, xmm4
	mulss xmm1, xmm6
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jae _Z28R_UploadWaterTextureInternalPv_280
_Z28R_UploadWaterTextureInternalPv_240:
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	jmp _Z28R_UploadWaterTextureInternalPv_290
_Z28R_UploadWaterTextureInternalPv_70:
	xor ebx, ebx
	mov edx, [ebp-0x48]
	jmp _Z28R_UploadWaterTextureInternalPv_300
_Z28R_UploadWaterTextureInternalPv_310:
	mov edx, ecx
_Z28R_UploadWaterTextureInternalPv_300:
	mov dword [esp+0xc], waterGlobStatic+0x1000
	mov dword [esp+0x8], waterGlobStatic+0x1800
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, ebx
	imul eax, [edx+0xc]
	lea eax, [eax*8+waterGlob]
	mov [esp], eax
	call FFT
	add ebx, 0x1
	mov ecx, [ebp-0x48]
	cmp [ecx+0x10], ebx
	jg _Z28R_UploadWaterTextureInternalPv_310
	mov ebx, [ecx+0xc]
	mov [ebp-0x7c], ebx
	jmp _Z28R_UploadWaterTextureInternalPv_320
_Z28R_UploadWaterTextureInternalPv_260:
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	jmp _Z28R_UploadWaterTextureInternalPv_330
_Z28R_UploadWaterTextureInternalPv_250:
	movaps xmm0, xmm1
	mulss xmm0, xmm5
	jmp _Z28R_UploadWaterTextureInternalPv_340
_Z28R_UploadWaterTextureInternalPv_120:
	xor ebx, ebx
_Z28R_UploadWaterTextureInternalPv_350:
	mov dword [esp+0xc], waterGlobStatic+0x1000
	mov dword [esp+0x8], waterGlobStatic+0x1800
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, ebx
	mov edx, [ebp-0x48]
	imul eax, [edx+0x10]
	lea eax, [eax*8+waterGlob]
	mov [esp], eax
	call FFT
	add ebx, 0x1
	mov ecx, [ebp-0x48]
	mov ecx, [ecx+0xc]
	mov [ebp-0x7c], ecx
	cmp ecx, ebx
	jg _Z28R_UploadWaterTextureInternalPv_350
	jmp _Z28R_UploadWaterTextureInternalPv_360
_Z28R_UploadWaterTextureInternalPv_50:
	mov dword [ebp-0x44], 0x0
	jmp _Z28R_UploadWaterTextureInternalPv_370
	nop


;Initialized global or static variables of r_water:
SECTION .data


;Initialized constant data of r_water:
SECTION .rdata
g_keepZ__uint4: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x4f000000, 0x0, 0x0, 0x0, 0x4f800000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_water:
SECTION .bss
g_keepZ: resb 0x10
g_keepX: resb 0x10
g_keepZW: resb 0x10
g_keepXY: resb 0x10
g_keepXYZ: resb 0x10
g_keepXYW: resb 0x10
g_keepXZW: resb 0x10
g_keepYZW: resb 0x10
g_selectW: resb 0x10
g_selectZ: resb 0x10
g_selectY: resb 0x10
g_selectX: resb 0x10
g_swizzleWWWW: resb 0x10
g_swizzleZZZZ: resb 0x10
g_swizzleYYYY: resb 0x10
g_swizzleXXXX: resb 0x10
g_swizzleYZWA: resb 0x10
g_swizzleZWAW: resb 0x10
g_swizzleWABW: resb 0x10
g_swizzleZXYW: resb 0x10
g_swizzleYZXW: resb 0x10
g_swizzleXYZA: resb 0x10
g_swizzleZWCD: resb 0x10
g_swizzleXYAB: resb 0x10
g_swizzleYBWD: resb 0x10
g_swizzleXAZC: resb 0x10
g_swizzleYXWZ: resb 0x10
g_swizzleXZYW: resb 0x10
g_swizzleYXZW: resb 0x10
g_swizzleXYZW: resb 0x10
g_inc: resb 0x10
g_negativeZero: resb 0x10
g_fltMin: resb 0x80
waterGlobStatic: resb 0x1c00
waterGlob: resb 0x9000


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_35156250:		dd 0x3eb40000	; 0.351562
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_double_162_97466173:		dq 0x40645f306dc9c883	; 162.975
_data16_4f000000:		dd 0x4f000000, 0x0, 0x0, 0x0	; OWORD
_data16_4f800000:		dd 0x4f800000, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float_255_99899292:		dd 0x437fffbe	; 255.999

