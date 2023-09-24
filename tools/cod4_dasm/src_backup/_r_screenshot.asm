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
	extern _Z12FS_WriteFilePKcPKvi
	extern _Z10Com_PrintfiPKcz
	extern gfxMetrics
	extern Z_VirtualAllocInternal
	extern lockPvsViewParms
	extern dx_ctx
	extern alwaysfails
	extern _Z14R_GammaCorrectPhi
	extern gfxCmdBufSourceState
	extern _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	extern gfxCmdBufContext
	extern _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	extern _Z18R_ErrorDescriptionl
	extern _Z14Com_PrintErroriPKcz
	extern Com_Memcpy
	extern _Z11FresnelTermfff
	extern Z_VirtualFreeInternal
	extern cmd_args
	extern _Z11Com_sprintfPciPKcz
	extern _Z13FS_FileExistsPKc
	extern _Z9R_SaveJpgPKciiiPh
	extern pow
	extern _Z20Image_FlipVerticallyPhi
	extern _Z17CubeMap_FlipSidesPPhi
	extern memcpy
	extern _Z24CubeMap_CacheHighMipDirsv
	extern _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii
	extern _Z22CubeMap_BlendFaceEdgesPA15_Phii

;Exports of r_screenshot:
	global cubeShotGlob
	global cubemapShotAxis
	global _Z19R_UpsamplePixelDataiiiiPhS_
	global _Z21R_DownsamplePixelDataiiiiPhS_
	global _Z20R_GetFrontBufferDataiiiiiPh
	global _Z25R_TakeResampledScreenshotiiii
	global _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	global _Z11R_LevelShotv
	global _Z16R_EndCubemapShot11CubemapShot
	global _Z17R_SaveCubemapShotPKc11CubemapShotff
	global _Z18R_BeginCubemapShotii
	global _Z19R_ScreenshotCommand17GfxScreenshotType
	global _Z26R_LightingFromCubemapShotsPKf
	global _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei


SECTION .text


;R_UpsamplePixelData(int, int, int, int, unsigned char*, unsigned char*)
_Z19R_UpsamplePixelDataiiiiPhS_:
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
	js _Z19R_UpsamplePixelDataiiiiPhS__10
	add ebx, ebx
	mov [ebp-0x20], ebx
	mov eax, [ebp-0x38]
	add eax, eax
	mov [ebp-0x34], eax
	mov dword [ebp-0x1c], 0x0
	jmp _Z19R_UpsamplePixelDataiiiiPhS__20
_Z19R_UpsamplePixelDataiiiiPhS__40:
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
	js _Z19R_UpsamplePixelDataiiiiPhS__30
_Z19R_UpsamplePixelDataiiiiPhS__50:
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x38], edx
	jz _Z19R_UpsamplePixelDataiiiiPhS__10
_Z19R_UpsamplePixelDataiiiiPhS__20:
	mov edx, [ebp+0xc]
	cmp [ebp-0x24], edx
	jb _Z19R_UpsamplePixelDataiiiiPhS__40
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
	jns _Z19R_UpsamplePixelDataiiiiPhS__50
_Z19R_UpsamplePixelDataiiiiPhS__30:
	mov ebx, [ebp-0x34]
	sub [ebp-0x30], ebx
	add esi, ebx
	mov eax, [ebp-0x28]
	sub [ebp-0x24], eax
	add dword [ebp-0x1c], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x38], edx
	jnz _Z19R_UpsamplePixelDataiiiiPhS__20
_Z19R_UpsamplePixelDataiiiiPhS__10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_DownsamplePixelData(int, int, int, int, unsigned char*, unsigned char*)
_Z21R_DownsamplePixelDataiiiiPhS_:
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
	jle _Z21R_DownsamplePixelDataiiiiPhS__10
	mov [ebp-0x30], edx
	mov dword [ebp-0x2c], 0x0
	mov ecx, edx
	jmp _Z21R_DownsamplePixelDataiiiiPhS__20
_Z21R_DownsamplePixelDataiiiiPhS__30:
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
	jz _Z21R_DownsamplePixelDataiiiiPhS__10
	mov ecx, [ebp-0x30]
_Z21R_DownsamplePixelDataiiiiPhS__20:
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
	jg _Z21R_DownsamplePixelDataiiiiPhS__30
_Z21R_DownsamplePixelDataiiiiPhS__40:
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
	jle _Z21R_DownsamplePixelDataiiiiPhS__40
	jmp _Z21R_DownsamplePixelDataiiiiPhS__30
_Z21R_DownsamplePixelDataiiiiPhS__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetFrontBufferData(int, int, int, int, int, unsigned char*)
_Z20R_GetFrontBufferDataiiiiiPh:
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
	js _Z20R_GetFrontBufferDataiiiiiPh_10
	lea ebx, [edx+0x84bf]
	mov esi, 0x84bf
_Z20R_GetFrontBufferDataiiiiiPh_20:
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
	jnz _Z20R_GetFrontBufferDataiiiiiPh_20
_Z20R_GetFrontBufferDataiiiiiPh_10:
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
	jnz _Z20R_GetFrontBufferDataiiiiiPh_30
	cmp dword [ebp+0xc], 0x3
	jz _Z20R_GetFrontBufferDataiiiiiPh_40
	cmp dword [ebp+0xc], 0x4
	jz _Z20R_GetFrontBufferDataiiiiiPh_50
