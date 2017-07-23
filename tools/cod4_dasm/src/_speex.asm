;Imports of speex:
	extern speex_warning_int

;Exports of speex:
	global speex_decode
	global nb_mode_query
	global wb_mode_query
	global speex_encode_int
	global speex_decoder_ctl
	global speex_encoder_ctl
	global speex_decoder_init
	global speex_encoder_init
	global speex_decode_native
	global speex_encode_native
	global speex_decoder_destroy
	global speex_encoder_destroy


SECTION .text


;speex_decode(void*, SpeexBits*, float*)
speex_decode:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x28]
	pop ebp
	jmp ecx


;nb_mode_query(void const*, int, void*)
nb_mode_query:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	test eax, eax
	jz nb_mode_query_10
	cmp eax, 0x1
	jz nb_mode_query_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_nb_mode_
	call speex_warning_int
	mov eax, 0xffffffff
	leave
	ret
nb_mode_query_10:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [ebp+0x10]
	mov [edx], eax
	xor eax, eax
	leave
	ret
nb_mode_query_20:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	test eax, eax
	jnz nb_mode_query_30
	mov dword [edx], 0x5
	leave
	ret
nb_mode_query_30:
	mov edx, [ebp+0x8]
	mov eax, [edx+eax*4+0x24]
	test eax, eax
	jz nb_mode_query_40
	mov eax, [eax+0x40]
	mov edx, [ebp+0x10]
	mov [edx], eax
	xor eax, eax
	leave
	ret
nb_mode_query_40:
	mov eax, [ebp+0x10]
	mov dword [eax], 0xffffffff
	xor eax, eax
	leave
	ret


;wb_mode_query(void const*, int, void*)
wb_mode_query:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	test eax, eax
	jz wb_mode_query_10
	cmp eax, 0x1
	jz wb_mode_query_20
	mov [esp+0x4], eax
	mov dword [esp], _cstring_unknown_wb_mode_
	call speex_warning_int
	mov eax, 0xffffffff
	leave
	ret
wb_mode_query_10:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	add eax, eax
	mov edx, [ebp+0x10]
	mov [edx], eax
	xor eax, eax
	leave
	ret
wb_mode_query_20:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	test eax, eax
	jnz wb_mode_query_30
	mov dword [edx], 0x4
	leave
	ret
wb_mode_query_30:
	mov edx, [ebp+0x8]
	mov eax, [edx+eax*4+0x28]
	test eax, eax
	jz wb_mode_query_40
	mov eax, [eax+0x40]
	mov edx, [ebp+0x10]
	mov [edx], eax
	xor eax, eax
	leave
	ret
wb_mode_query_40:
	mov eax, [ebp+0x10]
	mov dword [eax], 0xffffffff
	xor eax, eax
	leave
	ret
	nop
	add [eax], al


;speex_encode_int(void*, short*, SpeexBits*)
speex_encode_int:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0xa20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, [ebx]
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call dword [edx+0x2c]
	mov ecx, [ebp-0xc]
	test ecx, ecx
	jle speex_encode_int_10
	xor edx, edx
speex_encode_int_20:
	movsx eax, word [esi+edx*2]
	cvtsi2ss xmm0, eax
	movss [ebp+edx*4-0xa0c], xmm0
	add edx, 0x1
	cmp ecx, edx
	jnz speex_encode_int_20
speex_encode_int_10:
	mov edx, [ebx]
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0xa0c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call dword [edx+0x1c]
	add esp, 0xa20
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;speex_decoder_ctl(void*, int, void*)
speex_decoder_ctl:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x30]
	pop ebp
	jmp ecx


;speex_encoder_ctl(void*, int, void*)
speex_encoder_ctl:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x2c]
	pop ebp
	jmp ecx


;speex_decoder_init(SpeexMode const*)
speex_decoder_init:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x20]
	pop ebp
	jmp ecx


;speex_encoder_init(SpeexMode const*)
speex_encoder_init:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x14]
	pop ebp
	jmp ecx


;speex_decode_native(void*, SpeexBits*, float*)
speex_decode_native:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x28]
	pop ebp
	jmp ecx
	add [eax], al


;speex_encode_native(void*, float*, SpeexBits*)
speex_encode_native:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [edx]
	mov ecx, [ecx+0x1c]
	pop ebp
	jmp ecx


;speex_decoder_destroy(void*)
speex_decoder_destroy:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [edx+0x24]
	pop ebp
	jmp ecx


;speex_encoder_destroy(void*)
speex_encoder_destroy:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [edx+0x18]
	pop ebp
	jmp ecx


;Initialized global or static variables of speex:
SECTION .data


;Initialized constant data of speex:
SECTION .rdata


;Zero initialized global or static variables of speex:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_unknown_nb_mode_:		db "Unknown nb_mode_query request: ",0
_cstring_unknown_wb_mode_:		db "Unknown wb_mode_query request: ",0



;All constant floats and doubles:
SECTION .rdata

