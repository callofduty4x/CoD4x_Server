;Imports of fx_sprite:
	extern R_GetLocalClientNum
	extern cgArray
	extern R_ReserveCodeMeshVerts
	extern R_ReserveCodeMeshIndices
	extern R_AddCodeMeshDrawSurf
	extern R_GetCodeMeshVerts

;Exports of fx_sprite:
	global _GLOBAL__I_spuVertBuffer
	global g_spriteInfo
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global FX_BuildSpriteCodeMeshVerts
	global FX_SpriteAdd
	global FX_SpriteBegin
	global FX_SpriteGetInfo
	global FX_SpriteGenerateVerts


SECTION .text


;FX_BuildSpriteCodeMeshVerts(Material*, float const*, float, unsigned char const*, int)
FX_BuildSpriteCodeMeshVerts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	xor edi, edi
	mov dword [ebp-0x74], 0x0
	mov [ebp-0x78], eax
	movss [ebp-0x7c], xmm0
	mov esi, ecx
	movss xmm0, dword [edx]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [edx+0x4]
	movss [ebp-0x6c], xmm1
	movss xmm6, dword [edx+0x8]
	movss [ebp-0x70], xmm6
	test byte [ebp+0x8], 0x1
	jz FX_BuildSpriteCodeMeshVerts_10
	addss xmm6, [ebp-0x7c]
	movss [ebp-0x70], xmm6
FX_BuildSpriteCodeMeshVerts_10:
	call R_GetLocalClientNum
	mov ebx, cgArray
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x492f8]
	movss [ebp-0x5c], xmm0
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebx+0x492fc]
	movss [ebp-0x60], xmm1
	movss xmm6, dword [ebp-0x7c]
	mulss xmm6, [ebx+0x49300]
	movss [ebp-0x64], xmm6
	call R_GetLocalClientNum
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, [ebx+0x49304]
	movss [ebp-0x50], xmm0
	movss xmm1, dword [ebp-0x7c]
	mulss xmm1, [ebx+0x49308]
	movss [ebp-0x54], xmm1
	movss xmm6, dword [ebp-0x7c]
	mulss xmm6, [ebx+0x4930c]
	movss [ebp-0x58], xmm6
	call R_GetLocalClientNum
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call R_ReserveCodeMeshVerts
	test al, al
	jnz FX_BuildSpriteCodeMeshVerts_20
