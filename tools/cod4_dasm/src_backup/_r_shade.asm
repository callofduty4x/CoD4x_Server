;Imports of r_shade:
	extern glProgramEnvParameters4fvEXT
	extern _Z15R_ChangeState_0P14GfxCmdBufStatej
	extern _Z15R_ChangeState_1P14GfxCmdBufStatej
	extern _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	extern rg
	extern _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	extern r_drawWater
	extern _Z20R_UploadWaterTextureP7water_tf
	extern r_colorMap
	extern _Z24R_OverrideGrayscaleImagePK6dvar_s
	extern r_normalMap
	extern rgp
	extern _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	extern r_specularMap
	extern _Z20R_GetTextureFromCodeP20GfxCmdBufSourceStatejPh
	extern _Z22R_TextureFromCodeErrorP20GfxCmdBufSourceStatej
	extern gfxBuf
	extern _Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii
	extern memcpy
	extern _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
	extern _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	extern Com_Memcpy
	extern _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
	extern _Z9Com_Error11errorParm_tPKcz

;Exports of r_shade:
	global _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument
	global _Z11R_SetupPass16GfxCmdBufContextj
	global _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti
	global _Z15R_SetVertexDataP14GfxCmdBufStatePKvii
	global _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader
	global _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader
	global _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei
	global _Z18R_UpdateVertexDeclP14GfxCmdBufState
	global _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext
	global _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext
	global _Z26R_SetupPassPixelShaderArgs16GfxCmdBufContext
	global _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext
	global _Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext


SECTION .text


;R_SetPassPixelShaderStableArguments(GfxCmdBufContext, unsigned int, MaterialShaderArgument const*)
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument:
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
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_20:
	mov edx, ecx
	sub edx, eax
	mov [ebp-0x1c], edx
	cmp word [edi], 0x4
	ja _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_10
	add edi, 0x8
	add eax, 0x1
	cmp ecx, eax
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_20
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_110:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_10:
	mov dword [ebp-0x24], 0x0
	mov ecx, [ebp-0x1c]
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_30
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_60:
	mov ecx, edx
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_30:
	sub ecx, [ebp-0x24]
	mov [ebp-0x20], ecx
	cmp word [edi], 0x5
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_40
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
	jz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_50
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
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_50:
	add edi, 0x8
	add dword [ebp-0x24], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x24], edx
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_60
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_40:
	mov eax, [ebp-0x34]
	mov esi, [eax+0x48]
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp-0x20]
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_120:
	sub ebx, [ebp-0x28]
	cmp word [edi], 0x6
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_70
	mov ebx, [edi+0x4]
	cmp ebx, [esi]
	jz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_80
	lea ecx, [esi+0x20]
	mov edx, ecx
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_90
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_100:
	add ecx, 0x20
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_90:
	mov esi, ecx
	mov eax, [edx]
	add edx, 0x20
	cmp ebx, eax
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_100
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_80:
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
	jz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_110
	mov ebx, eax
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_120
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_70:
	xor esi, esi
_Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_130:
	cmp word [edi], 0x7
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_110
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
	jnz _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_130
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument_110
	nop


;R_SetupPass(GfxCmdBufContext, unsigned int)
_Z11R_SetupPass16GfxCmdBufContextj:
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
	jz _Z11R_SetupPass16GfxCmdBufContextj_10
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z15R_ChangeState_0P14GfxCmdBufStatej
	mov ecx, [ebp-0x58]
	mov [esi+0x9dc], ecx
	mov eax, [ebp-0x5c]
_Z11R_SetupPass16GfxCmdBufContextj_10:
	cmp eax, [edi+0x9e0]
	jz _Z11R_SetupPass16GfxCmdBufContextj_20
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z15R_ChangeState_1P14GfxCmdBufStatej
	mov edx, [ebp-0x5c]
	mov [edi+0x9e0], edx
