;Imports of cl_keys:
	extern con_ignoreMatchPrefixOnly
	extern con_matchPrefixOnly
	extern I_stristr
	extern Com_Printf
	extern Q_stricmpn
	extern Q_stricmp
	extern I_isdigit
	extern Con_IsAutoCompleteMatch
	extern tolower
	extern Q_strncpyz
	extern Sys_GetClipboardData
	extern Sys_FreeClipboardData
	extern memmove
	extern GetCurrentEventKeyModifiers
	extern Field_Clear
	extern cls
	extern __maskrune
	extern scrPlaceView
	extern clientUIActives
	extern Com_sprintf
	extern CL_AddReliableCommand
	extern cmd_args
	extern Q_strncat
	extern ReplaceStringInternal
	extern dvar_modifiedFlags
	extern strchr
	extern con_restricted
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern Con_IsActive
	extern Con_ToggleConsoleOutput
	extern Cbuf_AddText
	extern UI_KeyEvent
	extern com_sv_running
	extern sv_disableClientConsole
	extern clientConnections
	extern nextdemo
	extern Cvar_SetString
	extern Con_ToggleConsole
	extern CG_IsScoreboardDisplayed
	extern Scoreboard_HandleInput
	extern UI_GetActiveMenu
	extern cl_bypassMouseInput
	extern UI_SetActiveMenu
	extern CL_StopLogoOrCinematic
	extern cl_waitingOnServerToLoadMap
	extern Con_CancelAutoComplete
	extern UI_CheckExecKey
	extern memcpy
	extern scrPlaceFull
	extern Con_AllowAutoCompleteCycling
	extern Con_CommitToAutoComplete
	extern g_console_field_width
	extern g_console_char_height
	extern CL_AllLocalClientsDisconnected
	extern SCR_UpdateScreen
	extern Con_CycleAutoComplete
	extern strncasecmp
	extern strncpy
	extern PbServerCompleteCommand
	extern Q_strncmp
	extern Con_Top
	extern Con_TokenizeInput
	extern Con_IsDvarCommand
	extern Cvar_ForEachName
	extern strstr
	extern Cmd_EndTokenizedString
	extern Con_PageUp
	extern Con_PageDown
	extern PbClientCompleteCommand
	extern Con_Bottom
	extern con_inputMaxMatchesShown
	extern Cmd_ForEach
	extern Con_HasTooManyMatchesToShow
	extern Con_AnySpaceAfterCommand
	extern Cvar_FindVar
	extern Con_AutoCompleteFromList
	extern Cmd_GetAutoCompleteFileList
	extern FS_FreeFileList
	extern Com_StripExtension
	extern FreeStringInternal
	extern Key_KeynumToStringBuf
	extern g_assetEntryPool
	extern FS_Printf
	extern Cmd_AddCommand
	extern R_NormalizedTextScale
	extern R_TextWidth
	extern SEH_PrintStrlen
	extern UI_GetFontHandle
	extern __toupper
	extern SEH_GetCurrentLanguage
	extern snd_drawInfoStrings
	extern R_TextHeight
	extern colorWhite
	extern CL_DrawTextWithCursor

;Exports of cl_keys:
	global sPasting
	global s_shouldCompleteCmd
	global s_hasExactMatch
	global s_shortestMatch
	global s_prefixMatchCount
	global s_matchCount
	global s_completionString
	global PrintMatches
	global Key_StringToKeynum
	global _ZZ18Key_KeynumToStringiiE7tinystr
	global _ZZ18CL_InitKeyCommandsvE18Key_Bindlist_f_VAR
	global _ZZ18CL_InitKeyCommandsvE19Key_Unbindall_f_VAR
	global _ZZ18CL_InitKeyCommandsvE16Key_Unbind_f_VAR
	global _ZZ18CL_InitKeyCommandsvE14Key_Bind_f_VAR
	global FindMatches
	global Field_CharEvent
	global Field_KeyDownEvent
	global Message_Key
	global Field_Draw
	global Key_Bind_f
	global CL_KeyEvent
	global Console_Key
	global CL_CharEvent
	global Key_Shutdown
	global Key_Unbind_f
	global Key_AddCatcher
	global Key_Bindlist_f
	global Key_GetBinding
	global Key_SetBinding
	global Key_SetCatcher
	global Key_ClearStates
	global Key_Unbindall_f
	global CL_GetKeyBinding
	global Key_RemoveCatcher
	global Key_WriteBindings
	global CL_InitKeyCommands
	global Field_AdjustScroll
	global Key_IsCommandBound
	global Key_KeynumToString
	global Key_IsCatcherActive
	global Key_GetOverstrikeMode
	global Key_SetOverstrikeMode
	global Field_DrawTextOverride
	global Key_GetCommandAssignment
	global PbMaxKeys
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
PrintMatches:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov eax, con_ignoreMatchPrefixOnly
	cmp byte [eax], 0x0
	jz PrintMatches_10
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz PrintMatches_10
PrintMatches_30:
	mov dword [esp+0x4], s_shortestMatch
	mov [esp], ebx
	call I_stristr
	test eax, eax
	jz PrintMatches_20
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_____s
	mov dword [esp], 0x0
	call Com_Printf
PrintMatches_20:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
PrintMatches_10:
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
	call Q_stricmpn
	test eax, eax
	jz PrintMatches_30
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
	add [eax], al


;Key_StringToKeynum(char const*)
Key_StringToKeynum:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	test eax, eax
	jnz Key_StringToKeynum_10
Key_StringToKeynum_20:
	mov eax, 0xffffffff
Key_StringToKeynum_40:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
Key_StringToKeynum_10:
	movzx eax, byte [eax]
	test al, al
	jz Key_StringToKeynum_20
	movzx edx, byte [ebx+0x1]
	test dl, dl
	jnz Key_StringToKeynum_30
	movsx eax, al
	jmp Key_StringToKeynum_40
Key_StringToKeynum_30:
	cmp al, 0x30
	jnz Key_StringToKeynum_50
	cmp dl, 0x78
	jz Key_StringToKeynum_60
Key_StringToKeynum_50:
	mov eax, [keynames]
	test eax, eax
	jz Key_StringToKeynum_20
	mov edi, keynames
Key_StringToKeynum_80:
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Key_StringToKeynum_70
	add edi, 0x8
	mov eax, [edi]
	test eax, eax
	jnz Key_StringToKeynum_80
	jmp Key_StringToKeynum_20
Key_StringToKeynum_70:
	mov eax, [edi+0x4]
	jmp Key_StringToKeynum_40
Key_StringToKeynum_60:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	cmp ecx, 0xfffffffa
	jnz Key_StringToKeynum_50
	movsx edi, byte [ebx+0x2]
	mov [esp], edi
	call I_isdigit
	test al, al
	jz Key_StringToKeynum_90
	sub edi, 0x30
	shl edi, 0x4
Key_StringToKeynum_130:
	movsx ebx, byte [ebx+0x3]
	mov [esp], ebx
	call I_isdigit
	test al, al
	jz Key_StringToKeynum_100
	lea eax, [ebx-0x30]
	add eax, edi
	jmp Key_StringToKeynum_40
Key_StringToKeynum_100:
	lea eax, [ebx-0x61]
	cmp eax, 0x5
	jbe Key_StringToKeynum_110
	xor eax, eax
	add eax, edi
	jmp Key_StringToKeynum_40
Key_StringToKeynum_90:
	lea eax, [edi-0x61]
	cmp eax, 0x5
	jbe Key_StringToKeynum_120
	xor edi, edi
	jmp Key_StringToKeynum_130
Key_StringToKeynum_110:
	lea eax, [ebx-0x57]
	add eax, edi
	jmp Key_StringToKeynum_40
Key_StringToKeynum_120:
	sub edi, 0x57
	shl edi, 0x4
	jmp Key_StringToKeynum_130
	nop


;FindMatches(char const*)
FindMatches:
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
	call Con_IsAutoCompleteMatch
	test al, al
	jz FindMatches_10
	mov eax, con_ignoreMatchPrefixOnly
	cmp byte [eax], 0x0
	jnz FindMatches_20
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz FindMatches_30
FindMatches_20:
	mov [esp+0x8], ebx
	mov eax, [s_completionString]
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Q_stricmpn
	test eax, eax
	jz FindMatches_30
	xor edx, edx
FindMatches_80:
	mov eax, [s_matchCount]
	add eax, 0x1
	mov [s_matchCount], eax
	sub eax, 0x1
	jz FindMatches_40
	test dl, dl
	jz FindMatches_50
	cmp dword [s_prefixMatchCount], 0x1
	jz FindMatches_40
FindMatches_50:
	mov eax, [s_prefixMatchCount]
	test eax, eax
	jz FindMatches_60
	test dl, dl
	jz FindMatches_10
	mov edi, [ebp+0x8]
	cmp byte [edi], 0x0
	jnz FindMatches_70
	xor edi, edi
FindMatches_110:
	mov eax, 0x1
FindMatches_130:
	mov [s_hasExactMatch], al
	mov byte [edi+s_shortestMatch], 0x0
FindMatches_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindMatches_30:
	add dword [s_prefixMatchCount], 0x1
	mov edx, 0x1
	jmp FindMatches_80
FindMatches_70:
	mov esi, [ebp+0x8]
	xor edi, edi
FindMatches_100:
	movsx eax, byte [edi+s_shortestMatch]
	mov [esp], eax
	call tolower
	mov ebx, eax
	movsx eax, byte [esi]
	mov [esp], eax
	call tolower
	cmp ebx, eax
	jnz FindMatches_90
	add edi, 0x1
	mov esi, [ebp+0x8]
	add esi, edi
	cmp byte [esi], 0x0
	jnz FindMatches_100
	jmp FindMatches_110
FindMatches_40:
	mov dword [esp+0x8], 0x400
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], s_shortestMatch
	call Q_strncpyz
	mov byte [s_hasExactMatch], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindMatches_60:
	mov dword [esp+0x8], 0x400
	mov eax, [s_completionString]
	mov [esp+0x4], eax
	mov dword [esp], s_shortestMatch
	call Q_strncpyz
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
FindMatches_90:
	cmp byte [esi], 0x0
	jz FindMatches_110
	cmp byte [s_hasExactMatch], 0x0
	jnz FindMatches_120
	xor eax, eax
	jmp FindMatches_130