FX_BuildSpriteCodeMeshVerts_30:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_BuildSpriteCodeMeshVerts_20:
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x6
	call R_ReserveCodeMeshIndices
	test al, al
	jz FX_BuildSpriteCodeMeshVerts_30
	movzx ecx, word [ebp-0x1a]
	mov edx, [ebp-0x20]
	lea eax, [ecx+0x1]
	mov [edx+0x2], ax
	mov [edx], cx
	movzx edx, word [ebp-0x1a]
	add edx, 0x3
	mov eax, [ebp-0x20]
	mov [eax+0x6], dx
	mov [eax+0x4], dx
	movzx eax, word [ebp-0x1a]
	mov ecx, [ebp-0x20]
	lea edx, [eax+0x2]
	mov [ecx+0xa], dx
	add eax, 0x1
	mov [ecx+0x8], ax
	mov dword [esp+0x14], _cstring_null
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov eax, [ebp-0x78]
	mov [esp], eax
	call R_AddCodeMeshDrawSurf
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [ebp-0x50]
	movss [ebp-0x44], xmm0
	movss xmm1, dword [ebp-0x60]
	addss xmm1, [ebp-0x54]
	movss [ebp-0x48], xmm1
	movss xmm6, dword [ebp-0x64]
	addss xmm6, [ebp-0x58]
	movss [ebp-0x4c], xmm6
	movss xmm0, dword [ebp-0x5c]
	subss xmm0, [ebp-0x50]
	movss [ebp-0x3c], xmm0
	movss xmm1, dword [ebp-0x60]
	subss xmm1, [ebp-0x54]
	movss [ebp-0x40], xmm1
	movss xmm5, dword [ebp-0x64]
	subss xmm5, [ebp-0x58]
	movzx edx, byte [esi]
	shl edx, 0x10
	movzx eax, byte [esi+0x1]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [esi+0x2]
	or edx, eax
	movzx eax, byte [esi+0x3]
	shl eax, 0x18
	or edx, eax
	mov [ebp-0x24], edx
	movss xmm0, dword [ebx+0x492ec]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [ebx+0x492f0]
	movss [ebp-0x34], xmm1
	movss xmm2, dword [g_fltMin__uint4_dup_1+0x10]
	movss xmm4, dword [_float_127_00000000]
	mulss xmm0, xmm4
	movss xmm3, dword [_float_127_50000000]
	movaps xmm6, xmm3
	subss xmm6, xmm0
	cvttss2si eax, xmm6
	mov edx, edi
	mov dl, al
	mulss xmm1, xmm4
	movaps xmm0, xmm3
	subss xmm0, xmm1
	cvttss2si eax, xmm0
	mov dh, al
	mov edi, edx
	movss xmm0, dword [ebx+0x492f4]
	mulss xmm0, xmm4
	movaps xmm1, xmm3
	subss xmm1, xmm0
	cvttss2si eax, xmm1
	movzx eax, al
	shl eax, 0x10
	and edi, 0xff00ffff
	or edi, eax
	and edi, 0xffffff
	or edi, 0x3f000000
	movss xmm0, dword [ebp-0x60]
	xorps xmm0, xmm2
	movss [ebp-0x34], xmm0
	movss xmm6, dword [ebp-0x64]
	xorps xmm2, xmm6
	movss [ebp-0x30], xmm2
	mov dword [ebp-0x2c], 0x80000000
	movss xmm1, dword [ebp-0x5c]
	mulss xmm1, xmm4
	movss [ebp-0x5c], xmm1
	movaps xmm1, xmm3
	subss xmm1, [ebp-0x5c]
	cvttss2si eax, xmm1
	mov [ebp-0x74], al
	mulss xmm0, xmm4
	addss xmm0, xmm3
	cvttss2si eax, xmm0
	mov edx, [ebp-0x74]
	mov dh, al
	mulss xmm2, xmm4
	addss xmm2, xmm3
	cvttss2si eax, xmm2
	movzx eax, al
	shl eax, 0x10
	and edx, 0xff00ffff
	or edx, eax
	and edx, 0xffffff
	or edx, 0x3f000000
	mov [ebp-0x74], edx
	mov [ebp-0x38], edx
	movzx eax, word [ebp-0x1a]
	mov [esp], eax
	movss [ebp-0x98], xmm5
	call R_GetCodeMeshVerts
	mov esi, eax
	movss xmm0, dword [ebp-0x68]
	addss xmm0, [ebp-0x44]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x6c]
	addss xmm0, [ebp-0x48]
	movss [eax+0x4], xmm0
	movss xmm0, dword [ebp-0x4c]
	addss xmm0, [ebp-0x70]
	movss [eax+0x8], xmm0
	mov dword [eax+0xc], 0x3f800000
	mov [eax+0x18], edi
	mov eax, [ebp-0x24]
	mov [esi+0x10], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	movss xmm5, dword [ebp-0x98]
	jg FX_BuildSpriteCodeMeshVerts_40
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_50
	xor eax, eax