_Z11R_SetupPass16GfxCmdBufContextj_20:
	mov ecx, [ebp-0x90]
	mov eax, [ecx+0x8]
	cmp eax, [edi+0x9ec]
	jz _Z11R_SetupPass16GfxCmdBufContextj_30
	mov edx, [edi+0x90]
	test eax, eax
	jz _Z11R_SetupPass16GfxCmdBufContextj_40
	mov ecx, [eax+0x4]
_Z11R_SetupPass16GfxCmdBufContextj_250:
	mov [edx+0x3b0], ecx
	mov [edi+0x9ec], eax
	mov eax, [ebp-0x90]
_Z11R_SetupPass16GfxCmdBufContextj_240:
	movzx ecx, byte [eax+0xe]
	test cl, cl
	jz _Z11R_SetupPass16GfxCmdBufContextj_50
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
_Z11R_SetupPass16GfxCmdBufContextj_130:
	mov edx, [ebp-0x8c]
	sub edx, [ebp-0x38]
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x34]
	cmp word [ecx], 0x0
	jnz _Z11R_SetupPass16GfxCmdBufContextj_60
	mov ebx, [ecx+0x4]
	cmp ebx, [edi]
	jz _Z11R_SetupPass16GfxCmdBufContextj_70
	lea ecx, [edi+0x20]
	mov edx, ecx
	jmp _Z11R_SetupPass16GfxCmdBufContextj_80
_Z11R_SetupPass16GfxCmdBufContextj_90:
	add ecx, 0x20
_Z11R_SetupPass16GfxCmdBufContextj_80:
	mov edi, ecx
	mov eax, [edx]
	add edx, 0x20
	cmp eax, ebx
	jnz _Z11R_SetupPass16GfxCmdBufContextj_90
	mov ebx, [ebp-0x34]
_Z11R_SetupPass16GfxCmdBufContextj_150:
	movzx eax, word [ebx+0x2]
	movzx edx, ax
	mov [ebp-0x7c], edx
	mov ecx, [ebp-0x50]
	mov dword [ecx+edx*8+0xd8], 0xffffffff
	mov dword [ecx+edx*8+0xdc], 0xffffffff
	mov edx, [ecx+0x90]
	lea ebx, [edi+0x10]
	cmp dword [ebp-0x7c], 0x1f
	jbe _Z11R_SetupPass16GfxCmdBufContextj_100
	cmp ax, 0x20
	jz _Z11R_SetupPass16GfxCmdBufContextj_110
	lea esi, [edx+0x400]
_Z11R_SetupPass16GfxCmdBufContextj_160:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z11R_SetupPass16GfxCmdBufContextj_120
_Z11R_SetupPass16GfxCmdBufContextj_140:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x38], 0x1
	mov eax, [ebp-0x38]
	cmp [ebp-0x8c], eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_130
_Z11R_SetupPass16GfxCmdBufContextj_50:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11R_SetupPass16GfxCmdBufContextj_120:
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
_Z11R_SetupPass16GfxCmdBufContextj_100:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], 0x1
	mov ebx, [ebp-0x7c]
	mov [esp+0x4], ebx
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z11R_SetupPass16GfxCmdBufContextj_140
_Z11R_SetupPass16GfxCmdBufContextj_70:
	mov ebx, ecx
	jmp _Z11R_SetupPass16GfxCmdBufContextj_150
_Z11R_SetupPass16GfxCmdBufContextj_110:
	lea esi, [edx+0x3c0]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_160
_Z11R_SetupPass16GfxCmdBufContextj_60:
	mov dword [ebp-0x3c], 0x0
	mov edi, [ebp-0x2c]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_170
_Z11R_SetupPass16GfxCmdBufContextj_210:
	cmp ax, 0x20
	jz _Z11R_SetupPass16GfxCmdBufContextj_180
	lea ebx, [edx+0x400]
_Z11R_SetupPass16GfxCmdBufContextj_230:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z11R_SetupPass16GfxCmdBufContextj_190
_Z11R_SetupPass16GfxCmdBufContextj_220:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x3c], 0x1
	mov ebx, [ebp-0x2c]
	cmp [ebp-0x3c], ebx
	jz _Z11R_SetupPass16GfxCmdBufContextj_50
	mov edi, ebx
