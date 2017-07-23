;Imports of r_image:
	extern DB_FindXAssetHeader
	extern useFastFile
	extern Image_Load
	extern Com_PrintError
	extern Image_ReloadFromFile
	extern Com_Error
	extern Image_BuildWaterMap
	extern rgp
	extern R_HashAssetName
	extern strcmp
	extern Hunk_AllocInternal
	extern memcpy
	extern R_AvailableTextureMemory
	extern _ZN11MacFeatures17GetMemorySizeInMBEv
	extern r_reflectionProbeGenerate
	extern r_picmip_manual
	extern Com_Printf
	extern r_picmip
	extern r_picmip_bump
	extern r_picmip_spec
	extern r_specular
	extern r_rendererInUse
	extern Cvar_SetInt
	extern r_loadForRenderer
	extern gfxMetrics
	extern dx_ctx
	extern Image_CountMipmaps
	extern Image_CubemapFace
	extern Image_UploadData
	extern Image_GetCardMemoryAmountForMipLevel
	extern Image_LoadFromFile
	extern DB_LoadedExternalData
	extern r_picmip_water
	extern R_ErrorDescription
	extern RB_InitImages
	extern rg
	extern cmd_args
	extern memset
	extern DB_EnumXAssets
	extern Q_stricmp
	extern RB_UnbindAllImages
	extern Image_GetPicmip
	extern Image_SetupAndLoad
	extern memmove

;Exports of r_image:
	global imageTypeName
	global g_imageProgs
	global imageGlobals
	global g_imageProgNames
	global R_AddImageToList
	global Image_FindExisting_FastFile
	global Image_Register_FastFile
	global Image_Register_LoadObj
	global R_FreeLostImage
	global R_RebuildLostImage
	global imagecompare
	global Image_FindExisting_LoadObj
	global Image_Alloc
	global R_SetPicmip
	global Image_Reload
	global Load_Texture
	global R_EnumImages
	global R_InitImages
	global Image_Release
	global R_ImageList_f
	global Image_Register
	global R_GetImageList
	global Image_AllocProg
	global Image_GetSurface
	global R_DelayLoadImage
	global R_ShutdownImages
	global Image_UpdatePicmip
	global R_ReloadLostImages
	global R_ReleaseLostImages
	global Image_TrackTotalMemory
	global Image_PicmipForSemantic
	global Image_SetupRenderTarget
	global Image_Create2DTexture_PC
	global Image_Create3DTexture_PC
	global Image_CreateCubeTexture_PC
	global _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2_
	global _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
	global _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1_
	global g_platform_name


SECTION .text


;R_AddImageToList(XAssetHeader, void*)
R_AddImageToList:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov ecx, [ebp+0x8]
	mov [eax+edx*4+0x4], ecx
	add edx, 0x1
	mov [eax], edx
	pop ebp
	ret


;Image_FindExisting_FastFile(char const*)
Image_FindExisting_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call DB_FindXAssetHeader
	leave
	ret
	nop


;Image_Register_FastFile(char const*, unsigned char, int)
Image_Register_FastFile:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Image_FindExisting_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Image_FindExisting_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Image_Register_LoadObj(char const*, unsigned char, int)
Image_Register_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	movzx edi, byte [ebp+0xc]
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, Image_FindExisting_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Image_FindExisting_LoadObj
	cmovz edx, eax
	mov [esp], esi
	call edx
	mov ebx, eax
	test eax, eax
	jz Image_Register_LoadObj_10
Image_Register_LoadObj_20:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Register_LoadObj_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, edi
	movzx eax, dl
	mov [esp+0x4], eax
	mov [esp], esi
	call Image_Load
	mov ebx, eax
	test eax, eax
	jnz Image_Register_LoadObj_20
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_failed_to_
	mov dword [esp], 0x8
	call Com_PrintError
	jmp Image_Register_LoadObj_20
	nop
	add [eax], al


;R_FreeLostImage(XAssetHeader, void*)
R_FreeLostImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1e], 0x4
	jbe R_FreeLostImage_10
	cmp byte [ebx+0xc], 0x4
	jbe R_FreeLostImage_20
R_FreeLostImage_50:
	mov edx, ebx
	mov ecx, imageGlobals
R_FreeLostImage_30:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz R_FreeLostImage_30
R_FreeLostImage_40:
	mov edx, [ebx+0x4]
	test edx, edx
	jz R_FreeLostImage_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
R_FreeLostImage_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_FreeLostImage_20:
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz R_FreeLostImage_40
	jmp R_FreeLostImage_50
	nop


;R_RebuildLostImage(XAssetHeader, void*)
R_RebuildLostImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	test eax, eax
	jz R_RebuildLostImage_10
R_RebuildLostImage_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_RebuildLostImage_10:
	movzx eax, byte [ebx+0x1e]
	cmp al, 0x4
	ja R_RebuildLostImage_20
	cmp al, 0x3
	jnz R_RebuildLostImage_30
	cmp byte [ebx+0x1f], 0x0
	jnz R_RebuildLostImage_40
	mov [esp], ebx
	call Image_ReloadFromFile
	test al, al
	jnz R_RebuildLostImage_40
	cmp dword [ebx], 0x3
	jz R_RebuildLostImage_50
R_RebuildLostImage_120:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima
	mov dword [esp], 0x2
	call Com_Error
	jmp R_RebuildLostImage_40
R_RebuildLostImage_20:
	cmp ebx, g_imageProgs
	jb R_RebuildLostImage_60
	cmp ebx, g_imageProgs+0x1f8
	jb R_RebuildLostImage_70
R_RebuildLostImage_60:
	xor edx, edx
R_RebuildLostImage_80:
	test edx, edx
	jnz R_RebuildLostImage_40
	cmp al, 0x5
	jnz R_RebuildLostImage_40
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Image_BuildWaterMap
R_RebuildLostImage_30:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_way_to_recove
	mov dword [esp], 0x2
	call Com_Error
	jmp R_RebuildLostImage_40
R_RebuildLostImage_70:
	mov edx, 0x1
	jmp R_RebuildLostImage_80
R_RebuildLostImage_50:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz R_RebuildLostImage_90
	cmp al, 0x8
	jz R_RebuildLostImage_100
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz R_RebuildLostImage_110
R_RebuildLostImage_130:
	mov edx, [eax+0x4]
	test edx, edx
	jz R_RebuildLostImage_110
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
R_RebuildLostImage_140:
	test al, al
	jnz R_RebuildLostImage_40
	jmp R_RebuildLostImage_120
R_RebuildLostImage_100:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz R_RebuildLostImage_130
R_RebuildLostImage_110:
	xor eax, eax
	jmp R_RebuildLostImage_140
R_RebuildLostImage_90:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz R_RebuildLostImage_130
	xor eax, eax
	jmp R_RebuildLostImage_140


;imagecompare(GfxImage*, GfxImage*)
imagecompare:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0xc]
	cmp [edx+0xc], al
	ja imagecompare_10
	jb imagecompare_20
	mov eax, [edx+0x10]
	cmp eax, [ecx+0x10]
	setl al
	movzx eax, al
	pop ebp
	ret
imagecompare_20:
	mov eax, 0x1
	pop ebp
	ret
imagecompare_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Image_FindExisting_LoadObj(char const*)
Image_FindExisting_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov [esp], edi
	call R_HashAssetName
	mov ebx, eax
	and ebx, 0x7ff
	mov esi, [ebx*4+imageGlobals]
	test esi, esi
	jz Image_FindExisting_LoadObj_10
