;Imports of cl_keys:
	extern con_ignoreMatchPrefixOnly
	extern con_matchPrefixOnly
	extern _Z9I_stristrPKcS0_
	extern _Z10Com_PrintfiPKcz
	extern _Z10I_strnicmpPKcS0_i
	extern _Z9I_stricmpPKcS0_
	extern _Z9I_isdigiti
	extern _Z23Con_IsAutoCompleteMatchPKcS0_i
	extern tolower
	extern _Z10I_strncpyzPcPKci
	extern _Z20Sys_GetClipboardDatav
	extern _Z21Sys_FreeClipboardDataPc
	extern memmove
	extern GetCurrentEventKeyModifiers
	extern _Z11Field_ClearP7field_t
	extern cls
	extern __maskrune
	extern scrPlaceView
	extern clientUIActives
	extern _Z11Com_sprintfPciPKcz
	extern _Z21CL_AddReliableCommandiPKc
	extern cmd_args
	extern _Z9I_strncatPciPKc
	extern ReplaceStringInternal
	extern dvar_modifiedFlags
	extern strchr
	extern con_restricted
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern _Z12Con_IsActivei
	extern _Z23Con_ToggleConsoleOutputv
	extern _Z12Cbuf_AddTextiPKc
	extern _Z11UI_KeyEventiii
	extern com_sv_running
	extern sv_disableClientConsole
	extern clientConnections
	extern nextdemo
	extern _Z14Dvar_SetStringPK6dvar_sPKc
	extern _Z17Con_ToggleConsolev
	extern _Z24CG_IsScoreboardDisplayedi
	extern _Z22Scoreboard_HandleInputii
	extern _Z16UI_GetActiveMenui
	extern cl_bypassMouseInput
	extern _Z16UI_SetActiveMenuii
	extern _Z22CL_StopLogoOrCinematici
	extern cl_waitingOnServerToLoadMap
	extern _Z22Con_CancelAutoCompletev
	extern _Z15UI_CheckExecKeyii
	extern memcpy
	extern scrPlaceFull
	extern _Z28Con_AllowAutoCompleteCyclingh
	extern _Z24Con_CommitToAutoCompletev
	extern g_console_field_width
	extern g_console_char_height
	extern _Z30CL_AllLocalClientsDisconnectedv
	extern _Z16SCR_UpdateScreenv
	extern _Z21Con_CycleAutoCompletei
	extern strncasecmp
	extern strncpy
	extern _Z23PbServerCompleteCommandPci
	extern _Z9I_strncmpPKcS0_i
	extern _Z7Con_Topv
	extern _Z17Con_TokenizeInputv
	extern _Z17Con_IsDvarCommandPKc
	extern _Z16Dvar_ForEachNamePFvPKcE
	extern strstr
	extern _Z22Cmd_EndTokenizedStringv
	extern _Z10Con_PageUpv
	extern _Z12Con_PageDownv
	extern _Z23PbClientCompleteCommandPci
	extern _Z10Con_Bottomv
	extern con_inputMaxMatchesShown
	extern _Z11Cmd_ForEachPFvPKcE
	extern _Z27Con_HasTooManyMatchesToShowv
	extern _Z24Con_AnySpaceAfterCommandv
	extern _Z12Dvar_FindVarPKc
	extern _Z24Con_AutoCompleteFromListPPKcjS0_Pcj
	extern _Z27Cmd_GetAutoCompleteFileListPKcPii
	extern FS_FreeFileList
	extern _Z18Com_StripExtensionPKcPc
	extern FreeStringInternal
	extern _Z21Key_KeynumToStringBufiPci
	extern _Z9FS_PrintfiPKcz
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	extern _Z21R_NormalizedTextScaleP6Font_sf
	extern _Z11R_TextWidthPKciP6Font_s
	extern _Z15SEH_PrintStrlenPKc
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern __toupper
	extern _Z22SEH_GetCurrentLanguagev
	extern snd_drawInfoStrings
	extern _Z12R_TextHeightP6Font_s
	extern colorWhite
	extern _Z21CL_DrawTextWithCursorPK15ScreenPlacementPKciP6Font_sffiiffPKfiic

;Exports of cl_keys:
	global sPasting
	global s_shouldCompleteCmd
	global s_hasExactMatch
	global s_shortestMatch
	global s_prefixMatchCount
	global s_matchCount
	global s_completionString
	global _Z12PrintMatchesPKc
	global _Z18Key_StringToKeynumPKc
	global _ZZ18Key_KeynumToStringiiE7tinystr
	global _ZZ18CL_InitKeyCommandsvE18Key_Bindlist_f_VAR
	global _ZZ18CL_InitKeyCommandsvE19Key_Unbindall_f_VAR
	global _ZZ18CL_InitKeyCommandsvE16Key_Unbind_f_VAR
	global _ZZ18CL_InitKeyCommandsvE14Key_Bind_f_VAR
	global _Z11FindMatchesPKc
	global _Z15Field_CharEventiPK15ScreenPlacementP7field_ti
	global _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti
	global _Z11Message_Keyii
	global _Z10Field_DrawiP7field_tiiii
	global _Z10Key_Bind_fv
	global _Z11CL_KeyEventiiij
	global _Z11Console_Keyii
	global _Z12CL_CharEventii
	global _Z12Key_Shutdownv
	global _Z12Key_Unbind_fv
	global _Z14Key_AddCatcherii
	global _Z14Key_Bindlist_fv
	global _Z14Key_GetBindingii
	global _Z14Key_SetBindingiiPKc
	global _Z14Key_SetCatcherii
	global _Z15Key_ClearStatesi
	global _Z15Key_Unbindall_fv
	global _Z16CL_GetKeyBindingiPKcPA128_c
	global _Z17Key_RemoveCatcherii
	global _Z17Key_WriteBindingsii
	global _Z18CL_InitKeyCommandsv
	global _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	global _Z18Key_IsCommandBoundiPKc
	global _Z18Key_KeynumToStringii
	global _Z19Key_IsCatcherActiveii
	global _Z21Key_GetOverstrikeModei
	global _Z21Key_SetOverstrikeModeii
	global _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii
	global _Z24Key_GetCommandAssignmentiPKcPi
	global _Z9PbMaxKeysv
	global g_consoleField
	global historyEditLines
	global playerKeys
	global frenchNumberKeysMap
	global historyLine
	global keynames
	global keynames_localized
	global nextHistoryLine


SECTION .text


;PrintMatches(char const*)
_Z12PrintMatchesPKc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, con_ignoreMatchPrefixOnly
	cmp byte [eax], 0x0
	jz _Z12PrintMatchesPKc_10
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z12PrintMatchesPKc_10
_Z12PrintMatchesPKc_30:
	mov dword [esp+0x4], s_shortestMatch
	mov [esp], ebx
	call _Z9I_stristrPKcS0_
	test eax, eax
	jz _Z12PrintMatchesPKc_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_____s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z12PrintMatchesPKc_20:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
_Z12PrintMatchesPKc_10:
	mov edi, s_shortestMatch
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov dword [esp+0x4], s_shortestMatch
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z12PrintMatchesPKc_30
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
	add [eax], al


;Key_StringToKeynum(char const*)
_Z18Key_StringToKeynumPKc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	test eax, eax
	jnz _Z18Key_StringToKeynumPKc_10
_Z18Key_StringToKeynumPKc_20:
	mov eax, 0xffffffff
_Z18Key_StringToKeynumPKc_40:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
_Z18Key_StringToKeynumPKc_10:
	movzx eax, byte [eax]
	test al, al
	jz _Z18Key_StringToKeynumPKc_20
	movzx edx, byte [ebx+0x1]
	test dl, dl
	jnz _Z18Key_StringToKeynumPKc_30
	movsx eax, al
	jmp _Z18Key_StringToKeynumPKc_40
_Z18Key_StringToKeynumPKc_30:
	cmp al, 0x30
	jnz _Z18Key_StringToKeynumPKc_50
	cmp dl, 0x78
	jz _Z18Key_StringToKeynumPKc_60
_Z18Key_StringToKeynumPKc_50:
	mov eax, [keynames]
	test eax, eax
	jz _Z18Key_StringToKeynumPKc_20
	mov edi, keynames
_Z18Key_StringToKeynumPKc_80:
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z18Key_StringToKeynumPKc_70
	add edi, 0x8
	mov eax, [edi]
	test eax, eax
	jnz _Z18Key_StringToKeynumPKc_80
	jmp _Z18Key_StringToKeynumPKc_20
_Z18Key_StringToKeynumPKc_70:
	mov eax, [edi+0x4]
	jmp _Z18Key_StringToKeynumPKc_40
_Z18Key_StringToKeynumPKc_60:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	cmp ecx, 0xfffffffa
	jnz _Z18Key_StringToKeynumPKc_50
	movsx edi, byte [ebx+0x2]
	mov [esp], edi
	call _Z9I_isdigiti
	test al, al
	jz _Z18Key_StringToKeynumPKc_90
	sub edi, 0x30
	shl edi, 0x4
_Z18Key_StringToKeynumPKc_130:
	movsx ebx, byte [ebx+0x3]
	mov [esp], ebx
	call _Z9I_isdigiti
	test al, al
	jz _Z18Key_StringToKeynumPKc_100
	lea eax, [ebx-0x30]
	add eax, edi
	jmp _Z18Key_StringToKeynumPKc_40
_Z18Key_StringToKeynumPKc_100:
	lea eax, [ebx-0x61]
	cmp eax, 0x5
	jbe _Z18Key_StringToKeynumPKc_110
	xor eax, eax
	add eax, edi
	jmp _Z18Key_StringToKeynumPKc_40
_Z18Key_StringToKeynumPKc_90:
	lea eax, [edi-0x61]
	cmp eax, 0x5
	jbe _Z18Key_StringToKeynumPKc_120
	xor edi, edi
	jmp _Z18Key_StringToKeynumPKc_130
_Z18Key_StringToKeynumPKc_110:
	lea eax, [ebx-0x57]
	add eax, edi
	jmp _Z18Key_StringToKeynumPKc_40
_Z18Key_StringToKeynumPKc_120:
	sub edi, 0x57
	shl edi, 0x4
	jmp _Z18Key_StringToKeynumPKc_130
	nop


;FindMatches(char const*)
_Z11FindMatchesPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [s_completionString]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z11FindMatchesPKc_10
	mov eax, con_ignoreMatchPrefixOnly
	cmp byte [eax], 0x0
	jnz _Z11FindMatchesPKc_20
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11FindMatchesPKc_30
_Z11FindMatchesPKc_20:
	mov [esp+0x8], ebx
	mov eax, [s_completionString]
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z11FindMatchesPKc_30
	xor edx, edx
_Z11FindMatchesPKc_80:
	mov eax, [s_matchCount]
	add eax, 0x1
	mov [s_matchCount], eax
	sub eax, 0x1
	jz _Z11FindMatchesPKc_40
	test dl, dl
	jz _Z11FindMatchesPKc_50
	cmp dword [s_prefixMatchCount], 0x1
	jz _Z11FindMatchesPKc_40
_Z11FindMatchesPKc_50:
	mov eax, [s_prefixMatchCount]
	test eax, eax
	jz _Z11FindMatchesPKc_60
	test dl, dl
	jz _Z11FindMatchesPKc_10
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jnz _Z11FindMatchesPKc_70
	xor edi, edi
_Z11FindMatchesPKc_110:
	mov eax, 0x1
_Z11FindMatchesPKc_130:
	mov [s_hasExactMatch], al
	mov byte [edi+s_shortestMatch], 0x0
_Z11FindMatchesPKc_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FindMatchesPKc_30:
	add dword [s_prefixMatchCount], 0x1
	mov edx, 0x1
	jmp _Z11FindMatchesPKc_80
_Z11FindMatchesPKc_70:
	mov esi, [ebp+0x8]
	xor edi, edi
_Z11FindMatchesPKc_100:
	movsx eax, byte [edi+s_shortestMatch]
	mov [esp], eax
	call tolower
	mov ebx, eax
	movsx eax, byte [esi]
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz _Z11FindMatchesPKc_90
	add edi, 0x1
	mov esi, [ebp+0x8]
	add esi, edi
	cmp byte [esi], 0x0
	jnz _Z11FindMatchesPKc_100
	jmp _Z11FindMatchesPKc_110
_Z11FindMatchesPKc_40:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], s_shortestMatch
	call _Z10I_strncpyzPcPKci
	mov byte [s_hasExactMatch], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FindMatchesPKc_60:
	mov dword [esp+0x8], 0x400
	mov eax, [s_completionString]
	mov [esp+0x4], eax
	mov dword [esp], s_shortestMatch
	call _Z10I_strncpyzPcPKci
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11FindMatchesPKc_90:
	cmp byte [esi], 0x0
	jz _Z11FindMatchesPKc_110
	cmp byte [s_hasExactMatch], 0x0
	jnz _Z11FindMatchesPKc_120
	xor eax, eax
	jmp _Z11FindMatchesPKc_130
_Z11FindMatchesPKc_120:
	cmp byte [edi+s_shortestMatch], 0x0
	jz _Z11FindMatchesPKc_110
	xor eax, eax
	jmp _Z11FindMatchesPKc_130
	nop


