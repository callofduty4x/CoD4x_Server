;Imports of r_add_staticmodel:
	extern _Z16XModelGetSurfacePK6XModelii
	extern _Z21R_AllocPreTessIndicesi
	extern _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	extern gfxBuf
	extern _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	extern _Z21R_GetCachedSModelSurfj
	extern Com_Memcpy
	extern _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	extern _Z14XModelGetSkinsPK6XModeli
	extern dx_ctx
	extern r_pretess
	extern _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
	extern rgp
	extern rg
	extern _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
	extern scene
	extern _Z19XModelGetLodForDistPK6XModelf
	extern _Z26R_AllocStaticModelLightingPK22GfxStaticModelDrawInstj
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	extern r_smc_enable
	extern _Z16XModelGetLodInfoPK6XModeli
	extern useFastFile
	extern _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo
	extern _Z10Com_MemsetPvii
	extern _Z18PIXBeginNamedEventiPKcz
	extern _Z15R_SortDrawSurfsP11GfxDrawSurfi

;Exports of r_add_staticmodel:
	global _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf
	global _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData
	global _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	global _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj
	global _Z18R_GetStaticModelIdii
	global _Z25R_InitStaticModelDrawSurfP21GfxSModelDrawSurfData
	global _Z31R_AddDelayedStaticModelDrawSurfP16GfxDelayedCmdBufP8XSurfacePtj
	global _Z33R_AddAllStaticModelSurfacesCamerav
	global _Z34R_SortAllStaticModelSurfacesCamerav
	global _Z36R_AddAllStaticModelSurfacesSunShadowv
	global _Z37R_AddAllStaticModelSurfacesSpotShadowjj
	global _Z37R_SortAllStaticModelSurfacesSunShadowv


SECTION .text


;R_PreTessStaticModelCachedList(XModel const*, unsigned short*, unsigned int, unsigned int, int, GfxDrawSurf, GfxDrawSurfList*, GfxDelayedCmdBuf*)
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf:
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
	call _Z16XModelGetSurfacePK6XModelii
	mov [ebp-0x28], eax
	movzx eax, word [eax+0x4]
	lea ebx, [eax+eax*2]
	mov eax, [ebp-0x34]
	imul eax, ebx
	mov [esp], eax
	call _Z21R_AllocPreTessIndicesi
	mov [ebp-0x20], eax
	test eax, eax
	jz _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_10
	mov eax, [ebp-0x34]
	test eax, eax
	jnz _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_20
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_50:
	and edi, 0xffc3ffff
	or edi, 0xc0000
	mov dword [esp+0x10], 0x3
	mov ecx, [ebp+0x18]
	mov [esp+0xc], ecx
	mov [esp+0x4], esi
	mov [esp+0x8], edi
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	test eax, eax
	jnz _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_30
	mov al, 0x1
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_30:
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
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x1c]
	mov [esp], eax
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x1c]
	mov [esp], ecx
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_20:
	add ebx, ebx
	mov [ebp-0x1c], ebx
	mov eax, [ebp-0x20]
	mov [ebp-0x24], eax
	xor ebx, ebx
_Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_40:
	mov ecx, [ebp-0x30]
	movzx eax, word [ecx+ebx*2]
	mov [esp], eax
	call _Z21R_GetCachedSModelSurfj
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
	jnz _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_40
	jmp _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf_50
	nop


;R_SkinStaticModelsCameraForLod(XModel const*, unsigned int, unsigned short*, unsigned int, unsigned int, unsigned int, GfxSModelDrawSurfLightingData*)
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData:
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
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0x38], eax
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z14XModelGetSkinsPK6XModeli
	mov edi, eax
	mov edx, [ebp-0x38]
	test edx, edx
	jle _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_10
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
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_50:
	mov edx, [edi]
	movzx eax, byte [edx+0x3e]
	movzx ecx, al
	mov [ebp-0x30], ecx
	cmp al, 0x3
	jz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_20
	mov ebx, [edx+0x8]
	mov esi, [edx+0xc]
	and esi, 0xffc3ffff
	or esi, [ebp-0x44]
	and esi, 0xfffc03ff
	or esi, [ebp-0x48]
	cmp dword [ebp+0xc], 0x4
	jnz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_30
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_30
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_40
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_30:
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
	call _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	test eax, eax
	jz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_10
	mov ebx, [ebp-0x2c]
	add ebx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov eax, [ebp-0x4c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x40]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x14]
	mov [esp], ecx
	call _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_20:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	add dword [ebp-0x2c], 0x38
	mov eax, [ebp-0x34]
	cmp [ebp-0x38], eax
	jnz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_50
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_40:
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
	call _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf
	test al, al
	jnz _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_20
	jmp _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData_30
	nop


