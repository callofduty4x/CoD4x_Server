;Imports of cl_ui_mp:
	extern Cvar_RegisterString
	extern cl_cdkey
	extern cl_cdkeychecksum
	extern Com_WriteCDKey
	extern clientUIActives
	extern clientConnections
	extern cls
	extern Com_UnloadSoundAliases
	extern Key_RemoveCatcher
	extern UI_Shutdown
	extern clients
	extern Q_strncpyz
	extern Info_SetValueForKey
	extern va
	extern NET_AdrToString
	extern EnablePbCl
	extern isPbClEnabled
	extern DisablePbCl
	extern Com_SetErrorMessage
	extern Q_stricmp
	extern UI_GetGameTypeDisplayName
	extern UI_GetMapDisplayName
	extern __maskrune
	extern CL_ServerStatus
	extern Com_LoadSoundAliases
	extern CL_UpdateDirtyPings
	extern Key_KeynumToString
	extern Sys_Milliseconds
	extern UI_Init

;Exports of cl_ui_mp:
	global CLUI_GetCDKey
	global CLUI_SetCDKey
	global CL_AllowPopup
	global CL_ShutdownUI
	global LAN_ResetPings
	global CL_GetClientName
	global CL_GetClientState
	global LAN_GetServerInfo
	global LAN_GetServerPing
	global LAN_ServerIsDirty
	global CLUI_SetPbClStatus
	global LAN_CompareServers
	global LAN_GetServerCount
	global LAN_CompareHostname
	global LAN_GetServerStatus
	global LAN_MarkServerDirty
	global LAN_ServerInfoValid
	global UI_LoadSoundAliases
	global LAN_UpdateDirtyPings
	global Key_KeynumToStringBuf
	global CL_LocalClientIsInGame
	global LAN_WaitServerResponse
	global LAN_GetServerPunkBuster
	global CL_SetDisplayHUDWithKeycatchUI
	global CL_InitUI


SECTION .text


;CLUI_GetCDKey(char*, int, char*, int)
CLUI_GetCDKey:
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
	call Cvar_RegisterString
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
CLUI_SetCDKey:
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
	jmp Com_WriteCDKey
	nop


;CL_AllowPopup(int)
CL_AllowPopup:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	mov edx, [eax+0xc]
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz CL_AllowPopup_10
	xor eax, eax
	cmp edx, 0x9
	setz al
	pop ebp
	ret
CL_AllowPopup_10:
	xor eax, eax
	pop ebp
	ret


;CL_ShutdownUI()
CL_ShutdownUI:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cls
	mov ecx, [ebx+0x110]
	test ecx, ecx
	jnz CL_ShutdownUI_10
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CL_ShutdownUI_10:
	mov dword [esp], 0x0
	call Com_UnloadSoundAliases
	mov dword [esp+0x4], 0xffffffef
	mov dword [esp], 0x0
	call Key_RemoveCatcher
	mov dword [esp], 0x0
	call UI_Shutdown
	mov dword [ebx+0x110], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;LAN_ResetPings(int)
LAN_ResetPings:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz LAN_ResetPings_10
	cmp eax, 0x2
	jz LAN_ResetPings_20
	test eax, eax
	jnz LAN_ResetPings_30
	mov edx, cls
	mov eax, edx
	add edx, 0x148
	mov ecx, 0x80
LAN_ResetPings_50:
	mov dword [eax+0x4b4c], 0x0
	test ecx, ecx
	jle LAN_ResetPings_30
	mov eax, edx
	xor edx, edx
LAN_ResetPings_40:
	mov word [eax+0x22], 0xffff
	mov dword [eax+0x24], 0x0
	mov byte [eax+0x28], 0x0
	add edx, 0x1
	add eax, 0x94
	cmp edx, ecx
	jnz LAN_ResetPings_40
LAN_ResetPings_30:
	pop ebp
	ret
LAN_ResetPings_10:
	mov eax, cls
	mov ecx, [eax+0x4b58]
	lea edx, [eax+0x4b5c]
	jmp LAN_ResetPings_50
LAN_ResetPings_20:
	mov edx, cls
	mov eax, edx
	add edx, 0x2d75e0
	mov ecx, 0x80
	jmp LAN_ResetPings_50


