;Imports of r_image_load_common:
	extern r_loadForRenderer
	extern _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT
	extern _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT
	extern _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT
	extern _Z23Image_PicmipForSemantichP6Picmip
	extern memcpy
	extern gfxMetrics
	extern useFastFile
	extern _Z22Image_TrackTotalMemoryP8GfxImageii

;Exports of r_image_load_common:
	global _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	global _Z15Image_GetPicmipPK8GfxImageP6Picmip
	global _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh
	global _Z17Image_CubemapFacej
	global _Z18Image_CountMipmapsjjjj
	global _Z18Image_SetupAndLoadP8GfxImageiiii10_D3DFORMATPKc
	global _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	global _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj
	global _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT
	global _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj


SECTION .text


;Image_Setup(GfxImage*, int, int, int, int, _D3DFORMAT, char const*)
_Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	mov edi, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov eax, [ebp+0x1c]
	mov [ebp-0x24], eax
	movzx eax, word [ebp-0x1c]
	mov [ebx+0x18], ax
	movzx eax, word [ebp-0x20]
	mov [ebx+0x1a], ax
	mov [ebx+0x1c], di
	mov edx, esi
	shr edx, 1
	and edx, 0x1
	mov eax, r_loadForRenderer
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_10
	test esi, 0x4
	jnz _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_20
	test esi, 0x8
	jz _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_30
	mov eax, [ebp-0x24]
	mov [esp+0x18], eax
	mov [esp+0x14], esi
	mov [esp+0x10], edx
	movzx eax, di
	mov [esp+0xc], eax
	movzx eax, word [ebp-0x20]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Image_Create3DTexture_PCP8GfxImagetttii10_D3DFORMAT
	mov [ebp+0x1c], edi
	mov eax, [ebp-0x20]
	mov [ebp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x24]
	mov [ebp+0x10], eax
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
_Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_20:
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z26Image_CreateCubeTexture_PCP8GfxImageti10_D3DFORMAT
	mov [ebp+0x1c], edi
	mov eax, [ebp-0x20]
	mov [ebp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x24]
	mov [ebp+0x10], eax
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
_Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc_30:
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	movzx eax, word [ebp-0x20]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Image_Create2DTexture_PCP8GfxImagettii10_D3DFORMAT
	mov [ebp+0x1c], edi
	mov eax, [ebp-0x20]
	mov [ebp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x24]
	mov [ebp+0x10], eax
	mov [ebp+0xc], esi
	mov [ebp+0x8], ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii
	nop


;Image_GetPicmip(GfxImage const*, Picmip*)
_Z15Image_GetPicmipPK8GfxImageP6Picmip:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp byte [eax+0xa], 0x0
	jz _Z15Image_GetPicmipPK8GfxImageP6Picmip_10
	mov word [edx], 0x0
	pop ebp
	ret
_Z15Image_GetPicmipPK8GfxImageP6Picmip_10:
	mov [ebp+0xc], edx
	movzx eax, byte [eax+0xb]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z23Image_PicmipForSemantichP6Picmip


