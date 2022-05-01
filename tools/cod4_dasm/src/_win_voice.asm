;Imports of win_voice:
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern g_current_bandwidth_setting
	extern _Z11Record_InithPKv
	extern _Z10Sound_InitPKv
	extern _Z11Encode_Initi
	extern _Z11Decode_Initi
	extern _Z20mixerGetRecordSourcePc
	extern _Z20mixerSetRecordSourcePc
	extern _Z19mixerGetRecordLevelPc
	extern _Z19mixerSetRecordLevelPct
	extern _Z22mixerSetMicrophoneMuteh
	extern memset
	extern _Z15Sound_NewSamplev
	extern _Z17Sound_SampleFrameP15dsound_sample_t
	extern _Z11Sound_Framev
	extern _Z19Sound_DestroySampleP15dsound_sample_t
	extern _Z15Record_Shutdownv
	extern _Z15Encode_Shutdownv
	extern _Z15Decode_Shutdownv
	extern _Z14Sound_Shutdownv
	extern _Z11Record_StopP15dsound_sample_t
	extern _Z20Record_DestroySampleP15dsound_sample_t
	extern _Z16Sys_Millisecondsv
	extern _Z12Record_Framev
	extern _Z16Record_NewSamplev
	extern _Z12Record_StartP15dsound_sample_t
	extern g_frame_size
	extern _Z13Decode_SamplePciPsi
	extern _Z18Sound_UpdateSampleP15dsound_sample_tPcj
	extern fopen
	extern fwrite
	extern fclose

;Exports of win_voice:
	global currentRecordingSample
	global recording
	global s_clientTalkTime
	global s_clientSamples
	global playing
	global _ZZ20Voice_StartRecordingvE5count
	global _Z10Voice_Initv
	global _Z14Voice_Playbackv
	global _Z14Voice_Shutdownv
	global _Z19Voice_GetVoiceLevelv
	global _Z21Voice_IsClientTalkingi
	global _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t
	global _Z23Voice_IncomingVoiceDatahPhi
	global voice_current_scaler
	global voice_current_voicelevel
	global g_voice_initialized
	global levelSamples
	global mic_current_reclevel
	global mic_old_reclevel
	global old_rec_source
	global sampleCount
	global winvoice_mic_mute
	global winvoice_mic_reclevel
	global winvoice_mic_scaler
	global winvoice_save_voice


SECTION .text


;Voice_Init()
_Z10Voice_Initv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov dword [esp+0xc], _cstring_mute_the_microph
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_winvoice_mic_mut
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [winvoice_mic_mute], eax
	mov dword [esp+0x14], _cstring_microphone_recor
	mov dword [esp+0x10], 0x1
	mov eax, 0x477fff00
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_winvoice_mic_rec
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [winvoice_mic_reclevel], eax
	mov dword [esp+0xc], _cstring_write_voice_data
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_winvoice_save_vo
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [winvoice_save_voice], eax
	mov dword [esp+0x14], _cstring_microphone_scale
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x40000000
	mov dword [esp+0x8], 0x3e800000
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_winvoice_mic_sca
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [winvoice_mic_scaler], eax
	mov ebx, g_current_bandwidth_setting
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z11Record_InithPKv
	test eax, eax
	jnz _Z10Voice_Initv_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z10Voice_Initv_10:
	mov dword [esp], 0x0
	call _Z10Sound_InitPKv
	mov eax, [ebx]
	mov [esp], eax
	call _Z11Encode_Initi
	mov eax, [ebx]
	mov [esp], eax
	call _Z11Decode_Initi
	mov dword [esp], old_rec_source
	call _Z20mixerGetRecordSourcePc
	mov dword [esp], _cstring_mic
	call _Z20mixerSetRecordSourcePc
	mov dword [esp], _cstring_mic
	call _Z19mixerGetRecordLevelPc
	mov [mic_old_reclevel], eax
	mov edx, [winvoice_mic_reclevel]
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	mov [mic_current_reclevel], eax
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mic
	call _Z19mixerSetRecordLevelPct
	mov eax, [winvoice_mic_mute]
	movzx eax, byte [eax+0xc]
	mov [esp], eax
	call _Z22mixerSetMicrophoneMuteh
	mov dword [g_voice_initialized], 0x1
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov dword [esp], s_clientTalkTime
	call memset
	mov ebx, s_clientSamples
_Z10Voice_Initv_20:
	call _Z15Sound_NewSamplev
	mov [ebx], eax
	add ebx, 0x4
	cmp ebx, playing
	jnz _Z10Voice_Initv_20
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Voice_Playback()
_Z14Voice_Playbackv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [g_voice_initialized]
	test edx, edx
	jz _Z14Voice_Playbackv_10
	mov edx, [winvoice_mic_reclevel]
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	cmp eax, [mic_current_reclevel]
	jz _Z14Voice_Playbackv_20
	mov [mic_current_reclevel], eax
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mic
	call _Z19mixerSetRecordLevelPct
