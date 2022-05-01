;Imports of sv_voice_mp:
	extern sv_voice
	extern _Z12MSG_ReadByteP5msg_t
	extern _Z12MSG_ReadDataP5msg_tPvi
	extern _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t
	extern _Z10Com_PrintfiPKcz
	extern svs
	extern _Z13MSG_ReadShortP5msg_t
	extern g_WeaponDefPool
	extern memcpy
	extern _ZN10LargeLocalC1Ei
	extern _ZN10LargeLocal6GetBufEv
	extern _ZN10LargeLocalD1Ev
	extern _Z8MSG_InitP5msg_tPhi
	extern _Z15MSG_WriteStringP5msg_tPKc
	extern _Z13MSG_WriteByteP5msg_ti
	extern _Z16Com_PrintWarningiPKcz
	extern _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi
	extern _Z13MSG_WriteDataP5msg_tPKvi
	extern _Unwind_Resume

;Exports of sv_voice_mp:
	global _Z12SV_UserVoiceP8client_tP5msg_t
	global _Z19SV_PreGameUserVoiceP8client_tP5msg_t
	global _Z19SV_QueueVoicePacketiiP13VoicePacket_t
	global _Z22SV_SendClientVoiceDataP8client_t
	global _Z23SV_ClientHasClientMutedii
	global _Z23SV_ClientWantsVoiceDatai


SECTION .text


;SV_UserVoice(client_t*, msg_t*)
_Z12SV_UserVoiceP8client_tP5msg_t:
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
	jnz _Z12SV_UserVoiceP8client_tP5msg_t_10
_Z12SV_UserVoiceP8client_tP5msg_t_20:
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12SV_UserVoiceP8client_tP5msg_t_10:
	mov [esp], esi
	call _Z12MSG_ReadByteP5msg_t
	mov edi, eax
	test eax, eax
	jle _Z12SV_UserVoiceP8client_tP5msg_t_20
	xor ebx, ebx
	mov eax, [ebp+0x8]
	add eax, 0x21288
	mov [ebp-0x12c], eax
	jmp _Z12SV_UserVoiceP8client_tP5msg_t_30
_Z12SV_UserVoiceP8client_tP5msg_t_40:
	mov [esp+0x8], edx
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov [esp], esi
	call _Z12MSG_ReadDataP5msg_tPvi
	lea eax, [ebp-0x11d]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x21284]
	mov [esp], eax
	call _Z16G_BroadcastVoiceP9gentity_sP13VoicePacket_t
	add ebx, 0x1
	cmp edi, ebx
	jz _Z12SV_UserVoiceP8client_tP5msg_t_20
