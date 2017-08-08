;Imports of r_model_skin:
	extern Vec3UnpackUnitVec
	extern dx_ctx
	extern sys_SSE
	extern gfxBuf
	extern r_sse_skinning

;Exports of r_model_skin:
	global _GLOBAL__I__Z15R_SkinXModelCmdPv
	global sse_weightScale
	global sse_one
	global sse_encodeShift
	global sse_encodeScale
	global LocalMatrixTransformVector43
	global MatrixTransformVertexAndBasis
	global R_SkinXSurfaceRigidSse
	global R_SkinXSurfaceWeightSseBlockOut
	global R_SkinXSurfaceWeightSseBlockOut
	global R_SkinXSurfaceWeightSseBlockOut
	global R_SkinXSurfaceWeightSseOut
	global R_SkinXSurfaceRigidSseOut
	global R_SkinXSurfaceWeightSseBlockInOut
	global R_SkinXSurfaceWeightSseBlock
	global R_SkinXSurfaceWeightSseBlock
	global R_SkinXSurfaceWeightSseBlock
	global R_SkinXSurfaceWeightSse
	global R_SkinXSurfaceSkinnedSse
	global R_SkinXModelCmd
	global Vec3Mad
	global Vec3Copy
	global Vec3Scale


SECTION .text


;global constructors keyed to R_SkinXModelCmd(void*)
_GLOBAL__I__Z15R_SkinXModelCmdPv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;LocalMatrixTransformVector43(float const*, DObjSkelMat const*, float*)
LocalMatrixTransformVector43:
	push ebp
	mov ebp, esp
	movss xmm1, dword [eax]
	mulss xmm1, [edx]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x10]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x20]
	addss xmm1, xmm0
	addss xmm1, [edx+0x30]
	movss [ecx], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x4]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x24]
	addss xmm1, xmm0
	addss xmm1, [edx+0x34]
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax]
	mulss xmm1, [edx+0x8]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x18]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x28]
	addss xmm1, xmm0
	addss xmm1, [edx+0x38]
	movss [ecx+0x8], xmm1
	pop ebp
	ret


;__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0:
	push ebp
	mov ebp, esp
	cmp edx, 0xffff
	jz __static_initialization_and_destruction_0_10
__static_initialization_and_destruction_0_20:
	pop ebp
	ret
__static_initialization_and_destruction_0_10:
	sub eax, 0x1
	jnz __static_initialization_and_destruction_0_20
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


;MatrixTransformVertexAndBasis(float const*, float, PackedUnitVec, PackedUnitVec, DObjSkelMat const*, GfxPackedVertex*)
MatrixTransformVertexAndBasis:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	xor esi, esi
	mov dword [ebp-0x2c], 0x0
	mov edi, ecx
	mov ebx, [ebp+0x8]
	movss xmm2, dword [eax]
	mulss xmm2, [ebx]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebx+0x10]
	addss xmm2, xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ebx+0x20]
	addss xmm2, xmm1
	addss xmm2, [ebx+0x30]
	mov ecx, [ebp+0xc]
	movss [ecx], xmm2
	movss xmm2, dword [eax]
	mulss xmm2, [ebx+0x4]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebx+0x14]
	addss xmm2, xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ebx+0x24]
	addss xmm2, xmm1
	addss xmm2, [ebx+0x34]
	movss [ecx+0x4], xmm2
	movss xmm2, dword [eax]
	mulss xmm2, [ebx+0x8]
	movss xmm1, dword [eax+0x4]
	mulss xmm1, [ebx+0x18]
	addss xmm2, xmm1
	movss xmm1, dword [eax+0x8]
	mulss xmm1, [ebx+0x28]
	addss xmm2, xmm1
	addss xmm2, [ebx+0x38]
	movss [ecx+0x8], xmm2
	movss [ecx+0xc], xmm0
	mov [ebp-0x28], edx
	mov [ebp-0x24], edx
	mov [ebp-0x20], edx
	mov [ebp-0x1c], edx
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edx
	call Vec3UnpackUnitVec
	movss xmm1, dword [ebp-0x28]
	movss xmm4, dword [ebp-0x24]
	movss xmm5, dword [ebp-0x20]
	movaps xmm3, xmm1
	mulss xmm3, [ebx+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x14]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x24]
	addss xmm3, xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [ebx+0x18]
	addss xmm2, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebx+0x28]
	addss xmm2, xmm0
	mulss xmm1, [ebx]
	mulss xmm4, [ebx+0x10]
	addss xmm1, xmm4
	mulss xmm5, [ebx+0x20]
	addss xmm1, xmm5
	movss xmm7, dword [_float_127_00000000]
	mulss xmm1, xmm7
	movss xmm6, dword [_float_127_50000000]
	addss xmm1, xmm6
	cvttss2si eax, xmm1
	mov edx, esi
	mov dl, al
	mulss xmm3, xmm7
	addss xmm3, xmm6
	cvttss2si eax, xmm3
	mov dh, al
	mov esi, edx
	mulss xmm2, xmm7
	addss xmm2, xmm6
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and esi, 0xff00ffff
	or esi, eax
	and esi, 0xffffff
	or esi, 0x3f000000
	mov ecx, [ebp+0xc]
	mov [ecx+0x18], esi
	mov [ebp-0x28], edi
	mov [ebp-0x24], edi
	mov [ebp-0x20], edi
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	movss [ebp-0x48], xmm6
	movss [ebp-0x58], xmm7
	call Vec3UnpackUnitVec
	movss xmm0, dword [ebp-0x28]
	movss xmm4, dword [ebp-0x24]
	movss xmm5, dword [ebp-0x20]
	movaps xmm3, xmm0
	mulss xmm3, [ebx+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x14]
	addss xmm3, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x24]
	addss xmm3, xmm1
	movaps xmm2, xmm0
	mulss xmm2, [ebx+0x8]
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x18]
	addss xmm2, xmm1
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x28]
	addss xmm2, xmm1
	mulss xmm0, [ebx]
	mulss xmm4, [ebx+0x10]
	addss xmm0, xmm4
	mulss xmm5, [ebx+0x20]
	addss xmm0, xmm5
	movss xmm7, dword [ebp-0x58]
	mulss xmm0, xmm7
	movss xmm6, dword [ebp-0x48]
	addss xmm0, xmm6
	cvttss2si eax, xmm0
	mov [ebp-0x2c], al
	mulss xmm3, xmm7
	addss xmm3, xmm6
	cvttss2si eax, xmm3
	mov edx, [ebp-0x2c]
	mov dh, al
	mulss xmm2, xmm7
	addss xmm2, xmm6
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	mov [ebp-0x2c], edx
	or edx, 0x3f000000
	mov ecx, [ebp+0xc]
	mov [ecx+0x1c], edx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SkinXSurfaceRigidSse(XSurface const*, int, DObjSkelMat const*, GfxPackedVertex*)
R_SkinXSurfaceRigidSse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x40], eax
	mov [ebp-0x28], ecx
	mov edx, [eax+0x1c]
	mov eax, [eax+0x20]
	test eax, eax
	jz R_SkinXSurfaceRigidSse_10
	mov ecx, [ebp+0x8]
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x3c], 0x0
	mov ebx, [ebp-0x40]
	jmp R_SkinXSurfaceRigidSse_20
R_SkinXSurfaceRigidSse_30:
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x3c], 0xc
	mov ebx, [ebp-0x24]
	mov eax, [ebp-0x40]
	cmp [eax+0x20], ebx
	jbe R_SkinXSurfaceRigidSse_10
R_SkinXSurfaceRigidSse_50:
	mov ebx, eax
R_SkinXSurfaceRigidSse_20:
	mov eax, [ebp-0x3c]
	add eax, [ebx+0x24]
	movzx ebx, word [eax+0x2]
	movzx eax, word [eax]
	add eax, [ebp-0x28]
	movaps xmm7, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm5, [eax+0x20]
	movaps xmm4, [eax+0x30]
	test ebx, ebx
	jle R_SkinXSurfaceRigidSse_30
	pxor mm5, mm5
	pxor mm4, mm4
	xor eax, eax
R_SkinXSurfaceRigidSse_40:
	prefetchnta [edx+0x80]
	movaps xmm2, [edx]
	mov esi, [edx+0x10]
	mov edi, [edx+0x14]
	mov [ebp-0x20], esi
	mov [ebp-0x1c], edi
	movaps xmm3, xmm2
	shufps xmm3, xmm2, 0x0
	mulps xmm3, xmm7
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 0x55
	mulps xmm1, xmm6
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 0xaa
	mulps xmm0, xmm5
	addps xmm0, xmm4
	addps xmm3, xmm1
	addps xmm3, xmm0
	movaps xmm0, xmm3
	unpckhps xmm0, xmm2
	shufps xmm3, xmm0, 0xc4
	movd xmm0, dword [edx+0x18]
	movq [ebp-0x30], xmm0
	movq mm0, [ebp-0x30]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm5
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [edx+0x1c]
	movq [ebp-0x38], xmm0
	movq mm0, [ebp-0x38]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm5
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	movntps [ecx], xmm3
	movq mm1, [ebp-0x20]
	movntq [ecx+0x10], mm1
	packuswb mm2, mm0
	movntq [ecx+0x18], mm2
	add eax, 0x1
	add edx, 0x20
	add ecx, 0x20
	cmp ebx, eax
	jnz R_SkinXSurfaceRigidSse_40
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x3c], 0xc
	mov ebx, [ebp-0x24]
	mov eax, [ebp-0x40]
	cmp [eax+0x20], ebx
	ja R_SkinXSurfaceRigidSse_50
R_SkinXSurfaceRigidSse_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void R_SkinXSurfaceWeightSseBlockOut<7, Sse_SkinVertex_3>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertexNormal*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlockOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, eax
	mov [ebp-0x84], edx
	mov [ebp-0x38], ecx
	mov eax, [ebp+0x14]
	mov eax, [eax]
	mov [ebp-0x28], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlockOut_10
	mov edi, eax
	mov eax, [ebp+0x14]
	mov [eax], edi
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlockOut_10:
	mov edx, eax
	pxor mm5, mm5
	pxor mm4, mm4
	shl eax, 0x5
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0x10]
	mov edi, [ebp+0xc]
	lea edx, [edi+edx*8]
	mov [ebp-0x7c], edx
	mov edx, [ebp-0x84]
	mov dword [ebp-0x34], 0x0
	mov esi, ebx
	mov [ebp-0x88], ebx
	jmp R_SkinXSurfaceWeightSseBlockOut_20
R_SkinXSurfaceWeightSseBlockOut_30:
	mov esi, [ebp-0x88]
