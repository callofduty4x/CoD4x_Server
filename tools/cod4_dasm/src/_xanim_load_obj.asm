;Imports of xanim_load_obj:
	extern Hunk_UserAlloc
	extern floorf
	extern memcpy
	extern Com_sprintf
	extern FS_ReadFile
	extern Q_stricmpn
	extern Hunk_UserCreate
	extern SL_GetString_
	extern FS_FreeFile
	extern qsort
	extern memset
	extern SL_GetStringOfSize
	extern strcmp
	extern Hunk_UserDestroy
	extern Com_PrintError

;Exports of xanim_load_obj:
	global g_simpleQuatBits
	global g_partTransArray
	global g_partQuatArray
	global g_animUser
	global g_highPrecisionPart
	global g_highPrecisionParts
	global XAnimTempAlloc
	global XAnimCompareTransParts
	global XAnimCompareQuatParts
	global ConsumeQuat
	global LoadTrans
	global XAnimLoadFile
	global GetDeltaQuaternions
	global GetDeltaTranslations


SECTION .text


;XAnimTempAlloc(int)
XAnimTempAlloc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	leave
	ret


;XAnimCompareTransParts(void const*, void const*)
XAnimCompareTransParts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	movzx eax, word [eax]
	mov [ebp-0x20], eax
	mov eax, [ebp+0xc]
	movzx ebx, word [eax]
	mov [ebp-0x1c], ebx
	mov ecx, [g_partTransArray]
	mov edx, 0x1
	lea edi, [ebp-0x20]
	lea esi, [ebp-0x28]
XAnimCompareTransParts_30:
	mov eax, [edi+edx*4-0x4]
	mov eax, [ecx+eax*8]
	test eax, eax
	jz XAnimCompareTransParts_10
	cmp word [eax], 0x0
	jnz XAnimCompareTransParts_20
	mov eax, 0x7
XAnimCompareTransParts_50:
	mov [esi+edx*4-0x4], eax
	add edx, 0x1
	cmp edx, 0x3
	jnz XAnimCompareTransParts_30
	mov eax, [ebp-0x28]
	mov edx, eax
	sub edx, [ebp-0x24]
	jnz XAnimCompareTransParts_40
	mov eax, [ebp-0x20]
	movzx edx, byte [ecx+eax*8+0x4]
	movzx eax, byte [ecx+ebx*8+0x4]
	sub edx, eax
XAnimCompareTransParts_40:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCompareTransParts_20:
	cmp byte [eax+0x2], 0x1
	sbb eax, eax
	not eax
	add eax, 0x6
	jmp XAnimCompareTransParts_50
XAnimCompareTransParts_10:
	mov al, 0x8
	jmp XAnimCompareTransParts_50


;XAnimCompareQuatParts(void const*, void const*)
XAnimCompareQuatParts:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	movzx eax, word [eax]
	mov [ebp-0x20], eax
	mov eax, [ebp+0xc]
	movzx eax, word [eax]
	mov [ebp-0x2c], eax
	mov [ebp-0x1c], eax
	mov esi, [g_partQuatArray]
	mov edi, [g_simpleQuatBits]
	mov ebx, 0x1
XAnimCompareQuatParts_30:
	mov ecx, [ebp+ebx*4-0x24]
	mov edx, [esi+ecx*8]
	mov eax, ecx
	shr eax, 0x3
	movsx eax, byte [eax+edi]
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz XAnimCompareQuatParts_10
	test edx, edx
	jz XAnimCompareQuatParts_20
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x1
XAnimCompareQuatParts_50:
	mov [ebp+ebx*4-0x2c], eax
	add ebx, 0x1
	cmp ebx, 0x3
	jnz XAnimCompareQuatParts_30
	mov eax, [ebp-0x28]
	mov edx, eax
	sub edx, [ebp-0x24]
	jnz XAnimCompareQuatParts_40
	mov eax, [ebp-0x20]
	movzx edx, byte [esi+eax*8+0x4]
	mov ecx, [ebp-0x2c]
	movzx eax, byte [esi+ecx*8+0x4]
	sub edx, eax
XAnimCompareQuatParts_40:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimCompareQuatParts_10:
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x2
	jmp XAnimCompareQuatParts_50
XAnimCompareQuatParts_20:
	xor eax, eax
	jmp XAnimCompareQuatParts_50


;ConsumeQuat(unsigned char const**, short*)
ConsumeQuat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, edx
	mov edx, [eax]
	movzx ecx, word [edx]
	mov [ebp-0xa], cx
	add edx, 0x2
	mov [eax], edx
	mov [esi], cx
	mov edx, [eax]
	movzx ecx, word [edx]
	mov [ebp-0xa], cx
	add edx, 0x2
	mov [eax], edx
	mov [esi+0x2], cx
	mov edx, [eax]
	movzx ecx, word [edx]
	mov [ebp-0xa], cx
	add edx, 0x2
	mov [eax], edx
	movsx ebx, cx
	mov [esi+0x4], cx
	movsx eax, word [esi]
	movsx edx, word [esi+0x2]
	imul eax, eax
	imul edx, edx
	add eax, edx
	imul ebx, ebx
	add eax, ebx
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jle ConsumeQuat_10
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [esi+0x6], ax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
ConsumeQuat_10:
	xor eax, eax
	mov [esi+0x6], ax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LoadTrans(void* (*)(int), unsigned char const*, unsigned short, XAnimPartTrans*)
LoadTrans:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov esi, [ebp+0x8]
	movzx eax, byte [edx]
	mov [esi+0x2], al
	mov eax, [edx+0x1]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x4], eax
	mov eax, [edx+0x5]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x8], eax
	mov eax, [edx+0x9]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [esi+0xc], eax
	mov eax, [edx+0xd]
	mov [ebp-0x1c], eax
	movss xmm1, dword [ebp-0x1c]
	movss [esi+0x10], xmm1
	mov eax, [edx+0x11]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x14], eax
	mov eax, [edx+0x15]
	mov [ebp-0x1c], eax
	lea edi, [edx+0x19]
	mov eax, [ebp-0x1c]
	mov [esi+0x18], eax
	cmp byte [esi+0x2], 0x0
	jz LoadTrans_10
	lea eax, [esi+0x10]
	movss xmm0, dword [_float_0_00392157]
LoadTrans_30:
	mulss xmm1, xmm0
	movss [esi+0x10], xmm1
	movss xmm1, dword [eax+0x4]
	mulss xmm1, xmm0
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	lea eax, [ecx-0x1]
	mov [esi], ax
	cmp byte [esi+0x2], 0x0
	jz LoadTrans_20
	movzx ebx, cx
	lea ebx, [ebx+ebx*2]
	mov [esp], ebx
	call dword [ebp-0x2c]
	mov [esi+0x1c], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	lea eax, [edi+ebx]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LoadTrans_10:
	lea eax, [esi+0x10]
	movss xmm0, dword [_float_0_00001526]
	jmp LoadTrans_30
LoadTrans_20:
	movzx ebx, cx
	lea ebx, [ebx+ebx*2]
	add ebx, ebx
	mov [esp], ebx
	call dword [ebp-0x2c]
	mov [esi+0x1c], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	lea eax, [edi+ebx]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;XAnimLoadFile(char const*, void* (*)(int))
XAnimLoadFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14dc
	mov edi, [ebp+0x8]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_xanims
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0xa4]
	mov [esp], ebx
	call Com_sprintf
	test eax, eax
	js XAnimLoadFile_10
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	cmp eax, 0x0
	jl XAnimLoadFile_20
	jz XAnimLoadFile_30
	mov ebx, [ebp-0x24]
	movzx eax, word [ebx]
	mov [ebp-0x20], ax
	movsx esi, ax
	cmp ax, 0x11
	jnz XAnimLoadFile_40
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_viewmodel_
	mov [esp], edi
	call Q_stricmpn
	mov [ebp-0x1488], eax
	mov dword [esp], 0x58
	call dword [ebp+0xc]
	mov [ebp-0x147c], eax
	movzx ecx, word [ebx+0x2]
	mov [ebp-0x20], cx
	movzx eax, word [ebx+0x4]
	mov [ebp-0x148a], ax
	mov [ebp-0x20], ax
	movsx edx, ax
	mov [ebp-0x1478], edx
	mov esi, [ebp-0x147c]
	mov [esi+0x1b], dl
	movzx eax, byte [ebx+0x6]
	mov edx, eax
	and edx, 0x1
	mov [esi+0x10], dl
	shr eax, 1
	and eax, 0x1
	mov [esi+0x11], al
	movzx eax, byte [ebx+0x7]
	mov [esi+0x1d], al
	movsx eax, word [ebx+0x8]
	mov [ebp-0x20], ax
	add ebx, 0xa
	mov [ebp-0x1470], ebx
	cvtsi2ss xmm0, eax
	movss [esi+0x28], xmm0
	cmp byte [esi+0x10], 0x0
	jz XAnimLoadFile_50
	add ecx, 0x1
XAnimLoadFile_50:
	mov [ebp-0x1472], cx
	mov eax, ecx
	cmp word [ebp-0x1472], 0x100
	setbe byte [ebp-0x1469]
	sub eax, 0x1
	mov edi, [ebp-0x147c]
	mov [edi+0xe], ax
	test ax, ax
	jnz XAnimLoadFile_60
	pxor xmm1, xmm1
	mov edx, [ebp-0x147c]
	movss [edx+0x2c], xmm1
	cmp byte [edx+0x11], 0x0
	jnz XAnimLoadFile_70
XAnimLoadFile_280:
	cmp word [ebp-0x148a], 0x0
	jnz XAnimLoadFile_80
XAnimLoadFile_290:
	mov esi, [ebp-0x1470]
	mov [ebp-0x13e8], esi
	mov dword [ebp-0x1468], 0x0
XAnimLoadFile_350:
	mov dword [esp+0x10], 0xb
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_xanimloadfile
	mov dword [esp], 0x20000
	call Hunk_UserCreate
	mov [g_animUser], eax
	cmp word [ebp-0x148a], 0x0
	jnz XAnimLoadFile_90
	mov esi, [ebp-0x13e8]
XAnimLoadFile_650:
	movzx esi, byte [esi]
	mov [ebp-0x142c], esi
	mov esi, [ebp-0x13e8]
	add esi, 0x1
	movzx eax, byte [ebp-0x142c]
	add al, 0x1
	mov edi, [ebp-0x147c]
	mov [edi+0x1c], al
	movzx eax, al
	shl eax, 0x3
	mov [esp], eax
	call dword [ebp+0xc]
	mov ebx, eax
	mov [edi+0x50], eax
	mov eax, [ebp-0x142c]
	test eax, eax
	jg XAnimLoadFile_100
