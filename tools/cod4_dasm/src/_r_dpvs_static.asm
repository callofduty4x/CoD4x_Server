;Imports of r_dpvs_static:
	extern r_drawDecals
	extern rgp
	extern r_showPortals
	extern colorLtYellow
	extern frontEndDataOut
	extern R_AddDebugBox

;Exports of r_dpvs_static:
	global _GLOBAL__I__Z35R_AddCellStaticSurfacesInFrustumCmdPv
	global g_surfaceVisData
	global g_smodelVisData
	global R_AddAabbTreeSurfacesInFrustum_r
	global R_AddSkySurfacesDpvs
	global R_AddCellStaticSurfacesInFrustumCmd


SECTION .text


;global constructors keyed to R_AddCellStaticSurfacesInFrustumCmd(void*)
_GLOBAL__I__Z35R_AddCellStaticSurfacesInFrustumCmdPv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


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


;R_AddAabbTreeSurfacesInFrustum_r(GfxAabbTree const*, DpvsClipPlaneSet const*)
R_AddAabbTreeSurfacesInFrustum_r:
R_AddAabbTreeSurfacesInFrustum_r_440:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10c
	mov esi, eax
	mov edi, edx
	mov eax, [edx+0x40]
	mov [ebp-0x108], eax
	test eax, eax
	jz R_AddAabbTreeSurfacesInFrustum_r_10
	mov ecx, [edx]
	movss xmm3, dword [ecx+0xc]
	movss xmm6, dword [ecx]
	movzx eax, byte [ecx+0x10]
	movss xmm5, dword [ecx+0x4]
	movzx edx, byte [ecx+0x11]
	movss xmm4, dword [ecx+0x8]
	movzx ebx, byte [ecx+0x12]
	movaps xmm0, xmm5
	mulss xmm0, [edx+esi]
	movaps xmm1, xmm6
	mulss xmm1, [eax+esi]
	addss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+esi]
	addss xmm0, xmm1
	pxor xmm7, xmm7
	ucomiss xmm7, xmm0
	jae R_AddAabbTreeSurfacesInFrustum_r_20
	mov [ebp-0xb0], edi
	mov dword [ebp-0x10c], 0x0
	mov dword [ebp-0xb8], 0x0
	jmp R_AddAabbTreeSurfacesInFrustum_r_30
R_AddAabbTreeSurfacesInFrustum_r_50:
	add dword [ebp-0x10c], 0x1
	mov edx, [ebp-0x10c]
	cmp [ebp-0x108], edx
	jz R_AddAabbTreeSurfacesInFrustum_r_40
R_AddAabbTreeSurfacesInFrustum_r_60:
	mov edx, [ebp-0xb0]
	mov ecx, [edx+0x4]
	movss xmm3, dword [ecx+0xc]
	movss xmm6, dword [ecx]
	movzx eax, byte [ecx+0x10]
	movss xmm5, dword [ecx+0x4]
	movzx edx, byte [ecx+0x11]
	movss xmm4, dword [ecx+0x8]
	movzx ebx, byte [ecx+0x12]
	add dword [ebp-0xb0], 0x4
	movaps xmm2, xmm4
	mulss xmm2, [ebx+esi]
	movaps xmm1, xmm5
	mulss xmm1, [edx+esi]
	movaps xmm0, xmm6
	mulss xmm0, [eax+esi]
	addss xmm0, xmm3
	addss xmm1, xmm0
	addss xmm2, xmm1
	ucomiss xmm7, xmm2
	jae R_AddAabbTreeSurfacesInFrustum_r_20
R_AddAabbTreeSurfacesInFrustum_r_30:
	mov edi, esi
	sub edi, eax
	mulss xmm6, [edi+0xc]
	addss xmm3, xmm6
	mov eax, esi
	sub eax, edx
	mulss xmm5, [eax+0x14]
	addss xmm3, xmm5
	mov eax, esi
	sub eax, ebx
	mulss xmm4, [eax+0x1c]
	addss xmm3, xmm4
	ucomiss xmm3, xmm7
	jae R_AddAabbTreeSurfacesInFrustum_r_50
	mov eax, [ebp-0xb8]
	mov [ebp+eax*4-0x5c], ecx
	add eax, 0x1
	mov [ebp-0xb8], eax
	add dword [ebp-0x10c], 0x1
	mov edx, [ebp-0x10c]
	cmp [ebp-0x108], edx
	jnz R_AddAabbTreeSurfacesInFrustum_r_60
R_AddAabbTreeSurfacesInFrustum_r_40:
	mov eax, [ebp-0xb8]
	test eax, eax
	jz R_AddAabbTreeSurfacesInFrustum_r_10
	movzx eax, word [esi+0x18]
	test ax, ax
	jz R_AddAabbTreeSurfacesInFrustum_r_70
	movzx eax, ax
	mov [ebp-0x100], eax
	mov ecx, [ebp-0x5c]
	mov [ebp-0xac], ecx
	add esi, [esi+0x28]
	mov [ebp-0xb4], esi
	mov dword [ebp-0x104], 0x0
	mov esi, ecx
R_AddAabbTreeSurfacesInFrustum_r_180:
	mov dword [ebp-0x60], 0x0
	movss xmm2, dword [esi+0xc]
	movss xmm5, dword [esi]
	movzx eax, byte [esi+0x10]
	movss xmm4, dword [esi+0x4]
	movzx ebx, byte [esi+0x11]
	movss xmm3, dword [esi+0x8]
	movzx ecx, byte [esi+0x12]
	movaps xmm0, xmm5
	mov edi, [ebp-0xb4]
	mulss xmm0, [eax+edi]
	addss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, [edi+ebx]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [edi+ecx]
	addss xmm0, xmm1
	ucomiss xmm7, xmm0
	jae R_AddAabbTreeSurfacesInFrustum_r_80
	mov edx, esi
	xor edi, edi
	pxor xmm6, xmm6
	jmp R_AddAabbTreeSurfacesInFrustum_r_90
