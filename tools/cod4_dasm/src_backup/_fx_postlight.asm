;Imports of fx_postlight:
	extern _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	extern _Z22R_ReserveCodeMeshVertsiPt
	extern _Z21R_ReserveCodeMeshArgsiPj
	extern _Z18R_GetCodeMeshVertst
	extern _Z17R_GetCodeMeshArgsj
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z19PerpendicularVectorPKfPf
	extern sinf
	extern cosf
	extern _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc

;Exports of fx_postlight:
	global _GLOBAL__I__Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem
	global g_postLightInfo
	global _Z16FX_PostLight_AddP11FxPostLight
	global _Z18FX_PostLight_Beginv
	global _Z20FX_PostLight_GetInfov
	global _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem


SECTION .text


;global constructors keyed to FX_PostLight_GenerateVerts(FxPostLightInfo*, FxSystem*)
_GLOBAL__I__Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem:
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


;FX_PostLight_Add(FxPostLight*)
_Z16FX_PostLight_AddP11FxPostLight:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [g_postLightInfo+0xd80]
	cmp ebx, 0x60
	jz _Z16FX_PostLight_AddP11FxPostLight_10
	lea edx, [ebx+ebx*8]
	shl edx, 0x2
	mov eax, [ecx]
	mov [edx+g_postLightInfo], eax
	mov eax, [ecx+0x4]
	mov [edx+g_postLightInfo+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+g_postLightInfo+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+g_postLightInfo+0xc], eax
	mov eax, [ecx+0x10]
	mov [edx+g_postLightInfo+0x10], eax
	mov eax, [ecx+0x14]
	mov [edx+g_postLightInfo+0x14], eax
	mov eax, [ecx+0x18]
	mov [edx+g_postLightInfo+0x18], eax
	mov eax, [ecx+0x1c]
	mov [edx+g_postLightInfo+0x1c], eax
	mov eax, [ecx+0x20]
	mov [edx+g_postLightInfo+0x20], eax
	lea eax, [ebx+0x1]
	mov [g_postLightInfo+0xd80], eax
_Z16FX_PostLight_AddP11FxPostLight_10:
	pop ebx
	pop ebp
	ret
	nop


;FX_PostLight_Begin()
_Z18FX_PostLight_Beginv:
	push ebp
	mov ebp, esp
	mov dword [g_postLightInfo+0xd80], 0x0
	pop ebp
	ret
	nop


;FX_PostLight_GetInfo()
_Z20FX_PostLight_GetInfov:
	push ebp
	mov ebp, esp
	mov eax, g_postLightInfo
	pop ebp
	ret


