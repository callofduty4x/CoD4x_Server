;Imports of r_screenshot:
	extern floorf
	extern _Znwm
	extern memset
	extern glGetIntegerv
	extern glBindFramebufferEXT
	extern glPushAttrib
	extern glPushClientAttrib
	extern glDisable
	extern glColorMask
	extern glDepthMask
	extern glActiveTextureARB
	extern _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	extern glPixelStorei
	extern glReadBuffer
	extern glReadPixels
	extern glPopClientAttrib
	extern glPopAttrib
	extern glGetError
	extern _ZdlPv
	extern _Unwind_Resume
	extern vidConfig
	extern Z_MallocInternal
	extern Z_FreeInternal
	extern rgp
	extern sprintf
	extern FS_WriteFile
	extern Com_Printf
	extern gfxMetrics
	extern Z_VirtualAllocInternal
	extern lockPvsViewParms
	extern dx_ctx
	extern alwaysfails
	extern R_GammaCorrect
	extern gfxCmdBufSourceState
	extern R_SetRenderTargetSize
	extern gfxCmdBufContext
	extern R_SetRenderTarget
	extern R_ErrorDescription
	extern Com_PrintError
	extern Com_Memcpy
	extern FresnelTerm
	extern Z_VirtualFreeInternal
	extern cmd_args
	extern Com_sprintf
	extern FS_FileExists
	extern R_SaveJpg
	extern pow
	extern Image_FlipVertically
	extern CubeMap_FlipSides
	extern memcpy
	extern CubeMap_CacheHighMipDirs
	extern CubeMap_GenerateMipMap32
	extern CubeMap_BlendFaceEdges

;Exports of r_screenshot:
	global cubeShotGlob
	global cubemapShotAxis
	global R_UpsamplePixelData
	global R_DownsamplePixelData
	global R_GetFrontBufferData
	global R_TakeResampledScreenshot
	global _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	global R_LevelShot
	global R_EndCubemapShot
	global R_SaveCubemapShot
	global R_BeginCubemapShot
	global R_ScreenshotCommand
	global R_LightingFromCubemapShots
	global R_CreateReflectionRawDataFromCubemapShot


SECTION .text


;R_UpsamplePixelData(int, int, int, int, unsigned char*, unsigned char*)
R_UpsamplePixelData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov [ebp-0x38], edx
	imul ecx, [ebp+0x8]
	mov [ebp-0x28], ecx
	lea eax, [eax-0x1]
	imul eax, ecx
	add eax, [ebp+0xc]
	mov [ebp-0x24], eax
	mov ecx, edx
	sub ecx, 0x1
	mov edi, [ebp-0x28]
	imul edi, ecx
	add edi, [ebp+0x10]
	mov edx, eax
	movzx eax, byte [eax]
	mov esi, [ebp-0x28]
	mov [edx+esi], al
	mov edx, [ebp-0x24]
	add edx, esi
	mov esi, [ebp-0x24]
	movzx eax, byte [esi+0x1]
	mov [edx+0x1], al
	movzx eax, byte [esi+0x2]
	mov [edx+0x2], al
	mov esi, [ebp-0x38]
	sub esi, ebx
	mov eax, [ebp-0x38]
	add eax, ebx
	mov [ebp-0x30], eax
	cvtsi2ss xmm0, dword [ebp-0x38]
	movss xmm1, dword [_float_0_50000000]
	divss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	test ecx, ecx
	js R_UpsamplePixelData_10
	add ebx, ebx
	mov [ebp-0x20], ebx
	mov eax, [ebp-0x38]
	add eax, eax
	mov [ebp-0x34], eax
	mov dword [ebp-0x1c], 0x0
	jmp R_UpsamplePixelData_20
R_UpsamplePixelData_40:
	mov eax, [ebp-0x30]
	lea ebx, [esi+eax]
	movzx eax, byte [edx]
	imul eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x48]
	cvttss2si eax, [ebp-0x48]
	mov [edi], al
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+0x1]
	imul eax, ebx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x4c]
	cvttss2si eax, [ebp-0x4c]
	mov [edi+0x1], al
	mov edx, [ebp+0xc]
	movzx eax, byte [edx+0x2]
	imul ebx, eax
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	mov [edi+0x2], al
	sub edi, [ebp-0x28]
	mov ecx, [ebp-0x20]
	add [ebp-0x30], ecx
	sub esi, ecx
	js R_UpsamplePixelData_30
R_UpsamplePixelData_50:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x38], edx
	jz R_UpsamplePixelData_10
R_UpsamplePixelData_20:
	mov edx, [ebp+0xc]
	cmp [ebp-0x24], edx
	jb R_UpsamplePixelData_40
	mov ecx, [ebp-0x24]
	movzx edx, byte [ecx]
	imul edx, [ebp-0x30]
	mov ebx, [ebp-0x28]
	movzx eax, byte [ecx+ebx]
	imul eax, esi
	add edx, eax
	cvtsi2ss xmm0, edx
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov [edi], al
	mov ebx, [ebp-0x24]
	add ebx, [ebp-0x28]
	mov eax, [ebp-0x24]
	movzx edx, byte [eax+0x1]
	imul edx, [ebp-0x30]
	movzx eax, byte [ebx+0x1]
	imul eax, esi
	add edx, eax
	cvtsi2ss xmm0, edx
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov [edi+0x1], al
	mov ecx, [ebp-0x24]
	movzx edx, byte [ecx+0x2]
	imul edx, [ebp-0x30]
	movzx eax, byte [ebx+0x2]
	imul eax, esi
	add edx, eax
	cvtsi2ss xmm0, edx
	mulss xmm0, [ebp-0x2c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov [edi+0x2], al
	sub edi, [ebp-0x28]
	mov ecx, [ebp-0x20]
	add [ebp-0x30], ecx
	sub esi, ecx
	jns R_UpsamplePixelData_50
R_UpsamplePixelData_30:
	mov ebx, [ebp-0x34]
	sub [ebp-0x30], ebx
	add esi, ebx
	mov eax, [ebp-0x28]
	sub [ebp-0x24], eax
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x38], edx
	jnz R_UpsamplePixelData_20
R_UpsamplePixelData_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DownsamplePixelData(int, int, int, int, unsigned char*, unsigned char*)
R_DownsamplePixelData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x34], eax
	mov [ebp-0x38], edx
	mov edi, [ebp+0xc]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	movss [ebp-0x28], xmm1
	mov eax, ecx
	imul eax, [ebp+0x8]
	mov [ebp-0x24], eax
	test edx, edx
	jle R_DownsamplePixelData_10
	mov [ebp-0x30], edx
	mov dword [ebp-0x2c], 0x0
	mov ecx, edx
	jmp R_DownsamplePixelData_20
R_DownsamplePixelData_30:
	mov eax, [ebp-0x38]
	sub eax, [ebp-0x30]
	movzx ebx, byte [edi+0x1]
	imul ebx, eax
	add ebx, ecx
	movzx esi, byte [edi+0x2]
	imul esi, eax
	add esi, [ebp-0x20]
	movzx edx, byte [edi]
	imul eax, edx
	add eax, [ebp-0x1c]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x28]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si eax, [ebp-0x3c]
	mov edx, [ebp+0x10]
	mov [edx], al
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp-0x28]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov edx, [ebp+0x10]
	mov [edx+0x1], al
	cvtsi2ss xmm0, esi
	mulss xmm0, [ebp-0x28]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x44]
	cvttss2si eax, [ebp-0x44]
	mov edx, [ebp+0x10]
	mov [edx+0x2], al
	mov eax, [ebp-0x24]
	add edx, eax
	mov [ebp+0x10], edx
	add dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x2c]
	cmp [ebp-0x38], edx
	jz R_DownsamplePixelData_10
	mov ecx, [ebp-0x30]
R_DownsamplePixelData_20:
	movzx eax, byte [edi]
	imul eax, [ebp-0x30]
	mov [ebp-0x1c], eax
	movzx eax, byte [edi+0x1]
	imul ecx, eax
	movzx eax, byte [edi+0x2]
	imul eax, [ebp-0x30]
	mov [ebp-0x20], eax
	add edi, [ebp-0x24]
	mov edx, [ebp-0x30]
	add edx, [ebp-0x38]
	mov eax, edx
	sub eax, [ebp-0x34]
	mov [ebp-0x30], eax
	test eax, eax
	jg R_DownsamplePixelData_30
