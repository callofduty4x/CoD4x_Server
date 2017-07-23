;Imports of r_material:
	extern DB_FindXAssetHeader
	extern DB_IsXAssetDefault
	extern alwaysfails
	extern r_loadForRenderer
	extern dx_ctx
	extern Image_UpdatePicmip
	extern DB_EnumXAssets
	extern R_HashAssetName
	extern Q_stricmp
	extern rg
	extern strcmp
	extern Material_Load
	extern rgp
	extern Com_PrintWarning
	extern Com_Error
	extern useFastFile
	extern memset
	extern Material_PreLoadAllShaderText
	extern Hunk_AllocInternal
	extern Com_sprintf
	extern FS_FOpenFileRead
	extern Material_FreeAll
	extern memcpy
	extern R_SyncRenderThread
	extern R_SetPicmip
	extern cmd_args
	extern Com_Printf
	extern va
	extern RB_BindDefaultImages
	extern Image_Reload
	extern r_rendererInUse
	extern Material_LoadTechniqueSet
	extern Material_RegisterOverriddenTechniqueSets
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
	global Material_FindTechniqueSet_FastFile
	global Material_ReleaseTechniqueSet
	global Material_ReloadTechniqueSet
	global Material_UpdatePicmipSingle
	global Material_CollateTechniqueSets
	global Material_ForEachTechniqueSet_LoadObj
	global Material_ForEachTechniqueSet_FastFile
	global Material_FindTechniqueSet_LoadObj
	global Material_Register_LoadObj
	global Material_FreeTechniqueSet
	global Material_Init
	global Material_Alloc
	global R_EnumMaterials
	global Material_GetName
	global Material_LoadFile
	global Material_Register
	global Material_Shutdown
	global Material_DirtySort
	global Material_Duplicate
	global Material_IsDefault
	global Material_ReloadAll
	global Material_ReleaseAll
	global R_EnumTechniqueSets
	global Load_BuildVertexDecl
	global Material_FinishLoading
	global Material_RegisterHandle
	global Material_UpdatePicmipAll
	global Material_FindTechniqueSet
	global Material_Register_FastFile
	global Material_ForEachTechniqueSet
	global R_Cmd_ReloadMaterialTextures
	global Material_FreeAllTechniqueSets
	global Material_RegisterTechniqueSet
	global Load_CreateMaterialPixelShader
	global Load_CreateMaterialVertexShader
	global Material_ReleaseTechniqueSetResources
	global Material_PreventOverrideTechniqueGeneration


SECTION .text


;Material_FindTechniqueSet_FastFile(char const*, MtlTechSetNotFoundBehavior)
Material_FindTechniqueSet_FastFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call DB_FindXAssetHeader
	mov ebx, eax
	mov eax, [ebp+0xc]
	test eax, eax
	jz Material_FindTechniqueSet_FastFile_10
Material_FindTechniqueSet_FastFile_20:
	mov eax, ebx
Material_FindTechniqueSet_FastFile_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Material_FindTechniqueSet_FastFile_10:
	mov [esp+0x4], esi
	mov dword [esp], 0x5
	call DB_IsXAssetDefault
	test al, al
	jz Material_FindTechniqueSet_FastFile_20
	xor eax, eax
	jmp Material_FindTechniqueSet_FastFile_30
	nop


;Material_ReleaseTechniqueSet(XAssetHeader, void*)
Material_ReleaseTechniqueSet:
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
Material_ReleaseTechniqueSet_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz Material_ReleaseTechniqueSet_10
	cmp word [eax+0x6], 0x0
	jz Material_ReleaseTechniqueSet_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
Material_ReleaseTechniqueSet_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz Material_ReleaseTechniqueSet_20
	jmp Material_ReleaseTechniqueSet_30
Material_ReleaseTechniqueSet_40:
	mov eax, [esi+0x8]
Material_ReleaseTechniqueSet_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz Material_ReleaseTechniqueSet_40
Material_ReleaseTechniqueSet_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz Material_ReleaseTechniqueSet_50
	jmp Material_ReleaseTechniqueSet_60
Material_ReleaseTechniqueSet_70:
	mov eax, [esi+0x4]
Material_ReleaseTechniqueSet_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz Material_ReleaseTechniqueSet_70
Material_ReleaseTechniqueSet_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz Material_ReleaseTechniqueSet_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
Material_ReleaseTechniqueSet_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz Material_ReleaseTechniqueSet_90
	jmp Material_ReleaseTechniqueSet_100
Material_ReleaseTechniqueSet_110:
	mov eax, [esi]
Material_ReleaseTechniqueSet_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov ecx, [edi]
	test ecx, ecx
	jnz Material_ReleaseTechniqueSet_110
Material_ReleaseTechniqueSet_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz Material_ReleaseTechniqueSet_120
Material_ReleaseTechniqueSet_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl Material_ReleaseTechniqueSet_130
Material_ReleaseTechniqueSet_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz Material_ReleaseTechniqueSet_140
	mov eax, [ebp-0x1c]
	jmp Material_ReleaseTechniqueSet_150
Material_ReleaseTechniqueSet_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_ReloadTechniqueSet(XAssetHeader, void*)
Material_ReloadTechniqueSet:
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
Material_ReloadTechniqueSet_190:
	mov edx, [edx+0xc]
	mov [ebp-0x880], edx
	test edx, edx
	jz Material_ReloadTechniqueSet_10
	cmp word [edx+0x6], 0x0
	jz Material_ReloadTechniqueSet_10
	mov dword [ebp-0x87c], 0x0
	mov edx, [ebp-0x880]
	jmp Material_ReloadTechniqueSet_20
