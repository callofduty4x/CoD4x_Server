;Imports of r_material:
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern _Z18DB_IsXAssetDefault10XAssetTypePKc
	extern alwaysfails
	extern r_loadForRenderer
	extern dx_ctx
	extern _Z18Image_UpdatePicmipP8GfxImage
	extern _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	extern _Z15R_HashAssetNamePKc
	extern _Z9I_stricmpPKcS0_
	extern rg
	extern strcmp
	extern _Z13Material_LoadPKci
	extern rgp
	extern _Z16Com_PrintWarningiPKcz
	extern _Z9Com_Error11errorParm_tPKcz
	extern useFastFile
	extern memset
	extern _Z29Material_PreLoadAllShaderTextv
	extern _Z18Hunk_AllocInternali
	extern _Z11Com_sprintfPciPKcz
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z16Material_FreeAllv
	extern memcpy
	extern _Z18R_SyncRenderThreadv
	extern _Z11R_SetPicmipv
	extern cmd_args
	extern _Z10Com_PrintfiPKcz
	extern _Z2vaPKcz
	extern _Z20RB_BindDefaultImagesv
	extern _Z12Image_ReloadP8GfxImage
	extern r_rendererInUse
	extern _Z25Material_LoadTechniqueSetPKc11GfxRenderer
	extern _Z40Material_RegisterOverriddenTechniqueSetsPKc
	extern _ZNSsC1EPKcRKSaIcE
	extern _ZNKSs4findEPKcmm
	extern _ZNSsC1ERKSsmm
	extern _ZNSsC1ERKSs
	extern _ZNSs6appendEPKcm
	extern D3DXCompileShader
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern _Unwind_Resume

;Exports of r_material:
	global materialGlobals
	global s_builtInMaterials
	global g_generateOverrideTechniques
	global s_streamSourceInfo
	global s_streamDestInfo
	global declEnd.158730
	global _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior
	global _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv
	global _Z27Material_ReloadTechniqueSet12XAssetHeaderPv
	global _Z27Material_UpdatePicmipSingle12XAssetHeaderPv
	global _Z29Material_CollateTechniqueSets12XAssetHeaderPv
	global _Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE
	global _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE
	global _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior
	global _Z25Material_Register_LoadObjPKci
	global _Z25Material_FreeTechniqueSet12XAssetHeaderPv
	global _Z13Material_Initv
	global _Z14Material_Alloci
	global _Z15R_EnumMaterialsPFv12XAssetHeaderPvES0_
	global _Z16Material_GetNameP8Material
	global _Z17Material_LoadFilePKcPi
	global _Z17Material_RegisterPKci
	global _Z17Material_Shutdownv
	global _Z18Material_DirtySortv
	global _Z18Material_DuplicateP8MaterialPKc
	global _Z18Material_IsDefaultPK8Material
	global _Z18Material_ReloadAllv
	global _Z19Material_ReleaseAllv
	global _Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0_
	global _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration
	global _Z22Material_FinishLoadingv
	global _Z23Material_RegisterHandlePKci
	global _Z24Material_UpdatePicmipAllv
	global _Z25Material_FindTechniqueSetPKc26MtlTechSetNotFoundBehavior
	global _Z26Material_Register_FastFilePKci
	global _Z28Material_ForEachTechniqueSetPFvP20MaterialTechniqueSetE
	global _Z28R_Cmd_ReloadMaterialTexturesv
	global _Z29Material_FreeAllTechniqueSetsv
	global _Z29Material_RegisterTechniqueSetPKc
	global _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader
	global _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader
	global _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet
	global _Z43Material_PreventOverrideTechniqueGenerationv


SECTION .text


;Material_FindTechniqueSet_FastFile(char const*, MtlTechSetNotFoundBehavior)
_Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	mov ebx, eax
	mov eax, [ebp+0xc]
	test eax, eax
	jz _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_10
_Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_20:
	mov eax, ebx
_Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_10:
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call _Z18DB_IsXAssetDefault10XAssetTypePKc
	test al, al
	jz _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_20
	xor eax, eax
	jmp _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior_30
	nop


;Material_ReleaseTechniqueSet(XAssetHeader, void*)
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
	mov edx, alwaysfails
	mov [ebp-0x2c], edx
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_10
	cmp word [eax+0x6], 0x0
	jz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_20
	jmp _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_30
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_40:
	mov eax, [esi+0x8]
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_40
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_50
	jmp _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_60
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_70:
	mov eax, [esi+0x4]
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_70
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_90
	jmp _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_100
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_110:
	mov eax, [esi]
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov ecx, [edi]
	test ecx, ecx
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_110
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_120
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_130
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_140
	mov eax, [ebp-0x1c]
	jmp _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_150