R_DownsamplePixelData_40:
	movzx eax, byte [edi]
	imul eax, [ebp-0x38]
	add [ebp-0x1c], eax
	movzx eax, byte [edi+0x1]
	imul eax, [ebp-0x38]
	add ecx, eax
	movzx eax, byte [edi+0x2]
	imul eax, [ebp-0x38]
	add [ebp-0x20], eax
	add edi, [ebp-0x24]
	add edx, [ebp-0x38]
	mov eax, edx
	sub eax, [ebp-0x34]
	mov [ebp-0x30], eax
	test eax, eax
	jle R_DownsamplePixelData_40
	jmp R_DownsamplePixelData_30
R_DownsamplePixelData_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetFrontBufferData(int, int, int, int, int, unsigned char*)
R_GetFrontBufferData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x48], ecx
	mov eax, ecx
	shl eax, 0x2
	mov [ebp-0x44], eax
	mov ebx, eax
	imul ebx, [ebp+0x8]
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov [esp], ebx
	call _Znwm
	mov esi, eax
	mov [ebp-0x34], eax
	mov [ebp-0x30], eax
	lea eax, [ebx+eax]
	mov [ebp-0x2c], eax
	sub eax, esi
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	add ebx, [ebp-0x34]
	mov [ebp-0x30], ebx
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x8ca6
	call glGetIntegerv
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x8d40
	call glBindFramebufferEXT
	mov dword [esp], 0xfffff
	call glPushAttrib
	mov dword [esp], 0xffffffff
	call glPushClientAttrib
	mov dword [esp], 0xb50
	call glDisable
	mov dword [esp], 0xbe2
	call glDisable
	mov dword [esp], 0xbc0
	call glDisable
	mov dword [esp], 0xb71
	call glDisable
	mov dword [esp], 0xbd0
	call glDisable
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x1
	call glColorMask
	mov dword [esp], 0x1
	call glDepthMask
	mov dword [esp], 0xb44
	call glDisable
	mov dword [esp], 0xb60
	call glDisable
	mov dword [esp], 0xb90
	call glDisable
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x84e2
	call glGetIntegerv
	mov edx, [ebp-0x20]
	mov eax, edx
	sub eax, 0x1
	js R_GetFrontBufferData_10
	lea ebx, [edx+0x84bf]
	mov esi, 0x84bf
R_GetFrontBufferData_20:
	mov [esp], ebx
	call glActiveTextureARB
	mov dword [esp], 0xde1
	call glDisable
	mov dword [esp], 0x84f5
	call glDisable
	mov dword [esp], 0x806f
	call glDisable
	mov dword [esp], 0x8513
	call glDisable
	sub ebx, 0x1
	cmp esi, ebx
	jnz R_GetFrontBufferData_20
R_GetFrontBufferData_10:
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0xd05
	call glPixelStorei
	mov dword [esp], 0x404
	call glReadBuffer
	mov eax, [ebp-0x34]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x8035
	mov dword [esp+0x10], 0x80e1
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov eax, [ebp-0x48]
	mov [esp+0x8], eax
	mov eax, [ebp-0x28]
	sub eax, ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call glReadPixels
	call glPopClientAttrib
	call glPopAttrib
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], 0x8d40
	call glBindFramebufferEXT
	call glGetError
	test eax, eax
	jnz R_GetFrontBufferData_30
	cmp dword [ebp+0xc], 0x3
	jz R_GetFrontBufferData_40
	cmp dword [ebp+0xc], 0x4
	jz R_GetFrontBufferData_50
R_GetFrontBufferData_30:
	xor ebx, ebx
	mov esi, [ebp-0x34]
R_GetFrontBufferData_130:
	mov edx, [ebp-0x30]
	cmp edx, esi
	jz R_GetFrontBufferData_60
	mov eax, esi
R_GetFrontBufferData_70:
	add eax, 0x1
	cmp eax, edx
	jnz R_GetFrontBufferData_70
R_GetFrontBufferData_60:
	test esi, esi
	jz R_GetFrontBufferData_80
	mov [esp], esi
	call _ZdlPv
R_GetFrontBufferData_80:
	mov eax, ebx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_GetFrontBufferData_40:
	mov eax, [ebp+0x8]
	test eax, eax
	jle R_GetFrontBufferData_90
	mov ebx, [ebp+0x8]
	lea ebx, [ebx+ebx*2-0x3]
	mov [ebp-0x40], ebx
	xor edi, edi
	mov esi, [ebp-0x34]
R_GetFrontBufferData_120:
	mov eax, [ebp-0x44]
	imul eax, edi
	lea ecx, [esi+eax]
	mov eax, [ebp-0x48]
	imul eax, [ebp-0x40]
	mov edx, [ebp+0x10]
	add edx, eax
	mov eax, [ebp-0x48]
	test eax, eax
	jle R_GetFrontBufferData_100
	xor ebx, ebx
R_GetFrontBufferData_110:
	movzx eax, byte [ecx+0x3]
	mov [edx], al
	movzx eax, byte [ecx+0x2]
	mov [edx+0x1], al
	movzx eax, byte [ecx+0x1]
	mov [edx+0x2], al
	add edx, 0x3
	add ecx, 0x4
	add ebx, 0x1
	cmp [ebp-0x48], ebx
	jnz R_GetFrontBufferData_110
R_GetFrontBufferData_100:
	add edi, 0x1
	sub dword [ebp-0x40], 0x3
	cmp edi, [ebp+0x8]
	jnz R_GetFrontBufferData_120
	mov ebx, 0x1
	jmp R_GetFrontBufferData_130
R_GetFrontBufferData_50:
	mov eax, [ebp+0x8]
	test eax, eax
	jle R_GetFrontBufferData_90
	mov eax, [ebp+0x8]
	lea eax, [eax*4-0x4]
	mov [ebp-0x3c], eax
	xor edi, edi
	mov esi, [ebp-0x34]
R_GetFrontBufferData_160:
	mov eax, [ebp-0x44]
	imul eax, edi
	lea ecx, [esi+eax]
	mov eax, [ebp-0x48]
	imul eax, [ebp-0x3c]
	mov ebx, [ebp+0x10]
	lea edx, [eax+ebx]
	mov eax, [ebp-0x48]
	test eax, eax
	jle R_GetFrontBufferData_140
	xor ebx, ebx
R_GetFrontBufferData_150:
	movzx eax, byte [ecx+0x3]
	mov [edx], al
	movzx eax, byte [ecx+0x2]
	mov [edx+0x1], al
	movzx eax, byte [ecx+0x1]
	mov [edx+0x2], al
	add edx, 0x4
	add ecx, 0x4
	add ebx, 0x1
	cmp ebx, [ebp-0x48]
	jnz R_GetFrontBufferData_150
R_GetFrontBufferData_140:
	add edi, 0x1
	sub dword [ebp-0x3c], 0x4
	cmp edi, [ebp+0x8]
	jnz R_GetFrontBufferData_160
	mov ebx, 0x1
	jmp R_GetFrontBufferData_130
R_GetFrontBufferData_90:
	mov esi, [ebp-0x34]
	mov ebx, 0x1
	jmp R_GetFrontBufferData_130
	mov [esp], eax
	call _Unwind_Resume
	mov ebx, eax
	mov edx, [ebp-0x30]
	mov esi, [ebp-0x34]
	cmp edx, esi
	jz R_GetFrontBufferData_170
	mov eax, esi
R_GetFrontBufferData_180:
	add eax, 0x1
	cmp eax, edx
	jnz R_GetFrontBufferData_180
R_GetFrontBufferData_170:
	test esi, esi
	jz R_GetFrontBufferData_190
	mov [esp], esi
	call _ZdlPv
R_GetFrontBufferData_190:
	mov [esp], ebx
	call _Unwind_Resume


;R_TakeResampledScreenshot(int, int, int, int)
R_TakeResampledScreenshot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x48], eax
	mov [ebp-0x4c], edx
	mov edi, ecx
	mov esi, [ebp+0x8]
	mov ebx, vidConfig
	mov eax, [ebx+0x8]
	cmp eax, [ebp-0x48]
	cmovle eax, [ebp-0x48]
	mov edx, [ebx+0xc]
	cmp edx, [ebp-0x4c]
	cmovle edx, [ebp-0x4c]
	imul eax, edx
	imul eax, ecx
	add eax, esi
	mov [esp], eax
	call Z_MallocInternal
	mov [ebp-0x44], eax
	mov ecx, [ebx+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebx+0xc]
	mov [esp], eax
	xor edx, edx
	xor eax, eax
	call R_GetFrontBufferData
	test al, al
	jz R_TakeResampledScreenshot_10
	add esi, [ebp-0x44]
	mov [ebp-0x1c], esi
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov ebx, [ebx+0x8]
	mov [ebp-0x3c], ebx
	cmp [ebp-0x48], ebx
	jl R_TakeResampledScreenshot_20
	jg R_TakeResampledScreenshot_30
