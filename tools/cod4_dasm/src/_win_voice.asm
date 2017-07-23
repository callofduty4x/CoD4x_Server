;Imports of win_voice:
	extern Cvar_RegisterBool
	extern Cvar_RegisterFloat
	extern g_current_bandwidth_setting
	extern Record_Init
	extern Sound_Init
	extern Encode_Init
	extern Decode_Init
	extern mixerGetRecordSource
	extern mixerSetRecordSource
	extern mixerGetRecordLevel
	extern mixerSetRecordLevel
	extern mixerSetMicrophoneMute
	extern memset
	extern Sound_NewSample
	extern Sound_SampleFrame
	extern Sound_Frame
	extern Sound_DestroySample
	extern Record_Shutdown
	extern Encode_Shutdown
	extern Decode_Shutdown
	extern Sound_Shutdown
	extern Record_Stop
	extern Record_DestroySample
	extern Sys_Milliseconds
	extern Record_Frame
	extern Record_NewSample
	extern Record_Start
	extern g_frame_size
	extern Decode_Sample
	extern Sound_UpdateSample
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
	global Voice_Init
	global Voice_Playback
	global Voice_Shutdown
	global Voice_GetVoiceLevel
	global Voice_IsClientTalking
	global Voice_GetLocalVoiceData
	global Voice_IncomingVoiceData
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
Voice_Init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov dword [esp+0xc], _cstring_mute_the_microph
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_winvoice_mic_mut
	call Cvar_RegisterBool
	mov [winvoice_mic_mute], eax
	mov dword [esp+0x14], _cstring_microphone_recor
	mov dword [esp+0x10], 0x1
	mov eax, 0x477fff00
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov dword [esp], _cstring_winvoice_mic_rec
	call Cvar_RegisterFloat
	mov [winvoice_mic_reclevel], eax
	mov dword [esp+0xc], _cstring_write_voice_data
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_winvoice_save_vo
	call Cvar_RegisterBool
	mov [winvoice_save_voice], eax
	mov dword [esp+0x14], _cstring_microphone_scale
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x40000000
	mov dword [esp+0x8], 0x3e800000
	mov dword [esp+0x4], 0x3f800000
	mov dword [esp], _cstring_winvoice_mic_sca
	call Cvar_RegisterFloat
	mov [winvoice_mic_scaler], eax
	mov ebx, g_current_bandwidth_setting
	mov dword [ebx], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call Record_Init
	test eax, eax
	jnz Voice_Init_10
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Voice_Init_10:
	mov dword [esp], 0x0
	call Sound_Init
	mov eax, [ebx]
	mov [esp], eax
	call Encode_Init
	mov eax, [ebx]
	mov [esp], eax
	call Decode_Init
	mov dword [esp], old_rec_source
	call mixerGetRecordSource
	mov dword [esp], _cstring_mic
	call mixerSetRecordSource
	mov dword [esp], _cstring_mic
	call mixerGetRecordLevel
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
	call mixerSetRecordLevel
	mov eax, [winvoice_mic_mute]
	movzx eax, byte [eax+0xc]
	mov [esp], eax
	call mixerSetMicrophoneMute
	mov dword [g_voice_initialized], 0x1
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0x0
	mov dword [esp], s_clientTalkTime
	call memset
	mov ebx, s_clientSamples
Voice_Init_20:
	call Sound_NewSample
	mov [ebx], eax
	add ebx, 0x4
	cmp ebx, playing
	jnz Voice_Init_20
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Voice_Playback()
Voice_Playback:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [g_voice_initialized]
	test edx, edx
	jz Voice_Playback_10
	mov edx, [winvoice_mic_reclevel]
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	cmp eax, [mic_current_reclevel]
	jz Voice_Playback_20
	mov [mic_current_reclevel], eax
	movss xmm0, dword [edx+0xc]
	cvttss2si eax, xmm0
	movzx eax, ax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mic
	call mixerSetRecordLevel
Voice_Playback_20:
	mov ebx, s_clientSamples
Voice_Playback_30:
	mov eax, [ebx]
	mov [esp], eax
	call Sound_SampleFrame
	add ebx, 0x4
	cmp ebx, playing
	jnz Voice_Playback_30
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Sound_Frame
Voice_Playback_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Voice_Shutdown()
Voice_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [g_voice_initialized]
	test ebx, ebx
	jnz Voice_Shutdown_10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Voice_Shutdown_10:
	mov ebx, s_clientSamples
	mov esi, playing
Voice_Shutdown_20:
	mov eax, [ebx]
	mov [esp], eax
	call Sound_DestroySample
	add ebx, 0x4
	cmp esi, ebx
	jnz Voice_Shutdown_20
	cmp byte [recording], 0x0
	jnz Voice_Shutdown_30
