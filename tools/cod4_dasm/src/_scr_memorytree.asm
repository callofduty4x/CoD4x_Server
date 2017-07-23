;Imports of scr_memorytree:
	extern Com_Printf
	extern Scr_TerminalError
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection

;Exports of scr_memorytree:
	global scrMemTreeGlob
	global MT_GetSubTreeSize
	global MT_Realloc
	global MT_DumpTree
	global MT_FreeIndex
	global MT_AllocIndex
	global MT_Free
	global MT_Init
	global MT_Alloc
	global scrMemTreePub


SECTION .text


;MT_GetSubTreeSize(int)
MT_GetSubTreeSize:
MT_GetSubTreeSize_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	test eax, eax
	jz MT_GetSubTreeSize_10
	lea eax, [eax+eax*2]
	shl eax, 0x2
	lea edx, [eax+scrMemTreeGlob]
	mov [ebp-0x28], edx
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	test ax, ax
	jz MT_GetSubTreeSize_20
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea edi, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_30
	mov dword [ebp-0x24], 0x0
MT_GetSubTreeSize_160:
	movzx eax, word [edi+0x2]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_40
	xor eax, eax
MT_GetSubTreeSize_150:
	mov edx, [ebp-0x24]
	lea eax, [edx+eax+0x1]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x2]
	movzx edx, ax
	test ax, ax
	jz MT_GetSubTreeSize_50
MT_GetSubTreeSize_110:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea edi, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_60
	mov dword [ebp-0x20], 0x0
MT_GetSubTreeSize_140:
	movzx eax, word [edi+0x2]
	movzx edx, ax
	test ax, ax
	jz MT_GetSubTreeSize_70
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea edi, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_80
	mov dword [ebp-0x1c], 0x0
MT_GetSubTreeSize_180:
	movzx eax, word [edi+0x2]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_90
	xor eax, eax
MT_GetSubTreeSize_170:
	mov edx, [ebp-0x1c]
	lea eax, [edx+eax+0x1]
	jmp MT_GetSubTreeSize_100
MT_GetSubTreeSize_20:
	mov dword [ebp-0x2c], 0x0
	mov edx, [ebp-0x28]
	movzx eax, word [edx+0x2]
	movzx edx, ax
	test ax, ax
	jnz MT_GetSubTreeSize_110
MT_GetSubTreeSize_50:
	xor eax, eax
MT_GetSubTreeSize_120:
	mov edx, [ebp-0x2c]
	lea eax, [edx+eax+0x1]
MT_GetSubTreeSize_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MT_GetSubTreeSize_70:
	xor eax, eax
MT_GetSubTreeSize_100:
	mov edx, [ebp-0x20]
	lea eax, [edx+eax+0x1]
	jmp MT_GetSubTreeSize_120
MT_GetSubTreeSize_60:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize_130
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize_130
	lea eax, [esi+eax+0x1]
	mov [ebp-0x20], eax
	jmp MT_GetSubTreeSize_140
MT_GetSubTreeSize_40:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize_130
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize_130
	lea eax, [esi+eax+0x1]
	jmp MT_GetSubTreeSize_150
MT_GetSubTreeSize_30:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize_130
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize_130
	lea eax, [esi+eax+0x1]
	mov [ebp-0x24], eax
	jmp MT_GetSubTreeSize_160
MT_GetSubTreeSize_90:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize_130
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize_130
	lea eax, [esi+eax+0x1]
	jmp MT_GetSubTreeSize_170
MT_GetSubTreeSize_80:
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize_130
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize_130
	lea eax, [esi+eax+0x1]
	mov [ebp-0x1c], eax
	jmp MT_GetSubTreeSize_180


;MT_Realloc(int, int)
MT_Realloc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp ebx, 0xffff
	jg MT_Realloc_10
	lea ecx, [ebx+0xb]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	sar edx, 1
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx-0x1]
	cmp eax, 0xff
	jg MT_Realloc_20
	movzx ebx, byte [eax+scrMemTreeGlob+0xc0200]
MT_Realloc_60:
	cmp esi, 0xffff
	jg MT_Realloc_30
MT_Realloc_50:
	lea ecx, [esi+0xb]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	sar edx, 1
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx-0x1]
	cmp eax, 0xff
	jg MT_Realloc_40
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	cmp ebx, eax
	setge al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MT_Realloc_20:
	sar eax, 0x8
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	lea ebx, [eax+0x8]
	cmp esi, 0xffff
	jle MT_Realloc_50
