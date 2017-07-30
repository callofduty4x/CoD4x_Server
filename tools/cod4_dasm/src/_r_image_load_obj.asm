;Imports of r_image_load_obj:
	extern Image_Setup
	extern Image_UploadData
	extern Image_CubemapFace
	extern RB_PixelCost_BuildColorCodeMap
	extern Image_CountMipmaps
	extern Com_Error
	extern Z_VirtualAllocInternal
	extern Wavelet_DecompressLevel
	extern Com_sprintf
	extern FS_Read
	extern Com_PrintError
	extern FS_FCloseFile
	extern g_fileBuf
	extern Image_GetPicmip
	extern Image_Alloc
	extern FS_FOpenFileReadDatabase
	extern strcmp
	extern Image_SetupAndLoad
	extern FS_FOpenFileRead
	extern R_GenerateOutdoorImage

;Exports of r_image_load_obj:
	global constructorTable
	global Image_LoadWhite
	global Image_LoadBlack
	global Image_LoadBlack3D
	global Image_LoadBlackCube
	global Image_LoadGray
	global Image_LoadIdentityNormalMap
	global Image_LoadPixelCostColorCode
	global s_imageLoadBuf
	global s_imageLoadBytesUsed
	global Image_SetupFromFile
	global Image_LoadDxtc
	global Image_LoadWavelet
	global Image_LoadBitmap
	global Image_LoadFromFileWithReader
	global Image_Load
	global Image_Generate2D
	global R_CreateWaterMap
	global Image_GenerateCube
	global Image_LoadFromFile
	global Image_BuildWaterMap
	global Image_ReloadFromFile
	global Image_ValidateHeader


SECTION .text


;Image_LoadWhite(GfxImage*)
Image_LoadWhite:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0xc]
	mov dword [ebp-0xc], 0xffffffff
	mov dword [esp+0x18], _cstring_2d
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Image_Setup
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call Image_UploadData
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Image_LoadBlack(GfxImage*)
Image_LoadBlack:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0xc]
	mov dword [ebp-0xc], 0xff000000
	mov dword [esp+0x18], _cstring_2d
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Image_Setup
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call Image_UploadData
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Image_LoadBlack3D(GfxImage*)
Image_LoadBlack3D:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0xc]
	mov dword [ebp-0xc], 0xff000000
	mov dword [esp+0x18], _cstring_3d
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0xb
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Image_Setup
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call Image_UploadData
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Image_LoadBlackCube(GfxImage*)
Image_LoadBlackCube:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov edi, [ebp+0x8]
	lea eax, [ebp-0x1c]
	mov dword [ebp-0x1c], 0xff000000
	mov [ebp-0x184], eax
	mov [ebp-0x148], eax
	mov [ebp-0x10c], eax
	mov [ebp-0xd0], eax
	mov [ebp-0x94], eax
	mov [ebp-0x58], eax
	mov dword [esp+0x18], _cstring_cube
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x7
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call Image_Setup
	xor ebx, ebx
	lea esi, [ebp-0x184]
Image_LoadBlackCube_10:
	mov [esp], ebx
	call Image_CubemapFace
	mov edx, [esi]
	mov [esp+0x10], edx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x15
	mov [esp], edi
	call Image_UploadData
	add ebx, 0x1
	add esi, 0x3c
	cmp ebx, 0x6
	jnz Image_LoadBlackCube_10
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_LoadGray(GfxImage*)
Image_LoadGray:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0xc]
	mov dword [ebp-0xc], 0x80808080
	mov dword [esp+0x18], _cstring_2d
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Image_Setup
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call Image_UploadData
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Image_LoadIdentityNormalMap(GfxImage*)
Image_LoadIdentityNormalMap:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0xc]
	mov dword [ebp-0xc], 0x808080ff
	mov dword [esp+0x18], _cstring_2d
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Image_Setup
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x15
	mov [esp], ebx
	call Image_UploadData
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Image_LoadPixelCostColorCode(GfxImage*)
Image_LoadPixelCostColorCode:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call RB_PixelCost_BuildColorCodeMap
	mov dword [esp+0x18], _cstring_2d
	mov dword [esp+0x14], 0x16
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x100
	mov [esp], esi
	call Image_Setup
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x16
	mov [esp], esi
	call Image_UploadData
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret


;Image_SetupFromFile(GfxImage*, GfxImageFileHeader const*, _D3DFORMAT)
Image_SetupFromFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [esp+0x14], ecx
	movzx edi, byte [eax+0x8]
	movsx ebx, word [edx+0x6]
	mov ecx, edi
	shr ebx, cl
	mov dword [ebp-0x1c], 0x1
	cmp ebx, 0x1
	cmovle ebx, [ebp-0x1c]
	mov [esp+0x4], ebx
	movsx esi, word [edx+0x8]
	shr esi, cl
	cmp esi, 0x1
	cmovle esi, [ebp-0x1c]
	movsx ebx, word [edx+0xa]
	shr ebx, cl
	cmp ebx, 0x1
	cmovle ebx, [ebp-0x1c]
	mov [ebp-0x1c], ebx
	mov dword [esp+0x18], _cstring_file
	movzx edx, byte [edx+0x5]
	mov [esp+0x10], edx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov [esp], eax
	call Image_Setup
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_LoadDxtc(GfxImage*, GfxImageFileHeader const*, unsigned char const*, _D3DFORMAT, int)
Image_LoadDxtc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov [ebp-0x30], ecx
	mov ecx, [ebp+0x8]
	call Image_SetupFromFile
	mov eax, [ebp-0x28]
	cmp dword [eax], 0x5
	setz al
	movzx eax, al
	lea eax, [eax+eax*4+0x1]
	mov [ebp-0x20], eax
	mov edx, [ebp-0x2c]
	movsx eax, word [edx+0xa]
	mov [esp+0xc], eax
	movsx eax, word [edx+0x8]
	mov [esp+0x8], eax
	movsx eax, word [edx+0x6]
	mov [esp+0x4], eax
	movzx eax, byte [edx+0x5]
	mov [esp], eax
	call Image_CountMipmaps
	mov ecx, [ebp-0x28]
	movzx ecx, byte [ecx+0x8]
	mov [ebp-0x24], ecx
	lea edi, [eax-0x1]
	cmp ecx, edi
	jg Image_LoadDxtc_10
	mov ebx, edi
	sub ebx, ecx
	mov [ebp-0x1c], ebx
	jmp Image_LoadDxtc_20
Image_LoadDxtc_30:
	sub edi, 0x1
	sub dword [ebp-0x1c], 0x1
	cmp [ebp-0x24], edi
	jg Image_LoadDxtc_10
Image_LoadDxtc_20:
	mov edx, [ebp-0x2c]
	movsx eax, word [edx+0x6]
	mov ecx, edi
	shr eax, cl
	mov edx, 0x1
	cmp eax, 0x1
	cmovle eax, edx
	mov [ebp-0x3c], eax
	mov ebx, [ebp-0x2c]
	movsx eax, word [ebx+0x8]
	shr eax, cl
	cmp eax, 0x1
	cmovle eax, edx
	mov edx, [ebp-0x20]
	test edx, edx
	jz Image_LoadDxtc_30
	lea esi, [eax+0x3]
	sar esi, 0x2
	mov eax, [ebp-0x3c]
	add eax, 0x3
	sar eax, 0x2
	imul esi, eax
	imul esi, [ebp+0xc]
	xor ebx, ebx
Image_LoadDxtc_40:
	mov [esp], ebx
	call Image_CubemapFace
	mov edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x1c]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov edx, [ebp-0x28]
	mov [esp], edx
	call Image_UploadData
	add [ebp-0x30], esi
	add ebx, 0x1
	cmp [ebp-0x20], ebx
	jnz Image_LoadDxtc_40
	sub edi, 0x1
	sub dword [ebp-0x1c], 0x1
	cmp [ebp-0x24], edi
	jle Image_LoadDxtc_20