XAnimLoadFile_450:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_end
	call SL_GetString_
	mov [ebx], ax
	mov dword [ebx+0x4], 0x3f800000
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	cmp word [ebp-0x148a], 0x0
	jz XAnimLoadFile_110
	xor eax, eax
XAnimLoadFile_120:
	mov [ebp+eax*2-0x2a4], ax
	add eax, 0x1
	cmp [ebp-0x1478], eax
	ja XAnimLoadFile_120
	lea eax, [ebp-0x13a4]
	mov [g_partQuatArray], eax
	lea eax, [ebp-0x7a4]
	mov [g_partTransArray], eax
	lea eax, [ebp-0x3c]
	mov [g_simpleQuatBits], eax
	mov eax, [ebp-0x1478]
	add eax, eax
	mov [ebp-0x1484], eax
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp-0x147c]
	mov [edx+0x30], eax
	lea edi, [ebp-0x64]
	cld
	mov ecx, 0xa
	xor eax, eax
	rep stosd
	mov dword [esp+0xc], XAnimCompareQuatParts
	mov dword [esp+0x8], 0x2
	mov ecx, [ebp-0x1478]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x2a4]
	mov [esp], ebx
	call qsort
	mov edi, [g_partQuatArray]
	mov esi, [g_simpleQuatBits]
	xor ebx, ebx
	jmp XAnimLoadFile_130
XAnimLoadFile_150:
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x2
XAnimLoadFile_400:
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	jbe XAnimLoadFile_140
XAnimLoadFile_130:
	movzx ecx, word [ebp+ebx*2-0x2a4]
	mov [ebp+ecx*8-0x13a0], bl
	mov [ebp+ecx*8-0x7a0], bl
	mov eax, [ebp+ecx*8-0x13a4]
	mov edx, [ebp+ecx*8-0x13a0]
	mov [ebp+ebx*8-0xba4], eax
	mov [ebp+ebx*8-0xba0], edx
	mov eax, [ebp-0x147c]
	mov edx, [eax+0x30]
	movzx eax, word [ebp+ecx*2-0x1a4]
	mov [edx+ebx*2], ax
	mov edx, [edi+ecx*8]
	mov eax, ecx
	shr eax, 0x3
	movsx eax, byte [eax+esi]
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz XAnimLoadFile_150
	test edx, edx
	jz XAnimLoadFile_160
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x1
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	ja XAnimLoadFile_130
XAnimLoadFile_140:
	mov ecx, [ebp-0x64]
	mov edx, [ebp-0x60]
	cmp ecx, edx
	cmovg edx, ecx
	mov [ebp-0x60], edx
	mov eax, [ebp-0x5c]
	cmp edx, eax
	cmovle edx, eax
	mov [ebp-0x5c], edx
	mov eax, [ebp-0x58]
	cmp edx, eax
	cmovle edx, eax
	mov [ebp-0x58], edx
	mov eax, [ebp-0x54]
	cmp edx, eax
	cmovg eax, edx
	mov [ebp-0x54], eax
	mov edx, [ebp-0x147c]
	mov [edx+0x12], cl
	mov eax, [ebp-0x60]
	sub eax, [ebp-0x64]
	mov [edx+0x13], al
	mov eax, [ebp-0x5c]
	sub eax, [ebp-0x60]
	mov [edx+0x14], al
	mov eax, [ebp-0x58]
	sub eax, [ebp-0x5c]
	mov [edx+0x15], al
	mov eax, [ebp-0x54]
	sub eax, [ebp-0x58]
	mov [edx+0x16], al
	lea ebx, [ebp-0x3a4]
	mov ecx, [ebp-0x1484]
	mov [esp+0x8], ecx
	lea esi, [ebp-0x2a4]
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	mov dword [esp+0xc], XAnimCompareTransParts
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x1478]
	mov [esp+0x4], eax
	mov [esp], ebx
	call qsort
	mov esi, [g_partTransArray]
	xor ebx, ebx
	jmp XAnimLoadFile_170
XAnimLoadFile_200:
	cmp byte [eax+0x2], 0x1
	sbb eax, eax
	not eax
	add eax, 0x6
XAnimLoadFile_390:
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	jbe XAnimLoadFile_180
XAnimLoadFile_170:
	movzx ecx, word [ebp+ebx*2-0x3a4]
	mov eax, [ebp+ecx*8-0x7a4]
	mov edx, [ebp+ecx*8-0x7a0]
	mov [ebp+ebx*8-0xfa4], eax
	mov [ebp+ebx*8-0xfa0], edx
	mov eax, [esi+ecx*8]
	test eax, eax
	jz XAnimLoadFile_190
	cmp word [eax], 0x0
	jnz XAnimLoadFile_200
	mov eax, 0x7
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	ja XAnimLoadFile_170
XAnimLoadFile_180:
	mov ecx, [ebp-0x50]
	mov edx, [ebp-0x4c]
	cmp ecx, edx
	cmovg edx, ecx
	mov [ebp-0x4c], edx
	mov eax, [ebp-0x48]
	cmp edx, eax
	cmovle edx, eax
	mov [ebp-0x48], edx
	mov eax, [ebp-0x44]
	cmp edx, eax
	cmovg eax, edx
	mov [ebp-0x44], eax
	mov edx, [ebp-0x147c]
	mov [edx+0x17], cl
	mov eax, [ebp-0x4c]
	sub al, [ebp-0x50]
	mov [edx+0x18], al
	mov eax, [ebp-0x48]
	sub al, [ebp-0x4c]
	mov [edx+0x19], al
	mov eax, [ebp-0x44]
	sub al, [ebp-0x48]
	mov [ebp-0x147d], al
	mov [edx+0x1a], al
	movzx edi, byte [edx+0x12]
	movzx eax, byte [edx+0x13]
	lea eax, [edi+eax]
	mov [ebp-0x13c8], eax
	cmp edi, eax
	jb XAnimLoadFile_210
	mov edx, edi
	mov dword [ebp-0x1454], 0x0
	mov dword [ebp-0x13d4], 0x0
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x13ec], 0x0
XAnimLoadFile_1800:
	mov ecx, [ebp-0x147c]
	movzx eax, byte [ecx+0x14]
	add eax, [ebp-0x13c8]
	cmp edx, eax
	jae XAnimLoadFile_220
XAnimLoadFile_820:
	cmp byte [ebp-0x1469], 0x0
	jnz XAnimLoadFile_230
	xor esi, esi
	mov edi, eax
	sub edi, edx
	lea ecx, [ebp+edx*8-0xba4]
	jmp XAnimLoadFile_240
XAnimLoadFile_260:
	lea ebx, [edx+ebx+0x1]
	mov [ebp-0x13ec], ebx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*4+0x4]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ecx, 0x8
	cmp edi, esi
	jz XAnimLoadFile_250
XAnimLoadFile_240:
	mov eax, [ecx]
	movzx edx, word [eax]
	mov ebx, [ebp-0x13ec]
	add ebx, 0x1
	cmp edx, 0x3f
	jbe XAnimLoadFile_260
	lea eax, [edx-0x1]
	shr eax, 0x8
	lea eax, [eax+ebx+0x2]
	mov [ebp-0x13ec], eax
	mov ebx, [ebp-0x1444]
	lea ebx, [edx+ebx+0x1]
	mov [ebp-0x1444], ebx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*4+0x4]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ecx, 0x8
	cmp edi, esi
	jnz XAnimLoadFile_240
XAnimLoadFile_250:
	mov edx, [ebp-0x147c]
	mov edi, [ebp-0x13d4]
	jmp XAnimLoadFile_270
XAnimLoadFile_60:
	movzx eax, ax
	cvtsi2ss xmm0, eax
	mov eax, [ebp-0x147c]
	movss xmm1, dword [eax+0x28]
	divss xmm1, xmm0
	mov edx, eax
	movss [edx+0x2c], xmm1
	cmp byte [edx+0x11], 0x0
	jz XAnimLoadFile_280
XAnimLoadFile_70:
	mov dword [esp], 0x8
	call dword [ebp+0xc]
	mov ecx, [ebp-0x147c]
	mov [ecx+0x54], eax
	movzx ebx, byte [ebp-0x1469]
	movzx esi, word [ebp-0x1472]
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov edi, [ebp-0x1470]
	mov [esp+0x8], edi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call GetDeltaQuaternions
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x147c]
	mov eax, [ebx+0x54]
	mov [esp], eax
	call GetDeltaTranslations
	mov [ebp-0x1470], eax
	cmp word [ebp-0x148a], 0x0
	jz XAnimLoadFile_290
XAnimLoadFile_80:
	mov ebx, [ebp-0x1478]
	sub ebx, 0x1
	shr ebx, 0x3
	add ebx, 0x1
	mov esi, [ebp-0x1470]
	add esi, ebx
	lea eax, [ebp-0x3c]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	add ebx, esi
	mov [ebp-0x13e8], ebx
	mov ebx, [ebp-0x1478]
	shl ebx, 0x3
	lea esi, [ebp-0x13a4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x7a4]
	mov [esp], edi
	call memset
	xor edx, edx
XAnimLoadFile_300:
	lea eax, [edx*8]
	mov [esi+eax+0x4], dl
	mov [ebp+eax-0x7a0], dl
	add edx, 0x1
	cmp [ebp-0x1478], edx
	ja XAnimLoadFile_300
	mov dword [ebp-0x13b0], 0x0
	mov dword [ebp-0x13f0], g_highPrecisionPart
XAnimLoadFile_340:
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x13e8]
	xor eax, eax
	repne scasb
	not ecx
	mov [ebp-0x1490], ecx
	mov dword [esp+0xc], 0x9
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp-0x13e8]
	mov [esp], ebx
	call SL_GetStringOfSize
	mov esi, [ebp-0x13b0]
	mov [ebp+esi*2-0x1a4], ax
	mov eax, [ebp-0x1488]
	test eax, eax
	jz XAnimLoadFile_310
	xor esi, esi
	mov edi, 0x12
XAnimLoadFile_330:
	lea ebx, [esi+edi]
	shr ebx, 1
	mov eax, [ebx*4+g_highPrecisionParts]
	mov [esp+0x4], eax
	mov eax, [ebp-0x13e8]
	mov [esp], eax
	call strcmp
	cmp eax, 0x0
	jl XAnimLoadFile_320
	jle XAnimLoadFile_310
	lea esi, [ebx+0x1]
	cmp esi, edi
	jb XAnimLoadFile_330
XAnimLoadFile_410:
	xor eax, eax
