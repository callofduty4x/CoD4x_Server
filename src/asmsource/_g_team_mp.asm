;Imports of g_team_mp:
	extern level
	extern g_maxclients
	extern g_entities

;Exports of g_team_mp:
	global CheckTeamStatus


SECTION .text


;CheckTeamStatus()
CheckTeamStatus:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, level
	mov ecx, [edx+0x1ec]
	mov eax, ecx
	sub eax, [edx+0x20c]
	test eax, eax
	jle CheckTeamStatus_10
	mov [edx+0x20c], ecx
	mov ebx, g_maxclients
	mov eax, [ebx]
	mov eax, [eax+0xc]
	test eax, eax
	jle CheckTeamStatus_10
	xor ecx, ecx
	mov edx, g_entities
	add edx, 0x100
CheckTeamStatus_30:
	cmp byte [edx], 0x0
	jz CheckTeamStatus_20
	mov eax, [edx+0x5c]
	test byte [eax+0x14], 0x2
	jnz CheckTeamStatus_20
	mov dword [eax+0x154], 0xffffffff
CheckTeamStatus_20:
	add ecx, 0x1
	add edx, 0x274
	mov eax, [ebx]
	cmp [eax+0xc], ecx
	jg CheckTeamStatus_30
CheckTeamStatus_10:
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

