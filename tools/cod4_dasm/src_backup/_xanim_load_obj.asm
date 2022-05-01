;Imports of xanim_load_obj:
	extern _Z14Hunk_UserAllocP8HunkUserii
	extern floorf
	extern memcpy
	extern _Z11Com_sprintfPciPKcz
	extern FS_ReadFile
	extern _Z10I_strnicmpPKcS0_i
	extern _Z15Hunk_UserCreateiPKchhi
	extern SL_GetString_
	extern FS_FreeFile
	extern qsort
	extern memset
	extern SL_GetStringOfSize
	extern strcmp
	extern _Z16Hunk_UserDestroyP8HunkUser
	extern _Z14Com_PrintErroriPKcz

;Exports of xanim_load_obj:
	global g_simpleQuatBits
	global g_partTransArray
	global g_partQuatArray
	global g_animUser
	global g_highPrecisionPart
	global g_highPrecisionParts
	global _Z14XAnimTempAlloci
	global _Z22XAnimCompareTransPartsPKvS0_
	global _Z21XAnimCompareQuatPartsPKvS0_
	global _Z11ConsumeQuatPPKhPs
	global _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	global _Z13XAnimLoadFilePKcPFPviE
	global _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth
	global _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth


SECTION .text


;XAnimTempAlloc(int)
_Z14XAnimTempAlloci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	leave
	ret


;XAnimCompareTransParts(void const*, void const*)
_Z22XAnimCompareTransPartsPKvS0_:
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
_Z22XAnimCompareTransPartsPKvS0__30:
	mov eax, [edi+edx*4-0x4]
	mov eax, [ecx+eax*8]
	test eax, eax
	jz _Z22XAnimCompareTransPartsPKvS0__10
	cmp word [eax], 0x0
	jnz _Z22XAnimCompareTransPartsPKvS0__20
	mov eax, 0x7
_Z22XAnimCompareTransPartsPKvS0__50:
	mov [esi+edx*4-0x4], eax
	add edx, 0x1
	cmp edx, 0x3
	jnz _Z22XAnimCompareTransPartsPKvS0__30
	mov eax, [ebp-0x28]
	mov edx, eax
	sub edx, [ebp-0x24]
	jnz _Z22XAnimCompareTransPartsPKvS0__40
	mov eax, [ebp-0x20]
	movzx edx, byte [ecx+eax*8+0x4]
	movzx eax, byte [ecx+ebx*8+0x4]
	sub edx, eax
_Z22XAnimCompareTransPartsPKvS0__40:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22XAnimCompareTransPartsPKvS0__20:
	cmp byte [eax+0x2], 0x1
	sbb eax, eax
	not eax
	add eax, 0x6
	jmp _Z22XAnimCompareTransPartsPKvS0__50
_Z22XAnimCompareTransPartsPKvS0__10:
	mov al, 0x8
	jmp _Z22XAnimCompareTransPartsPKvS0__50


;XAnimCompareQuatParts(void const*, void const*)
_Z21XAnimCompareQuatPartsPKvS0_:
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
_Z21XAnimCompareQuatPartsPKvS0__30:
	mov ecx, [ebp+ebx*4-0x24]
	mov edx, [esi+ecx*8]
	mov eax, ecx
	shr eax, 0x3
	movsx eax, byte [eax+edi]
	and ecx, 0x7
	sar eax, cl
	test al, 0x1
	jz _Z21XAnimCompareQuatPartsPKvS0__10
	test edx, edx
	jz _Z21XAnimCompareQuatPartsPKvS0__20
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x1
_Z21XAnimCompareQuatPartsPKvS0__50:
	mov [ebp+ebx*4-0x2c], eax
	add ebx, 0x1
	cmp ebx, 0x3
	jnz _Z21XAnimCompareQuatPartsPKvS0__30
	mov eax, [ebp-0x28]
	mov edx, eax
	sub edx, [ebp-0x24]
	jnz _Z21XAnimCompareQuatPartsPKvS0__40
	mov eax, [ebp-0x20]
	movzx edx, byte [esi+eax*8+0x4]
	mov ecx, [ebp-0x2c]
	movzx eax, byte [esi+ecx*8+0x4]
	sub edx, eax
_Z21XAnimCompareQuatPartsPKvS0__40:
	mov eax, edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21XAnimCompareQuatPartsPKvS0__10:
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x2
	jmp _Z21XAnimCompareQuatPartsPKvS0__50
_Z21XAnimCompareQuatPartsPKvS0__20:
	xor eax, eax
	jmp _Z21XAnimCompareQuatPartsPKvS0__50


;ConsumeQuat(unsigned char const**, short*)
_Z11ConsumeQuatPPKhPs:
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
	jle _Z11ConsumeQuatPPKhPs_10
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
_Z11ConsumeQuatPPKhPs_10:
	xor eax, eax
	mov [esi+0x6], ax
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LoadTrans(void* (*)(int), unsigned char const*, unsigned short, XAnimPartTrans*)
_Z9LoadTransPFPviEPKhtP14XAnimPartTrans:
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
	jz _Z9LoadTransPFPviEPKhtP14XAnimPartTrans_10
	lea eax, [esi+0x10]
	movss xmm0, dword [_float_0_00392157]
_Z9LoadTransPFPviEPKhtP14XAnimPartTrans_30:
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
	jz _Z9LoadTransPFPviEPKhtP14XAnimPartTrans_20
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
_Z9LoadTransPFPviEPKhtP14XAnimPartTrans_10:
	lea eax, [esi+0x10]
	movss xmm0, dword [_float_0_00001526]
	jmp _Z9LoadTransPFPviEPKhtP14XAnimPartTrans_30
_Z9LoadTransPFPviEPKhtP14XAnimPartTrans_20:
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
_Z13XAnimLoadFilePKcPFPviE:
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
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z13XAnimLoadFilePKcPFPviE_10
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_ReadFile
	cmp eax, 0x0
	jl _Z13XAnimLoadFilePKcPFPviE_20
	jz _Z13XAnimLoadFilePKcPFPviE_30
	mov ebx, [ebp-0x24]
	movzx eax, word [ebx]
	mov [ebp-0x20], ax
	movsx esi, ax
	cmp ax, 0x11
	jnz _Z13XAnimLoadFilePKcPFPviE_40
	mov dword [esp+0x8], 0xa
	mov dword [esp+0x4], _cstring_viewmodel_
	mov [esp], edi
	call _Z10I_strnicmpPKcS0_i
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
	jz _Z13XAnimLoadFilePKcPFPviE_50
	add ecx, 0x1
_Z13XAnimLoadFilePKcPFPviE_50:
	mov [ebp-0x1472], cx
	mov eax, ecx
	cmp word [ebp-0x1472], 0x100
	setbe byte [ebp-0x1469]
	sub eax, 0x1
	mov edi, [ebp-0x147c]
	mov [edi+0xe], ax
	test ax, ax
	jnz _Z13XAnimLoadFilePKcPFPviE_60
	pxor xmm1, xmm1
	mov edx, [ebp-0x147c]
	movss [edx+0x2c], xmm1
	cmp byte [edx+0x11], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_70
_Z13XAnimLoadFilePKcPFPviE_280:
	cmp word [ebp-0x148a], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_80
_Z13XAnimLoadFilePKcPFPviE_290:
	mov esi, [ebp-0x1470]
	mov [ebp-0x13e8], esi
	mov dword [ebp-0x1468], 0x0
_Z13XAnimLoadFilePKcPFPviE_350:
	mov dword [esp+0x10], 0xb
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_xanimloadfile
	mov dword [esp], 0x20000
	call _Z15Hunk_UserCreateiPKchhi
	mov [g_animUser], eax
	cmp word [ebp-0x148a], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_90
	mov esi, [ebp-0x13e8]
_Z13XAnimLoadFilePKcPFPviE_650:
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
	jg _Z13XAnimLoadFilePKcPFPviE_100
_Z13XAnimLoadFilePKcPFPviE_450:
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
	jz _Z13XAnimLoadFilePKcPFPviE_110
	xor eax, eax
