;Imports of bits:
	extern speex_alloc
	extern speex_warning
	extern speex_realloc
	extern speex_memset_bytes
	extern speex_free
	extern speex_warning_int

;Exports of bits:
	global speex_bits_init
	global speex_bits_pack
	global speex_bits_peek
	global speex_bits_reset
	global speex_bits_write
	global speex_bits_advance
	global speex_bits_destroy
	global speex_bits_read_from
	global speex_bits_remaining
	global speex_bits_unpack_unsigned


SECTION .text


;speex_bits_init(SpeexBits*)
speex_bits_init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x7d0
	call speex_alloc
	mov [ebx], eax
	mov dword [ebx+0x18], 0x7d0
	mov byte [eax], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0xc], 0x0
	mov dword [ebx+0x10], 0x1
	mov dword [ebx+0x14], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;speex_bits_pack(SpeexBits*, int, int)
speex_bits_pack:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov ecx, [ebp+0x10]
	mov [ebp-0x20], ecx
	mov eax, ecx
	add eax, [ebx+0xc]
	sar eax, 0x3
	add eax, [ebx+0x8]
	cmp eax, [ebx+0x18]
	jge speex_bits_pack_10
speex_bits_pack_70:
	mov eax, [ebp-0x20]
	test eax, eax
	jz speex_bits_pack_20
	mov esi, [ebp-0x20]
	xor edi, edi
	jmp speex_bits_pack_30
speex_bits_pack_40:
	add dword [ebx+0x4], 0x1
	add edi, 0x1
	cmp [ebp-0x20], edi
	jz speex_bits_pack_20
speex_bits_pack_30:
	sub esi, 0x1
	mov edx, [ebx]
	add edx, [ebx+0x8]
	mov eax, [ebp-0x1c]
	mov ecx, esi
	shr eax, cl
	and eax, 0x1
	mov ecx, 0x7
	sub ecx, [ebx+0xc]
	shl eax, cl
	or [edx], al
	mov eax, [ebx+0xc]
	add eax, 0x1
	mov [ebx+0xc], eax
	cmp eax, 0x8
	jnz speex_bits_pack_40
	mov dword [ebx+0xc], 0x0
	mov edx, [ebx+0x8]
	add edx, 0x1
	mov [ebx+0x8], edx
	mov eax, [ebx]
	mov byte [eax+edx], 0x0
	add dword [ebx+0x4], 0x1
	add edi, 0x1
	cmp [ebp-0x20], edi
	jnz speex_bits_pack_30
speex_bits_pack_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
speex_bits_pack_10:
	mov dword [esp], _cstring_buffer_too_small
	call speex_warning
	mov eax, [ebx+0x10]
	test eax, eax
	jnz speex_bits_pack_50
	mov dword [ebp+0x8], _cstring_do_not_own_input
speex_bits_pack_80:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp speex_warning
speex_bits_pack_50:
	mov eax, [ebx+0x18]
	lea edi, [eax+eax*2+0xf]
	sar edi, 1
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call speex_realloc
	mov esi, eax
	test eax, eax
	jz speex_bits_pack_60
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call speex_memset_bytes
	mov [ebx+0x18], edi
	mov [ebx], esi
	jmp speex_bits_pack_70
speex_bits_pack_60:
	mov dword [ebp+0x8], _cstring_could_not_resize
	jmp speex_bits_pack_80


;speex_bits_peek(SpeexBits*)
speex_bits_peek:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x8]
	mov ebx, [edx+0xc]
	lea eax, [ebx+ecx*8+0x1]
	cmp eax, [edx+0x4]
	jle speex_bits_peek_10
	mov dword [edx+0x14], 0x1
speex_bits_peek_10:
	mov eax, [edx+0x14]
	test eax, eax
	jnz speex_bits_peek_20
	mov eax, [edx]
	movsx eax, byte [eax+ecx]
	mov ecx, 0x7
	sub ecx, ebx
	sar eax, cl
	and eax, 0x1
	pop ebx
	pop ebp
	ret
speex_bits_peek_20:
	xor eax, eax
	pop ebx
	pop ebp
	ret


;speex_bits_reset(SpeexBits*)
speex_bits_reset:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov byte [edx], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov dword [eax+0x14], 0x0
	pop ebp
	ret
	nop
	add [eax], al


;speex_bits_write(SpeexBits*, char*, int)
speex_bits_write:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0xc]
	mov eax, [ebx+0x8]
	mov [ebp-0x1c], eax
	mov edi, [ebx+0x4]
	cmp esi, 0x6
	jle speex_bits_write_10
speex_bits_write_60:
	cmp dword [ebx+0xc], 0x6
	jle speex_bits_write_20
speex_bits_write_50:
	mov [ebx+0xc], esi
	mov esi, [ebp-0x1c]
	mov [ebx+0x8], esi
	mov [ebx+0x4], edi
	lea ecx, [edi+0x7]
	sar ecx, 0x3
	cmp [ebp+0x10], ecx
	cmovle ecx, [ebp+0x10]
	test ecx, ecx
	jle speex_bits_write_30
	xor edx, edx
speex_bits_write_40:
	mov eax, [ebx]
	movzx eax, byte [eax+edx]
	mov esi, [ebp+0xc]
	mov [edx+esi], al
	add edx, 0x1
	cmp ecx, edx
	jnz speex_bits_write_40
speex_bits_write_30:
	mov eax, ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
speex_bits_write_20:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call speex_bits_pack
	cmp dword [ebx+0xc], 0x6
	jg speex_bits_write_50
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call speex_bits_pack
	cmp dword [ebx+0xc], 0x6
	jle speex_bits_write_20
	jmp speex_bits_write_50