R_AddAabbTreeSurfacesInFrustum_r_110:
	lea esi, [edi+0x1]
	cmp [ebp-0xb8], esi
	jz R_AddAabbTreeSurfacesInFrustum_r_100
R_AddAabbTreeSurfacesInFrustum_r_120:
	mov edx, [ebp+edi*4-0x58]
	movss xmm2, dword [edx+0xc]
	movss xmm5, dword [edx]
	movzx eax, byte [edx+0x10]
	movss xmm4, dword [edx+0x4]
	movzx ebx, byte [edx+0x11]
	movss xmm3, dword [edx+0x8]
	movzx ecx, byte [edx+0x12]
	movaps xmm0, xmm5
	mov edi, [ebp-0xb4]
	mulss xmm0, [eax+edi]
	addss xmm0, xmm2
	movaps xmm1, xmm4
	mulss xmm1, [ebx+edi]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ecx+edi]
	addss xmm0, xmm1
	ucomiss xmm6, xmm0
	jae R_AddAabbTreeSurfacesInFrustum_r_80
	mov edi, esi
R_AddAabbTreeSurfacesInFrustum_r_90:
	mov esi, [ebp-0xb4]
	sub esi, eax
	mulss xmm5, [esi+0xc]
	addss xmm2, xmm5
	mov eax, [ebp-0xb4]
	sub eax, ebx
	mulss xmm4, [eax+0x14]
	addss xmm2, xmm4
	mov eax, [ebp-0xb4]
	sub eax, ecx
	mulss xmm3, [eax+0x1c]
	addss xmm2, xmm3
	ucomiss xmm2, xmm7
	jae R_AddAabbTreeSurfacesInFrustum_r_110
	mov eax, [ebp-0x60]
	mov [ebp+eax*4-0xa0], edx
	add eax, 0x1
	mov [ebp-0x60], eax
	lea esi, [edi+0x1]
	cmp [ebp-0xb8], esi
	jnz R_AddAabbTreeSurfacesInFrustum_r_120
R_AddAabbTreeSurfacesInFrustum_r_100:
	mov edi, [ebp-0x60]
	test edi, edi
	jnz R_AddAabbTreeSurfacesInFrustum_r_130
	mov edi, [ebp-0xb4]
	movzx eax, word [edi+0x22]
	movzx esi, ax
	test ax, ax
	jz R_AddAabbTreeSurfacesInFrustum_r_140
	mov ebx, [edi+0x24]
	mov ecx, [g_smodelVisData]
	xor edx, edx
R_AddAabbTreeSurfacesInFrustum_r_150:
	movzx eax, word [ebx+edx*2]
	mov byte [ecx+eax], 0x1
	add edx, 0x1
	cmp esi, edx
	ja R_AddAabbTreeSurfacesInFrustum_r_150
R_AddAabbTreeSurfacesInFrustum_r_140:
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_160
	mov eax, [ebp-0xb4]
	movzx edx, word [eax+0x20]
	movzx ecx, word [eax+0x1e]
R_AddAabbTreeSurfacesInFrustum_r_460:
	test ecx, ecx
	jz R_AddAabbTreeSurfacesInFrustum_r_80
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x28c]
	lea esi, [eax+edx*2]
	mov ebx, [g_surfaceVisData]
	xor edx, edx
R_AddAabbTreeSurfacesInFrustum_r_170:
	movzx eax, word [esi+edx*2]
	mov byte [ebx+eax], 0x1
	add edx, 0x1
	cmp ecx, edx
	jnz R_AddAabbTreeSurfacesInFrustum_r_170
R_AddAabbTreeSurfacesInFrustum_r_80:
	add dword [ebp-0x104], 0x1
	add dword [ebp-0xb4], 0x2c
	mov eax, [ebp-0x104]
	cmp [ebp-0x100], eax
	jbe R_AddAabbTreeSurfacesInFrustum_r_20
	pxor xmm7, xmm7
	mov esi, [ebp-0xac]
	jmp R_AddAabbTreeSurfacesInFrustum_r_180
R_AddAabbTreeSurfacesInFrustum_r_10:
	movzx eax, word [esi+0x22]
	movzx edi, ax
	test ax, ax
	jnz R_AddAabbTreeSurfacesInFrustum_r_190
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_200
R_AddAabbTreeSurfacesInFrustum_r_240:
	movzx edx, word [esi+0x20]
	movzx ecx, word [esi+0x1e]
R_AddAabbTreeSurfacesInFrustum_r_220:
	test ecx, ecx
	jz R_AddAabbTreeSurfacesInFrustum_r_20
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x28c]
	lea esi, [eax+edx*2]
	mov ebx, [g_surfaceVisData]
	xor edx, edx
R_AddAabbTreeSurfacesInFrustum_r_210:
	movzx eax, word [esi+edx*2]
	mov byte [ebx+eax], 0x1
	add edx, 0x1
	cmp ecx, edx
	jnz R_AddAabbTreeSurfacesInFrustum_r_210
R_AddAabbTreeSurfacesInFrustum_r_20:
	add esp, 0x10c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAabbTreeSurfacesInFrustum_r_200:
	movzx edx, word [esi+0x1c]
	movzx ecx, word [esi+0x1a]
	jmp R_AddAabbTreeSurfacesInFrustum_r_220
