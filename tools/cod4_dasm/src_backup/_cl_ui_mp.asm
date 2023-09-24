;Imports of cl_ui_mp:
	extern _Z19Dvar_RegisterStringPKcS0_tS0_
	extern cl_cdkey
	extern cl_cdkeychecksum
	extern _Z14Com_WriteCDKeyv
	extern clientUIActives
	extern clientConnections
	extern cls
	extern _Z22Com_UnloadSoundAliases18snd_alias_system_t
	extern _Z17Key_RemoveCatcherii
	extern _Z11UI_Shutdowni
	extern clients
	extern _Z10I_strncpyzPcPKci
	extern _Z19Info_SetValueForKeyPcPKcS1_
	extern _Z2vaPKcz
	extern _Z15NET_AdrToString8netadr_t
	extern _Z10EnablePbClv
	extern _Z13isPbClEnabledv
	extern _Z11DisablePbClv
	extern _Z19Com_SetErrorMessagePKc
	extern _Z9I_stricmpPKcS0_
	extern _Z25UI_GetGameTypeDisplayNamePKc
	extern _Z20UI_GetMapDisplayNamePKc
	extern __maskrune
	extern _Z15CL_ServerStatusPcS_i
	extern _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t
	extern _Z19CL_UpdateDirtyPingsii
	extern _Z18Key_KeynumToStringii
	extern _Z16Sys_Millisecondsv
	extern _Z7UI_Initi

;Exports of cl_ui_mp:
	global _Z13CLUI_GetCDKeyPciS_i
	global _Z13CLUI_SetCDKeyPcS_
	global _Z13CL_AllowPopupi
	global _Z13CL_ShutdownUIv
	global _Z14LAN_ResetPingsi
	global _Z16CL_GetClientNameiiPci
	global _Z17CL_GetClientStateiP15uiClientState_s
	global _Z17LAN_GetServerInfoiiPci
	global _Z17LAN_GetServerPingii
	global _Z17LAN_ServerIsDirtyii
	global _Z18CLUI_SetPbClStatusi
	global _Z18LAN_CompareServersiiiii
	global _Z18LAN_GetServerCounti
	global _Z19LAN_CompareHostnamePKcS0_
	global _Z19LAN_GetServerStatusPcS_i
	global _Z19LAN_MarkServerDirtyiii
	global _Z19LAN_ServerInfoValidii
	global _Z19UI_LoadSoundAliasesv
	global _Z20LAN_UpdateDirtyPingsii
	global _Z21Key_KeynumToStringBufiPci
	global _Z22CL_LocalClientIsInGamei
	global _Z22LAN_WaitServerResponsei
	global _Z23LAN_GetServerPunkBusterii
	global _Z30CL_SetDisplayHUDWithKeycatchUIih
	global _Z9CL_InitUIv


SECTION .text


;CLUI_GetCDKey(char*, int, char*, int)
_Z13CLUI_GetCDKeyPciS_i:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov dword [esp+0xc], _cstring_game_name
	mov dword [esp+0x8], 0x1c
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_fs_game
	call _Z19Dvar_RegisterStringPKcS0_tS0_
	mov edx, cl_cdkey
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
	mov byte [ebx+0x10], 0x0
	mov eax, cl_cdkeychecksum
	mov eax, [eax]
	mov [esi], eax
	mov byte [esi+0x4], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CLUI_SetCDKey(char*, char*)
_Z13CLUI_SetCDKeyPcS_:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, cl_cdkey
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov byte [edx+0x10], 0x0
	mov edx, cl_cdkeychecksum
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [edx], eax
	mov byte [edx+0x4], 0x0
	pop ebp
	jmp _Z14Com_WriteCDKeyv
	nop


;CL_AllowPopup(int)
_Z13CL_AllowPopupi:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz _Z13CL_AllowPopupi_10
	xor eax, eax
	cmp edx, 0x9
	setz al
	pop ebp
	ret
_Z13CL_AllowPopupi_10:
	xor eax, eax
	pop ebp
	ret