Image_FindExisting_LoadObj_20:
	mov eax, [esi+0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz Image_FindExisting_LoadObj_10
	add ebx, 0x1
	and ebx, 0x7ff
	mov esi, [ebx*4+imageGlobals]
	test esi, esi
	jnz Image_FindExisting_LoadObj_20
Image_FindExisting_LoadObj_30:
	xor eax, eax
	test eax, eax
	mov eax, 0x0
	cmovnz esi, eax
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_FindExisting_LoadObj_10:
	cmp esi, g_imageProgs
	jb Image_FindExisting_LoadObj_30
	cmp esi, g_imageProgs+0x1f8
	jae Image_FindExisting_LoadObj_30
	mov eax, 0x1
	test eax, eax
	mov eax, 0x0
	cmovnz esi, eax
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Image_Alloc(char const*, unsigned char, unsigned char, int)
Image_Alloc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x19], al
	movzx eax, byte [ebp+0x10]
	mov [ebp-0x1a], al
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	lea eax, [ebx+0x24]
	mov [esp], eax
	call Hunk_AllocInternal
	mov edi, eax
	lea eax, [eax+0x24]
	mov [edi+0x20], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	movzx eax, byte [ebp-0x19]
	mov [edi+0x1e], al
	movzx eax, byte [ebp-0x1a]
	mov [edi+0xb], al
	mov eax, [ebp+0x14]
	mov [edi+0xc], al
	mov [esp], esi
	call R_HashAssetName
	and eax, 0x7ff
	mov esi, [eax*4+imageGlobals]
	test esi, esi
	jz Image_Alloc_10
Image_Alloc_20:
	add eax, 0x1
	and eax, 0x7ff
	mov ebx, [eax*4+imageGlobals]
	test ebx, ebx
	jnz Image_Alloc_20
Image_Alloc_10:
	mov [eax*4+imageGlobals], edi
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SetPicmip()
R_SetPicmip:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	call R_AvailableTextureMemory
	mov ebx, eax
	call _ZN11MacFeatures17GetMemorySizeInMBEv
	mov esi, eax
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SetPicmip_10
	mov eax, r_picmip_manual
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SetPicmip_20
	mov dword [esp+0x4], _cstring_picmip_is_set_ma
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, r_picmip
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [imageGlobals+0x2000], eax
	mov eax, r_picmip_bump
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [imageGlobals+0x2004], eax
	mov eax, r_picmip_spec
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [imageGlobals+0x2008], eax
	mov eax, r_specular
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SetPicmip_30
R_SetPicmip_90:
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz R_SetPicmip_30
R_SetPicmip_100:
	mov eax, [imageGlobals+0x2008]
	mov [esp+0x10], eax
	mov eax, [imageGlobals+0x2004]
	mov [esp+0xc], eax
	mov eax, [imageGlobals+0x2000]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_using_picmip_i_o
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_SetPicmip_20:
	mov dword [esp+0x4], _cstring_texture_detail_i
	mov dword [esp], 0x8
	call Com_Printf
	cmp ebx, 0x18f
	jbe R_SetPicmip_40
	mov dword [imageGlobals+0x2000], 0x1
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
R_SetPicmip_110:
	cmp esi, 0x3ff
	ja R_SetPicmip_50
	mov eax, 0x3
R_SetPicmip_130:
	cmp eax, [imageGlobals+0x2000]
	jg R_SetPicmip_60
	xor edx, edx
R_SetPicmip_120:
	cmp eax, [imageGlobals+0x2004]
	jle R_SetPicmip_70
	mov [imageGlobals+0x2004], eax
	mov edx, 0x1
R_SetPicmip_70:
	cmp eax, [imageGlobals+0x2008]
	jle R_SetPicmip_80
	mov [imageGlobals+0x2008], eax
R_SetPicmip_150:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_reducing_texture
	mov dword [esp], 0x8
	call Com_Printf
R_SetPicmip_140:
	mov eax, [imageGlobals+0x2000]
	mov [esp+0x4], eax
	mov eax, r_picmip
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [imageGlobals+0x2004]
	mov [esp+0x4], eax
	mov eax, r_picmip_bump
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [imageGlobals+0x2008]
	mov [esp+0x4], eax
	mov eax, r_picmip_spec
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, r_specular
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SetPicmip_90
R_SetPicmip_30:
	mov dword [imageGlobals+0x2008], 0x3
	jmp R_SetPicmip_100
R_SetPicmip_10:
	mov dword [esp+0x4], _cstring_picmip_is_set_to
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [imageGlobals+0x2000], 0x2
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
R_SetPicmip_40:
	cmp ebx, 0xc7
	jbe R_SetPicmip_110
	mov dword [imageGlobals+0x2000], 0x2
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
	jmp R_SetPicmip_110
R_SetPicmip_60:
	mov [imageGlobals+0x2000], eax
	mov edx, 0x1
	jmp R_SetPicmip_120
R_SetPicmip_50:
	cmp esi, 0x800
	sbb eax, eax
	not eax
	add eax, 0x2
	jmp R_SetPicmip_130
R_SetPicmip_80:
	test dl, dl
	jz R_SetPicmip_140
	jmp R_SetPicmip_150


;Image_Reload(GfxImage*)
Image_Reload:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xc], 0x4
	ja Image_Reload_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz Image_Reload_10
Image_Reload_60:
	mov edx, [ebx+0x4]
	test edx, edx
	jz Image_Reload_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
Image_Reload_20:
	mov [esp], ebx
	call Image_ReloadFromFile
	test al, al
	jnz Image_Reload_30
	cmp dword [ebx], 0x3
	jz Image_Reload_40
Image_Reload_100:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_i
	mov dword [esp], 0x1
	call Com_Error
Image_Reload_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Image_Reload_10:
	mov edx, ebx
	mov ecx, imageGlobals
Image_Reload_50:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz Image_Reload_50
	jmp Image_Reload_60
Image_Reload_40:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz Image_Reload_70
	cmp al, 0x8
	jz Image_Reload_80
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz Image_Reload_90
Image_Reload_110:
	mov edx, [eax+0x4]
	test edx, edx
	jz Image_Reload_90
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
Image_Reload_120:
	test al, al
	jz Image_Reload_100
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Image_Reload_80:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz Image_Reload_110
Image_Reload_90:
	xor eax, eax
	jmp Image_Reload_120
Image_Reload_70:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz Image_Reload_110
	xor eax, eax
	jmp Image_Reload_120
	add [eax], al


;Load_Texture(GfxImageLoadDef**, GfxImage*)
Load_Texture:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov dword [edi+0x4], 0x0
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Load_Texture_10
	mov eax, [esi+0x8]
	mov [ebp-0x24], eax
	mov eax, [esi+0xc]
	test eax, eax
	jz Load_Texture_20
	mov byte [edi+0x1f], 0x0
	mov eax, [edi]
	cmp eax, 0x3
	jz Load_Texture_30
	cmp eax, 0x4
	jz Load_Texture_40
	movzx ecx, byte [esi]
	mov [ebp-0x20], ecx
	movzx eax, word [esi+0x2]
	mov ebx, eax
	mov [edi+0x18], ax
	mov [edi+0x1a], ax
	mov word [edi+0x1c], 0x1
	mov dword [edi], 0x5
	mov eax, gfxMetrics
	cmp byte [eax+0x26], 0x0
	jz Load_Texture_50
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
Load_Texture_150:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x1c], 0x0
	lea eax, [edi+0x4]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	movzx eax, bx
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x64]
	mov ebx, eax
	test eax, eax
	js Load_Texture_60
Load_Texture_170:
	mov dword [ebp-0x2c], 0x6
Load_Texture_140:
	lea ecx, [esi+0x10]
	mov [ebp-0x38], ecx
	movzx eax, word [edi+0x1c]
	mov [esp+0xc], eax
	movzx eax, word [edi+0x1a]
	mov [esp+0x8], eax
	movzx eax, word [edi+0x18]
	mov [esp+0x4], eax
	movzx eax, byte [esi+0x1]
	mov [esp], eax
	call Image_CountMipmaps
	mov [ebp-0x28], eax
	mov esi, [ebp-0x2c]
	test esi, esi
	jle Load_Texture_10
	mov dword [ebp-0x30], 0x0
	jmp Load_Texture_70
