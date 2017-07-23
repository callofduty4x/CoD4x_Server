;Imports of record:
	extern current_audioCallback
	extern DSOUNDRecord_Init
	extern DSOUNDRecord_Stop
	extern DSOUNDRecord_Frame
	extern DSOUNDRecord_Start
	extern Encode_Shutdown
	extern DSOUNDRecord_Shutdown
	extern DSOUNDRecord_NewSample
	extern DSOUNDRecord_DestroySample
	extern voice_current_voicelevel
	extern Voice_SendVoiceData
	extern IN_IsTalkKeyHeld
	extern CL_VoiceTransmit
	extern voice_current_scaler
	extern Encode_GetFrameSize
	extern memcpy
	extern Encode_Sample
	extern Client_SendVoiceData
	extern Com_Printf

;Exports of record:
	global Record_Init
	global Record_Stop
	global Record_Frame
	global Record_Start
	global Record_Shutdown
	global Record_NewSample
	global Record_AudioCallback
	global Record_DestroySample
	global Record_QueueAudioDataForEncoding
	global enc_buffer
	global enc_buffer_pos
	global partial_audio_buffer
	global samples_in_partial_audio_buffer


SECTION .text


;Record_Init(unsigned char, void const*)
Record_Init:
	push ebp
	mov ebp, esp
	mov eax, current_audioCallback
	mov dword [eax], Record_AudioCallback
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp DSOUNDRecord_Init
	add [eax], al


;Record_Stop(dsound_sample_t*)
Record_Stop:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSOUNDRecord_Stop
	nop


;Record_Frame()
Record_Frame:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSOUNDRecord_Frame
	nop


;Record_Start(dsound_sample_t*)
Record_Start:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSOUNDRecord_Start
	nop


;Record_Shutdown()
Record_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Encode_Shutdown
	leave
	jmp DSOUNDRecord_Shutdown
	nop


;Record_NewSample()
Record_NewSample:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSOUNDRecord_NewSample
	nop


;Record_AudioCallback(audioSample_t*)
Record_AudioCallback:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Record_QueueAudioDataForEncoding
	nop


;Record_DestroySample(dsound_sample_t*)
Record_DestroySample:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSOUNDRecord_DestroySample
	nop


;Record_QueueAudioDataForEncoding(audioSample_t*)
Record_QueueAudioDataForEncoding:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov edi, [ebp+0x8]
	mov esi, voice_current_voicelevel
	mov dword [esi], 0x0
	cmp dword [edi+0xc], 0x2
	jz Record_QueueAudioDataForEncoding_10
Record_QueueAudioDataForEncoding_40:
	call Voice_SendVoiceData
	test al, al
	jnz Record_QueueAudioDataForEncoding_20
Record_QueueAudioDataForEncoding_140:
	mov dword [ebp-0x2020], 0x0
Record_QueueAudioDataForEncoding_90:
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Record_QueueAudioDataForEncoding_20:
	call IN_IsTalkKeyHeld
	test al, al
	jnz Record_QueueAudioDataForEncoding_30
	mov dword [esp], 0x0
	call CL_VoiceTransmit
	mov dword [ebp-0x2020], 0x0
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Record_QueueAudioDataForEncoding_10:
	mov edx, [edi+0x8]
	test edx, edx
	jle Record_QueueAudioDataForEncoding_40
	xor ebx, ebx
Record_QueueAudioDataForEncoding_50:
	lea ecx, [ebx+ebx]
	mov edx, ecx
	add edx, [edi]
	movsx eax, word [edx]
	cvtsi2ss xmm0, eax
	mov eax, voice_current_scaler
	mulss xmm0, [eax]
	cvttss2si eax, xmm0
	mov [edx], ax
	mov eax, [edi]
	movsx eax, word [eax+ecx]
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	cvtsi2ss xmm1, eax
	addss xmm1, [esi]
	movss [esi], xmm1
	add ebx, 0x1
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl Record_QueueAudioDataForEncoding_50
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss [esi], xmm1
	jmp Record_QueueAudioDataForEncoding_40
