;Imports of r_shade:
	extern glProgramEnvParameters4fvEXT
	extern R_ChangeState_0
	extern R_ChangeState_1
	extern _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	extern rg
	extern R_SetSampler
	extern r_drawWater
	extern R_UploadWaterTexture
	extern r_colorMap
	extern R_OverrideGrayscaleImage
	extern r_normalMap
	extern rgp
	extern R_GetCodeMatrix
	extern r_specularMap
	extern R_GetTextureFromCode
	extern R_TextureFromCodeError
	extern gfxBuf
	extern R_LockIndexBuffer
	extern memcpy
	extern R_UnlockIndexBuffer
	extern R_LockVertexBuffer
	extern Com_Memcpy
	extern R_UnlockVertexBuffer
	extern Com_Error

;Exports of r_shade:
	global R_SetPassPixelShaderStableArguments
	global R_SetupPass
	global R_SetIndexData
	global R_SetVertexData
	global R_SetPixelShader
	global R_SetVertexShader
	global R_ReserveIndexData
	global R_UpdateVertexDecl
	global R_SetupPassPerPrimArgs
	global R_SetupPassPerObjectArgs
	global R_SetupPassPixelShaderArgs
	global R_SetupPassVertexShaderArgs
	global R_SetupPassCriticalPixelShaderArgs


SECTION .text


;R_SetPassPixelShaderStableArguments(GfxCmdBufContext, unsigned int, MaterialShaderArgument const*)
R_SetPassPixelShaderStableArguments:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov edi, [ebp+0x8]
	mov [ebp-0x2c], eax
	mov [ebp-0x30], edx
	mov eax, [edx+0xb8]
	mov [ebp-0x34], eax
	xor eax, eax
R_SetPassPixelShaderStableArguments_20:
	mov edx, ecx
	sub edx, eax
	mov [ebp-0x1c], edx
	cmp word [edi], 0x4
	ja R_SetPassPixelShaderStableArguments_10
	add edi, 0x8
	add eax, 0x1
	cmp ecx, eax
	jnz R_SetPassPixelShaderStableArguments_20
R_SetPassPixelShaderStableArguments_110:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetPassPixelShaderStableArguments_10:
	mov dword [ebp-0x24], 0x0
	mov ecx, [ebp-0x1c]
	jmp R_SetPassPixelShaderStableArguments_30
R_SetPassPixelShaderStableArguments_60:
	mov ecx, edx
R_SetPassPixelShaderStableArguments_30:
	sub ecx, [ebp-0x24]
	mov [ebp-0x20], ecx
	cmp word [edi], 0x5
	jnz R_SetPassPixelShaderStableArguments_40
	mov ebx, [ebp-0x2c]
	mov esi, [ebp-0x30]
	mov ecx, [edi+0x4]
	mov [ebp-0x40], ecx
	movzx eax, word [edi+0x4]
	movzx edx, word [ebx+eax*2+0xe30]
	mov [ebp-0x3c], edx
	movzx eax, word [edi+0x2]
	lea ecx, [esi+eax*8+0x1d0]
	mov edx, [ebp-0x3c]
	xor edx, [ecx+0xc]
	mov eax, [ebp-0x40]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetPassPixelShaderStableArguments_50
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov ebx, [ebp-0x2c]
	movzx eax, word [edi+0x4]
	shl eax, 0x4
	add eax, 0x880
	add eax, ebx
	mov [esp+0xc], eax
	movzx eax, byte [edi+0x7]
	mov [esp+0x8], eax
	movzx eax, word [edi+0x2]
	mov [esp+0x4], eax
	mov dword [esp], 0x8804
	call glProgramEnvParameters4fvEXT
R_SetPassPixelShaderStableArguments_50:
	add edi, 0x8
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x24], edx
	jnz R_SetPassPixelShaderStableArguments_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetPassPixelShaderStableArguments_40:
	mov eax, [ebp-0x34]
	mov esi, [eax+0x48]
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp-0x20]
R_SetPassPixelShaderStableArguments_120:
	sub ebx, [ebp-0x28]
	cmp word [edi], 0x6
	jnz R_SetPassPixelShaderStableArguments_70
	mov ebx, [edi+0x4]
	cmp ebx, [esi]
	jz R_SetPassPixelShaderStableArguments_80
	lea ecx, [esi+0x20]
	mov edx, ecx
	jmp R_SetPassPixelShaderStableArguments_90
R_SetPassPixelShaderStableArguments_100:
	add ecx, 0x20
R_SetPassPixelShaderStableArguments_90:
	mov esi, ecx
	mov eax, [edx]
	add edx, 0x20
	cmp ebx, eax
	jnz R_SetPassPixelShaderStableArguments_100
R_SetPassPixelShaderStableArguments_80:
	movzx edx, word [edi+0x2]
	mov ecx, [ebp-0x30]
	mov dword [ecx+edx*8+0x1d8], 0xffffffff
	mov dword [ecx+edx*8+0x1dc], 0xffffffff
	lea eax, [esi+0x10]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov dword [esp], 0x8804
	call glProgramEnvParameters4fvEXT
	add edi, 0x8
	add dword [ebp-0x28], 0x1
	mov eax, [ebp-0x20]
	cmp [ebp-0x28], eax
	jz R_SetPassPixelShaderStableArguments_110
	mov ebx, eax
	jmp R_SetPassPixelShaderStableArguments_120
R_SetPassPixelShaderStableArguments_70:
	xor esi, esi
R_SetPassPixelShaderStableArguments_130:
	cmp word [edi], 0x7
	jnz R_SetPassPixelShaderStableArguments_110
	mov edx, [edi+0x4]
	movzx eax, word [edi+0x2]
	mov ecx, [ebp-0x30]
	mov dword [ecx+eax*8+0x1d8], 0xffffffff
	mov dword [ecx+eax*8+0x1dc], 0xffffffff
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], 0x8804
	call glProgramEnvParameters4fvEXT
	add edi, 0x8
	add esi, 0x1
	cmp ebx, esi
	jnz R_SetPassPixelShaderStableArguments_130
	jmp R_SetPassPixelShaderStableArguments_110
	nop