FindMatches_120:
	cmp byte [edi+s_shortestMatch], 0x0
	jz FindMatches_110
	xor eax, eax
	jmp FindMatches_130
	nop


;Field_CharEvent(int, ScreenPlacement const*, field_t*, int)
Field_CharEvent:
Field_CharEvent_200:
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
	jz Field_CharEvent_10
	cmp ebx, 0x76
	jz Field_CharEvent_20
	cmp ebx, 0x3
	jz Field_CharEvent_30
	cmp ebx, 0x8
	jz Field_CharEvent_40
	cmp ebx, 0x1
	jz Field_CharEvent_50
	cmp ebx, 0x5
	jz Field_CharEvent_60
	cmp ebx, 0x1f
	jle Field_CharEvent_70
Field_CharEvent_160:
	mov edx, [ebp-0x28]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	mov eax, [eax*8+playerKeys+0x11c]
	test eax, eax
	jz Field_CharEvent_80
	mov eax, [esi]
	cmp eax, 0xff
	jz Field_CharEvent_70
	mov [eax+esi+0x18], bl
	lea edx, [eax+0x1]
	mov [esi], edx
Field_CharEvent_150:
	lea eax, [edi+0x1]
	cmp edx, eax
	jz Field_CharEvent_90
Field_CharEvent_190:
	mov edi, 0x1
Field_CharEvent_120:
	mov [esp+0x4], esi
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Field_AdjustScroll
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_CharEvent_10:
	cmp byte [sPasting], 0x0
	jz Field_CharEvent_100
Field_CharEvent_70:
	xor edi, edi
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_CharEvent_40:
	mov eax, [esi]
	test eax, eax
	setg bl
	test bl, bl
	jnz Field_CharEvent_110
	xor edi, edi
	jmp Field_CharEvent_120
Field_CharEvent_100:
	call Sys_GetClipboardData
	mov [ebp-0x20], eax
	test eax, eax
	jz Field_CharEvent_130
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg Field_CharEvent_140
Field_CharEvent_220:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call Sys_FreeClipboardData
	mov eax, 0x1
Field_CharEvent_130:
	movzx edi, al
	jmp Field_CharEvent_120
Field_CharEvent_60:
	mov [esi], edi
	xor edi, edi
	jmp Field_CharEvent_120
Field_CharEvent_80:
	cmp edi, 0xff
	jz Field_CharEvent_70
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
	jmp Field_CharEvent_150
Field_CharEvent_50:
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
Field_CharEvent_20:
	call GetCurrentEventKeyModifiers
	test ah, 0x1
	jz Field_CharEvent_160
	cmp byte [sPasting], 0x0
	jnz Field_CharEvent_160
	call Sys_GetClipboardData
	mov [ebp-0x1c], eax
	test eax, eax
	jz Field_CharEvent_170
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg Field_CharEvent_180
Field_CharEvent_240:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call Sys_FreeClipboardData
	mov eax, 0x1
	movzx edi, al
	jmp Field_CharEvent_120
Field_CharEvent_30:
	mov [esp], esi
	call Field_Clear
	mov edi, 0x1
	jmp Field_CharEvent_120
Field_CharEvent_90:
	mov byte [edx+esi+0x18], 0x0
	jmp Field_CharEvent_190
Field_CharEvent_110:
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
	jmp Field_CharEvent_120
Field_CharEvent_140:
	xor ebx, ebx
Field_CharEvent_210:
	mov edx, [ebp-0x20]
	movsx eax, byte [ebx+edx]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call Field_CharEvent_200
	add ebx, 0x1
	cmp edi, ebx
	jnz Field_CharEvent_210
	jmp Field_CharEvent_220
Field_CharEvent_170:
	xor eax, eax
	movzx edi, al
	jmp Field_CharEvent_120
Field_CharEvent_180:
	xor ebx, ebx
Field_CharEvent_230:
	mov edx, [ebp-0x1c]
	movsx eax, byte [edx+ebx]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp-0x2c]
	mov eax, [ebp-0x28]
	call Field_CharEvent_200
	add ebx, 0x1
	cmp edi, ebx
	jnz Field_CharEvent_230
	jmp Field_CharEvent_240
	nop


;Field_KeyDownEvent(int, ScreenPlacement const*, field_t*, int)
Field_KeyDownEvent:
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
	jz Field_KeyDownEvent_10
	cmp esi, 0xa2
	jz Field_KeyDownEvent_20
	cmp esi, 0x9d
	jz Field_KeyDownEvent_30
	cmp esi, 0x9c
	jz Field_KeyDownEvent_40
	cmp esi, 0xa5
	jz Field_KeyDownEvent_50
Field_KeyDownEvent_130:
	mov [esp], esi
	call tolower
	cmp eax, 0x61
	jz Field_KeyDownEvent_60
Field_KeyDownEvent_220:
	cmp esi, 0xa6
	jz Field_KeyDownEvent_70
	mov [esp], esi
	call tolower
	cmp eax, 0x65
	jz Field_KeyDownEvent_80
Field_KeyDownEvent_110:
	cmp esi, 0xa1
	jz Field_KeyDownEvent_90
Field_KeyDownEvent_160:
	xor edi, edi
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_80:
	mov eax, [ebp-0x20]
	test eax, eax
	jz Field_KeyDownEvent_110
Field_KeyDownEvent_70:
	mov ecx, [ebp-0x2c]
	mov [ecx], edi
	xor edi, edi
Field_KeyDownEvent_100:
	mov eax, cls
	mov ebx, [eax+0x110]
	test ebx, ebx
	jz Field_KeyDownEvent_120
	mov ebx, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov eax, [ebp-0x28]
	mov [esp], eax
	call Field_AdjustScroll
Field_KeyDownEvent_120:
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_KeyDownEvent_10:
	mov eax, [ebp-0x24]
	test eax, eax
	jz Field_KeyDownEvent_130
	cmp byte [sPasting], 0x0
	jnz Field_KeyDownEvent_130
	call Sys_GetClipboardData
	mov [ebp-0x1c], eax
	test eax, eax
	jz Field_KeyDownEvent_140
	mov edi, eax
	mov byte [sPasting], 0x1
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	test edi, edi
	jg Field_KeyDownEvent_150
Field_KeyDownEvent_320:
	mov byte [sPasting], 0x0
	mov ecx, [ebp-0x1c]
	mov [esp], ecx
	call Sys_FreeClipboardData
	mov eax, 0x1
Field_KeyDownEvent_140:
	movzx edi, al
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_20:
	mov ebx, [ebp-0x2c]
	mov eax, [ebx]
	cmp edi, eax
	jle Field_KeyDownEvent_160
	add edx, eax
	sub edi, eax
	mov [esp+0x8], edi
	lea eax, [edx+0x1]
	mov [esp+0x4], eax
	mov [esp], edx
	call memmove
	xor edi, edi
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_30:
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	cmp edi, eax
	jle Field_KeyDownEvent_170
	mov ecx, edx
	lea edx, [eax+0x1]
	mov [ecx], edx
Field_KeyDownEvent_170:
	mov esi, [ebp-0x20]
	test esi, esi
	jz Field_KeyDownEvent_160
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	mov eax, edx
	cmp edi, edx
	jg Field_KeyDownEvent_180
	xor edi, edi
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_200:
	mov eax, [0xd5cc084]
	test dword [eax+ecx*4+0x34], 0x500
	setnz al
	movzx eax, al
Field_KeyDownEvent_210:
	test eax, eax
	jz Field_KeyDownEvent_190
	lea eax, [edx+0x1]
	mov edx, eax
	mov ecx, [ebp-0x2c]
	mov [ecx], eax
	cmp edi, eax
	jle Field_KeyDownEvent_190
Field_KeyDownEvent_180:
	mov ebx, [ebp-0x2c]
	movsx ecx, byte [eax+ebx+0x18]
	test ecx, 0xffffff80
	jz Field_KeyDownEvent_200
	mov dword [esp+0x4], 0x500
	mov [esp], ecx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	jmp Field_KeyDownEvent_210
Field_KeyDownEvent_60:
	mov edx, [ebp-0x20]
	test edx, edx
	jz Field_KeyDownEvent_220
Field_KeyDownEvent_50:
	mov edx, [ebp-0x2c]
	mov dword [edx], 0x0
	xor edi, edi
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_40:
	mov eax, [ebp-0x2c]
	mov edx, [eax]
	test edx, edx
	jle Field_KeyDownEvent_230
	sub edx, 0x1
	mov [eax], edx
Field_KeyDownEvent_230:
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz Field_KeyDownEvent_240
	mov eax, edx
	test edx, edx
	jg Field_KeyDownEvent_250
Field_KeyDownEvent_240:
	mov eax, [ebp-0x2c]
	cmp edx, [eax+0x4]
	jge Field_KeyDownEvent_160
	mov [eax+0x4], edx
	xor edi, edi
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_260:
	mov eax, [0xd5cc084]
	test dword [eax+ecx*4+0x34], 0x500
	setnz al
	movzx eax, al
Field_KeyDownEvent_270:
	test eax, eax
	jz Field_KeyDownEvent_240
	lea eax, [edx-0x1]
	mov edx, eax
	mov ebx, [ebp-0x2c]
	mov [ebx], eax
	test eax, eax
	jle Field_KeyDownEvent_240
Field_KeyDownEvent_250:
	mov ebx, [ebp-0x2c]
	movsx ecx, byte [eax+ebx+0x17]
	test ecx, 0xffffff80
	jz Field_KeyDownEvent_260
	mov dword [esp+0x4], 0x500
	mov [esp], ecx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	mov ecx, [ebp-0x2c]
	mov edx, [ecx]
	jmp Field_KeyDownEvent_270
Field_KeyDownEvent_90:
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
	jmp Field_KeyDownEvent_100
