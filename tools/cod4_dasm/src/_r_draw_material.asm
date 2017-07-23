;Imports of r_draw_material:
	extern floorf
	extern cosf
	extern sinf
	extern rgp
	extern pixelCostMode
	extern R_PixelCost_GetAccumulationMaterial
	extern rg
	extern R_SetShadowableLight

;Exports of r_draw_material:
	global R_SetGameTime
	global R_SetupMaterial
	global R_UpdateMaterialTime


SECTION .text


;R_SetGameTime(GfxCmdBufSourceState*, float)
R_SetGameTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x14]
	movss xmm0, dword [ebp+0xc]
	subss xmm0, [ebp-0x14]
	movss [ebp-0x10], xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x18]
	lea ebx, [esi+0x9a0]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call sinf
	fstp dword [esi+0x9a0]
	movss xmm0, dword [ebp-0x18]
	movss [ebx+0x4], xmm0
	movss xmm0, dword [ebp-0x10]
	movss [ebx+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [ebx+0xc], xmm0
	add word [esi+0xe54], 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;R_SetupMaterial(GfxCmdBufContext, GfxCmdBufContext*, GfxDrawSurfListInfo const*, GfxDrawSurf)
R_SetupMaterial:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x1c], edx
	mov eax, [ebp+0x1c]
	shr eax, 0x12
	and eax, 0xf
	mov ebx, eax
	mov eax, [ebp+0x14]
	mov ecx, [eax+0x8]
	cmp ecx, 0x1
	jg R_SetupMaterial_10
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x1c]
	shr eax, 0x8
	and eax, 0x3
	mov ebx, eax
	cmp eax, 0x3
	jz R_SetupMaterial_20
	mov edi, rgp
	mov edx, [ebp+0x18]
	shr edx, 0x1d
	movzx eax, byte [ebp+0x1c]
	shl eax, 0x3
	or eax, edx
	mov eax, [edi+eax*4]
	test ebx, ebx
	jz R_SetupMaterial_30
