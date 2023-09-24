;Imports of r_rendertarget:
	extern _Z15Image_AllocProgihh
	extern _Z23Image_SetupRenderTargetP8GfxImagett10_D3DFORMATPKc
	extern _Z16Image_GetSurfaceP8GfxImage
	extern gfxMetrics
	extern _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	extern dx_ctx
	extern _Z18R_ErrorDescriptionl
	extern _Z9Com_Error11errorParm_tPKcz
	extern vidConfig
	extern _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT
	extern _Z2vaPKcz
	extern g_allocateMinimalResources
	extern _Z10Com_PrintfiPKcz
	extern r_floatz
	extern _ZN10MacDisplay10Is1900CardEv
	extern _Z13Image_ReleaseP8GfxImage
	extern memset

;Exports of r_rendertarget:
	global s_renderTargetNames
	global _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	global _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget
	global _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	global _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface
	global _Z16R_DescribeFormat10_D3DFORMAT
	global _Z19R_InitRenderTargetsv
	global _Z23R_GetDepthStencilFormat10_D3DFORMAT
	global _Z23R_ShutdownRenderTargetsv
	global gfxRenderTargets


SECTION .text


;R_InitRenderTargetImage(int, unsigned short, unsigned short, _D3DFORMAT, RenderTargetUsage, GfxRenderTarget*)
_Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0x10]
	mov [ebp-0x1a], dx
	mov edi, ecx
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x6
	mov [esp], eax
	call _Z15Image_AllocProgihh
	mov [esi], eax
	mov ebx, esi
	sub ebx, gfxRenderTargets
	lea edx, [ebx+ebx*2]
	mov ecx, edx
	shl ecx, 0x4
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x8
	add edx, ecx
	mov ecx, edx
	shl ecx, 0x10
	add edx, ecx
	mov edx, [ebx+edx*4+s_renderTargetNames]
	mov [esp+0x10], edx
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	movzx edi, di
	mov [esp+0x8], edi
	movzx ebx, word [ebp-0x1a]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z23Image_SetupRenderTargetP8GfxImagett10_D3DFORMATPKc
	mov eax, [ebp+0xc]
	test eax, eax
	jnz _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_10
	mov eax, [esi]
	mov [esp], eax
	call _Z16Image_GetSurfaceP8GfxImage
	mov [esi+0x8], eax
	mov [esi+0xc], ebx
	mov [esi+0x10], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_10:
	mov eax, [esi]
	mov [esp], eax
	call _Z16Image_GetSurfaceP8GfxImage
	mov [esi+0x4], eax
	mov [esi+0xc], ebx
	mov [esi+0x10], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_InitShadowmapRenderTarget(int, unsigned short, unsigned short, GfxRenderTarget*)
_Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	imul ecx, edx
	mov ebx, gfxMetrics
	cmp dword [ebx+0x20], 0x2
	setnz byte [ebp-0x21]
	mov edi, [ebx+0x18]
	movzx ecx, cx
	mov [ebp-0x20], ecx
	movzx edx, dx
	mov [ebp-0x1c], edx
	movzx ebx, word [ebp-0x20]
	movzx esi, dx
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	movzx edx, byte [ebp-0x21]
	mov [esp+0x4], edx
	mov [esp], edi
	mov ecx, ebx
	mov edx, esi
	call _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	cmp byte [ebp-0x21], 0x0
	jnz _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_10
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	mov eax, ebx
	add eax, 0x4
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov ebx, gfxMetrics
	mov eax, [ebx+0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x1c]
	mov [esp+0x4], ebx
	mov [esp], edx
	call dword [ecx+0x70]
	test eax, eax
	js _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_20
_Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_10:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov ebx, gfxMetrics
	mov eax, [ebx+0x1c]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x1c]
	mov [esp+0x4], ebx
	mov [esp], edx
	call dword [ecx+0x74]
	test eax, eax
	jns _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_30
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], eax
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_30
_Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], eax
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_create_a1
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget_30
	nop