R_SkinXSurfaceWeightSseBlockOut_20:
	prefetchnta [ebx]
	movaps xmm0, [esi-0x80]
	movaps [ebp-0x98], xmm0
	mov edi, esi
	mov esi, [esi-0x70]
	mov edi, [edi-0x6c]
	mov [ebp-0x30], esi
	mov [ebp-0x2c], edi
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm4, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm3, [eax+0x20]
	movaps xmm5, [eax+0x30]
	shufps xmm0, xmm0, 0x0
	movaps [ebp-0x48], xmm0
	mulps xmm0, xmm4
	movaps [ebp-0x68], xmm0
	movaps xmm0, [ebp-0x98]
	shufps xmm0, xmm0, 0x55
	movaps [ebp-0x58], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm6
	movaps xmm7, [ebp-0x98]
	shufps xmm7, xmm7, 0xaa
	movaps xmm0, xmm3
	mulps xmm0, xmm7
	addps xmm0, xmm5
	addps xmm1, [ebp-0x68]
	addps xmm0, xmm1
	movaps [ebp-0x68], xmm0
	unpckhps xmm0, [ebp-0x98]
	movaps xmm1, [ebp-0x68]
	shufps xmm1, xmm0, 0xc4
	movaps [ebp-0x68], xmm1
	movd xmm0, dword [ebx-0x68]
	movq [ebp-0x70], xmm0
	movq mm0, [ebp-0x70]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm4
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm3
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm5
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm1, dword [ebx-0x64]
	movq [ebp-0x78], xmm1
	movq mm0, [ebp-0x78]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm4
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm6, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm3, xmm1
	addps xmm0, xmm6
	addps xmm0, xmm3
	movaps xmm4, xmm0
	unpckhps xmm4, xmm5
	shufps xmm0, xmm4, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	packuswb mm2, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm4, [ebp-0x48]
	mulps xmm4, [eax]
	movaps xmm1, [ebp-0x58]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm7
	addps xmm0, [eax+0x30]
	addps xmm4, xmm1
	addps xmm4, xmm0
	movaps xmm0, xmm4
	unpckhps xmm0, [ebp-0x98]
	shufps xmm4, xmm0, 0xc4
	movsx eax, word [edx+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	mulps xmm4, xmm0
	movaps xmm1, [sse_one]
	subps xmm1, xmm0
	movaps xmm0, xmm1
	movzx eax, word [edx+0x6]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x48]
	mulps xmm2, [eax]
	movaps xmm6, [ebp-0x58]
	mulps xmm6, [eax+0x10]
	movaps xmm1, [eax+0x20]
	mulps xmm1, xmm7
	addps xmm1, [eax+0x30]
	addps xmm2, xmm6
	addps xmm2, xmm1
	movaps xmm1, xmm2
	unpckhps xmm1, [ebp-0x98]
	shufps xmm2, xmm1, 0xc4
	movsx eax, word [edx+0x8]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm2
	addps xmm4, xmm1
	movzx eax, word [edx+0xa]
	add eax, [ebp+0x8]
	movaps xmm3, [ebp-0x48]
	mulps xmm3, [eax]
	movaps xmm1, [ebp-0x58]
	mulps xmm1, [eax+0x10]
	mulps xmm7, [eax+0x20]
	addps xmm7, [eax+0x30]
	addps xmm3, xmm1
	addps xmm3, xmm7
	movaps xmm5, xmm3
	unpckhps xmm5, [ebp-0x98]
	shufps xmm3, xmm5, 0xc4
	movsx eax, word [edx+0xc]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm3
	addps xmm4, xmm1
	mulps xmm0, [ebp-0x68]
	addps xmm4, xmm0
	movntps [ecx], xmm4
	movq mm0, [ebp-0x30]
	movntq [ecx+0x10], mm0
	movntq [ecx+0x18], mm2
	mov eax, [ebp-0x7c]
	movntq [eax], mm2
	add edx, 0xe
	add dword [ebp-0x34], 0x1
	add ebx, 0x20
	add dword [ebp-0x88], 0x20
	add ecx, 0x20
	add eax, 0x8
	mov [ebp-0x7c], eax
	mov esi, [ebp-0x34]
	cmp [ebp-0x38], esi
	jnz R_SkinXSurfaceWeightSseBlockOut_30
	add [ebp-0x28], esi
	mov edi, [ebp-0x28]
	mov eax, [ebp+0x14]
	mov [eax], edi
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;void R_SkinXSurfaceWeightSseBlockOut<5, Sse_SkinVertex_2>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertexNormal*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlockOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, eax
	mov [ebp-0x80], edx
	mov [ebp-0x48], ecx
	mov eax, [ebp+0x14]
	mov eax, [eax]
	mov [ebp-0x34], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlockOut_10
	mov edx, eax
	mov edi, [ebp+0x14]
	mov [edi], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlockOut_10:
	mov edx, eax
	pxor mm5, mm5
	pxor mm4, mm4
	shl eax, 0x5
	mov [ebp-0x7c], eax
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0x10]
	mov eax, [ebp+0xc]
	lea edi, [eax+edx*8]
	mov dword [ebp-0x44], 0x0
	mov esi, ebx
R_SkinXSurfaceWeightSseBlockOut_20:
	prefetchnta [ebx]
	mov eax, [esi-0x70]
	mov edx, [esi-0x6c]
	mov [ebp-0x40], eax
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x80]
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm5, [eax]
	movaps xmm3, [eax+0x10]
	movaps xmm4, [eax+0x20]
	movaps xmm0, [eax+0x30]
	movaps [ebp-0x28], xmm0
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x0
	movaps [ebp-0x58], xmm0
	movaps xmm7, xmm0
	mulps xmm7, xmm5
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x55
	movaps [ebp-0x68], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm3
	movaps xmm6, [esi-0x80]
	shufps xmm6, xmm6, 0xaa
	movaps xmm0, xmm4
	mulps xmm0, xmm6
	addps xmm0, [ebp-0x28]
	addps xmm7, xmm1
	addps xmm7, xmm0
	movaps xmm0, xmm7
	unpckhps xmm0, [esi-0x80]
	shufps xmm7, xmm0, 0xc4
	movd xmm0, dword [ebx-0x68]
	movq [ebp-0x70], xmm0
	movq mm0, [ebp-0x70]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm5
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm3
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm4
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, [ebp-0x28]
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [ebx-0x64]
	movq [ebp-0x78], xmm0
	movq mm0, [ebp-0x78]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm5
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm3, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm4, xmm1
	addps xmm0, xmm3
	addps xmm0, xmm4
	movaps xmm4, xmm0
	unpckhps xmm4, [ebp-0x28]
	shufps xmm0, xmm4, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	packuswb mm2, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x58]
	mulps xmm2, [eax]
	movaps xmm1, [ebp-0x68]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm6
	addps xmm0, [eax+0x30]
	addps xmm2, xmm1
	addps xmm2, xmm0
	movaps xmm0, xmm2
	unpckhps xmm0, [esi-0x80]
	shufps xmm2, xmm0, 0xc4
	movsx eax, word [edx+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	movaps xmm4, [sse_one]
	subps xmm4, xmm1
	mulps xmm1, xmm2
	movzx eax, word [edx+0x6]
	add eax, [ebp+0x8]
	movaps xmm3, [ebp-0x58]
	mulps xmm3, [eax]
	movaps xmm0, [ebp-0x68]
	mulps xmm0, [eax+0x10]
	mulps xmm6, [eax+0x20]
	addps xmm6, [eax+0x30]
	addps xmm3, xmm0
	addps xmm3, xmm6
	movaps xmm5, xmm3
	unpckhps xmm5, [esi-0x80]
	shufps xmm3, xmm5, 0xc4
	movsx eax, word [edx+0x8]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	movq mm3, mm1
	punpckhwd mm3, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm3
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	subps xmm4, xmm0
	mulps xmm0, xmm3
	addps xmm1, xmm0
	mulps xmm4, xmm7
	addps xmm1, xmm4
	movntps [ecx], xmm1
	movq mm0, [ebp-0x40]
	movntq [ecx+0x10], mm0
	movntq [ecx+0x18], mm2
	movntq [edi], mm2
	add edx, 0xa
	mov [ebp-0x80], edx
	add dword [ebp-0x44], 0x1
	add ebx, 0x20
	add esi, 0x20
	add ecx, 0x20
	add edi, 0x8
	mov eax, [ebp-0x44]
	cmp [ebp-0x48], eax
	jnz R_SkinXSurfaceWeightSseBlockOut_20
	add [ebp-0x34], eax
	mov edx, [ebp-0x34]
	mov edi, [ebp+0x14]
	mov [edi], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;void R_SkinXSurfaceWeightSseBlockOut<3, Sse_SkinVertex_1>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertexNormal*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlockOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, eax
	mov [ebp-0x80], edx
	mov [ebp-0x30], ecx
	mov eax, [ebp+0x14]
	mov eax, [eax]
	mov [ebp-0x20], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlockOut_10
	mov edx, eax
	mov edi, [ebp+0x14]
	mov [edi], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlockOut_10:
	mov edx, eax
	pxor mm5, mm5
	pxor mm4, mm4
	shl eax, 0x5
	mov [ebp-0x7c], eax
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0x10]
	mov eax, [ebp+0xc]
	lea edi, [eax+edx*8]
	mov dword [ebp-0x2c], 0x0
	mov esi, ebx
R_SkinXSurfaceWeightSseBlockOut_20:
	prefetchnta [ebx]
	mov eax, [esi-0x70]
	mov edx, [esi-0x6c]
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov edx, [ebp-0x80]
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm2, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm7, [eax+0x20]
	movaps xmm4, [eax+0x30]
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x0
	movaps [ebp-0x48], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm2
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x55
	movaps [ebp-0x58], xmm0
	movaps xmm3, xmm0
	mulps xmm3, xmm6
	movaps xmm5, [esi-0x80]
	shufps xmm5, xmm5, 0xaa
	movaps xmm0, xmm7
	mulps xmm0, xmm5
	addps xmm0, xmm4
	addps xmm1, xmm3
	addps xmm1, xmm0
	movaps xmm0, xmm1
	unpckhps xmm0, [esi-0x80]
	shufps xmm1, xmm0, 0xc4
	movaps [ebp-0x68], xmm1
	movd xmm1, dword [ebx-0x68]
	movq [ebp-0x70], xmm1
	movq mm0, [ebp-0x70]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm2
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 0x55
	mulps xmm3, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm7
	addps xmm0, xmm3
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [ebx-0x64]
	movq [ebp-0x78], xmm0
	movq mm0, [ebp-0x78]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm2
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 0x55
	mulps xmm6, xmm3
	shufps xmm1, xmm1, 0xaa
	mulps xmm7, xmm1
	addps xmm0, xmm6
	addps xmm0, xmm7
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	packuswb mm2, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x48]
	mulps xmm2, [eax]
	movaps xmm0, [ebp-0x58]
	mulps xmm0, [eax+0x10]
	mulps xmm5, [eax+0x20]
	addps xmm5, [eax+0x30]
	addps xmm2, xmm0
	addps xmm2, xmm5
	movaps xmm5, xmm2
	unpckhps xmm5, [esi-0x80]
	shufps xmm2, xmm5, 0xc4
	movsx eax, word [edx+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	subps xmm2, [ebp-0x68]
	mulps xmm0, xmm2
	addps xmm0, [ebp-0x68]
	movntps [ecx], xmm0
	movq mm0, [ebp-0x28]
	movntq [ecx+0x10], mm0
	movntq [ecx+0x18], mm2
	movntq [edi], mm2
	add edx, 0x6
	mov [ebp-0x80], edx
	add dword [ebp-0x2c], 0x1
	add ebx, 0x20
	add esi, 0x20
	add ecx, 0x20
	add edi, 0x8
	mov eax, [ebp-0x2c]
	cmp [ebp-0x30], eax
	jnz R_SkinXSurfaceWeightSseBlockOut_20
	add [ebp-0x20], eax
	mov edx, [ebp-0x20]
	mov edi, [ebp+0x14]
	mov [edi], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SkinXSurfaceWeightSseOut(GfxPackedVertex const*, XSurfaceVertexInfo const*, DObjSkelMat const*, GfxPackedVertexNormal*, GfxPackedVertex*)
R_SkinXSurfaceWeightSseOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x40], eax
	mov ebx, edx
	mov [ebp-0x44], ecx
	mov dword [ebp-0x1c], 0x0
	mov esi, [edx+0x8]
	movzx eax, word [edx]
	cmp ax, 0x0
	jz R_SkinXSurfaceWeightSseOut_10
	cwde
	mov [ebp-0x3c], eax
	jg R_SkinXSurfaceWeightSseOut_20
	xor eax, eax
R_SkinXSurfaceWeightSseOut_100:
	mov [ebp-0x1c], eax
	movsx eax, word [ebx]
	lea esi, [esi+eax*2]
R_SkinXSurfaceWeightSseOut_10:
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz R_SkinXSurfaceWeightSseOut_30
R_SkinXSurfaceWeightSseOut_70:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz R_SkinXSurfaceWeightSseOut_40
R_SkinXSurfaceWeightSseOut_60:
	movzx eax, word [ebx+0x6]
	test ax, ax
	jz R_SkinXSurfaceWeightSseOut_50
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [ebp-0x44]
	mov [esp], eax
	mov edx, esi
	mov eax, [ebp-0x40]
	call R_SkinXSurfaceWeightSseBlockOut
R_SkinXSurfaceWeightSseOut_50:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseOut_40:
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x44]
	mov [esp], edx
	mov edx, esi
	mov eax, [ebp-0x40]
	call R_SkinXSurfaceWeightSseBlockOut
	movsx eax, word [ebx+0x4]
	lea eax, [eax+eax*4]
	lea esi, [esi+eax*2]
	jmp R_SkinXSurfaceWeightSseOut_60
R_SkinXSurfaceWeightSseOut_30:
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, [ebp-0x44]
	mov [esp], eax
	mov edx, esi
	mov eax, [ebp-0x40]
	call R_SkinXSurfaceWeightSseBlockOut
	movsx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	lea esi, [esi+eax*2]
	jmp R_SkinXSurfaceWeightSseOut_70
R_SkinXSurfaceWeightSseOut_20:
	pxor mm5, mm5
	pxor mm4, mm4
	mov eax, [ebp-0x40]
	mov [ebp-0x5c], eax
	mov ecx, [ebp+0xc]
	mov edi, [ebp+0x8]
	mov dword [ebp-0x2c], 0x0
	mov edx, eax
	jmp R_SkinXSurfaceWeightSseOut_80
R_SkinXSurfaceWeightSseOut_90:
	mov edx, eax
