;Imports of play:
	extern DSound_Init
	extern DSound_Frame
	extern DSound_Shutdown
	extern DSound_NewSample
	extern DSound_SampleFrame
	extern DSound_UpdateSample
	extern Record_DestroySample

;Exports of play:
	global Sound_Init
	global Sound_Frame
	global Sound_Shutdown
	global Sound_NewSample
	global Sound_SampleFrame
	global Sound_UpdateSample
	global Sound_DestroySample


SECTION .text


;Sound_Init(void const*)
Sound_Init:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call DSound_Init
	leave
	ret
	nop


;Sound_Frame()
Sound_Frame:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSound_Frame
	nop
	add [eax], al


;Sound_Shutdown()
Sound_Shutdown:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSound_Shutdown
	add [eax], al


;Sound_NewSample()
Sound_NewSample:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSound_NewSample
	nop


;Sound_SampleFrame(dsound_sample_t*)
Sound_SampleFrame:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSound_SampleFrame
	nop


;Sound_UpdateSample(dsound_sample_t*, char*, unsigned int)
Sound_UpdateSample:
	push ebp
	mov ebp, esp
	pop ebp
	jmp DSound_UpdateSample
	nop


;Sound_DestroySample(dsound_sample_t*)
Sound_DestroySample:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Record_DestroySample
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

