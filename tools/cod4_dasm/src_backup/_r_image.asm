;Imports of r_image:
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern useFastFile
	extern _Z10Image_LoadPKchi
	extern _Z14Com_PrintErroriPKcz
	extern _Z20Image_ReloadFromFileP8GfxImage
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z19Image_BuildWaterMapP8GfxImage
	extern rgp
	extern _Z15R_HashAssetNamePKc
	extern strcmp
	extern _Z18Hunk_AllocInternali
	extern memcpy
	extern _Z24R_AvailableTextureMemoryv
	extern _ZN11MacFeatures17GetMemorySizeInMBEv
	extern r_reflectionProbeGenerate
	extern r_picmip_manual
	extern _Z10Com_PrintfiPKcz
	extern r_picmip
	extern r_picmip_bump
	extern r_picmip_spec
	extern r_specular
	extern r_rendererInUse
	extern _Z11Dvar_SetIntPK6dvar_si
	extern r_loadForRenderer
	extern gfxMetrics
	extern dx_ctx
	extern _Z18Image_CountMipmapsjjjj
	extern _Z17Image_CubemapFacej
	extern _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
	extern _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj
	extern _Z18Image_LoadFromFileP8GfxImage
	extern _Z21DB_LoadedExternalDatai
	extern r_picmip_water
	extern _Z18R_ErrorDescriptionl
	extern _Z13RB_InitImagesv
	extern rg
	extern cmd_args
	extern memset
	extern _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	extern _Z9I_stricmpPKcS0_
	extern _Z18RB_UnbindAllImagesv
	extern _Z15Image_GetPicmipPK8GfxImageP6Picmip
	extern _Z18Image_SetupAndLoadP8GfxImageiiii10_D3DFORMATPKc
	extern memmove

;Exports of r_image:
	global imageTypeName
	global g_imageProgs
	global imageGlobals
	global g_imageProgNames
	global _Z16R_AddImageToList12XAssetHeaderPv
	global _Z27Image_FindExisting_FastFilePKc
	global _Z23Image_Register_FastFilePKchi
	global _Z22Image_Register_LoadObjPKchi
	global _Z15R_FreeLostImage12XAssetHeaderPv
	global _Z18R_RebuildLostImage12XAssetHeaderPv
	global _Z12imagecompareP8GfxImageS0_
	global _Z26Image_FindExisting_LoadObjPKc
	global _Z11Image_AllocPKchhi
	global _Z11R_SetPicmipv
	global _Z12Image_ReloadP8GfxImage
	global _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage
	global _Z12R_EnumImagesPFv12XAssetHeaderPvES0_
	global _Z12R_InitImagesv
	global _Z13Image_ReleaseP8GfxImage
	global _Z13R_ImageList_fv
	global _Z14Image_RegisterPKchi
	global _Z14R_GetImageListP9ImageList
	global _Z15Image_AllocProgihh
	global _Z16Image_GetSurfaceP8GfxImage
	global _Z16R_DelayLoadImage12XAssetHeaderPv
	global _Z16R_ShutdownImagesv
	global _Z18Image_UpdatePicmipP8GfxImage
	global _Z18R_ReloadLostImagesv
	global _Z19R_ReleaseLostImagesv
	global _Z22Image_TrackTotalMemoryP8GfxImageii
	global _Z23Image_PicmipForSemantichP6Picmip
	global _Z23Image_SetupRenderTargetP8GfxImagett10_D3DFORMATPKc
	global _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT
	global _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT
	global _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT
	global _ZSt13__adjust_heapIPP8GfxImageiS1_PFiS1_S1_EEvT_T0_S6_T1_T2_
	global _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
	global _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1_
	global g_platform_name


SECTION .text


;R_AddImageToList(XAssetHeader, void*)
_Z16R_AddImageToList12XAssetHeaderPv:
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
_Z27Image_FindExisting_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;Image_Register_FastFile(char const*, unsigned char, int)
_Z23Image_Register_FastFilePKchi:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z27Image_FindExisting_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Image_FindExisting_LoadObjPKc
	cmovz ecx, eax
	pop ebp
	jmp ecx


;Image_Register_LoadObj(char const*, unsigned char, int)
_Z22Image_Register_LoadObjPKchi:
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
	mov edx, _Z27Image_FindExisting_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z26Image_FindExisting_LoadObjPKc
	cmovz edx, eax
	mov [esp], esi
	call edx
	mov ebx, eax
	test eax, eax
	jz _Z22Image_Register_LoadObjPKchi_10
_Z22Image_Register_LoadObjPKchi_20:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Image_Register_LoadObjPKchi_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, edi
	movzx eax, dl
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z10Image_LoadPKchi
	mov ebx, eax
	test eax, eax
	jnz _Z22Image_Register_LoadObjPKchi_20
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_failed_to_
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	jmp _Z22Image_Register_LoadObjPKchi_20
	nop
	add [eax], al


;R_FreeLostImage(XAssetHeader, void*)
_Z15R_FreeLostImage12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1e], 0x4
	jbe _Z15R_FreeLostImage12XAssetHeaderPv_10
	cmp byte [ebx+0xc], 0x4
	jbe _Z15R_FreeLostImage12XAssetHeaderPv_20
_Z15R_FreeLostImage12XAssetHeaderPv_50:
	mov edx, ebx
	mov ecx, imageGlobals
_Z15R_FreeLostImage12XAssetHeaderPv_30:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz _Z15R_FreeLostImage12XAssetHeaderPv_30
_Z15R_FreeLostImage12XAssetHeaderPv_40:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z15R_FreeLostImage12XAssetHeaderPv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
_Z15R_FreeLostImage12XAssetHeaderPv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15R_FreeLostImage12XAssetHeaderPv_20:
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz _Z15R_FreeLostImage12XAssetHeaderPv_40
	jmp _Z15R_FreeLostImage12XAssetHeaderPv_50
	nop