Material_ReloadTechniqueSet_50:
	add dword [ebp-0x87c], 0x1
	mov ecx, [ebp-0x880]
	movzx eax, word [ecx+0x6]
	cmp [ebp-0x87c], eax
	jge Material_ReloadTechniqueSet_10
Material_ReloadTechniqueSet_170:
	mov edx, ecx
Material_ReloadTechniqueSet_20:
	mov ecx, [ebp-0x87c]
	lea eax, [ecx+ecx*4]
	lea ebx, [edx+eax*4]
	lea ecx, [ebx+0x8]
	mov [ebp-0x878], ecx
	mov eax, [ecx+0x8]
	mov esi, [eax+0x4]
	test esi, esi
	jz Material_ReloadTechniqueSet_30
	mov edx, ecx
Material_ReloadTechniqueSet_230:
	mov eax, [edx+0x4]
	mov edx, [eax+0x4]
	test edx, edx
	jz Material_ReloadTechniqueSet_40
Material_ReloadTechniqueSet_220:
	mov eax, [ebx+0x8]
	cmp byte [eax+0x2], 0x0
	jnz Material_ReloadTechniqueSet_50
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
Material_ReloadTechniqueSet_160:
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Material_ReloadTechniqueSet_60
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
	jz Material_ReloadTechniqueSet_70
	movzx eax, byte [ebp-0x3c]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x870]
	add edi, eax
	cmp byte [edi], 0xff
	jz Material_ReloadTechniqueSet_80
	mov dword [ebp-0x86c], 0x0
	lea ecx, [ebp-0x3b]
	mov [ebp-0x85c], ecx
	jmp Material_ReloadTechniqueSet_90
Material_ReloadTechniqueSet_120:
	mov ecx, ebx
Material_ReloadTechniqueSet_140:
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
	jz Material_ReloadTechniqueSet_100
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
	jz Material_ReloadTechniqueSet_80
	mov ecx, edx
Material_ReloadTechniqueSet_90:
	movzx eax, byte [ecx]
	lea eax, [eax+eax+s_streamDestInfo]
	mov [ebp-0x868], eax
	mov eax, [ebp-0x86c]
	test eax, eax
	jle Material_ReloadTechniqueSet_110
	mov ecx, [ebp-0x86c]
	sub ecx, 0x1
	movzx edx, byte [edi]
	mov ebx, [ebp-0x86c]
	movzx eax, word [ebp+ebx*8-0x844]
	cmp edx, eax
	jae Material_ReloadTechniqueSet_120
	lea ebx, [ebp+ecx*8-0x83c]
	mov [ebp-0x860], ebx
	mov esi, [ebp-0x86c]
	jmp Material_ReloadTechniqueSet_130
Material_ReloadTechniqueSet_150:
	mov esi, ecx
	mov ecx, [ebp-0x854]
Material_ReloadTechniqueSet_130:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ebp+esi*8-0x83c], eax
	mov [ebp+esi*8-0x838], edx
	test ecx, ecx
	jle Material_ReloadTechniqueSet_140
	lea eax, [ecx-0x1]
	mov [ebp-0x854], eax
	mov edx, [ebp-0x86c]
	lea eax, [ebp+edx*8-0x84c]
	sub eax, [ebp-0x860]
	movzx edx, word [eax+ebx]
	sub ebx, 0x8
	movzx eax, byte [edi]
	cmp eax, edx
	jb Material_ReloadTechniqueSet_150
	jmp Material_ReloadTechniqueSet_140
Material_ReloadTechniqueSet_60:
	mov ecx, [ebp-0x878]
	mov eax, [ecx]
	mov ebx, [ebp-0x874]
	mov dword [eax+ebx*4+0x24], 0x0
Material_ReloadTechniqueSet_200:
	add dword [ebp-0x874], 0x1
	cmp dword [ebp-0x874], 0x10
	jnz Material_ReloadTechniqueSet_160
	mov edx, [ebp-0x878]
	mov eax, [edx]
	mov byte [eax+0x2], 0x1
	add dword [ebp-0x87c], 0x1
	mov ecx, [ebp-0x880]
	movzx eax, word [ecx+0x6]
	cmp [ebp-0x87c], eax
	jl Material_ReloadTechniqueSet_170
Material_ReloadTechniqueSet_10:
	add dword [ebp-0x858], 0x4
	sub dword [ebp-0x864], 0x1
	jz Material_ReloadTechniqueSet_180
	mov edx, [ebp-0x858]
	jmp Material_ReloadTechniqueSet_190
Material_ReloadTechniqueSet_110:
	mov ecx, [ebp-0x86c]
	jmp Material_ReloadTechniqueSet_140
Material_ReloadTechniqueSet_80:
	xor eax, eax
Material_ReloadTechniqueSet_210:
	mov ebx, [ebp-0x874]
	mov edx, [ebp-0x84c]
	mov [edx+ebx*4+0x24], eax
	jmp Material_ReloadTechniqueSet_200
Material_ReloadTechniqueSet_70:
	mov dword [ebp-0x850], 0x0
Material_ReloadTechniqueSet_100:
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
	jmp Material_ReloadTechniqueSet_210
