;Imports of r_add_staticmodel:
	extern XModelGetSurface
	extern R_AllocPreTessIndices
	extern R_AllocDrawSurf
	extern gfxBuf
	extern R_WritePrimDrawSurfInt
	extern R_GetCachedSModelSurf
	extern Com_Memcpy
	extern XModelGetSurfaces
	extern XModelGetSkins
	extern dx_ctx
	extern r_pretess
	extern R_WritePrimDrawSurfData
	extern rgp
	extern rg
	extern R_InitDelayedCmdBuf
	extern scene
	extern XModelGetLodForDist
	extern R_AllocStaticModelLighting
	extern R_WarnOncePerFrame
	extern R_EndCmdBuf
	extern r_smc_enable
	extern XModelGetLodInfo
	extern useFastFile
	extern R_CacheStaticModelSurface
	extern Com_Memset
	extern PIXBeginNamedEvent
	extern R_SortDrawSurfs

;Exports of r_add_staticmodel:
	global R_PreTessStaticModelCachedList
	global R_SkinStaticModelsCameraForLod
	global R_SkinStaticModelsShadowForLod
	global R_AddAllStaticModelSurfacesRangeSunShadow
	global R_GetStaticModelId
	global R_InitStaticModelDrawSurf
	global R_AddDelayedStaticModelDrawSurf
	global R_AddAllStaticModelSurfacesCamera
	global R_SortAllStaticModelSurfacesCamera
	global R_AddAllStaticModelSurfacesSunShadow
	global R_AddAllStaticModelSurfacesSpotShadow
	global R_SortAllStaticModelSurfacesSunShadow


SECTION .text


;R_PreTessStaticModelCachedList(XModel const*, unsigned short*, unsigned int, unsigned int, int, GfxDrawSurf, GfxDrawSurfList*, GfxDelayedCmdBuf*)
R_PreTessStaticModelCachedList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x2c], 0x0
	mov [ebp-0x30], edx
	mov [ebp-0x34], ecx
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x8]
	mov [esp+0x4], ecx
	mov [esp], eax
	call XModelGetSurface
	mov [ebp-0x28], eax
	movzx eax, word [eax+0x4]
	lea ebx, [eax+eax*2]
	mov eax, [ebp-0x34]
	imul eax, ebx
	mov [esp], eax
	call R_AllocPreTessIndices
	mov [ebp-0x20], eax
	test eax, eax
	jz R_PreTessStaticModelCachedList_10
	mov eax, [ebp-0x34]
	test eax, eax
	jnz R_PreTessStaticModelCachedList_20
R_PreTessStaticModelCachedList_50:
	and edi, 0xffc3ffff
	or edi, 0xc0000
	mov dword [esp+0x10], 0x3
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov [esp+0x4], esi
	mov [esp+0x8], edi
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call R_AllocDrawSurf
	test eax, eax
	jnz R_PreTessStaticModelCachedList_30
	mov al, 0x1
R_PreTessStaticModelCachedList_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_PreTessStaticModelCachedList_30:
	mov edx, [ebp-0x2c]
	mov dh, [ebp+0x8]
	movzx ecx, byte [ebp+0xc]
	mov dl, cl
	mov [ebp-0x2c], edx
	mov edx, [ebp-0x30]
	movzx eax, word [edx]
	shl eax, 0x10
	and dword [ebp-0x2c], 0xffff
	or [ebp-0x2c], eax
	mov eax, gfxBuf
	mov eax, [eax+0x30]
	mov ecx, [eax+0xc]
	sub [ebp-0x20], ecx
	sar dword [ebp-0x20], 1
	mov eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov edx, [ebp+0x1c]
	mov [esp], edx
	call R_WritePrimDrawSurfInt
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call R_WritePrimDrawSurfInt
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call R_WritePrimDrawSurfInt
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_PreTessStaticModelCachedList_20:
	add ebx, ebx
	mov [ebp-0x1c], ebx
	mov eax, [ebp-0x20]
	mov [ebp-0x24], eax
	xor ebx, ebx
R_PreTessStaticModelCachedList_40:
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+ebx*2]
	mov [esp], eax
	call R_GetCachedSModelSurf
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [eax]
	mov ecx, [ebp-0x28]
	movzx eax, word [ecx+0x8]
	lea eax, [eax+eax*2]
	lea edx, [eax+edx*4]
	mov eax, gfxBuf
	mov eax, [eax+0x8]
	lea edx, [eax+edx*2]
	mov [esp+0x4], edx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call Com_Memcpy
	mov edx, [ebp-0x1c]
	add [ebp-0x24], edx
	add ebx, 0x1
	cmp [ebp-0x34], ebx
	jnz R_PreTessStaticModelCachedList_40
	jmp R_PreTessStaticModelCachedList_50
	nop


;R_SkinStaticModelsCameraForLod(XModel const*, unsigned int, unsigned short*, unsigned int, unsigned int, unsigned int, GfxSModelDrawSurfLightingData*)
R_SkinStaticModelsCameraForLod:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x3c], eax
	mov ebx, edx
	mov [ebp-0x40], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call XModelGetSurfaces
	mov [ebp-0x38], eax
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call XModelGetSkins
	mov edi, eax
	mov edx, [ebp-0x38]
	test edx, edx
	jle R_SkinStaticModelsCameraForLod_10
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x2c], 0x0
	mov edx, [ebp+0xc]
	and edx, 0xf
	shl edx, 0x12
	mov [ebp-0x44], edx
	and ebx, 0xff
	mov [ebp-0x48], ebx
	shl dword [ebp-0x48], 0xa
	mov ecx, [ebp+0x8]
	add ecx, 0x1
	shr ecx, 1
	mov [ebp-0x4c], ecx