;CL_ShutdownUI()
_Z13CL_ShutdownUIv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov ecx, [ebx+0x110]
	test ecx, ecx
	jnz _Z13CL_ShutdownUIv_10
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13CL_ShutdownUIv_10:
	mov dword [esp], 0x0
	call _Z22Com_UnloadSoundAliases18snd_alias_system_t
	mov dword [esp+0x4], 0xffffffef
	mov dword [esp], 0x0
	call _Z17Key_RemoveCatcherii
	mov dword [esp], 0x0
	call _Z11UI_Shutdowni
	mov dword [ebx+0x110], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;LAN_ResetPings(int)
_Z14LAN_ResetPingsi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz _Z14LAN_ResetPingsi_10
	cmp eax, 0x2
	jz _Z14LAN_ResetPingsi_20
	test eax, eax
	jnz _Z14LAN_ResetPingsi_30
	mov edx, cls
	mov eax, edx
	add edx, 0x148
	mov ecx, 0x80
_Z14LAN_ResetPingsi_50:
	mov dword [eax+0x4b4c], 0x0
	test ecx, ecx
	jle _Z14LAN_ResetPingsi_30
	mov eax, edx
	xor edx, edx
_Z14LAN_ResetPingsi_40:
	mov word [eax+0x22], 0xffff
	mov dword [eax+0x24], 0x0
	mov byte [eax+0x28], 0x0
	add edx, 0x1
	add eax, 0x94
	cmp edx, ecx
	jnz _Z14LAN_ResetPingsi_40
_Z14LAN_ResetPingsi_30:
	pop ebp
	ret
_Z14LAN_ResetPingsi_10:
	mov eax, cls
	mov ecx, [eax+0x4b58]
	lea edx, [eax+0x4b5c]
	jmp _Z14LAN_ResetPingsi_50
_Z14LAN_ResetPingsi_20:
	mov edx, cls
	mov eax, edx
	add edx, 0x2d75e0
	mov ecx, 0x80
	jmp _Z14LAN_ResetPingsi_50


;CL_GetClientName(int, int, char*, int)
_Z16CL_GetClientNameiiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov byte [eax], 0x0
	mov ecx, clients
	mov edx, [ecx+0x8]
	test edx, edx
	jz _Z16CL_GetClientNameiiPci_10
	mov ebx, [ecx+0x2f8c]
	test ebx, ebx
	jle _Z16CL_GetClientNameiiPci_10
	mov esi, [ecx+0x2f94]
	mov eax, esi
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x17fad0]
	cmp edi, [eax]
	jz _Z16CL_GetClientNameiiPci_20
	xor edx, edx
_Z16CL_GetClientNameiiPci_30:
	add edx, 0x1
	cmp edx, ebx
	jz _Z16CL_GetClientNameiiPci_10
	lea eax, [esi+edx]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x17fad0]
	cmp [eax], edi
	jnz _Z16CL_GetClientNameiiPci_30
_Z16CL_GetClientNameiiPci_20:
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	add eax, 0x3c
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_GetClientNameiiPci_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_GetClientState(int, uiClientState_s*)
_Z17CL_GetClientStateiP15uiClientState_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, clientConnections
	mov eax, [esi+0x20]
	mov [ebx+0x4], eax
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	mov [ebx], eax
	mov dword [esp+0x8], 0x400
	mov eax, cls
	add eax, 0x8
	mov [esp+0x4], eax
	lea eax, [ebx+0x8]
	mov [esp], eax
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x400
	add esi, 0x24
	mov [esp+0x4], esi
	add ebx, 0x408
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;LAN_GetServerInfo(int, int, char*, int)
_Z17LAN_GetServerInfoiiPci:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov byte [ebp-0x424], 0x0
	cmp eax, 0x1
	jz _Z17LAN_GetServerInfoiiPci_10
	cmp eax, 0x2
	jz _Z17LAN_GetServerInfoiiPci_20
	test eax, eax
	jz _Z17LAN_GetServerInfoiiPci_30
