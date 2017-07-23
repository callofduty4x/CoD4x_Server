;Imports of encode:
	extern speex_nb_mode
	extern speex_encoder_init
	extern speex_bits_init
	extern speex_encoder_ctl
	extern Com_Printf
	extern speex_wb_mode
	extern speex_uwb_mode
	extern sv_voiceQuality
	extern speex_bits_reset
	extern speex_encode_int
	extern speex_bits_write
	extern speex_encoder_destroy
	extern speex_bits_destroy

;Exports of encode:
	global encodeBits
	global g_encoder
	global Encode_Init
	global Encode_Sample
	global Encode_Shutdown
	global Encode_SetOptions
	global Encode_GetFrameSize
	global g_current_bandwidth_setting
	global g_encoder_quality
	global g_encoder_samplerate
	global g_frame_size
	global g_speex_initialized


SECTION .text


;Encode_Init(int)
Encode_Init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp ebx, 0x1
	jz Encode_Init_10
	cmp ebx, 0x2
	jz Encode_Init_20
	test ebx, ebx
	jnz Encode_Init_30
	mov eax, speex_nb_mode
Encode_Init_40:
	mov [esp], eax
	call speex_encoder_init
	mov [g_encoder], eax
	mov dword [esp], encodeBits
	call speex_bits_init
	mov dword [g_speex_initialized], 0x1
	mov eax, [g_encoder_quality]
	mov [esp+0x4], eax
	mov eax, [g_encoder_samplerate]
	mov [esp], eax
	call Encode_SetOptions
	mov dword [esp+0x8], g_frame_size
	mov dword [esp+0x4], 0x3
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	mov [g_current_bandwidth_setting], ebx
	xor eax, eax
	cmp dword [g_encoder], 0x0
	setnz al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Encode_Init_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_bandwidt
	mov dword [esp], 0x9
	call Com_Printf
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Encode_Init_10:
	mov eax, speex_wb_mode
	jmp Encode_Init_40
Encode_Init_20:
	mov eax, speex_uwb_mode
	jmp Encode_Init_40
	nop


;Encode_Sample(short*, char*, int)
Encode_Sample:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, sv_voiceQuality
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp eax, [g_encoder_quality]
	jz Encode_Sample_10
	mov [g_encoder_quality], eax
	mov dword [esp+0x8], g_encoder_quality
	mov dword [esp+0x4], 0x4
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
Encode_Sample_10:
	mov dword [esp], encodeBits
	call speex_bits_reset
	mov dword [esp+0x8], encodeBits
	mov [esp+0x4], ebx
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encode_int
	mov [ebp+0x10], esi
	mov [ebp+0xc], edi
	mov dword [ebp+0x8], encodeBits
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp speex_bits_write


;Encode_Shutdown()
Encode_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_encoder]
	test eax, eax
	jz Encode_Shutdown_10
	mov [esp], eax
	call speex_encoder_destroy
Encode_Shutdown_10:
	mov dword [g_encoder], 0x0
	mov eax, [g_speex_initialized]
	test eax, eax
	jz Encode_Shutdown_20
	mov dword [esp], encodeBits
	call speex_bits_destroy
	mov dword [g_speex_initialized], 0x0
Encode_Shutdown_20:
	mov eax, 0x1
	leave
	ret
	nop
	add [eax], al


;Encode_SetOptions(int, int)
Encode_SetOptions:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov byte [ebp-0x9], 0x1
	lea eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	lea eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	mov dword [esp+0x8], g_frame_size
	mov dword [esp+0x4], 0x3
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	lea ebx, [ebp-0x9]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1e
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x22
	mov eax, [g_encoder]
	mov [esp], eax
	call speex_encoder_ctl
	mov eax, [ebp+0xc]
	mov [g_encoder_quality], eax
	mov eax, [ebp+0x8]
	mov [g_encoder_samplerate], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Encode_GetFrameSize()
Encode_GetFrameSize:
	push ebp
	mov ebp, esp
	mov eax, [g_frame_size]
	pop ebp
	ret


;Initialized global or static variables of encode:
SECTION .data
g_current_bandwidth_setting: dd 0x0
g_encoder_quality: dd 0x1, 0x0, 0x0, 0x0, 0x0
g_encoder_samplerate: dd 0x1f40
g_frame_size: dd 0x0
g_speex_initialized: dd 0x0


;Initialized constant data of encode:
SECTION .rdata


;Zero initialized global or static variables of encode:
SECTION .bss
encodeBits: resb 0x24
g_encoder: resb 0x5c


;All cstrings:
SECTION .rdata
_cstring_unknown_bandwidt:		db "Unknown bandwidth mode %i",0ah,0



;All constant floats and doubles:
SECTION .rdata

