;Imports of fx_marks:
	extern FX_GetSystem
	extern fx_marks
	extern R_MarkFragments_Begin
	extern fx_marks_ents
	extern R_MarkFragments_Go
	extern fx_marks_smodels
	extern cg_entitiesArray
	extern R_GetBrushModel
	extern AnglesToAxis
	extern BoundsOverlap
	extern R_MarkFragments_AddBModel
	extern Com_GetClientDObj
	extern DObjGetRadius
	extern R_MarkFragments_AddDObj
	extern fx_marksSystemPool
	extern R_AddMarkMeshDrawSurf
	extern R_GetMarkMeshVerts
	extern MatrixTransformVector43
	extern FX_SetupVisualState
	extern fx_randomTable
	extern FX_EvaluateVisualState
	extern UnitQuatToAxis
	extern RotatePointAroundVector
	extern DObjGetNumModels
	extern DObjGetModel
	extern DObjGetModelParentBoneName
	extern R_BeginMarkMeshVerts
	extern FX_CullSphere
	extern R_EndMarkMeshVerts
	extern R_ReserveMarkMeshVerts
	extern R_ReserveMarkMeshIndices
	extern R_MarkUtil_GetDObjAnimMatAndHideParts
	extern XModelNumBones
	extern XModelGetBasePose
	extern MatrixMultiply43
	extern vec3_origin

;Exports of fx_marks:
	global _GLOBAL__I__Z18FX_InitMarksSystemP13FxMarksSystem
	global g_fxMarkPoints
	global FX_CompareMarkTris
	global FX_ImpactMark_Generate
	global FX_ImpactMark_Generate_Callback
	global FX_LinkMarkIntoList
	global FX_GenerateMarkVertsForMark_FinishAnimated
	global FX_BeginMarks
	global FX_InitMarksSystem
	global FX_CreateImpactMark
	global FX_MarkEntDetachAll
	global FX_MarkEntUpdateEnd
	global FX_MarkEntUpdateBegin
	global FX_GenerateMarkVertsForWorld
	global FX_MarkEntUpdateHidePartBits
	global FX_GenerateMarkVertsForEntDObj
	global FX_GenerateMarkVertsForEntBrush
	global FX_GenerateMarkVertsForEntXModel
	global FX_GenerateMarkVertsForStaticModels
	global FX_EndGeneratingMarkVertsForEntModels
	global FX_BeginGeneratingMarkVertsForEntModels
	global _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1_


SECTION .text


;global constructors keyed to FX_InitMarksSystem(FxMarksSystem*)
_GLOBAL__I__Z18FX_InitMarksSystemP13FxMarksSystem:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp __static_initialization_and_destruction_0


;FX_CompareMarkTris(FxMarkTri const&, FxMarkTri const&)
FX_CompareMarkTris:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0xc]
	add ebx, 0x6
	mov eax, [ebp+0x8]
	add eax, 0x6
	movzx esi, byte [eax+0x3]
	mov ecx, esi
	and ecx, 0xc0
	movzx edi, byte [ebx+0x3]
	mov edx, edi
	and edx, 0xc0
	cmp ecx, edx
	jz FX_CompareMarkTris_10
	sub edx, ecx
FX_CompareMarkTris_40:
	cmp edx, 0x0
	jz FX_CompareMarkTris_20
	setg al
	movzx eax, al
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_CompareMarkTris_20:
	mov edx, [ebp+0x8]
	movzx eax, word [edx]
	mov edx, [ebp+0xc]
	cmp ax, [edx]
	setb al
	movzx eax, al
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_CompareMarkTris_10:
	movzx ecx, byte [eax+0x1]
	movzx edx, byte [ebx+0x1]
	cmp cl, dl
	jz FX_CompareMarkTris_30
FX_CompareMarkTris_50:
	movzx edx, dl
	movzx eax, cl
	sub edx, eax
	jmp FX_CompareMarkTris_40
FX_CompareMarkTris_30:
	movzx ecx, byte [eax+0x2]
	movzx edx, byte [ebx+0x2]
	cmp cl, dl
	jnz FX_CompareMarkTris_50
	mov edx, [ebp+0x8]
	movzx ecx, byte [edx+0x6]
	mov edx, [ebp+0xc]
	movzx edx, byte [edx+0x6]
	mov [ebp-0xd], dl
	cmp cl, dl
	jnz FX_CompareMarkTris_50
	movzx eax, word [eax+0x4]
	movzx edx, word [ebx+0x4]
	cmp ax, dx
	jz FX_CompareMarkTris_60
	movzx edx, dx
	movzx eax, ax
	sub edx, eax
	jmp FX_CompareMarkTris_40
FX_CompareMarkTris_60:
	mov edx, edi
	and edx, 0x3f
	and esi, 0x3f
	sub edx, esi
	jmp FX_CompareMarkTris_40
	nop


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


;FX_ImpactMark_Generate(int, MarkFragmentsAgainstEnum, Material*, float const*, float const (*) [3], float, unsigned char const*, float, unsigned int)
FX_ImpactMark_Generate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x126c
	mov esi, eax
	mov ebx, edx
	mov edi, ecx
	movss [ebp-0x1208], xmm1
	mov [esp], eax
	call FX_GetSystem
	mov edx, eax
	mov [ebp-0x50], esi
	mov [ebp-0x4c], edi
	movss xmm0, dword [ebp-0x1208]
	movss [ebp-0x48], xmm0
	mov eax, [ebp+0x10]
	mov [ebp-0x44], eax
	mov eax, fx_marks
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_ImpactMark_Generate_10
	cmp ebx, 0x1
	jz FX_ImpactMark_Generate_20
FX_ImpactMark_Generate_40:
	mov [esp+0x18], edi
	lea eax, [edx+0x98]
	mov [esp+0x14], eax
	movss xmm3, dword [ebp-0x1208]
	movss [esp+0x10], xmm3
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	lea eax, [ebp-0x5f4]
	mov [esp], eax
	call R_MarkFragments_Begin
	mov eax, fx_marks_ents
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_ImpactMark_Generate_30
FX_ImpactMark_Generate_60:
	mov dword [esp+0x18], g_fxMarkPoints
	mov dword [esp+0x14], 0x2fd
	lea eax, [ebp-0x11e8]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0xff
	lea eax, [ebp-0x50]
	mov [esp+0x8], eax
	mov dword [esp+0x4], FX_ImpactMark_Generate_Callback
	lea eax, [ebp-0x5f4]
	mov [esp], eax
	call R_MarkFragments_Go
FX_ImpactMark_Generate_10:
	add esp, 0x126c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ImpactMark_Generate_20:
	mov eax, fx_marks_ents
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_ImpactMark_Generate_40
	mov eax, fx_marks_smodels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_ImpactMark_Generate_40
	jmp FX_ImpactMark_Generate_10
FX_ImpactMark_Generate_30:
	sub ebx, 0x1
	jz FX_ImpactMark_Generate_50
	cmp dword [ebp+0x14], 0x3ff
	jz FX_ImpactMark_Generate_60
	movss xmm0, dword [ebp-0x1208]
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	mov edx, [ebp+0x8]
	addss xmm1, [edx]
	movss [ebp-0x30], xmm1
	movaps xmm1, xmm0
	addss xmm1, [edx+0x4]
	movss [ebp-0x2c], xmm1
	addss xmm0, [edx+0x8]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x1208]
	addss xmm0, [edx]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x1208]
	addss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x1208]
	addss xmm0, [edx+0x8]
	movss [ebp-0x1c], xmm0
	mov edx, [ebp+0x14]
	shl edx, 0x2
	mov eax, [ebp+0x14]
	shl eax, 0x5
	sub eax, edx
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, cg_entitiesArray
	add eax, edx
	mov [ebp-0x1200], eax
	cmp byte [eax+0x1c0], 0x0
	jz FX_ImpactMark_Generate_60
	cmp dword [eax+0x164], 0xffffff
	jnz FX_ImpactMark_Generate_60
	mov ebx, eax
	mov eax, [eax+0x154]
	mov [esp], eax
	call R_GetBrushModel
	mov [ebp-0x11fc], eax
	lea eax, [ebp-0x1ac]
	mov [esp+0x4], eax
	mov eax, ebx
	add eax, 0x28
	mov [esp], eax
	call AnglesToAxis
	mov eax, [ebp-0x11fc]
	add eax, 0x18
	mov edx, [ebp-0x11fc]
	mov ecx, [edx+0x18]
	mov [ebp-0x188], ecx
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x120c], xmm0
	movss [ebp-0x184], xmm0
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x1210], xmm3
	movss [ebp-0x180], xmm3
	pxor xmm1, xmm1
	movss [ebp-0x17c], xmm1
	mov eax, edx
	add eax, 0x24
	mov edx, [edx+0x24]
	mov [ebp-0x178], edx
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x1214], xmm0
	movss [ebp-0x174], xmm0
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x1218], xmm3
	movss [ebp-0x170], xmm3
	movss [ebp-0x16c], xmm1
	mov eax, [ebp-0x1200]
	add eax, 0x1c
	movss xmm0, dword [ebp-0x1ac]
	movss [ebp-0x121c], xmm0
	movss [ebp-0x90], xmm0
	movss xmm3, dword [ebp-0x1a8]
	movss [ebp-0x1220], xmm3
	movss [ebp-0x8c], xmm3
	movss xmm0, dword [ebp-0x1a4]
	movss [ebp-0x1224], xmm0
	movss [ebp-0x88], xmm0
	movss [ebp-0x84], xmm1
	movss xmm5, dword [ebp-0x1a0]
	movss [ebp-0xa0], xmm5
	movss xmm6, dword [ebp-0x19c]
	movss [ebp-0x9c], xmm6
	movss xmm7, dword [ebp-0x198]
	movss [ebp-0x98], xmm7
	movss [ebp-0x94], xmm1
	movss xmm3, dword [ebp-0x194]
	movss [ebp-0xb0], xmm3
	movss xmm0, dword [ebp-0x190]
	movss [ebp-0xac], xmm0
	movss xmm3, dword [ebp-0x18c]
	movss [ebp-0xa8], xmm3
	movss [ebp-0xa4], xmm1
	mov ebx, [ebp-0x1200]
	movss xmm0, dword [ebx+0x1c]
	movss [ebp-0x1228], xmm0
	movss [ebp-0x40], xmm0
	movss xmm3, dword [eax+0x4]
	movss [ebp-0x122c], xmm3
	movss [ebp-0x3c], xmm3
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x1230], xmm0
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm1
	mov [ebp-0xc0], ecx
	mov [ebp-0xbc], ecx
	mov [ebp-0xb8], ecx
	mov [ebp-0xb4], ecx
	mov [ebp-0xd0], edx
	mov [ebp-0xcc], edx
	mov [ebp-0xc8], edx
	mov [ebp-0xc4], edx
	movss xmm2, dword [g_zero]
	xor eax, eax
	ucomiss xmm2, [ebp-0x121c]
	setbe al
	sub eax, 0x1
	mov [ebp-0x11f8], eax
	mov [ebp-0x60], eax
	movss xmm3, dword [g_zero+0x4]
	xor ebx, ebx
	ucomiss xmm3, [ebp-0x1220]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x5c], ebx
	movss xmm4, dword [g_zero+0x8]
	xor ecx, ecx
	ucomiss xmm4, [ebp-0x1224]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x58], ecx
	movss xmm0, dword [g_zero+0xc]
	ucomiss xmm0, xmm1
	setbe byte [ebp-0x1251]
	movzx edi, byte [ebp-0x1251]
	sub edi, 0x1
	mov [ebp-0x54], edi
	not eax
	mov [ebp-0x1234], eax
	and eax, [ebp-0xc0]
	mov edx, [ebp-0x11f8]
	and edx, [ebp-0xd0]
	or eax, edx
	mov [ebp-0xe0], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1238], eax
	and eax, [ebp-0xbc]
	mov edx, [ebp-0xcc]
	and edx, ebx
	or eax, edx
	mov [ebp-0xdc], eax
	mov edx, ecx
	not edx
	mov [ebp-0x123c], edx
	mov eax, edx
	and eax, [ebp-0xb8]
	mov edx, [ebp-0xc8]
	and edx, ecx
	or eax, edx
	mov [ebp-0xd8], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0xb4]
	and eax, esi
	mov edx, [ebp-0xc4]
	and edx, edi
	or eax, edx
	mov [ebp-0xd4], eax
	mov eax, [ebp-0xd0]
	and [ebp-0x1234], eax
	mov edx, [ebp-0xc0]
	and [ebp-0x11f8], edx
	mov eax, [ebp-0x11f8]
	or [ebp-0x1234], eax
	mov edx, [ebp-0x1234]
	mov [ebp-0x110], edx
	mov eax, [ebp-0xcc]
	and [ebp-0x1238], eax
	and ebx, [ebp-0xbc]
	or [ebp-0x1238], ebx
	mov edx, [ebp-0x1238]
	mov [ebp-0x10c], edx
	mov ebx, [ebp-0xc8]
	and [ebp-0x123c], ebx
	and ecx, [ebp-0xb8]
	or [ebp-0x123c], ecx
	mov eax, [ebp-0x123c]
	mov [ebp-0x108], eax
	and esi, [ebp-0xc4]
	and edi, [ebp-0xb4]
	or esi, edi
	mov [ebp-0x104], esi
	movss xmm0, dword [ebp-0x120c]
	movss [ebp-0xc0], xmm0
	movss [ebp-0xbc], xmm0
	movss [ebp-0xb8], xmm0
	movss [ebp-0xb4], xmm0
	movss xmm0, dword [ebp-0x1214]
	movss [ebp-0xd0], xmm0
	movss [ebp-0xcc], xmm0
	movss [ebp-0xc8], xmm0
	movss [ebp-0xc4], xmm0
	xor eax, eax
	ucomiss xmm2, xmm5
	setbe al
	sub eax, 0x1
	mov [ebp-0x11f4], eax
	mov [ebp-0x70], eax
	xor ebx, ebx
	ucomiss xmm3, xmm6
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x6c], ebx
	xor ecx, ecx
	ucomiss xmm4, xmm7
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x68], ecx
	movzx edi, byte [ebp-0x1251]
	sub edi, 0x1
	mov [ebp-0x64], edi
	not eax
	mov [ebp-0x1240], eax
	and eax, [ebp-0xc0]
	mov edx, [ebp-0x11f4]
	and edx, [ebp-0xd0]
	or eax, edx
	mov [ebp-0xf0], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1244], eax
	and eax, [ebp-0xbc]
	mov edx, [ebp-0xcc]
	and edx, ebx
	or eax, edx
	mov [ebp-0xec], eax
	mov edx, ecx
	not edx
	mov [ebp-0x1248], edx
	mov eax, edx
	and eax, [ebp-0xb8]
	mov edx, [ebp-0xc8]
	and edx, ecx
	or eax, edx
	mov [ebp-0xe8], eax
	mov esi, edi
	not esi
	mov eax, [ebp-0xb4]
	and eax, esi
	mov edx, [ebp-0xc4]
	and edx, edi
	or eax, edx
	mov [ebp-0xe4], eax
	mov eax, [ebp-0xd0]
	and [ebp-0x1240], eax
	mov edx, [ebp-0xc0]
	and [ebp-0x11f4], edx
	mov eax, [ebp-0x11f4]
	or [ebp-0x1240], eax
	mov edx, [ebp-0x1240]
	mov [ebp-0x120], edx
	mov eax, [ebp-0xcc]
	and [ebp-0x1244], eax
	and ebx, [ebp-0xbc]
	or [ebp-0x1244], ebx
	mov edx, [ebp-0x1244]
	mov [ebp-0x11c], edx
	mov ebx, [ebp-0xc8]
	and [ebp-0x1248], ebx
	and ecx, [ebp-0xb8]
	or [ebp-0x1248], ecx
	mov eax, [ebp-0x1248]
	mov [ebp-0x118], eax
	and esi, [ebp-0xc4]
	and edi, [ebp-0xb4]
	or esi, edi
	mov [ebp-0x114], esi
	movss xmm0, dword [ebp-0x1210]
	movss [ebp-0xc0], xmm0
	movss [ebp-0xbc], xmm0
	movss [ebp-0xb8], xmm0
	movss [ebp-0xb4], xmm0
	movss xmm0, dword [ebp-0x1218]
	movss [ebp-0xd0], xmm0
	movss [ebp-0xcc], xmm0
	movss [ebp-0xc8], xmm0
	movss [ebp-0xc4], xmm0
	xor eax, eax
	ucomiss xmm2, [ebp-0x194]
	setbe al
	sub eax, 0x1
	mov [ebp-0x11f0], eax
	mov [ebp-0x80], eax
	xor ebx, ebx
	ucomiss xmm3, [ebp-0x190]
	setbe bl
	sub ebx, 0x1
	mov [ebp-0x7c], ebx
	xor ecx, ecx
	ucomiss xmm4, [ebp-0x18c]
	setbe cl
	sub ecx, 0x1
	mov [ebp-0x78], ecx
	movzx eax, byte [ebp-0x1251]
	sub eax, 0x1
	mov [ebp-0x11ec], eax
	mov [ebp-0x74], eax
	mov edx, [ebp-0x11f0]
	not edx
	mov [ebp-0x124c], edx
	mov eax, edx
	and eax, [ebp-0xc0]
	mov edx, [ebp-0x11f0]
	and edx, [ebp-0xd0]
	or eax, edx
	mov [ebp-0x100], eax
	mov eax, ebx
	not eax
	mov [ebp-0x1250], eax
	and eax, [ebp-0xbc]
	mov edx, [ebp-0xcc]
	and edx, ebx
	or eax, edx
	mov [ebp-0xfc], eax
	mov edi, ecx
	not edi
	mov eax, [ebp-0xb8]
	and eax, edi
	mov edx, [ebp-0xc8]
	and edx, ecx
	or eax, edx
	mov [ebp-0xf8], eax
	mov esi, [ebp-0x11ec]
	not esi
	mov eax, [ebp-0xb4]
	and eax, esi
	mov edx, [ebp-0x11ec]
	and edx, [ebp-0xc4]
	or eax, edx
	mov [ebp-0xf4], eax
	mov edx, [ebp-0xd0]
	and [ebp-0x124c], edx
	mov eax, [ebp-0xc0]
	and [ebp-0x11f0], eax
	mov edx, [ebp-0x11f0]
	or [ebp-0x124c], edx
	mov eax, [ebp-0x124c]
	mov [ebp-0x130], eax
	mov edx, [ebp-0xcc]
	and [ebp-0x1250], edx
	and ebx, [ebp-0xbc]
	or [ebp-0x1250], ebx
	mov ebx, [ebp-0x1250]
	mov [ebp-0x12c], ebx
	and edi, [ebp-0xc8]
	and ecx, [ebp-0xb8]
	or edi, ecx
	mov [ebp-0x128], edi
	and esi, [ebp-0xc4]
	mov eax, [ebp-0xb4]
	and [ebp-0x11ec], eax
	or esi, [ebp-0x11ec]
	mov [ebp-0x124], esi
	movss xmm0, dword [ebp-0x121c]
	mulss xmm0, [ebp-0xe0]
	addss xmm0, [ebp-0x1228]
	movss [ebp-0x168], xmm0
	movss xmm0, dword [ebp-0x1220]
	mulss xmm0, [ebp-0xdc]
	addss xmm0, [ebp-0x122c]
	movss [ebp-0x164], xmm0
	movss xmm0, dword [ebp-0x1224]
	mulss xmm0, [ebp-0xd8]
	addss xmm0, [ebp-0x1230]
	movss [ebp-0x160], xmm0
	movss xmm0, dword [ebp-0xd4]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x15c], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ebp-0xf0]
	addss xmm0, [ebp-0x168]
	movss [ebp-0x168], xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0xec]
	addss xmm0, [ebp-0x164]
	movss [ebp-0x164], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [ebp-0xe8]
	addss xmm0, [ebp-0x160]
	movss [ebp-0x160], xmm0
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x15c]
	movss [ebp-0x15c], xmm0
	movss xmm2, dword [ebp-0x194]
	mulss xmm2, [ebp-0x100]
	addss xmm2, [ebp-0x168]
	movss [ebp-0x168], xmm2
	movss xmm3, dword [ebp-0x190]
	mulss xmm3, [ebp-0xfc]
	addss xmm3, [ebp-0x164]
	movss [ebp-0x164], xmm3
	movss xmm4, dword [ebp-0x18c]
	mulss xmm4, [ebp-0xf8]
	addss xmm4, [ebp-0x160]
	movss [ebp-0x160], xmm4
	movss xmm0, dword [ebp-0xf4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x15c]
	movss [ebp-0x15c], xmm0
	movss xmm0, dword [ebp-0x121c]
	mulss xmm0, [ebp-0x110]
	movss [ebp-0x121c], xmm0
	movss xmm0, dword [ebp-0x1228]
	addss xmm0, [ebp-0x121c]
	movss [ebp-0x158], xmm0
	movss xmm0, dword [ebp-0x1220]
	mulss xmm0, [ebp-0x10c]
	movss [ebp-0x1220], xmm0
	movss xmm0, dword [ebp-0x122c]
	addss xmm0, [ebp-0x1220]
	movss [ebp-0x154], xmm0
	movss xmm0, dword [ebp-0x1224]
	mulss xmm0, [ebp-0x108]
	movss [ebp-0x1224], xmm0
	movss xmm0, dword [ebp-0x1230]
	addss xmm0, [ebp-0x1224]
	movss [ebp-0x150], xmm0
	movss xmm0, dword [ebp-0x104]
	mulss xmm0, xmm1
	addss xmm0, xmm1
	movss [ebp-0x14c], xmm0
	mulss xmm5, [ebp-0x120]
	addss xmm5, [ebp-0x158]
	mulss xmm6, [ebp-0x11c]
	addss xmm6, [ebp-0x154]
	movss [ebp-0x154], xmm6
	mulss xmm7, [ebp-0x118]
	addss xmm7, [ebp-0x150]
	movss xmm0, dword [ebp-0x114]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x14c]
	movss [ebp-0x14c], xmm0
	movss xmm6, dword [ebp-0x194]
	mulss xmm6, [ebp-0x130]
	addss xmm6, xmm5
	movss [ebp-0x158], xmm6
	movss xmm5, dword [ebp-0x190]
	mulss xmm5, [ebp-0x12c]
	addss xmm5, [ebp-0x154]
	movss [ebp-0x154], xmm5
	movss xmm0, dword [ebp-0x18c]
	mulss xmm0, [ebp-0x128]
	addss xmm0, xmm7
	movss [ebp-0x150], xmm0
	mulss xmm1, [ebp-0x124]
	addss xmm1, [ebp-0x14c]
	movss [ebp-0x14c], xmm1
	movss [ebp-0x148], xmm2
	lea edx, [ebp-0x148]
	movss [ebp-0x144], xmm3
	movss [ebp-0x140], xmm4
	movss [ebp-0x13c], xmm6
	lea eax, [ebp-0x13c]
	movss [ebp-0x138], xmm5
	movss [ebp-0x134], xmm0
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call BoundsOverlap
	test eax, eax
	jz FX_ImpactMark_Generate_60
	movzx eax, word [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1200]
	mov [esp+0x8], eax
	mov edx, [ebp-0x11fc]
	mov [esp+0x4], edx
	lea ebx, [ebp-0x5f4]
	mov [esp], ebx
	call R_MarkFragments_AddBModel
	jmp FX_ImpactMark_Generate_60
FX_ImpactMark_Generate_50:
	cmp dword [ebp+0x14], 0x3ff
	jz FX_ImpactMark_Generate_60
	mov eax, [ebp+0x14]
	shl eax, 0x2
	mov edx, [ebp+0x14]
	shl edx, 0x5
	sub edx, eax
	mov eax, edx
	shl eax, 0x4
	lea ebx, [edx+eax]
	add ebx, cg_entitiesArray
	cmp byte [ebx+0x1c0], 0x0
	jz FX_ImpactMark_Generate_60
	mov [esp+0x4], esi
	mov eax, [ebx+0xcc]
	mov [esp], eax
	call Com_GetClientDObj
	mov esi, eax
	test eax, eax
	jz FX_ImpactMark_Generate_60
	mov [esp], eax
	call DObjGetRadius
	fstp dword [ebp-0x1204]
	movss xmm0, dword [ebp-0x1208]
	addss xmm0, [ebp-0x1204]
	movss [ebp-0x1208], xmm0
	lea eax, [ebx+0x1c]
	movss xmm0, dword [ebx+0x1c]
	mov edx, [ebp+0x8]
	subss xmm0, [edx]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	movss xmm3, dword [ebp-0x1208]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	ucomiss xmm0, xmm3
	ja FX_ImpactMark_Generate_60
	movzx eax, word [ebp+0x14]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	lea eax, [ebp-0x5f4]
	mov [esp], eax
	call R_MarkFragments_AddDObj
	jmp FX_ImpactMark_Generate_60
	nop


;FX_ImpactMark_Generate_Callback(void*, int, FxMarkTri*, int, FxMarkPoint*, float const*, float const*)
FX_ImpactMark_Generate_Callback:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0x8]
	mov edx, [eax+0xc]
	mov [ebp-0x64], edx
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xac], xmm0
	mov eax, [eax+0x4]
	mov [ebp-0xa8], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x5c], eax
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*2]
	mov ecx, [ebp+0x10]
	lea eax, [ecx+eax*4]
	mov [ebp-0x9c], eax
	cmp ecx, eax
	jz FX_ImpactMark_Generate_Callback_10
	mov ebx, eax
	sub ebx, ecx
	mov ecx, ebx
	sar ecx, 0x2
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	cmp eax, 0x1
	jz FX_ImpactMark_Generate_Callback_20
	xor edx, edx
FX_ImpactMark_Generate_Callback_30:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz FX_ImpactMark_Generate_Callback_30
	lea eax, [edx+edx]
FX_ImpactMark_Generate_Callback_1210:
	mov dword [esp+0xc], FX_CompareMarkTris
	mov [esp+0x8], eax
	mov esi, [ebp-0x9c]
	mov [esp+0x4], esi
	mov edi, [ebp+0x10]
	mov [esp], edi
	call _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0xcb
	jg FX_ImpactMark_Generate_Callback_40
	mov edi, [ebp+0x10]
	add edi, 0xc
	cmp [ebp-0x9c], edi
	jz FX_ImpactMark_Generate_Callback_50
FX_ImpactMark_Generate_Callback_90:
	mov eax, [edi]
	mov [ebp-0x26], eax
	mov eax, [edi+0x4]
	mov [ebp-0x22], eax
	mov eax, [edi+0x8]
	mov [ebp-0x1e], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x26]
	mov [esp], ecx
	call FX_CompareMarkTris
	test al, al
	jz FX_ImpactMark_Generate_Callback_60
	lea ebx, [edi+0xc]
	mov [ebp-0x4c], ebx
	mov ecx, edi
	sub ecx, [ebp+0x10]
	sar ecx, 0x2
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea esi, [ecx+eax*2]
	test esi, esi
	jle FX_ImpactMark_Generate_Callback_70
	mov ecx, edi
	mov edx, ebx
	xor ebx, ebx
FX_ImpactMark_Generate_Callback_80:
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0xc
	sub edx, 0xc
	cmp ebx, esi
	jnz FX_ImpactMark_Generate_Callback_80
FX_ImpactMark_Generate_Callback_70:
	mov eax, [ebp-0x26]
	mov esi, [ebp+0x10]
	mov [esi], eax
	mov eax, [ebp-0x22]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1e]
	mov [esi+0x8], eax
	mov edx, [ebp-0x4c]
FX_ImpactMark_Generate_Callback_490:
	cmp [ebp-0x9c], edx
	jz FX_ImpactMark_Generate_Callback_50
	mov edi, edx
	jmp FX_ImpactMark_Generate_Callback_90
FX_ImpactMark_Generate_Callback_40:
	lea eax, [edi+0xc0]
	mov [ebp-0xa0], eax
	mov edi, [ebp+0x10]
	add edi, 0xc
	cmp eax, edi
	jz FX_ImpactMark_Generate_Callback_100
FX_ImpactMark_Generate_Callback_140:
	mov eax, [edi]
	mov [ebp-0x32], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2e], eax
	mov eax, [edi+0x8]
	mov [ebp-0x2a], eax
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x32]
	mov [esp], ecx
	call FX_CompareMarkTris
	test al, al
	jz FX_ImpactMark_Generate_Callback_110
	lea ebx, [edi+0xc]
	mov [ebp-0x50], ebx
	mov ecx, edi
	sub ecx, [ebp+0x10]
	sar ecx, 0x2
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea esi, [ecx+eax*2]
	test esi, esi
	jle FX_ImpactMark_Generate_Callback_120
	mov ecx, edi
	mov edx, ebx
	xor ebx, ebx