R_TakeResampledScreenshot_70:
	mov eax, [ebp-0x40]
	cmp [ebp-0x4c], eax
	jl R_TakeResampledScreenshot_40
R_TakeResampledScreenshot_100:
	jle R_TakeResampledScreenshot_50
	mov edx, [ebp-0x48]
	sub edx, 0x1
	mov eax, edi
	imul eax, edx
	mov esi, [ebp-0x1c]
	add esi, eax
	test edx, edx
	js R_TakeResampledScreenshot_50
	mov ebx, esi
	mov dword [ebp-0x24], 0x0
R_TakeResampledScreenshot_60:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	mov ecx, [ebp-0x48]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x40]
	call R_UpsamplePixelData
	sub ebx, edi
	sub esi, edi
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x48], eax
	jnz R_TakeResampledScreenshot_60
R_TakeResampledScreenshot_50:
	mov eax, [ebp-0x44]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TakeResampledScreenshot_20:
	mov edx, [ebp-0x40]
	test edx, edx
	jle R_TakeResampledScreenshot_70
	mov eax, [ebp-0x3c]
	imul eax, edi
	mov [ebp-0x34], eax
	mov eax, [ebp-0x48]
	imul eax, edi
	mov [ebp-0x30], eax
	mov eax, [ebp-0x1c]
	mov [ebp-0x38], eax
	mov esi, eax
	xor ebx, ebx
	jmp R_TakeResampledScreenshot_80
R_TakeResampledScreenshot_90:
	mov eax, [ebp-0x38]
R_TakeResampledScreenshot_80:
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x3c]
	call R_DownsamplePixelData
	mov eax, [ebp-0x34]
	add [ebp-0x38], eax
	add esi, [ebp-0x30]
	add ebx, 0x1
	cmp [ebp-0x40], ebx
	jnz R_TakeResampledScreenshot_90
	mov eax, [ebp-0x40]
	cmp [ebp-0x4c], eax
	jge R_TakeResampledScreenshot_100
R_TakeResampledScreenshot_40:
	mov eax, [ebp-0x48]
	test eax, eax
	jle R_TakeResampledScreenshot_50
	mov esi, [ebp-0x1c]
	xor ebx, ebx
	mov eax, esi
	jmp R_TakeResampledScreenshot_110
R_TakeResampledScreenshot_120:
	mov eax, [ebp-0x1c]
R_TakeResampledScreenshot_110:
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	mov ecx, [ebp-0x48]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x40]
	call R_DownsamplePixelData
	add esi, edi
	add [ebp-0x1c], edi
	add ebx, 0x1
	cmp [ebp-0x48], ebx
	jnz R_TakeResampledScreenshot_120
	mov eax, [ebp-0x44]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_TakeResampledScreenshot_30:
	mov eax, [ebp-0x40]
	sub eax, 0x1
	mov edx, [ebp-0x3c]
	imul edx, eax
	imul edx, edi
	mov esi, [ebp-0x1c]
	add esi, edx
	mov edx, [ebp-0x48]
	imul edx, eax
	imul edx, edi
	mov ebx, [ebp-0x1c]
	add ebx, edx
	test eax, eax
	js R_TakeResampledScreenshot_70
	mov eax, [ebp-0x3c]
	imul eax, edi
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x48]
	imul eax, edi
	mov [ebp-0x28], eax
	mov dword [ebp-0x20], 0x0
R_TakeResampledScreenshot_130:
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x3c]
	call R_UpsamplePixelData
	sub esi, [ebp-0x2c]
	sub ebx, [ebp-0x28]
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x20]
	cmp [ebp-0x40], eax
	jnz R_TakeResampledScreenshot_130
	jmp R_TakeResampledScreenshot_70
R_TakeResampledScreenshot_10:
	mov eax, [ebp-0x44]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebp-0x44], 0x0
	jmp R_TakeResampledScreenshot_50
	nop


;R_LevelShot()
R_LevelShot:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x110
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz R_LevelShot_10
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_levelshotsstga
	lea esi, [ebp-0x108]
	mov [esp], esi
	call sprintf
R_LevelShot_30:
	mov dword [esp], 0x12
	mov ecx, 0x3
	mov edx, 0x80
	mov eax, 0x80
	call R_TakeResampledScreenshot
	mov ebx, eax
	test eax, eax
	jz R_LevelShot_20
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov word [eax+0x10], 0x0
	mov byte [eax+0x2], 0x2
	mov byte [eax+0xc], 0x80
	mov byte [eax+0xe], 0x80
	mov byte [eax+0x10], 0x18
	mov dword [esp+0x8], 0xc012
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_WriteFile
	mov [esp], ebx
	call Z_FreeInternal
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_wrote_s
	mov dword [esp], 0x8
	call Com_Printf
R_LevelShot_20:
	add esp, 0x110
	pop ebx
	pop esi
	pop ebp
	ret
R_LevelShot_10:
	mov dword [esp+0x8], _cstring_screenshot
	mov dword [esp+0x4], _cstring_levelshotsstga
	lea esi, [ebp-0x108]
	mov [esp], esi
	call sprintf
	jmp R_LevelShot_30


;R_EndCubemapShot(CubemapShot)
R_EndCubemapShot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, gfxMetrics
	movzx eax, word [ebx]
	imul eax, eax
	shl eax, 0x2
	mov [ebp-0x68], eax
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [ebp-0x5c], eax
	mov eax, [ebp+0x8]
	mov edx, [ebp-0x5c]
	mov [eax*4+lockPvsViewParms+0x15c], edx
	movzx eax, word [ebx]
	mov [ebp-0x64], eax
	movzx edi, word [ebx+0x2]
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov esi, dx_ctx
	mov edx, [esi+0x8]
	mov ecx, [edx]
	lea eax, [ebp-0x1c]
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call dword [ecx+0x48]
	mov ebx, eax
	test eax, eax
	js R_EndCubemapShot_10
	mov eax, [ebp-0x1c]
	mov ecx, [eax]
	lea edx, [ebp-0x58]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x30]
	mov ebx, eax
	test eax, eax
	js R_EndCubemapShot_20
	mov edx, [esi+0x8]
	mov ecx, [edx]
	mov dword [esp+0x18], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x2
	mov eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x90]
	mov ebx, eax
	test eax, eax
	js R_EndCubemapShot_30
	mov edx, [esi+0x8]
	mov ecx, [edx]
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x80]
	mov ebx, eax
	test eax, eax
	js R_EndCubemapShot_40
	mov [ebp-0x38], edi
	mov eax, [ebp-0x64]
	add eax, edi
	mov [ebp-0x30], eax
	mov [ebp-0x34], edi
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x20]
	mov ecx, [edx]
	mov dword [esp+0xc], 0x10
	lea eax, [ebp-0x38]
	mov [esp+0x8], eax
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x34]
	mov ebx, eax
	test eax, eax
	js R_EndCubemapShot_50
	mov edx, [ebp-0x24]
	mov [ebp-0x60], edx
	mov edi, [ebp-0x64]
	shl edi, 0x2
	cmp [ebp-0x28], edi
	jz R_EndCubemapShot_60
	mov ecx, [ebp-0x64]
	test ecx, ecx
	jg R_EndCubemapShot_70
R_EndCubemapShot_170:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x38]
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov ebx, alwaysfails
R_EndCubemapShot_80:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebp-0x20], 0x0
	mov esi, [ebx]
	test esi, esi
	jnz R_EndCubemapShot_80
R_EndCubemapShot_140:
	mov eax, gfxMetrics
	test word [eax], 0xfffe
	jz R_EndCubemapShot_90
	xor esi, esi
	mov eax, gfxMetrics
R_EndCubemapShot_120:
	movzx edx, word [eax]
	test edx, edx
	jle R_EndCubemapShot_100
	lea edi, [ebp-0x28]
	xor ebx, ebx