Material_ReloadTechniqueSet_40:
	mov [esp+0x4], eax
	add eax, 0x8
	mov [esp], eax
	call Load_CreateMaterialVertexShader
	jmp Material_ReloadTechniqueSet_220
Material_ReloadTechniqueSet_30:
	mov [esp+0x4], eax
	add eax, 0x8
	mov [esp], eax
	call Load_CreateMaterialPixelShader
	mov edx, [ebp-0x878]
	jmp Material_ReloadTechniqueSet_230
Material_ReloadTechniqueSet_180:
	add esp, 0x88c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_UpdatePicmipSingle(XAssetHeader, void*)
Material_UpdatePicmipSingle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x3a], 0x0
	jz Material_UpdatePicmipSingle_10
	xor esi, esi
	xor ebx, ebx
Material_UpdatePicmipSingle_30:
	mov eax, ebx
	add eax, [edi+0x44]
	cmp byte [eax+0x7], 0xb
	jz Material_UpdatePicmipSingle_20
	mov eax, [eax+0x8]
	test eax, eax
	jz Material_UpdatePicmipSingle_20
	mov [esp], eax
	call Image_UpdatePicmip
Material_UpdatePicmipSingle_20:
	add esi, 0x1
	add ebx, 0xc
	movzx eax, byte [edi+0x3a]
	cmp eax, esi
	jg Material_UpdatePicmipSingle_30
Material_UpdatePicmipSingle_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_CollateTechniqueSets(XAssetHeader, void*)
Material_CollateTechniqueSets:
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
Material_ForEachTechniqueSet_LoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, materialGlobals
Material_ForEachTechniqueSet_LoadObj_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz Material_ForEachTechniqueSet_LoadObj_10
	mov [esp], eax
	call esi
Material_ForEachTechniqueSet_LoadObj_10:
	add ebx, 0x4
	cmp ebx, materialGlobals+0x1000
	jnz Material_ForEachTechniqueSet_LoadObj_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Material_ForEachTechniqueSet_FastFile(void (*)(MaterialTechniqueSet*))
Material_ForEachTechniqueSet_FastFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x1024
	mov ebx, [ebp+0x8]
	mov dword [ebp-0xc], 0x0
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x100c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], Material_CollateTechniqueSets
	mov dword [esp], 0x5
	call DB_EnumXAssets
	mov eax, [ebp-0xc]
	test eax, eax
	jnz Material_ForEachTechniqueSet_FastFile_10
Material_ForEachTechniqueSet_FastFile_20:
	add esp, 0x1024
	pop ebx
	pop ebp
	ret
Material_ForEachTechniqueSet_FastFile_10:
	sub eax, 0x1
	mov [ebp-0xc], eax
	mov eax, [ebp+eax*4-0x100c]
	mov [esp], eax
	call ebx
	mov eax, [ebp-0xc]
	test eax, eax
	jz Material_ForEachTechniqueSet_FastFile_20
	sub eax, 0x1
	mov [ebp-0xc], eax
	mov eax, [ebp+eax*4-0x100c]
	mov [esp], eax
	call ebx
	mov eax, [ebp-0xc]
	test eax, eax
	jnz Material_ForEachTechniqueSet_FastFile_10
	jmp Material_ForEachTechniqueSet_FastFile_20


;Material_FindTechniqueSet_LoadObj(char const*, MtlTechSetNotFoundBehavior)
Material_FindTechniqueSet_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov [esp], esi
	call R_HashAssetName
	mov ebx, eax
	and ebx, 0x3ff
	mov eax, [ebx*4+materialGlobals+0x4]
	test eax, eax
	jz Material_FindTechniqueSet_LoadObj_10
Material_FindTechniqueSet_LoadObj_30:
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Material_FindTechniqueSet_LoadObj_20
	add ebx, 0x1
	and ebx, 0x3ff
	mov eax, [ebx*4+materialGlobals+0x4]
	test eax, eax
	jnz Material_FindTechniqueSet_LoadObj_30
Material_FindTechniqueSet_LoadObj_10:
	test edi, edi
	jnz Material_FindTechniqueSet_LoadObj_40
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_FindTechniqueSet_LoadObj_40:
	mov dword [ebp+0x8], _cstring_default
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Material_RegisterTechniqueSet
Material_FindTechniqueSet_LoadObj_20:
	mov eax, [ebx*4+materialGlobals+0x4]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Material_Register_LoadObj(char const*, int)
Material_Register_LoadObj:
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
	call R_HashAssetName
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
Material_Register_LoadObj_30:
	mov edx, rg
	mov eax, [edx+ebx*4+0x164]
	test eax, eax
	jz Material_Register_LoadObj_10
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Material_Register_LoadObj_20
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
	jnz Material_Register_LoadObj_30
Material_Register_LoadObj_10:
	mov ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov [esp], esi
	call Material_Load
	mov [ebp-0x1c], eax
	test eax, eax
	jz Material_Register_LoadObj_40
	mov [esp], esi
	call R_HashAssetName
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
Material_Register_LoadObj_60:
	mov edx, rg
	mov eax, [edx+edi*4+0x164]
	test eax, eax
	jz Material_Register_LoadObj_50
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Material_Register_LoadObj_50
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
	jnz Material_Register_LoadObj_60
Material_Register_LoadObj_50:
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
	jz Material_Register_LoadObj_70
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_Register_LoadObj_40:
	mov ebx, rgp
	mov edi, [ebx+0x2030]
	test edi, edi
	jz Material_Register_LoadObj_80
