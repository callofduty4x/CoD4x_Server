;Imports of sv_net_chan_mp:
	extern Netchan_Transmit
	extern memset
	extern svs
	extern net_profile
	extern NetProf_PrepProfiling
	extern NetProf_AddPacket
	extern Netchan_TransmitNextFragment

;Exports of sv_net_chan_mp:
	global SV_Netchan_Decode
	global SV_Netchan_Transmit
	global SV_Netchan_AddOOBProfilePacket
	global SV_Netchan_TransmitNextFragment


SECTION .text


;SV_Netchan_Decode(client_t*, unsigned char*, int)
SV_Netchan_Decode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x20e4c]
	and eax, 0x7f
	mov edx, eax
	shl edx, 0xa
	lea eax, [edx+eax*8+0xa40]
	lea edi, [ecx+eax+0x8]
	mov eax, [ecx+0xa0d20]
	movzx ebx, byte [ecx+0x20e5c]
	xor bl, al
	xor bl, [ecx+0x20e54]
	mov eax, [ebp+0x10]
	test eax, eax
	jle SV_Netchan_Decode_10
	xor esi, esi
	xor edx, edx
	jmp SV_Netchan_Decode_20
SV_Netchan_Decode_30:
	mov eax, edi
	mov esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	mov eax, [ebp+0xc]
	xor [edx+eax], bl
	add edx, 0x1
	cmp [ebp+0x10], edx
	jz SV_Netchan_Decode_10
SV_Netchan_Decode_20:
	lea eax, [edi+esi]
	cmp byte [eax], 0x0
	jz SV_Netchan_Decode_30
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	mov eax, [ebp+0xc]
	xor [edx+eax], bl
	add edx, 0x1
	cmp [ebp+0x10], edx
	jnz SV_Netchan_Decode_20
SV_Netchan_Decode_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_Netchan_Transmit(client_t*, unsigned char*, int)
SV_Netchan_Transmit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x10]
	sub eax, 0x4
	mov [ebp-0x20], eax
	mov edi, [ebp+0xc]
	add edi, 0x4
	mov edx, [ebp+0x8]
	add edx, 0x20e84
	mov [ebp-0x1c], edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	movzx ebx, byte [edx+0x20e5c]
	xor bl, al
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jle SV_Netchan_Transmit_10
	xor esi, esi
	xor edx, edx
	jmp SV_Netchan_Transmit_20
SV_Netchan_Transmit_40:
	mov eax, [ebp-0x1c]
	mov esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jz SV_Netchan_Transmit_30
SV_Netchan_Transmit_20:
	mov eax, [ebp-0x1c]
	add eax, esi
	cmp byte [eax], 0x0
	jz SV_Netchan_Transmit_40
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jnz SV_Netchan_Transmit_20
SV_Netchan_Transmit_30:
	mov eax, [ebp+0x8]
	jmp SV_Netchan_Transmit_50
SV_Netchan_Transmit_10:
	mov eax, edx
SV_Netchan_Transmit_50:
	add eax, 0x10
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call Netchan_Transmit
	mov esi, eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x40]
	test edx, edx
	jnz SV_Netchan_Transmit_60
	mov edx, eax
	mov eax, [eax+0x10]
	and eax, 0x1f
	lea ebx, [eax+eax*2]
	shl ebx, 0x5
	sub ebx, eax
	shl ebx, 0x5
	add ebx, eax
	lea ebx, [edx+ebx*4+0x21464]
	mov dword [esp+0x8], 0x2f84
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, svs
	mov eax, [edx+0x2dbc514]
	mov [ebx+0x2f6c], eax
	mov eax, [edx+0x2dbc518]
	mov [ebx+0x2f70], eax
SV_Netchan_Transmit_60:
	mov edx, esi
	movzx eax, dl
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_Netchan_AddOOBProfilePacket(int)
SV_Netchan_AddOOBProfilePacket:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, net_profile
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz SV_Netchan_AddOOBProfilePacket_10
	mov ebx, svs
	add ebx, svs+0x9778654
	mov [esp], ebx
	call NetProf_PrepProfiling
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call NetProf_AddPacket
SV_Netchan_AddOOBProfilePacket_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_Netchan_TransmitNextFragment(client_t*, netchan_t*)
SV_Netchan_TransmitNextFragment:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call Netchan_TransmitNextFragment
	mov esi, eax
	mov eax, [ebx+0x30]
	test eax, eax
	jnz SV_Netchan_TransmitNextFragment_10
	mov eax, [ebx]
	and eax, 0x1f
	lea ebx, [eax+eax*2]
	shl ebx, 0x5
	sub ebx, eax
	shl ebx, 0x5
	add ebx, eax
	mov eax, [ebp+0x8]
	lea ebx, [eax+ebx*4+0x21464]
	mov dword [esp+0x8], 0x2f84
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov edx, svs
	mov eax, [edx+0x2dbc514]
	mov [ebx+0x2f6c], eax
	mov eax, [edx+0x2dbc518]
	mov [ebx+0x2f70], eax
SV_Netchan_TransmitNextFragment_10:
	mov edx, esi
	movzx eax, dl
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of sv_net_chan_mp:
SECTION .data


;Initialized constant data of sv_net_chan_mp:
SECTION .rdata


;Zero initialized global or static variables of sv_net_chan_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