;R_InitFullscreenRenderTargetImage(int, FullscreenType, int, _D3DFORMAT, RenderTargetUsage, GfxRenderTarget*)
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x28], eax
	mov esi, ecx
	mov ebx, [ebp+0xc]
	test edx, edx
	jnz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_10
	mov eax, vidConfig
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_50:
	mov edi, [eax+0xc]
	mov eax, [ebp-0x24]
	mov ecx, esi
	sar eax, cl
	cmp eax, 0x1
	jle _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_20
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_60:
	mov edx, eax
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_70:
	mov eax, edi
	mov ecx, esi
	sar eax, cl
	mov ecx, 0x1
	cmp eax, 0x1
	cmovg ecx, eax
	movzx ecx, cx
	movzx edx, dx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	mov eax, [ebp-0x28]
	call _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	cmp ebx, 0x2
	jz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_30
	sub ebx, 0x1
	jz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_40
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_30:
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [esp], eax
	call _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_10:
	mov eax, vidConfig
	mov ecx, [eax]
	mov [ebp-0x24], ecx
	cmp edx, 0x2
	jnz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_50
	mov edi, [eax+0x4]
	mov eax, [ebp-0x24]
	mov ecx, esi
	sar eax, cl
	cmp eax, 0x1
	jg _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_60
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_20:
	mov edx, 0x1
	jmp _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_70
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_40:
	mov ebx, dx_ctx
	mov edx, [ebx+0x2c68]
	test edx, edx
	jz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_80
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_120:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, [ebx+0x2c68]
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_110:
	mov edx, [ebp+0x10]
	mov [edx+0x8], eax
	jmp _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_30
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_80:
	mov edx, [ebx+0x2c5c]
	test edx, edx
	jz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_90
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_130:
	mov eax, vidConfig
	mov edx, [eax+0x8]
	mov [ebp-0x20], edx
	mov eax, [eax+0xc]
	mov [ebp-0x1c], eax
	mov edx, [ebx+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	lea eax, [ebx+0x2c68]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [ebx+0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x74]
	test eax, eax
	js _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_100
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_140:
	mov eax, [ebx+0x2c68]
	jmp _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_110
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_90:
	mov edx, [gfxRenderTargets+0x1c]
	mov [ebx+0x2c68], edx
	test edx, edx
	jnz _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_120
	jmp _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_130
_Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_100:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], eax
	mov edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget_140


;R_AssignShadowCookieDepthStencilSurface(GfxRenderTargetSurface*)
_Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, eax
	mov edx, [gfxRenderTargets+0xbc]
	test edx, edx
	jz _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_10
	mov [eax+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_10:
	mov esi, dx_ctx
	mov edx, [esi+0x4]
	mov ecx, [edx]
	mov dword [esp+0x18], 0x53
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x28]
	test eax, eax
	js _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_20
	mov edx, [esi+0x4]
	mov ecx, [edx]
	mov dword [esp+0x14], 0x53
	mov dword [esp+0x10], 0x15
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x30]
	test eax, eax
	js _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_20
	mov esi, 0x53
_Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_40:
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	lea eax, [ebx+0x4]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x80
	mov [esp], edx
	call dword [ecx+0x74]
	test eax, eax
	jns _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_30
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_30
_Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_20:
	mov esi, 0x4b
	jmp _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface_40
	nop


;R_DescribeFormat(_D3DFORMAT)
_Z16R_DescribeFormat10_D3DFORMAT:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	lea eax, [edx-0x15]
	cmp eax, 0x3b
	ja _Z16R_DescribeFormat10_D3DFORMAT_10
	jmp dword [eax*4+_Z16R_DescribeFormat10_D3DFORMAT_jumptab_0]
_Z16R_DescribeFormat10_D3DFORMAT_10:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_format_0
	call _Z2vaPKcz
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_30:
	mov eax, _cstring_16bit_color
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_50:
	mov eax, _cstring_16bit_depth_with
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_80:
	mov eax, _cstring_24bit_depth_with
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_70:
	mov eax, _cstring_24bit_depth_with1
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_60:
	mov eax, _cstring_15bit_depth_with
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_20:
	mov eax, _cstring_24bit_color_with
	leave
	ret
_Z16R_DescribeFormat10_D3DFORMAT_40:
	mov eax, _cstring_15bit_color_with
	leave
	ret
	nop
	
	