Material_Register_LoadObj_90:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0x8
	call Com_PrintWarning
	mov [ebp+0xc], esi
	mov eax, [ebx+0x2030]
	mov [ebp+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Material_Duplicate
Material_Register_LoadObj_70:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _cstring_too_many_unique_
	mov dword [esp], 0x1
	call Com_Error
	mov eax, [ebp-0x1c]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_Register_LoadObj_20:
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
Material_Register_LoadObj_80:
	mov dword [esp+0x4], _cstring_couldnt_load_mat
	mov dword [esp], 0x1
	call Com_Error
	jmp Material_Register_LoadObj_90
	add [eax], al


;Material_FreeTechniqueSet(XAssetHeader, void*)
Material_FreeTechniqueSet:
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
Material_FreeTechniqueSet_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz Material_FreeTechniqueSet_10
	cmp word [eax+0x6], 0x0
	jz Material_FreeTechniqueSet_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
Material_FreeTechniqueSet_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz Material_FreeTechniqueSet_20
	jmp Material_FreeTechniqueSet_30
Material_FreeTechniqueSet_40:
	mov eax, [esi+0x8]
Material_FreeTechniqueSet_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz Material_FreeTechniqueSet_40
Material_FreeTechniqueSet_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz Material_FreeTechniqueSet_50
	jmp Material_FreeTechniqueSet_60
Material_FreeTechniqueSet_70:
	mov eax, [esi+0x4]
Material_FreeTechniqueSet_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz Material_FreeTechniqueSet_70
Material_FreeTechniqueSet_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz Material_FreeTechniqueSet_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
Material_FreeTechniqueSet_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz Material_FreeTechniqueSet_90
	jmp Material_FreeTechniqueSet_100
Material_FreeTechniqueSet_110:
	mov eax, [esi]
Material_FreeTechniqueSet_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov eax, [edi]
	test eax, eax
	jnz Material_FreeTechniqueSet_110
Material_FreeTechniqueSet_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz Material_FreeTechniqueSet_120
Material_FreeTechniqueSet_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl Material_FreeTechniqueSet_130
Material_FreeTechniqueSet_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz Material_FreeTechniqueSet_140
	mov eax, [ebp-0x1c]
	jmp Material_FreeTechniqueSet_150
Material_FreeTechniqueSet_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_Init()
Material_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, useFastFile
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	jz Material_Init_10
Material_Init_60:
	mov esi, s_builtInMaterials+0x4
	jmp Material_Init_20
Material_Init_40:
	add esi, 0x8
	mov eax, s_builtInMaterials+0x194
	cmp eax, esi
	jz Material_Init_30
Material_Init_50:
	mov edi, useFastFile
Material_Init_20:
	mov ebx, [esi]
	mov ecx, [esi-0x4]
	mov eax, [edi]
	mov edx, Material_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_Register_LoadObj
	cmovz edx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call edx
	mov [ebx], eax
	mov eax, [esi]
	mov ecx, [eax]
	test ecx, ecx
	jnz Material_Init_40
	mov eax, [esi-0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_m
	mov dword [esp], 0x1
	call Com_Error
	add esi, 0x8
	mov eax, s_builtInMaterials+0x194
	cmp eax, esi
	jnz Material_Init_50
Material_Init_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_Init_10:
	mov dword [esp+0x8], 0x1004
	mov dword [esp+0x4], 0x0
	mov dword [esp], materialGlobals
	call memset
	call Material_PreLoadAllShaderText
	jmp Material_Init_60


;Material_Alloc(int)
Material_Alloc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop


;R_EnumMaterials(void (*)(XAssetHeader, void*), void*)
R_EnumMaterials:
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
R_EnumMaterials_20:
	mov eax, [ebx+0x164]
	test eax, eax
	jz R_EnumMaterials_10
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	mov edx, esi
R_EnumMaterials_10:
	add ebx, 0x4
	lea eax, [edx+0x2000]
	cmp eax, ebx
	jnz R_EnumMaterials_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_GetName(Material*)
Material_GetName:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	pop ebp
	ret


;Material_LoadFile(char const*, int*)
Material_LoadFile:
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
	call Com_sprintf
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_FOpenFileRead
	add esp, 0x54
	pop ebx
	pop ebp
	ret


;Material_Register(char const*, int)
Material_Register:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Material_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_Register_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Material_Shutdown()
Material_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Material_FreeAll
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
Material_DirtySort:
	push ebp
	mov ebp, esp
	mov eax, rgp
	mov dword [eax+0x2000], 0x1
	pop ebp
	ret


;Material_Duplicate(Material*, char const*)
Material_Duplicate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_HashAssetName
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
Material_Duplicate_30:
	mov eax, [ebx+esi*4+0x164]
	test eax, eax
	jz Material_Duplicate_10
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Material_Duplicate_20
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
	jnz Material_Duplicate_30
Material_Duplicate_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0xc]
	repne scasb
	mov ebx, ecx
	not ebx
	lea eax, [ebx+0x50]
	mov [esp], eax
	call Hunk_AllocInternal
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
	call Hunk_AllocInternal
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
	jz Material_Duplicate_40
	movzx ebx, byte [eax+0x3a]
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x2
	mov [esp], ebx
	call Hunk_AllocInternal
	mov [edi+0x44], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x44]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
