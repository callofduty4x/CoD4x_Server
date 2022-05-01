;Imports of r_marks:
	extern rgp
	extern _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	extern memcpy
	extern _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	extern _Z23MatrixTransformVector43PKfPA3_S_Pf
	extern _Z10Com_MemsetPvii
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern _Z14XModelGetSkinsPK6XModeli
	extern _Z15DObjGetSurfacesPK6DObj_sPiPKc
	extern _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	extern _Z19DObjGetHidePartBitsPK6DObj_sPj
	extern _Z16DObjGetNumModelsPK6DObj_s
	extern _Z12DObjGetModelPK6DObj_si
	extern _Z12DObjNumBonesPK6DObj_s
	extern _Z17XModelGetBasePosePK6XModel
	extern _Z10Com_PrintfiPKcz
	extern _Z16MatrixMultiply43PA3_KfS1_PA3_f
	extern _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	extern _Z28XSurfaceVisitTrianglesInAabbPK8XSurfacejPKfS3_PFhPvPPK15GfxPackedVertexS8_ES4_
	extern _Z16CG_GetPoseAnglesPK7cpose_tPf
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z16CG_GetPoseOriginPK7cpose_tPf
	extern _Z15MatrixTransposePA3_KfPA3_f
	extern _Z8AxisCopyPA3_KfPA3_f

;Exports of r_marks:
	global _GLOBAL__I__Z19R_RegisterMarkDvarsv
	global _Z12R_AllowMarksiPv
	global _Z18R_AllowSmodelMarksi
	global _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj
	global _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj
	global _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi
	global _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh
	global _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh
	global _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf
	global _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf
	global _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj
	global _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh
	global _ZZ28R_MarkFragments_WorldBrushesP8MarkInfoE9allowSurf
	global _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4_
	global _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4_
	global _Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj
	global _Z17R_BoxStaticModelsPKfS0_PFiiEPti
	global _Z18R_CylinderSurfacesPKfS0_fPK9DpvsPlanejPFiiPvES4_PP10GfxSurfacej
	global _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5_
	global _Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material
	global _Z23R_MarkFragments_AddDObjP8MarkInfoP6DObj_sP7cpose_tt
	global _Z25R_MarkFragments_AddBModelP8MarkInfoP13GfxBrushModelP7cpose_tt
	global _Z37R_MarkUtil_GetDObjAnimMatAndHidePartsPK6DObj_sPK7cpose_tPPK11DObjAnimMatPj


SECTION .text


;global constructors keyed to R_RegisterMarkDvars()
_GLOBAL__I__Z19R_RegisterMarkDvarsv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;R_AllowMarks(int, void*)
_Z12R_AllowMarksiPv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, rgp
	mov edx, [edx+0x20a0]
	mov edx, [edx+0x294]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	test byte [eax+0x3d], 0x4
	jnz _Z12R_AllowMarksiPv_10
	test byte [eax+0x4], 0x4
	jnz _Z12R_AllowMarksiPv_10
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x10]
	mov eax, [eax+0x10]
	and eax, edx
	cmp edx, eax
	jz _Z12R_AllowMarksiPv_20
_Z12R_AllowMarksiPv_10:
	xor eax, eax
	movzx eax, al
	pop ebp
	ret
_Z12R_AllowMarksiPv_20:
	mov eax, 0x1
	movzx eax, al
	pop ebp
	ret


;R_AllowSmodelMarks(int)
_Z18R_AllowSmodelMarksi:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


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


;R_AABBTreeSurfacesTwoLists_r(GfxAabbTree*, float const*, float const*, int (**)(int, void*), void*, GfxSurface***, unsigned int, unsigned int*)
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj:
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_70:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x40], ecx
	movss xmm1, dword [edx]
	ucomiss xmm1, [eax+0xc]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	movss xmm0, dword [eax]
	ucomiss xmm0, [ecx]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	lea eax, [edx+0x4]
	mov [ebp-0x3c], eax
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [esi+0x10]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	add ecx, 0x4
	mov [ebp-0x38], ecx
	movss xmm0, dword [esi+0x4]
	mov edx, [ebp-0x40]
	ucomiss xmm0, [edx+0x4]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	lea ecx, [edi+0x8]
	mov [ebp-0x34], ecx
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [esi+0x14]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	add edx, 0x8
	mov [ebp-0x30], edx
	movss xmm0, dword [esi+0x8]
	mov eax, [ebp-0x40]
	ucomiss xmm0, [eax+0x8]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	cmp word [esi+0x18], 0x0
	jnz _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_20
	movzx eax, word [esi+0x1c]
	cmp word [esi+0x1a], 0x0
	jz _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x18]
	cmp ecx, [edx]
	jbe _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	add edx, 0x4
	mov [ebp-0x2c], edx
	mov edx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	cmp edx, [ecx+0x4]
	jbe _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	add eax, eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x24], 0x0
	mov ecx, eax
	jmp _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_30
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_60:
	movss xmm1, dword [edi]
	mov ecx, [ebp-0x1c]
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_30:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [edx+0x28c]
	movzx eax, word [eax+ecx]
	mov [ebp-0x20], eax
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, [edx+0x294]
	ucomiss xmm1, [ebx+0x24]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	movss xmm0, dword [ebx+0x18]
	mov eax, [ebp-0x40]
	ucomiss xmm0, [eax]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	mov edx, [ebp-0x3c]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebx+0x28]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	movss xmm0, dword [ebx+0x1c]
	mov ecx, [ebp-0x38]
	ucomiss xmm0, [ecx]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	mov eax, [ebp-0x34]
	movss xmm0, dword [eax]
	ucomiss xmm0, [ebx+0x2c]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	movss xmm0, dword [ebx+0x20]
	mov edx, [ebp-0x30]
	ucomiss xmm0, [edx]
	jbe _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_50
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40:
	add dword [ebp-0x24], 0x1
	movzx eax, word [esi+0x1a]
	cmp [ebp-0x24], eax
	jae _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x18]
	cmp ecx, [edx]
	jbe _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
	add dword [ebp-0x1c], 0x2
	mov eax, [ebp-0x2c]
	cmp ecx, [eax]
	ja _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_60
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_20:
	mov ebx, esi
	add ebx, [esi+0x28]
	mov dword [ebp-0x28], 0x0
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_80:
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, [ebp-0x40]
	mov edx, edi
	mov eax, ebx
	call _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_70
	add dword [ebp-0x28], 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp [ebp-0x28], eax
	jb _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_80
	jmp _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_10
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_50:
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x20]
	mov [esp], eax
	mov edx, [ebp+0x8]
	call dword [edx]
	test eax, eax
	jz _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_90
	mov ecx, [ebp+0x18]
	mov edx, [ecx]
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov [eax+edx*4], ebx
	mov eax, [ebp+0x18]
	add dword [eax], 0x1
_Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_90:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	mov edx, [ebp+0x8]
	call dword [edx+0x4]
	test eax, eax
	jz _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x4]
	mov [eax+edx*4], ebx
	mov eax, [ebp-0x2c]
	add dword [eax], 0x1
	jmp _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj_40
	nop


;R_AABBTreeSurfaces_r(GfxAabbTree*, float const*, float const*, int (*)(int, void*), void*, GfxSurface**, unsigned int, unsigned int*)
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj:
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, eax
	mov edi, edx
	mov [ebp-0x38], ecx
	movss xmm0, dword [edx]
	ucomiss xmm0, [eax+0xc]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	movss xmm0, dword [eax]
	ucomiss xmm0, [ecx]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	lea eax, [edx+0x4]
	mov [ebp-0x34], eax
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [esi+0x10]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	add ecx, 0x4
	mov [ebp-0x30], ecx
	movss xmm0, dword [esi+0x4]
	mov edx, [ebp-0x38]
	ucomiss xmm0, [edx+0x4]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	lea ecx, [edi+0x8]
	mov [ebp-0x2c], ecx
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [esi+0x14]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	add edx, 0x8
	mov [ebp-0x28], edx
	movss xmm0, dword [esi+0x8]
	mov eax, [ebp-0x38]
	ucomiss xmm0, [eax+0x8]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	cmp word [esi+0x18], 0x0
	jnz _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_20
	movzx eax, word [esi+0x1c]
	cmp word [esi+0x1a], 0x0
	jz _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x18]
	cmp ecx, [edx]
	jbe _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	add eax, eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x20], 0x0
	mov ecx, eax
	jmp _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_30
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_50:
	mov ecx, [ebp-0x1c]
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_30:
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x28c]
	movzx ebx, word [eax+ecx]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x8]
	test eax, eax
	jz _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	mov edx, rgp
	mov eax, [edx+0x20a0]
	lea edx, [ebx+ebx*2]
	shl edx, 0x4
	add edx, [eax+0x294]
	movss xmm0, dword [edi]
	ucomiss xmm0, [edx+0x24]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	movss xmm0, dword [edx+0x18]
	mov ecx, [ebp-0x38]
	ucomiss xmm0, [ecx]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	mov eax, [ebp-0x34]
	movss xmm0, dword [eax]
	ucomiss xmm0, [edx+0x28]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	movss xmm0, dword [edx+0x1c]
	mov ecx, [ebp-0x30]
	ucomiss xmm0, [ecx]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	mov eax, [ebp-0x2c]
	movss xmm0, dword [eax]
	ucomiss xmm0, [edx+0x2c]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	movss xmm0, dword [edx+0x20]
	mov ecx, [ebp-0x28]
	ucomiss xmm0, [ecx]
	ja _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40
	mov ecx, [ebp+0x18]
	mov eax, [ecx]
	mov ecx, [ebp+0x10]
	mov [ecx+eax*4], edx
	mov eax, [ebp+0x18]
	add dword [eax], 0x1
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_40:
	add dword [ebp-0x20], 0x1
	movzx eax, word [esi+0x1a]
	cmp [ebp-0x20], eax
	jae _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10
	add dword [ebp-0x1c], 0x2
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x18]
	cmp [edx], ecx
	jb _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_50
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_20:
	mov ebx, esi
	add ebx, [esi+0x28]
	mov dword [ebp-0x24], 0x0
_Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_70:
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, [ebp-0x38]
	mov edx, edi
	mov eax, ebx
	call _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_60
	add dword [ebp-0x24], 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp [ebp-0x24], eax
	jb _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_70
	jmp _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj_10


;R_AABBTreeStaticModels_r(GfxAabbTree*, float const*, float const*, int (*)(int), unsigned short*, int, int*)
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi:
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_70:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov esi, edx
	mov edi, ecx
	movss xmm0, dword [edx]
	ucomiss xmm0, [eax+0xc]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	movss xmm0, dword [eax]
	ucomiss xmm0, [ecx]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	lea eax, [edx+0x4]
	mov [ebp-0x38], eax
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebx+0x10]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	lea edx, [ecx+0x4]
	mov [ebp-0x34], edx
	movss xmm0, dword [ebx+0x4]
	ucomiss xmm0, [ecx+0x4]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	lea ecx, [esi+0x8]
	mov [ebp-0x30], ecx
	movss xmm0, dword [esi+0x8]
	ucomiss xmm0, [ebx+0x14]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	lea eax, [edi+0x8]
	mov [ebp-0x2c], eax
	movss xmm0, dword [ebx+0x8]
	ucomiss xmm0, [edi+0x8]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	movzx edx, word [ebx+0x18]
	test dx, dx
	jnz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_20
	cmp word [ebx+0x22], 0x0
	jz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	mov ecx, [ebp+0x10]
	mov edx, [ebp+0x14]
	cmp ecx, [edx]
	jle _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	mov dword [ebp-0x24], 0x0
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_60:
	mov eax, [ebx+0x24]
	mov ecx, [ebp-0x24]
	movzx eax, word [eax+ecx*2]
	mov [ebp-0x20], eax
	mov [esp], eax
	call dword [ebp+0x8]
	test eax, eax
	jz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [ebp-0x20]
	shl eax, 0x2
	mov ecx, [ebp-0x20]
	shl ecx, 0x5
	sub ecx, eax
	add ecx, [edx+0x290]
	movss xmm0, dword [esi]
	ucomiss xmm0, [ecx+0xc]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	movss xmm0, dword [ecx]
	ucomiss xmm0, [edi]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	mov eax, [ebp-0x38]
	movss xmm0, dword [eax]
	ucomiss xmm0, [ecx+0x10]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	movss xmm0, dword [ecx+0x4]
	mov edx, [ebp-0x34]
	ucomiss xmm0, [edx]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	mov eax, [ebp-0x30]
	movss xmm0, dword [eax]
	ucomiss xmm0, [ecx+0x14]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	movss xmm0, dword [ecx+0x8]
	mov edx, [ebp-0x2c]
	ucomiss xmm0, [edx]
	ja _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	mov ecx, [ebp+0x14]
	mov edx, [ecx]
	test edx, edx
	jle _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_40
	mov ecx, [ebp+0xc]
	movzx eax, word [ecx]
	cmp [ebp-0x20], eax
	jz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30
	xor ecx, ecx
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_50:
	add ecx, 0x1
	cmp ecx, edx
	jz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_40
	mov eax, [ebp+0xc]
	movzx eax, word [eax+ecx*2]
	cmp [ebp-0x20], eax
	jnz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_50
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30:
	add dword [ebp-0x24], 0x1
	movzx eax, word [ebx+0x22]
	cmp [ebp-0x24], eax
	jge _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	mov eax, [ebp+0x10]
	mov ecx, [ebp+0x14]
	cmp eax, [ecx]
	jg _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_60
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_20:
	mov eax, ebx
	add eax, [ebx+0x28]
	test dx, dx
	jz _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_80:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, edi
	mov edx, esi
	mov eax, [ebp-0x1c]
	call _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_70
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x2c
	movzx eax, word [ebx+0x18]
	cmp [ebp-0x28], eax
	jl _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_80
	jmp _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_10
_Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_40:
	movzx eax, word [ebp-0x20]
	mov ecx, [ebp+0xc]
	mov [ecx+edx*2], ax
	mov edx, [ebp+0x14]
	add dword [edx], 0x1
	jmp _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi_30


;R_BoxStaticModels_r(mnode_t*, float const*, float const*, int (*)(int), unsigned short*, int, int*, unsigned char*)
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh:
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov [ebp-0x1c], edx
	mov edi, ecx
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x24], edx
	mov eax, [ebp+0x10]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x2c], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x30], eax
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov esi, [eax+0xf0]
	add esi, 0x1
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_80:
	movzx edx, word [ebx]
	movzx eax, dx
	mov ecx, eax
	sub ecx, esi
	js _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_10
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_50:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	lea eax, [ecx+ecx*4]
	mov edx, [edx+0xf4]
	lea eax, [edx+eax*4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	cmp eax, 0x1
	jz _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_20
	cmp eax, 0x2
	jz _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_30
	lea eax, [ebx+0x4]
	mov edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov edx, [ebp-0x20]
	mov [esp], edx
	mov ecx, edi
	mov edx, [ebp-0x1c]
	call _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_40
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_30:
	movzx eax, word [ebx+0x2]
	lea ebx, [ebx+eax*2]
	movzx edx, word [ebx]
	movzx eax, dx
	mov ecx, eax
	sub ecx, esi
	jns _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_50
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_10:
	test dx, dx
	jz _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_60
	lea ebx, [eax-0x1]
	mov ecx, ebx
	and ecx, 0x7
	mov esi, 0x1
	shl esi, cl
	mov eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x30]
	add ecx, eax
	movzx edx, byte [ecx]
	movzx eax, dl
	test eax, esi
	jz _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_70
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_60:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_20:
	add ebx, 0x4
	jmp _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_80
_Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh_70:
	or edx, esi
	mov [ecx], dl
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x104]
	lea eax, [ebx*8]
	shl ebx, 0x6
	sub ebx, eax
	mov eax, [ebx+edx+0x1c]
	mov edx, [ebp-0x2c]
	mov [ebp+0x14], edx
	mov edx, [ebp-0x28]
	mov [ebp+0x10], edx
	mov edx, [ebp-0x24]
	mov [ebp+0xc], edx
	mov edx, [ebp-0x20]
	mov [ebp+0x8], edx
	mov ecx, edi
	mov edx, [ebp-0x1c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24R_AABBTreeStaticModels_rP11GfxAabbTreePKfS2_PFiiEPtiPi


;R_BoxSurfaces_r(mnode_t*, float const*, float const*, int (**)(int, void*), void*, GfxSurface***, unsigned int, unsigned int*, unsigned int, unsigned char*)
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh:
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov ebx, eax
	mov edi, edx
	mov [ebp-0x6c], ecx
	mov eax, [ebp+0x8]
	mov [ebp-0x70], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x74], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x78], ecx
	mov eax, [ebp+0x14]
	mov [ebp-0x7c], eax
	mov edx, [ebp+0x18]
	mov [ebp-0x80], edx
	mov ecx, [ebp+0x1c]
	mov [ebp-0x84], ecx
	mov eax, [ebp+0x20]
	mov [ebp-0x88], eax
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov esi, [eax+0xf0]
	add esi, 0x1
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_150:
	movzx edx, word [ebx]
	movzx eax, dx
	mov ecx, eax
	sub ecx, esi
	js _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_10
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_50:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	lea eax, [ecx+ecx*4]
	mov edx, [edx+0xf4]
	lea eax, [edx+eax*4]
	mov [esp+0x8], eax
	mov edx, [ebp-0x6c]
	mov [esp+0x4], edx
	mov [esp], edi
	call _Z14BoxOnPlaneSidePKfS0_PK8cplane_s
	cmp eax, 0x1
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_20
	cmp eax, 0x2
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_30
	lea eax, [ebx+0x4]
	mov ecx, [ebp-0x88]
	mov [esp+0x18], ecx
	mov edx, [ebp-0x84]
	mov [esp+0x14], edx
	mov ecx, [ebp-0x80]
	mov [esp+0x10], ecx
	mov edx, [ebp-0x7c]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x78]
	mov [esp+0x8], ecx
	mov edx, [ebp-0x74]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	mov ecx, [ebp-0x6c]
	mov edx, edi
	call _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_40
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_30:
	movzx eax, word [ebx+0x2]
	lea ebx, [ebx+eax*2]
	movzx edx, word [ebx]
	movzx eax, dx
	mov ecx, eax
	sub ecx, esi
	jns _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_50
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_10:
	test dx, dx
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_60
	cmp dword [ebp-0x84], 0x1
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_70
	lea ebx, [eax-0x1]
	mov ecx, ebx
	and ecx, 0x7
	mov esi, 0x1
	shl esi, cl
	mov eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x88]
	add ecx, eax
	movzx edx, byte [ecx]
	movzx eax, dl
	test eax, esi
	jnz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_60
	or edx, esi
	mov [ecx], dl
	mov ecx, rgp
	mov [ebp-0x8c], ecx
	mov edx, [ecx+0x20a0]
	lea eax, [ebx*8]
	mov esi, ebx
	shl esi, 0x6
	sub esi, eax
	add esi, [edx+0x104]
	mov ecx, [esi+0x28]
	test ecx, ecx
	jle _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_80
	mov dword [ebp-0x2c], 0x0
	mov ecx, [ebp-0x8c]
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_140:
	mov edx, [ecx+0x20a0]
	mov eax, [esi+0x2c]
	mov ecx, [ebp-0x2c]
	mov ebx, [eax+ecx*4]
	shl ebx, 0x5
	add ebx, [edx+0x298]
	movss xmm1, dword [edi]
	ucomiss xmm1, [ebx+0xc]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	movss xmm0, dword [ebx]
	mov eax, [ebp-0x6c]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	lea edx, [edi+0x4]
	mov [ebp-0x44], edx
	movss xmm0, dword [edi+0x4]
	ucomiss xmm0, [ebx+0x10]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	add eax, 0x4
	mov [ebp-0x40], eax
	movss xmm0, dword [ebx+0x4]
	mov ecx, [ebp-0x6c]
	ucomiss xmm0, [ecx+0x4]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	lea eax, [edi+0x8]
	mov [ebp-0x3c], eax
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [ebx+0x14]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	add ecx, 0x8
	mov [ebp-0x38], ecx
	movss xmm0, dword [ebx+0x8]
	mov edx, [ebp-0x6c]
	ucomiss xmm0, [edx+0x8]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	mov eax, [ebx+0x1c]
	mov edx, [ebx+0x18]
	test edx, edx
	jle _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	mov edx, [ebp-0x7c]
	mov ecx, [ebp-0x80]
	cmp [ecx], edx
	jae _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	add ecx, 0x4
	mov [ebp-0x34], ecx
	mov ecx, [ebp-0x80]
	cmp [ecx+0x4], edx
	jae _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	add eax, eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x30], 0x0
	mov ecx, [ebp-0x8c]
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_100
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_130:
	mov eax, rgp
	mov [ebp-0x8c], eax
	movss xmm1, dword [edi]
	mov ecx, eax
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_100:
	mov edx, [ecx+0x20a0]
	mov eax, [edx+0x28c]
	mov ecx, [ebp-0x1c]
	movzx eax, word [eax+ecx]
	mov [ebp-0x28], eax
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov [ebp-0x24], eax
	mov ecx, [edx+0x294]
	add eax, ecx
	mov [ebp-0x24], eax
	ucomiss xmm1, [eax+0x24]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	movss xmm0, dword [eax+0x18]
	mov eax, [ebp-0x6c]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	mov edx, [ebp-0x44]
	movss xmm0, dword [edx]
	mov ecx, [ebp-0x24]
	ucomiss xmm0, [ecx+0x28]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	movss xmm0, dword [ecx+0x1c]
	mov eax, [ebp-0x40]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	mov edx, [ebp-0x3c]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ecx+0x2c]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	movss xmm0, dword [ecx+0x20]
	mov ecx, [ebp-0x38]
	ucomiss xmm0, [ecx]
	jbe _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_120
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110:
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	cmp [ebx+0x18], eax
	jle _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	mov ecx, [ebp-0x7c]
	mov edx, [ebp-0x80]
	cmp ecx, [edx]
	jbe _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90
	add dword [ebp-0x1c], 0x2
	mov eax, [ebp-0x34]
	cmp ecx, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_130
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_90:
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp edx, [esi+0x28]
	jge _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_80
	mov eax, rgp
	mov [ebp-0x8c], eax
	mov ecx, eax
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_140
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_20:
	add ebx, 0x4
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_150
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_60:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_80:
	mov eax, [esi+0x1c]
	mov ecx, [ebp-0x80]
	mov [ebp+0x18], ecx
	mov edx, [ebp-0x7c]
	mov [ebp+0x14], edx
	mov ecx, [ebp-0x78]
	mov [ebp+0x10], ecx
	mov edx, [ebp-0x74]
	mov [ebp+0xc], edx
	mov ecx, [ebp-0x70]
	mov [ebp+0x8], ecx
	mov ecx, [ebp-0x6c]
	mov edx, edi
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z28R_AABBTreeSurfacesTwoLists_rP11GfxAabbTreePKfS2_PPFiiPvES3_PPP10GfxSurfacejPj
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_70:
	mov edx, [ebp-0x78]
	mov edx, [edx]
	mov [ebp-0x48], edx
	mov ecx, [ebp-0x70]
	mov ecx, [ecx]
	mov [ebp-0x68], ecx
	lea ebx, [eax-0x1]
	mov ecx, ebx
	and ecx, 0x7
	mov esi, [ebp-0x84]
	shl esi, cl
	mov eax, ebx
	sar eax, 0x3
	mov ecx, [ebp-0x88]
	add ecx, eax
	movzx edx, byte [ecx]
	movzx eax, dl
	test eax, esi
	jnz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_60
	or edx, esi
	mov [ecx], dl
	mov eax, rgp
	mov [ebp-0x8c], eax
	mov edx, [eax+0x20a0]
	lea eax, [ebx*8]
	mov esi, ebx
	shl esi, 0x6
	sub esi, eax
	add esi, [edx+0x104]
	mov ecx, [esi+0x28]
	test ecx, ecx
	jle _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_160
	mov dword [ebp-0x50], 0x0
	mov ecx, [ebp-0x8c]
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_220:
	mov eax, [ecx+0x20a0]
	mov edx, [esi+0x2c]
	mov ecx, [ebp-0x50]
	mov ebx, [edx+ecx*4]
	shl ebx, 0x5
	add ebx, [eax+0x298]
	movss xmm0, dword [edi]
	ucomiss xmm0, [ebx+0xc]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	movss xmm0, dword [ebx]
	mov eax, [ebp-0x6c]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	lea edx, [edi+0x4]
	mov [ebp-0x64], edx
	movss xmm0, dword [edi+0x4]
	ucomiss xmm0, [ebx+0x10]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	add eax, 0x4
	mov [ebp-0x60], eax
	movss xmm0, dword [ebx+0x4]
	mov ecx, [ebp-0x6c]
	ucomiss xmm0, [ecx+0x4]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	lea eax, [edi+0x8]
	mov [ebp-0x5c], eax
	movss xmm0, dword [edi+0x8]
	ucomiss xmm0, [ebx+0x14]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	add ecx, 0x8
	mov [ebp-0x58], ecx
	movss xmm0, dword [ebx+0x8]
	mov edx, [ebp-0x6c]
	ucomiss xmm0, [edx+0x8]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	mov eax, [ebx+0x1c]
	mov edx, [ebx+0x18]
	test edx, edx
	jle _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	mov edx, [ebp-0x7c]
	mov ecx, [ebp-0x80]
	cmp edx, [ecx]
	jbe _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	add eax, eax
	mov [ebp-0x20], eax
	mov dword [ebp-0x54], 0x0
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_210:
	mov edx, [ebp-0x8c]
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x28c]
	mov ecx, [ebp-0x20]
	movzx eax, word [ecx+eax]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call dword [ebp-0x68]
	test eax, eax
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	mov ecx, [ebp-0x8c]
	mov eax, [ecx+0x20a0]
	mov ecx, [ebp-0x4c]
	lea edx, [ecx+ecx*2]
	shl edx, 0x4
	add edx, [eax+0x294]
	movss xmm0, dword [edi]
	ucomiss xmm0, [edx+0x24]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	movss xmm0, dword [edx+0x18]
	mov eax, [ebp-0x6c]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	mov ecx, [ebp-0x64]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [edx+0x28]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	movss xmm0, dword [edx+0x1c]
	mov eax, [ebp-0x60]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	mov ecx, [ebp-0x5c]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [edx+0x2c]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	movss xmm0, dword [edx+0x20]
	mov eax, [ebp-0x58]
	ucomiss xmm0, [eax]
	ja _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	mov ecx, [ebp-0x80]
	mov ecx, [ecx]
	mov [ebp-0xa0], ecx
	test ecx, ecx
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_190
	mov eax, [ebp-0x48]
	cmp edx, [eax]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
	xor ecx, ecx
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_200:
	add ecx, 0x1
	cmp ecx, [ebp-0xa0]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_190
	mov eax, [ebp-0x48]
	cmp edx, [eax+ecx*4]
	jnz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_200
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180:
	add dword [ebp-0x54], 0x1
	mov ecx, [ebp-0x54]
	cmp ecx, [ebx+0x18]
	jge _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	add dword [ebp-0x20], 0x2
	mov edx, [ebp-0x7c]
	mov eax, [ebp-0x80]
	cmp edx, [eax]
	jbe _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170
	mov ecx, rgp
	mov [ebp-0x8c], ecx
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_210
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_170:
	add dword [ebp-0x50], 0x1
	mov ecx, [ebp-0x50]
	cmp ecx, [esi+0x28]
	jge _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_160
	mov edx, rgp
	mov [ebp-0x8c], edx
	mov ecx, edx
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_220
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_160:
	mov eax, [esi+0x1c]
	mov edx, [ebp-0x80]
	mov [ebp+0x18], edx
	mov ecx, [ebp-0x7c]
	mov [ebp+0x14], ecx
	mov edx, [ebp-0x48]
	mov [ebp+0x10], edx
	mov ecx, [ebp-0x74]
	mov [ebp+0xc], ecx
	mov edx, [ebp-0x68]
	mov [ebp+0x8], edx
	mov ecx, [ebp-0x6c]
	mov edx, edi
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z20R_AABBTreeSurfaces_rP11GfxAabbTreePKfS2_PFiiPvES3_PP10GfxSurfacejPj
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_120:
	mov eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, [ebp-0x70]
	call dword [ecx]
	test eax, eax
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_230
	mov eax, [ebp-0x78]
	mov ecx, [eax]
	mov edx, [ebp-0x80]
	mov edx, [edx]
	mov [ebp-0xa0], edx
	test edx, edx
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_240
	mov eax, [ebp-0x24]
	cmp eax, [ecx]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_230
	xor edx, edx
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_250:
	add edx, 0x1
	cmp edx, [ebp-0xa0]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_240
	mov eax, [ebp-0x24]
	cmp eax, [ecx+edx*4]
	jnz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_250
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_230
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_190:
	mov ecx, [ebp-0xa0]
	mov eax, [ebp-0x48]
	mov [eax+ecx*4], edx
	mov edx, [ebp-0x80]
	add dword [edx], 0x1
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_180
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_240:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0xa0]
	mov [ecx+edx*4], eax
	mov edx, [ebp-0x80]
	add dword [edx], 0x1
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_230:
	mov ecx, [ebp-0x74]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x28]
	mov [esp], eax
	mov edx, [ebp-0x70]
	call dword [edx+0x4]
	test eax, eax
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	mov eax, [ebp-0x78]
	mov ecx, [eax+0x4]
	mov edx, [ebp-0x34]
	mov edx, [edx]
	mov [ebp-0x9c], edx
	test edx, edx
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_260
	mov edx, [ebp-0x24]
	cmp edx, [ecx]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
	xor eax, eax
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_270:
	add eax, 0x1
	cmp eax, [ebp-0x9c]
	jz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_260
	mov edx, [ebp-0x24]
	cmp edx, [ecx+eax*4]
	jnz _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_270
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110
_Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_260:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x9c]
	mov [ecx+eax*4], edx
	mov ecx, [ebp-0x34]
	add dword [ecx], 0x1
	jmp _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh_110


;R_ChopPolyBehindPlane(int, FxModelMarkPoint const*, FxModelMarkPoint*, float const*)
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x84], eax
	mov [ebp-0x88], edx
	mov [ebp-0x8c], ecx
	mov eax, [ebp+0x8]
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov ecx, [ebp-0x84]
	test ecx, ecx
	jg _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_10
	xor edx, edx
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_130:
	mov eax, [ebp-0x74]
	mov [ebp+edx*4-0x74], eax
	mov eax, [ebp-0x4c]
	mov [ebp+edx*4-0x4c], eax
	mov edi, [ebp-0x24]
	test edi, edi
	jz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_20
	mov esi, [ebp-0x20]
	test esi, esi
	jz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_30
	mov ebx, [ebp-0x84]
	test ebx, ebx
	jle _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_20
	xor ebx, ebx
	mov dword [ebp-0x80], 0x0
	jmp _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_40
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_80:
	test esi, esi
	jnz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_50
	mov eax, [ebp-0x80]
	lea ecx, [eax+eax*2]
	shl ecx, 0x3
	lea eax, [ebx+ebx*2]
	shl eax, 0x3
	mov edi, [ebp-0x88]
	mov edx, [eax+edi]
	mov edi, [ebp-0x8c]
	mov [ecx+edi], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x4]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x4], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x8]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x8], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0xc]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0xc], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x10]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x10], edx
	mov edx, [ebp-0x88]
	mov eax, [eax+edx+0x14]
	mov [ecx+edi+0x14], eax
	add dword [ebp-0x80], 0x1
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_50:
	lea edi, [ebx+0x1]
	mov eax, [ebp+edi*4-0x74]
	cmp eax, 0x2
	jz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_60
	cmp esi, eax
	jz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_60
	movss xmm2, dword [ebp+ebx*4-0x4c]
	movaps xmm0, xmm2
	subss xmm0, [ebp+edi*4-0x4c]
	divss xmm2, xmm0
	mov esi, [ebp-0x80]
	lea ecx, [esi+esi*2]
	mov eax, [ebp-0x8c]
	lea ecx, [eax+ecx*8]
	mov eax, edi
	cdq
	idiv dword [ebp-0x84]
	lea edx, [edx+edx*2]
	mov esi, [ebp-0x88]
	lea edx, [esi+edx*8]
	lea eax, [ebx+ebx*2]
	lea eax, [esi+eax*8]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	lea ebx, [ecx+0xc]
	mov [ebp-0x7c], ebx
	lea esi, [edx+0xc]
	lea ebx, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp-0x7c]
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	add dword [ebp-0x80], 0x1
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_60:
	cmp [ebp-0x84], edi
	jle _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_70
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_90:
	mov ebx, edi
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_40:
	mov esi, [ebp+ebx*4-0x74]
	cmp esi, 0x2
	jnz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_80
	mov edi, [ebp-0x80]
	lea ecx, [edi+edi*2]
	shl ecx, 0x3
	lea eax, [ebx+ebx*2]
	shl eax, 0x3
	mov esi, [ebp-0x88]
	mov edx, [eax+esi]
	mov edi, [ebp-0x8c]
	mov [ecx+edi], edx
	mov edx, [eax+esi+0x4]
	mov [ecx+edi+0x4], edx
	mov edx, [eax+esi+0x8]
	mov [ecx+edi+0x8], edx
	mov edx, [eax+esi+0xc]
	mov [ecx+edi+0xc], edx
	mov edx, [eax+esi+0x10]
	mov [ecx+edi+0x10], edx
	mov eax, [eax+esi+0x14]
	mov [ecx+edi+0x14], eax
	add dword [ebp-0x80], 0x1
	lea edi, [ebx+0x1]
	cmp [ebp-0x84], edi
	jg _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_90
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_70:
	mov edx, [ebp-0x80]
	mov [ebp-0x84], edx
	mov eax, edx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_20:
	mov dword [ebp-0x84], 0x0
	mov eax, [ebp-0x84]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_10:
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [eax+0xc]
	xor ebx, ebx
	movss xmm7, dword [_float__0_50000000]
	movss xmm6, dword [_float_0_50000000]
	xor ecx, ecx
	jmp _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_100
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_120:
	mov dword [ecx+ebp-0x74], 0x0
	mov eax, [ecx+ebp-0x74]
	add dword [ebp+eax*4-0x24], 0x1
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x18
	cmp [ebp-0x84], ebx
	jz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_110
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_100:
	movaps xmm1, xmm5
	mulss xmm1, [edx]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	subss xmm1, xmm2
	movss [ecx+ebp-0x4c], xmm1
	ucomiss xmm1, xmm6
	ja _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_120
	xor eax, eax
	ucomiss xmm7, xmm1
	setbe al
	add eax, 0x1
	mov [ecx+ebp-0x74], eax
	add dword [ebp+eax*4-0x24], 0x1
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x18
	cmp [ebp-0x84], ebx
	jnz _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_100
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_110:
	mov edx, [ebp-0x84]
	jmp _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_130
_Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf_30:
	mov edx, [ebp-0x84]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88]
	mov [esp+0x4], ebx
	mov esi, [ebp-0x8c]
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x84]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ChopWorldPolyBehindPlane(int, FxWorldMarkPoint const*, FxWorldMarkPoint*, float const*)
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x84], eax
	mov [ebp-0x88], edx
	mov [ebp-0x8c], ecx
	mov eax, [ebp+0x8]
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov ecx, [ebp-0x84]
	test ecx, ecx
	jg _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_10
	xor edx, edx
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_130:
	mov eax, [ebp-0x74]
	mov [ebp+edx*4-0x74], eax
	mov eax, [ebp-0x4c]
	mov [ebp+edx*4-0x4c], eax
	mov edi, [ebp-0x24]
	test edi, edi
	jz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_20
	mov esi, [ebp-0x20]
	test esi, esi
	jz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_30
	mov ebx, [ebp-0x84]
	test ebx, ebx
	jle _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_20
	xor ebx, ebx
	mov dword [ebp-0x80], 0x0
	jmp _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_40
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_80:
	test esi, esi
	jnz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_50
	mov eax, [ebp-0x80]
	lea ecx, [eax+eax*2]
	shl ecx, 0x3
	lea eax, [ebx+ebx*2]
	shl eax, 0x3
	mov edi, [ebp-0x88]
	mov edx, [eax+edi]
	mov edi, [ebp-0x8c]
	mov [ecx+edi], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x4]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x4], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x8]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x8], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0xc]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0xc], edx
	mov edi, [ebp-0x88]
	mov edx, [eax+edi+0x10]
	mov edi, [ebp-0x8c]
	mov [ecx+edi+0x10], edx
	mov edx, [ebp-0x88]
	mov eax, [eax+edx+0x14]
	mov [ecx+edi+0x14], eax
	add dword [ebp-0x80], 0x1
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_50:
	lea edi, [ebx+0x1]
	mov eax, [ebp+edi*4-0x74]
	cmp eax, 0x2
	jz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_60
	cmp esi, eax
	jz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_60
	movss xmm2, dword [ebp+ebx*4-0x4c]
	movaps xmm0, xmm2
	subss xmm0, [ebp+edi*4-0x4c]
	divss xmm2, xmm0
	mov esi, [ebp-0x80]
	lea ecx, [esi+esi*2]
	mov eax, [ebp-0x8c]
	lea ecx, [eax+ecx*8]
	mov eax, edi
	cdq
	idiv dword [ebp-0x84]
	lea edx, [edx+edx*2]
	mov esi, [ebp-0x88]
	lea edx, [esi+edx*8]
	lea eax, [ebx+ebx*2]
	lea eax, [esi+eax*8]
	movss xmm1, dword [eax]
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx], xmm1
	movss xmm1, dword [eax+0x4]
	movss xmm0, dword [edx+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x4], xmm1
	movss xmm1, dword [eax+0x8]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0x8], xmm1
	lea ebx, [ecx+0xc]
	mov [ebp-0x7c], ebx
	lea esi, [edx+0xc]
	lea ebx, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	movss xmm1, dword [ebx+0x4]
	movss xmm0, dword [esi+0x4]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	mov eax, [ebp-0x7c]
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [esi+0x8]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movss [eax+0x8], xmm1
	add dword [ebp-0x80], 0x1
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_60:
	cmp [ebp-0x84], edi
	jle _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_70
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_90:
	mov ebx, edi
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_40:
	mov esi, [ebp+ebx*4-0x74]
	cmp esi, 0x2
	jnz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_80
	mov edi, [ebp-0x80]
	lea ecx, [edi+edi*2]
	shl ecx, 0x3
	lea eax, [ebx+ebx*2]
	shl eax, 0x3
	mov esi, [ebp-0x88]
	mov edx, [eax+esi]
	mov edi, [ebp-0x8c]
	mov [ecx+edi], edx
	mov edx, [eax+esi+0x4]
	mov [ecx+edi+0x4], edx
	mov edx, [eax+esi+0x8]
	mov [ecx+edi+0x8], edx
	mov edx, [eax+esi+0xc]
	mov [ecx+edi+0xc], edx
	mov edx, [eax+esi+0x10]
	mov [ecx+edi+0x10], edx
	mov eax, [eax+esi+0x14]
	mov [ecx+edi+0x14], eax
	add dword [ebp-0x80], 0x1
	lea edi, [ebx+0x1]
	cmp [ebp-0x84], edi
	jg _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_90
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_70:
	mov edx, [ebp-0x80]
	mov [ebp-0x84], edx
	mov eax, edx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_20:
	mov dword [ebp-0x84], 0x0
	mov eax, [ebp-0x84]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_10:
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [eax+0xc]
	xor ebx, ebx
	movss xmm7, dword [_float__0_50000000]
	movss xmm6, dword [_float_0_50000000]
	xor ecx, ecx
	jmp _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_100
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_120:
	mov dword [ecx+ebp-0x74], 0x0
	mov eax, [ecx+ebp-0x74]
	add dword [ebp+eax*4-0x24], 0x1
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x18
	cmp [ebp-0x84], ebx
	jz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_110
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_100:
	movaps xmm1, xmm5
	mulss xmm1, [edx]
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	subss xmm1, xmm2
	movss [ecx+ebp-0x4c], xmm1
	ucomiss xmm1, xmm6
	ja _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_120
	xor eax, eax
	ucomiss xmm7, xmm1
	setbe al
	add eax, 0x1
	mov [ecx+ebp-0x74], eax
	add dword [ebp+eax*4-0x24], 0x1
	add ebx, 0x1
	add ecx, 0x4
	add edx, 0x18
	cmp [ebp-0x84], ebx
	jnz _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_100
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_110:
	mov edx, [ebp-0x84]
	jmp _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_130
_Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf_30:
	mov edx, [ebp-0x84]
	lea eax, [edx+edx*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88]
	mov [esp+0x4], ebx
	mov esi, [ebp-0x8c]
	mov [esp], esi
	call memcpy
	mov eax, [ebp-0x84]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AABBTreeCylinderSurfaces_r(GfxAabbTree*, DpvsPlane const*, unsigned int, int (*)(int, void*), void*, GfxSurface**, unsigned int, unsigned int*)
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj:
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, eax
	mov [ebp-0x28], edx
	mov [ebp-0x2c], ecx
	test ecx, ecx
	jnz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_10
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_60:
	cmp word [edi+0x18], 0x0
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_20
	mov ebx, edi
	add ebx, [edi+0x28]
	xor esi, esi
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_40:
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov eax, ebx
	call _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_30
	add esi, 0x1
	add ebx, 0x2c
	movzx eax, word [edi+0x18]
	cmp esi, eax
	jb _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_40
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_10:
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+edi]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [edi+eax]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [edi+eax]
	addss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	jae _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50
	mov ebx, edx
	add ebx, 0x20
	xor ecx, ecx
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_70:
	add ecx, 0x1
	cmp [ebp-0x2c], ecx
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_60
	mov eax, ebx
	add ebx, 0x14
	movzx edx, byte [eax+0x4]
	movss xmm1, dword [edx+edi]
	mulss xmm1, [eax-0xc]
	addss xmm1, [eax]
	movzx edx, byte [eax+0x5]
	movss xmm0, dword [eax-0x8]
	mulss xmm0, [edx+edi]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x6]
	movss xmm0, dword [eax-0x4]
	mulss xmm0, [edx+edi]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_70
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_20:
	movzx eax, word [edi+0x1c]
	cmp word [edi+0x1a], 0x0
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50
	mov edx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	cmp edx, [ecx]
	jbe _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50
	add eax, eax
	mov [ebp-0x1c], eax
	mov dword [ebp-0x24], 0x0
	mov ecx, eax
	jmp _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_80
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_100:
	mov edx, [ebp+0x18]
	mov eax, [edx]
	mov ecx, [ebp+0x10]
	mov [ecx+eax*4], ebx
	add dword [edx], 0x1
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_90:
	add dword [ebp-0x24], 0x1
	movzx eax, word [edi+0x1a]
	cmp [ebp-0x24], eax
	jae _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50
	add dword [ebp-0x1c], 0x2
	mov ecx, [ebp+0x14]
	mov edx, [ebp+0x18]
	cmp ecx, [edx]
	jbe _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_50
	mov ecx, [ebp-0x1c]
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_80:
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x28c]
	movzx ebx, word [eax+ecx]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x8]
	test eax, eax
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_90
	mov eax, [esi+0x20a0]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x4
	add ebx, [eax+0x294]
	lea esi, [ebx+0x18]
	mov eax, [ebp-0x2c]
	test eax, eax
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_100
	mov edx, [ebp-0x28]
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+esi]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+eax+0x18]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+eax+0x18]
	addss xmm1, xmm0
	pxor xmm2, xmm2
	ucomiss xmm2, xmm1
	jae _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_90
	mov ecx, edx
	add ecx, 0x20
	mov dword [ebp-0x20], 0x0
_Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_110:
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x20]
	cmp [ebp-0x2c], eax
	jz _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_100
	mov eax, ecx
	add ecx, 0x14
	movzx edx, byte [eax+0x4]
	movss xmm1, dword [eax-0xc]
	mulss xmm1, [edx+esi]
	addss xmm1, [eax]
	movzx edx, byte [eax+0x5]
	movss xmm0, dword [eax-0x8]
	mulss xmm0, [edx+esi]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x6]
	movss xmm0, dword [eax-0x4]
	mulss xmm0, [edx+esi]
	addss xmm1, xmm0
	ucomiss xmm2, xmm1
	jb _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_110
	jmp _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj_90
	nop


;R_CylinderSurfaces_r(mnode_t*, float const*, float const*, float, DpvsPlane const*, unsigned int, int (*)(int, void*), void*, GfxSurface**, unsigned int, unsigned int*, unsigned char*)
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh:
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, eax
	movss [ebp-0x80], xmm0
	mov edi, [ebp+0x24]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov esi, [eax+0xf0]
	add esi, 0x1
	mov eax, [edx]
	mov [ebp-0x24], eax
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
	mov eax, [edx+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ecx]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x28], eax
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x84], xmm0
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_180:
	movzx ecx, word [ebx]
	movzx eax, cx
	mov edx, eax
	sub edx, esi
	js _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_10
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_30:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edx, [edx+edx*4]
	mov eax, [eax+0xf4]
	lea edx, [eax+edx*4]
	movss xmm6, dword [ebp-0x24]
	movss xmm7, dword [ebp-0x20]
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x78], xmm0
	movss xmm2, dword [edx+0x8]
	movss xmm3, dword [edx+0xc]
	movaps xmm5, xmm6
	mulss xmm5, [edx]
	movaps xmm0, xmm7
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	subss xmm5, xmm3
	movss xmm0, dword [ebp-0x30]
	movss [ebp-0x74], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [ebp-0x70], xmm0
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x6c], xmm0
	movss xmm4, dword [ebp-0x74]
	mulss xmm4, [edx]
	mulss xmm1, [ebp-0x70]
	addss xmm4, xmm1
	mulss xmm2, xmm0
	addss xmm4, xmm2
	subss xmm4, xmm3
	movaps xmm0, xmm5
	mulss xmm0, xmm4
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_20
	movss xmm1, dword [_data16_7fffffff]
	movaps xmm0, xmm5
	andps xmm0, xmm1
	ucomiss xmm0, [ebp-0x80]
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_20
	movaps xmm0, xmm4
	andps xmm0, xmm1
	ucomiss xmm0, [ebp-0x80]
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_20
	xor edx, edx
	ucomiss xmm3, xmm5
	seta dl
	movzx eax, word [ebx+0x2]
	lea eax, [eax+eax-0x4]
	imul edx, eax
	lea ebx, [edx+ebx+0x4]
	movzx ecx, word [ebx]
	movzx eax, cx
	mov edx, eax
	sub edx, esi
	jns _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_30
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_10:
	test cx, cx
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_40
	lea ebx, [eax-0x1]
	mov ecx, ebx
	and ecx, 0x7
	mov esi, 0x1
	shl esi, cl
	mov eax, ebx
	sar eax, 0x3
	lea ecx, [edi+eax]
	movzx edx, byte [ecx]
	movzx eax, dl
	test eax, esi
	jnz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_40
	or edx, esi
	mov [ecx], dl
	mov edi, rgp
	mov edx, [edi+0x20a0]
	lea eax, [ebx*8]
	shl ebx, 0x6
	mov [ebp-0x60], ebx
	sub [ebp-0x60], eax
	mov ecx, [edx+0x104]
	add [ebp-0x60], ecx
	mov eax, [ebp-0x60]
	mov ebx, [eax+0x28]
	test ebx, ebx
	jle _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_50
	mov dword [ebp-0x64], 0x0
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_60
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_80:
	mov eax, [esi+0x1c]
	mov edx, [esi+0x18]
	test edx, edx
	jg _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_70
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_90:
	add dword [ebp-0x64], 0x1
	mov ecx, [ebp-0x64]
	mov eax, [ebp-0x60]
	cmp ecx, [eax+0x28]
	jge _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_50
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_110:
	mov edi, rgp
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_60:
	mov edx, [edi+0x20a0]
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x2c]
	mov ecx, [ebp-0x64]
	mov esi, [eax+ecx*4]
	shl esi, 0x5
	add esi, [edx+0x298]
	mov ecx, [ebp+0xc]
	test ecx, ecx
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_80
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+esi]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [esi+eax]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [esi+eax]
	addss xmm1, xmm0
	pxor xmm3, xmm3
	ucomiss xmm3, xmm1
	jae _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_90
	mov ecx, edx
	add ecx, 0x20
	xor ebx, ebx
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_100:
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_80
	mov eax, ecx
	add ecx, 0x14
	movzx edx, byte [eax+0x4]
	movss xmm1, dword [edx+esi]
	mulss xmm1, [eax-0xc]
	addss xmm1, [eax]
	movzx edx, byte [eax+0x5]
	movss xmm0, dword [eax-0x8]
	mulss xmm0, [edx+esi]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x6]
	movss xmm0, dword [eax-0x4]
	mulss xmm0, [edx+esi]
	addss xmm1, xmm0
	ucomiss xmm3, xmm1
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_100
	add dword [ebp-0x64], 0x1
	mov ecx, [ebp-0x64]
	mov eax, [ebp-0x60]
	cmp ecx, [eax+0x28]
	jl _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_110
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_50:
	mov eax, [eax+0x1c]
	mov ecx, [ebp+0x20]
	mov [esp+0x10], ecx
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	call _Z28R_AABBTreeCylinderSurfaces_rP11GfxAabbTreePK9DpvsPlanejPFiiPvES4_PP10GfxSurfacejPj
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_40:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_20:
	movss xmm0, dword [ebp-0x74]
	subss xmm0, xmm6
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x70]
	subss xmm1, xmm7
	movss [ebp-0x54], xmm1
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x78]
	movss [ebp-0x58], xmm0
	movaps xmm0, xmm4
	subss xmm0, xmm5
	ucomiss xmm0, xmm3
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_120
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_200:
	movss xmm2, dword [_float_1_00000000]
	movaps xmm1, xmm2
	divss xmm1, xmm0
	movss [ebp-0x7c], xmm1
	movss xmm1, dword [ebp-0x84]
	subss xmm1, xmm5
	mulss xmm1, [ebp-0x7c]
	ucomiss xmm1, xmm3
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_130
	ucomiss xmm2, xmm1
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_130
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, xmm1
	addss xmm6, xmm0
	movss [ebp-0x3c], xmm6
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss [ebp-0x38], xmm7
	mulss xmm1, [ebp-0x58]
	addss xmm1, [ebp-0x78]
	movss [ebp-0x34], xmm1
	ucomiss xmm5, [ebp-0x84]
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_140
	lea eax, [ebx+0x4]
	mov [esp+0x1c], edi
	mov edx, [ebp+0x20]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x14], ecx
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov edx, [ebp+0x8]
	mov [esp], edx
	movss xmm0, dword [ebp-0x80]
	lea ecx, [ebp-0x3c]
	lea edx, [ebp-0x24]
	movss [ebp-0x98], xmm5
	call _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_150
	movss xmm5, dword [ebp-0x98]
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_190:
	movss xmm1, dword [ebp-0x80]
	subss xmm1, xmm5
	mulss xmm1, [ebp-0x7c]
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160
	ucomiss xmm1, [_float_1_00000000]
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_170
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160:
	movzx eax, word [ebx+0x2]
	lea ebx, [ebx+eax*2]
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_180
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_130:
	lea eax, [ebx+0x4]
	mov [esp+0x1c], edi
	mov edx, [ebp+0x20]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x14], ecx
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov edx, [ebp+0x8]
	mov [esp], edx
	movss xmm0, dword [ebp-0x80]
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x24]
	movss [ebp-0x98], xmm5
	call _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_150
	movss xmm5, dword [ebp-0x98]
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_190
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_120:
	jp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_200
	lea eax, [ebx+0x4]
	mov [esp+0x1c], edi
	mov edx, [ebp+0x20]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x14], ecx
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov ecx, [ebp+0x14]
	mov [esp+0xc], ecx
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov edx, [ebp+0x8]
	mov [esp], edx
	movss xmm0, dword [ebp-0x80]
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x24]
	call _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_150
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_140:
	lea eax, [ebx+0x4]
	mov [esp+0x1c], edi
	mov ecx, [ebp+0x20]
	mov [esp+0x18], ecx
	mov edx, [ebp+0x1c]
	mov [esp+0x14], edx
	mov ecx, [ebp+0x18]
	mov [esp+0x10], ecx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x10]
	mov [esp+0x8], ecx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	movss xmm0, dword [ebp-0x80]
	lea ecx, [ebp-0x30]
	lea edx, [ebp-0x3c]
	movss [ebp-0x98], xmm5
	call _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_150
	movss xmm5, dword [ebp-0x98]
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_190
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_170:
	jp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160
	movss xmm2, dword [ebp-0x50]
	mulss xmm2, xmm1
	addss xmm2, [ebp-0x24]
	movss [ebp-0x3c], xmm2
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20]
	movss [ebp-0x38], xmm0
	mulss xmm1, [ebp-0x58]
	addss xmm1, [ebp-0x1c]
	movss [ebp-0x34], xmm1
	movss xmm3, dword [ebp-0x80]
	ucomiss xmm3, xmm5
	jae _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_210
	movss [ebp-0x24], xmm2
	movss [ebp-0x20], xmm0
	movss [ebp-0x1c], xmm1
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_210:
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm1
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_160
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_70:
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x20]
	cmp edx, [ecx]
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_90
	add eax, eax
	mov [ebp-0x4c], eax
	mov dword [ebp-0x68], 0x0
	mov ecx, eax
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_220
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_250:
	mov ecx, [ebp+0x20]
	mov edx, [ecx]
	test edx, edx
	jnz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_230
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_270:
	mov eax, [ebp+0x18]
	mov [eax+edx*4], ebx
	mov edx, [ebp+0x20]
	add dword [edx], 0x1
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240:
	add dword [ebp-0x68], 0x1
	mov ecx, [ebp-0x68]
	cmp ecx, [esi+0x18]
	jge _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_90
	add dword [ebp-0x4c], 0x2
	mov edx, [ebp+0x1c]
	mov eax, [ebp+0x20]
	cmp edx, [eax]
	jbe _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_90
	mov edi, rgp
	mov ecx, [ebp-0x4c]
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_220:
	mov eax, [edi+0x20a0]
	mov eax, [eax+0x28c]
	movzx ebx, word [eax+ecx]
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x10]
	test eax, eax
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240
	mov eax, [edi+0x20a0]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x4
	add ebx, [eax+0x294]
	lea edi, [ebx+0x18]
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_250
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x10]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+edi]
	addss xmm1, [edx+0xc]
	movzx eax, byte [edx+0x11]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ebx+eax+0x18]
	addss xmm1, xmm0
	movzx eax, byte [edx+0x12]
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ebx+eax+0x18]
	addss xmm1, xmm0
	pxor xmm3, xmm3
	ucomiss xmm3, xmm1
	jae _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240
	mov ecx, edx
	add ecx, 0x20
	mov dword [ebp-0x5c], 0x0
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_260:
	add dword [ebp-0x5c], 0x1
	mov eax, [ebp-0x5c]
	cmp [ebp+0xc], eax
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_250
	mov eax, ecx
	add ecx, 0x14
	movzx edx, byte [eax+0x4]
	movss xmm1, dword [eax-0xc]
	mulss xmm1, [edx+edi]
	addss xmm1, [eax]
	movzx edx, byte [eax+0x5]
	movss xmm0, dword [eax-0x8]
	mulss xmm0, [edx+edi]
	addss xmm1, xmm0
	movzx edx, byte [eax+0x6]
	movss xmm0, dword [eax-0x4]
	mulss xmm0, [edx+edi]
	addss xmm1, xmm0
	ucomiss xmm3, xmm1
	jb _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_260
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_230:
	mov ecx, [ebp+0x18]
	cmp ebx, [ecx]
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240
	xor eax, eax
_Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_280:
	add eax, 0x1
	cmp eax, edx
	jz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_270
	mov ecx, [ebp+0x18]
	cmp ebx, [ecx+eax*4]
	jnz _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_280
	jmp _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh_240


;unsigned char R_MarkModelCoreCallback<(unsigned char)0>(void*, GfxPackedVertex const**, GfxPackedVertex const**)
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edi, [ebp+0xc]
	xor ebx, ebx
	lea esi, [ebp-0x1fc]
	mov ecx, esi
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__10:
	mov edx, [edi+ebx*4]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov dword [ecx+0x10], 0x0
	mov dword [ecx+0x14], 0x0
	mov dword [esi+0xc], 0x3f800000
	add ebx, 0x1
	add ecx, 0x18
	add esi, 0x1c
	cmp ebx, 0x3
	jnz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__10
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movss xmm2, dword [ebp-0x1e4]
	movss xmm6, dword [ebp-0x1fc]
	subss xmm6, xmm2
	movss xmm0, dword [ebp-0x1e0]
	movss xmm5, dword [ebp-0x1f8]
	subss xmm5, xmm0
	movss xmm1, dword [ebp-0x1dc]
	movss xmm3, dword [ebp-0x1f4]
	subss xmm3, xmm1
	movss xmm4, dword [ebp-0x1cc]
	subss xmm4, xmm2
	movss xmm2, dword [ebp-0x1c8]
	subss xmm2, xmm0
	movss xmm0, dword [ebp-0x1c4]
	subss xmm0, xmm1
	movaps xmm7, xmm5
	mulss xmm7, xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	subss xmm7, xmm1
	mulss xmm3, xmm4
	mulss xmm0, xmm6
	subss xmm3, xmm0
	mulss xmm6, xmm2
	mulss xmm5, xmm4
	subss xmm6, xmm5
	movaps xmm1, xmm7
	mulss xmm1, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__20
	mulss xmm1, xmm1
	mulss xmm7, xmm7
	mulss xmm3, xmm3
	addss xmm7, xmm3
	mulss xmm6, xmm6
	addss xmm7, xmm6
	mulss xmm7, [_float_0_25000000]
	ucomiss xmm7, xmm1
	jbe _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__30
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__20:
	mov eax, 0x1
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__80:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__30:
	mov ebx, [edx]
	mov [ebp-0x228], ebx
	mov edi, [edx+0x4]
	mov [ebp-0x214], edi
	mov eax, [ebx+0x43c]
	mov [ebp-0x224], eax
	shl eax, 0x5
	mov [ebp-0x21c], eax
	mov edx, [ebx+0x5c]
	add eax, edx
	mov [ebp-0x21c], eax
	mov edi, [ebx+0x58]
	sub edi, [ebp-0x224]
	mov eax, [ebx+0x438]
	lea ecx, [eax+eax*2]
	mov edx, [ebx+0x54]
	lea ecx, [edx+ecx*4]
	mov [ebp-0x218], ecx
	mov esi, [ebx+0x50]
	sub esi, eax
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x10]
	mov dword [ebp-0x210], 0x0
	mov dword [ebp-0x220], 0x3
	mov dword [ebp-0x20c], 0x0
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__50:
	mov eax, [ebp-0x210]
	test eax, eax
	jz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__40
	lea ecx, [ebp-0x1fc]
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__90:
	mov eax, [ebp-0x210]
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [ebp+edx*8-0x1fc]
	mov [esp], ebx
	mov eax, [ebp-0x220]
	call _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf
	mov [ebp-0x220], eax
	xor dword [ebp-0x210], 0x1
	test eax, eax
	jz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__20
	add dword [ebp-0x20c], 0x1
	add ebx, 0x10
	cmp dword [ebp-0x20c], 0x6
	jnz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__50
	cmp edi, eax
	jl _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__60
	lea eax, [eax+eax*2-0x6]
	cmp esi, eax
	jge _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__70
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__60:
	xor eax, eax
	jmp _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__80
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__40:
	lea ecx, [ebp-0x124]
	jmp _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__90
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__70:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	lea ebx, [ebp-0x28]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	xor esi, esi
	mov [ebp-0x1c], esi
	mov eax, [ebp-0x28]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x44], eax
	mov edi, [ebp+0x10]
	mov eax, [edi+0x4]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov [ebp-0x1c], esi
	mov eax, [ebp-0x28]
	mov [ebp-0x40], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x38], eax
	mov eax, [edi+0x8]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov [ebp-0x1c], esi
	mov eax, [ebp-0x28]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x2c], eax
	mov esi, [ebp-0x220]
	test esi, esi
	jle _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__100
	mov edx, [ebp-0x210]
	lea eax, [edx+edx*2]
	lea eax, [eax+eax*8]
	mov ecx, [ebp-0x21c]
	xor ebx, ebx
	lea edx, [ebp+eax*8-0x1fc]
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__110:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov dword [ecx+0x10], 0x0
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x4c]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	movss [ecx+0x14], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x48]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x30]
	addss xmm1, xmm0
	movss [ecx+0x18], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x44]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x2c]
	addss xmm1, xmm0
	movss [ecx+0x1c], xmm1
	add ebx, 0x1
	add edx, 0x18
	add ecx, 0x20
	cmp ebx, [ebp-0x220]
	jnz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__110
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__100:
	cmp dword [ebp-0x220], 0x2
	jle _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__120
	movzx esi, word [ebp-0x224]
	mov ebx, esi
	lea edx, [ebx+0x1]
	mov ecx, 0x2
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__130:
	mov edi, [ebp-0x218]
	mov [edi], dx
	lea eax, [esi+ecx]
	mov [edi+0x2], ax
	mov [edi+0x4], bx
	mov edi, [ebp-0x214]
	mov eax, [edi]
	mov edi, [ebp-0x218]
	mov [edi+0x6], eax
	mov edi, [ebp-0x214]
	movzx eax, word [edi+0x4]
	mov edi, [ebp-0x218]
	mov [edi+0xa], ax
	add edi, 0xc
	mov [ebp-0x218], edi
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, [ebp-0x220]
	jnz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__130
_Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__120:
	cmp dword [ebp-0x220], 0xffffffff
	jz _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__60
	mov edx, [ebp-0x220]
	mov eax, [ebp-0x228]
	add [eax+0x43c], edx
	mov ebx, [eax+0x438]
	add edx, ebx
	mov eax, edx
	sub eax, 0x2
	mov edi, [ebp-0x228]
	mov [edi+0x438], eax
	jmp _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4__20


;unsigned char R_MarkModelCoreCallback<(unsigned char)1>(void*, GfxPackedVertex const**, GfxPackedVertex const**)
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	xor esi, esi
	lea edi, [ebp-0x1fc]
	mov ebx, edi
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__10:
	mov eax, [ebp+0xc]
	mov edx, [eax+esi*4]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov dword [edi+0xc], 0x3f800000
	add esi, 0x1
	add ebx, 0x18
	add edi, 0x1c
	cmp esi, 0x3
	jnz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__10
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc]
	movss xmm2, dword [ebp-0x1e4]
	movss xmm6, dword [ebp-0x1fc]
	subss xmm6, xmm2
	movss xmm0, dword [ebp-0x1e0]
	movss xmm5, dword [ebp-0x1f8]
	subss xmm5, xmm0
	movss xmm1, dword [ebp-0x1dc]
	movss xmm3, dword [ebp-0x1f4]
	subss xmm3, xmm1
	movss xmm4, dword [ebp-0x1cc]
	subss xmm4, xmm2
	movss xmm2, dword [ebp-0x1c8]
	subss xmm2, xmm0
	movss xmm0, dword [ebp-0x1c4]
	subss xmm0, xmm1
	movaps xmm7, xmm5
	mulss xmm7, xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	subss xmm7, xmm1
	mulss xmm3, xmm4
	mulss xmm0, xmm6
	subss xmm3, xmm0
	mulss xmm6, xmm2
	mulss xmm5, xmm4
	subss xmm6, xmm5
	movaps xmm1, xmm7
	mulss xmm1, [eax]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__20
	mulss xmm1, xmm1
	mulss xmm7, xmm7
	mulss xmm3, xmm3
	addss xmm7, xmm3
	mulss xmm6, xmm6
	addss xmm7, xmm6
	mulss xmm7, [_float_0_25000000]
	ucomiss xmm7, xmm1
	jbe _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__30
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__20:
	mov eax, 0x1
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__80:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__30:
	mov ebx, [edx+0x18]
	mov [ebp-0x210], ebx
	mov edi, [edx]
	mov [ebp-0x22c], edi
	mov eax, [edx+0x4]
	mov [ebp-0x218], eax
	mov edx, [edi+0x43c]
	mov [ebp-0x228], edx
	shl edx, 0x5
	mov [ebp-0x220], edx
	mov ebx, [edi+0x5c]
	add edx, ebx
	mov [ebp-0x220], edx
	mov eax, edi
	mov edi, [edi+0x58]
	sub edi, [ebp-0x228]
	mov edx, eax
	mov eax, [eax+0x438]
	lea ecx, [eax+eax*2]
	mov ebx, edx
	mov edx, [edx+0x54]
	lea ecx, [edx+ecx*4]
	mov [ebp-0x21c], ecx
	mov esi, [ebx+0x50]
	sub esi, eax
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x10]
	mov dword [ebp-0x214], 0x0
	mov dword [ebp-0x224], 0x3
	mov dword [ebp-0x20c], 0x6
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__50:
	mov eax, [ebp-0x214]
	test eax, eax
	jz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__40
	lea ecx, [ebp-0x1fc]
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__90:
	mov eax, [ebp-0x214]
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [ebp+edx*8-0x1fc]
	mov [esp], ebx
	mov eax, [ebp-0x224]
	call _Z21R_ChopPolyBehindPlaneiPK16FxModelMarkPointPS_PKf
	mov [ebp-0x224], eax
	xor dword [ebp-0x214], 0x1
	test eax, eax
	jz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__20
	add ebx, 0x10
	sub dword [ebp-0x20c], 0x1
	jnz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__50
	cmp edi, eax
	jl _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__60
	lea eax, [eax+eax*2-0x6]
	cmp esi, eax
	jge _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__70
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__60:
	xor eax, eax
	jmp _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__80
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__40:
	lea ecx, [ebp-0x124]
	jmp _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__90
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__70:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	lea edi, [ebp-0x28]
	mov [esp+0x4], edi
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	xor ebx, ebx
	mov [ebp-0x1c], ebx
	movss xmm2, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	movss xmm4, dword [ebp-0x20]
	mov esi, [ebp-0x210]
	add esi, 0xc
	mov edi, [ebp-0x210]
	add edi, 0x18
	movaps xmm0, xmm2
	mov eax, [ebp-0x210]
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss [ebp-0x48], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [esi+0x8]
	addss xmm2, xmm3
	mulss xmm4, [edi+0x8]
	addss xmm2, xmm4
	movss [ebp-0x44], xmm2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov [ebp-0x1c], ebx
	movss xmm2, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	movss xmm4, dword [ebp-0x20]
	movaps xmm0, xmm2
	mov eax, [ebp-0x210]
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0xc]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x18]
	addss xmm0, xmm1
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [eax+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	mulss xmm2, [eax+0x8]
	mulss xmm3, [esi+0x8]
	addss xmm2, xmm3
	mulss xmm4, [edi+0x8]
	addss xmm2, xmm4
	movss [ebp-0x38], xmm2
	mov edx, [ebp+0x10]
	mov eax, [edx+0x8]
	mov eax, [eax+0x18]
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov [ebp-0x1c], eax
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov [ebp-0x1c], ebx
	movss xmm2, dword [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	movss xmm4, dword [ebp-0x20]
	movaps xmm0, xmm2
	mov ebx, [ebp-0x210]
	mulss xmm0, [ebx]
	movaps xmm1, xmm3
	mulss xmm1, [ebx+0xc]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebx+0x18]
	addss xmm0, xmm1
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebx+0x4]
	movaps xmm1, xmm3
	mulss xmm1, [esi+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	mulss xmm2, [ebx+0x8]
	mulss xmm3, [esi+0x8]
	addss xmm2, xmm3
	mulss xmm4, [edi+0x8]
	addss xmm2, xmm4
	movss [ebp-0x2c], xmm2
	mov eax, [ebp-0x224]
	test eax, eax
	jle _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__100
	mov edi, [ebp-0x214]
	lea eax, [edi+edi*2]
	lea eax, [eax+eax*8]
	mov ecx, [ebp-0x220]
	xor ebx, ebx
	lea edx, [ebp+eax*8-0x1fc]
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__110:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov dword [ecx+0x10], 0x0
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x4c]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x40]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	movss [ecx+0x14], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x48]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x3c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x30]
	addss xmm1, xmm0
	movss [ecx+0x18], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x44]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x38]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x2c]
	addss xmm1, xmm0
	movss [ecx+0x1c], xmm1
	add ebx, 0x1
	add edx, 0x18
	add ecx, 0x20
	cmp [ebp-0x224], ebx
	jnz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__110
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__100:
	cmp dword [ebp-0x224], 0x2
	jle _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__120
	movzx esi, word [ebp-0x228]
	mov ebx, esi
	lea edx, [ebx+0x1]
	mov ecx, 0x2
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__130:
	mov eax, [ebp-0x21c]
	mov [eax], dx
	lea eax, [esi+ecx]
	mov edi, [ebp-0x21c]
	mov [edi+0x2], ax
	mov [edi+0x4], bx
	mov edi, [ebp-0x218]
	mov eax, [edi]
	mov edi, [ebp-0x21c]
	mov [edi+0x6], eax
	mov edi, [ebp-0x218]
	movzx eax, word [edi+0x4]
	mov edi, [ebp-0x21c]
	mov [edi+0xa], ax
	add edi, 0xc
	mov [ebp-0x21c], edi
	add ecx, 0x1
	add edx, 0x1
	cmp [ebp-0x224], ecx
	jnz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__130
_Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__120:
	cmp dword [ebp-0x224], 0xffffffff
	jz _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__60
	mov edx, [ebp-0x224]
	mov eax, [ebp-0x22c]
	add [eax+0x43c], edx
	mov ebx, [eax+0x438]
	add edx, ebx
	mov eax, edx
	sub eax, 0x2
	mov edi, [ebp-0x22c]
	mov [edi+0x438], eax
	jmp _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4__20
	nop


;R_BoxSurfaces(float const*, float const*, int (**)(int, void*), void*, GfxSurface***, unsigned int, unsigned int*, unsigned int)
_Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, [ebp+0x20]
	mov ebx, [ebp+0x24]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x100]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x98]
	mov [esp], edi
	call _Z10Com_MemsetPvii
	test ebx, ebx
	jz _Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj_10
	xor eax, eax
_Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj_20:
	mov dword [esi+eax*4], 0x0
	add eax, 0x1
	cmp ebx, eax
	jnz _Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj_20
_Z13R_BoxSurfacesPKfS0_PPFiiPvES1_PPP10GfxSurfacejPjj_10:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0xf8]
	mov [esp+0x18], edi
	mov [esp+0x14], ebx
	mov [esp+0x10], esi
	mov edx, [ebp+0x1c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov edx, [ebp+0x10]
	mov [esp], edx
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	call _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_BoxStaticModels(float const*, float const*, int (*)(int), unsigned short*, int)
_Z17R_BoxStaticModelsPKfS0_PFiiEPti:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xb0
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x100]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	mov dword [ebp-0xc], 0x0
	mov eax, [esi+0x20a0]
	mov eax, [eax+0xf8]
	mov [esp+0x10], ebx
	lea edx, [ebp-0xc]
	mov [esp+0xc], edx
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov edx, [ebp+0x10]
	mov [esp], edx
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	call _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh
	mov eax, [ebp-0xc]
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_CylinderSurfaces(float const*, float const*, float, DpvsPlane const*, unsigned int, int (*)(int, void*), void*, GfxSurface**, unsigned int)
_Z18R_CylinderSurfacesPKfS0_fPK9DpvsPlanejPFiiPvES4_PP10GfxSurfacej:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xb0
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x100]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x98]
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	mov dword [ebp-0xc], 0x0
	mov eax, [esi+0x20a0]
	mov eax, [eax+0xf8]
	mov [esp+0x1c], ebx
	lea edx, [ebp-0xc]
	mov [esp+0x18], edx
	mov edx, [ebp+0x28]
	mov [esp+0x14], edx
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov edx, [ebp+0x20]
	mov [esp+0xc], edx
	mov edx, [ebp+0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov edx, [ebp+0x14]
	mov [esp], edx
	movss xmm0, dword [ebp+0x10]
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x8]
	call _Z20R_CylinderSurfaces_rP7mnode_tPKfS2_fPK9DpvsPlanejPFiiPvES6_PP10GfxSurfacejPjPh
	mov eax, [ebp-0xc]
	add esp, 0xb0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_MarkFragments_Go(MarkInfo*, void (*)(void*, int, FxMarkTri*, int, FxMarkPoint*, float const*, float const*), void*, int, FxMarkTri*, int, FxMarkPoint*)
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x99c
	mov eax, [ebp+0x14]
	mov edx, [ebp+0x8]
	mov [edx+0x50], eax
	mov eax, [ebp+0x18]
	mov [edx+0x54], eax
	mov eax, [ebp+0x1c]
	mov [edx+0x58], eax
	mov eax, [ebp+0x20]
	mov [edx+0x5c], eax
	mov dword [edx+0x438], 0x0
	mov dword [edx+0x43c], 0x0
	mov eax, [ebp+0xc]
	mov [edx+0x440], eax
	mov eax, [ebp+0x10]
	mov [edx+0x444], eax
	mov edi, [edx+0xe8]
	test edi, edi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__10
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x12c]
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__20
	mov dword [ebp-0x8d4], 0x0
	mov eax, [ebp-0x8d4]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__110:
	mov edx, [ebp+0x8]
	movzx ecx, word [edx+eax*2+0xec]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	lea edx, [ecx+ecx*8]
	lea edx, [ecx+edx*2]
	mov eax, [eax+0x29c]
	lea edx, [eax+edx*4]
	mov ebx, [edx+0x38]
	mov [ebp-0x8d0], ebx
	mov byte [ebp-0x5c], 0x1f
	movzx eax, byte [edx+0x44]
	mov [ebp-0x5a], al
	movzx eax, byte [edx+0x45]
	mov [ebp-0x5b], al
	mov [ebp-0x58], cx
	lea eax, [edx+0x10]
	movss xmm0, dword [edx+0x10]
	movss [ebp-0x7d8], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x7d4], xmm1
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x7d0], xmm2
	xor ecx, ecx
	mov [ebp-0x7cc], ecx
	lea eax, [edx+0x1c]
	movss xmm3, dword [edx+0x1c]
	movss [ebp-0x7c8], xmm3
	movss xmm7, dword [eax+0x4]
	movss [ebp-0x7c4], xmm7
	mov edi, [eax+0x8]
	mov [ebp-0x7c0], edi
	mov [ebp-0x7bc], ecx
	lea eax, [edx+0x28]
	mov esi, [edx+0x28]
	mov [ebp-0x7b8], esi
	mov ebx, [eax+0x4]
	mov [ebp-0x7b4], ebx
	mov eax, [eax+0x8]
	mov [ebp-0x7b0], eax
	mov [ebp-0x7ac], ecx
	movss [ebp-0xb4], xmm0
	movss [ebp-0xb0], xmm1
	movss [ebp-0xac], xmm2
	movss [ebp-0xa8], xmm3
	movss [ebp-0xa4], xmm7
	mov [ebp-0xa0], edi
	mov [ebp-0x9c], esi
	mov [ebp-0x98], ebx
	mov [ebp-0x94], eax
	movss xmm0, dword [edx+0x34]
	movss [ebp-0x8c0], xmm0
	add edx, 0x4
	mov [ebp-0x8bc], edx
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x8d0]
	mov [esp], edx
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov edi, eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x8d0]
	mov [esp], ecx
	call _Z14XModelGetSkinsPK6XModeli
	mov [ebp-0x8cc], eax
	test edi, edi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__30
	xor ebx, ebx
	xor esi, esi
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__40
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__70:
	add esi, 0x38
	cmp ebx, 0x40
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__30
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__40:
	mov edx, [ebp-0x8cc]
	mov eax, [edx+ebx*4]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4c]
	test byte [eax+0x3d], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__50
	test byte [eax+0x4], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__50
	mov edx, [edx+0x10]
	mov eax, [eax+0x10]
	and eax, edx
	cmp edx, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__60
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__50:
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__70
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__30:
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x438]
	test edx, edx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__80
	mov edi, [ebx+0x43c]
	test edi, edi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__90
	mov eax, [ebp+0x8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__200:
	mov dword [eax+0x438], 0x0
	mov dword [eax+0x43c], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__90:
	add dword [ebp-0x8d4], 0x1
	mov edx, [ebp-0x8d4]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x12c]
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__100
	mov eax, edx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__110
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__100:
	mov ebx, ecx
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__20:
	mov esi, [ebx+0x2b0]
	test esi, esi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__120
	mov dword [ebp-0x8b4], 0x0
	mov esi, [ebp-0x8b4]
	mov edx, [ebp+0x8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__230:
	lea eax, [esi+esi*2]
	lea eax, [edx+eax*4+0x130]
	mov ecx, [eax]
	mov [ebp-0x8a4], ecx
	movzx ebx, word [eax+0x8]
	mov [ebp-0x8b6], bx
	mov ebx, [eax+0x4]
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0xb4]
	rep stosd
	lea esi, [ebp-0xb4]
	mov [esp+0x8], esi
	lea eax, [ebp-0x74]
	mov [esp+0x4], eax
	mov edx, [ebp-0x8a4]
	mov [esp], edx
	call _Z15DObjGetSurfacesPK6DObj_sPiPKc
	lea ecx, [ebp-0x74]
	mov [esp+0x8], ecx
	mov esi, [ebp-0x8a4]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	mov [ebp-0x8a8], eax
	lea eax, [ebp-0xe4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19DObjGetHidePartBitsPK6DObj_sPj
	mov [esp], esi
	call _Z16DObjGetNumModelsPK6DObj_s
	mov [ebp-0x8ac], eax
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__130
	mov dword [ebp-0x8a0], 0x0
	mov dword [ebp-0x8b0], 0x0
	mov edx, [ebp+0x8]
	add edx, 0xc
	mov [ebp-0x944], edx
	mov ebx, [ebp-0x8b0]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__180:
	mov byte [ebp-0x5a], 0x0
	mov byte [ebp-0x5b], 0x0
	movzx ecx, word [ebp-0x8b6]
	mov [ebp-0x58], cx
	movzx eax, byte [ebp-0x8b0]
	or al, 0xc0
	mov [ebp-0x59], al
	mov [esp+0x4], ebx
	mov esi, [ebp-0x8a4]
	mov [esp], esi
	call _Z12DObjGetModelPK6DObj_si
	mov [ebp-0x89c], eax
	mov [esp], esi
	call _Z12DObjNumBonesPK6DObj_s
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x89c]
	mov [esp], edx
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0x890], eax
	mov ecx, [ebp-0x89c]
	mov [esp], ecx
	call _Z17XModelGetBasePosePK6XModel
	mov [ebp-0x898], eax
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp-0x89c]
	mov [esp], ebx
	call _Z14XModelGetSkinsPK6XModeli
	mov [ebp-0x894], eax
	mov ebx, [ebp-0x890]
	test ebx, ebx
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__140
	xor edi, edi
	mov dword [ebp-0x7dc], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__170:
	mov esi, [ebp-0x894]
	mov eax, [esi+edi*4]
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4c]
	test byte [eax+0x3d], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150
	test byte [eax+0x4], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150
	mov edx, [edx+0x10]
	mov eax, [eax+0x10]
	and eax, edx
	cmp edx, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__160
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150:
	add edi, 0x1
	add dword [ebp-0x7dc], 0x38
	cmp [ebp-0x890], edi
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__170
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__140:
	mov ebx, [ebp-0x89c]
	movzx eax, byte [ebx+0x4]
	add [ebp-0x8a0], eax
	shl eax, 0x5
	add [ebp-0x8a8], eax
	add dword [ebp-0x8b0], 0x1
	mov esi, [ebp-0x8b0]
	cmp [ebp-0x8ac], esi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__130
	mov ebx, esi
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__180
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__250:
	mov ecx, [ebp+0x8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__660:
	cvtss2sd xmm0, [ecx+0x8]
	movsd [esp+0x24], xmm0
	cvtss2sd xmm0, [ecx+0x4]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ecx]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ecx+0x48]
	movsd [esp+0xc], xmm0
	mov eax, [ecx+0x50]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_r_markfragments_
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__120:
	add esp, 0x99c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__80:
	mov ecx, [ebx+0x43c]
	test ecx, ecx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__190
	mov eax, ebx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__200
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__160:
	mov ebx, [ebp-0x7dc]
	add ebx, [ebp-0x1c]
	mov [ebp-0x888], ebx
	cmp byte [ebx+0x1], 0x0
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150
	mov ecx, [ebx+0x20]
	test ecx, ecx
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150
	mov dword [ebp-0x88c], 0x0
	mov dword [ebp-0x7e0], 0x0
	mov esi, [ebp-0x888]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__220:
	mov eax, [esi+0x24]
	mov edx, [ebp-0x7e0]
	movzx eax, word [eax+edx]
	shr ax, 0x6
	movzx ebx, ax
	mov ecx, [ebp-0x8a0]
	add ecx, ebx
	mov edx, ecx
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	test [ebp+edx*4-0xe4], eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__210
	mov edx, esi
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__290:
	add dword [ebp-0x88c], 0x1
	add dword [ebp-0x7e0], 0xc
	mov ecx, [ebp-0x88c]
	cmp ecx, [edx+0x20]
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__150
	mov esi, edx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__220
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__130:
	add dword [ebp-0x8b4], 0x1
	mov eax, [ebp-0x8b4]
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x2b0]
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__120
	mov esi, eax
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__230
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__210:
	mov eax, ebx
	shl eax, 0x5
	mov esi, [ebp-0x898]
	add esi, eax
	mov [ebp-0x5c], bl
	add eax, [ebp-0x8a8]
	mov edx, [eax]
	mov [ebp-0xb4], edx
	mov edx, [eax+0x4]
	mov [ebp-0xb0], edx
	mov edx, [eax+0x8]
	mov [ebp-0xac], edx
	mov edx, [eax+0xc]
	mov [ebp-0xa8], edx
	mov edx, [eax+0x10]
	mov [ebp-0xa4], edx
	mov edx, [eax+0x14]
	mov [ebp-0xa0], edx
	mov edx, [eax+0x18]
	mov [ebp-0x9c], edx
	mov eax, [eax+0x1c]
	mov [ebp-0x98], eax
	mov eax, [ebp+0x8]
	add eax, 0xd8
	movss xmm0, dword [ebp-0xa4]
	movss [ebp-0x934], xmm0
	mov edx, [ebp+0x8]
	addss xmm0, [edx+0xd8]
	movss [ebp-0x934], xmm0
	movss [ebp-0xa4], xmm0
	movss xmm0, dword [ebp-0xa0]
	movss [ebp-0x938], xmm0
	addss xmm0, [eax+0x4]
	movss [ebp-0x938], xmm0
	movss [ebp-0xa0], xmm0
	movss xmm1, dword [ebp-0x9c]
	movss [ebp-0x884], xmm1
	addss xmm1, [eax+0x8]
	movss [ebp-0x884], xmm1
	movss [ebp-0x9c], xmm1
	movss xmm5, dword [ebp-0x98]
	movaps xmm3, xmm5
	mulss xmm3, [ebp-0xb4]
	movaps xmm4, xmm5
	mulss xmm4, [ebp-0xb0]
	mulss xmm5, [ebp-0xac]
	movaps xmm2, xmm3
	mulss xmm2, [ebp-0xb4]
	movss [ebp-0x880], xmm2
	movss xmm2, dword [ebp-0xb0]
	movaps xmm7, xmm3
	mulss xmm7, xmm2
	movss [ebp-0x87c], xmm7
	movss xmm1, dword [ebp-0xac]
	movaps xmm0, xmm3
	mulss xmm0, xmm1
	movss [ebp-0x878], xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm3, xmm0
	movss [ebp-0x874], xmm3
	mulss xmm2, xmm4
	movss [ebp-0x870], xmm2
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [ebp-0x86c], xmm2
	mulss xmm4, xmm0
	movss [ebp-0x868], xmm4
	mulss xmm1, xmm5
	movss [ebp-0x864], xmm1
	mulss xmm5, xmm0
	movss xmm1, dword [esi+0x1c]
	movaps xmm7, xmm1
	mulss xmm7, [esi]
	lea eax, [esi+0x4]
	mov [ebp-0x848], eax
	movaps xmm4, xmm1
	mulss xmm4, [esi+0x4]
	lea ebx, [esi+0x8]
	mulss xmm1, [esi+0x8]
	movaps xmm0, xmm7
	mulss xmm0, [esi]
	movss [ebp-0x85c], xmm0
	movss xmm3, dword [esi+0x4]
	movaps xmm2, xmm7
	mulss xmm2, xmm3
	movss [ebp-0x858], xmm2
	movss xmm2, dword [esi+0x8]
	movaps xmm0, xmm7
	mulss xmm0, xmm2
	movss [ebp-0x854], xmm0
	movss xmm0, dword [esi+0xc]
	mulss xmm7, xmm0
	mulss xmm3, xmm4
	movss [ebp-0x850], xmm3
	movaps xmm3, xmm4
	mulss xmm3, xmm2
	movss [ebp-0x84c], xmm3
	mulss xmm4, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x850]
	addss xmm0, xmm2
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm0
	movss xmm6, dword [ebp-0x858]
	subss xmm6, xmm1
	movss xmm0, dword [ebp-0x854]
	addss xmm0, xmm4
	movss [ebp-0x7f8], xmm0
	addss xmm1, [ebp-0x858]
	movss [ebp-0x7fc], xmm1
	addss xmm2, [ebp-0x85c]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm2
	movss [ebp-0x970], xmm1
	movss xmm2, dword [ebp-0x84c]
	subss xmm2, xmm7
	movss [ebp-0x800], xmm2
	movss xmm0, dword [ebp-0x854]
	subss xmm0, xmm4
	movss [ebp-0x804], xmm0
	addss xmm7, [ebp-0x84c]
	movss xmm1, dword [ebp-0x85c]
	addss xmm1, [ebp-0x850]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm1
	movss [ebp-0x808], xmm2
	movss xmm4, dword [esi+0x10]
	movss xmm0, dword [esi+0x14]
	movss [ebp-0x860], xmm0
	movss xmm2, dword [esi+0x18]
	movss xmm0, dword [ebp-0x870]
	addss xmm0, [ebp-0x864]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x3d8], xmm1
	movss xmm0, dword [ebp-0x87c]
	addss xmm0, xmm5
	movss [ebp-0x3d4], xmm0
	movss xmm0, dword [ebp-0x878]
	subss xmm0, [ebp-0x868]
	movss [ebp-0x3d0], xmm0
	movss xmm0, dword [ebp-0x87c]
	subss xmm0, xmm5
	movss [ebp-0x3cc], xmm0
	movss xmm1, dword [ebp-0x880]
	addss xmm1, [ebp-0x864]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x3c8], xmm0
	movss xmm0, dword [ebp-0x874]
	addss xmm0, [ebp-0x86c]
	movss [ebp-0x3c4], xmm0
	movss xmm0, dword [ebp-0x878]
	addss xmm0, [ebp-0x868]
	movss [ebp-0x3c0], xmm0
	movss xmm1, dword [ebp-0x86c]
	subss xmm1, [ebp-0x874]
	movss [ebp-0x3bc], xmm1
	movss xmm0, dword [ebp-0x880]
	addss xmm0, [ebp-0x870]
	movss [ebp-0x880], xmm0
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebp-0x880]
	movss [ebp-0x3b8], xmm0
	movss xmm1, dword [ebp-0x934]
	movss [ebp-0x3b4], xmm1
	movss xmm0, dword [ebp-0x938]
	movss [ebp-0x3b0], xmm0
	movss xmm1, dword [ebp-0x884]
	movss [ebp-0x3ac], xmm1
	movss [ebp-0x114], xmm3
	movss [ebp-0x110], xmm6
	movss xmm0, dword [ebp-0x7f8]
	movss [ebp-0x10c], xmm0
	movss xmm1, dword [ebp-0x7fc]
	movss [ebp-0x108], xmm1
	movss xmm0, dword [ebp-0x970]
	movss [ebp-0x104], xmm0
	movss xmm1, dword [ebp-0x800]
	movss [ebp-0x100], xmm1
	movss xmm0, dword [ebp-0x804]
	movss [ebp-0xfc], xmm0
	movss [ebp-0xf8], xmm7
	movss xmm1, dword [ebp-0x808]
	movss [ebp-0xf4], xmm1
	mulss xmm3, xmm4
	movss xmm0, dword [ebp-0x7fc]
	mulss xmm0, [ebp-0x860]
	addss xmm3, xmm0
	movss xmm1, dword [ebp-0x804]
	mulss xmm1, xmm2
	addss xmm3, xmm1
	xorps xmm3, [_data16_80000000]
	movss [ebp-0xf0], xmm3
	mulss xmm6, xmm4
	movss xmm1, dword [ebp-0x970]
	mulss xmm1, [ebp-0x860]
	addss xmm6, xmm1
	mulss xmm7, xmm2
	addss xmm6, xmm7
	xorps xmm6, [_data16_80000000]
	movss [ebp-0xec], xmm6
	mulss xmm4, [ebp-0x7f8]
	movss xmm3, dword [ebp-0x800]
	mulss xmm3, [ebp-0x860]
	movaps xmm7, xmm4
	addss xmm7, xmm3
	mulss xmm2, [ebp-0x808]
	addss xmm2, xmm7
	movss [ebp-0x7f8], xmm2
	xor dword [ebp-0x7f8], 0x80000000
	movss xmm0, dword [ebp-0x7f8]
	movss [ebp-0xe8], xmm0
	lea eax, [ebp-0x144]
	mov [esp+0x8], eax
	lea edx, [ebp-0x3d8]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x114]
	mov [esp], ecx
	call _Z16MatrixMultiply43PA3_KfS1_PA3_f
	mov eax, [ebp+0x8]
	add eax, 0x78
	lea edx, [ebp-0x228]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__240:
	movss xmm2, dword [eax]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x144]
	movss xmm4, dword [eax+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x140]
	addss xmm1, xmm0
	movss xmm3, dword [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x13c]
	addss xmm1, xmm0
	movss [edx], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x138]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x134]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x130]
	addss xmm0, xmm1
	movss [edx+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x12c]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x128]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x124]
	addss xmm0, xmm1
	movss [edx+0x8], xmm0
	mulss xmm2, [ebp-0x120]
	mulss xmm4, [ebp-0x11c]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x118]
	addss xmm2, xmm3
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm2
	movss [edx+0xc], xmm0
	add eax, 0x10
	add edx, 0x10
	lea ecx, [ebp-0x1c8]
	cmp ecx, edx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__240
	lea eax, [ebp-0x74]
	mov [esp+0x8], eax
	lea edx, [ebp-0x144]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x24
	mov [esp], eax
	call _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	movss xmm0, dword [esi+0x1c]
	movaps xmm3, xmm0
	mulss xmm3, [esi]
	movaps xmm4, xmm0
	mov ecx, [ebp-0x848]
	mulss xmm4, [ecx]
	movaps xmm5, xmm0
	mulss xmm5, [ebx]
	movaps xmm0, xmm3
	mulss xmm0, [esi]
	movss [ebp-0x844], xmm0
	movss xmm2, dword [esi+0x4]
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	movss [ebp-0x840], xmm1
	movss xmm1, dword [esi+0x8]
	movaps xmm7, xmm3
	mulss xmm7, xmm1
	movss [ebp-0x83c], xmm7
	movss xmm0, dword [esi+0xc]
	mulss xmm3, xmm0
	movss [ebp-0x838], xmm3
	mulss xmm2, xmm4
	movss [ebp-0x834], xmm2
	movaps xmm2, xmm4
	mulss xmm2, xmm1
	movss [ebp-0x830], xmm2
	mulss xmm4, xmm0
	movss [ebp-0x82c], xmm4
	mulss xmm1, xmm5
	movss [ebp-0x828], xmm1
	mulss xmm5, xmm0
	movss [ebp-0x824], xmm5
	lea eax, [esi+0x10]
	mov edx, [esi+0x10]
	mov ecx, [eax+0x4]
	mov eax, [eax+0x8]
	movss xmm1, dword [ebp-0x98]
	movaps xmm5, xmm1
	mulss xmm5, [ebp-0xb4]
	movaps xmm6, xmm1
	mulss xmm6, [ebp-0xb0]
	mulss xmm1, [ebp-0xac]
	movaps xmm3, xmm5
	mulss xmm3, [ebp-0xb4]
	movss [ebp-0x820], xmm3
	movss xmm3, dword [ebp-0xb0]
	movaps xmm7, xmm5
	mulss xmm7, xmm3
	movss xmm2, dword [ebp-0xac]
	movaps xmm0, xmm5
	mulss xmm0, xmm2
	movss [ebp-0x81c], xmm0
	movss xmm0, dword [ebp-0xa8]
	mulss xmm5, xmm0
	mulss xmm3, xmm6
	movss [ebp-0x818], xmm3
	movaps xmm3, xmm6
	mulss xmm3, xmm2
	movss [ebp-0x814], xmm3
	mulss xmm6, xmm0
	mulss xmm2, xmm1
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x818]
	addss xmm0, xmm2
	movss xmm3, dword [_float_1_00000000]
	subss xmm3, xmm0
	movss [ebp-0x96c], xmm3
	movaps xmm3, xmm7
	subss xmm3, xmm1
	movss xmm4, dword [ebp-0x81c]
	addss xmm4, xmm6
	addss xmm7, xmm1
	addss xmm2, [ebp-0x820]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm2
	movss xmm0, dword [ebp-0x814]
	subss xmm0, xmm5
	movss [ebp-0x7ec], xmm0
	movss xmm2, dword [ebp-0x81c]
	subss xmm2, xmm6
	movss [ebp-0x7f0], xmm2
	addss xmm5, [ebp-0x814]
	movss xmm0, dword [ebp-0x820]
	addss xmm0, [ebp-0x818]
	movss xmm2, dword [_float_1_00000000]
	subss xmm2, xmm0
	movss [ebp-0x7f4], xmm2
	movss xmm6, dword [ebp-0xa4]
	movss xmm2, dword [ebp-0x9c]
	movss xmm0, dword [ebp-0x96c]
	movss [ebp-0x174], xmm0
	movss [ebp-0x170], xmm3
	movss [ebp-0x16c], xmm4
	movss [ebp-0x168], xmm7
	movss [ebp-0x164], xmm1
	movss xmm0, dword [ebp-0x7ec]
	movss [ebp-0x160], xmm0
	movss xmm0, dword [ebp-0x7f0]
	movss [ebp-0x15c], xmm0
	movss [ebp-0x158], xmm5
	movss xmm0, dword [ebp-0x7f4]
	movss [ebp-0x154], xmm0
	movss xmm0, dword [ebp-0x96c]
	mulss xmm0, xmm6
	mulss xmm7, [ebp-0xa0]
	addss xmm0, xmm7
	movss xmm7, dword [ebp-0x7f0]
	mulss xmm7, xmm2
	addss xmm0, xmm7
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x150], xmm0
	mulss xmm3, xmm6
	mulss xmm1, [ebp-0xa0]
	addss xmm3, xmm1
	mulss xmm5, xmm2
	addss xmm3, xmm5
	xorps xmm3, [_data16_80000000]
	movss [ebp-0x14c], xmm3
	mulss xmm4, xmm6
	movss xmm0, dword [ebp-0x7ec]
	mulss xmm0, [ebp-0xa0]
	addss xmm4, xmm0
	mulss xmm2, [ebp-0x7f4]
	addss xmm4, xmm2
	xorps xmm4, [_data16_80000000]
	movss [ebp-0x148], xmm4
	movss xmm0, dword [ebp-0x834]
	addss xmm0, [ebp-0x828]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movss [ebp-0x1a4], xmm1
	movss xmm0, dword [ebp-0x840]
	addss xmm0, [ebp-0x824]
	movss [ebp-0x1a0], xmm0
	movss xmm0, dword [ebp-0x83c]
	subss xmm0, [ebp-0x82c]
	movss [ebp-0x19c], xmm0
	movss xmm2, dword [ebp-0x840]
	subss xmm2, [ebp-0x824]
	movss [ebp-0x198], xmm2
	movss xmm3, dword [ebp-0x844]
	addss xmm3, [ebp-0x828]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm3
	movss [ebp-0x194], xmm0
	movss xmm0, dword [ebp-0x838]
	addss xmm0, [ebp-0x830]
	movss [ebp-0x190], xmm0
	movss xmm7, dword [ebp-0x83c]
	addss xmm7, [ebp-0x82c]
	movss [ebp-0x18c], xmm7
	movss xmm0, dword [ebp-0x830]
	subss xmm0, [ebp-0x838]
	movss [ebp-0x188], xmm0
	movss xmm1, dword [ebp-0x844]
	addss xmm1, [ebp-0x834]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, xmm1
	movss [ebp-0x184], xmm0
	mov [ebp-0x180], edx
	mov [ebp-0x17c], ecx
	mov [ebp-0x178], eax
	lea ebx, [ebp-0x7d8]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x1a4]
	mov [esp+0x4], eax
	lea edx, [ebp-0x174]
	mov [esp], edx
	call _Z16MatrixMultiply43PA3_KfS1_PA3_f
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [ebp-0x34], eax
	mov eax, [ecx+0x4]
	mov [ebp-0x30], eax
	mov eax, [ecx+0x8]
	mov [ebp-0x2c], eax
	mov esi, [ebp-0x944]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	mov eax, [ebp+0x8]
	movss xmm2, dword [eax+0x48]
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm0
	addss xmm1, [eax+0xc]
	movss [ebp-0x28], xmm1
	movaps xmm1, xmm0
	addss xmm1, [eax+0x10]
	movss [ebp-0x24], xmm1
	addss xmm0, [eax+0x14]
	movss [ebp-0x20], xmm0
	movaps xmm0, xmm2
	addss xmm0, [eax+0xc]
	movss [ebp-0x44], xmm0
	movaps xmm0, xmm2
	addss xmm0, [eax+0x10]
	movss [ebp-0x40], xmm0
	addss xmm2, [eax+0x14]
	movss [ebp-0x3c], xmm2
	mov [ebp-0x90], eax
	lea eax, [ebp-0x5c]
	mov [ebp-0x8c], eax
	mov [ebp-0x88], esi
	lea edx, [ebp-0x74]
	mov [ebp-0x84], edx
	lea ecx, [ebp-0x228]
	mov [ebp-0x80], ecx
	lea eax, [ebp-0x90]
	mov [esp+0x14], eax
	mov dword [esp+0x10], _Z23R_MarkModelCoreCallbackILh0EEhPvPPK15GfxPackedVertexS4_
	lea eax, [ebp-0x44]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x88c]
	mov [esp+0x4], ebx
	mov esi, [ebp-0x888]
	mov [esp], esi
	call _Z28XSurfaceVisitTrianglesInAabbPK8XSurfacejPKfS3_PFhPvPPK15GfxPackedVertexS8_ES4_
	test al, al
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__250
	mov eax, [ebp+0x8]
	mov edx, [eax+0x43c]
	test edx, edx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__260
	mov ecx, eax
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__510:
	mov edx, [ecx+0x438]
	test edx, edx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__270
	mov eax, [ecx+0x43c]
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__280
	mov eax, [ebp+0x8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__530:
	mov dword [eax+0x438], 0x0
	mov dword [eax+0x43c], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__280:
	mov edx, [ebp-0x888]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__290
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__190:
	mov eax, ebx
	add eax, 0x30
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov eax, [ebx+0x5c]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebx+0x444]
	mov [esp], eax
	call dword [ebx+0x440]
	mov eax, [ebp+0x8]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__200
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__10:
	lea ecx, [ebp-0x7d8]
	mov [ebp-0x5c], ecx
	mov esi, [edx+0x4c]
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0x100]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x228]
	mov [esp], eax
	call _Z10Com_MemsetPvii
	mov dword [ebp-0x1c], 0x0
	mov ecx, [ebp+0x8]
	add ecx, 0x6c
	mov edx, [ebp+0x8]
	add edx, 0x60
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0xf8]
	lea ebx, [ebp-0x228]
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x1
	lea ebx, [ebp-0x1c]
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x100
	lea ebx, [ebp-0x5c]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _ZZ28R_MarkFragments_WorldBrushesP8MarkInfoE9allowSurf
	call _Z15R_BoxSurfaces_rP7mnode_tPKfS2_PPFiiPvES3_PPP10GfxSurfacejPjjPh
	mov esi, [ebp-0x1c]
	test esi, esi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__300
	mov dword [ebp-0x91c], 0x0
	mov byte [ebp-0x915], 0x0
	mov esi, [ebp+0x8]
	add esi, 0x24
	mov [ebp-0x93c], esi
	mov eax, [ebp+0x8]
	add eax, 0x78
	mov [ebp-0x940], eax
	mov edx, [ebp+0x8]
	add edx, 0x28
	mov [ebp-0x954], edx
	mov ecx, [ebp+0x8]
	add ecx, 0x2c
	mov [ebp-0x958], ecx
	mov ebx, [ebp-0x91c]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__310
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__330:
	add dword [ebp-0x91c], 0x1
	mov esi, [ebp-0x91c]
	cmp [ebp-0x1c], esi
	jbe _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__320
	mov ebx, esi
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__310:
	mov edi, [ebp+ebx*4-0x7d8]
	movzx eax, byte [edi+0x14]
	mov [ebp-0x80e], al
	cmp al, 0x1f
	setnz al
	mov edx, [ebp+0x8]
	cmp al, [edx+0xe4]
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__330
	movzx ecx, byte [edi+0x15]
	mov [ebp-0x80f], cl
	test cl, cl
	setnz al
	cmp al, [edx+0xe5]
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__330
	movzx ebx, byte [edi+0x16]
	mov [ebp-0x810], bl
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	mov eax, [edi+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ecx+0x34]
	lea edx, [eax+edx*4]
	mov [ebp-0x904], edx
	mov edx, [edi+0xc]
	mov eax, [ecx+0x14]
	lea edx, [eax+edx*2]
	mov [ebp-0x908], edx
	movzx esi, word [edi+0xa]
	test esi, esi
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__330
	mov dword [ebp-0x914], 0x0
	mov [ebp-0x950], edx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__340
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__350:
	add dword [ebp-0x914], 0x1
	add dword [ebp-0x908], 0x6
	add dword [ebp-0x950], 0x6
	cmp esi, [ebp-0x914]
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__330
	mov edx, [ebp-0x950]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__340:
	movzx eax, word [edx+0x4]
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	mov ecx, [ebp-0x904]
	lea ebx, [ecx+ebx*4]
	movzx eax, word [edx+0x2]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*2]
	mov eax, [ebp-0x904]
	lea ecx, [eax+ecx*4]
	movzx eax, word [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x904]
	lea edx, [eax+edx*4]
	movss xmm2, dword [ecx]
	movss xmm6, dword [edx]
	subss xmm6, xmm2
	movss xmm0, dword [ecx+0x4]
	movss xmm5, dword [edx+0x4]
	subss xmm5, xmm0
	movss xmm1, dword [ecx+0x8]
	movss xmm3, dword [edx+0x8]
	subss xmm3, xmm1
	movss xmm4, dword [ebx]
	subss xmm4, xmm2
	movss xmm2, dword [ebx+0x4]
	subss xmm2, xmm0
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm1
	movaps xmm7, xmm5
	mulss xmm7, xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	subss xmm7, xmm1
	mulss xmm3, xmm4
	mulss xmm0, xmm6
	subss xmm3, xmm0
	mulss xmm6, xmm2
	mulss xmm5, xmm4
	subss xmm6, xmm5
	movaps xmm1, xmm7
	mov edx, [ebp-0x93c]
	mulss xmm1, [edx]
	movaps xmm0, xmm3
	mov ecx, [ebp-0x954]
	mulss xmm0, [ecx]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mov ebx, [ebp-0x958]
	mulss xmm0, [ebx]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__350
	mulss xmm1, xmm1
	mulss xmm7, xmm7
	mulss xmm3, xmm3
	addss xmm7, xmm3
	mulss xmm6, xmm6
	addss xmm7, xmm6
	mulss xmm7, [_float_0_25000000]
	ucomiss xmm7, xmm1
	ja _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__350
	xor ebx, ebx
	lea esi, [ebp-0x3d8]
	mov ecx, esi
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__360:
	mov edx, [ebp-0x908]
	movzx eax, word [edx+ebx*2]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x904]
	lea edx, [eax+edx*4]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov dword [ecx+0x10], 0x0
	mov dword [ecx+0x14], 0x0
	mov dword [esi+0xc], 0x3f800000
	add ebx, 0x1
	add ecx, 0x18
	add esi, 0x1c
	cmp ebx, 0x3
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__360
	mov ebx, [ebp-0x940]
	mov dword [ebp-0x90c], 0x0
	mov dword [ebp-0x910], 0x3
	xor esi, esi
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__380:
	cmp dword [ebp-0x90c], 0x1
	sbb ecx, ecx
	and ecx, 0xd8
	lea edx, [ebp-0x3d8]
	lea ecx, [edx+ecx]
	mov eax, [ebp-0x90c]
	lea edx, [eax+eax*2]
	lea edx, [edx+edx*8]
	lea edx, [ebp+edx*8-0x3d8]
	mov [esp], ebx
	mov eax, [ebp-0x910]
	call _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf
	mov [ebp-0x910], eax
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__370
	xor dword [ebp-0x90c], 0x1
	add esi, 0x1
	add ebx, 0x10
	cmp esi, 0x6
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__380
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x43c]
	mov eax, [edx+0x58]
	sub eax, ebx
	cmp [ebp-0x910], eax
	jg _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__390
	mov ecx, [edx+0x438]
	mov esi, [ebp-0x910]
	lea edx, [esi+esi*2-0x6]
	mov esi, [ebp+0x8]
	mov eax, [esi+0x50]
	sub eax, ecx
	cmp edx, eax
	jg _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__400
	lea edx, [ecx+ecx*2]
	mov eax, [esi+0x54]
	lea edx, [eax+edx*4]
	cmp dword [ebp-0x910], 0x2
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__410
	mov [ebp-0x7e8], bx
	mov esi, ebx
	lea ecx, [ebx+0x1]
	mov ebx, 0x2
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__420:
	mov [edx], cx
	movzx eax, word [ebp-0x7e8]
	add eax, ebx
	mov [edx+0x2], ax
	mov [edx+0x4], si
	movzx eax, byte [ebp-0x810]
	mov [edx+0x7], al
	movzx eax, byte [ebp-0x80f]
	mov [edx+0x8], al
	movzx eax, byte [ebp-0x80e]
	mov [edx+0x6], al
	mov word [edx+0xa], 0x0
	mov byte [edx+0x9], 0x0
	add edx, 0xc
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x910], ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__420
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__410:
	mov edx, [ebp-0x950]
	movzx eax, word [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x904]
	lea edx, [ecx+edx*4]
	mov ebx, [ebp-0x950]
	movzx eax, word [ebx+0x2]
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	lea ebx, [ecx+ebx*4]
	mov esi, [ebp-0x950]
	movzx eax, word [esi+0x4]
	lea esi, [eax+eax*4]
	lea esi, [eax+esi*2]
	lea esi, [ecx+esi*4]
	mov eax, [edx+0x1c]
	mov [ebp-0x74], eax
	mov eax, [edx+0x20]
	mov [ebp-0x70], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x6c], eax
	mov eax, [ebx+0x20]
	mov [ebp-0x68], eax
	mov eax, [esi+0x1c]
	mov [ebp-0x64], eax
	mov eax, [esi+0x20]
	mov [ebp-0x60], eax
	mov eax, [edx+0x24]
	mov [ebp-0xe4], eax
	mov [ebp-0xe0], eax
	mov [ebp-0xdc], eax
	mov [ebp-0xd8], eax
	lea edx, [ebp-0xe4]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0xd8], 0x0
	mov eax, [ebp-0xe4]
	mov [ebp-0xb4], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0xb0], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0xac], eax
	mov eax, [ebx+0x24]
	mov [ebp-0xe4], eax
	mov [ebp-0xe0], eax
	mov [ebp-0xdc], eax
	mov [ebp-0xd8], eax
	lea ecx, [ebp-0xe4]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0xd8], 0x0
	mov eax, [ebp-0xe4]
	mov [ebp-0xa8], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0xa0], eax
	mov edx, [esi+0x24]
	mov [ebp-0x44], edx
	mov [ebp-0x40], edx
	mov [ebp-0x3c], edx
	mov [ebp-0x38], edx
	lea eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0x38], 0x0
	mov eax, [ebp-0x44]
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x98], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x94], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x43c]
	mov edx, eax
	shl edx, 0x5
	add edx, [ebx+0x5c]
	mov ebx, [ebp-0x910]
	test ebx, ebx
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__430
	mov ecx, edx
	xor ebx, ebx
	mov esi, [ebp-0x90c]
	lea eax, [esi+esi*2]
	lea eax, [eax+eax*8]
	lea edx, [ebp+eax*8-0x3d8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__440:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x74]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x6c]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x64]
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x70]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x68]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	movss [ecx+0x10], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xb4]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x9c]
	addss xmm1, xmm0
	movss [ecx+0x14], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xb0]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss [ecx+0x18], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xac]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa0]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x94]
	addss xmm1, xmm0
	movss [ecx+0x1c], xmm1
	add ebx, 0x1
	add edx, 0x18
	add ecx, 0x20
	cmp [ebp-0x910], ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__440
	mov edx, [ebp+0x8]
	mov eax, [edx+0x43c]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__430:
	add eax, [ebp-0x910]
	mov ecx, [ebp+0x8]
	mov [ecx+0x43c], eax
	mov ebx, [ecx+0x438]
	add [ebp-0x910], ebx
	mov eax, [ebp-0x910]
	sub eax, 0x2
	mov [ecx+0x438], eax
	mov byte [ebp-0x915], 0x1
	movzx esi, word [edi+0xa]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__350
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__320:
	cmp byte [ebp-0x915], 0x0
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__300
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [esp+0x18], eax
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	mov edx, eax
	mov eax, [eax+0x5c]
	mov [esp+0x10], eax
	mov eax, [edx+0x43c]
	mov [esp+0xc], eax
	mov eax, [edx+0x54]
	mov [esp+0x8], eax
	mov eax, [edx+0x438]
	mov [esp+0x4], eax
	mov eax, [edx+0x444]
	mov [esp], eax
	call dword [edx+0x440]
	mov ecx, [ebp+0x8]
	mov dword [ecx+0x438], 0x0
	mov dword [ecx+0x43c], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__300:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx+0x434]
	mov [ebp-0x8fc], ebx
	test ebx, ebx
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__120
	mov dword [ebp-0x900], 0x0
	mov esi, [ebp+0x8]
	add esi, 0x24
	mov [ebp-0x93c], esi
	mov eax, [ebp+0x8]
	add eax, 0x78
	mov [ebp-0x940], eax
	mov edx, [ebp+0x8]
	add edx, 0x2b4
	mov [ebp-0x94c], edx
	mov ecx, edx
	mov esi, edx
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__500:
	movzx ecx, word [ecx+0x8]
	mov [ebp-0x80a], cx
	lea ebx, [ebp-0x34]
	mov [esp+0x4], ebx
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z16CG_GetPoseAnglesPK7cpose_tPf
	lea eax, [ebp-0x7d8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
	lea ecx, [ebp-0x7b4]
	mov [esp+0x4], ecx
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z16CG_GetPoseOriginPK7cpose_tPf
	mov eax, [ebp-0x940]
	lea edx, [ebp-0x228]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__450:
	movss xmm2, dword [eax]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x7d8]
	movss xmm4, dword [eax+0x4]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x7d4]
	addss xmm1, xmm0
	movss xmm3, dword [eax+0x8]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x7d0]
	addss xmm1, xmm0
	movss [edx], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x7cc]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x7c8]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x7c4]
	addss xmm0, xmm1
	movss [edx+0x4], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x7c0]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x7bc]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x7b8]
	addss xmm0, xmm1
	movss [edx+0x8], xmm0
	mulss xmm2, [ebp-0x7b4]
	mulss xmm4, [ebp-0x7b0]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x7ac]
	addss xmm2, xmm3
	movss xmm0, dword [eax+0xc]
	subss xmm0, xmm2
	movss [edx+0xc], xmm0
	add eax, 0x10
	add edx, 0x10
	lea ebx, [ebp-0x1c8]
	cmp edx, ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__450
	lea esi, [ebp-0x74]
	mov [esp+0x8], esi
	lea eax, [ebp-0x7d8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x93c]
	mov [esp], edx
	call _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	mov ecx, [ebp-0x94c]
	mov eax, [ecx]
	movzx ebx, word [eax+0x32]
	mov [ebp-0x8f0], ebx
	movzx eax, word [eax+0x30]
	add eax, ebx
	mov [ebp-0x8f4], eax
	cmp ebx, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__460
	lea edi, [ebx+ebx*2]
	shl edi, 0x4
	mov byte [ebp-0x8f5], 0x0
	mov dword [ebp-0x7e4], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__490:
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	mov esi, [ecx+0x294]
	add esi, edi
	mov [ebp-0x8ec], esi
	mov eax, [esi+0x10]
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x4c]
	test byte [eax+0x3d], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
	test byte [eax+0x4], 0x4
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
	mov edx, [edx+0x10]
	mov eax, [eax+0x10]
	and eax, edx
	cmp edx, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__480
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470:
	add dword [ebp-0x7e4], 0x1
	add edi, 0x30
	mov eax, [ebp-0x8f4]
	sub eax, [ebp-0x8f0]
	cmp eax, [ebp-0x7e4]
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__490
	cmp byte [ebp-0x8f5], 0x0
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__460
	lea ecx, [ebp-0xe4]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x7d8]
	mov [esp], ebx
	call _Z15MatrixTransposePA3_KfPA3_f
	movss xmm0, dword [_data16_80000000]
	movss xmm2, dword [ebp-0x7b4]
	xorps xmm2, xmm0
	movss xmm3, dword [ebp-0x7b0]
	xorps xmm3, xmm0
	movss xmm4, dword [ebp-0x7ac]
	xorps xmm4, xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xe4]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd8]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0xcc]
	addss xmm0, xmm1
	movss [ebp-0xc0], xmm0
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xe0]
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0xd4]
	addss xmm0, xmm1
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0xc8]
	addss xmm0, xmm1
	movss [ebp-0xbc], xmm0
	mulss xmm2, [ebp-0xdc]
	mulss xmm3, [ebp-0xd0]
	addss xmm2, xmm3
	mulss xmm4, [ebp-0xc4]
	addss xmm2, xmm4
	movss [ebp-0xb8], xmm2
	lea esi, [ebp-0x28]
	mov [esp+0x8], esi
	lea eax, [ebp-0xe4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z23MatrixTransformVector43PKfPA3_S_Pf
	lea ebx, [ebp-0x44]
	mov [esp+0x8], ebx
	lea ecx, [ebp-0x7d8]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [esp], eax
	call _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	mov [esp+0x18], ebx
	mov [esp+0x14], esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x5c]
	mov [esp+0x10], eax
	mov eax, [ebx+0x43c]
	mov [esp+0xc], eax
	mov eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov eax, [ebx+0x438]
	mov [esp+0x4], eax
	mov eax, [ebx+0x444]
	mov [esp], eax
	call dword [ebx+0x440]
	mov dword [ebx+0x438], 0x0
	mov dword [ebx+0x43c], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__460:
	add dword [ebp-0x900], 0x1
	add dword [ebp-0x94c], 0xc
	mov esi, [ebp-0x900]
	cmp [ebp-0x8fc], esi
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__120
	mov ecx, [ebp-0x94c]
	mov esi, [ebp-0x94c]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__500
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__260:
	add eax, 0x18
	mov [esp+0x8], eax
	lea edx, [ebp-0x144]
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	add eax, 0x30
	mov [esp], eax
	call _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	mov ecx, [ebp+0x8]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__510
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__270:
	mov ebx, ecx
	mov ecx, [ecx+0x43c]
	test ecx, ecx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__520
	mov eax, ebx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__530
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__520:
	mov eax, ebx
	add eax, 0x18
	mov [esp+0x18], eax
	mov esi, [ebp-0x944]
	mov [esp+0x14], esi
	mov eax, [ebx+0x5c]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [ebx+0x54]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebx+0x444]
	mov [esp], eax
	call dword [ebx+0x440]
	mov eax, [ebp+0x8]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__530
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__480:
	movzx eax, byte [esi+0x14]
	mov [ebp-0x80b], al
	cmp al, 0x1f
	setnz al
	cmp al, [ebx+0xe4]
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
	movzx edx, byte [esi+0x15]
	mov [ebp-0x80c], dl
	test dl, dl
	setnz al
	cmp al, [ebx+0xe5]
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
	movzx ebx, byte [esi+0x16]
	mov [ebp-0x80d], bl
	mov eax, [esi+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ecx+0x34]
	lea edx, [eax+edx*4]
	mov [ebp-0x8d8], edx
	mov edx, [esi+0xc]
	mov eax, [ecx+0x14]
	lea edx, [eax+edx*2]
	mov [ebp-0x8dc], edx
	movzx esi, word [esi+0xa]
	test esi, esi
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
	mov dword [ebp-0x8e8], 0x0
	mov [ebp-0x948], edx
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__560:
	mov edx, [ebp-0x948]
	movzx eax, word [edx+0x4]
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	mov ecx, [ebp-0x8d8]
	lea ebx, [ecx+ebx*4]
	movzx eax, word [edx+0x2]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*2]
	mov eax, [ebp-0x8d8]
	lea ecx, [eax+ecx*4]
	movzx eax, word [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x8d8]
	lea edx, [eax+edx*4]
	movss xmm0, dword [ecx]
	movss xmm6, dword [edx]
	subss xmm6, xmm0
	movss xmm1, dword [ecx+0x4]
	movss xmm4, dword [edx+0x4]
	subss xmm4, xmm1
	movss xmm7, dword [ecx+0x8]
	movss xmm3, dword [edx+0x8]
	subss xmm3, xmm7
	movss xmm5, dword [ebx]
	subss xmm5, xmm0
	movss xmm2, dword [ebx+0x4]
	subss xmm2, xmm1
	movss xmm0, dword [ebx+0x8]
	subss xmm0, xmm7
	movaps xmm7, xmm4
	mulss xmm7, xmm0
	movaps xmm1, xmm3
	mulss xmm1, xmm2
	subss xmm7, xmm1
	mulss xmm3, xmm5
	mulss xmm0, xmm6
	subss xmm3, xmm0
	mulss xmm6, xmm2
	mulss xmm4, xmm5
	subss xmm6, xmm4
	movaps xmm1, xmm7
	mulss xmm1, [ebp-0x74]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x70]
	addss xmm1, xmm0
	movaps xmm0, xmm6
	mulss xmm0, [ebp-0x6c]
	addss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__540
	mulss xmm1, xmm1
	mulss xmm7, xmm7
	mulss xmm3, xmm3
	addss xmm7, xmm3
	mulss xmm6, xmm6
	addss xmm7, xmm6
	mulss xmm7, [_float_0_25000000]
	ucomiss xmm7, xmm1
	jbe _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__550
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__540:
	add dword [ebp-0x8e8], 0x1
	add dword [ebp-0x8dc], 0x6
	add dword [ebp-0x948], 0x6
	cmp [ebp-0x8e8], esi
	jl _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__560
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__470
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__550:
	xor ebx, ebx
	lea esi, [ebp-0x3d8]
	mov ecx, esi
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__570:
	mov edx, [ebp-0x8dc]
	movzx eax, word [edx+ebx*2]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x8d8]
	lea edx, [eax+edx*4]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov dword [ecx+0xc], 0x0
	mov dword [ecx+0x10], 0x0
	mov dword [ecx+0x14], 0x0
	mov dword [esi+0xc], 0x3f800000
	add ebx, 0x1
	add ecx, 0x18
	add esi, 0x1c
	cmp ebx, 0x3
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__570
	mov dword [ebp-0x8e0], 0x0
	mov dword [ebp-0x8e4], 0x3
	lea ebx, [ebp-0x228]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__590:
	cmp dword [ebp-0x8e0], 0x1
	sbb ecx, ecx
	and ecx, 0xd8
	lea edx, [ebp-0x3d8]
	lea ecx, [edx+ecx]
	mov esi, [ebp-0x8e0]
	lea edx, [esi+esi*2]
	lea edx, [edx+edx*8]
	lea edx, [ebp+edx*8-0x3d8]
	mov [esp], ebx
	mov eax, [ebp-0x8e4]
	call _Z26R_ChopWorldPolyBehindPlaneiPK16FxWorldMarkPointPS_PKf
	mov [ebp-0x8e4], eax
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__580
	xor esi, 0x1
	mov [ebp-0x8e0], esi
	add ebx, 0x10
	lea eax, [ebp-0x1c8]
	cmp eax, ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__590
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x43c]
	mov eax, [edx+0x58]
	sub eax, ebx
	cmp [ebp-0x8e4], eax
	jg _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__390
	mov ecx, [edx+0x438]
	mov esi, [ebp-0x8e4]
	lea edx, [esi+esi*2-0x6]
	mov esi, [ebp+0x8]
	mov eax, [esi+0x50]
	sub eax, ecx
	cmp edx, eax
	jg _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__400
	lea edx, [ecx+ecx*2]
	mov eax, [esi+0x54]
	lea edx, [eax+edx*4]
	cmp dword [ebp-0x8e4], 0x2
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__600
	mov [ebp-0x7e6], bx
	mov esi, ebx
	lea ecx, [ebx+0x1]
	mov ebx, 0x2
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__610:
	mov [edx], cx
	movzx eax, word [ebp-0x7e6]
	add eax, ebx
	mov [edx+0x2], ax
	mov [edx+0x4], si
	movzx eax, byte [ebp-0x80d]
	mov [edx+0x7], al
	movzx eax, byte [ebp-0x80c]
	mov [edx+0x8], al
	movzx eax, byte [ebp-0x80b]
	mov [edx+0x6], al
	movzx eax, word [ebp-0x80a]
	mov [edx+0xa], ax
	mov byte [edx+0x9], 0x80
	add edx, 0xc
	add ebx, 0x1
	add ecx, 0x1
	cmp [ebp-0x8e4], ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__610
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__600:
	mov edx, [ebp-0x948]
	movzx eax, word [edx]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov ecx, [ebp-0x8d8]
	lea edx, [ecx+edx*4]
	mov ebx, [ebp-0x948]
	movzx eax, word [ebx+0x2]
	lea ebx, [eax+eax*4]
	lea ebx, [eax+ebx*2]
	lea ebx, [ecx+ebx*4]
	mov esi, [ebp-0x948]
	movzx eax, word [esi+0x4]
	lea esi, [eax+eax*4]
	lea esi, [eax+esi*2]
	lea esi, [ecx+esi*4]
	mov eax, [edx+0x1c]
	mov [ebp-0x5c], eax
	mov eax, [edx+0x20]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x1c]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x20]
	mov [ebp-0x50], eax
	mov eax, [esi+0x1c]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x20]
	mov [ebp-0x48], eax
	mov eax, [edx+0x24]
	mov [ebp-0xe4], eax
	mov [ebp-0xe0], eax
	mov [ebp-0xdc], eax
	mov [ebp-0xd8], eax
	lea edx, [ebp-0xe4]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0xd8], 0x0
	mov eax, [ebp-0xe4]
	mov [ebp-0xb4], eax
	mov eax, [ebp-0xe0]
	mov [ebp-0xb0], eax
	mov eax, [ebp-0xdc]
	mov [ebp-0xac], eax
	mov eax, [ebx+0x24]
	mov [ebp-0x44], eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	lea ecx, [ebp-0x44]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0x38], 0x0
	mov eax, [ebp-0x44]
	mov [ebp-0xa8], eax
	mov eax, [ebp-0x40]
	mov [ebp-0xa4], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0xa0], eax
	mov eax, [esi+0x24]
	mov [ebp-0x44], eax
	mov [ebp-0x40], eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	lea ebx, [ebp-0x44]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z17Vec3UnpackUnitVec13PackedUnitVecPf
	mov dword [ebp-0x38], 0x0
	mov eax, [ebp-0x44]
	mov [ebp-0x9c], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x98], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x94], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x43c]
	mov edx, eax
	shl edx, 0x5
	add edx, [esi+0x5c]
	mov ecx, [ebp-0x8e4]
	test ecx, ecx
	jle _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__620
	mov ecx, edx
	xor ebx, ebx
	mov edx, [ebp-0x8e0]
	lea eax, [edx+edx*2]
	lea eax, [eax+eax*8]
	lea edx, [ebp+eax*8-0x3d8]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__630:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x5c]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x54]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x4c]
	addss xmm1, xmm0
	movss [ecx+0xc], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0x58]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0x50]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x48]
	addss xmm1, xmm0
	movss [ecx+0x10], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xb4]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa8]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x9c]
	addss xmm1, xmm0
	movss [ecx+0x14], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xb0]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss [ecx+0x18], xmm1
	movss xmm1, dword [edx+0xc]
	mulss xmm1, [ebp-0xac]
	movss xmm0, dword [edx+0x10]
	mulss xmm0, [ebp-0xa0]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ebp-0x94]
	addss xmm1, xmm0
	movss [ecx+0x1c], xmm1
	add ebx, 0x1
	add edx, 0x18
	add ecx, 0x20
	cmp [ebp-0x8e4], ebx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__630
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x43c]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__620:
	add eax, [ebp-0x8e4]
	mov ebx, [ebp+0x8]
	mov [ebx+0x43c], eax
	mov esi, [ebx+0x438]
	add [ebp-0x8e4], esi
	mov eax, [ebp-0x8e4]
	sub eax, 0x2
	mov [ebx+0x438], eax
	mov byte [ebp-0x8f5], 0x1
	mov eax, [ebp-0x8ec]
	movzx esi, word [eax+0xa]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__540
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__60:
	mov eax, ebx
	or al, 0x40
	mov [ebp-0x59], al
	mov eax, [ebp-0x1c]
	add eax, esi
	mov [ebp-0x8c8], eax
	xor ecx, ecx
	lea edx, [ebp-0xb4]
	lea eax, [ebp-0xe4]
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__640:
	movss xmm0, dword [ebp-0x8c0]
	mulss xmm0, [edx]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x8c0]
	mulss xmm0, [edx+0x4]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x8c0]
	mulss xmm0, [edx+0x8]
	movss [eax+0x8], xmm0
	add ecx, 0x1
	add eax, 0xc
	add edx, 0xc
	cmp ecx, 0x3
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__640
	mov edx, [ebp-0x8bc]
	mov eax, [edx]
	mov [ebp-0xc0], eax
	mov eax, [edx+0x4]
	mov [ebp-0xbc], eax
	mov eax, [edx+0x8]
	mov [ebp-0xb8], eax
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, dword [ebp-0x8c0]
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx]
	subss xmm0, [edx]
	movss [ebp-0x34], xmm0
	movss xmm0, dword [ecx+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [edx+0x8]
	movss [ebp-0x2c], xmm0
	lea eax, [ebp-0x44]
	mov [esp+0x8], eax
	lea eax, [ebp-0xb4]
	mov [esp+0x4], eax
	lea eax, [ebp-0x34]
	mov [esp], eax
	movss [ebp-0x968], xmm2
	call _Z30MatrixTransposeTransformVectorPKfPA3_S_Pf
	movss xmm2, dword [ebp-0x968]
	movaps xmm3, xmm2
	mulss xmm3, [ebp-0x44]
	movaps xmm4, xmm2
	mulss xmm4, [ebp-0x40]
	movaps xmm5, xmm2
	mulss xmm5, [ebp-0x3c]
	mov edx, [ebp+0x8]
	mulss xmm2, [edx+0x48]
	movaps xmm0, xmm2
	xorps xmm0, [_data16_80000000]
	movaps xmm1, xmm3
	addss xmm1, xmm0
	movss [ebp-0x74], xmm1
	movaps xmm1, xmm4
	addss xmm1, xmm0
	movss [ebp-0x70], xmm1
	addss xmm0, xmm5
	movss [ebp-0x6c], xmm0
	addss xmm3, xmm2
	movss [ebp-0x28], xmm3
	addss xmm4, xmm2
	movss [ebp-0x24], xmm4
	addss xmm5, xmm2
	movss [ebp-0x20], xmm5
	mov [ebp-0x90], edx
	lea eax, [ebp-0x5c]
	mov [ebp-0x8c], eax
	mov [ebp-0x88], edx
	mov eax, edx
	add eax, 0x24
	mov [ebp-0x84], eax
	add eax, 0x54
	mov [ebp-0x80], eax
	lea ecx, [ebp-0xe4]
	mov [ebp-0x7c], ecx
	lea eax, [ebp-0xb4]
	mov [ebp-0x78], eax
	mov edx, [ebp-0x8c8]
	mov eax, [edx+0x20]
	test eax, eax
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__50
	mov dword [ebp-0x8c4], 0x0
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__650:
	lea ecx, [ebp-0x90]
	mov [esp+0x14], ecx
	mov dword [esp+0x10], _Z23R_MarkModelCoreCallbackILh1EEhPvPPK15GfxPackedVertexS4_
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea edx, [ebp-0x74]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x8c4]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x8c8]
	mov [esp], eax
	call _Z28XSurfaceVisitTrianglesInAabbPK8XSurfacejPKfS3_PFhPvPPK15GfxPackedVertexS8_ES4_
	test al, al
	jz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__250
	add dword [ebp-0x8c4], 0x1
	mov ecx, [ebp-0x8c4]
	mov edx, [ebp-0x8c8]
	cmp [edx+0x20], ecx
	jnz _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__650
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__50
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__580:
	mov edx, [ebp-0x8ec]
	movzx esi, word [edx+0xa]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__540
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__400:
	mov ecx, esi
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__660
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__390:
	mov ecx, edx
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__660
_Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__370:
	movzx esi, word [edi+0xa]
	jmp _Z18R_MarkFragments_GoP8MarkInfoPFvPviP9FxMarkTriiP11FxMarkPointPKfS7_ES1_iS3_iS5__350
	add [eax], al