;CL_GetClientName(int, int, char*, int)
CL_GetClientName:
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
	jz CL_GetClientName_10
	mov ebx, [ecx+0x2f8c]
	test ebx, ebx
	jle CL_GetClientName_10
	mov esi, [ecx+0x2f94]
	mov eax, esi
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x17fad0]
	cmp edi, [eax]
	jz CL_GetClientName_20
	xor edx, edx
CL_GetClientName_30:
	add edx, 0x1
	cmp edx, ebx
	jz CL_GetClientName_10
	lea eax, [esi+edx]
	and eax, 0x7ff
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [ecx+eax*4+0x17fad0]
	cmp [eax], edi
	jnz CL_GetClientName_30
CL_GetClientName_20:
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	add eax, 0x3c
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Q_strncpyz
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetClientName_10:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CL_GetClientState(int, uiClientState_s*)
CL_GetClientState:
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
	call Q_strncpyz
	mov dword [esp+0x8], 0x400
	add esi, 0x24
	mov [esp+0x4], esi
	add ebx, 0x408
	mov [esp], ebx
	call Q_strncpyz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;LAN_GetServerInfo(int, int, char*, int)
LAN_GetServerInfo:
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
	jz LAN_GetServerInfo_10
	cmp eax, 0x2
	jz LAN_GetServerInfo_20
	test eax, eax
	jz LAN_GetServerInfo_30
LAN_GetServerInfo_50:
	test edi, edi
	jz LAN_GetServerInfo_40
	mov byte [edi], 0x0
LAN_GetServerInfo_40:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_GetServerInfo_30:
	cmp edx, 0x7f
	ja LAN_GetServerInfo_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x148]
LAN_GetServerInfo_60:
	test esi, esi
	jz LAN_GetServerInfo_50
	test edi, edi
	jz LAN_GetServerInfo_40
	mov byte [edi], 0x0
	lea eax, [esi+0x29]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hostname
	lea ebx, [ebp-0x424]
	mov [esp], ebx
	call Info_SetValueForKey
	lea eax, [esi+0x49]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x11]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_clients
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x12]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, word [esi+0x22]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ping
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, word [esi+0x1e]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_minping
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, word [esi+0x20]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_maxping
	mov [esp], ebx
	call Info_SetValueForKey
	lea eax, [esi+0x69]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_game
	mov [esp], ebx
	call Info_SetValueForKey
	lea eax, [esi+0x81]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_gametype
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x10]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_nettype
	mov [esp], ebx
	call Info_SetValueForKey
	mov ecx, [esi]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x4]
	mov [ebp-0x20], edx
	mov eax, [esi+0x8]
	mov [ebp-0x1c], eax
	mov [esp], ecx
	mov [esp+0x4], edx
	mov [esp+0x8], eax
	call NET_AdrToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_addr
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0xd]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pswrd
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, byte [esi+0xf]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_con_disabled
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0xe]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pure
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_sv_allowanonymou
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, byte [esi+0x14]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ff
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, byte [esi+0x15]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_kc
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, byte [esi+0x16]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hc
	mov [esp], ebx
	call Info_SetValueForKey
	movsx eax, byte [esi+0x17]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_od
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x18]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hw
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x19]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_mod
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x1a]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_voice
	mov [esp], ebx
	call Info_SetValueForKey
	movzx eax, byte [esi+0x1b]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_pb
	mov [esp], ebx
	call Info_SetValueForKey
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call Q_strncpyz
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_GetServerInfo_10:
	test edx, edx
	js LAN_GetServerInfo_50
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_GetServerInfo_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea esi, [ecx+eax*4+0x4b5c]
	jmp LAN_GetServerInfo_60
LAN_GetServerInfo_20:
	cmp edx, 0x7f
	ja LAN_GetServerInfo_50
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x2d75e0]
	jmp LAN_GetServerInfo_60


;LAN_GetServerPing(int, int)
LAN_GetServerPing:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz LAN_GetServerPing_10
	cmp eax, 0x2
	jz LAN_GetServerPing_20
	test eax, eax
	jnz LAN_GetServerPing_30
	cmp edx, 0x7f
	ja LAN_GetServerPing_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x148]
LAN_GetServerPing_50:
	test eax, eax
	jz LAN_GetServerPing_30
	movsx eax, word [eax+0x22]
	pop ebp
	ret