_Z16R_DescribeFormat10_D3DFORMAT_jumptab_0:
	dd _Z16R_DescribeFormat10_D3DFORMAT_20
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_30
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_40
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_20
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_50
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_60
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_70
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_80
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_10
	dd _Z16R_DescribeFormat10_D3DFORMAT_50


;R_InitRenderTargets()
_Z19R_InitRenderTargetsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, vidConfig
	mov eax, [esi+0x8]
	mov [gfxRenderTargets+0x20], eax
	mov eax, [esi+0xc]
	mov [gfxRenderTargets+0x24], eax
	mov ebx, dx_ctx
	mov edx, [ebx+0x8]
	mov ecx, [edx]
	lea eax, [ebx+0x2c7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x38]
	test eax, eax
	js _Z19R_InitRenderTargetsv_10
_Z19R_InitRenderTargetsv_250:
	mov eax, [ebx+0x8]
	mov edx, [eax]
	mov dword [esp+0x10], gfxRenderTargets+0x18
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x48]
	mov eax, g_allocateMinimalResources
	cmp byte [eax], 0x0
	jz _Z19R_InitRenderTargetsv_20
	mov dword [gfxRenderTargets+0x1c], 0x0
_Z19R_InitRenderTargetsv_170:
	mov eax, [gfxRenderTargets+0x14]
	mov [gfxRenderTargets+0x28], eax
	mov edx, [gfxRenderTargets+0x18]
	mov [gfxRenderTargets+0x2c], edx
	mov eax, [gfxRenderTargets+0x1c]
	mov [gfxRenderTargets+0x30], eax
	mov eax, [gfxRenderTargets+0x20]
	mov [gfxRenderTargets+0x34], eax
	mov eax, [gfxRenderTargets+0x24]
	mov [gfxRenderTargets+0x38], eax
	test edx, edx
	jz _Z19R_InitRenderTargetsv_30
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_30:
	mov edx, [gfxRenderTargets+0x30]
	test edx, edx
	jz _Z19R_InitRenderTargetsv_40
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_40:
	mov dword [esp+0x8], _cstring_24bit_color_with
	mov dword [esp+0x4], _cstring_requested_frame_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov eax, [gfxRenderTargets+0x18]
	mov ecx, [eax]
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x30]
	mov edx, [ebp-0x38]
	lea eax, [edx-0x15]
	cmp eax, 0x3b
	ja _Z19R_InitRenderTargetsv_50
	jmp dword [eax*4+_Z19R_InitRenderTargetsv_jumptab_0]
_Z19R_InitRenderTargetsv_50:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_format_0
	call _Z2vaPKcz
_Z19R_InitRenderTargetsv_240:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_directx_returned
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov ebx, g_allocateMinimalResources
	cmp byte [ebx], 0x0
	jz _Z19R_InitRenderTargetsv_60
