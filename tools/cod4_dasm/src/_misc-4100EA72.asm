;Imports of misc-4100EA72:
	extern Z_FreeInternal
	extern memmove
	extern ms_rand
	extern Z_MallocInternal
	extern fprintf
	extern exit
	extern memset

;Exports of misc-4100EA72:
	global speex_free
	global speex_move
	global speex_rand
	global speex_alloc
	global speex_error
	global speex_realloc
	global speex_warning
	global speex_rand_vec
	global speex_warning_int
	global speex_memset_bytes


SECTION .text


;speex_free(void*)
speex_free:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_FreeInternal
	nop


;speex_move(void*, void*, int)
speex_move:
	push ebp
	mov ebp, esp
	pop ebp
	jmp memmove
	nop


;speex_rand(float)
speex_rand:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	movss xmm1, dword [ebp+0x8]
	movss [ebp-0x28], xmm1
	call ms_rand
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [_float_3_00000000]
	cvtss2sd xmm1, xmm1
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_32767_00000000]
	cvtss2sd xmm0, xmm0
	subsd xmm0, [_double_0_50000000]
	mulsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ebp-0xc], xmm1
	fld dword [ebp-0xc]
	leave
	ret
	add [eax], al


;speex_alloc(int)
speex_alloc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Z_MallocInternal
	nop


;speex_error(char const*)
speex_error:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_fatal_error_s
	mov eax, [0xd5cc920]
	add eax, 0xb0
	mov [esp], eax
	call fprintf
	mov dword [esp], 0x1
	call exit
	nop


;speex_realloc(void*, int)
speex_realloc:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;speex_warning(char const*)
speex_warning:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s
	mov eax, [0xd5cc920]
	add eax, 0xb0
	mov [esp], eax
	call fprintf
	leave
	ret
	nop


;speex_rand_vec(float, float*, int)
speex_rand_vec:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x10]
	test edi, edi
	jg speex_rand_vec_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
speex_rand_vec_10:
	cvtss2sd xmm0, [ebp+0x8]
	mulsd xmm0, [_double_3_00000000]
	movsd [ebp-0x20], xmm0
	xor esi, esi
	mov ebx, [ebp+0xc]
speex_rand_vec_20:
	cvtss2sd xmm0, [ebx]
	movsd [ebp-0x28], xmm0
	call ms_rand
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_32767_00000000]
	cvtss2sd xmm0, xmm0
	subsd xmm0, [_double_0_50000000]
	mulsd xmm0, [ebp-0x20]
	addsd xmm0, [ebp-0x28]
	cvtsd2ss xmm0, xmm0
	movss [ebx], xmm0
	add esi, 0x1
	add ebx, 0x4
	cmp edi, esi
	jnz speex_rand_vec_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;speex_warning_int(char const*, int)
speex_warning_int:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_s_d
	mov eax, [0xd5cc920]
	add eax, 0xb0
	mov [esp], eax
	call fprintf
	leave
	ret


;speex_memset_bytes(char*, char, int)
speex_memset_bytes:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movsx eax, byte [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memset
	leave
	ret
	add [eax], al


;Initialized global or static variables of misc-4100EA72:
SECTION .data


;Initialized constant data of misc-4100EA72:
SECTION .rdata


;Zero initialized global or static variables of misc-4100EA72:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_fatal_error_s:		db "Fatal error: %s",0ah,0
_cstring_warning_s:		db "warning: %s",0ah,0
_cstring_warning_s_d:		db "warning: %s %d",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_3_00000000:		dd 0x40400000	; 3
_float_32767_00000000:		dd 0x46fffe00	; 32767
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_double_3_00000000:		dq 0x4008000000000000	; 3

