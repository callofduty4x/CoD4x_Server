;Imports of com_shared:
	extern memcpy
	extern I_stristr
	extern __toupper
	extern strstr
	extern memset
	extern time
	extern localtime

;Exports of com_shared:
	global Com_Memcpy
	global Com_Filter
	global Com_Memset
	global Com_HashKey
	global Com_RealTime
	global Com_FilterPath


SECTION .text


;Com_Memcpy
Com_Memcpy:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memcpy
	leave
	ret
	nop


;Com_Filter(char const*, char const*, int)
Com_Filter:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
Com_Filter_120:
	movzx eax, byte [esi]
	test al, al
	jz Com_Filter_10
Com_Filter_70:
	cmp al, 0x2a
	jz Com_Filter_20
	cmp al, 0x3f
	jz Com_Filter_30
	cmp al, 0x5b
	jz Com_Filter_40
	mov edx, [ebp+0x10]
	test edx, edx
	jz Com_Filter_50
	mov ecx, [ebp+0xc]
	cmp al, [ecx]
	jnz Com_Filter_60
Com_Filter_30:
	add esi, 0x1
Com_Filter_210:
	add dword [ebp+0xc], 0x1
Com_Filter_240:
	movzx eax, byte [esi]
	test al, al
	jnz Com_Filter_70
Com_Filter_10:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Filter_160:
	lea edi, [esi+0x1]
	cmp byte [esi+0x1], 0x5d
	jz Com_Filter_80
Com_Filter_60:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_Filter_20:
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jz Com_Filter_90
	cmp al, 0x2a
	jz Com_Filter_90
	cmp al, 0x3f
	jz Com_Filter_90
	xor edx, edx
	lea ebx, [ebp-0x418]
Com_Filter_110:
	mov [edx+ebx], al
	add esi, 0x1
	add edx, 0x1
	movzx eax, byte [esi]
	test al, al
	jz Com_Filter_100
	cmp al, 0x2a
	jz Com_Filter_100
	cmp al, 0x3f
	jnz Com_Filter_110
	jmp Com_Filter_100
Com_Filter_90:
	xor edx, edx
Com_Filter_100:
	mov byte [ebp+edx-0x418], 0x0
	cmp byte [ebp-0x418], 0x0
	jz Com_Filter_120
	mov edi, [ebp+0x10]
	test edi, edi
	jz Com_Filter_130
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call I_stristr
	mov edx, eax
Com_Filter_330:
	test edx, edx
	jz Com_Filter_60
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	mov [ebp+0xc], ecx
	jmp Com_Filter_120
Com_Filter_40:
	add esi, 0x1
	cmp byte [esi], 0x5b
	jz Com_Filter_120
	xor edx, edx
	movzx eax, byte [esi]
	test al, al
	jz Com_Filter_140
Com_Filter_200:
	test edx, edx
	jnz Com_Filter_150
	cmp al, 0x5d
	jz Com_Filter_160
	lea edi, [esi+0x1]
Com_Filter_80:
	cmp byte [edi], 0x2d
	jz Com_Filter_170
Com_Filter_270:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz Com_Filter_180
	mov ecx, [ebp+0xc]
	cmp al, [ecx]
	jz Com_Filter_190
Com_Filter_250:
	xor edx, edx
	mov esi, edi
Com_Filter_260:
	movzx eax, byte [esi]
	test al, al
	jnz Com_Filter_200
Com_Filter_140:
	test edx, edx
	jz Com_Filter_60
	add esi, 0x1
	jmp Com_Filter_210
Com_Filter_220:
	add esi, 0x1
Com_Filter_230:
	movzx eax, byte [esi]
	test al, al
	jz Com_Filter_30
Com_Filter_150:
	cmp al, 0x5d
	jnz Com_Filter_220
	add esi, 0x1
	cmp byte [esi], 0x5d
	jz Com_Filter_230
	add dword [ebp+0xc], 0x1
	jmp Com_Filter_240
Com_Filter_180:
	movsx eax, al
	mov [esp], eax
	call __toupper
	mov ebx, eax
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call __toupper
	cmp ebx, eax
	jnz Com_Filter_250
Com_Filter_190:
	mov edx, 0x1
	mov esi, edi
	jmp Com_Filter_260
Com_Filter_170:
	lea ecx, [esi+0x2]
	mov [ebp-0x420], ecx
	movzx edx, byte [esi+0x2]
	test dl, dl
	jz Com_Filter_270
	cmp dl, 0x5d
	jz Com_Filter_280
	lea ebx, [esi+0x3]
	mov [ebp-0x41c], ebx
Com_Filter_340:
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz Com_Filter_290
	mov ebx, [ebp+0xc]
	movzx ecx, byte [ebx]
	cmp al, cl
	jg Com_Filter_300
	cmp dl, cl
	jge Com_Filter_310