XAnimLoadFile_420:
	mov edx, [ebp-0x13f0]
	mov [edx], eax
	mov ecx, [ebp-0x1490]
	add [ebp-0x13e8], ecx
	add dword [ebp-0x13b0], 0x1
	add edx, 0x4
	mov [ebp-0x13f0], edx
	mov ebx, [ebp-0x13b0]
	cmp [ebp-0x1478], ebx
	ja XAnimLoadFile_340
	mov esi, [ebp-0x1470]
	mov [ebp-0x1468], esi
	jmp XAnimLoadFile_350
XAnimLoadFile_1110:
	mov edi, [ebp-0x14ac]
	mov [ebp-0x13dc], edi
	mov edx, [ebp-0x147c]
	mov ecx, edi
XAnimLoadFile_1070:
	movzx eax, byte [edx+0x19]
	add eax, [ebp-0x13b4]
	mov [ebp-0x14bc], eax
	cmp eax, ecx
	jbe XAnimLoadFile_360
	lea ecx, [ebp+ecx*8-0xfa0]
	xor ebx, ebx
	mov esi, eax
	sub esi, [ebp-0x13dc]
XAnimLoadFile_370:
	movzx eax, byte [ecx]
	mov edi, [ebp-0x1464]
	mov [edi], al
	mov edx, [ecx-0x4]
	mov eax, [edx+0x4]
	mov edi, [ebp-0x1448]
	mov [edi], eax
	mov eax, [edx+0x8]
	mov [edi+0x4], eax
	mov eax, [edx+0xc]
	mov [edi+0x8], eax
	add dword [ebp-0x1464], 0x1
	add edi, 0xc
	mov [ebp-0x1448], edi
	add ebx, 0x1
	add ecx, 0x8
	cmp ebx, esi
	jnz XAnimLoadFile_370
	add [ebp-0x13dc], ebx
	mov edx, [ebp-0x147c]
XAnimLoadFile_360:
	movzx eax, byte [edx+0x1a]
	add eax, [ebp-0x14bc]
	cmp eax, [ebp-0x13dc]
	jbe XAnimLoadFile_110
	mov ebx, [ebp-0x13dc]
	lea ecx, [ebp+ebx*8-0xfa4]
	xor ebx, ebx
	mov edx, eax
	sub edx, [ebp-0x13dc]
XAnimLoadFile_380:
	movzx eax, byte [ecx+0x4]
	mov esi, [ebp-0x1464]
	mov [esi+ebx], al
	add ebx, 0x1
	add ecx, 0x8
	cmp edx, ebx
	jnz XAnimLoadFile_380
XAnimLoadFile_110:
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserDestroy
	mov dword [g_animUser], 0x0
XAnimLoadFile_1740:
	mov eax, [ebp-0x147c]
	add esp, 0x14dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimLoadFile_190:
	mov al, 0x8
	jmp XAnimLoadFile_390
XAnimLoadFile_160:
	xor eax, eax
	jmp XAnimLoadFile_400
XAnimLoadFile_320:
	mov edi, ebx
	cmp esi, edi
	jb XAnimLoadFile_330
	jmp XAnimLoadFile_410
XAnimLoadFile_310:
	mov eax, 0x1
	jmp XAnimLoadFile_420
XAnimLoadFile_100:
	mov dword [ebp-0x1428], 0x0
XAnimLoadFile_440:
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call SL_GetString_
	mov [ebx], ax
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x1]
	movzx eax, word [ecx+0x1]
	mov [ebp-0x20], ax
	lea esi, [ecx+0x3]
	mov edx, eax
	mov ecx, [ebp-0x147c]
	movzx eax, word [ecx+0xe]
	pxor xmm1, xmm1
	test ax, ax
	jz XAnimLoadFile_430
	cvtsi2ss xmm1, edx
	movzx eax, ax
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
XAnimLoadFile_430:
	movss [ebx+0x4], xmm1
	add dword [ebp-0x1428], 0x1
	add ebx, 0x8
	mov edi, [ebp-0x1428]
	cmp [ebp-0x142c], edi
	jnz XAnimLoadFile_440
	jmp XAnimLoadFile_450
XAnimLoadFile_90:
	movzx edi, word [ebp-0x1472]
	mov [ebp-0x141c], di
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1419], al
	mov dword [ebp-0x13ac], 0x0
	lea edx, [ebp-0x13a4]
	mov [ebp-0x14b8], edx
	mov eax, [ebp-0x13ac]
	mov ecx, [ebp-0x13ac]
XAnimLoadFile_580:
	shr eax, 0x3
	and ecx, 0x7
	movsx edx, byte [ebp+eax-0x3c]
	sar edx, cl
	mov ebx, [ebp-0x1468]
	movzx eax, byte [ebx+eax]
	sar eax, cl
	mov esi, [ebp-0x13e8]
	mov [ebp-0x1c], esi
	and al, 0x1
	mov edi, eax
	and dl, 0x1
	mov esi, edx
	mov eax, [ebp-0x13e8]
	movzx edx, word [eax]
	mov [ebp-0x20], dx
	add eax, 0x2
	mov [ebp-0x1c], eax
	mov [ebp-0x143e], dx
	test dx, dx
	jz XAnimLoadFile_460
	cmp word [ebp-0x143e], 0x1
	jz XAnimLoadFile_470
	cmp byte [ebp-0x1419], 0x0
	jz XAnimLoadFile_480
	movzx eax, word [ebp-0x143e]
	mov [ebp-0x1418], eax
	mov dword [esp+0x8], 0x4
	add eax, 0xb
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebp-0x14a8], eax
	mov edx, [ebp-0x14b8]
	mov [edx], eax
	movzx ecx, word [ebp-0x143e]
	cmp [ebp-0x141c], cx
	ja XAnimLoadFile_490
	mov eax, [ebp-0x1418]
	test eax, eax
	jg XAnimLoadFile_500
XAnimLoadFile_730:
	mov eax, esi
	test al, al
	jz XAnimLoadFile_510
	mov edx, [ebp-0x14b8]
	mov ebx, [edx]
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x1418]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebx+0x4], eax
	mov eax, [ebp-0x1c]
	movzx edx, word [eax]
	mov [ebp-0x20], dx
	add eax, 0x2
	mov [ebp-0x1c], eax
	movsx eax, dx
	mov [ebp-0x2c], dx
	imul eax, eax
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jle XAnimLoadFile_520
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1498]
	cvttss2si eax, [ebp-0x1498]
XAnimLoadFile_1340:
	mov [ebp-0x2a], ax
	mov ecx, edi
	test cl, cl
	jz XAnimLoadFile_530
	movzx edx, word [ebp-0x2c]
	neg edx
	mov [ebp-0x2c], dx
	neg eax
	mov [ebp-0x2a], ax
XAnimLoadFile_910:
	mov ebx, [ebp-0x14b8]
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [eax], dx
	mov eax, [ebx]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x2], ax
	cmp dword [ebp-0x1418], 0x1
	jg XAnimLoadFile_540
	mov edi, [ebp-0x14b8]
	mov edi, [edi]
	mov [ebp-0x14a8], edi
	mov edx, edi
	jmp XAnimLoadFile_550
XAnimLoadFile_460:
	mov edx, [ebp-0x14b8]
	mov dword [edx], 0x0
XAnimLoadFile_710:
	mov edx, [ebp-0x1c]
	mov ecx, [ebp-0x13ac]
	lea ecx, [ebp+ecx*8-0x7a4]
	mov [ebp-0x1430], ecx
	movzx eax, word [edx]
	mov [ebp-0x20], ax
	lea ebx, [edx+0x2]
	mov [ebp-0x1434], ebx
	mov ebx, eax
	test ax, ax
	jnz XAnimLoadFile_560
	mov dword [ecx], 0x0
	mov ecx, [ebp-0x1434]
XAnimLoadFile_1330:
	add dword [ebp-0x13ac], 0x1
	add dword [ebp-0x14b8], 0x8
	mov [ebp-0x13e8], ecx
	mov ebx, [ebp-0x13ac]
	cmp [ebp-0x1478], ebx
	jbe XAnimLoadFile_570
XAnimLoadFile_640:
	mov eax, ebx
	mov ecx, ebx
	jmp XAnimLoadFile_580
XAnimLoadFile_560:
	cmp ax, 0x1
	jz XAnimLoadFile_590
	cmp byte [ebp-0x1419], 0x0
	jz XAnimLoadFile_600
	mov dword [esp+0x8], 0x4
	movzx esi, ax
	lea eax, [esi+0x23]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov ecx, [ebp-0x1430]
	mov [ecx], eax
	cmp [ebp-0x141c], bx
	ja XAnimLoadFile_610
	mov ebx, esi
	test esi, esi
	jle XAnimLoadFile_620
	xor edx, edx
XAnimLoadFile_630:
	mov edi, [ebp-0x1430]
	mov eax, [edi]
	mov [edx+eax+0x20], dl
	add edx, 0x1
	cmp edx, esi
	jnz XAnimLoadFile_630
XAnimLoadFile_620:
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, XAnimTempAlloc
	call LoadTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
XAnimLoadFile_680:
	add dword [ebp-0x13ac], 0x1
	add dword [ebp-0x14b8], 0x8
	mov [ebp-0x13e8], ecx
	mov ebx, [ebp-0x13ac]
	cmp [ebp-0x1478], ebx
	ja XAnimLoadFile_640
XAnimLoadFile_570:
	mov esi, ecx
	jmp XAnimLoadFile_650
XAnimLoadFile_600:
	movzx esi, ax
	lea edi, [esi+esi]
	mov dword [esp+0x8], 0x4
	lea eax, [edi+0x22]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp-0x1430]
	mov [edx], eax
	cmp [ebp-0x141c], bx
	ja XAnimLoadFile_660
	mov ebx, esi
	test esi, esi
	jle XAnimLoadFile_620
	xor edx, edx
XAnimLoadFile_670:
	mov edi, [ebp-0x1430]
	mov eax, [edi]
	mov [eax+edx*2+0x20], dx
	add edx, 0x1
	cmp edx, esi
	jnz XAnimLoadFile_670
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, XAnimTempAlloc
	call LoadTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp XAnimLoadFile_680
XAnimLoadFile_510:
	mov esi, [ebp-0x14b8]
	mov ebx, [esi]
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x1418]
	shl eax, 0x3
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebx+0x4], eax
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call ConsumeQuat
	mov eax, edi
	test al, al
	jz XAnimLoadFile_690
	movzx edx, word [ebp-0x2c]
	neg edx
	mov [ebp-0x2c], dx
	neg word [ebp-0x2a]
	neg word [ebp-0x28]
	neg word [ebp-0x26]