_Z13XAnimLoadFilePKcPFPviE_120:
	mov [ebp+eax*2-0x2a4], ax
	add eax, 0x1
	cmp [ebp-0x1478], eax
	ja _Z13XAnimLoadFilePKcPFPviE_120
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
	mov dword [esp+0xc], _Z21XAnimCompareQuatPartsPKvS0_
	mov dword [esp+0x8], 0x2
	mov ecx, [ebp-0x1478]
	mov [esp+0x4], ecx
	lea ebx, [ebp-0x2a4]
	mov [esp], ebx
	call qsort
	mov edi, [g_partQuatArray]
	mov esi, [g_simpleQuatBits]
	xor ebx, ebx
	jmp _Z13XAnimLoadFilePKcPFPviE_130
_Z13XAnimLoadFilePKcPFPviE_150:
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x2
_Z13XAnimLoadFilePKcPFPviE_400:
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	jbe _Z13XAnimLoadFilePKcPFPviE_140
_Z13XAnimLoadFilePKcPFPviE_130:
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
	jz _Z13XAnimLoadFilePKcPFPviE_150
	test edx, edx
	jz _Z13XAnimLoadFilePKcPFPviE_160
	cmp word [edx], 0x1
	sbb eax, eax
	and eax, 0x2
	add eax, 0x1
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	ja _Z13XAnimLoadFilePKcPFPviE_130
_Z13XAnimLoadFilePKcPFPviE_140:
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
	mov dword [esp+0xc], _Z22XAnimCompareTransPartsPKvS0_
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x1478]
	mov [esp+0x4], eax
	mov [esp], ebx
	call qsort
	mov esi, [g_partTransArray]
	xor ebx, ebx
	jmp _Z13XAnimLoadFilePKcPFPviE_170
_Z13XAnimLoadFilePKcPFPviE_200:
	cmp byte [eax+0x2], 0x1
	sbb eax, eax
	not eax
	add eax, 0x6
_Z13XAnimLoadFilePKcPFPviE_390:
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	jbe _Z13XAnimLoadFilePKcPFPviE_180
_Z13XAnimLoadFilePKcPFPviE_170:
	movzx ecx, word [ebp+ebx*2-0x3a4]
	mov eax, [ebp+ecx*8-0x7a4]
	mov edx, [ebp+ecx*8-0x7a0]
	mov [ebp+ebx*8-0xfa4], eax
	mov [ebp+ebx*8-0xfa0], edx
	mov eax, [esi+ecx*8]
	test eax, eax
	jz _Z13XAnimLoadFilePKcPFPviE_190
	cmp word [eax], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_200
	mov eax, 0x7
	add ebx, 0x1
	mov [ebp+eax*4-0x64], ebx
	cmp [ebp-0x1478], ebx
	ja _Z13XAnimLoadFilePKcPFPviE_170
_Z13XAnimLoadFilePKcPFPviE_180:
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
	jb _Z13XAnimLoadFilePKcPFPviE_210
	mov edx, edi
	mov dword [ebp-0x1454], 0x0
	mov dword [ebp-0x13d4], 0x0
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x13ec], 0x0
_Z13XAnimLoadFilePKcPFPviE_1800:
	mov ecx, [ebp-0x147c]
	movzx eax, byte [ecx+0x14]
	add eax, [ebp-0x13c8]
	cmp edx, eax
	jae _Z13XAnimLoadFilePKcPFPviE_220
_Z13XAnimLoadFilePKcPFPviE_820:
	cmp byte [ebp-0x1469], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_230
	xor esi, esi
	mov edi, eax
	sub edi, edx
	lea ecx, [ebp+edx*8-0xba4]
	jmp _Z13XAnimLoadFilePKcPFPviE_240
_Z13XAnimLoadFilePKcPFPviE_260:
	lea ebx, [edx+ebx+0x1]
	mov [ebp-0x13ec], ebx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*4+0x4]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ecx, 0x8
	cmp edi, esi
	jz _Z13XAnimLoadFilePKcPFPviE_250
_Z13XAnimLoadFilePKcPFPviE_240:
	mov eax, [ecx]
	movzx edx, word [eax]
	mov ebx, [ebp-0x13ec]
	add ebx, 0x1
	cmp edx, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_260
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
	jnz _Z13XAnimLoadFilePKcPFPviE_240
_Z13XAnimLoadFilePKcPFPviE_250:
	mov edx, [ebp-0x147c]
	mov edi, [ebp-0x13d4]
	jmp _Z13XAnimLoadFilePKcPFPviE_270
_Z13XAnimLoadFilePKcPFPviE_60:
	movzx eax, ax
	cvtsi2ss xmm0, eax
	mov eax, [ebp-0x147c]
	movss xmm1, dword [eax+0x28]
	divss xmm1, xmm0
	mov edx, eax
	movss [edx+0x2c], xmm1
	cmp byte [edx+0x11], 0x0
	jz _Z13XAnimLoadFilePKcPFPviE_280
_Z13XAnimLoadFilePKcPFPviE_70:
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
	call _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov [esp+0x8], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov ebx, [ebp-0x147c]
	mov eax, [ebx+0x54]
	mov [esp], eax
	call _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth
	mov [ebp-0x1470], eax
	cmp word [ebp-0x148a], 0x0
	jz _Z13XAnimLoadFilePKcPFPviE_290
_Z13XAnimLoadFilePKcPFPviE_80:
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
_Z13XAnimLoadFilePKcPFPviE_300:
	lea eax, [edx*8]
	mov [esi+eax+0x4], dl
	mov [ebp+eax-0x7a0], dl
	add edx, 0x1
	cmp [ebp-0x1478], edx
	ja _Z13XAnimLoadFilePKcPFPviE_300
	mov dword [ebp-0x13b0], 0x0
	mov dword [ebp-0x13f0], g_highPrecisionPart
_Z13XAnimLoadFilePKcPFPviE_340:
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
	jz _Z13XAnimLoadFilePKcPFPviE_310
	xor esi, esi
	mov edi, 0x12
_Z13XAnimLoadFilePKcPFPviE_330:
	lea ebx, [esi+edi]
	shr ebx, 1
	mov eax, [ebx*4+g_highPrecisionParts]
	mov [esp+0x4], eax
	mov eax, [ebp-0x13e8]
	mov [esp], eax
	call strcmp
	cmp eax, 0x0
	jl _Z13XAnimLoadFilePKcPFPviE_320
	jle _Z13XAnimLoadFilePKcPFPviE_310
	lea esi, [ebx+0x1]
	cmp esi, edi
	jb _Z13XAnimLoadFilePKcPFPviE_330
_Z13XAnimLoadFilePKcPFPviE_410:
	xor eax, eax
_Z13XAnimLoadFilePKcPFPviE_420:
	mov edx, [ebp-0x13f0]
	mov [edx], eax
	mov ecx, [ebp-0x1490]
	add [ebp-0x13e8], ecx
	add dword [ebp-0x13b0], 0x1
	add edx, 0x4
	mov [ebp-0x13f0], edx
	mov ebx, [ebp-0x13b0]
	cmp [ebp-0x1478], ebx
	ja _Z13XAnimLoadFilePKcPFPviE_340
	mov esi, [ebp-0x1470]
	mov [ebp-0x1468], esi
	jmp _Z13XAnimLoadFilePKcPFPviE_350
_Z13XAnimLoadFilePKcPFPviE_1110:
	mov edi, [ebp-0x14ac]
	mov [ebp-0x13dc], edi
	mov edx, [ebp-0x147c]
	mov ecx, edi
_Z13XAnimLoadFilePKcPFPviE_1070:
	movzx eax, byte [edx+0x19]
	add eax, [ebp-0x13b4]
	mov [ebp-0x14bc], eax
	cmp eax, ecx
	jbe _Z13XAnimLoadFilePKcPFPviE_360
	lea ecx, [ebp+ecx*8-0xfa0]
	xor ebx, ebx
	mov esi, eax
	sub esi, [ebp-0x13dc]