_Z17LAN_GetServerInfoiiPci_50:
	test edi, edi
	jz _Z17LAN_GetServerInfoiiPci_40
	mov byte [edi], 0x0
_Z17LAN_GetServerInfoiiPci_40:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17LAN_GetServerInfoiiPci_30:
	cmp edx, 0x7f
	ja _Z17LAN_GetServerInfoiiPci_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x148]
_Z17LAN_GetServerInfoiiPci_60:
	test esi, esi
	jz _Z17LAN_GetServerInfoiiPci_50
	test edi, edi
	jz _Z17LAN_GetServerInfoiiPci_40
	mov byte [edi], 0x0
	lea eax, [esi+0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hostname
	lea ebx, [ebp-0x424]
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	lea eax, [esi+0x49]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x11]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clients
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x12]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, word [esi+0x22]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ping
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, word [esi+0x1e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_minping
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, word [esi+0x20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_maxping
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	lea eax, [esi+0x69]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_game
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	lea eax, [esi+0x81]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x10]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_nettype
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov ecx, [esi]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x4]
	mov [ebp-0x20], edx
	mov eax, [esi+0x8]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call _Z15NET_AdrToString8netadr_t
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_addr
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0xd]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pswrd
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, byte [esi+0xf]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_con_disabled
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0xe]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pure
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_allowanonymou
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, byte [esi+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ff
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, byte [esi+0x15]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_kc
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, byte [esi+0x16]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hc
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movsx eax, byte [esi+0x17]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_od
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hw
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x19]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x1a]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	movzx eax, byte [esi+0x1b]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call _Z2vaPKcz
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pb
	mov [esp], ebx
	call _Z19Info_SetValueForKeyPcPKcS1_
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17LAN_GetServerInfoiiPci_10:
	test edx, edx
	js _Z17LAN_GetServerInfoiiPci_50
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z17LAN_GetServerInfoiiPci_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea esi, [ecx+eax*4+0x4b5c]
	jmp _Z17LAN_GetServerInfoiiPci_60
_Z17LAN_GetServerInfoiiPci_20:
	cmp edx, 0x7f
	ja _Z17LAN_GetServerInfoiiPci_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x2d75e0]
	jmp _Z17LAN_GetServerInfoiiPci_60


;LAN_GetServerPing(int, int)
_Z17LAN_GetServerPingii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz _Z17LAN_GetServerPingii_10
	cmp eax, 0x2
	jz _Z17LAN_GetServerPingii_20
	test eax, eax
	jnz _Z17LAN_GetServerPingii_30
	cmp edx, 0x7f
	ja _Z17LAN_GetServerPingii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x148]
_Z17LAN_GetServerPingii_50:
	test eax, eax
	jz _Z17LAN_GetServerPingii_30
	movsx eax, word [eax+0x22]
	pop ebp
	ret
_Z17LAN_GetServerPingii_10:
	test edx, edx
	jns _Z17LAN_GetServerPingii_40
_Z17LAN_GetServerPingii_30:
	mov eax, 0xffffffff
	pop ebp
	ret
_Z17LAN_GetServerPingii_20:
	cmp edx, 0x7f
	ja _Z17LAN_GetServerPingii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x2d75e0]
	jmp _Z17LAN_GetServerPingii_50
_Z17LAN_GetServerPingii_40:
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z17LAN_GetServerPingii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b5c]
	jmp _Z17LAN_GetServerPingii_50
	nop


;LAN_ServerIsDirty(int, int)
_Z17LAN_ServerIsDirtyii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz _Z17LAN_ServerIsDirtyii_10
	cmp eax, 0x2
	jz _Z17LAN_ServerIsDirtyii_20
	test eax, eax
	jz _Z17LAN_ServerIsDirtyii_30
_Z17LAN_ServerIsDirtyii_40:
	xor eax, eax
	pop ebp
	ret
_Z17LAN_ServerIsDirtyii_30:
	cmp edx, 0x7f
	ja _Z17LAN_ServerIsDirtyii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx eax, byte [eax+0x15b]
	pop ebp
	ret
