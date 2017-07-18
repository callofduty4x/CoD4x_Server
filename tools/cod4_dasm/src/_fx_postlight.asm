;Imports of fx_postlight:
	extern R_ReserveCodeMeshIndices
	extern R_ReserveCodeMeshVerts
	extern R_ReserveCodeMeshArgs
	extern R_GetCodeMeshVerts
	extern R_GetCodeMeshArgs
	extern Vec3NormalizeTo
	extern PerpendicularVector
	extern sinf
	extern cosf
	extern R_AddCodeMeshDrawSurf

;Exports of fx_postlight:
	global _GLOBAL__I__Z26FX_PostLight_GenerateVertsP15FxPostLightInfoP8FxSystem
	global g_postLightInfo
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global FX_PostLight_Add
	global FX_PostLight_Begin
	global FX_PostLight_GetInfo
	global FX_PostLight_GenerateVerts


SECTION .text


;FX_PostLight_Add(FxPostLight*)
FX_PostLight_Add:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [g_postLightInfo+0xd80]
	cmp ebx, 0x60
	jz FX_PostLight_Add_10
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
FX_PostLight_Add_10:
	pop ebx
	pop ebp
	ret
	nop


;FX_PostLight_Begin()
FX_PostLight_Begin:
	push ebp
	mov ebp, esp
	mov dword [g_postLightInfo+0xd80], 0x0
	pop ebp
	ret
	nop


;FX_PostLight_GetInfo()
FX_PostLight_GetInfo:
	push ebp
	mov ebp, esp
	mov eax, g_postLightInfo
	pop ebp
	ret


;FX_PostLight_GenerateVerts(FxPostLightInfo*, FxSystem*)
FX_PostLight_GenerateVerts:
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
	jz FX_PostLight_GenerateVerts_10
	mov dword [ebp-0x84], 0x0
	mov [ebp-0x88], eax
	mov edx, eax
	jmp FX_PostLight_GenerateVerts_20
FX_PostLight_GenerateVerts_40:
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x88], 0x24
	mov eax, [ebp-0x84]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0xd80]
	jz FX_PostLight_GenerateVerts_10
FX_PostLight_GenerateVerts_110:
	mov edx, [ebp-0x88]
FX_PostLight_GenerateVerts_20:
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
	jp FX_PostLight_GenerateVerts_30
	jb FX_PostLight_GenerateVerts_40
FX_PostLight_GenerateVerts_30:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x54
	call R_ReserveCodeMeshIndices
	test al, al
	jz FX_PostLight_GenerateVerts_10
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov dword [esp], 0x10
	call R_ReserveCodeMeshVerts
	test al, al
	jz FX_PostLight_GenerateVerts_10
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call R_ReserveCodeMeshArgs
	test al, al
	jz FX_PostLight_GenerateVerts_10
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	call R_GetCodeMeshVerts
	mov edi, eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call R_GetCodeMeshArgs
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
	call Vec3NormalizeTo
	fstp st0
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PerpendicularVector
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
	xorps xmm3, [g_fltMin__uint4_dup_1+0x10]
	movss [ebp-0x58], xmm3
	lea esi, [edi+0x114]
	mov ebx, edi
	xor edi, edi
FX_PostLight_GenerateVerts_50:
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
	jnz FX_PostLight_GenerateVerts_50
	mov ebx, [ebp-0x20]
	lea ecx, [ebx+0x6]
	mov [ebp-0x54], ecx
	lea edi, [ebx+0xa]
	mov dword [ebp-0x4c], 0x0
	jmp FX_PostLight_GenerateVerts_60
FX_PostLight_GenerateVerts_80:
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
	jz FX_PostLight_GenerateVerts_70
FX_PostLight_GenerateVerts_60:
	add dword [ebp-0x4c], 0x1
	movzx ecx, word [ebp-0x4c]
	sub ecx, 0x1
	movzx esi, word [ebp-0x1a]
	mov eax, [ebp-0x4c]
	and eax, 0x80000007
	jns FX_PostLight_GenerateVerts_80
	sub eax, 0x1
	or eax, 0xfffffff8
	add eax, 0x1
	jmp FX_PostLight_GenerateVerts_80
FX_PostLight_GenerateVerts_70:
	lea edi, [ebx+0x6]
	lea esi, [ebx+0xa]
	mov dword [ebp-0x50], 0x0
FX_PostLight_GenerateVerts_90:
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
	jnz FX_PostLight_GenerateVerts_90
	lea edi, [ebx+0x6]
	lea esi, [ebx+0xa]
	mov dword [ebp-0x7c], 0x0
FX_PostLight_GenerateVerts_100:
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
	jnz FX_PostLight_GenerateVerts_100
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
	call R_AddCodeMeshDrawSurf
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x88], 0x24
	mov eax, [ebp-0x84]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+0xd80]
	jnz FX_PostLight_GenerateVerts_110
FX_PostLight_GenerateVerts_10:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Zero initialized global or static variables of fx_postlight:
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
g_postLightInfo: resb 0xe00


;Initialized global or static variables of fx_postlight:
SECTION .data


;Initialized constant data of fx_postlight:
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
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0


;All cstrings:
SECTION .rdata
_cstring_postlight:		db "PostLight",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_41421354:		dd 0x3fb504f3	; 1.41421
_float_3_14159274:		dd 0x40490fdb	; 3.14159
_float_0_12500000:		dd 0x3e000000	; 0.125