;Image_UploadData(GfxImage const*, _D3DFORMAT, _D3DCUBEMAP_FACES, unsigned int, unsigned char const*)
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x8]
	mov edx, [eax]
	cmp edx, 0x5
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_10
	cmp edx, 0x4
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_20
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_130:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x18]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	cmp eax, 0x1
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_30
	mov ebx, eax
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_410:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x1a]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	mov dword [ebp-0x48], 0x1
	cmp eax, 0x1
	cmovle eax, [ebp-0x48]
	mov [ebp-0x48], eax
	cmp edx, 0x3
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_40
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov ecx, [eax]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	lea edx, [ebp-0x24]
	mov [esp+0xc], edx
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x4c]
	mov edi, [ebp-0x20]
	mov ecx, [ebp-0x24]
	mov [ebp-0x50], ecx
	mov esi, ebx
	cmp dword [ebp+0xc], 0x32
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_50
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_60
	cmp dword [ebp+0xc], 0x31545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_70
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_80
	cmp dword [ebp+0xc], 0x33
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_90
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov edx, [eax]
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x50]
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_140:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_90:
	lea esi, [ebx+ebx]
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_50:
	mov dword [ebp-0x4c], 0x1
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_480:
	cmp esi, [ebp-0x50]
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_100
	mov edx, [ebp-0x48]
	test edx, edx
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
	xor ebx, ebx
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_120:
	mov [esp+0x8], esi
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	add edi, [ebp-0x50]
	add [ebp+0x18], esi
	add ebx, [ebp-0x4c]
	cmp [ebp-0x48], ebx
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_120
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_10:
	mov esi, [ebp+0x14]
	test esi, esi
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_130
	mov eax, gfxMetrics
	cmp byte [eax+0x26], 0x0
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_130
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_140
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_40:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov ecx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x4c]
	mov edi, [ebp-0x20]
	mov ecx, [ebp-0x24]
	mov [ebp-0x58], ecx
	mov esi, ebx
	cmp dword [ebp+0xc], 0x32
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_150
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_160
	cmp dword [ebp+0xc], 0x15
	jl _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
	cmp dword [ebp+0xc], 0x16
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_180
	cmp dword [ebp+0xc], 0x1c
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_150:
	mov dword [ebp-0x54], 0x1
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_460:
	cmp esi, [ebp-0x58]
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_190
	mov eax, [ebp-0x48]
	test eax, eax
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_200
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov edx, [eax]
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x50]
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_20:
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x18]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	mov edx, 0x1
	cmp eax, 0x1
	cmovle eax, edx
	mov [ebp-0x44], eax
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x1a]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	cmp eax, 0x1
	cmovle eax, edx
	mov [ebp-0x40], eax
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x1c]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	cmp eax, 0x1
	cmovg edx, eax
	mov [ebp-0x3c], edx
	cmp dword [ebp+0xc], 0x4b
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_210
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_220
	cmp dword [ebp+0xc], 0x1c
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_230
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_240
	cmp dword [ebp+0xc], 0x32
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_230
	cmp dword [ebp+0xc], 0x33
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_250
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_300:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	add eax, eax
	mov [ebp-0x6c], eax
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_60:
	cmp dword [ebp+0xc], 0x15
	jl _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
	cmp dword [ebp+0xc], 0x16
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_270
	shl esi, 0x2
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_50
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_220:
	cmp dword [ebp+0xc], 0x31545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_280
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_290
	cmp dword [ebp+0xc], 0x50
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_300
	cmp dword [ebp+0xc], 0x72
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_250
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_210:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	shl eax, 0x2
	mov [ebp-0x6c], eax
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov ecx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov edx, [ebp+0x14]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x4c]
	mov ecx, [ebp-0x1c]
	mov [ebp-0x68], ecx
	mov ebx, [ebp-0x3c]
	test ebx, ebx
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
	mov eax, [ebp-0x44]
	add eax, 0x3
	sar eax, 0x2
	mov edx, eax
	shl edx, 0x4
	mov [ebp-0x38], edx
	shl eax, 0x3
	mov [ebp-0x34], eax
	mov ecx, [ebp-0x44]
	add ecx, ecx
	mov [ebp-0x30], ecx
	mov eax, [ebp-0x44]
	shl eax, 0x2
	mov [ebp-0x2c], eax
	mov dword [ebp-0x70], 0x0
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_310
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_350:
	cmp dword [ebp+0xc], 0x15
	jl _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
	cmp dword [ebp+0xc], 0x16
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_330
	cmp dword [ebp+0xc], 0x1c
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_340
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320:
	mov ecx, [ebp-0x6c]
	add [ebp+0x18], ecx
	mov eax, [ebp-0x20]
	add [ebp-0x68], eax
	add dword [ebp-0x70], 0x1
	mov edx, [ebp-0x70]
	cmp [ebp-0x3c], edx
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_310:
	mov edx, [ebp-0x24]
	mov [ebp-0x64], edx
	cmp dword [ebp+0xc], 0x32
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_340
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_350
	cmp dword [ebp+0xc], 0x31545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_360
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_370
	cmp dword [ebp+0xc], 0x33
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
	mov ecx, [ebp-0x30]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x60], 0x1
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_380
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_340:
	mov eax, [ebp-0x44]
	mov [ebp-0x5c], eax
	mov dword [ebp-0x60], 0x1
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_380:
	mov edx, [ebp-0x64]
	cmp [ebp-0x5c], edx
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_390
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
	mov esi, [ebp+0x18]
	mov ebx, [ebp-0x68]
	xor edi, edi
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_400:
	mov edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	add ebx, [ebp-0x64]
	add esi, [ebp-0x5c]
	add edi, [ebp-0x60]
	cmp [ebp-0x40], edi
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_400
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_30:
	mov ebx, 0x1
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_410
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_370:
	cmp dword [ebp+0xc], 0x33545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_420
	cmp dword [ebp+0xc], 0x35545844
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_420:
	mov ecx, [ebp-0x38]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x60], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_380
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_360:
	mov eax, [ebp-0x34]
	mov [ebp-0x5c], eax
	mov dword [ebp-0x60], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_380
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_390:
	mov eax, [ebp-0x40]
	sub eax, 0x1
	cdq
	idiv dword [ebp-0x60]
	add eax, 0x1
	imul eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x18]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x68]
	mov [esp], eax
	call memcpy
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_320
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_330:
	mov edx, [ebp-0x2c]
	mov [ebp-0x5c], edx
	mov dword [ebp-0x60], 0x1
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_380
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_160:
	cmp dword [ebp+0xc], 0x31545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_430
	jle _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_440
	cmp dword [ebp+0xc], 0x33545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_450
	cmp dword [ebp+0xc], 0x35545844
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_450:
	lea esi, [ebx+0x3]
	sar esi, 0x2
	shl esi, 0x4
	mov dword [ebp-0x54], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_460
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_80:
	cmp dword [ebp+0xc], 0x33545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_470
	cmp dword [ebp+0xc], 0x35545844
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_470:
	lea esi, [ebx+0x3]
	sar esi, 0x2
	shl esi, 0x4
	mov dword [ebp-0x4c], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_480
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_70:
	lea eax, [ebx+0x3]
	sar eax, 0x2
	lea esi, [eax*8]
	mov dword [ebp-0x4c], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_480
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_270:
	cmp dword [ebp+0xc], 0x1c
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_50
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_440:
	cmp dword [ebp+0xc], 0x33
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
	lea esi, [ebx+ebx]
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_150
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_240:
	cmp dword [ebp+0xc], 0x15
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_210
	cmp dword [ebp+0xc], 0x16
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_490
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_250:
	mov dword [ebp-0x6c], 0x0
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_290:
	cmp dword [ebp+0xc], 0x33545844
	jz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_500
	cmp dword [ebp+0xc], 0x35545844
	jnz _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_250
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_500:
	mov edx, [ebp-0x44]
	add edx, 0x3
	sar edx, 0x2
	mov eax, [ebp-0x40]
	add eax, 0x3
	sar eax, 0x2
	imul eax, edx
	shl eax, 0x4
	mov [ebp-0x6c], eax
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_100:
	mov eax, [ebp-0x48]
	sub eax, 0x1
	cdq
	idiv dword [ebp-0x4c]
	add eax, 0x1
	imul esi, eax
	mov [esp+0x8], esi
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_110
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_200:
	xor ebx, ebx
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_510:
	mov [esp+0x8], esi
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	add edi, [ebp-0x58]
	add [ebp+0x18], esi
	add ebx, [ebp-0x54]
	cmp [ebp-0x48], ebx
	jg _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_510
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_230:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	mov [ebp-0x6c], eax
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_430:
	lea eax, [ebx+0x3]
	sar eax, 0x2
	lea esi, [eax*8]
	mov dword [ebp-0x54], 0x4
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_460
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_280:
	mov edx, [ebp-0x44]
	add edx, 0x3
	sar edx, 0x2
	mov eax, [ebp-0x40]
	add eax, 0x3
	sar eax, 0x2
	imul edx, eax
	shl edx, 0x3
	mov [ebp-0x6c], edx
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_190:
	mov eax, [ebp-0x48]
	sub eax, 0x1
	cdq
	idiv dword [ebp-0x54]
	add eax, 0x1
	imul esi, eax
	mov [esp+0x8], esi
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_170
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_180:
	lea esi, [ebx*4]
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_150
_Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_490:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	lea eax, [eax+eax*2]
	mov [ebp-0x6c], eax
	jmp _Z16Image_UploadDataPK8GfxImage10_D3DFORMAT17_D3DCUBEMAP_FACESjPKh_260
	add [eax], al