;R_SetupPass(GfxCmdBufContext, unsigned int)
R_SetupPass:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov dword [ebp-0x78], 0x0
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x88], 0x0
	mov dword [ebp-0x84], 0x0
	mov dword [ebp-0xa0], 0x0
	mov dword [ebp-0x9c], 0x0
	mov dword [ebp-0xa8], 0x0
	mov dword [ebp-0xa4], 0x0
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x60], ebx
	mov edi, esi
	lea ecx, [eax+eax*4]
	mov edx, [esi+0xc0]
	lea edx, [edx+ecx*4+0x8]
	mov [ebp-0x90], edx
	mov [esi+0xc4], edx
	mov [esi+0xc8], eax
	mov ecx, [esi+0xb8]
	mov edx, [esi+0xbc]
	movzx edx, byte [edx+ecx+0x18]
	add eax, edx
	mov edx, [ecx+0x4c]
	lea eax, [edx+eax*8]
	mov edx, [eax]
	mov [ebp-0x58], edx
	mov eax, [eax+0x4]
	mov [ebp-0x5c], eax
	cmp edx, [esi+0x9dc]
	jz R_SetupPass_10
	mov [esp+0x4], edx
	mov [esp], esi
	call R_ChangeState_0
	mov ecx, [ebp-0x58]
	mov [esi+0x9dc], ecx
	mov eax, [ebp-0x5c]
R_SetupPass_10:
	cmp eax, [edi+0x9e0]
	jz R_SetupPass_20
	mov [esp+0x4], eax
	mov [esp], esi
	call R_ChangeState_1
	mov edx, [ebp-0x5c]
	mov [edi+0x9e0], edx
R_SetupPass_20:
	mov ecx, [ebp-0x90]
	mov eax, [ecx+0x8]
	cmp eax, [edi+0x9ec]
	jz R_SetupPass_30
	mov edx, [edi+0x90]
	test eax, eax
	jz R_SetupPass_40
	mov ecx, [eax+0x4]
R_SetupPass_250:
	mov [edx+0x3b0], ecx
	mov [edi+0x9ec], eax
	mov eax, [ebp-0x90]
R_SetupPass_240:
	movzx ecx, byte [eax+0xe]
	test cl, cl
	jz R_SetupPass_50
	movzx edx, byte [eax+0xd]
	mov [ebp-0xac], edx
	movzx edx, byte [eax+0xc]
	add edx, [ebp-0xac]
	mov [ebp-0xac], edx
	mov edx, [eax+0x10]
	mov eax, [ebp-0xac]
	lea edx, [edx+eax*8]
	mov [ebp-0x34], edx
	movzx ecx, cl
	mov [ebp-0x8c], ecx
	mov ebx, [ebp-0x60]
	mov [ebp-0x98], ebx
	mov [ebp-0x94], edi
	mov [ebp-0x54], ebx
	mov edx, [ebp-0x94]
	mov [ebp-0x50], edx
	mov ecx, [edx+0xb8]
	mov [ebp-0x80], ecx
	mov edi, [ecx+0x48]
	mov dword [ebp-0x38], 0x0
R_SetupPass_130:
	mov edx, [ebp-0x8c]
	sub edx, [ebp-0x38]
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x34]
	cmp word [ecx], 0x0
	jnz R_SetupPass_60
	mov ebx, [ecx+0x4]
	cmp ebx, [edi]
	jz R_SetupPass_70
	lea ecx, [edi+0x20]
	mov edx, ecx
	jmp R_SetupPass_80
R_SetupPass_90:
	add ecx, 0x20
R_SetupPass_80:
	mov edi, ecx
	mov eax, [edx]
	add edx, 0x20
	cmp eax, ebx
	jnz R_SetupPass_90
	mov ebx, [ebp-0x34]
R_SetupPass_150:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	mov [ebp-0x7c], edx
	mov ecx, [ebp-0x50]
	mov dword [ecx+edx*8+0xd8], 0xffffffff
	mov dword [ecx+edx*8+0xdc], 0xffffffff
	mov edx, [ecx+0x90]
	lea ebx, [edi+0x10]
	cmp dword [ebp-0x7c], 0x1f
	jbe R_SetupPass_100
	cmp ax, 0x20
	jz R_SetupPass_110
	lea esi, [edx+0x400]
R_SetupPass_160:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPass_120
R_SetupPass_140:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x38], 0x1
	mov eax, [ebp-0x38]
	cmp [ebp-0x8c], eax
	jnz R_SetupPass_130
R_SetupPass_50:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPass_120:
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	mov eax, [ebx+0x14]
	mov [esi+0x14], eax
	mov eax, [ebx+0x18]
	mov [esi+0x18], eax
	mov eax, [ebx+0x1c]
	mov [esi+0x1c], eax
	mov eax, [ebx+0x20]
	mov [esi+0x20], eax
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	mov eax, [ebx+0x30]
	mov [esi+0x30], eax
	mov eax, [ebx+0x34]
	mov [esi+0x34], eax
	mov eax, [ebx+0x38]
	mov [esi+0x38], eax
	mov eax, [ebx+0x3c]
	mov [esi+0x3c], eax
R_SetupPass_100:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov ebx, [ebp-0x7c]
	mov [esp+0x4], ebx
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPass_140
R_SetupPass_70:
	mov ebx, ecx
	jmp R_SetupPass_150
R_SetupPass_110:
	lea esi, [edx+0x3c0]
	jmp R_SetupPass_160
R_SetupPass_60:
	mov dword [ebp-0x3c], 0x0
	mov edi, [ebp-0x2c]
	jmp R_SetupPass_170
R_SetupPass_210:
	cmp ax, 0x20
	jz R_SetupPass_180
	lea ebx, [edx+0x400]