;Field_CharEvent(int, ScreenPlacement const*, field_t*, int)
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti:
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_200:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x28], eax
	mov [ebp-0x2c], edx
	mov esi, ecx
	mov ebx, [ebp+0x8]
	lea eax, [ecx+0x18]
	mov [ebp-0x24], eax
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp ebx, 0x16
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_10
	cmp ebx, 0x76
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_20
	cmp ebx, 0x3
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_30
	cmp ebx, 0x8
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_40
	cmp ebx, 0x1
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_50
	cmp ebx, 0x5
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_60
	cmp ebx, 0x1f
	jle _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_70
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_160:
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	mov eax, [eax*8+playerKeys+0x11c]
	test eax, eax
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_80
	mov eax, [esi]
	cmp eax, 0xff
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_70
	mov [eax+esi+0x18], bl
	lea edx, [eax+0x1]
	mov [esi], edx
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_150:
	lea eax, [edi+0x1]
	cmp edx, eax
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_90
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_190:
	mov edi, 0x1
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120:
	mov [esp+0x4], esi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_10:
	cmp byte [sPasting], 0x0
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_100
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_70:
	xor edi, edi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_40:
	mov eax, [esi]
	test eax, eax
	setg bl
	test bl, bl
	jnz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_110
	xor edi, edi
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_100:
	call _Z20Sys_GetClipboardDatav
	mov [ebp-0x20], eax
	test eax, eax
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_130
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_140
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_220:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z21Sys_FreeClipboardDataPc
	mov eax, 0x1
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_130:
	movzx edi, al
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_60:
	mov [esi], edi
	xor edi, edi
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_80:
	cmp edi, 0xff
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_70
	mov eax, [esi]
	mov edx, [ebp-0x24]
	add edx, eax
	mov ecx, edi
	sub ecx, eax
	mov eax, ecx
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	add edx, 0x1
	mov [esp], edx
	call memmove
	mov edx, [esi]
	mov [edx+esi+0x18], bl
	add edx, 0x1
	mov [esi], edx
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_150
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_50:
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x0
	xor edi, edi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_20:
	call GetCurrentEventKeyModifiers
	test ah, 0x1
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_160
	cmp byte [sPasting], 0x0
	jnz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_160
	call _Z20Sys_GetClipboardDatav
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_170
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_180
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_240:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z21Sys_FreeClipboardDataPc
	mov eax, 0x1
	movzx edi, al
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_30:
	mov [esp], esi
	call _Z11Field_ClearP7field_t
	mov edi, 0x1
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_90:
	mov byte [edx+esi+0x18], 0x0
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_190
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_110:
	mov edx, [ebp-0x24]
	add edx, eax
	sub edi, eax
	lea eax, [edi+0x1]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	sub edx, 0x1
	mov [esp], edx
	call memmove
	sub dword [esi], 0x1
	movzx edi, bl
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_140:
	xor ebx, ebx
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_210:
	mov edx, [ebp-0x20]
	movsx eax, byte [ebx+edx]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_200
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_210
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_220
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_170:
	xor eax, eax
	movzx edi, al
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_120
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_180:
	xor ebx, ebx
_Z15Field_CharEventiPK15ScreenPlacementP7field_ti_230:
	mov edx, [ebp-0x1c]
	movsx eax, byte [edx+ebx]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_200
	add ebx, 0x1
	cmp edi, ebx
	jnz _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_230
	jmp _Z15Field_CharEventiPK15ScreenPlacementP7field_ti_240
	nop


;Field_KeyDownEvent(int, ScreenPlacement const*, field_t*, int)
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x28], edx
	mov [ebp-0x2c], ecx
	mov esi, [ebp+0x8]
	lea eax, [eax+eax*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	mov edx, [eax+playerKeys+0x8a4]
	mov [ebp-0x24], edx
	mov eax, [eax+playerKeys+0x898]
	mov [ebp-0x20], eax
	mov edx, ecx
	add edx, 0x18
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp esi, 0xa1
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_10
	cmp esi, 0xa2
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_20
	cmp esi, 0x9d
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_30
	cmp esi, 0x9c
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_40
	cmp esi, 0xa5
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_50
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_130:
	mov [esp], esi
	call tolower
	cmp eax, 0x61
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_60
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_220:
	cmp esi, 0xa6
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_70
	mov [esp], esi
	call tolower
	cmp eax, 0x65
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_80
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_110:
	cmp esi, 0xa1
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_90
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160:
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_80:
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_110
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_70:
	mov ecx, [ebp-0x2c]
	mov [ecx], edi
	xor edi, edi
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100:
	mov eax, cls
	mov ebx, [eax+0x110]
	test ebx, ebx
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_120
	mov ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x28]
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_120:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_10:
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_130
	cmp byte [sPasting], 0x0
	jnz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_130
	call _Z20Sys_GetClipboardDatav
	mov [ebp-0x1c], eax
	test eax, eax
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_140
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_150
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_320:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call _Z21Sys_FreeClipboardDataPc
	mov eax, 0x1
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_140:
	movzx edi, al
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_20:
	mov ebx, [ebp-0x2c]
	mov eax, [ebx]
	cmp edi, eax
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
	add edx, eax
	sub edi, eax
	mov [esp+0x8], edi
	lea eax, [edx+0x1]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_30:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	cmp edi, eax
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_170
	mov ecx, edx
	lea edx, [eax+0x1]
	mov [ecx], edx
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_170:
	mov esi, [ebp-0x20]
	test esi, esi
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	mov eax, edx
	cmp edi, edx
	jg _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_180
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_200:
	mov eax, [0xd5cc084]
	test dword [eax+ecx*4+0x34], 0x500
	setnz al
	movzx eax, al
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_210:
	test eax, eax
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_190
	lea eax, [edx+0x1]
	mov edx, eax
	mov ecx, [ebp-0x2c]
	mov [ecx], eax
	cmp edi, eax
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_190
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_180:
	mov ebx, [ebp-0x2c]
	movsx ecx, byte [eax+ebx+0x18]
	test ecx, 0xffffff80
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_200
	mov dword [esp+0x4], 0x500
	mov [esp], ecx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_210
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_220
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_50:
	mov edx, [ebp-0x2c]
	mov dword [edx], 0x0
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_40:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	test edx, edx
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_230
	sub edx, 0x1
	mov [eax], edx
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_230:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_240
	mov eax, edx
	test edx, edx
	jg _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_250
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_240:
	mov eax, [ebp-0x2c]
	cmp edx, [eax+0x4]
	jge _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
	mov [eax+0x4], edx
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_260:
	mov eax, [0xd5cc084]
	test dword [eax+ecx*4+0x34], 0x500
	setnz al
	movzx eax, al
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_270:
	test eax, eax
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_240
	lea eax, [edx-0x1]
	mov edx, eax
	mov ebx, [ebp-0x2c]
	mov [ebx], eax
	test eax, eax
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_240
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_250:
	mov ebx, [ebp-0x2c]
	movsx ecx, byte [eax+ebx+0x17]
	test ecx, 0xffffff80
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_260
	mov dword [esp+0x4], 0x500
	mov [esp], ecx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_270
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_90:
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	xor edx, edx
	cmp dword [eax+playerKeys+0x11c], 0x0
	setz dl
	mov [eax+playerKeys+0x11c], edx
	xor edi, edi
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_100
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_190:
	mov eax, edx
	cmp edi, edx
	jg _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_280
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_290:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_300:
	test eax, eax
	jnz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
	mov ebx, [ebp-0x2c]
	mov eax, [ebx]
	add eax, 0x1
	mov [ebx], eax
	cmp edi, eax
	jle _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_160
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_280:
	mov ebx, [ebp-0x2c]
	movsx edx, byte [eax+ebx+0x18]
	test edx, 0xffffff80
	jz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_290
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_300
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_150:
	xor esi, esi
_Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_310:
	mov edx, [ebp-0x1c]
	movsx eax, byte [edx+esi]
	mov [esp], eax
	mov ecx, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov eax, ebx
	call _Z15Field_CharEventiPK15ScreenPlacementP7field_ti
	add esi, 0x1
	cmp edi, esi
	jnz _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_310
	jmp _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti_320


;Message_Key(int, int)
_Z11Message_Keyii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov ebx, eax
	mov ecx, edx
	lea eax, [eax+eax*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	lea esi, [eax+playerKeys]
	cmp edx, 0x1b
	jz _Z11Message_Keyii_10
	cmp edx, 0xd
	jz _Z11Message_Keyii_20
	cmp edx, 0xbf
	jz _Z11Message_Keyii_20
	mov eax, ebx
	shl eax, 0x6
	lea edx, [eax+ebx*4]
	add edx, scrPlaceView
	mov [esp], ecx
	mov ecx, esi
	mov eax, ebx
	call _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Message_Keyii_20:
	mov ecx, clientUIActives
	mov edx, [ecx+0xc]
	cmp byte [esi+0x18], 0x0
	jnz _Z11Message_Keyii_30
_Z11Message_Keyii_40:
	and dword [ecx+0x4], 0xffffffdf
	mov [esp], esi
	call _Z11Field_ClearP7field_t
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Message_Keyii_30:
	cmp edx, 0x9
	jnz _Z11Message_Keyii_40
	mov eax, [eax+playerKeys+0x118]
	test eax, eax
	jz _Z11Message_Keyii_50
	lea eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_say_team_s
	mov dword [esp+0x4], 0x400
	lea edi, [ebp-0x418]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
_Z11Message_Keyii_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call _Z21CL_AddReliableCommandiPKc
	mov ecx, clientUIActives
	jmp _Z11Message_Keyii_40
_Z11Message_Keyii_10:
	mov eax, clientUIActives
	and dword [eax+0x4], 0xffffffdf
	mov [esp], esi
	call _Z11Field_ClearP7field_t
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Message_Keyii_50:
	lea eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_say_s
	mov dword [esp+0x4], 0x400
	lea edi, [ebp-0x418]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z11Message_Keyii_60
	nop


;Field_Draw(int, field_t*, int, int, int, int)
_Z10Field_DrawiP7field_tiiii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0xc]
	mov eax, [esi+0x8]
	test eax, eax
	jnz _Z10Field_DrawiP7field_tiiii_10
	mov dword [esi+0x8], 0x100
_Z10Field_DrawiP7field_tiiii_10:
	mov edx, [esi+0x4]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [esi+edx+0x18]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov eax, [esi]
	sub eax, [esi+0x4]
	mov [esp+0x20], eax
	mov eax, [esi+0x8]
	mov [esp+0x1c], eax
	mov [esp+0x18], ebx
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x18]
	mov [esp+0x10], eax
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Key_Bind_f()
_Z10Key_Bind_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, cmd_args
	mov eax, [ebx]
	mov edx, [ebx+eax*4+0x44]
	mov [ebp-0x424], edx
	sub edx, 0x1
	jle _Z10Key_Bind_fv_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	call _Z18Key_StringToKeynumPKc
	cmp eax, 0xffffffff
	jz _Z10Key_Bind_fv_20
	mov [esp], eax
	call tolower
	mov [ebp-0x41c], eax
	cmp dword [ebp-0x424], 0x2
	jz _Z10Key_Bind_fv_30
	mov byte [ebp-0x418], 0x0
	jle _Z10Key_Bind_fv_40
	mov eax, [ebp-0x424]
	sub eax, 0x1
	mov [ebp-0x420], eax
	mov ebx, 0x2
	mov esi, 0x8
	cmp dword [ebp-0x424], 0x3
	jnz _Z10Key_Bind_fv_50
	jmp _Z10Key_Bind_fv_60
_Z10Key_Bind_fv_80:
	mov eax, _cstring_null
_Z10Key_Bind_fv_90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	cmp ebx, [ebp-0x420]
	jz _Z10Key_Bind_fv_70
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z9I_strncatPciPKc
_Z10Key_Bind_fv_70:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jz _Z10Key_Bind_fv_40
_Z10Key_Bind_fv_60:
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jge _Z10Key_Bind_fv_80
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
	jmp _Z10Key_Bind_fv_90
_Z10Key_Bind_fv_20:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z10Key_Bind_fv_100
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z10Key_Bind_fv_220:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_isnt_a_valid_k
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
_Z10Key_Bind_fv_110:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Key_Bind_fv_40:
	cmp dword [ebp-0x41c], 0xffffffff
	jz _Z10Key_Bind_fv_110
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov edx, [ebp-0x41c]
	lea eax, [edx+edx*2]
	lea eax, [eax*4+playerKeys+0x12c]
	mov [esp], eax
	call ReplaceStringInternal
	mov eax, dvar_modifiedFlags
	or dword [eax], 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Key_Bind_fv_10:
	mov dword [esp+0x4], _cstring_bind_key_command
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10Key_Bind_fv_160:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
_Z10Key_Bind_fv_170:
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call strchr
	test eax, eax
	jz _Z10Key_Bind_fv_120
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	mov byte [ebp-0x425], 0x1
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jge _Z10Key_Bind_fv_130
_Z10Key_Bind_fv_180:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	cmp byte [ebp-0x425], 0x0
	jnz _Z10Key_Bind_fv_140
_Z10Key_Bind_fv_190:
	cmp ebx, [ebp-0x420]
	jz _Z10Key_Bind_fv_150
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call _Z9I_strncatPciPKc
_Z10Key_Bind_fv_150:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jz _Z10Key_Bind_fv_40
_Z10Key_Bind_fv_50:
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jl _Z10Key_Bind_fv_160
	mov eax, _cstring_null
	jmp _Z10Key_Bind_fv_170
_Z10Key_Bind_fv_120:
	mov byte [ebp-0x425], 0x0
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jl _Z10Key_Bind_fv_180
_Z10Key_Bind_fv_130:
	mov eax, _cstring_null
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z9I_strncatPciPKc
	cmp byte [ebp-0x425], 0x0
	jz _Z10Key_Bind_fv_190
_Z10Key_Bind_fv_140:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call _Z9I_strncatPciPKc
	jmp _Z10Key_Bind_fv_190
_Z10Key_Bind_fv_30:
	lea eax, [eax+eax*2]
	mov edx, [eax*4+playerKeys+0x12c]
	test edx, edx
	jz _Z10Key_Bind_fv_200
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z10Key_Bind_fv_210
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z10Key_Bind_fv_240:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s__s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z10Key_Bind_fv_110
_Z10Key_Bind_fv_100:
	mov eax, _cstring_null
	jmp _Z10Key_Bind_fv_220
