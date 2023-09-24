;Imports of r_model_pose:
	extern iInterlockedCompareExchange
	extern _Z18DObjGetSurfaceDataPK6DObj_sPKffPc
	extern useFastFile
	extern _Z15DObjGetSurfacesPK6DObj_sPiPKc
	extern _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	extern _Z15DObjGetBoneInfoPK6DObj_sPP9XBoneInfo
	extern _Z12DObjNumBonesPK6DObj_s
	extern scene
	extern _Z7DObjBadPK6DObj_s
	extern _Z16I_dmaGetDObjSkelPK6DObj_s

;Exports of r_model_pose:
	global _GLOBAL__I__Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	global g_worldMins
	global g_worldMaxs
	global _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	global _Z26R_UpdateGfxEntityBoundsCmdPv


SECTION .text


;global constructors keyed to R_UpdateSceneEntBounds(GfxSceneEntity*, GfxSceneEntity**, DObj_s const**, int)
_GLOBAL__I__Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si:
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


;R_UpdateSceneEntBounds(GfxSceneEntity*, GfxSceneEntity**, DObj_s const**, int)
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2dc
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	add eax, 0x2c
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedCompareExchange
	test eax, eax
	jnz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_10
	mov eax, [ebp+0x8]
	mov [ebx], eax
	mov ebx, [eax+0x70]
	mov edx, [ebp+0x10]
	mov [edx], ebx
	mov esi, eax
	add esi, 0x48
	mov edx, [ebp+0x8]
	mov eax, [edx+0x28]
	add edx, 0x1c
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z18DObjGetSurfaceDataPK6DObj_sPKffPc
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_20
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_110:
	mov [esp+0x8], esi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15DObjGetSurfacesPK6DObj_sPiPKc
	test eax, eax
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_30
	mov eax, [ebp-0x28]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x74]
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	mov [ebp-0x2a8], eax
	test eax, eax
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_40
	movss xmm0, dword [g_worldMaxs]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [g_worldMaxs+0x4]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [g_worldMaxs+0x8]
	movss [ebp-0x50], xmm0
	mov eax, [g_worldMaxs+0xc]
	mov [ebp-0x4c], eax
	mov eax, [g_worldMins]
	mov [ebp-0x48], eax
	mov eax, [g_worldMins+0x4]
	mov [ebp-0x44], eax
	mov eax, [g_worldMins+0x8]
	mov [ebp-0x40], eax
	mov eax, [g_worldMins+0xc]
	mov [ebp-0x3c], eax
	lea eax, [ebp-0x298]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15DObjGetBoneInfoPK6DObj_sPP9XBoneInfo
	mov [esp], ebx
	call _Z12DObjNumBonesPK6DObj_s
	mov [ebp-0x2ac], eax
	test eax, eax
	jle _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_50
	mov ecx, [ebp-0x2a8]
	mov dword [ebp-0x2a4], 0x80000000
	mov dword [ebp-0x2b0], 0x0
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x2c0], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x2c4], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x2c8], xmm0
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_100:
	mov eax, [ebp-0x2b0]
	sar eax, 0x5
	mov edx, [ebp-0x2a4]
	test [ebp+eax*4-0x28], edx
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_60
	movss xmm1, dword [ecx+0x1c]
	movss xmm0, dword [ecx]
	movaps xmm4, xmm1
	mulss xmm4, xmm0
	movss xmm3, dword [ecx+0x4]
	movaps xmm5, xmm1
	mulss xmm5, xmm3
	movss xmm2, dword [ecx+0x8]
	mulss xmm1, xmm2
	mulss xmm0, xmm4
	movss [ebp-0x2a0], xmm0
	movaps xmm6, xmm4
	mulss xmm6, xmm3
	movaps xmm7, xmm4
	mulss xmm7, xmm2
	movss xmm0, dword [ecx+0xc]
	mulss xmm4, xmm0
	mulss xmm3, xmm5
	movss [ebp-0x29c], xmm3
	movaps xmm3, xmm5
	mulss xmm3, xmm2
	mulss xmm5, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x29c]
	addss xmm0, xmm2
	movss [ebp-0x2cc], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x2cc]
	movss [ebp-0x2b4], xmm0
	movss [ebp-0x98], xmm0
	movaps xmm0, xmm6
	addss xmm0, xmm1
	movss [ebp-0x94], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm5
	movss [ebp-0x90], xmm0
	mov dword [ebp-0x8c], 0x0
	subss xmm6, xmm1
	movss [ebp-0x88], xmm6
	addss xmm2, [ebp-0x2a0]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm2
	movss [ebp-0x84], xmm0
	movaps xmm0, xmm4
	addss xmm0, xmm3
	movss [ebp-0x80], xmm0
	mov dword [ebp-0x7c], 0x0
	addss xmm7, xmm5
	movss [ebp-0x78], xmm7
	subss xmm3, xmm4
	movss [ebp-0x74], xmm3
	movss xmm0, dword [ebp-0x2a0]
	addss xmm0, [ebp-0x29c]
	movss [ebp-0x2a0], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x2a0]
	movss [ebp-0x70], xmm0
	mov dword [ebp-0x6c], 0x0
	movss xmm2, dword [ecx+0x10]
	movss [ebp-0x68], xmm2
	movss xmm0, dword [ecx+0x14]
	movss [ebp-0x64], xmm0
	movss xmm1, dword [ecx+0x18]
	mov dword [ebp-0x5c], 0x3f800000
	mov eax, scene
	addss xmm2, [eax+0x114220]
	movss [ebp-0x68], xmm2
	addss xmm0, [eax+0x114224]
	movss [ebp-0x64], xmm0
	addss xmm1, [eax+0x114228]
	movss [ebp-0x60], xmm1
	mov ebx, [ebp-0x2b0]
	mov edx, [ebp+ebx*4-0x298]
	mov eax, [ebp-0x98]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm1, dword [ebp-0x2b4]
	mulss xmm1, [edx+eax]
	addss xmm1, xmm2
	lea edi, [edx+0xc]
	mov ebx, edi
	sub ebx, eax
	movss xmm3, dword [ebp-0x2b4]
	mulss xmm3, [ebx]
	addss xmm3, xmm2
	mov eax, [ebp-0x88]
	sar eax, 0x1f
	and eax, 0xc
	lea ebx, [edx+0x4]
	mov [ebp-0x2b8], ebx
	movss xmm0, dword [ebx+eax]
	mulss xmm0, xmm6
	addss xmm1, xmm0
	lea esi, [edx+0x10]
	mov ebx, esi
	sub ebx, eax
	mulss xmm6, [ebx]
	addss xmm3, xmm6
	mov eax, [ebp-0x78]
	sar eax, 0x1f
	and eax, 0xc
	lea ebx, [edx+0x8]
	mov [ebp-0x2bc], ebx
	movss xmm0, dword [ebx+eax]
	mulss xmm0, xmm7
	addss xmm1, xmm0
	lea ebx, [edx+0x14]
	mov [ebp-0x2d0], ebx
	sub ebx, eax
	mulss xmm7, [ebx]
	addss xmm3, xmm7
	movss xmm0, dword [ebp-0x2c0]
	ucomiss xmm0, xmm1
	jbe _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_70
	movss [ebp-0x2c0], xmm1
	movss [ebp-0x58], xmm1
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_70:
	movss xmm1, dword [ebp-0x48]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x48], xmm0
	movss xmm1, dword [ebp-0x64]
	mov eax, [ebp-0x94]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x94]
	movss xmm2, dword [edx+eax]
	mulss xmm2, xmm0
	addss xmm2, xmm1
	mov ebx, edi
	sub ebx, eax
	movaps xmm3, xmm0
	mulss xmm3, [ebx]
	addss xmm3, xmm1
	mov eax, [ebp-0x84]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x84]
	mov ebx, [ebp-0x2b8]
	movss xmm1, dword [ebx+eax]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	mov ebx, esi
	sub ebx, eax
	mulss xmm0, [ebx]
	addss xmm3, xmm0
	mov eax, [ebp-0x74]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x74]
	mov ebx, [ebp-0x2bc]
	movss xmm1, dword [ebx+eax]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	mov ebx, [ebp-0x2d0]
	sub ebx, eax
	mulss xmm0, [ebx]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x2c4]
	ucomiss xmm0, xmm2
	jbe _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_80
	movss [ebp-0x2c4], xmm2
	movss [ebp-0x54], xmm2
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_80:
	movss xmm1, dword [ebp-0x44]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x44], xmm0
	movss xmm1, dword [ebp-0x60]
	mov eax, [ebp-0x90]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x90]
	movss xmm2, dword [edx+eax]
	mulss xmm2, xmm0
	addss xmm2, xmm1
	sub edi, eax
	movaps xmm3, xmm0
	mulss xmm3, [edi]
	addss xmm3, xmm1
	mov eax, [ebp-0x80]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x80]
	mov edx, [ebp-0x2b8]
	movss xmm1, dword [edx+eax]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	sub esi, eax
	mulss xmm0, [esi]
	addss xmm3, xmm0
	mov eax, [ebp-0x70]
	sar eax, 0x1f
	and eax, 0xc
	movss xmm0, dword [ebp-0x70]
	mov ebx, [ebp-0x2bc]
	movss xmm1, dword [ebx+eax]
	mulss xmm1, xmm0
	addss xmm2, xmm1
	sub [ebp-0x2d0], eax
	mov eax, [ebp-0x2d0]
	mulss xmm0, [eax]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x2c8]
	ucomiss xmm0, xmm2
	jbe _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_90
	movss [ebp-0x2c8], xmm2
	movss [ebp-0x50], xmm2
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_90:
	movss xmm1, dword [ebp-0x40]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x40], xmm0
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_60:
	add dword [ebp-0x2b0], 0x1
	ror dword [ebp-0x2a4], 1
	add ecx, 0x20
	mov eax, [ebp-0x2b0]
	cmp [ebp-0x2ac], eax
	jnz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_100
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_130:
	movss xmm0, dword [ebp-0x2c0]
	mov eax, [ebp+0x8]
	movss [eax+0x30], xmm0
	movss xmm0, dword [ebp-0x2c4]
	movss [eax+0x34], xmm0
	movss xmm0, dword [ebp-0x2c8]
	movss [eax+0x38], xmm0
	mov eax, [ebp-0x48]
	mov edx, [ebp+0x8]
	mov [edx+0x3c], eax
	mov eax, [ebp-0x44]
	mov [edx+0x40], eax
	mov eax, [ebp-0x40]
	mov [edx+0x44], eax
	mov dword [edx+0x2c], 0x2
	mov eax, [ebp-0x2a8]
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_120:
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_20:
	mov [esp], ebx
	call _Z7DObjBadPK6DObj_s
	test eax, eax
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_110
	mov edx, [ebp+0x8]
	mov dword [edx+0x2c], 0x4
	mov dword [ebp-0x2a8], 0x0
	mov eax, [ebp-0x2a8]
	jmp _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_120
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_50:
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x2c0], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x2c4], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x2c8], xmm0
	jmp _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_130
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_10:
	mov dword [ebx], 0x0
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_140
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_160:
	mov dword [ebp-0x2a8], 0x0
	mov eax, [ebp-0x2a8]
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_30:
	mov ebx, [ebp+0x8]
	mov dword [ebx+0x2c], 0x4
	mov dword [ebp-0x2a8], 0x0
	mov eax, [ebp-0x2a8]
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_140:
	mov edx, [ebp+0x8]
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_150:
	mov eax, [edx+0x2c]
	cmp eax, 0x1
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_150
	cmp eax, 0x4
	jz _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_160
	mov [ebx], edx
	mov eax, [edx+0x70]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov [esp], eax
	call _Z16I_dmaGetDObjSkelPK6DObj_s
	mov [ebp-0x2a8], eax
	jmp _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_120
_Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_40:
	mov eax, [ebp+0x8]
	mov dword [eax+0x2c], 0x4
	mov eax, [ebp-0x2a8]
	jmp _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si_120
	nop


;R_UpdateGfxEntityBoundsCmd(void*)
_Z26R_UpdateGfxEntityBoundsCmdPv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	leave
	ret


;Initialized global or static variables of r_model_pose:
SECTION .data


;Initialized constant data of r_model_pose:
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
g_worldMins: dd 0xc8000000, 0xc8000000, 0xc8000000, 0x0
g_worldMaxs: dd 0x48000000, 0x48000000, 0x48000000, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_model_pose:
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


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