LAN_GetServerPing_10:
	test edx, edx
	jns LAN_GetServerPing_40
LAN_GetServerPing_30:
	mov eax, 0xffffffff
	pop ebp
	ret
LAN_GetServerPing_20:
	cmp edx, 0x7f
	ja LAN_GetServerPing_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x2d75e0]
	jmp LAN_GetServerPing_50
LAN_GetServerPing_40:
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_GetServerPing_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b5c]
	jmp LAN_GetServerPing_50
	nop


;LAN_ServerIsDirty(int, int)
LAN_ServerIsDirty:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz LAN_ServerIsDirty_10
	cmp eax, 0x2
	jz LAN_ServerIsDirty_20
	test eax, eax
	jz LAN_ServerIsDirty_30
LAN_ServerIsDirty_40:
	xor eax, eax
	pop ebp
	ret
LAN_ServerIsDirty_30:
	cmp edx, 0x7f
	ja LAN_ServerIsDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx eax, byte [eax+0x15b]
	pop ebp
	ret
LAN_ServerIsDirty_10:
	test edx, edx
	js LAN_ServerIsDirty_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_ServerIsDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	movzx eax, byte [ecx+eax*4+0x4b6f]
	pop ebp
	ret
LAN_ServerIsDirty_20:
	cmp edx, 0x7f
	ja LAN_ServerIsDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx eax, byte [eax+0x2d75f3]
	pop ebp
	ret
	nop


;CLUI_SetPbClStatus(int)
CLUI_SetPbClStatus:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0x8]
	test eax, eax
	jz CLUI_SetPbClStatus_10
	call EnablePbCl
	call isPbClEnabled
	test eax, eax
	jz CLUI_SetPbClStatus_20
	leave
	ret
CLUI_SetPbClStatus_10:
	leave
	jmp DisablePbCl
CLUI_SetPbClStatus_20:
	mov dword [ebp+0x8], _cstring_mpui_nopunkbuste
	leave
	jmp Com_SetErrorMessage


;LAN_CompareServers(int, int, int, int, int)
LAN_CompareServers:
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
	jz LAN_CompareServers_10
	cmp eax, 0x2
	jz LAN_CompareServers_20
	test eax, eax
	jz LAN_CompareServers_30
	cmp eax, 0x1
	jz LAN_CompareServers_40
	cmp eax, 0x2
	jz LAN_CompareServers_50
	test eax, eax
	jnz LAN_CompareServers_60
LAN_CompareServers_90:
	xor edi, edi
	cmp ecx, 0x7f
	ja LAN_CompareServers_70
LAN_CompareServers_100:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x148]
	jmp LAN_CompareServers_80
LAN_CompareServers_30:
	cmp edx, 0x7f
	ja LAN_CompareServers_90
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea edi, [edx+eax*4+0x148]
	cmp ecx, 0x7f
	jbe LAN_CompareServers_100
LAN_CompareServers_70:
	xor esi, esi
LAN_CompareServers_80:
	test edi, edi
	jz LAN_CompareServers_60
	test esi, esi
	jz LAN_CompareServers_60
	cmp dword [ebp+0xc], 0xa
	ja LAN_CompareServers_110
	mov eax, [ebp+0xc]
	jmp dword [eax*4+LAN_CompareServers_jumptab_0]
LAN_CompareServers_10:
	test edx, edx
	js LAN_CompareServers_40
	mov ebx, cls
	cmp edx, [ebx+0x4b58]
	jl LAN_CompareServers_120
LAN_CompareServers_40:
	xor edi, edi
LAN_CompareServers_170:
	test ecx, ecx
	js LAN_CompareServers_70
	mov edx, cls
	cmp ecx, [edx+0x4b58]
	jge LAN_CompareServers_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	lea esi, [edx+eax*4+0x4b5c]
	jmp LAN_CompareServers_80
LAN_CompareServers_290:
	movzx edx, byte [edi+0xe]
	movzx eax, byte [esi+0xe]
	sub edx, eax
	jnz LAN_CompareServers_130
LAN_CompareServers_190:
	mov dword [ebp+0x10], 0x0
LAN_CompareServers_320:
	movsx edx, word [edi+0x22]
	movsx eax, word [esi+0x22]
	sub edx, eax
	jz LAN_CompareServers_140
