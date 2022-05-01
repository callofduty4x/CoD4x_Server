;Imports of r_material_load_obj:
	extern _Z9Com_ParsePPKc
	extern strcmp
	extern _Z15Com_ScriptErrorPKcz
	extern _Z11Com_sprintfPciPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z12R_HashStringPKc
	extern _Z14Com_PrintErroriPKcz
	extern _Z20R_ComparePixelConstsPPK8MaterialPPK12MaterialPass
	extern _Z10I_strncpyzPcPKci
	extern isspace
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z8strnicmpPKcS0_m
	extern _Z14Com_MatchTokenPPKcS0_i
	extern memset
	extern _Z14Com_UngetTokenv
	extern _Z14Material_Alloci
	extern Com_Memcpy
	extern Hunk_AllocateTempMemory
	extern FS_ReadFile
	extern FS_FreeFile
	extern Hunk_FreeTempMemory
	extern _Z22Com_BlockChecksumKey32PKvmj
	extern fopen
	extern fread
	extern fclose
	extern strchr
	extern sscanf
	extern _Z9Sys_MkdirPKc
	extern fwrite
	extern _Z16Com_PrintWarningiPKcz
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern _Z18R_ErrorDescriptionl
	extern D3DXCreateBuffer
	extern memcpy
	extern free
	extern _Z15R_HashAssetNamePKc
	extern _Z21Com_BeginParseSessionPKc
	extern _Z26Com_SetScriptWarningPrefixPKc
	extern _Z21Com_SetSpaceDelimitedi
	extern _Z19Com_EndParseSessionv
	extern _Z14Com_ParseFloatPPKc
	extern dx_ctx
	extern strncmp
	extern _Z17Material_LoadFilePKcPi
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern r_picmip_water
	extern _Z16R_LoadWaterSetupPK7water_t
	extern _Z14Image_RegisterPKchi
	extern qsort
	extern _Z29Material_RegisterTechniqueSetPKc
	extern _Z17Com_GetBspVersionv
	extern _Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex
	extern _Z18Material_IsDefaultPK8Material
	extern _Z8I_strcmpPKcS0_
	extern colorWhite
	extern strncpy
	extern useFastFile
	extern rgp
	extern _Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi
	extern _Z29Material_FreeAllTechniqueSetsv
	extern _Z35Material_DirtyTechniqueSetOverridesv
	extern _Z23Com_SetKeepStringQuotesi
	extern FS_ListFiles
	extern _Z18Hunk_AllocInternali
	extern FS_FreeFileList
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z23Hunk_AllocAlignInternalii
	extern sprintf
	extern memmove

;Exports of r_material_load_obj:
	global mtlLoadGlob
	global g_materialTypeInfo
	global s_worldVertFormatForLayerCount
	global s_lyrTechSetNames
	global g_useTechnique
	global s_stateMapDstWireframeBitGroup
	global s_wireframeBitNames
	global s_stateMapDstStencilBitGroup
	global s_stencilBitNames
	global s_stencilFuncFrontBitNames
	global s_stencilOpFrontPassBitNames
	global s_stencilOpFrontFailBitNames
	global s_stencilOpFrontZFailBitNames
	global s_stencilFuncBackBitNames
	global s_stencilOpBackPassBitNames
	global s_stencilOpBackFailBitNames
	global s_stencilOpBackZFailBitNames
	global s_stateMapDstPolygonOffsetBitGroup
	global s_polygonOffsetBitNames
	global s_stateMapDstColorWriteBitGroup
	global s_colorWriteRgbBitNames
	global s_colorWriteAlphaBitNames
	global s_stateMapDstDepthWriteBitGroup
	global s_depthWriteBitNames
	global s_stateMapDstDepthTestBitGroup
	global s_depthTestBitNames
	global s_stateMapDstCullFaceBitGroup
	global s_cullFaceBitNames
	global s_stateMapDstBlendFuncAlphaBitGroup
	global s_blendOpAlphaBitNames
	global s_srcBlendAlphaBitNames
	global s_dstBlendAlphaBitNames
	global s_stateMapDstBlendFuncRgbBitGroup
	global s_blendOpRgbBitNames
	global s_srcBlendRgbBitNames
	global s_dstBlendRgbBitNames
	global s_stateMapDstAlphaTestBitGroup
	global s_alphaTestBitNames
	global s_stateMapSrcBitGroup
	global _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName
	global _ZZ37Material_FileIncludeFileAndLineNumberP22GfxAssembledShaderTextPKcPS2_PjE7unknown
	global _ZZ29Material_TechniqueTypeForNamePKcE5C.439
	global _Z25Material_UpdateStateFlagsP8Material
	global _Z30CompareHashedMaterialConstantsPKvS0_
	global _Z29CompareHashedMaterialTexturesPKvS0_
	global _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	global _Z26CompareRawMaterialTexturesPKvS0_
	global _Z27CompareRawMaterialConstantsPKvS0_
	global _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument
	global _Z16Material_ComparePK8MaterialS1_
	global _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh
	global _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	global _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0_
	global _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap
	global _Z13Material_LoadPKci
	global _Z13Material_Sortv
	global _Z16Material_FreeAllv
	global _Z16Material_GetInfoP8MaterialP12MaterialInfo
	global _Z25Material_LoadTechniqueSetPKc11GfxRenderer
	global _Z29Material_PreLoadAllShaderTextv
	global _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	global _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2_
	global _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0_
	global _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1_
	global _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1_
	global s_codeConstUpdateFreq


SECTION .text


;Material_ParseValueForState(char const**, MtlStateMapBitName const*)
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov ebx, eax
	mov [ebp-0x120], edx
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov edi, eax
	cmp byte [eax], 0x2d
	jz _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_10
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_50:
	mov edx, [ebp-0x120]
	mov eax, [edx]
	test eax, eax
	jz _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_20
	mov ebx, edx
	add ebx, 0x8
	xor esi, esi
	mov dword [ebp-0x11c], 0x0
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_40:
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_30
	add esi, 0x1
	mov [ebp-0x11c], esi
	mov eax, [ebx]
	add ebx, 0x8
	test eax, eax
	jnz _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_40
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_20:
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_is_not_a_valid
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_30:
	mov ecx, [ebp-0x11c]
	mov edx, [ebp-0x120]
	lea eax, [edx+ecx*8]
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_10:
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x118]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov edi, ebx
	jmp _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName_50


;Material_UpdateStateFlags(Material*)
_Z25Material_UpdateStateFlagsP8Material:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov [ebp-0x18], eax
	mov eax, [eax+0x40]
	mov [ebp-0x28], eax
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_10
	mov ecx, eax
	mov edx, [ebp-0x18]
	mov ebx, 0xffffffff
	mov eax, [edx+0x4c]
	mov [ebp-0x24], eax
	lea esi, [edx+0xe]
	jmp _Z25Material_UpdateStateFlagsP8Material_20
_Z25Material_UpdateStateFlagsP8Material_50:
	xor ebx, ebx
	cmp eax, 0xc000
	setz bl
	add ebx, ebx
_Z25Material_UpdateStateFlagsP8Material_40:
	add ecx, 0x4
	add edx, 0x1
	cmp esi, edx
	jz _Z25Material_UpdateStateFlagsP8Material_30
_Z25Material_UpdateStateFlagsP8Material_20:
	mov eax, [ecx+0x28]
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_40
	movzx eax, byte [edx+0x1f]
	mov ebx, [ebp-0x24]
	mov eax, [ebx+eax*8]
	and eax, 0xc000
	cmp eax, 0x8000
	jnz _Z25Material_UpdateStateFlagsP8Material_50
	mov ebx, 0x1
	add ecx, 0x4
	add edx, 0x1
	cmp esi, edx
	jnz _Z25Material_UpdateStateFlagsP8Material_20
_Z25Material_UpdateStateFlagsP8Material_30:
	cmp ebx, 0xffffffff
	mov eax, 0x0
	cmovz ebx, eax
	mov eax, [ebp-0x28]
	mov edi, [eax+0x14]
	test edi, edi
	jz _Z25Material_UpdateStateFlagsP8Material_60
	mov edx, [ebp-0x18]
	movzx eax, byte [edx+0x1a]
	mov ecx, [ebp-0x24]
	mov eax, [ecx+eax*8]
	and eax, 0xc000
	cmp eax, 0x8000
	jz _Z25Material_UpdateStateFlagsP8Material_70
	cmp eax, 0xc000
	jz _Z25Material_UpdateStateFlagsP8Material_80
_Z25Material_UpdateStateFlagsP8Material_60:
	xor eax, eax
_Z25Material_UpdateStateFlagsP8Material_260:
	mov edx, ebx
	or edx, eax
	mov esi, [ebp-0x24]
	test esi, esi
	jz _Z25Material_UpdateStateFlagsP8Material_90
	mov ebx, [ebp-0x28]
	mov ebx, [ebx+0x1c]
	test ebx, ebx
	jz _Z25Material_UpdateStateFlagsP8Material_100
	mov ecx, [ebp-0x18]
	movzx eax, byte [ecx+0x1c]
	shl eax, 0x3
_Z25Material_UpdateStateFlagsP8Material_270:
	mov ebx, [ebp-0x24]
	test byte [ebx+eax+0x4], 0x30
	jnz _Z25Material_UpdateStateFlagsP8Material_110
_Z25Material_UpdateStateFlagsP8Material_90:
	xor eax, eax
_Z25Material_UpdateStateFlagsP8Material_250:
	or edx, eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz _Z25Material_UpdateStateFlagsP8Material_120
	mov eax, [ebp-0x28]
	mov eax, [eax+0x1c]
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_130
	mov ecx, [ebp-0x18]
	movzx eax, byte [ecx+0x1c]
	shl eax, 0x3
_Z25Material_UpdateStateFlagsP8Material_280:
	mov ebx, [ebp-0x24]
	test byte [ebx+eax+0x4], 0x1
	jnz _Z25Material_UpdateStateFlagsP8Material_140
_Z25Material_UpdateStateFlagsP8Material_120:
	xor eax, eax
_Z25Material_UpdateStateFlagsP8Material_240:
	or eax, edx
	mov [ebp-0x14], eax
	mov esi, [ebp-0x28]
	mov ebx, [ebp-0x18]
	mov eax, ebx
	add eax, 0x22
	mov [ebp-0x1c], eax
_Z25Material_UpdateStateFlagsP8Material_220:
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_150
	movzx eax, word [eax+0x6]
	movzx edi, ax
	test ax, ax
	jz _Z25Material_UpdateStateFlagsP8Material_150
	movzx eax, byte [ebx+0x18]
	shl eax, 0x3
	mov ecx, [ebp-0x24]
	mov edx, [eax+ecx+0x4]
	test dl, 0x3d
	jnz _Z25Material_UpdateStateFlagsP8Material_160
	and dl, 0x2
	jz _Z25Material_UpdateStateFlagsP8Material_160
	lea eax, [ecx+eax+0x8]
	xor ecx, ecx
_Z25Material_UpdateStateFlagsP8Material_170:
	add ecx, 0x1
	cmp edi, ecx
	jbe _Z25Material_UpdateStateFlagsP8Material_150
	mov edx, [eax+0x4]
	test dl, 0x3d
	jnz _Z25Material_UpdateStateFlagsP8Material_160
	add eax, 0x8
	and dl, 0x2
	jnz _Z25Material_UpdateStateFlagsP8Material_170
_Z25Material_UpdateStateFlagsP8Material_160:
	mov eax, 0x10
_Z25Material_UpdateStateFlagsP8Material_230:
	or eax, [ebp-0x14]
	mov [ebp-0x10], eax
	mov edi, [ebp-0x28]
	mov ebx, [ebp-0x18]
	mov eax, ebx
	add eax, 0x22
	mov [ebp-0x20], eax
_Z25Material_UpdateStateFlagsP8Material_210:
	mov eax, [edi+0xc]
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_180
	movzx eax, word [eax+0x6]
	movzx esi, ax
	test ax, ax
	jz _Z25Material_UpdateStateFlagsP8Material_180
	movzx eax, byte [ebx+0x18]
	shl eax, 0x3
	mov edx, [ebp-0x24]
	test byte [eax+edx+0x4], 0xc0
	jnz _Z25Material_UpdateStateFlagsP8Material_190
	lea edx, [eax+edx+0x8]
	xor ecx, ecx
_Z25Material_UpdateStateFlagsP8Material_200:
	add ecx, 0x1
	cmp ecx, esi
	jae _Z25Material_UpdateStateFlagsP8Material_180
	mov eax, [edx+0x4]
	and eax, 0xc0
	add edx, 0x8
	test eax, eax
	jz _Z25Material_UpdateStateFlagsP8Material_200
_Z25Material_UpdateStateFlagsP8Material_190:
	mov eax, 0x20
	or al, [ebp-0x10]
_Z25Material_UpdateStateFlagsP8Material_10:
	mov ebx, [ebp-0x18]
	mov [ebx+0x3d], al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Material_UpdateStateFlagsP8Material_180:
	add edi, 0x4
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz _Z25Material_UpdateStateFlagsP8Material_210
	xor eax, eax
	or al, [ebp-0x10]
	jmp _Z25Material_UpdateStateFlagsP8Material_10
_Z25Material_UpdateStateFlagsP8Material_150:
	add esi, 0x4
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jnz _Z25Material_UpdateStateFlagsP8Material_220
	xor eax, eax
	jmp _Z25Material_UpdateStateFlagsP8Material_230
_Z25Material_UpdateStateFlagsP8Material_140:
	mov eax, 0x8
	jmp _Z25Material_UpdateStateFlagsP8Material_240
_Z25Material_UpdateStateFlagsP8Material_110:
	mov eax, 0x4
	jmp _Z25Material_UpdateStateFlagsP8Material_250
_Z25Material_UpdateStateFlagsP8Material_70:
	mov ax, 0x40
	jmp _Z25Material_UpdateStateFlagsP8Material_260
_Z25Material_UpdateStateFlagsP8Material_80:
	mov ax, 0x80
	jmp _Z25Material_UpdateStateFlagsP8Material_260
_Z25Material_UpdateStateFlagsP8Material_100:
	xor eax, eax
	jmp _Z25Material_UpdateStateFlagsP8Material_270
_Z25Material_UpdateStateFlagsP8Material_130:
	xor eax, eax
	jmp _Z25Material_UpdateStateFlagsP8Material_280


;CompareHashedMaterialConstants(void const*, void const*)
_Z30CompareHashedMaterialConstantsPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	cmp edx, [eax]
	sbb eax, eax
	or eax, 0x1
	pop ebp
	ret


;CompareHashedMaterialTextures(void const*, void const*)
_Z29CompareHashedMaterialTexturesPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	cmp edx, [eax]
	sbb eax, eax
	or eax, 0x1
	pop ebp
	ret


;Material_CachedShaderTextLess(GfxCachedShaderText const&, GfxCachedShaderText const&)
_Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	shr eax, 0x1f
	leave
	ret
	nop


;CompareRawMaterialTextures(void const*, void const*)
_Z26CompareRawMaterialTexturesPKvS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [mtlLoadGlob+0x11024]
	mov edx, [ebp+0xc]
	mov esi, eax
	add esi, [edx]
	mov edx, [ebp+0x8]
	add eax, [edx]
	mov [esp], eax
	call _Z12R_HashStringPKc
	mov ebx, eax
	mov [esp], esi
	call _Z12R_HashStringPKc
	cmp ebx, eax
	sbb eax, eax
	or eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;CompareRawMaterialConstants(void const*, void const*)
_Z27CompareRawMaterialConstantsPKvS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [mtlLoadGlob+0x11024]
	mov edx, [ebp+0xc]
	mov esi, eax
	add esi, [edx]
	mov edx, [ebp+0x8]
	add eax, [edx]
	mov [esp], eax
	call _Z12R_HashStringPKc
	mov ebx, eax
	mov [esp], esi
	call _Z12R_HashStringPKc
	cmp ebx, eax
	sbb eax, eax
	or eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Material_ValidatePassArguments(Material const*, char const*, unsigned int, MaterialShaderArgument const*)
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x20], eax
	mov [ebp-0x24], edx
	mov [ebp-0x28], ecx
	test ecx, ecx
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_10
	mov esi, [ebp+0x8]
	mov dword [ebp-0x1c], 0x0
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_40:
	movzx eax, word [esi]
	test ax, ax
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_20
	cmp ax, 0x6
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_20
	cmp ax, 0x2
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_30
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_60:
	add dword [ebp-0x1c], 0x1
	add esi, 0x8
	mov edx, [ebp-0x1c]
	cmp [ebp-0x28], edx
	jnz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_40
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_10:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_20:
	mov ebx, [esi+0x4]
	mov edx, [ebp-0x20]
	movzx eax, byte [edx+0x3b]
	movzx edi, al
	test al, al
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_50
	mov eax, [edx+0x48]
	cmp ebx, [eax]
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_60
	lea ecx, [eax+0x20]
	xor edx, edx
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_70
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_80:
	mov eax, [ecx]
	add ecx, 0x20
	cmp ebx, eax
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_60
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_70:
	add edx, 0x1
	cmp edi, edx
	ja _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_80
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_50:
	mov eax, ebx
	and eax, 0x3f
	mov edi, [eax*8+mtlLoadGlob+0xd94]
	test edi, edi
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_90
	cmp ebx, [eax*8+mtlLoadGlob+0xd98]
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_100
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_110:
	add eax, 0x1
	and eax, 0x3f
	mov esi, [eax*8+mtlLoadGlob+0xd94]
	test esi, esi
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_90
	cmp [eax*8+mtlLoadGlob+0xd98], ebx
	jnz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_110
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_100:
	mov eax, [eax*8+mtlLoadGlob+0xd94]
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_120:
	mov [esp+0x14], eax
	mov edx, [ebp-0x20]
	mov eax, [edx+0x40]
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_material_s_using
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_190:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_90:
	xor eax, eax
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_120
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_30:
	mov ebx, [esi+0x4]
	mov edx, [ebp-0x20]
	movzx eax, byte [edx+0x3a]
	movzx ecx, al
	test al, al
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_130
	mov eax, [edx+0x44]
	cmp [eax], ebx
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_60
	lea edi, [eax+0xc]
	xor edx, edx
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_140
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_150:
	mov eax, [edi]
	add edi, 0xc
	cmp ebx, eax
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_60
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_140:
	add edx, 0x1
	cmp ecx, edx
	ja _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_150
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_130:
	mov eax, ebx
	and eax, 0x3f
	mov ecx, [eax*8+mtlLoadGlob+0xd94]
	test ecx, ecx
	jnz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_160
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_170
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_180:
	add eax, 0x1
	and eax, 0x3f
	mov edx, [eax*8+mtlLoadGlob+0xd94]
	test edx, edx
	jz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_170
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_160:
	cmp [eax*8+mtlLoadGlob+0xd98], ebx
	jnz _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_180
	mov eax, [eax*8+mtlLoadGlob+0xd94]
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_200:
	mov [esp+0x14], eax
	mov edx, [ebp-0x20]
	mov eax, [edx+0x40]
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_material_s_using1
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_190
_Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_170:
	xor eax, eax
	jmp _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument_200


;Material_Compare(Material const*, Material const*)
_Z16Material_ComparePK8MaterialS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov eax, [ebp+0x8]
	mov edi, [eax+0x40]
	mov edx, [edi+0x8]
	mov [ebp-0x140], edx
	mov ecx, [ebp+0xc]
	mov ecx, [ecx+0x40]
	mov [ebp-0x144], ecx
	mov eax, [ecx+0x8]
	mov [ebp-0x148], eax
	mov edx, [edx+0x28]
	mov [ebp-0x138], edx
	mov ecx, [eax+0x28]
	mov [ebp-0x13c], ecx
	test edx, edx
	setnz al
	movzx esi, al
	xor eax, eax
	test ecx, ecx
	setnz al
	sub eax, esi
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax+0x4]
	shr ebx, 1
	and ebx, 0x1
	mov edx, [ebp+0xc]
	movzx ecx, byte [edx+0x4]
	shr ecx, 1
	and ecx, 0x1
	mov eax, [ebp-0x140]
	mov eax, [eax+0x20]
	mov [ebp-0x130], eax
	mov edx, [ebp-0x148]
	mov edx, [edx+0x20]
	mov [ebp-0x134], edx
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebp-0x12c], eax
	xor eax, eax
	test edx, edx
	setnz al
	test esi, esi
	jnz _Z16Material_ComparePK8MaterialS1__20
	sub eax, [ebp-0x12c]
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov ecx, [ebp+0x8]
	movzx edx, byte [ecx+0x5]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x5]
	sub edx, eax
	mov eax, edx
	jnz _Z16Material_ComparePK8MaterialS1__10
_Z16Material_ComparePK8MaterialS1__90:
	mov eax, [edi+0xc]
	test eax, eax
	jz _Z16Material_ComparePK8MaterialS1__30
	mov edx, [ebp+0x8]
	test byte [edx+0x3d], 0x4
	jnz _Z16Material_ComparePK8MaterialS1__40
	xor edx, edx
	test byte [eax+0x4], 0x4
	setz dl
_Z16Material_ComparePK8MaterialS1__110:
	mov ecx, [ebp-0x144]
	mov eax, [ecx+0xc]
	test eax, eax
	jz _Z16Material_ComparePK8MaterialS1__50
	mov ecx, [ebp+0xc]
	test byte [ecx+0x3d], 0x4
	jnz _Z16Material_ComparePK8MaterialS1__60
	test byte [eax+0x4], 0x4
	setz al
	movzx eax, al
_Z16Material_ComparePK8MaterialS1__100:
	sub edx, eax
	mov eax, edx
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x3d]
	shr eax, 0x3
	mov ebx, eax
	and bl, 0x1
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x3d]
	shr eax, 0x3
	and eax, 0x1
	movzx edx, bl
	sub eax, edx
	jnz _Z16Material_ComparePK8MaterialS1__10
	test esi, esi
	jnz _Z16Material_ComparePK8MaterialS1__70
	mov eax, [ebp-0x12c]
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__80
_Z16Material_ComparePK8MaterialS1__130:
	mov edx, [ebp-0x148]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x140]
	mov eax, [ecx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call strcmp
_Z16Material_ComparePK8MaterialS1__10:
	shr eax, 0x1f
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Material_ComparePK8MaterialS1__20:
	mov eax, [ebp+0x8]
	movzx edx, byte [eax+0x5]
	mov eax, [ebp+0xc]
	movzx eax, byte [eax+0x5]
	mov [ebp-0x14c], eax
	mov eax, edx
	sub eax, [ebp-0x14c]
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov eax, ecx
	sub eax, ebx
	jz _Z16Material_ComparePK8MaterialS1__90
	jmp _Z16Material_ComparePK8MaterialS1__10
_Z16Material_ComparePK8MaterialS1__60:
	mov eax, 0x3
	jmp _Z16Material_ComparePK8MaterialS1__100
_Z16Material_ComparePK8MaterialS1__40:
	mov edx, 0x3
	jmp _Z16Material_ComparePK8MaterialS1__110
_Z16Material_ComparePK8MaterialS1__50:
	mov ecx, [ecx+0x10]
	test ecx, ecx
	jz _Z16Material_ComparePK8MaterialS1__60
	mov al, 0x2
	jmp _Z16Material_ComparePK8MaterialS1__100
_Z16Material_ComparePK8MaterialS1__30:
	mov ebx, [edi+0x10]
	test ebx, ebx
	jz _Z16Material_ComparePK8MaterialS1__40
	mov edx, 0x2
	jmp _Z16Material_ComparePK8MaterialS1__110
_Z16Material_ComparePK8MaterialS1__70:
	mov edx, [ebp-0x13c]
	mov eax, [edx+0x10]
	mov ecx, [ebp-0x138]
	mov edx, [ecx+0x10]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
	test bl, bl
	jz _Z16Material_ComparePK8MaterialS1__120
	mov edx, [ebp-0x140]
	mov eax, [edx+0x28]
	mov ecx, [ebp-0x148]
	mov edx, [ecx+0x28]
	mov ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	mov ecx, [ebp+0xc]
	mov [ebp-0x24], ecx
	add eax, 0x8
	mov [ebp-0x20], eax
	add edx, 0x8
	mov [ebp-0x1c], edx
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z20R_ComparePixelConstsPPK8MaterialPPK12MaterialPass
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
_Z16Material_ComparePK8MaterialS1__120:
	mov dword [esp+0x8], 0x80
	mov edx, [ebp-0x138]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea esi, [ebp-0xa8]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x80
	mov ecx, [ebp-0x13c]
	mov eax, [ecx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x128]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z16Material_ComparePK8MaterialS1__130
	jmp _Z16Material_ComparePK8MaterialS1__10
_Z16Material_ComparePK8MaterialS1__80:
	mov edx, [ebp-0x134]
	mov eax, [edx+0x10]
	mov ecx, [ebp-0x130]
	mov edx, [ecx+0x10]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov edx, [ebp-0x140]
	mov eax, [edx+0x20]
	mov ecx, [ebp-0x148]
	mov edx, [ecx+0x20]
	mov ecx, [ebp+0x8]
	mov [ebp-0x20], ecx
	mov ecx, [ebp+0xc]
	mov [ebp-0x1c], ecx
	add eax, 0x8
	mov [ebp-0x28], eax
	add edx, 0x8
	mov [ebp-0x24], edx
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z20R_ComparePixelConstsPPK8MaterialPPK12MaterialPass
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
	mov dword [esp+0x8], 0x80
	mov edx, [ebp-0x130]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea esi, [ebp-0xa8]
	mov [esp], esi
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x80
	mov ecx, [ebp-0x134]
	mov eax, [ecx+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x128]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x4], ebx
	mov [esp], esi
	call strcmp
	test eax, eax
	jnz _Z16Material_ComparePK8MaterialS1__10
	jmp _Z16Material_ComparePK8MaterialS1__130
	nop