MT_Realloc_30:
	call MT_DumpTree
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_mt_getsize_max_a
	mov dword [esp+0x4], _cstring_s_failed_memory_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp], _cstring_failed_memory_al
	call Scr_TerminalError
	xor eax, eax
	cmp ebx, eax
	setge al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MT_Realloc_40:
	sar eax, 0x8
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	add eax, 0x8
	cmp ebx, eax
	setge al
	movzx eax, al
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
MT_Realloc_10:
	call MT_DumpTree
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_mt_getsize_max_a
	mov dword [esp+0x4], _cstring_s_failed_memory_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp], _cstring_failed_memory_al
	call Scr_TerminalError
	xor ebx, ebx
	jmp MT_Realloc_60


;MT_DumpTree()
MT_DumpTree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	xor edi, edi
	mov dword [ebp-0x1c], scrMemTreeGlob
	jmp MT_DumpTree_10
MT_DumpTree_30:
	xor edx, edx
	xor eax, eax
MT_DumpTree_40:
	mov [esp+0x14], eax
	mov eax, 0x1
	mov ecx, edi
	shl eax, cl
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_d_subtree_has_d_
	mov dword [esp], 0x17
	call Com_Printf
	add edi, 0x1
	add dword [ebp-0x1c], 0x2
	cmp edi, 0x11
	jz MT_DumpTree_20
MT_DumpTree_10:
	mov edx, [ebp-0x1c]
	movzx eax, word [edx+0xc0300]
	movzx edx, ax
	test ax, ax
	jz MT_DumpTree_30
	lea eax, [edx+edx*2]
	shl eax, 0x2
	lea ebx, [eax+scrMemTreeGlob]
	movzx eax, word [eax+scrMemTreeGlob]
	call MT_GetSubTreeSize
	mov esi, eax
	movzx eax, word [ebx+0x2]
	call MT_GetSubTreeSize
	lea edx, [esi+eax+0x1]
	mov eax, edx
	mov ecx, edi
	shl eax, cl
	jmp MT_DumpTree_40
MT_DumpTree_20:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x17
	call Com_Printf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MT_FreeIndex(unsigned int, int)
MT_FreeIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, [ebp+0xc]
	cmp ebx, 0xffff
	jg MT_FreeIndex_10
	lea ecx, [ebx+0xb]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	sar edx, 1
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx-0x1]
	cmp eax, 0xff
	jg MT_FreeIndex_20
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	mov [ebp-0x64], eax
	mov dword [ebp-0x68], 0x1
	mov ecx, eax
	shl dword [ebp-0x68], cl
MT_FreeIndex_180:
	mov dword [esp], 0x5
	call Sys_EnterCriticalSection
	cmp dword [ebp-0x64], 0x10
	jz MT_FreeIndex_30
MT_FreeIndex_90:
	mov ecx, [ebp-0x68]
	xor ecx, [ebp+0x8]
	mov ebx, [ebp-0x64]
	lea eax, [ebx+ebx+0xc0300]
	lea edi, [eax+scrMemTreeGlob]
	mov [ebp-0x60], edi
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	test ax, ax
	jz MT_FreeIndex_40
	cmp ecx, edx
	jz MT_FreeIndex_50
	test ecx, ecx
	jz MT_FreeIndex_30
	xor ebx, ebx
	mov esi, 0x10000
	jmp MT_FreeIndex_60
MT_FreeIndex_70:
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x60], eax
	sub ebx, esi
	mov edx, eax
MT_FreeIndex_80:
	movzx eax, word [edx]
	movzx edx, ax
	test ax, ax
	jz MT_FreeIndex_30
	cmp ecx, edx
	jz MT_FreeIndex_50
	cmp ebx, ecx
	jz MT_FreeIndex_30
MT_FreeIndex_60:
	sar esi, 1
	cmp ebx, ecx
	jg MT_FreeIndex_70
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x60], eax
	add ebx, esi
	mov edx, eax
	jmp MT_FreeIndex_80
MT_FreeIndex_20:
	sar eax, 0x8
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	add eax, 0x8
	mov [ebp-0x64], eax
	mov dword [ebp-0x68], 0x1
	mov ecx, eax
	shl dword [ebp-0x68], cl
	mov dword [esp], 0x5
	call Sys_EnterCriticalSection
	cmp dword [ebp-0x64], 0x10
	jnz MT_FreeIndex_90
MT_FreeIndex_30:
	mov ebx, [ebp-0x64]
MT_FreeIndex_40:
	mov ecx, [ebp+0x8]
	mov [ebp-0x58], ecx
	lea eax, [ebx+ebx+0xc0300]
	lea edi, [eax+scrMemTreeGlob]
	mov [ebp-0x34], edi
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	mov [ebp-0x38], edx
	test ax, ax
	jz MT_FreeIndex_100
	mov ecx, 0x10000
	sub ecx, [ebp+0x8]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ebx, al
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_FreeIndex_110
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_FreeIndex_110:
	mov eax, 0x1
	shl eax, cl
	lea eax, [edx+eax]
	mov [ebp-0x54], eax
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x10000
	jmp MT_FreeIndex_120
