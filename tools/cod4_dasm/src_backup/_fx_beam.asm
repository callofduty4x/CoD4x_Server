;Imports of fx_beam:
	extern _Z19R_GetLocalClientNumv
	extern cgArray
	extern _Z15MatrixInverse44PKfPf
	extern _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	extern _Z22R_ReserveCodeMeshVertsiPt
	extern _Z21R_ReserveCodeMeshArgsiPj
	extern _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	extern _Z17R_GetCodeMeshArgsj
	extern _Z18R_GetCodeMeshVertst
	extern _Z15Vec3NormalizeToPKfPf

;Exports of fx_beam:
	global _GLOBAL__I__Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd
	global g_beamInfo
	global g_2xunit
	global coeffZGtW.138963
	global _ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle
	global _ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices
	global _Z11FX_Beam_AddP6FxBeam
	global _Z13FX_Beam_Beginv
	global _Z15FX_Beam_GetInfov
	global _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd


SECTION .text


;global constructors keyed to FX_Beam_GenerateVerts(FxGenerateVertsCmd*)
_GLOBAL__I__Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd:
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


;FX_Beam_Add(FxBeam*)
_Z11FX_Beam_AddP6FxBeam:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [g_beamInfo+0x1380]
	cmp ebx, 0x60
	jz _Z11FX_Beam_AddP6FxBeam_10
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	shl eax, 0x2
	mov edx, [ecx]
	mov [eax+g_beamInfo], edx
	mov edx, [ecx+0x4]
	mov [eax+g_beamInfo+0x4], edx
	mov edx, [ecx+0x8]
	mov [eax+g_beamInfo+0x8], edx
	mov edx, [ecx+0xc]
	mov [eax+g_beamInfo+0xc], edx
	mov edx, [ecx+0x10]
	mov [eax+g_beamInfo+0x10], edx
	mov edx, [ecx+0x14]
	mov [eax+g_beamInfo+0x14], edx
	mov edx, [ecx+0x18]
	mov [eax+g_beamInfo+0x18], edx
	mov edx, [ecx+0x1c]
	mov [eax+g_beamInfo+0x1c], edx
	mov edx, [ecx+0x20]
	mov [eax+g_beamInfo+0x20], edx
	mov edx, [ecx+0x24]
	mov [eax+g_beamInfo+0x24], edx
	mov edx, [ecx+0x28]
	mov [eax+g_beamInfo+0x28], edx
	mov edx, [ecx+0x2c]
	mov [eax+g_beamInfo+0x2c], edx
	mov edx, [ecx+0x30]
	mov [eax+g_beamInfo+0x30], edx
	lea eax, [ebx+0x1]
	mov [g_beamInfo+0x1380], eax
_Z11FX_Beam_AddP6FxBeam_10:
	pop ebx
	pop ebp
	ret


;FX_Beam_Begin()
_Z13FX_Beam_Beginv:
	push ebp
	mov ebp, esp
	mov dword [g_beamInfo+0x1380], 0x0
	pop ebp
	ret
	nop


;FX_Beam_GetInfo()
_Z15FX_Beam_GetInfov:
	push ebp
	mov ebp, esp
	mov eax, g_beamInfo
	pop ebp
	ret