;Material_GenerateShaderString_r(GfxAssembledShaderText*, char const*, char const*, unsigned int, unsigned char)
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh:
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_470:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov [ebp-0x474], eax
	mov [ebp-0x478], edx
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x465], al
	mov [ebp-0x48c], ecx
	mov byte [ebp-0x46d], 0x1
	mov edi, ecx
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_10
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_70:
	mov byte [ebp-0x46d], 0x1
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_80:
	add dword [ebp-0x48c], 0x1
	mov edi, [ebp-0x48c]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_10:
	movzx ebx, byte [edi]
	test bl, bl
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_20
	cmp bl, 0x2f
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_30
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_100:
	cmp byte [ebp-0x46d], 0x0
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_40
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_160:
	mov edx, [ebp-0x474]
	cmp byte [edx+0x10], 0x0
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_50
	mov ecx, edx
	mov edx, [edx]
	mov eax, [ecx+0x4]
	mov [edx+eax], bl
	mov eax, [ecx+0x4]
	add eax, 0x1
	mov [ecx+0x4], eax
	cmp bl, 0xa
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_60
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_280:
	mov edi, [ebp-0x474]
	cmp eax, [edi+0x8]
	setz byte [edi+0x10]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_270:
	mov edx, [ebp-0x48c]
	movzx eax, byte [edx]
	cmp al, 0xa
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_70
	movsx eax, al
	mov [esp], eax
	call isspace
	test eax, eax
	mov eax, 0x0
	movzx ecx, byte [ebp-0x46d]
	cmovz ecx, eax
	mov [ebp-0x46d], cl
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_80
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_30:
	mov edx, [ebp-0x48c]
	movzx eax, byte [edx+0x1]
	cmp al, 0x2a
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_90
	cmp al, 0x2f
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_100
	mov eax, [ebp-0x474]
	cmp byte [eax+0x10], 0x0
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_110
	mov edx, eax
	mov eax, [eax]
	mov ecx, edx
	mov edx, [edx+0x4]
	mov byte [eax+edx], 0xa
	mov eax, [ecx+0x4]
	add eax, 0x1
	mov [ecx+0x4], eax
	add dword [ecx+0xc], 0x1
	cmp eax, [ecx+0x8]
	setz byte [ecx+0x10]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_400:
	mov edx, [ebp-0x48c]
	add edx, 0x2
	mov edi, [ebp-0x48c]
	movzx eax, byte [edi+0x2]
	cmp al, 0xa
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_120
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_130
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_140:
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0xa
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_130
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_120:
	test al, al
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_140
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_20:
	mov eax, [ebp-0x474]
	cmp byte [eax+0x10], 0x0
	setz al
	movzx eax, al
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_40:
	mov dword [ebp-0x47c], _cstring_include
	mov ecx, 0x8
	cld
	mov esi, [ebp-0x48c]
	mov edi, _cstring_include
	repe cmpsb
	mov edx, 0x0
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_150
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_150:
	test edx, edx
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_160
	mov edx, [ebp-0x48c]
	movsx eax, byte [edx+0x8]
	mov [esp], eax
	call isspace
	test eax, eax
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_160
	mov ebx, [ebp-0x48c]
	add ebx, 0x9
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_170
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_180:
	add ebx, 0x1
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_170:
	movzx esi, byte [ebx]
	mov ecx, esi
	movsx edi, cl
	mov [esp], edi
	call isspace
	test eax, eax
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_180
	mov eax, esi
	cmp al, 0x22
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_190
	mov edx, [ebp-0x478]
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_found_c_instead_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_190:
	lea ecx, [ebx+0x1]
	mov [ebp-0x45c], ecx
	movzx eax, byte [ebx+0x1]
	cmp al, 0x22
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_200
	mov ebx, ecx
	xor esi, esi
	lea edi, [ebp-0x458]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_230:
	cmp al, 0xa
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_210
	test al, al
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_220
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_210:
	mov eax, [ebp-0x478]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_missing_ending__
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_220:
	movzx eax, byte [ebx]
	mov [esi+edi], al
	add esi, 0x1
	mov ebx, [ebp-0x45c]
	add ebx, esi
	movzx eax, byte [ebx]
	cmp al, 0x22
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_230
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_350:
	mov byte [ebp+esi-0x458], 0x0
	mov ecx, [ebp-0x474]
	mov edx, [ecx+0x14]
	mov eax, edx
	shl eax, 0x8
	lea eax, [eax+edx*8-0x108]
	mov ecx, [ecx+0xc]
	mov [ebp-0x46c], ecx
	mov ecx, [ebp-0x474]
	mov ecx, [eax+ecx+0x1c]
	sub [ebp-0x46c], ecx
	mov ecx, [ebp-0x474]
	mov ecx, [eax+ecx+0x18]
	add [ebp-0x46c], ecx
	cmp edx, 0x7f
	jbe _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_240
	mov dword [esp], _cstring_max_shader_inclu
	call _Z15Com_ScriptErrorPKcz
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_390:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_lib
	mov [esp], edi
	call _Z8strnicmpPKcS0_m
	test eax, eax
	setz al
	cmp byte [ebp-0x465], 0x0
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_250
	test al, al
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_260
	mov [esp+0x4], edi
	mov dword [esp], _cstring_shaders_in_the_s
	call _Z15Com_ScriptErrorPKcz
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_310:
	xor eax, eax
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_380:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_50:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_270
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_60:
	add dword [ecx+0xc], 0x1
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_280
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_90:
	mov ecx, [ebp-0x474]
	cmp byte [ecx+0x10], 0x0
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_290
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov byte [eax+edx], 0x20
	mov eax, [ecx+0x4]
	add eax, 0x1
	mov [ecx+0x4], eax
	cmp eax, [ecx+0x8]
	setz byte [ecx+0x10]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_340:
	mov edx, [ebp-0x48c]
	add edx, 0x2
	movzx eax, byte [edx]
	cmp al, 0x2a
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_300
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_320:
	test al, al
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_310
	lea eax, [edx+0x1]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_330:
	mov edx, eax
	movzx eax, byte [edx]
	cmp al, 0x2a
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_320
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_300:
	lea eax, [edx+0x1]
	cmp byte [edx+0x1], 0x2f
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_330
	add edx, 0x2
	mov [ebp-0x48c], edx
	mov edi, edx
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_10
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_130:
	add edx, 0x1
	mov [ebp-0x48c], edx
	mov byte [ebp-0x46d], 0x1
	mov edi, edx
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_10
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_290:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_340
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_200:
	xor esi, esi
	lea edi, [ebp-0x458]
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_350
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_250:
	test al, al
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_360
	mov [ebp-0x464], edi
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_410:
	mov edi, [mtlLoadGlob]
	sub edi, 0x1
	jns _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_370
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_430:
	mov edi, [ebp-0x464]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_didnt_preload_sh
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_380
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_240:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], edi
	mov eax, edx
	shl eax, 0x8
	lea eax, [eax+edx*8+0x10]
	mov edx, [ebp-0x474]
	lea eax, [edx+eax+0x10]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebp-0x474]
	mov eax, [ecx+0x14]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov dword [eax+ecx+0x18], 0x1
	mov eax, [ecx+0x14]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov edx, [ecx+0xc]
	mov [eax+ecx+0x1c], edx
	add dword [ecx+0x14], 0x1
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_390
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_110:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_400
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_260:
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_libs
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x464], ebx
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_410
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_370:
	mov dword [ebp-0x460], 0x0
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_420
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_450:
	add ebx, 0x1
	mov [ebp-0x460], ebx
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_460:
	cmp edi, [ebp-0x460]
	jl _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_430
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_420:
	mov ebx, [ebp-0x460]
	add ebx, edi
	sar ebx, 1
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	mov [ebp-0x480], eax
	mov eax, [mtlLoadGlob+0x4]
	mov edx, [ebp-0x480]
	mov eax, [eax+edx]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x464]
	mov [esp], ecx
	call _Z9I_stricmpPKcS0_
	cmp eax, 0x0
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_440
	jge _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_450
	lea edi, [ebx-0x1]
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_460
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_360:
	mov [esp+0x8], edi
	mov [esp+0x4], edi
	mov dword [esp], _cstring_shader_is_trying
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_380
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_440:
	mov eax, [ebp-0x480]
	add eax, [mtlLoadGlob+0x4]
	mov edx, [eax+0x8]
	mov ecx, [eax+0x4]
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	mov edx, [ebp-0x464]
	mov eax, [ebp-0x474]
	call _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_470
	test al, al
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_310
	mov eax, [ebp-0x474]
	mov edx, [eax+0x14]
	cmp edx, 0x7f
	jbe _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_480
	mov dword [esp], _cstring_max_shader_inclu
	call _Z15Com_ScriptErrorPKcz
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_520:
	mov ecx, [ebp-0x474]
	cmp byte [ecx+0x10], 0x0
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_490
	mov edi, [ebp-0x474]
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov byte [eax+edx], 0xa
	mov eax, [edi+0x4]
	add eax, 0x1
	mov [edi+0x4], eax
	add dword [edi+0xc], 0x1
	cmp eax, [edi+0x8]
	setz byte [edi+0x10]
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_530:
	mov eax, [ebp-0x45c]
	add eax, esi
	lea edx, [eax+0x1]
	movzx eax, byte [eax+0x1]
	cmp al, 0xa
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_500
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_130
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_510:
	add edx, 0x1
	movzx eax, byte [edx]
	cmp al, 0xa
	jz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_130
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_500:
	test al, al
	jnz _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_510
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_20
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_480:
	mov dword [esp+0x8], 0x100
	mov ecx, [ebp-0x478]
	mov [esp+0x4], ecx
	mov eax, edx
	shl eax, 0x8
	lea eax, [eax+edx*8+0x10]
	mov edi, [ebp-0x474]
	lea eax, [edi+eax+0x10]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov eax, [edi+0x14]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov edx, [ebp-0x46c]
	mov [eax+edi+0x18], edx
	mov eax, [edi+0x14]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov edx, [edi+0xc]
	mov [eax+edi+0x1c], edx
	add dword [edi+0x14], 0x1
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_520
_Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_490:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	jmp _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh_530


;Material_ParseRuleSet(char const**, char const*, MtlStateMapBitGroup const*, MaterialStateMapRuleSet**)
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x206c
	mov [ebp-0x204c], eax
	mov [ebp-0x2050], edx
	mov [ebp-0x2054], ecx
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_10
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20:
	xor eax, eax
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140:
	add esp, 0x206c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_10:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov eax, [ebp-0x204c]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov dword [esp+0x8], 0x2020
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x2038]
	mov [esp], edx
	call memset
	mov dword [ebp-0x2048], 0x0
	mov dword [ebp-0x2044], 0x0
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_130:
	mov ecx, [ebp-0x204c]
	mov [esp], ecx
	call _Z9Com_ParsePPKc
	mov [ebp-0x2060], eax
	cmp byte [eax], 0x7d
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_30
	mov esi, eax
	mov eax, [ebp-0x2044]
	shl eax, 0x5
	lea ecx, [ebp-0x2038]
	add ecx, eax
	mov [ebp-0x2040], ecx
	mov ebx, _cstring_default
	mov ecx, 0x8
	cld
	mov edi, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_40:
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_50
	mov eax, [s_stateMapSrcBitGroup]
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_60
	xor esi, esi
	mov ebx, s_stateMapSrcBitGroup
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_80:
	mov [esp+0x4], eax
	mov edx, [ebp-0x2060]
	mov [esp], edx
	call strcmp
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_70
	add esi, 0x1
	mov eax, [ebx+0x10]
	add ebx, 0x10
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_80
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_60:
	mov ebx, [ebp-0x2044]
	cmp [ebp-0x2048], ebx
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_90
	mov eax, [ebp-0x2048]
	shl eax, 0x5
	lea edx, [ebp-0x2038]
	add edx, eax
	mov [ebp-0x203c], edx
	mov ebx, _cstring_passthrough
	mov ecx, 0xc
	cld
	mov esi, [ebp-0x2060]
	mov edi, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_100
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_100:
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	mov eax, [ebp-0x204c]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	setnz al
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_310:
	test al, al
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov eax, [ebp-0x2048]
	add eax, 0x1
	cmp eax, [ebp-0x2044]
	jl _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_120
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_300:
	mov eax, [ebp-0x2044]
	mov [ebp-0x2048], eax
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_150:
	cmp dword [ebp-0x2044], 0x100
	jle _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_130
	mov dword [esp+0x8], 0x100
	mov edx, [ebp-0x2050]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_state_s_has_more
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_50:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_2
	mov eax, [ebp-0x204c]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_230:
	add dword [ebp-0x2044], 0x1
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_150
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_110:
	call _Z14Com_UngetTokenv
	mov ebx, [ebp-0x2054]
	lea edi, [ebx+0x10]
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_190:
	mov edx, [ebx+0x4]
	mov eax, [ebp-0x204c]
	call _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName
	mov esi, eax
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov eax, [ebx+0x8]
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_160
	mov edx, ebx
	xor ecx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_170:
	add ecx, 0x1
	mov eax, [edx+0xc]
	add edx, 0x4
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_170
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_200:
	mov edx, [ebp-0x203c]
	mov eax, [edx+ecx*4+0x10]
	or eax, [esi+0x4]
	mov [edx+ecx*4+0x10], eax
	mov eax, [edx+ecx*4+0x18]
	or eax, [ebx+ecx*4+0x8]
	mov [edx+ecx*4+0x18], eax
	mov eax, [edi]
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_180
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_3
	mov ecx, [ebp-0x204c]
	mov [esp], ecx
	call _Z14Com_MatchTokenPPKcS0_i
	add ebx, 0x10
	add edi, 0x10
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_190
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_160:
	xor ecx, ecx
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_200
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_70:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_4
	mov ecx, [ebp-0x204c]
	mov [esp], ecx
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov ebx, esi
	shl ebx, 0x4
	mov edx, [ebx+s_stateMapSrcBitGroup+0x4]
	mov eax, [ebp-0x204c]
	call _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName
	mov edi, eax
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov eax, [ebx+s_stateMapSrcBitGroup+0x8]
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_210
	xor ecx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_350:
	lea eax, [ecx+esi*4]
	mov ebx, [ebp-0x2040]
	mov edx, [ebx+ecx*4]
	or edx, [eax*4+s_stateMapSrcBitGroup+0x8]
	mov [ebx+ecx*4], edx
	mov eax, [ebx+ecx*4+0x8]
	or eax, [edi+0x4]
	mov [ebx+ecx*4+0x8], eax
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_370:
	mov edi, [ebp-0x204c]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [ebp-0x205c], eax
	mov ebx, 0x2
	cld
	mov esi, eax
	mov edi, _cstring_2
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_220
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_220:
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_230
	mov edi, _cstring_5
	mov ebx, 0x3
	cld
	mov esi, [ebp-0x205c]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_240
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_240:
	test edx, edx
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_250
	mov ebx, [ebp-0x204c]
	mov [esp], ebx
	call _Z9Com_ParsePPKc
	mov esi, eax
	mov eax, [s_stateMapSrcBitGroup]
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_260
	xor edi, edi
	mov ebx, s_stateMapSrcBitGroup
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_280:
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_270
	add edi, 0x1
	mov eax, [ebx+0x10]
	add ebx, 0x10
	test eax, eax
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_280
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_260:
	mov dword [esp], _cstring_failed_parsing_c
	call _Z15Com_ScriptErrorPKcz
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_120:
	mov ebx, eax
	shl dword [ebp-0x2048], 0x5
	mov edi, [ebp-0x2048]
	lea ecx, [edi+ebp-0x2028]
	lea edi, [ecx+0x8]
	mov esi, [ebp-0x2044]
	shl eax, 0x5
	lea edx, [eax+ebp-0x2028]
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_290:
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [edi+0x4]
	mov [edx+0xc], eax
	add ebx, 0x1
	add edx, 0x20
	cmp ebx, esi
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_290
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_300
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_180:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	mov ebx, [ebp-0x204c]
	mov [esp], ebx
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	setnz al
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_310
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_30:
	mov edx, [ebp-0x2044]
	test edx, edx
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_320
	mov ebx, [ebp-0x2044]
	cmp [ebp-0x2048], ebx
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_330
	mov ebx, [ebp-0x2050]
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_missing_value_fo
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_210:
	mov eax, esi
	shl eax, 0x4
	lea edx, [eax+s_stateMapSrcBitGroup]
	xor ecx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_340:
	add ecx, 0x1
	mov eax, [edx+0xc]
	add edx, 0x4
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_340
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_350
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_270:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_4
	mov eax, [ebp-0x204c]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov ebx, edi
	shl ebx, 0x4
	mov edx, [ebx+s_stateMapSrcBitGroup+0x4]
	mov eax, [ebp-0x204c]
	call _Z27Material_ParseValueForStatePPKcPK18MtlStateMapBitName
	mov esi, eax
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_20
	mov eax, [ebx+s_stateMapSrcBitGroup+0x8]
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_360
	xor ecx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_390:
	lea eax, [ecx+edi*4]
	mov ebx, [ebp-0x2040]
	mov edx, [ebx+ecx*4]
	or edx, [eax*4+s_stateMapSrcBitGroup+0x8]
	mov [ebx+ecx*4], edx
	mov eax, [ebx+ecx*4+0x8]
	or eax, [esi+0x4]
	mov [ebx+ecx*4+0x8], eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_370
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_90:
	mov eax, [ebp-0x2050]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_missing_rule_con
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_360:
	lea edx, [ebx+s_stateMapSrcBitGroup]
	xor ecx, ecx
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_380:
	add ecx, 0x1
	mov eax, [edx+0xc]
	add edx, 0x4
	test eax, eax
	jz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_380
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_390
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_320:
	mov ecx, [ebp-0x2050]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_no_entries_for_s
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_330:
	shl ebx, 0x5
	lea eax, [ebx+0x4]
	mov [esp], eax
	call _Z14Material_Alloci
	mov esi, eax
	mov edi, [ebp-0x2044]
	mov [eax], edi
	mov [esp+0x8], ebx
	lea eax, [ebp-0x2038]
	mov [esp+0x4], eax
	lea eax, [esi+0x4]
	mov [esp], eax
	call Com_Memcpy
	test edi, edi
	jle _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_400
	xor ebx, ebx
	mov ecx, esi
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_420:
	lea eax, [ecx+0x4]
	mov edx, 0x2
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_410:
	not dword [eax+0x18]
	add eax, 0x4
	sub edx, 0x1
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_410
	add ebx, 0x1
	add ecx, 0x20
	cmp [ebp-0x2048], ebx
	jnz _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_420
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_400:
	mov edx, [ebp+0x8]
	mov [edx], esi
	mov eax, 0x1
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
_Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_250:
	mov edi, [ebp-0x205c]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_expected__or__fo
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	jmp _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet_140
	nop


