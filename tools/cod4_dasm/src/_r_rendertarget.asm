;Imports of r_rendertarget:
	extern Image_AllocProg
	extern Image_SetupRenderTarget
	extern Image_GetSurface
	extern gfxMetrics
	extern Image_TrackTexture
	extern dx_ctx
	extern R_ErrorDescription
	extern Com_Error
	extern vidConfig
	extern Image_TrackFullscreenTexture
	extern va
	extern g_allocateMinimalResources
	extern Com_Printf
	extern r_floatz
	extern _ZN10MacDisplay10Is1900CardEv
	extern Image_Release
	extern memset

;Exports of r_rendertarget:
	global s_renderTargetNames
	global R_InitRenderTargetImage
	global R_InitShadowmapRenderTarget
	global R_InitFullscreenRenderTargetImage
	global R_AssignShadowCookieDepthStencilSurface
	global R_DescribeFormat
	global R_InitRenderTargets
	global R_GetDepthStencilFormat
	global R_ShutdownRenderTargets
	global gfxRenderTargets


SECTION .text


;R_InitRenderTargetImage(int, unsigned short, unsigned short, _D3DFORMAT, RenderTargetUsage, GfxRenderTarget*)
R_InitRenderTargetImage:
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
	call Image_AllocProg
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
	call Image_SetupRenderTarget
	mov eax, [ebp+0xc]
	test eax, eax
	jnz R_InitRenderTargetImage_10
	mov eax, [esi]
	mov [esp], eax
	call Image_GetSurface
	mov [esi+0x8], eax
	mov [esi+0xc], ebx
	mov [esi+0x10], edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitRenderTargetImage_10:
	mov eax, [esi]
	mov [esp], eax
	call Image_GetSurface
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
R_InitShadowmapRenderTarget:
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
	call R_InitRenderTargetImage
	mov dword [esp+0x14], 0x1
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x3
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call Image_TrackTexture
	cmp byte [ebp-0x21], 0x0
	jnz R_InitShadowmapRenderTarget_10
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
	js R_InitShadowmapRenderTarget_20
R_InitShadowmapRenderTarget_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitShadowmapRenderTarget_10:
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
	jns R_InitShadowmapRenderTarget_30
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x10], eax
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call Com_Error
	jmp R_InitShadowmapRenderTarget_30
R_InitShadowmapRenderTarget_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x10], eax
	mov eax, [ebp-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_create_a1
	mov dword [esp], 0x1
	call Com_Error
	jmp R_InitShadowmapRenderTarget_30
	nop


;R_InitFullscreenRenderTargetImage(int, FullscreenType, int, _D3DFORMAT, RenderTargetUsage, GfxRenderTarget*)
R_InitFullscreenRenderTargetImage:
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
	jnz R_InitFullscreenRenderTargetImage_10
	mov eax, vidConfig
	mov edx, [eax+0x8]
	mov [ebp-0x24], edx
R_InitFullscreenRenderTargetImage_50:
	mov edi, [eax+0xc]
	mov eax, [ebp-0x24]
	mov ecx, esi
	sar eax, cl
	cmp eax, 0x1
	jle R_InitFullscreenRenderTargetImage_20
R_InitFullscreenRenderTargetImage_60:
	mov edx, eax
R_InitFullscreenRenderTargetImage_70:
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
	call R_InitRenderTargetImage
	cmp ebx, 0x2
	jz R_InitFullscreenRenderTargetImage_30
	sub ebx, 0x1
	jz R_InitFullscreenRenderTargetImage_40
R_InitFullscreenRenderTargetImage_30:
	mov ecx, [ebp+0x8]
	mov [esp+0x10], ecx
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [esp], eax
	call Image_TrackFullscreenTexture
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitFullscreenRenderTargetImage_10:
	mov eax, vidConfig
	mov ecx, [eax]
	mov [ebp-0x24], ecx
	cmp edx, 0x2
	jnz R_InitFullscreenRenderTargetImage_50
	mov edi, [eax+0x4]
	mov eax, [ebp-0x24]
	mov ecx, esi
	sar eax, cl
	cmp eax, 0x1
	jg R_InitFullscreenRenderTargetImage_60
R_InitFullscreenRenderTargetImage_20:
	mov edx, 0x1
	jmp R_InitFullscreenRenderTargetImage_70
R_InitFullscreenRenderTargetImage_40:
	mov ebx, dx_ctx
	mov edx, [ebx+0x2c68]
	test edx, edx
	jz R_InitFullscreenRenderTargetImage_80
R_InitFullscreenRenderTargetImage_120:
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
	mov eax, [ebx+0x2c68]
R_InitFullscreenRenderTargetImage_110:
	mov edx, [ebp+0x10]
	mov [edx+0x8], eax
	jmp R_InitFullscreenRenderTargetImage_30
R_InitFullscreenRenderTargetImage_80:
	mov edx, [ebx+0x2c5c]
	test edx, edx
	jz R_InitFullscreenRenderTargetImage_90
R_InitFullscreenRenderTargetImage_130:
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
	js R_InitFullscreenRenderTargetImage_100
R_InitFullscreenRenderTargetImage_140:
	mov eax, [ebx+0x2c68]
	jmp R_InitFullscreenRenderTargetImage_110
R_InitFullscreenRenderTargetImage_90:
	mov edx, [gfxRenderTargets+0x1c]
	mov [ebx+0x2c68], edx
	test edx, edx
	jnz R_InitFullscreenRenderTargetImage_120
	jmp R_InitFullscreenRenderTargetImage_130
R_InitFullscreenRenderTargetImage_100:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x10], eax
	mov edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x20]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call Com_Error
	jmp R_InitFullscreenRenderTargetImage_140