FX_ImpactMark_Generate_Callback_130:
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0xc
	sub edx, 0xc
	cmp ebx, esi
	jnz FX_ImpactMark_Generate_Callback_130
FX_ImpactMark_Generate_Callback_120:
	mov eax, [ebp-0x32]
	mov esi, [ebp+0x10]
	mov [esi], eax
	mov eax, [ebp-0x2e]
	mov [esi+0x4], eax
	mov eax, [ebp-0x2a]
	mov [esi+0x8], eax
	mov edx, [ebp-0xa0]
	cmp [ebp-0x50], edx
	jz FX_ImpactMark_Generate_Callback_100
FX_ImpactMark_Generate_Callback_170:
	mov edi, [ebp-0x50]
	jmp FX_ImpactMark_Generate_Callback_140
FX_ImpactMark_Generate_Callback_110:
	movzx eax, word [ebp-0x28]
	mov [ebp-0x1c], ax
	movzx eax, byte [ebp-0x29]
	mov [ebp-0x1d], al
	movzx eax, byte [ebp-0x2a]
	mov [ebp-0x1e], al
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x1f], al
	movzx eax, byte [ebp-0x2c]
	mov [ebp-0x20], al
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x22], ax
	movzx eax, word [ebp-0x30]
	mov [ebp-0x24], ax
	movzx eax, word [ebp-0x32]
	mov [ebp-0x26], ax
	lea ebx, [edi-0xc]
	mov esi, edi
	jmp FX_ImpactMark_Generate_Callback_150
FX_ImpactMark_Generate_Callback_160:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
FX_ImpactMark_Generate_Callback_150:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x26]
	mov [esp], eax
	call FX_CompareMarkTris
	test al, al
	jnz FX_ImpactMark_Generate_Callback_160
	mov eax, [ebp-0x26]
	mov [esi], eax
	mov eax, [ebp-0x22]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1e]
	mov [esi+0x8], eax
	add edi, 0xc
	mov [ebp-0x50], edi
	mov edx, [ebp-0xa0]
	cmp [ebp-0x50], edx
	jnz FX_ImpactMark_Generate_Callback_170
FX_ImpactMark_Generate_Callback_100:
	mov ecx, [ebp-0xa0]
	cmp [ebp-0x9c], ecx
	jz FX_ImpactMark_Generate_Callback_50
FX_ImpactMark_Generate_Callback_200:
	mov ebx, [ebp-0xa0]
	movzx edx, byte [ebx+0x9]
	movzx ecx, byte [ebx+0x8]
	mov esi, ebx
	movzx ebx, byte [ebx+0x7]
	mov edi, esi
	movzx esi, byte [esi+0x6]
	mov eax, edi
	movzx edi, word [edi+0x4]
	movzx eax, word [eax+0x2]
	mov [ebp-0xca], ax
	mov eax, [ebp-0xa0]
	movzx eax, word [eax]
	mov [ebp-0xcc], ax
	mov eax, [ebp-0xa0]
	movzx eax, word [eax+0xa]
	mov [ebp-0x1c], ax
	mov [ebp-0x1d], dl
	mov [ebp-0x1e], cl
	mov [ebp-0x1f], bl
	mov edx, esi
	mov [ebp-0x20], dl
	mov [ebp-0x22], di
	movzx ecx, word [ebp-0xca]
	mov [ebp-0x24], cx
	movzx ebx, word [ebp-0xcc]
	mov [ebp-0x26], bx
	mov ebx, [ebp-0xa0]
	sub ebx, 0xc
	mov esi, [ebp-0xa0]
	jmp FX_ImpactMark_Generate_Callback_180
FX_ImpactMark_Generate_Callback_190:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
FX_ImpactMark_Generate_Callback_180:
	mov [esp+0x4], ebx
	lea edi, [ebp-0x26]
	mov [esp], edi
	call FX_CompareMarkTris
	test al, al
	jnz FX_ImpactMark_Generate_Callback_190
	mov eax, [ebp-0x26]
	mov [esi], eax
	mov eax, [ebp-0x22]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1e]
	mov [esi+0x8], eax
	add dword [ebp-0xa0], 0xc
	mov eax, [ebp-0xa0]
	cmp [ebp-0x9c], eax
	jnz FX_ImpactMark_Generate_Callback_200
FX_ImpactMark_Generate_Callback_50:
	mov ecx, [ebp+0x10]
	mov ebx, [ebp+0xc]
FX_ImpactMark_Generate_Callback_1220:
	mov [ebp-0x98], ecx
	mov [ebp-0x48], ebx
	mov dword [ebp-0x94], 0xffff
	mov esi, fx_marksSystemPool
	mov [ebp-0xbc], esi
	mov edi, esi
	jmp FX_ImpactMark_Generate_Callback_210
FX_ImpactMark_Generate_Callback_260:
	mov ecx, [ebp-0x98]
	add ecx, 0x6
	mov [ebp-0xe8], ecx
	mov ebx, [ebp-0x98]
	add ebx, 0x12
	mov [ebp-0x10c], ebx
	mov ebx, 0x6
	cld
	mov esi, ecx
	mov edi, [ebp-0x10c]
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz FX_ImpactMark_Generate_Callback_220
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_ImpactMark_Generate_Callback_220:
	test eax, eax
	jnz FX_ImpactMark_Generate_Callback_230
	mov edx, 0x2
	mov al, 0x2
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x98]
	lea ecx, [ecx+eax*4]
	mov [ebp-0x98], ecx
	sub [ebp-0x48], edx
	jz FX_ImpactMark_Generate_Callback_240
FX_ImpactMark_Generate_Callback_270:
	mov edi, [ebp-0xbc]
FX_ImpactMark_Generate_Callback_210:
	mov esi, [edi+0x808]
	test esi, esi
	jz FX_ImpactMark_Generate_Callback_250
FX_ImpactMark_Generate_Callback_630:
	mov eax, [edi+0x808]
	mov edx, [eax]
	mov [edi+0x808], edx
	mov edx, [ebp-0x94]
	mov [eax+0x14], edx
	lea edx, [edi+0x9010]
	sub eax, edx
	mov [ebp-0x94], eax
	cmp dword [ebp-0x48], 0x1
	jg FX_ImpactMark_Generate_Callback_260
FX_ImpactMark_Generate_Callback_230:
	mov edx, 0x1
	mov eax, 0x1
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x98]
	lea ecx, [ecx+eax*4]
	mov [ebp-0x98], ecx
	sub [ebp-0x48], edx
	jnz FX_ImpactMark_Generate_Callback_270
FX_ImpactMark_Generate_Callback_240:
	mov edx, [ebp+0x14]
	add edx, 0x1
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0xb0], eax
	mov dword [ebp-0x8c], 0xffff
	xor edi, edi
	mov ebx, fx_marksSystemPool
	add ebx, 0x810
	mov [ebp-0x84], ebx
	mov [ebp-0x78], ebx
	mov [ebp-0x70], ebx
	mov esi, fx_marksSystemPool
	add esi, 0x15010
	mov [ebp-0x6c], esi
	jmp FX_ImpactMark_Generate_Callback_280
FX_ImpactMark_Generate_Callback_300:
	mov edx, eax
	mov ecx, eax
FX_ImpactMark_Generate_Callback_460:
	mov eax, [edx+0x80c]
	mov edx, [eax]
	mov [ecx+0x80c], edx
	mov ebx, [ebp-0x8c]
	mov [eax+0x40], ebx
	sub eax, [ebp-0x6c]
	mov [ebp-0x8c], eax
	add edi, 0x1
	cmp [ebp-0xb0], edi
	jz FX_ImpactMark_Generate_Callback_290
FX_ImpactMark_Generate_Callback_280:
	mov eax, [ebp-0xbc]
	mov edx, [eax+0x80c]
	test edx, edx
	jnz FX_ImpactMark_Generate_Callback_300
	lea edx, [eax+0x810]
	xor esi, esi
	lea ecx, [eax+0x814]
	jmp FX_ImpactMark_Generate_Callback_310
FX_ImpactMark_Generate_Callback_360:
	jz FX_ImpactMark_Generate_Callback_320
FX_ImpactMark_Generate_Callback_340:
	add edx, 0x44
	add ecx, 0x44
	mov eax, [ebp-0xbc]
	lea ebx, [eax+0x9010]
	cmp ebx, edx
	jz FX_ImpactMark_Generate_Callback_330
FX_ImpactMark_Generate_Callback_310:
	mov eax, [ecx]
	cmp eax, 0xffffffff
	jz FX_ImpactMark_Generate_Callback_340
	test esi, esi
	jz FX_ImpactMark_Generate_Callback_350
	cmp eax, [esi+0x4]
	jge FX_ImpactMark_Generate_Callback_360
FX_ImpactMark_Generate_Callback_350:
	mov esi, edx
FX_ImpactMark_Generate_Callback_650:
	add edx, 0x44
	add ecx, 0x44
	mov eax, [ebp-0xbc]
	lea ebx, [eax+0x9010]
	cmp ebx, edx
	jnz FX_ImpactMark_Generate_Callback_310
FX_ImpactMark_Generate_Callback_330:
	movzx eax, byte [esi+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_ImpactMark_Generate_Callback_370
	jg FX_ImpactMark_Generate_Callback_380
	test eax, eax
	jnz FX_ImpactMark_Generate_Callback_390
	mov eax, esi
	sub eax, [ebp-0x84]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	neg edx
	mov [ebp-0x86], dx
	mov ecx, [esi+0x3c]
	mov [ebp-0xe0], ebx
	mov edx, ebx
	jmp FX_ImpactMark_Generate_Callback_400
FX_ImpactMark_Generate_Callback_410:
	mov edx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_400:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x808]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_410
	mov ecx, [esi+0x40]
	lea eax, [ebx+0x15010]
	mov [ebp-0xe0], eax
	mov edx, eax
	jmp FX_ImpactMark_Generate_Callback_420
FX_ImpactMark_Generate_Callback_430:
	mov edx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_420:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x80c]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_430
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_440
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_440:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_450
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_1340:
	mov dword [esi+0x4], 0xffffffff
	mov eax, [ebp-0xbc]
	movzx ecx, word [eax+0x4]
	mov [esi+0x2], cx
	movzx edx, word [ebp-0x86]
	mov [eax+0x4], dx
FX_ImpactMark_Generate_Callback_390:
	mov esi, [ebp-0xbc]
	add dword [esi+0x48018], 0x1
	mov edx, [ebp-0xbc]
	mov ecx, [ebp-0xbc]
	jmp FX_ImpactMark_Generate_Callback_460
FX_ImpactMark_Generate_Callback_60:
	movzx eax, word [ebp-0x1c]
	mov [ebp-0x28], ax
	movzx eax, byte [ebp-0x1d]
	mov [ebp-0x29], al
	movzx eax, byte [ebp-0x1e]
	mov [ebp-0x2a], al
	movzx eax, byte [ebp-0x1f]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp-0x20]
	mov [ebp-0x2c], al
	movzx eax, word [ebp-0x22]
	mov [ebp-0x2e], ax
	movzx eax, word [ebp-0x24]
	mov [ebp-0x30], ax
	movzx eax, word [ebp-0x26]
	mov [ebp-0x32], ax
	lea ebx, [edi-0xc]
	mov esi, edi
	jmp FX_ImpactMark_Generate_Callback_470
FX_ImpactMark_Generate_Callback_480:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
FX_ImpactMark_Generate_Callback_470:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x32]
	mov [esp], eax
	call FX_CompareMarkTris
	test al, al
	jnz FX_ImpactMark_Generate_Callback_480
	mov eax, [ebp-0x32]
	mov [esi], eax
	mov eax, [ebp-0x2e]
	mov [esi+0x4], eax
	mov eax, [ebp-0x2a]
	mov [esi+0x8], eax
	add edi, 0xc
	mov [ebp-0x4c], edi
	mov edx, edi
	jmp FX_ImpactMark_Generate_Callback_490
FX_ImpactMark_Generate_Callback_250:
	lea edx, [edi+0x810]
	xor esi, esi
	lea ecx, [edi+0x814]
	jmp FX_ImpactMark_Generate_Callback_500
FX_ImpactMark_Generate_Callback_550:
	jz FX_ImpactMark_Generate_Callback_510
FX_ImpactMark_Generate_Callback_530:
	add edx, 0x44
	add ecx, 0x44
	mov eax, [ebp-0xbc]
	lea ebx, [eax+0x9010]
	cmp ebx, edx
	jz FX_ImpactMark_Generate_Callback_520
FX_ImpactMark_Generate_Callback_500:
	mov eax, [ecx]
	cmp eax, 0xffffffff
	jz FX_ImpactMark_Generate_Callback_530
	test esi, esi
	jz FX_ImpactMark_Generate_Callback_540
	cmp eax, [esi+0x4]
	jge FX_ImpactMark_Generate_Callback_550
FX_ImpactMark_Generate_Callback_540:
	mov esi, edx
FX_ImpactMark_Generate_Callback_640:
	add edx, 0x44
	add ecx, 0x44
	mov eax, [ebp-0xbc]
	lea ebx, [eax+0x9010]
	cmp ebx, edx
	jnz FX_ImpactMark_Generate_Callback_500
FX_ImpactMark_Generate_Callback_520:
	movzx eax, byte [esi+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_ImpactMark_Generate_Callback_560
	jg FX_ImpactMark_Generate_Callback_570
	test eax, eax
	jnz FX_ImpactMark_Generate_Callback_580
	mov edx, [ebp-0xbc]
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0xe2], ax
	mov ecx, [esi+0x3c]
FX_ImpactMark_Generate_Callback_590:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edi, [ebp-0xbc]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_590
	mov ecx, [esi+0x40]
	lea ebx, [edi+0x15010]
FX_ImpactMark_Generate_Callback_600:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xbc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_600
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_610
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [edi+eax], dx
FX_ImpactMark_Generate_Callback_610:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_620
FX_ImpactMark_Generate_Callback_920:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_930:
	mov dword [esi+0x4], 0xffffffff
	mov edi, [ebp-0xbc]
	movzx ecx, word [edi+0x4]
	mov [esi+0x2], cx
	movzx eax, word [ebp-0xe2]
	mov [edi+0x4], ax
FX_ImpactMark_Generate_Callback_580:
	mov esi, [ebp-0xbc]
	add dword [esi+0x48018], 0x1
	mov edi, [ebp-0xbc]
	jmp FX_ImpactMark_Generate_Callback_630
FX_ImpactMark_Generate_Callback_510:
	mov eax, [ecx+0x4]
	cmp eax, [esi+0x8]
	jge FX_ImpactMark_Generate_Callback_530
	mov esi, edx
	jmp FX_ImpactMark_Generate_Callback_640
FX_ImpactMark_Generate_Callback_320:
	mov eax, [ecx+0x4]
	cmp eax, [esi+0x8]
	jge FX_ImpactMark_Generate_Callback_340
	mov esi, edx
	jmp FX_ImpactMark_Generate_Callback_650
FX_ImpactMark_Generate_Callback_290:
	cmp word [ecx+0x4], 0xffff
	jz FX_ImpactMark_Generate_Callback_660
FX_ImpactMark_Generate_Callback_1270:
	mov esi, [ebp-0xbc]
	movzx eax, word [esi+0x4]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, esi
	mov [ebp-0xa4], eax
	mov edi, eax
	movzx eax, word [eax+0x2]
	mov [esi+0x4], ax
	mov edx, [ebp+0x10]
	mov eax, [edx+0x6]
	mov [edi+0x30], eax
	movzx eax, word [edx+0xa]
	mov [edi+0x34], ax
	mov ecx, [ebp-0xa8]
	mov [edi+0x2c], ecx
	movss xmm0, dword [ebp-0xac]
	movss [edi+0x18], xmm0
	mov edx, edi
	add edx, 0xc
	mov ecx, [ebp+0x1c]
	mov eax, [ecx]
	mov [edi+0xc], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	add edx, 0x10
	mov ebx, [ebp+0x20]
	mov eax, [ebx]
	mov [edi+0x1c], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov esi, [ebp-0x64]
	mov eax, [esi]
	mov [edi+0x28], eax
	movzx eax, byte [edi+0x33]
	and eax, 0xc0
	cmp eax, 0xc0
	jz FX_ImpactMark_Generate_Callback_670
	cmp eax, 0x80
	jz FX_ImpactMark_Generate_Callback_670
	cmp eax, 0x40
	jnz FX_ImpactMark_Generate_Callback_680
	mov ebx, [ebp-0xa4]
	movzx esi, word [ebx+0x34]
	mov edi, [ebp-0xbc]
	lea edx, [edi+0x810]
	lea ecx, [edi+0x814]
	mov ebx, fx_marksSystemPool
	add ebx, 0x9010
	jmp FX_ImpactMark_Generate_Callback_690
FX_ImpactMark_Generate_Callback_710:
	add edx, 0x44
	add ecx, 0x44
	cmp edx, ebx
	jz FX_ImpactMark_Generate_Callback_700
FX_ImpactMark_Generate_Callback_690:
	cmp dword [ecx], 0xffffffff
	jz FX_ImpactMark_Generate_Callback_710
	cmp word [ecx-0x4], 0xffff
	jnz FX_ImpactMark_Generate_Callback_710
	movzx eax, byte [ecx+0x2f]
	and eax, 0xc0
	cmp eax, 0x40
	jnz FX_ImpactMark_Generate_Callback_710
	cmp si, [ecx+0x30]
	jnz FX_ImpactMark_Generate_Callback_710
	mov ecx, [ebp-0xbc]
	lea eax, [ecx+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
FX_ImpactMark_Generate_Callback_1330:
	mov [ebp-0x1a], ax
	lea edx, [ebp-0x1a]
	mov ecx, [ebp-0xa4]
	mov eax, [ebp-0xbc]
	call FX_LinkMarkIntoList
FX_ImpactMark_Generate_Callback_1040:
	mov edx, fx_marksSystemPool
	mov [ebp-0xbc], edx
	mov eax, [edx]
	sub eax, 0x1
	mov ecx, [ebp-0xa4]
	mov [ecx+0x4], eax
	mov eax, [edx]
	mov [ecx+0x8], eax
	mov ebx, [ebp-0x94]
	mov [ecx+0x3c], ebx
	movzx eax, byte [ebp+0xc]
	mov [ecx+0x36], al
	mov edx, [ebp-0x8c]
	mov [ecx+0x40], edx
	movzx ebx, word [ebp+0x14]
	mov [ecx+0x38], bx
	mov ecx, [ebp-0x94]
	mov esi, [ebp+0x10]
	mov [ebp-0x60], esi
	mov edi, [ebp-0xbc]
	add edi, 0x9010
	mov [ebp-0x58], edi
	mov edx, esi
FX_ImpactMark_Generate_Callback_770:
	add ecx, [ebp-0x58]
	mov [ebp-0x3c], ecx
	cmp dword [ebp+0xc], 0x2
	mov eax, 0x2
	cmovl eax, [ebp+0xc]
	mov [ebp-0x44], eax
	mov eax, [edx+0x6]
	mov [ecx+0xc], eax
	movzx eax, word [edx+0xa]
	mov [ecx+0x10], ax
	mov ebx, ecx
	add edx, 0xc
	mov [ebp-0xdc], edx
	mov dword [ebp-0x40], 0x0
	add ecx, 0xc
	mov [ebp-0xb4], ecx
	mov ecx, edx
	jmp FX_ImpactMark_Generate_Callback_720
FX_ImpactMark_Generate_Callback_750:
	mov ecx, [ebp-0xdc]
FX_ImpactMark_Generate_Callback_720:
	movzx eax, word [ecx-0xc]
	mov [ebx], ax
	movzx eax, word [ecx-0xa]
	mov [ebx+0x2], ax
	movzx eax, word [ecx-0x8]
	mov [ebx+0x4], ax
	add dword [ebp-0x40], 0x1
	mov eax, [ebp-0x40]
	cmp [ebp-0x44], eax
	jz FX_ImpactMark_Generate_Callback_730
	add ecx, 0x6
	mov [ebp-0xe8], ecx
	mov dword [ebp-0xb8], 0x6
	cld
	mov esi, ecx
	mov edi, [ebp-0xb4]
	mov ecx, 0x6
	repe cmpsb
	mov eax, 0x0
	jz FX_ImpactMark_Generate_Callback_740
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_ImpactMark_Generate_Callback_740:
	test eax, eax
	setz al
	add ebx, 0x6
	add dword [ebp-0xdc], 0xc
	test al, al
	jnz FX_ImpactMark_Generate_Callback_750
FX_ImpactMark_Generate_Callback_730:
	mov eax, [ebp-0x3c]
	mov ecx, [eax+0x14]
	movzx edx, byte [ebp-0x40]
	mov [eax+0x12], dl
	movzx eax, byte [ebp-0x40]
	lea edx, [eax+eax*2]
	mov ebx, [ebp-0x60]
	lea ebx, [ebx+edx*4]
	mov [ebp-0x60], ebx
	sub [ebp+0xc], eax
	jz FX_ImpactMark_Generate_Callback_760
	mov edx, [ebp-0x60]
	jmp FX_ImpactMark_Generate_Callback_770
FX_ImpactMark_Generate_Callback_760:
	mov ebx, [ebp-0xa4]
	mov ecx, [ebx+0x40]
	mov esi, [ebp-0xbc]
	add esi, 0x15010
	mov [ebp-0x54], esi
FX_ImpactMark_Generate_Callback_790:
	add ecx, [ebp-0x54]
	mov edx, 0x2
	cmp dword [ebp+0x14], 0x2
	cmovle edx, [ebp+0x14]
	mov esi, [ebp-0x5c]
	mov ebx, ecx
	xor edi, edi
FX_ImpactMark_Generate_Callback_780:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	add edi, 0x1
	add esi, 0x20
	add ebx, 0x20
	cmp edx, edi
	jg FX_ImpactMark_Generate_Callback_780
	mov ecx, [ecx+0x40]
	mov eax, edx
	shl eax, 0x5
	add [ebp-0x5c], eax
	sub [ebp+0x14], edx
	jnz FX_ImpactMark_Generate_Callback_790
	mov edi, [ebp-0xbc]
	add dword [edi+0x48014], 0x1
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_ImpactMark_Generate_Callback_380:
	cmp eax, 0x80
	jz FX_ImpactMark_Generate_Callback_800
	cmp eax, 0xc0
	jnz FX_ImpactMark_Generate_Callback_390
FX_ImpactMark_Generate_Callback_800:
	movzx eax, word [esi+0x34]
	mov ecx, [ebp-0xbc]
	lea eax, [ecx+eax*2+0x8]
	mov [ebp-0x80], eax
	mov edx, esi
	sub edx, [ebp-0x78]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x7a], ax
	mov ecx, [esi+0x3c]
	mov ebx, [ebp-0xbc]
	add ebx, 0x9010
	mov [ebp-0xe0], ebx
	mov edx, ebx
	jmp FX_ImpactMark_Generate_Callback_810
FX_ImpactMark_Generate_Callback_820:
	mov edx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_810:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x808]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_820
	mov ecx, [esi+0x40]
	lea eax, [ebx+0x15010]
	mov [ebp-0xe0], eax
	mov edx, eax
	jmp FX_ImpactMark_Generate_Callback_830
FX_ImpactMark_Generate_Callback_840:
	mov edx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_830:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x80c]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_840
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_850
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_850:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_860
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_1320:
	mov dword [esi+0x4], 0xffffffff
	mov eax, [ebp-0xbc]
	movzx ecx, word [eax+0x4]
	mov [esi+0x2], cx
	movzx edx, word [ebp-0x7a]
	mov [eax+0x4], dx
	jmp FX_ImpactMark_Generate_Callback_390
FX_ImpactMark_Generate_Callback_570:
	cmp eax, 0x80
	jz FX_ImpactMark_Generate_Callback_870
	cmp eax, 0xc0
	jnz FX_ImpactMark_Generate_Callback_580
FX_ImpactMark_Generate_Callback_870:
	movzx eax, word [esi+0x34]
	mov edx, [ebp-0xbc]
	lea eax, [edx+eax*2+0x8]
	mov [ebp-0x90], eax
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0xe2], ax
	mov ecx, [esi+0x3c]
	mov edi, [ebp-0xbc]
	lea ebx, [edi+0x9010]
	jmp FX_ImpactMark_Generate_Callback_880
FX_ImpactMark_Generate_Callback_890:
	mov edi, [ebp-0xbc]
FX_ImpactMark_Generate_Callback_880:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_890
	mov ecx, [esi+0x40]
	lea ebx, [edi+0x15010]
FX_ImpactMark_Generate_Callback_900:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xbc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_900
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_910
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [edi+eax], dx
FX_ImpactMark_Generate_Callback_910:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jnz FX_ImpactMark_Generate_Callback_920
	mov ebx, [ebp-0x90]
	test ebx, ebx
	jz FX_ImpactMark_Generate_Callback_930
	mov ebx, [ebp-0x90]
	mov [ebx], cx
	jmp FX_ImpactMark_Generate_Callback_930
FX_ImpactMark_Generate_Callback_370:
	mov eax, esi
	sub eax, [ebp-0x70]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	neg edx
	mov [ebp-0x72], dx
	mov ecx, [esi+0x3c]
	mov [ebp-0xe0], ebx
	jmp FX_ImpactMark_Generate_Callback_940
FX_ImpactMark_Generate_Callback_950:
	mov ebx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_940:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x14]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x808]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_950
	mov ecx, [esi+0x40]
	lea eax, [ebx+0x15010]
	mov [ebp-0xe0], eax
	mov edx, eax
	jmp FX_ImpactMark_Generate_Callback_960
FX_ImpactMark_Generate_Callback_970:
	mov edx, [ebp-0xe0]
FX_ImpactMark_Generate_Callback_960:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov ebx, [ebp-0xbc]
	mov edx, [ebx+0x80c]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_970
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_980
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_980:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_990
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_990:
	mov dword [esi+0x4], 0xffffffff
	mov ecx, [ebp-0xbc]
	movzx eax, word [ecx+0x4]
	mov [esi+0x2], ax
	movzx ebx, word [ebp-0x72]
	mov [ecx+0x4], bx
	jmp FX_ImpactMark_Generate_Callback_390
FX_ImpactMark_Generate_Callback_560:
	mov edx, [ebp-0xbc]
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0xe2], ax
	mov ecx, [esi+0x3c]
FX_ImpactMark_Generate_Callback_1000:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edi, [ebp-0xbc]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1000
	mov ecx, [esi+0x40]
	lea ebx, [edi+0x15010]
FX_ImpactMark_Generate_Callback_1010:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xbc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1010
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_1020
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [edi+eax], dx
FX_ImpactMark_Generate_Callback_1020:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_1030
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_1030:
	mov dword [esi+0x4], 0xffffffff
	mov ecx, [ebp-0xbc]
	movzx eax, word [ecx+0x4]
	mov [esi+0x2], ax
	movzx ebx, word [ebp-0xe2]
	mov [ecx+0x4], bx
	jmp FX_ImpactMark_Generate_Callback_580
FX_ImpactMark_Generate_Callback_670:
	mov edi, [ebp-0xa4]
	movzx edx, word [edi+0x34]
	mov eax, [ebp-0xbc]
	lea edx, [eax+edx*2+0x8]
	mov ecx, edi
	call FX_LinkMarkIntoList
	jmp FX_ImpactMark_Generate_Callback_1040
FX_ImpactMark_Generate_Callback_680:
	mov eax, [ebp-0xbc]
	lea edx, [eax+0x6]
	mov ecx, [ebp-0xa4]
	call FX_LinkMarkIntoList
	jmp FX_ImpactMark_Generate_Callback_1040
FX_ImpactMark_Generate_Callback_660:
	mov esi, [ebp-0xbc]
	lea ecx, [esi+0x810]
	xor esi, esi
	mov edi, [ebp-0xbc]
	lea edx, [edi+0x814]
	mov ebx, fx_marksSystemPool
	add ebx, 0x9010
	jmp FX_ImpactMark_Generate_Callback_1050
FX_ImpactMark_Generate_Callback_1100:
	jz FX_ImpactMark_Generate_Callback_1060
FX_ImpactMark_Generate_Callback_1080:
	add ecx, 0x44
	add edx, 0x44
	cmp ecx, ebx
	jz FX_ImpactMark_Generate_Callback_1070
FX_ImpactMark_Generate_Callback_1050:
	mov eax, [edx]
	cmp eax, 0xffffffff
	jz FX_ImpactMark_Generate_Callback_1080
	test esi, esi
	jz FX_ImpactMark_Generate_Callback_1090
	cmp eax, [esi+0x4]
	jge FX_ImpactMark_Generate_Callback_1100