;Material_CompileShader(char const*, MaterialShaderType, char const*, char const*)
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x86dc
	mov [ebp-0x86b0], eax
	mov esi, edx
	mov [ebp-0x86b4], ecx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_shaderss
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x64]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov dword [esp], 0x10000
	call Hunk_AllocateTempMemory
	mov [ebp-0x86bc], eax
	mov edx, [ebp-0x86b0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_shaderss
	mov dword [esp+0x4], 0x100
	lea edi, [ebp-0x168]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call FS_ReadFile
	mov [ebp-0x86a8], eax
	test eax, eax
	js _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__10
	mov eax, [ebp-0x86bc]
	mov [ebp-0x8684], eax
	mov dword [ebp-0x8680], 0x0
	mov dword [ebp-0x8678], 0x1
	mov dword [ebp-0x8670], 0x0
	mov dword [ebp-0x867c], 0x10000
	mov byte [ebp-0x8674], 0x0
	xor ebx, ebx
	mov ecx, 0x1
	mov edx, _cstring_define_pc
	mov edi, eax
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__20
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__30:
	mov edi, [ebp-0x86bc]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__20:
	movzx eax, byte [edx]
	mov [ecx+edi-0x1], al
	lea eax, [ebx+0x1]
	cmp byte [edx], 0xa
	cmovz ebx, eax
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0xc
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__30
	lea ecx, [ebx+0x1]
	mov [ebp-0x8678], ecx
	mov edx, [ebp-0x8680]
	add edx, 0xb
	mov [ebp-0x8680], edx
	test esi, esi
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__40
	cmp byte [ebp-0x8674], 0x0
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__50
	lea eax, [edx+0x1b]
	cmp eax, [ebp-0x867c]
	jae _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__60
	mov [ebp-0x869c], ecx
	mov esi, edx
	add esi, [ebp-0x8684]
	xor ebx, ebx
	mov ecx, 0x1
	mov edx, _cstring_define_is_vertex
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__70:
	movzx eax, byte [edx]
	mov [ecx+esi-0x1], al
	lea eax, [ebx+0x1]
	cmp byte [edx], 0xa
	cmovz ebx, eax
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x1c
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__70
	mov eax, [ebp-0x869c]
	add eax, ebx
	mov [ebp-0x8678], eax
	add dword [ebp-0x8680], 0x1b
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__50:
	cmp byte [ebp-0x8674], 0x0
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__80
	mov edx, [ebp-0x8680]
	lea eax, [edx+0x1a]
	cmp eax, [ebp-0x867c]
	jae _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__90
	mov edi, [ebp-0x8678]
	mov [ebp-0x8698], edi
	mov esi, edx
	add esi, [ebp-0x8684]
	xor ebx, ebx
	mov ecx, 0x1
	mov edx, _cstring_define_is_pixel_
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__100:
	movzx eax, byte [edx]
	mov [ecx+esi-0x1], al
	lea eax, [ebx+0x1]
	cmp byte [edx], 0xa
	cmovz ebx, eax
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x1b
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__100
	mov eax, [ebp-0x8698]
	add eax, ebx
	mov [ebp-0x8678], eax
	add dword [ebp-0x8680], 0x1a
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__80:
	mov edx, [ebp-0x8670]
	cmp edx, 0x7f
	jbe _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__110
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__180:
	mov dword [esp], _cstring_max_shader_inclu
	call _Z15Com_ScriptErrorPKcz
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__190:
	mov ecx, [ebp-0x1c]
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x86a8]
	mov [esp], edx
	mov edx, [ebp-0x86b0]
	lea eax, [ebp-0x8684]
	call _Z31Material_GenerateShaderString_rP22GfxAssembledShaderTextPKcS2_jh
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	test bl, bl
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__120
	cmp byte [ebp-0x8674], 0x0
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__120
	mov edx, [ebp-0x8684]
	mov eax, [ebp-0x8680]
	mov byte [edx+eax], 0x0
	mov edi, [ebp-0x8680]
	mov [ebp-0x86ac], edi
	test edi, edi
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__130
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__120:
	mov eax, [ebp-0x86bc]
	mov [esp], eax
	call Hunk_FreeTempMemory
	xor eax, eax
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__300:
	add esp, 0x86dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__40:
	cmp byte [ebp-0x8674], 0x0
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__140
	lea eax, [edx+0x1b]
	cmp eax, [ebp-0x867c]
	jae _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__150
	mov [ebp-0x86a4], ecx
	mov esi, edx
	add esi, [ebp-0x8684]
	xor ebx, ebx
	mov ecx, 0x1
	mov edx, _cstring_define_is_vertex1
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__160:
	movzx eax, byte [edx]
	mov [ecx+esi-0x1], al
	lea eax, [ebx+0x1]
	cmp byte [edx], 0xa
	cmovz ebx, eax
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x1c
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__160
	mov eax, [ebp-0x86a4]
	add eax, ebx
	mov [ebp-0x8678], eax
	add dword [ebp-0x8680], 0x1b
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__140:
	cmp byte [ebp-0x8674], 0x0
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__80
	mov edx, [ebp-0x8680]
	lea eax, [edx+0x1a]
	cmp eax, [ebp-0x867c]
	jae _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__90
	mov eax, [ebp-0x8678]
	mov [ebp-0x86a0], eax
	mov esi, edx
	add esi, [ebp-0x8684]
	xor ebx, ebx
	mov ecx, 0x1
	mov edx, _cstring_define_is_pixel_1
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__170:
	movzx eax, byte [edx]
	mov [ecx+esi-0x1], al
	lea eax, [ebx+0x1]
	cmp byte [edx], 0xa
	cmovz ebx, eax
	add ecx, 0x1
	add edx, 0x1
	cmp ecx, 0x1b
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__170
	mov eax, [ebp-0x86a0]
	add eax, ebx
	mov [ebp-0x8678], eax
	add dword [ebp-0x8680], 0x1a
	mov edx, [ebp-0x8670]
	cmp edx, 0x7f
	ja _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__180
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__110:
	mov dword [esp+0x8], 0x100
	mov eax, [ebp-0x86b0]
	mov [esp+0x4], eax
	mov eax, edx
	shl eax, 0x8
	lea eax, [eax+edx*8+0x10]
	lea eax, [ebp+eax-0x8674]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp-0x8670]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov dword [eax+ebp-0x866c], 0x1
	mov eax, [ebp-0x8670]
	mov edx, eax
	shl edx, 0x8
	lea eax, [edx+eax*8]
	mov edx, [ebp-0x8678]
	mov [eax+ebp-0x8668], edx
	add dword [ebp-0x8670], 0x1
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__190
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__90:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	mov byte [ebp-0x8674], 0x1
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__80
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__130:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov edi, [ebp-0x86bc]
	mov [esp], edi
	call _Z22Com_BlockChecksumKey32PKvmj
	mov [esp+0x18], eax
	mov eax, [ebp+0x8]
	mov [esp+0x14], eax
	mov edx, [ebp-0x86b4]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_shadercacheds_s_
	mov dword [esp+0x4], 0x104
	lea edi, [ebp-0x26c]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	mov dword [ebp-0x1c], 0x0
	mov dword [esp+0x4], _cstring_rb
	mov [esp], edi
	call fopen
	mov ebx, eax
	test eax, eax
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__200
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call fread
	sub eax, 0x1
	jnz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__210
	mov edx, [ebp-0x86ac]
	cmp [ebp-0x20], edx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__220
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__210:
	mov [esp], ebx
	call fclose
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__200:
	test ebx, ebx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__230
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0xc]
	mov dword [esp+0x4], 0x28
	mov [esp], eax
	call strchr
	mov ebx, eax
	test eax, eax
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__240
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	lea esi, [ebp-0x20]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_dd
	mov [esp], ebx
	call sscanf
	cmp eax, 0x2
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__250
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_d
	mov [esp], ebx
	call sscanf
	sub eax, 0x1
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__250
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__240:
	mov dword [ebp-0x20], 0x0
	mov esi, _cstring_message_format_c
	mov ebx, [ebp-0x20]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__360:
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0xc]
	mov [esp+0x18], ebx
	mov [esp+0x14], esi
	mov [esp+0x10], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov edi, [ebp-0x86b4]
	mov [esp+0x8], edi
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_compiler_message
	call _Z15Com_ScriptErrorPKcz
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__230:
	test ebx, ebx
	js _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__260
	mov edx, [ebp-0x24]
	test edx, edx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__270
	test ebx, ebx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__280
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
	mov ebx, [ebp-0x24]
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x86ac]
	mov [esp+0x4], edx
	mov edi, [ebp-0x86bc]
	mov [esp], edi
	call _Z22Com_BlockChecksumKey32PKvmj
	mov esi, eax
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], _cstring_shadercached
	mov dword [esp+0x4], 0x104
	lea eax, [ebp-0x26c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea edx, [ebp-0x26c]
	mov [esp], edx
	call _Z9Sys_MkdirPKc
	mov dword [esp+0x1c], 0x2
	mov [esp+0x18], esi
	mov edi, [ebp+0x8]
	mov [esp+0x14], edi
	mov eax, [ebp-0x86b4]
	mov [esp+0x10], eax
	lea edx, [ebp-0x26c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_ss_s_88x
	mov dword [esp+0x4], 0x104
	lea edi, [ebp-0x168]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x10]
	mov esi, eax
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0xc]
	mov [ebp-0x868c], eax
	mov eax, [ebp-0x86ac]
	mov [ebp-0x1c], eax
	mov [ebp-0x20], esi
	mov dword [esp+0x4], _cstring_wb
	mov [esp], edi
	call fopen
	mov ebx, eax
	test eax, eax
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__290
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call fwrite
	mov [esp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x86bc]
	mov [esp], edx
	call fwrite
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	lea eax, [ebp-0x20]
	mov [esp], eax
	call fwrite
	mov [esp+0xc], ebx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov edi, [ebp-0x868c]
	mov [esp], edi
	call fwrite
	mov [esp], ebx
	call fclose
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__370:
	mov eax, [ebp-0x86bc]
	mov [esp], eax
	call Hunk_FreeTempMemory
	mov eax, [ebp-0x24]
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__300
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__60:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	mov byte [ebp-0x8674], 0x1
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__50
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__150:
	mov dword [esp], _cstring_shader_text_over
	call _Z15Com_ScriptErrorPKcz
	mov byte [ebp-0x8674], 0x1
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__140
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__250:
	mov esi, [ebp-0x8670]
	cmp esi, 0x1
	jbe _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__310
	mov ecx, [ebp-0x20]
	cmp [ebp-0x8560], ecx
	ja _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__320
	mov ebx, 0x1
	lea edx, [ebp-0x8684]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__340:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__330
	mov eax, [edx+0x22c]
	add edx, 0x108
	cmp ecx, eax
	jae _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__340
	lea edx, [ebx-0x1]
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__350
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__310:
	mov ecx, [ebp-0x20]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__320:
	xor edx, edx
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__350:
	mov eax, edx
	shl eax, 0x8
	lea eax, [eax+edx*8]
	lea esi, [eax+ebp-0x8664]
	sub ecx, [eax+ebp-0x8668]
	add ecx, [eax+ebp-0x866c]
	mov [ebp-0x20], ecx
	mov ebx, ecx
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__360
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__10:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_couldnt_read_sha
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__120
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__290:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_material_cachesh
	mov dword [esp], 0xa
	call _Z16Com_PrintWarningiPKcz
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__370
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__220:
	mov edi, [ebp-0x86ac]
	mov [esp], edi
	call Z_MallocInternal
	mov [ebp-0x8690], eax
	mov [esp+0xc], ebx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x8690]
	mov [esp], eax
	call fread
	cmp eax, [ebp-0x20]
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__380
	mov edx, [ebp-0x8690]
	mov [esp], edx
	call Z_FreeInternal
	mov [esp], ebx
	call fclose
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__200
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__280:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	lea edi, [ebp-0x64]
	mov [esp+0x4], edi
	mov dword [esp], _cstring_s_compilation_fa
	call _Z15Com_ScriptErrorPKcz
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__120
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__270:
	test ebx, ebx
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__390
	mov eax, [ebx]
	mov [esp], ebx
	call dword [eax+0x8]
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__390:
	lea eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_compilation_fa1
	call _Z15Com_ScriptErrorPKcz
	mov edx, [ebp-0x86bc]
	mov [esp], edx
	call Hunk_FreeTempMemory
	xor eax, eax
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__300
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__380:
	cld
	cmp eax, eax
	mov esi, [ebp-0x8690]
	mov edi, [ebp-0x86bc]
	mov ecx, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__400
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__400:
	test eax, eax
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__410
	mov eax, [ebp-0x8690]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp], ebx
	call fclose
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__200
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__260:
	mov [esp], ebx
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	lea edx, [ebp-0x64]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_s_compilation_fa2
	call _Z15Com_ScriptErrorPKcz
	mov edi, [ebp-0x86bc]
	mov [esp], edi
	call Hunk_FreeTempMemory
	xor eax, eax
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__300
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__330:
	lea edx, [esi-0x1]
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__350
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__410:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call fread
	sub eax, 0x1
	jz _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__420
	mov edi, [ebp-0x8690]
	mov [esp], edi
	call Z_FreeInternal
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__210
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__420:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x8694], eax
	mov [esp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x8694]
	mov [esp], eax
	call fread
	mov edx, [ebp-0x8690]
	mov [esp], edx
	call Z_FreeInternal
	mov [esp], ebx
	call fclose
	mov esi, [ebp-0x1c]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call D3DXCreateBuffer
	mov ebx, eax
	test eax, eax
	js _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__430
	mov eax, [ebp-0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	mov [esp+0x8], esi
	mov edx, [ebp-0x8694]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edi, [ebp-0x8694]
	mov [esp], edi
	call Z_FreeInternal
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__370
_Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__430:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_material_c
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov edi, [ebp-0x8694]
	mov [esp], edi
	call free
	mov [esp], edi
	call Z_FreeInternal
	jmp _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0__200


;Material_LoadPass(char const**, GfxRenderer, unsigned short*, MaterialPass*, MaterialStateMap**)
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x50c
	mov [ebp-0x4cc], eax
	mov [ebp-0x4d0], edx
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x10], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_statemap
	mov edx, [ebp-0x4cc]
	mov [esp], edx
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_10
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110:
	xor eax, eax
	add esp, 0x50c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_10:
	mov eax, [ebp-0x4cc]
	mov [esp], eax
	call _Z9Com_ParsePPKc
	mov esi, eax
	movzx eax, byte [eax]
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_20
	cmp al, 0x3b
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_20
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0x1f
	mov edi, [ebx*4+mtlLoadGlob+0x8fa0]
	test edi, edi
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_30
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_50:
	mov [esp+0x4], esi
	mov eax, [edi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_40
	add ebx, 0x1
	and ebx, 0x1f
	mov edi, [ebx*4+mtlLoadGlob+0x8fa0]
	test edi, edi
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_50
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_30:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_statemapsssm
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x120]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_60
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov [esp], ebx
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], _cstring_1error_
	call _Z26Com_SetScriptWarningPrefixPKc
	mov dword [esp], 0x0
	call _Z21Com_SetSpaceDelimitedi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	lea eax, [ebx+0x2c]
	mov [esp], eax
	call _Z14Material_Alloci
	mov edi, eax
	lea eax, [eax+0x2c]
	mov [edi], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	lea ebx, [ebp-0x20]
	lea eax, [edi+0x4]
	mov [esp], eax
	mov ecx, s_stateMapDstAlphaTestBitGroup
	mov edx, _cstring_alphatest
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_70
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180:
	xor edi, edi
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_190:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	test edi, edi
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_80
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0x1f
	mov eax, [ebx*4+mtlLoadGlob+0x8fa0]
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_90
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_100:
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_90
	add ebx, 0x1
	and ebx, 0x1f
	mov eax, [ebx*4+mtlLoadGlob+0x8fa0]
	test eax, eax
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_100
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_90:
	mov [ebx*4+mtlLoadGlob+0x8fa0], edi
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_80:
	mov edx, [ebp+0xc]
	mov [edx], edi
	test edi, edi
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	mov eax, [ebp-0x4cc]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
	lea eax, [ebp-0x4ac]
	mov dword [esp+0x8], 0x38c
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_vertexshader
	mov edx, [ebp-0x4cc]
	mov [esp], edx
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
	mov eax, [ebp-0x4cc]
	mov [esp], eax
	call _Z14Com_ParseFloatPPKc
	fstp dword [ebp-0x4ec]
	movss xmm0, dword [ebp-0x4ec]
	mov edx, [ebp-0x4cc]
	mov [esp], edx
	movss [ebp-0x4e8], xmm0
	call _Z9Com_ParsePPKc
	mov [ebp-0x4c4], eax
	movss xmm0, dword [ebp-0x4e8]
	mulss xmm0, [_float_10_00000000]
	addss xmm0, [_float_0_50000000]
	cvttss2si esi, xmm0
	mov eax, [ebp-0x4d0]
	shl eax, 0xd
	lea ebx, [eax+mtlLoadGlob+0xf98]
	mov eax, [ebp-0x4c4]
	mov [esp], eax
	call _Z15R_HashAssetNamePKc
	and eax, 0x7ff
	mov [ebp-0x4c8], eax
	mov eax, [ebx+eax*4]
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_120
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_140:
	mov edx, [ebp-0x4c4]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_130
	add dword [ebp-0x4c8], 0x1
	and dword [ebp-0x4c8], 0x7ff
	mov edx, [ebp-0x4c8]
	mov eax, [ebx+edx*4]
	test eax, eax
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_140
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_120:
	mov eax, esi
	movzx ecx, al
	mov esi, [ebp-0x4d0]
	test esi, esi
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_150
	mov edx, 0x66666667
	mov eax, ecx
	imul edx
	shr edx, 0x2
	lea eax, [edx+edx*4]
	add eax, eax
	sub ecx, eax
	mov [esp+0x14], ecx
	mov [esp+0x10], edx
	mov dword [esp+0xc], _cstring_vs
	mov dword [esp+0x8], _cstring_s_i_i
	mov dword [esp+0x4], 0x10
	lea ebx, [ebp-0x120]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_200:
	mov [esp], ebx
	mov ecx, _cstring_vs_main
	xor edx, edx
	mov eax, [ebp-0x4c4]
	call _Z22Material_CompileShaderPKc18MaterialShaderTypeS0_S0_
	mov [ebp-0x4bc], eax
	test eax, eax
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
	mov edx, eax
	mov eax, [eax]
	mov [esp], edx
	call dword [eax+0x10]
	mov [ebp-0x4c0], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x4c4]
	repne scasb
	mov ebx, ecx
	not ebx
	mov edx, [ebp-0x4c0]
	lea eax, [edx+ebx+0x10]
	mov [esp], eax
	call _Z14Material_Alloci
	mov esi, eax
	lea edi, [eax+0x10]
	mov edx, [ebp-0x4c0]
	lea eax, [eax+edx+0x10]
	mov [esi], eax
	mov [esp+0x8], ebx
	mov edx, [ebp-0x4c4]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x4bc]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0xc]
	mov edx, [ebp-0x4c0]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	lea eax, [esi+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], edx
	call dword [ecx+0x16c]
	test eax, eax
	js _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_160
	movzx edx, word [ebp-0x4d0]
	mov [esi+0xe], dx
	shr dword [ebp-0x4c0], 0x2
	movzx eax, word [ebp-0x4c0]
	mov [esi+0xc], ax
	mov [esi+0x8], edi
	mov edx, [ebp-0x4bc]
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	shl dword [ebp-0x4d0], 0xb
	mov eax, [ebp-0x4d0]
	add eax, [ebp-0x4c8]
	mov [eax*4+mtlLoadGlob+0xf98], esi
	mov eax, [mtlLoadGlob+0xf94]
	add eax, 0x1
	mov [mtlLoadGlob+0xf94], eax
	cmp eax, 0x800
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_170
	mov dword [esp+0x8], 0x7ff
	mov dword [esp+0x4], _cstring_more_than_i_uniq
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_170:
	mov eax, [ebp+0x8]
	mov [eax+0x4], esi
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_20:
	mov dword [esp], _cstring_missing_statemap
	call _Z15Com_ScriptErrorPKcz
	xor eax, eax
	add esp, 0x50c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_70:
	lea eax, [edi+0x8]
	mov [esp], eax
	mov ecx, s_stateMapDstBlendFuncRgbBitGroup
	mov edx, _cstring_blendfunc
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0xc]
	mov [esp], eax
	mov ecx, s_stateMapDstBlendFuncAlphaBitGroup
	mov edx, _cstring_separatealphable
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x10]
	mov [esp], eax
	mov ecx, s_stateMapDstCullFaceBitGroup
	mov edx, _cstring_cullface
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x14]
	mov [esp], eax
	mov ecx, s_stateMapDstDepthTestBitGroup
	mov edx, _cstring_depthtest
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x18]
	mov [esp], eax
	mov ecx, s_stateMapDstDepthWriteBitGroup
	mov edx, _cstring_depthwrite
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x1c]
	mov [esp], eax
	mov ecx, s_stateMapDstColorWriteBitGroup
	mov edx, _cstring_colorwrite
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x20]
	mov [esp], eax
	mov ecx, s_stateMapDstPolygonOffsetBitGroup
	mov edx, _cstring_polygonoffset
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x24]
	mov [esp], eax
	mov ecx, s_stateMapDstStencilBitGroup
	mov edx, _cstring_stencil
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
	lea eax, [edi+0x28]
	mov [esp], eax
	mov ecx, s_stateMapDstWireframeBitGroup
	mov edx, _cstring_wireframe
	mov eax, ebx
	call _Z21Material_ParseRuleSetPPKcS0_PK19MtlStateMapBitGroupPP23MaterialStateMapRuleSet
	test al, al
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_190
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_180
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_40:
	test edi, edi
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_80
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_30
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_60:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_couldnt_open_sta
	call _Z15Com_ScriptErrorPKcz
	xor edi, edi
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_80
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_160:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov eax, [ebp-0x4c4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_vertex_shader_cr
	call _Z15Com_ScriptErrorPKcz
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_150:
	mov dword [esp+0xc], _cstring_vs
	mov dword [esp+0x8], _cstring_s_3_0
	mov dword [esp+0x4], 0x10
	lea ebx, [ebp-0x120]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_200
_Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_130:
	shl dword [ebp-0x4d0], 0xb
	mov eax, [ebp-0x4d0]
	add eax, [ebp-0x4c8]
	mov esi, [eax*4+mtlLoadGlob+0xf98]
	test esi, esi
	jnz _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_170
	jmp _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap_110


;Material_Load(char const*, int)
_Z13Material_LoadPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x70c
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x2a
	jz _Z13Material_LoadPKci_10
	mov dword [ebp-0x698], 0x1
	mov ebx, g_materialTypeInfo
_Z13Material_LoadPKci_30:
	mov esi, [ebx+0x14]
	mov [esp+0x8], esi
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call strncmp
	test eax, eax
	jz _Z13Material_LoadPKci_20
	add dword [ebp-0x698], 0x1
	add ebx, 0xc
	cmp dword [ebp-0x698], 0x5
	jnz _Z13Material_LoadPKci_30
	mov dword [ebp-0x698], 0x0
_Z13Material_LoadPKci_350:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z17Material_LoadFilePKcPi
	mov ebx, eax
	cmp eax, 0x0
	jl _Z13Material_LoadPKci_40
	jz _Z13Material_LoadPKci_50
	mov [esp], eax
	call Hunk_AllocateTempMemory
	mov [ebp-0x6a0], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov ebx, [ebp-0x6a0]
	mov [esp], ebx
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov esi, [ebp-0x698]
	lea eax, [esi+esi*2]
	mov eax, [eax*4+g_materialTypeInfo+0x4]
	mov [ebp-0x624], eax
	add ebx, [ebx+0x38]
	mov [ebp-0x61c], ebx
	mov edi, [ebp-0x6a0]
	cmp word [edi+0x30], 0x0
	jz _Z13Material_LoadPKci_60
	sub esi, 0x3
	mov [ebp-0x618], esi
	mov edi, ebx
	mov dword [ebp-0x620], 0x0
	mov eax, [ebp-0x6a0]
	cmp byte [eax+0x9], 0x4
	jz _Z13Material_LoadPKci_70
_Z13Material_LoadPKci_110:
	movzx eax, byte [edi+0x5]
_Z13Material_LoadPKci_130:
	cmp al, 0xb
	jnz _Z13Material_LoadPKci_80
_Z13Material_LoadPKci_140:
	mov edx, [ebp-0x6a0]
	add edx, [edi+0x8]
	movzx ebx, word [edx]
	mov [ebp-0x5c], ebx
	mov [ebp-0x58], ebx
	mov eax, [edx+0x4]
	mov [ebp-0x54], eax
	mov eax, [edx+0x8]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x44480000
	mov eax, [edx+0x10]
	mov [ebp-0x48], eax
	mov eax, [edx+0x14]
	mov [ebp-0x44], eax
	mov eax, [edx+0x18]
	mov [ebp-0x40], eax
	mov eax, [edx+0xc]
	mov [ebp-0x3c], eax
	mov dword [ebp-0x28], 0x0
	mov eax, r_picmip_water
	mov edx, [eax]
	mov ecx, [edx+0xc]
	mov eax, ebx
	sar eax, cl
	mov esi, 0x4
	cmp eax, 0x3
	cmovle eax, esi
	mov [ebp-0x5c], eax
	mov ecx, [edx+0xc]
	sar ebx, cl
	cmp ebx, 0x3
	cmovle ebx, esi
	mov [ebp-0x58], ebx
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _Z16R_LoadWaterSetupPK7water_t
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz _Z13Material_LoadPKci_90
_Z13Material_LoadPKci_150:
	add dword [ebp-0x620], 0x1
	add edi, 0xc
	mov ecx, [ebp-0x6a0]
	movzx eax, word [ecx+0x30]
	cmp [ebp-0x620], eax
	jge _Z13Material_LoadPKci_100
	mov eax, ecx
	cmp byte [eax+0x9], 0x4
	jnz _Z13Material_LoadPKci_110
_Z13Material_LoadPKci_70:
	cmp dword [ebp-0x618], 0x1
	ja _Z13Material_LoadPKci_110
	movzx edx, byte [edi+0x4]
	mov eax, edx
	and eax, 0x18
	cmp eax, 0x8
	jnz _Z13Material_LoadPKci_110
	movzx eax, byte [edi+0x5]
	cmp al, 0x2
	jz _Z13Material_LoadPKci_120
	cmp al, 0x5
	jnz _Z13Material_LoadPKci_130
_Z13Material_LoadPKci_120:
	and dl, 0xe7
	or dl, 0x10
	mov [edi+0x4], dl
	cmp al, 0xb
	jz _Z13Material_LoadPKci_140
_Z13Material_LoadPKci_80:
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, [ebp-0x6a0]
	add eax, [edi+0x8]
	mov [esp], eax
	call _Z14Image_RegisterPKchi
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z13Material_LoadPKci_150
_Z13Material_LoadPKci_90:
	mov dword [ebp-0x69c], 0x0
	mov ecx, [ebp-0x6a0]
_Z13Material_LoadPKci_1390:
	mov [esp], ecx
	call Hunk_FreeTempMemory
_Z13Material_LoadPKci_1260:
	mov eax, [ebp-0x69c]
	add esp, 0x70c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Material_LoadPKci_100:
	mov ebx, ecx
_Z13Material_LoadPKci_340:
	mov [mtlLoadGlob+0x11024], ebx
	mov dword [esp+0xc], _Z26CompareRawMaterialTexturesPKvS0_
	mov dword [esp+0x8], 0xc
	movzx eax, word [ebx+0x30]
	mov [esp+0x4], eax
	mov esi, [ebp-0x61c]
	mov [esp], esi
	call qsort
	mov dword [mtlLoadGlob+0x11024], 0x0
	mov ebx, [ebp-0x6a0]
	add ebx, [ebx+0x3c]
	mov edi, [ebp-0x6a0]
	movzx esi, word [edi+0x32]
	test esi, esi
	jle _Z13Material_LoadPKci_160
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z13Material_LoadPKci_90
	lea ecx, [ebx+0x14]
	xor edx, edx
	add edx, 0x1
	cmp edx, esi
	jz _Z13Material_LoadPKci_160
_Z13Material_LoadPKci_170:
	mov eax, [ecx]
	add ecx, 0x14
	test eax, eax
	jz _Z13Material_LoadPKci_90
	add edx, 0x1
	cmp edx, esi
	jnz _Z13Material_LoadPKci_170
_Z13Material_LoadPKci_160:
	mov eax, [ebp-0x6a0]
	mov [mtlLoadGlob+0x11024], eax
	mov dword [esp+0xc], _Z27CompareRawMaterialConstantsPKvS0_
	mov dword [esp+0x8], 0x14
	movzx eax, word [eax+0x32]
	mov [esp+0x4], eax
	mov [esp], ebx
	call qsort
	mov dword [mtlLoadGlob+0x11024], 0x0
	mov eax, [ebp-0x6a0]
	add eax, [eax+0x34]
	mov [esp+0x10], eax
	mov ecx, [ebp-0x624]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x168]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp], ebx
	call _Z29Material_RegisterTechniqueSetPKc
	mov [ebp-0x634], eax
	test eax, eax
	jz _Z13Material_LoadPKci_90
	mov edi, [ebp-0x6a0]
	add edi, [edi]
	mov [ebp-0x614], edi
	mov eax, [ebp-0x698]
	lea ebx, [eax+eax*2]
	shl ebx, 0x2
	mov esi, [ebx+g_materialTypeInfo+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov [ebp-0x6d0], ecx
	lea eax, [esi+ecx+0x50]
	mov [esp], eax
	call _Z14Material_Alloci
	mov [ebp-0x69c], eax
	add eax, 0x50
	mov [ebp-0x628], eax
	mov eax, [ebx+g_materialTypeInfo]
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov edx, [ebp-0x628]
	mov [esp], edx
	call memcpy
	add esi, [ebp-0x628]
	mov ecx, [ebp-0x6d0]
	mov [esp+0x8], ecx
	mov ebx, [ebp-0x614]
	mov [esp+0x4], ebx
	mov [esp], esi
	call memcpy
	mov edi, [ebp-0x628]
	mov esi, [ebp-0x69c]
	mov [esi], edi
	mov edx, [ebp-0x6a0]
	movzx eax, byte [edx+0x8]
	mov [esi+0x4], al
	mov eax, [edx+0x20]
	and eax, 0x1f00000
	shr eax, 0x14
	movzx edx, al
	test al, al
	jz _Z13Material_LoadPKci_180
	lea ecx, [edx-0x1]
	mov eax, 0x1
	shl eax, cl
	mov [esi+0x10], eax
_Z13Material_LoadPKci_520:
	mov eax, [ebp-0x698]
	sub eax, 0x3
	cmp eax, 0x1
	jbe _Z13Material_LoadPKci_190
	mov ebx, [ebp-0x69c]
	and byte [ebx+0x4], 0xfd
_Z13Material_LoadPKci_190:
	mov esi, [ebp-0x6a0]
	movzx eax, byte [esi+0x9]
	mov edi, [ebp-0x69c]
	mov [edi+0x5], al
	movzx eax, byte [esi+0xa]
	mov [edi+0x6], al
	movzx eax, byte [esi+0xb]
	mov [edi+0x7], al
	movzx eax, word [esi+0x30]
	mov [edi+0x3a], al
	movzx eax, word [esi+0x32]
	mov [edi+0x3b], al
	mov eax, [ebp-0x634]
	mov [edi+0x40], eax
	movzx eax, word [esi+0x30]
	test ax, ax
	jnz _Z13Material_LoadPKci_200
_Z13Material_LoadPKci_1330:
	mov ebx, [ebp-0x6a0]
	movzx eax, word [ebx+0x32]
	test ax, ax
	jnz _Z13Material_LoadPKci_210
_Z13Material_LoadPKci_1430:
	mov ecx, [ebp-0x6a0]
	add ecx, 0x28
	mov [ebp-0x5f8], ecx
	mov ebx, [ebp-0x6a0]
	movzx ebx, word [ebx+0x12]
	shr ebx, 0x9
	and ebx, 0x1
	mov [ebp-0x5fc], ebx
	mov esi, [ebp-0x69c]
	mov [ebp-0x5c8], esi
	mov dword [ebp-0x608], 0x0
	mov dword [ebp-0x610], 0x0
	mov edi, [ebp-0x6a0]
	add edi, 0x2c
	mov [ebp-0x6bc], edi
	mov edx, esi
	mov eax, [edx+0x40]
	mov ecx, [ebp-0x608]
	mov eax, [eax+ecx*4+0xc]
	mov [ebp-0x60c], eax
	test eax, eax
	jz _Z13Material_LoadPKci_220
_Z13Material_LoadPKci_380:
	mov esi, eax
	movzx edx, word [eax+0x6]
	movzx eax, dx
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4+0x8]
	mov [ebp-0x604], eax
	test dx, dx
	jz _Z13Material_LoadPKci_230
	mov dword [ebp-0x600], 0x0
	lea edi, [ebp-0x168]
	mov [ebp-0x6b8], edi
	mov ecx, edi