R_SkinStaticModelsCameraForLod_50:
	mov edx, [edi]
	movzx eax, byte [edx+0x3e]
	movzx ecx, al
	mov [ebp-0x30], ecx
	cmp al, 0x3
	jz R_SkinStaticModelsCameraForLod_20
	mov ebx, [edx+0x8]
	mov esi, [edx+0xc]
	and esi, 0xffc3ffff
	or esi, [ebp-0x44]
	and esi, 0xfffc03ff
	or esi, [ebp-0x48]
	cmp dword [ebp+0xc], 0x4
	jnz R_SkinStaticModelsCameraForLod_30
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz R_SkinStaticModelsCameraForLod_30
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_SkinStaticModelsCameraForLod_40
R_SkinStaticModelsCameraForLod_30:
	mov eax, [ebp-0x4c]
	add eax, 0x2
	mov [esp+0x10], eax
	mov edx, [ebp-0x30]
	mov ecx, [ebp+0x14]
	lea eax, [ecx+edx*8+0x10]
	mov [esp+0xc], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	mov [esp], ecx
	call R_AllocDrawSurf
	test eax, eax
	jz R_SkinStaticModelsCameraForLod_10
	mov ebx, [ebp-0x2c]
	add ebx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call R_WritePrimDrawSurfInt
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call R_WritePrimDrawSurfInt
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call R_WritePrimDrawSurfData
R_SkinStaticModelsCameraForLod_20:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	add dword [ebp-0x2c], 0x38
	mov eax, [ebp-0x34]
	cmp [ebp-0x38], eax
	jnz R_SkinStaticModelsCameraForLod_50
R_SkinStaticModelsCameraForLod_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinStaticModelsCameraForLod_40:
	mov eax, [ebp+0x14]
	mov [esp+0x14], eax
	lea eax, [eax+ecx*8+0x10]
	mov [esp+0x10], eax
	mov [esp+0x8], ebx
	mov [esp+0xc], esi
	mov ecx, [ebp-0x34]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x10]
	mov [esp], eax
	mov ecx, [ebp+0x8]
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x3c]
	call R_PreTessStaticModelCachedList
	test al, al
	jnz R_SkinStaticModelsCameraForLod_20
	jmp R_SkinStaticModelsCameraForLod_30
	nop


;R_SkinStaticModelsShadowForLod(XModel const*, unsigned short*, unsigned int, unsigned int, unsigned int, GfxSModelDrawSurfData*)
R_SkinStaticModelsShadowForLod:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x3c], eax
	mov [ebp-0x40], edx
	mov [ebp-0x44], ecx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call XModelGetSurfaces
	mov [ebp-0x38], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call XModelGetSkins
	mov [ebp-0x34], eax
	mov ebx, [ebp-0x38]
	test ebx, ebx
	jle R_SkinStaticModelsShadowForLod_10
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp+0x8]
	and eax, 0xf
	shl eax, 0x12
	mov [ebp-0x48], eax
	mov edx, [ebp-0x44]
	add edx, 0x1
	shr edx, 1
	mov [ebp-0x4c], edx
R_SkinStaticModelsShadowForLod_50:
	mov edx, [ebp-0x34]
	mov eax, [edx]
	test byte [eax+0x4], 0x40
	jz R_SkinStaticModelsShadowForLod_20
	mov ebx, [eax+0x8]
	mov esi, [eax+0xc]
	and esi, 0xffc3ffff
	or esi, [ebp-0x48]
	cmp dword [ebp+0x8], 0x4
	jnz R_SkinStaticModelsShadowForLod_30
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz R_SkinStaticModelsShadowForLod_40
R_SkinStaticModelsShadowForLod_70:
	mov eax, [ebp+0x10]
	lea edi, [eax+0x10]
	mov edx, eax
R_SkinStaticModelsShadowForLod_60:
	mov eax, [ebp-0x4c]
	add eax, 0x2
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	mov [esp], edx
	call R_AllocDrawSurf
	test eax, eax
	jz R_SkinStaticModelsShadowForLod_10
	mov ebx, [ebp-0x2c]
	add ebx, [ebp-0x1c]
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call R_WritePrimDrawSurfInt
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call R_WritePrimDrawSurfInt
	mov edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call R_WritePrimDrawSurfData
R_SkinStaticModelsShadowForLod_20:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x34], 0x4
	add dword [ebp-0x2c], 0x38
	mov eax, [ebp-0x30]
	cmp [ebp-0x38], eax
	jnz R_SkinStaticModelsShadowForLod_50
R_SkinStaticModelsShadowForLod_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SkinStaticModelsShadowForLod_30:
	mov edx, [ebp+0x10]
	lea edi, [edx+0x10]
	jmp R_SkinStaticModelsShadowForLod_60
R_SkinStaticModelsShadowForLod_40:
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SkinStaticModelsShadowForLod_70
	mov eax, [ebp+0x10]
	mov [esp+0x14], eax
	mov edi, eax
	add edi, 0x10
	mov [esp+0x10], edi
	mov [esp+0x8], ebx
	mov [esp+0xc], esi
	mov edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	mov ecx, [ebp-0x44]
	mov edx, [ebp-0x40]
	mov eax, [ebp-0x3c]
	call R_PreTessStaticModelCachedList
	test al, al
	jnz R_SkinStaticModelsShadowForLod_20
	mov edx, [ebp+0x10]
	jmp R_SkinStaticModelsShadowForLod_60