_Z14Voice_Playbackv_20:
	mov ebx, s_clientSamples
_Z14Voice_Playbackv_30:
	mov eax, [ebx]
	mov [esp], eax
	call _Z17Sound_SampleFrameP15dsound_sample_t
	add ebx, 0x4
	cmp ebx, playing
	jnz _Z14Voice_Playbackv_30
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z11Sound_Framev
_Z14Voice_Playbackv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Voice_Shutdown()
_Z14Voice_Shutdownv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [g_voice_initialized]
	test ebx, ebx
	jnz _Z14Voice_Shutdownv_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Voice_Shutdownv_10:
	mov ebx, s_clientSamples
	mov esi, playing
_Z14Voice_Shutdownv_20:
	mov eax, [ebx]
	mov [esp], eax
	call _Z19Sound_DestroySampleP15dsound_sample_t
	add ebx, 0x4
	cmp esi, ebx
	jnz _Z14Voice_Shutdownv_20
	cmp byte [recording], 0x0
	jnz _Z14Voice_Shutdownv_30
_Z14Voice_Shutdownv_40:
	call _Z15Record_Shutdownv
	call _Z15Encode_Shutdownv
	call _Z15Decode_Shutdownv
	call _Z14Sound_Shutdownv
	mov dword [esp], 0x1
	call _Z22mixerSetMicrophoneMuteh
	movzx eax, word [mic_old_reclevel]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mic
	call _Z19mixerSetRecordLevelPct
	mov dword [esp], old_rec_source
	call _Z20mixerSetRecordSourcePc
	mov dword [g_voice_initialized], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14Voice_Shutdownv_30:
	mov eax, [currentRecordingSample]
	mov [esp], eax
	call _Z11Record_StopP15dsound_sample_t
	mov eax, [currentRecordingSample]
	mov [esp], eax
	call _Z20Record_DestroySampleP15dsound_sample_t
	mov byte [recording], 0x0
	jmp _Z14Voice_Shutdownv_40


;Voice_GetVoiceLevel()
_Z19Voice_GetVoiceLevelv:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [g_voice_initialized]
	pxor xmm0, xmm0
	test eax, eax
	jz _Z19Voice_GetVoiceLevelv_10
	mov ecx, [sampleCount]
	mov edx, 0x2aaaaaab
	mov eax, ecx
	imul edx
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	lea edx, [edx+edx*2]
	add edx, edx
	mov eax, ecx
	sub eax, edx
	movss xmm0, dword [voice_current_voicelevel]
	divss xmm0, dword [_float_32767_00000000]
	divss xmm0, dword [_float_6_00000000]
	movss [eax*4+levelSamples], xmm0
	add ecx, 0x1
	mov [sampleCount], ecx
	pxor xmm0, xmm0
	mov eax, levelSamples
_Z19Voice_GetVoiceLevelv_20:
	addss xmm0, [eax]
	add eax, 0x4
	cmp eax, voice_current_voicelevel
	jnz _Z19Voice_GetVoiceLevelv_20
_Z19Voice_GetVoiceLevelv_10:
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;Voice_IsClientTalking(int)
_Z21Voice_IsClientTalkingi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z16Sys_Millisecondsv
	mov edx, [ebp+0x8]
	sub eax, [edx*4+s_clientTalkTime]
	cmp eax, 0x12b
	setle al
	movzx eax, al
	leave
	ret
	add [eax], al


;Voice_GetLocalVoiceData(ClientVoicePacket_t*)
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_voice_initialized]
	test eax, eax
	jz _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_10
	cmp byte [recording], 0x0
	jz _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_20
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_50:
	mov eax, [winvoice_mic_scaler]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm2, [voice_current_scaler]
	jp _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_30
	jnz _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_30
	call _Z12Record_Framev
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_10:
	xor eax, eax
	leave
	ret
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_30:
	movss [voice_current_scaler], xmm2
	ucomiss xmm2, [_float_0_50000000]
	jae _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_40
	jp _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_40
	mov eax, 0x3f000000
	mov [voice_current_scaler], eax
	call _Z12Record_Framev
	jmp _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_10
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_20:
	call _Z16Record_NewSamplev
	mov [currentRecordingSample], eax
	mov [esp], eax
	call _Z12Record_StartP15dsound_sample_t
	mov byte [recording], 0x1
	add dword [_ZZ20Voice_StartRecordingvE5count], 0x1
	jmp _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_50
_Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_40:
	movaps xmm0, xmm2
	movss xmm1, dword [_float_1_50000000]
	cmpss xmm1, xmm2, 0x5
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_50000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [voice_current_scaler], xmm1
	call _Z12Record_Framev
	jmp _Z23Voice_GetLocalVoiceDataP19ClientVoicePacket_t_10


;Voice_IncomingVoiceData(unsigned char, unsigned char*, int)
_Z23Voice_IncomingVoiceDatahPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x202c
	mov eax, 0x1
	cmp byte [playing], 0x0
	movzx edx, byte [playing]
	cmovnz eax, edx
	mov [playing], al
	movzx eax, byte [ebp+0x8]
	mov [ebp-0x201c], eax
	call _Z16Sys_Millisecondsv
	mov edx, [ebp-0x201c]
	mov [edx*4+s_clientTalkTime], eax
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle _Z23Voice_IncomingVoiceDatahPhi_10
	xor edi, edi
_Z23Voice_IncomingVoiceDatahPhi_30:
	mov ebx, [ebp+0x10]
	sub ebx, edi
	mov edx, g_frame_size
	mov eax, [edx]
	cmp ebx, eax
	cmovge ebx, eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x2018]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	lea eax, [edi+edx]
	mov [esp], eax
	call _Z13Decode_SamplePciPsi
	mov esi, eax
	test eax, eax
	jle _Z23Voice_IncomingVoiceDatahPhi_20
	mov [esp+0x8], eax
	lea eax, [ebp-0x2018]
	mov [esp+0x4], eax
	mov edx, [ebp-0x201c]
	mov eax, [edx*4+s_clientSamples]
	mov [esp], eax
	call _Z18Sound_UpdateSampleP15dsound_sample_tPcj
_Z23Voice_IncomingVoiceDatahPhi_20:
	add edi, ebx
	cmp [ebp+0x10], edi
	jg _Z23Voice_IncomingVoiceDatahPhi_30
	mov eax, [winvoice_save_voice]
	cmp byte [eax+0xc], 0x0
	jnz _Z23Voice_IncomingVoiceDatahPhi_40
_Z23Voice_IncomingVoiceDatahPhi_50:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Voice_IncomingVoiceDatahPhi_10:
	xor esi, esi
	mov eax, [winvoice_save_voice]
	cmp byte [eax+0xc], 0x0
	jz _Z23Voice_IncomingVoiceDatahPhi_50
_Z23Voice_IncomingVoiceDatahPhi_40:
	mov dword [esp+0x4], _cstring_ab
	mov dword [esp], _cstring_voicewav
	call fopen
	mov ebx, eax
	test eax, eax
	jz _Z23Voice_IncomingVoiceDatahPhi_50
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	lea eax, [ebp-0x2018]
	mov [esp], eax
	call fwrite
	mov [esp], ebx
	call fclose
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of win_voice:
SECTION .data
voice_current_scaler: dd 0x3f800000, 0x0, 0x0, 0x0
g_voice_initialized: dd 0x0
sampleCount: dd 0x0, 0x0


;Initialized constant data of win_voice:
SECTION .rdata


;Zero initialized global or static variables of win_voice:
SECTION .bss
currentRecordingSample: resb 0x4
recording: resb 0x1c
s_clientTalkTime: resb 0x100
s_clientSamples: resb 0x100
playing: resb 0x4
_ZZ20Voice_StartRecordingvE5count: resb 0x5c
voice_current_voicelevel: resb 0x8
levelSamples: resb 0x18
mic_current_reclevel: resb 0x4
mic_old_reclevel: resb 0x4
old_rec_source: resb 0x100
winvoice_mic_mute: resb 0x4c
winvoice_mic_reclevel: resb 0x4
winvoice_mic_scaler: resb 0x8
winvoice_save_voice: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_mute_the_microph:		db "Mute the microphone",0
_cstring_winvoice_mic_mut:		db "winvoice_mic_mute",0
_cstring_microphone_recor:		db "Microphone recording level",0
_cstring_winvoice_mic_rec:		db "winvoice_mic_reclevel",0
_cstring_write_voice_data:		db "Write voice data to a file",0
_cstring_winvoice_save_vo:		db "winvoice_save_voice",0
_cstring_microphone_scale:		db "Microphone scaler value",0
_cstring_winvoice_mic_sca:		db "winvoice_mic_scaler",0
_cstring_mic:		db "Mic",0
_cstring_ab:		db "ab",0
_cstring_voicewav:		db "voice.wav",0



;All constant floats and doubles:
SECTION .rdata
_float_32767_00000000:		dd 0x46fffe00	; 32767
_float_6_00000000:		dd 0x40c00000	; 6
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_50000000:		dd 0x3fc00000	; 1.5

