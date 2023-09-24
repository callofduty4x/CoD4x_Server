;Imports of play:
	extern _Z11DSound_InithPKv
	extern _Z12DSound_Framev
	extern _Z15DSound_Shutdownv
	extern _Z16DSound_NewSamplev
	extern _Z18DSound_SampleFrameP15dsound_sample_t
	extern _Z19DSound_UpdateSampleP15dsound_sample_tPcj
	extern _Z20Record_DestroySampleP15dsound_sample_t

;Exports of play:
	global _Z10Sound_InitPKv
	global _Z11Sound_Framev
	global _Z14Sound_Shutdownv
	global _Z15Sound_NewSamplev
	global _Z17Sound_SampleFrameP15dsound_sample_t
	global _Z18Sound_UpdateSampleP15dsound_sample_tPcj
	global _Z19Sound_DestroySampleP15dsound_sample_t


SECTION .text


;Sound_Init(void const*)
_Z10Sound_InitPKv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z11DSound_InithPKv
	leave
	ret
	nop


;Sound_Frame()
_Z11Sound_Framev:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z12DSound_Framev
	nop
	add [eax], al


;Sound_Shutdown()
_Z14Sound_Shutdownv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z15DSound_Shutdownv
	add [eax], al


;Sound_NewSample()
_Z15Sound_NewSamplev:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z16DSound_NewSamplev
	nop


;Sound_SampleFrame(dsound_sample_t*)
_Z17Sound_SampleFrameP15dsound_sample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18DSound_SampleFrameP15dsound_sample_t
	nop


;Sound_UpdateSample(dsound_sample_t*, char*, unsigned int)
_Z18Sound_UpdateSampleP15dsound_sample_tPcj:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19DSound_UpdateSampleP15dsound_sample_tPcj
	nop


;Sound_DestroySample(dsound_sample_t*)
_Z19Sound_DestroySampleP15dsound_sample_t:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z20Record_DestroySampleP15dsound_sample_t
	nop


;Initialized global or static variables of play:
SECTION .data


;Initialized constant data of play:
SECTION .rdata


;Zero initialized global or static variables of play:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