;R_RebuildLostImage(XAssetHeader, void*)
_Z18R_RebuildLostImage12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_10
_Z18R_RebuildLostImage12XAssetHeaderPv_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18R_RebuildLostImage12XAssetHeaderPv_10:
	movzx eax, byte [ebx+0x1e]
	cmp al, 0x4
	ja _Z18R_RebuildLostImage12XAssetHeaderPv_20
	cmp al, 0x3
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_30
	cmp byte [ebx+0x1f], 0x0
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_40
	mov [esp], ebx
	call _Z20Image_ReloadFromFileP8GfxImage
	test al, al
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_40
	cmp dword [ebx], 0x3
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_50
_Z18R_RebuildLostImage12XAssetHeaderPv_120:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_40
_Z18R_RebuildLostImage12XAssetHeaderPv_20:
	cmp ebx, g_imageProgs
	jb _Z18R_RebuildLostImage12XAssetHeaderPv_60
	cmp ebx, g_imageProgs+0x1f8
	jb _Z18R_RebuildLostImage12XAssetHeaderPv_70
_Z18R_RebuildLostImage12XAssetHeaderPv_60:
	xor edx, edx
_Z18R_RebuildLostImage12XAssetHeaderPv_80:
	test edx, edx
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_40
	cmp al, 0x5
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_40
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z19Image_BuildWaterMapP8GfxImage
_Z18R_RebuildLostImage12XAssetHeaderPv_30:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_way_to_recove
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_40
_Z18R_RebuildLostImage12XAssetHeaderPv_70:
	mov edx, 0x1
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_80
_Z18R_RebuildLostImage12XAssetHeaderPv_50:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_90
	cmp al, 0x8
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_100
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_110
_Z18R_RebuildLostImage12XAssetHeaderPv_130:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z18R_RebuildLostImage12XAssetHeaderPv_110
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
_Z18R_RebuildLostImage12XAssetHeaderPv_140:
	test al, al
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_40
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_120
_Z18R_RebuildLostImage12XAssetHeaderPv_100:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_130
_Z18R_RebuildLostImage12XAssetHeaderPv_110:
	xor eax, eax
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_140
_Z18R_RebuildLostImage12XAssetHeaderPv_90:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz _Z18R_RebuildLostImage12XAssetHeaderPv_130
	xor eax, eax
	jmp _Z18R_RebuildLostImage12XAssetHeaderPv_140


;imagecompare(GfxImage*, GfxImage*)
_Z12imagecompareP8GfxImageS0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0xc]
	cmp [edx+0xc], al
	ja _Z12imagecompareP8GfxImageS0__10
	jb _Z12imagecompareP8GfxImageS0__20
	mov eax, [edx+0x10]
	cmp eax, [ecx+0x10]
	setl al
	movzx eax, al
	pop ebp
	ret
_Z12imagecompareP8GfxImageS0__20:
	mov eax, 0x1
	pop ebp
	ret
_Z12imagecompareP8GfxImageS0__10:
	xor eax, eax
	pop ebp
	ret
	nop


;Image_FindExisting_LoadObj(char const*)
_Z26Image_FindExisting_LoadObjPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z15R_HashAssetNamePKc
	mov ebx, eax
	and ebx, 0x7ff
	mov esi, [ebx*4+imageGlobals]
	test esi, esi
	jz _Z26Image_FindExisting_LoadObjPKc_10
_Z26Image_FindExisting_LoadObjPKc_20:
	mov eax, [esi+0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z26Image_FindExisting_LoadObjPKc_10
	add ebx, 0x1
	and ebx, 0x7ff
	mov esi, [ebx*4+imageGlobals]
	test esi, esi
	jnz _Z26Image_FindExisting_LoadObjPKc_20
_Z26Image_FindExisting_LoadObjPKc_30:
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
_Z26Image_FindExisting_LoadObjPKc_10:
	cmp esi, g_imageProgs
	jb _Z26Image_FindExisting_LoadObjPKc_30
	cmp esi, g_imageProgs+0x1f8
	jae _Z26Image_FindExisting_LoadObjPKc_30
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
_Z11Image_AllocPKchhi:
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
	call _Z18Hunk_AllocInternali
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
	call _Z15R_HashAssetNamePKc
	and eax, 0x7ff
	mov esi, [eax*4+imageGlobals]
	test esi, esi
	jz _Z11Image_AllocPKchhi_10
_Z11Image_AllocPKchhi_20:
	add eax, 0x1
	and eax, 0x7ff
	mov ebx, [eax*4+imageGlobals]
	test ebx, ebx
	jnz _Z11Image_AllocPKchhi_20
_Z11Image_AllocPKchhi_10:
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
_Z11R_SetPicmipv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	call _Z24R_AvailableTextureMemoryv
	mov ebx, eax
	call _ZN11MacFeatures17GetMemorySizeInMBEv
	mov esi, eax
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11R_SetPicmipv_10
	mov eax, r_picmip_manual
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11R_SetPicmipv_20
	mov dword [esp+0x4], _cstring_picmip_is_set_ma
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
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
	jz _Z11R_SetPicmipv_30
_Z11R_SetPicmipv_90:
	mov eax, r_rendererInUse
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z11R_SetPicmipv_30
_Z11R_SetPicmipv_100:
	mov eax, [imageGlobals+0x2008]
	mov [esp+0x10], eax
	mov eax, [imageGlobals+0x2004]
	mov [esp+0xc], eax
	mov eax, [imageGlobals+0x2000]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_using_picmip_i_o
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z11R_SetPicmipv_20:
	mov dword [esp+0x4], _cstring_texture_detail_i
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	cmp ebx, 0x18f
	jbe _Z11R_SetPicmipv_40
	mov dword [imageGlobals+0x2000], 0x1
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
_Z11R_SetPicmipv_110:
	cmp esi, 0x3ff
	ja _Z11R_SetPicmipv_50
	mov eax, 0x3
_Z11R_SetPicmipv_130:
	cmp eax, [imageGlobals+0x2000]
	jg _Z11R_SetPicmipv_60
	xor edx, edx
_Z11R_SetPicmipv_120:
	cmp eax, [imageGlobals+0x2004]
	jle _Z11R_SetPicmipv_70
	mov [imageGlobals+0x2004], eax
	mov edx, 0x1
_Z11R_SetPicmipv_70:
	cmp eax, [imageGlobals+0x2008]
	jle _Z11R_SetPicmipv_80
	mov [imageGlobals+0x2008], eax
_Z11R_SetPicmipv_150:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_reducing_texture
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z11R_SetPicmipv_140:
	mov eax, [imageGlobals+0x2000]
	mov [esp+0x4], eax
	mov eax, r_picmip
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [imageGlobals+0x2004]
	mov [esp+0x4], eax
	mov eax, r_picmip_bump
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, [imageGlobals+0x2008]
	mov [esp+0x4], eax
	mov eax, r_picmip_spec
	mov eax, [eax]
	mov [esp], eax
	call _Z11Dvar_SetIntPK6dvar_si
	mov eax, r_specular
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11R_SetPicmipv_90
_Z11R_SetPicmipv_30:
	mov dword [imageGlobals+0x2008], 0x3
	jmp _Z11R_SetPicmipv_100
_Z11R_SetPicmipv_10:
	mov dword [esp+0x4], _cstring_picmip_is_set_to
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [imageGlobals+0x2000], 0x2
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z11R_SetPicmipv_40:
	cmp ebx, 0xc7
	jbe _Z11R_SetPicmipv_110
	mov dword [imageGlobals+0x2000], 0x2
	mov dword [imageGlobals+0x2004], 0x2
	mov dword [imageGlobals+0x2008], 0x2
	jmp _Z11R_SetPicmipv_110
_Z11R_SetPicmipv_60:
	mov [imageGlobals+0x2000], eax
	mov edx, 0x1
	jmp _Z11R_SetPicmipv_120
_Z11R_SetPicmipv_50:
	cmp esi, 0x800
	sbb eax, eax
	not eax
	add eax, 0x2
	jmp _Z11R_SetPicmipv_130
_Z11R_SetPicmipv_80:
	test dl, dl
	jz _Z11R_SetPicmipv_140
	jmp _Z11R_SetPicmipv_150


;Image_Reload(GfxImage*)
_Z12Image_ReloadP8GfxImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xc], 0x4
	ja _Z12Image_ReloadP8GfxImage_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz _Z12Image_ReloadP8GfxImage_10