Image_LoadDxtc_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_LoadWavelet(GfxImage*, GfxImageFileHeader const*, unsigned char const*, _D3DFORMAT, int)
Image_LoadWavelet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x78], eax
	mov ebx, edx
	mov edi, ecx
	mov esi, [ebp+0xc]
	mov ecx, [ebp+0x8]
	call Image_SetupFromFile
	mov word [ebp-0x68], 0x0
	mov word [ebp-0x66], 0x0
	movsx ecx, word [ebx+0x6]
	mov [ebp-0x60], ecx
	movsx edx, word [ebx+0x8]
	mov [ebp-0x5c], edx
	movsx eax, word [ebx+0xa]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	movzx eax, byte [ebx+0x5]
	mov [esp], eax
	call Image_CountMipmaps
	sub eax, 0x1
	mov [ebp-0x50], eax
	mov [ebp-0x58], esi
	mov byte [ebp-0x4c], 0x0
	mov eax, 0x4
	cmp esi, 0x3
	cmovnz eax, esi
	mov [ebp-0x54], eax
	mov eax, [ebp-0x78]
	cmp dword [eax], 0x5
	setz al
	movzx eax, al
	lea eax, [eax+eax*4+0x1]
	mov [ebp-0x6c], eax
	movsx eax, word [ebx+0x6]
	mov [ebp-0x74], eax
	movsx eax, word [ebx+0x8]
	imul eax, [ebp-0x74]
	imul eax, [ebp-0x54]
	mov [ebp-0x74], eax
	mov edx, [ebp-0x6c]
	test edx, edx
	jz Image_LoadWavelet_10
	add eax, 0x3
	mov [ebp-0x80], eax
	mov esi, eax
	and esi, 0xfffffffc
	xor ebx, ebx
	mov ecx, [s_imageLoadBytesUsed]
	jmp Image_LoadWavelet_20
Image_LoadWavelet_50:
	mov eax, [s_imageLoadBuf]
	test eax, eax
	jz Image_LoadWavelet_30
Image_LoadWavelet_70:
	mov ecx, [s_imageLoadBytesUsed]
	mov edx, ecx
	add edx, [s_imageLoadBuf]
	add ecx, esi
	mov [s_imageLoadBytesUsed], ecx
	lea eax, [ebx*4]
	mov [ebp+eax-0x30], edx
	mov dword [ebp+eax-0x48], 0x0
	add ebx, 0x1
	cmp [ebp-0x6c], ebx
	jz Image_LoadWavelet_40
Image_LoadWavelet_20:
	lea eax, [esi+ecx]
	cmp eax, 0x600000
	jbe Image_LoadWavelet_50
	test eax, eax
	js Image_LoadWavelet_60
	cvtsi2ss xmm0, eax
Image_LoadWavelet_130:
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_needed_to_alloca
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [s_imageLoadBuf]
	test eax, eax
	jnz Image_LoadWavelet_70
Image_LoadWavelet_30:
	mov dword [esp], 0x600000
	call Z_VirtualAllocInternal
	mov [s_imageLoadBuf], eax
	jmp Image_LoadWavelet_70
Image_LoadWavelet_10:
	add eax, 0x3
	mov [ebp-0x80], eax
Image_LoadWavelet_40:
	mov eax, [ebp-0x78]
	movzx eax, byte [eax+0x8]
	mov [ebp-0x70], eax
	mov [ebp-0x64], edi
	mov ecx, [ebp-0x50]
	mov [ebp-0x7c], ecx
	cmp eax, ecx
	jg Image_LoadWavelet_80
	jmp Image_LoadWavelet_90
Image_LoadWavelet_100:
	mov ecx, [ebp-0x7c]
	sub ecx, 0x1
	mov [ebp-0x7c], ecx
	mov [ebp-0x50], ecx
	cmp [ebp-0x70], ecx
	jg Image_LoadWavelet_80
Image_LoadWavelet_90:
	mov eax, [ebp-0x60]
	shr eax, cl
	mov edx, 0x1
	cmp eax, 0x1
	mov edi, edx
	cmovg edi, eax
	mov eax, [ebp-0x5c]
	shr eax, cl
	cmp eax, 0x1
	cmovg edx, eax
	imul edi, edx
	imul edi, [ebp-0x54]
	mov ecx, [ebp-0x6c]
	test ecx, ecx
	jz Image_LoadWavelet_100
	xor esi, esi