_Z13Material_LoadPKci_330:
	mov eax, [ebp-0x600]
	mov edx, [ebp-0x604]
	mov eax, [edx+eax*4]
	mov [ebp-0x5f0], eax
	mov edx, [ebp-0x5f8]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov ebx, [ebp-0x5f0]
	mov [ebp-0x6d0], ebx
	mov dword [ebp-0x5f4], 0x0
	mov esi, ebx
	mov eax, [esi+0x4]
	mov esi, [eax]
	test esi, esi
	jle _Z13Material_LoadPKci_240
_Z13Material_LoadPKci_280:
	mov edi, [ebp-0x5f8]
	mov ebx, [edi]
	xor ecx, ecx
	mov edx, eax
	jmp _Z13Material_LoadPKci_250
_Z13Material_LoadPKci_260:
	add ecx, 0x1
	add edx, 0x20
	cmp ecx, esi
	jz _Z13Material_LoadPKci_240
_Z13Material_LoadPKci_250:
	mov eax, ebx
	and eax, [edx+0x4]
	cmp eax, [edx+0xc]
	jnz _Z13Material_LoadPKci_260
	mov edi, [ebp-0x6bc]
	mov eax, [edi]
	and eax, [edx+0x8]
	cmp eax, [edx+0x10]
	jnz _Z13Material_LoadPKci_260
	mov ecx, [ebp-0x6b8]
	mov eax, [ecx]
	and eax, [edx+0x1c]
	or eax, [edx+0x14]
	mov [ecx], eax
	mov eax, [ecx+0x4]
	and eax, [edx+0x20]
	or eax, [edx+0x18]
	mov [ecx+0x4], eax
	add dword [ebp-0x5f4], 0x1
	add dword [ebp-0x6d0], 0x4
	cmp dword [ebp-0x5f4], 0xa
	jz _Z13Material_LoadPKci_270
_Z13Material_LoadPKci_290:
	mov esi, [ebp-0x6d0]
	mov eax, [esi+0x4]
	mov esi, [eax]
	test esi, esi
	jg _Z13Material_LoadPKci_280
_Z13Material_LoadPKci_240:
	mov ebx, [ebp-0x69c]
	mov eax, [ebx]
	mov [esp+0x10], eax
	mov esi, [ebp-0x5f4]
	mov [esp+0xc], esi
	mov edi, [ebp-0x5f0]
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_rule_in_state
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	add dword [ebp-0x5f4], 0x1
	add dword [ebp-0x6d0], 0x4
	cmp dword [ebp-0x5f4], 0xa
	jnz _Z13Material_LoadPKci_290
_Z13Material_LoadPKci_270:
	mov eax, [ebp-0x5fc]
	test eax, eax
	jnz _Z13Material_LoadPKci_300
	mov eax, [ebp-0x6b8]
	mov edx, [eax+0x4]
	mov eax, edx
	and eax, 0x30
	cmp eax, 0x10
	jz _Z13Material_LoadPKci_310
_Z13Material_LoadPKci_300:
	add dword [ebp-0x600], 0x1
	add dword [ebp-0x6b8], 0x8
	mov esi, [ebp-0x60c]
	movzx ebx, word [esi+0x6]
	cmp ebx, [ebp-0x600]
	jbe _Z13Material_LoadPKci_320
	mov ecx, [ebp-0x6b8]
	jmp _Z13Material_LoadPKci_330
_Z13Material_LoadPKci_60:
	mov ebx, edi
	jmp _Z13Material_LoadPKci_340
_Z13Material_LoadPKci_20:
	add [ebp+0x8], esi
	jmp _Z13Material_LoadPKci_350
_Z13Material_LoadPKci_230:
	xor ebx, ebx
_Z13Material_LoadPKci_320:
	mov eax, [ebp-0x610]
	test eax, eax
	jnz _Z13Material_LoadPKci_360
	mov dword [ebp-0x5ac], 0x0
	xor esi, esi
_Z13Material_LoadPKci_510:
	sub ebx, [ebp-0x5ac]
	mov edi, [ebp-0x610]
	lea ecx, [ebp+edi*8-0x5a8]
	lea eax, [ebx*8]
	mov edi, [ebp-0x5ac]
	lea edx, [ebp+edi*8-0x168]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	add [ebp-0x610], ebx
	mov eax, esi
	mov edx, [ebp-0x5c8]
	mov [edx+0x18], al
	add dword [ebp-0x608], 0x1
	add dword [ebp-0x5c8], 0x1
	cmp dword [ebp-0x608], 0x22
	jz _Z13Material_LoadPKci_370
_Z13Material_LoadPKci_390:
	mov edx, [ebp-0x69c]
	mov eax, [edx+0x40]
	mov ecx, [ebp-0x608]
	mov eax, [eax+ecx*4+0xc]
	mov [ebp-0x60c], eax
	test eax, eax
	jnz _Z13Material_LoadPKci_380
_Z13Material_LoadPKci_220:
	mov ebx, [ebp-0x5c8]
	mov byte [ebx+0x18], 0xff
	add dword [ebp-0x608], 0x1
	add dword [ebp-0x5c8], 0x1
	cmp dword [ebp-0x608], 0x22
	jnz _Z13Material_LoadPKci_390
_Z13Material_LoadPKci_370:
	movzx ecx, byte [ebp-0x610]
	mov ebx, [ebp-0x69c]
	mov [ebx+0x3c], cl
	mov eax, [ebp-0x610]
	test eax, eax
	jnz _Z13Material_LoadPKci_400
	xor eax, eax
	xor ebx, ebx
_Z13Material_LoadPKci_1420:
	mov esi, [ebp-0x69c]
	mov [esi+0x4c], eax
	mov [esp+0x8], ebx
	lea edi, [ebp-0x5a8]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov eax, esi
	call _Z25Material_UpdateStateFlagsP8Material
	mov edx, [esi+0x40]
	mov edi, [edx+0x28]
	test edi, edi
	jz _Z13Material_LoadPKci_410
	mov eax, [ebp-0x69c]
	cmp byte [eax+0x5], 0x18
	setae al
_Z13Material_LoadPKci_1410:
	mov ecx, [ebp-0x69c]
	mov [ecx+0x3e], al
	mov dword [ebp-0x5e8], 0x0
	jmp _Z13Material_LoadPKci_420
_Z13Material_LoadPKci_440:
	add dword [ebp-0x5e8], 0x1
	cmp dword [ebp-0x5e8], 0x22
	jz _Z13Material_LoadPKci_430
	mov ebx, [ebp-0x69c]
	mov edx, [ebx+0x40]
_Z13Material_LoadPKci_420:
	mov edi, [ebp-0x5e8]
	mov esi, [edx+edi*4+0xc]
	test esi, esi
	jz _Z13Material_LoadPKci_440
	cmp word [esi+0x6], 0x0
	jz _Z13Material_LoadPKci_440
	xor edi, edi
	lea ebx, [esi+0x8]
	jmp _Z13Material_LoadPKci_450
_Z13Material_LoadPKci_460:
	add edi, 0x1
	add ebx, 0x14
	movzx eax, word [esi+0x6]
	cmp edi, eax
	jae _Z13Material_LoadPKci_440
_Z13Material_LoadPKci_450:
	movzx ecx, byte [ebx+0xc]
	movzx eax, byte [ebx+0xd]
	add ecx, eax
	movzx eax, byte [ebx+0xe]
	add ecx, eax
	mov eax, [ebx+0x10]
	mov [esp], eax
	mov edx, [esi]
	mov eax, [ebp-0x69c]
	call _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument
	test al, al
	jnz _Z13Material_LoadPKci_460
	jmp _Z13Material_LoadPKci_90
_Z13Material_LoadPKci_310:
	and edx, 0xffffffcf
	mov ecx, [ebp-0x6b8]
	mov [ecx+0x4], edx
	jmp _Z13Material_LoadPKci_300
_Z13Material_LoadPKci_360:
	mov edi, [ebp-0x610]
	mov [ebp-0x5ac], edi
	mov dword [ebp-0x5ec], 0x0
	lea eax, [ebp-0x5a8]
	mov [ebp-0x5cc], eax
	mov edx, edi
	mov esi, eax
	jmp _Z13Material_LoadPKci_470
_Z13Material_LoadPKci_500:
	mov esi, [ebp-0x5cc]
_Z13Material_LoadPKci_470:
	cmp [ebp-0x5ac], ebx
	cmova edx, ebx
	mov [ebp-0x5ac], edx
	shl edx, 0x3
	mov [ebp-0x6cc], edx
	cld
	cmp edx, edx
	lea edi, [ebp-0x168]
	mov ecx, edx
	repe cmpsb
	mov eax, 0x0
	jz _Z13Material_LoadPKci_480
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z13Material_LoadPKci_480:
	test eax, eax
	jz _Z13Material_LoadPKci_490
	add dword [ebp-0x5ec], 0x1
	mov edx, [ebp-0x610]
	sub edx, [ebp-0x5ec]
	mov [ebp-0x5ac], edx
	add dword [ebp-0x5cc], 0x8
	mov ecx, [ebp-0x610]
	cmp [ebp-0x5ec], ecx
	jnz _Z13Material_LoadPKci_500
	movzx esi, byte [ebp-0x610]
	jmp _Z13Material_LoadPKci_510
_Z13Material_LoadPKci_490:
	movzx esi, byte [ebp-0x5ec]
	jmp _Z13Material_LoadPKci_510
_Z13Material_LoadPKci_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_1error_material_
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x69c], 0x0
	mov eax, [ebp-0x69c]
	add esp, 0x70c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Material_LoadPKci_180:
	mov ecx, [ebp-0x69c]
	mov dword [ecx+0x10], 0x0
	jmp _Z13Material_LoadPKci_520
_Z13Material_LoadPKci_10:
	mov ebx, eax
	add ebx, 0x1
	call _Z17Com_GetBspVersionv
	mov [ebp-0x690], eax
	mov byte [ebp-0x691], 0x0
	mov dword [ebp-0x5d4], 0x1
	lea edx, [ebp-0x164]
	mov [ebp-0x6c4], edx
_Z13Material_LoadPKci_590:
	movsx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp eax, 0x9
	ja _Z13Material_LoadPKci_530
	xor ecx, ecx
_Z13Material_LoadPKci_540:
	lea eax, [ecx+ecx*4]
	lea ecx, [edx+eax*2-0x30]
	add ebx, 0x1
	movsx edx, byte [ebx]
	lea eax, [edx-0x30]
	cmp eax, 0x9
	jbe _Z13Material_LoadPKci_540
_Z13Material_LoadPKci_600:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call _Z16R_GetBspMaterialjP10GfxSurfaceP14GfxWorldVertex
	mov ecx, [ebp-0x6c4]
	sub ecx, 0x4
	mov [ebp-0x5d0], ecx
	mov esi, [ebp-0x6c4]
	mov [esi-0x4], eax
	cmp dword [ebp-0x690], 0x9
	jle _Z13Material_LoadPKci_550
	cmp byte [ebx], 0x6e
	setz byte [ebp-0x692]
	cmp byte [ebp-0x692], 0x0
	jz _Z13Material_LoadPKci_560
	add ebx, 0x1
_Z13Material_LoadPKci_560:
	mov [esp], eax
	call _Z18Material_IsDefaultPK8Material
	test al, al
	jz _Z13Material_LoadPKci_570
_Z13Material_LoadPKci_660:
	mov byte [ebp-0x691], 0x1
_Z13Material_LoadPKci_650:
	cmp byte [ebx], 0x0
	jz _Z13Material_LoadPKci_580
	add ebx, 0x1
	add dword [ebp-0x5d4], 0x1
	add dword [ebp-0x6c4], 0x4
	jmp _Z13Material_LoadPKci_590
_Z13Material_LoadPKci_550:
	cmp byte [ebx], 0x6e
	setz byte [ebp-0x692]
	add ebx, 0x7
	jmp _Z13Material_LoadPKci_560
_Z13Material_LoadPKci_530:
	xor ecx, ecx
	jmp _Z13Material_LoadPKci_600
_Z13Material_LoadPKci_570:
	mov eax, [ebp-0x5d0]
	mov esi, [eax]
	mov dword [esp], _cstring_normalmap
	call _Z12R_HashStringPKc
	mov [ebp-0x688], eax
	movzx eax, byte [esi+0x3a]
	movzx edx, al
	mov [ebp-0x68c], edx
	test al, al
	jz _Z13Material_LoadPKci_610
	mov edx, [esi+0x44]
	mov edi, [ebp-0x688]
	cmp [edx], edi
	jz _Z13Material_LoadPKci_620
	lea ecx, [edx+0xc]
	xor edi, edi
	mov esi, 0xc
_Z13Material_LoadPKci_630:
	add edi, 0x1
	cmp [ebp-0x68c], edi
	jbe _Z13Material_LoadPKci_610
	lea eax, [edx+esi]
	mov [ebp-0x5b4], eax
	mov eax, [ecx]
	add esi, 0xc
	add ecx, 0xc
	cmp eax, [ebp-0x688]
	jnz _Z13Material_LoadPKci_630
	mov edx, [ebp-0x5b4]
_Z13Material_LoadPKci_620:
	mov eax, [edx+0x8]
	mov eax, [eax+0x20]
	mov edi, _cstring_identitynormalma
	mov ecx, 0x13
	cld
	mov esi, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z13Material_LoadPKci_640
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z13Material_LoadPKci_640:
	test eax, eax
	setnz al
_Z13Material_LoadPKci_670:
	cmp [ebp-0x692], al
	jz _Z13Material_LoadPKci_650
	mov eax, _cstring_without_a_normal
	cmp byte [ebp-0x692], 0x0
	mov edx, _cstring_with_a_normal_ma
	cmovz eax, edx
	mov [esp+0xc], eax
	mov ecx, [ebp-0x5d0]
	mov eax, [ecx]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_in_layered_mater
	mov dword [esp], 0x1
	call _Z14Com_PrintErroriPKcz
	jmp _Z13Material_LoadPKci_660
_Z13Material_LoadPKci_610:
	xor eax, eax
	jmp _Z13Material_LoadPKci_670
_Z13Material_LoadPKci_580:
	cmp byte [ebp-0x691], 0x0
	jnz _Z13Material_LoadPKci_680
	mov ebx, [ebp-0x5d4]
	mov ebx, [ebx*4+s_codeConstUpdateFreq+0x164]
	mov [ebp-0x680], ebx
	mov eax, [ebp-0x5d4]
	test eax, eax
	jz _Z13Material_LoadPKci_690
	mov dword [ebp-0x67c], 0x0
	mov dword [ebp-0x678], 0x0
	mov dword [ebp-0x674], 0x0
	lea esi, [ebp-0x168]
	mov [ebp-0x5d8], esi
_Z13Material_LoadPKci_1670:
	mov edi, [ebp-0x5d8]
	mov ebx, [edi]
	mov eax, [ebx+0x40]
	mov eax, [eax]
	mov [ebp-0x6cc], eax
	mov dword [ebp-0x6a4], 0x2
	cld
	mov esi, eax
	mov edi, _cstring_w_
	mov ecx, 0x2
	repe cmpsb
	mov eax, 0x0
	jz _Z13Material_LoadPKci_700
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z13Material_LoadPKci_700:
	test eax, eax
	jnz _Z13Material_LoadPKci_710
	mov ebx, [ebp-0x6cc]
	add ebx, 0x2
	mov [ebp-0x670], ebx
_Z13Material_LoadPKci_820:
	mov dword [ebp-0x66c], 0x0
	mov edi, 0x21
	movzx eax, byte [ebp-0x678]
	add al, 0x30
	mov [ebp-0x6bd], al
	jmp _Z13Material_LoadPKci_720
_Z13Material_LoadPKci_750:
	jle _Z13Material_LoadPKci_730
	add ebx, 0x1
	mov [ebp-0x66c], ebx
_Z13Material_LoadPKci_760:
	cmp [ebp-0x66c], edi
	jae _Z13Material_LoadPKci_740
_Z13Material_LoadPKci_720:
	mov ebx, [ebp-0x66c]
	add ebx, edi
	shr ebx, 1
	mov esi, ebx
	shl esi, 0x4
	mov eax, [esi+s_lyrTechSetNames]
	mov [esp+0x4], eax
	mov edx, [ebp-0x670]
	mov [esp], edx
	call _Z8I_strcmpPKcS0_
	cmp eax, 0x0
	jge _Z13Material_LoadPKci_750
	mov edi, ebx
	jmp _Z13Material_LoadPKci_760
_Z13Material_LoadPKci_1250:
	xor edi, edi
	lea ebx, [esi+0x8]
	jmp _Z13Material_LoadPKci_770
_Z13Material_LoadPKci_790:
	add edi, 0x1
	add ebx, 0x14
	movzx eax, word [esi+0x6]
	cmp eax, edi
	jbe _Z13Material_LoadPKci_780
_Z13Material_LoadPKci_770:
	movzx ecx, byte [ebx+0xc]
	movzx eax, byte [ebx+0xd]
	add ecx, eax
	movzx eax, byte [ebx+0xe]
	add ecx, eax
	mov eax, [ebx+0x10]
	mov [esp], eax
	mov edx, [esi]
	mov eax, [ebp-0x664]
	call _Z30Material_ValidatePassArgumentsPK8MaterialPKcjPK22MaterialShaderArgument
	test al, al
	jnz _Z13Material_LoadPKci_790
_Z13Material_LoadPKci_680:
	mov dword [ebp-0x69c], 0x0
	mov eax, [ebp-0x69c]
	add esp, 0x70c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Material_LoadPKci_710:
	mov edi, _cstring_wc_
	mov dword [ebp-0x6a8], 0x3
	cld
	mov esi, [ebp-0x6cc]
	mov ecx, 0x3
	repe cmpsb
	mov edx, 0x0
	jz _Z13Material_LoadPKci_800
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z13Material_LoadPKci_800:
	test edx, edx
	jnz _Z13Material_LoadPKci_810
	mov ebx, [ebp-0x6cc]
	add ebx, 0x3
	mov [ebp-0x670], ebx
	jmp _Z13Material_LoadPKci_820
_Z13Material_LoadPKci_690:
	mov dword [ebp-0x674], 0x0
_Z13Material_LoadPKci_1680:
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call _Z29Material_RegisterTechniqueSetPKc
	mov [ebp-0x668], eax
	test eax, eax
	jz _Z13Material_LoadPKci_680
	mov esi, [ebp-0x674]
	mov edi, [ebp-0x680]
	lea eax, [esi+edi-0x1]
	cmp esi, 0x2
	cmovb eax, edi
	mov edx, [ebp-0x668]
	mov [edx+0x4], al
	mov dword [esp], _cstring_colortint
	call _Z12R_HashStringPKc
	mov [ebp-0x64c], eax
	mov eax, [ebp-0x5d4]
	test eax, eax
	jnz _Z13Material_LoadPKci_830
	mov byte [ebp-0x65e], 0xff
	mov byte [ebp-0x65d], 0x0
	mov byte [ebp-0x64f], 0x0
	mov byte [ebp-0x64e], 0x0
	mov dword [ebp-0x65c], 0x0
_Z13Material_LoadPKci_1560:
	mov eax, [ebp-0x668]
	mov [ebp-0x5dc], eax
	mov dword [ebp-0x644], 0x0
	mov dword [ebp-0x5b0], 0x0
	jmp _Z13Material_LoadPKci_840
_Z13Material_LoadPKci_890:
	mov eax, edx
	and eax, 0xf
	sub eax, 0x1
	jz _Z13Material_LoadPKci_850
	and edx, 0xfffffff0
	or edx, 0x2
	mov [ebp-0x24], edx
_Z13Material_LoadPKci_850:
	mov ebx, [ebp-0x5b0]
	test ebx, ebx
	jnz _Z13Material_LoadPKci_860
	mov dword [ebp-0x648], 0x0
	xor esi, esi