R_SkinXSurfaceWeightSseOut_80:
	prefetchnta [edx+0x80]
	movaps xmm2, [edx]
	mov eax, [edx+0x10]
	mov edx, [edx+0x14]
	mov [ebp-0x38], eax
	mov [ebp-0x34], edx
	mov edx, [ebp-0x2c]
	movzx eax, word [esi+edx*2]
	add eax, [ebp-0x44]
	movaps xmm7, [eax]
	movaps xmm5, [eax+0x10]
	movaps xmm6, [eax+0x20]
	movaps xmm3, [eax+0x30]
	movaps xmm4, xmm2
	shufps xmm4, xmm2, 0x0
	mulps xmm4, xmm7
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 0x55
	mulps xmm1, xmm5
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 0xaa
	mulps xmm0, xmm6
	addps xmm0, xmm3
	addps xmm4, xmm1
	addps xmm4, xmm0
	movaps xmm0, xmm4
	unpckhps xmm0, xmm2
	shufps xmm4, xmm0, 0xc4
	mov eax, [ebp-0x5c]
	movd xmm0, dword [eax+0x18]
	movq [ebp-0x50], xmm0
	movq mm0, [ebp-0x50]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm5
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm6
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm1, dword [eax+0x1c]
	movq [ebp-0x58], xmm1
	movq mm0, [ebp-0x58]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm5, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm6, xmm1
	addps xmm0, xmm5
	addps xmm0, xmm6
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	packuswb mm2, mm0
	movntps [ecx], xmm4
	movq mm0, [ebp-0x38]
	movntq [ecx+0x10], mm0
	movntq [ecx+0x18], mm2
	movntq [edi], mm2
	add edx, 0x1
	mov [ebp-0x2c], edx
	add eax, 0x20
	mov [ebp-0x5c], eax
	add ecx, 0x20
	add edi, 0x8
	cmp [ebp-0x3c], edx
	jnz R_SkinXSurfaceWeightSseOut_90
	mov eax, edx
	jmp R_SkinXSurfaceWeightSseOut_100


;R_SkinXSurfaceRigidSseOut(XSurface const*, int, DObjSkelMat const*, GfxPackedVertexNormal*, GfxPackedVertex*)
R_SkinXSurfaceRigidSseOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x50], eax
	mov [ebp-0x30], ecx
	mov edx, [eax+0x1c]
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz R_SkinXSurfaceRigidSseOut_10
	mov ecx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [ebp-0x4c], eax
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x1c], 0x0
	mov ebx, [ebp-0x50]
	jmp R_SkinXSurfaceRigidSseOut_20
R_SkinXSurfaceRigidSseOut_30:
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x1c], 0xc
	mov eax, [ebp-0x2c]
	mov edi, [ebp-0x50]
	cmp [edi+0x20], eax
	jbe R_SkinXSurfaceRigidSseOut_10
R_SkinXSurfaceRigidSseOut_50:
	mov ebx, edi
R_SkinXSurfaceRigidSseOut_20:
	mov eax, [ebp-0x1c]
	add eax, [ebx+0x24]
	movzx ebx, word [eax+0x2]
	movzx eax, word [eax]
	add eax, [ebp-0x30]
	movaps xmm7, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm5, [eax+0x20]
	movaps xmm4, [eax+0x30]
	test ebx, ebx
	jle R_SkinXSurfaceRigidSseOut_30
	pxor mm5, mm5
	pxor mm4, mm4
	mov eax, 0x1
	add ebx, 0x1
R_SkinXSurfaceRigidSseOut_40:
	prefetchnta [edx+0x80]
	movaps xmm2, [edx]
	mov esi, [edx+0x10]
	mov edi, [edx+0x14]
	mov [ebp-0x28], esi
	mov [ebp-0x24], edi
	movaps xmm3, xmm2
	shufps xmm3, xmm2, 0x0
	mulps xmm3, xmm7
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 0x55
	mulps xmm1, xmm6
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 0xaa
	mulps xmm0, xmm5
	addps xmm0, xmm4
	addps xmm3, xmm1
	addps xmm3, xmm0
	movaps xmm0, xmm3
	unpckhps xmm0, xmm2
	shufps xmm3, xmm0, 0xc4
	movd xmm0, dword [edx+0x18]
	movq [ebp-0x38], xmm0
	movq mm0, [ebp-0x38]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm5
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [edx+0x1c]
	movq [ebp-0x40], xmm0
	movq mm0, [ebp-0x40]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm5
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	packuswb mm2, mm0
	movntps [ecx], xmm3
	movq mm0, [ebp-0x28]
	movntq [ecx+0x10], mm0
	movntq [ecx+0x18], mm2
	mov esi, [ebp-0x4c]
	movntq [esi], mm2
	add edx, 0x20
	add ecx, 0x20
	add esi, 0x8
	mov [ebp-0x4c], esi
	add eax, 0x1
	cmp ebx, eax
	jnz R_SkinXSurfaceRigidSseOut_40
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x1c], 0xc
	mov eax, [ebp-0x2c]
	mov edi, [ebp-0x50]
	cmp [edi+0x20], eax
	ja R_SkinXSurfaceRigidSseOut_50
R_SkinXSurfaceRigidSseOut_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void R_SkinXSurfaceWeightSseBlockInOut<7, Sse_SkinVertexSimple_3>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertexNormal const*, GfxPackedVertexNormal*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlockInOut:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x48], eax
	mov [ebp-0x4c], edx
	mov [ebp-0x50], ecx
	mov eax, [ebp+0x18]
	mov eax, [eax]
	mov [ebp-0x2c], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlockInOut_10
	mov edx, eax
	mov ecx, [ebp+0x18]
	mov [ecx], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlockInOut_10:
	pxor mm2, mm2
	mov edx, eax
	shl edx, 0x5
	mov ecx, [ebp-0x48]
	lea ecx, [ecx+edx+0x80]
	mov [ebp-0x1c], ecx
	shl eax, 0x3
	mov ecx, [ebp+0xc]
	lea esi, [ecx+eax+0x80]
	mov ebx, edx
	add ebx, [ebp+0x14]
	mov edi, eax
	add edi, [ebp+0x10]
	mov ecx, [ebp-0x4c]
	mov dword [ebp-0x44], 0x0
	mov eax, [ebp-0x48]
	lea edx, [eax+edx+0x80]
	mov [ebp-0x7c], edx
	mov eax, edx
	jmp R_SkinXSurfaceWeightSseBlockInOut_20
R_SkinXSurfaceWeightSseBlockInOut_30:
	mov eax, [ebp-0x7c]
R_SkinXSurfaceWeightSseBlockInOut_20:
	mov edx, [ebp-0x1c]
	prefetchnta [edx]
	prefetchnta [esi]
	movaps xmm4, [eax-0x80]
	mov edx, eax
	mov eax, [eax-0x70]
	mov edx, [edx-0x6c]
	mov [ebp-0x40], eax
	mov [ebp-0x3c], edx
	mov eax, [esi-0x80]
	mov edx, [esi-0x7c]
	mov [ebp-0x38], eax
	mov [ebp-0x34], edx
	movzx eax, word [ecx]
	add eax, [ebp+0x8]
	movaps xmm3, xmm4
	shufps xmm3, xmm4, 0x0
	movaps xmm0, [eax]
	mulps xmm0, xmm3
	movaps [ebp-0x78], xmm0
	movaps xmm1, xmm4
	shufps xmm1, xmm4, 0x55
	movaps [ebp-0x68], xmm1
	mulps xmm1, [eax+0x10]
	movaps xmm7, xmm4
	shufps xmm7, xmm4, 0xaa
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm7
	addps xmm0, [eax+0x30]
	addps xmm1, [ebp-0x78]
	addps xmm0, xmm1
	movaps [ebp-0x78], xmm0
	unpckhps xmm0, xmm4
	movaps xmm1, [ebp-0x78]
	shufps xmm1, xmm0, 0xc4
	movaps [ebp-0x78], xmm1
	movzx eax, word [ecx+0x2]
	add eax, [ebp+0x8]
	movaps xmm5, [eax]
	mulps xmm5, xmm3
	movaps xmm1, [ebp-0x68]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm7
	addps xmm0, [eax+0x30]
	addps xmm5, xmm1
	addps xmm5, xmm0
	movaps xmm0, xmm5
	unpckhps xmm0, xmm4
	shufps xmm5, xmm0, 0xc4
	movsx eax, word [ecx+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm2
	punpcklwd mm0, mm2
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	mulps xmm5, xmm0
	movaps xmm1, [sse_one]
	subps xmm1, xmm0
	movaps xmm0, xmm1
	movzx eax, word [ecx+0x6]
	add eax, [ebp+0x8]
	movaps xmm2, [eax]
	mulps xmm2, xmm3
	movaps xmm6, [ebp-0x68]
	mulps xmm6, [eax+0x10]
	movaps xmm1, [eax+0x20]
	mulps xmm1, xmm7
	addps xmm1, [eax+0x30]
	addps xmm2, xmm6
	addps xmm2, xmm1
	movaps xmm1, xmm2
	unpckhps xmm1, xmm4
	shufps xmm2, xmm1, 0xc4
	movsx eax, word [ecx+0x8]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm2
	punpcklwd mm0, mm2
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm2
	addps xmm5, xmm1
	movzx eax, word [ecx+0xa]
	add eax, [ebp+0x8]
	mulps xmm3, [eax]
	movaps xmm1, [ebp-0x68]
	mulps xmm1, [eax+0x10]
	mulps xmm7, [eax+0x20]
	addps xmm7, [eax+0x30]
	addps xmm3, xmm1
	addps xmm3, xmm7
	movaps xmm1, xmm3
	unpckhps xmm1, xmm4
	shufps xmm3, xmm1, 0xc4
	movsx eax, word [ecx+0xc]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm2
	punpcklwd mm0, mm2
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm3
	addps xmm5, xmm1
	mulps xmm0, [ebp-0x78]
	addps xmm5, xmm0
	movntps [ebx], xmm5
	movq mm0, [ebp-0x40]
	movntq [ebx+0x10], mm0
	movq mm1, [ebp-0x38]
	movntq [ebx+0x18], mm1
	movntq [edi], mm1
	add ecx, 0xe
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x1c], 0x20
	add dword [ebp-0x7c], 0x20
	add esi, 0x8
	add ebx, 0x20
	add edi, 0x8
	mov eax, [ebp-0x44]
	cmp [ebp-0x50], eax
	jnz R_SkinXSurfaceWeightSseBlockInOut_30
	add [ebp-0x2c], eax
	mov edx, [ebp-0x2c]
	mov ecx, [ebp+0x18]
	mov [ecx], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;void R_SkinXSurfaceWeightSseBlock<3, Sse_SkinVertex_1>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov esi, eax
	mov [ebp-0x2c], ecx
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebp-0x20], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlock_10
	mov edx, eax
	mov eax, [ebp+0x10]
	mov [eax], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlock_10:
	pxor mm5, mm5
	pxor mm4, mm4
	shl eax, 0x5
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0xc]
	mov [ebp-0x7c], edx
	xor edi, edi
	mov esi, ebx
R_SkinXSurfaceWeightSseBlock_20:
	prefetchnta [ebx]
	mov eax, [esi-0x70]
	mov edx, [esi-0x6c]
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov edx, [ebp-0x7c]
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm2, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm7, [eax+0x20]
	movaps xmm4, [eax+0x30]
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x0
	movaps [ebp-0x48], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm2
	movaps xmm0, [esi-0x80]
	shufps xmm0, xmm0, 0x55
	movaps [ebp-0x58], xmm0
	movaps xmm3, xmm0
	mulps xmm3, xmm6
	movaps xmm5, [esi-0x80]
	shufps xmm5, xmm5, 0xaa
	movaps xmm0, xmm7
	mulps xmm0, xmm5
	addps xmm0, xmm4
	addps xmm1, xmm3
	addps xmm1, xmm0
	movaps xmm0, xmm1
	unpckhps xmm0, [esi-0x80]
	shufps xmm1, xmm0, 0xc4
	movaps [ebp-0x68], xmm1
	movd xmm1, dword [ebx-0x68]
	movq [ebp-0x70], xmm1
	movq mm0, [ebp-0x70]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm2
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 0x55
	mulps xmm3, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm7
	addps xmm0, xmm3
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [ebx-0x64]
	movq [ebp-0x78], xmm0
	movq mm0, [ebp-0x78]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm2
	movaps xmm3, xmm1
	shufps xmm3, xmm1, 0x55
	mulps xmm6, xmm3
	shufps xmm1, xmm1, 0xaa
	mulps xmm7, xmm1
	addps xmm0, xmm6
	addps xmm0, xmm7
	movaps xmm1, xmm0
	unpckhps xmm1, xmm4
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm1, xmm0
	cvtps2pi mm0, xmm1
	packuswb mm2, mm3
	packuswb mm1, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x48]
	mulps xmm2, [eax]
	movaps xmm0, [ebp-0x58]
	mulps xmm0, [eax+0x10]
	mulps xmm5, [eax+0x20]
	addps xmm5, [eax+0x30]
	addps xmm2, xmm0
	addps xmm2, xmm5
	movaps xmm5, xmm2
	unpckhps xmm5, [esi-0x80]
	shufps xmm2, xmm5, 0xc4
	movsx eax, word [edx+0x4]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	punpckhwd mm3, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm3
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	subps xmm2, [ebp-0x68]
	mulps xmm0, xmm2
	addps xmm0, [ebp-0x68]
	movntps [ecx], xmm0
	movq mm0, [ebp-0x28]
	movntq [ecx+0x10], mm0
	packuswb mm2, mm1
	movntq [ecx+0x18], mm2
	add edx, 0x6
	mov [ebp-0x7c], edx
	add edi, 0x1
	add ebx, 0x20
	add esi, 0x20
	add ecx, 0x20
	cmp [ebp-0x2c], edi
	jnz R_SkinXSurfaceWeightSseBlock_20
	add [ebp-0x20], edi
	mov edx, [ebp-0x20]
	mov eax, [ebp+0x10]
	mov [eax], edx
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;void R_SkinXSurfaceWeightSseBlock<5, Sse_SkinVertex_2>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, eax
	mov [ebp-0x54], ecx
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebp-0x44], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlock_10
	mov edx, eax
	mov eax, [ebp+0x10]
	mov [eax], edx
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlock_10:
	pxor mm6, mm6
	pxor mm5, mm5
	shl eax, 0x5
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0xc]
	mov [ebp-0x8c], edx
	xor edi, edi
	mov esi, ebx