_Z11R_SetupPass16GfxCmdBufContextj_170:
	sub edi, [ebp-0x3c]
	mov eax, [ebp-0x34]
	cmp word [eax], 0x1
	jnz _Z11R_SetupPass16GfxCmdBufContextj_200
	mov esi, [eax+0x4]
	movzx eax, word [eax+0x2]
	movzx edi, ax
	mov edx, [ebp-0x50]
	mov dword [edx+edi*8+0xd8], 0xffffffff
	mov dword [edx+edi*8+0xdc], 0xffffffff
	mov ecx, [ebp-0x50]
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	ja _Z11R_SetupPass16GfxCmdBufContextj_210
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z11R_SetupPass16GfxCmdBufContextj_220
_Z11R_SetupPass16GfxCmdBufContextj_190:
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
	jmp _Z11R_SetupPass16GfxCmdBufContextj_220
_Z11R_SetupPass16GfxCmdBufContextj_180:
	lea ebx, [edx+0x3c0]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_230
_Z11R_SetupPass16GfxCmdBufContextj_30:
	mov eax, ecx
	jmp _Z11R_SetupPass16GfxCmdBufContextj_240
_Z11R_SetupPass16GfxCmdBufContextj_40:
	xor ecx, ecx
	jmp _Z11R_SetupPass16GfxCmdBufContextj_250
_Z11R_SetupPass16GfxCmdBufContextj_200:
	mov edx, [ebp-0x80]
	mov ebx, [edx+0x44]
	mov dword [ebp-0x40], 0x0
_Z11R_SetupPass16GfxCmdBufContextj_330:
	mov edx, edi
	sub edx, [ebp-0x40]
	mov [ebp-0x30], edx
	mov ecx, [ebp-0x34]
	cmp word [ecx], 0x2
	jnz _Z11R_SetupPass16GfxCmdBufContextj_260
	mov ecx, [ebp-0x54]
	mov [ebp-0x98], ecx
	mov eax, [ebp-0x50]
	mov [ebp-0x94], eax
	mov [ebp-0x4c], ecx
	mov eax, [ebp-0x34]
	mov ecx, [eax+0x4]
	cmp ecx, [ebx]
	jz _Z11R_SetupPass16GfxCmdBufContextj_270
	lea eax, [ebx+0xc]
	mov edx, eax
	jmp _Z11R_SetupPass16GfxCmdBufContextj_280
_Z11R_SetupPass16GfxCmdBufContextj_290:
	lea eax, [ebx+0xc]
_Z11R_SetupPass16GfxCmdBufContextj_280:
	mov ebx, eax
	mov eax, [edx]
	add edx, 0xc
	cmp ecx, eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_290
_Z11R_SetupPass16GfxCmdBufContextj_270:
	cmp byte [ebx+0x7], 0xb
	jz _Z11R_SetupPass16GfxCmdBufContextj_300
	mov esi, [ebx+0x8]
_Z11R_SetupPass16GfxCmdBufContextj_350:
	movzx eax, byte [ebx+0x6]
	mov [ebp-0x69], al
	mov edx, rg
	cmp byte [edx+0x2214], 0x0
	jz _Z11R_SetupPass16GfxCmdBufContextj_310
	cmp dword [esi], 0x3
	jz _Z11R_SetupPass16GfxCmdBufContextj_320
_Z11R_SetupPass16GfxCmdBufContextj_310:
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x40], 0x1
	cmp edi, [ebp-0x40]
	jnz _Z11R_SetupPass16GfxCmdBufContextj_330
	jmp _Z11R_SetupPass16GfxCmdBufContextj_50
_Z11R_SetupPass16GfxCmdBufContextj_300:
	mov edx, [ebx+0x8]
	mov esi, [edx+0x40]
	mov eax, r_drawWater
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z11R_SetupPass16GfxCmdBufContextj_340
	mov ecx, [ebp-0x4c]
	mov eax, [ecx+0xf40]