;R_AddAllStaticModelSurfacesRangeSunShadow(unsigned int, unsigned int)
R_AddAllStaticModelSurfacesRangeSunShadow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10bc
	mov ebx, eax
	mov esi, edx
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x244]
	mov [ebp-0x1098], edx
	mov ecx, [eax+ebx*4+0x274]
	mov [ebp-0x1094], ecx
	mov eax, [eax+0x29c]
	mov [ebp-0x107c], eax
	mov eax, rg
	movss xmm0, dword [eax+0x2204]
	movss [ebp-0x1090], xmm0
	movss xmm0, dword [eax+0x2208]
	movss [ebp-0x108c], xmm0
	movss xmm0, dword [eax+0x21f8]
	movss [ebp-0x1070], xmm0
	movss xmm0, dword [eax+0x21fc]
	movss [ebp-0x1074], xmm0
	movss xmm0, dword [eax+0x2200]
	movss [ebp-0x1078], xmm0
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	lea ebx, [ebx+ebx*2+0x10]
	mov [ebp-0x10a0], ebx
	mov eax, scene
	mov eax, [eax+ebx*4+0xe4190]
	mov [ebp-0x20], eax
	lea eax, [eax+esi*8]
	mov [ebp-0x1c], eax
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x50]
	rep stosd
	mov esi, [ebp-0x1098]
	test esi, esi
	jz R_AddAllStaticModelSurfacesRangeSunShadow_10
	mov esi, [ebp-0x107c]
	mov dword [ebp-0x109c], 0x0
	mov dword [ebp-0x1084], 0x0
	xor edi, edi
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_20
R_AddAllStaticModelSurfacesRangeSunShadow_40:
	add dword [ebp-0x109c], 0x1
	add esi, 0x4c
	mov ecx, [ebp-0x109c]
	cmp [ebp-0x1098], ecx
	jz R_AddAllStaticModelSurfacesRangeSunShadow_30
R_AddAllStaticModelSurfacesRangeSunShadow_20:
	mov edx, [ebp-0x1094]
	add edx, [ebp-0x109c]
	cmp byte [edx], 0x0
	jz R_AddAllStaticModelSurfacesRangeSunShadow_40
	test byte [esi+0x48], 0x1
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_40
	lea eax, [esi+0x4]
	movss xmm0, dword [ebp-0x1070]
	subss xmm0, [esi+0x4]
	movss xmm1, dword [ebp-0x1074]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x1078]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	mulss xmm1, [ebp-0x1090]
	addss xmm1, [ebp-0x108c]
	ucomiss xmm1, [esi]
	jae R_AddAllStaticModelSurfacesRangeSunShadow_50
	mov ecx, [esi+0x38]
	mov [ebp-0x1080], ecx
	mov eax, [ebp-0x1084]
	cmp ecx, eax
	jz R_AddAllStaticModelSurfacesRangeSunShadow_60
	test edi, edi
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_70
	mov [ebp-0x1084], ecx
	mov eax, [ebp-0x1080]
R_AddAllStaticModelSurfacesRangeSunShadow_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [esi+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov [esp], eax
	call XModelGetLodForDist
	mov ebx, eax
	test eax, eax
	js R_AddAllStaticModelSurfacesRangeSunShadow_40
	mov edx, [ebp-0x109c]
	mov [esp+0x4], edx
	mov [esp], esi
	call R_AllocStaticModelLighting
	test al, al
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_80
	mov dword [esp], 0xb
	call R_WarnOncePerFrame
	add dword [ebp-0x109c], 0x1
	add esi, 0x4c
	mov ecx, [ebp-0x109c]
	cmp [ebp-0x1098], ecx
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_20
R_AddAllStaticModelSurfacesRangeSunShadow_30:
	test edi, edi
	jz R_AddAllStaticModelSurfacesRangeSunShadow_10
	lea eax, [ebp-0x1050]
	mov [ebp-0x1068], eax
	mov dword [ebp-0x106c], 0x2
	lea esi, [ebp-0x50]
	mov ebx, eax
R_AddAllStaticModelSurfacesRangeSunShadow_110:
	xor edi, edi
R_AddAllStaticModelSurfacesRangeSunShadow_100:
	movzx eax, word [esi+edi*2]
	movzx ecx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_90
R_AddAllStaticModelSurfacesRangeSunShadow_120:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_100
	add dword [ebp-0x106c], 0x1
	add dword [ebp-0x1068], 0x400
	add esi, 0x8
	cmp dword [ebp-0x106c], 0x6
	jz R_AddAllStaticModelSurfacesRangeSunShadow_10
	mov ebx, [ebp-0x1068]
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_110
R_AddAllStaticModelSurfacesRangeSunShadow_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call R_EndCmdBuf
	mov edx, scene
	mov eax, [ebp-0x20]
	mov ecx, [ebp-0x10a0]
	sub eax, [edx+ecx*4+0xe4190]
	sar eax, 0x3
	mov [edx+ecx*4+0xe4108], eax
	add esp, 0x10bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllStaticModelSurfacesRangeSunShadow_90:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov eax, [ebp-0x106c]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x1084]
	call R_SkinStaticModelsShadowForLod
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_120
R_AddAllStaticModelSurfacesRangeSunShadow_50:
	mov byte [edx], 0x0
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_40
R_AddAllStaticModelSurfacesRangeSunShadow_70:
	lea edx, [ebp-0x1050]
	mov [ebp-0x1060], edx
	mov dword [ebp-0x1064], 0x2
	lea ecx, [ebp-0x50]
	mov [ebp-0x105c], ecx
	mov ebx, edx