MT_FreeIndex_160:
	mov ebx, [ebp-0x38]
	lea eax, [ebx+ebx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x34], eax
	mov edi, [ebp-0x4c]
	add [ebp-0x50], edi
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x38], ecx
	test ax, ax
	jz MT_FreeIndex_130
MT_FreeIndex_120:
	mov ecx, 0x10000
	sub ecx, [ebp-0x38]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ebx, al
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_FreeIndex_140
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_FreeIndex_140:
	mov eax, 0x1
	shl eax, cl
	lea eax, [edx+eax]
	cmp [ebp-0x54], eax
	jg MT_FreeIndex_150
	sar dword [ebp-0x4c], 1
	mov edi, [ebp-0x50]
	cmp [ebp+0x8], edi
	jge MT_FreeIndex_160
	mov edx, [ebp-0x38]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x34], eax
	mov ecx, [ebp-0x4c]
	sub [ebp-0x50], ecx
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x38], ecx
	test ax, ax
	jnz MT_FreeIndex_120
MT_FreeIndex_130:
	mov ebx, edx
	jmp MT_FreeIndex_170
MT_FreeIndex_100:
	mov ebx, edi
MT_FreeIndex_170:
	movzx edi, word [ebp+0x8]
	mov [ebx], di
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov word [eax+scrMemTreeGlob], 0x0
	mov word [eax+scrMemTreeGlob+0x2], 0x0
MT_FreeIndex_270:
	mov dword [esp], 0x5
	call Sys_LeaveCriticalSection
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MT_FreeIndex_10:
	call MT_DumpTree
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_mt_getsize_max_a
	mov dword [esp+0x4], _cstring_s_failed_memory_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp], _cstring_failed_memory_al
	call Scr_TerminalError
	mov dword [ebp-0x64], 0x0
	mov dword [ebp-0x68], 0x1
	jmp MT_FreeIndex_180
MT_FreeIndex_50:
	lea eax, [ecx+ecx*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob+0x8]
	mov [ebp-0x48], edx
	mov ecx, [eax+scrMemTreeGlob+0x4]
	mov [ebp-0x2c], ecx
	movzx ebx, word [eax+scrMemTreeGlob+0x2]
	mov [ebp-0x2e], bx
	movzx eax, word [eax+scrMemTreeGlob]
	mov [ebp-0x30], ax
	jmp MT_FreeIndex_190
MT_FreeIndex_210:
	movzx edi, word [ebp-0x2e]
	mov eax, [ebp-0x60]
	mov [eax], di
	cmp word [ebp-0x2e], 0x0
	jz MT_FreeIndex_200
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x60], eax
MT_FreeIndex_230:
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov esi, [eax+scrMemTreeGlob+0x8]
	mov ebx, [eax+scrMemTreeGlob+0x4]
	movzx edx, word [eax+scrMemTreeGlob+0x2]
	movzx ecx, word [eax+scrMemTreeGlob]
	mov edi, [ebp-0x48]
	mov [eax+scrMemTreeGlob+0x8], edi
	mov edi, [ebp-0x2c]
	mov [eax+scrMemTreeGlob+0x4], edi
	movzx edi, word [ebp-0x2e]
	mov [eax+scrMemTreeGlob+0x2], di
	movzx edi, word [ebp-0x30]
	mov [eax+scrMemTreeGlob], di
	mov [ebp-0x2e], dx
	mov [ebp-0x30], cx
	mov [ebp-0x2c], ebx
	mov [ebp-0x48], esi
MT_FreeIndex_190:
	cmp word [ebp-0x30], 0x0
	jz MT_FreeIndex_210
	cmp word [ebp-0x2e], 0x0
	jnz MT_FreeIndex_220
	movzx edi, word [ebp-0x30]
	mov edx, [ebp-0x60]
	mov [edx], di
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x60], eax
	jmp MT_FreeIndex_230