;FX_PostLight_GenerateVerts(FxPostLightInfo*, FxSystem*)
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x6c], xmm0
	movss xmm3, dword [eax+0x4]
	movss [ebp-0x70], xmm3
	movss xmm4, dword [eax+0x8]
	movss [ebp-0x74], xmm4
	mov eax, [ebp+0x8]
	mov edx, [eax+0xd80]
	test edx, edx
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10
	mov dword [ebp-0x84], 0x0
	mov [ebp-0x88], eax
	mov edx, eax
	jmp _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_20
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_40:
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x88], 0x24
	mov eax, [ebp-0x84]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0xd80]
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_110:
	mov edx, [ebp-0x88]
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_20:
	movss xmm2, dword [edx+0xc]
	subss xmm2, [edx]
	movss [ebp-0x30], xmm2
	movss xmm1, dword [edx+0x10]
	subss xmm1, [edx+0x4]
	movss [ebp-0x2c], xmm1
	movss xmm0, dword [edx+0x14]
	subss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	mulss xmm2, xmm2
	mulss xmm1, xmm1
	addss xmm1, xmm2
	mulss xmm0, xmm0
	addss xmm0, xmm1
	movss [ebp-0x80], xmm0
	ucomiss xmm0, [_float_0_00010000]
	jp _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_30
	jb _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_40
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_30:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x54
	call _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	test al, al
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call _Z22R_ReserveCodeMeshVertsiPt
	test al, al
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z21R_ReserveCodeMeshArgsiPj
	test al, al
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z18R_GetCodeMeshVertst
	mov edi, eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z17R_GetCodeMeshArgsj
	mov ecx, [ebp-0x88]
	movss xmm2, dword [ecx+0x4]
	subss xmm2, [ebp-0x70]
	movss xmm1, dword [ecx+0x8]
	subss xmm1, [ebp-0x74]
	movss xmm3, dword [_float_1_00000000]
	divss xmm3, dword [ecx+0x18]
	movss xmm0, dword [ecx]
	subss xmm0, [ebp-0x6c]
	movss [eax], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm1
	movss [eax+0xc], xmm3
	mov esi, [ebp-0x28]
	mov ebx, [ebp-0x2c]
	lea ecx, [eax+0x10]
	mov edx, [ebp-0x30]
	mov [eax+0x10], edx
	mov [ecx+0x4], ebx
	mov [ecx+0x8], esi
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x80]
	movss [ecx+0xc], xmm0
	mov eax, [ebp-0x88]
	movss xmm0, dword [eax+0x18]
	movss [ebp-0x78], xmm0
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19PerpendicularVectorPKfPf
	movss xmm2, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x40]
	movss xmm4, dword [ebp-0x34]
	movss xmm5, dword [ebp-0x44]
	movaps xmm3, xmm2
	mulss xmm3, xmm1
	movaps xmm0, xmm4
	mulss xmm0, xmm5
	subss xmm3, xmm0
	movss [ebp-0x60], xmm3
	movss xmm3, dword [ebp-0x48]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm4, xmm3
	mulss xmm1, xmm0
	subss xmm4, xmm1
	movss [ebp-0x64], xmm4
	mulss xmm5, xmm0
	mulss xmm2, xmm3
	movaps xmm4, xmm5
	subss xmm4, xmm2
	movss [ebp-0x68], xmm4
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [_float_1_41421354]
	movss [ebp-0x5c], xmm0
	movss xmm3, dword [ebp-0x78]
	xorps xmm3, [_data16_80000000]
	movss [ebp-0x58], xmm3
	lea esi, [edi+0x114]
	mov ebx, edi
	xor edi, edi
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_50:
	cvtsi2ss xmm0, edi
	addss xmm0, xmm0
	mulss xmm0, [_float_3_14159274]
	mulss xmm0, [_float_0_12500000]
	movss [esp], xmm0
	movss [ebp-0x98], xmm0
	call sinf
	fstp dword [ebp-0xac]
	movss xmm2, dword [ebp-0xac]
	movss xmm0, dword [ebp-0x98]
	movss [esp], xmm0
	movss [ebp-0xa8], xmm2
	call cosf
	fstp dword [ebp-0xac]
	movss xmm0, dword [ebp-0xac]
	movss xmm2, dword [ebp-0xa8]
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x44]
	movss xmm1, dword [ebp-0x64]
	mulss xmm1, xmm0
	addss xmm3, xmm1
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x40]
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, xmm0
	addss xmm4, xmm1
	mulss xmm2, [ebp-0x48]
	mulss xmm0, [ebp-0x60]
	addss xmm2, xmm0
	mulss xmm2, [ebp-0x5c]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x3c]
	mov eax, [ebp-0x88]
	addss xmm0, [eax]
	addss xmm0, xmm2
	movss [ebx], xmm0
	mulss xmm3, [ebp-0x5c]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x38]
	addss xmm0, [eax+0x4]
	addss xmm0, xmm3
	movss [ebx+0x4], xmm0
	mulss xmm4, [ebp-0x5c]
	movss xmm0, dword [ebp-0x58]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [eax+0x8]
	addss xmm0, xmm4
	movss [ebx+0x8], xmm0
	lea eax, [ebx+0x100]
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [ebp-0x3c]
	mov edx, [ebp-0x88]
	addss xmm0, [edx+0xc]
	addss xmm2, xmm0
	movss [ebx+0x100], xmm2
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [ebp-0x38]
	addss xmm0, [edx+0x10]
	addss xmm3, xmm0
	movss [eax+0x4], xmm3
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, [ebp-0x34]
	addss xmm0, [edx+0x14]
	addss xmm4, xmm0
	movss [eax+0x8], xmm4
	mov dword [ebx+0x14], 0x0
	mov eax, [edx+0x1c]
	mov [ebx+0x10], eax
	mov dword [esi], 0x0
	mov eax, [edx+0x1c]
	mov [esi-0x4], eax
	add ebx, 0x20
	add edi, 0x1
	add esi, 0x20
	cmp edi, 0x8
	jnz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_50
	mov ebx, [ebp-0x20]
	lea ecx, [ebx+0x6]
	mov [ebp-0x54], ecx
	lea edi, [ebx+0xa]
	mov dword [ebp-0x4c], 0x0
	jmp _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_60
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_80:
	mov edx, eax
	lea eax, [esi+edx]
	mov [ebx+0x2], ax
	lea eax, [esi+ecx]
	mov [ebx], ax
	add cx, [ebp-0x1a]
	lea eax, [ecx+0x8]
	mov ecx, [ebp-0x54]
	mov [ecx], ax
	mov [ecx-0x2], ax
	add dx, [ebp-0x1a]
	lea eax, [edx+0x8]
	mov [edi], ax
	mov [edi-0x2], dx
	add ebx, 0xc
	add ecx, 0xc
	mov [ebp-0x54], ecx
	add edi, 0xc
	cmp dword [ebp-0x4c], 0x8
	jz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_70
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_60:
	add dword [ebp-0x4c], 0x1
	movzx ecx, word [ebp-0x4c]
	sub ecx, 0x1
	movzx esi, word [ebp-0x1a]
	mov eax, [ebp-0x4c]
	and eax, 0x80000007
	jns _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_80
	sub eax, 0x1
	or eax, 0xfffffff8
	add eax, 0x1
	jmp _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_80
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_70:
	lea edi, [ebx+0x6]
	lea esi, [ebx+0xa]
	mov dword [ebp-0x50], 0x0
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_90:
	movzx ecx, word [ebp-0x50]
	mov eax, ecx
	add ax, [ebp-0x1a]
	lea edx, [eax+0x1]
	mov [ebx+0x2], dx
	add eax, 0x2
	mov [ebx], ax
	movzx edx, word [ebp-0x1a]
	lea eax, [edx+ecx+0x3]
	mov [edi], ax
	mov [edi-0x2], dx
	movzx eax, word [ebp-0x1a]
	mov [esi], ax
	lea eax, [eax+ecx+0x2]
	mov [esi-0x2], ax
	add ebx, 0xc
	add dword [ebp-0x50], 0x2
	add edi, 0xc
	add esi, 0xc
	cmp dword [ebp-0x50], 0x6
	jnz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_90
	lea edi, [ebx+0x6]
	lea esi, [ebx+0xa]
	mov dword [ebp-0x7c], 0x0
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_100:
	movzx eax, word [ebp-0x1a]
	movzx ecx, word [ebp-0x7c]
	lea edx, [eax+ecx+0x9]
	mov [ebx+0x2], dx
	add eax, 0x8
	mov [ebx], ax
	movzx eax, word [ebp-0x1a]
	lea edx, [eax+0x8]
	mov [edi], dx
	lea eax, [eax+ecx+0xa]
	mov [edi-0x2], ax
	add cx, [ebp-0x1a]
	lea eax, [ecx+0xb]
	mov [esi], ax
	add ecx, 0xa
	mov [esi-0x2], cx
	add ebx, 0xc
	add dword [ebp-0x7c], 0x2
	add edi, 0xc
	add esi, 0xc
	cmp dword [ebp-0x7c], 0x6
	jnz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_100
	mov dword [esp+0x14], _cstring_postlight
	mov dword [esp+0x10], 0x2
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x54
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0x88]
	mov eax, [edx+0x20]
	mov [esp], eax
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x88], 0x24
	mov eax, [ebp-0x84]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0xd80]
	jnz _Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_110
_Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem_10:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of fx_postlight:
SECTION .data


;Initialized constant data of fx_postlight:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_postlight:
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
g_postLightInfo: resb 0xe00


;All cstrings:
SECTION .rdata
_cstring_postlight:		db "PostLight",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_41421354:		dd 0x3fb504f3	; 1.41421
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_3_14159274:		dd 0x40490fdb	; 3.14159
_float_0_12500000:		dd 0x3e000000	; 0.125

