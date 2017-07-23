;Imports of r_image_load_common:
	extern r_loadForRenderer
	extern Image_Create3DTexture_PC
	extern Image_CreateCubeTexture_PC
	extern Image_Create2DTexture_PC
	extern Image_PicmipForSemantic
	extern memcpy
	extern gfxMetrics
	extern useFastFile
	extern Image_TrackTotalMemory

;Exports of r_image_load_common:
	global Image_Setup
	global Image_GetPicmip
	global Image_UploadData
	global Image_CubemapFace
	global Image_CountMipmaps
	global Image_SetupAndLoad
	global Image_TrackTexture
	global Image_GetCardMemoryAmount
	global Image_TrackFullscreenTexture
	global Image_GetCardMemoryAmountForMipLevel


SECTION .text


;Image_Setup(GfxImage*, int, int, int, int, _D3DFORMAT, char const*)
Image_Setup:
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
	jz Image_Setup_10
	test esi, 0x4
	jnz Image_Setup_20
	test esi, 0x8
	jz Image_Setup_30
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
	call Image_Create3DTexture_PC
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
	jmp Image_TrackTexture
Image_Setup_20:
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Image_CreateCubeTexture_PC
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
	jmp Image_TrackTexture
Image_Setup_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_Setup_30:
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov [esp+0x10], esi
	mov [esp+0xc], edx
	movzx eax, word [ebp-0x20]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Image_Create2DTexture_PC
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
	jmp Image_TrackTexture
	nop


;Image_GetPicmip(GfxImage const*, Picmip*)
Image_GetPicmip:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp byte [eax+0xa], 0x0
	jz Image_GetPicmip_10
	mov word [edx], 0x0
	pop ebp
	ret
Image_GetPicmip_10:
	mov [ebp+0xc], edx
	movzx eax, byte [eax+0xb]
	mov [ebp+0x8], eax
	pop ebp
	jmp Image_PicmipForSemantic


;Image_UploadData(GfxImage const*, _D3DFORMAT, _D3DCUBEMAP_FACES, unsigned int, unsigned char const*)
Image_UploadData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov eax, [ebp+0x8]
	mov edx, [eax]
	cmp edx, 0x5
	jz Image_UploadData_10
	cmp edx, 0x4
	jz Image_UploadData_20
Image_UploadData_130:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x18]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	cmp eax, 0x1
	jle Image_UploadData_30
	mov ebx, eax
Image_UploadData_410:
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+0x1a]
	movzx ecx, byte [ebp+0x14]
	shr eax, cl
	mov dword [ebp-0x48], 0x1
	cmp eax, 0x1
	cmovle eax, [ebp-0x48]
	mov [ebp-0x48], eax
	cmp edx, 0x3
	jz Image_UploadData_40
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
	jz Image_UploadData_50
	jle Image_UploadData_60
	cmp dword [ebp+0xc], 0x31545844
	jz Image_UploadData_70
	jg Image_UploadData_80
	cmp dword [ebp+0xc], 0x33
	jz Image_UploadData_90
Image_UploadData_110:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov edx, [eax]
	mov ecx, [ebp+0x14]
	mov [esp+0x8], ecx
	mov ecx, [ebp+0x10]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x50]
Image_UploadData_140:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_UploadData_90:
	lea esi, [ebx+ebx]
Image_UploadData_50:
	mov dword [ebp-0x4c], 0x1
Image_UploadData_480:
	cmp esi, [ebp-0x50]
	jz Image_UploadData_100
	mov edx, [ebp-0x48]
	test edx, edx
	jle Image_UploadData_110
	xor ebx, ebx
Image_UploadData_120:
	mov [esp+0x8], esi
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	add edi, [ebp-0x50]
	add [ebp+0x18], esi
	add ebx, [ebp-0x4c]
	cmp [ebp-0x48], ebx
	jg Image_UploadData_120
	jmp Image_UploadData_110
Image_UploadData_10:
	mov esi, [ebp+0x14]
	test esi, esi
	jz Image_UploadData_130
	mov eax, gfxMetrics
	cmp byte [eax+0x26], 0x0
	jnz Image_UploadData_130
	jmp Image_UploadData_140
