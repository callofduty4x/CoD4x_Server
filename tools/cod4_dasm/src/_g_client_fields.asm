;Imports of g_client_fields:
	extern va
	extern Scr_Error
	extern Scr_AddString
	extern Scr_GetConstString
	extern scr_const
	extern SL_ConvertToString
	extern level
	extern SV_SetAssignedTeam
	extern ClientUserinfoChanged
	extern CalculateRanks
	extern Scr_AddConstString
	extern Scr_GetInt
	extern g_entities
	extern Scr_GetString
	extern GScr_GetStatusIconIndex
	extern SV_GetConfigstring
	extern GScr_GetHeadIconIndex
	extern Scr_GetFloat
	extern Scr_AddFloat
	extern Scr_AddInt
	extern Scr_GetGenericField
	extern Scr_SetGenericField
	extern Scr_AddClassField

;Exports of g_client_fields:
	global ClientScr_ReadOnly
	global ClientScr_GetName
	global ClientScr_SetSessionTeam
	global ClientScr_GetSessionTeam
	global ClientScr_SetSessionState
	global ClientScr_GetSessionState
	global ClientScr_SetMaxHealth
	global ClientScr_SetScore
	global ClientScr_SetStatusIcon
	global ClientScr_GetStatusIcon
	global ClientScr_SetHeadIcon
	global ClientScr_GetHeadIcon
	global ClientScr_SetHeadIconTeam
	global ClientScr_GetHeadIconTeam
	global ClientScr_SetSpectatorClient
	global ClientScr_SetKillCamEntity
	global ClientScr_SetArchiveTime
	global ClientScr_GetArchiveTime
	global ClientScr_SetPSOffsetTime
	global ClientScr_GetPSOffsetTime
	global Scr_GetClientField
	global Scr_SetClientField
	global GScr_AddFieldsForClient


SECTION .text


;ClientScr_ReadOnly(gclient_s*, client_fields_s const*)
ClientScr_ReadOnly:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_player_field_s_i
	call va
	mov [ebp+0x8], eax
	leave
	jmp Scr_Error


;ClientScr_GetName(gclient_s*, client_fields_s const*)
ClientScr_GetName:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	add dword [ebp+0x8], 0x3048
	leave
	jmp Scr_AddString
	nop


;ClientScr_SetSessionTeam(gclient_s*, client_fields_s const*)
ClientScr_SetSessionTeam:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jz ClientScr_SetSessionTeam_10
	cmp ax, [edx+0xc]
	jz ClientScr_SetSessionTeam_20
	cmp ax, [edx+0x140]
	jz ClientScr_SetSessionTeam_30
	cmp ax, [edx+0x58]
	jz ClientScr_SetSessionTeam_40
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_
	call va
	mov [esp], eax
	call Scr_Error
	jmp ClientScr_SetSessionTeam_50
ClientScr_SetSessionTeam_10:
	mov dword [ebx+0x3010], 0x1
ClientScr_SetSessionTeam_50:
	mov esi, level
	mov eax, ebx
	sub eax, [esi]
	cmp eax, 0xc60ff
	jle ClientScr_SetSessionTeam_60
	mov dword [esp], _cstring_client_is_not_po
	call Scr_Error
ClientScr_SetSessionTeam_60:
	mov eax, [ebx+0x3010]
	mov [esp+0x4], eax
	mov eax, [ebx+0x300c]
	mov [esp], eax
	call SV_SetAssignedTeam
	sub ebx, [esi]
	sar ebx, 0x2
	imul eax, ebx, 0x408b97a1
	mov [esp], eax
	call ClientUserinfoChanged
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp CalculateRanks
ClientScr_SetSessionTeam_20:
	mov dword [ebx+0x3010], 0x2
	jmp ClientScr_SetSessionTeam_50
ClientScr_SetSessionTeam_40:
	mov dword [ebx+0x3010], 0x0
	jmp ClientScr_SetSessionTeam_50
ClientScr_SetSessionTeam_30:
	mov dword [ebx+0x3010], 0x3
	jmp ClientScr_SetSessionTeam_50


;ClientScr_GetSessionTeam(gclient_s*, client_fields_s const*)
ClientScr_GetSessionTeam:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x3010]
	cmp eax, 0x1
	jz ClientScr_GetSessionTeam_10
	jle ClientScr_GetSessionTeam_20
	cmp eax, 0x2
	jz ClientScr_GetSessionTeam_30
	cmp eax, 0x3
	jz ClientScr_GetSessionTeam_40
ClientScr_GetSessionTeam_50:
	pop ebp
	ret
