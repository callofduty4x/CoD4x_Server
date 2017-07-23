;Imports of sv_voice_mp:
	extern sv_voice
	extern MSG_ReadByte
	extern MSG_ReadData
	extern G_BroadcastVoice
	extern Com_Printf
	extern svs
	extern MSG_ReadShort
	extern g_WeaponDefPool
	extern memcpy
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _ZN10LargeLocalD1Ev
	extern MSG_Init
	extern MSG_WriteString
	extern MSG_WriteByte
	extern Com_PrintWarning
	extern NET_OutOfBandVoiceData
	extern MSG_WriteData
	extern _Unwind_Resume

;Exports of sv_voice_mp:
	global SV_UserVoice
	global SV_PreGameUserVoice
	global SV_QueueVoicePacket
	global SV_SendClientVoiceData
	global SV_ClientHasClientMuted
	global SV_ClientWantsVoiceData


SECTION .text


;SV_UserVoice(client_t*, msg_t*)
SV_UserVoice:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov esi, [ebp+0xc]
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_UserVoice_10
SV_UserVoice_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_UserVoice_10:
	mov [esp], esi
	call MSG_ReadByte
	mov edi, eax
	test eax, eax
	jle SV_UserVoice_20
	xor ebx, ebx
	mov eax, [ebp+0x8]
	add eax, 0x21288
	mov [ebp-0x12c], eax
	jmp SV_UserVoice_30
SV_UserVoice_40:
	mov [esp+0x8], edx
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov [esp], esi
	call MSG_ReadData
	lea eax, [ebp-0x11d]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x21284]
	mov [esp], eax
	call G_BroadcastVoice
	add ebx, 0x1
	cmp edi, ebx
	jz SV_UserVoice_20
SV_UserVoice_30:
	mov [esp], esi
	call MSG_ReadByte
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe SV_UserVoice_40
	mov eax, [ebp-0x12c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_received_invalid
	mov dword [esp], 0xf
	call Com_Printf
	jmp SV_UserVoice_20
	nop


;SV_PreGameUserVoice(client_t*, msg_t*)
SV_PreGameUserVoice:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz SV_PreGameUserVoice_10
SV_PreGameUserVoice_20:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_PreGameUserVoice_10:
	mov eax, svs
	add eax, 0x46380c
	mov edx, [ebp+0x8]
	sub edx, eax
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x4315b545
	mov [ebp-0x138], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ReadByte
	mov [ebp-0x134], eax
	test eax, eax
	jle SV_PreGameUserVoice_20
	mov dword [ebp-0x130], 0x0
	mov edx, svs
	mov [ebp-0x13c], edx
SV_PreGameUserVoice_70:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ReadShort
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	ja SV_PreGameUserVoice_30
	mov [esp+0x8], edx
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call MSG_ReadData
	mov edx, [ebp-0x138]
	mov eax, [ebp-0x13c]
	lea ebx, [edx+eax+g_WeaponDefPool+0x396dc]
	xor esi, esi
	lea edx, [eax+g_WeaponDefPool+0x3971c]
	mov [ebp-0x12c], edx
	mov edi, svs
	add edi, 0x46380c
	jmp SV_PreGameUserVoice_40
SV_PreGameUserVoice_60:
	add esi, 0x1
	add edi, 0xa5634
	add dword [ebp-0x12c], 0xa5634
	add ebx, 0xa5634
	cmp esi, 0x40
	jz SV_PreGameUserVoice_50
SV_PreGameUserVoice_40:
	cmp [ebp-0x138], esi
	jz SV_PreGameUserVoice_60
	mov eax, [ebp-0x12c]
	cmp dword [eax-0xa3630], 0x1
	jle SV_PreGameUserVoice_60
	cmp byte [ebx], 0x0
	jnz SV_PreGameUserVoice_60
	cmp byte [eax], 0x0
	jz SV_PreGameUserVoice_60
	mov edx, [edi+0xa35ec]
	cmp edx, 0x27
	jg SV_PreGameUserVoice_60
	mov ecx, [ebp-0x1c]
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4]
	mov [eax+edi+0xa0e25], ecx
	mov edx, [edi+0xa35ec]
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4+0xa0d20]
	lea eax, [edi+eax+0x5]
	mov [esp+0x8], ecx
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov edx, [edi+0xa35ec]
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4]
	movzx edx, byte [ebp-0x138]
	mov [eax+edi+0xa0d24], dl
	add dword [edi+0xa35ec], 0x1
	add esi, 0x1
	add edi, 0xa5634
	add dword [ebp-0x12c], 0xa5634
	add ebx, 0xa5634
	cmp esi, 0x40
	jnz SV_PreGameUserVoice_40