R_SkinXSurfaceWeightSseBlock_20:
	prefetchnta [ebx]
	movaps xmm5, [esi-0x80]
	mov eax, [esi-0x70]
	mov edx, [esi-0x6c]
	mov [ebp-0x50], eax
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x8c]
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm0, [eax]
	movaps [ebp-0x28], xmm0
	movaps xmm3, [eax+0x10]
	movaps xmm4, [eax+0x20]
	movaps xmm0, [eax+0x30]
	movaps [ebp-0x38], xmm0
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 0x0
	movaps [ebp-0x68], xmm0
	movaps xmm7, [ebp-0x28]
	mulps xmm7, xmm0
	movaps xmm0, xmm5
	shufps xmm0, xmm5, 0x55
	movaps [ebp-0x78], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm3
	movaps xmm6, xmm5
	shufps xmm6, xmm5, 0xaa
	movaps xmm0, xmm4
	mulps xmm0, xmm6
	addps xmm0, [ebp-0x38]
	addps xmm7, xmm1
	addps xmm7, xmm0
	movaps xmm0, xmm7
	unpckhps xmm0, xmm5
	shufps xmm7, xmm0, 0xc4
	movd xmm0, dword [ebx-0x68]
	movq [ebp-0x80], xmm0
	movq mm0, [ebp-0x80]
	punpcklbw mm0, mm6
	movq mm1, mm0
	punpckhwd mm1, mm5
	punpcklwd mm0, mm5
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, [ebp-0x28]
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm3
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm4
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, [ebp-0x38]
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm0, dword [ebx-0x64]
	movq [ebp-0x88], xmm0
	movq mm0, [ebp-0x88]
	punpcklbw mm0, mm6
	movq mm1, mm0
	punpckhwd mm1, mm5
	punpcklwd mm0, mm5
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, [ebp-0x28]
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm3, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm4, xmm1
	addps xmm0, xmm3
	addps xmm0, xmm4
	movaps xmm4, xmm0
	unpckhps xmm4, [ebp-0x38]
	shufps xmm0, xmm4, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm1, xmm0
	cvtps2pi mm0, xmm1
	packuswb mm2, mm3
	packuswb mm1, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x68]
	mulps xmm2, [eax]
	movaps xmm1, [ebp-0x78]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm6
	addps xmm0, [eax+0x30]
	addps xmm2, xmm1
	addps xmm2, xmm0
	movaps xmm0, xmm2
	unpckhps xmm0, xmm5
	shufps xmm2, xmm0, 0xc4
	movsx eax, word [edx+0x4]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	punpckhwd mm3, mm5
	punpcklwd mm0, mm5
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm3
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	movaps xmm4, [sse_one]
	subps xmm4, xmm1
	mulps xmm1, xmm2
	movzx eax, word [edx+0x6]
	add eax, [ebp+0x8]
	movaps xmm3, [ebp-0x68]
	mulps xmm3, [eax]
	movaps xmm0, [ebp-0x78]
	mulps xmm0, [eax+0x10]
	mulps xmm6, [eax+0x20]
	addps xmm6, [eax+0x30]
	addps xmm3, xmm0
	addps xmm3, xmm6
	movaps xmm0, xmm3
	unpckhps xmm0, xmm5
	shufps xmm3, xmm0, 0xc4
	movsx eax, word [edx+0x8]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	movq mm4, mm3
	punpckhwd mm4, mm5
	punpcklwd mm0, mm5
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm4
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	subps xmm4, xmm0
	mulps xmm0, xmm3
	addps xmm1, xmm0
	mulps xmm4, xmm7
	addps xmm1, xmm4
	movntps [ecx], xmm1
	movq mm0, [ebp-0x50]
	movntq [ecx+0x10], mm0
	packuswb mm2, mm1
	movntq [ecx+0x18], mm2
	add edx, 0xa
	mov [ebp-0x8c], edx
	add edi, 0x1
	add ebx, 0x20
	add esi, 0x20
	add ecx, 0x20
	cmp [ebp-0x54], edi
	jnz R_SkinXSurfaceWeightSseBlock_20
	add [ebp-0x44], edi
	mov edx, [ebp-0x44]
	mov eax, [ebp+0x10]
	mov [eax], edx
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void R_SkinXSurfaceWeightSseBlock<7, Sse_SkinVertex_3>(GfxPackedVertex const*, unsigned short const*, int, DObjSkelMat const*, GfxPackedVertex*, int*)
R_SkinXSurfaceWeightSseBlock:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, eax
	mov [ebp-0x38], ecx
	mov eax, [ebp+0x10]
	mov eax, [eax]
	mov [ebp-0x28], eax
	test ecx, ecx
	jg R_SkinXSurfaceWeightSseBlock_10
	mov esi, eax
	mov edx, [ebp+0x10]
	mov [edx], esi
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSseBlock_10:
	pxor mm5, mm5
	pxor mm4, mm4
	shl eax, 0x5
	lea ebx, [esi+eax+0x80]
	mov ecx, eax
	add ecx, [ebp+0xc]
	mov dword [ebp-0x34], 0x0
	mov [ebp-0x7c], ebx
	mov esi, ebx
	jmp R_SkinXSurfaceWeightSseBlock_20
R_SkinXSurfaceWeightSseBlock_30:
	mov esi, [ebp-0x7c]
R_SkinXSurfaceWeightSseBlock_20:
	prefetchnta [ebx]
	movaps xmm0, [esi-0x80]
	movaps [ebp-0x98], xmm0
	mov edi, esi
	mov esi, [esi-0x70]
	mov edi, [edi-0x6c]
	mov [ebp-0x30], esi
	mov [ebp-0x2c], edi
	movzx eax, word [edx]
	add eax, [ebp+0x8]
	movaps xmm4, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm3, [eax+0x20]
	movaps xmm5, [eax+0x30]
	shufps xmm0, xmm0, 0x0
	movaps [ebp-0x48], xmm0
	mulps xmm0, xmm4
	movaps [ebp-0x68], xmm0
	movaps xmm0, [ebp-0x98]
	shufps xmm0, xmm0, 0x55
	movaps [ebp-0x58], xmm0
	movaps xmm1, xmm0
	mulps xmm1, xmm6
	movaps xmm7, [ebp-0x98]
	shufps xmm7, xmm7, 0xaa
	movaps xmm0, xmm3
	mulps xmm0, xmm7
	addps xmm0, xmm5
	addps xmm1, [ebp-0x68]
	addps xmm0, xmm1
	movaps [ebp-0x68], xmm0
	unpckhps xmm0, [ebp-0x98]
	movaps xmm1, [ebp-0x68]
	shufps xmm1, xmm0, 0xc4
	movaps [ebp-0x68], xmm1
	movd xmm0, dword [ebx-0x68]
	movq [ebp-0x70], xmm0
	movq mm0, [ebp-0x70]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm4
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm6
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm3
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm5
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm1, xmm0
	cvtps2pi mm3, xmm1
	movd xmm1, dword [ebx-0x64]
	movq [ebp-0x78], xmm1
	movq mm0, [ebp-0x78]
	punpcklbw mm0, mm5
	movq mm2, mm0
	punpckhwd mm2, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm2
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm4
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm6, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm3, xmm1
	addps xmm0, xmm6
	addps xmm0, xmm3
	movaps xmm4, xmm0
	unpckhps xmm4, xmm5
	shufps xmm0, xmm4, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm0, xmm1
	packuswb mm1, mm3
	packuswb mm2, mm0
	movzx eax, word [edx+0x2]
	add eax, [ebp+0x8]
	movaps xmm4, [ebp-0x48]
	mulps xmm4, [eax]
	movaps xmm1, [ebp-0x58]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm7
	addps xmm0, [eax+0x30]
	addps xmm4, xmm1
	addps xmm4, xmm0
	movaps xmm0, xmm4
	unpckhps xmm0, [ebp-0x98]
	shufps xmm4, xmm0, 0xc4
	movsx eax, word [edx+0x4]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	punpckhwd mm3, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm3
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	mulps xmm4, xmm0
	movaps xmm1, [sse_one]
	subps xmm1, xmm0
	movaps xmm0, xmm1
	movzx eax, word [edx+0x6]
	add eax, [ebp+0x8]
	movaps xmm2, [ebp-0x48]
	mulps xmm2, [eax]
	movaps xmm6, [ebp-0x58]
	mulps xmm6, [eax+0x10]
	movaps xmm1, [eax+0x20]
	mulps xmm1, xmm7
	addps xmm1, [eax+0x30]
	addps xmm2, xmm6
	addps xmm2, xmm1
	movaps xmm1, xmm2
	unpckhps xmm1, [ebp-0x98]
	shufps xmm2, xmm1, 0xc4
	movsx eax, word [edx+0x8]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	punpckhwd mm3, mm4
	punpcklwd mm0, mm4
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm3
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm2
	addps xmm4, xmm1
	movzx eax, word [edx+0xa]
	add eax, [ebp+0x8]
	movaps xmm3, [ebp-0x48]
	mulps xmm3, [eax]
	movaps xmm1, [ebp-0x58]
	mulps xmm1, [eax+0x10]
	mulps xmm7, [eax+0x20]
	addps xmm7, [eax+0x30]
	addps xmm3, xmm1
	addps xmm3, xmm7
	movaps xmm5, xmm3
	unpckhps xmm5, [ebp-0x98]
	shufps xmm3, xmm5, 0xc4
	movsx eax, word [edx+0xc]
	movd mm3, eax
	pshufw mm3, mm3, 0x0
	movq mm0, mm3
	punpckhwd mm3, mm4
	punpcklwd mm0, mm4
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm3
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	subps xmm0, xmm1
	mulps xmm1, xmm3
	addps xmm4, xmm1
	mulps xmm0, [ebp-0x68]
	addps xmm4, xmm0
	movntps [ecx], xmm4
	movq mm0, [ebp-0x30]
	movntq [ecx+0x10], mm0
	packuswb mm1, mm2
	movntq [ecx+0x18], mm1
	add edx, 0xe
	add dword [ebp-0x34], 0x1
	add ebx, 0x20
	add dword [ebp-0x7c], 0x20
	add ecx, 0x20
	mov eax, [ebp-0x34]
	cmp [ebp-0x38], eax
	jnz R_SkinXSurfaceWeightSseBlock_30
	add [ebp-0x28], eax
	mov esi, [ebp-0x28]
	mov edx, [ebp+0x10]
	mov [edx], esi
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SkinXSurfaceWeightSse(GfxPackedVertex const*, XSurfaceVertexInfo const*, DObjSkelMat const*, GfxPackedVertex*)
R_SkinXSurfaceWeightSse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x38], eax
	mov ebx, edx
	mov [ebp-0x3c], ecx
	mov dword [ebp-0x1c], 0x0
	mov esi, [edx+0x8]
	movzx eax, word [edx]
	cmp ax, 0x0
	jz R_SkinXSurfaceWeightSse_10
	cwde
	mov [ebp-0x34], eax
	jg R_SkinXSurfaceWeightSse_20
	xor eax, eax
R_SkinXSurfaceWeightSse_100:
	mov [ebp-0x1c], eax
	movsx eax, word [ebx]
	lea esi, [esi+eax*2]
R_SkinXSurfaceWeightSse_10:
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz R_SkinXSurfaceWeightSse_30
R_SkinXSurfaceWeightSse_70:
	movzx eax, word [ebx+0x4]
	test ax, ax
	jnz R_SkinXSurfaceWeightSse_40
R_SkinXSurfaceWeightSse_60:
	movzx eax, word [ebx+0x6]
	test ax, ax
	jz R_SkinXSurfaceWeightSse_50
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	mov edx, esi
	mov eax, [ebp-0x38]
	call R_SkinXSurfaceWeightSseBlock