MT_FreeIndex_220:
	movzx edi, word [ebp-0x30]
	mov ebx, 0x10000
	sub ebx, edi
	mov [ebp-0x1c], ebx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ecx, al
	movzx edx, byte [ebp-0x1b]
	mov [ebp-0x44], edx
	movzx eax, byte [ecx+scrMemTreeGlob+0xc0100]
	mov [ebp-0x7c], eax
	movzx edx, byte [edx+scrMemTreeGlob+0xc0100]
	mov eax, [ebp-0x7c]
	add eax, edx
	mov edx, ebx
	sub edx, eax
	movzx ecx, byte [ecx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_FreeIndex_240
	mov ebx, [ebp-0x44]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_FreeIndex_240:
	mov dword [ebp-0x6c], 0x1
	mov eax, 0x1
	shl eax, cl
	add edx, eax
	mov [ebp-0x5c], edx
	movzx eax, word [ebp-0x2e]
	mov [ebp-0x3c], eax
	mov ebx, 0x10000
	sub ebx, eax
	mov [ebp-0x1c], ebx
	movzx esi, byte [ebp-0x1c]
	mov edx, esi
	movzx ecx, dl
	movzx eax, byte [ebp-0x1b]
	mov [ebp-0x40], eax
	movzx edx, byte [ecx+scrMemTreeGlob+0xc0100]
	mov [ebp-0x7c], edx
	movzx edx, byte [eax+scrMemTreeGlob+0xc0100]
	mov eax, [ebp-0x7c]
	add eax, edx
	mov edx, ebx
	sub edx, eax
	movzx ecx, byte [ecx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_FreeIndex_250
	mov ebx, [ebp-0x40]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_FreeIndex_250:
	shl dword [ebp-0x6c], cl
	mov ecx, [ebp-0x6c]
	lea eax, [edx+ecx]
	cmp [ebp-0x5c], eax
	jge MT_FreeIndex_260
	movzx edi, word [ebp-0x3c]
	mov ebx, [ebp-0x60]
	mov [ebx], di
	mov edx, [ebp-0x3c]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x60], eax
	mov edi, edx
	jmp MT_FreeIndex_230
MT_FreeIndex_260:
	mov ecx, [ebp-0x60]
	mov [ecx], di
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x60], eax
	jmp MT_FreeIndex_230
MT_FreeIndex_200:
	not dword [ebp-0x68]
	mov ecx, [ebp-0x68]
	and [ebp+0x8], ecx
	add dword [ebp-0x64], 0x1
	mov dword [ebp-0x68], 0x1
	movzx ecx, byte [ebp-0x64]
	shl dword [ebp-0x68], cl
	cmp dword [ebp-0x64], 0x10
	jnz MT_FreeIndex_90
	mov ebx, [ebp-0x64]
	jmp MT_FreeIndex_40
MT_FreeIndex_150:
	movzx edi, word [ebp+0x8]
	mov ebx, [ebp-0x34]
	mov [ebx], di
	mov eax, [ebp+0x8]
	lea ecx, [eax+eax*2]
	shl ecx, 0x2
	mov edx, [ebp-0x38]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	mov eax, [ebp-0x38]
	test eax, eax
	jz MT_FreeIndex_270
	jmp MT_FreeIndex_280
MT_FreeIndex_290:
	mov ecx, [ebp-0x58]
	lea eax, [ecx+ecx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov ebx, [ebp-0x4c]
	sub edx, ebx
	mov [ebp-0x50], edx
MT_FreeIndex_300:
	movzx ebx, word [eax]
	movzx esi, bx
	movzx ecx, word [ebp-0x38]
	mov [eax], cx
	mov edi, [ebp-0x38]
	lea ecx, [edi+edi*2]
	shl ecx, 0x2
	lea eax, [esi+esi*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	test bx, bx
	jz MT_FreeIndex_270
	mov [ebp-0x58], edi
	mov [ebp-0x38], esi
MT_FreeIndex_280:
	sar dword [ebp-0x4c], 1
	mov edx, [ebp-0x50]
	cmp [ebp-0x38], edx
	jl MT_FreeIndex_290
	mov edi, [ebp-0x58]
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov edx, [ebp-0x4c]
	add [ebp-0x50], edx
	jmp MT_FreeIndex_300
	nop


;MT_AllocIndex(int, int)
MT_AllocIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov ebx, [ebp+0x8]
	cmp ebx, 0xffff
	jg MT_AllocIndex_10
	lea ecx, [ebx+0xb]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	sar edx, 1
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea eax, [edx-0x1]
	cmp eax, 0xff
	jg MT_AllocIndex_20
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	mov [ebp-0x70], eax
MT_AllocIndex_300:
	mov dword [esp], 0x5
	call Sys_EnterCriticalSection
	cmp dword [ebp-0x70], 0x10
	jg MT_AllocIndex_30
MT_AllocIndex_100:
	mov edi, [ebp-0x70]
	movzx eax, word [edi+edi+scrMemTreeGlob+0xc0300]
	movzx edx, ax
	mov [ebp-0x74], edx
	test ax, ax
	jz MT_AllocIndex_40
	mov [ebp-0x34], edi
	mov ebx, edi
MT_AllocIndex_290:
	lea ebx, [ebx+ebx+scrMemTreeGlob+0xc0300]
	mov [ebp-0x68], ebx
	mov edi, [ebp-0x34]
	movzx eax, word [edi+edi+scrMemTreeGlob+0xc0300]
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob+0x8]
	mov [ebp-0x48], edx
	mov ecx, [eax+scrMemTreeGlob+0x4]
	mov [ebp-0x4c], ecx
	movzx ebx, word [eax+scrMemTreeGlob+0x2]
	mov [ebp-0x4e], bx
	movzx eax, word [eax+scrMemTreeGlob]
	mov [ebp-0x3a], ax
	jmp MT_AllocIndex_50
MT_AllocIndex_70:
	movzx edi, word [ebp-0x4e]
	mov eax, [ebp-0x68]
	mov [eax], di
	cmp word [ebp-0x4e], 0x0
	jz MT_AllocIndex_60
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x68], eax
MT_AllocIndex_90:
	lea eax, [edi+edi*2]
	shl eax, 0x2
	mov esi, [eax+scrMemTreeGlob+0x8]
	mov ebx, [eax+scrMemTreeGlob+0x4]
	movzx edx, word [eax+scrMemTreeGlob+0x2]
	movzx ecx, word [eax+scrMemTreeGlob]
	mov edi, [ebp-0x48]
	mov [eax+scrMemTreeGlob+0x8], edi
	mov edi, [ebp-0x4c]
	mov [eax+scrMemTreeGlob+0x4], edi
	movzx edi, word [ebp-0x4e]
	mov [eax+scrMemTreeGlob+0x2], di
	movzx edi, word [ebp-0x3a]
	mov [eax+scrMemTreeGlob], di
	mov [ebp-0x4e], dx
	mov [ebp-0x3a], cx
	mov [ebp-0x4c], ebx
	mov [ebp-0x48], esi