R_EndCubemapShot_110:
	mov ecx, esi
	imul ecx, edx
	lea ecx, [ebx+ecx]
	mov eax, [ebp-0x5c]
	lea ecx, [eax+ecx*4]
	mov eax, [ecx]
	mov [edi], eax
	mov eax, edx
	sub eax, esi
	sub eax, 0x1
	imul edx, eax
	lea eax, [ebx+edx]
	mov edx, [ebp-0x5c]
	lea eax, [edx+eax*4]
	mov edx, [eax]
	mov [ecx], edx
	mov edx, [edi]
	mov [eax], edx
	add ebx, 0x1
	mov eax, gfxMetrics
	movzx edx, word [eax]
	cmp ebx, edx
	jl R_EndCubemapShot_110
R_EndCubemapShot_100:
	mov edx, eax
	add esi, 0x1
	movzx eax, word [eax]
	shr ax, 1
	movzx eax, ax
	cmp esi, eax
	jge R_EndCubemapShot_90
	mov eax, edx
	jmp R_EndCubemapShot_120
R_EndCubemapShot_90:
	mov eax, vidConfig
	cmp byte [eax+0x2c], 0x0
	jz R_EndCubemapShot_130
	mov edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call R_GammaCorrect
R_EndCubemapShot_130:
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_EndCubemapShot_10:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak
R_EndCubemapShot_150:
	mov dword [esp], 0x8
	call Com_PrintError
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	jmp R_EndCubemapShot_140
R_EndCubemapShot_30:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak1
	jmp R_EndCubemapShot_150
R_EndCubemapShot_20:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak2
	jmp R_EndCubemapShot_150
R_EndCubemapShot_40:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak3
	jmp R_EndCubemapShot_150
R_EndCubemapShot_70:
	mov esi, [ebp-0x5c]
	xor ebx, ebx
R_EndCubemapShot_160:
	mov [esp+0x8], edi
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], esi
	call Com_Memcpy
	add esi, edi
	mov edx, [ebp-0x28]
	add [ebp-0x60], edx
	add ebx, 0x1
	cmp [ebp-0x64], ebx
	jnz R_EndCubemapShot_160
	jmp R_EndCubemapShot_170
R_EndCubemapShot_60:
	mov eax, [ebp-0x64]
	imul eax, eax
	mov [ebp-0x64], eax
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call Com_Memcpy
	jmp R_EndCubemapShot_170
R_EndCubemapShot_50:
	mov [esp], eax
	call R_ErrorDescription
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak4
	mov dword [esp], 0x8
	call Com_PrintError
	mov ebx, alwaysfails
R_EndCubemapShot_180:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebp-0x20], 0x0
	mov edi, [ebx]
	test edi, edi
	jnz R_EndCubemapShot_180
	jmp R_EndCubemapShot_140


;R_SaveCubemapShot(char const*, CubemapShot, float, float)
R_SaveCubemapShot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov eax, [ebp+0x8]
	mov [ebp-0x30], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x38], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x3c], xmm0
	sub edx, 0x1
	mov [ebp-0x2c], edx
	mov ebx, gfxMetrics
	movzx eax, word [ebx]
	imul eax, eax
	lea eax, [eax*4+0x12]
	mov [ebp-0x28], eax
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [ebp-0x20], eax
	movzx edx, word [ebx]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov word [eax+0x10], 0x0
	mov byte [eax+0x2], 0x2
	mov [eax+0xc], dl
	mov eax, edx
	sar eax, 0x8
	mov ecx, [ebp-0x20]
	mov [ecx+0xd], al
	mov [ecx+0xe], dl
	mov [ecx+0xf], al
	mov byte [ecx+0x10], 0x20
	mov eax, [ebp-0x2c]
	mov eax, [eax*4+cubeShotGlob]
	mov [ebp-0x24], eax
	movzx eax, word [ebx]
	test eax, eax
	jg R_SaveCubemapShot_10
	mov esi, ebx
R_SaveCubemapShot_100:
	movzx eax, word [esi]
	test eax, eax
	jle R_SaveCubemapShot_20
	mov edx, eax
	xor edi, edi
	movss xmm6, dword [_float_0_50000000]
R_SaveCubemapShot_70:
	cvtsi2ss xmm0, edi
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	jmp R_SaveCubemapShot_30
R_SaveCubemapShot_50:
	movss xmm0, dword [_float_1_00000000]
R_SaveCubemapShot_60:
	mulss xmm5, xmm0
	movss [esp+0x8], xmm5
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x38]
	movss [esp], xmm0
	call FresnelTerm
	fstp dword [ebp-0x5c]
	movss xmm0, dword [ebp-0x5c]
	mulss xmm0, [_float_255_00000000]
	movss xmm6, dword [_float_0_50000000]
	addss xmm0, xmm6
	movss [esp], xmm0
	movss [ebp-0x58], xmm6
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov edx, [ebp-0x20]
	mov [edx+esi+0x3], al
	add ebx, 0x1
	mov esi, gfxMetrics
	movzx edx, word [esi]
	cmp edx, ebx
	movss xmm6, dword [ebp-0x58]
	jle R_SaveCubemapShot_40
R_SaveCubemapShot_30:
	mov eax, edi
	imul eax, edx
	lea eax, [ebx+eax]
	lea esi, [eax*4+0x12]
	cvtsi2ss xmm1, edx
	movaps xmm0, xmm1
	mulss xmm0, xmm6
	mov ecx, [ebp-0x34]
	lea eax, [ecx+ecx*8]
	shl eax, 0x2
	lea edx, [eax+cubemapShotAxis]
	movaps xmm3, xmm0
	mulss xmm3, [eax+cubemapShotAxis]
	movaps xmm4, xmm0
	mulss xmm4, [edx+0x4]
	movaps xmm5, xmm0
	mulss xmm5, [edx+0x8]
	lea edx, [eax+0xc]
	lea ecx, [edx+cubemapShotAxis]
	mulss xmm1, [_float__0_50000000]
	cvtsi2ss xmm0, ebx
	addss xmm0, xmm1
	addss xmm0, xmm6
	movaps xmm2, xmm0
	mulss xmm2, [edx+cubemapShotAxis]
	addss xmm3, xmm2
	movaps xmm2, xmm0
	mulss xmm2, [ecx+0x4]
	addss xmm4, xmm2
	mulss xmm0, [ecx+0x8]
	addss xmm5, xmm0
	add eax, 0x18
	lea edx, [eax+cubemapShotAxis]
	addss xmm1, [ebp-0x1c]
	addss xmm1, xmm6
	movaps xmm0, xmm1
	mulss xmm0, [eax+cubemapShotAxis]
	addss xmm3, xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm4, xmm0
	mulss xmm1, [edx+0x8]
	addss xmm5, xmm1
	mulss xmm3, xmm3
	mulss xmm4, xmm4
	addss xmm3, xmm4
	movaps xmm0, xmm5
	mulss xmm0, xmm5
	addss xmm3, xmm0
	sqrtss xmm3, xmm3
	movaps xmm0, xmm3
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [_float_0_00000000]
	jae R_SaveCubemapShot_50
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm3
	jmp R_SaveCubemapShot_60
R_SaveCubemapShot_40:
	mov eax, edx
	add edi, 0x1
	cmp edi, eax
	jge R_SaveCubemapShot_20
R_SaveCubemapShot_80:
	mov edx, eax
	test eax, eax
	jg R_SaveCubemapShot_70
	add edi, 0x1
	cmp edi, eax
	jl R_SaveCubemapShot_80
R_SaveCubemapShot_20:
	mov ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call FS_WriteFile
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call Z_VirtualFreeInternal
	mov edx, [ebp-0x2c]
	mov eax, [edx*4+cubeShotGlob]
	mov [ebp+0x8], eax
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Z_VirtualFreeInternal
R_SaveCubemapShot_10:
	xor edi, edi
	mov esi, ebx
R_SaveCubemapShot_120:
	xor ebx, ebx
R_SaveCubemapShot_90:
	imul eax, edi
	lea eax, [ebx+eax]
	shl eax, 0x2
	mov edx, [ebp-0x20]
	lea ecx, [eax+edx+0x12]
	add eax, [ebp-0x24]
	movzx edx, byte [eax+0x2]
	mov [ecx+0x2], dl
	movzx edx, byte [eax+0x1]
	mov [ecx+0x1], dl
	movzx edx, byte [eax]
	mov [ecx], dl
	movzx eax, byte [eax+0x3]
	mov [ecx+0x3], al
	add ebx, 0x1
	movzx eax, word [esi]
	cmp eax, ebx
	jg R_SaveCubemapShot_90
	mov edx, eax