_Z13XAnimLoadFilePKcPFPviE_370:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_370
	add [ebp-0x13dc], ebx
	mov edx, [ebp-0x147c]
_Z13XAnimLoadFilePKcPFPviE_360:
	movzx eax, byte [edx+0x1a]
	add eax, [ebp-0x14bc]
	cmp eax, [ebp-0x13dc]
	jbe _Z13XAnimLoadFilePKcPFPviE_110
	mov ebx, [ebp-0x13dc]
	lea ecx, [ebp+ebx*8-0xfa4]
	xor ebx, ebx
	mov edx, eax
	sub edx, [ebp-0x13dc]
_Z13XAnimLoadFilePKcPFPviE_380:
	movzx eax, byte [ecx+0x4]
	mov esi, [ebp-0x1464]
	mov [esi+ebx], al
	add ebx, 0x1
	add ecx, 0x8
	cmp edx, ebx
	jnz _Z13XAnimLoadFilePKcPFPviE_380
_Z13XAnimLoadFilePKcPFPviE_110:
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z16Hunk_UserDestroyP8HunkUser
	mov dword [g_animUser], 0x0
_Z13XAnimLoadFilePKcPFPviE_1740:
	mov eax, [ebp-0x147c]
	add esp, 0x14dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13XAnimLoadFilePKcPFPviE_190:
	mov al, 0x8
	jmp _Z13XAnimLoadFilePKcPFPviE_390
_Z13XAnimLoadFilePKcPFPviE_160:
	xor eax, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_400
_Z13XAnimLoadFilePKcPFPviE_320:
	mov edi, ebx
	cmp esi, edi
	jb _Z13XAnimLoadFilePKcPFPviE_330
	jmp _Z13XAnimLoadFilePKcPFPviE_410
_Z13XAnimLoadFilePKcPFPviE_310:
	mov eax, 0x1
	jmp _Z13XAnimLoadFilePKcPFPviE_420
_Z13XAnimLoadFilePKcPFPviE_100:
	mov dword [ebp-0x1428], 0x0
_Z13XAnimLoadFilePKcPFPviE_440:
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
	jz _Z13XAnimLoadFilePKcPFPviE_430
	cvtsi2ss xmm1, edx
	movzx eax, ax
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
_Z13XAnimLoadFilePKcPFPviE_430:
	movss [ebx+0x4], xmm1
	add dword [ebp-0x1428], 0x1
	add ebx, 0x8
	mov edi, [ebp-0x1428]
	cmp [ebp-0x142c], edi
	jnz _Z13XAnimLoadFilePKcPFPviE_440
	jmp _Z13XAnimLoadFilePKcPFPviE_450
_Z13XAnimLoadFilePKcPFPviE_90:
	movzx edi, word [ebp-0x1472]
	mov [ebp-0x141c], di
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1419], al
	mov dword [ebp-0x13ac], 0x0
	lea edx, [ebp-0x13a4]
	mov [ebp-0x14b8], edx
	mov eax, [ebp-0x13ac]
	mov ecx, [ebp-0x13ac]
_Z13XAnimLoadFilePKcPFPviE_580:
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
	jz _Z13XAnimLoadFilePKcPFPviE_460
	cmp word [ebp-0x143e], 0x1
	jz _Z13XAnimLoadFilePKcPFPviE_470
	cmp byte [ebp-0x1419], 0x0
	jz _Z13XAnimLoadFilePKcPFPviE_480
	movzx eax, word [ebp-0x143e]
	mov [ebp-0x1418], eax
	mov dword [esp+0x8], 0x4
	add eax, 0xb
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov [ebp-0x14a8], eax
	mov edx, [ebp-0x14b8]
	mov [edx], eax
	movzx ecx, word [ebp-0x143e]
	cmp [ebp-0x141c], cx
	ja _Z13XAnimLoadFilePKcPFPviE_490
	mov eax, [ebp-0x1418]
	test eax, eax
	jg _Z13XAnimLoadFilePKcPFPviE_500
_Z13XAnimLoadFilePKcPFPviE_730:
	mov eax, esi
	test al, al
	jz _Z13XAnimLoadFilePKcPFPviE_510
	mov edx, [ebp-0x14b8]
	mov ebx, [edx]
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x1418]
	shl eax, 0x2
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
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
	jle _Z13XAnimLoadFilePKcPFPviE_520
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1498]
	cvttss2si eax, [ebp-0x1498]
_Z13XAnimLoadFilePKcPFPviE_1340:
	mov [ebp-0x2a], ax
	mov ecx, edi
	test cl, cl
	jz _Z13XAnimLoadFilePKcPFPviE_530
	movzx edx, word [ebp-0x2c]
	neg edx
	mov [ebp-0x2c], dx
	neg eax
	mov [ebp-0x2a], ax
_Z13XAnimLoadFilePKcPFPviE_910:
	mov ebx, [ebp-0x14b8]
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [eax], dx
	mov eax, [ebx]
	mov edx, [eax+0x4]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x2], ax
	cmp dword [ebp-0x1418], 0x1
	jg _Z13XAnimLoadFilePKcPFPviE_540
	mov edi, [ebp-0x14b8]
	mov edi, [edi]
	mov [ebp-0x14a8], edi
	mov edx, edi
	jmp _Z13XAnimLoadFilePKcPFPviE_550
_Z13XAnimLoadFilePKcPFPviE_460:
	mov edx, [ebp-0x14b8]
	mov dword [edx], 0x0
_Z13XAnimLoadFilePKcPFPviE_710:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_560
	mov dword [ecx], 0x0
	mov ecx, [ebp-0x1434]
_Z13XAnimLoadFilePKcPFPviE_1330:
	add dword [ebp-0x13ac], 0x1
	add dword [ebp-0x14b8], 0x8
	mov [ebp-0x13e8], ecx
	mov ebx, [ebp-0x13ac]
	cmp [ebp-0x1478], ebx
	jbe _Z13XAnimLoadFilePKcPFPviE_570
_Z13XAnimLoadFilePKcPFPviE_640:
	mov eax, ebx
	mov ecx, ebx
	jmp _Z13XAnimLoadFilePKcPFPviE_580
_Z13XAnimLoadFilePKcPFPviE_560:
	cmp ax, 0x1
	jz _Z13XAnimLoadFilePKcPFPviE_590
	cmp byte [ebp-0x1419], 0x0
	jz _Z13XAnimLoadFilePKcPFPviE_600
	mov dword [esp+0x8], 0x4
	movzx esi, ax
	lea eax, [esi+0x23]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov ecx, [ebp-0x1430]
	mov [ecx], eax
	cmp [ebp-0x141c], bx
	ja _Z13XAnimLoadFilePKcPFPviE_610
	mov ebx, esi
	test esi, esi
	jle _Z13XAnimLoadFilePKcPFPviE_620
	xor edx, edx
_Z13XAnimLoadFilePKcPFPviE_630:
	mov edi, [ebp-0x1430]
	mov eax, [edi]
	mov [edx+eax+0x20], dl
	add edx, 0x1
	cmp edx, esi
	jnz _Z13XAnimLoadFilePKcPFPviE_630
_Z13XAnimLoadFilePKcPFPviE_620:
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, _Z14XAnimTempAlloci
	call _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
_Z13XAnimLoadFilePKcPFPviE_680:
	add dword [ebp-0x13ac], 0x1
	add dword [ebp-0x14b8], 0x8
	mov [ebp-0x13e8], ecx
	mov ebx, [ebp-0x13ac]
	cmp [ebp-0x1478], ebx
	ja _Z13XAnimLoadFilePKcPFPviE_640
_Z13XAnimLoadFilePKcPFPviE_570:
	mov esi, ecx
	jmp _Z13XAnimLoadFilePKcPFPviE_650