Material_Duplicate_40:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x48]
	test edx, edx
	jz Material_Duplicate_50
	movzx ebx, byte [eax+0x3b]
	shl ebx, 0x5
	mov [esp], ebx
	call Hunk_AllocInternal
	mov [edi+0x48], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x48]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
Material_Duplicate_50:
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
	jz Material_Duplicate_60
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_Duplicate_60:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], _cstring_too_many_unique_
	mov dword [esp], 0x1
	call Com_Error
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_Duplicate_20:
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
Material_IsDefault:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, rgp
	mov edx, [eax+0x2030]
	mov eax, [ecx+0x44]
	cmp eax, [edx+0x44]
	jz Material_IsDefault_10
Material_IsDefault_20:
	xor eax, eax
	pop ebp
	ret
Material_IsDefault_10:
	mov eax, [ecx+0x48]
	cmp eax, [edx+0x48]
	jnz Material_IsDefault_20
	mov eax, [ecx+0x40]
	cmp eax, [edx+0x40]
	jnz Material_IsDefault_20
	mov eax, 0x1
	pop ebp
	ret
	add [eax], al


;Material_ReloadAll()
Material_ReloadAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], Material_ReloadTechniqueSet
	mov dword [esp], 0x5
	call DB_EnumXAssets
	leave
	ret


;Material_ReleaseAll()
Material_ReleaseAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], Material_ReleaseTechniqueSet
	mov dword [esp], 0x5
	call DB_EnumXAssets
	leave
	ret


;R_EnumTechniqueSets(void (*)(XAssetHeader, void*), void*)
R_EnumTechniqueSets:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, materialGlobals
	mov esi, materialGlobals+0x1000
R_EnumTechniqueSets_20:
	mov eax, [ebx+0x4]
	test eax, eax
	jz R_EnumTechniqueSets_10
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
R_EnumTechniqueSets_10:
	add ebx, 0x4
	cmp esi, ebx
	jnz R_EnumTechniqueSets_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Load_BuildVertexDecl(MaterialVertexDeclaration**)
Load_BuildVertexDecl:
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
Load_BuildVertexDecl_110:
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Load_BuildVertexDecl_10
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
	jz Load_BuildVertexDecl_20
	movzx eax, byte [ebp-0x3c]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x864]
	add edi, eax
	cmp byte [edi], 0xff
	jz Load_BuildVertexDecl_30
	mov dword [ebp-0x84c], 0x0
	lea ecx, [ebp-0x3b]
	mov [ebp-0x854], ecx
	mov edx, ecx
	jmp Load_BuildVertexDecl_40
Load_BuildVertexDecl_60:
	mov ecx, [ebp-0x84c]
Load_BuildVertexDecl_80:
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
	jz Load_BuildVertexDecl_50
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
	jz Load_BuildVertexDecl_30
	mov edx, ecx
Load_BuildVertexDecl_40:
	movzx eax, byte [edx]
	lea eax, [eax+eax+s_streamDestInfo]
	mov [ebp-0x85c], eax
	mov ecx, [ebp-0x84c]
	test ecx, ecx
	jle Load_BuildVertexDecl_60
	mov ecx, [ebp-0x84c]
	sub ecx, 0x1
	mov eax, [ebp-0x84c]
	movzx edx, word [ebp+eax*8-0x844]
	movzx eax, byte [edi]
	cmp edx, eax
	jbe Load_BuildVertexDecl_60
	lea eax, [ebp+ecx*8-0x83c]
	mov [ebp-0x858], eax
	mov ebx, eax
	mov esi, [ebp-0x84c]
	jmp Load_BuildVertexDecl_70
Load_BuildVertexDecl_90:
	mov esi, ecx
	mov ecx, [ebp-0x850]
Load_BuildVertexDecl_70:
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ebp+esi*8-0x83c], eax
	mov [ebp+esi*8-0x838], edx
	test ecx, ecx
	jle Load_BuildVertexDecl_80
	lea edx, [ecx-0x1]
	mov [ebp-0x850], edx
	mov edx, [ebp-0x84c]
	lea eax, [ebp+edx*8-0x84c]
	sub eax, [ebp-0x858]
	movzx edx, word [ebx+eax]
	sub ebx, 0x8
	movzx eax, byte [edi]
	cmp eax, edx
	jb Load_BuildVertexDecl_90
	jmp Load_BuildVertexDecl_80
Load_BuildVertexDecl_10:
	mov eax, [ebp-0x868]
	mov edx, [ebp-0x86c]
	mov dword [edx+eax*4+0x24], 0x0
	add dword [ebp-0x868], 0x1
	cmp dword [ebp-0x868], 0x10
	jz Load_BuildVertexDecl_100
Load_BuildVertexDecl_120:
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x86c], eax
	jmp Load_BuildVertexDecl_110
Load_BuildVertexDecl_30:
	xor eax, eax
Load_BuildVertexDecl_130:
	mov edx, [ebp-0x868]
	mov ecx, [ebp-0x86c]
	mov [ecx+edx*4+0x24], eax
	add dword [ebp-0x868], 0x1
	cmp dword [ebp-0x868], 0x10
	jnz Load_BuildVertexDecl_120
Load_BuildVertexDecl_100:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov byte [eax+0x2], 0x1
	add esp, 0x87c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_BuildVertexDecl_20:
	mov dword [ebp-0x860], 0x0
Load_BuildVertexDecl_50:
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
	jmp Load_BuildVertexDecl_130
	nop


