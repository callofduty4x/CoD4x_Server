;Imports of r_model:
	extern _Z18Hunk_AllocInternali
	extern useFastFile
	extern _Z9XModelBadPK6XModel
	extern _Z16R_GetBaseLodDistPKf
	extern _Z20XModelGetLodRampTypePK6XModel
	extern _Z20R_GetAdjustedLodDistf17XModelLodRampType
	extern _Z19XModelGetLodForDistPK6XModelf
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern _Z19DObjGetHidePartBitsPK6DObj_sPj
	extern frontEndDataOut
	extern iInterlockedExchangeAdd
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern memcpy
	extern _Z20DObjGetRotTransArrayPK6DObj_s
	extern _Z9CG_CullInPK7cpose_t
	extern _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
	extern _Z14XModelPrecachePKcPFPviES3_
	extern dx_ctx
	extern _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	extern gfxBuf
	extern _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	extern _ZN14MacOpenGLUtils13SetBufferHintEj
	extern _ZN14MacOpenGLUtils16ClearBufferHintsEv
	extern _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	extern _Z19CG_UsedDObjCalcPosePK7cpose_t

;Exports of r_model:
	global _GLOBAL__I__Z15R_RegisterModelPKc
	global _Z24Hunk_AllocXModelPrecachei
	global _Z28Hunk_AllocXModelPrecacheColli
	global _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj
	global _Z14R_SkinSceneEntP14GfxSceneEntity
	global _Z15R_RegisterModelPKc
	global _Z18R_LockSkinnedCachev
	global _Z20R_UnlockSkinnedCachev
	global _Z22R_SkinAndBoundSceneEntP14GfxSceneEntity


SECTION .text


;global constructors keyed to R_RegisterModel(char const*)
_GLOBAL__I__Z15R_RegisterModelPKc:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;Hunk_AllocXModelPrecache(int)
_Z24Hunk_AllocXModelPrecachei:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;Hunk_AllocXModelPrecacheColl(int)
_Z28Hunk_AllocXModelPrecacheColli:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


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


;R_SkinXModel(XModelDrawInfo*, XModel const*, DObj_s const*, GfxPlacement const*, float, unsigned int)
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj:
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
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_10
	mov [esp], ebx
	call _Z9XModelBadPK6XModel
	test eax, eax
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_20
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_10:
	lea eax, [esi+0x10]
	mov [esp], eax
	call _Z16R_GetBaseLodDistPKf
	fstp dword [ebp-0xe48]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp+0x18]
	mulss xmm0, [ebp-0xe48]
	movss [ebp-0xe48], xmm0
	mov [esp], ebx
	call _Z20XModelGetLodRampTypePK6XModel
	mov [esp+0x4], eax
	movss xmm0, dword [ebp-0xe48]
	movss [esp], xmm0
	call _Z20R_GetAdjustedLodDistf17XModelLodRampType
	fstp dword [esp+0x4]
	mov [esp], ebx
	call _Z19XModelGetLodForDistPK6XModelf
	mov [ebp-0xe4c], eax
	test eax, eax
	js _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_20
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0xe44], eax
	test edi, edi
	jz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_30
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z19DObjGetHidePartBitsPK6DObj_sPj
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_30:
	mov ecx, [ebp-0xe44]
	test ecx, ecx
	jle _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_40
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
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_50
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
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_90:
	cmp byte [eax+0x1], 0x0
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_60
	mov edx, [ebp-0xe3c]
	cmp byte [edx+0xc], 0x0
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_70
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_60:
	xor edx, edx
	test edx, edx
	jz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_80
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_120:
	mov edx, 0xfffffffe
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_130:
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
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_90
	jmp _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_100
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_40:
	lea ecx, [ebp-0xe38]
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_100:
	mov ebx, ecx
	lea edx, [ebp-0xe38]
	sub ebx, edx
	mov esi, frontEndDataOut
	mov eax, [esi]
	add eax, 0x118258
	mov [esp+0x4], ebx
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov edx, eax
	lea eax, [ebx+eax]
	cmp eax, 0x20000
	jbe _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_110
	mov dword [esp], 0x7
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_20:
	xor eax, eax
	add esp, 0xe7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_70:
	mov edx, 0x1
	test edx, edx
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_120
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_80:
	mov edx, 0xffffffff
	jmp _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_130
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_110:
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
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_50:
	mov edi, eax
	mov dword [ebp-0xe40], 0x0
	lea ecx, [ebp-0xe38]
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_150:
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
	jz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_140
	mov dword [ecx], 0xfffffffd
	add ecx, 0x4
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_170:
	add dword [ebp-0xe40], 0x1
	add edi, 0x38
	mov eax, [ebp-0xe40]
	cmp [ebp-0xe44], eax
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_150
	jmp _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_100
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_140:
	cmp byte [edi+0x1], 0x0
	jnz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_160
	mov eax, [ebp-0xe3c]
	cmp byte [eax+0xc], 0x0
	jz _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_160
	mov eax, 0x1
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_180:
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
	jmp _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_170
_Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_160:
	xor eax, eax
	jmp _Z12R_SkinXModelP14XModelDrawInfoPK6XModelPK6DObj_sPK12GfxPlacementfj_180


;R_SkinSceneEnt(GfxSceneEntity*)
_Z14R_SkinSceneEntP14GfxSceneEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [esi+0x70]
	mov [esp], edi
	call _Z20DObjGetRotTransArrayPK6DObj_s
	mov ebx, eax
	test eax, eax
	jz _Z14R_SkinSceneEntP14GfxSceneEntity_10
	mov eax, [esi+0x74]
	mov [esp], eax
	call _Z9CG_CullInPK7cpose_t
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], esi
	call _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
_Z14R_SkinSceneEntP14GfxSceneEntity_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_RegisterModel(char const*)
_Z15R_RegisterModelPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _Z28Hunk_AllocXModelPrecacheColli
	mov dword [esp+0x4], _Z24Hunk_AllocXModelPrecachei
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14XModelPrecachePKcPFPviES3_
	leave
	ret
	nop


;R_LockSkinnedCache()
_Z18R_LockSkinnedCachev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz _Z18R_LockSkinnedCachev_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18R_LockSkinnedCachev_10:
	mov eax, frontEndDataOut
	mov eax, [eax]
	mov eax, [eax+0x11e690]
	mov esi, [eax+0x8]
	mov dword [esp+0xc], 0x2000
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	mov ebx, gfxBuf
	mov [ebx+0x5c], eax
	test al, 0xf
	jnz _Z18R_LockSkinnedCachev_20
_Z18R_LockSkinnedCachev_30:
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
_Z18R_LockSkinnedCachev_20:
	mov [esp], esi
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	mov dword [ebx+0x5c], 0x0
	jmp _Z18R_LockSkinnedCachev_30
	nop


;R_UnlockSkinnedCache()
_Z20R_UnlockSkinnedCachev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, gfxBuf
	mov edx, [eax+0x5c]
	test edx, edx
	jz _Z20R_UnlockSkinnedCachev_10
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
	jge _Z20R_UnlockSkinnedCachev_20
	lea eax, [ebp-0x10]
_Z20R_UnlockSkinnedCachev_30:
	mov eax, [eax]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13SetBufferHintEj
	mov [esp], ebx
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	call _ZN14MacOpenGLUtils16ClearBufferHintsEv
_Z20R_UnlockSkinnedCachev_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z20R_UnlockSkinnedCachev_20:
	lea eax, [ebp-0xc]
	jmp _Z20R_UnlockSkinnedCachev_30


;R_SkinAndBoundSceneEnt(GfxSceneEntity*)
_Z22R_SkinAndBoundSceneEntP14GfxSceneEntity:
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
	call _Z22R_UpdateSceneEntBoundsP14GfxSceneEntityPS0_PPK6DObj_si
	mov ebx, eax
	test eax, eax
	jz _Z22R_SkinAndBoundSceneEntP14GfxSceneEntity_10
	mov eax, [ebp-0x10]
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z9CG_CullInPK7cpose_t
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15R_SkinSceneDObjP14GfxSceneEntityS0_PK6DObj_sP11DObjAnimMati
	mov eax, 0x1
_Z22R_SkinAndBoundSceneEntP14GfxSceneEntity_20:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z22R_SkinAndBoundSceneEntP14GfxSceneEntity_10:
	mov eax, [ebp-0x10]
	test eax, eax
	jz _Z22R_SkinAndBoundSceneEntP14GfxSceneEntity_20
	mov eax, [eax+0x74]
	mov [esp], eax
	call _Z19CG_UsedDObjCalcPosePK7cpose_t
	xor eax, eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of r_model:
SECTION .data


;Initialized constant data of r_model:
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


;Zero initialized global or static variables of r_model:
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