R_AddAllStaticModelSurfacesRangeSunShadow_160:
	xor edi, edi
R_AddAllStaticModelSurfacesRangeSunShadow_140:
	mov edx, [ebp-0x105c]
	movzx eax, word [edx+edi*2]
	movzx ecx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_130
R_AddAllStaticModelSurfacesRangeSunShadow_170:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz R_AddAllStaticModelSurfacesRangeSunShadow_140
	add dword [ebp-0x1064], 0x1
	add dword [ebp-0x1060], 0x400
	add dword [ebp-0x105c], 0x8
	cmp dword [ebp-0x1064], 0x6
	jz R_AddAllStaticModelSurfacesRangeSunShadow_150
	mov ebx, [ebp-0x1060]
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_160
R_AddAllStaticModelSurfacesRangeSunShadow_130:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x1064]
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp-0x1084]
	movss [ebp-0x10b8], xmm1
	call R_SkinStaticModelsShadowForLod
	movss xmm1, dword [ebp-0x10b8]
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_170
R_AddAllStaticModelSurfacesRangeSunShadow_150:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x50]
	rep stosd
	mov ecx, [ebp-0x1080]
	mov [ebp-0x1084], ecx
	xor edi, edi
	mov eax, ecx
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_180
R_AddAllStaticModelSurfacesRangeSunShadow_80:
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x109c]
	mov [esp], ecx
	call R_GetStaticModelId
	movzx edx, ax
	mov [ebp-0x10a4], edx
	lea edx, [ebx+edx*4-0x8]
	lea edi, [ebp+edx*2-0x50]
	shl edx, 0x8
	lea edx, [ebp+edx-0x1050]
	mov [ebp-0x1088], edx
	movzx edx, word [edi]
	shr eax, 0x10
	mov ecx, [ebp-0x1088]
	mov [ecx+edx*2], ax
	lea ecx, [edx+0x1]
	cmp ecx, 0x7f
	ja R_AddAllStaticModelSurfacesRangeSunShadow_190
	mov [edi], cx
	mov edi, 0x1
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_40
R_AddAllStaticModelSurfacesRangeSunShadow_60:
	mov eax, ecx
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_180
R_AddAllStaticModelSurfacesRangeSunShadow_190:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x10a4]
	mov [esp], edx
	mov edx, [ebp-0x1088]
	mov eax, [ebp-0x1080]
	call R_SkinStaticModelsShadowForLod
	mov word [edi], 0x0
	mov edi, 0x1
	jmp R_AddAllStaticModelSurfacesRangeSunShadow_40


;R_GetStaticModelId(int, int)
R_GetStaticModelId:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x29c]
	lea eax, [ebx+ebx*8]
	lea eax, [ebx+eax*2]
	mov edi, [edx+eax*4+0x38]
	mov eax, r_smc_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_GetStaticModelId_10
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call XModelGetLodInfo
	movzx edx, byte [eax+0x19]
	test dl, dl
	jnz R_GetStaticModelId_20
R_GetStaticModelId_10:
	mov esi, ebx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call XModelGetSurfaces
	mov ebx, eax
	test eax, eax
	jle R_GetStaticModelId_30
	mov eax, useFastFile
	mov edi, [eax]
	mov edx, [ebp-0x1c]
	xor eax, eax
	jmp R_GetStaticModelId_40
R_GetStaticModelId_70:
	cmp byte [edi+0xc], 0x0
	jz R_GetStaticModelId_50
	mov ecx, 0x1
	test ecx, ecx
	jz R_GetStaticModelId_60
R_GetStaticModelId_80:
	add eax, 0x1
	add edx, 0x38
	cmp ebx, eax
	jz R_GetStaticModelId_30
R_GetStaticModelId_40:
	cmp byte [edx+0x1], 0x0
	jz R_GetStaticModelId_70
R_GetStaticModelId_50:
	xor ecx, ecx
	test ecx, ecx
	jnz R_GetStaticModelId_80
R_GetStaticModelId_60:
	mov edx, 0x5
	mov eax, esi
	shl eax, 0x10
	and ebx, 0xffff
	or ebx, eax
	mov bx, dx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetStaticModelId_30:
	mov edx, 0x2
R_GetStaticModelId_90:
	mov eax, esi
	shl eax, 0x10
	and ebx, 0xffff
	or ebx, eax
	mov bx, dx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetStaticModelId_20:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	movzx eax, dl
	sub eax, 0x1
	mov [esp], eax
	call R_CacheStaticModelSurface
	mov esi, eax
	test ax, ax
	jz R_GetStaticModelId_10
	mov edx, 0x4
	jmp R_GetStaticModelId_90


;R_InitStaticModelDrawSurf(GfxSModelDrawSurfData*)
R_InitStaticModelDrawSurf:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_InitDelayedCmdBuf
	nop