_Z10Key_Bind_fv_200:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z10Key_Bind_fv_230
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z10Key_Bind_fv_250:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_bound
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	jmp _Z10Key_Bind_fv_110
_Z10Key_Bind_fv_210:
	mov eax, _cstring_null
	jmp _Z10Key_Bind_fv_240
_Z10Key_Bind_fv_230:
	mov eax, _cstring_null
	jmp _Z10Key_Bind_fv_250


;CL_KeyEvent(int, int, int, unsigned int)
_Z11CL_KeyEventiiij:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*8]
	lea eax, [esi+eax*4]
	lea edx, [eax*8]
	lea eax, [edx+playerKeys+0x124]
	mov [ebp-0x420], eax
	lea eax, [edi+edi*2]
	mov ecx, [ebp-0x420]
	lea ebx, [ecx+eax*4]
	mov eax, [ebp+0x10]
	mov [ebx], eax
	test eax, eax
	jz _Z11CL_KeyEventiiij_10
	mov eax, [ebx+0x4]
	add eax, 0x1
	mov [ebx+0x4], eax
	sub eax, 0x1
	jz _Z11CL_KeyEventiiij_20
_Z11CL_KeyEventiiij_150:
	cmp edi, 0x60
	jz _Z11CL_KeyEventiiij_30
	cmp edi, 0x7e
	jz _Z11CL_KeyEventiiij_30
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jz _Z11CL_KeyEventiiij_40
_Z11CL_KeyEventiiij_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z11CL_KeyEventiiij_50
_Z11CL_KeyEventiiij_210:
	cmp dword [ebx+0x4], 0x1
	jle _Z11CL_KeyEventiiij_50
	mov eax, clientUIActives
	mov eax, [eax+0x4]
	test al, 0x21
	jnz _Z11CL_KeyEventiiij_60
	test al, 0x10
	jz _Z11CL_KeyEventiiij_70
	lea ecx, [edi-0x9a]
	cmp ecx, 0xa
	ja _Z11CL_KeyEventiiij_70
	mov eax, 0x1
	shl eax, cl
	test eax, 0x603
	jz _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_60:
	cmp edi, 0x60
	jz _Z11CL_KeyEventiiij_70
	cmp edi, 0x7e
	jz _Z11CL_KeyEventiiij_70
	cmp edi, 0x1b
	jz _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_50:
	mov eax, con_restricted
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11CL_KeyEventiiij_80
_Z11CL_KeyEventiiij_160:
	cmp edi, 0x7e
	jz _Z11CL_KeyEventiiij_90
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz _Z11CL_KeyEventiiij_100
	cmp edi, 0x60
	jz _Z11CL_KeyEventiiij_90
_Z11CL_KeyEventiiij_100:
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*8]
	lea eax, [esi+eax*4]
	lea eax, [eax*8+playerKeys+0xd24]
	mov [ebp-0x42c], eax
	mov ecx, clientUIActives
	mov edx, [ecx+0x4]
	test dl, 0x8
	jz _Z11CL_KeyEventiiij_110
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z11CL_KeyEventiiij_120
	cmp edi, 0x1b
	jz _Z11CL_KeyEventiiij_130
	mov edx, [ebx+0x8]
	test edx, edx
	jz _Z11CL_KeyEventiiij_70
	mov edi, _cstring_attack
	mov ebx, 0x8
	cld
	mov esi, edx
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z11CL_KeyEventiiij_140
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z11CL_KeyEventiiij_140:
	test edx, edx
	jnz _Z11CL_KeyEventiiij_70
	mov eax, [ebp-0x42c]
	mov dword [eax], 0x1
_Z11CL_KeyEventiiij_70:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11CL_KeyEventiiij_10:
	mov dword [ebx+0x4], 0x0
	mov eax, [edx+playerKeys+0x120]
	sub eax, 0x1
	cmovs eax, [ebp+0x10]
	mov [edx+playerKeys+0x120], eax
	jmp _Z11CL_KeyEventiiij_150
_Z11CL_KeyEventiiij_80:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jnz _Z11CL_KeyEventiiij_160
	cmp edi, 0xa5
	jz _Z11CL_KeyEventiiij_170
	cmp edi, 0x7e
	jz _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_350:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz _Z11CL_KeyEventiiij_100
	cmp edi, 0x60
	jnz _Z11CL_KeyEventiiij_100
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_90:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z11CL_KeyEventiiij_70
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jz _Z11CL_KeyEventiiij_180
_Z11CL_KeyEventiiij_290:
	mov eax, [ebp-0x420]
	mov eax, [eax+0x780]
	test eax, eax
	jz _Z11CL_KeyEventiiij_190
	mov [esp], esi
	call _Z12Con_IsActivei
	test al, al
	jz _Z11CL_KeyEventiiij_200
	call _Z23Con_ToggleConsoleOutputv
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_40:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z11CL_KeyEventiiij_30
	mov dword [esp+0x4], _cstring_devgui
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z11CL_KeyEventiiij_30
	mov edx, [ebp+0x10]
	test edx, edx
	jz _Z11CL_KeyEventiiij_50
	cmp dword [ebx+0x4], 0x1
	jnz _Z11CL_KeyEventiiij_210
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12Cbuf_AddTextiPKc
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_110:
	mov ecx, eax
_Z11CL_KeyEventiiij_490:
	mov dword [ecx], 0x0
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	mov [ebp-0x41c], eax
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz _Z11CL_KeyEventiiij_220
	cmp edi, 0xc8
	jz _Z11CL_KeyEventiiij_230
	cmp edi, 0x7f
	jle _Z11CL_KeyEventiiij_230
_Z11CL_KeyEventiiij_220:
	cmp edi, 0x1b
	jz _Z11CL_KeyEventiiij_240
_Z11CL_KeyEventiiij_430:
	mov ecx, clientUIActives
	cmp byte [ecx+0x2], 0x0
	jnz _Z11CL_KeyEventiiij_250
_Z11CL_KeyEventiiij_360:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz _Z11CL_KeyEventiiij_260
_Z11CL_KeyEventiiij_370:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z11CL_KeyEventiiij_270
	cmp byte [eax], 0x2b
	jz _Z11CL_KeyEventiiij_280
_Z11CL_KeyEventiiij_270:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x10
	jz _Z11CL_KeyEventiiij_70
	mov eax, cls
	mov ecx, [eax+0x110]
	test ecx, ecx
	jz _Z11CL_KeyEventiiij_70
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z11UI_KeyEventiii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_20:
	add dword [edx+playerKeys+0x120], 0x1
	jmp _Z11CL_KeyEventiiij_150
_Z11CL_KeyEventiiij_180:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11CL_KeyEventiiij_290
	mov eax, sv_disableClientConsole
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11CL_KeyEventiiij_70
	jmp _Z11CL_KeyEventiiij_290
_Z11CL_KeyEventiiij_230:
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz _Z11CL_KeyEventiiij_300
	cmp dword [ebp-0x41c], 0x1
	jz _Z11CL_KeyEventiiij_300
	cmp dword [ebp-0x41c], 0x2
	jnz _Z11CL_KeyEventiiij_220
_Z11CL_KeyEventiiij_300:
	test edx, edx
	jnz _Z11CL_KeyEventiiij_220
	mov dword [esp+0x4], _cstring_null
	mov eax, nextdemo
	mov eax, [eax]
	mov [esp], eax
	call _Z14Dvar_SetStringPK6dvar_sPKc
_Z11CL_KeyEventiiij_440:
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	test al, 0x20
	jnz _Z11CL_KeyEventiiij_310
	test al, 0x1
	jnz _Z11CL_KeyEventiiij_320
_Z11CL_KeyEventiiij_500:
	test al, 0x10
	jnz _Z11CL_KeyEventiiij_330
	cmp dword [ebp-0x41c], 0x9
	ja _Z11CL_KeyEventiiij_340
	mov eax, [ebp-0x41c]
	jmp dword [eax*4+_Z11CL_KeyEventiiij_jumptab_0]
_Z11CL_KeyEventiiij_170:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z11CL_KeyEventiiij_350
	mov edx, [ebp-0x420]
	mov eax, [edx+0x5f4]
	test eax, eax
	jz _Z11CL_KeyEventiiij_350
_Z11CL_KeyEventiiij_190:
	call _Z17Con_ToggleConsolev
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11CL_KeyEventiiij_250:
	mov [esp], esi
	call _Z24CG_IsScoreboardDisplayedi
	test eax, eax
	jz _Z11CL_KeyEventiiij_360
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z11CL_KeyEventiiij_370
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z22Scoreboard_HandleInputii
	test al, al
	jnz _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_260:
	mov ecx, clientUIActives
	mov eax, [ecx+0x4]
	test al, 0x1
	jnz _Z11CL_KeyEventiiij_380
	test al, 0x10
	jnz _Z11CL_KeyEventiiij_390
_Z11CL_KeyEventiiij_450:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x20
	jnz _Z11CL_KeyEventiiij_400
	mov eax, [ebp-0x41c]
	test eax, eax
	jz _Z11CL_KeyEventiiij_380
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z11CL_KeyEventiiij_410
	cmp byte [eax], 0x2b
	jz _Z11CL_KeyEventiiij_420
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call _Z12Cbuf_AddTextiPKc
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_240:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z11CL_KeyEventiiij_430
	jmp _Z11CL_KeyEventiiij_440
_Z11CL_KeyEventiiij_200:
	call _Z17Con_ToggleConsolev
	call _Z23Con_ToggleConsoleOutputv
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_390:
	mov [esp], esi
	call _Z16UI_GetActiveMenui
	cmp eax, 0xa
	jz _Z11CL_KeyEventiiij_450
	mov eax, cl_bypassMouseInput
	mov eax, [eax]
	test eax, eax
	jz _Z11CL_KeyEventiiij_460
	cmp byte [eax+0xc], 0x0
	jz _Z11CL_KeyEventiiij_460
	lea eax, [edi-0xc8]
	cmp eax, 0x2
	jbe _Z11CL_KeyEventiiij_450
	mov eax, cls
	mov edx, [eax+0x110]
	test edx, edx
	jnz _Z11CL_KeyEventiiij_470
_Z11CL_KeyEventiiij_510:
	mov ecx, [eax+0x110]
	test ecx, ecx
	jz _Z11CL_KeyEventiiij_70
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z11UI_KeyEventiii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_340:
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_480:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z16UI_SetActiveMenuii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_520:
	mov [esp], esi
	call _Z22CL_StopLogoOrCinematici
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_530:
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz _Z11CL_KeyEventiiij_480
	mov eax, cl_waitingOnServerToLoadMap
	cmp byte [eax+esi], 0x0
	jnz _Z11CL_KeyEventiiij_480
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call _Z16UI_SetActiveMenuii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_130:
	mov edx, [ebp-0x42c]
	mov dword [edx], 0x2
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_120:
	mov ecx, [ebp-0x42c]
	jmp _Z11CL_KeyEventiiij_490
_Z11CL_KeyEventiiij_380:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z11Console_Keyii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_310:
	mov edx, 0x1b
	mov eax, esi
	call _Z11Message_Keyii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_400:
	mov edx, edi
	mov eax, esi
	call _Z11Message_Keyii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_280:
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov [esp+0x10], edi
	add eax, 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i_i
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12Cbuf_AddTextiPKc
	jmp _Z11CL_KeyEventiiij_270
_Z11CL_KeyEventiiij_330:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1b
	mov [esp], esi
	call _Z11UI_KeyEventiii
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_320:
	call _Z22Con_CancelAutoCompletev
	mov ecx, clientUIActives
	mov eax, [ecx+0x4]
	jmp _Z11CL_KeyEventiiij_500
_Z11CL_KeyEventiiij_470:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z15UI_CheckExecKeyii
	test eax, eax
	jz _Z11CL_KeyEventiiij_450
_Z11CL_KeyEventiiij_460:
	mov eax, cls
	jmp _Z11CL_KeyEventiiij_510
_Z11CL_KeyEventiiij_420:
	mov ecx, [ebp+0x14]
	mov [esp+0x14], ecx
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i_i1
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12Cbuf_AddTextiPKc
	jmp _Z11CL_KeyEventiiij_70
_Z11CL_KeyEventiiij_410:
	cmp edi, 0xce
	jle _Z11CL_KeyEventiiij_70
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z18Key_KeynumToStringii
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_unbound_use
	mov dword [esp], 0xe
	call _Z10Com_PrintfiPKcz
	jmp _Z11CL_KeyEventiiij_70
	
	
_Z11CL_KeyEventiiij_jumptab_0:
	dd _Z11CL_KeyEventiiij_340
	dd _Z11CL_KeyEventiiij_520
	dd _Z11CL_KeyEventiiij_520
	dd _Z11CL_KeyEventiiij_70
	dd _Z11CL_KeyEventiiij_70
	dd _Z11CL_KeyEventiiij_70
	dd _Z11CL_KeyEventiiij_340
	dd _Z11CL_KeyEventiiij_340
	dd _Z11CL_KeyEventiiij_340
	dd _Z11CL_KeyEventiiij_530


;Console_Key(int, int)
_Z11Console_Keyii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3ac
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	movzx eax, byte [s_shouldCompleteCmd]
	mov [ebp-0x381], al
	mov byte [s_shouldCompleteCmd], 0x1
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	shl eax, 0x3
	mov edx, [eax+playerKeys+0x8a4]
	mov [ebp-0x380], edx
	mov edx, [eax+playerKeys+0x898]
	mov [ebp-0x37c], edx
	mov eax, [eax+playerKeys+0x88c]
	mov [ebp-0x378], eax
	call GetCurrentEventKeyModifiers
	mov edi, eax
	shr edi, 0x8
	and edi, 0x1
	cmp esi, 0x6c
	jz _Z11Console_Keyii_10
	cmp esi, 0xd
	jz _Z11Console_Keyii_20
	cmp esi, 0xbf
	jz _Z11Console_Keyii_20
	cmp esi, 0x9
	jz _Z11Console_Keyii_30
	cmp esi, 0x9a
	jz _Z11Console_Keyii_40
	cmp esi, 0x9b
	jz _Z11Console_Keyii_50
	cmp esi, 0xce
	jnz _Z11Console_Keyii_60
	mov eax, [ebp-0x380]
	test eax, eax
	jz _Z11Console_Keyii_60