FX_ImpactMark_Generate_Callback_1090:
	mov esi, ecx
FX_ImpactMark_Generate_Callback_1200:
	add ecx, 0x44
	add edx, 0x44
	cmp ecx, ebx
	jnz FX_ImpactMark_Generate_Callback_1050
FX_ImpactMark_Generate_Callback_1070:
	movzx eax, byte [esi+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_ImpactMark_Generate_Callback_1110
	jle FX_ImpactMark_Generate_Callback_1120
	cmp eax, 0x80
	jz FX_ImpactMark_Generate_Callback_1130
	cmp eax, 0xc0
	jnz FX_ImpactMark_Generate_Callback_1140
FX_ImpactMark_Generate_Callback_1130:
	movzx eax, word [esi+0x34]
	mov edx, [ebp-0xbc]
	lea eax, [edx+eax*2+0x8]
	mov [ebp-0x68], eax
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ecx, [esi+0x3c]
	mov eax, [ebp-0xbc]
	lea ebx, [eax+0x9010]
FX_ImpactMark_Generate_Callback_1150:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x14]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x808]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1150
	mov ecx, [esi+0x40]
	lea ebx, [edx+0x15010]
FX_ImpactMark_Generate_Callback_1160:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x40]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x80c]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1160
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_1170
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov ebx, [ebp-0xbc]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_1170:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1180
	mov eax, [ebp-0x68]
	test eax, eax
	jz FX_ImpactMark_Generate_Callback_1190
	mov ebx, [ebp-0x68]
	mov [ebx], cx
	jmp FX_ImpactMark_Generate_Callback_1190
FX_ImpactMark_Generate_Callback_1060:
	mov eax, [edx+0x4]
	cmp eax, [esi+0x8]
	jge FX_ImpactMark_Generate_Callback_1080
	mov esi, ecx
	jmp FX_ImpactMark_Generate_Callback_1200
FX_ImpactMark_Generate_Callback_20:
	and eax, 0xffffff00
	jmp FX_ImpactMark_Generate_Callback_1210
FX_ImpactMark_Generate_Callback_10:
	mov ebx, edx
	jmp FX_ImpactMark_Generate_Callback_1220
FX_ImpactMark_Generate_Callback_1120:
	test eax, eax
	jnz FX_ImpactMark_Generate_Callback_1140
	mov edx, [ebp-0xbc]
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [esi+0x3c]
FX_ImpactMark_Generate_Callback_1230:
	lea eax, [ebx+ecx]
	mov ebx, [eax+0x14]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x808]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x808], eax
	cmp ebx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1230
	mov ecx, [esi+0x40]
	lea ebx, [edx+0x15010]
FX_ImpactMark_Generate_Callback_1240:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x40]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x80c]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1240
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_1250
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov ebx, [ebp-0xbc]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_1250:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_1260
FX_ImpactMark_Generate_Callback_1180:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_1190:
	mov dword [esi+0x4], 0xffffffff
	mov eax, [ebp-0xbc]
	movzx ecx, word [eax+0x4]
	mov [esi+0x2], cx
	mov [eax+0x4], di
FX_ImpactMark_Generate_Callback_1140:
	mov ebx, [ebp-0xbc]
	add dword [ebx+0x48018], 0x1
	jmp FX_ImpactMark_Generate_Callback_1270
FX_ImpactMark_Generate_Callback_1110:
	mov edx, [ebp-0xbc]
	lea eax, [edx+0x810]
	mov edx, esi
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [esi+0x3c]
FX_ImpactMark_Generate_Callback_1280:
	lea eax, [ebx+ecx]
	mov ebx, [eax+0x14]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x808]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x808], eax
	cmp ebx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1280
	mov ecx, [esi+0x40]
	lea ebx, [edx+0x15010]
FX_ImpactMark_Generate_Callback_1290:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x40]
	mov edx, [ebp-0xbc]
	mov edx, [edx+0x80c]
	mov [eax], edx
	mov edx, [ebp-0xbc]
	mov [edx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_ImpactMark_Generate_Callback_1290
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_ImpactMark_Generate_Callback_1300
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov ebx, [ebp-0xbc]
	mov [ebx+eax], dx
FX_ImpactMark_Generate_Callback_1300:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_ImpactMark_Generate_Callback_1310
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xbc]
	mov [edx+eax+0x2], cx
FX_ImpactMark_Generate_Callback_1310:
	mov dword [esi+0x4], 0xffffffff
	mov ecx, [ebp-0xbc]
	movzx eax, word [ecx+0x4]
	mov [esi+0x2], ax
	mov [ecx+0x4], di
	jmp FX_ImpactMark_Generate_Callback_1140
FX_ImpactMark_Generate_Callback_860:
	mov eax, [ebp-0x80]
	test eax, eax
	jz FX_ImpactMark_Generate_Callback_1320
	mov ebx, [ebp-0x80]
	mov [ebx], cx
	jmp FX_ImpactMark_Generate_Callback_1320
FX_ImpactMark_Generate_Callback_700:
	mov eax, 0xffffffff
	jmp FX_ImpactMark_Generate_Callback_1330
FX_ImpactMark_Generate_Callback_450:
	mov ebx, [ebp-0xbc]
	mov [ebx+0x6], cx
	jmp FX_ImpactMark_Generate_Callback_1340
FX_ImpactMark_Generate_Callback_620:
	mov ebx, [ebp-0xbc]
	mov [ebx+0x6], cx
	jmp FX_ImpactMark_Generate_Callback_930
FX_ImpactMark_Generate_Callback_1260:
	mov ebx, [ebp-0xbc]
	mov [ebx+0x6], cx
	jmp FX_ImpactMark_Generate_Callback_1190
	nop


;FX_LinkMarkIntoList(FxMarksSystem*, unsigned short*, FxMark*)
FX_LinkMarkIntoList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x2c], ecx
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_LinkMarkIntoList_10
	mov edx, [ecx+0x2c]
	mov [ebp-0x18], edx
	mov ecx, [ebp-0x20]
	mov [ebp-0x14], ecx
	mov word [ebp-0xe], 0xffff
	mov esi, edx
	jmp FX_LinkMarkIntoList_20
FX_LinkMarkIntoList_50:
	mov esi, [ebp-0x18]
FX_LinkMarkIntoList_20:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov ebx, [ebp-0x1c]
	add ebx, eax
	cmp [ebx+0x2c], esi
	jz FX_LinkMarkIntoList_30
FX_LinkMarkIntoList_80:
	mov edx, [ebp-0x2c]
	add edx, 0xc
	lea eax, [ebx+0xc]
	movss xmm0, dword [ebx+0xc]
	mov ecx, [ebp-0x2c]
	subss xmm0, [ecx+0xc]
	movss xmm1, dword [eax+0x4]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [eax+0x8]
	subss xmm2, [edx+0x8]
	movss xmm3, dword [ecx+0x18]
	addss xmm3, [ebx+0x18]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm3, xmm3
	ucomiss xmm3, xmm0
	ja FX_LinkMarkIntoList_40
	mov ecx, [ebp-0x14]
	movzx ecx, word [ecx]
	mov [ebp-0xe], cx
	lea esi, [ebx+0x2]
	mov [ebp-0x14], esi
	movzx eax, word [ebx+0x2]
	cmp ax, 0xffff
	jnz FX_LinkMarkIntoList_50
FX_LinkMarkIntoList_90:
	mov eax, [ebp-0x1c]
	add eax, 0x810
	mov edx, [ebp-0x2c]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	movzx ecx, ax
	mov edx, [ebp-0x14]
	movzx eax, word [edx]
	mov ebx, [ebp-0x2c]
	mov [ebx+0x2], ax
	movzx esi, word [ebp-0xe]
	mov [ebx], si
	cmp ax, 0xffff
	jz FX_LinkMarkIntoList_60
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edi, [ebp-0x1c]
	mov [edi+eax], cx
FX_LinkMarkIntoList_60:
	mov eax, [ebp-0x14]
	mov [eax], cx
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_LinkMarkIntoList_30:
	lea edi, [ebx+0x30]
	mov [ebp-0x30], edi
	mov eax, [ebp-0x2c]
	add eax, 0x30
	mov dword [ebp-0x28], 0x6
	cld
	mov esi, edi
	mov edi, eax
	mov ecx, 0x6
	repe cmpsb
	mov eax, 0x0
	jz FX_LinkMarkIntoList_70
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_LinkMarkIntoList_70:
	test eax, eax
	jnz FX_LinkMarkIntoList_80
	jmp FX_LinkMarkIntoList_90
FX_LinkMarkIntoList_10:
	mov edi, edx
FX_LinkMarkIntoList_100:
	mov [ebp-0x14], edi
	mov word [ebp-0xe], 0xffff
	jmp FX_LinkMarkIntoList_90
FX_LinkMarkIntoList_40:
	mov edi, [ebp-0x20]
	jmp FX_LinkMarkIntoList_100
	nop


;FX_GenerateMarkVertsForMark_FinishAnimated(FxMarksSystem*, FxMark*, unsigned short, FxActiveMarkSurf*, float const (*) [3])
FX_GenerateMarkVertsForMark_FinishAnimated:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov dword [ebp-0xc4], 0x0
	mov dword [ebp-0xc8], 0x0
	mov dword [ebp-0xcc], 0x0
	xor edi, edi
	mov [ebp-0xd0], eax
	mov [ebp-0xd4], edx
	mov edx, [ebp+0x8]
	mov esi, ecx
	movzx ebx, byte [edx+0x7]
	and ebx, 0xc0
	mov eax, [edx+0xc]
	mov [esp+0xc], eax
	mov eax, [edx+0x10]
	mov [esp+0x8], eax
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	add ebx, 0xffffff80
	jz FX_GenerateMarkVertsForMark_FinishAnimated_10
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov esi, eax
	movss xmm0, dword [_float_0_50000000]
	movaps xmm1, xmm0
	mov eax, [ebp-0xd4]
	divss xmm1, dword [eax+0x18]
	movss [ebp-0x98], xmm1
	mov eax, [eax+0x40]
	mov [ebp-0x94], eax
	mov edx, [ebp-0xd4]
	movzx edx, word [edx+0x38]
	mov [ebp-0x9c], edx
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov [ebp-0x58], eax
	mov edx, [ebp+0xc]
	add edx, 0x18
	mov [ebp-0x54], edx
	mov eax, [ebp-0xd0]
	add eax, 0x15010
	mov [ebp-0xe0], eax
	mov edx, [ebp-0xd4]
	add edx, 0xc
	mov [ebp-0xd8], edx
	mov eax, [ebp-0xd4]
	add eax, 0x1c
	mov [ebp-0xdc], eax
	mov eax, [ebp-0xe0]
	add eax, [ebp-0x94]
	mov edx, [eax+0x40]
	mov [ebp-0x94], edx
	cmp dword [ebp-0x9c], 0x2
	jg FX_GenerateMarkVertsForMark_FinishAnimated_20
FX_GenerateMarkVertsForMark_FinishAnimated_120:
	mov dword [ebp-0x40], 0x0
FX_GenerateMarkVertsForMark_FinishAnimated_130:
	mov ebx, eax
	mov dword [ebp-0x44], 0x0
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_30
FX_GenerateMarkVertsForMark_FinishAnimated_60:
	mov eax, 0x3fff
FX_GenerateMarkVertsForMark_FinishAnimated_80:
	mov ecx, edx
	or ecx, eax
	movss [ebp-0x1c], xmm2
	mov eax, [ebp-0x1c]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_GenerateMarkVertsForMark_FinishAnimated_40
	mov eax, 0x3fff
FX_GenerateMarkVertsForMark_FinishAnimated_100:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	movss xmm0, dword [_float_127_00000000]
	mulss xmm0, [ebp-0x5c]
	movss xmm1, dword [_float_127_50000000]
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov [ebp-0xcc], al
	movss xmm0, dword [_float_127_00000000]
	mulss xmm0, [ebp-0x60]
	movss xmm1, dword [_float_127_50000000]
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov edx, [ebp-0xcc]
	mov dh, al
	mulss xmm4, [_float_127_00000000]
	addss xmm4, [_float_127_50000000]
	cvttss2si eax, xmm4
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0xcc], edx
	mov [esi+0x18], edx
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x28], xmm0
	movss xmm1, dword [ebp-0x6c]
	movss [ebp-0x24], xmm1
	mov dword [ebp-0x20], 0x0
	movss xmm4, dword [_float_127_00000000]
	mulss xmm4, [ebp-0x64]
	movss xmm0, dword [_float_127_50000000]
	addss xmm0, xmm4
	cvttss2si eax, xmm0
	mov edx, edi
	mov dl, al
	movss xmm0, dword [_float_127_00000000]
	mulss xmm0, [ebp-0x68]
	movss xmm1, dword [_float_127_50000000]
	addss xmm1, xmm0
	cvttss2si eax, xmm1
	mov dh, al
	mov edi, edx
	movss xmm4, dword [_float_127_00000000]
	mulss xmm4, [ebp-0x6c]
	movss xmm0, dword [_float_127_50000000]
	addss xmm0, xmm4
	cvttss2si eax, xmm0
	movzx eax, al
	shl eax, 0x10
	and edi, 0xff00ffff
	or edi, eax
	and edi, 0xffffff
	or edi, 0x3f000000
	mov [ebp-0x2c], edi
	mov [esi+0x1c], edi
	add ebx, 0x20
	add esi, 0x2c
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x44]
	cmp [ebp-0x9c], eax
	jz FX_GenerateMarkVertsForMark_FinishAnimated_50
FX_GenerateMarkVertsForMark_FinishAnimated_30:
	movss xmm5, dword [ebx]
	mov eax, [ebp-0xd4]
	subss xmm5, [eax+0xc]
	movss xmm1, dword [ebx+0x4]
	mov edx, [ebp-0xd8]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [ebx+0x8]
	subss xmm2, [edx+0x8]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0xf4], xmm0
	mov eax, [ebp-0x58]
	movss xmm0, dword [eax]
	movss [ebp-0x90], xmm0
	mov eax, [ebp-0x54]
	movss xmm0, dword [eax]
	movss [ebp-0x8c], xmm0
	movss xmm3, dword [ebp-0xf4]
	mulss xmm3, xmm5
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm2
	addss xmm3, xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0xf0], xmm0
	mov eax, [ebp-0x58]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x88], xmm0
	mov eax, [ebp-0x54]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x84], xmm0
	movss xmm6, dword [ebp-0xf0]
	mulss xmm6, xmm5
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xec], xmm0
	mov eax, [ebp-0x58]
	movss xmm7, dword [eax+0x8]
	mov edx, [ebp-0x54]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x80], xmm0
	mulss xmm5, [ebp-0xec]
	mulss xmm1, xmm7
	addss xmm5, xmm1
	mulss xmm2, xmm0
	addss xmm5, xmm2
	mov eax, [ebp-0xd4]
	movss xmm4, dword [eax+0x1c]
	mov edx, [ebp-0xdc]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movss xmm0, dword [ebp-0xf4]
	mulss xmm0, xmm4
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x90]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0x8c]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x64]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0xf0]
	mulss xmm0, xmm4
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x88]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x68]
	movss [ebp-0x68], xmm0
	mulss xmm4, [ebp-0xec]
	mulss xmm1, xmm7
	addss xmm1, xmm4
	mulss xmm2, [ebp-0x80]
	addss xmm2, xmm1
	movss [ebp-0x6c], xmm2
	lea eax, [ebx+0x14]
	movss xmm0, dword [ebx+0x14]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	movss xmm4, dword [ebp-0xf4]
	mulss xmm4, xmm0
	movss [ebp-0x5c], xmm4
	movss xmm4, dword [ebp-0x90]
	mulss xmm4, xmm1
	movss [ebp-0x90], xmm4
	movss xmm4, dword [ebp-0x5c]
	addss xmm4, [ebp-0x90]
	movss [ebp-0x5c], xmm4
	movss xmm4, dword [ebp-0x8c]
	mulss xmm4, xmm2
	movss [ebp-0x8c], xmm4
	movss xmm4, dword [ebp-0x5c]
	addss xmm4, [ebp-0x8c]
	movss [ebp-0x5c], xmm4
	movss xmm4, dword [ebp-0xf0]
	mulss xmm4, xmm0
	movss [ebp-0x60], xmm4
	movss xmm4, dword [ebp-0x88]
	mulss xmm4, xmm1
	movss [ebp-0x88], xmm4
	movss xmm4, dword [ebp-0x60]
	addss xmm4, [ebp-0x88]
	movss [ebp-0x60], xmm4
	movss xmm4, dword [ebp-0x84]
	mulss xmm4, xmm2
	movss [ebp-0x84], xmm4
	movss xmm4, dword [ebp-0x60]
	addss xmm4, [ebp-0x84]
	movss [ebp-0x60], xmm4
	movss xmm4, dword [ebp-0xec]
	mulss xmm4, xmm0
	mulss xmm7, xmm1
	addss xmm4, xmm7
	mulss xmm2, [ebp-0x80]
	movss [ebp-0x80], xmm2
	addss xmm4, xmm2
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x108], xmm3
	movss [ebp-0x118], xmm4
	movss [ebp-0x128], xmm5
	movss [ebp-0x138], xmm6
	call MatrixTransformVector43
	mov dword [esi+0xc], 0xbf800000
	mov edx, [ebp-0xd4]
	mov eax, [edx+0x28]
	mov [esi+0x10], eax
	movss xmm4, dword [ebp-0x118]
	movss xmm2, dword [ebp-0x68]
	mulss xmm2, xmm4
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [ebp-0x60]
	subss xmm2, xmm0
	movss xmm3, dword [ebp-0x108]
	mulss xmm2, xmm3
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [ebp-0x5c]
	movss xmm1, dword [ebp-0x64]
	mulss xmm1, xmm4
	subss xmm0, xmm1
	movss xmm6, dword [ebp-0x138]
	mulss xmm0, xmm6
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x64]
	mulss xmm0, [ebp-0x60]
	movss xmm1, dword [ebp-0x68]
	mulss xmm1, [ebp-0x5c]
	subss xmm0, xmm1
	movss xmm5, dword [ebp-0x128]
	mulss xmm0, xmm5
	addss xmm2, xmm0
	mulss xmm2, [ebp-0x98]
	addss xmm2, [_float_0_50000000]
	mulss xmm3, [ebp-0x64]
	mulss xmm6, [ebp-0x68]
	addss xmm3, xmm6
	mulss xmm5, [ebp-0x6c]
	addss xmm3, xmm5
	mulss xmm3, [ebp-0x98]
	addss xmm3, [_float_0_50000000]
	movss [ebp-0x1c], xmm3
	mov eax, [ebp-0x1c]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jg FX_GenerateMarkVertsForMark_FinishAnimated_60
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForMark_FinishAnimated_70
	xor eax, eax
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_80
FX_GenerateMarkVertsForMark_FinishAnimated_40:
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForMark_FinishAnimated_90
	xor eax, eax
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_100
FX_GenerateMarkVertsForMark_FinishAnimated_50:
	mov eax, [ebp-0x40]
	test eax, eax
	jz FX_GenerateMarkVertsForMark_FinishAnimated_110
	mov edx, [ebp-0x40]
	mov [ebp-0x9c], edx
	mov eax, [ebp-0xe0]
	add eax, [ebp-0x94]
	mov edx, [eax+0x40]
	mov [ebp-0x94], edx
	cmp dword [ebp-0x9c], 0x2
	jle FX_GenerateMarkVertsForMark_FinishAnimated_120
FX_GenerateMarkVertsForMark_FinishAnimated_20:
	mov edx, [ebp-0x9c]
	sub edx, 0x2
	mov [ebp-0x40], edx
	mov dword [ebp-0x9c], 0x2
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_130
FX_GenerateMarkVertsForMark_FinishAnimated_110:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForMark_FinishAnimated_10:
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov esi, eax
	movss xmm0, dword [_float_0_50000000]
	movaps xmm1, xmm0
	mov eax, [ebp-0xd4]
	divss xmm1, dword [eax+0x18]
	movss [ebp-0xbc], xmm1
	mov eax, [eax+0x40]
	mov [ebp-0xb8], eax
	mov edx, [ebp-0xd4]
	movzx edx, word [edx+0x38]
	mov [ebp-0xc0], edx
	mov eax, [ebp+0xc]
	add eax, 0xc
	mov [ebp-0x50], eax
	mov edx, [ebp+0xc]
	add edx, 0x18
	mov [ebp-0x4c], edx
	mov eax, [ebp-0xd0]
	add eax, 0x15010
	mov [ebp-0xe0], eax
	mov edx, [ebp-0xd4]
	add edx, 0xc
	mov [ebp-0xd8], edx
	mov eax, [ebp-0xd4]
	add eax, 0x1c
	mov [ebp-0xdc], eax
	mov eax, [ebp-0xe0]
	add eax, [ebp-0xb8]
	mov edx, [eax+0x40]
	mov [ebp-0xb8], edx
	cmp dword [ebp-0xc0], 0x2
	jg FX_GenerateMarkVertsForMark_FinishAnimated_140
FX_GenerateMarkVertsForMark_FinishAnimated_160:
	mov dword [ebp-0x3c], 0x0
FX_GenerateMarkVertsForMark_FinishAnimated_170:
	mov edi, eax
	mov dword [ebp-0x48], 0x0
	lea ebx, [eax+0x14]
FX_GenerateMarkVertsForMark_FinishAnimated_150:
	movss xmm7, dword [ebx-0x14]
	mov eax, [ebp-0xd4]
	subss xmm7, [eax+0xc]
	movss xmm1, dword [ebx-0x10]
	mov edx, [ebp-0xd8]
	subss xmm1, [edx+0x4]
	movss xmm2, dword [ebx-0xc]
	subss xmm2, [edx+0x8]
	mov eax, [ebp+0xc]
	movss xmm6, dword [eax]
	mov edx, [ebp-0x50]
	movss xmm0, dword [edx]
	movss [ebp-0xb4], xmm0
	mov eax, [ebp-0x4c]
	movss xmm0, dword [eax]
	movss [ebp-0xb0], xmm0
	movaps xmm3, xmm7
	mulss xmm3, xmm6
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm1
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm2
	addss xmm3, xmm0
	mov eax, [ebp+0xc]
	movss xmm5, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0xac], xmm0
	mov eax, [ebp-0x4c]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0xa8], xmm0
	movaps xmm4, xmm7
	mulss xmm4, xmm5
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm1
	addss xmm0, xmm4
	movss [ebp-0x78], xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	mov eax, [ebp+0xc]
	movss xmm4, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0xa4], xmm0
	mov eax, [ebp-0x4c]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0xa0], xmm0
	mulss xmm7, xmm4
	mulss xmm1, [ebp-0xa4]
	addss xmm1, xmm7
	mulss xmm2, xmm0
	addss xmm2, xmm1
	movss [ebp-0x7c], xmm2
	mov eax, [ebp-0xd4]
	movss xmm7, dword [eax+0x1c]
	mov edx, [ebp-0xdc]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [edx+0x8]
	movaps xmm0, xmm6
	mulss xmm0, xmm7
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x70]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x70]
	movss [ebp-0x70], xmm0
	movaps xmm0, xmm5
	mulss xmm0, xmm7
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x74]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x74]
	movss [ebp-0x74], xmm0
	mulss xmm7, xmm4
	mulss xmm1, [ebp-0xa4]
	addss xmm7, xmm1
	mulss xmm2, [ebp-0xa0]
	addss xmm7, xmm2
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	mulss xmm6, [ebx]
	movss xmm0, dword [ebp-0xb4]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss xmm0, dword [ebp-0xb0]
	mulss xmm0, xmm2
	addss xmm6, xmm0
	mulss xmm5, [ebx]
	movss xmm0, dword [ebp-0xac]
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	mulss xmm4, [ebx]
	mulss xmm1, [ebp-0xa4]
	addss xmm4, xmm1
	mulss xmm2, [ebp-0xa0]
	movss [ebp-0xa0], xmm2
	addss xmm4, xmm2
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	movss [ebp-0x108], xmm3
	movss [ebp-0x118], xmm4
	movss [ebp-0x128], xmm5
	movss [ebp-0x138], xmm6
	movss [ebp-0x148], xmm7
	call MatrixTransformVector43
	mov dword [esi+0xc], 0xbf800000
	mov edx, [ebp-0xd4]
	mov eax, [edx+0x28]
	mov [esi+0x10], eax
	movss xmm3, dword [ebp-0x108]
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm3
	movss xmm1, dword [ebp-0x78]
	mulss xmm1, [ebp-0x74]
	addss xmm0, xmm1
	movss xmm7, dword [ebp-0x148]
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, xmm7
	addss xmm0, xmm1
	mulss xmm0, [ebp-0xbc]
	addss xmm0, [_float_0_50000000]
	movss [esi+0x14], xmm0
	movss xmm4, dword [ebp-0x118]
	movss xmm0, dword [ebp-0x74]
	mulss xmm0, xmm4
	movss xmm5, dword [ebp-0x128]
	movaps xmm1, xmm7
	mulss xmm1, xmm5
	subss xmm0, xmm1
	mulss xmm3, xmm0
	movss xmm6, dword [ebp-0x138]
	movaps xmm0, xmm7
	mulss xmm0, xmm6
	movss xmm1, dword [ebp-0x70]
	mulss xmm1, xmm4
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x78]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm5
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, xmm6
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x7c]
	addss xmm3, xmm0
	mulss xmm3, [ebp-0xbc]
	addss xmm3, [_float_0_50000000]
	movss [esi+0x18], xmm3
	mov eax, [ebx-0x8]
	mov [esi+0x1c], eax
	mov eax, [ebx-0x4]
	mov [esi+0x20], eax
	mulss xmm6, [_float_127_00000000]
	addss xmm6, [_float_127_50000000]
	cvttss2si eax, xmm6
	mov [ebp-0xc4], al
	mulss xmm5, [_float_127_00000000]
	addss xmm5, [_float_127_50000000]
	cvttss2si eax, xmm5
	mov edx, [ebp-0xc4]
	mov dh, al
	mulss xmm4, [_float_127_00000000]
	addss xmm4, [_float_127_50000000]
	cvttss2si eax, xmm4
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0xc4], edx
	mov [esi+0x24], edx
	movss xmm0, dword [ebp-0x74]
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm7
	mov dword [ebp-0x20], 0x0
	movss xmm1, dword [_float_127_00000000]
	mulss xmm1, [ebp-0x70]
	movss xmm4, dword [_float_127_50000000]
	addss xmm4, xmm1
	cvttss2si eax, xmm4
	mov [ebp-0xc8], al
	movss xmm1, dword [_float_127_00000000]
	mulss xmm1, xmm0
	movss xmm4, dword [_float_127_50000000]
	addss xmm4, xmm1
	cvttss2si eax, xmm4
	mov edx, [ebp-0xc8]
	mov dh, al
	mulss xmm7, [_float_127_00000000]
	addss xmm7, [_float_127_50000000]
	cvttss2si eax, xmm7
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0xc8], edx
	mov [ebp-0x2c], edx
	mov [esi+0x28], edx
	add edi, 0x20
	add ebx, 0x20
	add esi, 0x2c
	add dword [ebp-0x48], 0x1
	mov eax, [ebp-0x48]
	cmp [ebp-0xc0], eax
	jnz FX_GenerateMarkVertsForMark_FinishAnimated_150
	mov eax, [ebp-0x3c]
	test eax, eax
	jz FX_GenerateMarkVertsForMark_FinishAnimated_110
	mov edx, [ebp-0x3c]
	mov [ebp-0xc0], edx
	mov eax, [ebp-0xe0]
	add eax, [ebp-0xb8]
	mov edx, [eax+0x40]
	mov [ebp-0xb8], edx
	cmp dword [ebp-0xc0], 0x2
	jle FX_GenerateMarkVertsForMark_FinishAnimated_160
FX_GenerateMarkVertsForMark_FinishAnimated_140:
	mov edx, [ebp-0xc0]
	sub edx, 0x2
	mov [ebp-0x3c], edx
	mov dword [ebp-0xc0], 0x2
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_170
FX_GenerateMarkVertsForMark_FinishAnimated_90:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_100
FX_GenerateMarkVertsForMark_FinishAnimated_70:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForMark_FinishAnimated_80


;FX_BeginMarks(int)
FX_BeginMarks:
	push ebp
	mov ebp, esp
	mov ecx, fx_marksSystemPool
	mov edx, [ecx]
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovg eax, edx
	mov [ecx], eax
	pop ebp
	ret


;FX_InitMarksSystem(FxMarksSystem*)
FX_InitMarksSystem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov eax, edi
	mov edx, 0x400