_Z20R_GetFrontBufferDataiiiiiPh_30:
	xor ebx, ebx
	mov esi, [ebp-0x34]
_Z20R_GetFrontBufferDataiiiiiPh_130:
	mov edx, [ebp-0x30]
	cmp edx, esi
	jz _Z20R_GetFrontBufferDataiiiiiPh_60
	mov eax, esi
_Z20R_GetFrontBufferDataiiiiiPh_70:
	add eax, 0x1
	cmp eax, edx
	jnz _Z20R_GetFrontBufferDataiiiiiPh_70
_Z20R_GetFrontBufferDataiiiiiPh_60:
	test esi, esi
	jz _Z20R_GetFrontBufferDataiiiiiPh_80
	mov [esp], esi
	call _ZdlPv
_Z20R_GetFrontBufferDataiiiiiPh_80:
	mov eax, ebx
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20R_GetFrontBufferDataiiiiiPh_40:
	mov eax, [ebp+0x8]
	test eax, eax
	jle _Z20R_GetFrontBufferDataiiiiiPh_90
	mov ebx, [ebp+0x8]
	lea ebx, [ebx+ebx*2-0x3]
	mov [ebp-0x40], ebx
	xor edi, edi
	mov esi, [ebp-0x34]
_Z20R_GetFrontBufferDataiiiiiPh_120:
	mov eax, [ebp-0x44]
	imul eax, edi
	lea ecx, [esi+eax]
	mov eax, [ebp-0x48]
	imul eax, [ebp-0x40]
	mov edx, [ebp+0x10]
	add edx, eax
	mov eax, [ebp-0x48]
	test eax, eax
	jle _Z20R_GetFrontBufferDataiiiiiPh_100
	xor ebx, ebx
_Z20R_GetFrontBufferDataiiiiiPh_110:
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
	jnz _Z20R_GetFrontBufferDataiiiiiPh_110
_Z20R_GetFrontBufferDataiiiiiPh_100:
	add edi, 0x1
	sub dword [ebp-0x40], 0x3
	cmp edi, [ebp+0x8]
	jnz _Z20R_GetFrontBufferDataiiiiiPh_120
	mov ebx, 0x1
	jmp _Z20R_GetFrontBufferDataiiiiiPh_130
_Z20R_GetFrontBufferDataiiiiiPh_50:
	mov eax, [ebp+0x8]
	test eax, eax
	jle _Z20R_GetFrontBufferDataiiiiiPh_90
	mov eax, [ebp+0x8]
	lea eax, [eax*4-0x4]
	mov [ebp-0x3c], eax
	xor edi, edi
	mov esi, [ebp-0x34]
_Z20R_GetFrontBufferDataiiiiiPh_160:
	mov eax, [ebp-0x44]
	imul eax, edi
	lea ecx, [esi+eax]
	mov eax, [ebp-0x48]
	imul eax, [ebp-0x3c]
	mov ebx, [ebp+0x10]
	lea edx, [eax+ebx]
	mov eax, [ebp-0x48]
	test eax, eax
	jle _Z20R_GetFrontBufferDataiiiiiPh_140
	xor ebx, ebx
_Z20R_GetFrontBufferDataiiiiiPh_150:
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
	jnz _Z20R_GetFrontBufferDataiiiiiPh_150
_Z20R_GetFrontBufferDataiiiiiPh_140:
	add edi, 0x1
	sub dword [ebp-0x3c], 0x4
	cmp edi, [ebp+0x8]
	jnz _Z20R_GetFrontBufferDataiiiiiPh_160
	mov ebx, 0x1
	jmp _Z20R_GetFrontBufferDataiiiiiPh_130
_Z20R_GetFrontBufferDataiiiiiPh_90:
	mov esi, [ebp-0x34]
	mov ebx, 0x1
	jmp _Z20R_GetFrontBufferDataiiiiiPh_130
	mov [esp], eax
	call _Unwind_Resume
	mov ebx, eax
	mov edx, [ebp-0x30]
	mov esi, [ebp-0x34]
	cmp edx, esi
	jz _Z20R_GetFrontBufferDataiiiiiPh_170
	mov eax, esi
_Z20R_GetFrontBufferDataiiiiiPh_180:
	add eax, 0x1
	cmp eax, edx
	jnz _Z20R_GetFrontBufferDataiiiiiPh_180
_Z20R_GetFrontBufferDataiiiiiPh_170:
	test esi, esi
	jz _Z20R_GetFrontBufferDataiiiiiPh_190
	mov [esp], esi
	call _ZdlPv
_Z20R_GetFrontBufferDataiiiiiPh_190:
	mov [esp], ebx
	call _Unwind_Resume


;R_TakeResampledScreenshot(int, int, int, int)
_Z25R_TakeResampledScreenshotiiii:
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
	call _Z20R_GetFrontBufferDataiiiiiPh
	test al, al
	jz _Z25R_TakeResampledScreenshotiiii_10
	add esi, [ebp-0x44]
	mov [ebp-0x1c], esi
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov ebx, [ebx+0x8]
	mov [ebp-0x3c], ebx
	cmp [ebp-0x48], ebx
	jl _Z25R_TakeResampledScreenshotiiii_20
	jg _Z25R_TakeResampledScreenshotiiii_30