_Z11Console_Keyii_160:
	mov edx, [historyLine]
	mov eax, [nextHistoryLine]
	sub eax, edx
	cmp eax, 0x1f
	jle _Z11Console_Keyii_70
_Z11Console_Keyii_300:
	mov eax, edx
	and eax, 0x8000001f
	js _Z11Console_Keyii_80
_Z11Console_Keyii_460:
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea edx, [edx*8+historyEditLines]
	mov dword [esp+0x8], 0x118
	mov [esp+0x4], edx
	mov dword [esp], g_consoleField
	call memcpy
	mov dword [esp+0x4], g_consoleField
	mov eax, scrPlaceFull
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	mov dword [esp], 0x0
	call _Z28Con_AllowAutoCompleteCyclingh
_Z11Console_Keyii_90:
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Console_Keyii_20:
	call _Z24Con_CommitToAutoCompletev
	test al, al
	jnz _Z11Console_Keyii_90
	mov dword [esp+0x8], g_consoleField+0x18
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	movzx eax, byte [g_consoleField+0x18]
	cmp al, 0x5c
	jz _Z11Console_Keyii_100
	cmp al, 0x2f
	jnz _Z11Console_Keyii_110
_Z11Console_Keyii_100:
	mov dword [esp+0x4], g_consoleField+0x19
_Z11Console_Keyii_450:
	mov [esp], ebx
	call _Z12Cbuf_AddTextiPKc
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call _Z12Cbuf_AddTextiPKc
_Z11Console_Keyii_440:
	cmp byte [g_consoleField+0x18], 0x0
	jz _Z11Console_Keyii_120
	mov ebx, [nextHistoryLine]
	mov eax, ebx
	and eax, 0x8000001f
	js _Z11Console_Keyii_130
_Z11Console_Keyii_510:
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea edx, [edx*8+historyEditLines]
	mov dword [esp+0x8], 0x118
	mov dword [esp+0x4], g_consoleField
	mov [esp], edx
	call memcpy
	lea eax, [ebx+0x1]
	mov [nextHistoryLine], eax
	mov [historyLine], eax
_Z11Console_Keyii_120:
	mov dword [esp], g_consoleField
	call _Z11Field_ClearP7field_t
	mov eax, g_console_field_width
	mov eax, [eax]
	mov [g_consoleField+0xc], eax
	mov eax, g_console_char_height
	mov eax, [eax]
	mov [g_consoleField+0x10], eax
	mov dword [g_consoleField+0x14], 0x1
	call _Z30CL_AllLocalClientsDisconnectedv
	test al, al
	jz _Z11Console_Keyii_90
	call _Z16SCR_UpdateScreenv
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_10:
	mov edx, [ebp-0x37c]
	test edx, edx
	jnz _Z11Console_Keyii_140
_Z11Console_Keyii_60:
	mov [esp], esi
	call tolower
	cmp eax, 0x70
	jz _Z11Console_Keyii_150
_Z11Console_Keyii_310:
	xor eax, eax
_Z11Console_Keyii_320:
	test eax, eax
	jnz _Z11Console_Keyii_160
	cmp esi, 0xcd
	jz _Z11Console_Keyii_170
	cmp esi, 0x9b
	jz _Z11Console_Keyii_180
_Z11Console_Keyii_390:
	mov [esp], esi
	call tolower
	cmp eax, 0x6e
	jz _Z11Console_Keyii_190
_Z11Console_Keyii_410:
	xor eax, eax
_Z11Console_Keyii_420:
	test eax, eax
	jnz _Z11Console_Keyii_200
	cmp esi, 0xa4
	jz _Z11Console_Keyii_210
	cmp esi, 0xa3
	jz _Z11Console_Keyii_220
	cmp esi, 0xce
	jz _Z11Console_Keyii_230
	cmp esi, 0xcd
	jz _Z11Console_Keyii_240
	cmp esi, 0xa5
	jz _Z11Console_Keyii_250
	cmp esi, 0xa6
	jz _Z11Console_Keyii_260
	cmp esi, 0xa2
	jz _Z11Console_Keyii_270
	cmp esi, 0x1b
	jz _Z11Console_Keyii_270
_Z11Console_Keyii_480:
	lea eax, [esi-0x9c]
	cmp eax, 0x1
	jbe _Z11Console_Keyii_280
	cmp esi, 0x7f
	jz _Z11Console_Keyii_290
	mov eax, [ebp-0x37c]
	test eax, eax
	jnz _Z11Console_Keyii_290
	mov eax, [ebp-0x378]
	test eax, eax
	jnz _Z11Console_Keyii_290
	mov eax, [ebp-0x380]
	test eax, eax
	jnz _Z11Console_Keyii_290
	test edi, edi
	jz _Z11Console_Keyii_280
_Z11Console_Keyii_290:
	mov edx, scrPlaceFull
	mov [esp], esi
	mov ecx, g_consoleField
	mov eax, ebx
	call _Z18Field_KeyDownEventiPK15ScreenPlacementP7field_ti
	test al, al
	jz _Z11Console_Keyii_90
	mov dword [esp], 0x1
	call _Z28Con_AllowAutoCompleteCyclingh
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_70:
	test edx, edx
	jle _Z11Console_Keyii_300
	sub edx, 0x1
	mov [historyLine], edx
	jmp _Z11Console_Keyii_300
_Z11Console_Keyii_150:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz _Z11Console_Keyii_310
_Z11Console_Keyii_380:
	mov eax, 0x1
	jmp _Z11Console_Keyii_320
_Z11Console_Keyii_50:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz _Z11Console_Keyii_60
	mov dword [esp], 0x1
	call _Z21Con_CycleAutoCompletei
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_30:
	cmp byte [ebp-0x381], 0x0
	jz _Z11Console_Keyii_330
	movzx eax, byte [g_consoleField+0x18]
	cmp al, 0x2f
	jz _Z11Console_Keyii_340
	cmp al, 0x5c
	jz _Z11Console_Keyii_340
	xor eax, eax
_Z11Console_Keyii_470:
	lea ebx, [eax+g_consoleField+0x18]
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov [esp], ebx
	call strncasecmp
	test eax, eax
	jnz _Z11Console_Keyii_350
	mov dword [esp+0x8], 0xff
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x225]
	mov [esp], ebx
	call strncpy
	mov byte [ebp-0x126], 0x0
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], _cstring_pb_sv_
	mov [esp], ebx
	call strncasecmp
	test eax, eax
	jnz _Z11Console_Keyii_360
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call _Z23PbServerCompleteCommandPci
_Z11Console_Keyii_650:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z11Com_sprintfPciPKcz
	mov edi, g_consoleField+0x18
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [g_consoleField], ecx
	mov dword [esp+0x4], g_consoleField
	mov eax, scrPlaceFull
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	jmp _Z11Console_Keyii_370
_Z11Console_Keyii_40:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz _Z11Console_Keyii_380
	mov dword [esp], 0xffffffff
	call _Z21Con_CycleAutoCompletei
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_140:
	mov dword [esp+0x4], _cstring_clear
	mov [esp], ebx
	call _Z12Cbuf_AddTextiPKc
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_170:
	mov eax, [ebp-0x380]
	test eax, eax
	jz _Z11Console_Keyii_390
_Z11Console_Keyii_200:
	mov dword [esp], 0x1
	call _Z21Con_CycleAutoCompletei
	test al, al
	jnz _Z11Console_Keyii_90
	mov eax, [historyLine]
	cmp eax, [nextHistoryLine]
	jz _Z11Console_Keyii_90
	add eax, 0x1
	mov [historyLine], eax
	and eax, 0x8000001f
	js _Z11Console_Keyii_400
_Z11Console_Keyii_730:
	lea eax, [eax+eax*4]
	lea edx, [eax*8]
	sub edx, eax
	lea edx, [edx*8+historyEditLines]
	mov dword [esp+0x8], 0x118
	mov [esp+0x4], edx
	mov dword [esp], g_consoleField
	call memcpy
	mov dword [esp+0x4], g_consoleField
	mov eax, scrPlaceFull
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_330:
	cmp dword [ebp-0x380], 0x1
	sbb eax, eax
	and eax, 0x2
	sub eax, 0x1
	mov [esp], eax
	call _Z21Con_CycleAutoCompletei
_Z11Console_Keyii_370:
	mov byte [s_shouldCompleteCmd], 0x0
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Console_Keyii_190:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz _Z11Console_Keyii_410
_Z11Console_Keyii_180:
	mov eax, 0x1
	jmp _Z11Console_Keyii_420
_Z11Console_Keyii_110:
	call _Z30CL_AllLocalClientsDisconnectedv
	test al, al
	jnz _Z11Console_Keyii_430
_Z11Console_Keyii_490:
	cmp byte [g_consoleField+0x18], 0x0
	jz _Z11Console_Keyii_90
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_rcon
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncmpPKcS0_i
	test eax, eax
	jz _Z11Console_Keyii_440
	mov dword [esp+0x4], _cstring_cmd_say_
	mov [esp], ebx
	call _Z12Cbuf_AddTextiPKc
_Z11Console_Keyii_500:
	mov dword [esp+0x4], g_consoleField+0x18
	jmp _Z11Console_Keyii_450
_Z11Console_Keyii_80:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp _Z11Console_Keyii_460
_Z11Console_Keyii_340:
	mov eax, 0x1
	jmp _Z11Console_Keyii_470
_Z11Console_Keyii_250:
	mov edx, [ebp-0x37c]
	test edx, edx
	jz _Z11Console_Keyii_480
	call _Z7Con_Topv
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_430:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_quit
	mov dword [esp], g_consoleField+0x18
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z11Console_Keyii_490
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_kill
	mov dword [esp], g_consoleField+0x18
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jz _Z11Console_Keyii_490
	jmp _Z11Console_Keyii_500
_Z11Console_Keyii_130:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp _Z11Console_Keyii_510
_Z11Console_Keyii_280:
	call _Z24Con_CommitToAutoCompletev
	jmp _Z11Console_Keyii_290
_Z11Console_Keyii_350:
	call _Z17Con_TokenizeInputv
	mov esi, eax
	mov [s_completionString], eax
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [eax], 0x0
	jz _Z11Console_Keyii_520
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Console_Keyii_530
	mov [esp], esi
	call _Z17Con_IsDvarCommandPKc
	test al, al
	jnz _Z11Console_Keyii_540
_Z11Console_Keyii_530:
	mov byte [ebp-0x372], 0x0
	mov byte [ebp-0x351], 0x0
_Z11Console_Keyii_1040:
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz _Z11Console_Keyii_550
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x0
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x351], 0x0
	jz _Z11Console_Keyii_560
_Z11Console_Keyii_700:
	mov dword [ebp-0x370], 0x0
_Z11Console_Keyii_710:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, s_shortestMatch
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x36c], ecx
	mov edx, [s_matchCount]
_Z11Console_Keyii_670:
	mov ebx, edx
	test edx, edx
	jz _Z11Console_Keyii_520
_Z11Console_Keyii_690:
	lea eax, [ebp-0x340]
	mov dword [esp+0x8], 0x118
	mov dword [esp+0x4], g_consoleField
	mov [esp], eax
	call memcpy
	cmp byte [ebp-0x372], 0x0
	jnz _Z11Console_Keyii_570
	sub ebx, 0x1
	jz _Z11Console_Keyii_580
	cmp byte [s_hasExactMatch], 0x0
	jnz _Z11Console_Keyii_590
_Z11Console_Keyii_860:
	mov byte [ebp-0x371], 0x0
_Z11Console_Keyii_870:
	mov dword [esp+0xc], s_shortestMatch
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z11Com_sprintfPciPKcz
_Z11Console_Keyii_720:
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, g_consoleField+0x18
	mov eax, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [g_consoleField], ecx
	mov ebx, [s_completionString]
	lea eax, [ebp-0x328]
	mov [esp+0x4], ebx
	mov [esp], eax
	call strstr
	mov edx, eax
	test eax, eax
	jz _Z11Console_Keyii_600
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
_Z11Console_Keyii_740:
	cmp byte [ebp-0x371], 0x0
	jz _Z11Console_Keyii_610
	cmp byte [ebp-0x372], 0x0
	jnz _Z11Console_Keyii_620
	mov ebx, cmd_args
	mov eax, [ebx]
	mov eax, [ebx+eax*4+0x44]
	cmp eax, 0x1
	jz _Z11Console_Keyii_630
	cmp eax, 0x2
	jz _Z11Console_Keyii_640
_Z11Console_Keyii_620:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [g_consoleField], ecx
_Z11Console_Keyii_840:
	call _Z22Cmd_EndTokenizedStringv
	mov dword [esp+0x4], g_consoleField
	mov eax, scrPlaceFull
	mov [esp], eax
	call _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t
	jmp _Z11Console_Keyii_370
_Z11Console_Keyii_230:
	call _Z10Con_PageUpv
	mov ebx, [ebp-0x37c]
	test ebx, ebx
	jz _Z11Console_Keyii_90
	call _Z10Con_PageUpv
_Z11Console_Keyii_210:
	call _Z10Con_PageUpv
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_240:
	call _Z12Con_PageDownv
	mov ecx, [ebp-0x37c]
	test ecx, ecx
	jz _Z11Console_Keyii_90
	call _Z12Con_PageDownv
_Z11Console_Keyii_220:
	call _Z12Con_PageDownv
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_360:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call _Z23PbClientCompleteCommandPci
	jmp _Z11Console_Keyii_650
_Z11Console_Keyii_520:
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z11Console_Keyii_370
_Z11Console_Keyii_260:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz _Z11Console_Keyii_480
	call _Z10Con_Bottomv
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_270:
	call _Z22Con_CancelAutoCompletev
	test al, al
	jz _Z11Console_Keyii_290
	jmp _Z11Console_Keyii_90
