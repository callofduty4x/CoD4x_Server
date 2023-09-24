;Imports of com_shared:
	extern memcpy
	extern _Z9I_stristrPKcS0_
	extern toupper
	extern strstr
	extern memset
	extern time
	extern localtime

;Exports of com_shared:
	global Com_Memcpy
	global _Z10Com_FilterPKcS0_i
	global _Z10Com_MemsetPvii
	global _Z11Com_HashKeyPKci
	global _Z12Com_RealTimeP7qtime_s
	global _Z14Com_FilterPathPKcS0_i


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
_Z10Com_FilterPKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
_Z10Com_FilterPKcS0_i_120:
	movzx eax, byte [esi]
	test al, al
	jz _Z10Com_FilterPKcS0_i_10
_Z10Com_FilterPKcS0_i_70:
	cmp al, 0x2a
	jz _Z10Com_FilterPKcS0_i_20
	cmp al, 0x3f
	jz _Z10Com_FilterPKcS0_i_30
	cmp al, 0x5b
	jz _Z10Com_FilterPKcS0_i_40
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z10Com_FilterPKcS0_i_50
	mov ecx, [ebp+0xc]
	cmp al, [ecx]
	jnz _Z10Com_FilterPKcS0_i_60
_Z10Com_FilterPKcS0_i_30:
	add esi, 0x1
_Z10Com_FilterPKcS0_i_210:
	add dword [ebp+0xc], 0x1
_Z10Com_FilterPKcS0_i_240:
	movzx eax, byte [esi]
	test al, al
	jnz _Z10Com_FilterPKcS0_i_70
_Z10Com_FilterPKcS0_i_10:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Com_FilterPKcS0_i_160:
	lea edi, [esi+0x1]
	cmp byte [esi+0x1], 0x5d
	jz _Z10Com_FilterPKcS0_i_80
_Z10Com_FilterPKcS0_i_60:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Com_FilterPKcS0_i_20:
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jz _Z10Com_FilterPKcS0_i_90
	cmp al, 0x2a
	jz _Z10Com_FilterPKcS0_i_90
	cmp al, 0x3f
	jz _Z10Com_FilterPKcS0_i_90
	xor edx, edx
	lea ebx, [ebp-0x418]
_Z10Com_FilterPKcS0_i_110:
	mov [edx+ebx], al
	add esi, 0x1
	add edx, 0x1
	movzx eax, byte [esi]
	test al, al
	jz _Z10Com_FilterPKcS0_i_100
	cmp al, 0x2a
	jz _Z10Com_FilterPKcS0_i_100
	cmp al, 0x3f
	jnz _Z10Com_FilterPKcS0_i_110
	jmp _Z10Com_FilterPKcS0_i_100
_Z10Com_FilterPKcS0_i_90:
	xor edx, edx
_Z10Com_FilterPKcS0_i_100:
	mov byte [ebp+edx-0x418], 0x0
	cmp byte [ebp-0x418], 0x0
	jz _Z10Com_FilterPKcS0_i_120
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z10Com_FilterPKcS0_i_130
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z9I_stristrPKcS0_
	mov edx, eax
_Z10Com_FilterPKcS0_i_330:
	test edx, edx
	jz _Z10Com_FilterPKcS0_i_60
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	mov [ebp+0xc], ecx
	jmp _Z10Com_FilterPKcS0_i_120
_Z10Com_FilterPKcS0_i_40:
	add esi, 0x1
	cmp byte [esi], 0x5b
	jz _Z10Com_FilterPKcS0_i_120
	xor edx, edx
	movzx eax, byte [esi]
	test al, al
	jz _Z10Com_FilterPKcS0_i_140
_Z10Com_FilterPKcS0_i_200:
	test edx, edx
	jnz _Z10Com_FilterPKcS0_i_150
	cmp al, 0x5d
	jz _Z10Com_FilterPKcS0_i_160
	lea edi, [esi+0x1]
_Z10Com_FilterPKcS0_i_80:
	cmp byte [edi], 0x2d
	jz _Z10Com_FilterPKcS0_i_170