Field_KeyDownEvent_190:
	mov eax, edx
	cmp edi, edx
	jg Field_KeyDownEvent_280
	jmp Field_KeyDownEvent_160
Field_KeyDownEvent_290:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
Field_KeyDownEvent_300:
	test eax, eax
	jnz Field_KeyDownEvent_160
	mov ebx, [ebp-0x2c]
	mov eax, [ebx]
	add eax, 0x1
	mov [ebx], eax
	cmp edi, eax
	jle Field_KeyDownEvent_160
Field_KeyDownEvent_280:
	mov ebx, [ebp-0x2c]
	movsx edx, byte [eax+ebx+0x18]
	test edx, 0xffffff80
	jz Field_KeyDownEvent_290
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Field_KeyDownEvent_300
Field_KeyDownEvent_150:
	xor esi, esi
Field_KeyDownEvent_310:
	mov edx, [ebp-0x1c]
	movsx eax, byte [edx+esi]
	mov [esp], eax
	mov ecx, [ebp-0x2c]
	mov edx, [ebp-0x28]
	mov eax, ebx
	call Field_CharEvent
	add esi, 0x1
	cmp edi, esi
	jnz Field_KeyDownEvent_310
	jmp Field_KeyDownEvent_320


;Message_Key(int, int)
Message_Key:
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
	jz Message_Key_10
	cmp edx, 0xd
	jz Message_Key_20
	cmp edx, 0xbf
	jz Message_Key_20
	mov eax, ebx
	shl eax, 0x6
	lea edx, [eax+ebx*4]
	add edx, scrPlaceView
	mov [esp], ecx
	mov ecx, esi
	mov eax, ebx
	call Field_KeyDownEvent
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Message_Key_20:
	mov ecx, clientUIActives
	mov edx, [ecx+0xc]
	cmp byte [esi+0x18], 0x0
	jnz Message_Key_30
Message_Key_40:
	and dword [ecx+0x4], 0xffffffdf
	mov [esp], esi
	call Field_Clear
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Message_Key_30:
	cmp edx, 0x9
	jnz Message_Key_40
	mov eax, [eax+playerKeys+0x118]
	test eax, eax
	jz Message_Key_50
	lea eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_say_team_s
	mov dword [esp+0x4], 0x400
	lea edi, [ebp-0x418]
	mov [esp], edi
	call Com_sprintf
Message_Key_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call CL_AddReliableCommand
	mov ecx, clientUIActives
	jmp Message_Key_40
Message_Key_10:
	mov eax, clientUIActives
	and dword [eax+0x4], 0xffffffdf
	mov [esp], esi
	call Field_Clear
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Message_Key_50:
	lea eax, [esi+0x18]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_say_s
	mov dword [esp+0x4], 0x400
	lea edi, [ebp-0x418]
	mov [esp], edi
	call Com_sprintf
	jmp Message_Key_60
	nop


;Field_Draw(int, field_t*, int, int, int, int)
Field_Draw:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0xc]
	mov eax, [esi+0x8]
	test eax, eax
	jnz Field_Draw_10
	mov dword [esi+0x8], 0x100
Field_Draw_10:
	mov edx, [esi+0x4]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [esi+edx+0x18]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call Q_strncpyz
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
	call Field_DrawTextOverride
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Key_Bind_f()
Key_Bind_f:
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
	jle Key_Bind_f_10
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	call Key_StringToKeynum
	cmp eax, 0xffffffff
	jz Key_Bind_f_20
	mov [esp], eax
	call tolower
	mov [ebp-0x41c], eax
	cmp dword [ebp-0x424], 0x2
	jz Key_Bind_f_30
	mov byte [ebp-0x418], 0x0
	jle Key_Bind_f_40
	mov eax, [ebp-0x424]
	sub eax, 0x1
	mov [ebp-0x420], eax
	mov ebx, 0x2
	mov esi, 0x8
	cmp dword [ebp-0x424], 0x3
	jnz Key_Bind_f_50
	jmp Key_Bind_f_60
Key_Bind_f_80:
	mov eax, _cstring_null
Key_Bind_f_90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Q_strncat
	cmp ebx, [ebp-0x420]
	jz Key_Bind_f_70
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncat
Key_Bind_f_70:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jz Key_Bind_f_40
Key_Bind_f_60:
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jge Key_Bind_f_80
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
	jmp Key_Bind_f_90
Key_Bind_f_20:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Key_Bind_f_100
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Key_Bind_f_220:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_isnt_a_valid_k
	mov dword [esp], 0x0
	call Com_Printf
Key_Bind_f_110:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Key_Bind_f_40:
	cmp dword [ebp-0x41c], 0xffffffff
	jz Key_Bind_f_110
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
Key_Bind_f_10:
	mov dword [esp+0x4], _cstring_bind_key_command
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Key_Bind_f_160:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
Key_Bind_f_170:
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call strchr
	test eax, eax
	jz Key_Bind_f_120
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncat
	mov byte [ebp-0x425], 0x1
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jge Key_Bind_f_130
Key_Bind_f_180:
	mov eax, [edi+eax*4+0x64]
	mov eax, [eax+esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncat
	cmp byte [ebp-0x425], 0x0
	jnz Key_Bind_f_140
Key_Bind_f_190:
	cmp ebx, [ebp-0x420]
	jz Key_Bind_f_150
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Q_strncat
Key_Bind_f_150:
	add ebx, 0x1
	add esi, 0x4
	cmp [ebp-0x424], ebx
	jz Key_Bind_f_40
Key_Bind_f_50:
	mov edi, cmd_args
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jl Key_Bind_f_160
	mov eax, _cstring_null
	jmp Key_Bind_f_170
Key_Bind_f_120:
	mov byte [ebp-0x425], 0x0
	mov eax, [edi]
	cmp ebx, [edi+eax*4+0x44]
	jl Key_Bind_f_180
Key_Bind_f_130:
	mov eax, _cstring_null
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncat
	cmp byte [ebp-0x425], 0x0
	jz Key_Bind_f_190
Key_Bind_f_140:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Q_strncat
	jmp Key_Bind_f_190
Key_Bind_f_30:
	lea eax, [eax+eax*2]
	mov edx, [eax*4+playerKeys+0x12c]
	test edx, edx
	jz Key_Bind_f_200
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Key_Bind_f_210
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Key_Bind_f_240:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s__s
	mov dword [esp], 0x0
	call Com_Printf
	jmp Key_Bind_f_110
Key_Bind_f_100:
	mov eax, _cstring_null
	jmp Key_Bind_f_220
Key_Bind_f_200:
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Key_Bind_f_230
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Key_Bind_f_250:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_not_bound
	mov dword [esp], 0x0
	call Com_Printf
	jmp Key_Bind_f_110
Key_Bind_f_210:
	mov eax, _cstring_null
	jmp Key_Bind_f_240
Key_Bind_f_230:
	mov eax, _cstring_null
	jmp Key_Bind_f_250


;CL_KeyEvent(int, int, int, unsigned int)
CL_KeyEvent:
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
	jz CL_KeyEvent_10
	mov eax, [ebx+0x4]
	add eax, 0x1
	mov [ebx+0x4], eax
	sub eax, 0x1
	jz CL_KeyEvent_20
CL_KeyEvent_150:
	cmp edi, 0x60
	jz CL_KeyEvent_30
	cmp edi, 0x7e
	jz CL_KeyEvent_30
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jz CL_KeyEvent_40
CL_KeyEvent_30:
	mov eax, [ebp+0x10]
	test eax, eax
	jz CL_KeyEvent_50
CL_KeyEvent_210:
	cmp dword [ebx+0x4], 0x1
	jle CL_KeyEvent_50
	mov eax, clientUIActives
	mov eax, [eax+0x4]
	test al, 0x21
	jnz CL_KeyEvent_60
	test al, 0x10
	jz CL_KeyEvent_70
	lea ecx, [edi-0x9a]
	cmp ecx, 0xa
	ja CL_KeyEvent_70
	mov eax, 0x1
	shl eax, cl
	test eax, 0x603
	jz CL_KeyEvent_70
CL_KeyEvent_60:
	cmp edi, 0x60
	jz CL_KeyEvent_70
	cmp edi, 0x7e
	jz CL_KeyEvent_70
	cmp edi, 0x1b
	jz CL_KeyEvent_70
CL_KeyEvent_50:
	mov eax, con_restricted
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_KeyEvent_80
CL_KeyEvent_160:
	cmp edi, 0x7e
	jz CL_KeyEvent_90
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz CL_KeyEvent_100
	cmp edi, 0x60
	jz CL_KeyEvent_90
CL_KeyEvent_100:
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*8]
	lea eax, [esi+eax*4]
	lea eax, [eax*8+playerKeys+0xd24]
	mov [ebp-0x42c], eax
	mov ecx, clientUIActives
	mov edx, [ecx+0x4]
	test dl, 0x8
	jz CL_KeyEvent_110
	mov eax, [ebp+0x10]
	test eax, eax
	jle CL_KeyEvent_120
	cmp edi, 0x1b
	jz CL_KeyEvent_130
	mov edx, [ebx+0x8]
	test edx, edx
	jz CL_KeyEvent_70
	mov edi, _cstring_attack
	mov ebx, 0x8
	cld
	mov esi, edx
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz CL_KeyEvent_140
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
CL_KeyEvent_140:
	test edx, edx
	jnz CL_KeyEvent_70
	mov eax, [ebp-0x42c]
	mov dword [eax], 0x1
CL_KeyEvent_70:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_KeyEvent_10:
	mov dword [ebx+0x4], 0x0
	mov eax, [edx+playerKeys+0x120]
	sub eax, 0x1
	cmovs eax, [ebp+0x10]
	mov [edx+playerKeys+0x120], eax
	jmp CL_KeyEvent_150
CL_KeyEvent_80:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jnz CL_KeyEvent_160
	cmp edi, 0xa5
	jz CL_KeyEvent_170
	cmp edi, 0x7e
	jz CL_KeyEvent_70
