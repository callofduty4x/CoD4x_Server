;Imports of cl_net_chan_mp:
	extern clientConnections
	extern clients
	extern _Z16Netchan_TransmitP9netchan_tiPKh
	extern net_profile
	extern _Z21NetProf_PrepProfilingP16netProfileInfo_t
	extern _Z17NetProf_AddPacketP18netProfileStream_tii
	extern _Z28Netchan_TransmitNextFragmentP9netchan_t

;Exports of cl_net_chan_mp:
	global _Z17CL_Netchan_DecodePhi
	global _Z19CL_Netchan_TransmitP9netchan_tPhi
	global _Z28CL_Netchan_PrintProfileStatsii
	global _Z30CL_Netchan_AddOOBProfilePacketii
	global _Z31CL_Netchan_TransmitNextFragmentP9netchan_t


SECTION .text


;CL_Netchan_Decode(unsigned char*, int)
_Z17CL_Netchan_DecodePhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, clientConnections
	mov edx, [eax+0x130]
	and edx, 0x7f
	shl edx, 0xa
	lea edi, [edx+eax+0x134]
	mov edx, [eax+0x20134]
	movzx ebx, byte [eax+0x124]
	xor bl, dl
	mov edx, [ebp+0xc]
	test edx, edx
	jle _Z17CL_Netchan_DecodePhi_10
	xor esi, esi
	xor edx, edx
	jmp _Z17CL_Netchan_DecodePhi_20
_Z17CL_Netchan_DecodePhi_30:
	mov eax, edi
	mov esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	mov eax, [ebp+0x8]
	xor [edx+eax], bl
	add edx, 0x1
	cmp edx, [ebp+0xc]
	jz _Z17CL_Netchan_DecodePhi_10
_Z17CL_Netchan_DecodePhi_20:
	lea eax, [edi+esi]
	cmp byte [eax], 0x0
	jz _Z17CL_Netchan_DecodePhi_30
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	mov eax, [ebp+0x8]
	xor [edx+eax], bl
	add edx, 0x1
	cmp edx, [ebp+0xc]
	jnz _Z17CL_Netchan_DecodePhi_20
_Z17CL_Netchan_DecodePhi_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_Netchan_Transmit(netchan_t*, unsigned char*, int)
_Z19CL_Netchan_TransmitP9netchan_tPhi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x10]
	sub eax, 0x9
	mov [ebp-0x20], eax
	mov edi, [ebp+0xc]
	add edi, 0x9
	mov edx, clientConnections
	mov eax, [edx+0x20138]
	and eax, 0x7f
	shl eax, 0xa
	lea eax, [eax+edx+0x20140]
	mov [ebp-0x1c], eax
	mov eax, clients
	mov eax, [eax+0x256b4]
	movzx ebx, byte [edx+0x124]
	xor bl, al
	xor bl, [edx+0x20134]
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle _Z19CL_Netchan_TransmitP9netchan_tPhi_10
	xor esi, esi
	xor edx, edx
	jmp _Z19CL_Netchan_TransmitP9netchan_tPhi_20
_Z19CL_Netchan_TransmitP9netchan_tPhi_30:
	mov eax, [ebp-0x1c]
	mov esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp [ebp-0x20], edx
	jz _Z19CL_Netchan_TransmitP9netchan_tPhi_10
_Z19CL_Netchan_TransmitP9netchan_tPhi_20:
	mov eax, [ebp-0x1c]
	add eax, esi
	cmp byte [eax], 0x0
	jz _Z19CL_Netchan_TransmitP9netchan_tPhi_30
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp [ebp-0x20], edx
	jnz _Z19CL_Netchan_TransmitP9netchan_tPhi_20
_Z19CL_Netchan_TransmitP9netchan_tPhi_10:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16Netchan_TransmitP9netchan_tiPKh
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CL_Netchan_PrintProfileStats(int, int)
_Z28CL_Netchan_PrintProfileStatsii:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CL_Netchan_AddOOBProfilePacket(int, int)
_Z30CL_Netchan_AddOOBProfilePacketii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, net_profile
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z30CL_Netchan_AddOOBProfilePacketii_10
	mov ebx, clientConnections
	add ebx, 0x60fdc
	mov [esp], ebx
	call _Z21NetProf_PrepProfilingP16netProfileInfo_t
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17NetProf_AddPacketP18netProfileStream_tii
_Z30CL_Netchan_AddOOBProfilePacketii_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_Netchan_TransmitNextFragment(netchan_t*)
_Z31CL_Netchan_TransmitNextFragmentP9netchan_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28Netchan_TransmitNextFragmentP9netchan_t
	leave
	ret
	nop


;Initialized global or static variables of cl_net_chan_mp:
SECTION .data


;Initialized constant data of cl_net_chan_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_net_chan_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