ClientScr_GetSessionTeam_10:
	mov eax, scr_const
	movzx eax, word [eax+0xe]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionTeam_30:
	mov eax, scr_const
	movzx eax, word [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionTeam_40:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionTeam_20:
	test eax, eax
	jnz ClientScr_GetSessionTeam_50
	mov eax, scr_const
	movzx eax, word [eax+0x58]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString


;ClientScr_SetSessionState(gclient_s*, client_fields_s const*)
ClientScr_SetSessionState:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x13e]
	jz ClientScr_SetSessionState_10
	cmp ax, [edx+0x1e]
	jz ClientScr_SetSessionState_20
	cmp ax, [edx+0x140]
	jz ClientScr_SetSessionState_30
	cmp ax, [edx+0x12e]
	jz ClientScr_SetSessionState_40
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_1
	call va
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error
ClientScr_SetSessionState_10:
	mov dword [ebx+0x2f64], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetSessionState_20:
	mov dword [ebx+0x2f64], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetSessionState_40:
	xor dword [ebx+0xb0], 0x2
	mov dword [ebx+0x2f64], 0x3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetSessionState_30:
	mov dword [ebx+0x2f64], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_GetSessionState(gclient_s*, client_fields_s const*)
ClientScr_GetSessionState:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f64]
	cmp eax, 0x1
	jz ClientScr_GetSessionState_10
	jle ClientScr_GetSessionState_20
	cmp eax, 0x2
	jz ClientScr_GetSessionState_30
	cmp eax, 0x3
	jz ClientScr_GetSessionState_40
ClientScr_GetSessionState_50:
	pop ebp
	ret
ClientScr_GetSessionState_10:
	mov eax, scr_const
	movzx eax, word [eax+0x1e]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionState_30:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionState_40:
	mov eax, scr_const
	movzx eax, word [eax+0x12e]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetSessionState_20:
	test eax, eax
	jnz ClientScr_GetSessionState_50
	mov eax, scr_const
	movzx eax, word [eax+0x13e]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString


;ClientScr_SetMaxHealth(gclient_s*, client_fields_s const*)
ClientScr_SetMaxHealth:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov edx, 0x1
	test eax, eax
	cmovg edx, eax
	mov [ebx+0x2fe8], edx
	cmp [ebx+0x148], edx
	jle ClientScr_SetMaxHealth_10
	mov [ebx+0x148], edx
ClientScr_SetMaxHealth_10:
	mov eax, level
	mov edx, ebx
	sub edx, [eax]
	mov eax, edx
	sar eax, 0x2
	imul eax, eax, 0x408b97a1
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	add edx, eax
	mov ecx, [ebx+0x148]
	mov eax, g_entities
	mov [eax+edx+0x1a0], ecx
	mov eax, [ebx+0x2fe8]
	mov [ebx+0x150], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;ClientScr_SetScore(gclient_s*, client_fields_s const*)
ClientScr_SetScore:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetInt
	mov [ebx+0x2f78], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp CalculateRanks


;ClientScr_SetStatusIcon(gclient_s*, client_fields_s const*)
ClientScr_SetStatusIcon:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetStatusIconIndex
	mov edx, [ebp+0x8]
	mov [edx+0x2f70], eax
	leave
	ret
	nop


;ClientScr_GetStatusIcon(gclient_s*, client_fields_s const*)
ClientScr_GetStatusIcon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f70]
	test eax, eax
	jnz ClientScr_GetStatusIcon_10
	mov dword [esp], _cstring_null
	call Scr_AddString
	add esp, 0x414
	pop ebx
	pop ebp
	ret
ClientScr_GetStatusIcon_10:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	add eax, 0x8d2
	mov [esp], eax
	call SV_GetConfigstring
	mov [esp], ebx
	call Scr_AddString
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;ClientScr_SetHeadIcon(gclient_s*, client_fields_s const*)
ClientScr_SetHeadIcon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, level
	sub eax, [edx]
	sar eax, 0x2
	imul eax, eax, 0x408b97a1
	lea ebx, [eax+eax*8]
	lea ebx, [eax+ebx*2]
	mov edx, ebx
	shl edx, 0x5
	add ebx, edx
	add ebx, eax
	add ebx, g_entities
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call GScr_GetHeadIconIndex
	mov [ebx+0x90], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_GetHeadIcon(gclient_s*, client_fields_s const*)
ClientScr_GetHeadIcon:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov edx, [ebp+0x8]
	mov eax, level
	sub edx, [eax]
	sar edx, 0x2
	imul edx, edx, 0x408b97a1
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, g_entities
	mov eax, [edx+eax+0x90]
	test eax, eax
	jz ClientScr_GetHeadIcon_10
	cmp eax, 0xf
	jle ClientScr_GetHeadIcon_20
	add esp, 0x414
	pop ebx
	pop ebp
	ret