;Material_FinishLoading()
Material_FinishLoading:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Material_RegisterHandle(char const*, int)
Material_RegisterHandle:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	cmp byte [edx], 0x0
	jz Material_RegisterHandle_10
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Material_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_Register_LoadObj
	cmovz ecx, eax
	pop ebx
	pop ebp
	jmp ecx
Material_RegisterHandle_10:
	mov eax, rgp
	mov eax, [eax+0x2030]
	pop ebx
	pop ebp
	ret


;Material_UpdatePicmipAll()
Material_UpdatePicmipAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call R_SyncRenderThread
	call R_SetPicmip
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], Material_UpdatePicmipSingle
	mov dword [esp], 0x4
	call DB_EnumXAssets
	leave
	ret


;Material_FindTechniqueSet(char const*, MtlTechSetNotFoundBehavior)
Material_FindTechniqueSet:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Material_FindTechniqueSet_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_FindTechniqueSet_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Material_Register_FastFile(char const*, int)
Material_Register_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call DB_FindXAssetHeader
	leave
	ret
	nop


;Material_ForEachTechniqueSet(void (*)(MaterialTechniqueSet*))
Material_ForEachTechniqueSet:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Material_ForEachTechniqueSet_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_ForEachTechniqueSet_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;R_Cmd_ReloadMaterialTextures()
R_Cmd_ReloadMaterialTextures:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz R_Cmd_ReloadMaterialTextures_10
	mov dword [esp+0x4], _cstring_usage_reloadmate
	mov dword [esp], 0x8
	call Com_Printf
R_Cmd_ReloadMaterialTextures_50:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cmd_ReloadMaterialTextures_10:
	mov eax, [eax+edx*4+0x64]
	mov esi, [eax+0x4]
	mov [esp], esi
	call R_HashAssetName
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
R_Cmd_ReloadMaterialTextures_40:
	mov edx, rg
	mov eax, [edx+ebx*4+0x164]
	test eax, eax
	jz R_Cmd_ReloadMaterialTextures_20
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz R_Cmd_ReloadMaterialTextures_30
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
	jnz R_Cmd_ReloadMaterialTextures_40
R_Cmd_ReloadMaterialTextures_20:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_reloadmaterialte
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_Cmd_ReloadMaterialTextures_30:
	mov eax, rg
	mov ebx, [eax+ebx*4+0x164]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz R_Cmd_ReloadMaterialTextures_20
	call RB_BindDefaultImages
	mov edx, [ebp-0x1c]
	movzx eax, byte [edx+0x3a]
	movzx edi, al
	test al, al
	jz R_Cmd_ReloadMaterialTextures_50
	xor esi, esi
R_Cmd_ReloadMaterialTextures_90:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x44]
	test esi, esi
	jz R_Cmd_ReloadMaterialTextures_60
	mov edx, eax
	xor ecx, ecx
	xor ebx, ebx
R_Cmd_ReloadMaterialTextures_80:
	cmp byte [edx+0x7], 0xb
	jz R_Cmd_ReloadMaterialTextures_70
	mov eax, [edx+0x8]
	cmp ebx, eax
	jae R_Cmd_ReloadMaterialTextures_70
	cmp esi, eax
	jbe R_Cmd_ReloadMaterialTextures_70
	mov ebx, eax
R_Cmd_ReloadMaterialTextures_70:
	add ecx, 0x1
	add edx, 0xc
	cmp edi, ecx
	jnz R_Cmd_ReloadMaterialTextures_80
R_Cmd_ReloadMaterialTextures_120:
	test ebx, ebx
	jz R_Cmd_ReloadMaterialTextures_50
	mov [esp], ebx
	call Image_Reload
	mov esi, ebx
	jmp R_Cmd_ReloadMaterialTextures_90
R_Cmd_ReloadMaterialTextures_60:
	mov edx, eax
	xor ecx, ecx
	xor ebx, ebx
R_Cmd_ReloadMaterialTextures_110:
	cmp byte [edx+0x7], 0xb
	jz R_Cmd_ReloadMaterialTextures_100
	mov eax, [edx+0x8]
	cmp ebx, eax
	cmovb ebx, eax
R_Cmd_ReloadMaterialTextures_100:
	add ecx, 0x1
	add edx, 0xc
	cmp edi, ecx
	jnz R_Cmd_ReloadMaterialTextures_110
	jmp R_Cmd_ReloadMaterialTextures_120
	nop


;Material_FreeAllTechniqueSets()
Material_FreeAllTechniqueSets:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], Material_FreeTechniqueSet
	mov dword [esp], 0x5
	call DB_EnumXAssets
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Material_FreeAllTechniqueSets_10
	leave
	ret
Material_FreeAllTechniqueSets_10:
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x0
	mov dword [esp], materialGlobals+0x4
	call memset
	leave
	ret
	nop


;Material_RegisterTechniqueSet(char const*)
Material_RegisterTechniqueSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Material_FindTechniqueSet_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Material_FindTechniqueSet_LoadObj
	cmovz edx, eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call edx
	mov ebx, eax
	test eax, eax
	jz Material_RegisterTechniqueSet_10
Material_RegisterTechniqueSet_20:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Material_RegisterTechniqueSet_10:
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call Material_LoadTechniqueSet
	mov ebx, eax
	test eax, eax
	jz Material_RegisterTechniqueSet_20
	mov [esp], esi
	call R_HashAssetName
	mov edi, eax
	and edi, 0x3ff
	mov eax, [edi*4+materialGlobals+0x4]
	test eax, eax
	jz Material_RegisterTechniqueSet_30