Image_UploadData_40:
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
	jz Image_UploadData_150
	jg Image_UploadData_160
	cmp dword [ebp+0xc], 0x15
	jl Image_UploadData_170
	cmp dword [ebp+0xc], 0x16
	jle Image_UploadData_180
	cmp dword [ebp+0xc], 0x1c
	jnz Image_UploadData_170
Image_UploadData_150:
	mov dword [ebp-0x54], 0x1
Image_UploadData_460:
	cmp esi, [ebp-0x58]
	jz Image_UploadData_190
	mov eax, [ebp-0x48]
	test eax, eax
	jg Image_UploadData_200
Image_UploadData_170:
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
Image_UploadData_20:
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
	jz Image_UploadData_210
	jg Image_UploadData_220
	cmp dword [ebp+0xc], 0x1c
	jz Image_UploadData_230
	jle Image_UploadData_240
	cmp dword [ebp+0xc], 0x32
	jz Image_UploadData_230
	cmp dword [ebp+0xc], 0x33
	jnz Image_UploadData_250
Image_UploadData_300:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	add eax, eax
	mov [ebp-0x6c], eax
	jmp Image_UploadData_260
Image_UploadData_60:
	cmp dword [ebp+0xc], 0x15
	jl Image_UploadData_110
	cmp dword [ebp+0xc], 0x16
	jg Image_UploadData_270
	shl esi, 0x2
	jmp Image_UploadData_50
Image_UploadData_220:
	cmp dword [ebp+0xc], 0x31545844
	jz Image_UploadData_280
	jg Image_UploadData_290
	cmp dword [ebp+0xc], 0x50
	jz Image_UploadData_300
	cmp dword [ebp+0xc], 0x72
	jnz Image_UploadData_250
Image_UploadData_210:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	shl eax, 0x2
	mov [ebp-0x6c], eax
Image_UploadData_260:
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
	jle Image_UploadData_170
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
	jmp Image_UploadData_310
Image_UploadData_350:
	cmp dword [ebp+0xc], 0x15
	jl Image_UploadData_320
	cmp dword [ebp+0xc], 0x16
	jle Image_UploadData_330
	cmp dword [ebp+0xc], 0x1c
	jz Image_UploadData_340
Image_UploadData_320:
	mov ecx, [ebp-0x6c]
	add [ebp+0x18], ecx
	mov eax, [ebp-0x20]
	add [ebp-0x68], eax
	add dword [ebp-0x70], 0x1
	mov edx, [ebp-0x70]
	cmp [ebp-0x3c], edx
	jz Image_UploadData_170
Image_UploadData_310:
	mov edx, [ebp-0x24]
	mov [ebp-0x64], edx
	cmp dword [ebp+0xc], 0x32
	jz Image_UploadData_340
	jle Image_UploadData_350
	cmp dword [ebp+0xc], 0x31545844
	jz Image_UploadData_360
	jg Image_UploadData_370
	cmp dword [ebp+0xc], 0x33
	jnz Image_UploadData_320
	mov ecx, [ebp-0x30]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x60], 0x1
	jmp Image_UploadData_380
Image_UploadData_340:
	mov eax, [ebp-0x44]
	mov [ebp-0x5c], eax
	mov dword [ebp-0x60], 0x1
Image_UploadData_380:
	mov edx, [ebp-0x64]
	cmp [ebp-0x5c], edx
	jz Image_UploadData_390
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jle Image_UploadData_320
	mov esi, [ebp+0x18]
	mov ebx, [ebp-0x68]
	xor edi, edi
Image_UploadData_400:
	mov edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	add ebx, [ebp-0x64]
	add esi, [ebp-0x5c]
	add edi, [ebp-0x60]
	cmp [ebp-0x40], edi
	jg Image_UploadData_400
	jmp Image_UploadData_320
Image_UploadData_30:
	mov ebx, 0x1
	jmp Image_UploadData_410
Image_UploadData_370:
	cmp dword [ebp+0xc], 0x33545844
	jz Image_UploadData_420
	cmp dword [ebp+0xc], 0x35545844
	jnz Image_UploadData_320
Image_UploadData_420:
	mov ecx, [ebp-0x38]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x60], 0x4
	jmp Image_UploadData_380