;FX_Beam_GenerateVerts(FxGenerateVertsCmd*)
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6bc
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0x570], eax
	mov eax, [ebp+0x8]
	add eax, 0x14
	mov edx, [ebp+0x8]
	movss xmm4, dword [edx+0x14]
	movss [ebp-0x108], xmm4
	movss xmm5, dword [eax+0x4]
	movss [ebp-0x104], xmm5
	movss xmm6, dword [eax+0x8]
	movss [ebp-0x100], xmm6
	mov dword [ebp-0xfc], 0x0
	add edx, 0x20
	mov [ebp-0x56c], edx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x20]
	mov [ebp-0x4d8], ebx
	mov esi, [edx+0x4]
	mov [ebp-0x4d4], esi
	mov edi, [edx+0x8]
	mov [ebp-0x4d0], edi
	mov dword [ebp-0x4cc], 0x0
	mov eax, ecx
	add eax, 0x2c
	movss xmm0, dword [ecx+0x2c]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	add eax, 0xc
	mov edx, [ecx+0x38]
	mov [ebp-0x4b8], edx
	mov ecx, [eax+0x4]
	mov [ebp-0x4b4], ecx
	mov eax, [eax+0x8]
	mov [ebp-0x4b0], eax
	mov dword [ebp-0x4ac], 0x0
	mov dword [ebp-0x4a8], 0x0
	mov dword [ebp-0x4a4], 0x0
	mov dword [ebp-0x4a0], 0x0
	mov dword [ebp-0x49c], 0x3f800000
	xorps xmm0, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss [ebp-0x4c8], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss [ebp-0x4c4], xmm1
	xorps xmm2, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss [ebp-0x4c0], xmm2
	pxor xmm3, xmm3
	xorps xmm3, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss [ebp-0x4bc], xmm3
	mov [ebp-0x3d8], ebx
	movss [ebp-0x3d4], xmm0
	mov [ebp-0x3d0], edx
	mov dword [ebp-0x3cc], 0x0
	mov [ebp-0x3c8], esi
	movss [ebp-0x3c4], xmm1
	mov [ebp-0x3c0], ecx
	mov dword [ebp-0x3bc], 0x0
	mov [ebp-0x3b8], edi
	movss [ebp-0x3b4], xmm2
	mov [ebp-0x3b0], eax
	mov dword [ebp-0x3ac], 0x0
	mov dword [ebp-0x3a8], 0x0
	movss [ebp-0x3a4], xmm3
	mov dword [ebp-0x3a0], 0x0
	mov dword [ebp-0x39c], 0x3f800000
	mov esi, [ebp-0x3d8]
	mov [ebp-0x498], esi
	mov ebx, [ebp-0x3d4]
	mov [ebp-0x494], ebx
	mov ecx, [ebp-0x3d0]
	mov [ebp-0x490], ecx
	mov edx, [ebp-0x3cc]
	mov [ebp-0x48c], edx
	mov edi, [ebp-0x3c8]
	mov [ebp-0x57c], edi
	mov [ebp-0x488], edi
	mov eax, [ebp-0x3c4]
	mov [ebp-0x580], eax
	mov [ebp-0x484], eax
	mov edi, [ebp-0x3c0]
	mov [ebp-0x584], edi
	mov [ebp-0x480], edi
	mov eax, [ebp-0x3bc]
	mov [ebp-0x588], eax
	mov [ebp-0x47c], eax
	mov edi, [ebp-0x3b8]
	mov [ebp-0x478], edi
	mov eax, [ebp-0x3b4]
	mov [ebp-0x474], eax
	mov edi, [ebp-0x3b0]
	mov [ebp-0x470], edi
	mov eax, [ebp-0x3ac]
	mov [ebp-0x46c], eax
	mov eax, [ebp-0x3a8]
	mov [ebp-0x468], eax
	mov eax, [ebp-0x3a4]
	mov [ebp-0x464], eax
	mov eax, [ebp-0x3a0]
	mov [ebp-0x460], eax
	mov eax, [ebp-0x39c]
	mov [ebp-0x45c], eax
	mov edi, [g_swizzleYZXW]
	mov [ebp-0x88], edi
	mov eax, [g_swizzleYZXW+0x4]
	mov [ebp-0x84], eax
	mov edi, [g_swizzleYZXW+0x8]
	mov [ebp-0x80], edi
	mov edi, [g_swizzleYZXW+0xc]
	mov [ebp-0x7c], edi
	mov [ebp-0x3c8], esi
	mov [ebp-0x3c4], ebx
	mov [ebp-0x3c0], ecx
	mov [ebp-0x3bc], edx
	mov eax, [g_swizzleYZXW]
	mov [ebp-0x248], eax
	mov edx, [g_swizzleYZXW+0x4]
	mov [ebp-0x244], edx
	mov ecx, [g_swizzleYZXW+0x8]
	mov [ebp-0x240], ecx
	mov [ebp-0x23c], edi
	movzx eax, byte [ebp-0x245]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x418], al
	movzx eax, byte [ebp-0x246]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x417], al
	movzx eax, byte [ebp-0x247]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x416], al
	movzx eax, byte [ebp-0x248]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x415], al
	movzx eax, byte [ebp-0x241]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x414], al
	movzx eax, byte [ebp-0x242]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x413], al
	movzx eax, byte [ebp-0x243]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x412], al
	movzx eax, byte [ebp-0x244]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x411], al
	movzx eax, byte [ebp-0x23d]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x410], al
	movzx eax, byte [ebp-0x23e]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40f], al
	movzx eax, byte [ebp-0x23f]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40e], al
	movzx eax, byte [ebp-0x240]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40d], al
	movzx eax, byte [ebp-0x239]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40c], al
	movzx eax, byte [ebp-0x23a]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40b], al
	movzx eax, byte [ebp-0x23b]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x40a], al
	movzx eax, byte [ebp-0x23c]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x409], al
	mov ebx, [g_swizzleYZXW]
	mov [ebp-0x78], ebx
	mov [ebp-0x74], edx
	mov [ebp-0x70], ecx
	mov [ebp-0x6c], edi
	mov eax, [ebp-0x57c]
	mov [ebp-0x3d8], eax
	mov edx, [ebp-0x580]
	mov [ebp-0x3d4], edx
	mov ecx, [ebp-0x584]
	mov [ebp-0x3d0], ecx
	mov ebx, [ebp-0x588]
	mov [ebp-0x3cc], ebx
	mov [ebp-0x3c8], eax
	mov [ebp-0x3c4], edx
	mov [ebp-0x3c0], ecx
	mov [ebp-0x3bc], ebx
	mov edx, [g_swizzleYZXW+0x4]
	mov ecx, [g_swizzleYZXW+0x8]
	movzx eax, byte [ebp-0x245]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x408], al
	movzx eax, byte [ebp-0x246]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x407], al
	movzx eax, byte [ebp-0x247]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x406], al
	movzx eax, byte [ebp-0x248]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x405], al
	movzx eax, byte [ebp-0x241]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x404], al
	movzx eax, byte [ebp-0x242]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x403], al
	movzx eax, byte [ebp-0x243]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x402], al
	movzx eax, byte [ebp-0x244]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x401], al
	movzx eax, byte [ebp-0x23d]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x400], al
	movzx eax, byte [ebp-0x23e]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ff], al
	movzx eax, byte [ebp-0x23f]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3fe], al
	movzx eax, byte [ebp-0x240]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3fd], al
	movzx eax, byte [ebp-0x239]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3fc], al
	movzx eax, byte [ebp-0x23a]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3fb], al
	movzx eax, byte [ebp-0x23b]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3fa], al
	movzx eax, byte [ebp-0x23c]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f9], al
	mov ebx, [g_swizzleYZXW]
	mov [ebp-0x68], ebx
	mov [ebp-0x64], edx
	mov [ebp-0x60], ecx
	mov [ebp-0x5c], edi
	mov eax, [ebp-0x3b8]
	mov [ebp-0x3d8], eax
	mov edx, [ebp-0x3b4]
	mov [ebp-0x3d4], edx
	mov ecx, [ebp-0x3b0]
	mov [ebp-0x3d0], ecx
	mov ebx, [ebp-0x3ac]
	mov [ebp-0x3cc], ebx
	mov [ebp-0x3c8], eax
	mov [ebp-0x3c4], edx
	mov [ebp-0x3c0], ecx
	mov [ebp-0x3bc], ebx
	movzx eax, byte [ebp-0x245]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f8], al
	movzx eax, byte [ebp-0x246]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f7], al
	movzx eax, byte [ebp-0x247]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f6], al
	movzx eax, byte [ebp-0x248]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f5], al
	movzx eax, byte [ebp-0x241]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f4], al
	movzx eax, byte [ebp-0x242]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f3], al
	movzx eax, byte [ebp-0x243]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f2], al
	movzx eax, byte [ebp-0x244]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f1], al
	movzx eax, byte [ebp-0x23d]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3f0], al
	movzx eax, byte [ebp-0x23e]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ef], al
	movzx eax, byte [ebp-0x23f]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ee], al
	movzx eax, byte [ebp-0x240]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ed], al
	movzx eax, byte [ebp-0x239]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ec], al
	movzx eax, byte [ebp-0x23a]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3eb], al
	movzx eax, byte [ebp-0x23b]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3ea], al
	movzx eax, byte [ebp-0x23c]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebp-0x3e9], al
	mov esi, [g_unit]
	mov [ebp-0x3e8], esi
	mov edi, [g_unit+0x4]
	mov [ebp-0x3e4], edi
	mov ebx, [g_unit+0x8]
	mov [ebp-0x3e0], ebx
	mov eax, [g_unit+0xc]
	mov [ebp-0x3dc], eax
	movaps xmm3, xmm4
	mulss xmm3, [ebp-0x418]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x408]
	addss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3f8]
	addss xmm3, xmm0
	addss xmm3, [ebp-0x3e8]
	movss [ebp-0x248], xmm3
	movaps xmm2, xmm4
	mulss xmm2, [ebp-0x414]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x404]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3f4]
	addss xmm2, xmm0
	addss xmm2, [ebp-0x3e4]
	movss [ebp-0x244], xmm2
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x410]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x400]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3f0]
	addss xmm1, xmm0
	addss xmm1, [ebp-0x3e0]
	movss [ebp-0x240], xmm1
	mulss xmm4, [ebp-0x40c]
	mulss xmm5, [ebp-0x3fc]
	addss xmm4, xmm5
	mulss xmm6, [ebp-0x3ec]
	addss xmm4, xmm6
	addss xmm4, [ebp-0x3dc]
	movss [ebp-0x23c], xmm4
	xorps xmm3, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	xorps xmm2, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	xorps xmm4, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	addss xmm3, [g_2xunit]
	movss [ebp-0x118], xmm3
	addss xmm2, [g_2xunit+0x4]
	movss [ebp-0x114], xmm2
	addss xmm1, [g_2xunit+0x8]
	movss [ebp-0x110], xmm1
	addss xmm4, [g_2xunit+0xc]
	movss [ebp-0x10c], xmm4
	mov eax, [ebp-0x118]
	mov [ebp-0x3e8], eax
	mov eax, [ebp-0x114]
	mov [ebp-0x3e4], eax
	mov eax, [ebp-0x110]
	mov [ebp-0x3e0], eax
	mov eax, [ebp-0x10c]
	mov [ebp-0x3dc], eax
	call _Z19R_GetLocalClientNumv
	mov ebx, cgArray
	movss xmm0, dword [ebx+0x492dc]
	movss [ebp-0x568], xmm0
	call _Z19R_GetLocalClientNumv
	movss xmm0, dword [ebx+0x492d8]
	mov dword [ebp-0x248], 0x0
	mov dword [ebp-0x244], 0x0
	mov dword [ebp-0x23c], 0x3f800000
	movss xmm1, dword [_float_0_99951172]
	movss [ebp-0x240], xmm1
	mov dword [ebp-0x238], 0x0
	mov dword [ebp-0x234], 0x0
	mov dword [ebp-0x22c], 0x0
	mov dword [ebp-0x230], 0xbf7fe000
	mov dword [ebp-0x224], 0x0
	mov dword [ebp-0x220], 0x0
	mov dword [ebp-0x21c], 0x0
	movaps xmm2, xmm1
	divss xmm2, xmm0
	movss [ebp-0x228], xmm2
	mov dword [ebp-0x218], 0x0
	mov dword [ebp-0x210], 0x0
	mov dword [ebp-0x20c], 0x0
	divss xmm1, dword [ebp-0x568]
	movss [ebp-0x214], xmm1
	mov eax, [ebp-0x228]
	mov [ebp-0x358], eax
	mov dword [ebp-0x354], 0x0
	mov dword [ebp-0x350], 0x0
	mov dword [ebp-0x34c], 0x0
	mov dword [ebp-0x348], 0x0
	mov eax, [ebp-0x214]
	mov [ebp-0x344], eax
	mov dword [ebp-0x340], 0x0
	mov dword [ebp-0x33c], 0x0
	mov dword [ebp-0x338], 0x0
	mov dword [ebp-0x334], 0x0
	mov eax, [ebp-0x240]
	mov [ebp-0x330], eax
	mov eax, [ebp-0x23c]
	mov [ebp-0x32c], eax
	mov dword [ebp-0x328], 0x0
	mov dword [ebp-0x324], 0x0
	mov eax, [ebp-0x230]
	mov [ebp-0x320], eax
	mov dword [ebp-0x31c], 0x0
	movss xmm5, dword [ebp-0x358]
	movss xmm6, dword [ebp-0x348]
	movss [ebp-0x564], xmm6
	movss xmm0, dword [ebp-0x338]
	movss [ebp-0x560], xmm0
	movss xmm1, dword [ebp-0x328]
	movss [ebp-0x55c], xmm1
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x418]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x414]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x560]
	mulss xmm1, [ebp-0x410]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x55c]
	mulss xmm1, [ebp-0x40c]
	addss xmm0, xmm1
	movss [ebp-0x398], xmm0
	movss xmm4, dword [ebp-0x354]
	movss xmm2, dword [ebp-0x344]
	movss [ebp-0x558], xmm2
	movss xmm6, dword [ebp-0x334]
	movss [ebp-0x554], xmm6
	movss xmm0, dword [ebp-0x324]
	movss [ebp-0x550], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x418]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x414]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x410]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x550]
	mulss xmm1, [ebp-0x40c]
	addss xmm0, xmm1
	movss [ebp-0x394], xmm0
	movss xmm3, dword [ebp-0x350]
	movss xmm1, dword [ebp-0x340]
	movss [ebp-0x54c], xmm1
	movss xmm2, dword [ebp-0x330]
	movss [ebp-0x548], xmm2
	movss xmm6, dword [ebp-0x320]
	movss [ebp-0x544], xmm6
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x418]
	mulss xmm1, [ebp-0x414]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x410]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x40c]
	addss xmm0, xmm1
	movss [ebp-0x390], xmm0
	movss xmm2, dword [ebp-0x34c]
	movss xmm6, dword [ebp-0x33c]
	movss xmm7, dword [ebp-0x32c]
	movss xmm0, dword [ebp-0x31c]
	movss [ebp-0x540], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x418]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x414]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x410]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x540]
	mulss xmm1, [ebp-0x40c]
	addss xmm0, xmm1
	movss [ebp-0x38c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x408]
	movss xmm1, dword [ebp-0x564]
	mulss xmm1, [ebp-0x404]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x560]
	mulss xmm1, [ebp-0x400]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x55c]
	mulss xmm1, [ebp-0x3fc]
	addss xmm0, xmm1
	movss [ebp-0x388], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x408]
	movss xmm1, dword [ebp-0x558]
	mulss xmm1, [ebp-0x404]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x554]
	mulss xmm1, [ebp-0x400]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x550]
	mulss xmm1, [ebp-0x3fc]
	addss xmm0, xmm1
	movss [ebp-0x384], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x408]
	movss xmm1, dword [ebp-0x54c]
	mulss xmm1, [ebp-0x404]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x548]
	mulss xmm1, [ebp-0x400]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x544]
	mulss xmm1, [ebp-0x3fc]
	addss xmm0, xmm1
	movss [ebp-0x380], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x408]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x404]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x400]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x540]
	mulss xmm1, [ebp-0x3fc]
	addss xmm0, xmm1
	movss [ebp-0x37c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x3f8]
	movss xmm1, dword [ebp-0x564]
	mulss xmm1, [ebp-0x3f4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x560]
	mulss xmm1, [ebp-0x3f0]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x55c]
	mulss xmm1, [ebp-0x3ec]
	addss xmm0, xmm1
	movss [ebp-0x378], xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x3f8]
	movss xmm1, dword [ebp-0x558]
	mulss xmm1, [ebp-0x3f4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x554]
	mulss xmm1, [ebp-0x3f0]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x550]
	mulss xmm1, [ebp-0x3ec]
	addss xmm0, xmm1
	movss [ebp-0x374], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x3f8]
	movss xmm1, dword [ebp-0x54c]
	mulss xmm1, [ebp-0x3f4]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x548]
	mulss xmm1, [ebp-0x3f0]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x544]
	mulss xmm1, [ebp-0x3ec]
	addss xmm0, xmm1
	movss [ebp-0x370], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x3f8]
	movaps xmm1, xmm6
	mulss xmm1, [ebp-0x3f4]
	addss xmm0, xmm1
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x3f0]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x540]
	mulss xmm1, [ebp-0x3ec]
	addss xmm0, xmm1
	movss [ebp-0x36c], xmm0
	mulss xmm5, [ebp-0x3e8]
	movss xmm1, dword [ebp-0x564]
	mulss xmm1, [ebp-0x3e4]
	addss xmm5, xmm1
	movss xmm0, dword [ebp-0x560]
	mulss xmm0, [ebp-0x3e0]
	addss xmm5, xmm0
	movss xmm1, dword [ebp-0x55c]
	mulss xmm1, [ebp-0x3dc]
	addss xmm5, xmm1
	movss [ebp-0x368], xmm5
	mulss xmm4, [ebp-0x3e8]
	movss xmm0, dword [ebp-0x558]
	mulss xmm0, [ebp-0x3e4]
	addss xmm4, xmm0
	movss xmm1, dword [ebp-0x554]
	mulss xmm1, [ebp-0x3e0]
	addss xmm4, xmm1
	movss xmm0, dword [ebp-0x550]
	mulss xmm0, [ebp-0x3dc]
	addss xmm4, xmm0
	movss [ebp-0x364], xmm4
	mulss xmm3, [ebp-0x3e8]
	movss xmm1, dword [ebp-0x54c]
	mulss xmm1, [ebp-0x3e4]
	addss xmm3, xmm1
	movss xmm0, dword [ebp-0x548]
	mulss xmm0, [ebp-0x3e0]
	addss xmm3, xmm0
	movss xmm1, dword [ebp-0x544]
	mulss xmm1, [ebp-0x3dc]
	addss xmm3, xmm1
	movss [ebp-0x360], xmm3
	mulss xmm2, [ebp-0x3e8]
	mulss xmm6, [ebp-0x3e4]
	addss xmm2, xmm6
	mulss xmm7, [ebp-0x3e0]
	addss xmm2, xmm7
	movss xmm6, dword [ebp-0x540]
	mulss xmm6, [ebp-0x3dc]
	addss xmm2, xmm6
	movss [ebp-0x35c], xmm2
	lea eax, [ebp-0x458]
	lea edx, [ebp-0x398]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15MatrixInverse44PKfPf
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x20]
	movss [ebp-0x58c], xmm0
	movss [ebp-0xf8], xmm0
	mov eax, [ebp-0x56c]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x590], xmm0
	movss [ebp-0xf4], xmm0
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x594], xmm1
	movss [ebp-0xf0], xmm1
	mov dword [ebp-0xec], 0x0
	mov eax, [ebp-0x570]
	mov ebx, [eax+0x1380]
	test ebx, ebx
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10
	mov dword [ebp-0x574], 0x0
	mov [ebp-0x620], esi
	mov [ebp-0x63c], edi
	mov edx, [g_unit+0x8]
	mov [ebp-0x640], edx
	mov ecx, [g_unit+0xc]
	mov [ebp-0x644], ecx
	mov [ebp-0x648], esi
	mov [ebp-0x64c], edi
	mov [ebp-0x650], eax
	mov [ebp-0x654], edx
	mov [ebp-0x658], ecx
	mov edi, eax
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_20
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_130:
	mov eax, 0xffffffff
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_140:
	mov [ebp-0x498], eax
	movss xmm0, dword [ebp-0x354]
	movss [ebp-0x520], xmm0
	movss xmm1, dword [g_zero+0x4]
	xor eax, eax
	ucomiss xmm1, xmm0
	setbe al
	sub eax, 0x1
	mov [ebp-0x494], eax
	movss xmm2, dword [ebp-0x350]
	movss [ebp-0x51c], xmm2
	movss xmm0, dword [g_zero+0x8]
	xor eax, eax
	ucomiss xmm0, xmm2
	setbe al
	sub eax, 0x1
	mov [ebp-0x490], eax
	movss xmm5, dword [ebp-0x34c]
	movss xmm1, dword [g_zero+0xc]
	xor eax, eax
	ucomiss xmm1, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x48c], eax
	movaps xmm4, xmm7
	subss xmm4, xmm6
	movss [ebp-0x308], xmm4
	movss xmm1, dword [ebp-0x414]
	movss xmm0, dword [ebp-0x520]
	subss xmm0, xmm1
	movss [ebp-0x304], xmm0
	movss xmm2, dword [ebp-0x410]
	movss xmm0, dword [ebp-0x51c]
	subss xmm0, xmm2
	movss [ebp-0x300], xmm0
	movss xmm3, dword [ebp-0x40c]
	movaps xmm0, xmm5
	subss xmm0, xmm3
	movss [ebp-0x2fc], xmm0
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm6
	setbe al
	sub eax, 0x1
	mov [ebp-0x4d8], eax
	movss xmm6, dword [g_zero+0x4]
	xor eax, eax
	ucomiss xmm6, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x4d4], eax
	movss xmm0, dword [g_zero+0x8]
	xor eax, eax
	ucomiss xmm0, xmm2
	setbe al
	sub eax, 0x1
	mov [ebp-0x4d0], eax
	movss xmm1, dword [g_zero+0xc]
	xor eax, eax
	ucomiss xmm1, xmm3
	setbe al
	sub eax, 0x1
	mov [ebp-0x4cc], eax
	pxor xmm2, xmm2
	ucomiss xmm4, xmm2
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_30
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_30
	movss xmm4, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_180:
	movss [ebp-0x308], xmm4
	movss xmm0, dword [ebp-0x304]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_40
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_40
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_170:
	movss [ebp-0x304], xmm0
	movss xmm0, dword [ebp-0x300]
	pxor xmm6, xmm6
	ucomiss xmm0, xmm6
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_50
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_50
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_160:
	movss [ebp-0x300], xmm0
	movss xmm0, dword [ebp-0x2fc]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_60
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_60
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_150:
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x308]
	movss [ebp-0x308], xmm1
	movss xmm2, dword [ebp-0x520]
	mulss xmm2, [ebp-0x304]
	movss [ebp-0x304], xmm2
	movss xmm3, dword [ebp-0x51c]
	mulss xmm3, [ebp-0x300]
	movss [ebp-0x300], xmm3
	movaps xmm4, xmm5
	mulss xmm4, xmm0
	movss [ebp-0x2fc], xmm4
	movss xmm0, dword [ebp-0x268]
	subss xmm0, [ebp-0x258]
	movss [ebp-0x318], xmm0
	movss xmm0, dword [ebp-0x264]
	subss xmm0, [ebp-0x254]
	movss [ebp-0x314], xmm0
	movss xmm0, dword [ebp-0x260]
	subss xmm0, [ebp-0x250]
	movss [ebp-0x310], xmm0
	movss xmm0, dword [ebp-0x25c]
	subss xmm0, [ebp-0x24c]
	mulss xmm1, [ebp-0x318]
	addss xmm1, [ebp-0x258]
	movss [ebp-0x318], xmm1
	mulss xmm2, [ebp-0x314]
	addss xmm2, [ebp-0x254]
	movss [ebp-0x314], xmm2
	mulss xmm3, [ebp-0x310]
	addss xmm3, [ebp-0x250]
	movss [ebp-0x310], xmm3
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x24c]
	movss [ebp-0x30c], xmm4
	mov eax, [ebp-0x4d8]
	not eax
	mov [ebp-0x598], eax
	mov edx, [ebp-0x318]
	mov [ebp-0x59c], edx
	and eax, edx
	mov [ebp-0x5a0], eax
	mov eax, [ebp-0x4d8]
	and eax, [ebp-0x258]
	or [ebp-0x5a0], eax
	mov ecx, [ebp-0x5a0]
	mov [ebp-0x2f8], ecx
	mov ebx, [ebp-0x4d4]
	not ebx
	mov [ebp-0x5a4], ebx
	mov edi, [ebp-0x314]
	and ebx, edi
	mov eax, [ebp-0x4d4]
	and eax, [ebp-0x254]
	or ebx, eax
	mov [ebp-0x5a8], ebx
	mov [ebp-0x2f4], ebx
	mov esi, [ebp-0x4d0]
	not esi
	mov ebx, [ebp-0x310]
	mov eax, esi
	and eax, ebx
	mov [ebp-0x5ac], eax
	mov eax, [ebp-0x4d0]
	and eax, [ebp-0x250]
	or [ebp-0x5ac], eax
	mov edx, [ebp-0x5ac]
	mov [ebp-0x2f0], edx
	mov ecx, [ebp-0x4cc]
	not ecx
	mov edx, [ebp-0x30c]
	mov eax, ecx
	and eax, edx
	mov [ebp-0x5b0], eax
	mov eax, [ebp-0x4cc]
	and eax, [ebp-0x24c]
	or [ebp-0x5b0], eax
	mov eax, [ebp-0x5b0]
	mov [ebp-0x2ec], eax
	mov eax, [ebp-0x268]
	mov [ebp-0x638], eax
	mov eax, [ebp-0x598]
	and eax, [ebp-0x638]
	mov [ebp-0x5b4], eax
	mov eax, [ebp-0x4d8]
	and [ebp-0x59c], eax
	mov eax, [ebp-0x59c]
	or [ebp-0x5b4], eax
	mov eax, [ebp-0x5b4]
	mov [ebp-0x2e8], eax
	mov eax, [ebp-0x264]
	mov [ebp-0x634], eax
	mov eax, [ebp-0x5a4]
	and eax, [ebp-0x634]
	and edi, [ebp-0x4d4]
	or eax, edi
	mov [ebp-0x5b8], eax
	mov [ebp-0x2e4], eax
	mov edi, [ebp-0x260]
	mov [ebp-0x630], edi
	and esi, edi
	and ebx, [ebp-0x4d0]
	or esi, ebx
	mov [ebp-0x2e0], esi
	mov eax, [ebp-0x25c]
	mov [ebp-0x62c], eax
	and ecx, eax
	and edx, [ebp-0x4cc]
	or ecx, edx
	mov [ebp-0x68c], ecx
	mov [ebp-0x2dc], ecx
	mov edi, [ebp-0x498]
	mov edx, edi
	not edx
	mov [ebp-0x5bc], edx
	and edx, [ebp-0x258]
	and [ebp-0x5a0], edi
	mov ecx, [ebp-0x5a0]
	or edx, ecx
	mov [ebp-0x5c0], edx
	mov [ebp-0x258], edx
	mov ebx, [ebp-0x494]
	mov eax, ebx
	not eax
	mov [ebp-0x5c4], eax
	and eax, [ebp-0x254]
	and [ebp-0x5a8], ebx
	mov edx, [ebp-0x5a8]
	or eax, edx
	mov [ebp-0x5c8], eax
	mov [ebp-0x254], eax
	mov edx, [ebp-0x490]
	mov ecx, edx
	not ecx
	mov [ebp-0x5cc], ecx
	and ecx, [ebp-0x250]
	and [ebp-0x5ac], edx
	mov eax, [ebp-0x5ac]
	or ecx, eax
	mov [ebp-0x5d0], ecx
	mov [ebp-0x250], ecx
	mov eax, [ebp-0x48c]
	mov ecx, eax
	not ecx
	mov [ebp-0x5d4], ecx
	and ecx, [ebp-0x24c]
	mov [ebp-0x5d8], ecx
	and [ebp-0x5b0], eax
	mov ecx, [ebp-0x5b0]
	or [ebp-0x5d8], ecx
	mov ecx, [ebp-0x5d8]
	mov [ebp-0x24c], ecx
	mov ecx, [ebp-0x5bc]
	and ecx, [ebp-0x5b4]
	mov [ebp-0x5dc], ecx
	and [ebp-0x638], edi
	mov ecx, [ebp-0x638]
	or [ebp-0x5dc], ecx
	mov ecx, [ebp-0x5dc]
	mov [ebp-0x268], ecx
	mov ecx, [ebp-0x5c4]
	and ecx, [ebp-0x5b8]
	mov [ebp-0x5e0], ecx
	and [ebp-0x634], ebx
	mov ecx, [ebp-0x634]
	or [ebp-0x5e0], ecx
	mov ecx, [ebp-0x5e0]
	mov [ebp-0x264], ecx
	and esi, [ebp-0x5cc]
	mov [ebp-0x5e4], esi
	and [ebp-0x630], edx
	mov ecx, [ebp-0x630]
	or [ebp-0x5e4], ecx
	mov ecx, [ebp-0x5e4]
	mov [ebp-0x260], ecx
	mov ecx, [ebp-0x68c]
	and ecx, [ebp-0x5d4]
	mov [ebp-0x5e8], ecx
	and [ebp-0x62c], eax
	mov ecx, [ebp-0x62c]
	or [ebp-0x5e8], ecx
	mov ecx, [ebp-0x5e8]
	mov [ebp-0x25c], ecx
	and edi, [ebp-0x4d8]
	mov [ebp-0x2d8], edi
	and ebx, [ebp-0x4d4]
	mov [ebp-0x2d4], ebx
	and edx, [ebp-0x4d0]
	mov [ebp-0x2d0], edx
	and eax, [ebp-0x4cc]
	mov [ebp-0x2cc], eax
	test edi, edi
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_70
	mov ebx, [coeffZGtW.138963]
	mov [ebp-0x178], ebx
	mov ecx, [coeffZGtW.138963+0x4]
	mov [ebp-0x174], ecx
	mov edx, [coeffZGtW.138963+0x8]
	mov [ebp-0x170], edx
	mov eax, [coeffZGtW.138963+0xc]
	mov [ebp-0x16c], eax
	mov [ebp-0x2d8], ebx
	mov [ebp-0x2d4], ecx
	mov [ebp-0x2d0], edx
	mov [ebp-0x2cc], eax
	movss xmm1, dword [ebp-0x2d8]
	movss xmm2, dword [ebp-0x2d4]
	movss xmm3, dword [ebp-0x2d0]
	movss xmm4, dword [ebp-0x2cc]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0x258]
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x254]
	addss xmm5, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x250]
	addss xmm5, xmm0
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x24c]
	addss xmm5, xmm0
	movss [ebp-0x2dc], xmm5
	movss [ebp-0x2e0], xmm5
	movss [ebp-0x2e4], xmm5
	movss [ebp-0x2e8], xmm5
	mulss xmm1, [ebp-0x268]
	mulss xmm2, [ebp-0x264]
	addss xmm1, xmm2
	mulss xmm3, [ebp-0x260]
	addss xmm1, xmm3
	mulss xmm4, [ebp-0x25c]
	addss xmm1, xmm4
	movss [ebp-0x2ec], xmm1
	movss [ebp-0x2f0], xmm1
	movss [ebp-0x2f4], xmm1
	movss [ebp-0x2f8], xmm1
	movss xmm0, dword [g_zero]
	xor eax, eax
	ucomiss xmm0, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x308], eax
	movaps xmm2, xmm5
	movss xmm6, dword [g_zero+0x4]
	xor eax, eax
	ucomiss xmm6, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x304], eax
	movaps xmm3, xmm5
	movss xmm0, dword [g_zero+0x8]
	xor eax, eax
	ucomiss xmm0, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x300], eax
	movaps xmm4, xmm5
	movss xmm6, dword [g_zero+0xc]
	xor eax, eax
	ucomiss xmm6, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x2fc], eax
	movaps xmm0, xmm5
	subss xmm0, xmm1
	movss [ebp-0x498], xmm0
	movss [ebp-0x494], xmm0
	movss [ebp-0x490], xmm0
	movss [ebp-0x48c], xmm0
	movss xmm6, dword [g_zero]
	xor eax, eax
	ucomiss xmm6, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x318], eax
	movss xmm6, dword [g_zero+0x4]
	xor eax, eax
	ucomiss xmm6, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x314], eax
	movss xmm6, dword [g_zero+0x8]
	xor eax, eax
	ucomiss xmm6, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x310], eax
	movss xmm6, dword [g_zero+0xc]
	xor eax, eax
	ucomiss xmm6, xmm1
	setbe al
	sub eax, 0x1
	mov [ebp-0x30c], eax
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_80
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_80
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_220:
	movss [ebp-0x498], xmm0
	movss xmm0, dword [ebp-0x494]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_90
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_90
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_210:
	movss [ebp-0x494], xmm0
	movss xmm0, dword [ebp-0x490]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_100
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_100
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_200:
	movss [ebp-0x490], xmm0
	movss xmm0, dword [ebp-0x48c]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_110
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_110
	movss xmm0, dword [_float_3402823466385288598117041]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_190:
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x498]
	movss [ebp-0x498], xmm1
	mulss xmm2, [ebp-0x494]
	movss [ebp-0x494], xmm2
	mulss xmm3, [ebp-0x490]
	movss [ebp-0x490], xmm3
	mulss xmm4, xmm0
	movss [ebp-0x48c], xmm4
	movss xmm0, dword [ebp-0x268]
	subss xmm0, [ebp-0x258]
	movss [ebp-0x4d8], xmm0
	movss xmm0, dword [ebp-0x264]
	subss xmm0, [ebp-0x254]
	movss [ebp-0x4d4], xmm0
	movss xmm0, dword [ebp-0x260]
	subss xmm0, [ebp-0x250]
	movss [ebp-0x4d0], xmm0
	movss xmm0, dword [ebp-0x25c]
	subss xmm0, [ebp-0x24c]
	mulss xmm1, [ebp-0x4d8]
	addss xmm1, [ebp-0x258]
	movss [ebp-0x4d8], xmm1
	mulss xmm2, [ebp-0x4d4]
	addss xmm2, [ebp-0x254]
	movss [ebp-0x4d4], xmm2
	mulss xmm3, [ebp-0x4d0]
	addss xmm3, [ebp-0x250]
	movss [ebp-0x4d0], xmm3
	mulss xmm4, xmm0
	addss xmm4, [ebp-0x24c]
	movss [ebp-0x4cc], xmm4
	mov eax, [ebp-0x318]
	not eax
	mov [ebp-0x5ec], eax
	mov esi, [ebp-0x4d8]
	and eax, esi
	mov [ebp-0x5f0], eax
	mov eax, [ebp-0x318]
	and eax, [ebp-0x5c0]
	or [ebp-0x5f0], eax
	mov edx, [ebp-0x5f0]
	mov [ebp-0x418], edx
	mov ecx, [ebp-0x314]
	not ecx
	mov [ebp-0x5f4], ecx
	mov ebx, [ebp-0x4d4]
	mov edi, ecx
	and edi, ebx
	mov eax, [ebp-0x314]
	and eax, [ebp-0x5c8]
	or edi, eax
	mov [ebp-0x414], edi
	mov eax, [ebp-0x310]
	not eax
	mov [ebp-0x5f8], eax
	mov ecx, [ebp-0x4d0]
	and eax, ecx
	mov [ebp-0x5fc], eax
	mov eax, [ebp-0x310]
	and eax, [ebp-0x5d0]
	or [ebp-0x5fc], eax
	mov edx, [ebp-0x5fc]
	mov [ebp-0x410], edx
	mov eax, [ebp-0x30c]
	not eax
	mov [ebp-0x600], eax
	mov edx, [ebp-0x4cc]
	and eax, edx
	mov [ebp-0x604], eax
	mov eax, [ebp-0x30c]
	and eax, [ebp-0x5d8]
	or [ebp-0x604], eax
	mov eax, [ebp-0x604]
	mov [ebp-0x40c], eax
	mov eax, [ebp-0x5ec]
	and eax, [ebp-0x5dc]
	and esi, [ebp-0x318]
	or eax, esi
	mov [ebp-0x608], eax
	mov [ebp-0x358], eax
	mov eax, [ebp-0x5f4]
	and eax, [ebp-0x5e0]
	and ebx, [ebp-0x314]
	or eax, ebx
	mov [ebp-0x60c], eax
	mov [ebp-0x354], eax
	mov ebx, [ebp-0x5f8]
	and ebx, [ebp-0x5e4]
	and ecx, [ebp-0x310]
	or ebx, ecx
	mov [ebp-0x610], ebx
	mov [ebp-0x350], ebx
	mov eax, [ebp-0x600]
	and eax, [ebp-0x5e8]
	and edx, [ebp-0x30c]
	or eax, edx
	mov [ebp-0x614], eax
	mov [ebp-0x34c], eax
	mov edx, [ebp-0x308]
	mov [ebp-0x518], edx
	mov ebx, edx
	not ebx
	and [ebp-0x5c0], ebx
	and [ebp-0x5f0], edx
	mov ecx, [ebp-0x5f0]
	or [ebp-0x5c0], ecx
	mov eax, [ebp-0x5c0]
	mov [ebp-0x258], eax
	mov edx, [ebp-0x304]
	mov [ebp-0x514], edx
	mov ecx, edx
	not ecx
	and [ebp-0x5c8], ecx
	and edi, edx
	or [ebp-0x5c8], edi
	mov edi, [ebp-0x5c8]
	mov [ebp-0x254], edi
	mov edi, [ebp-0x300]
	mov edx, edi
	not edx
	and [ebp-0x5d0], edx
	and [ebp-0x5fc], edi
	mov eax, [ebp-0x5fc]
	or [ebp-0x5d0], eax
	mov eax, [ebp-0x5d0]
	mov [ebp-0x250], eax
	mov esi, [ebp-0x2fc]
	mov eax, esi
	not eax
	mov [ebp-0x690], eax
	and [ebp-0x5d8], eax
	and [ebp-0x604], esi
	mov eax, [ebp-0x604]
	or [ebp-0x5d8], eax
	mov eax, [ebp-0x5d8]
	mov [ebp-0x24c], eax
	and ebx, [ebp-0x608]
	mov eax, [ebp-0x518]
	and [ebp-0x5dc], eax
	or ebx, [ebp-0x5dc]
	mov [ebp-0x268], ebx
	and ecx, [ebp-0x60c]
	mov ebx, [ebp-0x514]
	and [ebp-0x5e0], ebx
	or ecx, [ebp-0x5e0]
	mov [ebp-0x264], ecx
	and edx, [ebp-0x610]
	and [ebp-0x5e4], edi
	or edx, [ebp-0x5e4]
	mov [ebp-0x260], edx
	mov eax, [ebp-0x614]
	and [ebp-0x690], eax
	and [ebp-0x5e8], esi
	mov edx, [ebp-0x5e8]
	or [ebp-0x690], edx
	mov ecx, [ebp-0x690]
	mov [ebp-0x25c], ecx
	mov ebx, [ebp-0x318]
	and [ebp-0x518], ebx
	mov eax, [ebp-0x518]
	mov [ebp-0x3d8], eax
	mov edx, [ebp-0x314]
	and [ebp-0x514], edx
	mov ecx, [ebp-0x514]
	mov [ebp-0x3d4], ecx
	and edi, [ebp-0x310]
	mov [ebp-0x3d0], edi
	and esi, [ebp-0x30c]
	mov [ebp-0x3cc], esi
	test eax, eax
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_120
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_70:
	add dword [ebp-0x574], 0x1
	add dword [ebp-0x650], 0x34
	mov edi, [ebp-0x574]
	mov ebx, [ebp-0x570]
	cmp edi, [ebx+0x1380]
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10
	mov edi, [ebp-0x650]
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_20:
	movss xmm0, dword [edi+0x20]
	movss [ebp-0x53c], xmm0
	movss xmm1, dword [edi+0x24]
	movss [ebp-0x538], xmm1
	mov eax, [edi+0x2c]
	mov [ebp-0x530], eax
	mov eax, [g_zero]
	mov [ebp-0x188], eax
	mov eax, [g_zero+0x4]
	mov [ebp-0x184], eax
	mov eax, [g_zero+0x8]
	mov [ebp-0x180], eax
	mov eax, [g_zero+0xc]
	mov [ebp-0x17c], eax
	mov eax, [edi]
	mov [ebp-0x1b8], eax
	mov eax, [edi+0x4]
	mov [ebp-0x1b4], eax
	mov eax, [edi+0x8]
	mov [ebp-0x1b0], eax
	mov dword [ebp-0x1ac], 0x0
	mov eax, [edi+0xc]
	mov [ebp-0x1c8], eax
	mov eax, [edi+0x10]
	mov [ebp-0x1c4], eax
	mov eax, [edi+0x14]
	mov [ebp-0x1c0], eax
	mov dword [ebp-0x1bc], 0x0
	mov edx, [ebp-0x1c8]
	mov [ebp-0xe8], edx
	mov ecx, [ebp-0x1c4]
	mov [ebp-0xe4], ecx
	mov edi, [ebp-0x1c0]
	mov [ebp-0xe0], edi
	mov esi, [ebp-0x1bc]
	mov [ebp-0xdc], esi
	mov ebx, [ebp-0x1b8]
	mov [ebp-0xd8], ebx
	mov ecx, [ebp-0x1b4]
	mov [ebp-0xd4], ecx
	mov edx, [ebp-0x1b0]
	mov [ebp-0xd0], edx
	mov eax, [ebp-0x1ac]
	mov [ebp-0xcc], eax
	mov [ebp-0x228], ebx
	mov [ebp-0x224], ecx
	mov [ebp-0x220], edx
	mov [ebp-0x21c], eax
	mov ebx, [ebp-0x1c8]
	mov [ebp-0x218], ebx
	mov eax, [ebp-0x1c4]
	mov [ebp-0x214], eax
	mov [ebp-0x210], edi
	mov [ebp-0x20c], esi
	mov edx, [ebp-0x620]
	mov [ebp-0x58], edx
	mov ecx, [ebp-0x63c]
	mov [ebp-0x54], ecx
	mov ebx, [ebp-0x640]
	mov [ebp-0x50], ebx
	mov edi, [ebp-0x644]
	mov [ebp-0x4c], edi
	movss xmm0, dword [ebp-0x228]
	addss xmm0, [ebp-0x58]
	movss [ebp-0x238], xmm0
	movss xmm0, dword [ebp-0x224]
	addss xmm0, [ebp-0x54]
	movss [ebp-0x234], xmm0
	movss xmm0, dword [ebp-0x220]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x230], xmm0
	movss xmm0, dword [ebp-0x21c]
	addss xmm0, [ebp-0x4c]
	movss [ebp-0x22c], xmm0
	mov [ebp-0x48], edx
	mov [ebp-0x44], ecx
	mov [ebp-0x40], ebx
	mov [ebp-0x3c], edi
	movss xmm0, dword [ebp-0x218]
	addss xmm0, [ebp-0x48]
	movss [ebp-0x248], xmm0
	movss xmm0, dword [ebp-0x214]
	addss xmm0, [ebp-0x44]
	movss [ebp-0x244], xmm0
	movss xmm0, dword [ebp-0x210]
	addss xmm0, [ebp-0x40]
	movss [ebp-0x240], xmm0
	movss xmm0, dword [ebp-0x20c]
	addss xmm0, [ebp-0x3c]
	movss [ebp-0x23c], xmm0
	mov ebx, [ebp-0x238]
	mov [ebp-0x38], ebx
	mov ecx, [ebp-0x234]
	mov [ebp-0x34], ecx
	mov edx, [ebp-0x230]
	mov [ebp-0x30], edx
	mov eax, [ebp-0x22c]
	mov [ebp-0x2c], eax
	mov [ebp-0x2c8], ebx
	mov [ebp-0x2c4], ecx
	mov [ebp-0x2c0], edx
	mov [ebp-0x2bc], eax
	movss xmm2, dword [ebp-0x2c8]
	movss xmm5, dword [ebp-0x2c4]
	movss xmm6, dword [ebp-0x2c0]
	movss xmm7, dword [ebp-0x2bc]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x398]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x388]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x378]
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x368]
	addss xmm4, xmm0
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x394]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x384]
	addss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x374]
	addss xmm3, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x364]
	addss xmm3, xmm0
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x390]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x380]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x370]
	addss xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x360]
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x38c]
	mulss xmm5, [ebp-0x37c]
	addss xmm2, xmm5
	mulss xmm6, [ebp-0x36c]
	addss xmm2, xmm6
	mulss xmm7, [ebp-0x35c]
	addss xmm2, xmm7
	movss [ebp-0x258], xmm4
	movss [ebp-0x254], xmm3
	movss [ebp-0x250], xmm1
	movss [ebp-0x24c], xmm2
	mov ebx, [ebp-0x248]
	mov [ebp-0x168], ebx
	mov ecx, [ebp-0x244]
	mov [ebp-0x164], ecx
	mov edx, [ebp-0x240]
	mov [ebp-0x160], edx
	mov eax, [ebp-0x23c]
	mov [ebp-0x15c], eax
	mov [ebp-0x3d8], ebx
	mov [ebp-0x3d4], ecx
	mov [ebp-0x3d0], edx
	mov [ebp-0x3cc], eax
	movss xmm3, dword [ebp-0x3d8]
	movss xmm5, dword [ebp-0x3d4]
	movss xmm6, dword [ebp-0x3d0]
	movss xmm7, dword [ebp-0x3cc]
	movaps xmm4, xmm3
	mulss xmm4, [ebp-0x398]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x388]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x378]
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x368]
	addss xmm4, xmm0
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0x394]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x384]
	addss xmm2, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x374]
	addss xmm2, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x364]
	addss xmm2, xmm0
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x390]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x380]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x370]
	addss xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x360]
	addss xmm1, xmm0
	mulss xmm3, [ebp-0x38c]
	mulss xmm5, [ebp-0x37c]
	addss xmm3, xmm5
	mulss xmm6, [ebp-0x36c]
	addss xmm3, xmm6
	mulss xmm7, [ebp-0x35c]
	addss xmm3, xmm7
	movss [ebp-0x268], xmm4
	movss [ebp-0x264], xmm2
	movss [ebp-0x260], xmm1
	movss [ebp-0x25c], xmm3
	mov dword [ebp-0x2c8], 0x0
	mov dword [ebp-0x2c4], 0x0
	mov dword [ebp-0x2c0], 0x3f800000
	mov dword [ebp-0x2bc], 0x0
	mov ebx, [ebp-0x2c8]
	mov [ebp-0x128], ebx
	mov ecx, [ebp-0x2c4]
	mov [ebp-0x124], ecx
	mov edx, [ebp-0x2c0]
	mov [ebp-0x120], edx
	mov eax, [ebp-0x2bc]
	mov [ebp-0x11c], eax
	mov [ebp-0x3d8], ebx
	mov [ebp-0x3d4], ecx
	mov [ebp-0x3d0], edx
	mov [ebp-0x3cc], eax
	movss xmm4, dword [ebp-0x3d8]
	movss xmm1, dword [ebp-0x3d4]
	movss xmm2, dword [ebp-0x3d0]
	movss xmm5, dword [ebp-0x3cc]
	movaps xmm7, xmm4
	mulss xmm7, [ebp-0x258]
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x254]
	addss xmm7, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x250]
	addss xmm7, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x24c]
	addss xmm7, xmm0
	movss [ebp-0x34c], xmm7
	movss [ebp-0x350], xmm7
	movss [ebp-0x354], xmm7
	movss [ebp-0x358], xmm7
	movaps xmm6, xmm4
	mulss xmm6, [ebp-0x268]
	mulss xmm1, [ebp-0x264]
	addss xmm6, xmm1
	mulss xmm2, [ebp-0x260]
	addss xmm6, xmm2
	mulss xmm3, xmm5
	addss xmm6, xmm3
	movss [ebp-0x40c], xmm6
	movss [ebp-0x410], xmm6
	movss [ebp-0x414], xmm6
	movss [ebp-0x418], xmm6
	movss xmm0, dword [g_zero]
	ucomiss xmm0, xmm7
	ja _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_130
	xor eax, eax
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_140
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_60:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm0
	movaps xmm0, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_150
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_50:
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_160
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_40:
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	movaps xmm0, xmm2
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_170
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_30:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm4
	movaps xmm4, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_180
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_110:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm0
	movaps xmm0, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_190
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_100:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm0
	movaps xmm0, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_200
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_90:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm0
	movaps xmm0, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_210
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_80:
	movss xmm6, dword [_float_1_00000000]
	divss xmm6, xmm0
	movaps xmm0, xmm6
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_220
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10:
	add esp, 0x6bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_120:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x24c]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x258]
	movss [ebp-0x278], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x254]
	movss [ebp-0x274], xmm1
	mulss xmm0, [ebp-0x250]
	movss [ebp-0x270], xmm0
	mov dword [ebp-0x26c], 0x3f800000
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp-0x25c]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x268]
	movss [ebp-0x288], xmm1
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x264]
	movss [ebp-0x284], xmm2
	mulss xmm0, [ebp-0x260]
	movss [ebp-0x280], xmm0
	mov dword [ebp-0x27c], 0x3f800000
	subss xmm1, [ebp-0x278]
	movss [ebp-0x298], xmm1
	subss xmm2, [ebp-0x274]
	movss [ebp-0x294], xmm2
	subss xmm0, [ebp-0x270]
	movss [ebp-0x290], xmm0
	mov dword [ebp-0x28c], 0x0
	mov edx, [g_keepXYW]
	mov [ebp-0x158], edx
	mov ecx, [g_keepXYW+0x4]
	mov [ebp-0x154], ecx
	mov ebx, [g_keepXYW+0x8]
	mov [ebp-0x150], ebx
	mov eax, [g_keepXYW+0xc]
	mov [ebp-0x14c], eax
	and edx, [ebp-0x298]
	mov [ebp-0x298], edx
	and ecx, [ebp-0x294]
	mov [ebp-0x294], ecx
	and ebx, [ebp-0x290]
	mov [ebp-0x290], ebx
	and eax, [ebp-0x28c]
	mov [ebp-0x28c], eax
	mov [ebp-0x148], edx
	mov [ebp-0x144], ecx
	mov [ebp-0x140], ebx
	mov [ebp-0x13c], eax
	mov [ebp-0x3d8], edx
	mov [ebp-0x3d4], ecx
	mov [ebp-0x3d0], ebx
	mov [ebp-0x3cc], eax
	movss xmm2, dword [ebp-0x3d8]
	movss xmm5, dword [ebp-0x3d4]
	movss xmm6, dword [ebp-0x3d0]
	movss xmm7, dword [ebp-0x3cc]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x458]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x448]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x438]
	addss xmm4, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x428]
	addss xmm4, xmm0
	movss [ebp-0x2c8], xmm4
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x454]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x444]
	addss xmm3, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x434]
	addss xmm3, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x424]
	addss xmm3, xmm0
	movss [ebp-0x2c4], xmm3
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x450]
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0x440]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x430]
	addss xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0x420]
	addss xmm1, xmm0
	movss [ebp-0x2c0], xmm1
	mulss xmm2, [ebp-0x44c]
	mulss xmm5, [ebp-0x43c]
	addss xmm2, xmm5
	mulss xmm6, [ebp-0x42c]
	addss xmm2, xmm6
	mulss xmm7, [ebp-0x41c]
	addss xmm2, xmm7
	movss [ebp-0x2bc], xmm2
	movss [ebp-0x2a8], xmm4
	movss [ebp-0x2a4], xmm3
	movss [ebp-0x2a0], xmm1
	movss [ebp-0x29c], xmm2
	mov ebx, [g_keepXYZ]
	mov [ebp-0x138], ebx
	mov eax, [g_keepXYZ+0x4]
	mov [ebp-0x134], eax
	mov edx, [g_keepXYZ+0x8]
	mov [ebp-0x130], edx
	mov ecx, [g_keepXYZ+0xc]
	mov [ebp-0x12c], ecx
	and ebx, [ebp-0x2a8]
	mov [ebp-0x188], ebx
	and eax, [ebp-0x2a4]
	mov [ebp-0x184], eax
	and edx, [ebp-0x2a0]
	mov [ebp-0x180], edx
	and ecx, [ebp-0x29c]
	mov [ebp-0x17c], ecx
	mov [ebp-0x2b8], ebx
	mov [ebp-0x2b4], eax
	mov [ebp-0x2b0], edx
	mov [ebp-0x2ac], ecx
	movss xmm0, dword [ebp-0x2b8]
	movss xmm1, dword [ebp-0x2b4]
	movss xmm2, dword [ebp-0x2b0]
	movss xmm3, dword [ebp-0x2ac]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	addss xmm0, xmm3
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00000200]
	jp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_230
	jb _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_70
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_230:
	movss xmm4, dword [ebp-0x188]
	movss xmm1, dword [ebp-0x184]
	movss xmm2, dword [ebp-0x180]
	movss xmm3, dword [ebp-0x17c]
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	addss xmm0, xmm3
	sqrtss xmm0, xmm0
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm4, xmm1
	movss [ebp-0x188], xmm4
	mulss xmm1, [ebp-0x184]
	movss [ebp-0x184], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x180]
	movss [ebp-0x180], xmm1
	mulss xmm0, [ebp-0x17c]
	movss [ebp-0x17c], xmm0
	mov eax, [ebp-0x530]
	add eax, eax
	mov [ebp-0x618], eax
	add eax, [ebp-0x530]
	lea eax, [eax+eax+0x6]
	mov [ebp-0x528], eax
	mov ebx, [ebp-0x618]
	add ebx, 0x4
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x528]
	mov [esp], edx
	call _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	test al, al
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z22R_ReserveCodeMeshVertsiPt
	test al, al
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z21R_ReserveCodeMeshArgsiPj
	test al, al
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_10
	mov ebx, [ebp-0x28]
	movzx eax, word [ebp-0x1a]
	mov [ebx], ax
	add eax, 0x2
	mov [ebx+0x2], ax
	movzx edx, word [ebp-0x1a]
	lea ecx, [edx+0x1]
	mov [ebp-0x4de], cx
	mov ecx, [ebp-0x530]
	test ecx, ecx
	jz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_240
	lea eax, [ebx+0x4]
	mov [ebp-0x4e8], eax
	lea edi, [ebx+0x8]
	lea esi, [ebx+0xc]
	mov dword [ebp-0x52c], 0x0
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_250:
	movzx ecx, word [ebp-0x52c]
	add ecx, ecx
	lea edx, [edx+ecx+0x2]
	mov [ebp-0x69a], dx
	movzx edx, word [ebp-0x4de]
	mov eax, [ebp-0x4e8]
	mov [eax], dx
	movzx edx, word [ebp-0x69a]
	mov [eax+0x2], dx
	movzx eax, word [ebp-0x1a]
	lea edx, [eax+ecx+0x4]
	mov [edi], dx
	lea eax, [eax+ecx+0x1]
	mov [edi+0x2], ax
	movzx eax, word [ebp-0x1a]
	lea edx, [eax+ecx+0x1]
	mov [esi], dx
	lea eax, [eax+ecx+0x4]
	mov [esi+0x2], ax
	movzx edx, word [ebp-0x1a]
	lea ecx, [edx+ecx+0x3]
	mov [ebp-0x4de], cx
	add dword [ebp-0x52c], 0x1
	add dword [ebp-0x4e8], 0xc
	add edi, 0xc
	add esi, 0xc
	mov ecx, [ebp-0x52c]
	cmp [ebp-0x530], ecx
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_250
	mov edi, [ebp-0x530]
	lea eax, [edi+edi*2]
	lea edi, [eax+0x1]
	lea esi, [eax+0x2]
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_260
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_240:
	mov edi, 0x1
	mov esi, 0x2
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_260:
	movzx ecx, word [ebp-0x618]
	sub ecx, 0x2
	lea edx, [edx+ecx+0x3]
	lea eax, [ebx+edi*4]
	movzx edi, word [ebp-0x4de]
	mov [eax], di
	mov [eax+0x2], dx
	movzx eax, word [ebp-0x1a]
	lea ebx, [ebx+esi*4]
	lea edx, [eax+ecx+0x4]
	mov [ebx], dx
	lea eax, [eax+ecx+0x5]
	mov [ebx+0x2], ax
	mov dword [esp+0x14], _cstring_beam
	mov dword [esp+0x10], 0x2
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x528]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x650]
	mov eax, [edx+0x28]
	mov [esp], eax
	call _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z17R_GetCodeMeshArgsj
	mov ebx, eax
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call _Z18R_GetCodeMeshVertst
	mov [ebp-0x524], eax
	movss xmm0, dword [ebp-0x594]
	mulss xmm0, [ebp-0x184]
	movss xmm1, dword [ebp-0x590]
	mulss xmm1, [ebp-0x180]
	subss xmm0, xmm1
	movss [ebp-0x1a8], xmm0
	movss xmm0, dword [ebp-0x58c]
	mulss xmm0, [ebp-0x180]
	movss xmm1, dword [ebp-0x594]
	mulss xmm1, [ebp-0x188]
	subss xmm0, xmm1
	movss [ebp-0x1a4], xmm0
	movss xmm0, dword [ebp-0x590]
	mulss xmm0, [ebp-0x188]
	movss xmm1, dword [ebp-0x58c]
	mulss xmm1, [ebp-0x184]
	subss xmm0, xmm1
	movss [ebp-0x1a0], xmm0
	lea eax, [ebp-0x1a8]
	mov [esp+0x4], eax
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm0, dword [ebp-0x1c8]
	movss [ebp-0x510], xmm0
	movss xmm3, dword [ebp-0x1b8]
	subss xmm0, xmm3
	movss [ebp-0x208], xmm0
	movss xmm1, dword [ebp-0x1c4]
	movss [ebp-0x50c], xmm1
	movss xmm4, dword [ebp-0x1b4]
	movaps xmm0, xmm1
	subss xmm0, xmm4
	movss [ebp-0x204], xmm0
	movss xmm2, dword [ebp-0x1c0]
	movss [ebp-0x508], xmm2
	movss xmm5, dword [ebp-0x1b0]
	movaps xmm0, xmm2
	subss xmm0, xmm5
	movss [ebp-0x200], xmm0
	mov dword [ebp-0x1fc], 0x0
	lea eax, [ebp-0x208]
	mov [esp+0x4], eax
	mov [esp], eax
	movss [ebp-0x668], xmm3
	movss [ebp-0x678], xmm4
	movss [ebp-0x688], xmm5
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	movss xmm3, dword [ebp-0x668]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x208]
	movss xmm4, dword [ebp-0x678]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x204]
	addss xmm0, xmm1
	movss xmm5, dword [ebp-0x688]
	movaps xmm1, xmm5
	mulss xmm1, [ebp-0x200]
	addss xmm0, xmm1
	xorps xmm0, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss [ebp-0x1d8], xmm0
	movss [ebp-0x1d4], xmm0
	movss [ebp-0x1d0], xmm0
	movss [ebp-0x1cc], xmm0
	mov edx, [g_swizzleXYZA]
	mov [ebp-0xc8], edx
	mov ecx, [g_swizzleXYZA+0x4]
	mov [ebp-0xc4], ecx
	mov esi, [g_swizzleXYZA+0x8]
	mov [ebp-0xc0], esi
	mov edi, [g_swizzleXYZA+0xc]
	mov [ebp-0xbc], edi
	mov eax, [ebp-0x208]
	mov [ebp-0x3d8], eax
	mov eax, [ebp-0x204]
	mov [ebp-0x3d4], eax
	mov eax, [ebp-0x200]
	mov [ebp-0x3d0], eax
	mov eax, [ebp-0x1fc]
	mov [ebp-0x3cc], eax
	mov eax, [ebp-0x1d8]
	mov [ebp-0x3c8], eax
	mov eax, [ebp-0x1d4]
	mov [ebp-0x3c4], eax
	mov eax, [ebp-0x1d0]
	mov [ebp-0x3c0], eax
	mov eax, [ebp-0x1cc]
	mov [ebp-0x3bc], eax
	mov [ebp-0x2c8], edx
	mov [ebp-0x2c4], ecx
	mov [ebp-0x2c0], esi
	mov [ebp-0x2bc], edi
	movzx eax, byte [ebp-0x2c5]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx], al
	movzx eax, byte [ebp-0x2c6]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x1], al
	movzx eax, byte [ebp-0x2c7]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x2], al
	movzx eax, byte [ebp-0x2c8]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x3], al
	movzx eax, byte [ebp-0x2c1]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x4], al
	movzx eax, byte [ebp-0x2c2]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x5], al
	movzx eax, byte [ebp-0x2c3]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x6], al
	movzx eax, byte [ebp-0x2c4]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x7], al
	movzx eax, byte [ebp-0x2bd]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x8], al
	movzx eax, byte [ebp-0x2be]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0x9], al
	movzx eax, byte [ebp-0x2bf]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xa], al
	movzx eax, byte [ebp-0x2c0]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xb], al
	movzx eax, byte [ebp-0x2b9]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xc], al
	movzx eax, byte [ebp-0x2ba]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xd], al
	movzx eax, byte [ebp-0x2bb]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xe], al
	movzx eax, byte [ebp-0x2bc]
	movzx eax, byte [ebp+eax-0x3d8]
	mov [ebx+0xf], al
	lea edx, [ebx+0x10]
	mov eax, [ebp-0x648]
	mov [ebp-0x620], eax
	mov [ebp-0xb8], eax
	mov ecx, [ebp-0x64c]
	mov [ebp-0x63c], ecx
	mov [ebp-0xb4], ecx
	mov edi, [ebp-0x654]
	mov [ebp-0x640], edi
	mov [ebp-0xb0], edi
	mov eax, [ebp-0x658]
	mov [ebp-0x644], eax
	mov [ebp-0xac], eax
	mov eax, [ebp-0xb8]
	mov [ebx+0x10], eax
	mov eax, [ebp-0xb4]
	mov [edx+0x4], eax
	mov eax, [ebp-0xb0]
	mov [edx+0x8], eax
	mov eax, [ebp-0xac]
	mov [edx+0xc], eax
	movaps xmm0, xmm3
	addss xmm0, [ebx+0x10]
	movss [ebx+0x10], xmm0
	movaps xmm0, xmm4
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	movaps xmm0, xmm5
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	pxor xmm0, xmm0
	addss xmm0, [edx+0xc]
	movss [edx+0xc], xmm0
	mov ecx, [ebp-0x650]
	mov edx, [ecx+0x18]
	mov [ebp-0x20], edx
	mov ebx, [ecx+0x1c]
	mov [ebp-0x578], ebx
	mov [ebp-0x118], ebx
	movss xmm0, dword [ebp-0x53c]
	xorps xmm0, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x188]
	addss xmm2, xmm3
	movss [ebp-0x198], xmm2
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x184]
	addss xmm4, xmm1
	movss [ebp-0x194], xmm4
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x180]
	addss xmm5, xmm1
	movss [ebp-0x190], xmm5
	mulss xmm0, [ebp-0x17c]
	pxor xmm1, xmm1
	addss xmm0, xmm1
	movss [ebp-0x18c], xmm0
	mov eax, [ebp-0x524]
	movss [eax], xmm2
	mov eax, [ebp-0x194]
	mov ecx, [ebp-0x524]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x190]
	mov [ecx+0x8], eax
	mov [ecx+0x10], edx
	mov dword [ecx+0xc], 0x3f800000
	mov dword [ecx+0x18], 0x3ffe7f7f
	mov dword [ecx+0x1c], 0x3f7f7ffe
	mov dword [ecx+0x14], 0x0
	mov eax, ecx
	add eax, 0x20
	mov ebx, [ebp-0x650]
	movss xmm0, dword [ebx+0x30]
	movss [ebp-0x534], xmm0
	mov dword [ebp-0x108], 0xffffffff
	mov edx, [ebp-0x530]
	test edx, edx
	js _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_270
	cvtsi2ss xmm1, dword [ebp-0x530]
	movss [ebp-0x4f8], xmm1
	add ecx, 0x50
	mov [ebp-0x4f0], ecx
	mov edx, [ebp-0x524]
	add edx, 0x4c
	mov [ebp-0x4ec], edx
	mov [ebp-0x4e4], eax
	mov dword [ebp-0x4dc], 0x0
	mov dword [ebp-0x4f4], 0x0
	movss xmm0, dword [ebp-0x538]
	subss xmm0, [ebp-0x53c]
	movss [ebp-0x624], xmm0
	mov eax, [ebp-0x524]
	add eax, 0x40
	mov [ebp-0x628], eax
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_300:
	cvtsi2ss xmm6, dword [ebp-0x4dc]
	divss xmm6, dword [ebp-0x4f8]
	mov edx, [ebp-0x4dc]
	and edx, 0x7
	shl edx, 0x4
	mov eax, [edx+_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle]
	mov [ebp-0x2c8], eax
	mov eax, [edx+_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle+0x4]
	mov [ebp-0x2c4], eax
	mov eax, [edx+_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle+0x8]
	mov [ebp-0x2c0], eax
	mov eax, [edx+_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle+0xc]
	mov [ebp-0x2bc], eax
	movss xmm7, dword [ebp-0x534]
	mulss xmm7, [ebp-0x2c8]
	movss [ebp-0x268], xmm7
	movss xmm0, dword [ebp-0x534]
	mulss xmm0, [ebp-0x2c4]
	movss [ebp-0x61c], xmm0
	movss [ebp-0x264], xmm0
	movss xmm0, dword [ebp-0x534]
	mulss xmm0, [ebp-0x2c0]
	movss [ebp-0x260], xmm0
	movss xmm0, dword [ebp-0x534]
	mulss xmm0, [ebp-0x2bc]
	movss [ebp-0x25c], xmm0
	movss [ebp-0x258], xmm7
	movss [ebp-0x254], xmm7
	movss [ebp-0x250], xmm7
	movss [ebp-0x24c], xmm7
	movss xmm1, dword [ebp-0x61c]
	movss [ebp-0x218], xmm1
	movss [ebp-0x214], xmm1
	movss [ebp-0x210], xmm1
	movss [ebp-0x20c], xmm1
	mov ecx, 0x1
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_290:
	movzx edx, byte [ecx+ebp-0x21]
	cvtsi2ss xmm1, edx
	movzx eax, byte [ecx+ebp-0x119]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm6
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	test eax, eax
	js _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_280
	mov edx, 0xffffffff
	cmp eax, 0x100
	cmovl edx, eax
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_310:
	mov [ecx+ebp-0x109], dl
	add ecx, 0x1
	cmp ecx, 0x5
	jnz _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_290
	mov esi, [ebp-0x1c8]
	mov [ebp-0xa8], esi
	mov edi, [ebp-0x1c4]
	mov [ebp-0xa4], edi
	mov eax, [ebp-0x1c0]
	mov [ebp-0xa0], eax
	mov edx, [ebp-0x1bc]
	mov [ebp-0x9c], edx
	mov ebx, [ebp-0x1b8]
	mov [ebp-0x98], ebx
	mov edx, [ebp-0x1b4]
	mov [ebp-0x94], edx
	mov ecx, [ebp-0x1b0]
	mov [ebp-0x90], ecx
	mov eax, [ebp-0x1ac]
	mov [ebp-0x8c], eax
	mov [ebp-0x248], ebx
	mov [ebp-0x244], edx
	mov [ebp-0x240], ecx
	mov [ebp-0x23c], eax
	mov [ebp-0x238], esi
	mov [ebp-0x234], edi
	mov ecx, [ebp-0x1c0]
	mov [ebp-0x230], ecx
	mov ebx, [ebp-0x1bc]
	mov [ebp-0x22c], ebx
	movss xmm4, dword [ebp-0x248]
	movss xmm0, dword [ebp-0x238]
	subss xmm0, xmm4
	movss [ebp-0x3d8], xmm0
	movss xmm5, dword [ebp-0x244]
	movss xmm0, dword [ebp-0x234]
	subss xmm0, xmm5
	movss [ebp-0x3d4], xmm0
	movss xmm2, dword [ebp-0x240]
	movss xmm0, dword [ebp-0x230]
	subss xmm0, xmm2
	movss [ebp-0x3d0], xmm0
	movss xmm3, dword [ebp-0x23c]
	movss xmm1, dword [ebp-0x22c]
	subss xmm1, xmm3
	movss [ebp-0x3cc], xmm1
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3d8]
	addss xmm4, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3d4]
	addss xmm5, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x3d0]
	addss xmm2, xmm0
	movss [ebp-0x220], xmm2
	mulss xmm1, xmm6
	addss xmm3, xmm1
	mulss xmm6, [ebp-0x624]
	addss xmm6, [ebp-0x53c]
	movss xmm0, dword [ebp-0x1a8]
	movss [ebp-0x504], xmm0
	mulss xmm0, [ebp-0x258]
	addss xmm0, xmm4
	movss [ebp-0x228], xmm0
	movss xmm1, dword [ebp-0x1a4]
	movss [ebp-0x500], xmm1
	movaps xmm0, xmm1
	mulss xmm0, [ebp-0x254]
	addss xmm0, xmm5
	movss [ebp-0x224], xmm0
	movss xmm2, dword [ebp-0x1a0]
	movss [ebp-0x4fc], xmm2
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x250]
	addss xmm0, [ebp-0x220]
	mulss xmm7, [ebp-0x19c]
	addss xmm7, xmm3
	movss xmm4, dword [ebp-0x218]
	mulss xmm4, [ebp-0x188]
	addss xmm4, [ebp-0x228]
	movss [ebp-0x228], xmm4
	movss xmm2, dword [ebp-0x214]
	mulss xmm2, [ebp-0x184]
	addss xmm2, [ebp-0x224]
	movss [ebp-0x224], xmm2
	movss xmm3, dword [ebp-0x210]
	mulss xmm3, [ebp-0x180]
	addss xmm3, xmm0
	movss [ebp-0x220], xmm3
	movss xmm5, dword [ebp-0x61c]
	mulss xmm5, [ebp-0x17c]
	addss xmm5, xmm7
	movss [ebp-0x21c], xmm5
	movaps xmm1, xmm6
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x20]
	movss xmm7, dword [ebp-0x504]
	mulss xmm7, xmm1
	addss xmm7, xmm4
	movss [ebp-0x1e8], xmm7
	movss xmm0, dword [ebp-0x500]
	mulss xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0x1e4], xmm0
	movss xmm0, dword [ebp-0x4fc]
	mulss xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x1e0], xmm0
	mulss xmm1, [ebp-0x19c]
	addss xmm1, xmm5
	movss [ebp-0x1dc], xmm1
	movss xmm0, dword [ebp-0x504]
	mulss xmm0, xmm6
	addss xmm4, xmm0
	movss [ebp-0x1f8], xmm4
	movss xmm1, dword [ebp-0x500]
	mulss xmm1, xmm6
	addss xmm2, xmm1
	movss [ebp-0x1f4], xmm2
	movss xmm2, dword [ebp-0x4fc]
	mulss xmm2, xmm6
	addss xmm3, xmm2
	movss [ebp-0x1f0], xmm3
	mulss xmm6, [ebp-0x19c]
	addss xmm5, xmm6
	movss [ebp-0x1ec], xmm5
	mov eax, [ebp-0x4e4]
	movss [eax], xmm7
	mov eax, [ebp-0x1e4]
	mov edx, [ebp-0x4e4]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1e0]
	mov [edx+0x8], eax
	mov ecx, [ebp-0x108]
	mov [edx+0x10], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x18], 0x3ffe7f7f
	mov dword [edx+0x1c], 0x3f7f7ffe
	mov dword [edx+0x14], 0x3c00
	mov edx, [ebp-0x4e4]
	add edx, 0x20
	mov eax, [ebp-0x1f8]
	mov ebx, [ebp-0x4e4]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x1f4]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1f0]
	mov [edx+0x8], eax
	mov edi, [ebp-0x4f0]
	mov [edi], ecx
	mov eax, [ebp-0x4ec]
	mov dword [eax], 0x3f800000
	mov edx, [ebp-0x628]
	mov ecx, [ebp-0x4f4]
	mov dword [edx+ecx+0x18], 0x3ffe7f7f
	mov dword [edx+ecx+0x1c], 0x3f7f7ffe
	mov dword [edx+ecx+0x14], 0x3c000000
	add ebx, 0x40
	mov [ebp-0x4e4], ebx
	add dword [ebp-0x4dc], 0x1
	add ecx, 0x40
	mov [ebp-0x4f4], ecx
	add edi, 0x40
	mov [ebp-0x4f0], edi
	add eax, 0x40
	mov [ebp-0x4ec], eax
	mov ebx, [ebp-0x4dc]
	cmp [ebp-0x530], ebx
	jge _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_300
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_320:
	movss xmm1, dword [ebp-0x538]
	mulss xmm1, [ebp-0x188]
	addss xmm1, [ebp-0x510]
	movss [ebp-0x1e8], xmm1
	movss xmm0, dword [ebp-0x538]
	mulss xmm0, [ebp-0x184]
	addss xmm0, [ebp-0x50c]
	movss [ebp-0x1e4], xmm0
	movss xmm0, dword [ebp-0x538]
	mulss xmm0, [ebp-0x180]
	addss xmm0, [ebp-0x508]
	movss [ebp-0x1e0], xmm0
	movss xmm0, dword [ebp-0x538]
	mulss xmm0, [ebp-0x17c]
	pxor xmm2, xmm2
	addss xmm2, xmm0
	movss [ebp-0x1dc], xmm2
	mov eax, [ebp-0x4e4]
	movss [eax], xmm1
	mov eax, [ebp-0x1e4]
	mov edx, [ebp-0x4e4]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1e0]
	mov [edx+0x8], eax
	mov ecx, [ebp-0x578]
	mov [edx+0x10], ecx
	mov dword [edx+0xc], 0x3f800000
	mov dword [edx+0x18], 0x3ffe7f7f
	mov dword [edx+0x1c], 0x3f7f7ffe
	mov dword [edx+0x14], 0x3c003c00
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_70
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_280:
	xor edx, edx
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_310
_Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_270:
	mov [ebp-0x4e4], eax
	jmp _Z21FX_Beam_GenerateVertsP18FxGenerateVertsCmd_320
	add [eax], al