XAnimLoadFile_900:
	mov ecx, [ebp-0x14b8]
	mov eax, [ecx]
	mov eax, [eax+0x4]
	mov [eax], dx
	mov eax, [ecx]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x2], ax
	mov eax, [ecx]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x28]
	mov [edx+0x4], ax
	mov eax, [ecx]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x26]
	mov [edx+0x6], ax
	cmp dword [ebp-0x1418], 0x1
	jg XAnimLoadFile_700
	mov eax, [ebp-0x14b8]
	mov eax, [eax]
	mov [ebp-0x14a8], eax
	mov edx, eax
XAnimLoadFile_550:
	movzx eax, word [ebp-0x143e]
	sub eax, 0x1
	mov [edx], ax
	jmp XAnimLoadFile_710
XAnimLoadFile_480:
	movzx ebx, word [ebp-0x143e]
	mov [ebp-0x1418], ebx
	add ebx, ebx
	mov dword [esp+0x8], 0x4
	lea eax, [ebx+0xa]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebp-0x14a8], eax
	mov edx, [ebp-0x14b8]
	mov [edx], eax
	movzx ecx, word [ebp-0x143e]
	cmp [ebp-0x141c], cx
	ja XAnimLoadFile_720
	mov eax, [ebp-0x1418]
	test eax, eax
	jle XAnimLoadFile_730
	xor edx, edx
XAnimLoadFile_740:
	mov ebx, [ebp-0x14b8]
	mov eax, [ebx]
	mov [eax+edx*2+0x8], dx
	add edx, 0x1
	cmp edx, [ebp-0x1418]
	jnz XAnimLoadFile_740
	jmp XAnimLoadFile_730
XAnimLoadFile_470:
	mov ecx, esi
	test cl, cl
	jz XAnimLoadFile_750
	mov ebx, [ebp-0x13e8]
	movzx edx, word [ebx+0x2]
	mov [ebp-0x20], dx
	mov eax, ebx
	add eax, 0x4
	mov [ebp-0x1c], eax
	movsx eax, dx
	mov [ebp-0x2c], dx
	imul eax, eax
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jle XAnimLoadFile_760
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1494]
	cvttss2si eax, [ebp-0x1494]
XAnimLoadFile_1750:
	mov [ebp-0x2a], ax
	mov edx, edi
	test dl, dl
	jz XAnimLoadFile_770
	neg word [ebp-0x2c]
	neg eax
	mov [ebp-0x2a], ax
XAnimLoadFile_770:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebp-0x14a8], eax
	mov ecx, [ebp-0x14b8]
	mov [ecx], eax
	movzx eax, word [ebp-0x2c]
	mov ebx, [ebp-0x14a8]
	mov [ebx+0x4], ax
	mov edx, [ecx]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x6], ax
XAnimLoadFile_930:
	mov esi, [ebp-0x14b8]
	mov eax, [esi]
	mov word [eax], 0x0
	jmp XAnimLoadFile_710
XAnimLoadFile_210:
	cmp byte [ebp-0x1469], 0x0
	jnz XAnimLoadFile_780
	lea ebx, [ebp+edi*8-0xba4]
	mov dword [ebp-0x13ec], 0x0
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x1454], 0x0
	xor esi, esi
	mov eax, [ebp-0x13c8]
	sub eax, edi
	mov [ebp-0x14a4], eax
	jmp XAnimLoadFile_790
XAnimLoadFile_810:
	lea ecx, [edx+ecx+0x1]
	mov [ebp-0x13ec], ecx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*2+0x2]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x14a4], esi
	jz XAnimLoadFile_800
XAnimLoadFile_790:
	mov eax, [ebx]
	movzx edx, word [eax]
	mov ecx, [ebp-0x13ec]
	add ecx, 0x1
	cmp edx, 0x3f
	jbe XAnimLoadFile_810
	lea eax, [edx-0x1]
	shr eax, 0x8
	lea eax, [eax+ecx+0x2]
	mov [ebp-0x13ec], eax
	mov ecx, [ebp-0x1444]
	lea ecx, [ecx+edx+0x1]
	mov [ebp-0x1444], ecx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*2+0x2]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x14a4], esi
	jnz XAnimLoadFile_790
XAnimLoadFile_800:
	mov eax, [ebp-0x14a4]
	lea edx, [edi+eax]
	mov dword [ebp-0x13d4], 0x0
	mov ecx, [ebp-0x147c]
	movzx eax, byte [ecx+0x14]
	add eax, [ebp-0x13c8]
	cmp edx, eax
	jb XAnimLoadFile_820
XAnimLoadFile_220:
	mov edx, ecx
	mov edi, [ebp-0x13d4]
XAnimLoadFile_270:
	movzx eax, byte [edx+0x15]
	mov ecx, [ebp-0x13ec]
	lea eax, [ecx+eax*2]
	mov ebx, edx
	movzx edx, byte [edx+0x16]
	lea esi, [eax+edx*4]
	movzx edx, byte [ebx+0x17]
	movzx ebx, dl
	add edi, ebx
	lea eax, [ebx+ebx*2]
	add eax, eax
	mov [ebp-0x14a0], eax
	test dl, dl
	jnz XAnimLoadFile_830
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
XAnimLoadFile_1300:
	mov edx, [ebp-0x147c]
	movzx eax, byte [edx+0x18]
	lea edx, [ebx+eax]
	lea edi, [eax+edi]
	mov [ebp-0x13d0], edi
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x14a0]
	lea eax, [ecx+eax*2]
	mov [ebp-0x144c], eax
	cmp edx, [ebp-0x13d8]
	jbe XAnimLoadFile_840
	cmp byte [ebp-0x1469], 0x0
	jnz XAnimLoadFile_850
	xor edi, edi
	sub edx, [ebp-0x13d8]
	mov ecx, [ebp-0x13d8]
	lea ebx, [ebp+ecx*8-0xfa4]
	jmp XAnimLoadFile_860
XAnimLoadFile_880:
	lea esi, [ecx+esi+0x1]
	lea eax, [ecx+ecx*2]
	mov ecx, [ebp-0x1454]
	lea ecx, [eax+ecx+0x3]
	mov [ebp-0x1454], ecx
	add edi, 0x1
	add ebx, 0x8
	cmp edx, edi
	jz XAnimLoadFile_870
XAnimLoadFile_860:
	mov eax, [ebx]
	movzx ecx, word [eax]
	add esi, 0x1
	cmp ecx, 0x3f
	jbe XAnimLoadFile_880
	lea eax, [ecx-0x1]
	shr eax, 0x8
	lea esi, [eax+esi+0x2]
	mov eax, [ebp-0x1444]
	lea eax, [ecx+eax+0x1]
	mov [ebp-0x1444], eax
	lea eax, [ecx+ecx*2]
	mov ecx, [ebp-0x1454]
	lea ecx, [eax+ecx+0x3]
	mov [ebp-0x1454], ecx
	add edi, 0x1
	add ebx, 0x8
	cmp edx, edi
	jnz XAnimLoadFile_860
XAnimLoadFile_870:
	mov ecx, [ebp-0x13d0]
	jmp XAnimLoadFile_890
XAnimLoadFile_690:
	movzx edx, word [ebp-0x2c]
	jmp XAnimLoadFile_900
XAnimLoadFile_530:
	movzx edx, word [ebp-0x2c]
	jmp XAnimLoadFile_910
XAnimLoadFile_750:
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call ConsumeQuat
	mov eax, edi
	test al, al
	jz XAnimLoadFile_920
	neg word [ebp-0x2c]
	neg word [ebp-0x2a]
	neg word [ebp-0x28]
	neg word [ebp-0x26]
XAnimLoadFile_920:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0xc
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [ebp-0x14a8], eax
	mov edx, [ebp-0x14b8]
	mov [edx], eax
	movzx eax, word [ebp-0x2c]
	mov ecx, [ebp-0x14a8]
	mov [ecx+0x4], ax
	mov ebx, [ebp-0x14b8]
	mov edx, [ebx]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x6], ax
	mov edx, [ebx]
	movzx eax, word [ebp-0x28]
	mov [edx+0x8], ax
	mov edx, [ebx]
	movzx eax, word [ebp-0x26]
	mov [edx+0xa], ax
	jmp XAnimLoadFile_930
XAnimLoadFile_500:
	xor edx, edx
XAnimLoadFile_940:
	mov ecx, [ebp-0x14b8]
	mov eax, [ecx]
	mov [eax+edx+0x8], dl
	add edx, 0x1
	cmp [ebp-0x1418], edx
	jnz XAnimLoadFile_940
	jmp XAnimLoadFile_730
XAnimLoadFile_40:
	mov [esp], ebx
	call FS_FreeFile
	mov dword [esp+0x10], 0x11
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_ou
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x147c], 0x0
	mov eax, [ebp-0x147c]
	add esp, 0x14dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XAnimLoadFile_840:
	mov ecx, edi
XAnimLoadFile_890:
	mov edx, [ebp-0x147c]
	movzx eax, byte [edx+0x19]
	lea edx, [eax+ecx]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x144c]
	add edi, eax
	movzx eax, byte [ebp-0x147d]
	mov ebx, edx
	add ebx, eax
	jnz XAnimLoadFile_950
	mov dword [ebp-0x1464], 0x0
XAnimLoadFile_1620:
	mov eax, [ebp-0x147c]
	mov [eax+0x4], bx
	mov edx, [ebp-0x1464]
	mov [eax+0x34], edx
	test esi, esi
	jnz XAnimLoadFile_960
	mov dword [ebp-0x1460], 0x0
XAnimLoadFile_1610:
	mov ecx, [ebp-0x147c]
	mov [ecx+0x6], si
	mov ebx, [ebp-0x1460]
	mov [ecx+0x38], ebx
	test edi, edi
	jnz XAnimLoadFile_970
	mov dword [ebp-0x1448], 0x0
XAnimLoadFile_1600:
	mov esi, [ebp-0x147c]
	mov [esi+0x8], di
	mov edi, [ebp-0x1448]
	mov [esi+0x3c], edi
	mov eax, [ebp-0x145c]
	test eax, eax
	jnz XAnimLoadFile_980
	mov dword [ebp-0x1458], 0x0
XAnimLoadFile_1590:
	movzx edx, word [ebp-0x145c]
	mov eax, [ebp-0x147c]
	mov [eax+0xa], dx
	mov ecx, [ebp-0x1458]
	mov [eax+0x44], ecx
	mov edi, [ebp-0x1454]
	test edi, edi
	jnz XAnimLoadFile_990
	mov dword [ebp-0x1450], 0x0
XAnimLoadFile_1580:
	mov ebx, [ebp-0x1454]
	mov esi, [ebp-0x147c]
	mov [esi+0x20], ebx
	mov edi, [ebp-0x1450]
	mov [esi+0x40], edi
	mov word [esi+0xc], 0x0
	mov dword [esi+0x48], 0x0
	cmp byte [ebp-0x1469], 0x0
	jz XAnimLoadFile_1000
	mov esi, [ebp-0x1444]
	test esi, esi
	jnz XAnimLoadFile_1010
