;Imports of r_bsp_load_obj:
	extern Com_GetBspLump
	extern Hunk_AllocateTempMemory
	extern memcpy
	extern s_world
	extern Com_PrintWarning
	extern Hunk_AllocInternal
	extern ClearBounds
	extern ExpandBounds
	extern Com_Error
	extern DynEnt_GetEntityCount
	extern comWorld
	extern Com_Memcpy
	extern PerpendicularVector
	extern memset
	extern Com_Printf
	extern Hunk_FreeTempMemory
	extern R_CopyLightDefAttenuationImage
	extern R_EnumLightDefs
	extern va
	extern Image_Alloc
	extern Image_Generate2D
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern Hunk_ClearTempMemory
	extern Hunk_AllocAlignInternal
	extern R_AllocStaticModels
	extern R_SortGfxAabbTree
	extern R_FilterStaticModelIntoCells_r
	extern Com_Parse
	extern Q_stricmp
	extern sscanf
	extern Com_IsLegacyXModelName
	extern R_RegisterModel
	extern XModelBad
	extern Com_PrintError
	extern AnglesToAxis
	extern R_CreateStaticModel
	extern XModelGetFlags
	extern R_GetPrimaryLightForModel
	extern atoi
	extern atof
	extern R_GetPrimaryLightFromGrid
	extern PointInBounds
	extern R_GenerateReflectionImages
	extern Vec3PackUnitVec
	extern r_loadForRenderer
	extern R_HashString
	extern Com_sprintf
	extern Material_Register
	extern R_AllocStaticVertexBuffer
	extern R_FinishStaticVertexBuffer
	extern AddPointToBounds
	extern Q_strncpyz
	extern ColorNormalize
	extern rgp
	extern R_RegisterLightDef
	extern Com_GetBspVersion
	extern strcpy
	extern Com_GetFilenameSubString
	extern Com_StripExtension
	extern CM_GetPlanes
	extern CM_GetPlaneCount
	extern SCR_UpdateLoadScreen
	extern AngleVectors
	extern Material_Sort
	extern BoundsOverlap
	extern Com_BspHasLump
	extern r_useLayeredMaterials
	extern R_LoadSun
	extern R_RegisterOutdoorImage
	extern R_AssignSModelCacheResources
	extern R_SetStaticModelReflectionProbe
	extern CullBoxFromConicSectionOfSphere
	extern CullBoxFromSphere

;Exports of r_bsp_load_obj:
	global _GLOBAL__I__Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex
	global rgl
	global s_lightGridRotAxis
	global R_LoadTriangleSurfaces
	global R_AnnotatedLightGridPointSortsBefore
	global R_EmitLightGridBlock_Version15
	global R_LoadLightRegions
	global R_FinishLoadingAabbTrees_r
	global R_LoadAabbTrees
	global R_LoadCells
	global R_SortNodes_r
	global R_LoadWorldRuntime
	global R_IncrementShadowGeometryCount
	global R_StaticModelCompare
	global R_CompareSurfaces
	global R_BuildNoDecalAabbTree_r
	global R_LoadLightGridColors
	global R_LoadPortals
	global R_AabbTreeChildrenCount_r
	global R_InitShadowGeometryArrays
	global R_LoadLightmaps
	global R_SortSurfaces
	global R_AabbTreeMove_r
	global R_PostLoadEntities
	global R_LoadEntities
	global R_CountNodes_r
	global needsTraceSwizzle.142602
	global R_LoadLightGridPoints_Version15
	global R_LoadReflectionProbes
	global R_SetParentAndCell_r
	global R_LoadNodesAndLeafs
	global R_LoadSurfaces
	global R_ParseSunLight
	global R_GetBspMaterial
	global R_InitPrimaryLights
	global R_LoadWorldInternal
	global R_CreateWorldVertexBuffer
	global R_AddShadowSurfaceToPrimaryLight
	global R_ForEachPrimaryLightAffectingSurface
	global R_InterpretSunLightParseParamsIntoLights
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
	jmp __static_initialization_and_destruction_0


;R_LoadTriangleSurfaces(unsigned int, TrisType, DiskTriangleSoup const**, unsigned int*)
R_LoadTriangleSurfaces:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x28], ecx
	mov ebx, [ebp+0x8]
	cmp eax, 0x8
	jbe R_LoadTriangleSurfaces_10
	cmp eax, 0xc
	jbe R_LoadTriangleSurfaces_20
	cmp eax, 0xe
	jbe R_LoadTriangleSurfaces_30
	cmp edx, 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x2f
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x18
	mov [esp], eax
	call Com_GetBspLump
R_LoadTriangleSurfaces_60:
	mov edx, [ebp-0x28]
	mov [edx], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadTriangleSurfaces_20:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x14
	mov dword [esp], 0x9
	call Com_GetBspLump
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
	jle R_LoadTriangleSurfaces_40
	mov ecx, edi
	mov edx, eax
	xor ebx, ebx
R_LoadTriangleSurfaces_50:
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
	jnz R_LoadTriangleSurfaces_50
	mov edx, [ebp-0x20]
	mov eax, [ebp-0x28]
	mov [eax], edx
R_LoadTriangleSurfaces_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadTriangleSurfaces_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x9
	call Com_GetBspLump
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
	jle R_LoadTriangleSurfaces_60
	mov ecx, edi
	mov edx, eax
	xor ebx, ebx
R_LoadTriangleSurfaces_70:
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
	jnz R_LoadTriangleSurfaces_70
	mov eax, [ebp-0x24]
	jmp R_LoadTriangleSurfaces_60
R_LoadTriangleSurfaces_40:
	mov edx, eax
	mov eax, [ebp-0x28]
	mov [eax], edx
	jmp R_LoadTriangleSurfaces_80
R_LoadTriangleSurfaces_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x9
	call Com_GetBspLump
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
	jle R_LoadTriangleSurfaces_90
	mov edx, [ebp-0x1c]
	xor ecx, ecx
	jmp R_LoadTriangleSurfaces_100
R_LoadTriangleSurfaces_110:
	add al, 0x1
	mov [edx+0x4], al
R_LoadTriangleSurfaces_120:
	add ecx, 0x1
	add edx, 0x18
	cmp edi, ecx
	jz R_LoadTriangleSurfaces_90
R_LoadTriangleSurfaces_100:
	movzx eax, byte [edx+0x4]
	cmp al, 0xff
	jnz R_LoadTriangleSurfaces_110
	mov byte [edx+0x4], 0x0
	jmp R_LoadTriangleSurfaces_120
R_LoadTriangleSurfaces_90:
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
R_AnnotatedLightGridPointSortsBefore:
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
	jb R_AnnotatedLightGridPointSortsBefore_10
	ja R_AnnotatedLightGridPointSortsBefore_20
	mov edx, [esi+0x128]
	movzx eax, word [ebx+edx*2]
	cmp [ecx+edx*2], ax
	jb R_AnnotatedLightGridPointSortsBefore_10
	ja R_AnnotatedLightGridPointSortsBefore_20
	movzx eax, word [ecx+0x4]
	cmp ax, [ebx+0x4]
	jae R_AnnotatedLightGridPointSortsBefore_20
R_AnnotatedLightGridPointSortsBefore_10:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
R_AnnotatedLightGridPointSortsBefore_20:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret


;R_EmitLightGridBlock_Version15(AnnotatedLightGridPoint const*, unsigned int, unsigned short const*, unsigned short const*, unsigned int, unsigned int)
R_EmitLightGridBlock_Version15:
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
	ja R_EmitLightGridBlock_Version15_10
	mov edx, [ebp-0x30]
	test edx, edx
	jz R_EmitLightGridBlock_Version15_20
	mov edx, [ebp+0xc]
	lea eax, [edx+edx*4]
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax*2]
	mov [ebp-0x1c], eax
	mov [ebp-0x24], edx
	mov dword [ebp-0x20], 0x0
	mov ebx, s_world
R_EmitLightGridBlock_Version15_60:
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz R_EmitLightGridBlock_Version15_30
	xor edi, edi
	mov ecx, [ebp-0x24]
	lea eax, [ecx+ecx*4]
	mov edx, [ebp-0x2c]
	lea esi, [edx+eax*2]
	jmp R_EmitLightGridBlock_Version15_40
R_EmitLightGridBlock_Version15_50:
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
	jbe R_EmitLightGridBlock_Version15_30
R_EmitLightGridBlock_Version15_40:
	movzx edx, word [esi+0x4]
	mov ecx, [ebp-0x1c]
	movzx eax, word [ecx+0x4]
	lea eax, [edi+eax]
	cmp edx, eax
	jnz R_EmitLightGridBlock_Version15_50
	mov ecx, [ebx+0x138]
	mov edx, [ebx+0x13c]
	mov eax, [esi+0x6]
	mov [edx+ecx*4], eax
	add dword [ebx+0x138], 0x1
	add dword [ebp-0x24], 0x1
	add esi, 0xa
	add edi, 0x1
	cmp [ebp-0x28], edi
	ja R_EmitLightGridBlock_Version15_40
R_EmitLightGridBlock_Version15_30:
	add dword [ebp-0x20], 0x1
	mov esi, [ebp-0x20]
	cmp [ebp-0x30], esi
	jnz R_EmitLightGridBlock_Version15_60
	mov eax, [ebp-0x34]
	movzx ecx, word [eax]
	jmp R_EmitLightGridBlock_Version15_70
R_EmitLightGridBlock_Version15_20:
	mov ebx, s_world
R_EmitLightGridBlock_Version15_70:
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
	jle R_EmitLightGridBlock_Version15_80
	jmp R_EmitLightGridBlock_Version15_90
R_EmitLightGridBlock_Version15_110:
	mov ecx, 0xff
R_EmitLightGridBlock_Version15_120:
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
	jz R_EmitLightGridBlock_Version15_100
R_EmitLightGridBlock_Version15_80:
	cmp dword [ebp-0x30], 0xff
	jg R_EmitLightGridBlock_Version15_110
	mov ecx, [ebp-0x30]
	jmp R_EmitLightGridBlock_Version15_120
R_EmitLightGridBlock_Version15_90:
	mov eax, ecx
	shr eax, 0x8
	mov [ebp-0x38], eax
R_EmitLightGridBlock_Version15_130:
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
	jnz R_EmitLightGridBlock_Version15_130
R_EmitLightGridBlock_Version15_100:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_EmitLightGridBlock_Version15_10:
	mov dword [esp+0x4], _cstring_light_grid_verti
	mov dword [esp], 0x8
	call Com_PrintWarning
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LoadLightRegions()
R_LoadLightRegions:
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
	call Hunk_AllocInternal
	mov ecx, s_world
	mov [ecx+0x240], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x34
	call Com_GetBspLump
	mov ebx, eax
	test eax, eax
	setnz al
	mov edx, s_world
	mov [edx+0x110], al
	test al, al
	jnz R_LoadLightRegions_10
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadLightRegions_10:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4c
	mov dword [esp], 0x35
	call Com_GetBspLump
	mov [ebp-0x3c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x14
	mov dword [esp], 0x36
	call Com_GetBspLump
	mov [ebp-0x38], eax
	mov eax, [ebp-0x20]
	lea eax, [eax+eax*4]
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x30], eax
	mov eax, [ebp-0x24]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz R_LoadLightRegions_20
	xor edi, edi
	xor esi, esi
R_LoadLightRegions_40:
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
	jz R_LoadLightRegions_30
	lea eax, [edi+edi*4]
	shl eax, 0x4
	add eax, [ebp-0x30]
	mov [edx+0x4], eax
	movzx eax, byte [ebx]
	add edi, eax
R_LoadLightRegions_30:
	add esi, 0x1
	add ebx, 0x1
	cmp esi, [ebp-0x1c]
	jb R_LoadLightRegions_40
R_LoadLightRegions_20:
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz R_LoadLightRegions_50
R_LoadLightRegions_80:
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
R_LoadLightRegions_50:
	mov esi, [ebp-0x3c]
	mov ebx, [ebp-0x30]
	mov dword [ebp-0x34], 0x0
	xor edi, edi
R_LoadLightRegions_70:
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
	jz R_LoadLightRegions_60
	mov ecx, [ebp-0x34]
	lea eax, [ecx+ecx*4]
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax*4]
R_LoadLightRegions_60:
	mov [ebx+0x4c], eax
	mov eax, [edx]
	add [ebp-0x34], eax
	add edi, 0x1
	add esi, 0x4c
	add ebx, 0x50
	cmp edi, [ebp-0x20]
	jb R_LoadLightRegions_70
	jmp R_LoadLightRegions_80
	nop


;R_FinishLoadingAabbTrees_r(GfxAabbTree*, int)
R_FinishLoadingAabbTrees_r:
R_FinishLoadingAabbTrees_r_40:
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
	jnz R_FinishLoadingAabbTrees_r_10
	movzx eax, word [esi+0x1c]
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	mov eax, s_world
	add ebx, [eax+0x294]
	cmp word [esi+0x1a], 0x0
	jnz R_FinishLoadingAabbTrees_r_20
R_FinishLoadingAabbTrees_r_30:
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_FinishLoadingAabbTrees_r_10:
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
	jle R_FinishLoadingAabbTrees_r_30
	mov ebx, edx
	mov dword [ebp-0x1c], 0x0
R_FinishLoadingAabbTrees_r_50:
	mov edx, edi
	mov eax, ebx
	call R_FinishLoadingAabbTrees_r_40
	mov edi, eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ExpandBounds
	add dword [ebp-0x1c], 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x1c]
	jg R_FinishLoadingAabbTrees_r_50
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_FinishLoadingAabbTrees_r_20:
	mov dword [ebp-0x20], 0x0
R_FinishLoadingAabbTrees_r_60:
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	lea eax, [ebx+0x24]
	mov [esp+0x4], eax
	lea eax, [ebx+0x18]
	mov [esp], eax
	call ExpandBounds
	add dword [ebp-0x20], 0x1
	add ebx, 0x30
	movzx eax, word [esi+0x1a]
	cmp eax, [ebp-0x20]
	jg R_FinishLoadingAabbTrees_r_60
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadAabbTrees(TrisType)
R_LoadAabbTrees:
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
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [ebp-0xc]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	mov [esp], edx
	call Hunk_AllocInternal
	mov edx, eax
	mov [rgl+0x8], eax
	mov eax, [ebp-0xc]
	mov [rgl+0xc], eax
	test eax, eax
	jz R_LoadAabbTrees_10
	mov ecx, ebx
	xor esi, esi
	jmp R_LoadAabbTrees_20
R_LoadAabbTrees_40:
	mov eax, [ecx]
	mov [edx+0x1c], ax
	mov [edx+0x1a], bx
	mov eax, [ecx+0x8]
	mov [edx+0x18], ax
	add esi, 0x1
	add ecx, 0xc
	add edx, 0x2c
	cmp esi, [ebp-0xc]
	jae R_LoadAabbTrees_30
R_LoadAabbTrees_20:
	mov ebx, [ecx+0x4]
	test ebx, ebx
	jnz R_LoadAabbTrees_40
	mov word [edx+0x1c], 0x0
	mov [edx+0x1a], bx
	mov eax, [ecx+0x8]
	mov [edx+0x18], ax
	add esi, 0x1
	add ecx, 0xc
	add edx, 0x2c
	cmp esi, [ebp-0xc]
	jb R_LoadAabbTrees_20
R_LoadAabbTrees_30:
	mov eax, [ebp-0xc]
	test eax, eax
	jz R_LoadAabbTrees_10
	xor ecx, ecx
R_LoadAabbTrees_50:
	lea edx, [ecx+0x1]
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*2]
	mov ecx, [rgl+0x8]
	lea eax, [ecx+eax*4]
	call R_FinishLoadingAabbTrees_r
	mov ecx, eax
	cmp [ebp-0xc], eax
	ja R_LoadAabbTrees_50
R_LoadAabbTrees_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;R_LoadCells(unsigned int, TrisType)
R_LoadCells:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	cmp eax, 0xe
	jbe R_LoadCells_10
	cmp dword [ebp-0x2c], 0x15
	ja R_LoadCells_20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x2c
	mov dword [esp], 0x19
	call Com_GetBspLump
	mov esi, eax
R_LoadCells_90:
	mov eax, [ebp-0x1c]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [esp], eax
	call Hunk_AllocInternal
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
	jz R_LoadCells_30
	xor edi, edi
	jmp R_LoadCells_40
R_LoadCells_60:
	xor eax, eax
	mov [ebx+0x2c], eax
	mov [ebx+0x28], ecx
	mov byte [ebx+0x30], 0x0
	mov dword [ebx+0x34], 0x0
	cmp dword [ebp-0x2c], 0xe
	ja R_LoadCells_50
R_LoadCells_70:
	add esi, 0x34
R_LoadCells_110:
	add ebx, 0x38
	add edi, 0x1
	cmp [ebp-0x1c], edi
	jbe R_LoadCells_30
R_LoadCells_40:
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
	jz R_LoadCells_60
	mov edx, [esi+0x24]
	mov eax, [rgl]
	lea eax, [eax+edx*4]
	mov [ebx+0x2c], eax
	mov [ebx+0x28], ecx
	mov byte [ebx+0x30], 0x0
	mov dword [ebx+0x34], 0x0
	cmp dword [ebp-0x2c], 0xe
	jbe R_LoadCells_70
R_LoadCells_50:
	cmp dword [ebp-0x2c], 0x15
	ja R_LoadCells_80
	add esi, 0x2c
	add ebx, 0x38
	add edi, 0x1
	cmp [ebp-0x1c], edi
	ja R_LoadCells_40
R_LoadCells_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadCells_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x70
	mov dword [esp], 0x19
	call Com_GetBspLump
	mov esi, eax
	jmp R_LoadCells_90
R_LoadCells_80:
	movzx eax, byte [esi+0x2c]
	mov [ebx+0x30], al
	test al, al
	jnz R_LoadCells_100
	mov dword [esp], 0x1
	call Hunk_AllocInternal
	mov [ebx+0x34], eax
	mov byte [ebx+0x30], 0x1
	mov byte [eax], 0x0
	add esi, 0x70
	jmp R_LoadCells_110
R_LoadCells_100:
	movzx eax, byte [esi+0x2c]
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x34], eax
	movzx edx, byte [esi+0x2c]
	lea ecx, [esi+0x2d]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add esi, 0x70
	jmp R_LoadCells_110
R_LoadCells_10:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov dword [esp], 0x19
	call Com_GetBspLump
	mov esi, eax
	jmp R_LoadCells_90


;R_SortNodes_r(mnode_load_t*, mnode_t*)
R_SortNodes_r:
R_SortNodes_r_30:
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
	jz R_SortNodes_r_10
	add eax, 0x1
	mov [esi], ax
	lea eax, [esi+0x2]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SortNodes_r_50:
	mov esi, edi
R_SortNodes_r_10:
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
	jz R_SortNodes_r_20
	mov dword [esp+0x4], _cstring_max_planes_excee
	mov dword [esp], 0x2
	call Com_Error
R_SortNodes_r_20:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	add eax, [rgl+0x14]
	mov edx, edi
	call R_SortNodes_r_30
	mov edi, eax
	sub eax, esi
	sar eax, 1
	mov [esi+0x2], ax
	movzx edx, ax
	cmp eax, edx
	jz R_SortNodes_r_40
	mov dword [esp+0x4], _cstring_max_cells_exceed
	mov dword [esp], 0x2
	call Com_Error
R_SortNodes_r_40:
	mov ebx, [ebx+0xc]
	shl ebx, 0x4
	add ebx, [rgl+0x14]
	mov eax, [ebx]
	cmp eax, 0xfffffffe
	jz R_SortNodes_r_50
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
R_LoadWorldRuntime:
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
R_LoadWorldRuntime_40:
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
	jnz R_LoadWorldRuntime_10
	xor eax, eax
R_LoadWorldRuntime_130:
	mov edx, [ebp-0x1c]
	mov [edx+0x270], eax
	mov eax, [esi+0x154]
	movzx eax, word [eax+0x30]
	test ax, ax
	jnz R_LoadWorldRuntime_20
	xor eax, eax
R_LoadWorldRuntime_120:
	mov edx, [ebp-0x1c]
	mov [edx+0x27c], eax
	mov eax, [ebp-0x2c]
	lea ebx, [eax+esi+0x14]
	mov [ebp-0x20], esi
	mov esi, s_world
	mov edi, [ebp-0x28]
R_LoadWorldRuntime_30:
	mov edx, [ebp-0x20]
	mov eax, [edx+0x2ac]
	shl eax, 0x5
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx], eax
	add dword [ebp-0x20], 0x4
	add ebx, 0xc
	cmp [ebp-0x20], edi
	jnz R_LoadWorldRuntime_30
	add dword [ebp-0x24], 0x1
	add dword [ebp-0x2c], 0x4
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x24], 0x3
	jnz R_LoadWorldRuntime_40
	mov eax, [esi+0x244]
	test eax, eax
	jnz R_LoadWorldRuntime_50
	xor eax, eax
	mov [esi+0x288], eax
	mov eax, [esi+0x154]
	movzx edx, word [eax+0x30]
	mov [esi+0x248], edx
	movzx eax, word [eax+0x34]
	mov [esi+0x24c], eax
	test edx, edx
	jnz R_LoadWorldRuntime_60
R_LoadWorldRuntime_140:
	xor eax, eax
	mov [esi+0x2a0], eax
	mov eax, [esi+0x248]
	test eax, eax
	jnz R_LoadWorldRuntime_70
R_LoadWorldRuntime_150:
	xor eax, eax
	mov [esi+0x2a4], eax
	mov edx, [esi+0xf0]
	test edx, edx
	jnz R_LoadWorldRuntime_80
R_LoadWorldRuntime_160:
	xor eax, eax
	mov [esi+0x220], eax
	mov eax, [esi+0xf0]
	test eax, eax
	jnz R_LoadWorldRuntime_90
R_LoadWorldRuntime_170:
	mov [esi+0xfc], eax
	mov ebx, esi
R_LoadWorldRuntime_110:
	mov eax, [ebx+0x2ac]
	imul eax, [esi+0xf0]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x2bc], eax
	add ebx, 0x4
	cmp [ebp-0x20], ebx
	jnz R_LoadWorldRuntime_100
	mov eax, [esi+0x2b4]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x224], eax
	mov eax, [esi+0x2b8]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x228], eax
	mov eax, [esi+0xd8]
	add eax, 0x1
	mov ebx, [esi+0xdc]
	sub ebx, eax
	mov eax, ebx
	shl eax, 0xc
	shr eax, 0x3
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x22c], eax
	mov dword [esp], 0x0
	call DynEnt_GetEntityCount
	movzx eax, ax
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x238], eax
	mov dword [esp], 0x0
	call DynEnt_GetEntityCount
	movzx eax, ax
	imul eax, ebx
	add eax, 0x1f
	shr eax, 0x5
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x230], eax
	mov dword [esp], 0x1
	call DynEnt_GetEntityCount
	movzx eax, ax
	imul ebx, eax
	add ebx, 0x1f
	shr ebx, 0x5
	shl ebx, 0x2
	mov [esp], ebx
	call Hunk_AllocInternal
	mov [esi+0x234], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadWorldRuntime_100:
	mov esi, s_world
	jmp R_LoadWorldRuntime_110
R_LoadWorldRuntime_20:
	movzx eax, ax
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	jmp R_LoadWorldRuntime_120
R_LoadWorldRuntime_10:
	mov [esp], edx
	call Hunk_AllocInternal
	mov esi, s_world
	jmp R_LoadWorldRuntime_130
R_LoadWorldRuntime_50:
	mov eax, [esi+0x268]
	shl eax, 0x3
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	mov [esi+0x288], eax
	mov eax, [esi+0x154]
	movzx edx, word [eax+0x30]
	mov [esi+0x248], edx
	movzx eax, word [eax+0x34]
	mov [esi+0x24c], eax
	test edx, edx
	jz R_LoadWorldRuntime_140
R_LoadWorldRuntime_60:
	lea eax, [edx*8]
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	mov [esi+0x2a0], eax
	mov eax, [esi+0x248]
	test eax, eax
	jz R_LoadWorldRuntime_150
R_LoadWorldRuntime_70:
	mov eax, [esi+0x26c]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	mov [esi+0x2a4], eax
	mov edx, [esi+0xf0]
	test edx, edx
	jz R_LoadWorldRuntime_160
R_LoadWorldRuntime_80:
	lea eax, [edx+0x1f]
	sar eax, 0x5
	imul edx, eax
	lea eax, [edx*4]
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	mov [esi+0x220], eax
	mov eax, [esi+0xf0]
	test eax, eax
	jz R_LoadWorldRuntime_170
R_LoadWorldRuntime_90:
	shl eax, 0xa
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, s_world
	jmp R_LoadWorldRuntime_170
	nop


;R_IncrementShadowGeometryCount(GfxWorld*, unsigned int, unsigned int)
R_IncrementShadowGeometryCount:
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


;R_StaticModelCompare(GfxStaticModelCombinedInst const&, GfxStaticModelCombinedInst const&)
R_StaticModelCompare:
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
	jnz R_StaticModelCompare_10
	mov eax, esi
	sub eax, ebx
	jnz R_StaticModelCompare_20
	mov eax, [edi+0x38]
	mov edx, [ebp+0xc]
	sub eax, [edx+0x38]
	sar eax, 0x2
	imul eax, eax, 0x586fb587
	test eax, eax
	jnz R_StaticModelCompare_20
	mov ecx, edx
	movzx edx, byte [edi+0x44]
	movzx eax, byte [ecx+0x44]
	sub edx, eax