R_SetupPass_230:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPass_190
R_SetupPass_220:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x3c], 0x1
	mov ebx, [ebp-0x2c]
	cmp [ebp-0x3c], ebx
	jz R_SetupPass_50
	mov edi, ebx
R_SetupPass_170:
	sub edi, [ebp-0x3c]
	mov eax, [ebp-0x34]
	cmp word [eax], 0x1
	jnz R_SetupPass_200
	mov esi, [eax+0x4]
	movzx eax, word [eax+0x2]
	movzx edi, ax
	mov edx, [ebp-0x50]
	mov dword [edx+edi*8+0xd8], 0xffffffff
	mov dword [edx+edi*8+0xdc], 0xffffffff
	mov ecx, [ebp-0x50]
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	ja R_SetupPass_210
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPass_220
R_SetupPass_190:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPass_220
R_SetupPass_180:
	lea ebx, [edx+0x3c0]
	jmp R_SetupPass_230
R_SetupPass_30:
	mov eax, ecx
	jmp R_SetupPass_240
R_SetupPass_40:
	xor ecx, ecx
	jmp R_SetupPass_250
R_SetupPass_200:
	mov edx, [ebp-0x80]
	mov ebx, [edx+0x44]
	mov dword [ebp-0x40], 0x0
R_SetupPass_330:
	mov edx, edi
	sub edx, [ebp-0x40]
	mov [ebp-0x30], edx
	mov ecx, [ebp-0x34]
	cmp word [ecx], 0x2
	jnz R_SetupPass_260
	mov ecx, [ebp-0x54]
	mov [ebp-0x98], ecx
	mov eax, [ebp-0x50]
	mov [ebp-0x94], eax
	mov [ebp-0x4c], ecx
	mov eax, [ebp-0x34]
	mov ecx, [eax+0x4]
	cmp ecx, [ebx]
	jz R_SetupPass_270
	lea eax, [ebx+0xc]
	mov edx, eax
	jmp R_SetupPass_280
R_SetupPass_290:
	lea eax, [ebx+0xc]
R_SetupPass_280:
	mov ebx, eax
	mov eax, [edx]
	add edx, 0xc
	cmp ecx, eax
	jnz R_SetupPass_290
R_SetupPass_270:
	cmp byte [ebx+0x7], 0xb
	jz R_SetupPass_300
	mov esi, [ebx+0x8]
R_SetupPass_350:
	movzx eax, byte [ebx+0x6]
	mov [ebp-0x69], al
	mov edx, rg
	cmp byte [edx+0x2214], 0x0
	jz R_SetupPass_310
	cmp dword [esi], 0x3
	jz R_SetupPass_320
R_SetupPass_310:
	mov ecx, [ebp-0x34]
	movzx edx, word [ecx+0x2]
	mov eax, [ebp-0x50]
	mov [ebp-0x74], eax
	mov ecx, [ebp-0x4c]
	mov [ebp-0x78], ecx
	mov [esp+0x10], esi
	movzx eax, byte [ebp-0x69]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x78]
	mov edx, [ebp-0x74]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x40], 0x1
	cmp edi, [ebp-0x40]
	jnz R_SetupPass_330
	jmp R_SetupPass_50
R_SetupPass_300:
	mov edx, [ebx+0x8]
	mov esi, [edx+0x40]
	mov eax, r_drawWater
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_SetupPass_340
	mov ecx, [ebp-0x4c]
	mov eax, [ecx+0xf40]
R_SetupPass_380:
	mov [esp+0x4], eax
	mov [esp], edx
	call R_UploadWaterTexture
	jmp R_SetupPass_350
R_SetupPass_320:
	movzx eax, byte [ebx+0x7]
	cmp al, 0x5
	jz R_SetupPass_360
	cmp al, 0x8
	jz R_SetupPass_370
	cmp al, 0x2
	jnz R_SetupPass_310
	mov eax, r_colorMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz R_SetupPass_310
R_SetupPass_530:
	mov [esp], eax
	call R_OverrideGrayscaleImage
	mov esi, eax
	jmp R_SetupPass_310
R_SetupPass_340:
	mov ecx, rg
	mov eax, [ecx+0x22fc]
	jmp R_SetupPass_380
R_SetupPass_360:
	mov eax, r_normalMap
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz R_SetupPass_310
	mov eax, rgp
	mov esi, [eax+0x201c]
	jmp R_SetupPass_310
R_SetupPass_260:
	mov dword [ebp-0x44], 0x0
	mov esi, [ebp-0x30]
R_SetupPass_490:
	sub esi, [ebp-0x44]
	mov edx, [ebp-0x34]
	cmp word [edx], 0x3
	jnz R_SetupPass_390
	mov ecx, edx
	mov ebx, [ebp-0x54]
	mov [ebp-0x98], ebx
	mov eax, [ebp-0x50]
	mov [ebp-0x94], eax
	mov ebx, [ebp-0x98]
	mov edx, [ebp-0x98]
	mov [ebp-0x48], edx
	mov esi, eax
	movzx edx, word [ecx+0x4]
	cmp dx, 0x39
	jbe R_SetupPass_400
	movzx eax, word [ecx+0x2]
	lea ecx, [esi+eax*8+0xd0]
	mov [ebp-0xbc], ecx
	add ecx, 0x8
	mov [ebp-0x68], ecx
	mov eax, [ebp-0x34]
	mov eax, [eax+0x4]
	mov [ebp-0xa0], eax
	movzx eax, dx
	sub eax, 0x3a
	sar eax, 0x2
	movzx eax, word [ebx+eax*2+0xee4]
	mov [ebp-0x9c], eax
	mov edx, eax
	xor edx, [ecx+0x4]
	mov eax, [ebp-0xa0]
	mov ecx, [ebp-0xbc]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPass_410
	mov eax, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x34]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz R_SetupPass_420
	mov edx, [ebp-0x68]
	xor ecx, ecx
R_SetupPass_430:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz R_SetupPass_430
R_SetupPass_420:
	xor eax, eax