_Z13Material_LoadPKci_960:
	mov ebx, 0x1
	sub ebx, [ebp-0x648]
	mov edi, [ebp-0x5b0]
	lea ecx, [ebp+edi*8-0x5a8]
	lea eax, [ebx*8]
	mov edi, [ebp-0x648]
	lea edx, [ebp+edi*8-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	add [ebp-0x5b0], ebx
	mov eax, esi
	mov edx, [ebp-0x644]
	mov [edx+ebp-0x68], al
_Z13Material_LoadPKci_1500:
	add dword [ebp-0x644], 0x1
	add dword [ebp-0x5dc], 0x4
	cmp dword [ebp-0x644], 0x22
	jz _Z13Material_LoadPKci_870
_Z13Material_LoadPKci_840:
	mov edx, [ebp-0x5dc]
	mov edi, [edx+0xc]
	test edi, edi
	jz _Z13Material_LoadPKci_880
	mov edx, [ebp-0x168]
	mov ebx, [ebp-0x644]
	movzx eax, byte [ebx+edx+0x18]
	mov edx, [edx+0x4c]
	lea eax, [edx+eax*8]
	mov edx, [eax]
	mov [ebp-0x24], edx
	mov eax, [eax+0x4]
	mov [ebp-0x20], eax
	mov eax, edx
	and eax, 0xf0
	cmp eax, 0x10
	jnz _Z13Material_LoadPKci_890
	mov eax, edx
	and eax, 0x3800
	cmp eax, 0x800
	jz _Z13Material_LoadPKci_850
	mov esi, [ebp-0x5d4]
	test esi, esi
	jz _Z13Material_LoadPKci_850
	xor esi, esi
	jmp _Z13Material_LoadPKci_900
_Z13Material_LoadPKci_910:
	add esi, 0x1
	cmp [ebp-0x5d4], esi
	jz _Z13Material_LoadPKci_850
_Z13Material_LoadPKci_900:
	mov ecx, [ebp+esi*4-0x168]
	mov edi, [ebp-0x644]
	movzx eax, byte [edi+ecx+0x18]
	movzx ebx, al
	add al, 0x1
	jz _Z13Material_LoadPKci_910
	mov eax, [ecx+0x4c]
	lea ecx, [eax+ebx*8]
	mov eax, [ecx]
	and eax, 0xf0
	cmp eax, 0x10
	jz _Z13Material_LoadPKci_910
	mov eax, edx
	and eax, 0xffffc000
	or eax, 0x902
	mov [ebp-0x24], eax
	mov edx, [ecx]
	and edx, 0xf0
	or eax, edx
	mov [ebp-0x24], eax
	jmp _Z13Material_LoadPKci_850
_Z13Material_LoadPKci_860:
	mov eax, [ebp-0x5b0]
	mov [ebp-0x648], eax
	mov dword [ebp-0x640], 0x0
	lea ebx, [ebp-0x5a8]
_Z13Material_LoadPKci_950:
	cmp dword [ebp-0x648], 0x1
	jbe _Z13Material_LoadPKci_920
	mov dword [ebp-0x648], 0x1
	mov eax, 0x8
_Z13Material_LoadPKci_970:
	cld
	cmp eax, eax
	mov esi, ebx
	lea edi, [ebp-0x24]
	mov ecx, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z13Material_LoadPKci_930
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z13Material_LoadPKci_930:
	test eax, eax
	jz _Z13Material_LoadPKci_940
	add dword [ebp-0x640], 0x1
	mov edx, [ebp-0x5b0]
	sub edx, [ebp-0x640]
	mov [ebp-0x648], edx
	add ebx, 0x8
	mov ecx, [ebp-0x5b0]
	cmp [ebp-0x640], ecx
	jnz _Z13Material_LoadPKci_950
	movzx esi, byte [ebp-0x5b0]
	jmp _Z13Material_LoadPKci_960
_Z13Material_LoadPKci_920:
	mov eax, [ebp-0x648]
	shl eax, 0x3
	jmp _Z13Material_LoadPKci_970
_Z13Material_LoadPKci_940:
	movzx esi, byte [ebp-0x640]
	jmp _Z13Material_LoadPKci_960
_Z13Material_LoadPKci_870:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov [ebp-0x6ac], ecx
	movzx eax, byte [ebp-0x64f]
	lea eax, [eax+eax*2]
	lea edi, [eax*4]
	movzx esi, byte [ebp-0x64e]
	shl esi, 0x5
	lea eax, [edi+esi]
	lea ebx, [ecx+eax+0x50]
	mov [esp], ebx
	call _Z14Material_Alloci
	mov [ebp-0x664], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ecx, [ebp-0x664]
	mov [ebp-0x69c], ecx
	test edi, edi
	jnz _Z13Material_LoadPKci_980
	xor eax, eax
_Z13Material_LoadPKci_1580:
	mov ebx, [ebp-0x664]
	mov [ebx+0x44], eax
	test esi, esi
	jnz _Z13Material_LoadPKci_990
	mov eax, ebx
	add eax, edi
	xor edx, edx
_Z13Material_LoadPKci_1570:
	mov edi, [ebp-0x664]
	mov [edi+0x48], edx
	mov edx, [ebp-0x668]
	mov [edi+0x40], edx
	lea eax, [esi+eax+0x50]
	mov [edi], eax
	mov ecx, [ebp-0x6ac]
	mov [esp+0x8], ecx
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	and byte [ebp-0x65e], 0x4
	and byte [ebp-0x65d], 0xfb
	movzx eax, byte [ebp-0x65d]
	or [ebp-0x65e], al
	movzx edx, byte [ebp-0x65e]
	mov [edi+0x4], dl
	mov eax, [ebp-0x168]
	movzx eax, byte [eax+0x5]
	mov [edi+0x5], al
	mov ecx, [ebp-0x65c]
	mov [edi+0x10], ecx
	movzx ebx, byte [ebp-0x64f]
	mov [edi+0x3a], bl
	movzx eax, byte [ebp-0x64e]
	mov [edi+0x3b], al
	mov edx, edi
	add edx, 0x18
	mov eax, [ebp-0x68]
	mov [edi+0x18], eax
	mov eax, [ebp-0x64]
	mov [edx+0x4], eax
	mov eax, [ebp-0x60]
	mov [edx+0x8], eax
	mov eax, [ebp-0x5c]
	mov [edx+0xc], eax
	mov eax, [ebp-0x58]
	mov [edx+0x10], eax
	mov eax, [ebp-0x54]
	mov [edx+0x14], eax
	mov eax, [ebp-0x50]
	mov [edx+0x18], eax
	mov eax, [ebp-0x4c]
	mov [edx+0x1c], eax
	movzx eax, word [ebp-0x48]
	mov [edx+0x20], ax
	movzx edx, byte [ebp-0x5b0]
	mov [edi+0x3c], dl
	mov ecx, [ebp-0x5b0]
	test ecx, ecx
	jnz _Z13Material_LoadPKci_1000
	xor eax, eax
	xor ebx, ebx
_Z13Material_LoadPKci_1300:
	mov esi, [ebp-0x664]
	mov [esi+0x4c], eax
	mov [esp+0x8], ebx
	lea edi, [ebp-0x5a8]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov eax, esi
	call _Z25Material_UpdateStateFlagsP8Material
	mov edi, [esi+0x44]
	mov eax, [ebp-0x664]
	mov esi, [eax+0x48]
	mov edx, [ebp-0x5d4]
	test edx, edx
	jz _Z13Material_LoadPKci_1010
	mov byte [ebp-0x639], 0x0
	mov dword [ebp-0x5e4], 0x1
_Z13Material_LoadPKci_1100:
	mov ecx, [ebp-0x5e4]
	lea eax, [ebp+ecx*4-0x168]
	lea ebx, [eax-0x4]
	mov [ebp-0x5e0], ebx
	mov ebx, [eax-0x4]
	mov eax, [ebx+0x44]
	cmp byte [ebx+0x3a], 0x0
	jnz _Z13Material_LoadPKci_1020
	mov edx, ebx
_Z13Material_LoadPKci_1210:
	mov eax, [ebx+0x48]
	cmp byte [edx+0x3b], 0x0
	jz _Z13Material_LoadPKci_1030
	mov ecx, eax
	mov dword [ebp-0x654], 0x0
	mov byte [ebp-0x64d], 0x0
	movsx eax, byte [ebp-0x639]
	mov [ebp-0x6b0], eax
_Z13Material_LoadPKci_1080:
	mov eax, [ecx]
	mov [esi], eax
	mov eax, [ecx+0x4]
	mov [esi+0x4], eax
	mov eax, [ecx+0x8]
	mov [esi+0x8], eax
	mov eax, [ecx+0xc]
	mov [esi+0xc], eax
	mov eax, [ecx+0x10]
	mov [esi+0x10], eax
	mov eax, [ecx+0x14]
	mov [esi+0x14], eax
	mov eax, [ecx+0x18]
	mov [esi+0x18], eax
	mov eax, [ecx+0x1c]
	mov [esi+0x1c], eax
	cmp byte [ebp-0x639], 0x0
	jz _Z13Material_LoadPKci_1040
	lea edx, [esi+0x4]
	mov [ebp-0x6d4], edx
	mov eax, edx
	xor edx, edx
	jmp _Z13Material_LoadPKci_1050
_Z13Material_LoadPKci_1070:
	add edx, 0x1
	add eax, 0x1
	cmp edx, 0xc
	jz _Z13Material_LoadPKci_1060
_Z13Material_LoadPKci_1050:
	cmp byte [eax], 0x0
	jnz _Z13Material_LoadPKci_1070
	movzx ebx, byte [ebp-0x639]
	mov [eax], bl
	lea eax, [edx+0x1]
	cmp eax, 0xb
	ja _Z13Material_LoadPKci_1060
	mov eax, [ebp-0x6d4]
	mov byte [eax+edx+0x1], 0x0
_Z13Material_LoadPKci_1060:
	mov edx, [esi]
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	xor eax, [ebp-0x6b0]
	mov [esi], eax
_Z13Material_LoadPKci_1040:
	mov edx, [ebp-0x64c]
	cmp edx, [ecx]
	mov eax, 0x1
	movzx ebx, byte [ebp-0x64d]
	cmovz ebx, eax
	mov [ebp-0x64d], bl
	add esi, 0x20
	add dword [ebp-0x654], 0x1
	add ecx, 0x20
	mov edx, [ebp-0x5e0]
	mov eax, [edx]
	movzx eax, byte [eax+0x3b]
	cmp eax, [ebp-0x654]
	ja _Z13Material_LoadPKci_1080
	test bl, bl
	jz _Z13Material_LoadPKci_1030
_Z13Material_LoadPKci_1150:
	mov ebx, [ebp-0x5d4]
	cmp [ebp-0x5e4], ebx
	jz _Z13Material_LoadPKci_1010
	mov eax, [ebp-0x5e4]
	test eax, eax
	jnz _Z13Material_LoadPKci_1090
	mov byte [ebp-0x639], 0x0
_Z13Material_LoadPKci_1590:
	add dword [ebp-0x5e4], 0x1
	jmp _Z13Material_LoadPKci_1100
_Z13Material_LoadPKci_1030:
	lea ebx, [esi+0x4]
	mov dword [esi+0x4], 0x6f6c6f63
	mov dword [ebx+0x4], 0x6e695472
	mov dword [ebx+0x8], 0x74
	mov ecx, [ebp-0x64c]
	mov [esi], ecx
	lea ecx, [esi+0x10]
	mov edx, colorWhite
	mov eax, [edx]
	mov [esi+0x10], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	cmp byte [ebp-0x639], 0x0
	jz _Z13Material_LoadPKci_1110
	mov eax, ebx
	xor edx, edx
	jmp _Z13Material_LoadPKci_1120
_Z13Material_LoadPKci_1140:
	add edx, 0x1
	add eax, 0x1
	cmp edx, 0xc
	jz _Z13Material_LoadPKci_1130
_Z13Material_LoadPKci_1120:
	cmp byte [eax], 0x0
	jnz _Z13Material_LoadPKci_1140
	movzx ecx, byte [ebp-0x639]
	mov [eax], cl
	lea eax, [edx+0x1]
	cmp eax, 0xb
	ja _Z13Material_LoadPKci_1130
	mov byte [ebx+edx+0x1], 0x0
_Z13Material_LoadPKci_1130:
	mov eax, [esi]
	mov edx, eax
	shl edx, 0x5
	add edx, eax
	movsx eax, byte [ebp-0x639]
	xor edx, eax
	mov [esi], edx
_Z13Material_LoadPKci_1110:
	add esi, 0x20
	jmp _Z13Material_LoadPKci_1150
_Z13Material_LoadPKci_1020:
	cmp byte [ebp-0x639], 0x0
	jnz _Z13Material_LoadPKci_1160
	lea ecx, [edi+0xc]
	mov edi, eax
	mov dword [ebp-0x5b8], 0x0
	jmp _Z13Material_LoadPKci_1170
_Z13Material_LoadPKci_1190:
	add dword [ebp-0x5b8], 0x1
	mov ebx, [ebp-0x5e0]
	mov edx, [ebx]
	mov ebx, edx
	add edi, 0xc
	movzx eax, byte [edx+0x3a]
	cmp eax, [ebp-0x5b8]
	jbe _Z13Material_LoadPKci_1180
	add ecx, 0xc
_Z13Material_LoadPKci_1170:
	mov eax, [edi]
	mov [ecx-0xc], eax
	mov eax, [edi+0x4]
	mov [ecx-0x8], eax
	mov eax, [edi+0x8]
	mov [ecx-0x4], eax
	lea ebx, [ecx-0x6]
	movzx edx, byte [ecx-0x6]
	mov eax, edx
	and eax, 0x18
	cmp eax, 0x8
	jnz _Z13Material_LoadPKci_1190
	movzx eax, byte [ecx-0x5]
	cmp al, 0x2
	jz _Z13Material_LoadPKci_1200
	cmp al, 0x5
	jnz _Z13Material_LoadPKci_1190
_Z13Material_LoadPKci_1200:
	and dl, 0xe7
	or dl, 0x10
	mov [ebx], dl
	jmp _Z13Material_LoadPKci_1190
_Z13Material_LoadPKci_1180:
	mov edi, ecx
	jmp _Z13Material_LoadPKci_1210
_Z13Material_LoadPKci_1160:
	lea ecx, [edi+0xc]
	mov edi, eax
	mov dword [ebp-0x658], 0x0
	movsx eax, byte [ebp-0x639]
	mov [ebp-0x6b4], eax
_Z13Material_LoadPKci_1230:
	mov eax, [edi]
	mov [ecx-0xc], eax
	mov eax, [edi+0x4]
	mov [ecx-0x8], eax
	mov eax, [edi+0x8]
	mov [ecx-0x4], eax
	movzx edx, byte [ecx-0x6]
	mov eax, edx
	and eax, 0x18
	cmp eax, 0x8
	jz _Z13Material_LoadPKci_1220
_Z13Material_LoadPKci_1320:
	movzx edx, byte [ebp-0x639]
	mov [ecx-0x7], dl
	mov eax, [ecx-0xc]
	mov edx, eax
	shl edx, 0x5
	add edx, eax
	xor edx, [ebp-0x6b4]
	mov [ecx-0xc], edx
	add dword [ebp-0x658], 0x1
	mov ebx, [ebp-0x5e0]
	mov edx, [ebx]
	mov ebx, edx
	add edi, 0xc
	movzx eax, byte [edx+0x3a]
	cmp eax, [ebp-0x658]
	jbe _Z13Material_LoadPKci_1180
	add ecx, 0xc
	jmp _Z13Material_LoadPKci_1230
_Z13Material_LoadPKci_1010:
	mov dword [esp+0xc], _Z29CompareHashedMaterialTexturesPKvS0_
	mov dword [esp+0x8], 0xc
	mov esi, [ebp-0x664]
	movzx eax, byte [esi+0x3a]
	mov [esp+0x4], eax
	mov eax, [esi+0x44]
	mov [esp], eax
	call qsort
	mov dword [esp+0xc], _Z30CompareHashedMaterialConstantsPKvS0_
	mov dword [esp+0x8], 0x20
	movzx eax, byte [esi+0x3b]
	mov [esp+0x4], eax
	mov eax, [esi+0x48]
	mov [esp], eax
	call qsort
	mov edx, [esi+0x40]
	mov eax, [edx+0x28]
	test eax, eax
	jz _Z13Material_LoadPKci_1240
	mov edi, [ebp-0x664]
	cmp byte [edi+0x5], 0x18
	setae al
_Z13Material_LoadPKci_1290:
	mov ecx, [ebp-0x664]
	mov [ecx+0x3e], al
	mov dword [ebp-0x638], 0x0
_Z13Material_LoadPKci_1270:
	mov edi, [ebp-0x638]
	mov esi, [edx+edi*4+0xc]
	test esi, esi
	jz _Z13Material_LoadPKci_780
	cmp word [esi+0x6], 0x0
	jnz _Z13Material_LoadPKci_1250
_Z13Material_LoadPKci_780:
	add dword [ebp-0x638], 0x1
	cmp dword [ebp-0x638], 0x22
	jz _Z13Material_LoadPKci_1260
	mov ebx, [ebp-0x664]
	mov edx, [ebx+0x40]
	jmp _Z13Material_LoadPKci_1270
_Z13Material_LoadPKci_1240:
	mov eax, [edx+0x20]
	test eax, eax
	jz _Z13Material_LoadPKci_1280
	mov eax, 0x2
	jmp _Z13Material_LoadPKci_1290
_Z13Material_LoadPKci_1280:
	mov eax, 0x3
	jmp _Z13Material_LoadPKci_1290
_Z13Material_LoadPKci_1000:
	mov ebx, [ebp-0x5b0]
	shl ebx, 0x3
	mov [esp], ebx
	call _Z14Material_Alloci
	jmp _Z13Material_LoadPKci_1300
_Z13Material_LoadPKci_1220:
	movzx eax, byte [ecx-0x5]
	cmp al, 0x2
	jz _Z13Material_LoadPKci_1310
	cmp al, 0x5
	jnz _Z13Material_LoadPKci_1320
_Z13Material_LoadPKci_1310:
	and dl, 0xe7
	or dl, 0x10
	mov [ecx-0x6], dl
	jmp _Z13Material_LoadPKci_1320
_Z13Material_LoadPKci_200:
	movzx eax, ax
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z14Material_Alloci
	mov [edi+0x44], eax
	mov eax, esi
	add eax, [esi+0x38]
	cmp word [esi+0x30], 0x0
	jz _Z13Material_LoadPKci_1330
	mov [ebp-0x5bc], eax
	mov dword [ebp-0x630], 0x0
	mov dword [ebp-0x5c0], 0x0
	jmp _Z13Material_LoadPKci_1340
_Z13Material_LoadPKci_1350:
	mov edx, [ebp-0x6a0]
	add edx, [ebx+0x8]
	movzx ebx, word [edx]
	mov [ebp-0x5c], ebx
	mov [ebp-0x58], ebx
	mov eax, [edx+0x4]
	mov [ebp-0x54], eax
	mov eax, [edx+0x8]
	mov [ebp-0x50], eax
	mov dword [ebp-0x4c], 0x44480000
	mov eax, [edx+0x10]
	mov [ebp-0x48], eax
	mov eax, [edx+0x14]
	mov [ebp-0x44], eax
	mov eax, [edx+0x18]
	mov [ebp-0x40], eax
	mov eax, [edx+0xc]
	mov [ebp-0x3c], eax
	mov dword [ebp-0x28], 0x0
	mov eax, r_picmip_water
	mov edx, [eax]
	mov ecx, [edx+0xc]
	mov eax, ebx
	sar eax, cl
	mov esi, 0x4
	cmp eax, 0x3
	cmovle eax, esi
	mov [ebp-0x5c], eax
	mov ecx, [edx+0xc]
	sar ebx, cl
	cmp ebx, 0x3
	cmovle ebx, esi
	mov [ebp-0x58], ebx
	lea eax, [ebp-0x68]
	mov [esp], eax
	call _Z16R_LoadWaterSetupPK7water_t
	mov [edi+0x8], eax
_Z13Material_LoadPKci_1360:
	add dword [ebp-0x630], 0x1
	add dword [ebp-0x5c0], 0xc
	add dword [ebp-0x5bc], 0xc
	mov ecx, [ebp-0x6a0]
	movzx eax, word [ecx+0x30]
	cmp [ebp-0x630], eax
	jae _Z13Material_LoadPKci_1330
_Z13Material_LoadPKci_1340:
	mov esi, [ebp-0x6a0]
	mov edx, [ebp-0x5bc]
	add esi, [edx]
	mov ebx, [ebp-0x5c0]
	mov ecx, [ebp-0x69c]
	add ebx, [ecx+0x44]
	mov [esp], esi
	call _Z12R_HashStringPKc
	mov [ebx], eax
	mov ebx, [ebp-0x69c]
	mov edx, [ebx+0x44]
	movzx eax, byte [esi]
	mov edi, [ebp-0x5c0]
	mov [edx+edi+0x4], al
	mov edx, [ebx+0x44]
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	movzx eax, byte [ecx+esi-0x2]
	mov ecx, [ebp-0x5c0]
	mov [edx+ecx+0x5], al
	mov edx, [ebx+0x44]
	mov ebx, [ebp-0x5bc]
	movzx eax, byte [ebx+0x4]
	mov [edx+ecx+0x6], al
	mov esi, [ebp-0x69c]
	mov edx, [esi+0x44]
	movzx eax, byte [ebx+0x5]
	mov [edx+ecx+0x7], al
	mov edi, ecx
	add edi, [esi+0x44]
	cmp byte [edi+0x7], 0xb
	jz _Z13Material_LoadPKci_1350
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp-0x5bc]
	movzx eax, byte [edx+0x5]
	mov [esp+0x4], eax
	mov eax, [ebp-0x6a0]
	add eax, [edx+0x8]
	mov [esp], eax
	call _Z14Image_RegisterPKchi
	mov [edi+0x8], eax
	jmp _Z13Material_LoadPKci_1360
_Z13Material_LoadPKci_430:
	mov eax, [ebp-0x6a0]
	test byte [eax+0x22], 0x4
	jnz _Z13Material_LoadPKci_1370
	mov edx, [ebp-0x69c]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov ebx, [eax+0x14]
	test ebx, ebx
	jz _Z13Material_LoadPKci_1380
	test byte [edx+0x3d], 0x4
	jnz _Z13Material_LoadPKci_1380
	or byte [edx+0x4], 0x40
	mov ecx, [ebp-0x6a0]
	jmp _Z13Material_LoadPKci_1390
_Z13Material_LoadPKci_410:
	mov esi, [edx+0x20]
	test esi, esi
	jz _Z13Material_LoadPKci_1400
	mov eax, 0x2
	jmp _Z13Material_LoadPKci_1410
_Z13Material_LoadPKci_400:
	mov ebx, [ebp-0x610]
	shl ebx, 0x3
	mov [esp], ebx
	call _Z14Material_Alloci
	jmp _Z13Material_LoadPKci_1420
_Z13Material_LoadPKci_1400:
	mov eax, 0x3
	jmp _Z13Material_LoadPKci_1410
_Z13Material_LoadPKci_1380:
	mov ecx, [ebp-0x6a0]
	jmp _Z13Material_LoadPKci_1390
_Z13Material_LoadPKci_1370:
	mov ecx, eax
	jmp _Z13Material_LoadPKci_1390
_Z13Material_LoadPKci_40:
	mov ecx, [ebp+0x8]
	cmp byte [ecx], 0x24
	jz _Z13Material_LoadPKci_680
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_1error_couldnt_f
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x69c], 0x0
	jmp _Z13Material_LoadPKci_1260
_Z13Material_LoadPKci_210:
	movzx eax, ax
	shl eax, 0x5
	mov [esp], eax
	call _Z14Material_Alloci
	mov esi, [ebp-0x69c]
	mov [esi+0x48], eax
	mov eax, ebx
	add eax, [ebx+0x3c]
	cmp word [ebx+0x32], 0x0
	jz _Z13Material_LoadPKci_1430
	mov [ebp-0x5c4], eax
	mov dword [ebp-0x62c], 0x0
_Z13Material_LoadPKci_1440:
	mov edi, [ebp-0x6a0]
	mov eax, [ebp-0x5c4]
	add edi, [eax]
	mov ebx, [ebp-0x62c]
	shl ebx, 0x5
	mov esi, ebx
	mov edx, [ebp-0x69c]
	add esi, [edx+0x48]
	mov [esp], edi
	call _Z12R_HashStringPKc
	mov [esi], eax
	mov dword [esp+0x8], 0xc
	mov [esp+0x4], edi
	mov eax, ebx
	mov ecx, [ebp-0x69c]
	add eax, [ecx+0x48]
	add eax, 0x4
	mov [esp], eax
	call strncpy
	mov esi, [ebp-0x69c]
	add ebx, [esi+0x48]
	lea ecx, [ebx+0x10]
	mov edx, [ebp-0x5c4]
	add edx, 0x4
	mov edi, [ebp-0x5c4]
	mov eax, [edi+0x4]
	mov [ebx+0x10], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	add dword [ebp-0x62c], 0x1
	add edi, 0x14
	mov [ebp-0x5c4], edi
	mov edx, [ebp-0x6a0]
	movzx eax, word [edx+0x32]
	cmp eax, [ebp-0x62c]
	ja _Z13Material_LoadPKci_1440
	jmp _Z13Material_LoadPKci_1430
_Z13Material_LoadPKci_740:
	mov ecx, [ebp-0x5d8]
	mov ebx, [ecx]
_Z13Material_LoadPKci_810:
	mov eax, [ebx+0x40]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_material_s_uses_
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov dword [ebp-0x69c], 0x0
	jmp _Z13Material_LoadPKci_1260
_Z13Material_LoadPKci_730:
	add esi, s_lyrTechSetNames
	mov [ebp-0x684], esi
	jz _Z13Material_LoadPKci_1450
	cmp byte [ebp-0x6bd], 0x30
	jz _Z13Material_LoadPKci_1460
	lea ebx, [ebp-0x68]
	add ebx, [ebp-0x67c]
	mov esi, _cstring__
	jmp _Z13Material_LoadPKci_1470
_Z13Material_LoadPKci_1490:
	movzx eax, byte [esi]
	cmp al, 0x30
	movzx ecx, byte [ebp-0x6bd]
	cmovz eax, ecx
	mov [ebx], al
	add dword [ebp-0x67c], 0x1
	add esi, 0x1
	add ebx, 0x1
	cmp byte [edi+0x1], 0x0
	jz _Z13Material_LoadPKci_1480
_Z13Material_LoadPKci_1470:
	mov edi, esi
	cmp dword [ebp-0x67c], 0x3f
	jnz _Z13Material_LoadPKci_1490
	mov byte [ebp-0x29], 0x0
	mov [esp+0xc], esi
	lea edx, [ebp-0x68]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_technique_set_na
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z13Material_LoadPKci_1490
_Z13Material_LoadPKci_880:
	mov ecx, [ebp-0x644]
	mov byte [ecx+ebp-0x68], 0xff
	jmp _Z13Material_LoadPKci_1500
_Z13Material_LoadPKci_830:
	xor esi, esi
	mov byte [ebp-0x65e], 0xff
	mov byte [ebp-0x65d], 0x0
	mov byte [ebp-0x64f], 0x0
	mov dword [ebp-0x65c], 0x0
	mov byte [ebp-0x64e], 0x0
_Z13Material_LoadPKci_1550:
	mov edx, [ebp+esi*4-0x168]
	movzx eax, byte [edx+0x4]
	and [ebp-0x65e], al
	or [ebp-0x65d], al
	movzx ecx, byte [edx+0x3a]
	add [ebp-0x64f], cl
	movzx eax, byte [edx+0x3b]
	add [ebp-0x64e], al
	mov ebx, [edx+0x10]
	or [ebp-0x65c], ebx
	movzx ebx, al
	test al, al
	jz _Z13Material_LoadPKci_1510
	mov eax, [edx+0x48]
	mov edi, [ebp-0x64c]
	cmp [eax], edi
	jz _Z13Material_LoadPKci_1520
	lea edx, [eax+0x20]
	xor ecx, ecx
	jmp _Z13Material_LoadPKci_1530