XAnimLoadFile_1270:
	xor eax, eax
XAnimLoadFile_1130:
	mov edi, eax
	mov edx, [ebp-0x147c]
	mov [edx+0x4c], eax
	mov ecx, [ebp-0x1444]
	mov [edx+0x24], ecx
	movzx ebx, byte [edx+0x12]
	mov [ebp-0x13c4], ebx
	movzx eax, byte [edx+0x13]
	add eax, ebx
	mov [ebp-0x13c0], eax
	cmp ebx, eax
	jb XAnimLoadFile_1020
	mov [ebp-0x13e0], ebx
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x14]
	add eax, [ebp-0x13c0]
	mov [ebp-0x13bc], eax
	cmp [ebp-0x13e0], eax
	jb XAnimLoadFile_1030
XAnimLoadFile_1420:
	movzx eax, byte [esi+0x15]
	add eax, [ebp-0x13bc]
	mov [ebp-0x14c0], eax
	mov edx, [ebp-0x13e0]
	cmp eax, edx
	ja XAnimLoadFile_1040
	movzx eax, byte [esi+0x16]
	add eax, [ebp-0x14c0]
	cmp eax, [ebp-0x13e0]
	ja XAnimLoadFile_1050
XAnimLoadFile_1520:
	mov edx, esi
XAnimLoadFile_1540:
	movzx eax, byte [edx+0x17]
	movzx ecx, al
	mov [ebp-0x13b8], ecx
	test al, al
	jnz XAnimLoadFile_1060
	mov dword [ebp-0x13dc], 0x0
XAnimLoadFile_1250:
	mov edx, [ebp-0x147c]
	movzx eax, byte [edx+0x18]
	add eax, [ebp-0x13b8]
	mov [ebp-0x13b4], eax
	mov ecx, [ebp-0x13dc]
	cmp eax, ecx
	jbe XAnimLoadFile_1070
	movzx ebx, byte [ebp-0x1469]
	mov [ebp-0x1421], bl
	mov [ebp-0x1410], edi
	lea esi, [ebp+ecx*8-0xfa0]
	mov [ebp-0x1400], esi
	mov [ebp-0x13e4], ecx
	mov [ebp-0x14ac], eax
	mov edi, esi
XAnimLoadFile_1120:
	movzx eax, byte [edi]
	mov edx, [ebp-0x1464]
	mov [edx], al
	add edx, 0x1
	mov [ebp-0x1464], edx
	mov edx, [edi-0x4]
	movzx eax, word [edx]
	mov ecx, [ebp-0x1460]
	mov [ecx], ax
	mov [ebp-0x14bc], eax
	add ecx, 0x2
	mov [ebp-0x1460], ecx
	mov eax, [edx+0x4]
	mov ebx, [ebp-0x1448]
	mov [ebx], eax
	mov eax, [edx+0x8]
	mov [ebx+0x4], eax
	mov eax, [edx+0xc]
	mov [ebx+0x8], eax
	mov eax, [edx+0x10]
	mov [ebx+0xc], eax
	mov eax, [edx+0x14]
	mov [ebx+0x10], eax
	mov eax, [edx+0x18]
	mov [ebx+0x14], eax
	xor ebx, ebx
	xor ecx, ecx
	mov edi, [ebp-0x14bc]
	lea esi, [edi+0x1]
	mov edi, [ebp-0x1450]
XAnimLoadFile_1080:
	mov eax, [edx+0x1c]
	movzx eax, word [eax+ecx]
	mov [edi], ax
	mov eax, [edx+0x1c]
	movzx eax, word [eax+ecx+0x2]
	mov [edi+0x2], ax
	mov eax, [edx+0x1c]
	movzx eax, word [eax+ecx+0x4]
	mov [edi+0x4], ax
	add ebx, 0x1
	add edi, 0x6
	mov [ebp-0x1450], edi
	add ecx, 0x6
	cmp esi, ebx
	jnz XAnimLoadFile_1080
	add edx, 0x20
	mov [ebp-0x1420], edx
	cmp byte [ebp-0x1421], 0x0
	jnz XAnimLoadFile_1090
	cmp dword [ebp-0x14bc], 0x3f
	ja XAnimLoadFile_1100
	mov ebx, [ebp-0x14bc]
	add ebx, ebx
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x1420]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x1460]
	mov [esp], esi
	call memcpy
	lea ebx, [esi+ebx+0x2]
	mov [ebp-0x1460], ebx
XAnimLoadFile_1160:
	add dword [ebp-0x13e4], 0x1
	add dword [ebp-0x1448], 0x18
	add dword [ebp-0x1400], 0x8
	mov esi, [ebp-0x13e4]
	cmp [ebp-0x14ac], esi
	jz XAnimLoadFile_1110
	mov edi, [ebp-0x1400]
	jmp XAnimLoadFile_1120
XAnimLoadFile_1010:
	mov eax, [ebp-0x1444]
	mov [esp], eax
	call dword [ebp+0xc]
	jmp XAnimLoadFile_1130
XAnimLoadFile_1100:
	mov ebx, [ebp-0x14bc]
	add ebx, ebx
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov edi, [ebp-0x1420]
	mov [esp+0x4], edi
	mov eax, [ebp-0x1410]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1410]
	lea edx, [ebx+edx+0x2]
	mov [ebp-0x1410], edx
	mov eax, [ebp-0x14bc]
	sub eax, 0x1
	shr eax, 0x8
	mov edx, eax
	add edx, 0x1
	jz XAnimLoadFile_1140
	mov ecx, edi
	xor ebx, ebx
XAnimLoadFile_1150:
	movzx eax, word [ecx]
	mov esi, [ebp-0x1460]
	mov [esi+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp edx, ebx
	jnz XAnimLoadFile_1150
XAnimLoadFile_1140:
	add edx, edx
	mov edi, [ebp-0x14bc]
	mov ecx, [ebp-0x1420]
	movzx eax, word [ecx+edi*2]
	mov ebx, [ebp-0x1460]
	mov [ebx+edx], ax
	lea edx, [ebx+edx+0x2]
	mov [ebp-0x1460], edx
	jmp XAnimLoadFile_1160
XAnimLoadFile_1090:
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov eax, [ebp-0x1464]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1464]
	mov ecx, [ebp-0x14bc]
	lea edx, [edx+ecx+0x1]
	mov [ebp-0x1464], edx
	jmp XAnimLoadFile_1160
XAnimLoadFile_1060:
	movzx ebx, byte [ebp-0x1469]
	mov [ebp-0x1422], bl
	mov [ebp-0x140c], edi
	mov dword [ebp-0x13dc], 0x0
	mov edx, [ebp-0x13dc]
XAnimLoadFile_1210:
	shl edx, 0x3
	movzx eax, byte [ebp+edx-0xfa0]
	mov esi, [ebp-0x1464]
	mov [esi], al
	add esi, 0x1
	mov [ebp-0x1464], esi
	mov ecx, [ebp+edx-0xfa4]
	movzx eax, word [ecx]
	mov edi, [ebp-0x1460]
	mov [edi], ax
	mov esi, eax
	add edi, 0x2
	mov [ebp-0x1460], edi
	mov eax, [ecx+0x4]
	mov edx, [ebp-0x1448]
	mov [edx], eax
	mov eax, [ecx+0x8]
	mov [edx+0x4], eax
	mov eax, [ecx+0xc]
	mov [edx+0x8], eax
	mov eax, [ecx+0x10]
	mov [edx+0xc], eax
	mov eax, [ecx+0x14]
	mov [edx+0x10], eax
	mov eax, [ecx+0x18]
	mov [edx+0x14], eax
	xor edx, edx
	lea ebx, [esi+esi]
	mov [ebp-0x14bc], ebx
	lea ebx, [ebx+esi+0x3]
	mov edi, [ebp-0x1458]
XAnimLoadFile_1170:
	mov eax, [ecx+0x1c]
	movzx eax, byte [edx+eax]
	mov [edi], al
	mov eax, [ecx+0x1c]
	movzx eax, byte [edx+eax+0x1]
	mov [edi+0x1], al
	mov eax, [ecx+0x1c]
	movzx eax, byte [edx+eax+0x2]
	mov [edi+0x2], al
	add edi, 0x3
	mov [ebp-0x1458], edi
	add edx, 0x3
	cmp ebx, edx
	jnz XAnimLoadFile_1170
	add ecx, 0x20
	mov [ebp-0x13cc], ecx
	cmp byte [ebp-0x1422], 0x0
	jnz XAnimLoadFile_1180
	cmp esi, 0x3f
	ja XAnimLoadFile_1190
	mov eax, [ebp-0x14bc]
	add eax, 0x2
	mov [esp+0x8], eax
	mov ecx, [ebp-0x13cc]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x1460]
	mov [esp], ebx
	call memcpy
	mov esi, [ebp-0x14bc]
	lea esi, [ebx+esi+0x2]
	mov [ebp-0x1460], esi
XAnimLoadFile_1260:
	add dword [ebp-0x13dc], 0x1
	add dword [ebp-0x1448], 0x18
	mov esi, [ebp-0x13dc]
	cmp [ebp-0x13b8], esi
	jbe XAnimLoadFile_1200
XAnimLoadFile_1240:
	mov edx, esi
	jmp XAnimLoadFile_1210
XAnimLoadFile_1190:
	mov eax, [ebp-0x14bc]
	add eax, 0x2
	mov [esp+0x8], eax
	mov edi, [ebp-0x13cc]
	mov [esp+0x4], edi
	mov eax, [ebp-0x140c]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x140c]
	mov ecx, [ebp-0x14bc]
	lea edx, [edx+ecx+0x2]
	mov [ebp-0x140c], edx
	lea eax, [esi-0x1]
	shr eax, 0x8
	mov edx, eax
	add edx, 0x1
	jz XAnimLoadFile_1220
	mov ecx, edi
	xor ebx, ebx
XAnimLoadFile_1230:
	movzx eax, word [ecx]
	mov edi, [ebp-0x1460]
	mov [edi+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp edx, ebx
	jnz XAnimLoadFile_1230
XAnimLoadFile_1220:
	add edx, edx
	mov ecx, [ebp-0x13cc]
	movzx eax, word [ecx+esi*2]
	mov ebx, [ebp-0x1460]
	mov [ebx+edx], ax
	lea edx, [ebx+edx+0x2]
	mov [ebp-0x1460], edx
	add dword [ebp-0x13dc], 0x1
	add dword [ebp-0x1448], 0x18
	mov esi, [ebp-0x13dc]
	cmp [ebp-0x13b8], esi
	ja XAnimLoadFile_1240
XAnimLoadFile_1200:
	mov edi, [ebp-0x140c]
	jmp XAnimLoadFile_1250
XAnimLoadFile_1180:
	lea eax, [esi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1464]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1464]
	lea esi, [edx+esi+0x1]
	mov [ebp-0x1464], esi
	jmp XAnimLoadFile_1260