_Z13XAnimLoadFilePKcPFPviE_600:
	movzx esi, ax
	lea edi, [esi+esi]
	mov dword [esp+0x8], 0x4
	lea eax, [edi+0x22]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp-0x1430]
	mov [edx], eax
	cmp [ebp-0x141c], bx
	ja _Z13XAnimLoadFilePKcPFPviE_660
	mov ebx, esi
	test esi, esi
	jle _Z13XAnimLoadFilePKcPFPviE_620
	xor edx, edx
_Z13XAnimLoadFilePKcPFPviE_670:
	mov edi, [ebp-0x1430]
	mov eax, [edi]
	mov [eax+edx*2+0x20], dx
	add edx, 0x1
	cmp edx, esi
	jnz _Z13XAnimLoadFilePKcPFPviE_670
	mov edx, [ebp-0x1430]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, [ebp-0x1434]
	mov eax, _Z14XAnimTempAlloci
	call _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_680
_Z13XAnimLoadFilePKcPFPviE_510:
	mov esi, [ebp-0x14b8]
	mov ebx, [esi]
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x1418]
	shl eax, 0x3
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov [ebx+0x4], eax
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call _Z11ConsumeQuatPPKhPs
	mov eax, edi
	test al, al
	jz _Z13XAnimLoadFilePKcPFPviE_690
	movzx edx, word [ebp-0x2c]
	neg edx
	mov [ebp-0x2c], dx
	neg word [ebp-0x2a]
	neg word [ebp-0x28]
	neg word [ebp-0x26]
_Z13XAnimLoadFilePKcPFPviE_900:
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
	jg _Z13XAnimLoadFilePKcPFPviE_700
	mov eax, [ebp-0x14b8]
	mov eax, [eax]
	mov [ebp-0x14a8], eax
	mov edx, eax
_Z13XAnimLoadFilePKcPFPviE_550:
	movzx eax, word [ebp-0x143e]
	sub eax, 0x1
	mov [edx], ax
	jmp _Z13XAnimLoadFilePKcPFPviE_710
_Z13XAnimLoadFilePKcPFPviE_480:
	movzx ebx, word [ebp-0x143e]
	mov [ebp-0x1418], ebx
	add ebx, ebx
	mov dword [esp+0x8], 0x4
	lea eax, [ebx+0xa]
	mov [esp+0x4], eax
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov [ebp-0x14a8], eax
	mov edx, [ebp-0x14b8]
	mov [edx], eax
	movzx ecx, word [ebp-0x143e]
	cmp [ebp-0x141c], cx
	ja _Z13XAnimLoadFilePKcPFPviE_720
	mov eax, [ebp-0x1418]
	test eax, eax
	jle _Z13XAnimLoadFilePKcPFPviE_730
	xor edx, edx
_Z13XAnimLoadFilePKcPFPviE_740:
	mov ebx, [ebp-0x14b8]
	mov eax, [ebx]
	mov [eax+edx*2+0x8], dx
	add edx, 0x1
	cmp edx, [ebp-0x1418]
	jnz _Z13XAnimLoadFilePKcPFPviE_740
	jmp _Z13XAnimLoadFilePKcPFPviE_730
_Z13XAnimLoadFilePKcPFPviE_470:
	mov ecx, esi
	test cl, cl
	jz _Z13XAnimLoadFilePKcPFPviE_750
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
	jle _Z13XAnimLoadFilePKcPFPviE_760
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1494]
	cvttss2si eax, [ebp-0x1494]
_Z13XAnimLoadFilePKcPFPviE_1750:
	mov [ebp-0x2a], ax
	mov edx, edi
	test dl, dl
	jz _Z13XAnimLoadFilePKcPFPviE_770
	neg word [ebp-0x2c]
	neg eax
	mov [ebp-0x2a], ax
_Z13XAnimLoadFilePKcPFPviE_770:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov [ebp-0x14a8], eax
	mov ecx, [ebp-0x14b8]
	mov [ecx], eax
	movzx eax, word [ebp-0x2c]
	mov ebx, [ebp-0x14a8]
	mov [ebx+0x4], ax
	mov edx, [ecx]
	movzx eax, word [ebp-0x2a]
	mov [edx+0x6], ax
_Z13XAnimLoadFilePKcPFPviE_930:
	mov esi, [ebp-0x14b8]
	mov eax, [esi]
	mov word [eax], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_710
_Z13XAnimLoadFilePKcPFPviE_210:
	cmp byte [ebp-0x1469], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_780
	lea ebx, [ebp+edi*8-0xba4]
	mov dword [ebp-0x13ec], 0x0
	mov dword [ebp-0x1444], 0x0
	mov dword [ebp-0x1454], 0x0
	xor esi, esi
	mov eax, [ebp-0x13c8]
	sub eax, edi
	mov [ebp-0x14a4], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_790
_Z13XAnimLoadFilePKcPFPviE_810:
	lea ecx, [edx+ecx+0x1]
	mov [ebp-0x13ec], ecx
	mov eax, [ebp-0x1454]
	lea edx, [eax+edx*2+0x2]
	mov [ebp-0x1454], edx
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x14a4], esi
	jz _Z13XAnimLoadFilePKcPFPviE_800
_Z13XAnimLoadFilePKcPFPviE_790:
	mov eax, [ebx]
	movzx edx, word [eax]
	mov ecx, [ebp-0x13ec]
	add ecx, 0x1
	cmp edx, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_810
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
	jnz _Z13XAnimLoadFilePKcPFPviE_790
_Z13XAnimLoadFilePKcPFPviE_800:
	mov eax, [ebp-0x14a4]
	lea edx, [edi+eax]
	mov dword [ebp-0x13d4], 0x0
	mov ecx, [ebp-0x147c]
	movzx eax, byte [ecx+0x14]
	add eax, [ebp-0x13c8]
	cmp edx, eax
	jb _Z13XAnimLoadFilePKcPFPviE_820
_Z13XAnimLoadFilePKcPFPviE_220:
	mov edx, ecx
	mov edi, [ebp-0x13d4]
_Z13XAnimLoadFilePKcPFPviE_270:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_830
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
_Z13XAnimLoadFilePKcPFPviE_1300:
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
	jbe _Z13XAnimLoadFilePKcPFPviE_840
	cmp byte [ebp-0x1469], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_850
	xor edi, edi
	sub edx, [ebp-0x13d8]
	mov ecx, [ebp-0x13d8]
	lea ebx, [ebp+ecx*8-0xfa4]
	jmp _Z13XAnimLoadFilePKcPFPviE_860
_Z13XAnimLoadFilePKcPFPviE_880:
	lea esi, [ecx+esi+0x1]
	lea eax, [ecx+ecx*2]
	mov ecx, [ebp-0x1454]
	lea ecx, [eax+ecx+0x3]
	mov [ebp-0x1454], ecx
	add edi, 0x1
	add ebx, 0x8
	cmp edx, edi
	jz _Z13XAnimLoadFilePKcPFPviE_870
_Z13XAnimLoadFilePKcPFPviE_860:
	mov eax, [ebx]
	movzx ecx, word [eax]
	add esi, 0x1
	cmp ecx, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_880
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
	jnz _Z13XAnimLoadFilePKcPFPviE_860
_Z13XAnimLoadFilePKcPFPviE_870:
	mov ecx, [ebp-0x13d0]
	jmp _Z13XAnimLoadFilePKcPFPviE_890
_Z13XAnimLoadFilePKcPFPviE_690:
	movzx edx, word [ebp-0x2c]
	jmp _Z13XAnimLoadFilePKcPFPviE_900
_Z13XAnimLoadFilePKcPFPviE_530:
	movzx edx, word [ebp-0x2c]
	jmp _Z13XAnimLoadFilePKcPFPviE_910
_Z13XAnimLoadFilePKcPFPviE_750:
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call _Z11ConsumeQuatPPKhPs
	mov eax, edi
	test al, al
	jz _Z13XAnimLoadFilePKcPFPviE_920
	neg word [ebp-0x2c]
	neg word [ebp-0x2a]
	neg word [ebp-0x28]
	neg word [ebp-0x26]
