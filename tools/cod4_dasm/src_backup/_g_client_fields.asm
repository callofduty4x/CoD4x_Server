;Imports of g_client_fields:
	extern _Z2vaPKcz
	extern _Z9Scr_ErrorPKc
	extern _Z13Scr_AddStringPKc
	extern _Z18Scr_GetConstStringj
	extern scr_const
	extern _Z18SL_ConvertToStringj
	extern level
	extern _Z18SV_SetAssignedTeamji
	extern _Z21ClientUserinfoChangedi
	extern _Z14CalculateRanksv
	extern _Z18Scr_AddConstStringj
	extern _Z10Scr_GetIntj
	extern g_entities
	extern _Z13Scr_GetStringj
	extern _Z23GScr_GetStatusIconIndexPKc
	extern _Z18SV_GetConfigstringiPci
	extern _Z21GScr_GetHeadIconIndexPKc
	extern _Z12Scr_GetFloatj
	extern _Z12Scr_AddFloatf
	extern _Z10Scr_AddInti
	extern _Z19Scr_GetGenericFieldPh11fieldtype_ti
	extern _Z19Scr_SetGenericFieldPh11fieldtype_ti
	extern _Z17Scr_AddClassFieldjPKcj

;Exports of g_client_fields:
	global _Z18ClientScr_ReadOnlyP9gclient_sPK15client_fields_s
	global _Z17ClientScr_GetNameP9gclient_sPK15client_fields_s
	global _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s
	global _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s
	global _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s
	global _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s
	global _Z22ClientScr_SetMaxHealthP9gclient_sPK15client_fields_s
	global _Z18ClientScr_SetScoreP9gclient_sPK15client_fields_s
	global _Z23ClientScr_SetStatusIconP9gclient_sPK15client_fields_s
	global _Z23ClientScr_GetStatusIconP9gclient_sPK15client_fields_s
	global _Z21ClientScr_SetHeadIconP9gclient_sPK15client_fields_s
	global _Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s
	global _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s
	global _Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s
	global _Z28ClientScr_SetSpectatorClientP9gclient_sPK15client_fields_s
	global _Z26ClientScr_SetKillCamEntityP9gclient_sPK15client_fields_s
	global _Z24ClientScr_SetArchiveTimeP9gclient_sPK15client_fields_s
	global _Z24ClientScr_GetArchiveTimeP9gclient_sPK15client_fields_s
	global _Z25ClientScr_SetPSOffsetTimeP9gclient_sPK15client_fields_s
	global _Z25ClientScr_GetPSOffsetTimeP9gclient_sPK15client_fields_s
	global _Z18Scr_GetClientFieldP9gclient_si
	global _Z18Scr_SetClientFieldP9gclient_si
	global _Z23GScr_AddFieldsForClientv


SECTION .text


;ClientScr_ReadOnly(gclient_s*, client_fields_s const*)
_Z18ClientScr_ReadOnlyP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_player_field_s_i
	call _Z2vaPKcz
	mov [ebp+0x8], eax
	leave
	jmp _Z9Scr_ErrorPKc


;ClientScr_GetName(gclient_s*, client_fields_s const*)
_Z17ClientScr_GetNameP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	add dword [ebp+0x8], 0x3048
	leave
	jmp _Z13Scr_AddStringPKc
	nop


;ClientScr_SetSessionTeam(gclient_s*, client_fields_s const*)
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0xe]
	jz _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_10
	cmp ax, [edx+0xc]
	jz _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_20
	cmp ax, [edx+0x140]
	jz _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_30
	cmp ax, [edx+0x58]
	jz _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_40
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	jmp _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_50
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_10:
	mov dword [ebx+0x3010], 0x1
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_50:
	mov esi, level
	mov eax, ebx
	sub eax, [esi]
	cmp eax, 0xc60ff
	jle _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_60
	mov dword [esp], _cstring_client_is_not_po
	call _Z9Scr_ErrorPKc
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_60:
	mov eax, [ebx+0x3010]
	mov [esp+0x4], eax
	mov eax, [ebx+0x300c]
	mov [esp], eax
	call _Z18SV_SetAssignedTeamji
	sub ebx, [esi]
	sar ebx, 0x2
	imul eax, ebx, 0x408b97a1
	mov [esp], eax
	call _Z21ClientUserinfoChangedi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z14CalculateRanksv
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_20:
	mov dword [ebx+0x3010], 0x2
	jmp _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_50
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_40:
	mov dword [ebx+0x3010], 0x0
	jmp _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_50
_Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_30:
	mov dword [ebx+0x3010], 0x3
	jmp _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s_50


;ClientScr_GetSessionTeam(gclient_s*, client_fields_s const*)
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x3010]
	cmp eax, 0x1
	jz _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_10
	jle _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_20
	cmp eax, 0x2
	jz _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_30
	cmp eax, 0x3
	jz _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_40
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_50:
	pop ebp
	ret
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_10:
	mov eax, scr_const
	movzx eax, word [eax+0xe]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_30:
	mov eax, scr_const
	movzx eax, word [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_40:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_20:
	test eax, eax
	jnz _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s_50
	mov eax, scr_const
	movzx eax, word [eax+0x58]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj


;ClientScr_SetSessionState(gclient_s*, client_fields_s const*)
_Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x13e]
	jz _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_10
	cmp ax, [edx+0x1e]
	jz _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_20
	cmp ax, [edx+0x140]
	jz _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_30
	cmp ax, [edx+0x12e]
	jz _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_40
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_1
	call _Z2vaPKcz
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc
_Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_10:
	mov dword [ebx+0x2f64], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_20:
	mov dword [ebx+0x2f64], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_40:
	xor dword [ebx+0xb0], 0x2
	mov dword [ebx+0x2f64], 0x3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s_30:
	mov dword [ebx+0x2f64], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_GetSessionState(gclient_s*, client_fields_s const*)
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f64]
	cmp eax, 0x1
	jz _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_10
	jle _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_20
	cmp eax, 0x2
	jz _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_30
	cmp eax, 0x3
	jz _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_40
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_50:
	pop ebp
	ret
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_10:
	mov eax, scr_const
	movzx eax, word [eax+0x1e]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_30:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_40:
	mov eax, scr_const
	movzx eax, word [eax+0x12e]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_20:
	test eax, eax
	jnz _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s_50
	mov eax, scr_const
	movzx eax, word [eax+0x13e]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj


;ClientScr_SetMaxHealth(gclient_s*, client_fields_s const*)
_Z22ClientScr_SetMaxHealthP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edx, 0x1
	test eax, eax
	cmovg edx, eax
	mov [ebx+0x2fe8], edx
	cmp [ebx+0x148], edx
	jle _Z22ClientScr_SetMaxHealthP9gclient_sPK15client_fields_s_10
	mov [ebx+0x148], edx
_Z22ClientScr_SetMaxHealthP9gclient_sPK15client_fields_s_10:
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
_Z18ClientScr_SetScoreP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov [ebx+0x2f78], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z14CalculateRanksv


;ClientScr_SetStatusIcon(gclient_s*, client_fields_s const*)
_Z23ClientScr_SetStatusIconP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z23GScr_GetStatusIconIndexPKc
	mov edx, [ebp+0x8]
	mov [edx+0x2f70], eax
	leave
	ret
	nop


;ClientScr_GetStatusIcon(gclient_s*, client_fields_s const*)
_Z23ClientScr_GetStatusIconP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f70]
	test eax, eax
	jnz _Z23ClientScr_GetStatusIconP9gclient_sPK15client_fields_s_10
	mov dword [esp], _cstring_null
	call _Z13Scr_AddStringPKc
	add esp, 0x414
	pop ebx
	pop ebp
	ret
_Z23ClientScr_GetStatusIconP9gclient_sPK15client_fields_s_10:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	add eax, 0x8d2
	mov [esp], eax
	call _Z18SV_GetConfigstringiPci
	mov [esp], ebx
	call _Z13Scr_AddStringPKc
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;ClientScr_SetHeadIcon(gclient_s*, client_fields_s const*)
_Z21ClientScr_SetHeadIconP9gclient_sPK15client_fields_s:
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
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z21GScr_GetHeadIconIndexPKc
	mov [ebx+0x90], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_GetHeadIcon(gclient_s*, client_fields_s const*)
_Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s:
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
	jz _Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s_10
	cmp eax, 0xf
	jle _Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s_20
	add esp, 0x414
	pop ebx
	pop ebp
	ret
_Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s_20:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	add eax, 0x8da
	mov [esp], eax
	call _Z18SV_GetConfigstringiPci
	mov [esp], ebx
	call _Z13Scr_AddStringPKc
	add esp, 0x414
	pop ebx
	pop ebp
	ret
_Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s_10:
	mov dword [esp], _cstring_null
	call _Z13Scr_AddStringPKc
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;ClientScr_SetHeadIconTeam(gclient_s*, client_fields_s const*)
_Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s:
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
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0x58]
	jz _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_10
	cmp ax, [edx+0xc]
	jz _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_20
	cmp ax, [edx+0xe]
	jz _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_30
	cmp ax, [edx+0x140]
	jz _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_40
	mov dword [ebx+0x94], 0x3
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_10:
	mov dword [ebx+0x94], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_20:
	mov dword [ebx+0x94], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_30:
	mov dword [ebx+0x94], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s_40:
	movzx eax, ax
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_is_an_illegal_2
	call _Z2vaPKcz
	mov [ebp+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z9Scr_ErrorPKc


;ClientScr_GetHeadIconTeam(gclient_s*, client_fields_s const*)
_Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s:
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
	jz _Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_10
	cmp eax, 0x3
	jz _Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_20
	sub eax, 0x1
	jz _Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_30
	mov eax, scr_const
	movzx eax, word [eax+0x58]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_10:
	mov eax, scr_const
	movzx eax, word [eax+0xc]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_20:
	mov eax, scr_const
	movzx eax, word [eax+0x140]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj
_Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s_30:
	mov eax, scr_const
	movzx eax, word [eax+0xe]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z18Scr_AddConstStringj


;ClientScr_SetSpectatorClient(gclient_s*, client_fields_s const*)
_Z28ClientScr_SetSpectatorClientP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp eax, 0x40
	jbe _Z28ClientScr_SetSpectatorClientP9gclient_sPK15client_fields_s_10
	mov dword [esp], _cstring_spectatorclient_
	call _Z9Scr_ErrorPKc
_Z28ClientScr_SetSpectatorClientP9gclient_sPK15client_fields_s_10:
	mov eax, [ebp+0x8]
	mov [eax+0x2f68], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_SetKillCamEntity(gclient_s*, client_fields_s const*)
_Z26ClientScr_SetKillCamEntityP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov ebx, eax
	lea eax, [eax+0x1]
	cmp eax, 0x400
	jbe _Z26ClientScr_SetKillCamEntityP9gclient_sPK15client_fields_s_10
	mov dword [esp], _cstring_killcamentity_ca
	call _Z9Scr_ErrorPKc
_Z26ClientScr_SetKillCamEntityP9gclient_sPK15client_fields_s_10:
	mov eax, [ebp+0x8]
	mov [eax+0x2f6c], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ClientScr_SetArchiveTime(gclient_s*, client_fields_s const*)
_Z24ClientScr_SetArchiveTimeP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
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
_Z24ClientScr_GetArchiveTimeP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x2f74]
	mulss xmm0, [_float_0_00100000]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp _Z12Scr_AddFloatf
	nop


;ClientScr_SetPSOffsetTime(gclient_s*, client_fields_s const*)
_Z25ClientScr_SetPSOffsetTimeP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov edx, [ebp+0x8]
	mov [edx+0x3070], eax
	leave
	ret
	nop


;ClientScr_GetPSOffsetTime(gclient_s*, client_fields_s const*)
_Z25ClientScr_GetPSOffsetTimeP9gclient_sPK15client_fields_s:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x2f74]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z10Scr_AddInti
	nop


;Scr_GetClientField(gclient_s*, int)
_Z18Scr_GetClientFieldP9gclient_si:
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
	jz _Z18Scr_GetClientFieldP9gclient_si_10
	mov [ebp+0xc], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
