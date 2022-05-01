;Imports of r_bsp_load_obj:
	extern _Z14Com_GetBspLump8LumpTypejPj
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern s_world
	extern _Z16Com_PrintWarningiPKcz
	extern _Z18Hunk_AllocInternali
	extern ClearBounds
	extern _Z12ExpandBoundsPKfS0_PfS1_
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z21DynEnt_GetEntityCount17DynEntityCollType
	extern comWorld
	extern Com_Memcpy
	extern _Z19PerpendicularVectorPKfPf
	extern memset
	extern _Z10Com_PrintfiPKcz
	extern Hunk_FreeTempMemory
	extern _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv
	extern _Z15R_EnumLightDefsPFv12XAssetHeaderPvES0_
	extern _Z2vaPKcz
	extern _Z11Image_AllocPKchhi
	extern _Z16Image_Generate2DP8GfxImagePhii10_D3DFORMAT
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern Hunk_ClearTempMemory
	extern _Z23Hunk_AllocAlignInternalii
	extern _Z19R_AllocStaticModelsP11GfxAabbTree
	extern _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree
	extern _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6_
	extern _Z9Com_ParsePPKc
	extern _Z9I_stricmpPKcS0_
	extern sscanf
	extern _Z22Com_IsLegacyXModelNamePKc
	extern _Z15R_RegisterModelPKc
	extern _Z9XModelBadPK6XModel
	extern _Z14Com_PrintErroriPKcz
	extern _Z12AnglesToAxisPKfPA3_f
	extern _Z19R_CreateStaticModelP6XModelPKfPA3_S1_fP22GfxStaticModelDrawInstP18GfxStaticModelInsth
	extern _Z14XModelGetFlagsPK6XModel
	extern _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion
	extern atoi
	extern atof
	extern _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh
	extern _Z13PointInBoundsPKfS0_S0_
	extern _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	extern _Z15Vec3PackUnitVecPKf
	extern r_loadForRenderer
	extern _Z12R_HashStringPKc
	extern _Z11Com_sprintfPciPKcz
	extern _Z17Material_RegisterPKci
	extern _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	extern _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	extern _Z16AddPointToBoundsPKfPfS1_
	extern _Z10I_strncpyzPcPKci
	extern _Z14ColorNormalizePKfPf
	extern rgp
	extern _Z18R_RegisterLightDefPKc
	extern _Z17Com_GetBspVersionv
	extern strcpy
	extern _Z24Com_GetFilenameSubStringPKc
	extern _Z18Com_StripExtensionPKcPc
	extern _Z12CM_GetPlanesv
	extern _Z16CM_GetPlaneCountv
	extern _Z20SCR_UpdateLoadScreenv
	extern _Z12AngleVectorsPKfPfS1_S1_
	extern _Z13Material_Sortv
	extern _Z13BoundsOverlapPKfS0_S0_S0_
	extern _Z14Com_BspHasLump8LumpType
	extern r_useLayeredMaterials
	extern _Z9R_LoadSunPKcP10sunflare_t
	extern _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2_
	extern _Z28R_AssignSModelCacheResourcesP8GfxWorld
	extern _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst
	extern _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	extern _Z17CullBoxFromSpherePKffS0_S0_

;Exports of r_bsp_load_obj:
	global _GLOBAL__I__Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex
	global rgl
	global s_lightGridRotAxis
	global _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj
	global _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	global _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj
	global _Z18R_LoadLightRegionsv
	global _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei
	global _Z15R_LoadAabbTrees8TrisType
	global _Z11R_LoadCellsj8TrisType
	global _Z13R_SortNodes_rP12mnode_load_tP7mnode_t
	global _Z18R_LoadWorldRuntimev
	global _Z30R_IncrementShadowGeometryCountP8GfxWorldjj
	global _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_
	global _Z17R_CompareSurfacesRK10GfxSurfaceS1_
	global _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej
	global _Z21R_LoadLightGridColorsj
	global _Z13R_LoadPortalsv
	global _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree
	global _Z26R_InitShadowGeometryArraysv
	global _Z15R_LoadLightmapsP10GfxBspLoad
	global _Z14R_SortSurfacesv
	global _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0_
	global _Z18R_PostLoadEntitiesv
	global _Z14R_LoadEntitiesj
	global _Z14R_CountNodes_rP12mnode_load_t
	global needsTraceSwizzle.142602
	global _Z31R_LoadLightGridPoints_Version15j
	global _Z22R_LoadReflectionProbesj
	global _Z20R_SetParentAndCell_rP12mnode_load_t
	global _Z19R_LoadNodesAndLeafsj
	global _Z14R_LoadSurfacesP10GfxBspLoad
	global _Z15R_ParseSunLightP19SunLightParseParamsPKc
	global _Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex
	global _Z19R_InitPrimaryLightsP8GfxLight
	global _Z19R_LoadWorldInternalPKc
	global _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj
	global _Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj
	global _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE
	global _Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight
	global _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0_
	global _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_
	global _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_
	global _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1_
	global _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1_
	global _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1_
	global _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_


SECTION .text


;global constructors keyed to R_GetBspMaterial(unsigned int, GfxSurface*, GfxWorldVertex*)
_GLOBAL__I__Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;R_LoadTriangleSurfaces(unsigned int, TrisType, DiskTriangleSoup const**, unsigned int*)
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x28], ecx
	mov ebx, [ebp+0x8]
	cmp eax, 0x8
	jbe _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_10
	cmp eax, 0xc
	jbe _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_20
	cmp eax, 0xe
	jbe _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_30
	cmp edx, 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x2f
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x18
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_60:
	mov edx, [ebp-0x28]
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x14
	mov dword [esp], 0x9
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov edx, [ebp-0x28]
	mov [edx], eax
	mov esi, [ebx]
	lea eax, [esi+esi*2]
	shl eax, 0x3
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x20], eax
	test esi, esi
	jle _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_40
	mov ecx, edi
	mov edx, eax
	xor ebx, ebx
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_50:
	movzx eax, word [ecx]
	mov [edx], ax
	movzx eax, byte [ecx+0x2]
	mov [edx+0x2], al
	movzx eax, byte [ecx+0x3]
	mov [edx+0x3], al
	mov byte [edx+0x4], 0x1
	mov eax, [ecx+0x4]
	mov [edx+0x8], eax
	mov eax, [ecx+0x8]
	mov [edx+0xc], eax
	movzx eax, word [ecx+0xc]
	mov [edx+0x10], ax
	movzx eax, word [ecx+0xe]
	mov [edx+0x12], ax
	mov eax, [ecx+0x10]
	mov [edx+0x14], eax
	add ebx, 0x1
	add ecx, 0x14
	add edx, 0x18
	cmp esi, ebx
	jnz _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_50
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x28]
	mov [eax], edx
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x9
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov eax, [ebp-0x28]
	mov [eax], edi
	mov esi, [ebx]
	lea eax, [esi+esi*2]
	shl eax, 0x3
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x24], eax
	test esi, esi
	jle _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_60
	mov ecx, edi
	mov edx, eax
	xor ebx, ebx
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_70:
	movzx eax, word [ecx]
	mov [edx], ax
	movzx eax, byte [ecx+0x2]
	mov [edx+0x2], al
	movzx eax, byte [ecx+0x3]
	mov [edx+0x3], al
	mov byte [edx+0x4], 0x1
	mov dword [edx+0x8], 0x0
	mov eax, [ecx+0x4]
	mov [edx+0xc], eax
	movzx eax, word [ecx+0x8]
	mov [edx+0x10], ax
	movzx eax, word [ecx+0xa]
	mov [edx+0x12], ax
	mov eax, [ecx+0xc]
	mov [edx+0x14], eax
	add ebx, 0x1
	add ecx, 0x10
	add edx, 0x18
	cmp esi, ebx
	jnz _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_70
	mov eax, [ebp-0x24]
	jmp _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_60
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_40:
	mov edx, eax
	mov eax, [ebp-0x28]
	mov [eax], edx
	jmp _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_80
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x9
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov eax, [ebp-0x28]
	mov [eax], esi
	mov edi, [ebx]
	lea ebx, [edi+edi*2]
	shl ebx, 0x3
	mov [esp], ebx
	call Hunk_AllocateTempMemory
	mov [ebp-0x1c], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	test edi, edi
	jle _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_90
	mov edx, [ebp-0x1c]
	xor ecx, ecx
	jmp _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_100
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_110:
	add al, 0x1
	mov [edx+0x4], al
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_120:
	add ecx, 0x1
	add edx, 0x18
	cmp edi, ecx
	jz _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_90
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_100:
	movzx eax, byte [edx+0x4]
	cmp al, 0xff
	jnz _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_110
	mov byte [edx+0x4], 0x0
	jmp _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_120
_Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj_90:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x28]
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_AnnotatedLightGridPointSortsBefore(AnnotatedLightGridPoint const&, AnnotatedLightGridPoint const&)
_Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, s_world
	mov edx, [esi+0x124]
	movzx eax, word [ebx+edx*2]
	cmp [ecx+edx*2], ax
	jb _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__10
	ja _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__20
	mov edx, [esi+0x128]
	movzx eax, word [ebx+edx*2]
	cmp [ecx+edx*2], ax
	jb _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__10
	ja _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__20
	movzx eax, word [ecx+0x4]
	cmp ax, [ebx+0x4]
	jae _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__20
_Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__10:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
_Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1__20:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret


;R_EmitLightGridBlock_Version15(AnnotatedLightGridPoint const*, unsigned int, unsigned short const*, unsigned short const*, unsigned int, unsigned int)
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	movzx eax, word [ecx+0x2]
	movzx ecx, word [ecx]
	sub eax, ecx
	add eax, 0x1
	mov [ebp-0x28], eax
	cmp eax, 0xff
	ja _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_10
	mov edx, [ebp-0x30]
	test edx, edx
	jz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_20
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*4]
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax*2]
	mov [ebp-0x1c], eax
	mov [ebp-0x24], edx
	mov dword [ebp-0x20], 0x0
	mov ebx, s_world
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_60:
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_30
	xor edi, edi
	mov ecx, [ebp-0x24]
	lea eax, [ecx+ecx*4]
	mov edx, [ebp-0x2c]
	lea esi, [edx+eax*2]
	jmp _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_40
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_50:
	mov edx, [ebx+0x138]
	mov eax, [ebx+0x13c]
	mov word [eax+edx*4], 0x0
	mov ecx, [ebx+0x138]
	mov edx, [ebx+0x13c]
	mov eax, [ebx+0x114]
	mov [edx+ecx*4+0x2], al
	mov edx, [ebx+0x138]
	mov eax, [ebx+0x13c]
	mov byte [eax+edx*4+0x3], 0x0
	add dword [ebx+0x138], 0x1
	add edi, 0x1
	cmp [ebp-0x28], edi
	jbe _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_30
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_40:
	movzx edx, word [esi+0x4]
	mov ecx, [ebp-0x1c]
	movzx eax, word [ecx+0x4]
	lea eax, [edi+eax]
	cmp edx, eax
	jnz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_50
	mov ecx, [ebx+0x138]
	mov edx, [ebx+0x13c]
	mov eax, [esi+0x6]
	mov [edx+ecx*4], eax
	add dword [ebx+0x138], 0x1
	add dword [ebp-0x24], 0x1
	add esi, 0xa
	add edi, 0x1
	cmp [ebp-0x28], edi
	ja _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_40
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_30:
	add dword [ebp-0x20], 0x1
	mov esi, [ebp-0x20]
	cmp [ebp-0x30], esi
	jnz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_60
	mov eax, [ebp-0x34]
	movzx ecx, word [eax]
	jmp _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_70
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_20:
	mov ebx, s_world
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_70:
	mov esi, [ebp+0x8]
	movzx edx, word [esi]
	sub ecx, edx
	mov [ebp-0x3c], ecx
	movzx edi, byte [ebp-0x28]
	mov [ebp-0x49], cl
	movzx eax, word [esi+0x2]
	sub eax, edx
	add eax, 0x1
	cmp eax, 0xff
	jle _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_80
	jmp _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_90
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_110:
	mov ecx, 0xff
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_120:
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov [edx+eax], cl
	mov edx, [ebx+0x134]
	mov eax, edi
	mov esi, [ebx+0x130]
	mov [edx+esi+0x1], al
	mov edx, [ebx+0x134]
	movzx eax, byte [ebp-0x49]
	mov esi, [ebx+0x130]
	mov [edx+esi+0x2], al
	add dword [ebx+0x130], 0x3
	sub [ebp-0x30], ecx
	jz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_100
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_80:
	cmp dword [ebp-0x30], 0xff
	jg _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_110
	mov ecx, [ebp-0x30]
	jmp _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_120
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_90:
	mov eax, ecx
	shr eax, 0x8
	mov [ebp-0x38], eax
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_130:
	mov ecx, 0xff
	cmp dword [ebp-0x30], 0x100
	cmovl ecx, [ebp-0x30]
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov [edx+eax], cl
	mov edx, edi
	mov esi, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov [esi+eax+0x1], dl
	movzx edx, byte [ebp-0x49]
	mov esi, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov [esi+eax+0x2], dl
	mov edx, [ebx+0x130]
	add edx, 0x3
	mov [ebp-0x50], edx
	mov [ebx+0x130], edx
	movzx eax, byte [ebp-0x38]
	mov esi, [ebx+0x134]
	mov [esi+edx], al
	add dword [ebx+0x130], 0x1
	sub [ebp-0x30], ecx
	jnz _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_130
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_100:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj_10:
	mov dword [esp+0x4], _cstring_light_grid_verti
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LoadLightRegions()
_Z18R_LoadLightRegionsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, s_world
	mov eax, [edx+0xdc]
	shl eax, 0x3
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov ecx, s_world
	mov [ecx+0x240], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x34
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	test eax, eax
	setnz al
	mov edx, s_world
	mov [edx+0x110], al
	test al, al
	jnz _Z18R_LoadLightRegionsv_10
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_LoadLightRegionsv_10:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4c
	mov dword [esp], 0x35
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x3c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x14
	mov dword [esp], 0x36
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x38], eax
	mov eax, [ebp-0x20]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x30], eax
	mov eax, [ebp-0x24]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z18R_LoadLightRegionsv_20
	xor edi, edi
	xor esi, esi
_Z18R_LoadLightRegionsv_40:
	lea ecx, [esi*8]
	mov eax, s_world
	mov edx, [eax+0x240]
	movzx eax, byte [ebx]
	mov [edx+ecx], eax
	mov edx, ecx
	mov eax, s_world
	add edx, [eax+0x240]
	mov eax, [edx]
	test eax, eax
	jz _Z18R_LoadLightRegionsv_30
	lea eax, [edi+edi*4]
	shl eax, 0x4
	add eax, [ebp-0x30]
	mov [edx+0x4], eax
	movzx eax, byte [ebx]
	add edi, eax
_Z18R_LoadLightRegionsv_30:
	add esi, 0x1
	add ebx, 0x1
	cmp esi, [ebp-0x1c]
	jb _Z18R_LoadLightRegionsv_40
_Z18R_LoadLightRegionsv_20:
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz _Z18R_LoadLightRegionsv_50
_Z18R_LoadLightRegionsv_80:
	mov eax, [ebp-0x24]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call memcpy
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_LoadLightRegionsv_50:
	mov esi, [ebp-0x3c]
	mov ebx, [ebp-0x30]
	mov dword [ebp-0x34], 0x0
	xor edi, edi
_Z18R_LoadLightRegionsv_70:
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
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	lea ecx, [ebx+0x24]
	lea edx, [esi+0x24]
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	lea edx, [esi+0x48]
	mov eax, [esi+0x48]
	mov [ebx+0x48], eax
	test eax, eax
	jz _Z18R_LoadLightRegionsv_60
	mov ecx, [ebp-0x34]
	lea eax, [ecx+ecx*4]
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax*4]
_Z18R_LoadLightRegionsv_60:
	mov [ebx+0x4c], eax
	mov eax, [edx]
	add [ebp-0x34], eax
	add edi, 0x1
	add esi, 0x4c
	add ebx, 0x50
	cmp edi, [ebp-0x20]
	jb _Z18R_LoadLightRegionsv_70
	jmp _Z18R_LoadLightRegionsv_80
	nop


;R_FinishLoadingAabbTrees_r(GfxAabbTree*, int)
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei:
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_40:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov edi, edx
	lea eax, [eax+0xc]
	mov [ebp-0x24], eax
	mov [esp+0x4], eax
	mov [esp], esi
	call ClearBounds
	cmp word [esi+0x18], 0x0
	jnz _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_10
	movzx eax, word [esi+0x1c]
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	mov eax, s_world
	add ebx, [eax+0x294]
	cmp word [esi+0x1a], 0x0
	jnz _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_20
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_30:
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_10:
	lea eax, [edi+edi*4]
	lea eax, [edi+eax*2]
	mov edx, [rgl+0x8]
	lea eax, [edx+eax*4]
	sub eax, esi
	mov [esi+0x28], eax
	lea edx, [esi+eax]
	movzx eax, word [esi+0x18]
	add edi, eax
	test eax, eax
	jle _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_30
	mov ebx, edx
	mov dword [ebp-0x1c], 0x0
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_50:
	mov edx, edi
	mov eax, ebx
	call _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_40
	mov edi, eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12ExpandBoundsPKfS0_PfS1_
	add dword [ebp-0x1c], 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x1c]
	jg _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_50
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_20:
	mov dword [ebp-0x20], 0x0
_Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_60:
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebx+0x24]
	mov [esp+0x4], eax
	lea eax, [ebx+0x18]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
	add dword [ebp-0x20], 0x1
	add ebx, 0x30
	movzx eax, word [esi+0x1a]
	cmp eax, [ebp-0x20]
	jg _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei_60
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadAabbTrees(TrisType)
_Z15R_LoadAabbTrees8TrisType:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0xffffffe5
	add eax, 0x33
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0xc
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [ebp-0xc]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp], edx
	call _Z18Hunk_AllocInternali
	mov edx, eax
	mov [rgl+0x8], eax
	mov eax, [ebp-0xc]
	mov [rgl+0xc], eax
	test eax, eax
	jz _Z15R_LoadAabbTrees8TrisType_10
	mov ecx, ebx
	xor esi, esi
	jmp _Z15R_LoadAabbTrees8TrisType_20
_Z15R_LoadAabbTrees8TrisType_40:
	mov eax, [ecx]
	mov [edx+0x1c], ax
	mov [edx+0x1a], bx
	mov eax, [ecx+0x8]
	mov [edx+0x18], ax
	add esi, 0x1
	add ecx, 0xc
	add edx, 0x2c
	cmp esi, [ebp-0xc]
	jae _Z15R_LoadAabbTrees8TrisType_30
_Z15R_LoadAabbTrees8TrisType_20:
	mov ebx, [ecx+0x4]
	test ebx, ebx
	jnz _Z15R_LoadAabbTrees8TrisType_40
	mov word [edx+0x1c], 0x0
	mov [edx+0x1a], bx
	mov eax, [ecx+0x8]
	mov [edx+0x18], ax
	add esi, 0x1
	add ecx, 0xc
	add edx, 0x2c
	cmp esi, [ebp-0xc]
	jb _Z15R_LoadAabbTrees8TrisType_20
_Z15R_LoadAabbTrees8TrisType_30:
	mov eax, [ebp-0xc]
	test eax, eax
	jz _Z15R_LoadAabbTrees8TrisType_10
	xor ecx, ecx
_Z15R_LoadAabbTrees8TrisType_50:
	lea edx, [ecx+0x1]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	mov ecx, [rgl+0x8]
	lea eax, [ecx+eax*4]
	call _Z26R_FinishLoadingAabbTrees_rP11GfxAabbTreei
	mov ecx, eax
	cmp [ebp-0xc], eax
	ja _Z15R_LoadAabbTrees8TrisType_50
_Z15R_LoadAabbTrees8TrisType_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;R_LoadCells(unsigned int, TrisType)
_Z11R_LoadCellsj8TrisType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	cmp eax, 0xe
	jbe _Z11R_LoadCellsj8TrisType_10
	cmp dword [ebp-0x2c], 0x15
	ja _Z11R_LoadCellsj8TrisType_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov dword [esp], 0x19
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
_Z11R_LoadCellsj8TrisType_90:
	mov eax, [ebp-0x1c]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov ebx, eax
	mov ecx, s_world
	mov [ecx+0x104], eax
	mov edx, [ebp-0x1c]
	mov [ecx+0xf0], edx
	lea eax, [edx+0x7f]
	shr eax, 0x7
	shl eax, 0x4
	mov [ecx+0x100], eax
	test edx, edx
	jz _Z11R_LoadCellsj8TrisType_30
	xor edi, edi
	jmp _Z11R_LoadCellsj8TrisType_40
_Z11R_LoadCellsj8TrisType_60:
	xor eax, eax
	mov [ebx+0x2c], eax
	mov [ebx+0x28], ecx
	mov byte [ebx+0x30], 0x0
	mov dword [ebx+0x34], 0x0
	cmp dword [ebp-0x2c], 0xe
	ja _Z11R_LoadCellsj8TrisType_50
_Z11R_LoadCellsj8TrisType_70:
	add esi, 0x34
_Z11R_LoadCellsj8TrisType_110:
	add ebx, 0x38
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jbe _Z11R_LoadCellsj8TrisType_30
_Z11R_LoadCellsj8TrisType_40:
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
	mov edx, [ebp-0x30]
	movzx eax, word [esi+edx*2+0x18]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [rgl+0x8]
	lea edx, [eax+edx*4]
	mov [ebx+0x1c], edx
	mov eax, [esi+0x1c]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [ebx+0x24], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov ecx, [esi+0x28]
	test ecx, ecx
	jz _Z11R_LoadCellsj8TrisType_60
	mov edx, [esi+0x24]
	mov eax, [rgl]
	lea eax, [eax+edx*4]
	mov [ebx+0x2c], eax
	mov [ebx+0x28], ecx
	mov byte [ebx+0x30], 0x0
	mov dword [ebx+0x34], 0x0
	cmp dword [ebp-0x2c], 0xe
	jbe _Z11R_LoadCellsj8TrisType_70
_Z11R_LoadCellsj8TrisType_50:
	cmp dword [ebp-0x2c], 0x15
	ja _Z11R_LoadCellsj8TrisType_80
	add esi, 0x2c
	add ebx, 0x38
	add edi, 0x1
	cmp [ebp-0x1c], edi
	ja _Z11R_LoadCellsj8TrisType_40
_Z11R_LoadCellsj8TrisType_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11R_LoadCellsj8TrisType_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x70
	mov dword [esp], 0x19
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	jmp _Z11R_LoadCellsj8TrisType_90
_Z11R_LoadCellsj8TrisType_80:
	movzx eax, byte [esi+0x2c]
	mov [ebx+0x30], al
	test al, al
	jnz _Z11R_LoadCellsj8TrisType_100
	mov dword [esp], 0x1
	call _Z18Hunk_AllocInternali
	mov [ebx+0x34], eax
	mov byte [ebx+0x30], 0x1
	mov byte [eax], 0x0
	add esi, 0x70
	jmp _Z11R_LoadCellsj8TrisType_110
_Z11R_LoadCellsj8TrisType_100:
	movzx eax, byte [esi+0x2c]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x34], eax
	movzx edx, byte [esi+0x2c]
	lea ecx, [esi+0x2d]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add esi, 0x70
	jmp _Z11R_LoadCellsj8TrisType_110
_Z11R_LoadCellsj8TrisType_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov dword [esp], 0x19
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	jmp _Z11R_LoadCellsj8TrisType_90


;R_SortNodes_r(mnode_load_t*, mnode_t*)
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t:
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, eax
	mov esi, edx
	mov eax, [eax]
	cmp eax, 0xfffffffe
	jz _Z13R_SortNodes_rP12mnode_load_tP7mnode_t_10
	add eax, 0x1
	mov [esi], ax
	lea eax, [esi+0x2]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t_50:
	mov esi, edi
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t_10:
	lea edi, [esi+0x4]
	mov edx, [ebx+0x4]
	mov eax, s_world
	add dx, [eax+0xf0]
	add edx, 0x1
	mov [esi], dx
	movzx edx, dx
	mov eax, [eax+0xf0]
	add eax, [ebx+0x4]
	add eax, 0x1
	cmp edx, eax
	jz _Z13R_SortNodes_rP12mnode_load_tP7mnode_t_20
	mov dword [esp+0x4], _cstring_max_planes_excee
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t_20:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	add eax, [rgl+0x14]
	mov edx, edi
	call _Z13R_SortNodes_rP12mnode_load_tP7mnode_t_30
	mov edi, eax
	sub eax, esi
	sar eax, 1
	mov [esi+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz _Z13R_SortNodes_rP12mnode_load_tP7mnode_t_40
	mov dword [esp+0x4], _cstring_max_cells_exceed
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z13R_SortNodes_rP12mnode_load_tP7mnode_t_40:
	mov ebx, [ebx+0xc]
	shl ebx, 0x4
	add ebx, [rgl+0x14]
	mov eax, [ebx]
	cmp eax, 0xfffffffe
	jz _Z13R_SortNodes_rP12mnode_load_tP7mnode_t_50
	mov esi, edi
	add eax, 0x1
	mov [esi], ax
	lea eax, [esi+0x2]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LoadWorldRuntime()
_Z18R_LoadWorldRuntimev:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [ebp-0x24], 0x0
	mov esi, s_world
	mov [ebp-0x1c], esi
	lea eax, [esi+0x8]
	mov [ebp-0x28], eax
	mov dword [ebp-0x2c], 0x2b0
_Z18R_LoadWorldRuntimev_40:
	mov edx, [esi+0x244]
	lea eax, [edx+0x7f]
	shr eax, 0x7
	shl eax, 0x2
	mov [esi+0x268], eax
	mov eax, [esi+0x154]
	movzx eax, word [eax+0x30]
	add eax, 0x7f
	sar eax, 0x7
	shl eax, 0x2
	mov [esi+0x26c], eax
	test edx, edx
	jnz _Z18R_LoadWorldRuntimev_10
	xor eax, eax
_Z18R_LoadWorldRuntimev_130:
	mov edx, [ebp-0x1c]
	mov [edx+0x270], eax
	mov eax, [esi+0x154]
	movzx eax, word [eax+0x30]
	test ax, ax
	jnz _Z18R_LoadWorldRuntimev_20
	xor eax, eax
_Z18R_LoadWorldRuntimev_120:
	mov edx, [ebp-0x1c]
	mov [edx+0x27c], eax
	mov eax, [ebp-0x2c]
	lea ebx, [eax+esi+0x14]
	mov [ebp-0x20], esi
	mov esi, s_world
	mov edi, [ebp-0x28]
_Z18R_LoadWorldRuntimev_30:
	mov edx, [ebp-0x20]
	mov eax, [edx+0x2ac]
	shl eax, 0x5
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx], eax
	add dword [ebp-0x20], 0x4
	add ebx, 0xc
	cmp [ebp-0x20], edi
	jnz _Z18R_LoadWorldRuntimev_30
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x2c], 0x4
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x24], 0x3
	jnz _Z18R_LoadWorldRuntimev_40
	mov eax, [esi+0x244]
	test eax, eax
	jnz _Z18R_LoadWorldRuntimev_50
	xor eax, eax
	mov [esi+0x288], eax
	mov eax, [esi+0x154]
	movzx edx, word [eax+0x30]
	mov [esi+0x248], edx
	movzx eax, word [eax+0x34]
	mov [esi+0x24c], eax
	test edx, edx
	jnz _Z18R_LoadWorldRuntimev_60
_Z18R_LoadWorldRuntimev_140:
	xor eax, eax
	mov [esi+0x2a0], eax
	mov eax, [esi+0x248]
	test eax, eax
	jnz _Z18R_LoadWorldRuntimev_70
_Z18R_LoadWorldRuntimev_150:
	xor eax, eax
	mov [esi+0x2a4], eax
	mov edx, [esi+0xf0]
	test edx, edx
	jnz _Z18R_LoadWorldRuntimev_80
_Z18R_LoadWorldRuntimev_160:
	xor eax, eax
	mov [esi+0x220], eax
	mov eax, [esi+0xf0]
	test eax, eax
	jnz _Z18R_LoadWorldRuntimev_90
_Z18R_LoadWorldRuntimev_170:
	mov [esi+0xfc], eax
	mov ebx, esi
_Z18R_LoadWorldRuntimev_110:
	mov eax, [ebx+0x2ac]
	imul eax, [esi+0xf0]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x2bc], eax
	add ebx, 0x4
	cmp [ebp-0x20], ebx
	jnz _Z18R_LoadWorldRuntimev_100
	mov eax, [esi+0x2b4]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x224], eax
	mov eax, [esi+0x2b8]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x228], eax
	mov eax, [esi+0xd8]
	add eax, 0x1
	mov ebx, [esi+0xdc]
	sub ebx, eax
	mov eax, ebx
	shl eax, 0xc
	shr eax, 0x3
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x22c], eax
	mov dword [esp], 0x0
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	movzx eax, ax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x238], eax
	mov dword [esp], 0x0
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	movzx eax, ax
	imul eax, ebx
	add eax, 0x1f
	shr eax, 0x5
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x230], eax
	mov dword [esp], 0x1
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	movzx eax, ax
	imul ebx, eax
	add ebx, 0x1f
	shr ebx, 0x5
	shl ebx, 0x2
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov [esi+0x234], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_LoadWorldRuntimev_100:
	mov esi, s_world
	jmp _Z18R_LoadWorldRuntimev_110
_Z18R_LoadWorldRuntimev_20:
	movzx eax, ax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	jmp _Z18R_LoadWorldRuntimev_120
_Z18R_LoadWorldRuntimev_10:
	mov [esp], edx
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	jmp _Z18R_LoadWorldRuntimev_130
_Z18R_LoadWorldRuntimev_50:
	mov eax, [esi+0x268]
	shl eax, 0x3
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	mov [esi+0x288], eax
	mov eax, [esi+0x154]
	movzx edx, word [eax+0x30]
	mov [esi+0x248], edx
	movzx eax, word [eax+0x34]
	mov [esi+0x24c], eax
	test edx, edx
	jz _Z18R_LoadWorldRuntimev_140
_Z18R_LoadWorldRuntimev_60:
	lea eax, [edx*8]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	mov [esi+0x2a0], eax
	mov eax, [esi+0x248]
	test eax, eax
	jz _Z18R_LoadWorldRuntimev_150
_Z18R_LoadWorldRuntimev_70:
	mov eax, [esi+0x26c]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	mov [esi+0x2a4], eax
	mov edx, [esi+0xf0]
	test edx, edx
	jz _Z18R_LoadWorldRuntimev_160
_Z18R_LoadWorldRuntimev_80:
	lea eax, [edx+0x1f]
	sar eax, 0x5
	imul edx, eax
	lea eax, [edx*4]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	mov [esi+0x220], eax
	mov eax, [esi+0xf0]
	test eax, eax
	jz _Z18R_LoadWorldRuntimev_170
_Z18R_LoadWorldRuntimev_90:
	shl eax, 0xa
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, s_world
	jmp _Z18R_LoadWorldRuntimev_170
	nop


;R_IncrementShadowGeometryCount(GfxWorld*, unsigned int, unsigned int)
_Z30R_IncrementShadowGeometryCountP8GfxWorldjj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*2]
	mov edx, [ebp+0x8]
	mov edx, [edx+0x23c]
	add word [edx+eax*4], 0x1
	pop ebp
	ret
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


;R_StaticModelCompare(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&)
_Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov eax, comWorld
	mov ecx, [eax+0xc]
	movzx esi, byte [edi+0x45]
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	movzx edx, byte [eax+ecx]
	mov eax, [ebp+0xc]
	movzx ebx, byte [eax+0x45]
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	movzx eax, byte [eax+ecx]
	sub edx, eax
	jnz _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1__10
	mov eax, esi
	sub eax, ebx
	jnz _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1__20
	mov eax, [edi+0x38]
	mov edx, [ebp+0xc]
	sub eax, [edx+0x38]
	sar eax, 0x2
	imul eax, eax, 0x586fb587
	test eax, eax
	jnz _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1__20
	mov ecx, edx
	movzx edx, byte [edi+0x44]
	movzx eax, byte [ecx+0x44]
	sub edx, eax
_Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1__10:
	shr edx, 0x1f
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1__20:
	mov edx, eax
	shr edx, 0x1f
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_CompareSurfaces(GfxSurface const&, GfxSurface const&)
_Z17R_CompareSurfacesRK10GfxSurfaceS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4
	mov eax, [ebp+0x8]
	mov edi, [eax+0x10]
	mov edx, [ebp+0xc]
	mov edx, [edx+0x10]
	mov [ebp-0x10], edx
	mov eax, [edi+0x40]
	mov esi, [eax+0x8]
	xor edx, edx
	cmp dword [esi+0x28], 0x0
	setnz dl
	mov ecx, [ebp-0x10]
	mov eax, [ecx+0x40]
	mov ecx, [eax+0x8]
	xor eax, eax
	cmp dword [ecx+0x28], 0x0
	setnz al
	sub eax, edx
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__10
	test edx, edx
	jz _Z17R_CompareSurfacesRK10GfxSurfaceS1__20
_Z17R_CompareSurfacesRK10GfxSurfaceS1__40:
	movzx eax, word [edi+0xe]
	shr ax, 0x6
	movzx ecx, ax
	and ecx, 0x3f
	mov eax, [ebp-0x10]
	movzx esi, word [eax+0xe]
	shr si, 0x6
	movzx eax, si
	and eax, 0x3f
	mov esi, ecx
	sub esi, eax
	mov eax, esi
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__10
	mov eax, [ebp+0x8]
	movzx edx, byte [eax+0x16]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x16]
	sub edx, eax
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__30
	movzx eax, byte [edi+0xb]
	shr al, 0x5
	movzx eax, al
	movzx ecx, byte [edi+0xc]
	shl ecx, 0x3
	or ecx, eax
	mov ebx, [ebp-0x10]
	movzx edx, byte [ebx+0xb]
	shr dl, 0x5
	movzx edx, dl
	movzx eax, byte [ebx+0xc]
	shl eax, 0x3
	or eax, edx
	sub ecx, eax
	mov eax, ecx
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__10
	mov esi, [ebp+0x8]
	movzx edx, byte [esi+0x15]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x15]
	sub edx, eax
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__30
	mov ebx, esi
	movzx edx, byte [esi+0x14]
	mov esi, [ebp+0xc]
	movzx eax, byte [esi+0x14]
	sub edx, eax
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__30
	mov eax, [ebx+0x4]
	sub eax, [esi+0x4]
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__10
	movzx edx, word [ebx+0x8]
	movzx eax, word [esi+0x8]
	sub edx, eax
_Z17R_CompareSurfacesRK10GfxSurfaceS1__30:
	shr edx, 0x1f
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_CompareSurfacesRK10GfxSurfaceS1__10:
	mov edx, eax
	shr edx, 0x1f
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_CompareSurfacesRK10GfxSurfaceS1__20:
	xor edx, edx
	cmp dword [ecx+0x20], 0x0
	setnz dl
	xor eax, eax
	cmp dword [esi+0x20], 0x0
	setnz al
	sub edx, eax
	jnz _Z17R_CompareSurfacesRK10GfxSurfaceS1__30
	jmp _Z17R_CompareSurfacesRK10GfxSurfaceS1__40
	nop


;R_BuildNoDecalAabbTree_r(GfxAabbTree*, unsigned int)
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej:
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_20:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ecx, edx
	mov [esi+0x20], dx
	cmp word [eax+0x18], 0x0
	jz _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_10
	mov edi, eax
	add edi, [eax+0x28]
	xor ebx, ebx
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_30:
	movzx edx, bx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	lea eax, [edi+eax*4]
	mov edx, ecx
	call _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_20
	mov ecx, eax
	add ebx, 0x1
	cmp bx, [esi+0x18]
	jb _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_30
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_40:
	mov eax, ecx
	sub ax, [esi+0x20]
	mov [esi+0x1e], ax
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_10:
	movzx edx, word [eax+0x1c]
	mov ebx, s_world
	mov eax, [ebx+0x28c]
	lea edx, [eax+edx*2]
	mov [ebp-0x1c], edx
	cmp word [esi+0x1a], 0x0
	jz _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_40
	xor edi, edi
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_60:
	movzx eax, di
	mov edx, [ebp-0x1c]
	movzx ebx, word [edx+eax*2]
	movzx eax, bx
	mov edx, s_world
	mov edx, [edx+0x294]
	mov [ebp-0x2c], edx
	lea eax, [eax+eax*2]
	shl eax, 0x4
	test byte [eax+edx+0x17], 0x2
	jnz _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_50
	mov edx, s_world
	mov eax, [edx+0x28c]
	mov [eax+ecx*2], bx
	add ecx, 0x1
_Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_50:
	add edi, 0x1
	cmp [esi+0x1a], di
	ja _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej_60
	mov eax, ecx
	sub ax, [esi+0x20]
	mov [esi+0x1e], ax
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadLightGridColors(unsigned int)
_Z21R_LoadLightGridColorsj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	cmp eax, 0xb
	sbb eax, eax
	and al, 0x70
	add eax, 0xa8
	mov esi, s_world
	lea edx, [esi+0x140]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	mov eax, [esi+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+0xa8]
	mov [esp], edx
	call _Z18Hunk_AllocInternali
	mov ecx, eax
	mov [esi+0x144], eax
	cmp ebx, 0xa
	ja _Z21R_LoadLightGridColorsj_10
	mov ebx, [esi+0x140]
	test ebx, ebx
	jz _Z21R_LoadLightGridColorsj_20
	mov [ebp-0x40], edi
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x44], 0x0
	mov edx, s_world
	mov [ebp-0x74], edx
_Z21R_LoadLightGridColorsj_120:
	mov edx, [ebp-0x44]
	mov eax, [ebp-0x74]
	add edx, [eax+0x144]
	mov [ebp-0x3c], edx
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x60], 0x0
	lea edi, [ebp-0x38]
_Z21R_LoadLightGridColorsj_110:
	cvtsi2ss xmm0, dword [ebp-0x60]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x50], xmm1
	mov dword [ebp-0x64], 0x0
	mov eax, [ebp-0x6c]
	lea eax, [eax+eax*2]
	mov [ebp-0x7c], eax
_Z21R_LoadLightGridColorsj_80:
	cvtsi2ss xmm0, dword [ebp-0x64]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x54], xmm1
	mov dword [ebp-0x68], 0x0
	mov [ebp-0x78], eax
_Z21R_LoadLightGridColorsj_60:
	mov eax, [ebp-0x68]
	sub eax, 0x1
	cmp eax, 0x1
	jbe _Z21R_LoadLightGridColorsj_30
_Z21R_LoadLightGridColorsj_90:
	cvtsi2ss xmm2, dword [ebp-0x68]
	mulss xmm2, [_float_0_66666669]
	subss xmm2, [_float_1_00000000]
	movss xmm4, dword [s_lightGridRotAxis]
	mulss xmm4, xmm2
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [s_lightGridRotAxis+0x4]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [s_lightGridRotAxis+0x8]
	addss xmm4, xmm0
	movss xmm3, dword [s_lightGridRotAxis+0xc]
	mulss xmm3, xmm2
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [s_lightGridRotAxis+0x10]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [s_lightGridRotAxis+0x14]
	addss xmm3, xmm0
	mulss xmm2, [s_lightGridRotAxis+0x18]
	movss xmm0, dword [ebp-0x54]
	mulss xmm0, [s_lightGridRotAxis+0x1c]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [s_lightGridRotAxis+0x20]
	addss xmm2, xmm0
	movaps xmm6, xmm2
	andps xmm6, [s_lightGridRotAxis+0x40]
	movaps xmm5, xmm3
	andps xmm5, [s_lightGridRotAxis+0x40]
	movaps xmm0, xmm5
	subss xmm0, xmm6
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm6
	andps xmm1, xmm0
	movaps xmm6, xmm0
	andnps xmm6, xmm5
	orps xmm6, xmm1
	movaps xmm1, xmm4
	andps xmm1, [s_lightGridRotAxis+0x40]
	movaps xmm0, xmm1
	subss xmm0, xmm6
	pxor xmm5, xmm5
	cmpss xmm5, xmm0, 0x2
	movaps xmm0, xmm5
	andps xmm1, xmm5
	andnps xmm0, xmm6
	orps xmm0, xmm1
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm4, xmm1
	mulss xmm4, [_float_0_50000000]
	addss xmm4, [_float_0_50000000]
	movss xmm5, dword [_float_1_00000000]
	subss xmm5, xmm4
	mulss xmm3, xmm1
	mulss xmm3, [_float_0_50000000]
	addss xmm3, [_float_0_50000000]
	movss xmm7, dword [_float_1_00000000]
	subss xmm7, xmm3
	mulss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [_float_0_50000000]
	movss xmm6, dword [_float_1_00000000]
	subss xmm6, xmm0
	movaps xmm2, xmm4
	mulss xmm2, xmm3
	movaps xmm1, xmm0
	mulss xmm1, xmm2
	movss [ebp-0x38], xmm1
	mulss xmm3, xmm5
	movaps xmm1, xmm0
	mulss xmm1, xmm3
	movss [ebp-0x34], xmm1
	mulss xmm4, xmm7
	movaps xmm1, xmm0
	mulss xmm1, xmm4
	movss [ebp-0x30], xmm1
	mulss xmm5, xmm7
	mulss xmm0, xmm5
	movss [ebp-0x2c], xmm0
	mulss xmm2, xmm6
	movss [ebp-0x28], xmm2
	mulss xmm3, xmm6
	movss [ebp-0x24], xmm3
	mulss xmm4, xmm6
	movss [ebp-0x20], xmm4
	mulss xmm5, xmm6
	movss [ebp-0x1c], xmm5
	mov ebx, [ebp-0x3c]
	add ebx, [ebp-0x78]
	mov ecx, [ebp-0x40]
	mov esi, 0x3
_Z21R_LoadLightGridColorsj_50:
	pxor xmm1, xmm1
	mov edx, 0x1
_Z21R_LoadLightGridColorsj_40:
	movzx eax, byte [ecx+edx-0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [edi+edx*4-0x4]
	addss xmm1, xmm0
	add edx, 0x1
	cmp edx, 0x9
	jnz _Z21R_LoadLightGridColorsj_40
	cvttss2si eax, xmm1
	mov [ebx], al
	add ebx, 0x1
	add ecx, 0x8
	sub esi, 0x1
	jnz _Z21R_LoadLightGridColorsj_50
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x7c], 0x3
	add dword [ebp-0x78], 0x3
_Z21R_LoadLightGridColorsj_100:
	add dword [ebp-0x68], 0x1
	cmp dword [ebp-0x68], 0x4
	jnz _Z21R_LoadLightGridColorsj_60
	add dword [ebp-0x64], 0x1
	cmp dword [ebp-0x64], 0x4
	jz _Z21R_LoadLightGridColorsj_70
	mov eax, [ebp-0x7c]
	jmp _Z21R_LoadLightGridColorsj_80
_Z21R_LoadLightGridColorsj_30:
	mov eax, [ebp-0x64]
	test eax, eax
	jle _Z21R_LoadLightGridColorsj_90
	cmp dword [ebp-0x64], 0x2
	jg _Z21R_LoadLightGridColorsj_90
	mov eax, [ebp-0x60]
	test eax, eax
	jle _Z21R_LoadLightGridColorsj_90
	cmp dword [ebp-0x60], 0x2
	jle _Z21R_LoadLightGridColorsj_100
	jmp _Z21R_LoadLightGridColorsj_90
_Z21R_LoadLightGridColorsj_70:
	add dword [ebp-0x60], 0x1
	cmp dword [ebp-0x60], 0x4
	jnz _Z21R_LoadLightGridColorsj_110
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x44], 0xa8
	add dword [ebp-0x40], 0x18
	mov edx, [ebp-0x70]
	mov eax, [ebp-0x74]
	cmp edx, [eax+0x140]
	jb _Z21R_LoadLightGridColorsj_120
_Z21R_LoadLightGridColorsj_190:
	mov edx, [ebp-0x74]
	mov eax, [edx+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x74]
	mov eax, [ecx+0x144]
	lea edi, [eax+edx*8]
	xor ebx, ebx
	mov dword [ebp-0x5c], 0x0
_Z21R_LoadLightGridColorsj_160:
	cvtsi2ss xmm0, dword [ebp-0x5c]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x48], xmm1
	xor esi, esi
_Z21R_LoadLightGridColorsj_150:
	cvtsi2ss xmm5, esi
	movss xmm0, dword [_float_0_66666669]
	mulss xmm0, xmm5
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x4c], xmm0
	xor ecx, ecx
_Z21R_LoadLightGridColorsj_140:
	lea eax, [ecx-0x1]
	cmp eax, 0x1
	jbe _Z21R_LoadLightGridColorsj_130
_Z21R_LoadLightGridColorsj_170:
	cvtsi2ss xmm2, ecx
	mulss xmm2, [_float_0_66666669]
	subss xmm2, [_float_1_00000000]
	movaps xmm3, xmm2
	mulss xmm3, [s_lightGridRotAxis]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [s_lightGridRotAxis+0x4]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [s_lightGridRotAxis+0x8]
	addss xmm3, xmm0
	movaps xmm4, xmm2
	mulss xmm4, [s_lightGridRotAxis+0xc]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [s_lightGridRotAxis+0x10]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [s_lightGridRotAxis+0x14]
	addss xmm4, xmm0
	mulss xmm2, [s_lightGridRotAxis+0x18]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [s_lightGridRotAxis+0x1c]
	addss xmm2, xmm0
	movss xmm0, dword [ebp-0x48]
	mulss xmm0, [s_lightGridRotAxis+0x20]
	addss xmm2, xmm0
	movss xmm7, dword [s_lightGridRotAxis+0x40]
	movaps xmm0, xmm2
	andps xmm0, xmm7
	movss [ebp-0x58], xmm0
	movaps xmm6, xmm4
	andps xmm6, xmm7
	movaps xmm1, xmm6
	subss xmm1, xmm0
	pxor xmm0, xmm0
	movaps xmm5, xmm0
	cmpss xmm5, xmm1, 0x6
	movaps xmm1, xmm5
	movss xmm5, dword [ebp-0x58]
	andps xmm5, xmm1
	andnps xmm1, xmm6
	orps xmm1, xmm5
	movss [ebp-0x58], xmm1
	movaps xmm1, xmm3
	andps xmm1, xmm7
	movaps xmm5, xmm1
	subss xmm5, [ebp-0x58]
	cmpss xmm0, xmm5, 0x2
	andps xmm1, xmm0
	movss xmm5, dword [ebp-0x58]
	andnps xmm0, xmm5
	orps xmm0, xmm1
	movss xmm5, dword [_float_1_00000000]
	divss xmm5, xmm0
	lea edx, [ebx+ebx*2]
	mulss xmm3, xmm5
	movss xmm0, dword [_float_0_50000000]
	mulss xmm3, xmm0
	addss xmm3, xmm0
	movss xmm1, dword [_float_255_00000000]
	mulss xmm3, xmm1
	cvttss2si eax, xmm3
	mov [edx+edi], al
	add edx, edi
	mulss xmm4, xmm5
	mulss xmm4, xmm0
	addss xmm4, xmm0
	mulss xmm4, xmm1
	cvttss2si eax, xmm4
	mov [edx+0x1], al
	mulss xmm2, xmm5
	mulss xmm2, xmm0
	addss xmm2, xmm0
	mulss xmm2, xmm1
	cvttss2si eax, xmm2
	mov [edx+0x2], al
	add ebx, 0x1
_Z21R_LoadLightGridColorsj_180:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz _Z21R_LoadLightGridColorsj_140
	add esi, 0x1
	cmp esi, 0x4
	jnz _Z21R_LoadLightGridColorsj_150
	add dword [ebp-0x5c], 0x1
	cmp dword [ebp-0x5c], 0x4
	jnz _Z21R_LoadLightGridColorsj_160
	mov eax, [ebp-0x74]
	add dword [eax+0x140], 0x1
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_LoadLightGridColorsj_130:
	test esi, esi
	jle _Z21R_LoadLightGridColorsj_170
	cmp esi, 0x2
	jg _Z21R_LoadLightGridColorsj_170
	mov eax, [ebp-0x5c]
	test eax, eax
	jle _Z21R_LoadLightGridColorsj_170
	cmp dword [ebp-0x5c], 0x2
	jle _Z21R_LoadLightGridColorsj_180
	jmp _Z21R_LoadLightGridColorsj_170
_Z21R_LoadLightGridColorsj_20:
	mov eax, s_world
	mov [ebp-0x74], eax
	jmp _Z21R_LoadLightGridColorsj_190
_Z21R_LoadLightGridColorsj_10:
	mov eax, [esi+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], ecx
	call Com_Memcpy
	mov [ebp-0x74], esi
	jmp _Z21R_LoadLightGridColorsj_190
	nop


;R_LoadPortals()
_Z13R_LoadPortalsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x1a
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z13R_LoadPortalsv_10
	mov edi, ebx
	mov esi, eax
	mov dword [ebp-0x30], 0x0
_Z13R_LoadPortalsv_20:
	mov ebx, [edi]
	lea ebx, [ebx+ebx*4]
	mov edx, s_world
	mov eax, [edx+0xf4]
	lea ebx, [eax+ebx*4]
	lea ecx, [esi+0xc]
	mov eax, [ebx]
	mov [esi+0xc], eax
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebx+0xc]
	xor eax, 0x80000000
	mov [esi+0x18], eax
	mov eax, 0xc
	mov edx, [esi+0xc]
	test edx, edx
	mov edx, 0x0
	cmovle eax, edx
	mov [ecx+0x10], al
	mov eax, 0x10
	mov edx, [ecx+0x4]
	test edx, edx
	mov edx, 0x4
	cmovle eax, edx
	mov [ecx+0x11], al
	mov eax, 0x14
	mov edx, [ecx+0x8]
	test edx, edx
	mov edx, 0x8
	cmovle eax, edx
	mov [ecx+0x12], al
	mov eax, [edi+0x4]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov edx, s_world
	add eax, [edx+0x104]
	mov [esi+0x20], eax
	mov eax, [edi+0x8]
	lea eax, [eax+eax*2]
	mov edx, [rgl+0x4]
	lea eax, [edx+eax*4]
	mov [esi+0x24], eax
	mov eax, [edi+0xc]
	mov [esi+0x28], al
	lea eax, [esi+0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19PerpendicularVectorPKfPf
	lea eax, [esi+0x38]
	movss xmm1, dword [ebx+0x4]
	mulss xmm1, [esi+0x34]
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [esi+0x30]
	subss xmm1, xmm0
	movss [esi+0x38], xmm1
	movss xmm1, dword [ebx+0x8]
	mulss xmm1, [esi+0x2c]
	movss xmm0, dword [ebx]
	mulss xmm0, [esi+0x34]
	subss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [ebx]
	mulss xmm1, [esi+0x30]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [esi+0x2c]
	subss xmm1, xmm0
	movss [eax+0x8], xmm1
	add dword [ebp-0x30], 0x1
	add edi, 0x10
	add esi, 0x44
	mov eax, [ebp-0x30]
	cmp eax, [ebp-0x1c]
	jb _Z13R_LoadPortalsv_20
_Z13R_LoadPortalsv_10:
	mov edx, s_world
	mov ecx, [edx+0xf0]
	test ecx, ecx
	jle _Z13R_LoadPortalsv_30
	xor ebx, ebx
	xor ecx, ecx
	mov edx, s_world
	jmp _Z13R_LoadPortalsv_40
_Z13R_LoadPortalsv_50:
	xor edx, edx
	mov [eax+0x24], edx
	add ebx, 0x1
	add ecx, 0x38
	mov eax, s_world
	cmp ebx, [eax+0xf0]
	jge _Z13R_LoadPortalsv_30
_Z13R_LoadPortalsv_60:
	mov edx, eax
_Z13R_LoadPortalsv_40:
	mov eax, ecx
	add eax, [edx+0x104]
	mov edx, [eax+0x20]
	test edx, edx
	jz _Z13R_LoadPortalsv_50
	mov edx, [ebp-0x2c]
	add edx, [eax+0x24]
	mov [eax+0x24], edx
	add ebx, 0x1
	add ecx, 0x38
	mov eax, s_world
	cmp ebx, [eax+0xf0]
	jl _Z13R_LoadPortalsv_60
_Z13R_LoadPortalsv_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AabbTreeChildrenCount_r(GfxAabbTree*)
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree:
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_120:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x9c], eax
	add eax, [eax+0x28]
	mov edx, [ebp-0x9c]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_10
	mov [ebp-0x20], eax
	mov dword [ebp-0x94], 0x0
	mov dword [ebp-0x98], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_300:
	mov eax, [ebp-0x20]
	add eax, [eax+0x28]
	mov edx, [ebp-0x20]
	add edx, 0x18
	mov [ebp-0x1c], edx
	mov edx, [ebp-0x20]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_20
	mov [ebp-0x28], eax
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x90], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_260:
	mov eax, [ebp-0x28]
	add eax, [eax+0x28]
	mov edx, [ebp-0x28]
	add edx, 0x18
	mov [ebp-0x24], edx
	mov edx, [ebp-0x28]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_30
	mov [ebp-0x30], eax
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x88], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_250:
	mov eax, [ebp-0x30]
	add eax, [eax+0x28]
	mov edx, [ebp-0x30]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov edx, [ebp-0x30]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_40
	mov [ebp-0x38], eax
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x80], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_240:
	mov eax, [ebp-0x38]
	add eax, [eax+0x28]
	mov edx, [ebp-0x38]
	add edx, 0x18
	mov [ebp-0x34], edx
	mov edx, [ebp-0x38]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_50
	mov [ebp-0x40], eax
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x78], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x40]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_60
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_220:
	mov [ebp-0x48], eax
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x70], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	mov edx, [ebp-0x48]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_70
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_190:
	mov [ebp-0x50], eax
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x68], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x50]
	add edx, 0x18
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x50]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_80
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_160:
	mov [ebp-0x58], eax
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x60], 0x1
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_90
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_110:
	mov edi, 0x1
	add [ebp-0x60], edi
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x2c
	mov edx, [ebp-0x4c]
	movzx eax, word [edx]
	cmp [ebp-0x5c], eax
	jae _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_100
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_140:
	mov eax, [ebp-0x58]
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_90:
	add eax, [eax+0x28]
	mov edx, [ebp-0x58]
	add edx, 0x18
	mov [ebp-0x54], edx
	mov edx, [ebp-0x58]
	cmp word [edx+0x18], 0x0
	jz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_110
	mov ebx, eax
	xor esi, esi
	mov edi, 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_130:
	mov eax, ebx
	call _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_120
	add edi, eax
	add esi, 0x1
	add ebx, 0x2c
	mov edx, [ebp-0x54]
	movzx eax, word [edx]
	cmp esi, eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_130
	add [ebp-0x60], edi
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x2c
	mov edx, [ebp-0x4c]
	movzx eax, word [edx]
	cmp [ebp-0x5c], eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_140
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_100:
	mov eax, [ebp-0x60]
	add [ebp-0x68], eax
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x64], eax
	jae _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_150
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_170:
	mov eax, [ebp-0x50]
	add eax, [eax+0x28]
	mov edx, [ebp-0x50]
	add edx, 0x18
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x50]
	cmp word [edx+0x18], 0x0
	jnz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_160
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_80:
	mov dword [ebp-0x60], 0x1
	mov eax, [ebp-0x60]
	add [ebp-0x68], eax
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x64], eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_170
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_150:
	mov eax, [ebp-0x68]
	add [ebp-0x70], eax
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x3c]
	movzx eax, word [edx]
	cmp [ebp-0x6c], eax
	jae _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_180
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_200:
	mov eax, [ebp-0x48]
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	mov edx, [ebp-0x48]
	cmp word [edx+0x18], 0x0
	jnz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_190
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_70:
	mov dword [ebp-0x68], 0x1
	mov eax, [ebp-0x68]
	add [ebp-0x70], eax
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x3c]
	movzx eax, word [edx]
	cmp [ebp-0x6c], eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_200
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_180:
	mov eax, [ebp-0x70]
	add [ebp-0x78], eax
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x74], eax
	jae _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_210
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_230:
	mov eax, [ebp-0x40]
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x40]
	cmp word [edx+0x18], 0x0
	jnz _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_220
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_60:
	mov dword [ebp-0x70], 0x1
	mov eax, [ebp-0x70]
	add [ebp-0x78], eax
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x74], eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_230
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_210:
	mov eax, [ebp-0x78]
	add [ebp-0x80], eax
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x38], 0x2c
	mov edx, [ebp-0x2c]
	movzx eax, word [edx]
	cmp eax, [ebp-0x7c]
	ja _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_240
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_280:
	mov eax, [ebp-0x80]
	add [ebp-0x88], eax
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x24]
	movzx eax, word [edx]
	cmp eax, [ebp-0x84]
	ja _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_250
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_290:
	mov eax, [ebp-0x88]
	add [ebp-0x90], eax
	add dword [ebp-0x8c], 0x1
	add dword [ebp-0x28], 0x2c
	mov edx, [ebp-0x1c]
	movzx eax, word [edx]
	cmp eax, [ebp-0x8c]
	ja _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_260
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_270
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_50:
	mov dword [ebp-0x78], 0x1
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_210
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_40:
	mov dword [ebp-0x80], 0x1
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_280
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_10:
	mov dword [ebp-0x98], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_310:
	mov eax, [ebp-0x98]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_30:
	mov dword [ebp-0x88], 0x1
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_290
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_20:
	mov dword [ebp-0x90], 0x1
_Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_270:
	mov eax, [ebp-0x90]
	add [ebp-0x98], eax
	add dword [ebp-0x94], 0x1
	add dword [ebp-0x20], 0x2c
	mov edx, [ebp-0x9c]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x94], eax
	jb _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_300
	jmp _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree_310


;R_InitShadowGeometryArrays()
_Z26R_InitShadowGeometryArraysv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, s_world
	mov eax, [edx+0x154]
	cmp word [eax+0x30], 0x0
	jz _Z26R_InitShadowGeometryArraysv_10
	xor ebx, ebx
	xor esi, esi
	mov ecx, s_world
	jmp _Z26R_InitShadowGeometryArraysv_20
_Z26R_InitShadowGeometryArraysv_30:
	mov edx, ecx
	add ebx, 0x1
	add esi, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp eax, ebx
	jbe _Z26R_InitShadowGeometryArraysv_10
_Z26R_InitShadowGeometryArraysv_40:
	mov ecx, edx
_Z26R_InitShadowGeometryArraysv_20:
	mov edx, esi
	add edx, [ecx+0x294]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x40
	jz _Z26R_InitShadowGeometryArraysv_30
	mov dword [esp+0xc], _Z30R_IncrementShadowGeometryCountP8GfxWorldjj
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE
	mov edx, s_world
	add ebx, 0x1
	add esi, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp eax, ebx
	ja _Z26R_InitShadowGeometryArraysv_40
_Z26R_InitShadowGeometryArraysv_10:
	mov ecx, edx
	mov eax, [edx+0x23c]
	mov word [eax], 0x0
	mov eax, [edx+0xd8]
	mov edx, [edx+0x23c]
	lea eax, [eax+eax*2]
	mov word [edx+eax*4], 0x0
	mov esi, [ecx+0xdc]
	test esi, esi
	jz _Z26R_InitShadowGeometryArraysv_50
	xor edi, edi
	xor esi, esi
	jmp _Z26R_InitShadowGeometryArraysv_60
_Z26R_InitShadowGeometryArraysv_90:
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz _Z26R_InitShadowGeometryArraysv_70
_Z26R_InitShadowGeometryArraysv_100:
	add edi, 0x1
	add esi, 0xc
	mov edx, s_world
	cmp edi, [edx+0xdc]
	jae _Z26R_InitShadowGeometryArraysv_80
_Z26R_InitShadowGeometryArraysv_60:
	mov ebx, esi
	mov eax, s_world
	add ebx, [eax+0x23c]
	movzx eax, word [ebx]
	test ax, ax
	jz _Z26R_InitShadowGeometryArraysv_90
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x4], eax
	mov word [ebx], 0x0
	movzx eax, word [ebx+0x2]
	test ax, ax
	jz _Z26R_InitShadowGeometryArraysv_100
_Z26R_InitShadowGeometryArraysv_70:
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x8], eax
	mov word [ebx+0x2], 0x0
	add edi, 0x1
	add esi, 0xc
	mov edx, s_world
	cmp edi, [edx+0xdc]
	jb _Z26R_InitShadowGeometryArraysv_60
_Z26R_InitShadowGeometryArraysv_80:
	mov ecx, s_world
_Z26R_InitShadowGeometryArraysv_50:
	mov eax, [ecx+0x154]
	cmp word [eax+0x30], 0x0
	jz _Z26R_InitShadowGeometryArraysv_110
	xor ebx, ebx
	xor esi, esi
	mov eax, s_world
	jmp _Z26R_InitShadowGeometryArraysv_120
_Z26R_InitShadowGeometryArraysv_130:
	add ebx, 0x1
	add esi, 0x30
	mov ecx, s_world
	mov eax, [ecx+0x154]
	movzx eax, word [eax+0x30]
	cmp ebx, eax
	jae _Z26R_InitShadowGeometryArraysv_110
_Z26R_InitShadowGeometryArraysv_140:
	mov eax, ecx
_Z26R_InitShadowGeometryArraysv_120:
	mov edx, esi
	add edx, [eax+0x294]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x40
	jz _Z26R_InitShadowGeometryArraysv_130
	mov dword [esp+0xc], _Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov edx, s_world
	mov [esp], edx
	call _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE
	add ebx, 0x1
	add esi, 0x30
	mov ecx, s_world
	mov eax, [ecx+0x154]
	movzx eax, word [eax+0x30]
	cmp ebx, eax
	jb _Z26R_InitShadowGeometryArraysv_140
_Z26R_InitShadowGeometryArraysv_110:
	mov ebx, [ecx+0x244]
	test ebx, ebx
	jz _Z26R_InitShadowGeometryArraysv_150
	xor ebx, ebx
	xor esi, esi
	mov edx, s_world
	jmp _Z26R_InitShadowGeometryArraysv_160
_Z26R_InitShadowGeometryArraysv_180:
	mov edx, eax
_Z26R_InitShadowGeometryArraysv_160:
	mov eax, [edx+0x29c]
	movzx eax, byte [eax+esi+0x45]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x23c]
	lea edx, [edx+eax*4]
	mov ecx, [edx+0x8]
	test ecx, ecx
	jz _Z26R_InitShadowGeometryArraysv_170
	movzx eax, word [edx+0x2]
	mov [ecx+eax*2], bx
	add word [edx+0x2], 0x1
_Z26R_InitShadowGeometryArraysv_170:
	add ebx, 0x1
	add esi, 0x4c
	mov eax, s_world
	cmp ebx, [eax+0x244]
	jb _Z26R_InitShadowGeometryArraysv_180
_Z26R_InitShadowGeometryArraysv_150:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LoadLightmaps(GfxBspLoad*)
_Z15R_LoadLightmapsP10GfxBspLoad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x120c
	mov [ebp-0x11c8], eax
	mov byte [eax+0x294], 0x1f
	xor eax, eax
	mov edx, [ebp-0x11c8]
	mov [edx+0x298], eax
	mov [edx+0x29c], eax
	mov eax, 0x3f800000
	mov [edx+0x2a0], eax
	mov [edx+0x2a4], eax
	lea ecx, [ebp-0x20]
	mov ebx, [ebp-0x11c8]
	mov edx, [ebx+0x4]
	lea eax, [ebp-0x24]
	mov [esp], eax
	mov eax, [ebx]
	call _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj
	cmp dword [ebx], 0x6
	ja _Z15R_LoadLightmapsP10GfxBspLoad_10
	mov dword [ebp-0x28], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_490:
	mov esi, [ebp-0x24]
	test esi, esi
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_20
	mov dword [ebp-0x117c], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_460:
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_30
	cmp eax, [ebp-0x117c]
	jz _Z15R_LoadLightmapsP10GfxBspLoad_30
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_funny_lu
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z15R_LoadLightmapsP10GfxBspLoad_30:
	mov dword [esp+0x8], 0x7c
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0xcc]
	mov [esp], edi
	call memset
	mov dword [esp+0x8], 0xf04
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1144]
	mov [esp], eax
	call memset
	mov edx, [ebp-0x11c8]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_40
	mov dword [ebp-0x1184], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_160:
	mov esi, [ebp-0x24]
	test esi, esi
	jz _Z15R_LoadLightmapsP10GfxBspLoad_50
	mov edx, [ebp-0x20]
	xor ecx, ecx
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_60
_Z15R_LoadLightmapsP10GfxBspLoad_70:
	add ecx, 0x1
	add edx, 0x18
	cmp esi, ecx
	jz _Z15R_LoadLightmapsP10GfxBspLoad_50
_Z15R_LoadLightmapsP10GfxBspLoad_60:
	movzx eax, word [edx]
	cmp [ebp-0x1184], eax
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_70
	movzx eax, byte [edx+0x2]
	movzx ebx, al
	cmp al, 0x1f
	jz _Z15R_LoadLightmapsP10GfxBspLoad_70
	movzx eax, word [edx+0x10]
	add [ebp+ebx*4-0xcc], eax
	add ecx, 0x1
	add edx, 0x18
	cmp esi, ecx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_60
_Z15R_LoadLightmapsP10GfxBspLoad_50:
	mov eax, [ebp-0x117c]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_80
	mov dword [ebp-0x1180], 0x0
	mov ecx, [ebp-0x1180]
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_90
_Z15R_LoadLightmapsP10GfxBspLoad_100:
	add ecx, 0x1
	mov [ebp-0x1154], ecx
	mov edi, ecx
	cmp [ebp-0x117c], edi
	jbe _Z15R_LoadLightmapsP10GfxBspLoad_80
_Z15R_LoadLightmapsP10GfxBspLoad_150:
	mov [ebp-0x1180], edi
	mov ecx, edi
_Z15R_LoadLightmapsP10GfxBspLoad_90:
	mov eax, [ebp+ecx*4-0xcc]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_100
	mov ebx, ecx
	add ebx, 0x1
	mov [ebp-0x1154], ebx
	cmp [ebp-0x117c], ebx
	jbe _Z15R_LoadLightmapsP10GfxBspLoad_110
	mov esi, ebx
	mov eax, ebx
	shl eax, 0x2
	lea ebx, [ebp-0xcc]
	add ebx, eax
	shl esi, 0x7
	sub esi, eax
	mov ecx, [ebp-0x1180]
	shl ecx, 0x2
	mov edx, [ebp-0x1180]
	shl edx, 0x7
	sub edx, ecx
	lea edi, [ebp-0x1144]
	lea edx, [edi+edx]
	add edx, eax
	xor edi, edi
	lea eax, [ebp-0x1144]
	add eax, ecx
	mov [ebp-0x11cc], eax
	mov ecx, [ebp-0x117c]
	sub ecx, [ebp-0x1154]
	mov [ebp-0x11ec], ecx
_Z15R_LoadLightmapsP10GfxBspLoad_140:
	mov eax, [ebx]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_120
	mov ecx, [ebp-0x1180]
	add eax, [ebp+ecx*4-0xcc]
	add eax, [edx]
	mov [edx], eax
	test eax, eax
	js _Z15R_LoadLightmapsP10GfxBspLoad_130
_Z15R_LoadLightmapsP10GfxBspLoad_390:
	mov ecx, [ebp-0x11cc]
	mov [ecx+esi], eax
_Z15R_LoadLightmapsP10GfxBspLoad_120:
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x7c
	add edx, 0x4
	cmp [ebp-0x11ec], edi
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_140
_Z15R_LoadLightmapsP10GfxBspLoad_110:
	mov ebx, [ebp-0x1180]
	mov dword [ebp+ebx*4-0xcc], 0x0
	mov edi, [ebp-0x1154]
	cmp [ebp-0x117c], edi
	ja _Z15R_LoadLightmapsP10GfxBspLoad_150
_Z15R_LoadLightmapsP10GfxBspLoad_80:
	add dword [ebp-0x1184], 0x1
	mov edx, [ebp-0x1184]
	mov eax, [ebp-0x11c8]
	cmp edx, [eax+0xc]
	jb _Z15R_LoadLightmapsP10GfxBspLoad_160
_Z15R_LoadLightmapsP10GfxBspLoad_40:
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_170
	mov eax, [ebp-0x20]
	mov ecx, [ebp-0x11c8]
	cmp dword [ecx], 0xe
	jbe _Z15R_LoadLightmapsP10GfxBspLoad_180
_Z15R_LoadLightmapsP10GfxBspLoad_170:
	cld
	xor eax, eax
	mov ecx, 0x7
	lea edi, [ebp-0x4f]
	rep stosd
	stosw
	stosb
	mov edi, [ebp-0x117c]
	test edi, edi
	jle _Z15R_LoadLightmapsP10GfxBspLoad_190
	mov dword [ebp-0x1198], 0x2
	mov dword [ebp-0x1194], 0x2
	mov dword [ebp-0x119c], 0x0
	mov dword [ebp-0x118c], 0x0
	lea ebx, [ebp-0x240]
	mov [ebp-0x115c], ebx
	mov eax, [ebp-0x117c]
_Z15R_LoadLightmapsP10GfxBspLoad_380:
	sub eax, [ebp-0x119c]
_Z15R_LoadLightmapsP10GfxBspLoad_400:
	mov edx, [ebp-0x1194]
	imul edx, [ebp-0x1198]
	mov [ebp-0x11a0], edx
	cmp eax, edx
	jge _Z15R_LoadLightmapsP10GfxBspLoad_200
_Z15R_LoadLightmapsP10GfxBspLoad_220:
	mov edi, [ebp-0x1198]
	cmp [ebp-0x1194], edi
	jg _Z15R_LoadLightmapsP10GfxBspLoad_210
	sar edi, 1
	mov [ebp-0x1198], edi
	mov edx, [ebp-0x1194]
	imul edx, [ebp-0x1198]
	mov [ebp-0x11a0], edx
	cmp eax, edx
	jl _Z15R_LoadLightmapsP10GfxBspLoad_220
_Z15R_LoadLightmapsP10GfxBspLoad_200:
	sub edx, 0x1
	jle _Z15R_LoadLightmapsP10GfxBspLoad_230
	mov dword [ebp-0x1150], 0x0
	mov edi, 0x1f
	mov dword [ebp-0x1188], 0x1f
	mov ecx, [ebp-0x1150]
	cmp byte [ebp+ecx-0x4f], 0x0
	jz _Z15R_LoadLightmapsP10GfxBspLoad_240
_Z15R_LoadLightmapsP10GfxBspLoad_260:
	add ecx, 0x1
	mov [ebp-0x114c], ecx
	cmp [ebp-0x117c], ecx
	jle _Z15R_LoadLightmapsP10GfxBspLoad_250
_Z15R_LoadLightmapsP10GfxBspLoad_300:
	mov [ebp-0x1150], ecx
	cmp byte [ebp+ecx-0x4f], 0x0
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_260
_Z15R_LoadLightmapsP10GfxBspLoad_240:
	mov ebx, ecx
	add ebx, 0x1
	mov [ebp-0x114c], ebx
	cmp [ebp-0x117c], ebx
	jle _Z15R_LoadLightmapsP10GfxBspLoad_250
	mov ecx, ebx
	lea ebx, [ebp-0x4f]
	add ebx, [ebp-0x114c]
	mov eax, [ebp-0x1150]
	shl eax, 0x5
	sub eax, [ebp-0x1150]
	add eax, [ebp-0x114c]
	lea esi, [ebp+eax*4-0x1144]
	mov eax, [ebp-0x117c]
	mov [ebp-0x11d0], eax
_Z15R_LoadLightmapsP10GfxBspLoad_290:
	cmp byte [ebx], 0x0
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_270
	cmp dword [ebp-0x1188], 0x1f
	jz _Z15R_LoadLightmapsP10GfxBspLoad_280
	mov eax, [ebp-0x1188]
	shl eax, 0x5
	sub eax, [ebp-0x1188]
	add eax, edi
	mov edx, [esi]
	cmp edx, [ebp+eax*4-0x1144]
	jle _Z15R_LoadLightmapsP10GfxBspLoad_270
_Z15R_LoadLightmapsP10GfxBspLoad_280:
	mov edx, [ebp-0x1150]
	mov [ebp-0x1188], edx
	mov edi, ecx
_Z15R_LoadLightmapsP10GfxBspLoad_270:
	add ecx, 0x1
	add ebx, 0x1
	add esi, 0x4
	cmp ecx, [ebp-0x11d0]
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_290
	mov ecx, [ebp-0x114c]
	cmp [ebp-0x117c], ecx
	jg _Z15R_LoadLightmapsP10GfxBspLoad_300
_Z15R_LoadLightmapsP10GfxBspLoad_250:
	lea eax, [ebp-0x148]
	mov ebx, [ebp-0x119c]
	mov [eax+ebx*4], edi
	mov edx, [ebp-0x1188]
	mov [eax+ebx*4+0x4], edx
	add ebx, 0x2
	mov [ebp-0x119c], ebx
	mov byte [ebp+edi-0x4f], 0x1
	mov byte [ebp+edx-0x4f], 0x1
	cmp dword [ebp-0x11a0], 0x2
	jle _Z15R_LoadLightmapsP10GfxBspLoad_310
	shl ebx, 0x2
	mov [ebp-0x1160], ebx
	mov dword [ebp-0x1190], 0x2
_Z15R_LoadLightmapsP10GfxBspLoad_360:
	mov eax, [ebp-0x1188]
	shl eax, 0x2
	mov edx, [ebp-0x1188]
	shl edx, 0x7
	sub edx, eax
	lea esi, [ebp-0x1144]
	add esi, edx
	lea edx, [edi*4]
	shl edi, 0x7
	sub edi, edx
	lea edx, [ebp-0x1144]
	add edx, edi
	lea ebx, [ebp-0x1144]
	add ebx, eax
	xor ecx, ecx
_Z15R_LoadLightmapsP10GfxBspLoad_320:
	mov eax, [esi]
	add eax, [edx]
	mov [esi], eax
	mov [ebx], eax
	add ecx, 0x1
	add esi, 0x4
	add edx, 0x4
	add ebx, 0x7c
	cmp [ebp-0x117c], ecx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_320
	mov edx, [ebp-0x1188]
	shl edx, 0x2
	mov eax, [ebp-0x1188]
	shl eax, 0x7
	sub eax, edx
	lea ecx, [ebp-0x1144]
	add ecx, eax
	xor ebx, ebx
	mov edi, 0x1f
	mov esi, [ebp-0x1188]
	shl esi, 0x5
	sub esi, [ebp-0x1188]
_Z15R_LoadLightmapsP10GfxBspLoad_350:
	cmp byte [ebx+ebp-0x4f], 0x0
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_330
	cmp edi, 0x1f
	jz _Z15R_LoadLightmapsP10GfxBspLoad_340
	lea edx, [esi+edi]
	mov eax, [ecx]
	cmp eax, [ebp+edx*4-0x1144]
	jg _Z15R_LoadLightmapsP10GfxBspLoad_340
_Z15R_LoadLightmapsP10GfxBspLoad_330:
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x117c], ebx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_350
_Z15R_LoadLightmapsP10GfxBspLoad_410:
	mov ecx, [ebp-0x1160]
	mov [ebp+ecx-0x148], edi
	add dword [ebp-0x119c], 0x1
	mov byte [ebp+edi-0x4f], 0x1
	add dword [ebp-0x1190], 0x1
	add ecx, 0x4
	mov [ebp-0x1160], ecx
	mov ebx, [ebp-0x11a0]
	cmp [ebp-0x1190], ebx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_360
_Z15R_LoadLightmapsP10GfxBspLoad_310:
	mov edx, [ebp-0x1198]
	mov eax, [ebp-0x115c]
	mov [eax], edx
	mov ecx, [ebp-0x1194]
	mov [eax+0x4], ecx
	add dword [ebp-0x118c], 0x1
	add eax, 0x8
	mov [ebp-0x115c], eax
	mov ebx, [ebp-0x117c]
	cmp [ebp-0x119c], ebx
	jge _Z15R_LoadLightmapsP10GfxBspLoad_370
	mov eax, ebx
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_380
_Z15R_LoadLightmapsP10GfxBspLoad_130:
	mov eax, 0x7fffffff
	mov dword [edx], 0x7fffffff
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_390
_Z15R_LoadLightmapsP10GfxBspLoad_210:
	sar dword [ebp-0x1194], 1
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_400
_Z15R_LoadLightmapsP10GfxBspLoad_340:
	mov edi, ebx
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x117c], ebx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_350
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_410
_Z15R_LoadLightmapsP10GfxBspLoad_230:
	cmp byte [ebp-0x4f], 0x0
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_420
	xor eax, eax
_Z15R_LoadLightmapsP10GfxBspLoad_480:
	mov edi, [ebp-0x119c]
	mov [ebp+edi*4-0x148], eax
	add edi, 0x1
	mov [ebp-0x119c], edi
	mov byte [ebp+eax-0x4f], 0x1
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_310
_Z15R_LoadLightmapsP10GfxBspLoad_190:
	mov dword [ebp-0x118c], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_370:
	mov edi, [ebp-0x117c]
	mov [esp+0xc], edi
	mov eax, [ebp-0x118c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_merged_lightma
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	test edi, edi
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_430
	mov eax, s_world
	mov dword [eax+0x108], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_520:
	add esp, 0x120c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_LoadLightmapsP10GfxBspLoad_20:
	mov ecx, [ebp-0x20]
	xor ebx, ebx
	mov dword [ebp-0x117c], 0x0
_Z15R_LoadLightmapsP10GfxBspLoad_450:
	movzx eax, byte [ecx+0x2]
	movzx edx, al
	cmp al, 0x1f
	jz _Z15R_LoadLightmapsP10GfxBspLoad_440
	lea eax, [edx+0x1]
	cmp [ebp-0x117c], edx
	cmova eax, [ebp-0x117c]
	mov [ebp-0x117c], eax
_Z15R_LoadLightmapsP10GfxBspLoad_440:
	add ebx, 0x1
	add ecx, 0x18
	cmp ebx, esi
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_450
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_460
_Z15R_LoadLightmapsP10GfxBspLoad_420:
	xor eax, eax
_Z15R_LoadLightmapsP10GfxBspLoad_470:
	add eax, 0x1
	cmp [ebp-0x117c], eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_310
	cmp byte [ebp+eax-0x4f], 0x0
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_470
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_480
_Z15R_LoadLightmapsP10GfxBspLoad_10:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x300000
	mov dword [esp], 0x1
	call _Z14Com_GetBspLump8LumpTypejPj
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_490
_Z15R_LoadLightmapsP10GfxBspLoad_430:
	mov eax, [ebp-0x240]
	imul eax, [ebp-0x23c]
	lea ebx, [eax+eax*2]
	shl ebx, 0x14
	mov [esp], ebx
	call Hunk_AllocateTempMemory
	mov [ebp-0x11b8], eax
	mov eax, [ebp-0x240]
	imul eax, [ebp-0x23c]
	shl eax, 0x14
	add eax, [ebp-0x11b8]
	mov [ebp-0x11b4], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x1
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x11c0], eax
	xor eax, eax
	mov edx, [ebp-0x11c8]
	cmp dword [edx], 0x6
	cmova eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_500
_Z15R_LoadLightmapsP10GfxBspLoad_620:
	mov dword [esp], 0x100
	call _Z18Hunk_AllocInternali
	mov ebx, s_world
	mov [ebx+0x10c], eax
	mov esi, [ebp-0x117c]
	test esi, esi
	jg _Z15R_LoadLightmapsP10GfxBspLoad_510
	xor eax, eax
_Z15R_LoadLightmapsP10GfxBspLoad_610:
	mov [ebx+0x108], eax
	mov edi, [ebp-0x11b8]
	mov [esp], edi
	call Hunk_FreeTempMemory
	mov eax, [ebx+0x108]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x148], eax
	mov eax, [ebx+0x108]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x14c], eax
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_520
_Z15R_LoadLightmapsP10GfxBspLoad_180:
	mov [esp], eax
	call Hunk_FreeTempMemory
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_170
_Z15R_LoadLightmapsP10GfxBspLoad_510:
	mov dword [ebp-0x11ac], 0x0
	mov dword [ebp-0x1164], 0x0
	mov [ebp-0x11dc], ebx
_Z15R_LoadLightmapsP10GfxBspLoad_600:
	movzx ebx, byte [ebp-0x1164]
	mov [ebp-0x1155], bl
	movzx edi, bl
	mov [ebp-0x11c4], edi
	mov esi, [ebp+edi*8-0x240]
	mov eax, esi
	imul eax, [ebp+edi*8-0x23c]
	mov [ebp-0x11a4], eax
	test eax, eax
	jle _Z15R_LoadLightmapsP10GfxBspLoad_530
	mov edx, [ebp-0x11ac]
	lea edx, [ebp+edx*4-0x148]
	mov [ebp-0x1168], edx
	mov dword [ebp-0x11a8], 0x0
	mov ebx, edx
	mov ebx, [ebx]
	mov [ebp-0x11b0], ebx
	mov eax, [ebp-0x11a8]
	cdq
	idiv esi
	mov [ebp-0x11d4], edx
	mov [ebp-0x11d8], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z15R_LoadLightmapsP10GfxBspLoad_540
_Z15R_LoadLightmapsP10GfxBspLoad_580:
	lea eax, [ebx+ebx*2]
	shl eax, 0x14
	add eax, [ebp-0x11c0]
	mov [ebp-0x11bc], eax
	shl edx, 0x9
	mov [ebp-0x1178], edx
	mov eax, [ebp-0x11d8]
	shl eax, 0x9
	shl esi, 0x9
	imul eax, esi
	add eax, edx
	mov ecx, [ebp-0x11b4]
	lea edi, [ecx+eax*4]
	shl esi, 0x2
	mov [ebp-0x1170], esi
	mov esi, [ebp-0x11bc]
	xor ebx, ebx
_Z15R_LoadLightmapsP10GfxBspLoad_550:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], esi
	mov [esp], edi
	call Com_Memcpy
	add esi, 0x800
	add edi, [ebp-0x1170]
	add ebx, 0x1
	cmp ebx, 0x200
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_550
	mov edi, [ebp-0x11bc]
	add edi, 0x100000
	mov ebx, [ebp-0x11c4]
	mov edx, [ebp+ebx*8-0x240]
	mov eax, [ebp-0x11d8]
	add eax, [ebp+ebx*8-0x23c]
	shl eax, 0x9
	shl edx, 0x9
	imul eax, edx
	add eax, [ebp-0x1178]
	mov ecx, [ebp-0x11b4]
	lea esi, [ecx+eax*4]
	shl edx, 0x2
	mov [ebp-0x116c], edx
	xor ebx, ebx
_Z15R_LoadLightmapsP10GfxBspLoad_560:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], edi
	mov [esp], esi
	call Com_Memcpy
	add edi, 0x800
	add esi, [ebp-0x116c]
	add ebx, 0x1
	cmp ebx, 0x200
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_560
	mov edi, [ebp-0x11bc]
	add edi, 0x200000
	mov ebx, [ebp-0x11c4]
	mov ebx, [ebp+ebx*8-0x240]
	shl ebx, 0xa
	mov [ebp-0x1174], ebx
	mov edx, [ebp-0x11d4]
	shl edx, 0xa
	mov eax, [ebp-0x11d8]
	shl eax, 0xa
	imul eax, ebx
	add edx, eax
	mov esi, [ebp-0x11b8]
	add esi, edx
	xor ebx, ebx
_Z15R_LoadLightmapsP10GfxBspLoad_570:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	mov [esp], esi
	call Com_Memcpy
	add edi, 0x400
	add esi, [ebp-0x1174]
	add ebx, 0x1
	cmp ebx, 0x400
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_570
	mov edi, [ebp-0x11b0]
_Z15R_LoadLightmapsP10GfxBspLoad_590:
	lea eax, [edi+edi*4]
	mov edx, [ebp-0x11c8]
	lea eax, [edx+eax*4]
	movzx ecx, byte [ebp-0x1155]
	mov [eax+0x28], cl
	mov ebx, [ebp-0x11c4]
	cvtsi2ss xmm1, dword [ebp+ebx*8-0x240]
	movss xmm0, dword [_float_1_00000000]
	movaps xmm2, xmm0
	divss xmm2, xmm1
	movss [eax+0x34], xmm2
	cvtsi2ss xmm1, dword [ebp+ebx*8-0x23c]
	divss xmm0, xmm1
	movss [eax+0x38], xmm0
	cvtsi2ss xmm0, dword [ebp-0x11d4]
	mulss xmm0, [eax+0x34]
	movss [eax+0x2c], xmm0
	cvtsi2ss xmm0, dword [ebp-0x11d8]
	mulss xmm0, [eax+0x38]
	movss [eax+0x30], xmm0
	add dword [ebp-0x11a8], 0x1
	add dword [ebp-0x1168], 0x4
	mov eax, [ebp-0x11a8]
	cmp [ebp-0x11a4], eax
	jz _Z15R_LoadLightmapsP10GfxBspLoad_530
	mov ecx, [ebp-0x11c4]
	mov esi, [ebp+ecx*8-0x240]
	mov ebx, [ebp-0x1168]
	mov ebx, [ebx]
	mov [ebp-0x11b0], ebx
	mov eax, [ebp-0x11a8]
	cdq
	idiv esi
	mov [ebp-0x11d4], edx
	mov [ebp-0x11d8], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz _Z15R_LoadLightmapsP10GfxBspLoad_580
_Z15R_LoadLightmapsP10GfxBspLoad_540:
	mov edi, ebx
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_590
_Z15R_LoadLightmapsP10GfxBspLoad_530:
	mov edx, [ebp-0x11b4]
	mov [ebp-0x30], edx
	mov ecx, [ebp-0x11c4]
	mov eax, [ebp+ecx*8-0x240]
	mov [ebp-0x2c], eax
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov eax, _Z30R_CopyLightDefAttenuationImage12XAssetHeaderPv
	mov [esp], eax
	call _Z15R_EnumLightDefsPFv12XAssetHeaderPvES0_
	movzx ebx, byte [ebp-0x1155]
	shl ebx, 0x3
	mov esi, ebx
	mov edi, [ebp-0x11dc]
	add esi, [edi+0x10c]
	mov eax, [ebp-0x11c4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lightmapi_primar
	call _Z2vaPKcz
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call _Z11Image_AllocPKchhi
	mov [esi], eax
	mov dword [esp+0x10], 0x32
	mov edx, [ebp-0x11c4]
	mov eax, [ebp+edx*8-0x23c]
	shl eax, 0xa
	mov [esp+0xc], eax
	mov eax, [ebp+edx*8-0x240]
	shl eax, 0xa
	mov [esp+0x8], eax
	mov ecx, [ebp-0x11b8]
	mov [esp+0x4], ecx
	mov eax, [edi+0x10c]
	mov eax, [ebx+eax]
	mov [esp], eax
	call _Z16Image_Generate2DP8GfxImagePhii10_D3DFORMAT
	mov esi, ebx
	add esi, [edi+0x10c]
	mov edi, [ebp-0x11c4]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_lightmapi_second
	call _Z2vaPKcz
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call _Z11Image_AllocPKchhi
	mov [esi+0x4], eax
	mov dword [esp+0x10], 0x15
	mov eax, [ebp+edi*8-0x23c]
	shl eax, 0xa
	mov [esp+0xc], eax
	mov eax, [ebp+edi*8-0x240]
	shl eax, 0x9
	mov [esp+0x8], eax
	mov eax, [ebp-0x11b4]
	mov [esp+0x4], eax
	mov edx, [ebp-0x11dc]
	mov eax, [edx+0x10c]
	mov eax, [ebx+eax+0x4]
	mov [esp], eax
	call _Z16Image_Generate2DP8GfxImagePhii10_D3DFORMAT
	mov ecx, [ebp-0x11a4]
	add [ebp-0x11ac], ecx
	add dword [ebp-0x1164], 0x1
	mov ebx, [ebp-0x11ac]
	cmp [ebp-0x117c], ebx
	jg _Z15R_LoadLightmapsP10GfxBspLoad_600
	movzx eax, byte [ebp-0x1164]
	mov ebx, [ebp-0x11dc]
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_610
_Z15R_LoadLightmapsP10GfxBspLoad_500:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xff
	mov ecx, [ebp-0x11b8]
	mov [esp], ecx
	call memset
	jmp _Z15R_LoadLightmapsP10GfxBspLoad_620


;R_SortSurfaces()
_Z14R_SortSurfacesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, s_world
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	movzx edi, ax
	test ax, ax
	jnz _Z14R_SortSurfacesv_10
	mov dword [edx+0x28c], 0x0
_Z14R_SortSurfacesv_250:
	test edi, edi
	jle _Z14R_SortSurfacesv_20
	xor ebx, ebx
	xor esi, esi
_Z14R_SortSurfacesv_30:
	mov ecx, esi
	mov eax, s_world
	add ecx, [eax+0x294]
	mov edx, [eax+0x28c]
	movzx eax, word [ecx+0x8]
	mov [edx+ebx*2], ax
	mov [ecx+0x8], bx
	add ebx, 0x1
	add esi, 0x30
	cmp edi, ebx
	jnz _Z14R_SortSurfacesv_30
_Z14R_SortSurfacesv_20:
	mov edx, s_world
	mov ebx, [edx+0x294]
	lea eax, [edi+edi*2]
	shl eax, 0x4
	lea esi, [ebx+eax]
	cmp ebx, esi
	jz _Z14R_SortSurfacesv_40
	mov ecx, esi
	sub ecx, ebx
	sar ecx, 0x4
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
	jz _Z14R_SortSurfacesv_50
	xor edx, edx
_Z14R_SortSurfacesv_60:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z14R_SortSurfacesv_60
	lea eax, [edx+edx]
_Z14R_SortSurfacesv_260:
	mov dword [esp+0xc], _Z17R_CompareSurfacesRK10GfxSurfaceS1_
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1_
	mov dword [esp+0x8], _Z17R_CompareSurfacesRK10GfxSurfaceS1_
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_
_Z14R_SortSurfacesv_40:
	test edi, edi
	jle _Z14R_SortSurfacesv_70
	xor ebx, ebx
	xor esi, esi
	mov eax, s_world
	jmp _Z14R_SortSurfacesv_80
_Z14R_SortSurfacesv_90:
	mov eax, ecx
_Z14R_SortSurfacesv_80:
	mov ecx, esi
	add ecx, [eax+0x294]
	movzx edx, word [ecx+0x8]
	add edx, edx
	mov eax, [eax+0x28c]
	mov [ebp-0x1c], eax
	movzx eax, word [eax+edx]
	mov [ecx+0x8], ax
	mov ecx, s_world
	mov eax, [ecx+0x28c]
	mov [edx+eax], bx
	add ebx, 0x1
	add esi, 0x30
	cmp edi, ebx
	jnz _Z14R_SortSurfacesv_90
	mov edx, ecx
_Z14R_SortSurfacesv_240:
	mov eax, [edx+0x154]
	movzx edi, word [eax+0x30]
	mov dword [edx+0x250], 0x0
	test edi, edi
	jg _Z14R_SortSurfacesv_100
_Z14R_SortSurfacesv_170:
	xor esi, esi
	xor ebx, ebx
_Z14R_SortSurfacesv_190:
	mov ecx, s_world
	mov [ecx+0x254], ebx
	mov [ecx+0x258], ebx
	cmp edi, esi
	jle _Z14R_SortSurfacesv_110
	mov edx, [ecx+0x294]
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	cmp dword [eax+0x40], 0x0
	jz _Z14R_SortSurfacesv_120
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz _Z14R_SortSurfacesv_110
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ecx, [edx+eax+0x40]
	mov edx, esi
_Z14R_SortSurfacesv_150:
	add edx, 0x1
	cmp edx, edi
	jz _Z14R_SortSurfacesv_130
	mov ebx, edx
	mov eax, [ecx]
	mov esi, [eax+0x40]
	test esi, esi
	jz _Z14R_SortSurfacesv_140
	add ecx, 0x30
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jnz _Z14R_SortSurfacesv_150
_Z14R_SortSurfacesv_140:
	mov esi, edx
	mov eax, s_world
	mov [eax+0x25c], ebx
	mov [eax+0x260], ebx
	cmp edi, esi
	jg _Z14R_SortSurfacesv_160
_Z14R_SortSurfacesv_210:
	mov edx, s_world
	mov [edx+0x264], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_SortSurfacesv_100:
	mov ecx, [edx+0x294]
	mov edx, [ecx+0x10]
	mov ebx, [edx+0x40]
	test ebx, ebx
	jz _Z14R_SortSurfacesv_170
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz _Z14R_SortSurfacesv_170
	cmp byte [edx+0x5], 0x17
	ja _Z14R_SortSurfacesv_170
	add ecx, 0x40
	xor esi, esi
	jmp _Z14R_SortSurfacesv_180
_Z14R_SortSurfacesv_200:
	mov ebx, esi
	mov edx, [ecx]
	mov eax, [edx+0x40]
	test eax, eax
	jz _Z14R_SortSurfacesv_190
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz _Z14R_SortSurfacesv_190
	add ecx, 0x30
	cmp byte [edx+0x5], 0x17
	ja _Z14R_SortSurfacesv_190
_Z14R_SortSurfacesv_180:
	add esi, 0x1
	cmp edi, esi
	jnz _Z14R_SortSurfacesv_200
	mov ebx, esi
	jmp _Z14R_SortSurfacesv_190
_Z14R_SortSurfacesv_110:
	mov eax, s_world
_Z14R_SortSurfacesv_270:
	mov [eax+0x25c], ebx
	mov [eax+0x260], ebx
	cmp edi, esi
	jle _Z14R_SortSurfacesv_210
_Z14R_SortSurfacesv_160:
	mov edx, [eax+0x294]
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	mov ecx, [eax+0x40]
	test ecx, ecx
	jz _Z14R_SortSurfacesv_210
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz _Z14R_SortSurfacesv_210
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ecx, [eax+edx+0x40]
	mov edx, esi
_Z14R_SortSurfacesv_230:
	add edx, 0x1
	cmp edx, edi
	jz _Z14R_SortSurfacesv_220
	mov ebx, edx
	mov eax, [ecx]
	mov esi, [eax+0x40]
	test esi, esi
	jz _Z14R_SortSurfacesv_210
	add ecx, 0x30
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov esi, [eax+0x20]
	test esi, esi
	jnz _Z14R_SortSurfacesv_230
	mov edx, s_world
	mov [edx+0x264], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_SortSurfacesv_70:
	mov edx, s_world
	jmp _Z14R_SortSurfacesv_240
_Z14R_SortSurfacesv_10:
	lea eax, [edi*4]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov ecx, s_world
	mov [ecx+0x28c], eax
	jmp _Z14R_SortSurfacesv_250
_Z14R_SortSurfacesv_50:
	and eax, 0xffffff00
	jmp _Z14R_SortSurfacesv_260
_Z14R_SortSurfacesv_120:
	mov eax, ecx
	jmp _Z14R_SortSurfacesv_270
_Z14R_SortSurfacesv_220:
	mov ebx, edx
	jmp _Z14R_SortSurfacesv_210
_Z14R_SortSurfacesv_130:
	mov esi, edx
	mov ebx, edx
	mov eax, s_world
	jmp _Z14R_SortSurfacesv_270


;R_AabbTreeMove_r(GfxAabbTree*, GfxAabbTree*, GfxAabbTree*)
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0_:
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__120:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x84], eax
	mov ebx, ecx
	mov ecx, eax
	mov eax, [eax]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov eax, [ecx+0x10]
	mov [edx+0x10], eax
	mov eax, [ecx+0x14]
	mov [edx+0x14], eax
	mov eax, [ecx+0x18]
	mov [edx+0x18], eax
	mov eax, [ecx+0x1c]
	mov [edx+0x1c], eax
	mov eax, [ecx+0x20]
	mov [edx+0x20], eax
	mov eax, [ecx+0x24]
	mov [edx+0x24], eax
	mov eax, [ecx+0x28]
	mov [edx+0x28], eax
	mov esi, ecx
	add esi, [ecx+0x28]
	mov eax, ebx
	sub eax, edx
	mov [edx+0x28], eax
	mov eax, [ebp-0x84]
	movzx ecx, word [eax+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	mov [ebp-0x1c], edx
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__10
	mov [ebp-0x24], esi
	mov [ebp-0x20], ebx
	mov dword [ebp-0x80], 0x0
	mov [ebp-0xa0], esi
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__260:
	mov edx, [ebp-0xa0]
	mov eax, [edx]
	mov ecx, [ebp-0x20]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov ebx, [ebp-0x24]
	add ebx, [edx+0x28]
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov esi, [ebp-0x1c]
	lea eax, [esi+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__20
	mov [ebp-0x2c], ebx
	mov [ebp-0x28], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x7c], 0x0
	mov [ebp-0x9c], ebx
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__230:
	mov edx, [ebp-0x9c]
	mov eax, [edx]
	mov ecx, [ebp-0x28]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov ebx, [ebp-0x2c]
	add ebx, [edx+0x28]
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov esi, [ebp-0x1c]
	lea eax, [esi+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__30
	mov [ebp-0x34], ebx
	mov [ebp-0x30], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x78], 0x0
	mov [ebp-0x98], ebx
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__220:
	mov edx, [ebp-0x98]
	mov eax, [edx]
	mov ecx, [ebp-0x30]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov ebx, [ebp-0x34]
	add ebx, [edx+0x28]
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov esi, [ebp-0x1c]
	lea eax, [esi+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__40
	mov [ebp-0x3c], ebx
	mov [ebp-0x38], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x74], 0x0
	mov [ebp-0x94], ebx
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__210:
	mov edx, [ebp-0x94]
	mov eax, [edx]
	mov ecx, [ebp-0x38]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, [edx+0x10]
	mov [ecx+0x10], eax
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov ebx, [ebp-0x3c]
	add ebx, [edx+0x28]
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov esi, [ebp-0x1c]
	lea eax, [esi+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__50
	mov [ebp-0x44], ebx
	mov [ebp-0x40], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x70], 0x0
	mov [ebp-0x90], ebx
	mov edx, ebx
	mov ecx, esi
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__200:
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
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov esi, [ebp-0x44]
	add esi, [edx+0x28]
	mov eax, [ebp-0x1c]
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x1c]
	lea ebx, [eax+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__60
	mov [ebp-0x4c], esi
	mov [ebp-0x48], eax
	mov dword [ebp-0x6c], 0x0
	mov [ebp-0x8c], esi
	mov edx, esi
	mov ecx, eax
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__180:
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
	mov eax, [edx+0x14]
	mov [ecx+0x14], eax
	mov eax, [edx+0x18]
	mov [ecx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ecx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ecx+0x20], eax
	mov eax, [edx+0x24]
	mov [ecx+0x24], eax
	mov eax, [edx+0x28]
	mov [ecx+0x28], eax
	mov esi, [ebp-0x4c]
	add esi, [edx+0x28]
	mov eax, ebx
	sub eax, ecx
	mov [ecx+0x28], eax
	movzx ecx, word [edx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	mov [ebp-0x1c], edx
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__70
	mov [ebp-0x54], esi
	mov [ebp-0x50], ebx
	mov dword [ebp-0x68], 0x0
	mov [ebp-0x88], esi
	mov edx, ebx
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__150:
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x14]
	mov [edx+0x14], eax
	mov eax, [esi+0x18]
	mov [edx+0x18], eax
	mov eax, [esi+0x1c]
	mov [edx+0x1c], eax
	mov eax, [esi+0x20]
	mov [edx+0x20], eax
	mov eax, [esi+0x24]
	mov [edx+0x24], eax
	mov eax, [esi+0x28]
	mov [edx+0x28], eax
	mov ebx, [ebp-0x54]
	add ebx, [esi+0x28]
	mov eax, [ebp-0x1c]
	sub eax, edx
	mov [edx+0x28], eax
	movzx ecx, word [esi+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x1c]
	lea esi, [eax+edx*4]
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__80
	mov [ebp-0x5c], ebx
	mov [ebp-0x58], eax
	mov dword [ebp-0x64], 0x0
	mov edx, eax
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__90
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__110:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x5c], 0x2c
	add ebx, 0x2c
	add dword [ebp-0x58], 0x2c
	mov ecx, [ebp-0x88]
	movzx eax, word [ecx+0x18]
	cmp [ebp-0x64], eax
	jae _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__100
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__140:
	mov esi, [ebp-0x1c]
	mov edx, [ebp-0x58]
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__90:
	mov eax, [ebx]
	mov [edx], eax
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+0x14], eax
	mov eax, [ebx+0x18]
	mov [edx+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+0x1c], eax
	mov eax, [ebx+0x20]
	mov [edx+0x20], eax
	mov eax, [ebx+0x24]
	mov [edx+0x24], eax
	mov eax, [ebx+0x28]
	mov [edx+0x28], eax
	mov edi, [ebp-0x5c]
	add edi, [ebx+0x28]
	mov eax, esi
	sub eax, edx
	mov [edx+0x28], eax
	movzx ecx, word [ebx+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [esi+edx*4]
	mov [ebp-0x1c], edx
	test cx, cx
	jz _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__110
	mov dword [ebp-0x60], 0x0
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__130:
	mov ecx, [ebp-0x1c]
	mov edx, esi
	mov eax, edi
	call _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__120
	mov [ebp-0x1c], eax
	add dword [ebp-0x60], 0x1
	add edi, 0x2c
	add esi, 0x2c
	movzx eax, word [ebx+0x18]
	cmp [ebp-0x60], eax
	jb _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__130
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x5c], 0x2c
	add ebx, 0x2c
	add dword [ebp-0x58], 0x2c
	mov ecx, [ebp-0x88]
	movzx eax, word [ecx+0x18]
	cmp [ebp-0x64], eax
	jb _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__140
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__100:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x54], 0x2c
	add dword [ebp-0x88], 0x2c
	add dword [ebp-0x50], 0x2c
	mov esi, [ebp-0x8c]
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x68]
	jbe _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__70
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__160:
	mov esi, [ebp-0x88]
	mov edx, [ebp-0x50]
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__150
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__80:
	mov [ebp-0x1c], esi
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x54], 0x2c
	add dword [ebp-0x88], 0x2c
	add dword [ebp-0x50], 0x2c
	mov esi, [ebp-0x8c]
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x68]
	ja _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__160
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__70:
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x4c], 0x2c
	add dword [ebp-0x8c], 0x2c
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x18]
	cmp eax, [ebp-0x6c]
	jbe _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__170
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x8c]
	mov ecx, [ebp-0x48]
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__180
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__60:
	mov [ebp-0x1c], ebx
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__170:
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x44], 0x2c
	add dword [ebp-0x90], 0x2c
	add dword [ebp-0x40], 0x2c
	mov ecx, [ebp-0x94]
	movzx eax, word [ecx+0x18]
	cmp eax, [ebp-0x70]
	jbe _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__190
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x40]
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__200
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__50:
	mov [ebp-0x1c], eax
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__190:
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x3c], 0x2c
	add dword [ebp-0x94], 0x2c
	add dword [ebp-0x38], 0x2c
	mov esi, [ebp-0x98]
	movzx eax, word [esi+0x18]
	cmp [ebp-0x74], eax
	jb _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__210
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__250:
	add dword [ebp-0x78], 0x1
	add dword [ebp-0x34], 0x2c
	add dword [ebp-0x98], 0x2c
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x9c]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x78], eax
	jb _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__220
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__270:
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x2c], 0x2c
	add dword [ebp-0x9c], 0x2c
	add dword [ebp-0x28], 0x2c
	mov ecx, [ebp-0xa0]
	movzx eax, word [ecx+0x18]
	cmp eax, [ebp-0x7c]
	ja _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__230
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__240
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__40:
	mov [ebp-0x1c], eax
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__250
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__20:
	mov [ebp-0x1c], eax
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__240:
	add dword [ebp-0x80], 0x1
	add dword [ebp-0x24], 0x2c
	add dword [ebp-0xa0], 0x2c
	add dword [ebp-0x20], 0x2c
	mov esi, [ebp-0x84]
	movzx eax, word [esi+0x18]
	cmp [ebp-0x80], eax
	jb _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__260
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__10:
	mov eax, [ebp-0x1c]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__30:
	mov [ebp-0x1c], eax
	jmp _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0__270


;R_PostLoadEntities()
_Z18R_PostLoadEntitiesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov edi, s_world
	mov eax, [edi+0x244]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [esp], edx
	call Z_MallocInternal
	mov [ebp-0x110], eax
	mov edx, [edi+0x244]
	test edx, edx
	jz _Z18R_PostLoadEntitiesv_10
	mov ebx, eax
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0xf4], 0x0
	xor esi, esi
_Z18R_PostLoadEntitiesv_20:
	mov eax, [ebp-0xf4]
	add eax, [edi+0x29c]
	mov dword [esp+0x8], 0x4c
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov edx, [edi+0x290]
	mov eax, [edx+esi]
	mov [ebx+0x4c], eax
	mov eax, [edx+esi+0x4]
	mov [ebx+0x50], eax
	mov eax, [edx+esi+0x8]
	mov [ebx+0x54], eax
	mov eax, [edx+esi+0xc]
	mov [ebx+0x58], eax
	mov eax, [edx+esi+0x10]
	mov [ebx+0x5c], eax
	mov eax, [edx+esi+0x14]
	mov [ebx+0x60], eax
	mov eax, [edx+esi+0x18]
	mov [ebx+0x64], eax
	add dword [ebp-0x114], 0x1
	mov edx, [edi+0x244]
	add dword [ebp-0xf4], 0x4c
	add ebx, 0x68
	add esi, 0x1c
	cmp [ebp-0x114], edx
	jb _Z18R_PostLoadEntitiesv_20
_Z18R_PostLoadEntitiesv_10:
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x110]
	lea eax, [edx+eax*8]
	mov [ebp-0x10c], eax
	cmp edx, eax
	jz _Z18R_PostLoadEntitiesv_30
	mov ebx, eax
	sub ebx, edx
	mov eax, ebx
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	cmp eax, 0x1
	jz _Z18R_PostLoadEntitiesv_40
	xor edx, edx
_Z18R_PostLoadEntitiesv_50:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z18R_PostLoadEntitiesv_50
	lea eax, [edx+edx]
_Z18R_PostLoadEntitiesv_300:
	mov dword [esp+0xc], _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_
	mov [esp+0x8], eax
	mov ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x110]
	mov [esp], eax
	call _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x6e7
	jle _Z18R_PostLoadEntitiesv_60
	mov edi, [ebp-0x110]
	add edi, 0x680
	mov dword [esp+0x8], _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_
	mov [esp+0x4], edi
	mov edx, [ebp-0x110]
	mov [esp], edx
	call _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_
	cmp [ebp-0x10c], edi
	jz _Z18R_PostLoadEntitiesv_30
_Z18R_PostLoadEntitiesv_90:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], edi
	lea ecx, [ebp-0x80]
	mov [esp], ecx
	call memcpy
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0x80]
	mov [esp+0x4], eax
	lea edx, [ebp-0xe8]
	mov [esp], edx
	call memcpy
	lea ebx, [edi-0x68]
	mov esi, edi
	jmp _Z18R_PostLoadEntitiesv_70
_Z18R_PostLoadEntitiesv_80:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	mov esi, ebx
	sub ebx, 0x68
_Z18R_PostLoadEntitiesv_70:
	mov [esp+0x4], ebx
	lea ecx, [ebp-0xe8]
	mov [esp], ecx
	call _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_
	test al, al
	jnz _Z18R_PostLoadEntitiesv_80
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	add edi, 0x68
	cmp [ebp-0x10c], edi
	jnz _Z18R_PostLoadEntitiesv_90
_Z18R_PostLoadEntitiesv_30:
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edi, [eax+0x244]
	test edi, edi
	jz _Z18R_PostLoadEntitiesv_100
	mov ebx, [ebp-0x110]
	mov dword [ebp-0xec], 0x0
	xor edi, edi
	xor esi, esi
	mov ecx, [ebp-0x118]
	jmp _Z18R_PostLoadEntitiesv_110
_Z18R_PostLoadEntitiesv_120:
	mov edx, s_world
	mov [ebp-0x118], edx
	mov ecx, edx
_Z18R_PostLoadEntitiesv_110:
	mov eax, edi
	add eax, [ecx+0x29c]
	mov dword [esp+0x8], 0x4c
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x118]
	mov edx, [eax+0x290]
	mov eax, [ebx+0x4c]
	mov [esi+edx], eax
	mov eax, [ebx+0x50]
	mov [esi+edx+0x4], eax
	mov eax, [ebx+0x54]
	mov [esi+edx+0x8], eax
	mov eax, [ebx+0x58]
	mov [esi+edx+0xc], eax
	mov eax, [ebx+0x5c]
	mov [esi+edx+0x10], eax
	mov eax, [ebx+0x60]
	mov [esi+edx+0x14], eax
	mov eax, [ebx+0x64]
	mov [esi+edx+0x18], eax
	add dword [ebp-0xec], 0x1
	add edi, 0x4c
	add ebx, 0x68
	add esi, 0x1c
	mov ecx, [ebp-0xec]
	mov edx, [ebp-0x118]
	cmp ecx, [edx+0x244]
	jb _Z18R_PostLoadEntitiesv_120
_Z18R_PostLoadEntitiesv_100:
	mov eax, [ebp-0x110]
	mov [esp], eax
	call Z_FreeInternal
	mov edx, s_world
	mov [ebp-0x118], edx
	mov esi, [edx+0x244]
	test esi, esi
	jnz _Z18R_PostLoadEntitiesv_130
	mov ecx, edx
_Z18R_PostLoadEntitiesv_290:
	mov ebx, [ecx+0xf0]
	test ebx, ebx
	jg _Z18R_PostLoadEntitiesv_140
_Z18R_PostLoadEntitiesv_250:
	call Hunk_ClearTempMemory
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edx, [eax+0xf0]
	test edx, edx
	jle _Z18R_PostLoadEntitiesv_150
	mov dword [ebp-0xf0], 0x0
	mov dword [ebp-0xf8], 0x0
	mov [ebp-0x11c], eax
	mov edx, [ebp-0x118]
	jmp _Z18R_PostLoadEntitiesv_160
_Z18R_PostLoadEntitiesv_180:
	mov dword [ebp-0x104], 0x1
	mov edx, 0x1
	mov ecx, [ebp-0x104]
_Z18R_PostLoadEntitiesv_200:
	mov eax, [ebp-0x108]
	mov [eax+0x18], ecx
	mov dword [esp+0x4], 0x4
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z23Hunk_AllocAlignInternalii
	mov [ebp-0x100], eax
	mov eax, [esi]
	mov edx, [ebp-0x100]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [esi+0xc]
	mov [edx+0xc], eax
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x14]
	mov [edx+0x14], eax
	mov eax, [esi+0x18]
	mov [edx+0x18], eax
	mov eax, [esi+0x1c]
	mov [edx+0x1c], eax
	mov eax, [esi+0x20]
	mov [edx+0x20], eax
	mov eax, [esi+0x24]
	mov [edx+0x24], eax
	mov eax, [esi+0x28]
	mov [edx+0x28], eax
	mov edi, esi
	add edi, [esi+0x28]
	lea ebx, [edx+0x2c]
	mov dword [edx+0x28], 0x2c
	movzx ecx, word [esi+0x18]
	movzx eax, cx
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [ebx+edx*4]
	test cx, cx
	jnz _Z18R_PostLoadEntitiesv_170
_Z18R_PostLoadEntitiesv_220:
	mov eax, [ebp-0x100]
	mov ecx, [ebp-0x108]
	mov [ecx+0x1c], eax
	add dword [ebp-0xf0], 0x1
	add dword [ebp-0xf8], 0x38
	mov edx, [ebp-0x11c]
	mov [ebp-0x118], edx
	mov ecx, [ebp-0xf0]
	cmp ecx, [edx+0xf0]
	jge _Z18R_PostLoadEntitiesv_150
_Z18R_PostLoadEntitiesv_160:
	mov ecx, [ebp-0xf8]
	add ecx, [edx+0x104]
	mov [ebp-0x108], ecx
	mov esi, [ecx+0x1c]
	mov eax, esi
	add eax, [esi+0x28]
	cmp word [esi+0x18], 0x0
	jz _Z18R_PostLoadEntitiesv_180
	mov ebx, eax
	xor edi, edi
	mov dword [ebp-0x104], 0x1
_Z18R_PostLoadEntitiesv_190:
	mov eax, ebx
	call _Z25R_AabbTreeChildrenCount_rP11GfxAabbTree
	add [ebp-0x104], eax
	add edi, 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp edi, eax
	jb _Z18R_PostLoadEntitiesv_190
	mov edx, [ebp-0x104]
	mov ecx, edx
	jmp _Z18R_PostLoadEntitiesv_200
_Z18R_PostLoadEntitiesv_170:
	mov dword [ebp-0xfc], 0x0
_Z18R_PostLoadEntitiesv_210:
	mov ecx, edx
	mov edx, ebx
	mov eax, edi
	call _Z16R_AabbTreeMove_rP11GfxAabbTreeS0_S0_
	mov edx, eax
	add dword [ebp-0xfc], 0x1
	add edi, 0x2c
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp [ebp-0xfc], eax
	jb _Z18R_PostLoadEntitiesv_210
	jmp _Z18R_PostLoadEntitiesv_220
_Z18R_PostLoadEntitiesv_150:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_PostLoadEntitiesv_60:
	mov dword [esp+0x8], _Z20R_StaticModelCompareRK26GfxStaticModelCombinedInstS1_
	mov edx, [ebp-0x10c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x110]
	mov [esp], ecx
	call _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_
	jmp _Z18R_PostLoadEntitiesv_30
_Z18R_PostLoadEntitiesv_140:
	xor esi, esi
	xor ebx, ebx
	mov edx, [ebp-0x118]
	jmp _Z18R_PostLoadEntitiesv_230
_Z18R_PostLoadEntitiesv_240:
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edx, eax
_Z18R_PostLoadEntitiesv_230:
	mov eax, [edx+0x104]
	mov eax, [eax+ebx+0x1c]
	mov [esp], eax
	call _Z19R_AllocStaticModelsP11GfxAabbTree
	add esi, 0x1
	add ebx, 0x38
	mov ecx, [ebp-0x118]
	cmp esi, [ecx+0xf0]
	jl _Z18R_PostLoadEntitiesv_240
	mov ecx, [ecx+0xf0]
	test ecx, ecx
	jle _Z18R_PostLoadEntitiesv_250
	xor edi, edi
	xor esi, esi
	mov ebx, s_world
_Z18R_PostLoadEntitiesv_260:
	mov eax, [ebx+0x104]
	mov eax, [eax+esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17R_SortGfxAabbTreeP8GfxWorldP11GfxAabbTree
	add edi, 0x1
	add esi, 0x38
	cmp edi, [ebx+0xf0]
	jl _Z18R_PostLoadEntitiesv_260
	jmp _Z18R_PostLoadEntitiesv_250
_Z18R_PostLoadEntitiesv_130:
	xor esi, esi
	xor ebx, ebx
	mov edx, [ebp-0x118]
	jmp _Z18R_PostLoadEntitiesv_270
_Z18R_PostLoadEntitiesv_280:
	mov ecx, s_world
	mov [ebp-0x118], ecx
	mov edx, ecx
_Z18R_PostLoadEntitiesv_270:
	mov eax, ebx
	add eax, [edx+0x290]
	lea edx, [eax+0xc]
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov [esp+0x8], eax
	mov ecx, [ebp-0x118]
	mov eax, [ecx+0xf8]
	mov [esp+0x4], eax
	mov [esp], ecx
	call _Z30R_FilterStaticModelIntoCells_rP8GfxWorldP7mnode_tP18GfxStaticModelInstPKfS6_
	add esi, 0x1
	add ebx, 0x1c
	mov eax, [ebp-0x118]
	cmp [eax+0x244], esi
	ja _Z18R_PostLoadEntitiesv_280
	mov edx, s_world
	mov [ebp-0x118], edx
	mov ecx, edx
	jmp _Z18R_PostLoadEntitiesv_290
_Z18R_PostLoadEntitiesv_40:
	and eax, 0xffffff00
	jmp _Z18R_PostLoadEntitiesv_300


;R_LoadEntities(unsigned int)
_Z14R_LoadEntitiesj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x32c
	mov [ebp-0x2f4], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x27
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x2f0], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x2e0], eax
	mov eax, [ebp-0x2f0]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2ec], 0x0
_Z14R_LoadEntitiesj_80:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z14R_LoadEntitiesj_10
_Z14R_LoadEntitiesj_90:
	cmp byte [eax], 0x7b
	jnz _Z14R_LoadEntitiesj_10
	mov dword [ebp-0x27c], _cstring_null
	mov dword [ebp-0x2e4], 0x1
	xor ebx, ebx
	jmp _Z14R_LoadEntitiesj_20
_Z14R_LoadEntitiesj_50:
	cmp dword [ebp-0x2e4], 0x40
	jz _Z14R_LoadEntitiesj_30
_Z14R_LoadEntitiesj_160:
	mov edi, [ebp-0x2e4]
	mov [ebp-0x2e8], edi
	mov eax, edi
	add eax, 0x1
	mov [ebp-0x2e4], eax
	mov ecx, edi
_Z14R_LoadEntitiesj_60:
	mov edx, [ebp-0x2e0]
	add edx, ebx
	mov [ebp+ecx*8-0x27c], edx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	add ebx, ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov ecx, [ebp-0x2e0]
	add ecx, ebx
	mov [ebp-0x2fc], ecx
	mov edi, [ebp-0x2e8]
	mov [ebp+edi*8-0x278], ecx
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	xor eax, eax
	repne scasb
	not ecx
	add ebx, ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x2fc]
	mov [esp], eax
	call memcpy
_Z14R_LoadEntitiesj_20:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz _Z14R_LoadEntitiesj_40
	cmp al, 0x7d
	jz _Z14R_LoadEntitiesj_40
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_50
	mov dword [ebp-0x2e8], 0x0
	mov ecx, [ebp-0x2e8]
	jmp _Z14R_LoadEntitiesj_60
_Z14R_LoadEntitiesj_40:
	mov eax, [ebp-0x27c]
	cmp byte [eax], 0x0
	jz _Z14R_LoadEntitiesj_70
_Z14R_LoadEntitiesj_170:
	mov dword [esp+0x4], _cstring_misc_model
	mov eax, [ebp-0x278]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_80
	add dword [ebp-0x2ec], 0x1
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz _Z14R_LoadEntitiesj_90
_Z14R_LoadEntitiesj_10:
	mov edx, [ebp-0x2ec]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov ebx, s_world
	mov [ebx+0x29c], eax
	mov eax, [ebp-0x2ec]
	shl eax, 0x2
	shl dword [ebp-0x2ec], 0x5
	sub [ebp-0x2ec], eax
	mov ecx, [ebp-0x2ec]
	mov [esp], ecx
	call _Z18Hunk_AllocInternali
	mov [ebx+0x290], eax
	mov dword [ebx+0x244], 0x0
	mov edi, [ebp-0x2f0]
	mov [ebp-0x1c], edi
_Z14R_LoadEntitiesj_190:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x7b
	jnz _Z14R_LoadEntitiesj_100
_Z14R_LoadEntitiesj_380:
	mov dword [ebp-0x27c], _cstring_null
	mov dword [ebp-0x290], 0x1
	xor ebx, ebx
	jmp _Z14R_LoadEntitiesj_110
_Z14R_LoadEntitiesj_140:
	cmp dword [ebp-0x290], 0x40
	jz _Z14R_LoadEntitiesj_120
_Z14R_LoadEntitiesj_450:
	mov ecx, [ebp-0x290]
	mov [ebp-0x28c], ecx
	mov edi, ecx
	add edi, 0x1
	mov [ebp-0x290], edi
	mov edx, ecx
_Z14R_LoadEntitiesj_150:
	mov eax, [ebp-0x2e0]
	add eax, ebx
	mov [ebp-0x2fc], eax
	mov [ebp+edx*8-0x27c], eax
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	add ebx, ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov edx, [ebp-0x2fc]
	mov [esp], edx
	call memcpy
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov edi, [ebp-0x2e0]
	add edi, ebx
	mov [ebp-0x2fc], edi
	mov eax, [ebp-0x28c]
	mov [ebp+eax*8-0x278], edi
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	add ebx, ecx
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x2fc]
	mov [esp], eax
	call memcpy
_Z14R_LoadEntitiesj_110:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz _Z14R_LoadEntitiesj_130
	cmp al, 0x7d
	jz _Z14R_LoadEntitiesj_130
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_140
	mov dword [ebp-0x28c], 0x0
	mov edx, [ebp-0x28c]
	jmp _Z14R_LoadEntitiesj_150
_Z14R_LoadEntitiesj_30:
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_r_loadentities_m
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14R_LoadEntitiesj_160
_Z14R_LoadEntitiesj_70:
	mov dword [esp+0x4], _cstring_r_loadentities_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14R_LoadEntitiesj_170
_Z14R_LoadEntitiesj_130:
	mov eax, [ebp-0x27c]
	cmp byte [eax], 0x0
	jz _Z14R_LoadEntitiesj_180
_Z14R_LoadEntitiesj_470:
	mov dword [esp+0x4], _cstring_misc_model
	mov eax, [ebp-0x278]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_190
	cmp dword [ebp-0x290], 0x1
	jg _Z14R_LoadEntitiesj_200
_Z14R_LoadEntitiesj_580:
	mov edx, _cstring_0_0_0
	xor ebx, ebx
_Z14R_LoadEntitiesj_600:
	xor eax, eax
	mov [ebp-0x58], eax
	mov [ebp-0x54], eax
	mov [ebp-0x50], eax
	lea edi, [ebp-0x50]
	mov [esp+0x10], edi
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x58]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edx
	call sscanf
	test ebx, ebx
	jz _Z14R_LoadEntitiesj_210
_Z14R_LoadEntitiesj_560:
	cmp dword [ebp-0x290], 0x1
	jle _Z14R_LoadEntitiesj_220
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
_Z14R_LoadEntitiesj_240:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x298], eax
	mov dword [esp+0x4], _cstring_model
	mov eax, [edi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14R_LoadEntitiesj_230
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz _Z14R_LoadEntitiesj_240
_Z14R_LoadEntitiesj_220:
	xor ebx, ebx
_Z14R_LoadEntitiesj_660:
	cvtss2sd xmm0, [ebp-0x50]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x54]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x58]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_r_checkvalidstat
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadEntitiesj_650:
	mov [esp], ebx
	call _Z22Com_IsLegacyXModelNamePKc
	lea edx, [ebx+0x7]
	test eax, eax
	cmovnz ebx, edx
	mov [esp], ebx
	call _Z15R_RegisterModelPKc
	mov [ebp-0x2d8], eax
	test eax, eax
	jz _Z14R_LoadEntitiesj_250
	mov [esp], eax
	call _Z9XModelBadPK6XModel
	test eax, eax
	jz _Z14R_LoadEntitiesj_260
_Z14R_LoadEntitiesj_250:
	cvtss2sd xmm0, [ebp-0x50]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebp-0x54]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp-0x58]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_bad_static_model
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov dword [esp], _cstring_default_static_m
	call _Z15R_RegisterModelPKc
	mov [ebp-0x2d8], eax
	test eax, eax
	jz _Z14R_LoadEntitiesj_270
	mov [esp], eax
	call _Z9XModelBadPK6XModel
	test eax, eax
	jz _Z14R_LoadEntitiesj_260
_Z14R_LoadEntitiesj_270:
	mov dword [esp+0x4], _cstring_r_checkvalidstat1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadEntitiesj_260:
	mov eax, [ebp-0x58]
	mov [ebp-0x48], eax
	mov eax, [ebp-0x54]
	mov [ebp-0x44], eax
	mov eax, [ebp-0x50]
	mov [ebp-0x40], eax
	mov ebx, s_world
	mov eax, [ebx+0x244]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, [ebx+0x29c]
	lea edx, [ecx+edx*4]
	mov [ebp-0x2d0], edx
	lea edx, [eax*4]
	mov ecx, eax
	shl ecx, 0x5
	sub ecx, edx
	mov edi, [ebx+0x290]
	add ecx, edi
	mov [ebp-0x2cc], ecx
	add eax, 0x1
	mov [ebx+0x244], eax
	cmp dword [ebp-0x290], 0x1
	jg _Z14R_LoadEntitiesj_280
_Z14R_LoadEntitiesj_420:
	mov edx, _cstring_0_0_0
_Z14R_LoadEntitiesj_440:
	xor eax, eax
	mov [ebp-0x3c], eax
	mov [ebp-0x38], eax
	mov [ebp-0x34], eax
	lea ebx, [ebp-0x3c]
	lea eax, [ebp-0x34]
	mov [esp+0x10], eax
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edx
	call sscanf
_Z14R_LoadEntitiesj_720:
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12AnglesToAxisPKfPA3_f
	cmp dword [ebp-0x290], 0x1
	jg _Z14R_LoadEntitiesj_290
	xor eax, eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2d4], xmm0
_Z14R_LoadEntitiesj_550:
	shr eax, 1
	and eax, 0x1
	mov [esp+0x18], eax
	mov ecx, [ebp-0x2cc]
	mov [esp+0x14], ecx
	mov edi, [ebp-0x2d0]
	mov [esp+0x10], edi
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x7c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2d8]
	mov [esp], ecx
	call _Z19R_CreateStaticModelP6XModelPKfPA3_S1_fP22GfxStaticModelDrawInstP18GfxStaticModelInsth
	mov edi, [ebp-0x2d8]
	mov [esp], edi
	call _Z14XModelGetFlagsPK6XModel
	mov edx, eax
	and edx, 0x1
	mov [ebp-0x2dc], edx
	mov ecx, [ebp-0x2cc]
	add ecx, 0x18
	mov [ebp-0x2b4], ecx
	mov edi, [ebp-0x2d0]
	add edi, 0x45
	mov [ebp-0x2b0], edi
	cmp dword [ebp-0x290], 0x1
	jg _Z14R_LoadEntitiesj_300
_Z14R_LoadEntitiesj_620:
	xor ebx, ebx
	mov edx, _cstring_ff00000000
_Z14R_LoadEntitiesj_640:
	lea eax, [ebp-0x24]
	mov [esp+0x18], eax
	lea eax, [ebp-0x4c]
	mov [esp+0x14], eax
	lea edi, [ebp-0x58]
	mov [esp+0x10], edi
	lea eax, [ebp-0x54]
	mov [esp+0xc], eax
	lea ecx, [ebp-0x50]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_02x02x02x02x02x
	mov [esp], edx
	call sscanf
	cmp eax, 0x4
	jz _Z14R_LoadEntitiesj_310
	cmp eax, 0x5
	jz _Z14R_LoadEntitiesj_320
	mov dword [esp+0x4], _cstring_r_vec4forkeyhex_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadEntitiesj_480:
	mov esi, s_world
_Z14R_LoadEntitiesj_500:
	mov edx, 0x1
_Z14R_LoadEntitiesj_330:
	mov eax, [ebp+edx*4-0x5c]
	mov edi, [ebp-0x2b4]
	mov [edi+edx-0x1], al
	add edx, 0x1
	cmp edx, 0x5
	jnz _Z14R_LoadEntitiesj_330
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x2b0]
	mov [edx], al
	mov edx, [ebp-0x2dc]
	test edx, edx
	jz _Z14R_LoadEntitiesj_340
	test bl, bl
	jz _Z14R_LoadEntitiesj_340
	mov ecx, [ebp-0x2cc]
	mov eax, [ecx+0x18]
	test eax, eax
	jnz _Z14R_LoadEntitiesj_350
	mov edi, ecx
_Z14R_LoadEntitiesj_460:
	mov dword [edi+0x18], 0x0
	mov ebx, edi
	add ebx, 0xc
	mov eax, [esi+0x240]
	mov [esp+0x18], eax
	mov [esp+0x14], ebx
	mov [esp+0x10], edi
	movss xmm0, dword [ebp-0x2d4]
	movss [esp+0xc], xmm0
	lea eax, [ebp-0x7c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2d8]
	mov [esp], ecx
	call _Z25R_GetPrimaryLightForModelPK6XModelPKfPA3_S2_fS3_S3_PK14GfxLightRegion
	mov edi, [ebp-0x2d0]
	mov [edi+0x45], al
	test al, al
	jnz _Z14R_LoadEntitiesj_360
	cmp dword [esi+0xd8], 0x1
	jz _Z14R_LoadEntitiesj_370
_Z14R_LoadEntitiesj_360:
	mov esi, s_world
_Z14R_LoadEntitiesj_350:
	mov edx, [ebp-0x2d0]
	movzx eax, byte [edx+0x45]
	lea eax, [eax+eax*2]
	mov edx, [esi+0x23c]
	add word [edx+eax*4+0x2], 0x1
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	cmp byte [eax], 0x7b
	jz _Z14R_LoadEntitiesj_380
_Z14R_LoadEntitiesj_100:
	mov ecx, [ebp-0x2e0]
	mov [esp], ecx
	call Hunk_FreeTempMemory
	add esp, 0x32c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_LoadEntitiesj_280:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
_Z14R_LoadEntitiesj_400:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x29c], eax
	mov dword [esp+0x4], _cstring_angle
	mov eax, [edi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14R_LoadEntitiesj_390
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz _Z14R_LoadEntitiesj_400
_Z14R_LoadEntitiesj_700:
	lea ebx, [ebp-0x274]
	mov edi, 0x1
	mov esi, 0x8
	lea ecx, [ebp-0x27c]
	add ecx, esi
	mov [ebp-0x2a0], ecx
	mov dword [esp+0x4], _cstring_angles
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14R_LoadEntitiesj_410
_Z14R_LoadEntitiesj_430:
	add edi, 0x1
	add esi, 0x8
	add ebx, 0x8
	cmp edi, [ebp-0x290]
	jz _Z14R_LoadEntitiesj_420
	lea ecx, [ebp-0x27c]
	add ecx, esi
	mov [ebp-0x2a0], ecx
	mov dword [esp+0x4], _cstring_angles
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_430
_Z14R_LoadEntitiesj_410:
	mov edi, [ebp-0x2a0]
	mov edx, [edi+0x4]
	test edx, edx
	jnz _Z14R_LoadEntitiesj_440
	jmp _Z14R_LoadEntitiesj_420
_Z14R_LoadEntitiesj_120:
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_r_loadentities_m
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14R_LoadEntitiesj_450
_Z14R_LoadEntitiesj_340:
	mov edi, [ebp-0x2cc]
	jmp _Z14R_LoadEntitiesj_460
_Z14R_LoadEntitiesj_180:
	mov dword [esp+0x4], _cstring_r_loadentities_e
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14R_LoadEntitiesj_470
_Z14R_LoadEntitiesj_320:
	cmp dword [ebp-0x2f4], 0xe
	jg _Z14R_LoadEntitiesj_480
	mov eax, [ebp-0x24]
	cmp eax, 0xff
	jz _Z14R_LoadEntitiesj_490
	add eax, 0x1
	mov [ebp-0x24], eax
	mov esi, s_world
	jmp _Z14R_LoadEntitiesj_500
_Z14R_LoadEntitiesj_290:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
_Z14R_LoadEntitiesj_520:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x2a4], eax
	mov dword [esp+0x4], _cstring_modelscale
	mov eax, [edi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14R_LoadEntitiesj_510
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz _Z14R_LoadEntitiesj_520
_Z14R_LoadEntitiesj_680:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2d4], xmm0
_Z14R_LoadEntitiesj_690:
	lea ebx, [ebp-0x274]
	mov edi, 0x1
	mov esi, 0x8
_Z14R_LoadEntitiesj_540:
	lea eax, [ebp-0x27c]
	add eax, esi
	mov [ebp-0x2a8], eax
	mov dword [esp+0x4], _cstring_spawnflags
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z14R_LoadEntitiesj_530
	add edi, 0x1
	add esi, 0x8
	add ebx, 0x8
	cmp edi, [ebp-0x290]
	jnz _Z14R_LoadEntitiesj_540
_Z14R_LoadEntitiesj_670:
	xor eax, eax
	movss xmm0, dword [ebp-0x2d4]
	jmp _Z14R_LoadEntitiesj_550
_Z14R_LoadEntitiesj_210:
	mov dword [esp+0x4], _cstring_r_checkvalidstat2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14R_LoadEntitiesj_560
_Z14R_LoadEntitiesj_200:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
	jmp _Z14R_LoadEntitiesj_570
_Z14R_LoadEntitiesj_590:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jz _Z14R_LoadEntitiesj_580
_Z14R_LoadEntitiesj_570:
	lea edx, [ebp-0x27c]
	add edx, ebx
	mov [ebp-0x294], edx
	mov dword [esp+0x4], _cstring_origin
	mov eax, [edi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_590
	mov ecx, [ebp-0x294]
	mov edx, [ecx+0x4]
	test edx, edx
	jz _Z14R_LoadEntitiesj_580
	mov ebx, 0x1
	jmp _Z14R_LoadEntitiesj_600
_Z14R_LoadEntitiesj_300:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
	jmp _Z14R_LoadEntitiesj_610
_Z14R_LoadEntitiesj_630:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jz _Z14R_LoadEntitiesj_620
_Z14R_LoadEntitiesj_610:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x2ac], eax
	mov dword [esp+0x4], _cstring_gndlt
	mov eax, [edi]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadEntitiesj_630
	mov ecx, [ebp-0x2ac]
	mov edx, [ecx+0x4]
	test edx, edx
	jz _Z14R_LoadEntitiesj_620
	mov ebx, 0x1
	jmp _Z14R_LoadEntitiesj_640
_Z14R_LoadEntitiesj_310:
	mov esi, s_world
	mov eax, [esi+0xd8]
	mov [ebp-0x24], eax
	jmp _Z14R_LoadEntitiesj_500
_Z14R_LoadEntitiesj_230:
	mov edx, [ebp-0x298]
	mov ebx, [edx+0x4]
	test ebx, ebx
	jnz _Z14R_LoadEntitiesj_650
	jmp _Z14R_LoadEntitiesj_660
_Z14R_LoadEntitiesj_530:
	mov edx, [ebp-0x2a8]
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z14R_LoadEntitiesj_670
	mov [esp], eax
	call atoi
	movss xmm0, dword [ebp-0x2d4]
	jmp _Z14R_LoadEntitiesj_550
_Z14R_LoadEntitiesj_510:
	mov edx, [ebp-0x2a4]
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z14R_LoadEntitiesj_680
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2c0]
	cvtsd2ss xmm0, [ebp-0x2c0]
	movss [ebp-0x2d4], xmm0
	jmp _Z14R_LoadEntitiesj_690
_Z14R_LoadEntitiesj_390:
	mov edx, [ebp-0x29c]
	mov eax, [edx+0x4]
	test eax, eax
	jz _Z14R_LoadEntitiesj_700
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2c8]
	cvtsd2ss xmm0, [ebp-0x2c8]
	ucomiss xmm0, [_float_0_00000000]
	jp _Z14R_LoadEntitiesj_710
	jz _Z14R_LoadEntitiesj_700
_Z14R_LoadEntitiesj_710:
	mov dword [ebp-0x3c], 0x0
	movss [ebp-0x38], xmm0
	mov dword [ebp-0x34], 0x0
	lea ebx, [ebp-0x3c]
	jmp _Z14R_LoadEntitiesj_720
_Z14R_LoadEntitiesj_370:
	mov eax, [ebp-0x2cc]
	movss xmm0, dword [eax]
	addss xmm0, [eax+0xc]
	movss xmm1, dword [_float_0_50000000]
	mulss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [eax+0x4]
	addss xmm0, [ebx+0x4]
	mulss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [eax+0x8]
	addss xmm0, [ebx+0x8]
	mulss xmm0, xmm1
	movss [ebp-0x28], xmm0
	mov dword [esp+0x8], 0x1
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [esi+0x110]
	mov [esp], eax
	call _Z25R_GetPrimaryLightFromGridPK12GfxLightGridPKfh
	mov [edi+0x45], al
	sub al, 0x1
	jz _Z14R_LoadEntitiesj_360
	mov byte [edi+0x45], 0x0
	mov esi, s_world
	jmp _Z14R_LoadEntitiesj_350
_Z14R_LoadEntitiesj_490:
	mov dword [ebp-0x24], 0x0
	mov esi, s_world
	jmp _Z14R_LoadEntitiesj_500


;R_CountNodes_r(mnode_load_t*)
_Z14R_CountNodes_rP12mnode_load_t:
_Z14R_CountNodes_rP12mnode_load_t_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	cmp dword [eax], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_10
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_CountNodes_rP12mnode_load_t_10:
	mov edx, [rgl+0x14]
	mov eax, [eax+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_20
	mov dword [ebp-0x38], 0x1
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_30
_Z14R_CountNodes_rP12mnode_load_t_60:
	mov eax, 0x1
_Z14R_CountNodes_rP12mnode_load_t_90:
	mov edx, [ebp-0x38]
	lea eax, [edx+eax+0x2]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_CountNodes_rP12mnode_load_t_20:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea ebx, [edx+eax]
	cmp dword [ebx], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_40
	mov dword [ebp-0x34], 0x1
_Z14R_CountNodes_rP12mnode_load_t_160:
	mov eax, [edi+0xc]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_50
	mov eax, 0x1
_Z14R_CountNodes_rP12mnode_load_t_150:
	mov ecx, [ebp-0x34]
	lea eax, [ecx+eax+0x2]
	mov [ebp-0x38], eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jnz _Z14R_CountNodes_rP12mnode_load_t_60
_Z14R_CountNodes_rP12mnode_load_t_30:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_70
	mov dword [ebp-0x28], 0x1
_Z14R_CountNodes_rP12mnode_load_t_140:
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_80
	mov eax, 0x1
_Z14R_CountNodes_rP12mnode_load_t_120:
	mov ecx, [ebp-0x28]
	lea eax, [ecx+eax+0x2]
	jmp _Z14R_CountNodes_rP12mnode_load_t_90
_Z14R_CountNodes_rP12mnode_load_t_80:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_100
	mov edi, 0x1
_Z14R_CountNodes_rP12mnode_load_t_170:
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz _Z14R_CountNodes_rP12mnode_load_t_110
	mov eax, 0x1
	lea eax, [edi+eax+0x2]
	jmp _Z14R_CountNodes_rP12mnode_load_t_120
_Z14R_CountNodes_rP12mnode_load_t_70:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov [ebp-0x24], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov edx, [ebp-0x24]
	lea eax, [edx+eax+0x2]
	mov [ebp-0x28], eax
	mov edx, [rgl+0x14]
	jmp _Z14R_CountNodes_rP12mnode_load_t_140
_Z14R_CountNodes_rP12mnode_load_t_50:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov [ebp-0x2c], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax+0x2]
	mov edx, [rgl+0x14]
	jmp _Z14R_CountNodes_rP12mnode_load_t_150
_Z14R_CountNodes_rP12mnode_load_t_40:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov [ebp-0x30], eax
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov edx, [ebp-0x30]
	lea eax, [edx+eax+0x2]
	mov [ebp-0x34], eax
	mov edx, [rgl+0x14]
	jmp _Z14R_CountNodes_rP12mnode_load_t_160
_Z14R_CountNodes_rP12mnode_load_t_110:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov [ebp-0x1c], eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax+0x2]
	lea eax, [edi+eax+0x2]
	jmp _Z14R_CountNodes_rP12mnode_load_t_120
_Z14R_CountNodes_rP12mnode_load_t_100:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov [ebp-0x20], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t_130
	mov ecx, [ebp-0x20]
	lea edi, [ecx+eax+0x2]
	mov edx, [rgl+0x14]
	jmp _Z14R_CountNodes_rP12mnode_load_t_170


;R_LoadLightGridPoints_Version15(unsigned int)
_Z31R_LoadLightGridPoints_Version15j:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ac
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x2
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x178], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z31R_LoadLightGridPoints_Version15j_10
	cmp dword [ebp+0x8], 0xe
	ja _Z31R_LoadLightGridPoints_Version15j_20
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov dword [esp], 0x19
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call ClearBounds
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z31R_LoadLightGridPoints_Version15j_30
_Z31R_LoadLightGridPoints_Version15j_220:
	mov eax, 0xc8000000
	mov [ebp-0x58], eax
	mov [ebp-0x54], eax
	mov [ebp-0x50], eax
	mov eax, 0x48000000
	mov [ebp-0x4c], eax
	mov [ebp-0x48], eax
	mov [ebp-0x44], eax
_Z31R_LoadLightGridPoints_Version15j_240:
	mov ebx, s_world
	mov eax, [ebx+0xd8]
	mov [ebx+0x114], eax
	mov word [ebx+0x118], 0xffff
	mov word [ebx+0x11a], 0xffff
	mov word [ebx+0x11c], 0xffff
	mov word [ebx+0x11e], 0x0
	mov word [ebx+0x120], 0x0
	mov word [ebx+0x122], 0x0
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*4]
	add eax, eax
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x174], eax
	mov eax, [ebx+0x140]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x16c], eax
	mov eax, [ebx+0x140]
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x16c]
	mov [esp], ecx
	call memset
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z31R_LoadLightGridPoints_Version15j_40
	mov dword [ebp-0x170], 0x0
_Z31R_LoadLightGridPoints_Version15j_680:
	mov ebx, [ebp-0x170]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz _Z31R_LoadLightGridPoints_Version15j_50
	mov ebx, s_world
	mov ecx, [ebx+0x140]
	test ecx, ecx
	jnz _Z31R_LoadLightGridPoints_Version15j_60
	mov dword [ebp-0x168], 0x0
	xor eax, eax
_Z31R_LoadLightGridPoints_Version15j_760:
	mov ecx, s_world
	mov ebx, [ecx+0x144]
	lea esi, [ebx+eax]
	lea edi, [ebp-0x10c]
	mov dword [esp+0x8], 0xa8
	mov [esp+0x4], esi
	mov [esp], edi
	call memcpy
	mov dword [esp+0x8], 0xa8
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	mov ebx, s_world
	mov eax, [ebx+0x144]
	mov dword [esp+0x8], 0xa8
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov esi, [ebp-0x1c]
	test esi, esi
	jz _Z31R_LoadLightGridPoints_Version15j_70
	mov edx, [ebp-0x174]
	xor ecx, ecx
	jmp _Z31R_LoadLightGridPoints_Version15j_80
_Z31R_LoadLightGridPoints_Version15j_90:
	movzx esi, word [ebp-0x168]
	mov [edx+0x6], si
_Z31R_LoadLightGridPoints_Version15j_100:
	add ecx, 0x1
	add edx, 0xa
	cmp [ebp-0x1c], ecx
	jbe _Z31R_LoadLightGridPoints_Version15j_70
_Z31R_LoadLightGridPoints_Version15j_80:
	movzx eax, word [edx+0x6]
	test ax, ax
	jz _Z31R_LoadLightGridPoints_Version15j_90
	movzx eax, ax
	cmp [ebp-0x168], eax
	jnz _Z31R_LoadLightGridPoints_Version15j_100
	mov word [edx+0x6], 0x0
	add ecx, 0x1
	add edx, 0xa
	cmp [ebp-0x1c], ecx
	ja _Z31R_LoadLightGridPoints_Version15j_80
_Z31R_LoadLightGridPoints_Version15j_70:
	mov eax, [ebp-0x16c]
	mov [esp], eax
	call Hunk_FreeTempMemory
	mov edx, s_world
	movzx ecx, word [edx+0x120]
	movzx eax, word [edx+0x11a]
	sub ecx, eax
	movzx eax, word [edx+0x11e]
	mov ebx, edx
	movzx edx, word [edx+0x118]
	sub eax, edx
	cmp ecx, eax
	jge _Z31R_LoadLightGridPoints_Version15j_110
	mov dword [ebx+0x124], 0x1
	mov dword [ebx+0x128], 0x0
_Z31R_LoadLightGridPoints_Version15j_730:
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*4]
	mov edx, [ebp-0x174]
	lea eax, [edx+eax*2]
	mov [ebp-0x160], eax
	cmp edx, eax
	jz _Z31R_LoadLightGridPoints_Version15j_120
	mov ebx, eax
	sub ebx, edx
	mov ecx, ebx
	sar ecx, 1
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	cmp eax, 0x1
	jz _Z31R_LoadLightGridPoints_Version15j_130
	xor edx, edx
_Z31R_LoadLightGridPoints_Version15j_140:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z31R_LoadLightGridPoints_Version15j_140
	lea eax, [edx+edx]
_Z31R_LoadLightGridPoints_Version15j_890:
	mov dword [esp+0xc], _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	mov [esp+0x8], eax
	mov ecx, [ebp-0x160]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x174]
	mov [esp], esi
	call _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0xa9
	jle _Z31R_LoadLightGridPoints_Version15j_150
	lea eax, [esi+0xa0]
	mov [ebp-0x164], eax
	mov edi, esi
	add edi, 0xa
	cmp eax, edi
	jz _Z31R_LoadLightGridPoints_Version15j_160
_Z31R_LoadLightGridPoints_Version15j_210:
	mov eax, [edi]
	mov [ebp-0x2a], eax
	mov eax, [edi+0x4]
	mov [ebp-0x26], eax
	movzx eax, word [edi+0x8]
	mov [ebp-0x22], ax
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x2a]
	mov [esp], ecx
	call _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	test al, al
	jz _Z31R_LoadLightGridPoints_Version15j_170
	lea ebx, [edi+0xa]
	mov [ebp-0x134], ebx
	mov ecx, edi
	sub ecx, [ebp-0x174]
	sar ecx, 1
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea esi, [ecx+eax*4]
	test esi, esi
	jle _Z31R_LoadLightGridPoints_Version15j_180
	mov ecx, edi
	mov edx, ebx
	xor ebx, ebx
_Z31R_LoadLightGridPoints_Version15j_190:
	mov eax, [ecx-0xa]
	mov [edx-0xa], eax
	mov eax, [ecx-0x6]
	mov [edx-0x6], eax
	movzx eax, word [ecx-0x2]
	mov [edx-0x2], ax
	add ebx, 0x1
	sub ecx, 0xa
	sub edx, 0xa
	cmp ebx, esi
	jnz _Z31R_LoadLightGridPoints_Version15j_190
_Z31R_LoadLightGridPoints_Version15j_180:
	mov eax, [ebp-0x2a]
	mov esi, [ebp-0x174]
	mov [esi], eax
	mov eax, [ebp-0x26]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x22]
	mov [esi+0x8], ax
	mov edx, [ebp-0x134]
_Z31R_LoadLightGridPoints_Version15j_300:
	cmp [ebp-0x164], edx
	jz _Z31R_LoadLightGridPoints_Version15j_200
	mov edi, edx
	jmp _Z31R_LoadLightGridPoints_Version15j_210
_Z31R_LoadLightGridPoints_Version15j_50:
	mov esi, [ebp-0x16c]
	mov [esp], esi
	call Hunk_FreeTempMemory
	mov eax, [ebp-0x174]
	mov [esp], eax
	call Hunk_FreeTempMemory
_Z31R_LoadLightGridPoints_Version15j_10:
	mov ebx, s_world
	mov word [ebx+0x118], 0x0
	mov word [ebx+0x11a], 0x0
	mov word [ebx+0x11c], 0x0
	mov word [ebx+0x11e], 0x0
	mov word [ebx+0x120], 0x0
	mov word [ebx+0x122], 0x0
	mov dword [ebx+0x124], 0x0
	mov dword [ebx+0x128], 0x1
	mov dword [esp], 0x2
	call _Z18Hunk_AllocInternali
	mov [ebx+0x12c], eax
	mov word [eax], 0xffff
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_LoadLightGridPoints_Version15j_20:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x70
	mov dword [esp], 0x19
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	lea edx, [ebp-0x4c]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x58]
	mov [esp], ecx
	call ClearBounds
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z31R_LoadLightGridPoints_Version15j_220
	xor esi, esi
_Z31R_LoadLightGridPoints_Version15j_230:
	lea eax, [ebp-0x4c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x58]
	mov [esp+0x8], edx
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12ExpandBoundsPKfS0_PfS1_
	add esi, 0x1
	add ebx, 0x70
	cmp esi, [ebp-0x20]
	jb _Z31R_LoadLightGridPoints_Version15j_230
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z31R_LoadLightGridPoints_Version15j_240
	jmp _Z31R_LoadLightGridPoints_Version15j_220
_Z31R_LoadLightGridPoints_Version15j_270:
	mov eax, [ebp-0x34]
	mov [esi], eax
	mov eax, [ebp-0x30]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [esi+0x8], ax
	add dword [ebp-0x164], 0xa
_Z31R_LoadLightGridPoints_Version15j_200:
	mov ecx, [ebp-0x164]
_Z31R_LoadLightGridPoints_Version15j_830:
	cmp [ebp-0x160], ecx
	jz _Z31R_LoadLightGridPoints_Version15j_120
	mov ebx, [ebp-0x164]
	movzx edx, byte [ebx+0x8]
	movzx ecx, word [ebx+0x6]
	mov esi, ebx
	movzx ebx, word [ebx+0x4]
	mov eax, esi
	movzx esi, word [esi+0x2]
	movzx edi, word [eax]
	movzx eax, byte [eax+0x9]
	mov [ebp-0x2b], al
	mov [ebp-0x2c], dl
	mov [ebp-0x2e], cx
	mov [ebp-0x30], bx
	mov [ebp-0x32], si
	mov [ebp-0x34], di
	mov ebx, [ebp-0x164]
	sub ebx, 0xa
	mov esi, [ebp-0x164]
	jmp _Z31R_LoadLightGridPoints_Version15j_250
_Z31R_LoadLightGridPoints_Version15j_260:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
_Z31R_LoadLightGridPoints_Version15j_250:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x34]
	mov [esp], edx
	call _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	test al, al
	jnz _Z31R_LoadLightGridPoints_Version15j_260
	jmp _Z31R_LoadLightGridPoints_Version15j_270
_Z31R_LoadLightGridPoints_Version15j_170:
	movzx eax, byte [ebp-0x21]
	mov [ebp-0x2b], al
	movzx eax, byte [ebp-0x22]
	mov [ebp-0x2c], al
	movzx eax, word [ebp-0x24]
	mov [ebp-0x2e], ax
	movzx eax, word [ebp-0x26]
	mov [ebp-0x30], ax
	movzx eax, word [ebp-0x28]
	mov [ebp-0x32], ax
	movzx eax, word [ebp-0x2a]
	mov [ebp-0x34], ax
	lea ebx, [edi-0xa]
	mov esi, edi
	jmp _Z31R_LoadLightGridPoints_Version15j_280
_Z31R_LoadLightGridPoints_Version15j_290:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
_Z31R_LoadLightGridPoints_Version15j_280:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x34]
	mov [esp], eax
	call _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	test al, al
	jnz _Z31R_LoadLightGridPoints_Version15j_290
	mov eax, [ebp-0x34]
	mov [esi], eax
	mov eax, [ebp-0x30]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [esi+0x8], ax
	add edi, 0xa
	mov [ebp-0x134], edi
	mov edx, edi
	jmp _Z31R_LoadLightGridPoints_Version15j_300
_Z31R_LoadLightGridPoints_Version15j_150:
	mov edi, [ebp-0x174]
	add edi, 0xa
	cmp [ebp-0x160], edi
	jnz _Z31R_LoadLightGridPoints_Version15j_310
_Z31R_LoadLightGridPoints_Version15j_120:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z31R_LoadLightGridPoints_Version15j_320
	mov edi, [ebp-0x174]
	mov dword [ebp-0x130], 0x0
_Z31R_LoadLightGridPoints_Version15j_360:
	lea esi, [edi+0x9]
	mov [ebp-0x13c], esi
	movzx eax, byte [edi+0x9]
	test al, al
	jz _Z31R_LoadLightGridPoints_Version15j_330
	movzx eax, al
	mov [ebp-0x144], eax
	mov edx, s_world
	mov eax, [edx+0x124]
	lea edx, [eax*8+needsTraceSwizzle.142602]
	xor esi, esi
	xor ebx, ebx
_Z31R_LoadLightGridPoints_Version15j_350:
	mov eax, [ebp-0x144]
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz _Z31R_LoadLightGridPoints_Version15j_340
	movzx ecx, byte [edx]
	mov eax, 0x1
	shl eax, cl
	or esi, eax
_Z31R_LoadLightGridPoints_Version15j_340:
	add ebx, 0x1
	add edx, 0x1
	cmp ebx, 0x8
	jnz _Z31R_LoadLightGridPoints_Version15j_350
	mov edx, esi
	mov ecx, [ebp-0x13c]
	mov [ecx], dl
_Z31R_LoadLightGridPoints_Version15j_330:
	add dword [ebp-0x130], 0x1
	add edi, 0xa
	mov ebx, [ebp-0x130]
	cmp ebx, [ebp-0x1c]
	jb _Z31R_LoadLightGridPoints_Version15j_360
_Z31R_LoadLightGridPoints_Version15j_320:
	mov esi, s_world
	mov eax, [esi+0x124]
	movzx ebx, word [esi+eax*2+0x11e]
	movzx eax, word [esi+eax*2+0x118]
	sub ebx, eax
	lea ebx, [ebx+ebx+0x2]
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov [esi+0x12c], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xff
	mov [esp], eax
	call memset
	mov dword [esp], 0x40000
	call _Z18Hunk_AllocInternali
	mov [esi+0x134], eax
	mov dword [esi+0x130], 0x0
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [esi+0x13c], eax
	mov dword [esi+0x138], 0x0
	mov eax, [ebp-0x1c]
	mov [ebp-0x15c], eax
	test eax, eax
	jz _Z31R_LoadLightGridPoints_Version15j_370
	mov dword [ebp-0x14c], 0x0
	mov edx, [ebp-0x14c]
	mov edi, [ebp-0x14c]
_Z31R_LoadLightGridPoints_Version15j_510:
	lea eax, [edx+edx*4]
	lea esi, [eax+eax]
	mov ecx, [ebp-0x174]
	add ecx, esi
	mov [ebp-0x154], ecx
	mov ebx, s_world
	mov ecx, [ebx+0x124]
	mov eax, [ebp-0x154]
	movzx eax, word [eax+ecx*2]
	mov [ebp-0x14e], ax
	mov edx, [ebp-0x154]
	movzx eax, word [edx+0x4]
	mov [ebp-0x2a], ax
	movzx eax, word [edx+0x4]
	mov [ebp-0x28], ax
	add edi, 0x1
	mov [ebp-0x128], edi
	cmp [ebp-0x15c], edi
	ja _Z31R_LoadLightGridPoints_Version15j_380
	lea eax, [edi+edi*4]
	lea ebx, [eax+eax]
	mov edx, s_world
_Z31R_LoadLightGridPoints_Version15j_580:
	mov eax, [edx+0x124]
	movzx ecx, word [edx+eax*2+0x118]
	sub [ebp-0x14e], cx
	movzx ecx, word [ebp-0x14e]
	mov esi, edx
	mov edx, [edx+0x12c]
	mov eax, [esi+0x130]
	shr eax, 0x2
	mov [edx+ecx*2], ax
	mov eax, [esi+0x138]
	mov [ebp-0x5c], eax
	mov eax, [esi+0x128]
	mov ecx, [ebp-0x154]
	movzx edx, word [ecx+eax*2]
	mov [ebp-0x64], dx
	mov esi, [ebp-0x174]
	lea eax, [esi+eax*2]
	movzx eax, word [eax+ebx-0xa]
	sub ax, dx
	add eax, 0x1
	mov [ebp-0x62], ax
	movzx edx, word [ebp-0x2a]
	mov [ebp-0x60], dx
	movzx eax, word [ebp-0x28]
	sub ax, dx
	add eax, 0x1
	mov [ebp-0x5e], ax
	mov eax, s_world
	mov edx, [eax+0x134]
	add edx, [eax+0x130]
	mov eax, [ebp-0x64]
	mov [edx], eax
	mov eax, [ebp-0x60]
	mov [edx+0x4], eax
	mov eax, [ebp-0x5c]
	mov [edx+0x8], eax
	mov edx, s_world
	add dword [edx+0x130], 0xc
	mov word [ebp-0x34], 0xffff
	mov word [ebp-0x32], 0x0
	mov ecx, [ebp-0x128]
	cmp [ebp-0x14c], ecx
	jz _Z31R_LoadLightGridPoints_Version15j_390
	mov word [ebp-0x148], 0xffff
	mov dword [ebp-0x120], 0x0
	mov word [ebp-0x146], 0x0
	lea eax, [ecx+ecx*4]
	add eax, eax
	mov [ebp-0x17c], eax
	mov esi, [ebp-0x14c]
	jmp _Z31R_LoadLightGridPoints_Version15j_400
_Z31R_LoadLightGridPoints_Version15j_450:
	mov [ebp-0x34], di
	mov [ebp-0x32], si
	mov esi, [ebp-0x14c]
	mov [ebp-0x120], esi
	movzx eax, word [ebp-0x11a]
	mov [ebp-0x148], ax
	mov word [ebp-0x146], 0x1
	mov edx, [ebp-0x124]
	cmp [ebp-0x128], edx
	jz _Z31R_LoadLightGridPoints_Version15j_410
_Z31R_LoadLightGridPoints_Version15j_500:
	mov [ebp-0x14c], edx
	lea edi, [edx+0x1]
	mov esi, edx
_Z31R_LoadLightGridPoints_Version15j_400:
	lea eax, [esi+esi*4]
	mov ecx, [ebp-0x174]
	lea edx, [ecx+eax*2]
	mov ebx, s_world
	mov ecx, [ebx+0x128]
	movzx esi, word [edx+ecx*2]
	mov [ebp-0x11a], si
	cmp edi, [ebp-0x128]
	jz _Z31R_LoadLightGridPoints_Version15j_420
	lea eax, [edi+edi*4]
	lea esi, [eax+eax]
	add ecx, ecx
	mov [ebp-0x18c], ecx
	add ecx, esi
	mov [ebp-0x190], ecx
	movzx ebx, word [ebp-0x11a]
	mov [ebp-0x180], ebx
	movzx ebx, word [ebp-0x11a]
	mov eax, [ebp-0x174]
	cmp [ecx+eax], bx
	jz _Z31R_LoadLightGridPoints_Version15j_430
	mov [ebp-0x124], edi
_Z31R_LoadLightGridPoints_Version15j_520:
	movzx edi, word [edx+0x4]
	mov ebx, [ebp-0x174]
	movzx esi, word [ebx+esi-0x6]
	movzx eax, word [ebp-0x148]
	movzx edx, word [ebp-0x146]
	lea ebx, [eax+edx]
	cmp [ebp-0x180], ebx
	jz _Z31R_LoadLightGridPoints_Version15j_440
_Z31R_LoadLightGridPoints_Version15j_490:
	cmp word [ebp-0x146], 0x0
	jz _Z31R_LoadLightGridPoints_Version15j_450
	mov eax, [ebp-0x14c]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x120]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x2a]
	mov [esp], eax
	lea ecx, [ebp-0x34]
	mov eax, [ebp-0x174]
	call _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj
	test al, al
	jz _Z31R_LoadLightGridPoints_Version15j_460
	cmp [ebp-0x180], ebx
	jz _Z31R_LoadLightGridPoints_Version15j_450
	mov ecx, [ebp-0x180]
	sub ecx, ebx
	cmp ecx, 0xff
	jbe _Z31R_LoadLightGridPoints_Version15j_470
_Z31R_LoadLightGridPoints_Version15j_480:
	mov ebx, s_world
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov byte [edx+eax], 0xff
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov byte [edx+eax+0x1], 0x0
	add dword [ebx+0x130], 0x2
	sub ecx, 0xff
	cmp ecx, 0xff
	ja _Z31R_LoadLightGridPoints_Version15j_480
	mov eax, ebx
_Z31R_LoadLightGridPoints_Version15j_560:
	mov edx, [eax+0x134]
	mov ebx, eax
	mov eax, [eax+0x130]
	mov [edx+eax], cl
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov byte [edx+eax+0x1], 0x0
	add dword [ebx+0x130], 0x2
	jmp _Z31R_LoadLightGridPoints_Version15j_450
_Z31R_LoadLightGridPoints_Version15j_440:
	cmp di, [ebp-0x34]
	jnz _Z31R_LoadLightGridPoints_Version15j_490
	cmp si, [ebp-0x32]
	jnz _Z31R_LoadLightGridPoints_Version15j_490
	cmp word [ebp-0x146], 0xfe
	ja _Z31R_LoadLightGridPoints_Version15j_490
	add word [ebp-0x146], 0x1
	mov edx, [ebp-0x124]
	cmp [ebp-0x128], edx
	jnz _Z31R_LoadLightGridPoints_Version15j_500
_Z31R_LoadLightGridPoints_Version15j_410:
	movzx edx, word [ebp-0x146]
_Z31R_LoadLightGridPoints_Version15j_840:
	mov ecx, [ebp-0x128]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x120]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x2a]
	mov [esp], esi
	lea ecx, [ebp-0x34]
	mov eax, [ebp-0x174]
	call _Z30R_EmitLightGridBlock_Version15PK23AnnotatedLightGridPointjPKtS3_jj
	test al, al
	jz _Z31R_LoadLightGridPoints_Version15j_460
	mov edx, s_world
	mov eax, [edx+0x130]
	add eax, 0x3
	and eax, 0xfffffffc
	mov [edx+0x130], eax
	mov eax, [ebp-0x128]
	cmp [ebp-0x15c], eax
	jbe _Z31R_LoadLightGridPoints_Version15j_370
	mov [ebp-0x14c], eax
	mov edx, eax
	mov edi, eax
	jmp _Z31R_LoadLightGridPoints_Version15j_510
_Z31R_LoadLightGridPoints_Version15j_420:
	mov esi, [ebp-0x17c]
	mov eax, [ebp-0x128]
	mov [ebp-0x124], eax
	movzx ecx, word [ebp-0x11a]
	mov [ebp-0x180], ecx
	jmp _Z31R_LoadLightGridPoints_Version15j_520
_Z31R_LoadLightGridPoints_Version15j_430:
	lea eax, [eax+esi+0xa]
	mov ecx, [ebp-0x18c]
	lea ebx, [eax+ecx]
	mov ecx, edi
	add esi, 0xa
	mov eax, [ebp-0x128]
	mov [ebp-0x124], eax
	jmp _Z31R_LoadLightGridPoints_Version15j_530
_Z31R_LoadLightGridPoints_Version15j_550:
	mov esi, edi
_Z31R_LoadLightGridPoints_Version15j_530:
	add ecx, 0x1
	cmp [ebp-0x124], ecx
	jz _Z31R_LoadLightGridPoints_Version15j_540
	movzx eax, word [ebx]
	lea edi, [esi+0xa]
	add ebx, 0xa
	cmp eax, [ebp-0x180]
	jz _Z31R_LoadLightGridPoints_Version15j_550
	mov [ebp-0x124], ecx
	jmp _Z31R_LoadLightGridPoints_Version15j_520
_Z31R_LoadLightGridPoints_Version15j_470:
	mov eax, s_world
	jmp _Z31R_LoadLightGridPoints_Version15j_560
_Z31R_LoadLightGridPoints_Version15j_380:
	lea eax, [edi+edi*4]
	lea ebx, [eax+eax]
	mov edx, [ebp-0x174]
	add edx, ebx
	movzx ecx, word [edx+ecx*2]
	mov [ebp-0x158], ecx
	movzx eax, word [ebp-0x14e]
	cmp ecx, eax
	jz _Z31R_LoadLightGridPoints_Version15j_570
	mov edx, s_world
	jmp _Z31R_LoadLightGridPoints_Version15j_580
_Z31R_LoadLightGridPoints_Version15j_540:
	mov ecx, [ebp-0x124]
	lea eax, [ecx+ecx*4]
	lea esi, [eax+eax]
	jmp _Z31R_LoadLightGridPoints_Version15j_520
_Z31R_LoadLightGridPoints_Version15j_460:
	mov eax, s_world
	mov dword [eax+0x138], 0x0
	mov word [eax+0x118], 0x0
	mov word [eax+0x11a], 0x0
	mov word [eax+0x11c], 0x0
	mov word [eax+0x11e], 0x0
	mov word [eax+0x120], 0x0
	mov word [eax+0x122], 0x0
_Z31R_LoadLightGridPoints_Version15j_370:
	mov edx, [ebp-0x174]
	mov [esp], edx
	call Hunk_FreeTempMemory
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31R_LoadLightGridPoints_Version15j_40:
	mov dword [ebp-0x12c], 0x0
	mov dword [ebp-0x170], 0x0
_Z31R_LoadLightGridPoints_Version15j_690:
	mov ebx, [ebp-0x170]
	lea eax, [ebx+ebx*4]
	mov esi, [ebp-0x174]
	lea ebx, [esi+eax*2]
	mov eax, [ebp-0x12c]
	mov edx, [ebp-0x178]
	lea esi, [edx+eax*8]
	movzx eax, word [esi+0x6]
	mov [ebx+0x6], ax
	test byte [esi+0x4], 0x1
	jnz _Z31R_LoadLightGridPoints_Version15j_590
	xor eax, eax
_Z31R_LoadLightGridPoints_Version15j_710:
	mov [ebx+0x8], al
	movzx eax, byte [esi+0x5]
	mov [ebx+0x9], al
	mov eax, [esi]
	shr eax, 0x13
	mov ecx, eax
	and cx, 0x1ffc
	movzx eax, byte [esi+0x4]
	shr al, 0x6
	and eax, 0x3
	or ecx, eax
	mov [ebx], cx
	mov edx, [esi]
	shr edx, 0x8
	and dx, 0x1ffc
	movzx eax, byte [esi+0x4]
	shr al, 0x4
	and eax, 0x3
	or edx, eax
	mov [ebx+0x2], dx
	mov edx, [esi]
	shl edx, 0x2
	and dx, 0xffc
	movzx eax, byte [esi+0x4]
	shr al, 0x2
	and eax, 0x3
	or edx, eax
	mov [ebx+0x4], dx
	movzx eax, cx
	shl eax, 0x5
	sub eax, 0x20000
	cvtsi2ss xmm0, eax
	movss [ebp-0x40], xmm0
	movzx eax, word [ebx+0x2]
	shl eax, 0x5
	sub eax, 0x20000
	cvtsi2ss xmm0, eax
	movss [ebp-0x3c], xmm0
	movzx eax, word [ebx+0x4]
	shl eax, 0x6
	sub eax, 0x20000
	cvtsi2ss xmm0, eax
	movss [ebp-0x38], xmm0
	lea ecx, [ebp-0x4c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea edx, [ebp-0x40]
	mov [esp], edx
	call _Z13PointInBoundsPKfS0_S0_
	test eax, eax
	jz _Z31R_LoadLightGridPoints_Version15j_600
	movzx ecx, word [ebx]
	mov edx, s_world
	cmp [edx+0x118], cx
	jbe _Z31R_LoadLightGridPoints_Version15j_610
	mov [edx+0x118], cx
	movzx ecx, word [ebx]
_Z31R_LoadLightGridPoints_Version15j_610:
	cmp [edx+0x11e], cx
	jae _Z31R_LoadLightGridPoints_Version15j_620
	mov [edx+0x11e], cx
_Z31R_LoadLightGridPoints_Version15j_620:
	movzx eax, word [ebx+0x2]
	cmp [edx+0x11a], ax
	jbe _Z31R_LoadLightGridPoints_Version15j_630
	mov [edx+0x11a], ax
	movzx eax, word [ebx+0x2]
_Z31R_LoadLightGridPoints_Version15j_630:
	cmp [edx+0x120], ax
	jae _Z31R_LoadLightGridPoints_Version15j_640
	mov [edx+0x120], ax
_Z31R_LoadLightGridPoints_Version15j_640:
	movzx eax, word [ebx+0x4]
	cmp [edx+0x11c], ax
	jbe _Z31R_LoadLightGridPoints_Version15j_650
	mov [edx+0x11c], ax
	movzx eax, word [ebx+0x4]
_Z31R_LoadLightGridPoints_Version15j_650:
	cmp [edx+0x122], ax
	jae _Z31R_LoadLightGridPoints_Version15j_660
	mov [edx+0x122], ax
_Z31R_LoadLightGridPoints_Version15j_660:
	movzx eax, byte [ebx+0x8]
	cmp eax, [edx+0x114]
	jz _Z31R_LoadLightGridPoints_Version15j_670
_Z31R_LoadLightGridPoints_Version15j_720:
	add dword [ebp-0x170], 0x1
_Z31R_LoadLightGridPoints_Version15j_600:
	mov edi, [ebp-0x1c]
	lea ebx, [esi+0xc]
	lea ecx, [esi+0x8]
_Z31R_LoadLightGridPoints_Version15j_700:
	add dword [ebp-0x12c], 0x1
	cmp edi, [ebp-0x12c]
	jbe _Z31R_LoadLightGridPoints_Version15j_680
	mov eax, [ebp-0x12c]
	test eax, eax
	jz _Z31R_LoadLightGridPoints_Version15j_690
	mov eax, [ebx-0x4]
	cmp eax, [ecx-0x8]
	jnz _Z31R_LoadLightGridPoints_Version15j_690
	movzx edx, byte [ebx]
	movzx eax, byte [ecx-0x4]
	xor edx, eax
	add ebx, 0x8
	add ecx, 0x8
	and dl, 0xfe
	jz _Z31R_LoadLightGridPoints_Version15j_700
	jmp _Z31R_LoadLightGridPoints_Version15j_690
_Z31R_LoadLightGridPoints_Version15j_590:
	mov eax, s_world
	movzx eax, byte [eax+0x114]
	jmp _Z31R_LoadLightGridPoints_Version15j_710
_Z31R_LoadLightGridPoints_Version15j_670:
	movzx eax, word [ebx+0x6]
	mov ecx, [ebp-0x16c]
	add dword [ecx+eax*4], 0x1
	jmp _Z31R_LoadLightGridPoints_Version15j_720
_Z31R_LoadLightGridPoints_Version15j_110:
	mov esi, s_world
	mov dword [esi+0x124], 0x0
	mov dword [esi+0x128], 0x1
	jmp _Z31R_LoadLightGridPoints_Version15j_730
_Z31R_LoadLightGridPoints_Version15j_60:
	xor ebx, ebx
	xor edx, edx
	mov dword [ebp-0x168], 0x0
_Z31R_LoadLightGridPoints_Version15j_750:
	mov esi, [ebp-0x16c]
	mov eax, [esi+edx*4]
	cmp ebx, eax
	jae _Z31R_LoadLightGridPoints_Version15j_740
	mov ebx, eax
	mov [ebp-0x168], edx
_Z31R_LoadLightGridPoints_Version15j_740:
	add edx, 0x1
	cmp ecx, edx
	jnz _Z31R_LoadLightGridPoints_Version15j_750
	mov edx, [ebp-0x168]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	jmp _Z31R_LoadLightGridPoints_Version15j_760
_Z31R_LoadLightGridPoints_Version15j_780:
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x174]
	mov [edx], eax
	mov eax, [ebp-0x30]
	mov [edx+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [edx+0x8], ax
	mov ebx, [ebp-0x138]
_Z31R_LoadLightGridPoints_Version15j_820:
	cmp [ebp-0x160], ebx
	jz _Z31R_LoadLightGridPoints_Version15j_120
	mov edi, ebx
_Z31R_LoadLightGridPoints_Version15j_310:
	mov eax, [edi]
	mov [ebp-0x34], eax
	mov eax, [edi+0x4]
	mov [ebp-0x30], eax
	movzx eax, word [edi+0x8]
	mov [ebp-0x2c], ax
	mov ebx, [ebp-0x174]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x34]
	mov [esp], esi
	call _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	test al, al
	jz _Z31R_LoadLightGridPoints_Version15j_770
	lea eax, [edi+0xa]
	mov [ebp-0x138], eax
	mov ecx, edi
	sub ecx, ebx
	sar ecx, 1
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea esi, [ecx+eax*4]
	test esi, esi
	jle _Z31R_LoadLightGridPoints_Version15j_780
	mov ecx, edi
	mov edx, [ebp-0x138]
	xor ebx, ebx
_Z31R_LoadLightGridPoints_Version15j_790:
	mov eax, [ecx-0xa]
	mov [edx-0xa], eax
	mov eax, [ecx-0x6]
	mov [edx-0x6], eax
	movzx eax, word [ecx-0x2]
	mov [edx-0x2], ax
	add ebx, 0x1
	sub ecx, 0xa
	sub edx, 0xa
	cmp ebx, esi
	jnz _Z31R_LoadLightGridPoints_Version15j_790
	jmp _Z31R_LoadLightGridPoints_Version15j_780
_Z31R_LoadLightGridPoints_Version15j_770:
	movzx eax, byte [ebp-0x2b]
	mov [ebp-0x21], al
	movzx eax, byte [ebp-0x2c]
	mov [ebp-0x22], al
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x24], ax
	movzx eax, word [ebp-0x30]
	mov [ebp-0x26], ax
	movzx eax, word [ebp-0x32]
	mov [ebp-0x28], ax
	movzx eax, word [ebp-0x34]
	mov [ebp-0x2a], ax
	lea ebx, [edi-0xa]
	mov esi, edi
	jmp _Z31R_LoadLightGridPoints_Version15j_800
_Z31R_LoadLightGridPoints_Version15j_810:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
_Z31R_LoadLightGridPoints_Version15j_800:
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x2a]
	mov [esp], ecx
	call _Z36R_AnnotatedLightGridPointSortsBeforeRK23AnnotatedLightGridPointS1_
	test al, al
	jnz _Z31R_LoadLightGridPoints_Version15j_810
	mov eax, [ebp-0x2a]
	mov [esi], eax
	mov eax, [ebp-0x26]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x22]
	mov [esi+0x8], ax
	add edi, 0xa
	mov [ebp-0x138], edi
	mov ebx, edi
	jmp _Z31R_LoadLightGridPoints_Version15j_820
_Z31R_LoadLightGridPoints_Version15j_160:
	mov ecx, eax
	jmp _Z31R_LoadLightGridPoints_Version15j_830
_Z31R_LoadLightGridPoints_Version15j_390:
	mov dword [ebp-0x120], 0x0
	xor edx, edx
	jmp _Z31R_LoadLightGridPoints_Version15j_840
_Z31R_LoadLightGridPoints_Version15j_570:
	mov ecx, [ebp-0x154]
	add ecx, 0x14
	mov [ebp-0x140], ecx
	mov ebx, [ebp-0x14c]
	add ebx, 0x2
	mov [ebp-0x128], ebx
	lea ebx, [esi+0x14]
	jmp _Z31R_LoadLightGridPoints_Version15j_850
_Z31R_LoadLightGridPoints_Version15j_880:
	mov [ebp-0x128], esi
	mov ebx, [ebp-0x18c]
_Z31R_LoadLightGridPoints_Version15j_850:
	movzx eax, word [edx+0x4]
	cmp ax, [ebp-0x2a]
	jae _Z31R_LoadLightGridPoints_Version15j_860
	mov [ebp-0x2a], ax
	movzx eax, word [edx+0x4]
_Z31R_LoadLightGridPoints_Version15j_860:
	cmp ax, [ebp-0x28]
	cmovbe ax, [ebp-0x28]
	mov [ebp-0x28], ax
	mov esi, [ebp-0x128]
	cmp [ebp-0x15c], esi
	jbe _Z31R_LoadLightGridPoints_Version15j_870
	mov edx, [ebp-0x140]
	lea esi, [edx+0xa]
	mov [ebp-0x140], esi
	mov esi, [ebp-0x128]
	add esi, 0x1
	lea eax, [ebx+0xa]
	mov [ebp-0x18c], eax
	mov ecx, s_world
	mov eax, [ecx+0x124]
	movzx eax, word [edx+eax*2]
	cmp [ebp-0x158], eax
	jz _Z31R_LoadLightGridPoints_Version15j_880
	mov edx, ecx
	jmp _Z31R_LoadLightGridPoints_Version15j_580
_Z31R_LoadLightGridPoints_Version15j_130:
	and eax, 0xffffff00
	jmp _Z31R_LoadLightGridPoints_Version15j_890
_Z31R_LoadLightGridPoints_Version15j_30:
	xor esi, esi
_Z31R_LoadLightGridPoints_Version15j_900:
	lea ecx, [ebp-0x4c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z12ExpandBoundsPKfS0_PfS1_
	add esi, 0x1
	add ebx, 0x34
	cmp [ebp-0x20], esi
	ja _Z31R_LoadLightGridPoints_Version15j_900
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _Z31R_LoadLightGridPoints_Version15j_240
	jmp _Z31R_LoadLightGridPoints_Version15j_220
_Z31R_LoadLightGridPoints_Version15j_870:
	lea eax, [esi+esi*4]
	lea ebx, [eax+eax]
	mov edx, s_world
	jmp _Z31R_LoadLightGridPoints_Version15j_580
	nop


;R_LoadReflectionProbes(unsigned int)
_Z22R_LoadReflectionProbesj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2007c
	cmp eax, 0xb
	ja _Z22R_LoadReflectionProbesj_10
	mov edi, s_world
	lea eax, [edi+0xe4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20004
	mov dword [esp], 0x29
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov eax, [edi+0xe4]
	add eax, 0x1
	mov [edi+0xe4], eax
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [edi+0xe8], eax
	mov eax, [edi+0xe4]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [edi+0xec], eax
	mov edx, [edi+0xe4]
	mov eax, edx
	shl eax, 0x4
	mov ecx, edx
	shl ecx, 0xf
	add eax, ecx
	add eax, edx
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x20070], eax
	cmp dword [edi+0xe4], 0x1
	jnz _Z22R_LoadReflectionProbesj_20
_Z22R_LoadReflectionProbesj_70:
	xor eax, eax
	mov [ebp-0x2005c], eax
	mov [ebp-0x20058], eax
	mov [ebp-0x20054], eax
	lea eax, [ebp-0x20050]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor eax, eax
	lea edx, [ebp-0x2005c]
_Z22R_LoadReflectionProbesj_30:
	mov dword [ebp+eax-0x20010], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz _Z22R_LoadReflectionProbesj_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov ebx, s_world
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	mov dword [esp+0xc], 0x1
	mov eax, [ebx+0xe4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov eax, [ebp-0x20070]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe8]
	add eax, 0x10
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	mov eax, [ebp-0x20070]
	mov [esp], eax
	call Hunk_FreeTempMemory
_Z22R_LoadReflectionProbesj_50:
	mov dword [rgl+0x18], 0x1
	add esp, 0x2007c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_LoadReflectionProbesj_10:
	mov ebx, s_world
	lea eax, [ebx+0xe4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20044
	mov dword [esp], 0x29
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov eax, [ebx+0xe4]
	add eax, 0x1
	mov [ebx+0xe4], eax
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0xe8], eax
	mov eax, [ebx+0xe4]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0xec], eax
	xor eax, eax
	mov [ebp-0x2005c], eax
	mov [ebp-0x20058], eax
	mov [ebp-0x20054], eax
	lea eax, [ebp-0x20050]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor eax, eax
	lea edx, [ebp-0x2005c]
_Z22R_LoadReflectionProbesj_40:
	mov dword [ebp+eax-0x20010], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz _Z22R_LoadReflectionProbesj_40
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov ebx, s_world
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	mov dword [esp+0xc], 0x1
	mov eax, [ebx+0xe4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0xe8]
	add eax, 0x10
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	jmp _Z22R_LoadReflectionProbesj_50
_Z22R_LoadReflectionProbesj_20:
	mov ebx, eax
	mov dword [ebp-0x2006c], 0x0
_Z22R_LoadReflectionProbesj_60:
	lea eax, [ebx+0xc]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	lea edx, [ebx+0x4c]
	lea eax, [esi+0xc]
	mov dword [esp+0x8], 0x1fff8
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add dword [ebp-0x2006c], 0x1
	add ebx, 0x20044
	add esi, 0x20004
	mov eax, [edi+0xe4]
	sub eax, 0x1
	cmp [ebp-0x2006c], eax
	jb _Z22R_LoadReflectionProbesj_60
	jmp _Z22R_LoadReflectionProbesj_70
	nop


;R_SetParentAndCell_r(mnode_load_t*)
_Z20R_SetParentAndCell_rP12mnode_load_t:
_Z20R_SetParentAndCell_rP12mnode_load_t_110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, eax
	mov ebx, [rgl+0x14]
	mov edx, [rgl+0x10]
	sub eax, ebx
	sar eax, 0x4
	cmp eax, edx
	jge _Z20R_SetParentAndCell_rP12mnode_load_t_10
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp edx, eax
	jle _Z20R_SetParentAndCell_rP12mnode_load_t_20
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea ecx, [ebx+eax]
	mov [ebp-0x24], ecx
	sar eax, 0x4
	cmp edx, eax
	jg _Z20R_SetParentAndCell_rP12mnode_load_t_30
_Z20R_SetParentAndCell_rP12mnode_load_t_150:
	mov edx, [esi+0xc]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [ebx+eax]
	mov [ebp-0x20], ecx
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl _Z20R_SetParentAndCell_rP12mnode_load_t_40
_Z20R_SetParentAndCell_rP12mnode_load_t_140:
	mov dword [esi], 0xfffffffe
	mov ebx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+ebx]
	shl edx, 0x4
	cmp eax, [edx+ebx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_50
	mov edx, [rgl+0x10]
_Z20R_SetParentAndCell_rP12mnode_load_t_20:
	mov ecx, [edi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea esi, [ebx+eax]
	mov [ebp-0x1c], esi
	sar eax, 0x4
	cmp eax, edx
	jge _Z20R_SetParentAndCell_rP12mnode_load_t_60
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp edx, eax
	jg _Z20R_SetParentAndCell_rP12mnode_load_t_70
_Z20R_SetParentAndCell_rP12mnode_load_t_120:
	mov eax, [ebp-0x1c]
	mov ecx, [eax+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl _Z20R_SetParentAndCell_rP12mnode_load_t_80
	mov esi, [ebp-0x1c]
_Z20R_SetParentAndCell_rP12mnode_load_t_180:
	mov dword [esi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_90
	mov ecx, [edi+0xc]
_Z20R_SetParentAndCell_rP12mnode_load_t_60:
	mov dword [edi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [edi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_100
_Z20R_SetParentAndCell_rP12mnode_load_t_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_SetParentAndCell_rP12mnode_load_t_100:
	mov [edi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_SetParentAndCell_rP12mnode_load_t_70:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov dword [esi], 0xfffffffe
	mov ebx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov edx, [eax+ebx]
	mov eax, [esi+0xc]
	shl eax, 0x4
	cmp edx, [eax+ebx]
	jnz _Z20R_SetParentAndCell_rP12mnode_load_t_120
	mov [esi], edx
	mov ebx, [rgl+0x14]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_120
_Z20R_SetParentAndCell_rP12mnode_load_t_40:
	mov eax, [ecx+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov ebx, [ebp-0x20]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov dword [ebx], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov ecx, [eax+edx]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp ecx, [eax+edx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_130
	mov edx, [esi+0xc]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_140
_Z20R_SetParentAndCell_rP12mnode_load_t_30:
	mov eax, [ecx+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov ebx, [ebp-0x24]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov dword [ebx], 0xfffffffe
	mov ebx, [rgl+0x14]
	mov edx, [ebp-0x24]
	mov eax, [edx+0x8]
	shl eax, 0x4
	mov edx, [eax+ebx]
	mov ecx, [ebp-0x24]
	mov eax, [ecx+0xc]
	shl eax, 0x4
	cmp edx, [eax+ebx]
	jnz _Z20R_SetParentAndCell_rP12mnode_load_t_150
	mov [ecx], edx
	mov ebx, [rgl+0x14]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_150
_Z20R_SetParentAndCell_rP12mnode_load_t_80:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov edx, [rgl+0x14]
	mov ecx, [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea ebx, [edx+eax]
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl _Z20R_SetParentAndCell_rP12mnode_load_t_160
_Z20R_SetParentAndCell_rP12mnode_load_t_200:
	mov dword [esi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_170
	mov ebx, [ebp-0x1c]
	mov ecx, [ebx+0xc]
	mov esi, ebx
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_180
_Z20R_SetParentAndCell_rP12mnode_load_t_50:
	mov [esi], eax
	mov ebx, [rgl+0x14]
	mov edx, [rgl+0x10]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_20
_Z20R_SetParentAndCell_rP12mnode_load_t_90:
	mov [esi], eax
	mov ecx, [edi+0xc]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_60
_Z20R_SetParentAndCell_rP12mnode_load_t_160:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z20R_SetParentAndCell_rP12mnode_load_t_110
	mov dword [ebx], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov ecx, [eax+edx]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp ecx, [eax+edx]
	jz _Z20R_SetParentAndCell_rP12mnode_load_t_190
	mov ecx, [esi+0xc]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_200
_Z20R_SetParentAndCell_rP12mnode_load_t_130:
	mov [ebx], ecx
	mov edx, [esi+0xc]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_140
_Z20R_SetParentAndCell_rP12mnode_load_t_170:
	mov [esi], eax
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	mov esi, edx
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_180
_Z20R_SetParentAndCell_rP12mnode_load_t_190:
	mov [ebx], ecx
	mov ecx, [esi+0xc]
	jmp _Z20R_SetParentAndCell_rP12mnode_load_t_200
	nop


;R_LoadNodesAndLeafs(unsigned int)
_Z19R_LoadNodesAndLeafsj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x38], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1b
	call _Z14Com_GetBspLump8LumpTypejPj
	mov edi, eax
	cmp dword [ebp-0x38], 0xe
	ja _Z19R_LoadNodesAndLeafsj_10
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x2c], eax
	mov dword [ebp-0x30], 0x0
_Z19R_LoadNodesAndLeafsj_130:
	mov eax, [ebp-0x1c]
	add eax, [ebp-0x20]
	shl eax, 0x4
	mov [esp], eax
	call Z_MallocInternal
	mov esi, eax
	mov [rgl+0x14], eax
	mov eax, [ebp-0x1c]
	mov [rgl+0x10], eax
	test eax, eax
	jz _Z19R_LoadNodesAndLeafsj_20
	mov dword [ebp-0x34], 0x0
	jmp _Z19R_LoadNodesAndLeafsj_30
_Z19R_LoadNodesAndLeafsj_50:
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	sub ebx, 0x1
	jnz _Z19R_LoadNodesAndLeafsj_40
	add dword [ebp-0x34], 0x1
	add edi, 0x24
	add esi, 0x10
	mov eax, [ebp-0x34]
	cmp eax, [ebp-0x1c]
	jae _Z19R_LoadNodesAndLeafsj_20
_Z19R_LoadNodesAndLeafsj_30:
	mov eax, [edi]
	mov [esi+0x4], eax
	mov ecx, edi
	mov edx, esi
	mov ebx, 0x2
_Z19R_LoadNodesAndLeafsj_40:
	mov eax, [ecx+0x4]
	test eax, eax
	jns _Z19R_LoadNodesAndLeafsj_50
	not eax
	add eax, [ebp-0x1c]
	jmp _Z19R_LoadNodesAndLeafsj_50
_Z19R_LoadNodesAndLeafsj_20:
	cmp dword [ebp-0x38], 0xe
	jbe _Z19R_LoadNodesAndLeafsj_60
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz _Z19R_LoadNodesAndLeafsj_70
_Z19R_LoadNodesAndLeafsj_110:
	mov esi, [rgl+0x14]
	mov ebx, esi
	mov ecx, [rgl+0x10]
	test ecx, ecx
	jle _Z19R_LoadNodesAndLeafsj_80
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [esi+eax]
	call _Z20R_SetParentAndCell_rP12mnode_load_t
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z20R_SetParentAndCell_rP12mnode_load_t
	mov dword [esi], 0xfffffffe
	mov esi, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov edx, [eax+esi]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp edx, [eax+esi]
	jz _Z19R_LoadNodesAndLeafsj_90
_Z19R_LoadNodesAndLeafsj_80:
	cmp dword [esi], 0xfffffffe
	jz _Z19R_LoadNodesAndLeafsj_100
	mov eax, 0x1
_Z19R_LoadNodesAndLeafsj_150:
	mov ebx, s_world
	mov [ebx+0xc], eax
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0xf8], eax
	mov edx, eax
	mov eax, [rgl+0x14]
	call _Z13R_SortNodes_rP12mnode_load_tP7mnode_t
	mov eax, [rgl+0x14]
	mov [esp], eax
	call Z_FreeInternal
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_LoadNodesAndLeafsj_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z19R_LoadNodesAndLeafsj_110
	xor edx, edx
_Z19R_LoadNodesAndLeafsj_120:
	mov ecx, [ebp-0x2c]
	movsx eax, word [ecx+0x18]
	mov [esi], eax
	add ecx, 0x24
	mov [ebp-0x2c], ecx
	add esi, 0x10
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jb _Z19R_LoadNodesAndLeafsj_120
	jmp _Z19R_LoadNodesAndLeafsj_110
_Z19R_LoadNodesAndLeafsj_10:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x1c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x30], eax
	mov dword [ebp-0x2c], 0x0
	jmp _Z19R_LoadNodesAndLeafsj_130
_Z19R_LoadNodesAndLeafsj_70:
	xor edx, edx
	mov ecx, [ebp-0x30]
_Z19R_LoadNodesAndLeafsj_140:
	movsx eax, word [ecx+0x14]
	mov [esi], eax
	add ecx, 0x18
	mov [ebp-0x30], ecx
	add esi, 0x10
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jb _Z19R_LoadNodesAndLeafsj_140
	jmp _Z19R_LoadNodesAndLeafsj_110
_Z19R_LoadNodesAndLeafsj_100:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [esi+eax]
	call _Z14R_CountNodes_rP12mnode_load_t
	mov ebx, eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call _Z14R_CountNodes_rP12mnode_load_t
	lea eax, [ebx+eax+0x2]
	jmp _Z19R_LoadNodesAndLeafsj_150
_Z19R_LoadNodesAndLeafsj_90:
	mov [ebx], edx
	mov esi, [rgl+0x14]
	jmp _Z19R_LoadNodesAndLeafsj_80


;R_LoadSurfaces(GfxBspLoad*)
_Z14R_LoadSurfacesP10GfxBspLoad:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x525c
	mov [ebp-0x51f0], eax
	cmp dword [eax], 0x15
	ja _Z14R_LoadSurfacesP10GfxBspLoad_10
	mov dword [esp+0x4], _cstring_bsp_compiled_wit
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
_Z14R_LoadSurfacesP10GfxBspLoad_10:
	lea ecx, [ebp-0x1c]
	mov eax, [ebp-0x51f0]
	mov edx, [eax+0x4]
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ebx, [ebp-0x51f0]
	mov eax, [ebx]
	call _Z22R_LoadTriangleSurfacesj8TrisTypePPK16DiskTriangleSoupPj
	mov edi, [ebp-0x20]
	test edi, edi
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_20
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_no_surfa
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadSurfacesP10GfxBspLoad_20:
	mov esi, [ebp-0x51f0]
	cmp dword [esi+0x4], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x30
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x44
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x51ec], eax
	mov esi, [ebp-0x24]
	test esi, esi
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_30
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_no_verti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadSurfacesP10GfxBspLoad_30:
	mov edx, [ebp-0x24]
	mov eax, s_world
	mov [eax+0x30], edx
	mov eax, [ebp-0x51f0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_40
_Z14R_LoadSurfacesP10GfxBspLoad_140:
	mov dword [ebp-0x2c], 0x4
	lea ebx, [ebp-0x30]
_Z14R_LoadSurfacesP10GfxBspLoad_130:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call Com_Memcpy
	mov ebx, s_world
	mov eax, [ebp-0x2c]
	mov [ebx+0x3c], eax
	mov [ebx+0x40], esi
	mov eax, [ebp-0x24]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp], edx
	call _Z18Hunk_AllocInternali
	mov [ebp-0x51d4], eax
	mov [ebx+0x34], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_50
_Z14R_LoadSurfacesP10GfxBspLoad_180:
	mov ebx, [ebp-0x51f0]
	cmp dword [ebx+0x4], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x31
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x51e8], eax
	mov eax, [ebp-0x20]
	mov ebx, s_world
	mov [ebx+0x18], eax
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x294], eax
	mov dword [ebx+0x10], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z14R_LoadSurfacesP10GfxBspLoad_60
	xor ecx, ecx
	xor edx, edx
	mov [ebp-0x5200], ebx
_Z14R_LoadSurfacesP10GfxBspLoad_70:
	mov eax, [ebp-0x1c]
	movzx eax, word [eax+edx+0x12]
	add [ebx+0x10], eax
	mov eax, [ebx+0x294]
	mov dword [eax+edx*2+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x18
	cmp [ebp-0x20], ecx
	ja _Z14R_LoadSurfacesP10GfxBspLoad_70
_Z14R_LoadSurfacesP10GfxBspLoad_150:
	mov edx, [ebp-0x5200]
	mov eax, [edx+0x10]
	add eax, eax
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebp-0x51cc], eax
	mov ecx, [ebp-0x5200]
	mov [ecx+0x14], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_80
	xor eax, eax
_Z14R_LoadSurfacesP10GfxBspLoad_90:
	add eax, 0x1
	cmp edx, eax
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_90
	mov dword [ebp-0x51d0], 0x0
	mov dword [ebp-0x51e4], 0x0
	mov dword [ebp-0x5178], 0x0
	mov dword [ebp-0x5174], 0x0
	mov dword [ebp-0x5170], 0x0
	mov ebx, s_world
	mov [ebp-0x5200], ebx
_Z14R_LoadSurfacesP10GfxBspLoad_110:
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x294]
	mov edx, [ebp-0x5178]
	mov eax, [eax+edx+0xc]
	test eax, eax
	js _Z14R_LoadSurfacesP10GfxBspLoad_100
_Z14R_LoadSurfacesP10GfxBspLoad_540:
	add dword [ebp-0x51e4], 0x1
	add dword [ebp-0x5178], 0x30
	add dword [ebp-0x5174], 0x18
	add dword [ebp-0x5170], 0x48
	mov ebx, [ebp-0x51e4]
	cmp [ebp-0x20], ebx
	ja _Z14R_LoadSurfacesP10GfxBspLoad_110
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_120
_Z14R_LoadSurfacesP10GfxBspLoad_40:
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2a
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_130
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_140
_Z14R_LoadSurfacesP10GfxBspLoad_60:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_150
_Z14R_LoadSurfacesP10GfxBspLoad_50:
	mov ebx, [ebp-0x51ec]
	mov esi, eax
	xor edi, edi
_Z14R_LoadSurfacesP10GfxBspLoad_170:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	lea ecx, [ebx+0x18]
	movzx edx, byte [ecx+0x2]
	shl edx, 0x10
	movzx eax, byte [ecx+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ebx+0x18]
	or edx, eax
	movzx eax, byte [ecx+0x3]
	shl eax, 0x18
	or edx, eax
	mov [esi+0x10], edx
	mov eax, [ebx+0x1c]
	mov [esi+0x14], eax
	mov eax, [ebx+0x20]
	mov [esi+0x18], eax
	mov eax, [ebx+0x24]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x28]
	mov [esi+0x20], eax
	mov eax, [ebx+0x2c]
	mov [ebp-0x58], eax
	mov eax, [ebx+0x30]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x34]
	mov [ebp-0x50], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call _Z15Vec3PackUnitVecPKf
	mov [esi+0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x38], eax
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z15Vec3PackUnitVecPKf
	mov [esi+0x24], eax
	lea edx, [ebx+0x2c]
	lea eax, [ebx+0xc]
	movss xmm5, dword [eax+0x4]
	movss xmm4, dword [edx+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm3, dword [edx+0x4]
	movss xmm6, dword [ebx+0x2c]
	movss xmm7, dword [ebx+0xc]
	lea eax, [ebx+0x38]
	movaps xmm1, xmm5
	mulss xmm1, xmm4
	movaps xmm2, xmm0
	mulss xmm2, xmm3
	subss xmm1, xmm2
	mulss xmm1, [ebx+0x38]
	mulss xmm0, xmm6
	mulss xmm4, xmm7
	subss xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	mulss xmm3, xmm7
	mulss xmm5, xmm6
	subss xmm3, xmm5
	mulss xmm3, [eax+0x8]
	addss xmm1, xmm3
	mov eax, 0x3f800000
	ucomiss xmm1, [_float_0_00000000]
	jae _Z14R_LoadSurfacesP10GfxBspLoad_160
	mov eax, 0xbf800000
_Z14R_LoadSurfacesP10GfxBspLoad_160:
	mov [esi+0xc], eax
	add edi, 0x1
	add ebx, 0x44
	add esi, 0x2c
	cmp edi, [ebp-0x24]
	jb _Z14R_LoadSurfacesP10GfxBspLoad_170
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_180
_Z14R_LoadSurfacesP10GfxBspLoad_80:
	mov esi, s_world
	mov [ebp-0x5200], esi
_Z14R_LoadSurfacesP10GfxBspLoad_120:
	mov eax, [ebp-0x5200]
	mov dword [eax+0x20], 0x0
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_190
	mov dword [ebp-0x51dc], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_870:
	mov eax, [ebp-0x5200]
	mov edx, [eax+0x20]
	test edx, edx
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_200
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x24], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_380:
	mov edx, [ebp-0x5200]
	mov edi, [edx+0x18]
	test edi, edi
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_210
	xor eax, eax
	mov [edx+0x158], eax
	mov [edx+0x15c], eax
	mov [edx+0x160], eax
	mov [edx+0x164], eax
	mov [edx+0x168], eax
	mov [edx+0x16c], eax
_Z14R_LoadSurfacesP10GfxBspLoad_280:
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x51f0]
	add edx, 0x1c
	mov [ebp-0x5198], edx
	mov ecx, [ebp-0x51f0]
	add ecx, 0x10
	mov [ebp-0x5194], ecx
	mov [esp+0x4], edx
	mov [esp], ecx
	call ClearBounds
	mov esi, s_world
	mov [ebp-0x5200], esi
	mov eax, [esi+0x154]
	movzx edi, word [eax+0x30]
	test edi, edi
	jle _Z14R_LoadSurfacesP10GfxBspLoad_220
	mov dword [ebp-0x5190], 0x0
	xor esi, esi
_Z14R_LoadSurfacesP10GfxBspLoad_240:
	mov ecx, esi
	mov edx, [ebp-0x5200]
	add ecx, [edx+0x294]
	mov eax, [ecx+0x10]
	test byte [eax+0x4], 0x8
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_230
	movzx eax, word [ebx]
	mov edx, [ebp-0x51f0]
	mov edx, [edx+0x8]
	mov [ebp-0x5230], edx
	lea eax, [eax+eax*8]
	test dword [edx+eax*8+0x44], 0x2001
	jz _Z14R_LoadSurfacesP10GfxBspLoad_230
	mov eax, [ebp-0x5198]
	mov [esp+0xc], eax
	mov edx, [ebp-0x5194]
	mov [esp+0x8], edx
	lea eax, [ecx+0x24]
	mov [esp+0x4], eax
	lea eax, [ecx+0x18]
	mov [esp], eax
	call _Z12ExpandBoundsPKfS0_PfS1_
_Z14R_LoadSurfacesP10GfxBspLoad_230:
	add dword [ebp-0x5190], 0x1
	add esi, 0x30
	add ebx, 0x18
	cmp edi, [ebp-0x5190]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_220
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_240
_Z14R_LoadSurfacesP10GfxBspLoad_220:
	mov eax, [ebp-0x1c]
	mov ecx, [ebp-0x51f0]
	cmp dword [ecx], 0xe
	ja _Z14R_LoadSurfacesP10GfxBspLoad_250
	mov [esp], eax
	call Hunk_FreeTempMemory
_Z14R_LoadSurfacesP10GfxBspLoad_250:
	mov ebx, s_world
	mov [ebp-0x5200], ebx
	mov eax, [ebx+0x30]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov esi, [ebx+0x34]
	mov ecx, r_loadForRenderer
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_260
	mov dword [ebx+0x38], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_820:
	mov ebx, [ebp-0x5200]
	mov edx, [ebx+0x3c]
	mov esi, [ebx+0x40]
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_270
	mov dword [ebx+0x44], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_800:
	add esp, 0x525c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14R_LoadSurfacesP10GfxBspLoad_210:
	mov eax, [ebp-0x5200]
	add eax, 0x164
	mov [esp+0x4], eax
	mov eax, [ebp-0x5200]
	add eax, 0x158
	mov [esp], eax
	call ClearBounds
	mov ecx, [ebp-0x5200]
	mov esi, [ecx+0x18]
	test esi, esi
	jle _Z14R_LoadSurfacesP10GfxBspLoad_280
	xor edi, edi
	xor esi, esi
	mov ebx, s_world
	lea eax, [ebx+0x164]
	mov [ebp-0x51f8], eax
	lea edx, [ebx+0x158]
	mov [ebp-0x51fc], edx
_Z14R_LoadSurfacesP10GfxBspLoad_290:
	mov edx, esi
	add edx, [ebx+0x294]
	mov ecx, [ebp-0x51f8]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x51fc]
	mov [esp+0x8], eax
	lea eax, [edx+0x24]
	mov [esp+0x4], eax
	add edx, 0x18
	mov [esp], edx
	call _Z12ExpandBoundsPKfS0_PfS1_
	add edi, 0x1
	add esi, 0x30
	cmp edi, [ebx+0x18]
	jl _Z14R_LoadSurfacesP10GfxBspLoad_290
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_280
_Z14R_LoadSurfacesP10GfxBspLoad_200:
	mov dword [esp], _cstring_colormap
	call _Z12R_HashStringPKc
	mov edi, eax
	mov edx, [ebp-0x51dc]
	movzx edx, byte [edx+0x3a]
	mov [ebp-0x519c], edx
	test edx, edx
	jle _Z14R_LoadSurfacesP10GfxBspLoad_300
	mov edx, [ebp-0x51dc]
	mov eax, [edx+0x44]
	mov esi, eax
	cmp edi, [eax]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_310
	lea edx, [eax+0xc]
	mov ecx, edx
	xor ebx, ebx
_Z14R_LoadSurfacesP10GfxBspLoad_320:
	add ebx, 0x1
	cmp ebx, [ebp-0x519c]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_300
	mov esi, edx
	mov eax, [ecx]
	add edx, 0xc
	add ecx, 0xc
	cmp edi, eax
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_320
_Z14R_LoadSurfacesP10GfxBspLoad_310:
	cmp byte [esi+0x7], 0xb
	jz _Z14R_LoadSurfacesP10GfxBspLoad_330
	mov eax, [esi+0x8]
	cmp dword [eax], 0x5
	jz _Z14R_LoadSurfacesP10GfxBspLoad_340
_Z14R_LoadSurfacesP10GfxBspLoad_330:
	mov ebx, [ebp-0x51dc]
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi+0x8]
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_colormap_s_for_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [esi+0x8]
_Z14R_LoadSurfacesP10GfxBspLoad_340:
	mov edx, s_world
	mov [ebp-0x5200], edx
	mov [edx+0x28], eax
	movzx eax, byte [esi+0x6]
	mov [edx+0x2c], al
_Z14R_LoadSurfacesP10GfxBspLoad_390:
	mov ebx, [ebp-0x5200]
	mov eax, [ebx+0x20]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x24], eax
	mov dword [ebx+0x20], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z14R_LoadSurfacesP10GfxBspLoad_350
	xor ecx, ecx
	xor ebx, ebx
	mov esi, s_world
	mov [ebp-0x5200], esi
_Z14R_LoadSurfacesP10GfxBspLoad_370:
	mov edx, [ebp-0x5200]
	mov eax, [edx+0x294]
	mov esi, [ebp-0x51dc]
	cmp esi, [eax+ebx+0x10]
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_360
	mov eax, edx
	mov edx, [edx+0x20]
	mov esi, eax
	mov eax, [eax+0x24]
	mov [eax+edx*4], ecx
	add dword [esi+0x20], 0x1
_Z14R_LoadSurfacesP10GfxBspLoad_360:
	add ecx, 0x1
	add ebx, 0x30
	cmp ecx, [ebp-0x20]
	jb _Z14R_LoadSurfacesP10GfxBspLoad_370
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_380
_Z14R_LoadSurfacesP10GfxBspLoad_350:
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_380
_Z14R_LoadSurfacesP10GfxBspLoad_300:
	mov ecx, s_world
	mov [ebp-0x5200], ecx
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_390
_Z14R_LoadSurfacesP10GfxBspLoad_190:
	mov dword [ebp-0x5164], 0x0
	mov dword [ebp-0x51dc], 0x0
	mov dword [ebp-0x5180], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_750:
	mov edx, [ebp-0x5200]
	mov eax, [edx+0x294]
	mov ecx, [ebp-0x5180]
	lea eax, [eax+ecx*2]
	mov [ebp-0x515c], eax
	mov eax, [ebp-0x1c]
	mov eax, [ecx+eax+0x8]
	mov ebx, [ebp-0x515c]
	mov [ebx], eax
	mov eax, [ebp-0x1c]
	mov eax, [ecx+eax+0xc]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x1c]
	movzx eax, word [ecx+eax+0x10]
	mov [ebx+0x8], ax
	mov eax, ecx
	add eax, [ebp-0x1c]
	movzx esi, byte [eax+0x2]
	mov [ebp-0x51e0], esi
	movzx esi, word [eax]
	lea esi, [esi+esi*8]
	mov eax, [rgl+0x28]
	lea esi, [eax+esi*8]
	mov [ebp-0x521c], esi
	mov ebx, 0x9
	cld
	mov edi, _cstring_default
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z14R_LoadSurfacesP10GfxBspLoad_400
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z14R_LoadSurfacesP10GfxBspLoad_400:
	test eax, eax
	mov eax, _cstring_default3d
	cmovnz eax, [ebp-0x521c]
	mov [ebp-0x521c], eax
	mov edx, _cstring_null
	cmp byte [eax], 0x2a
	mov eax, _cstring_wc
	cmovnz edx, eax
	mov ebx, [ebp-0x521c]
	mov [esp+0x10], ebx
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea esi, [ebp-0x158]
	mov [esp], esi
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x4], 0x9
	mov [esp], esi
	call _Z17Material_RegisterPKci
	mov [ebp-0x51d8], eax
	mov edx, [ebp-0x51e0]
	lea eax, [edx+edx*4]
	mov ecx, [ebp-0x51f0]
	lea eax, [ecx+eax*4+0x28]
	mov [ebp-0x51bc], eax
	mov ebx, [ebp-0x515c]
	add ebx, 0x24
	mov [ebp-0x51c8], ebx
	mov esi, [ebp-0x515c]
	add esi, 0x18
	mov [ebp-0x51c4], esi
	mov [esp+0x4], ebx
	mov [esp], esi
	call ClearBounds
	mov edx, [ebp-0x515c]
	movzx eax, word [edx+0xa]
	lea eax, [eax+eax*2]
	mov [ebp-0x51f4], eax
	test eax, eax
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_410
_Z14R_LoadSurfacesP10GfxBspLoad_860:
	mov eax, [ebp-0x51d8]
	test byte [eax+0x4], 0x20
	jz _Z14R_LoadSurfacesP10GfxBspLoad_420
	mov edx, [ebp-0x515c]
	movzx ebx, word [edx+0xa]
	movzx ecx, bx
	mov [ebp-0x51b8], ecx
	test bx, bx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_430
	xor ecx, ecx
	lea edx, [ebp-0x5158]
_Z14R_LoadSurfacesP10GfxBspLoad_440:
	lea eax, [ecx*4]
	mov [ebp+eax-0x1158], ecx
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov dword [ebp+eax-0x2158], 0x0
	add ecx, 0x1
	add edx, 0xc
	cmp [ebp-0x51b8], ecx
	ja _Z14R_LoadSurfacesP10GfxBspLoad_440
_Z14R_LoadSurfacesP10GfxBspLoad_430:
	mov esi, s_world
	mov [ebp-0x5200], esi
	mov eax, [esi+0x14]
	mov [ebp-0x5168], eax
	test bx, bx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_420
	mov ebx, eax
_Z14R_LoadSurfacesP10GfxBspLoad_600:
	mov edx, [ebp-0x515c]
	mov edx, [edx+0x4]
	mov [ebp-0x516c], edx
	mov ecx, [ebp-0x515c]
	mov eax, [ecx+0xc]
	lea eax, [ebx+eax*2]
	mov [ebp-0x5204], eax
	mov [ebp-0x5184], eax
	mov dword [ebp-0x51b0], 0x0
	mov byte [ebp-0x51b1], 0x1
	mov edx, eax
_Z14R_LoadSurfacesP10GfxBspLoad_580:
	mov ecx, 0x1
_Z14R_LoadSurfacesP10GfxBspLoad_450:
	movzx eax, word [edx]
	add eax, [ebp-0x516c]
	mov [ebp+ecx*4-0x50], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_450
	mov esi, [ebp-0x5204]
	mov [ebp-0x5188], esi
	mov dword [ebp-0x51ac], 0x0
	mov eax, [ebp-0x51b0]
	shl eax, 0x2
	mov [ebp-0x520c], eax
	mov edx, esi
_Z14R_LoadSurfacesP10GfxBspLoad_510:
	mov ecx, 0x1
_Z14R_LoadSurfacesP10GfxBspLoad_460:
	movzx eax, word [edx]
	add eax, [ebp-0x516c]
	mov [ebp+ecx*4-0x15c], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_460
	mov esi, 0x1
	lea edx, [ebp-0x1158]
	add edx, [ebp-0x520c]
	mov [ebp-0x5208], edx
	mov ecx, [ebp-0x51ac]
	lea edi, [ebp+ecx*4-0x1158]
_Z14R_LoadSurfacesP10GfxBspLoad_490:
	mov ebx, [ebp+esi*4-0x50]
	mov eax, 0x1
_Z14R_LoadSurfacesP10GfxBspLoad_480:
	cmp ebx, [ebp+eax*4-0x15c]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_470
_Z14R_LoadSurfacesP10GfxBspLoad_550:
	add eax, 0x1
	cmp eax, 0x4
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_480
	add esi, 0x1
	cmp esi, 0x4
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_490
	add dword [ebp-0x51ac], 0x1
	add dword [ebp-0x5188], 0x6
	mov ebx, [ebp-0x51ac]
	cmp [ebp-0x51b8], ebx
	jbe _Z14R_LoadSurfacesP10GfxBspLoad_500
	mov edx, [ebp-0x5188]
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_510
_Z14R_LoadSurfacesP10GfxBspLoad_100:
	mov [ebp-0x517c], edx
	mov edi, [ebp-0x5174]
	mov ecx, [ebp-0x51e4]
	mov [ebp-0x5160], ecx
_Z14R_LoadSurfacesP10GfxBspLoad_530:
	mov esi, [ebp-0x517c]
	mov ebx, [ebp-0x5200]
	add esi, [ebx+0x294]
	mov eax, [esi+0xc]
	test eax, eax
	js _Z14R_LoadSurfacesP10GfxBspLoad_520
_Z14R_LoadSurfacesP10GfxBspLoad_640:
	add dword [ebp-0x5160], 0x1
	add dword [ebp-0x517c], 0x30
	add edi, 0x18
	mov ecx, [ebp-0x5160]
	cmp ecx, [ebp-0x20]
	jb _Z14R_LoadSurfacesP10GfxBspLoad_530
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_540
_Z14R_LoadSurfacesP10GfxBspLoad_470:
	mov edx, [ebp-0x5208]
	mov ecx, [edx]
	mov edx, [edi]
	cmp ecx, edx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_550
	jae _Z14R_LoadSurfacesP10GfxBspLoad_560
	mov [edi], ecx
	mov byte [ebp-0x51b1], 0x0
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_550
_Z14R_LoadSurfacesP10GfxBspLoad_560:
	mov ecx, [ebp-0x5208]
	mov [ecx], edx
	mov byte [ebp-0x51b1], 0x0
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_550
_Z14R_LoadSurfacesP10GfxBspLoad_500:
	add dword [ebp-0x51b0], 0x1
	add dword [ebp-0x5184], 0x6
	mov esi, [ebp-0x51b0]
	cmp [ebp-0x51b8], esi
	jbe _Z14R_LoadSurfacesP10GfxBspLoad_570
	mov edx, [ebp-0x5184]
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_580
_Z14R_LoadSurfacesP10GfxBspLoad_570:
	cmp byte [ebp-0x51b1], 0x0
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_590
	mov ebx, [ebp-0x5168]
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_600
_Z14R_LoadSurfacesP10GfxBspLoad_520:
	mov eax, [ebp-0x1c]
	movzx ecx, word [edi+eax]
	mov edx, [ebp-0x5174]
	cmp cx, [eax+edx]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_610
	mov ebx, [ebp-0x51f0]
	mov edx, [ebx+0x8]
	mov ebx, [ebp-0x5170]
	lea eax, [edx+ebx]
	mov [esp+0x4], eax
	movzx eax, cx
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*8]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_620
	mov eax, [ebp-0x1c]
_Z14R_LoadSurfacesP10GfxBspLoad_610:
	lea edx, [edi+eax]
	mov ebx, [ebp-0x5174]
	lea ecx, [eax+ebx]
	movzx eax, byte [edx+0x3]
	cmp al, [ecx+0x3]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_630
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_640
_Z14R_LoadSurfacesP10GfxBspLoad_590:
	xor edi, edi
	mov dword [ebp-0x518c], 0x0
	movss xmm3, dword [_float_1_00000000]
_Z14R_LoadSurfacesP10GfxBspLoad_660:
	mov ebx, [ebp+edi*4-0x1158]
	lea eax, [ebx+ebx*2]
	lea eax, [ebp+eax*4-0x5158]
	mov [ebp-0x5220], eax
	add eax, 0x4
	mov [ebp-0x51a8], eax
	mov eax, [ebp-0x5220]
	add eax, 0x8
	mov [ebp-0x51a4], eax
	movss xmm1, dword [ebp+ebx*4-0x2158]
	xor esi, esi
_Z14R_LoadSurfacesP10GfxBspLoad_650:
	mov eax, esi
	mov edx, [ebp-0x515c]
	add eax, [edx+0xc]
	add eax, [ebp-0x518c]
	mov [ebp-0x5224], eax
	mov ecx, [ebp-0x5200]
	mov ecx, [ecx+0x14]
	mov [ebp-0x523c], ecx
	movzx eax, word [ecx+eax*2]
	mov ecx, [ebp-0x515c]
	add eax, [ecx+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x51d4]
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x5220]
	movss xmm0, dword [ecx]
	addss xmm0, [edx]
	movss [ecx], xmm0
	mov eax, [ebp-0x51a8]
	movss xmm0, dword [eax]
	addss xmm0, [edx+0x4]
	movss [eax], xmm0
	mov ecx, [ebp-0x51a4]
	movss xmm0, dword [ecx]
	addss xmm0, [edx+0x8]
	movss [ecx], xmm0
	addss xmm1, xmm3
	add esi, 0x1
	cmp esi, 0x3
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_650
	movss [ebp+ebx*4-0x2158], xmm1
	add edi, 0x1
	add dword [ebp-0x518c], 0x3
	cmp [ebp-0x51b8], edi
	ja _Z14R_LoadSurfacesP10GfxBspLoad_660
	xor edx, edx
	pxor xmm2, xmm2
	lea eax, [ebp-0x5158]
_Z14R_LoadSurfacesP10GfxBspLoad_680:
	movss xmm0, dword [ebp+edx*4-0x2158]
	ucomiss xmm0, xmm2
	jbe _Z14R_LoadSurfacesP10GfxBspLoad_670
	movaps xmm1, xmm3
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [eax]
	movss [eax], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
_Z14R_LoadSurfacesP10GfxBspLoad_670:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0x51b8], edx
	ja _Z14R_LoadSurfacesP10GfxBspLoad_680
	xor esi, esi
	xor edi, edi
_Z14R_LoadSurfacesP10GfxBspLoad_700:
	mov eax, [ebp+esi*4-0x1158]
	xor ebx, ebx
	lea eax, [eax+eax*2]
	lea ecx, [ebp+eax*4-0x18]
_Z14R_LoadSurfacesP10GfxBspLoad_690:
	lea eax, [edi+ebx]
	mov edx, [ebp-0x515c]
	add eax, [edx+0xc]
	mov edx, [ebp-0x5200]
	mov edx, [edx+0x14]
	mov [ebp-0x522c], edx
	movzx eax, word [edx+eax*2]
	mov edx, [ebp-0x515c]
	add eax, [edx+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [ebp-0x51d4]
	lea edx, [eax+edx*4]
	mov eax, [ecx-0x5140]
	mov [edx+0x14], eax
	mov eax, [ecx-0x513c]
	mov [edx+0x18], eax
	mov eax, [ecx-0x5138]
	mov [edx+0x1c], eax
	mov dword [edx+0x20], 0x3f800000
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_690
	add esi, 0x1
	add edi, 0x3
	cmp [ebp-0x51b8], esi
	ja _Z14R_LoadSurfacesP10GfxBspLoad_700
_Z14R_LoadSurfacesP10GfxBspLoad_420:
	mov ecx, [ebp-0x51d8]
	mov edx, [ebp-0x515c]
	mov [edx+0x10], ecx
	mov ebx, [ebp-0x51e0]
	lea eax, [ebx+ebx*4]
	mov esi, [ebp-0x51f0]
	movzx eax, byte [esi+eax*4+0x28]
	mov [edx+0x14], al
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x5180]
	movzx eax, byte [edx+eax+0x3]
	mov ecx, [ebp-0x515c]
	mov [ecx+0x15], al
	mov eax, [ebp-0x1c]
	movzx eax, byte [edx+eax+0x4]
	mov [ecx+0x16], al
	mov ebx, [ebp-0x51d8]
	test byte [ebx+0x4], 0x8
	jz _Z14R_LoadSurfacesP10GfxBspLoad_710
	mov ecx, [ebp-0x51dc]
	test ecx, ecx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_720
	cmp [ebp-0x51dc], ebx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_720
	mov esi, [ebp-0x51dc]
	mov eax, [esi]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_map_has_at_least
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadSurfacesP10GfxBspLoad_720:
	mov eax, s_world
	mov [ebp-0x5200], eax
	add dword [eax+0x20], 0x1
	mov edx, [ebp-0x5200]
	mov eax, [edx+0xd8]
	mov ecx, [ebp-0x515c]
	mov [ecx+0x16], al
	mov ebx, [ebp-0x51d8]
	mov [ebp-0x51dc], ebx
_Z14R_LoadSurfacesP10GfxBspLoad_710:
	mov esi, [ebp-0x515c]
	cmp byte [esi+0x14], 0x1f
	jz _Z14R_LoadSurfacesP10GfxBspLoad_730
_Z14R_LoadSurfacesP10GfxBspLoad_920:
	add dword [ebp-0x5164], 0x1
	add dword [ebp-0x5180], 0x18
	mov ecx, [ebp-0x5164]
	cmp ecx, [ebp-0x20]
	jae _Z14R_LoadSurfacesP10GfxBspLoad_740
	mov ebx, s_world
	mov [ebp-0x5200], ebx
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_750
_Z14R_LoadSurfacesP10GfxBspLoad_620:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_640
_Z14R_LoadSurfacesP10GfxBspLoad_630:
	movzx eax, byte [edx+0x2]
	cmp al, [ecx+0x2]
	jz _Z14R_LoadSurfacesP10GfxBspLoad_760
	mov edx, s_world
	mov [ebp-0x5200], edx
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_640
_Z14R_LoadSurfacesP10GfxBspLoad_760:
	movzx edx, word [edx+0x12]
	mov eax, [ebp-0x51d0]
	mov [esi+0xc], eax
	mov ecx, [ebp-0x51f0]
	cmp dword [ecx], 0x13
	jbe _Z14R_LoadSurfacesP10GfxBspLoad_770
	mov eax, [ebp-0x1c]
	cmp byte [edi+eax+0x5], 0x0
	jz _Z14R_LoadSurfacesP10GfxBspLoad_780
_Z14R_LoadSurfacesP10GfxBspLoad_770:
	or byte [esi+0x17], 0x1
_Z14R_LoadSurfacesP10GfxBspLoad_780:
	movzx ebx, dx
	lea eax, [ebx+ebx*4]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	lea eax, [ebx+eax*2]
	shr eax, 0x10
	shr ax, 1
	mov [esi+0xa], ax
	lea eax, [ebx+ebx]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov eax, [edi+eax+0x14]
	mov esi, [ebp-0x51e8]
	lea eax, [esi+eax*2]
	mov [esp+0x4], eax
	mov edx, [ebp-0x51d0]
	mov ecx, [ebp-0x51cc]
	lea eax, [ecx+edx*2]
	mov [esp], eax
	call Com_Memcpy
	add [ebp-0x51d0], ebx
	mov ebx, s_world
	mov [ebp-0x5200], ebx
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_640
_Z14R_LoadSurfacesP10GfxBspLoad_270:
	test edx, edx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_790
	mov ebx, edx
_Z14R_LoadSurfacesP10GfxBspLoad_830:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5200]
	add eax, 0x44
	mov [esp], eax
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x44]
	mov [esp], eax
	call _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_800
_Z14R_LoadSurfacesP10GfxBspLoad_260:
	test edx, edx
	jz _Z14R_LoadSurfacesP10GfxBspLoad_810
	mov ebx, edx
_Z14R_LoadSurfacesP10GfxBspLoad_840:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5200]
	add eax, 0x38
	mov [esp], eax
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x38]
	mov [esp], eax
	call _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	mov eax, s_world
	mov [ebp-0x5200], eax
	mov ecx, r_loadForRenderer
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_820
_Z14R_LoadSurfacesP10GfxBspLoad_790:
	mov dword [ebp-0x34], 0x0
	lea esi, [ebp-0x34]
	mov ebx, 0x4
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_830
_Z14R_LoadSurfacesP10GfxBspLoad_810:
	mov dword [ebp-0x34], 0x0
	lea esi, [ebp-0x34]
	mov ebx, 0x4
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_840
_Z14R_LoadSurfacesP10GfxBspLoad_410:
	mov dword [ebp-0x51c0], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_850:
	mov edx, [ebp-0x51c0]
	mov ecx, [ebp-0x515c]
	add edx, [ecx+0xc]
	mov ebx, s_world
	mov eax, [ebx+0x14]
	movzx ebx, word [eax+edx*2]
	add ebx, [ecx+0x4]
	lea esi, [ebx*4]
	lea edi, [esi+ebx]
	lea edi, [ebx+edi*2]
	mov eax, [ebp-0x51d4]
	lea edi, [eax+edi*4]
	mov edx, [ebp-0x51c8]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x51c4]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z16AddPointToBoundsPKfPfS1_
	shl ebx, 0x6
	add esi, ebx
	add esi, [ebp-0x51ec]
	movss xmm0, dword [esi+0x24]
	mov ebx, [ebp-0x51bc]
	mulss xmm0, [ebx+0xc]
	addss xmm0, [ebx+0x4]
	movss [edi+0x1c], xmm0
	movss xmm0, dword [esi+0x28]
	mulss xmm0, [ebx+0x10]
	addss xmm0, [ebx+0x8]
	movss [edi+0x20], xmm0
	add dword [ebp-0x51c0], 0x1
	mov esi, [ebp-0x51c0]
	cmp [ebp-0x51f4], esi
	ja _Z14R_LoadSurfacesP10GfxBspLoad_850
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_860
_Z14R_LoadSurfacesP10GfxBspLoad_740:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_870
_Z14R_LoadSurfacesP10GfxBspLoad_730:
	mov dword [ebp-0x51a0], 0x0
_Z14R_LoadSurfacesP10GfxBspLoad_910:
	mov edx, [ebp-0x515c]
	mov eax, [edx+0x10]
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov ecx, [ebp-0x51a0]
	mov esi, [eax+ecx*4+0xc]
	test esi, esi
	jz _Z14R_LoadSurfacesP10GfxBspLoad_880
	cmp word [esi+0x6], 0x0
	jz _Z14R_LoadSurfacesP10GfxBspLoad_880
	mov ebx, esi
	xor edi, edi
_Z14R_LoadSurfacesP10GfxBspLoad_900:
	movzx eax, byte [ebx+0x17]
	test al, 0x6
	jz _Z14R_LoadSurfacesP10GfxBspLoad_890
	mov edx, [ebp-0x515c]
	mov eax, [edx+0x10]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_world_surface_us
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z14R_LoadSurfacesP10GfxBspLoad_890:
	add edi, 0x1
	add ebx, 0x14
	movzx eax, word [esi+0x6]
	cmp edi, eax
	jb _Z14R_LoadSurfacesP10GfxBspLoad_900
_Z14R_LoadSurfacesP10GfxBspLoad_880:
	add dword [ebp-0x51a0], 0x1
	cmp dword [ebp-0x51a0], 0x22
	jnz _Z14R_LoadSurfacesP10GfxBspLoad_910
	jmp _Z14R_LoadSurfacesP10GfxBspLoad_920
	nop


;R_ParseSunLight(SunLightParseParams*, char const*)
_Z15R_ParseSunLightP19SunLightParseParamsPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x104c
	mov esi, [ebp+0x8]
_Z15R_ParseSunLightP19SunLightParseParamsPKc_50:
	lea eax, [ebp+0xc]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_10
_Z15R_ParseSunLightP19SunLightParseParamsPKc_30:
	cmp dl, 0x7d
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_10
	cmp dl, 0x7b
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_20
	xor eax, eax
	mov [esi+0x40], eax
	mov [esi+0x54], eax
	mov dword [esi+0x50], 0x3f000000
	mov byte [esi+0x70], 0x0
	lea edx, [esi+0x44]
	mov [esi+0x44], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [esi+0x58]
	mov [esi+0x58], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea edx, [esi+0x64]
	mov [esi+0x64], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_30
_Z15R_ParseSunLightP19SunLightParseParamsPKc_10:
	mov eax, [ebp+0xc]
	add esp, 0x104c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15R_ParseSunLightP19SunLightParseParamsPKc_20:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	lea eax, [ebp+0xc]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_10
	cmp dl, 0x7d
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_10
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	lea edi, [ebp-0x1018]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x4], _cstring_ambient
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_40
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1030]
	cvtsd2ss xmm0, [ebp-0x1030]
	movss [esi+0x40], xmm0
	ucomiss xmm0, [_float_2_00000000]
	jbe _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_ambient_
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	movss xmm0, dword [_float_0_01568628]
	mulss xmm0, [esi+0x40]
	movss [esi+0x40], xmm0
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_40:
	mov dword [esp+0x4], _cstring__color
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_60
	lea edx, [esi+0x44]
	xor eax, eax
	mov [esi+0x44], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [esi+0x4c]
	mov [esp+0x10], eax
	lea eax, [esi+0x48]
_Z15R_ParseSunLightP19SunLightParseParamsPKc_120:
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_60:
	mov dword [esp+0x4], _cstring_diffusefraction
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_70
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1028]
	cvtsd2ss xmm0, [ebp-0x1028]
	movss [esi+0x50], xmm0
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_70:
	mov dword [esp+0x4], _cstring_suncolor
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_80
	mov dword [esp+0x4], _cstring_sundiffusecolor
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z15R_ParseSunLightP19SunLightParseParamsPKc_90
	mov dword [esp+0x4], _cstring_sunlight
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_100
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1020]
	cvtsd2ss xmm0, [ebp-0x1020]
	movss [esi+0x54], xmm0
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_80:
	lea ebx, [esi+0x58]
	xor eax, eax
	mov [esi+0x58], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	lea eax, [esi+0x60]
	mov [esp+0x10], eax
	lea eax, [esi+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	mov [esp+0x4], ebx
	mov [esp], ebx
	call _Z14ColorNormalizePKfPf
	fstp st0
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_90:
	lea ebx, [esi+0x64]
	xor eax, eax
	mov [esi+0x64], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	lea eax, [esi+0x6c]
	mov [esp+0x10], eax
	lea eax, [esi+0x68]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	mov [esp+0x4], ebx
	mov [esp], ebx
	call _Z14ColorNormalizePKfPf
	fstp st0
	mov byte [esi+0x70], 0x1
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
_Z15R_ParseSunLightP19SunLightParseParamsPKc_100:
	mov dword [esp+0x4], _cstring_sundirection
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_110
	lea edx, [esi+0x74]
	xor eax, eax
	mov [esi+0x74], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [esi+0x7c]
	mov [esp+0x10], eax
	lea eax, [esi+0x78]
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_120
_Z15R_ParseSunLightP19SunLightParseParamsPKc_110:
	mov dword [esp+0x4], _cstring_name
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	jmp _Z15R_ParseSunLightP19SunLightParseParamsPKc_50
	nop


;R_GetBspMaterial(unsigned int, GfxSurface*, GfxWorldVertex*)
_Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov esi, [ebp+0x8]
	lea esi, [esi+esi*8]
	mov eax, [rgl+0x28]
	lea esi, [eax+esi*8]
	mov [ebp-0x11c], esi
	mov edi, _cstring_default
	mov ebx, 0x9
	cld
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex_10:
	test eax, eax
	mov eax, _cstring_default3d
	cmovnz eax, [ebp-0x11c]
	mov [ebp-0x11c], eax
	mov edx, _cstring_null
	cmp byte [eax], 0x2a
	mov eax, _cstring_wc
	cmovnz edx, eax
	mov esi, [ebp-0x11c]
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov dword [esp+0x4], 0x9
	mov [esp], ebx
	call _Z17Material_RegisterPKci
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_InitPrimaryLights(GfxLight*)
_Z19R_InitPrimaryLightsP8GfxLight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, rgp
	mov [ebp-0x20], eax
	mov edx, eax
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0xdc]
	test ecx, ecx
	jz _Z19R_InitPrimaryLightsP8GfxLight_10
	mov esi, [ebp+0x8]
	mov dword [ebp-0x1c], 0x0
	xor edi, edi
	mov [ebp-0x24], edx
	jmp _Z19R_InitPrimaryLightsP8GfxLight_20
_Z19R_InitPrimaryLightsP8GfxLight_30:
	mov [esp], eax
	call _Z18R_RegisterLightDefPKc
	mov [esi+0x3c], eax
	mov ecx, [ebp-0x24]
	mov [ebp-0x20], ecx
	mov ebx, ecx
	add dword [ebp-0x1c], 0x1
	mov eax, [ebx+0x20a0]
	add edi, 0x44
	add esi, 0x40
	mov edx, [ebp-0x1c]
	cmp edx, [eax+0xdc]
	jae _Z19R_InitPrimaryLightsP8GfxLight_10
_Z19R_InitPrimaryLightsP8GfxLight_20:
	mov eax, comWorld
	mov edx, edi
	add edx, [eax+0xc]
	movzx eax, byte [edx]
	mov [esi], al
	movzx eax, byte [edx+0x1]
	mov [esi+0x1], al
	lea ebx, [esi+0x4]
	lea ecx, [edx+0x4]
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	lea ebx, [esi+0x10]
	lea ecx, [edx+0x10]
	mov eax, [edx+0x10]
	mov [esi+0x10], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	lea ebx, [esi+0x1c]
	lea ecx, [edx+0x1c]
	mov eax, [edx+0x1c]
	mov [esi+0x1c], eax
	mov eax, [ecx+0x4]
	mov [ebx+0x4], eax
	mov eax, [ecx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0x28]
	mov [esi+0x28], eax
	mov eax, [edx+0x2c]
	mov [esi+0x2c], eax
	mov eax, [edx+0x30]
	mov [esi+0x30], eax
	movzx eax, byte [edx+0x2]
	mov [esi+0x34], eax
	mov eax, [edx+0x40]
	test eax, eax
	jnz _Z19R_InitPrimaryLightsP8GfxLight_30
	mov dword [esi+0x3c], 0x0
	mov ebx, [ebp-0x20]
	add dword [ebp-0x1c], 0x1
	mov eax, [ebx+0x20a0]
	add edi, 0x44
	add esi, 0x40
	mov edx, [ebp-0x1c]
	cmp edx, [eax+0xdc]
	jb _Z19R_InitPrimaryLightsP8GfxLight_20
_Z19R_InitPrimaryLightsP8GfxLight_10:
	mov edx, [eax+0xd8]
	test edx, edx
	jz _Z19R_InitPrimaryLightsP8GfxLight_40
	shl edx, 0x6
	mov eax, [eax+0xc8]
	mov ecx, [eax]
	mov ebx, [ebp+0x8]
	mov [edx+ebx], ecx
	mov ecx, [eax+0x4]
	mov [edx+ebx+0x4], ecx
	mov ecx, [eax+0x8]
	mov [edx+ebx+0x8], ecx
	mov ecx, [eax+0xc]
	mov [edx+ebx+0xc], ecx
	mov ecx, [eax+0x10]
	mov [edx+ebx+0x10], ecx
	mov ecx, [eax+0x14]
	mov [edx+ebx+0x14], ecx
	mov ecx, [eax+0x18]
	mov [edx+ebx+0x18], ecx
	mov ecx, [eax+0x1c]
	mov [edx+ebx+0x1c], ecx
	mov ecx, [eax+0x20]
	mov [edx+ebx+0x20], ecx
	mov ecx, [eax+0x24]
	mov [edx+ebx+0x24], ecx
	mov ecx, [eax+0x28]
	mov [edx+ebx+0x28], ecx
	mov ecx, [eax+0x2c]
	mov [edx+ebx+0x2c], ecx
	mov ecx, [eax+0x30]
	mov [edx+ebx+0x30], ecx
	mov ecx, [eax+0x34]
	mov [edx+ebx+0x34], ecx
	mov ecx, [eax+0x38]
	mov [edx+ebx+0x38], ecx
	mov eax, [eax+0x3c]
	mov [edx+ebx+0x3c], eax
_Z19R_InitPrimaryLightsP8GfxLight_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadWorldInternal(char const*)
_Z19R_LoadWorldInternalPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2014c
	mov dword [esp+0x8], 0x2dc
	mov dword [esp+0x4], 0x0
	mov eax, s_world
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x2c8
	mov dword [esp+0x4], 0x0
	mov dword [esp], rgl
	call memset
	call _Z17Com_GetBspVersionv
	cmp eax, 0x12
	ja _Z19R_LoadWorldInternalPKc_10
_Z19R_LoadWorldInternalPKc_300:
	xor eax, eax
_Z19R_LoadWorldInternalPKc_310:
	mov [rgl+0x24], eax
	call _Z17Com_GetBspVersionv
	mov [rgl+0x20], eax
	mov esi, 0xffffffff
	cld
	mov ecx, esi
	mov edi, [ebp+0x8]
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocInternali
	mov ebx, s_world
	mov [ebx], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov eax, [ebx]
	mov [esp], eax
	call _Z24Com_GetFilenameSubStringPKc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ecx, [ebp-0x68]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	lea edi, [ebp-0x68]
	mov [esp+0x4], edi
	mov [esp], edi
	call _Z18Com_StripExtensionPKcPc
	cld
	mov ecx, esi
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call _Z18Hunk_AllocInternali
	mov [ebx+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	call _Z12CM_GetPlanesv
	mov [ebx+0xf4], eax
	call _Z16CM_GetPlaneCountv
	mov [ebx+0x8], eax
	xor esi, esi
_Z19R_LoadWorldInternalPKc_20:
	mov [esp], esi
	call _Z21DynEnt_GetEntityCount17DynEntityCollType
	movzx eax, ax
	mov [ebx+0x2b4], eax
	add eax, 0x1f
	shr eax, 0x5
	mov [ebx+0x2ac], eax
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x2
	jnz _Z19R_LoadWorldInternalPKc_20
	mov dword [esp+0x8], _cstring_materials
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov dword [esp+0x8], rgl+0x2c
	mov dword [esp+0x4], 0x48
	mov dword [esp], 0x0
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [rgl+0x28], eax
	mov dword [esp+0x8], _cstring_sun_settings
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x27
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [esp+0x4], eax
	mov esi, s_world
	lea eax, [esi+0x48]
	mov [esp], eax
	call _Z15R_ParseSunLightP19SunLightParseParamsPKc
	mov dword [esp], 0x40
	call _Z18Hunk_AllocInternali
	mov ebx, eax
	mov [esi+0xc8], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edi, [ebp-0x28]
	mov [esp+0x4], edi
	lea eax, [esi+0xbc]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [esi+0x9c]
	subss xmm1, [esi+0x88]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [esi+0x98]
	mulss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [esi+0xa0]
	movaps xmm2, xmm1
	mulss xmm2, [esi+0xa4]
	mulss xmm1, [esi+0xa8]
	test ebx, ebx
	jz _Z19R_LoadWorldInternalPKc_30
	cld
	mov ecx, 0x10
	xor eax, eax
	mov edi, ebx
	rep stosd
	mov byte [ebx], 0x1
	lea edx, [ebx+0x10]
	mov eax, [ebp-0x28]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x24]
	mov [edx+0x4], eax
	mov eax, [ebp-0x20]
	mov [edx+0x8], eax
	lea eax, [ebx+0x4]
	movss [ebx+0x4], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm1
_Z19R_LoadWorldInternalPKc_30:
	mov dword [esp+0x8], _cstring_primary_lights
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	cmp dword [rgl+0x20], 0xe
	ja _Z19R_LoadWorldInternalPKc_40
	mov dword [esi+0xd8], 0x1
	mov dword [esi+0xdc], 0x2
_Z19R_LoadWorldInternalPKc_550:
	mov dword [esp+0x8], _cstring_light_regions
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	call _Z18R_LoadLightRegionsv
	mov dword [esp+0x8], _cstring_lightmaps
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, rgl+0x20
	call _Z15R_LoadLightmapsP10GfxBspLoad
	cmp dword [rgl+0x20], 0xf
	ja _Z19R_LoadWorldInternalPKc_50
	mov dword [esp+0x8], _cstring_lightgrid_colors
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	call _Z21R_LoadLightGridColorsj
	mov dword [esp+0x8], _cstring_lightgrid_points
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	mov [esp], eax
	call _Z31R_LoadLightGridPoints_Version15j
_Z19R_LoadWorldInternalPKc_530:
	mov ebx, s_world
	mov eax, [ebx+0xdc]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x23c], eax
	mov dword [esp+0x8], _cstring_submodels
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov edi, [rgl+0x24]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov dword [esp], 0x25
	call _Z14Com_GetBspLump8LumpTypejPj
	mov [ebp-0x20104], eax
	mov eax, [ebp-0x1c]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov esi, eax
	mov [ebx+0x154], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x150], eax
	test eax, eax
	jz _Z19R_LoadWorldInternalPKc_60
	mov edx, [ebp-0x20104]
	lea edi, [edx+edi*2+0x18]
	mov dword [ebp-0x20100], 0x0
_Z19R_LoadWorldInternalPKc_90:
	mov ecx, [ebp-0x20104]
	mov edx, esi
	mov ebx, 0x3
_Z19R_LoadWorldInternalPKc_70:
	mov eax, [ecx]
	mov [edx+0x18], eax
	mov eax, [ecx+0xc]
	mov [edx+0x24], eax
	add ecx, 0x4
	add edx, 0x4
	sub ebx, 0x1
	jnz _Z19R_LoadWorldInternalPKc_70
	movzx eax, word [edi+0x4]
	mov [esi+0x30], ax
	test ax, ax
	jnz _Z19R_LoadWorldInternalPKc_80
	mov eax, 0xffffffff
_Z19R_LoadWorldInternalPKc_460:
	mov [esi+0x32], ax
	add dword [ebp-0x20100], 0x1
	add dword [ebp-0x20104], 0x30
	add esi, 0x38
	add edi, 0x30
	mov ecx, [ebp-0x20100]
	cmp [ebp-0x1c], ecx
	ja _Z19R_LoadWorldInternalPKc_90
_Z19R_LoadWorldInternalPKc_60:
	mov dword [esp+0x8], _cstring_surfaces
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, rgl+0x20
	call _Z14R_LoadSurfacesP10GfxBspLoad
	mov dword [esp+0x8], _cstring_cull_groups
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	cmp dword [rgl+0x24], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x32
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [ebp-0x1c]
	shl eax, 0x5
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov ecx, eax
	mov edx, s_world
	mov [edx+0x298], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xe0], eax
	test eax, eax
	jz _Z19R_LoadWorldInternalPKc_100
	mov esi, ecx
	mov dword [ebp-0x200fc], 0x0
_Z19R_LoadWorldInternalPKc_130:
	mov edx, ebx
	mov ecx, esi
	lea edi, [ebx+0xc]
_Z19R_LoadWorldInternalPKc_110:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	add edx, 0x4
	add ecx, 0x4
	cmp edi, edx
	jnz _Z19R_LoadWorldInternalPKc_110
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz _Z19R_LoadWorldInternalPKc_120
	mov edx, 0xffffffff
_Z19R_LoadWorldInternalPKc_450:
	mov [esi+0x1c], edx
	mov [esi+0x18], eax
	add dword [ebp-0x200fc], 0x1
	add esi, 0x20
	add ebx, 0x20
	mov eax, [ebp-0x200fc]
	cmp [ebp-0x1c], eax
	ja _Z19R_LoadWorldInternalPKc_130
_Z19R_LoadWorldInternalPKc_100:
	mov dword [esp+0x8], _cstring_cull_group_indic
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xd
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [ebp-0x1c]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [rgl], eax
	mov edx, [ebp-0x1c]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_Memcpy
	mov dword [esp+0x8], _cstring_portal_vertices
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xc
	mov dword [esp], 0x13
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [rgl+0x4], eax
	mov edx, [ebp-0x1c]
	lea edx, [edx+edx*2]
	shl edx, 0x2
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call Com_Memcpy
	mov dword [esp+0x8], _cstring_aabb_trees
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x24]
	call _Z15R_LoadAabbTrees8TrisType
	mov dword [esp+0x8], _cstring_cells
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov edx, [rgl+0x24]
	mov eax, [rgl+0x20]
	call _Z11R_LoadCellsj8TrisType
	mov dword [esp+0x8], _cstring_portals
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	call _Z13R_LoadPortalsv
	mov dword [esp+0x8], _cstring_nodes_and_leafs
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	call _Z19R_LoadNodesAndLeafsj
	call _Z13Material_Sortv
	call _Z14R_SortSurfacesv
	mov edi, s_world
	mov [ebp-0x2010c], edi
	mov eax, [edi+0x150]
	test eax, eax
	jle _Z19R_LoadWorldInternalPKc_140
	mov dword [ebp-0x200f8], 0x0
	mov dword [ebp-0x200bc], 0x0
_Z19R_LoadWorldInternalPKc_370:
	mov edx, [ebp-0x200bc]
	mov eax, [ebp-0x2010c]
	add edx, [eax+0x154]
	mov [ebp-0x200f0], edx
	movzx ecx, word [edx+0x32]
	mov [ebp-0x200dc], ecx
	movzx eax, word [edx+0x30]
	add eax, ecx
	mov [ebp-0x200e4], eax
	mov word [edx+0x34], 0x0
	cmp word [edx+0x30], 0x0
	jz _Z19R_LoadWorldInternalPKc_150
	mov dword [ebp-0x200f4], 0x0
	lea edi, [ecx+ecx*2]
	shl edi, 0x4
	mov [ebp-0x20120], edi
	mov edx, [ebp-0x200f0]
	jmp _Z19R_LoadWorldInternalPKc_160
_Z19R_LoadWorldInternalPKc_170:
	mov eax, [ebp-0x20108]
	add eax, [ecx+0x294]
	or byte [eax+0x17], 0x2
	add dword [ebp-0x200f4], 0x1
	mov edx, [ebp-0x200f0]
	movzx eax, word [edx+0x30]
	cmp [ebp-0x200f4], eax
	jae _Z19R_LoadWorldInternalPKc_150
_Z19R_LoadWorldInternalPKc_160:
	movzx eax, word [edx+0x32]
	add eax, [ebp-0x200f4]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov [ebp-0x20108], eax
	mov ecx, [ebp-0x2010c]
	add eax, [ecx+0x294]
	mov [ebp-0x200e8], eax
	mov edx, [eax+0x10]
	movzx eax, byte [edx+0xb]
	shr al, 0x5
	movzx eax, al
	movzx edx, byte [edx+0xc]
	shl edx, 0x3
	or edx, eax
	mov edi, [ebp-0x200e8]
	cmp word [edi+0xa], 0x0
	jz _Z19R_LoadWorldInternalPKc_170
	mov dword [ebp-0x200ec], 0x0
	mov [ebp-0x20118], edx
	mov dword [ebp-0x20114], 0x0
	mov eax, [ebp-0x200e8]
_Z19R_LoadWorldInternalPKc_750:
	mov ebx, [eax+0x4]
	mov edx, [ebp-0x2010c]
	mov edi, [edx+0x34]
	mov esi, [edx+0x14]
	mov ecx, [eax+0xc]
	add ecx, ecx
	movzx eax, word [esi+ecx]
	lea eax, [ebx+eax]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [edi+edx*4]
	mov [ebp-0x200c8], edx
	add esi, ecx
	movzx eax, word [esi+0x2]
	lea eax, [ebx+eax]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea edx, [edi+edx*4]
	mov [ebp-0x200cc], edx
	movzx eax, word [esi+0x4]
	add ebx, eax
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*2]
	lea eax, [edi+eax*4]
	mov [ebp-0x200d0], eax
	lea ecx, [ebp-0x200ac]
	mov [esp+0x4], ecx
	lea edi, [ebp-0x28]
	mov [esp], edi
	call ClearBounds
	lea eax, [ebp-0x200ac]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov ecx, [ebp-0x200c8]
	mov [esp], ecx
	call _Z16AddPointToBoundsPKfPfS1_
	lea edi, [ebp-0x200ac]
	mov [esp+0x8], edi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x200cc]
	mov [esp], edx
	call _Z16AddPointToBoundsPKfPfS1_
	mov [esp+0x8], edi
	lea edi, [ebp-0x28]
	mov [esp+0x4], edi
	mov eax, [ebp-0x200d0]
	mov [esp], eax
	call _Z16AddPointToBoundsPKfPfS1_
	mov edx, [ebp-0x200e4]
	cmp [ebp-0x200dc], edx
	jz _Z19R_LoadWorldInternalPKc_180
	mov ecx, [ebp-0x20120]
	mov [ebp-0x200c0], ecx
	mov dword [ebp-0x200c4], 0x0
	mov edi, s_world
	mov [ebp-0x2010c], edi
	mov [ebp-0x2011c], edi
	mov ebx, ecx
	mov eax, edi
_Z19R_LoadWorldInternalPKc_290:
	add ebx, [eax+0x294]
	mov eax, [ebx+0x10]
	movzx edx, byte [eax+0xb]
	shr dl, 0x5
	movzx edx, dl
	movzx eax, byte [eax+0xc]
	shl eax, 0x3
	or eax, edx
	xor edx, edx
	cmp edx, [ebp-0x20114]
	jb _Z19R_LoadWorldInternalPKc_190
	cmp eax, [ebp-0x20118]
	jae _Z19R_LoadWorldInternalPKc_200
_Z19R_LoadWorldInternalPKc_190:
	lea edx, [ebp-0x200ac]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	lea eax, [ebx+0x24]
	mov [esp+0x4], eax
	lea eax, [ebx+0x18]
	mov [esp], eax
	call _Z13BoundsOverlapPKfS0_S0_S0_
	test eax, eax
	jz _Z19R_LoadWorldInternalPKc_210
	mov edi, [ebx+0x4]
	mov [ebp-0x200d4], edi
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	mov [ebp-0x200e0], edx
	test ax, ax
	jz _Z19R_LoadWorldInternalPKc_220
	mov ecx, [ebp-0x2010c]
	mov edi, [ecx+0x34]
	mov eax, [ebp-0x200c8]
	movss xmm3, dword [eax]
	mov eax, [ebx+0xc]
	lea esi, [eax+eax]
	add esi, [ecx+0x14]
	mov dword [ebp-0x200d8], 0x0
_Z19R_LoadWorldInternalPKc_270:
	movzx eax, word [esi]
	add eax, [ebp-0x200d4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea ebx, [edi+edx*4]
	movzx eax, word [esi+0x2]
	add eax, [ebp-0x200d4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea ecx, [edi+edx*4]
	movzx eax, word [esi+0x4]
	add eax, [ebp-0x200d4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea eax, [edi+edx*4]
	movss xmm1, dword [ebx]
	ucomiss xmm3, xmm1
	jnz _Z19R_LoadWorldInternalPKc_230
	jp _Z19R_LoadWorldInternalPKc_230
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_230
	jp _Z19R_LoadWorldInternalPKc_230
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_230
	jp _Z19R_LoadWorldInternalPKc_230
	mov edx, [ebp-0x200cc]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ecx]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	mov ecx, [ebp-0x200d0]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [eax]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [eax+0x8]
	jz _Z19R_LoadWorldInternalPKc_250
_Z19R_LoadWorldInternalPKc_240:
	xor eax, eax
	test al, al
	jnz _Z19R_LoadWorldInternalPKc_260
_Z19R_LoadWorldInternalPKc_340:
	add dword [ebp-0x200d8], 0x1
	add esi, 0x6
	mov ecx, [ebp-0x200d8]
	cmp [ebp-0x200e0], ecx
	ja _Z19R_LoadWorldInternalPKc_270
	mov edi, [ebp-0x2011c]
	mov [ebp-0x2010c], edi
_Z19R_LoadWorldInternalPKc_200:
	add dword [ebp-0x200c4], 0x1
	add dword [ebp-0x200c0], 0x30
	mov eax, [ebp-0x200e4]
	sub eax, [ebp-0x200dc]
	cmp eax, [ebp-0x200c4]
	jz _Z19R_LoadWorldInternalPKc_280
_Z19R_LoadWorldInternalPKc_360:
	mov ebx, [ebp-0x200c0]
	mov eax, [ebp-0x2010c]
	jmp _Z19R_LoadWorldInternalPKc_290
_Z19R_LoadWorldInternalPKc_10:
	mov dword [esp], 0x2f
	call _Z14Com_BspHasLump8LumpType
	test al, al
	jz _Z19R_LoadWorldInternalPKc_300
	mov eax, r_useLayeredMaterials
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19R_LoadWorldInternalPKc_300
	mov eax, 0x1
	jmp _Z19R_LoadWorldInternalPKc_310
_Z19R_LoadWorldInternalPKc_230:
	movss xmm2, dword [ecx]
	ucomiss xmm3, xmm2
	jp _Z19R_LoadWorldInternalPKc_320
	jz _Z19R_LoadWorldInternalPKc_330
_Z19R_LoadWorldInternalPKc_320:
	ucomiss xmm3, [eax]
	jnz _Z19R_LoadWorldInternalPKc_340
	jp _Z19R_LoadWorldInternalPKc_340
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z19R_LoadWorldInternalPKc_340
	jp _Z19R_LoadWorldInternalPKc_340
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz _Z19R_LoadWorldInternalPKc_340
	jp _Z19R_LoadWorldInternalPKc_340
	mov eax, [ebp-0x200cc]
	ucomiss xmm1, [eax]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	mov edx, [ebp-0x200d0]
	ucomiss xmm2, [edx]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_240
_Z19R_LoadWorldInternalPKc_250:
	jp _Z19R_LoadWorldInternalPKc_240
	mov eax, 0x1
	test al, al
	jz _Z19R_LoadWorldInternalPKc_340
_Z19R_LoadWorldInternalPKc_260:
	mov edi, s_world
	mov [ebp-0x2010c], edi
	add dword [ebp-0x200ec], 0x1
	mov edx, [ebp-0x200e8]
	movzx eax, word [edx+0xa]
	cmp [ebp-0x200ec], eax
	jb _Z19R_LoadWorldInternalPKc_350
	mov ecx, edi
	jmp _Z19R_LoadWorldInternalPKc_170
_Z19R_LoadWorldInternalPKc_330:
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_320
	jp _Z19R_LoadWorldInternalPKc_320
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_320
	jp _Z19R_LoadWorldInternalPKc_320
	mov ecx, [ebp-0x200cc]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [eax]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	mov eax, [ebp-0x200d0]
	ucomiss xmm1, [eax]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz _Z19R_LoadWorldInternalPKc_240
	jp _Z19R_LoadWorldInternalPKc_240
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz _Z19R_LoadWorldInternalPKc_240
	jmp _Z19R_LoadWorldInternalPKc_250
_Z19R_LoadWorldInternalPKc_210:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	add dword [ebp-0x200c4], 0x1
	add dword [ebp-0x200c0], 0x30
	mov eax, [ebp-0x200e4]
	sub eax, [ebp-0x200dc]
	cmp eax, [ebp-0x200c4]
	jnz _Z19R_LoadWorldInternalPKc_360
_Z19R_LoadWorldInternalPKc_280:
	mov edi, [ebp-0x200f0]
	add word [edi+0x34], 0x1
_Z19R_LoadWorldInternalPKc_470:
	add dword [ebp-0x200f4], 0x1
	mov edx, [ebp-0x200f0]
	movzx eax, word [edx+0x30]
	cmp [ebp-0x200f4], eax
	jb _Z19R_LoadWorldInternalPKc_160
_Z19R_LoadWorldInternalPKc_150:
	add dword [ebp-0x200f8], 0x1
	add dword [ebp-0x200bc], 0x38
	mov edi, [ebp-0x200f8]
	mov ecx, [ebp-0x2010c]
	cmp edi, [ecx+0x150]
	jl _Z19R_LoadWorldInternalPKc_370
_Z19R_LoadWorldInternalPKc_140:
	mov edx, [ebp-0x2010c]
	mov eax, [edx+0x154]
	movzx edx, word [eax+0x30]
	mov ecx, [ebp-0x2010c]
	mov eax, [ecx+0xf0]
	test eax, eax
	jg _Z19R_LoadWorldInternalPKc_380
_Z19R_LoadWorldInternalPKc_610:
	mov dword [esp+0x8], _cstring_entities
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	call _Z14R_LoadEntitiesj
	mov dword [esp+0x8], _cstring_reflection_probe
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	cmp eax, 0x7
	ja _Z19R_LoadWorldInternalPKc_390
	mov ebx, s_world
	mov dword [ebx+0xe4], 0x1
	mov dword [esp], 0x10
	call _Z18Hunk_AllocInternali
	mov [ebx+0xe8], eax
	mov dword [esp], 0x4
	call _Z18Hunk_AllocInternali
	mov [ebx+0xec], eax
	xor eax, eax
	mov [ebp-0x200ac], eax
	mov [ebp-0x200a8], eax
	mov [ebp-0x200a4], eax
	lea eax, [ebp-0x200a0]
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	xor eax, eax
_Z19R_LoadWorldInternalPKc_400:
	mov dword [ebp+eax-0x20060], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz _Z19R_LoadWorldInternalPKc_400
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	lea eax, [ebp-0x200ac]
	mov [esp+0x4], eax
	mov eax, s_world
	mov eax, [eax+0xe8]
	mov [esp], eax
	call _Z26R_GenerateReflectionImagesP18GfxReflectionProbePK22DiskGfxReflectionProbeii
	mov dword [rgl+0x18], 0x1
_Z19R_LoadWorldInternalPKc_580:
	cmp dword [rgl+0x20], 0x15
	ja _Z19R_LoadWorldInternalPKc_410
	mov eax, s_world
	mov [ebp-0x2010c], eax
	cmp dword [eax+0xe4], 0x1
	jz _Z19R_LoadWorldInternalPKc_420
	mov eax, [eax+0xf0]
	test eax, eax
	jg _Z19R_LoadWorldInternalPKc_430
_Z19R_LoadWorldInternalPKc_650:
	mov edi, [ebp-0x2010c]
	mov eax, [edi+0x244]
	test eax, eax
	jnz _Z19R_LoadWorldInternalPKc_440
_Z19R_LoadWorldInternalPKc_640:
	mov dword [rgl+0x1c], 0x1
	call _Z18R_PostLoadEntitiesv
	call _Z26R_InitShadowGeometryArraysv
	mov ebx, s_world
	lea eax, [ebx+0x17c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z9R_LoadSunPKcP10sunflare_t
	mov dword [esp+0x8], rgl+0x3c
	mov dword [esp+0x4], rgl+0x30
	mov [esp], ebx
	call _Z22R_RegisterOutdoorImageP8GfxWorldPKfS2_
	call _Z18R_LoadWorldRuntimev
	mov [esp], ebx
	call _Z28R_AssignSModelCacheResourcesP8GfxWorld
	mov dword [esp+0x8], 0x2c8
	mov dword [esp+0x4], 0x0
	mov dword [esp], rgl
	call memset
	mov eax, ebx
	add esp, 0x2014c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_LoadWorldInternalPKc_220:
	mov edx, s_world
	mov [ebp-0x2010c], edx
	jmp _Z19R_LoadWorldInternalPKc_200
_Z19R_LoadWorldInternalPKc_120:
	mov edx, [ebx+0x18]
	jmp _Z19R_LoadWorldInternalPKc_450
_Z19R_LoadWorldInternalPKc_80:
	movzx eax, word [edi]
	jmp _Z19R_LoadWorldInternalPKc_460
_Z19R_LoadWorldInternalPKc_180:
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
	mov edi, [ebp-0x200f0]
	add word [edi+0x34], 0x1
	jmp _Z19R_LoadWorldInternalPKc_470
_Z19R_LoadWorldInternalPKc_50:
	mov dword [esp+0x8], _cstring_lightgrid_colors
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov eax, [rgl+0x20]
	call _Z21R_LoadLightGridColorsj
	mov dword [esp+0x8], _cstring_lightgrid_row_da
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov ebx, s_world
	lea eax, [ebx+0x130]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2d
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	mov eax, [ebx+0x130]
	test eax, eax
	jnz _Z19R_LoadWorldInternalPKc_480
	mov dword [ebx+0x134], 0x0
_Z19R_LoadWorldInternalPKc_680:
	mov dword [esp+0x8], _cstring_lightgrid_entrie
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	mov esi, s_world
	lea eax, [esi+0x138]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x2
	call _Z14Com_GetBspLump8LumpTypejPj
	mov ebx, eax
	mov eax, [esi+0x138]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov edx, eax
	mov [esi+0x13c], eax
	mov ecx, [esi+0x138]
	test ecx, ecx
	jz _Z19R_LoadWorldInternalPKc_490
	xor ecx, ecx
_Z19R_LoadWorldInternalPKc_500:
	movzx eax, word [ebx]
	mov [edx], ax
	movzx eax, byte [ebx+0x2]
	mov [edx+0x2], al
	movzx eax, byte [ebx+0x3]
	mov [edx+0x3], al
	add ecx, 0x1
	add ebx, 0x4
	add edx, 0x4
	cmp [esi+0x138], ecx
	ja _Z19R_LoadWorldInternalPKc_500
_Z19R_LoadWorldInternalPKc_490:
	mov dword [esp+0x8], _cstring_lightgrid_header
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	call _Z20SCR_UpdateLoadScreenv
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2c
	call _Z14Com_GetBspLump8LumpTypejPj
	mov esi, eax
	cmp dword [ebp-0x1c], 0x13
	jbe _Z19R_LoadWorldInternalPKc_510
_Z19R_LoadWorldInternalPKc_670:
	mov edx, [esi+0xc]
	movzx eax, word [esi+edx*2+0x6]
	movzx edx, word [esi+edx*2]
	sub eax, edx
	lea edi, [eax+eax+0x2]
	lea eax, [edi+0x14]
	cmp eax, [ebp-0x1c]
	jz _Z19R_LoadWorldInternalPKc_520
	mov dword [esp+0x4], _cstring_light_grid_heade
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z19R_LoadWorldInternalPKc_520:
	mov ebx, s_world
	mov eax, [ebx+0xd8]
	mov [ebx+0x114], eax
	movzx eax, word [esi]
	mov [ebx+0x118], ax
	movzx eax, word [esi+0x2]
	mov [ebx+0x11a], ax
	movzx eax, word [esi+0x4]
	mov [ebx+0x11c], ax
	movzx eax, word [esi+0x6]
	mov [ebx+0x11e], ax
	movzx eax, word [esi+0x8]
	mov [ebx+0x120], ax
	movzx eax, word [esi+0xa]
	mov [ebx+0x122], ax
	mov eax, [esi+0xc]
	mov [ebx+0x124], eax
	mov eax, [esi+0x10]
	mov [ebx+0x128], eax
	mov [esp], edi
	call _Z18Hunk_AllocInternali
	mov [ebx+0x12c], eax
	mov [esp+0x8], edi
	lea edx, [esi+0x14]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov eax, [ebx+0x138]
	test eax, eax
	jnz _Z19R_LoadWorldInternalPKc_530
	mov word [ebx+0x118], 0x0
	mov word [ebx+0x11a], 0x0
	mov word [ebx+0x11c], 0x0
	mov word [ebx+0x11e], 0x0
	mov word [ebx+0x120], 0x0
	mov word [ebx+0x122], 0x0
	mov dword [ebx+0x124], 0x0
	mov dword [ebx+0x128], 0x1
	mov dword [esp], 0x2
	call _Z18Hunk_AllocInternali
	mov [ebx+0x12c], eax
	mov word [eax], 0xffff
	jmp _Z19R_LoadWorldInternalPKc_530
_Z19R_LoadWorldInternalPKc_40:
	mov edx, comWorld
	mov eax, [edx+0x8]
	mov [esi+0xdc], eax
	cmp eax, 0x1
	jbe _Z19R_LoadWorldInternalPKc_540
	mov eax, [edx+0xc]
	cmp byte [eax+0x44], 0x1
	setz al
	movzx eax, al
	mov [esi+0xd8], eax
_Z19R_LoadWorldInternalPKc_660:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	mov ebx, [eax+0xdc]
	test ebx, ebx
	jz _Z19R_LoadWorldInternalPKc_550
	xor esi, esi
	xor ebx, ebx
_Z19R_LoadWorldInternalPKc_570:
	mov eax, [edx+0xc]
	mov eax, [eax+ebx+0x40]
	test eax, eax
	jz _Z19R_LoadWorldInternalPKc_560
	mov [esp], eax
	call _Z18R_RegisterLightDefPKc
	mov edx, s_world
	mov [ebp-0x2010c], edx
_Z19R_LoadWorldInternalPKc_560:
	add esi, 0x1
	add ebx, 0x44
	mov ecx, [ebp-0x2010c]
	cmp esi, [ecx+0xdc]
	jae _Z19R_LoadWorldInternalPKc_550
	mov edx, comWorld
	jmp _Z19R_LoadWorldInternalPKc_570
_Z19R_LoadWorldInternalPKc_390:
	call _Z22R_LoadReflectionProbesj
	jmp _Z19R_LoadWorldInternalPKc_580
_Z19R_LoadWorldInternalPKc_380:
	xor esi, esi
	xor ebx, ebx
	jmp _Z19R_LoadWorldInternalPKc_590
_Z19R_LoadWorldInternalPKc_600:
	mov edi, s_world
	mov [ebp-0x2010c], edi
_Z19R_LoadWorldInternalPKc_590:
	mov ecx, [ebp-0x2010c]
	mov eax, [ecx+0x104]
	mov eax, [eax+ebx+0x1c]
	call _Z24R_BuildNoDecalAabbTree_rP11GfxAabbTreej
	mov edx, eax
	add esi, 0x1
	add ebx, 0x38
	mov edi, [ebp-0x2010c]
	cmp esi, [edi+0xf0]
	jl _Z19R_LoadWorldInternalPKc_600
	jmp _Z19R_LoadWorldInternalPKc_610
_Z19R_LoadWorldInternalPKc_440:
	xor edi, edi
	xor esi, esi
	xor ebx, ebx
	jmp _Z19R_LoadWorldInternalPKc_620
_Z19R_LoadWorldInternalPKc_630:
	mov eax, s_world
	mov [ebp-0x2010c], eax
_Z19R_LoadWorldInternalPKc_620:
	mov eax, esi
	mov edx, [ebp-0x2010c]
	add eax, [edx+0x29c]
	mov [esp+0x8], eax
	mov eax, ebx
	add eax, [edx+0x290]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z31R_SetStaticModelReflectionProbePK8GfxWorldPK18GfxStaticModelInstP22GfxStaticModelDrawInst
	add edi, 0x1
	add esi, 0x4c
	add ebx, 0x1c
	mov ecx, [ebp-0x2010c]
	cmp edi, [ecx+0x244]
	jb _Z19R_LoadWorldInternalPKc_630
	jmp _Z19R_LoadWorldInternalPKc_640
_Z19R_LoadWorldInternalPKc_410:
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
	jmp _Z19R_LoadWorldInternalPKc_650
_Z19R_LoadWorldInternalPKc_540:
	mov dword [esi+0xd8], 0x0
	jmp _Z19R_LoadWorldInternalPKc_660
_Z19R_LoadWorldInternalPKc_510:
	mov dword [esp+0x4], _cstring_light_grid_heade1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19R_LoadWorldInternalPKc_670
_Z19R_LoadWorldInternalPKc_480:
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x134], eax
	mov edx, [ebx+0x130]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	jmp _Z19R_LoadWorldInternalPKc_680
_Z19R_LoadWorldInternalPKc_430:
	xor esi, esi
	xor edi, edi
_Z19R_LoadWorldInternalPKc_710:
	mov ebx, edi
	mov ecx, [ebp-0x2010c]
	add ebx, [ecx+0x104]
	movzx eax, byte [ecx+0xe4]
	sub al, 0x1
	mov [ebx+0x30], al
	movzx eax, al
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [ebx+0x34], eax
	mov eax, [ebp-0x2010c]
	cmp dword [eax+0xe4], 0x1
	jz _Z19R_LoadWorldInternalPKc_690
	xor edx, edx
	mov dword [ebp-0x2013c], 0x0
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
_Z19R_LoadWorldInternalPKc_700:
	add dl, 0x1
	mov eax, [ebx+0x34]
	mov ecx, [ebp-0x2013c]
	mov [eax+ecx], dl
	movzx eax, dl
	mov [ebp-0x2013c], eax
	mov ecx, [ebp-0x2010c]
	mov eax, [ecx+0xe4]
	sub eax, 0x1
	mov ecx, [ebp-0x2013c]
	cmp eax, ecx
	ja _Z19R_LoadWorldInternalPKc_700
_Z19R_LoadWorldInternalPKc_720:
	add esi, 0x1
	add edi, 0x38
	mov edx, [ebp-0x2010c]
	cmp esi, [edx+0xf0]
	jl _Z19R_LoadWorldInternalPKc_710
	jmp _Z19R_LoadWorldInternalPKc_650
_Z19R_LoadWorldInternalPKc_690:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	jmp _Z19R_LoadWorldInternalPKc_720
_Z19R_LoadWorldInternalPKc_420:
	mov edi, [ebp-0x2010c]
	mov eax, [edi+0xf0]
	test eax, eax
	jle _Z19R_LoadWorldInternalPKc_650
	xor edi, edi
	xor esi, esi
	jmp _Z19R_LoadWorldInternalPKc_730
_Z19R_LoadWorldInternalPKc_740:
	mov edx, s_world
	mov [ebp-0x2010c], edx
_Z19R_LoadWorldInternalPKc_730:
	mov ebx, esi
	mov ecx, [ebp-0x2010c]
	add ebx, [ecx+0x104]
	mov byte [ebx+0x30], 0x1
	mov dword [esp], 0x1
	call _Z18Hunk_AllocInternali
	mov [ebx+0x34], eax
	mov byte [eax], 0x0
	add edi, 0x1
	add esi, 0x38
	mov eax, [ebp-0x2010c]
	cmp edi, [eax+0xf0]
	jl _Z19R_LoadWorldInternalPKc_740
	mov edx, s_world
	mov [ebp-0x2010c], edx
	jmp _Z19R_LoadWorldInternalPKc_650
_Z19R_LoadWorldInternalPKc_350:
	mov eax, edx
	jmp _Z19R_LoadWorldInternalPKc_750


;R_CreateWorldVertexBuffer(IDirect3DVertexBuffer9**, void const*, unsigned int)
_Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_10
	mov dword [esi], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_20
	mov ebx, [ebp+0x10]
_Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_30:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z25R_AllocStaticVertexBufferPP22IDirect3DVertexBuffer9iPKc
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov eax, [esi]
	mov [esp], eax
	call _Z26R_FinishStaticVertexBufferP22IDirect3DVertexBuffer9
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_20:
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [ebp+0xc], eax
	mov ebx, 0x4
	jmp _Z25R_CreateWorldVertexBufferPP22IDirect3DVertexBuffer9PKvj_30
	nop


;R_AddShadowSurfaceToPrimaryLight(GfxWorld*, unsigned int, unsigned int)
_Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*2]
	mov edx, [ebp+0x8]
	mov edx, [edx+0x23c]
	lea edx, [edx+eax*4]
	mov ecx, [edx+0x4]
	test ecx, ecx
	jz _Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj_10
	movzx eax, word [edx]
	movzx ebx, word [ebp+0x10]
	mov [ecx+eax*2], bx
	add word [edx], 0x1
_Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj_10:
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;R_ForEachPrimaryLightAffectingSurface(GfxWorld*, GfxSurface const*, unsigned int, void (*)(GfxWorld*, unsigned int, unsigned int))
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x2
	jnz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_10
	lea eax, [edx+0x24]
	movss xmm2, dword [edx+0x18]
	addss xmm2, [edx+0x24]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x24], xmm2
	movss xmm1, dword [edx+0x1c]
	addss xmm1, [eax+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x20], xmm1
	movss xmm0, dword [edx+0x20]
	addss xmm0, [eax+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	subss xmm2, [edx+0x18]
	subss xmm1, [edx+0x1c]
	subss xmm0, [edx+0x20]
	movss xmm3, dword [_float_1_00000000]
	addss xmm2, xmm3
	movss [ebp-0x30], xmm2
	addss xmm1, xmm3
	movss [ebp-0x2c], xmm1
	addss xmm0, xmm3
	movss [ebp-0x28], xmm0
	mov eax, [ebp+0x8]
	mov edi, [eax+0xd8]
	add edi, 0x1
	cmp edi, [eax+0xdc]
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_20
	mov eax, edi
	shl eax, 0x6
	lea eax, [eax+edi*4]
	mov [ebp-0x48], eax
	lea ebx, [edi*8]
	mov [ebp-0x44], ebx
	mov ebx, eax
	mov eax, comWorld
	add ebx, [eax+0xc]
	cmp byte [ebx], 0x2
	jnz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_30
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_80:
	movss xmm0, dword [ebx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_30
	lea eax, [ebp-0x30]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	lea eax, [ebx+0x10]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z31CullBoxFromConicSectionOfSpherePKfS0_ffS0_S0_
	movzx eax, al
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_90:
	test eax, eax
	jnz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_40
	mov eax, s_world
	mov eax, [eax+0x240]
	add eax, [ebp-0x44]
	mov ecx, [eax]
	test ecx, ecx
	jz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_50
	movss xmm6, dword [ebp-0x24]
	subss xmm6, [ebx+0x1c]
	movss xmm7, dword [ebp-0x20]
	subss xmm7, [esi+0x4]
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x4c], xmm0
	subss xmm0, [esi+0x8]
	movss [ebp-0x4c], xmm0
	movss xmm4, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x2c]
	movss [ebp-0x60], xmm1
	movss xmm0, dword [ebp-0x28]
	movss [ebp-0x5c], xmm0
	addss xmm1, xmm4
	movss [ebp-0x54], xmm1
	addss xmm0, xmm4
	movss [ebp-0x40], xmm0
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [ebp-0x5c]
	movss [ebp-0x3c], xmm1
	mov eax, [eax+0x4]
	xor edx, edx
	movss xmm5, dword [_data16_7fffffff]
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_100:
	movaps xmm0, xmm6
	subss xmm0, [eax]
	andps xmm0, xmm5
	movaps xmm1, xmm4
	addss xmm1, [eax+0x24]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movaps xmm0, xmm7
	subss xmm0, [eax+0x4]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [eax+0x28]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x5c]
	addss xmm1, [eax+0x2c]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [eax+0xc]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x54]
	addss xmm1, [eax+0x30]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [eax+0x10]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x54]
	addss xmm1, [eax+0x34]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm6
	subss xmm0, [eax+0x14]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x38]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x18]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x3c]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm7
	subss xmm0, [eax+0x1c]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x40]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x20]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x44]
	ucomiss xmm0, xmm1
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	mov ebx, [eax+0x48]
	mov [ebp-0x58], ebx
	test ebx, ebx
	jz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_50
	mov ebx, [eax+0x4c]
	xor esi, esi
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_70:
	movss xmm0, dword [ebx]
	movss xmm3, dword [ebx+0x4]
	movss xmm1, dword [ebx+0x8]
	movss [ebp-0x50], xmm1
	movaps xmm2, xmm6
	mulss xmm2, xmm0
	movaps xmm1, xmm7
	mulss xmm1, xmm3
	addss xmm2, xmm1
	movss xmm1, dword [ebp-0x4c]
	mulss xmm1, [ebp-0x50]
	addss xmm2, xmm1
	subss xmm2, [ebx+0xc]
	andps xmm2, xmm5
	andps xmm0, xmm5
	mulss xmm0, xmm4
	andps xmm3, xmm5
	mulss xmm3, [ebp-0x60]
	addss xmm0, xmm3
	and dword [ebp-0x50], 0x7fffffff
	movss xmm1, dword [ebp-0x5c]
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	addss xmm0, [ebx+0x10]
	ucomiss xmm2, xmm0
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60
	add esi, 0x1
	add ebx, 0x14
	cmp [ebp-0x58], esi
	jnz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_70
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_50:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dword [ebp+0x14]
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_40:
	add edi, 0x1
	add dword [ebp-0x48], 0x44
	add dword [ebp-0x44], 0x8
	mov eax, [ebp+0x8]
	cmp edi, [eax+0xdc]
	jae _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_20
	mov ebx, [ebp-0x48]
	mov eax, comWorld
	add ebx, [eax+0xc]
	cmp byte [ebx], 0x2
	jz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_80
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_30:
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call _Z17CullBoxFromSpherePKffS0_S0_
	movzx eax, al
	jmp _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_90
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x16]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dword [ebp+0x14]
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_60:
	add edx, 0x1
	add eax, 0x50
	cmp ecx, edx
	jnz _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_100
	jmp _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE_40
	nop


;R_InterpretSunLightParseParamsIntoLights(SunLightParseParams*, GfxLight*)
_Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	lea eax, [ebx+0x74]
	mov [esp], eax
	call _Z12AngleVectorsPKfPfS1_S1_
	movss xmm1, dword [ebx+0x54]
	subss xmm1, [ebx+0x40]
	movss xmm0, dword [_float_1_00000000]
	subss xmm0, [ebx+0x50]
	mulss xmm1, xmm0
	lea eax, [ebx+0x58]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x58]
	movaps xmm2, xmm1
	mulss xmm2, [eax+0x4]
	mulss xmm1, [eax+0x8]
	test esi, esi
	jz _Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight_10
	cld
	mov ecx, 0x10
	xor eax, eax
	mov edi, esi
	rep stosd
	mov byte [esi], 0x1
	lea edx, [esi+0x10]
	mov eax, [ebp-0x24]
	mov [esi+0x10], eax
	mov eax, [ebp-0x20]
	mov [edx+0x4], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x8], eax
	lea eax, [esi+0x4]
	movss [esi+0x4], xmm0
	movss [eax+0x4], xmm2
	movss [eax+0x8], xmm1
_Z40R_InterpretSunLightParseParamsIntoLightsP19SunLightParseParamsP8GfxLight_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void std::partial_sort<GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&)>(GfxSurface*, GfxSurface*, GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&))
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	mov [ebp-0xc0], eax
	cmp eax, 0x5f
	jle _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__10
	mov ecx, eax
	sar ecx, 0x4
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
	mov [ebp-0xc4], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0xc8], eax
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov edi, [ebp+0x8]
	add edi, eax
	mov dword [ebp-0xac], 0x0
	jmp _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__20
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__30:
	add dword [ebp-0xac], 0x1
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__20:
	mov ecx, [edi]
	mov [ebp-0xa8], ecx
	mov eax, [edi+0x4]
	mov [ebp-0xcc], eax
	mov [ebp-0xa4], eax
	mov edx, [edi+0x8]
	mov [ebp-0xd0], edx
	mov [ebp-0xa0], edx
	mov ecx, [edi+0xc]
	mov [ebp-0xd4], ecx
	mov [ebp-0x9c], ecx
	mov eax, [edi+0x10]
	mov [ebp-0xd8], eax
	mov [ebp-0x98], eax
	mov edx, [edi+0x14]
	mov [ebp-0xdc], edx
	mov [ebp-0x94], edx
	mov ecx, [edi+0x18]
	mov [ebp-0xe0], ecx
	mov [ebp-0x90], ecx
	mov esi, [edi+0x1c]
	mov [ebp-0x8c], esi
	mov ebx, [edi+0x20]
	mov [ebp-0x88], ebx
	mov ecx, [edi+0x24]
	mov [ebp-0x84], ecx
	mov edx, [edi+0x28]
	mov [ebp-0x80], edx
	mov eax, [edi+0x2c]
	mov [esp+0x38], eax
	mov [ebp-0x7c], eax
	mov eax, [ebp+0x14]
	mov [esp+0x3c], eax
	mov eax, [edi]
	mov [esp+0xc], eax
	mov eax, [ebp-0xcc]
	mov [esp+0x10], eax
	mov eax, [ebp-0xd0]
	mov [esp+0x14], eax
	mov eax, [ebp-0xd4]
	mov [esp+0x18], eax
	mov eax, [ebp-0xd8]
	mov [esp+0x1c], eax
	mov eax, [ebp-0xdc]
	mov [esp+0x20], eax
	mov eax, [ebp-0xe0]
	mov [esp+0x24], eax
	mov [esp+0x28], esi
	mov [esp+0x2c], ebx
	mov [esp+0x30], ecx
	mov [esp+0x34], edx
	mov edx, [ebp-0xc4]
	mov [esp+0x8], edx
	mov eax, [ebp-0xc8]
	sub eax, [ebp-0xac]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub edi, 0x30
	mov eax, [ebp-0xc8]
	cmp [ebp-0xac], eax
	jnz _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__30
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__10:
	mov edx, [ebp+0x10]
	cmp [ebp+0xc], edx
	jb _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__40
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__70:
	cmp dword [ebp-0xc0], 0x5f
	jg _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__50
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__40:
	mov ecx, [ebp-0xc0]
	sar ecx, 0x4
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
	mov [ebp-0xe4], eax
	mov ecx, [ebp+0xc]
	mov [ebp-0xbc], ecx
	mov eax, ecx
	jmp _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__60
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__80:
	add dword [ebp-0xbc], 0x30
	mov edi, [ebp-0xbc]
	cmp [ebp+0x10], edi
	jbe _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__70
	mov eax, edi
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__60:
	mov edi, [ebp+0x8]
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__80
	mov edx, [ebp-0xbc]
	movss xmm0, dword [edx+0x2c]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [edx+0x28]
	movss [ebp-0x50], xmm0
	movss xmm0, dword [edx+0x24]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [edx+0x20]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [edx+0x1c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [edx+0x18]
	movss [ebp-0x60], xmm0
	movzx eax, byte [edx+0x17]
	mov [ebp-0x61], al
	movzx edx, byte [edx+0x16]
	mov [ebp-0x62], dl
	mov ecx, [ebp-0xbc]
	movzx ecx, byte [ecx+0x15]
	mov [ebp-0x63], cl
	mov eax, [ebp-0xbc]
	movzx eax, byte [eax+0x14]
	mov [ebp-0x64], al
	mov edx, [ebp-0xbc]
	mov esi, [edx+0x10]
	mov ebx, [edx+0xc]
	movzx ecx, word [edx+0xa]
	mov [ebp-0x6e], cx
	movzx edi, word [edx+0x8]
	mov [ebp-0x70], di
	mov ecx, [edx+0x4]
	mov edx, [edx]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov edi, [ebp-0xbc]
	mov [edi], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	mov edi, [ebp-0xbc]
	mov [edi+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	mov edi, [ebp-0xbc]
	mov [edi+0x8], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	mov edi, [ebp-0xbc]
	mov [edi+0xc], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x10]
	mov edi, [ebp-0xbc]
	mov [edi+0x10], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x14]
	mov edi, [ebp-0xbc]
	mov [edi+0x14], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x18]
	mov edi, [ebp-0xbc]
	mov [edi+0x18], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x1c]
	mov edi, [ebp-0xbc]
	mov [edi+0x1c], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	mov edi, [ebp-0xbc]
	mov [edi+0x20], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x24]
	mov edi, [ebp-0xbc]
	mov [edi+0x24], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x28]
	mov edi, [ebp-0xbc]
	mov [edi+0x28], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x2c]
	mov edi, [ebp-0xbc]
	mov [edi+0x2c], eax
	mov [ebp-0x68], esi
	mov [ebp-0x6c], ebx
	mov [ebp-0x74], ecx
	mov [ebp-0x78], edx
	mov eax, [ebp+0x14]
	mov [esp+0x3c], eax
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov eax, [ebp-0x70]
	mov [esp+0x14], eax
	mov [esp+0x18], ebx
	mov [esp+0x1c], esi
	mov eax, [ebp-0x64]
	mov [esp+0x20], eax
	mov eax, [ebp-0x60]
	mov [esp+0x24], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x28], eax
	mov eax, [ebp-0x58]
	mov [esp+0x2c], eax
	mov eax, [ebp-0x54]
	mov [esp+0x30], eax
	mov eax, [ebp-0x50]
	mov [esp+0x34], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x38], eax
	mov edx, [ebp-0xe4]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	jmp _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__80
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__50:
	mov eax, [ebp+0xc]
	mov [ebp-0xb8], eax
	sub eax, 0x4
	mov [ebp-0xb4], eax
	mov eax, [ebp-0xb8]
	sub eax, [ebp+0x8]
	mov edx, [ebp+0x8]
	sub edx, [ebp-0xb8]
	lea ecx, [eax-0x30]
	mov [ebp-0xb0], ecx
	lea eax, [edx+eax*2]
	mov [ebp-0xe8], eax
_ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__90:
	mov edi, [ebp-0xb4]
	movss xmm0, dword [edi]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [edi-0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi-0x8]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi-0xc]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [edi-0x10]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [edi-0x14]
	movss [ebp-0x30], xmm0
	movzx eax, byte [edi-0x15]
	mov [ebp-0x31], al
	movzx edx, byte [edi-0x16]
	mov [ebp-0x32], dl
	movzx ecx, byte [edi-0x17]
	mov [ebp-0x33], cl
	movzx eax, byte [edi-0x18]
	mov [ebp-0x34], al
	mov esi, [edi-0x1c]
	mov ebx, [edi-0x20]
	movzx edx, word [edi-0x22]
	mov [ebp-0x3e], dx
	movzx ecx, word [edi-0x24]
	mov [ebp-0x40], cx
	mov ecx, [edi-0x28]
	mov edx, [edi-0x2c]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov edi, [ebp-0xb8]
	mov [edi-0x30], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	mov edi, [ebp-0xb8]
	mov [edi-0x2c], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x8]
	mov edi, [ebp-0xb8]
	mov [edi-0x28], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0xc]
	mov edi, [ebp-0xb8]
	mov [edi-0x24], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x10]
	mov edi, [ebp-0xb8]
	mov [edi-0x20], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x14]
	mov edi, [ebp-0xb8]
	mov [edi-0x1c], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x18]
	mov edi, [ebp-0xb8]
	mov [edi-0x18], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x1c]
	mov edi, [ebp-0xb8]
	mov [edi-0x14], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x20]
	mov edi, [ebp-0xb8]
	mov [edi-0x10], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x24]
	mov edi, [ebp-0xb8]
	mov [edi-0xc], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x28]
	mov edi, [ebp-0xb8]
	mov [edi-0x8], eax
	mov edi, [ebp+0x8]
	mov eax, [edi+0x2c]
	mov edi, [ebp-0xb8]
	mov [edi-0x4], eax
	mov [ebp-0x38], esi
	mov [ebp-0x3c], ebx
	mov [ebp-0x44], ecx
	mov [ebp-0x48], edx
	mov eax, [ebp+0x14]
	mov [esp+0x3c], eax
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov [esp+0x18], ebx
	mov [esp+0x1c], esi
	mov eax, [ebp-0x34]
	mov [esp+0x20], eax
	mov eax, [ebp-0x30]
	mov [esp+0x24], eax
	mov eax, [ebp-0x2c]
	mov [esp+0x28], eax
	mov eax, [ebp-0x28]
	mov [esp+0x2c], eax
	mov eax, [ebp-0x24]
	mov [esp+0x30], eax
	mov eax, [ebp-0x20]
	mov [esp+0x34], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x38], eax
	mov ecx, [ebp-0xb0]
	sar ecx, 0x4
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
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub edi, 0x30
	mov [ebp-0xb8], edi
	sub dword [ebp-0xb4], 0x30
	sub dword [ebp-0xb0], 0x30
	sub dword [ebp-0xe8], 0x30
	cmp dword [ebp-0xe8], 0x5f
	jg _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0__90
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;void std::__adjust_heap<GfxSurface*, int, GfxSurface, unsigned char (*)(GfxSurface const&, GfxSurface const&)>(GfxSurface*, int, int, GfxSurface, unsigned char (*)(GfxSurface const&, GfxSurface const&))
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edi, [ebp+0x8]
	movss xmm0, dword [ebp+0x40]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp+0x3c]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp+0x38]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp+0x34]
	movss [ebp-0x64], xmm0
	movss xmm0, dword [ebp+0x30]
	movss [ebp-0x68], xmm0
	movss xmm0, dword [ebp+0x2c]
	movss [ebp-0x6c], xmm0
	movzx eax, byte [ebp+0x2b]
	mov [ebp-0x6d], al
	movzx edx, byte [ebp+0x2a]
	mov [ebp-0x6e], dl
	movzx eax, byte [ebp+0x29]
	mov [ebp-0x6f], al
	movzx edx, byte [ebp+0x28]
	mov [ebp-0x70], dl
	mov eax, [ebp+0x24]
	mov [ebp-0x74], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x78], edx
	movzx eax, word [ebp+0x1e]
	mov [ebp-0x7a], ax
	movzx edx, word [ebp+0x1c]
	mov [ebp-0x7c], dx
	mov eax, [ebp+0x18]
	mov [ebp-0x80], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x84], edx
	mov eax, [ebp+0xc]
	add eax, eax
	lea esi, [eax+0x2]
	cmp esi, [ebp+0x10]
	jl _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	add eax, [ebp+0xc]
	shl eax, 0x4
	lea ebx, [edi+eax]
	mov eax, [ebp+0xc]
	mov [ebp-0x50], eax
	cmp [ebp+0x10], esi
	jz _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [ebp-0x5c]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebp-0x60]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebp-0x64]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0x68]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x6c]
	movss [ebp-0x30], xmm0
	movzx eax, byte [ebp-0x6d]
	mov [ebp-0x31], al
	movzx edx, byte [ebp-0x6e]
	mov [ebp-0x32], dl
	movzx eax, byte [ebp-0x6f]
	mov [ebp-0x33], al
	movzx edx, byte [ebp-0x70]
	mov [ebp-0x34], dl
	mov eax, [ebp-0x74]
	mov [ebp-0x38], eax
	mov edx, [ebp-0x78]
	mov [ebp-0x3c], edx
	movzx eax, word [ebp-0x7a]
	mov [ebp-0x3e], ax
	movzx edx, word [ebp-0x7c]
	mov [ebp-0x40], dx
	mov eax, [ebp-0x80]
	mov [ebp-0x44], eax
	mov edx, [ebp-0x84]
	mov [ebp-0x48], edx
	mov edx, [ebp-0x50]
	sub edx, 0x1
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov eax, [ebp+0xc]
	cmp [ebp-0x50], eax
	jg _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0x48]
	mov [ebx], eax
	mov eax, [ebp-0x44]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x40]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x3c]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x38]
	mov [ebx+0x10], eax
	mov eax, [ebp-0x34]
	mov [ebx+0x14], eax
	mov eax, [ebp-0x30]
	mov [ebx+0x18], eax
	mov eax, [ebp-0x2c]
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x24], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x28], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x2c], eax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	mov eax, [ebp-0x50]
	lea edx, [eax+eax*2]
	shl edx, 0x4
	mov eax, [ebx]
	mov [edx+edi], eax
	mov eax, [ebx+0x4]
	mov [edx+edi+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+edi+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+edi+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+edi+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+edi+0x14], eax
	mov eax, [ebx+0x18]
	mov [edx+edi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+edi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [edx+edi+0x20], eax
	mov eax, [ebx+0x24]
	mov [edx+edi+0x24], eax
	mov eax, [ebx+0x28]
	mov [edx+edi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [edx+edi+0x2c], eax
	lea edx, [esi-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp esi, [ebp+0xc]
	jle _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov [ebp-0x50], esi
	mov esi, eax
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ebx, [edi+eax]
	lea edx, [ebp-0x48]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [ebp+0x44]
	test al, al
	jnz _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	mov edx, [ebp-0x50]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	lea ebx, [edi+eax]
	jmp _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov edx, [ebp+0xc]
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	mov [ebp-0x4c], edx
	mov [ebp-0x54], esi
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ebx, [edi+eax]
	lea eax, [ebx-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x44]
	test al, al
	jz _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
	sub esi, 0x1
	mov [ebp-0x54], esi
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ebx, [edi+eax]
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	mov eax, [ebp-0x4c]
	lea edx, [eax+eax*2]
	shl edx, 0x4
	mov eax, [ebx]
	mov [edx+edi], eax
	mov eax, [ebx+0x4]
	mov [edx+edi+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+edi+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+edi+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+edi+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+edi+0x14], eax
	mov eax, [ebx+0x18]
	mov [edx+edi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+edi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [edx+edi+0x20], eax
	mov eax, [ebx+0x24]
	mov [edx+edi+0x24], eax
	mov eax, [ebx+0x28]
	mov [edx+edi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [edx+edi+0x2c], eax
	mov edx, [ebp-0x54]
	lea esi, [edx+edx+0x2]
	cmp [ebp+0x10], esi
	jg _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x50], edx
	cmp [ebp+0x10], esi
	jnz _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
_ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	lea eax, [edx+edx*2]
	shl eax, 0x4
	add eax, edi
	lea edx, [eax-0x30]
	mov eax, [eax-0x30]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	mov eax, [edx+0x10]
	mov [ebx+0x10], eax
	mov eax, [edx+0x14]
	mov [ebx+0x14], eax
	mov eax, [edx+0x18]
	mov [ebx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ebx+0x20], eax
	mov eax, [edx+0x24]
	mov [ebx+0x24], eax
	mov eax, [edx+0x28]
	mov [ebx+0x28], eax
	mov eax, [edx+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [ebp+0x10]
	sub eax, 0x1
	mov [ebp-0x50], eax
	lea eax, [eax+eax*2]
	shl eax, 0x4
	lea ebx, [edi+eax]
	jmp _ZSt13__adjust_heapIP10GfxSurfaceiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	nop


;void std::__adjust_heap<AnnotatedLightGridPoint*, int, AnnotatedLightGridPoint, unsigned char (*)(AnnotatedLightGridPoint const&, AnnotatedLightGridPoint const&)>(AnnotatedLightGridPoint*, int, int, AnnotatedLightGridPoint, unsigned char (*)(AnnotatedLightGridPoint const&, AnnotatedLightGridPoint const&))
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	movzx eax, byte [ebp+0x1d]
	mov [ebp-0x2d], al
	movzx edx, byte [ebp+0x1c]
	mov [ebp-0x2e], dl
	movzx ecx, word [ebp+0x1a]
	mov [ebp-0x30], cx
	movzx eax, word [ebp+0x18]
	mov [ebp-0x32], ax
	movzx edx, word [ebp+0x16]
	mov [ebp-0x34], dx
	movzx ecx, word [ebp+0x14]
	mov [ebp-0x36], cx
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	mov edx, eax
	lea eax, [eax+eax*4]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*2]
	mov edi, edx
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
	movzx eax, byte [ebp-0x2d]
	mov [ebp-0x19], al
	movzx edx, byte [ebp-0x2e]
	mov [ebp-0x1a], dl
	movzx ecx, word [ebp-0x30]
	mov [ebp-0x1c], cx
	movzx eax, word [ebp-0x32]
	mov [ebp-0x1e], ax
	movzx edx, word [ebp-0x34]
	mov [ebp-0x20], dx
	movzx ecx, word [ebp-0x36]
	mov [ebp-0x22], cx
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0x22]
	mov [esi], eax
	mov eax, [ebp-0x1e]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x1a]
	mov [esi+0x8], ax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	lea edx, [edi+edi*4]
	add edx, edx
	mov eax, [esi]
	mov ecx, [ebp+0x8]
	mov [edx+ecx], eax
	mov eax, [esi+0x4]
	mov [edx+ecx+0x4], eax
	movzx eax, word [esi+0x8]
	mov [edx+ecx+0x8], ax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	lea eax, [ebx+ebx*4]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*2]
	lea ecx, [ebp-0x22]
	mov [esp+0x4], ecx
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jnz _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	lea eax, [edi+edi*4]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*2]
	jmp _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov [ebp-0x2c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	lea eax, [edi+edi*4]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*2]
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	mov eax, [ebp-0x2c]
	lea edx, [eax+eax*4]
	add edx, edx
	mov eax, [esi]
	mov [edx+ecx], eax
	mov eax, [esi+0x4]
	mov [edx+ecx+0x4], eax
	movzx eax, word [esi+0x8]
	mov [edx+ecx+0x8], ax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x2c], edi
	mov edi, ebx
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	lea eax, [ebx+ebx*4]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*2]
	lea eax, [esi-0xa]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jnz _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	lea eax, [edx+edx*4]
	mov ecx, [ebp+0x8]
	lea eax, [ecx+eax*2]
	lea edx, [eax-0xa]
	mov eax, [eax-0xa]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [edx+0x8]
	mov [esi+0x8], ax
	mov edi, [ebp+0x10]
	sub edi, 0x1
	lea eax, [edi+edi*4]
	lea esi, [ecx+eax*2]
	jmp _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100
	nop


;void std::__adjust_heap<GfxStaticModelCombinedInst*, int, GfxStaticModelCombinedInst, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&)>(GfxStaticModelCombinedInst*, int, int, GfxStaticModelCombinedInst, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&))
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov eax, [ebp+0xc]
	add eax, eax
	lea ebx, [eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	add eax, [ebp+0xc]
	mov edx, [ebp+0xc]
	lea eax, [edx+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
	mov esi, [ebp+0xc]
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__110:
	lea ebx, [ebp-0x80]
	lea eax, [ebp+0x14]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	lea edi, [ebp-0xe8]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	mov [esp], edi
	call memcpy
	lea edx, [esi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp esi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	mov eax, [ebp-0xec]
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov dword [esp+0x8], 0x68
	mov edx, [ebp-0xec]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
	mov esi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x7c]
	test al, al
	jnz _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
	jmp _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov edi, [ebp+0xc]
	mov esi, ebx
	jmp _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
	lea esi, [ebx-0x1]
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
	lea eax, [edi+edi*2]
	lea eax, [edi+eax*4]
	lea eax, [edx+eax*8]
	mov dword [esp+0x8], 0x68
	mov edx, [ebp-0xec]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	lea ebx, [esi+esi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov edi, esi
	mov esi, ebx
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
	sub eax, 0x68
	mov [esp+0x4], eax
	mov eax, [ebp-0xec]
	mov [esp], eax
	call dword [ebp+0x7c]
	test al, al
	jnz _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
	mov edx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100
_ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
	mov edx, [ebp+0x10]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8-0x68]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], eax
	mov eax, [ebp-0xec]
	mov [esp], eax
	call memcpy
	mov esi, [ebp+0x10]
	sub esi, 0x1
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0xec], eax
	jmp _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__110


;void std::__insertion_sort<GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&)>(GfxSurface*, GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&))
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__10
	mov edi, [ebp+0x8]
	add edi, 0x30
	cmp eax, edi
	jz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__10
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__50:
	mov eax, [edi]
	mov [ebp-0x48], eax
	mov eax, [edi+0x4]
	mov [ebp-0x44], eax
	mov eax, [edi+0x8]
	mov [ebp-0x40], eax
	mov eax, [edi+0xc]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x10]
	mov [ebp-0x38], eax
	mov eax, [edi+0x14]
	mov [ebp-0x34], eax
	mov eax, [edi+0x18]
	mov [ebp-0x30], eax
	mov eax, [edi+0x1c]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x20]
	mov [ebp-0x28], eax
	mov eax, [edi+0x24]
	mov [ebp-0x24], eax
	mov eax, [edi+0x28]
	mov [ebp-0x20], eax
	mov eax, [edi+0x2c]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__20
	lea edx, [edi+0x30]
	mov [ebp-0x7c], edx
	mov ecx, edi
	sub ecx, [ebp+0x8]
	sar ecx, 0x4
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
	jle _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__30
	mov ecx, edi
	mov edx, [ebp-0x7c]
	xor ebx, ebx
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__40:
	mov eax, [ecx-0x30]
	mov [edx-0x30], eax
	mov eax, [ecx-0x2c]
	mov [edx-0x2c], eax
	mov eax, [ecx-0x28]
	mov [edx-0x28], eax
	mov eax, [ecx-0x24]
	mov [edx-0x24], eax
	mov eax, [ecx-0x20]
	mov [edx-0x20], eax
	mov eax, [ecx-0x1c]
	mov [edx-0x1c], eax
	mov eax, [ecx-0x18]
	mov [edx-0x18], eax
	mov eax, [ecx-0x14]
	mov [edx-0x14], eax
	mov eax, [ecx-0x10]
	mov [edx-0x10], eax
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0x30
	sub edx, 0x30
	cmp ebx, esi
	jnz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__40
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__30:
	mov eax, [ebp-0x48]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [ebp-0x44]
	mov [edx+0x4], eax
	mov eax, [ebp-0x40]
	mov [edx+0x8], eax
	mov eax, [ebp-0x3c]
	mov [edx+0xc], eax
	mov eax, [ebp-0x38]
	mov [edx+0x10], eax
	mov eax, [ebp-0x34]
	mov [edx+0x14], eax
	mov eax, [ebp-0x30]
	mov [edx+0x18], eax
	mov eax, [ebp-0x2c]
	mov [edx+0x1c], eax
	mov eax, [ebp-0x28]
	mov [edx+0x20], eax
	mov eax, [ebp-0x24]
	mov [edx+0x24], eax
	mov eax, [ebp-0x20]
	mov [edx+0x28], eax
	mov eax, [ebp-0x1c]
	mov [edx+0x2c], eax
	mov edi, [ebp-0x7c]
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__80:
	cmp [ebp+0xc], edi
	jnz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__50
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__20:
	mov eax, [ebp-0x1c]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x50], eax
	mov eax, [ebp-0x24]
	mov [ebp-0x54], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x58], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x60], eax
	movzx eax, byte [ebp-0x31]
	mov [ebp-0x61], al
	movzx eax, byte [ebp-0x32]
	mov [ebp-0x62], al
	movzx eax, byte [ebp-0x33]
	mov [ebp-0x63], al
	movzx eax, byte [ebp-0x34]
	mov [ebp-0x64], al
	mov eax, [ebp-0x38]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x6c], eax
	movzx eax, word [ebp-0x3e]
	mov [ebp-0x6e], ax
	movzx eax, word [ebp-0x40]
	mov [ebp-0x70], ax
	mov eax, [ebp-0x44]
	mov [ebp-0x74], eax
	mov eax, [ebp-0x48]
	mov [ebp-0x78], eax
	lea ebx, [edi-0x30]
	mov esi, edi
	jmp _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__60
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__70:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	mov eax, [ebx+0x18]
	mov [esi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [esi+0x20], eax
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	mov esi, ebx
	sub ebx, 0x30
_ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__60:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x78]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__70
	mov eax, [ebp-0x78]
	mov [esi], eax
	mov eax, [ebp-0x74]
	mov [esi+0x4], eax
	mov eax, [ebp-0x70]
	mov [esi+0x8], eax
	mov eax, [ebp-0x6c]
	mov [esi+0xc], eax
	mov eax, [ebp-0x68]
	mov [esi+0x10], eax
	mov eax, [ebp-0x64]
	mov [esi+0x14], eax
	mov eax, [ebp-0x60]
	mov [esi+0x18], eax
	mov eax, [ebp-0x5c]
	mov [esi+0x1c], eax
	mov eax, [ebp-0x58]
	mov [esi+0x20], eax
	mov eax, [ebp-0x54]
	mov [esi+0x24], eax
	mov eax, [ebp-0x50]
	mov [esi+0x28], eax
	mov eax, [ebp-0x4c]
	mov [esi+0x2c], eax
	add edi, 0x30
	jmp _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__80
	nop


;void std::__insertion_sort<GfxStaticModelCombinedInst*, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&)>(GfxStaticModelCombinedInst*, GfxStaticModelCombinedInst*, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&))
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__10
	mov edi, [ebp+0x8]
	add edi, 0x68
	cmp eax, edi
	jz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__10
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__50:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], edi
	lea eax, [ebp-0xe8]
	mov [esp], eax
	call memcpy
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	lea eax, [ebp-0xe8]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__20
	lea eax, [edi+0x68]
	mov [ebp-0x15c], eax
	mov eax, edi
	sub eax, [ebp+0x8]
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	mov [ebp-0x160], eax
	test eax, eax
	jle _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__30
	mov eax, edi
	mov edx, [ebp-0x15c]
	xor edi, edi
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__40:
	lea esi, [edx-0x68]
	lea ebx, [eax-0x68]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	add edi, 0x1
	mov eax, ebx
	mov edx, esi
	cmp [ebp-0x160], edi
	jnz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__40
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__30:
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x15c]
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__80:
	cmp [ebp+0xc], edi
	jnz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__50
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__10:
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__20:
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea eax, [ebp-0x80]
	mov [esp], eax
	call memcpy
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0x80]
	mov [esp+0x4], eax
	lea eax, [ebp-0x150]
	mov [esp], eax
	call memcpy
	lea esi, [edi-0x68]
	mov ebx, edi
	jmp _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__60
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__70:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	mov ebx, esi
	sub esi, 0x68
_ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__60:
	mov [esp+0x4], esi
	lea eax, [ebp-0x150]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__70
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0x150]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	add edi, 0x68
	jmp _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0__80


;void std::__introsort_loop<GfxSurface*, int, unsigned char (*)(GfxSurface const&, GfxSurface const&)>(GfxSurface*, GfxSurface*, int, unsigned char (*)(GfxSurface const&, GfxSurface const&))
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x32f
	jle _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__20
	mov esi, [ebp+0x10]
	mov [ebp-0x4c], esi
	mov dword [ebp-0x50], 0x0
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	sub dword [ebp-0x4c], 0x1
	mov ecx, eax
	sar ecx, 0x4
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
	shl eax, 0x4
	add eax, [ebp+0x8]
	mov [ebp-0x80], eax
	sub ebx, 0x30
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__30
	mov [esp+0x4], ebx
	mov edx, [ebp-0x80]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__40
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	mov esi, [ebp-0x80]
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	mov edx, [esi+0x28]
	mov ecx, [esi+0x24]
	mov ebx, [esi+0x20]
	movss xmm0, dword [esi+0x1c]
	movss [ebp-0x78], xmm0
	movss xmm0, dword [esi+0x18]
	movss [ebp-0x7c], xmm0
	movzx eax, byte [esi+0x17]
	mov [ebp-0x31], al
	movzx eax, byte [esi+0x16]
	mov [ebp-0x32], al
	movzx eax, byte [esi+0x15]
	mov [ebp-0x33], al
	movzx eax, byte [esi+0x14]
	mov [ebp-0x34], al
	mov esi, [esi+0x10]
	mov [ebp-0x38], esi
	mov eax, [ebp-0x80]
	mov eax, [eax+0xc]
	mov [ebp-0x3c], eax
	mov esi, [ebp-0x80]
	movzx esi, word [esi+0xa]
	mov [ebp-0x3e], si
	mov eax, [ebp-0x80]
	movzx eax, word [eax+0x8]
	mov [ebp-0x40], ax
	mov esi, [ebp-0x80]
	mov esi, [esi+0x4]
	mov [ebp-0x44], esi
	mov eax, [ebp-0x80]
	mov eax, [eax]
	mov [ebp-0x48], eax
	mov esi, [ebp-0x80]
	mov eax, [esi+0x2c]
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov [ebp-0x28], ebx
	movss xmm0, dword [ebp-0x78]
	movss [ebp-0x2c], xmm0
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x30], xmm0
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	sub edi, 0x30
	mov [esp+0x4], edi
	lea edx, [ebp-0x48]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__60
	cmp esi, edi
	jae _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__70
	mov edx, [esi+0x2c]
	mov ecx, [esi+0x28]
	mov ebx, [esi+0x24]
	movss xmm0, dword [esi+0x20]
	movss [ebp-0x54], xmm0
	movss xmm0, dword [esi+0x1c]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [esi+0x18]
	movss [ebp-0x5c], xmm0
	movzx eax, byte [esi+0x17]
	mov [ebp-0x5d], al
	movzx eax, byte [esi+0x16]
	mov [ebp-0x5e], al
	movzx eax, byte [esi+0x15]
	mov [ebp-0x5f], al
	movzx eax, byte [esi+0x14]
	mov [ebp-0x60], al
	mov eax, [esi+0x10]
	mov [ebp-0x64], eax
	mov eax, [esi+0xc]
	mov [ebp-0x68], eax
	movzx eax, word [esi+0xa]
	mov [ebp-0x6a], ax
	movzx eax, word [esi+0x8]
	mov [ebp-0x6c], ax
	mov eax, [esi+0x4]
	mov [ebp-0x70], eax
	mov eax, [esi]
	mov [ebp-0x74], eax
	mov eax, [edi]
	mov [esi], eax
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	mov eax, [edi+0x8]
	mov [esi+0x8], eax
	mov eax, [edi+0xc]
	mov [esi+0xc], eax
	mov eax, [edi+0x10]
	mov [esi+0x10], eax
	mov eax, [edi+0x14]
	mov [esi+0x14], eax
	mov eax, [edi+0x18]
	mov [esi+0x18], eax
	mov eax, [edi+0x1c]
	mov [esi+0x1c], eax
	mov eax, [edi+0x20]
	mov [esi+0x20], eax
	mov eax, [edi+0x24]
	mov [esi+0x24], eax
	mov eax, [edi+0x28]
	mov [esi+0x28], eax
	mov eax, [edi+0x2c]
	mov [esi+0x2c], eax
	mov [edi+0x2c], edx
	mov [edi+0x28], ecx
	mov [edi+0x24], ebx
	movss xmm0, dword [ebp-0x54]
	movss [edi+0x20], xmm0
	movss xmm0, dword [ebp-0x58]
	movss [edi+0x1c], xmm0
	movss xmm0, dword [ebp-0x5c]
	movss [edi+0x18], xmm0
	movzx eax, byte [ebp-0x5d]
	mov [edi+0x17], al
	movzx edx, byte [ebp-0x5e]
	mov [edi+0x16], dl
	movzx eax, byte [ebp-0x5f]
	mov [edi+0x15], al
	movzx edx, byte [ebp-0x60]
	mov [edi+0x14], dl
	mov eax, [ebp-0x64]
	mov [edi+0x10], eax
	mov edx, [ebp-0x68]
	mov [edi+0xc], edx
	movzx eax, word [ebp-0x6a]
	mov [edi+0xa], ax
	movzx edx, word [ebp-0x6c]
	mov [edi+0x8], dx
	mov eax, [ebp-0x70]
	mov [edi+0x4], eax
	mov edx, [ebp-0x74]
	mov [edi], edx
	add esi, 0x30
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__60
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	add esi, 0x30
	jmp _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov esi, [ebp+0x14]
	mov [esp+0xc], esi
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt12partial_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_S6_T0_
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	mov [esp+0x4], ebx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__90
	mov [ebp-0x80], ebx
	mov esi, ebx
	jmp _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__100
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	mov eax, [ebp+0x8]
	mov [ebp-0x80], eax
	mov esi, eax
	jmp _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__100
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__110
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x32f
	jle _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x50], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x50]
	cmp [ebp+0x10], edx
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__20
	mov ebx, esi
	jmp _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__90
	mov [esp+0x4], ebx
	mov edx, [ebp-0x80]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov [ebp-0x80], ebx
	mov esi, ebx
	jmp _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1__100


;void std::__introsort_loop<AnnotatedLightGridPoint*, int, unsigned char (*)(AnnotatedLightGridPoint const&, AnnotatedLightGridPoint const&)>(AnnotatedLightGridPoint*, AnnotatedLightGridPoint*, int, unsigned char (*)(AnnotatedLightGridPoint const&, AnnotatedLightGridPoint const&))
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0xa9
	jle _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov edi, [ebp+0x10]
	test edi, edi
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__170:
	cmp eax, 0x13
	jle _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov ecx, eax
	sar ecx, 1
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov [ebp-0x68], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0x6c], eax
	lea eax, [eax+eax*4]
	mov edx, [ebp+0x8]
	lea ebx, [edx+eax*2]
	xor edi, edi
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov ecx, [ebx]
	mov [ebp-0x2c], ecx
	mov edx, [ebx+0x4]
	mov [ebp-0x28], edx
	movzx eax, word [ebx+0x8]
	mov [ebp-0x24], ax
	mov esi, [ebp+0x14]
	mov [esp+0x18], esi
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], ax
	mov eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov eax, [ebp-0x6c]
	sub eax, edi
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub ebx, 0xa
	cmp edi, [ebp-0x6c]
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov esi, [ebp+0xc]
	mov [ebp-0x50], esi
	mov eax, esi
	sub eax, 0x1
	mov [ebp-0x4c], eax
	mov edx, esi
	sub edx, [ebp+0x8]
	mov [ebp-0x44], edx
	sub edx, 0xa
	mov [ebp-0x48], edx
	mov esi, eax
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov esi, [ebp-0x4c]
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	movzx edx, byte [esi]
	movzx ecx, byte [esi-0x1]
	movzx ebx, word [esi-0x3]
	movzx eax, word [esi-0x5]
	mov [ebp-0x5a], ax
	movzx esi, word [esi-0x7]
	mov [ebp-0x5c], si
	mov eax, [ebp-0x4c]
	movzx eax, word [eax-0x9]
	mov [ebp-0x5e], ax
	mov esi, [ebp+0x8]
	mov eax, [esi]
	mov esi, [ebp-0x50]
	mov [esi-0xa], eax
	mov esi, [ebp+0x8]
	mov eax, [esi+0x4]
	mov esi, [ebp-0x50]
	mov [esi-0x6], eax
	mov esi, [ebp+0x8]
	movzx eax, word [esi+0x8]
	mov esi, [ebp-0x50]
	mov [esi-0x2], ax
	mov [ebp-0x19], dl
	mov [ebp-0x1a], cl
	mov [ebp-0x1c], bx
	movzx eax, word [ebp-0x5a]
	mov [ebp-0x1e], ax
	movzx edx, word [ebp-0x5c]
	mov [ebp-0x20], dx
	movzx esi, word [ebp-0x5e]
	mov [ebp-0x22], si
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov eax, [ebp-0x22]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1e]
	mov [esp+0x10], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x14], ax
	mov ecx, [ebp-0x48]
	sar ecx, 1
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP23AnnotatedLightGridPointiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub dword [ebp-0x50], 0xa
	sub dword [ebp-0x4c], 0xa
	sub dword [ebp-0x48], 0xa
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x44]
	mov esi, [ebp-0x48]
	lea eax, [esi+eax+0xa]
	cmp eax, 0x13
	jg _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__60
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x3c], edx
	mov dword [ebp-0x40], 0x0
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	sub dword [ebp-0x3c], 0x1
	mov ecx, eax
	sar ecx, 1
	lea edx, [ecx+ecx*2]
	mov eax, edx
	shl eax, 0x4
	add edx, eax
	mov eax, edx
	shl eax, 0x8
	add edx, eax
	mov eax, edx
	shl eax, 0x10
	add edx, eax
	lea edx, [ecx+edx*4]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	lea eax, [eax+eax*4]
	mov esi, [ebp+0x8]
	lea ebx, [esi+eax*2]
	mov eax, [ebp+0xc]
	sub eax, 0xa
	mov [ebp-0x64], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__70
	mov edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__180:
	mov [ebp-0x64], ebx
	mov esi, ebx
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	movzx edx, byte [esi+0x8]
	movzx ecx, word [esi+0x6]
	movzx ebx, word [esi+0x4]
	movzx eax, word [esi+0x2]
	mov [ebp-0x58], ax
	movzx esi, word [esi]
	mov [ebp-0x36], si
	mov esi, [ebp-0x64]
	movzx eax, byte [esi+0x9]
	mov [ebp-0x2d], al
	mov [ebp-0x2e], dl
	mov [ebp-0x30], cx
	mov [ebp-0x32], bx
	movzx eax, word [ebp-0x58]
	mov [ebp-0x34], ax
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	lea edx, [ebp-0x36]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	sub edi, 0xa
	mov [esp+0x4], edi
	lea eax, [ebp-0x36]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__100
	cmp esi, edi
	jae _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__110
	movzx edx, byte [esi+0x9]
	movzx ecx, byte [esi+0x8]
	movzx ebx, word [esi+0x6]
	movzx eax, word [esi+0x4]
	mov [ebp-0x52], ax
	movzx eax, word [esi+0x2]
	mov [ebp-0x54], ax
	movzx eax, word [esi]
	mov [ebp-0x56], ax
	mov eax, [edi]
	mov [esi], eax
	mov eax, [edi+0x4]
	mov [esi+0x4], eax
	movzx eax, word [edi+0x8]
	mov [esi+0x8], ax
	mov [edi+0x9], dl
	mov [edi+0x8], cl
	mov [edi+0x6], bx
	movzx edx, word [ebp-0x52]
	mov [edi+0x4], dx
	movzx eax, word [ebp-0x54]
	mov [edi+0x2], ax
	movzx edx, word [ebp-0x56]
	mov [edi], dx
	add esi, 0xa
	lea edx, [ebp-0x36]
	mov [esp+0x4], edx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__100
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	add esi, 0xa
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	mov esi, [ebp-0x64]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov esi, [ebp-0x64]
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__140
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	mov edx, [ebp+0x8]
	mov [ebp-0x64], edx
	mov esi, edx
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__140
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__150
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0xa9
	jle _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x40], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp+0x10]
	cmp [ebp-0x40], edx
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__160
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__170
_ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov esi, [ebp+0x8]
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__180
	mov esi, [ebp-0x64]
	jmp _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1__140


;void std::__introsort_loop<GfxStaticModelCombinedInst*, int, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&)>(GfxStaticModelCombinedInst*, GfxStaticModelCombinedInst*, int, unsigned char (*)(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&))
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x6e7
	jle _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	cmp eax, 0xcf
	jle _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__10
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	mov [ebp-0x294], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*8]
	xor edi, edi
	lea eax, [esp+0xc]
	mov [ebp-0x298], eax
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	mov eax, [ebp-0x294]
	mov [esp+0x8], eax
	mov eax, ebx
	sub eax, edi
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub esi, 0x68
	cmp edi, ebx
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__40
	add edi, 0x1
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__30:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], esi
	lea edx, [ebp-0x150]
	mov [esp], edx
	call memcpy
	mov ecx, [ebp+0x14]
	mov [esp+0x74], ecx
	xor edx, edx
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	cmp edx, 0x68
	jae _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__50
	movzx eax, byte [ebp+edx-0x150]
	mov ecx, [ebp-0x298]
	mov [ecx+edx], al
	add edx, 0x1
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__60
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x30c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x28c], edx
	mov dword [ebp-0x290], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	sub dword [ebp-0x28c], 0x1
	mov edi, [ebp+0x8]
	sar eax, 0x3
	imul edx, eax, 0xc4ec4ec5
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	lea ebx, [edi+edx*8]
	sub esi, 0x68
	mov [esp+0x4], ebx
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__70
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__170:
	mov edi, ebx
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], edi
	lea ecx, [ebp-0x80]
	mov [esp], ecx
	call memcpy
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0x80]
	mov [esp+0x4], eax
	lea edx, [ebp-0x220]
	mov [esp], edx
	call memcpy
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	lea ecx, [ebp-0x220]
	mov [esp+0x4], ecx
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	sub esi, 0x68
	mov [esp+0x4], esi
	lea eax, [ebp-0x220]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__100
	cmp edi, esi
	jae _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__110
	lea ebx, [ebp-0x288]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], edi
	mov [esp], ebx
	call memcpy
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], esi
	mov [esp], edi
	call memcpy
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	add edi, 0x68
	lea ecx, [ebp-0x220]
	mov [esp+0x4], ecx
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__100
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	add edi, 0x68
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov edi, esi
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__130
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x28c]
	mov [esp+0x8], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__140
	mov eax, edi
	sub eax, [ebp+0x8]
	cmp eax, 0x6e7
	jle _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x290], 0x1
	mov [ebp+0xc], edi
	mov edx, [ebp+0x10]
	cmp [ebp-0x290], edx
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__150
	mov esi, edi
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__160
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov [esp+0x4], esi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__170
	mov edi, esi
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__130
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	mov edx, [ebp+0xc]
	mov edi, edx
	sub edi, [ebp+0x8]
	lea esi, [edi-0x68]
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__180
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__190:
	mov eax, esi
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIP26GfxStaticModelCombinedInstiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	mov edx, ebx
	sub esi, 0x68
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, edi
	lea eax, [esi+eax+0x68]
	cmp eax, 0xcf
	jle _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__10
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__180:
	lea ebx, [edx-0x68]
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	lea ecx, [ebp-0xe8]
	mov [esp], ecx
	call memcpy
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0xe8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x220]
	mov [esp], edx
	call memcpy
	mov dword [esp+0x8], 0x68
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], ebx
	call memcpy
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0x220]
	mov [esp+0x4], eax
	lea edx, [ebp-0x1b8]
	mov [esp], edx
	call memcpy
	mov ecx, [ebp+0x14]
	mov [esp+0x74], ecx
	xor edx, edx
_ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__200:
	cmp edx, 0x68
	jae _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__190
	movzx eax, byte [ebp+edx-0x1b8]
	mov ecx, [ebp-0x298]
	mov [ecx+edx], al
	add edx, 0x1
	jmp _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1__200


;void std::__final_insertion_sort<GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&)>(GfxSurface*, GfxSurface*, unsigned char (*)(GfxSurface const&, GfxSurface const&))
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	sub eax, edx
	cmp eax, 0x32f
	jle _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__10
	lea edi, [edx+0x300]
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_
	cmp [ebp+0xc], edi
	jz _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__20
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__50:
	mov edx, [edi+0x28]
	mov ecx, [edi+0x24]
	mov ebx, [edi+0x20]
	mov esi, [edi+0x1c]
	mov eax, [edi+0x2c]
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov [ebp-0x28], ebx
	mov [ebp-0x2c], esi
	movss xmm0, dword [edi+0x18]
	movss [ebp-0x30], xmm0
	movzx eax, byte [edi+0x17]
	mov [ebp-0x31], al
	movzx eax, byte [edi+0x16]
	mov [ebp-0x32], al
	movzx eax, byte [edi+0x15]
	mov [ebp-0x33], al
	movzx eax, byte [edi+0x14]
	mov [ebp-0x34], al
	mov eax, [edi+0x10]
	mov [ebp-0x38], eax
	mov eax, [edi+0xc]
	mov [ebp-0x3c], eax
	movzx eax, word [edi+0xa]
	mov [ebp-0x3e], ax
	movzx eax, word [edi+0x8]
	mov [ebp-0x40], ax
	mov eax, [edi+0x4]
	mov [ebp-0x44], eax
	mov eax, [edi]
	mov [ebp-0x48], eax
	lea ebx, [edi-0x30]
	mov esi, edi
	jmp _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__30
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	mov eax, [ebx+0x18]
	mov [esi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [esi+0x20], eax
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	mov esi, ebx
	sub ebx, 0x30
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__30:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x48]
	mov [esp], eax
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__40
	mov eax, [ebp-0x48]
	mov [esi], eax
	mov eax, [ebp-0x44]
	mov [esi+0x4], eax
	mov eax, [ebp-0x40]
	mov [esi+0x8], eax
	mov eax, [ebp-0x3c]
	mov [esi+0xc], eax
	mov eax, [ebp-0x38]
	mov [esi+0x10], eax
	mov eax, [ebp-0x34]
	mov [esi+0x14], eax
	mov eax, [ebp-0x30]
	mov [esi+0x18], eax
	mov eax, [ebp-0x2c]
	mov [esi+0x1c], eax
	mov eax, [ebp-0x28]
	mov [esi+0x20], eax
	mov eax, [ebp-0x24]
	mov [esi+0x24], eax
	mov eax, [ebp-0x20]
	mov [esi+0x28], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x2c], eax
	add edi, 0x30
	cmp [ebp+0xc], edi
	jnz _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__50
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0__10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZSt16__insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of r_bsp_load_obj:
SECTION .data


;Initialized constant data of r_bsp_load_obj:
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
s_lightGridRotAxis: dd 0x3ef15bef, 0x0, 0x3eaaaaab, 0xbe715bef, 0x3ed105eb, 0x3eaaaaab, 0xbe715bef, 0xbed105eb, 0x3eaaaaab, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0
needsTraceSwizzle.142602: dd 0x6020400, 0x7030501, 0x6040200, 0x7050301


;Zero initialized global or static variables of r_bsp_load_obj:
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
rgl: resb 0x2e0


;All cstrings:
SECTION .rdata
_cstring_light_grid_verti:		db "light grid vertical variation is too extreme -- ignoring light grid",0
_cstring_max_planes_excee:		db 015h,"Max planes exceeded",0
_cstring_max_cells_exceed:		db 015h,"Max cells exceeded",0
_cstring_loadmap_funny_lu:		db 015h,"LoadMap: funny lump size in %s",0
_cstring_i_merged_lightma:		db "%i merged lightmaps from %i original lightmaps",0ah,0
_cstring_lightmapi_primar:		db "*lightmap%i_primary",0
_cstring_lightmapi_second:		db "*lightmap%i_secondary",0
_cstring_null:		db 0
_cstring_classname:		db "classname",0
_cstring_misc_model:		db "misc_model",0
_cstring_r_loadentities_m:		db 015h,"R_LoadEntities: MAX_SPAWN_VARS (%i) reached",0ah,0
_cstring_r_loadentities_e:		db 015h,"R_LoadEntities: entity without a classname",0ah,0
_cstring_0_0_0:		db "0 0 0",0
_cstring_f_f_f:		db "%f %f %f",0
_cstring_model:		db "model",0
_cstring_r_checkvalidstat:		db 015h,"R_CheckValidStaticModel: no model specified in misc_model at (%.0f %.0f %.0f)",0
_cstring_bad_static_model:		db "bad static model ",27h,"%s",27h," at (%.0f %.0f %.0f)",0ah,0
_cstring_default_static_m:		db "default_static_model",0
_cstring_r_checkvalidstat1:		db 015h,"R_CheckValidStaticModel: could not find xmodel ",27h,"default_static_model",27h,0
_cstring_ff00000000:		db "FF00000000",0
_cstring_02x02x02x02x02x:		db "%02x%02x%02x%02x%02x",0
_cstring_r_vec4forkeyhex_:		db 015h,"R_Vec4ForKeyHex: invalid value",0ah,0
_cstring_angle:		db "angle",0
_cstring_angles:		db "angles",0
_cstring_modelscale:		db "modelscale",0
_cstring_spawnflags:		db "spawnflags",0
_cstring_r_checkvalidstat2:		db 015h,"R_CheckValidStaticModel: no origin specified",0
_cstring_origin:		db "origin",0
_cstring_gndlt:		db "gndLt",0
_cstring_bsp_compiled_wit:		db "Bsp compiled with old version of cod2map.",0ah,0
_cstring_loadmap_no_surfa:		db 015h,"LoadMap: no surfaces in %s",0
_cstring_loadmap_no_verti:		db 015h,"LoadMap: no vertices in %s",0
_cstring_colormap:		db "colorMap",0
_cstring_colormap_s_for_s:		db "colorMap ",27h,"%s",27h," for sky material ",27h,"%s",27h," is not a cubemap",0ah,0
_cstring_default:		db "$default",0
_cstring_default3d:		db "$default3d",0
_cstring_wc:		db "wc/",0
_cstring_ss:		db "%s%s",0
_cstring_map_has_at_least:		db "map has at least two different skies: %s and %s",0ah,"Only one sky per map is supported",0ah,0
_cstring_r_createworldver:		db "R_CreateWorldVertexBuffer",0
_cstring_world_surface_us:		db "World surface using material ",27h,"%s",27h," doesn",27h,"t have a lightmap.  This usually means the map was compiled with a different version of this material than you have locally.",0
_cstring_ambient:		db "ambient",0
_cstring_warning_ambient_:		db "WARNING: ambient too big, assuming it uses the old 0-255 scale instead of the proper 0-1 scale (value = ",27h,"%s",27h,")",0ah,0
_cstring__color:		db "_color",0
_cstring_diffusefraction:		db "diffuseFraction",0
_cstring_suncolor:		db "suncolor",0
_cstring_sundiffusecolor:		db "sundiffusecolor",0
_cstring_sunlight:		db "sunlight",0
_cstring_sundirection:		db "sundirection",0
_cstring_name:		db "name",0
_cstring_materials:		db "materials",0
_cstring_loading_s:		db "Loading %s...",0ah,0
_cstring_sun_settings:		db "sun settings",0
_cstring_primary_lights:		db "primary lights",0
_cstring_light_regions:		db "light regions",0
_cstring_lightmaps:		db "lightmaps",0
_cstring_lightgrid_colors:		db "lightgrid colors",0
_cstring_lightgrid_points:		db "lightgrid points",0
_cstring_submodels:		db "submodels",0
_cstring_surfaces:		db "surfaces",0
_cstring_cull_groups:		db "cull groups",0
_cstring_cull_group_indic:		db "cull group indices",0
_cstring_portal_vertices:		db "portal vertices",0
_cstring_aabb_trees:		db "AABB trees",0
_cstring_cells:		db "cells",0
_cstring_portals:		db "portals",0
_cstring_nodes_and_leafs:		db "nodes and leafs",0
_cstring_entities:		db "entities",0
_cstring_reflection_probe:		db "reflection probes",0
_cstring_lightgrid_row_da:		db "lightgrid row data",0
_cstring_lightgrid_entrie:		db "lightgrid entries",0
_cstring_lightgrid_header:		db "lightgrid header",0
_cstring_light_grid_heade:		db "light grid header has unexpected size",0
_cstring_light_grid_heade1:		db "light grid header is truncated",0



;All constant floats and doubles:
SECTION .rdata
_float_0_66666669:		dd 0x3f2aaaab	; 0.666667
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_00000000:		dd 0x0	; 0
_float_2_00000000:		dd 0x40000000	; 2
_float_0_01568628:		dd 0x3c808081	; 0.0156863
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD

