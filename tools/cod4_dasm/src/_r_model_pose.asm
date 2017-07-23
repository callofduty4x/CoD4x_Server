;Imports of r_model_pose:
	extern InterlockedCompareExchange
	extern DObjGetSurfaceData
	extern useFastFile
	extern DObjGetSurfaces
	extern CG_DObjCalcPose
	extern DObjGetBoneInfo
	extern DObjNumBones
	extern scene
	extern DObjBad
	extern I_dmaGetDObjSkel

;Exports of r_model_pose:
	global _GLOBAL__I__Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	global g_worldMins
	global g_worldMaxs
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global R_UpdateSceneEntBounds
	global R_UpdateGfxEntityBoundsCmd


SECTION .text


;R_UpdateSceneEntBounds(GfxSceneEntity*, GfxSceneEntity**, DObj_s const**, int)
R_UpdateSceneEntBounds:
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
	call InterlockedCompareExchange
	test eax, eax
	jnz R_UpdateSceneEntBounds_10
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
	call DObjGetSurfaceData
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_UpdateSceneEntBounds_20
R_UpdateSceneEntBounds_110:
	mov [esp+0x8], esi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call DObjGetSurfaces
	test eax, eax
	jz R_UpdateSceneEntBounds_30
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
	call CG_DObjCalcPose
	mov [ebp-0x2a8], eax
	test eax, eax
	jz R_UpdateSceneEntBounds_40
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
	call DObjGetBoneInfo
	mov [esp], ebx
	call DObjNumBones
	mov [ebp-0x2ac], eax
	test eax, eax
	jle R_UpdateSceneEntBounds_50
	mov ecx, [ebp-0x2a8]
	mov dword [ebp-0x2a4], 0x80000000
	mov dword [ebp-0x2b0], 0x0
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x2c0], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x2c4], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x2c8], xmm0
R_UpdateSceneEntBounds_100:
	mov eax, [ebp-0x2b0]
	sar eax, 0x5
	mov edx, [ebp-0x2a4]
	test [ebp+eax*4-0x28], edx
	jz R_UpdateSceneEntBounds_60
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
	jbe R_UpdateSceneEntBounds_70
	movss [ebp-0x2c0], xmm1
	movss [ebp-0x58], xmm1
R_UpdateSceneEntBounds_70:
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
	jbe R_UpdateSceneEntBounds_80
	movss [ebp-0x2c4], xmm2
	movss [ebp-0x54], xmm2
R_UpdateSceneEntBounds_80:
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
	jbe R_UpdateSceneEntBounds_90
	movss [ebp-0x2c8], xmm2
	movss [ebp-0x50], xmm2
R_UpdateSceneEntBounds_90:
	movss xmm1, dword [ebp-0x40]
	movaps xmm0, xmm1
	cmpss xmm0, xmm3, 0x5
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	movss [ebp-0x40], xmm0
R_UpdateSceneEntBounds_60:
	add dword [ebp-0x2b0], 0x1
	ror dword [ebp-0x2a4], 1
	add ecx, 0x20
	mov eax, [ebp-0x2b0]
	cmp [ebp-0x2ac], eax
	jnz R_UpdateSceneEntBounds_100
R_UpdateSceneEntBounds_130:
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
R_UpdateSceneEntBounds_120:
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_UpdateSceneEntBounds_20:
	mov [esp], ebx
	call DObjBad
	test eax, eax
	jz R_UpdateSceneEntBounds_110
	mov edx, [ebp+0x8]
	mov dword [edx+0x2c], 0x4
	mov dword [ebp-0x2a8], 0x0
	mov eax, [ebp-0x2a8]
	jmp R_UpdateSceneEntBounds_120
R_UpdateSceneEntBounds_50:
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x2c0], xmm0
	movss xmm0, dword [ebp-0x54]
	movss [ebp-0x2c4], xmm0
	movss xmm0, dword [ebp-0x50]
	movss [ebp-0x2c8], xmm0
	jmp R_UpdateSceneEntBounds_130