_Z12Image_ReloadP8GfxImage_60:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z12Image_ReloadP8GfxImage_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
_Z12Image_ReloadP8GfxImage_20:
	mov [esp], ebx
	call _Z20Image_ReloadFromFileP8GfxImage
	test al, al
	jnz _Z12Image_ReloadP8GfxImage_30
	cmp dword [ebx], 0x3
	jz _Z12Image_ReloadP8GfxImage_40
_Z12Image_ReloadP8GfxImage_100:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_i
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
_Z12Image_ReloadP8GfxImage_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12Image_ReloadP8GfxImage_10:
	mov edx, ebx
	mov ecx, imageGlobals
_Z12Image_ReloadP8GfxImage_50:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz _Z12Image_ReloadP8GfxImage_50
	jmp _Z12Image_ReloadP8GfxImage_60
_Z12Image_ReloadP8GfxImage_40:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz _Z12Image_ReloadP8GfxImage_70
	cmp al, 0x8
	jz _Z12Image_ReloadP8GfxImage_80
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz _Z12Image_ReloadP8GfxImage_90
_Z12Image_ReloadP8GfxImage_110:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z12Image_ReloadP8GfxImage_90
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
_Z12Image_ReloadP8GfxImage_120:
	test al, al
	jz _Z12Image_ReloadP8GfxImage_100
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12Image_ReloadP8GfxImage_80:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz _Z12Image_ReloadP8GfxImage_110
_Z12Image_ReloadP8GfxImage_90:
	xor eax, eax
	jmp _Z12Image_ReloadP8GfxImage_120
_Z12Image_ReloadP8GfxImage_70:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz _Z12Image_ReloadP8GfxImage_110
	xor eax, eax
	jmp _Z12Image_ReloadP8GfxImage_120
	add [eax], al


;Load_Texture(GfxImageLoadDef**, GfxImage*)
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage:
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
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10
	mov eax, [esi+0x8]
	mov [ebp-0x24], eax
	mov eax, [esi+0xc]
	test eax, eax
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_20
	mov byte [edi+0x1f], 0x0
	mov eax, [edi]
	cmp eax, 0x3
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_30
	cmp eax, 0x4
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_40
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
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_50
	mov eax, [ebp-0x20]
	mov [ebp-0x1c], eax
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_150:
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
	js _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_60
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_170:
	mov dword [ebp-0x2c], 0x6
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_140:
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
	call _Z18Image_CountMipmapsjjjj
	mov [ebp-0x28], eax
	mov esi, [ebp-0x2c]
	test esi, esi
	jle _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10
	mov dword [ebp-0x30], 0x0
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_70
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_90:
	mov dword [ebp-0x34], 0x0
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jg _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_80
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_100:
	add dword [ebp-0x30], 0x1
	mov ecx, [ebp-0x30]
	cmp [ebp-0x2c], ecx
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_70:
	cmp dword [ebp-0x2c], 0x1
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_90
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z17Image_CubemapFacej
	mov [ebp-0x34], eax
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jle _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_100
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_80:
	xor esi, esi
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_110:
	mov ecx, [ebp-0x38]
	mov [esp+0x10], ecx
	mov [esp+0xc], esi
	mov eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x24]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
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
	call _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj
	add [ebp-0x38], eax
	add esi, 0x1
	cmp [ebp-0x28], esi
	jnz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_110
	add dword [ebp-0x30], 0x1
	mov ecx, [ebp-0x30]
	cmp [ebp-0x2c], ecx
	jnz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_70
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_20:
	cmp byte [edi+0x1e], 0x5
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_120
	cmp byte [edi+0x1f], 0x0
	jnz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10
	mov ebx, [edi+0x10]
	mov dword [edi+0x10], 0x0
	mov dword [edi+0x14], 0x0
	mov [esp], edi
	call _Z18Image_LoadFromFileP8GfxImage
	test al, al
	jz _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_130
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_160:
	mov [ebp+0x8], ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z21DB_LoadedExternalDatai
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_40:
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
	call _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT
	mov dword [ebp-0x2c], 0x1
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_140
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_120:
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
	call _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_10
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_30:
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
	call _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT
	mov dword [ebp-0x2c], 0x1
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_140
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_50:
	mov dword [ebp-0x20], 0x1
	mov dword [ebp-0x1c], 0x1
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_150
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_130:
	mov eax, [edi+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_160
_Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_60:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
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
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12Load_TexturePP15GfxImageLoadDefP8GfxImage_170


;R_EnumImages(void (*)(XAssetHeader, void*), void*)
_Z12R_EnumImagesPFv12XAssetHeaderPvES0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov ebx, imageGlobals
	mov esi, imageGlobals+0x2000
	jmp _Z12R_EnumImagesPFv12XAssetHeaderPvES0__10
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__60:
	cmp eax, g_imageProgs+0x1f8
	jae _Z12R_EnumImagesPFv12XAssetHeaderPvES0__20
	mov edx, 0x1
	test edx, edx
	jz _Z12R_EnumImagesPFv12XAssetHeaderPvES0__30
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__50:
	add ebx, 0x4
	cmp esi, ebx
	jz _Z12R_EnumImagesPFv12XAssetHeaderPvES0__40
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__10:
	mov eax, [ebx]
	test eax, eax
	jz _Z12R_EnumImagesPFv12XAssetHeaderPvES0__50
	cmp eax, g_imageProgs
	jae _Z12R_EnumImagesPFv12XAssetHeaderPvES0__60
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__20:
	xor edx, edx
	test edx, edx
	jnz _Z12R_EnumImagesPFv12XAssetHeaderPvES0__50
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__30:
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z12R_EnumImagesPFv12XAssetHeaderPvES0__10
_Z12R_EnumImagesPFv12XAssetHeaderPvES0__40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_InitImages()
_Z12R_InitImagesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	call _Z11R_SetPicmipv
	mov edi, useFastFile
	mov eax, [edi]
	mov ebx, _Z23Image_Register_FastFilePKchi
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_white
	call eax
	mov esi, rgp
	mov [esi+0x2008], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black
	call eax
	mov [esi+0x200c], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black_3d
	call eax
	mov [esi+0x2010], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_black_cube
	call eax
	mov [esi+0x2014], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_gray
	call eax
	mov [esi+0x2018], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovnz eax, ebx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_identitynormalma
	call eax
	mov [esi+0x201c], eax
	mov eax, [edi]
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovz ebx, eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_pixelcostcolorco
	call ebx
	mov [esi+0x2028], eax
	call _Z13RB_InitImagesv
	mov eax, [g_imageProgNames+0x2c]
	mov [g_imageProgs+0x1ac], eax
	mov byte [g_imageProgs+0x1aa], 0x4
	mov byte [g_imageProgs+0x197], 0x0
	mov byte [g_imageProgs+0x198], 0x0
	mov [esp], eax
	call _Z15R_HashAssetNamePKc
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz _Z12R_InitImagesv_10
_Z12R_InitImagesv_20:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz _Z12R_InitImagesv_20
_Z12R_InitImagesv_10:
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
_Z13Image_ReleaseP8GfxImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0xc], 0x4
	ja _Z13Image_ReleaseP8GfxImage_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz _Z13Image_ReleaseP8GfxImage_10