_Z19R_InitRenderTargetsv_160:
	mov edi, [ebp-0x38]
	cmp byte [ebx], 0x0
	jnz _Z19R_InitRenderTargetsv_70
	mov eax, r_floatz
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19R_InitRenderTargetsv_80
_Z19R_InitRenderTargetsv_150:
	mov eax, [gfxRenderTargets+0x50]
	mov [gfxRenderTargets+0x78], eax
	mov edx, [gfxRenderTargets+0x54]
	mov [gfxRenderTargets+0x7c], edx
	mov eax, [gfxRenderTargets+0x58]
	mov [gfxRenderTargets+0x80], eax
	mov eax, [gfxRenderTargets+0x5c]
	mov [gfxRenderTargets+0x84], eax
	mov eax, [gfxRenderTargets+0x60]
	mov [gfxRenderTargets+0x88], eax
	test edx, edx
	jz _Z19R_InitRenderTargetsv_90
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_90:
	mov edx, [gfxRenderTargets+0x80]
	test edx, edx
	jz _Z19R_InitRenderTargetsv_100
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_100:
	mov eax, [gfxRenderTargets+0x50]
	mov [gfxRenderTargets+0x3c], eax
	mov edx, [gfxRenderTargets+0x54]
	mov [gfxRenderTargets+0x40], edx
	mov eax, [gfxRenderTargets+0x58]
	mov [gfxRenderTargets+0x44], eax
	mov eax, [gfxRenderTargets+0x5c]
	mov [gfxRenderTargets+0x48], eax
	mov eax, [gfxRenderTargets+0x60]
	mov [gfxRenderTargets+0x4c], eax
	test edx, edx
	jz _Z19R_InitRenderTargetsv_110
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_110:
	mov edx, [gfxRenderTargets+0x44]
	test edx, edx
	jz _Z19R_InitRenderTargetsv_120
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
_Z19R_InitRenderTargetsv_120:
	mov dword [esp+0x8], gfxRenderTargets
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xa
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb edx, edx
	and edx, 0x200
	add edx, 0x200
	mov dword [esp], gfxRenderTargets+0x104
	mov ecx, 0x2
	mov eax, 0x2
	call _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb edx, edx
	and edx, 0x100
	add edx, 0x100
	mov dword [esp], gfxRenderTargets+0x118
	mov ecx, 0x4
	mov eax, 0x3
	call _Z27R_InitShadowmapRenderTargetittP15GfxRenderTarget
	mov dword [esp+0x8], gfxRenderTargets+0xb4
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x15
	mov ecx, 0x80
	mov edx, 0x80
	xor eax, eax
	call _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x3
	mov eax, [gfxRenderTargets+0xb4]
	mov [esp], eax
	call _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	mov eax, gfxRenderTargets+0xb8
	call _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface
	mov dword [esp+0x8], gfxRenderTargets+0xc8
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x15
	mov ecx, 0x80
	mov edx, 0x80
	mov eax, 0x1
	call _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x3
	mov eax, [gfxRenderTargets+0xc8]
	mov [esp], eax
	call _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	mov eax, gfxRenderTargets+0xcc
	call _Z39R_AssignShadowCookieDepthStencilSurfaceP22GfxRenderTargetSurface
	mov dword [esp+0x8], gfxRenderTargets+0xdc
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x5
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x8], gfxRenderTargets+0xf0
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x6
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x8], gfxRenderTargets+0x8c
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x7
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov dword [esp+0x8], gfxRenderTargets+0xa0
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x8
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
_Z19R_InitRenderTargetsv_70:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_InitRenderTargetsv_80:
	mov eax, vidConfig
	mov edx, [eax]
	mov ecx, [eax+0x4]
	mov eax, 0x1
	cmp edx, 0x1
	cmovle edx, eax
	cmp ecx, 0x1
	mov ebx, eax
	cmovg ebx, ecx
	movzx edx, dx
	cmp edx, 0x1
	ja _Z19R_InitRenderTargetsv_130
	xor eax, eax
	mov esi, eax
	movzx ecx, bx
	cmp ecx, 0x1
	ja _Z19R_InitRenderTargetsv_140
_Z19R_InitRenderTargetsv_200:
	xor eax, eax
_Z19R_InitRenderTargetsv_230:
	movzx ebx, ax
	movzx esi, si
	mov dword [esp+0x8], gfxRenderTargets+0x64
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x72
	mov ecx, ebx
	mov edx, esi
	mov eax, 0x4
	call _Z23R_InitRenderTargetImageitt10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], gfxRenderTargets+0x6c
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov eax, [eax+0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edx
	call dword [ecx+0x74]
	mov dword [esp+0x10], 0x72
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [gfxRenderTargets+0x64]
	mov [esp], eax
	call _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT
	jmp _Z19R_InitRenderTargetsv_150
_Z19R_InitRenderTargetsv_60:
	mov dword [esp+0x8], gfxRenderTargets+0x50
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x38]
	mov [esp], eax
	xor ecx, ecx
	mov edx, 0x2
	mov eax, 0x9
	call _Z33R_InitFullscreenRenderTargetImagei14FullscreenTypei10_D3DFORMAT17RenderTargetUsageP15GfxRenderTarget
	jmp _Z19R_InitRenderTargetsv_160