Load_Texture_90:
	mov dword [ebp-0x34], 0x0
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jg Load_Texture_80
Load_Texture_100:
	add dword [ebp-0x30], 0x1
	mov ecx, [ebp-0x30]
	cmp [ebp-0x2c], ecx
	jz Load_Texture_10
Load_Texture_70:
	cmp dword [ebp-0x2c], 0x1
	jz Load_Texture_90
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Image_CubemapFace
	mov [ebp-0x34], eax
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jle Load_Texture_100
Load_Texture_80:
	xor esi, esi
Load_Texture_110:
	mov ecx, [ebp-0x38]
	mov [esp+0x10], ecx
	mov [esp+0xc], esi
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov [esp], edi
	call Image_UploadData
	movzx ebx, word [edi+0x18]
	mov ecx, esi
	shr ebx, cl
	mov dword [ebp-0x4c], 0x1
	cmp ebx, 0x1
	cmovle ebx, [ebp-0x4c]
	movzx edx, word [edi+0x1a]
	shr edx, cl
	cmp edx, 0x1
	cmovle edx, [ebp-0x4c]
	movzx eax, word [edi+0x1c]
	shr eax, cl
	cmp eax, 0x1
	cmovle eax, [ebp-0x4c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Image_GetCardMemoryAmountForMipLevel
	add [ebp-0x38], eax
	add esi, 0x1
	cmp [ebp-0x28], esi
	jnz Load_Texture_110
	add dword [ebp-0x30], 0x1
	mov ecx, [ebp-0x30]
	cmp [ebp-0x2c], ecx
	jnz Load_Texture_70
Load_Texture_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Load_Texture_20:
	cmp byte [edi+0x1e], 0x5
	jz Load_Texture_120
	cmp byte [edi+0x1f], 0x0
	jnz Load_Texture_10
	mov ebx, [edi+0x10]
	mov dword [edi+0x10], 0x0
	mov dword [edi+0x14], 0x0
	mov [esp], edi
	call Image_LoadFromFile
	test al, al
	jz Load_Texture_130
Load_Texture_160:
	mov [ebp+0x8], ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp DB_LoadedExternalData
Load_Texture_40:
	mov ecx, [ebp-0x24]
	mov [esp+0x18], ecx
	mov dword [esp+0x14], 0x0
	movzx eax, byte [esi]
	mov [esp+0x10], eax
	movzx eax, word [esi+0x6]
	mov [esp+0xc], eax
	movzx eax, word [esi+0x4]
	mov [esp+0x8], eax
	movzx eax, word [esi+0x2]
	mov [esp+0x4], eax
	mov [esp], edi
	call Image_Create3DTexture_PC
	mov dword [ebp-0x2c], 0x1
	jmp Load_Texture_140
Load_Texture_120:
	mov byte [edi+0x1f], 0x0
	mov eax, r_picmip_water
	mov eax, [eax]
	mov ebx, [eax+0xc]
	movsx edx, word [esi+0x2]
	mov ecx, ebx
	sar edx, cl
	mov word [ebp-0x48], 0x4
	cmp edx, 0x3
	mov eax, 0x4
	cmovle edx, eax
	movsx eax, word [esi+0x4]
	sar eax, cl
	cmp eax, 0x3
	mov ecx, 0x4
	cmovg ecx, eax
	mov [ebp-0x48], cx
	mov dword [edi+0x10], 0x0
	mov dword [edi+0x14], 0x0
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x10000
	movzx eax, byte [esi]
	mov [esp+0xc], eax
	movzx ecx, word [ebp-0x48]
	mov [esp+0x8], ecx
	movzx edx, dx
	mov [esp+0x4], edx
	mov [esp], edi
	call Image_Create2DTexture_PC
	jmp Load_Texture_10
Load_Texture_30:
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x0
	movzx eax, byte [esi]
	mov [esp+0xc], eax
	movzx eax, word [esi+0x4]
	mov [esp+0x8], eax
	movzx eax, word [esi+0x2]
	mov [esp+0x4], eax
	mov [esp], edi
	call Image_Create2DTexture_PC
	mov dword [ebp-0x2c], 0x1
	jmp Load_Texture_140
Load_Texture_50:
	mov dword [ebp-0x20], 0x1
	mov dword [ebp-0x1c], 0x1
	jmp Load_Texture_150
Load_Texture_130:
	mov eax, [edi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima1
	mov dword [esp], 0x2
	call Com_Error
	jmp Load_Texture_160
Load_Texture_60:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov ecx, [ebp-0x24]
	mov [esp+0x14], ecx
	mov eax, [ebp-0x20]
	mov [esp+0x10], eax
	movzx eax, word [edi+0x18]
	mov [esp+0xc], eax
	mov eax, [edi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_createcubetextur
	mov dword [esp], 0x2
	call Com_Error
	jmp Load_Texture_170


;R_EnumImages(void (*)(XAssetHeader, void*), void*)
R_EnumImages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, imageGlobals
	mov esi, imageGlobals+0x2000
	jmp R_EnumImages_10
R_EnumImages_60:
	cmp eax, g_imageProgs+0x1f8
	jae R_EnumImages_20
	mov edx, 0x1
	test edx, edx
	jz R_EnumImages_30
R_EnumImages_50:
	add ebx, 0x4
	cmp esi, ebx
	jz R_EnumImages_40
R_EnumImages_10:
	mov eax, [ebx]
	test eax, eax
	jz R_EnumImages_50
	cmp eax, g_imageProgs
	jae R_EnumImages_60
R_EnumImages_20:
	xor edx, edx
	test edx, edx
	jnz R_EnumImages_50
R_EnumImages_30:
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	add ebx, 0x4
	cmp esi, ebx
	jnz R_EnumImages_10
R_EnumImages_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_InitImages()
R_InitImages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call R_SetPicmip
	mov edi, useFastFile
	mov eax, [edi]
	mov ebx, Image_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_white
	call eax
	mov esi, rgp
	mov [esi+0x2008], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black
	call eax
	mov [esi+0x200c], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black_3d
	call eax
	mov [esi+0x2010], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black_cube
	call eax
	mov [esi+0x2014], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_gray
	call eax
	mov [esi+0x2018], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_identitynormalma
	call eax
	mov [esi+0x201c], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovz ebx, eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_pixelcostcolorco
	call ebx
	mov [esi+0x2028], eax
	call RB_InitImages
	mov eax, [g_imageProgNames+0x2c]
	mov [g_imageProgs+0x1ac], eax
	mov byte [g_imageProgs+0x1aa], 0x4
	mov byte [g_imageProgs+0x197], 0x0
	mov byte [g_imageProgs+0x198], 0x0
	mov [esp], eax
	call R_HashAssetName
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz R_InitImages_10
R_InitImages_20:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz R_InitImages_20
R_InitImages_10:
	mov dword [eax*4+imageGlobals], g_imageProgs+0x18c
	mov eax, rgp
	mov dword [eax+0x209c], g_imageProgs+0x18c
	mov eax, rg
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x22fc]
	movss [eax+0x22fc], xmm0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_Release(GfxImage*)
Image_Release:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xc], 0x4
	ja Image_Release_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz Image_Release_10
Image_Release_40:
	mov edx, [ebx+0x4]
	test edx, edx
	jz Image_Release_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
Image_Release_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Image_Release_10:
	mov edx, ebx
	mov ecx, imageGlobals
Image_Release_30:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz Image_Release_30
	jmp Image_Release_40
	nop


;R_ImageList_f()
R_ImageList_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20ec
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz R_ImageList_f_10
R_ImageList_f_420:
	mov byte [ebp-0x20c9], 0x0
R_ImageList_f_430:
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov dword [esp+0x8], 0x50
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xac]
	mov [esp], eax
	call memset
	mov dword [ebp-0x20b0], 0x0
	mov dword [esp+0xc], 0x1
	lea edx, [ebp-0x20b0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], R_AddImageToList
	mov dword [esp], 0x6
	call DB_EnumXAssets
	cmp byte [ebp-0x20c9], 0x0
	jz R_ImageList_f_20
	xor ecx, ecx
	mov ebx, g_imageProgs
	mov edx, [ebp-0x20b0]