R_AddAabbTreeSurfacesInFrustum_r_190:
	mov ebx, [esi+0x24]
	mov ecx, [g_smodelVisData]
	xor edx, edx
R_AddAabbTreeSurfacesInFrustum_r_230:
	movzx eax, word [ebx+edx*2]
	mov byte [ecx+eax], 0x1
	add edx, 0x1
	cmp edi, edx
	ja R_AddAabbTreeSurfacesInFrustum_r_230
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_200
	jmp R_AddAabbTreeSurfacesInFrustum_r_240
R_AddAabbTreeSurfacesInFrustum_r_130:
	mov edi, [ebp-0xb4]
	movzx eax, word [edi+0x18]
	test ax, ax
	jnz R_AddAabbTreeSurfacesInFrustum_r_250
	movzx eax, word [edi+0x22]
	movzx ecx, ax
	mov [ebp-0xf8], ecx
	test ax, ax
	jz R_AddAabbTreeSurfacesInFrustum_r_260
	mov esi, [edi+0x24]
	mov [ebp-0xfc], esi
	mov edi, [g_smodelVisData]
	mov [ebp-0xf4], edi
	xor esi, esi
	mov edx, edi
	jmp R_AddAabbTreeSurfacesInFrustum_r_270
R_AddAabbTreeSurfacesInFrustum_r_290:
	mov eax, [ebp-0xf0]
	mov byte [eax], 0x1
R_AddAabbTreeSurfacesInFrustum_r_280:
	add esi, 0x1
	cmp [ebp-0xf8], esi
	jbe R_AddAabbTreeSurfacesInFrustum_r_260
	mov edx, [ebp-0xf4]
R_AddAabbTreeSurfacesInFrustum_r_270:
	mov eax, [ebp-0xfc]
	movzx ecx, word [eax+esi*2]
	add edx, ecx
	mov [ebp-0xf0], edx
	cmp byte [edx], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_280
	mov edi, rgp
	mov edx, [edi+0x20a0]
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	add ecx, [edx+0x290]
	mov edi, [ebp-0x60]
	test edi, edi
	jz R_AddAabbTreeSurfacesInFrustum_r_290
	mov eax, [ebp-0xa0]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+edx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+edx]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jae R_AddAabbTreeSurfacesInFrustum_r_280
	xor eax, eax
	jmp R_AddAabbTreeSurfacesInFrustum_r_300
R_AddAabbTreeSurfacesInFrustum_r_310:
	mov eax, ebx
R_AddAabbTreeSurfacesInFrustum_r_300:
	lea ebx, [eax+0x1]
	cmp ebx, edi
	jz R_AddAabbTreeSurfacesInFrustum_r_290
	mov eax, [ebp+eax*4-0x9c]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jb R_AddAabbTreeSurfacesInFrustum_r_310
	jmp R_AddAabbTreeSurfacesInFrustum_r_280
R_AddAabbTreeSurfacesInFrustum_r_70:
	movzx eax, word [esi+0x22]
	movzx edx, ax
	mov [ebp-0xd4], edx
	test ax, ax
	jz R_AddAabbTreeSurfacesInFrustum_r_320
	mov ecx, [esi+0x24]
	mov [ebp-0xd8], ecx
	mov edi, [g_smodelVisData]
	mov [ebp-0xd0], edi
	mov edi, [ebp-0x5c]
	mov dword [ebp-0xdc], 0x0
	mov eax, [ebp-0xdc]
	mov edx, ecx
R_AddAabbTreeSurfacesInFrustum_r_370:
	movzx ecx, word [edx+eax*2]
	mov eax, [ebp-0xd0]
	add eax, ecx
	mov [ebp-0xcc], eax
	cmp byte [eax], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_330
	mov eax, rgp
	mov edx, [eax+0x20a0]
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	add ecx, [edx+0x290]
	movzx eax, byte [edi+0x10]
	movss xmm1, dword [edi]
	mulss xmm1, [eax+ecx]
	addss xmm1, [edi+0xc]
	movzx eax, byte [edi+0x11]
	movss xmm0, dword [edi+0x4]
	mulss xmm0, [ecx+eax]
	addss xmm1, xmm0
	movzx eax, byte [edi+0x12]
	movss xmm0, dword [edi+0x8]
	mulss xmm0, [ecx+eax]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jae R_AddAabbTreeSurfacesInFrustum_r_330
	xor eax, eax
	jmp R_AddAabbTreeSurfacesInFrustum_r_340
R_AddAabbTreeSurfacesInFrustum_r_360:
	mov eax, ebx
R_AddAabbTreeSurfacesInFrustum_r_340:
	lea ebx, [eax+0x1]
	cmp [ebp-0xb8], ebx
	jz R_AddAabbTreeSurfacesInFrustum_r_350
	mov eax, [ebp+eax*4-0x58]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jb R_AddAabbTreeSurfacesInFrustum_r_360
R_AddAabbTreeSurfacesInFrustum_r_330:
	add dword [ebp-0xdc], 0x1
	mov ecx, [ebp-0xdc]
	cmp [ebp-0xd4], ecx
	jbe R_AddAabbTreeSurfacesInFrustum_r_320
	mov eax, ecx
	mov edx, [ebp-0xd8]
	jmp R_AddAabbTreeSurfacesInFrustum_r_370
R_AddAabbTreeSurfacesInFrustum_r_320:
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_380
	movzx edx, word [esi+0x20]
	movzx esi, word [esi+0x1e]
	mov [ebp-0xc4], esi
