;Imports of r_model:
	extern Hunk_AllocInternal
	extern useFastFile
	extern XModelBad
	extern R_GetBaseLodDist
	extern XModelGetLodRampType
	extern R_GetAdjustedLodDist
	extern XModelGetLodForDist
	extern XModelGetSurfaces
	extern DObjGetHidePartBits
	extern frontEndDataOut
	extern InterlockedExchangeAdd
	extern R_WarnOncePerFrame
	extern memcpy
	extern DObjGetRotTransArray
	extern CG_CullIn
	extern R_SkinSceneDObj
	extern XModelPrecache
	extern dx_ctx
	extern R_LockVertexBuffer
	extern gfxBuf
	extern R_UnlockVertexBuffer
	extern _ZN14MacOpenGLUtils13SetBufferHintEj
	extern _ZN14MacOpenGLUtils16ClearBufferHintsEv
	extern R_UpdateSceneEntBounds
	extern CG_UsedDObjCalcPose

;Exports of r_model:
	global _GLOBAL__I__Z15R_RegisterModelPKc
	global Hunk_AllocXModelPrecache
	global Hunk_AllocXModelPrecacheColl
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global R_SkinXModel
	global R_SkinSceneEnt
	global R_RegisterModel
	global R_LockSkinnedCache
	global R_UnlockSkinnedCache
	global R_SkinAndBoundSceneEnt


SECTION .text


;Hunk_AllocXModelPrecache(int)
Hunk_AllocXModelPrecache:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;Hunk_AllocXModelPrecacheColl(int)
Hunk_AllocXModelPrecacheColl:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;R_SkinXModel(XModelDrawInfo*, XModel const*, DObj_s const*, GfxPlacement const*, float, unsigned int)
R_SkinXModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xe7c
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edx, useFastFile
	mov eax, [edx]
	cmp byte [eax+0xc], 0x0
	jnz R_SkinXModel_10
	mov [esp], ebx
	call XModelBad
	test eax, eax
	jnz R_SkinXModel_20
R_SkinXModel_10:
	lea eax, [esi+0x10]
	mov [esp], eax
	call R_GetBaseLodDist
	fstp dword [ebp-0xe48]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp+0x18]
	mulss xmm0, [ebp-0xe48]
	movss [ebp-0xe48], xmm0
	mov [esp], ebx
	call XModelGetLodRampType
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0xe48]
	movss [esp], xmm0
	call R_GetAdjustedLodDist
	fstp dword [esp+0x4]
	mov [esp], ebx
	call XModelGetLodForDist
	mov [ebp-0xe4c], eax
	test eax, eax
	js R_SkinXModel_20
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call XModelGetSurfaces
	mov [ebp-0xe44], eax
	test edi, edi
	jz R_SkinXModel_30
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edi
	call DObjGetHidePartBits
R_SkinXModel_30:
	mov ecx, [ebp-0xe44]
	test ecx, ecx
	jle R_SkinXModel_40
	mov eax, [ebp-0x1c]
	mov edx, useFastFile
	mov edx, [edx]
	mov [ebp-0xe3c], edx
	mov ecx, [ebp-0x2c]
	mov [ebp-0xe58], ecx
	mov edx, [ebp-0x28]
	mov [ebp-0xe54], edx
	mov ecx, [ebp-0x24]
	mov [ebp-0xe50], ecx
	mov ebx, [ebp-0x20]
	test edi, edi
	jnz R_SkinXModel_50
	xor ebx, ebx
	lea ecx, [ebp-0xe38]
	mov edx, [esi]
	mov [ebp-0xe60], edx
	mov edx, [esi+0x4]
	mov [ebp-0xe5c], edx
	mov edx, [esi+0x8]
	mov [ebp-0xe64], edx
	mov edx, [esi+0xc]
	mov [ebp-0xe68], edx
	mov edx, [esi+0x10]
	mov [ebp-0xe6c], edx
	mov edi, [esi+0x14]
	mov esi, [esi+0x18]
R_SkinXModel_90:
	cmp byte [eax+0x1], 0x0
	jnz R_SkinXModel_60
	mov edx, [ebp-0xe3c]
	cmp byte [edx+0xc], 0x0
	jnz R_SkinXModel_70
R_SkinXModel_60:
	xor edx, edx
	test edx, edx
	jz R_SkinXModel_80