_Z13XAnimLoadFilePKcPFPviE_920:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0xc
	mov eax, [g_animUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
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
	jmp _Z13XAnimLoadFilePKcPFPviE_930
_Z13XAnimLoadFilePKcPFPviE_500:
	xor edx, edx
_Z13XAnimLoadFilePKcPFPviE_940:
	mov ecx, [ebp-0x14b8]
	mov eax, [ecx]
	mov [eax+edx+0x8], dl
	add edx, 0x1
	cmp [ebp-0x1418], edx
	jnz _Z13XAnimLoadFilePKcPFPviE_940
	jmp _Z13XAnimLoadFilePKcPFPviE_730
_Z13XAnimLoadFilePKcPFPviE_40:
	mov [esp], ebx
	call FS_FreeFile
	mov dword [esp+0x10], 0x11
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_ou
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x147c], 0x0
	mov eax, [ebp-0x147c]
	add esp, 0x14dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13XAnimLoadFilePKcPFPviE_840:
	mov ecx, edi
_Z13XAnimLoadFilePKcPFPviE_890:
	mov edx, [ebp-0x147c]
	movzx eax, byte [edx+0x19]
	lea edx, [eax+ecx]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x144c]
	add edi, eax
	movzx eax, byte [ebp-0x147d]
	mov ebx, edx
	add ebx, eax
	jnz _Z13XAnimLoadFilePKcPFPviE_950
	mov dword [ebp-0x1464], 0x0
_Z13XAnimLoadFilePKcPFPviE_1620:
	mov eax, [ebp-0x147c]
	mov [eax+0x4], bx
	mov edx, [ebp-0x1464]
	mov [eax+0x34], edx
	test esi, esi
	jnz _Z13XAnimLoadFilePKcPFPviE_960
	mov dword [ebp-0x1460], 0x0
_Z13XAnimLoadFilePKcPFPviE_1610:
	mov ecx, [ebp-0x147c]
	mov [ecx+0x6], si
	mov ebx, [ebp-0x1460]
	mov [ecx+0x38], ebx
	test edi, edi
	jnz _Z13XAnimLoadFilePKcPFPviE_970
	mov dword [ebp-0x1448], 0x0
_Z13XAnimLoadFilePKcPFPviE_1600:
	mov esi, [ebp-0x147c]
	mov [esi+0x8], di
	mov edi, [ebp-0x1448]
	mov [esi+0x3c], edi
	mov eax, [ebp-0x145c]
	test eax, eax
	jnz _Z13XAnimLoadFilePKcPFPviE_980
	mov dword [ebp-0x1458], 0x0
_Z13XAnimLoadFilePKcPFPviE_1590:
	movzx edx, word [ebp-0x145c]
	mov eax, [ebp-0x147c]
	mov [eax+0xa], dx
	mov ecx, [ebp-0x1458]
	mov [eax+0x44], ecx
	mov edi, [ebp-0x1454]
	test edi, edi
	jnz _Z13XAnimLoadFilePKcPFPviE_990
	mov dword [ebp-0x1450], 0x0
_Z13XAnimLoadFilePKcPFPviE_1580:
	mov ebx, [ebp-0x1454]
	mov esi, [ebp-0x147c]
	mov [esi+0x20], ebx
	mov edi, [ebp-0x1450]
	mov [esi+0x40], edi
	mov word [esi+0xc], 0x0
	mov dword [esi+0x48], 0x0
	cmp byte [ebp-0x1469], 0x0
	jz _Z13XAnimLoadFilePKcPFPviE_1000
	mov esi, [ebp-0x1444]
	test esi, esi
	jnz _Z13XAnimLoadFilePKcPFPviE_1010
_Z13XAnimLoadFilePKcPFPviE_1270:
	xor eax, eax
_Z13XAnimLoadFilePKcPFPviE_1130:
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
	jb _Z13XAnimLoadFilePKcPFPviE_1020
	mov [ebp-0x13e0], ebx
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x14]
	add eax, [ebp-0x13c0]
	mov [ebp-0x13bc], eax
	cmp [ebp-0x13e0], eax
	jb _Z13XAnimLoadFilePKcPFPviE_1030
_Z13XAnimLoadFilePKcPFPviE_1420:
	movzx eax, byte [esi+0x15]
	add eax, [ebp-0x13bc]
	mov [ebp-0x14c0], eax
	mov edx, [ebp-0x13e0]
	cmp eax, edx
	ja _Z13XAnimLoadFilePKcPFPviE_1040
	movzx eax, byte [esi+0x16]
	add eax, [ebp-0x14c0]
	cmp eax, [ebp-0x13e0]
	ja _Z13XAnimLoadFilePKcPFPviE_1050
_Z13XAnimLoadFilePKcPFPviE_1520:
	mov edx, esi
_Z13XAnimLoadFilePKcPFPviE_1540:
	movzx eax, byte [edx+0x17]
	movzx ecx, al
	mov [ebp-0x13b8], ecx
	test al, al
	jnz _Z13XAnimLoadFilePKcPFPviE_1060
	mov dword [ebp-0x13dc], 0x0
_Z13XAnimLoadFilePKcPFPviE_1250:
	mov edx, [ebp-0x147c]
	movzx eax, byte [edx+0x18]
	add eax, [ebp-0x13b8]
	mov [ebp-0x13b4], eax
	mov ecx, [ebp-0x13dc]
	cmp eax, ecx
	jbe _Z13XAnimLoadFilePKcPFPviE_1070
	movzx ebx, byte [ebp-0x1469]
	mov [ebp-0x1421], bl
	mov [ebp-0x1410], edi
	lea esi, [ebp+ecx*8-0xfa0]
	mov [ebp-0x1400], esi
	mov [ebp-0x13e4], ecx
	mov [ebp-0x14ac], eax
	mov edi, esi
_Z13XAnimLoadFilePKcPFPviE_1120:
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
_Z13XAnimLoadFilePKcPFPviE_1080:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1080
	add edx, 0x20
	mov [ebp-0x1420], edx
	cmp byte [ebp-0x1421], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_1090
	cmp dword [ebp-0x14bc], 0x3f
	ja _Z13XAnimLoadFilePKcPFPviE_1100
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
_Z13XAnimLoadFilePKcPFPviE_1160:
	add dword [ebp-0x13e4], 0x1
	add dword [ebp-0x1448], 0x18
	add dword [ebp-0x1400], 0x8
	mov esi, [ebp-0x13e4]
	cmp [ebp-0x14ac], esi
	jz _Z13XAnimLoadFilePKcPFPviE_1110
	mov edi, [ebp-0x1400]
	jmp _Z13XAnimLoadFilePKcPFPviE_1120
_Z13XAnimLoadFilePKcPFPviE_1010:
	mov eax, [ebp-0x1444]
	mov [esp], eax
	call dword [ebp+0xc]
	jmp _Z13XAnimLoadFilePKcPFPviE_1130
_Z13XAnimLoadFilePKcPFPviE_1100:
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
	jz _Z13XAnimLoadFilePKcPFPviE_1140
	mov ecx, edi
	xor ebx, ebx
_Z13XAnimLoadFilePKcPFPviE_1150:
	movzx eax, word [ecx]
	mov esi, [ebp-0x1460]
	mov [esi+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp edx, ebx
	jnz _Z13XAnimLoadFilePKcPFPviE_1150
_Z13XAnimLoadFilePKcPFPviE_1140:
	add edx, edx
	mov edi, [ebp-0x14bc]
	mov ecx, [ebp-0x1420]
	movzx eax, word [ecx+edi*2]
	mov ebx, [ebp-0x1460]
	mov [ebx+edx], ax
	lea edx, [ebx+edx+0x2]
	mov [ebp-0x1460], edx
	jmp _Z13XAnimLoadFilePKcPFPviE_1160
_Z13XAnimLoadFilePKcPFPviE_1090:
	mov [esp+0x8], esi
	mov [esp+0x4], edx
	mov eax, [ebp-0x1464]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1464]
	mov ecx, [ebp-0x14bc]
	lea edx, [edx+ecx+0x1]
	mov [ebp-0x1464], edx
	jmp _Z13XAnimLoadFilePKcPFPviE_1160