_Z12SV_UserVoiceP8client_tP5msg_t_30:
	mov [esp], esi
	call _Z12MSG_ReadByteP5msg_t
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	jbe _Z12SV_UserVoiceP8client_tP5msg_t_40
	mov eax, [ebp-0x12c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_received_invalid
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z12SV_UserVoiceP8client_tP5msg_t_20
	nop


;SV_PreGameUserVoice(client_t*, msg_t*)
_Z19SV_PreGameUserVoiceP8client_tP5msg_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14c
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_10
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_20:
	add esp, 0x14c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_10:
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
	call _Z12MSG_ReadByteP5msg_t
	mov [ebp-0x134], eax
	test eax, eax
	jle _Z19SV_PreGameUserVoiceP8client_tP5msg_t_20
	mov dword [ebp-0x130], 0x0
	mov edx, svs
	mov [ebp-0x13c], edx
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_70:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z13MSG_ReadShortP5msg_t
	mov edx, eax
	mov [ebp-0x1c], eax
	lea eax, [eax-0x1]
	cmp eax, 0xff
	ja _Z19SV_PreGameUserVoiceP8client_tP5msg_t_30
	mov [esp+0x8], edx
	lea edx, [ebp-0x11c]
	mov [esp+0x4], edx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12MSG_ReadDataP5msg_tPvi
	mov edx, [ebp-0x138]
	mov eax, [ebp-0x13c]
	lea ebx, [edx+eax+g_WeaponDefPool+0x396dc]
	xor esi, esi
	lea edx, [eax+g_WeaponDefPool+0x3971c]
	mov [ebp-0x12c], edx
	mov edi, svs
	add edi, 0x46380c
	jmp _Z19SV_PreGameUserVoiceP8client_tP5msg_t_40
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_60:
	add esi, 0x1
	add edi, 0xa5634
	add dword [ebp-0x12c], 0xa5634
	add ebx, 0xa5634
	cmp esi, 0x40
	jz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_50
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_40:
	cmp [ebp-0x138], esi
	jz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_60
	mov eax, [ebp-0x12c]
	cmp dword [eax-0xa3630], 0x1
	jle _Z19SV_PreGameUserVoiceP8client_tP5msg_t_60
	cmp byte [ebx], 0x0
	jnz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_60
	cmp byte [eax], 0x0
	jz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_60
	mov edx, [edi+0xa35ec]
	cmp edx, 0x27
	jg _Z19SV_PreGameUserVoiceP8client_tP5msg_t_60
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
	jnz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_40
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_50:
	add dword [ebp-0x130], 0x1
	mov eax, [ebp-0x130]
	cmp [ebp-0x134], eax
	jnz _Z19SV_PreGameUserVoiceP8client_tP5msg_t_70
	jmp _Z19SV_PreGameUserVoiceP8client_tP5msg_t_20
_Z19SV_PreGameUserVoiceP8client_tP5msg_t_30:
	mov eax, [ebp+0x8]
	add eax, 0x21288
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_received_invalid
	mov dword [esp], 0xf
	call _Z10Com_PrintfiPKcz
	jmp _Z19SV_PreGameUserVoiceP8client_tP5msg_t_20


;SV_QueueVoicePacket(int, int, VoicePacket_t*)
_Z19SV_QueueVoicePacketiiP13VoicePacket_t:
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
	jg _Z19SV_QueueVoicePacketiiP13VoicePacket_t_10
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
_Z19SV_QueueVoicePacketiiP13VoicePacket_t_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;SV_SendClientVoiceData(client_t*)
_Z22SV_SendClientVoiceDataP8client_t:
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
	jz _Z22SV_SendClientVoiceDataP8client_t_10
_Z22SV_SendClientVoiceDataP8client_t_20:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22SV_SendClientVoiceDataP8client_t_10:
	mov ecx, [edi+0xa35ec]
	test ecx, ecx
	jz _Z22SV_SendClientVoiceDataP8client_t_20
	mov dword [esp+0x8], 0x20000
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z8MSG_InitP5msg_tPhi
	mov dword [esp+0x4], _cstring_v
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z15MSG_WriteStringP5msg_tPKc
	mov eax, [edi+0xa35ec]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov edx, [edi+0xa35ec]
	test edx, edx
	jg _Z22SV_SendClientVoiceDataP8client_t_30
_Z22SV_SendClientVoiceDataP8client_t_60:
	mov eax, [ebp-0x54]
	test eax, eax
	jz _Z22SV_SendClientVoiceDataP8client_t_40
	lea eax, [edi+0x21288]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_voice_ms
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
	jmp _Z22SV_SendClientVoiceDataP8client_t_20
_Z22SV_SendClientVoiceDataP8client_t_40:
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
	call _Z22NET_OutOfBandVoiceData8netsrc_t8netadr_tPhi
	mov dword [edi+0xa35ec], 0x0
	jmp _Z22SV_SendClientVoiceDataP8client_t_20
_Z22SV_SendClientVoiceDataP8client_t_30:
	mov esi, edi
	xor ebx, ebx
_Z22SV_SendClientVoiceDataP8client_t_50:
	movzx eax, byte [esi+0xa0d24]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
	mov eax, [esi+0xa0e25]
	mov [esp+0x4], eax
	lea eax, [ebp-0x54]
	mov [esp], eax
	call _Z13MSG_WriteByteP5msg_ti
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
	call _Z13MSG_WriteDataP5msg_tPKvi
	add ebx, 0x1
	add esi, 0x105
	cmp ebx, [edi+0xa35ec]
	jl _Z22SV_SendClientVoiceDataP8client_t_50
	jmp _Z22SV_SendClientVoiceDataP8client_t_60
	mov ebx, eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZN10LargeLocalD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;SV_ClientHasClientMuted(int, int)
_Z23SV_ClientHasClientMutedii:
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
_Z23SV_ClientWantsVoiceDatai:
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