MT_AllocIndex_50:
	cmp word [ebp-0x3a], 0x0
	jz MT_AllocIndex_70
	cmp word [ebp-0x4e], 0x0
	jnz MT_AllocIndex_80
	movzx edi, word [ebp-0x3a]
	mov edx, [ebp-0x68]
	mov [edx], di
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x68], eax
	jmp MT_AllocIndex_90
MT_AllocIndex_20:
	sar eax, 0x8
	movzx eax, byte [eax+scrMemTreeGlob+0xc0200]
	add eax, 0x8
	mov [ebp-0x70], eax
	mov dword [esp], 0x5
	call Sys_EnterCriticalSection
	cmp dword [ebp-0x70], 0x10
	jle MT_AllocIndex_100
MT_AllocIndex_30:
	mov dword [esp], 0x5
	call Sys_LeaveCriticalSection
	call MT_DumpTree
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_mt_allocindex
	mov dword [esp+0x4], _cstring_s_failed_memory_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp], _cstring_failed_memory_al
	call Scr_TerminalError
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MT_AllocIndex_80:
	movzx edi, word [ebp-0x3a]
	mov ebx, 0x10000
	sub ebx, edi
	mov [ebp-0x1c], ebx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ecx, al
	movzx edx, byte [ebp-0x1b]
	mov [ebp-0x44], edx
	movzx eax, byte [ecx+scrMemTreeGlob+0xc0100]
	mov [ebp-0x8c], eax
	movzx edx, byte [edx+scrMemTreeGlob+0xc0100]
	mov eax, [ebp-0x8c]
	add eax, edx
	mov edx, ebx
	sub edx, eax
	movzx ecx, byte [ecx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_AllocIndex_110
	mov ebx, [ebp-0x44]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_AllocIndex_110:
	mov dword [ebp-0x78], 0x1
	mov eax, 0x1
	shl eax, cl
	add edx, eax
	mov [ebp-0x64], edx
	movzx eax, word [ebp-0x4e]
	mov [ebp-0x2c], eax
	mov ebx, 0x10000
	sub ebx, eax
	mov [ebp-0x1c], ebx
	movzx esi, byte [ebp-0x1c]
	mov edx, esi
	movzx ecx, dl
	movzx eax, byte [ebp-0x1b]
	mov [ebp-0x40], eax
	movzx edx, byte [ecx+scrMemTreeGlob+0xc0100]
	mov [ebp-0x8c], edx
	movzx edx, byte [eax+scrMemTreeGlob+0xc0100]
	mov eax, [ebp-0x8c]
	add eax, edx
	mov edx, ebx
	sub edx, eax
	movzx ecx, byte [ecx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_AllocIndex_120
	mov ebx, [ebp-0x40]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_AllocIndex_120:
	shl dword [ebp-0x78], cl
	mov ecx, [ebp-0x78]
	lea eax, [edx+ecx]
	cmp [ebp-0x64], eax
	jge MT_AllocIndex_130
	movzx edi, word [ebp-0x2c]
	mov ebx, [ebp-0x68]
	mov [ebx], di
	mov edx, [ebp-0x2c]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x68], eax
	mov edi, edx
	jmp MT_AllocIndex_90
MT_AllocIndex_130:
	mov ecx, [ebp-0x68]
	mov [ecx], di
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x68], eax
	jmp MT_AllocIndex_90