R_StaticModelCompare_10:
	shr edx, 0x1f
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_StaticModelCompare_20:
	mov edx, eax
	shr edx, 0x1f
	mov eax, edx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_CompareSurfaces(GfxSurface const&, GfxSurface const&)
R_CompareSurfaces:
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
	jnz R_CompareSurfaces_10
	test edx, edx
	jz R_CompareSurfaces_20
R_CompareSurfaces_40:
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
	jnz R_CompareSurfaces_10
	mov eax, [ebp+0x8]
	movzx edx, byte [eax+0x16]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x16]
	sub edx, eax
	jnz R_CompareSurfaces_30
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
	jnz R_CompareSurfaces_10
	mov esi, [ebp+0x8]
	movzx edx, byte [esi+0x15]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x15]
	sub edx, eax
	jnz R_CompareSurfaces_30
	mov ebx, esi
	movzx edx, byte [esi+0x14]
	mov esi, [ebp+0xc]
	movzx eax, byte [esi+0x14]
	sub edx, eax
	jnz R_CompareSurfaces_30
	mov eax, [ebx+0x4]
	sub eax, [esi+0x4]
	jnz R_CompareSurfaces_10
	movzx edx, word [ebx+0x8]
	movzx eax, word [esi+0x8]
	sub edx, eax
R_CompareSurfaces_30:
	shr edx, 0x1f
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CompareSurfaces_10:
	mov edx, eax
	shr edx, 0x1f
	mov eax, edx
	add esp, 0x4
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CompareSurfaces_20:
	xor edx, edx
	cmp dword [ecx+0x20], 0x0
	setnz dl
	xor eax, eax
	cmp dword [esi+0x20], 0x0
	setnz al
	sub edx, eax
	jnz R_CompareSurfaces_30
	jmp R_CompareSurfaces_40
	nop


;R_BuildNoDecalAabbTree_r(GfxAabbTree*, unsigned int)
R_BuildNoDecalAabbTree_r:
R_BuildNoDecalAabbTree_r_20:
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
	jz R_BuildNoDecalAabbTree_r_10
	mov edi, eax
	add edi, [eax+0x28]
	xor ebx, ebx
R_BuildNoDecalAabbTree_r_30:
	movzx edx, bx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	lea eax, [edi+eax*4]
	mov edx, ecx
	call R_BuildNoDecalAabbTree_r_20
	mov ecx, eax
	add ebx, 0x1
	cmp bx, [esi+0x18]
	jb R_BuildNoDecalAabbTree_r_30
R_BuildNoDecalAabbTree_r_40:
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
R_BuildNoDecalAabbTree_r_10:
	movzx edx, word [eax+0x1c]
	mov ebx, s_world
	mov eax, [ebx+0x28c]
	lea edx, [eax+edx*2]
	mov [ebp-0x1c], edx
	cmp word [esi+0x1a], 0x0
	jz R_BuildNoDecalAabbTree_r_40
	xor edi, edi
R_BuildNoDecalAabbTree_r_60:
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
	jnz R_BuildNoDecalAabbTree_r_50
	mov edx, s_world
	mov eax, [edx+0x28c]
	mov [eax+ecx*2], bx
	add ecx, 0x1
R_BuildNoDecalAabbTree_r_50:
	add edi, 0x1
	cmp [esi+0x1a], di
	ja R_BuildNoDecalAabbTree_r_60
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
R_LoadLightGridColors:
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
	call Com_GetBspLump
	mov edi, eax
	mov eax, [esi+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [edx*8+0xa8]
	mov [esp], edx
	call Hunk_AllocInternal
	mov ecx, eax
	mov [esi+0x144], eax
	cmp ebx, 0xa
	ja R_LoadLightGridColors_10
	mov ebx, [esi+0x140]
	test ebx, ebx
	jz R_LoadLightGridColors_20
	mov [ebp-0x40], edi
	mov dword [ebp-0x70], 0x0
	mov dword [ebp-0x44], 0x0
	mov edx, s_world
	mov [ebp-0x74], edx
R_LoadLightGridColors_120:
	mov edx, [ebp-0x44]
	mov eax, [ebp-0x74]
	add edx, [eax+0x144]
	mov [ebp-0x3c], edx
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x60], 0x0
	lea edi, [ebp-0x38]
R_LoadLightGridColors_110:
	cvtsi2ss xmm0, dword [ebp-0x60]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x50], xmm1
	mov dword [ebp-0x64], 0x0
	mov eax, [ebp-0x6c]
	lea eax, [eax+eax*2]
	mov [ebp-0x7c], eax
R_LoadLightGridColors_80:
	cvtsi2ss xmm0, dword [ebp-0x64]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x54], xmm1
	mov dword [ebp-0x68], 0x0
	mov [ebp-0x78], eax
R_LoadLightGridColors_60:
	mov eax, [ebp-0x68]
	sub eax, 0x1
	cmp eax, 0x1
	jbe R_LoadLightGridColors_30
R_LoadLightGridColors_90:
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
R_LoadLightGridColors_50:
	pxor xmm1, xmm1
	mov edx, 0x1
R_LoadLightGridColors_40:
	movzx eax, byte [ecx+edx-0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [edi+edx*4-0x4]
	addss xmm1, xmm0
	add edx, 0x1
	cmp edx, 0x9
	jnz R_LoadLightGridColors_40
	cvttss2si eax, xmm1
	mov [ebx], al
	add ebx, 0x1
	add ecx, 0x8
	sub esi, 0x1
	jnz R_LoadLightGridColors_50
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x7c], 0x3
	add dword [ebp-0x78], 0x3
R_LoadLightGridColors_100:
	add dword [ebp-0x68], 0x1
	cmp dword [ebp-0x68], 0x4
	jnz R_LoadLightGridColors_60
	add dword [ebp-0x64], 0x1
	cmp dword [ebp-0x64], 0x4
	jz R_LoadLightGridColors_70
	mov eax, [ebp-0x7c]
	jmp R_LoadLightGridColors_80
R_LoadLightGridColors_30:
	mov eax, [ebp-0x64]
	test eax, eax
	jle R_LoadLightGridColors_90
	cmp dword [ebp-0x64], 0x2
	jg R_LoadLightGridColors_90
	mov eax, [ebp-0x60]
	test eax, eax
	jle R_LoadLightGridColors_90
	cmp dword [ebp-0x60], 0x2
	jle R_LoadLightGridColors_100
	jmp R_LoadLightGridColors_90
R_LoadLightGridColors_70:
	add dword [ebp-0x60], 0x1
	cmp dword [ebp-0x60], 0x4
	jnz R_LoadLightGridColors_110
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x44], 0xa8
	add dword [ebp-0x40], 0x18
	mov edx, [ebp-0x70]
	mov eax, [ebp-0x74]
	cmp edx, [eax+0x140]
	jb R_LoadLightGridColors_120
R_LoadLightGridColors_190:
	mov edx, [ebp-0x74]
	mov eax, [edx+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov ecx, [ebp-0x74]
	mov eax, [ecx+0x144]
	lea edi, [eax+edx*8]
	xor ebx, ebx
	mov dword [ebp-0x5c], 0x0
R_LoadLightGridColors_160:
	cvtsi2ss xmm0, dword [ebp-0x5c]
	movss xmm1, dword [_float_0_66666669]
	mulss xmm1, xmm0
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x48], xmm1
	xor esi, esi
R_LoadLightGridColors_150:
	cvtsi2ss xmm5, esi
	movss xmm0, dword [_float_0_66666669]
	mulss xmm0, xmm5
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x4c], xmm0
	xor ecx, ecx
R_LoadLightGridColors_140:
	lea eax, [ecx-0x1]
	cmp eax, 0x1
	jbe R_LoadLightGridColors_130
R_LoadLightGridColors_170:
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
R_LoadLightGridColors_180:
	add ecx, 0x1
	cmp ecx, 0x4
	jnz R_LoadLightGridColors_140
	add esi, 0x1
	cmp esi, 0x4
	jnz R_LoadLightGridColors_150
	add dword [ebp-0x5c], 0x1
	cmp dword [ebp-0x5c], 0x4
	jnz R_LoadLightGridColors_160
	mov eax, [ebp-0x74]
	add dword [eax+0x140], 0x1
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadLightGridColors_130:
	test esi, esi
	jle R_LoadLightGridColors_170
	cmp esi, 0x2
	jg R_LoadLightGridColors_170
	mov eax, [ebp-0x5c]
	test eax, eax
	jle R_LoadLightGridColors_170
	cmp dword [ebp-0x5c], 0x2
	jle R_LoadLightGridColors_180
	jmp R_LoadLightGridColors_170
R_LoadLightGridColors_20:
	mov eax, s_world
	mov [ebp-0x74], eax
	jmp R_LoadLightGridColors_190
R_LoadLightGridColors_10:
	mov eax, [esi+0x140]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], ecx
	call Com_Memcpy
	mov [ebp-0x74], esi
	jmp R_LoadLightGridColors_190
	nop


;R_LoadPortals()
R_LoadPortals:
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
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz R_LoadPortals_10
	mov edi, ebx
	mov esi, eax
	mov dword [ebp-0x30], 0x0
R_LoadPortals_20:
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
	call PerpendicularVector
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
	jb R_LoadPortals_20
R_LoadPortals_10:
	mov edx, s_world
	mov ecx, [edx+0xf0]
	test ecx, ecx
	jle R_LoadPortals_30
	xor ebx, ebx
	xor ecx, ecx
	mov edx, s_world
	jmp R_LoadPortals_40
R_LoadPortals_50:
	xor edx, edx
	mov [eax+0x24], edx
	add ebx, 0x1
	add ecx, 0x38
	mov eax, s_world
	cmp ebx, [eax+0xf0]
	jge R_LoadPortals_30
R_LoadPortals_60:
	mov edx, eax
R_LoadPortals_40:
	mov eax, ecx
	add eax, [edx+0x104]
	mov edx, [eax+0x20]
	test edx, edx
	jz R_LoadPortals_50
	mov edx, [ebp-0x2c]
	add edx, [eax+0x24]
	mov [eax+0x24], edx
	add ebx, 0x1
	add ecx, 0x38
	mov eax, s_world
	cmp ebx, [eax+0xf0]
	jl R_LoadPortals_60
R_LoadPortals_30:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_AabbTreeChildrenCount_r(GfxAabbTree*)
R_AabbTreeChildrenCount_r:
R_AabbTreeChildrenCount_r_120:
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
	jz R_AabbTreeChildrenCount_r_10
	mov [ebp-0x20], eax
	mov dword [ebp-0x94], 0x0
	mov dword [ebp-0x98], 0x1
R_AabbTreeChildrenCount_r_300:
	mov eax, [ebp-0x20]
	add eax, [eax+0x28]
	mov edx, [ebp-0x20]
	add edx, 0x18
	mov [ebp-0x1c], edx
	mov edx, [ebp-0x20]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_20
	mov [ebp-0x28], eax
	mov dword [ebp-0x8c], 0x0
	mov dword [ebp-0x90], 0x1
R_AabbTreeChildrenCount_r_260:
	mov eax, [ebp-0x28]
	add eax, [eax+0x28]
	mov edx, [ebp-0x28]
	add edx, 0x18
	mov [ebp-0x24], edx
	mov edx, [ebp-0x28]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_30
	mov [ebp-0x30], eax
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0x88], 0x1
R_AabbTreeChildrenCount_r_250:
	mov eax, [ebp-0x30]
	add eax, [eax+0x28]
	mov edx, [ebp-0x30]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov edx, [ebp-0x30]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_40
	mov [ebp-0x38], eax
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x80], 0x1
R_AabbTreeChildrenCount_r_240:
	mov eax, [ebp-0x38]
	add eax, [eax+0x28]
	mov edx, [ebp-0x38]
	add edx, 0x18
	mov [ebp-0x34], edx
	mov edx, [ebp-0x38]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_50
	mov [ebp-0x40], eax
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x78], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x40]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_60
R_AabbTreeChildrenCount_r_220:
	mov [ebp-0x48], eax
	mov dword [ebp-0x6c], 0x0
	mov dword [ebp-0x70], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	mov edx, [ebp-0x48]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_70
R_AabbTreeChildrenCount_r_190:
	mov [ebp-0x50], eax
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x68], 0x1
	add eax, [eax+0x28]
	mov edx, [ebp-0x50]
	add edx, 0x18
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x50]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_80
R_AabbTreeChildrenCount_r_160:
	mov [ebp-0x58], eax
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x60], 0x1
	jmp R_AabbTreeChildrenCount_r_90
R_AabbTreeChildrenCount_r_110:
	mov edi, 0x1
	add [ebp-0x60], edi
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x2c
	mov edx, [ebp-0x4c]
	movzx eax, word [edx]
	cmp [ebp-0x5c], eax
	jae R_AabbTreeChildrenCount_r_100
R_AabbTreeChildrenCount_r_140:
	mov eax, [ebp-0x58]
R_AabbTreeChildrenCount_r_90:
	add eax, [eax+0x28]
	mov edx, [ebp-0x58]
	add edx, 0x18
	mov [ebp-0x54], edx
	mov edx, [ebp-0x58]
	cmp word [edx+0x18], 0x0
	jz R_AabbTreeChildrenCount_r_110
	mov ebx, eax
	xor esi, esi
	mov edi, 0x1
R_AabbTreeChildrenCount_r_130:
	mov eax, ebx
	call R_AabbTreeChildrenCount_r_120
	add edi, eax
	add esi, 0x1
	add ebx, 0x2c
	mov edx, [ebp-0x54]
	movzx eax, word [edx]
	cmp esi, eax
	jb R_AabbTreeChildrenCount_r_130
	add [ebp-0x60], edi
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x2c
	mov edx, [ebp-0x4c]
	movzx eax, word [edx]
	cmp [ebp-0x5c], eax
	jb R_AabbTreeChildrenCount_r_140
R_AabbTreeChildrenCount_r_100:
	mov eax, [ebp-0x60]
	add [ebp-0x68], eax
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x64], eax
	jae R_AabbTreeChildrenCount_r_150
R_AabbTreeChildrenCount_r_170:
	mov eax, [ebp-0x50]
	add eax, [eax+0x28]
	mov edx, [ebp-0x50]
	add edx, 0x18
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x50]
	cmp word [edx+0x18], 0x0
	jnz R_AabbTreeChildrenCount_r_160
R_AabbTreeChildrenCount_r_80:
	mov dword [ebp-0x60], 0x1
	mov eax, [ebp-0x60]
	add [ebp-0x68], eax
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x2c
	mov edx, [ebp-0x44]
	movzx eax, word [edx]
	cmp [ebp-0x64], eax
	jb R_AabbTreeChildrenCount_r_170
R_AabbTreeChildrenCount_r_150:
	mov eax, [ebp-0x68]
	add [ebp-0x70], eax
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x3c]
	movzx eax, word [edx]
	cmp [ebp-0x6c], eax
	jae R_AabbTreeChildrenCount_r_180
R_AabbTreeChildrenCount_r_200:
	mov eax, [ebp-0x48]
	add eax, [eax+0x28]
	mov edx, [ebp-0x48]
	add edx, 0x18
	mov [ebp-0x44], edx
	mov edx, [ebp-0x48]
	cmp word [edx+0x18], 0x0
	jnz R_AabbTreeChildrenCount_r_190
R_AabbTreeChildrenCount_r_70:
	mov dword [ebp-0x68], 0x1
	mov eax, [ebp-0x68]
	add [ebp-0x70], eax
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x3c]
	movzx eax, word [edx]
	cmp [ebp-0x6c], eax
	jb R_AabbTreeChildrenCount_r_200
R_AabbTreeChildrenCount_r_180:
	mov eax, [ebp-0x70]
	add [ebp-0x78], eax
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x74], eax
	jae R_AabbTreeChildrenCount_r_210
R_AabbTreeChildrenCount_r_230:
	mov eax, [ebp-0x40]
	add eax, [eax+0x28]
	mov edx, [ebp-0x40]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov edx, [ebp-0x40]
	cmp word [edx+0x18], 0x0
	jnz R_AabbTreeChildrenCount_r_220
R_AabbTreeChildrenCount_r_60:
	mov dword [ebp-0x70], 0x1
	mov eax, [ebp-0x70]
	add [ebp-0x78], eax
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x40], 0x2c
	mov edx, [ebp-0x34]
	movzx eax, word [edx]
	cmp [ebp-0x74], eax
	jb R_AabbTreeChildrenCount_r_230
R_AabbTreeChildrenCount_r_210:
	mov eax, [ebp-0x78]
	add [ebp-0x80], eax
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x38], 0x2c
	mov edx, [ebp-0x2c]
	movzx eax, word [edx]
	cmp eax, [ebp-0x7c]
	ja R_AabbTreeChildrenCount_r_240
R_AabbTreeChildrenCount_r_280:
	mov eax, [ebp-0x80]
	add [ebp-0x88], eax
	add dword [ebp-0x84], 0x1
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x24]
	movzx eax, word [edx]
	cmp eax, [ebp-0x84]
	ja R_AabbTreeChildrenCount_r_250
R_AabbTreeChildrenCount_r_290:
	mov eax, [ebp-0x88]
	add [ebp-0x90], eax
	add dword [ebp-0x8c], 0x1
	add dword [ebp-0x28], 0x2c
	mov edx, [ebp-0x1c]
	movzx eax, word [edx]
	cmp eax, [ebp-0x8c]
	ja R_AabbTreeChildrenCount_r_260
	jmp R_AabbTreeChildrenCount_r_270
R_AabbTreeChildrenCount_r_50:
	mov dword [ebp-0x78], 0x1
	jmp R_AabbTreeChildrenCount_r_210
R_AabbTreeChildrenCount_r_40:
	mov dword [ebp-0x80], 0x1
	jmp R_AabbTreeChildrenCount_r_280
R_AabbTreeChildrenCount_r_10:
	mov dword [ebp-0x98], 0x1
R_AabbTreeChildrenCount_r_310:
	mov eax, [ebp-0x98]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AabbTreeChildrenCount_r_30:
	mov dword [ebp-0x88], 0x1
	jmp R_AabbTreeChildrenCount_r_290
R_AabbTreeChildrenCount_r_20:
	mov dword [ebp-0x90], 0x1
R_AabbTreeChildrenCount_r_270:
	mov eax, [ebp-0x90]
	add [ebp-0x98], eax
	add dword [ebp-0x94], 0x1
	add dword [ebp-0x20], 0x2c
	mov edx, [ebp-0x9c]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x94], eax
	jb R_AabbTreeChildrenCount_r_300
	jmp R_AabbTreeChildrenCount_r_310


;R_InitShadowGeometryArrays()
R_InitShadowGeometryArrays:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, s_world
	mov eax, [edx+0x154]
	cmp word [eax+0x30], 0x0
	jz R_InitShadowGeometryArrays_10
	xor ebx, ebx
	xor esi, esi
	mov ecx, s_world
	jmp R_InitShadowGeometryArrays_20
R_InitShadowGeometryArrays_30:
	mov edx, ecx
	add ebx, 0x1
	add esi, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp eax, ebx
	jbe R_InitShadowGeometryArrays_10
R_InitShadowGeometryArrays_40:
	mov ecx, edx
R_InitShadowGeometryArrays_20:
	mov edx, esi
	add edx, [ecx+0x294]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x40
	jz R_InitShadowGeometryArrays_30
	mov dword [esp+0xc], R_IncrementShadowGeometryCount
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], ecx
	call R_ForEachPrimaryLightAffectingSurface
	mov edx, s_world
	add ebx, 0x1
	add esi, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp eax, ebx
	ja R_InitShadowGeometryArrays_40
R_InitShadowGeometryArrays_10:
	mov ecx, edx
	mov eax, [edx+0x23c]
	mov word [eax], 0x0
	mov eax, [edx+0xd8]
	mov edx, [edx+0x23c]
	lea eax, [eax+eax*2]
	mov word [edx+eax*4], 0x0
	mov esi, [ecx+0xdc]
	test esi, esi
	jz R_InitShadowGeometryArrays_50
	xor edi, edi
	xor esi, esi
	jmp R_InitShadowGeometryArrays_60
R_InitShadowGeometryArrays_90:
	movzx eax, word [ebx+0x2]
	test ax, ax
	jnz R_InitShadowGeometryArrays_70
R_InitShadowGeometryArrays_100:
	add edi, 0x1
	add esi, 0xc
	mov edx, s_world
	cmp edi, [edx+0xdc]
	jae R_InitShadowGeometryArrays_80
R_InitShadowGeometryArrays_60:
	mov ebx, esi
	mov eax, s_world
	add ebx, [eax+0x23c]
	movzx eax, word [ebx]
	test ax, ax
	jz R_InitShadowGeometryArrays_90
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x4], eax
	mov word [ebx], 0x0
	movzx eax, word [ebx+0x2]
	test ax, ax
	jz R_InitShadowGeometryArrays_100
R_InitShadowGeometryArrays_70:
	movzx eax, ax
	add eax, eax
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x8], eax
	mov word [ebx+0x2], 0x0
	add edi, 0x1
	add esi, 0xc
	mov edx, s_world
	cmp edi, [edx+0xdc]
	jb R_InitShadowGeometryArrays_60
R_InitShadowGeometryArrays_80:
	mov ecx, s_world
R_InitShadowGeometryArrays_50:
	mov eax, [ecx+0x154]
	cmp word [eax+0x30], 0x0
	jz R_InitShadowGeometryArrays_110
	xor ebx, ebx
	xor esi, esi
	mov eax, s_world
	jmp R_InitShadowGeometryArrays_120
R_InitShadowGeometryArrays_130:
	add ebx, 0x1
	add esi, 0x30
	mov ecx, s_world
	mov eax, [ecx+0x154]
	movzx eax, word [eax+0x30]
	cmp ebx, eax
	jae R_InitShadowGeometryArrays_110
R_InitShadowGeometryArrays_140:
	mov eax, ecx
R_InitShadowGeometryArrays_120:
	mov edx, esi
	add edx, [eax+0x294]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x40
	jz R_InitShadowGeometryArrays_130
	mov dword [esp+0xc], R_AddShadowSurfaceToPrimaryLight
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov edx, s_world
	mov [esp], edx
	call R_ForEachPrimaryLightAffectingSurface
	add ebx, 0x1
	add esi, 0x30
	mov ecx, s_world
	mov eax, [ecx+0x154]
	movzx eax, word [eax+0x30]
	cmp ebx, eax
	jb R_InitShadowGeometryArrays_140
R_InitShadowGeometryArrays_110:
	mov ebx, [ecx+0x244]
	test ebx, ebx
	jz R_InitShadowGeometryArrays_150
	xor ebx, ebx
	xor esi, esi
	mov edx, s_world
	jmp R_InitShadowGeometryArrays_160
R_InitShadowGeometryArrays_180:
	mov edx, eax
R_InitShadowGeometryArrays_160:
	mov eax, [edx+0x29c]
	movzx eax, byte [eax+esi+0x45]
	lea eax, [eax+eax*2]
	mov edx, [edx+0x23c]
	lea edx, [edx+eax*4]
	mov ecx, [edx+0x8]
	test ecx, ecx
	jz R_InitShadowGeometryArrays_170
	movzx eax, word [edx+0x2]
	mov [ecx+eax*2], bx
	add word [edx+0x2], 0x1
R_InitShadowGeometryArrays_170:
	add ebx, 0x1
	add esi, 0x4c
	mov eax, s_world
	cmp ebx, [eax+0x244]
	jb R_InitShadowGeometryArrays_180
R_InitShadowGeometryArrays_150:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_LoadLightmaps(GfxBspLoad*)
R_LoadLightmaps:
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
	call R_LoadTriangleSurfaces
	cmp dword [ebx], 0x6
	ja R_LoadLightmaps_10
	mov dword [ebp-0x28], 0x0
R_LoadLightmaps_490:
	mov esi, [ebp-0x24]
	test esi, esi
	jnz R_LoadLightmaps_20
	mov dword [ebp-0x117c], 0x0
R_LoadLightmaps_460:
	mov eax, [ebp-0x28]
	test eax, eax
	jz R_LoadLightmaps_30
	cmp eax, [ebp-0x117c]
	jz R_LoadLightmaps_30
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_funny_lu
	mov dword [esp], 0x2
	call Com_Error
R_LoadLightmaps_30:
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
	jz R_LoadLightmaps_40
	mov dword [ebp-0x1184], 0x0
R_LoadLightmaps_160:
	mov esi, [ebp-0x24]
	test esi, esi
	jz R_LoadLightmaps_50
	mov edx, [ebp-0x20]
	xor ecx, ecx
	jmp R_LoadLightmaps_60
R_LoadLightmaps_70:
	add ecx, 0x1
	add edx, 0x18
	cmp esi, ecx
	jz R_LoadLightmaps_50
R_LoadLightmaps_60:
	movzx eax, word [edx]
	cmp [ebp-0x1184], eax
	jnz R_LoadLightmaps_70
	movzx eax, byte [edx+0x2]
	movzx ebx, al
	cmp al, 0x1f
	jz R_LoadLightmaps_70
	movzx eax, word [edx+0x10]
	add [ebp+ebx*4-0xcc], eax
	add ecx, 0x1
	add edx, 0x18
	cmp esi, ecx
	jnz R_LoadLightmaps_60