_Z11R_SetupPass16GfxCmdBufContextj_380:
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z20R_UploadWaterTextureP7water_tf
	jmp _Z11R_SetupPass16GfxCmdBufContextj_350
_Z11R_SetupPass16GfxCmdBufContextj_320:
	movzx eax, byte [ebx+0x7]
	cmp al, 0x5
	jz _Z11R_SetupPass16GfxCmdBufContextj_360
	cmp al, 0x8
	jz _Z11R_SetupPass16GfxCmdBufContextj_370
	cmp al, 0x2
	jnz _Z11R_SetupPass16GfxCmdBufContextj_310
	mov eax, r_colorMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jz _Z11R_SetupPass16GfxCmdBufContextj_310
_Z11R_SetupPass16GfxCmdBufContextj_530:
	mov [esp], eax
	call _Z24R_OverrideGrayscaleImagePK6dvar_s
	mov esi, eax
	jmp _Z11R_SetupPass16GfxCmdBufContextj_310
_Z11R_SetupPass16GfxCmdBufContextj_340:
	mov ecx, rg
	mov eax, [ecx+0x22fc]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_380
_Z11R_SetupPass16GfxCmdBufContextj_360:
	mov eax, r_normalMap
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_310
	mov eax, rgp
	mov esi, [eax+0x201c]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_310
_Z11R_SetupPass16GfxCmdBufContextj_260:
	mov dword [ebp-0x44], 0x0
	mov esi, [ebp-0x30]
_Z11R_SetupPass16GfxCmdBufContextj_490:
	sub esi, [ebp-0x44]
	mov edx, [ebp-0x34]
	cmp word [edx], 0x3
	jnz _Z11R_SetupPass16GfxCmdBufContextj_390
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
	jbe _Z11R_SetupPass16GfxCmdBufContextj_400
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
	jz _Z11R_SetupPass16GfxCmdBufContextj_410
	mov eax, [ebp-0xa0]
	mov edx, [ebp-0x9c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x34]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz _Z11R_SetupPass16GfxCmdBufContextj_420
	mov edx, [ebp-0x68]
	xor ecx, ecx
_Z11R_SetupPass16GfxCmdBufContextj_430:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_430
_Z11R_SetupPass16GfxCmdBufContextj_420:
	xor eax, eax
_Z11R_SetupPass16GfxCmdBufContextj_500:
	movzx eax, al
	test eax, eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_440
	mov eax, [ebp-0x34]
	add eax, 0x4
	mov [ebp-0xac], eax
	mov ebx, [ebp-0x48]
	mov esi, [ebp-0x50]
	mov edx, ebx
	mov eax, [ebp-0x34]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja _Z11R_SetupPass16GfxCmdBufContextj_450
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
_Z11R_SetupPass16GfxCmdBufContextj_510:
	mov eax, [ebp-0x34]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x64], eax
	mov edx, [ebp-0x34]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe _Z11R_SetupPass16GfxCmdBufContextj_460
	cmp ax, 0x20
	jz _Z11R_SetupPass16GfxCmdBufContextj_470
	lea ebx, [edx+0x400]
_Z11R_SetupPass16GfxCmdBufContextj_520:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z11R_SetupPass16GfxCmdBufContextj_480
_Z11R_SetupPass16GfxCmdBufContextj_440:
	add dword [ebp-0x34], 0x8
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x30]
	cmp [ebp-0x44], eax
	jz _Z11R_SetupPass16GfxCmdBufContextj_50
	mov esi, eax
	jmp _Z11R_SetupPass16GfxCmdBufContextj_490
_Z11R_SetupPass16GfxCmdBufContextj_400:
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
	jz _Z11R_SetupPass16GfxCmdBufContextj_410
	mov eax, [ebp-0xa8]
	mov edx, [ebp-0xa4]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp _Z11R_SetupPass16GfxCmdBufContextj_420
_Z11R_SetupPass16GfxCmdBufContextj_410:
	mov eax, 0x1
	jmp _Z11R_SetupPass16GfxCmdBufContextj_500
