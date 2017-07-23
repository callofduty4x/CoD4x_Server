;Imports of decode:
	extern speex_nb_mode
	extern speex_decoder_init
	extern speex_decoder_ctl
	extern g_encoder_samplerate
	extern speex_bits_init
	extern Com_Printf
	extern speex_wb_mode
	extern speex_uwb_mode
	extern speex_bits_read_from
	extern speex_decode
	extern speex_bits_destroy
	extern speex_decoder_destroy

;Exports of decode:
	global decodeBits
	global Decode_Init
	global Decode_Sample
	global Decode_Shutdown
	global g_current_decode_bandwidth_setting
	global g_decode_frame_size
	global g_decoder


SECTION .text


;Decode_Init(int)
Decode_Init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov dword [ebp-0xc], 0x1
	cmp ebx, 0x1
	jz Decode_Init_10
	cmp ebx, 0x2
	jz Decode_Init_20
	test ebx, ebx
	jnz Decode_Init_30
	mov eax, speex_nb_mode
Decode_Init_40:
	mov [esp], eax
	call speex_decoder_init
	mov [g_decoder], eax
	lea edx, [ebp-0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call speex_decoder_ctl
	mov eax, g_encoder_samplerate
	mov eax, [eax]
	mov [ebp-0x10], eax
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov eax, [g_decoder]
	mov [esp], eax
	call speex_decoder_ctl
	mov dword [esp+0x8], g_decode_frame_size
	mov dword [esp+0x4], 0x3
	mov eax, [g_decoder]
	mov [esp], eax
	call speex_decoder_ctl
	mov [g_current_decode_bandwidth_setting], ebx
	mov dword [esp], decodeBits
	call speex_bits_init
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Decode_Init_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_bandwidt
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Decode_Init_10:
	mov eax, speex_wb_mode
	jmp Decode_Init_40
Decode_Init_20:
	mov eax, speex_uwb_mode
	jmp Decode_Init_40


;Decode_Sample(char*, int, short*, int)
Decode_Sample:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4014
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], decodeBits
	call speex_bits_read_from
	lea eax, [ebp-0x4008]
	mov [esp+0x8], eax
	mov dword [esp+0x4], decodeBits
	mov eax, [g_decoder]
	mov [esp], eax
	call speex_decode
	test eax, eax
	jz Decode_Sample_10
	xor ecx, ecx
Decode_Sample_20:
	mov eax, ecx
	add esp, 0x4014
	pop ebx
	pop ebp
	ret
Decode_Sample_10:
	mov ecx, [ebp+0x14]
	add ecx, ecx
	test ecx, ecx
	jle Decode_Sample_20
	xor edx, edx
Decode_Sample_30:
	cvttss2si eax, [ebp+edx*4-0x4008]
	mov [ebx+edx*2], ax
	add edx, 0x1
	cmp edx, ecx
	jnz Decode_Sample_30
	mov eax, ecx
	add esp, 0x4014
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;Decode_Shutdown()
Decode_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_decoder]
	test eax, eax
	jz Decode_Shutdown_10
	mov dword [esp], decodeBits
	call speex_bits_destroy
	mov eax, [g_decoder]
	mov [esp], eax
	call speex_decoder_destroy
Decode_Shutdown_10:
	mov dword [g_decoder], 0x0
	leave
	ret


;Initialized global or static variables of decode:
SECTION .data
g_current_decode_bandwidth_setting: dd 0x0
g_decoder: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of decode:
SECTION .rdata


;Zero initialized global or static variables of decode:
SECTION .bss
decodeBits: resb 0x80
g_decode_frame_size: resb 0x20


;All cstrings:
SECTION .rdata
_cstring_unknown_bandwidt:		db "Unknown bandwidth mode %i",0ah,0



;All constant floats and doubles:
SECTION .rdata