Material_RegisterTechniqueSet_40:
	mov [esp+0x4], esi
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Material_RegisterTechniqueSet_30
	add edi, 0x1
	and edi, 0x3ff
	mov eax, [edi*4+materialGlobals+0x4]
	test eax, eax
	jnz Material_RegisterTechniqueSet_40
Material_RegisterTechniqueSet_30:
	mov eax, materialGlobals
	mov [eax+edi*4+0x4], ebx
	cmp byte [g_generateOverrideTechniques], 0x0
	jz Material_RegisterTechniqueSet_20
	mov [esp], esi
	call Material_RegisterOverriddenTechniqueSets
	jmp Material_RegisterTechniqueSet_20
	nop


;Load_CreateMaterialPixelShader(GfxPixelShaderLoadDef*, MaterialPixelShader*)
Load_CreateMaterialPixelShader:
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
	jz Load_CreateMaterialPixelShader_10
	mov eax, r_rendererInUse
	mov edx, [eax]
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x6]
	cmp eax, [edx+0xc]
	jz Load_CreateMaterialPixelShader_20
Load_CreateMaterialPixelShader_10:
	mov dword [ebx+0x4], 0x0
Load_CreateMaterialPixelShader_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_CreateMaterialPixelShader_20:
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
	jnz Load_CreateMaterialPixelShader_30
Load_CreateMaterialPixelShader_80:
	cmp edi, 0xffffffff
	jz Load_CreateMaterialPixelShader_40
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
	jnz Load_CreateMaterialPixelShader_50
Load_CreateMaterialPixelShader_90:
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
	jnz Load_CreateMaterialPixelShader_60
Load_CreateMaterialPixelShader_100:
	mov edx, [ebp-0x38]
	test edx, edx
	jz Load_CreateMaterialPixelShader_70
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
Load_CreateMaterialPixelShader_70:
	mov ebx, [ebp-0x34]
	sub ebx, 0xc
	cmp [ebp-0x4c], ebx
	jz Load_CreateMaterialPixelShader_40
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_40
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_40
Load_CreateMaterialPixelShader_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_80
Load_CreateMaterialPixelShader_50:
	lea eax, [esi+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_90
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_90
Load_CreateMaterialPixelShader_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_100
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_100
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz Load_CreateMaterialPixelShader_110
Load_CreateMaterialPixelShader_130:
	mov eax, [ebp-0x34]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz Load_CreateMaterialPixelShader_120
Load_CreateMaterialPixelShader_140:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz Load_CreateMaterialPixelShader_130
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_130
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_130
Load_CreateMaterialPixelShader_160:
	mov ebx, eax
	jmp Load_CreateMaterialPixelShader_130
	mov ebx, eax
	mov eax, [ebp-0x2c]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz Load_CreateMaterialPixelShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_140
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_140
Load_CreateMaterialPixelShader_150:
	mov ebx, eax
	jmp Load_CreateMaterialPixelShader_140
	jmp Load_CreateMaterialPixelShader_150
Load_CreateMaterialPixelShader_120:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_140
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_140
Load_CreateMaterialPixelShader_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_130
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_130
	mov [esp], eax
	call _Unwind_Resume
	jmp Load_CreateMaterialPixelShader_160
	mov ebx, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz Load_CreateMaterialPixelShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialPixelShader_140
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialPixelShader_140
	jmp Load_CreateMaterialPixelShader_160
	jmp Load_CreateMaterialPixelShader_150
	jmp Load_CreateMaterialPixelShader_150
	jmp Load_CreateMaterialPixelShader_150
	jmp Load_CreateMaterialPixelShader_150


;Load_CreateMaterialVertexShader(GfxVertexShaderLoadDef*, MaterialVertexShader*)
Load_CreateMaterialVertexShader:
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
	jz Load_CreateMaterialVertexShader_10
	mov eax, r_rendererInUse
	mov edx, [eax]
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x6]
	cmp eax, [edx+0xc]
	jz Load_CreateMaterialVertexShader_20
Load_CreateMaterialVertexShader_10:
	mov dword [ebx+0x4], 0x0
Load_CreateMaterialVertexShader_40:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_CreateMaterialVertexShader_20:
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
	jnz Load_CreateMaterialVertexShader_30
Load_CreateMaterialVertexShader_80:
	cmp edi, 0xffffffff
	jz Load_CreateMaterialVertexShader_40
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
	jnz Load_CreateMaterialVertexShader_50
Load_CreateMaterialVertexShader_90:
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
	jnz Load_CreateMaterialVertexShader_60