_Z11Console_Keyii_550:
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x1
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	movzx edx, byte [ebp-0x351]
	xor dl, 0x1
	mov [ebp-0x365], dl
	jnz _Z11Console_Keyii_660
	mov dword [ebp-0x370], 0x0
_Z11Console_Keyii_850:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	mov ebx, 0xffffffff
	cld
	mov ecx, ebx
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x36c], ecx
	mov edx, [s_matchCount]
	mov eax, con_inputMaxMatchesShown
	cmp edx, [eax]
	jle _Z11Console_Keyii_670
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x0
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x365], 0x0
	jnz _Z11Console_Keyii_680
	mov dword [ebp-0x370], 0x0
_Z11Console_Keyii_890:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x36c], ecx
	mov ebx, [s_matchCount]
	test ebx, ebx
	jnz _Z11Console_Keyii_690
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x1
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x365], 0x0
	jz _Z11Console_Keyii_700
	mov dword [esp], _Z11FindMatchesPKc
	call _Z11Cmd_ForEachPFvPKcE
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp _Z11Console_Keyii_710
_Z11Console_Keyii_570:
	mov dword [esp+0x10], s_shortestMatch
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z11Com_sprintfPciPKcz
	mov byte [ebp-0x371], 0x1
	jmp _Z11Console_Keyii_720
_Z11Console_Keyii_400:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp _Z11Console_Keyii_730
_Z11Console_Keyii_600:
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle _Z11Console_Keyii_740
	mov esi, 0x1
	mov edi, 0x4
_Z11Console_Keyii_810:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
	mov edx, cmd_args
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl _Z11Console_Keyii_750
	mov ebx, _cstring_null
_Z11Console_Keyii_820:
	movzx eax, byte [ebx]
	test al, al
	jz _Z11Console_Keyii_760
_Z11Console_Keyii_780:
	cmp al, 0x20
	jz _Z11Console_Keyii_770
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz _Z11Console_Keyii_780
_Z11Console_Keyii_760:
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl _Z11Console_Keyii_790
	mov eax, _cstring_null
_Z11Console_Keyii_830:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
	cmp byte [ebx], 0x20
	jz _Z11Console_Keyii_800
_Z11Console_Keyii_880:
	add esi, 0x1
	add edi, 0x4
	mov edx, cmd_args
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl _Z11Console_Keyii_810
	jmp _Z11Console_Keyii_740
_Z11Console_Keyii_750:
	mov eax, [edx+eax*4+0x64]
	mov ebx, [eax+edi]
	jmp _Z11Console_Keyii_820
_Z11Console_Keyii_790:
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+edi]
	jmp _Z11Console_Keyii_830
_Z11Console_Keyii_770:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
	mov edx, cmd_args
	jmp _Z11Console_Keyii_760
_Z11Console_Keyii_610:
	call _Z27Con_HasTooManyMatchesToShowv
	test al, al
	jz _Z11Console_Keyii_840
	mov dword [esp+0x8], g_consoleField+0x18
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	mov dword [esp], _Z12PrintMatchesPKc
	call _Z11Cmd_ForEachPFvPKcE
	mov dword [esp], _Z12PrintMatchesPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	jmp _Z11Console_Keyii_840
_Z11Console_Keyii_660:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z11Cmd_ForEachPFvPKcE
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	movzx eax, byte [ebp-0x351]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp _Z11Console_Keyii_850
_Z11Console_Keyii_560:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z11Cmd_ForEachPFvPKcE
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	movzx eax, byte [ebp-0x351]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp _Z11Console_Keyii_710
_Z11Console_Keyii_590:
	call _Z24Con_AnySpaceAfterCommandv
	test al, al
	jz _Z11Console_Keyii_860
_Z11Console_Keyii_580:
	mov byte [ebp-0x371], 0x1
	jmp _Z11Console_Keyii_870
_Z11Console_Keyii_800:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
	jmp _Z11Console_Keyii_880
_Z11Console_Keyii_680:
	mov dword [esp], _Z11FindMatchesPKc
	call _Z11Cmd_ForEachPFvPKcE
	cld
	mov ecx, ebx
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp _Z11Console_Keyii_890
_Z11Console_Keyii_640:
	mov edx, [ebp-0x36c]
	cmp [ebp-0x370], edx
	jz _Z11Console_Keyii_900
	call _Z17Con_TokenizeInputv
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	mov edx, eax
	cmp byte [eax+0xa], 0x6
	jnz _Z11Console_Keyii_910
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Console_Keyii_920
	mov eax, [ebx+eax*4+0x64]
	mov ebx, [eax+0x4]
_Z11Console_Keyii_970:
	cmp byte [ebx], 0x0
	jnz _Z11Console_Keyii_930
_Z11Console_Keyii_910:
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z11Console_Keyii_620
_Z11Console_Keyii_930:
	mov dword [esp+0x10], 0x100
	lea eax, [ebp-0x11c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [edx+0x3c]
	mov [esp+0x4], eax
	mov eax, [edx+0x40]
	mov [esp], eax
	call _Z24Con_AutoCompleteFromListPPKcjS0_Pcj
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x35c], ecx
	cmp byte [ebp-0x11c], 0x0
	jz _Z11Console_Keyii_910
	mov ecx, edx
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	mov edx, ecx
	sub edx, 0x1
	mov [ebp-0x358], edx
	jnz _Z11Console_Keyii_940
	xor ebx, ebx
_Z11Console_Keyii_1060:
	mov edx, ebx
	sub edx, [ebp-0x35c]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	add edx, g_consoleField+0x18
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z11Console_Keyii_620
_Z11Console_Keyii_630:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call _Z9I_strncatPciPKc
	jmp _Z11Console_Keyii_620
_Z11Console_Keyii_900:
	call _Z17Con_TokenizeInputv
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z11Console_Keyii_950
	mov eax, [ebx+eax*4+0x64]
	mov esi, [eax+0x4]
_Z11Console_Keyii_980:
	cmp byte [esi], 0x0
	jz _Z11Console_Keyii_910
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z27Cmd_GetAutoCompleteFileListPKcPii
	mov ebx, eax
	call _Z22Cmd_EndTokenizedStringv
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z11Console_Keyii_620
	mov dword [esp+0x10], 0x100
	lea edx, [ebp-0x11c]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z24Con_AutoCompleteFromListPPKcjS0_Pcj
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call FS_FreeFileList
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], eax
	call _Z18Com_StripExtensionPKcPc
	mov edx, 0xffffffff
	xor eax, eax
	cld
	mov ecx, edx
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x364], ecx
	cmp byte [ebp-0x11c], 0x0
	jz _Z11Console_Keyii_620
	mov ecx, edx
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x1
	mov [ebp-0x360], eax
	jnz _Z11Console_Keyii_960
	xor ebx, ebx
_Z11Console_Keyii_1000:
	mov edx, ebx
	sub edx, [ebp-0x364]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	add edx, g_consoleField+0x18
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	jmp _Z11Console_Keyii_620
_Z11Console_Keyii_920:
	mov ebx, _cstring_null
	jmp _Z11Console_Keyii_970
_Z11Console_Keyii_950:
	mov esi, _cstring_null
	jmp _Z11Console_Keyii_980
_Z11Console_Keyii_960:
	lea eax, [ecx+0xf]
	lea esi, [eax+g_consoleField+0x8]
	mov ebx, [ebp-0x360]
	mov dword [ebp-0x350], 0x0
	sub ecx, eax
	add ecx, 0xe
	mov [ebp-0x388], ecx
_Z11Console_Keyii_1020:
	lea edi, [ebx-0x1]
	mov edx, [ebp-0x388]
	movsx eax, byte [edx+esi]
	test eax, 0xffffff80
	jnz _Z11Console_Keyii_990
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z11Console_Keyii_1110:
	test eax, eax
	jz _Z11Console_Keyii_1000
	add dword [ebp-0x350], 0x1
	sub esi, 0x1
	mov edx, [ebp-0x350]
	cmp [ebp-0x360], edx
	jz _Z11Console_Keyii_1010
	mov ebx, edi
	jmp _Z11Console_Keyii_1020
_Z11Console_Keyii_540:
	mov byte [ebp-0x372], 0x1
	mov byte [ebp-0x351], 0x1
	mov edx, [ebx]
	cmp dword [ebx+edx*4+0x44], 0x1
	jle _Z11Console_Keyii_1030
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x4]
_Z11Console_Keyii_1100:
	mov [s_completionString], eax
	jmp _Z11Console_Keyii_1040
_Z11Console_Keyii_940:
	lea eax, [ecx+0xf]
	lea esi, [eax+g_consoleField+0x8]
	mov ebx, [ebp-0x358]
	mov dword [ebp-0x34c], 0x0
	sub ecx, eax
	add ecx, 0xe
	mov [ebp-0x38c], ecx
	jmp _Z11Console_Keyii_1050
_Z11Console_Keyii_1080:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z11Console_Keyii_1090:
	test eax, eax
	jz _Z11Console_Keyii_1060
	add dword [ebp-0x34c], 0x1
	sub esi, 0x1
	mov eax, [ebp-0x34c]
	cmp [ebp-0x358], eax
	jz _Z11Console_Keyii_1070
	mov ebx, edi
_Z11Console_Keyii_1050:
	lea edi, [ebx-0x1]
	mov edx, [ebp-0x38c]
	movsx eax, byte [edx+esi]
	test eax, 0xffffff80
	jz _Z11Console_Keyii_1080
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z11Console_Keyii_1090
_Z11Console_Keyii_1030:
	mov eax, _cstring_null
	jmp _Z11Console_Keyii_1100
_Z11Console_Keyii_1070:
	mov ebx, edi
	jmp _Z11Console_Keyii_1060
_Z11Console_Keyii_1010:
	mov ebx, edi
	jmp _Z11Console_Keyii_1000
_Z11Console_Keyii_990:
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z11Console_Keyii_1110
	nop


;CL_CharEvent(int, int)
_Z12CL_CharEventii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp ebx, 0x7e
	jz _Z12CL_CharEventii_10
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz _Z12CL_CharEventii_20
	cmp ebx, 0x60
	jz _Z12CL_CharEventii_10
_Z12CL_CharEventii_20:
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	test al, 0x1
	jnz _Z12CL_CharEventii_30
	test al, 0x20
	jnz _Z12CL_CharEventii_40
	test al, 0x10
	jnz _Z12CL_CharEventii_50
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z12CL_CharEventii_60
_Z12CL_CharEventii_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z12CL_CharEventii_30:
	cmp ebx, 0x8
	jz _Z12CL_CharEventii_70
_Z12CL_CharEventii_60:
	mov edx, scrPlaceFull
	mov [esp], ebx
	mov ecx, g_consoleField
	mov eax, esi
	call _Z15Field_CharEventiPK15ScreenPlacementP7field_ti
	test al, al
	jz _Z12CL_CharEventii_10
	mov dword [ebp+0x8], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z28Con_AllowAutoCompleteCyclingh
_Z12CL_CharEventii_50:
	mov dword [esp+0x8], 0x1
	or bh, 0x4
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z11UI_KeyEventiii
	jmp _Z12CL_CharEventii_10
_Z12CL_CharEventii_40:
	lea ecx, [esi+esi*2]
	lea ecx, [esi+ecx*4]
	lea ecx, [esi+ecx*8]
	lea ecx, [esi+ecx*4]
	lea ecx, [ecx*8+playerKeys]
	mov eax, esi
	shl eax, 0x6
	lea edx, [eax+esi*4]
	add edx, scrPlaceView
	mov [esp], ebx
	mov eax, esi
	call _Z15Field_CharEventiPK15ScreenPlacementP7field_ti
	jmp _Z12CL_CharEventii_10
_Z12CL_CharEventii_70:
	call _Z22Con_CancelAutoCompletev
	test al, al
	jz _Z12CL_CharEventii_60
	jmp _Z12CL_CharEventii_10
	nop


;Key_Shutdown()
_Z12Key_Shutdownv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, playerKeys
	mov esi, playerKeys+0xc00
_Z12Key_Shutdownv_20:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz _Z12Key_Shutdownv_10
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x12c], 0x0
_Z12Key_Shutdownv_10:
	add ebx, 0xc
	cmp esi, ebx
	jnz _Z12Key_Shutdownv_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Key_Unbind_f()
_Z12Key_Unbind_fv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jz _Z12Key_Unbind_fv_10
	mov dword [esp+0x4], _cstring_unbind_key__remo
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12Key_Unbind_fv_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	call _Z18Key_StringToKeynumPKc
	cmp eax, 0xffffffff
	jnz _Z12Key_Unbind_fv_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle _Z12Key_Unbind_fv_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
_Z12Key_Unbind_fv_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_isnt_a_valid_k
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12Key_Unbind_fv_20:
	mov dword [esp+0x4], _cstring_null
	lea eax, [eax+eax*2]
	lea eax, [eax*4+playerKeys+0x12c]
	mov [esp], eax
	call ReplaceStringInternal
	mov eax, dvar_modifiedFlags
	or dword [eax], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z12Key_Unbind_fv_30:
	mov eax, _cstring_null
	jmp _Z12Key_Unbind_fv_40


;Key_AddCatcher(int, int)
_Z14Key_AddCatcherii:
	push ebp
	mov ebp, esp
	mov edx, clientUIActives
	mov eax, [ebp+0xc]
	or [edx+0x4], eax
	pop ebp
	ret
	nop


;Key_Bindlist_f()
_Z14Key_Bindlist_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov edi, playerKeys
	jmp _Z14Key_Bindlist_fv_10
_Z14Key_Bindlist_fv_30:
	add esi, 0x1
	add edi, 0xc
	cmp esi, 0x100
	jz _Z14Key_Bindlist_fv_20