Com_Filter_300:
	xor edx, edx
Com_Filter_320:
	mov edi, [ebp-0x41c]
	mov esi, edi
	jmp Com_Filter_260
Com_Filter_290:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call __toupper
	mov ebx, eax
	movsx eax, byte [esi]
	mov [esp], eax
	call __toupper
	cmp ebx, eax
	jl Com_Filter_300
	mov ecx, [ebp+0xc]
	movsx eax, byte [ecx]
	mov [esp], eax
	call __toupper
	mov ebx, eax
	mov edx, [ebp-0x420]
	movsx eax, byte [edx]
	mov [esp], eax
	call __toupper
	cmp ebx, eax
	jg Com_Filter_300
Com_Filter_310:
	mov edx, 0x1
	jmp Com_Filter_320
Com_Filter_50:
	movsx eax, al
	mov [esp], eax
	call __toupper
	mov ebx, eax
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call __toupper
	cmp ebx, eax
	jnz Com_Filter_60
	add esi, 0x1
	jmp Com_Filter_210
Com_Filter_130:
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call strstr
	mov edx, eax
	jmp Com_Filter_330
Com_Filter_280:
	lea ecx, [esi+0x3]
	mov [ebp-0x41c], ecx
	cmp byte [esi+0x3], 0x5d
	jnz Com_Filter_270
	jmp Com_Filter_340
	nop


;Com_Memset(void*, int, int)
Com_Memset:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memset
	leave
	ret


;Com_HashKey(char const*, int)
Com_HashKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jle Com_HashKey_10
	movzx eax, byte [edi]
	test al, al
	jz Com_HashKey_10
	xor ecx, ecx
	xor ebx, ebx
Com_HashKey_30:
	movsx eax, al
	lea edx, [ecx+0x77]
	imul eax, edx
	add ebx, eax
	add ecx, 0x1
	cmp esi, ecx
	jz Com_HashKey_20
	movzx eax, byte [edi+ecx]
	test al, al
	jnz Com_HashKey_30
Com_HashKey_20:
	mov edx, ebx
	sar edx, 0xa
	mov eax, ebx
	sar eax, 0x14
	xor ebx, edx
	xor ebx, eax
	mov eax, ebx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_HashKey_10:
	xor ebx, ebx
	xor edx, edx
	xor eax, eax
	xor ebx, edx
	xor ebx, eax
	mov eax, ebx
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Com_RealTime(qtime_s*)
Com_RealTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call time
	mov [ebp-0xc], eax
	test ebx, ebx
	jz Com_RealTime_10
	lea eax, [ebp-0xc]
	mov [esp], eax
	call localtime
	mov edx, eax
	test eax, eax
	jz Com_RealTime_20
	mov eax, [eax]
	mov [ebx], eax
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
Com_RealTime_20:
	mov eax, [ebp-0xc]
Com_RealTime_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Com_FilterPath(char const*, char const*, int)
Com_FilterPath:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	xor edx, edx
	lea ebx, [ebp-0x48]
	jmp Com_FilterPath_10
Com_FilterPath_40:
	cmp al, 0x3a
	jz Com_FilterPath_20
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, 0x3f
	jz Com_FilterPath_30
Com_FilterPath_10:
	movzx eax, byte [ecx+edx]
	test al, al
	jz Com_FilterPath_30
	cmp al, 0x5c
	jnz Com_FilterPath_40
Com_FilterPath_20:
	mov byte [edx+ebx], 0x2f
	add edx, 0x1
	cmp edx, 0x3f
	jnz Com_FilterPath_10
Com_FilterPath_30:
	mov byte [ebp+edx-0x48], 0x0
	xor edx, edx
	lea ecx, [ebp-0x88]
	jmp Com_FilterPath_50
Com_FilterPath_80:
	cmp al, 0x3a
	jz Com_FilterPath_60
	mov [edx+ecx], al
	add edx, 0x1
	cmp edx, 0x3f
	jz Com_FilterPath_70
Com_FilterPath_50:
	movzx eax, byte [esi+edx]
	test al, al
	jz Com_FilterPath_70
	cmp al, 0x5c
	jnz Com_FilterPath_80
Com_FilterPath_60:
	mov byte [edx+ecx], 0x2f
	add edx, 0x1
	cmp edx, 0x3f
	jnz Com_FilterPath_50
Com_FilterPath_70:
	mov byte [ebp+edx-0x88], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], ebx
	call Com_Filter
	movzx eax, al
	add esp, 0x90
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of com_shared:
SECTION .data


;Initialized constant data of com_shared:
SECTION .rdata


;Zero initialized global or static variables of com_shared:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