Load_CreateMaterialVertexShader_100:
	mov edx, [ebp-0x38]
	test edx, edx
	jz Load_CreateMaterialVertexShader_70
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
Load_CreateMaterialVertexShader_70:
	mov ebx, [ebp-0x34]
	sub ebx, 0xc
	cmp [ebp-0x4c], ebx
	jz Load_CreateMaterialVertexShader_40
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_40
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_40
Load_CreateMaterialVertexShader_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_80
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_80
Load_CreateMaterialVertexShader_50:
	lea eax, [esi+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_90
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_90
Load_CreateMaterialVertexShader_60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_100
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_100
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz Load_CreateMaterialVertexShader_110
Load_CreateMaterialVertexShader_130:
	mov eax, [ebp-0x34]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jnz Load_CreateMaterialVertexShader_120
Load_CreateMaterialVertexShader_140:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x28]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz Load_CreateMaterialVertexShader_130
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_130
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_130
Load_CreateMaterialVertexShader_160:
	mov ebx, eax
	jmp Load_CreateMaterialVertexShader_130
	mov ebx, eax
	mov eax, [ebp-0x2c]
	lea esi, [eax-0xc]
	cmp [ebp-0x4c], esi
	jz Load_CreateMaterialVertexShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_140
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_140
Load_CreateMaterialVertexShader_150:
	mov ebx, eax
	jmp Load_CreateMaterialVertexShader_140
	jmp Load_CreateMaterialVertexShader_150
Load_CreateMaterialVertexShader_120:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_140
	lea eax, [ebp-0x1f]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_140
Load_CreateMaterialVertexShader_110:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_130
	lea eax, [ebp-0x1d]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_130
	mov [esp], eax
	call _Unwind_Resume
	jmp Load_CreateMaterialVertexShader_160
	mov ebx, eax
	mov eax, [ebp-0x30]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz Load_CreateMaterialVertexShader_140
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg Load_CreateMaterialVertexShader_140
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp Load_CreateMaterialVertexShader_140
	jmp Load_CreateMaterialVertexShader_160
	jmp Load_CreateMaterialVertexShader_150
	jmp Load_CreateMaterialVertexShader_150
	jmp Load_CreateMaterialVertexShader_150
	jmp Load_CreateMaterialVertexShader_150


;Material_ReleaseTechniqueSetResources(MaterialTechniqueSet*)
Material_ReleaseTechniqueSetResources:
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
Material_ReleaseTechniqueSetResources_150:
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	test eax, eax
	jz Material_ReleaseTechniqueSetResources_10
	cmp word [eax+0x6], 0x0
	jz Material_ReleaseTechniqueSetResources_10
	mov dword [ebp-0x20], 0x0
	mov esi, eax
	add esi, 0x8
	mov edi, alwaysfails
Material_ReleaseTechniqueSetResources_130:
	mov eax, [esi+0x8]
	mov edx, [eax+0x4]
	test edx, edx
	jnz Material_ReleaseTechniqueSetResources_20
	jmp Material_ReleaseTechniqueSetResources_30
Material_ReleaseTechniqueSetResources_40:
	mov eax, [esi+0x8]
Material_ReleaseTechniqueSetResources_20:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x8]
	mov dword [eax+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	test eax, eax
	jnz Material_ReleaseTechniqueSetResources_40
Material_ReleaseTechniqueSetResources_30:
	mov eax, [esi+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz Material_ReleaseTechniqueSetResources_50
	jmp Material_ReleaseTechniqueSetResources_60
Material_ReleaseTechniqueSetResources_70:
	mov eax, [esi+0x4]
Material_ReleaseTechniqueSetResources_50:
	mov eax, [eax+0x4]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi+0x4]
	mov dword [eax+0x4], 0x0
	mov eax, alwaysfails
	mov ecx, [eax]
	test ecx, ecx
	jnz Material_ReleaseTechniqueSetResources_70
Material_ReleaseTechniqueSetResources_60:
	mov eax, [esi]
	cmp byte [eax+0x2], 0x0
	jz Material_ReleaseTechniqueSetResources_80
	mov byte [eax+0x2], 0x0
	xor ebx, ebx
Material_ReleaseTechniqueSetResources_120:
	mov eax, [esi]
	mov edx, [eax+ebx*4+0x24]
	test edx, edx
	jnz Material_ReleaseTechniqueSetResources_90
	jmp Material_ReleaseTechniqueSetResources_100
Material_ReleaseTechniqueSetResources_110:
	mov eax, [esi]
Material_ReleaseTechniqueSetResources_90:
	mov eax, [eax+ebx*4+0x24]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov eax, [esi]
	mov dword [eax+ebx*4+0x24], 0x0
	mov eax, [edi]
	test eax, eax
	jnz Material_ReleaseTechniqueSetResources_110
Material_ReleaseTechniqueSetResources_100:
	add ebx, 0x1
	cmp ebx, 0x10
	jnz Material_ReleaseTechniqueSetResources_120
Material_ReleaseTechniqueSetResources_80:
	add dword [ebp-0x20], 0x1
	add esi, 0x14
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x6]
	cmp [ebp-0x20], eax
	jl Material_ReleaseTechniqueSetResources_130
Material_ReleaseTechniqueSetResources_10:
	add dword [ebp-0x28], 0x1
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x28], 0x22
	jz Material_ReleaseTechniqueSetResources_140
	mov eax, [ebp-0x1c]
	jmp Material_ReleaseTechniqueSetResources_150
Material_ReleaseTechniqueSetResources_140:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Material_PreventOverrideTechniqueGeneration()
Material_PreventOverrideTechniqueGeneration:
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
declEnd.158730: dd 0xff, 0x11, 0x0, 0x0, 0x0, 0x0, 0x2b47af, 0x2b4ae8, 0x2b4ad7, 0x2b4a14, 0x2b49f7, 0x2b49c4, 0x2b4937, 0x2b48a3, 0x2b4835, 0x2b4818, 0x2b47f4, 0x2b47f4, 0x2b480e, 0x0, 0x0, 0x0


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