LAN_CompareServers_130:
	mov eax, [ebp+0x10]
	test eax, eax
	jz LAN_CompareServers_150
	neg edx
LAN_CompareServers_150:
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_CompareServers_110:
	xor edx, edx
	jmp LAN_CompareServers_130
LAN_CompareServers_60:
	xor edx, edx
	mov eax, edx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LAN_CompareServers_20:
	cmp edx, 0x7f
	jbe LAN_CompareServers_160
LAN_CompareServers_50:
	xor edi, edi
LAN_CompareServers_180:
	cmp ecx, 0x7f
	ja LAN_CompareServers_70
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	mov edx, cls
	lea esi, [edx+eax*4+0x2d75e0]
	jmp LAN_CompareServers_80
LAN_CompareServers_120:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea edi, [ebx+eax*4+0x4b5c]
	jmp LAN_CompareServers_170
LAN_CompareServers_160:
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea edi, [edx+eax*4+0x2d75e0]
	jmp LAN_CompareServers_180
LAN_CompareServers_140:
	lea eax, [esi+0x81]
	mov [esp+0x4], eax
	lea eax, [edi+0x81]
	mov [esp], eax
	call Q_stricmp
	mov edx, eax
	test eax, eax
	jnz LAN_CompareServers_130
	lea eax, [esi+0x29]
	mov [esp+0x4], eax
	lea eax, [edi+0x29]
	mov [esp], eax
	call LAN_CompareHostname
	mov edx, eax
	jmp LAN_CompareServers_130
LAN_CompareServers_280:
	movzx edx, byte [edi+0x1a]
	movzx eax, byte [esi+0x1a]
	sub edx, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_270:
	lea eax, [esi+0x81]
	mov [esp], eax
	call UI_GetGameTypeDisplayName
	mov ebx, eax
	lea eax, [edi+0x81]
	mov [esp], eax
	call UI_GetGameTypeDisplayName
LAN_CompareServers_200:
	mov [esp+0x4], ebx
	mov [esp], eax
	call Q_stricmp
	mov edx, eax
	test eax, eax
	jnz LAN_CompareServers_130
	jmp LAN_CompareServers_190
LAN_CompareServers_260:
	movzx edx, byte [edi+0x11]
	movzx eax, byte [esi+0x11]
	sub edx, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_250:
	lea eax, [esi+0x49]
	mov [esp], eax
	call UI_GetMapDisplayName
	mov ebx, eax
	lea eax, [edi+0x49]
	mov [esp], eax
	call UI_GetMapDisplayName
	jmp LAN_CompareServers_200
LAN_CompareServers_240:
	lea eax, [esi+0x29]
	mov [esp+0x4], eax
	lea eax, [edi+0x29]
	mov [esp], eax
	call LAN_CompareHostname
	mov edx, eax
	test eax, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_230:
	movzx ebx, byte [edi+0x18]
	movzx ecx, byte [esi+0x18]
	movzx edx, bl
	movzx eax, cl
	sub edx, eax
	cmp edx, 0x0
	jz LAN_CompareServers_190
	jl LAN_CompareServers_210
	test cl, cl
	jnz LAN_CompareServers_130
	mov edx, 0xffffffff
	jmp LAN_CompareServers_130
LAN_CompareServers_220:
	movzx edx, byte [edi+0xd]
	movzx eax, byte [esi+0xd]
	sub edx, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_310:
	movzx edx, byte [edi+0x1b]
	movzx eax, byte [esi+0x1b]
	sub edx, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_300:
	movzx edx, byte [edi+0x19]
	movzx eax, byte [esi+0x19]
	sub edx, eax
	jz LAN_CompareServers_190
	jmp LAN_CompareServers_130
LAN_CompareServers_210:
	test bl, bl
	jnz LAN_CompareServers_130
	mov edx, 0x1
	jmp LAN_CompareServers_130
	add [eax], al
	
	
LAN_CompareServers_jumptab_0:
	dd LAN_CompareServers_220
	dd LAN_CompareServers_230
	dd LAN_CompareServers_240
	dd LAN_CompareServers_250
	dd LAN_CompareServers_260
	dd LAN_CompareServers_270
	dd LAN_CompareServers_280
	dd LAN_CompareServers_290
	dd LAN_CompareServers_300
	dd LAN_CompareServers_310
	dd LAN_CompareServers_320