R_LoadLightmaps_50:
	mov eax, [ebp-0x117c]
	test eax, eax
	jz R_LoadLightmaps_80
	mov dword [ebp-0x1180], 0x0
	mov ecx, [ebp-0x1180]
	jmp R_LoadLightmaps_90
R_LoadLightmaps_100:
	add ecx, 0x1
	mov [ebp-0x1154], ecx
	mov edi, ecx
	cmp [ebp-0x117c], edi
	jbe R_LoadLightmaps_80
R_LoadLightmaps_150:
	mov [ebp-0x1180], edi
	mov ecx, edi
R_LoadLightmaps_90:
	mov eax, [ebp+ecx*4-0xcc]
	test eax, eax
	jz R_LoadLightmaps_100
	mov ebx, ecx
	add ebx, 0x1
	mov [ebp-0x1154], ebx
	cmp [ebp-0x117c], ebx
	jbe R_LoadLightmaps_110
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
R_LoadLightmaps_140:
	mov eax, [ebx]
	test eax, eax
	jz R_LoadLightmaps_120
	mov ecx, [ebp-0x1180]
	add eax, [ebp+ecx*4-0xcc]
	add eax, [edx]
	mov [edx], eax
	test eax, eax
	js R_LoadLightmaps_130
R_LoadLightmaps_390:
	mov ecx, [ebp-0x11cc]
	mov [ecx+esi], eax
R_LoadLightmaps_120:
	add edi, 0x1
	add ebx, 0x4
	add esi, 0x7c
	add edx, 0x4
	cmp [ebp-0x11ec], edi
	jnz R_LoadLightmaps_140
R_LoadLightmaps_110:
	mov ebx, [ebp-0x1180]
	mov dword [ebp+ebx*4-0xcc], 0x0
	mov edi, [ebp-0x1154]
	cmp [ebp-0x117c], edi
	ja R_LoadLightmaps_150
R_LoadLightmaps_80:
	add dword [ebp-0x1184], 0x1
	mov edx, [ebp-0x1184]
	mov eax, [ebp-0x11c8]
	cmp edx, [eax+0xc]
	jb R_LoadLightmaps_160
R_LoadLightmaps_40:
	mov eax, [ebp-0x24]
	test eax, eax
	jz R_LoadLightmaps_170
	mov eax, [ebp-0x20]
	mov ecx, [ebp-0x11c8]
	cmp dword [ecx], 0xe
	jbe R_LoadLightmaps_180
R_LoadLightmaps_170:
	cld
	xor eax, eax
	mov ecx, 0x7
	lea edi, [ebp-0x4f]
	rep stosd
	stosw
	stosb
	mov edi, [ebp-0x117c]
	test edi, edi
	jle R_LoadLightmaps_190
	mov dword [ebp-0x1198], 0x2
	mov dword [ebp-0x1194], 0x2
	mov dword [ebp-0x119c], 0x0
	mov dword [ebp-0x118c], 0x0
	lea ebx, [ebp-0x240]
	mov [ebp-0x115c], ebx
	mov eax, [ebp-0x117c]
R_LoadLightmaps_380:
	sub eax, [ebp-0x119c]
R_LoadLightmaps_400:
	mov edx, [ebp-0x1194]
	imul edx, [ebp-0x1198]
	mov [ebp-0x11a0], edx
	cmp eax, edx
	jge R_LoadLightmaps_200
R_LoadLightmaps_220:
	mov edi, [ebp-0x1198]
	cmp [ebp-0x1194], edi
	jg R_LoadLightmaps_210
	sar edi, 1
	mov [ebp-0x1198], edi
	mov edx, [ebp-0x1194]
	imul edx, [ebp-0x1198]
	mov [ebp-0x11a0], edx
	cmp eax, edx
	jl R_LoadLightmaps_220
R_LoadLightmaps_200:
	sub edx, 0x1
	jle R_LoadLightmaps_230
	mov dword [ebp-0x1150], 0x0
	mov edi, 0x1f
	mov dword [ebp-0x1188], 0x1f
	mov ecx, [ebp-0x1150]
	cmp byte [ebp+ecx-0x4f], 0x0
	jz R_LoadLightmaps_240
R_LoadLightmaps_260:
	add ecx, 0x1
	mov [ebp-0x114c], ecx
	cmp [ebp-0x117c], ecx
	jle R_LoadLightmaps_250
R_LoadLightmaps_300:
	mov [ebp-0x1150], ecx
	cmp byte [ebp+ecx-0x4f], 0x0
	jnz R_LoadLightmaps_260
R_LoadLightmaps_240:
	mov ebx, ecx
	add ebx, 0x1
	mov [ebp-0x114c], ebx
	cmp [ebp-0x117c], ebx
	jle R_LoadLightmaps_250
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
R_LoadLightmaps_290:
	cmp byte [ebx], 0x0
	jnz R_LoadLightmaps_270
	cmp dword [ebp-0x1188], 0x1f
	jz R_LoadLightmaps_280
	mov eax, [ebp-0x1188]
	shl eax, 0x5
	sub eax, [ebp-0x1188]
	add eax, edi
	mov edx, [esi]
	cmp edx, [ebp+eax*4-0x1144]
	jle R_LoadLightmaps_270
R_LoadLightmaps_280:
	mov edx, [ebp-0x1150]
	mov [ebp-0x1188], edx
	mov edi, ecx
R_LoadLightmaps_270:
	add ecx, 0x1
	add ebx, 0x1
	add esi, 0x4
	cmp ecx, [ebp-0x11d0]
	jnz R_LoadLightmaps_290
	mov ecx, [ebp-0x114c]
	cmp [ebp-0x117c], ecx
	jg R_LoadLightmaps_300
R_LoadLightmaps_250:
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
	jle R_LoadLightmaps_310
	shl ebx, 0x2
	mov [ebp-0x1160], ebx
	mov dword [ebp-0x1190], 0x2
R_LoadLightmaps_360:
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
R_LoadLightmaps_320:
	mov eax, [esi]
	add eax, [edx]
	mov [esi], eax
	mov [ebx], eax
	add ecx, 0x1
	add esi, 0x4
	add edx, 0x4
	add ebx, 0x7c
	cmp [ebp-0x117c], ecx
	jnz R_LoadLightmaps_320
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
R_LoadLightmaps_350:
	cmp byte [ebx+ebp-0x4f], 0x0
	jnz R_LoadLightmaps_330
	cmp edi, 0x1f
	jz R_LoadLightmaps_340
	lea edx, [esi+edi]
	mov eax, [ecx]
	cmp eax, [ebp+edx*4-0x1144]
	jg R_LoadLightmaps_340
R_LoadLightmaps_330:
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x117c], ebx
	jnz R_LoadLightmaps_350
R_LoadLightmaps_410:
	mov ecx, [ebp-0x1160]
	mov [ebp+ecx-0x148], edi
	add dword [ebp-0x119c], 0x1
	mov byte [ebp+edi-0x4f], 0x1
	add dword [ebp-0x1190], 0x1
	add ecx, 0x4
	mov [ebp-0x1160], ecx
	mov ebx, [ebp-0x11a0]
	cmp [ebp-0x1190], ebx
	jnz R_LoadLightmaps_360
R_LoadLightmaps_310:
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
	jge R_LoadLightmaps_370
	mov eax, ebx
	jmp R_LoadLightmaps_380
R_LoadLightmaps_130:
	mov eax, 0x7fffffff
	mov dword [edx], 0x7fffffff
	jmp R_LoadLightmaps_390
R_LoadLightmaps_210:
	sar dword [ebp-0x1194], 1
	jmp R_LoadLightmaps_400
R_LoadLightmaps_340:
	mov edi, ebx
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x117c], ebx
	jnz R_LoadLightmaps_350
	jmp R_LoadLightmaps_410
R_LoadLightmaps_230:
	cmp byte [ebp-0x4f], 0x0
	jnz R_LoadLightmaps_420
	xor eax, eax
R_LoadLightmaps_480:
	mov edi, [ebp-0x119c]
	mov [ebp+edi*4-0x148], eax
	add edi, 0x1
	mov [ebp-0x119c], edi
	mov byte [ebp+eax-0x4f], 0x1
	jmp R_LoadLightmaps_310
R_LoadLightmaps_190:
	mov dword [ebp-0x118c], 0x0
R_LoadLightmaps_370:
	mov edi, [ebp-0x117c]
	mov [esp+0xc], edi
	mov eax, [ebp-0x118c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_i_merged_lightma
	mov dword [esp], 0x8
	call Com_Printf
	test edi, edi
	jnz R_LoadLightmaps_430
	mov eax, s_world
	mov dword [eax+0x108], 0x0
R_LoadLightmaps_520:
	add esp, 0x120c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadLightmaps_20:
	mov ecx, [ebp-0x20]
	xor ebx, ebx
	mov dword [ebp-0x117c], 0x0
R_LoadLightmaps_450:
	movzx eax, byte [ecx+0x2]
	movzx edx, al
	cmp al, 0x1f
	jz R_LoadLightmaps_440
	lea eax, [edx+0x1]
	cmp [ebp-0x117c], edx
	cmova eax, [ebp-0x117c]
	mov [ebp-0x117c], eax
R_LoadLightmaps_440:
	add ebx, 0x1
	add ecx, 0x18
	cmp ebx, esi
	jnz R_LoadLightmaps_450
	jmp R_LoadLightmaps_460
R_LoadLightmaps_420:
	xor eax, eax
R_LoadLightmaps_470:
	add eax, 0x1
	cmp [ebp-0x117c], eax
	jz R_LoadLightmaps_310
	cmp byte [ebp+eax-0x4f], 0x0
	jnz R_LoadLightmaps_470
	jmp R_LoadLightmaps_480
R_LoadLightmaps_10:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_olprio_pain
	mov dword [esp], 0x1
	call Com_GetBspLump
	jmp R_LoadLightmaps_490
R_LoadLightmaps_430:
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
	call Com_GetBspLump
	mov [ebp-0x11c0], eax
	xor eax, eax
	mov edx, [ebp-0x11c8]
	cmp dword [edx], 0x6
	cmova eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	test eax, eax
	jz R_LoadLightmaps_500
R_LoadLightmaps_620:
	mov dword [esp], 0x100
	call Hunk_AllocInternal
	mov ebx, s_world
	mov [ebx+0x10c], eax
	mov esi, [ebp-0x117c]
	test esi, esi
	jg R_LoadLightmaps_510
	xor eax, eax
R_LoadLightmaps_610:
	mov [ebx+0x108], eax
	mov edi, [ebp-0x11b8]
	mov [esp], edi
	call Hunk_FreeTempMemory
	mov eax, [ebx+0x108]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x148], eax
	mov eax, [ebx+0x108]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x14c], eax
	jmp R_LoadLightmaps_520
R_LoadLightmaps_180:
	mov [esp], eax
	call Hunk_FreeTempMemory
	jmp R_LoadLightmaps_170
R_LoadLightmaps_510:
	mov dword [ebp-0x11ac], 0x0
	mov dword [ebp-0x1164], 0x0
	mov [ebp-0x11dc], ebx
R_LoadLightmaps_600:
	movzx ebx, byte [ebp-0x1164]
	mov [ebp-0x1155], bl
	movzx edi, bl
	mov [ebp-0x11c4], edi
	mov esi, [ebp+edi*8-0x240]
	mov eax, esi
	imul eax, [ebp+edi*8-0x23c]
	mov [ebp-0x11a4], eax
	test eax, eax
	jle R_LoadLightmaps_530
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
	jz R_LoadLightmaps_540
R_LoadLightmaps_580:
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
R_LoadLightmaps_550:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], esi
	mov [esp], edi
	call Com_Memcpy
	add esi, 0x800
	add edi, [ebp-0x1170]
	add ebx, 0x1
	cmp ebx, 0x200
	jnz R_LoadLightmaps_550
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
R_LoadLightmaps_560:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], edi
	mov [esp], esi
	call Com_Memcpy
	add edi, 0x800
	add esi, [ebp-0x116c]
	add ebx, 0x1
	cmp ebx, 0x200
	jnz R_LoadLightmaps_560
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
R_LoadLightmaps_570:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	mov [esp], esi
	call Com_Memcpy
	add edi, 0x400
	add esi, [ebp-0x1174]
	add ebx, 0x1
	cmp ebx, 0x400
	jnz R_LoadLightmaps_570
	mov edi, [ebp-0x11b0]
R_LoadLightmaps_590:
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
	jz R_LoadLightmaps_530
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
	jnz R_LoadLightmaps_580
R_LoadLightmaps_540:
	mov edi, ebx
	jmp R_LoadLightmaps_590
R_LoadLightmaps_530:
	mov edx, [ebp-0x11b4]
	mov [ebp-0x30], edx
	mov ecx, [ebp-0x11c4]
	mov eax, [ebp+ecx*8-0x240]
	mov [ebp-0x2c], eax
	lea ebx, [ebp-0x30]
	mov [esp+0x4], ebx
	mov eax, R_CopyLightDefAttenuationImage
	mov [esp], eax
	call R_EnumLightDefs
	movzx ebx, byte [ebp-0x1155]
	shl ebx, 0x3
	mov esi, ebx
	mov edi, [ebp-0x11dc]
	add esi, [edi+0x10c]
	mov eax, [ebp-0x11c4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_lightmapi_primar
	call va
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call Image_Alloc
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
	call Image_Generate2D
	mov esi, ebx
	add esi, [edi+0x10c]
	mov edi, [ebp-0x11c4]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_lightmapi_second
	call va
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call Image_Alloc
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
	call Image_Generate2D
	mov ecx, [ebp-0x11a4]
	add [ebp-0x11ac], ecx
	add dword [ebp-0x1164], 0x1
	mov ebx, [ebp-0x11ac]
	cmp [ebp-0x117c], ebx
	jg R_LoadLightmaps_600
	movzx eax, byte [ebp-0x1164]
	mov ebx, [ebp-0x11dc]
	jmp R_LoadLightmaps_610
R_LoadLightmaps_500:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xff
	mov ecx, [ebp-0x11b8]
	mov [esp], ecx
	call memset
	jmp R_LoadLightmaps_620


;R_SortSurfaces()
R_SortSurfaces:
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
	jnz R_SortSurfaces_10
	mov dword [edx+0x28c], 0x0
R_SortSurfaces_250:
	test edi, edi
	jle R_SortSurfaces_20
	xor ebx, ebx
	xor esi, esi
R_SortSurfaces_30:
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
	jnz R_SortSurfaces_30
R_SortSurfaces_20:
	mov edx, s_world
	mov ebx, [edx+0x294]
	lea eax, [edi+edi*2]
	shl eax, 0x4
	lea esi, [ebx+eax]
	cmp ebx, esi
	jz R_SortSurfaces_40
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
	jz R_SortSurfaces_50
	xor edx, edx
R_SortSurfaces_60:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_SortSurfaces_60
	lea eax, [edx+edx]
R_SortSurfaces_260:
	mov dword [esp+0xc], R_CompareSurfaces
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt16__introsort_loopIP10GfxSurfaceiPFhRKS0_S3_EEvT_S6_T0_T1_
	mov dword [esp+0x8], R_CompareSurfaces
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZSt22__final_insertion_sortIP10GfxSurfacePFhRKS0_S3_EEvT_S6_T0_
R_SortSurfaces_40:
	test edi, edi
	jle R_SortSurfaces_70
	xor ebx, ebx
	xor esi, esi
	mov eax, s_world
	jmp R_SortSurfaces_80
R_SortSurfaces_90:
	mov eax, ecx
R_SortSurfaces_80:
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
	jnz R_SortSurfaces_90
	mov edx, ecx
R_SortSurfaces_240:
	mov eax, [edx+0x154]
	movzx edi, word [eax+0x30]
	mov dword [edx+0x250], 0x0
	test edi, edi
	jg R_SortSurfaces_100
R_SortSurfaces_170:
	xor esi, esi
	xor ebx, ebx
R_SortSurfaces_190:
	mov ecx, s_world
	mov [ecx+0x254], ebx
	mov [ecx+0x258], ebx
	cmp edi, esi
	jle R_SortSurfaces_110
	mov edx, [ecx+0x294]
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	cmp dword [eax+0x40], 0x0
	jz R_SortSurfaces_120
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz R_SortSurfaces_110
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ecx, [edx+eax+0x40]
	mov edx, esi
R_SortSurfaces_150:
	add edx, 0x1
	cmp edx, edi
	jz R_SortSurfaces_130
	mov ebx, edx
	mov eax, [ecx]
	mov esi, [eax+0x40]
	test esi, esi
	jz R_SortSurfaces_140
	add ecx, 0x30
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jnz R_SortSurfaces_150
R_SortSurfaces_140:
	mov esi, edx
	mov eax, s_world
	mov [eax+0x25c], ebx
	mov [eax+0x260], ebx
	cmp edi, esi
	jg R_SortSurfaces_160
R_SortSurfaces_210:
	mov edx, s_world
	mov [edx+0x264], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SortSurfaces_100:
	mov ecx, [edx+0x294]
	mov edx, [ecx+0x10]
	mov ebx, [edx+0x40]
	test ebx, ebx
	jz R_SortSurfaces_170
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz R_SortSurfaces_170
	cmp byte [edx+0x5], 0x17
	ja R_SortSurfaces_170
	add ecx, 0x40
	xor esi, esi
	jmp R_SortSurfaces_180
R_SortSurfaces_200:
	mov ebx, esi
	mov edx, [ecx]
	mov eax, [edx+0x40]
	test eax, eax
	jz R_SortSurfaces_190
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x28]
	test eax, eax
	jz R_SortSurfaces_190
	add ecx, 0x30
	cmp byte [edx+0x5], 0x17
	ja R_SortSurfaces_190
R_SortSurfaces_180:
	add esi, 0x1
	cmp edi, esi
	jnz R_SortSurfaces_200
	mov ebx, esi
	jmp R_SortSurfaces_190
R_SortSurfaces_110:
	mov eax, s_world
R_SortSurfaces_270:
	mov [eax+0x25c], ebx
	mov [eax+0x260], ebx
	cmp edi, esi
	jle R_SortSurfaces_210
R_SortSurfaces_160:
	mov edx, [eax+0x294]
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	mov eax, [eax+edx+0x10]
	mov ecx, [eax+0x40]
	test ecx, ecx
	jz R_SortSurfaces_210
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov ecx, [eax+0x20]
	test ecx, ecx
	jz R_SortSurfaces_210
	lea eax, [esi+esi*2]
	shl eax, 0x4
	lea ecx, [eax+edx+0x40]
	mov edx, esi
R_SortSurfaces_230:
	add edx, 0x1
	cmp edx, edi
	jz R_SortSurfaces_220
	mov ebx, edx
	mov eax, [ecx]
	mov esi, [eax+0x40]
	test esi, esi
	jz R_SortSurfaces_210
	add ecx, 0x30
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov esi, [eax+0x20]
	test esi, esi
	jnz R_SortSurfaces_230
	mov edx, s_world
	mov [edx+0x264], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SortSurfaces_70:
	mov edx, s_world
	jmp R_SortSurfaces_240
R_SortSurfaces_10:
	lea eax, [edi*4]
	mov [esp], eax
	call Hunk_AllocInternal
	mov ecx, s_world
	mov [ecx+0x28c], eax
	jmp R_SortSurfaces_250
R_SortSurfaces_50:
	and eax, 0xffffff00
	jmp R_SortSurfaces_260
R_SortSurfaces_120:
	mov eax, ecx
	jmp R_SortSurfaces_270
R_SortSurfaces_220:
	mov ebx, edx
	jmp R_SortSurfaces_210
R_SortSurfaces_130:
	mov esi, edx
	mov ebx, edx
	mov eax, s_world
	jmp R_SortSurfaces_270


;R_AabbTreeMove_r(GfxAabbTree*, GfxAabbTree*, GfxAabbTree*)
R_AabbTreeMove_r:
R_AabbTreeMove_r_120:
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
	jz R_AabbTreeMove_r_10
	mov [ebp-0x24], esi
	mov [ebp-0x20], ebx
	mov dword [ebp-0x80], 0x0
	mov [ebp-0xa0], esi
R_AabbTreeMove_r_260:
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
	jz R_AabbTreeMove_r_20
	mov [ebp-0x2c], ebx
	mov [ebp-0x28], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x7c], 0x0
	mov [ebp-0x9c], ebx
R_AabbTreeMove_r_230:
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
	jz R_AabbTreeMove_r_30
	mov [ebp-0x34], ebx
	mov [ebp-0x30], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x78], 0x0
	mov [ebp-0x98], ebx
R_AabbTreeMove_r_220:
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
	jz R_AabbTreeMove_r_40
	mov [ebp-0x3c], ebx
	mov [ebp-0x38], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x74], 0x0
	mov [ebp-0x94], ebx
R_AabbTreeMove_r_210:
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
	jz R_AabbTreeMove_r_50
	mov [ebp-0x44], ebx
	mov [ebp-0x40], esi
	mov [ebp-0x1c], eax
	mov dword [ebp-0x70], 0x0
	mov [ebp-0x90], ebx
	mov edx, ebx
	mov ecx, esi
R_AabbTreeMove_r_200:
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
	jz R_AabbTreeMove_r_60
	mov [ebp-0x4c], esi
	mov [ebp-0x48], eax
	mov dword [ebp-0x6c], 0x0
	mov [ebp-0x8c], esi
	mov edx, esi
	mov ecx, eax
R_AabbTreeMove_r_180:
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
	jz R_AabbTreeMove_r_70
	mov [ebp-0x54], esi
	mov [ebp-0x50], ebx
	mov dword [ebp-0x68], 0x0
	mov [ebp-0x88], esi
	mov edx, ebx
R_AabbTreeMove_r_150:
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
	jz R_AabbTreeMove_r_80
	mov [ebp-0x5c], ebx
	mov [ebp-0x58], eax
	mov dword [ebp-0x64], 0x0
	mov edx, eax
	jmp R_AabbTreeMove_r_90
R_AabbTreeMove_r_110:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x5c], 0x2c
	add ebx, 0x2c
	add dword [ebp-0x58], 0x2c
	mov ecx, [ebp-0x88]
	movzx eax, word [ecx+0x18]
	cmp [ebp-0x64], eax
	jae R_AabbTreeMove_r_100
R_AabbTreeMove_r_140:
	mov esi, [ebp-0x1c]
	mov edx, [ebp-0x58]
R_AabbTreeMove_r_90:
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
	jz R_AabbTreeMove_r_110
	mov dword [ebp-0x60], 0x0
R_AabbTreeMove_r_130:
	mov ecx, [ebp-0x1c]
	mov edx, esi
	mov eax, edi
	call R_AabbTreeMove_r_120
	mov [ebp-0x1c], eax
	add dword [ebp-0x60], 0x1
	add edi, 0x2c
	add esi, 0x2c
	movzx eax, word [ebx+0x18]
	cmp [ebp-0x60], eax
	jb R_AabbTreeMove_r_130
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x5c], 0x2c
	add ebx, 0x2c
	add dword [ebp-0x58], 0x2c
	mov ecx, [ebp-0x88]
	movzx eax, word [ecx+0x18]
	cmp [ebp-0x64], eax
	jb R_AabbTreeMove_r_140
R_AabbTreeMove_r_100:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x54], 0x2c
	add dword [ebp-0x88], 0x2c
	add dword [ebp-0x50], 0x2c
	mov esi, [ebp-0x8c]
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x68]
	jbe R_AabbTreeMove_r_70
R_AabbTreeMove_r_160:
	mov esi, [ebp-0x88]
	mov edx, [ebp-0x50]
	jmp R_AabbTreeMove_r_150
R_AabbTreeMove_r_80:
	mov [ebp-0x1c], esi
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x54], 0x2c
	add dword [ebp-0x88], 0x2c
	add dword [ebp-0x50], 0x2c
	mov esi, [ebp-0x8c]
	movzx eax, word [esi+0x18]
	cmp eax, [ebp-0x68]
	ja R_AabbTreeMove_r_160
R_AabbTreeMove_r_70:
	add dword [ebp-0x6c], 0x1
	add dword [ebp-0x4c], 0x2c
	add dword [ebp-0x8c], 0x2c
	add dword [ebp-0x48], 0x2c
	mov edx, [ebp-0x90]
	movzx eax, word [edx+0x18]
	cmp eax, [ebp-0x6c]
	jbe R_AabbTreeMove_r_170
	mov ebx, [ebp-0x1c]
	mov edx, [ebp-0x8c]
	mov ecx, [ebp-0x48]
	jmp R_AabbTreeMove_r_180
R_AabbTreeMove_r_60:
	mov [ebp-0x1c], ebx
R_AabbTreeMove_r_170:
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x44], 0x2c
	add dword [ebp-0x90], 0x2c
	add dword [ebp-0x40], 0x2c
	mov ecx, [ebp-0x94]
	movzx eax, word [ecx+0x18]
	cmp eax, [ebp-0x70]
	jbe R_AabbTreeMove_r_190
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x40]
	jmp R_AabbTreeMove_r_200
R_AabbTreeMove_r_50:
	mov [ebp-0x1c], eax