_Z25R_TakeResampledScreenshotiiii_70:
	mov eax, [ebp-0x40]
	cmp [ebp-0x4c], eax
	jl _Z25R_TakeResampledScreenshotiiii_40
_Z25R_TakeResampledScreenshotiiii_100:
	jle _Z25R_TakeResampledScreenshotiiii_50
	mov edx, [ebp-0x48]
	sub edx, 0x1
	mov eax, edi
	imul eax, edx
	mov esi, [ebp-0x1c]
	add esi, eax
	test edx, edx
	js _Z25R_TakeResampledScreenshotiiii_50
	mov ebx, esi
	mov dword [ebp-0x24], 0x0
_Z25R_TakeResampledScreenshotiiii_60:
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov [esp], edi
	mov ecx, [ebp-0x48]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x40]
	call _Z19R_UpsamplePixelDataiiiiPhS_
	sub ebx, edi
	sub esi, edi
	add dword [ebp-0x24], 0x1
	mov eax, [ebp-0x24]
	cmp [ebp-0x48], eax
	jnz _Z25R_TakeResampledScreenshotiiii_60
_Z25R_TakeResampledScreenshotiiii_50:
	mov eax, [ebp-0x44]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_TakeResampledScreenshotiiii_20:
	mov edx, [ebp-0x40]
	test edx, edx
	jle _Z25R_TakeResampledScreenshotiiii_70
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
	jmp _Z25R_TakeResampledScreenshotiiii_80
_Z25R_TakeResampledScreenshotiiii_90:
	mov eax, [ebp-0x38]
_Z25R_TakeResampledScreenshotiiii_80:
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x3c]
	call _Z21R_DownsamplePixelDataiiiiPhS_
	mov eax, [ebp-0x34]
	add [ebp-0x38], eax
	add esi, [ebp-0x30]
	add ebx, 0x1
	cmp [ebp-0x40], ebx
	jnz _Z25R_TakeResampledScreenshotiiii_90
	mov eax, [ebp-0x40]
	cmp [ebp-0x4c], eax
	jge _Z25R_TakeResampledScreenshotiiii_100
_Z25R_TakeResampledScreenshotiiii_40:
	mov eax, [ebp-0x48]
	test eax, eax
	jle _Z25R_TakeResampledScreenshotiiii_50
	mov esi, [ebp-0x1c]
	xor ebx, ebx
	mov eax, esi
	jmp _Z25R_TakeResampledScreenshotiiii_110
_Z25R_TakeResampledScreenshotiiii_120:
	mov eax, [ebp-0x1c]
_Z25R_TakeResampledScreenshotiiii_110:
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], edi
	mov ecx, [ebp-0x48]
	mov edx, [ebp-0x4c]
	mov eax, [ebp-0x40]
	call _Z21R_DownsamplePixelDataiiiiPhS_
	add esi, edi
	add [ebp-0x1c], edi
	add ebx, 0x1
	cmp [ebp-0x48], ebx
	jnz _Z25R_TakeResampledScreenshotiiii_120
	mov eax, [ebp-0x44]
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25R_TakeResampledScreenshotiiii_30:
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
	js _Z25R_TakeResampledScreenshotiiii_70
	mov eax, [ebp-0x3c]
	imul eax, edi
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x48]
	imul eax, edi
	mov [ebp-0x28], eax
	mov dword [ebp-0x20], 0x0
_Z25R_TakeResampledScreenshotiiii_130:
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	mov ecx, 0x1
	mov edx, [ebp-0x48]
	mov eax, [ebp-0x3c]
	call _Z19R_UpsamplePixelDataiiiiPhS_
	sub esi, [ebp-0x2c]
	sub ebx, [ebp-0x28]
	add dword [ebp-0x20], 0x1
	mov eax, [ebp-0x20]
	cmp [ebp-0x40], eax
	jnz _Z25R_TakeResampledScreenshotiiii_130
	jmp _Z25R_TakeResampledScreenshotiiii_70
_Z25R_TakeResampledScreenshotiiii_10:
	mov eax, [ebp-0x44]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebp-0x44], 0x0
	jmp _Z25R_TakeResampledScreenshotiiii_50
	nop


;R_LevelShot()
_Z11R_LevelShotv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x110
	mov eax, rgp
	mov eax, [eax+0x20a0]
	test eax, eax
	jz _Z11R_LevelShotv_10
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_levelshotsstga
	lea esi, [ebp-0x108]
	mov [esp], esi
	call sprintf
_Z11R_LevelShotv_30:
	mov dword [esp], 0x12
	mov ecx, 0x3
	mov edx, 0x80
	mov eax, 0x80
	call _Z25R_TakeResampledScreenshotiiii
	mov ebx, eax
	test eax, eax
	jz _Z11R_LevelShotv_20
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
	call _Z12FS_WriteFilePKcPKvi
	mov [esp], ebx
	call Z_FreeInternal
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_wrote_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
_Z11R_LevelShotv_20:
	add esp, 0x110
	pop ebx
	pop esi
	pop ebp
	ret
_Z11R_LevelShotv_10:
	mov dword [esp+0x8], _cstring_screenshot
	mov dword [esp+0x4], _cstring_levelshotsstga
	lea esi, [ebp-0x108]
	mov [esp], esi
	call sprintf
	jmp _Z11R_LevelShotv_30