;Image_CubemapFace(unsigned int)
_Z17Image_CubemapFacej:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Image_CountMipmaps(unsigned int, unsigned int, unsigned int, unsigned int)
_Z18Image_CountMipmapsjjjj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	test byte [ebp+0x8], 0x2
	jnz _Z18Image_CountMipmapsjjjj_10
	mov eax, 0x1
	mov edx, 0x1
	jmp _Z18Image_CountMipmapsjjjj_20
_Z18Image_CountMipmapsjjjj_30:
	add edx, edx
	add eax, 0x1
_Z18Image_CountMipmapsjjjj_20:
	cmp edx, ecx
	jb _Z18Image_CountMipmapsjjjj_30
	cmp edx, ebx
	jb _Z18Image_CountMipmapsjjjj_30
	cmp edx, esi
	jb _Z18Image_CountMipmapsjjjj_30
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Image_CountMipmapsjjjj_10:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret


;Image_SetupAndLoad(GfxImage*, int, int, int, int, _D3DFORMAT, char const*)
_Z18Image_SetupAndLoadP8GfxImageiiii10_D3DFORMATPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z11Image_SetupP8GfxImageiiii10_D3DFORMATPKc
	nop


;Image_TrackTexture(GfxImage*, int, _D3DFORMAT, int, int, int)
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	and eax, 0x1
	mov edi, [ebp+0x8]
	mov esi, edi
	mov dword [ebp-0x1c], 0x0
	test eax, eax
	jnz _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_10
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_30:
	movzx eax, byte [edi+0x8]
	mov ebx, [ebp+0x14]
	mov ecx, eax
	sar ebx, cl
	mov dword [ebp-0x2c], 0x1
	cmp ebx, 0x1
	cmovle ebx, [ebp-0x2c]
	mov edx, [ebp+0x18]
	sar edx, cl
	cmp edx, 0x1
	cmovle edx, [ebp-0x2c]
	mov [esp+0xc], edx
	mov edx, [ebp+0x1c]
	sar edx, cl
	mov eax, edx
	cmp edx, 0x1
	cmovle eax, [ebp-0x2c]
	mov [esp+0x10], eax
	mov [esp+0x8], ebx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_20
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_60:
	mov [esi+0x10], ebx
	add dword [ebp-0x1c], 0x1
	add esi, 0x4
	add edi, 0x1
	cmp dword [ebp-0x1c], 0x2
	jnz _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_30
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_10:
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov edx, [ebp+0x18]
	mov [esp+0xc], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_40
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_70:
	mov [esi+0x10], ebx
	add dword [ebp-0x1c], 0x1
	add esi, 0x4
	cmp dword [ebp-0x1c], 0x2
	jz _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_50
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_10
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_20:
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22Image_TrackTotalMemoryP8GfxImageii
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_60
_Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_40:
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Image_TrackTotalMemoryP8GfxImageii
	jmp _Z18Image_TrackTextureP8GfxImagei10_D3DFORMATiii_70