CL_KeyEvent_350:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz CL_KeyEvent_100
	cmp edi, 0x60
	jnz CL_KeyEvent_100
	jmp CL_KeyEvent_70
CL_KeyEvent_90:
	mov eax, [ebp+0x10]
	test eax, eax
	jz CL_KeyEvent_70
	mov eax, clientUIActives
	test byte [eax+0x4], 0x1
	jz CL_KeyEvent_180
CL_KeyEvent_290:
	mov eax, [ebp-0x420]
	mov eax, [eax+0x780]
	test eax, eax
	jz CL_KeyEvent_190
	mov [esp], esi
	call Con_IsActive
	test al, al
	jz CL_KeyEvent_200
	call Con_ToggleConsoleOutput
	jmp CL_KeyEvent_70
CL_KeyEvent_40:
	mov eax, [ebx+0x8]
	test eax, eax
	jz CL_KeyEvent_30
	mov dword [esp+0x4], _cstring_devgui
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_KeyEvent_30
	mov edx, [ebp+0x10]
	test edx, edx
	jz CL_KeyEvent_50
	cmp dword [ebx+0x4], 0x1
	jnz CL_KeyEvent_210
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], esi
	call Cbuf_AddText
	jmp CL_KeyEvent_70
CL_KeyEvent_110:
	mov ecx, eax
CL_KeyEvent_490:
	mov dword [ecx], 0x0
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	mov [ebp-0x41c], eax
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jz CL_KeyEvent_220
	cmp edi, 0xc8
	jz CL_KeyEvent_230
	cmp edi, 0x7f
	jle CL_KeyEvent_230
CL_KeyEvent_220:
	cmp edi, 0x1b
	jz CL_KeyEvent_240
CL_KeyEvent_430:
	mov ecx, clientUIActives
	cmp byte [ecx+0x2], 0x0
	jnz CL_KeyEvent_250
CL_KeyEvent_360:
	mov eax, [ebp+0x10]
	test eax, eax
	jnz CL_KeyEvent_260
CL_KeyEvent_370:
	mov eax, [ebx+0x8]
	test eax, eax
	jz CL_KeyEvent_270
	cmp byte [eax], 0x2b
	jz CL_KeyEvent_280
CL_KeyEvent_270:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x10
	jz CL_KeyEvent_70
	mov eax, cls
	mov ecx, [eax+0x110]
	test ecx, ecx
	jz CL_KeyEvent_70
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov [esp], esi
	call UI_KeyEvent
	jmp CL_KeyEvent_70
CL_KeyEvent_20:
	add dword [edx+playerKeys+0x120], 0x1
	jmp CL_KeyEvent_150
CL_KeyEvent_180:
	mov eax, com_sv_running
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_KeyEvent_290
	mov eax, sv_disableClientConsole
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_KeyEvent_70
	jmp CL_KeyEvent_290
CL_KeyEvent_230:
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz CL_KeyEvent_300
	cmp dword [ebp-0x41c], 0x1
	jz CL_KeyEvent_300
	cmp dword [ebp-0x41c], 0x2
	jnz CL_KeyEvent_220
CL_KeyEvent_300:
	test edx, edx
	jnz CL_KeyEvent_220
	mov dword [esp+0x4], _cstring_null
	mov eax, nextdemo
	mov eax, [eax]
	mov [esp], eax
	call Cvar_SetString
CL_KeyEvent_440:
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	test al, 0x20
	jnz CL_KeyEvent_310
	test al, 0x1
	jnz CL_KeyEvent_320
CL_KeyEvent_500:
	test al, 0x10
	jnz CL_KeyEvent_330
	cmp dword [ebp-0x41c], 0x9
	ja CL_KeyEvent_340
	mov eax, [ebp-0x41c]
	jmp dword [eax*4+CL_KeyEvent_jumptab_0]
CL_KeyEvent_170:
	mov eax, [ebp+0x10]
	test eax, eax
	jz CL_KeyEvent_350
	mov edx, [ebp-0x420]
	mov eax, [edx+0x5f4]
	test eax, eax
	jz CL_KeyEvent_350
CL_KeyEvent_190:
	call Con_ToggleConsole
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_KeyEvent_250:
	mov [esp], esi
	call CG_IsScoreboardDisplayed
	test eax, eax
	jz CL_KeyEvent_360
	mov eax, [ebp+0x10]
	test eax, eax
	jz CL_KeyEvent_370
	mov [esp+0x4], edi
	mov [esp], esi
	call Scoreboard_HandleInput
	test al, al
	jnz CL_KeyEvent_70
CL_KeyEvent_260:
	mov ecx, clientUIActives
	mov eax, [ecx+0x4]
	test al, 0x1
	jnz CL_KeyEvent_380
	test al, 0x10
	jnz CL_KeyEvent_390
CL_KeyEvent_450:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x20
	jnz CL_KeyEvent_400
	mov eax, [ebp-0x41c]
	test eax, eax
	jz CL_KeyEvent_380
	mov eax, [ebx+0x8]
	test eax, eax
	jz CL_KeyEvent_410
	cmp byte [eax], 0x2b
	jz CL_KeyEvent_420
	mov [esp+0x4], eax
	mov [esp], esi
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Cbuf_AddText
	jmp CL_KeyEvent_70
CL_KeyEvent_240:
	mov eax, [ebp+0x10]
	test eax, eax
	jz CL_KeyEvent_430
	jmp CL_KeyEvent_440
CL_KeyEvent_200:
	call Con_ToggleConsole
	call Con_ToggleConsoleOutput
	jmp CL_KeyEvent_70
CL_KeyEvent_390:
	mov [esp], esi
	call UI_GetActiveMenu
	cmp eax, 0xa
	jz CL_KeyEvent_450
	mov eax, cl_bypassMouseInput
	mov eax, [eax]
	test eax, eax
	jz CL_KeyEvent_460
	cmp byte [eax+0xc], 0x0
	jz CL_KeyEvent_460
	lea eax, [edi-0xc8]
	cmp eax, 0x2
	jbe CL_KeyEvent_450
	mov eax, cls
	mov edx, [eax+0x110]
	test edx, edx
	jnz CL_KeyEvent_470
CL_KeyEvent_510:
	mov ecx, [eax+0x110]
	test ecx, ecx
	jz CL_KeyEvent_70
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov [esp], esi
	call UI_KeyEvent
	jmp CL_KeyEvent_70
CL_KeyEvent_340:
	mov eax, cls
	mov eax, [eax+0x110]
	test eax, eax
	jz CL_KeyEvent_70
CL_KeyEvent_480:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call UI_SetActiveMenu
	jmp CL_KeyEvent_70
CL_KeyEvent_520:
	mov [esp], esi
	call CL_StopLogoOrCinematic
	jmp CL_KeyEvent_70
CL_KeyEvent_530:
	mov eax, clientConnections
	mov eax, [eax+0x4018c]
	test eax, eax
	jnz CL_KeyEvent_480
	mov eax, cl_waitingOnServerToLoadMap
	cmp byte [eax+esi], 0x0
	jnz CL_KeyEvent_480
	mov dword [esp+0x4], 0x2
	mov [esp], esi
	call UI_SetActiveMenu
	jmp CL_KeyEvent_70
CL_KeyEvent_130:
	mov edx, [ebp-0x42c]
	mov dword [edx], 0x2
	jmp CL_KeyEvent_70
CL_KeyEvent_120:
	mov ecx, [ebp-0x42c]
	jmp CL_KeyEvent_490
CL_KeyEvent_380:
	mov [esp+0x4], edi
	mov [esp], esi
	call Console_Key
	jmp CL_KeyEvent_70
CL_KeyEvent_310:
	mov edx, 0x1b
	mov eax, esi
	call Message_Key
	jmp CL_KeyEvent_70
CL_KeyEvent_400:
	mov edx, edi
	mov eax, esi
	call Message_Key
	jmp CL_KeyEvent_70
CL_KeyEvent_280:
	mov edx, [ebp+0x14]
	mov [esp+0x14], edx
	mov [esp+0x10], edi
	add eax, 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i_i
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x4], ebx
	mov [esp], esi
	call Cbuf_AddText
	jmp CL_KeyEvent_270
CL_KeyEvent_330:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1b
	mov [esp], esi
	call UI_KeyEvent
	jmp CL_KeyEvent_70
CL_KeyEvent_320:
	call Con_CancelAutoComplete
	mov ecx, clientUIActives
	mov eax, [ecx+0x4]
	jmp CL_KeyEvent_500
CL_KeyEvent_470:
	mov [esp+0x4], edi
	mov [esp], esi
	call UI_CheckExecKey
	test eax, eax
	jz CL_KeyEvent_450
CL_KeyEvent_460:
	mov eax, cls
	jmp CL_KeyEvent_510
CL_KeyEvent_420:
	mov ecx, [ebp+0x14]
	mov [esp+0x14], ecx
	mov [esp+0x10], edi
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_i_i1
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Com_sprintf
	mov [esp+0x4], ebx
	mov [esp], esi
	call Cbuf_AddText
	jmp CL_KeyEvent_70
CL_KeyEvent_410:
	cmp edi, 0xce
	jle CL_KeyEvent_70
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call Key_KeynumToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_is_unbound_use
	mov dword [esp], 0xe
	call Com_Printf
	jmp CL_KeyEvent_70
	
	
CL_KeyEvent_jumptab_0:
	dd CL_KeyEvent_340
	dd CL_KeyEvent_520
	dd CL_KeyEvent_520
	dd CL_KeyEvent_70
	dd CL_KeyEvent_70
	dd CL_KeyEvent_70
	dd CL_KeyEvent_340
	dd CL_KeyEvent_340
	dd CL_KeyEvent_340
	dd CL_KeyEvent_530


;Console_Key(int, int)
Console_Key:
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
	jz Console_Key_10
	cmp esi, 0xd
	jz Console_Key_20
	cmp esi, 0xbf
	jz Console_Key_20
	cmp esi, 0x9
	jz Console_Key_30
	cmp esi, 0x9a
	jz Console_Key_40
	cmp esi, 0x9b
	jz Console_Key_50
	cmp esi, 0xce
	jnz Console_Key_60
	mov eax, [ebp-0x380]
	test eax, eax
	jz Console_Key_60