FX_InitMarksSystem_10:
	mov word [eax+0x8], 0xffff
	add eax, 0x2
	sub edx, 0x1
	jnz FX_InitMarksSystem_10
	mov word [edi+0x4], 0x0
	mov ecx, edi
	xor esi, esi
	xor ebx, ebx
FX_InitMarksSystem_20:
	mov word [ecx+0x810], 0xffff
	add esi, 0x1
	add ebx, 0x44
	mov eax, ebx
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	neg edx
	mov [ecx+0x812], dx
	mov dword [ecx+0x814], 0xffffffff
	add ecx, 0x44
	cmp esi, 0x1ff
	jnz FX_InitMarksSystem_20
	mov word [edi+0x8fcc], 0xffff
	mov word [edi+0x8fce], 0xffff
	mov dword [edi+0x8fd0], 0xffffffff
	lea eax, [edi+0x9010]
	mov [edi+0x808], eax
	mov edx, edi
	xor ecx, ecx
FX_InitMarksSystem_30:
	add ecx, 0x1
	add eax, 0x18
	mov [edx+0x9010], eax
	add edx, 0x18
	cmp ecx, 0x7ff
	jnz FX_InitMarksSystem_30
	mov dword [edi+0x14ff8], 0x0
	lea eax, [edi+0x15010]
	mov [edi+0x80c], eax
	mov edx, edi
	xor cx, cx
FX_InitMarksSystem_40:
	add ecx, 0x1
	add eax, 0x44
	mov [edx+0x15010], eax
	add edx, 0x44
	cmp ecx, 0xbff
	jnz FX_InitMarksSystem_40
	mov dword [edi+0x47fcc], 0x0
	mov word [edi+0x6], 0xffff
	mov dword [edi+0x48014], 0x0
	mov dword [edi+0x48018], 0x0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_CreateImpactMark(int, FxElemDef const*, FxSpatialFrame const*, int, unsigned int)
FX_CreateImpactMark:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov ebx, [ebp+0x14]
	lea esi, [ebp-0x4c]
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FX_SetupVisualState
	mov eax, [ebp-0x3c]
	mov edi, fx_randomTable
	movss xmm0, dword [edi+ebx*4+0x68]
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x24]
	addss xmm1, [eax+0xc]
	mulss xmm1, [ebp-0x48]
	mulss xmm0, [eax+0x54]
	addss xmm0, [eax+0x3c]
	mulss xmm0, [ebp-0x4c]
	addss xmm1, xmm0
	movss [ebp-0x24], xmm1
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3f800000
	mov [esp], esi
	call FX_EvaluateVisualState
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0xb1]
	movzx edx, word [edi+ebx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [ecx+0xbc]
	lea eax, [edx+eax*8]
	movss xmm0, dword [ebp-0x24]
	movss [ebp-0x84], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x80], xmm0
	mov esi, [ebp+0x10]
	add esi, 0x10
	mov edx, [eax]
	mov [ebp-0x7c], edx
	mov ebx, [eax+0x4]
	mov eax, fx_marks
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_CreateImpactMark_10
	mov eax, fx_marksSystemPool
	cmp byte [eax+0x48010], 0x0
	jnz FX_CreateImpactMark_10
	movss xmm0, dword [ebp-0x84]
	ucomiss xmm0, [_float_0_10000000]
	jp FX_CreateImpactMark_20
	jb FX_CreateImpactMark_10
FX_CreateImpactMark_20:
	lea edi, [ebp-0x70]
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call UnitQuatToAxis
	cvtss2sd xmm0, [ebp-0x80]
	mulsd xmm0, [_double_57_29577951]
	cvtsd2ss xmm0, xmm0
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x64]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	lea eax, [ebp-0x58]
	mov [esp], eax
	call RotatePointAroundVector
	movss xmm3, dword [ebp-0x6c]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x50]
	movss xmm2, dword [ebp-0x68]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x54]
	subss xmm0, xmm1
	movss [ebp-0x64], xmm0
	mulss xmm2, [ebp-0x58]
	movss xmm0, dword [ebp-0x70]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x50]
	subss xmm2, xmm1
	movss [ebp-0x60], xmm2
	mulss xmm0, [ebp-0x54]
	mulss xmm3, [ebp-0x58]
	subss xmm0, xmm3
	movss [ebp-0x5c], xmm0
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov [esp], esi
	movss xmm1, dword [ebp-0x84]
	movss xmm0, dword [ebp-0x80]
	mov ecx, ebx
	xor edx, edx
	mov eax, [ebp+0x8]
	call FX_ImpactMark_Generate
	mov eax, fx_marks_smodels
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_CreateImpactMark_30
	mov eax, fx_marks_ents
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz FX_CreateImpactMark_10
FX_CreateImpactMark_30:
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], esi
	movss xmm1, dword [ebp-0x84]
	movss xmm0, dword [ebp-0x80]
	mov ecx, [ebp-0x7c]
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call FX_ImpactMark_Generate
FX_CreateImpactMark_10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_MarkEntDetachAll(int, int)
FX_MarkEntDetachAll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, fx_marksSystemPool
	mov edx, [ebp+0xc]
	movzx eax, word [ebx+edx*2+0x8]
	cmp ax, 0xffff
	jz FX_MarkEntDetachAll_10
	mov [ebp-0x2c], ebx
	lea edx, [ebx+0x810]
	mov [ebp-0x24], edx
	mov [ebp-0x18], edx
	mov [ebp-0x10], edx
FX_MarkEntDetachAll_110:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	lea esi, [eax+ebx]
	movzx eax, byte [esi+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_MarkEntDetachAll_20
	jg FX_MarkEntDetachAll_30
	test eax, eax
	jnz FX_MarkEntDetachAll_40
	mov eax, esi
	sub eax, [ebp-0x24]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	neg edx
	mov [ebp-0x26], dx
	mov ecx, [esi+0x3c]
	mov eax, [ebp-0x2c]
	lea edi, [eax+0x9010]
	mov edx, [ebx+0x808]
	jmp FX_MarkEntDetachAll_50
FX_MarkEntDetachAll_60:
	mov edx, eax
FX_MarkEntDetachAll_50:
	lea eax, [ecx+edi]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_60
	mov ecx, [esi+0x40]
	lea edi, [ebx+0x15010]
	mov edx, [ebx+0x80c]
	jmp FX_MarkEntDetachAll_70
FX_MarkEntDetachAll_80:
	mov edx, eax
FX_MarkEntDetachAll_70:
	lea eax, [edi+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_80
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntDetachAll_90
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_MarkEntDetachAll_90:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_MarkEntDetachAll_100
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [ebx+eax+0x2], cx
FX_MarkEntDetachAll_250:
	mov dword [esi+0x4], 0xffffffff
	movzx ecx, word [ebx+0x4]
	mov [esi+0x2], cx
	movzx edx, word [ebp-0x26]
	mov [ebx+0x4], dx
FX_MarkEntDetachAll_40:
	add dword [ebx+0x48018], 0x1
	mov edx, [ebp+0xc]
	movzx eax, word [ebx+edx*2+0x8]
	cmp ax, 0xffff
	jnz FX_MarkEntDetachAll_110
FX_MarkEntDetachAll_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_MarkEntDetachAll_30:
	cmp eax, 0x80
	jz FX_MarkEntDetachAll_120
	cmp eax, 0xc0
	jnz FX_MarkEntDetachAll_40
FX_MarkEntDetachAll_120:
	movzx eax, word [esi+0x34]
	lea eax, [ebx+eax*2+0x8]
	mov [ebp-0x20], eax
	mov edx, esi
	sub edx, [ebp-0x18]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x1a], ax
	mov ecx, [esi+0x3c]
	lea edi, [ebx+0x9010]
	mov edx, [ebx+0x808]
	jmp FX_MarkEntDetachAll_130
FX_MarkEntDetachAll_140:
	mov edx, eax
FX_MarkEntDetachAll_130:
	lea eax, [ecx+edi]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_140
	mov ecx, [esi+0x40]
	lea edi, [ebx+0x15010]
	mov edx, [ebx+0x80c]
	jmp FX_MarkEntDetachAll_150
FX_MarkEntDetachAll_160:
	mov edx, eax
FX_MarkEntDetachAll_150:
	lea eax, [edi+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_160
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntDetachAll_170
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_MarkEntDetachAll_170:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_MarkEntDetachAll_180
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [ebx+eax+0x2], cx
FX_MarkEntDetachAll_260:
	mov dword [esi+0x4], 0xffffffff
	movzx ecx, word [ebx+0x4]
	mov [esi+0x2], cx
	movzx edx, word [ebp-0x1a]
	mov [ebx+0x4], dx
	jmp FX_MarkEntDetachAll_40
FX_MarkEntDetachAll_20:
	mov eax, esi
	sub eax, [ebp-0x10]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	neg edx
	mov [ebp-0x12], dx
	mov ecx, [esi+0x3c]
	mov eax, [ebp-0x2c]
	lea edi, [eax+0x9010]
	mov edx, [ebx+0x808]
	jmp FX_MarkEntDetachAll_190
FX_MarkEntDetachAll_200:
	mov edx, eax
FX_MarkEntDetachAll_190:
	lea eax, [ecx+edi]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [ebx+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_200
	mov ecx, [esi+0x40]
	lea edi, [ebx+0x15010]
	mov edx, [ebx+0x80c]
	jmp FX_MarkEntDetachAll_210
FX_MarkEntDetachAll_220:
	mov edx, eax
FX_MarkEntDetachAll_210:
	lea eax, [ecx+edi]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [ebx+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntDetachAll_220
	movzx ecx, word [esi+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntDetachAll_230
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [esi]
	mov [ebx+eax], dx
FX_MarkEntDetachAll_230:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_MarkEntDetachAll_240
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [ebx+eax+0x2], cx
FX_MarkEntDetachAll_240:
	mov dword [esi+0x4], 0xffffffff
	movzx eax, word [ebx+0x4]
	mov [esi+0x2], ax
	movzx edx, word [ebp-0x12]
	mov [ebx+0x4], dx
	jmp FX_MarkEntDetachAll_40
FX_MarkEntDetachAll_100:
	mov [ebx+0x6], cx
	jmp FX_MarkEntDetachAll_250
FX_MarkEntDetachAll_180:
	mov edi, [ebp-0x20]
	test edi, edi
	jz FX_MarkEntDetachAll_260
	mov eax, [ebp-0x20]
	mov [eax], cx
	jmp FX_MarkEntDetachAll_260


;FX_MarkEntUpdateEnd(FxMarkDObjUpdateContext*, int, int, DObj_s*, unsigned char, unsigned short)
FX_MarkEntUpdateEnd:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	movzx eax, byte [ebp+0x18]
	movzx edx, word [ebp+0x1c]
	mov ecx, [ebp+0x8]
	cmp byte [ecx+0x104], 0x0
	jz FX_MarkEntUpdateEnd_10
	test al, al
	jnz FX_MarkEntUpdateEnd_20
FX_MarkEntUpdateEnd_210:
	mov esi, [ebp+0x10]
	mov eax, fx_marksSystemPool
	movzx edi, word [eax+esi*2+0x8]
	cmp di, 0xffff
	jz FX_MarkEntUpdateEnd_30
	lea edx, [eax+0x810]
	mov [ebp-0x5c], edx
	jmp FX_MarkEntUpdateEnd_40
FX_MarkEntUpdateEnd_50:
	cmp di, 0xffff
	jz FX_MarkEntUpdateEnd_30
FX_MarkEntUpdateEnd_40:
	movzx eax, di
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov ecx, fx_marksSystemPool
	lea ebx, [eax+ecx]
	movzx edi, word [ebx+0x2]
	movzx eax, byte [ebx+0x33]
	and eax, 0xc0
	add eax, 0xffffff80
	jnz FX_MarkEntUpdateEnd_50
	mov esi, ecx
	movzx eax, word [ebx+0x34]
	lea eax, [ecx+eax*2+0x8]
	mov [ebp-0x64], eax
	mov edx, ebx
	sub edx, [ebp-0x5c]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x5e], ax
	mov ecx, [ebx+0x3c]
	add esi, 0x9010
	mov [ebp-0x7c], esi
	mov edx, esi
	mov esi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_60
FX_MarkEntUpdateEnd_70:
	mov edx, [ebp-0x7c]
FX_MarkEntUpdateEnd_60:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov edx, [esi+0x808]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_70
	mov ecx, [ebx+0x40]
	lea eax, [esi+0x15010]
	mov [ebp-0x7c], eax
	mov edx, eax
	mov esi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_80
FX_MarkEntUpdateEnd_90:
	mov edx, [ebp-0x7c]
FX_MarkEntUpdateEnd_80:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov edx, [esi+0x80c]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_90
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntUpdateEnd_100
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
FX_MarkEntUpdateEnd_100:
	movzx eax, word [ebx]
	cmp ax, 0xffff
	jz FX_MarkEntUpdateEnd_110
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, fx_marksSystemPool
	mov [edx+eax+0x2], cx
FX_MarkEntUpdateEnd_400:
	mov dword [ebx+0x4], 0xffffffff
	movzx eax, word [edx+0x4]
	mov [ebx+0x2], ax
	movzx ecx, word [ebp-0x5e]
	mov [edx+0x4], cx
	add dword [edx+0x48018], 0x1
	cmp di, 0xffff
	jnz FX_MarkEntUpdateEnd_40
FX_MarkEntUpdateEnd_30:
	mov esi, [ebp+0x8]
FX_MarkEntUpdateEnd_220:
	mov esi, [esi+0x100]
	mov [ebp-0x68], esi
	test esi, esi
	jnz FX_MarkEntUpdateEnd_120
FX_MarkEntUpdateEnd_130:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_MarkEntUpdateEnd_10:
	mov esi, ecx
	mov esi, [esi+0x100]
	mov [ebp-0x68], esi
	test esi, esi
	jz FX_MarkEntUpdateEnd_130
FX_MarkEntUpdateEnd_120:
	mov eax, [ebp+0x14]
	test eax, eax
	jz FX_MarkEntUpdateEnd_140
	mov edi, [ebp+0x14]
	mov [esp], edi
	call DObjGetNumModels
	mov [ebp-0x58], eax
	test eax, eax
	jnz FX_MarkEntUpdateEnd_150
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x4c], 0x0
FX_MarkEntUpdateEnd_460:
	mov edx, [ebp-0x1c]
	mov [ebp-0x50], edx
	mov ecx, fx_marksSystemPool
	add ecx, 0x810
	mov [ebp-0x70], ecx
	mov esi, [ebp-0x68]
	mov [ebp-0x6c], esi
	mov edi, edx
FX_MarkEntUpdateEnd_200:
	sub edi, [ebp-0x4c]
	mov [ebp-0x48], edi
	mov eax, [ebp+0x10]
	mov edx, fx_marksSystemPool
	movzx esi, word [edx+eax*2+0x8]
	cmp si, 0xffff
	jz FX_MarkEntUpdateEnd_160
	mov ecx, [ebp-0x70]
	mov [ebp-0x3c], ecx
	jmp FX_MarkEntUpdateEnd_170
FX_MarkEntUpdateEnd_180:
	cmp si, 0xffff
	jz FX_MarkEntUpdateEnd_160
FX_MarkEntUpdateEnd_170:
	movzx eax, si
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov esi, fx_marksSystemPool
	lea ebx, [eax+esi]
	movzx esi, word [ebx+0x2]
	movzx ecx, byte [ebx+0x33]
	movzx edx, cl
	mov eax, edx
	and eax, 0xc0
	cmp eax, 0xc0
	jnz FX_MarkEntUpdateEnd_180
	and edx, 0x3f
	cmp [ebp-0x48], edx
	jz FX_MarkEntUpdateEnd_190
	jge FX_MarkEntUpdateEnd_180
	lea eax, [ecx-0x1]
	mov [ebx+0x33], al
	cmp si, 0xffff
	jnz FX_MarkEntUpdateEnd_170
FX_MarkEntUpdateEnd_160:
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x50], 0x1
	mov esi, [ebp-0x50]
	cmp [ebp-0x6c], esi
	jz FX_MarkEntUpdateEnd_130
	mov edi, esi
	jmp FX_MarkEntUpdateEnd_200
FX_MarkEntUpdateEnd_20:
	cmp [ecx+0x106], dx
	jnz FX_MarkEntUpdateEnd_210
	mov esi, [ebp+0x8]
	jmp FX_MarkEntUpdateEnd_220
FX_MarkEntUpdateEnd_140:
	mov eax, [ebp+0x10]
	mov edx, fx_marksSystemPool
	movzx edi, word [edx+eax*2+0x8]
	cmp di, 0xffff
	jz FX_MarkEntUpdateEnd_130
	lea ecx, [edx+0x810]
	mov [ebp-0x24], ecx
	jmp FX_MarkEntUpdateEnd_230
FX_MarkEntUpdateEnd_240:
	cmp di, 0xffff
	jz FX_MarkEntUpdateEnd_130
FX_MarkEntUpdateEnd_230:
	movzx eax, di
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov esi, fx_marksSystemPool
	lea ebx, [eax+esi]
	movzx edi, word [ebx+0x2]
	movzx eax, byte [ebx+0x33]
	and eax, 0xc0
	cmp eax, 0xc0
	jnz FX_MarkEntUpdateEnd_240
	movzx eax, word [ebx+0x34]
	lea eax, [esi+eax*2+0x8]
	mov [ebp-0x2c], eax
	mov edx, ebx
	sub edx, [ebp-0x24]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x26], ax
	mov ecx, [ebx+0x3c]
	lea eax, [esi+0x9010]
	mov [ebp-0x7c], eax
	mov edx, eax
	mov esi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_250
FX_MarkEntUpdateEnd_260:
	mov edx, [ebp-0x7c]
FX_MarkEntUpdateEnd_250:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov edx, [esi+0x808]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_260
	mov ecx, [ebx+0x40]
	lea eax, [esi+0x15010]
	mov [ebp-0x7c], eax
	mov edx, eax
	mov esi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_270
FX_MarkEntUpdateEnd_280:
	mov edx, [ebp-0x7c]
FX_MarkEntUpdateEnd_270:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov edx, [esi+0x80c]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_280
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntUpdateEnd_290
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
FX_MarkEntUpdateEnd_290:
	movzx eax, word [ebx]
	cmp ax, 0xffff
	jz FX_MarkEntUpdateEnd_300
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, fx_marksSystemPool
	mov [edx+eax+0x2], cx
FX_MarkEntUpdateEnd_580:
	mov dword [ebx+0x4], 0xffffffff
	movzx eax, word [edx+0x4]
	mov [ebx+0x2], ax
	movzx ecx, word [ebp-0x26]
	mov [edx+0x4], cx
	add dword [edx+0x48018], 0x1
	jmp FX_MarkEntUpdateEnd_240
FX_MarkEntUpdateEnd_190:
	movzx eax, word [ebx+0x34]
	mov edi, fx_marksSystemPool
	lea eax, [edi+eax*2+0x8]
	mov [ebp-0x44], eax
	mov edx, ebx
	sub edx, [ebp-0x3c]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x3e], ax
	mov ecx, [ebx+0x3c]
	lea eax, [edi+0x9010]
	mov [ebp-0x80], eax
	mov edx, eax
	jmp FX_MarkEntUpdateEnd_310
FX_MarkEntUpdateEnd_320:
	mov edx, [ebp-0x80]
FX_MarkEntUpdateEnd_310:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_320
	mov ecx, [ebx+0x40]
	lea eax, [edi+0x15010]
	mov [ebp-0x80], eax
	mov edx, eax
	mov edi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_330
FX_MarkEntUpdateEnd_340:
	mov edx, [ebp-0x80]
FX_MarkEntUpdateEnd_330:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_340
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntUpdateEnd_350
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
FX_MarkEntUpdateEnd_350:
	movzx eax, word [ebx]
	cmp ax, 0xffff
	jz FX_MarkEntUpdateEnd_360
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, fx_marksSystemPool
	mov [edx+eax+0x2], cx
FX_MarkEntUpdateEnd_380:
	mov dword [ebx+0x4], 0xffffffff
	movzx eax, word [edx+0x4]
	mov [ebx+0x2], ax
	movzx ecx, word [ebp-0x3e]
	mov [edx+0x4], cx
	add dword [edx+0x48018], 0x1
	jmp FX_MarkEntUpdateEnd_180
FX_MarkEntUpdateEnd_360:
	mov eax, [ebp-0x44]
	test eax, eax
	jz FX_MarkEntUpdateEnd_370
	mov edi, [ebp-0x44]
	mov [edi], cx
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_380
FX_MarkEntUpdateEnd_110:
	mov eax, [ebp-0x64]
	test eax, eax
	jz FX_MarkEntUpdateEnd_390
	mov esi, [ebp-0x64]
	mov [esi], cx
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_400
FX_MarkEntUpdateEnd_150:
	mov edi, [ebp+0x8]
	mov [ebp-0x20], edi
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call DObjGetModel
	mov ecx, [ebp-0x20]
	cmp eax, [ecx]
	jz FX_MarkEntUpdateEnd_410
FX_MarkEntUpdateEnd_470:
	mov ecx, [ebp-0x1c]
	sub ecx, [ebp-0x4c]
	mov [ebp-0x38], ecx
	mov edi, [ebp+0x10]
	mov eax, fx_marksSystemPool
	movzx esi, word [eax+edi*2+0x8]
	cmp si, 0xffff
	jnz FX_MarkEntUpdateEnd_420
	jmp FX_MarkEntUpdateEnd_430
FX_MarkEntUpdateEnd_440:
	cmp si, 0xffff
	jz FX_MarkEntUpdateEnd_430
FX_MarkEntUpdateEnd_420:
	movzx eax, si
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, fx_marksSystemPool
	lea ebx, [eax+edx]
	movzx esi, word [ebx+0x2]
	movzx ecx, byte [ebx+0x33]
	movzx edx, cl
	mov eax, edx
	and eax, 0xc0
	cmp eax, 0xc0
	jnz FX_MarkEntUpdateEnd_440
	and edx, 0x3f
	cmp [ebp-0x38], edx
	jz FX_MarkEntUpdateEnd_450
	jge FX_MarkEntUpdateEnd_440
	lea eax, [ecx-0x1]
	mov [ebx+0x33], al
	cmp si, 0xffff
	jnz FX_MarkEntUpdateEnd_420
FX_MarkEntUpdateEnd_430:
	add dword [ebp-0x4c], 0x1
FX_MarkEntUpdateEnd_480:
	add dword [ebp-0x1c], 0x1
	mov esi, [ebp-0x1c]
	cmp [ebp-0x68], esi
	jz FX_MarkEntUpdateEnd_130
	add dword [ebp-0x20], 0x4
	mov eax, [ebp-0x58]
	cmp [ebp-0x54], eax
	jz FX_MarkEntUpdateEnd_460
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call DObjGetModel
	mov ecx, [ebp-0x20]
	cmp eax, [ecx]
	jnz FX_MarkEntUpdateEnd_470
FX_MarkEntUpdateEnd_410:
	mov esi, [ebp-0x54]
	mov [esp+0x4], esi
	mov edi, [ebp+0x14]
	mov [esp], edi
	call DObjGetModelParentBoneName
	mov edx, [ebp-0x20]
	cmp eax, [edx+0x80]
	jnz FX_MarkEntUpdateEnd_470
	add dword [ebp-0x54], 0x1
	jmp FX_MarkEntUpdateEnd_480
FX_MarkEntUpdateEnd_450:
	movzx eax, word [ebx+0x34]
	mov ecx, fx_marksSystemPool
	lea eax, [ecx+eax*2+0x8]
	mov [ebp-0x34], eax
	lea eax, [ecx+0x810]
	mov edx, ebx
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x2e], ax
	mov ecx, [ebx+0x3c]
	mov edi, fx_marksSystemPool
	add edi, 0x9010
	mov [ebp-0x80], edi
	mov edx, edi
	mov edi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_490
FX_MarkEntUpdateEnd_500:
	mov edx, [ebp-0x80]
FX_MarkEntUpdateEnd_490:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_500
	mov ecx, [ebx+0x40]
	lea eax, [edi+0x15010]
	mov [ebp-0x80], eax
	mov edx, eax
	mov edi, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_510
FX_MarkEntUpdateEnd_520:
	mov edx, [ebp-0x80]
FX_MarkEntUpdateEnd_510:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateEnd_520
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntUpdateEnd_530
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
FX_MarkEntUpdateEnd_530:
	movzx eax, word [ebx]
	cmp ax, 0xffff
	jz FX_MarkEntUpdateEnd_540
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, fx_marksSystemPool
	mov [edx+eax+0x2], cx
FX_MarkEntUpdateEnd_560:
	mov dword [ebx+0x4], 0xffffffff
	movzx eax, word [edx+0x4]
	mov [ebx+0x2], ax
	movzx ecx, word [ebp-0x2e]
	mov [edx+0x4], cx
	add dword [edx+0x48018], 0x1
	jmp FX_MarkEntUpdateEnd_440
FX_MarkEntUpdateEnd_540:
	mov eax, [ebp-0x34]
	test eax, eax
	jz FX_MarkEntUpdateEnd_550
	mov edi, [ebp-0x34]
	mov [edi], cx
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_560
FX_MarkEntUpdateEnd_300:
	mov eax, [ebp-0x2c]
	test eax, eax
	jz FX_MarkEntUpdateEnd_570
	mov esi, [ebp-0x2c]
	mov [esi], cx
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_580
FX_MarkEntUpdateEnd_370:
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_380
FX_MarkEntUpdateEnd_390:
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_400
FX_MarkEntUpdateEnd_550:
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_560
FX_MarkEntUpdateEnd_570:
	mov edx, fx_marksSystemPool
	jmp FX_MarkEntUpdateEnd_580


;FX_MarkEntUpdateBegin(FxMarkDObjUpdateContext*, DObj_s*, unsigned char, unsigned short)
FX_MarkEntUpdateBegin:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x19], al
	movzx edx, word [ebp+0x14]
	mov [ebp-0x1c], dx
	mov eax, [ebp+0xc]
	test eax, eax
	jz FX_MarkEntUpdateBegin_10
	mov edx, [ebp+0xc]
	mov [esp], edx
	call DObjGetNumModels
	mov edi, eax
	mov eax, [ebp+0x8]
	mov [eax+0x100], edi
	test edi, edi
	jz FX_MarkEntUpdateBegin_20
	mov ebx, eax
	xor esi, esi
FX_MarkEntUpdateBegin_30:
	mov [esp+0x4], esi
	mov edx, [ebp+0xc]
	mov [esp], edx
	call DObjGetModel
	mov [ebx], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call DObjGetModelParentBoneName
	mov [ebx+0x80], eax
	add esi, 0x1
	add ebx, 0x4
	cmp edi, esi
	jnz FX_MarkEntUpdateBegin_30
FX_MarkEntUpdateBegin_20:
	movzx edx, byte [ebp-0x19]
	mov eax, [ebp+0x8]
	mov [eax+0x104], dl
	movzx edx, word [ebp-0x1c]
	mov [eax+0x106], dx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_MarkEntUpdateBegin_10:
	mov eax, [ebp+0x8]
	mov dword [eax+0x100], 0x0
	movzx edx, byte [ebp-0x19]
	mov eax, [ebp+0x8]
	mov [eax+0x104], dl
	movzx edx, word [ebp-0x1c]
	mov [eax+0x106], dx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;FX_GenerateMarkVertsForWorld(int)
FX_GenerateMarkVertsForWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xb4], 0x0
	mov dword [ebp-0xb8], 0x0
	mov eax, fx_marks
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FX_GenerateMarkVertsForWorld_10
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForWorld_10:
	call R_BeginMarkMeshVerts
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	mov [ebp-0xa8], eax
	mov edx, fx_marksSystemPool
	mov [ebp-0xdc], edx
	mov byte [edx+0x48011], 0x0
	movzx eax, word [edx+0x6]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForWorld_20
	mov dword [ebp-0xa4], 0x0
	mov [ebp-0xbc], edx
	mov ecx, [ebp-0xdc]
	mov [ebp-0xe0], ecx
FX_GenerateMarkVertsForWorld_40:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, [ebp-0xdc]
	mov [ebp-0x90], eax
	mov ebx, eax
	mov eax, [eax+0x18]
	mov [esp+0xc], eax
	add ebx, 0xc
	mov [ebp-0xc4], ebx
	mov [esp+0x8], ebx
	mov edi, [ebp-0xa8]
	mov eax, [edi+0x94]
	mov [esp+0x4], eax
	mov [esp], edi
	call FX_CullSphere
	test al, al
	jz FX_GenerateMarkVertsForWorld_30
	mov edi, fx_marksSystemPool
	mov [ebp-0xdc], edi