_Z17LAN_ServerIsDirtyii_10:
	test edx, edx
	js _Z17LAN_ServerIsDirtyii_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z17LAN_ServerIsDirtyii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	movzx eax, byte [ecx+eax*4+0x4b6f]
	pop ebp
	ret
_Z17LAN_ServerIsDirtyii_20:
	cmp edx, 0x7f
	ja _Z17LAN_ServerIsDirtyii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx eax, byte [eax+0x2d75f3]
	pop ebp
	ret
	nop


;CLUI_SetPbClStatus(int)
_Z18CLUI_SetPbClStatusi:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z18CLUI_SetPbClStatusi_10
	call _Z10EnablePbClv
	call _Z13isPbClEnabledv
	test eax, eax
	jz _Z18CLUI_SetPbClStatusi_20
	leave
	ret
_Z18CLUI_SetPbClStatusi_10:
	leave
	jmp _Z11DisablePbClv
_Z18CLUI_SetPbClStatusi_20:
	mov dword [ebp+0x8], _cstring_mpui_nopunkbuste
	leave
	jmp _Z19Com_SetErrorMessagePKc


;LAN_CompareServers(int, int, int, int, int)
_Z18LAN_CompareServersiiiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x14]
	mov ecx, [ebp+0x18]
	cmp eax, 0x1
	jz _Z18LAN_CompareServersiiiii_10
	cmp eax, 0x2
	jz _Z18LAN_CompareServersiiiii_20
	test eax, eax
	jz _Z18LAN_CompareServersiiiii_30
	cmp eax, 0x1
	jz _Z18LAN_CompareServersiiiii_40
	cmp eax, 0x2
	jz _Z18LAN_CompareServersiiiii_50
	test eax, eax
	jnz _Z18LAN_CompareServersiiiii_60
_Z18LAN_CompareServersiiiii_90:
	xor edi, edi
	cmp ecx, 0x7f
	ja _Z18LAN_CompareServersiiiii_70
_Z18LAN_CompareServersiiiii_100:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x148]
	jmp _Z18LAN_CompareServersiiiii_80
_Z18LAN_CompareServersiiiii_30:
	cmp edx, 0x7f
	ja _Z18LAN_CompareServersiiiii_90
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea edi, [edx+eax*4+0x148]
	cmp ecx, 0x7f
	jbe _Z18LAN_CompareServersiiiii_100
_Z18LAN_CompareServersiiiii_70:
	xor esi, esi
_Z18LAN_CompareServersiiiii_80:
	test edi, edi
	jz _Z18LAN_CompareServersiiiii_60
	test esi, esi
	jz _Z18LAN_CompareServersiiiii_60
	cmp dword [ebp+0xc], 0xa
	ja _Z18LAN_CompareServersiiiii_110
	mov eax, [ebp+0xc]
	jmp dword [eax*4+_Z18LAN_CompareServersiiiii_jumptab_0]
_Z18LAN_CompareServersiiiii_10:
	test edx, edx
	js _Z18LAN_CompareServersiiiii_40
	mov ebx, cls
	cmp edx, [ebx+0x4b58]
	jl _Z18LAN_CompareServersiiiii_120
_Z18LAN_CompareServersiiiii_40:
	xor edi, edi
_Z18LAN_CompareServersiiiii_170:
	test ecx, ecx
	js _Z18LAN_CompareServersiiiii_70
	mov edx, cls
	cmp ecx, [edx+0x4b58]
	jge _Z18LAN_CompareServersiiiii_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	lea esi, [edx+eax*4+0x4b5c]
	jmp _Z18LAN_CompareServersiiiii_80
_Z18LAN_CompareServersiiiii_290:
	movzx edx, byte [edi+0xe]
	movzx eax, byte [esi+0xe]
	sub edx, eax
	jnz _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_190:
	mov dword [ebp+0x10], 0x0
_Z18LAN_CompareServersiiiii_320:
	movsx edx, word [edi+0x22]
	movsx eax, word [esi+0x22]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_140