;R_SkinStaticModelsShadowForLod(XModel const*, unsigned short*, unsigned int, unsigned int, unsigned int, GfxSModelDrawSurfData*)
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData:
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
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov [ebp-0x38], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _Z14XModelGetSkinsPK6XModeli
	mov [ebp-0x34], eax
	mov ebx, [ebp-0x38]
	test ebx, ebx
	jle _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_10
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
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_50:
	mov edx, [ebp-0x34]
	mov eax, [edx]
	test byte [eax+0x4], 0x40
	jz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_20
	mov ebx, [eax+0x8]
	mov esi, [eax+0xc]
	and esi, 0xffc3ffff
	or esi, [ebp-0x48]
	cmp dword [ebp+0x8], 0x4
	jnz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_30
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_40
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_70:
	mov eax, [ebp+0x10]
	lea edi, [eax+0x10]
	mov edx, eax
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_60:
	mov eax, [ebp-0x4c]
	add eax, 0x2
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov [esp+0x4], ebx
	mov [esp+0x8], esi
	mov [esp], edx
	call _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	test eax, eax
	jz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_10
	mov ebx, [ebp-0x2c]
	add ebx, [ebp-0x1c]
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov edx, [ebp-0x4c]
	mov [esp+0x8], edx
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_20:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x34], 0x4
	add dword [ebp-0x2c], 0x38
	mov eax, [ebp-0x30]
	cmp [ebp-0x38], eax
	jnz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_50
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_30:
	mov edx, [ebp+0x10]
	lea edi, [edx+0x10]
	jmp _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_60
_Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_40:
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_70
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
	call _Z30R_PreTessStaticModelCachedListPK6XModelPtjji11GfxDrawSurfP15GfxDrawSurfListP16GfxDelayedCmdBuf
	test al, al
	jnz _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_20
	mov edx, [ebp+0x10]
	jmp _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData_60


;R_AddAllStaticModelSurfacesRangeSunShadow(unsigned int, unsigned int)
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_10
	mov esi, [ebp-0x107c]
	mov dword [ebp-0x109c], 0x0
	mov dword [ebp-0x1084], 0x0
	xor edi, edi
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_20
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40:
	add dword [ebp-0x109c], 0x1
	add esi, 0x4c
	mov ecx, [ebp-0x109c]
	cmp [ebp-0x1098], ecx
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_30
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_20:
	mov edx, [ebp-0x1094]
	add edx, [ebp-0x109c]
	cmp byte [edx], 0x0
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40
	test byte [esi+0x48], 0x1
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40
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
	jae _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_50
	mov ecx, [esi+0x38]
	mov [ebp-0x1080], ecx
	mov eax, [ebp-0x1084]
	cmp ecx, eax
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_60
	test edi, edi
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_70
	mov [ebp-0x1084], ecx
	mov eax, [ebp-0x1080]
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_180:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [esi+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov [esp], eax
	call _Z19XModelGetLodForDistPK6XModelf
	mov ebx, eax
	test eax, eax
	js _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40
	mov edx, [ebp-0x109c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z26R_AllocStaticModelLightingPK22GfxStaticModelDrawInstj
	test al, al
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_80
	mov dword [esp], 0xb
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	add dword [ebp-0x109c], 0x1
	add esi, 0x4c
	mov ecx, [ebp-0x109c]
	cmp [ebp-0x1098], ecx
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_20
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_30:
	test edi, edi
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_10
	lea eax, [ebp-0x1050]
	mov [ebp-0x1068], eax
	mov dword [ebp-0x106c], 0x2
	lea esi, [ebp-0x50]
	mov ebx, eax
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_110:
	xor edi, edi
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_100:
	movzx eax, word [esi+edi*2]
	movzx ecx, ax
	test ax, ax
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_90
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_120:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_100
	add dword [ebp-0x106c], 0x1
	add dword [ebp-0x1068], 0x400
	add esi, 0x8
	cmp dword [ebp-0x106c], 0x6
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_10
	mov ebx, [ebp-0x1068]
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_110
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_90:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov eax, [ebp-0x106c]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x1084]
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_120
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_50:
	mov byte [edx], 0x0
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_70:
	lea edx, [ebp-0x1050]
	mov [ebp-0x1060], edx
	mov dword [ebp-0x1064], 0x2
	lea ecx, [ebp-0x50]
	mov [ebp-0x105c], ecx
	mov ebx, edx
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_160:
	xor edi, edi
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_140:
	mov edx, [ebp-0x105c]
	movzx eax, word [edx+edi*2]
	movzx ecx, ax
	test ax, ax
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_130
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_170:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_140
	add dword [ebp-0x1064], 0x1
	add dword [ebp-0x1060], 0x400
	add dword [ebp-0x105c], 0x8
	cmp dword [ebp-0x1064], 0x6
	jz _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_150
	mov ebx, [ebp-0x1060]
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_160
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_130:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edx, [ebp-0x1064]
	mov [esp], edx
	mov edx, ebx
	mov eax, [ebp-0x1084]
	movss [ebp-0x10b8], xmm1
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	movss xmm1, dword [ebp-0x10b8]
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_170
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_150:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x50]
	rep stosd
	mov ecx, [ebp-0x1080]
	mov [ebp-0x1084], ecx
	xor edi, edi
	mov eax, ecx
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_180
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_80:
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x109c]
	mov [esp], ecx
	call _Z18R_GetStaticModelIdii
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
	ja _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_190
	mov [edi], cx
	mov edi, 0x1
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_60:
	mov eax, ecx
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_180
_Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_190:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp-0x10a4]
	mov [esp], edx
	mov edx, [ebp-0x1088]
	mov eax, [ebp-0x1080]
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	mov word [edi], 0x0
	mov edi, 0x1
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj_40


