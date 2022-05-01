;Imports of cg_consolecmds_mp:
	extern cgArray
	extern cmd_args
	extern _Z2vaPKcz
	extern _Z12Cbuf_AddTextiPKc
	extern _Z22UI_SafeTranslateStringPKc
	extern _Z10Com_PrintfiPKcz
	extern _Z16UI_GetActiveMenui
	extern _Z16UI_SetActiveMenuii
	extern _Z21CL_AddReliableCommandiPKc
	extern _Z24CG_IsScoreboardDisplayedi
	extern _Z22BG_LoadShellShockDvarsPKc
	extern atof
	extern _Z21BG_GetShellshockParmsi
	extern _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t
	extern floorf
	extern _Z22BG_SaveShellShockDvarsPKc
	extern _Z8UI_PopupiPKc
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z15CG_NextWeapon_fv
	extern _Z15CG_PrevWeapon_fv
	extern _Z19CG_ActionSlotDown_fv
	extern _Z17CG_ActionSlotUp_fv
	extern _Z17Cmd_RemoveCommandPKc

;Exports of cg_consolecmds_mp:
	global _Z18CG_TeamVoiceChat_fv
	global _ZZ22CG_InitConsoleCommandsvE16unmuteplayer_VAR
	global _ZZ22CG_InitConsoleCommandsvE14muteplayer_VAR
	global _ZZ22CG_InitConsoleCommandsvE17printentities_VAR
	global _ZZ22CG_InitConsoleCommandsvE14followprev_VAR
	global _ZZ22CG_InitConsoleCommandsvE14follownext_VAR
	global _ZZ22CG_InitConsoleCommandsvE8vote_VAR
	global _ZZ22CG_InitConsoleCommandsvE12callvote_VAR
	global _ZZ22CG_InitConsoleCommandsvE10follow_VAR
	global _ZZ22CG_InitConsoleCommandsvE8team_VAR
	global _ZZ22CG_InitConsoleCommandsvE12say_team_VAR
	global _ZZ22CG_InitConsoleCommandsvE7say_VAR
	global _ZZ22CG_InitConsoleCommandsvE9stats_VAR
	global _ZZ22CG_InitConsoleCommandsvE14jumptonode_VAR
	global _ZZ22CG_InitConsoleCommandsvE14setviewpos_VAR
	global _ZZ22CG_InitConsoleCommandsvE13levelshot_VAR
	global _ZZ22CG_InitConsoleCommandsvE7ufo_VAR
	global _ZZ22CG_InitConsoleCommandsvE10noclip_VAR
	global _ZZ22CG_InitConsoleCommandsvE12notarget_VAR
	global _ZZ22CG_InitConsoleCommandsvE11demigod_VAR
	global _ZZ22CG_InitConsoleCommandsvE7god_VAR
	global _ZZ22CG_InitConsoleCommandsvE8take_VAR
	global _ZZ22CG_InitConsoleCommandsvE8give_VAR
	global _ZZ22CG_InitConsoleCommandsvE8kill_VAR
	global _ZZ22CG_InitConsoleCommandsvE6mr_VAR
	global _ZZ22CG_InitConsoleCommandsvE22CG_TeamVoiceChat_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE18CG_VoiceChat_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE21CG_QuickMessage_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Save_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Load_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE19CG_ShellShock_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE21CG_ActionSlotUp_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE23CG_ActionSlotDown_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE19CG_PrevWeapon_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE19CG_NextWeapon_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE17CG_ScoresUp_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE19CG_ScoresDown_f_VAR
	global _ZZ22CG_InitConsoleCommandsvE16CG_Viewpos_f_VAR
	global _Z12CG_Viewpos_fv
	global _Z15CG_ScoresDown_fv
	global _Z13CG_ScoresUp_fv
	global _Z15CG_ShellShock_fv
	global _Z20CG_ShellShock_Load_fv
	global _Z20CG_ShellShock_Save_fv
	global _Z17CG_QuickMessage_fv
	global _Z14CG_VoiceChat_fv
	global _Z11CG_ScoresUpi
	global _Z22CG_InitConsoleCommandsv
	global _Z26CG_ShutdownConsoleCommandsv