;R_AssignShadowCookieDepthStencilSurface(GfxRenderTargetSurface*)
R_AssignShadowCookieDepthStencilSurface:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, eax
	mov edx, [gfxRenderTargets+0xbc]
	test edx, edx
	jz R_AssignShadowCookieDepthStencilSurface_10
	mov [eax+0x4], edx
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_AssignShadowCookieDepthStencilSurface_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_AssignShadowCookieDepthStencilSurface_10:
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
	js R_AssignShadowCookieDepthStencilSurface_20
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
	js R_AssignShadowCookieDepthStencilSurface_20
	mov esi, 0x53
R_AssignShadowCookieDepthStencilSurface_40:
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
	jns R_AssignShadowCookieDepthStencilSurface_30
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call Com_Error
	jmp R_AssignShadowCookieDepthStencilSurface_30
R_AssignShadowCookieDepthStencilSurface_20:
	mov esi, 0x4b
	jmp R_AssignShadowCookieDepthStencilSurface_40
	nop


;R_DescribeFormat(_D3DFORMAT)
R_DescribeFormat:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	lea eax, [edx-0x15]
	cmp eax, 0x3b
	ja R_DescribeFormat_10
	jmp dword [eax*4+R_DescribeFormat_jumptab_0]
R_DescribeFormat_10:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_format_0
	call va
	leave
	ret
R_DescribeFormat_30:
	mov eax, _cstring_16bit_color
	leave
	ret
R_DescribeFormat_50:
	mov eax, _cstring_16bit_depth_with
	leave
	ret
R_DescribeFormat_80:
	mov eax, _cstring_24bit_depth_with
	leave
	ret
R_DescribeFormat_70:
	mov eax, _cstring_24bit_depth_with1
	leave
	ret
R_DescribeFormat_60:
	mov eax, _cstring_15bit_depth_with
	leave
	ret
R_DescribeFormat_20:
	mov eax, _cstring_24bit_color_with
	leave
	ret
R_DescribeFormat_40:
	mov eax, _cstring_15bit_color_with
	leave
	ret
	nop
	
	
R_DescribeFormat_jumptab_0:
	dd R_DescribeFormat_20
	dd R_DescribeFormat_10
	dd R_DescribeFormat_30
	dd R_DescribeFormat_10
	dd R_DescribeFormat_40
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_20
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_50
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_60
	dd R_DescribeFormat_10
	dd R_DescribeFormat_70
	dd R_DescribeFormat_10
	dd R_DescribeFormat_80
	dd R_DescribeFormat_10
	dd R_DescribeFormat_10
	dd R_DescribeFormat_50


;R_InitRenderTargets()
R_InitRenderTargets:
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
	js R_InitRenderTargets_10
R_InitRenderTargets_250:
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
	jz R_InitRenderTargets_20
	mov dword [gfxRenderTargets+0x1c], 0x0