R_AddAabbTreeSurfacesInFrustum_r_470:
	mov ebx, [ebp-0xc4]
	test ebx, ebx
	jz R_AddAabbTreeSurfacesInFrustum_r_20
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x28c]
	lea edx, [eax+edx*2]
	mov [ebp-0xc8], edx
	mov edi, [g_surfaceVisData]
	mov [ebp-0xc0], edi
	mov esi, [ebp-0x5c]
	xor edi, edi
R_AddAabbTreeSurfacesInFrustum_r_430:
	movzx eax, word [edx+edi*2]
	mov ecx, [ebp-0xc0]
	add ecx, eax
	mov [ebp-0xbc], ecx
	cmp byte [ecx], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_390
	mov ecx, rgp
	mov edx, [ecx+0x20a0]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	add eax, [edx+0x294]
	lea ecx, [eax+0x18]
	movzx edx, byte [esi+0x10]
	movss xmm1, dword [esi]
	mulss xmm1, [edx+ecx]
	addss xmm1, [esi+0xc]
	movzx edx, byte [esi+0x11]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [eax+edx+0x18]
	addss xmm1, xmm0
	movzx edx, byte [esi+0x12]
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [eax+edx+0x18]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jae R_AddAabbTreeSurfacesInFrustum_r_390
	xor eax, eax
	jmp R_AddAabbTreeSurfacesInFrustum_r_400
R_AddAabbTreeSurfacesInFrustum_r_420:
	mov eax, ebx
R_AddAabbTreeSurfacesInFrustum_r_400:
	lea ebx, [eax+0x1]
	cmp [ebp-0xb8], ebx
	jz R_AddAabbTreeSurfacesInFrustum_r_410
	mov eax, [ebp+eax*4-0x58]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jb R_AddAabbTreeSurfacesInFrustum_r_420
R_AddAabbTreeSurfacesInFrustum_r_390:
	add edi, 0x1
	cmp [ebp-0xc4], edi
	jz R_AddAabbTreeSurfacesInFrustum_r_20
	mov edx, [ebp-0xc8]
	jmp R_AddAabbTreeSurfacesInFrustum_r_430
R_AddAabbTreeSurfacesInFrustum_r_250:
	mov ebx, edi
	movzx edi, ax
	add ebx, [ebx+0x28]
	xor esi, esi
R_AddAabbTreeSurfacesInFrustum_r_450:
	lea edx, [ebp-0xa0]
	mov eax, ebx
	call R_AddAabbTreeSurfacesInFrustum_r_440
	add esi, 0x1
	add ebx, 0x2c
	cmp edi, esi
	ja R_AddAabbTreeSurfacesInFrustum_r_450
	jmp R_AddAabbTreeSurfacesInFrustum_r_80
R_AddAabbTreeSurfacesInFrustum_r_160:
	mov ecx, [ebp-0xb4]
	movzx edx, word [ecx+0x1c]
	movzx ecx, word [ecx+0x1a]
	jmp R_AddAabbTreeSurfacesInFrustum_r_460
R_AddAabbTreeSurfacesInFrustum_r_380:
	movzx edx, word [esi+0x1c]
	movzx esi, word [esi+0x1a]
	mov [ebp-0xc4], esi
	jmp R_AddAabbTreeSurfacesInFrustum_r_470
R_AddAabbTreeSurfacesInFrustum_r_410:
	mov eax, [ebp-0xbc]
	mov byte [eax], 0x1
	jmp R_AddAabbTreeSurfacesInFrustum_r_390
R_AddAabbTreeSurfacesInFrustum_r_350:
	mov edx, [ebp-0xcc]
	mov byte [edx], 0x1
	jmp R_AddAabbTreeSurfacesInFrustum_r_330
R_AddAabbTreeSurfacesInFrustum_r_260:
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_480
	mov ecx, [ebp-0xb4]
	movzx edx, word [ecx+0x20]
	movzx esi, word [ecx+0x1e]
	mov [ebp-0xe8], esi
R_AddAabbTreeSurfacesInFrustum_r_540:
	mov esi, [ebp-0xe8]
	test esi, esi
	jz R_AddAabbTreeSurfacesInFrustum_r_80
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov eax, [eax+0x28c]
	lea edx, [eax+edx*2]
	mov [ebp-0xec], edx
	mov esi, [g_surfaceVisData]
	mov [ebp-0xe4], esi
	xor esi, esi
	mov edi, edx
	jmp R_AddAabbTreeSurfacesInFrustum_r_490
R_AddAabbTreeSurfacesInFrustum_r_510:
	mov edi, [ebp-0xe0]
	mov byte [edi], 0x1
R_AddAabbTreeSurfacesInFrustum_r_500:
	add esi, 0x1
	cmp [ebp-0xe8], esi
	jz R_AddAabbTreeSurfacesInFrustum_r_80
	mov edi, [ebp-0xec]
R_AddAabbTreeSurfacesInFrustum_r_490:
	movzx edx, word [edi+esi*2]
	mov eax, [ebp-0xe4]
	add eax, edx
	mov [ebp-0xe0], eax
	cmp byte [eax], 0x0
	jnz R_AddAabbTreeSurfacesInFrustum_r_500
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	lea ecx, [edx+edx*2]
	shl ecx, 0x4
	add ecx, [eax+0x294]
	lea ebx, [ecx+0x18]
	mov edi, [ebp-0x60]
	test edi, edi
	jz R_AddAabbTreeSurfacesInFrustum_r_510
	mov eax, [ebp-0xa0]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ebx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+edx+0x18]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+edx+0x18]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jae R_AddAabbTreeSurfacesInFrustum_r_500
	xor eax, eax
	jmp R_AddAabbTreeSurfacesInFrustum_r_520
R_AddAabbTreeSurfacesInFrustum_r_530:
	mov eax, ecx