R_SkinXModel_120:
	mov edx, 0xfffffffe
R_SkinXModel_130:
	mov [ecx], edx
	mov [ecx+0x4], eax
	movzx edx, word [ebp+0x1c]
	mov [ecx+0xe], dx
	mov word [ecx+0x10], 0x0
	mov edx, [ebp-0xe60]
	mov [ecx+0x18], edx
	mov edx, [ebp-0xe5c]
	mov [ecx+0x1c], edx
	mov edx, [ebp-0xe64]
	mov [ecx+0x20], edx
	mov edx, [ebp-0xe68]
	mov [ecx+0x24], edx
	mov edx, [ebp-0xe6c]
	mov [ecx+0x28], edx
	mov [ecx+0x2c], edi
	mov [ecx+0x30], esi
	movss xmm0, dword [ebp+0x18]
	movss [ecx+0x34], xmm0
	add ecx, 0x38
	add ebx, 0x1
	add eax, 0x38
	cmp [ebp-0xe44], ebx
	jnz R_SkinXModel_90
	jmp R_SkinXModel_100
R_SkinXModel_40:
	lea ecx, [ebp-0xe38]
R_SkinXModel_100:
	mov ebx, ecx
	lea edx, [ebp-0xe38]
	sub ebx, edx
	mov esi, frontEndDataOut
	mov eax, [esi]
	add eax, 0x118258
	mov [esp+0x4], ebx
	mov [esp], eax
	call InterlockedExchangeAdd
	mov edx, eax
	lea eax, [ebx+eax]
	cmp eax, 0x20000
	jbe R_SkinXModel_110
	mov dword [esp], 0x7
	call R_WarnOncePerFrame
R_SkinXModel_20:
	xor eax, eax
	add esp, 0xe7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXModel_70:
	mov edx, 0x1
	test edx, edx
	jnz R_SkinXModel_120
R_SkinXModel_80:
	mov edx, 0xffffffff
	jmp R_SkinXModel_130
R_SkinXModel_110:
	mov eax, edx
	shr eax, 0x2
	mov ecx, [ebp+0x8]
	mov [ecx+0x2], ax
	add edx, [esi]
	mov [esp+0x8], ebx
	lea eax, [ebp-0xe38]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	movzx ecx, word [ebp-0xe4c]
	mov edx, [ebp+0x8]
	mov [edx], cx
	mov eax, 0x1
	add esp, 0xe7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinXModel_50:
	mov edi, eax
	mov dword [ebp-0xe40], 0x0
	lea ecx, [ebp-0xe38]
R_SkinXModel_150:
	mov eax, [ebp-0xe58]
	and eax, [edi+0x28]
	mov edx, [ebp-0xe54]
	and edx, [edi+0x2c]
	or eax, edx
	mov edx, [ebp-0xe50]
	and edx, [edi+0x30]
	or eax, edx
	mov edx, ebx
	and edx, [edi+0x34]
	or eax, edx
	jz R_SkinXModel_140
	mov dword [ecx], 0xfffffffd
	add ecx, 0x4
R_SkinXModel_170:
	add dword [ebp-0xe40], 0x1
	add edi, 0x38
	mov eax, [ebp-0xe40]
	cmp [ebp-0xe44], eax
	jnz R_SkinXModel_150
	jmp R_SkinXModel_100
R_SkinXModel_140:
	cmp byte [edi+0x1], 0x0
	jnz R_SkinXModel_160
	mov eax, [ebp-0xe3c]
	cmp byte [eax+0xc], 0x0
	jz R_SkinXModel_160
	mov eax, 0x1
R_SkinXModel_180:
	cmp al, 0x1
	sbb eax, eax
	or eax, 0xfffffffe
	mov [ecx], eax
	mov [ecx+0x4], edi
	movzx edx, word [ebp+0x1c]
	mov [ecx+0xe], dx
	mov word [ecx+0x10], 0x0
	mov eax, [esi]
	mov [ecx+0x18], eax
	mov eax, [esi+0x4]
	mov [ecx+0x1c], eax
	mov eax, [esi+0x8]
	mov [ecx+0x20], eax
	mov eax, [esi+0xc]
	mov [ecx+0x24], eax
	mov eax, [esi+0x10]
	mov [ecx+0x28], eax
	mov eax, [esi+0x14]
	mov [ecx+0x2c], eax
	mov eax, [esi+0x18]
	mov [ecx+0x30], eax
	movss xmm0, dword [ebp+0x18]
	movss [ecx+0x34], xmm0
	add ecx, 0x38
	jmp R_SkinXModel_170