XAnimLoadFile_1000:
	mov ebx, [ebp-0x1444]
	test ebx, ebx
	jz XAnimLoadFile_1270
	mov eax, [ebp-0x1444]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	jmp XAnimLoadFile_1130
XAnimLoadFile_830:
	cmp byte [ebp-0x1469], 0x0
	jnz XAnimLoadFile_1280
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
	jmp XAnimLoadFile_1290
XAnimLoadFile_1310:
	lea esi, [edx+ecx+0x1]
XAnimLoadFile_1320:
	add dword [ebp-0x13d8], 0x1
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x145c]
	lea edx, [eax+edx+0x3]
	mov [ebp-0x145c], edx
	cmp ebx, [ebp-0x13d8]
	jbe XAnimLoadFile_1300
XAnimLoadFile_1290:
	mov edx, [ebp-0x13d8]
	mov eax, [ebp+edx*8-0xfa4]
	movzx edx, word [eax]
	lea ecx, [esi+0x1]
	cmp edx, 0x3f
	jbe XAnimLoadFile_1310
	lea eax, [edx-0x1]
	shr eax, 0x8
	lea esi, [eax+ecx+0x2]
	mov ecx, [ebp-0x1444]
	lea ecx, [edx+ecx+0x1]
	mov [ebp-0x1444], ecx
	jmp XAnimLoadFile_1320
XAnimLoadFile_590:
	mov eax, [edx+0x2]
	mov [ebp-0x20], eax
	mov esi, [ebp-0x20]
	mov eax, [edx+0x6]
	mov [ebp-0x20], eax
	mov edi, [ebp-0x20]
	mov eax, [edx+0xa]
	mov [ebp-0x20], eax
	add edx, 0xe
	mov [ebp-0x1434], edx
	mov ebx, [ebp-0x20]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x10
	mov eax, [g_animUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp-0x1430]
	mov [edx], eax
	mov word [eax], 0x0
	mov eax, [edx]
	lea edx, [eax+0x4]
	mov [eax+0x4], esi
	mov [edx+0x4], edi
	mov [edx+0x8], ebx
	mov ecx, [ebp-0x1434]
	jmp XAnimLoadFile_1330
XAnimLoadFile_520:
	xor eax, eax
	jmp XAnimLoadFile_1340
XAnimLoadFile_660:
	add eax, 0x20
	mov [esp+0x8], edi
	mov ecx, [ebp-0x1434]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add [ebp-0x1434], edi
	mov ebx, esi
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, XAnimTempAlloc
	call LoadTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp XAnimLoadFile_680
XAnimLoadFile_610:
	mov ebx, esi
	add eax, 0x20
	mov [esp+0x8], esi
	mov esi, [ebp-0x1434]
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	add esi, ebx
	mov [ebp-0x1434], esi
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, XAnimTempAlloc
	call LoadTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp XAnimLoadFile_680
XAnimLoadFile_1020:
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1412], al
	mov [ebp-0x1404], edi
	mov dword [ebp-0x13f8], 0x0
	lea edx, [ebp+ebx*8-0xba4]
	mov [ebp-0x14b4], edx
	mov ecx, edx
XAnimLoadFile_1400:
	mov ebx, [ecx]
	movzx edi, word [ebx]
	mov esi, [ebp-0x1460]
	mov [esi], di
	add esi, 0x2
	mov [ebp-0x1460], esi
	lea esi, [edi*4]
	lea eax, [esi+0x4]
	mov edx, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x1450]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1450]
	lea esi, [edx+esi+0x4]
	mov [ebp-0x1450], esi
	lea esi, [ebx+0x8]
	cmp byte [ebp-0x1412], 0x0
	jnz XAnimLoadFile_1350
	cmp edi, 0x3f
	jbe XAnimLoadFile_1360
	lea ebx, [edi+edi]
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1404]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1404]
	lea edx, [ebx+edx+0x2]
	mov [ebp-0x1404], edx
	lea eax, [edi-0x1]
	shr eax, 0x8
	add eax, 0x1
	mov [ebp-0x14c4], eax
	jz XAnimLoadFile_1370
	mov ecx, esi
	xor ebx, ebx
XAnimLoadFile_1380:
	movzx eax, word [ecx]
	mov edx, [ebp-0x1460]
	mov [edx+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp [ebp-0x14c4], ebx
	jnz XAnimLoadFile_1380
	mov edx, [ebp-0x14c4]
XAnimLoadFile_1500:
	add edx, edx
	movzx eax, word [esi+edi*2]
	mov ecx, [ebp-0x1460]
	mov [ecx+edx], ax
	lea edx, [ecx+edx+0x2]
	mov [ebp-0x1460], edx
XAnimLoadFile_1490:
	add dword [ebp-0x13f8], 0x1
	add dword [ebp-0x14b4], 0x8
	mov eax, [ebp-0x13c0]
	sub eax, [ebp-0x13c4]
	cmp eax, [ebp-0x13f8]
	jz XAnimLoadFile_1390
XAnimLoadFile_1410:
	mov ecx, [ebp-0x14b4]
	jmp XAnimLoadFile_1400
XAnimLoadFile_1360:
	lea ebx, [edi+edi]
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov esi, [ebp-0x1460]
	mov [esp], esi
	call memcpy
	lea ebx, [esi+ebx+0x2]
	mov [ebp-0x1460], ebx
	add dword [ebp-0x13f8], 0x1
	add dword [ebp-0x14b4], 0x8
	mov eax, [ebp-0x13c0]
	sub eax, [ebp-0x13c4]
	cmp eax, [ebp-0x13f8]
	jnz XAnimLoadFile_1410
XAnimLoadFile_1390:
	mov ebx, [ebp-0x13f8]
	add ebx, [ebp-0x13c4]
	mov [ebp-0x13e0], ebx
	mov edi, [ebp-0x1404]
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x14]
	add eax, [ebp-0x13c0]
	mov [ebp-0x13bc], eax
	cmp [ebp-0x13e0], eax
	jae XAnimLoadFile_1420
XAnimLoadFile_1030:
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1411], al
	mov [ebp-0x1408], edi
	mov dword [ebp-0x13fc], 0x0
	mov edx, [ebp-0x13e0]
	lea edx, [ebp+edx*8-0xba4]
	mov [ebp-0x14b0], edx
	mov ecx, edx
XAnimLoadFile_1480:
	mov ebx, [ecx]
	movzx edi, word [ebx]
	mov esi, [ebp-0x1460]
	mov [esi], di
	add esi, 0x2
	mov [ebp-0x1460], esi
	lea esi, [edi*8]
	lea eax, [esi+0x8]
	mov edx, [ebx+0x4]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x1450]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1450]
	lea esi, [esi+edx+0x8]
	mov [ebp-0x1450], esi
	lea esi, [ebx+0x8]
	cmp byte [ebp-0x1411], 0x0
	jnz XAnimLoadFile_1430
	cmp edi, 0x3f
	jbe XAnimLoadFile_1440
	lea ebx, [edi+edi]
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1408]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1408]
	lea edx, [edx+ebx+0x2]
	mov [ebp-0x1408], edx
	lea eax, [edi-0x1]
	shr eax, 0x8
	add eax, 0x1
	mov [ebp-0x14c4], eax
	jz XAnimLoadFile_1450
	mov ecx, esi
	xor ebx, ebx
XAnimLoadFile_1460:
	movzx eax, word [ecx]
	mov edx, [ebp-0x1460]
	mov [edx+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp [ebp-0x14c4], ebx
	jnz XAnimLoadFile_1460
	mov edx, [ebp-0x14c4]
XAnimLoadFile_1570:
	add edx, edx
	movzx eax, word [esi+edi*2]
	mov ecx, [ebp-0x1460]
	mov [ecx+edx], ax
	lea edx, [ecx+edx+0x2]
	mov [ebp-0x1460], edx
XAnimLoadFile_1560:
	add dword [ebp-0x13fc], 0x1
	add dword [ebp-0x14b0], 0x8
	mov eax, [ebp-0x13bc]
	sub eax, [ebp-0x13e0]
	cmp eax, [ebp-0x13fc]
	jz XAnimLoadFile_1470
XAnimLoadFile_1550:
	mov ecx, [ebp-0x14b0]
	jmp XAnimLoadFile_1480
XAnimLoadFile_1350:
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x1464]
	mov [esp], ecx
	call memcpy
	mov ebx, [ebp-0x1464]
	lea edi, [ebx+edi+0x1]
	mov [ebp-0x1464], edi
	jmp XAnimLoadFile_1490
XAnimLoadFile_1370:
	mov edx, eax
	jmp XAnimLoadFile_1500
XAnimLoadFile_1040:
	lea ecx, [ebp+edx*8-0xba4]
	mov esi, eax
	mov ebx, [ebp-0x1460]
XAnimLoadFile_1510:
	mov eax, [ecx]
	mov eax, [eax+0x4]
	mov [ebx], eax
	add edx, 0x1
	add ebx, 0x4
	mov [ebp-0x1460], ebx
	add ecx, 0x8
	cmp esi, edx
	jnz XAnimLoadFile_1510
	mov [ebp-0x13e0], esi
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x16]
	add eax, [ebp-0x14c0]
	cmp eax, [ebp-0x13e0]
	jbe XAnimLoadFile_1520
XAnimLoadFile_1050:
	mov edx, [ebp-0x13e0]
	lea ecx, [ebp+edx*8-0xba4]
	xor ebx, ebx
	sub eax, edx
	mov [ebp-0x14c8], eax
	mov esi, [ebp-0x1460]
XAnimLoadFile_1530:
	mov eax, [ecx]
	mov edx, [eax+0x4]
	mov [esi], edx
	mov eax, [eax+0x8]
	mov [esi+0x4], eax
	add esi, 0x8
	mov [ebp-0x1460], esi
	add ebx, 0x1
	add ecx, 0x8
	cmp [ebp-0x14c8], ebx
	jnz XAnimLoadFile_1530
	mov edx, [ebp-0x147c]
	jmp XAnimLoadFile_1540