R_SetupPass_500:
	movzx eax, al
	test eax, eax
	jnz R_SetupPass_440
	mov eax, [ebp-0x34]
	add eax, 0x4
	mov [ebp-0xac], eax
	mov ebx, [ebp-0x48]
	mov esi, [ebp-0x50]
	mov edx, ebx
	mov eax, [ebp-0x34]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja R_SetupPass_450
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
R_SetupPass_510:
	mov eax, [ebp-0x34]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x64], eax
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe R_SetupPass_460
	cmp ax, 0x20
	jz R_SetupPass_470
	lea ebx, [edx+0x400]
R_SetupPass_520:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPass_480
R_SetupPass_440:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x30]
	cmp [ebp-0x44], eax
	jz R_SetupPass_50
	mov esi, eax
	jmp R_SetupPass_490
R_SetupPass_400:
	movzx ecx, word [ecx+0x2]
	lea eax, [eax+ecx*8+0xd0]
	mov [ebp-0xbc], eax
	mov ecx, [ebp-0x34]
	mov ecx, [ecx+0x4]
	mov [ebp-0xa8], ecx
	movzx eax, dx
	movzx edi, word [ebx+eax*2+0xe30]
	mov [ebp-0xa4], edi
	mov edx, edi
	mov eax, [ebp-0xbc]
	xor edx, [eax+0xc]
	mov eax, ecx
	mov ecx, [ebp-0xbc]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPass_410
	mov eax, [ebp-0xa8]
	mov edx, [ebp-0xa4]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp R_SetupPass_420
R_SetupPass_410:
	mov eax, 0x1
	jmp R_SetupPass_500
R_SetupPass_480:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
R_SetupPass_460:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPass_440
R_SetupPass_450:
	mov ebx, [ebp-0xac]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call R_GetCodeMatrix
	mov esi, eax
	mov ecx, [ebp-0x50]
	jmp R_SetupPass_510
R_SetupPass_470:
	lea ebx, [edx+0x3c0]
	jmp R_SetupPass_520
R_SetupPass_370:
	mov eax, r_specularMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz R_SetupPass_530
	jmp R_SetupPass_310
R_SetupPass_390:
	xor edi, edi
	jmp R_SetupPass_540
R_SetupPass_550:
	movzx eax, byte [ebp-0x19]
	mov ecx, [ebp-0x34]
	movzx edx, word [ecx+0x2]
	mov ecx, [ebp-0x54]
	mov [ebp-0x88], ecx
	mov ecx, [ebp-0x50]
	mov [ebp-0x84], ecx
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x88]
	mov edx, [ebp-0x84]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	add dword [ebp-0x34], 0x8
	add edi, 0x1
	cmp esi, edi
	jz R_SetupPass_50
R_SetupPass_540:
	mov edx, [ebp-0x34]
	cmp word [edx], 0x4
	jnz R_SetupPass_50
	lea ecx, [ebp-0x19]
	mov [esp+0x8], ecx
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp], eax
	call R_GetTextureFromCode
	mov ebx, eax
	test eax, eax
	jnz R_SetupPass_550
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x54]
	mov [esp], ecx
	call R_TextureFromCodeError
	jmp R_SetupPass_550


;R_SetIndexData(GfxCmdBufPrimState*, unsigned short const*, int)
R_SetIndexData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x10]
	lea edi, [eax+eax*2]
	mov eax, gfxBuf
	mov edx, [eax+0x48]
	mov eax, [edx]
	lea eax, [edi+eax]
	cmp eax, [edx+0x4]
	jle R_SetIndexData_10
	mov dword [edx], 0x0
	mov eax, gfxBuf
	mov edx, [eax+0x48]
R_SetIndexData_10:
	mov eax, [edx]
	test eax, eax
	jnz R_SetIndexData_20
	mov edx, gfxBuf
	add edx, 0x38
	mov eax, gfxBuf
	mov [eax+0x48], edx
R_SetIndexData_20:
	mov eax, [edx]
	mov [ebp-0x1c], eax
	lea ebx, [edi+edi]
	mov esi, [edx+0x8]
	mov eax, [edx]
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x1000
	add eax, 0x1000
	mov edx, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	add edx, edx
	mov [esp+0x4], edx
	mov [esp], esi
	call R_LockIndexBuffer
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov [esp], esi
	call R_UnlockIndexBuffer
	mov edx, [ebp+0x8]
	cmp esi, [edx+0x4]
	jz R_SetIndexData_30
	mov [edx+0x4], esi
	mov eax, [edx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x1a0]
R_SetIndexData_30:
	mov eax, gfxBuf
	mov edx, [eax+0x48]
	mov eax, [edx]
	lea eax, [edi+eax]
	mov [edx], eax
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SetVertexData(GfxCmdBufState*, void const*, int, int)
R_SetVertexData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x14]
	imul ebx, [ebp+0x10]
	mov edi, gfxBuf
	mov edx, [edi+0x70]
	mov esi, [edx+0x8]
	mov eax, [edx]
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x1000
	add eax, 0x1000
	mov edx, [edx]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov [esp], esi
	call R_LockVertexBuffer
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov [esp], esi
	call R_UnlockVertexBuffer
	mov edx, [edi+0x70]
	mov eax, [edx]
	mov ecx, [edx]
	add ebx, ecx
	mov [edx], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_SetPixelShader(GfxCmdBufState*, MaterialPixelShader const*)
R_SetPixelShader:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp [edx+0x9ec], eax
	jz R_SetPixelShader_10
	mov ecx, [edx+0x90]
	test eax, eax
	jz R_SetPixelShader_20
	mov ebx, [eax+0x4]
R_SetPixelShader_30:
	mov [ecx+0x3b0], ebx
	mov [edx+0x9ec], eax
R_SetPixelShader_10:
	pop ebx
	pop ebp
	ret
R_SetPixelShader_20:
	xor ebx, ebx
	jmp R_SetPixelShader_30