R_SkinXSurfaceWeightSse_50:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceWeightSse_40:
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	mov edx, esi
	mov eax, [ebp-0x38]
	call R_SkinXSurfaceWeightSseBlock
	movsx eax, word [ebx+0x4]
	lea eax, [eax+eax*4]
	lea esi, [esi+eax*2]
	jmp R_SkinXSurfaceWeightSse_60
R_SkinXSurfaceWeightSse_30:
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	mov edx, esi
	mov eax, [ebp-0x38]
	call R_SkinXSurfaceWeightSseBlock
	movsx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	lea esi, [esi+eax*2]
	jmp R_SkinXSurfaceWeightSse_70
R_SkinXSurfaceWeightSse_20:
	pxor mm5, mm5
	pxor mm4, mm4
	mov eax, [ebp-0x38]
	mov [ebp-0x5c], eax
	mov ecx, [ebp+0x8]
	xor edi, edi
	mov edx, eax
	jmp R_SkinXSurfaceWeightSse_80
R_SkinXSurfaceWeightSse_90:
	mov edx, eax
R_SkinXSurfaceWeightSse_80:
	prefetchnta [edx+0x80]
	movaps xmm2, [edx]
	mov eax, [edx+0x10]
	mov edx, [edx+0x14]
	mov [ebp-0x30], eax
	mov [ebp-0x2c], edx
	movzx eax, word [esi+edi*2]
	add eax, [ebp-0x3c]
	movaps xmm7, [eax]
	movaps xmm5, [eax+0x10]
	movaps xmm6, [eax+0x20]
	movaps xmm3, [eax+0x30]
	movaps xmm4, xmm2
	shufps xmm4, xmm2, 0x0
	mulps xmm4, xmm7
	movaps xmm1, xmm2
	shufps xmm1, xmm2, 0x55
	mulps xmm1, xmm5
	movaps xmm0, xmm2
	shufps xmm0, xmm2, 0xaa
	mulps xmm0, xmm6
	addps xmm0, xmm3
	addps xmm4, xmm1
	addps xmm4, xmm0
	movaps xmm0, xmm4
	unpckhps xmm0, xmm2
	shufps xmm4, xmm0, 0xc4
	mov eax, [ebp-0x5c]
	movd xmm0, dword [eax+0x18]
	movq [ebp-0x48], xmm0
	movq mm0, [ebp-0x48]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm2, xmm5
	shufps xmm1, xmm1, 0xaa
	mulps xmm1, xmm6
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm2, xmm0
	cvtps2pi mm3, xmm1
	movd xmm1, dword [eax+0x1c]
	movq [ebp-0x50], xmm1
	movq mm0, [ebp-0x50]
	punpcklbw mm0, mm5
	movq mm1, mm0
	punpckhwd mm1, mm4
	punpcklwd mm0, mm4
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	subps xmm0, [sse_encodeShift]
	divps xmm0, [sse_encodeScale]
	movaps xmm1, xmm0
	shufps xmm1, xmm0, 0xff
	mulps xmm1, xmm0
	movaps xmm0, xmm1
	shufps xmm0, xmm1, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm1
	shufps xmm2, xmm1, 0x55
	mulps xmm5, xmm2
	shufps xmm1, xmm1, 0xaa
	mulps xmm6, xmm1
	addps xmm0, xmm5
	addps xmm0, xmm6
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	mulps xmm0, [sse_encodeScale]
	addps xmm0, [sse_encodeShift]
	movaps xmm1, xmm0
	movhlps xmm1, xmm0
	cvtps2pi mm0, xmm0
	cvtps2pi mm1, xmm1
	packuswb mm2, mm3
	packuswb mm0, mm1
	movntps [ecx], xmm4
	movq mm1, [ebp-0x30]
	movntq [ecx+0x10], mm1
	packuswb mm2, mm0
	movntq [ecx+0x18], mm2
	add edi, 0x1
	add eax, 0x20
	mov [ebp-0x5c], eax
	add ecx, 0x20
	cmp [ebp-0x34], edi
	jnz R_SkinXSurfaceWeightSse_90
	mov eax, edi
	jmp R_SkinXSurfaceWeightSse_100
	nop


;R_SkinXSurfaceSkinnedSse(XSurface const*, DObjSkelMat const*, GfxPackedVertexNormal const*, GfxPackedVertexNormal*, void*)
R_SkinXSurfaceSkinnedSse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov [ebp-0xe8], eax
	mov [ebp-0xc8], edx
	mov edi, ecx
	mov edx, [ebp+0x8]
	test edx, edx
	jz R_SkinXSurfaceSkinnedSse_10
	test ecx, ecx
	jz R_SkinXSurfaceSkinnedSse_20
	cmp byte [eax+0x1], 0x0
	jnz R_SkinXSurfaceSkinnedSse_30
	mov ecx, [ebp+0xc]
	mov edx, [eax+0x1c]
	mov esi, [eax+0x20]
	test esi, esi
	jz R_SkinXSurfaceSkinnedSse_40
	mov dword [ebp-0xc4], 0x0
	mov dword [ebp-0x3c], 0x0
	jmp R_SkinXSurfaceSkinnedSse_50
R_SkinXSurfaceSkinnedSse_60:
	mov esi, ebx
	add dword [ebp-0xc4], 0x1
	add dword [ebp-0x3c], 0xc
	mov eax, [ebp-0xc4]
	cmp [esi+0x20], eax
	jbe R_SkinXSurfaceSkinnedSse_40
R_SkinXSurfaceSkinnedSse_50:
	mov eax, [ebp-0x3c]
	mov ebx, [ebp-0xe8]
	add eax, [ebx+0x24]
	movzx esi, word [eax+0x2]
	mov [ebp-0xe4], esi
	movzx eax, word [eax]
	add eax, [ebp-0xc8]
	movaps xmm7, [eax]
	movaps xmm6, [eax+0x10]
	movaps xmm5, [eax+0x20]
	movaps xmm4, [eax+0x30]
	test esi, esi
	jle R_SkinXSurfaceSkinnedSse_60
	xor eax, eax
R_SkinXSurfaceSkinnedSse_70:
	prefetchnta [edx+0x80]
	prefetchnta [edi+0x80]
	movaps xmm3, [edx]
	mov ebx, [edx+0x10]
	mov esi, [edx+0x14]
	mov [ebp-0xc0], ebx
	mov [ebp-0xbc], esi
	mov ebx, [edi]
	mov esi, [edi+0x4]
	mov [ebp-0xb8], ebx
	mov [ebp-0xb4], esi
	movaps xmm0, xmm3
	shufps xmm0, xmm3, 0x0
	mulps xmm0, xmm7
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 0x55
	mulps xmm2, xmm6
	movaps xmm1, xmm3
	shufps xmm1, xmm3, 0xaa
	mulps xmm1, xmm5
	addps xmm1, xmm4
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	movntps [ecx], xmm0
	movq mm0, [ebp-0xc0]
	movntq [ecx+0x10], mm0
	movq mm1, [ebp-0xb8]
	movntq [ecx+0x18], mm1
	mov ebx, [ebp+0x8]
	movntq [ebx], mm1
	add eax, 0x1
	add edx, 0x20
	add edi, 0x8
	add ecx, 0x20
	add ebx, 0x8
	mov [ebp+0x8], ebx
	cmp [ebp-0xe4], eax
	jnz R_SkinXSurfaceSkinnedSse_70
	mov esi, [ebp-0xe8]
	add dword [ebp-0xc4], 0x1
	add dword [ebp-0x3c], 0xc
	mov eax, [ebp-0xc4]
	cmp [esi+0x20], eax
	ja R_SkinXSurfaceSkinnedSse_50
R_SkinXSurfaceSkinnedSse_40:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceSkinnedSse_30:
	mov edx, [ebp-0xe8]
	add edx, 0x10
	mov [ebp-0xac], edx
	mov ecx, [ebp-0xe8]
	mov ecx, [ecx+0x1c]
	mov [ebp-0x60], ecx
	mov dword [ebp-0x1c], 0x0
	mov ebx, [edx+0x8]
	mov [ebp-0xa8], ebx
	mov esi, [ebp-0xe8]
	movzx eax, word [esi+0x10]
	cmp ax, 0x0
	jz R_SkinXSurfaceSkinnedSse_80
	cwde
	mov [ebp-0xa4], eax
	jg R_SkinXSurfaceSkinnedSse_90
	xor eax, eax
R_SkinXSurfaceSkinnedSse_200:
	mov [ebp-0x1c], eax
	mov edx, [ebp-0xac]
	movsx eax, word [edx]
	mov ecx, [ebp-0xa8]
	lea ecx, [ecx+eax*2]
	mov [ebp-0xa8], ecx
	mov ebx, edx
	movzx eax, word [ebx+0x2]
	test ax, ax
	jz R_SkinXSurfaceSkinnedSse_100
R_SkinXSurfaceSkinnedSse_140:
	cwde
	mov [ebp-0x88], eax
	mov esi, [ebp-0xa8]
	mov eax, [ebp-0x1c]
	mov [ebp-0x6c], eax
	mov ebx, [ebp-0x88]
	test ebx, ebx
	jg R_SkinXSurfaceSkinnedSse_110
	mov ecx, eax
R_SkinXSurfaceSkinnedSse_260:
	mov [ebp-0x1c], ecx
	mov ebx, [ebp-0xac]
	movsx eax, word [ebx+0x2]
	lea eax, [eax+eax*2]
	lea esi, [esi+eax*2]
	mov [ebp-0xa8], esi
	mov edx, ebx
R_SkinXSurfaceSkinnedSse_150:
	movzx eax, word [edx+0x4]
	test ax, ax
	jz R_SkinXSurfaceSkinnedSse_120
	cwde
	mov [ebp-0x64], eax
	mov ebx, [ebp-0xa8]
	mov ecx, [ebp-0x1c]
	mov [ebp-0x48], ecx
	test eax, eax
	jg R_SkinXSurfaceSkinnedSse_130
	mov esi, ebx
R_SkinXSurfaceSkinnedSse_230:
	mov [ebp-0x1c], ecx
	mov ebx, [ebp-0xac]
	movsx eax, word [ebx+0x4]
	lea eax, [eax+eax*4]
	lea esi, [esi+eax*2]
	mov [ebp-0xa8], esi
	mov edx, ebx
R_SkinXSurfaceSkinnedSse_120:
	movzx eax, word [edx+0x6]
	test ax, ax
	jz R_SkinXSurfaceSkinnedSse_40
	movsx ecx, ax
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov ebx, [ebp+0xc]
	mov [esp+0xc], ebx
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov eax, [ebp-0xc8]
	mov [esp], eax
	mov edx, [ebp-0xa8]
	mov eax, [ebp-0x60]
	call R_SkinXSurfaceWeightSseBlockInOut
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXSurfaceSkinnedSse_80:
	mov ebx, edx
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz R_SkinXSurfaceSkinnedSse_140
R_SkinXSurfaceSkinnedSse_100:
	mov edx, ebx
	jmp R_SkinXSurfaceSkinnedSse_150
R_SkinXSurfaceSkinnedSse_10:
	cmp byte [eax+0x1], 0x0
	jnz R_SkinXSurfaceSkinnedSse_160
	movzx edx, word [eax+0x2]
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, [ebp-0xc8]
	call R_SkinXSurfaceRigidSse
	jmp R_SkinXSurfaceSkinnedSse_40
R_SkinXSurfaceSkinnedSse_20:
	mov edx, [ebp-0xe8]
	cmp byte [edx+0x1], 0x0
	jnz R_SkinXSurfaceSkinnedSse_170
	mov eax, edx
	movzx edx, word [edx+0x2]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov esi, [ebp+0x8]
	mov [esp], esi
	mov ecx, [ebp-0xc8]
	call R_SkinXSurfaceRigidSseOut
	jmp R_SkinXSurfaceSkinnedSse_40
R_SkinXSurfaceSkinnedSse_160:
	mov edx, eax
	add edx, 0x10
	mov eax, [eax+0x1c]
	mov esi, [ebp+0xc]
	mov [esp], esi
	mov ecx, [ebp-0xc8]
	call R_SkinXSurfaceWeightSse
	jmp R_SkinXSurfaceSkinnedSse_40
R_SkinXSurfaceSkinnedSse_170:
	add edx, 0x10
	mov ecx, [ebp-0xe8]
	mov eax, [ecx+0x1c]
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov esi, [ebp+0x8]
	mov [esp], esi
	mov ecx, [ebp-0xc8]
	call R_SkinXSurfaceWeightSseOut
	jmp R_SkinXSurfaceSkinnedSse_40
R_SkinXSurfaceSkinnedSse_90:
	mov esi, [ebp-0x60]
	mov [ebp-0xdc], edi
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x8]
	mov dword [ebp-0x8c], 0x0
	mov eax, edi
	jmp R_SkinXSurfaceSkinnedSse_180
R_SkinXSurfaceSkinnedSse_190:
	mov eax, [ebp-0xdc]