;R_GetStaticModelId(int, int)
_Z18R_GetStaticModelIdii:
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
	jz _Z18R_GetStaticModelIdii_10
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z16XModelGetLodInfoPK6XModeli
	movzx edx, byte [eax+0x19]
	test dl, dl
	jnz _Z18R_GetStaticModelIdii_20
_Z18R_GetStaticModelIdii_10:
	mov esi, ebx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _Z17XModelGetSurfacesPK6XModelPP8XSurfacei
	mov ebx, eax
	test eax, eax
	jle _Z18R_GetStaticModelIdii_30
	mov eax, useFastFile
	mov edi, [eax]
	mov edx, [ebp-0x1c]
	xor eax, eax
	jmp _Z18R_GetStaticModelIdii_40
_Z18R_GetStaticModelIdii_70:
	cmp byte [edi+0xc], 0x0
	jz _Z18R_GetStaticModelIdii_50
	mov ecx, 0x1
	test ecx, ecx
	jz _Z18R_GetStaticModelIdii_60
_Z18R_GetStaticModelIdii_80:
	add eax, 0x1
	add edx, 0x38
	cmp ebx, eax
	jz _Z18R_GetStaticModelIdii_30
_Z18R_GetStaticModelIdii_40:
	cmp byte [edx+0x1], 0x0
	jz _Z18R_GetStaticModelIdii_70
_Z18R_GetStaticModelIdii_50:
	xor ecx, ecx
	test ecx, ecx
	jnz _Z18R_GetStaticModelIdii_80
_Z18R_GetStaticModelIdii_60:
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
_Z18R_GetStaticModelIdii_30:
	mov edx, 0x2
_Z18R_GetStaticModelIdii_90:
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
_Z18R_GetStaticModelIdii_20:
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	movzx eax, dl
	sub eax, 0x1
	mov [esp], eax
	call _Z25R_CacheStaticModelSurfacejjPK13XModelLodInfo
	mov esi, eax
	test ax, ax
	jz _Z18R_GetStaticModelIdii_10
	mov edx, 0x4
	jmp _Z18R_GetStaticModelIdii_90


;R_InitStaticModelDrawSurf(GfxSModelDrawSurfData*)
_Z25R_InitStaticModelDrawSurfP21GfxSModelDrawSurfData:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
	nop


;R_AddDelayedStaticModelDrawSurf(GfxDelayedCmdBuf*, XSurface*, unsigned short*, unsigned int)
_Z31R_AddDelayedStaticModelDrawSurfP16GfxDelayedCmdBufP8XSurfacePtj:
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
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
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
	jmp _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
	nop