Console_Key_160:
	mov edx, [historyLine]
	mov eax, [nextHistoryLine]
	sub eax, edx
	cmp eax, 0x1f
	jle Console_Key_70
Console_Key_300:
	mov eax, edx
	and eax, 0x8000001f
	js Console_Key_80
Console_Key_460:
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
	call Field_AdjustScroll
	mov dword [esp], 0x0
	call Con_AllowAutoCompleteCycling
Console_Key_90:
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Console_Key_20:
	call Con_CommitToAutoComplete
	test al, al
	jnz Console_Key_90
	mov dword [esp+0x8], g_consoleField+0x18
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	movzx eax, byte [g_consoleField+0x18]
	cmp al, 0x5c
	jz Console_Key_100
	cmp al, 0x2f
	jnz Console_Key_110
Console_Key_100:
	mov dword [esp+0x4], g_consoleField+0x19
Console_Key_450:
	mov [esp], ebx
	call Cbuf_AddText
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Cbuf_AddText
Console_Key_440:
	cmp byte [g_consoleField+0x18], 0x0
	jz Console_Key_120
	mov ebx, [nextHistoryLine]
	mov eax, ebx
	and eax, 0x8000001f
	js Console_Key_130
Console_Key_510:
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
Console_Key_120:
	mov dword [esp], g_consoleField
	call Field_Clear
	mov eax, g_console_field_width
	mov eax, [eax]
	mov [g_consoleField+0xc], eax
	mov eax, g_console_char_height
	mov eax, [eax]
	mov [g_consoleField+0x10], eax
	mov dword [g_consoleField+0x14], 0x1
	call CL_AllLocalClientsDisconnected
	test al, al
	jz Console_Key_90
	call SCR_UpdateScreen
	jmp Console_Key_90
Console_Key_10:
	mov edx, [ebp-0x37c]
	test edx, edx
	jnz Console_Key_140
Console_Key_60:
	mov [esp], esi
	call tolower
	cmp eax, 0x70
	jz Console_Key_150
Console_Key_310:
	xor eax, eax
Console_Key_320:
	test eax, eax
	jnz Console_Key_160
	cmp esi, 0xcd
	jz Console_Key_170
	cmp esi, 0x9b
	jz Console_Key_180
Console_Key_390:
	mov [esp], esi
	call tolower
	cmp eax, 0x6e
	jz Console_Key_190
Console_Key_410:
	xor eax, eax
Console_Key_420:
	test eax, eax
	jnz Console_Key_200
	cmp esi, 0xa4
	jz Console_Key_210
	cmp esi, 0xa3
	jz Console_Key_220
	cmp esi, 0xce
	jz Console_Key_230
	cmp esi, 0xcd
	jz Console_Key_240
	cmp esi, 0xa5
	jz Console_Key_250
	cmp esi, 0xa6
	jz Console_Key_260
	cmp esi, 0xa2
	jz Console_Key_270
	cmp esi, 0x1b
	jz Console_Key_270
Console_Key_480:
	lea eax, [esi-0x9c]
	cmp eax, 0x1
	jbe Console_Key_280
	cmp esi, 0x7f
	jz Console_Key_290
	mov eax, [ebp-0x37c]
	test eax, eax
	jnz Console_Key_290
	mov eax, [ebp-0x378]
	test eax, eax
	jnz Console_Key_290
	mov eax, [ebp-0x380]
	test eax, eax
	jnz Console_Key_290
	test edi, edi
	jz Console_Key_280
Console_Key_290:
	mov edx, scrPlaceFull
	mov [esp], esi
	mov ecx, g_consoleField
	mov eax, ebx
	call Field_KeyDownEvent
	test al, al
	jz Console_Key_90
	mov dword [esp], 0x1
	call Con_AllowAutoCompleteCycling
	jmp Console_Key_90
Console_Key_70:
	test edx, edx
	jle Console_Key_300
	sub edx, 0x1
	mov [historyLine], edx
	jmp Console_Key_300
Console_Key_150:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz Console_Key_310
Console_Key_380:
	mov eax, 0x1
	jmp Console_Key_320
Console_Key_50:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz Console_Key_60
	mov dword [esp], 0x1
	call Con_CycleAutoComplete
	jmp Console_Key_90
Console_Key_30:
	cmp byte [ebp-0x381], 0x0
	jz Console_Key_330
	movzx eax, byte [g_consoleField+0x18]
	cmp al, 0x2f
	jz Console_Key_340
	cmp al, 0x5c
	jz Console_Key_340
	xor eax, eax
Console_Key_470:
	lea ebx, [eax+g_consoleField+0x18]
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], _cstring_pb_
	mov [esp], ebx
	call strncasecmp
	test eax, eax
	jnz Console_Key_350
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
	jnz Console_Key_360
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call PbServerCompleteCommand
Console_Key_650:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Com_sprintf
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
	call Field_AdjustScroll
	jmp Console_Key_370
Console_Key_40:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz Console_Key_380
	mov dword [esp], 0xffffffff
	call Con_CycleAutoComplete
	jmp Console_Key_90
Console_Key_140:
	mov dword [esp+0x4], _cstring_clear
	mov [esp], ebx
	call Cbuf_AddText
	jmp Console_Key_90
Console_Key_170:
	mov eax, [ebp-0x380]
	test eax, eax
	jz Console_Key_390
Console_Key_200:
	mov dword [esp], 0x1
	call Con_CycleAutoComplete
	test al, al
	jnz Console_Key_90
	mov eax, [historyLine]
	cmp eax, [nextHistoryLine]
	jz Console_Key_90
	add eax, 0x1
	mov [historyLine], eax
	and eax, 0x8000001f
	js Console_Key_400
Console_Key_730:
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
	call Field_AdjustScroll
	jmp Console_Key_90
Console_Key_330:
	cmp dword [ebp-0x380], 0x1
	sbb eax, eax
	and eax, 0x2
	sub eax, 0x1
	mov [esp], eax
	call Con_CycleAutoComplete
Console_Key_370:
	mov byte [s_shouldCompleteCmd], 0x0
	add esp, 0x3ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Console_Key_190:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz Console_Key_410
Console_Key_180:
	mov eax, 0x1
	jmp Console_Key_420
Console_Key_110:
	call CL_AllLocalClientsDisconnected
	test al, al
	jnz Console_Key_430
Console_Key_490:
	cmp byte [g_consoleField+0x18], 0x0
	jz Console_Key_90
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_rcon
	mov dword [esp], g_consoleField+0x18
	call Q_strncmp
	test eax, eax
	jz Console_Key_440
	mov dword [esp+0x4], _cstring_cmd_say_
	mov [esp], ebx
	call Cbuf_AddText
Console_Key_500:
	mov dword [esp+0x4], g_consoleField+0x18
	jmp Console_Key_450
Console_Key_80:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp Console_Key_460
Console_Key_340:
	mov eax, 0x1
	jmp Console_Key_470
Console_Key_250:
	mov edx, [ebp-0x37c]
	test edx, edx
	jz Console_Key_480
	call Con_Top
	jmp Console_Key_90
Console_Key_430:
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_quit
	mov dword [esp], g_consoleField+0x18
	call Q_stricmpn
	test eax, eax
	jz Console_Key_490
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_kill
	mov dword [esp], g_consoleField+0x18
	call Q_stricmpn
	test eax, eax
	jz Console_Key_490
	jmp Console_Key_500
Console_Key_130:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp Console_Key_510
Console_Key_280:
	call Con_CommitToAutoComplete
	jmp Console_Key_290
Console_Key_350:
	call Con_TokenizeInput
	mov esi, eax
	mov [s_completionString], eax
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [eax], 0x0
	jz Console_Key_520
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Console_Key_530
	mov [esp], esi
	call Con_IsDvarCommand
	test al, al
	jnz Console_Key_540
Console_Key_530:
	mov byte [ebp-0x372], 0x0
	mov byte [ebp-0x351], 0x0
Console_Key_1040:
	mov eax, con_matchPrefixOnly
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Console_Key_550
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x0
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x351], 0x0
	jz Console_Key_560
Console_Key_700:
	mov dword [ebp-0x370], 0x0
Console_Key_710:
	mov dword [esp], FindMatches
	call Cvar_ForEachName
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, s_shortestMatch
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x36c], ecx
	mov edx, [s_matchCount]
Console_Key_670:
	mov ebx, edx
	test edx, edx
	jz Console_Key_520
Console_Key_690:
	lea eax, [ebp-0x340]
	mov dword [esp+0x8], 0x118
	mov dword [esp+0x4], g_consoleField
	mov [esp], eax
	call memcpy
	cmp byte [ebp-0x372], 0x0
	jnz Console_Key_570
	sub ebx, 0x1
	jz Console_Key_580
	cmp byte [s_hasExactMatch], 0x0
	jnz Console_Key_590
Console_Key_860:
	mov byte [ebp-0x371], 0x0
Console_Key_870:
	mov dword [esp+0xc], s_shortestMatch
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Com_sprintf
Console_Key_720:
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
	jz Console_Key_600
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
	call Q_strncat
Console_Key_740:
	cmp byte [ebp-0x371], 0x0
	jz Console_Key_610
	cmp byte [ebp-0x372], 0x0
	jnz Console_Key_620
	mov ebx, cmd_args
	mov eax, [ebx]
	mov eax, [ebx+eax*4+0x44]
	cmp eax, 0x1
	jz Console_Key_630
	cmp eax, 0x2
	jz Console_Key_640
Console_Key_620:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [g_consoleField], ecx
Console_Key_840:
	call Cmd_EndTokenizedString
	mov dword [esp+0x4], g_consoleField
	mov eax, scrPlaceFull
	mov [esp], eax
	call Field_AdjustScroll
	jmp Console_Key_370
Console_Key_230:
	call Con_PageUp
	mov ebx, [ebp-0x37c]
	test ebx, ebx
	jz Console_Key_90
	call Con_PageUp