_Z13XAnimLoadFilePKcPFPviE_1060:
	movzx ebx, byte [ebp-0x1469]
	mov [ebp-0x1422], bl
	mov [ebp-0x140c], edi
	mov dword [ebp-0x13dc], 0x0
	mov edx, [ebp-0x13dc]
_Z13XAnimLoadFilePKcPFPviE_1210:
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
_Z13XAnimLoadFilePKcPFPviE_1170:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1170
	add ecx, 0x20
	mov [ebp-0x13cc], ecx
	cmp byte [ebp-0x1422], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_1180
	cmp esi, 0x3f
	ja _Z13XAnimLoadFilePKcPFPviE_1190
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
_Z13XAnimLoadFilePKcPFPviE_1260:
	add dword [ebp-0x13dc], 0x1
	add dword [ebp-0x1448], 0x18
	mov esi, [ebp-0x13dc]
	cmp [ebp-0x13b8], esi
	jbe _Z13XAnimLoadFilePKcPFPviE_1200
_Z13XAnimLoadFilePKcPFPviE_1240:
	mov edx, esi
	jmp _Z13XAnimLoadFilePKcPFPviE_1210
_Z13XAnimLoadFilePKcPFPviE_1190:
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
	jz _Z13XAnimLoadFilePKcPFPviE_1220
	mov ecx, edi
	xor ebx, ebx
_Z13XAnimLoadFilePKcPFPviE_1230:
	movzx eax, word [ecx]
	mov edi, [ebp-0x1460]
	mov [edi+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp edx, ebx
	jnz _Z13XAnimLoadFilePKcPFPviE_1230
_Z13XAnimLoadFilePKcPFPviE_1220:
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
	ja _Z13XAnimLoadFilePKcPFPviE_1240
_Z13XAnimLoadFilePKcPFPviE_1200:
	mov edi, [ebp-0x140c]
	jmp _Z13XAnimLoadFilePKcPFPviE_1250
_Z13XAnimLoadFilePKcPFPviE_1180:
	lea eax, [esi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov eax, [ebp-0x1464]
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x1464]
	lea esi, [edx+esi+0x1]
	mov [ebp-0x1464], esi
	jmp _Z13XAnimLoadFilePKcPFPviE_1260
_Z13XAnimLoadFilePKcPFPviE_1000:
	mov ebx, [ebp-0x1444]
	test ebx, ebx
	jz _Z13XAnimLoadFilePKcPFPviE_1270
	mov eax, [ebp-0x1444]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	jmp _Z13XAnimLoadFilePKcPFPviE_1130
_Z13XAnimLoadFilePKcPFPviE_830:
	cmp byte [ebp-0x1469], 0x0
	jnz _Z13XAnimLoadFilePKcPFPviE_1280
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_1290
_Z13XAnimLoadFilePKcPFPviE_1310:
	lea esi, [edx+ecx+0x1]
_Z13XAnimLoadFilePKcPFPviE_1320:
	add dword [ebp-0x13d8], 0x1
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x145c]
	lea edx, [eax+edx+0x3]
	mov [ebp-0x145c], edx
	cmp ebx, [ebp-0x13d8]
	jbe _Z13XAnimLoadFilePKcPFPviE_1300
_Z13XAnimLoadFilePKcPFPviE_1290:
	mov edx, [ebp-0x13d8]
	mov eax, [ebp+edx*8-0xfa4]
	movzx edx, word [eax]
	lea ecx, [esi+0x1]
	cmp edx, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_1310
	lea eax, [edx-0x1]
	shr eax, 0x8
	lea esi, [eax+ecx+0x2]
	mov ecx, [ebp-0x1444]
	lea ecx, [edx+ecx+0x1]
	mov [ebp-0x1444], ecx
	jmp _Z13XAnimLoadFilePKcPFPviE_1320
_Z13XAnimLoadFilePKcPFPviE_590:
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
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp-0x1430]
	mov [edx], eax
	mov word [eax], 0x0
	mov eax, [edx]
	lea edx, [eax+0x4]
	mov [eax+0x4], esi
	mov [edx+0x4], edi
	mov [edx+0x8], ebx
	mov ecx, [ebp-0x1434]
	jmp _Z13XAnimLoadFilePKcPFPviE_1330
_Z13XAnimLoadFilePKcPFPviE_520:
	xor eax, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1340
_Z13XAnimLoadFilePKcPFPviE_660:
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
	mov eax, _Z14XAnimTempAlloci
	call _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_680
_Z13XAnimLoadFilePKcPFPviE_610:
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
	mov eax, _Z14XAnimTempAlloci
	call _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	mov [ebp-0x1434], eax
	mov ecx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_680
_Z13XAnimLoadFilePKcPFPviE_1020:
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1412], al
	mov [ebp-0x1404], edi
	mov dword [ebp-0x13f8], 0x0
	lea edx, [ebp+ebx*8-0xba4]
	mov [ebp-0x14b4], edx
	mov ecx, edx
_Z13XAnimLoadFilePKcPFPviE_1400:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1350
	cmp edi, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_1360
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
	jz _Z13XAnimLoadFilePKcPFPviE_1370
	mov ecx, esi
	xor ebx, ebx
_Z13XAnimLoadFilePKcPFPviE_1380:
	movzx eax, word [ecx]
	mov edx, [ebp-0x1460]
	mov [edx+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp [ebp-0x14c4], ebx
	jnz _Z13XAnimLoadFilePKcPFPviE_1380
	mov edx, [ebp-0x14c4]
_Z13XAnimLoadFilePKcPFPviE_1500:
	add edx, edx
	movzx eax, word [esi+edi*2]
	mov ecx, [ebp-0x1460]
	mov [ecx+edx], ax
	lea edx, [ecx+edx+0x2]
	mov [ebp-0x1460], edx
_Z13XAnimLoadFilePKcPFPviE_1490:
	add dword [ebp-0x13f8], 0x1
	add dword [ebp-0x14b4], 0x8
	mov eax, [ebp-0x13c0]
	sub eax, [ebp-0x13c4]
	cmp eax, [ebp-0x13f8]
	jz _Z13XAnimLoadFilePKcPFPviE_1390
_Z13XAnimLoadFilePKcPFPviE_1410:
	mov ecx, [ebp-0x14b4]
	jmp _Z13XAnimLoadFilePKcPFPviE_1400
_Z13XAnimLoadFilePKcPFPviE_1360:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1410
_Z13XAnimLoadFilePKcPFPviE_1390:
	mov ebx, [ebp-0x13f8]
	add ebx, [ebp-0x13c4]
	mov [ebp-0x13e0], ebx
	mov edi, [ebp-0x1404]
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x14]
	add eax, [ebp-0x13c0]
	mov [ebp-0x13bc], eax
	cmp [ebp-0x13e0], eax
	jae _Z13XAnimLoadFilePKcPFPviE_1420
_Z13XAnimLoadFilePKcPFPviE_1030:
	movzx eax, byte [ebp-0x1469]
	mov [ebp-0x1411], al
	mov [ebp-0x1408], edi
	mov dword [ebp-0x13fc], 0x0
	mov edx, [ebp-0x13e0]
	lea edx, [ebp+edx*8-0xba4]
	mov [ebp-0x14b0], edx
	mov ecx, edx
_Z13XAnimLoadFilePKcPFPviE_1480:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1430
	cmp edi, 0x3f
	jbe _Z13XAnimLoadFilePKcPFPviE_1440
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
	jz _Z13XAnimLoadFilePKcPFPviE_1450
	mov ecx, esi
	xor ebx, ebx
_Z13XAnimLoadFilePKcPFPviE_1460:
	movzx eax, word [ecx]
	mov edx, [ebp-0x1460]
	mov [edx+ebx*2], ax
	add ebx, 0x1
	add ecx, 0x200
	cmp [ebp-0x14c4], ebx
	jnz _Z13XAnimLoadFilePKcPFPviE_1460
	mov edx, [ebp-0x14c4]