ClientScr_GetHeadIcon_20:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	add eax, 0x8da
	mov [esp], eax
	call SV_GetConfigstring
	mov [esp], ebx
	call Scr_AddString
	add esp, 0x414
	pop ebx
	pop ebp
	ret
ClientScr_GetHeadIcon_10:
	mov dword [esp], _cstring_null
	call Scr_AddString
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;ClientScr_SetHeadIconTeam(gclient_s*, client_fields_s const*)
ClientScr_SetHeadIconTeam:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, level
	sub eax, [edx]
	sar eax, 0x2
	imul eax, eax, 0x408b97a1
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*2]
	mov ecx, edx
	shl ecx, 0x5
	add edx, ecx
	lea ebx, [edx+eax]
	add ebx, g_entities
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0x58]
	jz ClientScr_SetHeadIconTeam_10
	cmp ax, [edx+0xc]
	jz ClientScr_SetHeadIconTeam_20
	cmp ax, [edx+0xe]
	jz ClientScr_SetHeadIconTeam_30
	cmp ax, [edx+0x140]
	jz ClientScr_SetHeadIconTeam_40
	mov dword [ebx+0x94], 0x3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetHeadIconTeam_10:
	mov dword [ebx+0x94], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetHeadIconTeam_20:
	mov dword [ebx+0x94], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetHeadIconTeam_30:
	mov dword [ebx+0x94], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ClientScr_SetHeadIconTeam_40:
	movzx eax, ax
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_2
	call va
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Scr_Error


;ClientScr_GetHeadIconTeam(gclient_s*, client_fields_s const*)
ClientScr_GetHeadIconTeam:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, level
	sub edx, [eax]
	sar edx, 0x2
	imul edx, edx, 0x408b97a1
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov ecx, eax
	shl ecx, 0x5
	add eax, ecx
	add eax, edx
	mov edx, g_entities
	mov eax, [edx+eax+0x94]
	cmp eax, 0x2
	jz ClientScr_GetHeadIconTeam_10
	cmp eax, 0x3
	jz ClientScr_GetHeadIconTeam_20
	sub eax, 0x1
	jz ClientScr_GetHeadIconTeam_30
	mov eax, scr_const
	movzx eax, word [eax+0x58]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetHeadIconTeam_10:
	mov eax, scr_const
	movzx eax, word [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetHeadIconTeam_20:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString
ClientScr_GetHeadIconTeam_30:
	mov eax, scr_const
	movzx eax, word [eax+0xe]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddConstString


;ClientScr_SetSpectatorClient(gclient_s*, client_fields_s const*)
ClientScr_SetSpectatorClient:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call Scr_GetInt
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp eax, 0x40
	jbe ClientScr_SetSpectatorClient_10
	mov dword [esp], _cstring_spectatorclient_
	call Scr_Error
ClientScr_SetSpectatorClient_10:
	mov eax, [ebp+0x8]
	mov [eax+0x2f68], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_SetKillCamEntity(gclient_s*, client_fields_s const*)
ClientScr_SetKillCamEntity:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call Scr_GetInt
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp eax, 0x400
	jbe ClientScr_SetKillCamEntity_10
	mov dword [esp], _cstring_killcamentity_ca
	call Scr_Error
ClientScr_SetKillCamEntity_10:
	mov eax, [ebp+0x8]
	mov [eax+0x2f6c], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_SetArchiveTime(gclient_s*, client_fields_s const*)
ClientScr_SetArchiveTime:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_1000_00000000]
	cvttss2si edx, xmm0
	mov eax, [ebp+0x8]
	mov [eax+0x2f74], edx
	leave
	ret
	nop


;ClientScr_GetArchiveTime(gclient_s*, client_fields_s const*)
ClientScr_GetArchiveTime:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x2f74]
	mulss xmm0, [_float_0_00100000]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp Scr_AddFloat
	nop


;ClientScr_SetPSOffsetTime(gclient_s*, client_fields_s const*)
ClientScr_SetPSOffsetTime:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call Scr_GetInt
	mov edx, [ebp+0x8]
	mov [edx+0x3070], eax
	leave
	ret
	nop


;ClientScr_GetPSOffsetTime(gclient_s*, client_fields_s const*)
ClientScr_GetPSOffsetTime:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f74]
	mov [ebp+0x8], eax
	pop ebp
	jmp Scr_AddInt
	nop


;Scr_GetClientField(gclient_s*, int)
Scr_GetClientField:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*4]
	lea edx, [eax*4+fields]
	mov ecx, [edx+0x10]
	test ecx, ecx
	jz Scr_GetClientField_10
	mov [ebp+0xc], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