Console_Key_210:
	call Con_PageUp
	jmp Console_Key_90
Console_Key_240:
	call Con_PageDown
	mov ecx, [ebp-0x37c]
	test ecx, ecx
	jz Console_Key_90
	call Con_PageDown
Console_Key_220:
	call Con_PageDown
	jmp Console_Key_90
Console_Key_360:
	mov dword [esp+0x4], 0xff
	mov [esp], ebx
	call PbClientCompleteCommand
	jmp Console_Key_650
Console_Key_520:
	call Cmd_EndTokenizedString
	jmp Console_Key_370
Console_Key_260:
	mov eax, [ebp-0x37c]
	test eax, eax
	jz Console_Key_480
	call Con_Bottom
	jmp Console_Key_90
Console_Key_270:
	call Con_CancelAutoComplete
	test al, al
	jz Console_Key_290
	jmp Console_Key_90
Console_Key_550:
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x1
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	movzx edx, byte [ebp-0x351]
	xor dl, 0x1
	mov [ebp-0x365], dl
	jnz Console_Key_660
	mov dword [ebp-0x370], 0x0
Console_Key_850:
	mov dword [esp], FindMatches
	call Cvar_ForEachName
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
	jle Console_Key_670
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x0
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x365], 0x0
	jnz Console_Key_680
	mov dword [ebp-0x370], 0x0
Console_Key_890:
	mov dword [esp], FindMatches
	call Cvar_ForEachName
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
	jnz Console_Key_690
	mov eax, con_ignoreMatchPrefixOnly
	mov byte [eax], 0x1
	mov dword [s_matchCount], 0x0
	mov dword [s_prefixMatchCount], 0x0
	mov byte [s_shortestMatch], 0x0
	cmp byte [ebp-0x365], 0x0
	jz Console_Key_700
	mov dword [esp], FindMatches
	call Cmd_ForEach
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp Console_Key_710
Console_Key_570:
	mov dword [esp+0x10], s_shortestMatch
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_s_s
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Com_sprintf
	mov byte [ebp-0x371], 0x1
	jmp Console_Key_720
Console_Key_400:
	sub eax, 0x1
	or eax, 0xffffffe0
	add eax, 0x1
	jmp Console_Key_730
Console_Key_600:
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x1
	jle Console_Key_740
	mov esi, 0x1
	mov edi, 0x4
Console_Key_810:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Q_strncat
	mov edx, cmd_args
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl Console_Key_750
	mov ebx, _cstring_null
Console_Key_820:
	movzx eax, byte [ebx]
	test al, al
	jz Console_Key_760
Console_Key_780:
	cmp al, 0x20
	jz Console_Key_770
	add ebx, 0x1
	movzx eax, byte [ebx]
	test al, al
	jnz Console_Key_780
Console_Key_760:
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl Console_Key_790
	mov eax, _cstring_null
Console_Key_830:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Q_strncat
	cmp byte [ebx], 0x20
	jz Console_Key_800
Console_Key_880:
	add esi, 0x1
	add edi, 0x4
	mov edx, cmd_args
	mov eax, [edx]
	cmp esi, [edx+eax*4+0x44]
	jl Console_Key_810
	jmp Console_Key_740
Console_Key_750:
	mov eax, [edx+eax*4+0x64]
	mov ebx, [eax+edi]
	jmp Console_Key_820
Console_Key_790:
	mov eax, [edx+eax*4+0x64]
	mov eax, [eax+edi]
	jmp Console_Key_830
Console_Key_770:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Q_strncat
	mov edx, cmd_args
	jmp Console_Key_760
Console_Key_610:
	call Con_HasTooManyMatchesToShow
	test al, al
	jz Console_Key_840
	mov dword [esp+0x8], g_consoleField+0x18
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0x0
	call Com_Printf
	mov dword [esp], PrintMatches
	call Cmd_ForEach
	mov dword [esp], PrintMatches
	call Cvar_ForEachName
	jmp Console_Key_840
Console_Key_660:
	mov dword [esp], FindMatches
	call Cmd_ForEach
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	movzx eax, byte [ebp-0x351]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp Console_Key_850
Console_Key_560:
	mov dword [esp], FindMatches
	call Cmd_ForEach
	cld
	mov ecx, 0xffffffff
	mov edi, s_shortestMatch
	movzx eax, byte [ebp-0x351]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp Console_Key_710
Console_Key_590:
	call Con_AnySpaceAfterCommand
	test al, al
	jz Console_Key_860
Console_Key_580:
	mov byte [ebp-0x371], 0x1
	jmp Console_Key_870
Console_Key_800:
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Q_strncat
	jmp Console_Key_880
Console_Key_680:
	mov dword [esp], FindMatches
	call Cmd_ForEach
	cld
	mov ecx, ebx
	mov edi, s_shortestMatch
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x370], ecx
	jmp Console_Key_890
Console_Key_640:
	mov edx, [ebp-0x36c]
	cmp [ebp-0x370], edx
	jz Console_Key_900
	call Con_TokenizeInput
	mov [esp], eax
	call Cvar_FindVar
	mov edx, eax
	cmp byte [eax+0xa], 0x6
	jnz Console_Key_910
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Console_Key_920
	mov eax, [ebx+eax*4+0x64]
	mov ebx, [eax+0x4]
Console_Key_970:
	cmp byte [ebx], 0x0
	jnz Console_Key_930
Console_Key_910:
	call Cmd_EndTokenizedString
	jmp Console_Key_620
Console_Key_930:
	mov dword [esp+0x10], 0x100
	lea eax, [ebp-0x11c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [edx+0x3c]
	mov [esp+0x4], eax
	mov eax, [edx+0x40]
	mov [esp], eax
	call Con_AutoCompleteFromList
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
	jz Console_Key_910
	mov ecx, edx
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	mov edx, ecx
	sub edx, 0x1
	mov [ebp-0x358], edx
	jnz Console_Key_940
	xor ebx, ebx
Console_Key_1060:
	mov edx, ebx
	sub edx, [ebp-0x35c]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	add edx, g_consoleField+0x18
	mov [esp], edx
	call Q_strncpyz
	call Cmd_EndTokenizedString
	jmp Console_Key_620
Console_Key_630:
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x100
	mov dword [esp], g_consoleField+0x18
	call Q_strncat
	jmp Console_Key_620
Console_Key_900:
	call Con_TokenizeInput
	mov edx, eax
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Console_Key_950
	mov eax, [ebx+eax*4+0x64]
	mov esi, [eax+0x4]
Console_Key_980:
	cmp byte [esi], 0x0
	jz Console_Key_910
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call Cmd_GetAutoCompleteFileList
	mov ebx, eax
	call Cmd_EndTokenizedString
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Console_Key_620
	mov dword [esp+0x10], 0x100
	lea edx, [ebp-0x11c]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov [esp+0x4], eax
	mov [esp], ebx
	call Con_AutoCompleteFromList
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call FS_FreeFileList
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	mov [esp], eax
	call Com_StripExtension
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
	jz Console_Key_620
	mov ecx, edx
	mov edi, g_consoleField+0x18
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x1
	mov [ebp-0x360], eax
	jnz Console_Key_960
	xor ebx, ebx
Console_Key_1000:
	mov edx, ebx
	sub edx, [ebp-0x364]
	mov eax, 0x100
	sub eax, edx
	mov [esp+0x8], eax
	lea eax, [ebp-0x11c]
	mov [esp+0x4], eax
	add edx, g_consoleField+0x18
	mov [esp], edx
	call Q_strncpyz
	jmp Console_Key_620
Console_Key_920:
	mov ebx, _cstring_null
	jmp Console_Key_970
Console_Key_950:
	mov esi, _cstring_null
	jmp Console_Key_980
Console_Key_960:
	lea eax, [ecx+0xf]
	lea esi, [eax+g_consoleField+0x8]
	mov ebx, [ebp-0x360]
	mov dword [ebp-0x350], 0x0
	sub ecx, eax
	add ecx, 0xe
	mov [ebp-0x388], ecx
Console_Key_1020:
	lea edi, [ebx-0x1]
	mov edx, [ebp-0x388]
	movsx eax, byte [edx+esi]
	test eax, 0xffffff80
	jnz Console_Key_990
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Console_Key_1110:
	test eax, eax
	jz Console_Key_1000
	add dword [ebp-0x350], 0x1
	sub esi, 0x1
	mov edx, [ebp-0x350]
	cmp [ebp-0x360], edx
	jz Console_Key_1010
	mov ebx, edi
	jmp Console_Key_1020
Console_Key_540:
	mov byte [ebp-0x372], 0x1
	mov byte [ebp-0x351], 0x1
	mov edx, [ebx]
	cmp dword [ebx+edx*4+0x44], 0x1
	jle Console_Key_1030
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x4]
Console_Key_1100:
	mov [s_completionString], eax
	jmp Console_Key_1040
Console_Key_940:
	lea eax, [ecx+0xf]
	lea esi, [eax+g_consoleField+0x8]
	mov ebx, [ebp-0x358]
	mov dword [ebp-0x34c], 0x0
	sub ecx, eax
	add ecx, 0xe
	mov [ebp-0x38c], ecx
	jmp Console_Key_1050
