;Imports of sv_net_chan_mp:
	extern _Z16Netchan_TransmitP9netchan_tiPKh
	extern memset
	extern svs
	extern net_profile
	extern _Z21NetProf_PrepProfilingP16netProfileInfo_t
	extern _Z17NetProf_AddPacketP18netProfileStream_tii
	extern _Z28Netchan_TransmitNextFragmentP9netchan_t

;Exports of sv_net_chan_mp:
	global _Z17SV_Netchan_DecodeP8client_tPhi
	global _Z19SV_Netchan_TransmitP8client_tPhi
	global _Z30SV_Netchan_AddOOBProfilePacketi
	global _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t


SECTION .text


;SV_Netchan_Decode(client_t*, unsigned char*, int)
_Z17SV_Netchan_DecodeP8client_tPhi:
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
	jle _Z17SV_Netchan_DecodeP8client_tPhi_10
	xor esi, esi
	xor edx, edx
	jmp _Z17SV_Netchan_DecodeP8client_tPhi_20
_Z17SV_Netchan_DecodeP8client_tPhi_30:
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
	jz _Z17SV_Netchan_DecodeP8client_tPhi_10
_Z17SV_Netchan_DecodeP8client_tPhi_20:
	lea eax, [edi+esi]
	cmp byte [eax], 0x0
	jz _Z17SV_Netchan_DecodeP8client_tPhi_30
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
	jnz _Z17SV_Netchan_DecodeP8client_tPhi_20
_Z17SV_Netchan_DecodeP8client_tPhi_10:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SV_Netchan_Transmit(client_t*, unsigned char*, int)
_Z19SV_Netchan_TransmitP8client_tPhi:
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
	jle _Z19SV_Netchan_TransmitP8client_tPhi_10
	xor esi, esi
	xor edx, edx
	jmp _Z19SV_Netchan_TransmitP8client_tPhi_20
_Z19SV_Netchan_TransmitP8client_tPhi_40:
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
	jz _Z19SV_Netchan_TransmitP8client_tPhi_30
_Z19SV_Netchan_TransmitP8client_tPhi_20:
	mov eax, [ebp-0x1c]
	add eax, esi
	cmp byte [eax], 0x0
	jz _Z19SV_Netchan_TransmitP8client_tPhi_40
	add esi, 0x1
	movzx eax, byte [eax]
	mov ecx, edx
	and ecx, 0x1
	shl eax, cl
	xor bl, al
	xor [edi+edx], bl
	add edx, 0x1
	cmp edx, [ebp-0x20]
	jnz _Z19SV_Netchan_TransmitP8client_tPhi_20
_Z19SV_Netchan_TransmitP8client_tPhi_30:
	mov eax, [ebp+0x8]
	jmp _Z19SV_Netchan_TransmitP8client_tPhi_50
_Z19SV_Netchan_TransmitP8client_tPhi_10:
	mov eax, edx
_Z19SV_Netchan_TransmitP8client_tPhi_50:
	add eax, 0x10
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16Netchan_TransmitP9netchan_tiPKh
	mov esi, eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x40]
	test edx, edx
	jnz _Z19SV_Netchan_TransmitP8client_tPhi_60
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
_Z19SV_Netchan_TransmitP8client_tPhi_60:
	mov edx, esi
	movzx eax, dl
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;SV_Netchan_AddOOBProfilePacket(int)
_Z30SV_Netchan_AddOOBProfilePacketi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, net_profile
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z30SV_Netchan_AddOOBProfilePacketi_10
	mov ebx, svs
	add ebx, 0xb224ad4
	mov [esp], ebx
	call _Z21NetProf_PrepProfilingP16netProfileInfo_t
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z17NetProf_AddPacketP18netProfileStream_tii
_Z30SV_Netchan_AddOOBProfilePacketi_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;SV_Netchan_TransmitNextFragment(client_t*, netchan_t*)
_Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z28Netchan_TransmitNextFragmentP9netchan_t
	mov esi, eax
	mov eax, [ebx+0x30]
	test eax, eax
	jnz _Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t_10
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
_Z31SV_Netchan_TransmitNextFragmentP8client_tP9netchan_t_10:
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