;Initialized global or static variables of fx_beam:
SECTION .data


;Initialized constant data of fx_beam:
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
g_unit: dd 0x0, 0x0, 0x0, 0x3f800000
g_zero: dd 0x0, 0x0, 0x0, 0x0
g_2xunit: dd 0x0, 0x0, 0x0, 0x40000000
coeffZGtW.138963: dd 0x0, 0x0, 0xbf800000, 0x3f800000, 0x0, 0x0, 0x0, 0x0
_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE6wiggle: dd 0x0, 0x3f800000, 0x0, 0x0, 0x3f35c28f, 0x3f35c28f, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x3f35c28f, 0xbf35c28f, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x0, 0xbf35c28f, 0xbf35c28f, 0x0, 0x0, 0xbf800000, 0x0, 0x0, 0x0, 0xbf35c28f, 0x3f35c28f, 0x0, 0x0
_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices: dd 0x20000, 0x20001, 0x10004, 0x40001, 0x30003, 0x50004, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_beam:
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
g_beamInfo: resb 0x1400


;All cstrings:
SECTION .rdata
_cstring_beam:		db "Beam",0



;All constant floats and doubles:
SECTION .rdata
_float_0_99951172:		dd 0x3f7fe000	; 0.999512
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_00000200:		dq 0x3ec0c6f7a0b5ed8d	; 2e-06