XAnimLoadFile_1440:
	lea ebx, [edi+edi]
	lea eax, [ebx+0x2]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov esi, [ebp-0x1460]
	mov [esp], esi
	call memcpy
	lea ebx, [esi+ebx+0x2]
	mov [ebp-0x1460], ebx
	add dword [ebp-0x13fc], 0x1
	add dword [ebp-0x14b0], 0x8
	mov eax, [ebp-0x13bc]
	sub eax, [ebp-0x13e0]
	cmp eax, [ebp-0x13fc]
	jnz XAnimLoadFile_1550
XAnimLoadFile_1470:
	mov ebx, [ebp-0x13fc]
	add [ebp-0x13e0], ebx
	mov edi, [ebp-0x1408]
	mov esi, [ebp-0x147c]
	jmp XAnimLoadFile_1420
XAnimLoadFile_1430:
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x1464]
	mov [esp], ecx
	call memcpy
	mov ebx, [ebp-0x1464]
	lea edi, [ebx+edi+0x1]
	mov [ebp-0x1464], edi
	jmp XAnimLoadFile_1560
XAnimLoadFile_1450:
	mov edx, eax
	jmp XAnimLoadFile_1570
XAnimLoadFile_990:
	mov eax, [ebp-0x1454]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1450], eax
	jmp XAnimLoadFile_1580
XAnimLoadFile_980:
	mov eax, [ebp-0x145c]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1458], eax
	jmp XAnimLoadFile_1590
XAnimLoadFile_970:
	lea eax, [edi*4]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1448], eax
	jmp XAnimLoadFile_1600
XAnimLoadFile_960:
	lea eax, [esi+esi]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1460], eax
	jmp XAnimLoadFile_1610
XAnimLoadFile_950:
	lea eax, [ebx+ebx]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1464], eax
	jmp XAnimLoadFile_1620
XAnimLoadFile_720:
	mov edx, eax
	add edx, 0x8
XAnimLoadFile_1630:
	mov [esp+0x8], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add [ebp-0x1c], ebx
	jmp XAnimLoadFile_730
XAnimLoadFile_490:
	mov edx, eax
	add edx, 0x8
	mov ebx, [ebp-0x1418]
	jmp XAnimLoadFile_1630
XAnimLoadFile_540:
	mov ebx, 0x1
	jmp XAnimLoadFile_1640
XAnimLoadFile_1660:
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x149c]
	cvttss2si eax, [ebp-0x149c]
XAnimLoadFile_1670:
	mov [ebp-0x2a], ax
	lea ecx, [ebx*4]
	mov esi, [ebp-0x14b8]
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2c]
	mov [edx+ecx], ax
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2a]
	mov [edx+ecx+0x2], ax
	add ebx, 0x1
	cmp [ebp-0x1418], ebx
	jz XAnimLoadFile_1650
XAnimLoadFile_1640:
	mov eax, [ebp-0x1c]
	movzx edx, word [eax]
	mov [ebp-0x20], dx
	add eax, 0x2
	mov [ebp-0x1c], eax
	movsx eax, dx
	mov [ebp-0x2c], dx
	imul eax, eax
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jg XAnimLoadFile_1660
	xor eax, eax
	jmp XAnimLoadFile_1670
XAnimLoadFile_700:
	mov ebx, 0x1
XAnimLoadFile_1680:
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call ConsumeQuat
	lea ecx, [ebx*8]
	mov esi, [ebp-0x14b8]
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2c]
	mov [edx+ecx], ax
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2a]
	mov [edx+ecx+0x2], ax
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x28]
	mov [edx+ecx+0x4], ax
	mov eax, [esi]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x26]
	mov [edx+ecx+0x6], ax
	add ebx, 0x1
	cmp [ebp-0x1418], ebx
	jnz XAnimLoadFile_1680
	mov dword [ebp-0x1438], 0x1
	mov dword [ebp-0x13f4], 0x8
	mov edi, [esi]
	mov [ebp-0x14a8], edi
	mov eax, edi
	jmp XAnimLoadFile_1690
XAnimLoadFile_1710:
	add dword [ebp-0x1438], 0x1
	add dword [ebp-0x13f4], 0x8
	mov esi, [ebp-0x1438]
	cmp [ebp-0x1418], esi
	jz XAnimLoadFile_1700
	mov eax, [ebp-0x14a8]
XAnimLoadFile_1690:
	mov edi, [ebp-0x13f4]
	add edi, [eax+0x4]
	lea esi, [edi-0x8]
	movzx edx, word [edi]
	mov [ebp-0x1440], dx
	movsx ebx, dx
	movsx eax, word [edi-0x8]
	imul ebx, eax
	movsx eax, word [edi+0x2]
	movsx edx, word [esi+0x2]
	imul eax, edx
	add ebx, eax
	movsx ecx, word [edi+0x6]
	movsx eax, word [esi+0x6]
	imul ecx, eax
	movsx eax, word [edi+0x4]
	movsx edx, word [esi+0x4]
	imul eax, edx
	add ecx, eax
	add ebx, ecx
	jns XAnimLoadFile_1710
	neg word [ebp-0x1440]
	movzx ecx, word [ebp-0x1440]
	mov [edi], cx
	neg word [edi+0x2]
	neg word [edi+0x4]
	neg word [edi+0x6]
	mov ebx, [ebp-0x14b8]
	mov ebx, [ebx]
	mov [ebp-0x14a8], ebx
	jmp XAnimLoadFile_1710
XAnimLoadFile_1700:
	mov edx, [ebp-0x14a8]
	jmp XAnimLoadFile_550
XAnimLoadFile_1650:
	mov dword [ebp-0x143c], 0x1
	mov edi, 0x4
	mov eax, [esi]
	mov [ebp-0x14a8], eax
	mov edx, eax
	jmp XAnimLoadFile_1720
XAnimLoadFile_1730:
	add dword [ebp-0x143c], 0x1
	add edi, 0x4
	mov ebx, [ebp-0x143c]
	cmp [ebp-0x1418], ebx
	jz XAnimLoadFile_1700
	mov edx, [ebp-0x14a8]
XAnimLoadFile_1720:
	mov ebx, edi
	add ebx, [edx+0x4]
	movzx esi, word [ebx]
	movsx ecx, si
	movsx eax, word [ebx-0x4]
	imul ecx, eax
	movsx eax, word [ebx+0x2]
	movsx edx, word [ebx-0x2]
	imul eax, edx
	add ecx, eax
	jns XAnimLoadFile_1730
	neg esi
	mov [ebx], si
	neg word [ebx+0x2]
	mov ecx, [ebp-0x14b8]
	mov ecx, [ecx]
	mov [ebp-0x14a8], ecx
	jmp XAnimLoadFile_1730
XAnimLoadFile_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_ha
	mov dword [esp], 0x13
	call Com_PrintError
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	mov dword [ebp-0x147c], 0x0
	jmp XAnimLoadFile_1740
XAnimLoadFile_760:
	xor eax, eax
	jmp XAnimLoadFile_1750
XAnimLoadFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x147c], 0x0
	jmp XAnimLoadFile_1740
XAnimLoadFile_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_no
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x147c], 0x0
	jmp XAnimLoadFile_1740
XAnimLoadFile_1280:
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
XAnimLoadFile_1760:
	mov edx, [ebp-0x13d8]
	mov eax, [ebp+edx*8-0xfa4]
	movzx eax, word [eax]
	add esi, 0x1
	lea edi, [edi+eax+0x1]
	add edx, 0x1
	mov [ebp-0x13d8], edx
	lea eax, [eax+eax*2]
	mov ecx, [ebp-0x145c]
	lea ecx, [eax+ecx+0x3]
	mov [ebp-0x145c], ecx
	cmp ebx, edx
	ja XAnimLoadFile_1760
	jmp XAnimLoadFile_1300
XAnimLoadFile_230:
	xor ecx, ecx
	mov ebx, eax
	sub ebx, edx
	lea edx, [ebp+edx*8-0xba4]
XAnimLoadFile_1770:
	mov eax, [edx]
	movzx eax, word [eax]
	add dword [ebp-0x13ec], 0x1
	mov esi, [ebp-0x13d4]
	lea esi, [esi+eax+0x1]
	mov [ebp-0x13d4], esi
	mov edi, [ebp-0x1454]
	lea eax, [edi+eax*4+0x4]
	mov [ebp-0x1454], eax
	add ecx, 0x1
	add edx, 0x8
	cmp ebx, ecx
	jnz XAnimLoadFile_1770
	mov edx, [ebp-0x147c]
	mov edi, esi
	jmp XAnimLoadFile_270
XAnimLoadFile_850:
	xor ebx, ebx
	sub edx, [ebp-0x13d8]
	mov edi, [ebp-0x13d8]
	lea ecx, [ebp+edi*8-0xfa4]
XAnimLoadFile_1780:
	mov eax, [ecx]
	movzx eax, word [eax]
	add esi, 0x1
	mov edi, [ebp-0x13d0]
	lea edi, [eax+edi+0x1]
	mov [ebp-0x13d0], edi
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x1454]
	lea edi, [eax+edi+0x3]
	mov [ebp-0x1454], edi
	add ebx, 0x1
	add ecx, 0x8
	cmp edx, ebx
	jnz XAnimLoadFile_1780
	jmp XAnimLoadFile_870
XAnimLoadFile_780:
	lea edx, [ebp+edi*8-0xba4]
	mov dword [ebp-0x13d4], 0x0
	mov dword [ebp-0x13ec], 0x0
	mov dword [ebp-0x1454], 0x0
	xor ecx, ecx
	mov ebx, [ebp-0x13c8]
	sub ebx, edi
XAnimLoadFile_1790:
	mov eax, [edx]
	movzx eax, word [eax]
	add dword [ebp-0x13ec], 0x1
	mov esi, [ebp-0x13d4]
	lea esi, [esi+eax+0x1]
	mov [ebp-0x13d4], esi
	mov esi, [ebp-0x1454]
	lea eax, [esi+eax*2+0x2]
	mov [ebp-0x1454], eax
	add ecx, 0x1
	add edx, 0x8
	cmp ecx, ebx
	jnz XAnimLoadFile_1790
	lea edx, [ecx+edi]
	mov dword [ebp-0x1444], 0x0
	jmp XAnimLoadFile_1800


;GetDeltaQuaternions(XAnimDeltaPart*, void* (*)(int), unsigned char const*, unsigned short, unsigned char)
GetDeltaQuaternions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edx, [ebp+0x10]
	movzx edi, word [ebp+0x14]
	movzx ecx, byte [ebp+0x18]
	movzx eax, word [edx]
	mov [ebp-0x1a], ax
	lea ebx, [edx+0x2]
	mov [ebp-0x2c], ebx
	mov ebx, eax
	test ax, ax
	jnz GetDeltaQuaternions_10
	mov edi, [ebp+0x8]
	mov dword [edi+0x4], 0x0