_Z19R_InitRenderTargetsv_20:
	mov edi, [esi+0x8]
	mov esi, [esi+0xc]
	mov edx, [ebx+0x8]
	mov ecx, [edx]
	mov dword [esp+0x20], 0x0
	mov dword [esp+0x1c], gfxRenderTargets+0x1c
	mov dword [esp+0x18], 0x0
	mov eax, [ebx+0x2c60]
	mov [esp+0x14], eax
	mov eax, [ebx+0x2c5c]
	mov [esp+0x10], eax
	mov eax, [ebx+0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov [esp], edx
	call dword [ecx+0x74]
	test eax, eax
	jns _Z19R_InitRenderTargetsv_170
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19R_InitRenderTargetsv_170
_Z19R_InitRenderTargetsv_130:
	mov ecx, 0x1
	mov eax, 0x20
_Z19R_InitRenderTargetsv_190:
	add ecx, ecx
	cmp edx, ecx
	jbe _Z19R_InitRenderTargetsv_180
	sub eax, 0x1
	jnz _Z19R_InitRenderTargetsv_190
_Z19R_InitRenderTargetsv_180:
	mov eax, ecx
	shr eax, 1
	mov esi, eax
	movzx ecx, bx
	cmp ecx, 0x1
	jbe _Z19R_InitRenderTargetsv_200
_Z19R_InitRenderTargetsv_140:
	mov edx, 0x1
	mov eax, 0x20
_Z19R_InitRenderTargetsv_220:
	add edx, edx
	cmp ecx, edx
	jbe _Z19R_InitRenderTargetsv_210
	sub eax, 0x1
	jnz _Z19R_InitRenderTargetsv_220
_Z19R_InitRenderTargetsv_210:
	mov eax, edx
	shr eax, 1
	jmp _Z19R_InitRenderTargetsv_230
_Z19R_InitRenderTargetsv_290:
	mov eax, _cstring_16bit_depth_with
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_320:
	mov eax, _cstring_24bit_depth_with
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_310:
	mov eax, _cstring_24bit_depth_with1
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_300:
	mov eax, _cstring_15bit_depth_with
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_260:
	mov eax, _cstring_24bit_color_with
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_280:
	mov eax, _cstring_15bit_color_with
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_270:
	mov eax, _cstring_16bit_color
	jmp _Z19R_InitRenderTargetsv_240
_Z19R_InitRenderTargetsv_10:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_get_an_i
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19R_InitRenderTargetsv_250
	
	
_Z19R_InitRenderTargetsv_jumptab_0:
	dd _Z19R_InitRenderTargetsv_260
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_270
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_280
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_260
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_290
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_300
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_310
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_320
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_50
	dd _Z19R_InitRenderTargetsv_290


;R_GetDepthStencilFormat(_D3DFORMAT)
_Z23R_GetDepthStencilFormat10_D3DFORMAT:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, dx_ctx
	mov edx, [ebx+0x4]
	mov ecx, [edx]
	mov dword [esp+0x18], 0x53
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x2
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x28]
	test eax, eax
	js _Z23R_GetDepthStencilFormat10_D3DFORMAT_10
	mov edx, [ebx+0x4]
	mov ecx, [edx]
	mov dword [esp+0x14], 0x53
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x16
	mov dword [esp+0x8], 0x1
	mov eax, [ebx+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x30]
	test eax, eax
	js _Z23R_GetDepthStencilFormat10_D3DFORMAT_10
	mov eax, 0x53
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z23R_GetDepthStencilFormat10_D3DFORMAT_10:
	mov eax, 0x4b
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;R_ShutdownRenderTargets()
_Z23R_ShutdownRenderTargetsv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, gfxRenderTargets+0x4
_Z23R_ShutdownRenderTargetsv_40:
	mov edx, [ebx]
	test edx, edx
	jz _Z23R_ShutdownRenderTargetsv_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
_Z23R_ShutdownRenderTargetsv_10:
	mov edx, [ebx+0x4]
	test edx, edx
	jz _Z23R_ShutdownRenderTargetsv_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
_Z23R_ShutdownRenderTargetsv_20:
	mov eax, [ebx-0x4]
	test eax, eax
	jz _Z23R_ShutdownRenderTargetsv_30
	mov [esp], eax
	call _Z13Image_ReleaseP8GfxImage