_Z13Image_ReleaseP8GfxImage_40:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z13Image_ReleaseP8GfxImage_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
_Z13Image_ReleaseP8GfxImage_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13Image_ReleaseP8GfxImage_10:
	mov edx, ebx
	mov ecx, imageGlobals
_Z13Image_ReleaseP8GfxImage_30:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz _Z13Image_ReleaseP8GfxImage_30
	jmp _Z13Image_ReleaseP8GfxImage_40
	nop


;R_ImageList_f()
_Z13R_ImageList_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20ec
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z13R_ImageList_fv_10
_Z13R_ImageList_fv_420:
	mov byte [ebp-0x20c9], 0x0
_Z13R_ImageList_fv_430:
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
	mov dword [esp+0x4], _Z16R_AddImageToList12XAssetHeaderPv
	mov dword [esp], 0x6
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	cmp byte [ebp-0x20c9], 0x0
	jz _Z13R_ImageList_fv_20
	xor ecx, ecx
	mov ebx, g_imageProgs
	mov edx, [ebp-0x20b0]
_Z13R_ImageList_fv_50:
	cmp edx, 0x7ff
	ja _Z13R_ImageList_fv_30
	mov eax, [ebx]
	test eax, eax
	jz _Z13R_ImageList_fv_40
	lea eax, [ecx+ecx*8]
	lea eax, [eax*4+g_imageProgs]
	mov [ebp+edx*4-0x20ac], eax
	lea eax, [edx+0x1]
	mov [ebp-0x20b0], eax
	mov edx, eax
_Z13R_ImageList_fv_40:
	add ecx, 0x1
	add ebx, 0x24
	cmp ecx, 0xe
	jnz _Z13R_ImageList_fv_50
_Z13R_ImageList_fv_30:
	lea edx, [ebp+edx*4-0x20ac]
	mov [ebp-0x20c8], edx
	lea esi, [ebp-0x20ac]
	cmp esi, edx
	jz _Z13R_ImageList_fv_60
	mov ebx, edx
	sub ebx, esi
	mov eax, ebx
	sar eax, 0x2
	cmp eax, 0x1
	jz _Z13R_ImageList_fv_70
	xor edx, edx
_Z13R_ImageList_fv_80:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _Z13R_ImageList_fv_80
	lea eax, [edx+edx]
_Z13R_ImageList_fv_440:
	mov dword [esp+0xc], _Z12imagecompareP8GfxImageS0_
	mov [esp+0x8], eax
	mov ecx, [ebp-0x20c8]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _ZSt16__introsort_loopIPP8GfxImageiPFiS1_S1_EEvT_S5_T0_T1_
	cmp ebx, 0x43
	jle _Z13R_ImageList_fv_90
	mov dword [esp+0x8], _Z12imagecompareP8GfxImageS0_
	lea ebx, [ebp-0x206c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
	cmp [ebp-0x20c8], ebx
	jz _Z13R_ImageList_fv_60
	mov [ebp-0x20c0], ebx
	mov eax, ebx
	mov edi, ebx
_Z13R_ImageList_fv_120:
	mov eax, [eax]
	mov [ebp-0x20c4], eax
	mov ebx, [ebp-0x20c0]
	sub ebx, 0x4
	mov edx, eax
	jmp _Z13R_ImageList_fv_100
_Z13R_ImageList_fv_110:
	mov [edi], esi
	mov edi, ebx
	sub ebx, 0x4
	mov edx, [ebp-0x20c4]
_Z13R_ImageList_fv_100:
	mov esi, [ebx]
	mov [esp+0x4], esi
	mov [esp], edx
	call _Z12imagecompareP8GfxImageS0_
	test eax, eax
	jnz _Z13R_ImageList_fv_110
	mov ecx, [ebp-0x20c4]
	mov [edi], ecx
	add dword [ebp-0x20c0], 0x4
	mov eax, [ebp-0x20c0]
	cmp [ebp-0x20c8], eax
	jz _Z13R_ImageList_fv_60
	mov eax, [ebp-0x20c0]
	mov edi, [ebp-0x20c0]
	jmp _Z13R_ImageList_fv_120
_Z13R_ImageList_fv_90:
	mov dword [esp+0x8], _Z12imagecompareP8GfxImageS0_
	mov edx, [ebp-0x20c8]
	mov [esp+0x4], edx
	mov [esp], esi
	call _ZSt16__insertion_sortIPP8GfxImagePFiS1_S1_EEvT_S5_T0_
_Z13R_ImageList_fv_60:
	mov dword [esp+0x4], _cstring_fmt_dimension
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov ebx, g_platform_name
	mov esi, g_platform_name+0x8
_Z13R_ImageList_fv_130:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z13R_ImageList_fv_130
	mov dword [esp+0x4], _cstring___name
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x20b0]
	test eax, eax
	jnz _Z13R_ImageList_fv_140