R_InitRenderTargets_170:
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
	jz R_InitRenderTargets_30
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_30:
	mov edx, [gfxRenderTargets+0x30]
	test edx, edx
	jz R_InitRenderTargets_40
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_40:
	mov dword [esp+0x8], _cstring_24bit_color_with
	mov dword [esp+0x4], _cstring_requested_frame_
	mov dword [esp], 0x8
	call Com_Printf
	mov eax, [gfxRenderTargets+0x18]
	mov ecx, [eax]
	lea edx, [ebp-0x38]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x30]
	mov edx, [ebp-0x38]
	lea eax, [edx-0x15]
	cmp eax, 0x3b
	ja R_InitRenderTargets_50
	jmp dword [eax*4+R_InitRenderTargets_jumptab_0]
R_InitRenderTargets_50:
	mov [esp+0x4], edx
	mov dword [esp], _cstring_unknown_format_0
	call va
R_InitRenderTargets_240:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_directx_returned
	mov dword [esp], 0x8
	call Com_Printf
	mov ebx, g_allocateMinimalResources
	cmp byte [ebx], 0x0
	jz R_InitRenderTargets_60
R_InitRenderTargets_160:
	mov edi, [ebp-0x38]
	cmp byte [ebx], 0x0
	jnz R_InitRenderTargets_70
	mov eax, r_floatz
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_InitRenderTargets_80
R_InitRenderTargets_150:
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
	jz R_InitRenderTargets_90
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_90:
	mov edx, [gfxRenderTargets+0x80]
	test edx, edx
	jz R_InitRenderTargets_100
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_100:
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
	jz R_InitRenderTargets_110
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_110:
	mov edx, [gfxRenderTargets+0x44]
	test edx, edx
	jz R_InitRenderTargets_120
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x4]
R_InitRenderTargets_120:
	mov dword [esp+0x8], gfxRenderTargets
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xa
	call R_InitFullscreenRenderTargetImage
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb edx, edx
	and edx, 0x200
	add edx, 0x200
	mov dword [esp], gfxRenderTargets+0x104
	mov ecx, 0x2
	mov eax, 0x2
	call R_InitShadowmapRenderTarget
	call _ZN10MacDisplay10Is1900CardEv
	cmp al, 0x1
	sbb edx, edx
	and edx, 0x100
	add edx, 0x100
	mov dword [esp], gfxRenderTargets+0x118
	mov ecx, 0x4
	mov eax, 0x3
	call R_InitShadowmapRenderTarget
	mov dword [esp+0x8], gfxRenderTargets+0xb4
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x15
	mov ecx, 0x80
	mov edx, 0x80
	xor eax, eax
	call R_InitRenderTargetImage
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x3
	mov eax, [gfxRenderTargets+0xb4]
	mov [esp], eax
	call Image_TrackTexture
	mov eax, gfxRenderTargets+0xb8
	call R_AssignShadowCookieDepthStencilSurface
	mov dword [esp+0x8], gfxRenderTargets+0xc8
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x15
	mov ecx, 0x80
	mov edx, 0x80
	mov eax, 0x1
	call R_InitRenderTargetImage
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x80
	mov dword [esp+0xc], 0x80
	mov dword [esp+0x8], 0x15
	mov dword [esp+0x4], 0x3
	mov eax, [gfxRenderTargets+0xc8]
	mov [esp], eax
	call Image_TrackTexture
	mov eax, gfxRenderTargets+0xcc
	call R_AssignShadowCookieDepthStencilSurface
	mov dword [esp+0x8], gfxRenderTargets+0xdc
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x5
	call R_InitFullscreenRenderTargetImage
	mov dword [esp+0x8], gfxRenderTargets+0xf0
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x6
	call R_InitFullscreenRenderTargetImage
	mov dword [esp+0x8], gfxRenderTargets+0x8c
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x7
	call R_InitFullscreenRenderTargetImage
	mov dword [esp+0x8], gfxRenderTargets+0xa0
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	mov ecx, 0x2
	mov edx, 0x2
	mov eax, 0x8
	call R_InitFullscreenRenderTargetImage
R_InitRenderTargets_70:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitRenderTargets_80:
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
	ja R_InitRenderTargets_130
	xor eax, eax
	mov esi, eax
	movzx ecx, bx
	cmp ecx, 0x1
	ja R_InitRenderTargets_140
R_InitRenderTargets_200:
	xor eax, eax