Image_UploadData_360:
	mov eax, [ebp-0x34]
	mov [ebp-0x5c], eax
	mov dword [ebp-0x60], 0x4
	jmp Image_UploadData_380
Image_UploadData_390:
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
	jmp Image_UploadData_320
Image_UploadData_330:
	mov edx, [ebp-0x2c]
	mov [ebp-0x5c], edx
	mov dword [ebp-0x60], 0x1
	jmp Image_UploadData_380
Image_UploadData_160:
	cmp dword [ebp+0xc], 0x31545844
	jz Image_UploadData_430
	jle Image_UploadData_440
	cmp dword [ebp+0xc], 0x33545844
	jz Image_UploadData_450
	cmp dword [ebp+0xc], 0x35545844
	jnz Image_UploadData_170
Image_UploadData_450:
	lea esi, [ebx+0x3]
	sar esi, 0x2
	shl esi, 0x4
	mov dword [ebp-0x54], 0x4
	jmp Image_UploadData_460
Image_UploadData_80:
	cmp dword [ebp+0xc], 0x33545844
	jz Image_UploadData_470
	cmp dword [ebp+0xc], 0x35545844
	jnz Image_UploadData_110
Image_UploadData_470:
	lea esi, [ebx+0x3]
	sar esi, 0x2
	shl esi, 0x4
	mov dword [ebp-0x4c], 0x4
	jmp Image_UploadData_480
Image_UploadData_70:
	lea eax, [ebx+0x3]
	sar eax, 0x2
	lea esi, [eax*8]
	mov dword [ebp-0x4c], 0x4
	jmp Image_UploadData_480
Image_UploadData_270:
	cmp dword [ebp+0xc], 0x1c
	jnz Image_UploadData_110
	jmp Image_UploadData_50
Image_UploadData_440:
	cmp dword [ebp+0xc], 0x33
	jnz Image_UploadData_170
	lea esi, [ebx+ebx]
	jmp Image_UploadData_150
Image_UploadData_240:
	cmp dword [ebp+0xc], 0x15
	jz Image_UploadData_210
	cmp dword [ebp+0xc], 0x16
	jz Image_UploadData_490
Image_UploadData_250:
	mov dword [ebp-0x6c], 0x0
	jmp Image_UploadData_260
Image_UploadData_290:
	cmp dword [ebp+0xc], 0x33545844
	jz Image_UploadData_500
	cmp dword [ebp+0xc], 0x35545844
	jnz Image_UploadData_250
Image_UploadData_500:
	mov edx, [ebp-0x44]
	add edx, 0x3
	sar edx, 0x2
	mov eax, [ebp-0x40]
	add eax, 0x3
	sar eax, 0x2
	imul eax, edx
	shl eax, 0x4
	mov [ebp-0x6c], eax
	jmp Image_UploadData_260
Image_UploadData_100:
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
	jmp Image_UploadData_110
Image_UploadData_200:
	xor ebx, ebx
Image_UploadData_510:
	mov [esp+0x8], esi
	mov edx, [ebp+0x18]
	mov [esp+0x4], edx
	mov [esp], edi
	call memcpy
	add edi, [ebp-0x58]
	add [ebp+0x18], esi
	add ebx, [ebp-0x54]
	cmp [ebp-0x48], ebx
	jg Image_UploadData_510
	jmp Image_UploadData_170
Image_UploadData_230:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	mov [ebp-0x6c], eax
	jmp Image_UploadData_260
Image_UploadData_430:
	lea eax, [ebx+0x3]
	sar eax, 0x2
	lea esi, [eax*8]
	mov dword [ebp-0x54], 0x4
	jmp Image_UploadData_460
Image_UploadData_280:
	mov edx, [ebp-0x44]
	add edx, 0x3
	sar edx, 0x2
	mov eax, [ebp-0x40]
	add eax, 0x3
	sar eax, 0x2
	imul edx, eax
	shl edx, 0x3
	mov [ebp-0x6c], edx
	jmp Image_UploadData_260
Image_UploadData_190:
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
	jmp Image_UploadData_170
Image_UploadData_180:
	lea esi, [ebx*4]
	jmp Image_UploadData_150