R_SkinXSurfaceSkinnedSse_180:
	prefetchnta [esi+0x80]
	prefetchnta [eax+0x80]
	movaps xmm3, [esi]
	mov eax, [esi+0x10]
	mov edx, [esi+0x14]
	mov [ebp-0xa0], eax
	mov [ebp-0x9c], edx
	mov edx, [ebp-0xdc]
	mov eax, [edx]
	mov edx, [edx+0x4]
	mov [ebp-0x98], eax
	mov [ebp-0x94], edx
	mov eax, [ebp-0x8c]
	mov edx, [ebp-0xa8]
	movzx eax, word [edx+eax*2]
	mov [ebp-0xe0], eax
	add eax, [ebp-0xc8]
	movaps xmm0, xmm3
	shufps xmm0, xmm3, 0x0
	mulps xmm0, [eax]
	movaps xmm2, xmm3
	shufps xmm2, xmm3, 0x55
	mulps xmm2, [eax+0x10]
	movaps xmm1, xmm3
	shufps xmm1, xmm3, 0xaa
	mulps xmm1, [eax+0x20]
	addps xmm1, [eax+0x30]
	addps xmm0, xmm2
	addps xmm0, xmm1
	movaps xmm1, xmm0
	unpckhps xmm1, xmm3
	shufps xmm0, xmm1, 0xc4
	movntps [ebx], xmm0
	movq mm0, [ebp-0xa0]
	movntq [ebx+0x10], mm0
	movq mm1, [ebp-0x98]
	movntq [ebx+0x18], mm1
	movntq [ecx], mm1
	add dword [ebp-0x8c], 0x1
	add esi, 0x20
	add dword [ebp-0xdc], 0x8
	add ebx, 0x20
	add ecx, 0x8
	mov eax, [ebp-0x8c]
	cmp [ebp-0xa4], eax
	jnz R_SkinXSurfaceSkinnedSse_190
	jmp R_SkinXSurfaceSkinnedSse_200
R_SkinXSurfaceSkinnedSse_130:
	pxor mm3, mm3
	mov edx, ecx
	shl edx, 0x5
	mov esi, [ebp-0x60]
	lea esi, [esi+edx+0x80]
	mov [ebp-0x38], esi
	mov eax, ecx
	shl eax, 0x3
	lea ecx, [edi+eax+0x80]
	mov esi, [ebp+0xc]
	add esi, edx
	add eax, [ebp+0x8]
	mov [ebp-0x34], eax
	mov dword [ebp-0x5c], 0x0
	mov eax, [ebp-0x60]
	lea edx, [eax+edx+0x80]
	mov [ebp-0xdc], edx
	mov eax, edx
	jmp R_SkinXSurfaceSkinnedSse_210
R_SkinXSurfaceSkinnedSse_220:
	mov eax, [ebp-0xdc]
R_SkinXSurfaceSkinnedSse_210:
	mov edx, [ebp-0x38]
	prefetchnta [edx]
	prefetchnta [ecx]
	movaps xmm4, [eax-0x80]
	mov edx, eax
	mov eax, [eax-0x70]
	mov edx, [edx-0x6c]
	mov [ebp-0x58], eax
	mov [ebp-0x54], edx
	mov eax, [ecx-0x80]
	mov edx, [ecx-0x7c]
	mov [ebp-0x50], eax
	mov [ebp-0x4c], edx
	movzx eax, word [ebx]
	add eax, [ebp-0xc8]
	movaps xmm3, xmm4
	shufps xmm3, xmm4, 0x0
	movaps xmm6, [eax]
	mulps xmm6, xmm3
	movaps xmm0, xmm4
	shufps xmm0, xmm4, 0x55
	movaps [ebp-0xd8], xmm0
	movaps xmm1, xmm0
	mulps xmm1, [eax+0x10]
	movaps xmm5, xmm4
	shufps xmm5, xmm4, 0xaa
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm5
	addps xmm0, [eax+0x30]
	addps xmm6, xmm1
	addps xmm6, xmm0
	movaps xmm0, xmm6
	unpckhps xmm0, xmm4
	shufps xmm6, xmm0, 0xc4
	movzx eax, word [ebx+0x2]
	add eax, [ebp-0xc8]
	movaps xmm2, [eax]
	mulps xmm2, xmm3
	movaps xmm1, [ebp-0xd8]
	mulps xmm1, [eax+0x10]
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm5
	addps xmm0, [eax+0x30]
	addps xmm2, xmm1
	addps xmm2, xmm0
	movaps xmm0, xmm2
	unpckhps xmm0, xmm4
	shufps xmm2, xmm0, 0xc4
	movsx eax, word [ebx+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm3
	punpcklwd mm0, mm3
	xorps xmm1, xmm1
	cvtpi2ps xmm1, mm1
	movlhps xmm1, xmm1
	cvtpi2ps xmm1, mm0
	mulps xmm1, [sse_weightScale]
	movaps xmm7, [sse_one]
	subps xmm7, xmm1
	mulps xmm1, xmm2
	movzx eax, word [ebx+0x6]
	add eax, [ebp-0xc8]
	mulps xmm3, [eax]
	movaps xmm0, [ebp-0xd8]
	mulps xmm0, [eax+0x10]
	mulps xmm5, [eax+0x20]
	addps xmm5, [eax+0x30]
	addps xmm3, xmm0
	addps xmm3, xmm5
	movaps xmm0, xmm3
	unpckhps xmm0, xmm4
	shufps xmm3, xmm0, 0xc4
	movsx eax, word [ebx+0x8]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	movq mm2, mm1
	punpckhwd mm2, mm3
	punpcklwd mm0, mm3
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm2
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, [sse_weightScale]
	subps xmm7, xmm0
	mulps xmm0, xmm3
	addps xmm1, xmm0
	mulps xmm7, xmm6
	addps xmm1, xmm7
	movntps [esi], xmm1
	movq mm0, [ebp-0x58]
	movntq [esi+0x10], mm0
	movq mm1, [ebp-0x50]
	movntq [esi+0x18], mm1
	mov eax, [ebp-0x34]
	movntq [eax], mm1
	add ebx, 0xa
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x38], 0x20
	add dword [ebp-0xdc], 0x20
	add ecx, 0x8
	add esi, 0x20
	add eax, 0x8
	mov [ebp-0x34], eax
	mov edx, [ebp-0x5c]
	cmp [ebp-0x64], edx
	jnz R_SkinXSurfaceSkinnedSse_220
	add [ebp-0x48], edx
	mov ecx, [ebp-0x48]
	mov esi, [ebp-0xa8]
	jmp R_SkinXSurfaceSkinnedSse_230
R_SkinXSurfaceSkinnedSse_110:
	pxor mm2, mm2
	movaps xmm7, [sse_weightScale]
	shl eax, 0x5
	mov edx, [ebp-0x60]
	lea edx, [edx+eax+0x80]
	mov [ebp-0x30], edx
	mov edx, [ebp-0x6c]
	shl edx, 0x3
	lea ecx, [edi+edx+0x80]
	mov ebx, [ebp+0xc]
	add ebx, eax
	add edx, [ebp+0x8]
	mov [ebp-0x2c], edx
	mov dword [ebp-0x84], 0x0
	mov edx, [ebp-0x60]
	lea edx, [edx+eax+0x80]
	mov [ebp-0xdc], edx
	jmp R_SkinXSurfaceSkinnedSse_240
R_SkinXSurfaceSkinnedSse_250:
	mov edx, [ebp-0xdc]
R_SkinXSurfaceSkinnedSse_240:
	mov eax, [ebp-0x30]
	prefetchnta [eax]
	prefetchnta [ecx]
	movaps xmm3, [edx-0x80]
	mov eax, [edx-0x70]
	mov edx, [edx-0x6c]
	mov [ebp-0x80], eax
	mov [ebp-0x7c], edx
	mov eax, [ecx-0x80]
	mov edx, [ecx-0x7c]
	mov [ebp-0x78], eax
	mov [ebp-0x74], edx
	movzx eax, word [esi]
	add eax, [ebp-0xc8]
	movaps xmm1, xmm3
	shufps xmm1, xmm3, 0x0
	movaps xmm2, [eax]
	mulps xmm2, xmm1
	movaps xmm5, xmm3
	shufps xmm5, xmm3, 0x55
	movaps xmm6, [eax+0x10]
	mulps xmm6, xmm5
	movaps xmm4, xmm3
	shufps xmm4, xmm3, 0xaa
	movaps xmm0, [eax+0x20]
	mulps xmm0, xmm4
	addps xmm0, [eax+0x30]
	addps xmm2, xmm6
	addps xmm2, xmm0
	movaps xmm0, xmm2
	unpckhps xmm0, xmm3
	shufps xmm2, xmm0, 0xc4
	movzx eax, word [esi+0x2]
	add eax, [ebp-0xc8]
	mulps xmm1, [eax]
	mulps xmm5, [eax+0x10]
	mulps xmm4, [eax+0x20]
	addps xmm4, [eax+0x30]
	addps xmm1, xmm5
	addps xmm1, xmm4
	movaps xmm0, xmm1
	unpckhps xmm0, xmm3
	shufps xmm1, xmm0, 0xc4
	movsx eax, word [esi+0x4]
	movd mm1, eax
	pshufw mm1, mm1, 0x0
	movq mm0, mm1
	punpckhwd mm1, mm2
	punpcklwd mm0, mm2
	xorps xmm0, xmm0
	cvtpi2ps xmm0, mm1
	movlhps xmm0, xmm0
	cvtpi2ps xmm0, mm0
	mulps xmm0, xmm7
	subps xmm1, xmm2
	mulps xmm0, xmm1
	addps xmm2, xmm0
	movntps [ebx], xmm2
	movq mm0, [ebp-0x80]
	movntq [ebx+0x10], mm0
	movq mm1, [ebp-0x78]
	movntq [ebx+0x18], mm1
	mov eax, [ebp-0x2c]
	movntq [eax], mm1
	add esi, 0x6
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x30], 0x20
	add dword [ebp-0xdc], 0x20
	add ecx, 0x8
	add ebx, 0x20
	add eax, 0x8
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x84]
	cmp [ebp-0x88], edx
	jnz R_SkinXSurfaceSkinnedSse_250
	add [ebp-0x6c], edx
	mov ecx, [ebp-0x6c]
	mov esi, [ebp-0xa8]
	jmp R_SkinXSurfaceSkinnedSse_260
	nop


;R_SkinXModelCmd(void*)
R_SkinXModelCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x219c
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz R_SkinXModelCmd_10
	mov eax, sys_SSE
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SkinXModelCmd_20
R_SkinXModelCmd_150:
	mov byte [ebp-0x2149], 0x0
R_SkinXModelCmd_160:
	mov eax, gfxBuf
	movzx edx, byte [eax+0x24008c]
	mov [ebp-0x2125], dl
	mov ecx, [ebp+0x8]
	mov ecx, [ecx]
	mov [ebp-0x2144], ecx
	mov edx, [ebp+0x8]
	mov edx, [edx+0x4]
	mov [ebp-0x2140], edx
	mov ecx, [ebp+0x8]
	cmp word [ecx+0x18], 0x0
	jz R_SkinXModelCmd_10
	mov dword [ebp-0x213c], 0xffffffff
	mov dword [ebp-0x2148], 0x0
	mov byte [ebp-0x2126], 0x0
	mov [ebp-0x2150], eax
R_SkinXModelCmd_140:
	mov eax, [ebp-0x2144]
	mov [ebp-0x2134], eax
	cmp dword [eax], 0xfffffffd
	jz R_SkinXModelCmd_30
	movzx edx, byte [eax+0xc]
	mov [ebp-0x207c], edx
	cmp [ebp-0x213c], edx
	jz R_SkinXModelCmd_40
	mov ecx, [ebp-0x2144]
	movzx eax, byte [ecx+0xd]
	add eax, edx
	mov [ebp-0x2138], eax
	mov eax, edx
	shl eax, 0x5
	mov edx, [ecx+0x8]
	sub edx, eax
	mov ecx, [ebp-0x2138]
	cmp [ebp-0x207c], ecx
	jge R_SkinXModelCmd_50
	lea ebx, [edx+eax]
	mov esi, [ebp-0x2140]
	add esi, eax
	mov eax, [ebp-0x207c]
	shl eax, 0x6
	mov [ebp-0x2090], eax
	lea edx, [ebp-0x2078]
	add edx, eax
	mov [ebp-0x208c], edx
	mov edi, [ebp-0x207c]
	jmp R_SkinXModelCmd_60
R_SkinXModelCmd_80:
	lea eax, [ebp-0x30]
	mov [ebp-0x2154], eax
	mov [esp+0x8], eax
	mov eax, [ebx+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Vec3Scale
	movss xmm0, dword [ebp-0x30]
	movaps xmm4, xmm0
	mulss xmm4, [ebx]
	movss xmm3, dword [ebx+0x4]
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x2124], xmm1
	movss xmm1, dword [ebx+0x8]
	movaps xmm2, xmm0
	mulss xmm2, xmm1
	movss [ebp-0x2120], xmm2
	movss xmm2, dword [ebx+0xc]
	mulss xmm0, xmm2
	movss [ebp-0x211c], xmm0
	movss xmm0, dword [ebp-0x2c]
	mulss xmm3, xmm0
	movaps xmm6, xmm1
	mulss xmm6, xmm0
	movaps xmm5, xmm2
	mulss xmm5, xmm0
	movss xmm0, dword [ebp-0x28]
	mulss xmm1, xmm0
	mulss xmm2, xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm1
	movss xmm7, dword [_float_1_00000000]
	subss xmm7, xmm0
	movss xmm0, dword [ebp-0x2124]
	subss xmm0, xmm2
	movss [ebp-0x2098], xmm0
	movss xmm0, dword [ebp-0x2120]
	addss xmm0, xmm5
	movss [ebp-0x209c], xmm0
	addss xmm2, [ebp-0x2124]
	movss [ebp-0x20a0], xmm2
	addss xmm1, xmm4
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	movss [ebp-0x20a4], xmm2
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x211c]
	movss [ebp-0x20a8], xmm0
	movss xmm1, dword [ebp-0x2120]
	subss xmm1, xmm5
	movss [ebp-0x20ac], xmm1
	addss xmm6, [ebp-0x211c]
	movss [ebp-0x20b0], xmm6
	addss xmm4, xmm3
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm4
	movss [ebp-0x20b4], xmm2
	movss xmm3, dword [ebx+0x10]
	movss xmm1, dword [ebx+0x14]
	movss xmm2, dword [ebx+0x18]
	movaps xmm4, xmm7
	mulss xmm4, xmm3
	movss xmm0, dword [ebp-0x20a0]
	mulss xmm0, xmm1
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x20ac]
	mulss xmm0, xmm2
	addss xmm4, xmm0
	xorps xmm4, [sse_encodeScale+0x10]
	movss xmm0, dword [ebp-0x2098]
	mulss xmm0, xmm3
	movss [ebp-0x20b8], xmm0
	movss xmm0, dword [ebp-0x20a4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20b8]
	movss [ebp-0x20b8], xmm0
	movaps xmm0, xmm6
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20b8]
	movss [ebp-0x20b8], xmm0
	xor dword [ebp-0x20b8], 0x80000000
	mulss xmm3, [ebp-0x209c]
	mulss xmm1, [ebp-0x20a8]
	addss xmm1, xmm3
	mulss xmm2, [ebp-0x20b4]
	addss xmm2, xmm1
	movss [ebp-0x20bc], xmm2
	xor dword [ebp-0x20bc], 0x80000000
	mov eax, [ebp-0x2154]
	mov [esp+0x8], eax
	mov eax, [esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	movss [ebp-0x2178], xmm4
	movss [ebp-0x2188], xmm7
	call Vec3Scale
	movss xmm3, dword [ebp-0x30]
	movaps xmm0, xmm3
	mulss xmm0, [esi]
	movss [ebp-0x2118], xmm0
	movss xmm6, dword [esi+0x4]
	movaps xmm5, xmm3
	mulss xmm5, xmm6
	movss xmm1, dword [esi+0x8]
	movaps xmm2, xmm3
	mulss xmm2, xmm1
	movss [ebp-0x2114], xmm2
	movss xmm2, dword [esi+0xc]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0x2c]
	mulss xmm6, xmm0
	movss [ebp-0x2110], xmm6
	movaps xmm6, xmm1
	mulss xmm6, xmm0
	mulss xmm0, xmm2
	movss [ebp-0x210c], xmm0
	movss xmm0, dword [ebp-0x28]
	mulss xmm1, xmm0
	mulss xmm2, xmm0
	movss [ebp-0x218c], xmm2
	movss xmm0, dword [ebp-0x2110]
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	movss [ebp-0x78], xmm2
	movss xmm0, dword [ebp-0x218c]
	addss xmm0, xmm5
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x2114]
	subss xmm0, [ebp-0x210c]
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	subss xmm5, [ebp-0x218c]
	movss [ebp-0x68], xmm5
	addss xmm1, [ebp-0x2118]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm6
	movss [ebp-0x60], xmm0
	mov dword [ebp-0x5c], 0x0
	movss xmm0, dword [ebp-0x2114]
	addss xmm0, [ebp-0x210c]
	movss [ebp-0x58], xmm0
	subss xmm6, xmm3
	movss [ebp-0x54], xmm6
	movss xmm1, dword [ebp-0x2118]
	addss xmm1, [ebp-0x2110]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x50], xmm0
	mov dword [ebp-0x4c], 0x0
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	lea eax, [esi+0x10]
	mov [esp], eax
	call Vec3Copy
	mov dword [ebp-0x3c], 0x3f800000
	lea eax, [ebp-0x2078]
	add eax, [ebp-0x2090]
	movss xmm7, dword [ebp-0x2188]
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x78]
	movss xmm1, dword [ebp-0x2098]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x209c]
	mulss xmm1, [ebp-0x58]
	addss xmm0, xmm1
	movss [eax], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x74]
	movss xmm1, dword [ebp-0x2098]
	mulss xmm1, [ebp-0x64]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x209c]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm7, [ebp-0x70]
	movss xmm2, dword [ebp-0x2098]
	mulss xmm2, [ebp-0x60]
	addss xmm7, xmm2
	movss xmm0, dword [ebp-0x209c]
	mulss xmm0, [ebp-0x50]
	addss xmm7, xmm0
	movss [eax+0x8], xmm7
	movss xmm0, dword [ebp-0x20a0]
	mulss xmm0, [ebp-0x78]
	movss xmm1, dword [ebp-0x20a4]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20a8]
	mulss xmm1, [ebp-0x58]
	addss xmm0, xmm1
	movss [eax+0x10], xmm0
	movss xmm0, dword [ebp-0x20a0]
	mulss xmm0, [ebp-0x74]
	movss xmm1, dword [ebp-0x20a4]
	mulss xmm1, [ebp-0x64]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20a8]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movss [eax+0x14], xmm0
	movss xmm1, dword [ebp-0x20a0]
	mulss xmm1, [ebp-0x70]
	movss xmm0, dword [ebp-0x20a4]
	mulss xmm0, [ebp-0x60]
	addss xmm0, xmm1
	movss [ebp-0x20a0], xmm0
	movss xmm2, dword [ebp-0x20a8]
	mulss xmm2, [ebp-0x50]
	addss xmm0, xmm2
	movss [eax+0x18], xmm0
	movss xmm0, dword [ebp-0x20ac]
	mulss xmm0, [ebp-0x78]
	movss xmm1, dword [ebp-0x20b0]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20b4]
	mulss xmm1, [ebp-0x58]
	addss xmm0, xmm1
	movss [eax+0x20], xmm0
	movss xmm0, dword [ebp-0x20ac]
	mulss xmm0, [ebp-0x74]
	movss xmm1, dword [ebp-0x20b0]
	mulss xmm1, [ebp-0x64]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20b4]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	movss [eax+0x24], xmm0
	movss xmm0, dword [ebp-0x20ac]
	mulss xmm0, [ebp-0x70]
	movss [ebp-0x20ac], xmm0
	movss xmm1, dword [ebp-0x20b0]
	mulss xmm1, [ebp-0x60]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20b4]
	mulss xmm1, [ebp-0x50]
	addss xmm1, xmm0
	movss [eax+0x28], xmm1
	movss xmm4, dword [ebp-0x2178]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x78]
	movss xmm1, dword [ebp-0x20b8]
	mulss xmm1, [ebp-0x68]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20bc]
	mulss xmm1, [ebp-0x58]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x48]
	movss [eax+0x30], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x74]
	movss xmm1, dword [ebp-0x20b8]
	mulss xmm1, [ebp-0x64]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20bc]
	mulss xmm1, [ebp-0x54]
	addss xmm0, xmm1
	addss xmm0, [ebp-0x44]
	movss [eax+0x34], xmm0
	mulss xmm4, [ebp-0x70]
	movss xmm1, dword [ebp-0x20b8]
	mulss xmm1, [ebp-0x60]
	addss xmm4, xmm1
	movss xmm1, dword [ebp-0x20bc]
	mulss xmm1, [ebp-0x50]
	addss xmm4, xmm1
	addss xmm4, [ebp-0x40]
	movss [eax+0x38], xmm4
	mov eax, [ebp-0x208c]
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x1c], 0x0
	mov dword [eax+0x2c], 0x0
	mov dword [eax+0x3c], 0x3f800000
R_SkinXModelCmd_70:
	add edi, 0x1
	add ebx, 0x20
	add esi, 0x20
	add dword [ebp-0x2090], 0x40
	add dword [ebp-0x208c], 0x40
	cmp edi, [ebp-0x2138]
	jz R_SkinXModelCmd_50
R_SkinXModelCmd_60:
	mov edx, edi
	sar edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	mov ecx, [ebp+0x8]
	test [ecx+edx*4+0x8], eax
	jz R_SkinXModelCmd_70
	cmp byte [ebp-0x2126], 0x0
	jz R_SkinXModelCmd_80
	emms
	mov byte [ebp-0x2126], 0x0
	jmp R_SkinXModelCmd_80
R_SkinXModelCmd_50:
	mov edx, [ebp-0x207c]
	mov [ebp-0x213c], edx
R_SkinXModelCmd_40:
	mov ecx, [ebp-0x2144]
	mov eax, [ecx]
	cmp eax, 0xfffffffe
	jz R_SkinXModelCmd_90
	add ecx, 0x18
	mov [ebp-0x2144], ecx
	mov edx, [ebp-0x2134]
	mov edx, [edx+0x4]
	mov [ebp-0x212c], edx
	test eax, eax
	js R_SkinXModelCmd_100
	mov ecx, [ebp-0x2150]
	add eax, [ecx+0x5c]
	mov [ebp-0x2130], eax
R_SkinXModelCmd_320:
	cmp byte [ebp-0x2149], 0x0
	jz R_SkinXModelCmd_110
	cmp byte [ebp-0x2126], 0x0
	jz R_SkinXModelCmd_120
R_SkinXModelCmd_330:
	cmp byte [ebp-0x2125], 0x0
	jnz R_SkinXModelCmd_130
	xor ecx, ecx
	xor ebx, ebx
R_SkinXModelCmd_250:
	mov eax, [ebp-0x213c]
	shl eax, 0x6
	lea edx, [ebp+eax-0x2078]
	mov eax, [ebp-0x2130]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, [ebp-0x212c]
	call R_SkinXSurfaceSkinnedSse
R_SkinXModelCmd_170:
	add dword [ebp-0x2148], 0x1
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x18]
	cmp [ebp-0x2148], eax
	jb R_SkinXModelCmd_140
	cmp byte [ebp-0x2126], 0x0
	jz R_SkinXModelCmd_10
	emms
R_SkinXModelCmd_10:
	add esp, 0x219c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXModelCmd_20:
	mov eax, r_sse_skinning
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SkinXModelCmd_150
	mov byte [ebp-0x2149], 0x1
	jmp R_SkinXModelCmd_160
R_SkinXModelCmd_30:
	add dword [ebp-0x2144], 0x4
	jmp R_SkinXModelCmd_170
R_SkinXModelCmd_110:
	mov eax, [ebp-0x213c]
	shl eax, 0x6
	lea eax, [ebp+eax-0x2078]
	mov [ebp-0x20cc], eax
	mov edx, [ebp-0x212c]
	cmp byte [edx+0x1], 0x0
	jnz R_SkinXModelCmd_180
	mov esi, [ebp-0x2130]
	mov ebx, [edx+0x1c]
	mov ecx, [edx+0x20]
	test ecx, ecx
	jz R_SkinXModelCmd_170
	mov dword [ebp-0x2108], 0x0
	mov dword [ebp-0x2094], 0x0
	jmp R_SkinXModelCmd_190
R_SkinXModelCmd_200:
	mov edx, ecx
R_SkinXModelCmd_220:
	add dword [ebp-0x2108], 0x1
	add dword [ebp-0x2094], 0xc
	mov ecx, [ebp-0x2108]
	cmp ecx, [edx+0x20]
	jae R_SkinXModelCmd_170
R_SkinXModelCmd_190:
	mov eax, [ebp-0x2094]
	mov ecx, [ebp-0x212c]
	add eax, [ecx+0x24]
	movzx edx, word [eax+0x2]
	mov [ebp-0x2104], edx
	movzx eax, word [eax]
	add eax, [ebp-0x20cc]
	mov [ebp-0x2100], eax
	test edx, edx
	jle R_SkinXModelCmd_200
	xor edi, edi