SECTION .text


;CG_TeamVoiceChat_f()
_Z18CG_TeamVoiceChat_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z18CG_TeamVoiceChat_fv_10
	mov edx, cmd_args
	mov ecx, [edx]
	cmp dword [edx+ecx*4+0x44], 0x2
	jz _Z18CG_TeamVoiceChat_fv_20
_Z18CG_TeamVoiceChat_fv_10:
	leave
	ret
_Z18CG_TeamVoiceChat_fv_20:
	cmp dword [eax+0x10], 0x5
	jz _Z18CG_TeamVoiceChat_fv_30
	test byte [eax+0x20], 0x4
	jz _Z18CG_TeamVoiceChat_fv_40
_Z18CG_TeamVoiceChat_fv_30:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_vsay_team_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
	leave
	ret
_Z18CG_TeamVoiceChat_fv_40:
	mov dword [esp], _cstring_cgame_nospectato
	call _Z22UI_SafeTranslateStringPKc
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;CG_Viewpos_f()
_Z12CG_Viewpos_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, cgArray
	mov edx, [eax+0x24]
	test edx, edx
	jz _Z12CG_Viewpos_fv_10
	cvtss2sd xmm0, [eax+0x4d360]
	movsd [esp+0x28], xmm0
	cvtss2sd xmm0, [eax+0x4d364]
	movsd [esp+0x20], xmm0
	cvtss2sd xmm0, [eax+0x492e8]
	movsd [esp+0x18], xmm0
	cvtss2sd xmm0, [eax+0x492e4]
	movsd [esp+0x10], xmm0
	cvtss2sd xmm0, [eax+0x492e0]
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_0f_0f_0f__0f_0f
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z12CG_Viewpos_fv_10:
	leave
	ret


;CG_ScoresDown_f()
_Z15CG_ScoresDown_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cgArray
	mov ecx, [ebx+0x24]
	test ecx, ecx
	jz _Z15CG_ScoresDown_fv_10
	mov edx, [ebx+0x46128]
	mov eax, [ebx+0x4f8a4]
	add eax, 0x7d0
	cmp eax, edx
	jl _Z15CG_ScoresDown_fv_20
	mov dword [ebx+0x502e0], 0x1
_Z15CG_ScoresDown_fv_30:
	mov dword [esp], 0x0
	call _Z16UI_GetActiveMenui
	cmp eax, 0xa
	jz _Z15CG_ScoresDown_fv_10
	mov dword [esp+0x4], 0xa
	mov dword [esp], 0x0
	call _Z16UI_SetActiveMenuii
_Z15CG_ScoresDown_fv_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z15CG_ScoresDown_fv_20:
	mov [ebx+0x4f8a4], edx
	mov dword [esp+0x4], _cstring_score
	mov dword [esp], 0x0
	call _Z21CL_AddReliableCommandiPKc
	mov dword [esp], 0x0
	call _Z24CG_IsScoreboardDisplayedi
	test eax, eax
	jnz _Z15CG_ScoresDown_fv_30
	mov dword [ebx+0x4f8a8], 0x0
	mov dword [ebx+0x502e8], 0xffffffff
	mov dword [ebx+0x502e0], 0x1
	jmp _Z15CG_ScoresDown_fv_30


;CG_ScoresUp_f()
_Z13CG_ScoresUp_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cgArray
	mov eax, [ebx+0x24]
	test eax, eax
	jnz _Z13CG_ScoresUp_fv_10
_Z13CG_ScoresUp_fv_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13CG_ScoresUp_fv_10:
	mov dword [esp], 0x0
	call _Z24CG_IsScoreboardDisplayedi
	test eax, eax
	jz _Z13CG_ScoresUp_fv_20
	mov dword [ebx+0x502e0], 0x0
	mov dword [ebx+0x502e8], 0xffffffff
	mov eax, [ebx+0x46128]
	mov [ebx+0x502e4], eax
_Z13CG_ScoresUp_fv_20:
	mov dword [esp], 0x0
	call _Z16UI_GetActiveMenui
	cmp eax, 0xa
	jnz _Z13CG_ScoresUp_fv_30
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z16UI_SetActiveMenuii
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	add [eax], al