_Z10Com_FilterPKcS0_i_270:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _Z10Com_FilterPKcS0_i_180
	mov ecx, [ebp+0xc]
	cmp al, [ecx]
	jz _Z10Com_FilterPKcS0_i_190
_Z10Com_FilterPKcS0_i_250:
	xor edx, edx
	mov esi, edi
_Z10Com_FilterPKcS0_i_260:
	movzx eax, byte [esi]
	test al, al
	jnz _Z10Com_FilterPKcS0_i_200
_Z10Com_FilterPKcS0_i_140:
	test edx, edx
	jz _Z10Com_FilterPKcS0_i_60
	add esi, 0x1
	jmp _Z10Com_FilterPKcS0_i_210
_Z10Com_FilterPKcS0_i_220:
	add esi, 0x1
_Z10Com_FilterPKcS0_i_230:
	movzx eax, byte [esi]
	test al, al
	jz _Z10Com_FilterPKcS0_i_30
_Z10Com_FilterPKcS0_i_150:
	cmp al, 0x5d
	jnz _Z10Com_FilterPKcS0_i_220
	add esi, 0x1
	cmp byte [esi], 0x5d
	jz _Z10Com_FilterPKcS0_i_230
	add dword [ebp+0xc], 0x1
	jmp _Z10Com_FilterPKcS0_i_240
_Z10Com_FilterPKcS0_i_180:
	movsx eax, al
	mov [esp], eax
	call toupper
	mov ebx, eax
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call toupper
	cmp ebx, eax
	jnz _Z10Com_FilterPKcS0_i_250
_Z10Com_FilterPKcS0_i_190:
	mov edx, 0x1
	mov esi, edi
	jmp _Z10Com_FilterPKcS0_i_260
_Z10Com_FilterPKcS0_i_170:
	lea ecx, [esi+0x2]
	mov [ebp-0x420], ecx
	movzx edx, byte [esi+0x2]
	test dl, dl
	jz _Z10Com_FilterPKcS0_i_270
	cmp dl, 0x5d
	jz _Z10Com_FilterPKcS0_i_280
	lea ebx, [esi+0x3]
	mov [ebp-0x41c], ebx
_Z10Com_FilterPKcS0_i_340:
	mov ebx, [ebp+0x10]
	test ebx, ebx
	jz _Z10Com_FilterPKcS0_i_290
	mov ebx, [ebp+0xc]
	movzx ecx, byte [ebx]
	cmp al, cl
	jg _Z10Com_FilterPKcS0_i_300
	cmp dl, cl
	jge _Z10Com_FilterPKcS0_i_310
_Z10Com_FilterPKcS0_i_300:
	xor edx, edx
_Z10Com_FilterPKcS0_i_320:
	mov edi, [ebp-0x41c]
	mov esi, edi
	jmp _Z10Com_FilterPKcS0_i_260
_Z10Com_FilterPKcS0_i_290:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call toupper
	mov ebx, eax
	movsx eax, byte [esi]
	mov [esp], eax
	call toupper
	cmp ebx, eax
	jl _Z10Com_FilterPKcS0_i_300
	mov ecx, [ebp+0xc]
	movsx eax, byte [ecx]
	mov [esp], eax
	call toupper
	mov ebx, eax
	mov edx, [ebp-0x420]
	movsx eax, byte [edx]
	mov [esp], eax
	call toupper
	cmp ebx, eax
	jg _Z10Com_FilterPKcS0_i_300
_Z10Com_FilterPKcS0_i_310:
	mov edx, 0x1
	jmp _Z10Com_FilterPKcS0_i_320
_Z10Com_FilterPKcS0_i_50:
	movsx eax, al
	mov [esp], eax
	call toupper
	mov ebx, eax
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call toupper
	cmp ebx, eax
	jnz _Z10Com_FilterPKcS0_i_60
	add esi, 0x1
	jmp _Z10Com_FilterPKcS0_i_210
_Z10Com_FilterPKcS0_i_130:
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call strstr
	mov edx, eax
	jmp _Z10Com_FilterPKcS0_i_330