_Z13Material_LoadPKci_1540:
	mov eax, [edx]
	add edx, 0x20
	cmp eax, [ebp-0x64c]
	jz _Z13Material_LoadPKci_1520
_Z13Material_LoadPKci_1530:
	add ecx, 0x1
	cmp ebx, ecx
	ja _Z13Material_LoadPKci_1540
_Z13Material_LoadPKci_1510:
	add byte [ebp-0x64e], 0x1
_Z13Material_LoadPKci_1520:
	add esi, 0x1
	cmp [ebp-0x5d4], esi
	jnz _Z13Material_LoadPKci_1550
	jmp _Z13Material_LoadPKci_1560
_Z13Material_LoadPKci_990:
	mov eax, [ebp-0x664]
	add eax, edi
	lea edx, [eax+0x50]
	jmp _Z13Material_LoadPKci_1570
_Z13Material_LoadPKci_980:
	mov eax, [ebp-0x69c]
	add eax, 0x50
	jmp _Z13Material_LoadPKci_1580
_Z13Material_LoadPKci_1090:
	movzx edx, byte [ebp-0x5e4]
	add dl, 0x30
	mov [ebp-0x639], dl
	jmp _Z13Material_LoadPKci_1590
_Z13Material_LoadPKci_1460:
	mov edi, [ebp-0x684]
	mov eax, [edi+0x4]
	test eax, eax
	jz _Z13Material_LoadPKci_1600
	cmp byte [eax], 0x0
	jz _Z13Material_LoadPKci_1480
	mov esi, eax
	lea ebx, [ebp-0x68]
	add ebx, [ebp-0x67c]
_Z13Material_LoadPKci_1620:
	mov edi, esi
	cmp dword [ebp-0x67c], 0x3f
	jnz _Z13Material_LoadPKci_1610
	mov byte [ebp-0x29], 0x0
	mov [esp+0xc], esi
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_technique_set_na
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z13Material_LoadPKci_1610:
	movzx eax, byte [esi]
	mov [ebx], al
	add dword [ebp-0x67c], 0x1
	add esi, 0x1
	add ebx, 0x1
	cmp byte [edi+0x1], 0x0
	jnz _Z13Material_LoadPKci_1620
_Z13Material_LoadPKci_1480:
	lea esi, [ebp-0x68]
	add esi, [ebp-0x67c]
	mov byte [esi], 0x0
_Z13Material_LoadPKci_1690:
	mov edi, [ebp-0x684]
	mov ebx, [edi+0xc]
	mov dword [esp+0x4], 0x6e
	mov [esp], ebx
	call strchr
	cmp eax, 0x1
	sbb dword [ebp-0x674], 0xffffffff
	cmp byte [ebx], 0x0
	jz _Z13Material_LoadPKci_1630
	mov esi, ebx
	lea ebx, [ebp-0x68]
	add ebx, [ebp-0x67c]
	jmp _Z13Material_LoadPKci_1640
_Z13Material_LoadPKci_1660:
	movzx eax, byte [esi]
	cmp al, 0x30
	movzx edx, byte [ebp-0x6bd]
	cmovz eax, edx
	mov [ebx], al
	add dword [ebp-0x67c], 0x1
	add esi, 0x1
	add ebx, 0x1
	cmp byte [edi+0x1], 0x0
	jz _Z13Material_LoadPKci_1650
_Z13Material_LoadPKci_1640:
	mov edi, esi
	cmp dword [ebp-0x67c], 0x3f
	jnz _Z13Material_LoadPKci_1660
	mov byte [ebp-0x29], 0x0
	mov [esp+0xc], esi
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_technique_set_na
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z13Material_LoadPKci_1660
_Z13Material_LoadPKci_1650:
	lea esi, [ebp-0x68]
	add esi, [ebp-0x67c]
_Z13Material_LoadPKci_1630:
	mov byte [esi], 0x0
	add dword [ebp-0x678], 0x1
	add dword [ebp-0x5d8], 0x4
	mov ecx, [ebp-0x678]
	cmp [ebp-0x5d4], ecx
	jnz _Z13Material_LoadPKci_1670
	jmp _Z13Material_LoadPKci_1680
_Z13Material_LoadPKci_1600:
	lea esi, [ebp-0x68]
	add esi, [ebp-0x67c]
	jmp _Z13Material_LoadPKci_1690
_Z13Material_LoadPKci_1450:
	mov esi, [ebp-0x5d8]
	mov ebx, [esi]
	jmp _Z13Material_LoadPKci_810
	nop


;Material_Sort()
_Z13Material_Sortv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13Material_Sortv_10
_Z13Material_Sortv_160:
	mov esi, rgp
	mov eax, [esi+0x2004]
	mov [ebp-0x28], eax
	lea eax, [esi+eax*4]
	mov [ebp-0x24], eax
	cmp eax, esi
	jz _Z13Material_Sortv_20
	mov ebx, eax
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz _Z13Material_Sortv_30
	xor edx, edx
_Z13Material_Sortv_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z13Material_Sortv_40
	lea eax, [edx+edx]
_Z13Material_Sortv_170:
	mov dword [esp+0xc], _Z16Material_ComparePK8MaterialS1_
	mov [esp+0x8], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1_
	cmp ebx, 0x43
	jle _Z13Material_Sortv_50
	mov dword [esp+0x8], _Z16Material_ComparePK8MaterialS1_
	lea ebx, [esi+0x40]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0_
	cmp [ebp-0x24], ebx
	jz _Z13Material_Sortv_20
	mov [ebp-0x20], ebx
	mov eax, ebx
_Z13Material_Sortv_80:
	mov edi, [eax]
	mov ebx, eax
	sub ebx, 0x4
	mov esi, eax
	jmp _Z13Material_Sortv_60
_Z13Material_Sortv_70:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_Z13Material_Sortv_60:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16Material_ComparePK8MaterialS1_
	test al, al
	jnz _Z13Material_Sortv_70
	mov [esi], edi
	add dword [ebp-0x20], 0x4
	mov eax, [ebp-0x20]
	cmp [ebp-0x24], eax
	jz _Z13Material_Sortv_20
	mov eax, [ebp-0x20]
	jmp _Z13Material_Sortv_80
_Z13Material_Sortv_50:
	mov dword [esp+0x8], _Z16Material_ComparePK8MaterialS1_
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, rgp
	mov [esp], eax
	call _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0_
_Z13Material_Sortv_20:
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z13Material_Sortv_90
	mov eax, rgp
	mov [ebp-0x1c], eax
	xor esi, esi
	xor edi, edi
	jmp _Z13Material_Sortv_100
_Z13Material_Sortv_130:
	test byte [edx+0x4], 0x4
	jz _Z13Material_Sortv_110
	xor eax, eax
_Z13Material_Sortv_140:
	mov edx, eax
	and dl, 0x3
	movzx eax, byte [ebx+0x5]
	and al, 0xfc
	or al, dl
	mov [ebx+0x5], al
	movzx eax, byte [ecx+0x4]
	shr eax, 0x6
	and eax, 0x1
	mov ecx, esi
	and ecx, 0x7
	shl cl, 0x5
	and al, 0x1f
	or al, cl
	mov [ebx+0x3], al
	mov eax, esi
	shrd eax, edi, 0x3
	mov [ebx+0x4], al
	add dword [ebp-0x1c], 0x4
	add esi, 0x1
	adc edi, 0x0
	cmp [ebp-0x28], esi
	jbe _Z13Material_Sortv_90
	mov eax, [ebp-0x1c]
_Z13Material_Sortv_100:
	mov ecx, [eax]
	lea ebx, [ecx+0x8]
	mov dword [ecx+0x8], 0x0
	mov dword [ecx+0xc], 0x0
	movzx edx, byte [ecx+0x5]
	and edx, 0x3f
	shl edx, 0x6
	movzx eax, word [ebx+0x6]
	and ax, 0xf03f
	or eax, edx
	mov [ebx+0x6], ax
	mov eax, [ecx+0x40]
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z13Material_Sortv_120
	test byte [ecx+0x3d], 0x4
	jz _Z13Material_Sortv_130
_Z13Material_Sortv_150:
	mov eax, 0x3
	jmp _Z13Material_Sortv_140
_Z13Material_Sortv_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Material_Sortv_110:
	mov eax, 0x1
	jmp _Z13Material_Sortv_140
_Z13Material_Sortv_120:
	mov eax, [eax+0x10]
	test eax, eax
	jz _Z13Material_Sortv_150
	mov eax, 0x2
	jmp _Z13Material_Sortv_140
_Z13Material_Sortv_10:
	mov ebx, rgp
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], ebx
	mov dword [esp], 0x4
	call _Z21DB_GetAllXAssetOfType10XAssetTypeP12XAssetHeaderi
	mov [ebx+0x2004], eax
	jmp _Z13Material_Sortv_160
_Z13Material_Sortv_30:
	and eax, 0xffffff00
	jmp _Z13Material_Sortv_170


;Material_FreeAll()
_Z16Material_FreeAllv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [mtlLoadGlob+0xc8c], 0x0
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0xd94
	call memset
	mov dword [mtlLoadGlob+0xd90], 0x0
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0x8fa0
	call memset
	mov dword [mtlLoadGlob+0x8f9c], 0x0
	call _Z29Material_FreeAllTechniqueSetsv
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16Material_FreeAllv_10
	leave
	ret
_Z16Material_FreeAllv_10:
	mov dword [esp+0x8], 0x8000
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0x9024
	call memset
	mov dword [mtlLoadGlob+0x9020], 0x0
	mov dword [esp+0x8], 0xc80
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0xc
	call memset
	mov dword [mtlLoadGlob+0x8], 0x0
	mov dword [esp+0x8], 0x4000
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0xf98
	call memset
	mov dword [mtlLoadGlob+0xf94], 0x0
	mov dword [esp+0x8], 0x4000
	mov dword [esp+0x4], 0x0
	mov dword [esp], mtlLoadGlob+0x4f9c
	call memset
	mov dword [mtlLoadGlob+0x4f98], 0x0
	leave
	ret


;Material_GetInfo(Material*, MaterialInfo*)
_Z16Material_GetInfoP8MaterialP12MaterialInfo:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
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
	pop ebp
	ret
	nop
	add [eax], al


;Material_LoadTechniqueSet(char const*, GfxRenderer)
_Z25Material_LoadTechniqueSetPKc11GfxRenderer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3bc
	mov esi, [ebp+0x8]
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_techsetsstechset
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x34c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x34c]
	mov [esp], edx
	call FS_ReadFile
	test eax, eax
	js _Z25Material_LoadTechniqueSetPKc11GfxRenderer_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	lea eax, [ebx+0x94]
	mov [esp], eax
	call _Z14Material_Alloci
	mov [ebp-0x374], eax
	add eax, 0x94
	mov edi, [ebp-0x374]
	mov [edi], eax
	mov byte [edi+0x4], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov [edi+0x8], edi
	call _Z35Material_DirtyTechniqueSetOverridesv
	mov eax, [ebp-0x2c]
	mov [ebp-0x24], eax
	lea eax, [ebp-0x34c]
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], _cstring_1error_
	call _Z26Com_SetScriptWarningPrefixPKc
	mov dword [esp], 0x0
	call _Z21Com_SetSpaceDelimitedi
	mov dword [esp], 0x1
	call _Z23Com_SetKeepStringQuotesi
	mov dword [ebp-0x370], 0x0
	xor esi, esi
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_180:
	lea edx, [ebp-0x24]
	mov [esp], edx
	call _Z9Com_ParsePPKc
	mov [ebp-0x378], eax
	movzx eax, byte [eax]
	test al, al
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_20
	cmp al, 0x22
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_30
	mov eax, [ebp-0x370]
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_40
	mov eax, esi
	test al, al
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_50
	mov eax, [ebp+0xc]
	shl eax, 0xe
	add eax, mtlLoadGlob+0x9024
	mov [ebp-0x36c], eax
	mov edx, [ebp-0x378]
	mov [esp], edx
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0xfff
	mov ecx, [ebp-0x36c]
	mov eax, [ecx+ebx*4]
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_60
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_80:
	mov esi, [ebp-0x378]
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_70
	add ebx, 0x1
	and ebx, 0xfff
	mov edi, [ebp-0x36c]
	mov eax, [edi+ebx*4]
	test eax, eax
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_80
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_60:
	mov eax, [ebp-0x378]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_techniquesstech
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x24c]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	test eax, eax
	js _Z25Material_LoadTechniqueSetPKc11GfxRenderer_90
	mov eax, [ebp-0x20]
	mov [ebp-0x28], eax
	mov [esp], ebx
	call _Z21Com_BeginParseSessionPKc
	mov dword [esp], _cstring_1error_
	call _Z26Com_SetScriptWarningPrefixPKc
	mov dword [esp], 0x0
	call _Z21Com_SetSpaceDelimitedi
	mov word [ebp-0x1a], 0x0
	xor ebx, ebx
	lea edi, [ebp-0x28]
	mov dword [ebp-0x384], 0x0
	lea esi, [ebp-0x3c]
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_140:
	mov [ebp-0x35a], bx
	mov [esp], edi
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_100
	cmp dl, 0x7b
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_110
	mov [esp+0x4], esi
	lea eax, [ebp-0xc4]
	add eax, [ebp-0x384]
	mov [esp], eax
	lea ecx, [ebp-0x1a]
	mov edx, [ebp+0xc]
	mov eax, edi
	call _Z17Material_LoadPassPPKc11GfxRendererPtP12MaterialPassPP16MaterialStateMap
	test al, al
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_6
	mov [esp], edi
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_130
	add word [ebp-0x35a], 0x1
	add ebx, 0x1
	add esi, 0x4
	add dword [ebp-0x384], 0x14
	cmp ebx, 0x4
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_140
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_100:
	xor ebx, ebx
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_360:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FreeFile
	test bl, bl
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_150
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_170:
	mov dword [ebp-0x374], 0x0
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_20:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call FS_FreeFile
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_400:
	mov eax, [ebp-0x374]
	add esp, 0x3bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_70:
	mov eax, [ebp+0xc]
	shl eax, 0xc
	add eax, ebx
	mov eax, [eax*4+mtlLoadGlob+0x9024]
	mov [ebp-0x390], eax
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_60
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_320:
	mov edi, [ebp-0x370]
	test edi, edi
	jle _Z25Material_LoadTechniqueSetPKc11GfxRenderer_50
	xor edx, edx
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_160:
	mov eax, [ebp+edx*4-0x14c]
	mov edi, [ebp-0x390]
	mov esi, [ebp-0x374]
	mov [esi+eax*4+0xc], edi
	add edx, 0x1
	cmp [ebp-0x370], edx
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_160
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_50:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_170
	mov dword [ebp-0x370], 0x0
	xor esi, esi
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_180
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_30:
	cmp dword [ebp-0x370], 0x22
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_190
	lea ebx, [ebp-0xc4]
	mov dword [esp+0x8], 0x88
	mov dword [esp+0x4], _ZZ29Material_TechniqueTypeForNamePKcE5C.439
	mov [esp], ebx
	call memcpy
	xor ebx, ebx
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_200
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_220:
	add ebx, 0x1
	cmp ebx, 0x22
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_210
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_200:
	mov eax, [ebp+ebx*4-0xc4]
	mov [esp+0x4], eax
	mov edi, [ebp-0x378]
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_220
	mov eax, ebx
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_250:
	mov edx, [ebp-0x370]
	mov [ebp+edx*4-0x14c], eax
	cmp eax, 0x22
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_230
	cmp byte [eax+g_useTechnique], 0x0
	mov eax, 0x1
	cmovnz esi, eax
	add dword [ebp-0x370], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_2
	lea ebx, [ebp-0x24]
	mov [esp], ebx
	call _Z14Com_MatchTokenPPKcS0_i
	test eax, eax
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_180
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_170
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_150:
	cmp word [ebp-0x35a], 0x0
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_240
	mov ecx, [ebp-0x378]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_technique_s_has_
	call _Z15Com_ScriptErrorPKcz
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_170
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_210:
	mov eax, 0x22
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_250
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_90:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_couldnt_open_tec
	call _Z15Com_ScriptErrorPKcz
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_170
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_240:
	movzx esi, word [ebp-0x35a]
	mov [ebp-0x368], esi
	shl esi, 0x2
	mov [ebp-0x360], esi
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x378]
	mov eax, ebx
	repne scasb
	mov ebx, ecx
	not ebx
	mov eax, esi
	add eax, [ebp-0x368]
	shl eax, 0x2
	mov [ebp-0x37c], eax
	lea eax, [eax+esi+0x8]
	lea eax, [ebx+eax]
	mov [esp], eax
	call _Z14Material_Alloci
	mov [ebp-0x390], eax
	mov ecx, [ebp-0x37c]
	lea ecx, [eax+ecx+0x8]
	mov [ebp-0x364], ecx
	mov eax, ecx
	add eax, esi
	mov esi, [ebp-0x390]
	mov [esi], eax
	mov [esp+0x8], ebx
	mov edi, [ebp-0x378]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	movzx eax, word [ebp-0x1a]
	mov [ebp-0x38a], ax
	mov [esi+0x4], ax
	mov edx, [esi]
	mov dword [ebp-0x380], _cstring_zprepass
	mov ebx, 0x9
	cld
	mov esi, edx
	mov edi, _cstring_zprepass
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_260
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_260:
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_270
	mov eax, [ebp-0x368]
	test eax, eax
	jg _Z25Material_LoadTechniqueSetPKc11GfxRenderer_280
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_350:
	lea ebx, [ebp-0xc4]
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_340:
	movzx eax, word [ebp-0x35a]
	mov edi, [ebp-0x390]
	mov [edi+0x6], ax
	mov eax, edi
	add eax, 0x8
	mov edx, [ebp-0x37c]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	lea eax, [ebp-0x3c]
	mov ecx, [ebp-0x360]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov ebx, [ebp-0x364]
	mov [esp], ebx
	call memcpy
	cmp dword [mtlLoadGlob+0x9020], 0xfff
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_290
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_390:
	mov esi, [ebp-0x378]
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0xfff
	mov edi, [ebp-0x36c]
	mov eax, [edi+ebx*4]
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_300
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_310:
	mov edx, [ebp-0x378]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_300
	add ebx, 0x1
	and ebx, 0xfff
	mov ecx, [ebp-0x36c]
	mov eax, [ecx+ebx*4]
	test eax, eax
	jnz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_310
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_300:
	add dword [mtlLoadGlob+0x9020], 0x1
	mov eax, [ebp+0xc]
	shl eax, 0xc
	add eax, ebx
	mov ebx, [ebp-0x390]
	mov [eax*4+mtlLoadGlob+0x9024], ebx
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_320
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_280:
	mov eax, [ebp-0xc4]
	cmp byte [eax+0x1], 0x0
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_330
	lea ebx, [ebp-0xc4]
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_380:
	mov esi, [ebp-0x390]
	or word [esi+0x4], 0x8
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_340
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_270:
	or word [ebp-0x38a], 0x4
	movzx ebx, word [ebp-0x38a]
	mov ecx, [ebp-0x390]
	mov [ecx+0x4], bx
	mov eax, [ebp-0x368]
	test eax, eax
	jg _Z25Material_LoadTechniqueSetPKc11GfxRenderer_280
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_350
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_110:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_expected__but_fo
	call _Z15Com_ScriptErrorPKcz
	mov ebx, 0x1
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_360
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_120:
	mov edx, [ebp-0x378]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_error_loading_pa
	call _Z15Com_ScriptErrorPKcz
	mov ebx, 0x1
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_360
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_330:
	xor ecx, ecx
	lea ebx, [ebp-0xc4]
	mov edx, ebx
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_370:
	add ecx, 0x1
	cmp [ebp-0x368], ecx
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_340
	mov eax, [edx+0x14]
	add edx, 0x14
	cmp byte [eax+0x1], 0x0
	jz _Z25Material_LoadTechniqueSetPKc11GfxRenderer_370
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_380
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_130:
	mov ebx, 0x1
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_360
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_40:
	mov esi, [ebp-0x378]
	mov [esp+0x4], esi
	mov dword [esp], _cstring_unknown_techniqu
	call _Z15Com_ScriptErrorPKcz
	mov dword [ebp-0x374], 0x0
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_20
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_290:
	mov dword [esp+0x8], 0xfff
	mov dword [esp+0x4], _cstring_more_than_i_tech
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_390
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_10:
	lea ecx, [ebp-0x34c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_1error_couldnt_o
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x374], 0x0
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_400
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_190:
	mov dword [esp], _cstring_too_many_labels_
	call _Z15Com_ScriptErrorPKcz
	mov dword [ebp-0x374], 0x0
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_20
_Z25Material_LoadTechniqueSetPKc11GfxRenderer_230:
	mov ecx, [ebp-0x378]
	mov [esp+0x4], ecx
	mov dword [esp], _cstring_unknown_techniqu
	call _Z15Com_ScriptErrorPKcz
	mov dword [ebp-0x374], 0x0
	jmp _Z25Material_LoadTechniqueSetPKc11GfxRenderer_20
	add [eax], al


;Material_PreLoadAllShaderText()
_Z29Material_PreLoadAllShaderTextv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov dword [esp+0x10], 0x16
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hlsl
	mov dword [esp], _cstring_shaderslib
	call FS_ListFiles
	mov [ebp-0x98], eax
	mov eax, [ebp-0x1c]
	mov [mtlLoadGlob], eax
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov [mtlLoadGlob+0x4], eax
	mov edx, [ebp-0x1c]
	mov [ebp-0x94], edx
	test edx, edx
	jg _Z29Material_PreLoadAllShaderTextv_10
	mov edx, eax
_Z29Material_PreLoadAllShaderTextv_270:
	mov [ebp-0x9c], edx
	mov eax, [mtlLoadGlob]
	lea eax, [eax+eax*2]
	lea eax, [edx+eax*4]
	mov [ebp-0x88], eax
	cmp edx, eax
	jz _Z29Material_PreLoadAllShaderTextv_20
	mov ebx, eax
	sub ebx, edx
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
	jz _Z29Material_PreLoadAllShaderTextv_30
	xor edx, edx
_Z29Material_PreLoadAllShaderTextv_40:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z29Material_PreLoadAllShaderTextv_40
	lea eax, [edx+edx]
_Z29Material_PreLoadAllShaderTextv_280:
	mov dword [esp+0xc], _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	mov [esp+0x8], eax
	mov edi, [ebp-0x88]
	mov [esp+0x4], edi
	mov eax, [ebp-0x9c]
	mov [esp], eax
	call _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1_
	cmp ebx, 0xcb
	jg _Z29Material_PreLoadAllShaderTextv_50
	mov edi, [ebp-0x9c]
	add edi, 0xc
	cmp [ebp-0x88], edi
	jz _Z29Material_PreLoadAllShaderTextv_20
_Z29Material_PreLoadAllShaderTextv_90:
	mov eax, [edi]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x4]
	mov [ebp-0x28], eax
	mov eax, [edi+0x8]
	mov [ebp-0x24], eax
	mov ebx, [ebp-0x9c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	test al, al
	jz _Z29Material_PreLoadAllShaderTextv_60
	lea edx, [edi+0xc]
	mov [ebp-0x80], edx
	mov ecx, edi
	sub ecx, ebx
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
	jle _Z29Material_PreLoadAllShaderTextv_70
	mov ecx, edi
	mov edx, [ebp-0x80]
	xor ebx, ebx
_Z29Material_PreLoadAllShaderTextv_80:
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
	jnz _Z29Material_PreLoadAllShaderTextv_80
_Z29Material_PreLoadAllShaderTextv_70:
	mov eax, [ebp-0x2c]
	mov ebx, [ebp-0x9c]
	mov [ebx], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x8], eax
	mov edx, [ebp-0x80]
_Z29Material_PreLoadAllShaderTextv_240:
	cmp [ebp-0x88], edx
	jz _Z29Material_PreLoadAllShaderTextv_20
	mov edi, edx
	jmp _Z29Material_PreLoadAllShaderTextv_90
_Z29Material_PreLoadAllShaderTextv_170:
	mov ebx, [ebp-0x8c]
_Z29Material_PreLoadAllShaderTextv_290:
	cmp [ebp-0x88], ebx
	jz _Z29Material_PreLoadAllShaderTextv_20
_Z29Material_PreLoadAllShaderTextv_120:
	mov edi, [ebp-0x8c]
	mov eax, [edi+0x4]
	mov ecx, [edi]
	mov edx, [edi+0x8]
	mov [ebp-0x24], edx
	mov [ebp-0x28], eax
	mov [ebp-0x2c], ecx
	mov ebx, edi
	sub ebx, 0xc
	mov esi, edi
	jmp _Z29Material_PreLoadAllShaderTextv_100
_Z29Material_PreLoadAllShaderTextv_110:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
_Z29Material_PreLoadAllShaderTextv_100:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	test al, al
	jnz _Z29Material_PreLoadAllShaderTextv_110
	mov eax, [ebp-0x2c]
	mov [esi], eax
	mov eax, [ebp-0x28]
	mov [esi+0x4], eax
	mov eax, [ebp-0x24]
	mov [esi+0x8], eax
	add dword [ebp-0x8c], 0xc
	mov edx, [ebp-0x8c]
	cmp [ebp-0x88], edx
	jnz _Z29Material_PreLoadAllShaderTextv_120