_Z18LAN_CompareServersiiiii_130:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z18LAN_CompareServersiiiii_150
	neg edx
_Z18LAN_CompareServersiiiii_150:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18LAN_CompareServersiiiii_110:
	xor edx, edx
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_60:
	xor edx, edx
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18LAN_CompareServersiiiii_20:
	cmp edx, 0x7f
	jbe _Z18LAN_CompareServersiiiii_160
_Z18LAN_CompareServersiiiii_50:
	xor edi, edi
_Z18LAN_CompareServersiiiii_180:
	cmp ecx, 0x7f
	ja _Z18LAN_CompareServersiiiii_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x2d75e0]
	jmp _Z18LAN_CompareServersiiiii_80
_Z18LAN_CompareServersiiiii_120:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea edi, [ebx+eax*4+0x4b5c]
	jmp _Z18LAN_CompareServersiiiii_170
_Z18LAN_CompareServersiiiii_160:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea edi, [edx+eax*4+0x2d75e0]
	jmp _Z18LAN_CompareServersiiiii_180
_Z18LAN_CompareServersiiiii_140:
	lea eax, [esi+0x81]
	mov [esp+0x4], eax
	lea eax, [edi+0x81]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	mov edx, eax
	test eax, eax
	jnz _Z18LAN_CompareServersiiiii_130
	lea eax, [esi+0x29]
	mov [esp+0x4], eax
	lea eax, [edi+0x29]
	mov [esp], eax
	call _Z19LAN_CompareHostnamePKcS0_
	mov edx, eax
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_280:
	movzx edx, byte [edi+0x1a]
	movzx eax, byte [esi+0x1a]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_270:
	lea eax, [esi+0x81]
	mov [esp], eax
	call _Z25UI_GetGameTypeDisplayNamePKc
	mov ebx, eax
	lea eax, [edi+0x81]
	mov [esp], eax
	call _Z25UI_GetGameTypeDisplayNamePKc
_Z18LAN_CompareServersiiiii_200:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	mov edx, eax
	test eax, eax
	jnz _Z18LAN_CompareServersiiiii_130
	jmp _Z18LAN_CompareServersiiiii_190
_Z18LAN_CompareServersiiiii_260:
	movzx edx, byte [edi+0x11]
	movzx eax, byte [esi+0x11]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_250:
	lea eax, [esi+0x49]
	mov [esp], eax
	call _Z20UI_GetMapDisplayNamePKc
	mov ebx, eax
	lea eax, [edi+0x49]
	mov [esp], eax
	call _Z20UI_GetMapDisplayNamePKc
	jmp _Z18LAN_CompareServersiiiii_200
_Z18LAN_CompareServersiiiii_240:
	lea eax, [esi+0x29]
	mov [esp+0x4], eax
	lea eax, [edi+0x29]
	mov [esp], eax
	call _Z19LAN_CompareHostnamePKcS0_
	mov edx, eax
	test eax, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_230:
	movzx ebx, byte [edi+0x18]
	movzx ecx, byte [esi+0x18]
	movzx edx, bl
	movzx eax, cl
	sub edx, eax
	cmp edx, 0x0
	jz _Z18LAN_CompareServersiiiii_190
	jl _Z18LAN_CompareServersiiiii_210
	test cl, cl
	jnz _Z18LAN_CompareServersiiiii_130
	mov edx, 0xffffffff
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_220:
	movzx edx, byte [edi+0xd]
	movzx eax, byte [esi+0xd]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_310:
	movzx edx, byte [edi+0x1b]
	movzx eax, byte [esi+0x1b]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_300:
	movzx edx, byte [edi+0x19]
	movzx eax, byte [esi+0x19]
	sub edx, eax
	jz _Z18LAN_CompareServersiiiii_190
	jmp _Z18LAN_CompareServersiiiii_130
_Z18LAN_CompareServersiiiii_210:
	test bl, bl
	jnz _Z18LAN_CompareServersiiiii_130
	mov edx, 0x1
	jmp _Z18LAN_CompareServersiiiii_130
	add [eax], al
	
	