R_AabbTreeMove_r_190:
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x3c], 0x2c
	add dword [ebp-0x94], 0x2c
	add dword [ebp-0x38], 0x2c
	mov esi, [ebp-0x98]
	movzx eax, word [esi+0x18]
	cmp [ebp-0x74], eax
	jb R_AabbTreeMove_r_210
R_AabbTreeMove_r_250:
	add dword [ebp-0x78], 0x1
	add dword [ebp-0x34], 0x2c
	add dword [ebp-0x98], 0x2c
	add dword [ebp-0x30], 0x2c
	mov edx, [ebp-0x9c]
	movzx eax, word [edx+0x18]
	cmp [ebp-0x78], eax
	jb R_AabbTreeMove_r_220
R_AabbTreeMove_r_270:
	add dword [ebp-0x7c], 0x1
	add dword [ebp-0x2c], 0x2c
	add dword [ebp-0x9c], 0x2c
	add dword [ebp-0x28], 0x2c
	mov ecx, [ebp-0xa0]
	movzx eax, word [ecx+0x18]
	cmp eax, [ebp-0x7c]
	ja R_AabbTreeMove_r_230
	jmp R_AabbTreeMove_r_240
R_AabbTreeMove_r_40:
	mov [ebp-0x1c], eax
	jmp R_AabbTreeMove_r_250
R_AabbTreeMove_r_20:
	mov [ebp-0x1c], eax
R_AabbTreeMove_r_240:
	add dword [ebp-0x80], 0x1
	add dword [ebp-0x24], 0x2c
	add dword [ebp-0xa0], 0x2c
	add dword [ebp-0x20], 0x2c
	mov esi, [ebp-0x84]
	movzx eax, word [esi+0x18]
	cmp [ebp-0x80], eax
	jb R_AabbTreeMove_r_260
R_AabbTreeMove_r_10:
	mov eax, [ebp-0x1c]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AabbTreeMove_r_30:
	mov [ebp-0x1c], eax
	jmp R_AabbTreeMove_r_270


;R_PostLoadEntities()
R_PostLoadEntities:
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
	jz R_PostLoadEntities_10
	mov ebx, eax
	mov dword [ebp-0x114], 0x0
	mov dword [ebp-0xf4], 0x0
	xor esi, esi
R_PostLoadEntities_20:
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
	jb R_PostLoadEntities_20
R_PostLoadEntities_10:
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x110]
	lea eax, [edx+eax*8]
	mov [ebp-0x10c], eax
	cmp edx, eax
	jz R_PostLoadEntities_30
	mov ebx, eax
	sub ebx, edx
	mov eax, ebx
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	cmp eax, 0x1
	jz R_PostLoadEntities_40
	xor edx, edx
R_PostLoadEntities_50:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_PostLoadEntities_50
	lea eax, [edx+edx]
R_PostLoadEntities_300:
	mov dword [esp+0xc], R_StaticModelCompare
	mov [esp+0x8], eax
	mov ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x110]
	mov [esp], eax
	call _ZSt16__introsort_loopIP26GfxStaticModelCombinedInstiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0x6e7
	jle R_PostLoadEntities_60
	mov edi, [ebp-0x110]
	add edi, 0x680
	mov dword [esp+0x8], R_StaticModelCompare
	mov [esp+0x4], edi
	mov edx, [ebp-0x110]
	mov [esp], edx
	call _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_
	cmp [ebp-0x10c], edi
	jz R_PostLoadEntities_30
R_PostLoadEntities_90:
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
	jmp R_PostLoadEntities_70
R_PostLoadEntities_80:
	mov dword [esp+0x8], 0x68
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	mov esi, ebx
	sub ebx, 0x68
R_PostLoadEntities_70:
	mov [esp+0x4], ebx
	lea ecx, [ebp-0xe8]
	mov [esp], ecx
	call R_StaticModelCompare
	test al, al
	jnz R_PostLoadEntities_80
	mov dword [esp+0x8], 0x68
	lea eax, [ebp-0xe8]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	add edi, 0x68
	cmp [ebp-0x10c], edi
	jnz R_PostLoadEntities_90
R_PostLoadEntities_30:
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edi, [eax+0x244]
	test edi, edi
	jz R_PostLoadEntities_100
	mov ebx, [ebp-0x110]
	mov dword [ebp-0xec], 0x0
	xor edi, edi
	xor esi, esi
	mov ecx, [ebp-0x118]
	jmp R_PostLoadEntities_110
R_PostLoadEntities_120:
	mov edx, s_world
	mov [ebp-0x118], edx
	mov ecx, edx
R_PostLoadEntities_110:
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
	jb R_PostLoadEntities_120
R_PostLoadEntities_100:
	mov eax, [ebp-0x110]
	mov [esp], eax
	call Z_FreeInternal
	mov edx, s_world
	mov [ebp-0x118], edx
	mov esi, [edx+0x244]
	test esi, esi
	jnz R_PostLoadEntities_130
	mov ecx, edx
R_PostLoadEntities_290:
	mov ebx, [ecx+0xf0]
	test ebx, ebx
	jg R_PostLoadEntities_140
R_PostLoadEntities_250:
	call Hunk_ClearTempMemory
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edx, [eax+0xf0]
	test edx, edx
	jle R_PostLoadEntities_150
	mov dword [ebp-0xf0], 0x0
	mov dword [ebp-0xf8], 0x0
	mov [ebp-0x11c], eax
	mov edx, [ebp-0x118]
	jmp R_PostLoadEntities_160
R_PostLoadEntities_180:
	mov dword [ebp-0x104], 0x1
	mov edx, 0x1
	mov ecx, [ebp-0x104]
R_PostLoadEntities_200:
	mov eax, [ebp-0x108]
	mov [eax+0x18], ecx
	mov dword [esp+0x4], 0x4
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocAlignInternal
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
	jnz R_PostLoadEntities_170
R_PostLoadEntities_220:
	mov eax, [ebp-0x100]
	mov ecx, [ebp-0x108]
	mov [ecx+0x1c], eax
	add dword [ebp-0xf0], 0x1
	add dword [ebp-0xf8], 0x38
	mov edx, [ebp-0x11c]
	mov [ebp-0x118], edx
	mov ecx, [ebp-0xf0]
	cmp ecx, [edx+0xf0]
	jge R_PostLoadEntities_150
R_PostLoadEntities_160:
	mov ecx, [ebp-0xf8]
	add ecx, [edx+0x104]
	mov [ebp-0x108], ecx
	mov esi, [ecx+0x1c]
	mov eax, esi
	add eax, [esi+0x28]
	cmp word [esi+0x18], 0x0
	jz R_PostLoadEntities_180
	mov ebx, eax
	xor edi, edi
	mov dword [ebp-0x104], 0x1
R_PostLoadEntities_190:
	mov eax, ebx
	call R_AabbTreeChildrenCount_r
	add [ebp-0x104], eax
	add edi, 0x1
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp edi, eax
	jb R_PostLoadEntities_190
	mov edx, [ebp-0x104]
	mov ecx, edx
	jmp R_PostLoadEntities_200
R_PostLoadEntities_170:
	mov dword [ebp-0xfc], 0x0
R_PostLoadEntities_210:
	mov ecx, edx
	mov edx, ebx
	mov eax, edi
	call R_AabbTreeMove_r
	mov edx, eax
	add dword [ebp-0xfc], 0x1
	add edi, 0x2c
	add ebx, 0x2c
	movzx eax, word [esi+0x18]
	cmp [ebp-0xfc], eax
	jb R_PostLoadEntities_210
	jmp R_PostLoadEntities_220
R_PostLoadEntities_150:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_PostLoadEntities_60:
	mov dword [esp+0x8], R_StaticModelCompare
	mov edx, [ebp-0x10c]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x110]
	mov [esp], ecx
	call _ZSt16__insertion_sortIP26GfxStaticModelCombinedInstPFhRKS0_S3_EEvT_S6_T0_
	jmp R_PostLoadEntities_30
R_PostLoadEntities_140:
	xor esi, esi
	xor ebx, ebx
	mov edx, [ebp-0x118]
	jmp R_PostLoadEntities_230
R_PostLoadEntities_240:
	mov eax, s_world
	mov [ebp-0x118], eax
	mov edx, eax
R_PostLoadEntities_230:
	mov eax, [edx+0x104]
	mov eax, [eax+ebx+0x1c]
	mov [esp], eax
	call R_AllocStaticModels
	add esi, 0x1
	add ebx, 0x38
	mov ecx, [ebp-0x118]
	cmp esi, [ecx+0xf0]
	jl R_PostLoadEntities_240
	mov ecx, [ecx+0xf0]
	test ecx, ecx
	jle R_PostLoadEntities_250
	xor edi, edi
	xor esi, esi
	mov ebx, s_world
R_PostLoadEntities_260:
	mov eax, [ebx+0x104]
	mov eax, [eax+esi+0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_SortGfxAabbTree
	add edi, 0x1
	add esi, 0x38
	cmp edi, [ebx+0xf0]
	jl R_PostLoadEntities_260
	jmp R_PostLoadEntities_250
R_PostLoadEntities_130:
	xor esi, esi
	xor ebx, ebx
	mov edx, [ebp-0x118]
	jmp R_PostLoadEntities_270
R_PostLoadEntities_280:
	mov ecx, s_world
	mov [ebp-0x118], ecx
	mov edx, ecx
R_PostLoadEntities_270:
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
	call R_FilterStaticModelIntoCells_r
	add esi, 0x1
	add ebx, 0x1c
	mov eax, [ebp-0x118]
	cmp [eax+0x244], esi
	ja R_PostLoadEntities_280
	mov edx, s_world
	mov [ebp-0x118], edx
	mov ecx, edx
	jmp R_PostLoadEntities_290
R_PostLoadEntities_40:
	and eax, 0xffffff00
	jmp R_PostLoadEntities_300


;R_LoadEntities(unsigned int)
R_LoadEntities:
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
	call Com_GetBspLump
	mov [ebp-0x2f0], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x2e0], eax
	mov eax, [ebp-0x2f0]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x2ec], 0x0
R_LoadEntities_80:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz R_LoadEntities_10
R_LoadEntities_90:
	cmp byte [eax], 0x7b
	jnz R_LoadEntities_10
	mov dword [ebp-0x27c], _cstring_null
	mov dword [ebp-0x2e4], 0x1
	xor ebx, ebx
	jmp R_LoadEntities_20
R_LoadEntities_50:
	cmp dword [ebp-0x2e4], 0x40
	jz R_LoadEntities_30
R_LoadEntities_160:
	mov edi, [ebp-0x2e4]
	mov [ebp-0x2e8], edi
	mov eax, edi
	add eax, 0x1
	mov [ebp-0x2e4], eax
	mov ecx, edi
R_LoadEntities_60:
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
	call Com_Parse
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
R_LoadEntities_20:
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	call Com_Parse
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz R_LoadEntities_40
	cmp al, 0x7d
	jz R_LoadEntities_40
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_50
	mov dword [ebp-0x2e8], 0x0
	mov ecx, [ebp-0x2e8]
	jmp R_LoadEntities_60
R_LoadEntities_40:
	mov eax, [ebp-0x27c]
	cmp byte [eax], 0x0
	jz R_LoadEntities_70
R_LoadEntities_170:
	mov dword [esp+0x4], _cstring_misc_model
	mov eax, [ebp-0x278]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_80
	add dword [ebp-0x2ec], 0x1
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz R_LoadEntities_90
R_LoadEntities_10:
	mov edx, [ebp-0x2ec]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov ebx, s_world
	mov [ebx+0x29c], eax
	mov eax, [ebp-0x2ec]
	shl eax, 0x2
	shl dword [ebp-0x2ec], 0x5
	sub [ebp-0x2ec], eax
	mov ecx, [ebp-0x2ec]
	mov [esp], ecx
	call Hunk_AllocInternal
	mov [ebx+0x290], eax
	mov dword [ebx+0x244], 0x0
	mov edi, [ebp-0x2f0]
	mov [ebp-0x1c], edi
R_LoadEntities_190:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7b
	jnz R_LoadEntities_100
R_LoadEntities_380:
	mov dword [ebp-0x27c], _cstring_null
	mov dword [ebp-0x290], 0x1
	xor ebx, ebx
	jmp R_LoadEntities_110
R_LoadEntities_140:
	cmp dword [ebp-0x290], 0x40
	jz R_LoadEntities_120
R_LoadEntities_450:
	mov ecx, [ebp-0x290]
	mov [ebp-0x28c], ecx
	mov edi, ecx
	add edi, 0x1
	mov [ebp-0x290], edi
	mov edx, ecx
R_LoadEntities_150:
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
	call Com_Parse
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
R_LoadEntities_110:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call Com_Parse
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz R_LoadEntities_130
	cmp al, 0x7d
	jz R_LoadEntities_130
	mov dword [esp+0x4], _cstring_classname
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_140
	mov dword [ebp-0x28c], 0x0
	mov edx, [ebp-0x28c]
	jmp R_LoadEntities_150
R_LoadEntities_30:
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_r_loadentities_m
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadEntities_160
R_LoadEntities_70:
	mov dword [esp+0x4], _cstring_r_loadentities_e
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadEntities_170
R_LoadEntities_130:
	mov eax, [ebp-0x27c]
	cmp byte [eax], 0x0
	jz R_LoadEntities_180
R_LoadEntities_470:
	mov dword [esp+0x4], _cstring_misc_model
	mov eax, [ebp-0x278]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_190
	cmp dword [ebp-0x290], 0x1
	jg R_LoadEntities_200
R_LoadEntities_580:
	mov edx, _cstring_0_0_0
	xor ebx, ebx
R_LoadEntities_600:
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
	jz R_LoadEntities_210
R_LoadEntities_560:
	cmp dword [ebp-0x290], 0x1
	jle R_LoadEntities_220
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
R_LoadEntities_240:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x298], eax
	mov dword [esp+0x4], _cstring_model
	mov eax, [edi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz R_LoadEntities_230
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz R_LoadEntities_240
R_LoadEntities_220:
	xor ebx, ebx
R_LoadEntities_660:
	cvtss2sd xmm0, [ebp-0x50]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [ebp-0x54]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [ebp-0x58]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_r_checkvalidstat
	mov dword [esp], 0x2
	call Com_Error
R_LoadEntities_650:
	mov [esp], ebx
	call Com_IsLegacyXModelName
	lea edx, [ebx+0x7]
	test eax, eax
	cmovnz ebx, edx
	mov [esp], ebx
	call R_RegisterModel
	mov [ebp-0x2d8], eax
	test eax, eax
	jz R_LoadEntities_250
	mov [esp], eax
	call XModelBad
	test eax, eax
	jz R_LoadEntities_260
R_LoadEntities_250:
	cvtss2sd xmm0, [ebp-0x50]
	movsd [esp+0x1c], xmm0
	cvtss2sd xmm0, [ebp-0x54]
	movsd [esp+0x14], xmm0
	cvtss2sd xmm0, [ebp-0x58]
	movsd [esp+0xc], xmm0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_bad_static_model
	mov dword [esp], 0x8
	call Com_PrintError
	mov dword [esp], _cstring_default_static_m
	call R_RegisterModel
	mov [ebp-0x2d8], eax
	test eax, eax
	jz R_LoadEntities_270
	mov [esp], eax
	call XModelBad
	test eax, eax
	jz R_LoadEntities_260
R_LoadEntities_270:
	mov dword [esp+0x4], _cstring_r_checkvalidstat1
	mov dword [esp], 0x2
	call Com_Error
R_LoadEntities_260:
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
	jg R_LoadEntities_280
R_LoadEntities_420:
	mov edx, _cstring_0_0_0
R_LoadEntities_440:
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
R_LoadEntities_720:
	lea eax, [ebp-0x7c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call AnglesToAxis
	cmp dword [ebp-0x290], 0x1
	jg R_LoadEntities_290
	xor eax, eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2d4], xmm0
R_LoadEntities_550:
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
	call R_CreateStaticModel
	mov edi, [ebp-0x2d8]
	mov [esp], edi
	call XModelGetFlags
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
	jg R_LoadEntities_300
R_LoadEntities_620:
	xor ebx, ebx
	mov edx, _cstring_ff00000000
R_LoadEntities_640:
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
	jz R_LoadEntities_310
	cmp eax, 0x5
	jz R_LoadEntities_320
	mov dword [esp+0x4], _cstring_r_vec4forkeyhex_
	mov dword [esp], 0x2
	call Com_Error
R_LoadEntities_480:
	mov esi, s_world
R_LoadEntities_500:
	mov edx, 0x1
R_LoadEntities_330:
	mov eax, [ebp+edx*4-0x5c]
	mov edi, [ebp-0x2b4]
	mov [edi+edx-0x1], al
	add edx, 0x1
	cmp edx, 0x5
	jnz R_LoadEntities_330
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x2b0]
	mov [edx], al
	mov edx, [ebp-0x2dc]
	test edx, edx
	jz R_LoadEntities_340
	test bl, bl
	jz R_LoadEntities_340
	mov ecx, [ebp-0x2cc]
	mov eax, [ecx+0x18]
	test eax, eax
	jnz R_LoadEntities_350
	mov edi, ecx
R_LoadEntities_460:
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
	call R_GetPrimaryLightForModel
	mov edi, [ebp-0x2d0]
	mov [edi+0x45], al
	test al, al
	jnz R_LoadEntities_360
	cmp dword [esi+0xd8], 0x1
	jz R_LoadEntities_370
R_LoadEntities_360:
	mov esi, s_world
R_LoadEntities_350:
	mov edx, [ebp-0x2d0]
	movzx eax, byte [edx+0x45]
	lea eax, [eax+eax*2]
	mov edx, [esi+0x23c]
	add word [edx+eax*4+0x2], 0x1
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7b
	jz R_LoadEntities_380
R_LoadEntities_100:
	mov ecx, [ebp-0x2e0]
	mov [esp], ecx
	call Hunk_FreeTempMemory
	add esp, 0x32c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadEntities_280:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
R_LoadEntities_400:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x29c], eax
	mov dword [esp+0x4], _cstring_angle
	mov eax, [edi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz R_LoadEntities_390
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz R_LoadEntities_400
R_LoadEntities_700:
	lea ebx, [ebp-0x274]
	mov edi, 0x1
	mov esi, 0x8
	lea ecx, [ebp-0x27c]
	add ecx, esi
	mov [ebp-0x2a0], ecx
	mov dword [esp+0x4], _cstring_angles
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz R_LoadEntities_410
R_LoadEntities_430:
	add edi, 0x1
	add esi, 0x8
	add ebx, 0x8
	cmp edi, [ebp-0x290]
	jz R_LoadEntities_420
	lea ecx, [ebp-0x27c]
	add ecx, esi
	mov [ebp-0x2a0], ecx
	mov dword [esp+0x4], _cstring_angles
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_430
R_LoadEntities_410:
	mov edi, [ebp-0x2a0]
	mov edx, [edi+0x4]
	test edx, edx
	jnz R_LoadEntities_440
	jmp R_LoadEntities_420
R_LoadEntities_120:
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_r_loadentities_m
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadEntities_450
R_LoadEntities_340:
	mov edi, [ebp-0x2cc]
	jmp R_LoadEntities_460
R_LoadEntities_180:
	mov dword [esp+0x4], _cstring_r_loadentities_e
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadEntities_470
R_LoadEntities_320:
	cmp dword [ebp-0x2f4], 0xe
	jg R_LoadEntities_480
	mov eax, [ebp-0x24]
	cmp eax, 0xff
	jz R_LoadEntities_490
	add eax, 0x1
	mov [ebp-0x24], eax
	mov esi, s_world
	jmp R_LoadEntities_500
R_LoadEntities_290:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
R_LoadEntities_520:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x2a4], eax
	mov dword [esp+0x4], _cstring_modelscale
	mov eax, [edi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz R_LoadEntities_510
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jnz R_LoadEntities_520
R_LoadEntities_680:
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2d4], xmm0
R_LoadEntities_690:
	lea ebx, [ebp-0x274]
	mov edi, 0x1
	mov esi, 0x8
R_LoadEntities_540:
	lea eax, [ebp-0x27c]
	add eax, esi
	mov [ebp-0x2a8], eax
	mov dword [esp+0x4], _cstring_spawnflags
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz R_LoadEntities_530
	add edi, 0x1
	add esi, 0x8
	add ebx, 0x8
	cmp edi, [ebp-0x290]
	jnz R_LoadEntities_540
R_LoadEntities_670:
	xor eax, eax
	movss xmm0, dword [ebp-0x2d4]
	jmp R_LoadEntities_550
R_LoadEntities_210:
	mov dword [esp+0x4], _cstring_r_checkvalidstat2
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadEntities_560
R_LoadEntities_200:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
	jmp R_LoadEntities_570
R_LoadEntities_590:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jz R_LoadEntities_580
R_LoadEntities_570:
	lea edx, [ebp-0x27c]
	add edx, ebx
	mov [ebp-0x294], edx
	mov dword [esp+0x4], _cstring_origin
	mov eax, [edi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_590
	mov ecx, [ebp-0x294]
	mov edx, [ecx+0x4]
	test edx, edx
	jz R_LoadEntities_580
	mov ebx, 0x1
	jmp R_LoadEntities_600
R_LoadEntities_300:
	lea edi, [ebp-0x274]
	mov esi, 0x1
	mov ebx, 0x8
	jmp R_LoadEntities_610
R_LoadEntities_630:
	add esi, 0x1
	add ebx, 0x8
	add edi, 0x8
	cmp esi, [ebp-0x290]
	jz R_LoadEntities_620
R_LoadEntities_610:
	lea eax, [ebp-0x27c]
	add eax, ebx
	mov [ebp-0x2ac], eax
	mov dword [esp+0x4], _cstring_gndlt
	mov eax, [edi]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadEntities_630
	mov ecx, [ebp-0x2ac]
	mov edx, [ecx+0x4]
	test edx, edx
	jz R_LoadEntities_620
	mov ebx, 0x1
	jmp R_LoadEntities_640
R_LoadEntities_310:
	mov esi, s_world
	mov eax, [esi+0xd8]
	mov [ebp-0x24], eax
	jmp R_LoadEntities_500
R_LoadEntities_230:
	mov edx, [ebp-0x298]
	mov ebx, [edx+0x4]
	test ebx, ebx
	jnz R_LoadEntities_650
	jmp R_LoadEntities_660
R_LoadEntities_530:
	mov edx, [ebp-0x2a8]
	mov eax, [edx+0x4]
	test eax, eax
	jz R_LoadEntities_670
	mov [esp], eax
	call atoi
	movss xmm0, dword [ebp-0x2d4]
	jmp R_LoadEntities_550
R_LoadEntities_510:
	mov edx, [ebp-0x2a4]
	mov eax, [edx+0x4]
	test eax, eax
	jz R_LoadEntities_680
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2c0]
	cvtsd2ss xmm0, [ebp-0x2c0]
	movss [ebp-0x2d4], xmm0
	jmp R_LoadEntities_690
R_LoadEntities_390:
	mov edx, [ebp-0x29c]
	mov eax, [edx+0x4]
	test eax, eax
	jz R_LoadEntities_700
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2c8]
	cvtsd2ss xmm0, [ebp-0x2c8]
	ucomiss xmm0, [_float_0_00000000]
	jp R_LoadEntities_710
	jz R_LoadEntities_700
R_LoadEntities_710:
	mov dword [ebp-0x3c], 0x0
	movss [ebp-0x38], xmm0
	mov dword [ebp-0x34], 0x0
	lea ebx, [ebp-0x3c]
	jmp R_LoadEntities_720
R_LoadEntities_370:
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
	call R_GetPrimaryLightFromGrid
	mov [edi+0x45], al
	sub al, 0x1
	jz R_LoadEntities_360
	mov byte [edi+0x45], 0x0
	mov esi, s_world
	jmp R_LoadEntities_350
R_LoadEntities_490:
	mov dword [ebp-0x24], 0x0
	mov esi, s_world
	jmp R_LoadEntities_500


;R_CountNodes_r(mnode_load_t*)
R_CountNodes_r:
R_CountNodes_r_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	cmp dword [eax], 0xfffffffe
	jz R_CountNodes_r_10
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CountNodes_r_10:
	mov edx, [rgl+0x14]
	mov eax, [eax+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz R_CountNodes_r_20
	mov dword [ebp-0x38], 0x1
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz R_CountNodes_r_30
R_CountNodes_r_60:
	mov eax, 0x1
R_CountNodes_r_90:
	mov edx, [ebp-0x38]
	lea eax, [edx+eax+0x2]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CountNodes_r_20:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea ebx, [edx+eax]
	cmp dword [ebx], 0xfffffffe
	jz R_CountNodes_r_40
	mov dword [ebp-0x34], 0x1
R_CountNodes_r_160:
	mov eax, [edi+0xc]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz R_CountNodes_r_50
	mov eax, 0x1
R_CountNodes_r_150:
	mov ecx, [ebp-0x34]
	lea eax, [ecx+eax+0x2]
	mov [ebp-0x38], eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jnz R_CountNodes_r_60
R_CountNodes_r_30:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz R_CountNodes_r_70
	mov dword [ebp-0x28], 0x1
R_CountNodes_r_140:
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz R_CountNodes_r_80
	mov eax, 0x1
R_CountNodes_r_120:
	mov ecx, [ebp-0x28]
	lea eax, [ecx+eax+0x2]
	jmp R_CountNodes_r_90
R_CountNodes_r_80:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea edi, [edx+eax]
	cmp dword [edi], 0xfffffffe
	jz R_CountNodes_r_100
	mov edi, 0x1
R_CountNodes_r_170:
	mov eax, [esi+0xc]
	shl eax, 0x4
	lea esi, [edx+eax]
	cmp dword [esi], 0xfffffffe
	jz R_CountNodes_r_110
	mov eax, 0x1
	lea eax, [edi+eax+0x2]
	jmp R_CountNodes_r_120
R_CountNodes_r_70:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_CountNodes_r_130
	mov [ebp-0x24], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r_130
	mov edx, [ebp-0x24]
	lea eax, [edx+eax+0x2]
	mov [ebp-0x28], eax
	mov edx, [rgl+0x14]
	jmp R_CountNodes_r_140
R_CountNodes_r_50:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_CountNodes_r_130
	mov [ebp-0x2c], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r_130
	mov ecx, [ebp-0x2c]
	lea eax, [ecx+eax+0x2]
	mov edx, [rgl+0x14]
	jmp R_CountNodes_r_150
R_CountNodes_r_40:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_CountNodes_r_130
	mov [ebp-0x30], eax
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r_130
	mov edx, [ebp-0x30]
	lea eax, [edx+eax+0x2]
	mov [ebp-0x34], eax
	mov edx, [rgl+0x14]
	jmp R_CountNodes_r_160
R_CountNodes_r_110:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_CountNodes_r_130
	mov [ebp-0x1c], eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r_130
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax+0x2]
	lea eax, [edi+eax+0x2]
	jmp R_CountNodes_r_120