_Z29Material_PreLoadAllShaderTextv_20:
	mov dword [esp+0x4], 0x16
	mov ebx, [ebp-0x98]
	mov [esp], ebx
	call FS_FreeFileList
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Material_PreLoadAllShaderTextv_50:
	mov edx, [ebp-0x9c]
	add edx, 0xc0
	mov [ebp-0x8c], edx
	mov edi, [ebp-0x9c]
	add edi, 0xc
	cmp edx, edi
	jz _Z29Material_PreLoadAllShaderTextv_130
_Z29Material_PreLoadAllShaderTextv_180:
	mov eax, [edi]
	mov [ebp-0x6c], eax
	mov eax, [edi+0x4]
	mov [ebp-0x68], eax
	mov eax, [edi+0x8]
	mov [ebp-0x64], eax
	mov ebx, [ebp-0x9c]
	mov [esp+0x4], ebx
	lea eax, [ebp-0x6c]
	mov [esp], eax
	call _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	test al, al
	jz _Z29Material_PreLoadAllShaderTextv_140
	lea edx, [edi+0xc]
	mov [ebp-0x7c], edx
	mov ecx, edi
	sub ecx, ebx
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
	jle _Z29Material_PreLoadAllShaderTextv_150
	mov ecx, edi
	mov edx, [ebp-0x7c]
	xor ebx, ebx
_Z29Material_PreLoadAllShaderTextv_160:
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0xc
	sub edx, 0xc
	cmp esi, ebx
	jnz _Z29Material_PreLoadAllShaderTextv_160
_Z29Material_PreLoadAllShaderTextv_150:
	mov eax, [ebp-0x6c]
	mov ebx, [ebp-0x9c]
	mov [ebx], eax
	mov eax, [ebp-0x68]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x64]
	mov [ebx+0x8], eax
	mov edx, [ebp-0x7c]
_Z29Material_PreLoadAllShaderTextv_210:
	cmp [ebp-0x8c], edx
	jz _Z29Material_PreLoadAllShaderTextv_170
	mov edi, edx
	jmp _Z29Material_PreLoadAllShaderTextv_180
_Z29Material_PreLoadAllShaderTextv_140:
	mov eax, [ebp-0x64]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x68]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x6c]
	mov [ebp-0x2c], eax
	lea ebx, [edi-0xc]
	mov esi, edi
	jmp _Z29Material_PreLoadAllShaderTextv_190
_Z29Material_PreLoadAllShaderTextv_200:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
_Z29Material_PreLoadAllShaderTextv_190:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	test al, al
	jnz _Z29Material_PreLoadAllShaderTextv_200
	mov eax, [ebp-0x2c]
	mov [esi], eax
	mov eax, [ebp-0x28]
	mov [esi+0x4], eax
	mov eax, [ebp-0x24]
	mov [esi+0x8], eax
	add edi, 0xc
	mov [ebp-0x7c], edi
	mov edx, edi
	jmp _Z29Material_PreLoadAllShaderTextv_210
_Z29Material_PreLoadAllShaderTextv_60:
	mov eax, [ebp-0x24]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x68], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x6c], eax
	lea ebx, [edi-0xc]
	mov esi, edi
	jmp _Z29Material_PreLoadAllShaderTextv_220
_Z29Material_PreLoadAllShaderTextv_230:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov esi, ebx
	sub ebx, 0xc
_Z29Material_PreLoadAllShaderTextv_220:
	mov [esp+0x4], ebx
	lea eax, [ebp-0x6c]
	mov [esp], eax
	call _Z29Material_CachedShaderTextLessRK19GfxCachedShaderTextS1_
	test al, al
	jnz _Z29Material_PreLoadAllShaderTextv_230
	mov eax, [ebp-0x6c]
	mov [esi], eax
	mov eax, [ebp-0x68]
	mov [esi+0x4], eax
	mov eax, [ebp-0x64]
	mov [esi+0x8], eax
	add edi, 0xc
	mov [ebp-0x80], edi
	mov edx, edi
	jmp _Z29Material_PreLoadAllShaderTextv_240
_Z29Material_PreLoadAllShaderTextv_10:
	mov [ebp-0x84], eax
	mov dword [ebp-0x90], 0x0
	mov ebx, [ebp-0x90]
	jmp _Z29Material_PreLoadAllShaderTextv_250
_Z29Material_PreLoadAllShaderTextv_260:
	mov ebx, eax
_Z29Material_PreLoadAllShaderTextv_250:
	mov edi, [ebp-0x98]
	mov ebx, [edi+ebx*4]
	mov [ebp-0xac], ebx
	mov [esp+0x10], ebx
	mov dword [esp+0xc], _cstring_lib
	mov dword [esp+0x8], _cstring_shadersss
	mov dword [esp+0x4], 0x40
	lea edi, [ebp-0x6c]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16FS_FOpenFileReadPKcPi
	mov esi, eax
	mov dword [esp+0x4], 0x1
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+esi+0x5]
	mov [esp], ecx
	call _Z23Hunk_AllocAlignInternalii
	mov ebx, eax
	mov eax, [ebp-0x84]
	mov [eax], ebx
	mov edx, [ebp-0xac]
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_lib
	mov dword [esp+0x4], _cstring_ss
	mov [esp], ebx
	call sprintf
	add ebx, eax
	lea edx, [ebx+0x1]
	mov edi, [ebp-0x84]
	mov [edi+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov byte [ebx+esi+0x1], 0x0
	mov [edi+0x8], esi
	add dword [ebp-0x90], 0x1
	add edi, 0xc
	mov [ebp-0x84], edi
	mov eax, [ebp-0x90]
	cmp [ebp-0x94], eax
	jnz _Z29Material_PreLoadAllShaderTextv_260
	mov edx, [mtlLoadGlob+0x4]
	jmp _Z29Material_PreLoadAllShaderTextv_270
_Z29Material_PreLoadAllShaderTextv_30:
	and eax, 0xffffff00
	jmp _Z29Material_PreLoadAllShaderTextv_280
_Z29Material_PreLoadAllShaderTextv_130:
	mov ebx, edx
	jmp _Z29Material_PreLoadAllShaderTextv_290
	nop


;void std::__adjust_heap<GfxCachedShaderText*, int, GfxCachedShaderText, unsigned char (*)(GfxCachedShaderText const&, GfxCachedShaderText const&)>(GfxCachedShaderText*, int, int, GfxCachedShaderText, unsigned char (*)(GfxCachedShaderText const&, GfxCachedShaderText const&))
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x1c]
	mov [ebp-0x30], eax
	mov edx, [ebp+0x18]
	mov [ebp-0x34], edx
	mov ecx, [ebp+0x14]
	mov [ebp-0x38], ecx
	mov eax, [ebp+0xc]
	add eax, eax
	lea ebx, [eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10
	add eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, [ebp+0xc]
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100:
	mov eax, [ebp-0x30]
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x34]
	mov [ebp-0x20], edx
	mov ecx, [ebp-0x38]
	mov [ebp-0x24], ecx
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30
	mov eax, ecx
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__110:
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
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50:
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__30:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	lea ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jz _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40
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
	jg _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__50
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
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__10:
	mov ecx, [ebp+0xc]
	mov [ebp-0x2c], ecx
	mov edi, ebx
	jmp _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80:
	lea edi, [ebx-0x1]
	lea eax, [edi+edi*2]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+eax*4]
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90:
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
	jle _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__70
	mov [ebp-0x2c], edi
	mov edi, ebx
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__60:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	lea eax, [esi-0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call dword [ebp+0x20]
	test al, al
	jnz _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__90
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__20:
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
	jmp _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__100
_ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__40:
	lea eax, [edi+edi*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov eax, [ebp-0x24]
	jmp _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2__110


;void std::__adjust_heap<Material**, int, Material*, unsigned char (*)(Material const*, Material const*)>(Material**, int, int, Material*, unsigned char (*)(Material const*, Material const*))
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, eax
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__20
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__100:
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__30
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__40:
	mov eax, [ebp+0x14]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__50:
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+edi*4], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__40
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__10:
	mov [ebp-0x1c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__60
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__80:
	lea edi, [ebx-0x1]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__90:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__70
	mov [ebp-0x1c], edi
	mov edi, ebx
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__60:
	lea eax, [ebx*4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+eax-0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test al, al
	jnz _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__90
_ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__20:
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	mov [esi], eax
	mov edi, edx
	sub edi, 0x1
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2__100


;void std::__insertion_sort<Material**, unsigned char (*)(Material const*, Material const*)>(Material**, Material**, unsigned char (*)(Material const*, Material const*))
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__10
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp eax, edx
	jz _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__10
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__50:
	mov edi, [edx]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__20
	mov ebx, [ebp-0x1c]
	sub ebx, 0x4
	mov esi, [ebp-0x1c]
	jmp _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__30
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test al, al
	jnz _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__40
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x1c]
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__60:
	cmp [ebp+0xc], edx
	jnz _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__50
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__20:
	mov ebx, [ebp-0x1c]
	add ebx, 0x4
	mov eax, [ebp-0x1c]
	sub eax, [ebp+0x8]
	and eax, 0xfffffffc
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov edx, ebx
	sub edx, eax
	mov [esp], edx
	call memmove
	mov eax, [ebp+0x8]
	mov [eax], edi
	mov [ebp-0x1c], ebx
	mov edx, ebx
	jmp _ZSt16__insertion_sortIPP8MaterialPFhPKS0_S4_EEvT_S7_T0__60
	nop


;void std::__introsort_loop<GfxCachedShaderText*, int, unsigned char (*)(GfxCachedShaderText const&, GfxCachedShaderText const&)>(GfxCachedShaderText*, GfxCachedShaderText*, int, unsigned char (*)(GfxCachedShaderText const&, GfxCachedShaderText const&))
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1_:
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0xcb
	jle _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__10
	mov edx, [ebp+0x10]
	test edx, edx
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__20
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__150:
	cmp eax, 0x17
	jle _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__10
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
	mov [ebp-0x5c], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0x6c], eax
	lea eax, [eax+eax*2]
	mov edx, [ebp+0x8]
	lea ebx, [edx+eax*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__30
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__30:
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
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x6c]
	sub eax, edi
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub ebx, 0xc
	cmp edi, [ebp-0x6c]
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__40
	mov edi, [ebp+0xc]
	mov esi, edi
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0x8]
	mov [ebp-0x54], eax
	sub eax, 0xc
	mov [ebp-0x58], eax
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__50:
	mov ebx, [esi]
	mov ecx, [esi-0x4]
	mov edx, [esi-0x8]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [edi-0xc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [edi-0x8], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x8]
	mov [edi-0x4], eax
	mov [ebp-0x1c], ebx
	mov [ebp-0x20], ecx
	mov [ebp-0x24], edx
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov [esp+0x14], ebx
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
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIP19GfxCachedShaderTextiS0_PFhRKS0_S3_EEvT_T0_S7_T1_T2_
	sub edi, 0xc
	sub esi, 0xc
	sub dword [ebp-0x58], 0xc
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	add eax, [ebp-0x54]
	mov edx, [ebp-0x58]
	lea eax, [eax+edx+0xc]
	cmp eax, 0x17
	jg _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__50
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__10:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__20:
	mov esi, [ebp+0x10]
	mov [ebp-0x4c], esi
	mov dword [ebp-0x50], 0x0
	mov edi, [ebp+0xc]
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__140:
	sub dword [ebp-0x4c], 0x1
	mov esi, [ebp+0x8]
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
	lea ebx, [esi+eax*4]
	sub edi, 0xc
	mov [esp+0x4], ebx
	mov [esp], esi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__60
	mov [esp+0x4], edi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__70
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__160:
	mov esi, ebx
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__120:
	mov eax, [esi+0x4]
	mov ecx, [esi]
	mov edx, [esi+0x8]
	mov [ebp-0x34], edx
	mov [ebp-0x38], eax
	mov [ebp-0x3c], ecx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__110:
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__80
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__90:
	sub esi, 0xc
	mov [esp+0x4], esi
	lea edx, [ebp-0x3c]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__90
	cmp edi, esi
	jae _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__100
	mov edx, [edi+0x8]
	mov ecx, [edi+0x4]
	mov ebx, [edi]
	mov eax, [esi]
	mov [edi], eax
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	mov eax, [esi+0x8]
	mov [edi+0x8], eax
	mov [esi+0x8], edx
	mov [esi+0x4], ecx
	mov [esi], ebx
	add edi, 0xc
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__90
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__80:
	add edi, 0xc
	jmp _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__110
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__70:
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov esi, edi
	jmp _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__120
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__100:
	mov esi, [ebp+0x14]
	mov [esp+0xc], esi
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__130
	mov eax, edi
	sub eax, [ebp+0x8]
	cmp eax, 0xcb
	jle _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__10
	add dword [ebp-0x50], 0x1
	mov [ebp+0xc], edi
	mov edx, [ebp-0x50]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__140
	jmp _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__150
_ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__60:
	mov [esp+0x4], edi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__120
	mov [esp+0x4], edi
	mov [esp], ebx
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__160
	mov esi, edi
	jmp _ZSt16__introsort_loopIP19GfxCachedShaderTextiPFhRKS0_S3_EEvT_S6_T0_T1__120
	nop


;void std::__introsort_loop<Material**, int, unsigned char (*)(Material const*, Material const*)>(Material**, Material**, int, unsigned char (*)(Material const*, Material const*))
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1_:
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__10
	mov esi, [ebp+0x10]
	test esi, esi
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__20
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__150:
	cmp eax, 0x7
	jle _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__10
	sar eax, 0x2
	mov [ebp-0x24], eax
	mov edx, eax
	sub edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+esi*4]
	xor edi, edi
	jmp _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__30
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__30:
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov eax, [ebx]
	mov [esp+0xc], eax
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, esi
	sub eax, edi
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2_
	sub ebx, 0x4
	cmp edi, esi
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__40
	mov ecx, [ebp+0xc]
	mov edi, ecx
	sub edi, [ebp+0x8]
	mov [ebp-0x2c], edi
	mov esi, edi
	sub esi, 0x4
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__50:
	lea ebx, [ecx-0x4]
	mov edx, [ecx-0x4]
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [ecx-0x4], eax
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov eax, esi
	sar eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _ZSt13__adjust_heapIPP8MaterialiS1_PFhPKS0_S4_EEvT_T0_S8_T1_T2_
	mov ecx, ebx
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0xc]
	add eax, [ebp-0x2c]
	lea eax, [eax+esi+0x4]
	cmp eax, 0x7
	jg _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__50
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__140:
	sub dword [ebp-0x1c], 0x1
	mov edx, eax
	sar edx, 0x2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov edi, [ebp+0x8]
	lea ebx, [edi+eax*4]
	sub esi, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__60
	mov edx, [ebp+0xc]
	mov eax, [edx-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__70
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__170:
	mov esi, ebx
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__120:
	mov edi, [esi]
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__110:
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__80
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__90:
	sub ebx, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__90
	cmp esi, ebx
	jae _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__100
	mov edx, [esi]
	mov eax, [ebx]
	mov [esi], eax
	mov [ebx], edx
	add esi, 0x4
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__90
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__80:
	add esi, 0x4
	jmp _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__110
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__70:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__120
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__160:
	mov esi, [ebp+0x8]
	jmp _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__120
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__100:
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__10
	add dword [ebp-0x20], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x20]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__140
	jmp _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__150
_ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__60:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__160
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test al, al
	jnz _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__120
	jmp _ZSt16__introsort_loopIPP8MaterialiPFhPKS0_S4_EEvT_S7_T0_T1__170


;Initialized global or static variables of r_material_load_obj:
SECTION .data
g_materialTypeInfo: dd _cstring_null, _cstring_null, 0x0, _cstring_m, _cstring_m_, 0x2, _cstring_mc, _cstring_mc_, 0x3, _cstring_w, _cstring_w_, 0x2, _cstring_wc, _cstring_wc_, 0x3, 0x0


;Initialized constant data of r_material_load_obj:
SECTION .rdata
s_worldVertFormatForLayerCount: dd 0x0, 0x1, 0x3, 0x6, 0x9, 0x0
s_lyrTechSetNames: dd _cstring_l_sm_a0c0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0, _cstring_l_sm_a0c0d0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0d0, _cstring_l_sm_a0c0d0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0d0n0, _cstring_l_sm_a0c0d0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0d0n0s0, _cstring_l_sm_a0c0d0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0d0s0, _cstring_l_sm_a0c0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0n0, _cstring_l_sm_a0c0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0n0s0, _cstring_l_sm_a0c0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_a0c0s0, _cstring_l_sm_b0c0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0, _cstring_l_sm_b0c0d0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0d0, _cstring_l_sm_b0c0d0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0d0n0, _cstring_l_sm_b0c0d0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0d0n0s0, _cstring_l_sm_b0c0d0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0d0s0, _cstring_l_sm_b0c0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0n0, _cstring_l_sm_b0c0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0n0s0, _cstring_l_sm_b0c0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_b0c0s0, _cstring_l_sm_r0c0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0, _cstring_l_sm_r0c0d0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0d0, _cstring_l_sm_r0c0d0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0d0n0, _cstring_l_sm_r0c0d0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0d0n0s0, _cstring_l_sm_r0c0d0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0d0s0, _cstring_l_sm_r0c0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0n0, _cstring_l_sm_r0c0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0n0s0, _cstring_l_sm_r0c0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_r0c0s0, _cstring_l_sm_t0c0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0, _cstring_l_sm_t0c0d0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0d0, _cstring_l_sm_t0c0d0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0d0n0, _cstring_l_sm_t0c0d0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0d0n0s0, _cstring_l_sm_t0c0d0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0d0s0, _cstring_l_sm_t0c0n0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0n0, _cstring_l_sm_t0c0n0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0n0s0, _cstring_l_sm_t0c0s0, _cstring_l_sm_, _cstring_l_hsmsm_, _cstring_t0c0s0, _cstring_unlit_multiply, 0x0, 0x0, _cstring_m0c0, 0x0, 0x0, 0x0, 0x0
g_useTechnique: dd 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x0, 0x1010001, 0x101, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstWireframeBitGroup: dd _cstring_wireframe, s_wireframeBitNames, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0
s_wireframeBitNames: dd _cstring_enable, 0x80000000, _cstring_disable, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstStencilBitGroup: dd _cstring_stencil, 0x3bca60, 0x0, 0xc0, _cstring_stencil, 0x3bca00, 0x0, 0xe0000, _cstring_stencil, 0x3bc9a0, 0x0, 0x700, _cstring_stencil, 0x3bc940, 0x0, 0x3800, _cstring_stencil, 0x3bc8e0, 0x0, 0x1c000, _cstring_stencil, 0x3bc880, 0x0, 0xe0000, _cstring_stencil, 0x3bc820, 0x0, 0x700, _cstring_stencil, 0x3bc7c0, 0x0, 0x3800, _cstring_stencil, 0x3bc760, 0x0, 0x1c000, 0x0, 0x0, 0x0, 0x0
s_stencilBitNames: dd _cstring_disable, 0x0, _cstring_onesided, 0x40, _cstring_twosided, 0xc0, 0x0, 0x0
s_stencilFuncFrontBitNames: dd _cstring_never, 0x0, _cstring_less, 0x20000, _cstring_equal, 0x40000, _cstring_lessequal, 0x60000, _cstring_greater, 0x80000, _cstring_notequal, 0xa0000, _cstring_greaterequal, 0xc0000, _cstring_always, 0xe0000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpFrontPassBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x100, _cstring_replace, 0x200, _cstring_incrsat, 0x300, _cstring_decrsat, 0x400, _cstring_invert, 0x500, _cstring_incr, 0x600, _cstring_decr, 0x700, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpFrontFailBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x800, _cstring_replace, 0x1000, _cstring_incrsat, 0x1800, _cstring_decrsat, 0x2000, _cstring_invert, 0x2800, _cstring_incr, 0x3000, _cstring_decr, 0x3800, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpFrontZFailBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x4000, _cstring_replace, 0x8000, _cstring_incrsat, 0xc000, _cstring_decrsat, 0x10000, _cstring_invert, 0x14000, _cstring_incr, 0x18000, _cstring_decr, 0x1c000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilFuncBackBitNames: dd _cstring_never, 0x0, _cstring_less, 0x20000000, _cstring_equal, 0x40000000, _cstring_lessequal, 0x60000000, _cstring_greater, 0x80000000, _cstring_notequal, 0xa0000000, _cstring_greaterequal, 0xc0000000, _cstring_always, 0xe0000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpBackPassBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x100000, _cstring_replace, 0x200000, _cstring_incrsat, 0x300000, _cstring_decrsat, 0x400000, _cstring_invert, 0x500000, _cstring_incr, 0x600000, _cstring_decr, 0x700000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpBackFailBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x800000, _cstring_replace, 0x1000000, _cstring_incrsat, 0x1800000, _cstring_decrsat, 0x2000000, _cstring_invert, 0x2800000, _cstring_incr, 0x3000000, _cstring_decr, 0x3800000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stencilOpBackZFailBitNames: dd _cstring_keep, 0x0, _cstring_zero, 0x4000000, _cstring_replace, 0x8000000, _cstring_incrsat, 0xc000000, _cstring_decrsat, 0x10000000, _cstring_invert, 0x14000000, _cstring_incr, 0x18000000, _cstring_decr, 0x1c000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstPolygonOffsetBitGroup: dd _cstring_polygonoffset, s_polygonOffsetBitNames, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0
s_polygonOffsetBitNames: dd _cstring_0, 0x0, _cstring_11, 0x10, _cstring_21, 0x20, _cstring_shadowmap, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstColorWriteBitGroup: dd _cstring_colorwrite, 0x3bcb28, 0x8000000, 0x0, _cstring_colorwrite, 0x3bcb10, 0x10000000, 0x0, 0x0, 0x0, 0x0, 0x0
s_colorWriteRgbBitNames: dd _cstring_enable, 0x8000000, _cstring_disable, 0x0, 0x0, 0x0
s_colorWriteAlphaBitNames: dd _cstring_enable, 0x10000000, _cstring_disable, 0x0, 0x0, 0x0
s_stateMapDstDepthWriteBitGroup: dd _cstring_depthwrite, s_depthWriteBitNames, 0x0, 0x1, 0x0, 0x0, 0x0, 0x0
s_depthWriteBitNames: dd _cstring_enable, 0x1, _cstring_disable, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstDepthTestBitGroup: dd _cstring_depthtest, s_depthTestBitNames, 0x0, 0xe, 0x0, 0x0, 0x0, 0x0
s_depthTestBitNames: dd _cstring_disable, 0x2, _cstring_less, 0x4, _cstring_lessequal, 0xc, _cstring_equal, 0x8, _cstring_always, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstCullFaceBitGroup: dd _cstring_cullface, s_cullFaceBitNames, 0xc000, 0x0, 0x0, 0x0, 0x0, 0x0
s_cullFaceBitNames: dd _cstring_none, 0x4000, _cstring_back, 0x8000, _cstring_front, 0xc000, 0x0, 0x0
s_stateMapDstBlendFuncAlphaBitGroup: dd _cstring_blendfuncalpha, s_blendOpAlphaBitNames, 0x7000000, 0x0, _cstring_blendfuncalpha, s_srcBlendAlphaBitNames, 0xf0000, 0x0, _cstring_blendfuncalpha, s_dstBlendAlphaBitNames, 0xf00000, 0x0, 0x0, 0x0, 0x0, 0x0
s_blendOpAlphaBitNames: dd _cstring_disable, 0x0, _cstring_add, 0x1000000, _cstring_subtract, 0x2000000, _cstring_revsubtract, 0x3000000, _cstring_min, 0x4000000, _cstring_max, 0x5000000, 0x0, 0x0, 0x0, 0x0
s_srcBlendAlphaBitNames: dd _cstring_zero, 0x10000, _cstring_one, 0x20000, _cstring_srccolor, 0x30000, _cstring_invsrccolor, 0x40000, _cstring_srcalpha, 0x50000, _cstring_invsrcalpha, 0x60000, _cstring_destalpha, 0x70000, _cstring_invdestalpha, 0x80000, _cstring_destcolor, 0x90000, _cstring_invdestcolor, 0xa0000, 0x0, 0x0, 0x0, 0x0
s_dstBlendAlphaBitNames: dd _cstring_zero, 0x100000, _cstring_one, 0x200000, _cstring_srccolor, 0x300000, _cstring_invsrccolor, 0x400000, _cstring_srcalpha, 0x500000, _cstring_invsrcalpha, 0x600000, _cstring_destalpha, 0x700000, _cstring_invdestalpha, 0x800000, _cstring_destcolor, 0x900000, _cstring_invdestcolor, 0xa00000, 0x0, 0x0, 0x0, 0x0
s_stateMapDstBlendFuncRgbBitGroup: dd _cstring_blendfuncrgb, s_blendOpRgbBitNames, 0x700, 0x0, _cstring_blendfuncrgb, s_srcBlendRgbBitNames, 0x70f, 0x0, _cstring_blendfuncrgb, s_dstBlendRgbBitNames, 0x7f0, 0x0, 0x0, 0x0, 0x0, 0x0
s_blendOpRgbBitNames: dd _cstring_disable, 0x0, _cstring_add, 0x100, _cstring_subtract, 0x200, _cstring_revsubtract, 0x300, _cstring_min, 0x400, _cstring_max, 0x500, 0x0, 0x0, 0x0, 0x0
s_srcBlendRgbBitNames: dd _cstring_zero, 0x1, _cstring_one, 0x2, _cstring_srccolor, 0x3, _cstring_invsrccolor, 0x4, _cstring_srcalpha, 0x5, _cstring_invsrcalpha, 0x6, _cstring_destalpha, 0x7, _cstring_invdestalpha, 0x8, _cstring_destcolor, 0x9, _cstring_invdestcolor, 0xa, 0x0, 0x0, 0x0, 0x0
s_dstBlendRgbBitNames: dd _cstring_zero, 0x10, _cstring_one, 0x20, _cstring_srccolor, 0x30, _cstring_invsrccolor, 0x40, _cstring_srcalpha, 0x50, _cstring_invsrcalpha, 0x60, _cstring_destalpha, 0x70, _cstring_invdestalpha, 0x80, _cstring_destcolor, 0x90, _cstring_invdestcolor, 0xa0, 0x0, 0x0, 0x0, 0x0
s_stateMapDstAlphaTestBitGroup: dd _cstring_alphatest, s_alphaTestBitNames, 0x3800, 0x0, 0x0, 0x0, 0x0, 0x0
s_alphaTestBitNames: dd _cstring_always, 0x800, _cstring_ge128, 0x3000, _cstring_gt0, 0x1000, _cstring_lt128, 0x2000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_stateMapSrcBitGroup: dd _cstring_mtlalphatest, 0x3bcec0, 0x3800, 0x0, _cstring_mtlblendop, 0x3bce60, 0x700, 0x0, _cstring_mtlsrcblend, 0x3bce00, 0xf, 0x0, _cstring_mtldestblend, 0x3bcda0, 0xf0, 0x0, _cstring_mtlblendopalpha, 0x3bcd20, 0x7000000, 0x0, _cstring_mtlsrcblendalpha, 0x3bccc0, 0xf0000, 0x0, _cstring_mtldestblendalph, 0x3bcc60, 0xf00000, 0x0, _cstring_mtlcullface, 0x3bcc00, 0xc000, 0x0, _cstring_mtlcolorwritergb, 0x3bcb28, 0x8000000, 0x0, _cstring_mtlcolorwritealp, 0x3bcb10, 0x10000000, 0x0, _cstring_mtldepthtest, 0x3bcba0, 0x0, 0xe, _cstring_mtldepthwrite, 0x3bcb60, 0x0, 0x1, _cstring_mtlpolygonoffset, 0x3bcaa0, 0x0, 0x30, _cstring_mtlstencil, 0x3bca60, 0x0, 0xc0, _cstring_mtlstencilfuncfr, 0x3bca00, 0x0, 0xe0000, _cstring_mtlstencilopfron, 0x3bc9a0, 0x0, 0x700, _cstring_mtlstencilopfron1, 0x3bc940, 0x0, 0x3800, _cstring_mtlstencilopfron2, 0x3bc8e0, 0x0, 0x1c000, _cstring_mtlstencilfuncba, 0x3bc880, 0x0, 0xe0000, _cstring_mtlstencilopback, 0x3bc820, 0x0, 0x700, _cstring_mtlstencilopback1, 0x3bc7c0, 0x0, 0x3800, _cstring_mtlstencilopback2, 0x3bc760, 0x0, 0x1c000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
_ZZ29Material_TechniqueTypeForNamePKcE5C.439: dd _cstring_depth_prepass, _cstring_build_floatz, _cstring_build_shadowmap_, _cstring_build_shadowmap_1, _cstring_unlit, _cstring_emissive, _cstring_emissive_shadow, _cstring_lit, _cstring_lit_sun, _cstring_lit_sun_shadow, _cstring_lit_spot, _cstring_lit_spot_shadow, _cstring_lit_omni, _cstring_lit_omni_shadow, _cstring_lit_instanced, _cstring_lit_instanced_su, _cstring_lit_instanced_su1, _cstring_lit_instanced_sp, _cstring_lit_instanced_sp1, _cstring_lit_instanced_om, _cstring_lit_instanced_om1, _cstring_light_spot, _cstring_light_omni, _cstring_light_spot_shado, _cstring_fakelight_normal, _cstring_fakelight_view, _cstring_sunlight_preview, _cstring_case_texture, _cstring_solid_wireframe, _cstring_shaded_wireframe, _cstring_shadowcookie_cas, _cstring_shadowcookie_rec, _cstring_debug_bumpmap, _cstring_debug_bumpmap_in, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
s_codeConstUpdateFreq: dd 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x2, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_material_load_obj:
SECTION .bss
mtlLoadGlob: resb 0x11080