;R_AddDelayedStaticModelDrawSurf(GfxDelayedCmdBuf*, XSurface*, unsigned short*, unsigned int)
R_AddDelayedStaticModelDrawSurf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x1c], eax
	mov ebx, [ebp+0x14]
	mov [esp+0x4], ebx
	mov [esp], esi
	call R_WritePrimDrawSurfInt
	mov [esp+0x4], edi
	mov [esp], esi
	call R_WritePrimDrawSurfInt
	add ebx, 0x1
	shr ebx, 1
	mov [ebp+0x10], ebx
	mov eax, [ebp-0x1c]
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WritePrimDrawSurfData
	nop


;R_AddAllStaticModelSurfacesCamera()
R_AddAllStaticModelSurfacesCamera:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10ec
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov edx, [eax+0x244]
	mov [ebp-0x10bc], edx
	mov eax, [eax+0x288]
	mov [ebp-0x10a0], eax
	mov eax, edx
	add eax, 0x7f
	shr eax, 0x7
	shl eax, 0x5
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x10a0]
	mov [esp], ecx
	call Com_Memset
	mov eax, [ebx+0x20a0]
	mov edx, [eax+0x270]
	mov [ebp-0x10b8], edx
	mov ebx, [eax+0x29c]
	mov eax, rg
	movss xmm0, dword [eax+0x2204]
	movss [ebp-0x10a8], xmm0
	movss xmm0, dword [eax+0x2208]
	movss [ebp-0x10a4], xmm0
	movss xmm0, dword [eax+0x21f8]
	movss [ebp-0x1084], xmm0
	movss xmm0, dword [eax+0x21fc]
	movss [ebp-0x1088], xmm0
	movss xmm0, dword [eax+0x2200]
	movss [ebp-0x108c], xmm0
	lea eax, [ebp-0x60]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	mov eax, scene
	mov edx, [eax+0xe4194]
	mov [ebp-0x50], edx
	mov ecx, [eax+0xe41a0]
	mov [ebp-0x48], ecx
	mov eax, [eax+0xe41b8]
	mov [ebp-0x40], eax
	add edx, 0x10000
	mov [ebp-0x4c], edx
	add ecx, 0x1000
	mov [ebp-0x44], ecx
	add eax, 0x10000
	mov [ebp-0x3c], eax
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x38]
	rep stosd
	mov ecx, [ebp-0x10bc]
	test ecx, ecx
	jz R_AddAllStaticModelSurfacesCamera_10
	mov esi, ebx
	mov dword [ebp-0x10b4], 0xff
	mov dword [ebp-0x10c0], 0x0
	xor edi, edi
	mov dword [ebp-0x109c], 0x0
	mov byte [ebp-0x10a9], 0x0
	jmp R_AddAllStaticModelSurfacesCamera_20
R_AddAllStaticModelSurfacesCamera_40:
	add dword [ebp-0x10c0], 0x1
	add esi, 0x4c
	mov eax, [ebp-0x10c0]
	cmp [ebp-0x10bc], eax
	jz R_AddAllStaticModelSurfacesCamera_30
R_AddAllStaticModelSurfacesCamera_20:
	mov edx, [ebp-0x10b8]
	add edx, [ebp-0x10c0]
	mov [ebp-0x106c], edx
	cmp byte [edx], 0x0
	jz R_AddAllStaticModelSurfacesCamera_40
	lea eax, [esi+0x4]
	movss xmm0, dword [ebp-0x1084]
	subss xmm0, [esi+0x4]
	movss xmm1, dword [ebp-0x1088]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x108c]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	mulss xmm1, [ebp-0x10a8]
	addss xmm1, [ebp-0x10a4]
	ucomiss xmm1, [esi]
	jb R_AddAllStaticModelSurfacesCamera_50
	mov byte [edx], 0x0
	add dword [ebp-0x10c0], 0x1
	add esi, 0x4c
	mov eax, [ebp-0x10c0]
	cmp [ebp-0x10bc], eax
	jnz R_AddAllStaticModelSurfacesCamera_20
R_AddAllStaticModelSurfacesCamera_30:
	test edi, edi
	jz R_AddAllStaticModelSurfacesCamera_10
	movzx edx, byte [ebp-0x10a9]
	mov [ebp-0x1090], edx
	lea ecx, [ebp-0x1060]
	mov [ebp-0x107c], ecx
	mov dword [ebp-0x1080], 0x2
	lea esi, [ebp-0x38]
	mov ebx, ecx
R_AddAllStaticModelSurfacesCamera_80:
	xor edi, edi
R_AddAllStaticModelSurfacesCamera_70:
	movzx eax, word [esi+edi*2]
	movzx edx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesCamera_60
R_AddAllStaticModelSurfacesCamera_130:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz R_AddAllStaticModelSurfacesCamera_70
	add dword [ebp-0x1080], 0x1
	add dword [ebp-0x107c], 0x400
	add esi, 0x8
	cmp dword [ebp-0x1080], 0x6
	jz R_AddAllStaticModelSurfacesCamera_10
	mov ebx, [ebp-0x107c]
	jmp R_AddAllStaticModelSurfacesCamera_80