SV_PreGameUserVoice_50:
	add dword [ebp-0x130], 0x1
	mov eax, [ebp-0x130]
	cmp [ebp-0x134], eax
	jnz SV_PreGameUserVoice_70
	jmp SV_PreGameUserVoice_20
SV_PreGameUserVoice_30:
	mov eax, [ebp+0x8]
	add eax, 0x21288
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_received_invalid
	mov dword [esp], 0xf
	call Com_Printf
	jmp SV_PreGameUserVoice_20


;SV_QueueVoicePacket(int, int, VoicePacket_t*)
SV_QueueVoicePacket:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0xc]
	mov esi, [ebp+0x10]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, svs
	lea ebx, [edx+eax*4+0x46380c]
	mov edx, [ebx+0xa35ec]
	cmp edx, 0x27
	jg SV_QueueVoicePacket_10
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4]
	mov edx, [esi+0x101]
	mov [eax+ebx+0xa0e25], edx
	mov edx, [ebx+0xa35ec]
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4+0xa0d20]
	lea ecx, [ebx+eax+0x5]
	lea edx, [esi+0x1]
	mov eax, [esi+0x101]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
	mov edx, [ebx+0xa35ec]
	mov eax, edx
	shl eax, 0x6
	add eax, edx
	lea eax, [edx+eax*4]
	movzx edx, byte [ebp+0x8]
	mov [eax+ebx+0xa0d24], dl
	add dword [ebx+0xa35ec], 0x1
SV_QueueVoicePacket_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SV_SendClientVoiceData(client_t*)
SV_SendClientVoiceData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov dword [esp+0x4], 0x20000
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalC1Ei
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocal6GetBufEv
	cmp dword [edi], 0x4
	jz SV_SendClientVoiceData_10
SV_SendClientVoiceData_20:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_SendClientVoiceData_10:
	mov ecx, [edi+0xa35ec]
	test ecx, ecx
	jz SV_SendClientVoiceData_20
	mov dword [esp+0x8], 0x20000
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_Init
	mov dword [esp+0x4], _cstring_v
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_WriteString
	mov eax, [edi+0xa35ec]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_WriteByte
	mov edx, [edi+0xa35ec]
	test edx, edx
	jg SV_SendClientVoiceData_30
SV_SendClientVoiceData_60:
	mov eax, [ebp-0x54]
	test eax, eax
	jz SV_SendClientVoiceData_40
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_voice_ms
	mov dword [esp], 0xf
	call Com_PrintWarning
	jmp SV_SendClientVoiceData_20
SV_SendClientVoiceData_40:
	mov ebx, [edi+0x20]
	mov [ebp-0x2c], ebx
	mov ecx, [edi+0x24]
	mov [ebp-0x28], ecx
	mov edx, [edi+0x28]
	mov [ebp-0x24], edx
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x10], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov dword [esp], 0x1
	call NET_OutOfBandVoiceData
	mov dword [edi+0xa35ec], 0x0
	jmp SV_SendClientVoiceData_20
SV_SendClientVoiceData_30:
	mov esi, edi
	xor ebx, ebx
SV_SendClientVoiceData_50:
	movzx eax, byte [esi+0xa0d24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [esi+0xa0e25]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_WriteByte
	mov eax, [esi+0xa0e25]
	mov [esp+0x8], eax
	mov eax, ebx
	shl eax, 0x6
	add eax, ebx
	lea eax, [ebx+eax*4+0xa0d20]
	lea eax, [edi+eax+0x5]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call MSG_WriteData
	add ebx, 0x1
	add esi, 0x105
	cmp ebx, [edi+0xa35ec]
	jl SV_SendClientVoiceData_50
	jmp SV_SendClientVoiceData_60
	mov ebx, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;SV_ClientHasClientMuted(int, int)
SV_ClientHasClientMuted:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	add eax, [ebp+0xc]
	movzx eax, byte [eax+g_WeaponDefPool+0x396dc]
	pop ebp
	ret


;SV_ClientWantsVoiceData(int)
SV_ClientWantsVoiceData:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	lea eax, [ecx+eax*2]
	mov edx, eax
	shl edx, 0x5
	add eax, edx
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	add eax, svs
	movzx eax, byte [eax+g_WeaponDefPool+0x3971c]
	pop ebp
	ret
	nop


;Initialized global or static variables of sv_voice_mp:
SECTION .data


;Initialized constant data of sv_voice_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_voice_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_received_invalid:		db "Received invalid voice packet of size %i from %s",0ah,0
_cstring_v:		db "v",0
_cstring_warning_voice_ms:		db "WARNING: voice msg overflowed for %s",0ah,0



;All constant floats and doubles:
SECTION .rdata