;R_SetVertexShader(GfxCmdBufState*, MaterialVertexShader const*)
R_SetVertexShader:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp [esi+0x9f0], ebx
	jz R_SetVertexShader_10
	mov edx, [esi+0x90]
	mov eax, [edx]
	mov ecx, [eax+0x170]
	test ebx, ebx
	jz R_SetVertexShader_20
	mov eax, [ebx+0x4]
R_SetVertexShader_30:
	mov [esp+0x4], eax
	mov [esp], edx
	call ecx
	mov [esi+0x9f0], ebx
R_SetVertexShader_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
R_SetVertexShader_20:
	xor eax, eax
	jmp R_SetVertexShader_30
	nop


;R_ReserveIndexData(GfxCmdBufPrimState*, int)
R_ReserveIndexData:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0xc]
	mov ebx, gfxBuf
	mov ecx, [ebx+0x48]
	mov edx, [ecx]
	lea eax, [eax+eax*2]
	add eax, edx
	cmp eax, [ecx+0x4]
	jle R_ReserveIndexData_10
	mov dword [ecx], 0x0
	mov ecx, [ebx+0x48]
R_ReserveIndexData_10:
	mov eax, [ecx]
	test eax, eax
	jnz R_ReserveIndexData_20
	lea ecx, [ebx+0x38]
	mov [ebx+0x48], ecx
R_ReserveIndexData_20:
	mov eax, [ecx]
	pop ebx
	pop ebp
	ret


;R_UpdateVertexDecl(GfxCmdBufState*)
R_UpdateVertexDecl:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edi, [eax+0xc4]
	mov edx, [edi+0x4]
	mov [ebp-0x1c], edx
	mov ebx, eax
	add ebx, 0x90
	mov edx, [edi]
	test edx, edx
	jz R_UpdateVertexDecl_10
	mov eax, [ebx+0x8]
	mov esi, [edx+eax*4+0x24]
R_UpdateVertexDecl_60:
	cmp esi, [ebx+0x24]
	jz R_UpdateVertexDecl_20
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
	mov edx, [edi]
R_UpdateVertexDecl_20:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x98]
	mov esi, [edx+ecx*4+0x24]
	test esi, esi
	jz R_UpdateVertexDecl_30
	mov eax, ebx
R_UpdateVertexDecl_80:
	mov edx, [ebp-0x1c]
	cmp edx, [eax+0x9f0]
	jz R_UpdateVertexDecl_40
	mov edx, [eax+0x90]
	mov eax, [edx]
	mov ecx, [eax+0x170]
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz R_UpdateVertexDecl_50
	mov ebx, [ebp-0x1c]
	mov eax, [ebx+0x4]
R_UpdateVertexDecl_70:
	mov [esp+0x4], eax
	mov [esp], edx
	call ecx
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x9f0], edx
R_UpdateVertexDecl_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_UpdateVertexDecl_10:
	xor esi, esi
	jmp R_UpdateVertexDecl_60
R_UpdateVertexDecl_50:
	xor eax, eax
	jmp R_UpdateVertexDecl_70
R_UpdateVertexDecl_30:
	mov eax, [ebx+0xb8]
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [edi+0x4]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vertex_type_i_do
	mov dword [esp], 0x1
	call Com_Error
	mov eax, [ebp+0x8]
	jmp R_UpdateVertexDecl_80


;R_SetupPassPerPrimArgs(GfxCmdBufContext)
R_SetupPassPerPrimArgs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0xc4]
	movzx eax, byte [edx+0xc]
	test al, al
	jnz R_SetupPassPerPrimArgs_10
R_SetupPassPerPrimArgs_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassPerPrimArgs_10:
	movzx eax, al
	mov [ebp-0x38], eax
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov [ebp-0x40], ebx
	mov [ebp-0x3c], esi
	mov [ebp-0x28], esi
	mov [ebp-0x24], ebx
	mov edx, [edx+0x10]
	mov [ebp-0x30], edx
	mov esi, [ecx+0x90]
	lea ebx, [esi+0x3c0]
	mov eax, [ebp-0x40]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPassPerPrimArgs_20
R_SetupPassPerPrimArgs_170:
	mov dword [ebp-0x1c], 0x0
R_SetupPassPerPrimArgs_130:
	mov ebx, [ebp-0x30]
	cmp word [ebx], 0x3
	jnz R_SetupPassPerPrimArgs_30
	mov ecx, ebx
	mov esi, [ebp-0x28]
	mov [ebp-0x3c], esi
	mov eax, [ebp-0x24]
	mov [ebp-0x40], eax
	mov ebx, [ebp-0x40]
	mov esi, [ebp-0x3c]
	mov edi, ebx
	mov [ebp-0x20], esi
	movzx edx, word [ecx+0x4]
	cmp dx, 0x39
	jbe R_SetupPassPerPrimArgs_40
	movzx eax, word [ecx+0x2]
	lea ecx, [esi+eax*8+0xd0]
	mov [ebp-0x6c], ecx
	add ecx, 0x8
	mov [ebp-0x34], ecx
	mov eax, [ebp-0x30]
	mov eax, [eax+0x4]
	mov [ebp-0x48], eax
	movzx eax, dx
	sub eax, 0x3a
	sar eax, 0x2
	movzx eax, word [ebx+eax*2+0xee4]
	mov [ebp-0x44], eax
	mov edx, eax
	xor edx, [ecx+0x4]
	mov eax, [ebp-0x48]
	mov ecx, [ebp-0x6c]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassPerPrimArgs_50
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz R_SetupPassPerPrimArgs_60
	mov edx, [ebp-0x34]
	xor ecx, ecx
R_SetupPassPerPrimArgs_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz R_SetupPassPerPrimArgs_70
R_SetupPassPerPrimArgs_60:
	xor eax, eax