MT_AllocIndex_60:
	mov ebx, [ebp-0x34]
	cmp [ebp-0x70], ebx
	jz MT_AllocIndex_140
	mov [ebp-0x6c], ebx
MT_AllocIndex_230:
	sub dword [ebp-0x6c], 0x1
	mov dword [ebp-0x7c], 0x1
	mov eax, 0x1
	movzx ecx, byte [ebp-0x6c]
	shl eax, cl
	add eax, [ebp-0x74]
	mov [ebp-0x38], eax
	mov ebx, [ebp-0x6c]
	lea eax, [ebx+ebx+0xc0300]
	lea edi, [eax+scrMemTreeGlob]
	mov [ebp-0x30], edi
	movzx eax, word [eax+scrMemTreeGlob]
	movzx edx, ax
	mov [ebp-0x60], edx
	test ax, ax
	jz MT_AllocIndex_150
	mov ecx, 0x10000
	sub ecx, [ebp-0x38]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ebx, al
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_AllocIndex_160
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_AllocIndex_160:
	shl dword [ebp-0x7c], cl
	add edx, [ebp-0x7c]
	mov [ebp-0x5c], edx
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x10000
	jmp MT_AllocIndex_170
MT_AllocIndex_210:
	mov ebx, [ebp-0x60]
	lea eax, [ebx+ebx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x30], eax
	mov edi, [ebp-0x54]
	add [ebp-0x58], edi
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x60], ecx
	test ax, ax
	jz MT_AllocIndex_180
MT_AllocIndex_170:
	mov ecx, 0x10000
	sub ecx, [ebp-0x60]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ebx, al
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov ebx, esi
	test bl, bl
	jnz MT_AllocIndex_190
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_AllocIndex_190:
	mov eax, 0x1
	shl eax, cl
	lea eax, [edx+eax]
	cmp [ebp-0x5c], eax
	jg MT_AllocIndex_200
	sar dword [ebp-0x54], 1
	mov edi, [ebp-0x58]
	cmp [ebp-0x38], edi
	jge MT_AllocIndex_210
	mov edx, [ebp-0x60]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x30], eax
	mov ecx, [ebp-0x54]
	sub [ebp-0x58], ecx
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x60], ecx
	test ax, ax
	jnz MT_AllocIndex_170
MT_AllocIndex_180:
	mov ebx, edx
	jmp MT_AllocIndex_220
MT_AllocIndex_150:
	mov ebx, edi
MT_AllocIndex_220:
	movzx edi, word [ebp-0x38]
	mov [ebx], di
	mov edx, [ebp-0x38]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov word [eax+scrMemTreeGlob], 0x0
	mov word [eax+scrMemTreeGlob+0x2], 0x0
MT_AllocIndex_240:
	mov ecx, [ebp-0x70]
	cmp [ebp-0x6c], ecx
	jnz MT_AllocIndex_230