Scr_GetClientField_10:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_GetGenericField
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Scr_SetClientField(gclient_s*, int)
Scr_SetClientField:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*4]
	lea edx, [eax*4+fields]
	mov ecx, [edx+0xc]
	test ecx, ecx
	jz Scr_SetClientField_10
	mov [ebp+0xc], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
Scr_SetClientField_10:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Scr_SetGenericField
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;GScr_AddFieldsForClient()
GScr_AddFieldsForClient:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [fields]
	test ebx, ebx
	jz GScr_AddFieldsForClient_10
	xor edi, edi
	mov esi, fields+0x14
GScr_AddFieldsForClient_20:
	mov ecx, edi
	sar ecx, 0x2
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	or ax, 0xc000
	movzx eax, ax
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call Scr_AddClassField
	mov ebx, [esi]
	add edi, 0x14
	add esi, 0x14
	test ebx, ebx
	jnz GScr_AddFieldsForClient_20
GScr_AddFieldsForClient_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of g_client_fields:
SECTION .data


;Initialized constant data of g_client_fields:
SECTION .rdata
fields: dd _cstring_name, 0x0, 0x2, ClientScr_ReadOnly, ClientScr_GetName, _cstring_sessionteam, 0x0, 0x3, ClientScr_SetSessionTeam, ClientScr_GetSessionTeam, _cstring_sessionstate, 0x0, 0x3, ClientScr_SetSessionState, ClientScr_GetSessionState, _cstring_maxhealth, 0x2fe8, 0x0, ClientScr_SetMaxHealth, 0x0, _cstring_score, 0x2f78, 0x0, ClientScr_SetScore, 0x0, _cstring_deaths, 0x2f7c, 0x0, 0x0, 0x0, _cstring_statusicon, 0x0, 0x3, ClientScr_SetStatusIcon, ClientScr_GetStatusIcon, _cstring_headicon, 0x0, 0x3, ClientScr_SetHeadIcon, ClientScr_GetHeadIcon, _cstring_headiconteam, 0x0, 0x3, ClientScr_SetHeadIconTeam, ClientScr_GetHeadIconTeam, _cstring_kills, 0x2f80, 0x0, 0x0, 0x0, _cstring_assists, 0x2f84, 0x0, 0x0, 0x0, _cstring_hasradar, 0x3178, 0x0, 0x0, 0x0, _cstring_spectatorclient, 0x2f68, 0x0, ClientScr_SetSpectatorClient, 0x0, _cstring_killcamentity, 0x2f6c, 0x0, ClientScr_SetKillCamEntity, 0x0, _cstring_archivetime, 0x2f74, 0x1, ClientScr_SetArchiveTime, ClientScr_GetArchiveTime, _cstring_psoffsettime, 0x3070, 0x0, ClientScr_SetPSOffsetTime, ClientScr_GetPSOffsetTime, _cstring_pers, 0x2f88, 0x8, ClientScr_ReadOnly, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_client_fields:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_player_field_s_i:		db "player field %s is read-only",0
_cstring_s_is_an_illegal_:		db 27h,"%s",27h," is an illegal sessionteam string. Must be allies, axis, none, or spectator.",0
_cstring_client_is_not_po:		db "client is not pointing to the level.clients array",0
_cstring_s_is_an_illegal_1:		db 27h,"%s",27h," is an illegal sessionstate string. Must be playing, dead, spectator, or intermission.",0
_cstring_null:		db 0
_cstring_s_is_an_illegal_2:		db 27h,"%s",27h," is an illegal head icon team string. Must be none, allies, axis, or spectator.",0
_cstring_spectatorclient_:		db "spectatorclient can only be set to -1, or a valid client number",0
_cstring_killcamentity_ca:		db "killcamentity can only be set to -1, or a valid entity number",0
_cstring_name:		db "name",0
_cstring_sessionteam:		db "sessionteam",0
_cstring_sessionstate:		db "sessionstate",0
_cstring_maxhealth:		db "maxhealth",0
_cstring_score:		db "score",0
_cstring_deaths:		db "deaths",0
_cstring_statusicon:		db "statusicon",0
_cstring_headicon:		db "headicon",0
_cstring_headiconteam:		db "headiconteam",0
_cstring_kills:		db "kills",0
_cstring_assists:		db "assists",0
_cstring_hasradar:		db "hasradar",0
_cstring_spectatorclient:		db "spectatorclient",0
_cstring_killcamentity:		db "killcamentity",0
_cstring_archivetime:		db "archivetime",0
_cstring_psoffsettime:		db "psoffsettime",0
_cstring_pers:		db "pers",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_00100000:		dd 0x3a83126f	; 0.001