R_ImageList_f_50:
	cmp edx, 0x7ff
	ja R_ImageList_f_30
	mov eax, [ebx]
	test eax, eax
	jz R_ImageList_f_40
	lea eax, [ecx+ecx*8]
	lea eax, [eax*4+g_imageProgs]
	mov [ebp+edx*4-0x20ac], eax
	lea eax, [edx+0x1]
	mov [ebp-0x20b0], eax
	mov edx, eax
R_ImageList_f_40:
	add ecx, 0x1
	add ebx, 0x24
	cmp ecx, 0xe
	jnz R_ImageList_f_50
R_ImageList_f_30:
	lea edx, [ebp+edx*4-0x20ac]
	mov [ebp-0x20c8], edx
	lea esi, [ebp-0x20ac]
	cmp esi, edx
	jz R_ImageList_f_60
	mov ebx, edx
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz R_ImageList_f_70
	xor edx, edx
R_ImageList_f_80:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz R_ImageList_f_80
	lea eax, [edx+edx]
R_ImageList_f_440:
	mov dword [esp+0xc], imagecompare
	mov [esp+0x8], eax
	mov ecx, [ebp-0x20c8]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1_
	cmp ebx, 0x43
	jle R_ImageList_f_90
	mov dword [esp+0x8], imagecompare
	lea ebx, [ebp-0x206c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
	cmp [ebp-0x20c8], ebx
	jz R_ImageList_f_60
	mov [ebp-0x20c0], ebx
	mov eax, ebx
	mov edi, ebx
R_ImageList_f_120:
	mov eax, [eax]
	mov [ebp-0x20c4], eax
	mov ebx, [ebp-0x20c0]
	sub ebx, 0x4
	mov edx, eax
	jmp R_ImageList_f_100
R_ImageList_f_110:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
	mov edx, [ebp-0x20c4]
R_ImageList_f_100:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov [esp], edx
	call imagecompare
	test eax, eax
	jnz R_ImageList_f_110
	mov ecx, [ebp-0x20c4]
	mov [edi], ecx
	add dword [ebp-0x20c0], 0x4
	mov eax, [ebp-0x20c0]
	cmp [ebp-0x20c8], eax
	jz R_ImageList_f_60
	mov eax, [ebp-0x20c0]
	mov edi, [ebp-0x20c0]
	jmp R_ImageList_f_120
R_ImageList_f_90:
	mov dword [esp+0x8], imagecompare
	mov edx, [ebp-0x20c8]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
R_ImageList_f_60:
	mov dword [esp+0x4], _cstring_fmt_dimension
	mov dword [esp], 0x8
	call Com_Printf
	mov ebx, g_platform_name
	mov esi, g_platform_name+0x8
R_ImageList_f_130:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	add ebx, 0x4
	cmp esi, ebx
	jnz R_ImageList_f_130
	mov dword [esp+0x4], _cstring___name
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [ebp-0x20b0]
	test eax, eax
	jnz R_ImageList_f_140
R_ImageList_f_290:
	mov dword [esp+0x4], _cstring__
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [ebp-0x20b0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__i_total_images
	mov dword [esp], 0x8
	call Com_Printf
	xor ebx, ebx
R_ImageList_f_150:
	mov eax, [ebx+g_platform_name]
	mov [esp+0x10], eax
	cvtsi2ss xmm0, dword [ebx+ebp-0x20]
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring__51f_mb_s_total_
	mov dword [esp], 0x8
	call Com_Printf
	add ebx, 0x4
	cmp ebx, 0x8
	jnz R_ImageList_f_150
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_ImageList_f_160
	mov dword [esp+0x4], _cstring_related_commands
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x20ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ImageList_f_20:
	mov edx, [ebp-0x20b0]
	jmp R_ImageList_f_30
R_ImageList_f_160:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x8
	call Com_Printf
	mov dword [esp+0x4], _cstring________
	mov dword [esp], 0x8
	call Com_Printf
	mov ebx, g_platform_name
R_ImageList_f_170:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call Com_Printf
	add ebx, 0x4
	cmp ebx, g_platform_name+0x8
	jnz R_ImageList_f_170
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x8
	call Com_Printf
	xor edi, edi
	mov dword [ebp-0x20bc], imageTypeName
R_ImageList_f_190:
	mov edx, [ebp-0x20bc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x8
	call Com_Printf
	lea ebx, [ebp+edi*8-0xac]
	mov esi, 0x2
R_ImageList_f_180:
	cvtsi2ss xmm0, dword [ebx]
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring___51f
	mov dword [esp], 0x8
	call Com_Printf
	add ebx, 0x4
	sub esi, 0x1
	jnz R_ImageList_f_180
	mov dword [esp+0x4], _cstring___mb
	mov dword [esp], 0x8
	call Com_Printf
	add edi, 0x1
	add dword [ebp-0x20bc], 0x4
	cmp edi, 0xa
	jnz R_ImageList_f_190
	mov dword [esp+0x4], _cstring_related_commands
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x20ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ImageList_f_140:
	mov dword [ebp-0x20d4], 0x0
R_ImageList_f_280:
	mov ecx, [ebp-0x20d4]
	mov ecx, [ebp+ecx*4-0x20ac]
	mov [ebp-0x20d0], ecx
	movzx eax, word [ecx+0x1a]
	mov [esp+0xc], eax
	movzx eax, word [ecx+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_4i_x_4i_
	mov dword [esp], 0x8
	call Com_Printf
	mov edx, [ebp-0x20d0]
	mov eax, [edx]
	cmp eax, 0x4
	jz R_ImageList_f_200
	cmp eax, 0x5
	jz R_ImageList_f_210
	cmp eax, 0x3
	jz R_ImageList_f_220
R_ImageList_f_370:
	mov edx, [ebp-0x20d0]
	movzx eax, byte [edx+0xc]
	mov eax, [eax*4+imageTypeName]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x8
	call Com_Printf
	cmp byte [ebp-0x20c9], 0x0
	jnz R_ImageList_f_230
	mov ebx, [ebp-0x20d0]
	xor edi, edi
R_ImageList_f_270:
	lea esi, [ebx+0x10]
	cvtsi2ss xmm0, dword [ebx+0x10]
	mulss xmm0, [_float_0_00097656]
	cvtss2sd xmm1, xmm0
	ucomiss xmm0, [_float_10_00000000]
	jp R_ImageList_f_240
	jb R_ImageList_f_250
R_ImageList_f_240:
	mov eax, _cstring_70fk
R_ImageList_f_320:
	movsd [esp+0x8], xmm1
	mov [esp+0x4], eax
	mov dword [esp], 0x8
	call Com_Printf
	mov edx, [esi]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_ImageList_f_260
R_ImageList_f_300:
	add [ebp+edi*4-0x20], edx
R_ImageList_f_310:
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x2
	jnz R_ImageList_f_270
R_ImageList_f_490:
	mov edx, [ebp-0x20d0]
	mov eax, [edx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s1
	mov dword [esp], 0x8
	call Com_Printf
	add dword [ebp-0x20d4], 0x1
	mov ecx, [ebp-0x20d4]
	cmp ecx, [ebp-0x20b0]
	jb R_ImageList_f_280
	jmp R_ImageList_f_290
R_ImageList_f_260:
	mov ecx, [ebp-0x20d0]
	movzx eax, byte [ecx+0xc]
	lea eax, [edi+eax*2]
	add [ebp+eax*4-0xac], edx
	cmp byte [ecx+0xc], 0x4
	ja R_ImageList_f_300
	mov eax, [ebp-0x20d0]
	movsx ecx, byte [eax+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz R_ImageList_f_310
	jmp R_ImageList_f_300
R_ImageList_f_250:
	mov eax, _cstring_71fk
	jmp R_ImageList_f_320
R_ImageList_f_200:
	mov eax, [edx+0x4]
	mov ecx, [eax]
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [ecx+0x44]
	mov eax, [ebp-0x3c]
	cmp eax, 0x33
	jz R_ImageList_f_330
R_ImageList_f_400:
	jg R_ImageList_f_340
	cmp eax, 0x16
	jz R_ImageList_f_350
	jg R_ImageList_f_360
	cmp eax, 0x15
	jnz R_ImageList_f_370
	mov dword [esp+0x4], _cstring_rgba32
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_340:
	cmp eax, 0x31545844
	jz R_ImageList_f_380
	jg R_ImageList_f_390
	cmp eax, 0x72
	jnz R_ImageList_f_370
	mov dword [esp+0x4], _cstring_r32f__
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_210:
	mov edx, [ebp-0x20d0]
	mov eax, [edx+0x4]
R_ImageList_f_410:
	mov ecx, [eax]
	lea edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [ecx+0x44]
	mov eax, [ebp-0x5c]
	cmp eax, 0x33
	jnz R_ImageList_f_400
R_ImageList_f_330:
	mov dword [esp+0x4], _cstring_al16__
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_220:
	mov ecx, [ebp-0x20d0]
	mov eax, [ecx+0x4]
	jmp R_ImageList_f_410
R_ImageList_f_10:
	mov dword [esp+0x4], _cstring_all
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz R_ImageList_f_420
	mov byte [ebp-0x20c9], 0x1
	jmp R_ImageList_f_430
R_ImageList_f_70:
	and eax, 0xffffff00
	jmp R_ImageList_f_440
R_ImageList_f_360:
	cmp eax, 0x1c
	jz R_ImageList_f_450
	cmp eax, 0x32
	jnz R_ImageList_f_370
	mov dword [esp+0x4], _cstring_l8____
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_390:
	cmp eax, 0x33545844
	jz R_ImageList_f_460
	cmp eax, 0x35545844
	jnz R_ImageList_f_370
	mov dword [esp+0x4], _cstring_dxt5__
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_460:
	mov dword [esp+0x4], _cstring_dxt3__
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_450:
	mov dword [esp+0x4], _cstring_a8____
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_380:
	mov dword [esp+0x4], _cstring_dxt1__
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_350:
	mov dword [esp+0x4], _cstring_rgb32_
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ImageList_f_370
R_ImageList_f_230:
	mov ebx, [ebp-0x20d0]
	xor edi, edi
	lea esi, [ebp-0x20]
R_ImageList_f_480:
	cvtsi2ss xmm1, dword [ebx+0x10]
	mulss xmm1, [_float_0_00097656]
	mov edx, _cstring_71fk
	movss xmm0, dword [_float_10_00000000]
	ucomiss xmm0, xmm1
	mov eax, _cstring_70fk
	cmovbe edx, eax
	cvtss2sd xmm1, xmm1
	movsd [esp+0x8], xmm1
	mov [esp+0x4], edx
	mov dword [esp], 0x8
	call Com_Printf
	mov edx, [ebx+0x10]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_ImageList_f_470
	mov ecx, [ebp-0x20d0]
	movzx eax, byte [ecx+0xc]
	lea eax, [edi+eax*2]
	add [ebp+eax*4-0xac], edx
R_ImageList_f_470:
	add [esi], edx
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x4
	cmp edi, 0x2
	jnz R_ImageList_f_480
	jmp R_ImageList_f_490


;Image_Register(char const*, unsigned char, int)
Image_Register:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, Image_Register_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, Image_Register_LoadObj
	cmovz ecx, eax
	movzx eax, byte [ebp+0xc]
	mov [ebp+0xc], eax
	pop ebp
	jmp ecx
	nop


;R_GetImageList(ImageList*)
R_GetImageList:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], R_AddImageToList
	mov dword [esp], 0x6
	call DB_EnumXAssets
	leave
	ret
	nop
	add [eax], al


;Image_AllocProg(int, unsigned char, unsigned char)
Image_AllocProg:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	lea ebx, [edx*4+g_imageProgs]
	mov edx, [eax*4+g_imageProgNames]
	mov [ebx+0x20], edx
	mov eax, [ebp+0xc]
	mov [ebx+0x1e], al
	mov eax, [ebp+0x10]
	mov [ebx+0xb], al
	mov byte [ebx+0xc], 0x0
	mov [esp], edx
	call R_HashAssetName
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz Image_AllocProg_10
Image_AllocProg_20:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz Image_AllocProg_20
Image_AllocProg_10:
	mov [eax*4+imageGlobals], ebx
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Image_GetSurface(GfxImage*)
Image_GetSurface:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov ecx, [edx]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x48]
	mov eax, [ebp-0xc]
	leave
	ret


;R_DelayLoadImage(XAssetHeader, void*)
R_DelayLoadImage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1f], 0x0
	jnz R_DelayLoadImage_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_DelayLoadImage_10:
	mov byte [ebx+0x1f], 0x0
	mov esi, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_DelayLoadImage_20
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz R_DelayLoadImage_30
R_DelayLoadImage_20:
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp DB_LoadedExternalData
R_DelayLoadImage_30:
	mov [esp], ebx
	call Image_LoadFromFile
	test al, al
	jnz R_DelayLoadImage_40
	cmp dword [ebx], 0x3
	jnz R_DelayLoadImage_40
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz R_DelayLoadImage_50
	cmp al, 0x8
	jz R_DelayLoadImage_60
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz R_DelayLoadImage_40
R_DelayLoadImage_70:
	mov edx, [eax+0x4]
	test edx, edx
	jz R_DelayLoadImage_40
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_DelayLoadImage_40:
	mov eax, [ebx+0x4]
	test eax, eax
	jnz R_DelayLoadImage_20
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe R_DelayLoadImage_20
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima1
	mov dword [esp], 0x2
	call Com_Error
	jmp R_DelayLoadImage_20
R_DelayLoadImage_50:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz R_DelayLoadImage_70
	jmp R_DelayLoadImage_40
R_DelayLoadImage_60:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz R_DelayLoadImage_70
	jmp R_DelayLoadImage_40
	nop


;R_ShutdownImages()
R_ShutdownImages:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	call RB_UnbindAllImages
	mov dword [ebp-0x201c], 0x0
	mov esi, imageGlobals
	jmp R_ShutdownImages_10
R_ShutdownImages_60:
	cmp ebx, g_imageProgs+0x1f8
	jae R_ShutdownImages_20
	mov eax, 0x1
	test eax, eax
	jz R_ShutdownImages_30
R_ShutdownImages_70:
	mov eax, [ebp-0x201c]
	mov [ebp+eax*4-0x2018], ebx
	add eax, 0x1
	mov [ebp-0x201c], eax
R_ShutdownImages_50:
	add esi, 0x4
	mov eax, imageGlobals+0x2000
	cmp eax, esi
	jz R_ShutdownImages_40
R_ShutdownImages_10:
	mov ebx, [esi]
	test ebx, ebx
	jz R_ShutdownImages_50
	cmp ebx, g_imageProgs
	jae R_ShutdownImages_60
R_ShutdownImages_20:
	xor eax, eax
	test eax, eax
	jnz R_ShutdownImages_70
R_ShutdownImages_30:
	cmp byte [ebx+0xc], 0x4
	ja R_ShutdownImages_80
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz R_ShutdownImages_90
R_ShutdownImages_80:
	mov edx, ebx
	mov ecx, imageGlobals
	mov edi, imageGlobals+0x8
R_ShutdownImages_100:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp edi, ecx
	jnz R_ShutdownImages_100
R_ShutdownImages_90:
	mov edx, [ebx+0x4]
	test edx, edx
	jz R_ShutdownImages_50
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	add esi, 0x4
	mov eax, imageGlobals+0x2000
	cmp eax, esi
	jnz R_ShutdownImages_10
R_ShutdownImages_40:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], imageGlobals
	call memset
	mov ebx, [ebp-0x201c]
	test ebx, ebx
	jg R_ShutdownImages_110
R_ShutdownImages_150:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ShutdownImages_110:
	xor ebx, ebx
R_ShutdownImages_140:
	mov esi, [ebp+ebx*4-0x2018]
	mov eax, [esi+0x20]
	mov [esp], eax
	call R_HashAssetName
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz R_ShutdownImages_120
R_ShutdownImages_130:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz R_ShutdownImages_130
R_ShutdownImages_120:
	mov [eax*4+imageGlobals], esi
	add ebx, 0x1
	cmp ebx, [ebp-0x201c]
	jnz R_ShutdownImages_140
	jmp R_ShutdownImages_150
	nop


;Image_UpdatePicmip(GfxImage*)
Image_UpdatePicmip:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1e], 0x3
	jz Image_UpdatePicmip_10
Image_UpdatePicmip_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Image_UpdatePicmip_10:
	cmp byte [ebx+0xa], 0x0
	jnz Image_UpdatePicmip_20
	lea eax, [ebp-0xa]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Image_GetPicmip
	movzx eax, byte [ebx+0x8]
	cmp al, [ebp-0xa]
	jz Image_UpdatePicmip_20
	cmp byte [ebx+0xc], 0x4
	ja Image_UpdatePicmip_30
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz Image_UpdatePicmip_30
Image_UpdatePicmip_70:
	mov edx, [ebx+0x4]
	test edx, edx
	jz Image_UpdatePicmip_40
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
Image_UpdatePicmip_40:
	mov [esp], ebx
	call Image_ReloadFromFile
	test al, al
	jnz Image_UpdatePicmip_20
	cmp dword [ebx], 0x3
	jz Image_UpdatePicmip_50
Image_UpdatePicmip_110:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_i
	mov dword [esp], 0x1
	call Com_Error
	jmp Image_UpdatePicmip_20
Image_UpdatePicmip_30:
	mov edx, ebx
	mov ecx, imageGlobals
Image_UpdatePicmip_60:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz Image_UpdatePicmip_60
	jmp Image_UpdatePicmip_70
Image_UpdatePicmip_50:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz Image_UpdatePicmip_80
	cmp al, 0x8
	jz Image_UpdatePicmip_90
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz Image_UpdatePicmip_100
Image_UpdatePicmip_120:
	mov edx, [eax+0x4]
	test edx, edx
	jz Image_UpdatePicmip_100
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
Image_UpdatePicmip_130:
	test al, al
	jnz Image_UpdatePicmip_20
	jmp Image_UpdatePicmip_110
Image_UpdatePicmip_90:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz Image_UpdatePicmip_120
Image_UpdatePicmip_100:
	xor eax, eax
	jmp Image_UpdatePicmip_130
Image_UpdatePicmip_80:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz Image_UpdatePicmip_120
	xor eax, eax
	jmp Image_UpdatePicmip_130
	nop
	add [eax], al


;R_ReloadLostImages()
R_ReloadLostImages:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], R_RebuildLostImage
	mov dword [esp], 0x6
	call DB_EnumXAssets
	leave
	ret