R_CountNodes_r_100:
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_CountNodes_r_130
	mov [ebp-0x20], eax
	mov eax, [edi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r_130
	mov ecx, [ebp-0x20]
	lea edi, [ecx+eax+0x2]
	mov edx, [rgl+0x14]
	jmp R_CountNodes_r_170


;R_LoadLightGridPoints_Version15(unsigned int)
R_LoadLightGridPoints_Version15:
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
	call Com_GetBspLump
	mov [ebp-0x178], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz R_LoadLightGridPoints_Version15_10
	cmp dword [ebp+0x8], 0xe
	ja R_LoadLightGridPoints_Version15_20
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x34
	mov dword [esp], 0x19
	call Com_GetBspLump
	mov ebx, eax
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call ClearBounds
	mov eax, [ebp-0x20]
	test eax, eax
	jnz R_LoadLightGridPoints_Version15_30
R_LoadLightGridPoints_Version15_220:
	mov eax, 0xc8000000
	mov [ebp-0x58], eax
	mov [ebp-0x54], eax
	mov [ebp-0x50], eax
	mov eax, 0x48000000
	mov [ebp-0x4c], eax
	mov [ebp-0x48], eax
	mov [ebp-0x44], eax
R_LoadLightGridPoints_Version15_240:
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
	jnz R_LoadLightGridPoints_Version15_40
	mov dword [ebp-0x170], 0x0
R_LoadLightGridPoints_Version15_680:
	mov ebx, [ebp-0x170]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz R_LoadLightGridPoints_Version15_50
	mov ebx, s_world
	mov ecx, [ebx+0x140]
	test ecx, ecx
	jnz R_LoadLightGridPoints_Version15_60
	mov dword [ebp-0x168], 0x0
	xor eax, eax
R_LoadLightGridPoints_Version15_760:
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
	jz R_LoadLightGridPoints_Version15_70
	mov edx, [ebp-0x174]
	xor ecx, ecx
	jmp R_LoadLightGridPoints_Version15_80
R_LoadLightGridPoints_Version15_90:
	movzx esi, word [ebp-0x168]
	mov [edx+0x6], si
R_LoadLightGridPoints_Version15_100:
	add ecx, 0x1
	add edx, 0xa
	cmp [ebp-0x1c], ecx
	jbe R_LoadLightGridPoints_Version15_70
R_LoadLightGridPoints_Version15_80:
	movzx eax, word [edx+0x6]
	test ax, ax
	jz R_LoadLightGridPoints_Version15_90
	movzx eax, ax
	cmp [ebp-0x168], eax
	jnz R_LoadLightGridPoints_Version15_100
	mov word [edx+0x6], 0x0
	add ecx, 0x1
	add edx, 0xa
	cmp [ebp-0x1c], ecx
	ja R_LoadLightGridPoints_Version15_80
R_LoadLightGridPoints_Version15_70:
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
	jge R_LoadLightGridPoints_Version15_110
	mov dword [ebx+0x124], 0x1
	mov dword [ebx+0x128], 0x0
R_LoadLightGridPoints_Version15_730:
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*4]
	mov edx, [ebp-0x174]
	lea eax, [edx+eax*2]
	mov [ebp-0x160], eax
	cmp edx, eax
	jz R_LoadLightGridPoints_Version15_120
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
	jz R_LoadLightGridPoints_Version15_130
	xor edx, edx
R_LoadLightGridPoints_Version15_140:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_LoadLightGridPoints_Version15_140
	lea eax, [edx+edx]
R_LoadLightGridPoints_Version15_890:
	mov dword [esp+0xc], R_AnnotatedLightGridPointSortsBefore
	mov [esp+0x8], eax
	mov ecx, [ebp-0x160]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x174]
	mov [esp], esi
	call _ZSt16__introsort_loopIP23AnnotatedLightGridPointiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0xa9
	jle R_LoadLightGridPoints_Version15_150
	lea eax, [esi+0xa0]
	mov [ebp-0x164], eax
	mov edi, esi
	add edi, 0xa
	cmp eax, edi
	jz R_LoadLightGridPoints_Version15_160
R_LoadLightGridPoints_Version15_210:
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
	call R_AnnotatedLightGridPointSortsBefore
	test al, al
	jz R_LoadLightGridPoints_Version15_170
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
	jle R_LoadLightGridPoints_Version15_180
	mov ecx, edi
	mov edx, ebx
	xor ebx, ebx
R_LoadLightGridPoints_Version15_190:
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
	jnz R_LoadLightGridPoints_Version15_190
R_LoadLightGridPoints_Version15_180:
	mov eax, [ebp-0x2a]
	mov esi, [ebp-0x174]
	mov [esi], eax
	mov eax, [ebp-0x26]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x22]
	mov [esi+0x8], ax
	mov edx, [ebp-0x134]
R_LoadLightGridPoints_Version15_300:
	cmp [ebp-0x164], edx
	jz R_LoadLightGridPoints_Version15_200
	mov edi, edx
	jmp R_LoadLightGridPoints_Version15_210
R_LoadLightGridPoints_Version15_50:
	mov esi, [ebp-0x16c]
	mov [esp], esi
	call Hunk_FreeTempMemory
	mov eax, [ebp-0x174]
	mov [esp], eax
	call Hunk_FreeTempMemory
R_LoadLightGridPoints_Version15_10:
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
	call Hunk_AllocInternal
	mov [ebx+0x12c], eax
	mov word [eax], 0xffff
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadLightGridPoints_Version15_20:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x70
	mov dword [esp], 0x19
	call Com_GetBspLump
	mov ebx, eax
	lea edx, [ebp-0x4c]
	mov [esp+0x4], edx
	lea ecx, [ebp-0x58]
	mov [esp], ecx
	call ClearBounds
	mov eax, [ebp-0x20]
	test eax, eax
	jz R_LoadLightGridPoints_Version15_220
	xor esi, esi
R_LoadLightGridPoints_Version15_230:
	lea eax, [ebp-0x4c]
	mov [esp+0xc], eax
	lea edx, [ebp-0x58]
	mov [esp+0x8], edx
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ExpandBounds
	add esi, 0x1
	add ebx, 0x70
	cmp esi, [ebp-0x20]
	jb R_LoadLightGridPoints_Version15_230
	mov eax, [ebp-0x20]
	test eax, eax
	jnz R_LoadLightGridPoints_Version15_240
	jmp R_LoadLightGridPoints_Version15_220
R_LoadLightGridPoints_Version15_270:
	mov eax, [ebp-0x34]
	mov [esi], eax
	mov eax, [ebp-0x30]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [esi+0x8], ax
	add dword [ebp-0x164], 0xa
R_LoadLightGridPoints_Version15_200:
	mov ecx, [ebp-0x164]
R_LoadLightGridPoints_Version15_830:
	cmp [ebp-0x160], ecx
	jz R_LoadLightGridPoints_Version15_120
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
	jmp R_LoadLightGridPoints_Version15_250
R_LoadLightGridPoints_Version15_260:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
R_LoadLightGridPoints_Version15_250:
	mov [esp+0x4], ebx
	lea edx, [ebp-0x34]
	mov [esp], edx
	call R_AnnotatedLightGridPointSortsBefore
	test al, al
	jnz R_LoadLightGridPoints_Version15_260
	jmp R_LoadLightGridPoints_Version15_270
R_LoadLightGridPoints_Version15_170:
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
	jmp R_LoadLightGridPoints_Version15_280
R_LoadLightGridPoints_Version15_290:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
R_LoadLightGridPoints_Version15_280:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x34]
	mov [esp], eax
	call R_AnnotatedLightGridPointSortsBefore
	test al, al
	jnz R_LoadLightGridPoints_Version15_290
	mov eax, [ebp-0x34]
	mov [esi], eax
	mov eax, [ebp-0x30]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [esi+0x8], ax
	add edi, 0xa
	mov [ebp-0x134], edi
	mov edx, edi
	jmp R_LoadLightGridPoints_Version15_300
R_LoadLightGridPoints_Version15_150:
	mov edi, [ebp-0x174]
	add edi, 0xa
	cmp [ebp-0x160], edi
	jnz R_LoadLightGridPoints_Version15_310
R_LoadLightGridPoints_Version15_120:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz R_LoadLightGridPoints_Version15_320
	mov edi, [ebp-0x174]
	mov dword [ebp-0x130], 0x0
R_LoadLightGridPoints_Version15_360:
	lea esi, [edi+0x9]
	mov [ebp-0x13c], esi
	movzx eax, byte [edi+0x9]
	test al, al
	jz R_LoadLightGridPoints_Version15_330
	movzx eax, al
	mov [ebp-0x144], eax
	mov edx, s_world
	mov eax, [edx+0x124]
	lea edx, [eax*8+needsTraceSwizzle.142602]
	xor esi, esi
	xor ebx, ebx
R_LoadLightGridPoints_Version15_350:
	mov eax, [ebp-0x144]
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz R_LoadLightGridPoints_Version15_340
	movzx ecx, byte [edx]
	mov eax, 0x1
	shl eax, cl
	or esi, eax
R_LoadLightGridPoints_Version15_340:
	add ebx, 0x1
	add edx, 0x1
	cmp ebx, 0x8
	jnz R_LoadLightGridPoints_Version15_350
	mov edx, esi
	mov ecx, [ebp-0x13c]
	mov [ecx], dl
R_LoadLightGridPoints_Version15_330:
	add dword [ebp-0x130], 0x1
	add edi, 0xa
	mov ebx, [ebp-0x130]
	cmp ebx, [ebp-0x1c]
	jb R_LoadLightGridPoints_Version15_360
R_LoadLightGridPoints_Version15_320:
	mov esi, s_world
	mov eax, [esi+0x124]
	movzx ebx, word [esi+eax*2+0x11e]
	movzx eax, word [esi+eax*2+0x118]
	sub ebx, eax
	lea ebx, [ebx+ebx+0x2]
	mov [esp], ebx
	call Hunk_AllocInternal
	mov [esi+0x12c], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xff
	mov [esp], eax
	call memset
	mov dword [esp], 0x40000
	call Hunk_AllocInternal
	mov [esi+0x134], eax
	mov dword [esi+0x130], 0x0
	mov eax, [ebp-0x1c]
	shl eax, 0x3
	mov [esp], eax
	call Hunk_AllocInternal
	mov [esi+0x13c], eax
	mov dword [esi+0x138], 0x0
	mov eax, [ebp-0x1c]
	mov [ebp-0x15c], eax
	test eax, eax
	jz R_LoadLightGridPoints_Version15_370
	mov dword [ebp-0x14c], 0x0
	mov edx, [ebp-0x14c]
	mov edi, [ebp-0x14c]
R_LoadLightGridPoints_Version15_510:
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
	ja R_LoadLightGridPoints_Version15_380
	lea eax, [edi+edi*4]
	lea ebx, [eax+eax]
	mov edx, s_world
R_LoadLightGridPoints_Version15_580:
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
	jz R_LoadLightGridPoints_Version15_390
	mov word [ebp-0x148], 0xffff
	mov dword [ebp-0x120], 0x0
	mov word [ebp-0x146], 0x0
	lea eax, [ecx+ecx*4]
	add eax, eax
	mov [ebp-0x17c], eax
	mov esi, [ebp-0x14c]
	jmp R_LoadLightGridPoints_Version15_400
R_LoadLightGridPoints_Version15_450:
	mov [ebp-0x34], di
	mov [ebp-0x32], si
	mov esi, [ebp-0x14c]
	mov [ebp-0x120], esi
	movzx eax, word [ebp-0x11a]
	mov [ebp-0x148], ax
	mov word [ebp-0x146], 0x1
	mov edx, [ebp-0x124]
	cmp [ebp-0x128], edx
	jz R_LoadLightGridPoints_Version15_410
R_LoadLightGridPoints_Version15_500:
	mov [ebp-0x14c], edx
	lea edi, [edx+0x1]
	mov esi, edx
R_LoadLightGridPoints_Version15_400:
	lea eax, [esi+esi*4]
	mov ecx, [ebp-0x174]
	lea edx, [ecx+eax*2]
	mov ebx, s_world
	mov ecx, [ebx+0x128]
	movzx esi, word [edx+ecx*2]
	mov [ebp-0x11a], si
	cmp edi, [ebp-0x128]
	jz R_LoadLightGridPoints_Version15_420
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
	jz R_LoadLightGridPoints_Version15_430
	mov [ebp-0x124], edi
R_LoadLightGridPoints_Version15_520:
	movzx edi, word [edx+0x4]
	mov ebx, [ebp-0x174]
	movzx esi, word [ebx+esi-0x6]
	movzx eax, word [ebp-0x148]
	movzx edx, word [ebp-0x146]
	lea ebx, [eax+edx]
	cmp [ebp-0x180], ebx
	jz R_LoadLightGridPoints_Version15_440
R_LoadLightGridPoints_Version15_490:
	cmp word [ebp-0x146], 0x0
	jz R_LoadLightGridPoints_Version15_450
	mov eax, [ebp-0x14c]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x120]
	mov [esp+0x4], ecx
	lea eax, [ebp-0x2a]
	mov [esp], eax
	lea ecx, [ebp-0x34]
	mov eax, [ebp-0x174]
	call R_EmitLightGridBlock_Version15
	test al, al
	jz R_LoadLightGridPoints_Version15_460
	cmp [ebp-0x180], ebx
	jz R_LoadLightGridPoints_Version15_450
	mov ecx, [ebp-0x180]
	sub ecx, ebx
	cmp ecx, 0xff
	jbe R_LoadLightGridPoints_Version15_470
R_LoadLightGridPoints_Version15_480:
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
	ja R_LoadLightGridPoints_Version15_480
	mov eax, ebx
R_LoadLightGridPoints_Version15_560:
	mov edx, [eax+0x134]
	mov ebx, eax
	mov eax, [eax+0x130]
	mov [edx+eax], cl
	mov edx, [ebx+0x134]
	mov eax, [ebx+0x130]
	mov byte [edx+eax+0x1], 0x0
	add dword [ebx+0x130], 0x2
	jmp R_LoadLightGridPoints_Version15_450
R_LoadLightGridPoints_Version15_440:
	cmp di, [ebp-0x34]
	jnz R_LoadLightGridPoints_Version15_490
	cmp si, [ebp-0x32]
	jnz R_LoadLightGridPoints_Version15_490
	cmp word [ebp-0x146], 0xfe
	ja R_LoadLightGridPoints_Version15_490
	add word [ebp-0x146], 0x1
	mov edx, [ebp-0x124]
	cmp [ebp-0x128], edx
	jnz R_LoadLightGridPoints_Version15_500
R_LoadLightGridPoints_Version15_410:
	movzx edx, word [ebp-0x146]
R_LoadLightGridPoints_Version15_840:
	mov ecx, [ebp-0x128]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x120]
	mov [esp+0x4], ebx
	lea esi, [ebp-0x2a]
	mov [esp], esi
	lea ecx, [ebp-0x34]
	mov eax, [ebp-0x174]
	call R_EmitLightGridBlock_Version15
	test al, al
	jz R_LoadLightGridPoints_Version15_460
	mov edx, s_world
	mov eax, [edx+0x130]
	add eax, 0x3
	and eax, 0xfffffffc
	mov [edx+0x130], eax
	mov eax, [ebp-0x128]
	cmp [ebp-0x15c], eax
	jbe R_LoadLightGridPoints_Version15_370
	mov [ebp-0x14c], eax
	mov edx, eax
	mov edi, eax
	jmp R_LoadLightGridPoints_Version15_510
R_LoadLightGridPoints_Version15_420:
	mov esi, [ebp-0x17c]
	mov eax, [ebp-0x128]
	mov [ebp-0x124], eax
	movzx ecx, word [ebp-0x11a]
	mov [ebp-0x180], ecx
	jmp R_LoadLightGridPoints_Version15_520
R_LoadLightGridPoints_Version15_430:
	lea eax, [eax+esi+0xa]
	mov ecx, [ebp-0x18c]
	lea ebx, [eax+ecx]
	mov ecx, edi
	add esi, 0xa
	mov eax, [ebp-0x128]
	mov [ebp-0x124], eax
	jmp R_LoadLightGridPoints_Version15_530
R_LoadLightGridPoints_Version15_550:
	mov esi, edi
R_LoadLightGridPoints_Version15_530:
	add ecx, 0x1
	cmp [ebp-0x124], ecx
	jz R_LoadLightGridPoints_Version15_540
	movzx eax, word [ebx]
	lea edi, [esi+0xa]
	add ebx, 0xa
	cmp eax, [ebp-0x180]
	jz R_LoadLightGridPoints_Version15_550
	mov [ebp-0x124], ecx
	jmp R_LoadLightGridPoints_Version15_520
R_LoadLightGridPoints_Version15_470:
	mov eax, s_world
	jmp R_LoadLightGridPoints_Version15_560
R_LoadLightGridPoints_Version15_380:
	lea eax, [edi+edi*4]
	lea ebx, [eax+eax]
	mov edx, [ebp-0x174]
	add edx, ebx
	movzx ecx, word [edx+ecx*2]
	mov [ebp-0x158], ecx
	movzx eax, word [ebp-0x14e]
	cmp ecx, eax
	jz R_LoadLightGridPoints_Version15_570
	mov edx, s_world
	jmp R_LoadLightGridPoints_Version15_580
R_LoadLightGridPoints_Version15_540:
	mov ecx, [ebp-0x124]
	lea eax, [ecx+ecx*4]
	lea esi, [eax+eax]
	jmp R_LoadLightGridPoints_Version15_520
R_LoadLightGridPoints_Version15_460:
	mov eax, s_world
	mov dword [eax+0x138], 0x0
	mov word [eax+0x118], 0x0
	mov word [eax+0x11a], 0x0
	mov word [eax+0x11c], 0x0
	mov word [eax+0x11e], 0x0
	mov word [eax+0x120], 0x0
	mov word [eax+0x122], 0x0
R_LoadLightGridPoints_Version15_370:
	mov edx, [ebp-0x174]
	mov [esp], edx
	call Hunk_FreeTempMemory
	add esp, 0x1ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadLightGridPoints_Version15_40:
	mov dword [ebp-0x12c], 0x0
	mov dword [ebp-0x170], 0x0
R_LoadLightGridPoints_Version15_690:
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
	jnz R_LoadLightGridPoints_Version15_590
	xor eax, eax
R_LoadLightGridPoints_Version15_710:
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
	call PointInBounds
	test eax, eax
	jz R_LoadLightGridPoints_Version15_600
	movzx ecx, word [ebx]
	mov edx, s_world
	cmp [edx+0x118], cx
	jbe R_LoadLightGridPoints_Version15_610
	mov [edx+0x118], cx
	movzx ecx, word [ebx]
R_LoadLightGridPoints_Version15_610:
	cmp [edx+0x11e], cx
	jae R_LoadLightGridPoints_Version15_620
	mov [edx+0x11e], cx
R_LoadLightGridPoints_Version15_620:
	movzx eax, word [ebx+0x2]
	cmp [edx+0x11a], ax
	jbe R_LoadLightGridPoints_Version15_630
	mov [edx+0x11a], ax
	movzx eax, word [ebx+0x2]
R_LoadLightGridPoints_Version15_630:
	cmp [edx+0x120], ax
	jae R_LoadLightGridPoints_Version15_640
	mov [edx+0x120], ax
R_LoadLightGridPoints_Version15_640:
	movzx eax, word [ebx+0x4]
	cmp [edx+0x11c], ax
	jbe R_LoadLightGridPoints_Version15_650
	mov [edx+0x11c], ax
	movzx eax, word [ebx+0x4]
R_LoadLightGridPoints_Version15_650:
	cmp [edx+0x122], ax
	jae R_LoadLightGridPoints_Version15_660
	mov [edx+0x122], ax
R_LoadLightGridPoints_Version15_660:
	movzx eax, byte [ebx+0x8]
	cmp eax, [edx+0x114]
	jz R_LoadLightGridPoints_Version15_670
R_LoadLightGridPoints_Version15_720:
	add dword [ebp-0x170], 0x1
R_LoadLightGridPoints_Version15_600:
	mov edi, [ebp-0x1c]
	lea ebx, [esi+0xc]
	lea ecx, [esi+0x8]
R_LoadLightGridPoints_Version15_700:
	add dword [ebp-0x12c], 0x1
	cmp edi, [ebp-0x12c]
	jbe R_LoadLightGridPoints_Version15_680
	mov eax, [ebp-0x12c]
	test eax, eax
	jz R_LoadLightGridPoints_Version15_690
	mov eax, [ebx-0x4]
	cmp eax, [ecx-0x8]
	jnz R_LoadLightGridPoints_Version15_690
	movzx edx, byte [ebx]
	movzx eax, byte [ecx-0x4]
	xor edx, eax
	add ebx, 0x8
	add ecx, 0x8
	and dl, 0xfe
	jz R_LoadLightGridPoints_Version15_700
	jmp R_LoadLightGridPoints_Version15_690
R_LoadLightGridPoints_Version15_590:
	mov eax, s_world
	movzx eax, byte [eax+0x114]
	jmp R_LoadLightGridPoints_Version15_710
R_LoadLightGridPoints_Version15_670:
	movzx eax, word [ebx+0x6]
	mov ecx, [ebp-0x16c]
	add dword [ecx+eax*4], 0x1
	jmp R_LoadLightGridPoints_Version15_720
R_LoadLightGridPoints_Version15_110:
	mov esi, s_world
	mov dword [esi+0x124], 0x0
	mov dword [esi+0x128], 0x1
	jmp R_LoadLightGridPoints_Version15_730
R_LoadLightGridPoints_Version15_60:
	xor ebx, ebx
	xor edx, edx
	mov dword [ebp-0x168], 0x0
R_LoadLightGridPoints_Version15_750:
	mov esi, [ebp-0x16c]
	mov eax, [esi+edx*4]
	cmp ebx, eax
	jae R_LoadLightGridPoints_Version15_740
	mov ebx, eax
	mov [ebp-0x168], edx
R_LoadLightGridPoints_Version15_740:
	add edx, 0x1
	cmp ecx, edx
	jnz R_LoadLightGridPoints_Version15_750
	mov edx, [ebp-0x168]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	jmp R_LoadLightGridPoints_Version15_760
R_LoadLightGridPoints_Version15_780:
	mov eax, [ebp-0x34]
	mov edx, [ebp-0x174]
	mov [edx], eax
	mov eax, [ebp-0x30]
	mov [edx+0x4], eax
	movzx eax, word [ebp-0x2c]
	mov [edx+0x8], ax
	mov ebx, [ebp-0x138]
R_LoadLightGridPoints_Version15_820:
	cmp [ebp-0x160], ebx
	jz R_LoadLightGridPoints_Version15_120
	mov edi, ebx
R_LoadLightGridPoints_Version15_310:
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
	call R_AnnotatedLightGridPointSortsBefore
	test al, al
	jz R_LoadLightGridPoints_Version15_770
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
	jle R_LoadLightGridPoints_Version15_780
	mov ecx, edi
	mov edx, [ebp-0x138]
	xor ebx, ebx
R_LoadLightGridPoints_Version15_790:
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
	jnz R_LoadLightGridPoints_Version15_790
	jmp R_LoadLightGridPoints_Version15_780
R_LoadLightGridPoints_Version15_770:
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
	jmp R_LoadLightGridPoints_Version15_800
R_LoadLightGridPoints_Version15_810:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	movzx eax, word [ebx+0x8]
	mov [esi+0x8], ax
	mov esi, ebx
	sub ebx, 0xa
R_LoadLightGridPoints_Version15_800:
	mov [esp+0x4], ebx
	lea ecx, [ebp-0x2a]
	mov [esp], ecx
	call R_AnnotatedLightGridPointSortsBefore
	test al, al
	jnz R_LoadLightGridPoints_Version15_810
	mov eax, [ebp-0x2a]
	mov [esi], eax
	mov eax, [ebp-0x26]
	mov [esi+0x4], eax
	movzx eax, word [ebp-0x22]
	mov [esi+0x8], ax
	add edi, 0xa
	mov [ebp-0x138], edi
	mov ebx, edi
	jmp R_LoadLightGridPoints_Version15_820