;Image_GetCardMemoryAmount(unsigned int, _D3DFORMAT, unsigned int, unsigned int, unsigned int)
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	cmp dword [ebp+0xc], 0x4b
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_10
	jle _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_20
	cmp dword [ebp+0xc], 0x72
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_10
	jle _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_30
	cmp dword [ebp+0xc], 0x33545844
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_40
	cmp dword [ebp+0xc], 0x35545844
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_40
	cmp dword [ebp+0xc], 0x31545844
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_50
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_100:
	xor ecx, ecx
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_240:
	test byte [ebp+0x8], 0x2
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_60
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_120:
	test byte [ebp+0x8], 0x4
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_70
	lea eax, [ecx+ecx*2]
	lea ecx, [eax+eax]
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_70:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_20:
	cmp dword [ebp+0xc], 0x1c
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_80
	jle _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_90
	cmp dword [ebp+0xc], 0x32
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_80
	cmp dword [ebp+0xc], 0x33
	jnz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_100
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_230:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea ecx, [eax+eax]
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_110
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_90:
	mov eax, [ebp+0xc]
	sub eax, 0x15
	cmp eax, 0x1
	ja _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_100
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_10:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea ecx, [eax*4]
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_110:
	test byte [ebp+0x8], 0x2
	jnz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_120
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_60:
	lea eax, [esi+edi]
	lea eax, [ebx+eax]
	cmp eax, 0x3
	jbe _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_120
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_180:
	mov eax, esi
	shr eax, 1
	mov edx, 0x1
	cmp eax, 0x1
	mov esi, edx
	cmovg esi, eax
	mov eax, edi
	shr eax, 1
	cmp eax, 0x1
	mov edi, edx
	cmovg edi, eax
	mov eax, ebx
	shr eax, 1
	cmp eax, 0x1
	mov ebx, edx
	cmovg ebx, eax
	cmp dword [ebp+0xc], 0x4b
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_130
	jg _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_140
	cmp dword [ebp+0xc], 0x1c
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_150
	jg _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_160
	mov eax, [ebp+0xc]
	sub eax, 0x15
	cmp eax, 0x1
	ja _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_170
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_130:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea edx, [eax*4]
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210:
	add ecx, edx
	lea eax, [esi+edi]
	add eax, ebx
	cmp eax, 0x3
	ja _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_180
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_120
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_140:
	cmp dword [ebp+0xc], 0x72
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_130
	jg _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_190
	cmp dword [ebp+0xc], 0x50
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_200
	cmp dword [ebp+0xc], 0x70
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_130
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_170:
	xor edx, edx
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_150:
	mov edx, esi
	imul edx, edi
	imul edx, ebx
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_160:
	cmp dword [ebp+0xc], 0x32
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_150
	cmp dword [ebp+0xc], 0x33
	jnz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_170
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_200:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea edx, [eax+eax]
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_190:
	cmp dword [ebp+0xc], 0x33545844
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_220
	cmp dword [ebp+0xc], 0x35545844
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_220
	cmp dword [ebp+0xc], 0x31545844
	jnz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_170
	lea eax, [esi+0x3]
	shr eax, 0x2
	lea edx, [edi+0x3]
	shr edx, 0x2
	imul eax, edx
	imul eax, ebx
	lea edx, [eax*8]
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_30:
	cmp dword [ebp+0xc], 0x50
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_230
	cmp dword [ebp+0xc], 0x70
	jz _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_10
	xor ecx, ecx
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_240
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_220:
	lea edx, [esi+0x3]
	shr edx, 0x2
	lea eax, [edi+0x3]
	shr eax, 0x2
	imul edx, eax
	imul edx, ebx
	shl edx, 0x4
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_210
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_80:
	mov eax, esi
	imul eax, edi
	mov ecx, ebx
	imul ecx, eax
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_110
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_40:
	lea edx, [esi+0x3]
	shr edx, 0x2
	lea eax, [edi+0x3]
	shr eax, 0x2
	imul edx, eax
	mov ecx, ebx
	imul ecx, edx
	shl ecx, 0x4
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_110
_Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_50:
	lea eax, [esi+0x3]
	shr eax, 0x2
	lea edx, [edi+0x3]
	shr edx, 0x2
	imul eax, edx
	imul eax, ebx
	lea ecx, [eax*8]
	jmp _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj_110
	nop