Record_QueueAudioDataForEncoding_30:
	call Encode_GetFrameSize
	mov [ebp-0x201c], eax
	mov dword [edi+0x1c], 0x0
	test eax, eax
	jle Record_QueueAudioDataForEncoding_60
	mov eax, [edi+0x4]
	test eax, eax
	jle Record_QueueAudioDataForEncoding_70
	mov ecx, [edi+0x8]
	mov ebx, [samples_in_partial_audio_buffer]
	lea eax, [ebx+ecx]
	cmp [ebp-0x201c], eax
	jle Record_QueueAudioDataForEncoding_80
	mov dword [ebp-0x2020], 0x0
	xor esi, esi
Record_QueueAudioDataForEncoding_110:
	cmp ecx, esi
	jle Record_QueueAudioDataForEncoding_90
	mov eax, [edi+0xc]
	lea edx, [ebx+ebx+partial_audio_buffer]
	sub ecx, esi
	imul ecx, eax
	imul eax, esi
	add eax, [edi]
	mov [esp+0x8], ecx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, [edi+0x8]
	sub eax, [edi+0x1c]
	add [samples_in_partial_audio_buffer], eax
	jmp Record_QueueAudioDataForEncoding_90
Record_QueueAudioDataForEncoding_80:
	mov dword [ebp-0x2020], 0x0
	jmp Record_QueueAudioDataForEncoding_100
Record_QueueAudioDataForEncoding_120:
	xor edx, edx
Record_QueueAudioDataForEncoding_130:
	mov ebx, [ebp-0x201c]
	sub ebx, edx
	mov eax, [edi+0xc]
	lea ecx, [ebp+edx*2-0x2018]
	mov edx, ebx
	imul edx, eax
	imul eax, [edi+0x1c]
	add eax, [edi]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov [esp], ecx
	call memcpy
	add [edi+0x1c], ebx
	mov edx, [enc_buffer_pos]
	mov eax, 0x1000
	sub eax, edx
	mov [esp+0x8], eax
	add edx, enc_buffer
	mov [esp+0x4], edx
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call Encode_Sample
	add [ebp-0x2020], eax
	mov edx, [enc_buffer_pos]
	add edx, enc_buffer
	mov [esp+0x4], edx
	mov [esp], eax
	call Client_SendVoiceData
	mov ecx, [edi+0x8]
	mov esi, [edi+0x1c]
	mov ebx, [samples_in_partial_audio_buffer]
	mov eax, ecx
	sub eax, esi
	add eax, ebx
	cmp [ebp-0x201c], eax
	jg Record_QueueAudioDataForEncoding_110
Record_QueueAudioDataForEncoding_100:
	test ebx, ebx
	jz Record_QueueAudioDataForEncoding_120
	mov eax, [ebp-0x201c]
	sub eax, 0x4
	cmp ebx, eax
	cmovge ebx, eax
	mov [samples_in_partial_audio_buffer], ebx
	mov eax, ebx
	imul eax, [edi+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], partial_audio_buffer
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call memcpy
	sub [samples_in_partial_audio_buffer], ebx
	mov edx, ebx
	jmp Record_QueueAudioDataForEncoding_130
Record_QueueAudioDataForEncoding_70:
	mov eax, [edi+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_sample_l
	mov dword [esp], 0x9
	call Com_Printf
	jmp Record_QueueAudioDataForEncoding_140
Record_QueueAudioDataForEncoding_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_encode_f
	mov dword [esp], 0x9
	call Com_Printf
	mov dword [ebp-0x2020], 0x0
	jmp Record_QueueAudioDataForEncoding_90
	nop


;Initialized global or static variables of record:
SECTION .data
enc_buffer_pos: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
samples_in_partial_audio_buffer: dd 0x0


;Initialized constant data of record:
SECTION .rdata


;Zero initialized global or static variables of record:
SECTION .bss
enc_buffer: resb 0x1000
partial_audio_buffer: resb 0x500


;All cstrings:
SECTION .rdata
_cstring_invalid_sample_l:		db "Invalid sample length of %i samples",0ah,0
_cstring_invalid_encode_f:		db "Invalid encode frame size of %i",0ah,0



;All constant floats and doubles:
SECTION .rdata