_Z13R_ImageList_fv_290:
	mov dword [esp+0x4], _cstring__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [ebp-0x20b0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring__i_total_images
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor ebx, ebx
_Z13R_ImageList_fv_150:
	mov eax, [ebx+g_platform_name]
	mov [esp+0x10], eax
	cvtsi2ss xmm0, dword [ebx+ebp-0x20]
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring__51f_mb_s_total_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add ebx, 0x4
	cmp ebx, 0x8
	jnz _Z13R_ImageList_fv_150
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13R_ImageList_fv_160
	mov dword [esp+0x4], _cstring_related_commands
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x20ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_ImageList_fv_20:
	mov edx, [ebp-0x20b0]
	jmp _Z13R_ImageList_fv_30
_Z13R_ImageList_fv_160:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov dword [esp+0x4], _cstring________
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov ebx, g_platform_name
_Z13R_ImageList_fv_170:
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add ebx, 0x4
	cmp ebx, g_platform_name+0x8
	jnz _Z13R_ImageList_fv_170
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	xor edi, edi
	mov dword [ebp-0x20bc], imageTypeName
_Z13R_ImageList_fv_190:
	mov edx, [ebp-0x20bc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s1
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	lea ebx, [ebp+edi*8-0xac]
	mov esi, 0x2
_Z13R_ImageList_fv_180:
	cvtsi2ss xmm0, dword [ebx]
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring___51f
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add ebx, 0x4
	sub esi, 0x1
	jnz _Z13R_ImageList_fv_180
	mov dword [esp+0x4], _cstring___mb
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add edi, 0x1
	add dword [ebp-0x20bc], 0x4
	cmp edi, 0xa
	jnz _Z13R_ImageList_fv_190
	mov dword [esp+0x4], _cstring_related_commands
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x20ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13R_ImageList_fv_140:
	mov dword [ebp-0x20d4], 0x0
_Z13R_ImageList_fv_280:
	mov ecx, [ebp-0x20d4]
	mov ecx, [ebp+ecx*4-0x20ac]
	mov [ebp-0x20d0], ecx
	movzx eax, word [ecx+0x1a]
	mov [esp+0xc], eax
	movzx eax, word [ecx+0x18]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_4i_x_4i_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov edx, [ebp-0x20d0]
	mov eax, [edx]
	cmp eax, 0x4
	jz _Z13R_ImageList_fv_200
	cmp eax, 0x5
	jz _Z13R_ImageList_fv_210
	cmp eax, 0x3
	jz _Z13R_ImageList_fv_220
_Z13R_ImageList_fv_370:
	mov edx, [ebp-0x20d0]
	movzx eax, byte [edx+0xc]
	mov eax, [eax*4+imageTypeName]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	cmp byte [ebp-0x20c9], 0x0
	jnz _Z13R_ImageList_fv_230
	mov ebx, [ebp-0x20d0]
	xor edi, edi
_Z13R_ImageList_fv_270:
	lea esi, [ebx+0x10]
	cvtsi2ss xmm0, dword [ebx+0x10]
	mulss xmm0, [_float_0_00097656]
	cvtss2sd xmm1, xmm0
	ucomiss xmm0, [_float_10_00000000]
	jp _Z13R_ImageList_fv_240
	jb _Z13R_ImageList_fv_250
_Z13R_ImageList_fv_240:
	mov eax, _cstring_70fk
_Z13R_ImageList_fv_320:
	movsd [esp+0x8], xmm1
	mov [esp+0x4], eax
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov edx, [esi]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z13R_ImageList_fv_260
_Z13R_ImageList_fv_300:
	add [ebp+edi*4-0x20], edx
_Z13R_ImageList_fv_310:
	add edi, 0x1
	add ebx, 0x4
	cmp edi, 0x2
	jnz _Z13R_ImageList_fv_270
_Z13R_ImageList_fv_490:
	mov edx, [ebp-0x20d0]
	mov eax, [edx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring___s1
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add dword [ebp-0x20d4], 0x1
	mov ecx, [ebp-0x20d4]
	cmp ecx, [ebp-0x20b0]
	jb _Z13R_ImageList_fv_280
	jmp _Z13R_ImageList_fv_290
_Z13R_ImageList_fv_260:
	mov ecx, [ebp-0x20d0]
	movzx eax, byte [ecx+0xc]
	lea eax, [edi+eax*2]
	add [ebp+eax*4-0xac], edx
	cmp byte [ecx+0xc], 0x4
	ja _Z13R_ImageList_fv_300
	mov eax, [ebp-0x20d0]
	movsx ecx, byte [eax+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz _Z13R_ImageList_fv_310
	jmp _Z13R_ImageList_fv_300
_Z13R_ImageList_fv_250:
	mov eax, _cstring_71fk
	jmp _Z13R_ImageList_fv_320
_Z13R_ImageList_fv_200:
	mov eax, [edx+0x4]
	mov ecx, [eax]
	lea edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [ecx+0x44]
	mov eax, [ebp-0x3c]
	cmp eax, 0x33
	jz _Z13R_ImageList_fv_330
_Z13R_ImageList_fv_400:
	jg _Z13R_ImageList_fv_340
	cmp eax, 0x16
	jz _Z13R_ImageList_fv_350
	jg _Z13R_ImageList_fv_360
	cmp eax, 0x15
	jnz _Z13R_ImageList_fv_370
	mov dword [esp+0x4], _cstring_rgba32
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_340:
	cmp eax, 0x31545844
	jz _Z13R_ImageList_fv_380
	jg _Z13R_ImageList_fv_390
	cmp eax, 0x72
	jnz _Z13R_ImageList_fv_370
	mov dword [esp+0x4], _cstring_r32f__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_210:
	mov edx, [ebp-0x20d0]
	mov eax, [edx+0x4]
_Z13R_ImageList_fv_410:
	mov ecx, [eax]
	lea edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [ecx+0x44]
	mov eax, [ebp-0x5c]
	cmp eax, 0x33
	jnz _Z13R_ImageList_fv_400
_Z13R_ImageList_fv_330:
	mov dword [esp+0x4], _cstring_al16__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_220:
	mov ecx, [ebp-0x20d0]
	mov eax, [ecx+0x4]
	jmp _Z13R_ImageList_fv_410
_Z13R_ImageList_fv_10:
	mov dword [esp+0x4], _cstring_all
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13R_ImageList_fv_420
	mov byte [ebp-0x20c9], 0x1
	jmp _Z13R_ImageList_fv_430
_Z13R_ImageList_fv_70:
	and eax, 0xffffff00
	jmp _Z13R_ImageList_fv_440
_Z13R_ImageList_fv_360:
	cmp eax, 0x1c
	jz _Z13R_ImageList_fv_450
	cmp eax, 0x32
	jnz _Z13R_ImageList_fv_370
	mov dword [esp+0x4], _cstring_l8____
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_390:
	cmp eax, 0x33545844
	jz _Z13R_ImageList_fv_460
	cmp eax, 0x35545844
	jnz _Z13R_ImageList_fv_370
	mov dword [esp+0x4], _cstring_dxt5__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_460:
	mov dword [esp+0x4], _cstring_dxt3__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_450:
	mov dword [esp+0x4], _cstring_a8____
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_380:
	mov dword [esp+0x4], _cstring_dxt1__
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_350:
	mov dword [esp+0x4], _cstring_rgb32_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z13R_ImageList_fv_370
_Z13R_ImageList_fv_230:
	mov ebx, [ebp-0x20d0]
	xor edi, edi
	lea esi, [ebp-0x20]
_Z13R_ImageList_fv_480:
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
	call _Z10Com_PrintfiPKcz
	mov edx, [ebx+0x10]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z13R_ImageList_fv_470
	mov ecx, [ebp-0x20d0]
	movzx eax, byte [ecx+0xc]
	lea eax, [edi+eax*2]
	add [ebp+eax*4-0xac], edx
_Z13R_ImageList_fv_470:
	add [esi], edx
	add edi, 0x1
	add esi, 0x4
	add ebx, 0x4
	cmp edi, 0x2
	jnz _Z13R_ImageList_fv_480
	jmp _Z13R_ImageList_fv_490


;Image_Register(char const*, unsigned char, int)
_Z14Image_RegisterPKchi:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, _Z23Image_Register_FastFilePKchi
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22Image_Register_LoadObjPKchi
	cmovz ecx, eax
	movzx eax, byte [ebp+0xc]
	mov [ebp+0xc], eax
	pop ebp
	jmp ecx
	nop


;R_GetImageList(ImageList*)
_Z14R_GetImageListP9ImageList:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z16R_AddImageToList12XAssetHeaderPv
	mov dword [esp], 0x6
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret
	nop
	add [eax], al


;Image_AllocProg(int, unsigned char, unsigned char)
_Z15Image_AllocProgihh:
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
	call _Z15R_HashAssetNamePKc
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz _Z15Image_AllocProgihh_10
_Z15Image_AllocProgihh_20:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz _Z15Image_AllocProgihh_20
_Z15Image_AllocProgihh_10:
	mov [eax*4+imageGlobals], ebx
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Image_GetSurface(GfxImage*)
_Z16Image_GetSurfaceP8GfxImage:
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
_Z16R_DelayLoadImage12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1f], 0x0
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16R_DelayLoadImage12XAssetHeaderPv_10:
	mov byte [ebx+0x1f], 0x0
	mov esi, [ebx+0x10]
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_20
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_30
_Z16R_DelayLoadImage12XAssetHeaderPv_20:
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z21DB_LoadedExternalDatai
_Z16R_DelayLoadImage12XAssetHeaderPv_30:
	mov [esp], ebx
	call _Z18Image_LoadFromFileP8GfxImage
	test al, al
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_40
	cmp dword [ebx], 0x3
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_40
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_50
	cmp al, 0x8
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_60
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_40
_Z16R_DelayLoadImage12XAssetHeaderPv_70:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z16R_DelayLoadImage12XAssetHeaderPv_40
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z16R_DelayLoadImage12XAssetHeaderPv_40:
	mov eax, [ebx+0x4]
	test eax, eax
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_20
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0xc]
	add eax, 0x7789f798
	cmp eax, 0x1
	jbe _Z16R_DelayLoadImage12XAssetHeaderPv_20
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_load_ima1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16R_DelayLoadImage12XAssetHeaderPv_20
_Z16R_DelayLoadImage12XAssetHeaderPv_50:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_70
	jmp _Z16R_DelayLoadImage12XAssetHeaderPv_40
_Z16R_DelayLoadImage12XAssetHeaderPv_60:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz _Z16R_DelayLoadImage12XAssetHeaderPv_70
	jmp _Z16R_DelayLoadImage12XAssetHeaderPv_40
	nop


;R_ShutdownImages()
_Z16R_ShutdownImagesv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	call _Z18RB_UnbindAllImagesv
	mov dword [ebp-0x201c], 0x0
	mov esi, imageGlobals
	jmp _Z16R_ShutdownImagesv_10
_Z16R_ShutdownImagesv_60:
	cmp ebx, g_imageProgs+0x1f8
	jae _Z16R_ShutdownImagesv_20
	mov eax, 0x1
	test eax, eax
	jz _Z16R_ShutdownImagesv_30
_Z16R_ShutdownImagesv_70:
	mov eax, [ebp-0x201c]
	mov [ebp+eax*4-0x2018], ebx
	add eax, 0x1
	mov [ebp-0x201c], eax
_Z16R_ShutdownImagesv_50:
	add esi, 0x4
	mov eax, imageGlobals+0x2000
	cmp eax, esi
	jz _Z16R_ShutdownImagesv_40
_Z16R_ShutdownImagesv_10:
	mov ebx, [esi]
	test ebx, ebx
	jz _Z16R_ShutdownImagesv_50
	cmp ebx, g_imageProgs
	jae _Z16R_ShutdownImagesv_60
_Z16R_ShutdownImagesv_20:
	xor eax, eax
	test eax, eax
	jnz _Z16R_ShutdownImagesv_70
_Z16R_ShutdownImagesv_30:
	cmp byte [ebx+0xc], 0x4
	ja _Z16R_ShutdownImagesv_80
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz _Z16R_ShutdownImagesv_90
_Z16R_ShutdownImagesv_80:
	mov edx, ebx
	mov ecx, imageGlobals
	mov edi, imageGlobals+0x8
_Z16R_ShutdownImagesv_100:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp edi, ecx
	jnz _Z16R_ShutdownImagesv_100
_Z16R_ShutdownImagesv_90:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z16R_ShutdownImagesv_50
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
	add esi, 0x4
	mov eax, imageGlobals+0x2000
	cmp eax, esi
	jnz _Z16R_ShutdownImagesv_10
_Z16R_ShutdownImagesv_40:
	mov dword [esp+0x8], 0x2000
	mov dword [esp+0x4], 0x0
	mov dword [esp], imageGlobals
	call memset
	mov ebx, [ebp-0x201c]
	test ebx, ebx
	jg _Z16R_ShutdownImagesv_110
_Z16R_ShutdownImagesv_150:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_ShutdownImagesv_110:
	xor ebx, ebx
_Z16R_ShutdownImagesv_140:
	mov esi, [ebp+ebx*4-0x2018]
	mov eax, [esi+0x20]
	mov [esp], eax
	call _Z15R_HashAssetNamePKc
	and eax, 0x7ff
	mov ecx, [eax*4+imageGlobals]
	test ecx, ecx
	jz _Z16R_ShutdownImagesv_120
_Z16R_ShutdownImagesv_130:
	add eax, 0x1
	and eax, 0x7ff
	mov edx, [eax*4+imageGlobals]
	test edx, edx
	jnz _Z16R_ShutdownImagesv_130
_Z16R_ShutdownImagesv_120:
	mov [eax*4+imageGlobals], esi
	add ebx, 0x1
	cmp ebx, [ebp-0x201c]
	jnz _Z16R_ShutdownImagesv_140
	jmp _Z16R_ShutdownImagesv_150
	nop


;Image_UpdatePicmip(GfxImage*)
_Z18Image_UpdatePicmipP8GfxImage:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	cmp byte [ebx+0x1e], 0x3
	jz _Z18Image_UpdatePicmipP8GfxImage_10
_Z18Image_UpdatePicmipP8GfxImage_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z18Image_UpdatePicmipP8GfxImage_10:
	cmp byte [ebx+0xa], 0x0
	jnz _Z18Image_UpdatePicmipP8GfxImage_20
	lea eax, [ebp-0xa]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z15Image_GetPicmipPK8GfxImageP6Picmip
	movzx eax, byte [ebx+0x8]
	cmp al, [ebp-0xa]
	jz _Z18Image_UpdatePicmipP8GfxImage_20
	cmp byte [ebx+0xc], 0x4
	ja _Z18Image_UpdatePicmipP8GfxImage_30
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jz _Z18Image_UpdatePicmipP8GfxImage_30
_Z18Image_UpdatePicmipP8GfxImage_70:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z18Image_UpdatePicmipP8GfxImage_40
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x10], 0x0
	mov dword [ebx+0x14], 0x0
_Z18Image_UpdatePicmipP8GfxImage_40:
	mov [esp], ebx
	call _Z20Image_ReloadFromFileP8GfxImage
	test al, al
	jnz _Z18Image_UpdatePicmipP8GfxImage_20
	cmp dword [ebx], 0x3
	jz _Z18Image_UpdatePicmipP8GfxImage_50
_Z18Image_UpdatePicmipP8GfxImage_110:
	mov eax, [ebx+0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_failed_to_load_i
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18Image_UpdatePicmipP8GfxImage_20
_Z18Image_UpdatePicmipP8GfxImage_30:
	mov edx, ebx
	mov ecx, imageGlobals
_Z18Image_UpdatePicmipP8GfxImage_60:
	mov eax, [ecx+0x200c]
	sub eax, [edx+0x10]
	mov [ecx+0x200c], eax
	add ecx, 0x4
	add edx, 0x4
	cmp ecx, imageGlobals+0x8
	jnz _Z18Image_UpdatePicmipP8GfxImage_60
	jmp _Z18Image_UpdatePicmipP8GfxImage_70
_Z18Image_UpdatePicmipP8GfxImage_50:
	movzx eax, byte [ebx+0xb]
	cmp al, 0x5
	jz _Z18Image_UpdatePicmipP8GfxImage_80
	cmp al, 0x8
	jz _Z18Image_UpdatePicmipP8GfxImage_90
	mov eax, rgp
	mov eax, [eax+0x2008]
	test eax, eax
	jz _Z18Image_UpdatePicmipP8GfxImage_100
_Z18Image_UpdatePicmipP8GfxImage_120:
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z18Image_UpdatePicmipP8GfxImage_100
	mov [ebx+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, 0x1
_Z18Image_UpdatePicmipP8GfxImage_130:
	test al, al
	jnz _Z18Image_UpdatePicmipP8GfxImage_20
	jmp _Z18Image_UpdatePicmipP8GfxImage_110
_Z18Image_UpdatePicmipP8GfxImage_90:
	mov eax, rgp
	mov eax, [eax+0x200c]
	test eax, eax
	jnz _Z18Image_UpdatePicmipP8GfxImage_120
_Z18Image_UpdatePicmipP8GfxImage_100:
	xor eax, eax
	jmp _Z18Image_UpdatePicmipP8GfxImage_130
_Z18Image_UpdatePicmipP8GfxImage_80:
	mov eax, rgp
	mov eax, [eax+0x201c]
	test eax, eax
	jnz _Z18Image_UpdatePicmipP8GfxImage_120
	xor eax, eax
	jmp _Z18Image_UpdatePicmipP8GfxImage_130
	nop
	add [eax], al


;R_ReloadLostImages()
_Z18R_ReloadLostImagesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z18R_RebuildLostImage12XAssetHeaderPv
	mov dword [esp], 0x6
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret


;R_ReleaseLostImages()
_Z19R_ReleaseLostImagesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rg
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x22fc]
	movss [eax+0x22fc], xmm0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _Z15R_FreeLostImage12XAssetHeaderPv
	mov dword [esp], 0x6
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret
	nop


;Image_TrackTotalMemory(GfxImage*, int, int)
_Z22Image_TrackTotalMemoryP8GfxImageii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebp+0x10]
	cmp byte [ebx+0xc], 0x4
	ja _Z22Image_TrackTotalMemoryP8GfxImageii_10
	movsx ecx, byte [ebx+0xc]
	mov eax, 0x1
	shl eax, cl
	test al, 0x13
	jnz _Z22Image_TrackTotalMemoryP8GfxImageii_20
_Z22Image_TrackTotalMemoryP8GfxImageii_10:
	sub edx, [ebx+esi*4+0x10]
	add [esi*4+imageGlobals+0x200c], edx
_Z22Image_TrackTotalMemoryP8GfxImageii_20:
	pop ebx
	pop esi
	pop ebp
	ret


;Image_PicmipForSemantic(unsigned char, Picmip*)
_Z23Image_PicmipForSemantichP6Picmip:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0xc]
	movzx eax, byte [ebp+0x8]
	cmp al, 0x5
	jz _Z23Image_PicmipForSemantichP6Picmip_10
	jbe _Z23Image_PicmipForSemantichP6Picmip_20
	cmp al, 0x8
	jz _Z23Image_PicmipForSemantichP6Picmip_30
	cmp al, 0xb
	jz _Z23Image_PicmipForSemantichP6Picmip_40