;R_AddAllStaticModelSurfacesCamera()
_Z33R_AddAllStaticModelSurfacesCamerav:
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
	call _Z10Com_MemsetPvii
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jz _Z33R_AddAllStaticModelSurfacesCamerav_10
	mov esi, ebx
	mov dword [ebp-0x10b4], 0xff
	mov dword [ebp-0x10c0], 0x0
	xor edi, edi
	mov dword [ebp-0x109c], 0x0
	mov byte [ebp-0x10a9], 0x0
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_20
_Z33R_AddAllStaticModelSurfacesCamerav_40:
	add dword [ebp-0x10c0], 0x1
	add esi, 0x4c
	mov eax, [ebp-0x10c0]
	cmp [ebp-0x10bc], eax
	jz _Z33R_AddAllStaticModelSurfacesCamerav_30
_Z33R_AddAllStaticModelSurfacesCamerav_20:
	mov edx, [ebp-0x10b8]
	add edx, [ebp-0x10c0]
	mov [ebp-0x106c], edx
	cmp byte [edx], 0x0
	jz _Z33R_AddAllStaticModelSurfacesCamerav_40
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
	jb _Z33R_AddAllStaticModelSurfacesCamerav_50
	mov byte [edx], 0x0
	add dword [ebp-0x10c0], 0x1
	add esi, 0x4c
	mov eax, [ebp-0x10c0]
	cmp [ebp-0x10bc], eax
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_20
_Z33R_AddAllStaticModelSurfacesCamerav_30:
	test edi, edi
	jz _Z33R_AddAllStaticModelSurfacesCamerav_10
	movzx edx, byte [ebp-0x10a9]
	mov [ebp-0x1090], edx
	lea ecx, [ebp-0x1060]
	mov [ebp-0x107c], ecx
	mov dword [ebp-0x1080], 0x2
	lea esi, [ebp-0x38]
	mov ebx, ecx
_Z33R_AddAllStaticModelSurfacesCamerav_80:
	xor edi, edi
_Z33R_AddAllStaticModelSurfacesCamerav_70:
	movzx eax, word [esi+edi*2]
	movzx edx, ax
	test ax, ax
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_60
_Z33R_AddAllStaticModelSurfacesCamerav_130:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_70
	add dword [ebp-0x1080], 0x1
	add dword [ebp-0x107c], 0x400
	add esi, 0x8
	cmp dword [ebp-0x1080], 0x6
	jz _Z33R_AddAllStaticModelSurfacesCamerav_10
	mov ebx, [ebp-0x107c]
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_80
_Z33R_AddAllStaticModelSurfacesCamerav_10:
	lea eax, [ebp-0x60]
	mov [esp], eax
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z33R_AddAllStaticModelSurfacesCamerav_50:
	mov ecx, [esi+0x38]
	mov [ebp-0x1098], ecx
	movzx eax, byte [esi+0x45]
	mov [ebp-0x10aa], al
	movzx edx, byte [esi+0x44]
	mov [ebp-0x10b0], edx
	mov eax, [ebp-0x109c]
	cmp ecx, eax
	jz _Z33R_AddAllStaticModelSurfacesCamerav_90
_Z33R_AddAllStaticModelSurfacesCamerav_210:
	test edi, edi
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_100
_Z33R_AddAllStaticModelSurfacesCamerav_190:
	mov eax, [ebp-0x10b0]
	mov [ebp-0x10b4], eax
	movzx edx, byte [ebp-0x10aa]
	mov [ebp-0x10a9], dl