Image_UploadData_490:
	mov eax, [ebp-0x44]
	imul eax, [ebp-0x40]
	lea eax, [eax+eax*2]
	mov [ebp-0x6c], eax
	jmp Image_UploadData_260
	add [eax], al


;Image_CubemapFace(unsigned int)
Image_CubemapFace:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Image_CountMipmaps(unsigned int, unsigned int, unsigned int, unsigned int)
Image_CountMipmaps:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	test byte [ebp+0x8], 0x2
	jnz Image_CountMipmaps_10
	mov eax, 0x1
	mov edx, 0x1
	jmp Image_CountMipmaps_20
Image_CountMipmaps_30:
	add edx, edx
	add eax, 0x1
Image_CountMipmaps_20:
	cmp edx, ecx
	jb Image_CountMipmaps_30
	cmp edx, ebx
	jb Image_CountMipmaps_30
	cmp edx, esi
	jb Image_CountMipmaps_30
	pop ebx
	pop esi
	pop ebp
	ret
Image_CountMipmaps_10:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret


;Image_SetupAndLoad(GfxImage*, int, int, int, int, _D3DFORMAT, char const*)
Image_SetupAndLoad:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Image_Setup
	nop


;Image_TrackTexture(GfxImage*, int, _D3DFORMAT, int, int, int)
Image_TrackTexture:
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
	jnz Image_TrackTexture_10
Image_TrackTexture_30:
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
	call Image_GetCardMemoryAmount
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Image_TrackTexture_20
Image_TrackTexture_60:
	mov [esi+0x10], ebx
	add dword [ebp-0x1c], 0x1
	add esi, 0x4
	add edi, 0x1
	cmp dword [ebp-0x1c], 0x2
	jnz Image_TrackTexture_30
Image_TrackTexture_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_TrackTexture_10:
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
	call Image_GetCardMemoryAmount
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Image_TrackTexture_40
Image_TrackTexture_70:
	mov [esi+0x10], ebx
	add dword [ebp-0x1c], 0x1
	add esi, 0x4
	cmp dword [ebp-0x1c], 0x2
	jz Image_TrackTexture_50
	jmp Image_TrackTexture_10
Image_TrackTexture_20:
	mov [esp+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Image_TrackTotalMemory
	jmp Image_TrackTexture_60
Image_TrackTexture_40:
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x1c]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Image_TrackTotalMemory
	jmp Image_TrackTexture_70


;Image_GetCardMemoryAmount(unsigned int, _D3DFORMAT, unsigned int, unsigned int, unsigned int)
Image_GetCardMemoryAmount:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	cmp dword [ebp+0xc], 0x4b
	jz Image_GetCardMemoryAmount_10
	jle Image_GetCardMemoryAmount_20
	cmp dword [ebp+0xc], 0x72
	jz Image_GetCardMemoryAmount_10
	jle Image_GetCardMemoryAmount_30
	cmp dword [ebp+0xc], 0x33545844
	jz Image_GetCardMemoryAmount_40
	cmp dword [ebp+0xc], 0x35545844
	jz Image_GetCardMemoryAmount_40
	cmp dword [ebp+0xc], 0x31545844
	jz Image_GetCardMemoryAmount_50
Image_GetCardMemoryAmount_100:
	xor ecx, ecx
Image_GetCardMemoryAmount_240:
	test byte [ebp+0x8], 0x2
	jz Image_GetCardMemoryAmount_60
Image_GetCardMemoryAmount_120:
	test byte [ebp+0x8], 0x4
	jz Image_GetCardMemoryAmount_70
	lea eax, [ecx+ecx*2]
	lea ecx, [eax+eax]
Image_GetCardMemoryAmount_70:
	mov eax, ecx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_GetCardMemoryAmount_20:
	cmp dword [ebp+0xc], 0x1c
	jz Image_GetCardMemoryAmount_80
	jle Image_GetCardMemoryAmount_90
	cmp dword [ebp+0xc], 0x32
	jz Image_GetCardMemoryAmount_80
	cmp dword [ebp+0xc], 0x33
	jnz Image_GetCardMemoryAmount_100
Image_GetCardMemoryAmount_230:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea ecx, [eax+eax]
	jmp Image_GetCardMemoryAmount_110