;R_EndCubemapShot(CubemapShot)
_Z16R_EndCubemapShot11CubemapShot:
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
	js _Z16R_EndCubemapShot11CubemapShot_10
	mov eax, [ebp-0x1c]
	mov ecx, [eax]
	lea edx, [ebp-0x58]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ecx+0x30]
	mov ebx, eax
	test eax, eax
	js _Z16R_EndCubemapShot11CubemapShot_20
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
	js _Z16R_EndCubemapShot11CubemapShot_30
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
	js _Z16R_EndCubemapShot11CubemapShot_40
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
	js _Z16R_EndCubemapShot11CubemapShot_50
	mov edx, [ebp-0x24]
	mov [ebp-0x60], edx
	mov edi, [ebp-0x64]
	shl edi, 0x2
	cmp [ebp-0x28], edi
	jz _Z16R_EndCubemapShot11CubemapShot_60
	mov ecx, [ebp-0x64]
	test ecx, ecx
	jg _Z16R_EndCubemapShot11CubemapShot_70
_Z16R_EndCubemapShot11CubemapShot_170:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x38]
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov ebx, alwaysfails
_Z16R_EndCubemapShot11CubemapShot_80:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebp-0x20], 0x0
	mov esi, [ebx]
	test esi, esi
	jnz _Z16R_EndCubemapShot11CubemapShot_80
_Z16R_EndCubemapShot11CubemapShot_140:
	mov eax, gfxMetrics
	test word [eax], 0xfffe
	jz _Z16R_EndCubemapShot11CubemapShot_90
	xor esi, esi
	mov eax, gfxMetrics
_Z16R_EndCubemapShot11CubemapShot_120:
	movzx edx, word [eax]
	test edx, edx
	jle _Z16R_EndCubemapShot11CubemapShot_100
	lea edi, [ebp-0x28]
	xor ebx, ebx
_Z16R_EndCubemapShot11CubemapShot_110:
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
	jl _Z16R_EndCubemapShot11CubemapShot_110
_Z16R_EndCubemapShot11CubemapShot_100:
	mov edx, eax
	add esi, 0x1
	movzx eax, word [eax]
	shr ax, 1
	movzx eax, ax
	cmp esi, eax
	jge _Z16R_EndCubemapShot11CubemapShot_90
	mov eax, edx
	jmp _Z16R_EndCubemapShot11CubemapShot_120
_Z16R_EndCubemapShot11CubemapShot_90:
	mov eax, vidConfig
	cmp byte [eax+0x2c], 0x0
	jz _Z16R_EndCubemapShot11CubemapShot_130
	mov edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call _Z14R_GammaCorrectPhi
_Z16R_EndCubemapShot11CubemapShot_130:
	mov dword [esp+0x4], 0x1
	mov eax, gfxCmdBufSourceState
	mov [esp], eax
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_EndCubemapShot11CubemapShot_10:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak
_Z16R_EndCubemapShot11CubemapShot_150:
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x1c]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	jmp _Z16R_EndCubemapShot11CubemapShot_140
_Z16R_EndCubemapShot11CubemapShot_30:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak1
	jmp _Z16R_EndCubemapShot11CubemapShot_150
_Z16R_EndCubemapShot11CubemapShot_20:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak2
	jmp _Z16R_EndCubemapShot11CubemapShot_150
_Z16R_EndCubemapShot11CubemapShot_40:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak3
	jmp _Z16R_EndCubemapShot11CubemapShot_150
_Z16R_EndCubemapShot11CubemapShot_70:
	mov esi, [ebp-0x5c]
	xor ebx, ebx
_Z16R_EndCubemapShot11CubemapShot_160:
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
	jnz _Z16R_EndCubemapShot11CubemapShot_160
	jmp _Z16R_EndCubemapShot11CubemapShot_170
_Z16R_EndCubemapShot11CubemapShot_60:
	mov eax, [ebp-0x64]
	imul eax, eax
	mov [ebp-0x64], eax
	shl eax, 0x2
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call Com_Memcpy
	jmp _Z16R_EndCubemapShot11CubemapShot_170
_Z16R_EndCubemapShot11CubemapShot_50:
	mov [esp], eax
	call _Z18R_ErrorDescriptionl
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_cannot_tak4
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	mov ebx, alwaysfails
_Z16R_EndCubemapShot11CubemapShot_180:
	mov eax, [ebp-0x20]
	mov edx, [eax]
	mov [esp], eax
	call dword [edx+0x8]
	mov dword [ebp-0x20], 0x0
	mov edi, [ebx]
	test edi, edi
	jnz _Z16R_EndCubemapShot11CubemapShot_180
	jmp _Z16R_EndCubemapShot11CubemapShot_140


;R_SaveCubemapShot(char const*, CubemapShot, float, float)
_Z17R_SaveCubemapShotPKc11CubemapShotff:
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
	jg _Z17R_SaveCubemapShotPKc11CubemapShotff_10
	mov esi, ebx
_Z17R_SaveCubemapShotPKc11CubemapShotff_100:
	movzx eax, word [esi]
	test eax, eax
	jle _Z17R_SaveCubemapShotPKc11CubemapShotff_20
	mov edx, eax
	xor edi, edi
	movss xmm6, dword [_float_0_50000000]