R_LoadLightGridPoints_Version15_160:
	mov ecx, eax
	jmp R_LoadLightGridPoints_Version15_830
R_LoadLightGridPoints_Version15_390:
	mov dword [ebp-0x120], 0x0
	xor edx, edx
	jmp R_LoadLightGridPoints_Version15_840
R_LoadLightGridPoints_Version15_570:
	mov ecx, [ebp-0x154]
	add ecx, 0x14
	mov [ebp-0x140], ecx
	mov ebx, [ebp-0x14c]
	add ebx, 0x2
	mov [ebp-0x128], ebx
	lea ebx, [esi+0x14]
	jmp R_LoadLightGridPoints_Version15_850
R_LoadLightGridPoints_Version15_880:
	mov [ebp-0x128], esi
	mov ebx, [ebp-0x18c]
R_LoadLightGridPoints_Version15_850:
	movzx eax, word [edx+0x4]
	cmp ax, [ebp-0x2a]
	jae R_LoadLightGridPoints_Version15_860
	mov [ebp-0x2a], ax
	movzx eax, word [edx+0x4]
R_LoadLightGridPoints_Version15_860:
	cmp ax, [ebp-0x28]
	cmovbe ax, [ebp-0x28]
	mov [ebp-0x28], ax
	mov esi, [ebp-0x128]
	cmp [ebp-0x15c], esi
	jbe R_LoadLightGridPoints_Version15_870
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
	jz R_LoadLightGridPoints_Version15_880
	mov edx, ecx
	jmp R_LoadLightGridPoints_Version15_580
R_LoadLightGridPoints_Version15_130:
	and eax, 0xffffff00
	jmp R_LoadLightGridPoints_Version15_890
R_LoadLightGridPoints_Version15_30:
	xor esi, esi
R_LoadLightGridPoints_Version15_900:
	lea ecx, [ebp-0x4c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	lea eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ExpandBounds
	add esi, 0x1
	add ebx, 0x34
	cmp [ebp-0x20], esi
	ja R_LoadLightGridPoints_Version15_900
	mov eax, [ebp-0x20]
	test eax, eax
	jnz R_LoadLightGridPoints_Version15_240
	jmp R_LoadLightGridPoints_Version15_220
R_LoadLightGridPoints_Version15_870:
	lea eax, [esi+esi*4]
	lea ebx, [eax+eax]
	mov edx, s_world
	jmp R_LoadLightGridPoints_Version15_580
	nop


;R_LoadReflectionProbes(unsigned int)
R_LoadReflectionProbes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2007c
	cmp eax, 0xb
	ja R_LoadReflectionProbes_10
	mov edi, s_world
	lea eax, [edi+0xe4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20004
	mov dword [esp], 0x29
	call Com_GetBspLump
	mov esi, eax
	mov eax, [edi+0xe4]
	add eax, 0x1
	mov [edi+0xe4], eax
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocInternal
	mov [edi+0xe8], eax
	mov eax, [edi+0xe4]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
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
	jnz R_LoadReflectionProbes_20
R_LoadReflectionProbes_70:
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
R_LoadReflectionProbes_30:
	mov dword [ebp+eax-0x20010], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz R_LoadReflectionProbes_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov ebx, s_world
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call R_GenerateReflectionImages
	mov dword [esp+0xc], 0x1
	mov eax, [ebx+0xe4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov eax, [ebp-0x20070]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe8]
	add eax, 0x10
	mov [esp], eax
	call R_GenerateReflectionImages
	mov eax, [ebp-0x20070]
	mov [esp], eax
	call Hunk_FreeTempMemory
R_LoadReflectionProbes_50:
	mov dword [rgl+0x18], 0x1
	add esp, 0x2007c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadReflectionProbes_10:
	mov ebx, s_world
	lea eax, [ebx+0xe4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x20044
	mov dword [esp], 0x29
	call Com_GetBspLump
	mov esi, eax
	mov eax, [ebx+0xe4]
	add eax, 0x1
	mov [ebx+0xe4], eax
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0xe8], eax
	mov eax, [ebx+0xe4]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
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
R_LoadReflectionProbes_40:
	mov dword [ebp+eax-0x20010], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz R_LoadReflectionProbes_40
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov ebx, s_world
	mov eax, [ebx+0xe8]
	mov [esp], eax
	call R_GenerateReflectionImages
	mov dword [esp+0xc], 0x1
	mov eax, [ebx+0xe4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0xe8]
	add eax, 0x10
	mov [esp], eax
	call R_GenerateReflectionImages
	jmp R_LoadReflectionProbes_50
R_LoadReflectionProbes_20:
	mov ebx, eax
	mov dword [ebp-0x2006c], 0x0
R_LoadReflectionProbes_60:
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
	jb R_LoadReflectionProbes_60
	jmp R_LoadReflectionProbes_70
	nop


;R_SetParentAndCell_r(mnode_load_t*)
R_SetParentAndCell_r:
R_SetParentAndCell_r_110:
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
	jge R_SetParentAndCell_r_10
	mov eax, [edi+0x8]
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp edx, eax
	jle R_SetParentAndCell_r_20
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea ecx, [ebx+eax]
	mov [ebp-0x24], ecx
	sar eax, 0x4
	cmp edx, eax
	jg R_SetParentAndCell_r_30
R_SetParentAndCell_r_150:
	mov edx, [esi+0xc]
	mov eax, edx
	shl eax, 0x4
	lea ecx, [ebx+eax]
	mov [ebp-0x20], ecx
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl R_SetParentAndCell_r_40
R_SetParentAndCell_r_140:
	mov dword [esi], 0xfffffffe
	mov ebx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+ebx]
	shl edx, 0x4
	cmp eax, [edx+ebx]
	jz R_SetParentAndCell_r_50
	mov edx, [rgl+0x10]
R_SetParentAndCell_r_20:
	mov ecx, [edi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea esi, [ebx+eax]
	mov [ebp-0x1c], esi
	sar eax, 0x4
	cmp eax, edx
	jge R_SetParentAndCell_r_60
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp edx, eax
	jg R_SetParentAndCell_r_70
R_SetParentAndCell_r_120:
	mov eax, [ebp-0x1c]
	mov ecx, [eax+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea esi, [ebx+eax]
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl R_SetParentAndCell_r_80
	mov esi, [ebp-0x1c]
R_SetParentAndCell_r_180:
	mov dword [esi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz R_SetParentAndCell_r_90
	mov ecx, [edi+0xc]
R_SetParentAndCell_r_60:
	mov dword [edi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [edi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz R_SetParentAndCell_r_100
R_SetParentAndCell_r_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetParentAndCell_r_100:
	mov [edi], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetParentAndCell_r_70:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call R_SetParentAndCell_r_110
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_SetParentAndCell_r_110
	mov dword [esi], 0xfffffffe
	mov ebx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov edx, [eax+ebx]
	mov eax, [esi+0xc]
	shl eax, 0x4
	cmp edx, [eax+ebx]
	jnz R_SetParentAndCell_r_120
	mov [esi], edx
	mov ebx, [rgl+0x14]
	jmp R_SetParentAndCell_r_120
R_SetParentAndCell_r_40:
	mov eax, [ecx+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call R_SetParentAndCell_r_110
	mov ebx, [ebp-0x20]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_SetParentAndCell_r_110
	mov dword [ebx], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov ecx, [eax+edx]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp ecx, [eax+edx]
	jz R_SetParentAndCell_r_130
	mov edx, [esi+0xc]
	jmp R_SetParentAndCell_r_140
R_SetParentAndCell_r_30:
	mov eax, [ecx+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call R_SetParentAndCell_r_110
	mov ebx, [ebp-0x24]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_SetParentAndCell_r_110
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
	jnz R_SetParentAndCell_r_150
	mov [ecx], edx
	mov ebx, [rgl+0x14]
	jmp R_SetParentAndCell_r_150
R_SetParentAndCell_r_80:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [ebx+eax]
	call R_SetParentAndCell_r_110
	mov edx, [rgl+0x14]
	mov ecx, [esi+0xc]
	mov eax, ecx
	shl eax, 0x4
	lea ebx, [edx+eax]
	sar eax, 0x4
	cmp eax, [rgl+0x10]
	jl R_SetParentAndCell_r_160
R_SetParentAndCell_r_200:
	mov dword [esi], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [esi+0x8]
	shl eax, 0x4
	mov eax, [eax+edx]
	shl ecx, 0x4
	cmp eax, [ecx+edx]
	jz R_SetParentAndCell_r_170
	mov ebx, [ebp-0x1c]
	mov ecx, [ebx+0xc]
	mov esi, ebx
	jmp R_SetParentAndCell_r_180
R_SetParentAndCell_r_50:
	mov [esi], eax
	mov ebx, [rgl+0x14]
	mov edx, [rgl+0x10]
	jmp R_SetParentAndCell_r_20
R_SetParentAndCell_r_90:
	mov [esi], eax
	mov ecx, [edi+0xc]
	jmp R_SetParentAndCell_r_60
R_SetParentAndCell_r_160:
	mov eax, [ebx+0x8]
	shl eax, 0x4
	lea eax, [edx+eax]
	call R_SetParentAndCell_r_110
	mov eax, [ebx+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_SetParentAndCell_r_110
	mov dword [ebx], 0xfffffffe
	mov edx, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov ecx, [eax+edx]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp ecx, [eax+edx]
	jz R_SetParentAndCell_r_190
	mov ecx, [esi+0xc]
	jmp R_SetParentAndCell_r_200
R_SetParentAndCell_r_130:
	mov [ebx], ecx
	mov edx, [esi+0xc]
	jmp R_SetParentAndCell_r_140
R_SetParentAndCell_r_170:
	mov [esi], eax
	mov edx, [ebp-0x1c]
	mov ecx, [edx+0xc]
	mov esi, edx
	jmp R_SetParentAndCell_r_180
R_SetParentAndCell_r_190:
	mov [ebx], ecx
	mov ecx, [esi+0xc]
	jmp R_SetParentAndCell_r_200
	nop


;R_LoadNodesAndLeafs(unsigned int)
R_LoadNodesAndLeafs:
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
	call Com_GetBspLump
	mov edi, eax
	cmp dword [ebp-0x38], 0xe
	ja R_LoadNodesAndLeafs_10
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x1c
	call Com_GetBspLump
	mov [ebp-0x2c], eax
	mov dword [ebp-0x30], 0x0
R_LoadNodesAndLeafs_130:
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
	jz R_LoadNodesAndLeafs_20
	mov dword [ebp-0x34], 0x0
	jmp R_LoadNodesAndLeafs_30
R_LoadNodesAndLeafs_50:
	mov [edx+0x8], eax
	add ecx, 0x4
	add edx, 0x4
	sub ebx, 0x1
	jnz R_LoadNodesAndLeafs_40
	add dword [ebp-0x34], 0x1
	add edi, 0x24
	add esi, 0x10
	mov eax, [ebp-0x34]
	cmp eax, [ebp-0x1c]
	jae R_LoadNodesAndLeafs_20
R_LoadNodesAndLeafs_30:
	mov eax, [edi]
	mov [esi+0x4], eax
	mov ecx, edi
	mov edx, esi
	mov ebx, 0x2
R_LoadNodesAndLeafs_40:
	mov eax, [ecx+0x4]
	test eax, eax
	jns R_LoadNodesAndLeafs_50
	not eax
	add eax, [ebp-0x1c]
	jmp R_LoadNodesAndLeafs_50
R_LoadNodesAndLeafs_20:
	cmp dword [ebp-0x38], 0xe
	jbe R_LoadNodesAndLeafs_60
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz R_LoadNodesAndLeafs_70
R_LoadNodesAndLeafs_110:
	mov esi, [rgl+0x14]
	mov ebx, esi
	mov ecx, [rgl+0x10]
	test ecx, ecx
	jle R_LoadNodesAndLeafs_80
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [esi+eax]
	call R_SetParentAndCell_r
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_SetParentAndCell_r
	mov dword [esi], 0xfffffffe
	mov esi, [rgl+0x14]
	mov eax, [ebx+0x8]
	shl eax, 0x4
	mov edx, [eax+esi]
	mov eax, [ebx+0xc]
	shl eax, 0x4
	cmp edx, [eax+esi]
	jz R_LoadNodesAndLeafs_90
R_LoadNodesAndLeafs_80:
	cmp dword [esi], 0xfffffffe
	jz R_LoadNodesAndLeafs_100
	mov eax, 0x1
R_LoadNodesAndLeafs_150:
	mov ebx, s_world
	mov [ebx+0xc], eax
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0xf8], eax
	mov edx, eax
	mov eax, [rgl+0x14]
	call R_SortNodes_r
	mov eax, [rgl+0x14]
	mov [esp], eax
	call Z_FreeInternal
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadNodesAndLeafs_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jz R_LoadNodesAndLeafs_110
	xor edx, edx
R_LoadNodesAndLeafs_120:
	mov ecx, [ebp-0x2c]
	movsx eax, word [ecx+0x18]
	mov [esi], eax
	add ecx, 0x24
	mov [ebp-0x2c], ecx
	add esi, 0x10
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jb R_LoadNodesAndLeafs_120
	jmp R_LoadNodesAndLeafs_110
R_LoadNodesAndLeafs_10:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov dword [esp], 0x1c
	call Com_GetBspLump
	mov [ebp-0x30], eax
	mov dword [ebp-0x2c], 0x0
	jmp R_LoadNodesAndLeafs_130
R_LoadNodesAndLeafs_70:
	xor edx, edx
	mov ecx, [ebp-0x30]
R_LoadNodesAndLeafs_140:
	movsx eax, word [ecx+0x14]
	mov [esi], eax
	add ecx, 0x18
	mov [ebp-0x30], ecx
	add esi, 0x10
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jb R_LoadNodesAndLeafs_140
	jmp R_LoadNodesAndLeafs_110
R_LoadNodesAndLeafs_100:
	mov eax, [esi+0x8]
	shl eax, 0x4
	lea eax, [esi+eax]
	call R_CountNodes_r
	mov ebx, eax
	mov eax, [esi+0xc]
	shl eax, 0x4
	add eax, [rgl+0x14]
	call R_CountNodes_r
	lea eax, [ebx+eax+0x2]
	jmp R_LoadNodesAndLeafs_150
R_LoadNodesAndLeafs_90:
	mov [ebx], edx
	mov esi, [rgl+0x14]
	jmp R_LoadNodesAndLeafs_80


;R_LoadSurfaces(GfxBspLoad*)
R_LoadSurfaces:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x525c
	mov [ebp-0x51f0], eax
	cmp dword [eax], 0x15
	ja R_LoadSurfaces_10
	mov dword [esp+0x4], _cstring_bsp_compiled_wit
	mov dword [esp], 0x8
	call Com_PrintWarning
R_LoadSurfaces_10:
	lea ecx, [ebp-0x1c]
	mov eax, [ebp-0x51f0]
	mov edx, [eax+0x4]
	lea eax, [ebp-0x20]
	mov [esp], eax
	mov ebx, [ebp-0x51f0]
	mov eax, [ebx]
	call R_LoadTriangleSurfaces
	mov edi, [ebp-0x20]
	test edi, edi
	jnz R_LoadSurfaces_20
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_no_surfa
	mov dword [esp], 0x2
	call Com_Error
R_LoadSurfaces_20:
	mov esi, [ebp-0x51f0]
	cmp dword [esi+0x4], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x30
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x44
	mov [esp], eax
	call Com_GetBspLump
	mov [ebp-0x51ec], eax
	mov esi, [ebp-0x24]
	test esi, esi
	jnz R_LoadSurfaces_30
	mov eax, s_world
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loadmap_no_verti
	mov dword [esp], 0x2
	call Com_Error
R_LoadSurfaces_30:
	mov edx, [ebp-0x24]
	mov eax, s_world
	mov [eax+0x30], edx
	mov eax, [ebp-0x51f0]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz R_LoadSurfaces_40
R_LoadSurfaces_140:
	mov dword [ebp-0x2c], 0x4
	lea ebx, [ebp-0x30]
R_LoadSurfaces_130:
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Hunk_AllocInternal
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
	call Hunk_AllocInternal
	mov [ebp-0x51d4], eax
	mov [ebx+0x34], eax
	mov edx, [ebp-0x24]
	test edx, edx
	jnz R_LoadSurfaces_50
R_LoadSurfaces_180:
	mov ebx, [ebp-0x51f0]
	cmp dword [ebx+0x4], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x31
	lea edx, [ebp-0x28]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call Com_GetBspLump
	mov [ebp-0x51e8], eax
	mov eax, [ebp-0x20]
	mov ebx, s_world
	mov [ebx+0x18], eax
	lea eax, [eax+eax*2]
	shl eax, 0x4
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x294], eax
	mov dword [ebx+0x10], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz R_LoadSurfaces_60
	xor ecx, ecx
	xor edx, edx
	mov [ebp-0x5200], ebx
R_LoadSurfaces_70:
	mov eax, [ebp-0x1c]
	movzx eax, word [eax+edx+0x12]
	add [ebx+0x10], eax
	mov eax, [ebx+0x294]
	mov dword [eax+edx*2+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x18
	cmp [ebp-0x20], ecx
	ja R_LoadSurfaces_70
R_LoadSurfaces_150:
	mov edx, [ebp-0x5200]
	mov eax, [edx+0x10]
	add eax, eax
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebp-0x51cc], eax
	mov ecx, [ebp-0x5200]
	mov [ecx+0x14], eax
	mov edx, [ebp-0x20]
	test edx, edx
	jz R_LoadSurfaces_80
	xor eax, eax
R_LoadSurfaces_90:
	add eax, 0x1
	cmp edx, eax
	jnz R_LoadSurfaces_90
	mov dword [ebp-0x51d0], 0x0
	mov dword [ebp-0x51e4], 0x0
	mov dword [ebp-0x5178], 0x0
	mov dword [ebp-0x5174], 0x0
	mov dword [ebp-0x5170], 0x0
	mov ebx, s_world
	mov [ebp-0x5200], ebx
R_LoadSurfaces_110:
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x294]
	mov edx, [ebp-0x5178]
	mov eax, [eax+edx+0xc]
	test eax, eax
	js R_LoadSurfaces_100
R_LoadSurfaces_540:
	add dword [ebp-0x51e4], 0x1
	add dword [ebp-0x5178], 0x30
	add dword [ebp-0x5174], 0x18
	add dword [ebp-0x5170], 0x48
	mov ebx, [ebp-0x51e4]
	cmp [ebp-0x20], ebx
	ja R_LoadSurfaces_110
	jmp R_LoadSurfaces_120
R_LoadSurfaces_40:
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2a
	call Com_GetBspLump
	mov ebx, eax
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jnz R_LoadSurfaces_130
	jmp R_LoadSurfaces_140
R_LoadSurfaces_60:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp R_LoadSurfaces_150
R_LoadSurfaces_50:
	mov ebx, [ebp-0x51ec]
	mov esi, eax
	xor edi, edi
R_LoadSurfaces_170:
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
	call Vec3PackUnitVec
	mov [esi+0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x10]
	mov [ebp-0x3c], eax
	mov eax, [ebx+0x14]
	mov [ebp-0x38], eax
	lea ecx, [ebp-0x40]
	mov [esp], ecx
	call Vec3PackUnitVec
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
	jae R_LoadSurfaces_160
	mov eax, 0xbf800000
R_LoadSurfaces_160:
	mov [esi+0xc], eax
	add edi, 0x1
	add ebx, 0x44
	add esi, 0x2c
	cmp edi, [ebp-0x24]
	jb R_LoadSurfaces_170
	jmp R_LoadSurfaces_180
R_LoadSurfaces_80:
	mov esi, s_world
	mov [ebp-0x5200], esi
R_LoadSurfaces_120:
	mov eax, [ebp-0x5200]
	mov dword [eax+0x20], 0x0
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jnz R_LoadSurfaces_190
	mov dword [ebp-0x51dc], 0x0
R_LoadSurfaces_870:
	mov eax, [ebp-0x5200]
	mov edx, [eax+0x20]
	test edx, edx
	jnz R_LoadSurfaces_200
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x24], 0x0
R_LoadSurfaces_380:
	mov edx, [ebp-0x5200]
	mov edi, [edx+0x18]
	test edi, edi
	jnz R_LoadSurfaces_210
	xor eax, eax
	mov [edx+0x158], eax
	mov [edx+0x15c], eax
	mov [edx+0x160], eax
	mov [edx+0x164], eax
	mov [edx+0x168], eax
	mov [edx+0x16c], eax
R_LoadSurfaces_280:
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
	jle R_LoadSurfaces_220
	mov dword [ebp-0x5190], 0x0
	xor esi, esi
R_LoadSurfaces_240:
	mov ecx, esi
	mov edx, [ebp-0x5200]
	add ecx, [edx+0x294]
	mov eax, [ecx+0x10]
	test byte [eax+0x4], 0x8
	jnz R_LoadSurfaces_230
	movzx eax, word [ebx]
	mov edx, [ebp-0x51f0]
	mov edx, [edx+0x8]
	mov [ebp-0x5230], edx
	lea eax, [eax+eax*8]
	test dword [edx+eax*8+0x44], 0x2001
	jz R_LoadSurfaces_230
	mov eax, [ebp-0x5198]
	mov [esp+0xc], eax
	mov edx, [ebp-0x5194]
	mov [esp+0x8], edx
	lea eax, [ecx+0x24]
	mov [esp+0x4], eax
	lea eax, [ecx+0x18]
	mov [esp], eax
	call ExpandBounds
R_LoadSurfaces_230:
	add dword [ebp-0x5190], 0x1
	add esi, 0x30
	add ebx, 0x18
	cmp edi, [ebp-0x5190]
	jz R_LoadSurfaces_220
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp R_LoadSurfaces_240
R_LoadSurfaces_220:
	mov eax, [ebp-0x1c]
	mov ecx, [ebp-0x51f0]
	cmp dword [ecx], 0xe
	ja R_LoadSurfaces_250
	mov [esp], eax
	call Hunk_FreeTempMemory
R_LoadSurfaces_250:
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
	jnz R_LoadSurfaces_260
	mov dword [ebx+0x38], 0x0
R_LoadSurfaces_820:
	mov ebx, [ebp-0x5200]
	mov edx, [ebx+0x3c]
	mov esi, [ebx+0x40]
	mov eax, [ecx]
	cmp byte [eax+0xc], 0x0
	jnz R_LoadSurfaces_270
	mov dword [ebx+0x44], 0x0
R_LoadSurfaces_800:
	add esp, 0x525c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LoadSurfaces_210:
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
	jle R_LoadSurfaces_280
	xor edi, edi
	xor esi, esi
	mov ebx, s_world
	lea eax, [ebx+0x164]
	mov [ebp-0x51f8], eax
	lea edx, [ebx+0x158]
	mov [ebp-0x51fc], edx
R_LoadSurfaces_290:
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
	call ExpandBounds
	add edi, 0x1
	add esi, 0x30
	cmp edi, [ebx+0x18]
	jl R_LoadSurfaces_290
	jmp R_LoadSurfaces_280
R_LoadSurfaces_200:
	mov dword [esp], _cstring_colormap
	call R_HashString
	mov edi, eax
	mov edx, [ebp-0x51dc]
	movzx edx, byte [edx+0x3a]
	mov [ebp-0x519c], edx
	test edx, edx
	jle R_LoadSurfaces_300
	mov edx, [ebp-0x51dc]
	mov eax, [edx+0x44]
	mov esi, eax
	cmp edi, [eax]
	jz R_LoadSurfaces_310
	lea edx, [eax+0xc]
	mov ecx, edx
	xor ebx, ebx
R_LoadSurfaces_320:
	add ebx, 0x1
	cmp ebx, [ebp-0x519c]
	jz R_LoadSurfaces_300
	mov esi, edx
	mov eax, [ecx]
	add edx, 0xc
	add ecx, 0xc
	cmp edi, eax
	jnz R_LoadSurfaces_320
R_LoadSurfaces_310:
	cmp byte [esi+0x7], 0xb
	jz R_LoadSurfaces_330
	mov eax, [esi+0x8]
	cmp dword [eax], 0x5
	jz R_LoadSurfaces_340
R_LoadSurfaces_330:
	mov ebx, [ebp-0x51dc]
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov eax, [esi+0x8]
	mov eax, [eax+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_colormap_s_for_s
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [esi+0x8]
R_LoadSurfaces_340:
	mov edx, s_world
	mov [ebp-0x5200], edx
	mov [edx+0x28], eax
	movzx eax, byte [esi+0x6]
	mov [edx+0x2c], al
R_LoadSurfaces_390:
	mov ebx, [ebp-0x5200]
	mov eax, [ebx+0x20]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x24], eax
	mov dword [ebx+0x20], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz R_LoadSurfaces_350
	xor ecx, ecx
	xor ebx, ebx
	mov esi, s_world
	mov [ebp-0x5200], esi
R_LoadSurfaces_370:
	mov edx, [ebp-0x5200]
	mov eax, [edx+0x294]
	mov esi, [ebp-0x51dc]
	cmp esi, [eax+ebx+0x10]
	jnz R_LoadSurfaces_360
	mov eax, edx
	mov edx, [edx+0x20]
	mov esi, eax
	mov eax, [eax+0x24]
	mov [eax+edx*4], ecx
	add dword [esi+0x20], 0x1
R_LoadSurfaces_360:
	add ecx, 0x1
	add ebx, 0x30
	cmp ecx, [ebp-0x20]
	jb R_LoadSurfaces_370
	jmp R_LoadSurfaces_380
R_LoadSurfaces_350:
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp R_LoadSurfaces_380
R_LoadSurfaces_300:
	mov ecx, s_world
	mov [ebp-0x5200], ecx
	jmp R_LoadSurfaces_390
R_LoadSurfaces_190:
	mov dword [ebp-0x5164], 0x0
	mov dword [ebp-0x51dc], 0x0
	mov dword [ebp-0x5180], 0x0
R_LoadSurfaces_750:
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
	jz R_LoadSurfaces_400
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
R_LoadSurfaces_400:
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
	call Com_sprintf
	mov dword [esp+0x4], 0x9
	mov [esp], esi
	call Material_Register
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
	jnz R_LoadSurfaces_410
R_LoadSurfaces_860:
	mov eax, [ebp-0x51d8]
	test byte [eax+0x4], 0x20
	jz R_LoadSurfaces_420
	mov edx, [ebp-0x515c]
	movzx ebx, word [edx+0xa]
	movzx ecx, bx
	mov [ebp-0x51b8], ecx
	test bx, bx
	jz R_LoadSurfaces_430
	xor ecx, ecx
	lea edx, [ebp-0x5158]
R_LoadSurfaces_440:
	lea eax, [ecx*4]
	mov [ebp+eax-0x1158], ecx
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov dword [edx+0x8], 0x0
	mov dword [ebp+eax-0x2158], 0x0
	add ecx, 0x1
	add edx, 0xc
	cmp [ebp-0x51b8], ecx
	ja R_LoadSurfaces_440
R_LoadSurfaces_430:
	mov esi, s_world
	mov [ebp-0x5200], esi
	mov eax, [esi+0x14]
	mov [ebp-0x5168], eax
	test bx, bx
	jz R_LoadSurfaces_420
	mov ebx, eax
R_LoadSurfaces_600:
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
R_LoadSurfaces_580:
	mov ecx, 0x1
R_LoadSurfaces_450:
	movzx eax, word [edx]
	add eax, [ebp-0x516c]
	mov [ebp+ecx*4-0x50], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz R_LoadSurfaces_450
	mov esi, [ebp-0x5204]
	mov [ebp-0x5188], esi
	mov dword [ebp-0x51ac], 0x0
	mov eax, [ebp-0x51b0]
	shl eax, 0x2
	mov [ebp-0x520c], eax
	mov edx, esi
R_LoadSurfaces_510:
	mov ecx, 0x1
R_LoadSurfaces_460:
	movzx eax, word [edx]
	add eax, [ebp-0x516c]
	mov [ebp+ecx*4-0x15c], eax
	add ecx, 0x1
	add edx, 0x2
	cmp ecx, 0x4
	jnz R_LoadSurfaces_460
	mov esi, 0x1
	lea edx, [ebp-0x1158]
	add edx, [ebp-0x520c]
	mov [ebp-0x5208], edx
	mov ecx, [ebp-0x51ac]
	lea edi, [ebp+ecx*4-0x1158]
R_LoadSurfaces_490:
	mov ebx, [ebp+esi*4-0x50]
	mov eax, 0x1
R_LoadSurfaces_480:
	cmp ebx, [ebp+eax*4-0x15c]
	jz R_LoadSurfaces_470
R_LoadSurfaces_550:
	add eax, 0x1
	cmp eax, 0x4
	jnz R_LoadSurfaces_480
	add esi, 0x1
	cmp esi, 0x4
	jnz R_LoadSurfaces_490
	add dword [ebp-0x51ac], 0x1
	add dword [ebp-0x5188], 0x6
	mov ebx, [ebp-0x51ac]
	cmp [ebp-0x51b8], ebx
	jbe R_LoadSurfaces_500
	mov edx, [ebp-0x5188]
	jmp R_LoadSurfaces_510
R_LoadSurfaces_100:
	mov [ebp-0x517c], edx
	mov edi, [ebp-0x5174]
	mov ecx, [ebp-0x51e4]
	mov [ebp-0x5160], ecx
R_LoadSurfaces_530:
	mov esi, [ebp-0x517c]
	mov ebx, [ebp-0x5200]
	add esi, [ebx+0x294]
	mov eax, [esi+0xc]
	test eax, eax
	js R_LoadSurfaces_520
R_LoadSurfaces_640:
	add dword [ebp-0x5160], 0x1
	add dword [ebp-0x517c], 0x30
	add edi, 0x18
	mov ecx, [ebp-0x5160]
	cmp ecx, [ebp-0x20]
	jb R_LoadSurfaces_530
	jmp R_LoadSurfaces_540
R_LoadSurfaces_470:
	mov edx, [ebp-0x5208]
	mov ecx, [edx]
	mov edx, [edi]
	cmp ecx, edx
	jz R_LoadSurfaces_550
	jae R_LoadSurfaces_560
	mov [edi], ecx
	mov byte [ebp-0x51b1], 0x0
	jmp R_LoadSurfaces_550
R_LoadSurfaces_560:
	mov ecx, [ebp-0x5208]
	mov [ecx], edx
	mov byte [ebp-0x51b1], 0x0
	jmp R_LoadSurfaces_550
R_LoadSurfaces_500:
	add dword [ebp-0x51b0], 0x1
	add dword [ebp-0x5184], 0x6
	mov esi, [ebp-0x51b0]
	cmp [ebp-0x51b8], esi
	jbe R_LoadSurfaces_570
	mov edx, [ebp-0x5184]
	jmp R_LoadSurfaces_580
R_LoadSurfaces_570:
	cmp byte [ebp-0x51b1], 0x0
	jnz R_LoadSurfaces_590
	mov ebx, [ebp-0x5168]
	jmp R_LoadSurfaces_600
R_LoadSurfaces_520:
	mov eax, [ebp-0x1c]
	movzx ecx, word [edi+eax]
	mov edx, [ebp-0x5174]
	cmp cx, [eax+edx]
	jz R_LoadSurfaces_610
	mov ebx, [ebp-0x51f0]
	mov edx, [ebx+0x8]
	mov ebx, [ebp-0x5170]
	lea eax, [edx+ebx]
	mov [esp+0x4], eax
	movzx eax, cx
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_LoadSurfaces_620
	mov eax, [ebp-0x1c]
R_LoadSurfaces_610:
	lea edx, [edi+eax]
	mov ebx, [ebp-0x5174]
	lea ecx, [eax+ebx]
	movzx eax, byte [edx+0x3]
	cmp al, [ecx+0x3]
	jz R_LoadSurfaces_630
	mov eax, s_world
	mov [ebp-0x5200], eax
	jmp R_LoadSurfaces_640
R_LoadSurfaces_590:
	xor edi, edi
	mov dword [ebp-0x518c], 0x0
	movss xmm3, dword [_float_1_00000000]
R_LoadSurfaces_660:
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
R_LoadSurfaces_650:
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
	jnz R_LoadSurfaces_650
	movss [ebp+ebx*4-0x2158], xmm1
	add edi, 0x1
	add dword [ebp-0x518c], 0x3
	cmp [ebp-0x51b8], edi
	ja R_LoadSurfaces_660
	xor edx, edx
	pxor xmm2, xmm2
	lea eax, [ebp-0x5158]
R_LoadSurfaces_680:
	movss xmm0, dword [ebp+edx*4-0x2158]
	ucomiss xmm0, xmm2
	jbe R_LoadSurfaces_670
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
R_LoadSurfaces_670:
	add edx, 0x1
	add eax, 0xc
	cmp [ebp-0x51b8], edx
	ja R_LoadSurfaces_680
	xor esi, esi
	xor edi, edi
R_LoadSurfaces_700:
	mov eax, [ebp+esi*4-0x1158]
	xor ebx, ebx
	lea eax, [eax+eax*2]
	lea ecx, [ebp+eax*4-0x18]
R_LoadSurfaces_690:
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
	jnz R_LoadSurfaces_690
	add esi, 0x1
	add edi, 0x3
	cmp [ebp-0x51b8], esi
	ja R_LoadSurfaces_700
R_LoadSurfaces_420:
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
	jz R_LoadSurfaces_710
	mov ecx, [ebp-0x51dc]
	test ecx, ecx
	jz R_LoadSurfaces_720
	cmp [ebp-0x51dc], ebx
	jz R_LoadSurfaces_720
	mov esi, [ebp-0x51dc]
	mov eax, [esi]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_map_has_at_least
	mov dword [esp], 0x2
	call Com_Error
R_LoadSurfaces_720:
	mov eax, s_world
	mov [ebp-0x5200], eax
	add dword [eax+0x20], 0x1
	mov edx, [ebp-0x5200]
	mov eax, [edx+0xd8]
	mov ecx, [ebp-0x515c]
	mov [ecx+0x16], al
	mov ebx, [ebp-0x51d8]
	mov [ebp-0x51dc], ebx
R_LoadSurfaces_710:
	mov esi, [ebp-0x515c]
	cmp byte [esi+0x14], 0x1f
	jz R_LoadSurfaces_730
R_LoadSurfaces_920:
	add dword [ebp-0x5164], 0x1
	add dword [ebp-0x5180], 0x18
	mov ecx, [ebp-0x5164]
	cmp ecx, [ebp-0x20]
	jae R_LoadSurfaces_740
	mov ebx, s_world
	mov [ebp-0x5200], ebx
	jmp R_LoadSurfaces_750
R_LoadSurfaces_620:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp R_LoadSurfaces_640
R_LoadSurfaces_630:
	movzx eax, byte [edx+0x2]
	cmp al, [ecx+0x2]
	jz R_LoadSurfaces_760
	mov edx, s_world
	mov [ebp-0x5200], edx
	jmp R_LoadSurfaces_640
R_LoadSurfaces_760:
	movzx edx, word [edx+0x12]
	mov eax, [ebp-0x51d0]
	mov [esi+0xc], eax
	mov ecx, [ebp-0x51f0]
	cmp dword [ecx], 0x13
	jbe R_LoadSurfaces_770
	mov eax, [ebp-0x1c]
	cmp byte [edi+eax+0x5], 0x0
	jz R_LoadSurfaces_780
R_LoadSurfaces_770:
	or byte [esi+0x17], 0x1
R_LoadSurfaces_780:
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
	jmp R_LoadSurfaces_640
R_LoadSurfaces_270:
	test edx, edx
	jz R_LoadSurfaces_790
	mov ebx, edx
R_LoadSurfaces_830:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5200]
	add eax, 0x44
	mov [esp], eax
	call R_AllocStaticVertexBuffer
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x44]
	mov [esp], eax
	call R_FinishStaticVertexBuffer
	jmp R_LoadSurfaces_800
R_LoadSurfaces_260:
	test edx, edx
	jz R_LoadSurfaces_810
	mov ebx, edx
R_LoadSurfaces_840:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov eax, [ebp-0x5200]
	add eax, 0x38
	mov [esp], eax
	call R_AllocStaticVertexBuffer
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	mov esi, [ebp-0x5200]
	mov eax, [esi+0x38]
	mov [esp], eax
	call R_FinishStaticVertexBuffer
	mov eax, s_world
	mov [ebp-0x5200], eax
	mov ecx, r_loadForRenderer
	jmp R_LoadSurfaces_820
R_LoadSurfaces_790:
	mov dword [ebp-0x34], 0x0
	lea esi, [ebp-0x34]
	mov ebx, 0x4
	jmp R_LoadSurfaces_830
R_LoadSurfaces_810:
	mov dword [ebp-0x34], 0x0
	lea esi, [ebp-0x34]
	mov ebx, 0x4
	jmp R_LoadSurfaces_840
R_LoadSurfaces_410:
	mov dword [ebp-0x51c0], 0x0
R_LoadSurfaces_850:
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
	call AddPointToBounds
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
	ja R_LoadSurfaces_850
	jmp R_LoadSurfaces_860
R_LoadSurfaces_740:
	mov esi, s_world
	mov [ebp-0x5200], esi
	jmp R_LoadSurfaces_870
R_LoadSurfaces_730:
	mov dword [ebp-0x51a0], 0x0
R_LoadSurfaces_910:
	mov edx, [ebp-0x515c]
	mov eax, [edx+0x10]
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov ecx, [ebp-0x51a0]
	mov esi, [eax+ecx*4+0xc]
	test esi, esi
	jz R_LoadSurfaces_880
	cmp word [esi+0x6], 0x0
	jz R_LoadSurfaces_880
	mov ebx, esi
	xor edi, edi
R_LoadSurfaces_900:
	movzx eax, byte [ebx+0x17]
	test al, 0x6
	jz R_LoadSurfaces_890
	mov edx, [ebp-0x515c]
	mov eax, [edx+0x10]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_world_surface_us
	mov dword [esp], 0x2
	call Com_Error
R_LoadSurfaces_890:
	add edi, 0x1
	add ebx, 0x14
	movzx eax, word [esi+0x6]
	cmp edi, eax
	jb R_LoadSurfaces_900
R_LoadSurfaces_880:
	add dword [ebp-0x51a0], 0x1
	cmp dword [ebp-0x51a0], 0x22
	jnz R_LoadSurfaces_910
	jmp R_LoadSurfaces_920
	nop


;R_ParseSunLight(SunLightParseParams*, char const*)
R_ParseSunLight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x104c
	mov esi, [ebp+0x8]
R_ParseSunLight_50:
	lea eax, [ebp+0xc]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz R_ParseSunLight_10
R_ParseSunLight_30:
	cmp dl, 0x7d
	jz R_ParseSunLight_10
	cmp dl, 0x7b
	jnz R_ParseSunLight_20
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
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jnz R_ParseSunLight_30
R_ParseSunLight_10:
	mov eax, [ebp+0xc]
	add esp, 0x104c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ParseSunLight_20:
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	lea ebx, [ebp-0x818]
	mov [esp], ebx
	call Q_strncpyz
	lea eax, [ebp+0xc]
	mov [esp], eax
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz R_ParseSunLight_10
	cmp dl, 0x7d
	jz R_ParseSunLight_10
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	lea edi, [ebp-0x1018]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_ambient
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_40
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1030]
	cvtsd2ss xmm0, [ebp-0x1030]
	movss [esi+0x40], xmm0
	ucomiss xmm0, [_float_2_00000000]
	jbe R_ParseSunLight_50
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_warning_ambient_
	mov dword [esp], 0x8
	call Com_PrintWarning
	movss xmm0, dword [_float_0_01568628]
	mulss xmm0, [esi+0x40]
	movss [esi+0x40], xmm0
	jmp R_ParseSunLight_50
R_ParseSunLight_40:
	mov dword [esp+0x4], _cstring__color
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_60
	lea edx, [esi+0x44]
	xor eax, eax
	mov [esi+0x44], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [esi+0x4c]
	mov [esp+0x10], eax
	lea eax, [esi+0x48]
R_ParseSunLight_120:
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_f_f_f
	mov [esp], edi
	call sscanf
	jmp R_ParseSunLight_50
R_ParseSunLight_60:
	mov dword [esp+0x4], _cstring_diffusefraction
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_70
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1028]
	cvtsd2ss xmm0, [ebp-0x1028]
	movss [esi+0x50], xmm0
	jmp R_ParseSunLight_50
R_ParseSunLight_70:
	mov dword [esp+0x4], _cstring_suncolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz R_ParseSunLight_80
	mov dword [esp+0x4], _cstring_sundiffusecolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz R_ParseSunLight_90
	mov dword [esp+0x4], _cstring_sunlight
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_100
	mov [esp], edi
	call atof
	fstp qword [ebp-0x1020]
	cvtsd2ss xmm0, [ebp-0x1020]
	movss [esi+0x54], xmm0
	jmp R_ParseSunLight_50
R_ParseSunLight_80:
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
	call ColorNormalize
	fstp st0
	jmp R_ParseSunLight_50
R_ParseSunLight_90:
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
	call ColorNormalize
	fstp st0
	mov byte [esi+0x70], 0x1
	jmp R_ParseSunLight_50
R_ParseSunLight_100:
	mov dword [esp+0x4], _cstring_sundirection
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_110
	lea edx, [esi+0x74]
	xor eax, eax
	mov [esi+0x74], eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	lea eax, [esi+0x7c]
	mov [esp+0x10], eax
	lea eax, [esi+0x78]
	jmp R_ParseSunLight_120
R_ParseSunLight_110:
	mov dword [esp+0x4], _cstring_name
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz R_ParseSunLight_50
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], edi
	mov [esp], esi
	call Q_strncpyz
	jmp R_ParseSunLight_50
	nop