R_AddAabbTreeSurfacesInFrustum_r_520:
	lea ecx, [eax+0x1]
	cmp ecx, edi
	jz R_AddAabbTreeSurfacesInFrustum_r_510
	mov eax, [ebp+eax*4-0x9c]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ebx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	ucomiss xmm7, xmm1
	jb R_AddAabbTreeSurfacesInFrustum_r_530
	jmp R_AddAabbTreeSurfacesInFrustum_r_500
R_AddAabbTreeSurfacesInFrustum_r_480:
	mov edi, [ebp-0xb4]
	movzx edx, word [edi+0x1c]
	movzx eax, word [edi+0x1a]
	mov [ebp-0xe8], eax
	jmp R_AddAabbTreeSurfacesInFrustum_r_540
	nop


;R_AddSkySurfacesDpvs(DpvsPlane const*, int)
R_AddSkySurfacesDpvs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x198
	mov eax, rgp
	mov ebx, [eax+0x20a0]
	mov eax, [ebx+0x270]
	mov [g_smodelVisData], eax
	mov edx, [ebx+0x27c]
	mov [ebp-0x1a4], edx
	mov [g_surfaceVisData], edx
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jle R_AddSkySurfacesDpvs_10
	mov edx, [ebp+0x8]
	xor esi, esi
	lea ecx, [ebp-0x190]
R_AddSkySurfacesDpvs_20:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov [ebp+esi*4-0x50], ecx
	add esi, 0x1
	add ecx, 0x14
	add edx, 0x14
	cmp [ebp+0xc], esi
	jnz R_AddSkySurfacesDpvs_20
R_AddSkySurfacesDpvs_10:
	mov edx, [ebx+0x20]
	test edx, edx
	jle R_AddSkySurfacesDpvs_30
	mov esi, [ebp-0x50]
	xor edi, edi
	pxor xmm3, xmm3
	jmp R_AddSkySurfacesDpvs_40
R_AddSkySurfacesDpvs_60:
	mov eax, [ebp-0x1a0]
	mov byte [eax], 0x1
R_AddSkySurfacesDpvs_50:
	add edi, 0x1
	mov edx, rgp
	mov ebx, [edx+0x20a0]
	cmp edi, [ebx+0x20]
	jge R_AddSkySurfacesDpvs_30
R_AddSkySurfacesDpvs_40:
	mov eax, [ebx+0x24]
	mov eax, [eax+edi*4]
	mov edx, [ebp-0x1a4]
	add edx, eax
	mov [ebp-0x1a0], edx
	cmp byte [edx], 0x0
	jnz R_AddSkySurfacesDpvs_50
	lea edx, [eax+eax*2]
	shl edx, 0x4
	add edx, [ebx+0x294]
	lea ecx, [edx+0x18]
	mov eax, [ebp+0xc]
	test eax, eax
	jz R_AddSkySurfacesDpvs_60
	movzx eax, byte [esi+0x10]
	movss xmm1, dword [esi]
	mulss xmm1, [eax+ecx]
	addss xmm1, [esi+0xc]
	movzx eax, byte [esi+0x11]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [edx+eax+0x18]
	addss xmm1, xmm0
	movzx eax, byte [esi+0x12]
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [edx+eax+0x18]
	addss xmm1, xmm0
	movaps xmm2, xmm3
	ucomiss xmm3, xmm1
	jae R_AddSkySurfacesDpvs_50
	xor eax, eax
	jmp R_AddSkySurfacesDpvs_70
R_AddSkySurfacesDpvs_80:
	mov eax, ebx
R_AddSkySurfacesDpvs_70:
	lea ebx, [eax+0x1]
	cmp [ebp+0xc], ebx
	jbe R_AddSkySurfacesDpvs_60
	mov eax, [ebp+eax*4-0x4c]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb R_AddSkySurfacesDpvs_80
	add edi, 0x1
	mov edx, rgp
	mov ebx, [edx+0x20a0]
	cmp edi, [ebx+0x20]
	jl R_AddSkySurfacesDpvs_40
R_AddSkySurfacesDpvs_30:
	add esp, 0x198
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AddCellStaticSurfacesInFrustumCmd(void*)
R_AddCellStaticSurfacesInFrustumCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov eax, [ebp+0x8]
	movzx edx, word [eax+0xa]
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov ebx, [eax+edx*4+0x270]
	mov [ebp-0x224], ebx
	mov [g_smodelVisData], ebx
	mov edx, [eax+edx*4+0x27c]
	mov [ebp-0x220], edx
	mov [g_surfaceVisData], edx
	mov esi, [ebp+0x8]
	mov esi, [esi+0x4]
	mov [ebp-0x228], esi
	mov edi, [esi+0x1c]
	test edi, edi
	jz R_AddCellStaticSurfacesInFrustumCmd_10
	mov eax, [ebp+0x8]
	movzx esi, byte [eax+0x8]
	mov eax, [eax]
	mov ecx, esi
	movzx ecx, cl
	mov [ebp-0x21c], ecx
	mov ebx, esi
	test bl, bl
	jz R_AddCellStaticSurfacesInFrustumCmd_20
	mov edx, eax
	xor ebx, ebx
	lea ecx, [ebp-0x1e0]
R_AddCellStaticSurfacesInFrustumCmd_30:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov [ebp+ebx*4-0x5c], ecx
	add ebx, 0x1
	add ecx, 0x14
	add edx, 0x14
	cmp [ebp-0x21c], ebx
	ja R_AddCellStaticSurfacesInFrustumCmd_30