Image_LoadWavelet_110:
	lea eax, [esi*4]
	lea edx, [ebp-0x48]
	add edx, eax
	mov ecx, [edx]
	mov ebx, [ebp-0x74]
	add ebx, [ebp+eax-0x30]
	sub ebx, edi
	mov [edx], ebx
	lea eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], ecx
	call Wavelet_DecompressLevel
	mov [esp], esi
	call Image_CubemapFace
	mov [esp+0x10], ebx
	mov edx, [ebp-0x50]
	sub edx, [ebp-0x70]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	mov [esp], eax
	call Image_UploadData
	add esi, 0x1
	cmp [ebp-0x6c], esi
	jnz Image_LoadWavelet_110
	mov eax, [ebp-0x50]
	mov [ebp-0x7c], eax
	mov ecx, eax
	sub ecx, 0x1
	mov [ebp-0x7c], ecx
	mov [ebp-0x50], ecx
	cmp [ebp-0x70], ecx
	jle Image_LoadWavelet_90
Image_LoadWavelet_80:
	mov ecx, [ebp-0x80]
	and ecx, 0xfffffffc
	mov eax, [s_imageLoadBytesUsed]
	xor edx, edx
Image_LoadWavelet_120:
	sub eax, ecx
	add edx, 0x1
	cmp [ebp-0x6c], edx
	jnz Image_LoadWavelet_120
	mov [s_imageLoadBytesUsed], eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadWavelet_60:
	mov edx, eax
	shr edx, 1
	and eax, 0x1
	or edx, eax
	cvtsi2ss xmm0, edx
	addss xmm0, xmm0
	jmp Image_LoadWavelet_130
	nop


;Image_LoadBitmap(GfxImage*, GfxImageFileHeader const*, unsigned char*, _D3DFORMAT, int)
Image_LoadBitmap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x3c], eax
	mov [ebp-0x40], edx
	mov [ebp-0x44], ecx
	mov ecx, [ebp+0x8]
	call Image_SetupFromFile
	mov eax, [ebp-0x3c]
	cmp dword [eax], 0x5
	setz al
	movzx eax, al
	lea eax, [eax+eax*4+0x1]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x3c]
	movzx eax, word [edx+0x18]
	movzx edx, word [edx+0x1a]
	imul eax, edx
	shl eax, 0x2
	mov [ebp-0x20], eax
	cmp dword [ebp+0x8], 0x16
	jz Image_LoadBitmap_10
	mov dword [ebp-0x24], 0x0
Image_LoadBitmap_120:
	mov ecx, [ebp-0x40]
	movsx eax, word [ecx+0xa]
	mov [esp+0xc], eax
	movsx eax, word [ecx+0x8]
	mov [esp+0x8], eax
	movsx eax, word [ecx+0x6]
	mov [esp+0x4], eax
	movzx eax, byte [ecx+0x5]
	mov [esp], eax
	call Image_CountMipmaps
	mov ebx, [ebp-0x3c]
	movzx ebx, byte [ebx+0x8]
	mov [ebp-0x30], ebx
	sub eax, 0x1
	mov [ebp-0x34], eax
	cmp ebx, eax
	jg Image_LoadBitmap_20
	sub eax, ebx
	mov [ebp-0x1c], eax
	jmp Image_LoadBitmap_30
Image_LoadBitmap_40:
	sub dword [ebp-0x34], 0x1
	sub dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x34]
	cmp [ebp-0x30], ecx
	jg Image_LoadBitmap_20
Image_LoadBitmap_30:
	mov edx, [ebp-0x40]
	movsx eax, word [edx+0x6]
	movzx ecx, byte [ebp-0x34]
	shr eax, cl
	mov edx, 0x1
	cmp eax, 0x1
	mov esi, edx
	cmovg esi, eax
	mov ebx, [ebp-0x40]
	movsx eax, word [ebx+0x8]
	shr eax, cl
	cmp eax, 0x1
	cmovle eax, edx
	mov ebx, [ebp-0x28]
	test ebx, ebx
	jz Image_LoadBitmap_40
	imul esi, eax
	mov ebx, [ebp+0xc]
	imul ebx, esi
	mov [ebp-0x38], ebx
	xor edi, edi
	mov [esp], edi
	call Image_CubemapFace
	mov [ebp-0x2c], eax
	cmp dword [ebp+0x8], 0x16
	jnz Image_LoadBitmap_50
Image_LoadBitmap_70:
	mov ecx, [ebp-0x44]
	mov edx, [ebp-0x24]
	xor ebx, ebx