FX_GenerateMarkVertsForWorld_460:
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x2]
	cmp ax, 0xffff
	jnz FX_GenerateMarkVertsForWorld_40
FX_GenerateMarkVertsForWorld_20:
	mov ecx, [ebp-0xdc]
	cmp byte [ecx+0x48011], 0x0
	jnz FX_GenerateMarkVertsForWorld_50
FX_GenerateMarkVertsForWorld_260:
	call R_EndMarkMeshVerts
FX_GenerateMarkVertsForWorld_160:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForWorld_30:
	mov edx, [ebp-0x90]
	movzx eax, byte [edx+0x36]
	lea eax, [eax+eax*2]
	add eax, [ebp-0xa4]
	mov [ebp-0x4c], eax
	mov ebx, eax
	add ebx, 0x1
	and ebx, 0xfffffffe
	mov eax, [ebp-0xa4]
	add eax, 0x1
	and eax, 0xfffffffe
	sub ebx, eax
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	movzx eax, word [edx+0x38]
	mov [esp], eax
	call R_ReserveMarkMeshVerts
	test al, al
	jnz FX_GenerateMarkVertsForWorld_60
FX_GenerateMarkVertsForWorld_170:
	mov ecx, [ebp-0x90]
	movzx eax, byte [ecx+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_GenerateMarkVertsForWorld_70
	jg FX_GenerateMarkVertsForWorld_80
	test eax, eax
	jnz FX_GenerateMarkVertsForWorld_90
	mov edi, [ebp-0xbc]
	lea eax, [edi+0x810]
	mov edx, [ebp-0x90]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov esi, eax
	neg esi
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x3c]
	lea ebx, [edi+0x9010]
	mov edx, fx_marksSystemPool
	mov [ebp-0xdc], edx
	mov edi, edx
	jmp FX_GenerateMarkVertsForWorld_100
FX_GenerateMarkVertsForWorld_110:
	mov edi, [ebp-0xdc]
FX_GenerateMarkVertsForWorld_100:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_110
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x40]
	lea ebx, [edi+0x15010]
FX_GenerateMarkVertsForWorld_120:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xdc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_120
	mov eax, [ebp-0x90]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForWorld_130
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
	mov edi, [ebp-0x90]
FX_GenerateMarkVertsForWorld_610:
	movzx eax, word [edi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForWorld_140
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xdc]
	mov [edx+eax+0x2], cx
FX_GenerateMarkVertsForWorld_330:
	mov edi, [ebp-0x90]
	mov dword [edi+0x4], 0xffffffff
	mov eax, [ebp-0xdc]
	movzx ecx, word [eax+0x4]
	mov [edi+0x2], cx
	mov [eax+0x4], si
	mov edi, [ebp-0xdc]
	jmp FX_GenerateMarkVertsForWorld_150
FX_GenerateMarkVertsForWorld_50:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call R_ReserveMarkMeshIndices
	mov ecx, [ebp-0x20]
	lea eax, [ecx-0x4]
	mov [ebp-0x20], eax
	mov ebx, [ebp-0xdc]
	movzx edx, word [ebx+0x48012]
	mov word [eax+0x2], 0x0
	mov [ecx-0x4], dx
	call R_EndMarkMeshVerts
	jmp FX_GenerateMarkVertsForWorld_160
FX_GenerateMarkVertsForWorld_60:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_ReserveMarkMeshIndices
	test al, al
	jz FX_GenerateMarkVertsForWorld_170
	and dword [ebp-0xa4], 0x1
	mov ecx, [ebp-0xa4]
	add ecx, ecx
	mov edx, [ebp-0x20]
	mov edi, [ebp-0xbc]
	mov eax, [edi]
	mov ebx, [ebp-0x90]
	mov [ebx+0x4], eax
	mov edi, [ebx+0x3c]
	mov [ebp-0x94], edi
	movzx eax, byte [ebx+0x36]
	mov [ebp-0x9c], eax
	mov eax, [ebx+0x2c]
	mov [ebp-0x44], eax
	mov byte [ebp-0x40], 0xff
	mov byte [ebp-0x3f], 0x0
	mov byte [ebp-0x3e], 0xff
	movzx eax, byte [ebx+0x33]
	mov [ebp-0x3d], al
	movzx eax, word [ebx+0x34]
	mov [ebp-0x3c], ax
	sub edx, ecx
	mov [ebp-0x34], edx
	mov dword [ebp-0xc8], 0x0
	mov dword [ebp-0x38], 0x0
	mov edx, [ebp-0xbc]
	add edx, 0x9010
	mov [ebp-0x58], edx
	movzx ecx, word [ebp-0x1a]
	mov [ebp-0x52], cx
	mov eax, edx
FX_GenerateMarkVertsForWorld_420:
	add eax, [ebp-0x94]
	mov [ebp-0xa0], eax
	mov edx, [eax+0x14]
	mov [ebp-0x94], edx
	mov ecx, eax
	movzx eax, byte [eax+0x12]
	sub [ebp-0x9c], eax
	mov dword [ebp-0x98], 0x0
	lea ebx, [ecx+0xc]
	mov [ebp-0xcc], ebx
	mov ebx, ecx
	jmp FX_GenerateMarkVertsForWorld_180
FX_GenerateMarkVertsForWorld_230:
	mov edi, [ebp-0xc8]
	test edi, edi
	jnz FX_GenerateMarkVertsForWorld_190
	mov edx, [ebp-0x34]
FX_GenerateMarkVertsForWorld_400:
	mov edi, [ebp-0xa0]
	mov eax, [edi+0xc]
	mov [ebp-0x40], eax
	mov ecx, [ebp-0xcc]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x3c], ax
	mov edi, [ebp-0xe0]
	mov [ebp-0xdc], edi
	cmp byte [edi+0x48011], 0x0
	jnz FX_GenerateMarkVertsForWorld_200
FX_GenerateMarkVertsForWorld_240:
	movzx ecx, word [ebp-0x52]
	add cx, [ebx]
	mov eax, [ebp-0xc8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x52]
	add ax, [ebx+0x2]
	mov [edx+0x2], ax
	mov [edx], cx
	mov byte [edi+0x48011], 0x1
	movzx eax, word [ebp-0x52]
	add ax, [ebx+0x4]
	mov [edi+0x48012], ax
FX_GenerateMarkVertsForWorld_250:
	mov edx, [ebp-0x38]
	add edx, 0x3
	mov [ebp-0xc8], edx
	mov [ebp-0x38], edx
	add dword [ebp-0x98], 0x1
	add ebx, 0x6
	mov ecx, [ebp-0xa0]
	movzx eax, byte [ecx+0x12]
	cmp [ebp-0x98], eax
	jz FX_GenerateMarkVertsForWorld_210
FX_GenerateMarkVertsForWorld_180:
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x40]
	mov edi, [ebp-0xcc]
	repe cmpsb
	mov eax, 0x0
	jz FX_GenerateMarkVertsForWorld_220
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_GenerateMarkVertsForWorld_220:
	test eax, eax
	jnz FX_GenerateMarkVertsForWorld_230
	mov edx, [ebp-0x34]
	mov edi, [ebp-0xe0]
	mov [ebp-0xdc], edi
	cmp byte [edi+0x48011], 0x0
	jz FX_GenerateMarkVertsForWorld_240
FX_GenerateMarkVertsForWorld_200:
	movzx ecx, word [edi+0x48012]
	mov eax, [ebp-0xc8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x52]
	add ax, [ebx]
	mov [edx], ax
	mov [edx-0x2], cx
	movzx ecx, word [ebp-0x52]
	add cx, [ebx+0x2]
	movzx eax, word [ebp-0x52]
	add ax, [ebx+0x4]
	mov [edx+0x4], ax
	mov [edx+0x2], cx
	mov byte [edi+0x48011], 0x0
	jmp FX_GenerateMarkVertsForWorld_250
FX_GenerateMarkVertsForWorld_90:
	mov ebx, fx_marksSystemPool
	mov [ebp-0xdc], ebx
	mov edi, ebx
FX_GenerateMarkVertsForWorld_150:
	add dword [edi+0x48018], 0x1
	mov ecx, [ebp-0xdc]
	cmp byte [ecx+0x48011], 0x0
	jz FX_GenerateMarkVertsForWorld_260
	jmp FX_GenerateMarkVertsForWorld_50
FX_GenerateMarkVertsForWorld_80:
	cmp eax, 0x80
	jz FX_GenerateMarkVertsForWorld_270
	cmp eax, 0xc0
	jnz FX_GenerateMarkVertsForWorld_90
FX_GenerateMarkVertsForWorld_270:
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x34]
	mov ecx, fx_marksSystemPool
	mov [ebp-0xdc], ecx
	lea eax, [ecx+eax*2+0x8]
	mov [ebp-0xec], eax
	lea eax, [ecx+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov esi, eax
	neg esi
	mov ebx, [ebp-0x90]
	mov ecx, [ebx+0x3c]
	mov edi, [ebp-0xdc]
	lea ebx, [edi+0x9010]
	jmp FX_GenerateMarkVertsForWorld_280
FX_GenerateMarkVertsForWorld_290:
	mov edi, [ebp-0xdc]
FX_GenerateMarkVertsForWorld_280:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_290
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x40]
	lea ebx, [edi+0x15010]
	mov [ebp-0xc0], edi
FX_GenerateMarkVertsForWorld_300:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xdc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_300
	mov eax, [ebp-0x90]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForWorld_310
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
	mov edi, [ebp-0x90]
FX_GenerateMarkVertsForWorld_620:
	movzx eax, word [edi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForWorld_320
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xc0]
	mov [edx+eax+0x2], cx
	jmp FX_GenerateMarkVertsForWorld_330
FX_GenerateMarkVertsForWorld_70:
	mov edx, [ebp-0xbc]
	lea eax, [edx+0x810]
	mov edx, [ebp-0x90]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov esi, eax
	neg esi
	mov ecx, [ecx+0x3c]
	mov edi, [ebp-0xbc]
	lea ebx, [edi+0x9010]
	mov eax, fx_marksSystemPool
	mov [ebp-0xdc], eax
	mov edi, eax
	jmp FX_GenerateMarkVertsForWorld_340
FX_GenerateMarkVertsForWorld_350:
	mov edi, [ebp-0xdc]
FX_GenerateMarkVertsForWorld_340:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_350
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x40]
	lea ebx, [edi+0x15010]
FX_GenerateMarkVertsForWorld_360:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xdc]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForWorld_360
	mov eax, [ebp-0x90]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForWorld_370
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
	mov edi, [ebp-0x90]
FX_GenerateMarkVertsForWorld_390:
	movzx eax, word [edi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForWorld_380
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xdc]
	mov [edx+eax+0x2], cx
	mov ecx, [ebp-0x90]
FX_GenerateMarkVertsForWorld_600:
	mov dword [ecx+0x4], 0xffffffff
	mov ebx, [ebp-0xdc]
	movzx eax, word [ebx+0x4]
	mov [ecx+0x2], ax
	mov [ebx+0x4], si
	mov edi, [ebp-0xdc]
	jmp FX_GenerateMarkVertsForWorld_150
FX_GenerateMarkVertsForWorld_370:
	mov edi, eax
	jmp FX_GenerateMarkVertsForWorld_390
FX_GenerateMarkVertsForWorld_190:
	mov edi, [ebp-0xc8]
	mov [esp+0xc], edi
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov eax, [ebp-0x44]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	mov edx, [ebp-0x38]
	mov [ebp-0xc8], edx
	mov edx, [ebp-0x34]
	mov ecx, [ebp-0xc8]
	lea edx, [edx+ecx*2]
	mov [ebp-0x34], edx
	mov dword [ebp-0xc8], 0x0
	mov dword [ebp-0x38], 0x0
	jmp FX_GenerateMarkVertsForWorld_400
FX_GenerateMarkVertsForWorld_210:
	mov esi, [ebp-0x9c]
	test esi, esi
	jz FX_GenerateMarkVertsForWorld_410
	mov eax, [ebp-0x58]
	jmp FX_GenerateMarkVertsForWorld_420
FX_GenerateMarkVertsForWorld_410:
	mov ebx, [ebp-0x4c]
	mov [ebp-0xa4], ebx
	movzx esi, word [ebp-0x1a]
	movzx ebx, byte [ebp-0x3d]
	and ebx, 0xc0
	mov [esp+0xc], edx
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea edi, [ebp-0x40]
	mov [esp+0x4], edi
	mov eax, [ebp-0x44]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	test ebx, ebx
	jnz FX_GenerateMarkVertsForWorld_430
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov ecx, eax
	mov eax, [ebp-0x90]
	movzx esi, word [eax+0x38]
	movss xmm0, dword [_float_0_50000000]
	divss xmm0, dword [eax+0x18]
	movss [ebp-0x8c], xmm0
	mov eax, [eax+0x40]
	mov [ebp-0x88], eax
	mov edx, fx_marksSystemPool
	mov [ebp-0xdc], edx
	lea ebx, [edx+0x15010]
	mov [ebp-0x5c], ebx
	mov eax, ebx
FX_GenerateMarkVertsForWorld_470:
	add eax, [ebp-0x88]
	mov edi, [eax+0x40]
	mov [ebp-0x88], edi
	cmp esi, 0x2
	jg FX_GenerateMarkVertsForWorld_440
	mov dword [ebp-0xec], 0x0
FX_GenerateMarkVertsForWorld_480:
	mov edx, eax
	mov dword [ebp-0x11c], 0x0
FX_GenerateMarkVertsForWorld_450:
	movss xmm0, dword [edx]
	movaps xmm2, xmm0
	mov eax, [ebp-0x90]
	subss xmm2, [eax+0xc]
	movss xmm5, dword [edx+0x4]
	mov ebx, [ebp-0xc4]
	subss xmm5, [ebx+0x4]
	movss xmm6, dword [edx+0x8]
	subss xmm6, [ebx+0x8]
	movss xmm1, dword [eax+0x20]
	movss [ebp-0x84], xmm1
	movss xmm7, dword [edx+0x1c]
	movss xmm3, dword [eax+0x24]
	movss xmm4, dword [edx+0x18]
	movss xmm1, dword [edx+0x14]
	movss [ebp-0x80], xmm1
	movss xmm1, dword [eax+0x1c]
	movss [ebp-0x7c], xmm1
	movss [ecx], xmm0
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0xbf800000
	mov ebx, [ebp-0x90]
	mov eax, [ebx+0x28]
	mov [ecx+0x10], eax
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x1c]
	movaps xmm1, xmm5
	mulss xmm1, [ebx+0x20]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [ebx+0x24]
	addss xmm0, xmm1
	mulss xmm0, [ebp-0x8c]
	addss xmm0, [_float_0_50000000]
	movss [ecx+0x14], xmm0
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, xmm7
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	subss xmm0, xmm1
	mulss xmm2, xmm0
	mulss xmm3, [ebp-0x80]
	mulss xmm7, [ebp-0x7c]
	subss xmm3, xmm7
	mulss xmm5, xmm3
	addss xmm2, xmm5
	mulss xmm4, [ebp-0x7c]
	movss xmm0, dword [ebp-0x84]
	mulss xmm0, [ebp-0x80]
	subss xmm4, xmm0
	mulss xmm6, xmm4
	addss xmm2, xmm6
	mulss xmm2, [ebp-0x8c]
	addss xmm2, [_float_0_50000000]
	movss [ecx+0x18], xmm2
	mov eax, [edx+0xc]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x10]
	mov [ecx+0x20], eax
	movss xmm0, dword [edx+0x14]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [edx+0x18]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [edx+0x1c]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xac], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ebx, [ebp-0xac]
	mov bh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	and ebx, 0xffffff
	or ebx, 0x3f000000
	mov [ebp-0xac], ebx
	mov [ebp-0x30], ebx
	mov [ecx+0x24], ebx
	mov edi, [ebp-0x90]
	movss xmm0, dword [edi+0x1c]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [edi+0x20]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [edi+0x24]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xb0], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ebx, [ebp-0xb0]
	mov bh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	and ebx, 0xffffff
	or ebx, 0x3f000000
	mov [ebp-0xb0], ebx
	mov [ebp-0x30], ebx
	mov [ecx+0x28], ebx
	add edx, 0x20
	add ecx, 0x2c
	add dword [ebp-0x11c], 0x1
	cmp esi, [ebp-0x11c]
	jnz FX_GenerateMarkVertsForWorld_450
	mov ebx, [ebp-0xec]
	test ebx, ebx
	jz FX_GenerateMarkVertsForWorld_460
	mov esi, [ebp-0xec]
	mov eax, [ebp-0x5c]
	jmp FX_GenerateMarkVertsForWorld_470
FX_GenerateMarkVertsForWorld_440:
	sub esi, 0x2
	mov [ebp-0xec], esi
	mov esi, 0x2
	jmp FX_GenerateMarkVertsForWorld_480
FX_GenerateMarkVertsForWorld_430:
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov esi, eax
	mov edi, [ebp-0x90]
	movzx edi, word [edi+0x38]
	mov [ebp-0x78], edi
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp-0x90]
	divss xmm0, dword [eax+0x18]
	movss [ebp-0x74], xmm0
	mov eax, [eax+0x40]
	mov [ebp-0x70], eax
	mov edx, fx_marksSystemPool
	mov [ebp-0xdc], edx
	lea ecx, [edx+0x15010]
	mov [ebp-0x60], ecx
	mov ebx, [ebp-0x90]
	add ebx, 0x1c
	mov [ebp-0xd0], ebx
	mov edi, [ebp-0x90]
	add edi, 0x20
	mov [ebp-0xd4], edi
	mov eax, [ebp-0x90]
	add eax, 0x24
	mov [ebp-0xd8], eax
FX_GenerateMarkVertsForWorld_580:
	mov eax, [ebp-0x70]
	add eax, [ebp-0x60]
	mov edx, [eax+0x40]
	mov [ebp-0x70], edx
	cmp dword [ebp-0x78], 0x2
	jg FX_GenerateMarkVertsForWorld_490
	mov dword [ebp-0x50], 0x0
FX_GenerateMarkVertsForWorld_590:
	xor edi, edi
	mov ebx, eax
	jmp FX_GenerateMarkVertsForWorld_500
FX_GenerateMarkVertsForWorld_530:
	mov eax, 0x3fff
FX_GenerateMarkVertsForWorld_550:
	mov ecx, edx
	or ecx, eax
	movss xmm1, dword [ebp-0x64]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x20]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_GenerateMarkVertsForWorld_510
	mov eax, 0x3fff
FX_GenerateMarkVertsForWorld_570:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	movss xmm0, dword [ebx+0x14]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebx+0x18]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebx+0x1c]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xb4], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov edx, [ebp-0xb4]
	mov dh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0xb4], edx
	mov [ebp-0x30], edx
	mov [esi+0x18], edx
	mov ecx, [ebp-0xd0]
	movss xmm0, dword [ecx]
	movss [ebp-0x30], xmm0
	mov eax, [ebp-0xd4]
	movss xmm1, dword [eax]
	movss [ebp-0x2c], xmm1
	mov edx, [ebp-0xd8]
	movss xmm2, dword [edx]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xb8], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ecx, [ebp-0xb8]
	mov ch, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ecx, 0xff00ffff
	or ecx, eax
	and ecx, 0xffffff
	or ecx, 0x3f000000
	mov [ebp-0xb8], ecx
	mov [ebp-0x30], ecx
	mov [esi+0x1c], ecx
	add ebx, 0x20
	add esi, 0x2c
	add edi, 0x1
	cmp [ebp-0x78], edi
	jz FX_GenerateMarkVertsForWorld_520
FX_GenerateMarkVertsForWorld_500:
	movss xmm3, dword [ebx]
	mov eax, [ebp-0x90]
	subss xmm3, [eax+0xc]
	movss xmm6, dword [ebx+0x4]
	mov edx, [ebp-0xc4]
	subss xmm6, [edx+0x4]
	movss xmm7, dword [ebx+0x8]
	subss xmm7, [edx+0x8]
	movss xmm5, dword [eax+0x20]
	movss xmm4, dword [ebx+0x1c]
	movss xmm1, dword [eax+0x24]
	movss xmm2, dword [ebx+0x18]
	movss xmm0, dword [ebx+0x14]
	movss [ebp-0x6c], xmm0
	movss xmm0, dword [eax+0x1c]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebx]
	movss [esi], xmm0
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov dword [esi+0xc], 0xbf800000
	mov edx, [ebp-0x90]
	mov eax, [edx+0x28]
	mov [esi+0x10], eax
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss [ebp-0x64], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x10c], xmm0
	movss xmm0, dword [ebp-0x64]
	subss xmm0, [ebp-0x10c]
	mulss xmm0, xmm3
	mulss xmm1, [ebp-0x6c]
	mulss xmm4, [ebp-0x68]
	subss xmm1, xmm4
	mulss xmm1, xmm6
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x68]
	mulss xmm5, [ebp-0x6c]
	subss xmm2, xmm5
	mulss xmm2, xmm7
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x74]
	mulss xmm1, xmm2
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm1
	movss [ebp-0x64], xmm0
	mulss xmm3, [edx+0x1c]
	mulss xmm6, [edx+0x20]
	addss xmm3, xmm6
	mulss xmm7, [edx+0x24]
	addss xmm3, xmm7
	mulss xmm3, [ebp-0x74]
	addss xmm3, [_float_0_50000000]
	movss [ebp-0x20], xmm3
	mov eax, [ebp-0x20]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jg FX_GenerateMarkVertsForWorld_530
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForWorld_540
	xor eax, eax
	jmp FX_GenerateMarkVertsForWorld_550
FX_GenerateMarkVertsForWorld_510:
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForWorld_560
	xor eax, eax
	jmp FX_GenerateMarkVertsForWorld_570
FX_GenerateMarkVertsForWorld_520:
	mov ecx, [ebp-0x50]
	test ecx, ecx
	jz FX_GenerateMarkVertsForWorld_460
	mov ebx, [ebp-0x50]
	mov [ebp-0x78], ebx
	jmp FX_GenerateMarkVertsForWorld_580
FX_GenerateMarkVertsForWorld_490:
	mov ecx, [ebp-0x78]
	sub ecx, 0x2
	mov [ebp-0x50], ecx
	mov dword [ebp-0x78], 0x2
	jmp FX_GenerateMarkVertsForWorld_590
FX_GenerateMarkVertsForWorld_380:
	mov ecx, edi
	jmp FX_GenerateMarkVertsForWorld_600
FX_GenerateMarkVertsForWorld_140:
	mov ebx, [ebp-0xdc]
	mov [ebx+0x6], cx
	jmp FX_GenerateMarkVertsForWorld_330
FX_GenerateMarkVertsForWorld_130:
	mov edi, eax
	jmp FX_GenerateMarkVertsForWorld_610
FX_GenerateMarkVertsForWorld_320:
	mov eax, [ebp-0xec]
	test eax, eax
	jz FX_GenerateMarkVertsForWorld_330
	mov ebx, [ebp-0xec]
	mov [ebx], cx
	jmp FX_GenerateMarkVertsForWorld_330
FX_GenerateMarkVertsForWorld_310:
	mov edi, eax
	jmp FX_GenerateMarkVertsForWorld_620
FX_GenerateMarkVertsForWorld_540:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForWorld_550
FX_GenerateMarkVertsForWorld_560:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForWorld_570
	nop


;FX_MarkEntUpdateHidePartBits(unsigned int const*, unsigned int const*, int, int)
FX_MarkEntUpdateHidePartBits:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	xor ebx, ebx
	mov ecx, 0x1
FX_MarkEntUpdateHidePartBits_10:
	lea edx, [ecx*4]
	mov eax, [edx+edi-0x4]
	not eax
	and eax, [edx+esi-0x4]
	mov [ebp+edx-0x2c], eax
	or ebx, eax
	add ecx, 0x1
	cmp ecx, 0x5
	jnz FX_MarkEntUpdateHidePartBits_10
	test ebx, ebx
	jz FX_MarkEntUpdateHidePartBits_20
	mov esi, fx_marksSystemPool
	mov eax, [ebp+0x14]
	movzx edi, word [esi+eax*2+0x8]
	cmp di, 0xffff
	jz FX_MarkEntUpdateHidePartBits_20
	lea edx, [esi+0x810]
	mov [ebp-0x34], edx
	jmp FX_MarkEntUpdateHidePartBits_30
FX_MarkEntUpdateHidePartBits_40:
	cmp di, 0xffff
	jz FX_MarkEntUpdateHidePartBits_20
FX_MarkEntUpdateHidePartBits_30:
	movzx eax, di
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	lea ebx, [eax+esi]
	movzx edi, word [ebx+0x2]
	movzx eax, byte [ebx+0x33]
	and eax, 0xc0
	cmp eax, 0xc0
	jnz FX_MarkEntUpdateHidePartBits_40
	movzx ecx, byte [ebx+0x30]
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	test [ebp+edx*4-0x28], eax
	jz FX_MarkEntUpdateHidePartBits_40
	movzx eax, word [ebx+0x34]
	lea eax, [esi+eax*2+0x8]
	mov [ebp-0x3c], eax
	mov edx, ebx
	sub edx, [ebp-0x34]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0x36], ax
	mov ecx, [ebx+0x3c]
	lea eax, [esi+0x9010]
	mov [ebp-0x30], eax
	mov edx, eax
	jmp FX_MarkEntUpdateHidePartBits_50
FX_MarkEntUpdateHidePartBits_60:
	mov edx, [ebp-0x30]
FX_MarkEntUpdateHidePartBits_50:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x14]
	mov edx, [esi+0x808]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateHidePartBits_60
	mov ecx, [ebx+0x40]
	lea eax, [esi+0x15010]
	mov [ebp-0x2c], eax
	mov edx, eax
	jmp FX_MarkEntUpdateHidePartBits_70
FX_MarkEntUpdateHidePartBits_80:
	mov edx, [ebp-0x2c]
FX_MarkEntUpdateHidePartBits_70:
	lea eax, [ecx+edx]
	mov ecx, [eax+0x40]
	mov edx, [esi+0x80c]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_MarkEntUpdateHidePartBits_80
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_MarkEntUpdateHidePartBits_90
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
FX_MarkEntUpdateHidePartBits_90:
	movzx eax, word [ebx]
	cmp ax, 0xffff
	jz FX_MarkEntUpdateHidePartBits_100
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
FX_MarkEntUpdateHidePartBits_110:
	mov dword [ebx+0x4], 0xffffffff
	movzx eax, word [esi+0x4]
	mov [ebx+0x2], ax
	movzx edx, word [ebp-0x36]
	mov [esi+0x4], dx
	add dword [esi+0x48018], 0x1
	cmp di, 0xffff
	jnz FX_MarkEntUpdateHidePartBits_30
FX_MarkEntUpdateHidePartBits_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_MarkEntUpdateHidePartBits_100:
	mov eax, [ebp-0x3c]
	test eax, eax
	jz FX_MarkEntUpdateHidePartBits_110
	mov eax, [ebp-0x3c]
	mov [eax], cx
	jmp FX_MarkEntUpdateHidePartBits_110


;FX_GenerateMarkVertsForEntDObj(int, int, unsigned int*, unsigned short, unsigned char, DObj_s const*, cpose_t const*)
FX_GenerateMarkVertsForEntDObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	movzx esi, word [ebp+0x14]
	movzx edi, byte [ebp+0x18]
	mov eax, [ebp+0xc]
	mov edx, fx_marksSystemPool
	movzx ebx, word [edx+eax*2+0x8]
	cmp bx, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_10
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_GetSystem
	mov [ebp-0x13c], eax
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call R_MarkUtil_GetDObjAnimMatAndHideParts
	mov ecx, [ebp-0x24]
	mov [ebp-0x120], ecx
	mov eax, ebx
	mov [ebp-0x136], si
	mov ebx, edi
	mov [ebp-0x137], bl
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_10
	mov edx, fx_marksSystemPool
	mov [ebp-0x140], edx
	mov ecx, [ebp-0x13c]
	add ecx, 0x98
	mov [ebp-0x150], ecx
	mov [ebp-0x154], edx
FX_GenerateMarkVertsForEntDObj_30:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, [ebp-0x140]
	mov [ebp-0x11c], eax
	mov ebx, eax
	movzx eax, byte [eax+0x33]
	and eax, 0xc0
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForEntDObj_20
FX_GenerateMarkVertsForEntDObj_420:
	mov ecx, [ebp-0x11c]
	movzx eax, word [ecx+0x2]
	cmp ax, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_30