R_SetupMaterial_170:
	mov [esi+0xb8], eax
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+ecx*4+0xc]
	mov [esi+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_20
	mov [esi+0xbc], ecx
R_SetupMaterial_120:
	mov edx, [ebp+0x10]
	mov ebx, [edx+0x4]
	test ebx, ebx
	jz R_SetupMaterial_40
	mov ebx, [edx+0x4]
	mov eax, [ebp+0x1c]
	shr eax, 0x8
	and eax, 0x3
	mov ecx, eax
	cmp eax, 0x3
	jz R_SetupMaterial_50
	mov esi, rgp
	mov edx, [ebp+0x18]
	shr edx, 0x1d
	movzx eax, byte [ebp+0x1c]
	shl eax, 0x3
	or eax, edx
	mov eax, [esi+eax*4]
	test ecx, ecx
	jz R_SetupMaterial_60
R_SetupMaterial_180:
	mov [ebx+0xb8], eax
	mov eax, [eax+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0xc]
	mov [ebx+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_50
	mov dword [ebx+0xbc], 0x0
R_SetupMaterial_40:
	mov eax, [ebp-0x20]
	mov edx, [eax+0xb8]
	mov [eax+0xa08], edx
	mov ecx, [ebp-0x20]
	mov eax, [ecx+0xbc]
	mov [ecx+0xa0c], eax
	mov eax, pixelCostMode
	cmp dword [eax], 0x2
	jg R_SetupMaterial_70
R_SetupMaterial_130:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupMaterial_10:
	cmp ecx, 0x7
	jz R_SetupMaterial_80
	cmp ecx, 0x20
	jz R_SetupMaterial_90
R_SetupMaterial_240:
	mov eax, [ebp-0x20]
	mov [ebp+0xc], eax
	mov edx, [ebp-0x1c]
	mov [ebp+0x8], edx
	mov ebx, eax
	mov edx, [ebp+0x18]
	shr edx, 0x1d
	movzx eax, byte [ebp+0x1c]
	shl eax, 0x3
	or eax, edx
	mov edx, rgp
	mov edx, [edx+eax*4]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+ecx*4+0xc]
	mov [ebx+0xb8], edx
	mov [ebx+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_20
	movzx edx, word [eax+0x4]
	test dl, 0x1
	jnz R_SetupMaterial_100
R_SetupMaterial_190:
	lea eax, [ecx-0x4]
	cmp eax, 0x1
	jbe R_SetupMaterial_110
R_SetupMaterial_260:
	mov [ebx+0xbc], ecx
	jmp R_SetupMaterial_120
R_SetupMaterial_70:
	mov esi, [ebp+0x1c]
	mov [esp], edx
	call R_PixelCost_GetAccumulationMaterial
	movzx ecx, byte [eax+0xb]
	shr cl, 0x5
	movzx ecx, cl
	movzx eax, byte [eax+0xc]
	shl eax, 0x3
	or eax, ecx
	xor edx, edx
	mov ecx, eax
	shl ecx, 0x1d
	mov ebx, [ebp+0x18]
	and ebx, 0x1fffffff
	or ebx, ecx
	shrd eax, edx, 0x3
	and eax, 0xff
	and esi, 0xffffff00
	or esi, eax
	mov eax, [ebp-0x20]
	mov [ebp+0xc], eax
	mov edx, [ebp-0x1c]
	mov [ebp+0x8], edx
	mov ecx, eax
	mov edx, ebx
	shr edx, 0x1d
	mov eax, esi
	and eax, 0xff
	shl eax, 0x3
	or eax, edx
	mov edx, rgp
	mov edx, [edx+eax*4]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x1c]
	mov [ecx+0xb8], edx
	mov [ecx+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_130
	movzx edx, word [eax+0x4]
	test dl, 0x1
	jnz R_SetupMaterial_140
R_SetupMaterial_210:
	and dl, 0x10
	jnz R_SetupMaterial_150
R_SetupMaterial_220:
	mov dword [ecx+0xbc], 0x4
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupMaterial_80:
	mov eax, [ebp+0x1c]
	shr eax, 0xa
	movzx esi, al
	shl ebx, 0x8
	mov edx, [ebp-0x1c]
	add ebx, [edx+0xca8]
	lea eax, [ebx+esi]
	movzx ebx, byte [eax+0x6a300]
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x18]
	shr edx, 0x1d
	movzx eax, byte [ebp+0x1c]
	shl eax, 0x3
	or eax, edx
	mov edx, rgp
	mov edx, [edx+eax*4]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+ebx*4+0xc]
	mov [ecx+0xb8], edx
	mov [ecx+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_20
	movzx edx, word [eax+0x4]
	test dl, 0x1
	jz R_SetupMaterial_160
	mov eax, rg
	cmp byte [eax+0x226c], 0x0
	jnz R_SetupMaterial_160
R_SetupMaterial_20:
	xor eax, eax
R_SetupMaterial_200:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetupMaterial_30:
	test byte [eax+0x3d], 0x1
	jz R_SetupMaterial_170
	mov eax, [edi+0x2060]
	jmp R_SetupMaterial_170
R_SetupMaterial_60:
	test byte [eax+0x3d], 0x1
	jz R_SetupMaterial_180
	mov eax, [esi+0x2060]
	jmp R_SetupMaterial_180
R_SetupMaterial_100:
	mov eax, rg
	cmp byte [eax+0x226c], 0x0
	jnz R_SetupMaterial_190
	xor eax, eax
	jmp R_SetupMaterial_200
R_SetupMaterial_140:
	mov eax, rg
	cmp byte [eax+0x226c], 0x0
	jnz R_SetupMaterial_210
	jmp R_SetupMaterial_130
R_SetupMaterial_150:
	mov eax, [ebp-0x1c]
	cmp word [eax+0xe38], 0x0
	jnz R_SetupMaterial_220
	jmp R_SetupMaterial_130
R_SetupMaterial_160:
	lea eax, [ebx-0x4]
	cmp eax, 0x1
	jbe R_SetupMaterial_230
R_SetupMaterial_270:
	mov [ecx+0xbc], ebx
	mov edx, [ebp+0x14]
	mov eax, [edx+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call R_SetShadowableLight
	jmp R_SetupMaterial_120
R_SetupMaterial_50:
	mov ecx, [ebp+0x10]
	mov dword [ecx+0x4], 0x0
	jmp R_SetupMaterial_40
R_SetupMaterial_90:
	lea eax, [ebx-0x3]
	cmp eax, 0x1
	ja R_SetupMaterial_240
	mov ecx, [ebp+0xc]
	mov edx, [ebp+0x18]
	shr edx, 0x1d
	movzx eax, byte [ebp+0x1c]
	shl eax, 0x3
	or eax, edx
	mov edx, rgp
	mov edx, [edx+eax*4]
	mov eax, [edx+0x40]
	mov eax, [eax+0x8]
	mov eax, [eax+0x90]
	mov [ecx+0xb8], edx
	mov [ecx+0xc0], eax
	test eax, eax
	jz R_SetupMaterial_20
	test byte [eax+0x4], 0x1
	jz R_SetupMaterial_250
	mov eax, rg
	cmp byte [eax+0x226c], 0x0
	jz R_SetupMaterial_20
R_SetupMaterial_250:
	mov dword [ecx+0xbc], 0x21
	jmp R_SetupMaterial_120
R_SetupMaterial_110:
	and dl, 0x10
	jz R_SetupMaterial_260
	mov eax, [ebp-0x1c]
	cmp word [eax+0xe38], 0x0
	jnz R_SetupMaterial_260
	xor eax, eax
	jmp R_SetupMaterial_200
R_SetupMaterial_230:
	and dl, 0x10
	jz R_SetupMaterial_270
	mov eax, [ebp-0x1c]
	cmp word [eax+0xe38], 0x0
	jnz R_SetupMaterial_270
	xor eax, eax
	jmp R_SetupMaterial_200
	nop


;R_UpdateMaterialTime(GfxCmdBufSourceState*, float)
R_UpdateMaterialTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [esi+0xf60]
	jnz R_UpdateMaterialTime_10
	jp R_UpdateMaterialTime_10
	xor eax, eax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
R_UpdateMaterialTime_10:
	movss [esi+0xf60], xmm0
	movss xmm1, dword [esi+0xf40]
	subss xmm1, xmm0
	movss [ebp-0x10], xmm1
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x18]
	movss xmm0, dword [ebp-0x10]
	subss xmm0, [ebp-0x18]
	movss [ebp-0xc], xmm0
	cvtss2sd xmm0, xmm0
	mulsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0x14], xmm0
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x1c]
	lea ebx, [esi+0x9a0]
	movss xmm1, dword [ebp-0x14]
	movss [esp], xmm1
	call sinf
	fstp dword [esi+0x9a0]
	movss xmm0, dword [ebp-0x1c]
	movss [ebx+0x4], xmm0
	movss xmm1, dword [ebp-0xc]
	movss [ebx+0x8], xmm1
	movss xmm0, dword [ebp-0x10]
	movss [ebx+0xc], xmm0
	add word [esi+0xe54], 0x1
	mov eax, 0x1
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of r_draw_material:
SECTION .data


;Initialized constant data of r_draw_material:
SECTION .rdata


;Zero initialized global or static variables of r_draw_material:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319