FX_BuildSpriteCodeMeshVerts_130:
	mov ecx, edx
	or ecx, eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_60
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_270:
	or edx, eax
	shl ecx, 0x10
	lea eax, [edx+ecx]
	mov [esi+0x14], eax
	mov eax, [ebp-0x74]
	mov [esi+0x1c], eax
	lea ecx, [esi+0x20]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x3c]
	movss [esi+0x20], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x40]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, xmm5
	movss [ecx+0x8], xmm0
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_70
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_250:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_80
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_230:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov edx, [ebp-0x74]
	mov [ecx+0x1c], edx
	lea ecx, [esi+0x40]
	movss xmm0, dword [ebp-0x68]
	subss xmm0, [ebp-0x44]
	movss [esi+0x40], xmm0
	movss xmm0, dword [ebp-0x6c]
	subss xmm0, [ebp-0x48]
	movss [ecx+0x4], xmm0
	movss xmm0, dword [ebp-0x70]
	subss xmm0, [ebp-0x4c]
	movss [ecx+0x8], xmm0
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_90
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_210:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_100
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_190:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x74]
	mov [ecx+0x1c], eax
	lea ecx, [esi+0x60]
	movss xmm0, dword [ebp-0x68]
	addss xmm0, [ebp-0x3c]
	movss [esi+0x60], xmm0
	movss xmm1, dword [ebp-0x6c]
	addss xmm1, [ebp-0x40]
	movss [ecx+0x4], xmm1
	addss xmm5, [ebp-0x70]
	movss [ecx+0x8], xmm5
	mov dword [ecx+0xc], 0x3f800000
	mov [ecx+0x18], edi
	mov eax, [ebp-0x24]
	mov [ecx+0x10], eax
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_110
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_170:
	mov ebx, edx
	or ebx, eax
	mov dword [ebp-0x28], 0x3f800000
	mov eax, [ebp-0x28]
	mov edx, eax
	sar edx, 0x10
	and edx, 0xc000
	lea eax, [eax+eax-0x80000000]
	sar eax, 0xe
	cmp eax, 0x3ffe
	jle FX_BuildSpriteCodeMeshVerts_120
	mov eax, 0x3fff
FX_BuildSpriteCodeMeshVerts_150:
	or edx, eax
	shl ebx, 0x10
	lea eax, [edx+ebx]
	mov [ecx+0x14], eax
	mov eax, [ebp-0x74]
	mov [ecx+0x1c], eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_BuildSpriteCodeMeshVerts_40:
	mov eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_130
FX_BuildSpriteCodeMeshVerts_120:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_140
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_150
FX_BuildSpriteCodeMeshVerts_110:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_160
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_170
FX_BuildSpriteCodeMeshVerts_100:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_180
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_190
FX_BuildSpriteCodeMeshVerts_90:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_200
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_210
FX_BuildSpriteCodeMeshVerts_80:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_220
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_230
FX_BuildSpriteCodeMeshVerts_70:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_240
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_250
FX_BuildSpriteCodeMeshVerts_60:
	cmp eax, 0xffffc000
	jg FX_BuildSpriteCodeMeshVerts_260
	xor eax, eax
	jmp FX_BuildSpriteCodeMeshVerts_270
FX_BuildSpriteCodeMeshVerts_50:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_130
FX_BuildSpriteCodeMeshVerts_260:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_270
FX_BuildSpriteCodeMeshVerts_240:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_250
FX_BuildSpriteCodeMeshVerts_220:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_230
FX_BuildSpriteCodeMeshVerts_200:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_210
FX_BuildSpriteCodeMeshVerts_180:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_190
FX_BuildSpriteCodeMeshVerts_160:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_170
FX_BuildSpriteCodeMeshVerts_140:
	and eax, 0x3fff
	jmp FX_BuildSpriteCodeMeshVerts_150
	nop


;FX_SpriteAdd(FxSprite*)
FX_SpriteAdd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov esi, [g_spriteInfo]
	cmp esi, 0x60
	jz FX_SpriteAdd_10
	mov ecx, g_spriteInfo+0x10
	mov edx, esi
	shl edx, 0x5
	mov eax, [ebx]
	mov [edx+g_spriteInfo+0x10], eax
	mov eax, [ebx+0x4]
	mov [edx+ecx+0x4], eax
	mov eax, [ebx+0x8]
	mov [edx+ecx+0x8], eax
	mov eax, [ebx+0xc]
	mov [edx+ecx+0xc], eax
	mov eax, [ebx+0x10]
	mov [edx+ecx+0x10], eax
	mov eax, [ebx+0x14]
	mov [edx+ecx+0x14], eax
	mov eax, [ebx+0x18]
	mov [edx+ecx+0x18], eax
	mov eax, [ebx+0x1c]
	mov [edx+ecx+0x1c], eax
	lea eax, [esi+0x1]
	mov [g_spriteInfo], eax