;R_ReleaseLostImages()
R_ReleaseLostImages:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rg
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x22fc]
	movss [eax+0x22fc], xmm0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], R_FreeLostImage
	mov dword [esp], 0x6
	call DB_EnumXAssets
	leave
	ret
	nop


;Image_TrackTotalMemory(GfxImage*, int, int)
Image_TrackTotalMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	cmp byte [ebx+0xc], 0x4
	ja Image_TrackTotalMemory_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz Image_TrackTotalMemory_20
Image_TrackTotalMemory_10:
	sub edx, [ebx+esi*4+0x10]
	add [esi*4+imageGlobals+0x200c], edx
Image_TrackTotalMemory_20:
	pop ebx
	pop esi
	pop ebp
	ret


;Image_PicmipForSemantic(unsigned char, Picmip*)
Image_PicmipForSemantic:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	movzx eax, byte [ebp+0x8]
	cmp al, 0x5
	jz Image_PicmipForSemantic_10
	jbe Image_PicmipForSemantic_20
	cmp al, 0x8
	jz Image_PicmipForSemantic_30
	cmp al, 0xb
	jz Image_PicmipForSemantic_40
Image_PicmipForSemantic_50:
	mov word [ecx], 0x0
	pop ebp
	ret
Image_PicmipForSemantic_20:
	cmp al, 0x2
	jnz Image_PicmipForSemantic_50