_Z17R_SaveCubemapShotPKc11CubemapShotff_70:
	cvtsi2ss xmm0, edi
	movss [ebp-0x1c], xmm0
	xor ebx, ebx
	jmp _Z17R_SaveCubemapShotPKc11CubemapShotff_30
_Z17R_SaveCubemapShotPKc11CubemapShotff_50:
	movss xmm0, dword [_float_1_00000000]
_Z17R_SaveCubemapShotPKc11CubemapShotff_60:
	mulss xmm5, xmm0
	movss [esp+0x8], xmm5
	movss xmm0, dword [ebp-0x3c]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x38]
	movss [esp], xmm0
	call _Z11FresnelTermfff
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
	jle _Z17R_SaveCubemapShotPKc11CubemapShotff_40
_Z17R_SaveCubemapShotPKc11CubemapShotff_30:
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
	jae _Z17R_SaveCubemapShotPKc11CubemapShotff_50
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm3
	jmp _Z17R_SaveCubemapShotPKc11CubemapShotff_60
_Z17R_SaveCubemapShotPKc11CubemapShotff_40:
	mov eax, edx
	add edi, 0x1
	cmp edi, eax
	jge _Z17R_SaveCubemapShotPKc11CubemapShotff_20
_Z17R_SaveCubemapShotPKc11CubemapShotff_80:
	mov edx, eax
	test eax, eax
	jg _Z17R_SaveCubemapShotPKc11CubemapShotff_70
	add edi, 0x1
	cmp edi, eax
	jl _Z17R_SaveCubemapShotPKc11CubemapShotff_80
_Z17R_SaveCubemapShotPKc11CubemapShotff_20:
	mov ecx, [ebp-0x28]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z12FS_WriteFilePKcPKvi
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
_Z17R_SaveCubemapShotPKc11CubemapShotff_10:
	xor edi, edi
	mov esi, ebx
_Z17R_SaveCubemapShotPKc11CubemapShotff_120:
	xor ebx, ebx
_Z17R_SaveCubemapShotPKc11CubemapShotff_90:
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
	jg _Z17R_SaveCubemapShotPKc11CubemapShotff_90
	mov edx, eax
_Z17R_SaveCubemapShotPKc11CubemapShotff_110:
	add edi, 0x1
	cmp edi, edx
	jge _Z17R_SaveCubemapShotPKc11CubemapShotff_100
	mov eax, edx
	test edx, edx
	jle _Z17R_SaveCubemapShotPKc11CubemapShotff_110
	jmp _Z17R_SaveCubemapShotPKc11CubemapShotff_120


;R_BeginCubemapShot(int, int)
_Z18R_BeginCubemapShotii:
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
	call _Z21R_SetRenderTargetSizeP20GfxCmdBufSourceState17GfxRenderTargetId
	mov eax, gfxCmdBufContext
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov dword [esp+0x8], 0x1
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_SetRenderTarget16GfxCmdBufContext17GfxRenderTargetId
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
_Z19R_ScreenshotCommand17GfxScreenshotType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x23c
	mov esi, [ebp+0x8]
	test esi, esi
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_10
	cmp dword [ebp+0x8], 0x1
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_20
_Z19R_ScreenshotCommand17GfxScreenshotType_210:
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_ScreenshotCommand17GfxScreenshotType_10:
	mov dword [ebp-0x224], _cstring_jpg
	mov eax, cmd_args
	mov eax, [eax]
	mov [ebp-0x220], eax
	mov edx, cmd_args
	mov ebx, [edx+eax*4+0x44]
	cmp ebx, 0x1
	jle _Z19R_ScreenshotCommand17GfxScreenshotType_30
_Z19R_ScreenshotCommand17GfxScreenshotType_240:
	mov eax, [edx+eax*4+0x64]
	mov edx, [eax+0x4]
_Z19R_ScreenshotCommand17GfxScreenshotType_250:
	mov edi, _cstring_levelshot
	mov ecx, 0xa
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19R_ScreenshotCommand17GfxScreenshotType_40:
	test edx, edx
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_50
	cmp ebx, 0x1
	jle _Z19R_ScreenshotCommand17GfxScreenshotType_60
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
	mov eax, [edx+ecx*4+0x64]
	mov edx, [eax+0x4]
_Z19R_ScreenshotCommand17GfxScreenshotType_300:
	mov edi, _cstring_savegame
	mov ecx, 0x9
	cld
	mov esi, edx
	repe cmpsb
	mov edx, 0x0
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19R_ScreenshotCommand17GfxScreenshotType_70:
	test edx, edx
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_80
	cmp ebx, 0x3
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_90
_Z19R_ScreenshotCommand17GfxScreenshotType_80:
	cmp ebx, 0x1
	jle _Z19R_ScreenshotCommand17GfxScreenshotType_100
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
_Z19R_ScreenshotCommand17GfxScreenshotType_260:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
_Z19R_ScreenshotCommand17GfxScreenshotType_290:
	mov edi, _cstring_silent
	mov ecx, 0x7
	cld
	mov esi, eax
	repe cmpsb
	mov eax, 0x0
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_110
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z19R_ScreenshotCommand17GfxScreenshotType_110:
	test eax, eax
	setz al
	movzx eax, al
	mov [ebp-0x228], eax
	cmp ebx, 0x2
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_120
_Z19R_ScreenshotCommand17GfxScreenshotType_270:
	mov eax, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
	mov edx, eax
	cmp eax, 0x270f
	jg _Z19R_ScreenshotCommand17GfxScreenshotType_130
	lea ebx, [ebp-0x118]
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_140
_Z19R_ScreenshotCommand17GfxScreenshotType_160:
	mov eax, [ebp-0x224]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_screenshotsshot9
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
_Z19R_ScreenshotCommand17GfxScreenshotType_170:
	mov [esp], ebx
	call _Z13FS_FileExistsPKc
	test eax, eax
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_150
	mov edx, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
	add edx, 0x1
	mov eax, edx
	mov [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber], edx
	cmp edx, 0x270f
	jg _Z19R_ScreenshotCommand17GfxScreenshotType_130
