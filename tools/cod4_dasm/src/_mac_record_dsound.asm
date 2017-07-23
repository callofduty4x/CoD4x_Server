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
	extern g_XAnimPartsPool
	extern _ZN14CAudioRecorder8ShutdownEv
	extern _ZN14CAudioRecorder4MuteEh

;Exports of mac_record_dsound:
	global sAudioRecorder
	global g_current_sample
	global s_recordingSamples
	global s_recordingSamplePtr
	global DSOUNDRecord_Init
	global DSOUNDRecord_Stop
	global DSOUNDRecord_Frame
	global DSOUNDRecord_Start
	global mixerGetRecordLevel
	global mixerSetRecordLevel
	global mixerGetRecordSource
	global mixerSetRecordSource
	global DSOUNDRecord_Shutdown
	global DSOUNDRecord_NewSample
	global mixerSetMicrophoneMute
	global DSOUNDRecord_DestroySample
	global current_audioCallback
	global g_currently_recording
	global g_recording_initialized
	global g_sound_channels
	global g_sound_recordFrequency
	global g_sound_recordVolume


SECTION .text


;DSOUNDRecord_Init(unsigned char, void const*)
DSOUNDRecord_Init:
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
	jz DSOUNDRecord_Init_10
	mov byte [g_recording_initialized], 0x1
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
DSOUNDRecord_Init_10:
	mov ebx, [sAudioRecorder]
	test ebx, ebx
	jz DSOUNDRecord_Init_20
	mov [esp], ebx
	call _ZN14CAudioRecorderD1Ev
	mov [esp], ebx
	call _ZdlPv
DSOUNDRecord_Init_20:
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
DSOUNDRecord_Stop:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [g_recording_initialized], 0x0
	jnz DSOUNDRecord_Stop_10
DSOUNDRecord_Stop_20:
	mov eax, 0xffffffff
	leave
	ret
DSOUNDRecord_Stop_10:
	mov eax, [sAudioRecorder]
	test eax, eax
	jz DSOUNDRecord_Stop_20
	mov [esp], eax
	call _ZN14CAudioRecorder4StopEv
	mov dword [g_current_sample], 0x0
	mov byte [g_currently_recording], 0x0
	xor eax, eax
	leave
	ret


;DSOUNDRecord_Frame()
DSOUNDRecord_Frame:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	cmp byte [g_recording_initialized], 0x0
	jz DSOUNDRecord_Frame_10
	cmp byte [g_currently_recording], 0x0
	jz DSOUNDRecord_Frame_10
	mov eax, [g_current_sample]
	test eax, eax
	jz DSOUNDRecord_Frame_10
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [sAudioRecorder]
	mov [esp], eax
	call _ZN14CAudioRecorder9GetBufferERm
	mov ebx, eax
	test eax, eax
	jz DSOUNDRecord_Frame_10
	mov ecx, [ebp-0xc]
	test ecx, ecx
	jnz DSOUNDRecord_Frame_20
DSOUNDRecord_Frame_10:
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
DSOUNDRecord_Frame_20:
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
DSOUNDRecord_Start:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [g_recording_initialized], 0x0
	jnz DSOUNDRecord_Start_10
DSOUNDRecord_Start_20:
	mov eax, 0xffffffff
	leave
	ret
DSOUNDRecord_Start_10:
	mov eax, [sAudioRecorder]
	test eax, eax
	jz DSOUNDRecord_Start_20
	mov [esp], eax
	call _ZN14CAudioRecorder5StartEv
	test al, al
	jz DSOUNDRecord_Start_20
	mov eax, [ebp+0x8]
	mov [g_current_sample], eax
	mov byte [g_currently_recording], 0x1
	xor eax, eax
	leave
	ret


;mixerGetRecordLevel(char*)
mixerGetRecordLevel:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [sAudioRecorder]
	test eax, eax
	jz mixerGetRecordLevel_10
	mov [esp], eax
	call _ZN14CAudioRecorder14GetRecordLevelEv
	fstp dword [ebp-0xc]
	cvtss2sd xmm0, [ebp-0xc]
	mulsd xmm0, [_double_65535_00000000]
	cvttsd2si eax, xmm0
	leave
	ret
mixerGetRecordLevel_10:
	mov ax, 0xffff
	leave
	ret
	nop


;mixerSetRecordLevel(char*, unsigned short)
mixerSetRecordLevel:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0xc]
	mov edx, [sAudioRecorder]
	test edx, edx
	jz mixerSetRecordLevel_10
	movzx eax, ax
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_65535_00000000]
	movss [esp+0x4], xmm0
	mov [esp], edx
	call _ZN14CAudioRecorder14SetRecordLevelEf
mixerSetRecordLevel_10:
	xor eax, eax
	leave
	ret
	nop


;mixerGetRecordSource(char*)
mixerGetRecordSource:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], g_XAnimPartsPool+0x171ed
	mov eax, 0x1
	pop ebp
	ret
	nop


;mixerSetRecordSource(char*)
mixerSetRecordSource:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;DSOUNDRecord_Shutdown()
DSOUNDRecord_Shutdown:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [sAudioRecorder]
	test eax, eax
	jz DSOUNDRecord_Shutdown_10
	mov [esp], eax
	call _ZN14CAudioRecorder8ShutdownEv
	mov ebx, [sAudioRecorder]
	test ebx, ebx
	jz DSOUNDRecord_Shutdown_20
	mov [esp], ebx
	call _ZN14CAudioRecorderD1Ev
	mov [esp], ebx
	call _ZdlPv
DSOUNDRecord_Shutdown_20:
	mov dword [sAudioRecorder], 0x0
DSOUNDRecord_Shutdown_10:
	mov byte [g_recording_initialized], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;DSOUNDRecord_NewSample()
DSOUNDRecord_NewSample:
	push ebp
	mov ebp, esp
	push edi
	cmp byte [g_recording_initialized], 0x0
	jnz DSOUNDRecord_NewSample_10
	xor edx, edx
	mov eax, edx
	pop edi
	pop ebp
	ret
DSOUNDRecord_NewSample_10:
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
mixerSetMicrophoneMute:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, byte [ebp+0x8]
	mov edx, [sAudioRecorder]
	test edx, edx
	jz mixerSetMicrophoneMute_10
	test al, al
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZN14CAudioRecorder4MuteEh
mixerSetMicrophoneMute_10:
	xor eax, eax
	leave
	ret
	add [eax], al


;DSOUNDRecord_DestroySample(dsound_sample_t*)
DSOUNDRecord_DestroySample:
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