;LAN_GetServerCount(int)
LAN_GetServerCount:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cmp eax, 0x1
	jz LAN_GetServerCount_10
	cmp eax, 0x2
	jz LAN_GetServerCount_20
	test eax, eax
	jnz LAN_GetServerCount_30
	mov eax, cls
	mov eax, [eax+0x144]
	pop ebp
	ret
LAN_GetServerCount_30:
	xor eax, eax
	pop ebp
	ret
LAN_GetServerCount_10:
	mov eax, cls
	mov eax, [eax+0x4b58]
	pop ebp
	ret
LAN_GetServerCount_20:
	mov eax, cls
	mov eax, [eax+0x2d75dc]
	pop ebp
	ret
	nop


;LAN_CompareHostname(char const*, char const*)
LAN_CompareHostname:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	movzx ebx, byte [eax]
	test bl, bl
	jz LAN_CompareHostname_10
	mov esi, eax
	lea edi, [ebp-0x38]
	jmp LAN_CompareHostname_20
LAN_CompareHostname_50:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0x8
	and eax, 0x1
LAN_CompareHostname_60:
	test eax, eax
	jz LAN_CompareHostname_30
	mov [edi], bl
	add edi, 0x1
LAN_CompareHostname_30:
	movzx eax, byte [esi+0x1]
	mov ebx, eax
	add esi, 0x1
	test al, al
	jz LAN_CompareHostname_40
LAN_CompareHostname_20:
	movzx eax, bl
	test al, 0x80
	jz LAN_CompareHostname_50
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp LAN_CompareHostname_60
LAN_CompareHostname_10:
	lea edi, [ebp-0x38]
LAN_CompareHostname_40:
	mov byte [edi], 0x0
	mov eax, [ebp+0xc]
	movzx ebx, byte [eax]
	test bl, bl
	jz LAN_CompareHostname_70
	mov esi, eax
	lea edi, [ebp-0x58]
	jmp LAN_CompareHostname_80
LAN_CompareHostname_110:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0x8
	and eax, 0x1
LAN_CompareHostname_120:
	test eax, eax
	jz LAN_CompareHostname_90
	mov [edi], bl
	add edi, 0x1
LAN_CompareHostname_90:
	movzx eax, byte [esi+0x1]
	mov ebx, eax
	add esi, 0x1
	test al, al
	jz LAN_CompareHostname_100
LAN_CompareHostname_80:
	movzx eax, bl
	test al, 0x80
	jz LAN_CompareHostname_110
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp LAN_CompareHostname_120
LAN_CompareHostname_70:
	lea edi, [ebp-0x58]
LAN_CompareHostname_100:
	mov byte [edi], 0x0
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea edx, [ebp-0x38]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jnz LAN_CompareHostname_130
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Q_stricmp
LAN_CompareHostname_130:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;LAN_GetServerStatus(char*, char*, int)
LAN_GetServerStatus:
	push ebp
	mov ebp, esp
	pop ebp
	jmp CL_ServerStatus
	nop


;LAN_MarkServerDirty(int, int, int)
LAN_MarkServerDirty:
	push ebp
	mov ebp, esp
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp edx, 0xffffffff
	jz LAN_MarkServerDirty_10
	cmp eax, 0x1
	jz LAN_MarkServerDirty_20
	cmp eax, 0x2
	jz LAN_MarkServerDirty_30
	test eax, eax
	jnz LAN_MarkServerDirty_40
	cmp edx, 0x7f
	ja LAN_MarkServerDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx edx, byte [ebp+0x10]
	mov [eax+0x15b], dl
LAN_MarkServerDirty_40:
	pop ebx
	pop ebp
	ret
LAN_MarkServerDirty_10:
	cmp eax, 0x1
	jz LAN_MarkServerDirty_50
	cmp eax, 0x2
	jz LAN_MarkServerDirty_60
	test eax, eax
	jnz LAN_MarkServerDirty_40
	mov eax, cls
	add eax, 0x148
	mov ebx, 0x80
LAN_MarkServerDirty_80:
	movzx ecx, byte [ebp+0x10]
	xor edx, edx
LAN_MarkServerDirty_70:
	mov [eax+0x13], cl
	add edx, 0x1
	add eax, 0x94
	cmp edx, ebx
	jnz LAN_MarkServerDirty_70
	pop ebx
	pop ebp
	ret
