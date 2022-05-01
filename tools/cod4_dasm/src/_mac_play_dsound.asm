;Imports of mac_play_dsound:
	extern _Z22DSOUNDRecord_NewSamplev
	extern iAIL_allocate_sample_handle
	extern _Znwm
	extern _ZN15CCircularBufferC1Em
	extern iAIL_init_sample
	extern iAIL_set_sample_playback_rate
	extern _ZdlPv
	extern _Unwind_Resume
	extern iAIL_sample_status
	extern _ZN15CCircularBuffer11ReadPtrSizeEv
	extern _ZN15CCircularBuffer7ReadPtrERm
	extern iAIL_set_sample_address
	extern iAIL_resume_sample
	extern _ZN15CCircularBuffer5WriteEPKvRm

;Exports of mac_play_dsound:
	global COMFORTABLE_BUFFER_AMOUNT
	global dsoundplay_initialized
	global _Z11DSound_InithPKv
	global _Z12DSound_Framev
	global _Z15DSound_Shutdownv
	global _Z16DSound_NewSamplev
	global _Z18DSound_SampleFrameP15dsound_sample_t
	global _Z19DSound_UpdateSampleP15dsound_sample_tPcj


SECTION .text


;DSound_Init(unsigned char, void const*)
_Z11DSound_InithPKv:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	cmp byte [dsoundplay_initialized], 0x0
	movzx edx, byte [dsoundplay_initialized]
	cmovnz eax, edx
	mov [dsoundplay_initialized], al
	mov eax, 0x1
	pop ebp
	ret
	nop


;DSound_Frame()
_Z12DSound_Framev:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;DSound_Shutdown()
_Z15DSound_Shutdownv:
	push ebp
	mov ebp, esp
	mov byte [dsoundplay_initialized], 0x0
	pop ebp
	ret


;DSound_NewSample()
_Z16DSound_NewSamplev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp byte [dsoundplay_initialized], 0x0
	jnz _Z16DSound_NewSamplev_10
_Z16DSound_NewSamplev_20:
	xor ebx, ebx
_Z16DSound_NewSamplev_40:
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z16DSound_NewSamplev_10:
	call _Z22DSOUNDRecord_NewSamplev
	mov ebx, eax
	test eax, eax
	jz _Z16DSound_NewSamplev_20
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x4d444449
	call iAIL_allocate_sample_handle
	mov [ebx], eax
	test eax, eax
	jz _Z16DSound_NewSamplev_20
	mov dword [esp], 0x14
	call _Znwm
	mov esi, eax
	mov dword [esp+0x4], 0xc800
	mov [esp], eax
	call _ZN15CCircularBufferC1Em
	mov [ebx+0x4], esi
	cmp dword [ebx+0x14], 0x1
	jz _Z16DSound_NewSamplev_30
	mov eax, 0x3
_Z16DSound_NewSamplev_50:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call iAIL_init_sample
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call iAIL_set_sample_playback_rate
	jmp _Z16DSound_NewSamplev_40
_Z16DSound_NewSamplev_30:
	mov eax, 0x1
	jmp _Z16DSound_NewSamplev_50
	mov ebx, eax
	mov [esp], esi
	call _ZdlPv
	mov [esp], ebx
	call _Unwind_Resume


;DSound_SampleFrame(dsound_sample_t*)
_Z18DSound_SampleFrameP15dsound_sample_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call iAIL_sample_status
	cmp eax, 0x2
	jz _Z18DSound_SampleFrameP15dsound_sample_t_10
_Z18DSound_SampleFrameP15dsound_sample_t_20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z18DSound_SampleFrameP15dsound_sample_t_10:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN15CCircularBuffer11ReadPtrSizeEv
	mov [ebp-0xc], eax
	cmp eax, [COMFORTABLE_BUFFER_AMOUNT]
	jb _Z18DSound_SampleFrameP15dsound_sample_t_20
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _ZN15CCircularBuffer7ReadPtrERm
	mov edx, eax
	test eax, eax
	jz _Z18DSound_SampleFrameP15dsound_sample_t_20
	mov eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebx]
	mov [esp], eax
	call iAIL_set_sample_address
	mov eax, [ebx]
	mov [esp], eax
	call iAIL_resume_sample
	jmp _Z18DSound_SampleFrameP15dsound_sample_t_20
	add [eax], al


;DSound_UpdateSample(dsound_sample_t*, char*, unsigned int)
_Z19DSound_UpdateSampleP15dsound_sample_tPcj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x10]
	cmp byte [dsoundplay_initialized], 0x0
	jz _Z19DSound_UpdateSampleP15dsound_sample_tPcj_10
	test ebx, ebx
	jnz _Z19DSound_UpdateSampleP15dsound_sample_tPcj_20
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19DSound_UpdateSampleP15dsound_sample_tPcj_20:
	mov [ebp-0xc], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov [esp], eax
	call _ZN15CCircularBuffer5WriteEPKvRm
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z19DSound_UpdateSampleP15dsound_sample_tPcj_10:
	mov eax, 0xffffffff
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of mac_play_dsound:
SECTION .data
COMFORTABLE_BUFFER_AMOUNT: dd 0x1770


;Initialized constant data of mac_play_dsound:
SECTION .rdata


;Zero initialized global or static variables of mac_play_dsound:
SECTION .bss
dsoundplay_initialized: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