R_SaveCubemapShot_110:
	add edi, 0x1
	cmp edi, edx
	jge R_SaveCubemapShot_100
	mov eax, edx
	test edx, edx
	jle R_SaveCubemapShot_110
	jmp R_SaveCubemapShot_120


;R_BeginCubemapShot(int, int)
R_BeginCubemapShot:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, gfxMetrics
	mov eax, [ebp+0x8]
	mov [edx], ax
	mov eax, [ebp+0xc]
	mov [edx+0x2], ax
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call R_SetRenderTargetSize
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetRenderTarget
	mov eax, dx_ctx
	mov eax, [eax+0x8]
	mov edx, [eax]
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x3f800000
	mov dword [esp+0x10], 0xffff00ff
	mov dword [esp+0xc], 0x7
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0xac]
	leave
	ret
	nop


;R_ScreenshotCommand(GfxScreenshotType)
R_ScreenshotCommand:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov esi, [ebp+0x8]
	test esi, esi
	jz R_ScreenshotCommand_10
	cmp dword [ebp+0x8], 0x1
	jz R_ScreenshotCommand_20
R_ScreenshotCommand_210:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ScreenshotCommand_10:
	mov dword [ebp-0x224], _cstring_jpg
	mov eax, cmd_args
	mov eax, [eax]
	mov [ebp-0x220], eax
	mov edx, cmd_args
	mov ebx, [edx+eax*4+0x44]
	cmp ebx, 0x1
	jle R_ScreenshotCommand_30
R_ScreenshotCommand_240:
	mov eax, [edx+eax*4+0x64]
	mov edx, [eax+0x4]
R_ScreenshotCommand_250:
	mov edi, _cstring_levelshot
	mov ecx, 0xa
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz R_ScreenshotCommand_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
R_ScreenshotCommand_40:
	test edx, edx
	jz R_ScreenshotCommand_50
	cmp ebx, 0x1
	jle R_ScreenshotCommand_60
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
	mov eax, [edx+ecx*4+0x64]
	mov edx, [eax+0x4]
R_ScreenshotCommand_300:
	mov edi, _cstring_savegame
	mov ecx, 0x9
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz R_ScreenshotCommand_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
R_ScreenshotCommand_70:
	test edx, edx
	jnz R_ScreenshotCommand_80
	cmp ebx, 0x3
	jz R_ScreenshotCommand_90
R_ScreenshotCommand_80:
	cmp ebx, 0x1
	jle R_ScreenshotCommand_100
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
R_ScreenshotCommand_260:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
R_ScreenshotCommand_290:
	mov edi, _cstring_silent
	mov ecx, 0x7
	cld
	mov esi, eax
	repe cmpsb
	mov eax, 0x0
	jz R_ScreenshotCommand_110
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
R_ScreenshotCommand_110:
	test eax, eax
	setz al
	movzx eax, al
	mov [ebp-0x228], eax
	cmp ebx, 0x2
	jz R_ScreenshotCommand_120
R_ScreenshotCommand_270:
	mov eax, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
	mov edx, eax
	cmp eax, 0x270f
	jg R_ScreenshotCommand_130
	lea ebx, [ebp-0x118]
	jmp R_ScreenshotCommand_140
R_ScreenshotCommand_160:
	mov eax, [ebp-0x224]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_screenshotsshot9
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
R_ScreenshotCommand_170:
	mov [esp], ebx
	call FS_FileExists
	test eax, eax
	jz R_ScreenshotCommand_150
	mov edx, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
	add edx, 0x1
	mov eax, edx
	mov [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber], edx
	cmp edx, 0x270f
	jg R_ScreenshotCommand_130
R_ScreenshotCommand_140:
	cmp edx, 0x270f
	ja R_ScreenshotCommand_160
	mov ecx, [ebp-0x224]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_screenshotsshot0
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
	jmp R_ScreenshotCommand_170
R_ScreenshotCommand_150:
	mov eax, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
R_ScreenshotCommand_130:
	cmp eax, 0x270e
	jg R_ScreenshotCommand_180
	add eax, 0x1
	mov [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber], eax
R_ScreenshotCommand_280:
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jnz R_ScreenshotCommand_190
	mov eax, vidConfig
	mov edi, [eax+0xc]
	mov esi, [eax+0x8]
	mov eax, edi
	imul eax, esi
	lea eax, [eax+eax*2]
	mov [esp], eax
	call Z_MallocInternal
	mov ebx, eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	mov ecx, esi
	xor edx, edx
	xor eax, eax
	call R_GetFrontBufferData
	test al, al
	jnz R_ScreenshotCommand_200
R_ScreenshotCommand_310:
	mov [esp], ebx
	call Z_FreeInternal
R_ScreenshotCommand_230:
	mov ecx, [ebp-0x228]
	test ecx, ecx
	jnz R_ScreenshotCommand_210
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_wrote_s
	mov dword [esp], 0x8
	call Com_Printf
	jmp R_ScreenshotCommand_210
R_ScreenshotCommand_50:
	call R_LevelShot
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ScreenshotCommand_190:
	cmp dword [ebp+0x8], 0x1
	jnz R_ScreenshotCommand_210
	mov eax, vidConfig
	mov ebx, [eax+0xc]
	mov esi, [eax+0x8]
	mov eax, ebx
	imul eax, esi
	lea eax, [eax+eax*2+0x12]
	mov [ebp-0x21c], eax
	mov [esp], eax
	call Z_MallocInternal
	mov edi, eax
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov word [eax+0x10], 0x0
	mov byte [eax+0x2], 0x2
	mov eax, esi
	mov [edi+0xc], al
	mov eax, esi
	sar eax, 0x8
	mov [edi+0xd], al
	mov [edi+0xe], bl
	mov eax, ebx
	sar eax, 0x8
	mov [edi+0xf], al
	mov byte [edi+0x10], 0x18
	mov byte [edi+0x11], 0x20
	lea eax, [edi+0x12]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	mov ecx, esi
	xor edx, edx
	xor eax, eax
	call R_GetFrontBufferData
	test al, al
	jnz R_ScreenshotCommand_220
R_ScreenshotCommand_320:
	mov [esp], edi
	call Z_FreeInternal
	jmp R_ScreenshotCommand_230
R_ScreenshotCommand_20:
	mov dword [ebp-0x224], _cstring_tga
	mov eax, cmd_args
	mov eax, [eax]
	mov [ebp-0x220], eax
	mov edx, cmd_args
	mov ebx, [edx+eax*4+0x44]
	cmp ebx, 0x1
	jg R_ScreenshotCommand_240
R_ScreenshotCommand_30:
	mov edx, _cstring_null
	jmp R_ScreenshotCommand_250
R_ScreenshotCommand_90:
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x8]
	cmp byte [eax], 0x0
	jz R_ScreenshotCommand_260
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sjpg
	lea esi, [ebp-0x218]
	mov [esp], esi
	call sprintf
	mov dword [esp], 0x0
	mov ecx, 0x3
	mov edx, 0x200
	mov eax, 0x200
	call R_TakeResampledScreenshot
	mov ebx, eax
	test eax, eax
	jz R_ScreenshotCommand_210
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x200
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x5a
	mov [esp], esi
	call R_SaveJpg
	mov [esp], ebx
	call Z_FreeInternal
	jmp R_ScreenshotCommand_210