FX_SpriteAdd_10:
	pop ebx
	pop esi
	pop ebp
	ret


;FX_SpriteBegin()
FX_SpriteBegin:
	push ebp
	mov ebp, esp
	mov dword [g_spriteInfo], 0x0
	pop ebp
	ret
	nop


;FX_SpriteGetInfo()
FX_SpriteGetInfo:
	push ebp
	mov ebp, esp
	mov eax, g_spriteInfo
	pop ebp
	ret


;FX_SpriteGenerateVerts(FxGenerateVertsCmd*)
FX_SpriteGenerateVerts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov eax, [eax+0xc]
	mov [ebp-0x38], eax
	mov edx, [eax]
	test edx, edx
	jle FX_SpriteGenerateVerts_10
	mov dword [ebp-0x3c], 0x0
	mov edx, [ebp+0x8]
	add edx, 0x14
	mov [ebp-0x2c], edx
	mov edi, [ebp+0x8]
	add edi, 0x20
	mov ebx, eax
	add ebx, 0x10
	jmp FX_SpriteGenerateVerts_20
FX_SpriteGenerateVerts_40:
	movss xmm2, dword [ebx+0x14]
	mov eax, [ebx]
	mov [ebp-0x30], eax
	lea edx, [ebx+0x4]
	mov [ebp-0x28], edx
	lea eax, [ebx+0x10]
	mov [ebp-0x34], eax
	movss xmm1, dword [ebx+0x4]
	mov edx, [ebp+0x8]
	subss xmm1, [edx+0x14]
	mulss xmm1, [edx+0x20]
	movss xmm0, dword [ebx+0x8]
	mov eax, [ebp-0x2c]
	subss xmm0, [eax+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [eax+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm3, qword [_double_0_00000100]
	ucomisd xmm3, xmm0
	jbe FX_SpriteGenerateVerts_30
FX_SpriteGenerateVerts_60:
	add dword [ebp-0x3c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x3c]
	mov edx, [ebp-0x38]
	cmp eax, [edx]
	jge FX_SpriteGenerateVerts_10
FX_SpriteGenerateVerts_20:
	mov esi, [ebx+0x1c]
	test esi, 0x2
	jnz FX_SpriteGenerateVerts_40
	movss xmm2, dword [ebx+0x18]
	movss xmm3, dword [ebx+0x14]
	mov edx, [ebx]
	mov [ebp-0x20], edx
	lea eax, [ebx+0x4]
	mov [ebp-0x1c], eax
	lea edx, [ebx+0x10]
	mov [ebp-0x24], edx
	ucomiss xmm2, [_float_0_00000000]
	jbe FX_SpriteGenerateVerts_50
	movss xmm1, dword [ebx+0x4]
	mov eax, [ebp+0x8]
	subss xmm1, [eax+0x14]
	mulss xmm1, [eax+0x20]
	movss xmm0, dword [ebx+0x8]
	mov edx, [ebp-0x2c]
	subss xmm0, [edx+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [edx+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm1, xmm0
	cvtss2sd xmm0, xmm1
	movsd xmm4, qword [_double_0_00000100]
	ucomisd xmm4, xmm0
	ja FX_SpriteGenerateVerts_60
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm2
	movss [ebp-0x78], xmm3
	call R_GetLocalClientNum
	movss xmm3, dword [ebp-0x78]
	movaps xmm0, xmm3
	mov eax, cgArray
	divss xmm0, dword [eax+0x492dc]
	movss xmm1, dword [ebp-0x58]
	addss xmm1, xmm1
	divss xmm0, xmm1
	movss xmm2, dword [ebp-0x68]
	ucomiss xmm2, xmm0
	ja FX_SpriteGenerateVerts_70
	mov ecx, [ebp-0x24]
FX_SpriteGenerateVerts_80:
	mov [esp], esi
	movaps xmm0, xmm3
	mov edx, [ebp-0x1c]
	mov eax, [ebp-0x20]
	call FX_BuildSpriteCodeMeshVerts
	add dword [ebp-0x3c], 0x1
	add ebx, 0x20
	mov eax, [ebp-0x3c]
	mov edx, [ebp-0x38]
	cmp eax, [edx]
	jl FX_SpriteGenerateVerts_20
FX_SpriteGenerateVerts_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FX_SpriteGenerateVerts_30:
	movss [ebp-0x58], xmm1
	movss [ebp-0x68], xmm2
	call R_GetLocalClientNum
	movss xmm1, dword [ebp-0x58]
	movss xmm2, dword [ebp-0x68]
	mulss xmm2, xmm1
	addss xmm2, xmm2
	mov eax, cgArray
	mulss xmm2, [eax+0x492dc]
	mov [esp], esi
	mov ecx, [ebp-0x34]
	movaps xmm0, xmm2
	mov edx, [ebp-0x28]
	mov eax, [ebp-0x30]
	call FX_BuildSpriteCodeMeshVerts
	jmp FX_SpriteGenerateVerts_60
FX_SpriteGenerateVerts_70:
	divss xmm2, xmm0
	mulss xmm3, xmm2
	mov ecx, [ebp-0x24]
	jmp FX_SpriteGenerateVerts_80
FX_SpriteGenerateVerts_50:
	mov ecx, edx
	jmp FX_SpriteGenerateVerts_80


;Initialized global or static variables of fx_sprite:
SECTION .data


;Initialized constant data of fx_sprite:
SECTION .rdata
g_keepZ__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4_dup_1: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4_dup_1: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4_dup_1: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4_dup_1: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4_dup_1: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4_dup_1: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4_dup_1: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4_dup_1: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4_dup_1: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4_dup_1: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4_dup_1: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4_dup_1: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4_dup_1: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4_dup_1: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4_dup_1: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4_dup_1: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4_dup_1: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4_dup_1: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4_dup_1: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4_dup_1: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x80000000, 0x0, 0x0, 0x0, 0x7fffffff, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of fx_sprite:
SECTION .bss
g_keepZ_dup_1: resb 0x10
g_keepX_dup_1: resb 0x10
g_keepZW_dup_1: resb 0x10
g_keepXY_dup_1: resb 0x10
g_keepXYZ_dup_1: resb 0x10
g_keepXYW_dup_1: resb 0x10
g_keepXZW_dup_1: resb 0x10
g_keepYZW_dup_1: resb 0x10
g_selectW_dup_1: resb 0x10
g_selectZ_dup_1: resb 0x10
g_selectY_dup_1: resb 0x10
g_selectX_dup_1: resb 0x10
g_swizzleWWWW_dup_1: resb 0x10
g_swizzleZZZZ_dup_1: resb 0x10
g_swizzleYYYY_dup_1: resb 0x10
g_swizzleXXXX_dup_1: resb 0x10
g_swizzleYZWA_dup_1: resb 0x10
g_swizzleZWAW_dup_1: resb 0x10
g_swizzleWABW_dup_1: resb 0x10
g_swizzleZXYW_dup_1: resb 0x10
g_swizzleYZXW_dup_1: resb 0x10
g_swizzleXYZA_dup_1: resb 0x10
g_swizzleZWCD_dup_1: resb 0x10
g_swizzleXYAB_dup_1: resb 0x10
g_swizzleYBWD_dup_1: resb 0x10
g_swizzleXAZC_dup_1: resb 0x10
g_swizzleYXWZ_dup_1: resb 0x10
g_swizzleXZYW_dup_1: resb 0x10
g_swizzleYXZW_dup_1: resb 0x10
g_swizzleXYZW_dup_1: resb 0x10
g_inc_dup_1: resb 0x10
g_negativeZero_dup_1: resb 0x10
g_fltMin_dup_1: resb 0x80
g_spriteInfo: resb 0xc80


;All cstrings:
SECTION .rdata
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata
_float_127_00000000:		dd 0x42fe0000	; 127
_float_127_50000000:		dd 0x42ff0000	; 127.5
_double_0_00000100:		dq 0x3eb0c6f7a0b5ed8d	; 1e-06
_float_0_00000000:		dd 0x0	; 0