FX_GenerateMarkVertsForEntDObj_10:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntDObj_20:
	mov eax, [ebp+0x10]
	mov edx, [eax]
	movzx eax, byte [ebx+0x36]
	lea eax, [eax+eax*2]
	lea esi, [edx+eax]
	lea ebx, [esi+0x1]
	and ebx, 0xfffffffe
	add edx, 0x1
	and edx, 0xfffffffe
	sub ebx, edx
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0x38]
	mov [esp], eax
	call R_ReserveMarkMeshVerts
	test al, al
	jnz FX_GenerateMarkVertsForEntDObj_40
FX_GenerateMarkVertsForEntDObj_160:
	mov ecx, [ebp-0x11c]
	movzx eax, byte [ecx+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_GenerateMarkVertsForEntDObj_50
	jle FX_GenerateMarkVertsForEntDObj_60
	cmp eax, 0x80
	jz FX_GenerateMarkVertsForEntDObj_70
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForEntDObj_70
FX_GenerateMarkVertsForEntDObj_80:
	mov esi, fx_marksSystemPool
FX_GenerateMarkVertsForEntDObj_150:
	add dword [esi+0x48018], 0x1
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntDObj_60:
	test eax, eax
	jnz FX_GenerateMarkVertsForEntDObj_80
	mov ecx, [ebp-0x140]
	lea eax, [ecx+0x810]
	mov edx, [ebp-0x11c]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x11c]
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0x140]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntDObj_90
FX_GenerateMarkVertsForEntDObj_100:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_90:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_100
	mov edx, [ebp-0x11c]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntDObj_110
FX_GenerateMarkVertsForEntDObj_120:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_110:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_120
	mov ebx, [ebp-0x11c]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_130
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x11c]
FX_GenerateMarkVertsForEntDObj_440:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_140
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
FX_GenerateMarkVertsForEntDObj_480:
	mov ecx, [ebp-0x11c]
	mov dword [ecx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov ebx, [ebp-0x11c]
	mov [ebx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntDObj_150
FX_GenerateMarkVertsForEntDObj_40:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_ReserveMarkMeshIndices
	test al, al
	jz FX_GenerateMarkVertsForEntDObj_160
	mov ebx, [ebp+0x10]
	mov ecx, [ebx]
	and ecx, 0x1
	add ecx, ecx
	mov edx, [ebp-0x20]
	mov [ebx], esi
	mov ebx, [ebp-0x140]
	mov eax, [ebx]
	mov ebx, [ebp-0x11c]
	mov [ebx+0x4], eax
	mov eax, [ebx+0x3c]
	mov [ebp-0x124], eax
	movzx ebx, byte [ebx+0x36]
	mov [ebp-0x12c], ebx
	mov ebx, [ebp-0x11c]
	mov eax, [ebx+0x2c]
	mov [ebp-0x48], eax
	mov byte [ebp-0x44], 0xff
	mov byte [ebp-0x43], 0x0
	mov byte [ebp-0x42], 0xff
	movzx eax, byte [ebx+0x33]
	mov [ebp-0x41], al
	movzx eax, word [ebx+0x34]
	mov [ebp-0x40], ax
	sub edx, ecx
	mov [ebp-0x38], edx
	mov dword [ebp-0x14c], 0x0
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp-0x140]
	add eax, 0x9010
	mov [ebp-0xe0], eax
	movzx edx, word [ebp-0x1a]
	mov [ebp-0xda], dx
	mov ebx, eax
FX_GenerateMarkVertsForEntDObj_270:
	add ebx, [ebp-0x124]
	mov [ebp-0x130], ebx
	mov eax, [ebx+0x14]
	mov [ebp-0x124], eax
	movzx eax, byte [ebx+0x12]
	sub [ebp-0x12c], eax
	mov dword [ebp-0x128], 0x0
	lea edx, [ebx+0xc]
	mov [ebp-0x148], edx
	mov edi, edx
	jmp FX_GenerateMarkVertsForEntDObj_170
FX_GenerateMarkVertsForEntDObj_220:
	mov edi, [ebp-0x14c]
	test edi, edi
	jnz FX_GenerateMarkVertsForEntDObj_180
	mov edx, [ebp-0x38]
FX_GenerateMarkVertsForEntDObj_250:
	mov ecx, [ebp-0x130]
	mov eax, [ecx+0xc]
	mov [ebp-0x44], eax
	mov ecx, [ebp-0x148]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x40], ax
	mov eax, [ebp-0x154]
	cmp byte [eax+0x48011], 0x0
	jnz FX_GenerateMarkVertsForEntDObj_190
FX_GenerateMarkVertsForEntDObj_230:
	movzx ecx, word [ebp-0xda]
	add cx, [ebx]
	mov eax, [ebp-0x14c]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0xda]
	add ax, [ebx+0x2]
	mov [edx+0x2], ax
	mov [edx], cx
	mov edx, [ebp-0x154]
	mov byte [edx+0x48011], 0x1
	movzx eax, word [ebp-0xda]
	add ax, [ebx+0x4]
	mov [edx+0x48012], ax
FX_GenerateMarkVertsForEntDObj_240:
	mov eax, [ebp-0x3c]
	add eax, 0x3
	mov [ebp-0x14c], eax
	mov [ebp-0x3c], eax
	add dword [ebp-0x128], 0x1
	add ebx, 0x6
	mov ecx, [ebp-0x130]
	movzx eax, byte [ecx+0x12]
	cmp [ebp-0x128], eax
	jz FX_GenerateMarkVertsForEntDObj_200
	mov edi, [ebp-0x148]
FX_GenerateMarkVertsForEntDObj_170:
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x44]
	repe cmpsb
	mov eax, 0x0
	jz FX_GenerateMarkVertsForEntDObj_210
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_GenerateMarkVertsForEntDObj_210:
	test eax, eax
	jnz FX_GenerateMarkVertsForEntDObj_220
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x154]
	cmp byte [eax+0x48011], 0x0
	jz FX_GenerateMarkVertsForEntDObj_230
FX_GenerateMarkVertsForEntDObj_190:
	movzx ecx, word [eax+0x48012]
	mov eax, [ebp-0x14c]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0xda]
	add ax, [ebx]
	mov [edx], ax
	mov [edx-0x2], cx
	movzx ecx, word [ebp-0xda]
	add cx, [ebx+0x2]
	movzx eax, word [ebp-0xda]
	add ax, [ebx+0x4]
	mov [edx+0x4], ax
	mov [edx+0x2], cx
	mov edx, [ebp-0x154]
	mov byte [edx+0x48011], 0x0
	jmp FX_GenerateMarkVertsForEntDObj_240
FX_GenerateMarkVertsForEntDObj_180:
	mov ecx, [ebp-0x14c]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	mov edx, [ebp-0x3c]
	mov [ebp-0x14c], edx
	mov edx, [ebp-0x38]
	mov ecx, [ebp-0x14c]
	lea edx, [edx+ecx*2]
	mov [ebp-0x38], edx
	mov dword [ebp-0x14c], 0x0
	mov dword [ebp-0x3c], 0x0
	jmp FX_GenerateMarkVertsForEntDObj_250
FX_GenerateMarkVertsForEntDObj_200:
	mov esi, [ebp-0x12c]
	test esi, esi
	jz FX_GenerateMarkVertsForEntDObj_260
	mov ebx, [ebp-0xe0]
	jmp FX_GenerateMarkVertsForEntDObj_270
FX_GenerateMarkVertsForEntDObj_50:
	mov edx, ecx
	mov ebx, ecx
	mov ecx, [ebp-0x140]
	lea eax, [ecx+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0x140]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntDObj_280
FX_GenerateMarkVertsForEntDObj_290:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_280:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_290
	mov edx, [ebp-0x11c]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntDObj_300
FX_GenerateMarkVertsForEntDObj_310:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_300:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_310
	mov ebx, [ebp-0x11c]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_320
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x11c]
FX_GenerateMarkVertsForEntDObj_470:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_330
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
	mov ecx, [ebp-0x11c]
FX_GenerateMarkVertsForEntDObj_460:
	mov dword [ecx+0x4], 0xffffffff
	movzx eax, word [esi+0x4]
	mov [ecx+0x2], ax
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntDObj_150
FX_GenerateMarkVertsForEntDObj_70:
	mov edx, [ebp-0x11c]
	movzx eax, word [edx+0x34]
	mov esi, fx_marksSystemPool
	lea eax, [esi+eax*2+0x8]
	mov [ebp-0x134], eax
	lea eax, [esi+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x11c]
	mov ecx, [ebx+0x3c]
	lea ebx, [esi+0x9010]
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntDObj_340
FX_GenerateMarkVertsForEntDObj_350:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_340:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_350
	mov eax, [ebp-0x11c]
	mov ecx, [eax+0x40]
	lea ebx, [esi+0x15010]
	mov [ebp-0x144], esi
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntDObj_360
FX_GenerateMarkVertsForEntDObj_370:
	mov edx, eax
FX_GenerateMarkVertsForEntDObj_360:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntDObj_370
	mov edx, [ebp-0x11c]
	movzx ecx, word [edx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_380
	mov ebx, edx
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x11c]
FX_GenerateMarkVertsForEntDObj_380:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntDObj_390
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov ebx, [ebp-0x144]
	mov [ebx+eax+0x2], cx
FX_GenerateMarkVertsForEntDObj_450:
	mov edx, [ebp-0x11c]
	mov dword [edx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov [edx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntDObj_150
FX_GenerateMarkVertsForEntDObj_260:
	movzx ebx, word [ebp-0x136]
	mov [ebp-0x40], bx
	movzx eax, byte [ebp-0x137]
	mov [ebp-0x42], al
	mov edx, [ebp-0x11c]
	movzx edi, byte [edx+0x30]
	movzx eax, byte [edx+0x33]
	and eax, 0x3f
	mov [ebp-0x118], eax
	jz FX_GenerateMarkVertsForEntDObj_400
	xor ebx, ebx
	xor esi, esi
FX_GenerateMarkVertsForEntDObj_410:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call DObjGetModel
	mov [esp], eax
	call XModelNumBones
	add esi, eax
	add ebx, 0x1
	cmp [ebp-0x118], ebx
	jnz FX_GenerateMarkVertsForEntDObj_410
FX_GenerateMarkVertsForEntDObj_430:
	lea eax, [edi+esi]
	shl eax, 0x5
	add eax, [ebp-0x120]
	movss xmm2, dword [eax+0x1c]
	movaps xmm3, xmm2
	mulss xmm3, [eax]
	movaps xmm6, xmm2
	mulss xmm6, [eax+0x4]
	mulss xmm2, [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [eax]
	movss [ebp-0x114], xmm0
	movss xmm4, dword [eax+0x4]
	movaps xmm5, xmm3
	mulss xmm5, xmm4
	movss xmm1, dword [eax+0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm1
	movss xmm0, dword [eax+0xc]
	mulss xmm3, xmm0
	mulss xmm4, xmm6
	movss [ebp-0x110], xmm4
	movaps xmm4, xmm6
	mulss xmm4, xmm1
	mulss xmm6, xmm0
	mulss xmm1, xmm2
	mulss xmm2, xmm0
	movss [ebp-0x160], xmm2
	lea edx, [eax+0x10]
	movss xmm2, dword [eax+0x10]
	movss [ebp-0xf0], xmm2
	movss xmm0, dword [edx+0x4]
	movss [ebp-0xf4], xmm0
	movss xmm2, dword [edx+0x8]
	movss [ebp-0xf8], xmm2
	movss xmm0, dword [ebp-0x110]
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	movss [ebp-0xd8], xmm2
	movss xmm0, dword [ebp-0x160]
	addss xmm0, xmm5
	movss [ebp-0xd4], xmm0
	movaps xmm0, xmm7
	subss xmm0, xmm6
	movss [ebp-0xd0], xmm0
	subss xmm5, [ebp-0x160]
	movss [ebp-0xcc], xmm5
	addss xmm1, [ebp-0x114]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0xc8], xmm0
	movaps xmm0, xmm3
	addss xmm0, xmm4
	movss [ebp-0xc4], xmm0
	addss xmm7, xmm6
	movss [ebp-0xc0], xmm7
	subss xmm4, xmm3
	movss [ebp-0xbc], xmm4
	movss xmm3, dword [ebp-0x114]
	addss xmm3, [ebp-0x110]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss [ebp-0xb8], xmm0
	movss xmm7, dword [ebp-0xf0]
	movss [ebp-0xb4], xmm7
	movss xmm0, dword [ebp-0xf4]
	movss [ebp-0xb0], xmm0
	movss xmm2, dword [ebp-0xf8]
	movss [ebp-0xac], xmm2
	mov eax, [ebp-0x150]
	addss xmm7, [eax]
	movss [ebp-0xb4], xmm7
	addss xmm0, [eax+0x4]
	movss [ebp-0xb0], xmm0
	addss xmm2, [eax+0x8]
	movss [ebp-0xac], xmm2
	mov edx, [ebp-0x118]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call DObjGetModel
	mov [esp], eax
	call XModelGetBasePose
	shl edi, 0x5
	add eax, edi
	movss xmm1, dword [eax+0x1c]
	movaps xmm5, xmm1
	mulss xmm5, [eax]
	movaps xmm6, xmm1
	mulss xmm6, [eax+0x4]
	mulss xmm1, [eax+0x8]
	movaps xmm0, xmm5
	mulss xmm0, [eax]
	movss [ebp-0x108], xmm0
	movss xmm3, dword [eax+0x4]
	movaps xmm7, xmm5
	mulss xmm7, xmm3
	movss xmm2, dword [eax+0x8]
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	movss [ebp-0x104], xmm0
	movss xmm0, dword [eax+0xc]
	mulss xmm5, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x100], xmm3
	movaps xmm3, xmm6
	mulss xmm3, xmm2
	movss [ebp-0xfc], xmm3
	mulss xmm6, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x100]
	addss xmm0, xmm2
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm0
	movss [ebp-0x15c], xmm3
	movaps xmm3, xmm7
	subss xmm3, xmm1
	movss xmm4, dword [ebp-0x104]
	addss xmm4, xmm6
	addss xmm7, xmm1
	addss xmm2, [ebp-0x108]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm2
	movss xmm0, dword [ebp-0xfc]
	subss xmm0, xmm5
	movss [ebp-0xe4], xmm0
	movss xmm2, dword [ebp-0x104]
	subss xmm2, xmm6
	movss [ebp-0xe8], xmm2
	addss xmm5, [ebp-0xfc]
	movss xmm0, dword [ebp-0x108]
	addss xmm0, [ebp-0x100]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	movss [ebp-0xec], xmm2
	movss xmm6, dword [eax+0x10]
	movss xmm0, dword [eax+0x14]
	movss [ebp-0x10c], xmm0
	movss xmm2, dword [eax+0x18]
	movss xmm0, dword [ebp-0x15c]
	movss [ebp-0x78], xmm0
	movss [ebp-0x74], xmm3
	movss [ebp-0x70], xmm4
	movss [ebp-0x6c], xmm7
	movss [ebp-0x68], xmm1
	movss xmm0, dword [ebp-0xe4]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp-0xe8]
	movss [ebp-0x60], xmm0
	movss [ebp-0x5c], xmm5
	movss xmm0, dword [ebp-0xec]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp-0x15c]
	mulss xmm0, xmm6
	mulss xmm7, [ebp-0x10c]
	addss xmm0, xmm7
	movss xmm7, dword [ebp-0xe8]
	mulss xmm7, xmm2
	addss xmm0, xmm7
	movss xmm7, dword [_data16_80000000]
	xorps xmm0, xmm7
	movss [ebp-0x54], xmm0
	mulss xmm3, xmm6
	mulss xmm1, [ebp-0x10c]
	addss xmm3, xmm1
	mulss xmm5, xmm2
	addss xmm3, xmm5
	xorps xmm3, xmm7
	movss [ebp-0x50], xmm3
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x10c]
	addss xmm4, xmm0
	mulss xmm2, [ebp-0xec]
	addss xmm4, xmm2
	xorps xmm4, xmm7
	movss [ebp-0x4c], xmm4
	lea ebx, [ebp-0xa8]
	mov [esp+0x8], ebx
	lea eax, [ebp-0xd8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x78]
	mov [esp], edx
	call MatrixMultiply43
	movzx ecx, word [ebp-0x1a]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x48]
	mov [esp], eax
	mov edx, [ebp-0x11c]
	mov eax, fx_marksSystemPool
	call FX_GenerateMarkVertsForMark_FinishAnimated
	jmp FX_GenerateMarkVertsForEntDObj_420
FX_GenerateMarkVertsForEntDObj_400:
	xor esi, esi
	jmp FX_GenerateMarkVertsForEntDObj_430
FX_GenerateMarkVertsForEntDObj_130:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntDObj_440
FX_GenerateMarkVertsForEntDObj_390:
	mov eax, [ebp-0x134]
	test eax, eax
	jz FX_GenerateMarkVertsForEntDObj_450
	mov eax, [ebp-0x134]
	mov [eax], cx
	jmp FX_GenerateMarkVertsForEntDObj_450
FX_GenerateMarkVertsForEntDObj_330:
	mov ecx, edx
	jmp FX_GenerateMarkVertsForEntDObj_460
FX_GenerateMarkVertsForEntDObj_320:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntDObj_470
FX_GenerateMarkVertsForEntDObj_140:
	mov [esi+0x6], cx
	jmp FX_GenerateMarkVertsForEntDObj_480
	nop


;FX_GenerateMarkVertsForEntBrush(int, int, unsigned int*, unsigned char, GfxPlacement const*)
FX_GenerateMarkVertsForEntBrush:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov ebx, [ebp+0x18]
	movzx edi, byte [ebp+0x14]
	mov eax, [ebp+0xc]
	mov edx, fx_marksSystemPool
	movzx esi, word [edx+eax*2+0x8]
	cmp si, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_10
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_GetSystem
	mov edx, esi
	mov eax, edi
	mov [ebp-0xa5], al
	movss xmm3, dword [ebx]
	movss xmm4, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss xmm6, dword [ebx+0xc]
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x74], xmm0
	movss xmm5, dword [ebx+0x14]
	movss [ebp-0x78], xmm5
	movss xmm7, dword [ebx+0x18]
	movss [ebp-0x7c], xmm7
	movaps xmm0, xmm3
	addss xmm0, xmm3
	movaps xmm2, xmm4
	addss xmm2, xmm4
	movaps xmm5, xmm1
	addss xmm5, xmm1
	movss [ebp-0xcc], xmm5
	mulss xmm3, xmm0
	movaps xmm5, xmm4
	mulss xmm5, xmm0
	movaps xmm7, xmm1
	mulss xmm7, xmm0
	movss [ebp-0xa4], xmm7
	mulss xmm0, xmm6
	movss [ebp-0xa0], xmm0
	mulss xmm4, xmm2
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x9c], xmm0
	mulss xmm2, xmm6
	movss [ebp-0x98], xmm2
	mulss xmm1, [ebp-0xcc]
	mulss xmm6, [ebp-0xcc]
	movaps xmm0, xmm4
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm7, xmm2
	subss xmm7, xmm0
	movss [ebp-0x64], xmm7
	movaps xmm0, xmm5
	addss xmm0, xmm6
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0xa4]
	subss xmm0, [ebp-0x98]
	movss [ebp-0x5c], xmm0
	subss xmm5, xmm6
	movss [ebp-0x58], xmm5
	addss xmm1, xmm3
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0xa0]
	addss xmm0, [ebp-0x9c]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0xa4]
	addss xmm0, [ebp-0x98]
	movss [ebp-0x4c], xmm0
	movss xmm5, dword [ebp-0x9c]
	subss xmm5, [ebp-0xa0]
	movss [ebp-0x48], xmm5
	addss xmm3, xmm4
	subss xmm2, xmm3
	movss [ebp-0x44], xmm2
	movss xmm7, dword [ebp-0x74]
	movss [ebp-0x40], xmm7
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x3c], xmm0
	movss xmm5, dword [ebp-0x7c]
	movss [ebp-0x38], xmm5
	mov eax, vec3_origin
	addss xmm7, [eax]
	movss [ebp-0x40], xmm7
	addss xmm0, [eax+0x4]
	movss [ebp-0x3c], xmm0
	addss xmm5, [eax+0x8]
	movss [ebp-0x38], xmm5
	cmp si, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_10
	mov eax, fx_marksSystemPool
	mov [ebp-0xac], eax
	mov [ebp-0xbc], eax
FX_GenerateMarkVertsForEntBrush_30:
	movzx eax, dx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, [ebp-0xac]
	mov [ebp-0x90], eax
	movzx eax, byte [eax+0x33]
	and eax, 0xc0
	add eax, 0xffffff80
	jz FX_GenerateMarkVertsForEntBrush_20
FX_GenerateMarkVertsForEntBrush_400:
	mov ebx, [ebp-0x90]
	movzx edx, word [ebx+0x2]
	cmp dx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_30
FX_GenerateMarkVertsForEntBrush_10:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntBrush_20:
	mov ecx, [ebp+0x10]
	mov edx, [ecx]
	mov ebx, [ebp-0x90]
	movzx eax, byte [ebx+0x36]
	lea eax, [eax+eax*2]
	lea esi, [edx+eax]
	lea ebx, [esi+0x1]
	and ebx, 0xfffffffe
	add edx, 0x1
	and edx, 0xfffffffe
	sub ebx, edx
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x38]
	mov [esp], eax
	call R_ReserveMarkMeshVerts
	test al, al
	jnz FX_GenerateMarkVertsForEntBrush_40
FX_GenerateMarkVertsForEntBrush_220:
	mov ecx, [ebp-0x90]
	movzx eax, byte [ecx+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_GenerateMarkVertsForEntBrush_50
	jg FX_GenerateMarkVertsForEntBrush_60
	test eax, eax
	jnz FX_GenerateMarkVertsForEntBrush_70
	mov ecx, [ebp-0xac]
	lea eax, [ecx+0x810]
	mov edx, [ebp-0x90]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x90]
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0xac]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntBrush_80
FX_GenerateMarkVertsForEntBrush_90:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_80:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_90
	mov edx, [ebp-0x90]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntBrush_100
FX_GenerateMarkVertsForEntBrush_110:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_100:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_110
	mov ebx, [ebp-0x90]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_120
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntBrush_450:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_130
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
FX_GenerateMarkVertsForEntBrush_440:
	mov ecx, [ebp-0x90]
	mov dword [ecx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov ebx, [ebp-0x90]
	mov [ebx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntBrush_140
FX_GenerateMarkVertsForEntBrush_50:
	mov edx, ecx
	mov ebx, ecx
	mov ecx, [ebp-0xac]
	lea eax, [ecx+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0xac]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntBrush_150
FX_GenerateMarkVertsForEntBrush_160:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_150:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_160
	mov edx, [ebp-0x90]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntBrush_170
FX_GenerateMarkVertsForEntBrush_180:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_170:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_180
	mov ebx, [ebp-0x90]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_190
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntBrush_420:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_200
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
	mov ecx, [ebp-0x90]
FX_GenerateMarkVertsForEntBrush_410:
	mov dword [ecx+0x4], 0xffffffff
	movzx eax, word [esi+0x4]
	mov [ecx+0x2], ax
	mov [esi+0x4], di
FX_GenerateMarkVertsForEntBrush_140:
	add dword [esi+0x48018], 0x1
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntBrush_60:
	cmp eax, 0x80
	jz FX_GenerateMarkVertsForEntBrush_210
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForEntBrush_210
FX_GenerateMarkVertsForEntBrush_70:
	mov esi, fx_marksSystemPool
	jmp FX_GenerateMarkVertsForEntBrush_140
FX_GenerateMarkVertsForEntBrush_40:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_ReserveMarkMeshIndices
	test al, al
	jz FX_GenerateMarkVertsForEntBrush_220
	mov ebx, [ebp+0x10]
	mov ecx, [ebx]
	and ecx, 0x1
	add ecx, ecx
	mov edx, [ebp-0x20]
	mov [ebx], esi
	mov ebx, [ebp-0xac]
	mov eax, [ebx]
	mov ebx, [ebp-0x90]
	mov [ebx+0x4], eax
	mov eax, [ebx+0x3c]
	mov [ebp-0x80], eax
	movzx ebx, byte [ebx+0x36]
	mov [ebp-0x88], ebx
	mov ebx, [ebp-0x90]
	mov eax, [ebx+0x2c]
	mov [ebp-0x34], eax
	mov byte [ebp-0x30], 0xff
	mov byte [ebp-0x2f], 0x0
	mov byte [ebp-0x2e], 0xff
	movzx eax, byte [ebx+0x33]
	mov [ebp-0x2d], al
	movzx eax, word [ebx+0x34]
	mov [ebp-0x2c], ax
	sub edx, ecx
	mov [ebp-0x24], edx
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0xac]
	add eax, 0x9010
	mov [ebp-0x70], eax
	movzx edx, word [ebp-0x1a]
	mov [ebp-0x6a], dx
	mov ebx, eax
FX_GenerateMarkVertsForEntBrush_390:
	add ebx, [ebp-0x80]
	mov [ebp-0x8c], ebx
	mov eax, [ebx+0x14]
	mov [ebp-0x80], eax
	movzx eax, byte [ebx+0x12]
	sub [ebp-0x88], eax
	mov dword [ebp-0x84], 0x0
	lea edx, [ebx+0xc]
	mov [ebp-0xb4], edx
	mov edi, edx
	jmp FX_GenerateMarkVertsForEntBrush_230
FX_GenerateMarkVertsForEntBrush_280:
	mov eax, [ebp-0xb8]
	test eax, eax
	jnz FX_GenerateMarkVertsForEntBrush_240
	mov edx, [ebp-0x24]
FX_GenerateMarkVertsForEntBrush_370:
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+0xc]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0xb4]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x2c], ax
	mov esi, [ebp-0xbc]
	cmp byte [esi+0x48011], 0x0
	jnz FX_GenerateMarkVertsForEntBrush_250
FX_GenerateMarkVertsForEntBrush_290:
	movzx ecx, word [ebp-0x6a]
	add cx, [ebx]
	mov eax, [ebp-0xb8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x2]
	mov [edx+0x2], ax
	mov [edx], cx
	mov byte [esi+0x48011], 0x1
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x4]
	mov [esi+0x48012], ax
FX_GenerateMarkVertsForEntBrush_300:
	mov eax, [ebp-0x28]
	add eax, 0x3
	mov [ebp-0xb8], eax
	mov [ebp-0x28], eax
	add dword [ebp-0x84], 0x1
	add ebx, 0x6
	mov edx, [ebp-0x8c]
	movzx eax, byte [edx+0x12]
	cmp [ebp-0x84], eax
	jz FX_GenerateMarkVertsForEntBrush_260
	mov edi, [ebp-0xb4]
FX_GenerateMarkVertsForEntBrush_230:
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz FX_GenerateMarkVertsForEntBrush_270
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_GenerateMarkVertsForEntBrush_270:
	test eax, eax
	jnz FX_GenerateMarkVertsForEntBrush_280
	mov edx, [ebp-0x24]
	mov esi, [ebp-0xbc]
	cmp byte [esi+0x48011], 0x0
	jz FX_GenerateMarkVertsForEntBrush_290
FX_GenerateMarkVertsForEntBrush_250:
	movzx ecx, word [esi+0x48012]
	mov eax, [ebp-0xb8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx]
	mov [edx], ax
	mov [edx-0x2], cx
	movzx ecx, word [ebp-0x6a]
	add cx, [ebx+0x2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x4]
	mov [edx+0x4], ax
	mov [edx+0x2], cx
	mov byte [esi+0x48011], 0x0
	jmp FX_GenerateMarkVertsForEntBrush_300
FX_GenerateMarkVertsForEntBrush_210:
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x34]
	mov esi, fx_marksSystemPool
	lea eax, [esi+eax*2+0x8]
	mov [ebp-0x94], eax
	lea eax, [esi+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x90]
	mov ecx, [ebx+0x3c]
	lea ebx, [esi+0x9010]
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntBrush_310
FX_GenerateMarkVertsForEntBrush_320:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_310:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_320
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x40]
	lea ebx, [esi+0x15010]
	mov [ebp-0xb0], esi
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntBrush_330
FX_GenerateMarkVertsForEntBrush_340:
	mov edx, eax
