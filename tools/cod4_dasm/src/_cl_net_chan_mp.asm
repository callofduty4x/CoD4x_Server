;Imports of cl_net_chan_mp:
	extern clientConnections
	extern clients
	extern Netchan_Transmit
	extern net_profile
	extern NetProf_PrepProfiling
	extern NetProf_AddPacket
	extern Netchan_TransmitNextFragment

;Exports of cl_net_chan_mp:
	global CL_Netchan_Decode
	global CL_Netchan_Transmit
	global CL_Netchan_PrintProfileStats
	global CL_Netchan_AddOOBProfilePacket
	global CL_Netchan_TransmitNextFragment


SECTION .text


;CL_Netchan_Decode(unsigned char*, int)
CL_Netchan_Decode:
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
	jle CL_Netchan_Decode_10
	xor esi, esi
	xor edx, edx
	jmp CL_Netchan_Decode_20
CL_Netchan_Decode_30:
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
	jz CL_Netchan_Decode_10
CL_Netchan_Decode_20:
	lea eax, [edi+esi]
	cmp byte [eax], 0x0
	jz CL_Netchan_Decode_30
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
	jnz CL_Netchan_Decode_20
CL_Netchan_Decode_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_Netchan_Transmit(netchan_t*, unsigned char*, int)
CL_Netchan_Transmit:
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
	jle CL_Netchan_Transmit_10
	xor esi, esi
	xor edx, edx
	jmp CL_Netchan_Transmit_20
CL_Netchan_Transmit_30:
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
	jz CL_Netchan_Transmit_10
CL_Netchan_Transmit_20:
	mov eax, [ebp-0x1c]
	add eax, esi
	cmp byte [eax], 0x0
	jz CL_Netchan_Transmit_30
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp [ebp-0x20], edx
	jnz CL_Netchan_Transmit_20
CL_Netchan_Transmit_10:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Netchan_Transmit
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CL_Netchan_PrintProfileStats(int, int)
CL_Netchan_PrintProfileStats:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CL_Netchan_AddOOBProfilePacket(int, int)
CL_Netchan_AddOOBProfilePacket:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, net_profile
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz CL_Netchan_AddOOBProfilePacket_10
	mov ebx, clientConnections
	add ebx, 0x60fdc
	mov [esp], ebx
	call NetProf_PrepProfiling
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call NetProf_AddPacket
CL_Netchan_AddOOBProfilePacket_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;CL_Netchan_TransmitNextFragment(netchan_t*)
CL_Netchan_TransmitNextFragment:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Netchan_TransmitNextFragment
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