_Z11R_SetupPass16GfxCmdBufContextj_480:
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
_Z11R_SetupPass16GfxCmdBufContextj_460:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x64]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z11R_SetupPass16GfxCmdBufContextj_440
_Z11R_SetupPass16GfxCmdBufContextj_450:
	mov ebx, [ebp-0xac]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	mov esi, eax
	mov ecx, [ebp-0x50]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_510
_Z11R_SetupPass16GfxCmdBufContextj_470:
	lea ebx, [edx+0x3c0]
	jmp _Z11R_SetupPass16GfxCmdBufContextj_520
_Z11R_SetupPass16GfxCmdBufContextj_370:
	mov eax, r_specularMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jnz _Z11R_SetupPass16GfxCmdBufContextj_530
	jmp _Z11R_SetupPass16GfxCmdBufContextj_310
_Z11R_SetupPass16GfxCmdBufContextj_390:
	xor edi, edi
	jmp _Z11R_SetupPass16GfxCmdBufContextj_540
_Z11R_SetupPass16GfxCmdBufContextj_550:
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add dword [ebp-0x34], 0x8
	add edi, 0x1
	cmp esi, edi
	jz _Z11R_SetupPass16GfxCmdBufContextj_50
_Z11R_SetupPass16GfxCmdBufContextj_540:
	mov edx, [ebp-0x34]
	cmp word [edx], 0x4
	jnz _Z11R_SetupPass16GfxCmdBufContextj_50
	lea ecx, [ebp-0x19]
	mov [esp+0x8], ecx
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp-0x54]
	mov [esp], eax
	call _Z20R_GetTextureFromCodeP20GfxCmdBufSourceStatejPh
	mov ebx, eax
	test eax, eax
	jnz _Z11R_SetupPass16GfxCmdBufContextj_550
	mov edx, [ebp-0x34]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x54]
	mov [esp], ecx
	call _Z22R_TextureFromCodeErrorP20GfxCmdBufSourceStatej
	jmp _Z11R_SetupPass16GfxCmdBufContextj_550


;R_SetIndexData(GfxCmdBufPrimState*, unsigned short const*, int)
_Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti:
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
	jle _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_10
	mov dword [edx], 0x0
	mov eax, gfxBuf
	mov edx, [eax+0x48]
_Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_10:
	mov eax, [edx]
	test eax, eax
	jnz _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_20
	mov edx, gfxBuf
	add edx, 0x38
	mov eax, gfxBuf
	mov [eax+0x48], edx
_Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_20:
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
	call _Z17R_LockIndexBufferP21IDirect3DIndexBuffer9iii
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov [esp], esi
	call _Z19R_UnlockIndexBufferP21IDirect3DIndexBuffer9
	mov edx, [ebp+0x8]
	cmp esi, [edx+0x4]
	jz _Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_30
	mov [edx+0x4], esi
	mov eax, [edx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x1a0]
_Z14R_SetIndexDataP18GfxCmdBufPrimStatePKti_30:
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
_Z15R_SetVertexDataP14GfxCmdBufStatePKvii:
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
	call _Z18R_LockVertexBufferP22IDirect3DVertexBuffer9iii
	mov [esp+0x8], ebx
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Com_Memcpy
	mov [esp], esi
	call _Z20R_UnlockVertexBufferP22IDirect3DVertexBuffer9
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
_Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp [edx+0x9ec], eax
	jz _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_10
	mov ecx, [edx+0x90]
	test eax, eax
	jz _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_20
	mov ebx, [eax+0x4]
_Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_30:
	mov [ecx+0x3b0], ebx
	mov [edx+0x9ec], eax
_Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_10:
	pop ebx
	pop ebp
	ret
_Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_20:
	xor ebx, ebx
	jmp _Z16R_SetPixelShaderP14GfxCmdBufStatePK19MaterialPixelShader_30


;R_SetVertexShader(GfxCmdBufState*, MaterialVertexShader const*)
_Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp [esi+0x9f0], ebx
	jz _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_10
	mov edx, [esi+0x90]
	mov eax, [edx]
	mov ecx, [eax+0x170]
	test ebx, ebx
	jz _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_20
	mov eax, [ebx+0x4]
_Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_30:
	mov [esp+0x4], eax
	mov [esp], edx
	call ecx
	mov [esi+0x9f0], ebx
_Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_20:
	xor eax, eax
	jmp _Z17R_SetVertexShaderP14GfxCmdBufStatePK20MaterialVertexShader_30
	nop


;R_ReserveIndexData(GfxCmdBufPrimState*, int)
_Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei:
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
	jle _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei_10
	mov dword [ecx], 0x0
	mov ecx, [ebx+0x48]
_Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei_10:
	mov eax, [ecx]
	test eax, eax
	jnz _Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei_20
	lea ecx, [ebx+0x38]
	mov [ebx+0x48], ecx
_Z18R_ReserveIndexDataP18GfxCmdBufPrimStatei_20:
	mov eax, [ecx]
	pop ebx
	pop ebp
	ret


;R_UpdateVertexDecl(GfxCmdBufState*)
_Z18R_UpdateVertexDeclP14GfxCmdBufState:
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
	jz _Z18R_UpdateVertexDeclP14GfxCmdBufState_10
	mov eax, [ebx+0x8]
	mov esi, [edx+eax*4+0x24]
_Z18R_UpdateVertexDeclP14GfxCmdBufState_60:
	cmp esi, [ebx+0x24]
	jz _Z18R_UpdateVertexDeclP14GfxCmdBufState_20
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x4], esi
	mov [esp], eax
	call dword [edx+0x15c]
	mov [ebx+0x24], esi
	mov edx, [edi]
_Z18R_UpdateVertexDeclP14GfxCmdBufState_20:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x98]
	mov esi, [edx+ecx*4+0x24]
	test esi, esi
	jz _Z18R_UpdateVertexDeclP14GfxCmdBufState_30
	mov eax, ebx
_Z18R_UpdateVertexDeclP14GfxCmdBufState_80:
	mov edx, [ebp-0x1c]
	cmp edx, [eax+0x9f0]
	jz _Z18R_UpdateVertexDeclP14GfxCmdBufState_40
	mov edx, [eax+0x90]
	mov eax, [edx]
	mov ecx, [eax+0x170]
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jz _Z18R_UpdateVertexDeclP14GfxCmdBufState_50
	mov ebx, [ebp-0x1c]
	mov eax, [ebx+0x4]
_Z18R_UpdateVertexDeclP14GfxCmdBufState_70:
	mov [esp+0x4], eax
	mov [esp], edx
	call ecx
	mov edx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [eax+0x9f0], edx
_Z18R_UpdateVertexDeclP14GfxCmdBufState_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18R_UpdateVertexDeclP14GfxCmdBufState_10:
	xor esi, esi
	jmp _Z18R_UpdateVertexDeclP14GfxCmdBufState_60
_Z18R_UpdateVertexDeclP14GfxCmdBufState_50:
	xor eax, eax
	jmp _Z18R_UpdateVertexDeclP14GfxCmdBufState_70
_Z18R_UpdateVertexDeclP14GfxCmdBufState_30:
	mov eax, [ebx+0xb8]
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [edi+0x4]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_vertex_type_i_do
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp+0x8]
	jmp _Z18R_UpdateVertexDeclP14GfxCmdBufState_80