GetDeltaQuaternions_80:
	mov eax, [ebp-0x2c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetDeltaQuaternions_10:
	cmp ax, 0x1
	jz GetDeltaQuaternions_20
	test cl, cl
	jz GetDeltaQuaternions_30
	movzx ecx, ax
	mov [ebp-0x30], ecx
	mov eax, ecx
	add eax, 0xb
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	cmp bx, di
	jb GetDeltaQuaternions_40
	mov eax, [ebp-0x30]
	test eax, eax
	jle GetDeltaQuaternions_50
	xor edx, edx
GetDeltaQuaternions_60:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov [eax+edx+0x8], dl
	add edx, 0x1
	cmp [ebp-0x30], edx
	jnz GetDeltaQuaternions_60
GetDeltaQuaternions_50:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	lea eax, [ebx-0x1]
	mov [edx], ax
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x4]
	mov eax, [ebp-0x30]
	shl eax, 0x2
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebx+0x4], eax
	mov ecx, [ebp-0x30]
	test ecx, ecx
	jg GetDeltaQuaternions_70
GetDeltaQuaternions_150:
	cmp dword [ebp-0x30], 0x1
	jle GetDeltaQuaternions_80
	mov dword [ebp-0x34], 0x1
	mov edi, 0x4
	jmp GetDeltaQuaternions_90
GetDeltaQuaternions_100:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	mov ecx, [ebp-0x30]
	cmp [ebp-0x34], ecx
	jz GetDeltaQuaternions_80
GetDeltaQuaternions_90:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov ebx, edi
	add ebx, [eax+0x4]
	movzx esi, word [ebx]
	movsx ecx, si
	movsx eax, word [ebx-0x4]
	imul ecx, eax
	movsx eax, word [ebx+0x2]
	movsx edx, word [ebx-0x2]
	imul eax, edx
	add ecx, eax
	jns GetDeltaQuaternions_100
	neg esi
	mov [ebx], si
	neg word [ebx+0x2]
	jmp GetDeltaQuaternions_100
GetDeltaQuaternions_30:
	movzx eax, ax
	mov [ebp-0x30], eax
	mov esi, eax
	add esi, esi
	lea eax, [esi+0xa]
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	cmp bx, di
	jb GetDeltaQuaternions_110
	mov edx, [ebp-0x30]
	test edx, edx
	jle GetDeltaQuaternions_50
	xor edx, edx
GetDeltaQuaternions_120:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	mov [eax+edx*2+0x8], dx
	add edx, 0x1
	cmp [ebp-0x30], edx
	jnz GetDeltaQuaternions_120
	jmp GetDeltaQuaternions_50
GetDeltaQuaternions_20:
	movzx ebx, word [edx+0x2]
	mov [ebp-0x1a], bx
	add edx, 0x4
	mov [ebp-0x2c], edx
	movsx eax, bx
	imul eax, eax
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jle GetDeltaQuaternions_130
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si esi, [ebp-0x38]
GetDeltaQuaternions_180:
	mov dword [esp], 0x8
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	mov word [eax], 0x0
	mov eax, [edx+0x4]
	mov [eax+0x4], bx
	mov eax, [edx+0x4]
	mov [eax+0x6], si
	jmp GetDeltaQuaternions_80
GetDeltaQuaternions_40:
	add eax, 0x8
	mov ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov edi, [ebp-0x2c]
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov eax, [ebp-0x30]
	add edi, eax
	mov [ebp-0x2c], edi
	jmp GetDeltaQuaternions_50
GetDeltaQuaternions_110:
	add eax, 0x8
	mov [esp+0x8], esi
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add [ebp-0x2c], esi
	jmp GetDeltaQuaternions_50
GetDeltaQuaternions_70:
	xor esi, esi
	jmp GetDeltaQuaternions_140
GetDeltaQuaternions_160:
	cvtsi2ss xmm0, edi
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si ecx, [ebp-0x3c]
GetDeltaQuaternions_170:
	lea edx, [esi*4]
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	mov eax, [eax+0x4]
	mov [eax+edx], bx
	mov eax, [edi+0x4]
	mov eax, [eax+0x4]
	mov [eax+edx+0x2], cx
	add esi, 0x1
	cmp [ebp-0x30], esi
	jz GetDeltaQuaternions_150
GetDeltaQuaternions_140:
	mov ecx, [ebp-0x2c]
	movzx ebx, word [ecx]
	mov [ebp-0x1a], bx
	add ecx, 0x2
	mov [ebp-0x2c], ecx
	movsx eax, bx
	imul eax, eax
	mov edi, 0x3fff0001
	sub edi, eax
	test edi, edi
	jg GetDeltaQuaternions_160
	xor ecx, ecx
	jmp GetDeltaQuaternions_170
GetDeltaQuaternions_130:
	xor esi, esi
	jmp GetDeltaQuaternions_180


;GetDeltaTranslations(XAnimDeltaPart*, void* (*)(int), unsigned char const*, unsigned short, unsigned char)
GetDeltaTranslations:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x10]
	movzx eax, word [ebp+0x14]
	mov [ebp-0x32], ax
	movzx ecx, byte [ebp+0x18]
	movzx eax, word [edx]
	mov [ebp-0x1c], ax
	lea edi, [edx+0x2]
	mov ebx, eax
	test ax, ax
	jnz GetDeltaTranslations_10
	mov edx, [ebp+0x8]
	mov dword [edx], 0x0
GetDeltaTranslations_90:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetDeltaTranslations_10:
	cmp ax, 0x1
	jz GetDeltaTranslations_20
	test cl, cl
	jz GetDeltaTranslations_30
	movzx esi, ax
	lea eax, [esi+0x23]
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx], eax
	cmp bx, [ebp-0x32]
	jb GetDeltaTranslations_40
	mov ebx, esi
	test esi, esi
	jle GetDeltaTranslations_50
	xor edx, edx
GetDeltaTranslations_60:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [edx+eax+0x20], dl
	add edx, 0x1
	cmp edx, esi
	jnz GetDeltaTranslations_60
GetDeltaTranslations_50:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp+0xc]
	call LoadTrans
	mov edi, eax
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetDeltaTranslations_30:
	movzx esi, ax
	lea eax, [esi+esi]
	mov [ebp-0x30], eax
	add eax, 0x22
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx], eax
	cmp bx, [ebp-0x32]
	jb GetDeltaTranslations_70
	mov ebx, esi
	test esi, esi
	jle GetDeltaTranslations_50
	xor edx, edx
GetDeltaTranslations_80:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [eax+edx*2+0x20], dx
	add edx, 0x1
	cmp edx, esi
	jnz GetDeltaTranslations_80
	jmp GetDeltaTranslations_50
GetDeltaTranslations_20:
	mov eax, [edx+0x2]
	mov [ebp-0x1c], eax
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x2c], xmm0
	mov eax, [edx+0x6]
	mov [ebp-0x1c], eax
	mov esi, [ebp-0x1c]
	mov eax, [edx+0xa]
	mov [ebp-0x1c], eax
	lea edi, [edx+0xe]
	mov ebx, [ebp-0x1c]
	mov dword [esp], 0x10
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov word [eax], 0x0
	mov eax, [edx]
	lea edx, [eax+0x4]
	movss xmm0, dword [ebp-0x2c]
	movss [eax+0x4], xmm0
	mov [edx+0x4], esi
	mov [edx+0x8], ebx
	jmp GetDeltaTranslations_90
GetDeltaTranslations_70:
	add eax, 0x20
	mov ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add edi, [ebp-0x30]
	mov ebx, esi
	jmp GetDeltaTranslations_50
GetDeltaTranslations_40:
	mov ebx, esi
	add eax, 0x20
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add edi, esi
	jmp GetDeltaTranslations_50


;Zero initialized global or static variables of xanim_load_obj:
SECTION .bss
g_simpleQuatBits: resb 0x4
g_partTransArray: resb 0x4
g_partQuatArray: resb 0x4
g_animUser: resb 0x14
g_highPrecisionPart: resb 0x260


;Initialized global or static variables of xanim_load_obj:
SECTION .data
g_highPrecisionParts: dd _cstring_j_ankle_le, _cstring_j_ankle_ri, _cstring_j_clavicle_le, _cstring_j_clavicle_ri, _cstring_j_elbow_le, _cstring_j_elbow_ri, _cstring_j_hip_le, _cstring_j_hip_ri, _cstring_j_knee_le, _cstring_j_knee_ri, _cstring_j_mainroot, _cstring_j_shoulder_le, _cstring_j_shoulder_ri, _cstring_j_spine4, _cstring_j_spinelower, _cstring_j_spineupper, _cstring_j_wrist_le, _cstring_j_wrist_ri, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of xanim_load_obj:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_xanims:		db "xanim/%s",0
_cstring_viewmodel_:		db "viewmodel_",0
_cstring_xanimloadfile:		db "XAnimLoadFile",0
_cstring_end:		db "end",0
_cstring_error_xanim_s_ou:		db "ERROR: xanim ",27h,"%s",27h," out of date (version %d, expecting %d)",0ah,0
_cstring_error_xanim_s_ha:		db "ERROR: xanim ",27h,"%s",27h," has 0 length",0ah,0
_cstring_error_filename_s:		db "ERROR: filename ",27h,"%s",27h," too long",0ah,0
_cstring_error_xanim_s_no:		db "ERROR: xanim ",27h,"%s",27h," not found",0ah,0
_cstring_j_ankle_le:		db "j_ankle_le",0
_cstring_j_ankle_ri:		db "j_ankle_ri",0
_cstring_j_clavicle_le:		db "j_clavicle_le",0
_cstring_j_clavicle_ri:		db "j_clavicle_ri",0
_cstring_j_elbow_le:		db "j_elbow_le",0
_cstring_j_elbow_ri:		db "j_elbow_ri",0
_cstring_j_hip_le:		db "j_hip_le",0
_cstring_j_hip_ri:		db "j_hip_ri",0
_cstring_j_knee_le:		db "j_knee_le",0
_cstring_j_knee_ri:		db "j_knee_ri",0
_cstring_j_mainroot:		db "j_mainroot",0
_cstring_j_shoulder_le:		db "j_shoulder_le",0
_cstring_j_shoulder_ri:		db "j_shoulder_ri",0
_cstring_j_spine4:		db "j_spine4",0
_cstring_j_spinelower:		db "j_spinelower",0
_cstring_j_spineupper:		db "j_spineupper",0
_cstring_j_wrist_le:		db "j_wrist_le",0
_cstring_j_wrist_ri:		db "j_wrist_ri",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_0_00001526:		dd 0x37800080	; 1.5259e-05