Image_LoadBitmap_60:
	movzx eax, byte [ecx]
	mov [edx], al
	movzx eax, byte [ecx+0x1]
	mov [edx+0x1], al
	movzx eax, byte [ecx+0x2]
	mov [edx+0x2], al
	mov byte [edx+0x3], 0xff
	add edx, 0x4
	add ecx, 0x3
	add ebx, 0x1
	cmp esi, ebx
	jnz Image_LoadBitmap_60
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	mov edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x2c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x16
	mov ebx, [ebp-0x3c]
	mov [esp], ebx
	call Image_UploadData
Image_LoadBitmap_80:
	mov edx, [ebp-0x38]
	add [ebp-0x44], edx
	add edi, 0x1
	cmp [ebp-0x28], edi
	jz Image_LoadBitmap_40
	mov [esp], edi
	call Image_CubemapFace
	mov [ebp-0x2c], eax
	cmp dword [ebp+0x8], 0x16
	jz Image_LoadBitmap_70
Image_LoadBitmap_50:
	mov ecx, eax
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov edx, [ebp-0x1c]
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call Image_UploadData
	jmp Image_LoadBitmap_80
Image_LoadBitmap_20:
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz Image_LoadBitmap_90
	mov ebx, [ebp-0x20]
	sub [s_imageLoadBytesUsed], ebx
Image_LoadBitmap_90:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadBitmap_10:
	mov ebx, eax
	mov edx, eax
	add edx, [s_imageLoadBytesUsed]
	cmp edx, 0x600000
	ja Image_LoadBitmap_100
Image_LoadBitmap_140:
	mov esi, [s_imageLoadBuf]
	test esi, esi
	jz Image_LoadBitmap_110
	mov edx, [s_imageLoadBuf]
Image_LoadBitmap_150:
	mov eax, [s_imageLoadBytesUsed]
	add edx, eax
	mov [ebp-0x24], edx
	lea eax, [ebx+eax]
	mov [s_imageLoadBytesUsed], eax
	jmp Image_LoadBitmap_120
Image_LoadBitmap_100:
	test edx, edx
	js Image_LoadBitmap_130
	cvtsi2ss xmm0, edx
Image_LoadBitmap_160:
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_needed_to_alloca
	mov dword [esp], 0x2
	call Com_Error
	jmp Image_LoadBitmap_140
Image_LoadBitmap_110:
	mov dword [esp], 0x600000
	call Z_VirtualAllocInternal
	mov [s_imageLoadBuf], eax
	mov edx, eax
	jmp Image_LoadBitmap_150
Image_LoadBitmap_130:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp Image_LoadBitmap_160
	nop


;Image_LoadFromFileWithReader(GfxImage*, int (*)(char const*, int*))
Image_LoadFromFileWithReader:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, eax
	mov ebx, edx
	mov dword [esp+0x14], _cstring_iwi
	mov eax, [eax+0x20]
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_images
	mov dword [esp+0x8], _cstring_sss
	mov dword [esp+0x4], 0x40
	lea esi, [ebp-0x78]
	mov [esp], esi
	call Com_sprintf
	test eax, eax
	js Image_LoadFromFileWithReader_10
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call ebx
	test eax, eax
	js Image_LoadFromFileWithReader_20
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1c
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call FS_Read
	cmp eax, 0x1c
	jz Image_LoadFromFileWithReader_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_image_s_is
	mov dword [esp], 0x8
	call Com_PrintError
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	xor eax, eax
Image_LoadFromFileWithReader_160:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadFromFileWithReader_30:
	mov eax, [ebp-0x38]
	and eax, 0xffffff
	cmp eax, g_fileBuf+0x1d749
	jz Image_LoadFromFileWithReader_40
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_image_s_is1
	mov dword [esp], 0x8
	call Com_PrintError
Image_LoadFromFileWithReader_60:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadFromFileWithReader_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x8
	call Com_PrintError
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadFromFileWithReader_40:
	movzx eax, byte [ebp-0x35]
	cmp al, 0x6
	jz Image_LoadFromFileWithReader_50
	mov dword [esp+0x10], 0x6
	movzx eax, al
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_image_s_is2
	mov dword [esp], 0x8
	call Com_PrintError
	jmp Image_LoadFromFileWithReader_60