_Z10Com_FilterPKcS0_i_280:
	lea ecx, [esi+0x3]
	mov [ebp-0x41c], ecx
	cmp byte [esi+0x3], 0x5d
	jnz _Z10Com_FilterPKcS0_i_270
	jmp _Z10Com_FilterPKcS0_i_340
	nop


;Com_Memset(void*, int, int)
_Z10Com_MemsetPvii:
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
_Z11Com_HashKeyPKci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	test esi, esi
	jle _Z11Com_HashKeyPKci_10
	movzx eax, byte [edi]
	test al, al
	jz _Z11Com_HashKeyPKci_10
	xor ecx, ecx
	xor ebx, ebx
_Z11Com_HashKeyPKci_30:
	movsx eax, al
	lea edx, [ecx+0x77]
	imul eax, edx
	add ebx, eax
	add ecx, 0x1
	cmp esi, ecx
	jz _Z11Com_HashKeyPKci_20
	movzx eax, byte [edi+ecx]
	test al, al
	jnz _Z11Com_HashKeyPKci_30
_Z11Com_HashKeyPKci_20:
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
_Z11Com_HashKeyPKci_10:
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
_Z12Com_RealTimeP7qtime_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call time
	mov [ebp-0xc], eax
	test ebx, ebx
	jz _Z12Com_RealTimeP7qtime_s_10
	lea eax, [ebp-0xc]
	mov [esp], eax
	call localtime
	mov edx, eax
	test eax, eax
	jz _Z12Com_RealTimeP7qtime_s_20
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
_Z12Com_RealTimeP7qtime_s_20:
	mov eax, [ebp-0xc]
_Z12Com_RealTimeP7qtime_s_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Com_FilterPath(char const*, char const*, int)
_Z14Com_FilterPathPKcS0_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x90
	mov ecx, [ebp+0x8]
	mov esi, [ebp+0xc]
	xor edx, edx
	lea ebx, [ebp-0x48]
	jmp _Z14Com_FilterPathPKcS0_i_10
_Z14Com_FilterPathPKcS0_i_40:
	cmp al, 0x3a
	jz _Z14Com_FilterPathPKcS0_i_20
	mov [edx+ebx], al
	add edx, 0x1
	cmp edx, 0x3f
	jz _Z14Com_FilterPathPKcS0_i_30
_Z14Com_FilterPathPKcS0_i_10:
	movzx eax, byte [ecx+edx]
	test al, al
	jz _Z14Com_FilterPathPKcS0_i_30
	cmp al, 0x5c
	jnz _Z14Com_FilterPathPKcS0_i_40
_Z14Com_FilterPathPKcS0_i_20:
	mov byte [edx+ebx], 0x2f
	add edx, 0x1
	cmp edx, 0x3f
	jnz _Z14Com_FilterPathPKcS0_i_10
_Z14Com_FilterPathPKcS0_i_30:
	mov byte [ebp+edx-0x48], 0x0
	xor edx, edx
	lea ecx, [ebp-0x88]
	jmp _Z14Com_FilterPathPKcS0_i_50
_Z14Com_FilterPathPKcS0_i_80:
	cmp al, 0x3a
	jz _Z14Com_FilterPathPKcS0_i_60
	mov [edx+ecx], al
	add edx, 0x1
	cmp edx, 0x3f
	jz _Z14Com_FilterPathPKcS0_i_70
_Z14Com_FilterPathPKcS0_i_50:
	movzx eax, byte [esi+edx]
	test al, al
	jz _Z14Com_FilterPathPKcS0_i_70
	cmp al, 0x5c
	jnz _Z14Com_FilterPathPKcS0_i_80
_Z14Com_FilterPathPKcS0_i_60:
	mov byte [edx+ecx], 0x2f
	add edx, 0x1
	cmp edx, 0x3f
	jnz _Z14Com_FilterPathPKcS0_i_50
_Z14Com_FilterPathPKcS0_i_70:
	mov byte [ebp+edx-0x88], 0x0
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], ebx
	call _Z10Com_FilterPKcS0_i
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