R_ScreenshotCommand_120:
	test eax, eax
	jnz R_ScreenshotCommand_270
	mov ecx, [ebp-0x224]
	mov [esp+0x10], ecx
	mov edx, [ebp-0x220]
	mov ecx, cmd_args
	mov eax, [ecx+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_screenshotsss
	mov dword [esp+0x4], 0x100
	lea eax, [ebp-0x118]
	mov [esp], eax
	call Com_sprintf
	jmp R_ScreenshotCommand_280
R_ScreenshotCommand_100:
	mov eax, _cstring_null
	jmp R_ScreenshotCommand_290
R_ScreenshotCommand_180:
	mov dword [esp+0x4], _cstring_screenshot_could
	mov dword [esp], 0x8
	call Com_Printf
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ScreenshotCommand_60:
	mov edx, _cstring_null
	jmp R_ScreenshotCommand_300
R_ScreenshotCommand_200:
	mov [esp+0x10], ebx
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x5a
	lea eax, [ebp-0x118]
	mov [esp], eax
	call R_SaveJpg
	jmp R_ScreenshotCommand_310
R_ScreenshotCommand_220:
	mov edx, [ebp-0x21c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call FS_WriteFile
	jmp R_ScreenshotCommand_320


;R_LightingFromCubemapShots(float const*)
R_LightingFromCubemapShots:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, gfxMetrics
	movzx ebx, word [esi]
	imul ebx, ebx
	lea eax, [ebx+ebx*8]
	shl eax, 0x3
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [ebp-0x30], eax
	lea ebx, [ebx+ebx*2]
	shl ebx, 0x2
	add eax, ebx
	mov [ebp-0x2c], eax
	lea eax, [ebx+eax]
	mov [ebp-0x28], eax
	lea eax, [ebx+eax]
	mov [ebp-0x24], eax
	lea eax, [ebx+eax]
	mov [ebp-0x20], eax
	add ebx, eax
	mov [ebp-0x1c], ebx
	movzx esi, word [esi]
	mov [ebp-0xc4], esi
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x58], cubeShotGlob
R_LightingFromCubemapShots_40:
	mov eax, [ebp-0xc4]
	test eax, eax
	jle R_LightingFromCubemapShots_10
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0xbc], 0x0
R_LightingFromCubemapShots_30:
	mov edx, [ebp-0xb8]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov [ebp-0x60], eax
	mov edi, edx
	shl edi, 0x2
	mov dword [ebp-0xc0], 0x0
R_LightingFromCubemapShots_20:
	mov eax, [ebp-0x5c]
	lea ebx, [ebp+eax*4-0x30]
	mov esi, [ebx-0x4]
	mov edx, [ebp-0x58]
	mov eax, [edx]
	movzx eax, byte [edi+eax+0x2]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	mov dword [esp+0x8], 0xa0000000
	mov dword [esp+0xc], 0x40019999
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0xd0]
	cvtsd2ss xmm0, [ebp-0xd0]
	mov eax, [ebp-0x60]
	movss [eax+esi], xmm0
	mov esi, [ebx-0x4]
	mov edx, [ebp-0x58]
	mov eax, [edx]
	movzx eax, byte [edi+eax+0x1]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	mov dword [esp+0x8], 0xa0000000
	mov dword [esp+0xc], 0x40019999
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0xd8]
	cvtsd2ss xmm0, [ebp-0xd8]
	mov eax, [ebp-0x60]
	movss [eax+esi+0x4], xmm0
	mov ebx, [ebx-0x4]
	mov edx, [ebp-0x58]
	mov eax, [edx]
	movzx eax, byte [edi+eax]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	mov dword [esp+0x8], 0xa0000000
	mov dword [esp+0xc], 0x40019999
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call pow
	fstp qword [ebp-0xe0]
	cvtsd2ss xmm0, [ebp-0xe0]
	mov eax, [ebp-0x60]
	movss [eax+ebx+0x8], xmm0
	add dword [ebp-0xc0], 0x1
	add eax, 0xc
	mov [ebp-0x60], eax
	add edi, 0x4
	mov eax, [ebp-0xc0]
	cmp [ebp-0xc4], eax
	jnz R_LightingFromCubemapShots_20
	add [ebp-0xb8], eax
	add dword [ebp-0xbc], 0x1
	mov edx, [ebp-0xbc]
	cmp eax, edx
	jnz R_LightingFromCubemapShots_30
R_LightingFromCubemapShots_10:
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x4
	cmp dword [ebp-0x5c], 0x7
	jnz R_LightingFromCubemapShots_40
	mov eax, gfxMetrics
	movzx esi, word [eax]
	xor eax, eax
	cvtsi2ss xmm0, esi
	movss [ebp-0x118], xmm0
R_LightingFromCubemapShots_200:
	test esi, esi
	jle R_LightingFromCubemapShots_50
	lea edx, [eax+0x1]
	mov [ebp-0x54], edx
	lea eax, [eax*4+cubeShotGlob]
	mov [ebp-0x70], eax
	mov dword [ebp-0xb0], 0x0
	lea eax, [edx+edx*8]
	shl eax, 0x2
	mov [ebp-0xe4], eax
	add eax, 0x18
	mov [ebp-0xe8], eax
	mov dword [ebp-0x114], 0x0
R_LightingFromCubemapShots_190:
	cvtsi2ss xmm0, dword [ebp-0xb0]
	movss xmm1, dword [_float_0_50000000]
	addss xmm1, xmm0
	addss xmm1, xmm1
	divss xmm1, dword [ebp-0x118]
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x6c], xmm1
	mov eax, [ebp-0x114]
	shl eax, 0x2
	mov [ebp-0x64], eax
	mov dword [ebp-0xb4], 0x0
R_LightingFromCubemapShots_180:
	cvtsi2ss xmm0, dword [ebp-0xb4]
	addss xmm0, [_float_0_50000000]
	addss xmm0, xmm0
	divss xmm0, dword [ebp-0x118]
	subss xmm0, [_float_1_00000000]
	mov eax, [ebp-0xe4]
	add eax, 0xc
	lea edx, [eax+cubemapShotAxis]
	mov ecx, [ebp-0xe4]
	add ecx, cubemapShotAxis
	movaps xmm4, xmm0
	mulss xmm4, [eax+cubemapShotAxis]
	mov eax, [ebp-0xe4]
	addss xmm4, [eax+cubemapShotAxis]
	movaps xmm3, xmm0
	mulss xmm3, [edx+0x4]
	addss xmm3, [ecx+0x4]
	movaps xmm2, xmm0
	mulss xmm2, [edx+0x8]
	addss xmm2, [ecx+0x8]
	mov eax, [ebp-0xe8]
	add eax, cubemapShotAxis
	movss xmm0, dword [ebp-0x6c]
	mov edx, [ebp-0xe8]
	mulss xmm0, [edx+cubemapShotAxis]
	addss xmm4, xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [eax+0x4]
	addss xmm3, xmm0
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jb R_LightingFromCubemapShots_60
	movss xmm0, dword [_float_1_00000000]
R_LightingFromCubemapShots_240:
	mulss xmm4, xmm0
	movss [ebp-0x3c], xmm4
	mulss xmm3, xmm0
	movss [ebp-0x40], xmm3
	mulss xmm2, xmm0
	movss [ebp-0x44], xmm2
	mov edx, [ebp-0x64]
	mov eax, [ebp-0x70]
	add edx, [eax]
	mov [ebp-0xac], edx
	xor ebx, ebx
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x68], 0x1
	mov edi, 0x4
	mov dword [ebp-0x110], 0x24
R_LightingFromCubemapShots_140:
	mov eax, [ebp-0x110]
	movss xmm0, dword [eax+cubemapShotAxis]
	movss [ebp-0xa4], xmm0
	movss xmm1, dword [eax+cubemapShotAxis+0xc]
	movss [ebp-0xa0], xmm1
	movss xmm2, dword [eax+cubemapShotAxis+0x4]
	movss [ebp-0x9c], xmm2
	movss xmm5, dword [eax+cubemapShotAxis+0x10]
	movss [ebp-0x98], xmm5
	movss xmm6, dword [eax+cubemapShotAxis+0x8]
	movss [ebp-0x94], xmm6
	movss xmm0, dword [eax+cubemapShotAxis+0x14]
	movss [ebp-0x90], xmm0
	movss xmm1, dword [eax+cubemapShotAxis+0x18]
	movss [ebp-0x8c], xmm1
	movss xmm2, dword [eax+cubemapShotAxis+0x1c]
	movss [ebp-0x88], xmm2
	movss xmm5, dword [eax+cubemapShotAxis+0x20]
	movss [ebp-0x84], xmm5
	mov dword [ebp-0xa8], 0x0
	movaps xmm7, xmm1
R_LightingFromCubemapShots_130:
	cvtsi2ss xmm0, dword [ebp-0xa8]
	addss xmm0, [_float_0_50000000]
	addss xmm0, xmm0
	divss xmm0, dword [ebp-0x118]
	subss xmm0, [_float_1_00000000]
	mulss xmm7, xmm0
	movss xmm1, dword [ebp-0x88]
	mulss xmm1, xmm0
	movss [ebp-0x11c], xmm1
	movaps xmm5, xmm0
	mulss xmm5, [ebp-0x84]
	mov eax, [ebp-0xa8]
	imul eax, esi
	lea eax, [eax+eax*2]
	lea ecx, [eax*4]
	xor edx, edx
	jmp R_LightingFromCubemapShots_70
R_LightingFromCubemapShots_100:
	movss xmm0, dword [_float_1_00000000]