_Z14Key_Bindlist_fv_10:
	mov ebx, [edi+0x12c]
	test ebx, ebx
	jz _Z14Key_Bindlist_fv_30
	cmp byte [ebx], 0x0
	jz _Z14Key_Bindlist_fv_30
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z18Key_KeynumToStringii
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s1
	mov dword [esp], 0x0
	call _Z10Com_PrintfiPKcz
	add esi, 0x1
	add edi, 0xc
	cmp esi, 0x100
	jnz _Z14Key_Bindlist_fv_10
_Z14Key_Bindlist_fv_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Key_GetBinding(int, int)
_Z14Key_GetBindingii:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov ecx, [ebp+0xc]
	lea ecx, [ecx+ecx*2]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	mov eax, [eax+ecx*4+playerKeys+0x12c]
	pop ebp
	ret


;Key_SetBinding(int, int, char const*)
_Z14Key_SetBindingiiPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp eax, 0xffffffff
	jz _Z14Key_SetBindingiiPKc_10
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	lea edx, [eax+eax*2]
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	lea eax, [ecx+eax*8]
	lea eax, [ecx+eax*4]
	shl eax, 0x3
	lea edx, [eax+edx*4+playerKeys+0x12c]
	mov [esp], edx
	call ReplaceStringInternal
	mov eax, dvar_modifiedFlags
	or dword [eax], 0x1
_Z14Key_SetBindingiiPKc_10:
	leave
	ret
	nop


;Key_SetCatcher(int, int)
_Z14Key_SetCatcherii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, clientUIActives
	test byte [edx+0x4], 0x1
	jz _Z14Key_SetCatcherii_10
	or eax, 0x1
	mov [edx+0x4], eax
_Z14Key_SetCatcherii_30:
	test byte [edx+0x4], 0x10
	jnz _Z14Key_SetCatcherii_20
	mov byte [edx+0x8], 0x0
_Z14Key_SetCatcherii_20:
	pop ebp
	ret
_Z14Key_SetCatcherii_10:
	mov [edx+0x4], eax
	jmp _Z14Key_SetCatcherii_30
	nop


;Key_ClearStates(int)
_Z15Key_ClearStatesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*2]
	lea eax, [edi+eax*4]
	lea eax, [edi+eax*8]
	lea eax, [edi+eax*4]
	shl eax, 0x3
	mov dword [eax+playerKeys+0x120], 0x0
	lea ebx, [eax+playerKeys+0x124]
	xor esi, esi
	jmp _Z15Key_ClearStatesi_10
_Z15Key_ClearStatesi_30:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz _Z15Key_ClearStatesi_20
_Z15Key_ClearStatesi_10:
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z15Key_ClearStatesi_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edi
	call _Z11CL_KeyEventiiij
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jnz _Z15Key_ClearStatesi_10
_Z15Key_ClearStatesi_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Key_Unbindall_f()
_Z15Key_Unbindall_fv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, playerKeys+0x124
	xor ebx, ebx
	mov edi, playerKeys+0x12c
_Z15Key_Unbindall_fv_20:
	mov eax, [esi+0x8]
	test eax, eax
	jz _Z15Key_Unbindall_fv_10
	cmp ebx, 0xffffffff
	jz _Z15Key_Unbindall_fv_10
	mov dword [esp+0x4], _cstring_null
	mov [esp], edi
	call ReplaceStringInternal
	mov eax, dvar_modifiedFlags
	or dword [eax], 0x1
_Z15Key_Unbindall_fv_10:
	add ebx, 0x1
	add edi, 0xc
	add esi, 0xc
	cmp ebx, 0x100
	jnz _Z15Key_Unbindall_fv_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CL_GetKeyBinding(int, char const*, char (*) [128])
_Z16CL_GetKeyBindingiPKcPA128_c:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x10]
	sub eax, 0xffffff80
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x10]
	mov byte [eax+0x80], 0x0
	mov dword [ebp-0x1c], 0xffffffff
	mov dword [ebp-0x20], 0xffffffff
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea ebx, [eax*8+playerKeys]
	xor edi, edi
	xor esi, esi
	jmp _Z16CL_GetKeyBindingiPKcPA128_c_10
_Z16CL_GetKeyBindingiPKcPA128_c_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz _Z16CL_GetKeyBindingiPKcPA128_c_20
_Z16CL_GetKeyBindingiPKcPA128_c_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz _Z16CL_GetKeyBindingiPKcPA128_c_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16CL_GetKeyBindingiPKcPA128_c_30
	mov [ebp+edi*4-0x20], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz _Z16CL_GetKeyBindingiPKcPA128_c_30
_Z16CL_GetKeyBindingiPKcPA128_c_50:
	mov dword [esp+0x8], 0x80
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z21Key_KeynumToStringBufiPci
	cmp edi, 0x2
	jz _Z16CL_GetKeyBindingiPKcPA128_c_40
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_GetKeyBindingiPKcPA128_c_40:
	mov dword [esp+0x8], 0x80
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21Key_KeynumToStringBufiPci
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16CL_GetKeyBindingiPKcPA128_c_20:
	test edi, edi
	jnz _Z16CL_GetKeyBindingiPKcPA128_c_50
	mov eax, [ebp+0x10]
	mov dword [eax], 0x5f59454b
	mov dword [eax+0x4], 0x4f424e55
	mov dword [eax+0x8], 0x444e55
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Key_RemoveCatcher(int, int)
_Z17Key_RemoveCatcherii:
	push ebp
	mov ebp, esp
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	and eax, [ebp+0xc]
	mov [edx+0x4], eax
	test al, 0x10
	jnz _Z17Key_RemoveCatcherii_10
	mov byte [edx+0x8], 0x0
_Z17Key_RemoveCatcherii_10:
	pop ebp
	ret


;Key_WriteBindings(int, int)
_Z17Key_WriteBindingsii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x201c
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea ebx, [eax*8+playerKeys+0x124]
	xor edi, edi
	xor esi, esi
	jmp _Z17Key_WriteBindingsii_10
_Z17Key_WriteBindingsii_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz _Z17Key_WriteBindingsii_20
_Z17Key_WriteBindingsii_10:
	mov eax, [ebx+0x8]
	test eax, eax
	jz _Z17Key_WriteBindingsii_30
	cmp byte [eax], 0x0
	jz _Z17Key_WriteBindingsii_30
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z18Key_KeynumToStringii
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_bind_s_
	mov eax, 0x1ffc
	sub eax, edi
	mov [esp+0x4], eax
	lea eax, [ebp-0x2018]
	add eax, edi
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	js _Z17Key_WriteBindingsii_40
	add eax, edi
	mov ecx, [ebx+0x8]
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z17Key_WriteBindingsii_50
_Z17Key_WriteBindingsii_70:
	cmp eax, 0x1ffb
	jg _Z17Key_WriteBindingsii_50
	cmp dl, 0x22
	jz _Z17Key_WriteBindingsii_60
_Z17Key_WriteBindingsii_80:
	mov [ebp+eax-0x2018], dl
	add eax, 0x1
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jnz _Z17Key_WriteBindingsii_70
_Z17Key_WriteBindingsii_50:
	mov byte [ebp+eax-0x2018], 0x22
	mov byte [ebp+eax-0x2017], 0xa
	lea edi, [eax+0x2]
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jnz _Z17Key_WriteBindingsii_10
_Z17Key_WriteBindingsii_20:
	mov byte [ebp+edi-0x2018], 0x0
_Z17Key_WriteBindingsii_40:
	lea eax, [ebp-0x2018]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z9FS_PrintfiPKcz
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Key_WriteBindingsii_60:
	mov byte [ebp+eax-0x2018], 0x5c
	add eax, 0x1
	movzx edx, byte [ecx]
	jmp _Z17Key_WriteBindingsii_80


;CL_InitKeyCommands()
_Z18CL_InitKeyCommandsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE14Key_Bind_f_VAR
	mov dword [esp+0x4], _Z10Key_Bind_fv
	mov dword [esp], _cstring_bind
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE16Key_Unbind_f_VAR
	mov dword [esp+0x4], _Z12Key_Unbind_fv
	mov dword [esp], _cstring_unbind
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE19Key_Unbindall_f_VAR
	mov dword [esp+0x4], _Z15Key_Unbindall_fv
	mov dword [esp], _cstring_unbindall
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE18Key_Bindlist_f_VAR
	mov dword [esp+0x4], _Z14Key_Bindlist_fv
	mov dword [esp], _cstring_bindlist
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	leave
	ret
	add [eax], al


;Field_AdjustScroll(ScreenPlacement const*, field_t*)
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	movss xmm0, dword [edx+0x10]
	divss xmm0, dword [_float_48_00000000]
	cvtsi2ss xmm1, dword [edx+0xc]
	movss [ebp-0x1c], xmm1
	mov edx, [edx+0x14]
	test edx, edx
	jz _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_10
	mulss xmm0, [eax+0x10]
	mulss xmm1, [eax+0x14]
	movss [ebp-0x1c], xmm1
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [ebp-0x3c], eax
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_140:
	movss [esp+0x4], xmm0
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
	fstp dword [ebp-0x20]
	mov esi, [ebp+0xc]
	add esi, 0x18
	mov edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_20
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_30
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	mov eax, ebx
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_60:
	test ebx, ebx
	jle _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	lea eax, [esi+eax-0x1]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	ucomiss xmm0, [ebp-0x1c]
	jae _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_50
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov ebx, eax
	mov [edx+0x4], eax
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_60
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40:
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	lea eax, [esi+ebx]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	mov ebx, eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov eax, esi
	mov edx, [ebp+0xc]
	add eax, [edx]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm1, ebx
	mulss xmm1, [ebp-0x20]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_70
	ucomiss xmm1, [ebp-0x1c]
	jb _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_80
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
	add ebx, 0x1
	mov [edx+0x4], ebx
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_30:
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_70:
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_90
	sub ebx, 0x1
	mov [eax+0x4], ebx
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_90:
	ucomiss xmm0, [ebp-0x1c]
	jae _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
	mov edx, [ebp+0xc]
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_100
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_80:
	mov edi, [ebp+0xc]
	mov ebx, [edi+0x4]
	mov edx, edi
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_100:
	lea edi, [esi+ebx]
	mov [ebp-0x28], edi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x24], ecx
	mov eax, [edx]
	sub eax, ebx
	mov [edx+0x8], eax
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	jbe _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_110
	cmp [ebp-0x24], eax
	jg _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_120
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_110:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_130:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	add eax, 0x1
	mov [edx+0x8], eax
	ucomiss xmm1, xmm0
	jbe _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_110
	cmp eax, [ebp-0x24]
	jge _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_110
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_120:
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	add eax, 0x1
	mov [esp+0x4], eax
	lea eax, [esi+ebx]
	mov [esp], eax
	call _Z11R_TextWidthPKciP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_130
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_20:
	mov eax, [ebp+0xc]
	mov dword [eax+0x4], 0x0
	mov [esp], esi
	call _Z15SEH_PrintStrlenPKc
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_10:
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	movss [ebp-0x38], xmm0
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebp-0x38]
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_140
_Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_50:
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	jmp _Z18Field_AdjustScrollPK15ScreenPlacementP7field_t_40
	nop


;Key_IsCommandBound(int, char const*)
_Z18Key_IsCommandBoundiPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [ebp+0x8]
	mov dword [ebp-0x1c], 0xffffffff
	mov dword [ebp-0x20], 0xffffffff
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea ebx, [eax*8+playerKeys]
	xor edi, edi
	xor esi, esi
	jmp _Z18Key_IsCommandBoundiPKc_10
_Z18Key_IsCommandBoundiPKc_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz _Z18Key_IsCommandBoundiPKc_20
_Z18Key_IsCommandBoundiPKc_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz _Z18Key_IsCommandBoundiPKc_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z18Key_IsCommandBoundiPKc_30
	mov [ebp+edi*4-0x20], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz _Z18Key_IsCommandBoundiPKc_30
_Z18Key_IsCommandBoundiPKc_20:
	xor eax, eax
	test edi, edi
	setg al
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Key_KeynumToString(int, int)
_Z18Key_KeynumToStringii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp ebx, 0xffffffff
	jz _Z18Key_KeynumToStringii_10
	cmp ebx, 0xff
	ja _Z18Key_KeynumToStringii_20
	test esi, esi
	jnz _Z18Key_KeynumToStringii_30
_Z18Key_KeynumToStringii_120:
	lea eax, [ebx-0x21]
	cmp eax, 0x5d
	ja _Z18Key_KeynumToStringii_40
	cmp ebx, 0x22
	jz _Z18Key_KeynumToStringii_40
	mov [esp], ebx
	call __toupper
	mov [_ZZ18Key_KeynumToStringiiE7tinystr], al
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x1], 0x0
	cmp ebx, 0x3b
	jz _Z18Key_KeynumToStringii_50
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
_Z18Key_KeynumToStringii_80:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Key_KeynumToStringii_40:
	test esi, esi
	jnz _Z18Key_KeynumToStringii_60
_Z18Key_KeynumToStringii_130:
	mov eax, keynames
_Z18Key_KeynumToStringii_100:
	mov ecx, [eax]
	test ecx, ecx
	jz _Z18Key_KeynumToStringii_70
	cmp ebx, [eax+0x4]
	jz _Z18Key_KeynumToStringii_80
	lea edx, [eax+0x8]
_Z18Key_KeynumToStringii_90:
	mov ecx, [edx]
	test ecx, ecx
	jz _Z18Key_KeynumToStringii_70
	mov eax, [edx+0x4]
	add edx, 0x8
	cmp ebx, eax
	jnz _Z18Key_KeynumToStringii_90
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Key_KeynumToStringii_20:
	mov ecx, _cstring_out_of_range
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Key_KeynumToStringii_60:
	mov eax, keynames_localized
	jmp _Z18Key_KeynumToStringii_100