R_SkinXModelCmd_210:
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	movss xmm0, dword [ebx+0xc]
	mov [esp+0x4], esi
	mov eax, [ebp-0x2100]
	mov [esp], eax
	mov eax, ebx
	call MatrixTransformVertexAndBasis
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	add edi, 0x1
	add ebx, 0x20
	add esi, 0x20
	cmp [ebp-0x2104], edi
	jnz R_SkinXModelCmd_210
	mov edx, [ebp-0x212c]
	jmp R_SkinXModelCmd_220
R_SkinXModelCmd_90:
	add dword [ebp-0x2144], 0x38
	jmp R_SkinXModelCmd_170
R_SkinXModelCmd_130:
	mov ecx, [ebp-0x2134]
	mov edx, [ecx]
	test edx, edx
	js R_SkinXModelCmd_230
	sar edx, 0x5
	mov ecx, [ebp-0x2150]
	mov eax, [ecx+0x240080]
	lea ebx, [eax+edx*8]
R_SkinXModelCmd_370:
	mov eax, [ebp-0x2134]
	mov edx, [eax+0x14]
	test edx, edx
	js R_SkinXModelCmd_240
	sar edx, 0x5
	mov ecx, [ebp-0x2150]
	mov eax, [ecx+0x240084]
	lea ecx, [eax+edx*8]
	jmp R_SkinXModelCmd_250
R_SkinXModelCmd_180:
	mov eax, edx
	add eax, 0x10
	mov [ebp-0x20fc], eax
	mov edx, [ebp-0x212c]
	mov edx, [edx+0x1c]
	mov [ebp-0x2088], edx
	mov ecx, [eax+0x8]
	mov [ebp-0x20f4], ecx
	mov edx, [ebp-0x212c]
	movzx eax, word [edx+0x10]
	test ax, ax
	jnz R_SkinXModelCmd_260
	mov dword [ebp-0x20f8], 0x0
R_SkinXModelCmd_350:
	mov ecx, [ebp-0x20fc]
	movzx edx, word [ecx+0x2]
	test dx, dx
	jz R_SkinXModelCmd_270
	mov eax, [ebp-0x20f8]
	shl eax, 0x5
	mov esi, [ebp-0x2130]
	add esi, eax
	movsx edx, dx
	mov [ebp-0x20e8], edx
	mov ebx, [ebp-0x2088]
	add ebx, eax
	mov edi, [ebp-0x20f4]
	test edx, edx
	jg R_SkinXModelCmd_280
	mov edx, edi
R_SkinXModelCmd_410:
	mov ecx, [ebp-0x20fc]
	movsx eax, word [ecx+0x2]
	add [ebp-0x20f8], eax
	lea eax, [eax+eax*2]
	lea edx, [edx+eax*2]
	mov [ebp-0x20f4], edx
R_SkinXModelCmd_270:
	movzx edx, word [ecx+0x4]
	test dx, dx
	jz R_SkinXModelCmd_290
	mov eax, [ebp-0x20f8]
	shl eax, 0x5
	mov edi, [ebp-0x2130]
	add edi, eax
	movsx edx, dx
	mov [ebp-0x20dc], edx
	mov ebx, [ebp-0x2088]
	add ebx, eax
	mov esi, [ebp-0x20f4]
	test edx, edx
	jg R_SkinXModelCmd_300
	mov ecx, esi
R_SkinXModelCmd_390:
	mov edx, [ebp-0x20fc]
	movsx eax, word [edx+0x4]
	add [ebp-0x20f8], eax
	lea eax, [eax+eax*4]
	lea ecx, [ecx+eax*2]
	mov [ebp-0x20f4], ecx
	mov eax, edx
R_SkinXModelCmd_360:
	movzx edx, word [eax+0x6]
	test dx, dx
	jz R_SkinXModelCmd_170
	mov eax, [ebp-0x20f8]
	shl eax, 0x5
	mov edi, [ebp-0x2130]
	add edi, eax
	movsx edx, dx
	mov [ebp-0x20c8], edx
	mov ebx, [ebp-0x2088]
	add ebx, eax
	mov esi, [ebp-0x20f4]
	test edx, edx
	jle R_SkinXModelCmd_170
	mov dword [ebp-0x20c4], 0x0
	lea edx, [ebp-0x30]
	mov [ebp-0x2154], edx
R_SkinXModelCmd_310:
	movzx eax, word [esi]
	add eax, [ebp-0x20cc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	movss xmm0, dword [ebx+0xc]
	mov [esp+0x4], edi
	mov [esp], eax
	mov eax, ebx
	call MatrixTransformVertexAndBasis
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, xmm0
	movss [ebp-0x20c0], xmm1
	movzx edx, word [esi+0x2]
	add edx, [ebp-0x20cc]
	lea ecx, [ebp-0x24]
	mov eax, ebx
	call LocalMatrixTransformVector43
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x20c0]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Scale
	movzx eax, word [esi+0x8]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00001526]
	movss xmm1, dword [ebp-0x20c0]
	addss xmm1, xmm0
	movss [ebp-0x2080], xmm1
	movzx edx, word [esi+0x6]
	add edx, [ebp-0x20cc]
	mov ecx, [ebp-0x2154]
	mov eax, ebx
	movss [ebp-0x2168], xmm0
	call LocalMatrixTransformVector43
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov edx, [ebp-0x2154]
	mov [esp+0x8], edx
	movss xmm0, dword [ebp-0x2168]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Mad
	movzx eax, word [esi+0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, xmm0
	movss [ebp-0x2084], xmm1
	movzx edx, word [esi+0xa]
	add edx, [ebp-0x20cc]
	mov ecx, [ebp-0x2154]
	mov eax, ebx
	call LocalMatrixTransformVector43
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov edx, [ebp-0x2154]
	mov [esp+0x8], edx
	movss xmm0, dword [ebp-0x2084]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Mad
	mov [esp+0xc], edi
	mov [esp+0x8], edi
	movss xmm0, dword [ebp-0x2080]
	addss xmm0, [ebp-0x2084]
	movss [ebp-0x2080], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x2080]
	movss [esp+0x4], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Vec3Mad
	mov eax, [ebx+0x10]
	mov [edi+0x10], eax
	mov eax, [ebx+0x14]
	mov [edi+0x14], eax
	add dword [ebp-0x20c4], 0x1
	add ebx, 0x20
	add esi, 0xe
	add edi, 0x20
	mov edx, [ebp-0x20c4]
	cmp [ebp-0x20c8], edx
	jnz R_SkinXModelCmd_310
	jmp R_SkinXModelCmd_170
R_SkinXModelCmd_100:
	mov eax, [ebp-0x2134]
	mov eax, [eax+0x14]
	mov [ebp-0x2130], eax
	jmp R_SkinXModelCmd_320
R_SkinXModelCmd_120:
	emms
	mov byte [ebp-0x2126], 0x1
	jmp R_SkinXModelCmd_330
R_SkinXModelCmd_260:
	mov edi, ecx
	cwde
	mov [ebp-0x20f0], eax
	test eax, eax
	jg R_SkinXModelCmd_340
	mov edx, ecx
R_SkinXModelCmd_430:
	mov eax, [ebp-0x20fc]
	movsx eax, word [eax]
	mov [ebp-0x20f8], eax
	lea edx, [edx+eax*2]
	mov [ebp-0x20f4], edx
	jmp R_SkinXModelCmd_350
R_SkinXModelCmd_290:
	mov eax, ecx
	jmp R_SkinXModelCmd_360
R_SkinXModelCmd_240:
	xor ecx, ecx
	jmp R_SkinXModelCmd_250
R_SkinXModelCmd_230:
	xor ebx, ebx
	jmp R_SkinXModelCmd_370
R_SkinXModelCmd_300:
	mov dword [ebp-0x20d8], 0x0
	lea eax, [ebp-0x30]
	mov [ebp-0x2154], eax
R_SkinXModelCmd_380:
	movzx eax, word [esi]
	add eax, [ebp-0x20cc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	movss xmm0, dword [ebx+0xc]
	mov [esp+0x4], edi
	mov [esp], eax
	mov eax, ebx
	call MatrixTransformVertexAndBasis
	movzx eax, word [esi+0x4]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, xmm0
	movss [ebp-0x20d0], xmm1
	movzx edx, word [esi+0x2]
	add edx, [ebp-0x20cc]
	lea ecx, [ebp-0x24]
	mov eax, ebx
	call LocalMatrixTransformVector43
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x20d0]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Scale
	movzx eax, word [esi+0x8]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00001526]
	mulss xmm1, xmm0
	movss [ebp-0x20d4], xmm1
	movzx edx, word [esi+0x6]
	add edx, [ebp-0x20cc]
	mov ecx, [ebp-0x2154]
	mov eax, ebx
	call LocalMatrixTransformVector43
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov edx, [ebp-0x2154]
	mov [esp+0x8], edx
	movss xmm0, dword [ebp-0x20d4]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Mad
	mov [esp+0xc], edi
	mov [esp+0x8], edi
	movss xmm1, dword [ebp-0x20d0]
	addss xmm1, [ebp-0x20d4]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [esp+0x4], xmm0
	lea edx, [ebp-0x24]
	mov [esp], edx
	call Vec3Mad
	mov eax, [ebx+0x10]
	mov [edi+0x10], eax
	mov eax, [ebx+0x14]
	mov [edi+0x14], eax
	add dword [ebp-0x20d8], 0x1
	add ebx, 0x20
	add esi, 0xa
	add edi, 0x20
	mov ecx, [ebp-0x20d8]
	cmp [ebp-0x20dc], ecx
	jnz R_SkinXModelCmd_380
	mov ecx, [ebp-0x20f4]
	jmp R_SkinXModelCmd_390
R_SkinXModelCmd_280:
	mov dword [ebp-0x20e4], 0x0
	lea eax, [ebp-0x30]
	mov [ebp-0x2154], eax
R_SkinXModelCmd_400:
	movzx eax, word [edi]
	add eax, [ebp-0x20cc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	movss xmm0, dword [ebx+0xc]
	mov [esp+0x4], esi
	mov [esp], eax
	mov eax, ebx
	call MatrixTransformVertexAndBasis
	movzx eax, word [edi+0x4]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00001526]
	movss [ebp-0x20e0], xmm0
	movzx edx, word [edi+0x2]
	add edx, [ebp-0x20cc]
	mov ecx, [ebp-0x2154]
	mov eax, ebx
	call LocalMatrixTransformVector43
	mov eax, [ebp-0x2154]
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x20e0]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call Vec3Scale
	mov [esp+0xc], esi
	mov [esp+0x8], esi
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x20e0]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x2154]
	mov [esp], eax
	call Vec3Mad
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	add dword [ebp-0x20e4], 0x1
	add ebx, 0x20
	add edi, 0x6
	add esi, 0x20
	mov edx, [ebp-0x20e4]
	cmp [ebp-0x20e8], edx
	jnz R_SkinXModelCmd_400
	mov edx, [ebp-0x20f4]
	jmp R_SkinXModelCmd_410
R_SkinXModelCmd_340:
	mov ebx, [ebp-0x2088]
	mov esi, [ebp-0x2130]
	mov dword [ebp-0x20ec], 0x0
R_SkinXModelCmd_420:
	movzx eax, word [edi]
	add eax, [ebp-0x20cc]
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	movss xmm0, dword [ebx+0xc]
	mov [esp+0x4], esi
	mov [esp], eax
	mov eax, ebx
	call MatrixTransformVertexAndBasis
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	add dword [ebp-0x20ec], 0x1
	add ebx, 0x20
	add edi, 0x2
	add esi, 0x20
	mov ecx, [ebp-0x20ec]
	cmp [ebp-0x20f0], ecx
	jnz R_SkinXModelCmd_420
	mov edx, [ebp-0x20f4]
	jmp R_SkinXModelCmd_430
	add [eax], al


;Vec3Mad(float const*, float, float const*, float*)
Vec3Mad:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	mov edx, [ebp+0x14]
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	addss xmm0, [ecx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ecx+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ecx+0x8]
	movss [edx+0x8], xmm1
	pop ebp
	ret
	nop


;Vec3Copy(float const*, float*)
Vec3Copy:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	pop ebp
	ret
	nop


;Vec3Scale(float const*, float, float*)
Vec3Scale:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movss xmm1, dword [ebp+0xc]
	mov eax, [ebp+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [edx]
	movss [eax], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [edx+0x8]
	movss [eax+0x8], xmm1
	pop ebp
	ret


;Initialized global or static variables of r_model_skin:
SECTION .data


;Initialized constant data of r_model_skin:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000
sse_weightScale: dd 0x37800000, 0x37800000, 0x37800000, 0x37800000
sse_one: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000
sse_encodeShift: dd 0x42fe0000, 0x42fe0000, 0x42fe0000, 0xc3400000
sse_encodeScale: dd 0x42fe0000, 0x42fe0000, 0x42fe0000, 0x437f0000, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_model_skin:
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


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_127_00000000:		dd 0x42fe0000	; 127
_float_127_50000000:		dd 0x42ff0000	; 127.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00001526:		dd 0x37800000	; 1.52588e-05