Image_PicmipForSemantic_40:
	mov eax, [imageGlobals+0x2000]
	mov byte [ecx+0x1], 0x2
	test eax, eax
	jns Image_PicmipForSemantic_60
Image_PicmipForSemantic_70:
	xor edx, edx
	mov [ecx], dl
Image_PicmipForSemantic_80:
	pop ebp
	ret
Image_PicmipForSemantic_10:
	mov eax, [imageGlobals+0x2004]
Image_PicmipForSemantic_90:
	mov byte [ecx+0x1], 0x2
	test eax, eax
	js Image_PicmipForSemantic_70
Image_PicmipForSemantic_60:
	mov edx, 0x3
	cmp eax, 0x4
	cmovl edx, eax
	mov [ecx], dl
	jmp Image_PicmipForSemantic_80
Image_PicmipForSemantic_30:
	mov eax, [imageGlobals+0x2008]
	jmp Image_PicmipForSemantic_90
	nop


;Image_SetupRenderTarget(GfxImage*, unsigned short, unsigned short, _D3DFORMAT, char const*)
Image_SetupRenderTarget:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movzx ecx, word [ebp+0xc]
	movzx edx, word [ebp+0x10]
	mov eax, [ebp+0x18]
	mov [esp+0x18], eax
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x20003
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Image_SetupAndLoad
	leave
	ret
	nop


;Image_Create2DTexture_PC(GfxImage*, unsigned short, unsigned short, int, int, _D3DFORMAT)
Image_Create2DTexture_PC:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov edi, [ebp+0x18]
	mov [ebp-0x1a], ax
	mov [ebp-0x1c], dx
	mov [esi+0x18], ax
	mov [esi+0x1a], dx
	mov word [esi+0x1c], 0x1
	mov dword [esi], 0x3
	test edi, 0x20000
	jz Image_Create2DTexture_PC_10
	mov ecx, [ebp+0x1c]
	sub ecx, 0x4b
	cmp ecx, 0x5
	jbe Image_Create2DTexture_PC_20
Image_Create2DTexture_PC_70:
	mov ebx, 0x1
	and edi, 0x40000
	jnz Image_Create2DTexture_PC_30
Image_Create2DTexture_PC_50:
	test ebx, ebx
	setz al
	movzx edi, al
	jmp Image_Create2DTexture_PC_40
Image_Create2DTexture_PC_10:
	mov eax, edi
	and eax, 0x10000
	cmp eax, 0x1
	sbb ebx, ebx
	not ebx
	and ebx, 0x200
Image_Create2DTexture_PC_80:
	and edi, 0x40000
	jz Image_Create2DTexture_PC_50
Image_Create2DTexture_PC_30:
	mov edi, 0x2