Image_LoadFromFileWithReader_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_image_s_is3
	mov dword [esp], 0x8
	call Com_PrintError
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_LoadFromFileWithReader_50:
	test byte [ebp-0x33], 0x3
	jnz Image_LoadFromFileWithReader_70
	movsx eax, word [ebp-0x30]
	movsx edx, word [ebp-0x32]
	cmp eax, edx
	cmovge eax, edx
	cmp eax, 0x1f
	jg Image_LoadFromFileWithReader_80
Image_LoadFromFileWithReader_70:
	mov byte [edi+0xa], 0x1
Image_LoadFromFileWithReader_80:
	lea eax, [edi+0x8]
	mov [esp+0x4], eax
	mov [esp], edi
	call Image_GetPicmip
	movzx eax, byte [edi+0x8]
	mov eax, [ebp+eax*4-0x2c]
	lea edx, [eax-0x1c]
	mov [ebp-0x84], edx
	sub eax, 0x19
	and eax, 0xfffffffc
	mov [ebp-0x7c], eax
	mov edx, eax
	add edx, [s_imageLoadBytesUsed]
	cmp edx, 0x600000
	ja Image_LoadFromFileWithReader_90
Image_LoadFromFileWithReader_130:
	mov eax, [s_imageLoadBuf]
	test eax, eax
	jnz Image_LoadFromFileWithReader_100
	mov dword [esp], 0x600000
	call Z_VirtualAllocInternal
	mov [s_imageLoadBuf], eax
Image_LoadFromFileWithReader_100:
	mov eax, [s_imageLoadBytesUsed]
	mov edx, [s_imageLoadBuf]
	add edx, eax
	mov [ebp-0x80], edx
	add eax, [ebp-0x7c]
	mov [s_imageLoadBytesUsed], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov [esp], edx
	call FS_Read
	cmp [ebp-0x84], eax
	jz Image_LoadFromFileWithReader_110
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_image_s_is
	mov dword [esp], 0x8
	call Com_PrintError
	mov edx, [ebp-0x7c]
	sub [s_imageLoadBytesUsed], edx
	jmp Image_LoadFromFileWithReader_60
Image_LoadFromFileWithReader_90:
	test edx, edx
	js Image_LoadFromFileWithReader_120
	cvtsi2ss xmm0, edx
Image_LoadFromFileWithReader_150:
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_needed_to_alloca
	mov dword [esp], 0x2
	call Com_Error
	jmp Image_LoadFromFileWithReader_130
Image_LoadFromFileWithReader_110:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [edi+0x4], 0x0
	movzx eax, byte [ebp-0x34]
	cmp eax, 0xd
	ja Image_LoadFromFileWithReader_140
	jmp dword [eax*4+Image_LoadFromFileWithReader_jumptab_0]
Image_LoadFromFileWithReader_120:
	mov eax, edx
	shr eax, 1
	and edx, 0x1
	or eax, edx
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp Image_LoadFromFileWithReader_150
Image_LoadFromFileWithReader_170:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x15
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadBitmap
Image_LoadFromFileWithReader_140:
	mov eax, [ebp-0x7c]
	sub [s_imageLoadBytesUsed], eax
	mov eax, 0x1
	jmp Image_LoadFromFileWithReader_160
Image_LoadFromFileWithReader_180:
	mov dword [esp+0x4], 0x3
	mov dword [esp], 0x16
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadBitmap
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_190:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x33
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadBitmap
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_200:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x32
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadBitmap
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_210:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x1c
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadBitmap
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_220:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x15
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadWavelet
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_230:
	mov dword [esp+0x4], 0x3
	mov dword [esp], 0x16
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadWavelet
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_240:
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x33
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadWavelet
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_250:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x32
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadWavelet
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_260:
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x1c
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadWavelet
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_270:
	mov dword [esp+0x4], 0x8
	mov dword [esp], 0x31545844
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadDxtc
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_290:
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x35545844
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadDxtc
	jmp Image_LoadFromFileWithReader_140
Image_LoadFromFileWithReader_280:
	mov dword [esp+0x4], 0x10
	mov dword [esp], 0x33545844
	mov ecx, [ebp-0x80]
	mov edx, ebx
	mov eax, edi
	call Image_LoadDxtc
	jmp Image_LoadFromFileWithReader_140
	
	