_Z13XAnimLoadFilePKcPFPviE_1570:
	add edx, edx
	movzx eax, word [esi+edi*2]
	mov ecx, [ebp-0x1460]
	mov [ecx+edx], ax
	lea edx, [ecx+edx+0x2]
	mov [ebp-0x1460], edx
_Z13XAnimLoadFilePKcPFPviE_1560:
	add dword [ebp-0x13fc], 0x1
	add dword [ebp-0x14b0], 0x8
	mov eax, [ebp-0x13bc]
	sub eax, [ebp-0x13e0]
	cmp eax, [ebp-0x13fc]
	jz _Z13XAnimLoadFilePKcPFPviE_1470
_Z13XAnimLoadFilePKcPFPviE_1550:
	mov ecx, [ebp-0x14b0]
	jmp _Z13XAnimLoadFilePKcPFPviE_1480
_Z13XAnimLoadFilePKcPFPviE_1350:
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x1464]
	mov [esp], ecx
	call memcpy
	mov ebx, [ebp-0x1464]
	lea edi, [ebx+edi+0x1]
	mov [ebp-0x1464], edi
	jmp _Z13XAnimLoadFilePKcPFPviE_1490
_Z13XAnimLoadFilePKcPFPviE_1370:
	mov edx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1500
_Z13XAnimLoadFilePKcPFPviE_1040:
	lea ecx, [ebp+edx*8-0xba4]
	mov esi, eax
	mov ebx, [ebp-0x1460]
_Z13XAnimLoadFilePKcPFPviE_1510:
	mov eax, [ecx]
	mov eax, [eax+0x4]
	mov [ebx], eax
	add edx, 0x1
	add ebx, 0x4
	mov [ebp-0x1460], ebx
	add ecx, 0x8
	cmp esi, edx
	jnz _Z13XAnimLoadFilePKcPFPviE_1510
	mov [ebp-0x13e0], esi
	mov esi, [ebp-0x147c]
	movzx eax, byte [esi+0x16]
	add eax, [ebp-0x14c0]
	cmp eax, [ebp-0x13e0]
	jbe _Z13XAnimLoadFilePKcPFPviE_1520
_Z13XAnimLoadFilePKcPFPviE_1050:
	mov edx, [ebp-0x13e0]
	lea ecx, [ebp+edx*8-0xba4]
	xor ebx, ebx
	sub eax, edx
	mov [ebp-0x14c8], eax
	mov esi, [ebp-0x1460]
_Z13XAnimLoadFilePKcPFPviE_1530:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1530
	mov edx, [ebp-0x147c]
	jmp _Z13XAnimLoadFilePKcPFPviE_1540
_Z13XAnimLoadFilePKcPFPviE_1440:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1550
_Z13XAnimLoadFilePKcPFPviE_1470:
	mov ebx, [ebp-0x13fc]
	add [ebp-0x13e0], ebx
	mov edi, [ebp-0x1408]
	mov esi, [ebp-0x147c]
	jmp _Z13XAnimLoadFilePKcPFPviE_1420
_Z13XAnimLoadFilePKcPFPviE_1430:
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x1464]
	mov [esp], ecx
	call memcpy
	mov ebx, [ebp-0x1464]
	lea edi, [ebx+edi+0x1]
	mov [ebp-0x1464], edi
	jmp _Z13XAnimLoadFilePKcPFPviE_1560
_Z13XAnimLoadFilePKcPFPviE_1450:
	mov edx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1570
_Z13XAnimLoadFilePKcPFPviE_990:
	mov eax, [ebp-0x1454]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1450], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1580
_Z13XAnimLoadFilePKcPFPviE_980:
	mov eax, [ebp-0x145c]
	add eax, eax
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1458], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1590
_Z13XAnimLoadFilePKcPFPviE_970:
	lea eax, [edi*4]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1448], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1600
_Z13XAnimLoadFilePKcPFPviE_960:
	lea eax, [esi+esi]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1460], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1610
_Z13XAnimLoadFilePKcPFPviE_950:
	lea eax, [ebx+ebx]
	mov [esp], eax
	call dword [ebp+0xc]
	mov [ebp-0x1464], eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1620
_Z13XAnimLoadFilePKcPFPviE_720:
	mov edx, eax
	add edx, 0x8
_Z13XAnimLoadFilePKcPFPviE_1630:
	mov [esp+0x8], ebx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add [ebp-0x1c], ebx
	jmp _Z13XAnimLoadFilePKcPFPviE_730
_Z13XAnimLoadFilePKcPFPviE_490:
	mov edx, eax
	add edx, 0x8
	mov ebx, [ebp-0x1418]
	jmp _Z13XAnimLoadFilePKcPFPviE_1630
_Z13XAnimLoadFilePKcPFPviE_540:
	mov ebx, 0x1
	jmp _Z13XAnimLoadFilePKcPFPviE_1640
_Z13XAnimLoadFilePKcPFPviE_1660:
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x149c]
	cvttss2si eax, [ebp-0x149c]
_Z13XAnimLoadFilePKcPFPviE_1670:
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
	jz _Z13XAnimLoadFilePKcPFPviE_1650
_Z13XAnimLoadFilePKcPFPviE_1640:
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
	jg _Z13XAnimLoadFilePKcPFPviE_1660
	xor eax, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1670
_Z13XAnimLoadFilePKcPFPviE_700:
	mov ebx, 0x1
_Z13XAnimLoadFilePKcPFPviE_1680:
	lea edx, [ebp-0x2c]
	lea eax, [ebp-0x1c]
	call _Z11ConsumeQuatPPKhPs
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1680
	mov dword [ebp-0x1438], 0x1
	mov dword [ebp-0x13f4], 0x8
	mov edi, [esi]
	mov [ebp-0x14a8], edi
	mov eax, edi
	jmp _Z13XAnimLoadFilePKcPFPviE_1690
_Z13XAnimLoadFilePKcPFPviE_1710:
	add dword [ebp-0x1438], 0x1
	add dword [ebp-0x13f4], 0x8
	mov esi, [ebp-0x1438]
	cmp [ebp-0x1418], esi
	jz _Z13XAnimLoadFilePKcPFPviE_1700
	mov eax, [ebp-0x14a8]
_Z13XAnimLoadFilePKcPFPviE_1690:
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
	jns _Z13XAnimLoadFilePKcPFPviE_1710
	neg word [ebp-0x1440]
	movzx ecx, word [ebp-0x1440]
	mov [edi], cx
	neg word [edi+0x2]
	neg word [edi+0x4]
	neg word [edi+0x6]
	mov ebx, [ebp-0x14b8]
	mov ebx, [ebx]
	mov [ebp-0x14a8], ebx
	jmp _Z13XAnimLoadFilePKcPFPviE_1710
_Z13XAnimLoadFilePKcPFPviE_1700:
	mov edx, [ebp-0x14a8]
	jmp _Z13XAnimLoadFilePKcPFPviE_550
_Z13XAnimLoadFilePKcPFPviE_1650:
	mov dword [ebp-0x143c], 0x1
	mov edi, 0x4
	mov eax, [esi]
	mov [ebp-0x14a8], eax
	mov edx, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1720
_Z13XAnimLoadFilePKcPFPviE_1730:
	add dword [ebp-0x143c], 0x1
	add edi, 0x4
	mov ebx, [ebp-0x143c]
	cmp [ebp-0x1418], ebx
	jz _Z13XAnimLoadFilePKcPFPviE_1700
	mov edx, [ebp-0x14a8]
_Z13XAnimLoadFilePKcPFPviE_1720:
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
	jns _Z13XAnimLoadFilePKcPFPviE_1730
	neg esi
	mov [ebx], si
	neg word [ebx+0x2]
	mov ecx, [ebp-0x14b8]
	mov ecx, [ecx]
	mov [ebp-0x14a8], ecx
	jmp _Z13XAnimLoadFilePKcPFPviE_1730
_Z13XAnimLoadFilePKcPFPviE_30:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_ha
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FS_FreeFile
	mov dword [ebp-0x147c], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_1740