Image_GetCardMemoryAmount_90:
	mov eax, [ebp+0xc]
	sub eax, 0x15
	cmp eax, 0x1
	ja Image_GetCardMemoryAmount_100
Image_GetCardMemoryAmount_10:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea ecx, [eax*4]
Image_GetCardMemoryAmount_110:
	test byte [ebp+0x8], 0x2
	jnz Image_GetCardMemoryAmount_120
Image_GetCardMemoryAmount_60:
	lea eax, [esi+edi]
	lea eax, [ebx+eax]
	cmp eax, 0x3
	jbe Image_GetCardMemoryAmount_120
Image_GetCardMemoryAmount_180:
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
	jz Image_GetCardMemoryAmount_130
	jg Image_GetCardMemoryAmount_140
	cmp dword [ebp+0xc], 0x1c
	jz Image_GetCardMemoryAmount_150
	jg Image_GetCardMemoryAmount_160
	mov eax, [ebp+0xc]
	sub eax, 0x15
	cmp eax, 0x1
	ja Image_GetCardMemoryAmount_170
Image_GetCardMemoryAmount_130:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea edx, [eax*4]
Image_GetCardMemoryAmount_210:
	add ecx, edx
	lea eax, [esi+edi]
	add eax, ebx
	cmp eax, 0x3
	ja Image_GetCardMemoryAmount_180
	jmp Image_GetCardMemoryAmount_120
Image_GetCardMemoryAmount_140:
	cmp dword [ebp+0xc], 0x72
	jz Image_GetCardMemoryAmount_130
	jg Image_GetCardMemoryAmount_190
	cmp dword [ebp+0xc], 0x50
	jz Image_GetCardMemoryAmount_200
	cmp dword [ebp+0xc], 0x70
	jz Image_GetCardMemoryAmount_130
Image_GetCardMemoryAmount_170:
	xor edx, edx
	jmp Image_GetCardMemoryAmount_210
Image_GetCardMemoryAmount_150:
	mov edx, esi
	imul edx, edi
	imul edx, ebx
	jmp Image_GetCardMemoryAmount_210
Image_GetCardMemoryAmount_160:
	cmp dword [ebp+0xc], 0x32
	jz Image_GetCardMemoryAmount_150
	cmp dword [ebp+0xc], 0x33
	jnz Image_GetCardMemoryAmount_170
Image_GetCardMemoryAmount_200:
	mov eax, esi
	imul eax, edi
	imul eax, ebx
	lea edx, [eax+eax]
	jmp Image_GetCardMemoryAmount_210
Image_GetCardMemoryAmount_190:
	cmp dword [ebp+0xc], 0x33545844
	jz Image_GetCardMemoryAmount_220
	cmp dword [ebp+0xc], 0x35545844
	jz Image_GetCardMemoryAmount_220
	cmp dword [ebp+0xc], 0x31545844
	jnz Image_GetCardMemoryAmount_170
	lea eax, [esi+0x3]
	shr eax, 0x2
	lea edx, [edi+0x3]
	shr edx, 0x2
	imul eax, edx
	imul eax, ebx
	lea edx, [eax*8]
	jmp Image_GetCardMemoryAmount_210
Image_GetCardMemoryAmount_30:
	cmp dword [ebp+0xc], 0x50
	jz Image_GetCardMemoryAmount_230
	cmp dword [ebp+0xc], 0x70
	jz Image_GetCardMemoryAmount_10
	xor ecx, ecx
	jmp Image_GetCardMemoryAmount_240
Image_GetCardMemoryAmount_220:
	lea edx, [esi+0x3]
	shr edx, 0x2
	lea eax, [edi+0x3]
	shr eax, 0x2
	imul edx, eax
	imul edx, ebx
	shl edx, 0x4
	jmp Image_GetCardMemoryAmount_210
Image_GetCardMemoryAmount_80:
	mov eax, esi
	imul eax, edi
	mov ecx, ebx
	imul ecx, eax
	jmp Image_GetCardMemoryAmount_110
Image_GetCardMemoryAmount_40:
	lea edx, [esi+0x3]
	shr edx, 0x2
	lea eax, [edi+0x3]
	shr eax, 0x2
	imul edx, eax
	mov ecx, ebx
	imul ecx, edx
	shl ecx, 0x4
	jmp Image_GetCardMemoryAmount_110