_Z23Image_PicmipForSemantichP6Picmip_50:
	mov word [ecx], 0x0
	pop ebp
	ret
_Z23Image_PicmipForSemantichP6Picmip_20:
	cmp al, 0x2
	jnz _Z23Image_PicmipForSemantichP6Picmip_50
_Z23Image_PicmipForSemantichP6Picmip_40:
	mov eax, [imageGlobals+0x2000]
	mov byte [ecx+0x1], 0x2
	test eax, eax
	jns _Z23Image_PicmipForSemantichP6Picmip_60
_Z23Image_PicmipForSemantichP6Picmip_70:
	xor edx, edx
	mov [ecx], dl
_Z23Image_PicmipForSemantichP6Picmip_80:
	pop ebp
	ret
_Z23Image_PicmipForSemantichP6Picmip_10:
	mov eax, [imageGlobals+0x2004]
_Z23Image_PicmipForSemantichP6Picmip_90:
	mov byte [ecx+0x1], 0x2
	test eax, eax
	js _Z23Image_PicmipForSemantichP6Picmip_70
_Z23Image_PicmipForSemantichP6Picmip_60:
	mov edx, 0x3
	cmp eax, 0x4
	cmovl edx, eax
	mov [ecx], dl
	jmp _Z23Image_PicmipForSemantichP6Picmip_80