_Z13XAnimLoadFilePKcPFPviE_760:
	xor eax, eax
	jmp _Z13XAnimLoadFilePKcPFPviE_1750
_Z13XAnimLoadFilePKcPFPviE_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x147c], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_1740
_Z13XAnimLoadFilePKcPFPviE_20:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_xanim_s_no
	mov dword [esp], 0x13
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x147c], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_1740
_Z13XAnimLoadFilePKcPFPviE_1280:
	mov dword [ebp-0x13d8], 0x0
	mov dword [ebp-0x145c], 0x0
_Z13XAnimLoadFilePKcPFPviE_1760:
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
	ja _Z13XAnimLoadFilePKcPFPviE_1760
	jmp _Z13XAnimLoadFilePKcPFPviE_1300
_Z13XAnimLoadFilePKcPFPviE_230:
	xor ecx, ecx
	mov ebx, eax
	sub ebx, edx
	lea edx, [ebp+edx*8-0xba4]
_Z13XAnimLoadFilePKcPFPviE_1770:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1770
	mov edx, [ebp-0x147c]
	mov edi, esi
	jmp _Z13XAnimLoadFilePKcPFPviE_270
_Z13XAnimLoadFilePKcPFPviE_850:
	xor ebx, ebx
	sub edx, [ebp-0x13d8]
	mov edi, [ebp-0x13d8]
	lea ecx, [ebp+edi*8-0xfa4]
_Z13XAnimLoadFilePKcPFPviE_1780:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1780
	jmp _Z13XAnimLoadFilePKcPFPviE_870
_Z13XAnimLoadFilePKcPFPviE_780:
	lea edx, [ebp+edi*8-0xba4]
	mov dword [ebp-0x13d4], 0x0
	mov dword [ebp-0x13ec], 0x0
	mov dword [ebp-0x1454], 0x0
	xor ecx, ecx
	mov ebx, [ebp-0x13c8]
	sub ebx, edi
_Z13XAnimLoadFilePKcPFPviE_1790:
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
	jnz _Z13XAnimLoadFilePKcPFPviE_1790
	lea edx, [ecx+edi]
	mov dword [ebp-0x1444], 0x0
	jmp _Z13XAnimLoadFilePKcPFPviE_1800


;GetDeltaQuaternions(XAnimDeltaPart*, void* (*)(int), unsigned char const*, unsigned short, unsigned char)
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth:
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
	jnz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_10
	mov edi, [ebp+0x8]
	mov dword [edi+0x4], 0x0
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_80:
	mov eax, [ebp-0x2c]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_10:
	cmp ax, 0x1
	jz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_20
	test cl, cl
	jz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_30
	movzx ecx, ax
	mov [ebp-0x30], ecx
	mov eax, ecx
	add eax, 0xb
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	cmp bx, di
	jb _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_40
	mov eax, [ebp-0x30]
	test eax, eax
	jle _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50
	xor edx, edx
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_60:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x4]
	mov [eax+edx+0x8], dl
	add edx, 0x1
	cmp [ebp-0x30], edx
	jnz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_60
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50:
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
	jg _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_70
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_150:
	cmp dword [ebp-0x30], 0x1
	jle _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_80
	mov dword [ebp-0x34], 0x1
	mov edi, 0x4
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_90
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_100:
	add dword [ebp-0x34], 0x1
	add edi, 0x4
	mov ecx, [ebp-0x30]
	cmp [ebp-0x34], ecx
	jz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_80
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_90:
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
	jns _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_100
	neg esi
	mov [ebx], si
	neg word [ebx+0x2]
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_100
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_30:
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
	jb _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_110
	mov edx, [ebp-0x30]
	test edx, edx
	jle _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50
	xor edx, edx
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_120:
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	mov [eax+edx*2+0x8], dx
	add edx, 0x1
	cmp [ebp-0x30], edx
	jnz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_120
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_20:
	movzx ebx, word [edx+0x2]
	mov [ebp-0x1a], bx
	add edx, 0x4
	mov [ebp-0x2c], edx
	movsx eax, bx
	imul eax, eax
	mov edx, 0x3fff0001
	sub edx, eax
	test edx, edx
	jle _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_130
	cvtsi2ss xmm0, edx
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x38]
	cvttss2si esi, [ebp-0x38]
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_180:
	mov dword [esp], 0x8
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	mov word [eax], 0x0
	mov eax, [edx+0x4]
	mov [eax+0x4], bx
	mov eax, [edx+0x4]
	mov [eax+0x6], si
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_80
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_40:
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
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_110:
	add eax, 0x8
	mov [esp+0x8], esi
	mov ecx, [ebp-0x2c]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	add [ebp-0x2c], esi
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_50
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_70:
	xor esi, esi
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_140
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_160:
	cvtsi2ss xmm0, edi
	sqrtss xmm0, xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x3c]
	cvttss2si ecx, [ebp-0x3c]
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_170:
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
	jz _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_150
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_140:
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
	jg _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_160
	xor ecx, ecx
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_170
_Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_130:
	xor esi, esi
	jmp _Z19GetDeltaQuaternionsP14XAnimDeltaPartPFPviEPKhth_180


;GetDeltaTranslations(XAnimDeltaPart*, void* (*)(int), unsigned char const*, unsigned short, unsigned char)
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth:
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
	jnz _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_10
	mov edx, [ebp+0x8]
	mov dword [edx], 0x0
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_90:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_10:
	cmp ax, 0x1
	jz _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_20
	test cl, cl
	jz _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_30
	movzx esi, ax
	lea eax, [esi+0x23]
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx], eax
	cmp bx, [ebp-0x32]
	jb _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_40
	mov ebx, esi
	test esi, esi
	jle _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50
	xor edx, edx
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_60:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [edx+eax+0x20], dl
	add edx, 0x1
	cmp edx, esi
	jnz _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_60
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	mov ecx, ebx
	mov edx, edi
	mov eax, [ebp+0xc]
	call _Z9LoadTransPFPviEPKhtP14XAnimPartTrans
	mov edi, eax
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_30:
	movzx esi, ax
	lea eax, [esi+esi]
	mov [ebp-0x30], eax
	add eax, 0x22
	mov [esp], eax
	call dword [ebp+0xc]
	mov edx, [ebp+0x8]
	mov [edx], eax
	cmp bx, [ebp-0x32]
	jb _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_70
	mov ebx, esi
	test esi, esi
	jle _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50
	xor edx, edx
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_80:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [eax+edx*2+0x20], dx
	add edx, 0x1
	cmp edx, esi
	jnz _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_80
	jmp _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_20:
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
	jmp _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_90
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_70:
	add eax, 0x20
	mov ecx, [ebp-0x30]
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add edi, [ebp-0x30]
	mov ebx, esi
	jmp _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50
_Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_40:
	mov ebx, esi
	add eax, 0x20
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	add edi, esi
	jmp _Z20GetDeltaTranslationsP14XAnimDeltaPartPFPviEPKhth_50


;Initialized global or static variables of xanim_load_obj:
SECTION .data
g_highPrecisionParts: dd _cstring_j_ankle_le, _cstring_j_ankle_ri, _cstring_j_clavicle_le, _cstring_j_clavicle_ri, _cstring_j_elbow_le, _cstring_j_elbow_ri, _cstring_j_hip_le, _cstring_j_hip_ri, _cstring_j_knee_le, _cstring_j_knee_ri, _cstring_j_mainroot, _cstring_j_shoulder_le, _cstring_j_shoulder_ri, _cstring_j_spine4, _cstring_j_spinelower, _cstring_j_spineupper, _cstring_j_wrist_le, _cstring_j_wrist_ri, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of xanim_load_obj:
SECTION .rdata


;Zero initialized global or static variables of xanim_load_obj:
SECTION .bss
g_simpleQuatBits: resb 0x4
g_partTransArray: resb 0x4
g_partQuatArray: resb 0x4
g_animUser: resb 0x14
g_highPrecisionPart: resb 0x260


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