_Z33R_AddAllStaticModelSurfacesCamerav_220:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [esi+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov ecx, [ebp-0x1098]
	mov [esp], ecx
	call _Z19XModelGetLodForDistPK6XModelf
	mov ebx, eax
	test eax, eax
	js _Z33R_AddAllStaticModelSurfacesCamerav_110
	mov ecx, [ebp-0x10c0]
	mov [esp+0x4], ecx
	mov [esp], esi
	call _Z26R_AllocStaticModelLightingPK22GfxStaticModelDrawInstj
	test al, al
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_120
	mov dword [esp], 0xb
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z33R_AddAllStaticModelSurfacesCamerav_110:
	mov eax, [ebp-0x106c]
	mov byte [eax], 0x0
	mov edx, [ebp-0x1098]
	mov [ebp-0x109c], edx
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_40
_Z33R_AddAllStaticModelSurfacesCamerav_60:
	lea eax, [ebp-0x60]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov ecx, [ebp-0x1080]
	mov [esp+0x4], ecx
	mov [esp], edx
	mov ecx, ebx
	mov edx, [ebp-0x1090]
	mov eax, [ebp-0x109c]
	call _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_130
_Z33R_AddAllStaticModelSurfacesCamerav_100:
	movzx ecx, byte [ebp-0x10a9]
	mov [ebp-0x1094], ecx
	lea eax, [ebp-0x1060]
	mov [ebp-0x1074], eax
	mov dword [ebp-0x1078], 0x2
	lea edx, [ebp-0x38]
	mov [ebp-0x1070], edx
	mov ebx, eax
_Z33R_AddAllStaticModelSurfacesCamerav_170:
	xor edi, edi
_Z33R_AddAllStaticModelSurfacesCamerav_150:
	mov ecx, [ebp-0x1070]
	movzx eax, word [ecx+edi*2]
	movzx edx, ax
	test ax, ax
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_140
_Z33R_AddAllStaticModelSurfacesCamerav_180:
	add edi, 0x1
	add ebx, 0x100
	cmp edi, 0x4
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_150
	add dword [ebp-0x1078], 0x1
	add dword [ebp-0x1074], 0x400
	add dword [ebp-0x1070], 0x8
	cmp dword [ebp-0x1078], 0x6
	jz _Z33R_AddAllStaticModelSurfacesCamerav_160
	mov ebx, [ebp-0x1074]
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_170
_Z33R_AddAllStaticModelSurfacesCamerav_140:
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
	call _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData
	movss xmm1, dword [ebp-0x10d8]
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_180
_Z33R_AddAllStaticModelSurfacesCamerav_160:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x38]
	rep stosd
	xor edi, edi
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_190
_Z33R_AddAllStaticModelSurfacesCamerav_120:
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
	call _Z18R_GetStaticModelIdii
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
	ja _Z33R_AddAllStaticModelSurfacesCamerav_200
	mov [edi], ax
	mov eax, [ebp-0x1098]
	mov [ebp-0x109c], eax
	mov edi, 0x1
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_40
_Z33R_AddAllStaticModelSurfacesCamerav_200:
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
	call _Z30R_SkinStaticModelsCameraForLodPK6XModeljPtjjjP29GfxSModelDrawSurfLightingData
	mov word [edi], 0x0
	mov ecx, [ebp-0x1098]
	mov [ebp-0x109c], ecx
	mov edi, 0x1
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_40
_Z33R_AddAllStaticModelSurfacesCamerav_90:
	cmp [ebp-0x10b4], edx
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_210
	movzx edx, byte [ebp-0x10a9]
	cmp [ebp-0x10aa], dl
	jnz _Z33R_AddAllStaticModelSurfacesCamerav_210
	jmp _Z33R_AddAllStaticModelSurfacesCamerav_220


;R_SortAllStaticModelSurfacesCamera()
_Z34R_SortAllStaticModelSurfacesCamerav:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ebx, scene
	mov eax, [ebx+0xe410c]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe4194]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebx+0xe4118]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41a0]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebx+0xe4130]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41b8]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_AddAllStaticModelSurfacesSunShadow()
_Z36R_AddAllStaticModelSurfacesSunShadowv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, 0x1000
	xor eax, eax
	call _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj
	mov edx, 0x2000
	mov eax, 0x1
	leave
	jmp _Z41R_AddAllStaticModelSurfacesRangeSunShadowjj