R_AddAllStaticModelSurfacesCamera_10:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call R_EndCmdBuf
	mov edx, scene
	mov eax, [ebp-0x50]
	sub eax, [edx+0xe4194]
	sar eax, 0x3
	mov [edx+0xe410c], eax
	mov eax, [ebp-0x48]
	sub eax, [edx+0xe41a0]
	sar eax, 0x3
	mov [edx+0xe4118], eax
	mov eax, [ebp-0x40]
	sub eax, [edx+0xe41b8]
	sar eax, 0x3
	mov [edx+0xe4130], eax
	add esp, 0x10ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllStaticModelSurfacesCamera_50:
	mov ecx, [esi+0x38]
	mov [ebp-0x1098], ecx
	movzx eax, byte [esi+0x45]
	mov [ebp-0x10aa], al
	movzx edx, byte [esi+0x44]
	mov [ebp-0x10b0], edx
	mov eax, [ebp-0x109c]
	cmp ecx, eax
	jz R_AddAllStaticModelSurfacesCamera_90
R_AddAllStaticModelSurfacesCamera_210:
	test edi, edi
	jnz R_AddAllStaticModelSurfacesCamera_100
R_AddAllStaticModelSurfacesCamera_190:
	mov eax, [ebp-0x10b0]
	mov [ebp-0x10b4], eax
	movzx edx, byte [ebp-0x10aa]
	mov [ebp-0x10a9], dl
R_AddAllStaticModelSurfacesCamera_220:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [esi+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov ecx, [ebp-0x1098]
	mov [esp], ecx
	call XModelGetLodForDist
	mov ebx, eax
	test eax, eax
	js R_AddAllStaticModelSurfacesCamera_110
	mov ecx, [ebp-0x10c0]
	mov [esp+0x4], ecx
	mov [esp], esi
	call R_AllocStaticModelLighting
	test al, al
	jnz R_AddAllStaticModelSurfacesCamera_120
	mov dword [esp], 0xb
	call R_WarnOncePerFrame
R_AddAllStaticModelSurfacesCamera_110:
	mov eax, [ebp-0x106c]
	mov byte [eax], 0x0
	mov edx, [ebp-0x1098]
	mov [ebp-0x109c], edx
	jmp R_AddAllStaticModelSurfacesCamera_40
R_AddAllStaticModelSurfacesCamera_60:
	lea eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp-0x1080]
	mov [esp+0x4], ecx
	mov [esp], edx
	mov ecx, ebx
	mov edx, [ebp-0x1090]
	mov eax, [ebp-0x109c]
	call R_SkinStaticModelsCameraForLod
	jmp R_AddAllStaticModelSurfacesCamera_130
R_AddAllStaticModelSurfacesCamera_100:
	movzx ecx, byte [ebp-0x10a9]
	mov [ebp-0x1094], ecx
	lea eax, [ebp-0x1060]
	mov [ebp-0x1074], eax
	mov dword [ebp-0x1078], 0x2
	lea edx, [ebp-0x38]
	mov [ebp-0x1070], edx
	mov ebx, eax
R_AddAllStaticModelSurfacesCamera_170:
	xor edi, edi
R_AddAllStaticModelSurfacesCamera_150:
	mov ecx, [ebp-0x1070]
	movzx eax, word [ecx+edi*2]
	movzx edx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesCamera_140
R_AddAllStaticModelSurfacesCamera_180:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz R_AddAllStaticModelSurfacesCamera_150
	add dword [ebp-0x1078], 0x1
	add dword [ebp-0x1074], 0x400
	add dword [ebp-0x1070], 0x8
	cmp dword [ebp-0x1078], 0x6
	jz R_AddAllStaticModelSurfacesCamera_160
	mov ebx, [ebp-0x1074]
	jmp R_AddAllStaticModelSurfacesCamera_170
R_AddAllStaticModelSurfacesCamera_140:
	lea eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp-0x1078]
	mov [esp+0x4], ecx
	mov [esp], edx
	mov ecx, ebx
	mov edx, [ebp-0x1094]
	mov eax, [ebp-0x109c]
	movss [ebp-0x10d8], xmm1
	call R_SkinStaticModelsCameraForLod
	movss xmm1, dword [ebp-0x10d8]
	jmp R_AddAllStaticModelSurfacesCamera_180
R_AddAllStaticModelSurfacesCamera_160:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x38]
	rep stosd
	xor edi, edi
	jmp R_AddAllStaticModelSurfacesCamera_190
R_AddAllStaticModelSurfacesCamera_120:
	mov eax, [ebp-0x10c0]
	shr eax, 0x4
	mov ecx, [ebp-0x10c0]
	and ecx, 0xf
	add ecx, ecx
	mov edx, ebx
	shl edx, cl
	mov ecx, edx
	mov edx, [ebp-0x10a0]
	or [edx+eax*4], ecx
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x10c0]
	mov [esp], ecx
	call R_GetStaticModelId
	movzx edx, ax
	mov [ebp-0x10c4], edx
	lea edx, [ebx+edx*4-0x8]
	lea edi, [ebp+edx*2-0x38]
	shl edx, 0x8
	lea ecx, [ebp+edx-0x1060]
	movzx edx, word [edi]
	shr eax, 0x10
	mov [ecx+edx*2], ax
	lea eax, [edx+0x1]
	cmp eax, 0x7f
	ja R_AddAllStaticModelSurfacesCamera_200
	mov [edi], ax
	mov eax, [ebp-0x1098]
	mov [ebp-0x109c], eax
	mov edi, 0x1
	jmp R_AddAllStaticModelSurfacesCamera_40