_Z19R_ScreenshotCommand17GfxScreenshotType_140:
	cmp edx, 0x270f
	ja _Z19R_ScreenshotCommand17GfxScreenshotType_160
	mov ecx, [ebp-0x224]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_screenshotsshot0
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_170
_Z19R_ScreenshotCommand17GfxScreenshotType_150:
	mov eax, [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber]
_Z19R_ScreenshotCommand17GfxScreenshotType_130:
	cmp eax, 0x270e
	jg _Z19R_ScreenshotCommand17GfxScreenshotType_180
	add eax, 0x1
	mov [_ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber], eax
_Z19R_ScreenshotCommand17GfxScreenshotType_280:
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_190
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
	call _Z20R_GetFrontBufferDataiiiiiPh
	test al, al
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_200
_Z19R_ScreenshotCommand17GfxScreenshotType_310:
	mov [esp], ebx
	call Z_FreeInternal
_Z19R_ScreenshotCommand17GfxScreenshotType_230:
	mov ecx, [ebp-0x228]
	test ecx, ecx
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_210
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_wrote_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_210
_Z19R_ScreenshotCommand17GfxScreenshotType_50:
	call _Z11R_LevelShotv
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_ScreenshotCommand17GfxScreenshotType_190:
	cmp dword [ebp+0x8], 0x1
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_210
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
	call _Z20R_GetFrontBufferDataiiiiiPh
	test al, al
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_220
_Z19R_ScreenshotCommand17GfxScreenshotType_320:
	mov [esp], edi
	call Z_FreeInternal
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_230
_Z19R_ScreenshotCommand17GfxScreenshotType_20:
	mov dword [ebp-0x224], _cstring_tga
	mov eax, cmd_args
	mov eax, [eax]
	mov [ebp-0x220], eax
	mov edx, cmd_args
	mov ebx, [edx+eax*4+0x44]
	cmp ebx, 0x1
	jg _Z19R_ScreenshotCommand17GfxScreenshotType_240
_Z19R_ScreenshotCommand17GfxScreenshotType_30:
	mov edx, _cstring_null
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_250
_Z19R_ScreenshotCommand17GfxScreenshotType_90:
	mov ecx, [ebp-0x220]
	mov edx, cmd_args
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x8]
	cmp byte [eax], 0x0
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_260
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sjpg
	lea esi, [ebp-0x218]
	mov [esp], esi
	call sprintf
	mov dword [esp], 0x0
	mov ecx, 0x3
	mov edx, 0x200
	mov eax, 0x200
	call _Z25R_TakeResampledScreenshotiiii
	mov ebx, eax
	test eax, eax
	jz _Z19R_ScreenshotCommand17GfxScreenshotType_210
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x200
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x5a
	mov [esp], esi
	call _Z9R_SaveJpgPKciiiPh
	mov [esp], ebx
	call Z_FreeInternal
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_210
_Z19R_ScreenshotCommand17GfxScreenshotType_120:
	test eax, eax
	jnz _Z19R_ScreenshotCommand17GfxScreenshotType_270
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
	call _Z11Com_sprintfPciPKcz
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_280
_Z19R_ScreenshotCommand17GfxScreenshotType_100:
	mov eax, _cstring_null
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_290
_Z19R_ScreenshotCommand17GfxScreenshotType_180:
	mov dword [esp+0x4], _cstring_screenshot_could
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x23c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_ScreenshotCommand17GfxScreenshotType_60:
	mov edx, _cstring_null
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_300
_Z19R_ScreenshotCommand17GfxScreenshotType_200:
	mov [esp+0x10], ebx
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x5a
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z9R_SaveJpgPKciiiPh
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_310
_Z19R_ScreenshotCommand17GfxScreenshotType_220:
	mov edx, [ebp-0x21c]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z12FS_WriteFilePKcPKvi
	jmp _Z19R_ScreenshotCommand17GfxScreenshotType_320


;R_LightingFromCubemapShots(float const*)
_Z26R_LightingFromCubemapShotsPKf:
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
_Z26R_LightingFromCubemapShotsPKf_40:
	mov eax, [ebp-0xc4]
	test eax, eax
	jle _Z26R_LightingFromCubemapShotsPKf_10
	mov dword [ebp-0xb8], 0x0
	mov dword [ebp-0xbc], 0x0