FX_GenerateMarkVertsForEntBrush_330:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntBrush_340
	mov edx, [ebp-0x90]
	movzx ecx, word [edx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_350
	mov ebx, edx
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntBrush_350:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntBrush_360
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov ebx, [ebp-0xb0]
	mov [ebx+eax+0x2], cx
FX_GenerateMarkVertsForEntBrush_430:
	mov edx, [ebp-0x90]
	mov dword [edx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov [edx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntBrush_140
FX_GenerateMarkVertsForEntBrush_240:
	mov ecx, [ebp-0xb8]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	mov edx, [ebp-0x28]
	mov [ebp-0xb8], edx
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0xb8]
	lea edx, [edx+ecx*2]
	mov [ebp-0x24], edx
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x28], 0x0
	jmp FX_GenerateMarkVertsForEntBrush_370
FX_GenerateMarkVertsForEntBrush_260:
	mov eax, [ebp-0x88]
	test eax, eax
	jz FX_GenerateMarkVertsForEntBrush_380
	mov ebx, [ebp-0x70]
	jmp FX_GenerateMarkVertsForEntBrush_390
FX_GenerateMarkVertsForEntBrush_380:
	movzx ecx, byte [ebp-0xa5]
	mov [ebp-0x2e], cl
	movzx ecx, word [ebp-0x1a]
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	mov edx, [ebp-0x90]
	mov eax, esi
	call FX_GenerateMarkVertsForMark_FinishAnimated
	jmp FX_GenerateMarkVertsForEntBrush_400
FX_GenerateMarkVertsForEntBrush_200:
	mov ecx, edx
	jmp FX_GenerateMarkVertsForEntBrush_410
FX_GenerateMarkVertsForEntBrush_190:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntBrush_420
FX_GenerateMarkVertsForEntBrush_360:
	mov eax, [ebp-0x94]
	test eax, eax
	jz FX_GenerateMarkVertsForEntBrush_430
	mov eax, [ebp-0x94]
	mov [eax], cx
	jmp FX_GenerateMarkVertsForEntBrush_430
FX_GenerateMarkVertsForEntBrush_130:
	mov [esi+0x6], cx
	jmp FX_GenerateMarkVertsForEntBrush_440
FX_GenerateMarkVertsForEntBrush_120:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntBrush_450
	nop


;FX_GenerateMarkVertsForEntXModel(int, int, unsigned int*, unsigned short, unsigned char, GfxScaledPlacement const*)
FX_GenerateMarkVertsForEntXModel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov ebx, [ebp+0x1c]
	movzx edi, word [ebp+0x14]
	movzx eax, byte [ebp+0x18]
	mov [ebp-0xa8], al
	mov eax, [ebp+0xc]
	mov edx, fx_marksSystemPool
	movzx esi, word [edx+eax*2+0x8]
	cmp si, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_10
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call FX_GetSystem
	mov edx, esi
	mov [ebp-0xa6], di
	movzx eax, byte [ebp-0xa8]
	mov [ebp-0xa7], al
	movss xmm3, dword [ebx]
	movss xmm4, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss xmm6, dword [ebx+0xc]
	movss xmm0, dword [ebx+0x10]
	movss [ebp-0x74], xmm0
	movss xmm5, dword [ebx+0x14]
	movss [ebp-0x78], xmm5
	movss xmm7, dword [ebx+0x18]
	movss [ebp-0x7c], xmm7
	movaps xmm0, xmm3
	addss xmm0, xmm3
	movaps xmm2, xmm4
	addss xmm2, xmm4
	movaps xmm5, xmm1
	addss xmm5, xmm1
	movss [ebp-0xcc], xmm5
	mulss xmm3, xmm0
	movaps xmm5, xmm4
	mulss xmm5, xmm0
	movaps xmm7, xmm1
	mulss xmm7, xmm0
	movss [ebp-0xa4], xmm7
	mulss xmm0, xmm6
	movss [ebp-0xa0], xmm0
	mulss xmm4, xmm2
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x9c], xmm0
	mulss xmm2, xmm6
	movss [ebp-0x98], xmm2
	mulss xmm1, [ebp-0xcc]
	mulss xmm6, [ebp-0xcc]
	movaps xmm0, xmm4
	addss xmm0, xmm1
	movss xmm2, dword [_float_1_00000000]
	movaps xmm7, xmm2
	subss xmm7, xmm0
	movss [ebp-0x64], xmm7
	movaps xmm0, xmm5
	addss xmm0, xmm6
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp-0xa4]
	subss xmm0, [ebp-0x98]
	movss [ebp-0x5c], xmm0
	subss xmm5, xmm6
	movss [ebp-0x58], xmm5
	addss xmm1, xmm3
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movss [ebp-0x54], xmm0
	movss xmm0, dword [ebp-0xa0]
	addss xmm0, [ebp-0x9c]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [ebp-0xa4]
	addss xmm0, [ebp-0x98]
	movss [ebp-0x4c], xmm0
	movss xmm5, dword [ebp-0x9c]
	subss xmm5, [ebp-0xa0]
	movss [ebp-0x48], xmm5
	addss xmm3, xmm4
	subss xmm2, xmm3
	movss [ebp-0x44], xmm2
	movss xmm7, dword [ebp-0x74]
	movss [ebp-0x40], xmm7
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x3c], xmm0
	movss xmm5, dword [ebp-0x7c]
	movss [ebp-0x38], xmm5
	mov eax, vec3_origin
	addss xmm7, [eax]
	movss [ebp-0x40], xmm7
	addss xmm0, [eax+0x4]
	movss [ebp-0x3c], xmm0
	addss xmm5, [eax+0x8]
	movss [ebp-0x38], xmm5
	cmp si, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_10
	mov eax, fx_marksSystemPool
	mov [ebp-0xac], eax
	mov [ebp-0xbc], eax
FX_GenerateMarkVertsForEntXModel_30:
	movzx eax, dx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, [ebp-0xac]
	mov [ebp-0x90], eax
	movzx eax, byte [eax+0x33]
	and eax, 0xc0
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForEntXModel_20
FX_GenerateMarkVertsForEntXModel_400:
	mov eax, [ebp-0x90]
	movzx edx, word [eax+0x2]
	cmp dx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_30
FX_GenerateMarkVertsForEntXModel_10:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntXModel_20:
	mov ecx, [ebp+0x10]
	mov edx, [ecx]
	mov ebx, [ebp-0x90]
	movzx eax, byte [ebx+0x36]
	lea eax, [eax+eax*2]
	lea esi, [edx+eax]
	lea ebx, [esi+0x1]
	and ebx, 0xfffffffe
	add edx, 0x1
	and edx, 0xfffffffe
	sub ebx, edx
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x38]
	mov [esp], eax
	call R_ReserveMarkMeshVerts
	test al, al
	jnz FX_GenerateMarkVertsForEntXModel_40
FX_GenerateMarkVertsForEntXModel_220:
	mov ecx, [ebp-0x90]
	movzx eax, byte [ecx+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_GenerateMarkVertsForEntXModel_50
	jg FX_GenerateMarkVertsForEntXModel_60
	test eax, eax
	jnz FX_GenerateMarkVertsForEntXModel_70
	mov ecx, [ebp-0xac]
	lea eax, [ecx+0x810]
	mov edx, [ebp-0x90]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x90]
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0xac]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntXModel_80
FX_GenerateMarkVertsForEntXModel_90:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_80:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_90
	mov edx, [ebp-0x90]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntXModel_100
FX_GenerateMarkVertsForEntXModel_110:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_100:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_110
	mov ebx, [ebp-0x90]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_120
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntXModel_450:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_130
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
FX_GenerateMarkVertsForEntXModel_440:
	mov ecx, [ebp-0x90]
	mov dword [ecx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov ebx, [ebp-0x90]
	mov [ebx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntXModel_140
FX_GenerateMarkVertsForEntXModel_50:
	mov edx, ecx
	mov ebx, ecx
	mov ecx, [ebp-0xac]
	lea eax, [ecx+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ecx, [ebx+0x3c]
	mov eax, [ebp-0xac]
	lea ebx, [eax+0x9010]
	mov esi, fx_marksSystemPool
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntXModel_150
FX_GenerateMarkVertsForEntXModel_160:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_150:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_160
	mov edx, [ebp-0x90]
	mov ecx, [edx+0x40]
	lea ebx, [esi+0x15010]
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntXModel_170
FX_GenerateMarkVertsForEntXModel_180:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_170:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_180
	mov ebx, [ebp-0x90]
	movzx ecx, word [ebx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_190
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntXModel_420:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_200
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov [esi+eax+0x2], cx
	mov ecx, [ebp-0x90]
FX_GenerateMarkVertsForEntXModel_410:
	mov dword [ecx+0x4], 0xffffffff
	movzx eax, word [esi+0x4]
	mov [ecx+0x2], ax
	mov [esi+0x4], di
FX_GenerateMarkVertsForEntXModel_140:
	add dword [esi+0x48018], 0x1
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForEntXModel_60:
	cmp eax, 0x80
	jz FX_GenerateMarkVertsForEntXModel_210
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForEntXModel_210
FX_GenerateMarkVertsForEntXModel_70:
	mov esi, fx_marksSystemPool
	jmp FX_GenerateMarkVertsForEntXModel_140
FX_GenerateMarkVertsForEntXModel_40:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_ReserveMarkMeshIndices
	test al, al
	jz FX_GenerateMarkVertsForEntXModel_220
	mov ebx, [ebp+0x10]
	mov ecx, [ebx]
	and ecx, 0x1
	add ecx, ecx
	mov edx, [ebp-0x20]
	mov [ebx], esi
	mov ebx, [ebp-0xac]
	mov eax, [ebx]
	mov ebx, [ebp-0x90]
	mov [ebx+0x4], eax
	mov eax, [ebx+0x3c]
	mov [ebp-0x80], eax
	movzx ebx, byte [ebx+0x36]
	mov [ebp-0x88], ebx
	mov ebx, [ebp-0x90]
	mov eax, [ebx+0x2c]
	mov [ebp-0x34], eax
	mov byte [ebp-0x30], 0xff
	mov byte [ebp-0x2f], 0x0
	mov byte [ebp-0x2e], 0xff
	movzx eax, byte [ebx+0x33]
	mov [ebp-0x2d], al
	movzx eax, word [ebx+0x34]
	mov [ebp-0x2c], ax
	sub edx, ecx
	mov [ebp-0x24], edx
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0xac]
	add eax, 0x9010
	mov [ebp-0x70], eax
	movzx edx, word [ebp-0x1a]
	mov [ebp-0x6a], dx
	mov ebx, eax
FX_GenerateMarkVertsForEntXModel_390:
	add ebx, [ebp-0x80]
	mov [ebp-0x8c], ebx
	mov eax, [ebx+0x14]
	mov [ebp-0x80], eax
	movzx eax, byte [ebx+0x12]
	sub [ebp-0x88], eax
	mov dword [ebp-0x84], 0x0
	lea edx, [ebx+0xc]
	mov [ebp-0xb4], edx
	mov edi, edx
	jmp FX_GenerateMarkVertsForEntXModel_230
FX_GenerateMarkVertsForEntXModel_280:
	mov ecx, [ebp-0xb8]
	test ecx, ecx
	jnz FX_GenerateMarkVertsForEntXModel_240
	mov edx, [ebp-0x24]
FX_GenerateMarkVertsForEntXModel_370:
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+0xc]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0xb4]
	movzx eax, word [ecx+0x4]
	mov [ebp-0x2c], ax
	mov esi, [ebp-0xbc]
	cmp byte [esi+0x48011], 0x0
	jnz FX_GenerateMarkVertsForEntXModel_250
FX_GenerateMarkVertsForEntXModel_290:
	movzx ecx, word [ebp-0x6a]
	add cx, [ebx]
	mov eax, [ebp-0xb8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x2]
	mov [edx+0x2], ax
	mov [edx], cx
	mov byte [esi+0x48011], 0x1
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x4]
	mov [esi+0x48012], ax
FX_GenerateMarkVertsForEntXModel_300:
	mov eax, [ebp-0x28]
	add eax, 0x3
	mov [ebp-0xb8], eax
	mov [ebp-0x28], eax
	add dword [ebp-0x84], 0x1
	add ebx, 0x6
	mov edx, [ebp-0x8c]
	movzx eax, byte [edx+0x12]
	cmp [ebp-0x84], eax
	jz FX_GenerateMarkVertsForEntXModel_260
	mov edi, [ebp-0xb4]
FX_GenerateMarkVertsForEntXModel_230:
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x30]
	repe cmpsb
	mov eax, 0x0
	jz FX_GenerateMarkVertsForEntXModel_270
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_GenerateMarkVertsForEntXModel_270:
	test eax, eax
	jnz FX_GenerateMarkVertsForEntXModel_280
	mov edx, [ebp-0x24]
	mov esi, [ebp-0xbc]
	cmp byte [esi+0x48011], 0x0
	jz FX_GenerateMarkVertsForEntXModel_290
FX_GenerateMarkVertsForEntXModel_250:
	movzx ecx, word [esi+0x48012]
	mov eax, [ebp-0xb8]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx]
	mov [edx], ax
	mov [edx-0x2], cx
	movzx ecx, word [ebp-0x6a]
	add cx, [ebx+0x2]
	movzx eax, word [ebp-0x6a]
	add ax, [ebx+0x4]
	mov [edx+0x4], ax
	mov [edx+0x2], cx
	mov byte [esi+0x48011], 0x0
	jmp FX_GenerateMarkVertsForEntXModel_300
FX_GenerateMarkVertsForEntXModel_210:
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x34]
	mov esi, fx_marksSystemPool
	lea eax, [esi+eax*2+0x8]
	mov [ebp-0x94], eax
	lea eax, [esi+0x810]
	sub edx, eax
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edi, eax
	neg edi
	mov ebx, [ebp-0x90]
	mov ecx, [ebx+0x3c]
	lea ebx, [esi+0x9010]
	mov edx, [esi+0x808]
	jmp FX_GenerateMarkVertsForEntXModel_310
FX_GenerateMarkVertsForEntXModel_320:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_310:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_320
	mov eax, [ebp-0x90]
	mov ecx, [eax+0x40]
	lea ebx, [esi+0x15010]
	mov [ebp-0xb0], esi
	mov edx, [esi+0x80c]
	jmp FX_GenerateMarkVertsForEntXModel_330
FX_GenerateMarkVertsForEntXModel_340:
	mov edx, eax
FX_GenerateMarkVertsForEntXModel_330:
	lea eax, [ecx+ebx]
	mov ecx, [eax+0x40]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForEntXModel_340
	mov edx, [ebp-0x90]
	movzx ecx, word [edx+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_350
	mov ebx, edx
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov edx, [ebp-0x90]
FX_GenerateMarkVertsForEntXModel_350:
	movzx eax, word [edx]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForEntXModel_360
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov ebx, [ebp-0xb0]
	mov [ebx+eax+0x2], cx
FX_GenerateMarkVertsForEntXModel_430:
	mov edx, [ebp-0x90]
	mov dword [edx+0x4], 0xffffffff
	movzx ecx, word [esi+0x4]
	mov [edx+0x2], cx
	mov [esi+0x4], di
	jmp FX_GenerateMarkVertsForEntXModel_140
FX_GenerateMarkVertsForEntXModel_240:
	mov ecx, [ebp-0xb8]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	mov edx, [ebp-0x28]
	mov [ebp-0xb8], edx
	mov edx, [ebp-0x24]
	mov ecx, [ebp-0xb8]
	lea edx, [edx+ecx*2]
	mov [ebp-0x24], edx
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x28], 0x0
	jmp FX_GenerateMarkVertsForEntXModel_370
FX_GenerateMarkVertsForEntXModel_260:
	mov edx, [ebp-0x88]
	test edx, edx
	jz FX_GenerateMarkVertsForEntXModel_380
	mov ebx, [ebp-0x70]
	jmp FX_GenerateMarkVertsForEntXModel_390
FX_GenerateMarkVertsForEntXModel_380:
	movzx ecx, word [ebp-0xa6]
	mov [ebp-0x2c], cx
	movzx ebx, byte [ebp-0xa7]
	mov [ebp-0x2e], bl
	movzx ecx, word [ebp-0x1a]
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	mov edx, [ebp-0x90]
	mov eax, esi
	call FX_GenerateMarkVertsForMark_FinishAnimated
	jmp FX_GenerateMarkVertsForEntXModel_400
FX_GenerateMarkVertsForEntXModel_200:
	mov ecx, edx
	jmp FX_GenerateMarkVertsForEntXModel_410
FX_GenerateMarkVertsForEntXModel_190:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntXModel_420
FX_GenerateMarkVertsForEntXModel_360:
	mov ebx, [ebp-0x94]
	test ebx, ebx
	jz FX_GenerateMarkVertsForEntXModel_430
	mov eax, [ebp-0x94]
	mov [eax], cx
	jmp FX_GenerateMarkVertsForEntXModel_430
FX_GenerateMarkVertsForEntXModel_130:
	mov [esi+0x6], cx
	jmp FX_GenerateMarkVertsForEntXModel_440
FX_GenerateMarkVertsForEntXModel_120:
	mov edx, ebx
	jmp FX_GenerateMarkVertsForEntXModel_450


;FX_GenerateMarkVertsForStaticModels(int, int, unsigned char const*)
FX_GenerateMarkVertsForStaticModels:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov dword [ebp-0xbc], 0x0
	mov dword [ebp-0xc0], 0x0
	mov dword [ebp-0xc4], 0x0
	mov dword [ebp-0xc8], 0x0
	call R_BeginMarkMeshVerts
	mov eax, [ebp+0x8]
	mov [esp], eax
	call FX_GetSystem
	mov eax, fx_marksSystemPool
	mov [ebp-0xd4], eax
	mov byte [eax+0x48011], 0x0
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0x5c], 0x0
	lea edx, [eax+0x814]
	mov [ebp-0x58], edx
	mov [ebp-0xec], eax
	mov ecx, edx
	jmp FX_GenerateMarkVertsForStaticModels_10
FX_GenerateMarkVertsForStaticModels_30:
	add dword [ebp-0x5c], 0x44
	add dword [ebp-0x58], 0x44
	cmp dword [ebp-0x5c], 0x8800
	jz FX_GenerateMarkVertsForStaticModels_20
FX_GenerateMarkVertsForStaticModels_80:
	mov ecx, [ebp-0x58]
FX_GenerateMarkVertsForStaticModels_10:
	cmp dword [ecx], 0xffffffff
	jz FX_GenerateMarkVertsForStaticModels_30
	cmp word [ecx-0x4], 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_30
	movzx eax, byte [ecx+0x2f]
	and eax, 0xc0
	cmp eax, 0x40
	jnz FX_GenerateMarkVertsForStaticModels_30
	movzx eax, word [ecx+0x30]
	mov ebx, [ebp+0x10]
	cmp byte [eax+ebx], 0x0
	jz FX_GenerateMarkVertsForStaticModels_30
	mov esi, [ebp-0xd4]
	add esi, 0x810
	mov [ebp-0xb4], esi
	mov eax, [ebp-0x5c]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	mov eax, edx
	neg eax
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_30
	mov edi, [ebp-0xec]
	mov [ebp-0xcc], edi
	mov edx, [ebp-0xd4]
	mov [ebp-0xf0], edx
FX_GenerateMarkVertsForStaticModels_400:
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	add eax, [ebp-0xd4]
	mov [ebp-0xa0], eax
	mov ecx, eax
	movzx eax, byte [eax+0x36]
	lea eax, [eax+eax*2]
	add eax, [ebp-0xb8]
	mov [ebp-0x4c], eax
	mov ebx, eax
	add ebx, 0x1
	and ebx, 0xfffffffe
	mov eax, [ebp-0xb8]
	add eax, 0x1
	and eax, 0xfffffffe
	sub ebx, eax
	lea esi, [ebp-0x1a]
	mov [esp+0x4], esi
	movzx eax, word [ecx+0x38]
	mov [esp], eax
	call R_ReserveMarkMeshVerts
	test al, al
	jnz FX_GenerateMarkVertsForStaticModels_40
FX_GenerateMarkVertsForStaticModels_100:
	mov edi, [ebp-0xa0]
	movzx eax, byte [edi+0x33]
	and eax, 0xc0
	cmp eax, 0x40
	jz FX_GenerateMarkVertsForStaticModels_50
	jg FX_GenerateMarkVertsForStaticModels_60
	test eax, eax
	jz FX_GenerateMarkVertsForStaticModels_70
	mov eax, fx_marksSystemPool
	mov [ebp-0xd4], eax
	mov esi, eax
FX_GenerateMarkVertsForStaticModels_230:
	add dword [esi+0x48018], 0x1
	add dword [ebp-0x5c], 0x44
	add dword [ebp-0x58], 0x44
	cmp dword [ebp-0x5c], 0x8800
	jnz FX_GenerateMarkVertsForStaticModels_80
FX_GenerateMarkVertsForStaticModels_20:
	mov ebx, [ebp-0xd4]
	cmp byte [ebx+0x48011], 0x0
	jz FX_GenerateMarkVertsForStaticModels_90
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call R_ReserveMarkMeshIndices
	mov ecx, [ebp-0x20]
	lea eax, [ecx-0x4]
	mov [ebp-0x20], eax
	movzx edx, word [ebx+0x48012]
	mov word [eax+0x2], 0x0
	mov [ecx-0x4], dx
FX_GenerateMarkVertsForStaticModels_90:
	call R_EndMarkMeshVerts
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_GenerateMarkVertsForStaticModels_40:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_ReserveMarkMeshIndices
	test al, al
	jz FX_GenerateMarkVertsForStaticModels_100
	and dword [ebp-0xb8], 0x1
	mov ecx, [ebp-0xb8]
	add ecx, ecx
	mov edx, [ebp-0x20]
	mov ebx, [ebp-0xcc]
	mov eax, [ebx]
	mov esi, [ebp-0xa0]
	mov [esi+0x4], eax
	mov edi, [esi+0x3c]
	mov [ebp-0xa4], edi
	movzx eax, byte [esi+0x36]
	mov [ebp-0xac], eax
	mov eax, [esi+0x2c]
	mov [ebp-0x44], eax
	mov byte [ebp-0x40], 0xff
	mov byte [ebp-0x3f], 0x0
	mov byte [ebp-0x3e], 0xff
	movzx eax, byte [esi+0x33]
	mov [ebp-0x3d], al
	movzx eax, word [esi+0x34]
	mov [ebp-0x3c], ax
	sub edx, ecx
	mov [ebp-0x34], edx
	mov dword [ebp-0xe4], 0x0
	mov dword [ebp-0x38], 0x0
	lea edx, [ebx+0x9010]
	mov [ebp-0x68], edx
	movzx ecx, word [ebp-0x1a]
	mov [ebp-0x62], cx
	mov edi, edx
FX_GenerateMarkVertsForStaticModels_210:
	add edi, [ebp-0xa4]
	mov [ebp-0xb0], edi
	mov eax, [edi+0x14]
	mov [ebp-0xa4], eax
	movzx eax, byte [edi+0x12]
	sub [ebp-0xac], eax
	mov dword [ebp-0xa8], 0x0
	lea edx, [edi+0xc]
	mov [ebp-0xd8], edx
	mov ebx, edi
	mov edi, edx
	jmp FX_GenerateMarkVertsForStaticModels_110
FX_GenerateMarkVertsForStaticModels_160:
	mov esi, [ebp-0xe4]
	test esi, esi
	jnz FX_GenerateMarkVertsForStaticModels_120
	mov edx, [ebp-0x34]
FX_GenerateMarkVertsForStaticModels_190:
	mov ecx, [ebp-0xb0]
	mov eax, [ecx+0xc]
	mov [ebp-0x40], eax
	mov esi, [ebp-0xd8]
	movzx eax, word [esi+0x4]
	mov [ebp-0x3c], ax
	mov edi, [ebp-0xf0]
	mov [ebp-0xd4], edi
	cmp byte [edi+0x48011], 0x0
	jnz FX_GenerateMarkVertsForStaticModels_130
FX_GenerateMarkVertsForStaticModels_170:
	movzx ecx, word [ebp-0x62]
	add cx, [ebx]
	mov eax, [ebp-0xe4]
	lea edx, [edx+eax*2]
	movzx eax, word [ebp-0x62]
	add ax, [ebx+0x2]
	mov [edx+0x2], ax
	mov [edx], cx
	mov byte [edi+0x48011], 0x1
	movzx eax, word [ebp-0x62]
	add ax, [ebx+0x4]
	mov [edi+0x48012], ax
FX_GenerateMarkVertsForStaticModels_180:
	mov edx, [ebp-0x38]
	add edx, 0x3
	mov [ebp-0xe4], edx
	mov [ebp-0x38], edx
	add dword [ebp-0xa8], 0x1
	add ebx, 0x6
	mov ecx, [ebp-0xb0]
	movzx eax, byte [ecx+0x12]
	cmp [ebp-0xa8], eax
	jz FX_GenerateMarkVertsForStaticModels_140
	mov edi, [ebp-0xd8]
FX_GenerateMarkVertsForStaticModels_110:
	mov ecx, 0x6
	cld
	lea esi, [ebp-0x40]
	repe cmpsb
	mov eax, 0x0
	jz FX_GenerateMarkVertsForStaticModels_150
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
FX_GenerateMarkVertsForStaticModels_150:
	test eax, eax
	jnz FX_GenerateMarkVertsForStaticModels_160
	mov edx, [ebp-0x34]
	mov edi, [ebp-0xf0]
	mov [ebp-0xd4], edi
	cmp byte [edi+0x48011], 0x0
	jz FX_GenerateMarkVertsForStaticModels_170
FX_GenerateMarkVertsForStaticModels_130:
	mov esi, edi
	movzx ecx, word [edi+0x48012]
	mov edi, [ebp-0xe4]
	lea edx, [edx+edi*2]
	movzx eax, word [ebp-0x62]
	add ax, [ebx]
	mov [edx], ax
	mov [edx-0x2], cx
	movzx ecx, word [ebp-0x62]
	add cx, [ebx+0x2]
	movzx eax, word [ebp-0x62]
	add ax, [ebx+0x4]
	mov [edx+0x4], ax
	mov [edx+0x2], cx
	mov byte [esi+0x48011], 0x0
	jmp FX_GenerateMarkVertsForStaticModels_180
FX_GenerateMarkVertsForStaticModels_120:
	mov ecx, [ebp-0xe4]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea esi, [ebp-0x40]
	mov [esp+0x4], esi
	mov eax, [ebp-0x44]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	mov edi, [ebp-0x38]
	mov edx, [ebp-0x34]
	lea edx, [edx+edi*2]
	mov [ebp-0x34], edx
	mov dword [ebp-0xe4], 0x0
	mov dword [ebp-0x38], 0x0
	jmp FX_GenerateMarkVertsForStaticModels_190
FX_GenerateMarkVertsForStaticModels_140:
	mov ecx, [ebp-0xac]
	test ecx, ecx
	jz FX_GenerateMarkVertsForStaticModels_200
	mov edi, [ebp-0x68]
	jmp FX_GenerateMarkVertsForStaticModels_210
FX_GenerateMarkVertsForStaticModels_60:
	cmp eax, 0x80
	jz FX_GenerateMarkVertsForStaticModels_220
	cmp eax, 0xc0
	jz FX_GenerateMarkVertsForStaticModels_220
	mov ebx, fx_marksSystemPool
	mov [ebp-0xd4], ebx
	mov esi, ebx
	jmp FX_GenerateMarkVertsForStaticModels_230
FX_GenerateMarkVertsForStaticModels_50:
	mov eax, edi
	sub eax, [ebp-0xb4]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	mov esi, edx
	neg esi
	mov ecx, [edi+0x3c]
	mov edi, [ebp-0xcc]
	lea ebx, [edi+0x9010]
	mov eax, fx_marksSystemPool
	mov [ebp-0xd4], eax
	mov edi, eax
	jmp FX_GenerateMarkVertsForStaticModels_240
FX_GenerateMarkVertsForStaticModels_250:
	mov edi, [ebp-0xd4]
FX_GenerateMarkVertsForStaticModels_240:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_250
	mov eax, [ebp-0xa0]
	mov ecx, [eax+0x40]
	lea ebx, [edi+0x15010]
FX_GenerateMarkVertsForStaticModels_260:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xd4]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_260
	mov eax, [ebp-0xa0]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_270
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
	mov edi, [ebp-0xa0]
FX_GenerateMarkVertsForStaticModels_580:
	movzx eax, word [edi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_280
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xd4]
	mov [edx+eax+0x2], cx
	mov ecx, [ebp-0xa0]
FX_GenerateMarkVertsForStaticModels_570:
	mov dword [ecx+0x4], 0xffffffff
	mov ebx, [ebp-0xd4]
	movzx eax, word [ebx+0x4]
	mov [ecx+0x2], ax
	mov [ebx+0x4], si
	mov esi, [ebp-0xd4]
	jmp FX_GenerateMarkVertsForStaticModels_230