R_LightingFromCubemapShots_110:
	movaps xmm1, xmm4
	mulss xmm1, xmm0
	mulss xmm1, [ebp-0x3c]
	mulss xmm3, xmm0
	mulss xmm3, [ebp-0x40]
	addss xmm1, xmm3
	mulss xmm2, xmm0
	mulss xmm2, [ebp-0x44]
	addss xmm1, xmm2
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	jae R_LightingFromCubemapShots_80
	mov eax, ecx
	add eax, [edi+ebp-0x34]
	movaps xmm0, xmm1
	mulss xmm0, [eax]
	addss xmm0, [ebp-0x74]
	movss [ebp-0x74], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebp-0x78]
	movss [ebp-0x78], xmm0
	mulss xmm1, [eax+0x8]
	addss xmm1, [ebp-0x7c]
	movss [ebp-0x7c], xmm1
	add ebx, 0x1
R_LightingFromCubemapShots_80:
	add edx, 0x1
	add ecx, 0xc
	cmp esi, edx
	jz R_LightingFromCubemapShots_90
R_LightingFromCubemapShots_70:
	cvtsi2ss xmm0, edx
	addss xmm0, [_float_0_50000000]
	addss xmm0, xmm0
	divss xmm0, dword [ebp-0x118]
	subss xmm0, [_float_1_00000000]
	movss xmm4, dword [ebp-0xa0]
	mulss xmm4, xmm0
	addss xmm4, [ebp-0xa4]
	movss xmm3, dword [ebp-0x98]
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x9c]
	movaps xmm2, xmm0
	mulss xmm2, [ebp-0x90]
	addss xmm2, [ebp-0x94]
	addss xmm4, xmm7
	addss xmm3, [ebp-0x11c]
	addss xmm2, xmm5
	movaps xmm0, xmm4
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	mulss xmm1, xmm3
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, xmm2
	addss xmm0, xmm1
	sqrtss xmm1, xmm0
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	pxor xmm6, xmm6
	ucomiss xmm0, xmm6
	jae R_LightingFromCubemapShots_100
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp R_LightingFromCubemapShots_110
R_LightingFromCubemapShots_90:
	add dword [ebp-0xa8], 0x1
	cmp esi, [ebp-0xa8]
	jz R_LightingFromCubemapShots_120
	movss xmm7, dword [ebp-0x8c]
	jmp R_LightingFromCubemapShots_130
R_LightingFromCubemapShots_120:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x110], 0x24
	add edi, 0x4
	cmp dword [ebp-0x68], 0x7
	jnz R_LightingFromCubemapShots_140
	cvtsi2ss xmm0, ebx
	movss xmm2, dword [_float_1_00000000]
	divss xmm2, xmm0
	movss [ebp-0x80], xmm2
	mulss xmm2, [ebp-0x74]
	mov dword [esp+0x8], 0xc0000000
	mov dword [esp+0xc], 0x3fdd1745
	cvtss2sd xmm5, xmm2
	movsd [esp], xmm5
	call pow
	fstp qword [ebp-0xf0]
	cvtsd2ss xmm6, [ebp-0xf0]
	movss [ebp-0x48], xmm6
	movss xmm0, dword [ebp-0x80]
	mulss xmm0, [ebp-0x78]
	mov dword [esp+0x8], 0xc0000000
	mov dword [esp+0xc], 0x3fdd1745
	cvtss2sd xmm1, xmm0
	movsd [esp], xmm1
	call pow
	fstp qword [ebp-0xf8]
	cvtsd2ss xmm2, [ebp-0xf8]
	movss [ebp-0x4c], xmm2
	movss xmm5, dword [ebp-0x80]
	mulss xmm5, [ebp-0x7c]
	mov dword [esp+0x8], 0xc0000000
	mov dword [esp+0xc], 0x3fdd1745
	cvtss2sd xmm6, xmm5
	movsd [esp], xmm6
	call pow
	fstp qword [ebp-0x100]
	cvtsd2ss xmm0, [ebp-0x100]
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x48]
	mov eax, [ebp+0x8]
	mulss xmm1, [eax]
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [eax+0x4]
	movss [ebp-0x4c], xmm0
	movss xmm2, dword [ebp-0x50]
	mulss xmm2, [eax+0x8]
	movss [ebp-0x50], xmm2
	mov ebx, [ebp-0xac]
	add ebx, 0x2
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm5, xmm5
	ucomiss xmm0, xmm5
	jb R_LightingFromCubemapShots_150
	movss xmm0, dword [_float_255_00000000]
R_LightingFromCubemapShots_230:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x104]
	cvttss2si eax, [ebp-0x104]
	mov [ebx], al
	mov ebx, [ebp-0xac]
	add ebx, 0x1
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [_float_1_00000000]
	pxor xmm6, xmm6
	ucomiss xmm0, xmm6
	jb R_LightingFromCubemapShots_160
	movss xmm0, dword [_float_255_00000000]
R_LightingFromCubemapShots_220:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x108]
	cvttss2si eax, [ebp-0x108]
	mov [ebx], al
	movss xmm0, dword [ebp-0x50]
	subss xmm0, [_float_1_00000000]
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb R_LightingFromCubemapShots_170
	movss xmm0, dword [_float_255_00000000]
R_LightingFromCubemapShots_210:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10c]
	cvttss2si eax, [ebp-0x10c]
	mov edx, [ebp-0xac]
	mov [edx], al
	mov byte [edx+0x3], 0xff
	add dword [ebp-0xb4], 0x1
	add dword [ebp-0x64], 0x4
	cmp esi, [ebp-0xb4]
	jnz R_LightingFromCubemapShots_180
	add dword [ebp-0xb0], 0x1
	add [ebp-0x114], esi
	cmp esi, [ebp-0xb0]
	jnz R_LightingFromCubemapShots_190
	mov eax, [ebp-0x54]
R_LightingFromCubemapShots_250:
	cmp eax, 0x5
	jle R_LightingFromCubemapShots_200
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_LightingFromCubemapShots_170:
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [_float_255_00000000]
	jmp R_LightingFromCubemapShots_210
R_LightingFromCubemapShots_160:
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [_float_255_00000000]
	jmp R_LightingFromCubemapShots_220
R_LightingFromCubemapShots_150:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp R_LightingFromCubemapShots_230
R_LightingFromCubemapShots_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp R_LightingFromCubemapShots_240
R_LightingFromCubemapShots_50:
	add eax, 0x1
	jmp R_LightingFromCubemapShots_250
	nop


;R_CreateReflectionRawDataFromCubemapShot(DiskGfxReflectionProbe*, int)
R_CreateReflectionRawDataFromCubemapShot:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ec
	mov dword [ebp-0x19c], cubeShotGlob
R_CreateReflectionRawDataFromCubemapShot_110:
	mov eax, gfxMetrics
	movzx eax, word [eax]
	mov [ebp-0x1b4], eax
	mov eax, [ebp-0x19c]
	mov eax, [eax]
	mov [ebp-0x1d0], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jle R_CreateReflectionRawDataFromCubemapShot_10
	mov dword [ebp-0x1b0], 0x0
	movss xmm1, dword [_float_0_06250000]
	mov eax, [ebp-0x1b0]
R_CreateReflectionRawDataFromCubemapShot_100:
	imul eax, [ebp+0xc]
	mov ecx, [ebp-0x1d0]
	lea eax, [ecx+eax*4]
	mov [ebp-0x1a0], eax
	mov dword [ebp-0x1ac], 0x0
	mov edx, [ebp-0x1ac]
R_CreateReflectionRawDataFromCubemapShot_80:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	shl edx, 0x2
	mov [ebp-0x1a8], edx
	xor edi, edi
	mov ecx, [ebp-0x1b0]
	shl ecx, 0x2
	mov [ebp-0x1cc], ecx
	mov eax, ecx
R_CreateReflectionRawDataFromCubemapShot_50:
	add eax, edi
	imul eax, [ebp-0x1b4]
	add eax, [ebp-0x1a8]
	mov edx, [ebp-0x1d0]
	lea ebx, [edx+eax*4]
	xor esi, esi
R_CreateReflectionRawDataFromCubemapShot_30:
	mov ecx, 0x1
	lea edx, [ebp-0x30]
	add edx, 0x4
