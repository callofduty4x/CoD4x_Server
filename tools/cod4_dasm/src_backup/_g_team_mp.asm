;Imports of g_team_mp:
	extern level
	extern g_maxclients
	extern g_entities

;Exports of g_team_mp:
	global _Z10OnSameTeamP9gentity_sS0_
	global _Z15CheckTeamStatusv


SECTION .text


;OnSameTeam(gentity_s*, gentity_s*)
_Z10OnSameTeamP9gentity_sS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x15c]
	test eax, eax
	jz _Z10OnSameTeamP9gentity_sS0__10
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x15c]
	test edx, edx
	jz _Z10OnSameTeamP9gentity_sS0__10
	mov eax, [eax+0x3010]
	test eax, eax
	jz _Z10OnSameTeamP9gentity_sS0__10
	cmp eax, [edx+0x3010]
	jz _Z10OnSameTeamP9gentity_sS0__20
_Z10OnSameTeamP9gentity_sS0__10:
	xor eax, eax
	pop ebp
	ret
_Z10OnSameTeamP9gentity_sS0__20:
	mov eax, 0x1
	pop ebp
	ret


;CheckTeamStatus()
_Z15CheckTeamStatusv:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, level
	mov ecx, [edx+0x1ec]
	mov eax, ecx
	sub eax, [edx+0x20c]
	test eax, eax
	jle _Z15CheckTeamStatusv_10
	mov [edx+0x20c], ecx
	mov ebx, g_maxclients
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z15CheckTeamStatusv_10
	xor ecx, ecx
	mov edx, g_entities
	add edx, 0x100
_Z15CheckTeamStatusv_30:
	cmp byte [edx], 0x0
	jz _Z15CheckTeamStatusv_20
	mov eax, [edx+0x5c]
	test byte [eax+0x14], 0x2
	jnz _Z15CheckTeamStatusv_20
	mov dword [eax+0x154], 0xffffffff
_Z15CheckTeamStatusv_20:
	add ecx, 0x1
	add edx, 0x274
	mov eax, [ebx]
	cmp [eax+0xc], ecx
	jg _Z15CheckTeamStatusv_30
_Z15CheckTeamStatusv_10:
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of g_team_mp:
SECTION .data


;Initialized constant data of g_team_mp:
SECTION .rdata


;Zero initialized global or static variables of g_team_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