;CG_ShellShock_f()
_Z15CG_ShellShock_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, cgArray
	mov ebx, [eax+0x24]
	test ebx, ebx
	jz _Z15CG_ShellShock_fv_10
	mov ebx, cmd_args
	mov edx, [ebx]
	mov eax, [ebx+edx*4+0x44]
	cmp eax, 0x2
	jz _Z15CG_ShellShock_fv_20
	cmp eax, 0x3
	jz _Z15CG_ShellShock_fv_30
	mov dword [esp+0x4], _cstring_usage_cg_shellsh
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z15CG_ShellShock_fv_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15CG_ShellShock_fv_30:
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x8]
	mov [esp], eax
	call _Z22BG_LoadShellShockDvarsPKc
	test eax, eax
	jz _Z15CG_ShellShock_fv_10
	mov edx, [ebx]
_Z15CG_ShellShock_fv_20:
	cmp dword [ebx+edx*4+0x44], 0x1
	jle _Z15CG_ShellShock_fv_40
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x4]
_Z15CG_ShellShock_fv_50:
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	mov dword [esp], 0x0
	call _Z21BG_GetShellshockParmsi
	mov [esp], eax
	call _Z30BG_SetShellShockParmsFromDvarsP18shellshock_parms_t
	mov ebx, cgArray
	mov eax, [ebx+0x46128]
	mov [ebx+0x504f0], eax
	cvtsd2ss xmm0, [ebp-0x10]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x14]
	cvttss2si eax, [ebp-0x14]
	mov [ebx+0x504f4], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z15CG_ShellShock_fv_40:
	mov eax, _cstring_null
	jmp _Z15CG_ShellShock_fv_50
	nop


;CG_ShellShock_Load_f()
_Z20CG_ShellShock_Load_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z20CG_ShellShock_Load_fv_10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z20CG_ShellShock_Load_fv_20
	mov dword [esp+0x4], _cstring_usage_cg_shellsh1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z20CG_ShellShock_Load_fv_10:
	leave
	ret
_Z20CG_ShellShock_Load_fv_20:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z22BG_LoadShellShockDvarsPKc
	leave
	ret
	nop


;CG_ShellShock_Save_f()
_Z20CG_ShellShock_Save_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z20CG_ShellShock_Save_fv_10
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x2
	jz _Z20CG_ShellShock_Save_fv_20
	mov dword [esp+0x4], _cstring_usage_cg_shellsh2
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z20CG_ShellShock_Save_fv_10:
	leave
	ret
_Z20CG_ShellShock_Save_fv_20:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z22BG_SaveShellShockDvarsPKc
	leave
	ret
	nop


;CG_QuickMessage_f()
_Z17CG_QuickMessage_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z17CG_QuickMessage_fv_10
	test byte [eax+0x20], 0x4
	jnz _Z17CG_QuickMessage_fv_20
_Z17CG_QuickMessage_fv_10:
	leave
	ret
_Z17CG_QuickMessage_fv_20:
	mov dword [esp+0x4], _cstring_uimenu_wm_quickm
	mov dword [esp], 0x0
	call _Z8UI_PopupiPKc
	leave
	ret


;CG_VoiceChat_f()
_Z14CG_VoiceChat_fv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, cgArray
	mov eax, [eax+0x24]
	test eax, eax
	jz _Z14CG_VoiceChat_fv_10
	mov edx, cmd_args
	mov ecx, [edx]
	cmp dword [edx+ecx*4+0x44], 0x2
	jz _Z14CG_VoiceChat_fv_20
_Z14CG_VoiceChat_fv_10:
	leave
	ret
_Z14CG_VoiceChat_fv_20:
	cmp dword [eax+0x10], 0x5
	jz _Z14CG_VoiceChat_fv_30
	test byte [eax+0x20], 0x4
	jz _Z14CG_VoiceChat_fv_40
