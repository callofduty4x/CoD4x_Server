;Imports of speex_callbacks:
	extern speex_bits_unpack_unsigned
	extern speex_bits_advance

;Exports of speex_callbacks:
	global speex_inband_handler
	global speex_default_user_handler


SECTION .text


;speex_inband_handler(SpeexBits*, SpeexCallback*, void*)
speex_inband_handler:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call speex_bits_unpack_unsigned
	mov edx, eax
	lea eax, [eax+eax*4]
	lea eax, [ebx+eax*4]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz speex_inband_handler_10
	mov eax, [eax+0x8]
	mov [ebp+0x10], eax
	mov [ebp+0xc], edi
	mov [ebp+0x8], esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp ecx
speex_inband_handler_10:
	cmp edx, 0x1
	jle speex_inband_handler_20
	cmp edx, 0x7
	jle speex_inband_handler_30
	cmp edx, 0x9
	jg speex_inband_handler_40
	mov ecx, 0x8
	jmp speex_inband_handler_50
speex_inband_handler_30:
	mov ecx, 0x4
speex_inband_handler_50:
	mov [esp+0x4], ecx
	mov [esp], esi
	call speex_bits_advance
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
speex_inband_handler_20:
	mov ecx, 0x1
	jmp speex_inband_handler_50
speex_inband_handler_40:
	cmp edx, 0xb
	jle speex_inband_handler_60
	mov ecx, 0x20
	cmp edx, 0xd
	mov eax, 0x40
	cmovg ecx, eax
	jmp speex_inband_handler_50
speex_inband_handler_60:
	mov ecx, 0x10
	jmp speex_inband_handler_50


;speex_default_user_handler(SpeexBits*, void*, void*)
speex_default_user_handler:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call speex_bits_unpack_unsigned
	lea eax, [eax*8+0x5]
	mov [esp+0x4], eax
	mov [esp], ebx
	call speex_bits_advance
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of speex_callbacks:
SECTION .data


;Initialized constant data of speex_callbacks:
SECTION .rdata


;Zero initialized global or static variables of speex_callbacks:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