R_AddCellStaticSurfacesInFrustumCmd_20:
	mov dword [ebp-0x60], 0x0
	mov eax, esi
	test al, al
	jz R_AddCellStaticSurfacesInFrustumCmd_40
	mov edx, [ebp-0x5c]
	movss xmm3, dword [edx+0xc]
	movss xmm6, dword [edx]
	movzx eax, byte [edx+0x10]
	movss xmm5, dword [edx+0x4]
	movzx esi, byte [edx+0x11]
	movss xmm4, dword [edx+0x8]
	movzx ebx, byte [edx+0x12]
	movaps xmm0, xmm4
	mulss xmm0, [edi+ebx]
	movaps xmm1, xmm6
	mulss xmm1, [edi+eax]
	addss xmm1, xmm3
	movaps xmm2, xmm5
	mulss xmm2, [edi+esi]
	addss xmm1, xmm2
	addss xmm0, xmm1
	pxor xmm2, xmm2
	ucomiss xmm2, xmm0
	jae R_AddCellStaticSurfacesInFrustumCmd_50
	mov dword [ebp-0x22c], 0x0
	jmp R_AddCellStaticSurfacesInFrustumCmd_60
R_AddCellStaticSurfacesInFrustumCmd_70:
	mov ebx, [ebp-0x22c]
	add ebx, 0x1
	mov [ebp-0x1ec], ebx
	cmp [ebp-0x21c], ebx
	jbe R_AddCellStaticSurfacesInFrustumCmd_40
R_AddCellStaticSurfacesInFrustumCmd_80:
	mov ecx, [ebp-0x22c]
	mov edx, [ebp+ecx*4-0x58]
	movss xmm3, dword [edx+0xc]
	movss xmm6, dword [edx]
	movzx eax, byte [edx+0x10]
	movss xmm5, dword [edx+0x4]
	movzx esi, byte [edx+0x11]
	movss xmm4, dword [edx+0x8]
	movzx ebx, byte [edx+0x12]
	movaps xmm0, xmm5
	mulss xmm0, [esi+edi]
	movaps xmm1, xmm6
	mulss xmm1, [eax+edi]
	addss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+ebx]
	addss xmm0, xmm1
	ucomiss xmm2, xmm0
	jae R_AddCellStaticSurfacesInFrustumCmd_50
	mov ecx, [ebp-0x1ec]
	mov [ebp-0x22c], ecx
R_AddCellStaticSurfacesInFrustumCmd_60:
	mov ecx, edi
	sub ecx, eax
	mulss xmm6, [ecx+0xc]
	addss xmm3, xmm6
	mov eax, edi
	sub eax, esi
	mulss xmm5, [eax+0x14]
	addss xmm3, xmm5
	mov eax, edi
	sub eax, ebx
	mulss xmm4, [eax+0x1c]
	addss xmm3, xmm4
	ucomiss xmm3, xmm2
	jae R_AddCellStaticSurfacesInFrustumCmd_70
	mov eax, [ebp-0x60]
	mov [ebp+eax*4-0xa0], edx
	add eax, 0x1
	mov [ebp-0x60], eax
	mov ebx, [ebp-0x22c]
	add ebx, 0x1
	mov [ebp-0x1ec], ebx
	cmp [ebp-0x21c], ebx
	ja R_AddCellStaticSurfacesInFrustumCmd_80
R_AddCellStaticSurfacesInFrustumCmd_40:
	mov eax, [ebp-0x60]
	test eax, eax
	jz R_AddCellStaticSurfacesInFrustumCmd_90
	movzx eax, word [edi+0x18]
	test ax, ax
	jnz R_AddCellStaticSurfacesInFrustumCmd_100
	movzx eax, word [edi+0x22]
	movzx ecx, ax
	mov [ebp-0x210], ecx
	test ax, ax
	jz R_AddCellStaticSurfacesInFrustumCmd_110
	mov ebx, [edi+0x24]
	mov [ebp-0x214], ebx
	xor esi, esi
	pxor xmm3, xmm3
	mov eax, ebx
	jmp R_AddCellStaticSurfacesInFrustumCmd_120
R_AddCellStaticSurfacesInFrustumCmd_140:
	mov edx, [ebp-0x20c]
	mov byte [edx], 0x1
R_AddCellStaticSurfacesInFrustumCmd_130:
	add esi, 0x1
	cmp [ebp-0x210], esi
	jbe R_AddCellStaticSurfacesInFrustumCmd_110
	mov eax, [ebp-0x214]
R_AddCellStaticSurfacesInFrustumCmd_120:
	movzx ecx, word [eax+esi*2]
	mov edx, [ebp-0x224]
	add edx, ecx
	mov [ebp-0x20c], edx
	cmp byte [edx], 0x0
	jnz R_AddCellStaticSurfacesInFrustumCmd_130
	mov ebx, rgp
	mov edx, [ebx+0x20a0]
	lea eax, [ecx*4]
	shl ecx, 0x5
	sub ecx, eax
	add ecx, [edx+0x290]
	mov eax, [ebp-0x60]
	mov [ebp-0x208], eax
	test eax, eax
	jz R_AddCellStaticSurfacesInFrustumCmd_140
	mov eax, [ebp-0xa0]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+edx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+edx]
	addss xmm1, xmm0
	movaps xmm2, xmm3
	ucomiss xmm3, xmm1
	jae R_AddCellStaticSurfacesInFrustumCmd_130
	xor eax, eax
	jmp R_AddCellStaticSurfacesInFrustumCmd_150
R_AddCellStaticSurfacesInFrustumCmd_160:
	mov eax, ebx