R_AddAllStaticModelSurfacesCamera_200:
	movzx edx, byte [ebp-0x10aa]
	mov [ebp-0x10dc], edx
	lea edx, [ebp-0x60]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov edx, [ebp-0x10c4]
	mov [esp+0x4], edx
	mov [esp], eax
	mov edx, [ebp-0x10dc]
	mov eax, [ebp-0x1098]
	call R_SkinStaticModelsCameraForLod
	mov word [edi], 0x0
	mov ecx, [ebp-0x1098]
	mov [ebp-0x109c], ecx
	mov edi, 0x1
	jmp R_AddAllStaticModelSurfacesCamera_40
R_AddAllStaticModelSurfacesCamera_90:
	cmp [ebp-0x10b4], edx
	jnz R_AddAllStaticModelSurfacesCamera_210
	movzx edx, byte [ebp-0x10a9]
	cmp [ebp-0x10aa], dl
	jnz R_AddAllStaticModelSurfacesCamera_210
	jmp R_AddAllStaticModelSurfacesCamera_220


;R_SortAllStaticModelSurfacesCamera()
R_SortAllStaticModelSurfacesCamera:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov ebx, scene
	mov eax, [ebx+0xe410c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe4194]
	mov [esp], eax
	call R_SortDrawSurfs
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebx+0xe4118]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41a0]
	mov [esp], eax
	call R_SortDrawSurfs
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebx+0xe4130]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41b8]
	mov [esp], eax
	call R_SortDrawSurfs
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_AddAllStaticModelSurfacesSunShadow()
R_AddAllStaticModelSurfacesSunShadow:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, 0x1000
	xor eax, eax
	call R_AddAllStaticModelSurfacesRangeSunShadow
	mov edx, 0x2000
	mov eax, 0x1
	leave
	jmp R_AddAllStaticModelSurfacesRangeSunShadow


;R_AddAllStaticModelSurfacesSpotShadow(unsigned int, unsigned int)
R_AddAllStaticModelSurfacesSpotShadow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10ac
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, rgp
	mov eax, [edi+0x20a0]
	mov eax, [eax+0x29c]
	mov [ebp-0x1078], eax
	mov eax, rg
	movss xmm0, dword [eax+0x21e8]
	movss [ebp-0x1080], xmm0
	movss xmm0, dword [eax+0x21ec]
	movss [ebp-0x107c], xmm0
	movss xmm0, dword [eax+0x21dc]
	movss [ebp-0x106c], xmm0
	movss xmm0, dword [eax+0x21e0]
	movss [ebp-0x1070], xmm0
	movss xmm0, dword [eax+0x21e4]
	movss [ebp-0x1074], xmm0
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	lea esi, [esi+esi*2+0x16]
	mov [ebp-0x109c], esi
	mov eax, scene
	mov edx, [eax+esi*4+0xe4190]
	mov [ebp-0x20], edx
	mov eax, [eax+esi*4+0xe4080]
	lea eax, [edx+eax*8]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x20a0]
	lea ebx, [ebx+ebx*2]
	mov eax, [eax+0x23c]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x1090], ebx
	cmp word [ebx+0x2], 0x0
	jz R_AddAllStaticModelSurfacesSpotShadow_10
	mov dword [ebp-0x1098], 0x0
	mov dword [ebp-0x108c], 0x0
	mov edx, [ebp-0x1090]
	jmp R_AddAllStaticModelSurfacesSpotShadow_20
R_AddAllStaticModelSurfacesSpotShadow_40:
	add dword [ebp-0x1098], 0x1
	mov ecx, [ebp-0x1090]
	movzx eax, word [ecx+0x2]
	cmp [ebp-0x1098], eax
	jae R_AddAllStaticModelSurfacesSpotShadow_30
	mov edx, ecx