Console_Key_1080:
	mov edx, [0xd5cc084]
	mov eax, [edx+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Console_Key_1090:
	test eax, eax
	jz Console_Key_1060
	add dword [ebp-0x34c], 0x1
	sub esi, 0x1
	mov eax, [ebp-0x34c]
	cmp [ebp-0x358], eax
	jz Console_Key_1070
	mov ebx, edi
Console_Key_1050:
	lea edi, [ebx-0x1]
	mov edx, [ebp-0x38c]
	movsx eax, byte [edx+esi]
	test eax, 0xffffff80
	jz Console_Key_1080
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Console_Key_1090
Console_Key_1030:
	mov eax, _cstring_null
	jmp Console_Key_1100
Console_Key_1070:
	mov ebx, edi
	jmp Console_Key_1060
Console_Key_1010:
	mov ebx, edi
	jmp Console_Key_1000
Console_Key_990:
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Console_Key_1110
	nop


;CL_CharEvent(int, int)
CL_CharEvent:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	cmp ebx, 0x7e
	jz CL_CharEvent_10
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz CL_CharEvent_20
	cmp ebx, 0x60
	jz CL_CharEvent_10
CL_CharEvent_20:
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	test al, 0x1
	jnz CL_CharEvent_30
	test al, 0x20
	jnz CL_CharEvent_40
	test al, 0x10
	jnz CL_CharEvent_50
	mov eax, [edx+0xc]
	test eax, eax
	jz CL_CharEvent_60
CL_CharEvent_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
CL_CharEvent_30:
	cmp ebx, 0x8
	jz CL_CharEvent_70
CL_CharEvent_60:
	mov edx, scrPlaceFull
	mov [esp], ebx
	mov ecx, g_consoleField
	mov eax, esi
	call Field_CharEvent
	test al, al
	jz CL_CharEvent_10
	mov dword [ebp+0x8], 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Con_AllowAutoCompleteCycling
CL_CharEvent_50:
	mov dword [esp+0x8], 0x1
	or bh, 0x4
	mov [esp+0x4], ebx
	mov [esp], esi
	call UI_KeyEvent
	jmp CL_CharEvent_10
CL_CharEvent_40:
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
	call Field_CharEvent
	jmp CL_CharEvent_10
CL_CharEvent_70:
	call Con_CancelAutoComplete
	test al, al
	jz CL_CharEvent_60
	jmp CL_CharEvent_10
	nop


;Key_Shutdown()
Key_Shutdown:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, playerKeys
	mov esi, playerKeys+0xc00
Key_Shutdown_20:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz Key_Shutdown_10
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx+0x12c], 0x0
Key_Shutdown_10:
	add ebx, 0xc
	cmp esi, ebx
	jnz Key_Shutdown_20
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Key_Unbind_f()
Key_Unbind_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, cmd_args
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jz Key_Unbind_f_10
	mov dword [esp+0x4], _cstring_unbind_key__remo
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Key_Unbind_f_10:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
	call Key_StringToKeynum
	cmp eax, 0xffffffff
	jnz Key_Unbind_f_20
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x1
	jle Key_Unbind_f_30
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x4]
Key_Unbind_f_40:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_isnt_a_valid_k
	mov dword [esp], 0x0
	call Com_Printf
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Key_Unbind_f_20:
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
Key_Unbind_f_30:
	mov eax, _cstring_null
	jmp Key_Unbind_f_40


;Key_AddCatcher(int, int)
Key_AddCatcher:
	push ebp
	mov ebp, esp
	mov edx, clientUIActives
	mov eax, [ebp+0xc]
	or [edx+0x4], eax
	pop ebp
	ret
	nop


;Key_Bindlist_f()
Key_Bindlist_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	xor esi, esi
	mov edi, playerKeys
	jmp Key_Bindlist_f_10
Key_Bindlist_f_30:
	add esi, 0x1
	add edi, 0xc
	cmp esi, 0x100
	jz Key_Bindlist_f_20
Key_Bindlist_f_10:
	mov ebx, [edi+0x12c]
	test ebx, ebx
	jz Key_Bindlist_f_30
	cmp byte [ebx], 0x0
	jz Key_Bindlist_f_30
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call Key_KeynumToString
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s_s1
	mov dword [esp], 0x0
	call Com_Printf
	add esi, 0x1
	add edi, 0xc
	cmp esi, 0x100
	jnz Key_Bindlist_f_10
Key_Bindlist_f_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Key_GetBinding(int, int)
Key_GetBinding:
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
Key_SetBinding:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	cmp eax, 0xffffffff
	jz Key_SetBinding_10
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
Key_SetBinding_10:
	leave
	ret
	nop


;Key_SetCatcher(int, int)
Key_SetCatcher:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, clientUIActives
	test byte [edx+0x4], 0x1
	jz Key_SetCatcher_10
	or eax, 0x1
	mov [edx+0x4], eax
Key_SetCatcher_30:
	test byte [edx+0x4], 0x10
	jnz Key_SetCatcher_20
	mov byte [edx+0x8], 0x0
Key_SetCatcher_20:
	pop ebp
	ret
Key_SetCatcher_10:
	mov [edx+0x4], eax
	jmp Key_SetCatcher_30
	nop


;Key_ClearStates(int)
Key_ClearStates:
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
	jmp Key_ClearStates_10
Key_ClearStates_30:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz Key_ClearStates_20
Key_ClearStates_10:
	mov ecx, [ebx]
	test ecx, ecx
	jz Key_ClearStates_30
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov [esp], edi
	call CL_KeyEvent
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jnz Key_ClearStates_10
Key_ClearStates_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Key_Unbindall_f()
Key_Unbindall_f:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, playerKeys+0x124
	xor ebx, ebx
	mov edi, playerKeys+0x12c
Key_Unbindall_f_20:
	mov eax, [esi+0x8]
	test eax, eax
	jz Key_Unbindall_f_10
	cmp ebx, 0xffffffff
	jz Key_Unbindall_f_10
	mov dword [esp+0x4], _cstring_null
	mov [esp], edi
	call ReplaceStringInternal
	mov eax, dvar_modifiedFlags
	or dword [eax], 0x1
Key_Unbindall_f_10:
	add ebx, 0x1
	add edi, 0xc
	add esi, 0xc
	cmp ebx, 0x100
	jnz Key_Unbindall_f_20
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;CL_GetKeyBinding(int, char const*, char (*) [128])
CL_GetKeyBinding:
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
	jmp CL_GetKeyBinding_10
CL_GetKeyBinding_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz CL_GetKeyBinding_20
CL_GetKeyBinding_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz CL_GetKeyBinding_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz CL_GetKeyBinding_30
	mov [ebp+edi*4-0x20], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz CL_GetKeyBinding_30
CL_GetKeyBinding_50:
	mov dword [esp+0x8], 0x80
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Key_KeynumToStringBuf
	cmp edi, 0x2
	jz CL_GetKeyBinding_40
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetKeyBinding_40:
	mov dword [esp+0x8], 0x80
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Key_KeynumToStringBuf
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_GetKeyBinding_20:
	test edi, edi
	jnz CL_GetKeyBinding_50
	mov eax, [ebp+0x10]
	mov dword [eax], 0x5f59454b
	mov dword [eax+0x4], 0x4f424e55
	mov dword [eax+0x8], g_assetEntryPool+0xdd15
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Key_RemoveCatcher(int, int)
Key_RemoveCatcher:
	push ebp
	mov ebp, esp
	mov edx, clientUIActives
	mov eax, [edx+0x4]
	and eax, [ebp+0xc]
	mov [edx+0x4], eax
	test al, 0x10
	jnz Key_RemoveCatcher_10
	mov byte [edx+0x8], 0x0
Key_RemoveCatcher_10:
	pop ebp
	ret


;Key_WriteBindings(int, int)
Key_WriteBindings:
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
	jmp Key_WriteBindings_10
Key_WriteBindings_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz Key_WriteBindings_20
Key_WriteBindings_10:
	mov eax, [ebx+0x8]
	test eax, eax
	jz Key_WriteBindings_30
	cmp byte [eax], 0x0
	jz Key_WriteBindings_30
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call Key_KeynumToString
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_bind_s_
	mov eax, 0x1ffc
	sub eax, edi
	mov [esp+0x4], eax
	lea eax, [ebp-0x2018]
	add eax, edi
	mov [esp], eax
	call Com_sprintf
	test eax, eax
	js Key_WriteBindings_40
	add eax, edi
	mov ecx, [ebx+0x8]
	movzx edx, byte [ecx]
	test dl, dl
	jz Key_WriteBindings_50
Key_WriteBindings_70:
	cmp eax, 0x1ffb
	jg Key_WriteBindings_50
	cmp dl, 0x22
	jz Key_WriteBindings_60
Key_WriteBindings_80:
	mov [ebp+eax-0x2018], dl
	add eax, 0x1
	add ecx, 0x1
	movzx edx, byte [ecx]
	test dl, dl
	jnz Key_WriteBindings_70
Key_WriteBindings_50:
	mov byte [ebp+eax-0x2018], 0x22
	mov byte [ebp+eax-0x2017], 0xa
	lea edi, [eax+0x2]
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jnz Key_WriteBindings_10
Key_WriteBindings_20:
	mov byte [ebp+edi-0x2018], 0x0
Key_WriteBindings_40:
	lea eax, [ebp-0x2018]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call FS_Printf
	add esp, 0x201c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Key_WriteBindings_60:
	mov byte [ebp+eax-0x2018], 0x5c
	add eax, 0x1
	movzx edx, byte [ecx]
	jmp Key_WriteBindings_80


;CL_InitKeyCommands()
CL_InitKeyCommands:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE14Key_Bind_f_VAR
	mov dword [esp+0x4], Key_Bind_f
	mov dword [esp], _cstring_bind
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE16Key_Unbind_f_VAR
	mov dword [esp+0x4], Key_Unbind_f
	mov dword [esp], _cstring_unbind
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE19Key_Unbindall_f_VAR
	mov dword [esp+0x4], Key_Unbindall_f
	mov dword [esp], _cstring_unbindall
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ18CL_InitKeyCommandsvE18Key_Bindlist_f_VAR
	mov dword [esp+0x4], Key_Bindlist_f
	mov dword [esp], _cstring_bindlist
	call Cmd_AddCommand
	leave
	ret
	add [eax], al