MT_AllocIndex_140:
	mov dword [esp], 0x5
	call Sys_LeaveCriticalSection
	movzx eax, word [ebp-0x74]
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MT_AllocIndex_200:
	movzx eax, word [ebp-0x38]
	mov edi, [ebp-0x30]
	mov [edi], ax
	mov edx, [ebp-0x38]
	lea ecx, [edx+edx*2]
	shl ecx, 0x2
	mov ebx, [ebp-0x60]
	lea eax, [ebx+ebx*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	test ebx, ebx
	jz MT_AllocIndex_240
	jmp MT_AllocIndex_250
MT_AllocIndex_260:
	mov ecx, [ebp-0x38]
	lea eax, [ecx+ecx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov ebx, [ebp-0x54]
	sub edx, ebx
	mov [ebp-0x58], edx
MT_AllocIndex_270:
	movzx ebx, word [eax]
	movzx esi, bx
	movzx ecx, word [ebp-0x60]
	mov [eax], cx
	mov edi, [ebp-0x60]
	lea ecx, [edi+edi*2]
	shl ecx, 0x2
	lea eax, [esi+esi*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	test bx, bx
	jz MT_AllocIndex_240
	mov [ebp-0x38], edi
	mov [ebp-0x60], esi
MT_AllocIndex_250:
	sar dword [ebp-0x54], 1
	mov edx, [ebp-0x58]
	cmp [ebp-0x60], edx
	jl MT_AllocIndex_260
	mov edi, [ebp-0x38]
	lea eax, [edi+edi*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov edx, [ebp-0x54]
	add [ebp-0x58], edx
	jmp MT_AllocIndex_270
MT_AllocIndex_40:
	lea edx, [edi+edi+scrMemTreeGlob+0xc0300]
	mov [ebp-0x34], edi
MT_AllocIndex_280:
	add dword [ebp-0x34], 0x1
	cmp dword [ebp-0x34], 0x11
	jz MT_AllocIndex_30
	movzx eax, word [edx+0x2]
	movzx ecx, ax
	mov [ebp-0x74], ecx
	add edx, 0x2
	test ax, ax
	jz MT_AllocIndex_280
	mov ebx, [ebp-0x34]
	jmp MT_AllocIndex_290
MT_AllocIndex_10:
	call MT_DumpTree
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_mt_getsize_max_a
	mov dword [esp+0x4], _cstring_s_failed_memory_
	mov dword [esp], 0x17
	call Com_Printf
	mov dword [esp], _cstring_failed_memory_al
	call Scr_TerminalError
	mov dword [ebp-0x70], 0x0
	jmp MT_AllocIndex_300


;MT_Free(void*, int)
MT_Free:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	sub edx, scrMemTreeGlob
	sar edx, 0x2
	lea eax, [edx+edx*4]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x8
	add eax, ecx
	mov ecx, eax
	shl ecx, 0x10
	add eax, ecx
	lea eax, [edx+eax*2]
	mov [ebp+0x8], eax
	pop ebp
	jmp MT_FreeIndex
	nop


;MT_Init()
MT_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [esp], 0x5
	call Sys_EnterCriticalSection
	mov dword [scrMemTreePub], scrMemTreeGlob
	xor eax, eax
	xor ebx, ebx
	mov esi, scrMemTreeGlob
MT_Init_40:
	mov [esi+0xc0100], al
	test bl, bl
	jnz MT_Init_10
MT_Init_60:
	mov eax, 0x8
	mov [esi+0xc0000], al
	test ebx, ebx
	jnz MT_Init_20
MT_Init_80:
	xor eax, eax
	mov [esi+0xc0200], al
	add ebx, 0x1
	add esi, 0x1
	cmp ebx, 0x100
	jz MT_Init_30
MT_Init_100:
	xor eax, eax
	test ebx, ebx
	jz MT_Init_40
	mov edx, ebx
	xor ecx, ecx
MT_Init_50:
	mov eax, edx
	and eax, 0x1
	cmp eax, 0x1
	sbb ecx, 0xffffffff
	sar edx, 1
	jnz MT_Init_50
	mov eax, ecx
	mov [esi+0xc0100], al
	test bl, bl
	jz MT_Init_60
MT_Init_10:
	mov ecx, 0x8
	mov edx, 0x1
MT_Init_70:
	sub ecx, 0x1
	mov eax, edx
	shl eax, cl
	sub eax, 0x1
	test ebx, eax
	jnz MT_Init_70
	mov eax, ecx
	mov [esi+0xc0000], al
	test ebx, ebx
	jz MT_Init_80
MT_Init_20:
	mov eax, ebx
	xor edx, edx
MT_Init_90:
	add edx, 0x1
	sar eax, 1
	jnz MT_Init_90
	mov eax, edx
	mov [esi+0xc0200], al
	add ebx, 0x1
	add esi, 0x1
	cmp ebx, 0x100
	jnz MT_Init_100
MT_Init_30:
	mov eax, scrMemTreeGlob
	mov edx, scrMemTreeGlob+0x22
MT_Init_110:
	mov word [eax+0xc0300], 0x0
	add eax, 0x2
	cmp edx, eax
	jnz MT_Init_110
	mov word [scrMemTreeGlob], 0x0
	mov word [scrMemTreeGlob+0x2], 0x0
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x48], 0xc0300
MT_Init_200:
	mov eax, 0x1
	movzx ecx, byte [ebp-0x44]
	shl eax, cl
	mov [ebp-0x40], eax
	mov edx, [ebp-0x48]
	add edx, scrMemTreeGlob
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x48]
	movzx eax, word [ecx+scrMemTreeGlob]
	movzx edx, ax
	mov [ebp-0x30], edx
	test ax, ax
	jz MT_Init_120
	mov ecx, 0x10000
	sub ecx, [ebp-0x40]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov eax, esi
	movzx ebx, al
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov eax, esi
	test al, al
	jnz MT_Init_130
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_Init_130:
	mov eax, 0x1
	shl eax, cl
	add edx, eax
	mov [ebp-0x3c], edx
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x10000
	jmp MT_Init_140
MT_Init_180:
	mov edx, [ebp-0x30]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x34]
	add [ebp-0x38], ecx
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x30], ecx
	test ax, ax
	jz MT_Init_150