Voice_Shutdown_40:
	call Record_Shutdown
	call Encode_Shutdown
	call Decode_Shutdown
	call Sound_Shutdown
	mov dword [esp], 0x1
	call mixerSetMicrophoneMute
	movzx eax, word [mic_old_reclevel]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mic
	call mixerSetRecordLevel
	mov dword [esp], old_rec_source
	call mixerSetRecordSource
	mov dword [g_voice_initialized], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Voice_Shutdown_30:
	mov eax, [currentRecordingSample]
	mov [esp], eax
	call Record_Stop
	mov eax, [currentRecordingSample]
	mov [esp], eax
	call Record_DestroySample
	mov byte [recording], 0x0
	jmp Voice_Shutdown_40


;Voice_GetVoiceLevel()
Voice_GetVoiceLevel:
	push ebp
	mov ebp, esp
	sub esp, 0x4
	mov eax, [g_voice_initialized]
	pxor xmm0, xmm0
	test eax, eax
	jz Voice_GetVoiceLevel_10
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
Voice_GetVoiceLevel_20:
	addss xmm0, [eax]
	add eax, 0x4
	cmp eax, voice_current_voicelevel
	jnz Voice_GetVoiceLevel_20
Voice_GetVoiceLevel_10:
	movss [ebp-0x4], xmm0
	fld dword [ebp-0x4]
	leave
	ret
	nop


;Voice_IsClientTalking(int)
Voice_IsClientTalking:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call Sys_Milliseconds
	mov edx, [ebp+0x8]
	sub eax, [edx*4+s_clientTalkTime]
	cmp eax, 0x12b
	setle al
	movzx eax, al
	leave
	ret
	add [eax], al


;Voice_GetLocalVoiceData(ClientVoicePacket_t*)
Voice_GetLocalVoiceData:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_voice_initialized]
	test eax, eax
	jz Voice_GetLocalVoiceData_10
	cmp byte [recording], 0x0
	jz Voice_GetLocalVoiceData_20
Voice_GetLocalVoiceData_50:
	mov eax, [winvoice_mic_scaler]
	movss xmm2, dword [eax+0xc]
	ucomiss xmm2, [voice_current_scaler]
	jp Voice_GetLocalVoiceData_30
	jnz Voice_GetLocalVoiceData_30
	call Record_Frame
Voice_GetLocalVoiceData_10:
	xor eax, eax
	leave
	ret
Voice_GetLocalVoiceData_30:
	movss [voice_current_scaler], xmm2
	ucomiss xmm2, [_float_0_50000000]
	jae Voice_GetLocalVoiceData_40
	jp Voice_GetLocalVoiceData_40
	mov eax, 0x3f000000
	mov [voice_current_scaler], eax
	call Record_Frame
	jmp Voice_GetLocalVoiceData_10
Voice_GetLocalVoiceData_20:
	call Record_NewSample
	mov [currentRecordingSample], eax
	mov [esp], eax
	call Record_Start
	mov byte [recording], 0x1
	add dword [_ZZ20Voice_StartRecordingvE5count], 0x1
	jmp Voice_GetLocalVoiceData_50
Voice_GetLocalVoiceData_40:
	movaps xmm0, xmm2
	movss xmm1, dword [_float_1_50000000]
	cmpss xmm1, xmm2, 0x5
	andps xmm0, xmm1
	movss xmm2, dword [_float_1_50000000]
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movss [voice_current_scaler], xmm1
	call Record_Frame
	jmp Voice_GetLocalVoiceData_10


;Voice_IncomingVoiceData(unsigned char, unsigned char*, int)
Voice_IncomingVoiceData:
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
	call Sys_Milliseconds
	mov edx, [ebp-0x201c]
	mov [edx*4+s_clientTalkTime], eax
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle Voice_IncomingVoiceData_10
	xor edi, edi
Voice_IncomingVoiceData_30:
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
	call Decode_Sample
	mov esi, eax
	test eax, eax
	jle Voice_IncomingVoiceData_20
	mov [esp+0x8], eax
	lea eax, [ebp-0x2018]
	mov [esp+0x4], eax
	mov edx, [ebp-0x201c]
	mov eax, [edx*4+s_clientSamples]
	mov [esp], eax
	call Sound_UpdateSample
Voice_IncomingVoiceData_20:
	add edi, ebx
	cmp [ebp+0x10], edi
	jg Voice_IncomingVoiceData_30
	mov eax, [winvoice_save_voice]
	cmp byte [eax+0xc], 0x0
	jnz Voice_IncomingVoiceData_40
Voice_IncomingVoiceData_50:
	add esp, 0x202c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Voice_IncomingVoiceData_10:
	xor esi, esi
	mov eax, [winvoice_save_voice]
	cmp byte [eax+0xc], 0x0
	jz Voice_IncomingVoiceData_50
Voice_IncomingVoiceData_40:
	mov dword [esp+0x4], _cstring_ab
	mov dword [esp], _cstring_voicewav
	call fopen
	mov ebx, eax
	test eax, eax
	jz Voice_IncomingVoiceData_50
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