R_AddAllStaticModelSurfacesSpotShadow_20:
	mov eax, [edx+0x8]
	mov ecx, [ebp-0x1098]
	movzx eax, word [eax+ecx*2]
	mov [ebp-0x1094], eax
	mov edx, eax
	lea eax, [eax+eax*8]
	lea eax, [edx+eax*2]
	mov ecx, [ebp-0x1078]
	lea ebx, [ecx+eax*4]
	test byte [ebx+0x48], 0x1
	jnz R_AddAllStaticModelSurfacesSpotShadow_40
	lea eax, [ebx+0x4]
	movss xmm0, dword [ebp-0x106c]
	subss xmm0, [ebx+0x4]
	movss xmm1, dword [ebp-0x1070]
	subss xmm1, [eax+0x4]
	movss xmm2, dword [ebp-0x1074]
	subss xmm2, [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	mulss xmm1, [ebp-0x1080]
	addss xmm1, [ebp-0x107c]
	ucomiss xmm1, [ebx]
	jae R_AddAllStaticModelSurfacesSpotShadow_40
	mov eax, [ebx+0x38]
	mov [ebp-0x1088], eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebx+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov [esp], eax
	call XModelGetLodForDist
	mov [ebp-0x1084], eax
	test eax, eax
	js R_AddAllStaticModelSurfacesSpotShadow_40
	mov edx, [ebp-0x1094]
	mov [esp+0x4], edx
	mov [esp], ebx
	call R_AllocStaticModelLighting
	test al, al
	jz R_AddAllStaticModelSurfacesSpotShadow_50
	mov ecx, [ebp-0x108c]
	cmp [ebp-0x1088], ecx
	jz R_AddAllStaticModelSurfacesSpotShadow_60
	test ecx, ecx
	jz R_AddAllStaticModelSurfacesSpotShadow_70
	lea eax, [ebp-0x1050]
	mov [ebp-0x105c], eax
	mov dword [ebp-0x1060], 0x2
	lea edi, [ebp-0x50]
	mov ebx, eax
R_AddAllStaticModelSurfacesSpotShadow_100:
	xor esi, esi
R_AddAllStaticModelSurfacesSpotShadow_90:
	movzx eax, word [edi+esi*2]
	movzx ecx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesSpotShadow_80
R_AddAllStaticModelSurfacesSpotShadow_150:
	add esi, 0x1
	add ebx, 0x100
	cmp esi, 0x4
	jnz R_AddAllStaticModelSurfacesSpotShadow_90
	add dword [ebp-0x1060], 0x1
	add dword [ebp-0x105c], 0x400
	add edi, 0x8
	cmp dword [ebp-0x1060], 0x6
	jz R_AddAllStaticModelSurfacesSpotShadow_70
	mov ebx, [ebp-0x105c]
	jmp R_AddAllStaticModelSurfacesSpotShadow_100
R_AddAllStaticModelSurfacesSpotShadow_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call R_EndCmdBuf
	mov ebx, scene
	mov esi, [ebp-0x20]
	mov ecx, [ebp-0x109c]
	sub esi, [ebx+ecx*4+0xe4190]
	sar esi, 0x3
	mov [ebx+ecx*4+0xe4108], esi
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov [esp+0x4], esi
	mov edx, [ebp-0x109c]
	mov eax, [ebx+edx*4+0xe4190]
	mov [esp], eax
	call R_SortDrawSurfs
	add esp, 0x10ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllStaticModelSurfacesSpotShadow_30:
	mov edi, [ebp-0x108c]
	test edi, edi
	jz R_AddAllStaticModelSurfacesSpotShadow_10
	lea eax, [ebp-0x1050]
	mov [ebp-0x1064], eax
	mov dword [ebp-0x1068], 0x2
	lea edi, [ebp-0x50]
	mov ebx, eax
R_AddAllStaticModelSurfacesSpotShadow_130:
	xor esi, esi
R_AddAllStaticModelSurfacesSpotShadow_120:
	movzx eax, word [edi+esi*2]
	movzx ecx, ax
	test ax, ax
	jnz R_AddAllStaticModelSurfacesSpotShadow_110
R_AddAllStaticModelSurfacesSpotShadow_140:
	add esi, 0x1
	add ebx, 0x100
	cmp esi, 0x4
	jnz R_AddAllStaticModelSurfacesSpotShadow_120
	add dword [ebp-0x1068], 0x1
	add dword [ebp-0x1064], 0x400
	add edi, 0x8
	cmp dword [ebp-0x1068], 0x6
	jz R_AddAllStaticModelSurfacesSpotShadow_10
	mov ebx, [ebp-0x1064]
	jmp R_AddAllStaticModelSurfacesSpotShadow_130
R_AddAllStaticModelSurfacesSpotShadow_110:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x1068]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x108c]
	call R_SkinStaticModelsShadowForLod
	jmp R_AddAllStaticModelSurfacesSpotShadow_140
R_AddAllStaticModelSurfacesSpotShadow_50:
	mov dword [esp], 0xb
	call R_WarnOncePerFrame
	jmp R_AddAllStaticModelSurfacesSpotShadow_40
R_AddAllStaticModelSurfacesSpotShadow_80:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x1060]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x108c]
	call R_SkinStaticModelsShadowForLod
	jmp R_AddAllStaticModelSurfacesSpotShadow_150
R_AddAllStaticModelSurfacesSpotShadow_70:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x50]
	rep stosd
	mov edx, [ebp-0x1088]
	mov [ebp-0x108c], edx
R_AddAllStaticModelSurfacesSpotShadow_60:
	mov ecx, [ebp-0x1084]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1094]
	mov [esp], eax
	call R_GetStaticModelId
	movzx edi, ax
	mov ecx, [ebp-0x1084]
	lea edx, [ecx+edi*4-0x8]
	lea ebx, [ebp+edx*2-0x50]
	shl edx, 0x8
	lea esi, [ebp-0x1050]
	add esi, edx
	movzx edx, word [ebx]
	shr eax, 0x10
	mov [esi+edx*2], ax
	lea ecx, [edx+0x1]
	cmp ecx, 0x7f
	ja R_AddAllStaticModelSurfacesSpotShadow_160
	mov [ebx], cx
	jmp R_AddAllStaticModelSurfacesSpotShadow_40
R_AddAllStaticModelSurfacesSpotShadow_160:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1084]
	mov [esp+0x4], edx
	mov [esp], edi
	mov edx, esi
	mov eax, [ebp-0x1088]
	call R_SkinStaticModelsShadowForLod
	mov word [ebx], 0x0
	jmp R_AddAllStaticModelSurfacesSpotShadow_40
	add [eax], al


;R_SortAllStaticModelSurfacesSunShadow()
R_SortAllStaticModelSurfacesSunShadow:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov ebx, scene
	mov eax, [ebx+0xe4148]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41d0]
	mov [esp], eax
	call R_SortDrawSurfs
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebx+0xe4154]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41dc]
	mov [esp], eax
	call R_SortDrawSurfs
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of r_add_staticmodel:
SECTION .data


;Initialized constant data of r_add_staticmodel:
SECTION .rdata


;Zero initialized global or static variables of r_add_staticmodel:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_sort_surfs:		db "sort surfs",0



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1