_Z23R_ShutdownRenderTargetsv_30:
	add ebx, 0x14
	cmp ebx, gfxRenderTargets+0x130
	jnz _Z23R_ShutdownRenderTargetsv_40
	mov dword [esp+0x8], 0x12c
	mov dword [esp+0x4], 0x0
	mov dword [esp], gfxRenderTargets
	call memset
	mov eax, dx_ctx
	mov dword [eax+0x2c68], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of r_rendertarget:
SECTION .data
s_renderTargetNames: dd _cstring_r_rendertarget_s, _cstring_r_rendertarget_f, _cstring_r_rendertarget_s1, _cstring_r_rendertarget_r, _cstring_r_rendertarget_r1, _cstring_r_rendertarget_f1, _cstring_r_rendertarget_d, _cstring_r_rendertarget_p, _cstring_r_rendertarget_p1, _cstring_r_rendertarget_s2, _cstring_r_rendertarget_s3, _cstring_r_rendertarget_p2, _cstring_r_rendertarget_p3, _cstring_r_rendertarget_s4, _cstring_r_rendertarget_s5, 0x0


;Initialized constant data of r_rendertarget:
SECTION .rdata


;Zero initialized global or static variables of r_rendertarget:
SECTION .bss
gfxRenderTargets: resb 0x160


;All cstrings:
SECTION .rdata
_cstring_couldnt_create_a:		db "Couldn",27h,"t create a %i x %i depth-stencil surface: %s",0ah,0
_cstring_couldnt_create_a1:		db "Couldn",27h,"t create a %i x %i render target surface: %s",0ah,0
_cstring_unknown_format_0:		db "unknown format 0x%08x",0
_cstring_16bit_color:		db "16-bit color",0
_cstring_16bit_depth_with:		db "16-bit depth without stencil",0
_cstring_24bit_depth_with:		db "24-bit depth without stencil",0
_cstring_24bit_depth_with1:		db "24-bit depth with 8-bit stencil",0
_cstring_15bit_depth_with:		db "15-bit depth with 1-bit stencil",0
_cstring_24bit_color_with:		db "24-bit color with 8-bit alpha",0
_cstring_15bit_color_with:		db "15-bit color with 1-bit alpha",0
_cstring_requested_frame_:		db "Requested frame buffer to be %s",0ah,0
_cstring_directx_returned:		db "DirectX returned a frame buffer that is %s",0ah,0
_cstring_couldnt_get_an_i:		db "Couldn",27h,"t get an interface to the swap chain: %s",0ah,0
_cstring_r_rendertarget_s:		db "R_RENDERTARGET_SAVED_SCREEN",0
_cstring_r_rendertarget_f:		db "R_RENDERTARGET_FRAME_BUFFER",0
_cstring_r_rendertarget_s1:		db "R_RENDERTARGET_SCENE",0
_cstring_r_rendertarget_r:		db "R_RENDERTARGET_RESOLVED_POST_SUN",0
_cstring_r_rendertarget_r1:		db "R_RENDERTARGET_RESOLVED_SCENE",0
_cstring_r_rendertarget_f1:		db "R_RENDERTARGET_FLOAT_Z",0
_cstring_r_rendertarget_d:		db "R_RENDERTARGET_DYNAMICSHADOWS",0
_cstring_r_rendertarget_p:		db "R_RENDERTARGET_PINGPONG_0",0
_cstring_r_rendertarget_p1:		db "R_RENDERTARGET_PINGPONG_1",0
_cstring_r_rendertarget_s2:		db "R_RENDERTARGET_SHADOWCOOKIE",0
_cstring_r_rendertarget_s3:		db "R_RENDERTARGET_SHADOWCOOKIE_BLUR",0
_cstring_r_rendertarget_p2:		db "R_RENDERTARGET_POST_EFFECT_0",0
_cstring_r_rendertarget_p3:		db "R_RENDERTARGET_POST_EFFECT_1",0
_cstring_r_rendertarget_s4:		db "R_RENDERTARGET_SHADOWMAP_SUN",0
_cstring_r_rendertarget_s5:		db "R_RENDERTARGET_SHADOWMAP_SPOT",0



;All constant floats and doubles:
SECTION .rdata