Image_Create2DTexture_PC_40:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	lea eax, [esi+0x4]
	mov [esp+0x1c], eax
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov [esp+0x10], ebx
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	movzx eax, word [ebp-0x1c]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x5c]
	mov ebx, eax
	test eax, eax
	js Image_Create2DTexture_PC_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Create2DTexture_PC_20:
	mov eax, 0x1
	shl eax, cl
	test al, 0x25
	jz Image_Create2DTexture_PC_70
	mov ebx, 0x2
	jmp Image_Create2DTexture_PC_80
Image_Create2DTexture_PC_60:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x20], eax
	mov [esp+0x1c], ebx
	mov ecx, [ebp+0x1c]
	mov [esp+0x18], ecx
	mov dword [esp+0x14], 0x0
	movzx eax, word [esi+0x1a]
	mov [esp+0x10], eax
	movzx eax, word [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_create2dtexture_
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Image_Create3DTexture_PC(GfxImage*, unsigned short, unsigned short, unsigned short, int, int, _D3DFORMAT)
Image_Create3DTexture_PC:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x1c]
	mov [ebp-0x1a], ax
	mov [ebp-0x1c], dx
	mov edi, ecx
	mov [esi+0x18], ax
	mov [esi+0x1a], dx
	mov [esi+0x1c], cx
	mov dword [esi], 0x4
	test ebx, 0x20000
	jz Image_Create3DTexture_PC_10
	mov ecx, [ebp+0x20]
	sub ecx, 0x4b
	cmp ecx, 0x5
	jbe Image_Create3DTexture_PC_20
Image_Create3DTexture_PC_70:
	mov eax, 0x1
	and ebx, 0x40000
	jnz Image_Create3DTexture_PC_30
Image_Create3DTexture_PC_50:
	xor ebx, ebx
	test eax, eax
	setz bl
	jmp Image_Create3DTexture_PC_40
Image_Create3DTexture_PC_10:
	mov eax, ebx
	and eax, 0x10000
	cmp eax, 0x1
	sbb eax, eax
	not eax
	and eax, 0x200
Image_Create3DTexture_PC_80:
	and ebx, 0x40000
	jz Image_Create3DTexture_PC_50
Image_Create3DTexture_PC_30:
	mov ebx, 0x2
Image_Create3DTexture_PC_40:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x24], 0x0
	lea eax, [esi+0x4]
	mov [esp+0x20], eax
	mov [esp+0x1c], ebx
	mov eax, [ebp+0x20]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	movzx eax, di
	mov [esp+0xc], eax
	movzx eax, word [ebp-0x1c]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x60]
	mov ebx, eax
	test eax, eax
	js Image_Create3DTexture_PC_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Create3DTexture_PC_20:
	mov eax, 0x1
	shl eax, cl
	test al, 0x25
	jz Image_Create3DTexture_PC_70
	mov eax, 0x2
	jmp Image_Create3DTexture_PC_80
Image_Create3DTexture_PC_60:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x24], eax
	mov [esp+0x20], ebx
	mov edi, [ebp+0x20]
	mov [esp+0x1c], edi
	mov dword [esp+0x18], 0x0
	movzx eax, word [esi+0x1c]
	mov [esp+0x14], eax
	movzx eax, word [esi+0x1a]
	mov [esp+0x10], eax
	movzx eax, word [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_create3dtexture_
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_CreateCubeTexture_PC(GfxImage*, unsigned short, int, _D3DFORMAT)
Image_CreateCubeTexture_PC:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov ebx, eax
	mov [esi+0x18], ax
	mov [esi+0x1a], ax
	mov word [esi+0x1c], 0x1
	mov dword [esi], 0x5
	mov eax, gfxMetrics
	cmp byte [eax+0x26], 0x0
	jnz Image_CreateCubeTexture_PC_10
	mov edi, 0x1
	mov dword [ebp-0x1c], 0x1
Image_CreateCubeTexture_PC_30:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x1c], 0x0
	lea eax, [esi+0x4]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x1
	mov eax, [ebp+0x14]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	movzx eax, bx
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x64]
	mov ebx, eax
	test eax, eax
	js Image_CreateCubeTexture_PC_20
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_CreateCubeTexture_PC_10:
	mov [ebp-0x1c], edi
	jmp Image_CreateCubeTexture_PC_30
Image_CreateCubeTexture_PC_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov [esp+0x10], edi
	movzx eax, word [esi+0x18]
	mov [esp+0xc], eax
	mov eax, [esi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_createcubetextur
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void std::__adjust_heap<GfxImage**, int, GfxImage*, int (*)(GfxImage*, GfxImage*)>(GfxImage**, int, int, GfxImage*, int (*)(GfxImage*, GfxImage*))
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	lea ebx, [eax+eax+0x2]
	cmp ebx, [ebp+0x10]
	jl _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov edi, eax
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__70:
	cmp [ebp+0x10], ebx
	jz _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__20
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__100:
	lea edx, [edi-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	cmp edi, [ebp+0xc]
	jg _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__30
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__40:
	mov eax, [ebp+0x14]
	mov [esi], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__50:
	mov eax, [esi]
	mov edx, [ebp+0x8]
	mov [edx+edi*4], eax
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp ebx, [ebp+0xc]
	jle _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__40
	mov edi, ebx
	mov ebx, eax
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__30:
	mov eax, [ebp+0x8]
	lea esi, [eax+ebx*4]
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test eax, eax
	jnz _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__50
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__40
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__10:
	mov [ebp-0x1c], eax
	mov edi, ebx
	jmp _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__60
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__80:
	lea edi, [ebx-0x1]
	mov ecx, [ebp+0x8]
	lea esi, [ecx+edi*4]
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__90:
	mov eax, [esi]
	mov edx, [ebp-0x1c]
	mov [ecx+edx*4], eax
	lea ebx, [edi+edi+0x2]
	cmp [ebp+0x10], ebx
	jle _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__70
	mov [ebp-0x1c], edi
	mov edi, ebx
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__60:
	lea eax, [ebx*4]
	mov esi, [ebp+0x8]
	add esi, eax
	mov edx, [ebp+0x8]
	mov eax, [edx+eax-0x4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x18]
	test eax, eax
	jnz _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__80
	mov ecx, [ebp+0x8]
	jmp _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__90
_ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__20:
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+edx*4-0x4]
	mov [esi], eax
	mov edi, edx
	sub edi, 0x1
	lea esi, [ecx+edi*4]
	jmp _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2__100


;void std::__insertion_sort<GfxImage**, int (*)(GfxImage*, GfxImage*)>(GfxImage**, GfxImage**, int (*)(GfxImage*, GfxImage*))
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jz _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__10
	mov edx, [ebp+0x8]
	add edx, 0x4
	mov [ebp-0x1c], edx
	cmp eax, edx
	jz _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__10
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__50:
	mov edi, [edx]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test eax, eax
	jnz _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__20
	mov ebx, [ebp-0x1c]
	sub ebx, 0x4
	mov esi, [ebp-0x1c]
	jmp _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__30
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__40:
	mov eax, [ebx]
	mov [esi], eax
	mov esi, ebx
	sub ebx, 0x4
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__30:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x10]
	test eax, eax
	jnz _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__40
	mov [esi], edi
	add dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x1c]
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__60:
	cmp [ebp+0xc], edx
	jnz _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__50
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__20:
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
	jmp _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0__60
	nop


