;Imports of cl_voice:
	extern _Z12MSG_ReadByteP5msg_t
	extern _Z12MSG_ReadDataP5msg_tPvi
	extern _Z16CL_IsPlayerMutedii
	extern cl_voice
	extern _Z23Voice_IncomingVoiceDatahPhi
	extern _Z10Com_PrintfiPKcz
	extern _Z16CL_IsClientLocali
	extern sv_voice
	extern _Z16IN_IsTalkKeyHeldv
	extern _Z21Voice_IsClientTalkingi
	extern clientUIActives
	extern clientConnections
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z15MSG_WriteStringP5msg_tPKc
	extern _Z14MSG_WriteShortP5msg_ti
	extern cl_voiceCommunication
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi
	extern cl_showSend
	extern _Z13MSG_WriteDataP5msg_tPKvi

;Exports of cl_voice:
	global tempVoicePacketBuf
	global _Z14CL_VoicePacketiP5msg_t
	global _Z18CL_IsPlayerTalkingii
	global _Z19CL_WriteVoicePacketi


SECTION .text


;CL_VoicePacket(int, msg_t*)
_Z14CL_VoicePacketiP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0xc]
	mov [esp], esi
	call _Z12MSG_ReadByteP5msg_t
	mov ebx, eax
	cmp eax, 0x28
	ja _Z14CL_VoicePacketiP5msg_t_10
	test eax, eax
	jg _Z14CL_VoicePacketiP5msg_t_20
_Z14CL_VoicePacketiP5msg_t_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CL_VoicePacketiP5msg_t_20:
	xor edi, edi
	jmp _Z14CL_VoicePacketiP5msg_t_30
_Z14CL_VoicePacketiP5msg_t_60:
	add edi, 0x1
	cmp ebx, edi
	jz _Z14CL_VoicePacketiP5msg_t_10
_Z14CL_VoicePacketiP5msg_t_30:
	mov [esp], esi
	call _Z12MSG_ReadByteP5msg_t
	mov [ebp-0x11d], al
	mov [esp], esi
	call _Z12MSG_ReadByteP5msg_t
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	ja _Z14CL_VoicePacketiP5msg_t_40
	mov [esp+0x8], edx
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12MSG_ReadDataP5msg_tPvi
	movzx eax, byte [ebp-0x11d]
	cmp al, 0x3f
	ja _Z14CL_VoicePacketiP5msg_t_50
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16CL_IsPlayerMutedii
	test al, al
	jnz _Z14CL_VoicePacketiP5msg_t_60
	mov eax, cl_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z14CL_VoicePacketiP5msg_t_60
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	movzx eax, byte [ebp-0x11d]
	mov [esp], eax
	call _Z23Voice_IncomingVoiceDatahPhi
	jmp _Z14CL_VoicePacketiP5msg_t_60
_Z14CL_VoicePacketiP5msg_t_40:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_invalid_server_v
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14CL_VoicePacketiP5msg_t_10
_Z14CL_VoicePacketiP5msg_t_50:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_voice_pa
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z14CL_VoicePacketiP5msg_t_10
	nop


;CL_IsPlayerTalking(int, int)
_Z18CL_IsPlayerTalkingii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z16CL_IsClientLocali
	test al, al
	jz _Z18CL_IsPlayerTalkingii_10
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z18CL_IsPlayerTalkingii_20
	mov eax, cl_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z18CL_IsPlayerTalkingii_10
_Z18CL_IsPlayerTalkingii_20:
	call _Z16IN_IsTalkKeyHeldv
	movzx eax, al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18CL_IsPlayerTalkingii_10:
	mov [esp], ebx
	call _Z21Voice_IsClientTalkingi
	movzx eax, al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CL_WriteVoicePacket(int)
_Z19CL_WriteVoicePacketi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	mov eax, clientConnections
	mov ecx, [eax+0x4018c]
	test ecx, ecx
	jnz _Z19CL_WriteVoicePacketi_10
	cmp edx, 0x9
	jz _Z19CL_WriteVoicePacketi_20
	cmp edx, 0x7
	jz _Z19CL_WriteVoicePacketi_20
	cmp edx, 0x8
	jz _Z19CL_WriteVoicePacketi_20
_Z19CL_WriteVoicePacketi_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_WriteVoicePacketi_20:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], tempVoicePacketBuf
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z8MSG_InitP5msg_tPhi
	mov dword [esp+0x4], _cstring_v
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z15MSG_WriteStringP5msg_tPKc
	mov eax, clientConnections
	mov eax, [eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z14MSG_WriteShortP5msg_ti
	mov ebx, cl_voiceCommunication
	movzx eax, byte [ebx+0xa28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [ebx+0xa28]
	test eax, eax
	jg _Z19CL_WriteVoicePacketi_30
_Z19CL_WriteVoicePacketi_50:
	mov edx, clientConnections
	mov esi, [edx+0x10]
	mov [ebp-0x24], esi
	mov ebx, [edx+0x14]
	mov [ebp-0x20], ebx
	mov ecx, [edx+0x18]
	mov [ebp-0x1c], ecx
	mov eax, [ebp-0x38]
	mov [esp+0x14], eax
	mov eax, [ebp-0x44]
	mov [esp+0x10], eax
	mov [esp+0x4], esi
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov eax, [edx+0x401bc]
	mov [esp], eax
	call _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z19CL_WriteVoicePacketi_10
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice_i
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19CL_WriteVoicePacketi_30:
	xor edi, edi
	mov [ebp-0x5c], ebx
	mov esi, ebx
_Z19CL_WriteVoicePacketi_40:
	mov eax, [ebx+0x100]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [ebx+0x100]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call _Z13MSG_WriteDataP5msg_tPKvi
	add edi, 0x1
	add esi, 0x104
	add ebx, 0x104
	mov eax, [ebp-0x5c]
	cmp edi, [eax+0xa28]
	jl _Z19CL_WriteVoicePacketi_40
	jmp _Z19CL_WriteVoicePacketi_50
	nop


;Initialized global or static variables of cl_voice:
SECTION .data


;Initialized constant data of cl_voice:
SECTION .rdata


;Zero initialized global or static variables of cl_voice:
SECTION .bss
tempVoicePacketBuf: resb 0x800


;All cstrings:
SECTION .rdata
_cstring_invalid_server_v:		db "Invalid server voice packet of %i bytes",0ah,0
_cstring_invalid_voice_pa:		db "Invalid voice packet - talker was %i",0ah,0
_cstring_v:		db "v",0
_cstring_voice_i:		db "voice: %i",0ah,0



;All constant floats and doubles:
SECTION .rdata