R_AddCellStaticSurfacesInFrustumCmd_150:
	lea ebx, [eax+0x1]
	cmp ebx, [ebp-0x208]
	jz R_AddCellStaticSurfacesInFrustumCmd_140
	mov eax, [ebp+eax*4-0x9c]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ecx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ecx]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb R_AddCellStaticSurfacesInFrustumCmd_160
	jmp R_AddCellStaticSurfacesInFrustumCmd_130
R_AddCellStaticSurfacesInFrustumCmd_90:
	movzx eax, word [edi+0x22]
	movzx ebx, ax
	test ax, ax
	jz R_AddCellStaticSurfacesInFrustumCmd_170
	mov ecx, [edi+0x24]
	xor edx, edx
R_AddCellStaticSurfacesInFrustumCmd_180:
	movzx eax, word [ecx+edx*2]
	mov esi, [ebp-0x224]
	mov byte [esi+eax], 0x1
	add edx, 0x1
	cmp ebx, edx
	ja R_AddCellStaticSurfacesInFrustumCmd_180
R_AddCellStaticSurfacesInFrustumCmd_170:
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddCellStaticSurfacesInFrustumCmd_190
	movzx edx, word [edi+0x20]
	movzx ecx, word [edi+0x1e]
R_AddCellStaticSurfacesInFrustumCmd_320:
	test ecx, ecx
	jz R_AddCellStaticSurfacesInFrustumCmd_200
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0x28c]
	lea ebx, [eax+edx*2]
	xor edx, edx
R_AddCellStaticSurfacesInFrustumCmd_210:
	movzx eax, word [ebx+edx*2]
	mov esi, [ebp-0x220]
	mov byte [esi+eax], 0x1
	add edx, 0x1
	cmp ecx, edx
	jnz R_AddCellStaticSurfacesInFrustumCmd_210
R_AddCellStaticSurfacesInFrustumCmd_200:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0x228], eax
	mov ecx, eax
	mov ebx, eax
	mov ecx, [ecx+0x28]
	mov [ebp-0x1f8], ecx
	mov ebx, [ebx+0x2c]
	mov [ebp-0x1f4], ebx
	test ecx, ecx
	jnz R_AddCellStaticSurfacesInFrustumCmd_220
R_AddCellStaticSurfacesInFrustumCmd_230:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCellStaticSurfacesInFrustumCmd_50:
	mov ecx, [ebp-0x228]
	mov ebx, [ebp-0x228]
R_AddCellStaticSurfacesInFrustumCmd_340:
	mov ecx, [ecx+0x28]
	mov [ebp-0x1f8], ecx
	mov ebx, [ebx+0x2c]
	mov [ebp-0x1f4], ebx
	test ecx, ecx
	jz R_AddCellStaticSurfacesInFrustumCmd_230
R_AddCellStaticSurfacesInFrustumCmd_220:
	mov dword [ebp-0x1f0], 0x0
R_AddCellStaticSurfacesInFrustumCmd_280:
	mov esi, [ebp+0x8]
	movzx edi, byte [esi+0x8]
	mov edx, [esi]
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov esi, [ebp-0x1f4]
	mov ebx, [esi]
	shl ebx, 0x5
	add ebx, [eax+0x298]
	test edi, edi
	jg R_AddCellStaticSurfacesInFrustumCmd_240
R_AddCellStaticSurfacesInFrustumCmd_290:
	mov eax, r_showPortals
	mov eax, [eax]
	test byte [eax+0xc], 0x1
	jnz R_AddCellStaticSurfacesInFrustumCmd_250
R_AddCellStaticSurfacesInFrustumCmd_310:
	mov ecx, [ebx+0x18]
	test ecx, ecx
	jz R_AddCellStaticSurfacesInFrustumCmd_260
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov edx, [ebx+0x1c]
	mov eax, [eax+0x28c]
	lea esi, [eax+edx*2]
	test ecx, ecx
	jle R_AddCellStaticSurfacesInFrustumCmd_260
	mov ecx, [g_surfaceVisData]
	xor edx, edx
R_AddCellStaticSurfacesInFrustumCmd_270:
	movzx eax, word [esi+edx*2]
	mov byte [ecx+eax], 0x1
	add edx, 0x1
	cmp edx, [ebx+0x18]
	jl R_AddCellStaticSurfacesInFrustumCmd_270
R_AddCellStaticSurfacesInFrustumCmd_260:
	add dword [ebp-0x1f4], 0x4
	add dword [ebp-0x1f0], 0x1
	mov ecx, [ebp-0x1f8]
	cmp [ebp-0x1f0], ecx
	jnz R_AddCellStaticSurfacesInFrustumCmd_280
	jmp R_AddCellStaticSurfacesInFrustumCmd_230
R_AddCellStaticSurfacesInFrustumCmd_240:
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+ebx]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+eax]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+eax]
	addss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	jae R_AddCellStaticSurfacesInFrustumCmd_260
	lea ecx, [edx+0x20]
	mov esi, 0x1
R_AddCellStaticSurfacesInFrustumCmd_300:
	cmp edi, esi
	jz R_AddCellStaticSurfacesInFrustumCmd_290
	mov eax, ecx
	add esi, 0x1
	add ecx, 0x14
	movzx edx, byte [eax+0x4]
	movss xmm1, dword [eax-0xc]
	mulss xmm1, [edx+ebx]
	addss xmm1, [eax]
	movzx edx, byte [eax+0x5]
	movss xmm0, dword [eax-0x8]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x6]
	movss xmm0, dword [eax-0x4]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb R_AddCellStaticSurfacesInFrustumCmd_300
	add dword [ebp-0x1f4], 0x4
	add dword [ebp-0x1f0], 0x1
	mov ecx, [ebp-0x1f8]
	cmp [ebp-0x1f0], ecx
	jnz R_AddCellStaticSurfacesInFrustumCmd_280
	jmp R_AddCellStaticSurfacesInFrustumCmd_230