;void std::__introsort_loop<GfxImage**, int, int (*)(GfxImage*, GfxImage*)>(GfxImage**, GfxImage**, int, int (*)(GfxImage*, GfxImage*))
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1_:
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__10
	mov edi, [ebp+0x10]
	test edi, edi
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__20
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__150:
	cmp eax, 0x7
	jle _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__10
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
	jmp _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__30
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__40:
	add edi, 0x1
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__30:
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
	call _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2_
	sub ebx, 0x4
	cmp edi, esi
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__40
	mov ecx, [ebp+0xc]
	mov edi, ecx
	sub edi, [ebp+0x8]
	mov [ebp-0x2c], edi
	mov esi, edi
	sub esi, 0x4
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__50:
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
	call _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2_
	mov ecx, ebx
	sub esi, 0x4
	mov eax, edi
	sub eax, [ebp+0xc]
	add eax, [ebp-0x2c]
	lea eax, [eax+esi+0x4]
	cmp eax, 0x7
	jg _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__50
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__20:
	mov edx, [ebp+0x10]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x20], 0x0
	mov esi, [ebp+0xc]
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__140:
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
	test eax, eax
	jz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__60
	mov edx, [ebp+0xc]
	mov eax, [edx-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__70
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__170:
	mov esi, ebx
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__120:
	mov edi, [esi]
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__110:
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__80
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__90:
	sub ebx, 0x4
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebp+0x14]
	test eax, eax
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__90
	cmp esi, ebx
	jae _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__100
	mov edx, [esi]
	mov eax, [ebx]
	mov [esi], eax
	mov [ebx], edx
	add esi, 0x4
	mov [esp+0x4], edi
	mov eax, [esi]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__90
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__80:
	add esi, 0x4
	jmp _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__110
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__70:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__120
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__160:
	mov esi, [ebp+0x8]
	jmp _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__120
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__100:
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__130
	mov eax, esi
	sub eax, [ebp+0x8]
	cmp eax, 0x43
	jle _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__10
	add dword [ebp-0x20], 0x1
	mov [ebp+0xc], esi
	mov edx, [ebp-0x20]
	cmp [ebp+0x10], edx
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__140
	jmp _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__150
_ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__60:
	mov edi, [ebp+0xc]
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__160
	mov eax, [edi-0x4]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call dword [ebp+0x14]
	test eax, eax
	jnz _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__120
	jmp _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1__170


;Initialized global or static variables of r_image:
SECTION .data
imageTypeName: dd _cstring_misc__, _cstring_debug_, _cstring_tex, _cstring_ui____, _cstring_lmap__, _cstring_light_, _cstring_fx___, _cstring_hud___, _cstring_model_, _cstring_world_, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
g_imageProgNames: dd _cstring_shadow_cookie, _cstring_shadow_cookie_bl, _cstring_shadowmap_sun, _cstring_shadowmap_spot, _cstring_floatz, _cstring_post_effect_0, _cstring_post_effect_1, _cstring_pingpong_0, _cstring_pingpong_1, _cstring_resolved_scene, _cstring_savedscreen, _cstring_raw, _cstring_model_lighting, _cstring_model_lighting1, 0x0, 0x0
g_platform_name: dd _cstring_current, _cstring__min_pc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of r_image:
SECTION .rdata


;Zero initialized global or static variables of r_image:
SECTION .bss
g_imageProgs: resb 0x200
imageGlobals: resb 0x2080


;All cstrings:
SECTION .rdata
_cstring_error_failed_to_:		db "ERROR: failed to load image ",27h,"%s",27h,0ah,0
_cstring_couldnt_load_ima:		db "Couldn",27h,"t load image ",27h,"%s",27h," to recover from a lost device",0
_cstring_no_way_to_recove:		db "No way to recover image ",27h,"%s",27h," from a lost device",0
_cstring_picmip_is_set_ma:		db "Picmip is set manually.",0ah,0
_cstring_using_picmip_i_o:		db "Using picmip %i on most textures, %i on normal maps, and %i on specular maps",0ah,0
_cstring_texture_detail_i:		db "Texture detail is set automatically.",0ah,0
_cstring_reducing_texture:		db "Reducing texture detail based on total system memory of %i MB to improve load times.",0ah,0
_cstring_picmip_is_set_to:		db "Picmip is set to lowest quality for generating reflections.",0ah,0
_cstring_failed_to_load_i:		db "failed to load image ",27h,"%s",27h,0
_cstring_couldnt_load_ima1:		db "Couldn",27h,"t load image ",27h,"%s",27h,0ah,0
_cstring_createcubetextur:		db "CreateCubeTexture ( %s, %i, %i, %i ) failed: %08x = %s",0
_cstring_white:		db "$white",0
_cstring_black:		db "$black",0
_cstring_black_3d:		db "$black_3d",0
_cstring_black_cube:		db "$black_cube",0
_cstring_gray:		db "$gray",0
_cstring_identitynormalma:		db "$identitynormalmap",0
_cstring_pixelcostcolorco:		db "$pixelcostcolorcode",0
_cstring_fmt_dimension:		db 0ah,"-fmt- -dimension-",0
_cstring_s:		db "%s",0
_cstring___name:		db "  --name-------",0ah,0
_cstring__:		db " ---------",0ah,0
_cstring__i_total_images:		db " %i total images",0ah,0
_cstring__51f_mb_s_total_:		db " %5.1f MB %s total image size",0ah,0
_cstring_related_commands:		db "Related commands: meminfo, imagelist, gfx_world, gfx_model, cg_drawfps, com_statmon, tempmeminfo",0ah,0
_cstring_:		db 0ah,0
_cstring________:		db "       ",0
_cstring_s1:		db "%s:",0
_cstring___51f:		db "  %5.1f",0
_cstring___mb:		db "  MB",0ah,0
_cstring_4i_x_4i_:		db "%4i x %-4i ",0
_cstring___s:		db "  %s",0
_cstring_70fk:		db "%7.0fk",0
_cstring___s1:		db "  %s",0ah,0
_cstring_71fk:		db "%7.1fk",0
_cstring_rgba32:		db "RGBA32",0
_cstring_r32f__:		db "R32F  ",0
_cstring_al16__:		db "AL16  ",0
_cstring_all:		db "all",0
_cstring_l8____:		db "L8    ",0
_cstring_dxt5__:		db "DXT5  ",0
_cstring_dxt3__:		db "DXT3  ",0
_cstring_a8____:		db "A8    ",0
_cstring_dxt1__:		db "DXT1  ",0
_cstring_rgb32_:		db "RGB32 ",0
_cstring_create2dtexture_:		db "Create2DTexture( %s, %i, %i, %i, %i ) failed: %08x = %s",0
_cstring_create3dtexture_:		db "Create3DTexture( %s, %i, %i, %i, %i, %i ) failed: %08x = %s",0
_cstring_misc__:		db "misc  ",0
_cstring_debug_:		db "debug ",0
_cstring_tex:		db "$tex+",3fh,0
_cstring_ui____:		db "ui    ",0
_cstring_lmap__:		db "lmap  ",0
_cstring_light_:		db "light ",0
_cstring_fx___:		db "f/x   ",0
_cstring_hud___:		db "hud   ",0
_cstring_model_:		db "model ",0
_cstring_world_:		db "world ",0
_cstring_shadow_cookie:		db "$shadow_cookie",0
_cstring_shadow_cookie_bl:		db "$shadow_cookie_blur",0
_cstring_shadowmap_sun:		db "$shadowmap_sun",0
_cstring_shadowmap_spot:		db "$shadowmap_spot",0
_cstring_floatz:		db "$floatz",0
_cstring_post_effect_0:		db "$post_effect_0",0
_cstring_post_effect_1:		db "$post_effect_1",0
_cstring_pingpong_0:		db "$pingpong_0",0
_cstring_pingpong_1:		db "$pingpong_1",0
_cstring_resolved_scene:		db "$resolved_scene",0
_cstring_savedscreen:		db "$savedscreen",0
_cstring_raw:		db "$raw",0
_cstring_model_lighting:		db "$model_lighting",0
_cstring_model_lighting1:		db "$model_lighting1",0
_cstring_current:		db "current",0
_cstring__min_pc:		db " min_pc",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00000095:		dd 0x35800000	; 9.53674e-07
_float_0_00097656:		dd 0x3a800000	; 0.000976562
_float_10_00000000:		dd 0x41200000	; 10