_Z14CG_VoiceChat_fv_30:
	mov eax, [edx+ecx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_vsay_s
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z12Cbuf_AddTextiPKc
	leave
	ret
_Z14CG_VoiceChat_fv_40:
	mov dword [esp], _cstring_cgame_nospectato
	call _Z22UI_SafeTranslateStringPKc
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	leave
	ret


;CG_ScoresUp(int)
_Z11CG_ScoresUpi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z24CG_IsScoreboardDisplayedi
	test eax, eax
	jz _Z11CG_ScoresUpi_10
	mov eax, cgArray
	mov dword [eax+0x502e0], 0x0
	mov dword [eax+0x502e8], 0xffffffff
	mov edx, [eax+0x46128]
	mov [eax+0x502e4], edx
_Z11CG_ScoresUpi_10:
	leave
	ret


;CG_InitConsoleCommands()
_Z22CG_InitConsoleCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE16CG_Viewpos_f_VAR
	mov dword [esp+0x4], _Z12CG_Viewpos_fv
	mov dword [esp], _cstring_viewpos
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE19CG_ScoresDown_f_VAR
	mov dword [esp+0x4], _Z15CG_ScoresDown_fv
	mov dword [esp], _cstring_scores
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE17CG_ScoresUp_f_VAR
	mov dword [esp+0x4], _Z13CG_ScoresUp_fv
	mov dword [esp], _cstring_scores1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE19CG_NextWeapon_f_VAR
	mov eax, _Z15CG_NextWeapon_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_weapnext
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE19CG_PrevWeapon_f_VAR
	mov eax, _Z15CG_PrevWeapon_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_weapprev
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE23CG_ActionSlotDown_f_VAR
	mov eax, _Z19CG_ActionSlotDown_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_actionslot
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE21CG_ActionSlotUp_f_VAR
	mov eax, _Z17CG_ActionSlotUp_fv
	mov [esp+0x4], eax
	mov dword [esp], _cstring_actionslot1
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE19CG_ShellShock_f_VAR
	mov dword [esp+0x4], _Z15CG_ShellShock_fv
	mov dword [esp], _cstring_cg_shellshock
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Load_f_VAR
	mov dword [esp+0x4], _Z20CG_ShellShock_Load_fv
	mov dword [esp], _cstring_cg_shellshock_lo
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Save_f_VAR
	mov dword [esp+0x4], _Z20CG_ShellShock_Save_fv
	mov dword [esp], _cstring_cg_shellshock_sa
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE21CG_QuickMessage_f_VAR
	mov dword [esp+0x4], _Z17CG_QuickMessage_fv
	mov dword [esp], _cstring_mp_quickmessage
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE18CG_VoiceChat_f_VAR
	mov dword [esp+0x4], _Z14CG_VoiceChat_fv
	mov dword [esp], _cstring_voicechat
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE22CG_TeamVoiceChat_f_VAR
	mov dword [esp+0x4], _Z18CG_TeamVoiceChat_fv
	mov dword [esp], _cstring_voiceteamchat
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE6mr_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_mr
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE8kill_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_kill
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE8give_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_give
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE8take_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_take
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE7god_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_god
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE11demigod_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_demigod
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE12notarget_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_notarget
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE10noclip_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_noclip
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE7ufo_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ufo
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE13levelshot_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_levelshot
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE14setviewpos_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_setviewpos
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE14jumptonode_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_jumptonode
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE9stats_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_stats
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE7say_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_say
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE12say_team_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_say_team
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE8team_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_team
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE10follow_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_follow
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE12callvote_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_callvote
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE8vote_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_vote
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE14follownext_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_follownext
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE14followprev_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_followprev
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE17printentities_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_printentities
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE14muteplayer_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_muteplayer
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ22CG_InitConsoleCommandsvE16unmuteplayer_VAR
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_unmuteplayer
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret


;CG_ShutdownConsoleCommands()
_Z26CG_ShutdownConsoleCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], _cstring_viewpos
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_scores
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_scores1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_weapnext
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_weapprev
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_actionslot
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_actionslot1
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_cg_shellshock
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_cg_shellshock_lo
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_cg_shellshock_sa
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_mp_quickmessage
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_voicechat
	call _Z17Cmd_RemoveCommandPKc
	mov dword [esp], _cstring_voiceteamchat
	call _Z17Cmd_RemoveCommandPKc
	leave
	ret