R_InitRenderTargets_230:
	movzx ebx, ax
	movzx esi, si
	mov dword [esp+0x8], gfxRenderTargets+0x64
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x72
	mov ecx, ebx
	mov edx, esi
	mov eax, 0x4
	call R_InitRenderTargetImage
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
	call Image_TrackFullscreenTexture
	jmp R_InitRenderTargets_150
R_InitRenderTargets_60:
	mov dword [esp+0x8], gfxRenderTargets+0x50
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x38]
	mov [esp], eax
	xor ecx, ecx
	mov edx, 0x2
	mov eax, 0x9
	call R_InitFullscreenRenderTargetImage
	jmp R_InitRenderTargets_160
R_InitRenderTargets_20:
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
	jns R_InitRenderTargets_170
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_couldnt_create_a
	mov dword [esp], 0x1
	call Com_Error
	jmp R_InitRenderTargets_170
R_InitRenderTargets_130:
	mov ecx, 0x1
	mov eax, 0x20
R_InitRenderTargets_190:
	add ecx, ecx
	cmp edx, ecx
	jbe R_InitRenderTargets_180
	sub eax, 0x1
	jnz R_InitRenderTargets_190
R_InitRenderTargets_180:
	mov eax, ecx
	shr eax, 1
	mov esi, eax
	movzx ecx, bx
	cmp ecx, 0x1
	jbe R_InitRenderTargets_200
R_InitRenderTargets_140:
	mov edx, 0x1
	mov eax, 0x20
R_InitRenderTargets_220:
	add edx, edx
	cmp ecx, edx
	jbe R_InitRenderTargets_210
	sub eax, 0x1
	jnz R_InitRenderTargets_220
R_InitRenderTargets_210:
	mov eax, edx
	shr eax, 1
	jmp R_InitRenderTargets_230
R_InitRenderTargets_290:
	mov eax, _cstring_16bit_depth_with
	jmp R_InitRenderTargets_240
R_InitRenderTargets_320:
	mov eax, _cstring_24bit_depth_with
	jmp R_InitRenderTargets_240
R_InitRenderTargets_310:
	mov eax, _cstring_24bit_depth_with1
	jmp R_InitRenderTargets_240
R_InitRenderTargets_300:
	mov eax, _cstring_15bit_depth_with
	jmp R_InitRenderTargets_240
R_InitRenderTargets_260:
	mov eax, _cstring_24bit_color_with
	jmp R_InitRenderTargets_240
R_InitRenderTargets_280:
	mov eax, _cstring_15bit_color_with
	jmp R_InitRenderTargets_240
R_InitRenderTargets_270:
	mov eax, _cstring_16bit_color
	jmp R_InitRenderTargets_240
R_InitRenderTargets_10:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_get_an_i
	mov dword [esp], 0x1
	call Com_Error
	jmp R_InitRenderTargets_250
	
	
R_InitRenderTargets_jumptab_0:
	dd R_InitRenderTargets_260
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_270
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_280
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_260
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_290
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_300
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_310
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_320
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_50
	dd R_InitRenderTargets_290


;R_GetDepthStencilFormat(_D3DFORMAT)
R_GetDepthStencilFormat:
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
	js R_GetDepthStencilFormat_10
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
	js R_GetDepthStencilFormat_10
	mov eax, 0x53
	add esp, 0x24
	pop ebx
	pop ebp
	ret
R_GetDepthStencilFormat_10:
	mov eax, 0x4b
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;R_ShutdownRenderTargets()
R_ShutdownRenderTargets:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, gfxRenderTargets+0x4
R_ShutdownRenderTargets_40:
	mov edx, [ebx]
	test edx, edx
	jz R_ShutdownRenderTargets_10
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
R_ShutdownRenderTargets_10:
	mov edx, [ebx+0x4]
	test edx, edx
	jz R_ShutdownRenderTargets_20
	mov eax, [edx]
	mov [esp], edx
	call dword [eax+0x8]
R_ShutdownRenderTargets_20:
	mov eax, [ebx-0x4]
	test eax, eax
	jz R_ShutdownRenderTargets_30
	mov [esp], eax
	call Image_Release
R_ShutdownRenderTargets_30:
	add ebx, 0x14
	cmp ebx, gfxRenderTargets+0x130
	jnz R_ShutdownRenderTargets_40
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

