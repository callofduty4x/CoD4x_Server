;Imports of cl_voice:
	extern MSG_ReadByte
	extern MSG_ReadData
	extern CL_IsPlayerMuted
	extern cl_voice
	extern Voice_IncomingVoiceData
	extern Com_Printf
	extern CL_IsClientLocal
	extern sv_voice
	extern IN_IsTalkKeyHeld
	extern Voice_IsClientTalking
	extern clientUIActives
	extern clientConnections
	extern MSG_Init
	extern MSG_WriteString
	extern MSG_WriteShort
	extern cl_voiceCommunication
	extern MSG_WriteByte
	extern NET_OutOfBandVoiceData
	extern cl_showSend
	extern MSG_WriteData

;Exports of cl_voice:
	global tempVoicePacketBuf
	global CL_VoicePacket
	global CL_IsPlayerTalking
	global CL_WriteVoicePacket


SECTION .text


;CL_VoicePacket(int, msg_t*)
CL_VoicePacket:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov esi, [ebp+0xc]
	mov [esp], esi
	call MSG_ReadByte
	mov ebx, eax
	cmp eax, 0x28
	ja CL_VoicePacket_10
	test eax, eax
	jg CL_VoicePacket_20
CL_VoicePacket_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_VoicePacket_20:
	xor edi, edi
	jmp CL_VoicePacket_30
CL_VoicePacket_60:
	add edi, 0x1
	cmp ebx, edi
	jz CL_VoicePacket_10
CL_VoicePacket_30:
	mov [esp], esi
	call MSG_ReadByte
	mov [ebp-0x11d], al
	mov [esp], esi
	call MSG_ReadByte
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	ja CL_VoicePacket_40
	mov [esp+0x8], edx
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], esi
	call MSG_ReadData
	movzx eax, byte [ebp-0x11d]
	cmp al, 0x3f
	ja CL_VoicePacket_50
	movzx eax, al
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_IsPlayerMuted
	test al, al
	jnz CL_VoicePacket_60
	mov eax, cl_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_VoicePacket_60
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	movzx eax, byte [ebp-0x11d]
	mov [esp], eax
	call Voice_IncomingVoiceData
	jmp CL_VoicePacket_60
CL_VoicePacket_40:
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_invalid_server_v
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_VoicePacket_10
CL_VoicePacket_50:
	movzx eax, al
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_invalid_voice_pa
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_VoicePacket_10
	nop


;CL_IsPlayerTalking(int, int)
CL_IsPlayerTalking:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call CL_IsClientLocal
	test al, al
	jz CL_IsPlayerTalking_10
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_IsPlayerTalking_20
	mov eax, cl_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_IsPlayerTalking_10
CL_IsPlayerTalking_20:
	call IN_IsTalkKeyHeld
	movzx eax, al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_IsPlayerTalking_10:
	mov [esp], ebx
	call Voice_IsClientTalking
	movzx eax, al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CL_WriteVoicePacket(int)
CL_WriteVoicePacket:
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
	jnz CL_WriteVoicePacket_10
	cmp edx, 0x9
	jz CL_WriteVoicePacket_20
	cmp edx, 0x7
	jz CL_WriteVoicePacket_20
	cmp edx, 0x8
	jz CL_WriteVoicePacket_20
CL_WriteVoicePacket_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_WriteVoicePacket_20:
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], tempVoicePacketBuf
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_Init
	mov dword [esp+0x4], _cstring_v
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_WriteString
	mov eax, clientConnections
	mov eax, [eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_WriteShort
	mov ebx, cl_voiceCommunication
	movzx eax, byte [ebx+0xa28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [ebx+0xa28]
	test eax, eax
	jg CL_WriteVoicePacket_30
CL_WriteVoicePacket_50:
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
	call NET_OutOfBandVoiceData
	mov eax, cl_showSend
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz CL_WriteVoicePacket_10
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice_i
	mov dword [esp], 0xe
	call Com_Printf
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_WriteVoicePacket_30:
	xor edi, edi
	mov [ebp-0x5c], ebx
	mov esi, ebx
CL_WriteVoicePacket_40:
	mov eax, [ebx+0x100]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [ebx+0x100]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call MSG_WriteData
	add edi, 0x1
	add esi, 0x104
	add ebx, 0x104
	mov eax, [ebp-0x5c]
	cmp edi, [eax+0xa28]
	jl CL_WriteVoicePacket_40
	jmp CL_WriteVoicePacket_50
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

