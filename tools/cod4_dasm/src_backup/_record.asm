;Imports of record:
	extern current_audioCallback
	extern _Z17DSOUNDRecord_InithPKv
	extern _Z17DSOUNDRecord_StopP15dsound_sample_t
	extern _Z18DSOUNDRecord_Framev
	extern _Z18DSOUNDRecord_StartP15dsound_sample_t
	extern _Z15Encode_Shutdownv
	extern _Z21DSOUNDRecord_Shutdownv
	extern _Z22DSOUNDRecord_NewSamplev
	extern _Z26DSOUNDRecord_DestroySampleP15dsound_sample_t
	extern voice_current_voicelevel
	extern _Z19Voice_SendVoiceDatav
	extern _Z16IN_IsTalkKeyHeldv
	extern _Z16CL_VoiceTransmiti
	extern voice_current_scaler
	extern _Z19Encode_GetFrameSizev
	extern memcpy
	extern _Z13Encode_SamplePsPci
	extern _Z20Client_SendVoiceDataiPc
	extern _Z10Com_PrintfiPKcz

;Exports of record:
	global _Z11Record_InithPKv
	global _Z11Record_StopP15dsound_sample_t
	global _Z12Record_Framev
	global _Z12Record_StartP15dsound_sample_t
	global _Z15Record_Shutdownv
	global _Z16Record_NewSamplev
	global _Z20Record_AudioCallbackP13audioSample_t
	global _Z20Record_DestroySampleP15dsound_sample_t
	global _Z32Record_QueueAudioDataForEncodingP13audioSample_t
	global enc_buffer
	global enc_buffer_pos
	global partial_audio_buffer
	global samples_in_partial_audio_buffer


SECTION .text


;Record_Init(unsigned char, void const*)
_Z11Record_InithPKv:
	push ebp
	mov ebp, esp
	mov eax, current_audioCallback
	mov dword [eax], _Z20Record_AudioCallbackP13audioSample_t
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp _Z17DSOUNDRecord_InithPKv
	add [eax], al


;Record_Stop(dsound_sample_t*)
_Z11Record_StopP15dsound_sample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z17DSOUNDRecord_StopP15dsound_sample_t
	nop


;Record_Frame()
_Z12Record_Framev:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18DSOUNDRecord_Framev
	nop


;Record_Start(dsound_sample_t*)
_Z12Record_StartP15dsound_sample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18DSOUNDRecord_StartP15dsound_sample_t
	nop


;Record_Shutdown()
_Z15Record_Shutdownv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z15Encode_Shutdownv
	leave
	jmp _Z21DSOUNDRecord_Shutdownv
	nop


;Record_NewSample()
_Z16Record_NewSamplev:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z22DSOUNDRecord_NewSamplev
	nop


;Record_AudioCallback(audioSample_t*)
_Z20Record_AudioCallbackP13audioSample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t
	nop


;Record_DestroySample(dsound_sample_t*)
_Z20Record_DestroySampleP15dsound_sample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z26DSOUNDRecord_DestroySampleP15dsound_sample_t
	nop


;Record_QueueAudioDataForEncoding(audioSample_t*)
_Z32Record_QueueAudioDataForEncodingP13audioSample_t:
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
	jz _Z32Record_QueueAudioDataForEncodingP13audioSample_t_10
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_40:
	call _Z19Voice_SendVoiceDatav
	test al, al
	jnz _Z32Record_QueueAudioDataForEncodingP13audioSample_t_20
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_140:
	mov dword [ebp-0x2020], 0x0
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_90:
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_20:
	call _Z16IN_IsTalkKeyHeldv
	test al, al
	jnz _Z32Record_QueueAudioDataForEncodingP13audioSample_t_30
	mov dword [esp], 0x0
	call _Z16CL_VoiceTransmiti
	mov dword [ebp-0x2020], 0x0
	mov eax, [ebp-0x2020]
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_10:
	mov edx, [edi+0x8]
	test edx, edx
	jle _Z32Record_QueueAudioDataForEncodingP13audioSample_t_40
	xor ebx, ebx
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_50:
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
	jl _Z32Record_QueueAudioDataForEncodingP13audioSample_t_50
	cvtsi2ss xmm0, eax
	divss xmm1, xmm0
	movss [esi], xmm1
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_40
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_30:
	call _Z19Encode_GetFrameSizev
	mov [ebp-0x201c], eax
	mov dword [edi+0x1c], 0x0
	test eax, eax
	jle _Z32Record_QueueAudioDataForEncodingP13audioSample_t_60
	mov eax, [edi+0x4]
	test eax, eax
	jle _Z32Record_QueueAudioDataForEncodingP13audioSample_t_70
	mov ecx, [edi+0x8]
	mov ebx, [samples_in_partial_audio_buffer]
	lea eax, [ebx+ecx]
	cmp [ebp-0x201c], eax
	jle _Z32Record_QueueAudioDataForEncodingP13audioSample_t_80
	mov dword [ebp-0x2020], 0x0
	xor esi, esi
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_110:
	cmp ecx, esi
	jle _Z32Record_QueueAudioDataForEncodingP13audioSample_t_90
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
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_90
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_80:
	mov dword [ebp-0x2020], 0x0
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_100
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_120:
	xor edx, edx
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_130:
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
	call _Z13Encode_SamplePsPci
	add [ebp-0x2020], eax
	mov edx, [enc_buffer_pos]
	add edx, enc_buffer
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z20Client_SendVoiceDataiPc
	mov ecx, [edi+0x8]
	mov esi, [edi+0x1c]
	mov ebx, [samples_in_partial_audio_buffer]
	mov eax, ecx
	sub eax, esi
	add eax, ebx
	cmp [ebp-0x201c], eax
	jg _Z32Record_QueueAudioDataForEncodingP13audioSample_t_110
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_100:
	test ebx, ebx
	jz _Z32Record_QueueAudioDataForEncodingP13audioSample_t_120
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
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_130
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_70:
	mov eax, [edi+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_sample_l
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_140
_Z32Record_QueueAudioDataForEncodingP13audioSample_t_60:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_encode_f
	mov dword [esp], 0x9
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x2020], 0x0
	jmp _Z32Record_QueueAudioDataForEncodingP13audioSample_t_90
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