R_CreateReflectionRawDataFromCubemapShot_20:
	movzx eax, byte [ecx+ebx-0x1]
	cvtsi2ss xmm0, eax
	addss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz R_CreateReflectionRawDataFromCubemapShot_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x4
	jnz R_CreateReflectionRawDataFromCubemapShot_30
	add edi, 0x1
	cmp edi, 0x4
	jz R_CreateReflectionRawDataFromCubemapShot_40
	mov eax, [ebp-0x1cc]
	jmp R_CreateReflectionRawDataFromCubemapShot_50
R_CreateReflectionRawDataFromCubemapShot_40:
	mov cl, 0x1
	lea edx, [ebp-0x30]
	add edx, 0x4
R_CreateReflectionRawDataFromCubemapShot_60:
	movss xmm0, dword [edx-0x4]
	mulss xmm0, xmm1
	movss [edx-0x4], xmm0
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x1a0]
	mov [ebx+ecx-0x1], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz R_CreateReflectionRawDataFromCubemapShot_60
	add dword [ebp-0x1ac], 0x1
	add ebx, 0x4
	mov [ebp-0x1a0], ebx
	mov eax, [ebp-0x1ac]
	cmp [ebp+0xc], eax
	jz R_CreateReflectionRawDataFromCubemapShot_70
	mov edx, eax
	jmp R_CreateReflectionRawDataFromCubemapShot_80
R_CreateReflectionRawDataFromCubemapShot_70:
	add dword [ebp-0x1b0], 0x1
	mov edx, [ebp-0x1b0]
	cmp [ebp+0xc], edx
	jz R_CreateReflectionRawDataFromCubemapShot_90
	mov eax, edx
	jmp R_CreateReflectionRawDataFromCubemapShot_100
R_CreateReflectionRawDataFromCubemapShot_90:
	mov ebx, [ebp-0x19c]
	mov ebx, [ebx]
	mov [ebp-0x1d0], ebx
R_CreateReflectionRawDataFromCubemapShot_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1d0]
	mov [esp], edx
	call Image_FlipVertically
	add dword [ebp-0x19c], 0x4
	mov ecx, _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	cmp ecx, [ebp-0x19c]
	jnz R_CreateReflectionRawDataFromCubemapShot_110
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], cubeShotGlob
	call CubeMap_FlipSides
	mov eax, ebx
	imul eax, ebx
	shl eax, 0x2
	mov [ebp-0x1c4], eax
	mov edx, [ebp+0x8]
	add edx, 0x4c
	lea ebx, [ebp-0x198]
	mov edi, cubeShotGlob
R_CreateReflectionRawDataFromCubemapShot_130:
	mov [ebx], edx
	mov esi, [ebp-0x1c4]
	add esi, edx
	mov eax, [edi]
	mov ecx, [ebp-0x1c4]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add ebx, 0x3c
	add edi, 0x4
	lea eax, [ebp-0x30]
	cmp eax, ebx
	jz R_CreateReflectionRawDataFromCubemapShot_120
	mov edx, esi
	jmp R_CreateReflectionRawDataFromCubemapShot_130
R_CreateReflectionRawDataFromCubemapShot_120:
	call CubeMap_CacheHighMipDirs
	mov dword [ebp-0x1bc], 0x0
	mov dword [ebp-0x1a4], cubeShotGlob
	mov dword [ebp-0x1d4], 0x0
R_CreateReflectionRawDataFromCubemapShot_180:
	mov edx, [ebp-0x1a4]
	mov edx, [edx]
	mov [ebp-0x1c0], edx
	lea edi, [ebp-0x198]
	add edi, [ebp-0x1d4]
	mov [ebp-0x1b8], esi
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x1c8], 0x1
	mov eax, ebx
	jmp R_CreateReflectionRawDataFromCubemapShot_140
R_CreateReflectionRawDataFromCubemapShot_160:
	lea eax, [ebp-0x20]
R_CreateReflectionRawDataFromCubemapShot_170:
	mov ebx, [eax]
	mov eax, ebx
	imul eax, ebx
	shl eax, 0x2
	mov [edi+0x4], esi
	add esi, eax
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c0]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1b8]
	mov [esp], edx
	call memcpy
	add dword [ebp-0x1c8], 0x1
	add edi, 0x4
	cmp ebx, 0x1
	jz R_CreateReflectionRawDataFromCubemapShot_150
	mov [ebp-0x1b8], esi
	mov eax, [ebp+0xc]
R_CreateReflectionRawDataFromCubemapShot_140:
	mov ecx, [ebp-0x1bc]
	mov [esp+0x10], ecx
	mov [esp+0xc], eax
	lea edx, [ebp-0x198]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x1c0]
	mov [esp], ecx
	call CubeMap_GenerateMipMap32
	mov eax, ebx
	sar eax, 1
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x1
	sub eax, 0x1
	jg R_CreateReflectionRawDataFromCubemapShot_160
	lea eax, [ebp-0x1c]
	jmp R_CreateReflectionRawDataFromCubemapShot_170
R_CreateReflectionRawDataFromCubemapShot_150:
	add dword [ebp-0x1bc], 0x1
	add dword [ebp-0x1d4], 0x3c
	add dword [ebp-0x1a4], 0x4
	cmp dword [ebp-0x1bc], 0x6
	jnz R_CreateReflectionRawDataFromCubemapShot_180
	mov eax, [ebp-0x1c8]
	test eax, eax
	jg R_CreateReflectionRawDataFromCubemapShot_190
R_CreateReflectionRawDataFromCubemapShot_220:
	mov ebx, cubeShotGlob
R_CreateReflectionRawDataFromCubemapShot_200:
	mov eax, [ebx]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add ebx, 0x4
	mov edx, _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	cmp edx, ebx
	jnz R_CreateReflectionRawDataFromCubemapShot_200
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_CreateReflectionRawDataFromCubemapShot_190:
	xor ebx, ebx
R_CreateReflectionRawDataFromCubemapShot_210:
	mov eax, [ebp+0xc]
	mov ecx, ebx
	sar eax, cl
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x198]
	mov [esp], eax
	call CubeMap_BlendFaceEdges
	add ebx, 0x1
	cmp ebx, [ebp-0x1c8]
	jnz R_CreateReflectionRawDataFromCubemapShot_210
	jmp R_CreateReflectionRawDataFromCubemapShot_220
	nop


;Initialized global or static variables of r_screenshot:
SECTION .data


;Initialized constant data of r_screenshot:
SECTION .rdata
cubemapShotAxis: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0xbf800000, 0xbf800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0xbf800000, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x0, 0x3f800000, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x0, 0x0, 0x3f800000, 0xbf800000, 0x0, 0x0, 0x0, 0xbf800000, 0x0, 0x0, 0x0, 0x3f800000, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_screenshot:
SECTION .bss
cubeShotGlob: resb 0x18
_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber: resb 0x68


;All cstrings:
SECTION .rdata
_cstring_levelshotsstga:		db "levelshots/%s.tga",0
_cstring_wrote_s:		db "Wrote %s",0ah,0
_cstring_screenshot:		db "screenshot",0
_cstring_error_cannot_tak:		db "ERROR: cannot take screenshot: couldn",27h,"t get back buffer surface: %s (0x%08x)",0ah,0
_cstring_error_cannot_tak1:		db "ERROR: cannot take screenshot: couldn",27h,"t create the off-screen surface: %s (0x%08x)",0ah,0
_cstring_error_cannot_tak2:		db "ERROR: cannot take screenshot: couldn",27h,"t get desc: %s (0x%08x)",0ah,0
_cstring_error_cannot_tak3:		db "ERROR: cannot take screenshot: GetRenderTargetData failed: %s (0x%08x)",0ah,0
_cstring_error_cannot_tak4:		db "ERROR: cannot take screenshot: LockRect failed: %s (0x%08x)",0ah,0
_cstring_jpg:		db "jpg",0
_cstring_levelshot:		db "levelshot",0
_cstring_savegame:		db "savegame",0
_cstring_silent:		db "silent",0
_cstring_screenshotsshot9:		db "screenshots/shot9999.%s",0
_cstring_screenshotsshot0:		db "screenshots/shot%04i.%s",0
_cstring_tga:		db "tga",0
_cstring_null:		db 0
_cstring_sjpg:		db "%s.jpg",0
_cstring_screenshotsss:		db "screenshots/%s.%s",0
_cstring_screenshot_could:		db "ScreenShot: Couldn",27h,"t create a file",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_255_00000000:		dd 0x437f0000	; 255
_float__0_50000000:		dd 0xbf000000	; -0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
_float_0_00000000:		dd 0x0	; 0
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_0_06250000:		dd 0x3d800000	; 0.0625

