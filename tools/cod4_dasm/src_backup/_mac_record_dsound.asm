;Imports of mac_record_dsound:
	extern _Znwm
	extern _ZN14CAudioRecorderC1Edmm
	extern _ZN14CAudioRecorder10InitializeEv
	extern _ZN14CAudioRecorderD1Ev
	extern _ZdlPv
	extern _Unwind_Resume
	extern _ZN14CAudioRecorder4StopEv
	extern _ZN14CAudioRecorder9GetBufferERm
	extern _ZN14CAudioRecorder5StartEv
	extern _ZN14CAudioRecorder14GetRecordLevelEv
	extern _ZN14CAudioRecorder14SetRecordLevelEf
	extern _ZN14CAudioRecorder8ShutdownEv
	extern _ZN14CAudioRecorder4MuteEh

;Exports of mac_record_dsound:
	global sAudioRecorder
	global g_current_sample
	global s_recordingSamples
	global s_recordingSamplePtr
	global _Z17DSOUNDRecord_InithPKv
	global _Z17DSOUNDRecord_StopP15dsound_sample_t
	global _Z18DSOUNDRecord_Framev
	global _Z18DSOUNDRecord_StartP15dsound_sample_t
	global _Z19mixerGetRecordLevelPc
	global _Z19mixerSetRecordLevelPct
	global _Z20mixerGetRecordSourcePc
	global _Z20mixerSetRecordSourcePc
	global _Z21DSOUNDRecord_Shutdownv
	global _Z22DSOUNDRecord_NewSamplev
	global _Z22mixerSetMicrophoneMuteh
	global _Z26DSOUNDRecord_DestroySampleP15dsound_sample_t
	global current_audioCallback
	global g_currently_recording
	global g_recording_initialized
	global g_sound_channels
	global g_sound_recordFrequency
	global g_sound_recordVolume


SECTION .text


;DSOUNDRecord_Init(unsigned char, void const*)
_Z17DSOUNDRecord_InithPKv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov dword [s_recordingSamplePtr], s_recordingSamples
	mov byte [g_recording_initialized], 0x0
	mov dword [esp], 0x78
	call _Znwm
	mov esi, eax
	mov dword [esp+0x10], 0x10
	mov eax, [g_sound_channels]
	mov [esp+0xc], eax
	cvtsi2sd xmm0, dword [g_sound_recordFrequency]
	movsd [esp+0x4], xmm0
	mov [esp], esi
	call _ZN14CAudioRecorderC1Edmm
	mov [sAudioRecorder], esi
	mov [esp], esi
	call _ZN14CAudioRecorder10InitializeEv
	test al, al
	jz _Z17DSOUNDRecord_InithPKv_10
	mov byte [g_recording_initialized], 0x1
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z17DSOUNDRecord_InithPKv_10:
	mov ebx, [sAudioRecorder]
	test ebx, ebx
	jz _Z17DSOUNDRecord_InithPKv_20
	mov [esp], ebx
	call _ZN14CAudioRecorderD1Ev
	mov [esp], ebx
	call _ZdlPv
_Z17DSOUNDRecord_InithPKv_20:
	mov dword [sAudioRecorder], 0x0
	xor eax, eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], esi
	call _ZdlPv
	mov [esp], ebx
	call _Unwind_Resume


;DSOUNDRecord_Stop(dsound_sample_t*)
_Z17DSOUNDRecord_StopP15dsound_sample_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [g_recording_initialized], 0x0
	jnz _Z17DSOUNDRecord_StopP15dsound_sample_t_10
_Z17DSOUNDRecord_StopP15dsound_sample_t_20:
	mov eax, 0xffffffff
	leave
	ret
_Z17DSOUNDRecord_StopP15dsound_sample_t_10:
	mov eax, [sAudioRecorder]
	test eax, eax
	jz _Z17DSOUNDRecord_StopP15dsound_sample_t_20
	mov [esp], eax
	call _ZN14CAudioRecorder4StopEv
	mov dword [g_current_sample], 0x0
	mov byte [g_currently_recording], 0x0
	xor eax, eax
	leave
	ret


;DSOUNDRecord_Frame()
_Z18DSOUNDRecord_Framev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	cmp byte [g_recording_initialized], 0x0
	jz _Z18DSOUNDRecord_Framev_10
	cmp byte [g_currently_recording], 0x0
	jz _Z18DSOUNDRecord_Framev_10
	mov eax, [g_current_sample]
	test eax, eax
	jz _Z18DSOUNDRecord_Framev_10
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [sAudioRecorder]
	mov [esp], eax
	call _ZN14CAudioRecorder9GetBufferERm
	mov ebx, eax
	test eax, eax
	jz _Z18DSOUNDRecord_Framev_10
	mov ecx, [ebp-0xc]
	test ecx, ecx
	jnz _Z18DSOUNDRecord_Framev_20
_Z18DSOUNDRecord_Framev_10:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z18DSOUNDRecord_Framev_20:
	mov edx, [g_sound_channels]
	cmp edx, 0x1
	setg byte [ebp-0x18]
	mov dword [ebp-0x20], 0x2
	mov eax, [g_sound_recordFrequency]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x10], 0x0
	mov [ebp-0x14], edx
	add edx, edx
	mov eax, ecx
	mov esi, edx
	xor edx, edx
	div esi
	mov [ebp-0x24], eax
	mov [ebp-0x28], ecx
	mov [ebp-0x2c], ebx
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call dword [current_audioCallback]
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;DSOUNDRecord_Start(dsound_sample_t*)
_Z18DSOUNDRecord_StartP15dsound_sample_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [g_recording_initialized], 0x0
	jnz _Z18DSOUNDRecord_StartP15dsound_sample_t_10