_Z28Material_ReleaseTechniqueSet12XAssetHeaderPv_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_ReloadTechniqueSet(XAssetHeader, void*)
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x88c
	mov eax, [ebp+0x8]
	mov [ebp-0x858], eax
	mov dword [ebp-0x864], 0x22
	mov edx, eax
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_190:
	mov edx, [edx+0xc]
	mov [ebp-0x880], edx
	test edx, edx
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_10
	cmp word [edx+0x6], 0x0
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_10
	mov dword [ebp-0x87c], 0x0
	mov edx, [ebp-0x880]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_20
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_50:
	add dword [ebp-0x87c], 0x1
	mov ecx, [ebp-0x880]
	movzx eax, word [ecx+0x6]
	cmp [ebp-0x87c], eax
	jge _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_10
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_170:
	mov edx, ecx
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_20:
	mov ecx, [ebp-0x87c]
	lea eax, [ecx+ecx*4]
	lea ebx, [edx+eax*4]
	lea ecx, [ebx+0x8]
	mov [ebp-0x878], ecx
	mov eax, [ecx+0x8]
	mov esi, [eax+0x4]
	test esi, esi
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_30
	mov edx, ecx
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_230:
	mov eax, [edx+0x4]
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_40
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_220:
	mov eax, [ebx+0x8]
	cmp byte [eax+0x2], 0x0
	jnz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_50
	lea edx, [eax+0x4]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	mov eax, [edx+0xc]
	mov [ebp-0x30], eax
	mov eax, [edx+0x10]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x14]
	mov [ebp-0x28], eax
	mov eax, [edx+0x18]
	mov [ebp-0x24], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x20], eax
	mov dword [ebp-0x874], 0x0
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_160:
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_60
	mov ecx, [ebp-0x874]
	lea eax, [ecx+ecx*2]
	lea eax, [eax+eax*8+s_streamSourceInfo]
	mov [ebp-0x870], eax
	mov ebx, [ebp-0x878]
	mov ebx, [ebx]
	mov [ebp-0x84c], ebx
	movzx eax, byte [ebx]
	movzx edx, al
	mov [ebp-0x850], edx
	mov dword [ebp-0x1c], 0x0
	test al, al
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_70
	movzx eax, byte [ebp-0x3c]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x870]
	add edi, eax
	cmp byte [edi], 0xff
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_80
	mov dword [ebp-0x86c], 0x0
	lea ecx, [ebp-0x3b]
	mov [ebp-0x85c], ecx
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_90
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_120:
	mov ecx, ebx
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_140:
	movzx eax, byte [edi]
	mov [ebp+ecx*8-0x83c], ax
	movzx eax, byte [edi+0x1]
	mov [ebp+ecx*8-0x83a], ax
	movzx eax, byte [edi+0x2]
	mov [ebp+ecx*8-0x838], al
	mov byte [ebp+ecx*8-0x837], 0x0
	mov ebx, [ebp-0x868]
	movzx eax, byte [ebx]
	mov [ebp+ecx*8-0x836], al
	movzx eax, byte [ebx+0x1]
	mov [ebp+ecx*8-0x835], al
	add dword [ebp-0x86c], 0x1
	mov eax, [ebp-0x86c]
	cmp [ebp-0x850], eax
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_100
	lea eax, [ebp-0x3a]
	lea ebx, [ebp-0x3b]
	sub eax, ebx
	mov edx, [ebp-0x85c]
	movzx eax, byte [edx+eax]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x870]
	add edi, eax
	add edx, 0x2
	mov [ebp-0x85c], edx
	cmp byte [edi], 0xff
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_80
	mov ecx, edx
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_90:
	movzx eax, byte [ecx]
	lea eax, [eax+eax+s_streamDestInfo]
	mov [ebp-0x868], eax
	mov eax, [ebp-0x86c]
	test eax, eax
	jle _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_110
	mov ecx, [ebp-0x86c]
	sub ecx, 0x1
	movzx edx, byte [edi]
	mov ebx, [ebp-0x86c]
	movzx eax, word [ebp+ebx*8-0x844]
	cmp edx, eax
	jae _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_120
	lea ebx, [ebp+ecx*8-0x83c]
	mov [ebp-0x860], ebx
	mov esi, [ebp-0x86c]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_130
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_150:
	mov esi, ecx
	mov ecx, [ebp-0x854]
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_130:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ebp+esi*8-0x83c], eax
	mov [ebp+esi*8-0x838], edx
	test ecx, ecx
	jle _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_140
	lea eax, [ecx-0x1]
	mov [ebp-0x854], eax
	mov edx, [ebp-0x86c]
	lea eax, [ebp+edx*8-0x84c]
	sub eax, [ebp-0x860]
	movzx edx, word [eax+ebx]
	sub ebx, 0x8
	movzx eax, byte [edi]
	cmp eax, edx
	jb _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_150
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_140
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_60:
	mov ecx, [ebp-0x878]
	mov eax, [ecx]
	mov ebx, [ebp-0x874]
	mov dword [eax+ebx*4+0x24], 0x0
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_200:
	add dword [ebp-0x874], 0x1
	cmp dword [ebp-0x874], 0x10
	jnz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_160
	mov edx, [ebp-0x878]
	mov eax, [edx]
	mov byte [eax+0x2], 0x1
	add dword [ebp-0x87c], 0x1
	mov ecx, [ebp-0x880]
	movzx eax, word [ecx+0x6]
	cmp [ebp-0x87c], eax
	jl _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_170
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_10:
	add dword [ebp-0x858], 0x4
	sub dword [ebp-0x864], 0x1
	jz _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_180
	mov edx, [ebp-0x858]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_190
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_110:
	mov ecx, [ebp-0x86c]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_140
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_80:
	xor eax, eax
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_210:
	mov ebx, [ebp-0x874]
	mov edx, [ebp-0x84c]
	mov [edx+ebx*4+0x24], eax
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_200
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_70:
	mov dword [ebp-0x850], 0x0
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_100:
	mov eax, [declEnd.158730]
	mov edx, [declEnd.158730+0x4]
	mov ecx, [ebp-0x850]
	mov [ebp+ecx*8-0x83c], eax
	mov [ebp+ecx*8-0x838], edx
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x83c]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x158]
	mov eax, [ebp-0x1c]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_210
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_40:
	mov [esp+0x4], eax
	add eax, 0x8
	mov [esp], eax
	call _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_220
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_30:
	mov [esp+0x4], eax
	add eax, 0x8
	mov [esp], eax
	call _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader
	mov edx, [ebp-0x878]
	jmp _Z27Material_ReloadTechniqueSet12XAssetHeaderPv_230
_Z27Material_ReloadTechniqueSet12XAssetHeaderPv_180:
	add esp, 0x88c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_UpdatePicmipSingle(XAssetHeader, void*)
_Z27Material_UpdatePicmipSingle12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x3a], 0x0
	jz _Z27Material_UpdatePicmipSingle12XAssetHeaderPv_10
	xor esi, esi
	xor ebx, ebx
_Z27Material_UpdatePicmipSingle12XAssetHeaderPv_30:
	mov eax, ebx
	add eax, [edi+0x44]
	cmp byte [eax+0x7], 0xb
	jz _Z27Material_UpdatePicmipSingle12XAssetHeaderPv_20
	mov eax, [eax+0x8]
	test eax, eax
	jz _Z27Material_UpdatePicmipSingle12XAssetHeaderPv_20
	mov [esp], eax
	call _Z18Image_UpdatePicmipP8GfxImage
_Z27Material_UpdatePicmipSingle12XAssetHeaderPv_20:
	add esi, 0x1
	add ebx, 0xc
	movzx eax, byte [edi+0x3a]
	cmp eax, esi
	jg _Z27Material_UpdatePicmipSingle12XAssetHeaderPv_30
_Z27Material_UpdatePicmipSingle12XAssetHeaderPv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_CollateTechniqueSets(XAssetHeader, void*)
_Z29Material_CollateTechniqueSets12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [eax+0x1000]
	mov ecx, [ebp+0x8]
	mov [eax+edx*4], ecx
	add edx, 0x1
	mov [eax+0x1000], edx
	pop ebp
	ret
	nop


;Material_ForEachTechniqueSet_LoadObj(void (*)(MaterialTechniqueSet*))
_Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, materialGlobals
_Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE_10
	mov [esp], eax
	call esi
_Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE_10:
	add ebx, 0x4
	cmp ebx, materialGlobals+0x1000
	jnz _Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Material_ForEachTechniqueSet_FastFile(void (*)(MaterialTechniqueSet*))
_Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1024
	mov ebx, [ebp+0x8]
	mov dword [ebp-0xc], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x100c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z29Material_CollateTechniqueSets12XAssetHeaderPv
	mov dword [esp], 0x5
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	mov eax, [ebp-0xc]
	test eax, eax
	jnz _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_10
_Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_20:
	add esp, 0x1024
	pop ebx
	pop ebp
	ret
_Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_10:
	sub eax, 0x1
	mov [ebp-0xc], eax
	mov eax, [ebp+eax*4-0x100c]
	mov [esp], eax
	call ebx
	mov eax, [ebp-0xc]
	test eax, eax
	jz _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_20
	sub eax, 0x1
	mov [ebp-0xc], eax
	mov eax, [ebp+eax*4-0x100c]
	mov [esp], eax
	call ebx
	mov eax, [ebp-0xc]
	test eax, eax
	jnz _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_10
	jmp _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE_20