;Field_AdjustScroll(ScreenPlacement const*, field_t*)
Field_AdjustScroll:
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
	jz Field_AdjustScroll_10
	mulss xmm0, [eax+0x10]
	mulss xmm1, [eax+0x14]
	movss [ebp-0x1c], xmm1
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [ebp-0x3c], eax
Field_AdjustScroll_140:
	movss [esp+0x4], xmm0
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x20]
	mov esi, [ebp+0xc]
	add esi, 0x18
	mov edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja Field_AdjustScroll_20
	ucomiss xmm1, [_float_0_00000000]
	jbe Field_AdjustScroll_30
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	mov eax, ebx
Field_AdjustScroll_60:
	test ebx, ebx
	jle Field_AdjustScroll_40
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	lea eax, [esi+eax-0x1]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	ucomiss xmm0, [ebp-0x1c]
	jae Field_AdjustScroll_50
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	sub eax, 0x1
	mov ebx, eax
	mov [edx+0x4], eax
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja Field_AdjustScroll_60
Field_AdjustScroll_40:
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	lea eax, [esi+ebx]
	mov [esp], eax
	call R_TextWidth
	mov ebx, eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x0
	mov eax, esi
	mov edx, [ebp+0xc]
	add eax, [edx]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm1, ebx
	mulss xmm1, [ebp-0x20]
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	subss xmm1, xmm0
	pxor xmm0, xmm0
	ucomiss xmm0, xmm1
	ja Field_AdjustScroll_70
	ucomiss xmm1, [ebp-0x1c]
	jb Field_AdjustScroll_80
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
	add ebx, 0x1
	mov [edx+0x4], ebx
	jmp Field_AdjustScroll_40
Field_AdjustScroll_30:
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
	jmp Field_AdjustScroll_40
Field_AdjustScroll_70:
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Field_AdjustScroll_90
	sub ebx, 0x1
	mov [eax+0x4], ebx
	jmp Field_AdjustScroll_40
Field_AdjustScroll_90:
	ucomiss xmm0, [ebp-0x1c]
	jae Field_AdjustScroll_40
	mov edx, [ebp+0xc]
	jmp Field_AdjustScroll_100
Field_AdjustScroll_80:
	mov edi, [ebp+0xc]
	mov ebx, [edi+0x4]
	mov edx, edi
Field_AdjustScroll_100:
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
	jbe Field_AdjustScroll_110
	cmp [ebp-0x24], eax
	jg Field_AdjustScroll_120
Field_AdjustScroll_110:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_AdjustScroll_130:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	add eax, 0x1
	mov [edx+0x8], eax
	ucomiss xmm1, xmm0
	jbe Field_AdjustScroll_110
	cmp eax, [ebp-0x24]
	jge Field_AdjustScroll_110
	mov edx, [ebp+0xc]
	mov ebx, [edx+0x4]
Field_AdjustScroll_120:
	mov edi, [ebp-0x3c]
	mov [esp+0x8], edi
	add eax, 0x1
	mov [esp+0x4], eax
	lea eax, [esi+ebx]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	movss xmm1, dword [ebp-0x1c]
	ucomiss xmm1, xmm0
	ja Field_AdjustScroll_130
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_AdjustScroll_20:
	mov eax, [ebp+0xc]
	mov dword [eax+0x4], 0x0
	mov [esp], esi
	call SEH_PrintStrlen
	mov edx, [ebp+0xc]
	mov [edx+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_AdjustScroll_10:
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	movss [ebp-0x38], xmm0
	call UI_GetFontHandle
	mov [ebp-0x3c], eax
	movss xmm0, dword [ebp-0x38]
	jmp Field_AdjustScroll_140
Field_AdjustScroll_50:
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	jmp Field_AdjustScroll_40
	nop


;Key_IsCommandBound(int, char const*)
Key_IsCommandBound:
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
	jmp Key_IsCommandBound_10
Key_IsCommandBound_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz Key_IsCommandBound_20
Key_IsCommandBound_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz Key_IsCommandBound_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Key_IsCommandBound_30
	mov [ebp+edi*4-0x20], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz Key_IsCommandBound_30
Key_IsCommandBound_20:
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
Key_KeynumToString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	cmp ebx, 0xffffffff
	jz Key_KeynumToString_10
	cmp ebx, 0xff
	ja Key_KeynumToString_20
	test esi, esi
	jnz Key_KeynumToString_30
Key_KeynumToString_120:
	lea eax, [ebx-0x21]
	cmp eax, 0x5d
	ja Key_KeynumToString_40
	cmp ebx, 0x22
	jz Key_KeynumToString_40
	mov [esp], ebx
	call __toupper
	mov [_ZZ18Key_KeynumToStringiiE7tinystr], al
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x1], 0x0
	cmp ebx, 0x3b
	jz Key_KeynumToString_50
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
Key_KeynumToString_80:
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Key_KeynumToString_40:
	test esi, esi
	jnz Key_KeynumToString_60
Key_KeynumToString_130:
	mov eax, keynames
Key_KeynumToString_100:
	mov ecx, [eax]
	test ecx, ecx
	jz Key_KeynumToString_70
	cmp ebx, [eax+0x4]
	jz Key_KeynumToString_80
	lea edx, [eax+0x8]
Key_KeynumToString_90:
	mov ecx, [edx]
	test ecx, ecx
	jz Key_KeynumToString_70
	mov eax, [edx+0x4]
	add edx, 0x8
	cmp ebx, eax
	jnz Key_KeynumToString_90
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Key_KeynumToString_20:
	mov ecx, _cstring_out_of_range
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Key_KeynumToString_60:
	mov eax, keynames_localized
	jmp Key_KeynumToString_100
Key_KeynumToString_30:
	call SEH_GetCurrentLanguage
	sub eax, 0x1
	jz Key_KeynumToString_110
Key_KeynumToString_180:
	call SEH_GetCurrentLanguage
	sub eax, 0x1
	jnz Key_KeynumToString_120
	cmp ebx, 0x82
	jnz Key_KeynumToString_120
	mov ecx, [frenchNumberKeysMap+0x18]
	jmp Key_KeynumToString_80
Key_KeynumToString_50:
	test esi, esi
	jz Key_KeynumToString_130
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
	jmp Key_KeynumToString_80
Key_KeynumToString_10:
	mov ecx, _cstring_key_not_found
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Key_KeynumToString_70:
	mov edx, ebx
	sar edx, 0x4
	mov eax, ebx
	and eax, 0xf
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr], 0x30
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x1], 0x78
	cmp edx, 0x9
	jle Key_KeynumToString_140
	add dl, 0x57
Key_KeynumToString_160:
	mov [_ZZ18Key_KeynumToStringiiE7tinystr+0x2], dl
	cmp eax, 0x9
	jle Key_KeynumToString_150
	add al, 0x57
Key_KeynumToString_170:
	mov [_ZZ18Key_KeynumToStringiiE7tinystr+0x3], al
	mov byte [_ZZ18Key_KeynumToStringiiE7tinystr+0x4], 0x0
	mov ecx, _ZZ18Key_KeynumToStringiiE7tinystr
	mov eax, ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Key_KeynumToString_140:
	add dl, 0x30
	jmp Key_KeynumToString_160
Key_KeynumToString_150:
	add al, 0x30
	jmp Key_KeynumToString_170
Key_KeynumToString_110:
	cmp ebx, 0x2f
	jle Key_KeynumToString_180
	cmp ebx, 0x39
	jg Key_KeynumToString_180
	mov ecx, [ebx*4+snd_drawInfoStrings+0xc]
	jmp Key_KeynumToString_80
	nop


;Key_IsCatcherActive(int, int)
Key_IsCatcherActive:
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
Key_GetOverstrikeMode:
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
Key_SetOverstrikeMode:
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
Field_DrawTextOverride:
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
	jz Field_DrawTextOverride_10
	mov eax, cls
	mov edi, [eax+0x2dbff8]
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	mov ebx, [eax*8+playerKeys+0x11c]
	test ebx, ebx
	jz Field_DrawTextOverride_20
	mov dword [ebp-0x20], 0x0
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	mov ebx, 0x5f
Field_DrawTextOverride_30:
	mov [esp], edi
	movss [ebp-0x38], xmm0
	movss [ebp-0x48], xmm1
	call R_TextHeight
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
	call CL_DrawTextWithCursor
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Field_DrawTextOverride_20:
	mov dword [ebp-0x20], 0x0
	movss xmm1, dword [_float_1_00000000]
	movaps xmm0, xmm1
	mov ebx, 0x7c
	jmp Field_DrawTextOverride_30
Field_DrawTextOverride_10:
	movss xmm0, dword [edx+0x10]
	divss xmm0, dword [_float_48_00000000]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	movss [ebp-0x38], xmm0
	call UI_GetFontHandle
	mov edi, eax
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x1c]
	cmp dword [ebp+0x1c], 0x5
	jz Field_DrawTextOverride_40
	movss xmm1, dword [ebp-0x1c]
	movaps xmm0, xmm1
Field_DrawTextOverride_60:
	lea eax, [ebx+ebx*2]
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*8]
	lea eax, [ebx+eax*4]
	mov ecx, [eax*8+playerKeys+0x11c]
	test ecx, ecx
	jz Field_DrawTextOverride_50
	mov dword [ebp-0x20], 0x3
	mov ebx, 0x5f
	jmp Field_DrawTextOverride_30
Field_DrawTextOverride_50:
	mov dword [ebp-0x20], 0x3
	mov ebx, 0x7c
	jmp Field_DrawTextOverride_30
Field_DrawTextOverride_40:
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [esi]
	movss xmm1, dword [ebp-0x1c]
	mulss xmm1, [esi+0x4]
	jmp Field_DrawTextOverride_60
	nop


;Key_GetCommandAssignment(int, char const*, int*)
Key_GetCommandAssignment:
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
	jmp Key_GetCommandAssignment_10
Key_GetCommandAssignment_30:
	add esi, 0x1
	add ebx, 0xc
	cmp esi, 0x100
	jz Key_GetCommandAssignment_20
Key_GetCommandAssignment_10:
	mov eax, [ebx+0x12c]
	test eax, eax
	jz Key_GetCommandAssignment_30
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Key_GetCommandAssignment_30
	mov eax, [ebp+0x10]
	mov [eax+edi*4], esi
	add edi, 0x1
	cmp edi, 0x2
	jnz Key_GetCommandAssignment_30
Key_GetCommandAssignment_20:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PbMaxKeys()
PbMaxKeys:
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