_Z18DSOUNDRecord_StartP15dsound_sample_t_20:
	mov eax, 0xffffffff
	leave
	ret
_Z18DSOUNDRecord_StartP15dsound_sample_t_10:
	mov eax, [sAudioRecorder]
	test eax, eax
	jz _Z18DSOUNDRecord_StartP15dsound_sample_t_20
	mov [esp], eax
	call _ZN14CAudioRecorder5StartEv
	test al, al
	jz _Z18DSOUNDRecord_StartP15dsound_sample_t_20
	mov eax, [ebp+0x8]
	mov [g_current_sample], eax
	mov byte [g_currently_recording], 0x1
	xor eax, eax
	leave
	ret


;mixerGetRecordLevel(char*)
_Z19mixerGetRecordLevelPc:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [sAudioRecorder]
	test eax, eax
	jz _Z19mixerGetRecordLevelPc_10
	mov [esp], eax
	call _ZN14CAudioRecorder14GetRecordLevelEv
	fstp dword [ebp-0xc]
	cvtss2sd xmm0, [ebp-0xc]
	mulsd xmm0, [_double_65535_00000000]
	cvttsd2si eax, xmm0
	leave
	ret
_Z19mixerGetRecordLevelPc_10:
	mov ax, 0xffff
	leave
	ret
	nop


;mixerSetRecordLevel(char*, unsigned short)
_Z19mixerSetRecordLevelPct:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0xc]
	mov edx, [sAudioRecorder]
	test edx, edx
	jz _Z19mixerSetRecordLevelPct_10
	movzx eax, ax
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_65535_00000000]
	movss [esp+0x4], xmm0
	mov [esp], edx
	call _ZN14CAudioRecorder14SetRecordLevelEf
_Z19mixerSetRecordLevelPct_10:
	xor eax, eax
	leave
	ret
	nop


;mixerGetRecordSource(char*)
_Z20mixerGetRecordSourcePc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x63614d
	mov eax, 0x1
	pop ebp
	ret
	nop


;mixerSetRecordSource(char*)
_Z20mixerSetRecordSourcePc:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;DSOUNDRecord_Shutdown()
_Z21DSOUNDRecord_Shutdownv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [sAudioRecorder]
	test eax, eax
	jz _Z21DSOUNDRecord_Shutdownv_10
	mov [esp], eax
	call _ZN14CAudioRecorder8ShutdownEv
	mov ebx, [sAudioRecorder]
	test ebx, ebx
	jz _Z21DSOUNDRecord_Shutdownv_20
	mov [esp], ebx
	call _ZN14CAudioRecorderD1Ev
	mov [esp], ebx
	call _ZdlPv
_Z21DSOUNDRecord_Shutdownv_20:
	mov dword [sAudioRecorder], 0x0
_Z21DSOUNDRecord_Shutdownv_10:
	mov byte [g_recording_initialized], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;DSOUNDRecord_NewSample()
_Z22DSOUNDRecord_NewSamplev:
	push ebp
	mov ebp, esp
	push edi
	cmp byte [g_recording_initialized], 0x0
	jnz _Z22DSOUNDRecord_NewSamplev_10
	xor edx, edx
	mov eax, edx
	pop edi
	pop ebp
	ret
_Z22DSOUNDRecord_NewSamplev_10:
	mov edx, [s_recordingSamplePtr]
	lea eax, [edx+0x24]
	mov [s_recordingSamplePtr], eax
	cld
	mov ecx, 0x9
	xor eax, eax
	mov edi, edx
	rep stosd
	mov eax, [g_sound_recordFrequency]
	mov [edx+0x8], eax
	mov eax, [g_sound_recordVolume]
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x80
	mov eax, [g_sound_channels]
	mov [edx+0x14], eax
	mov byte [edx+0x20], 0x2
	mov eax, edx
	pop edi
	pop ebp
	ret


;mixerSetMicrophoneMute(unsigned char)
_Z22mixerSetMicrophoneMuteh:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, byte [ebp+0x8]
	mov edx, [sAudioRecorder]
	test edx, edx
	jz _Z22mixerSetMicrophoneMuteh_10
	test al, al
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZN14CAudioRecorder4MuteEh
_Z22mixerSetMicrophoneMuteh_10:
	xor eax, eax
	leave
	ret
	add [eax], al


;DSOUNDRecord_DestroySample(dsound_sample_t*)
_Z26DSOUNDRecord_DestroySampleP15dsound_sample_t:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp byte [g_recording_initialized], 0x0
	setnz al
	pop ebp
	ret
	nop


;Initialized global or static variables of mac_record_dsound:
SECTION .data
g_currently_recording: db 0x0
g_recording_initialized: db 0x0, 0x0, 0x0
g_sound_channels: dd 0x1
g_sound_recordFrequency: dd 0x2000, 0x0, 0x0, 0x0, 0x0
g_sound_recordVolume: dd 0xff


;Initialized constant data of mac_record_dsound:
SECTION .rdata


;Zero initialized global or static variables of mac_record_dsound:
SECTION .bss
sAudioRecorder: resb 0x4
g_current_sample: resb 0x1c
s_recordingSamples: resb 0x924
s_recordingSamplePtr: resb 0x3c
current_audioCallback: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_double_65535_00000000:		dq 0x40efffe000000000	; 65535
_float_65535_00000000:		dd 0x477fff00	; 65535