;Material_FindTechniqueSet_LoadObj(char const*, MtlTechSetNotFoundBehavior)
_Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0x3ff
	mov eax, [ebx*4+materialGlobals+0x4]
	test eax, eax
	jz _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_10
_Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_30:
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_20
	add ebx, 0x1
	and ebx, 0x3ff
	mov eax, [ebx*4+materialGlobals+0x4]
	test eax, eax
	jnz _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_30
_Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_10:
	test edi, edi
	jnz _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_40
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_40:
	mov dword [ebp+0x8], _cstring_default
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z29Material_RegisterTechniqueSetPKc
_Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior_20:
	mov eax, [ebx*4+materialGlobals+0x4]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_Register_LoadObj(char const*, int)
_Z25Material_Register_LoadObjPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	mov edx, 0x200401
	mul edx
	mov ecx, ebx
	sub ecx, edx
	shr ecx, 1
	add edx, ecx
	shr edx, 0xa
	mov ecx, edx
	shl ecx, 0xb
	sub ecx, edx
	mov eax, ebx
	sub ax, cx
	movzx ebx, ax
	mov edi, ebx
_Z25Material_Register_LoadObjPKci_30:
	mov edx, rg
	mov eax, [edx+ebx*4+0x164]
	test eax, eax
	jz _Z25Material_Register_LoadObjPKci_10
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z25Material_Register_LoadObjPKci_20
	lea ecx, [ebx+0x1]
	mov eax, 0x200401
	mul ecx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0xa
	mov eax, edx
	shl eax, 0xb
	sub eax, edx
	sub cx, ax
	movzx ebx, cx
	cmp ebx, edi
	jnz _Z25Material_Register_LoadObjPKci_30
_Z25Material_Register_LoadObjPKci_10:
	mov ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z13Material_LoadPKci
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z25Material_Register_LoadObjPKci_40
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	mov edx, 0x200401
	mul edx
	mov ecx, ebx
	sub ecx, edx
	shr ecx, 1
	add edx, ecx
	shr edx, 0xa
	mov ecx, edx
	shl ecx, 0xb
	sub ecx, edx
	mov eax, ebx
	sub ax, cx
	movzx edi, ax
	mov ebx, edi
_Z25Material_Register_LoadObjPKci_60:
	mov edx, rg
	mov eax, [edx+edi*4+0x164]
	test eax, eax
	jz _Z25Material_Register_LoadObjPKci_50
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z25Material_Register_LoadObjPKci_50
	lea ecx, [edi+0x1]
	mov eax, 0x200401
	mul ecx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0xa
	mov eax, edx
	shl eax, 0xb
	sub eax, edx
	sub cx, ax
	movzx edi, cx
	cmp edi, ebx
	jnz _Z25Material_Register_LoadObjPKci_60
_Z25Material_Register_LoadObjPKci_50:
	mov esi, rgp
	mov dword [esi+0x2000], 0x1
	mov ecx, [ebp-0x1c]
	mov [ecx+0x14], di
	movzx eax, word [esi+0x2004]
	xor edx, edx
	mov ebx, eax
	and ebx, 0x7
	shl bl, 0x5
	mov [ebp-0x29], bl
	mov ebx, [ebp-0x1c]
	movzx ecx, byte [ebx+0xb]
	and cl, 0x1f
	or cl, [ebp-0x29]
	mov [ebx+0xb], cl
	shrd eax, edx, 0x3
	mov [ebx+0xc], al
	mov eax, [esi+0x2004]
	mov [esi+eax*4], ebx
	mov edx, rg
	mov [edx+edi*4+0x164], ebx
	add eax, 0x1
	mov [esi+0x2004], eax
	cmp eax, 0x800
	jz _Z25Material_Register_LoadObjPKci_70
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Material_Register_LoadObjPKci_40:
	mov ebx, rgp
	mov edi, [ebx+0x2030]
	test edi, edi
	jz _Z25Material_Register_LoadObjPKci_80
_Z25Material_Register_LoadObjPKci_90:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x8
	call _Z16Com_PrintWarningiPKcz
	mov [ebp+0xc], esi
	mov eax, [ebx+0x2030]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18Material_DuplicateP8MaterialPKc
_Z25Material_Register_LoadObjPKci_70:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _cstring_too_many_unique_
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Material_Register_LoadObjPKci_20:
	mov eax, rg
	mov ebx, [eax+ebx*4+0x164]
	mov [ebp-0x1c], ebx
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Material_Register_LoadObjPKci_80:
	mov dword [esp+0x4], _cstring_couldnt_load_mat
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z25Material_Register_LoadObjPKci_90
	add [eax], al


;Material_FreeTechniqueSet(XAssetHeader, void*)
_Z25Material_FreeTechniqueSet12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
	mov edx, alwaysfails
	mov [ebp-0x2c], edx
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_10
	cmp word [eax+0x6], 0x0
	jz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_20
	jmp _Z25Material_FreeTechniqueSet12XAssetHeaderPv_30
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_40:
	mov eax, [esi+0x8]
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_40
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_50
	jmp _Z25Material_FreeTechniqueSet12XAssetHeaderPv_60
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_70:
	mov eax, [esi+0x4]
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_70
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_90
	jmp _Z25Material_FreeTechniqueSet12XAssetHeaderPv_100
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_110:
	mov eax, [esi]
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov eax, [edi]
	test eax, eax
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_110
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_120
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl _Z25Material_FreeTechniqueSet12XAssetHeaderPv_130
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz _Z25Material_FreeTechniqueSet12XAssetHeaderPv_140
	mov eax, [ebp-0x1c]
	jmp _Z25Material_FreeTechniqueSet12XAssetHeaderPv_150
_Z25Material_FreeTechniqueSet12XAssetHeaderPv_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_Init()
_Z13Material_Initv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, useFastFile
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	jz _Z13Material_Initv_10
_Z13Material_Initv_60:
	mov esi, s_builtInMaterials+0x4
	jmp _Z13Material_Initv_20
_Z13Material_Initv_40:
	add esi, 0x8
	mov eax, s_builtInMaterials+0x194
	cmp eax, esi
	jz _Z13Material_Initv_30
_Z13Material_Initv_50:
	mov edi, useFastFile