Image_GetCardMemoryAmount_50:
	lea eax, [esi+0x3]
	shr eax, 0x2
	lea edx, [edi+0x3]
	shr edx, 0x2
	imul eax, edx
	imul eax, ebx
	lea ecx, [eax*8]
	jmp Image_GetCardMemoryAmount_110
	nop


;Image_TrackFullscreenTexture(GfxImage*, int, int, int, _D3DFORMAT)
Image_TrackFullscreenTexture:
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
Image_TrackFullscreenTexture_40:
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
	call Image_GetCardMemoryAmount
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz Image_TrackFullscreenTexture_10
Image_TrackFullscreenTexture_50:
	mov eax, [ebp+0x8]
	mov [eax+esi*4+0x10], ebx
	add esi, 0x1
	cmp esi, 0x1
	jle Image_TrackFullscreenTexture_20
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Image_TrackFullscreenTexture_20:
	jnz Image_TrackFullscreenTexture_30
	mov edx, 0x1e0
	mov eax, 0x280
	jmp Image_TrackFullscreenTexture_40
Image_TrackFullscreenTexture_10:
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Image_TrackTotalMemory
	jmp Image_TrackFullscreenTexture_50
Image_TrackFullscreenTexture_30:
	mov edx, [ebp+0x10]
	mov eax, [ebp+0xc]
	jmp Image_TrackFullscreenTexture_40


;Image_GetCardMemoryAmountForMipLevel(_D3DFORMAT, unsigned int, unsigned int, unsigned int)
Image_GetCardMemoryAmountForMipLevel:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	cmp eax, 0x4b
	jz Image_GetCardMemoryAmountForMipLevel_10
	jle Image_GetCardMemoryAmountForMipLevel_20
	cmp eax, 0x72
	jz Image_GetCardMemoryAmountForMipLevel_10
	jle Image_GetCardMemoryAmountForMipLevel_30
	cmp eax, 0x33545844
	jz Image_GetCardMemoryAmountForMipLevel_40
	cmp eax, 0x35545844
	jz Image_GetCardMemoryAmountForMipLevel_40
	cmp eax, 0x31545844
	jz Image_GetCardMemoryAmountForMipLevel_50
Image_GetCardMemoryAmountForMipLevel_80:
	xor edx, edx
Image_GetCardMemoryAmountForMipLevel_100:
	mov eax, edx
	pop ebp
	ret
Image_GetCardMemoryAmountForMipLevel_20:
	cmp eax, 0x1c
	jz Image_GetCardMemoryAmountForMipLevel_60
	jle Image_GetCardMemoryAmountForMipLevel_70
	cmp eax, 0x32
	jz Image_GetCardMemoryAmountForMipLevel_60
	cmp eax, 0x33
	jnz Image_GetCardMemoryAmountForMipLevel_80
Image_GetCardMemoryAmountForMipLevel_90:
	imul edx, [ebp+0x10]
	imul ecx, edx
	lea edx, [ecx+ecx]
	mov eax, edx
	pop ebp
	ret
Image_GetCardMemoryAmountForMipLevel_70:
	sub eax, 0x15
	cmp eax, 0x1
	ja Image_GetCardMemoryAmountForMipLevel_80
Image_GetCardMemoryAmountForMipLevel_10:
	imul edx, [ebp+0x10]
	imul ecx, edx
	lea edx, [ecx*4]
	mov eax, edx
	pop ebp
	ret
Image_GetCardMemoryAmountForMipLevel_30:
	cmp eax, 0x50
	jz Image_GetCardMemoryAmountForMipLevel_90
	cmp eax, 0x70
	jz Image_GetCardMemoryAmountForMipLevel_10
	xor edx, edx
	jmp Image_GetCardMemoryAmountForMipLevel_100
Image_GetCardMemoryAmountForMipLevel_60:
	imul edx, [ebp+0x10]
	imul edx, ecx
	mov eax, edx
	pop ebp
	ret
Image_GetCardMemoryAmountForMipLevel_40:
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
Image_GetCardMemoryAmountForMipLevel_50:
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