R_UpdateSceneEntBounds_10:
	mov dword [ebx], 0x0
	mov eax, [ebp+0x14]
	test eax, eax
	jnz R_UpdateSceneEntBounds_140
R_UpdateSceneEntBounds_160:
	mov dword [ebp-0x2a8], 0x0
	mov eax, [ebp-0x2a8]
	add esp, 0x2dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_UpdateSceneEntBounds_30:
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
R_UpdateSceneEntBounds_140:
	mov edx, [ebp+0x8]
R_UpdateSceneEntBounds_150:
	mov eax, [edx+0x2c]
	cmp eax, 0x1
	jz R_UpdateSceneEntBounds_150
	cmp eax, 0x4
	jz R_UpdateSceneEntBounds_160
	mov [ebx], edx
	mov eax, [edx+0x70]
	mov ebx, [ebp+0x10]
	mov [ebx], eax
	mov [esp], eax
	call I_dmaGetDObjSkel
	mov [ebp-0x2a8], eax
	jmp R_UpdateSceneEntBounds_120
R_UpdateSceneEntBounds_40:
	mov eax, [ebp+0x8]
	mov dword [eax+0x2c], 0x4
	mov eax, [ebp-0x2a8]
	jmp R_UpdateSceneEntBounds_120
	nop


;R_UpdateGfxEntityBoundsCmd(void*)
R_UpdateGfxEntityBoundsCmd:
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
	call R_UpdateSceneEntBounds
	leave
	ret


;Initialized global or static variables of r_model_pose:
SECTION .data


;Initialized constant data of r_model_pose:
SECTION .rdata
g_keepZ__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4_dup_1: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4_dup_1: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4_dup_1: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4_dup_1: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4_dup_1: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4_dup_1: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4_dup_1: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4_dup_1: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4_dup_1: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4_dup_1: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4_dup_1: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4_dup_1: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4_dup_1: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4_dup_1: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4_dup_1: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4_dup_1: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4_dup_1: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4_dup_1: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4_dup_1: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4_dup_1: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000
g_worldMins: dd 0xc8000000, 0xc8000000, 0xc8000000, 0x0
g_worldMaxs: dd 0x48000000, 0x48000000, 0x48000000, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_model_pose:
SECTION .bss
g_keepZ_dup_1: resb 0x10
g_keepX_dup_1: resb 0x10
g_keepZW_dup_1: resb 0x10
g_keepXY_dup_1: resb 0x10
g_keepXYZ_dup_1: resb 0x10
g_keepXYW_dup_1: resb 0x10
g_keepXZW_dup_1: resb 0x10
g_keepYZW_dup_1: resb 0x10
g_selectW_dup_1: resb 0x10
g_selectZ_dup_1: resb 0x10
g_selectY_dup_1: resb 0x10
g_selectX_dup_1: resb 0x10
g_swizzleWWWW_dup_1: resb 0x10
g_swizzleZZZZ_dup_1: resb 0x10
g_swizzleYYYY_dup_1: resb 0x10
g_swizzleXXXX_dup_1: resb 0x10
g_swizzleYZWA_dup_1: resb 0x10
g_swizzleZWAW_dup_1: resb 0x10
g_swizzleWABW_dup_1: resb 0x10
g_swizzleZXYW_dup_1: resb 0x10
g_swizzleYZXW_dup_1: resb 0x10
g_swizzleXYZA_dup_1: resb 0x10
g_swizzleZWCD_dup_1: resb 0x10
g_swizzleXYAB_dup_1: resb 0x10
g_swizzleYBWD_dup_1: resb 0x10
g_swizzleXAZC_dup_1: resb 0x10
g_swizzleYXWZ_dup_1: resb 0x10
g_swizzleXZYW_dup_1: resb 0x10
g_swizzleYXZW_dup_1: resb 0x10
g_swizzleXYZW_dup_1: resb 0x10
g_inc_dup_1: resb 0x10
g_negativeZero_dup_1: resb 0x10
g_fltMin_dup_1: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