_Z13Material_Initv_20:
	mov ebx, [esi]
	mov ecx, [esi-0x4]
	mov eax, [edi]
	mov edx, _Z26Material_Register_FastFilePKci
	cmp byte [eax+0xc], 0x0
	mov eax, _Z25Material_Register_LoadObjPKci
	cmovz edx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call edx
	mov [ebx], eax
	mov eax, [esi]
	mov ecx, [eax]
	test ecx, ecx
	jnz _Z13Material_Initv_40
	mov eax, [esi-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	add esi, 0x8
	mov eax, s_builtInMaterials+0x194
	cmp eax, esi
	jnz _Z13Material_Initv_50
_Z13Material_Initv_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13Material_Initv_10:
	mov dword [esp+0x8], 0x1004
	mov dword [esp+0x4], 0x0
	mov dword [esp], materialGlobals
	call memset
	call _Z29Material_PreLoadAllShaderTextv
	jmp _Z13Material_Initv_60


;Material_Alloc(int)
_Z14Material_Alloci:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop


;R_EnumMaterials(void (*)(XAssetHeader, void*), void*)
_Z15R_EnumMaterialsPFv12XAssetHeaderPvES0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, rg
	mov edx, ebx
	mov esi, ebx
_Z15R_EnumMaterialsPFv12XAssetHeaderPvES0__20:
	mov eax, [ebx+0x164]
	test eax, eax
	jz _Z15R_EnumMaterialsPFv12XAssetHeaderPvES0__10
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	mov edx, esi
_Z15R_EnumMaterialsPFv12XAssetHeaderPvES0__10:
	add ebx, 0x4
	lea eax, [edx+0x2000]
	cmp eax, ebx
	jnz _Z15R_EnumMaterialsPFv12XAssetHeaderPvES0__20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_GetName(Material*)
_Z16Material_GetNameP8Material:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;Material_LoadFile(char const*, int*)
_Z17Material_LoadFilePKcPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_materialss
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16FS_FOpenFileReadPKcPi
	add esp, 0x54
	pop ebx
	pop ebp
	ret


;Material_Register(char const*, int)
_Z17Material_RegisterPKci:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z26Material_Register_FastFilePKci
	cmp byte [eax+0xc], 0x0
	mov eax, _Z25Material_Register_LoadObjPKci
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Material_Shutdown()
_Z17Material_Shutdownv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z16Material_FreeAllv
	mov dword [esp+0x8], 0x1004
	mov dword [esp+0x4], 0x0
	mov dword [esp], materialGlobals
	call memset
	mov eax, rg
	add eax, 0x164
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, rgp
	mov dword [eax+0x2004], 0x0
	leave
	ret


;Material_DirtySort()
_Z18Material_DirtySortv:
	push ebp
	mov ebp, esp
	mov eax, rgp
	mov dword [eax+0x2000], 0x1
	pop ebp
	ret


;Material_Duplicate(Material*, char const*)
_Z18Material_DuplicateP8MaterialPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	mov edx, 0x200401
	mul edx
	mov ecx, ebx
	sub ecx, edx
	shr ecx, 1
	add edx, ecx
	shr edx, 0xa
	mov ecx, edx
	shl ecx, 0xb
	sub ecx, edx
	mov eax, ebx
	sub ax, cx
	movzx esi, ax
	mov ebx, rg
	mov edi, esi
_Z18Material_DuplicateP8MaterialPKc_30:
	mov eax, [ebx+esi*4+0x164]
	test eax, eax
	jz _Z18Material_DuplicateP8MaterialPKc_10
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z18Material_DuplicateP8MaterialPKc_20
	lea ecx, [esi+0x1]
	mov eax, 0x200401
	mul ecx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0xa
	mov eax, edx
	shl eax, 0xb
	sub eax, edx
	sub cx, ax
	movzx esi, cx
	cmp esi, edi
	jnz _Z18Material_DuplicateP8MaterialPKc_30
_Z18Material_DuplicateP8MaterialPKc_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	mov ebx, ecx
	not ebx
	lea eax, [ebx+0x50]
	mov [esp], eax
	call _Z18Hunk_AllocInternali
	mov edi, eax
	mov dword [esp+0x8], 0x50
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	lea eax, [edi+0x50]
	mov [edi], eax
	mov [esp+0x8], ebx
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax+0x3c]
	shl ebx, 0x3
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov [edi+0x4c], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4c]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x44]
	test ecx, ecx
	jz _Z18Material_DuplicateP8MaterialPKc_40
	movzx ebx, byte [eax+0x3a]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x2
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov [edi+0x44], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x44]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
_Z18Material_DuplicateP8MaterialPKc_40:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x48]
	test edx, edx
	jz _Z18Material_DuplicateP8MaterialPKc_50
	movzx ebx, byte [eax+0x3b]
	shl ebx, 0x5
	mov [esp], ebx
	call _Z18Hunk_AllocInternali
	mov [edi+0x48], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x48]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
_Z18Material_DuplicateP8MaterialPKc_50:
	mov eax, rgp
	mov dword [eax+0x2000], 0x1
	mov [edi+0x14], si
	movzx eax, word [eax+0x2004]
	xor edx, edx
	mov ebx, eax
	and ebx, 0x7
	shl bl, 0x5
	movzx ecx, byte [edi+0xb]
	and cl, 0x1f
	or cl, bl
	mov [edi+0xb], cl
	shrd eax, edx, 0x3
	mov [edi+0xc], al
	mov edx, rgp
	mov eax, [edx+0x2004]
	mov [edx+eax*4], edi
	mov edx, rg
	mov [edx+esi*4+0x164], edi
	add eax, 0x1
	mov ecx, rgp
	mov [ecx+0x2004], eax
	cmp eax, 0x800
	jz _Z18Material_DuplicateP8MaterialPKc_60
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Material_DuplicateP8MaterialPKc_60:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _cstring_too_many_unique_
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Material_DuplicateP8MaterialPKc_20:
	mov edi, [ebx+esi*4+0x164]
	mov ebx, [edi]
	mov dword [esp+0x8], 0x50
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	mov [edi], ebx
	mov eax, rgp
	mov dword [eax+0x2000], 0x1
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_IsDefault(Material const*)
_Z18Material_IsDefaultPK8Material:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, rgp
	mov edx, [eax+0x2030]
	mov eax, [ecx+0x44]
	cmp eax, [edx+0x44]
	jz _Z18Material_IsDefaultPK8Material_10
_Z18Material_IsDefaultPK8Material_20:
	xor eax, eax
	pop ebp
	ret
_Z18Material_IsDefaultPK8Material_10:
	mov eax, [ecx+0x48]
	cmp eax, [edx+0x48]
	jnz _Z18Material_IsDefaultPK8Material_20
	mov eax, [ecx+0x40]
	cmp eax, [edx+0x40]
	jnz _Z18Material_IsDefaultPK8Material_20
	mov eax, 0x1
	pop ebp
	ret
	add [eax], al


;Material_ReloadAll()
_Z18Material_ReloadAllv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z27Material_ReloadTechniqueSet12XAssetHeaderPv
	mov dword [esp], 0x5
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret


;Material_ReleaseAll()
_Z19Material_ReleaseAllv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z28Material_ReleaseTechniqueSet12XAssetHeaderPv
	mov dword [esp], 0x5
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret


;R_EnumTechniqueSets(void (*)(XAssetHeader, void*), void*)
_Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, materialGlobals
	mov esi, materialGlobals+0x1000
_Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0__20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0__10
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
_Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0__10:
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z19R_EnumTechniqueSetsPFv12XAssetHeaderPvES0__20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Load_BuildVertexDecl(MaterialVertexDeclaration**)
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x87c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x86c], eax
	mov edx, eax
	add edx, 0x4
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	mov eax, [edx+0xc]
	mov [ebp-0x30], eax
	mov eax, [edx+0x10]
	mov [ebp-0x2c], eax
	mov eax, [edx+0x14]
	mov [ebp-0x28], eax
	mov eax, [edx+0x18]
	mov [ebp-0x24], eax
	mov eax, [edx+0x1c]
	mov [ebp-0x20], eax
	mov dword [ebp-0x868], 0x0
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_110:
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_10
	mov edx, [ebp-0x868]
	lea eax, [edx+edx*2]
	lea eax, [eax+eax*8+s_streamSourceInfo]
	mov [ebp-0x864], eax
	mov ecx, [ebp-0x86c]
	movzx eax, byte [ecx]
	movzx edx, al
	mov [ebp-0x860], edx
	mov dword [ebp-0x1c], 0x0
	test al, al
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_20
	movzx eax, byte [ebp-0x3c]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x864]
	add edi, eax
	cmp byte [edi], 0xff
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_30
	mov dword [ebp-0x84c], 0x0
	lea ecx, [ebp-0x3b]
	mov [ebp-0x854], ecx
	mov edx, ecx
	jmp _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_40
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_60:
	mov ecx, [ebp-0x84c]
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_80:
	movzx eax, byte [edi]
	mov [ebp+ecx*8-0x83c], ax
	movzx eax, byte [edi+0x1]
	mov [ebp+ecx*8-0x83a], ax
	movzx eax, byte [edi+0x2]
	mov [ebp+ecx*8-0x838], al
	mov byte [ebp+ecx*8-0x837], 0x0
	mov edx, [ebp-0x85c]
	movzx eax, byte [edx]
	mov [ebp+ecx*8-0x836], al
	movzx eax, byte [edx+0x1]
	mov [ebp+ecx*8-0x835], al
	add dword [ebp-0x84c], 0x1
	mov ecx, [ebp-0x84c]
	cmp [ebp-0x860], ecx
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_50
	lea eax, [ebp-0x3a]
	lea edx, [ebp-0x3b]
	sub eax, edx
	mov ecx, [ebp-0x854]
	movzx eax, byte [ecx+eax]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x864]
	add edi, eax
	add ecx, 0x2
	mov [ebp-0x854], ecx
	cmp byte [edi], 0xff
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_30
	mov edx, ecx
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_40:
	movzx eax, byte [edx]
	lea eax, [eax+eax+s_streamDestInfo]
	mov [ebp-0x85c], eax
	mov ecx, [ebp-0x84c]
	test ecx, ecx
	jle _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_60
	mov ecx, [ebp-0x84c]
	sub ecx, 0x1
	mov eax, [ebp-0x84c]
	movzx edx, word [ebp+eax*8-0x844]
	movzx eax, byte [edi]
	cmp edx, eax
	jbe _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_60
	lea eax, [ebp+ecx*8-0x83c]
	mov [ebp-0x858], eax
	mov ebx, eax
	mov esi, [ebp-0x84c]
	jmp _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_70
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_90:
	mov esi, ecx
	mov ecx, [ebp-0x850]
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_70:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ebp+esi*8-0x83c], eax
	mov [ebp+esi*8-0x838], edx
	test ecx, ecx
	jle _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_80
	lea edx, [ecx-0x1]
	mov [ebp-0x850], edx
	mov edx, [ebp-0x84c]
	lea eax, [ebp+edx*8-0x84c]
	sub eax, [ebp-0x858]
	movzx edx, word [ebx+eax]
	sub ebx, 0x8
	movzx eax, byte [edi]
	cmp eax, edx
	jb _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_90
	jmp _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_80
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_10:
	mov eax, [ebp-0x868]
	mov edx, [ebp-0x86c]
	mov dword [edx+eax*4+0x24], 0x0
	add dword [ebp-0x868], 0x1
	cmp dword [ebp-0x868], 0x10
	jz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_100
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_120:
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x86c], eax
	jmp _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_110
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_30:
	xor eax, eax
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_130:
	mov edx, [ebp-0x868]
	mov ecx, [ebp-0x86c]
	mov [ecx+edx*4+0x24], eax
	add dword [ebp-0x868], 0x1
	cmp dword [ebp-0x868], 0x10
	jnz _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_120
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_100:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov byte [eax+0x2], 0x1
	add esp, 0x87c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_20:
	mov dword [ebp-0x860], 0x0
_Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_50:
	mov eax, [declEnd.158730]
	mov edx, [declEnd.158730+0x4]
	mov ecx, [ebp-0x860]
	mov [ebp+ecx*8-0x83c], eax
	mov [ebp+ecx*8-0x838], edx
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x83c]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x158]
	mov eax, [ebp-0x1c]
	jmp _Z20Load_BuildVertexDeclPP25MaterialVertexDeclaration_130
	nop


;Material_FinishLoading()
_Z22Material_FinishLoadingv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Material_RegisterHandle(char const*, int)
_Z23Material_RegisterHandlePKci:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	cmp byte [edx], 0x0
	jz _Z23Material_RegisterHandlePKci_10
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z26Material_Register_FastFilePKci
	cmp byte [eax+0xc], 0x0
	mov eax, _Z25Material_Register_LoadObjPKci
	cmovz ecx, eax
	pop ebx
	pop ebp
	jmp ecx
_Z23Material_RegisterHandlePKci_10:
	mov eax, rgp
	mov eax, [eax+0x2030]
	pop ebx
	pop ebp
	ret


;Material_UpdatePicmipAll()
_Z24Material_UpdatePicmipAllv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z18R_SyncRenderThreadv
	call _Z11R_SetPicmipv
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z27Material_UpdatePicmipSingle12XAssetHeaderPv
	mov dword [esp], 0x4
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret


;Material_FindTechniqueSet(char const*, MtlTechSetNotFoundBehavior)
_Z25Material_FindTechniqueSetPKc26MtlTechSetNotFoundBehavior:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior
	cmp byte [eax+0xc], 0x0
	mov eax, _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Material_Register_FastFile(char const*, int)
_Z26Material_Register_FastFilePKci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;Material_ForEachTechniqueSet(void (*)(MaterialTechniqueSet*))
_Z28Material_ForEachTechniqueSetPFvP20MaterialTechniqueSetE:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z37Material_ForEachTechniqueSet_FastFilePFvP20MaterialTechniqueSetE
	cmp byte [eax+0xc], 0x0
	mov eax, _Z36Material_ForEachTechniqueSet_LoadObjPFvP20MaterialTechniqueSetE
	cmovz ecx, eax
	pop ebp
	jmp ecx


;R_Cmd_ReloadMaterialTextures()
_Z28R_Cmd_ReloadMaterialTexturesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z28R_Cmd_ReloadMaterialTexturesv_10
	mov dword [esp+0x4], _cstring_usage_reloadmate
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z28R_Cmd_ReloadMaterialTexturesv_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_Cmd_ReloadMaterialTexturesv_10:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	mov edx, 0x200401
	mul edx
	mov ecx, ebx
	sub ecx, edx
	shr ecx, 1
	add edx, ecx
	shr edx, 0xa
	mov ecx, edx
	shl ecx, 0xb
	sub ecx, edx
	mov eax, ebx
	sub ax, cx
	movzx ebx, ax
	mov edi, ebx
_Z28R_Cmd_ReloadMaterialTexturesv_40:
	mov edx, rg
	mov eax, [edx+ebx*4+0x164]
	test eax, eax
	jz _Z28R_Cmd_ReloadMaterialTexturesv_20
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z28R_Cmd_ReloadMaterialTexturesv_30
	lea ecx, [ebx+0x1]
	mov eax, 0x200401
	mul ecx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0xa
	mov eax, edx
	shl eax, 0xb
	sub eax, edx
	sub cx, ax
	movzx ebx, cx
	cmp ebx, edi
	jnz _Z28R_Cmd_ReloadMaterialTexturesv_40
_Z28R_Cmd_ReloadMaterialTexturesv_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_reloadmaterialte
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28R_Cmd_ReloadMaterialTexturesv_30:
	mov eax, rg
	mov ebx, [eax+ebx*4+0x164]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz _Z28R_Cmd_ReloadMaterialTexturesv_20
	call _Z20RB_BindDefaultImagesv
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx+0x3a]
	movzx edi, al
	test al, al
	jz _Z28R_Cmd_ReloadMaterialTexturesv_50
	xor esi, esi
_Z28R_Cmd_ReloadMaterialTexturesv_90:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x44]
	test esi, esi
	jz _Z28R_Cmd_ReloadMaterialTexturesv_60
	mov edx, eax
	xor ecx, ecx
	xor ebx, ebx
_Z28R_Cmd_ReloadMaterialTexturesv_80:
	cmp byte [edx+0x7], 0xb
	jz _Z28R_Cmd_ReloadMaterialTexturesv_70
	mov eax, [edx+0x8]
	cmp ebx, eax
	jae _Z28R_Cmd_ReloadMaterialTexturesv_70
	cmp esi, eax
	jbe _Z28R_Cmd_ReloadMaterialTexturesv_70
	mov ebx, eax
_Z28R_Cmd_ReloadMaterialTexturesv_70:
	add ecx, 0x1
	add edx, 0xc
	cmp edi, ecx
	jnz _Z28R_Cmd_ReloadMaterialTexturesv_80
_Z28R_Cmd_ReloadMaterialTexturesv_120:
	test ebx, ebx
	jz _Z28R_Cmd_ReloadMaterialTexturesv_50
	mov [esp], ebx
	call _Z12Image_ReloadP8GfxImage
	mov esi, ebx
	jmp _Z28R_Cmd_ReloadMaterialTexturesv_90
_Z28R_Cmd_ReloadMaterialTexturesv_60:
	mov edx, eax
	xor ecx, ecx
	xor ebx, ebx
_Z28R_Cmd_ReloadMaterialTexturesv_110:
	cmp byte [edx+0x7], 0xb
	jz _Z28R_Cmd_ReloadMaterialTexturesv_100
	mov eax, [edx+0x8]
	cmp ebx, eax
	cmovb ebx, eax
_Z28R_Cmd_ReloadMaterialTexturesv_100:
	add ecx, 0x1
	add edx, 0xc
	cmp edi, ecx
	jnz _Z28R_Cmd_ReloadMaterialTexturesv_110
	jmp _Z28R_Cmd_ReloadMaterialTexturesv_120
	nop


;Material_FreeAllTechniqueSets()
_Z29Material_FreeAllTechniqueSetsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z25Material_FreeTechniqueSet12XAssetHeaderPv
	mov dword [esp], 0x5
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z29Material_FreeAllTechniqueSetsv_10
	leave
	ret
_Z29Material_FreeAllTechniqueSetsv_10:
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], materialGlobals+0x4
	call memset
	leave
	ret
	nop


;Material_RegisterTechniqueSet(char const*)
_Z29Material_RegisterTechniqueSetPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z34Material_FindTechniqueSet_FastFilePKc26MtlTechSetNotFoundBehavior
	cmp byte [eax+0xc], 0x0
	mov eax, _Z33Material_FindTechniqueSet_LoadObjPKc26MtlTechSetNotFoundBehavior
	cmovz edx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call edx
	mov ebx, eax
	test eax, eax
	jz _Z29Material_RegisterTechniqueSetPKc_10
_Z29Material_RegisterTechniqueSetPKc_20:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Material_RegisterTechniqueSetPKc_10:
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z25Material_LoadTechniqueSetPKc11GfxRenderer
	mov ebx, eax
	test eax, eax
	jz _Z29Material_RegisterTechniqueSetPKc_20
	mov [esp], esi
	call _Z15R_HashAssetNamePKc
	mov edi, eax
	and edi, 0x3ff
	mov eax, [edi*4+materialGlobals+0x4]
	test eax, eax
	jz _Z29Material_RegisterTechniqueSetPKc_30
_Z29Material_RegisterTechniqueSetPKc_40:
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z29Material_RegisterTechniqueSetPKc_30
	add edi, 0x1
	and edi, 0x3ff
	mov eax, [edi*4+materialGlobals+0x4]
	test eax, eax
	jnz _Z29Material_RegisterTechniqueSetPKc_40
_Z29Material_RegisterTechniqueSetPKc_30:
	mov eax, materialGlobals
	mov [eax+edi*4+0x4], ebx
	cmp byte [g_generateOverrideTechniques], 0x0
	jz _Z29Material_RegisterTechniqueSetPKc_20
	mov [esp], esi
	call _Z40Material_RegisterOverriddenTechniqueSetsPKc
	jmp _Z29Material_RegisterTechniqueSetPKc_20
	nop