;R_AddAllStaticModelSurfacesSpotShadow(unsigned int, unsigned int)
_Z37R_AddAllStaticModelSurfacesSpotShadowjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_10
	mov dword [ebp-0x1098], 0x0
	mov dword [ebp-0x108c], 0x0
	mov edx, [ebp-0x1090]
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_20
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_40:
	add dword [ebp-0x1098], 0x1
	mov ecx, [ebp-0x1090]
	movzx eax, word [ecx+0x2]
	cmp [ebp-0x1098], eax
	jae _Z37R_AddAllStaticModelSurfacesSpotShadowjj_30
	mov edx, ecx
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_20:
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
	jnz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
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
	jae _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
	mov eax, [ebx+0x38]
	mov [ebp-0x1088], eax
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebx+0x34]
	mulss xmm1, xmm0
	movss [esp+0x4], xmm1
	mov [esp], eax
	call _Z19XModelGetLodForDistPK6XModelf
	mov [ebp-0x1084], eax
	test eax, eax
	js _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
	mov edx, [ebp-0x1094]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z26R_AllocStaticModelLightingPK22GfxStaticModelDrawInstj
	test al, al
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_50
	mov ecx, [ebp-0x108c]
	cmp [ebp-0x1088], ecx
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_60
	test ecx, ecx
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_70
	lea eax, [ebp-0x1050]
	mov [ebp-0x105c], eax
	mov dword [ebp-0x1060], 0x2
	lea edi, [ebp-0x50]
	mov ebx, eax
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_100:
	xor esi, esi
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_90:
	movzx eax, word [edi+esi*2]
	movzx ecx, ax
	test ax, ax
	jnz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_80
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_150:
	add esi, 0x1
	add ebx, 0x100
	cmp esi, 0x4
	jnz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_90
	add dword [ebp-0x1060], 0x1
	add dword [ebp-0x105c], 0x400
	add edi, 0x8
	cmp dword [ebp-0x1060], 0x6
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_70
	mov ebx, [ebp-0x105c]
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_100
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	mov ebx, scene
	mov esi, [ebp-0x20]
	mov ecx, [ebp-0x109c]
	sub esi, [ebx+ecx*4+0xe4190]
	sar esi, 0x3
	mov [ebx+ecx*4+0xe4108], esi
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov [esp+0x4], esi
	mov edx, [ebp-0x109c]
	mov eax, [ebx+edx*4+0xe4190]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	add esp, 0x10ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_30:
	mov edi, [ebp-0x108c]
	test edi, edi
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_10
	lea eax, [ebp-0x1050]
	mov [ebp-0x1064], eax
	mov dword [ebp-0x1068], 0x2
	lea edi, [ebp-0x50]
	mov ebx, eax
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_130:
	xor esi, esi
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_120:
	movzx eax, word [edi+esi*2]
	movzx ecx, ax
	test ax, ax
	jnz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_110
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_140:
	add esi, 0x1
	add ebx, 0x100
	cmp esi, 0x4
	jnz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_120
	add dword [ebp-0x1068], 0x1
	add dword [ebp-0x1064], 0x400
	add edi, 0x8
	cmp dword [ebp-0x1068], 0x6
	jz _Z37R_AddAllStaticModelSurfacesSpotShadowjj_10
	mov ebx, [ebp-0x1064]
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_130
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_110:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x1068]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x108c]
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_140
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_50:
	mov dword [esp], 0xb
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_80:
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x1060]
	mov [esp], eax
	mov edx, ebx
	mov eax, [ebp-0x108c]
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_150
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_70:
	cld
	mov ecx, 0x8
	xor eax, eax
	lea edi, [ebp-0x50]
	rep stosd
	mov edx, [ebp-0x1088]
	mov [ebp-0x108c], edx
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_60:
	mov ecx, [ebp-0x1084]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1094]
	mov [esp], eax
	call _Z18R_GetStaticModelIdii
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
	ja _Z37R_AddAllStaticModelSurfacesSpotShadowjj_160
	mov [ebx], cx
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
_Z37R_AddAllStaticModelSurfacesSpotShadowjj_160:
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1084]
	mov [esp+0x4], edx
	mov [esp], edi
	mov edx, esi
	mov eax, [ebp-0x1088]
	call _Z30R_SkinStaticModelsShadowForLodPK6XModelPtjjjP21GfxSModelDrawSurfData
	mov word [ebx], 0x0
	jmp _Z37R_AddAllStaticModelSurfacesSpotShadowjj_40
	add [eax], al


;R_SortAllStaticModelSurfacesSunShadow()
_Z37R_SortAllStaticModelSurfacesSunShadowv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov ebx, scene
	mov eax, [ebx+0xe4148]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41d0]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
	mov dword [esp+0x4], _cstring_sort_surfs
	mov dword [esp], 0xffffffff
	call _Z18PIXBeginNamedEventiPKcz
	mov eax, [ebx+0xe4154]
	mov [esp+0x4], eax
	mov eax, [ebx+0xe41dc]
	mov [esp], eax
	call _Z15R_SortDrawSurfsP11GfxDrawSurfi
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