;R_MarkFragments_Begin(MarkInfo*, MarkFragmentsAgainstEnum, float const*, float const (*) [3], float, float const*, Material*)
_Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov edi, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov ebx, [ebp+0x1c]
	mov esi, [ebp+0x20]
	mov eax, [edx]
	mov [edi], eax
	mov eax, [edx+0x4]
	mov [edi+0x4], eax
	mov eax, [edx+0x8]
	mov [edi+0x8], eax
	lea eax, [edi+0x24]
	mov [ebp-0xb8], eax
	mov [esp+0x4], eax
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z8AxisCopyPA3_KfPA3_f
	lea edx, [edi+0xd8]
	mov eax, [ebx]
	mov [edi+0xd8], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	movss xmm0, dword [ebp+0x18]
	movss [edi+0x48], xmm0
	mov [edi+0x4c], esi
	movzx eax, byte [esi+0x4]
	shr eax, 1
	and eax, 0x1
	mov [edi+0xe4], al
	movzx eax, byte [esi+0x4]
	shr eax, 0x4
	and eax, 0x1
	mov [edi+0xe5], al
	mov eax, [ebp+0xc]
	mov [edi+0xe8], eax
	lea edx, [edi+0x6c]
	mov [ebp-0xb4], edx
	lea eax, [edi+0x60]
	mov [ebp-0xb0], eax
	mov esi, [ebp-0xb8]
	lea ebx, [edi+0x30]
	lea ecx, [edi+0x3c]
	mov dword [ebp-0xac], 0x1
	movss xmm2, dword [_data16_7fffffff]
_Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_10:
	movss xmm1, dword [esi]
	andps xmm1, xmm2
	movss xmm0, dword [ebx]
	andps xmm0, xmm2
	addss xmm1, xmm0
	movss xmm0, dword [ecx]
	andps xmm0, xmm2
	addss xmm1, xmm0
	mulss xmm1, [ebp+0x18]
	mov eax, [ebp-0xac]
	shl eax, 0x2
	lea edx, [edi+eax]
	mov [ebp-0xbc], edx
	movss xmm0, dword [edx-0x4]
	subss xmm0, xmm1
	mov edx, [ebp-0xb0]
	movss [edx+eax-0x4], xmm0
	mov edx, [ebp-0xbc]
	addss xmm1, [edx-0x4]
	mov edx, [ebp-0xb4]
	movss [edx+eax-0x4], xmm1
	add dword [ebp-0xac], 0x1
	add esi, 0x4
	add ebx, 0x4
	add ecx, 0x4
	cmp dword [ebp-0xac], 0x4
	jnz _Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_10
	movss xmm4, dword [edi+0x48]
	mov edx, [ebp-0xb8]
	lea eax, [edi+0x78]
	lea ecx, [edi+0x88]
	mov ebx, 0x3
	movss xmm3, dword [_data16_80000000]
_Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_20:
	movss xmm0, dword [edx]
	movss [eax], xmm0
	movss xmm1, dword [edx+0x4]
	movss [eax+0x4], xmm1
	movss xmm2, dword [edx+0x8]
	movss [eax+0x8], xmm2
	mulss xmm0, [edi]
	mulss xmm1, [edi+0x4]
	addss xmm0, xmm1
	mulss xmm2, [edi+0x8]
	addss xmm0, xmm2
	subss xmm0, xmm4
	movss [eax+0xc], xmm0
	movss xmm2, dword [edx]
	xorps xmm2, xmm3
	movss [eax+0x10], xmm2
	movss xmm0, dword [edx+0x4]
	xorps xmm0, xmm3
	movss [eax+0x14], xmm0
	movss xmm1, dword [edx+0x8]
	xorps xmm1, xmm3
	movss [eax+0x18], xmm1
	mulss xmm2, [edi]
	mulss xmm0, [edi+0x4]
	addss xmm2, xmm0
	mulss xmm1, [edi+0x8]
	addss xmm2, xmm1
	subss xmm2, xmm4
	movss [ecx+0xc], xmm2
	add edx, 0xc
	add eax, 0x20
	add ecx, 0x20
	sub ebx, 0x1
	jnz _Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_20
	mov esi, [ebp+0xc]
	test esi, esi
	jnz _Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_30
	mov dword [edi+0x434], 0x0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_MarkFragments_BeginP8MarkInfo24MarkFragmentsAgainstEnumPKfPA3_S2_fS3_P8Material_30:
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x100]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0xa8]
	mov [esp], ebx
	call _Z10Com_MemsetPvii
	mov dword [ebp-0x1c], 0x0
	mov eax, [esi+0x20a0]
	mov eax, [eax+0xf8]
	mov [esp+0x10], ebx
	lea edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x20
	lea edx, [edi+0xec]
	mov [esp+0x4], edx
	mov dword [esp], _Z18R_AllowSmodelMarksi
	mov ecx, [ebp-0xb4]
	mov edx, [ebp-0xb0]
	call _Z19R_BoxStaticModels_rP7mnode_tPKfS2_PFiiEPtiPiPh
	mov eax, [ebp-0x1c]
	mov [edi+0x12c], eax
	mov dword [edi+0x2b0], 0x0
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;R_MarkFragments_AddDObj(MarkInfo*, DObj_s*, cpose_t*, unsigned short)
_Z23R_MarkFragments_AddDObjP8MarkInfoP6DObj_sP7cpose_tt:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0x14]
	mov eax, [edx+0x2b0]
	cmp eax, 0x20
	jz _Z23R_MarkFragments_AddDObjP8MarkInfoP6DObj_sP7cpose_tt_10
	lea eax, [eax+eax*2]
	lea eax, [edx+eax*4+0x130]
	mov ebx, [ebp+0xc]
	mov [eax], ebx
	mov ebx, [ebp+0x10]
	mov [eax+0x4], ebx
	mov [eax+0x8], cx
	add dword [edx+0x2b0], 0x1
	mov eax, 0x1
	pop ebx
	pop ebp
	ret