R_SetupPassPerPrimArgs_140:
	movzx eax, al
	test eax, eax
	jnz R_SetupPassPerPrimArgs_80
	mov eax, [ebp-0x30]
	add eax, 0x4
	mov [ebp-0x5c], eax
	mov ebx, edi
	mov esi, [ebp-0x20]
	mov edx, edi
	mov eax, [ebp-0x30]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja R_SetupPassPerPrimArgs_90
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
R_SetupPassPerPrimArgs_150:
	mov eax, [ebp-0x30]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe R_SetupPassPerPrimArgs_100
	cmp ax, 0x20
	jz R_SetupPassPerPrimArgs_110
	lea ebx, [edx+0x400]
R_SetupPassPerPrimArgs_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPassPerPrimArgs_120
R_SetupPassPerPrimArgs_80:
	add dword [ebp-0x30], 0x8
	add dword [ebp-0x1c], 0x1
	mov esi, [ebp-0x38]
	cmp [ebp-0x1c], esi
	jnz R_SetupPassPerPrimArgs_130
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassPerPrimArgs_40:
	movzx ecx, word [ecx+0x2]
	lea eax, [esi+ecx*8+0xd0]
	mov [ebp-0x6c], eax
	mov ecx, [ebp-0x30]
	mov ecx, [ecx+0x4]
	mov [ebp-0x50], ecx
	movzx eax, dx
	movzx eax, word [ebx+eax*2+0xe30]
	mov [ebp-0x4c], eax
	mov edx, eax
	mov eax, [ebp-0x6c]
	xor edx, [eax+0xc]
	mov eax, ecx
	mov ecx, [ebp-0x6c]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassPerPrimArgs_50
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp R_SetupPassPerPrimArgs_60
R_SetupPassPerPrimArgs_50:
	mov eax, 0x1
	jmp R_SetupPassPerPrimArgs_140
R_SetupPassPerPrimArgs_120:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
R_SetupPassPerPrimArgs_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x2c]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPassPerPrimArgs_80
R_SetupPassPerPrimArgs_90:
	mov ebx, [ebp-0x5c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call R_GetCodeMatrix
	mov esi, eax
	mov ecx, [ebp-0x20]
	jmp R_SetupPassPerPrimArgs_150
R_SetupPassPerPrimArgs_110:
	lea ebx, [edx+0x3c0]
	jmp R_SetupPassPerPrimArgs_160
R_SetupPassPerPrimArgs_20:
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov [esi+0x3c0], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	mov eax, [edx+0x10]
	mov [ebx+0x10], eax
	mov eax, [edx+0x14]
	mov [ebx+0x14], eax
	mov eax, [edx+0x18]
	mov [ebx+0x18], eax
	mov eax, [edx+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [edx+0x20]
	mov [ebx+0x20], eax
	mov eax, [edx+0x24]
	mov [ebx+0x24], eax
	mov eax, [edx+0x28]
	mov [ebx+0x28], eax
	mov eax, [edx+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [edx+0x30]
	mov [ebx+0x30], eax
	mov eax, [edx+0x34]
	mov [ebx+0x34], eax
	mov eax, [edx+0x38]
	mov [ebx+0x38], eax
	mov eax, [edx+0x3c]
	mov [ebx+0x3c], eax
	mov ecx, [ebp-0x40]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x20
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPassPerPrimArgs_170
	nop


;R_SetupPassPerObjectArgs(GfxCmdBufContext)
R_SetupPassPerObjectArgs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov ebx, [ebp+0xc]
	mov edx, [ebx+0xc4]
	movzx ecx, byte [edx+0xd]
	test cl, cl
	jnz R_SetupPassPerObjectArgs_10
R_SetupPassPerObjectArgs_130:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassPerObjectArgs_10:
	movzx eax, byte [edx+0xc]
	mov edx, [edx+0x10]
	lea eax, [edx+eax*8]
	mov [ebp-0x50], eax
	movzx ecx, cl
	mov [ebp-0x4c], ecx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp-0x58], eax
	mov [ebp-0x54], edx
	mov [ebp-0x38], edx
	mov [ebp-0x34], eax
	mov esi, eax
	add esi, 0x40
	mov edi, [ebx+0x90]
	lea ebx, [edi+0x400]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPassPerObjectArgs_20
R_SetupPassPerObjectArgs_200:
	mov dword [ebp-0x2c], 0x0
	mov esi, [ebp-0x4c]
	sub esi, [ebp-0x2c]
	mov ecx, [ebp-0x50]
	cmp word [ecx], 0x3
	jnz R_SetupPassPerObjectArgs_30
R_SetupPassPerObjectArgs_140:
	mov ebx, [ebp-0x38]
	mov [ebp-0x54], ebx
	mov eax, [ebp-0x34]
	mov [ebp-0x58], eax
	mov ebx, [ebp-0x58]
	mov esi, [ebp-0x54]
	mov edi, ebx
	mov [ebp-0x30], esi
	movzx edx, word [ecx+0x4]
	cmp dx, 0x39
	jbe R_SetupPassPerObjectArgs_40
	movzx ecx, word [ecx+0x2]
	lea eax, [esi+ecx*8+0xd0]
	mov [ebp-0x7c], eax
	add eax, 0x8
	mov [ebp-0x40], eax
	mov ecx, [ebp-0x50]
	mov ecx, [ecx+0x4]
	mov [ebp-0x60], ecx
	movzx eax, dx
	sub eax, 0x3a
	sar eax, 0x2
	movzx eax, word [ebx+eax*2+0xee4]
	mov [ebp-0x5c], eax
	mov edx, eax
	mov eax, [ebp-0x40]
	xor edx, [eax+0x4]
	mov eax, ecx
	mov ecx, [ebp-0x7c]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassPerObjectArgs_50
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x50]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz R_SetupPassPerObjectArgs_60
	mov edx, [ebp-0x40]
	xor ecx, ecx
R_SetupPassPerObjectArgs_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz R_SetupPassPerObjectArgs_70
R_SetupPassPerObjectArgs_60:
	xor eax, eax
R_SetupPassPerObjectArgs_170:
	movzx eax, al
	test eax, eax
	jnz R_SetupPassPerObjectArgs_80
	mov eax, [ebp-0x50]
	add eax, 0x4
	mov [ebp-0x6c], eax
	mov ebx, edi
	mov esi, [ebp-0x30]
	mov edx, edi
	mov eax, [ebp-0x50]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja R_SetupPassPerObjectArgs_90
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
R_SetupPassPerObjectArgs_180:
	mov eax, [ebp-0x50]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x50]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe R_SetupPassPerObjectArgs_100
	cmp ax, 0x20
	jz R_SetupPassPerObjectArgs_110
	lea ebx, [edx+0x400]