_Z18Key_KeynumToStringii_30:
	call _Z22SEH_GetCurrentLanguagev
	sub eax, 0x1
	jz _Z18Key_KeynumToStringii_110
_Z18Key_KeynumToStringii_180:
	call _Z22SEH_GetCurrentLanguagev
	sub eax, 0x1
	jnz _Z18Key_KeynumToStringii_120
	cmp ebx, 0x82
	jnz _Z18Key_KeynumToStringii_120
	mov ecx, [frenchNumberKeysMap+0x18]
	jmp _Z18Key_KeynumToStringii_80
_Z18Key_KeynumToStringii_50:
	test esi, esi
	jz _Z18Key_KeynumToStringii_130
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
	jmp _Z18Key_KeynumToStringii_80
_Z18Key_KeynumToStringii_10:
	mov ecx, _cstring_key_not_found
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Key_KeynumToStringii_70:
	mov edx, ebx
	sar edx, 0x4
	mov eax, ebx
	and eax, 0xf
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr], 0x30
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x1], 0x78
	cmp edx, 0x9
	jle _Z18Key_KeynumToStringii_140
	add dl, 0x57
_Z18Key_KeynumToStringii_160:
	mov [_ZZ18Key_KeynumToStringiiE7tinystr+0x2], dl
	cmp eax, 0x9
	jle _Z18Key_KeynumToStringii_150
	add al, 0x57
_Z18Key_KeynumToStringii_170:
	mov [_ZZ18Key_KeynumToStringiiE7tinystr+0x3], al
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x4], 0x0
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18Key_KeynumToStringii_140:
	add dl, 0x30
	jmp _Z18Key_KeynumToStringii_160
_Z18Key_KeynumToStringii_150:
	add al, 0x30
	jmp _Z18Key_KeynumToStringii_170
_Z18Key_KeynumToStringii_110:
	cmp ebx, 0x2f
	jle _Z18Key_KeynumToStringii_180
	cmp ebx, 0x39
	jg _Z18Key_KeynumToStringii_180
	mov ecx, [ebx*4+snd_drawInfoStrings+0xc]
	jmp _Z18Key_KeynumToStringii_80
	nop


;Key_IsCatcherActive(int, int)
_Z19Key_IsCatcherActiveii:
	push ebp
	mov ebp, esp
	mov eax, clientUIActives
	mov eax, [eax+0x4]
	test [ebp+0xc], eax
	setnz al
	movzx eax, al
	pop ebp
	ret


;Key_GetOverstrikeMode(int)
_Z21Key_GetOverstrikeModei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov eax, [edx*8+playerKeys+0x11c]
	pop ebp
	ret
	nop


;Key_SetOverstrikeMode(int, int)
_Z21Key_SetOverstrikeModeii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*8]
	lea edx, [eax+edx*4]
	mov eax, [ebp+0xc]
	mov [edx*8+playerKeys+0x11c], eax
	pop ebp
	ret