speex_bits_write_10:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call speex_bits_pack
	jmp speex_bits_write_60


;speex_bits_advance(SpeexBits*, int)
speex_bits_advance:
	push ebp
	mov ebp, esp
	push ebx
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0x8]
	mov edx, [ecx+0xc]
	lea eax, [edx+ebx*8]
	add eax, [ebp+0xc]
	cmp eax, [ecx+0x4]
	jg speex_bits_advance_10
	mov eax, [ecx+0x14]
	test eax, eax
	jnz speex_bits_advance_10
	add edx, [ebp+0xc]
	mov eax, edx
	sar eax, 0x3
	lea eax, [ebx+eax]
	mov [ecx+0x8], eax
	and edx, 0x7
	mov [ecx+0xc], edx
	pop ebx
	pop ebp
	ret
speex_bits_advance_10:
	mov dword [ecx+0x14], 0x1
	pop ebx
	pop ebp
	ret


;speex_bits_destroy(SpeexBits*)
speex_bits_destroy:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax+0x10]
	test edx, edx
	jnz speex_bits_destroy_10
	pop ebp
	ret
speex_bits_destroy_10:
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp speex_free


;speex_bits_read_from(SpeexBits*, char*, int)
speex_bits_read_from:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	cmp [esi+0x18], ebx
	jl speex_bits_read_from_10
speex_bits_read_from_60:
	test ebx, ebx
	jle speex_bits_read_from_20
	xor ecx, ecx
speex_bits_read_from_30:
	mov edx, [esi]
	movzx eax, byte [edi+ecx]
	mov [edx+ecx], al
	add ecx, 0x1
	cmp ebx, ecx
	jnz speex_bits_read_from_30
speex_bits_read_from_20:
	lea eax, [ebx*8]
	mov [esi+0x4], eax
	mov dword [esi+0x8], 0x0
	mov dword [esi+0xc], 0x0
	mov dword [esi+0x14], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
speex_bits_read_from_10:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_packet_if_larger
	call speex_warning_int
	mov ecx, [esi+0x10]
	test ecx, ecx
	jz speex_bits_read_from_40
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call speex_realloc
	test eax, eax
	jz speex_bits_read_from_50
	mov [esi+0x18], ebx
	mov [esi], eax
	jmp speex_bits_read_from_60
speex_bits_read_from_40:
	mov dword [esp], _cstring_do_not_own_input1
	call speex_warning
	mov ebx, [esi+0x18]
	jmp speex_bits_read_from_60
speex_bits_read_from_50:
	mov ebx, [esi+0x18]
	mov dword [esp], _cstring_could_not_resize1
	call speex_warning
	jmp speex_bits_read_from_60
	nop
	add [eax], al


;speex_bits_remaining(SpeexBits*)
speex_bits_remaining:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x14]
	test eax, eax
	jnz speex_bits_remaining_10
	mov eax, [ecx+0x8]
	mov edx, [ecx+0xc]
	lea eax, [edx+eax*8]
	mov edx, [ecx+0x4]
	sub edx, eax
	mov eax, edx
	pop ebp
	ret
speex_bits_remaining_10:
	mov edx, 0xffffffff
	mov eax, edx
	pop ebp
	ret


;speex_bits_unpack_unsigned(SpeexBits*, int)
speex_bits_unpack_unsigned:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x8]
	mov edx, [ebx+0xc]
	lea eax, [edx+esi*8]
	add eax, [ebp+0xc]
	cmp eax, [ebx+0x4]
	jle speex_bits_unpack_unsigned_10
	mov dword [ebx+0x14], 0x1
speex_bits_unpack_unsigned_10:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz speex_bits_unpack_unsigned_20
	mov eax, [ebp+0xc]
	test eax, eax
	jz speex_bits_unpack_unsigned_20
	xor edi, edi
	mov dword [ebp-0x10], 0x0
	mov eax, [ebx]
	mov [ebp-0x14], eax
	mov ecx, eax
	jmp speex_bits_unpack_unsigned_30
speex_bits_unpack_unsigned_50:
	add dword [ebp-0x10], 0x1
	mov eax, [ebp-0x10]
	cmp [ebp+0xc], eax
	jz speex_bits_unpack_unsigned_40
	mov esi, [ebx+0x8]
	mov edx, [ebx+0xc]
	mov ecx, [ebp-0x14]
speex_bits_unpack_unsigned_30:
	add edi, edi
	movsx eax, byte [ecx+esi]
	mov ecx, 0x7
	sub ecx, edx
	sar eax, cl
	and eax, 0x1
	or edi, eax
	add edx, 0x1
	mov [ebx+0xc], edx
	cmp edx, 0x8
	jnz speex_bits_unpack_unsigned_50
	mov dword [ebx+0xc], 0x0
	lea eax, [esi+0x1]
	mov [ebx+0x8], eax
	jmp speex_bits_unpack_unsigned_50
speex_bits_unpack_unsigned_20:
	xor edi, edi
speex_bits_unpack_unsigned_40:
	mov eax, edi
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;Initialized global or static variables of bits:
SECTION .data


;Initialized constant data of bits:
SECTION .rdata


;Zero initialized global or static variables of bits:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_buffer_too_small:		db "Buffer too small to pack bits",0
_cstring_do_not_own_input:		db "Do not own input buffer: not packing",0
_cstring_could_not_resize:		db "Could not resize input buffer: not packing",0
_cstring_packet_if_larger:		db "Packet if larger than allocated buffer: ",0
_cstring_do_not_own_input1:		db "Do not own input buffer: truncating input",0
_cstring_could_not_resize1:		db "Could not resize input buffer: truncating input",0



;All constant floats and doubles:
SECTION .rdata