;R_GetBspMaterial(unsigned int, GfxSurface*, GfxWorldVertex*)
R_GetBspMaterial:
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
	jz R_GetBspMaterial_10
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
R_GetBspMaterial_10:
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
	call Com_sprintf
	mov dword [esp+0x4], 0x9
	mov [esp], ebx
	call Material_Register
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_InitPrimaryLights(GfxLight*)
R_InitPrimaryLights:
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
	jz R_InitPrimaryLights_10
	mov esi, [ebp+0x8]
	mov dword [ebp-0x1c], 0x0
	xor edi, edi
	mov [ebp-0x24], edx
	jmp R_InitPrimaryLights_20
R_InitPrimaryLights_30:
	mov [esp], eax
	call R_RegisterLightDef
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
	jae R_InitPrimaryLights_10
R_InitPrimaryLights_20:
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
	jnz R_InitPrimaryLights_30
	mov dword [esi+0x3c], 0x0
	mov ebx, [ebp-0x20]
	add dword [ebp-0x1c], 0x1
	mov eax, [ebx+0x20a0]
	add edi, 0x44
	add esi, 0x40
	mov edx, [ebp-0x1c]
	cmp edx, [eax+0xdc]
	jb R_InitPrimaryLights_20
R_InitPrimaryLights_10:
	mov edx, [eax+0xd8]
	test edx, edx
	jz R_InitPrimaryLights_40
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
R_InitPrimaryLights_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_LoadWorldInternal(char const*)
R_LoadWorldInternal:
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
	call Com_GetBspVersion
	cmp eax, 0x12
	ja R_LoadWorldInternal_10
R_LoadWorldInternal_300:
	xor eax, eax
R_LoadWorldInternal_310:
	mov [rgl+0x24], eax
	call Com_GetBspVersion
	mov [rgl+0x20], eax
	mov esi, 0xffffffff
	cld
	mov ecx, esi
	mov edi, [ebp+0x8]
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocInternal
	mov ebx, s_world
	mov [ebx], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov eax, [ebx]
	mov [esp], eax
	call Com_GetFilenameSubString
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ecx, [ebp-0x68]
	mov [esp], ecx
	call Q_strncpyz
	lea edi, [ebp-0x68]
	mov [esp+0x4], edi
	mov [esp], edi
	call Com_StripExtension
	cld
	mov ecx, esi
	xor eax, eax
	repne scasb
	not ecx
	mov [esp], ecx
	call Hunk_AllocInternal
	mov [ebx+0x4], eax
	lea edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	call CM_GetPlanes
	mov [ebx+0xf4], eax
	call CM_GetPlaneCount
	mov [ebx+0x8], eax
	xor esi, esi
R_LoadWorldInternal_20:
	mov [esp], esi
	call DynEnt_GetEntityCount
	movzx eax, ax
	mov [ebx+0x2b4], eax
	add eax, 0x1f
	shr eax, 0x5
	mov [ebx+0x2ac], eax
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x2
	jnz R_LoadWorldInternal_20
	mov dword [esp+0x8], _cstring_materials
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov dword [esp+0x8], rgl+0x2c
	mov dword [esp+0x4], 0x48
	mov dword [esp], 0x0
	call Com_GetBspLump
	mov [rgl+0x28], eax
	mov dword [esp+0x8], _cstring_sun_settings
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x27
	call Com_GetBspLump
	mov [esp+0x4], eax
	mov esi, s_world
	lea eax, [esi+0x48]
	mov [esp], eax
	call R_ParseSunLight
	mov dword [esp], 0x40
	call Hunk_AllocInternal
	mov ebx, eax
	mov [esi+0xc8], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	lea edi, [ebp-0x28]
	mov [esp+0x4], edi
	lea eax, [esi+0xbc]
	mov [esp], eax
	call AngleVectors
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
	jz R_LoadWorldInternal_30
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
R_LoadWorldInternal_30:
	mov dword [esp+0x8], _cstring_primary_lights
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	cmp dword [rgl+0x20], 0xe
	ja R_LoadWorldInternal_40
	mov dword [esi+0xd8], 0x1
	mov dword [esi+0xdc], 0x2
R_LoadWorldInternal_550:
	mov dword [esp+0x8], _cstring_light_regions
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	call R_LoadLightRegions
	mov dword [esp+0x8], _cstring_lightmaps
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, rgl+0x20
	call R_LoadLightmaps
	cmp dword [rgl+0x20], 0xf
	ja R_LoadWorldInternal_50
	mov dword [esp+0x8], _cstring_lightgrid_colors
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	call R_LoadLightGridColors
	mov dword [esp+0x8], _cstring_lightgrid_points
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	mov [esp], eax
	call R_LoadLightGridPoints_Version15
R_LoadWorldInternal_530:
	mov ebx, s_world
	mov eax, [ebx+0xdc]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x23c], eax
	mov dword [esp+0x8], _cstring_submodels
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov edi, [rgl+0x24]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x30
	mov dword [esp], 0x25
	call Com_GetBspLump
	mov [ebp-0x20104], eax
	mov eax, [ebp-0x1c]
	lea edx, [eax*8]
	shl eax, 0x6
	sub eax, edx
	mov [esp], eax
	call Hunk_AllocInternal
	mov esi, eax
	mov [ebx+0x154], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x150], eax
	test eax, eax
	jz R_LoadWorldInternal_60
	mov edx, [ebp-0x20104]
	lea edi, [edx+edi*2+0x18]
	mov dword [ebp-0x20100], 0x0
R_LoadWorldInternal_90:
	mov ecx, [ebp-0x20104]
	mov edx, esi
	mov ebx, 0x3
R_LoadWorldInternal_70:
	mov eax, [ecx]
	mov [edx+0x18], eax
	mov eax, [ecx+0xc]
	mov [edx+0x24], eax
	add ecx, 0x4
	add edx, 0x4
	sub ebx, 0x1
	jnz R_LoadWorldInternal_70
	movzx eax, word [edi+0x4]
	mov [esi+0x30], ax
	test ax, ax
	jnz R_LoadWorldInternal_80
	mov eax, 0xffffffff
R_LoadWorldInternal_460:
	mov [esi+0x32], ax
	add dword [ebp-0x20100], 0x1
	add dword [ebp-0x20104], 0x30
	add esi, 0x38
	add edi, 0x30
	mov ecx, [ebp-0x20100]
	cmp [ebp-0x1c], ecx
	ja R_LoadWorldInternal_90
R_LoadWorldInternal_60:
	mov dword [esp+0x8], _cstring_surfaces
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, rgl+0x20
	call R_LoadSurfaces
	mov dword [esp+0x8], _cstring_cull_groups
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	cmp dword [rgl+0x24], 0x1
	sbb eax, eax
	and eax, 0xffffffda
	add eax, 0x32
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [ebp-0x1c]
	shl eax, 0x5
	mov [esp], eax
	call Hunk_AllocInternal
	mov ecx, eax
	mov edx, s_world
	mov [edx+0x298], eax
	mov eax, [ebp-0x1c]
	mov [edx+0xe0], eax
	test eax, eax
	jz R_LoadWorldInternal_100
	mov esi, ecx
	mov dword [ebp-0x200fc], 0x0
R_LoadWorldInternal_130:
	mov edx, ebx
	mov ecx, esi
	lea edi, [ebx+0xc]
R_LoadWorldInternal_110:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	add edx, 0x4
	add ecx, 0x4
	cmp edi, edx
	jnz R_LoadWorldInternal_110
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz R_LoadWorldInternal_120
	mov edx, 0xffffffff
R_LoadWorldInternal_450:
	mov [esi+0x1c], edx
	mov [esi+0x18], eax
	add dword [ebp-0x200fc], 0x1
	add esi, 0x20
	add ebx, 0x20
	mov eax, [ebp-0x200fc]
	cmp [ebp-0x1c], eax
	ja R_LoadWorldInternal_130
R_LoadWorldInternal_100:
	mov dword [esp+0x8], _cstring_cull_group_indic
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xd
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [ebp-0x1c]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
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
	call Com_Printf
	call SCR_UpdateLoadScreen
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0xc
	mov dword [esp], 0x13
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [ebp-0x1c]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
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
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x24]
	call R_LoadAabbTrees
	mov dword [esp+0x8], _cstring_cells
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov edx, [rgl+0x24]
	mov eax, [rgl+0x20]
	call R_LoadCells
	mov dword [esp+0x8], _cstring_portals
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	call R_LoadPortals
	mov dword [esp+0x8], _cstring_nodes_and_leafs
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	call R_LoadNodesAndLeafs
	call Material_Sort
	call R_SortSurfaces
	mov edi, s_world
	mov [ebp-0x2010c], edi
	mov eax, [edi+0x150]
	test eax, eax
	jle R_LoadWorldInternal_140
	mov dword [ebp-0x200f8], 0x0
	mov dword [ebp-0x200bc], 0x0