FX_GenerateMarkVertsForStaticModels_70:
	mov eax, [ebp-0xa0]
	sub eax, [ebp-0xb4]
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	sub edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	mov esi, edx
	neg esi
	mov edi, [ebp-0xa0]
	mov ecx, [edi+0x3c]
	mov eax, [ebp-0xcc]
	lea ebx, [eax+0x9010]
	mov edx, fx_marksSystemPool
	mov [ebp-0xd4], edx
	mov edi, edx
	jmp FX_GenerateMarkVertsForStaticModels_290
FX_GenerateMarkVertsForStaticModels_300:
	mov edi, [ebp-0xd4]
FX_GenerateMarkVertsForStaticModels_290:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [edi+0x808]
	mov [eax], edx
	mov [edi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_300
	mov eax, [ebp-0xa0]
	mov ecx, [eax+0x40]
	lea ebx, [edi+0x15010]
FX_GenerateMarkVertsForStaticModels_310:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov edi, [ebp-0xd4]
	mov edx, [edi+0x80c]
	mov [eax], edx
	mov [edi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_310
	mov eax, [ebp-0xa0]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_320
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [edi+eax], dx
	mov edi, [ebp-0xa0]
FX_GenerateMarkVertsForStaticModels_620:
	movzx eax, word [edi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_330
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edx, [ebp-0xd4]
	mov [edx+eax+0x2], cx
FX_GenerateMarkVertsForStaticModels_610:
	mov edi, [ebp-0xa0]
	mov dword [edi+0x4], 0xffffffff
	mov eax, [ebp-0xd4]
	movzx ecx, word [eax+0x4]
	mov [edi+0x2], cx
	mov [eax+0x4], si
	mov esi, [ebp-0xd4]
	jmp FX_GenerateMarkVertsForStaticModels_230
FX_GenerateMarkVertsForStaticModels_200:
	mov ebx, [ebp-0x4c]
	mov [ebp-0xb8], ebx
	movzx esi, word [ebp-0x1a]
	movzx ebx, byte [ebp-0x3d]
	and ebx, 0xc0
	mov [esp+0xc], edx
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	lea edi, [ebp-0x40]
	mov [esp+0x4], edi
	mov eax, [ebp-0x44]
	mov [esp], eax
	call R_AddMarkMeshDrawSurf
	test ebx, ebx
	jnz FX_GenerateMarkVertsForStaticModels_340
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov ecx, eax
	mov eax, [ebp-0xa0]
	movzx eax, word [eax+0x38]
	mov [ebp-0xfc], eax
	movss xmm0, dword [_float_0_50000000]
	mov edx, [ebp-0xa0]
	divss xmm0, dword [edx+0x18]
	movss [ebp-0x9c], xmm0
	mov eax, [edx+0x40]
	mov [ebp-0x98], eax
	mov edx, fx_marksSystemPool
	mov [ebp-0xd4], edx
	lea ebx, [edx+0x15010]
	mov [ebp-0x6c], ebx
	mov esi, [ebp-0xa0]
	lea edi, [esi+0xc]
	mov eax, ebx
	add eax, [ebp-0x98]
	mov edx, [eax+0x40]
	mov [ebp-0x98], edx
	cmp dword [ebp-0xfc], 0x2
	jg FX_GenerateMarkVertsForStaticModels_350
FX_GenerateMarkVertsForStaticModels_380:
	mov dword [ebp-0x50], 0x0
FX_GenerateMarkVertsForStaticModels_390:
	mov edx, eax
	mov dword [ebp-0x12c], 0x0
FX_GenerateMarkVertsForStaticModels_360:
	movss xmm0, dword [edx]
	movaps xmm2, xmm0
	mov esi, [ebp-0xa0]
	subss xmm2, [esi+0xc]
	movss xmm5, dword [edx+0x4]
	subss xmm5, [edi+0x4]
	movss xmm6, dword [edx+0x8]
	subss xmm6, [edi+0x8]
	movss xmm1, dword [esi+0x20]
	movss [ebp-0x94], xmm1
	movss xmm7, dword [edx+0x1c]
	movss xmm3, dword [esi+0x24]
	movss xmm4, dword [edx+0x18]
	movss xmm1, dword [edx+0x14]
	movss [ebp-0x90], xmm1
	movss xmm1, dword [esi+0x1c]
	movss [ebp-0x8c], xmm1
	movss [ecx], xmm0
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0xbf800000
	mov eax, [esi+0x28]
	mov [ecx+0x10], eax
	movaps xmm0, xmm2
	mulss xmm0, [esi+0x1c]
	movaps xmm1, xmm5
	mulss xmm1, [esi+0x20]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [esi+0x24]
	addss xmm0, xmm1
	mulss xmm0, [ebp-0x9c]
	addss xmm0, [_float_0_50000000]
	movss [ecx+0x14], xmm0
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, xmm7
	movaps xmm1, xmm3
	mulss xmm1, xmm4
	subss xmm0, xmm1
	mulss xmm2, xmm0
	mulss xmm3, [ebp-0x90]
	mulss xmm7, [ebp-0x8c]
	subss xmm3, xmm7
	mulss xmm5, xmm3
	addss xmm2, xmm5
	mulss xmm4, [ebp-0x8c]
	movss xmm0, dword [ebp-0x94]
	mulss xmm0, [ebp-0x90]
	subss xmm4, xmm0
	mulss xmm6, xmm4
	addss xmm2, xmm6
	mulss xmm2, [ebp-0x9c]
	addss xmm2, [_float_0_50000000]
	movss [ecx+0x18], xmm2
	mov eax, [edx+0xc]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x10]
	mov [ecx+0x20], eax
	movss xmm0, dword [edx+0x14]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [edx+0x18]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [edx+0x1c]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xbc], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ebx, [ebp-0xbc]
	mov bh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	and ebx, 0xffffff
	or ebx, 0x3f000000
	mov [ebp-0xbc], ebx
	mov [ebp-0x30], ebx
	mov [ecx+0x24], ebx
	movss xmm0, dword [esi+0x1c]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [esi+0x20]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [esi+0x24]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xc0], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ebx, [ebp-0xc0]
	mov bh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ebx, 0xff00ffff
	or ebx, eax
	and ebx, 0xffffff
	or ebx, 0x3f000000
	mov [ebp-0xc0], ebx
	mov [ebp-0x30], ebx
	mov [ecx+0x28], ebx
	add edx, 0x20
	add ecx, 0x2c
	add dword [ebp-0x12c], 0x1
	mov esi, [ebp-0x12c]
	cmp [ebp-0xfc], esi
	jnz FX_GenerateMarkVertsForStaticModels_360
	mov eax, [ebp-0x50]
	test eax, eax
	jz FX_GenerateMarkVertsForStaticModels_370
	mov eax, [ebp-0x50]
	mov [ebp-0xfc], eax
	mov eax, [ebp-0x6c]
	add eax, [ebp-0x98]
	mov edx, [eax+0x40]
	mov [ebp-0x98], edx
	cmp dword [ebp-0xfc], 0x2
	jle FX_GenerateMarkVertsForStaticModels_380
FX_GenerateMarkVertsForStaticModels_350:
	mov ebx, [ebp-0xfc]
	sub ebx, 0x2
	mov [ebp-0x50], ebx
	mov dword [ebp-0xfc], 0x2
	jmp FX_GenerateMarkVertsForStaticModels_390
FX_GenerateMarkVertsForStaticModels_370:
	mov ecx, [ebp-0xa0]
	movzx eax, word [ecx+0x2]
	cmp ax, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_400
	jmp FX_GenerateMarkVertsForStaticModels_30
FX_GenerateMarkVertsForStaticModels_220:
	mov edx, [ebp-0xa0]
	movzx eax, word [edx+0x34]
	mov ecx, fx_marksSystemPool
	mov [ebp-0xd4], ecx
	lea edi, [ecx+eax*2+0x8]
	sub edx, [ebp-0xb4]
	sar edx, 0x2
	mov eax, edx
	shl eax, 0x4
	sub eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	neg eax
	mov [ebp-0xfc], ax
	mov ebx, [ebp-0xa0]
	mov ecx, [ebx+0x3c]
	mov esi, [ebp-0xd4]
	lea ebx, [esi+0x9010]
	jmp FX_GenerateMarkVertsForStaticModels_410
FX_GenerateMarkVertsForStaticModels_420:
	mov esi, [ebp-0xd4]
FX_GenerateMarkVertsForStaticModels_410:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x14]
	mov edx, [esi+0x808]
	mov [eax], edx
	mov [esi+0x808], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_420
	mov eax, [ebp-0xa0]
	mov ecx, [eax+0x40]
	lea ebx, [esi+0x15010]
	mov [ebp-0xd0], esi
FX_GenerateMarkVertsForStaticModels_430:
	lea eax, [ebx+ecx]
	mov ecx, [eax+0x40]
	mov esi, [ebp-0xd4]
	mov edx, [esi+0x80c]
	mov [eax], edx
	mov [esi+0x80c], eax
	cmp ecx, 0xffff
	jnz FX_GenerateMarkVertsForStaticModels_430
	mov eax, [ebp-0xa0]
	movzx ecx, word [eax+0x2]
	cmp cx, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_440
	mov ebx, eax
	movzx eax, cx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	movzx edx, word [ebx]
	mov [esi+eax], dx
	mov esi, [ebp-0xa0]
FX_GenerateMarkVertsForStaticModels_600:
	movzx eax, word [esi]
	cmp ax, 0xffff
	jz FX_GenerateMarkVertsForStaticModels_450
	movzx eax, ax
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4+0x810]
	mov edi, [ebp-0xd0]
	mov [edi+eax+0x2], cx
FX_GenerateMarkVertsForStaticModels_590:
	mov eax, [ebp-0xa0]
	mov dword [eax+0x4], 0xffffffff
	mov edx, [ebp-0xd4]
	movzx ecx, word [edx+0x4]
	mov [eax+0x2], cx
	movzx ecx, word [ebp-0xfc]
	mov [edx+0x4], cx
	mov esi, [ebp-0xd4]
	jmp FX_GenerateMarkVertsForStaticModels_230
FX_GenerateMarkVertsForStaticModels_340:
	movzx eax, si
	mov [esp], eax
	call R_GetMarkMeshVerts
	mov esi, eax
	mov edx, [ebp-0xa0]
	movzx edx, word [edx+0x38]
	mov [ebp-0x88], edx
	movss xmm0, dword [_float_0_50000000]
	mov ecx, [ebp-0xa0]
	divss xmm0, dword [ecx+0x18]
	movss [ebp-0x84], xmm0
	mov eax, [ecx+0x40]
	mov [ebp-0x80], eax
	mov edx, fx_marksSystemPool
	mov [ebp-0xd4], edx
	lea ecx, [edx+0x15010]
	mov [ebp-0x70], ecx
	mov ebx, [ebp-0xa0]
	lea edi, [ebx+0xc]
	lea eax, [ebx+0x1c]
	mov [ebp-0xdc], eax
	lea edx, [ebx+0x20]
	mov [ebp-0xe0], edx
	lea ecx, [ebx+0x24]
	mov [ebp-0xe8], ecx
	mov eax, [ebp-0x80]
	add eax, [ebp-0x70]
	mov ebx, [eax+0x40]
	mov [ebp-0x80], ebx
	cmp dword [ebp-0x88], 0x2
	jg FX_GenerateMarkVertsForStaticModels_460
FX_GenerateMarkVertsForStaticModels_550:
	mov dword [ebp-0x54], 0x0
FX_GenerateMarkVertsForStaticModels_560:
	mov dword [ebp-0x60], 0x0
	mov ebx, eax
	jmp FX_GenerateMarkVertsForStaticModels_470
FX_GenerateMarkVertsForStaticModels_500:
	mov eax, 0x3fff
FX_GenerateMarkVertsForStaticModels_520:
	mov ecx, edx
	or ecx, eax
	movss xmm1, dword [ebp-0x74]
	movss [ebp-0x20], xmm1
	mov eax, [ebp-0x20]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_GenerateMarkVertsForStaticModels_480
	mov eax, 0x3fff
FX_GenerateMarkVertsForStaticModels_540:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	movss xmm0, dword [ebx+0x14]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebx+0x18]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebx+0x1c]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xc4], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov edx, [ebp-0xc4]
	mov dh, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0xc4], edx
	mov [ebp-0x30], edx
	mov [esi+0x18], edx
	mov ecx, [ebp-0xdc]
	movss xmm0, dword [ecx]
	movss [ebp-0x30], xmm0
	mov eax, [ebp-0xe0]
	movss xmm1, dword [eax]
	movss [ebp-0x2c], xmm1
	mov edx, [ebp-0xe8]
	movss xmm2, dword [edx]
	movss [ebp-0x28], xmm2
	mov dword [ebp-0x24], 0x0
	mulss xmm0, [_float_127_00000000]
	addss xmm0, [_float_127_50000000]
	cvttss2si eax, xmm0
	mov [ebp-0xc8], al
	mulss xmm1, [_float_127_00000000]
	addss xmm1, [_float_127_50000000]
	cvttss2si eax, xmm1
	mov ecx, [ebp-0xc8]
	mov ch, al
	mulss xmm2, [_float_127_00000000]
	addss xmm2, [_float_127_50000000]
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and ecx, 0xff00ffff
	or ecx, eax
	and ecx, 0xffffff
	or ecx, 0x3f000000
	mov [ebp-0xc8], ecx
	mov [ebp-0x30], ecx
	mov [esi+0x1c], ecx
	add ebx, 0x20
	add esi, 0x2c
	add dword [ebp-0x60], 0x1
	mov eax, [ebp-0x60]
	cmp [ebp-0x88], eax
	jz FX_GenerateMarkVertsForStaticModels_490
FX_GenerateMarkVertsForStaticModels_470:
	movss xmm3, dword [ebx]
	mov ecx, [ebp-0xa0]
	subss xmm3, [ecx+0xc]
	movss xmm6, dword [ebx+0x4]
	subss xmm6, [edi+0x4]
	movss xmm7, dword [ebx+0x8]
	subss xmm7, [edi+0x8]
	movss xmm5, dword [ecx+0x20]
	movss xmm4, dword [ebx+0x1c]
	movss xmm1, dword [ecx+0x24]
	movss xmm2, dword [ebx+0x18]
	movss xmm0, dword [ebx+0x14]
	movss [ebp-0x7c], xmm0
	movss xmm0, dword [ecx+0x1c]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [ebx]
	movss [esi], xmm0
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov dword [esi+0xc], 0xbf800000
	mov eax, [ecx+0x28]
	mov [esi+0x10], eax
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	movss [ebp-0x74], xmm0
	movaps xmm0, xmm1
	mulss xmm0, xmm2
	movss [ebp-0x11c], xmm0
	movss xmm0, dword [ebp-0x74]
	subss xmm0, [ebp-0x11c]
	mulss xmm0, xmm3
	mulss xmm1, [ebp-0x7c]
	mulss xmm4, [ebp-0x78]
	subss xmm1, xmm4
	mulss xmm1, xmm6
	addss xmm1, xmm0
	mulss xmm2, [ebp-0x78]
	mulss xmm5, [ebp-0x7c]
	subss xmm2, xmm5
	mulss xmm2, xmm7
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x84]
	mulss xmm1, xmm2
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm1
	movss [ebp-0x74], xmm0
	mulss xmm3, [ecx+0x1c]
	mulss xmm6, [ecx+0x20]
	addss xmm3, xmm6
	mulss xmm7, [ecx+0x24]
	addss xmm3, xmm7
	mulss xmm3, [ebp-0x84]
	addss xmm3, [_float_0_50000000]
	movss [ebp-0x20], xmm3
	mov eax, [ebp-0x20]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jg FX_GenerateMarkVertsForStaticModels_500
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForStaticModels_510
	xor eax, eax
	jmp FX_GenerateMarkVertsForStaticModels_520
FX_GenerateMarkVertsForStaticModels_480:
	cmp eax, 0xffffc000
	jg FX_GenerateMarkVertsForStaticModels_530
	xor eax, eax
	jmp FX_GenerateMarkVertsForStaticModels_540
FX_GenerateMarkVertsForStaticModels_490:
	mov eax, [ebp-0x54]
	test eax, eax
	jz FX_GenerateMarkVertsForStaticModels_370
	mov edx, [ebp-0x54]
	mov [ebp-0x88], edx
	mov eax, [ebp-0x80]
	add eax, [ebp-0x70]
	mov ebx, [eax+0x40]
	mov [ebp-0x80], ebx
	cmp dword [ebp-0x88], 0x2
	jle FX_GenerateMarkVertsForStaticModels_550
FX_GenerateMarkVertsForStaticModels_460:
	mov edx, [ebp-0x88]
	sub edx, 0x2
	mov [ebp-0x54], edx
	mov dword [ebp-0x88], 0x2
	jmp FX_GenerateMarkVertsForStaticModels_560
FX_GenerateMarkVertsForStaticModels_280:
	mov ecx, edi
	jmp FX_GenerateMarkVertsForStaticModels_570
FX_GenerateMarkVertsForStaticModels_270:
	mov edi, eax
	jmp FX_GenerateMarkVertsForStaticModels_580
FX_GenerateMarkVertsForStaticModels_450:
	test edi, edi
	jz FX_GenerateMarkVertsForStaticModels_590
	mov [edi], cx
	jmp FX_GenerateMarkVertsForStaticModels_590
FX_GenerateMarkVertsForStaticModels_440:
	mov esi, eax
	jmp FX_GenerateMarkVertsForStaticModels_600
FX_GenerateMarkVertsForStaticModels_330:
	mov ebx, [ebp-0xd4]
	mov [ebx+0x6], cx
	jmp FX_GenerateMarkVertsForStaticModels_610
FX_GenerateMarkVertsForStaticModels_320:
	mov edi, eax
	jmp FX_GenerateMarkVertsForStaticModels_620
FX_GenerateMarkVertsForStaticModels_530:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForStaticModels_540
FX_GenerateMarkVertsForStaticModels_510:
	and eax, 0x3fff
	jmp FX_GenerateMarkVertsForStaticModels_520


;FX_EndGeneratingMarkVertsForEntModels(int)
FX_EndGeneratingMarkVertsForEntModels:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, fx_marksSystemPool
	cmp byte [ebx+0x48011], 0x0
	jz FX_EndGeneratingMarkVertsForEntModels_10
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call R_ReserveMarkMeshIndices
	mov ecx, [ebp-0xc]
	lea eax, [ecx-0x4]
	mov [ebp-0xc], eax
	movzx edx, word [ebx+0x48012]
	mov word [eax+0x2], 0x0
	mov [ecx-0x4], dx
FX_EndGeneratingMarkVertsForEntModels_10:
	call R_EndMarkMeshVerts
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;FX_BeginGeneratingMarkVertsForEntModels(int, unsigned int*)
FX_BeginGeneratingMarkVertsForEntModels:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call R_BeginMarkMeshVerts
	mov eax, fx_marksSystemPool
	mov byte [eax+0x48011], 0x0
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	leave
	ret


;void std::__adjust_heap<FxMarkTri*, int, FxMarkTri, unsigned char (*)(FxMarkTri const&, FxMarkTri const&)>(FxMarkTri*, int, int, FxMarkTri, unsigned char (*)(FxMarkTri const&, FxMarkTri const&))
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx eax, word [ebp+0x1e]
	mov [ebp-0x2e], ax
	movzx edx, byte [ebp+0x1d]
	mov [ebp-0x2f], dl
	movzx ecx, byte [ebp+0x1c]
	mov [ebp-0x30], cl
	movzx eax, byte [ebp+0x1b]
	mov [ebp-0x31], al
	movzx edx, byte [ebp+0x1a]
	mov [ebp-0x32], dl
	movzx ecx, word [ebp+0x18]
	mov [ebp-0x34], cx
	movzx eax, word [ebp+0x16]
	mov [ebp-0x36], ax
	movzx edx, word [ebp+0x14]
	mov [ebp-0x38], dx
	mov eax, [ebp+0xc]
	add eax, eax
	lea ebx, [eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	add eax, [ebp+0xc]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*4]
	mov edi, [ebp+0xc]
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x1a], ax
	movzx edx, byte [ebp-0x2f]
	mov [ebp-0x1b], dl
	movzx ecx, byte [ebp-0x30]
	mov [ebp-0x1c], cl
	movzx eax, byte [ebp-0x31]
	mov [ebp-0x1d], al
	movzx edx, byte [ebp-0x32]
	mov [ebp-0x1e], dl
	movzx ecx, word [ebp-0x34]
	mov [ebp-0x20], cx
	movzx eax, word [ebp-0x36]
	mov [ebp-0x22], ax
	movzx edx, word [ebp-0x38]
	mov [ebp-0x24], dx
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0x24]
	mov [esi], eax
	mov eax, [ebp-0x20]
	mov [esi+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	lea edx, [edi+edi*2]
	shl edx, 0x2
	mov eax, [esi]
	mov ecx, [ebp+0x8]
	mov [edx+ecx], eax
	mov eax, [esi+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+ecx+0x8], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	lea eax, [ebx+ebx*2]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*4]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jnz _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	lea eax, [edi+edi*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	jmp _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov eax, [ebp+0xc]
	mov [ebp-0x2c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	lea eax, [edi+edi*2]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*4]
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	mov eax, [ebp-0x2c]
	lea edx, [eax+eax*2]
	shl edx, 0x2
	mov eax, [esi]
	mov [edx+ecx], eax
	mov eax, [esi+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+ecx+0x8], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x2c], edi
	mov edi, ebx
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	lea eax, [esi-0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jnz _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	lea eax, [edx+edx*2]
	mov ecx, [ebp+0x8]
	lea eax, [ecx+eax*4]
	lea edx, [eax-0xc]
	mov eax, [eax-0xc]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	mov edi, [ebp+0x10]
	sub edi, 0x1
	lea eax, [edi+edi*2]
	lea esi, [ecx+eax*4]
	jmp _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100


;void std::__introsort_loop<FxMarkTri*, int, unsigned char (*)(FxMarkTri const&, FxMarkTri const&)>(FxMarkTri*, FxMarkTri*, int, unsigned char (*)(FxMarkTri const&, FxMarkTri const&))
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0xcb
	jle _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__170:
	cmp eax, 0x17
	jle _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov ecx, eax
	sar ecx, 0x2
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	mov [ebp-0x7c], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0x8c], eax
	lea eax, [eax+eax*2]
	mov edx, [ebp+0x8]
	lea ebx, [edx+eax*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov ecx, [ebx]
	mov [ebp-0x30], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x2c], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov esi, [ebp+0x14]
	mov [esp+0x18], esi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x8c]
	sub eax, edi
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub ebx, 0xc
	cmp edi, [ebp-0x8c]
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov esi, [ebp+0xc]
	mov [ebp-0x60], esi
	mov eax, esi
	sub eax, 0x2
	mov [ebp-0x5c], eax
	mov edx, esi
	sub edx, [ebp+0x8]
	mov [ebp-0x54], edx
	sub edx, 0xc
	mov [ebp-0x58], edx
	mov esi, eax
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov esi, [ebp-0x5c]
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	movzx edx, word [esi]
	movzx ecx, byte [esi-0x1]
	movzx ebx, byte [esi-0x2]
	movzx eax, byte [esi-0x3]
	mov [ebp-0x6d], al
	movzx eax, byte [esi-0x4]
	mov [ebp-0x6e], al
	movzx esi, word [esi-0x6]
	mov [ebp-0x70], si
	mov eax, [ebp-0x5c]
	movzx eax, word [eax-0x8]
	mov [ebp-0x72], ax
	mov esi, [ebp-0x5c]
	movzx esi, word [esi-0xa]
	mov [ebp-0x74], si
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov esi, [ebp-0x60]
	mov [esi-0xc], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	mov esi, [ebp-0x60]
	mov [esi-0x8], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x8]
	mov esi, [ebp-0x60]
	mov [esi-0x4], eax
	mov [ebp-0x1a], dx
	mov [ebp-0x1b], cl
	mov [ebp-0x1c], bl
	movzx eax, byte [ebp-0x6d]
	mov [ebp-0x1d], al
	movzx edx, byte [ebp-0x6e]
	mov [ebp-0x1e], dl
	movzx esi, word [ebp-0x70]
	mov [ebp-0x20], si
	movzx eax, word [ebp-0x72]
	mov [ebp-0x22], ax
	movzx edx, word [ebp-0x74]
	mov [ebp-0x24], dx
	mov esi, [ebp+0x14]
	mov [esp+0x18], esi
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x58]
	sar ecx, 0x2
	lea eax, [ecx+ecx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*2]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIP9FxMarkTriiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub dword [ebp-0x60], 0xc
	sub dword [ebp-0x5c], 0xc
	sub dword [ebp-0x58], 0xc
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x54]
	mov edx, [ebp-0x58]
	lea eax, [edx+eax+0xc]
	cmp eax, 0x17
	jg _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__60
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov esi, [ebp+0x10]
	mov [ebp-0x4c], esi
	mov dword [ebp-0x50], 0x0
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	sub dword [ebp-0x4c], 0x1
	mov edx, [ebp+0x8]
	mov [ebp-0x78], edx
	mov ecx, eax
	sar ecx, 0x2
	lea edx, [ecx+ecx*4]
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	mov eax, edx
	shl eax, 0x10
	add edx, eax
	lea edx, [ecx+edx*2]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	lea eax, [eax+eax*2]
	mov esi, [ebp+0x8]
	lea ebx, [esi+eax*4]
	mov esi, [ebp+0xc]
	sub esi, 0xc
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__70
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__180:
	mov [ebp-0x78], ebx
	mov esi, ebx
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	movzx edx, byte [esi+0x9]
	movzx ecx, byte [esi+0x8]
	movzx ebx, byte [esi+0x7]
	movzx eax, byte [esi+0x6]
	mov [ebp-0x36], al
	movzx esi, word [esi+0x4]
	mov [ebp-0x6a], si
	mov eax, [ebp-0x78]
	movzx eax, word [eax+0x2]
	mov [ebp-0x6c], ax
	mov esi, [ebp-0x78]
	movzx esi, word [esi]
	mov [ebp-0x3c], si
	mov esi, [ebp-0x78]
	movzx eax, word [esi+0xa]
	mov [ebp-0x32], ax
	mov [ebp-0x33], dl
	mov [ebp-0x34], cl
	mov [ebp-0x35], bl
	movzx eax, word [ebp-0x6a]
	mov [ebp-0x38], ax
	movzx edx, word [ebp-0x6c]
	mov [ebp-0x3a], dx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	sub edi, 0xc
	mov [esp+0x4], edi
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__100
	cmp esi, edi
	jae _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__110
	movzx edx, word [esi+0xa]
	movzx ecx, byte [esi+0x9]
	movzx ebx, byte [esi+0x8]
	movzx eax, byte [esi+0x7]
	mov [ebp-0x61], al
	movzx eax, byte [esi+0x6]
	mov [ebp-0x62], al
	movzx eax, word [esi+0x4]
	mov [ebp-0x64], ax
	movzx eax, word [esi+0x2]
	mov [ebp-0x66], ax
	movzx eax, word [esi]
	mov [ebp-0x68], ax
	mov eax, [edi]
	mov [esi], eax
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	mov eax, [edi+0x8]
	mov [esi+0x8], eax
	mov [edi+0xa], dx
	mov [edi+0x9], cl
	mov [edi+0x8], bl
	movzx edx, byte [ebp-0x61]
	mov [edi+0x7], dl
	movzx eax, byte [ebp-0x62]
	mov [edi+0x6], al
	movzx edx, word [ebp-0x64]
	mov [edi+0x4], dx
	movzx eax, word [ebp-0x66]
	mov [edi+0x2], ax
	movzx edx, word [ebp-0x68]
	mov [edi], dx
	add esi, 0xc
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__100
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	add esi, 0xc
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov [ebp-0x78], esi
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__140
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	mov esi, [ebp-0x78]
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__140
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__150
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0xcb
	jle _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x50], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp+0x10]
	cmp [ebp-0x50], edx
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__160
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__170
_ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__180
	mov [ebp-0x78], esi
	jmp _ZSt16__introsort_loopIP9FxMarkTriiPFhRKS0_S3_EEvT_S6_T0_T1__140
	nop


;Initialized global or static variables of fx_marks:
SECTION .data


;Initialized constant data of fx_marks:
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
g_zero: dd 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_marks:
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
g_fltMin: resb 0x20
g_fxMarkPoints: resb 0x5fe0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_127_00000000:		dd 0x42fe0000	; 127
_float_127_50000000:		dd 0x42ff0000	; 127.5
_float_0_10000000:		dd 0x3dcccccd	; 0.1
_double_57_29577951:		dq 0x404ca5dc1a63c1f8	; 57.2958
_float_1_00000000:		dd 0x3f800000	; 1