_Z23R_MarkFragments_AddDObjP8MarkInfoP6DObj_sP7cpose_tt_10:
	and eax, 0xffffff00
	pop ebx
	pop ebp
	ret
	nop


;R_MarkFragments_AddBModel(MarkInfo*, GfxBrushModel*, cpose_t*, unsigned short)
_Z25R_MarkFragments_AddBModelP8MarkInfoP13GfxBrushModelP7cpose_tt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0x14]
	mov eax, [ecx+0x434]
	cmp eax, 0x20
	jz _Z25R_MarkFragments_AddBModelP8MarkInfoP13GfxBrushModelP7cpose_tt_10
	lea eax, [eax+eax*2]
	lea eax, [ecx+eax*4+0x2b0]
	lea edx, [eax+0x4]
	mov esi, [ebp+0xc]
	mov [eax+0x4], esi
	mov eax, [ebp+0x10]
	mov [edx+0x4], eax
	mov [edx+0x8], bx
	add dword [ecx+0x434], 0x1
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z25R_MarkFragments_AddBModelP8MarkInfoP13GfxBrushModelP7cpose_tt_10:
	and eax, 0xffffff00
	pop ebx
	pop esi
	pop ebp
	ret


;R_MarkUtil_GetDObjAnimMatAndHideParts(DObj_s const*, cpose_t const*, DObjAnimMat const**, unsigned int*)
_Z37R_MarkUtil_GetDObjAnimMatAndHidePartsPK6DObj_sPK7cpose_tPPK11DObjAnimMatPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	lea edx, [ebp-0x48]
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, edx
	rep stosd
	mov [esp+0x8], edx
	lea ebx, [ebp-0x28]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z15DObjGetSurfacesPK6DObj_sPiPKc
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z15CG_DObjCalcPosePK7cpose_tPK6DObj_sPi
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z19DObjGetHidePartBitsPK6DObj_sPj
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of r_marks:
SECTION .data
_ZZ28R_MarkFragments_WorldBrushesP8MarkInfoE9allowSurf: dd _Z12R_AllowMarksiPv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_marks:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_marks:
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
_cstring_r_markfragments_:		db "R_MarkFragments: Too many triangles to mark, max %d radius %.2f at %.2f %.2f %.2f",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000000:		dd 0x0	; 0
_float_0_25000000:		dd 0x3e800000	; 0.25