R_SkinXModel_160:
	xor eax, eax
	jmp R_SkinXModel_180


;R_SkinSceneEnt(GfxSceneEntity*)
R_SkinSceneEnt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [esi+0x70]
	mov [esp], edi
	call DObjGetRotTransArray
	mov ebx, eax
	test eax, eax
	jz R_SkinSceneEnt_10
	mov eax, [esi+0x74]
	mov [esp], eax
	call CG_CullIn
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], esi
	call R_SkinSceneDObj
R_SkinSceneEnt_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_RegisterModel(char const*)
R_RegisterModel:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], Hunk_AllocXModelPrecacheColl
	mov dword [esp+0x4], Hunk_AllocXModelPrecache
	mov eax, [ebp+0x8]
	mov [esp], eax
	call XModelPrecache
	leave
	ret
	nop


;R_LockSkinnedCache()
R_LockSkinnedCache:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz R_LockSkinnedCache_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_LockSkinnedCache_10:
	mov eax, frontEndDataOut
	mov eax, [eax]
	mov eax, [eax+0x11e690]
	mov esi, [eax+0x8]
	mov dword [esp+0xc], 0x2000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_LockVertexBuffer
	mov ebx, gfxBuf
	mov [ebx+0x5c], eax
	test al, 0xf
	jnz R_LockSkinnedCache_20
R_LockSkinnedCache_30:
	mov edx, [ebx+0x240088]
	mov ecx, edx
	and ecx, 0x1
	lea eax, [ecx*8]
	add eax, ecx
	shl eax, 0x11
	lea eax, [eax+ebx+0x80]
	mov [ebx+0x240084], eax
	add edx, 0x1
	mov [ebx+0x240088], edx
	and edx, 0x1
	lea eax, [edx*8]
	add eax, edx
	shl eax, 0x11
	lea eax, [eax+ebx+0x80]
	mov [ebx+0x240080], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_LockSkinnedCache_20:
	mov [esp], esi
	call R_UnlockVertexBuffer
	mov dword [ebx+0x5c], 0x0
	jmp R_LockSkinnedCache_30
	nop


;R_UnlockSkinnedCache()
R_UnlockSkinnedCache:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, gfxBuf
	mov edx, [eax+0x5c]
	test edx, edx
	jz R_UnlockSkinnedCache_10
	mov dword [eax+0x5c], 0x0
	mov eax, frontEndDataOut
	mov edx, [eax]
	mov eax, [edx+0x11e690]
	mov ebx, [eax+0x8]
	mov ecx, [eax+0x4]
	mov [ebp-0x10], ecx
	mov eax, [edx+0x11e690]
	mov eax, [eax]
	mov [ebp-0xc], eax
	cmp ecx, eax
	jge R_UnlockSkinnedCache_20
	lea eax, [ebp-0x10]
R_UnlockSkinnedCache_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov [esp], ebx
	call R_UnlockVertexBuffer
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
R_UnlockSkinnedCache_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_UnlockSkinnedCache_20:
	lea eax, [ebp-0xc]
	jmp R_UnlockSkinnedCache_30


;R_SkinAndBoundSceneEnt(GfxSceneEntity*)
R_SkinAndBoundSceneEnt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov dword [esp+0xc], 0x1
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_UpdateSceneEntBounds
	mov ebx, eax
	test eax, eax
	jz R_SkinAndBoundSceneEnt_10
	mov eax, [ebp-0x10]
	mov eax, [eax+0x74]
	mov [esp], eax
	call CG_CullIn
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_SkinSceneDObj
	mov eax, 0x1
R_SkinAndBoundSceneEnt_20:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_SkinAndBoundSceneEnt_10:
	mov eax, [ebp-0x10]
	test eax, eax
	jz R_SkinAndBoundSceneEnt_20
	mov eax, [eax+0x74]
	mov [esp], eax
	call CG_UsedDObjCalcPose
	xor eax, eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Zero initialized global or static variables of r_model:
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


;Initialized global or static variables of r_model:
SECTION .data


;Initialized constant data of r_model:
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
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