MT_Init_140:
	mov ecx, 0x10000
	sub ecx, [ebp-0x30]
	mov [ebp-0x1c], ecx
	movzx esi, byte [ebp-0x1c]
	mov edx, esi
	movzx ebx, dl
	movzx edi, byte [ebp-0x1b]
	movzx eax, byte [ebx+scrMemTreeGlob+0xc0100]
	movzx edx, byte [edi+scrMemTreeGlob+0xc0100]
	add eax, edx
	mov edx, ecx
	sub edx, eax
	movzx ecx, byte [ebx+scrMemTreeGlob+0xc0000]
	mov eax, esi
	test al, al
	jnz MT_Init_160
	movzx eax, byte [edi+scrMemTreeGlob+0xc0000]
	add ecx, eax
MT_Init_160:
	mov eax, 0x1
	shl eax, cl
	lea eax, [edx+eax]
	cmp [ebp-0x3c], eax
	jg MT_Init_170
	sar dword [ebp-0x34], 1
	mov edx, [ebp-0x38]
	cmp [ebp-0x40], edx
	jge MT_Init_180
	mov edx, [ebp-0x30]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov [ebp-0x2c], eax
	mov ecx, [ebp-0x34]
	sub [ebp-0x38], ecx
	mov edx, eax
	movzx eax, word [edx]
	movzx ecx, ax
	mov [ebp-0x30], ecx
	test ax, ax
	jnz MT_Init_140
MT_Init_150:
	mov eax, edx
	jmp MT_Init_190
MT_Init_120:
	mov eax, [ebp-0x2c]
MT_Init_190:
	movzx edx, word [ebp-0x40]
	mov [eax], dx
	mov ecx, [ebp-0x40]
	lea eax, [ecx+ecx*2]
	shl eax, 0x2
	mov word [eax+scrMemTreeGlob], 0x0
	mov word [eax+scrMemTreeGlob+0x2], 0x0
MT_Init_210:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x48], 0x2
	cmp dword [ebp-0x44], 0x10
	jnz MT_Init_200
	mov dword [esp], 0x5
	call Sys_LeaveCriticalSection
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MT_Init_170:
	movzx edx, word [ebp-0x40]
	mov eax, [ebp-0x2c]
	mov [eax], dx
	mov eax, [ebp-0x40]
	lea ecx, [eax+eax*2]
	shl ecx, 0x2
	mov edx, [ebp-0x30]
	lea eax, [edx+edx*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	mov edx, [ebp-0x30]
	test edx, edx
	jz MT_Init_210
	jmp MT_Init_220
MT_Init_230:
	mov edx, [ebp-0x40]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob]
	mov ecx, [ebp-0x34]
	sub [ebp-0x38], ecx
MT_Init_240:
	movzx ebx, word [eax]
	movzx esi, bx
	movzx edx, word [ebp-0x30]
	mov [eax], dx
	mov eax, [ebp-0x30]
	lea ecx, [eax+eax*2]
	shl ecx, 0x2
	lea eax, [esi+esi*2]
	shl eax, 0x2
	mov edx, [eax+scrMemTreeGlob]
	mov [ecx+scrMemTreeGlob], edx
	mov edx, [eax+scrMemTreeGlob+0x4]
	mov [ecx+scrMemTreeGlob+0x4], edx
	mov eax, [eax+scrMemTreeGlob+0x8]
	mov [ecx+scrMemTreeGlob+0x8], eax
	test bx, bx
	jz MT_Init_210
	mov ecx, [ebp-0x30]
	mov [ebp-0x40], ecx
	mov [ebp-0x30], esi
MT_Init_220:
	sar dword [ebp-0x34], 1
	mov eax, [ebp-0x38]
	cmp [ebp-0x30], eax
	jl MT_Init_230
	mov edx, [ebp-0x40]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+scrMemTreeGlob+0x2]
	mov ecx, [ebp-0x34]
	add [ebp-0x38], ecx
	jmp MT_Init_240
	nop


;MT_Alloc(int, int)
MT_Alloc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MT_AllocIndex
	movzx eax, ax
	lea eax, [eax+eax*2]
	lea eax, [eax*4+scrMemTreeGlob]
	leave
	ret


;Initialized global or static variables of scr_memorytree:
SECTION .data


;Initialized constant data of scr_memorytree:
SECTION .rdata


;Zero initialized global or static variables of scr_memorytree:
SECTION .bss
scrMemTreeGlob: resb 0xc0380
scrMemTreePub: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_mt_getsize_max_a:		db "MT_GetSize: max allocation exceeded",0
_cstring_s_failed_memory_:		db "%s: failed memory allocation of %d bytes for script usage",0ah,0
_cstring_failed_memory_al:		db "failed memory allocation for script usage",0
_cstring_:		db "********************************",0ah,0
_cstring_d_subtree_has_d_:		db "%d subtree has %d * %d = %d free buckets",0ah,0
_cstring_mt_allocindex:		db "MT_AllocIndex",0



;All constant floats and doubles:
SECTION .rdata