;Load_CreateMaterialPixelShader(GfxPixelShaderLoadDef*, MaterialPixelShader*)
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_10
	mov eax, r_rendererInUse
	mov edx, [eax]
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x6]
	cmp eax, [edx+0xc]
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_20
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_10:
	mov dword [ebx+0x4], 0x0
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_20:
	mov edx, [ebx]
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea esi, [ebp-0x30]
	mov [esp], esi
	call _ZNSsC1EPKcRKSaIcE
	mov dword [esp+0xc], 0x5
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hlsl
	mov [esp], esi
	call _ZNKSs4findEPKcmm
	mov edi, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x4c], edx
	cmp esi, edx
	jnz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_30
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_80:
	cmp edi, 0xffffffff
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_40
	mov edx, [ebx]
	lea eax, [ebp-0x1e]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea esi, [ebp-0x2c]
	mov [esp], esi
	call _ZNSsC1EPKcRKSaIcE
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	lea edi, [ebp-0x34]
	mov [esp], edi
	call _ZNSsC1ERKSsmm
	mov esi, [ebp-0x2c]
	sub esi, 0xc
	cmp [ebp-0x4c], esi
	jnz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_50
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_90:
	mov [esp+0x4], edi
	lea esi, [ebp-0x28]
	mov [esp], esi
	call _ZNSsC1ERKSs
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_ps
	mov [esp], esi
	call _ZNSs6appendEPKcm
	lea eax, [ebp-0x24]
	mov [esp+0x24], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x20], eax
	lea eax, [ebp-0x38]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x28]
	mov [esp], eax
	call D3DXCompileShader
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_60
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_100:
	mov edx, [ebp-0x38]
	test edx, edx
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_70
	mov edi, dx_ctx
	mov eax, [edi+0x8]
	mov eax, [eax]
	mov esi, [eax+0x1a8]
	add ebx, 0x4
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], edx
	call eax
	mov edx, [edi+0x8]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edx
	call esi
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_70:
	mov ebx, [ebp-0x34]
	sub ebx, 0xc
	cmp [ebp-0x4c], ebx
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_40
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_40
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_40
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_80
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_50:
	lea eax, [esi+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_90
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_90
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_100
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_100
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_110
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130:
	mov eax, [ebp-0x34]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_120
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_160:
	mov ebx, eax
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
	mov ebx, eax
	mov eax, [ebp-0x2c]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150:
	mov ebx, eax
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_120:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
_Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_130
	mov [esp], eax
	call _Unwind_Resume
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_160
	mov ebx, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_140
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_160
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150
	jmp _Z30Load_CreateMaterialPixelShaderP21GfxPixelShaderLoadDefP19MaterialPixelShader_150


;Load_CreateMaterialVertexShader(GfxVertexShaderLoadDef*, MaterialVertexShader*)
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_10
	mov eax, r_rendererInUse
	mov edx, [eax]
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x6]
	cmp eax, [edx+0xc]
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_20
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_10:
	mov dword [ebx+0x4], 0x0
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_20:
	mov edx, [ebx]
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea esi, [ebp-0x30]
	mov [esp], esi
	call _ZNSsC1EPKcRKSaIcE
	mov dword [esp+0xc], 0x5
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_hlsl
	mov [esp], esi
	call _ZNKSs4findEPKcmm
	mov edi, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	mov edx, [0xd5cc01c]
	mov [ebp-0x4c], edx
	cmp esi, edx
	jnz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_30
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_80:
	cmp edi, 0xffffffff
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_40
	mov edx, [ebx]
	lea eax, [ebp-0x1e]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea esi, [ebp-0x2c]
	mov [esp], esi
	call _ZNSsC1EPKcRKSaIcE
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	lea edi, [ebp-0x34]
	mov [esp], edi
	call _ZNSsC1ERKSsmm
	mov esi, [ebp-0x2c]
	sub esi, 0xc
	cmp [ebp-0x4c], esi
	jnz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_50
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_90:
	mov [esp+0x4], edi
	lea esi, [ebp-0x28]
	mov [esp], esi
	call _ZNSsC1ERKSs
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_vs
	mov [esp], esi
	call _ZNSs6appendEPKcm
	lea eax, [ebp-0x24]
	mov [esp+0x24], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x20], eax
	lea eax, [ebp-0x38]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x28]
	mov [esp], eax
	call D3DXCompileShader
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_60
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_100:
	mov edx, [ebp-0x38]
	test edx, edx
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_70
	mov edi, dx_ctx
	mov eax, [edi+0x8]
	mov eax, [eax]
	mov esi, [eax+0x16c]
	add ebx, 0x4
	mov eax, [edx]
	mov eax, [eax+0xc]
	mov [esp], edx
	call eax
	mov edx, [edi+0x8]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edx
	call esi
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_70:
	mov ebx, [ebp-0x34]
	sub ebx, 0xc
	cmp [ebp-0x4c], ebx
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_40
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_40
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_40
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_80
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_50:
	lea eax, [esi+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_90
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_90
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_100
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_100
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_110
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130:
	mov eax, [ebp-0x34]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_120
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_160:
	mov ebx, eax
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
	mov ebx, eax
	mov eax, [ebp-0x2c]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150:
	mov ebx, eax
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_120:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
_Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_130
	mov [esp], eax
	call _Unwind_Resume
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_160
	mov ebx, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_140
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_160
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150
	jmp _Z31Load_CreateMaterialVertexShaderP22GfxVertexShaderLoadDefP20MaterialVertexShader_150


;Material_ReleaseTechniqueSetResources(MaterialTechniqueSet*)
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x28], 0x0
	mov edx, alwaysfails
	mov [ebp-0x2c], edx
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_10
	cmp word [eax+0x6], 0x0
	jz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_20
	jmp _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_30
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_40:
	mov eax, [esi+0x8]
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_40
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_50
	jmp _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_60
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_70:
	mov eax, [esi+0x4]
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_70
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_90
	jmp _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_100
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_110:
	mov eax, [esi]
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov eax, [edi]
	test eax, eax
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_110
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_120
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_130
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_140
	mov eax, [ebp-0x1c]
	jmp _Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_150
_Z37Material_ReleaseTechniqueSetResourcesP20MaterialTechniqueSet_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_PreventOverrideTechniqueGeneration()
_Z43Material_PreventOverrideTechniqueGenerationv:
	push ebp
	mov ebp, esp
	mov byte [g_generateOverrideTechniques], 0x0
	pop ebp
	ret