LAN_MarkServerDirty_20:
	test edx, edx
	js LAN_MarkServerDirty_40
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_MarkServerDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	movzx edx, byte [ebp+0x10]
	mov [ecx+eax*4+0x4b6f], dl
	pop ebx
	pop ebp
	ret
LAN_MarkServerDirty_30:
	cmp edx, 0x7f
	ja LAN_MarkServerDirty_40
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	movzx ecx, byte [ebp+0x10]
	mov [eax+0x2d75f3], cl
	pop ebx
	pop ebp
	ret
LAN_MarkServerDirty_60:
	mov ebx, 0x80
	mov eax, cls
	add eax, 0x2d75e0
	jmp LAN_MarkServerDirty_80
LAN_MarkServerDirty_50:
	mov eax, cls
	mov ebx, [eax+0x4b58]
	add eax, 0x4b5c
	test ebx, ebx
	jg LAN_MarkServerDirty_80
	pop ebx
	pop ebp
	ret


;LAN_ServerInfoValid(int, int)
LAN_ServerInfoValid:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	cmp edx, 0x7f
	ja LAN_ServerInfoValid_10
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	shl eax, 0x2
	add eax, cls
	cmp byte [eax+0x2d7608], 0x0
	setnz al
	movzx eax, al
	pop ebp
	ret
LAN_ServerInfoValid_10:
	xor eax, eax
	pop ebp
	ret
	nop


;UI_LoadSoundAliases()
UI_LoadSoundAliases:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_all_mp
	mov dword [esp], _cstring_menu
	call Com_LoadSoundAliases
	leave
	ret


;LAN_UpdateDirtyPings(int, int)
LAN_UpdateDirtyPings:
	push ebp
	mov ebp, esp
	pop ebp
	jmp CL_UpdateDirtyPings
	nop


;Key_KeynumToStringBuf(int, char*, int)
Key_KeynumToStringBuf:
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
	call Key_KeynumToString
	mov [ebp+0x10], ebx
	mov [ebp+0xc], eax
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Q_strncpyz
	nop


;CL_LocalClientIsInGame(int)
CL_LocalClientIsInGame:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x9
	setz al
	movzx eax, al
	pop ebp
	ret


;LAN_WaitServerResponse(int)
LAN_WaitServerResponse:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	cmp dword [ebp+0x8], 0x1
	jz LAN_WaitServerResponse_10
	xor eax, eax
	leave
	ret
LAN_WaitServerResponse_10:
	call Sys_Milliseconds
	mov edx, cls
	cmp eax, [edx+0x4b54]
	setl al
	movzx eax, al
	leave
	ret
	nop


;LAN_GetServerPunkBuster(int, int)
LAN_GetServerPunkBuster:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	cmp eax, 0x1
	jz LAN_GetServerPunkBuster_10
	cmp eax, 0x2
	jz LAN_GetServerPunkBuster_20
	test eax, eax
	jnz LAN_GetServerPunkBuster_30
	cmp edx, 0x7f
	ja LAN_GetServerPunkBuster_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x148]
LAN_GetServerPunkBuster_50:
	test eax, eax
	jz LAN_GetServerPunkBuster_30
	movzx eax, byte [eax+0x1b]
	pop ebp
	ret
LAN_GetServerPunkBuster_10:
	test edx, edx
	jns LAN_GetServerPunkBuster_40
LAN_GetServerPunkBuster_30:
	mov eax, 0xffffffff
	pop ebp
	ret
LAN_GetServerPunkBuster_20:
	cmp edx, 0x7f
	ja LAN_GetServerPunkBuster_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	mov edx, cls
	lea eax, [edx+eax*4+0x2d75e0]
	jmp LAN_GetServerPunkBuster_50
LAN_GetServerPunkBuster_40:
	mov ecx, cls
	cmp edx, [ecx+0x4b58]
	jge LAN_GetServerPunkBuster_30
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*4+0x4b5c]
	jmp LAN_GetServerPunkBuster_50
	nop


;CL_SetDisplayHUDWithKeycatchUI(int, unsigned char)
CL_SetDisplayHUDWithKeycatchUI:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, clientUIActives
	mov [eax+0x8], dl
	pop ebp
	ret


;CL_InitUI()
CL_InitUI:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call UI_Init
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