;R_SetupPassPerPrimArgs(GfxCmdBufContext)
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext:
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
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_10
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_10:
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
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_20
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_170:
	mov dword [ebp-0x1c], 0x0
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_130:
	mov ebx, [ebp-0x30]
	cmp word [ebx], 0x3
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_30
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
	jbe _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_40
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
	jz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_60
	mov edx, [ebp-0x34]
	xor ecx, ecx
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_70
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_60:
	xor eax, eax
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_140:
	movzx eax, al
	test eax, eax
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_80
	mov eax, [ebp-0x30]
	add eax, 0x4
	mov [ebp-0x5c], eax
	mov ebx, edi
	mov esi, [ebp-0x20]
	mov edx, edi
	mov eax, [ebp-0x30]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_90
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_150:
	mov eax, [ebp-0x30]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_100
	cmp ax, 0x20
	jz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_110
	lea ebx, [edx+0x400]
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_120
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_80:
	add dword [ebp-0x30], 0x8
	add dword [ebp-0x1c], 0x1
	mov esi, [ebp-0x38]
	cmp [ebp-0x1c], esi
	jnz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_130
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_40:
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
	jz _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_60
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_50:
	mov eax, 0x1
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_140
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_120:
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
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x2c]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_80
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_90:
	mov ebx, [ebp-0x5c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	mov esi, eax
	mov ecx, [ebp-0x20]
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_150
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_110:
	lea ebx, [edx+0x3c0]
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_160
_Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_20:
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
	jmp _Z22R_SetupPassPerPrimArgs16GfxCmdBufContext_170
	nop


;R_SetupPassPerObjectArgs(GfxCmdBufContext)
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext:
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
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_10
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_130:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_10:
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
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_20
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_200:
	mov dword [ebp-0x2c], 0x0
	mov esi, [ebp-0x4c]
	sub esi, [ebp-0x2c]
	mov ecx, [ebp-0x50]
	cmp word [ecx], 0x3
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_30
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_140:
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
	jbe _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_40
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
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	mov edx, [ebp-0x50]
	movzx eax, byte [edx+0x7]
	sub eax, 0x1
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_60
	mov edx, [ebp-0x40]
	xor ecx, ecx
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_70
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_60:
	xor eax, eax
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_170:
	movzx eax, al
	test eax, eax
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_80
	mov eax, [ebp-0x50]
	add eax, 0x4
	mov [ebp-0x6c], eax
	mov ebx, edi
	mov esi, [ebp-0x30]
	mov edx, edi
	mov eax, [ebp-0x50]
	movzx edi, word [eax+0x4]
	cmp di, 0x39
	ja _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_90
	mov ecx, esi
	movzx eax, di
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_180:
	mov eax, [ebp-0x50]
	movzx eax, byte [eax+0x7]
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x50]
	movzx eax, word [edx+0x2]
	movzx edi, ax
	mov edx, [ecx+0x90]
	cmp edi, 0x1f
	jbe _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_100
	cmp ax, 0x20
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_110
	lea ebx, [edx+0x400]
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_190:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_120
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_80:
	add dword [ebp-0x50], 0x8
	add dword [ebp-0x2c], 0x1
	mov eax, [ebp-0x4c]
	cmp [ebp-0x2c], eax
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_130
	mov esi, [ebp-0x4c]
	sub esi, [ebp-0x2c]
	mov ecx, [ebp-0x50]
	cmp word [ecx], 0x3
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_140
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_30:
	xor edi, edi
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_150
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_160:
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
	call _Z12R_SetSampler16GfxCmdBufContextjhPK8GfxImage
	add dword [ebp-0x50], 0x8
	add edi, 0x1
	cmp esi, edi
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_130
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_150:
	mov edx, [ebp-0x50]
	cmp word [edx], 0x4
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_130
	mov ecx, edx
	lea edx, [ebp-0x19]
	mov [esp+0x8], edx
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x34]
	mov [esp], ebx
	call _Z20R_GetTextureFromCodeP20GfxCmdBufSourceStatejPh
	mov ebx, eax
	test eax, eax
	jnz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_160
	mov edx, [ebp-0x50]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x34]
	mov [esp], ecx
	call _Z22R_TextureFromCodeErrorP20GfxCmdBufSourceStatej
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_160
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_40:
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
	jz _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_60
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_50:
	mov eax, 0x1
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_170
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_120:
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
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_80
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_90:
	mov ebx, [ebp-0x6c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, di
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	mov esi, eax
	mov ecx, [ebp-0x30]
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_180
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_110:
	lea ebx, [edx+0x3c0]
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_190
_Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_20:
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
	jmp _Z24R_SetupPassPerObjectArgs16GfxCmdBufContext_200


;R_SetupPassPixelShaderArgs(GfxCmdBufContext)
_Z26R_SetupPassPixelShaderArgs16GfxCmdBufContext:
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
	jnz _Z26R_SetupPassPixelShaderArgs16GfxCmdBufContext_10
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_SetupPassPixelShaderArgs16GfxCmdBufContext_10:
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
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument
	nop


;R_SetupPassVertexShaderArgs(GfxCmdBufContext)
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext:
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
	jz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_10
	movzx eax, byte [ecx+0xd]
	movzx edx, byte [ecx+0xc]
	add eax, edx
	mov edx, [ecx+0x10]
	lea edi, [edx+eax*8]
	movzx edx, bl
	xor eax, eax
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_30:
	mov ecx, edx
	sub ecx, eax
	mov [ebp-0x1c], ecx
	cmp word [edi], 0x2
	ja _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_20
	add edi, 0x8
	add eax, 0x1
	cmp edx, eax
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_30
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_20:
	mov dword [ebp-0x20], 0x0
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_130:
	cmp word [edi], 0x3
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_10
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	mov esi, edx
	mov [ebp-0x24], ebx
	movzx edx, word [edi+0x4]
	cmp dx, 0x39
	jbe _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_40
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
	jz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	movzx eax, byte [edi+0x7]
	sub eax, 0x1
	jz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_60
	mov edx, [ebp-0x3c]
	xor ecx, ecx
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_70:
	mov dword [edx+0x8], 0xffffffff
	mov dword [edx+0xc], 0xffffffff
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, eax
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_70
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_60:
	xor eax, eax
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_140:
	movzx eax, al
	test eax, eax
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_80
	lea edx, [edi+0x4]
	mov [ebp-0x5c], edx
	mov ebx, [ebp-0x28]
	mov esi, [ebp-0x2c]
	mov edx, ebx
	movzx eax, word [edi+0x4]
	mov [ebp-0x36], ax
	cmp ax, 0x39
	ja _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_90
	mov ecx, esi
	movzx eax, word [ebp-0x36]
	shl eax, 0x4
	add eax, 0x880
	lea esi, [eax+ebx]
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_150:
	movzx eax, byte [edi+0x7]
	mov [ebp-0x34], eax
	movzx eax, word [edi+0x2]
	movzx edx, ax
	mov [ebp-0x30], edx
	mov edx, [ecx+0x90]
	cmp dword [ebp-0x30], 0x1f
	jbe _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_100
	cmp ax, 0x20
	jz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_110
	lea ebx, [edx+0x400]
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN14MacOpenGLUtils23AreMatricesDifferent4x4EPKvS1_
	test al, al
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_120
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_80:
	add edi, 0x8
	add dword [ebp-0x20], 0x1
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jnz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_130
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_40:
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
	jz _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_50
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [ecx+0x8], eax
	mov [ecx+0xc], edx
	jmp _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_60
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_50:
	mov eax, 0x1
	jmp _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_140
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_120:
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
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_100:
	mov [esp+0xc], esi
	mov ebx, [ebp-0x34]
	mov [esp+0x8], ebx
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov dword [esp], 0x8620
	call glProgramEnvParameters4fvEXT
	jmp _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_80
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_90:
	mov ebx, [ebp-0x5c]
	movzx eax, byte [ebx+0x2]
	mov [esp+0x8], eax
	movzx eax, word [ebp-0x36]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z15R_GetCodeMatrixP20GfxCmdBufSourceStatejj
	mov esi, eax
	mov ecx, [ebp-0x2c]
	jmp _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_150
_Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_110:
	lea ebx, [edx+0x3c0]
	jmp _Z27R_SetupPassVertexShaderArgs16GfxCmdBufContext_160


;R_SetupPassCriticalPixelShaderArgs(GfxCmdBufContext)
_Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext:
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
	jnz _Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext_10
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34R_SetupPassCriticalPixelShaderArgs16GfxCmdBufContext_10:
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
	jmp _Z35R_SetPassPixelShaderStableArguments16GfxCmdBufContextjPK22MaterialShaderArgument
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