;Image_TrackFullscreenTexture(GfxImage*, int, int, int, _D3DFORMAT)
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x14]
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	xor esi, esi
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_40:
	mov ebx, eax
	mov ecx, edi
	shr ebx, cl
	mov eax, 0x1
	cmp ebx, 0x1
	cmovle ebx, eax
	shr edx, cl
	cmp edx, 0x1
	cmovg eax, edx
	mov dword [esp+0x10], 0x1
	movzx eax, ax
	mov [esp+0xc], eax
	movzx ecx, bx
	mov [esp+0x8], ecx
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z25Image_GetCardMemoryAmountj10_D3DFORMATjjj
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_10
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_50:
	mov eax, [ebp+0x8]
	mov [eax+esi*4+0x10], ebx
	add esi, 0x1
	cmp esi, 0x1
	jle _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_20:
	jnz _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_30
	mov edx, 0x1e0
	mov eax, 0x280
	jmp _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_40
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_10:
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22Image_TrackTotalMemoryP8GfxImageii
	jmp _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_50
_Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_30:
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	jmp _Z28Image_TrackFullscreenTextureP8GfxImageiii10_D3DFORMAT_40


;Image_GetCardMemoryAmountForMipLevel(_D3DFORMAT, unsigned int, unsigned int, unsigned int)
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	cmp eax, 0x4b
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_10
	jle _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_20
	cmp eax, 0x72
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_10
	jle _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_30
	cmp eax, 0x33545844
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_40
	cmp eax, 0x35545844
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_40
	cmp eax, 0x31545844
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_50
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_80:
	xor edx, edx
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_100:
	mov eax, edx
	pop ebp
	ret
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_20:
	cmp eax, 0x1c
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_60
	jle _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_70
	cmp eax, 0x32
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_60
	cmp eax, 0x33
	jnz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_80
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_90:
	imul edx, [ebp+0x10]
	imul ecx, edx
	lea edx, [ecx+ecx]
	mov eax, edx
	pop ebp
	ret
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_70:
	sub eax, 0x15
	cmp eax, 0x1
	ja _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_80
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_10:
	imul edx, [ebp+0x10]
	imul ecx, edx
	lea edx, [ecx*4]
	mov eax, edx
	pop ebp
	ret
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_30:
	cmp eax, 0x50
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_90
	cmp eax, 0x70
	jz _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_10
	xor edx, edx
	jmp _Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_100
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_60:
	imul edx, [ebp+0x10]
	imul edx, ecx
	mov eax, edx
	pop ebp
	ret
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_40:
	add edx, 0x3
	shr edx, 0x2
	mov eax, [ebp+0x10]
	add eax, 0x3
	shr eax, 0x2
	imul edx, eax
	imul edx, ecx
	shl edx, 0x4
	mov eax, edx
	pop ebp
	ret
_Z36Image_GetCardMemoryAmountForMipLevel10_D3DFORMATjjj_50:
	add edx, 0x3
	shr edx, 0x2
	mov eax, [ebp+0x10]
	add eax, 0x3
	shr eax, 0x2
	imul edx, eax
	imul ecx, edx
	lea edx, [ecx*8]
	mov eax, edx
	pop ebp
	ret
	nop


;Initialized global or static variables of r_image_load_common:
SECTION .data


;Initialized constant data of r_image_load_common:
SECTION .rdata


;Zero initialized global or static variables of r_image_load_common:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