;Field_DrawTextOverride(int, field_t const*, int, int, int, int, char const*, int, int)
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, ebx
	shl eax, 0x6
	lea esi, [eax+ebx*4]
	add esi, scrPlaceView
	mov edi, [edx+0x14]
	test edi, edi
	jz _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_10
	mov eax, cls
	mov edi, [eax+0x2dbff8]
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	mov ebx, [eax*8+playerKeys+0x11c]
	test ebx, ebx
	jz _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_20
	mov dword [ebp-0x20], 0x0
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	mov ebx, 0x5f
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_30:
	mov [esp], edi
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm1
	call _Z12R_TextHeightP6Font_s
	mov [esp+0x34], ebx
	mov edx, [ebp+0x28]
	mov [esp+0x30], edx
	mov edx, [ebp-0x20]
	mov [esp+0x2c], edx
	mov edx, colorWhite
	mov [esp+0x28], edx
	movss xmm1, dword [ebp-0x48]
	movss [esp+0x24], xmm1
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x20], xmm0
	mov edx, [ebp+0x1c]
	mov [esp+0x1c], edx
	mov edx, [ebp+0x18]
	mov [esp+0x18], edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	cvttss2si eax, xmm0
	add eax, [ebp+0x14]
	cvtsi2ss xmm0, eax
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, dword [ebp+0x10]
	movss [esp+0x10], xmm0
	mov [esp+0xc], edi
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov eax, [ebp+0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z21CL_DrawTextWithCursorPK15ScreenPlacementPKciP6Font_sffiiffPKfiic
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_20:
	mov dword [ebp-0x20], 0x0
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	mov ebx, 0x7c
	jmp _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_30
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_10:
	movss xmm0, dword [edx+0x10]
	divss xmm0, dword [_float_48_00000000]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	movss [ebp-0x38], xmm0
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov edi, eax
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
	fstp dword [ebp-0x1c]
	cmp dword [ebp+0x1c], 0x5
	jz _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_40
	movss xmm1, dword [ebp-0x1c]
	movaps xmm0, xmm1
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_60:
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	mov ecx, [eax*8+playerKeys+0x11c]
	test ecx, ecx
	jz _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_50
	mov dword [ebp-0x20], 0x3
	mov ebx, 0x5f
	jmp _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_30
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_50:
	mov dword [ebp-0x20], 0x3
	mov ebx, 0x7c
	jmp _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_30
_Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_40:
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [esi]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, [esi+0x4]
	jmp _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii_60
	nop


;Key_GetCommandAssignment(int, char const*, int*)
_Z24Key_GetCommandAssignmentiPKcPi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov dword [eax+0x4], 0xffffffff
	mov dword [eax], 0xffffffff
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	lea ebx, [eax*8+playerKeys]
	xor edi, edi
	xor esi, esi
	jmp _Z24Key_GetCommandAssignmentiPKcPi_10
_Z24Key_GetCommandAssignmentiPKcPi_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz _Z24Key_GetCommandAssignmentiPKcPi_20
_Z24Key_GetCommandAssignmentiPKcPi_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz _Z24Key_GetCommandAssignmentiPKcPi_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z24Key_GetCommandAssignmentiPKcPi_30
	mov eax, [ebp+0x10]
	mov [eax+edi*4], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz _Z24Key_GetCommandAssignmentiPKcPi_30
_Z24Key_GetCommandAssignmentiPKcPi_20:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PbMaxKeys()
_Z9PbMaxKeysv:
	push ebp
	mov ebp, esp
	mov eax, 0x100
	pop ebp
	ret


;Initialized global or static variables of cl_keys:
SECTION .data
frenchNumberKeysMap: dd _cstring_2, _cstring_3, _cstring_4, _cstring_, _cstring_5, _cstring_6, _cstring_7, _cstring_8, _cstring_9, _cstring_10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
keynames: dd _cstring_tab, 0x9, _cstring_return, 0xd, _cstring_escape, 0x1b, _cstring_space1, 0x20, _cstring_return, 0x7f, _cstring_uparrow, 0x9a, _cstring_downarrow, 0x9b, _cstring_leftarrow, 0x9c, _cstring_rightarrow, 0x9d, _cstring_option, 0x9e, _cstring_ctrl, 0x9f, _cstring_shift, 0xa0, _cstring_capslock, 0x97, _cstring_f1, 0xa7, _cstring_f2, 0xa8, _cstring_f3, 0xa9, _cstring_f4, 0xaa, _cstring_f5, 0xab, _cstring_f6, 0xac, _cstring_f7, 0xad, _cstring_f8, 0xae, _cstring_f9, 0xaf, _cstring_f10, 0xb0, _cstring_f11, 0xb1, _cstring_f12, 0xb2, _cstring_f13, 0xb3, _cstring_f14, 0xb4, _cstring_f15, 0xb5, _cstring_help, 0xa1, _cstring_del, 0xa2, _cstring_pgdn, 0xa3, _cstring_pgup, 0xa4, _cstring_home, 0xa5, _cstring_end, 0xa6, _cstring_mouse1, 0xc8, _cstring_mouse2, 0xc9, _cstring_mouse3, 0xca, _cstring_mouse4, 0xcb, _cstring_mouse5, 0xcc, _cstring_mwheelup, 0xce, _cstring_mwheeldown, 0xcd, _cstring_aux1, 0xcf, _cstring_aux2, 0xd0, _cstring_aux3, 0xd1, _cstring_aux4, 0xd2, _cstring_aux5, 0xd3, _cstring_aux6, 0xd4, _cstring_aux7, 0xd5, _cstring_aux8, 0xd6, _cstring_aux9, 0xd7, _cstring_aux10, 0xd8, _cstring_aux11, 0xd9, _cstring_aux12, 0xda, _cstring_aux13, 0xdb, _cstring_aux14, 0xdc, _cstring_aux15, 0xdd, _cstring_aux16, 0xde, _cstring_kp_7, 0xb6, _cstring_kp_8, 0xb7, _cstring_kp_9, 0xb8, _cstring_kp_4, 0xb9, _cstring_kp_5, 0xba, _cstring_kp_6, 0xbb, _cstring_kp_1, 0xbc, _cstring_kp_2, 0xbd, _cstring_kp_3, 0xbe, _cstring_enter, 0xbf, _cstring_kp_0, 0xc0, _cstring_kp_period, 0xc1, _cstring_kp_slash, 0xc2, _cstring_kp_minus, 0xc3, _cstring_kp_plus, 0xc4, _cstring_clear1, 0xc5, _cstring_kp_star, 0xc6, _cstring_kp_equals, 0xc7, _cstring_pause, 0x99, _cstring_semicolon, 0x3b, _cstring_command, 0x96, _cstring_181, 0x80, _cstring_191, 0x81, _cstring_223, 0x82, _cstring_224, 0x83, _cstring_225, 0x84, _cstring_228, 0x85, _cstring_229, 0x86, _cstring_230, 0x87, _cstring_231, 0x88, _cstring_232, 0x89, _cstring_233, 0x8a, _cstring_236, 0x8b, _cstring_241, 0x8c, _cstring_242, 0x8d, _cstring_243, 0x8e, _cstring_246, 0x8f, _cstring_248, 0x90, _cstring_249, 0x91, _cstring_250, 0x92, _cstring_252, 0x93, 0x0, 0x0, 0x0, 0x0
keynames_localized: dd _cstring_key_tab, 0x9, _cstring_key_enter, 0xd, _cstring_key_escape, 0x1b, _cstring_key_space, 0x20, _cstring_key_backspace, 0x7f, _cstring_key_uparrow, 0x9a, _cstring_key_downarrow, 0x9b, _cstring_key_leftarrow, 0x9c, _cstring_key_rightarrow, 0x9d, _cstring_key_alt, 0x9e, _cstring_key_ctrl, 0x9f, _cstring_key_shift, 0xa0, _cstring_key_capslock, 0x97, _cstring_key_f1, 0xa7, _cstring_key_f2, 0xa8, _cstring_key_f3, 0xa9, _cstring_key_f4, 0xaa, _cstring_key_f5, 0xab, _cstring_key_f6, 0xac, _cstring_key_f7, 0xad, _cstring_key_f8, 0xae, _cstring_key_f9, 0xaf, _cstring_key_f10, 0xb0, _cstring_key_f11, 0xb1, _cstring_key_f12, 0xb2, _cstring_key_f13, 0xb3, _cstring_key_f14, 0xb4, _cstring_key_f15, 0xb5, _cstring_key_ins, 0xa1, _cstring_key_del, 0xa2, _cstring_key_pgdn, 0xa3, _cstring_key_pgup, 0xa4, _cstring_key_home, 0xa5, _cstring_key_end, 0xa6, _cstring_key_mouse1, 0xc8, _cstring_key_mouse2, 0xc9, _cstring_key_mouse3, 0xca, _cstring_key_mouse4, 0xcb, _cstring_key_mouse5, 0xcc, _cstring_key_mwheelup, 0xce, _cstring_key_mwheeldown, 0xcd, _cstring_key_aux1, 0xcf, _cstring_key_aux2, 0xd0, _cstring_key_aux3, 0xd1, _cstring_key_aux4, 0xd2, _cstring_key_aux5, 0xd3, _cstring_key_aux6, 0xd4, _cstring_key_aux7, 0xd5, _cstring_key_aux8, 0xd6, _cstring_key_aux9, 0xd7, _cstring_key_aux10, 0xd8, _cstring_key_aux11, 0xd9, _cstring_key_aux12, 0xda, _cstring_key_aux13, 0xdb, _cstring_key_aux14, 0xdc, _cstring_key_aux15, 0xdd, _cstring_key_aux16, 0xde, _cstring_key_kp_home, 0xb6, _cstring_key_kp_uparrow, 0xb7, _cstring_key_kp_pgup, 0xb8, _cstring_key_kp_leftarrow, 0xb9, _cstring_key_kp_5, 0xba, _cstring_key_kp_rightarro, 0xbb, _cstring_key_kp_end, 0xbc, _cstring_key_kp_downarrow, 0xbd, _cstring_key_kp_pgdn, 0xbe, _cstring_key_kp_enter, 0xbf, _cstring_key_kp_ins, 0xc0, _cstring_key_kp_del, 0xc1, _cstring_key_kp_slash, 0xc2, _cstring_key_kp_minus, 0xc3, _cstring_key_kp_plus, 0xc4, _cstring_key_kp_numlock, 0xc5, _cstring_key_kp_star, 0xc6, _cstring_key_kp_equals, 0xc7, _cstring_key_pause, 0x99, _cstring_key_semicolon, 0x3b, _cstring_key_command, 0x96, _cstring_11, 0x80, _cstring_12, 0x81, _cstring_13, 0x82, _cstring_2, 0x83, _cstring_14, 0x84, _cstring_15, 0x85, _cstring_16, 0x86, _cstring_17, 0x87, _cstring_10, 0x88, _cstring_8, 0x89, _cstring_4, 0x8a, _cstring_18, 0x8b, _cstring_19, 0x8c, _cstring_20, 0x8d, _cstring_21, 0x8e, _cstring_22, 0x8f, _cstring_23, 0x90, _cstring_24, 0x91, _cstring_25, 0x92, _cstring_26, 0x93, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of cl_keys:
SECTION .rdata


;Zero initialized global or static variables of cl_keys:
SECTION .bss
sPasting: resb 0x1
s_shouldCompleteCmd: resb 0x1
s_hasExactMatch: resb 0x1e
s_shortestMatch: resb 0x400
s_prefixMatchCount: resb 0x4
s_matchCount: resb 0x4
s_completionString: resb 0x4
_ZZ18Key_KeynumToStringiiE7tinystr: resb 0x8
_ZZ18CL_InitKeyCommandsvE18Key_Bindlist_f_VAR: resb 0x14
_ZZ18CL_InitKeyCommandsvE19Key_Unbindall_f_VAR: resb 0x14
_ZZ18CL_InitKeyCommandsvE16Key_Unbind_f_VAR: resb 0x14
_ZZ18CL_InitKeyCommandsvE14Key_Bind_f_VAR: resb 0x90
g_consoleField: resb 0x118
historyEditLines: resb 0x2300
playerKeys: resb 0xd40
historyLine: resb 0x4
nextHistoryLine: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_____s:		db "    %s",0ah,0
_cstring_say_team_s:		db "say_team ",22h,015h,"%s",22h,0ah,0
_cstring_say_s:		db "say ",22h,015h,"%s",22h,0ah,0
_cstring_null:		db 0
_cstring_space:		db " ",0
_cstring_s_isnt_a_valid_k:		db 22h,"%s",22h," isn",27h,"t a valid key",0ah,0
_cstring_bind_key_command:		db "bind <key> [command] : attach a command to a key",0ah,0
_cstring_:		db 22h,0
_cstring_s__s:		db 22h,"%s",22h," = ",22h,"%s",22h,0ah,0
_cstring_s_is_not_bound:		db 22h,"%s",22h," is not bound",0ah,0
_cstring_attack:		db "+attack",0
_cstring_devgui:		db "devgui",0
_cstring_1:		db 0ah,0
_cstring_s_i_i:		db "-%s %i %i",0ah,0
_cstring_s_i_i1:		db "%s %i %i",0ah,0
_cstring_s_is_unbound_use:		db "%s is unbound, use controls menu to set.",0ah,0
_cstring_s:		db "]%s",0ah,0
_cstring_pb_:		db "pb_",0
_cstring_pb_sv_:		db "pb_sv_",0
_cstring_s1:		db 5ch,"%s",0
_cstring_clear:		db "clear",0ah,0
_cstring_rcon:		db "rcon",0
_cstring_cmd_say_:		db "cmd say ",0
_cstring_quit:		db "quit",0
_cstring_kill:		db "kill",0
_cstring_s_s:		db 5ch,"%s %s",0
_cstring_unbind_key__remo:		db "unbind <key> : remove commands from a key",0ah,0
_cstring_s_s1:		db "%s ",22h,"%s",22h,0ah,0
_cstring_bind_s_:		db "bind %s ",22h,0
_cstring_s2:		db "%s",0
_cstring_bind:		db "bind",0
_cstring_unbind:		db "unbind",0
_cstring_unbindall:		db "unbindall",0
_cstring_bindlist:		db "bindlist",0
_cstring_out_of_range:		db "<OUT OF RANGE>",0
_cstring_key_not_found:		db "<KEY NOT FOUND>",0
_cstring_2:		db 0e0h,0
_cstring_3:		db "&",0
_cstring_4:		db 0e9h,0
_cstring_5:		db 27h,0
_cstring_6:		db "(",0
_cstring_7:		db 0a7h,0
_cstring_8:		db 0e8h,0
_cstring_9:		db "!",0
_cstring_10:		db 0e7h,0
_cstring_tab:		db "TAB",0
_cstring_return:		db "RETURN",0
_cstring_escape:		db "ESCAPE",0
_cstring_space1:		db "SPACE",0
_cstring_uparrow:		db "UPARROW",0
_cstring_downarrow:		db "DOWNARROW",0
_cstring_leftarrow:		db "LEFTARROW",0
_cstring_rightarrow:		db "RIGHTARROW",0
_cstring_option:		db "OPTION",0
_cstring_ctrl:		db "CTRL",0
_cstring_shift:		db "SHIFT",0
_cstring_capslock:		db "CAPSLOCK",0
_cstring_f1:		db "F1",0
_cstring_f2:		db "F2",0
_cstring_f3:		db "F3",0
_cstring_f4:		db "F4",0
_cstring_f5:		db "F5",0
_cstring_f6:		db "F6",0
_cstring_f7:		db "F7",0
_cstring_f8:		db "F8",0
_cstring_f9:		db "F9",0
_cstring_f10:		db "F10",0
_cstring_f11:		db "F11",0
_cstring_f12:		db "F12",0
_cstring_f13:		db "F13",0
_cstring_f14:		db "F14",0
_cstring_f15:		db "F15",0
_cstring_help:		db "HELP",0
_cstring_del:		db "DEL",0
_cstring_pgdn:		db "PGDN",0
_cstring_pgup:		db "PGUP",0
_cstring_home:		db "HOME",0
_cstring_end:		db "END",0
_cstring_mouse1:		db "MOUSE1",0
_cstring_mouse2:		db "MOUSE2",0
_cstring_mouse3:		db "MOUSE3",0
_cstring_mouse4:		db "MOUSE4",0
_cstring_mouse5:		db "MOUSE5",0
_cstring_mwheelup:		db "MWHEELUP",0
_cstring_mwheeldown:		db "MWHEELDOWN",0
_cstring_aux1:		db "AUX1",0
_cstring_aux2:		db "AUX2",0
_cstring_aux3:		db "AUX3",0
_cstring_aux4:		db "AUX4",0
_cstring_aux5:		db "AUX5",0
_cstring_aux6:		db "AUX6",0
_cstring_aux7:		db "AUX7",0
_cstring_aux8:		db "AUX8",0
_cstring_aux9:		db "AUX9",0
_cstring_aux10:		db "AUX10",0
_cstring_aux11:		db "AUX11",0
_cstring_aux12:		db "AUX12",0
_cstring_aux13:		db "AUX13",0
_cstring_aux14:		db "AUX14",0
_cstring_aux15:		db "AUX15",0
_cstring_aux16:		db "AUX16",0
_cstring_kp_7:		db "KP_7",0
_cstring_kp_8:		db "KP_8",0
_cstring_kp_9:		db "KP_9",0
_cstring_kp_4:		db "KP_4",0
_cstring_kp_5:		db "KP_5",0
_cstring_kp_6:		db "KP_6",0
_cstring_kp_1:		db "KP_1",0
_cstring_kp_2:		db "KP_2",0
_cstring_kp_3:		db "KP_3",0
_cstring_enter:		db "ENTER",0
_cstring_kp_0:		db "KP_0",0
_cstring_kp_period:		db "KP_PERIOD",0
_cstring_kp_slash:		db "KP_SLASH",0
_cstring_kp_minus:		db "KP_MINUS",0
_cstring_kp_plus:		db "KP_PLUS",0
_cstring_clear1:		db "CLEAR",0
_cstring_kp_star:		db "KP_STAR",0
_cstring_kp_equals:		db "KP_EQUALS",0
_cstring_pause:		db "PAUSE",0
_cstring_semicolon:		db "SEMICOLON",0
_cstring_command:		db "COMMAND",0
_cstring_181:		db "181",0
_cstring_191:		db "191",0
_cstring_223:		db "223",0
_cstring_224:		db "224",0
_cstring_225:		db "225",0
_cstring_228:		db "228",0
_cstring_229:		db "229",0
_cstring_230:		db "230",0
_cstring_231:		db "231",0
_cstring_232:		db "232",0
_cstring_233:		db "233",0
_cstring_236:		db "236",0
_cstring_241:		db "241",0
_cstring_242:		db "242",0
_cstring_243:		db "243",0
_cstring_246:		db "246",0
_cstring_248:		db "248",0
_cstring_249:		db "249",0
_cstring_250:		db "250",0
_cstring_252:		db "252",0
_cstring_key_tab:		db "KEY_TAB",0
_cstring_key_enter:		db "KEY_ENTER",0
_cstring_key_escape:		db "KEY_ESCAPE",0
_cstring_key_space:		db "KEY_SPACE",0
_cstring_key_backspace:		db "KEY_BACKSPACE",0
_cstring_key_uparrow:		db "KEY_UPARROW",0
_cstring_key_downarrow:		db "KEY_DOWNARROW",0
_cstring_key_leftarrow:		db "KEY_LEFTARROW",0
_cstring_key_rightarrow:		db "KEY_RIGHTARROW",0
_cstring_key_alt:		db "KEY_ALT",0
_cstring_key_ctrl:		db "KEY_CTRL",0
_cstring_key_shift:		db "KEY_SHIFT",0
_cstring_key_capslock:		db "KEY_CAPSLOCK",0
_cstring_key_f1:		db "KEY_F1",0
_cstring_key_f2:		db "KEY_F2",0
_cstring_key_f3:		db "KEY_F3",0
_cstring_key_f4:		db "KEY_F4",0
_cstring_key_f5:		db "KEY_F5",0
_cstring_key_f6:		db "KEY_F6",0
_cstring_key_f7:		db "KEY_F7",0
_cstring_key_f8:		db "KEY_F8",0
_cstring_key_f9:		db "KEY_F9",0
_cstring_key_f10:		db "KEY_F10",0
_cstring_key_f11:		db "KEY_F11",0
_cstring_key_f12:		db "KEY_F12",0
_cstring_key_f13:		db "KEY_F13",0
_cstring_key_f14:		db "KEY_F14",0
_cstring_key_f15:		db "KEY_F15",0
_cstring_key_ins:		db "KEY_INS",0
_cstring_key_del:		db "KEY_DEL",0
_cstring_key_pgdn:		db "KEY_PGDN",0
_cstring_key_pgup:		db "KEY_PGUP",0
_cstring_key_home:		db "KEY_HOME",0
_cstring_key_end:		db "KEY_END",0
_cstring_key_mouse1:		db "KEY_MOUSE1",0
_cstring_key_mouse2:		db "KEY_MOUSE2",0
_cstring_key_mouse3:		db "KEY_MOUSE3",0
_cstring_key_mouse4:		db "KEY_MOUSE4",0
_cstring_key_mouse5:		db "KEY_MOUSE5",0
_cstring_key_mwheelup:		db "KEY_MWHEELUP",0
_cstring_key_mwheeldown:		db "KEY_MWHEELDOWN",0
_cstring_key_aux1:		db "KEY_AUX1",0
_cstring_key_aux2:		db "KEY_AUX2",0
_cstring_key_aux3:		db "KEY_AUX3",0
_cstring_key_aux4:		db "KEY_AUX4",0
_cstring_key_aux5:		db "KEY_AUX5",0
_cstring_key_aux6:		db "KEY_AUX6",0
_cstring_key_aux7:		db "KEY_AUX7",0
_cstring_key_aux8:		db "KEY_AUX8",0
_cstring_key_aux9:		db "KEY_AUX9",0
_cstring_key_aux10:		db "KEY_AUX10",0
_cstring_key_aux11:		db "KEY_AUX11",0
_cstring_key_aux12:		db "KEY_AUX12",0
_cstring_key_aux13:		db "KEY_AUX13",0
_cstring_key_aux14:		db "KEY_AUX14",0
_cstring_key_aux15:		db "KEY_AUX15",0
_cstring_key_aux16:		db "KEY_AUX16",0
_cstring_key_kp_home:		db "KEY_KP_HOME",0
_cstring_key_kp_uparrow:		db "KEY_KP_UPARROW",0
_cstring_key_kp_pgup:		db "KEY_KP_PGUP",0
_cstring_key_kp_leftarrow:		db "KEY_KP_LEFTARROW",0
_cstring_key_kp_5:		db "KEY_KP_5",0
_cstring_key_kp_rightarro:		db "KEY_KP_RIGHTARROW",0
_cstring_key_kp_end:		db "KEY_KP_END",0
_cstring_key_kp_downarrow:		db "KEY_KP_DOWNARROW",0
_cstring_key_kp_pgdn:		db "KEY_KP_PGDN",0
_cstring_key_kp_enter:		db "KEY_KP_ENTER",0
_cstring_key_kp_ins:		db "KEY_KP_INS",0
_cstring_key_kp_del:		db "KEY_KP_DEL",0
_cstring_key_kp_slash:		db "KEY_KP_SLASH",0
_cstring_key_kp_minus:		db "KEY_KP_MINUS",0
_cstring_key_kp_plus:		db "KEY_KP_PLUS",0
_cstring_key_kp_numlock:		db "KEY_KP_NUMLOCK",0
_cstring_key_kp_star:		db "KEY_KP_STAR",0
_cstring_key_kp_equals:		db "KEY_KP_EQUALS",0
_cstring_key_pause:		db "KEY_PAUSE",0
_cstring_key_semicolon:		db "KEY_SEMICOLON",0
_cstring_key_command:		db "KEY_COMMAND",0
_cstring_11:		db 0b5h,0
_cstring_12:		db 0bfh,0
_cstring_13:		db 0dfh,0
_cstring_14:		db 0e1h,0
_cstring_15:		db 0e4h,0
_cstring_16:		db 0e5h,0
_cstring_17:		db 0e6h,0
_cstring_18:		db 0ech,0
_cstring_19:		db 0f1h,0
_cstring_20:		db 0f2h,0
_cstring_21:		db 0f3h,0
_cstring_22:		db 0f6h,0
_cstring_23:		db 0f8h,0
_cstring_24:		db 0f9h,0
_cstring_25:		db 0fah,0
_cstring_26:		db 0fch,0



;All constant floats and doubles:
SECTION .rdata
_float_48_00000000:		dd 0x42400000	; 48
_float_0_00000000:		dd 0x0	; 0
_float_1_00000000:		dd 0x3f800000	; 1