R_LoadWorldInternal_370:
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
	jz R_LoadWorldInternal_150
	mov dword [ebp-0x200f4], 0x0
	lea edi, [ecx+ecx*2]
	shl edi, 0x4
	mov [ebp-0x20120], edi
	mov edx, [ebp-0x200f0]
	jmp R_LoadWorldInternal_160
R_LoadWorldInternal_170:
	mov eax, [ebp-0x20108]
	add eax, [ecx+0x294]
	or byte [eax+0x17], 0x2
	add dword [ebp-0x200f4], 0x1
	mov edx, [ebp-0x200f0]
	movzx eax, word [edx+0x30]
	cmp [ebp-0x200f4], eax
	jae R_LoadWorldInternal_150
R_LoadWorldInternal_160:
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
	jz R_LoadWorldInternal_170
	mov dword [ebp-0x200ec], 0x0
	mov [ebp-0x20118], edx
	mov dword [ebp-0x20114], 0x0
	mov eax, [ebp-0x200e8]
R_LoadWorldInternal_750:
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
	call AddPointToBounds
	lea edi, [ebp-0x200ac]
	mov [esp+0x8], edi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x200cc]
	mov [esp], edx
	call AddPointToBounds
	mov [esp+0x8], edi
	lea edi, [ebp-0x28]
	mov [esp+0x4], edi
	mov eax, [ebp-0x200d0]
	mov [esp], eax
	call AddPointToBounds
	mov edx, [ebp-0x200e4]
	cmp [ebp-0x200dc], edx
	jz R_LoadWorldInternal_180
	mov ecx, [ebp-0x20120]
	mov [ebp-0x200c0], ecx
	mov dword [ebp-0x200c4], 0x0
	mov edi, s_world
	mov [ebp-0x2010c], edi
	mov [ebp-0x2011c], edi
	mov ebx, ecx
	mov eax, edi
R_LoadWorldInternal_290:
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
	jb R_LoadWorldInternal_190
	cmp eax, [ebp-0x20118]
	jae R_LoadWorldInternal_200
R_LoadWorldInternal_190:
	lea edx, [ebp-0x200ac]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	lea eax, [ebx+0x24]
	mov [esp+0x4], eax
	lea eax, [ebx+0x18]
	mov [esp], eax
	call BoundsOverlap
	test eax, eax
	jz R_LoadWorldInternal_210
	mov edi, [ebx+0x4]
	mov [ebp-0x200d4], edi
	movzx eax, word [ebx+0xa]
	movzx edx, ax
	mov [ebp-0x200e0], edx
	test ax, ax
	jz R_LoadWorldInternal_220
	mov ecx, [ebp-0x2010c]
	mov edi, [ecx+0x34]
	mov eax, [ebp-0x200c8]
	movss xmm3, dword [eax]
	mov eax, [ebx+0xc]
	lea esi, [eax+eax]
	add esi, [ecx+0x14]
	mov dword [ebp-0x200d8], 0x0
R_LoadWorldInternal_270:
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
	jnz R_LoadWorldInternal_230
	jp R_LoadWorldInternal_230
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz R_LoadWorldInternal_230
	jp R_LoadWorldInternal_230
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz R_LoadWorldInternal_230
	jp R_LoadWorldInternal_230
	mov edx, [ebp-0x200cc]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ecx]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	mov ecx, [ebp-0x200d0]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [eax]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [eax+0x8]
	jz R_LoadWorldInternal_250
R_LoadWorldInternal_240:
	xor eax, eax
	test al, al
	jnz R_LoadWorldInternal_260
R_LoadWorldInternal_340:
	add dword [ebp-0x200d8], 0x1
	add esi, 0x6
	mov ecx, [ebp-0x200d8]
	cmp [ebp-0x200e0], ecx
	ja R_LoadWorldInternal_270
	mov edi, [ebp-0x2011c]
	mov [ebp-0x2010c], edi
R_LoadWorldInternal_200:
	add dword [ebp-0x200c4], 0x1
	add dword [ebp-0x200c0], 0x30
	mov eax, [ebp-0x200e4]
	sub eax, [ebp-0x200dc]
	cmp eax, [ebp-0x200c4]
	jz R_LoadWorldInternal_280
R_LoadWorldInternal_360:
	mov ebx, [ebp-0x200c0]
	mov eax, [ebp-0x2010c]
	jmp R_LoadWorldInternal_290
R_LoadWorldInternal_10:
	mov dword [esp], 0x2f
	call Com_BspHasLump
	test al, al
	jz R_LoadWorldInternal_300
	mov eax, r_useLayeredMaterials
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_LoadWorldInternal_300
	mov eax, 0x1
	jmp R_LoadWorldInternal_310
R_LoadWorldInternal_230:
	movss xmm2, dword [ecx]
	ucomiss xmm3, xmm2
	jp R_LoadWorldInternal_320
	jz R_LoadWorldInternal_330
R_LoadWorldInternal_320:
	ucomiss xmm3, [eax]
	jnz R_LoadWorldInternal_340
	jp R_LoadWorldInternal_340
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz R_LoadWorldInternal_340
	jp R_LoadWorldInternal_340
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz R_LoadWorldInternal_340
	jp R_LoadWorldInternal_340
	mov eax, [ebp-0x200cc]
	ucomiss xmm1, [eax]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	mov edx, [ebp-0x200d0]
	ucomiss xmm2, [edx]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz R_LoadWorldInternal_240
R_LoadWorldInternal_250:
	jp R_LoadWorldInternal_240
	mov eax, 0x1
	test al, al
	jz R_LoadWorldInternal_340
R_LoadWorldInternal_260:
	mov edi, s_world
	mov [ebp-0x2010c], edi
	add dword [ebp-0x200ec], 0x1
	mov edx, [ebp-0x200e8]
	movzx eax, word [edx+0xa]
	cmp [ebp-0x200ec], eax
	jb R_LoadWorldInternal_350
	mov ecx, edi
	jmp R_LoadWorldInternal_170
R_LoadWorldInternal_330:
	mov edx, [ebp-0x200c8]
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [ecx+0x4]
	jnz R_LoadWorldInternal_320
	jp R_LoadWorldInternal_320
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [ecx+0x8]
	jnz R_LoadWorldInternal_320
	jp R_LoadWorldInternal_320
	mov ecx, [ebp-0x200cc]
	movss xmm0, dword [ecx]
	ucomiss xmm0, [eax]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [ecx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [ecx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	mov eax, [ebp-0x200d0]
	ucomiss xmm1, [eax]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, [ebx+0x4]
	jnz R_LoadWorldInternal_240
	jp R_LoadWorldInternal_240
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebx+0x8]
	jnz R_LoadWorldInternal_240
	jmp R_LoadWorldInternal_250
R_LoadWorldInternal_210:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	add dword [ebp-0x200c4], 0x1
	add dword [ebp-0x200c0], 0x30
	mov eax, [ebp-0x200e4]
	sub eax, [ebp-0x200dc]
	cmp eax, [ebp-0x200c4]
	jnz R_LoadWorldInternal_360
R_LoadWorldInternal_280:
	mov edi, [ebp-0x200f0]
	add word [edi+0x34], 0x1
R_LoadWorldInternal_470:
	add dword [ebp-0x200f4], 0x1
	mov edx, [ebp-0x200f0]
	movzx eax, word [edx+0x30]
	cmp [ebp-0x200f4], eax
	jb R_LoadWorldInternal_160
R_LoadWorldInternal_150:
	add dword [ebp-0x200f8], 0x1
	add dword [ebp-0x200bc], 0x38
	mov edi, [ebp-0x200f8]
	mov ecx, [ebp-0x2010c]
	cmp edi, [ecx+0x150]
	jl R_LoadWorldInternal_370
R_LoadWorldInternal_140:
	mov edx, [ebp-0x2010c]
	mov eax, [edx+0x154]
	movzx edx, word [eax+0x30]
	mov ecx, [ebp-0x2010c]
	mov eax, [ecx+0xf0]
	test eax, eax
	jg R_LoadWorldInternal_380
R_LoadWorldInternal_610:
	mov dword [esp+0x8], _cstring_entities
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	call R_LoadEntities
	mov dword [esp+0x8], _cstring_reflection_probe
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	cmp eax, 0x7
	ja R_LoadWorldInternal_390
	mov ebx, s_world
	mov dword [ebx+0xe4], 0x1
	mov dword [esp], 0x10
	call Hunk_AllocInternal
	mov [ebx+0xe8], eax
	mov dword [esp], 0x4
	call Hunk_AllocInternal
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
R_LoadWorldInternal_400:
	mov dword [ebp+eax-0x20060], 0xffff0000
	add eax, 0x4
	cmp eax, 0x1fff8
	jnz R_LoadWorldInternal_400
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	lea eax, [ebp-0x200ac]
	mov [esp+0x4], eax
	mov eax, s_world
	mov eax, [eax+0xe8]
	mov [esp], eax
	call R_GenerateReflectionImages
	mov dword [rgl+0x18], 0x1
R_LoadWorldInternal_580:
	cmp dword [rgl+0x20], 0x15
	ja R_LoadWorldInternal_410
	mov eax, s_world
	mov [ebp-0x2010c], eax
	cmp dword [eax+0xe4], 0x1
	jz R_LoadWorldInternal_420
	mov eax, [eax+0xf0]
	test eax, eax
	jg R_LoadWorldInternal_430
R_LoadWorldInternal_650:
	mov edi, [ebp-0x2010c]
	mov eax, [edi+0x244]
	test eax, eax
	jnz R_LoadWorldInternal_440
R_LoadWorldInternal_640:
	mov dword [rgl+0x1c], 0x1
	call R_PostLoadEntities
	call R_InitShadowGeometryArrays
	mov ebx, s_world
	lea eax, [ebx+0x17c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_LoadSun
	mov dword [esp+0x8], rgl+0x3c
	mov dword [esp+0x4], rgl+0x30
	mov [esp], ebx
	call R_RegisterOutdoorImage
	call R_LoadWorldRuntime
	mov [esp], ebx
	call R_AssignSModelCacheResources
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
R_LoadWorldInternal_220:
	mov edx, s_world
	mov [ebp-0x2010c], edx
	jmp R_LoadWorldInternal_200
R_LoadWorldInternal_120:
	mov edx, [ebx+0x18]
	jmp R_LoadWorldInternal_450
R_LoadWorldInternal_80:
	movzx eax, word [edi]
	jmp R_LoadWorldInternal_460
R_LoadWorldInternal_180:
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
	mov edi, [ebp-0x200f0]
	add word [edi+0x34], 0x1
	jmp R_LoadWorldInternal_470
R_LoadWorldInternal_50:
	mov dword [esp+0x8], _cstring_lightgrid_colors
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov eax, [rgl+0x20]
	call R_LoadLightGridColors
	mov dword [esp+0x8], _cstring_lightgrid_row_da
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov ebx, s_world
	lea eax, [ebx+0x130]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2d
	call Com_GetBspLump
	mov esi, eax
	mov eax, [ebx+0x130]
	test eax, eax
	jnz R_LoadWorldInternal_480
	mov dword [ebx+0x134], 0x0
R_LoadWorldInternal_680:
	mov dword [esp+0x8], _cstring_lightgrid_entrie
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	mov esi, s_world
	lea eax, [esi+0x138]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x2
	call Com_GetBspLump
	mov ebx, eax
	mov eax, [esi+0x138]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov edx, eax
	mov [esi+0x13c], eax
	mov ecx, [esi+0x138]
	test ecx, ecx
	jz R_LoadWorldInternal_490
	xor ecx, ecx
R_LoadWorldInternal_500:
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
	ja R_LoadWorldInternal_500
R_LoadWorldInternal_490:
	mov dword [esp+0x8], _cstring_lightgrid_header
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0x8
	call Com_Printf
	call SCR_UpdateLoadScreen
	lea edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x2c
	call Com_GetBspLump
	mov esi, eax
	cmp dword [ebp-0x1c], 0x13
	jbe R_LoadWorldInternal_510
R_LoadWorldInternal_670:
	mov edx, [esi+0xc]
	movzx eax, word [esi+edx*2+0x6]
	movzx edx, word [esi+edx*2]
	sub eax, edx
	lea edi, [eax+eax+0x2]
	lea eax, [edi+0x14]
	cmp eax, [ebp-0x1c]
	jz R_LoadWorldInternal_520
	mov dword [esp+0x4], _cstring_light_grid_heade
	mov dword [esp], 0x2
	call Com_Error
R_LoadWorldInternal_520:
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
	call Hunk_AllocInternal
	mov [ebx+0x12c], eax
	mov [esp+0x8], edi
	lea edx, [esi+0x14]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov eax, [ebx+0x138]
	test eax, eax
	jnz R_LoadWorldInternal_530
	mov word [ebx+0x118], 0x0
	mov word [ebx+0x11a], 0x0
	mov word [ebx+0x11c], 0x0
	mov word [ebx+0x11e], 0x0
	mov word [ebx+0x120], 0x0
	mov word [ebx+0x122], 0x0
	mov dword [ebx+0x124], 0x0
	mov dword [ebx+0x128], 0x1
	mov dword [esp], 0x2
	call Hunk_AllocInternal
	mov [ebx+0x12c], eax
	mov word [eax], 0xffff
	jmp R_LoadWorldInternal_530
R_LoadWorldInternal_40:
	mov edx, comWorld
	mov eax, [edx+0x8]
	mov [esi+0xdc], eax
	cmp eax, 0x1
	jbe R_LoadWorldInternal_540
	mov eax, [edx+0xc]
	cmp byte [eax+0x44], 0x1
	setz al
	movzx eax, al
	mov [esi+0xd8], eax
R_LoadWorldInternal_660:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	mov ebx, [eax+0xdc]
	test ebx, ebx
	jz R_LoadWorldInternal_550
	xor esi, esi
	xor ebx, ebx
R_LoadWorldInternal_570:
	mov eax, [edx+0xc]
	mov eax, [eax+ebx+0x40]
	test eax, eax
	jz R_LoadWorldInternal_560
	mov [esp], eax
	call R_RegisterLightDef
	mov edx, s_world
	mov [ebp-0x2010c], edx
R_LoadWorldInternal_560:
	add esi, 0x1
	add ebx, 0x44
	mov ecx, [ebp-0x2010c]
	cmp esi, [ecx+0xdc]
	jae R_LoadWorldInternal_550
	mov edx, comWorld
	jmp R_LoadWorldInternal_570
R_LoadWorldInternal_390:
	call R_LoadReflectionProbes
	jmp R_LoadWorldInternal_580
R_LoadWorldInternal_380:
	xor esi, esi
	xor ebx, ebx
	jmp R_LoadWorldInternal_590
R_LoadWorldInternal_600:
	mov edi, s_world
	mov [ebp-0x2010c], edi
R_LoadWorldInternal_590:
	mov ecx, [ebp-0x2010c]
	mov eax, [ecx+0x104]
	mov eax, [eax+ebx+0x1c]
	call R_BuildNoDecalAabbTree_r
	mov edx, eax
	add esi, 0x1
	add ebx, 0x38
	mov edi, [ebp-0x2010c]
	cmp esi, [edi+0xf0]
	jl R_LoadWorldInternal_600
	jmp R_LoadWorldInternal_610
R_LoadWorldInternal_440:
	xor edi, edi
	xor esi, esi
	xor ebx, ebx
	jmp R_LoadWorldInternal_620
R_LoadWorldInternal_630:
	mov eax, s_world
	mov [ebp-0x2010c], eax
R_LoadWorldInternal_620:
	mov eax, esi
	mov edx, [ebp-0x2010c]
	add eax, [edx+0x29c]
	mov [esp+0x8], eax
	mov eax, ebx
	add eax, [edx+0x290]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_SetStaticModelReflectionProbe
	add edi, 0x1
	add esi, 0x4c
	add ebx, 0x1c
	mov ecx, [ebp-0x2010c]
	cmp edi, [ecx+0x244]
	jb R_LoadWorldInternal_630
	jmp R_LoadWorldInternal_640
R_LoadWorldInternal_410:
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
	jmp R_LoadWorldInternal_650
R_LoadWorldInternal_540:
	mov dword [esi+0xd8], 0x0
	jmp R_LoadWorldInternal_660
R_LoadWorldInternal_510:
	mov dword [esp+0x4], _cstring_light_grid_heade1
	mov dword [esp], 0x2
	call Com_Error
	jmp R_LoadWorldInternal_670
R_LoadWorldInternal_480:
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x134], eax
	mov edx, [ebx+0x130]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], eax
	call Com_Memcpy
	jmp R_LoadWorldInternal_680
R_LoadWorldInternal_430:
	xor esi, esi
	xor edi, edi
R_LoadWorldInternal_710:
	mov ebx, edi
	mov ecx, [ebp-0x2010c]
	add ebx, [ecx+0x104]
	movzx eax, byte [ecx+0xe4]
	sub al, 0x1
	mov [ebx+0x30], al
	movzx eax, al
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x34], eax
	mov eax, [ebp-0x2010c]
	cmp dword [eax+0xe4], 0x1
	jz R_LoadWorldInternal_690
	xor edx, edx
	mov dword [ebp-0x2013c], 0x0
	mov ecx, s_world
	mov [ebp-0x2010c], ecx
R_LoadWorldInternal_700:
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
	ja R_LoadWorldInternal_700
R_LoadWorldInternal_720:
	add esi, 0x1
	add edi, 0x38
	mov edx, [ebp-0x2010c]
	cmp esi, [edx+0xf0]
	jl R_LoadWorldInternal_710
	jmp R_LoadWorldInternal_650
R_LoadWorldInternal_690:
	mov eax, s_world
	mov [ebp-0x2010c], eax
	jmp R_LoadWorldInternal_720
R_LoadWorldInternal_420:
	mov edi, [ebp-0x2010c]
	mov eax, [edi+0xf0]
	test eax, eax
	jle R_LoadWorldInternal_650
	xor edi, edi
	xor esi, esi
	jmp R_LoadWorldInternal_730
R_LoadWorldInternal_740:
	mov edx, s_world
	mov [ebp-0x2010c], edx
R_LoadWorldInternal_730:
	mov ebx, esi
	mov ecx, [ebp-0x2010c]
	add ebx, [ecx+0x104]
	mov byte [ebx+0x30], 0x1
	mov dword [esp], 0x1
	call Hunk_AllocInternal
	mov [ebx+0x34], eax
	mov byte [eax], 0x0
	add edi, 0x1
	add esi, 0x38
	mov eax, [ebp-0x2010c]
	cmp edi, [eax+0xf0]
	jl R_LoadWorldInternal_740
	mov edx, s_world
	mov [ebp-0x2010c], edx
	jmp R_LoadWorldInternal_650
R_LoadWorldInternal_350:
	mov eax, edx
	jmp R_LoadWorldInternal_750


;R_CreateWorldVertexBuffer(IDirect3DVertexBuffer9**, void const*, unsigned int)
R_CreateWorldVertexBuffer:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_CreateWorldVertexBuffer_10
	mov dword [esi], 0x0
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_CreateWorldVertexBuffer_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz R_CreateWorldVertexBuffer_20
	mov ebx, [ebp+0x10]
R_CreateWorldVertexBuffer_30:
	mov dword [esp+0x8], _cstring_r_createworldver
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_AllocStaticVertexBuffer
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov eax, [esi]
	mov [esp], eax
	call R_FinishStaticVertexBuffer
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_CreateWorldVertexBuffer_20:
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [ebp+0xc], eax
	mov ebx, 0x4
	jmp R_CreateWorldVertexBuffer_30
	nop


;R_AddShadowSurfaceToPrimaryLight(GfxWorld*, unsigned int, unsigned int)
R_AddShadowSurfaceToPrimaryLight:
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
	jz R_AddShadowSurfaceToPrimaryLight_10
	movzx eax, word [edx]
	movzx ebx, word [ebp+0x10]
	mov [ecx+eax*2], bx
	add word [edx], 0x1
R_AddShadowSurfaceToPrimaryLight_10:
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;R_ForEachPrimaryLightAffectingSurface(GfxWorld*, GfxSurface const*, unsigned int, void (*)(GfxWorld*, unsigned int, unsigned int))
R_ForEachPrimaryLightAffectingSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10]
	test byte [eax+0x4], 0x2
	jnz R_ForEachPrimaryLightAffectingSurface_10
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
	jae R_ForEachPrimaryLightAffectingSurface_20
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
	jnz R_ForEachPrimaryLightAffectingSurface_30
R_ForEachPrimaryLightAffectingSurface_80:
	movss xmm0, dword [ebx+0x34]
	ucomiss xmm0, [_float_0_00000000]
	jb R_ForEachPrimaryLightAffectingSurface_30
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
	call CullBoxFromConicSectionOfSphere
	movzx eax, al
R_ForEachPrimaryLightAffectingSurface_90:
	test eax, eax
	jnz R_ForEachPrimaryLightAffectingSurface_40
	mov eax, s_world
	mov eax, [eax+0x240]
	add eax, [ebp-0x44]
	mov ecx, [eax]
	test ecx, ecx
	jz R_ForEachPrimaryLightAffectingSurface_50
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
R_ForEachPrimaryLightAffectingSurface_100:
	movaps xmm0, xmm6
	subss xmm0, [eax]
	andps xmm0, xmm5
	movaps xmm1, xmm4
	addss xmm1, [eax+0x24]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movaps xmm0, xmm7
	subss xmm0, [eax+0x4]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [eax+0x28]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [eax+0x8]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x5c]
	addss xmm1, [eax+0x2c]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movaps xmm0, xmm6
	addss xmm0, xmm7
	subss xmm0, [eax+0xc]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x54]
	addss xmm1, [eax+0x30]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movaps xmm0, xmm6
	subss xmm0, xmm7
	subss xmm0, [eax+0x10]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x54]
	addss xmm1, [eax+0x34]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm6
	subss xmm0, [eax+0x14]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x38]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movaps xmm0, xmm6
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x18]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x40]
	addss xmm1, [eax+0x3c]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, xmm7
	subss xmm0, [eax+0x1c]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x40]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	movaps xmm0, xmm7
	subss xmm0, [ebp-0x4c]
	subss xmm0, [eax+0x20]
	andps xmm0, xmm5
	movss xmm1, dword [ebp-0x3c]
	addss xmm1, [eax+0x44]
	ucomiss xmm0, xmm1
	jae R_ForEachPrimaryLightAffectingSurface_60
	mov ebx, [eax+0x48]
	mov [ebp-0x58], ebx
	test ebx, ebx
	jz R_ForEachPrimaryLightAffectingSurface_50
	mov ebx, [eax+0x4c]
	xor esi, esi
R_ForEachPrimaryLightAffectingSurface_70:
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
	jae R_ForEachPrimaryLightAffectingSurface_60
	add esi, 0x1
	add ebx, 0x14
	cmp [ebp-0x58], esi
	jnz R_ForEachPrimaryLightAffectingSurface_70
R_ForEachPrimaryLightAffectingSurface_50:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dword [ebp+0x14]
R_ForEachPrimaryLightAffectingSurface_40:
	add edi, 0x1
	add dword [ebp-0x48], 0x44
	add dword [ebp-0x44], 0x8
	mov eax, [ebp+0x8]
	cmp edi, [eax+0xdc]
	jae R_ForEachPrimaryLightAffectingSurface_20
	mov ebx, [ebp-0x48]
	mov eax, comWorld
	add ebx, [eax+0xc]
	cmp byte [ebx], 0x2
	jz R_ForEachPrimaryLightAffectingSurface_80
R_ForEachPrimaryLightAffectingSurface_30:
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	lea esi, [ebx+0x1c]
	mov [esp], esi
	call CullBoxFromSphere
	movzx eax, al
	jmp R_ForEachPrimaryLightAffectingSurface_90
R_ForEachPrimaryLightAffectingSurface_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, byte [edx+0x16]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call dword [ebp+0x14]
R_ForEachPrimaryLightAffectingSurface_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ForEachPrimaryLightAffectingSurface_60:
	add edx, 0x1
	add eax, 0x50
	cmp ecx, edx
	jnz R_ForEachPrimaryLightAffectingSurface_100
	jmp R_ForEachPrimaryLightAffectingSurface_40
	nop


;R_InterpretSunLightParseParamsIntoLights(SunLightParseParams*, GfxLight*)
R_InterpretSunLightParseParamsIntoLights:
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
	call AngleVectors
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
	jz R_InterpretSunLightParseParamsIntoLights_10
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
R_InterpretSunLightParseParamsIntoLights_10:
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
g_fltMin__uint4: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0
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
g_fltMin: resb 0x20
rgl: resb 0x2e0


;All cstrings:
SECTION .rdata
_cstring_light_grid_verti:		db "light grid vertical variation is too extreme -- ignoring light grid",0
_cstring_max_planes_excee:		db 015h,"Max planes exceeded",0
_cstring_max_cells_exceed:		db 015h,"Max cells exceeded",0
_cstring_loadmap_funny_lu:		db 015h,"LoadMap: funny lump size in %s",0
_cstring_i_merged_lightma:		db "%i merged lightmaps from %i original lightmaps",0ah,0
_cstring_olprio_pain:		db "olprio_pain",0
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