Image_LoadFromFileWithReader_jumptab_0:
	dd Image_LoadFromFileWithReader_140
	dd Image_LoadFromFileWithReader_170
	dd Image_LoadFromFileWithReader_180
	dd Image_LoadFromFileWithReader_190
	dd Image_LoadFromFileWithReader_200
	dd Image_LoadFromFileWithReader_210
	dd Image_LoadFromFileWithReader_220
	dd Image_LoadFromFileWithReader_230
	dd Image_LoadFromFileWithReader_240
	dd Image_LoadFromFileWithReader_250
	dd Image_LoadFromFileWithReader_260
	dd Image_LoadFromFileWithReader_270
	dd Image_LoadFromFileWithReader_280
	dd Image_LoadFromFileWithReader_290


;Image_Load(char const*, unsigned char, int)
Image_Load:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	movzx eax, byte [ebp+0xc]
	cmp byte [edi], 0x24
	jz Image_Load_10
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call Image_Alloc
	mov ebx, eax
	mov edx, FS_FOpenFileReadDatabase
	call Image_LoadFromFileWithReader
	test al, al
	mov eax, 0x0
	cmovz ebx, eax
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Load_10:
	mov [ebp-0x19], al
	xor esi, esi
	mov ebx, constructorTable
Image_Load_30:
	mov eax, [ebx]
	mov [esp+0x4], edi
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Image_Load_20
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0x8
	jnz Image_Load_30
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_unknown_bu
	mov dword [esp], 0x8
	call Com_PrintError
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Load_20:
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	movzx eax, byte [ebp-0x19]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call Image_Alloc
	mov ebx, eax
	mov [esp], eax
	call dword [esi*8+constructorTable+0x4]
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_Generate2D(GfxImage*, unsigned char*, int, int, _D3DFORMAT)
Image_Generate2D:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x18]
	mov dword [esp+0x18], _cstring_2d
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x3
	mov dword [esp+0xc], 0x1
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call Image_Setup
	mov [ebp+0x18], edi
	mov dword [ebp+0x14], 0x0
	mov dword [ebp+0x10], 0x0
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Image_UploadData
	nop
	add [eax], al


;R_CreateWaterMap(char*, unsigned short, unsigned short)
R_CreateWaterMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov edi, [ebp+0x10]
	mov dword [esp+0xc], 0x9
	mov dword [esp+0x8], 0xb
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Image_Alloc
	mov ebx, eax
	movzx eax, word [ebp-0x1c]
	mov [ebx+0x18], ax
	mov [ebx+0x1a], di
	mov dword [esp+0x18], _cstring_water
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10001
	mov dword [esp+0xc], 0x1
	movzx esi, di
	mov [esp+0x8], esi
	movzx eax, word [ebx+0x18]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Image_SetupAndLoad
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_GenerateCube(GfxImage*, unsigned char const* (*) [15], int, _D3DFORMAT, unsigned int)
Image_GenerateCube:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x10]
	xor eax, eax
	cmp dword [ebp+0x18], 0x1
	setz al
	lea eax, [eax+eax+0x5]
	mov dword [esp+0x18], _cstring_cube
	mov ecx, [ebp+0x14]
	mov [esp+0x14], ecx
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edx
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Image_Setup
	mov ecx, [ebp+0xc]
	mov [ebp-0x1c], ecx
	mov dword [ebp-0x20], 0x0
	jmp Image_GenerateCube_10
Image_GenerateCube_30:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x3c
	cmp dword [ebp-0x20], 0x6
	jz Image_GenerateCube_20
Image_GenerateCube_10:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Image_CubemapFace
	mov edi, eax
	mov eax, [ebp+0x18]
	test eax, eax
	jz Image_GenerateCube_30
	mov ebx, [ebp-0x1c]
	xor esi, esi
Image_GenerateCube_40:
	mov eax, [ebx]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Image_UploadData
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp+0x18], esi
	jnz Image_GenerateCube_40
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x3c
	cmp dword [ebp-0x20], 0x6
	jnz Image_GenerateCube_10