_Z18LAN_CompareServersiiiii_jumptab_0:
	dd _Z18LAN_CompareServersiiiii_220
	dd _Z18LAN_CompareServersiiiii_230
	dd _Z18LAN_CompareServersiiiii_240
	dd _Z18LAN_CompareServersiiiii_250
	dd _Z18LAN_CompareServersiiiii_260
	dd _Z18LAN_CompareServersiiiii_270
	dd _Z18LAN_CompareServersiiiii_280
	dd _Z18LAN_CompareServersiiiii_290
	dd _Z18LAN_CompareServersiiiii_300
	dd _Z18LAN_CompareServersiiiii_310
	dd _Z18LAN_CompareServersiiiii_320


;LAN_GetServerCount(int)
_Z18LAN_GetServerCounti:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz _Z18LAN_GetServerCounti_10
	cmp eax, 0x2
	jz _Z18LAN_GetServerCounti_20
	test eax, eax
	jnz _Z18LAN_GetServerCounti_30
	mov eax, cls
	mov eax, [eax+0x144]
	pop ebp
	ret
_Z18LAN_GetServerCounti_30:
	xor eax, eax
	pop ebp
	ret
_Z18LAN_GetServerCounti_10:
	mov eax, cls
	mov eax, [eax+0x4b58]
	pop ebp
	ret
_Z18LAN_GetServerCounti_20:
	mov eax, cls
	mov eax, [eax+0x2d75dc]
	pop ebp
	ret
	nop


;LAN_CompareHostname(char const*, char const*)
_Z19LAN_CompareHostnamePKcS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax]
	test bl, bl
	jz _Z19LAN_CompareHostnamePKcS0__10
	mov esi, eax
	lea edi, [ebp-0x38]
	jmp _Z19LAN_CompareHostnamePKcS0__20
_Z19LAN_CompareHostnamePKcS0__50:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0x8
	and eax, 0x1
_Z19LAN_CompareHostnamePKcS0__60:
	test eax, eax
	jz _Z19LAN_CompareHostnamePKcS0__30
	mov [edi], bl
	add edi, 0x1
_Z19LAN_CompareHostnamePKcS0__30:
	movzx eax, byte [esi+0x1]
	mov ebx, eax
	add esi, 0x1
	test al, al
	jz _Z19LAN_CompareHostnamePKcS0__40
_Z19LAN_CompareHostnamePKcS0__20:
	movzx eax, bl
	test al, 0x80
	jz _Z19LAN_CompareHostnamePKcS0__50
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z19LAN_CompareHostnamePKcS0__60
_Z19LAN_CompareHostnamePKcS0__10:
	lea edi, [ebp-0x38]
_Z19LAN_CompareHostnamePKcS0__40:
	mov byte [edi], 0x0
	mov eax, [ebp+0xc]
	movzx ebx, byte [eax]
	test bl, bl
	jz _Z19LAN_CompareHostnamePKcS0__70
	mov esi, eax
	lea edi, [ebp-0x58]
	jmp _Z19LAN_CompareHostnamePKcS0__80
_Z19LAN_CompareHostnamePKcS0__110:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0x8
	and eax, 0x1
_Z19LAN_CompareHostnamePKcS0__120:
	test eax, eax
	jz _Z19LAN_CompareHostnamePKcS0__90
	mov [edi], bl
	add edi, 0x1
_Z19LAN_CompareHostnamePKcS0__90:
	movzx eax, byte [esi+0x1]
	mov ebx, eax
	add esi, 0x1
	test al, al
	jz _Z19LAN_CompareHostnamePKcS0__100
_Z19LAN_CompareHostnamePKcS0__80:
	movzx eax, bl
	test al, 0x80
	jz _Z19LAN_CompareHostnamePKcS0__110
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z19LAN_CompareHostnamePKcS0__120
_Z19LAN_CompareHostnamePKcS0__70:
	lea edi, [ebp-0x58]