R_AddCellStaticSurfacesInFrustumCmd_250:
	mov eax, colorLtYellow
	mov [esp+0xc], eax
	lea eax, [ebx+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e71c
	mov [esp], eax
	call R_AddDebugBox
	jmp R_AddCellStaticSurfacesInFrustumCmd_310
R_AddCellStaticSurfacesInFrustumCmd_190:
	movzx edx, word [edi+0x1c]
	movzx ecx, word [edi+0x1a]
	jmp R_AddCellStaticSurfacesInFrustumCmd_320
R_AddCellStaticSurfacesInFrustumCmd_100:
	movzx eax, ax
	mov [ebp-0x218], eax
	mov ebx, edi
	add ebx, [edi+0x28]
	xor esi, esi
	lea edi, [ebp-0xa0]
R_AddCellStaticSurfacesInFrustumCmd_330:
	mov edx, edi
	mov eax, ebx
	call R_AddAabbTreeSurfacesInFrustum_r
	add esi, 0x1
	add ebx, 0x2c
	cmp [ebp-0x218], esi
	ja R_AddCellStaticSurfacesInFrustumCmd_330
R_AddCellStaticSurfacesInFrustumCmd_360:
	mov edx, [ebp+0x8]
	mov edx, [edx+0x4]
	mov [ebp-0x228], edx
	mov ecx, edx
	mov ebx, edx
	jmp R_AddCellStaticSurfacesInFrustumCmd_340
R_AddCellStaticSurfacesInFrustumCmd_10:
	mov ecx, esi
	mov ebx, esi
	jmp R_AddCellStaticSurfacesInFrustumCmd_340
R_AddCellStaticSurfacesInFrustumCmd_110:
	mov eax, r_drawDecals
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AddCellStaticSurfacesInFrustumCmd_350
	movzx edx, word [edi+0x20]
	movzx edi, word [edi+0x1e]
	mov [ebp-0x200], edi
R_AddCellStaticSurfacesInFrustumCmd_430:
	mov eax, [ebp-0x200]
	test eax, eax
	jz R_AddCellStaticSurfacesInFrustumCmd_360
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	mov eax, [eax+0x28c]
	lea edx, [eax+edx*2]
	mov [ebp-0x204], edx
	xor esi, esi
	pxor xmm3, xmm3
	mov ebx, edx
	jmp R_AddCellStaticSurfacesInFrustumCmd_370
R_AddCellStaticSurfacesInFrustumCmd_400:
	mov ebx, [ebp-0x1fc]
	mov byte [ebx], 0x1
R_AddCellStaticSurfacesInFrustumCmd_390:
	add esi, 0x1
	cmp [ebp-0x200], esi
	jz R_AddCellStaticSurfacesInFrustumCmd_380
	mov ebx, [ebp-0x204]
R_AddCellStaticSurfacesInFrustumCmd_370:
	movzx edx, word [ebx+esi*2]
	mov eax, [ebp-0x220]
	add eax, edx
	mov [ebp-0x1fc], eax
	cmp byte [eax], 0x0
	jnz R_AddCellStaticSurfacesInFrustumCmd_390
	mov ecx, rgp
	mov eax, [ecx+0x20a0]
	lea ecx, [edx+edx*2]
	shl ecx, 0x4
	add ecx, [eax+0x294]
	lea ebx, [ecx+0x18]
	mov edi, [ebp-0x60]
	test edi, edi
	jz R_AddCellStaticSurfacesInFrustumCmd_400
	mov eax, [ebp-0xa0]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [eax]
	mulss xmm1, [edx+ebx]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+edx+0x18]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+edx+0x18]
	addss xmm1, xmm0
	movaps xmm2, xmm3
	ucomiss xmm3, xmm1
	jae R_AddCellStaticSurfacesInFrustumCmd_390
	xor eax, eax
	jmp R_AddCellStaticSurfacesInFrustumCmd_410
R_AddCellStaticSurfacesInFrustumCmd_420:
	mov eax, ecx
R_AddCellStaticSurfacesInFrustumCmd_410:
	lea ecx, [eax+0x1]
	cmp ecx, edi
	jz R_AddCellStaticSurfacesInFrustumCmd_400
	mov eax, [ebp+eax*4-0x9c]
	movzx edx, byte [eax+0x10]
	movss xmm1, dword [edx+ebx]
	mulss xmm1, [eax]
	addss xmm1, [eax+0xc]
	movzx edx, byte [eax+0x11]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x12]
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+ebx]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb R_AddCellStaticSurfacesInFrustumCmd_420
	jmp R_AddCellStaticSurfacesInFrustumCmd_390
R_AddCellStaticSurfacesInFrustumCmd_350:
	movzx edx, word [edi+0x1c]
	movzx edi, word [edi+0x1a]
	mov [ebp-0x200], edi
	jmp R_AddCellStaticSurfacesInFrustumCmd_430
R_AddCellStaticSurfacesInFrustumCmd_380:
	mov esi, [ebp+0x8]
	mov esi, [esi+0x4]
	mov [ebp-0x228], esi
	mov ecx, esi
	mov ebx, esi
	jmp R_AddCellStaticSurfacesInFrustumCmd_340
	add [eax], al


;Initialized global or static variables of r_dpvs_static:
SECTION .data


;Initialized constant data of r_dpvs_static:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_dpvs_static:
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
g_fltMin: resb 0x10
g_surfaceVisData: resb 0x4
g_smodelVisData: resb 0x6c


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