Image_GenerateCube_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Image_LoadFromFile(GfxImage*)
Image_LoadFromFile:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov edx, FS_FOpenFileReadDatabase
	call Image_LoadFromFileWithReader
	movzx eax, al
	leave
	ret
	nop


;Image_BuildWaterMap(GfxImage*)
Image_BuildWaterMap:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov dword [esp+0x18], _cstring_water
	mov dword [esp+0x14], 0x32
	mov dword [esp+0x10], 0x10001
	mov dword [esp+0xc], 0x1
	movzx edx, word [eax+0x1a]
	mov [esp+0x8], edx
	movzx edx, word [eax+0x18]
	mov [esp+0x4], edx
	mov [esp], eax
	call Image_SetupAndLoad
	leave
	ret
	nop


;Image_ReloadFromFile(GfxImage*)
Image_ReloadFromFile:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	mov edx, FS_FOpenFileRead
	call Image_LoadFromFileWithReader
	movzx eax, al
	leave
	ret
	nop


;Image_ValidateHeader(GfxImageFileHeader*, char const*)
Image_ValidateHeader:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	mov eax, [edx]
	and eax, 0xffffff
	cmp eax, g_fileBuf+0x1d749
	jz Image_ValidateHeader_10
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_image_s_is1
	mov dword [esp], 0x8
	call Com_PrintError
	xor eax, eax
	leave
	ret
Image_ValidateHeader_10:
	movzx eax, byte [edx+0x3]
	cmp al, 0x6
	jz Image_ValidateHeader_20
	mov dword [esp+0x10], 0x6
	movzx eax, al
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_image_s_is2
	mov dword [esp], 0x8
	call Com_PrintError
	xor eax, eax
	leave
	ret
Image_ValidateHeader_20:
	mov eax, 0x1
	leave
	ret
	nop
	add [eax], al


;Initialized global or static variables of r_image_load_obj:
SECTION .data


;Initialized constant data of r_image_load_obj:
SECTION .rdata
constructorTable: dd _cstring_white, Image_LoadWhite, _cstring_black, Image_LoadBlack, _cstring_black_3d, Image_LoadBlack3D, _cstring_black_cube, Image_LoadBlackCube, _cstring_gray, Image_LoadGray, _cstring_identitynormalma, Image_LoadIdentityNormalMap, _cstring_outdoor, R_GenerateOutdoorImage, _cstring_pixelcostcolorco, Image_LoadPixelCostColorCode


;Zero initialized global or static variables of r_image_load_obj:
SECTION .bss
s_imageLoadBuf: resb 0x4
s_imageLoadBytesUsed: resb 0x7c


;All cstrings:
SECTION .rdata
_cstring_2d:		db "<2d>",0
_cstring_3d:		db "<3d>",0
_cstring_cube:		db "<cube>",0
_cstring_file:		db "<file>",0
_cstring_needed_to_alloca:		db "Needed to allocate at least %.1f MB to load images",0
_cstring_iwi:		db ".iwi",0
_cstring_images:		db "images/",0
_cstring_sss:		db "%s%s%s",0
_cstring_error_image_s_is:		db "ERROR: image ",27h,"%s",27h," is truncated",0ah,0
_cstring_error_image_s_is1:		db "ERROR: image ",27h,"%s",27h," is not an IW image",0ah,0
_cstring_error_filename_s:		db "ERROR: filename ",27h,"%s",27h," too long",0ah,0
_cstring_error_image_s_is2:		db "ERROR: image ",27h,"%s",27h," is version %i but should be version %i",0ah,0
_cstring_error_image_s_is3:		db "ERROR: image ",27h,"%s",27h," is missing",0ah,0
_cstring_error_unknown_bu:		db "ERROR: Unknown built-in image ",27h,"%s",27h,0
_cstring_water:		db "<water>",0
_cstring_white:		db "$white",0
_cstring_black:		db "$black",0
_cstring_black_3d:		db "$black_3d",0
_cstring_black_cube:		db "$black_cube",0
_cstring_gray:		db "$gray",0
_cstring_identitynormalma:		db "$identitynormalmap",0
_cstring_outdoor:		db "$outdoor",0
_cstring_pixelcostcolorco:		db "$pixelcostcolorcode",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000095:		dd 0x35800000	; 9.53674e-07