_Z19LAN_CompareHostnamePKcS0__100:
	mov byte [edi], 0x0
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea edx, [ebp-0x38]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z19LAN_CompareHostnamePKcS0__130
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z9I_stricmpPKcS0_
_Z19LAN_CompareHostnamePKcS0__130:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;LAN_GetServerStatus(char*, char*, int)
_Z19LAN_GetServerStatusPcS_i:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z15CL_ServerStatusPcS_i
	nop


;LAN_MarkServerDirty(int, int, int)
_Z19LAN_MarkServerDirtyiii:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp edx, 0xffffffff
	jz _Z19LAN_MarkServerDirtyiii_10
	cmp eax, 0x1
	jz _Z19LAN_MarkServerDirtyiii_20
	cmp eax, 0x2
	jz _Z19LAN_MarkServerDirtyiii_30
	test eax, eax
	jnz _Z19LAN_MarkServerDirtyiii_40
	cmp edx, 0x7f
	ja _Z19LAN_MarkServerDirtyiii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx edx, byte [ebp+0x10]
	mov [eax+0x15b], dl
_Z19LAN_MarkServerDirtyiii_40:
	pop ebx
	pop ebp
	ret
_Z19LAN_MarkServerDirtyiii_10:
	cmp eax, 0x1
	jz _Z19LAN_MarkServerDirtyiii_50
	cmp eax, 0x2
	jz _Z19LAN_MarkServerDirtyiii_60
	test eax, eax
	jnz _Z19LAN_MarkServerDirtyiii_40
	mov eax, cls
	add eax, 0x148
	mov ebx, 0x80
_Z19LAN_MarkServerDirtyiii_80:
	movzx ecx, byte [ebp+0x10]
	xor edx, edx
_Z19LAN_MarkServerDirtyiii_70:
	mov [eax+0x13], cl
	add edx, 0x1
	add eax, 0x94
	cmp edx, ebx
	jnz _Z19LAN_MarkServerDirtyiii_70
	pop ebx
	pop ebp
	ret
_Z19LAN_MarkServerDirtyiii_20:
	test edx, edx
	js _Z19LAN_MarkServerDirtyiii_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z19LAN_MarkServerDirtyiii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	movzx edx, byte [ebp+0x10]
	mov [ecx+eax*4+0x4b6f], dl
	pop ebx
	pop ebp
	ret
_Z19LAN_MarkServerDirtyiii_30:
	cmp edx, 0x7f
	ja _Z19LAN_MarkServerDirtyiii_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx ecx, byte [ebp+0x10]
	mov [eax+0x2d75f3], cl
	pop ebx
	pop ebp
	ret
_Z19LAN_MarkServerDirtyiii_60:
	mov ebx, 0x80
	mov eax, cls
	add eax, 0x2d75e0
	jmp _Z19LAN_MarkServerDirtyiii_80
_Z19LAN_MarkServerDirtyiii_50:
	mov eax, cls
	mov ebx, [eax+0x4b58]
	add eax, 0x4b5c
	test ebx, ebx
	jg _Z19LAN_MarkServerDirtyiii_80
	pop ebx
	pop ebp
	ret


;LAN_ServerInfoValid(int, int)
_Z19LAN_ServerInfoValidii:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	cmp edx, 0x7f
	ja _Z19LAN_ServerInfoValidii_10
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	cmp byte [eax+0x2d7608], 0x0
	setnz al
	movzx eax, al
	pop ebp
	ret
_Z19LAN_ServerInfoValidii_10:
	xor eax, eax
	pop ebp
	ret
	nop


;UI_LoadSoundAliases()
_Z19UI_LoadSoundAliasesv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_all_mp
	mov dword [esp], _cstring_menu
	call _Z20Com_LoadSoundAliasesPKcS0_18snd_alias_system_t
	leave
	ret


;LAN_UpdateDirtyPings(int, int)
_Z20LAN_UpdateDirtyPingsii:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19CL_UpdateDirtyPingsii
	nop


;Key_KeynumToStringBuf(int, char*, int)
_Z21Key_KeynumToStringBufiPci:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18Key_KeynumToStringii
	mov [ebp+0x10], ebx
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10I_strncpyzPcPKci
	nop