R_SetupPassPerObjectArgs_190:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPassPerObjectArgs_120
R_SetupPassPerObjectArgs_80:
	add dword [ebp-0x50], 0x8
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x4c]
	cmp [ebp-0x2c], eax
	jz R_SetupPassPerObjectArgs_130
	mov esi, [ebp-0x4c]
	sub esi, [ebp-0x2c]
	mov ecx, [ebp-0x50]
	cmp word [ecx], 0x3
	jz R_SetupPassPerObjectArgs_140
R_SetupPassPerObjectArgs_30:
	xor edi, edi
	jmp R_SetupPassPerObjectArgs_150
R_SetupPassPerObjectArgs_160:
	movzx eax, byte [ebp-0x19]
	mov ecx, [ebp-0x50]
	movzx edx, word [ecx+0x2]
	mov ecx, [ebp-0x38]
	mov [ebp-0x44], ecx
	mov ecx, [ebp-0x34]
	mov [ebp-0x48], ecx
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetSampler
	add dword [ebp-0x50], 0x8
	add edi, 0x1
	cmp esi, edi
	jz R_SetupPassPerObjectArgs_130
R_SetupPassPerObjectArgs_150:
	mov edx, [ebp-0x50]
	cmp word [edx], 0x4
	jnz R_SetupPassPerObjectArgs_130
	mov ecx, edx
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x34]
	mov [esp], ebx
	call R_GetTextureFromCode
	mov ebx, eax
	test eax, eax
	jnz R_SetupPassPerObjectArgs_160
	mov edx, [ebp-0x50]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x34]
	mov [esp], ecx
	call R_TextureFromCodeError
	jmp R_SetupPassPerObjectArgs_160
R_SetupPassPerObjectArgs_40:
	mov ecx, [ebp-0x50]
	movzx ecx, word [ecx+0x2]
	lea eax, [esi+ecx*8+0xd0]
	mov [ebp-0x7c], eax
	mov ecx, [ebp-0x50]
	mov ecx, [ecx+0x4]
	mov [ebp-0x68], ecx
	movzx eax, dx
	movzx eax, word [ebx+eax*2+0xe30]
	mov [ebp-0x64], eax
	mov edx, eax
	mov eax, [ebp-0x7c]
	xor edx, [eax+0xc]
	mov eax, ecx
	mov ecx, [ebp-0x7c]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassPerObjectArgs_50
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp R_SetupPassPerObjectArgs_60
R_SetupPassPerObjectArgs_50:
	mov eax, 0x1
	jmp R_SetupPassPerObjectArgs_170
R_SetupPassPerObjectArgs_120:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
R_SetupPassPerObjectArgs_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPassPerObjectArgs_80
R_SetupPassPerObjectArgs_90:
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call R_GetCodeMatrix
	mov esi, eax
	mov ecx, [ebp-0x30]
	jmp R_SetupPassPerObjectArgs_180
R_SetupPassPerObjectArgs_110:
	lea ebx, [edx+0x3c0]
	jmp R_SetupPassPerObjectArgs_190
R_SetupPassPerObjectArgs_20:
	mov edx, [ebp-0x34]
	mov eax, [edx+0x40]
	mov [edi+0x400], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x24
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPassPerObjectArgs_200


;R_SetupPassPixelShaderArgs(GfxCmdBufContext)
R_SetupPassPixelShaderArgs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0xc4]
	movzx edi, byte [esi+0xe]
	mov eax, edi
	test al, al
	jnz R_SetupPassPixelShaderArgs_10
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassPixelShaderArgs_10:
	movzx edx, byte [esi+0xd]
	movzx eax, byte [esi+0xc]
	add edx, eax
	mov eax, [esi+0x10]
	lea edx, [eax+edx*8]
	mov [ebp-0x14], ecx
	mov [ebp-0x10], ebx
	mov eax, edi
	movzx ecx, al
	mov [ebp+0x8], edx
	mov eax, [ebp-0x14]
	mov edx, [ebp-0x10]
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_SetPassPixelShaderStableArguments
	nop


;R_SetupPassVertexShaderArgs(GfxCmdBufContext)
R_SetupPassVertexShaderArgs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp+0xc]
	mov ecx, [eax+0xc4]
	movzx ebx, byte [ecx+0xe]
	test bl, bl
	jz R_SetupPassVertexShaderArgs_10
	movzx eax, byte [ecx+0xd]
	movzx edx, byte [ecx+0xc]
	add eax, edx
	mov edx, [ecx+0x10]
	lea edi, [edx+eax*8]
	movzx edx, bl
	xor eax, eax
R_SetupPassVertexShaderArgs_30:
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x1c], ecx
	cmp word [edi], 0x2
	ja R_SetupPassVertexShaderArgs_20
	add edi, 0x8
	add eax, 0x1
	cmp edx, eax
	jnz R_SetupPassVertexShaderArgs_30
R_SetupPassVertexShaderArgs_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassVertexShaderArgs_20:
	mov dword [ebp-0x20], 0x0