_Z26R_LightingFromCubemapShotsPKf_30:
	mov edx, [ebp-0xb8]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov [ebp-0x60], eax
	mov edi, edx
	shl edi, 0x2
	mov dword [ebp-0xc0], 0x0
_Z26R_LightingFromCubemapShotsPKf_20:
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
	jnz _Z26R_LightingFromCubemapShotsPKf_20
	add [ebp-0xb8], eax
	add dword [ebp-0xbc], 0x1
	mov edx, [ebp-0xbc]
	cmp eax, edx
	jnz _Z26R_LightingFromCubemapShotsPKf_30
_Z26R_LightingFromCubemapShotsPKf_10:
	add dword [ebp-0x5c], 0x1
	add dword [ebp-0x58], 0x4
	cmp dword [ebp-0x5c], 0x7
	jnz _Z26R_LightingFromCubemapShotsPKf_40
	mov eax, gfxMetrics
	movzx esi, word [eax]
	xor eax, eax
	cvtsi2ss xmm0, esi
	movss [ebp-0x118], xmm0
_Z26R_LightingFromCubemapShotsPKf_200:
	test esi, esi
	jle _Z26R_LightingFromCubemapShotsPKf_50
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
_Z26R_LightingFromCubemapShotsPKf_190:
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
_Z26R_LightingFromCubemapShotsPKf_180:
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
	jb _Z26R_LightingFromCubemapShotsPKf_60
	movss xmm0, dword [_float_1_00000000]
_Z26R_LightingFromCubemapShotsPKf_240:
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
_Z26R_LightingFromCubemapShotsPKf_140:
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
_Z26R_LightingFromCubemapShotsPKf_130:
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
	jmp _Z26R_LightingFromCubemapShotsPKf_70
_Z26R_LightingFromCubemapShotsPKf_100:
	movss xmm0, dword [_float_1_00000000]
_Z26R_LightingFromCubemapShotsPKf_110:
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
	jae _Z26R_LightingFromCubemapShotsPKf_80
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
_Z26R_LightingFromCubemapShotsPKf_80:
	add edx, 0x1
	add ecx, 0xc
	cmp esi, edx
	jz _Z26R_LightingFromCubemapShotsPKf_90
_Z26R_LightingFromCubemapShotsPKf_70:
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
	jae _Z26R_LightingFromCubemapShotsPKf_100
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z26R_LightingFromCubemapShotsPKf_110
_Z26R_LightingFromCubemapShotsPKf_90:
	add dword [ebp-0xa8], 0x1
	cmp esi, [ebp-0xa8]
	jz _Z26R_LightingFromCubemapShotsPKf_120
	movss xmm7, dword [ebp-0x8c]
	jmp _Z26R_LightingFromCubemapShotsPKf_130
_Z26R_LightingFromCubemapShotsPKf_120:
	add dword [ebp-0x68], 0x1
	add dword [ebp-0x110], 0x24
	add edi, 0x4
	cmp dword [ebp-0x68], 0x7
	jnz _Z26R_LightingFromCubemapShotsPKf_140
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
	jb _Z26R_LightingFromCubemapShotsPKf_150
	movss xmm0, dword [_float_255_00000000]
_Z26R_LightingFromCubemapShotsPKf_230:
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
	jb _Z26R_LightingFromCubemapShotsPKf_160
	movss xmm0, dword [_float_255_00000000]
_Z26R_LightingFromCubemapShotsPKf_220:
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
	jb _Z26R_LightingFromCubemapShotsPKf_170
	movss xmm0, dword [_float_255_00000000]
_Z26R_LightingFromCubemapShotsPKf_210:
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
	jnz _Z26R_LightingFromCubemapShotsPKf_180
	add dword [ebp-0xb0], 0x1
	add [ebp-0x114], esi
	cmp esi, [ebp-0xb0]
	jnz _Z26R_LightingFromCubemapShotsPKf_190
	mov eax, [ebp-0x54]
_Z26R_LightingFromCubemapShotsPKf_250:
	cmp eax, 0x5
	jle _Z26R_LightingFromCubemapShotsPKf_200
	mov eax, [ebp-0x30]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_LightingFromCubemapShotsPKf_170:
	movss xmm0, dword [ebp-0x50]
	mulss xmm0, [_float_255_00000000]
	jmp _Z26R_LightingFromCubemapShotsPKf_210
_Z26R_LightingFromCubemapShotsPKf_160:
	movss xmm0, dword [ebp-0x4c]
	mulss xmm0, [_float_255_00000000]
	jmp _Z26R_LightingFromCubemapShotsPKf_220
_Z26R_LightingFromCubemapShotsPKf_150:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z26R_LightingFromCubemapShotsPKf_230
_Z26R_LightingFromCubemapShotsPKf_60:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	jmp _Z26R_LightingFromCubemapShotsPKf_240
_Z26R_LightingFromCubemapShotsPKf_50:
	add eax, 0x1
	jmp _Z26R_LightingFromCubemapShotsPKf_250
	nop