;All cstrings:
SECTION .rdata
_cstring_s_is_not_a_valid:		db "%s is not a valid state value",0ah,0
_cstring_s:		db "-%s",0
_cstring_material_s_using:		db "material ",27h,"%s",27h," using technique ",27h,"%s",27h," from techniqueSet ",27h,"%s",27h," doesn",27h,"t expose a ",27h,"%s",27h," constant",0ah,0
_cstring_material_s_using1:		db "material ",27h,"%s",27h," using technique ",27h,"%s",27h," from techniqueSet ",27h,"%s",27h," doesn",27h,"t expose a ",27h,"%s",27h," texture",0ah,0
_cstring_include:		db "#include",0
_cstring_found_c_instead_:		db "Found ",27h,"%c",27h," instead of ",27h,22h,27h," in #include for shader %s",0ah,0
_cstring_missing_ending__:		db "Missing ending ",27h,22h,27h," in #include for shader %s",0ah,0
_cstring_max_shader_inclu:		db "Max shader include files exceeded.  Increase R_SHADER_MAX_INCLUDE_FILES.",0ah,0
_cstring_lib:		db "lib/",0
_cstring_shaders_in_the_s:		db "Shaders in the shader library folder shouldn",27h,"t include the library directory when including other shaders: %s",0ah,0
_cstring_shader_text_over:		db "Shader text overflowed. You may need to increase R_SHADER_TEXT_SIZE_LIMIT.",0ah,0
_cstring_didnt_preload_sh:		db "Didn",27h,"t preload shader file ",27h,"%s",27h,0ah,0
_cstring_libs:		db "lib/%s",0
_cstring_shader_is_trying:		db "Shader is trying to include ",27h,"%s",27h," instead of ",27h,"lib/%s",27h,0ah,0
_cstring_:		db "{",0
_cstring_default:		db "default",0
_cstring_passthrough:		db "passthrough",0
_cstring_1:		db ";",0
_cstring_state_s_has_more:		db "state %s has more than %i rules",0ah,0
_cstring_2:		db ":",0
_cstring_3:		db ",",0
_cstring_4:		db "==",0
_cstring_5:		db "&&",0
_cstring_failed_parsing_c:		db "failed parsing conditional after ",27h,"&&",27h,0ah,0
_cstring_missing_value_fo:		db "missing value for state %s",0ah,0
_cstring_missing_rule_con:		db "missing rule condition for state %s",0ah,0
_cstring_no_entries_for_s:		db "no entries for state %s: you may want to do ",27h,"default: passthrough;",27h,0ah,0
_cstring_expected__or__fo:		db "expected ",27h,":",27h," or ",27h,"&&",27h,", found ",27h,"%s",27h,0ah,0
_cstring_shaderss:		db "shaders/%s",0
_cstring_define_pc:		db "#define PC",0ah,0
_cstring_define_is_vertex:		db "#define IS_VERTEX_SHADER 0",0ah,0
_cstring_define_is_pixel_:		db "#define IS_PIXEL_SHADER 1",0ah,0
_cstring_define_is_vertex1:		db "#define IS_VERTEX_SHADER 1",0ah,0
_cstring_define_is_pixel_1:		db "#define IS_PIXEL_SHADER 0",0ah,0
_cstring_shadercacheds_s_:		db "../shadercache%d/%s_%s_%8.8x",0
_cstring_rb:		db "rb",0
_cstring_dd:		db "(%d,%d)",0
_cstring_d:		db "(%d)",0
_cstring_message_format_c:		db "Message format changed.  Update Material_FileIncludeFileAndLineNumber.",0
_cstring_compiler_message:		db "compiler message(s) for %s (entryPoint=",22h,"%s",22h,", target=",22h,"%s",22h,"):",0ah,"%s",0ah,"%s(%d)",0ah,0
_cstring_shadercached:		db "../shadercache%d",0
_cstring_ss_s_88x:		db "%s/%s_%s_%8.8x",0
_cstring_wb:		db "wb",0
_cstring_couldnt_read_sha:		db "Couldn",27h,"t read shader ",27h,"%s",27h,0ah,0
_cstring_material_cachesh:		db "Material_CacheShader: Failed to open ",27h,"%s",27h,0
_cstring_s_compilation_fa:		db "%s compilation failed - NULL constants",0ah,0
_cstring_s_compilation_fa1:		db "%s compilation failed - NULL shader",0ah,0
_cstring_s_compilation_fa2:		db "%s compilation failed - %s",0ah,0
_cstring_error_material_c:		db "ERROR: Material_CopyTextToDXBuffer: D3DXCreateBuffer(%d) failed: %s (0x%08x)",0ah,0
_cstring_statemap:		db "stateMap",0
_cstring_statemapsssm:		db "statemaps/%s.sm",0
_cstring_1error_:		db "^1ERROR: ",0
_cstring_alphatest:		db "alphaTest",0
_cstring_vertexshader:		db "vertexShader",0
_cstring_vs:		db "vs",0
_cstring_s_i_i:		db "%s_%i_%i",0
_cstring_vs_main:		db "vs_main",0
_cstring_more_than_i_uniq:		db "More than %i unique vertex shaders",0
_cstring_missing_statemap:		db "missing stateMap filename",0ah,0
_cstring_blendfunc:		db "blendFunc",0
_cstring_separatealphable:		db "separateAlphaBlendFunc",0
_cstring_cullface:		db "cullFace",0
_cstring_depthtest:		db "depthTest",0
_cstring_depthwrite:		db "depthWrite",0
_cstring_colorwrite:		db "colorWrite",0
_cstring_polygonoffset:		db "polygonOffset",0
_cstring_stencil:		db "stencil",0
_cstring_wireframe:		db "wireframe",0
_cstring_couldnt_open_sta:		db "Couldn",27h,"t open statemap ",27h,"%s",27h,0ah,0
_cstring_vertex_shader_cr:		db "vertex shader creation failed for %s: %s",0ah,0
_cstring_s_3_0:		db "%s_3_0",0
_cstring_ss:		db "%s%s",0
_cstring_no_rule_in_state:		db "No rule in stateMap ",27h,"%s",27h," rule set %i matched the current material state for material ",27h,"%s",27h,0
_cstring_1error_material_:		db "^1ERROR: material ",27h,"%s",27h," has zero length",0ah,0
_cstring_normalmap:		db "normalMap",0
_cstring_identitynormalma:		db "$identitynormalmap",0
_cstring_without_a_normal:		db "without a normal map to have one",0
_cstring_with_a_normal_ma:		db "with a normal map to not have one",0
_cstring_in_layered_mater:		db "In layered material, expected material ",27h,"%s",27h," %s; using default instead.  Recompile the bsp to fix.",0ah,0
_cstring_w_:		db "w_",0
_cstring_wc_:		db "wc_",0
_cstring_colortint:		db "colorTint",0
_cstring_1error_couldnt_f:		db "^1ERROR: Couldn",27h,"t find material ",27h,"%s",27h,0ah,0
_cstring_material_s_uses_:		db "Material ",27h,"%s",27h," uses technique set ",27h,"%s",27h," which cannot be used in a layered material; using default instead.  Recompile the bsp to fix.",0ah,0
_cstring__:		db "_",0
_cstring_technique_set_na:		db "technique set name %s%s is too long",0
_cstring_techsetsstechset:		db "techsets/%s.techset",0
_cstring_techniquesstech:		db "techniques/%s.tech",0
_cstring_6:		db "}",0
_cstring_technique_s_has_:		db "Technique ",27h,"%s",27h," has no passes.  The technique should be left blank in the techniqueset instead.",0ah,0
_cstring_couldnt_open_tec:		db "Couldn",27h,"t open technique ",27h,"%s",27h,0ah,0
_cstring_zprepass:		db "zprepass",0
_cstring_expected__but_fo:		db "expected ",27h,"{",27h," but found ",27h,"%s",27h,0ah,0
_cstring_error_loading_pa:		db "Error loading pass for dx9 technique ",27h,"%s",27h,0ah,0
_cstring_unknown_techniqu:		db "Unknown technique type ",27h,"%s",27h,0ah,0
_cstring_more_than_i_tech:		db "More than %i techniques in use",0
_cstring_1error_couldnt_o:		db "^1ERROR: Couldn",27h,"t open techniqueSet ",27h,"%s",27h,0ah,0
_cstring_too_many_labels_:		db "Too many labels in technique set",0ah,0
_cstring_hlsl:		db "hlsl",0
_cstring_shaderslib:		db "shaders/lib/",0
_cstring_shadersss:		db "shaders/%s%s",0
_cstring_null:		db 0
_cstring_m:		db "m/",0
_cstring_m_:		db "m_",0
_cstring_mc:		db "mc/",0
_cstring_mc_:		db "mc_",0
_cstring_w:		db "w/",0
_cstring_wc:		db "wc/",0
_cstring_l_sm_a0c0:		db "l_sm_a0c0",0
_cstring_l_sm_:		db "l_sm_",0
_cstring_l_hsmsm_:		db "l_[hsm|sm]_",0
_cstring_a0c0:		db "a0c0",0
_cstring_l_sm_a0c0d0:		db "l_sm_a0c0d0",0
_cstring_a0c0d0:		db "a0c0d0",0
_cstring_l_sm_a0c0d0n0:		db "l_sm_a0c0d0n0",0
_cstring_a0c0d0n0:		db "a0c0d0n0",0
_cstring_l_sm_a0c0d0n0s0:		db "l_sm_a0c0d0n0s0",0
_cstring_a0c0d0n0s0:		db "a0c0d0n0s0",0
_cstring_l_sm_a0c0d0s0:		db "l_sm_a0c0d0s0",0
_cstring_a0c0d0s0:		db "a0c0d0s0",0
_cstring_l_sm_a0c0n0:		db "l_sm_a0c0n0",0
_cstring_a0c0n0:		db "a0c0n0",0
_cstring_l_sm_a0c0n0s0:		db "l_sm_a0c0n0s0",0
_cstring_a0c0n0s0:		db "a0c0n0s0",0
_cstring_l_sm_a0c0s0:		db "l_sm_a0c0s0",0
_cstring_a0c0s0:		db "a0c0s0",0
_cstring_l_sm_b0c0:		db "l_sm_b0c0",0
_cstring_b0c0:		db "b0c0",0
_cstring_l_sm_b0c0d0:		db "l_sm_b0c0d0",0
_cstring_b0c0d0:		db "b0c0d0",0
_cstring_l_sm_b0c0d0n0:		db "l_sm_b0c0d0n0",0
_cstring_b0c0d0n0:		db "b0c0d0n0",0
_cstring_l_sm_b0c0d0n0s0:		db "l_sm_b0c0d0n0s0",0
_cstring_b0c0d0n0s0:		db "b0c0d0n0s0",0
_cstring_l_sm_b0c0d0s0:		db "l_sm_b0c0d0s0",0
_cstring_b0c0d0s0:		db "b0c0d0s0",0
_cstring_l_sm_b0c0n0:		db "l_sm_b0c0n0",0
_cstring_b0c0n0:		db "b0c0n0",0
_cstring_l_sm_b0c0n0s0:		db "l_sm_b0c0n0s0",0
_cstring_b0c0n0s0:		db "b0c0n0s0",0
_cstring_l_sm_b0c0s0:		db "l_sm_b0c0s0",0
_cstring_b0c0s0:		db "b0c0s0",0
_cstring_l_sm_r0c0:		db "l_sm_r0c0",0
_cstring_r0c0:		db "r0c0",0
_cstring_l_sm_r0c0d0:		db "l_sm_r0c0d0",0
_cstring_r0c0d0:		db "r0c0d0",0
_cstring_l_sm_r0c0d0n0:		db "l_sm_r0c0d0n0",0
_cstring_r0c0d0n0:		db "r0c0d0n0",0
_cstring_l_sm_r0c0d0n0s0:		db "l_sm_r0c0d0n0s0",0
_cstring_r0c0d0n0s0:		db "r0c0d0n0s0",0
_cstring_l_sm_r0c0d0s0:		db "l_sm_r0c0d0s0",0
_cstring_r0c0d0s0:		db "r0c0d0s0",0
_cstring_l_sm_r0c0n0:		db "l_sm_r0c0n0",0
_cstring_r0c0n0:		db "r0c0n0",0
_cstring_l_sm_r0c0n0s0:		db "l_sm_r0c0n0s0",0
_cstring_r0c0n0s0:		db "r0c0n0s0",0
_cstring_l_sm_r0c0s0:		db "l_sm_r0c0s0",0
_cstring_r0c0s0:		db "r0c0s0",0
_cstring_l_sm_t0c0:		db "l_sm_t0c0",0
_cstring_t0c0:		db "t0c0",0
_cstring_l_sm_t0c0d0:		db "l_sm_t0c0d0",0
_cstring_t0c0d0:		db "t0c0d0",0
_cstring_l_sm_t0c0d0n0:		db "l_sm_t0c0d0n0",0
_cstring_t0c0d0n0:		db "t0c0d0n0",0
_cstring_l_sm_t0c0d0n0s0:		db "l_sm_t0c0d0n0s0",0
_cstring_t0c0d0n0s0:		db "t0c0d0n0s0",0
_cstring_l_sm_t0c0d0s0:		db "l_sm_t0c0d0s0",0
_cstring_t0c0d0s0:		db "t0c0d0s0",0
_cstring_l_sm_t0c0n0:		db "l_sm_t0c0n0",0
_cstring_t0c0n0:		db "t0c0n0",0
_cstring_l_sm_t0c0n0s0:		db "l_sm_t0c0n0s0",0
_cstring_t0c0n0s0:		db "t0c0n0s0",0
_cstring_l_sm_t0c0s0:		db "l_sm_t0c0s0",0
_cstring_t0c0s0:		db "t0c0s0",0
_cstring_unlit_multiply:		db "unlit_multiply",0
_cstring_m0c0:		db "m0c0",0
_cstring_enable:		db "Enable",0
_cstring_disable:		db "Disable",0
_cstring_onesided:		db "OneSided",0
_cstring_twosided:		db "TwoSided",0
_cstring_never:		db "Never",0
_cstring_less:		db "Less",0
_cstring_equal:		db "Equal",0
_cstring_lessequal:		db "LessEqual",0
_cstring_greater:		db "Greater",0
_cstring_notequal:		db "NotEqual",0
_cstring_greaterequal:		db "GreaterEqual",0
_cstring_always:		db "Always",0
_cstring_keep:		db "Keep",0
_cstring_zero:		db "Zero",0
_cstring_replace:		db "Replace",0
_cstring_incrsat:		db "IncrSat",0
_cstring_decrsat:		db "DecrSat",0
_cstring_invert:		db "Invert",0
_cstring_incr:		db "Incr",0
_cstring_decr:		db "Decr",0
_cstring_0:		db "0",0
_cstring_11:		db "1",0
_cstring_21:		db "2",0
_cstring_shadowmap:		db "shadowmap",0
_cstring_none:		db "None",0
_cstring_back:		db "Back",0
_cstring_front:		db "Front",0
_cstring_blendfuncalpha:		db "blendFuncAlpha",0
_cstring_add:		db "Add",0
_cstring_subtract:		db "Subtract",0
_cstring_revsubtract:		db "RevSubtract",0
_cstring_min:		db "Min",0
_cstring_max:		db "Max",0
_cstring_one:		db "One",0
_cstring_srccolor:		db "SrcColor",0
_cstring_invsrccolor:		db "InvSrcColor",0
_cstring_srcalpha:		db "SrcAlpha",0
_cstring_invsrcalpha:		db "InvSrcAlpha",0
_cstring_destalpha:		db "DestAlpha",0
_cstring_invdestalpha:		db "InvDestAlpha",0
_cstring_destcolor:		db "DestColor",0
_cstring_invdestcolor:		db "InvDestColor",0
_cstring_blendfuncrgb:		db "blendFuncRgb",0
_cstring_ge128:		db "GE128",0
_cstring_gt0:		db "GT0",0
_cstring_lt128:		db "LT128",0
_cstring_mtlalphatest:		db "mtlAlphaTest",0
_cstring_mtlblendop:		db "mtlBlendOp",0
_cstring_mtlsrcblend:		db "mtlSrcBlend",0
_cstring_mtldestblend:		db "mtlDestBlend",0
_cstring_mtlblendopalpha:		db "mtlBlendOpAlpha",0
_cstring_mtlsrcblendalpha:		db "mtlSrcBlendAlpha",0
_cstring_mtldestblendalph:		db "mtlDestBlendAlpha",0
_cstring_mtlcullface:		db "mtlCullFace",0
_cstring_mtlcolorwritergb:		db "mtlColorWriteRgb",0
_cstring_mtlcolorwritealp:		db "mtlColorWriteAlpha",0
_cstring_mtldepthtest:		db "mtlDepthTest",0
_cstring_mtldepthwrite:		db "mtlDepthWrite",0
_cstring_mtlpolygonoffset:		db "mtlPolygonOffset",0
_cstring_mtlstencil:		db "mtlStencil",0
_cstring_mtlstencilfuncfr:		db "mtlStencilFuncFront",0
_cstring_mtlstencilopfron:		db "mtlStencilOpFrontPass",0
_cstring_mtlstencilopfron1:		db "mtlStencilOpFrontFail",0
_cstring_mtlstencilopfron2:		db "mtlStencilOpFrontZFail",0
_cstring_mtlstencilfuncba:		db "mtlStencilFuncBack",0
_cstring_mtlstencilopback:		db "mtlStencilOpBackPass",0
_cstring_mtlstencilopback1:		db "mtlStencilOpBackFail",0
_cstring_mtlstencilopback2:		db "mtlStencilOpBackZFail",0
_cstring_depth_prepass:		db 22h,"depth prepass",22h,0
_cstring_build_floatz:		db 22h,"build floatz",22h,0
_cstring_build_shadowmap_:		db 22h,"build shadowmap depth",22h,0
_cstring_build_shadowmap_1:		db 22h,"build shadowmap color",22h,0
_cstring_unlit:		db 22h,"unlit",22h,0
_cstring_emissive:		db 22h,"emissive",22h,0
_cstring_emissive_shadow:		db 22h,"emissive shadow",22h,0
_cstring_lit:		db 22h,"lit",22h,0
_cstring_lit_sun:		db 22h,"lit sun",22h,0
_cstring_lit_sun_shadow:		db 22h,"lit sun shadow",22h,0
_cstring_lit_spot:		db 22h,"lit spot",22h,0
_cstring_lit_spot_shadow:		db 22h,"lit spot shadow",22h,0
_cstring_lit_omni:		db 22h,"lit omni",22h,0
_cstring_lit_omni_shadow:		db 22h,"lit omni shadow",22h,0
_cstring_lit_instanced:		db 22h,"lit instanced",22h,0
_cstring_lit_instanced_su:		db 22h,"lit instanced sun",22h,0
_cstring_lit_instanced_su1:		db 22h,"lit instanced sun shadow",22h,0
_cstring_lit_instanced_sp:		db 22h,"lit instanced spot",22h,0
_cstring_lit_instanced_sp1:		db 22h,"lit instanced spot shadow",22h,0
_cstring_lit_instanced_om:		db 22h,"lit instanced omni",22h,0
_cstring_lit_instanced_om1:		db 22h,"lit instanced omni shadow",22h,0
_cstring_light_spot:		db 22h,"light spot",22h,0
_cstring_light_omni:		db 22h,"light omni",22h,0
_cstring_light_spot_shado:		db 22h,"light spot shadow",22h,0
_cstring_fakelight_normal:		db 22h,"fakelight normal",22h,0
_cstring_fakelight_view:		db 22h,"fakelight view",22h,0
_cstring_sunlight_preview:		db 22h,"sunlight preview",22h,0
_cstring_case_texture:		db 22h,"case texture",22h,0
_cstring_solid_wireframe:		db 22h,"solid wireframe",22h,0
_cstring_shaded_wireframe:		db 22h,"shaded wireframe",22h,0
_cstring_shadowcookie_cas:		db 22h,"shadowcookie caster",22h,0
_cstring_shadowcookie_rec:		db 22h,"shadowcookie receiver",22h,0
_cstring_debug_bumpmap:		db 22h,"debug bumpmap",22h,0
_cstring_debug_bumpmap_in:		db 22h,"debug bumpmap instanced",22h,0



;All constant floats and doubles:
SECTION .rdata
_float_10_00000000:		dd 0x41200000	; 10
_float_0_50000000:		dd 0x3f000000	; 0.5