R_SetupPassVertexShaderArgs_130:
	cmp word [edi], 0x3
	jnz R_SetupPassVertexShaderArgs_10
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	mov esi, edx
	mov [ebp-0x24], ebx
	movzx edx, word [edi+0x4]
	cmp dx, 0x39
	jbe R_SetupPassVertexShaderArgs_40
	movzx ecx, word [edi+0x2]
	lea ecx, [esi+ecx*8+0xd0]
	lea eax, [ecx+0x8]
	mov [ebp-0x3c], eax
	mov eax, [edi+0x4]
	mov [ebp-0x48], eax
	movzx eax, dx
	sub eax, 0x3a
	sar eax, 0x2
	movzx eax, word [ebx+eax*2+0xee4]
	mov [ebp-0x44], eax
	mov edx, eax
	mov eax, [ebp-0x3c]
	xor edx, [eax+0x4]
	mov eax, [ebp-0x48]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassVertexShaderArgs_50
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	movzx eax, byte [edi+0x7]
	sub eax, 0x1
	jz R_SetupPassVertexShaderArgs_60
	mov edx, [ebp-0x3c]
	xor ecx, ecx
R_SetupPassVertexShaderArgs_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz R_SetupPassVertexShaderArgs_70
R_SetupPassVertexShaderArgs_60:
	xor eax, eax
R_SetupPassVertexShaderArgs_140:
	movzx eax, al
	test eax, eax
	jnz R_SetupPassVertexShaderArgs_80
	lea edx, [edi+0x4]
	mov [ebp-0x5c], edx
	mov ebx, [ebp-0x28]
	mov esi, [ebp-0x2c]
	mov edx, ebx
	movzx eax, word [edi+0x4]
	mov [ebp-0x36], ax
	cmp ax, 0x39
	ja R_SetupPassVertexShaderArgs_90
	mov ecx, esi
	movzx eax, word [ebp-0x36]
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
R_SetupPassVertexShaderArgs_150:
	movzx eax, byte [edi+0x7]
	mov [ebp-0x34], eax
	movzx eax, word [edi+0x2]
	movzx edx, ax
	mov [ebp-0x30], edx
	mov edx, [ecx+0x90]
	cmp dword [ebp-0x30], 0x1f
	jbe R_SetupPassVertexShaderArgs_100
	cmp ax, 0x20
	jz R_SetupPassVertexShaderArgs_110
	lea ebx, [edx+0x400]
R_SetupPassVertexShaderArgs_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz R_SetupPassVertexShaderArgs_120
R_SetupPassVertexShaderArgs_80:
	add edi, 0x8
	add dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jnz R_SetupPassVertexShaderArgs_130
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassVertexShaderArgs_40:
	movzx ecx, word [edi+0x2]
	mov eax, [ebp-0x2c]
	lea ecx, [eax+ecx*8+0xd0]
	mov eax, [edi+0x4]
	mov [ebp-0x50], eax
	movzx eax, dx
	mov edx, [ebp-0x24]
	movzx eax, word [edx+eax*2+0xe30]
	mov [ebp-0x4c], eax
	mov edx, eax
	xor edx, [ecx+0xc]
	mov eax, [ebp-0x50]
	xor eax, [ecx+0x8]
	or edx, eax
	jz R_SetupPassVertexShaderArgs_50
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp R_SetupPassVertexShaderArgs_60
R_SetupPassVertexShaderArgs_50:
	mov eax, 0x1
	jmp R_SetupPassVertexShaderArgs_140
R_SetupPassVertexShaderArgs_120:
	mov eax, [esi]
	mov [ebx], eax
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	mov eax, [esi+0x8]
	mov [ebx+0x8], eax
	mov eax, [esi+0xc]
	mov [ebx+0xc], eax
	mov eax, [esi+0x10]
	mov [ebx+0x10], eax
	mov eax, [esi+0x14]
	mov [ebx+0x14], eax
	mov eax, [esi+0x18]
	mov [ebx+0x18], eax
	mov eax, [esi+0x1c]
	mov [ebx+0x1c], eax
	mov eax, [esi+0x20]
	mov [ebx+0x20], eax
	mov eax, [esi+0x24]
	mov [ebx+0x24], eax
	mov eax, [esi+0x28]
	mov [ebx+0x28], eax
	mov eax, [esi+0x2c]
	mov [ebx+0x2c], eax
	mov eax, [esi+0x30]
	mov [ebx+0x30], eax
	mov eax, [esi+0x34]
	mov [ebx+0x34], eax
	mov eax, [esi+0x38]
	mov [ebx+0x38], eax
	mov eax, [esi+0x3c]
	mov [ebx+0x3c], eax
R_SetupPassVertexShaderArgs_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x34]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp R_SetupPassVertexShaderArgs_80
R_SetupPassVertexShaderArgs_90:
	mov ebx, [ebp-0x5c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x36]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_GetCodeMatrix
	mov esi, eax
	mov ecx, [ebp-0x2c]
	jmp R_SetupPassVertexShaderArgs_150
R_SetupPassVertexShaderArgs_110:
	lea ebx, [edx+0x3c0]
	jmp R_SetupPassVertexShaderArgs_160


;R_SetupPassCriticalPixelShaderArgs(GfxCmdBufContext)
R_SetupPassCriticalPixelShaderArgs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov dword [ebp-0x14], 0x0
	mov dword [ebp-0x10], 0x0
	mov ecx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, [ebx+0xc4]
	movzx edi, byte [esi+0xe]
	mov eax, edi
	test al, al
	jnz R_SetupPassCriticalPixelShaderArgs_10
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupPassCriticalPixelShaderArgs_10:
	movzx edx, byte [esi+0xd]
	movzx eax, byte [esi+0xc]
	add edx, eax
	mov eax, [esi+0x10]
	lea edx, [eax+edx*8]
	mov [ebp-0x14], ecx
	mov [ebp-0x10], ebx
	mov eax, edi
	movzx ecx, al
	mov [ebp+0x8], edx
	mov eax, [ebp-0x14]
	mov edx, [ebp-0x10]
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_SetPassPixelShaderStableArguments
	nop


;Initialized global or static variables of r_shade:
SECTION .data


;Initialized constant data of r_shade:
SECTION .rdata


;Zero initialized global or static variables of r_shade:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_vertex_type_i_do:		db "Vertex type %i doesn",27h,"t have the information used by shader %s in material %s",0ah,0



;All constant floats and doubles:
SECTION .rdata