_Z18Scr_GetClientFieldP9gclient_si_10:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19Scr_GetGenericFieldPh11fieldtype_ti
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;Scr_SetClientField(gclient_s*, int)
_Z18Scr_SetClientFieldP9gclient_si:
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
	jz _Z18Scr_SetClientFieldP9gclient_si_10
	mov [ebp+0xc], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp ecx
_Z18Scr_SetClientFieldP9gclient_si_10:
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [edx+0x8]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19Scr_SetGenericFieldPh11fieldtype_ti
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;GScr_AddFieldsForClient()
_Z23GScr_AddFieldsForClientv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [fields]
	test ebx, ebx
	jz _Z23GScr_AddFieldsForClientv_10
	xor edi, edi
	mov esi, fields+0x14
_Z23GScr_AddFieldsForClientv_20:
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
	call _Z17Scr_AddClassFieldjPKcj
	mov ebx, [esi]
	add edi, 0x14
	add esi, 0x14
	test ebx, ebx
	jnz _Z23GScr_AddFieldsForClientv_20
_Z23GScr_AddFieldsForClientv_10:
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
fields: dd _cstring_name, 0x0, 0x2, _Z18ClientScr_ReadOnlyP9gclient_sPK15client_fields_s, _Z17ClientScr_GetNameP9gclient_sPK15client_fields_s, _cstring_sessionteam, 0x0, 0x3, _Z24ClientScr_SetSessionTeamP9gclient_sPK15client_fields_s, _Z24ClientScr_GetSessionTeamP9gclient_sPK15client_fields_s, _cstring_sessionstate, 0x0, 0x3, _Z25ClientScr_SetSessionStateP9gclient_sPK15client_fields_s, _Z25ClientScr_GetSessionStateP9gclient_sPK15client_fields_s, _cstring_maxhealth, 0x2fe8, 0x0, _Z22ClientScr_SetMaxHealthP9gclient_sPK15client_fields_s, 0x0, _cstring_score, 0x2f78, 0x0, _Z18ClientScr_SetScoreP9gclient_sPK15client_fields_s, 0x0, _cstring_deaths, 0x2f7c, 0x0, 0x0, 0x0, _cstring_statusicon, 0x0, 0x3, _Z23ClientScr_SetStatusIconP9gclient_sPK15client_fields_s, _Z23ClientScr_GetStatusIconP9gclient_sPK15client_fields_s, _cstring_headicon, 0x0, 0x3, _Z21ClientScr_SetHeadIconP9gclient_sPK15client_fields_s, _Z21ClientScr_GetHeadIconP9gclient_sPK15client_fields_s, _cstring_headiconteam, 0x0, 0x3, _Z25ClientScr_SetHeadIconTeamP9gclient_sPK15client_fields_s, _Z25ClientScr_GetHeadIconTeamP9gclient_sPK15client_fields_s, _cstring_kills, 0x2f80, 0x0, 0x0, 0x0, _cstring_assists, 0x2f84, 0x0, 0x0, 0x0, _cstring_hasradar, 0x3178, 0x0, 0x0, 0x0, _cstring_spectatorclient, 0x2f68, 0x0, _Z28ClientScr_SetSpectatorClientP9gclient_sPK15client_fields_s, 0x0, _cstring_killcamentity, 0x2f6c, 0x0, _Z26ClientScr_SetKillCamEntityP9gclient_sPK15client_fields_s, 0x0, _cstring_archivetime, 0x2f74, 0x1, _Z24ClientScr_SetArchiveTimeP9gclient_sPK15client_fields_s, _Z24ClientScr_GetArchiveTimeP9gclient_sPK15client_fields_s, _cstring_psoffsettime, 0x3070, 0x0, _Z25ClientScr_SetPSOffsetTimeP9gclient_sPK15client_fields_s, _Z25ClientScr_GetPSOffsetTimeP9gclient_sPK15client_fields_s, _cstring_pers, 0x2f88, 0x8, _Z18ClientScr_ReadOnlyP9gclient_sPK15client_fields_s, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


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