;Initialized global or static variables of r_material:
SECTION .data
g_generateOverrideTechniques: dd 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_material:
SECTION .rdata
s_builtInMaterials: dd _cstring_default1, 0xd2418b0, _cstring_white, 0xd2418b4, _cstring_additive, 0xd2418b8, _cstring_glare_blind, 0xd2418e4, _cstring_point, 0xd2418bc, _cstring_line, 0xd2418c0, _cstring_line_nodepth, 0xd2418c4, _cstring_clear_alpha_sten, 0xd2418c8, _cstring_depthprepass, 0xd2418e0, _cstring_shadowclear, 0xd2418cc, _cstring_shadowcookieover, 0xd2418d0, _cstring_shadowcookieblur, 0xd2418d4, _cstring_shadowcaster, 0xd2418d8, _cstring_shadowoverlay, 0xd2418dc, _cstring_stencilshadow, 0xd241904, _cstring_stencildisplay, 0xd241908, _cstring_floatz_display, 0xd24190c, _cstring_shellshock, 0xd241970, _cstring_shellshock_flash, 0xd241974, _cstring_color_channel_mi, 0xd241910, _cstring_frame_color_debu, 0xd241914, _cstring_frame_alpha_debu, 0xd241918, _cstring_feedbackblend, 0xd241928, _cstring_feedbackfilmblen, 0xd24192c, _cstring_feedbackreplace, 0xd241924, _cstring_cinematic, 0xd241930, _cstring_dof_downsample, 0xd241934, _cstring_dof_near_coc, 0xd241938, _cstring_small_blur, 0xd24193c, _cstring_postfx_dof, 0xd241940, _cstring_postfx_dof_color, 0xd241944, _cstring_postfx_color, 0xd241948, _cstring_postfx, 0xd24194c, _cstring_glow_consistent_, 0xd241978, _cstring_glow_apply_bloom, 0xd24197c, _cstring_filter_symmetric, 0xd241950, _cstring_filter_symmetric1, 0xd241954, _cstring_filter_symmetric2, 0xd241958, _cstring_filter_symmetric3, 0xd24195c, _cstring_filter_symmetric4, 0xd241960, _cstring_filter_symmetric5, 0xd241964, _cstring_filter_symmetric6, 0xd241968, _cstring_filter_symmetric7, 0xd24196c, _cstring_pixel_cost_add_d, 0xd2418e8, _cstring_pixel_cost_add_d1, 0xd2418ec, _cstring_pixel_cost_add_d2, 0xd2418f0, _cstring_pixel_cost_add_d3, 0xd2418f4, _cstring_pixel_cost_add_d4, 0xd2418f8, _cstring_pixel_cost_add_n, 0xd2418fc, _cstring_pixel_cost_color, 0xd241900, 0x0, 0x0, 0x0, 0x0
s_streamSourceInfo: dd 0x30000, 0x14000410, 0x51c0001, 0xff0000ff, 0xff0000, 0xff00, 0xff, 0x10000300, 0x5140004, 0x51800, 0xff051c, 0xff00, 0xff0000ff, 0x0, 0x4100003, 0x31400, 0x28000524, 0xff05, 0xff0000ff, 0xff0000, 0x3000000, 0x41000, 0x24000314, 0x5280005, 0xff010001, 0xff0000, 0xff00, 0x30000, 0x14000410, 0x5240003, 0x1052800, 0xff0100, 0x8080100, 0xff, 0x10000300, 0x3140004, 0x52400, 0x10528, 0xff03, 0xff0000ff, 0x0, 0x4100003, 0x31400, 0x28000524, 0x3000105, 0x10000ff, 0xff0810, 0x3000000, 0x41000, 0x24000314, 0x5280005, 0xff030001, 0x10010000, 0x8140108, 0x30000, 0x14000410, 0x5240003, 0x1052800, 0x10010300, 0xff01, 0xff, 0x10000300, 0x3140004, 0x52400, 0x10528, 0x1100103, 0xff081801, 0x0, 0x4100003, 0x31400, 0x28000524, 0x3000105, 0x1011001, 0x1c010818, 0x3000008, 0x41000, 0x24000314, 0x5280005, 0x1030001, 0xff0310, 0xff00, 0x30000, 0x14000410, 0x5240003, 0x1052800, 0x10010300, 0x8200103, 0xff, 0x10000300, 0x3140004, 0x52400, 0x10528, 0x3100103, 0x1082001, 0x824, 0xff02, 0xff010c00, 0xff0000, 0xff00, 0xff0000ff, 0xff0000, 0x2000000, 0x40c00, 0x14000510, 0x5180005, 0xff051c00, 0xff0000, 0xff00
s_streamDestInfo: dd 0x30000, 0x10a000a, 0x1050005, 0x3050205, 0x5050405, 0x7050605
declEnd.158730: dd 0xff, 0x11, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_material:
SECTION .bss
materialGlobals: resb 0x1080


;All cstrings:
SECTION .rdata
_cstring_default:		db "default",0
_cstring_warning_could_no:		db "WARNING: Could not find material ",27h,"%s",27h,0ah,0
_cstring_too_many_unique_:		db "Too many unique materials (%i or more)",0ah,0
_cstring_couldnt_load_mat:		db "couldn",27h,"t load material ",27h,"$default",27h,0
_cstring_could_not_find_m:		db "Could not find material ",27h,"%s",27h,0
_cstring_materialss:		db "materials/%s",0
_cstring_usage_reloadmate:		db "Usage: reloadmaterialtextures <materialname>",0ah,0
_cstring_reloadmaterialte:		db "ReloadMaterialTextures: Material ",27h,"%s",27h," is not currently loaded.",0ah,0
_cstring_hlsl:		db ".hlsl",0
_cstring_ps:		db ".ps",0
_cstring_vs:		db ".vs",0
_cstring_default1:		db "$default",0
_cstring_white:		db "white",0
_cstring_additive:		db "$additive",0
_cstring_glare_blind:		db "$glare_blind",0
_cstring_point:		db "$point",0
_cstring_line:		db "$line",0
_cstring_line_nodepth:		db "$line_nodepth",0
_cstring_clear_alpha_sten:		db "clear_alpha_stencil",0
_cstring_depthprepass:		db "depthprepass",0
_cstring_shadowclear:		db "shadowclear",0
_cstring_shadowcookieover:		db "shadowcookieoverlay",0
_cstring_shadowcookieblur:		db "shadowcookieblur",0
_cstring_shadowcaster:		db "shadowcaster",0
_cstring_shadowoverlay:		db "shadowoverlay",0
_cstring_stencilshadow:		db "stencilshadow",0
_cstring_stencildisplay:		db "stencildisplay",0
_cstring_floatz_display:		db "floatz_display",0
_cstring_shellshock:		db "shellshock",0
_cstring_shellshock_flash:		db "shellshock_flashed",0
_cstring_color_channel_mi:		db "color_channel_mixer",0
_cstring_frame_color_debu:		db "frame_color_debug",0
_cstring_frame_alpha_debu:		db "frame_alpha_debug",0
_cstring_feedbackblend:		db "feedbackblend",0
_cstring_feedbackfilmblen:		db "feedbackfilmblend",0
_cstring_feedbackreplace:		db "feedbackreplace",0
_cstring_cinematic:		db "cinematic",0
_cstring_dof_downsample:		db "dof_downsample",0
_cstring_dof_near_coc:		db "dof_near_coc",0
_cstring_small_blur:		db "small_blur",0
_cstring_postfx_dof:		db "postfx_dof",0
_cstring_postfx_dof_color:		db "postfx_dof_color",0
_cstring_postfx_color:		db "postfx_color",0
_cstring_postfx:		db "postfx",0
_cstring_glow_consistent_:		db "glow_consistent_setup",0
_cstring_glow_apply_bloom:		db "glow_apply_bloom",0
_cstring_filter_symmetric:		db "filter_symmetric_1",0
_cstring_filter_symmetric1:		db "filter_symmetric_2",0
_cstring_filter_symmetric2:		db "filter_symmetric_3",0
_cstring_filter_symmetric3:		db "filter_symmetric_4",0
_cstring_filter_symmetric4:		db "filter_symmetric_5",0
_cstring_filter_symmetric5:		db "filter_symmetric_6",0
_cstring_filter_symmetric6:		db "filter_symmetric_7",0
_cstring_filter_symmetric7:		db "filter_symmetric_8",0
_cstring_pixel_cost_add_d:		db "pixel_cost_add_depth_always",0
_cstring_pixel_cost_add_d1:		db "pixel_cost_add_depth_disable",0
_cstring_pixel_cost_add_d2:		db "pixel_cost_add_depth_equal",0
_cstring_pixel_cost_add_d3:		db "pixel_cost_add_depth_less",0
_cstring_pixel_cost_add_d4:		db "pixel_cost_add_depthwrite",0
_cstring_pixel_cost_add_n:		db "pixel_cost_add_nodepthwrite",0
_cstring_pixel_cost_color:		db "pixel_cost_color_code",0



;All constant floats and doubles:
SECTION .rdata