;Initialized global or static variables of cg_consolecmds_mp:
SECTION .data


;Initialized constant data of cg_consolecmds_mp:
SECTION .rdata


;Zero initialized global or static variables of cg_consolecmds_mp:
SECTION .bss
_ZZ22CG_InitConsoleCommandsvE16unmuteplayer_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE14muteplayer_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE17printentities_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE14followprev_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE14follownext_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE8vote_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE12callvote_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE10follow_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE8team_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE12say_team_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE7say_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE9stats_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE14jumptonode_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE14setviewpos_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE13levelshot_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE7ufo_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE10noclip_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE12notarget_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE11demigod_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE7god_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE8take_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE8give_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE8kill_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE6mr_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE22CG_TeamVoiceChat_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE18CG_VoiceChat_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE21CG_QuickMessage_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Save_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE24CG_ShellShock_Load_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE19CG_ShellShock_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE21CG_ActionSlotUp_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE23CG_ActionSlotDown_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE19CG_PrevWeapon_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE19CG_NextWeapon_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE17CG_ScoresUp_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE19CG_ScoresDown_f_VAR: resb 0x14
_ZZ22CG_InitConsoleCommandsvE16CG_Viewpos_f_VAR: resb 0x30


;All cstrings:
SECTION .rdata
_cstring_cmd_vsay_team_s:		db "cmd vsay_team %s",0ah,0
_cstring_cgame_nospectato:		db "CGAME_NOSPECTATORVOICECHAT",0
_cstring_s:		db "%s",0ah,0
_cstring_0f_0f_0f__0f_0f:		db "(%.0f %.0f %.0f) : %.0f %.0f",0ah,0
_cstring_score:		db "score",0
_cstring_usage_cg_shellsh:		db "USAGE: cg_shellshock <duration> <filename",3fh,">",0ah,0
_cstring_null:		db 0
_cstring_usage_cg_shellsh1:		db "USAGE: cg_shellshock_load <name>",0ah,0
_cstring_usage_cg_shellsh2:		db "USAGE: cg_shellshock_save <name>",0ah,0
_cstring_uimenu_wm_quickm:		db "UIMENU_WM_QUICKMESSAGE",0
_cstring_cmd_vsay_s:		db "cmd vsay %s",0ah,0
_cstring_viewpos:		db "viewpos",0
_cstring_scores:		db "+scores",0
_cstring_scores1:		db "-scores",0
_cstring_weapnext:		db "weapnext",0
_cstring_weapprev:		db "weapprev",0
_cstring_actionslot:		db "+actionslot",0
_cstring_actionslot1:		db "-actionslot",0
_cstring_cg_shellshock:		db "cg_shellshock",0
_cstring_cg_shellshock_lo:		db "cg_shellshock_load",0
_cstring_cg_shellshock_sa:		db "cg_shellshock_save",0
_cstring_mp_quickmessage:		db "mp_QuickMessage",0
_cstring_voicechat:		db "VoiceChat",0
_cstring_voiceteamchat:		db "VoiceTeamChat",0
_cstring_mr:		db "mr",0
_cstring_kill:		db "kill",0
_cstring_give:		db "give",0
_cstring_take:		db "take",0
_cstring_god:		db "god",0
_cstring_demigod:		db "demigod",0
_cstring_notarget:		db "notarget",0
_cstring_noclip:		db "noclip",0
_cstring_ufo:		db "ufo",0
_cstring_levelshot:		db "levelshot",0
_cstring_setviewpos:		db "setviewpos",0
_cstring_jumptonode:		db "jumptonode",0
_cstring_stats:		db "stats",0
_cstring_say:		db "say",0
_cstring_say_team:		db "say_team",0
_cstring_team:		db "team",0
_cstring_follow:		db "follow",0
_cstring_callvote:		db "callvote",0
_cstring_vote:		db "vote",0
_cstring_follownext:		db "follownext",0
_cstring_followprev:		db "followprev",0
_cstring_printentities:		db "printentities",0
_cstring_muteplayer:		db "muteplayer",0
_cstring_unmuteplayer:		db "unmuteplayer",0



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5