_Z23Image_PicmipForSemantichP6Picmip_30:
	mov eax, [imageGlobals+0x2008]
	jmp _Z23Image_PicmipForSemantichP6Picmip_90
	nop


;Image_SetupRenderTarget(GfxImage*, unsigned short, unsigned short, _D3DFORMAT, char const*)
_Z23Image_SetupRenderTargetP8GfxImagett10_D3DFORMATPKc:
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
	call _Z18Image_SetupAndLoadP8GfxImageiiii10_D3DFORMATPKc
	leave
	ret
	nop


;Image_Create2DTexture_PC(GfxImage*, unsigned short, unsigned short, int, int, _D3DFORMAT)
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT:
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
	jz _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_10
	mov ecx, [ebp+0x1c]
	sub ecx, 0x4b
	cmp ecx, 0x5
	jbe _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_20
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_70:
	mov ebx, 0x1
	and edi, 0x40000
	jnz _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_30
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_50:
	test ebx, ebx
	setz al
	movzx edi, al
	jmp _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_40
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_10:
	mov eax, edi
	and eax, 0x10000
	cmp eax, 0x1
	sbb ebx, ebx
	not ebx
	and ebx, 0x200
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_80:
	and edi, 0x40000
	jz _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_50
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_30:
	mov edi, 0x2
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_40:
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
	js _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_20:
	mov eax, 0x1
	shl eax, cl
	test al, 0x25
	jz _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_70
	mov ebx, 0x2
	jmp _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_80
_Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT_60:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
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
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Image_Create3DTexture_PC(GfxImage*, unsigned short, unsigned short, unsigned short, int, int, _D3DFORMAT)
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT:
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
	jz _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_10
	mov ecx, [ebp+0x20]
	sub ecx, 0x4b
	cmp ecx, 0x5
	jbe _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_20
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_70:
	mov eax, 0x1
	and ebx, 0x40000
	jnz _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_30
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_50:
	xor ebx, ebx
	test eax, eax
	setz bl
	jmp _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_40
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_10:
	mov eax, ebx
	and eax, 0x10000
	cmp eax, 0x1
	sbb eax, eax
	not eax
	and eax, 0x200
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_80:
	and ebx, 0x40000
	jz _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_50
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_30:
	mov ebx, 0x2
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_40:
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
	js _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_20:
	mov eax, 0x1
	shl eax, cl
	test al, 0x25
	jz _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_70
	mov eax, 0x2
	jmp _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_80
_Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT_60:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
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
	call _Z9Com_Error11errorParm_tPKcz
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_CreateCubeTexture_PC(GfxImage*, unsigned short, int, _D3DFORMAT)
_Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT:
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
	jnz _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_10
	mov edi, 0x1
	mov dword [ebp-0x1c], 0x1
_Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_30:
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
	js _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_20
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_10:
	mov [ebp-0x1c], edi
	jmp _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_30
_Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
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
	call _Z9Com_Error11errorParm_tPKcz
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