;CL_LocalClientIsInGame(int)
_Z22CL_LocalClientIsInGamei:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	setz al
	movzx eax, al
	pop ebp
	ret


;LAN_WaitServerResponse(int)
_Z22LAN_WaitServerResponsei:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	cmp dword [ebp+0x8], 0x1
	jz _Z22LAN_WaitServerResponsei_10
	xor eax, eax
	leave
	ret
_Z22LAN_WaitServerResponsei_10:
	call _Z16Sys_Millisecondsv
	mov edx, cls
	cmp eax, [edx+0x4b54]
	setl al
	movzx eax, al
	leave
	ret
	nop


;LAN_GetServerPunkBuster(int, int)
_Z23LAN_GetServerPunkBusterii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz _Z23LAN_GetServerPunkBusterii_10
	cmp eax, 0x2
	jz _Z23LAN_GetServerPunkBusterii_20
	test eax, eax
	jnz _Z23LAN_GetServerPunkBusterii_30
	cmp edx, 0x7f
	ja _Z23LAN_GetServerPunkBusterii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x148]
_Z23LAN_GetServerPunkBusterii_50:
	test eax, eax
	jz _Z23LAN_GetServerPunkBusterii_30
	movzx eax, byte [eax+0x1b]
	pop ebp
	ret
_Z23LAN_GetServerPunkBusterii_10:
	test edx, edx
	jns _Z23LAN_GetServerPunkBusterii_40
_Z23LAN_GetServerPunkBusterii_30:
	mov eax, 0xffffffff
	pop ebp
	ret
_Z23LAN_GetServerPunkBusterii_20:
	cmp edx, 0x7f
	ja _Z23LAN_GetServerPunkBusterii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x2d75e0]
	jmp _Z23LAN_GetServerPunkBusterii_50
_Z23LAN_GetServerPunkBusterii_40:
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge _Z23LAN_GetServerPunkBusterii_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b5c]
	jmp _Z23LAN_GetServerPunkBusterii_50
	nop


;CL_SetDisplayHUDWithKeycatchUI(int, unsigned char)
_Z30CL_SetDisplayHUDWithKeycatchUIih:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clientUIActives
	mov [eax+0x8], dl
	pop ebp
	ret


;CL_InitUI()
_Z9CL_InitUIv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z7UI_Initi
	mov eax, cls
	mov dword [eax+0x110], 0x1
	leave
	ret
	nop


;Initialized global or static variables of cl_ui_mp:
SECTION .data


;Initialized constant data of cl_ui_mp:
SECTION .rdata


;Zero initialized global or static variables of cl_ui_mp:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_game_name:		db "game name",0
_cstring_null:		db 0
_cstring_fs_game:		db "fs_game",0
_cstring_hostname:		db "hostname",0
_cstring_mapname:		db "mapname",0
_cstring_i:		db "%i",0
_cstring_clients:		db "clients",0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_ping:		db "ping",0
_cstring_minping:		db "minping",0
_cstring_maxping:		db "maxping",0
_cstring_game:		db "game",0
_cstring_gametype:		db "gametype",0
_cstring_nettype:		db "nettype",0
_cstring_addr:		db "addr",0
_cstring_pswrd:		db "pswrd",0
_cstring_con_disabled:		db "con_disabled",0
_cstring_pure:		db "pure",0
_cstring_sv_allowanonymou:		db "sv_allowAnonymous",0
_cstring_ff:		db "ff",0
_cstring_kc:		db "kc",0
_cstring_hc:		db "hc",0
_cstring_od:		db "od",0
_cstring_hw:		db "hw",0
_cstring_mod:		db "mod",0
_cstring_voice:		db "voice",0
_cstring_pb:		db "pb",0
_cstring_mpui_nopunkbuste:		db "MPUI_NOPUNKBUSTER",0
_cstring_all_mp:		db "all_mp",0
_cstring_menu:		db "menu",0



;All constant floats and doubles:
SECTION .rdata