;R_CreateReflectionRawDataFromCubemapShot(DiskGfxReflectionProbe*, int)
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1ec
	mov dword [ebp-0x19c], cubeShotGlob
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_110:
	mov eax, gfxMetrics
	movzx eax, word [eax]
	mov [ebp-0x1b4], eax
	mov eax, [ebp-0x19c]
	mov eax, [eax]
	mov [ebp-0x1d0], eax
	mov edx, [ebp+0xc]
	test edx, edx
	jle _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_10
	mov dword [ebp-0x1b0], 0x0
	movss xmm1, dword [_float_0_06250000]
	mov eax, [ebp-0x1b0]
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_100:
	imul eax, [ebp+0xc]
	mov ecx, [ebp-0x1d0]
	lea eax, [ecx+eax*4]
	mov [ebp-0x1a0], eax
	mov dword [ebp-0x1ac], 0x0
	mov edx, [ebp-0x1ac]
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_80:
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
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_50:
	add eax, edi
	imul eax, [ebp-0x1b4]
	add eax, [ebp-0x1a8]
	mov edx, [ebp-0x1d0]
	lea ebx, [edx+eax*4]
	xor esi, esi
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_30:
	mov ecx, 0x1
	lea edx, [ebp-0x30]
	add edx, 0x4
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_20:
	movzx eax, byte [ecx+ebx-0x1]
	cvtsi2ss xmm0, eax
	addss xmm0, [edx-0x4]
	movss [edx-0x4], xmm0
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x4
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_30
	add edi, 0x1
	cmp edi, 0x4
	jz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_40
	mov eax, [ebp-0x1cc]
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_50
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_40:
	mov cl, 0x1
	lea edx, [ebp-0x30]
	add edx, 0x4
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_60:
	movss xmm0, dword [edx-0x4]
	mulss xmm0, xmm1
	movss [edx-0x4], xmm0
	cvttss2si eax, xmm0
	mov ebx, [ebp-0x1a0]
	mov [ebx+ecx-0x1], al
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_60
	add dword [ebp-0x1ac], 0x1
	add ebx, 0x4
	mov [ebp-0x1a0], ebx
	mov eax, [ebp-0x1ac]
	cmp [ebp+0xc], eax
	jz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_70
	mov edx, eax
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_80
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_70:
	add dword [ebp-0x1b0], 0x1
	mov edx, [ebp-0x1b0]
	cmp [ebp+0xc], edx
	jz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_90
	mov eax, edx
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_100
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_90:
	mov ebx, [ebp-0x19c]
	mov ebx, [ebx]
	mov [ebp-0x1d0], ebx
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_10:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x1d0]
	mov [esp], edx
	call _Z20Image_FlipVerticallyPhi
	add dword [ebp-0x19c], 0x4
	mov ecx, _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	cmp ecx, [ebp-0x19c]
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_110
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov dword [esp], cubeShotGlob
	call _Z17CubeMap_FlipSidesPPhi
	mov eax, ebx
	imul eax, ebx
	shl eax, 0x2
	mov [ebp-0x1c4], eax
	mov edx, [ebp+0x8]
	add edx, 0x4c
	lea ebx, [ebp-0x198]
	mov edi, cubeShotGlob
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_130:
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
	jz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_120
	mov edx, esi
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_130
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_120:
	call _Z24CubeMap_CacheHighMipDirsv
	mov dword [ebp-0x1bc], 0x0
	mov dword [ebp-0x1a4], cubeShotGlob
	mov dword [ebp-0x1d4], 0x0
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_180:
	mov edx, [ebp-0x1a4]
	mov edx, [edx]
	mov [ebp-0x1c0], edx
	lea edi, [ebp-0x198]
	add edi, [ebp-0x1d4]
	mov [ebp-0x1b8], esi
	mov ebx, [ebp+0xc]
	mov dword [ebp-0x1c8], 0x1
	mov eax, ebx
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_140
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_160:
	lea eax, [ebp-0x20]
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_170:
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
	jz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_150
	mov [ebp-0x1b8], esi
	mov eax, [ebp+0xc]
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_140:
	mov ecx, [ebp-0x1bc]
	mov [esp+0x10], ecx
	mov [esp+0xc], eax
	lea edx, [ebp-0x198]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x1c0]
	mov [esp], ecx
	call _Z24CubeMap_GenerateMipMap32PhiPA15_S_ii
	mov eax, ebx
	sar eax, 1
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x1
	sub eax, 0x1
	jg _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_160
	lea eax, [ebp-0x1c]
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_170
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_150:
	add dword [ebp-0x1bc], 0x1
	add dword [ebp-0x1d4], 0x3c
	add dword [ebp-0x1a4], 0x4
	cmp dword [ebp-0x1bc], 0x6
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_180
	mov eax, [ebp-0x1c8]
	test eax, eax
	jg _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_190
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_220:
	mov ebx, cubeShotGlob
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_200:
	mov eax, [ebx]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add ebx, 0x4
	mov edx, _ZZ19R_ScreenshotCommand17GfxScreenshotTypeE10lastNumber
	cmp edx, ebx
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_200
	add esp, 0x1ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_190:
	xor ebx, ebx
_Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_210:
	mov eax, [ebp+0xc]
	mov ecx, ebx
	sar eax, cl
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	lea eax, [ebp-0x198]
	mov [esp], eax
	call _Z22CubeMap_BlendFaceEdgesPA15_Phii
	add ebx, 0x1
	cmp ebx, [ebp-0x1c8]
	jnz _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_210
	jmp _Z40R_CreateReflectionRawDataFromCubemapShotP22DiskGfxReflectionProbei_220
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

